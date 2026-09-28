	.file	"CCP_Daq.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	CCP_vidDaqListIni
	.type	CCP_vidDaqListIni, @function
CCP_vidDaqListIni:
.LFB0:
	.file 1 "bswcdd\\CCP\\CCP\\CCP_Daq.c"
	.loc 1 107 0
	.loc 1 112 0
	movh.a	%a15, hi:CCP_strDaqListSeldElm
	mov	%d15, 7
	lea	%a15, [%a15] lo:CCP_strDaqListSeldElm
	.loc 1 118 0
	movh.a	%a2, hi:CCP_astrDaqListDynCfg
	.loc 1 112 0
	st.b	[%a15] 2, %d15
.LVL0:
	.loc 1 118 0
	lea	%a15, [%a2] lo:CCP_astrDaqListDynCfg
	mov	%d15, 0
	.loc 1 119 0
	mov	%d2, 1
	.loc 1 118 0
	st.b	[%a2] lo:CCP_astrDaqListDynCfg, %d15
	.loc 1 120 0
	st.b	[%a15] 3, %d15
	.loc 1 121 0
	st.b	[%a15] 2, %d15
	.loc 1 122 0
	st.b	[%a15] 4, %d15
	.loc 1 124 0
	st.b	[%a15] 5, %d15
	.loc 1 126 0
	st.b	[%a15] 6, %d15
	.loc 1 127 0
	st.b	[%a15] 7, %d15
	.loc 1 128 0
	st.b	[%a15] 8, %d15
	.loc 1 129 0
	mov	%d15, 0
	.loc 1 119 0
	st.b	[%a15] 1, %d2
	.loc 1 129 0
	st.h	[%a15] 10, %d15
	.loc 1 130 0
	st.h	[%a15] 12, %d15
.LVL1:
	.loc 1 118 0
	st.b	[%a15] 14, %d15
	.loc 1 119 0
	st.b	[%a15] 15, %d2
	.loc 1 120 0
	st.b	[%a15] 17, %d15
	.loc 1 121 0
	st.b	[%a15] 16, %d15
	.loc 1 122 0
	st.b	[%a15] 18, %d15
	.loc 1 124 0
	st.b	[%a15] 19, %d15
	.loc 1 126 0
	st.b	[%a15] 20, %d15
	.loc 1 127 0
	st.b	[%a15] 21, %d15
	.loc 1 128 0
	st.b	[%a15] 22, %d15
	.loc 1 129 0
	st.h	[%a15] 24, %d15
	.loc 1 130 0
	st.h	[%a15] 26, %d15
.LVL2:
	.loc 1 118 0
	st.b	[%a15] 28, %d15
	.loc 1 119 0
	st.b	[%a15] 29, %d2
	.loc 1 120 0
	st.b	[%a15] 31, %d15
	.loc 1 121 0
	st.b	[%a15] 30, %d15
	.loc 1 122 0
	st.b	[%a15] 32, %d15
	.loc 1 124 0
	st.b	[%a15] 33, %d15
	.loc 1 126 0
	st.b	[%a15] 34, %d15
	.loc 1 127 0
	st.b	[%a15] 35, %d15
	.loc 1 128 0
	st.b	[%a15] 36, %d15
	.loc 1 129 0
	st.h	[%a15] 38, %d15
	.loc 1 130 0
	st.h	[%a15] 40, %d15
.LVL3:
	ret
.LFE0:
	.size	CCP_vidDaqListIni, .-CCP_vidDaqListIni
	.align 1
	.global	CCP_udtGetDaqSize
	.type	CCP_udtGetDaqSize, @function
CCP_udtGetDaqSize:
.LFB1:
	.loc 1 182 0
	.loc 1 200 0
	movh.a	%a15, hi:CCP_uniBuf
	lea	%a15, [%a15] lo:CCP_uniBuf
	ld.bu	%d15, [%a15] 2
.LVL4:
	.loc 1 201 0
	jlt.u	%d15, 3, .L10
	.loc 1 242 0
	mov	%d15, 0
.LVL5:
	st.b	[%a15] 3, %d15
	.loc 1 243 0
	mov	%d2, 50
	.loc 1 244 0
	ret
.LVL6:
.L10:
.LBB12:
.LBB13:
	.loc 1 671 0
	mul	%d2, %d15, 14
	movh.a	%a2, hi:CCP_astrDaqListDynCfg
	lea	%a3, [%a2] lo:CCP_astrDaqListDynCfg
	addsc.a	%a2, %a3, %d2, 0
	.loc 1 678 0
	mov	%d4, 0
	.loc 1 671 0
	ld.bu	%d3, [%a2] 8
.LVL7:
	.loc 1 678 0
	st.b	[%a2] 8, %d4
	.loc 1 679 0
	ld.bu	%d4, [%a2] 6
	add	%d4, 1
	st.b	[%a2] 6, %d4
	.loc 1 680 0
	jeq	%d3, 1, .L11
.LVL8:
.L4:
	.loc 1 685 0
	addsc.a	%a2, %a3, %d2, 0
	mov	%d2, 1
	st.b	[%a2]0, %d2
.LVL9:
.LBE13:
.LBE12:
	.loc 1 235 0
	mov	%d4, %d15
	call	CCP_vidUsrDaqListClr
.LVL10:
	.loc 1 237 0
	movh.a	%a2, hi:CCP_kastrDaqListStatCfg
	lea	%a2, [%a2] lo:CCP_kastrDaqListStatCfg
	addsc.a	%a2, %a2, %d15, 1
	.loc 1 240 0
	mov	%d2, 0
	.loc 1 237 0
	ld.bu	%d15, [%a2]0
.LVL11:
	st.b	[%a15] 3, %d15
	.loc 1 238 0
	ld.bu	%d15, [%a2] 1
	st.b	[%a15] 4, %d15
	.loc 1 240 0
	ret
.LVL12:
.L11:
.LBB15:
.LBB14:
	.loc 1 681 0
	movh.a	%a2, hi:CCP_u8DaqNoStrtdList
	ld.bu	%d3, [%a2] lo:CCP_u8DaqNoStrtdList
.LVL13:
	jz	%d3, .L4
	.loc 1 683 0
	add	%d3, -1
	st.b	[%a2] lo:CCP_u8DaqNoStrtdList, %d3
	j	.L4
.LBE14:
.LBE15:
.LFE1:
	.size	CCP_udtGetDaqSize, .-CCP_udtGetDaqSize
	.align 1
	.global	CCP_udtSetDaqPtr
	.type	CCP_udtSetDaqPtr, @function
CCP_udtSetDaqPtr:
.LFB2:
	.loc 1 283 0
	.loc 1 296 0
	movh.a	%a15, hi:CCP_uniBuf
	lea	%a15, [%a15] lo:CCP_uniBuf
	ld.bu	%d15, [%a15] 2
.LVL14:
	.loc 1 297 0
	ld.bu	%d4, [%a15] 3
.LVL15:
	.loc 1 298 0
	ld.bu	%d3, [%a15] 4
.LVL16:
	.loc 1 299 0
	jlt.u	%d15, 3, .L19
.LVL17:
.L13:
	.loc 1 313 0
	movh.a	%a15, hi:CCP_strDaqListSeldElm
	mov	%d15, 7
	lea	%a15, [%a15] lo:CCP_strDaqListSeldElm
	st.b	[%a15] 2, %d15
	.loc 1 314 0
	mov	%d2, 50
.L14:
	.loc 1 315 0
	ret
.LVL18:
.L19:
	.loc 1 300 0
	movh.a	%a15, hi:CCP_kastrDaqListStatCfg
.LVL19:
	lea	%a15, [%a15] lo:CCP_kastrDaqListStatCfg
	addsc.a	%a15, %a15, %d15, 1
	.loc 1 301 0
	lt.u	%d2, %d3, 7
	.loc 1 300 0
	ld.bu	%d5, [%a15]0
	.loc 1 301 0
	and.lt.u	%d2, %d4, %d5
	jz	%d2, .L13
	.loc 1 303 0
	movh.a	%a15, hi:CCP_astrDaqListDynCfg
	mov.d	%d5, %a15
	addi	%d2, %d5, lo:CCP_astrDaqListDynCfg
	madd	%d5, %d2, %d15, 14
	.loc 1 311 0
	mov	%d2, 17
	.loc 1 303 0
	mov.a	%a15, %d5
	ld.bu	%d5, [%a15] 8
	jnz	%d5, .L14
	.loc 1 305 0
	movh.a	%a2, hi:CCP_strDaqListSeldElm
	lea	%a15, [%a2] lo:CCP_strDaqListSeldElm
	st.b	[%a2] lo:CCP_strDaqListSeldElm, %d15
	.loc 1 306 0
	st.b	[%a15] 1, %d4
	.loc 1 307 0
	st.b	[%a15] 2, %d3
	.loc 1 309 0
	mov	%d2, 0
	ret
.LFE2:
	.size	CCP_udtSetDaqPtr, .-CCP_udtSetDaqPtr
	.align 1
	.global	CCP_udtWrDaqElmCfg
	.type	CCP_udtWrDaqElmCfg, @function
CCP_udtWrDaqElmCfg:
.LFB3:
	.loc 1 360 0
	.loc 1 376 0
	movh.a	%a3, hi:CCP_strDaqListSeldElm
	lea	%a15, [%a3] lo:CCP_strDaqListSeldElm
	ld.bu	%d6, [%a15] 2
.LVL20:
	.loc 1 360 0
	sub.a	%SP, 8
.LCFI0:
	.loc 1 418 0
	mov	%d2, 41
	.loc 1 377 0
	jlt.u	%d6, 7, .L28
.LVL21:
.L21:
	.loc 1 419 0
	ret
.LVL22:
.L28:
	.loc 1 379 0
	movh.a	%a2, hi:CCP_uniBuf
	lea	%a2, [%a2] lo:CCP_uniBuf
	ld.bu	%d7, [%a2] 2
.LVL23:
	.loc 1 387 0
	addi	%d2, %d7, -1
	.loc 1 386 0
	lt.u	%d15, %d2, 2
	or.eq	%d15, %d7, 4
	.loc 1 416 0
	mov	%d2, 50
	.loc 1 386 0
	jz	%d15, .L21
	.loc 1 393 0
	ld.bu	%d4, [%a3] lo:CCP_strDaqListSeldElm
.LVL24:
	.loc 1 395 0
	jge.u	%d4, 3, .L21
	.loc 1 399 0
	ld.bu	%d5, [%a15] 1
.LVL25:
	.loc 1 401 0
	movh.a	%a15, hi:CCP_kastrDaqListStatCfg
.LVL26:
	lea	%a15, [%a15] lo:CCP_kastrDaqListStatCfg
	addsc.a	%a15, %a15, %d4, 1
	ld.bu	%d15, [%a15]0
	jge.u	%d5, %d15, .L21
	.loc 1 405 0
	movh.a	%a15, hi:CCP_astrDaqListDynCfg
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:CCP_astrDaqListDynCfg
	madd	%d2, %d15, %d4, 14
	mov.a	%a15, %d2
	.loc 1 414 0
	mov	%d2, 17
	.loc 1 405 0
	ld.bu	%d15, [%a15] 8
	jnz	%d15, .L21
	.loc 1 407 0
	ld.w	%d15, [%a2] 4
	.loc 1 410 0
	mov.aa	%a4, %SP
	.loc 1 407 0
	st.w	[%SP]0, %d15
	.loc 1 408 0
	ld.bu	%d15, [%a2] 3
	st.b	[%SP] 4, %d15
	.loc 1 410 0
	call	CCP_udtUsrWrDaqElmCfg
.LVL27:
	.loc 1 419 0
	ret
.LFE3:
	.size	CCP_udtWrDaqElmCfg, .-CCP_udtWrDaqElmCfg
	.align 1
	.global	CCP_udtStrtStop
	.type	CCP_udtStrtStop, @function
CCP_udtStrtStop:
.LFB4:
	.loc 1 483 0
	.loc 1 507 0
	movh.a	%a15, hi:CCP_uniBuf
	lea	%a15, [%a15] lo:CCP_uniBuf
	ld.bu	%d15, [%a15] 3
.LVL28:
	.loc 1 547 0
	mov	%d2, 51
	.loc 1 508 0
	jlt.u	%d15, 3, .L49
.LVL29:
.L30:
	.loc 1 548 0
	ret
.LVL30:
.L49:
	.loc 1 512 0
	mul	%d4, %d15, 14
	movh.a	%a3, hi:CCP_astrDaqListDynCfg
	lea	%a3, [%a3] lo:CCP_astrDaqListDynCfg
	addsc.a	%a2, %a3, %d4, 0
	.loc 1 513 0
	ld.bu	%d3, [%a15] 2
	.loc 1 512 0
	ld.bu	%d5, [%a2] 8
.LVL31:
	.loc 1 514 0
	jnz	%d3, .L31
.LVL32:
.LBB24:
.LBB25:
	.loc 1 679 0
	ld.bu	%d15, [%a2] 6
.LVL33:
	.loc 1 678 0
	st.b	[%a2] 8, %d3
	.loc 1 679 0
	add	%d15, 1
	st.b	[%a2] 6, %d15
	.loc 1 680 0
	jeq	%d5, 1, .L50
.LVL34:
.L32:
	.loc 1 685 0
	addsc.a	%a3, %a3, %d4, 0
	mov	%d15, 1
	st.b	[%a3]0, %d15
.LBE25:
.LBE24:
	.loc 1 518 0
	mov	%d2, 0
	ret
.LVL35:
.L31:
	.loc 1 525 0
	addi	%d6, %d3, -1
	.loc 1 521 0
	ld.bu	%d0, [%a15] 4
.LVL36:
	.loc 1 522 0
	ld.bu	%d1, [%a15] 5
.LVL37:
	.loc 1 523 0
	ld.hu	%d7, [%a15] 6
.LVL38:
	.loc 1 545 0
	mov	%d2, 50
	.loc 1 524 0
	jge.u	%d6, 2, .L30
	.loc 1 526 0
	movh.a	%a15, hi:CCP_kastrDaqListStatCfg
.LVL39:
	lea	%a15, [%a15] lo:CCP_kastrDaqListStatCfg
	addsc.a	%a15, %a15, %d15, 1
	ld.bu	%d15, [%a15]0
.LVL40:
	jge.u	%d0, %d15, .L30
	.loc 1 528 0
	ne	%d15, %d7, 0
	and.lt.u	%d15, %d1, 3
	jz	%d15, .L30
	.loc 1 530 0
	jeq	%d5, 1, .L51
.LVL41:
.L33:
	.loc 1 536 0
	addsc.a	%a3, %a3, %d4, 0
	.loc 1 543 0
	mov	%d2, 0
.LBB27:
.LBB28:
	.loc 1 724 0
	ld.bu	%d15, [%a3] 6
.LBE28:
.LBE27:
	.loc 1 536 0
	st.b	[%a3] 3, %d0
.LBB33:
.LBB31:
	.loc 1 724 0
	add	%d15, 1
	st.b	[%a3] 6, %d15
	.loc 1 725 0
	eq	%d15, %d3, 1
