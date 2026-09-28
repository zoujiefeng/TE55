	.file	"rba_FeeFs1_HlWriteBlock.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Fee_HLWriteBlock,"ax",@progbits
	.align 1
	.global	Fee_HLWriteBlock
	.type	Fee_HLWriteBlock, @function
Fee_HLWriteBlock:
.LFB24:
	.file 1 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_HlWriteBlock.c"
	.loc 1 60 0
.LVL0:
	.loc 1 72 0
	movh.a	%a12, hi:Fee_RdWrOrder_st
	lea	%a12, [%a12] lo:Fee_RdWrOrder_st
	ld.bu	%d15, [%a12] 43
	jlt.u	%d15, 9, .L70
.L50:
	.loc 1 622 0
	mov	%d2, 6
.L63:
	movh.a	%a15, hi:Fee_GlobInfoWrBlock_st
	lea	%a15, [%a15] lo:Fee_GlobInfoWrBlock_st
.L2:
.LVL1:
	.loc 1 645 0
	mov	%d15, 3
	st.b	[%a15] 7, %d15
	.loc 1 648 0
	mov	%d15, 0
	st.b	[%a12] 43, %d15
	ret
.LVL2:
.L70:
	.loc 1 72 0
	movh.a	%a15, hi:.L4
	lea	%a15, [%a15] lo:.L4
	addsc.a	%a15, %a15, %d15, 2
	ji	%a15
	.align 2
	.align 2
.L4:
	.code32
	j	.L3
	.code32
	j	.L5
	.code32
	j	.L50
	.code32
	j	.L50
	.code32
	j	.L6
	.code32
	j	.L7
	.code32
	j	.L50
	.code32
	j	.L50
	.code32
	j	.L8
.L3:
	.loc 1 82 0
	movh.a	%a13, hi:Fee_idxActQueue_u8
	ld.bu	%d15, [%a13] lo:Fee_idxActQueue_u8
	movh	%d8, hi:Fee_OrderFifo_st
	addi	%d8, %d8, lo:Fee_OrderFifo_st
	sh	%d3, %d15, 4
	.loc 1 81 0
	movh	%d9, hi:Fee_GlobInfoLastRdHeader_st
	.loc 1 82 0
	mov.a	%a3, %d8
	addsc.a	%a15, %a3, %d3, 0
	.loc 1 81 0
	mov.a	%a2, %d9
	.loc 1 82 0
	ld.hu	%d4, [%a15] 6
	.loc 1 81 0
	lea	%a15, [%a2] lo:Fee_GlobInfoLastRdHeader_st
	.loc 1 82 0
	movh.a	%a2, hi:Fee_BlockProperties_st
	mov.d	%d5, %a2
	.loc 1 78 0
	mov	%d2, -1
	.loc 1 82 0
	addi	%d15, %d5, lo:Fee_BlockProperties_st
	madd	%d5, %d15, %d4, 16
	.loc 1 78 0
	movh.a	%a4, hi:xAdrLastBlkHeader_u32.1995
	st.w	[%a4] lo:xAdrLastBlkHeader_u32.1995, %d2
	.loc 1 82 0
	mov.a	%a2, %d5
	.loc 1 90 0
	mov	%d2, 0
	.loc 1 81 0
	ld.h	%d15, [%a2]0
	.loc 1 100 0
	movh.a	%a14, hi:xSearchRetry_b.1999
	.loc 1 81 0
	st.h	[%a15] 12, %d15
	.loc 1 83 0
	ld.h	%d15, [%a2] 4
	.loc 1 91 0
	st.b	[%a15] 14, %d2
	.loc 1 83 0
	st.h	[%a15] 10, %d15
	.loc 1 86 0
	ld.h	%d15, [%a2] 2
	.loc 1 88 0
	mov.a	%a2, %d9
	.loc 1 86 0
	st.b	[%a15] 16, %d15
	.loc 1 88 0
	mov	%d15, -1
	st.w	[%a2] lo:Fee_GlobInfoLastRdHeader_st, %d15
	.loc 1 89 0
	mov	%d15, 0
	.loc 1 95 0
	movh.a	%a2, hi:xBlkCrc_u32.1998
	st.w	[%a2] lo:xBlkCrc_u32.1998, %d15
	.loc 1 96 0
	movh.a	%a2, hi:xNumCrcBytesConsid_u16.1997
	st.w	[%a2] lo:xNumCrcBytesConsid_u16.1997, %d15
	.loc 1 97 0
	movh.a	%a2, hi:xBlkLength_u16.1996
	.loc 1 89 0
	st.w	[%a15] 4, %d15
	.loc 1 90 0
	st.h	[%a15] 8, %d15
	.loc 1 97 0
	st.h	[%a2] lo:xBlkLength_u16.1996, %d15
	.loc 1 109 0
	mov	%d15, 1
	.loc 1 92 0
	st.b	[%a15] 15, %d2
	.loc 1 100 0
	st.b	[%a14] lo:xSearchRetry_b.1999, %d2
	.loc 1 109 0
	st.b	[%a12] 43, %d15
	mov	%d5, 0
.L9:
	.loc 1 122 0
	mov.a	%a3, %d8
	addsc.a	%a2, %a3, %d3, 0
	lea	%a4, [%a4] lo:xAdrLastBlkHeader_u32.1995
	ld.hu	%d4, [%a2] 4
	mov.aa	%a5, %a15
	call	Fee_LLSearchSpecifiedBlkHeader
.LVL3:
	.loc 1 127 0
	jge.u	%d2, 7, .L50
	movh.a	%a2, hi:.L11
	lea	%a2, [%a2] lo:.L11
	addsc.a	%a2, %a2, %d2, 2
	ji	%a2
	.align 2
	.align 2
.L11:
	.code32
	j	.L10
	.code32
	j	.L12
	.code32
	j	.L50
	.code32
	j	.L13
	.code32
	j	.L50
	.code32
	j	.L50
	.code32
	j	.L14
