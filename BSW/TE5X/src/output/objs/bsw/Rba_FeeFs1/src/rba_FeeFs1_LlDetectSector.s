	.file	"rba_FeeFs1_LlDetectSector.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Fee_LLSearchSectors,"ax",@progbits
	.align 1
	.global	Fee_LLSearchSectors
	.type	Fee_LLSearchSectors, @function
Fee_LLSearchSectors:
.LFB25:
	.file 1 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_LlDetectSector.c"
	.loc 1 344 0
.LVL0:
	.loc 1 360 0
	movh.a	%a15, hi:Fee_RdWrOrder_st
	.loc 1 354 0
	mov	%d15, 3
	.loc 1 360 0
	lea	%a15, [%a15] lo:Fee_RdWrOrder_st
	.loc 1 354 0
	movh.a	%a14, hi:Fee_RdWrRetries_u8
	movh.a	%a12, hi:Fee_NumFlashBanksUsed_u8
	st.b	[%a14] lo:Fee_RdWrRetries_u8, %d15
	.loc 1 366 0
	movh	%d9, hi:.L5
	.loc 1 360 0
	mov	%d15, 0
	.loc 1 684 0
	movh	%d12, hi:Fee_stMain
	.loc 1 512 0
	movh	%d11, hi:Fee_MarkerBufBytePtr_cpu8
	ld.bu	%d2, [%a12] lo:Fee_NumFlashBanksUsed_u8
	.loc 1 366 0
	mov.d	%d13, %a15
	.loc 1 360 0
	st.b	[%a15] 53, %d15
	.loc 1 344 0
	sub.a	%SP, 8
.LCFI0:
	.loc 1 344 0
	mov.aa	%a13, %a4
	.loc 1 350 0
	mov	%d8, 0
	.loc 1 349 0
	mov	%d10, -1
	.loc 1 347 0
	mov	%d15, 0
	.loc 1 366 0
	addi	%d9, %d9, lo:.L5
	.loc 1 684 0
	addi	%d12, %d12, lo:Fee_stMain
	.loc 1 512 0
	addi	%d11, %d11, lo:Fee_MarkerBufBytePtr_cpu8
.LVL1:
.L2:
	.loc 1 363 0
	jge.u	%d15, %d2, .L49
.LVL2:
.L38:
	.loc 1 366 0
	ld.bu	%d3, [%a15] 53
	jlt.u	%d3, 11, .L50
	.loc 1 720 0
	mov.a	%a2, %d13
	mov	%d3, 0
	st.b	[%a2] 53, %d3
.L45:
	.loc 1 721 0
	add	%d15, 1
	.loc 1 724 0
	mov	%d3, 3
	.loc 1 721 0
	and	%d15, 255
.LVL3:
	.loc 1 724 0
	st.b	[%a14] lo:Fee_RdWrRetries_u8, %d3
.LVL4:
	.loc 1 363 0
	jlt.u	%d15, %d2, .L38
.LVL5:
.L49:
	.loc 1 729 0
	ret
.L50:
	.loc 1 366 0
	mov.a	%a3, %d9
	addsc.a	%a2, %a3, %d3, 2
	ji	%a2
	.align 2
	.align 2
.L5:
	.code32
	j	.L4
	.code32
	j	.L6
	.code32
	j	.L9
	.code32
	j	.L8
	.code32
	j	.L9
	.code32
	j	.L10
	.code32
	j	.L11
	.code32
	j	.L12
	.code32
	j	.L13
	.code32
	j	.L14
	.code32
	j	.L15
.L9:
	.loc 1 494 0
	mov.a	%a3, %d12
	ld.bu	%d2, [%a3]0
	jz	%d2, .L46
.L37:
	.loc 1 692 0
	call	Fee_CheckFlsJobResult
.LVL6:
	ld.bu	%d2, [%a12] lo:Fee_NumFlashBanksUsed_u8
	.loc 1 695 0
	j	.L2
.L8:
	.loc 1 467 0
	mov.a	%a2, %d11
	mov	%d4, %d8
	ld.a	%a4, [%a2]0
	mov	%d5, 8
	call	Fls_17_Dmu_Read
.LVL7:
	jeq	%d2, 1, .L21
	.loc 1 472 0
	mov	%d2, 4
	st.b	[%a15] 53, %d2
	ld.bu	%d2, [%a12] lo:Fee_NumFlashBanksUsed_u8
	j	.L2
.L14:
	.loc 1 700 0
	addsc.a	%a2, %a13, %d15, 3
	addsc.a	%a2, %a2, %d15, 3
	mov	%d3, 0
	st.b	[%a2] 13, %d3
	.loc 1 704 0
	add	%d15, 1
	.loc 1 703 0
	st.b	[%a15] 53, %d3
	.loc 1 704 0
	and	%d15, 255
.LVL8:
	.loc 1 705 0
	j	.L2
.LVL9:
.L6:
	.loc 1 408 0
	add	%d10, 1
.LVL10:
	extr	%d10, %d10, 0, 8
.LVL11:
	.loc 1 411 0
	ge	%d3, %d10, 11
	jz	%d3, .L16
	.loc 1 437 0
	mov	%d3, 7
	st.b	[%a15] 53, %d3
	j	.L2
.LVL12:
.L4:
	.loc 1 382 0
	movh.a	%a3, hi:Fee_LLSectorOrder_st
	.loc 1 372 0
	sh	%d8, %d15, 4
.LVL13:
	.loc 1 382 0
	lea	%a3, [%a3] lo:Fee_LLSectorOrder_st
	.loc 1 372 0
	addsc.a	%a2, %a13, %d8, 0
	.loc 1 382 0
	addsc.a	%a3, %a3, %d15, 3
	.loc 1 372 0
	mov	%d2, 0
	.loc 1 378 0
	mov	%d3, -1
	st.w	[%a2]0, %d3
	.loc 1 372 0
	st.b	[%a2] 4, %d2
	.loc 1 373 0
	st.b	[%a2] 5, %d2
	.loc 1 374 0
	st.b	[%a2] 6, %d2
	.loc 1 375 0
	st.b	[%a2] 7, %d2
	.loc 1 376 0
	st.b	[%a2] 12, %d2
	.loc 1 377 0
	st.b	[%a2] 13, %d2
	.loc 1 379 0
	st.w	[%a2] 8, %d3
	.loc 1 382 0
	mov.aa	%a2, %a3
	st.w	[%a2+]4, %d3
	.loc 1 383 0
	st.b	[%a2] 1, %d2
	.loc 1 387 0
	mov.a	%a2, %d11
	.loc 1 384 0
	st.b	[%a3] 4, %d2
	.loc 1 387 0
	ld.a	%a4, [%a2]0
	mov	%d4, 0
	mov	%d5, 96
	call	Fee_SrvMemSet8
.LVL14:
	.loc 1 393 0
	movh.a	%a2, hi:Fee_LastErasedMarker_u16
	lea	%a2, [%a2] lo:Fee_LastErasedMarker_u16
	.loc 1 390 0
	mov	%d2, 1
	.loc 1 393 0
	addsc.a	%a2, %a2, %d15, 1
	.loc 1 390 0
	st.b	[%a15] 53, %d2
	.loc 1 393 0
	mov	%d2, 0
	st.h	[%a2]0, %d2
.LVL15:
	.loc 1 399 0
	movh.a	%a2, hi:Fee_FlashProp_st
	lea	%a2, [%a2] lo:Fee_FlashProp_st
	addsc.a	%a2, %a2, %d8, 0
	.loc 1 408 0
	mov	%d10, 0
	.loc 1 399 0
	ld.w	%d8, [%a2]0
	add	%d8, -8
.LVL16:
.L16:
	.loc 1 414 0
	addi	%d8, %d8, 8
.LVL17:
	.loc 1 421 0
	mov	%d4, %d8
	mov	%d5, 8
	call	Fls_17_Dmu_BlankCheck
.LVL18:
	jeq	%d2, 1, .L36
	.loc 1 424 0
	mov	%d2, 2
	st.b	[%a15] 53, %d2
	ld.bu	%d2, [%a12] lo:Fee_NumFlashBanksUsed_u8
	j	.L2
.LVL19:
.L15:
	.loc 1 710 0
	addsc.a	%a2, %a13, %d15, 3
	addsc.a	%a2, %a2, %d15, 3
	mov	%d3, 1
	st.b	[%a2] 13, %d3
	.loc 1 714 0
	add	%d15, 1
	.loc 1 713 0
	mov	%d3, 0
	st.b	[%a15] 53, %d3
	.loc 1 714 0
	and	%d15, 255
.LVL20:
	.loc 1 715 0
	j	.L2
.LVL21:
.L13:
	.loc 1 684 0
	mov.a	%a2, %d12
	ld.bu	%d2, [%a2]0
	jnz	%d2, .L37
.L46:
	.loc 1 687 0
	call	Fls_17_Dmu_MainFunction
.LVL22:
	j	.L37
.L12:
	.loc 1 661 0
	addi	%d8, %d8, 8
.LVL23:
	.loc 1 663 0
	mov	%d4, %d8
	mov	%d5, 8
	call	Fls_17_Dmu_BlankCheck
.LVL24:
	jeq	%d2, 1, .L36
	.loc 1 666 0
	mov	%d2, 8
	st.b	[%a15] 53, %d2
	ld.bu	%d2, [%a12] lo:Fee_NumFlashBanksUsed_u8
	j	.L2
.L11:
	.loc 1 512 0
	mov.a	%a2, %d11
	mov.aa	%a4, %SP
	ld.a	%a5, [%a2]0
	call	Fee_LLCopyPageBuff2Marker
.LVL25:
	.loc 1 515 0
	ld.hu	%d2, [%SP]0
	mov.u	%d3, 51966
	jeq	%d2, %d3, .L51
.L24:
	.loc 1 632 0
	mov	%d2, 1
	st.b	[%a15] 53, %d2
	ld.bu	%d2, [%a12] lo:Fee_NumFlashBanksUsed_u8
	.loc 1 634 0
	j	.L2
.L10:
	.loc 1 640 0
	mov	%d3, 0
	st.b	[%a15] 53, %d3
	.loc 1 643 0
	ld.bu	%d3, [%a14] lo:Fee_RdWrRetries_u8
	jz	%d3, .L45
	.loc 1 646 0
	add	%d3, -1
	st.b	[%a14] lo:Fee_RdWrRetries_u8, %d3
	j	.L2
.L36:
	.loc 1 672 0
	mov	%d2, 0
	.loc 1 673 0
	add	%d15, 1
	.loc 1 672 0
	st.b	[%a15] 53, %d2
	.loc 1 673 0
	and	%d15, 255
.LVL26:
	ld.bu	%d2, [%a12] lo:Fee_NumFlashBanksUsed_u8
	j	.L2
.LVL27:
.L21:
	.loc 1 478 0
	mov	%d2, 0
	st.b	[%a15] 53, %d2
	.loc 1 479 0
	add	%d15, 1
	.loc 1 482 0
	mov	%d2, 3
	st.b	[%a14] lo:Fee_RdWrRetries_u8, %d2
	.loc 1 479 0
	and	%d15, 255
.LVL28:
	ld.bu	%d2, [%a12] lo:Fee_NumFlashBanksUsed_u8
	j	.L2
.LVL29:
.L51:
	.loc 1 519 0
	mov	%d5, %d3
	mov.aa	%a4, %SP
	mov	%d4, 6
	mov	%d6, 0
	call	Crc_CalculateCRC16
.LVL30:
	.loc 1 525 0
	ld.hu	%d3, [%SP] 6
	jne	%d3, %d2, .L24
	.loc 1 528 0
	ld.bu	%d3, [%SP] 3
	.loc 1 529 0
	ld.bu	%d2, [%SP] 4
.LVL31:
	.loc 1 528 0
	sh	%d3, %d3, 16
.LVL32:
	.loc 1 529 0
	sh	%d2, %d2, 8
	or	%d2, %d3
.LVL33:
	.loc 1 530 0
	ld.bu	%d3, [%SP] 5
	or	%d3, %d2
.LVL34:
	.loc 1 534 0
	ld.bu	%d2, [%SP] 2
	jz	%d2, .L26
	jlt.u	%d2, 4, .L27
	jne	%d2, 5, .L26
	.loc 1 554 0
	movh.a	%a3, hi:Fee_FlashProp_st
	.loc 1 555 0
	sh	%d2, %d15, 4
	.loc 1 554 0
	lea	%a3, [%a3] lo:Fee_FlashProp_st
	addsc.a	%a3, %a3, %d2, 0
	.loc 1 555 0
	addsc.a	%a2, %a13, %d2, 0
	.loc 1 554 0
	ld.w	%d2, [%a3] 8
	insert	%d2, %d2, 0, 0, 24
	.loc 1 555 0
	or	%d3, %d2
.LVL35:
	st.w	[%a2] 8, %d3
	j	.L24
.LVL36:
.L27:
	.loc 1 540 0
	addsc.a	%a2, %a13, %d15, 3
	addsc.a	%a2, %a2, %d15, 3
	ld.w	%d5, [%a2]0
	ge.u	%d4, %d3, %d5
	or.eq	%d4, %d5, -1
	jz	%d4, .L26
	.loc 1 544 0
	st.w	[%a2]0, %d3
.L26:
	.loc 1 567 0
	add	%d2, -1
	jge.u	%d2, 6, .L24
	movh.a	%a2, hi:.L30
	lea	%a2, [%a2] lo:.L30
	addsc.a	%a2, %a2, %d2, 2
	ji	%a2
	.align 2
	.align 2
.L30:
	.code32
	j	.L29
	.code32
	j	.L31
	.code32
	j	.L32
	.code32
	j	.L33
	.code32
	j	.L24
	.code32
	j	.L34
.L33:
	.loc 1 595 0
	addsc.a	%a2, %a13, %d15, 3
	addsc.a	%a2, %a2, %d15, 3
	ld.bu	%d2, [%a2] 7
	add	%d2, 1
	st.b	[%a2] 7, %d2
	.loc 1 596 0
	j	.L24
.L32:
	.loc 1 589 0
	addsc.a	%a2, %a13, %d15, 3
	addsc.a	%a2, %a2, %d15, 3
	ld.bu	%d2, [%a2] 6
	add	%d2, 1
	st.b	[%a2] 6, %d2
	.loc 1 590 0
	j	.L24
.L31:
	.loc 1 583 0
	addsc.a	%a2, %a13, %d15, 3
	addsc.a	%a2, %a2, %d15, 3
	ld.bu	%d2, [%a2] 5
	add	%d2, 1
	st.b	[%a2] 5, %d2
	.loc 1 584 0
	j	.L24
.L29:
	.loc 1 572 0
	addsc.a	%a2, %a13, %d15, 3
	addsc.a	%a2, %a2, %d15, 3
	ld.bu	%d2, [%a2] 4
	add	%d2, 1
	st.b	[%a2] 4, %d2
	.loc 1 577 0
	movh.a	%a2, hi:Fee_LastErasedMarker_u16
	lea	%a2, [%a2] lo:Fee_LastErasedMarker_u16
	addsc.a	%a2, %a2, %d15, 1
	st.h	[%a2]0, %d10
	.loc 1 578 0
	j	.L24
