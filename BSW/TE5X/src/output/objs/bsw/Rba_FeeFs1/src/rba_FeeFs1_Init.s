	.file	"rba_FeeFs1_Init.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Fee_Rb_EndInit,"ax",@progbits
	.align 1
	.global	Fee_Rb_EndInit
	.type	Fee_Rb_EndInit, @function
Fee_Rb_EndInit:
.LFB25:
	.file 1 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_Init.c"
	.loc 1 464 0
	.loc 1 468 0
	mov	%d15, 1
	movh.a	%a15, hi:Fee_Prv_stInit_u8
	st.b	[%a15] lo:Fee_Prv_stInit_u8, %d15
	ret
.LFE25:
	.size	Fee_Rb_EndInit, .-Fee_Rb_EndInit
.section .text.Fee_InitVarAndState,"ax",@progbits
	.align 1
	.global	Fee_InitVarAndState
	.type	Fee_InitVarAndState, @function
Fee_InitVarAndState:
.LFB26:
	.loc 1 489 0
	.loc 1 493 0
	mov	%d15, 0
	movh.a	%a2, hi:Fee_RdWrOrder_st
	lea	%a15, [%a2] lo:Fee_RdWrOrder_st
	.loc 1 498 0
	mov	%d8, -1
	.loc 1 493 0
	st.w	[%a2] lo:Fee_RdWrOrder_st, %d15
	.loc 1 549 0
	movh.a	%a2, hi:Fee_LLEraseOrder_st
	.loc 1 494 0
	st.w	[%a15] 4, %d15
	.loc 1 495 0
	st.w	[%a15] 8, %d15
	.loc 1 496 0
	st.w	[%a15] 12, %d15
	.loc 1 497 0
	st.w	[%a15] 16, %d15
	.loc 1 498 0
	st.w	[%a15] 20, %d8
	.loc 1 501 0
	st.w	[%a15] 28, %d15
	.loc 1 505 0
	st.w	[%a15] 32, %d15
	.loc 1 506 0
	st.w	[%a15] 36, %d15
	.loc 1 510 0
	st.b	[%a15] 40, %d15
	.loc 1 511 0
	st.b	[%a15] 41, %d15
	.loc 1 512 0
	st.b	[%a15] 42, %d15
	.loc 1 513 0
	st.b	[%a15] 43, %d15
	.loc 1 514 0
	st.b	[%a15] 45, %d15
	.loc 1 515 0
	st.b	[%a15] 46, %d15
	.loc 1 516 0
	st.b	[%a15] 47, %d15
	.loc 1 518 0
	st.b	[%a15] 48, %d15
	.loc 1 520 0
	st.b	[%a15] 49, %d15
	.loc 1 521 0
	st.b	[%a15] 50, %d15
	.loc 1 522 0
	st.b	[%a15] 51, %d15
	.loc 1 523 0
	st.b	[%a15] 52, %d15
	.loc 1 524 0
	st.b	[%a15] 53, %d15
	.loc 1 525 0
	st.b	[%a15] 54, %d15
	.loc 1 529 0
	st.b	[%a15] 55, %d15
	.loc 1 531 0
	st.b	[%a15] 56, %d15
	.loc 1 544 0
	st.b	[%a15] 57, %d15
	.loc 1 545 0
	st.b	[%a15] 58, %d15
	.loc 1 549 0
	st.b	[%a2] lo:Fee_LLEraseOrder_st, %d15
	lea	%a15, [%a2] lo:Fee_LLEraseOrder_st
	.loc 1 556 0
	movh.a	%a4, hi:Fee_GlobInfoLastRdHeader_st
	.loc 1 552 0
	movh.a	%a2, hi:Fee_LLWrEraseStartFlag_st
	.loc 1 550 0
	st.b	[%a15] 1, %d8
	.loc 1 556 0
	lea	%a4, [%a4] lo:Fee_GlobInfoLastRdHeader_st
	.loc 1 552 0
	lea	%a15, [%a2] lo:Fee_LLWrEraseStartFlag_st
	st.b	[%a2] lo:Fee_LLWrEraseStartFlag_st, %d15
	.loc 1 553 0
	st.w	[%a15] 4, %d15
	.loc 1 556 0
	call	Fee_LLInitializeLastHdrVariable
.LVL0:
	.loc 1 559 0
	movh.a	%a2, hi:Fee_GlobInfoWrBlock_st
	lea	%a15, [%a2] lo:Fee_GlobInfoWrBlock_st
	.loc 1 562 0
	mov	%d2, 0
	.loc 1 560 0
	mov	%d3, 3
	.loc 1 565 0
	st.h	[%a2] lo:Fee_GlobInfoWrBlock_st, %d15
	.loc 1 569 0
	movh.a	%a2, hi:Fee_LLSecReorgStruct_st
	.loc 1 562 0
	st.h	[%a15] 4, %d15
	.loc 1 559 0
	st.b	[%a15] 8, %d15
	.loc 1 560 0
	st.b	[%a15] 7, %d3
	.loc 1 564 0
	st.b	[%a15] 6, %d2
	.loc 1 566 0
	st.h	[%a15] 2, %d15
	.loc 1 569 0
	lea	%a15, [%a2] lo:Fee_LLSecReorgStruct_st
	.loc 1 570 0
	st.h	[%a15] 4, %d15
	.loc 1 569 0
	st.b	[%a15] 8, %d2
	.loc 1 572 0
	st.h	[%a15] 6, %d15
	.loc 1 576 0
	movh.a	%a15, hi:Fee_idxActQueue_u8
	.loc 1 590 0
	movh.a	%a3, hi:Fee_idxLLSectorOrder_au8
	.loc 1 571 0
	st.w	[%a2] lo:Fee_LLSecReorgStruct_st, %d15
	.loc 1 576 0
	st.b	[%a15] lo:Fee_idxActQueue_u8, %d3
	.loc 1 585 0
	movh.a	%a2, hi:Fee_LLSectorOrder_st
	.loc 1 579 0
	movh.a	%a15, hi:Fee_RdWrRetries_u8
	st.b	[%a15] lo:Fee_RdWrRetries_u8, %d3
.LVL1:
	.loc 1 586 0
	st.w	[%a2] lo:Fee_LLSectorOrder_st, %d8
	.loc 1 585 0
	lea	%a15, [%a2] lo:Fee_LLSectorOrder_st
	.loc 1 590 0
	lea	%a2, [%a3] lo:Fee_idxLLSectorOrder_au8
	.loc 1 585 0
	st.b	[%a15] 4, %d2
	.loc 1 587 0
	st.b	[%a15] 5, %d8
	.loc 1 590 0
	st.b	[%a3] lo:Fee_idxLLSectorOrder_au8, %d2
.LVL2:
	.loc 1 585 0
	st.b	[%a15] 12, %d2
	.loc 1 586 0
	st.w	[%a15] 8, %d8
	.loc 1 587 0
	st.b	[%a15] 13, %d8
	.loc 1 590 0
	st.b	[%a2] 1, %d2
.LVL3:
	ret
.LFE26:
	.size	Fee_InitVarAndState, .-Fee_InitVarAndState
.section .text.Fee_Init,"ax",@progbits
	.align 1
	.global	Fee_Init
	.type	Fee_Init, @function
Fee_Init:
.LFB24:
	.loc 1 240 0
.LVL4:
	.loc 1 290 0
	movh.a	%a15, hi:Fee_LinkedFunctions_cst
	ld.a	%a15, [%a15] lo:Fee_LinkedFunctions_cst
	jz.a	%a15, .L4
	.loc 1 293 0
	calli	%a15
.LVL5:
.L4:
	.loc 1 298 0
	movh	%d15, hi:Fee_llPageBuf_au32
	addi	%d15, %d15, lo:Fee_llPageBuf_au32
	add	%d15, 7
	andn	%d15, %d15, ~(-8)
	movh.a	%a15, hi:Fee_PageBytePtr_cpu8
	st.w	[%a15] lo:Fee_PageBytePtr_cpu8, %d15
	.loc 1 301 0
	mov	%d15, 0
	movh.a	%a15, hi:Fee_Prv_stInit_u8
	st.b	[%a15] lo:Fee_Prv_stInit_u8, %d15
	.loc 1 312 0
	movh.a	%a2, hi:Fee_JobResult
	.loc 1 304 0
	mov	%d15, 0
	movh.a	%a15, hi:Fee_SecChngCnt_u32
	st.w	[%a15] lo:Fee_SecChngCnt_u32, %d15
	.loc 1 312 0
	lea	%a15, [%a2] lo:Fee_JobResult
	st.b	[%a15] 1, %d15
	st.b	[%a15] 2, %d15
	.loc 1 307 0
	movh.a	%a12, hi:Fee_stMain
	.loc 1 316 0
	movh.a	%a15, hi:Fee_Rb_WorkingState_en
	st.b	[%a15] lo:Fee_Rb_WorkingState_en, %d15
	.loc 1 307 0
	st.b	[%a12] lo:Fee_stMain, %d15
.LVL6:
	.loc 1 312 0
	st.b	[%a2] lo:Fee_JobResult, %d15
.LVL7:
	.loc 1 327 0
	call	Fee_InitVarAndState
.LVL8:
	movh.a	%a3, hi:Fee_Cache_au32
.LBB6:
.LBB7:
	.loc 1 618 0
	movh	%d2, 51967
	lea	%a3, [%a3] lo:Fee_Cache_au32
	addi	%d2, %d2, -20482
	lea	%a15, 57
.LVL9:
.L5:
	addsc.a	%a2, %a3, %d15, 2
	add	%d15, 1
.LVL10:
	st.w	[%a2]0, %d2
.LVL11:
	.loc 1 615 0
	loop	%a15, .L5
.LVL12:
	.loc 1 625 0
	movh.a	%a2, hi:Fee_CacheUpdCompForSect_au8
	mov	%d15, 0
	lea	%a15, [%a2] lo:Fee_CacheUpdCompForSect_au8
	st.b	[%a2] lo:Fee_CacheUpdCompForSect_au8, %d15
.LVL13:
.LBE7:
.LBE6:
.LBB9:
.LBB10:
	.loc 1 652 0
	movh.a	%a2, hi:Fee_OrderFifo_st
	.loc 1 653 0
	mov	%d2, 0
.LBE10:
.LBE9:
.LBB12:
.LBB8:
	.loc 1 625 0
	st.b	[%a15] 1, %d15
.LVL14:
.LBE8:
.LBE12:
.LBB13:
.LBB11:
	.loc 1 652 0
	lea	%a15, [%a2] lo:Fee_OrderFifo_st
	mov	%d15, 0
	.loc 1 653 0
	st.h	[%a15] 4, %d15
	.loc 1 654 0
	st.h	[%a15] 10, %d15
	.loc 1 652 0
	st.w	[%a15] 16, %d15
	.loc 1 653 0
	st.h	[%a15] 20, %d15
	.loc 1 654 0
	st.h	[%a15] 26, %d15
	.loc 1 652 0
	st.w	[%a15] 32, %d15
	.loc 1 653 0
	st.h	[%a15] 36, %d15
	.loc 1 654 0
	st.h	[%a15] 42, %d15
	.loc 1 655 0
	st.b	[%a15] 12, %d2
	.loc 1 656 0
	st.b	[%a15] 14, %d2