.LVL4:
.L5:
	movh.a	%a13, hi:Fee_idxActQueue_u8
	movh	%d9, hi:Fee_GlobInfoLastRdHeader_st
	ld.bu	%d15, [%a13] lo:Fee_idxActQueue_u8
	mov.a	%a2, %d9
	movh.a	%a14, hi:xSearchRetry_b.1999
	movh	%d8, hi:Fee_OrderFifo_st
	ld.bu	%d5, [%a14] lo:xSearchRetry_b.1999
	movh.a	%a4, hi:xAdrLastBlkHeader_u32.1995
	addi	%d8, %d8, lo:Fee_OrderFifo_st
	sh	%d3, %d15, 4
	lea	%a15, [%a2] lo:Fee_GlobInfoLastRdHeader_st
	j	.L9
.L6:
	.loc 1 434 0
	movh.a	%a15, hi:xNumCrcBytesConsid_u16.1997
	movh.a	%a2, hi:xBlkLength_u16.1996
	ld.w	%d3, [%a15] lo:xNumCrcBytesConsid_u16.1997
	ld.h	%d15, [%a2] lo:xBlkLength_u16.1996
	sub	%d15, %d3
	extr.u	%d15, %d15, 0, 16
.LVL5:
	.loc 1 437 0
	ge.u	%d2, %d15, 257
	jnz	%d2, .L46
	.loc 1 444 0
	jnz	%d15, .L30
	.loc 1 460 0
	movh.a	%a13, hi:Fee_idxActQueue_u8
	ld.bu	%d15, [%a13] lo:Fee_idxActQueue_u8
.LVL6:
	movh	%d8, hi:Fee_OrderFifo_st
	addi	%d8, %d8, lo:Fee_OrderFifo_st
	sh	%d2, %d15, 4
	mov.a	%a3, %d8
	addsc.a	%a2, %a3, %d2, 0
	ld.bu	%d15, [%a2] 12
	jeq	%d15, 3, .L32
	movh	%d9, hi:Fee_GlobInfoLastRdHeader_st
	mov.a	%a2, %d9
	movh.a	%a15, hi:xBlkCrc_u32.1998
	ld.w	%d4, [%a15] lo:xBlkCrc_u32.1998
	lea	%a15, [%a2] lo:Fee_GlobInfoLastRdHeader_st
.LVL7:
.L33:
	.loc 1 470 0
	ld.w	%d3, [%a15] 4
	.loc 1 482 0
	mov	%d15, 8
	.loc 1 470 0
	jeq	%d4, %d3, .L71
.L34:
	.loc 1 487 0
	mov.a	%a3, %d8
	addsc.a	%a2, %a3, %d2, 0
	mov.aa	%a4, %a15
	ld.a	%a5, [%a2]0
	st.b	[%a12] 43, %d15
	call	Fee_LLPrepPageBufWithHdrDataEnd
.LVL8:
.L10:
	.loc 1 482 0
	mov	%d2, 0
	ret
.LVL9:
.L7:
	.loc 1 496 0
	movh.a	%a15, hi:Fee_idxActQueue_u8
	ld.bu	%d15, [%a15] lo:Fee_idxActQueue_u8
	.loc 1 497 0
	movh.a	%a15, hi:Fee_OrderFifo_st
	mov.d	%d3, %a15
	.loc 1 496 0
	movh.a	%a4, hi:Fee_GlobInfoLastRdHeader_st
	.loc 1 497 0
	addi	%d2, %d3, lo:Fee_OrderFifo_st
	madd	%d4, %d2, %d15, 16
	.loc 1 496 0
	lea	%a4, [%a4] lo:Fee_GlobInfoLastRdHeader_st
	.loc 1 497 0
	mov.a	%a15, %d4
	.loc 1 496 0
	ld.a	%a5, [%a15]0
	call	Fee_LLCompBlkInFlash
.LVL10:
	.loc 1 500 0
	jeq	%d2, 1, .L49
	jz	%d2, .L10
	jne	%d2, 3, .L50
	.loc 1 541 0
	mov	%d15, 8
	st.b	[%a12] 43, %d15
	.loc 1 543 0
	j	.L10
.LVL11:
.L8:
	.loc 1 567 0
	movh.a	%a15, hi:Fee_idxActQueue_u8
	ld.bu	%d15, [%a15] lo:Fee_idxActQueue_u8
	.loc 1 568 0
	movh.a	%a15, hi:Fee_OrderFifo_st
	mov.d	%d5, %a15
	.loc 1 567 0
	movh.a	%a4, hi:Fee_GlobInfoLastRdHeader_st
	.loc 1 568 0
	addi	%d2, %d5, lo:Fee_OrderFifo_st
	madd	%d3, %d2, %d15, 16
	.loc 1 567 0
	lea	%a4, [%a4] lo:Fee_GlobInfoLastRdHeader_st
	.loc 1 568 0
	mov.a	%a15, %d3
	.loc 1 567 0
	ld.a	%a5, [%a15]0
	call	Fee_LLWriteBlock
.LVL12:
	.loc 1 571 0
	jge.u	%d2, 7, .L50
	movh.a	%a15, hi:.L37
	lea	%a15, [%a15] lo:.L37
	addsc.a	%a15, %a15, %d2, 2
	ji	%a15
	.align 2
	.align 2
.L37:
	.code32
	j	.L10
	.code32
	j	.L63
	.code32
	j	.L50
	.code32
	j	.L39
	.code32
	j	.L63
	.code32
	j	.L63
	.code32
	j	.L39
.L14:
	.loc 1 406 0
	mov	%d15, 1
	st.b	[%a14] lo:xSearchRetry_b.1999, %d15
	.loc 1 411 0
	j	.L10
.L13:
	.loc 1 349 0
	ld.bu	%d15, [%a13] lo:Fee_idxActQueue_u8
	movh.a	%a2, hi:Fee_BlockProperties_st
	madd	%d5, %d8, %d15, 16
	mov.d	%d3, %a2
	mov.a	%a3, %d5
	addi	%d15, %d3, lo:Fee_BlockProperties_st
	ld.hu	%d2, [%a3] 6