.L34:
	.loc 1 601 0
	addsc.a	%a2, %a13, %d15, 3
	addsc.a	%a2, %a2, %d15, 3
	ld.bu	%d2, [%a2] 12
	add	%d2, 1
	st.b	[%a2] 12, %d2
	.loc 1 602 0
	j	.L24
.LFE25:
	.size	Fee_LLSearchSectors, .-Fee_LLSearchSectors
.section .text.Fee_LLFindEmptyPage,"ax",@progbits
	.align 1
	.global	Fee_LLFindEmptyPage
	.type	Fee_LLFindEmptyPage, @function
Fee_LLFindEmptyPage:
.LFB26:
	.loc 1 753 0
.LVL37:
	sub.a	%SP, 24
.LCFI1:
	.loc 1 977 0
	lea	%a4, [%SP] 4
	.loc 1 753 0
	mov	%d8, %d4
	.loc 1 977 0
	call	Fee_LLInitializeLastHdrVariable
.LVL38:
	movh.a	%a14, hi:Fee_RdWrOrder_st
	lea	%a12, [%a14] lo:Fee_RdWrOrder_st
	.loc 1 1155 0
	movh.a	%a13, hi:Fee_stMain
	.loc 1 983 0
	mov.aa	%a15, %a12
	.loc 1 989 0
	mov	%d9, -1
	.loc 1 999 0
	mov	%d10, 1
	.loc 1 1055 0
	mov.u	%d11, 65535
	.loc 1 1094 0
	mov	%d12, 2
	.loc 1 1155 0
	lea	%a13, [%a13] lo:Fee_stMain
.LVL39:
.L69:
	.loc 1 983 0
	ld.bu	%d15, [%a12] 55
	jeq	%d15, 1, .L54
	jz	%d15, .L55
	jne	%d15, 2, .L53
	.loc 1 1121 0
	ld.w	%d2, [%a15]0
	.loc 1 1124 0
	ld.w	%d3, [%a15] 32
	.loc 1 1121 0
	st.w	[%a15] 4, %d2
	.loc 1 1124 0
	addi	%d15, %d3, 8
	jge.u	%d2, %d15, .L64
	.loc 1 1129 0
	mov	%d4, %d8
	.loc 1 1126 0
	st.w	[%a15] 4, %d15
	.loc 1 1129 0
	call	Fee_LLGetSecEndAddress
.LVL40:
	jlt.u	%d2, %d15, .L65
	ld.w	%d2, [%a15] 4
.L66:
	.loc 1 1138 0
	st.w	[%a14] lo:Fee_RdWrOrder_st, %d2
.L64:
.LVL41:
	.loc 1 1161 0
	mov	%d15, 0
	.loc 1 1155 0
	mov	%d2, 1
	.loc 1 1161 0
	st.b	[%a12] 55, %d15
	ret
.LVL42:
.L53:
	mov	%d15, 0
	.loc 1 1155 0
	mov	%d2, 6
	.loc 1 1161 0
	st.b	[%a12] 55, %d15
	ret
.LVL43:
.L55:
	.loc 1 992 0
	mov	%d4, %d8
	.loc 1 989 0
	st.h	[%SP] 16, %d9
	.loc 1 992 0
	call	Fee_LLGetSecStartAddress
.LVL44:
	.loc 1 999 0
	st.b	[%a15] 55, %d10
	.loc 1 992 0
	st.w	[%a15]0, %d2
.L54:
	.loc 1 1007 0
	lea	%a4, [%SP] 4
	call	Fee_SearchLastBlkHeader
.LVL45:
	.loc 1 1015 0
	jz	%d2, .L57
	jne	%d2, 1, .L53
	.loc 1 1055 0
	ld.hu	%d15, [%SP] 16
	jeq	%d15, %d11, .L59
	ld.w	%d3, [%SP] 4
	.loc 1 1059 0
	ld.hu	%d15, [%SP] 14
	addi	%d2, %d3, 14
.LVL46:
	add	%d15, %d2
	st.w	[%a12]0, %d15
	.loc 1 1063 0
	and	%d2, %d15, 7
	jz	%d2, .L60
	add	%d15, 1
	j	.L61
.L71:
	mov	%d15, %d3
.L61:
	and	%d2, %d15, 7
	add	%d3, %d15, 1
	jnz	%d2, .L71
	st.w	[%a12]0, %d15
.L60:
	.loc 1 1069 0
	mov	%d4, %d8
	call	Fee_LLGetSecEndAddress
.LVL47:
	jlt.u	%d2, %d15, .L86
.L62:
	.loc 1 1094 0
	st.b	[%a12] 55, %d12
.L57:
	.loc 1 1155 0
	ld.bu	%d15, [%a13]0
	jz	%d15, .L69
	mov	%d2, 0
	ret
.L65:
	.loc 1 1131 0
	mov	%d4, %d8
	call	Fee_LLGetSecEndAddress
.LVL48:
	st.w	[%a15] 4, %d2
	j	.L66
.LVL49:
.L59:
	.loc 1 1080 0
	ld.w	%d15, [%a12] 24
	jeq	%d15, -1, .L63
	.loc 1 1083 0
	st.w	[%a15]0, %d15
	j	.L62
.LVL50:
.L86:
	.loc 1 1071 0
	mov	%d4, %d8
	call	Fee_LLGetSecEndAddress
.LVL51:
	st.w	[%a12]0, %d2
	j	.L62
.LVL52:
.L63:
	.loc 1 1088 0
	mov	%d4, %d8
	call	Fee_LLGetSecStartAddress
.LVL53:
	st.w	[%a15]0, %d2
	j	.L62
.LFE26:
	.size	Fee_LLFindEmptyPage, .-Fee_LLFindEmptyPage
.section .text.Fee_CheckErasedSectorEmpty,"ax",@progbits
	.align 1
	.global	Fee_CheckErasedSectorEmpty
	.type	Fee_CheckErasedSectorEmpty, @function
Fee_CheckErasedSectorEmpty:
.LFB27:
	.loc 1 1187 0
.LVL54:
	.loc 1 1194 0
	movh	%d10, hi:Fee_NumFlashBanksUsed_u8
	mov.a	%a2, %d10
	movh	%d14, hi:Fee_stMain
	ld.bu	%d15, [%a2] lo:Fee_NumFlashBanksUsed_u8
	movh.a	%a14, hi:Fee_LLSectorOrder_st
	movh	%d11, hi:.L92
	addi	%d14, %d14, lo:Fee_stMain
	mov	%e8, 0
	lea	%a14, [%a14] lo:Fee_LLSectorOrder_st
	addi	%d11, %d11, lo:.L92
	mov.a	%a13, %d14
	jnz	%d15, .L107
	j	.L87
.LVL55:
.L89:
	addi	%d2, %d12, 1
	.loc 1 1194 0 is_stmt 0 discriminator 2
	and	%d2, %d2, 255
	add	%d8, 1
	jge.u	%d2, %d15, .L112
.LVL56:
.L107:
	and	%d2, %d8, 255
	.loc 1 1201 0 is_stmt 1
	addsc.a	%a15, %a14, %d2, 3
	and	%d12, %d8, 255
.LVL57:
	ld.bu	%d2, [%a15] 4
	lea	%a2, [%a15] 4
	jne	%d2, 1, .L89
	.loc 1 1202 0 discriminator 1
	movh.a	%a3, hi:Fee_LastErasedMarker_u16
	lea	%a3, [%a3] lo:Fee_LastErasedMarker_u16
	addsc.a	%a15, %a3, %d9, 1
	.loc 1 1201 0 discriminator 1
	ld.hu	%d3, [%a15]0
	jge.u	%d3, 10, .L89
	.loc 1 1208 0
	movh.a	%a15, hi:Fee_FlashProp_st
	mov.d	%d3, %a15
	.loc 1 1205 0
	ld.bu	%d9, [%a2] 1
.LVL58:
	.loc 1 1208 0
	addi	%d15, %d3, lo:Fee_FlashProp_st
	madd	%d3, %d15, %d9, 16
	.loc 1 1209 0
	addsc.a	%a3, %a3, %d9, 1
	.loc 1 1212 0
	movh.a	%a12, hi:Fee_RdWrOrder_st
	.loc 1 1208 0
	mov.a	%a15, %d3
	.loc 1 1209 0
	ld.hu	%d13, [%a3]0
	.loc 1 1208 0
	ld.w	%d15, [%a15]0
	.loc 1 1209 0
	add	%d13, 1
	.loc 1 1208 0
	madd	%d13, %d15, %d13, 8
.LVL59:
	.loc 1 1212 0
	lea	%a12, [%a12] lo:Fee_RdWrOrder_st
	mov	%d15, 1
	st.b	[%a12] 54, %d2
.LVL60:
	.loc 1 1221 0
	add	%d15, -1
	jge.u	%d15, 4, .L111
.LVL61:
.L115:
	mov.a	%a2, %d11
	addsc.a	%a15, %a2, %d15, 2
	ji	%a15
	.align 2
	.align 2
.L92:
	.code32
	j	.L91
	.code32
	j	.L93
	.code32
	j	.L94
	.code32
	j	.L95
.L94:
	.loc 1 1265 0
	mov	%d4, %d9
	mov	%d5, 2
	call	Fee_LLWriteMarker
.LVL62:
	jz	%d2, .L111
.L95:
.LVL63:
	mov.a	%a15, %d10
	.loc 1 1284 0
	mov	%d15, 0
	st.b	[%a12] 54, %d15
	addi	%d2, %d12, 1
	ld.bu	%d15, [%a15] lo:Fee_NumFlashBanksUsed_u8
.LVL64:
	.loc 1 1194 0
	and	%d2, %d2, 255
	add	%d8, 1
	jlt.u	%d2, %d15, .L107
.LVL65:
.L112:
	ret
.LVL66:
.L93:
	.loc 1 1246 0
	mov.a	%a2, %d14
	mov.aa	%a15, %a13
	ld.bu	%d15, [%a2]0
	jz	%d15, .L113
.L97:
	.loc 1 1254 0
	call	Fee_CheckFlsJobResult
.LVL67:
	.loc 1 1296 0
	ld.bu	%d15, [%a15]0
	jnz	%d15, .L114
.L102:
	ld.bu	%d15, [%a12] 54
	.loc 1 1221 0
	add	%d15, -1
	jlt.u	%d15, 4, .L115
.L111:
	mov.aa	%a15, %a13
.L116:
	.loc 1 1296 0
	ld.bu	%d15, [%a15]0
	jz	%d15, .L102
.L114:
	mov.a	%a2, %d10
	ld.bu	%d15, [%a2] lo:Fee_NumFlashBanksUsed_u8
	j	.L89
.L91:
	.loc 1 1228 0
	mov	%d4, %d13
	mov	%d5, 8
	call	Fls_17_Dmu_BlankCheck
.LVL68:
	jeq	%d2, 1, .L111
	.loc 1 1230 0
	mov	%d3, 2
	st.b	[%a12] 54, %d3
	mov.aa	%a15, %a13
	j	.L116
.L113:
	.loc 1 1249 0
	call	Fls_17_Dmu_MainFunction
.LVL69:
	j	.L97
.LVL70:
.L87:
	ret
.LFE27:
	.size	Fee_CheckErasedSectorEmpty, .-Fee_CheckErasedSectorEmpty
.section .text.Fee_LLDetectActiveSector,"ax",@progbits
	.align 1
	.global	Fee_LLDetectActiveSector
	.type	Fee_LLDetectActiveSector, @function
Fee_LLDetectActiveSector:
.LFB24:
	.loc 1 60 0
.LVL71:
	sub.a	%SP, 48
.LCFI2:
	.loc 1 80 0
	mov	%d15, 0
	.loc 1 86 0
	mov	%d2, -1
	.loc 1 91 0
	lea	%a4, [%SP] 16
	.loc 1 80 0
	st.b	[%SP] 20, %d15
	.loc 1 81 0
	st.b	[%SP] 21, %d15
	.loc 1 82 0
	st.b	[%SP] 22, %d15
	.loc 1 83 0
	st.b	[%SP] 23, %d15
	.loc 1 84 0
	st.b	[%SP] 28, %d15
	.loc 1 85 0
	st.b	[%SP] 29, %d15
	.loc 1 86 0
	st.w	[%SP] 16, %d2
	.loc 1 87 0
	st.w	[%SP] 24, %d2
.LVL72:
	.loc 1 80 0
	st.b	[%SP] 36, %d15
	.loc 1 81 0
	st.b	[%SP] 37, %d15
	.loc 1 82 0
	st.b	[%SP] 38, %d15
	.loc 1 83 0
	st.b	[%SP] 39, %d15
	.loc 1 84 0
	st.b	[%SP] 44, %d15
	.loc 1 85 0
	st.b	[%SP] 45, %d15
	.loc 1 86 0
	st.w	[%SP] 32, %d2
	.loc 1 87 0
	st.w	[%SP] 40, %d2
.LVL73:
	.loc 1 91 0
	call	Fee_LLSearchSectors
.LVL74:
	.loc 1 115 0
	movh.a	%a14, hi:Fee_NumFlashBanksUsed_u8
	ld.bu	%d3, [%a14] lo:Fee_NumFlashBanksUsed_u8
	jz	%d3, .L118
	mov	%d15, 0
	.loc 1 174 0
	mov	%d4, -1
	.loc 1 167 0
	mov	%d1, 1
	.loc 1 150 0
	mov	%d0, 2
	.loc 1 142 0
	mov	%d6, 3
	.loc 1 133 0
	mov	%d5, 4
	j	.L126
.LVL75:
.L121:
	.loc 1 139 0
	ld.bu	%d2, [%a3] 2
	jz	%d2, .L122
	.loc 1 142 0
	st.b	[%a15] -44, %d6
.L120:
.LVL76:
	add	%d15, 1
.LVL77:
	.loc 1 115 0 discriminator 2
	and	%d2, %d15, 255
	jge.u	%d2, %d3, .L181
.LVL78:
.L126:
	.loc 1 117 0
	mov.d	%d2, %SP
	lea	%a2, [%SP] 48
	addi	%d2, %d2, 48
	madd	%d2, %d2, %d15, 16
	addsc.a	%a15, %a2, %d15, 3
	mov.a	%a2, %d2
	st.b	[%a15] -43, %d15
	ld.w	%d2, [%a2] -32
	st.w	[%a15] -48, %d2
	.loc 1 121 0
	ld.bu	%d2, [%a2] -19
	jeq	%d2, 1, .L177
	.loc 1 130 0
	lea	%a3, [%a2] -28
	ld.bu	%d2, [%a3] 3
	jz	%d2, .L121
.L177:
	add	%d15, 1