.LBE31:
.LBE33:
	.loc 1 538 0
	st.b	[%a3] 5, %d1
	.loc 1 540 0
	st.h	[%a3] 12, %d7
.LVL42:
.LBB34:
.LBB32:
	.loc 1 723 0
	st.b	[%a3] 8, %d3
	.loc 1 725 0
	and.ne	%d15, %d5, 1
	jz	%d15, .L30
.LVL43:
.LBB29:
.LBB30:
	.loc 1 727 0
	movh.a	%a15, hi:CCP_u8DaqNoStrtdList
	ld.bu	%d15, [%a15] lo:CCP_u8DaqNoStrtdList
	jge.u	%d15, 3, .L30
	.loc 1 729 0
	add	%d15, 1
	st.b	[%a15] lo:CCP_u8DaqNoStrtdList, %d15
.LBE30:
.LBE29:
.LBE32:
.LBE34:
	.loc 1 548 0
	ret
.LVL44:
.L50:
.LBB35:
.LBB26:
	.loc 1 681 0
	movh.a	%a15, hi:CCP_u8DaqNoStrtdList
.LVL45:
	ld.bu	%d15, [%a15] lo:CCP_u8DaqNoStrtdList
	jz	%d15, .L32
	.loc 1 683 0
	add	%d15, -1
	st.b	[%a15] lo:CCP_u8DaqNoStrtdList, %d15
	j	.L32
.LVL46:
.L51:
.LBE26:
.LBE35:
.LBB36:
.LBB37:
	.loc 1 678 0
	mov	%d15, 0
	st.b	[%a2] 8, %d15
	.loc 1 679 0
	ld.bu	%d15, [%a2] 6
	.loc 1 681 0
	movh.a	%a15, hi:CCP_u8DaqNoStrtdList
	.loc 1 679 0
	add	%d15, 1
	st.b	[%a2] 6, %d15
	.loc 1 681 0
	ld.bu	%d15, [%a15] lo:CCP_u8DaqNoStrtdList
	jz	%d15, .L34
	.loc 1 683 0
	add	%d15, -1
	st.b	[%a15] lo:CCP_u8DaqNoStrtdList, %d15
.L34:
	.loc 1 685 0
	addsc.a	%a15, %a3, %d4, 0
	mov	%d15, 1
	st.b	[%a15]0, %d15
	ld.bu	%d5, [%a15] 8
.LVL47:
	j	.L33
.LBE37:
.LBE36:
.LFE4:
	.size	CCP_udtStrtStop, .-CCP_udtStrtStop
	.align 1
	.global	CCP_udtStrtStopAll
	.type	CCP_udtStrtStopAll, @function
CCP_udtStrtStopAll:
.LFB5:
	.loc 1 593 0
	.loc 1 613 0
	movh.a	%a15, hi:CCP_uniBuf
	lea	%a15, [%a15] lo:CCP_uniBuf
	ld.bu	%d15, [%a15] 2
.LVL48:
	.loc 1 614 0
	jz	%d15, .L54
	jne	%d15, 1, .L83
	.loc 1 627 0
	movh.a	%a3, hi:CCP_astrDaqListDynCfg
	lea	%a15, [%a3] lo:CCP_astrDaqListDynCfg
	ld.bu	%d3, [%a15] 8
	movh.a	%a2, hi:CCP_u8DaqNoStrtdList
	ld.bu	%d2, [%a2] lo:CCP_u8DaqNoStrtdList
.LVL49:
	jeq	%d3, 2, .L84
.LVL50:
.L63:
	ld.bu	%d15, [%a15] 22
	jeq	%d15, 2, .L85
.L65:
.LVL51:
	ld.bu	%d15, [%a15] 36
	jeq	%d15, 2, .L86
.LVL52:
.L81:
	st.b	[%a2] lo:CCP_u8DaqNoStrtdList, %d2
	.loc 1 621 0
	mov	%d2, 0
	ret
.LVL53:
.L83:
	.loc 1 636 0
	mov	%d2, 50
.LVL54:
	ret
.LVL55:
.L54:
.LBB44:
.LBB45:
	.loc 1 671 0
	movh.a	%a3, hi:CCP_astrDaqListDynCfg
	lea	%a15, [%a3] lo:CCP_astrDaqListDynCfg
	ld.bu	%d3, [%a15] 8
	.loc 1 678 0
	st.b	[%a15] 8, %d15
	.loc 1 679 0
	ld.bu	%d15, [%a15] 6
.LVL56:
	movh.a	%a2, hi:CCP_u8DaqNoStrtdList
	add	%d15, 1
	st.b	[%a15] 6, %d15
	ld.bu	%d2, [%a2] lo:CCP_u8DaqNoStrtdList
.LVL57:
	.loc 1 680 0
	jeq	%d3, 1, .L87
.L56:
	.loc 1 685 0
	mov	%d15, 1
	.loc 1 678 0
	mov	%d3, 0
.LVL58:
	.loc 1 685 0
	st.b	[%a3] lo:CCP_astrDaqListDynCfg, %d15
.LVL59:
	.loc 1 671 0
	ld.bu	%d15, [%a15] 22
.LVL60:
	.loc 1 678 0
	st.b	[%a15] 22, %d3
	.loc 1 679 0
	ld.bu	%d3, [%a15] 20
	add	%d3, 1
	st.b	[%a15] 20, %d3
	.loc 1 680 0
	jeq	%d15, 1, .L88
.LVL61:
.L58:
	.loc 1 685 0
	mov	%d15, 1
	.loc 1 678 0
	mov	%d3, 0
	.loc 1 685 0
	st.b	[%a15] 14, %d15
.LVL62:
	.loc 1 671 0
	ld.bu	%d15, [%a15] 36
.LVL63:
	.loc 1 678 0
	st.b	[%a15] 36, %d3
	.loc 1 679 0
	ld.bu	%d3, [%a15] 34
	add	%d3, 1
	st.b	[%a15] 34, %d3
	.loc 1 680 0
	jeq	%d15, 1, .L89
.LVL64:
.L60:
	.loc 1 685 0
	mov	%d15, 1
	st.b	[%a2] lo:CCP_u8DaqNoStrtdList, %d2
	st.b	[%a15] 28, %d15
.LVL65:
.LBE45:
.LBE44:
	.loc 1 621 0
	mov	%d2, 0
	ret
.LVL66:
.L87:
.LBB47:
.LBB46:
	.loc 1 681 0
	jz	%d2, .L57
	.loc 1 683 0
	add	%d2, -1
	and	%d2, %d2, 255
	j	.L56
.LVL67:
.L89:
	.loc 1 681 0
	jz	%d2, .L70
	.loc 1 683 0
	add	%d2, -1
	and	%d2, %d2, 255
	j	.L60
.LVL68:
.L88:
	.loc 1 681 0
	jz	%d2, .L59
	.loc 1 683 0
	add	%d2, -1
	and	%d2, %d2, 255
	j	.L58
.LVL69:
.L57:
	.loc 1 685 0
	st.b	[%a3] lo:CCP_astrDaqListDynCfg, %d3
.LVL70:
	.loc 1 679 0
	ld.bu	%d3, [%a15] 20
.LVL71:
	.loc 1 671 0
	ld.bu	%d15, [%a15] 22
.LVL72:
	.loc 1 679 0
	add	%d3, 1
	.loc 1 678 0
	st.b	[%a15] 22, %d2
	.loc 1 679 0
	st.b	[%a15] 20, %d3
	.loc 1 680 0
	jne	%d15, 1, .L58
.LVL73:
.L59:
	.loc 1 685 0
	mov	%d15, 1
	.loc 1 678 0
	mov	%d3, 0
	.loc 1 685 0
	st.b	[%a15] 14, %d15
.LVL74:
	.loc 1 671 0
	ld.bu	%d15, [%a15] 36
.LVL75:
	.loc 1 678 0
	st.b	[%a15] 36, %d3
	.loc 1 679 0
	ld.bu	%d3, [%a15] 34
	add	%d3, 1
	st.b	[%a15] 34, %d3
	.loc 1 680 0
	jne	%d15, 1, .L60
.LVL76:
.L70:
	mov	%d2, 0
	j	.L60
.LVL77:
.L84:
.LBE46:
.LBE47:
.LBB48:
.LBB49:
	.loc 1 723 0
	st.b	[%a15] 8, %d15
	.loc 1 724 0
	ld.bu	%d15, [%a15] 6
.LVL78:
	add	%d15, 1
	st.b	[%a15] 6, %d15
.LVL79:
.LBB50:
.LBB51:
	.loc 1 727 0
	jge.u	%d2, 3, .L63
	.loc 1 729 0
	add	%d2, 1
	and	%d2, %d2, 255
	j	.L63
.LVL80:
.L85:
.LBE51:
.LBE50:
	.loc 1 723 0
	mov	%d15, 1
	st.b	[%a15] 22, %d15
	.loc 1 724 0
	ld.bu	%d15, [%a15] 20
	add	%d15, 1
	st.b	[%a15] 20, %d15
.LVL81:
.LBB54:
.LBB52:
	.loc 1 727 0
	jge.u	%d2, 3, .L65
	.loc 1 729 0
	add	%d2, 1
	and	%d2, %d2, 255
	j	.L65
.LVL82:
.L86:
.LBE52:
.LBE54:
	.loc 1 723 0
	mov	%d15, 1
	st.b	[%a15] 36, %d15
	.loc 1 724 0
	ld.bu	%d15, [%a15] 34
	add	%d15, 1
	st.b	[%a15] 34, %d15
.LVL83:
.LBB55:
.LBB53:
	.loc 1 727 0
	jge.u	%d2, 3, .L81
	.loc 1 729 0
	add	%d2, 1
	and	%d2, %d2, 255
.LVL84:
	j	.L81
.LBE53:
.LBE55:
.LBE49:
.LBE48:
.LFE5:
	.size	CCP_udtStrtStopAll, .-CCP_udtStrtStopAll
	.align 1
	.global	CCP_vidDaqListStop
	.type	CCP_vidDaqListStop, @function
CCP_vidDaqListStop:
.LFB6:
	.loc 1 664 0
.LVL85:
	.loc 1 671 0
	mul	%d4, %d4, 14
.LVL86:
	movh.a	%a15, hi:CCP_astrDaqListDynCfg
	lea	%a2, [%a15] lo:CCP_astrDaqListDynCfg
	addsc.a	%a15, %a2, %d4, 0
	.loc 1 678 0
	mov	%d2, 0
	.loc 1 671 0
	ld.bu	%d15, [%a15] 8
.LVL87:
	.loc 1 678 0
	st.b	[%a15] 8, %d2
	.loc 1 679 0
	ld.bu	%d2, [%a15] 6
	add	%d2, 1
	st.b	[%a15] 6, %d2
	.loc 1 680 0
	jeq	%d15, 1, .L95
.LVL88:
.L91:
	.loc 1 685 0
	addsc.a	%a15, %a2, %d4, 0
	mov	%d15, 1
	st.b	[%a15]0, %d15
	ret
.LVL89:
.L95:
	.loc 1 681 0
	movh.a	%a15, hi:CCP_u8DaqNoStrtdList
	ld.bu	%d15, [%a15] lo:CCP_u8DaqNoStrtdList
.LVL90:
	jz	%d15, .L91
	.loc 1 683 0
	add	%d15, -1
	st.b	[%a15] lo:CCP_u8DaqNoStrtdList, %d15
	.loc 1 685 0
	addsc.a	%a15, %a2, %d4, 0
	mov	%d15, 1
	st.b	[%a15]0, %d15
	ret
.LFE6:
	.size	CCP_vidDaqListStop, .-CCP_vidDaqListStop
	.align 1
	.global	CCP_vidDaqListStrt
	.type	CCP_vidDaqListStrt, @function
CCP_vidDaqListStrt:
.LFB7:
	.loc 1 714 0
.LVL91:
	.loc 1 721 0
	movh.a	%a15, hi:CCP_astrDaqListDynCfg
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:CCP_astrDaqListDynCfg
	madd	%d2, %d15, %d4, 14
	mov.a	%a15, %d2
	.loc 1 724 0
	ld.bu	%d15, [%a15] 6
	.loc 1 721 0
	ld.bu	%d2, [%a15] 8
.LVL92:
	.loc 1 724 0
	add	%d15, 1
	st.b	[%a15] 6, %d15
	.loc 1 725 0
	ne	%d15, %d2, 1
	.loc 1 723 0
	st.b	[%a15] 8, %d5
	.loc 1 725 0
	and.eq	%d15, %d5, 1
	jz	%d15, .L96
.LVL93:
.LBB58:
.LBB59:
	.loc 1 727 0
	movh.a	%a15, hi:CCP_u8DaqNoStrtdList
	ld.bu	%d15, [%a15] lo:CCP_u8DaqNoStrtdList
	jge.u	%d15, 3, .L96
	.loc 1 729 0
	add	%d15, 1
	st.b	[%a15] lo:CCP_u8DaqNoStrtdList, %d15
.LVL94:
.L96:
	ret
.LBE59:
.LBE58:
.LFE7:
	.size	CCP_vidDaqListStrt, .-CCP_vidDaqListStrt
	.align 1
	.global	CCP_vidDaqListSetEvent
	.type	CCP_vidDaqListSetEvent, @function
CCP_vidDaqListSetEvent:
.LFB8:
	.loc 1 754 0
.LVL95:
	.loc 1 763 0
	movh.a	%a15, hi:CCP_u8DaqNoStrtdList
	ld.bu	%d2, [%a15] lo:CCP_u8DaqNoStrtdList
	movh.a	%a12, hi:CCP_astrDaqListDynCfg
	.loc 1 816 0
	movh.a	%a13, hi:CCP_kastrDaqListStatCfg
	.loc 1 754 0
	mov	%d8, %d4
	mov	%d15, 0
	lea	%a12, [%a12] lo:CCP_astrDaqListDynCfg
	.loc 1 816 0
	lea	%a13, [%a13] lo:CCP_kastrDaqListStatCfg
	.loc 1 825 0
	mov	%d10, 1
	.loc 1 828 0
	mov	%d9, 0
	.loc 1 819 0
	mov	%d11, 0
	.loc 1 763 0
	jz	%d2, .L101
.LVL96:
.L118:
	.loc 1 774 0
	mul	%d3, %d15, 14
	addsc.a	%a15, %a12, %d3, 0
	ld.bu	%d2, [%a15] 8
	lea	%a2, [%a15] 8
	jeq	%d2, 1, .L122
.L104:
	.loc 1 769 0 discriminator 2
	add	%d15, 1
.LVL97:
	jne	%d15, 3, .L118
.LVL98:
.L101:
	ret
.LVL99:
.L122:
	.loc 1 779 0
	ld.bu	%d2, [%a15] 5
	add.a	%a15, 4
	jne	%d2, %d8, .L104
	.loc 1 786 0
	ld.bu	%d2, [%a15] 2
