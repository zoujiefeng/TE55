	.file	"EAS.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	BSW_vidTrigChallengeCode
	.type	BSW_vidTrigChallengeCode, @function
BSW_vidTrigChallengeCode:
.LFB31:
	.file 1 "bswcdd\\EAS\\EAS.c"
	.loc 1 162 0
.LVL0:
	.loc 1 163 0
	j	MAIN_MSGvidCan01_Tx01_PDUST1_0x18F7011E
.LVL1:
.LFE31:
	.size	BSW_vidTrigChallengeCode, .-BSW_vidTrigChallengeCode
	.align 1
	.global	BSW_vidTrigAuthResult
	.type	BSW_vidTrigAuthResult, @function
BSW_vidTrigAuthResult:
.LFB32:
	.loc 1 177 0
.LVL2:
	.loc 1 179 0
	j	MAIN_MSGvidCan01_Tx02_PDUST2_0x18F7021E
.LVL3:
.LFE32:
	.size	BSW_vidTrigAuthResult, .-BSW_vidTrigAuthResult
	.align 1
	.global	EAS_bReActiveChk
	.type	EAS_bReActiveChk, @function
EAS_bReActiveChk:
.LFB34:
	.loc 1 283 0
.LVL4:
	.loc 1 289 0
	jlt.u	%d4, 2, .L4
.LVL5:
.L6:
	.loc 1 287 0
	mov	%d2, 0
	ret
.LVL6:
.L4:
	.loc 1 296 0
	movh.a	%a4, hi:UDS_au8ESKDataNvM_Ram
	lea	%a15, [%a4] lo:UDS_au8ESKDataNvM_Ram
	.loc 1 293 0
	ld.bu	%d3, [%a4] lo:UDS_au8ESKDataNvM_Ram
	.loc 1 296 0
	ld.bu	%d2, [%a15] 3
	.loc 1 293 0
	sh	%d15, %d3, 24
	or	%d3, %d2, %d15
	.loc 1 295 0
	ld.bu	%d15, [%a15] 2
	.loc 1 293 0
	ld.bu	%d4, [%a15] 4
.LVL7:
	.loc 1 295 0
	sh	%d15, %d15, 8
	or	%d2, %d3, %d15
	.loc 1 294 0
	ld.bu	%d15, [%a15] 1
	.loc 1 296 0
	ld.bu	%d3, [%a15] 7
	.loc 1 294 0
	sh	%d15, %d15, 16
	.loc 1 296 0
	or	%d15, %d2
	.loc 1 293 0
	sh	%d2, %d4, 24
	or	%d4, %d3, %d2
	.loc 1 295 0
	ld.bu	%d3, [%a15] 6
	.loc 1 296 0
	ld.bu	%d5, [%a15] 11
	.loc 1 295 0
	sh	%d2, %d3, 8
	or	%d3, %d4, %d2
	.loc 1 294 0
	ld.bu	%d4, [%a15] 5
	.loc 1 293 0
	ld.bu	%d6, [%a15] 12
	.loc 1 294 0
	sh	%d2, %d4, 16
	.loc 1 296 0
	or	%d4, %d3, %d2
	.loc 1 293 0
	ld.bu	%d3, [%a15] 8
	movh.a	%a3, hi:EAS_au32PinESK32
	sh	%d2, %d3, 24
	or	%d3, %d5, %d2
	.loc 1 295 0
	ld.bu	%d5, [%a15] 10
	.loc 1 293 0
	lea	%a2, [%a3] lo:EAS_au32PinESK32
	.loc 1 295 0
	sh	%d2, %d5, 8
	or	%d5, %d3, %d2
	.loc 1 294 0
	ld.bu	%d3, [%a15] 9
	.loc 1 293 0
	st.w	[%a3] lo:EAS_au32PinESK32, %d15
.LVL8:
	.loc 1 294 0
	sh	%d2, %d3, 16
	.loc 1 296 0
	or	%d3, %d5, %d2
	ld.bu	%d5, [%a15] 15
	.loc 1 293 0
	sh	%d2, %d6, 24
	or	%d6, %d5, %d2
	.loc 1 295 0
	ld.bu	%d2, [%a15] 14
	ne	%d15, %d15, 0
	sh	%d2, %d2, 8
	or	%d5, %d6, %d2
	.loc 1 294 0
	ld.bu	%d2, [%a15] 13
	.loc 1 293 0
	st.w	[%a2] 4, %d4
.LVL9:
	.loc 1 294 0
	sh	%d2, %d2, 16
	seln	%d4, %d4, %d15, 1
	.loc 1 296 0
	or	%d2, %d5
	.loc 1 293 0
	st.w	[%a2] 8, %d3
.LVL10:
	seln	%d3, %d3, %d4, 1
	st.w	[%a2] 12, %d2
.LVL11:
	.loc 1 308 0
	seln	%d2, %d2, %d3, 1
.LVL12:
	jz	%d2, .L6
	movh.a	%a4, hi:EAS_au8ComChallengeVal
	movh.a	%a3, hi:EAS_au8ComChallengeValBkp
	lea	%a2, [%a4] lo:EAS_au8ComChallengeVal
.LVL13:
	lea	%a15, [%a3] lo:EAS_au8ComChallengeValBkp
	mov.d	%d15, %a2
	mov.d	%d2, %a15
	or	%d15, %d2
	and	%d15, %d15, 3
	jnz	%d15, .L7
.LBB11:
.LBB12:
	.loc 1 312 0
	ld.bu	%d3, [%a15] 1
.LVL14:
	ld.bu	%d2, [%a3] lo:EAS_au8ComChallengeValBkp
	sh	%d15, %d3, 8
	or	%d3, %d15, %d2
	ld.bu	%d15, [%a15] 2
	sh	%d15, %d15, 16
	or	%d2, %d15, %d3
	ld.bu	%d15, [%a15] 3
	ld.bu	%d3, [%a15] 5
	sh	%d15, %d15, 24
	or	%d15, %d2
	extr.u	%d2, %d15, 8, 8
	st.b	[%a4] lo:EAS_au8ComChallengeVal, %d15
	st.b	[%a2] 1, %d2
	extr.u	%d2, %d15, 16, 8
	sh	%d15, %d15, -24
	st.b	[%a2] 2, %d2
	ld.bu	%d2, [%a15] 4
	st.b	[%a2] 3, %d15
	sh	%d15, %d3, 8
	or	%d3, %d15, %d2
	ld.bu	%d15, [%a15] 6
	sh	%d15, %d15, 16
	or	%d2, %d15, %d3
	ld.bu	%d15, [%a15] 7
	sh	%d15, %d15, 24
	or	%d15, %d2
	extr.u	%d2, %d15, 8, 8
	st.b	[%a2] 4, %d15
	st.b	[%a2] 5, %d2
	extr.u	%d2, %d15, 16, 8
	sh	%d15, %d15, -24
	st.b	[%a2] 6, %d2
	st.b	[%a2] 7, %d15
.LVL15:
.L8:
.LBE12:
.LBE11:
	.loc 1 287 0
	mov	%d2, 1
	.loc 1 317 0
	ret
.LVL16:
.L7:
.LBB14:
.LBB13:
	.loc 1 312 0
	ld.bu	%d15, [%a3] lo:EAS_au8ComChallengeValBkp
	st.b	[%a4] lo:EAS_au8ComChallengeVal, %d15
.LVL17:
	ld.bu	%d15, [%a15] 1
	st.b	[%a2] 1, %d15
.LVL18:
	ld.bu	%d15, [%a15] 2
	st.b	[%a2] 2, %d15
.LVL19:
	ld.bu	%d15, [%a15] 3
	st.b	[%a2] 3, %d15
.LVL20:
	ld.bu	%d15, [%a15] 4
	st.b	[%a2] 4, %d15
.LVL21:
	ld.bu	%d15, [%a15] 5
	st.b	[%a2] 5, %d15
.LVL22:
	ld.bu	%d15, [%a15] 6
	st.b	[%a2] 6, %d15
.LVL23:
	ld.bu	%d15, [%a15] 7
	st.b	[%a2] 7, %d15
.LVL24:
	j	.L8
.LBE13:
.LBE14:
.LFE34:
	.size	EAS_bReActiveChk, .-EAS_bReActiveChk
	.align 1
	.global	EAS_vidImmoCodeCallback
	.type	EAS_vidImmoCodeCallback, @function
EAS_vidImmoCodeCallback:
.LFB36:
	.loc 1 581 0
.LVL25:
	.loc 1 584 0
	mov	%d15, 1
	movh.a	%a15, hi:EAS_bImmoCodRcvFlg
	movh.a	%a2, hi:EAS_au8ComImmoCode
	st.b	[%a15] lo:EAS_bImmoCodRcvFlg, %d15
.LVL26:
	lea	%a15, [%a2] lo:EAS_au8ComImmoCode
	mov.d	%d2, %a15
	mov.d	%d15, %a4
	mov.d	%d3, %a4
	or	%d15, %d2
	movh.a	%a3, hi:EAS_au8ComImmoCode+4
	and	%d15, %d15, 3
	lea	%a3, [%a3] lo:EAS_au8ComImmoCode+4
	mov.d	%d4, %a15
	eq	%d2, %d15, 0
	add	%d3, 4
	ge.a	%d15, %a4, %a3
	or.ge.u	%d15, %d4, %d3
	and	%d15, %d2
	jz	%d15, .L14
.LVL27:
	.loc 1 588 0
	ld.w	%d15, [%a4]0
	extr.u	%d2, %d15, 8, 8
	st.b	[%a2] lo:EAS_au8ComImmoCode, %d15
	st.b	[%a15] 1, %d2
	extr.u	%d2, %d15, 16, 8
	sh	%d15, %d15, -24
	st.b	[%a15] 2, %d2
	st.b	[%a15] 3, %d15
	ld.w	%d15, [%a4] 4
	extr.u	%d2, %d15, 8, 8
	st.b	[%a15] 4, %d15
	st.b	[%a15] 5, %d2
	extr.u	%d2, %d15, 16, 8
	sh	%d15, %d15, -24
	st.b	[%a15] 6, %d2
	st.b	[%a15] 7, %d15
	ret
.LVL28:
.L14:
	ld.bu	%d15, [%a4]0
	st.b	[%a2] lo:EAS_au8ComImmoCode, %d15
.LVL29:
	ld.bu	%d15, [%a4] 1
	st.b	[%a15] 1, %d15
.LVL30:
	ld.bu	%d15, [%a4] 2
	st.b	[%a15] 2, %d15
.LVL31:
	ld.bu	%d15, [%a4] 3
	st.b	[%a15] 3, %d15
.LVL32:
	ld.bu	%d15, [%a4] 4
	st.b	[%a15] 4, %d15
.LVL33:
	ld.bu	%d15, [%a4] 5
	st.b	[%a15] 5, %d15
.LVL34:
	ld.bu	%d15, [%a4] 6
	st.b	[%a15] 6, %d15
.LVL35:
	ld.bu	%d15, [%a4] 7
	st.b	[%a15] 7, %d15
.LVL36:
	ret
.LFE36:
	.size	EAS_vidImmoCodeCallback, .-EAS_vidImmoCodeCallback
	.align 1
	.global	EAS_vidGenChallengeCode
	.type	EAS_vidGenChallengeCode, @function
EAS_vidGenChallengeCode:
.LFB37:
	.loc 1 604 0
.LVL37:
	movh.a	%a15, hi:EAS_bRN32EnaOnC
	movh.a	%a2, hi:EAS_au8ParmRN32
	movh.a	%a3, hi:EAS_au8ParmEacEncr
	movh.a	%a7, hi:EAS_au8ComChallengeVal
	movh	%d13, 45911
	ld.bu	%d12, [%a15] lo:EAS_bRN32EnaOnC
	.loc 1 604 0
	mov	%d11, 0
	lea	%a2, [%a2] lo:EAS_au8ParmRN32
	lea	%a3, [%a3] lo:EAS_au8ParmEacEncr
	lea	%a15, [%a7] lo:EAS_au8ComChallengeVal
	addi	%d13, %d13, -23261
	.loc 1 629 0
	lea	%a6, 119
	lea	%a5, 23
	lea	%a4, 68
	mov	%d14, 65