.LVL79:
	.loc 1 133 0
	st.b	[%a15] -44, %d5
	.loc 1 134 0
	st.w	[%a15] -48, %d4
.LVL80:
	.loc 1 115 0
	and	%d2, %d15, 255
	jlt.u	%d2, %d3, .L126
.L181:
.LVL81:
	movh.a	%a4, hi:Fee_SecChngCnt_u32
	movh.a	%a12, hi:Fee_LLSectorOrder_st
	movh.a	%a3, hi:Fee_idxLLSectorOrder_au8
	ld.w	%d8, [%a4] lo:Fee_SecChngCnt_u32
	mov	%d9, 0
	mov	%d1, 0
	lea	%a12, [%a12] lo:Fee_LLSectorOrder_st
	lea	%a3, [%a3] lo:Fee_idxLLSectorOrder_au8
	.loc 1 244 0
	mov	%d10, 13
.LVL82:
.L134:
	.loc 1 193 0
	mov	%d5, 0
	mov	%d2, -1
	mov	%d6, 255
	mov	%d4, 0
.LVL83:
.L128:
	.loc 1 199 0
	lea	%a2, [%SP] 48
	addsc.a	%a15, %a2, %d5, 3
	ld.w	%d15, [%a15] -48
	jlt.u	%d2, %d15, .L127
.LVL84:
	.loc 1 199 0 is_stmt 0 discriminator 1
	ld.bu	%d0, [%a15] -44
	.loc 1 200 0 is_stmt 1 discriminator 1
	ne	%d7, %d15, -1
	and.ne	%d7, %d0, 13
	seln	%d2, %d7, %d2, %d15
.LVL85:
	seln	%d6, %d7, %d6, %d4
.LVL86:
.L127:
	add	%d5, 1
.LVL87:
	.loc 1 196 0 discriminator 2
	and	%d4, %d5, 255
	jlt.u	%d4, %d3, .L128
	.loc 1 208 0
	eq	%d15, %d6, 255
	jnz	%d15, .L129
	lea	%a2, [%SP] 48
	addsc.a	%a15, %a2, %d6, 3
	ld.bu	%d15, [%a15] -44
.LVL88:
.L130:
	.loc 1 224 0
	lea	%a2, [%SP] 48
	addsc.a	%a15, %a2, %d6, 3
	addsc.a	%a2, %a12, %d9, 3
	ld.bu	%d2, [%a15] -43
	.loc 1 228 0
	ld.w	%d4, [%a15] -48
	.loc 1 226 0
	st.b	[%a2] 4, %d15
	.loc 1 228 0
	st.w	[%a2]0, %d4
	.loc 1 224 0
	st.b	[%a2] 5, %d2
	.loc 1 240 0
	addsc.a	%a2, %a3, %d2, 0
	add	%d9, 1
	.loc 1 231 0
	and	%d15, %d15, 251
	.loc 1 240 0
	st.b	[%a2]0, %d1
	.loc 1 244 0
	st.b	[%a15] -44, %d10
.LVL89:
	.loc 1 190 0
	and	%d1, %d9, 255
	.loc 1 235 0
	cmov	%d8, %d15, %d4
	.loc 1 190 0
	jlt.u	%d1, %d3, .L134
	mov.d	%d2, %a14
	st.w	[%a4] lo:Fee_SecChngCnt_u32, %d8
.LVL90:
	.loc 1 250 0
	mov	%d9, 0
	.loc 1 252 0
	mov.aa	%a13, %a12
	addi	%d11, %d2, lo:Fee_NumFlashBanksUsed_u8
	.loc 1 250 0
	jne	%d3, 1, .L163
	j	.L118
.LVL91:
.L138:
	add	%d15, %d10, 2
	.loc 1 250 0 is_stmt 0 discriminator 2
	and	%d15, 255
	add	%d9, 1
	jge.u	%d15, %d3, .L118
.LVL92:
.L163:
	and	%d10, %d9, 255
.LVL93:
	add	%d15, %d10, 1
	.loc 1 252 0 is_stmt 1
	and	%d15, 255
	addsc.a	%a15, %a12, %d15, 3
	.loc 1 253 0
	ld.bu	%d2, [%a15] 4
	.loc 1 252 0
	ld.bu	%d8, [%a15] 5
.LVL94:
	.loc 1 253 0
	jne	%d2, 1, .L138
	.loc 1 254 0 discriminator 1
	addsc.a	%a15, %a13, %d15, 3
.LVL95:
	.loc 1 253 0 discriminator 1
	ld.bu	%d15, [%a15] -4
.LVL96:
	jeq	%d15, 3, .L139
.LVL97:
	add	%d15, %d10, 2
	.loc 1 250 0
	and	%d15, 255
	add	%d9, 1
	jlt.u	%d15, %d3, .L163
.LVL98:
.L118:
	.loc 1 265 0
	call	Fee_CheckErasedSectorEmpty
.LVL99:
.LBB6:
.LBB7:
	.loc 1 1379 0
	ld.bu	%d15, [%a14] lo:Fee_NumFlashBanksUsed_u8
	movh.a	%a12, hi:Fee_LLSectorOrder_st
	mov	%d4, 0
	mov	%d6, 255
	mov	%d2, 255
	lea	%a12, [%a12] lo:Fee_LLSectorOrder_st
	mov	%d5, 0
	jnz	%d15, .L162
	j	.L179
.LVL100:
.L145:
	.loc 1 1413 0
	and	%d5, %d3, 251
	jnz	%d5, .L143
	.loc 1 1416 0
	eq	%d3, %d6, 255
	.loc 1 1415 0
	and	%d3, %d0
	jz	%d3, .L143
.LVL101:
.L178:
	.loc 1 1419 0
	ld.bu	%d2, [%a2] 1
.LVL102:
.L143:
	add	%d4, 1
.LVL103:
	.loc 1 1379 0
	and	%d5, %d4, 255
	jge.u	%d5, %d15, .L182
.LVL104:
.L162:
	.loc 1 1382 0
	addsc.a	%a15, %a12, %d4, 3
	ld.bu	%d3, [%a15] 4
	lea	%a2, [%a15] 4
	jeq	%d3, 3, .L178
	.loc 1 1389 0
	jeq	%d3, 2, .L178
	.loc 1 1400 0
	eq	%d7, %d3, 1
	and.eq	%d7, %d2, 255
	eq	%d0, %d2, 255
	jz	%d7, .L145
	.loc 1 1404 0
	eq	%d3, %d6, 255
	add	%d4, 1
.LVL105:
	sel	%d6, %d3, %d5, %d6
.LVL106:
	.loc 1 1379 0
	and	%d5, %d4, 255
	.loc 1 1404 0
	sel	%d2, %d3, %d2, 255
.LVL107:
	.loc 1 1379 0
	jlt.u	%d5, %d15, .L162
.LVL108:
.L182:
	.loc 1 1425 0
	eq	%d3, %d2, 255
	and.ne	%d3, %d6, 255
	jz	%d3, .L179
	.loc 1 1428 0
	addsc.a	%a12, %a12, %d6, 3
	ld.bu	%d2, [%a12] 5
.L179:
.LVL109:
.LBE7:
.LBE6:
	.loc 1 274 0
	mov.d	%d4, %SP
	movh.a	%a2, hi:Fee_LLSectorOrder_st
	addi	%d4, %d4, 48
	madd	%d4, %d4, %d2, 16
	lea	%a2, [%a2] lo:Fee_LLSectorOrder_st
	.loc 1 305 0
	add	%d10, %d15, -1
	.loc 1 274 0
	mov.a	%a15, %d4
	movh.a	%a4, hi:Fee_idxLLSectorOrder_au8
	ld.w	%d3, [%a15] -24
	.loc 1 305 0
	addsc.a	%a7, %a2, %d10, 3
	.loc 1 274 0
	movh.a	%a15, hi:Fee_RdWrOrder_st
	lea	%a15, [%a15] lo:Fee_RdWrOrder_st
	lea	%a4, [%a4] lo:Fee_idxLLSectorOrder_au8
	st.w	[%a15] 24, %d3
	.loc 1 285 0
	mov.aa	%a5, %a2
	.loc 1 300 0
	mov.aa	%a12, %a4
	.loc 1 305 0
	lea	%a6, [%a7] 4
	mov	%d12, 4
	.loc 1 307 0
	mov	%d11, -1
.L151:
.LVL110:
	.loc 1 282 0
	jlt.u	%d15, 2, .L176
	mov	%d6, 1
	mov	%d5, 0
	mov	%d3, 1
	j	.L148
.LVL111:
.L149:
	add	%d6, 1
.LVL112:
	.loc 1 282 0 is_stmt 0 discriminator 2
	and	%d3, %d6, 255
	jge.u	%d3, %d15, .L183
.LVL113:
.L148:
	.loc 1 285 0 is_stmt 1
	addsc.a	%a15, %a2, %d6, 3
	ld.bu	%d4, [%a15] 4
	add	%d4, -2
	and	%d4, %d4, 255
	jge.u	%d4, 2, .L149
	addi	%d4, %d6, -1
	.loc 1 287 0
	addsc.a	%a15, %a5, %d4, 3
	ld.bu	%d4, [%a15] 4
	add	%d4, -2
	and	%d4, %d4, 255
	jlt.u	%d4, 2, .L149
	.loc 1 291 0
	ld.bu	%d9, [%a15] 5
.LVL114:
	mov	%d7, 0
	addi	%d8, %d3, -1
.LVL115:
.L150:
	and	%d1, %d7, 255
.LVL116:
	add	%d4, %d1, %d3
	.loc 1 297 0 discriminator 1
	and	%d4, %d4, 255
	addsc.a	%a3, %a2, %d4, 3
	addi	%d0, %d4, -1
	addsc.a	%a15, %a2, %d0, 3
	ld.d	%e4, [%a3]0
	add	%d7, 1
	st.d	[%a15+]4, %e4
	.loc 1 300 0 discriminator 1
	ld.bu	%d4, [%a15] 1
	addsc.a	%a15, %a4, %d4, 0
	add	%d4, %d1, %d8
	st.b	[%a15]0, %d4
.LVL117:
	add	%d4, %d3, %d7
	.loc 1 302 0 discriminator 1
	and	%d4, %d4, 255
	jlt.u	%d4, %d15, .L150
	.loc 1 308 0
	addsc.a	%a15, %a12, %d9, 0
	add	%d6, 1
	.loc 1 305 0
	st.b	[%a6]0, %d12
	.loc 1 306 0
	st.b	[%a6] 1, %d9
	.loc 1 307 0
	st.w	[%a7]0, %d11
	.loc 1 308 0
	st.b	[%a15]0, %d10
.LVL118:
	.loc 1 282 0
	and	%d3, %d6, 255
	.loc 1 309 0
	mov	%d5, 1
.LVL119:
	.loc 1 282 0
	jlt.u	%d3, %d15, .L148
.LVL120:
.L183:
	.loc 1 313 0
	jnz	%d5, .L151
.L176:
	.loc 1 317 0
	ret
.LVL121:
.L122:
	.loc 1 147 0
	ld.bu	%d2, [%a3] 1
	jz	%d2, .L123
	.loc 1 150 0
	st.b	[%a15] -44, %d0
	j	.L120
.LVL122:
.L140:
	.loc 1 257 0
	call	Fls_17_Dmu_MainFunction
.LVL123:
.L139:
	.loc 1 256 0
	mov	%d4, %d8
	mov	%d5, 2
	call	Fee_LLWriteMarker
.LVL124:
	jz	%d2, .L140
	mov.a	%a2, %d11
	ld.bu	%d3, [%a2]0
	j	.L138
.LVL125:
.L129:
	jeq	%d2, -1, .L184
.LVL126:
.L131:
	ld.bu	%d15, [%SP] 2044
	.loc 1 208 0
	mov	%d6, 255
	j	.L130
.LVL127:
.L123:
	.loc 1 155 0
	ld.bu	%d7, [%a2] -28
	jz	%d7, .L124
	.loc 1 161 0
	ld.bu	%d7, [%a2] -20
	jz	%d7, .L125
	.loc 1 163 0
	st.b	[%a15] -44, %d2
	.loc 1 164 0
	st.w	[%a15] -48, %d4
	j	.L120
.LVL128:
.L184:
	.loc 1 208 0
	mov	%d2, 0
.LVL129:
	j	.L132
.LVL130:
.L185:
	add	%d2, 1
.LVL131:
	.loc 1 210 0 discriminator 2
	and	%d15, %d2, 255
	jge.u	%d15, %d3, .L131
.LVL132:
.L132:
	.loc 1 214 0
	lea	%a2, [%SP] 48
	addsc.a	%a15, %a2, %d2, 3
	mov	%d6, %d2
	ld.bu	%d15, [%a15] -44
	.loc 1 213 0
	ne	%d4, %d15, 13
	jz	%d4, .L185
	j	.L130
.LVL133:
.L124:
	.loc 1 173 0
	st.b	[%a15] -44, %d7
	.loc 1 174 0
	st.w	[%a15] -48, %d4
	j	.L120
.L125:
	.loc 1 167 0
	st.b	[%a15] -44, %d1
	j	.L120
.LFE24:
	.size	Fee_LLDetectActiveSector, .-Fee_LLDetectActiveSector
.section .text.Fee_GetMostCurrentSectorIdx,"ax",@progbits
	.align 1
	.global	Fee_GetMostCurrentSectorIdx
	.type	Fee_GetMostCurrentSectorIdx, @function
Fee_GetMostCurrentSectorIdx:
.LFB28:
	.loc 1 1317 0
.LVL134:
	.loc 1 1379 0
	movh.a	%a15, hi:Fee_NumFlashBanksUsed_u8
	ld.bu	%d6, [%a15] lo:Fee_NumFlashBanksUsed_u8
	.loc 1 1319 0
	mov	%d2, 255
	.loc 1 1379 0
	jz	%d6, .L197
	movh.a	%a3, hi:Fee_LLSectorOrder_st
	mov	%d3, 0
	mov	%d5, %d2
	mov	%d4, 0
	lea	%a3, [%a3] lo:Fee_LLSectorOrder_st
	j	.L193
.LVL135:
.L191:
	.loc 1 1413 0
	and	%d4, %d15, 251
	jnz	%d4, .L189
	.loc 1 1416 0
	eq	%d15, %d5, 255
	.loc 1 1415 0
	and	%d15, %d0
	jz	%d15, .L189
.LVL136:
.L204:
	.loc 1 1419 0
	ld.bu	%d2, [%a2] 1
.LVL137:
.L189:
	add	%d3, 1
.LVL138:
	.loc 1 1379 0 discriminator 2
	and	%d4, %d3, 255
	jge.u	%d4, %d6, .L205
