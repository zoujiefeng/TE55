	.file	"rba_FeeFs1_LlSectorHandling.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Fee_LLCheckReorganizationNeed,"ax",@progbits
	.align 1
	.global	Fee_LLCheckReorganizationNeed
	.type	Fee_LLCheckReorganizationNeed, @function
Fee_LLCheckReorganizationNeed:
.LFB24:
	.file 1 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_LlSectorHandling.c"
	.loc 1 110 0
.LVL0:
	.loc 1 117 0
	movh.a	%a15, hi:Fee_RdWrOrder_st
	lea	%a15, [%a15] lo:Fee_RdWrOrder_st
	.loc 1 110 0
	mov	%d10, %d4
	.loc 1 117 0
	ld.w	%d4, [%a15] 4
.LVL1:
	.loc 1 110 0
	mov	%d9, %d5
	.loc 1 117 0
	call	Fee_CalculateNumOfFreeBytesInCurSector
.LVL2:
	mov	%d8, %d2
.LVL3:
	.loc 1 121 0
	jge.u	%d9, %d2, .L2
	.loc 1 122 0 discriminator 1
	sub	%d11, %d2, %d9
	.loc 1 126 0 discriminator 1
	mov	%d2, 1
.LVL4:
	.loc 1 121 0 discriminator 1
	jge.u	%d11, %d10, .L13
	.loc 1 134 0
	ld.w	%d4, [%a15] 4
	call	Fee_GetPhysSectorByAddress
.LVL5:
	movh.a	%a15, hi:Fee_idxLLSectorOrder_au8
	lea	%a15, [%a15] lo:Fee_idxLLSectorOrder_au8
	addsc.a	%a15, %a15, %d2, 0
	ld.bu	%d3, [%a15]0
.LVL6:
	.loc 1 140 0
	movh.a	%a15, hi:Fee_NumFlashBanksUsed_u8
.LVL7:
	.loc 1 137 0
	add	%d3, 1
	.loc 1 140 0
	ld.bu	%d2, [%a15] lo:Fee_NumFlashBanksUsed_u8
.LVL8:
	.loc 1 137 0
	and	%d3, %d3, 255
.LVL9:
	.loc 1 140 0
	jlt.u	%d3, %d2, .L4
.L8:
	.loc 1 111 0
	mov	%d2, 5
	ret
.L13:
	.loc 1 191 0
	ret
.L4:
	.loc 1 151 0
	movh.a	%a2, hi:Fee_LLSectorOrder_st
	lea	%a2, [%a2] lo:Fee_LLSectorOrder_st
	addsc.a	%a15, %a2, %d3, 3
	mov	%d15, %d3
	ld.bu	%d4, [%a15] 4
	add	%d4, -2
	and	%d4, %d4, 255
	jlt.u	%d4, 2, .L10
.L11:
	movh	%d7, hi:Fee_FlashProp_st
	.loc 1 110 0
	mov	%d6, 0
	addi	%d7, %d7, lo:Fee_FlashProp_st
	add	%d3, 1
	.loc 1 164 0
	mov.aa	%a3, %a2
	j	.L6
.LVL10:
.L7:
	.loc 1 151 0
	addsc.a	%a15, %a3, %d15, 3
	add	%d6, 1
	ld.bu	%d5, [%a15] 4
	add	%d5, -2
	and	%d5, %d5, 255
	jlt.u	%d5, 2, .L5
.LVL11:
.L6:
	.loc 1 164 0
	addsc.a	%a15, %a2, %d15, 3
	.loc 1 167 0
	ld.bu	%d15, [%a15] 5
.LVL12:
	madd	%d4, %d7, %d15, 16
	mov.a	%a15, %d4
	ld.w	%d5, [%a15] 12
	ld.w	%d15, [%a15] 8
	add	%d5, 1
	sub	%d15, %d5, %d15
	add	%d8, %d15
.LVL13:
	add	%d15, %d3, %d6
	and	%d15, 255
.LVL14:
	.loc 1 149 0
	jlt.u	%d15, %d2, .L7
.L5:
	.loc 1 173 0
	jge.u	%d9, %d8, .L8
	sub	%d11, %d8, %d9
.LVL15:
.L10:
	.loc 1 173 0 is_stmt 0 discriminator 1
	jlt.u	%d11, %d10, .L8
	.loc 1 178 0 is_stmt 1
	mov	%d2, 1
	ret
.LVL16:
.L2:
	.loc 1 134 0
	ld.w	%d4, [%a15] 4
	call	Fee_GetPhysSectorByAddress
.LVL17:
	movh.a	%a15, hi:Fee_idxLLSectorOrder_au8
	lea	%a15, [%a15] lo:Fee_idxLLSectorOrder_au8
	addsc.a	%a15, %a15, %d2, 0
	ld.bu	%d3, [%a15]0
.LVL18:
	.loc 1 140 0
	movh.a	%a15, hi:Fee_NumFlashBanksUsed_u8
.LVL19:
	.loc 1 137 0
	add	%d3, 1
	.loc 1 140 0
	ld.bu	%d2, [%a15] lo:Fee_NumFlashBanksUsed_u8
.LVL20:
	.loc 1 137 0
	and	%d3, %d3, 255
.LVL21:
	.loc 1 140 0
	jge.u	%d3, %d2, .L8
	.loc 1 151 0
	movh.a	%a2, hi:Fee_LLSectorOrder_st
	lea	%a2, [%a2] lo:Fee_LLSectorOrder_st
	addsc.a	%a15, %a2, %d3, 3
	mov	%d15, %d3
	ld.bu	%d4, [%a15] 4
	add	%d4, -2
	and	%d4, %d4, 255
	jge.u	%d4, 2, .L11
	j	.L8
.LFE24:
	.size	Fee_LLCheckReorganizationNeed, .-Fee_LLCheckReorganizationNeed
.section .text.Fee_LLSectorReorganization,"ax",@progbits
	.align 1
	.global	Fee_LLSectorReorganization
	.type	Fee_LLSectorReorganization, @function
Fee_LLSectorReorganization:
.LFB25:
	.loc 1 263 0
.LVL22:
	.loc 1 289 0
	mov	%d15, 0
	.loc 1 322 0
	movh.a	%a15, hi:Fee_RdWrOrder_st
	.loc 1 289 0
	st.b	[%a4]0, %d15
	.loc 1 322 0
	lea	%a15, [%a15] lo:Fee_RdWrOrder_st
	ld.bu	%d15, [%a15] 40
	.loc 1 263 0
	sub.a	%SP, 24
.LCFI0:
	.loc 1 263 0
	mov.aa	%a12, %a4
	.loc 1 322 0
	jlt.u	%d15, 7, .L115
	.loc 1 1137 0
	mov	%d2, 3
	j	.L17
.L115:
	.loc 1 322 0
	movh.a	%a2, hi:.L19
	lea	%a2, [%a2] lo:.L19
	addsc.a	%a2, %a2, %d15, 2
	ji	%a2
	.align 2
	.align 2
.L19:
	.code32
	j	.L18
	.code32
	j	.L20
	.code32
	j	.L21
	.code32
	j	.L22
	.code32
	j	.L23
	.code32
	j	.L24
	.code32
	j	.L25
.L24:
	.loc 1 813 0
	movh.a	%a2, hi:xFee_WriteTwice_b.2016
	movh.a	%a4, hi:Fee_GlobInfoLastRdHeader_st
.LVL23:
	lea	%a4, [%a4] lo:Fee_GlobInfoLastRdHeader_st
	ld.bu	%d4, [%a2] lo:xFee_WriteTwice_b.2016
	call	Fee_LLCpyBlkFromFls2Fls
.LVL24:
	.loc 1 270 0
	mov	%d15, 0
	.loc 1 816 0
	jz	%d2, .L30
	jne	%d2, 1, .L111
.LVL25:
	.loc 1 836 0
	st.b	[%a15] 40, %d2
	.loc 1 830 0
	mov	%d15, 1
	.loc 1 838 0
	j	.L30
.LVL26:
.L25:
	.loc 1 1088 0
	movh.a	%a13, hi:Fee_LLSectorOrder_st
	lea	%a13, [%a13] lo:Fee_LLSectorOrder_st
	ld.bu	%d8, [%a13] 5
.LVL27:
	.loc 1 1091 0
	mov	%d5, 4
	mov	%d4, %d8
	call	Fee_LLWriteMarker
.LVL28:
	jz	%d2, .L75
.LVL29:
	.loc 1 1105 0 discriminator 1
	movh.a	%a2, hi:Fee_NumFlashBanksUsed_u8
	ld.bu	%d5, [%a2] lo:Fee_NumFlashBanksUsed_u8
	movh.a	%a4, hi:Fee_idxLLSectorOrder_au8
	add	%d5, -1
	mov	%d7, 0
	mov	%d15, 0
	lea	%a4, [%a4] lo:Fee_idxLLSectorOrder_au8
	jlez	%d5, .L72
.LVL30:
.L95:
	.loc 1 1108 0 discriminator 3
	addsc.a	%a3, %a13, %d15, 3
	and	%d6, %d7, 255
.LVL31:
	ld.d	%e2, [%a3] 8
	mov.aa	%a2, %a3
	st.d	[%a2+]4, %e2
	.loc 1 1111 0 discriminator 3
	ld.bu	%d15, [%a2] 1
	add	%d7, 1
.LVL32:
	addsc.a	%a2, %a4, %d15, 0
	add	%d15, %d6, 1
	st.b	[%a2]0, %d6
.LVL33:
	.loc 1 1105 0 discriminator 3
	and	%d15, 255
	jlt	%d15, %d5, .L95
.LVL34:
.L72:
	.loc 1 1115 0
	addsc.a	%a13, %a13, %d5, 3
	mov	%d15, 4
	.loc 1 1119 0
	addsc.a	%a4, %a4, %d8, 0
	.loc 1 1115 0
	st.b	[%a13] 4, %d15
	.loc 1 1117 0
	mov	%d15, -1
	.loc 1 1116 0
	st.b	[%a13] 5, %d8
	.loc 1 1117 0
	st.w	[%a13]0, %d15
	.loc 1 1119 0
	st.b	[%a4]0, %d5
.LVL35:
	.loc 1 1122 0
	mov	%d2, 1