.LVL100:
	.loc 1 787 0
	ld.bu	%d4, [%a15] 3
	jeq	%d4, %d2, .L106
	.loc 1 789 0
	st.b	[%a15] 3, %d2
.LVL101:
.L107:
	.loc 1 815 0
	addsc.a	%a15, %a12, %d3, 0
.LVL102:
	.loc 1 816 0
	addsc.a	%a2, %a13, %d15, 1
.LVL103:
	.loc 1 815 0
	ld.bu	%d6, [%a15] 3
.LVL104:
	.loc 1 816 0
	ld.bu	%d2, [%a2]0
	jge.u	%d6, %d2, .L123
	.loc 1 824 0
	ld.h	%d2, [%a15] 12
	.loc 1 825 0
	st.b	[%a15] 4, %d10
	.loc 1 824 0
	st.h	[%a15] 10, %d2
	.loc 1 826 0
	ld.bu	%d2, [%a15] 2
	jnz	%d2, .L104
	.loc 1 834 0
	and	%d12, %d15, 255
	.loc 1 828 0
	st.b	[%a15] 4, %d2
	.loc 1 829 0
	st.b	[%a15] 2, %d10
	.loc 1 830 0
	st.b	[%a15]0, %d9
	.loc 1 831 0
	st.b	[%a15] 1, %d9
.LVL105:
	.loc 1 834 0
	mov	%d4, %d12
	ld.bu	%d5, [%a2] 1
	call	CCP_vidUsrDaqListTxMgrInit
.LVL106:
.LBB64:
.LBB65:
.LBB66:
.LBB67:
	.loc 1 870 0
	ld.bu	%d2, [%a15]0
	jnz	%d2, .L109
	.loc 1 872 0
	ld.bu	%d2, [%a15] 1
	jz	%d2, .L124
	.loc 1 878 0
	ld.bu	%d2, [%a15] 4
	jeq	%d2, 1, .L125
	.loc 1 885 0
	st.b	[%a15] 2, %d9
	j	.L104
.LVL107:
.L123:
.LBE67:
.LBE66:
.LBE65:
.LBE64:
	.loc 1 819 0
	st.h	[%a15] 10, %d11
	.loc 1 820 0
	j	.L104
.LVL108:
.L106:
	.loc 1 799 0
	ld.hu	%d2, [%a2] 2
.LVL109:
	.loc 1 800 0
	jz	%d2, .L104
	.loc 1 807 0
	add	%d2, -1
.LVL110:
	.loc 1 808 0
	jz	%d2, .L107
	.loc 1 810 0
	st.h	[%a2] 2, %d2
	.loc 1 811 0
	j	.L104
.LVL111:
.L109:
.LBB71:
.LBB70:
.LBB69:
.LBB68:
	.loc 1 891 0
	st.b	[%a15] 2, %d9
	.loc 1 898 0
	mov	%d4, %d12
	call	CCP_vidUsrDaqListStopd
.LVL112:
	j	.L104
.L124:
	.loc 1 874 0
	mov	%d4, %d12
	call	CCP_bUsrDaqListTxMgr
.LVL113:
	st.b	[%a15] 1, %d2
	j	.L104
.L125:
	.loc 1 880 0
	st.b	[%a15] 4, %d9
	.loc 1 881 0
	mov	%d4, %d12
	call	CCP_vidUsrDaqListTxOvrn
.LVL114:
	j	.L104
.LBE68:
.LBE69:
.LBE70:
.LBE71:
.LFE8:
	.size	CCP_vidDaqListSetEvent, .-CCP_vidDaqListSetEvent
	.align 1
	.global	CCP_vidDaqListTxMgr
	.type	CCP_vidDaqListTxMgr, @function
CCP_vidDaqListTxMgr:
.LFB9:
	.loc 1 862 0
.LVL115:
	.loc 1 866 0
	jge.u	%d4, 3, .L126
.LVL116:
.LBB74:
.LBB75:
	.loc 1 870 0
	movh.a	%a15, hi:CCP_astrDaqListDynCfg
	mov.d	%d3, %a15
	addi	%d2, %d3, lo:CCP_astrDaqListDynCfg
	madd	%d3, %d2, %d4, 14
	mov.a	%a15, %d3
	ld.bu	%d15, [%a15]0
	jnz	%d15, .L128
	.loc 1 872 0
	ld.bu	%d2, [%a15] 1
	jz	%d2, .L131
	.loc 1 878 0
	ld.bu	%d2, [%a15] 4
	jeq	%d2, 1, .L132
	.loc 1 885 0
	st.b	[%a15] 2, %d15
	ret
.LVL117:
.L126:
	ret
.LVL118:
.L128:
	.loc 1 891 0
	mov	%d15, 0
	st.b	[%a15] 2, %d15
	.loc 1 898 0
	j	CCP_vidUsrDaqListStopd
.LVL119:
.L131:
	.loc 1 874 0
	call	CCP_bUsrDaqListTxMgr
.LVL120:
	st.b	[%a15] 1, %d2
	ret
.LVL121:
.L132:
	.loc 1 880 0
	st.b	[%a15] 4, %d15
	.loc 1 881 0
	j	CCP_vidUsrDaqListTxOvrn