.LVL38:
.L24:
	add	%d11, 1
.LVL39:
	and	%d9, %d11, 255
.LVL40:
	.loc 1 615 0
	jnz	%d12, .L17
.LVL41:
	.loc 1 629 0 discriminator 1
	mov.d	%d2, %a6
	mov.d	%d15, %a5
	st.b	[%a2]0, %d2
.LVL42:
	mov.d	%d2, %a4
	st.b	[%a2] 1, %d15
.LVL43:
	st.b	[%a2] 2, %d2
.LVL44:
	st.b	[%a2] 3, %d14
.LVL45:
	mov	%d6, 65
	mov	%d5, 68
	mov	%d4, 23
	mov	%d3, 119
	mov	%d10, 9
	mov	%d15, 9
	mov	%d8, 89
	mov	%d7, 89
	mov	%d1, 42
	mov	%d0, 42
	mov	%d2, 242
.LVL46:
.L18:
	.loc 1 641 0
	st.b	[%a3]0, %d2
	.loc 1 642 0
	st.b	[%a3] 1, %d0
	.loc 1 643 0
	st.b	[%a3] 2, %d7
	.loc 1 644 0
	st.b	[%a3] 3, %d15
.LVL47:
	.loc 1 649 0
	st.b	[%a15]0, %d3
.LVL48:
	st.b	[%a15] 1, %d4
.LVL49:
	st.b	[%a15] 2, %d5
.LVL50:
	st.b	[%a15] 3, %d6
.LVL51:
	.loc 1 654 0
	st.b	[%a15] 4, %d2
.LVL52:
	st.b	[%a15] 5, %d0
.LVL53:
	st.b	[%a15] 6, %d7
.LVL54:
	st.b	[%a15] 7, %d15
.LVL55:
	.loc 1 660 0
	jnz	%d3, .L19
.LVL56:
	mov	%d15, 0
	jnz	%d4, .L28
.LVL57:
	mov	%d15, %d3
	jnz	%d5, .L28
.LVL58:
	jnz	%d6, .L28
.LVL59:
	mov	%d15, %d4
	jnz	%d2, .L28
.LVL60:
	mov	%d15, %d5
	jnz	%d1, .L28
.LVL61:
	mov	%d15, %d6
	jnz	%d8, .L28
.LVL62:
	lt.u	%d15, %d9, 4
	seln	%d15, %d10, %d15, %d2
.LVL63:
.L28:
	.loc 1 684 0
	jnz	%d15, .L24
.L25:
	.loc 1 687 0
	jge.u	%d9, 3, .L22
.LVL64:
	movh.a	%a3, hi:EAS_au8ComChallengeValBkp
	lea	%a2, [%a3] lo:EAS_au8ComChallengeValBkp
	mov.d	%d15, %a2
	mov.d	%d2, %a15
	movh.a	%a4, hi:EAS_au8ComChallengeVal
	or	%d15, %d2
	and	%d15, %d15, 3
	jnz	%d15, .L26
.L37:
.LVL65:
	.loc 1 698 0
	ld.bu	%d3, [%a15] 1
	ld.bu	%d2, [%a4] lo:EAS_au8ComChallengeVal
	sh	%d15, %d3, 8
	or	%d3, %d15, %d2
	ld.bu	%d15, [%a15] 2
	sh	%d15, %d15, 16
	or	%d2, %d15, %d3
	ld.bu	%d15, [%a15] 3
	ld.bu	%d3, [%a15] 5
	sh	%d15, %d15, 24
	or	%d15, %d2
	extr.u	%d2, %d15, 8, 8
	st.b	[%a3] lo:EAS_au8ComChallengeValBkp, %d15
	st.b	[%a2] 1, %d2
	extr.u	%d2, %d15, 16, 8
	sh	%d15, %d15, -24
	st.b	[%a2] 2, %d2
	ld.bu	%d2, [%a15] 4
	st.b	[%a2] 3, %d15
	sh	%d15, %d3, 8
	or	%d3, %d15, %d2
	ld.bu	%d15, [%a15] 6
	sh	%d15, %d15, 16
	or	%d2, %d15, %d3
	ld.bu	%d15, [%a15] 7
	sh	%d15, %d15, 24
	or	%d15, %d2
	extr.u	%d2, %d15, 8, 8
	st.b	[%a2] 4, %d15
	st.b	[%a2] 5, %d2
	extr.u	%d2, %d15, 16, 8
	sh	%d15, %d15, -24
	st.b	[%a2] 6, %d2
	st.b	[%a2] 7, %d15
	ret
.LVL66:
.L17:
	.loc 1 618 0
	ld.w	%d15, 0xf0001110
.LVL67:
	.loc 1 619 0
	and	%d3, %d15, 255
	.loc 1 620 0
	extr.u	%d4, %d15, 8, 8
	.loc 1 621 0
	extr.u	%d5, %d15, 16, 8
	.loc 1 622 0
	sh	%d6, %d15, -24
	xor	%d15, %d13
.LVL68:
	sh	%d2, %d15, -24
	sh	%d15, 7
	or	%d15, %d2
	extr.u	%d1, %d15, 8, 8
	extr.u	%d8, %d15, 16, 8
	sh	%d10, %d15, -24
	and	%d2, %d15, 255
	.loc 1 619 0
	st.b	[%a2]0, %d3
	.loc 1 620 0
	st.b	[%a2] 1, %d4
	.loc 1 621 0
	st.b	[%a2] 2, %d5
	.loc 1 622 0
	st.b	[%a2] 3, %d6
	and	%d0, %d1, 255
	and	%d7, %d8, 255
	and	%d15, %d10, 255
	j	.L18
.LVL69:
.L19:
	.loc 1 674 0
	eq	%d15, %d4, 255
	and.eq	%d15, %d3, 255
	eq	%d5, %d5, 255
	and	%d5, %d15
	eq	%d6, %d6, 255
	and	%d6, %d5
	eq	%d2, %d2, 255
	and	%d2, %d6
	eq	%d1, %d1, 255
	and	%d1, %d2
	eq	%d8, %d8, 255
	and	%d8, %d1
	eq	%d15, %d10, 255
	and	%d15, %d8
	jz	%d15, .L25
	lt.u	%d15, %d9, 4
.LVL70:
	.loc 1 684 0
	jnz	%d15, .L24
	j	.L25
.LVL71:
.L22:
	.loc 1 691 0 discriminator 1
	mov	%d15, 0
	st.b	[%a7] lo:EAS_au8ComChallengeVal, %d15
	.loc 1 692 0 discriminator 1
	st.b	[%a15] 4, %d15
.LVL72:
	.loc 1 691 0 discriminator 1
	mov	%d15, 1
	st.b	[%a15] 1, %d15
	.loc 1 692 0 discriminator 1
	st.b	[%a15] 5, %d15
.LVL73:
	movh.a	%a3, hi:EAS_au8ComChallengeValBkp
	.loc 1 691 0 discriminator 1
	mov	%d15, 2
	st.b	[%a15] 2, %d15
	.loc 1 692 0 discriminator 1
	st.b	[%a15] 6, %d15
.LVL74:
	lea	%a2, [%a3] lo:EAS_au8ComChallengeValBkp
	.loc 1 691 0 discriminator 1
	mov	%d15, 3
	st.b	[%a15] 3, %d15
	.loc 1 692 0 discriminator 1
	st.b	[%a15] 7, %d15
.LVL75:
	mov.d	%d2, %a15
	mov.d	%d15, %a2
	movh.a	%a4, hi:EAS_au8ComChallengeVal
	or	%d15, %d2
	and	%d15, %d15, 3
	jz	%d15, .L37
.L26:
	.loc 1 698 0
	ld.bu	%d15, [%a4] lo:EAS_au8ComChallengeVal
	st.b	[%a3] lo:EAS_au8ComChallengeValBkp, %d15
.LVL76:
	ld.bu	%d15, [%a15] 1
	st.b	[%a2] 1, %d15
.LVL77:
	ld.bu	%d15, [%a15] 2
	st.b	[%a2] 2, %d15
.LVL78:
	ld.bu	%d15, [%a15] 3
	st.b	[%a2] 3, %d15
.LVL79:
	ld.bu	%d15, [%a15] 4
	st.b	[%a2] 4, %d15
.LVL80:
	ld.bu	%d15, [%a15] 5
	st.b	[%a2] 5, %d15
.LVL81:
	ld.bu	%d15, [%a15] 6
	st.b	[%a2] 6, %d15
.LVL82:
	ld.bu	%d15, [%a15] 7
	st.b	[%a2] 7, %d15
.LVL83:
	ret
.LFE37:
	.size	EAS_vidGenChallengeCode, .-EAS_vidGenChallengeCode
	.align 1
	.global	EAS_vidInit
	.type	EAS_vidInit, @function
EAS_vidInit:
.LFB33:
	.loc 1 194 0
.LVL84:
	.loc 1 203 0
	mov	%d15, 1
	movh.a	%a12, hi:EAS_bDefaultEskFlg
	st.b	[%a12] lo:EAS_bDefaultEskFlg, %d15
	.loc 1 205 0
	call	EAS_vidGenChallengeCode
.LVL85:
	.loc 1 212 0
	movh.a	%a4, hi:UDS_au8ESKDataNvM_Ram
	lea	%a15, [%a4] lo:UDS_au8ESKDataNvM_Ram
	.loc 1 209 0
	ld.bu	%d3, [%a4] lo:UDS_au8ESKDataNvM_Ram
	.loc 1 212 0
	ld.bu	%d2, [%a15] 3
	.loc 1 209 0
	sh	%d3, %d3, 24
	or	%d3, %d2
	.loc 1 211 0
	ld.bu	%d2, [%a15] 2
	.loc 1 209 0
	ld.bu	%d4, [%a15] 4
	.loc 1 211 0
	sh	%d15, %d2, 8
	or	%d2, %d3, %d15
	.loc 1 210 0
	ld.bu	%d3, [%a15] 1
	.loc 1 209 0
	movh.a	%a3, hi:EAS_au32PinESK32
	.loc 1 210 0
	sh	%d15, %d3, 16
	.loc 1 212 0
	or	%d3, %d2, %d15
	ld.bu	%d2, [%a15] 7
	.loc 1 209 0
	sh	%d15, %d4, 24
	or	%d4, %d2, %d15
	.loc 1 211 0
	ld.bu	%d15, [%a15] 6
	.loc 1 209 0
	lea	%a2, [%a3] lo:EAS_au32PinESK32
	.loc 1 211 0
	sh	%d15, %d15, 8
	or	%d2, %d4, %d15
	.loc 1 210 0
	ld.bu	%d15, [%a15] 5
	.loc 1 209 0
	ld.bu	%d4, [%a15] 8
	.loc 1 210 0
	sh	%d15, %d15, 16
	.loc 1 212 0
	or	%d15, %d2
	ld.bu	%d2, [%a15] 11
	.loc 1 209 0
	st.w	[%a2] 4, %d15
	sh	%d15, %d4, 24
	or	%d4, %d2, %d15
	.loc 1 211 0
	ld.bu	%d15, [%a15] 10
	.loc 1 209 0
	st.w	[%a3] lo:EAS_au32PinESK32, %d3
.LVL86:
	.loc 1 211 0
	sh	%d15, %d15, 8
	or	%d2, %d4, %d15
	.loc 1 210 0
	ld.bu	%d15, [%a15] 9
	.loc 1 209 0
	ld.bu	%d4, [%a15] 12
	.loc 1 210 0
	sh	%d15, %d15, 16
	.loc 1 212 0
	or	%d15, %d2
	ld.bu	%d2, [%a15] 15
	.loc 1 209 0
	st.w	[%a2] 8, %d15