.LVL36:
.L17:
	.loc 1 1144 0
	mov	%d15, 0
	st.b	[%a12]0, %d15
	.loc 1 1150 0
	movh.a	%a2, hi:Fee_Prv_stReorg_u8
	.loc 1 1153 0
	st.b	[%a15] 40, %d15
	.loc 1 1156 0
	movh.a	%a15, hi:xSearchRetry_b.2014
	.loc 1 1150 0
	st.b	[%a2] lo:Fee_Prv_stReorg_u8, %d15
	.loc 1 1156 0
	st.b	[%a15] lo:xSearchRetry_b.2014, %d15
	ret
.LVL37:
.L18:
	.loc 1 328 0
	mov	%d15, 1
	movh.a	%a2, hi:Fee_Prv_stReorg_u8
	.loc 1 331 0
	mov	%d2, -1
	movh.a	%a13, hi:xBlkIdx_u16.2015
	.loc 1 328 0
	st.b	[%a2] lo:Fee_Prv_stReorg_u8, %d15
	.loc 1 331 0
	st.h	[%a13] lo:xBlkIdx_u16.2015, %d2
	.loc 1 332 0
	movh.a	%a2, hi:xSearchRetry_b.2014
	mov	%d2, 0
	st.b	[%a2] lo:xSearchRetry_b.2014, %d2
	.loc 1 353 0
	movh.a	%a2, hi:Fee_LLSectorOrder_st
	lea	%a2, [%a2] lo:Fee_LLSectorOrder_st
	ld.bu	%d2, [%a2] 5
	movh.a	%a2, hi:Fee_FlashProp_st
	mov.d	%d4, %a2
	.loc 1 346 0
	st.b	[%a15] 40, %d15
	.loc 1 353 0
	addi	%d3, %d4, lo:Fee_FlashProp_st
	madd	%d4, %d3, %d2, 16
	ld.w	%d15, [%a15] 4
	mov.a	%a2, %d4
	ld.w	%d2, [%a2] 8
	jlt.u	%d15, %d2, .L29
	.loc 1 354 0 discriminator 1
	ld.w	%d2, [%a2] 12
	.loc 1 353 0 discriminator 1
	jge.u	%d2, %d15, .L116
.L29:
	.loc 1 379 0
	movh.a	%a3, hi:Fee_GlobInfoRedundantRdHeader_st
	lea	%a2, [%a3] lo:Fee_GlobInfoRedundantRdHeader_st
	mov	%d15, 0
	.loc 1 376 0
	mov	%d2, 0
	.loc 1 380 0
	st.h	[%a2] 10, %d15
	.loc 1 381 0
	st.b	[%a2] 16, %d2
	.loc 1 382 0
	st.h	[%a2] 12, %d15
	.loc 1 383 0
	st.h	[%a2] 8, %d15
	.loc 1 384 0
	st.w	[%a2] 4, %d15
	.loc 1 385 0
	st.b	[%a2] 14, %d2
	.loc 1 386 0
	st.b	[%a2] 15, %d2
	.loc 1 379 0
	st.w	[%a3] lo:Fee_GlobInfoRedundantRdHeader_st, %d15
	.loc 1 389 0
	movh.a	%a2, hi:xFee_WriteTwice_b.2016
	mov	%d15, 1
	.loc 1 376 0
	st.h	[%a13] lo:xBlkIdx_u16.2015, %d2
	.loc 1 389 0
	st.b	[%a2] lo:xFee_WriteTwice_b.2016, %d15
	mov	%d2, 0
.L28:
	.loc 1 436 0
	movh	%d15, hi:Fee_BlockProperties_st
	addi	%d15, %d15, lo:Fee_BlockProperties_st
	madd	%d3, %d15, %d2, 16
	mov.a	%a2, %d3
	ld.hu	%d4, [%a2]0
	call	Fee_LLGetAddressFromCache
.LVL38:
	mov	%d8, %d2
.LVL39:
	.loc 1 439 0
	call	Fee_LLGetCacheUpdateStForAllSect
.LVL40:
	.loc 1 446 0
	movh	%d3, 51967
	addi	%d3, %d3, -20482
	eq	%d4, %d2, 0
	or.ne	%d4, %d8, %d3
	jz	%d4, .L75
	.loc 1 454 0
	movh	%d8, hi:xAdrBlkHeader_u32.2013
.LVL41:
	.loc 1 457 0
	mov	%d2, 0
.LVL42:
	.loc 1 454 0
	mov.a	%a2, %d8
	.loc 1 457 0
	movh.a	%a14, hi:xSearchRetry_b.2014
	.loc 1 454 0
	mov	%d3, -1
	.loc 1 457 0
	st.b	[%a14] lo:xSearchRetry_b.2014, %d2
	.loc 1 460 0
	mov	%d2, 2
	.loc 1 454 0
	st.w	[%a2] lo:xAdrBlkHeader_u32.2013, %d3
	.loc 1 460 0
	st.b	[%a15] 40, %d2
	mov	%d5, 0
	j	.L26
.LVL43:
.L20:
	movh.a	%a13, hi:xBlkIdx_u16.2015
	ld.h	%d2, [%a13] lo:xBlkIdx_u16.2015
	.loc 1 379 0
	movh.a	%a3, hi:Fee_GlobInfoRedundantRdHeader_st
	add	%d2, 1
	lea	%a2, [%a3] lo:Fee_GlobInfoRedundantRdHeader_st
	mov	%d15, 0
	.loc 1 380 0
	mov	%d3, 0
	extr.u	%d2, %d2, 0, 16
	st.h	[%a2] 10, %d15
	.loc 1 382 0
	st.h	[%a2] 12, %d15
	.loc 1 383 0
	st.h	[%a2] 8, %d15
	.loc 1 384 0
	st.w	[%a2] 4, %d15
	.loc 1 379 0
	st.w	[%a3] lo:Fee_GlobInfoRedundantRdHeader_st, %d15
	.loc 1 381 0
	st.b	[%a2] 16, %d3
	.loc 1 389 0
	mov	%d15, 1
	.loc 1 385 0
	st.b	[%a2] 14, %d3
	.loc 1 386 0
	st.b	[%a2] 15, %d3
	.loc 1 389 0
	movh.a	%a2, hi:xFee_WriteTwice_b.2016
	st.b	[%a2] lo:xFee_WriteTwice_b.2016, %d15
	.loc 1 376 0
	st.h	[%a13] lo:xBlkIdx_u16.2015, %d2
	.loc 1 392 0
	ge.u	%d15, %d2, 58
	jz	%d15, .L28
	.loc 1 429 0
	mov	%d15, 6
	st.b	[%a15] 40, %d15
	.loc 1 270 0
	mov	%d15, 0
.LVL44:
.L30:
	.loc 1 1144 0
	st.b	[%a12]0, %d15
	mov	%d2, 0
	ret
.LVL45:
.L22:
	.loc 1 567 0
	movh.a	%a14, hi:Fee_GlobInfoLastRdHeader_st
	lea	%a13, [%a14] lo:Fee_GlobInfoLastRdHeader_st
	mov.aa	%a4, %a13
.LVL46:
	call	Fee_LLCalcBlkCrcInFlash
.LVL47:
	.loc 1 570 0
	jeq	%d2, 1, .L39
	.loc 1 270 0
	mov	%d15, 0
	.loc 1 570 0
	jz	%d2, .L30
	jne	%d2, 3, .L111
	.loc 1 678 0
	mov	%d2, 2
.LVL48:
	st.b	[%a15] 40, %d2
	.loc 1 697 0
	mov	%d2, 1
	movh.a	%a15, hi:xSearchRetry_b.2014
	st.b	[%a15] lo:xSearchRetry_b.2014, %d2
	.loc 1 700 0
	j	.L30
.LVL49:
.L23:
.LBB4:
.LBB5:
	.loc 1 1222 0
	ld.bu	%d15, [%a15] 41
	jlt.u	%d15, 7, .L117
.LVL50:
.L45:
	movh.a	%a2, hi:xFeeIndex_u16.2078
	ld.hu	%d4, [%a2] lo:xFeeIndex_u16.2078
.LVL51:
.L63:
	.loc 1 1527 0
	movh.a	%a2, hi:xAdrFirstBlkHeader_u32.2080
	.loc 1 1523 0
	mov	%d15, 0
	.loc 1 1527 0
	ld.w	%d5, [%a2] lo:xAdrFirstBlkHeader_u32.2080
	.loc 1 1523 0
	st.b	[%a15] 41, %d15
	.loc 1 1527 0
	call	Fee_LLUpdateAddressInCache
.LVL52:
.LBE5:
.LBE4:
	.loc 1 800 0
	st.b	[%a15] 40, %d15
	.loc 1 270 0
	mov	%d15, 0
	.loc 1 802 0
	j	.L30
.LVL53:
.L21:
	movh.a	%a14, hi:xSearchRetry_b.2014
	movh	%d15, hi:Fee_BlockProperties_st
	ld.bu	%d5, [%a14] lo:xSearchRetry_b.2014
	movh.a	%a13, hi:xBlkIdx_u16.2015
	addi	%d15, %d15, lo:Fee_BlockProperties_st
	movh	%d8, hi:xAdrBlkHeader_u32.2013
.LVL54:
.L26:
	.loc 1 478 0
	ld.hu	%d2, [%a13] lo:xBlkIdx_u16.2015
	movh	%d9, hi:Fee_GlobInfoLastRdHeader_st
	madd	%d3, %d15, %d2, 16
	mov.a	%a3, %d9
	mov.a	%a2, %d3
	lea	%a5, [%a3] lo:Fee_GlobInfoLastRdHeader_st
	ld.hu	%d4, [%a2]0
	mov.a	%a2, %d8
	lea	%a4, [%a2] lo:xAdrBlkHeader_u32.2013
	call	Fee_LLSearchSpecifiedBlkHeader
.LVL55:
	.loc 1 485 0
	jlt.u	%d2, 7, .L118
.L32:
	.loc 1 552 0
	ld.hu	%d2, [%a13] lo:xBlkIdx_u16.2015
.LVL56:
	movh	%d5, 45055
	madd	%d4, %d15, %d2, 16
	addi	%d5, %d5, -13570
	.loc 1 556 0
	mov	%d15, 0
	.loc 1 552 0
	mov.a	%a2, %d4
	ld.hu	%d4, [%a2]0
	call	Fee_LLUpdateAddressInCache
.LVL57:
	.loc 1 556 0
	st.b	[%a15] 40, %d15
	.loc 1 270 0
	mov	%d15, 0
	.loc 1 558 0
	j	.L30