.LVL122:
.LBE75:
.LBE74:
.LFE9:
	.size	CCP_vidDaqListTxMgr, .-CCP_vidDaqListTxMgr
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
	.byte	0x4
	.uaword	.LCFI0-.LFB3
	.byte	0xe
	.uleb128 0x8
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
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 "bswcdd\\CCP\\CCP\\CCP_Typ.h"
	.file 4 "bswcdd\\CCP\\CCP\\CCP_Srv.h"
	.file 5 "bswcdd\\CCP\\CCP\\CCP_L.h"
	.file 6 "bswcdd\\CCP\\CCP\\CCP_Usr.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x295f
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\CCP\\CCP\\CCP_Daq.c"
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
	.uaword	0x1bf
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
	.uaword	0x1eb
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
	.uaword	0x227
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
	.uaword	0x1bf
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x3
	.string	"uint8_least"
	.byte	0x2
	.byte	0x8a
	.uaword	0x292
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x3
	.string	"uint16_least"
	.byte	0x2
	.byte	0x94
	.uaword	0x292
	.uleb128 0x3
	.string	"CCP_tudtCmdSts"
	.byte	0x3
	.byte	0x3f
	.uaword	0x27f
	.uleb128 0x4
	.byte	0x8
	.byte	0x3
	.byte	0x46
	.uaword	0x2f9
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x3
	.byte	0x48
	.uaword	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"u8Extn"
	.byte	0x3
	.byte	0x49
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"CCP_tstrMta"
	.byte	0x3
	.byte	0x4b
	.uaword	0x2d1
	.uleb128 0x4
	.byte	0x2
	.byte	0x3
	.byte	0x4d
	.uaword	0x33c
	.uleb128 0x6
	.string	"u8NoOdt"
	.byte	0x3
	.byte	0x4f
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"u8FirstPid"
	.byte	0x3
	.byte	0x50
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x3
	.string	"CCP_tstrDaqListStatCfg"
	.byte	0x3
	.byte	0x53
	.uaword	0x30c
	.uleb128 0x4
	.byte	0xe
	.byte	0x3
	.byte	0x57
	.uaword	0x435
	.uleb128 0x6
	.string	"vbStopTx"
	.byte	0x3
	.byte	0x59
	.uaword	0x264
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"bLstOdtProcd"
	.byte	0x3
	.byte	0x5a
	.uaword	0x264
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x6
	.string	"vu8TxSt"
	.byte	0x3
	.byte	0x5b
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x5
	.uaword	.LASF1
	.byte	0x3
	.byte	0x5d
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x6
	.string	"vbEvtSet"
	.byte	0x3
	.byte	0x5f
	.uaword	0x264
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.uaword	.LASF2
	.byte	0x3
	.byte	0x60
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x6
	.string	"vu8CfgChgdCtr"
	.byte	0x3
	.byte	0x62
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x6
	.string	"u8CfgChgdAckdCtr"
	.byte	0x3
	.byte	0x65
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0x6
	.string	"vu8Mod"
	.byte	0x3
	.byte	0x67
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"u16Ctr"
	.byte	0x3
	.byte	0x69
	.uaword	0x1dd
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x6
	.string	"u16Pslr"
	.byte	0x3
	.byte	0x6a
	.uaword	0x1dd
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x3
	.string	"CCP_tstrDaqListDynCfg"
	.byte	0x3
	.byte	0x6c
	.uaword	0x35a
	.uleb128 0x4
	.byte	0x4
	.byte	0x3
	.byte	0x6f
	.uaword	0x485
	.uleb128 0x5
	.uaword	.LASF3
	.byte	0x3
	.byte	0x71
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.uaword	.LASF4
	.byte	0x3
	.byte	0x73
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x5
	.uaword	.LASF5
	.byte	0x3
	.byte	0x75
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x3
	.string	"CCP_tstrDaqListSeldElm"
	.byte	0x3
	.byte	0x79
	.uaword	0x452
	.uleb128 0x4
	.byte	0x8
	.byte	0x4
	.byte	0x38
	.uaword	0x4e4
	.uleb128 0x5
	.uaword	.LASF6
	.byte	0x4
	.byte	0x3a
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.uaword	.LASF7
	.byte	0x4
	.byte	0x3b
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x5
	.uaword	.LASF8
	.byte	0x4
	.byte	0x3d
	.uaword	0x1dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x5
	.uaword	.LASF9
	.byte	0x4
	.byte	0x3e
	.uaword	0x4e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x7
	.uaword	0x1b2
	.uaword	0x4f4
	.uleb128 0x8
	.uaword	0x4f4
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x3
	.string	"CCP_tstrCmdCnct"
	.byte	0x4
	.byte	0x40
	.uaword	0x4a3
	.uleb128 0x4
	.byte	0x8
	.byte	0x4
	.byte	0x42
	.uaword	0x558
	.uleb128 0x5
	.uaword	.LASF10
	.byte	0x4
	.byte	0x44
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.uaword	.LASF6
	.byte	0x4
	.byte	0x45
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x5
	.uaword	.LASF7
	.byte	0x4
	.byte	0x46
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x5
	.uaword	.LASF9
	.byte	0x4
	.byte	0x47
	.uaword	0x558
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0x7
	.uaword	0x1b2
	.uaword	0x568
	.uleb128 0x8
	.uaword	0x4f4
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"CCP_tstrAckCnct"
	.byte	0x4
	.byte	0x49
	.uaword	0x517
	.uleb128 0x4
	.byte	0x8
	.byte	0x4
	.byte	0x4c
	.uaword	0x5b2
	.uleb128 0x5
	.uaword	.LASF6
	.byte	0x4
	.byte	0x4e
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.uaword	.LASF7
	.byte	0x4
	.byte	0x4f
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x5
	.uaword	.LASF11
	.byte	0x4
	.byte	0x50
	.uaword	0x5b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x7
	.uaword	0x1b2
	.uaword	0x5c2
	.uleb128 0x8
	.uaword	0x4f4
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.string	"CCP_tstrCmdExchId"
	.byte	0x4
	.byte	0x52
	.uaword	0x57f
	.uleb128 0x4
	.byte	0x8
	.byte	0x4
	.byte	0x54
	.uaword	0x66b
	.uleb128 0x5
	.uaword	.LASF10
	.byte	0x4
	.byte	0x56
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.uaword	.LASF6
	.byte	0x4
	.byte	0x57
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x5
	.uaword	.LASF7
	.byte	0x4
	.byte	0x58
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x6
	.string	"u8Len"
	.byte	0x4
	.byte	0x59
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x5
	.uaword	.LASF12
	.byte	0x4
	.byte	0x5a
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"u8ResAvlyMask"
	.byte	0x4
	.byte	0x5b
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x6
	.string	"u8ResProtnMask"
	.byte	0x4
	.byte	0x5c
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x5
	.uaword	.LASF13
	.byte	0x4
	.byte	0x5d
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.byte	0
	.uleb128 0x3
	.string	"CCP_tstrAckExchId"
	.byte	0x4
	.byte	0x5f
	.uaword	0x5db
	.uleb128 0x4
	.byte	0x8
	.byte	0x4
	.byte	0x62
	.uaword	0x6cf
	.uleb128 0x5
	.uaword	.LASF6
	.byte	0x4
	.byte	0x64
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.uaword	.LASF7
	.byte	0x4
	.byte	0x65
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x6
	.string	"u8ReqSlaveRes"
	.byte	0x4
	.byte	0x66
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x5
	.uaword	.LASF9
	.byte	0x4
	.byte	0x67
	.uaword	0x558
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0x3
	.string	"CCP_tstrCmdGetSeed"
	.byte	0x4
	.byte	0x69
	.uaword	0x684
	.uleb128 0x4
	.byte	0x8
	.byte	0x4
	.byte	0x6b
	.uaword	0x742
	.uleb128 0x5
	.uaword	.LASF10
	.byte	0x4
	.byte	0x6d
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.uaword	.LASF6
	.byte	0x4
	.byte	0x6e
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x5
	.uaword	.LASF7
	.byte	0x4
	.byte	0x6f
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x6
	.string	"u8ProtnSts"
	.byte	0x4
	.byte	0x70
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x6
	.string	"au8Key"
	.byte	0x4
	.byte	0x71
	.uaword	0x4e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"CCP_tstrAckGetSeed"
	.byte	0x4
	.byte	0x73
	.uaword	0x6e9
	.uleb128 0x4
	.byte	0x8
	.byte	0x4
	.byte	0x76
	.uaword	0x792
	.uleb128 0x5
	.uaword	.LASF6
	.byte	0x4
	.byte	0x78
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.uaword	.LASF7
	.byte	0x4
	.byte	0x79
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x6
	.string	"au8Key"
	.byte	0x4
	.byte	0x7a
	.uaword	0x5b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x3
	.string	"CCP_tstrCmdUnlck"
	.byte	0x4
	.byte	0x7c
	.uaword	0x75c
	.uleb128 0x4
	.byte	0x8
	.byte	0x4
	.byte	0x7e
	.uaword	0x802
	.uleb128 0x5
	.uaword	.LASF10
	.byte	0x4
	.byte	0x80
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.uaword	.LASF6
	.byte	0x4
	.byte	0x81
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x5
	.uaword	.LASF7
	.byte	0x4
	.byte	0x82
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x6
	.string	"u8CurPvlgSts"
	.byte	0x4
	.byte	0x83
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x5
	.uaword	.LASF9
	.byte	0x4
	.byte	0x84
	.uaword	0x4e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"CCP_tstrAckUnlck"
	.byte	0x4
	.byte	0x86
	.uaword	0x7aa
	.uleb128 0x4
	.byte	0x8
	.byte	0x4
	.byte	0x89
	.uaword	0x86e
	.uleb128 0x5
	.uaword	.LASF6
	.byte	0x4
	.byte	0x8b
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.uaword	.LASF7
	.byte	0x4
	.byte	0x8c
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x6
	.string	"u8MtaIdx"
	.byte	0x4
	.byte	0x8d
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x5
	.uaword	.LASF14
	.byte	0x4
	.byte	0x8e
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x4
	.byte	0x8f
	.uaword	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"CCP_tstrCmdSetMta"
	.byte	0x4
	.byte	0x91
	.uaword	0x81a
	.uleb128 0x4
	.byte	0x8
	.byte	0x4
	.byte	0x93
	.uaword	0x8c8
	.uleb128 0x5
	.uaword	.LASF10
	.byte	0x4
	.byte	0x95
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.uaword	.LASF6
	.byte	0x4
	.byte	0x96
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x5
	.uaword	.LASF7
	.byte	0x4
	.byte	0x97
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x5
	.uaword	.LASF9
	.byte	0x4
	.byte	0x98
	.uaword	0x558
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0x3
	.string	"CCP_tstrAckSetMta"
	.byte	0x4
	.byte	0x9a
	.uaword	0x887
	.uleb128 0x4
	.byte	0x8
	.byte	0x4
	.byte	0x9d
	.uaword	0x922
	.uleb128 0x5
	.uaword	.LASF6
	.byte	0x4
	.byte	0x9f
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.uaword	.LASF7
	.byte	0x4
	.byte	0xa0
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x5
	.uaword	.LASF15
	.byte	0x4
	.byte	0xa1
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x5
	.uaword	.LASF16
	.byte	0x4
	.byte	0xa2
	.uaword	0x558
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0x3
	.string	"CCP_tstrCmdDnld"
	.byte	0x4
	.byte	0xa4
	.uaword	0x8e1
	.uleb128 0x4
	.byte	0x8
	.byte	0x4
	.byte	0xa6
	.uaword	0x988
	.uleb128 0x5
	.uaword	.LASF10
	.byte	0x4
	.byte	0xa8
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.uaword	.LASF6
	.byte	0x4
	.byte	0xa9
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x5
	.uaword	.LASF7
	.byte	0x4
	.byte	0xaa
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x5
	.uaword	.LASF14
	.byte	0x4
	.byte	0xab
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x4
	.byte	0xac
	.uaword	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"CCP_tstrAckDnld"
	.byte	0x4
	.byte	0xae
	.uaword	0x939
	.uleb128 0x4
	.byte	0x8
	.byte	0x4
	.byte	0xb1
	.uaword	0x9d2
	.uleb128 0x5
	.uaword	.LASF6
	.byte	0x4
	.byte	0xb3
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.uaword	.LASF7
	.byte	0x4
	.byte	0xb4
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x5
	.uaword	.LASF16
	.byte	0x4
	.byte	0xb5
	.uaword	0x5b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x3
	.string	"CCP_tstrCmdDnld6"
	.byte	0x4
	.byte	0xb7
	.uaword	0x99f
	.uleb128 0x4
	.byte	0x8
	.byte	0x4
	.byte	0xb9
	.uaword	0xa39
	.uleb128 0x5
	.uaword	.LASF10
	.byte	0x4
	.byte	0xbb
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.uaword	.LASF6
	.byte	0x4
	.byte	0xbc
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x5
	.uaword	.LASF7
	.byte	0x4
	.byte	0xbd
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x5
	.uaword	.LASF14
	.byte	0x4
	.byte	0xbe
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x4
	.byte	0xbf
	.uaword	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"CCP_tstrAckDnld6"
	.byte	0x4
	.byte	0xc1
	.uaword	0x9ea
	.uleb128 0x4
	.byte	0x8
	.byte	0x4
	.byte	0xc4
	.uaword	0xa92
	.uleb128 0x5
	.uaword	.LASF6
	.byte	0x4
	.byte	0xc6
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.uaword	.LASF7
	.byte	0x4
	.byte	0xc7
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x5
	.uaword	.LASF15
	.byte	0x4
	.byte	0xc8
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x5
	.uaword	.LASF9
	.byte	0x4
	.byte	0xc9
	.uaword	0x558
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0x3
	.string	"CCP_tstrCmdUpld"
	.byte	0x4
	.byte	0xcb
	.uaword	0xa51
	.uleb128 0x4
	.byte	0x8
	.byte	0x4
	.byte	0xcd
	.uaword	0xaea
	.uleb128 0x5
	.uaword	.LASF10
	.byte	0x4
	.byte	0xcf
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.uaword	.LASF6
	.byte	0x4
	.byte	0xd0
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x5
	.uaword	.LASF7
	.byte	0x4
	.byte	0xd1
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x5
	.uaword	.LASF16
	.byte	0x4
	.byte	0xd2
	.uaword	0x558
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0x3
	.string	"CCP_tstrAckUpld"
	.byte	0x4
	.byte	0xd4
	.uaword	0xaa9
	.uleb128 0x4
	.byte	0x8
	.byte	0x4
	.byte	0xd7
	.uaword	0xb50
	.uleb128 0x5
	.uaword	.LASF6
	.byte	0x4
	.byte	0xd9
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.uaword	.LASF7
	.byte	0x4
	.byte	0xda
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x5
	.uaword	.LASF15
	.byte	0x4
	.byte	0xdb
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x5
	.uaword	.LASF14
	.byte	0x4
	.byte	0xdc
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x4
	.byte	0xdd
	.uaword	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"CCP_tstrCmdShoUpld"
	.byte	0x4
	.byte	0xdf
	.uaword	0xb01
	.uleb128 0x4
	.byte	0x8
	.byte	0x4
	.byte	0xe1
	.uaword	0xbab
	.uleb128 0x5
	.uaword	.LASF10
	.byte	0x4
	.byte	0xe3
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.uaword	.LASF6
	.byte	0x4
	.byte	0xe4
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x5
	.uaword	.LASF7
	.byte	0x4
	.byte	0xe5
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x5
	.uaword	.LASF16
	.byte	0x4
	.byte	0xe6
	.uaword	0x558
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0x3
	.string	"CCP_tstrAckShoUpld"
	.byte	0x4
	.byte	0xe8
	.uaword	0xb6a
	.uleb128 0x4
	.byte	0x8
	.byte	0x4
	.byte	0xeb
	.uaword	0xbf8
	.uleb128 0x5
	.uaword	.LASF6
	.byte	0x4
	.byte	0xed
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.uaword	.LASF7
	.byte	0x4
	.byte	0xee
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x5
	.uaword	.LASF9
	.byte	0x4
	.byte	0xef
	.uaword	0x5b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x3
	.string	"CCP_tstrCmdSelCalPage"
	.byte	0x4
	.byte	0xf1
	.uaword	0xbc5
	.uleb128 0x4
	.byte	0x8
	.byte	0x4
	.byte	0xf3
	.uaword	0xc56
	.uleb128 0x5
	.uaword	.LASF10
	.byte	0x4
	.byte	0xf5
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.uaword	.LASF6
	.byte	0x4
	.byte	0xf6
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x5
	.uaword	.LASF7
	.byte	0x4
	.byte	0xf7
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x5
	.uaword	.LASF9
	.byte	0x4
	.byte	0xf8
	.uaword	0x558
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0x3
	.string	"CCP_tstrAckSelCalPage"
	.byte	0x4
	.byte	0xfa
	.uaword	0xc15
	.uleb128 0x4
	.byte	0x8
	.byte	0x4
	.byte	0xfd
	.uaword	0xccb
	.uleb128 0x5
	.uaword	.LASF6
	.byte	0x4
	.byte	0xff
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF7
	.byte	0x4
	.uahalf	0x100
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x9
	.uaword	.LASF3
	.byte	0x4
	.uahalf	0x101
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x9
	.uaword	.LASF13
	.byte	0x4
	.uahalf	0x102
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xa
	.string	"u32CanId"
	.byte	0x4
	.uahalf	0x103
	.uaword	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xb
	.string	"CCP_tstrCmdGetDaqSize"
	.byte	0x4
	.uahalf	0x105
	.uaword	0xc73
	.uleb128 0xc
	.byte	0x8
	.byte	0x4
	.uahalf	0x107
	.uaword	0xd5d
	.uleb128 0x9
	.uaword	.LASF10
	.byte	0x4
	.uahalf	0x109
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF6
	.byte	0x4
	.uahalf	0x10a
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x9
	.uaword	.LASF7
	.byte	0x4
	.uahalf	0x10b
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.string	"u8NoOdt"
	.byte	0x4
	.uahalf	0x10c
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xa
	.string	"u8FirstPidOfDaq"
	.byte	0x4
	.uahalf	0x10d
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.uaword	.LASF9
	.byte	0x4
	.uahalf	0x10e
	.uaword	0xd5d
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x7
	.uaword	0x1b2
	.uaword	0xd6d
	.uleb128 0x8
	.uaword	0x4f4
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.string	"CCP_tstrAckGetDaqSize"
	.byte	0x4
	.uahalf	0x110
	.uaword	0xce9
	.uleb128 0xc
	.byte	0x8
	.byte	0x4
	.uahalf	0x113
	.uaword	0xdef
	.uleb128 0x9
	.uaword	.LASF6
	.byte	0x4
	.uahalf	0x115
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF7
	.byte	0x4
	.uahalf	0x116
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x9
	.uaword	.LASF3
	.byte	0x4
	.uahalf	0x117
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x9
	.uaword	.LASF4
	.byte	0x4
	.uahalf	0x118
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x9
	.uaword	.LASF5
	.byte	0x4
	.uahalf	0x119
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.uaword	.LASF9
	.byte	0x4
	.uahalf	0x11a
	.uaword	0xd5d
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0xb
	.string	"CCP_tstrCmdSetDaqPtr"
	.byte	0x4
	.uahalf	0x11c
	.uaword	0xd8b
	.uleb128 0xc
	.byte	0x8
	.byte	0x4
	.uahalf	0x11e
	.uaword	0xe52
	.uleb128 0x9
	.uaword	.LASF10
	.byte	0x4
	.uahalf	0x120
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF6
	.byte	0x4
	.uahalf	0x121
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x9
	.uaword	.LASF7
	.byte	0x4
	.uahalf	0x122
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x9
	.uaword	.LASF9
	.byte	0x4
	.uahalf	0x123
	.uaword	0x558
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0xb
	.string	"CCP_tstrAckSetDaqPtr"
	.byte	0x4
	.uahalf	0x125
	.uaword	0xe0c
	.uleb128 0xc
	.byte	0x8
	.byte	0x4
	.uahalf	0x128
	.uaword	0xec7
	.uleb128 0x9
	.uaword	.LASF6
	.byte	0x4
	.uahalf	0x12a
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF7
	.byte	0x4
	.uahalf	0x12b
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.string	"u8Size"
	.byte	0x4
	.uahalf	0x12c
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x9
	.uaword	.LASF14
	.byte	0x4
	.uahalf	0x12d
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x4
	.uahalf	0x12e
	.uaword	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xb
	.string	"CCP_tstrCmdWrDaq"
	.byte	0x4
	.uahalf	0x130
	.uaword	0xe6f
	.uleb128 0xc
	.byte	0x8
	.byte	0x4
	.uahalf	0x132
	.uaword	0xf26
	.uleb128 0x9
	.uaword	.LASF10
	.byte	0x4
	.uahalf	0x134
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF6
	.byte	0x4
	.uahalf	0x135
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x9
	.uaword	.LASF7
	.byte	0x4
	.uahalf	0x136
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x9
	.uaword	.LASF9
	.byte	0x4
	.uahalf	0x137
	.uaword	0x558
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0xb
	.string	"CCP_tstrAckWrDaq"
	.byte	0x4
	.uahalf	0x139
	.uaword	0xee0
	.uleb128 0xc
	.byte	0x8
	.byte	0x4
	.uahalf	0x13c
	.uaword	0xfb6
	.uleb128 0x9
	.uaword	.LASF6
	.byte	0x4
	.uahalf	0x13e
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF7
	.byte	0x4
	.uahalf	0x13f
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x9
	.uaword	.LASF17
	.byte	0x4
	.uahalf	0x140
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x9
	.uaword	.LASF3
	.byte	0x4
	.uahalf	0x141
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x4
	.uahalf	0x142
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.uaword	.LASF2
	.byte	0x4
	.uahalf	0x143
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0xa
	.string	"u16Pslr"
	.byte	0x4
	.uahalf	0x144
	.uaword	0x1dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0
	.uleb128 0xb
	.string	"CCP_tstrCmdStrtStop"
	.byte	0x4
	.uahalf	0x146
	.uaword	0xf3f
	.uleb128 0xc
	.byte	0x8
	.byte	0x4
	.uahalf	0x148
	.uaword	0x1018
	.uleb128 0x9
	.uaword	.LASF10
	.byte	0x4
	.uahalf	0x14a
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF6
	.byte	0x4
	.uahalf	0x14b
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x9
	.uaword	.LASF7
	.byte	0x4
	.uahalf	0x14c
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x9
	.uaword	.LASF9
	.byte	0x4
	.uahalf	0x14d
	.uaword	0x558
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0xb
	.string	"CCP_tstrAckStrtStop"
	.byte	0x4
	.uahalf	0x14f
	.uaword	0xfd2
	.uleb128 0xc
	.byte	0x8
	.byte	0x4
	.uahalf	0x152
	.uaword	0x10a0
	.uleb128 0x9
	.uaword	.LASF6
	.byte	0x4
	.uahalf	0x154
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF7
	.byte	0x4
	.uahalf	0x155
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x9
	.uaword	.LASF17
	.byte	0x4
	.uahalf	0x156
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x9
	.uaword	.LASF13
	.byte	0x4
	.uahalf	0x157
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x9
	.uaword	.LASF8
	.byte	0x4
	.uahalf	0x159
	.uaword	0x1dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.string	"au8NotUsed2"
	.byte	0x4
	.uahalf	0x15a
	.uaword	0x10a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0
	.uleb128 0x7
	.uaword	0x1b2
	.uaword	0x10b0
	.uleb128 0x8
	.uaword	0x4f4
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.string	"CCP_tstrCmdDcnct"
	.byte	0x4
	.uahalf	0x15c
	.uaword	0x1034
	.uleb128 0xc
	.byte	0x8
	.byte	0x4
	.uahalf	0x15e
	.uaword	0x110f
	.uleb128 0x9
	.uaword	.LASF10
	.byte	0x4
	.uahalf	0x160
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF6
	.byte	0x4
	.uahalf	0x161
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x9
	.uaword	.LASF7
	.byte	0x4
	.uahalf	0x162
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x9
	.uaword	.LASF9
	.byte	0x4
	.uahalf	0x163
	.uaword	0x558
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0xb
	.string	"CCP_tstrAckDcnct"
	.byte	0x4
	.uahalf	0x165
	.uaword	0x10c9
	.uleb128 0xc
	.byte	0x8
	.byte	0x4
	.uahalf	0x168
	.uaword	0x116e
	.uleb128 0x9
	.uaword	.LASF6
	.byte	0x4
	.uahalf	0x16a
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF7
	.byte	0x4
	.uahalf	0x16b
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x9
	.uaword	.LASF18
	.byte	0x4
	.uahalf	0x16c
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x9
	.uaword	.LASF9
	.byte	0x4
	.uahalf	0x16d
	.uaword	0x558
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0xb
	.string	"CCP_tstrCmdSetSsnSts"
	.byte	0x4
	.uahalf	0x16f
	.uaword	0x1128
	.uleb128 0xc
	.byte	0x8
	.byte	0x4
	.uahalf	0x171
	.uaword	0x11d1
	.uleb128 0x9
	.uaword	.LASF10
	.byte	0x4
	.uahalf	0x173
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF6
	.byte	0x4
	.uahalf	0x174
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x9
	.uaword	.LASF7
	.byte	0x4
	.uahalf	0x175
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x9
	.uaword	.LASF9
	.byte	0x4
	.uahalf	0x176
	.uaword	0x558
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0xb
	.string	"CCP_tstrAckSetSsnSts"
	.byte	0x4
	.uahalf	0x178
	.uaword	0x118b
	.uleb128 0xc
	.byte	0x8
	.byte	0x4
	.uahalf	0x17b
	.uaword	0x1225
	.uleb128 0x9
	.uaword	.LASF6
	.byte	0x4
	.uahalf	0x17d
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF7
	.byte	0x4
	.uahalf	0x17e
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x9
	.uaword	.LASF9
	.byte	0x4
	.uahalf	0x17f
	.uaword	0x5b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0xb
	.string	"CCP_tstrCmdGetSsnSts"
	.byte	0x4
	.uahalf	0x181
	.uaword	0x11ee
	.uleb128 0xc
	.byte	0x8
	.byte	0x4
	.uahalf	0x183
	.uaword	0x12bf
	.uleb128 0x9
	.uaword	.LASF10
	.byte	0x4
	.uahalf	0x185
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF6
	.byte	0x4
	.uahalf	0x186
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x9
	.uaword	.LASF7
	.byte	0x4
	.uahalf	0x187
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x9
	.uaword	.LASF18
	.byte	0x4
	.uahalf	0x188
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xa
	.string	"u8AddlStsInfoQlfr"
	.byte	0x4
	.uahalf	0x189
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.string	"au8AddlStsInfo"
	.byte	0x4
	.uahalf	0x18a
	.uaword	0xd5d
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0xb
	.string	"CCP_tstrAckGetSsnSts"
	.byte	0x4
	.uahalf	0x18c
	.uaword	0x1242
	.uleb128 0xc
	.byte	0x8
	.byte	0x4
	.uahalf	0x18f
	.uaword	0x1331
	.uleb128 0x9
	.uaword	.LASF6
	.byte	0x4
	.uahalf	0x191
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF7
	.byte	0x4
	.uahalf	0x192
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x9
	.uaword	.LASF19
	.byte	0x4
	.uahalf	0x197
	.uaword	0x1dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x9
	.uaword	.LASF20
	.byte	0x4
	.uahalf	0x198
	.uaword	0x1dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.uaword	.LASF9
	.byte	0x4
	.uahalf	0x19a
	.uaword	0x10a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0
	.uleb128 0xb
	.string	"CCP_tstrCmdBldCks"
	.byte	0x4
	.uahalf	0x19c
	.uaword	0x12dc
	.uleb128 0xc
	.byte	0x8
	.byte	0x4
	.uahalf	0x19e
	.uaword	0x13b1
	.uleb128 0x9
	.uaword	.LASF10
	.byte	0x4
	.uahalf	0x1a0
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF6
	.byte	0x4
	.uahalf	0x1a1
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x9
	.uaword	.LASF7
	.byte	0x4
	.uahalf	0x1a2
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.string	"u8CksDataSize"
	.byte	0x4
	.uahalf	0x1a3
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xa
	.string	"au8CksData"
	.byte	0x4
	.uahalf	0x1a4
	.uaword	0x4e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xb
	.string	"CCP_tstrAckBldCks"
	.byte	0x4
	.uahalf	0x1a6
	.uaword	0x134b
	.uleb128 0xc
	.byte	0x8
	.byte	0x4
	.uahalf	0x1a9
	.uaword	0x1420
	.uleb128 0x9
	.uaword	.LASF6
	.byte	0x4
	.uahalf	0x1ab
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF7
	.byte	0x4
	.uahalf	0x1ac
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x9
	.uaword	.LASF19
	.byte	0x4
	.uahalf	0x1b1
	.uaword	0x1dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x9
	.uaword	.LASF20
	.byte	0x4
	.uahalf	0x1b2
	.uaword	0x1dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.uaword	.LASF9
	.byte	0x4
	.uahalf	0x1b4
	.uaword	0x10a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0
	.uleb128 0xb
	.string	"CCP_tstrCmdClrMem"
	.byte	0x4
	.uahalf	0x1b6
	.uaword	0x13cb
	.uleb128 0xc
	.byte	0x8
	.byte	0x4
	.uahalf	0x1b8
	.uaword	0x1480
	.uleb128 0x9
	.uaword	.LASF10
	.byte	0x4
	.uahalf	0x1ba
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF6
	.byte	0x4
	.uahalf	0x1bb
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x9
	.uaword	.LASF7
	.byte	0x4
	.uahalf	0x1bc
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x9
	.uaword	.LASF9
	.byte	0x4
	.uahalf	0x1bd
	.uaword	0x558
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0xb
	.string	"CCP_tstrAckClrMem"
	.byte	0x4
	.uahalf	0x1bf
	.uaword	0x143a
	.uleb128 0xc
	.byte	0x8
	.byte	0x4
	.uahalf	0x1c2
	.uaword	0x14e0
	.uleb128 0x9
	.uaword	.LASF6
	.byte	0x4
	.uahalf	0x1c4
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF7
	.byte	0x4
	.uahalf	0x1c5
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x9
	.uaword	.LASF15
	.byte	0x4
	.uahalf	0x1c6
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x9
	.uaword	.LASF16
	.byte	0x4
	.uahalf	0x1c7
	.uaword	0x558
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0xb
	.string	"CCP_tstrCmdProg"
	.byte	0x4
	.uahalf	0x1c9
	.uaword	0x149a
	.uleb128 0xc
	.byte	0x8
	.byte	0x4
	.uahalf	0x1cb
	.uaword	0x154d
	.uleb128 0x9
	.uaword	.LASF10
	.byte	0x4
	.uahalf	0x1cd
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF6
	.byte	0x4
	.uahalf	0x1ce
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x9
	.uaword	.LASF7
	.byte	0x4
	.uahalf	0x1cf
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x9
	.uaword	.LASF14
	.byte	0x4
	.uahalf	0x1d0
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x4
	.uahalf	0x1d1
	.uaword	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xb
	.string	"CCP_tstrAckProg"
	.byte	0x4
	.uahalf	0x1d3
	.uaword	0x14f8
	.uleb128 0xc
	.byte	0x8
	.byte	0x4
	.uahalf	0x1d6
	.uaword	0x159c
	.uleb128 0x9
	.uaword	.LASF6
	.byte	0x4
	.uahalf	0x1d8
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF7
	.byte	0x4
	.uahalf	0x1d9
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x9
	.uaword	.LASF16
	.byte	0x4
	.uahalf	0x1da
	.uaword	0x5b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0xb
	.string	"CCP_tstrCmdProg6"
	.byte	0x4
	.uahalf	0x1dc
	.uaword	0x1565
	.uleb128 0xc
	.byte	0x8
	.byte	0x4
	.uahalf	0x1de
	.uaword	0x160a
	.uleb128 0x9
	.uaword	.LASF10
	.byte	0x4
	.uahalf	0x1e0
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF6
	.byte	0x4
	.uahalf	0x1e1
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x9
	.uaword	.LASF7
	.byte	0x4
	.uahalf	0x1e2
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x9
	.uaword	.LASF14
	.byte	0x4
	.uahalf	0x1e3
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x4
	.uahalf	0x1e4
	.uaword	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xb
	.string	"CCP_tstrAckProg6"
	.byte	0x4
	.uahalf	0x1e6
	.uaword	0x15b5
	.uleb128 0xc
	.byte	0x8
	.byte	0x4
	.uahalf	0x1e9
	.uaword	0x1678
	.uleb128 0x9
	.uaword	.LASF6
	.byte	0x4
	.uahalf	0x1eb
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF7
	.byte	0x4
	.uahalf	0x1ec
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x9
	.uaword	.LASF19
	.byte	0x4
	.uahalf	0x1f1
	.uaword	0x1dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x9
	.uaword	.LASF20
	.byte	0x4
	.uahalf	0x1f2
	.uaword	0x1dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.uaword	.LASF9
	.byte	0x4
	.uahalf	0x1f4
	.uaword	0x10a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0
	.uleb128 0xb
	.string	"CCP_tstrCmdMove"
	.byte	0x4
	.uahalf	0x1f6
	.uaword	0x1623
	.uleb128 0xc
	.byte	0x8
	.byte	0x4
	.uahalf	0x1f8
	.uaword	0x16d6
	.uleb128 0x9
	.uaword	.LASF10
	.byte	0x4
	.uahalf	0x1fa
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF6
	.byte	0x4
	.uahalf	0x1fb
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x9
	.uaword	.LASF7
	.byte	0x4
	.uahalf	0x1fc
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x9
	.uaword	.LASF9
	.byte	0x4
	.uahalf	0x1fd
	.uaword	0x558
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0xb
	.string	"CCP_tstrAckMove"
	.byte	0x4
	.uahalf	0x1ff
	.uaword	0x1690
	.uleb128 0xc
	.byte	0x8
	.byte	0x4
	.uahalf	0x202
	.uaword	0x173f
	.uleb128 0x9
	.uaword	.LASF6
	.byte	0x4
	.uahalf	0x204
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF7
	.byte	0x4
	.uahalf	0x205
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.string	"u16DiagcSrvIdx"
	.byte	0x4
	.uahalf	0x206
	.uaword	0x1dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x9
	.uaword	.LASF11
	.byte	0x4
	.uahalf	0x207
	.uaword	0x4e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xb
	.string	"CCP_tstrCmdDiagcSrv"
	.byte	0x4
	.uahalf	0x209
	.uaword	0x16ee
	.uleb128 0xc
	.byte	0x8
	.byte	0x4
	.uahalf	0x20b
	.uaword	0x17c1
	.uleb128 0x9
	.uaword	.LASF10
	.byte	0x4
	.uahalf	0x20d
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF6
	.byte	0x4
	.uahalf	0x20e
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x9
	.uaword	.LASF7
	.byte	0x4
	.uahalf	0x20f
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.string	"u8Len"
	.byte	0x4
	.uahalf	0x210
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x9
	.uaword	.LASF12
	.byte	0x4
	.uahalf	0x211
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.uaword	.LASF9
	.byte	0x4
	.uahalf	0x212
	.uaword	0xd5d
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0xb
	.string	"CCP_tstrAckDiagcSrv"
	.byte	0x4
	.uahalf	0x214
	.uaword	0x175b
	.uleb128 0xc
	.byte	0x8
	.byte	0x4
	.uahalf	0x217
	.uaword	0x182d
	.uleb128 0x9
	.uaword	.LASF6
	.byte	0x4
	.uahalf	0x219
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF7
	.byte	0x4
	.uahalf	0x21a
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.string	"u16ActnSrvIdx"
	.byte	0x4
	.uahalf	0x21b
	.uaword	0x1dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x9
	.uaword	.LASF11
	.byte	0x4
	.uahalf	0x21c
	.uaword	0x4e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xb
	.string	"CCP_tstrCmdActnSrv"
	.byte	0x4
	.uahalf	0x21e
	.uaword	0x17dd
	.uleb128 0xc
	.byte	0x8
	.byte	0x4
	.uahalf	0x220
	.uaword	0x18ae
	.uleb128 0x9
	.uaword	.LASF10
	.byte	0x4
	.uahalf	0x222
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF6
	.byte	0x4
	.uahalf	0x223
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x9
	.uaword	.LASF7
	.byte	0x4
	.uahalf	0x224
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.string	"u8Len"
	.byte	0x4
	.uahalf	0x225
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x9
	.uaword	.LASF12
	.byte	0x4
	.uahalf	0x226
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.uaword	.LASF9
	.byte	0x4
	.uahalf	0x227
	.uaword	0xd5d
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0xb
	.string	"CCP_tstrAckActnSrv"
	.byte	0x4
	.uahalf	0x229
	.uaword	0x1848
	.uleb128 0xc
	.byte	0x8
	.byte	0x4
	.uahalf	0x22c
	.uaword	0x190f
	.uleb128 0x9
	.uaword	.LASF6
	.byte	0x4
	.uahalf	0x22e
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF7
	.byte	0x4
	.uahalf	0x22f
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x9
	.uaword	.LASF8
	.byte	0x4
	.uahalf	0x231
	.uaword	0x1dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x9
	.uaword	.LASF9
	.byte	0x4
	.uahalf	0x232
	.uaword	0x4e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xb
	.string	"CCP_tstrCmdTest"
	.byte	0x4
	.uahalf	0x234
	.uaword	0x18c9
	.uleb128 0xc
	.byte	0x8
	.byte	0x4
	.uahalf	0x236
	.uaword	0x196d
	.uleb128 0x9
	.uaword	.LASF10
	.byte	0x4
	.uahalf	0x238
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF6
	.byte	0x4
	.uahalf	0x239
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x9
	.uaword	.LASF7
	.byte	0x4
	.uahalf	0x23a
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x9
	.uaword	.LASF9
	.byte	0x4
	.uahalf	0x23b
	.uaword	0x558
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0xb
	.string	"CCP_tstrAckTest"
	.byte	0x4
	.uahalf	0x23d
	.uaword	0x1927
	.uleb128 0xc
	.byte	0x8
	.byte	0x4
	.uahalf	0x240
	.uaword	0x19cb
	.uleb128 0x9
	.uaword	.LASF6
	.byte	0x4
	.uahalf	0x242
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF7
	.byte	0x4
	.uahalf	0x243
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x9
	.uaword	.LASF17
	.byte	0x4
	.uahalf	0x244
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x9
	.uaword	.LASF9
	.byte	0x4
	.uahalf	0x245
	.uaword	0x558
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0xb
	.string	"CCP_tstrCmdStrtStopAll"
	.byte	0x4
	.uahalf	0x247
	.uaword	0x1985
	.uleb128 0xc
	.byte	0x8
	.byte	0x4
	.uahalf	0x249
	.uaword	0x1a30
	.uleb128 0x9
	.uaword	.LASF10
	.byte	0x4
	.uahalf	0x24b
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF6
	.byte	0x4
	.uahalf	0x24c
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x9
	.uaword	.LASF7
	.byte	0x4
	.uahalf	0x24d
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x9
	.uaword	.LASF9
	.byte	0x4
	.uahalf	0x24e
	.uaword	0x558
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0xb
	.string	"CCP_tstrAckStrtStopAll"
	.byte	0x4
	.uahalf	0x250
	.uaword	0x19ea
	.uleb128 0xc
	.byte	0x8
	.byte	0x4
	.uahalf	0x253
	.uaword	0x1a86
	.uleb128 0x9
	.uaword	.LASF6
	.byte	0x4
	.uahalf	0x255
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF7
	.byte	0x4
	.uahalf	0x256
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x9
	.uaword	.LASF9
	.byte	0x4
	.uahalf	0x257
	.uaword	0x5b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0xb
	.string	"CCP_tstrCmdGetAcvCalPage"
	.byte	0x4
	.uahalf	0x259
	.uaword	0x1a4f
	.uleb128 0xc
	.byte	0x8
	.byte	0x4
	.uahalf	0x25b
	.uaword	0x1afc
	.uleb128 0x9
	.uaword	.LASF10
	.byte	0x4
	.uahalf	0x25d
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF6
	.byte	0x4
	.uahalf	0x25e
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x9
	.uaword	.LASF7
	.byte	0x4
	.uahalf	0x25f
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x9
	.uaword	.LASF14
	.byte	0x4
	.uahalf	0x260
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x4
	.uahalf	0x261
	.uaword	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xb
	.string	"CCP_tstrAckGetAcvCalPage"
	.byte	0x4
	.uahalf	0x263
	.uaword	0x1aa7
	.uleb128 0xc
	.byte	0x8
	.byte	0x4
	.uahalf	0x266
	.uaword	0x1b72
	.uleb128 0x9
	.uaword	.LASF6
	.byte	0x4
	.uahalf	0x268
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF7
	.byte	0x4
	.uahalf	0x269
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x9
	.uaword	.LASF21
	.byte	0x4
	.uahalf	0x26a
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x9
	.uaword	.LASF22
	.byte	0x4
	.uahalf	0x26b
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x9
	.uaword	.LASF9
	.byte	0x4
	.uahalf	0x26c
	.uaword	0x4e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xb
	.string	"CCP_tstrCmdGetCcpVers"
	.byte	0x4
	.uahalf	0x26e
	.uaword	0x1b1d
	.uleb128 0xc
	.byte	0x8
	.byte	0x4
	.uahalf	0x270
	.uaword	0x1bf4
	.uleb128 0x9
	.uaword	.LASF10
	.byte	0x4
	.uahalf	0x272
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF6
	.byte	0x4
	.uahalf	0x273
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x9
	.uaword	.LASF7
	.byte	0x4
	.uahalf	0x274
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x9
	.uaword	.LASF21
	.byte	0x4
	.uahalf	0x275
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x9
	.uaword	.LASF22
	.byte	0x4
	.uahalf	0x276
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.uaword	.LASF9
	.byte	0x4
	.uahalf	0x277
	.uaword	0xd5d
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0xb
	.string	"CCP_tstrAckGetCcpVers"
	.byte	0x4
	.uahalf	0x279
	.uaword	0x1b90
	.uleb128 0xd
	.byte	0x8
	.byte	0x4
	.uahalf	0x27c
	.uaword	0x1d84
	.uleb128 0xe
	.string	"strCnct"
	.byte	0x4
	.uahalf	0x27e
	.uaword	0x500
	.uleb128 0xf
	.uaword	.LASF23
	.byte	0x4
	.uahalf	0x27f
	.uaword	0x5c2
	.uleb128 0xf
	.uaword	.LASF24
	.byte	0x4
	.uahalf	0x280
	.uaword	0x6cf
	.uleb128 0xf
	.uaword	.LASF25
	.byte	0x4
	.uahalf	0x281
	.uaword	0x792
	.uleb128 0xf
	.uaword	.LASF26
	.byte	0x4
	.uahalf	0x282
	.uaword	0x86e
	.uleb128 0xe
	.string	"strDnld"
	.byte	0x4
	.uahalf	0x283
	.uaword	0x922
	.uleb128 0xf
	.uaword	.LASF27
	.byte	0x4
	.uahalf	0x284
	.uaword	0x9d2
	.uleb128 0xe
	.string	"strUpld"
	.byte	0x4
	.uahalf	0x285
	.uaword	0xa92
	.uleb128 0xf
	.uaword	.LASF28
	.byte	0x4
	.uahalf	0x286
	.uaword	0xb50
	.uleb128 0xf
	.uaword	.LASF29
	.byte	0x4
	.uahalf	0x287
	.uaword	0xbf8
	.uleb128 0xf
	.uaword	.LASF30
	.byte	0x4
	.uahalf	0x288
	.uaword	0xccb
	.uleb128 0xf
	.uaword	.LASF31
	.byte	0x4
	.uahalf	0x289
	.uaword	0xdef
	.uleb128 0xf
	.uaword	.LASF32
	.byte	0x4
	.uahalf	0x28a
	.uaword	0xec7
	.uleb128 0xf
	.uaword	.LASF33
	.byte	0x4
	.uahalf	0x28b
	.uaword	0xfb6
	.uleb128 0xf
	.uaword	.LASF34
	.byte	0x4
	.uahalf	0x28c
	.uaword	0x10b0
	.uleb128 0xf
	.uaword	.LASF35
	.byte	0x4
	.uahalf	0x28d
	.uaword	0x116e
	.uleb128 0xf
	.uaword	.LASF36
	.byte	0x4
	.uahalf	0x28e
	.uaword	0x1225
	.uleb128 0xf
	.uaword	.LASF37
	.byte	0x4
	.uahalf	0x28f
	.uaword	0x1331
	.uleb128 0xf
	.uaword	.LASF38
	.byte	0x4
	.uahalf	0x290
	.uaword	0x1420
	.uleb128 0xe
	.string	"strProg"
	.byte	0x4
	.uahalf	0x291
	.uaword	0x14e0
	.uleb128 0xf
	.uaword	.LASF39
	.byte	0x4
	.uahalf	0x292
	.uaword	0x159c
	.uleb128 0xe
	.string	"strMove"
	.byte	0x4
	.uahalf	0x293
	.uaword	0x1678
	.uleb128 0xf
	.uaword	.LASF40
	.byte	0x4
	.uahalf	0x294
	.uaword	0x173f
	.uleb128 0xf
	.uaword	.LASF41
	.byte	0x4
	.uahalf	0x295
	.uaword	0x182d
	.uleb128 0xe
	.string	"strTest"
	.byte	0x4
	.uahalf	0x296
	.uaword	0x190f
	.uleb128 0xf
	.uaword	.LASF42
	.byte	0x4
	.uahalf	0x297
	.uaword	0x19cb
	.uleb128 0xf
	.uaword	.LASF43
	.byte	0x4
	.uahalf	0x298
	.uaword	0x1a86
	.uleb128 0xf
	.uaword	.LASF44
	.byte	0x4
	.uahalf	0x299
	.uaword	0x1b72
	.byte	0
	.uleb128 0xb
	.string	"CCP_tuniCmdRxObj"
	.byte	0x4
	.uahalf	0x29b
	.uaword	0x1c12
	.uleb128 0xd
	.byte	0x8
	.byte	0x4
	.uahalf	0x29e
	.uaword	0x1f0f
	.uleb128 0xe
	.string	"strCnct"
	.byte	0x4
	.uahalf	0x2a0
	.uaword	0x568
	.uleb128 0xf
	.uaword	.LASF23
	.byte	0x4
	.uahalf	0x2a1
	.uaword	0x66b
	.uleb128 0xf
	.uaword	.LASF24
	.byte	0x4
	.uahalf	0x2a2
	.uaword	0x742
	.uleb128 0xf
	.uaword	.LASF25
	.byte	0x4
	.uahalf	0x2a3
	.uaword	0x802
	.uleb128 0xf
	.uaword	.LASF26
	.byte	0x4
	.uahalf	0x2a4
	.uaword	0x8c8
	.uleb128 0xe
	.string	"strDnld"
	.byte	0x4
	.uahalf	0x2a5
	.uaword	0x988
	.uleb128 0xf
	.uaword	.LASF27
	.byte	0x4
	.uahalf	0x2a6
	.uaword	0xa39
	.uleb128 0xe
	.string	"strUpld"
	.byte	0x4
	.uahalf	0x2a7
	.uaword	0xaea
	.uleb128 0xf
	.uaword	.LASF28
	.byte	0x4
	.uahalf	0x2a8
	.uaword	0xbab
	.uleb128 0xf
	.uaword	.LASF29
	.byte	0x4
	.uahalf	0x2a9
	.uaword	0xc56
	.uleb128 0xf
	.uaword	.LASF30
	.byte	0x4
	.uahalf	0x2aa
	.uaword	0xd6d
	.uleb128 0xf
	.uaword	.LASF31
	.byte	0x4
	.uahalf	0x2ab
	.uaword	0xe52
	.uleb128 0xf
	.uaword	.LASF32
	.byte	0x4
	.uahalf	0x2ac
	.uaword	0xf26
	.uleb128 0xf
	.uaword	.LASF33
	.byte	0x4
	.uahalf	0x2ad
	.uaword	0x1018
	.uleb128 0xf
	.uaword	.LASF34
	.byte	0x4
	.uahalf	0x2ae
	.uaword	0x110f
	.uleb128 0xf
	.uaword	.LASF35
	.byte	0x4
	.uahalf	0x2af
	.uaword	0x11d1
	.uleb128 0xf
	.uaword	.LASF36
	.byte	0x4
	.uahalf	0x2b0
	.uaword	0x12bf
	.uleb128 0xf
	.uaword	.LASF37
	.byte	0x4
	.uahalf	0x2b1
	.uaword	0x13b1
	.uleb128 0xf
	.uaword	.LASF38
	.byte	0x4
	.uahalf	0x2b2
	.uaword	0x1480
	.uleb128 0xe
	.string	"strProg"
	.byte	0x4
	.uahalf	0x2b3
	.uaword	0x154d
	.uleb128 0xf
	.uaword	.LASF39
	.byte	0x4
	.uahalf	0x2b4
	.uaword	0x160a
	.uleb128 0xe
	.string	"strMove"
	.byte	0x4
	.uahalf	0x2b5
	.uaword	0x16d6
	.uleb128 0xf
	.uaword	.LASF40
	.byte	0x4
	.uahalf	0x2b6
	.uaword	0x17c1
	.uleb128 0xf
	.uaword	.LASF41
	.byte	0x4
	.uahalf	0x2b7
	.uaword	0x18ae
	.uleb128 0xe
	.string	"strTest"
	.byte	0x4
	.uahalf	0x2b8
	.uaword	0x196d
	.uleb128 0xf
	.uaword	.LASF42
	.byte	0x4
	.uahalf	0x2b9
	.uaword	0x1a30
	.uleb128 0xf
	.uaword	.LASF43
	.byte	0x4
	.uahalf	0x2ba
	.uaword	0x1afc
	.uleb128 0xf
	.uaword	.LASF44
	.byte	0x4
	.uahalf	0x2bb
	.uaword	0x1bf4
	.byte	0
	.uleb128 0xb
	.string	"CCP_tuniDataTxObj"
	.byte	0x4
	.uahalf	0x2bd
	.uaword	0x1d9d
	.uleb128 0xc
	.byte	0x8
	.byte	0x4
	.uahalf	0x2cc
	.uaword	0x1f60
	.uleb128 0x9
	.uaword	.LASF6
	.byte	0x4
	.uahalf	0x2ce
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF7
	.byte	0x4
	.uahalf	0x2cf
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x9
	.uaword	.LASF11
	.byte	0x4
	.uahalf	0x2d0
	.uaword	0x5b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0xc
	.byte	0x8
	.byte	0x4
	.uahalf	0x2d3
	.uaword	0x1fae
	.uleb128 0x9
	.uaword	.LASF10
	.byte	0x4
	.uahalf	0x2d5
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"u8CmdRtnCod"
	.byte	0x4
	.uahalf	0x2d6
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x9
	.uaword	.LASF7
	.byte	0x4
	.uahalf	0x2d7
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x9
	.uaword	.LASF11
	.byte	0x4
	.uahalf	0x2d8
	.uaword	0x558
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0xd
	.byte	0x8
	.byte	0x4
	.uahalf	0x2c8
	.uaword	0x2012
	.uleb128 0xe
	.string	"au32Data"
	.byte	0x4
	.uahalf	0x2ca
	.uaword	0x2012
	.uleb128 0xf
	.uaword	.LASF16
	.byte	0x4
	.uahalf	0x2cb
	.uaword	0x2022
	.uleb128 0xe
	.string	"strReq"
	.byte	0x4
	.uahalf	0x2d2
	.uaword	0x1f29
	.uleb128 0xe
	.string	"strResp"
	.byte	0x4
	.uahalf	0x2da
	.uaword	0x1f60
	.uleb128 0xe
	.string	"uniCmd"
	.byte	0x4
	.uahalf	0x2db
	.uaword	0x1d84
	.uleb128 0xe
	.string	"uniAck"
	.byte	0x4
	.uahalf	0x2dc
	.uaword	0x1f0f
	.byte	0
	.uleb128 0x7
	.uaword	0x219
	.uaword	0x2022
	.uleb128 0x8
	.uaword	0x4f4
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.uaword	0x1b2
	.uaword	0x2032
	.uleb128 0x8
	.uaword	0x4f4
	.byte	0x7
	.byte	0
	.uleb128 0xb
	.string	"CCP_tuniPtclMsgBuf"
	.byte	0x4
	.uahalf	0x2de
	.uaword	0x1fae
	.uleb128 0x10
	.byte	0x1
	.string	"CCP_vidDaqListStop"
	.byte	0x1
	.uahalf	0x291
	.byte	0x1
	.byte	0x1
	.uaword	0x2090
	.uleb128 0x11
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x296
	.uaword	0x27f
	.uleb128 0x12
	.uaword	.LASF45
	.byte	0x1
	.uahalf	0x299
	.uaword	0x2090
	.uleb128 0x12
	.uaword	.LASF46
	.byte	0x1
	.uahalf	0x29a
	.uaword	0x27f
	.byte	0
	.uleb128 0x13
	.byte	0x4
	.uaword	0x435
	.uleb128 0x10
	.byte	0x1
	.string	"CCP_vidDaqListStrt"
	.byte	0x1
	.uahalf	0x2bf
	.byte	0x1
	.byte	0x1
	.uaword	0x20e5
	.uleb128 0x11
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x2c4
	.uaword	0x27f
	.uleb128 0x11
	.uaword	.LASF17
	.byte	0x1
	.uahalf	0x2c8
	.uaword	0x27f
	.uleb128 0x12
	.uaword	.LASF45
	.byte	0x1
	.uahalf	0x2cb
	.uaword	0x2090
	.uleb128 0x12
	.uaword	.LASF46
	.byte	0x1
	.uahalf	0x2cc
	.uaword	0x27f
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.string	"CCP_vidDaqListTxMgr"
	.byte	0x1
	.uahalf	0x358
	.byte	0x1
	.byte	0x1
	.uaword	0x211d
	.uleb128 0x11
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x35c
	.uaword	0x1b2
	.uleb128 0x12
	.uaword	.LASF45
	.byte	0x1
	.uahalf	0x35f
	.uaword	0x2090
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.string	"CCP_vidDaqListIni"
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.uaword	.LFB0
	.uaword	.LFE0
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x215f
	.uleb128 0x15
	.uaword	.LASF47
	.byte	0x1
	.byte	0x6c
	.uaword	0x27f
	.uaword	.LLST0
	.uleb128 0x16
	.uaword	.LASF45
	.byte	0x1
	.byte	0x6d
	.uaword	0x2090
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"CCP_udtGetDaqSize"
	.byte	0x1
	.byte	0xb5
	.byte	0x1
	.uaword	0x2bb
	.uaword	.LFB1
	.uaword	.LFE1
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x21ea
	.uleb128 0x15
	.uaword	.LASF47
	.byte	0x1
	.byte	0xb7
	.uaword	0x27f
	.uaword	.LLST1
	.uleb128 0x15
	.uaword	.LASF48
	.byte	0x1
	.byte	0xb8
	.uaword	0x2bb
	.uaword	.LLST2
	.uleb128 0x18
	.uaword	0x204d
	.uaword	.LBB12
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xe8
	.uaword	0x21d9
	.uleb128 0x19
	.uaword	0x206b
	.uaword	.LLST3
	.uleb128 0x1a
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x1b
	.uaword	0x2077
	.uleb128 0x1c
	.uaword	0x2083
	.uaword	.LLST4
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL10
	.uaword	0x2845
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"CCP_udtSetDaqPtr"
	.byte	0x1
	.uahalf	0x11a
	.byte	0x1
	.uaword	0x2bb
	.uaword	.LFB2
	.uaword	.LFE2
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x2246
	.uleb128 0x20
	.uaword	.LASF47
	.byte	0x1
	.uahalf	0x11c
	.uaword	0x1b2
	.uaword	.LLST5
	.uleb128 0x20
	.uaword	.LASF49
	.byte	0x1
	.uahalf	0x11d
	.uaword	0x1b2
	.uaword	.LLST6
	.uleb128 0x20
	.uaword	.LASF50
	.byte	0x1
	.uahalf	0x11e
	.uaword	0x1b2
	.uaword	.LLST7
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"CCP_udtWrDaqElmCfg"
	.byte	0x1
	.uahalf	0x167
	.byte	0x1
	.uaword	0x2bb
	.uaword	.LFB3
	.uaword	.LFE3
	.uaword	.LLST8
	.byte	0x1
	.uaword	0x22ef
	.uleb128 0x20
	.uaword	.LASF50
	.byte	0x1
	.uahalf	0x169
	.uaword	0x1b2
	.uaword	.LLST9
	.uleb128 0x22
	.string	"u8LocalElmSize"
	.byte	0x1
	.uahalf	0x16a
	.uaword	0x1b2
	.uaword	.LLST10
	.uleb128 0x12
	.uaword	.LASF47
	.byte	0x1
	.uahalf	0x16b
	.uaword	0x1b2
	.uleb128 0x20
	.uaword	.LASF49
	.byte	0x1
	.uahalf	0x16c
	.uaword	0x1b2
	.uaword	.LLST11
	.uleb128 0x23
	.string	"strLocalMta"
	.byte	0x1
	.uahalf	0x16d
	.uaword	0x2f9
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x12
	.uaword	.LASF48
	.byte	0x1
	.uahalf	0x16e
	.uaword	0x2bb
	.uleb128 0x1d
	.uaword	.LVL27
	.uaword	0x286b
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"CCP_udtStrtStop"
	.byte	0x1
	.uahalf	0x1e2
	.byte	0x1
	.uaword	0x2bb
	.uaword	.LFB4
	.uaword	.LFE4
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x2457
	.uleb128 0x20
	.uaword	.LASF47
	.byte	0x1
	.uahalf	0x1e4
	.uaword	0x27f
	.uaword	.LLST12
	.uleb128 0x12
	.uaword	.LASF45
	.byte	0x1
	.uahalf	0x1e5
	.uaword	0x2090
	.uleb128 0x20
	.uaword	.LASF46
	.byte	0x1
	.uahalf	0x1e6
	.uaword	0x27f
	.uaword	.LLST13
	.uleb128 0x24
	.uaword	.LASF51
	.byte	0x1
	.uahalf	0x1e7
	.uaword	0x27f
	.byte	0x1
	.byte	0x53
	.uleb128 0x20
	.uaword	.LASF52
	.byte	0x1
	.uahalf	0x1e8
	.uaword	0x1b2
	.uaword	.LLST14
	.uleb128 0x22
	.string	"u8LocalEveChn"
	.byte	0x1
	.uahalf	0x1e9
	.uaword	0x1b2
	.uaword	.LLST15
	.uleb128 0x22
	.string	"u16LocalPslr"
	.byte	0x1
	.uahalf	0x1ea
	.uaword	0x1dd
	.uaword	.LLST16
	.uleb128 0x25
	.uaword	0x204d
	.uaword	.LBB24
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x1
	.uahalf	0x204
	.uaword	0x23c8
	.uleb128 0x19
	.uaword	0x206b
	.uaword	.LLST17
	.uleb128 0x1a
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0x1b
	.uaword	0x2077
	.uleb128 0x1c
	.uaword	0x2083
	.uaword	.LLST18
	.byte	0
	.byte	0
	.uleb128 0x25
	.uaword	0x2096
	.uaword	.LBB27
	.uaword	.Ldebug_ranges0+0x30
	.byte	0x1
	.uahalf	0x21d
	.uaword	0x242b
	.uleb128 0x19
	.uaword	0x20c0
	.uaword	.LLST19
	.uleb128 0x26
	.uaword	0x20b4
	.uleb128 0x1a
	.uaword	.Ldebug_ranges0+0x30
	.uleb128 0x1b
	.uaword	0x20cc
	.uleb128 0x1c
	.uaword	0x20d8
	.uaword	.LLST20
	.uleb128 0x27
	.uaword	.LBB29
	.uaword	.LBE29
	.uleb128 0x26
	.uaword	0x20b4
	.uleb128 0x19
	.uaword	0x20c0
	.uaword	.LLST21
	.uleb128 0x27
	.uaword	.LBB30
	.uaword	.LBE30
	.uleb128 0x1b
	.uaword	0x20cc
	.uleb128 0x1b
	.uaword	0x20d8
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
	.uaword	0x204d
	.uaword	.LBB36
	.uaword	.LBE36
	.byte	0x1
	.uahalf	0x215
	.uleb128 0x26
	.uaword	0x206b
	.uleb128 0x27
	.uaword	.LBB37
	.uaword	.LBE37
	.uleb128 0x1b
	.uaword	0x2077
	.uleb128 0x29
	.uaword	0x2083
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"CCP_udtStrtStopAll"
	.byte	0x1
	.uahalf	0x250
	.byte	0x1
	.uaword	0x2bb
	.uaword	.LFB5
	.uaword	.LFE5
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x2544
	.uleb128 0x20
	.uaword	.LASF51
	.byte	0x1
	.uahalf	0x252
	.uaword	0x27f
	.uaword	.LLST22
	.uleb128 0x20
	.uaword	.LASF47
	.byte	0x1
	.uahalf	0x253
	.uaword	0x27f
	.uaword	.LLST23
	.uleb128 0x20
	.uaword	.LASF48
	.byte	0x1
	.uahalf	0x254
	.uaword	0x2bb
	.uaword	.LLST24
	.uleb128 0x25
	.uaword	0x204d
	.uaword	.LBB44
	.uaword	.Ldebug_ranges0+0x50
	.byte	0x1
	.uahalf	0x26b
	.uaword	0x24e6
	.uleb128 0x19
	.uaword	0x206b
	.uaword	.LLST25
	.uleb128 0x1a
	.uaword	.Ldebug_ranges0+0x50
	.uleb128 0x1b
	.uaword	0x2077
	.uleb128 0x1c
	.uaword	0x2083
	.uaword	.LLST26
	.byte	0
	.byte	0
	.uleb128 0x28
	.uaword	0x2096
	.uaword	.LBB48
	.uaword	.LBE48
	.byte	0x1
	.uahalf	0x275
	.uleb128 0x2a
	.uaword	0x20c0
	.byte	0x1
	.uleb128 0x19
	.uaword	0x20b4
	.uaword	.LLST27
	.uleb128 0x27
	.uaword	.LBB49
	.uaword	.LBE49
	.uleb128 0x1b
	.uaword	0x20cc
	.uleb128 0x29
	.uaword	0x20d8
	.byte	0x2
	.uleb128 0x1a
	.uaword	.Ldebug_ranges0+0x68
	.uleb128 0x19
	.uaword	0x20b4
	.uaword	.LLST28
	.uleb128 0x19
	.uaword	0x20c0
	.uaword	.LLST29
	.uleb128 0x1a
	.uaword	.Ldebug_ranges0+0x68
	.uleb128 0x1b
	.uaword	0x20cc
	.uleb128 0x1b
	.uaword	0x20d8
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0x204d
	.uaword	.LFB6
	.uaword	.LFE6
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x2571
	.uleb128 0x19
	.uaword	0x206b
	.uaword	.LLST30
	.uleb128 0x1b
	.uaword	0x2077
	.uleb128 0x1c
	.uaword	0x2083
	.uaword	.LLST31
	.byte	0
	.uleb128 0x2b
	.uaword	0x2096
	.uaword	.LFB7
	.uaword	.LFE7
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x25d6
	.uleb128 0x2c
	.uaword	0x20b4
	.byte	0x1
	.byte	0x54
	.uleb128 0x2c
	.uaword	0x20c0
	.byte	0x1
	.byte	0x55
	.uleb128 0x1b
	.uaword	0x20cc
	.uleb128 0x2d
	.uaword	0x20d8
	.byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uleb128 0x27
	.uaword	.LBB58
	.uaword	.LBE58
	.uleb128 0x19
	.uaword	0x20b4
	.uaword	.LLST32
	.uleb128 0x19
	.uaword	0x20c0
	.uaword	.LLST33
	.uleb128 0x27
	.uaword	.LBB59
	.uaword	.LBE59
	.uleb128 0x1b
	.uaword	0x20cc
	.uleb128 0x1b
	.uaword	0x20d8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.string	"CCP_vidDaqListSetEvent"
	.byte	0x1
	.uahalf	0x2ec
	.byte	0x1
	.uaword	.LFB8
	.uaword	.LFE8
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x2728
	.uleb128 0x2f
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x2f0
	.uaword	0x1b2
	.uaword	.LLST34
	.uleb128 0x20
	.uaword	.LASF47
	.byte	0x1
	.uahalf	0x2f3
	.uaword	0x27f
	.uaword	.LLST35
	.uleb128 0x12
	.uaword	.LASF45
	.byte	0x1
	.uahalf	0x2f4
	.uaword	0x2090
	.uleb128 0x22
	.string	"u8LocalCfgChgdCtr"
	.byte	0x1
	.uahalf	0x2f5
	.uaword	0x1b2
	.uaword	.LLST36
	.uleb128 0x22
	.string	"u16LocalCtr"
	.byte	0x1
	.uahalf	0x2f6
	.uaword	0x2a7
	.uaword	.LLST37
	.uleb128 0x30
	.string	"u8LocalFirstPid"
	.byte	0x1
	.uahalf	0x2f7
	.uaword	0x1b2
	.uleb128 0x20
	.uaword	.LASF52
	.byte	0x1
	.uahalf	0x2f8
	.uaword	0x1b2
	.uaword	.LLST38
	.uleb128 0x25
	.uaword	0x20e5
	.uaword	.LBB64
	.uaword	.Ldebug_ranges0+0x88
	.byte	0x1
	.uahalf	0x343
	.uaword	0x2708
	.uleb128 0x19
	.uaword	0x2104
	.uaword	.LLST39
	.uleb128 0x1a
	.uaword	.Ldebug_ranges0+0x88
	.uleb128 0x1b
	.uaword	0x2110
	.uleb128 0x1a
	.uaword	.Ldebug_ranges0+0x88
	.uleb128 0x19
	.uaword	0x2104
	.uaword	.LLST39
	.uleb128 0x1a
	.uaword	.Ldebug_ranges0+0x88
	.uleb128 0x1b
	.uaword	0x2110
	.uleb128 0x31
	.uaword	.LVL112
	.uaword	0x28b5
	.uaword	0x26e0
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.uaword	.LVL113
	.uaword	0x28dd
	.uaword	0x26f4
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL114
	.uaword	0x2907
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL106
	.uaword	0x2930
	.uleb128 0x1e
	.byte	0x1
	.byte	0x55
	.byte	0xb
	.byte	0x7f
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x8d
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x94
	.byte	0x1
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0x20e5
	.uaword	.LFB9
	.uaword	.LFE9
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x278b
	.uleb128 0x19
	.uaword	0x2104
	.uaword	.LLST41
	.uleb128 0x1b
	.uaword	0x2110
	.uleb128 0x27
	.uaword	.LBB74
	.uaword	.LBE74
	.uleb128 0x19
	.uaword	0x2104
	.uaword	.LLST42
	.uleb128 0x27
	.uaword	.LBB75
	.uaword	.LBE75
	.uleb128 0x1b
	.uaword	0x2110
	.uleb128 0x32
	.uaword	.LVL119
	.byte	0x1
	.uaword	0x28b5
	.uleb128 0x33
	.uaword	.LVL120
	.uaword	0x28dd
	.uleb128 0x32
	.uaword	.LVL122
	.byte	0x1
	.uaword	0x2907
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.uaword	0x33c
	.uaword	0x279b
	.uleb128 0x8
	.uaword	0x4f4
	.byte	0x2
	.byte	0
	.uleb128 0x34
	.string	"CCP_kastrDaqListStatCfg"
	.byte	0x5
	.byte	0xfd
	.uaword	0x27bc
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.uaword	0x278b
	.uleb128 0x36
	.string	"CCP_uniBuf"
	.byte	0x5
	.uahalf	0x10b
	.uaword	0x2032
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.string	"CCP_strDaqListSeldElm"
	.byte	0x5
	.uahalf	0x11e
	.uaword	0x485
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.string	"CCP_u8DaqNoStrtdList"
	.byte	0x5
	.uahalf	0x120
	.uaword	0x1b2
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.uaword	0x435
	.uaword	0x2825
	.uleb128 0x8
	.uaword	0x4f4
	.byte	0x2
	.byte	0
	.uleb128 0x36
	.string	"CCP_astrDaqListDynCfg"
	.byte	0x5
	.uahalf	0x122
	.uaword	0x2815
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.byte	0x1
	.string	"CCP_vidUsrDaqListClr"
	.byte	0x6
	.uahalf	0x1dd
	.byte	0x1
	.byte	0x1
	.uaword	0x286b
	.uleb128 0x38
	.uaword	0x1b2
	.byte	0
	.uleb128 0x39
	.byte	0x1
	.string	"CCP_udtUsrWrDaqElmCfg"
	.byte	0x6
	.uahalf	0x1ea
	.byte	0x1
	.uaword	0x2bb
	.byte	0x1
	.uaword	0x28aa
	.uleb128 0x38
	.uaword	0x1b2
	.uleb128 0x38
	.uaword	0x1b2
	.uleb128 0x38
	.uaword	0x1b2
	.uleb128 0x38
	.uaword	0x28aa
	.uleb128 0x38
	.uaword	0x1b2
	.byte	0
	.uleb128 0x13
	.byte	0x4
	.uaword	0x28b0
	.uleb128 0x35
	.uaword	0x2f9
	.uleb128 0x37
	.byte	0x1
	.string	"CCP_vidUsrDaqListStopd"
	.byte	0x6
	.uahalf	0x222
	.byte	0x1
	.byte	0x1
	.uaword	0x28dd
	.uleb128 0x38
	.uaword	0x1b2
	.byte	0
	.uleb128 0x39
	.byte	0x1
	.string	"CCP_bUsrDaqListTxMgr"
	.byte	0x6
	.uahalf	0x217
	.byte	0x1
	.uaword	0x264
	.byte	0x1
	.uaword	0x2907
	.uleb128 0x38
	.uaword	0x1b2
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.string	"CCP_vidUsrDaqListTxOvrn"
	.byte	0x6
	.uahalf	0x22d
	.byte	0x1
	.byte	0x1
	.uaword	0x2930
	.uleb128 0x38
	.uaword	0x1b2
	.byte	0
	.uleb128 0x3a
	.byte	0x1
	.string	"CCP_vidUsrDaqListTxMgrInit"
	.byte	0x6
	.uahalf	0x203
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.uaword	0x1b2
	.uleb128 0x38
	.uaword	0x1b2
	.uleb128 0x38
	.uaword	0x1b2
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0-.text
	.uaword	.LVL1-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL1-.text
	.uaword	.LVL2-.text
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL2-.text
	.uaword	.LVL3-.text
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL3-.text
	.uaword	.LFE0-.text
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL4-.text
	.uaword	.LVL5-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL5-.text
	.uaword	.LVL6-.text
	.uahalf	0x8
	.byte	0x8f
	.sleb128 2
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL6-.text
	.uaword	.LVL11-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL12-.text
	.uaword	.LFE1-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL9-.text
	.uaword	.LVL12-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL6-.text
	.uaword	.LVL11-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL12-.text
	.uaword	.LFE1-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL7-.text
	.uaword	.LVL8-.text
	.uahalf	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL12-.text
	.uaword	.LVL13-.text
	.uahalf	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL14-.text
	.uaword	.LVL17-.text
	.uahalf	0x2
	.byte	0x8f
	.sleb128 2
	.uaword	.LVL18-.text
	.uaword	.LVL19-.text
	.uahalf	0x2
	.byte	0x8f
	.sleb128 2
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL15-.text
	.uaword	.LVL17-.text
	.uahalf	0x2
	.byte	0x8f
	.sleb128 3
	.uaword	.LVL18-.text
	.uaword	.LVL19-.text
	.uahalf	0x2
	.byte	0x8f
	.sleb128 3
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL16-.text
	.uaword	.LVL17-.text
	.uahalf	0x2
	.byte	0x8f
	.sleb128 4
	.uaword	.LVL18-.text
	.uaword	.LVL19-.text
	.uahalf	0x2
	.byte	0x8f
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LFB3-.text
	.uaword	.LCFI0-.text
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0-.text
	.uaword	.LFE3-.text
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL20-.text
	.uaword	.LVL21-.text
	.uahalf	0x2
	.byte	0x8f
	.sleb128 2
	.uaword	.LVL22-.text
	.uaword	.LVL26-.text
	.uahalf	0x2
	.byte	0x8f
	.sleb128 2
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL23-.text
	.uaword	.LVL27-1-.text
	.uahalf	0x2
	.byte	0x82
	.sleb128 2
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL25-.text
	.uaword	.LVL26-.text
	.uahalf	0x2
	.byte	0x8f
	.sleb128 1
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL28-.text
	.uaword	.LVL29-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL30-.text
	.uaword	.LVL33-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL33-.text
	.uaword	.LVL34-.text
	.uahalf	0x8
	.byte	0x8f
	.sleb128 3
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL35-.text
	.uaword	.LVL40-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL44-.text
	.uaword	.LVL45-.text
	.uahalf	0x8
	.byte	0x8f
	.sleb128 3
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL31-.text
	.uaword	.LVL41-.text
	.uahalf	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL44-.text
	.uaword	.LVL47-.text
	.uahalf	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL36-.text
	.uaword	.LVL39-.text
	.uahalf	0x2
	.byte	0x8f
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL37-.text
	.uaword	.LVL39-.text
	.uahalf	0x2
	.byte	0x8f
	.sleb128 5
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL38-.text
	.uaword	.LVL39-.text
	.uahalf	0x2
	.byte	0x8f
	.sleb128 6
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL32-.text
	.uaword	.LVL33-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL33-.text
	.uaword	.LVL34-.text
	.uahalf	0x8
	.byte	0x8f
	.sleb128 3
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL44-.text
	.uaword	.LVL45-.text
	.uahalf	0x8
	.byte	0x8f
	.sleb128 3
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL32-.text
	.uaword	.LVL35-.text
	.uahalf	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL44-.text
	.uaword	.LVL46-.text
	.uahalf	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL42-.text
	.uaword	.LVL44-.text
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL42-.text
	.uaword	.LVL44-.text
	.uahalf	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL43-.text
	.uaword	.LVL44-.text
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL48-.text
	.uaword	.LVL50-.text
	.uahalf	0x6
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL53-.text
	.uaword	.LVL56-.text
	.uahalf	0x6
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL77-.text
	.uaword	.LVL78-.text
	.uahalf	0x6
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL49-.text
	.uaword	.LVL50-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL50-.text
	.uaword	.LVL51-.text
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL51-.text
	.uaword	.LVL52-.text
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL52-.text
	.uaword	.LVL53-.text
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL57-.text
	.uaword	.LVL59-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL59-.text
	.uaword	.LVL62-.text
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL62-.text
	.uaword	.LVL65-.text
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL65-.text
	.uaword	.LVL66-.text
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL66-.text
	.uaword	.LVL67-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL67-.text
	.uaword	.LVL68-.text
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL68-.text
	.uaword	.LVL69-.text
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL69-.text
	.uaword	.LVL70-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL70-.text
	.uaword	.LVL74-.text
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL74-.text
	.uaword	.LVL77-.text
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL77-.text
	.uaword	.LVL80-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL80-.text
	.uaword	.LVL82-.text
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL82-.text
	.uaword	.LVL84-.text
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL84-.text
	.uaword	.LFE5-.text
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL54-.text
	.uaword	.LVL55-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL57-.text
	.uaword	.LVL59-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL59-.text
	.uaword	.LVL62-.text
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL62-.text
	.uaword	.LVL66-.text
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL66-.text
	.uaword	.LVL67-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL67-.text
	.uaword	.LVL68-.text
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL68-.text
	.uaword	.LVL69-.text
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL69-.text
	.uaword	.LVL70-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL70-.text
	.uaword	.LVL74-.text
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL74-.text
	.uaword	.LVL77-.text
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL57-.text
	.uaword	.LVL58-.text
	.uahalf	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL60-.text
	.uaword	.LVL61-.text
	.uahalf	0x6
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL63-.text
	.uaword	.LVL64-.text
	.uahalf	0x6
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL66-.text
	.uaword	.LVL67-.text
	.uahalf	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL67-.text
	.uaword	.LVL69-.text
	.uahalf	0x6
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL69-.text
	.uaword	.LVL71-.text
	.uahalf	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL72-.text
	.uaword	.LVL73-.text
	.uahalf	0x6
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL75-.text
	.uaword	.LVL76-.text
	.uahalf	0x6
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL77-.text
	.uaword	.LVL80-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL80-.text
	.uaword	.LVL82-.text
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL82-.text
	.uaword	.LFE5-.text
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL79-.text
	.uaword	.LVL80-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL81-.text
	.uaword	.LVL82-.text
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL83-.text
	.uaword	.LFE5-.text
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL79-.text
	.uaword	.LVL80-.text
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL81-.text
	.uaword	.LVL82-.text
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL83-.text
	.uaword	.LFE5-.text
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL85-.text
	.uaword	.LVL86-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL86-.text
	.uaword	.LFE6-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL87-.text
	.uaword	.LVL88-.text
	.uahalf	0x6
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL89-.text
	.uaword	.LVL90-.text
	.uahalf	0x6
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL93-.text
	.uaword	.LVL94-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL93-.text
	.uaword	.LVL94-.text
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL95-.text
	.uaword	.LVL96-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL96-.text
	.uaword	.LFE8-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL96-.text
	.uaword	.LVL98-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL99-.text
	.uaword	.LFE8-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL100-.text
	.uaword	.LVL102-.text
	.uahalf	0x2
	.byte	0x8f
	.sleb128 2
	.uaword	.LVL102-.text
	.uaword	.LVL103-.text
	.uahalf	0x2
	.byte	0x82
	.sleb128 -2
	.uaword	.LVL103-.text
	.uaword	.LVL106-1-.text
	.uahalf	0x7
	.byte	0x8c
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x6
	.uaword	.LVL107-.text
	.uaword	.LVL108-.text
	.uahalf	0x7
	.byte	0x8c
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x6
	.uaword	.LVL108-.text
	.uaword	.LVL111-.text
	.uahalf	0x2
	.byte	0x8f
	.sleb128 2
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL109-.text
	.uaword	.LVL111-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL104-.text
	.uaword	.LVL106-1-.text
	.uahalf	0x2
	.byte	0x8f
	.sleb128 3
	.uaword	.LVL107-.text
	.uaword	.LVL108-.text
	.uahalf	0x2
	.byte	0x8f
	.sleb128 3
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL106-.text
	.uaword	.LVL107-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL111-.text
	.uaword	.LFE8-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL115-.text
	.uaword	.LVL119-1-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL119-1-.text
	.uaword	.LVL119-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL119-.text
	.uaword	.LVL120-1-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL120-1-.text
	.uaword	.LVL121-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL121-.text
	.uaword	.LVL122-1-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL122-1-.text
	.uaword	.LFE9-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST42:
	.uaword	.LVL116-.text
	.uaword	.LVL117-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL118-.text
	.uaword	.LVL119-1-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL119-.text
	.uaword	.LVL120-1-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL121-.text
	.uaword	.LVL122-1-.text
	.uahalf	0x1
	.byte	0x54
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
	.uaword	.LBB12-.Ltext0
	.uaword	.LBE12-.Ltext0
	.uaword	.LBB15-.Ltext0
	.uaword	.LBE15-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB24-.Ltext0
	.uaword	.LBE24-.Ltext0
	.uaword	.LBB35-.Ltext0
	.uaword	.LBE35-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB27-.Ltext0
	.uaword	.LBE27-.Ltext0
	.uaword	.LBB33-.Ltext0
	.uaword	.LBE33-.Ltext0
	.uaword	.LBB34-.Ltext0
	.uaword	.LBE34-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB44-.Ltext0
	.uaword	.LBE44-.Ltext0
	.uaword	.LBB47-.Ltext0
	.uaword	.LBE47-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB50-.Ltext0
	.uaword	.LBE50-.Ltext0
	.uaword	.LBB54-.Ltext0
	.uaword	.LBE54-.Ltext0
	.uaword	.LBB55-.Ltext0
	.uaword	.LBE55-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB64-.Ltext0
	.uaword	.LBE64-.Ltext0
	.uaword	.LBB71-.Ltext0
	.uaword	.LBE71-.Ltext0
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF11:
	.string	"au8Prm"