.LVL87:
	sh	%d15, %d4, 24
	or	%d4, %d2, %d15
	.loc 1 211 0
	ld.bu	%d15, [%a15] 14
	sh	%d15, %d15, 8
	or	%d2, %d4, %d15
	.loc 1 210 0
	ld.bu	%d15, [%a15] 13
	.loc 1 217 0
	mov	%d4, 1
	.loc 1 210 0
	sh	%d15, %d15, 16
	.loc 1 212 0
	or	%d15, %d2
	.loc 1 209 0
	st.w	[%a2] 12, %d15
.LVL88:
	.loc 1 224 0
	mov	%d2, 0
	.loc 1 217 0
	jz	%d3, .L39
.LVL89:
	.loc 1 224 0
	eq	%d2, %d3, -1
	.loc 1 219 0
	mov	%d4, 0
.LVL90:
.L39:
	.loc 1 217 0
	ld.w	%d3, [%a2] 4
	jnz	%d3, .L63
	ld.w	%d3, [%a2] 8
	.loc 1 224 0
	mov	%d2, 0
.LVL91:
	.loc 1 217 0
	jz	%d3, .L41
.LVL92:
.L64:
	.loc 1 224 0
	eq	%d3, %d3, -1
	sel	%d2, %d3, %d2, 0
.LVL93:
	.loc 1 217 0
	jnz	%d15, .L49
.LVL94:
.L44:
	.loc 1 239 0
	mov	%d15, 0
	movh.a	%a15, hi:EAS_u8ImmFailReason
	st.b	[%a15] lo:EAS_u8ImmFailReason, %d15
.LVL95:
	.loc 1 244 0
	movh.a	%a15, hi:EAS_u8AuthState
	st.b	[%a15] lo:EAS_u8AuthState, %d15
	.loc 1 245 0
	movh.a	%a15, hi:EAS_u8TMReleaseSig
	st.b	[%a15] lo:EAS_u8TMReleaseSig, %d15
	.loc 1 246 0
	movh.a	%a15, hi:EAS_u8SttTimerCnt
	st.b	[%a15] lo:EAS_u8SttTimerCnt, %d15
	.loc 1 247 0
	movh.a	%a15, hi:EAS_u8Chg1DelayCnt
	st.b	[%a15] lo:EAS_u8Chg1DelayCnt, %d15
	.loc 1 248 0
	movh.a	%a15, hi:EAS_bImmoCodRcvFlg
	st.b	[%a15] lo:EAS_bImmoCodRcvFlg, %d15
	.loc 1 249 0
	movh.a	%a15, hi:EAS_bSendNewChalgFlg
	.loc 1 241 0
	st.b	[%a12] lo:EAS_bDefaultEskFlg, %d15
	.loc 1 249 0
	st.b	[%a15] lo:EAS_bSendNewChalgFlg, %d15
	ret
.LVL96:
.L63:
	.loc 1 219 0
	eq	%d3, %d3, -1
	sel	%d2, %d3, %d2, 0
.LVL97:
	.loc 1 217 0
	ld.w	%d3, [%a2] 8
	.loc 1 219 0
	mov	%d4, 0
.LVL98:
	.loc 1 217 0
	jnz	%d3, .L64
.LVL99:
.L41:
	jnz	%d15, .L44
.LVL100:
	.loc 1 228 0
	jz	%d4, .L44
	.loc 1 230 0
	mov	%d2, 7
	movh.a	%a15, hi:EAS_u8ImmFailReason
	st.b	[%a15] lo:EAS_u8ImmFailReason, %d2
	.loc 1 244 0
	movh.a	%a15, hi:EAS_u8AuthState
	st.b	[%a15] lo:EAS_u8AuthState, %d15
	.loc 1 245 0
	movh.a	%a15, hi:EAS_u8TMReleaseSig
	st.b	[%a15] lo:EAS_u8TMReleaseSig, %d15
	.loc 1 246 0
	movh.a	%a15, hi:EAS_u8SttTimerCnt
	st.b	[%a15] lo:EAS_u8SttTimerCnt, %d15
	.loc 1 247 0
	movh.a	%a15, hi:EAS_u8Chg1DelayCnt
	st.b	[%a15] lo:EAS_u8Chg1DelayCnt, %d15
	.loc 1 248 0
	movh.a	%a15, hi:EAS_bImmoCodRcvFlg
	.loc 1 231 0
	mov	%d2, 1
	.loc 1 248 0
	st.b	[%a15] lo:EAS_bImmoCodRcvFlg, %d15
	.loc 1 249 0
	movh.a	%a15, hi:EAS_bSendNewChalgFlg
	.loc 1 231 0
	st.b	[%a12] lo:EAS_bDefaultEskFlg, %d2
	.loc 1 249 0
	st.b	[%a15] lo:EAS_bSendNewChalgFlg, %d15
.LVL101:
.L47:
	.loc 1 256 0
	movh.a	%a2, hi:EAS_au8ComChallengeVal
	mov	%d15, -1
	lea	%a15, [%a2] lo:EAS_au8ComChallengeVal
	st.b	[%a2] lo:EAS_au8ComChallengeVal, %d15
.LVL102:
	st.b	[%a15] 1, %d15
.LVL103:
	st.b	[%a15] 2, %d15
.LVL104:
	st.b	[%a15] 3, %d15
.LVL105:
	st.b	[%a15] 4, %d15
.LVL106:
	st.b	[%a15] 5, %d15
.LVL107:
	st.b	[%a15] 6, %d15
.LVL108:
	st.b	[%a15] 7, %d15
	ret
.LVL109:
.L49:
	.loc 1 222 0
	jne	%d15, -1, .L44
.LVL110:
	.loc 1 233 0
	jz	%d2, .L44
	.loc 1 235 0
	mov	%d15, 7
	movh.a	%a15, hi:EAS_u8ImmFailReason
	st.b	[%a15] lo:EAS_u8ImmFailReason, %d15
	.loc 1 244 0
	mov	%d15, 0
	movh.a	%a15, hi:EAS_u8AuthState
	st.b	[%a15] lo:EAS_u8AuthState, %d15
	.loc 1 245 0
	movh.a	%a15, hi:EAS_u8TMReleaseSig
	st.b	[%a15] lo:EAS_u8TMReleaseSig, %d15
	.loc 1 246 0
	movh.a	%a15, hi:EAS_u8SttTimerCnt
	st.b	[%a15] lo:EAS_u8SttTimerCnt, %d15
	.loc 1 247 0
	movh.a	%a15, hi:EAS_u8Chg1DelayCnt
	st.b	[%a15] lo:EAS_u8Chg1DelayCnt, %d15
	.loc 1 248 0
	movh.a	%a15, hi:EAS_bImmoCodRcvFlg
	st.b	[%a15] lo:EAS_bImmoCodRcvFlg, %d15
	ld.bu	%d2, [%a12] lo:EAS_bDefaultEskFlg
.LVL111:
	.loc 1 249 0
	movh.a	%a15, hi:EAS_bSendNewChalgFlg
	st.b	[%a15] lo:EAS_bSendNewChalgFlg, %d15
	.loc 1 251 0
	jeq	%d2, 1, .L47
	ret
.LFE33:
	.size	EAS_vidInit, .-EAS_vidInit
	.align 1
	.global	EAS_bVerifyImmoCode
	.type	EAS_bVerifyImmoCode, @function
EAS_bVerifyImmoCode:
.LFB38:
	.loc 1 714 0
.LVL112:
	sub.a	%SP, 24
.LCFI0:
	.loc 1 717 0
	lea	%a6, [%SP] 8
	mov.aa	%a2, %a6
	mov	%e2, 0
	st.d	[%a2+]8, %e2
	st.d	[%a2+]8, %e2
.LVL113:
	.loc 1 722 0
	movh.a	%a2, hi:EAS_au32PinESK32
	lea	%a15, [%a2] lo:EAS_au32PinESK32
	ld.w	%d2, [%a2] lo:EAS_au32PinESK32
	ld.w	%d3, [%a15] 4
	ld.w	%d15, [%a15] 8
	movh.a	%a13, hi:EAS_au8ParmEarEncr1
	movh.a	%a3, hi:EAS_au8ComChallengeVal
	st.w	[%SP] 8, %d2
	lea	%a2, [%a3] lo:EAS_au8ComChallengeVal
	ld.w	%d2, [%a15] 12
	lea	%a15, [%a13] lo:EAS_au8ParmEarEncr1
	st.w	[%SP] 12, %d3
.LVL114:
	st.w	[%SP] 16, %d15
.LVL115:
	mov.d	%d3, %a2
	mov.d	%d15, %a15
	st.w	[%SP] 20, %d2
	or	%d15, %d3
	and	%d15, %d15, 3
	.loc 1 714 0
	mov.aa	%a12, %a4
	jnz	%d15, .L66
.LVL116:
	.loc 1 727 0
	ld.bu	%d3, [%a2] 1
	ld.bu	%d2, [%a3] lo:EAS_au8ComChallengeVal
	sh	%d15, %d3, 8
	or	%d3, %d15, %d2
	ld.bu	%d15, [%a2] 2
	sh	%d15, %d15, 16
	or	%d2, %d15, %d3
	ld.bu	%d15, [%a2] 3
	ld.bu	%d3, [%a2] 5
	sh	%d15, %d15, 24
	or	%d15, %d2
	extr.u	%d2, %d15, 8, 8
	st.b	[%a13] lo:EAS_au8ParmEarEncr1, %d15
	st.b	[%a15] 1, %d2
	extr.u	%d2, %d15, 16, 8
	sh	%d15, %d15, -24
	st.b	[%a15] 2, %d2
	ld.bu	%d2, [%a2] 4
	st.b	[%a15] 3, %d15
	sh	%d15, %d3, 8
	or	%d3, %d15, %d2
	ld.bu	%d15, [%a2] 6
	sh	%d15, %d15, 16
	or	%d2, %d15, %d3
	ld.bu	%d15, [%a2] 7
	sh	%d15, %d15, 24
	or	%d15, %d2
	extr.u	%d2, %d15, 8, 8
	st.b	[%a15] 4, %d15
	st.b	[%a15] 5, %d2
	extr.u	%d2, %d15, 16, 8
	sh	%d15, %d15, -24
	st.b	[%a15] 6, %d2
	st.b	[%a15] 7, %d15
.L67:
	.loc 1 730 0
	ld.bu	%d2, [%a13] lo:EAS_au8ParmEarEncr1
	.loc 1 731 0
	ld.bu	%d15, [%a15] 1
	.loc 1 730 0
	sh	%d2, %d2, 24
	.loc 1 731 0
	sh	%d15, %d15, 16
	or	%d15, %d2
	.loc 1 733 0
	ld.bu	%d2, [%a15] 3
	.loc 1 741 0
	lea	%a4, 32
.LVL117:
	or	%d2, %d15
	.loc 1 732 0
	ld.bu	%d15, [%a15] 2
	.loc 1 741 0
	mov.aa	%a5, %SP
	.loc 1 732 0
	sh	%d15, %d15, 8
	.loc 1 733 0
	or	%d15, %d2
	.loc 1 730 0
	st.w	[%SP]0, %d15
	.loc 1 735 0
	ld.bu	%d2, [%a15] 4
	.loc 1 736 0
	ld.bu	%d15, [%a15] 5
	.loc 1 735 0
	sh	%d2, %d2, 24
	.loc 1 736 0
	sh	%d15, %d15, 16
	or	%d15, %d2
	.loc 1 738 0
	ld.bu	%d2, [%a15] 7
	or	%d2, %d15
	.loc 1 737 0
	ld.bu	%d15, [%a15] 6
	sh	%d15, %d15, 8
	.loc 1 738 0
	or	%d15, %d2
	.loc 1 735 0
	st.w	[%SP] 4, %d15
	.loc 1 741 0
	call	EAS_vidEncrypt