.LVL139:
.L193:
	.loc 1 1382 0
	addsc.a	%a15, %a3, %d3, 3
	ld.bu	%d15, [%a15] 4
	lea	%a2, [%a15] 4
	jeq	%d15, 3, .L204
	.loc 1 1389 0
	jeq	%d15, 2, .L204
	.loc 1 1400 0
	eq	%d7, %d15, 1
	and.eq	%d7, %d2, 255
	eq	%d0, %d2, 255
	jz	%d7, .L191
	.loc 1 1404 0
	eq	%d15, %d5, 255
	add	%d3, 1
.LVL140:
	cmov	%d5, %d15, %d4
.LVL141:
	.loc 1 1379 0
	and	%d4, %d3, 255
	sel	%d2, %d15, %d2, 255
.LVL142:
	jlt.u	%d4, %d6, .L193
.LVL143:
.L205:
	.loc 1 1425 0
	eq	%d15, %d2, 255
	and.ne	%d15, %d5, 255
	jz	%d15, .L197
	.loc 1 1428 0
	addsc.a	%a3, %a3, %d5, 3
	ld.bu	%d2, [%a3] 5
.LVL144:
.L197:
	.loc 1 1433 0
	ret
.LFE28:
	.size	Fee_GetMostCurrentSectorIdx, .-Fee_GetMostCurrentSectorIdx
.section .text.Fee_IncAddressInsideSector,"ax",@progbits
	.align 1
	.global	Fee_IncAddressInsideSector
	.type	Fee_IncAddressInsideSector, @function
Fee_IncAddressInsideSector:
.LFB29:
	.loc 1 1453 0
.LVL145:
.LBB8:
.LBB9:
	.loc 1 1506 0
	movh.a	%a15, hi:Fee_NumFlashBanksUsed_u8
	ld.bu	%d6, [%a15] lo:Fee_NumFlashBanksUsed_u8
	movh.a	%a2, hi:Fee_FlashProp_st
.LBE9:
.LBE8:
	.loc 1 1455 0
	ld.w	%d2, [%a4]0
.LVL146:
.LBB11:
.LBB10:
	.loc 1 1506 0
	mov	%d15, 0
	lea	%a2, [%a2] lo:Fee_FlashProp_st
	jz	%d6, .L206
.LVL147:
.L216:
	.loc 1 1509 0
	sh	%d3, %d15, 4
	addsc.a	%a15, %a2, %d3, 0
	ld.w	%d7, [%a15]0
	jlt.u	%d2, %d7, .L209
	ld.w	%d7, [%a15] 4
	jge.u	%d7, %d2, .L221
.L209:
.LVL148:
	add	%d15, 1
.LVL149:
	.loc 1 1506 0
	and	%d3, %d15, 255
	jlt.u	%d3, %d6, .L216
	ret
.LVL150:
.L221:
.LBE10:
.LBE11:
	mov	%d15, %d4
.LVL151:
	.loc 1 1460 0
	jnz	%d5, .L222
.LVL152:
.L211:
	.loc 1 1475 0
	addsc.a	%a2, %a2, %d3, 0
	.loc 1 1471 0
	add	%d2, %d15
.LVL153:
	.loc 1 1475 0
	ld.w	%d15, [%a2] 12
.LVL154:
	.loc 1 1471 0
	st.w	[%a4]0, %d2
.LVL155:
	.loc 1 1475 0
	jge.u	%d15, %d2, .L206
	.loc 1 1477 0
	st.w	[%a4]0, %d15
.L206:
	ret
.LVL156:
.L222:
	.loc 1 1463 0
	and	%d5, %d4, 7
.LVL157:
	mov	%d15, %d4
	jz	%d5, .L211
	add	%d4, 1
.LVL158:
	extr.u	%d4, %d4, 0, 16
	mov	%d6, 0
.LVL159:
.L213:
	add	%d15, %d4, %d6
	extr.u	%d15, %d15, 0, 16
.LVL160:
	add	%d6, 1
	and	%d5, %d15, 7
	jnz	%d5, .L213
	j	.L211
.LFE29:
	.size	Fee_IncAddressInsideSector, .-Fee_IncAddressInsideSector
.section .text.Fee_GetPhysSectorByAddress,"ax",@progbits
	.align 1
	.global	Fee_GetPhysSectorByAddress
	.type	Fee_GetPhysSectorByAddress, @function
Fee_GetPhysSectorByAddress:
.LFB30:
	.loc 1 1500 0
.LVL161:
	.loc 1 1506 0
	movh.a	%a15, hi:Fee_NumFlashBanksUsed_u8
	ld.bu	%d3, [%a15] lo:Fee_NumFlashBanksUsed_u8
	.loc 1 1502 0
	mov	%d2, 255
	.loc 1 1506 0
	jz	%d3, .L224
	movh	%d5, hi:Fee_FlashProp_st
	mov	%d15, 0
	mov	%d2, 0
	addi	%d5, %d5, lo:Fee_FlashProp_st
.LVL162:
.L226:
	.loc 1 1509 0
	madd	%d6, %d5, %d15, 16
	mov.a	%a15, %d6
	ld.w	%d6, [%a15]0
	jlt.u	%d4, %d6, .L225
	.loc 1 1509 0 is_stmt 0 discriminator 1
	ld.w	%d6, [%a15] 4
	jge.u	%d6, %d4, .L224
.L225:
.LVL163:
	add	%d15, 1
.LVL164:
	.loc 1 1506 0 is_stmt 1 discriminator 2
	and	%d2, %d15, 255
	jlt.u	%d2, %d3, .L226
	.loc 1 1502 0
	mov	%d2, 255
.LVL165:
.L224:
	.loc 1 1522 0
	ret
.LFE30:
	.size	Fee_GetPhysSectorByAddress, .-Fee_GetPhysSectorByAddress
.section .bss.a2.Fee_LastErasedMarker_u16,"aw",@nobits
	.align 1
	.type	Fee_LastErasedMarker_u16, @object
	.size	Fee_LastErasedMarker_u16, 4
Fee_LastErasedMarker_u16:
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
	.uaword	.LFB25
	.uaword	.LFE25-.LFB25
	.byte	0x4
	.uaword	.LCFI0-.LFB25
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB26
	.uaword	.LFE26-.LFB26
	.byte	0x4
	.uaword	.LCFI1-.LFB26
	.byte	0xe
	.uleb128 0x18
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB27
	.uaword	.LFE27-.LFB27
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB24
	.uaword	.LFE24-.LFB24
	.byte	0x4
	.uaword	.LCFI2-.LFB24
	.byte	0xe
	.uleb128 0x30
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB28
	.uaword	.LFE28-.LFB28
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB29
	.uaword	.LFE29-.LFB29
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB30
	.uaword	.LFE30-.LFB30
	.align 2