.LVL13:
	.loc 1 357 0
	mov	%d3, 0
	.loc 1 349 0
	madd	%d4, %d15, %d2, 16
	.loc 1 361 0
	mov	%d5, -1
	.loc 1 357 0
	st.w	[%a15] 4, %d3
	.loc 1 349 0
	mov.a	%a2, %d4
	.loc 1 364 0
	ld.bu	%d4, [%a3] 12
	.loc 1 348 0
	ld.h	%d2, [%a2]0
	st.h	[%a15] 12, %d2
	.loc 1 350 0
	ld.h	%d2, [%a2] 4
	st.h	[%a15] 10, %d2
	.loc 1 353 0
	ld.bu	%d2, [%a2] 2
	.loc 1 361 0
	mov.a	%a2, %d9
	.loc 1 352 0
	st.b	[%a15] 16, %d2
	.loc 1 361 0
	st.w	[%a2] lo:Fee_GlobInfoLastRdHeader_st, %d5
	.loc 1 364 0
	jeq	%d4, 3, .L72
.L27:
	.loc 1 374 0
	movh.a	%a2, hi:Fee_PageBytePtr_cpu8
	ld.a	%a4, [%a2] lo:Fee_PageBytePtr_cpu8
	mov	%d4, 0
	mov	%d5, 1024
	call	Fee_SrvMemSet8
.LVL14:
.L68:
	.loc 1 377 0
	mov.aa	%a4, %a15
	call	Fee_LLPrepPageBufWithHdrDataStart
.LVL15:
	.loc 1 380 0
	ld.hu	%d2, [%a15] 8
	movh.a	%a2, hi:xBlkCrc_u32.1998
	not	%d2
	st.w	[%a2] lo:xBlkCrc_u32.1998, %d2
	.loc 1 384 0
	ld.bu	%d2, [%a13] lo:Fee_idxActQueue_u8
	madd	%d3, %d8, %d2, 16
	mov.a	%a2, %d3
	ld.hu	%d2, [%a2] 6
	madd	%d4, %d15, %d2, 16
	mov.a	%a2, %d4
	ld.h	%d15, [%a2] 2
	jz.t	%d15, 5, .L28
	.loc 1 386 0
	ld.bu	%d15, [%a15] 16
	.loc 1 385 0
	jz.t	%d15, 3, .L73
.L28:
	.loc 1 395 0
	ld.hu	%d15, [%a15] 10
.L29:
	movh.a	%a15, hi:xBlkLength_u16.1996
	st.h	[%a15] lo:xBlkLength_u16.1996, %d15
	.loc 1 399 0
	mov	%d15, 4
	st.b	[%a12] 43, %d15
	.loc 1 482 0
	mov	%d2, 0
	ret
.LVL16:
.L12:
	.loc 1 153 0
	ld.bu	%d2, [%a15] 16
.LVL17:
	and	%d15, %d2, 8
	and	%d15, 255
	jz	%d15, .L74
	.loc 1 158 0 discriminator 1
	ld.bu	%d15, [%a13] lo:Fee_idxActQueue_u8
	madd	%d3, %d8, %d15, 16
	mov.a	%a3, %d3
	.loc 1 157 0 discriminator 1
	ld.bu	%d15, [%a3] 12
	jeq	%d15, 3, .L49
	.loc 1 178 0
	movh.a	%a2, hi:Fee_BlockProperties_st
	mov.d	%d4, %a2
	ld.hu	%d3, [%a3] 6
	addi	%d15, %d4, lo:Fee_BlockProperties_st
	madd	%d5, %d15, %d3, 16
	mov.a	%a2, %d5
	.loc 1 177 0
	ld.h	%d3, [%a2] 4
	st.h	[%a15] 10, %d3
.L17:
	.loc 1 200 0
	and	%d2, %d2, 247
.L42:
	.loc 1 233 0
	movh.a	%a2, hi:Fee_PageBytePtr_cpu8
	ld.a	%a4, [%a2] lo:Fee_PageBytePtr_cpu8
	mov	%d4, 0
	mov	%d5, 1024
	st.b	[%a15] 16, %d2
	call	Fee_SrvMemSet8
.LVL18:
	.loc 1 237 0
	ld.bu	%d2, [%a13] lo:Fee_idxActQueue_u8
	mov.a	%a3, %d8
	sh	%d5, %d2, 4
	addsc.a	%a2, %a3, %d5, 0
	mov.a	%a3, %d15
	ld.hu	%d2, [%a2] 6
	.loc 1 240 0
	ld.bu	%d4, [%a15] 16
	.loc 1 237 0
	sh	%d6, %d2, 4
	addsc.a	%a2, %a3, %d6, 0
	ld.hu	%d2, [%a2] 2
	jz.t	%d2, 0, .L19
	.loc 1 240 0
	or	%d4, %d4, 1
	and	%d4, %d4, 255
.L20:
	.loc 1 256 0
	and	%d3, %d4, 239
	.loc 1 248 0
	jz.t	%d2, 4, .L22
	.loc 1 251 0
	or	%d3, %d4, 16
.L22:
	st.b	[%a15] 16, %d3
	.loc 1 260 0
	jz.t	%d2, 5, .L23
	.loc 1 265 0
	mov.a	%a3, %d8
	addsc.a	%a2, %a3, %d5, 0
	.loc 1 263 0
	or	%d3, %d3, 32
	.loc 1 265 0
	ld.bu	%d2, [%a2] 12
	.loc 1 263 0
	st.b	[%a15] 16, %d3
	.loc 1 265 0
	jeq	%d2, 3, .L68
	.loc 1 270 0
	mov.a	%a3, %d15
	addsc.a	%a2, %a3, %d6, 0
	.loc 1 269 0
	ld.h	%d2, [%a2] 4
	st.h	[%a15] 10, %d2
	j	.L68
.LVL19:
.L46:
	mov	%d15, 256
.LVL20:
.L30:
	.loc 1 447 0
	movh.a	%a2, hi:Fee_idxActQueue_u8
	ld.bu	%d2, [%a2] lo:Fee_idxActQueue_u8
	movh.a	%a2, hi:Fee_OrderFifo_st
	mov.d	%d5, %a2
	movh.a	%a12, hi:xBlkCrc_u32.1998
	addi	%d4, %d5, lo:Fee_OrderFifo_st
	madd	%d5, %d4, %d2, 16
	mov	%d6, 0
	mov	%d4, %d15
	mov.a	%a2, %d5
	ld.w	%d5, [%a12] lo:xBlkCrc_u32.1998
	ld.a	%a4, [%a2]0
	addsc.a	%a4, %a4, %d3, 0
	call	Crc_CalculateCRC32