.LVL58:
.L111:
	.loc 1 861 0
	st.b	[%a15] 40, %d15
	.loc 1 863 0
	j	.L30
.LVL59:
.L49:
.LBB17:
.LBB6:
	.loc 1 1325 0
	movh.a	%a13, hi:Fee_PageBytePtr_cpu8
	ld.a	%a5, [%a13] lo:Fee_PageBytePtr_cpu8
	ld.bu	%d15, [%a5] 2
	ne	%d15, %d15, 150
	jnz	%d15, .L50
	ld.bu	%d15, [%a5] 1
	ne	%d15, %d15, 60
	jnz	%d15, .L50
	.loc 1 1326 0
	ld.bu	%d15, [%a5]0
	ne	%d15, %d15, 165
	jnz	%d15, .L50
	.loc 1 1330 0
	lea	%a4, [%SP] 4
.LVL60:
	call	Fee_LLCopyPageBuff2HeaderMid
.LVL61:
	.loc 1 1333 0
	ld.a	%a4, [%a13] lo:Fee_PageBytePtr_cpu8
	mov	%d4, 8
	mov.u	%d5, 51966
	mov	%d6, 0
	call	Crc_CalculateCRC16
.LVL62:
	.loc 1 1341 0
	ld.hu	%d15, [%SP] 12
	jne	%d15, %d2, .L50
	.loc 1 1342 0
	movh.a	%a2, hi:xFeeIndex_u16.2078
	ld.hu	%d2, [%SP] 8
.LVL63:
	ld.hu	%d15, [%a2] lo:xFeeIndex_u16.2078
	jne	%d2, %d15, .L50
	.loc 1 1343 0
	ld.b	%d15, [%SP] 7
	jltz	%d15, .L50
	.loc 1 1348 0
	ld.a	%a5, [%a13] lo:Fee_PageBytePtr_cpu8
	lea	%a4, [%SP] 4
	call	Fee_LLCopyPageBuff2HeaderEnd
.LVL64:
	.loc 1 1351 0
	movh.a	%a4, hi:Fee_GlobInfoRedundantRdHeader_st
	.loc 1 1353 0
	ld.h	%d15, [%SP] 10
	.loc 1 1351 0
	lea	%a2, [%a4] lo:Fee_GlobInfoRedundantRdHeader_st
	.loc 1 1353 0
	st.h	[%a2] 10, %d15
	.loc 1 1354 0
	ld.bu	%d15, [%SP] 7
	.loc 1 1351 0
	movh.a	%a3, hi:xAdrLastBlkHeader_u32.2079
	.loc 1 1354 0
	st.b	[%a2] 16, %d15
	.loc 1 1355 0
	ld.h	%d15, [%SP] 8
	.loc 1 1351 0
	ld.w	%d2, [%a3] lo:xAdrLastBlkHeader_u32.2079
	.loc 1 1355 0
	st.h	[%a2] 12, %d15
	.loc 1 1356 0
	ld.h	%d15, [%SP] 12
	.loc 1 1352 0
	ld.w	%d3, [%SP] 16
	.loc 1 1356 0
	st.h	[%a2] 8, %d15
	.loc 1 1357 0
	ld.bu	%d15, [%SP] 20
	.loc 1 1351 0
	st.w	[%a4] lo:Fee_GlobInfoRedundantRdHeader_st, %d2
	.loc 1 1357 0
	st.b	[%a2] 14, %d15
	.loc 1 1358 0
	ld.bu	%d15, [%SP] 21
	.loc 1 1352 0
	st.w	[%a2] 4, %d3
	.loc 1 1358 0
	st.b	[%a2] 15, %d15
	.loc 1 1360 0
	mov	%d15, 6
	st.b	[%a15] 41, %d15
.LVL65:
.L75:
.LBE6:
.LBE17:
	.loc 1 270 0
	mov	%d15, 0
.L120:
.LVL66:
	.loc 1 1144 0
	st.b	[%a12]0, %d15
	mov	%d2, 0
	ret
.LVL67:
.L118:
	.loc 1 485 0
	movh.a	%a2, hi:.L33
	lea	%a2, [%a2] lo:.L33
	addsc.a	%a2, %a2, %d2, 2
	ji	%a2
	.align 2
	.align 2
.L33:
	.code32
	j	.L75
	.code32
	j	.L34
	.code32
	j	.L32
	.code32
	j	.L35
	.code32
	j	.L32
	.code32
	j	.L32
	.code32
	j	.L36
.LVL68:
.L117:
.LBB18:
.LBB7:
	.loc 1 1222 0
	movh.a	%a2, hi:.L47
	lea	%a2, [%a2] lo:.L47
	addsc.a	%a2, %a2, %d15, 2
	ji	%a2
	.align 2
	.align 2
.L47:
	.code32
	j	.L46
	.code32
	j	.L48
	.code32
	j	.L49
	.code32
	j	.L50
	.code32
	j	.L51
	.code32
	j	.L52
	.code32
	j	.L53
.LVL69:
.L116:
.LBE7:
.LBE18:
	.loc 1 362 0
	st.w	[%a15] 4, %d2
	j	.L29
.LVL70:
.L34:
	.loc 1 505 0
	mov.a	%a2, %d9
	.loc 1 512 0
	ld.bu	%d2, [%a14] lo:xSearchRetry_b.2014
.LVL71:
	.loc 1 505 0
	ld.w	%d5, [%a2] lo:Fee_GlobInfoLastRdHeader_st
	mov.a	%a2, %d8
	st.w	[%a2] lo:xAdrBlkHeader_u32.2013, %d5
	.loc 1 512 0
	jnz	%d2, .L119
.L37:
	.loc 1 519 0
	mov	%d15, 3
	st.b	[%a15] 40, %d15
	.loc 1 270 0
	mov	%d15, 0
	.loc 1 521 0
	j	.L30
.LVL72:
.L36:
	.loc 1 540 0
	mov	%d15, 1
	st.b	[%a14] lo:xSearchRetry_b.2014, %d15
	.loc 1 270 0
	mov	%d15, 0
	.loc 1 541 0
	j	.L30
.L35:
	.loc 1 529 0
	mov	%d15, 1
	st.b	[%a15] 40, %d15
	.loc 1 270 0
	mov	%d15, 0
	.loc 1 531 0
	j	.L30
.LVL73:
.L50:
.LBB19:
.LBB8:
	.loc 1 1377 0
	mov	%d15, 4
	st.b	[%a15] 41, %d15
.LBE8:
.LBE19:
	.loc 1 270 0
	mov	%d15, 0
	j	.L120
.LVL74:
.L51:
.LBB20:
.LBB9:
	.loc 1 1385 0
	movh.a	%a2, hi:Fee_GlobInfoRedundantRdHeader_st
	lea	%a3, [%a2] lo:Fee_GlobInfoRedundantRdHeader_st
	ld.h	%d15, [%a3] 12
	movh.a	%a3, hi:xFeeIndex_u16.2078
	st.h	[%a3] lo:xFeeIndex_u16.2078, %d15
	.loc 1 1388 0
	ld.w	%d15, [%a2] lo:Fee_GlobInfoRedundantRdHeader_st
	movh.a	%a2, hi:xAdrFirstBlkHeader_u32.2080
	st.w	[%a2] lo:xAdrFirstBlkHeader_u32.2080, %d15
	.loc 1 1391 0
	movh.a	%a2, hi:xAdrLastBlkHeader_u32.2079
	st.w	[%a2] lo:xAdrLastBlkHeader_u32.2079, %d15
	.loc 1 1394 0
	mov	%d15, 5
	st.b	[%a15] 41, %d15
.LBE9:
.LBE20:
	.loc 1 270 0
	mov	%d15, 0
	j	.L120
.L52:
.LBB21:
.LBB10:
	.loc 1 1403 0
	movh.a	%a13, hi:Fee_GlobInfoRedundantRdHeader_st
	movh.a	%a14, hi:xFeeIndex_u16.2078
	lea	%a13, [%a13] lo:Fee_GlobInfoRedundantRdHeader_st
	movh.a	%a4, hi:xAdrLastBlkHeader_u32.2079
.LVL75:
	ld.hu	%d4, [%a14] lo:xFeeIndex_u16.2078
	lea	%a4, [%a4] lo:xAdrLastBlkHeader_u32.2079
	mov.aa	%a5, %a13
	mov	%d5, 1
	call	Fee_LLSearchSpecifiedBlkHeader
.LVL76:
	.loc 1 1409 0
	jeq	%d2, 1, .L61
	jz	%d2, .L75
	jne	%d2, 3, .L121
	.loc 1 1527 0
	movh.a	%a2, hi:xAdrFirstBlkHeader_u32.2080
	.loc 1 1432 0
	ld.hu	%d4, [%a14] lo:xFeeIndex_u16.2078
	.loc 1 1523 0
	mov	%d15, 0
	.loc 1 1527 0
	ld.w	%d5, [%a2] lo:xAdrFirstBlkHeader_u32.2080
	.loc 1 1432 0
	st.h	[%a13] 12, %d4
.LVL77:
	.loc 1 1523 0
	st.b	[%a15] 41, %d15
	.loc 1 1527 0
	call	Fee_LLUpdateAddressInCache
.LVL78:
.LBE10:
.LBE21:
	.loc 1 785 0
	movh.a	%a2, hi:xFee_WriteTwice_b.2016
	st.b	[%a2] lo:xFee_WriteTwice_b.2016, %d15
.LVL79:
.L113:
	.loc 1 787 0
	mov	%d15, 5
	st.b	[%a15] 40, %d15
	.loc 1 270 0
	mov	%d15, 0
	.loc 1 789 0
	j	.L30
.LVL80:
.L48:
.LBB22:
.LBB11:
	.loc 1 1271 0
	movh.a	%a15, hi:Fee_stMain
	ld.bu	%d15, [%a15] lo:Fee_stMain
	jz	%d15, .L122
	.loc 1 1279 0
	call	Fee_CheckFlsJobResult
.LVL81:
.L123:
.LBE11:
.LBE22:
	.loc 1 270 0
	mov	%d15, 0
	j	.L120