.LVL15:
	.loc 1 655 0
	st.b	[%a15] 28, %d2
	.loc 1 656 0
	st.b	[%a15] 30, %d2
.LVL16:
	.loc 1 655 0
	st.b	[%a15] 44, %d2
	.loc 1 656 0
	st.b	[%a15] 46, %d2
.LVL17:
	.loc 1 652 0
	st.w	[%a2] lo:Fee_OrderFifo_st, %d15
.LBE11:
.LBE13:
	.loc 1 336 0
	call	Fee_LLDetectActiveSector
.LVL18:
	.loc 1 338 0
	movh.a	%a15, hi:Fee_idxLLSectorOrder_au8
	lea	%a15, [%a15] lo:Fee_idxLLSectorOrder_au8
	addsc.a	%a15, %a15, %d2, 0
	.loc 1 336 0
	mov	%d15, %d2
.LVL19:
	.loc 1 338 0
	ld.bu	%d8, [%a15]0
.LVL20:
	.loc 1 348 0
	call	Fee_BuildUpCacheForAllSect
.LVL21:
	.loc 1 358 0
	movh.a	%a15, hi:Fee_LLSectorOrder_st
	lea	%a15, [%a15] lo:Fee_LLSectorOrder_st
	addsc.a	%a15, %a15, %d8, 3
	.loc 1 367 0
	mov	%d4, %d15
	.loc 1 358 0
	ld.bu	%d2, [%a15] 4
	jeq	%d2, 2, .L15
	.loc 1 381 0
	jeq	%d2, 3, .L16
	.loc 1 391 0
	call	Fee_LLGetSecStartAddress
.LVL22:
	movh.a	%a15, hi:Fee_RdWrOrder_st
	st.w	[%a15] lo:Fee_RdWrOrder_st, %d2
.L9:
	.loc 1 395 0
	lea	%a15, [%a15] lo:Fee_RdWrOrder_st
	.loc 1 419 0
	mov	%d15, 1
.LVL23:
	.loc 1 395 0
	st.w	[%a15] 4, %d2
	.loc 1 419 0
	movh.a	%a15, hi:Fee_GlobModuleState_st
	st.b	[%a15] lo:Fee_GlobModuleState_st, %d15
	.loc 1 424 0
	st.b	[%a12] lo:Fee_stMain, %d15
	ret
.LVL24:
.L16:
	.loc 1 384 0
	call	Fee_LLGetSecEndAddress
.LVL25:
	movh.a	%a15, hi:Fee_RdWrOrder_st
	st.w	[%a15] lo:Fee_RdWrOrder_st, %d2
	j	.L9
.LVL26:
.L15:
	.loc 1 367 0
	call	Fee_LLFindEmptyPage
.LVL27:
	.loc 1 419 0
	movh.a	%a15, hi:Fee_GlobModuleState_st
	.loc 1 374 0
	mov	%d4, %d15
	.loc 1 419 0
	mov	%d15, 1
.LVL28:
	.loc 1 374 0
	call	Fee_LLUpdateCacheStForSect
.LVL29:
	.loc 1 419 0
	st.b	[%a15] lo:Fee_GlobModuleState_st, %d15
	.loc 1 424 0
	st.b	[%a12] lo:Fee_stMain, %d15
	ret
.LFE24:
	.size	Fee_Init, .-Fee_Init
.section .text.Fee_InitCache,"ax",@progbits
	.align 1
	.global	Fee_InitCache
	.type	Fee_InitCache, @function
Fee_InitCache:
.LFB27:
	.loc 1 611 0
.LVL30:
	movh.a	%a3, hi:Fee_Cache_au32
	.loc 1 618 0
	movh	%d2, 51967
	.loc 1 611 0
	mov	%d15, 0
	lea	%a3, [%a3] lo:Fee_Cache_au32
	.loc 1 618 0
	addi	%d2, %d2, -20482
	lea	%a15, 57
.LVL31:
.L18:
	.loc 1 618 0 is_stmt 0 discriminator 3
	addsc.a	%a2, %a3, %d15, 2
	add	%d15, 1
.LVL32:
	st.w	[%a2]0, %d2
.LVL33:
	.loc 1 615 0 is_stmt 1 discriminator 3
	loop	%a15, .L18
.LVL34:
	.loc 1 625 0 discriminator 1
	movh.a	%a2, hi:Fee_CacheUpdCompForSect_au8
	mov	%d15, 0
	lea	%a15, [%a2] lo:Fee_CacheUpdCompForSect_au8
	st.b	[%a2] lo:Fee_CacheUpdCompForSect_au8, %d15
.LVL35:
	st.b	[%a15] 1, %d15
.LVL36:
	ret
.LFE27:
	.size	Fee_InitCache, .-Fee_InitCache
.section .text.Fee_InitOrderFifoBuffer,"ax",@progbits
	.align 1
	.global	Fee_InitOrderFifoBuffer
	.type	Fee_InitOrderFifoBuffer, @function
Fee_InitOrderFifoBuffer:
.LFB28:
	.loc 1 646 0
.LVL37:
	.loc 1 652 0
	movh.a	%a2, hi:Fee_OrderFifo_st
	lea	%a15, [%a2] lo:Fee_OrderFifo_st
	mov	%d15, 0
	.loc 1 653 0
	mov	%d2, 0
	.loc 1 652 0
	st.w	[%a2] lo:Fee_OrderFifo_st, %d15
	.loc 1 653 0
	st.h	[%a15] 4, %d15
	.loc 1 654 0
	st.h	[%a15] 10, %d15
	.loc 1 655 0
	st.b	[%a15] 12, %d2
	.loc 1 656 0
	st.b	[%a15] 14, %d2
.LVL38:
	.loc 1 652 0
	st.w	[%a15] 16, %d15
	.loc 1 653 0
	st.h	[%a15] 20, %d15
	.loc 1 654 0
	st.h	[%a15] 26, %d15
	.loc 1 655 0
	st.b	[%a15] 28, %d2
	.loc 1 656 0
	st.b	[%a15] 30, %d2
.LVL39:
	.loc 1 652 0
	st.w	[%a15] 32, %d15
	.loc 1 653 0
	st.h	[%a15] 36, %d15
	.loc 1 654 0
	st.h	[%a15] 42, %d15
	.loc 1 655 0
	st.b	[%a15] 44, %d2
	.loc 1 656 0
	st.b	[%a15] 46, %d2
.LVL40:
	ret
.LFE28:
	.size	Fee_InitOrderFifoBuffer, .-Fee_InitOrderFifoBuffer
	.global	Fee_hdr2Buffer_au8
.section .bss.a1.Fee_hdr2Buffer_au8,"aw",@nobits
	.type	Fee_hdr2Buffer_au8, @object
	.size	Fee_hdr2Buffer_au8, 8
Fee_hdr2Buffer_au8:
	.zero	8
	.global	Fee_DataByteStartCrc_u32
.section .bss.a4.Fee_DataByteStartCrc_u32,"aw",@nobits
	.align 2
	.type	Fee_DataByteStartCrc_u32, @object
	.size	Fee_DataByteStartCrc_u32, 4
Fee_DataByteStartCrc_u32:
	.zero	4
	.global	Fee_Rb_WorkingState_en
.section .bss.a1.Fee_Rb_WorkingState_en,"aw",@nobits
	.type	Fee_Rb_WorkingState_en, @object
	.size	Fee_Rb_WorkingState_en, 1
Fee_Rb_WorkingState_en:
	.zero	1
	.global	Fee_stMain
.section .bss.a1.Fee_stMain,"aw",@nobits
	.type	Fee_stMain, @object
	.size	Fee_stMain, 1
Fee_stMain:
	.zero	1
	.global	Fee_GlobModuleState_st
.section .bss.a1.Fee_GlobModuleState_st,"aw",@nobits
	.type	Fee_GlobModuleState_st, @object
	.size	Fee_GlobModuleState_st, 1
Fee_GlobModuleState_st:
	.zero	1
	.global	Fee_llDataBuf_au32
.section .bss.a4.Fee_llDataBuf_au32,"aw",@nobits
	.align 2
	.type	Fee_llDataBuf_au32, @object
	.size	Fee_llDataBuf_au32, 256
Fee_llDataBuf_au32:
	.zero	256
	.global	Fee_llPageBuf_au32
.section .bss.a4.Fee_llPageBuf_au32,"aw",@nobits
	.align 2
	.type	Fee_llPageBuf_au32, @object
	.size	Fee_llPageBuf_au32, 1032
Fee_llPageBuf_au32:
	.zero	1032
	.global	Fee_Cache_au32
.section .bss.a4.Fee_Cache_au32,"aw",@nobits
	.align 2
	.type	Fee_Cache_au32, @object
	.size	Fee_Cache_au32, 232
Fee_Cache_au32:
	.zero	232
	.global	Fee_llMarkerPageBuf_au32
.section .bss.a4.Fee_llMarkerPageBuf_au32,"aw",@nobits
	.align 2
	.type	Fee_llMarkerPageBuf_au32, @object
	.size	Fee_llMarkerPageBuf_au32, 96
Fee_llMarkerPageBuf_au32:
	.zero	96
	.global	Fee_RdWrRetries_u8
.section .bss.a1.Fee_RdWrRetries_u8,"aw",@nobits
	.type	Fee_RdWrRetries_u8, @object
	.size	Fee_RdWrRetries_u8, 1
Fee_RdWrRetries_u8:
	.zero	1
	.global	Fee_idxActQueue_u8
.section .bss.a1.Fee_idxActQueue_u8,"aw",@nobits
	.type	Fee_idxActQueue_u8, @object
	.size	Fee_idxActQueue_u8, 1
Fee_idxActQueue_u8:
	.zero	1
	.global	Fee_CacheUpdCompForSect_au8
.section .bss.a1.Fee_CacheUpdCompForSect_au8,"aw",@nobits
	.type	Fee_CacheUpdCompForSect_au8, @object
	.size	Fee_CacheUpdCompForSect_au8, 2
Fee_CacheUpdCompForSect_au8:
	.zero	2
	.global	Fee_idxLLSectorOrder_au8
.section .bss.a1.Fee_idxLLSectorOrder_au8,"aw",@nobits
	.type	Fee_idxLLSectorOrder_au8, @object
	.size	Fee_idxLLSectorOrder_au8, 2
Fee_idxLLSectorOrder_au8:
	.zero	2
	.global	Fee_JobResult
.section .bss.a1.Fee_JobResult,"aw",@nobits
	.type	Fee_JobResult, @object
	.size	Fee_JobResult, 3
Fee_JobResult:
	.zero	3
	.global	Fee_GlobInfoWrBlock_st
.section .bss.a2.Fee_GlobInfoWrBlock_st,"aw",@nobits
	.align 1
	.type	Fee_GlobInfoWrBlock_st, @object
	.size	Fee_GlobInfoWrBlock_st, 10