.LVL21:
	st.w	[%a12] lo:xBlkCrc_u32.1998, %d2
	.loc 1 453 0
	ld.w	%d2, [%a15] lo:xNumCrcBytesConsid_u16.1997
	add	%d15, %d2
	st.w	[%a15] lo:xNumCrcBytesConsid_u16.1997, %d15
	j	.L10
.LVL22:
.L49:
	movh.a	%a15, hi:Fee_GlobInfoWrBlock_st
	.loc 1 532 0
	mov	%d2, 1
	lea	%a15, [%a15] lo:Fee_GlobInfoWrBlock_st
	j	.L2
.L73:
	.loc 1 389 0
	ld.h	%d15, [%a15] 10
	add	%d15, -4
	extr.u	%d15, %d15, 0, 16
	j	.L29
.L72:
	.loc 1 367 0
	or	%d2, %d2, 8
	st.b	[%a15] 16, %d2
	.loc 1 370 0
	st.h	[%a15] 10, %d3
	j	.L27
.LVL23:
.L39:
	.loc 1 587 0
	movh.a	%a15, hi:Fee_GlobInfoWrBlock_st
	lea	%a15, [%a15] lo:Fee_GlobInfoWrBlock_st
	ld.bu	%d15, [%a15] 7
	.loc 1 597 0
	mov	%d2, 3
.LVL24:
	.loc 1 587 0
	jz	%d15, .L2
	.loc 1 590 0
	add	%d15, -1
	st.b	[%a15] 7, %d15
	.loc 1 593 0
	mov	%d15, 0
	st.b	[%a12] 43, %d15
	j	.L10
.L74:
	.loc 1 154 0 discriminator 1
	ld.bu	%d3, [%a13] lo:Fee_idxActQueue_u8
	madd	%d4, %d8, %d3, 16
	mov.a	%a2, %d4
	.loc 1 153 0 discriminator 1
	ld.bu	%d3, [%a2] 12
	jeq	%d3, 3, .L16
	movh.a	%a2, hi:Fee_BlockProperties_st
	mov.d	%d5, %a2
	addi	%d15, %d5, lo:Fee_BlockProperties_st
	j	.L17
.LVL25:
.L71:
	.loc 1 470 0 discriminator 1
	mov.a	%a2, %d9
	ld.w	%d3, [%a2] lo:Fee_GlobInfoLastRdHeader_st
	.loc 1 476 0 discriminator 1
	eq	%d3, %d3, -1
	sel	%d15, %d3, %d15, 5
	j	.L34
.LVL26:
.L23:
	.loc 1 277 0
	andn	%d3, %d3, ~(-33)
	st.b	[%a15] 16, %d3
	j	.L68
.L19:
	.loc 1 245 0
	and	%d4, %d4, 254
	j	.L20
.LVL27:
.L32:
	.loc 1 465 0
	movh	%d9, hi:Fee_GlobInfoLastRdHeader_st
	mov.a	%a3, %d9
	.loc 1 463 0
	ld.a	%a4, [%a2]0
	.loc 1 465 0
	lea	%a15, [%a3] lo:Fee_GlobInfoLastRdHeader_st
	.loc 1 463 0
	ld.hu	%d5, [%a15] 8
	mov	%d4, 0
	not	%d5
	mov	%d6, 0
	call	Crc_CalculateCRC32
.LVL28:
	ld.bu	%d15, [%a13] lo:Fee_idxActQueue_u8
	movh.a	%a2, hi:xBlkCrc_u32.1998
	mov	%d4, %d2
	st.w	[%a2] lo:xBlkCrc_u32.1998, %d2
	sh	%d2, %d15, 4
	j	.L33
.LVL29:
.L16:
	movh.a	%a2, hi:Fee_BlockProperties_st
	mov.d	%d3, %a2
	.loc 1 195 0
	st.h	[%a15] 10, %d15
	.loc 1 192 0
	or	%d2, %d2, 8
	addi	%d15, %d3, lo:Fee_BlockProperties_st
	j	.L42
.LFE24:
	.size	Fee_HLWriteBlock, .-Fee_HLWriteBlock
.section .bss.a1.xSearchRetry_b.1999,"aw",@nobits
	.type	xSearchRetry_b.1999, @object
	.size	xSearchRetry_b.1999, 1
xSearchRetry_b.1999:
	.zero	1
.section .bss.a2.xBlkLength_u16.1996,"aw",@nobits
	.align 1
	.type	xBlkLength_u16.1996, @object
	.size	xBlkLength_u16.1996, 2
xBlkLength_u16.1996:
	.zero	2
.section .bss.a4.xNumCrcBytesConsid_u16.1997,"aw",@nobits
	.align 2
	.type	xNumCrcBytesConsid_u16.1997, @object
	.size	xNumCrcBytesConsid_u16.1997, 4
xNumCrcBytesConsid_u16.1997:
	.zero	4
.section .bss.a4.xBlkCrc_u32.1998,"aw",@nobits
	.align 2
	.type	xBlkCrc_u32.1998, @object
	.size	xBlkCrc_u32.1998, 4
xBlkCrc_u32.1998:
	.zero	4
.section .bss.a4.xAdrLastBlkHeader_u32.1995,"aw",@nobits
	.align 2
	.type	xAdrLastBlkHeader_u32.1995, @object
	.size	xAdrLastBlkHeader_u32.1995, 4
xAdrLastBlkHeader_u32.1995:
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
	.uaword	.LFB24
	.uaword	.LFE24-.LFB24
	.align 2