.LVL118:
	.loc 1 743 0
	ld.w	%d15, [%SP]0
	.loc 1 744 0
	extr.u	%d2, %d15, 16, 8
	.loc 1 743 0
	sh	%d3, %d15, -24
	.loc 1 744 0
	st.b	[%a15] 1, %d2
	.loc 1 746 0
	st.b	[%a15] 3, %d15
	.loc 1 745 0
	extr.u	%d2, %d15, 8, 8
	.loc 1 747 0
	ld.w	%d15, [%SP] 4
	.loc 1 745 0
	st.b	[%a15] 2, %d2
	.loc 1 747 0
	sh	%d2, %d15, -24
	st.b	[%a15] 4, %d2
	.loc 1 748 0
	extr.u	%d2, %d15, 16, 8
	.loc 1 743 0
	st.b	[%a13] lo:EAS_au8ParmEarEncr1, %d3
	.loc 1 748 0
	st.b	[%a15] 5, %d2
	.loc 1 749 0
	extr.u	%d2, %d15, 8, 8
	.loc 1 750 0
	st.b	[%a15] 7, %d15
.LVL119:
	.loc 1 749 0
	st.b	[%a15] 6, %d2
	.loc 1 754 0
	ld.bu	%d15, [%a12] 2
	.loc 1 756 0
	mov	%d2, 0
	.loc 1 754 0
	jne	%d3, %d15, .L68
.LVL120:
	ld.bu	%d3, [%a15] 1
	ld.bu	%d15, [%a12] 3
	jne	%d3, %d15, .L68
.LVL121:
	ld.bu	%d3, [%a15] 2
	ld.bu	%d15, [%a12] 4
	jne	%d3, %d15, .L68
.LVL122:
	ld.bu	%d3, [%a15] 3
	ld.bu	%d15, [%a12] 5
	jne	%d3, %d15, .L68
.LVL123:
	ld.bu	%d3, [%a15] 4
	ld.bu	%d15, [%a12] 6
	jne	%d3, %d15, .L68
.LVL124:
	ld.bu	%d2, [%a15] 5
	ld.bu	%d15, [%a12] 7
	.loc 1 756 0
	eq	%d2, %d2, %d15
.LVL125:
.L68:
	.loc 1 762 0
	ret
.LVL126:
.L66:
	.loc 1 727 0
	ld.bu	%d15, [%a3] lo:EAS_au8ComChallengeVal
	st.b	[%a13] lo:EAS_au8ParmEarEncr1, %d15
.LVL127:
	ld.bu	%d15, [%a2] 1
	st.b	[%a15] 1, %d15
.LVL128:
	ld.bu	%d15, [%a2] 2
	st.b	[%a15] 2, %d15
.LVL129:
	ld.bu	%d15, [%a2] 3
	st.b	[%a15] 3, %d15
.LVL130:
	ld.bu	%d15, [%a2] 4
	st.b	[%a15] 4, %d15
.LVL131:
	ld.bu	%d15, [%a2] 5
	st.b	[%a15] 5, %d15
.LVL132:
	ld.bu	%d15, [%a2] 6
	st.b	[%a15] 6, %d15
.LVL133:
	ld.bu	%d15, [%a2] 7
	st.b	[%a15] 7, %d15
.LVL134:
	j	.L67
.LFE38:
	.size	EAS_bVerifyImmoCode, .-EAS_bVerifyImmoCode
	.align 1
	.global	EAS_vidAuthStateMng
	.type	EAS_vidAuthStateMng, @function
EAS_vidAuthStateMng:
.LFB35:
	.loc 1 331 0
.LVL135:
	.loc 1 340 0
	movh.a	%a2, hi:EAS_bDefaultEskFlg
	ld.bu	%d15, [%a2] lo:EAS_bDefaultEskFlg
	jeq	%d15, 1, .L108
.L75:
	.loc 1 358 0
	movh.a	%a15, hi:EAS_u8AuthState
	ld.bu	%d15, [%a15] lo:EAS_u8AuthState
	jlt.u	%d15, 10, .L109
.L74:
	ret
.L109:
	movh.a	%a2, hi:.L81
	lea	%a2, [%a2] lo:.L81
	addsc.a	%a2, %a2, %d15, 2
	ji	%a2
	.align 2
	.align 2
.L81:
	.code32
	j	.L80
	.code32
	j	.L86
	.code32
	j	.L83
	.code32
	j	.L84
	.code32
	j	.L85
	.code32
	j	.L86
	.code32
	j	.L87
	.code32
	j	.L88
	.code32
	j	.L89
	.code32
	j	.L90
.L108:
	.loc 1 340 0 discriminator 1
	movh.a	%a15, hi:EAS_bDefaultEskPassC
	ld.bu	%d15, [%a15] lo:EAS_bDefaultEskPassC
	jne	%d15, 1, .L75
	.loc 1 342 0
	movh.a	%a15, hi:EAS_u8TMReleaseSig
.LBB26:
.LBB27:
	.loc 1 296 0
	movh.a	%a5, hi:UDS_au8ESKDataNvM_Ram
.LBE27:
.LBE26:
	.loc 1 342 0
	st.b	[%a15] lo:EAS_u8TMReleaseSig, %d15
.LVL136:
.LBB34:
.LBB32:
	.loc 1 293 0
	ld.bu	%d3, [%a5] lo:UDS_au8ESKDataNvM_Ram
	.loc 1 296 0
	lea	%a15, [%a5] lo:UDS_au8ESKDataNvM_Ram
	ld.bu	%d2, [%a15] 3
	.loc 1 293 0
	sh	%d15, %d3, 24
	or	%d3, %d2, %d15
	.loc 1 295 0
	ld.bu	%d15, [%a15] 2
	.loc 1 293 0
	ld.bu	%d4, [%a15] 4
	.loc 1 295 0
	sh	%d15, %d15, 8
	or	%d2, %d3, %d15
	.loc 1 294 0
	ld.bu	%d15, [%a15] 1
	.loc 1 296 0
	ld.bu	%d3, [%a15] 7
	.loc 1 294 0
	sh	%d15, %d15, 16
	.loc 1 296 0
	or	%d15, %d2
	.loc 1 293 0
	sh	%d2, %d4, 24
	or	%d4, %d3, %d2
	.loc 1 295 0
	ld.bu	%d3, [%a15] 6
	.loc 1 296 0
	ld.bu	%d5, [%a15] 11
	.loc 1 295 0
	sh	%d2, %d3, 8
	or	%d3, %d4, %d2
	.loc 1 294 0
	ld.bu	%d4, [%a15] 5
	.loc 1 293 0
	ld.bu	%d6, [%a15] 12
	.loc 1 294 0
	sh	%d2, %d4, 16
	.loc 1 296 0
	or	%d4, %d3, %d2
	.loc 1 293 0
	ld.bu	%d3, [%a15] 8
	movh.a	%a4, hi:EAS_au32PinESK32
	sh	%d2, %d3, 24
	or	%d3, %d5, %d2
	.loc 1 295 0
	ld.bu	%d5, [%a15] 10
	.loc 1 293 0
	lea	%a3, [%a4] lo:EAS_au32PinESK32
	.loc 1 295 0
	sh	%d2, %d5, 8
	or	%d5, %d3, %d2
	.loc 1 294 0
	ld.bu	%d3, [%a15] 9
	.loc 1 293 0
	st.w	[%a4] lo:EAS_au32PinESK32, %d15
.LVL137:
	.loc 1 294 0
	sh	%d2, %d3, 16
	.loc 1 296 0
	or	%d3, %d5, %d2
	ld.bu	%d5, [%a15] 15
	.loc 1 293 0
	sh	%d2, %d6, 24
	or	%d6, %d5, %d2
	.loc 1 295 0
	ld.bu	%d2, [%a15] 14
	ne	%d15, %d15, 0
	sh	%d2, %d2, 8
	or	%d5, %d6, %d2
	.loc 1 294 0
	ld.bu	%d2, [%a15] 13
	.loc 1 293 0
	st.w	[%a3] 4, %d4
.LVL138:
	.loc 1 294 0
	sh	%d2, %d2, 16
	seln	%d4, %d4, %d15, 1
	.loc 1 296 0
	or	%d2, %d5
	.loc 1 293 0
	st.w	[%a3] 8, %d3
.LVL139:
	seln	%d3, %d3, %d4, 1
	st.w	[%a3] 12, %d2
.LVL140:
	.loc 1 308 0
	seln	%d2, %d2, %d3, 1
.LVL141:
	jz	%d2, .L74
	movh.a	%a5, hi:EAS_au8ComChallengeVal
	movh.a	%a4, hi:EAS_au8ComChallengeValBkp
	lea	%a3, [%a5] lo:EAS_au8ComChallengeVal
.LVL142:
	lea	%a15, [%a4] lo:EAS_au8ComChallengeValBkp
	mov.d	%d15, %a3
	mov.d	%d2, %a15
	or	%d15, %d2
	and	%d15, %d15, 3
	jnz	%d15, .L78
.LBB28:
.LBB29:
	.loc 1 312 0
	ld.bu	%d3, [%a15] 1
.LVL143:
	ld.bu	%d2, [%a4] lo:EAS_au8ComChallengeValBkp
	sh	%d15, %d3, 8
	or	%d3, %d15, %d2
	ld.bu	%d15, [%a15] 2
	sh	%d15, %d15, 16
	or	%d2, %d15, %d3
	ld.bu	%d15, [%a15] 3
	ld.bu	%d3, [%a15] 5
	sh	%d15, %d15, 24
	or	%d15, %d2
	extr.u	%d2, %d15, 8, 8
	st.b	[%a5] lo:EAS_au8ComChallengeVal, %d15
	st.b	[%a3] 1, %d2
	extr.u	%d2, %d15, 16, 8
	sh	%d15, %d15, -24
	st.b	[%a3] 2, %d2
	ld.bu	%d2, [%a15] 4
	st.b	[%a3] 3, %d15
	sh	%d15, %d3, 8
	or	%d3, %d15, %d2
	ld.bu	%d15, [%a15] 6
	sh	%d15, %d15, 16
	or	%d2, %d15, %d3
	ld.bu	%d15, [%a15] 7
	sh	%d15, %d15, 24
	or	%d15, %d2
	extr.u	%d2, %d15, 8, 8
	st.b	[%a3] 4, %d15
	st.b	[%a3] 5, %d2
	extr.u	%d2, %d15, 16, 8
	sh	%d15, %d15, -24
	st.b	[%a3] 6, %d2
	st.b	[%a3] 7, %d15
.LVL144:
.L79:
.LBE29:
.LBE28:
.LBE32:
.LBE34:
	.loc 1 347 0
	mov	%d15, 0
	.loc 1 349 0
	movh.a	%a15, hi:EAS_u8AuthState
	st.b	[%a15] lo:EAS_u8AuthState, %d15
	.loc 1 350 0
	movh.a	%a15, hi:EAS_u8SttTimerCnt
	st.b	[%a15] lo:EAS_u8SttTimerCnt, %d15
	.loc 1 351 0
	movh.a	%a15, hi:EAS_u8Chg1DelayCnt
	st.b	[%a15] lo:EAS_u8Chg1DelayCnt, %d15
	.loc 1 352 0
	movh.a	%a15, hi:EAS_bImmoCodRcvFlg
	st.b	[%a15] lo:EAS_bImmoCodRcvFlg, %d15
	.loc 1 353 0
	movh.a	%a15, hi:EAS_bSendNewChalgFlg
	.loc 1 347 0
	st.b	[%a2] lo:EAS_bDefaultEskFlg, %d15
	.loc 1 353 0
	st.b	[%a15] lo:EAS_bSendNewChalgFlg, %d15
	ret