Fee_GlobInfoWrBlock_st:
	.zero	10
	.global	Fee_LLSecReorgStruct_st
.section .bss.a4.Fee_LLSecReorgStruct_st,"aw",@nobits
	.align 2
	.type	Fee_LLSecReorgStruct_st, @object
	.size	Fee_LLSecReorgStruct_st, 12
Fee_LLSecReorgStruct_st:
	.zero	12
	.global	Fee_OrderFifo_st
.section .bss.a4.Fee_OrderFifo_st,"aw",@nobits
	.align 2
	.type	Fee_OrderFifo_st, @object
	.size	Fee_OrderFifo_st, 48
Fee_OrderFifo_st:
	.zero	48
	.global	Fee_LLWrEraseStartFlag_st
.section .bss.a4.Fee_LLWrEraseStartFlag_st,"aw",@nobits
	.align 2
	.type	Fee_LLWrEraseStartFlag_st, @object
	.size	Fee_LLWrEraseStartFlag_st, 8
Fee_LLWrEraseStartFlag_st:
	.zero	8
	.global	Fee_LLEraseOrder_st
.section .bss.a2.Fee_LLEraseOrder_st,"aw",@nobits
	.align 1
	.type	Fee_LLEraseOrder_st, @object
	.size	Fee_LLEraseOrder_st, 2
Fee_LLEraseOrder_st:
	.zero	2
	.global	Fee_GlobInfoLastRdHeader_st
.section .bss.a4.Fee_GlobInfoLastRdHeader_st,"aw",@nobits
	.align 2
	.type	Fee_GlobInfoLastRdHeader_st, @object
	.size	Fee_GlobInfoLastRdHeader_st, 20
Fee_GlobInfoLastRdHeader_st:
	.zero	20
	.global	Fee_LLSectorOrder_st
.section .bss.a4.Fee_LLSectorOrder_st,"aw",@nobits
	.align 2
	.type	Fee_LLSectorOrder_st, @object
	.size	Fee_LLSectorOrder_st, 16
Fee_LLSectorOrder_st:
	.zero	16
	.global	Fee_RdWrOrder_st
.section .bss.a4.Fee_RdWrOrder_st,"aw",@nobits
	.align 2
	.type	Fee_RdWrOrder_st, @object
	.size	Fee_RdWrOrder_st, 60
Fee_RdWrOrder_st:
	.zero	60
	.global	Fee_PageBytePtr_cpu8
.section .bss.a4.Fee_PageBytePtr_cpu8,"aw",@nobits
	.align 2
	.type	Fee_PageBytePtr_cpu8, @object
	.size	Fee_PageBytePtr_cpu8, 4
Fee_PageBytePtr_cpu8:
	.zero	4
	.global	Fee_SecChngCnt_u32
.section .bss.a4.Fee_SecChngCnt_u32,"aw",@nobits
	.align 2
	.type	Fee_SecChngCnt_u32, @object
	.size	Fee_SecChngCnt_u32, 4
Fee_SecChngCnt_u32:
	.zero	4
	.global	Fee_NumFlashBanksUsed_u8
.section .data.a1.Fee_NumFlashBanksUsed_u8,"aw",@progbits
	.type	Fee_NumFlashBanksUsed_u8, @object
	.size	Fee_NumFlashBanksUsed_u8, 1
Fee_NumFlashBanksUsed_u8:
	.byte	2
	.global	Fee_Prv_stReorg_u8
.section .bss.a1.Fee_Prv_stReorg_u8,"aw",@nobits
	.type	Fee_Prv_stReorg_u8, @object
	.size	Fee_Prv_stReorg_u8, 1
Fee_Prv_stReorg_u8:
	.zero	1
	.global	Fee_Prv_stInit_u8
.section .bss.a1.Fee_Prv_stInit_u8,"aw",@nobits
	.type	Fee_Prv_stInit_u8, @object
	.size	Fee_Prv_stInit_u8, 1
Fee_Prv_stInit_u8:
	.zero	1
	.global	Fee_DataBytePtr_cpu8
.section .rodata.a4.Fee_DataBytePtr_cpu8,"a",@progbits
	.align 2
	.type	Fee_DataBytePtr_cpu8, @object
	.size	Fee_DataBytePtr_cpu8, 4
Fee_DataBytePtr_cpu8:
	.word	Fee_llDataBuf_au32
	.global	Fee_MarkerBufBytePtr_cpu8
.section .rodata.a4.Fee_MarkerBufBytePtr_cpu8,"a",@progbits
	.align 2
	.type	Fee_MarkerBufBytePtr_cpu8, @object
	.size	Fee_MarkerBufBytePtr_cpu8, 4