.LEFDE0:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\Fee\\api\\Fee_Rb_Types.h"
	.file 4 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_Prv.h"
	.file 5 ".\\output\\inc/..\\..\\bsw\\Crc\\Crc.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x213d
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_HlWriteBlock.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0
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
	.uaword	0x1d7
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
	.uaword	0x203
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
	.uaword	0x23f
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
	.uaword	0x1d7
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
	.byte	0x52
	.uaword	0x32b
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
	.byte	0x3
	.byte	0x59
	.uaword	0x2ac
	.uleb128 0x6
	.byte	0x4
	.uaword	0x1ca
	.uleb128 0x6
	.byte	0x4
	.uaword	0x34d
	.uleb128 0x7
	.uaword	0x1ca
	.uleb128 0x6
	.byte	0x4
	.uaword	0x358
	.uleb128 0x8
	.byte	0x1
	.uleb128 0x4
	.byte	0x1
	.byte	0x4
	.byte	0x9f
	.uaword	0x389
	.uleb128 0x5
	.string	"FEE_NORMAL_PRIO_E"
	.sleb128 0
	.uleb128 0x5
	.string	"FEE_HIGH_PRIO_E"
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.string	"Fee_HlPriority_ten"
	.byte	0x4
	.byte	0xa2
	.uaword	0x35a
	.uleb128 0x9
	.byte	0x10
	.byte	0x4
	.byte	0xb0
	.uaword	0x455
	.uleb128 0xa
	.string	"DataBufferPtr_pu8"
	.byte	0x4
	.byte	0xb2
	.uaword	0x341
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"FeeIdx_u16"
	.byte	0x4
	.byte	0xb3
	.uaword	0x1f5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.string	"BlockPropIdx_u16"
	.byte	0x4
	.byte	0xb4
	.uaword	0x1f5
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xa
	.string	"Offset_u16"
	.byte	0x4
	.byte	0xb5
	.uaword	0x1f5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0x4
	.byte	0xb6
	.uaword	0x1f5
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xa
	.string	"Mode_en"
	.byte	0x4
	.byte	0xb7
	.uaword	0x32b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.string	"Prio_en"
	.byte	0x4
	.byte	0xb8
	.uaword	0x389
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xa
	.string	"SecLevel_u8"
	.byte	0x4
	.byte	0xb9
	.uaword	0x1ca
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.byte	0
	.uleb128 0x3
	.string	"Fee_OrderFifo_tst"
	.byte	0x4
	.byte	0xba
	.uaword	0x3a3
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0xc
	.byte	0x1
	.byte	0x4
	.uahalf	0x116
	.uaword	0x551
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
	.uleb128 0xd
	.string	"Fee_stRetVal_ten"
	.byte	0x4
	.uahalf	0x121
	.uaword	0x47a
	.uleb128 0xe
	.byte	0x10
	.byte	0x4
	.uahalf	0x14c
	.uaword	0x5ff
	.uleb128 0xf
	.string	"BlockPersistentId_u16"
	.byte	0x4
	.uahalf	0x14e
	.uaword	0x1f5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"Flags_u16"
	.byte	0x4
	.uahalf	0x14f
	.uaword	0x1f5
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x10
	.uaword	.LASF0
	.byte	0x4
	.uahalf	0x150
	.uaword	0x1f5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.string	"JobEndNotification_pfn"
	.byte	0x4
	.uahalf	0x151
	.uaword	0x5ff
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.string	"JobErrorNotification_pfn"
	.byte	0x4
	.uahalf	0x152
	.uaword	0x5ff
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x7
	.uaword	0x352
	.uleb128 0xd
	.string	"Fee_BlockPropertiesType_tst"
	.byte	0x4
	.uahalf	0x153
	.uaword	0x56a
	.uleb128 0xc
	.byte	0x1
	.byte	0x4
	.uahalf	0x15f
	.uaword	0x759
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
	.uleb128 0xd
	.string	"Fee_LLWrMarkerType_ten"
	.byte	0x4
	.uahalf	0x16a
	.uaword	0x628
	.uleb128 0xc
	.byte	0x1
	.byte	0x4
	.uahalf	0x16e
	.uaword	0x85c
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
	.uleb128 0xd
	.string	"Fee_HLRdWrBlockType_ten"
	.byte	0x4
	.uahalf	0x17f
	.uaword	0x778
	.uleb128 0xc
	.byte	0x1
	.byte	0x4
	.uahalf	0x183
	.uaword	0xa77
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
	.uleb128 0xd
	.string	"Fee_LLWrBlockType_ten"
	.byte	0x4
	.uahalf	0x1ae
	.uaword	0x87c
	.uleb128 0xc
	.byte	0x1
	.byte	0x4
	.uahalf	0x1b2
	.uaword	0xb56
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
	.uleb128 0xd
	.string	"Fee_LLCmpBlkType_ten"
	.byte	0x4
	.uahalf	0x1ba
	.uaword	0xa95
	.uleb128 0xc
	.byte	0x1
	.byte	0x4
	.uahalf	0x1be
	.uaword	0xc26
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
	.uleb128 0xd
	.string	"Fee_LLCpyBlkType_ten"
	.byte	0x4
	.uahalf	0x1c5
	.uaword	0xb73
	.uleb128 0xc
	.byte	0x1
	.byte	0x4
	.uahalf	0x1c9
	.uaword	0xd43
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
	.uleb128 0xd
	.string	"Fee_LLCalcCrcBlkType_ten"
	.byte	0x4
	.uahalf	0x1d5
	.uaword	0xc43
	.uleb128 0xc
	.byte	0x1
	.byte	0x4
	.uahalf	0x1d9
	.uaword	0xeb5
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
	.uleb128 0xd
	.string	"Fee_LLRdStateType_ten"
	.byte	0x4
	.uahalf	0x1f3
	.uaword	0xd64
	.uleb128 0xc
	.byte	0x1
	.byte	0x4
	.uahalf	0x1f7
	.uaword	0xf79
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
	.uleb128 0xd
	.string	"Fee_LLBlankCheckType_ten"
	.byte	0x4
	.uahalf	0x1fd
	.uaword	0xed3
	.uleb128 0xc
	.byte	0x1
	.byte	0x4
	.uahalf	0x201
	.uaword	0xff3
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
	.uleb128 0xd
	.string	"Fee_LLFndEmptyPgeType_ten"
	.byte	0x4
	.uahalf	0x20d
	.uaword	0xf9a
	.uleb128 0xc
	.byte	0x1
	.byte	0x4
	.uahalf	0x211
	.uaword	0x1059
	.uleb128 0x5
	.string	"FEE_LL_SEARCHBLK_INIT_E"
	.sleb128 0
	.uleb128 0x5
	.string	"FEE_LL_SEARCHBLK_BLK_HEADER_E"
	.sleb128 1
	.byte	0
	.uleb128 0xd
	.string	"Fee_LLSearchBlkHdrType_ten"
	.byte	0x4
	.uahalf	0x214
	.uaword	0x1015
	.uleb128 0xc
	.byte	0x1
	.byte	0x4
	.uahalf	0x219
	.uaword	0x10c0
	.uleb128 0x5
	.string	"FEE_LL_BLD_UP_CACHE_INIT_E"
	.sleb128 0
	.uleb128 0x5
	.string	"FEE_LL_BLD_UP_CACHE_READ_E"
	.sleb128 1
	.byte	0
	.uleb128 0xd
	.string	"Fee_LLBuildUpCache_ten"
	.byte	0x4
	.uahalf	0x21c
	.uaword	0x107c
	.uleb128 0xc
	.byte	0x1
	.byte	0x4
	.uahalf	0x220
	.uaword	0x1133
	.uleb128 0x5
	.string	"FEE_LL_BLD_UP_CACHE_ALL_SECT_INIT_E"
	.sleb128 0
	.uleb128 0x5
	.string	"FEE_LL_BLD_UP_CACHE_ALL_SECT_DO_E"
	.sleb128 1
	.byte	0
	.uleb128 0xd
	.string	"Fee_LLBuildUpCacheAllSect_ten"
	.byte	0x4
	.uahalf	0x223
	.uaword	0x10df
	.uleb128 0xc
	.byte	0x1
	.byte	0x4
	.uahalf	0x23d
	.uaword	0x1230
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
	.uleb128 0xd
	.string	"Fee_LLSecReorgType_ten"
	.byte	0x4
	.uahalf	0x255
	.uaword	0x1159
	.uleb128 0xc
	.byte	0x1
	.byte	0x4
	.uahalf	0x259
	.uaword	0x1373
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
	.uleb128 0xd
	.string	"Fee_LLRedundantCpyChk_ten"
	.byte	0x4
	.uahalf	0x265
	.uaword	0x124f
	.uleb128 0xc
	.byte	0x1
	.byte	0x4
	.uahalf	0x269
	.uaword	0x178d
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
	.uleb128 0xd
	.string	"Fee_LLCpyBlkFls2Fls_ten"
	.byte	0x4
	.uahalf	0x2a3
	.uaword	0x1395
	.uleb128 0xe
	.byte	0x3c
	.byte	0x4
	.uahalf	0x2c1
	.uaword	0x1b28
	.uleb128 0xf
	.string	"xRdAddress"
	.byte	0x4
	.uahalf	0x2c3
	.uaword	0x231
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"xWrAddress"
	.byte	0x4
	.uahalf	0x2c4
	.uaword	0x231
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.string	"xCmpAddress"
	.byte	0x4
	.uahalf	0x2c5
	.uaword	0x231
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.string	"xCrcAddress"
	.byte	0x4
	.uahalf	0x2c6
	.uaword	0x231
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xf
	.string	"xCpyAddress"
	.byte	0x4
	.uahalf	0x2c7
	.uaword	0x231
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"AdrHdSearchStart_u32"
	.byte	0x4
	.uahalf	0x2c8
	.uaword	0x231
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xf
	.string	"xStartAddrNextSector_u32"
	.byte	0x4
	.uahalf	0x2c9
	.uaword	0x231
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xf
	.string	"xHdPg2Address"
	.byte	0x4
	.uahalf	0x2cd
	.uaword	0x231
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xf
	.string	"LastProgrammedAddress_u32"
	.byte	0x4
	.uahalf	0x2d1
	.uaword	0x231
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xf
	.string	"LastValidHdrAddress_u32"
	.byte	0x4
	.uahalf	0x2d2
	.uaword	0x231
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xf
	.string	"Fee_LLSecReorg_en"
	.byte	0x4
	.uahalf	0x2d5
	.uaword	0x1230
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xf
	.string	"Fee_LLRedundantCpyChk_en"
	.byte	0x4
	.uahalf	0x2d6
	.uaword	0x1373
	.byte	0x2
	.byte	0x23
	.uleb128 0x29
	.uleb128 0xf
	.string	"Fee_LLCpyBlkFls2Fls_en"
	.byte	0x4
	.uahalf	0x2d7
	.uaword	0x178d
	.byte	0x2
	.byte	0x23
	.uleb128 0x2a
	.uleb128 0xf
	.string	"Fee_HLWrBlock_en"
	.byte	0x4
	.uahalf	0x2dd
	.uaword	0x85c
	.byte	0x2
	.byte	0x23
	.uleb128 0x2b
	.uleb128 0xf
	.string	"Fee_HLMtBlock_en"
	.byte	0x4
	.uahalf	0x2e0
	.uaword	0x85c
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xf
	.string	"Fee_LLWrBlock_en"
	.byte	0x4
	.uahalf	0x2e3
	.uaword	0xa77
	.byte	0x2
	.byte	0x23
	.uleb128 0x2d
	.uleb128 0xf
	.string	"Fee_HLRdBlock"
	.byte	0x4
	.uahalf	0x2e4
	.uaword	0x85c
	.byte	0x2
	.byte	0x23
	.uleb128 0x2e
	.uleb128 0xf
	.string	"Fee_LLNextUsedWrBlock_en"
	.byte	0x4
	.uahalf	0x2e5
	.uaword	0xa77
	.byte	0x2
	.byte	0x23
	.uleb128 0x2f
	.uleb128 0xf
	.string	"Fee_LLNextEraseWrBlock_en"
	.byte	0x4
	.uahalf	0x2e6
	.uaword	0xa77
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xf
	.string	"Fee_LLCompBlk"
	.byte	0x4
	.uahalf	0x2e7
	.uaword	0xb56
	.byte	0x2
	.byte	0x23
	.uleb128 0x31
	.uleb128 0xf
	.string	"Fee_LLCopyBlk_en"
	.byte	0x4
	.uahalf	0x2e8
	.uaword	0xc26
	.byte	0x2
	.byte	0x23
	.uleb128 0x32
	.uleb128 0xf
	.string	"Fee_LLCalcCrcBlk_en"
	.byte	0x4
	.uahalf	0x2e9
	.uaword	0xd43
	.byte	0x2
	.byte	0x23
	.uleb128 0x33
	.uleb128 0xf
	.string	"Fee_LLWrMarker_en"
	.byte	0x4
	.uahalf	0x2ea
	.uaword	0x759
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xf
	.string	"Fee_LLRdState_en"
	.byte	0x4
	.uahalf	0x2eb
	.uaword	0xeb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x35
	.uleb128 0xf
	.string	"Fee_LLBlankCheckState_en"
	.byte	0x4
	.uahalf	0x2ec
	.uaword	0xf79
	.byte	0x2
	.byte	0x23
	.uleb128 0x36
	.uleb128 0xf
	.string	"Fee_LLFindEmptyPageState_en"
	.byte	0x4
	.uahalf	0x2ed
	.uaword	0xff3
	.byte	0x2
	.byte	0x23
	.uleb128 0x37
	.uleb128 0xf
	.string	"Fee_LLSearchBlkHdr_en"
	.byte	0x4
	.uahalf	0x2ee
	.uaword	0x1059
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xf
	.string	"Fee_LLBuildUpCache_en"
	.byte	0x4
	.uahalf	0x2fb
	.uaword	0x10c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x39
	.uleb128 0xf
	.string	"Fee_LLBuildUpCacheAllSect_en"
	.byte	0x4
	.uahalf	0x2fc
	.uaword	0x1133
	.byte	0x2
	.byte	0x23
	.uleb128 0x3a
	.byte	0
	.uleb128 0xd
	.string	"Fee_RdWrOrder_tst"
	.byte	0x4
	.uahalf	0x2fe
	.uaword	0x17ad
	.uleb128 0xe
	.byte	0x14
	.byte	0x4
	.uahalf	0x301
	.uaword	0x1bfa
	.uleb128 0xf
	.string	"AdrBlkHeader_u32"
	.byte	0x4
	.uahalf	0x303
	.uaword	0x231
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"BlkCrc32_u32"
	.byte	0x4
	.uahalf	0x304
	.uaword	0x231
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.string	"HdrCrc16_u16"
	.byte	0x4
	.uahalf	0x305
	.uaword	0x1f5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.string	"BlkLength_u16"
	.byte	0x4
	.uahalf	0x306
	.uaword	0x1f5
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xf
	.string	"FeeIndex_u16"
	.byte	0x4
	.uahalf	0x307
	.uaword	0x1f5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xf
	.string	"DataBytes_au8"
	.byte	0x4
	.uahalf	0x308
	.uaword	0x1bfa
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xf
	.string	"BlkStatus_u8"
	.byte	0x4
	.uahalf	0x309
	.uaword	0x1ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x11
	.uaword	0x1ca
	.uaword	0x1c0a
	.uleb128 0x12
	.uaword	0x46e
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.string	"Fee_GlobInfoLastRdHeader_tst"
	.byte	0x4
	.uahalf	0x30a
	.uaword	0x1b42
	.uleb128 0xe
	.byte	0xa
	.byte	0x4
	.uahalf	0x30d
	.uaword	0x1ce5
	.uleb128 0xf
	.string	"BytesAlrdyConsid_u16"
	.byte	0x4
	.uahalf	0x30f
	.uaword	0x1f5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"BytesAlrdyCompared_u16"
	.byte	0x4
	.uahalf	0x310
	.uaword	0x1f5
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xf
	.string	"Bytes2Read_u16"
	.byte	0x4
	.uahalf	0x311
	.uaword	0x1f5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.string	"CompareResult_u8"
	.byte	0x4
	.uahalf	0x312
	.uaword	0x1ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xf
	.string	"cntWriteRetry_u8"
	.byte	0x4
	.uahalf	0x313
	.uaword	0x1ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xf
	.string	"cntCopies_u8"
	.byte	0x4
	.uahalf	0x314
	.uaword	0x1ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0xd
	.string	"Fee_GlobInfoWrBlock_tst"
	.byte	0x4
	.uahalf	0x315
	.uaword	0x1c2f
	.uleb128 0x13
	.byte	0x1
	.string	"Fee_HLWriteBlock"
	.byte	0x1
	.byte	0x3b
	.byte	0x1
	.uaword	0x551
	.uaword	.LFB24
	.uaword	.LFE24
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1ec8
	.uleb128 0x14
	.string	"xRetVal_en"
	.byte	0x1
	.byte	0x3d
	.uaword	0x551
	.uaword	.LLST0
	.uleb128 0x14
	.string	"xtmpRetVal_en"
	.byte	0x1
	.byte	0x3e
	.uaword	0x551
	.uaword	.LLST1
	.uleb128 0x14
	.string	"xNumBytes_u16"
	.byte	0x1
	.byte	0x3f
	.uaword	0x1f5
	.uaword	.LLST2
	.uleb128 0x15
	.string	"xAdrLastBlkHeader_u32"
	.byte	0x1
	.byte	0x40
	.uaword	0x231
	.byte	0x5
	.byte	0x3
	.uaword	xAdrLastBlkHeader_u32.1995
	.uleb128 0x15
	.string	"xBlkLength_u16"
	.byte	0x1
	.byte	0x41
	.uaword	0x1f5
	.byte	0x5
	.byte	0x3
	.uaword	xBlkLength_u16.1996
	.uleb128 0x15
	.string	"xNumCrcBytesConsid_u16"
	.byte	0x1
	.byte	0x42
	.uaword	0x231
	.byte	0x5
	.byte	0x3
	.uaword	xNumCrcBytesConsid_u16.1997
	.uleb128 0x15
	.string	"xBlkCrc_u32"
	.byte	0x1
	.byte	0x43
	.uaword	0x231
	.byte	0x5
	.byte	0x3
	.uaword	xBlkCrc_u32.1998
	.uleb128 0x15
	.string	"xSearchRetry_b"
	.byte	0x1
	.byte	0x44
	.uaword	0x27c
	.byte	0x5
	.byte	0x3
	.uaword	xSearchRetry_b.1999
	.uleb128 0x16
	.uaword	.LVL3
	.uaword	0x1fc2
	.uaword	0x1e2c
	.uleb128 0x17
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x17
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	xAdrLastBlkHeader_u32.1995
	.byte	0
	.uleb128 0x16
	.uaword	.LVL8
	.uaword	0x2011
	.uaword	0x1e40
	.uleb128 0x17
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.uaword	.LVL10
	.uaword	0x204c
	.uleb128 0x18
	.uaword	.LVL12
	.uaword	0x2086
	.uleb128 0x16
	.uaword	.LVL14
	.uaword	0x20b1
	.uaword	0x1e6c
	.uleb128 0x17
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xa
	.uahalf	0x400
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x16
	.uaword	.LVL15
	.uaword	0x20db
	.uaword	0x1e80
	.uleb128 0x17
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.uaword	.LVL18
	.uaword	0x20b1
	.uaword	0x1e9a
	.uleb128 0x17
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xa
	.uahalf	0x400
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x16
	.uaword	.LVL21
	.uaword	0x210e
	.uaword	0x1eb3
	.uleb128 0x17
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x30
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.uaword	.LVL28
	.uaword	0x210e
	.uleb128 0x17
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x30
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1a
	.string	"Fee_PageBytePtr_cpu8"
	.byte	0x4
	.uahalf	0x404
	.uaword	0x341
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.string	"Fee_RdWrOrder_st"
	.byte	0x4
	.uahalf	0x405
	.uaword	0x1b28
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.uaword	0x455
	.uaword	0x1f12
	.uleb128 0x12
	.uaword	0x46e
	.byte	0x2
	.byte	0
	.uleb128 0x1a
	.string	"Fee_OrderFifo_st"
	.byte	0x4
	.uahalf	0x409
	.uaword	0x1f02
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.string	"Fee_GlobInfoLastRdHeader_st"
	.byte	0x4
	.uahalf	0x40a
	.uaword	0x1c0a
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.string	"Fee_GlobInfoWrBlock_st"
	.byte	0x4
	.uahalf	0x40b
	.uaword	0x1ce5
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.string	"Fee_idxActQueue_u8"
	.byte	0x4
	.uahalf	0x438
	.uaword	0x1ca
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.uaword	0x604
	.uaword	0x1fa1
	.uleb128 0x12
	.uaword	0x46e
	.byte	0x39
	.byte	0
	.uleb128 0x1a
	.string	"Fee_BlockProperties_st"
	.byte	0x4
	.uahalf	0x464
	.uaword	0x1f91
	.byte	0x1
	.byte	0x1
	.uleb128 0x1b
	.byte	0x1
	.string	"Fee_LLSearchSpecifiedBlkHeader"
	.byte	0x4
	.uahalf	0x4c9
	.byte	0x1
	.uaword	0x551
	.byte	0x1
	.uaword	0x2005
	.uleb128 0x1c
	.uaword	0x1f5
	.uleb128 0x1c
	.uaword	0x2005
	.uleb128 0x1c
	.uaword	0x200b
	.uleb128 0x1c
	.uaword	0x27c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x231
	.uleb128 0x6
	.byte	0x4
	.uaword	0x1c0a
	.uleb128 0x1d
	.byte	0x1
	.string	"Fee_LLPrepPageBufWithHdrDataEnd"
	.byte	0x4
	.uahalf	0x4e8
	.byte	0x1
	.byte	0x1
	.uaword	0x204c
	.uleb128 0x1c
	.uaword	0x200b
	.uleb128 0x1c
	.uaword	0x347
	.uleb128 0x1c
	.uaword	0x231
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.string	"Fee_LLCompBlkInFlash"
	.byte	0x4
	.uahalf	0x4df
	.byte	0x1
	.uaword	0x551
	.byte	0x1
	.uaword	0x207b
	.uleb128 0x1c
	.uaword	0x207b
	.uleb128 0x1c
	.uaword	0x347
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x2081
	.uleb128 0x7
	.uaword	0x1c0a
	.uleb128 0x1b
	.byte	0x1
	.string	"Fee_LLWriteBlock"
	.byte	0x4
	.uahalf	0x50d
	.byte	0x1
	.uaword	0x551
	.byte	0x1
	.uaword	0x20b1
	.uleb128 0x1c
	.uaword	0x200b
	.uleb128 0x1c
	.uaword	0x347
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.string	"Fee_SrvMemSet8"
	.byte	0x4
	.uahalf	0x537
	.byte	0x1
	.byte	0x1
	.uaword	0x20db
	.uleb128 0x1c
	.uaword	0x341
	.uleb128 0x1c
	.uaword	0x231
	.uleb128 0x1c
	.uaword	0x231
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.string	"Fee_LLPrepPageBufWithHdrDataStart"
	.byte	0x4
	.uahalf	0x4e7
	.byte	0x1
	.byte	0x1
	.uaword	0x210e
	.uleb128 0x1c
	.uaword	0x200b
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.string	"Crc_CalculateCRC32"
	.byte	0x5
	.byte	0x41
	.byte	0x1
	.uaword	0x231
	.byte	0x1
	.uleb128 0x1c
	.uaword	0x347
	.uleb128 0x1c
	.uaword	0x231
	.uleb128 0x1c
	.uaword	0x231
	.uleb128 0x1c
	.uaword	0x27c
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uaword	.LVL1
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL2
	.uaword	.LFE24
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL0
	.uaword	.LVL5
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0xf
	.byte	0x3
	.uaword	xBlkLength_u16.1996
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LVL19
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL22
	.uaword	.LVL25
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL26
	.uaword	.LVL27
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL27
	.uaword	.LVL28-1
	.uahalf	0xf
	.byte	0x3
	.uaword	xBlkLength_u16.1996
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL29
	.uaword	.LFE24
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
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
	.uaword	.LFB24
	.uaword	.LFE24-.LFB24
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB24
	.uaword	.LFE24
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"Length_u16"
	.extern	Crc_CalculateCRC32,STT_FUNC,0
	.extern	Fee_LLPrepPageBufWithHdrDataStart,STT_FUNC,0
	.extern	Fee_SrvMemSet8,STT_FUNC,0
	.extern	Fee_PageBytePtr_cpu8,STT_OBJECT,4
	.extern	Fee_LLWriteBlock,STT_FUNC,0
	.extern	Fee_LLCompBlkInFlash,STT_FUNC,0
	.extern	Fee_LLPrepPageBufWithHdrDataEnd,STT_FUNC,0
	.extern	Fee_LLSearchSpecifiedBlkHeader,STT_FUNC,0
	.extern	Fee_BlockProperties_st,STT_OBJECT,928
	.extern	Fee_GlobInfoLastRdHeader_st,STT_OBJECT,20
	.extern	Fee_OrderFifo_st,STT_OBJECT,48
	.extern	Fee_idxActQueue_u8,STT_OBJECT,1
	.extern	Fee_GlobInfoWrBlock_st,STT_OBJECT,10
	.extern	Fee_RdWrOrder_st,STT_OBJECT,60
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