.LEFDE12:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 4 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\inc\\Fls_17_Dmu.h"
	.file 5 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_Prv.h"
	.file 6 ".\\output\\inc/..\\..\\bsw\\Crc\\Crc.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x2ad7
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_LlDetectSector.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x18
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.string	"sint8"
	.byte	0x2
	.byte	0x4c
	.uaword	0x1ca
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x2
	.string	"uint8"
	.byte	0x2
	.byte	0x51
	.uaword	0x1e6
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x2
	.string	"uint16"
	.byte	0x2
	.byte	0x5b
	.uaword	0x212
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x2
	.string	"uint32"
	.byte	0x2
	.byte	0x6a
	.uaword	0x24e
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.string	"double"
	.uleb128 0x2
	.string	"boolean"
	.byte	0x2
	.byte	0x80
	.uaword	0x1e6
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x2
	.string	"Std_ReturnType"
	.byte	0x3
	.byte	0x60
	.uaword	0x1d9
	.uleb128 0x4
	.string	"Fls_17_Dmu_AddressType"
	.byte	0x4
	.uahalf	0xa21
	.uaword	0x240
	.uleb128 0x4
	.string	"Fls_17_Dmu_LengthType"
	.byte	0x4
	.uahalf	0xa25
	.uaword	0x240
	.uleb128 0x5
	.byte	0x4
	.uaword	0x1d9
	.uleb128 0x5
	.byte	0x4
	.uaword	0x31a
	.uleb128 0x6
	.uaword	0x1d9
	.uleb128 0x5
	.byte	0x4
	.uaword	0x325
	.uleb128 0x7
	.byte	0x1
	.uleb128 0x8
	.byte	0x1
	.byte	0x5
	.byte	0xa9
	.uaword	0x374
	.uleb128 0x9
	.string	"FEE_INTERNAL_JOB"
	.sleb128 0
	.uleb128 0x9
	.string	"FEE_NVM_JOB"
	.sleb128 1
	.uleb128 0x9
	.string	"FEE_ADAPTER_JOB"
	.sleb128 2
	.uleb128 0x9
	.string	"FEE_QUEUE_SIZE"
	.sleb128 3
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.byte	0x5
	.byte	0xdb
	.uaword	0x4ce
	.uleb128 0x9
	.string	"FEE_ERASED_MARKER_ID_E"
	.sleb128 1
	.uleb128 0x9
	.string	"FEE_USED_MARKER_ID_E"
	.sleb128 2
	.uleb128 0x9
	.string	"FEE_FULL_MARKER_ID_E"
	.sleb128 3
	.uleb128 0x9
	.string	"FEE_ERASE_REQUEST_ID_E"
	.sleb128 4
	.uleb128 0x9
	.string	"FEE_START_MARKER_ID_E"
	.sleb128 5
	.uleb128 0x9
	.string	"FEE_CLONE_START_MARKER_ID_E"
	.sleb128 6
	.uleb128 0x9
	.string	"FEE_RESERVED_MARKER_ID1_E"
	.sleb128 7
	.uleb128 0x9
	.string	"FEE_RESERVED_MARKER_ID2_E"
	.sleb128 8
	.uleb128 0x9
	.string	"FEE_RESERVED_MARKER_ID3_E"
	.sleb128 9
	.uleb128 0x9
	.string	"FEE_RESERVED_MARKER_ID4_E"
	.sleb128 10
	.uleb128 0x9
	.string	"FEE_RESERVED_MARKER_ID5_E"
	.sleb128 11
	.uleb128 0x9
	.string	"FEE_ERASE_START_FLAG_ID_E"
	.sleb128 12
	.uleb128 0x9
	.string	"FEE_NUM_MARKER_E"
	.sleb128 13
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.byte	0x5
	.byte	0xec
	.uaword	0x522
	.uleb128 0xb
	.string	"xPattern"
	.byte	0x5
	.byte	0xee
	.uaword	0x204
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"xIdent"
	.byte	0x5
	.byte	0xef
	.uaword	0x1d9
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.string	"xContent"
	.byte	0x5
	.byte	0xf0
	.uaword	0x522
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xb
	.string	"xChecksum"
	.byte	0x5
	.byte	0xf1
	.uaword	0x204
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0
	.uleb128 0xc
	.uaword	0x1d9
	.uaword	0x532
	.uleb128 0xd
	.uaword	0x532
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x2
	.string	"Fee_MarkerProp_t"
	.byte	0x5
	.byte	0xf2
	.uaword	0x4ce
	.uleb128 0xa
	.byte	0x10
	.byte	0x5
	.byte	0xf5
	.uaword	0x629
	.uleb128 0xe
	.uaword	.LASF0
	.byte	0x5
	.byte	0xf7
	.uaword	0x240
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"ctErasedMarker_u8"
	.byte	0x5
	.byte	0xf8
	.uaword	0x1d9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"ctUsedMarker_u8"
	.byte	0x5
	.byte	0xf9
	.uaword	0x1d9
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0xb
	.string	"ctFullMarker_u8"
	.byte	0x5
	.byte	0xfa
	.uaword	0x1d9
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xb
	.string	"ctEraseReq_u8"
	.byte	0x5
	.byte	0xfb
	.uaword	0x1d9
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xb
	.string	"xStartAddr_u32"
	.byte	0x5
	.byte	0xfc
	.uaword	0x240
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"ctCloneMarker_u8"
	.byte	0x5
	.byte	0xfd
	.uaword	0x1d9
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.string	"eraseStartFlagFound_b"
	.byte	0x5
	.byte	0xfe
	.uaword	0x28b
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.byte	0
	.uleb128 0x2
	.string	"Fee_stSecDet_tst"
	.byte	0x5
	.byte	0xff
	.uaword	0x556
	.uleb128 0xf
	.byte	0x1
	.byte	0x5
	.uahalf	0x103
	.uaword	0x6db
	.uleb128 0x9
	.string	"FEE_SECTOR_STATE_UNDEF_E"
	.sleb128 0
	.uleb128 0x9
	.string	"FEE_SECTOR_ERASED_E"
	.sleb128 1
	.uleb128 0x9
	.string	"FEE_SECTOR_USED_E"
	.sleb128 2
	.uleb128 0x9
	.string	"FEE_SECTOR_FULL_E"
	.sleb128 3
	.uleb128 0x9
	.string	"FEE_SECTOR_REQUEST2ERASE_E"
	.sleb128 4
	.uleb128 0x9
	.string	"FEE_SECTOR_CONSIDERED_E"
	.sleb128 13
	.byte	0
	.uleb128 0x4
	.string	"Fee_SectorState_ten"
	.byte	0x5
	.uahalf	0x10a
	.uaword	0x641
	.uleb128 0x10
	.byte	0x8
	.byte	0x5
	.uahalf	0x10d
	.uaword	0x736
	.uleb128 0x11
	.uaword	.LASF0
	.byte	0x5
	.uahalf	0x10f
	.uaword	0x240
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.string	"SecState_en"
	.byte	0x5
	.uahalf	0x110
	.uaword	0x6db
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x5
	.uahalf	0x111
	.uaword	0x1d9
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x4
	.string	"Fee_LLSectorOrder_tst"
	.byte	0x5
	.uahalf	0x112
	.uaword	0x6f7
	.uleb128 0xf
	.byte	0x1
	.byte	0x5
	.uahalf	0x116
	.uaword	0x82b
	.uleb128 0x9
	.string	"FEE_ORDER_PENDING_E"
	.sleb128 0
	.uleb128 0x9
	.string	"FEE_ORDER_FINISHED_E"
	.sleb128 1
	.uleb128 0x9
	.string	"FEE_BLOCK_INVALIDATED_E"
	.sleb128 2
	.uleb128 0x9
	.string	"FEE_ERROR_E"
	.sleb128 3
	.uleb128 0x9
	.string	"FEE_SECTORCHANGE_E"
	.sleb128 4
	.uleb128 0x9
	.string	"FEE_SECTORFULL_E"
	.sleb128 5
	.uleb128 0x9
	.string	"FEE_ABORTED_E"
	.sleb128 6
	.uleb128 0x9
	.string	"FEE_ERASE_SECTOR_E"
	.sleb128 7
	.uleb128 0x9
	.string	"FEE_SEARCH_ABORTED_E"
	.sleb128 8
	.uleb128 0x9
	.string	"FEE_NUM_RET_VAL_E"
	.sleb128 9
	.byte	0
	.uleb128 0x4
	.string	"Fee_stRetVal_ten"
	.byte	0x5
	.uahalf	0x121
	.uaword	0x754
	.uleb128 0x10
	.byte	0x10
	.byte	0x5
	.uahalf	0x125
	.uaword	0x8d8
	.uleb128 0x12
	.string	"Fee_PhysStartAddress_u32"
	.byte	0x5
	.uahalf	0x127
	.uaword	0x240
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.string	"Fee_PhysEndAddress_u32"
	.byte	0x5
	.uahalf	0x128
	.uaword	0x240
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.string	"Fee_LogStartAddress_u32"
	.byte	0x5
	.uahalf	0x129
	.uaword	0x240
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.string	"Fee_LogEndAddress_u32"
	.byte	0x5
	.uahalf	0x12a
	.uaword	0x240
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x4
	.string	"Fee_FlashProp_tst"
	.byte	0x5
	.uahalf	0x12b
	.uaword	0x844
	.uleb128 0x10
	.byte	0x10
	.byte	0x5
	.uahalf	0x14c
	.uaword	0x98e
	.uleb128 0x12
	.string	"BlockPersistentId_u16"
	.byte	0x5
	.uahalf	0x14e
	.uaword	0x204
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.string	"Flags_u16"
	.byte	0x5
	.uahalf	0x14f
	.uaword	0x204
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x12
	.string	"Length_u16"
	.byte	0x5
	.uahalf	0x150
	.uaword	0x204
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.string	"JobEndNotification_pfn"
	.byte	0x5
	.uahalf	0x151
	.uaword	0x98e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.string	"JobErrorNotification_pfn"
	.byte	0x5
	.uahalf	0x152
	.uaword	0x98e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x6
	.uaword	0x31f
	.uleb128 0x4
	.string	"Fee_BlockPropertiesType_tst"
	.byte	0x5
	.uahalf	0x153
	.uaword	0x8f2
	.uleb128 0xf
	.byte	0x1
	.byte	0x5
	.uahalf	0x15f
	.uaword	0xae8
	.uleb128 0x9
	.string	"FEE_LL_MARKER_INIT_E"
	.sleb128 0
	.uleb128 0x9
	.string	"FEE_LL_MARKER_BLK_CHK_E"
	.sleb128 1
	.uleb128 0x9
	.string	"FEE_LL_MARKER_BLK_CHK_WAIT_E"
	.sleb128 2
	.uleb128 0x9
	.string	"FEE_LL_MARKER_BLK_CHK_ERROR_E"
	.sleb128 3
	.uleb128 0x9
	.string	"FEE_LL_MARKER_BLK_CHK_FINISHED_E"
	.sleb128 4
	.uleb128 0x9
	.string	"FEE_LL_MARKER_WRITE_WAIT_E"
	.sleb128 5
	.uleb128 0x9
	.string	"FEE_LL_MARKER_WRITE_ERROR_E"
	.sleb128 6
	.uleb128 0x9
	.string	"FEE_LL_MARKER_VERIFY_E"
	.sleb128 7
	.uleb128 0x9
	.string	"FEE_LL_MARKER_VERIFY_WAIT_E"
	.sleb128 8
	.uleb128 0x9
	.string	"FEE_LL_MARKER_VERIFY_FINISHED_E"
	.sleb128 9
	.byte	0
	.uleb128 0x4
	.string	"Fee_LLWrMarkerType_ten"
	.byte	0x5
	.uahalf	0x16a
	.uaword	0x9b7
	.uleb128 0xf
	.byte	0x1
	.byte	0x5
	.uahalf	0x16e
	.uaword	0xbeb
	.uleb128 0x9
	.string	"FEE_HL_RDWR_BLK_INIT_E"
	.sleb128 0
	.uleb128 0x9
	.string	"FEE_HL_SEARCH_BLK_HDR_E"
	.sleb128 1
	.uleb128 0x9
	.string	"FEE_HL_READ_BLK_HDR_WAIT_E"
	.sleb128 2
	.uleb128 0x9
	.string	"FEE_HL_CHECK_BLK_HDR_E"
	.sleb128 3
	.uleb128 0x9
	.string	"FEE_HL_CALC_BLK_CS_E"
	.sleb128 4
	.uleb128 0x9
	.string	"FEE_HL_CHECK_BLK_CS_E"
	.sleb128 5
	.uleb128 0x9
	.string	"FEE_HL_RD_DATA_FROM_BLK_E"
	.sleb128 6
	.uleb128 0x9
	.string	"FEE_HL_COMP_BLK_E"
	.sleb128 7
	.uleb128 0x9
	.string	"FEE_HL_WR_BLK_E"
	.sleb128 8
	.byte	0
	.uleb128 0x4
	.string	"Fee_HLRdWrBlockType_ten"
	.byte	0x5
	.uahalf	0x17f
	.uaword	0xb07
	.uleb128 0xf
	.byte	0x1
	.byte	0x5
	.uahalf	0x183
	.uaword	0xe06
	.uleb128 0x9
	.string	"FEE_LL_WR_BLK_INIT_E"
	.sleb128 0
	.uleb128 0x9
	.string	"FEE_LL_WR_WRITEHEADER_E"
	.sleb128 1
	.uleb128 0x9
	.string	"FEE_LL_WR_SIZECHECK_HSR_E"
	.sleb128 2
	.uleb128 0x9
	.string	"FEE_LL_WR_WRITEHEADER_WAIT_E"
	.sleb128 3
	.uleb128 0x9
	.string	"FEE_LL_WR_VERIFYHEADER_E"
	.sleb128 4
	.uleb128 0x9
	.string	"FEE_LL_WR_VERIFYHEADER_WAIT_E"
	.sleb128 5
	.uleb128 0x9
	.string	"FEE_LL_WR_VERIFYHEADER_ERROR_E"
	.sleb128 6
	.uleb128 0x9
	.string	"FEE_LL_WR_WRITEDATA_SEC_A_E"
	.sleb128 7
	.uleb128 0x9
	.string	"FEE_LL_WR_WAIT_WRITEDATA_SEC_A_E"
	.sleb128 8
	.uleb128 0x9
	.string	"FEE_LL_WR_WRITE_ERROR_E"
	.sleb128 9
	.uleb128 0x9
	.string	"FEE_LL_WR_WRITE_FULL_MARKER_E"
	.sleb128 10
	.uleb128 0x9
	.string	"FEE_LL_WR_ERASE_SECTOR_E"
	.sleb128 11
	.uleb128 0x9
	.string	"FEE_LL_WR_WRITE_USED_MARKER_E"
	.sleb128 12
	.uleb128 0x9
	.string	"FEE_LL_WR_WRITE_START_MARKER_E"
	.sleb128 13
	.uleb128 0x9
	.string	"FEE_LL_WR_VERIFY_BLK_E"
	.sleb128 14
	.uleb128 0x9
	.string	"FEE_LL_WR_WRITEHDRPG2_E"
	.sleb128 15
	.uleb128 0x9
	.string	"FEE_LL_WR_WAIT_WRITEHDRPG2_E"
	.sleb128 16
	.byte	0
	.uleb128 0x4
	.string	"Fee_LLWrBlockType_ten"
	.byte	0x5
	.uahalf	0x1ae
	.uaword	0xc0b
	.uleb128 0xf
	.byte	0x1
	.byte	0x5
	.uahalf	0x1b2
	.uaword	0xee5
	.uleb128 0x9
	.string	"FEE_LL_CMP_BLK_INIT_E"
	.sleb128 0
	.uleb128 0x9
	.string	"FEE_LL_CMP_HEADER_E"
	.sleb128 1
	.uleb128 0x9
	.string	"FEE_LL_CMP_WAIT_HEADER_E"
	.sleb128 2
	.uleb128 0x9
	.string	"FEE_LL_CMP_CHECK_OVERLAP_E"
	.sleb128 3
	.uleb128 0x9
	.string	"FEE_LL_CMP_DATA_SEC_A_E"
	.sleb128 4
	.uleb128 0x9
	.string	"FEE_LL_CMP_WAIT_DATA_SEC_A_E"
	.sleb128 5
	.uleb128 0x9
	.string	"FEE_LL_CMP_FINISHED_E"
	.sleb128 6
	.byte	0
	.uleb128 0x4
	.string	"Fee_LLCmpBlkType_ten"
	.byte	0x5
	.uahalf	0x1ba
	.uaword	0xe24
	.uleb128 0xf
	.byte	0x1
	.byte	0x5
	.uahalf	0x1be
	.uaword	0xfb5
	.uleb128 0x9
	.string	"FEE_LL_CPY_BLK_INIT_E"
	.sleb128 0
	.uleb128 0x9
	.string	"FEE_LL_CPY_BLOCK_DATA_FROM_HDR_E"
	.sleb128 1
	.uleb128 0x9
	.string	"FEE_LL_CPY_BLOCK_START_E"
	.sleb128 2
	.uleb128 0x9
	.string	"FEE_LL_CPY_BLOCK_WAIT_E"
	.sleb128 3
	.uleb128 0x9
	.string	"FEE_LL_CPY_BLOCK_ERROR_E"
	.sleb128 4
	.uleb128 0x9
	.string	"FEE_LL_CPY_BLOCK_FINISHED_E"
	.sleb128 5
	.byte	0
	.uleb128 0x4
	.string	"Fee_LLCpyBlkType_ten"
	.byte	0x5
	.uahalf	0x1c5
	.uaword	0xf02
	.uleb128 0xf
	.byte	0x1
	.byte	0x5
	.uahalf	0x1c9
	.uaword	0x10d2
	.uleb128 0x9
	.string	"FEE_LL_CRC_BLK_INIT_E"
	.sleb128 0
	.uleb128 0x9
	.string	"FEE_LL_CRC_RD_HD_PAGE_E"
	.sleb128 1
	.uleb128 0x9
	.string	"FEE_LL_CRC_RD_PAGE_E"
	.sleb128 2
	.uleb128 0x9
	.string	"FEE_LL_CRC_CHECK_OVERLAP_E"
	.sleb128 3
	.uleb128 0x9
	.string	"FEE_LL_CRC_RD_ROB_PAGE_E"
	.sleb128 4
	.uleb128 0x9
	.string	"FEE_LL_CRC_CHECK_OVERLAP_ROB_E"
	.sleb128 5
	.uleb128 0x9
	.string	"FEE_LL_CRC_RD_ROB_PAGE_WAIT_E"
	.sleb128 6
	.uleb128 0x9
	.string	"FEE_LL_CRC_RD_PAGE_WAIT_E"
	.sleb128 7
	.uleb128 0x9
	.string	"FEE_LL_CRC_RD_ERROR_E"
	.sleb128 8
	.byte	0
	.uleb128 0x4
	.string	"Fee_LLCalcCrcBlkType_ten"
	.byte	0x5
	.uahalf	0x1d5
	.uaword	0xfd2
	.uleb128 0xf
	.byte	0x1
	.byte	0x5
	.uahalf	0x1d9
	.uaword	0x1244
	.uleb128 0x9
	.string	"FEE_LL_INIT_READ_E"
	.sleb128 0
	.uleb128 0x9
	.string	"FEE_LL_BLANK_CHECK_E"
	.sleb128 1
	.uleb128 0x9
	.string	"FEE_LL_BLANK_CHECK_WAIT_E"
	.sleb128 2
	.uleb128 0x9
	.string	"FEE_LL_READ_PAGE_E"
	.sleb128 3
	.uleb128 0x9
	.string	"FEE_LL_WAIT_READ_PAGE_E"
	.sleb128 4
	.uleb128 0x9
	.string	"FEE_LL_READ_ERROR_E"
	.sleb128 5
	.uleb128 0x9
	.string	"FEE_LL_READ_FINISHED_E"
	.sleb128 6
	.uleb128 0x9
	.string	"FEE_LL_BLANK_CHECK_ERASE_START_FLAG_E"
	.sleb128 7
	.uleb128 0x9
	.string	"FEE_LL_BLANK_CHECK_ERASE_START_FLAG_WAIT_E"
	.sleb128 8
	.uleb128 0x9
	.string	"FEE_LL_ERASE_START_FLAG_NOT_PRESENT_E"
	.sleb128 9
	.uleb128 0x9
	.string	"FEE_LL_ERASE_START_FLAG_PRESENT_E"
	.sleb128 10
	.byte	0
	.uleb128 0x4
	.string	"Fee_LLRdStateType_ten"
	.byte	0x5
	.uahalf	0x1f3
	.uaword	0x10f3
	.uleb128 0xf
	.byte	0x1
	.byte	0x5
	.uahalf	0x1f7
	.uaword	0x1308
	.uleb128 0x9
	.string	"FEE_LL_INIT_BLANK_CHECK_E"
	.sleb128 0
	.uleb128 0x9
	.string	"FEE_LL_PERFORM_BLANK_CHECK_E"
	.sleb128 1
	.uleb128 0x9
	.string	"FEE_LL_WAIT_PERFORM_BLANK_CHECK_E"
	.sleb128 2
	.uleb128 0x9
	.string	"FEE_LL_BLANK_CHECK_ERROR_E"
	.sleb128 3
	.uleb128 0x9
	.string	"FEE_LL_BLANK_CHECK_FINISHED_E"
	.sleb128 4
	.byte	0
	.uleb128 0x4
	.string	"Fee_LLBlankCheckType_ten"
	.byte	0x5
	.uahalf	0x1fd
	.uaword	0x1262
	.uleb128 0xf
	.byte	0x1
	.byte	0x5
	.uahalf	0x201
	.uaword	0x1382
	.uleb128 0x9
	.string	"FEE_LL_FIND_CURRENT_SECTOR_E"
	.sleb128 0
	.uleb128 0x9
	.string	"FEE_LL_FIND_LAST_HEADER_E"
	.sleb128 1
	.uleb128 0x9
	.string	"FEE_LL_FINISHED_E"
	.sleb128 2
	.byte	0
	.uleb128 0x4
	.string	"Fee_LLFndEmptyPgeType_ten"
	.byte	0x5
	.uahalf	0x20d
	.uaword	0x1329
	.uleb128 0xf
	.byte	0x1
	.byte	0x5
	.uahalf	0x211
	.uaword	0x13e8
	.uleb128 0x9
	.string	"FEE_LL_SEARCHBLK_INIT_E"
	.sleb128 0
	.uleb128 0x9
	.string	"FEE_LL_SEARCHBLK_BLK_HEADER_E"
	.sleb128 1
	.byte	0
	.uleb128 0x4
	.string	"Fee_LLSearchBlkHdrType_ten"
	.byte	0x5
	.uahalf	0x214
	.uaword	0x13a4
	.uleb128 0xf
	.byte	0x1
	.byte	0x5
	.uahalf	0x219
	.uaword	0x144f
	.uleb128 0x9
	.string	"FEE_LL_BLD_UP_CACHE_INIT_E"
	.sleb128 0
	.uleb128 0x9
	.string	"FEE_LL_BLD_UP_CACHE_READ_E"
	.sleb128 1
	.byte	0
	.uleb128 0x4
	.string	"Fee_LLBuildUpCache_ten"
	.byte	0x5
	.uahalf	0x21c
	.uaword	0x140b
	.uleb128 0xf
	.byte	0x1
	.byte	0x5
	.uahalf	0x220
	.uaword	0x14c2
	.uleb128 0x9
	.string	"FEE_LL_BLD_UP_CACHE_ALL_SECT_INIT_E"
	.sleb128 0
	.uleb128 0x9
	.string	"FEE_LL_BLD_UP_CACHE_ALL_SECT_DO_E"
	.sleb128 1
	.byte	0
	.uleb128 0x4
	.string	"Fee_LLBuildUpCacheAllSect_ten"
	.byte	0x5
	.uahalf	0x223
	.uaword	0x146e
	.uleb128 0xf
	.byte	0x1
	.byte	0x5
	.uahalf	0x23d
	.uaword	0x15bf
	.uleb128 0x9
	.string	"FEE_LL_REORG_INIT_E"
	.sleb128 0
	.uleb128 0x9
	.string	"FEE_LL_REORG_PREP_SEARCH_BLK_E"
	.sleb128 1
	.uleb128 0x9
	.string	"FEE_LL_REORG_SEARCH_BLK_E"
	.sleb128 2
	.uleb128 0x9
	.string	"FEE_LL_REORG_CHECK_BLOCK_CS_E"
	.sleb128 3
	.uleb128 0x9
	.string	"FEE_LL_REORG_REDUNDANT_BLK_CHK_E"
	.sleb128 4
	.uleb128 0x9
	.string	"FEE_LL_REORG_WRITE_BLOCK_E"
	.sleb128 5
	.uleb128 0x9
	.string	"FEE_LL_REORG_FINISHED_E"
	.sleb128 6
	.byte	0
	.uleb128 0x4
	.string	"Fee_LLSecReorgType_ten"
	.byte	0x5
	.uahalf	0x255
	.uaword	0x14e8
	.uleb128 0xf
	.byte	0x1
	.byte	0x5
	.uahalf	0x259
	.uaword	0x1702
	.uleb128 0x9
	.string	"FEE_LL_REDUNDANT_CPY_CHK_INIT_E"
	.sleb128 0
	.uleb128 0x9
	.string	"FEE_LL_REDUNDANT_CPY_CHK_FLS_READ_WAIT_E"
	.sleb128 1
	.uleb128 0x9
	.string	"FEE_LL_REDUNDANT_CPY_CHK_FLS_READ_SUC_E"
	.sleb128 2
	.uleb128 0x9
	.string	"FEE_LL_REDUNDANT_CPY_CHK_FLS_READ_ERR_E"
	.sleb128 3
	.uleb128 0x9
	.string	"FEE_LL_REDUNDANT_CPY_CHK_SEARCH_HDR_INIT_E"
	.sleb128 4
	.uleb128 0x9
	.string	"FEE_LL_REDUNDANT_CPY_CHK_SEARCH_HDR_E"
	.sleb128 5
	.uleb128 0x9
	.string	"FEE_LL_REDUNDANT_CPY_CHK_BLK_CS_E"
	.sleb128 6
	.byte	0
	.uleb128 0x4
	.string	"Fee_LLRedundantCpyChk_ten"
	.byte	0x5
	.uahalf	0x265
	.uaword	0x15de
	.uleb128 0xf
	.byte	0x1
	.byte	0x5
	.uahalf	0x269
	.uaword	0x1b1c
	.uleb128 0x9
	.string	"FEE_LL_CPY_FLS2FLS_INIT_E"
	.sleb128 0
	.uleb128 0x9
	.string	"FEE_LL_CPY_FLS2FLS_READ_E"
	.sleb128 1
	.uleb128 0x9
	.string	"FEE_LL_CPY_FLS2FLS_WAIT_READ_E"
	.sleb128 2
	.uleb128 0x9
	.string	"FEE_LL_CPY_FLS2FLS_READ_ERROR_E"
	.sleb128 3
	.uleb128 0x9
	.string	"FEE_LL_CPY_FLS2FLS_HDRPG1_WRITE_E"
	.sleb128 4
	.uleb128 0x9
	.string	"FEE_LL_CPY_FLS2FLS_WAIT_HDRPG1_WRITE_E"
	.sleb128 5
	.uleb128 0x9
	.string	"FEE_LL_CPY_FLS2FLS_HDRPG1_WRITE_ERROR_E"
	.sleb128 6
	.uleb128 0x9
	.string	"FEE_LL_CPY_FLS2FLS_HDRPG1_VERIFY_E"
	.sleb128 7
	.uleb128 0x9
	.string	"FEE_LL_CPY_FLS2FLS_WAIT_HDRPG1_VERIFY_E"
	.sleb128 8
	.uleb128 0x9
	.string	"FEE_LL_CPY_FLS2FLS_HDRPG1_VERIFY_ERROR_E"
	.sleb128 9
	.uleb128 0x9
	.string	"FEE_LL_CPY_FLS2FLS_WRITE_E"
	.sleb128 10
	.uleb128 0x9
	.string	"FEE_LL_CPY_FLS2FLS_WAIT_WRITE_E"
	.sleb128 11
	.uleb128 0x9
	.string	"FEE_LL_CPY_FLS2FLS_WRITE_ERROR_E"
	.sleb128 12
	.uleb128 0x9
	.string	"FEE_LL_CPY_FLS2FLS_VERIFY_E"
	.sleb128 13
	.uleb128 0x9
	.string	"FEE_LL_CPY_FLS2FLS_WAIT_VERIFY_E"
	.sleb128 14
	.uleb128 0x9
	.string	"FEE_LL_CPY_FLS2FLS_VERIFY_ERROR_E"
	.sleb128 15
	.uleb128 0x9
	.string	"FEE_LL_CPY_FLS2FLS_HDRPG2_WRITE_E"
	.sleb128 16
	.uleb128 0x9
	.string	"FEE_LL_CPY_FLS2FLS_WAIT_HDRPG2_WRITE_E"
	.sleb128 17
	.uleb128 0x9
	.string	"FEE_LL_CPY_FLS2FLS_HDRPG2_WRITE_ERROR_E"
	.sleb128 18
	.uleb128 0x9
	.string	"FEE_LL_CPY_FLS2FLS_HDRPG2_VERIFY_E"
	.sleb128 19
	.uleb128 0x9
	.string	"FEE_LL_CPY_FLS2FLS_WAIT_HDRPG2_VERIFY_E"
	.sleb128 20
	.uleb128 0x9
	.string	"FEE_LL_CPY_FLS2FLS_HDRPG2_VERIFY_ERROR_E"
	.sleb128 21
	.uleb128 0x9
	.string	"FEE_LL_CPY_FLS2FLS_CHECK_ADR_OVERFLOW_E"
	.sleb128 22
	.uleb128 0x9
	.string	"FEE_LL_CPY_FLS2FLS_WRITE_FULL_MARKER_E"
	.sleb128 23
	.uleb128 0x9
	.string	"FEE_LL_CPY_FLS2FLS_ERASE_SECTOR_E"
	.sleb128 24
	.uleb128 0x9
	.string	"FEE_LL_CPY_FLS2FLS_WRITE_USED_MARKER_E"
	.sleb128 25
	.uleb128 0x9
	.string	"FEE_LL_CPY_FLS2FLS_WRITE_START_MARKER_E"
	.sleb128 26
	.byte	0
	.uleb128 0x4
	.string	"Fee_LLCpyBlkFls2Fls_ten"
	.byte	0x5
	.uahalf	0x2a3
	.uaword	0x1724
	.uleb128 0x10
	.byte	0x3c
	.byte	0x5
	.uahalf	0x2c1
	.uaword	0x1eb7
	.uleb128 0x12
	.string	"xRdAddress"
	.byte	0x5
	.uahalf	0x2c3
	.uaword	0x240
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.string	"xWrAddress"
	.byte	0x5
	.uahalf	0x2c4
	.uaword	0x240
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.string	"xCmpAddress"
	.byte	0x5
	.uahalf	0x2c5
	.uaword	0x240
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.string	"xCrcAddress"
	.byte	0x5
	.uahalf	0x2c6
	.uaword	0x240
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x12
	.string	"xCpyAddress"
	.byte	0x5
	.uahalf	0x2c7
	.uaword	0x240
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x12
	.string	"AdrHdSearchStart_u32"
	.byte	0x5
	.uahalf	0x2c8
	.uaword	0x240
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x12
	.string	"xStartAddrNextSector_u32"
	.byte	0x5
	.uahalf	0x2c9
	.uaword	0x240
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x12
	.string	"xHdPg2Address"
	.byte	0x5
	.uahalf	0x2cd
	.uaword	0x240
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x12
	.string	"LastProgrammedAddress_u32"
	.byte	0x5
	.uahalf	0x2d1
	.uaword	0x240
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x12
	.string	"LastValidHdrAddress_u32"
	.byte	0x5
	.uahalf	0x2d2
	.uaword	0x240
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x12
	.string	"Fee_LLSecReorg_en"
	.byte	0x5
	.uahalf	0x2d5
	.uaword	0x15bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x12
	.string	"Fee_LLRedundantCpyChk_en"
	.byte	0x5
	.uahalf	0x2d6
	.uaword	0x1702
	.byte	0x2
	.byte	0x23
	.uleb128 0x29
	.uleb128 0x12
	.string	"Fee_LLCpyBlkFls2Fls_en"
	.byte	0x5
	.uahalf	0x2d7
	.uaword	0x1b1c
	.byte	0x2
	.byte	0x23
	.uleb128 0x2a
	.uleb128 0x12
	.string	"Fee_HLWrBlock_en"
	.byte	0x5
	.uahalf	0x2dd
	.uaword	0xbeb
	.byte	0x2
	.byte	0x23
	.uleb128 0x2b
	.uleb128 0x12
	.string	"Fee_HLMtBlock_en"
	.byte	0x5
	.uahalf	0x2e0
	.uaword	0xbeb
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x12
	.string	"Fee_LLWrBlock_en"
	.byte	0x5
	.uahalf	0x2e3
	.uaword	0xe06
	.byte	0x2
	.byte	0x23
	.uleb128 0x2d
	.uleb128 0x12
	.string	"Fee_HLRdBlock"
	.byte	0x5
	.uahalf	0x2e4
	.uaword	0xbeb
	.byte	0x2
	.byte	0x23
	.uleb128 0x2e
	.uleb128 0x12
	.string	"Fee_LLNextUsedWrBlock_en"
	.byte	0x5
	.uahalf	0x2e5
	.uaword	0xe06
	.byte	0x2
	.byte	0x23
	.uleb128 0x2f
	.uleb128 0x12
	.string	"Fee_LLNextEraseWrBlock_en"
	.byte	0x5
	.uahalf	0x2e6
	.uaword	0xe06
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x12
	.string	"Fee_LLCompBlk"
	.byte	0x5
	.uahalf	0x2e7
	.uaword	0xee5
	.byte	0x2
	.byte	0x23
	.uleb128 0x31
	.uleb128 0x12
	.string	"Fee_LLCopyBlk_en"
	.byte	0x5
	.uahalf	0x2e8
	.uaword	0xfb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x32
	.uleb128 0x12
	.string	"Fee_LLCalcCrcBlk_en"
	.byte	0x5
	.uahalf	0x2e9
	.uaword	0x10d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x33
	.uleb128 0x12
	.string	"Fee_LLWrMarker_en"
	.byte	0x5
	.uahalf	0x2ea
	.uaword	0xae8
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x12
	.string	"Fee_LLRdState_en"
	.byte	0x5
	.uahalf	0x2eb
	.uaword	0x1244
	.byte	0x2
	.byte	0x23
	.uleb128 0x35
	.uleb128 0x12
	.string	"Fee_LLBlankCheckState_en"
	.byte	0x5
	.uahalf	0x2ec
	.uaword	0x1308
	.byte	0x2
	.byte	0x23
	.uleb128 0x36
	.uleb128 0x12
	.string	"Fee_LLFindEmptyPageState_en"
	.byte	0x5
	.uahalf	0x2ed
	.uaword	0x1382
	.byte	0x2
	.byte	0x23
	.uleb128 0x37
	.uleb128 0x12
	.string	"Fee_LLSearchBlkHdr_en"
	.byte	0x5
	.uahalf	0x2ee
	.uaword	0x13e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x12
	.string	"Fee_LLBuildUpCache_en"
	.byte	0x5
	.uahalf	0x2fb
	.uaword	0x144f
	.byte	0x2
	.byte	0x23
	.uleb128 0x39
	.uleb128 0x12
	.string	"Fee_LLBuildUpCacheAllSect_en"
	.byte	0x5
	.uahalf	0x2fc
	.uaword	0x14c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x3a
	.byte	0
	.uleb128 0x4
	.string	"Fee_RdWrOrder_tst"
	.byte	0x5
	.uahalf	0x2fe
	.uaword	0x1b3c
	.uleb128 0x10
	.byte	0x14
	.byte	0x5
	.uahalf	0x301
	.uaword	0x1f89
	.uleb128 0x12
	.string	"AdrBlkHeader_u32"
	.byte	0x5
	.uahalf	0x303
	.uaword	0x240
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.string	"BlkCrc32_u32"
	.byte	0x5
	.uahalf	0x304
	.uaword	0x240
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.string	"HdrCrc16_u16"
	.byte	0x5
	.uahalf	0x305
	.uaword	0x204
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.string	"BlkLength_u16"
	.byte	0x5
	.uahalf	0x306
	.uaword	0x204
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x12
	.string	"FeeIndex_u16"
	.byte	0x5
	.uahalf	0x307
	.uaword	0x204
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x12
	.string	"DataBytes_au8"
	.byte	0x5
	.uahalf	0x308
	.uaword	0x1f89
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x12
	.string	"BlkStatus_u8"
	.byte	0x5
	.uahalf	0x309
	.uaword	0x1d9
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0xc
	.uaword	0x1d9
	.uaword	0x1f99
	.uleb128 0xd
	.uaword	0x532
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.string	"Fee_GlobInfoLastRdHeader_tst"
	.byte	0x5
	.uahalf	0x30a
	.uaword	0x1ed1
	.uleb128 0xf
	.byte	0x1
	.byte	0x5
	.uahalf	0x3b8
	.uaword	0x1ff1
	.uleb128 0x9
	.string	"FEE_POLLING_MODE_E"
	.sleb128 0
	.uleb128 0x9
	.string	"FEE_NORMAL_MODE_E"
	.sleb128 1
	.byte	0
	.uleb128 0x4
	.string	"Fee_stMainType"
	.byte	0x5
	.uahalf	0x3bb
	.uaword	0x1fbe
	.uleb128 0x13
	.byte	0x1
	.string	"Fee_GetPhysSectorByAddress"
	.byte	0x1
	.uahalf	0x5db
	.byte	0x1
	.uaword	0x1d9
	.byte	0x1
	.uaword	0x205e
	.uleb128 0x14
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x5db
	.uaword	0x240
	.uleb128 0x15
	.string	"cnt_u8"
	.byte	0x1
	.uahalf	0x5dd
	.uaword	0x1d9
	.uleb128 0x15
	.string	"xSec_u8"
	.byte	0x1
	.uahalf	0x5de
	.uaword	0x1d9
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.string	"Fee_LLSearchSectors"
	.byte	0x1
	.uahalf	0x157
	.byte	0x1
	.uaword	.LFB25
	.uaword	.LFE25
	.uaword	.LLST0
	.byte	0x1
	.uaword	0x21fd
	.uleb128 0x17
	.string	"Fee_stSecDet_ps"
	.byte	0x1
	.uahalf	0x157
	.uaword	0x21fd
	.uaword	.LLST1
	.uleb128 0x18
	.string	"xRdMarker"
	.byte	0x1
	.uahalf	0x159
	.uaword	0x53e
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x19
	.string	"xTmpMarkerContent_u32"
	.byte	0x1
	.uahalf	0x15a
	.uaword	0x240
	.uaword	.LLST2
	.uleb128 0x1a
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x15b
	.uaword	0x1d9
	.uaword	.LLST3
	.uleb128 0x19
	.string	"xCalc_crc_u16"
	.byte	0x1
	.uahalf	0x15c
	.uaword	0x204
	.uaword	.LLST4
	.uleb128 0x19
	.string	"xMarkerIdx_s8"
	.byte	0x1
	.uahalf	0x15d
	.uaword	0x1bd
	.uaword	.LLST5
	.uleb128 0x19
	.string	"xAdrBlnkChk_u32"
	.byte	0x1
	.uahalf	0x15e
	.uaword	0x240
	.uaword	.LLST6
	.uleb128 0x1b
	.uaword	.LVL6
	.uaword	0x28b9
	.uleb128 0x1c
	.uaword	.LVL7
	.uaword	0x28d6
	.uaword	0x2165
	.uleb128 0x1d
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x38
	.uleb128 0x1d
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x7b
	.sleb128 0
	.byte	0x6
	.uleb128 0x1d
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.uaword	.LVL14
	.uaword	0x290f
	.uaword	0x2185
	.uleb128 0x1d
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x8
	.byte	0x60
	.uleb128 0x1d
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.uleb128 0x1d
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x7b
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x1c
	.uaword	.LVL18
	.uaword	0x2939
	.uaword	0x219e
	.uleb128 0x1d
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x38
	.uleb128 0x1d
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.uaword	.LVL22
	.uaword	0x2969
	.uleb128 0x1c
	.uaword	.LVL24
	.uaword	0x2939
	.uaword	0x21c0
	.uleb128 0x1d
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x38
	.uleb128 0x1d
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.uaword	.LVL25
	.uaword	0x2988
	.uaword	0x21db
	.uleb128 0x1d
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0x7b
	.sleb128 0
	.byte	0x6
	.uleb128 0x1d
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.uaword	.LVL30
	.uaword	0x29be
	.uleb128 0x1d
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x30
	.uleb128 0x1d
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xb
	.uahalf	0xcafe
	.uleb128 0x1d
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x36
	.uleb128 0x1d
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x629
	.uleb128 0x1f
	.byte	0x1
	.string	"Fee_LLFindEmptyPage"
	.byte	0x1
	.uahalf	0x2f0
	.byte	0x1
	.uaword	0x82b
	.uaword	.LFB26
	.uaword	.LFE26
	.uaword	.LLST7
	.byte	0x1
	.uaword	0x2334
	.uleb128 0x17
	.string	"PhySectIdxUsedSect_u8"
	.byte	0x1
	.uahalf	0x2f0
	.uaword	0x1d9
	.uaword	.LLST8
	.uleb128 0x1a
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x3c7
	.uaword	0x82b
	.uaword	.LLST9
	.uleb128 0x19
	.string	"xTmpRetVal_en"
	.byte	0x1
	.uahalf	0x3c8
	.uaword	0x82b
	.uaword	.LLST10
	.uleb128 0x18
	.string	"xBlkHdrTmp_st"
	.byte	0x1
	.uahalf	0x3c9
	.uaword	0x1f99
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1c
	.uaword	.LVL38
	.uaword	0x29f4
	.uaword	0x22ab
	.uleb128 0x1d
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1c
	.uaword	.LVL40
	.uaword	0x2a2b
	.uaword	0x22bf
	.uleb128 0x1d
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.uaword	.LVL44
	.uaword	0x2a57
	.uaword	0x22d3
	.uleb128 0x1d
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.uaword	.LVL45
	.uaword	0x2a85
	.uaword	0x22e7
	.uleb128 0x1d
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1c
	.uaword	.LVL47
	.uaword	0x2a2b
	.uaword	0x22fb
	.uleb128 0x1d
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.uaword	.LVL48
	.uaword	0x2a2b
	.uaword	0x230f
	.uleb128 0x1d
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.uaword	.LVL51
	.uaword	0x2a2b
	.uaword	0x2323
	.uleb128 0x1d
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.uaword	.LVL53
	.uaword	0x2a57
	.uleb128 0x1d
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.string	"Fee_CheckErasedSectorEmpty"
	.byte	0x1
	.uahalf	0x4a2
	.byte	0x1
	.uaword	.LFB27
	.uaword	.LFE27
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x2408
	.uleb128 0x1a
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x4a4
	.uaword	0x1d9
	.uaword	.LLST11
	.uleb128 0x19
	.string	"xCurrSectPhys_u8"
	.byte	0x1
	.uahalf	0x4a5
	.uaword	0x1d9
	.uaword	.LLST12
	.uleb128 0x19
	.string	"xPageAfterErased_u32"
	.byte	0x1
	.uahalf	0x4a6
	.uaword	0x240
	.uaword	.LLST13
	.uleb128 0x1a
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x4a7
	.uaword	0x82b
	.uaword	.LLST14
	.uleb128 0x1c
	.uaword	.LVL62
	.uaword	0x2ab2
	.uaword	0x23dc
	.uleb128 0x1d
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x32
	.uleb128 0x1d
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.uaword	.LVL67
	.uaword	0x28b9
	.uleb128 0x1c
	.uaword	.LVL68
	.uaword	0x2939
	.uaword	0x23fe
	.uleb128 0x1d
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x38
	.uleb128 0x1d
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.uaword	.LVL69
	.uaword	0x2969
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"Fee_GetMostCurrentSectorIdx"
	.byte	0x1
	.uahalf	0x524
	.byte	0x1
	.uaword	0x1d9
	.byte	0x1
	.uaword	0x2467
	.uleb128 0x21
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x526
	.uaword	0x1d9
	.uleb128 0x21
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x527
	.uaword	0x1d9
	.uleb128 0x15
	.string	"xFirstErasedSec_u8"
	.byte	0x1
	.uahalf	0x528
	.uaword	0x1d9
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.string	"Fee_LLDetectActiveSector"
	.byte	0x1
	.byte	0x3b
	.byte	0x1
	.uaword	0x1d9
	.uaword	.LFB24
	.uaword	.LFE24
	.uaword	.LLST15
	.byte	0x1
	.uaword	0x25e5
	.uleb128 0x23
	.string	"Fee_stSecDet_st"
	.byte	0x1
	.byte	0x3e
	.uaword	0x25e5
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x23
	.string	"TmpSectorOrder_st"
	.byte	0x1
	.byte	0x3f
	.uaword	0x25f5
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.uaword	.LASF2
	.byte	0x1
	.byte	0x40
	.uaword	0x1d9
	.uaword	.LLST16
	.uleb128 0x24
	.uaword	.LASF4
	.byte	0x1
	.byte	0x41
	.uaword	0x1d9
	.uaword	.LLST17
	.uleb128 0x25
	.string	"cnt_u8"
	.byte	0x1
	.byte	0x42
	.uaword	0x1d9
	.uaword	.LLST18
	.uleb128 0x25
	.string	"SectCntMin_u32"
	.byte	0x1
	.byte	0x43
	.uaword	0x240
	.uaword	.LLST19
	.uleb128 0x24
	.uaword	.LASF5
	.byte	0x1
	.byte	0x44
	.uaword	0x1d9
	.uaword	.LLST20
	.uleb128 0x24
	.uaword	.LASF1
	.byte	0x1
	.byte	0x45
	.uaword	0x1d9
	.uaword	.LLST21
	.uleb128 0x25
	.string	"xLogSecIdx_u8"
	.byte	0x1
	.byte	0x46
	.uaword	0x1d9
	.uaword	.LLST22
	.uleb128 0x25
	.string	"xRepeatSortLoop_u8"
	.byte	0x1
	.byte	0x47
	.uaword	0x1d9
	.uaword	.LLST23
	.uleb128 0x26
	.uaword	0x2408
	.uaword	.LBB6
	.uaword	.LBE6
	.byte	0x1
	.uahalf	0x10e
	.uaword	0x25a9
	.uleb128 0x27
	.uaword	.LBB7
	.uaword	.LBE7
	.uleb128 0x28
	.uaword	0x2433
	.uaword	.LLST24
	.uleb128 0x28
	.uaword	0x243f
	.uaword	.LLST25
	.uleb128 0x28
	.uaword	0x244b
	.uaword	.LLST26
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uaword	.LVL74
	.uaword	0x205e
	.uaword	0x25bd
	.uleb128 0x1d
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1b
	.uaword	.LVL99
	.uaword	0x2334
	.uleb128 0x1b
	.uaword	.LVL123
	.uaword	0x2969
	.uleb128 0x1e
	.uaword	.LVL124
	.uaword	0x2ab2
	.uleb128 0x1d
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x32
	.uleb128 0x1d
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xc
	.uaword	0x629
	.uaword	0x25f5
	.uleb128 0xd
	.uaword	0x532
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.uaword	0x736
	.uaword	0x2605
	.uleb128 0xd
	.uaword	0x532
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.uaword	0x2408
	.uaword	.LFB28
	.uaword	.LFE28
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x2636
	.uleb128 0x28
	.uaword	0x2433
	.uaword	.LLST27
	.uleb128 0x28
	.uaword	0x243f
	.uaword	.LLST28
	.uleb128 0x28
	.uaword	0x244b
	.uaword	.LLST29
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.string	"Fee_IncAddressInsideSector"
	.byte	0x1
	.uahalf	0x5ac
	.byte	0x1
	.uaword	.LFB29
	.uaword	.LFE29
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x26f5
	.uleb128 0x2a
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x5ac
	.uaword	0x26f5
	.byte	0x1
	.byte	0x64
	.uleb128 0x17
	.string	"numBytes_u16"
	.byte	0x1
	.uahalf	0x5ac
	.uaword	0x204
	.uaword	.LLST30
	.uleb128 0x17
	.string	"EnsurePageAlign_b"
	.byte	0x1
	.uahalf	0x5ac
	.uaword	0x28b
	.uaword	.LLST31
	.uleb128 0x15
	.string	"xActSector_u8"
	.byte	0x1
	.uahalf	0x5af
	.uaword	0x1d9
	.uleb128 0x2b
	.uaword	0x2008
	.uaword	.LBB8
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.uahalf	0x5af
	.uleb128 0x2c
	.uaword	0x2032
	.uaword	.LLST32
	.uleb128 0x2d
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x28
	.uaword	0x203e
	.uaword	.LLST33
	.uleb128 0x28
	.uaword	0x204d
	.uaword	.LLST34
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x240
	.uleb128 0x29
	.uaword	0x2008
	.uaword	.LFB30
	.uaword	.LFE30
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x272a
	.uleb128 0x2e
	.uaword	0x2032
	.byte	0x1
	.byte	0x54
	.uleb128 0x28
	.uaword	0x203e
	.uaword	.LLST35
	.uleb128 0x28
	.uaword	0x204d
	.uaword	.LLST36
	.byte	0
	.uleb128 0xc
	.uaword	0x204
	.uaword	0x273a
	.uleb128 0xd
	.uaword	0x532
	.byte	0x1
	.byte	0
	.uleb128 0x23
	.string	"Fee_LastErasedMarker_u16"
	.byte	0x1
	.byte	0x24
	.uaword	0x272a
	.byte	0x5
	.byte	0x3
	.uaword	Fee_LastErasedMarker_u16
	.uleb128 0xc
	.uaword	0x8d8
	.uaword	0x2770
	.uleb128 0xd
	.uaword	0x532
	.byte	0x1
	.byte	0
	.uleb128 0x2f
	.string	"Fee_FlashProp_st"
	.byte	0x5
	.uahalf	0x3fc
	.uaword	0x278b
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.uaword	0x2760
	.uleb128 0x2f
	.string	"Fee_RdWrOrder_st"
	.byte	0x5
	.uahalf	0x405
	.uaword	0x1eb7
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.string	"Fee_LLSectorOrder_st"
	.byte	0x5
	.uahalf	0x406
	.uaword	0x25f5
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.string	"Fee_MarkerBufBytePtr_cpu8"
	.byte	0x5
	.uahalf	0x413
	.uaword	0x27ee
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.uaword	0x30e
	.uleb128 0x2f
	.string	"Fee_NumFlashBanksUsed_u8"
	.byte	0x5
	.uahalf	0x41c
	.uaword	0x1d9
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.string	"Fee_stMain"
	.byte	0x5
	.uahalf	0x431
	.uaword	0x1ff1
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.string	"Fee_idxLLSectorOrder_au8"
	.byte	0x5
	.uahalf	0x437
	.uaword	0x1f89
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.string	"Fee_RdWrRetries_u8"
	.byte	0x5
	.uahalf	0x43a
	.uaword	0x1d9
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.uaword	0x993
	.uaword	0x287b
	.uleb128 0xd
	.uaword	0x532
	.byte	0x39
	.byte	0
	.uleb128 0x2f
	.string	"Fee_BlockProperties_st"
	.byte	0x5
	.uahalf	0x464
	.uaword	0x286b
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.string	"Fee_SecChngCnt_u32"
	.byte	0x5
	.uahalf	0x49d
	.uaword	0x240
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.byte	0x1
	.string	"Fee_CheckFlsJobResult"
	.byte	0x5
	.uahalf	0x547
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.byte	0x1
	.string	"Fls_17_Dmu_Read"
	.byte	0x4
	.uahalf	0xc68
	.byte	0x1
	.uaword	0x2bb
	.byte	0x1
	.uaword	0x2905
	.uleb128 0x32
	.uaword	0x2905
	.uleb128 0x32
	.uaword	0x27ee
	.uleb128 0x32
	.uaword	0x290a
	.byte	0
	.uleb128 0x6
	.uaword	0x2d1
	.uleb128 0x6
	.uaword	0x2f0
	.uleb128 0x33
	.byte	0x1
	.string	"Fee_SrvMemSet8"
	.byte	0x5
	.uahalf	0x537
	.byte	0x1
	.byte	0x1
	.uaword	0x2939
	.uleb128 0x32
	.uaword	0x30e
	.uleb128 0x32
	.uaword	0x240
	.uleb128 0x32
	.uaword	0x240
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"Fls_17_Dmu_BlankCheck"
	.byte	0x4
	.uahalf	0xb94
	.byte	0x1
	.uaword	0x2bb
	.byte	0x1
	.uaword	0x2969
	.uleb128 0x32
	.uaword	0x2905
	.uleb128 0x32
	.uaword	0x290a
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.string	"Fls_17_Dmu_MainFunction"
	.byte	0x4
	.uahalf	0xc2d
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.byte	0x1
	.string	"Fee_LLCopyPageBuff2Marker"
	.byte	0x5
	.uahalf	0x4e6
	.byte	0x1
	.byte	0x1
	.uaword	0x29b8
	.uleb128 0x32
	.uaword	0x29b8
	.uleb128 0x32
	.uaword	0x314
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x53e
	.uleb128 0x34
	.byte	0x1
	.string	"Crc_CalculateCRC16"
	.byte	0x6
	.byte	0x40
	.byte	0x1
	.uaword	0x204
	.byte	0x1
	.uaword	0x29f4
	.uleb128 0x32
	.uaword	0x314
	.uleb128 0x32
	.uaword	0x240
	.uleb128 0x32
	.uaword	0x204
	.uleb128 0x32
	.uaword	0x28b
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.string	"Fee_LLInitializeLastHdrVariable"
	.byte	0x5
	.uahalf	0x4c1
	.byte	0x1
	.byte	0x1
	.uaword	0x2a25
	.uleb128 0x32
	.uaword	0x2a25
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x1f99
	.uleb128 0x31
	.byte	0x1
	.string	"Fee_LLGetSecEndAddress"
	.byte	0x5
	.uahalf	0x4dc
	.byte	0x1
	.uaword	0x240
	.byte	0x1
	.uaword	0x2a57
	.uleb128 0x32
	.uaword	0x1d9
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"Fee_LLGetSecStartAddress"
	.byte	0x5
	.uahalf	0x4db
	.byte	0x1
	.uaword	0x240
	.byte	0x1
	.uaword	0x2a85
	.uleb128 0x32
	.uaword	0x1d9
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"Fee_SearchLastBlkHeader"
	.byte	0x5
	.uahalf	0x4f3
	.byte	0x1
	.uaword	0x82b
	.byte	0x1
	.uaword	0x2ab2
	.uleb128 0x32
	.uaword	0x2a25
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.string	"Fee_LLWriteMarker"
	.byte	0x5
	.uahalf	0x4ba
	.byte	0x1
	.uaword	0x82b
	.byte	0x1
	.uleb128 0x32
	.uaword	0x1d9
	.uleb128 0x32
	.uaword	0x1d9
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
	.uleb128 0x3
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
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
	.uaword	.LFB25
	.uaword	.LCFI0
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0
	.uaword	.LFE25
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL1
	.uaword	.LFE25
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL33
	.uaword	.LVL34
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL34
	.uaword	.LVL35
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL35
	.uaword	.LVL36
	.uahalf	0x1c
	.byte	0x91
	.sleb128 -4
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x91
	.sleb128 -5
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x40
	.byte	0x24
	.byte	0x21
	.byte	0x91
	.sleb128 -3
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x21
	.byte	0x9f
	.uaword	.LVL36
	.uaword	.LFE25
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL3
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL26
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL28
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x3
	.byte	0x7a
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL1
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL16
	.uaword	.LFE25
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LFB26
	.uaword	.LCFI1
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI1
	.uaword	.LFE26
	.uahalf	0x2
	.byte	0x8a
	.sleb128 24
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL37
	.uaword	.LVL38-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL38-1
	.uaword	.LFE26
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL37
	.uaword	.LVL41
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL41
	.uaword	.LVL42
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL42
	.uaword	.LVL43
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	.LVL43
	.uaword	.LFE26
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL37
	.uaword	.LVL39
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL45
	.uaword	.LVL46
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL49
	.uaword	.LVL50
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL52
	.uaword	.LVL53-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL54
	.uaword	.LVL55
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL55
	.uaword	.LVL56
	.uahalf	0x3
	.byte	0x7c
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL57
	.uaword	.LVL64
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL64
	.uaword	.LVL65
	.uahalf	0x3
	.byte	0x7c
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL66
	.uaword	.LVL70
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL70
	.uaword	.LFE27
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL54
	.uaword	.LVL55
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL55
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL57
	.uaword	.LVL58
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL58
	.uaword	.LVL61
	.uahalf	0x2
	.byte	0x82
	.sleb128 1
	.uaword	.LVL61
	.uaword	.LVL65
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL66
	.uaword	.LVL70
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL70
	.uaword	.LFE27
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL54
	.uaword	.LVL55
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL59
	.uaword	.LVL65
	.uahalf	0x1
	.byte	0x5d
	.uaword	.LVL66
	.uaword	.LVL70
	.uahalf	0x1
	.byte	0x5d
	.uaword	.LVL70
	.uaword	.LFE27
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL54
	.uaword	.LVL55
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL60
	.uaword	.LVL63
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL63
	.uaword	.LVL65
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL66
	.uaword	.LFE27
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LFB24
	.uaword	.LCFI2
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI2
	.uaword	.LFE24
	.uahalf	0x2
	.byte	0x8a
	.sleb128 48
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL71
	.uaword	.LVL72
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL72
	.uaword	.LVL73
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL73
	.uaword	.LVL74
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL74
	.uaword	.LVL75
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL75
	.uaword	.LVL76
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL76
	.uaword	.LVL77
	.uahalf	0x3
	.byte	0x7f
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL77
	.uaword	.LVL78
	.uahalf	0x3
	.byte	0x7f
	.sleb128 0
	.byte	0x9f
	.uaword	.LVL78
	.uaword	.LVL79
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL79
	.uaword	.LVL80
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL82
	.uaword	.LVL83
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	.LVL83
	.uaword	.LVL88
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL121
	.uaword	.LVL122
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL125
	.uaword	.LVL126
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL127
	.uaword	.LVL128
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL128
	.uaword	.LVL130
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL133
	.uaword	.LFE24
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL71
	.uaword	.LVL82
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL90
	.uaword	.LVL91
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL91
	.uaword	.LVL92
	.uahalf	0x3
	.byte	0x7a
	.sleb128 2
	.byte	0x9f
	.uaword	.LVL93
	.uaword	.LVL97
	.uahalf	0x3
	.byte	0x7a
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL97
	.uaword	.LVL98
	.uahalf	0x3
	.byte	0x7a
	.sleb128 2
	.byte	0x9f
	.uaword	.LVL110
	.uaword	.LVL111
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL111
	.uaword	.LVL112
	.uahalf	0x3
	.byte	0x76
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL112
	.uaword	.LVL113
	.uahalf	0x3
	.byte	0x76
	.sleb128 0
	.byte	0x9f
	.uaword	.LVL121
	.uaword	.LVL122
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL122
	.uaword	.LVL125
	.uahalf	0x3
	.byte	0x7a
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL127
	.uaword	.LVL128
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL133
	.uaword	.LFE24
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL71
	.uaword	.LVL83
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL84
	.uaword	.LVL86
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL86
	.uaword	.LVL87
	.uahalf	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL87
	.uaword	.LVL88
	.uahalf	0x3
	.byte	0x75
	.sleb128 0
	.byte	0x9f
	.uaword	.LVL121
	.uaword	.LVL122
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL125
	.uaword	.LVL126
	.uahalf	0x3
	.byte	0x75
	.sleb128 0
	.byte	0x9f
	.uaword	.LVL127
	.uaword	.LVL128
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL128
	.uaword	.LVL130
	.uahalf	0x3
	.byte	0x75
	.sleb128 0
	.byte	0x9f
	.uaword	.LVL130
	.uaword	.LVL131
	.uahalf	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL131
	.uaword	.LVL132
	.uahalf	0x3
	.byte	0x76
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL132
	.uaword	.LVL133
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL133
	.uaword	.LFE24
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL71
	.uaword	.LVL81
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL81
	.uaword	.LVL83
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	.LVL83
	.uaword	.LVL85
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL86
	.uaword	.LVL88
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL89
	.uaword	.LVL98
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	.LVL121
	.uaword	.LVL122
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL122
	.uaword	.LVL125
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	.LVL125
	.uaword	.LVL126
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL127
	.uaword	.LVL128
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL128
	.uaword	.LVL129
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL133
	.uaword	.LFE24
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL71
	.uaword	.LVL109
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	.LVL121
	.uaword	.LFE24
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL91
	.uaword	.LVL92
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL94
	.uaword	.LVL95
	.uahalf	0x2
	.byte	0x8f
	.sleb128 5
	.uaword	.LVL95
	.uaword	.LVL96
	.uahalf	0x9
	.byte	0x7f
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x8c
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x5
	.uaword	.LVL96
	.uaword	.LVL98
	.uahalf	0xc
	.byte	0x7a
	.sleb128 1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x33
	.byte	0x24
	.byte	0x8c
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x5
	.uaword	.LVL114
	.uaword	.LVL115
	.uahalf	0x2
	.byte	0x8f
	.sleb128 5
	.uaword	.LVL115
	.uaword	.LVL120
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL122
	.uaword	.LVL125
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL114
	.uaword	.LVL115
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL116
	.uaword	.LVL117
	.uahalf	0x6
	.byte	0x71
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL110
	.uaword	.LVL111
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL118
	.uaword	.LVL119
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL99
	.uaword	.LVL100
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL100
	.uaword	.LVL102
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL102
	.uaword	.LVL103
	.uahalf	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL103
	.uaword	.LVL104
	.uahalf	0x3
	.byte	0x74
	.sleb128 0
	.byte	0x9f
	.uaword	.LVL104
	.uaword	.LVL105
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL105
	.uaword	.LVL107
	.uahalf	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL99
	.uaword	.LVL100
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	.LVL100
	.uaword	.LVL108
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL109
	.uaword	.LVL121
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL99
	.uaword	.LVL100
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	.LVL100
	.uaword	.LVL101
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL102
	.uaword	.LVL108
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL134
	.uaword	.LVL135
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL135
	.uaword	.LVL137
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL137
	.uaword	.LVL138
	.uahalf	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL138
	.uaword	.LVL139
	.uahalf	0x3
	.byte	0x73
	.sleb128 0
	.byte	0x9f
	.uaword	.LVL139
	.uaword	.LVL140
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL140
	.uaword	.LVL142
	.uahalf	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL134
	.uaword	.LVL135
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	.LVL135
	.uaword	.LVL143
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL134
	.uaword	.LVL135
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	.LVL135
	.uaword	.LVL136
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL137
	.uaword	.LVL143
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL145
	.uaword	.LVL152
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL152
	.uaword	.LVL154
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL156
	.uaword	.LVL158
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL158
	.uaword	.LVL159
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL160
	.uaword	.LFE29
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL145
	.uaword	.LVL152
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL152
	.uaword	.LVL156
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL156
	.uaword	.LVL157
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL157
	.uaword	.LFE29
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL146
	.uaword	.LVL153
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL153
	.uaword	.LVL155
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL156
	.uaword	.LFE29
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL146
	.uaword	.LVL147
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL147
	.uaword	.LVL148
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL148
	.uaword	.LVL149
	.uahalf	0x3
	.byte	0x7f
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL149
	.uaword	.LVL150
	.uahalf	0x3
	.byte	0x7f
	.sleb128 0
	.byte	0x9f
	.uaword	.LVL150
	.uaword	.LVL151
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL146
	.uaword	.LVL150
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL161
	.uaword	.LVL162
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL163
	.uaword	.LVL164
	.uahalf	0x3
	.byte	0x7f
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL164
	.uaword	.LVL165
	.uahalf	0x3
	.byte	0x7f
	.sleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL161
	.uaword	.LVL165
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	.LVL165
	.uaword	.LFE30
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x4c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB25
	.uaword	.LFE25-.LFB25
	.uaword	.LFB26
	.uaword	.LFE26-.LFB26
	.uaword	.LFB27
	.uaword	.LFE27-.LFB27
	.uaword	.LFB24
	.uaword	.LFE24-.LFB24
	.uaword	.LFB28
	.uaword	.LFE28-.LFB28
	.uaword	.LFB29
	.uaword	.LFE29-.LFB29
	.uaword	.LFB30
	.uaword	.LFE30-.LFB30
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB8
	.uaword	.LBE8
	.uaword	.LBB11
	.uaword	.LBE11
	.uaword	0
	.uaword	0
	.uaword	.LFB25
	.uaword	.LFE25
	.uaword	.LFB26
	.uaword	.LFE26
	.uaword	.LFB27
	.uaword	.LFE27
	.uaword	.LFB24
	.uaword	.LFE24
	.uaword	.LFB28
	.uaword	.LFE28
	.uaword	.LFB29
	.uaword	.LFE29
	.uaword	.LFB30
	.uaword	.LFE30
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF4:
	.string	"xCntFlashBank_u8"