Fee_MarkerBufBytePtr_cpu8:
	.word	Fee_llMarkerPageBuf_au32
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
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB26
	.uaword	.LFE26-.LFB26
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB24
	.uaword	.LFE24-.LFB24
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB27
	.uaword	.LFE27-.LFB27
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
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\MemIf\\api\\MemIf_Types.h"
	.file 4 ".\\output\\inc/..\\..\\bsw\\Fee\\api\\Fee_Rb_Types.h"
	.file 5 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_Prv.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x2e7f
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_Init.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x30
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
	.uaword	0x1cf
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
	.uaword	0x1fb
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
	.uaword	0x237
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
	.uleb128 0x4
	.byte	0x1
	.byte	0x3
	.byte	0x18
	.uaword	0x2dd
	.uleb128 0x5
	.string	"MEMIF_UNINIT"
	.sleb128 0
	.uleb128 0x5
	.string	"MEMIF_IDLE"
	.sleb128 1
	.uleb128 0x5
	.string	"MEMIF_BUSY"
	.sleb128 2
	.uleb128 0x5
	.string	"MEMIF_BUSY_INTERNAL"
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.string	"MemIf_StatusType"
	.byte	0x3
	.byte	0x1d
	.uaword	0x295
	.uleb128 0x4
	.byte	0x1
	.byte	0x3
	.byte	0x20
	.uaword	0x37a
	.uleb128 0x5
	.string	"MEMIF_JOB_OK"
	.sleb128 0
	.uleb128 0x5
	.string	"MEMIF_JOB_FAILED"
	.sleb128 1
	.uleb128 0x5
	.string	"MEMIF_JOB_PENDING"
	.sleb128 2
	.uleb128 0x5
	.string	"MEMIF_JOB_CANCELED"
	.sleb128 3
	.uleb128 0x5
	.string	"MEMIF_BLOCK_INCONSISTENT"
	.sleb128 4
	.uleb128 0x5
	.string	"MEMIF_BLOCK_INVALID"
	.sleb128 5
	.byte	0
	.uleb128 0x3
	.string	"MemIf_JobResultType"
	.byte	0x3
	.byte	0x27
	.uaword	0x2f5
	.uleb128 0x4
	.byte	0x1
	.byte	0x4
	.byte	0x43
	.uaword	0x47d
	.uleb128 0x5
	.string	"FEE_RB_IDLE_E"
	.sleb128 0
	.uleb128 0x5
	.string	"FEE_RB_WRITE_MODE_E"
	.sleb128 1
	.uleb128 0x5
	.string	"FEE_RB_READ_MODE_E"
	.sleb128 2
	.uleb128 0x5
	.string	"FEE_RB_INVALIDATE_MODE_E"
	.sleb128 3
	.uleb128 0x5
	.string	"FEE_RB_MAINTAIN_MODE_E"
	.sleb128 4
	.uleb128 0x5
	.string	"FEE_RB_SOFT_SECTOR_REORG_MODE_E"
	.sleb128 5
	.uleb128 0x5
	.string	"FEE_RB_HARD_SECTOR_REORG_MODE_E"
	.sleb128 6
	.uleb128 0x5
	.string	"FEE_RB_SECTOR_ERASE_E"
	.sleb128 7
	.uleb128 0x5
	.string	"FEE_RB_STOPMODE_E"
	.sleb128 8
	.byte	0
	.uleb128 0x3
	.string	"Fee_Rb_WorkingStateType_ten"
	.byte	0x4
	.byte	0x4d
	.uaword	0x395
	.uleb128 0x4
	.byte	0x1
	.byte	0x4
	.byte	0x52
	.uaword	0x51f
	.uleb128 0x5
	.string	"FEE_NO_ORDER"
	.sleb128 0
	.uleb128 0x5
	.string	"FEE_READ_ORDER"
	.sleb128 1
	.uleb128 0x5
	.string	"FEE_WRITE_ORDER"
	.sleb128 2
	.uleb128 0x5
	.string	"FEE_INVALIDATE_ORDER"
	.sleb128 3
	.uleb128 0x5
	.string	"FEE_MAINTAIN_ORDER"
	.sleb128 4
	.uleb128 0x5
	.string	"FEE_FORCED_READ_ORDER"
	.sleb128 5
	.byte	0
	.uleb128 0x3
	.string	"Fee_HlMode_ten"
	.byte	0x4
	.byte	0x59
	.uaword	0x4a0
	.uleb128 0x6
	.byte	0x1
	.byte	0x4
	.byte	0x5b
	.uaword	0x551
	.uleb128 0x7
	.string	"dummy_u8"
	.byte	0x4
	.byte	0x5d
	.uaword	0x1c2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Fee_ConfigType"
	.byte	0x4
	.byte	0x5e
	.uaword	0x535
	.uleb128 0x8
	.byte	0x4
	.uaword	0x1c2
	.uleb128 0x8
	.byte	0x4
	.uaword	0x573
	.uleb128 0x9
	.byte	0x1
	.uleb128 0x4
	.byte	0x1
	.byte	0x5
	.byte	0x9f
	.uaword	0x5a4
	.uleb128 0x5
	.string	"FEE_NORMAL_PRIO_E"
	.sleb128 0
	.uleb128 0x5
	.string	"FEE_HIGH_PRIO_E"
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.string	"Fee_HlPriority_ten"
	.byte	0x5
	.byte	0xa2
	.uaword	0x575
	.uleb128 0x4
	.byte	0x1
	.byte	0x5
	.byte	0xa9
	.uaword	0x60b
	.uleb128 0x5
	.string	"FEE_INTERNAL_JOB"
	.sleb128 0
	.uleb128 0x5
	.string	"FEE_NVM_JOB"
	.sleb128 1
	.uleb128 0x5
	.string	"FEE_ADAPTER_JOB"
	.sleb128 2
	.uleb128 0x5
	.string	"FEE_QUEUE_SIZE"
	.sleb128 3
	.byte	0
	.uleb128 0x6
	.byte	0x10
	.byte	0x5
	.byte	0xb0
	.uaword	0x6bd
	.uleb128 0x7
	.string	"DataBufferPtr_pu8"
	.byte	0x5
	.byte	0xb2
	.uaword	0x567
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"FeeIdx_u16"
	.byte	0x5
	.byte	0xb3
	.uaword	0x1ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"BlockPropIdx_u16"
	.byte	0x5
	.byte	0xb4
	.uaword	0x1ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x7
	.string	"Offset_u16"
	.byte	0x5
	.byte	0xb5
	.uaword	0x1ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x5
	.byte	0xb6
	.uaword	0x1ed
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x7
	.string	"Mode_en"
	.byte	0x5
	.byte	0xb7
	.uaword	0x51f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"Prio_en"
	.byte	0x5
	.byte	0xb8
	.uaword	0x5a4
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0x7
	.string	"SecLevel_u8"
	.byte	0x5
	.byte	0xb9
	.uaword	0x1c2
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.byte	0
	.uleb128 0x3
	.string	"Fee_OrderFifo_tst"
	.byte	0x5
	.byte	0xba
	.uaword	0x60b
	.uleb128 0x4
	.byte	0x1
	.byte	0x5
	.byte	0xdb
	.uaword	0x830
	.uleb128 0x5
	.string	"FEE_ERASED_MARKER_ID_E"
	.sleb128 1
	.uleb128 0x5
	.string	"FEE_USED_MARKER_ID_E"
	.sleb128 2
	.uleb128 0x5
	.string	"FEE_FULL_MARKER_ID_E"
	.sleb128 3
	.uleb128 0x5
	.string	"FEE_ERASE_REQUEST_ID_E"
	.sleb128 4
	.uleb128 0x5
	.string	"FEE_START_MARKER_ID_E"
	.sleb128 5
	.uleb128 0x5
	.string	"FEE_CLONE_START_MARKER_ID_E"
	.sleb128 6
	.uleb128 0x5
	.string	"FEE_RESERVED_MARKER_ID1_E"
	.sleb128 7
	.uleb128 0x5
	.string	"FEE_RESERVED_MARKER_ID2_E"
	.sleb128 8
	.uleb128 0x5
	.string	"FEE_RESERVED_MARKER_ID3_E"
	.sleb128 9
	.uleb128 0x5
	.string	"FEE_RESERVED_MARKER_ID4_E"
	.sleb128 10
	.uleb128 0x5
	.string	"FEE_RESERVED_MARKER_ID5_E"
	.sleb128 11
	.uleb128 0x5
	.string	"FEE_ERASE_START_FLAG_ID_E"
	.sleb128 12
	.uleb128 0x5
	.string	"FEE_NUM_MARKER_E"
	.sleb128 13
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0xb
	.byte	0x1
	.byte	0x5
	.uahalf	0x103
	.uaword	0x8d6
	.uleb128 0x5
	.string	"FEE_SECTOR_STATE_UNDEF_E"
	.sleb128 0
	.uleb128 0x5
	.string	"FEE_SECTOR_ERASED_E"
	.sleb128 1
	.uleb128 0x5
	.string	"FEE_SECTOR_USED_E"
	.sleb128 2
	.uleb128 0x5
	.string	"FEE_SECTOR_FULL_E"
	.sleb128 3
	.uleb128 0x5
	.string	"FEE_SECTOR_REQUEST2ERASE_E"
	.sleb128 4
	.uleb128 0x5
	.string	"FEE_SECTOR_CONSIDERED_E"
	.sleb128 13
	.byte	0
	.uleb128 0xc
	.string	"Fee_SectorState_ten"
	.byte	0x5
	.uahalf	0x10a
	.uaword	0x83c
	.uleb128 0xd
	.byte	0x8
	.byte	0x5
	.uahalf	0x10d
	.uaword	0x93c
	.uleb128 0xe
	.string	"SecChngCnt_u32"
	.byte	0x5
	.uahalf	0x10f
	.uaword	0x229
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"SecState_en"
	.byte	0x5
	.uahalf	0x110
	.uaword	0x8d6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.uaword	.LASF1
	.byte	0x5
	.uahalf	0x111
	.uaword	0x1c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0xc
	.string	"Fee_LLSectorOrder_tst"
	.byte	0x5
	.uahalf	0x112
	.uaword	0x8f2
	.uleb128 0xb
	.byte	0x1
	.byte	0x5
	.uahalf	0x116
	.uaword	0xa31
	.uleb128 0x5
	.string	"FEE_ORDER_PENDING_E"
	.sleb128 0
	.uleb128 0x5
	.string	"FEE_ORDER_FINISHED_E"
	.sleb128 1
	.uleb128 0x5
	.string	"FEE_BLOCK_INVALIDATED_E"
	.sleb128 2
	.uleb128 0x5
	.string	"FEE_ERROR_E"
	.sleb128 3
	.uleb128 0x5
	.string	"FEE_SECTORCHANGE_E"
	.sleb128 4
	.uleb128 0x5
	.string	"FEE_SECTORFULL_E"
	.sleb128 5
	.uleb128 0x5
	.string	"FEE_ABORTED_E"
	.sleb128 6
	.uleb128 0x5
	.string	"FEE_ERASE_SECTOR_E"
	.sleb128 7
	.uleb128 0x5
	.string	"FEE_SEARCH_ABORTED_E"
	.sleb128 8
	.uleb128 0x5
	.string	"FEE_NUM_RET_VAL_E"
	.sleb128 9
	.byte	0
	.uleb128 0xc
	.string	"Fee_stRetVal_ten"
	.byte	0x5
	.uahalf	0x121
	.uaword	0x95a
	.uleb128 0xd
	.byte	0x10
	.byte	0x5
	.uahalf	0x14c
	.uaword	0xadf
	.uleb128 0xe
	.string	"BlockPersistentId_u16"
	.byte	0x5
	.uahalf	0x14e
	.uaword	0x1ed
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"Flags_u16"
	.byte	0x5
	.uahalf	0x14f
	.uaword	0x1ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xf
	.uaword	.LASF0
	.byte	0x5
	.uahalf	0x150
	.uaword	0x1ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"JobEndNotification_pfn"
	.byte	0x5
	.uahalf	0x151
	.uaword	0xadf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"JobErrorNotification_pfn"
	.byte	0x5
	.uahalf	0x152
	.uaword	0xadf
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x10
	.uaword	0x56d
	.uleb128 0xc
	.string	"Fee_BlockPropertiesType_tst"
	.byte	0x5
	.uahalf	0x153
	.uaword	0xa4a
	.uleb128 0xb
	.byte	0x1
	.byte	0x5
	.uahalf	0x15f
	.uaword	0xc39
	.uleb128 0x5
	.string	"FEE_LL_MARKER_INIT_E"
	.sleb128 0
	.uleb128 0x5
	.string	"FEE_LL_MARKER_BLK_CHK_E"
	.sleb128 1
	.uleb128 0x5
	.string	"FEE_LL_MARKER_BLK_CHK_WAIT_E"
	.sleb128 2
	.uleb128 0x5
	.string	"FEE_LL_MARKER_BLK_CHK_ERROR_E"
	.sleb128 3
	.uleb128 0x5
	.string	"FEE_LL_MARKER_BLK_CHK_FINISHED_E"
	.sleb128 4
	.uleb128 0x5
	.string	"FEE_LL_MARKER_WRITE_WAIT_E"
	.sleb128 5
	.uleb128 0x5
	.string	"FEE_LL_MARKER_WRITE_ERROR_E"
	.sleb128 6
	.uleb128 0x5
	.string	"FEE_LL_MARKER_VERIFY_E"
	.sleb128 7
	.uleb128 0x5
	.string	"FEE_LL_MARKER_VERIFY_WAIT_E"
	.sleb128 8
	.uleb128 0x5
	.string	"FEE_LL_MARKER_VERIFY_FINISHED_E"
	.sleb128 9
	.byte	0
	.uleb128 0xc
	.string	"Fee_LLWrMarkerType_ten"
	.byte	0x5
	.uahalf	0x16a
	.uaword	0xb08
	.uleb128 0xb
	.byte	0x1
	.byte	0x5
	.uahalf	0x16e
	.uaword	0xd3c
	.uleb128 0x5
	.string	"FEE_HL_RDWR_BLK_INIT_E"
	.sleb128 0
	.uleb128 0x5
	.string	"FEE_HL_SEARCH_BLK_HDR_E"
	.sleb128 1
	.uleb128 0x5
	.string	"FEE_HL_READ_BLK_HDR_WAIT_E"
	.sleb128 2
	.uleb128 0x5
	.string	"FEE_HL_CHECK_BLK_HDR_E"
	.sleb128 3
	.uleb128 0x5
	.string	"FEE_HL_CALC_BLK_CS_E"
	.sleb128 4
	.uleb128 0x5
	.string	"FEE_HL_CHECK_BLK_CS_E"
	.sleb128 5
	.uleb128 0x5
	.string	"FEE_HL_RD_DATA_FROM_BLK_E"
	.sleb128 6
	.uleb128 0x5
	.string	"FEE_HL_COMP_BLK_E"
	.sleb128 7
	.uleb128 0x5
	.string	"FEE_HL_WR_BLK_E"
	.sleb128 8
	.byte	0
	.uleb128 0xc
	.string	"Fee_HLRdWrBlockType_ten"
	.byte	0x5
	.uahalf	0x17f
	.uaword	0xc58
	.uleb128 0xb
	.byte	0x1
	.byte	0x5
	.uahalf	0x183
	.uaword	0xf57
	.uleb128 0x5
	.string	"FEE_LL_WR_BLK_INIT_E"
	.sleb128 0
	.uleb128 0x5
	.string	"FEE_LL_WR_WRITEHEADER_E"
	.sleb128 1
	.uleb128 0x5
	.string	"FEE_LL_WR_SIZECHECK_HSR_E"
	.sleb128 2
	.uleb128 0x5
	.string	"FEE_LL_WR_WRITEHEADER_WAIT_E"
	.sleb128 3
	.uleb128 0x5
	.string	"FEE_LL_WR_VERIFYHEADER_E"
	.sleb128 4
	.uleb128 0x5
	.string	"FEE_LL_WR_VERIFYHEADER_WAIT_E"
	.sleb128 5
	.uleb128 0x5
	.string	"FEE_LL_WR_VERIFYHEADER_ERROR_E"
	.sleb128 6
	.uleb128 0x5
	.string	"FEE_LL_WR_WRITEDATA_SEC_A_E"
	.sleb128 7
	.uleb128 0x5
	.string	"FEE_LL_WR_WAIT_WRITEDATA_SEC_A_E"
	.sleb128 8
	.uleb128 0x5
	.string	"FEE_LL_WR_WRITE_ERROR_E"
	.sleb128 9
	.uleb128 0x5
	.string	"FEE_LL_WR_WRITE_FULL_MARKER_E"
	.sleb128 10
	.uleb128 0x5
	.string	"FEE_LL_WR_ERASE_SECTOR_E"
	.sleb128 11
	.uleb128 0x5
	.string	"FEE_LL_WR_WRITE_USED_MARKER_E"
	.sleb128 12
	.uleb128 0x5
	.string	"FEE_LL_WR_WRITE_START_MARKER_E"
	.sleb128 13
	.uleb128 0x5
	.string	"FEE_LL_WR_VERIFY_BLK_E"
	.sleb128 14
	.uleb128 0x5
	.string	"FEE_LL_WR_WRITEHDRPG2_E"
	.sleb128 15
	.uleb128 0x5
	.string	"FEE_LL_WR_WAIT_WRITEHDRPG2_E"
	.sleb128 16
	.byte	0
	.uleb128 0xc
	.string	"Fee_LLWrBlockType_ten"
	.byte	0x5
	.uahalf	0x1ae
	.uaword	0xd5c
	.uleb128 0xb
	.byte	0x1
	.byte	0x5
	.uahalf	0x1b2
	.uaword	0x1036
	.uleb128 0x5
	.string	"FEE_LL_CMP_BLK_INIT_E"
	.sleb128 0
	.uleb128 0x5
	.string	"FEE_LL_CMP_HEADER_E"
	.sleb128 1
	.uleb128 0x5
	.string	"FEE_LL_CMP_WAIT_HEADER_E"
	.sleb128 2
	.uleb128 0x5
	.string	"FEE_LL_CMP_CHECK_OVERLAP_E"
	.sleb128 3
	.uleb128 0x5
	.string	"FEE_LL_CMP_DATA_SEC_A_E"
	.sleb128 4
	.uleb128 0x5
	.string	"FEE_LL_CMP_WAIT_DATA_SEC_A_E"
	.sleb128 5
	.uleb128 0x5
	.string	"FEE_LL_CMP_FINISHED_E"
	.sleb128 6
	.byte	0
	.uleb128 0xc
	.string	"Fee_LLCmpBlkType_ten"
	.byte	0x5
	.uahalf	0x1ba
	.uaword	0xf75
	.uleb128 0xb
	.byte	0x1
	.byte	0x5
	.uahalf	0x1be
	.uaword	0x1106
	.uleb128 0x5
	.string	"FEE_LL_CPY_BLK_INIT_E"
	.sleb128 0
	.uleb128 0x5
	.string	"FEE_LL_CPY_BLOCK_DATA_FROM_HDR_E"
	.sleb128 1
	.uleb128 0x5
	.string	"FEE_LL_CPY_BLOCK_START_E"
	.sleb128 2
	.uleb128 0x5
	.string	"FEE_LL_CPY_BLOCK_WAIT_E"
	.sleb128 3
	.uleb128 0x5
	.string	"FEE_LL_CPY_BLOCK_ERROR_E"
	.sleb128 4
	.uleb128 0x5
	.string	"FEE_LL_CPY_BLOCK_FINISHED_E"
	.sleb128 5
	.byte	0
	.uleb128 0xc
	.string	"Fee_LLCpyBlkType_ten"
	.byte	0x5
	.uahalf	0x1c5
	.uaword	0x1053
	.uleb128 0xb
	.byte	0x1
	.byte	0x5
	.uahalf	0x1c9
	.uaword	0x1223
	.uleb128 0x5
	.string	"FEE_LL_CRC_BLK_INIT_E"
	.sleb128 0
	.uleb128 0x5
	.string	"FEE_LL_CRC_RD_HD_PAGE_E"
	.sleb128 1
	.uleb128 0x5
	.string	"FEE_LL_CRC_RD_PAGE_E"
	.sleb128 2
	.uleb128 0x5
	.string	"FEE_LL_CRC_CHECK_OVERLAP_E"
	.sleb128 3
	.uleb128 0x5
	.string	"FEE_LL_CRC_RD_ROB_PAGE_E"
	.sleb128 4
	.uleb128 0x5
	.string	"FEE_LL_CRC_CHECK_OVERLAP_ROB_E"
	.sleb128 5
	.uleb128 0x5
	.string	"FEE_LL_CRC_RD_ROB_PAGE_WAIT_E"
	.sleb128 6
	.uleb128 0x5
	.string	"FEE_LL_CRC_RD_PAGE_WAIT_E"
	.sleb128 7
	.uleb128 0x5
	.string	"FEE_LL_CRC_RD_ERROR_E"
	.sleb128 8
	.byte	0
	.uleb128 0xc
	.string	"Fee_LLCalcCrcBlkType_ten"
	.byte	0x5
	.uahalf	0x1d5
	.uaword	0x1123
	.uleb128 0xb
	.byte	0x1
	.byte	0x5
	.uahalf	0x1d9
	.uaword	0x1395
	.uleb128 0x5
	.string	"FEE_LL_INIT_READ_E"
	.sleb128 0
	.uleb128 0x5
	.string	"FEE_LL_BLANK_CHECK_E"
	.sleb128 1
	.uleb128 0x5
	.string	"FEE_LL_BLANK_CHECK_WAIT_E"
	.sleb128 2
	.uleb128 0x5
	.string	"FEE_LL_READ_PAGE_E"
	.sleb128 3
	.uleb128 0x5
	.string	"FEE_LL_WAIT_READ_PAGE_E"
	.sleb128 4
	.uleb128 0x5
	.string	"FEE_LL_READ_ERROR_E"
	.sleb128 5
	.uleb128 0x5
	.string	"FEE_LL_READ_FINISHED_E"
	.sleb128 6
	.uleb128 0x5
	.string	"FEE_LL_BLANK_CHECK_ERASE_START_FLAG_E"
	.sleb128 7
	.uleb128 0x5
	.string	"FEE_LL_BLANK_CHECK_ERASE_START_FLAG_WAIT_E"
	.sleb128 8
	.uleb128 0x5
	.string	"FEE_LL_ERASE_START_FLAG_NOT_PRESENT_E"
	.sleb128 9
	.uleb128 0x5
	.string	"FEE_LL_ERASE_START_FLAG_PRESENT_E"
	.sleb128 10
	.byte	0
	.uleb128 0xc
	.string	"Fee_LLRdStateType_ten"
	.byte	0x5
	.uahalf	0x1f3
	.uaword	0x1244
	.uleb128 0xb
	.byte	0x1
	.byte	0x5
	.uahalf	0x1f7
	.uaword	0x1459
	.uleb128 0x5
	.string	"FEE_LL_INIT_BLANK_CHECK_E"
	.sleb128 0
	.uleb128 0x5
	.string	"FEE_LL_PERFORM_BLANK_CHECK_E"
	.sleb128 1
	.uleb128 0x5
	.string	"FEE_LL_WAIT_PERFORM_BLANK_CHECK_E"
	.sleb128 2
	.uleb128 0x5
	.string	"FEE_LL_BLANK_CHECK_ERROR_E"
	.sleb128 3
	.uleb128 0x5
	.string	"FEE_LL_BLANK_CHECK_FINISHED_E"
	.sleb128 4
	.byte	0
	.uleb128 0xc
	.string	"Fee_LLBlankCheckType_ten"
	.byte	0x5
	.uahalf	0x1fd
	.uaword	0x13b3
	.uleb128 0xb
	.byte	0x1
	.byte	0x5
	.uahalf	0x201
	.uaword	0x14d3
	.uleb128 0x5
	.string	"FEE_LL_FIND_CURRENT_SECTOR_E"
	.sleb128 0
	.uleb128 0x5
	.string	"FEE_LL_FIND_LAST_HEADER_E"
	.sleb128 1
	.uleb128 0x5
	.string	"FEE_LL_FINISHED_E"
	.sleb128 2
	.byte	0
	.uleb128 0xc
	.string	"Fee_LLFndEmptyPgeType_ten"
	.byte	0x5
	.uahalf	0x20d
	.uaword	0x147a
	.uleb128 0xb
	.byte	0x1
	.byte	0x5
	.uahalf	0x211
	.uaword	0x1539
	.uleb128 0x5
	.string	"FEE_LL_SEARCHBLK_INIT_E"
	.sleb128 0
	.uleb128 0x5
	.string	"FEE_LL_SEARCHBLK_BLK_HEADER_E"
	.sleb128 1
	.byte	0
	.uleb128 0xc
	.string	"Fee_LLSearchBlkHdrType_ten"
	.byte	0x5
	.uahalf	0x214
	.uaword	0x14f5
	.uleb128 0xb
	.byte	0x1
	.byte	0x5
	.uahalf	0x219
	.uaword	0x15a0
	.uleb128 0x5
	.string	"FEE_LL_BLD_UP_CACHE_INIT_E"
	.sleb128 0
	.uleb128 0x5
	.string	"FEE_LL_BLD_UP_CACHE_READ_E"
	.sleb128 1
	.byte	0
	.uleb128 0xc
	.string	"Fee_LLBuildUpCache_ten"
	.byte	0x5
	.uahalf	0x21c
	.uaword	0x155c
	.uleb128 0xb
	.byte	0x1
	.byte	0x5
	.uahalf	0x220
	.uaword	0x1613
	.uleb128 0x5
	.string	"FEE_LL_BLD_UP_CACHE_ALL_SECT_INIT_E"
	.sleb128 0
	.uleb128 0x5
	.string	"FEE_LL_BLD_UP_CACHE_ALL_SECT_DO_E"
	.sleb128 1
	.byte	0
	.uleb128 0xc
	.string	"Fee_LLBuildUpCacheAllSect_ten"
	.byte	0x5
	.uahalf	0x223
	.uaword	0x15bf
	.uleb128 0xb
	.byte	0x1
	.byte	0x5
	.uahalf	0x23d
	.uaword	0x1710
	.uleb128 0x5
	.string	"FEE_LL_REORG_INIT_E"
	.sleb128 0
	.uleb128 0x5
	.string	"FEE_LL_REORG_PREP_SEARCH_BLK_E"
	.sleb128 1
	.uleb128 0x5
	.string	"FEE_LL_REORG_SEARCH_BLK_E"
	.sleb128 2
	.uleb128 0x5
	.string	"FEE_LL_REORG_CHECK_BLOCK_CS_E"
	.sleb128 3
	.uleb128 0x5
	.string	"FEE_LL_REORG_REDUNDANT_BLK_CHK_E"
	.sleb128 4
	.uleb128 0x5
	.string	"FEE_LL_REORG_WRITE_BLOCK_E"
	.sleb128 5
	.uleb128 0x5
	.string	"FEE_LL_REORG_FINISHED_E"
	.sleb128 6
	.byte	0
	.uleb128 0xc
	.string	"Fee_LLSecReorgType_ten"
	.byte	0x5
	.uahalf	0x255
	.uaword	0x1639
	.uleb128 0xb
	.byte	0x1
	.byte	0x5
	.uahalf	0x259
	.uaword	0x1853
	.uleb128 0x5
	.string	"FEE_LL_REDUNDANT_CPY_CHK_INIT_E"
	.sleb128 0
	.uleb128 0x5
	.string	"FEE_LL_REDUNDANT_CPY_CHK_FLS_READ_WAIT_E"
	.sleb128 1
	.uleb128 0x5
	.string	"FEE_LL_REDUNDANT_CPY_CHK_FLS_READ_SUC_E"
	.sleb128 2
	.uleb128 0x5
	.string	"FEE_LL_REDUNDANT_CPY_CHK_FLS_READ_ERR_E"
	.sleb128 3
	.uleb128 0x5
	.string	"FEE_LL_REDUNDANT_CPY_CHK_SEARCH_HDR_INIT_E"
	.sleb128 4
	.uleb128 0x5
	.string	"FEE_LL_REDUNDANT_CPY_CHK_SEARCH_HDR_E"
	.sleb128 5
	.uleb128 0x5
	.string	"FEE_LL_REDUNDANT_CPY_CHK_BLK_CS_E"
	.sleb128 6
	.byte	0
	.uleb128 0xc
	.string	"Fee_LLRedundantCpyChk_ten"
	.byte	0x5
	.uahalf	0x265
	.uaword	0x172f
	.uleb128 0xb
	.byte	0x1
	.byte	0x5
	.uahalf	0x269
	.uaword	0x1c6d
	.uleb128 0x5
	.string	"FEE_LL_CPY_FLS2FLS_INIT_E"
	.sleb128 0
	.uleb128 0x5
	.string	"FEE_LL_CPY_FLS2FLS_READ_E"
	.sleb128 1
	.uleb128 0x5
	.string	"FEE_LL_CPY_FLS2FLS_WAIT_READ_E"
	.sleb128 2
	.uleb128 0x5
	.string	"FEE_LL_CPY_FLS2FLS_READ_ERROR_E"
	.sleb128 3
	.uleb128 0x5
	.string	"FEE_LL_CPY_FLS2FLS_HDRPG1_WRITE_E"
	.sleb128 4
	.uleb128 0x5
	.string	"FEE_LL_CPY_FLS2FLS_WAIT_HDRPG1_WRITE_E"
	.sleb128 5
	.uleb128 0x5
	.string	"FEE_LL_CPY_FLS2FLS_HDRPG1_WRITE_ERROR_E"
	.sleb128 6
	.uleb128 0x5
	.string	"FEE_LL_CPY_FLS2FLS_HDRPG1_VERIFY_E"
	.sleb128 7
	.uleb128 0x5
	.string	"FEE_LL_CPY_FLS2FLS_WAIT_HDRPG1_VERIFY_E"
	.sleb128 8
	.uleb128 0x5
	.string	"FEE_LL_CPY_FLS2FLS_HDRPG1_VERIFY_ERROR_E"
	.sleb128 9
	.uleb128 0x5
	.string	"FEE_LL_CPY_FLS2FLS_WRITE_E"
	.sleb128 10
	.uleb128 0x5
	.string	"FEE_LL_CPY_FLS2FLS_WAIT_WRITE_E"
	.sleb128 11
	.uleb128 0x5
	.string	"FEE_LL_CPY_FLS2FLS_WRITE_ERROR_E"
	.sleb128 12
	.uleb128 0x5
	.string	"FEE_LL_CPY_FLS2FLS_VERIFY_E"
	.sleb128 13
	.uleb128 0x5
	.string	"FEE_LL_CPY_FLS2FLS_WAIT_VERIFY_E"
	.sleb128 14
	.uleb128 0x5
	.string	"FEE_LL_CPY_FLS2FLS_VERIFY_ERROR_E"
	.sleb128 15
	.uleb128 0x5
	.string	"FEE_LL_CPY_FLS2FLS_HDRPG2_WRITE_E"
	.sleb128 16
	.uleb128 0x5
	.string	"FEE_LL_CPY_FLS2FLS_WAIT_HDRPG2_WRITE_E"
	.sleb128 17
	.uleb128 0x5
	.string	"FEE_LL_CPY_FLS2FLS_HDRPG2_WRITE_ERROR_E"
	.sleb128 18
	.uleb128 0x5
	.string	"FEE_LL_CPY_FLS2FLS_HDRPG2_VERIFY_E"
	.sleb128 19
	.uleb128 0x5
	.string	"FEE_LL_CPY_FLS2FLS_WAIT_HDRPG2_VERIFY_E"
	.sleb128 20
	.uleb128 0x5
	.string	"FEE_LL_CPY_FLS2FLS_HDRPG2_VERIFY_ERROR_E"
	.sleb128 21
	.uleb128 0x5
	.string	"FEE_LL_CPY_FLS2FLS_CHECK_ADR_OVERFLOW_E"
	.sleb128 22
	.uleb128 0x5
	.string	"FEE_LL_CPY_FLS2FLS_WRITE_FULL_MARKER_E"
	.sleb128 23
	.uleb128 0x5
	.string	"FEE_LL_CPY_FLS2FLS_ERASE_SECTOR_E"
	.sleb128 24
	.uleb128 0x5
	.string	"FEE_LL_CPY_FLS2FLS_WRITE_USED_MARKER_E"
	.sleb128 25
	.uleb128 0x5
	.string	"FEE_LL_CPY_FLS2FLS_WRITE_START_MARKER_E"
	.sleb128 26
	.byte	0
	.uleb128 0xc
	.string	"Fee_LLCpyBlkFls2Fls_ten"
	.byte	0x5
	.uahalf	0x2a3
	.uaword	0x1875
	.uleb128 0xd
	.byte	0x3c
	.byte	0x5
	.uahalf	0x2c1
	.uaword	0x2008
	.uleb128 0xe
	.string	"xRdAddress"
	.byte	0x5
	.uahalf	0x2c3
	.uaword	0x229
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"xWrAddress"
	.byte	0x5
	.uahalf	0x2c4
	.uaword	0x229
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"xCmpAddress"
	.byte	0x5
	.uahalf	0x2c5
	.uaword	0x229
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"xCrcAddress"
	.byte	0x5
	.uahalf	0x2c6
	.uaword	0x229
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"xCpyAddress"
	.byte	0x5
	.uahalf	0x2c7
	.uaword	0x229
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"AdrHdSearchStart_u32"
	.byte	0x5
	.uahalf	0x2c8
	.uaword	0x229
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"xStartAddrNextSector_u32"
	.byte	0x5
	.uahalf	0x2c9
	.uaword	0x229
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"xHdPg2Address"
	.byte	0x5
	.uahalf	0x2cd
	.uaword	0x229
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"LastProgrammedAddress_u32"
	.byte	0x5
	.uahalf	0x2d1
	.uaword	0x229
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.string	"LastValidHdrAddress_u32"
	.byte	0x5
	.uahalf	0x2d2
	.uaword	0x229
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xe
	.string	"Fee_LLSecReorg_en"
	.byte	0x5
	.uahalf	0x2d5
	.uaword	0x1710
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xe
	.string	"Fee_LLRedundantCpyChk_en"
	.byte	0x5
	.uahalf	0x2d6
	.uaword	0x1853
	.byte	0x2
	.byte	0x23
	.uleb128 0x29
	.uleb128 0xe
	.string	"Fee_LLCpyBlkFls2Fls_en"
	.byte	0x5
	.uahalf	0x2d7
	.uaword	0x1c6d
	.byte	0x2
	.byte	0x23
	.uleb128 0x2a
	.uleb128 0xe
	.string	"Fee_HLWrBlock_en"
	.byte	0x5
	.uahalf	0x2dd
	.uaword	0xd3c
	.byte	0x2
	.byte	0x23
	.uleb128 0x2b
	.uleb128 0xe
	.string	"Fee_HLMtBlock_en"
	.byte	0x5
	.uahalf	0x2e0
	.uaword	0xd3c
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xe
	.string	"Fee_LLWrBlock_en"
	.byte	0x5
	.uahalf	0x2e3
	.uaword	0xf57
	.byte	0x2
	.byte	0x23
	.uleb128 0x2d
	.uleb128 0xe
	.string	"Fee_HLRdBlock"
	.byte	0x5
	.uahalf	0x2e4
	.uaword	0xd3c
	.byte	0x2
	.byte	0x23
	.uleb128 0x2e
	.uleb128 0xe
	.string	"Fee_LLNextUsedWrBlock_en"
	.byte	0x5
	.uahalf	0x2e5
	.uaword	0xf57
	.byte	0x2
	.byte	0x23
	.uleb128 0x2f
	.uleb128 0xe
	.string	"Fee_LLNextEraseWrBlock_en"
	.byte	0x5
	.uahalf	0x2e6
	.uaword	0xf57
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"Fee_LLCompBlk"
	.byte	0x5
	.uahalf	0x2e7
	.uaword	0x1036
	.byte	0x2
	.byte	0x23
	.uleb128 0x31
	.uleb128 0xe
	.string	"Fee_LLCopyBlk_en"
	.byte	0x5
	.uahalf	0x2e8
	.uaword	0x1106
	.byte	0x2
	.byte	0x23
	.uleb128 0x32
	.uleb128 0xe
	.string	"Fee_LLCalcCrcBlk_en"
	.byte	0x5
	.uahalf	0x2e9
	.uaword	0x1223
	.byte	0x2
	.byte	0x23
	.uleb128 0x33
	.uleb128 0xe
	.string	"Fee_LLWrMarker_en"
	.byte	0x5
	.uahalf	0x2ea
	.uaword	0xc39
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xe
	.string	"Fee_LLRdState_en"
	.byte	0x5
	.uahalf	0x2eb
	.uaword	0x1395
	.byte	0x2
	.byte	0x23
	.uleb128 0x35
	.uleb128 0xe
	.string	"Fee_LLBlankCheckState_en"
	.byte	0x5
	.uahalf	0x2ec
	.uaword	0x1459
	.byte	0x2
	.byte	0x23
	.uleb128 0x36
	.uleb128 0xe
	.string	"Fee_LLFindEmptyPageState_en"
	.byte	0x5
	.uahalf	0x2ed
	.uaword	0x14d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x37
	.uleb128 0xe
	.string	"Fee_LLSearchBlkHdr_en"
	.byte	0x5
	.uahalf	0x2ee
	.uaword	0x1539
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xe
	.string	"Fee_LLBuildUpCache_en"
	.byte	0x5
	.uahalf	0x2fb
	.uaword	0x15a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x39
	.uleb128 0xe
	.string	"Fee_LLBuildUpCacheAllSect_en"
	.byte	0x5
	.uahalf	0x2fc
	.uaword	0x1613
	.byte	0x2
	.byte	0x23
	.uleb128 0x3a
	.byte	0
	.uleb128 0xc
	.string	"Fee_RdWrOrder_tst"
	.byte	0x5
	.uahalf	0x2fe
	.uaword	0x1c8d
	.uleb128 0xd
	.byte	0x14
	.byte	0x5
	.uahalf	0x301
	.uaword	0x20da
	.uleb128 0xe
	.string	"AdrBlkHeader_u32"
	.byte	0x5
	.uahalf	0x303
	.uaword	0x229
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"BlkCrc32_u32"
	.byte	0x5
	.uahalf	0x304
	.uaword	0x229
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"HdrCrc16_u16"
	.byte	0x5
	.uahalf	0x305
	.uaword	0x1ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"BlkLength_u16"
	.byte	0x5
	.uahalf	0x306
	.uaword	0x1ed
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xe
	.string	"FeeIndex_u16"
	.byte	0x5
	.uahalf	0x307
	.uaword	0x1ed
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"DataBytes_au8"
	.byte	0x5
	.uahalf	0x308
	.uaword	0x20da
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xe
	.string	"BlkStatus_u8"
	.byte	0x5
	.uahalf	0x309
	.uaword	0x1c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x11
	.uaword	0x1c2
	.uaword	0x20ea
	.uleb128 0x12
	.uaword	0x830
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.string	"Fee_GlobInfoLastRdHeader_tst"
	.byte	0x5
	.uahalf	0x30a
	.uaword	0x2022
	.uleb128 0xd
	.byte	0xa
	.byte	0x5
	.uahalf	0x30d
	.uaword	0x21c5
	.uleb128 0xe
	.string	"BytesAlrdyConsid_u16"
	.byte	0x5
	.uahalf	0x30f
	.uaword	0x1ed
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"BytesAlrdyCompared_u16"
	.byte	0x5
	.uahalf	0x310
	.uaword	0x1ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xe
	.string	"Bytes2Read_u16"
	.byte	0x5
	.uahalf	0x311
	.uaword	0x1ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"CompareResult_u8"
	.byte	0x5
	.uahalf	0x312
	.uaword	0x1c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xe
	.string	"cntWriteRetry_u8"
	.byte	0x5
	.uahalf	0x313
	.uaword	0x1c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xe
	.string	"cntCopies_u8"
	.byte	0x5
	.uahalf	0x314
	.uaword	0x1c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0xc
	.string	"Fee_GlobInfoWrBlock_tst"
	.byte	0x5
	.uahalf	0x315
	.uaword	0x210f
	.uleb128 0xd
	.byte	0xc
	.byte	0x5
	.uahalf	0x318
	.uaword	0x2287
	.uleb128 0xe
	.string	"xRdAddress_u32"
	.byte	0x5
	.uahalf	0x31a
	.uaword	0x229
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"xNumBytesAlrdyCopied_u16"
	.byte	0x5
	.uahalf	0x31b
	.uaword	0x1ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"xNumBytesLeftToRdWr_u16"
	.byte	0x5
	.uahalf	0x31c
	.uaword	0x1ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xe
	.string	"xCntCopies_u8"
	.byte	0x5
	.uahalf	0x31d
	.uaword	0x1c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"xFirstDataPgPgm_u8"
	.byte	0x5
	.uahalf	0x31f
	.uaword	0x1c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.byte	0
	.uleb128 0xc
	.string	"Fee_LLSecReorgStruct_tst"
	.byte	0x5
	.uahalf	0x321
	.uaword	0x21e5
	.uleb128 0xb
	.byte	0x1
	.byte	0x5
	.uahalf	0x325
	.uaword	0x236b
	.uleb128 0x5
	.string	"FEE_ERASESEC_IDLE_E"
	.sleb128 0
	.uleb128 0x5
	.string	"FEE_ERASESEC_CHECK_CACHE_E"
	.sleb128 1
	.uleb128 0x5
	.string	"FEE_ERASESEC_WRITE_ERASESTARTFLAG_E"
	.sleb128 2
	.uleb128 0x5
	.string	"FEE_ERASESEC_START_E"
	.sleb128 3
	.uleb128 0x5
	.string	"FEE_ERASESEC_DO_E"
	.sleb128 4
	.uleb128 0x5
	.string	"FEE_ERASESEC_WRITE_MARKER_E"
	.sleb128 5
	.uleb128 0x5
	.string	"FEE_ERASESEC_ERROR_E"
	.sleb128 6
	.byte	0
	.uleb128 0xc
	.string	"Fee_LLEraseStateType_ten"
	.byte	0x5
	.uahalf	0x32d
	.uaword	0x22a8
	.uleb128 0xd
	.byte	0x2
	.byte	0x5
	.uahalf	0x330
	.uaword	0x23cb
	.uleb128 0xe
	.string	"EraseState_en"
	.byte	0x5
	.uahalf	0x332
	.uaword	0x236b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"xPhySectorIdx_u8"
	.byte	0x5
	.uahalf	0x333
	.uaword	0x1c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0xc
	.string	"Fee_LLEraseOrderType_tst"
	.byte	0x5
	.uahalf	0x334
	.uaword	0x238c
	.uleb128 0xb
	.byte	0x1
	.byte	0x5
	.uahalf	0x338
	.uaword	0x252f
	.uleb128 0x5
	.string	"FEE_LLWR_ERASESTARTFLAG_INIT_E"
	.sleb128 0
	.uleb128 0x5
	.string	"FEE_LLWR_ERASESTARTFLAG_BLK_CHK_E"
	.sleb128 1
	.uleb128 0x5
	.string	"FEE_LLWR_ERASESTARTFLAG_BLK_CHK_WAIT_E"
	.sleb128 2
	.uleb128 0x5
	.string	"FEE_LLWR_ERASESTARTFLAG_ALREADY_PROGRAMMED_E"
	.sleb128 3
	.uleb128 0x5
	.string	"FEE_LLWR_ERASESTARTFLAG_WRITE_E"
	.sleb128 4
	.uleb128 0x5
	.string	"FEE_LLWR_ERASESTARTFLAG_WRITE_WAIT_E"
	.sleb128 5
	.uleb128 0x5
	.string	"FEE_LLWR_ERASESTARTFLAG_WRITE_ERROR_E"
	.sleb128 6
	.uleb128 0x5
	.string	"FEE_LLWR_ERASESTARTFLAG_WRITE_FINISHED_E"
	.sleb128 7
	.byte	0
	.uleb128 0xc
	.string	"Fee_LLWrEraseStartFlagStateType_ten"
	.byte	0x5
	.uahalf	0x341
	.uaword	0x23ec
	.uleb128 0xd
	.byte	0x8
	.byte	0x5
	.uahalf	0x344
	.uaword	0x259b
	.uleb128 0xe
	.string	"state_en"
	.byte	0x5
	.uahalf	0x346
	.uaword	0x252f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"eraseStartFlagAddr_u32"
	.byte	0x5
	.uahalf	0x347
	.uaword	0x229
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xc
	.string	"Fee_LLWrEraseStartFlagOrderType_tst"
	.byte	0x5
	.uahalf	0x348
	.uaword	0x255b
	.uleb128 0xd
	.byte	0x4
	.byte	0x5
	.uahalf	0x357
	.uaword	0x25f5
	.uleb128 0xe
	.string	"Fee_ResetUsedSectors_pfn"
	.byte	0x5
	.uahalf	0x359
	.uaword	0x56d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xc
	.string	"Fee_LinkedFunctions_tst"
	.byte	0x5
	.uahalf	0x35a
	.uaword	0x25c7
	.uleb128 0xb
	.byte	0x1
	.byte	0x5
	.uahalf	0x3b8
	.uaword	0x2648
	.uleb128 0x5
	.string	"FEE_POLLING_MODE_E"
	.sleb128 0
	.uleb128 0x5
	.string	"FEE_NORMAL_MODE_E"
	.sleb128 1
	.byte	0
	.uleb128 0xc
	.string	"Fee_stMainType"
	.byte	0x5
	.uahalf	0x3bb
	.uaword	0x2615
	.uleb128 0x13
	.byte	0x1
	.string	"Fee_InitCache"
	.byte	0x1
	.uahalf	0x262
	.byte	0x1
	.byte	0x1
	.uaword	0x2687
	.uleb128 0x14
	.string	"i_u16"
	.byte	0x1
	.uahalf	0x264
	.uaword	0x1ed
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"Fee_InitOrderFifoBuffer"
	.byte	0x1
	.uahalf	0x285
	.byte	0x1
	.byte	0x1
	.uaword	0x26b9
	.uleb128 0x14
	.string	"i_u16"
	.byte	0x1
	.uahalf	0x287
	.uaword	0x1ed
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.string	"Fee_Rb_EndInit"
	.byte	0x1
	.uahalf	0x1cf
	.byte	0x1
	.uaword	.LFB25
	.uaword	.LFE25
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x16
	.byte	0x1
	.string	"Fee_InitVarAndState"
	.byte	0x1
	.uahalf	0x1e8
	.byte	0x1
	.uaword	.LFB26
	.uaword	.LFE26
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x2729
	.uleb128 0x17
	.string	"i_u8"
	.byte	0x1
	.uahalf	0x1ea
	.uaword	0x1c2
	.uaword	.LLST0
	.uleb128 0x18
	.uaword	.LVL0
	.uaword	0x2d56
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	Fee_GlobInfoLastRdHeader_st
	.byte	0
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.string	"Fee_Init"
	.byte	0x1
	.byte	0xec
	.byte	0x1
	.uaword	.LFB24
	.uaword	.LFE24
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x2838
	.uleb128 0x1b
	.string	"ConfigPtr"
	.byte	0x1
	.byte	0xec
	.uaword	0x2838
	.uaword	.LLST1
	.uleb128 0x1c
	.uaword	.LASF1
	.byte	0x1
	.byte	0xf1
	.uaword	0x1c2
	.uaword	.LLST2
	.uleb128 0x1d
	.string	"xLogSecIdx_u8"
	.byte	0x1
	.byte	0xf2
	.uaword	0x1c2
	.uaword	.LLST3
	.uleb128 0x1d
	.string	"local_loop_u8"
	.byte	0x1
	.byte	0xf3
	.uaword	0x1c2
	.uaword	.LLST4
	.uleb128 0x1e
	.uaword	0x265f
	.uaword	.LBB6
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.uahalf	0x14a
	.uaword	0x27c1
	.uleb128 0x1f
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x20
	.uaword	0x2678
	.uaword	.LLST5
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uaword	0x2687
	.uaword	.LBB9
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x1
	.uahalf	0x14d
	.uaword	0x27e5
	.uleb128 0x1f
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0x20
	.uaword	0x26aa
	.uaword	.LLST6
	.byte	0
	.byte	0
	.uleb128 0x21
	.uaword	.LVL5
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x22
	.uaword	.LVL8
	.uaword	0x26da
	.uleb128 0x22
	.uaword	.LVL18
	.uaword	0x2d8d
	.uleb128 0x22
	.uaword	.LVL21
	.uaword	0x2db1
	.uleb128 0x23
	.uaword	.LVL22
	.uaword	0x2dd7
	.uaword	0x281c
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.uaword	.LVL25
	.uaword	0x2e05
	.uleb128 0x22
	.uaword	.LVL27
	.uaword	0x2e31
	.uleb128 0x22
	.uaword	.LVL29
	.uaword	0x2e5a
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0x283e
	.uleb128 0x10
	.uaword	0x551
	.uleb128 0x24
	.uaword	0x265f
	.uaword	.LFB27
	.uaword	.LFE27
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x2862
	.uleb128 0x20
	.uaword	0x2678
	.uaword	.LLST7
	.byte	0
	.uleb128 0x24
	.uaword	0x2687
	.uaword	.LFB28
	.uaword	.LFE28
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x2881
	.uleb128 0x20
	.uaword	0x26aa
	.uaword	.LLST8
	.byte	0
	.uleb128 0x25
	.string	"Fee_LinkedFunctions_cst"
	.byte	0x5
	.uahalf	0x3fe
	.uaword	0x28a3
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.uaword	0x25f5
	.uleb128 0x26
	.string	"Fee_PageBytePtr_cpu8"
	.byte	0x1
	.byte	0x44
	.uaword	0x567
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Fee_PageBytePtr_cpu8
	.uleb128 0x26
	.string	"Fee_RdWrOrder_st"
	.byte	0x1
	.byte	0x47
	.uaword	0x2008
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Fee_RdWrOrder_st
	.uleb128 0x11
	.uaword	0x93c
	.uaword	0x28fa
	.uleb128 0x12
	.uaword	0x830
	.byte	0x1
	.byte	0
	.uleb128 0x26
	.string	"Fee_LLSectorOrder_st"
	.byte	0x1
	.byte	0x4a
	.uaword	0x28ea
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Fee_LLSectorOrder_st
	.uleb128 0x26
	.string	"Fee_LLEraseOrder_st"
	.byte	0x1
	.byte	0x4e
	.uaword	0x23cb
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Fee_LLEraseOrder_st
	.uleb128 0x26
	.string	"Fee_LLWrEraseStartFlag_st"
	.byte	0x1
	.byte	0x4f
	.uaword	0x259b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Fee_LLWrEraseStartFlag_st
	.uleb128 0x11
	.uaword	0x6bd
	.uaword	0x2977
	.uleb128 0x12
	.uaword	0x830
	.byte	0x2
	.byte	0
	.uleb128 0x26
	.string	"Fee_OrderFifo_st"
	.byte	0x1
	.byte	0x50
	.uaword	0x2967
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Fee_OrderFifo_st
	.uleb128 0x26
	.string	"Fee_GlobInfoLastRdHeader_st"
	.byte	0x1
	.byte	0x4d
	.uaword	0x20ea
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Fee_GlobInfoLastRdHeader_st
	.uleb128 0x26
	.string	"Fee_GlobInfoWrBlock_st"
	.byte	0x1
	.byte	0x52
	.uaword	0x21c5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Fee_GlobInfoWrBlock_st
	.uleb128 0x26
	.string	"Fee_LLSecReorgStruct_st"
	.byte	0x1
	.byte	0x51
	.uaword	0x2287
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Fee_LLSecReorgStruct_st
	.uleb128 0x11
	.uaword	0x37a
	.uaword	0x2a1b
	.uleb128 0x12
	.uaword	0x830
	.byte	0x2
	.byte	0
	.uleb128 0x26
	.string	"Fee_JobResult"
	.byte	0x1
	.byte	0x53
	.uaword	0x2a0b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Fee_JobResult
	.uleb128 0x26
	.string	"Fee_MarkerBufBytePtr_cpu8"
	.byte	0x1
	.byte	0x27
	.uaword	0x2a5f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Fee_MarkerBufBytePtr_cpu8
	.uleb128 0x10
	.uaword	0x567
	.uleb128 0x26
	.string	"Fee_DataBytePtr_cpu8"
	.byte	0x1
	.byte	0x2a
	.uaword	0x2a5f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Fee_DataBytePtr_cpu8
	.uleb128 0x26
	.string	"Fee_Prv_stInit_u8"
	.byte	0x1
	.byte	0x31
	.uaword	0x1c2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Fee_Prv_stInit_u8
	.uleb128 0x26
	.string	"Fee_Prv_stReorg_u8"
	.byte	0x1
	.byte	0x32
	.uaword	0x1c2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Fee_Prv_stReorg_u8
	.uleb128 0x26
	.string	"Fee_NumFlashBanksUsed_u8"
	.byte	0x1
	.byte	0x33
	.uaword	0x1c2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Fee_NumFlashBanksUsed_u8
	.uleb128 0x11
	.uaword	0x1c2
	.uaword	0x2aff
	.uleb128 0x12
	.uaword	0x830
	.byte	0x7
	.byte	0
	.uleb128 0x26
	.string	"Fee_hdr2Buffer_au8"
	.byte	0x1
	.byte	0xd5
	.uaword	0x2aef
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Fee_hdr2Buffer_au8
	.uleb128 0x26
	.string	"Fee_GlobModuleState_st"
	.byte	0x1
	.byte	0x8e
	.uaword	0x2dd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Fee_GlobModuleState_st
	.uleb128 0x26
	.string	"Fee_stMain"
	.byte	0x1
	.byte	0x8f
	.uaword	0x2648
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Fee_stMain
	.uleb128 0x26
	.string	"Fee_idxLLSectorOrder_au8"
	.byte	0x1
	.byte	0x5a
	.uaword	0x20da
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Fee_idxLLSectorOrder_au8
	.uleb128 0x26
	.string	"Fee_idxActQueue_u8"
	.byte	0x1
	.byte	0x5e
	.uaword	0x1c2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Fee_idxActQueue_u8
	.uleb128 0x26
	.string	"Fee_CacheUpdCompForSect_au8"
	.byte	0x1
	.byte	0x5d
	.uaword	0x20da
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Fee_CacheUpdCompForSect_au8
	.uleb128 0x26
	.string	"Fee_RdWrRetries_u8"
	.byte	0x1
	.byte	0x5f
	.uaword	0x1c2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Fee_RdWrRetries_u8
	.uleb128 0x11
	.uaword	0x229
	.uaword	0x2c01
	.uleb128 0x12
	.uaword	0x830
	.byte	0x17
	.byte	0
	.uleb128 0x26
	.string	"Fee_llMarkerPageBuf_au32"
	.byte	0x1
	.byte	0x6d
	.uaword	0x2bf1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Fee_llMarkerPageBuf_au32
	.uleb128 0x11
	.uaword	0x229
	.uaword	0x2c38
	.uleb128 0x12
	.uaword	0x830
	.byte	0x39
	.byte	0
	.uleb128 0x26
	.string	"Fee_Cache_au32"
	.byte	0x1
	.byte	0x70
	.uaword	0x2c28
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Fee_Cache_au32
	.uleb128 0x26
	.string	"Fee_DataByteStartCrc_u32"
	.byte	0x1
	.byte	0x97
	.uaword	0x229
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Fee_DataByteStartCrc_u32
	.uleb128 0x11
	.uaword	0x229
	.uaword	0x2c8d
	.uleb128 0x27
	.uaword	0x830
	.uahalf	0x101
	.byte	0
	.uleb128 0x26
	.string	"Fee_llPageBuf_au32"
	.byte	0x1
	.byte	0x76
	.uaword	0x2c7c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Fee_llPageBuf_au32
	.uleb128 0x11
	.uaword	0x229
	.uaword	0x2cbe
	.uleb128 0x12
	.uaword	0x830
	.byte	0x3f
	.byte	0
	.uleb128 0x26
	.string	"Fee_llDataBuf_au32"
	.byte	0x1
	.byte	0x79
	.uaword	0x2cae
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Fee_llDataBuf_au32
	.uleb128 0x11
	.uaword	0xae4
	.uaword	0x2cef
	.uleb128 0x12
	.uaword	0x830
	.byte	0x39
	.byte	0
	.uleb128 0x25
	.string	"Fee_BlockProperties_st"
	.byte	0x5
	.uahalf	0x464
	.uaword	0x2cdf
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.string	"Fee_Rb_WorkingState_en"
	.byte	0x1
	.byte	0x90
	.uaword	0x47d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Fee_Rb_WorkingState_en
	.uleb128 0x26
	.string	"Fee_SecChngCnt_u32"
	.byte	0x1
	.byte	0x3c
	.uaword	0x229
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Fee_SecChngCnt_u32
	.uleb128 0x28
	.byte	0x1
	.string	"Fee_LLInitializeLastHdrVariable"
	.byte	0x5
	.uahalf	0x4c1
	.byte	0x1
	.byte	0x1
	.uaword	0x2d87
	.uleb128 0x29
	.uaword	0x2d87
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0x20ea
	.uleb128 0x2a
	.byte	0x1
	.string	"Fee_LLDetectActiveSector"
	.byte	0x5
	.uahalf	0x4b3
	.byte	0x1
	.uaword	0x1c2
	.byte	0x1
	.uleb128 0x2a
	.byte	0x1
	.string	"Fee_BuildUpCacheForAllSect"
	.byte	0x5
	.uahalf	0x52e
	.byte	0x1
	.uaword	0xa31
	.byte	0x1
	.uleb128 0x2b
	.byte	0x1
	.string	"Fee_LLGetSecStartAddress"
	.byte	0x5
	.uahalf	0x4db
	.byte	0x1
	.uaword	0x229
	.byte	0x1
	.uaword	0x2e05
	.uleb128 0x29
	.uaword	0x1c2
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"Fee_LLGetSecEndAddress"
	.byte	0x5
	.uahalf	0x4dc
	.byte	0x1
	.uaword	0x229
	.byte	0x1
	.uaword	0x2e31
	.uleb128 0x29
	.uaword	0x1c2
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"Fee_LLFindEmptyPage"
	.byte	0x5
	.uahalf	0x4b4
	.byte	0x1
	.uaword	0xa31
	.byte	0x1
	.uaword	0x2e5a
	.uleb128 0x29
	.uaword	0x1c2
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.string	"Fee_LLUpdateCacheStForSect"
	.byte	0x5
	.uahalf	0x520
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.uaword	0x1c2
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LFE26
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL4
	.uaword	.LVL5-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL5-1
	.uaword	.LFE24
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL19
	.uaword	.LVL21-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL21-1
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL24
	.uaword	.LVL25-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL25-1
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL26
	.uaword	.LVL27-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL27-1
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL28
	.uaword	.LVL29-1
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL20
	.uaword	.LVL21-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL21-1
	.uaword	.LFE24
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL7
	.uaword	.LFE24
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL14
	.uaword	.LFE24
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL17
	.uaword	.LFE24
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL31
	.uaword	.LVL32
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL34
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
	.uaword	.LFE27
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL37
	.uaword	.LVL38
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL38
	.uaword	.LVL39
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL39
	.uaword	.LVL40
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL40
	.uaword	.LFE28
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x3c
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
	.uaword	.LFB24
	.uaword	.LFE24-.LFB24
	.uaword	.LFB27
	.uaword	.LFE27-.LFB27
	.uaword	.LFB28
	.uaword	.LFE28-.LFB28
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB6
	.uaword	.LBE6
	.uaword	.LBB12
	.uaword	.LBE12
	.uaword	0
	.uaword	0
	.uaword	.LBB9
	.uaword	.LBE9
	.uaword	.LBB13
	.uaword	.LBE13
	.uaword	0
	.uaword	0
	.uaword	.LFB25
	.uaword	.LFE25
	.uaword	.LFB26
	.uaword	.LFE26
	.uaword	.LFB24
	.uaword	.LFE24
	.uaword	.LFB27
	.uaword	.LFE27
	.uaword	.LFB28
	.uaword	.LFE28
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF1:
	.string	"xPhySecIdx_u8"
.LASF0:
	.string	"Length_u16"
	.extern	Fee_LLUpdateCacheStForSect,STT_FUNC,0
	.extern	Fee_LLFindEmptyPage,STT_FUNC,0
	.extern	Fee_LLGetSecEndAddress,STT_FUNC,0
	.extern	Fee_LLGetSecStartAddress,STT_FUNC,0
	.extern	Fee_BuildUpCacheForAllSect,STT_FUNC,0
	.extern	Fee_LLDetectActiveSector,STT_FUNC,0
	.extern	Fee_LinkedFunctions_cst,STT_OBJECT,4
	.extern	Fee_LLInitializeLastHdrVariable,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