.LVL145:
.L86:
	.loc 1 482 0
	movh.a	%a2, hi:EAS_u8SttTimerCnt
	movh.a	%a3, hi:EAS_u8Chg1DelayCnt
	ld.bu	%d15, [%a2] lo:EAS_u8SttTimerCnt
	ld.bu	%d2, [%a3] lo:EAS_u8Chg1DelayCnt
	jge.u	%d15, %d2, .L91
	.loc 1 484 0
	add	%d15, 1
	st.b	[%a2] lo:EAS_u8SttTimerCnt, %d15
	ret
.L85:
	.loc 1 443 0
	movh.a	%a2, hi:EAS_au8ComImmoCode
	lea	%a2, [%a2] lo:EAS_au8ComImmoCode
	ld.bu	%d15, [%a2] 1
	eq	%d2, %d15, 95
	jnz	%d2, .L95
	ge.u	%d2, %d15, 96
	jnz	%d2, .L94
	jnz	%d15, .L94
	.loc 1 447 0
	mov	%d15, 6
	st.b	[%a15] lo:EAS_u8AuthState, %d15
	.loc 1 449 0
	ret
.L84:
	.loc 1 423 0
	movh.a	%a2, hi:EAS_u8SttTimerCnt
	movh.a	%a3, hi:EAS_u8Chg1DelayCnt
	ld.bu	%d15, [%a2] lo:EAS_u8SttTimerCnt
	ld.bu	%d2, [%a3] lo:EAS_u8Chg1DelayCnt
	jge.u	%d15, %d2, .L91
	.loc 1 425 0
	add	%d15, 1
	st.b	[%a2] lo:EAS_u8SttTimerCnt, %d15
	.loc 1 427 0
	movh.a	%a2, hi:EAS_bImmoCodRcvFlg
	ld.bu	%d15, [%a2] lo:EAS_bImmoCodRcvFlg
	jne	%d15, 1, .L74
	.loc 1 429 0
	mov	%d15, 4
	st.b	[%a15] lo:EAS_u8AuthState, %d15
	.loc 1 430 0
	mov	%d15, 0
	st.b	[%a2] lo:EAS_bImmoCodRcvFlg, %d15
	ret
.L83:
	.loc 1 399 0
	movh.a	%a2, hi:EAS_u8AuthVerifyCnt
	ld.bu	%d15, [%a2] lo:EAS_u8AuthVerifyCnt
	add	%d15, 1
	and	%d15, 255
	st.b	[%a2] lo:EAS_u8AuthVerifyCnt, %d15
	.loc 1 401 0
	jlt.u	%d15, 7, .L110
	.loc 1 415 0
	mov	%d15, 7
	st.b	[%a15] lo:EAS_u8AuthState, %d15
	.loc 1 416 0
	mov	%d15, 5
	movh.a	%a15, hi:EAS_u8ImmFailReason
	st.b	[%a15] lo:EAS_u8ImmFailReason, %d15
	ret
.L89:
	.loc 1 534 0
	mov	%d15, 9
	st.b	[%a15] lo:EAS_u8AuthState, %d15
	.loc 1 535 0
	mov	%d15, 1
	movh.a	%a15, hi:EAS_u8TMReleaseSig
	st.b	[%a15] lo:EAS_u8TMReleaseSig, %d15
	.loc 1 536 0
	mov	%d15, 8
	movh.a	%a15, hi:EAS_u8ImmFailReason
	st.b	[%a15] lo:EAS_u8ImmFailReason, %d15
.LVL146:
.LBB35:
.LBB36:
	.loc 1 179 0
	j	MAIN_MSGvidCan01_Tx02_PDUST2_0x18F7021E
.LVL147:
.L80:
.LBE36:
.LBE35:
	.loc 1 362 0
	mov	%d15, 0
	movh.a	%a15, hi:EAS_u8TMReleaseSig
	st.b	[%a15] lo:EAS_u8TMReleaseSig, %d15
	ret
.L90:
	.loc 1 545 0
	mov	%d15, 0
	st.b	[%a15] lo:EAS_u8AuthState, %d15
	ret
.L88:
	.loc 1 526 0
	mov	%d15, 9
	st.b	[%a15] lo:EAS_u8AuthState, %d15
	.loc 1 527 0
	mov	%d15, 2
	movh.a	%a15, hi:EAS_u8TMReleaseSig
	st.b	[%a15] lo:EAS_u8TMReleaseSig, %d15
.LVL148:
.LBB37:
.LBB38:
	.loc 1 179 0
	j	MAIN_MSGvidCan01_Tx02_PDUST2_0x18F7021E
.LVL149:
.L87:
.LBE38:
.LBE37:
.LBB39:
	.loc 1 498 0
	movh.a	%a4, hi:EAS_au8ComImmoCode
	lea	%a4, [%a4] lo:EAS_au8ComImmoCode
	call	EAS_bVerifyImmoCode
.LVL150:
	.loc 1 500 0
	jz	%d2, .L99
	.loc 1 503 0
	mov	%d15, 8
	st.b	[%a15] lo:EAS_u8AuthState, %d15
	ret
.LVL151:
.L91:
.LBE39:
	.loc 1 392 0
	mov	%d15, 2
	st.b	[%a15] lo:EAS_u8AuthState, %d15
	ret
.LVL152:
.L99:
.LBB40:
	.loc 1 509 0
	mov	%d15, 7
	st.b	[%a15] lo:EAS_u8AuthState, %d15
	.loc 1 510 0
	movh.a	%a15, hi:EAS_u8ImmFailReason
	st.b	[%a15] lo:EAS_u8ImmFailReason, %d15
	ret
.LVL153:
.L94:
.LBE40:
	.loc 1 470 0
	mov	%d15, 5
	st.b	[%a15] lo:EAS_u8AuthState, %d15
	.loc 1 472 0
	mov	%d15, 0
	movh.a	%a15, hi:EAS_u8SttTimerCnt
	st.b	[%a15] lo:EAS_u8SttTimerCnt, %d15
	.loc 1 473 0
	mov	%d15, 10
	movh.a	%a15, hi:EAS_u8Chg1DelayCnt
	st.b	[%a15] lo:EAS_u8Chg1DelayCnt, %d15
	.loc 1 475 0
	ret
.L110:
	.loc 1 404 0
	mov	%d15, 0
	movh.a	%a2, hi:EAS_u8SttTimerCnt
	.loc 1 405 0
	mov	%d2, 10
	.loc 1 404 0
	st.b	[%a2] lo:EAS_u8SttTimerCnt, %d15
	.loc 1 405 0
	movh.a	%a2, hi:EAS_u8Chg1DelayCnt
	st.b	[%a2] lo:EAS_u8Chg1DelayCnt, %d2
	.loc 1 406 0
	mov	%d2, 3
	st.b	[%a15] lo:EAS_u8AuthState, %d2
	.loc 1 410 0
	movh.a	%a15, hi:EAS_bImmoCodRcvFlg
	st.b	[%a15] lo:EAS_bImmoCodRcvFlg, %d15
.LVL154:
.LBB41:
.LBB42:
	.loc 1 163 0
	j	MAIN_MSGvidCan01_Tx01_PDUST1_0x18F7011E
.LVL155:
.L95:
.LBE42:
.LBE41:
	.loc 1 453 0
	mov	%d15, 7
	st.b	[%a15] lo:EAS_u8AuthState, %d15
	.loc 1 454 0
	mov	%d15, 0
	movh.a	%a15, hi:EAS_u8ImmFailReason
	st.b	[%a15] lo:EAS_u8ImmFailReason, %d15
	.loc 1 456 0
	ret
.LVL156:
.L78:
.LBB43:
.LBB33:
.LBB31:
.LBB30:
	.loc 1 312 0
	ld.bu	%d15, [%a4] lo:EAS_au8ComChallengeValBkp
	st.b	[%a5] lo:EAS_au8ComChallengeVal, %d15
.LVL157:
	ld.bu	%d15, [%a15] 1
	st.b	[%a3] 1, %d15
.LVL158:
	ld.bu	%d15, [%a15] 2
	st.b	[%a3] 2, %d15
.LVL159:
	ld.bu	%d15, [%a15] 3
	st.b	[%a3] 3, %d15
.LVL160:
	ld.bu	%d15, [%a15] 4
	st.b	[%a3] 4, %d15
.LVL161:
	ld.bu	%d15, [%a15] 5
	st.b	[%a3] 5, %d15
.LVL162:
	ld.bu	%d15, [%a15] 6
	st.b	[%a3] 6, %d15
.LVL163:
	ld.bu	%d15, [%a15] 7
	st.b	[%a3] 7, %d15
.LVL164:
	j	.L79
.LBE30:
.LBE31:
.LBE33:
.LBE43:
.LFE35:
	.size	EAS_vidAuthStateMng, .-EAS_vidAuthStateMng
	.align 1
	.global	EAS_u8GetTMRelsSig
	.type	EAS_u8GetTMRelsSig, @function
EAS_u8GetTMRelsSig:
.LFB39:
	.loc 1 776 0
	.loc 1 778 0
	movh.a	%a15, hi:EAS_u8TMReleaseSig
	ld.bu	%d2, [%a15] lo:EAS_u8TMReleaseSig
	ret
.LFE39:
	.size	EAS_u8GetTMRelsSig, .-EAS_u8GetTMRelsSig
	.align 1
	.global	EAS_u8GetImmFailRes
	.type	EAS_u8GetImmFailRes, @function
EAS_u8GetImmFailRes:
.LFB40:
	.loc 1 792 0
	.loc 1 794 0
	movh.a	%a15, hi:EAS_u8ImmFailReason
	ld.bu	%d2, [%a15] lo:EAS_u8ImmFailReason
	ret
.LFE40:
	.size	EAS_u8GetImmFailRes, .-EAS_u8GetImmFailRes
	.global	EAS_aku8RN32
.section .calib.EAS_aku8RN32,"a",@progbits
	.type	EAS_aku8RN32, @object
	.size	EAS_aku8RN32, 4
EAS_aku8RN32:
	.byte	119
	.byte	23
	.byte	68
	.byte	65
	.global	EAS_aku8ESK
.section .calib.EAS_aku8ESK,"a",@progbits
	.type	EAS_aku8ESK, @object
	.size	EAS_aku8ESK, 16
EAS_aku8ESK:
	.zero	16
	.global	EAS_aku8CC64
.section .calib.EAS_aku8CC64,"a",@progbits
	.type	EAS_aku8CC64, @object
	.size	EAS_aku8CC64, 8
EAS_aku8CC64:
	.byte	-108
	.byte	37
	.byte	69
	.byte	71
	.byte	70
	.byte	74
	.byte	91
	.byte	125
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
	.uaword	.LFB31
	.uaword	.LFE31-.LFB31
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB32
	.uaword	.LFE32-.LFB32
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB34
	.uaword	.LFE34-.LFB34
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB36
	.uaword	.LFE36-.LFB36
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB37
	.uaword	.LFE37-.LFB37
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB33
	.uaword	.LFE33-.LFB33
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB38
	.uaword	.LFE38-.LFB38
	.byte	0x4
	.uaword	.LCFI0-.LFB38
	.byte	0xe
	.uleb128 0x18
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB35
	.uaword	.LFE35-.LFB35
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB39
	.uaword	.LFE39-.LFB39
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB40
	.uaword	.LFE40-.LFB40
	.align 2