.LASF39:
	.string	"strProg6"
.LASF44:
	.string	"strGetCcpVers"
.LASF6:
	.string	"u8CmdCod"
.LASF3:
	.string	"u8ListIdx"
.LASF20:
	.string	"u16BlkSizeMSW"
.LASF38:
	.string	"strClrMem"
.LASF15:
	.string	"u8DataSize"
.LASF14:
	.string	"u8AdrExtn"
.LASF32:
	.string	"strWrDaq"
.LASF21:
	.string	"u8MaiPtclVers"
.LASF43:
	.string	"strGetAcvCalPage"
.LASF24:
	.string	"strGetSeed"
.LASF37:
	.string	"strBldCks"
.LASF17:
	.string	"u8Mod"
.LASF51:
	.string	"u8LocalMod"
.LASF16:
	.string	"au8Data"
.LASF22:
	.string	"u8RleasWithinVers"
.LASF52:
	.string	"u8LocalOdtLstIdx"
.LASF23:
	.string	"strExchId"
.LASF46:
	.string	"u8LocalPrevMod"
.LASF0:
	.string	"u32Adr"
.LASF2:
	.string	"u8EveChn"
.LASF4:
	.string	"u8OdtIdx"
.LASF41:
	.string	"strActnSrv"
.LASF49:
	.string	"u8LocalOdtIdx"