.LVL82:
.L46:
.LBB23:
.LBB12:
	.loc 1 1228 0
	movh.a	%a2, hi:Fee_GlobInfoRedundantRdHeader_st
	lea	%a13, [%a2] lo:Fee_GlobInfoRedundantRdHeader_st
	ld.h	%d15, [%a13] 12
	movh.a	%a3, hi:xFeeIndex_u16.2078
	st.h	[%a3] lo:xFeeIndex_u16.2078, %d15
	.loc 1 1234 0
	ld.hu	%d15, [%a13] 10
	.loc 1 1231 0
	ld.w	%d4, [%a2] lo:Fee_GlobInfoRedundantRdHeader_st
	.loc 1 1234 0
	addi	%d15, %d15, 14
.LVL83:
	.loc 1 1231 0
	movh.a	%a2, hi:xAdrFirstBlkHeader_u32.2080
	st.w	[%a2] lo:xAdrFirstBlkHeader_u32.2080, %d4
	.loc 1 1235 0
	and	%d2, %d15, 7
	jz	%d2, .L54
.L55:
	.loc 1 1237 0
	add	%d15, 1
.LVL84:
	.loc 1 1235 0
	and	%d2, %d15, 7
	jnz	%d2, .L55
.L54:
	.loc 1 1241 0
	sub	%d15, %d4, %d15
.LVL85:
	.loc 1 1246 0
	call	Fee_GetPhysSectorByAddress
.LVL86:
	mov	%d4, %d2
	call	Fee_LLGetSecStartAddress
.LVL87:
	.loc 1 1245 0
	jlt.u	%d15, %d2, .L50
	.loc 1 1247 0
	ld.bu	%d2, [%a13] 16
	.loc 1 1246 0
	jnz.t	%d2, 6, .L50
	.loc 1 1251 0
	movh.a	%a2, hi:Fee_PageBytePtr_cpu8
	ld.a	%a4, [%a2] lo:Fee_PageBytePtr_cpu8
	mov	%d4, %d15
	mov	%d5, 14
	call	Fls_17_Dmu_Read
.LVL88:
	jnz	%d2, .L50
	.loc 1 1253 0
	movh.a	%a2, hi:xAdrLastBlkHeader_u32.2079
	st.w	[%a2] lo:xAdrLastBlkHeader_u32.2079, %d15
	.loc 1 1254 0
	mov	%d15, 1
.LVL89:
	st.b	[%a15] 41, %d15
.LBE12:
.LBE23:
	.loc 1 270 0
	mov	%d15, 0
	j	.L120
.LVL90:
.L53:
.LBB24:
.LBB13:
	.loc 1 1462 0
	movh.a	%a13, hi:Fee_GlobInfoRedundantRdHeader_st
	lea	%a4, [%a13] lo:Fee_GlobInfoRedundantRdHeader_st
.LVL91:
	call	Fee_LLCalcBlkCrcInFlash
.LVL92:
	.loc 1 1465 0
	jeq	%d2, 1, .L65
	jz	%d2, .L75
	jne	%d2, 3, .L45
	.loc 1 1487 0
	ld.w	%d15, [%a13] lo:Fee_GlobInfoRedundantRdHeader_st
	movh.a	%a2, hi:xAdrLastBlkHeader_u32.2079
	st.w	[%a2] lo:xAdrLastBlkHeader_u32.2079, %d15
	.loc 1 1490 0
	mov	%d15, 5
	st.b	[%a15] 41, %d15
.LBE13:
.LBE24:
	.loc 1 270 0
	mov	%d15, 0
	j	.L120
.LVL93:
.L122:
.LBB25:
.LBB14:
	.loc 1 1274 0
	call	Fls_17_Dmu_MainFunction
.LVL94:
	.loc 1 1279 0
	call	Fee_CheckFlsJobResult
.LVL95:
	j	.L123
.LVL96:
.L39:
.LBE14:
.LBE25:
	.loc 1 583 0
	movh.a	%a2, hi:Fee_LLSectorOrder_st
	lea	%a2, [%a2] lo:Fee_LLSectorOrder_st
	.loc 1 586 0
	ld.bu	%d2, [%a2] 5
.LVL97:
	movh.a	%a2, hi:Fee_FlashProp_st
	mov.d	%d4, %a2
	ld.w	%d15, [%a14] lo:Fee_GlobInfoLastRdHeader_st
	addi	%d3, %d4, lo:Fee_FlashProp_st
	madd	%d4, %d3, %d2, 16
	mov.a	%a2, %d4
	ld.w	%d2, [%a2] 8
	jlt.u	%d15, %d2, .L41
	.loc 1 586 0 is_stmt 0 discriminator 1
	ld.w	%d2, [%a2] 12
	jge.u	%d15, %d2, .L41
	.loc 1 597 0 is_stmt 1
	movh.a	%a2, hi:Fee_Prv_stReorg_u8
	ld.bu	%d15, [%a2] lo:Fee_Prv_stReorg_u8
	jeq	%d15, 1, .L113
	.loc 1 597 0 is_stmt 0 discriminator 1
	jeq	%d15, 2, .L124
.L44:
.LVL98:
	.loc 1 611 0 is_stmt 1
	mov	%d15, 1
	st.b	[%a15] 40, %d15
	.loc 1 608 0
	mov	%d15, 1
	j	.L30
.LVL99:
.L41:
	.loc 1 619 0
	ld.bu	%d15, [%a13] 16
	jz.t	%d15, 0, .L44
	.loc 1 632 0
	movh	%d2, hi:Fee_GlobInfoRedundantRdHeader_st
	mov.a	%a3, %d2
	.loc 1 635 0
	mov	%d15, 4
	.loc 1 632 0
	lea	%a2, [%a3] lo:Fee_GlobInfoRedundantRdHeader_st
	.loc 1 635 0
	st.b	[%a15] 40, %d15
	.loc 1 632 0
		# #chunks=2, chunksize=8, remains=4
	ld.d	%e2, [%a13+]8
	st.d	[%a2+]8, %e2
	ld.d	%e2, [%a13+]8
	st.d	[%a2+]8, %e2
	ld.w	%d2, [%a13+]4
	st.w	[%a2+]4, %d2
	.loc 1 270 0
	mov	%d15, 0
	j	.L30
.LVL100:
.L119:
	.loc 1 514 0
	ld.hu	%d2, [%a13] lo:xBlkIdx_u16.2015
	madd	%d3, %d15, %d2, 16
	mov.a	%a2, %d3
	ld.hu	%d4, [%a2]0
	call	Fee_LLUpdateAddressInCache
.LVL101:
	j	.L37
.LVL102:
.L65:
	movh.a	%a2, hi:xFeeIndex_u16.2078
	ld.hu	%d4, [%a2] lo:xFeeIndex_u16.2078
.LVL103:
.LBB26:
.LBB15:
	.loc 1 1527 0
	movh.a	%a2, hi:xAdrFirstBlkHeader_u32.2080
	ld.w	%d5, [%a2] lo:xAdrFirstBlkHeader_u32.2080
	.loc 1 1523 0
	mov	%d8, 0
	st.b	[%a15] 41, %d8
	.loc 1 1527 0
	call	Fee_LLUpdateAddressInCache
.LVL104:
.LBE15:
.LBE26:
	.loc 1 759 0
	movh.a	%a2, hi:Fee_LLSectorOrder_st
	lea	%a2, [%a2] lo:Fee_LLSectorOrder_st
	.loc 1 762 0
	ld.bu	%d15, [%a2] 5
	movh.a	%a2, hi:Fee_FlashProp_st
	mov.d	%d4, %a2
	ld.w	%d2, [%a13] lo:Fee_GlobInfoRedundantRdHeader_st
	addi	%d3, %d4, lo:Fee_FlashProp_st
	madd	%d4, %d3, %d15, 16
	mov.a	%a2, %d4
	ld.w	%d15, [%a2] 8
	jlt.u	%d2, %d15, .L44
	.loc 1 762 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a2] 12
	jge.u	%d2, %d15, .L44
	.loc 1 768 0 is_stmt 1
	mov	%d15, 5
	.loc 1 766 0
	movh.a	%a2, hi:xFee_WriteTwice_b.2016
	.loc 1 768 0
	st.b	[%a15] 40, %d15
	.loc 1 766 0
	st.b	[%a2] lo:xFee_WriteTwice_b.2016, %d8
	.loc 1 270 0
	mov	%d15, 0
	.loc 1 768 0
	j	.L30
.LVL105:
.L121:
.LBB27:
.LBB16:
	.loc 1 1448 0
	ld.hu	%d4, [%a14] lo:xFeeIndex_u16.2078
	st.h	[%a13] 12, %d4
.LVL106:
	j	.L63
.LVL107:
.L61:
	.loc 1 1423 0
	mov	%d15, 6
	st.b	[%a15] 41, %d15
.LBE16:
.LBE27:
	.loc 1 270 0
	mov	%d15, 0
	j	.L120
.LVL108:
.L124:
	.loc 1 599 0
	ld.bu	%d15, [%a13] 16
	.loc 1 598 0
	jnz.t	%d15, 4, .L113
	j	.L44
.LFE25:
	.size	Fee_LLSectorReorganization, .-Fee_LLSectorReorganization
.section .bss.a4.xAdrLastBlkHeader_u32.2079,"aw",@nobits
	.align 2
	.type	xAdrLastBlkHeader_u32.2079, @object
	.size	xAdrLastBlkHeader_u32.2079, 4
xAdrLastBlkHeader_u32.2079:
	.zero	4
.section .bss.a4.xAdrFirstBlkHeader_u32.2080,"aw",@nobits
	.align 2
	.type	xAdrFirstBlkHeader_u32.2080, @object
	.size	xAdrFirstBlkHeader_u32.2080, 4
xAdrFirstBlkHeader_u32.2080:
	.zero	4
.section .bss.a2.xFeeIndex_u16.2078,"aw",@nobits
	.align 1
	.type	xFeeIndex_u16.2078, @object
	.size	xFeeIndex_u16.2078, 2
xFeeIndex_u16.2078:
	.zero	2
.section .bss.a4.xAdrBlkHeader_u32.2013,"aw",@nobits
	.align 2
	.type	xAdrBlkHeader_u32.2013, @object
	.size	xAdrBlkHeader_u32.2013, 4
xAdrBlkHeader_u32.2013:
	.zero	4
.section .bss.a1.xFee_WriteTwice_b.2016,"aw",@nobits
	.type	xFee_WriteTwice_b.2016, @object
	.size	xFee_WriteTwice_b.2016, 1
xFee_WriteTwice_b.2016:
	.zero	1