.LEFDE18:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\Ifx_TypesReg.h"
	.file 4 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxStm_regdef.h"
	.file 5 ".\\output\\inc/..\\..\\main\\_MainModule\\CalibData\\MAIN_CalibData.h"
	.file 6 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\DSM.h"
	.file 7 "bswcdd\\EAS\\EAS_L.h"
	.file 8 "bswcdd\\EAS\\EAS.h"
	.file 9 ".\\output\\inc/..\\..\\bswcdd\\UDS\\UDS_Nvm.h"
	.file 10 ".\\output\\inc/..\\..\\main\\AutoMSG\\MAIN_MSG_Auto_Can01.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x1110
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\EAS\\EAS.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ltext0
	.uaword	.Letext0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x2
	.byte	0x51
	.uaword	0x1b7
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
	.uaword	0x211
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
	.uaword	0x1b7
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
	.uaword	0x211
	.uleb128 0x3
	.string	"Ifx_SReg_32Bit"
	.byte	0x3
	.byte	0x65
	.uaword	0x1eb
	.uleb128 0x4
	.string	"_Ifx_STM_TIM0_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0xd8
	.uaword	0x2dc
	.uleb128 0x5
	.string	"STM_31_0"
	.byte	0x4
	.byte	0xda
	.uaword	0x27e
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_TIM0_Bits"
	.byte	0x4
	.byte	0xdb
	.uaword	0x2aa
	.uleb128 0x6
	.byte	0x4
	.byte	0x4
	.uahalf	0x17d
	.uaword	0x31d
	.uleb128 0x7
	.string	"U"
	.byte	0x4
	.uahalf	0x17f
	.uaword	0x27e
	.uleb128 0x7
	.string	"I"
	.byte	0x4
	.uahalf	0x180
	.uaword	0x294
	.uleb128 0x7
	.string	"B"
	.byte	0x4
	.uahalf	0x181
	.uaword	0x2dc
	.byte	0
	.uleb128 0x8
	.string	"Ifx_STM_TIM0"
	.byte	0x4
	.uahalf	0x182
	.uaword	0x2f5
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x9
	.string	"eCalibIndex"
	.byte	0x1
	.byte	0x5
	.byte	0x15
	.uaword	0x3f9
	.uleb128 0xa
	.string	"eMAIN_CALIB_BUF_UI_INDEX"
	.sleb128 0
	.uleb128 0xa
	.string	"eMAIN_CALIB_BUF_VI_INDEX"
	.sleb128 1
	.uleb128 0xa
	.string	"eMAIN_CALIB_BUF_WI_INDEX"
	.sleb128 2
	.uleb128 0xa
	.string	"eMAIN_CALIB_BUF_VO_INDEX"
	.sleb128 3
	.uleb128 0xa
	.string	"eMAIN_CALIB_BUF_VALID_PARAM_NO"
	.sleb128 4
	.uleb128 0xa
	.string	"eMAIN_CALIB_BUF_MAX_NO"
	.sleb128 16
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.byte	0x5
	.byte	0x1f
	.uaword	0x471
	.uleb128 0xa
	.string	"eMAIN_CALIB_IDX_MCU1"
	.sleb128 0
	.uleb128 0xa
	.string	"eMAIN_CALIB_IDX_MCU2"
	.sleb128 1
	.uleb128 0xa
	.string	"eMAIN_CALIB_IDX_ACM"
	.sleb128 2
	.uleb128 0xa
	.string	"eMAIN_CALIB_IDX_EPS"
	.sleb128 3
	.uleb128 0xa
	.string	"eMAIN_CALIB_ECU_NO"
	.sleb128 4
	.byte	0
	.uleb128 0x9
	.string	"eRcGainIndex"
	.byte	0x1
	.byte	0x5
	.byte	0x27
	.uaword	0x6ae
	.uleb128 0xa
	.string	"eMAIN_CALIB_BUF_RC00_INDEX"
	.sleb128 0
	.uleb128 0xa
	.string	"eMAIN_CALIB_BUF_RC01_INDEX"
	.sleb128 1
	.uleb128 0xa
	.string	"eMAIN_CALIB_BUF_RC02_INDEX"
	.sleb128 2
	.uleb128 0xa
	.string	"eMAIN_CALIB_BUF_RC03_INDEX"
	.sleb128 3
	.uleb128 0xa
	.string	"eMAIN_CALIB_BUF_RC04_INDEX"
	.sleb128 4
	.uleb128 0xa
	.string	"eMAIN_CALIB_BUF_RC05_INDEX"
	.sleb128 5
	.uleb128 0xa
	.string	"eMAIN_CALIB_BUF_RC06_INDEX"
	.sleb128 6
	.uleb128 0xa
	.string	"eMAIN_CALIB_BUF_RC07_INDEX"
	.sleb128 7
	.uleb128 0xa
	.string	"eMAIN_CALIB_BUF_RC08_INDEX"
	.sleb128 8
	.uleb128 0xa
	.string	"eMAIN_CALIB_BUF_RC09_INDEX"
	.sleb128 9
	.uleb128 0xa
	.string	"eMAIN_CALIB_BUF_RC10_INDEX"
	.sleb128 10
	.uleb128 0xa
	.string	"eMAIN_CALIB_BUF_RC11_INDEX"
	.sleb128 11
	.uleb128 0xa
	.string	"eMAIN_CALIB_BUF_RC12_INDEX"
	.sleb128 12
	.uleb128 0xa
	.string	"eMAIN_CALIB_BUF_RC13_INDEX"
	.sleb128 13
	.uleb128 0xa
	.string	"eMAIN_CALIB_BUF_RC14_INDEX"
	.sleb128 14
	.uleb128 0xa
	.string	"eMAIN_CALIB_BUF_RC15_INDEX"
	.sleb128 15
	.uleb128 0xa
	.string	"eMAIN_CALIB_BUF_RC16_INDEX"
	.sleb128 16
	.uleb128 0xa
	.string	"eMAIN_CALIB_BUF_VALID_RC_NO"
	.sleb128 17
	.uleb128 0xa
	.string	"eMAIN_CALIB_BUF_MAX_RC_NO"
	.sleb128 25
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.uleb128 0xd
	.uaword	0x203
	.uaword	0x6c0
	.uleb128 0xe
	.uaword	0x332
	.byte	0x3
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.uaword	0x6c6
	.uleb128 0x10
	.uaword	0x1aa
	.uleb128 0xd
	.uaword	0x1aa
	.uaword	0x6db
	.uleb128 0xe
	.uaword	0x332
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.uaword	0x1aa
	.uaword	0x6eb
	.uleb128 0xe
	.uaword	0x332
	.byte	0xf
	.byte	0
	.uleb128 0xd
	.uaword	0x1aa
	.uaword	0x6fb
	.uleb128 0xe
	.uaword	0x332
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.string	"DSM_CONTROL_UNIT_INDEX"
	.byte	0x1
	.byte	0x6
	.byte	0x2b
	.uaword	0x76f
	.uleb128 0xa
	.string	"DSM_UNIT_0"
	.sleb128 0
	.uleb128 0xa
	.string	"DSM_UNIT_1"
	.sleb128 1
	.uleb128 0xa
	.string	"DSM_UNIT_2"
	.sleb128 2
	.uleb128 0xa
	.string	"DSM_UNIT_3"
	.sleb128 3
	.uleb128 0xa
	.string	"DSM_UNIT_4"
	.sleb128 4
	.uleb128 0xa
	.string	"DSM_UNIT_MAX_NUM"
	.sleb128 5
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.byte	0x1
	.byte	0x4b
	.uaword	0x845
	.uleb128 0xa
	.string	"EAS_ST_INIT"
	.sleb128 0
	.uleb128 0xa
	.string	"EAS_ST_START_DELAY"
	.sleb128 1
	.uleb128 0xa
	.string	"EAS_ST_SEND_CHALLENGE"
	.sleb128 2
	.uleb128 0xa
	.string	"EAS_ST_WAIT_RESPONSE"
	.sleb128 3
	.uleb128 0xa
	.string	"EAS_ST_STATE_PROCESS"
	.sleb128 4
	.uleb128 0xa
	.string	"EAS_ST_RETRY_DELAY"
	.sleb128 5
	.uleb128 0xa
	.string	"EAS_ST_VERIFY_KEY"
	.sleb128 6
	.uleb128 0xa
	.string	"EAS_ST_ECU_LOCKED"
	.sleb128 7
	.uleb128 0xa
	.string	"EAS_ST_ECU_RELEASE"
	.sleb128 8
	.uleb128 0xa
	.string	"EAS_ST_AUTH_END"
	.sleb128 9
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.byte	0x1
	.byte	0x59
	.uaword	0x89b
	.uleb128 0xa
	.string	"EAS_BCM_IGNT_OFF"
	.sleb128 0
	.uleb128 0xa
	.string	"EAS_BCM_IGNT_ACC"
	.sleb128 1
	.uleb128 0xa
	.string	"EAS_BCM_IGNT_ON"
	.sleb128 2
	.uleb128 0xa
	.string	"EAS_BCM_IGNT_START"
	.sleb128 3
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"EAS_bReActiveChk"
	.byte	0x1
	.uahalf	0x11a
	.byte	0x1
	.uaword	0x24e
	.byte	0x1
	.uaword	0x8ed
	.uleb128 0x12
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x11a
	.uaword	0x1aa
	.uleb128 0x13
	.string	"bLocEasActiveFlg"
	.byte	0x1
	.uahalf	0x11c
	.uaword	0x24e
	.uleb128 0x14
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x11d
	.uaword	0x1aa
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.string	"BSW_vidTrigChallengeCode"
	.byte	0x1
	.byte	0xa1
	.byte	0x1
	.byte	0x1
	.uaword	0x92c
	.uleb128 0x16
	.string	"au8LocChallengeCode"
	.byte	0x1
	.byte	0xa1
	.uaword	0x6c0
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.string	"BSW_vidTrigAuthResult"
	.byte	0x1
	.byte	0xb0
	.byte	0x1
	.byte	0x1
	.uaword	0x961
	.uleb128 0x16
	.string	"abAuthResult"
	.byte	0x1
	.byte	0xb0
	.uaword	0x961
	.byte	0
	.uleb128 0x10
	.uaword	0x24e
	.uleb128 0x17
	.uaword	0x8ed
	.uaword	.LFB31
	.uaword	.LFE31
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x98f
	.uleb128 0x18
	.uaword	0x910
	.uaword	.LLST0
	.uleb128 0x19
	.uaword	.LVL1
	.byte	0x1
	.uaword	0x1092
	.byte	0
	.uleb128 0x17
	.uaword	0x92c
	.uaword	.LFB32
	.uaword	.LFE32
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x9b8
	.uleb128 0x18
	.uaword	0x94c
	.uaword	.LLST1
	.uleb128 0x19
	.uaword	.LVL3
	.byte	0x1
	.uaword	0x10c0
	.byte	0
	.uleb128 0x17
	.uaword	0x89b
	.uaword	.LFB34
	.uaword	.LFE34
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xa08
	.uleb128 0x18
	.uaword	0x8bb
	.uaword	.LLST2
	.uleb128 0x1a
	.uaword	0x8c7
	.uaword	.LLST3
	.uleb128 0x1a
	.uaword	0x8e0
	.uaword	.LLST4
	.uleb128 0x1b
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x1c
	.uaword	0x8bb
	.uleb128 0x1b
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x1d
	.uaword	0x8c7
	.uleb128 0x1a
	.uaword	0x8e0
	.uaword	.LLST5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.string	"EAS_vidImmoCodeCallback"
	.byte	0x1
	.uahalf	0x244
	.byte	0x1
	.uaword	.LFB36
	.uaword	.LFE36
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xa60
	.uleb128 0x1f
	.string	"au8LocImmoCode"
	.byte	0x1
	.uahalf	0x244
	.uaword	0x6c0
	.byte	0x1
	.byte	0x64
	.uleb128 0x20
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x246
	.uaword	0x1aa
	.uaword	.LLST6
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.string	"EAS_vidGenChallengeCode"
	.byte	0x1
	.uahalf	0x25b
	.byte	0x1
	.uaword	.LFB37
	.uaword	.LFE37
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xafb
	.uleb128 0x20
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x25d
	.uaword	0x1aa
	.uaword	.LLST7
	.uleb128 0x21
	.string	"u32RandomSeed"
	.byte	0x1
	.uahalf	0x25e
	.uaword	0x203
	.uaword	.LLST8
	.uleb128 0x21
	.string	"u8LocInvalidBytesCounter"
	.byte	0x1
	.uahalf	0x25f
	.uaword	0x1aa
	.uaword	.LLST9
	.uleb128 0x21
	.string	"u8LocMaxGenTimes"
	.byte	0x1
	.uahalf	0x260
	.uaword	0x1aa
	.uaword	.LLST10
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.string	"EAS_vidInit"
	.byte	0x1
	.byte	0xc1
	.byte	0x1
	.uaword	.LFB33
	.uaword	.LFE33
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xb7e
	.uleb128 0x23
	.string	"bLocEskAllZero"
	.byte	0x1
	.byte	0xc3
	.uaword	0x24e
	.uaword	.LLST11
	.uleb128 0x23
	.string	"bLocEskAllFF"
	.byte	0x1
	.byte	0xc4
	.uaword	0x24e
	.uaword	.LLST12
	.uleb128 0x23
	.string	"u8LocEskSts"
	.byte	0x1
	.byte	0xc5
	.uaword	0x1aa
	.uaword	.LLST13
	.uleb128 0x24
	.uaword	.LASF0
	.byte	0x1
	.byte	0xc6
	.uaword	0x1aa
	.uaword	.LLST14
	.uleb128 0x25
	.uaword	.LVL85
	.uaword	0xa60
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.string	"EAS_bVerifyImmoCode"
	.byte	0x1
	.uahalf	0x2c9
	.byte	0x1
	.uaword	0x24e
	.uaword	.LFB38
	.uaword	.LFE38
	.uaword	.LLST15
	.byte	0x1
	.uaword	0xc3c
	.uleb128 0x27
	.string	"pku8ImmoCode"
	.byte	0x1
	.uahalf	0x2c9
	.uaword	0x6c0
	.uaword	.LLST16
	.uleb128 0x21
	.string	"bLocImmoCodValid"
	.byte	0x1
	.uahalf	0x2cb
	.uaword	0x24e
	.uaword	.LLST17
	.uleb128 0x20
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x2cc
	.uaword	0x1aa
	.uaword	.LLST18
	.uleb128 0x28
	.string	"u32LocTempESK"
	.byte	0x1
	.uahalf	0x2cd
	.uaword	0x6b0
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x28
	.string	"u32LocTempKey"
	.byte	0x1
	.uahalf	0x2ce
	.uaword	0xc3c
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.uaword	.LVL118
	.uaword	0x10ee
	.uleb128 0x2a
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x2a
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0xd
	.uaword	0x203
	.uaword	0xc4c
	.uleb128 0xe
	.uaword	0x332
	.byte	0x1
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.string	"EAS_vidAuthStateMng"
	.byte	0x1
	.uahalf	0x14a
	.byte	0x1
	.uaword	.LFB35
	.uaword	.LFE35
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xda6
	.uleb128 0x21
	.string	"bLocEasReActiveFlg"
	.byte	0x1
	.uahalf	0x14c
	.uaword	0x24e
	.uaword	.LLST19
	.uleb128 0x2b
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x14d
	.uaword	0x1aa
	.byte	0
	.uleb128 0x2b
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x14e
	.uaword	0x1aa
	.byte	0
	.uleb128 0x2c
	.uaword	0x89b
	.uaword	.LBB26
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x1
	.uahalf	0x158
	.uaword	0xd04
	.uleb128 0x18
	.uaword	0x8bb
	.uaword	.LLST20
	.uleb128 0x1b
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0x1a
	.uaword	0x8c7
	.uaword	.LLST21
	.uleb128 0x1a
	.uaword	0x8e0
	.uaword	.LLST22
	.uleb128 0x1b
	.uaword	.Ldebug_ranges0+0x38
	.uleb128 0x1c
	.uaword	0x8bb
	.uleb128 0x1b
	.uaword	.Ldebug_ranges0+0x38
	.uleb128 0x1d
	.uaword	0x8c7
	.uleb128 0x1a
	.uaword	0x8e0
	.uaword	.LLST23
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uaword	0x92c
	.uaword	.LBB35
	.uaword	.LBE35
	.byte	0x1
	.uahalf	0x219
	.uaword	0xd2c
	.uleb128 0x18
	.uaword	0x94c
	.uaword	.LLST24
	.uleb128 0x19
	.uaword	.LVL147
	.byte	0x1
	.uaword	0x10c0
	.byte	0
	.uleb128 0x2d
	.uaword	0x92c
	.uaword	.LBB37
	.uaword	.LBE37
	.byte	0x1
	.uahalf	0x210
	.uaword	0xd54
	.uleb128 0x18
	.uaword	0x94c
	.uaword	.LLST25
	.uleb128 0x19
	.uaword	.LVL149
	.byte	0x1
	.uaword	0x10c0
	.byte	0
	.uleb128 0x2e
	.uaword	.Ldebug_ranges0+0x50
	.uaword	0xd85
	.uleb128 0x21
	.string	"bLocImmoCodeValid"
	.byte	0x1
	.uahalf	0x1f0
	.uaword	0x24e
	.uaword	.LLST26
	.uleb128 0x25
	.uaword	.LVL150
	.uaword	0xb7e
	.byte	0
	.uleb128 0x2f
	.uaword	0x8ed
	.uaword	.LBB41
	.uaword	.LBE41
	.byte	0x1
	.uahalf	0x19b
	.uleb128 0x1c
	.uaword	0x910
	.uleb128 0x19
	.uaword	.LVL155
	.byte	0x1
	.uaword	0x1092
	.byte	0
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.string	"EAS_u8GetTMRelsSig"
	.byte	0x1
	.uahalf	0x307
	.byte	0x1
	.uaword	0x1aa
	.uaword	.LFB39
	.uaword	.LFE39
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x30
	.byte	0x1
	.string	"EAS_u8GetImmFailRes"
	.byte	0x1
	.uahalf	0x317
	.byte	0x1
	.uaword	0x1aa
	.uaword	.LFB40
	.uaword	.LFE40
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x31
	.string	"EAS_bDefaultEskFlg"
	.byte	0x7
	.byte	0x3b
	.uaword	0x24e
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.string	"EAS_bDefaultEskPassC"
	.byte	0x8
	.byte	0x42
	.uaword	0x961
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.string	"EAS_bRN32EnaOnC"
	.byte	0x8
	.byte	0x43
	.uaword	0x961
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.string	"EAS_bImmoCodRcvFlg"
	.byte	0x8
	.byte	0x4f
	.uaword	0x24e
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.string	"EAS_bSendNewChalgFlg"
	.byte	0x8
	.byte	0x50
	.uaword	0x24e
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.string	"EAS_au32PinESK32"
	.byte	0x8
	.byte	0x51
	.uaword	0x6b0
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.string	"EAS_au8ComChallengeVal"
	.byte	0x8
	.byte	0x52
	.uaword	0x6eb
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.string	"EAS_au8ComChallengeValBkp"
	.byte	0x8
	.byte	0x53
	.uaword	0x6eb
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.string	"EAS_au8ComImmoCode"
	.byte	0x8
	.byte	0x54
	.uaword	0x6eb
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.string	"EAS_au8ParmEacEncr"
	.byte	0x8
	.byte	0x56
	.uaword	0x6db
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.string	"EAS_au8ParmEarEncr1"
	.byte	0x8
	.byte	0x58
	.uaword	0x6db
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.string	"EAS_au8ParmRN32"
	.byte	0x8
	.byte	0x5a
	.uaword	0x6cb
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.string	"EAS_u8AuthFailedCnt"
	.byte	0x8
	.byte	0x5d
	.uaword	0x1aa
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.string	"EAS_u8AuthState"
	.byte	0x8
	.byte	0x5e
	.uaword	0x1aa
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.string	"EAS_u8AuthVerifyCnt"
	.byte	0x8
	.byte	0x5f
	.uaword	0x1aa
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.string	"EAS_u8Chg1DelayCnt"
	.byte	0x8
	.byte	0x60
	.uaword	0x1aa
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.string	"EAS_u8ImmFailReason"
	.byte	0x8
	.byte	0x61
	.uaword	0x1aa
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.string	"EAS_u8SttTimerCnt"
	.byte	0x8
	.byte	0x62
	.uaword	0x1aa
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.string	"EAS_u8TMReleaseSig"
	.byte	0x8
	.byte	0x63
	.uaword	0x1aa
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.string	"UDS_au8ESKDataNvM_Ram"
	.byte	0x9
	.byte	0x23
	.uaword	0x6db
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.string	"EAS_aku8CC64"
	.byte	0x1
	.byte	0x85
	.uaword	0x104e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	EAS_aku8CC64
	.uleb128 0x10
	.uaword	0x6eb
	.uleb128 0x32
	.string	"EAS_aku8ESK"
	.byte	0x1
	.byte	0x86
	.uaword	0x106d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	EAS_aku8ESK
	.uleb128 0x10
	.uaword	0x6db
	.uleb128 0x32
	.string	"EAS_aku8RN32"
	.byte	0x1
	.byte	0x87
	.uaword	0x108d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	EAS_aku8RN32
	.uleb128 0x10
	.uaword	0x6cb
	.uleb128 0x33
	.byte	0x1
	.string	"MAIN_MSGvidCan01_Tx01_PDUST1_0x18F7011E"
	.byte	0xa
	.byte	0x4a
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.byte	0x1
	.string	"MAIN_MSGvidCan01_Tx02_PDUST2_0x18F7021E"
	.byte	0xa
	.byte	0x4b
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.byte	0x1
	.string	"EAS_vidEncrypt"
	.byte	0x7
	.byte	0x49
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.uaword	0x6ae
	.uleb128 0x35
	.uaword	0x6ae
	.uleb128 0x35
	.uaword	0x6ae
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0-.text
	.uaword	.LVL1-1-.text
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL1-1-.text
	.uaword	.LFE31-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL2-.text
	.uaword	.LVL3-1-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL3-1-.text
	.uaword	.LFE32-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL4-.text
	.uaword	.LVL5-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL5-.text
	.uaword	.LVL6-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL6-.text
	.uaword	.LVL7-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL7-.text
	.uaword	.LFE34-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL4-.text
	.uaword	.LVL5-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL6-.text
	.uaword	.LVL11-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL11-.text
	.uaword	.LVL12-.text
	.uahalf	0xd
	.byte	0x73
	.sleb128 0
	.byte	0x31
	.byte	0x72
	.sleb128 0
	.byte	0x30
	.byte	0x29
	.byte	0x28
	.uahalf	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.uaword	.LVL12-.text
	.uaword	.LVL13-.text
	.uahalf	0xe
	.byte	0x73
	.sleb128 0
	.byte	0x31
	.byte	0x82
	.sleb128 12
	.byte	0x6
	.byte	0x30
	.byte	0x29
	.byte	0x28
	.uahalf	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL4-.text
	.uaword	.LVL5-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL6-.text
	.uaword	.LVL8-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL8-.text
	.uaword	.LVL9-.text
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL9-.text
	.uaword	.LVL10-.text
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL10-.text
	.uaword	.LVL11-.text
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL11-.text
	.uaword	.LFE34-.text
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL16-.text
	.uaword	.LVL17-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL17-.text
	.uaword	.LVL18-.text
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL18-.text
	.uaword	.LVL19-.text
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL19-.text
	.uaword	.LVL20-.text
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL20-.text
	.uaword	.LVL21-.text
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL21-.text
	.uaword	.LVL22-.text
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL22-.text
	.uaword	.LVL23-.text
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	.LVL23-.text
	.uaword	.LVL24-.text
	.uahalf	0x2
	.byte	0x37
	.byte	0x9f
	.uaword	.LVL24-.text
	.uaword	.LFE34-.text
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL26-.text
	.uaword	.LVL27-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL28-.text
	.uaword	.LVL29-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL29-.text
	.uaword	.LVL30-.text
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL30-.text
	.uaword	.LVL31-.text
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL31-.text
	.uaword	.LVL32-.text
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL32-.text
	.uaword	.LVL33-.text
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL33-.text
	.uaword	.LVL34-.text
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL34-.text
	.uaword	.LVL35-.text
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	.LVL35-.text
	.uaword	.LVL36-.text
	.uahalf	0x2
	.byte	0x37
	.byte	0x9f
	.uaword	.LVL36-.text
	.uaword	.LFE36-.text
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL37-.text
	.uaword	.LVL38-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL41-.text
	.uaword	.LVL42-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL42-.text
	.uaword	.LVL43-.text
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL43-.text
	.uaword	.LVL44-.text
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL44-.text
	.uaword	.LVL45-.text
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL45-.text
	.uaword	.LVL46-.text
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL47-.text
	.uaword	.LVL48-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL48-.text
	.uaword	.LVL49-.text
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL49-.text
	.uaword	.LVL50-.text
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL50-.text
	.uaword	.LVL51-.text
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL51-.text
	.uaword	.LVL52-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL52-.text
	.uaword	.LVL53-.text
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL53-.text
	.uaword	.LVL54-.text
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL54-.text
	.uaword	.LVL55-.text
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL55-.text
	.uaword	.LVL56-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL56-.text
	.uaword	.LVL57-.text
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL57-.text
	.uaword	.LVL58-.text
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL58-.text
	.uaword	.LVL59-.text
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL59-.text
	.uaword	.LVL60-.text
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL60-.text
	.uaword	.LVL61-.text
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL61-.text
	.uaword	.LVL62-.text
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	.LVL62-.text
	.uaword	.LVL63-.text
	.uahalf	0x2
	.byte	0x37
	.byte	0x9f
	.uaword	.LVL64-.text
	.uaword	.LVL65-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL69-.text
	.uaword	.LVL71-.text
	.uahalf	0x2
	.byte	0x37
	.byte	0x9f
	.uaword	.LVL71-.text
	.uaword	.LVL72-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL72-.text
	.uaword	.LVL73-.text
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL73-.text
	.uaword	.LVL74-.text
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL74-.text
	.uaword	.LVL75-.text
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL75-.text
	.uaword	.LVL76-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL76-.text
	.uaword	.LVL77-.text
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL77-.text
	.uaword	.LVL78-.text
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL78-.text
	.uaword	.LVL79-.text
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL79-.text
	.uaword	.LVL80-.text
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL80-.text
	.uaword	.LVL81-.text
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL81-.text
	.uaword	.LVL82-.text
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	.LVL82-.text
	.uaword	.LVL83-.text
	.uahalf	0x2
	.byte	0x37
	.byte	0x9f
	.uaword	.LVL83-.text
	.uaword	.LFE37-.text
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL37-.text
	.uaword	.LVL38-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL67-.text
	.uaword	.LVL68-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL37-.text
	.uaword	.LVL56-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL56-.text
	.uaword	.LVL57-.text
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL57-.text
	.uaword	.LVL58-.text
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL58-.text
	.uaword	.LVL59-.text
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL59-.text
	.uaword	.LVL60-.text
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL60-.text
	.uaword	.LVL61-.text
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL61-.text
	.uaword	.LVL62-.text
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	.LVL62-.text
	.uaword	.LVL63-.text
	.uahalf	0x2
	.byte	0x37
	.byte	0x9f
	.uaword	.LVL66-.text
	.uaword	.LVL69-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL69-.text
	.uaword	.LVL70-.text
	.uahalf	0x2
	.byte	0x37
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL37-.text
	.uaword	.LVL38-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL38-.text
	.uaword	.LVL39-.text
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL39-.text
	.uaword	.LVL40-.text
	.uahalf	0x3
	.byte	0x7b
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL40-.text
	.uaword	.LFE37-.text
	.uahalf	0x1
	.byte	0x5b
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL84-.text
	.uaword	.LVL89-.text
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL89-.text
	.uaword	.LVL90-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL90-.text
	.uaword	.LVL92-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL92-.text
	.uaword	.LVL98-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL98-.text
	.uaword	.LVL101-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL109-.text
	.uaword	.LFE33-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL84-.text
	.uaword	.LVL90-.text
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL90-.text
	.uaword	.LVL92-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL93-.text
	.uaword	.LVL94-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL94-.text
	.uaword	.LVL96-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL96-.text
	.uaword	.LVL99-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL99-.text
	.uaword	.LVL101-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL109-.text
	.uaword	.LVL111-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL84-.text
	.uaword	.LVL95-.text
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL95-.text
	.uaword	.LVL96-.text
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL96-.text
	.uaword	.LFE33-.text
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL85-.text
	.uaword	.LVL86-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL86-.text
	.uaword	.LVL87-.text
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL87-.text
	.uaword	.LVL88-.text
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL88-.text
	.uaword	.LVL90-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL90-.text
	.uaword	.LVL91-.text
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL91-.text
	.uaword	.LVL93-.text
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL93-.text
	.uaword	.LVL94-.text
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL94-.text
	.uaword	.LVL96-.text
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL96-.text
	.uaword	.LVL97-.text
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL97-.text
	.uaword	.LVL99-.text
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL99-.text
	.uaword	.LVL100-.text
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL100-.text
	.uaword	.LVL101-.text
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL101-.text
	.uaword	.LVL102-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL102-.text
	.uaword	.LVL103-.text
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL103-.text
	.uaword	.LVL104-.text
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL104-.text
	.uaword	.LVL105-.text
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL105-.text
	.uaword	.LVL106-.text
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL106-.text
	.uaword	.LVL107-.text
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL107-.text
	.uaword	.LVL108-.text
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	.LVL108-.text
	.uaword	.LVL109-.text
	.uahalf	0x2
	.byte	0x37
	.byte	0x9f
	.uaword	.LVL109-.text
	.uaword	.LVL110-.text
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL110-.text
	.uaword	.LFE33-.text
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LFB38-.text
	.uaword	.LCFI0-.text
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0-.text
	.uaword	.LFE38-.text
	.uahalf	0x2
	.byte	0x8a
	.sleb128 24
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL112-.text
	.uaword	.LVL117-.text
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL117-.text
	.uaword	.LVL126-.text
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL126-.text
	.uaword	.LFE38-.text
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL112-.text
	.uaword	.LVL125-.text
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL125-.text
	.uaword	.LVL126-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL126-.text
	.uaword	.LFE38-.text
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL112-.text
	.uaword	.LVL113-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL113-.text
	.uaword	.LVL114-.text
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL114-.text
	.uaword	.LVL115-.text
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL115-.text
	.uaword	.LVL116-.text
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL119-.text
	.uaword	.LVL120-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL120-.text
	.uaword	.LVL121-.text
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL121-.text
	.uaword	.LVL122-.text
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL122-.text
	.uaword	.LVL123-.text
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL123-.text
	.uaword	.LVL124-.text
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL124-.text
	.uaword	.LVL125-.text
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL126-.text
	.uaword	.LVL127-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL127-.text
	.uaword	.LVL128-.text
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL128-.text
	.uaword	.LVL129-.text
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL129-.text
	.uaword	.LVL130-.text
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL130-.text
	.uaword	.LVL131-.text
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL131-.text
	.uaword	.LVL132-.text
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL132-.text
	.uaword	.LVL133-.text
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	.LVL133-.text
	.uaword	.LVL134-.text
	.uahalf	0x2
	.byte	0x37
	.byte	0x9f
	.uaword	.LVL134-.text
	.uaword	.LFE38-.text
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL135-.text
	.uaword	.LVL144-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL145-.text
	.uaword	.LFE35-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL136-.text
	.uaword	.LVL145-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL156-.text
	.uaword	.LFE35-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL136-.text
	.uaword	.LVL140-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL140-.text
	.uaword	.LVL141-.text
	.uahalf	0xd
	.byte	0x73
	.sleb128 0
	.byte	0x31
	.byte	0x72
	.sleb128 0
	.byte	0x30
	.byte	0x29
	.byte	0x28
	.uahalf	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.uaword	.LVL141-.text
	.uaword	.LVL142-.text
	.uahalf	0xe
	.byte	0x73
	.sleb128 0
	.byte	0x31
	.byte	0x83
	.sleb128 12
	.byte	0x6
	.byte	0x30
	.byte	0x29
	.byte	0x28
	.uahalf	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL136-.text
	.uaword	.LVL137-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL137-.text
	.uaword	.LVL138-.text
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL138-.text
	.uaword	.LVL139-.text
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL139-.text
	.uaword	.LVL140-.text
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL140-.text
	.uaword	.LVL145-.text
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL156-.text
	.uaword	.LFE35-.text
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL156-.text
	.uaword	.LVL157-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL157-.text
	.uaword	.LVL158-.text
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL158-.text
	.uaword	.LVL159-.text
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL159-.text
	.uaword	.LVL160-.text
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL160-.text
	.uaword	.LVL161-.text
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL161-.text
	.uaword	.LVL162-.text
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL162-.text
	.uaword	.LVL163-.text
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	.LVL163-.text
	.uaword	.LVL164-.text
	.uahalf	0x2
	.byte	0x37
	.byte	0x9f
	.uaword	.LVL164-.text
	.uaword	.LFE35-.text
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL146-.text
	.uaword	.LVL147-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL148-.text
	.uaword	.LVL149-.text
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL149-.text
	.uaword	.LVL150-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL150-.text
	.uaword	.LVL151-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL152-.text
	.uaword	.LVL153-.text
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
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB11-.Ltext0
	.uaword	.LBE11-.Ltext0
	.uaword	.LBB14-.Ltext0
	.uaword	.LBE14-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB26-.Ltext0
	.uaword	.LBE26-.Ltext0
	.uaword	.LBB34-.Ltext0
	.uaword	.LBE34-.Ltext0
	.uaword	.LBB43-.Ltext0
	.uaword	.LBE43-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB28-.Ltext0
	.uaword	.LBE28-.Ltext0
	.uaword	.LBB31-.Ltext0
	.uaword	.LBE31-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB39-.Ltext0
	.uaword	.LBE39-.Ltext0
	.uaword	.LBB40-.Ltext0
	.uaword	.LBE40-.Ltext0
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"u8LocIdx"
.LASF1:
	.string	"u8LocIgntSts"
	.extern	EAS_u8AuthVerifyCnt,STT_OBJECT,1
	.extern	EAS_bDefaultEskPassC,STT_OBJECT,1
	.extern	EAS_vidEncrypt,STT_FUNC,0
	.extern	EAS_au8ParmEarEncr1,STT_OBJECT,16
	.extern	EAS_bSendNewChalgFlg,STT_OBJECT,1
	.extern	EAS_u8Chg1DelayCnt,STT_OBJECT,1
	.extern	EAS_u8SttTimerCnt,STT_OBJECT,1
	.extern	EAS_u8TMReleaseSig,STT_OBJECT,1
	.extern	EAS_u8AuthState,STT_OBJECT,1
	.extern	EAS_u8ImmFailReason,STT_OBJECT,1
	.extern	EAS_bDefaultEskFlg,STT_OBJECT,1
	.extern	EAS_au8ParmEacEncr,STT_OBJECT,16
	.extern	EAS_au8ParmRN32,STT_OBJECT,4
	.extern	EAS_bRN32EnaOnC,STT_OBJECT,1
	.extern	EAS_au8ComImmoCode,STT_OBJECT,8
	.extern	EAS_bImmoCodRcvFlg,STT_OBJECT,1
	.extern	EAS_au8ComChallengeValBkp,STT_OBJECT,8
	.extern	EAS_au8ComChallengeVal,STT_OBJECT,8
	.extern	EAS_au32PinESK32,STT_OBJECT,16
	.extern	UDS_au8ESKDataNvM_Ram,STT_OBJECT,16
	.extern	MAIN_MSGvidCan01_Tx02_PDUST2_0x18F7021E,STT_FUNC,0
	.extern	MAIN_MSGvidCan01_Tx01_PDUST1_0x18F7011E,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