.LASF6:
	.string	"Address_u32"
.LASF5:
	.string	"xActiveSec_u8"
.LASF1:
	.string	"xPhySecIdx_u8"
.LASF0:
	.string	"SecChngCnt_u32"
.LASF2:
	.string	"xCurrSect_u8"
.LASF3:
	.string	"xRetVal_en"
	.extern	Fee_idxLLSectorOrder_au8,STT_OBJECT,2
	.extern	Fee_SecChngCnt_u32,STT_OBJECT,4
	.extern	Fee_LLWriteMarker,STT_FUNC,0
	.extern	Fee_SearchLastBlkHeader,STT_FUNC,0
	.extern	Fee_LLGetSecStartAddress,STT_FUNC,0
	.extern	Fee_LLGetSecEndAddress,STT_FUNC,0
	.extern	Fee_LLInitializeLastHdrVariable,STT_FUNC,0
	.extern	Crc_CalculateCRC16,STT_FUNC,0
	.extern	Fee_LLCopyPageBuff2Marker,STT_FUNC,0
	.extern	Fls_17_Dmu_MainFunction,STT_FUNC,0
	.extern	Fls_17_Dmu_BlankCheck,STT_FUNC,0
	.extern	Fee_FlashProp_st,STT_OBJECT,32
	.extern	Fee_SrvMemSet8,STT_FUNC,0
	.extern	Fee_LLSectorOrder_st,STT_OBJECT,16
	.extern	Fls_17_Dmu_Read,STT_FUNC,0
	.extern	Fee_CheckFlsJobResult,STT_FUNC,0
	.extern	Fee_MarkerBufBytePtr_cpu8,STT_OBJECT,4
	.extern	Fee_stMain,STT_OBJECT,1
	.extern	Fee_NumFlashBanksUsed_u8,STT_OBJECT,1
	.extern	Fee_RdWrRetries_u8,STT_OBJECT,1
	.extern	Fee_RdWrOrder_st,STT_OBJECT,60
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