.section .bss.a1.xSearchRetry_b.2014,"aw",@nobits
	.type	xSearchRetry_b.2014, @object
	.size	xSearchRetry_b.2014, 1
xSearchRetry_b.2014:
	.zero	1
.section .bss.a2.xBlkIdx_u16.2015,"aw",@nobits
	.align 1
	.type	xBlkIdx_u16.2015, @object
	.size	xBlkIdx_u16.2015, 2
xBlkIdx_u16.2015:
	.zero	2
.section .bss.a4.Fee_GlobInfoRedundantRdHeader_st,"aw",@nobits
	.align 2
	.type	Fee_GlobInfoRedundantRdHeader_st, @object
	.size	Fee_GlobInfoRedundantRdHeader_st, 20
Fee_GlobInfoRedundantRdHeader_st:
	.zero	20
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
	.uaword	.LFB24
	.uaword	.LFE24-.LFB24
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB25
	.uaword	.LFE25-.LFB25
	.byte	0x4
	.uaword	.LCFI0-.LFB25
	.byte	0xe
	.uleb128 0x18
	.align 2
.LEFDE2:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 4 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\inc\\Fls_17_Dmu.h"
	.file 5 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_Prv.h"
	.file 6 ".\\output\\inc/..\\..\\bsw\\Crc\\Crc.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x28eb
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_LlSectorHandling.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x68
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
	.uaword	0x1db
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
	.uaword	0x207
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
	.uaword	0x243
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
	.uaword	0x1db
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x3
	.string	"Std_ReturnType"
	.byte	0x3
	.byte	0x60
	.uaword	0x1ce
	.uleb128 0x4
	.string	"Fls_17_Dmu_AddressType"
	.byte	0x4
	.uahalf	0xa21
	.uaword	0x235
	.uleb128 0x4
	.string	"Fls_17_Dmu_LengthType"
	.byte	0x4
	.uahalf	0xa25
	.uaword	0x235
	.uleb128 0x5
	.byte	0x4
	.uaword	0x1ce
	.uleb128 0x5
	.byte	0x4
	.uaword	0x30f
	.uleb128 0x6
	.uaword	0x1ce
	.uleb128 0x5
	.byte	0x4
	.uaword	0x31a
	.uleb128 0x7
	.byte	0x1
	.uleb128 0x8
	.byte	0x1
	.byte	0x5
	.byte	0xa9
	.uaword	0x369
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
	.uaword	0x4c3
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
	.uaword	0x1ce
	.uaword	0x4d3
	.uleb128 0xb
	.uaword	0x4d3
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0xc
	.byte	0x1
	.byte	0x5
	.uahalf	0x103
	.uaword	0x579
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
	.uaword	0x4df
	.uleb128 0xd
	.byte	0x8
	.byte	0x5
	.uahalf	0x10d
	.uaword	0x5df
	.uleb128 0xe
	.string	"SecChngCnt_u32"
	.byte	0x5
	.uahalf	0x10f
	.uaword	0x235
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"SecState_en"
	.byte	0x5
	.uahalf	0x110
	.uaword	0x579
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.uaword	.LASF0
	.byte	0x5
	.uahalf	0x111
	.uaword	0x1ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x4
	.string	"Fee_LLSectorOrder_tst"
	.byte	0x5
	.uahalf	0x112
	.uaword	0x595
	.uleb128 0xc
	.byte	0x1
	.byte	0x5
	.uahalf	0x116
	.uaword	0x6d4
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
	.uaword	0x5fd
	.uleb128 0xd
	.byte	0x10
	.byte	0x5
	.uahalf	0x125
	.uaword	0x781
	.uleb128 0xe
	.string	"Fee_PhysStartAddress_u32"
	.byte	0x5
	.uahalf	0x127
	.uaword	0x235
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"Fee_PhysEndAddress_u32"
	.byte	0x5
	.uahalf	0x128
	.uaword	0x235
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"Fee_LogStartAddress_u32"
	.byte	0x5
	.uahalf	0x129
	.uaword	0x235
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"Fee_LogEndAddress_u32"
	.byte	0x5
	.uahalf	0x12a
	.uaword	0x235
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x4
	.string	"Fee_FlashProp_tst"
	.byte	0x5
	.uahalf	0x12b
	.uaword	0x6ed
	.uleb128 0xd
	.byte	0x10
	.byte	0x5
	.uahalf	0x14c
	.uaword	0x837
	.uleb128 0xe
	.string	"BlockPersistentId_u16"
	.byte	0x5
	.uahalf	0x14e
	.uaword	0x1f9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"Flags_u16"
	.byte	0x5
	.uahalf	0x14f
	.uaword	0x1f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xe
	.string	"Length_u16"
	.byte	0x5
	.uahalf	0x150
	.uaword	0x1f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"JobEndNotification_pfn"
	.byte	0x5
	.uahalf	0x151
	.uaword	0x837
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"JobErrorNotification_pfn"
	.byte	0x5
	.uahalf	0x152
	.uaword	0x837
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x6
	.uaword	0x314
	.uleb128 0x4
	.string	"Fee_BlockPropertiesType_tst"
	.byte	0x5
	.uahalf	0x153
	.uaword	0x79b
	.uleb128 0xc
	.byte	0x1
	.byte	0x5
	.uahalf	0x15f
	.uaword	0x991
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
	.uaword	0x860
	.uleb128 0xc
	.byte	0x1
	.byte	0x5
	.uahalf	0x16e
	.uaword	0xa94
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
	.uaword	0x9b0
	.uleb128 0xc
	.byte	0x1
	.byte	0x5
	.uahalf	0x183
	.uaword	0xcaf
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
	.uaword	0xab4
	.uleb128 0xc
	.byte	0x1
	.byte	0x5
	.uahalf	0x1b2
	.uaword	0xd8e
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
	.uaword	0xccd
	.uleb128 0xc
	.byte	0x1
	.byte	0x5
	.uahalf	0x1be
	.uaword	0xe5e
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
	.uaword	0xdab
	.uleb128 0xc
	.byte	0x1
	.byte	0x5
	.uahalf	0x1c9
	.uaword	0xf7b
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
	.uaword	0xe7b
	.uleb128 0xc
	.byte	0x1
	.byte	0x5
	.uahalf	0x1d9
	.uaword	0x10ed
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
	.uaword	0xf9c
	.uleb128 0xc
	.byte	0x1
	.byte	0x5
	.uahalf	0x1f7
	.uaword	0x11b1
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
	.uaword	0x110b
	.uleb128 0xc
	.byte	0x1
	.byte	0x5
	.uahalf	0x201
	.uaword	0x122b
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
	.uaword	0x11d2
	.uleb128 0xc
	.byte	0x1
	.byte	0x5
	.uahalf	0x211
	.uaword	0x1291
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
	.uaword	0x124d
	.uleb128 0xc
	.byte	0x1
	.byte	0x5
	.uahalf	0x219
	.uaword	0x12f8
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
	.uaword	0x12b4
	.uleb128 0xc
	.byte	0x1
	.byte	0x5
	.uahalf	0x220
	.uaword	0x136b
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
	.uaword	0x1317
	.uleb128 0xc
	.byte	0x1
	.byte	0x5
	.uahalf	0x23d
	.uaword	0x1468
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
	.uaword	0x1391
	.uleb128 0xc
	.byte	0x1
	.byte	0x5
	.uahalf	0x259
	.uaword	0x15ab
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
	.uaword	0x1487
	.uleb128 0xc
	.byte	0x1
	.byte	0x5
	.uahalf	0x269
	.uaword	0x19c5
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
	.uaword	0x15cd
	.uleb128 0xd
	.byte	0x3c
	.byte	0x5
	.uahalf	0x2c1
	.uaword	0x1d60
	.uleb128 0xe
	.string	"xRdAddress"
	.byte	0x5
	.uahalf	0x2c3
	.uaword	0x235
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"xWrAddress"
	.byte	0x5
	.uahalf	0x2c4
	.uaword	0x235
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"xCmpAddress"
	.byte	0x5
	.uahalf	0x2c5
	.uaword	0x235
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"xCrcAddress"
	.byte	0x5
	.uahalf	0x2c6
	.uaword	0x235
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"xCpyAddress"
	.byte	0x5
	.uahalf	0x2c7
	.uaword	0x235
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"AdrHdSearchStart_u32"
	.byte	0x5
	.uahalf	0x2c8
	.uaword	0x235
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"xStartAddrNextSector_u32"
	.byte	0x5
	.uahalf	0x2c9
	.uaword	0x235
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"xHdPg2Address"
	.byte	0x5
	.uahalf	0x2cd
	.uaword	0x235
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"LastProgrammedAddress_u32"
	.byte	0x5
	.uahalf	0x2d1
	.uaword	0x235
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.string	"LastValidHdrAddress_u32"
	.byte	0x5
	.uahalf	0x2d2
	.uaword	0x235
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xe
	.string	"Fee_LLSecReorg_en"
	.byte	0x5
	.uahalf	0x2d5
	.uaword	0x1468
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xe
	.string	"Fee_LLRedundantCpyChk_en"
	.byte	0x5
	.uahalf	0x2d6
	.uaword	0x15ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x29
	.uleb128 0xe
	.string	"Fee_LLCpyBlkFls2Fls_en"
	.byte	0x5
	.uahalf	0x2d7
	.uaword	0x19c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x2a
	.uleb128 0xe
	.string	"Fee_HLWrBlock_en"
	.byte	0x5
	.uahalf	0x2dd
	.uaword	0xa94
	.byte	0x2
	.byte	0x23
	.uleb128 0x2b
	.uleb128 0xe
	.string	"Fee_HLMtBlock_en"
	.byte	0x5
	.uahalf	0x2e0
	.uaword	0xa94
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xe
	.string	"Fee_LLWrBlock_en"
	.byte	0x5
	.uahalf	0x2e3
	.uaword	0xcaf
	.byte	0x2
	.byte	0x23
	.uleb128 0x2d
	.uleb128 0xe
	.string	"Fee_HLRdBlock"
	.byte	0x5
	.uahalf	0x2e4
	.uaword	0xa94
	.byte	0x2
	.byte	0x23
	.uleb128 0x2e
	.uleb128 0xe
	.string	"Fee_LLNextUsedWrBlock_en"
	.byte	0x5
	.uahalf	0x2e5
	.uaword	0xcaf
	.byte	0x2
	.byte	0x23
	.uleb128 0x2f
	.uleb128 0xe
	.string	"Fee_LLNextEraseWrBlock_en"
	.byte	0x5
	.uahalf	0x2e6
	.uaword	0xcaf
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"Fee_LLCompBlk"
	.byte	0x5
	.uahalf	0x2e7
	.uaword	0xd8e
	.byte	0x2
	.byte	0x23
	.uleb128 0x31
	.uleb128 0xe
	.string	"Fee_LLCopyBlk_en"
	.byte	0x5
	.uahalf	0x2e8
	.uaword	0xe5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x32
	.uleb128 0xe
	.string	"Fee_LLCalcCrcBlk_en"
	.byte	0x5
	.uahalf	0x2e9
	.uaword	0xf7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x33
	.uleb128 0xe
	.string	"Fee_LLWrMarker_en"
	.byte	0x5
	.uahalf	0x2ea
	.uaword	0x991
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xe
	.string	"Fee_LLRdState_en"
	.byte	0x5
	.uahalf	0x2eb
	.uaword	0x10ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x35
	.uleb128 0xe
	.string	"Fee_LLBlankCheckState_en"
	.byte	0x5
	.uahalf	0x2ec
	.uaword	0x11b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x36
	.uleb128 0xe
	.string	"Fee_LLFindEmptyPageState_en"
	.byte	0x5
	.uahalf	0x2ed
	.uaword	0x122b
	.byte	0x2
	.byte	0x23
	.uleb128 0x37
	.uleb128 0xe
	.string	"Fee_LLSearchBlkHdr_en"
	.byte	0x5
	.uahalf	0x2ee
	.uaword	0x1291
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xe
	.string	"Fee_LLBuildUpCache_en"
	.byte	0x5
	.uahalf	0x2fb
	.uaword	0x12f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x39
	.uleb128 0xe
	.string	"Fee_LLBuildUpCacheAllSect_en"
	.byte	0x5
	.uahalf	0x2fc
	.uaword	0x136b
	.byte	0x2
	.byte	0x23
	.uleb128 0x3a
	.byte	0
	.uleb128 0x4
	.string	"Fee_RdWrOrder_tst"
	.byte	0x5
	.uahalf	0x2fe
	.uaword	0x19e5
	.uleb128 0xd
	.byte	0x14
	.byte	0x5
	.uahalf	0x301
	.uaword	0x1dfa
	.uleb128 0xe
	.string	"AdrBlkHeader_u32"
	.byte	0x5
	.uahalf	0x303
	.uaword	0x235
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.uaword	.LASF1
	.byte	0x5
	.uahalf	0x304
	.uaword	0x235
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.uaword	.LASF2
	.byte	0x5
	.uahalf	0x305
	.uaword	0x1f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.uaword	.LASF3
	.byte	0x5
	.uahalf	0x306
	.uaword	0x1f9
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xf
	.uaword	.LASF4
	.byte	0x5
	.uahalf	0x307
	.uaword	0x1f9
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xf
	.uaword	.LASF5
	.byte	0x5
	.uahalf	0x308
	.uaword	0x1dfa
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xf
	.uaword	.LASF6
	.byte	0x5
	.uahalf	0x309
	.uaword	0x1ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0xa
	.uaword	0x1ce
	.uaword	0x1e0a
	.uleb128 0xb
	.uaword	0x4d3
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.string	"Fee_GlobInfoLastRdHeader_tst"
	.byte	0x5
	.uahalf	0x30a
	.uaword	0x1d7a
	.uleb128 0xd
	.byte	0x14
	.byte	0x5
	.uahalf	0x34b
	.uaword	0x1eab
	.uleb128 0xe
	.string	"Preamble_au8"
	.byte	0x5
	.uahalf	0x34d
	.uaword	0x4c3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.uaword	.LASF6
	.byte	0x5
	.uahalf	0x34e
	.uaword	0x1ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xf
	.uaword	.LASF4
	.byte	0x5
	.uahalf	0x34f
	.uaword	0x1f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.uaword	.LASF3
	.byte	0x5
	.uahalf	0x350
	.uaword	0x1f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xf
	.uaword	.LASF2
	.byte	0x5
	.uahalf	0x351
	.uaword	0x1f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.uaword	.LASF1
	.byte	0x5
	.uahalf	0x352
	.uaword	0x235
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xf
	.uaword	.LASF5
	.byte	0x5
	.uahalf	0x353
	.uaword	0x1dfa
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x4
	.string	"Fee_BlkHeader_tst"
	.byte	0x5
	.uahalf	0x354
	.uaword	0x1e2f
	.uleb128 0xc
	.byte	0x1
	.byte	0x5
	.uahalf	0x3b8
	.uaword	0x1ef8
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
	.uaword	0x1ec5
	.uleb128 0x10
	.string	"Fee_LLRedundantCpyChk"
	.byte	0x1
	.uahalf	0x4ba
	.byte	0x1
	.uaword	0x6d4
	.byte	0x1
	.uaword	0x2028
	.uleb128 0x11
	.string	"xFee_GlobInfoRedundantRdHeader_pst"
	.byte	0x1
	.uahalf	0x4ba
	.uaword	0x2028
	.uleb128 0x12
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x4bc
	.uaword	0x6d4
	.uleb128 0x12
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x4bd
	.uaword	0x6d4
	.uleb128 0x13
	.string	"xFeeIndex_u16"
	.byte	0x1
	.uahalf	0x4be
	.uaword	0x1f9
	.uleb128 0x13
	.string	"xAdrLastBlkHeader_u32"
	.byte	0x1
	.uahalf	0x4bf
	.uaword	0x235
	.uleb128 0x13
	.string	"xAdrFirstBlkHeader_u32"
	.byte	0x1
	.uahalf	0x4c0
	.uaword	0x235
	.uleb128 0x13
	.string	"xTmpBlkHdr_st"
	.byte	0x1
	.uahalf	0x4c1
	.uaword	0x1eab
	.uleb128 0x13
	.string	"xExpectedAdrLastBlkHdr_u32"
	.byte	0x1
	.uahalf	0x4c2
	.uaword	0x235
	.uleb128 0x13
	.string	"len_u32"
	.byte	0x1
	.uahalf	0x4c3
	.uaword	0x235
	.uleb128 0x13
	.string	"xCalcCrc_u16"
	.byte	0x1
	.uahalf	0x4c4
	.uaword	0x1f9
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x1e0a
	.uleb128 0x14
	.byte	0x1
	.string	"Fee_LLCheckReorganizationNeed"
	.byte	0x1
	.byte	0x6c
	.byte	0x1
	.uaword	0x6d4
	.uaword	.LFB24
	.uaword	.LFE24
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x20f7
	.uleb128 0x15
	.string	"Threshold_u32"
	.byte	0x1
	.byte	0x6c
	.uaword	0x235
	.uaword	.LLST0
	.uleb128 0x15
	.string	"DataLength_u16"
	.byte	0x1
	.byte	0x6d
	.uaword	0x1f9
	.uaword	.LLST1
	.uleb128 0x16
	.uaword	.LASF7
	.byte	0x1
	.byte	0x6f
	.uaword	0x6d4
	.byte	0x5
	.uleb128 0x17
	.uaword	.LASF9
	.byte	0x1
	.byte	0x70
	.uaword	0x1ce
	.uaword	.LLST2
	.uleb128 0x18
	.uaword	.LASF0
	.byte	0x1
	.byte	0x71
	.uaword	0x1ce
	.uleb128 0x19
	.string	"xNumFreeBytes_u32"
	.byte	0x1
	.byte	0x72
	.uaword	0x235
	.uaword	.LLST3
	.uleb128 0x1a
	.uaword	.LVL2
	.uaword	0x25cd
	.uleb128 0x1a
	.uaword	.LVL5
	.uaword	0x2609
	.uleb128 0x1a
	.uaword	.LVL17
	.uaword	0x2609
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.string	"Fee_LLSectorReorganization"
	.byte	0x1
	.uahalf	0x106
	.byte	0x1
	.uaword	0x6d4
	.uaword	.LFB25
	.uaword	.LFE25
	.uaword	.LLST4
	.byte	0x1
	.uaword	0x2431
	.uleb128 0x1c
	.string	"SectReorgInterSt_pb"
	.byte	0x1
	.uahalf	0x106
	.uaword	0x2431
	.uaword	.LLST5
	.uleb128 0x1d
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x108
	.uaword	0x6d4
	.uaword	.LLST6
	.uleb128 0x1d
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x109
	.uaword	0x6d4
	.uaword	.LLST7
	.uleb128 0x1d
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x10a
	.uaword	0x1ce
	.uaword	.LLST8
	.uleb128 0x1d
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x10b
	.uaword	0x1ce
	.uaword	.LLST9
	.uleb128 0x1e
	.string	"xTmpAddr_u32"
	.byte	0x1
	.uahalf	0x10c
	.uaword	0x235
	.uaword	.LLST10
	.uleb128 0x1e
	.string	"xStCache_u8"
	.byte	0x1
	.uahalf	0x10d
	.uaword	0x1ce
	.uaword	.LLST11
	.uleb128 0x1e
	.string	"xSectReorgInterSt_b"
	.byte	0x1
	.uahalf	0x10e
	.uaword	0x280
	.uaword	.LLST12
	.uleb128 0x1f
	.string	"xAdrBlkHeader_u32"
	.byte	0x1
	.uahalf	0x110
	.uaword	0x235
	.byte	0x5
	.byte	0x3
	.uaword	xAdrBlkHeader_u32.2013
	.uleb128 0x1f
	.string	"xSearchRetry_b"
	.byte	0x1
	.uahalf	0x111
	.uaword	0x280
	.byte	0x5
	.byte	0x3
	.uaword	xSearchRetry_b.2014
	.uleb128 0x1f
	.string	"xBlkIdx_u16"
	.byte	0x1
	.uahalf	0x112
	.uaword	0x1f9
	.byte	0x5
	.byte	0x3
	.uaword	xBlkIdx_u16.2015
	.uleb128 0x1f
	.string	"xFee_WriteTwice_b"
	.byte	0x1
	.uahalf	0x113
	.uaword	0x280
	.byte	0x5
	.byte	0x3
	.uaword	xFee_WriteTwice_b.2016
	.uleb128 0x20
	.uaword	0x1f0f
	.uaword	.LBB4
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.uahalf	0x2e5
	.uaword	0x23b0
	.uleb128 0x21
	.uaword	0x1f33
	.uaword	.LLST13
	.uleb128 0x22
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x23
	.uaword	0x1f5e
	.uaword	.LLST14
	.uleb128 0x23
	.uaword	0x1f6a
	.uaword	.LLST15
	.uleb128 0x24
	.uaword	0x1fc9
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x23
	.uaword	0x1fdf
	.uaword	.LLST16
	.uleb128 0x23
	.uaword	0x2002
	.uaword	.LLST17
	.uleb128 0x23
	.uaword	0x2012
	.uaword	.LLST18
	.uleb128 0x24
	.uaword	0x1f76
	.byte	0x5
	.byte	0x3
	.uaword	xFeeIndex_u16.2078
	.uleb128 0x24
	.uaword	0x1f8c
	.byte	0x5
	.byte	0x3
	.uaword	xAdrLastBlkHeader_u32.2079
	.uleb128 0x24
	.uaword	0x1faa
	.byte	0x5
	.byte	0x3
	.uaword	xAdrFirstBlkHeader_u32.2080
	.uleb128 0x1a
	.uaword	.LVL52
	.uaword	0x2639
	.uleb128 0x25
	.uaword	.LVL61
	.uaword	0x266a
	.uaword	0x22ea
	.uleb128 0x26
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x25
	.uaword	.LVL62
	.uaword	0x26a3
	.uaword	0x2309
	.uleb128 0x26
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x30
	.uleb128 0x26
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xb
	.uahalf	0xcafe
	.uleb128 0x26
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x38
	.byte	0
	.uleb128 0x25
	.uaword	.LVL64
	.uaword	0x26d9
	.uaword	0x231d
	.uleb128 0x26
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x25
	.uaword	.LVL76
	.uaword	0x270c
	.uaword	0x233f
	.uleb128 0x26
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0x26
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x26
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	xAdrLastBlkHeader_u32.2079
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL78
	.uaword	0x2639
	.uleb128 0x1a
	.uaword	.LVL81
	.uaword	0x2755
	.uleb128 0x1a
	.uaword	.LVL86
	.uaword	0x2609
	.uleb128 0x1a
	.uaword	.LVL87
	.uaword	0x2772
	.uleb128 0x25
	.uaword	.LVL88
	.uaword	0x27a0
	.uaword	0x237c
	.uleb128 0x26
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x3e
	.uleb128 0x26
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.uaword	.LVL92
	.uaword	0x27de
	.uaword	0x2393
	.uleb128 0x26
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	Fee_GlobInfoRedundantRdHeader_st
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL94
	.uaword	0x2816
	.uleb128 0x1a
	.uaword	.LVL95
	.uaword	0x2755
	.uleb128 0x1a
	.uaword	.LVL104
	.uaword	0x2639
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL24
	.uaword	0x2835
	.uleb128 0x25
	.uaword	.LVL28
	.uaword	0x2867
	.uaword	0x23d2
	.uleb128 0x26
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x34
	.uleb128 0x26
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL38
	.uaword	0x2893
	.uleb128 0x1a
	.uaword	.LVL40
	.uaword	0x28c2
	.uleb128 0x25
	.uaword	.LVL47
	.uaword	0x27de
	.uaword	0x23f8
	.uleb128 0x26
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.uaword	.LVL55
	.uaword	0x270c
	.uaword	0x240f
	.uleb128 0x26
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	xAdrBlkHeader_u32.2013
	.byte	0
	.uleb128 0x25
	.uaword	.LVL57
	.uaword	0x2639
	.uaword	0x2427
	.uleb128 0x26
	.byte	0x1
	.byte	0x55
	.byte	0x6
	.byte	0x11
	.sleb128 -1342256386
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL101
	.uaword	0x2639
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x280
	.uleb128 0x27
	.string	"Fee_GlobInfoRedundantRdHeader_st"
	.byte	0x1
	.byte	0x2e
	.uaword	0x1e0a
	.byte	0x5
	.byte	0x3
	.uaword	Fee_GlobInfoRedundantRdHeader_st
	.uleb128 0xa
	.uaword	0x781
	.uaword	0x2475
	.uleb128 0xb
	.uaword	0x4d3
	.byte	0x1
	.byte	0
	.uleb128 0x28
	.string	"Fee_FlashProp_st"
	.byte	0x5
	.uahalf	0x3fc
	.uaword	0x2490
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.uaword	0x2465
	.uleb128 0x28
	.string	"Fee_PageBytePtr_cpu8"
	.byte	0x5
	.uahalf	0x404
	.uaword	0x303
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.string	"Fee_RdWrOrder_st"
	.byte	0x5
	.uahalf	0x405
	.uaword	0x1d60
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.uaword	0x5df
	.uaword	0x24df
	.uleb128 0xb
	.uaword	0x4d3
	.byte	0x1
	.byte	0
	.uleb128 0x28
	.string	"Fee_LLSectorOrder_st"
	.byte	0x5
	.uahalf	0x406
	.uaword	0x24cf
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.string	"Fee_GlobInfoLastRdHeader_st"
	.byte	0x5
	.uahalf	0x40a
	.uaword	0x1e0a
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.string	"Fee_Prv_stReorg_u8"
	.byte	0x5
	.uahalf	0x41b
	.uaword	0x1ce
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.string	"Fee_NumFlashBanksUsed_u8"
	.byte	0x5
	.uahalf	0x41c
	.uaword	0x1ce
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.string	"Fee_stMain"
	.byte	0x5
	.uahalf	0x431
	.uaword	0x1ef8
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.string	"Fee_idxLLSectorOrder_au8"
	.byte	0x5
	.uahalf	0x437
	.uaword	0x1dfa
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.uaword	0x83c
	.uaword	0x25ac
	.uleb128 0xb
	.uaword	0x4d3
	.byte	0x39
	.byte	0
	.uleb128 0x28
	.string	"Fee_BlockProperties_st"
	.byte	0x5
	.uahalf	0x464
	.uaword	0x259c
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.byte	0x1
	.string	"Fee_CalculateNumOfFreeBytesInCurSector"
	.byte	0x5
	.uahalf	0x4ac
	.byte	0x1
	.uaword	0x235
	.byte	0x1
	.uaword	0x2609
	.uleb128 0x2a
	.uaword	0x235
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.string	"Fee_GetPhysSectorByAddress"
	.byte	0x5
	.uahalf	0x4b7
	.byte	0x1
	.uaword	0x1ce
	.byte	0x1
	.uaword	0x2639
	.uleb128 0x2a
	.uaword	0x235
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"Fee_LLUpdateAddressInCache"
	.byte	0x5
	.uahalf	0x51e
	.byte	0x1
	.byte	0x1
	.uaword	0x266a
	.uleb128 0x2a
	.uaword	0x1f9
	.uleb128 0x2a
	.uaword	0x235
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"Fee_LLCopyPageBuff2HeaderMid"
	.byte	0x5
	.uahalf	0x4ff
	.byte	0x1
	.byte	0x1
	.uaword	0x269d
	.uleb128 0x2a
	.uaword	0x269d
	.uleb128 0x2a
	.uaword	0x309
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x1eab
	.uleb128 0x2c
	.byte	0x1
	.string	"Crc_CalculateCRC16"
	.byte	0x6
	.byte	0x40
	.byte	0x1
	.uaword	0x1f9
	.byte	0x1
	.uaword	0x26d9
	.uleb128 0x2a
	.uaword	0x309
	.uleb128 0x2a
	.uaword	0x235
	.uleb128 0x2a
	.uaword	0x1f9
	.uleb128 0x2a
	.uaword	0x280
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"Fee_LLCopyPageBuff2HeaderEnd"
	.byte	0x5
	.uahalf	0x500
	.byte	0x1
	.byte	0x1
	.uaword	0x270c
	.uleb128 0x2a
	.uaword	0x269d
	.uleb128 0x2a
	.uaword	0x309
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.string	"Fee_LLSearchSpecifiedBlkHeader"
	.byte	0x5
	.uahalf	0x4c9
	.byte	0x1
	.uaword	0x6d4
	.byte	0x1
	.uaword	0x274f
	.uleb128 0x2a
	.uaword	0x1f9
	.uleb128 0x2a
	.uaword	0x274f
	.uleb128 0x2a
	.uaword	0x2028
	.uleb128 0x2a
	.uaword	0x280
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x235
	.uleb128 0x2d
	.byte	0x1
	.string	"Fee_CheckFlsJobResult"
	.byte	0x5
	.uahalf	0x547
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.byte	0x1
	.string	"Fee_LLGetSecStartAddress"
	.byte	0x5
	.uahalf	0x4db
	.byte	0x1
	.uaword	0x235
	.byte	0x1
	.uaword	0x27a0
	.uleb128 0x2a
	.uaword	0x1ce
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.string	"Fls_17_Dmu_Read"
	.byte	0x4
	.uahalf	0xc68
	.byte	0x1
	.uaword	0x2b0
	.byte	0x1
	.uaword	0x27cf
	.uleb128 0x2a
	.uaword	0x27cf
	.uleb128 0x2a
	.uaword	0x27d4
	.uleb128 0x2a
	.uaword	0x27d9
	.byte	0
	.uleb128 0x6
	.uaword	0x2c6
	.uleb128 0x6
	.uaword	0x303
	.uleb128 0x6
	.uaword	0x2e5
	.uleb128 0x29
	.byte	0x1
	.string	"Fee_LLCalcBlkCrcInFlash"
	.byte	0x5
	.uahalf	0x4e0
	.byte	0x1
	.uaword	0x6d4
	.byte	0x1
	.uaword	0x280b
	.uleb128 0x2a
	.uaword	0x280b
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2811
	.uleb128 0x6
	.uaword	0x1e0a
	.uleb128 0x2d
	.byte	0x1
	.string	"Fls_17_Dmu_MainFunction"
	.byte	0x4
	.uahalf	0xc2d
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.byte	0x1
	.string	"Fee_LLCpyBlkFromFls2Fls"
	.byte	0x5
	.uahalf	0x4e1
	.byte	0x1
	.uaword	0x6d4
	.byte	0x1
	.uaword	0x2867
	.uleb128 0x2a
	.uaword	0x280b
	.uleb128 0x2a
	.uaword	0x280
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.string	"Fee_LLWriteMarker"
	.byte	0x5
	.uahalf	0x4ba
	.byte	0x1
	.uaword	0x6d4
	.byte	0x1
	.uaword	0x2893
	.uleb128 0x2a
	.uaword	0x1ce
	.uleb128 0x2a
	.uaword	0x1ce
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.string	"Fee_LLGetAddressFromCache"
	.byte	0x5
	.uahalf	0x51c
	.byte	0x1
	.uaword	0x235
	.byte	0x1
	.uaword	0x28c2
	.uleb128 0x2a
	.uaword	0x1f9
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.string	"Fee_LLGetCacheUpdateStForAllSect"
	.byte	0x5
	.uahalf	0x523
	.byte	0x1
	.uaword	0x1ce
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xa
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
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x15
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
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0xb
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
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL1
	.uaword	.LFE24
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL2-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL2-1
	.uaword	.LFE24
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL4
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL16
	.uaword	.LVL17-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL17-1
	.uaword	.LFE24
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LFB25
	.uaword	.LCFI0
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0
	.uaword	.LFE25
	.uahalf	0x2
	.byte	0x8a
	.sleb128 24
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL23
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL26
	.uaword	.LVL28-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL28-1
	.uaword	.LVL37
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL37
	.uaword	.LVL38-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL38-1
	.uaword	.LVL43
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL43
	.uaword	.LVL44
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL44
	.uaword	.LVL45
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL45
	.uaword	.LVL46
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL46
	.uaword	.LVL49
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL49
	.uaword	.LVL50
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL50
	.uaword	.LVL53
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL53
	.uaword	.LVL54
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL54
	.uaword	.LVL59
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL59
	.uaword	.LVL60
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL60
	.uaword	.LVL68
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL68
	.uaword	.LVL70
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL70
	.uaword	.LVL74
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL74
	.uaword	.LVL75
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL75
	.uaword	.LVL80
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL80
	.uaword	.LVL81-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL81-1
	.uaword	.LVL82
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL82
	.uaword	.LVL86-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL86-1
	.uaword	.LVL90
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL90
	.uaword	.LVL91
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL91
	.uaword	.LVL93
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL93
	.uaword	.LVL94-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL94-1
	.uaword	.LFE25
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL22
	.uaword	.LVL35
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL35
	.uaword	.LVL36
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL36
	.uaword	.LVL37
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL37
	.uaword	.LFE25
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL22
	.uaword	.LVL24
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL26
	.uaword	.LVL44
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL45
	.uaword	.LVL47
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL47
	.uaword	.LVL48
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL49
	.uaword	.LVL52
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL53
	.uaword	.LVL55
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL55
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL59
	.uaword	.LVL65
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL67
	.uaword	.LVL68
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL68
	.uaword	.LVL70
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL70
	.uaword	.LVL71
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL72
	.uaword	.LVL73
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL73
	.uaword	.LVL78
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL80
	.uaword	.LVL96
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL96
	.uaword	.LVL97
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL102
	.uaword	.LVL104
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL105
	.uaword	.LVL108
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL29
	.uaword	.LVL30
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL31
	.uaword	.LVL32
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL33
	.uaword	.LVL34
	.uahalf	0x3
	.byte	0x76
	.sleb128 1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL27
	.uaword	.LVL28-1
	.uahalf	0x2
	.byte	0x8d
	.sleb128 5
	.uaword	.LVL28-1
	.uaword	.LVL36
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL22
	.uaword	.LVL39
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xcafeaffe
	.uaword	.LVL39
	.uaword	.LVL40-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL40-1
	.uaword	.LVL41
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL43
	.uaword	.LVL44
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xcafeaffe
	.uaword	.LVL45
	.uaword	.LVL54
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xcafeaffe
	.uaword	.LVL58
	.uaword	.LVL65
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xcafeaffe
	.uaword	.LVL68
	.uaword	.LVL70
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xcafeaffe
	.uaword	.LVL73
	.uaword	.LVL100
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xcafeaffe
	.uaword	.LVL102
	.uaword	.LFE25
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xcafeaffe
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL22
	.uaword	.LVL40
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL40
	.uaword	.LVL42
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL43
	.uaword	.LVL44
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL45
	.uaword	.LVL54
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL58
	.uaword	.LVL65
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL68
	.uaword	.LVL70
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL73
	.uaword	.LVL100
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL102
	.uaword	.LFE25
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL22
	.uaword	.LVL25
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL26
	.uaword	.LVL44
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL44
	.uaword	.LVL45
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL45
	.uaword	.LVL66
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL66
	.uaword	.LVL67
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL67
	.uaword	.LVL98
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL98
	.uaword	.LVL99
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL99
	.uaword	.LFE25
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL49
	.uaword	.LVL53
	.uahalf	0x6
	.byte	0x3
	.uaword	Fee_GlobInfoRedundantRdHeader_st
	.byte	0x9f
	.uaword	.LVL59
	.uaword	.LVL65
	.uahalf	0x6
	.byte	0x3
	.uaword	Fee_GlobInfoRedundantRdHeader_st
	.byte	0x9f
	.uaword	.LVL68
	.uaword	.LVL69
	.uahalf	0x6
	.byte	0x3
	.uaword	Fee_GlobInfoRedundantRdHeader_st
	.byte	0x9f
	.uaword	.LVL73
	.uaword	.LVL79
	.uahalf	0x6
	.byte	0x3
	.uaword	Fee_GlobInfoRedundantRdHeader_st
	.byte	0x9f
	.uaword	.LVL80
	.uaword	.LVL96
	.uahalf	0x6
	.byte	0x3
	.uaword	Fee_GlobInfoRedundantRdHeader_st
	.byte	0x9f
	.uaword	.LVL102
	.uaword	.LVL108
	.uahalf	0x6
	.byte	0x3
	.uaword	Fee_GlobInfoRedundantRdHeader_st
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL49
	.uaword	.LVL51
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL51
	.uaword	.LVL53
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	.LVL59
	.uaword	.LVL65
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL68
	.uaword	.LVL69
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL73
	.uaword	.LVL77
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL77
	.uaword	.LVL79
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL80
	.uaword	.LVL96
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL102
	.uaword	.LVL103
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL103
	.uaword	.LVL105
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL105
	.uaword	.LVL106
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL106
	.uaword	.LVL107
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	.LVL107
	.uaword	.LVL108
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL49
	.uaword	.LVL50
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL59
	.uaword	.LVL65
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL68
	.uaword	.LVL69
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL73
	.uaword	.LVL76
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL76
	.uaword	.LVL78-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL80
	.uaword	.LVL92
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL92
	.uaword	.LVL93
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL93
	.uaword	.LVL96
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL102
	.uaword	.LVL104-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL105
	.uaword	.LVL108
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL85
	.uaword	.LVL89
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL89
	.uaword	.LVL90
	.uahalf	0x5
	.byte	0x3
	.uaword	xAdrLastBlkHeader_u32.2079
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL83
	.uaword	.LVL85
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL62
	.uaword	.LVL63
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x24
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB24
	.uaword	.LFE24-.LFB24
	.uaword	.LFB25
	.uaword	.LFE25-.LFB25
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB4
	.uaword	.LBE4
	.uaword	.LBB17
	.uaword	.LBE17
	.uaword	.LBB18
	.uaword	.LBE18
	.uaword	.LBB19
	.uaword	.LBE19
	.uaword	.LBB20
	.uaword	.LBE20
	.uaword	.LBB21
	.uaword	.LBE21
	.uaword	.LBB22
	.uaword	.LBE22
	.uaword	.LBB23
	.uaword	.LBE23
	.uaword	.LBB24
	.uaword	.LBE24
	.uaword	.LBB25
	.uaword	.LBE25
	.uaword	.LBB26
	.uaword	.LBE26
	.uaword	.LBB27
	.uaword	.LBE27
	.uaword	0
	.uaword	0
	.uaword	.LFB24
	.uaword	.LFE24
	.uaword	.LFB25
	.uaword	.LFE25
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF6:
	.string	"BlkStatus_u8"