.LASF25:
	.string	"strUnlck"
.LASF42:
	.string	"strStrtStopAll"
.LASF47:
	.string	"u8LocalListIdx"
.LASF48:
	.string	"udtLocalCmdSts"
.LASF27:
	.string	"strDnld6"
.LASF30:
	.string	"strGetDaqSize"
.LASF35:
	.string	"strSetSsnSts"
.LASF26:
	.string	"strSetMta"
.LASF8:
	.string	"u16StnAdr"
.LASF13:
	.string	"u8NotUsed"
.LASF45:
	.string	"pstrLocalDaqListDynCfg"
.LASF5:
	.string	"u8ElmIdx"
.LASF29:
	.string	"strSelCalPage"
.LASF28:
	.string	"strShoUpld"
.LASF50:
	.string	"u8LocalElmIdx"
.LASF7:
	.string	"u8CmdCtr"
.LASF19:
	.string	"u16BlkSizeLSW"
.LASF36:
	.string	"strGetSsnSts"
.LASF31:
	.string	"strSetDaqPtr"
.LASF12:
	.string	"u8DataTyp"
.LASF1:
	.string	"u8OdtLstIdx"
.LASF40:
	.string	"strDiagcSrv"
.LASF34:
	.string	"strDcnct"
.LASF33:
	.string	"strStrtStop"
.LASF10:
	.string	"u8PktId"
.LASF9:
	.string	"au8NotUsed"
.LASF18:
	.string	"u8SsnSts"
	.extern	CCP_vidUsrDaqListTxOvrn,STT_FUNC,0
	.extern	CCP_bUsrDaqListTxMgr,STT_FUNC,0
	.extern	CCP_vidUsrDaqListStopd,STT_FUNC,0
	.extern	CCP_vidUsrDaqListTxMgrInit,STT_FUNC,0
	.extern	CCP_udtUsrWrDaqElmCfg,STT_FUNC,0
	.extern	CCP_u8DaqNoStrtdList,STT_OBJECT,1
	.extern	CCP_kastrDaqListStatCfg,STT_OBJECT,6
	.extern	CCP_vidUsrDaqListClr,STT_FUNC,0
	.extern	CCP_uniBuf,STT_OBJECT,8
	.extern	CCP_astrDaqListDynCfg,STT_OBJECT,42
	.extern	CCP_strDaqListSeldElm,STT_OBJECT,4
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