.LASF1:
	.string	"BlkCrc32_u32"
.LASF5:
	.string	"DataBytes_au8"
.LASF9:
	.string	"xLogSecIdx_u8"
.LASF4:
	.string	"FeeIndex_u16"
.LASF2:
	.string	"HdrCrc16_u16"
.LASF3:
	.string	"BlkLength_u16"
.LASF0:
	.string	"xPhySecIdx_u8"
.LASF8:
	.string	"xTmpRetVal_en"
.LASF7:
	.string	"xRetVal_en"
	.extern	Fls_17_Dmu_MainFunction,STT_FUNC,0
	.extern	Fls_17_Dmu_Read,STT_FUNC,0
	.extern	Fee_LLGetSecStartAddress,STT_FUNC,0
	.extern	Fee_CheckFlsJobResult,STT_FUNC,0
	.extern	Fee_stMain,STT_OBJECT,1
	.extern	Fee_LLCopyPageBuff2HeaderEnd,STT_FUNC,0
	.extern	Crc_CalculateCRC16,STT_FUNC,0
	.extern	Fee_LLCopyPageBuff2HeaderMid,STT_FUNC,0
	.extern	Fee_PageBytePtr_cpu8,STT_OBJECT,4
	.extern	Fee_LLSearchSpecifiedBlkHeader,STT_FUNC,0
	.extern	Fee_LLUpdateAddressInCache,STT_FUNC,0
	.extern	Fee_LLCalcBlkCrcInFlash,STT_FUNC,0
	.extern	Fee_LLGetCacheUpdateStForAllSect,STT_FUNC,0
	.extern	Fee_LLGetAddressFromCache,STT_FUNC,0
	.extern	Fee_BlockProperties_st,STT_OBJECT,928
	.extern	Fee_Prv_stReorg_u8,STT_OBJECT,1
	.extern	Fee_LLWriteMarker,STT_FUNC,0
	.extern	Fee_LLCpyBlkFromFls2Fls,STT_FUNC,0
	.extern	Fee_GlobInfoLastRdHeader_st,STT_OBJECT,20
	.extern	Fee_FlashProp_st,STT_OBJECT,32
	.extern	Fee_LLSectorOrder_st,STT_OBJECT,16
	.extern	Fee_NumFlashBanksUsed_u8,STT_OBJECT,1
	.extern	Fee_idxLLSectorOrder_au8,STT_OBJECT,2
	.extern	Fee_GetPhysSectorByAddress,STT_FUNC,0
	.extern	Fee_CalculateNumOfFreeBytesInCurSector,STT_FUNC,0
	.extern	Fee_RdWrOrder_st,STT_OBJECT,60
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
