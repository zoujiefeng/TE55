	.file	"rba_FeeFs1_HlMaintainBlock.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Fee_HLMaintainBlock,"ax",@progbits
	.align 1
	.global	Fee_HLMaintainBlock
	.type	Fee_HLMaintainBlock, @function
Fee_HLMaintainBlock:
.LFB24:
	.file 1 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_HlMaintainBlock.c"
	.loc 1 73 0
.LVL0:
	.loc 1 456 0
	movh.a	%a12, hi:Fee_GlobInfoLastRdHeader_st
	.loc 1 253 0
	movh.a	%a14, hi:xAdrLastBlkHeader_u32.1997
	.loc 1 456 0
	lea	%a12, [%a12] lo:Fee_GlobInfoLastRdHeader_st
	.loc 1 253 0
	lea	%a14, [%a14] lo:xAdrLastBlkHeader_u32.1997
	movh.a	%a13, hi:Fee_RdWrOrder_st
	movh	%d8, hi:.L4
	.loc 1 225 0
	mov.d	%d9, %a12
	.loc 1 287 0
	mov.d	%d10, %a14
	.loc 1 73 0
	sub.a	%SP, 24
.LCFI0:
	lea	%a13, [%a13] lo:Fee_RdWrOrder_st
	addi	%d8, %d8, lo:.L4
.LVL1:
.L27:
	.loc 1 95 0
	ld.bu	%d15, [%a13] 44
	jlt.u	%d15, 9, .L58
.L51:
	.loc 1 401 0
	mov	%d2, 6
	movh.a	%a15, hi:xAdrLastBlkHeader_u32.1997
.LVL2:
.L29:
	.loc 1 564 0
	mov	%d15, 0
	st.b	[%a13] 44, %d15
	.loc 1 567 0
	mov	%d15, -1
	st.w	[%a15] lo:xAdrLastBlkHeader_u32.1997, %d15
	ret
.LVL3:
.L58:
	.loc 1 95 0
	mov.a	%a2, %d8
	addsc.a	%a15, %a2, %d15, 2
	ji	%a15
	.align 2
	.align 2
.L4:
	.code32
	j	.L3
	.code32
	j	.L5
	.code32
	j	.L6
	.code32
	j	.L7
	.code32
	j	.L51
	.code32
	j	.L8
	.code32
	j	.L51
	.code32
	j	.L51
	.code32
	j	.L9
.L9:
	.loc 1 496 0
	movh.a	%a4, hi:Fee_GlobInfoLastRdHeaderMt_st
	lea	%a4, [%a4] lo:Fee_GlobInfoLastRdHeaderMt_st
	mov	%d4, 1
	call	Fee_LLCpyBlkFromFls2Fls
.LVL4:
	.loc 1 499 0
	jeq	%d2, 1, .L37
	jz	%d2, .L56
	.loc 1 529 0
	mov	%d15, 3
	eq	%d2, %d2, 3
.LVL5:
	sel	%d2, %d2, %d15, 6
	.loc 1 564 0
	mov	%d15, 0
	.loc 1 529 0
	movh.a	%a15, hi:xAdrLastBlkHeader_u32.1997
	.loc 1 564 0
	st.b	[%a13] 44, %d15
	.loc 1 567 0
	mov	%d15, -1
	st.w	[%a15] lo:xAdrLastBlkHeader_u32.1997, %d15
	ret
.L8:
	.loc 1 225 0
	mov.a	%a4, %d9
	call	Fee_LLCalcBlkCrcInFlash
.LVL6:
	.loc 1 228 0
	jeq	%d2, 1, .L16
	jz	%d2, .L56
	jne	%d2, 3, .L51
	.loc 1 373 0
	movh.a	%a15, hi:Fee_Rb_GlobSecurityLevelInfo_b
	ld.bu	%d15, [%a15] lo:Fee_Rb_GlobSecurityLevelInfo_b
	jnz	%d15, .L22
	.loc 1 376 0
	mov	%d15, 1
	movh.a	%a15, hi:xSearchRetry_b.1998
	.loc 1 378 0
	mov.a	%a2, %d9
	.loc 1 376 0
	st.b	[%a15] lo:xSearchRetry_b.1998, %d15
	movh.a	%a15, hi:Fee_stMain
	.loc 1 378 0
	ld.w	%d2, [%a2]0
.LVL7:
	lea	%a15, [%a15] lo:Fee_stMain
	.loc 1 381 0
	st.b	[%a13] 44, %d15
	.loc 1 558 0
	ld.bu	%d15, [%a15]0
	.loc 1 378 0
	st.w	[%a14]0, %d2
	.loc 1 558 0
	jz	%d15, .L27
	mov	%d2, 0
	ret
.L7:
	.loc 1 432 0
	movh.a	%a15, hi:Fee_PageBytePtr_cpu8
	ld.a	%a5, [%a15] lo:Fee_PageBytePtr_cpu8
	ld.bu	%d15, [%a5] 2
	ne	%d15, %d15, 150
	jz	%d15, .L59
.L22:
	.loc 1 291 0
	mov	%d15, 8
	movh.a	%a15, hi:Fee_stMain
	st.b	[%a13] 44, %d15
	lea	%a15, [%a15] lo:Fee_stMain
.L12:
	.loc 1 558 0
	ld.bu	%d15, [%a15]0
	jz	%d15, .L27
	mov	%d2, 0
	ret
.L6:
	.loc 1 416 0
	movh.a	%a2, hi:Fee_stMain
	ld.bu	%d15, [%a2] lo:Fee_stMain
	lea	%a15, [%a2] lo:Fee_stMain
	jz	%d15, .L60
	.loc 1 424 0
	call	Fee_CheckFlsJobResult
.LVL8:
	.loc 1 427 0
	j	.L12
.L5:
	movh.a	%a2, hi:xSearchRetry_b.1998
	movh.a	%a15, hi:Fee_idxActQueue_u8
	mov.d	%d2, %a2
	ld.bu	%d5, [%a2] lo:xSearchRetry_b.1998
	movh.a	%a2, hi:Fee_OrderFifo_st
	ld.bu	%d15, [%a15] lo:Fee_idxActQueue_u8
	mov.d	%d3, %a2
	addi	%d11, %d2, lo:xSearchRetry_b.1998
	addi	%d6, %d3, lo:Fee_OrderFifo_st
	movh.a	%a15, hi:xAdrLastBlkHeader_u32.1997
	sh	%d3, %d15, 4
	mov.aa	%a4, %a14
	mov.aa	%a5, %a12
.L10:
	.loc 1 150 0
	mov.a	%a3, %d6
	addsc.a	%a2, %a3, %d3, 0
	ld.hu	%d4, [%a2] 4
	call	Fee_LLSearchSpecifiedBlkHeader
.LVL9:
	.loc 1 156 0
	jlt.u	%d2, 7, .L61
.LVL10:
.L36:
	.loc 1 312 0
	mov	%d2, 6
	j	.L29
.LVL11:
.L61:
	.loc 1 156 0
	movh.a	%a2, hi:.L13
	lea	%a2, [%a2] lo:.L13
	addsc.a	%a2, %a2, %d2, 2
	ji	%a2
	.align 2
	.align 2
.L13:
	.code32
	j	.L56
	.code32
	j	.L55
	.code32
	j	.L36
	.code32
	j	.L34
	.code32
	j	.L36
	.code32
	j	.L36
	.code32
	j	.L15
.LVL12:
.L3:
	.loc 1 101 0
	movh.a	%a2, hi:Fee_OrderFifo_st
	mov.d	%d4, %a2
	movh.a	%a15, hi:Fee_idxActQueue_u8
	ld.bu	%d15, [%a15] lo:Fee_idxActQueue_u8
	addi	%d6, %d4, lo:Fee_OrderFifo_st
	sh	%d3, %d15, 4
	mov.a	%a2, %d6
	addsc.a	%a15, %a2, %d3, 0
	movh.a	%a2, hi:Fee_BlockProperties_st
	mov.d	%d4, %a2
	ld.hu	%d2, [%a15] 6
	addi	%d15, %d4, lo:Fee_BlockProperties_st
	madd	%d4, %d15, %d2, 16
	mov.a	%a2, %d4
	ld.hu	%d2, [%a2] 2
	jz.t	%d2, 0, .L37
	.loc 1 112 0
	ld.h	%d15, [%a2]0
	.loc 1 117 0
	st.b	[%a12] 16, %d2
	.loc 1 112 0
	st.h	[%a12] 12, %d15
	.loc 1 119 0
	mov	%d2, 0
	.loc 1 114 0
	ld.h	%d15, [%a2] 4
	.loc 1 126 0
	movh.a	%a2, hi:xSearchRetry_b.1998
	.loc 1 119 0
	st.w	[%a12]0, %d2
	.loc 1 120 0
	st.w	[%a12] 4, %d2
	.loc 1 121 0
	st.h	[%a12] 8, %d2
	.loc 1 126 0
	mov.d	%d2, %a2
	.loc 1 114 0
	st.h	[%a12] 10, %d15
	.loc 1 121 0
	mov	%d15, 0
	.loc 1 109 0
	mov	%d4, -1
	.loc 1 126 0
	addi	%d11, %d2, lo:xSearchRetry_b.1998
	st.b	[%a2] lo:xSearchRetry_b.1998, %d15
	.loc 1 140 0
	mov	%d2, 1
	.loc 1 129 0
	movh.a	%a2, hi:Fee_Rb_GlobSecurityLevelInfo_b
	.loc 1 109 0
	movh.a	%a15, hi:xAdrLastBlkHeader_u32.1997
	mov.aa	%a4, %a14
	st.w	[%a14]0, %d4
	.loc 1 112 0
	mov.aa	%a5, %a12
	.loc 1 122 0
	st.b	[%a12] 14, %d15
	.loc 1 123 0
	st.b	[%a12] 15, %d15
	.loc 1 129 0
	st.b	[%a2] lo:Fee_Rb_GlobSecurityLevelInfo_b, %d15
	.loc 1 140 0
	st.b	[%a13] 44, %d2
	mov	%d5, 0
	j	.L10
.L56:
	movh.a	%a15, hi:Fee_stMain
	lea	%a15, [%a15] lo:Fee_stMain
	j	.L12
.LVL13:
.L34:
	.loc 1 188 0
	mov	%d2, 3
.LVL14:
	j	.L29
.LVL15:
.L15:
	.loc 1 201 0
	mov.a	%a4, %d11
	mov	%d15, 1
	movh.a	%a15, hi:Fee_stMain
	st.b	[%a4]0, %d15
	lea	%a15, [%a15] lo:Fee_stMain
	.loc 1 203 0
	j	.L12
.LVL16:
.L59:
	.loc 1 432 0 discriminator 1
	ld.bu	%d15, [%a5] 1
	ne	%d15, %d15, 60
	jnz	%d15, .L22
	.loc 1 433 0
	ld.bu	%d15, [%a5]0
	ne	%d15, %d15, 165
	jnz	%d15, .L22
	.loc 1 437 0
	lea	%a4, [%SP] 4
	call	Fee_LLCopyPageBuff2HeaderMid
.LVL17:
	.loc 1 440 0
	ld.a	%a4, [%a15] lo:Fee_PageBytePtr_cpu8
	mov	%d4, 8
	mov.u	%d5, 51966
	mov	%d6, 0
	call	Crc_CalculateCRC16
.LVL18:
	.loc 1 446 0
	ld.hu	%d15, [%SP] 12
	jne	%d15, %d2, .L22
	.loc 1 447 0 discriminator 1
	movh.a	%a2, hi:Fee_OrderFifo_st
	mov.d	%d2, %a2
.LVL19:
	movh.a	%a2, hi:Fee_idxActQueue_u8
	ld.bu	%d15, [%a2] lo:Fee_idxActQueue_u8
	addi	%d6, %d2, lo:Fee_OrderFifo_st
	madd	%d3, %d6, %d15, 16
	movh	%d2, hi:Fee_BlockProperties_st
	addi	%d2, %d2, lo:Fee_BlockProperties_st
	mov.a	%a2, %d3
	ld.hu	%d15, [%a2] 6
	madd	%d4, %d2, %d15, 16
	.loc 1 446 0 discriminator 1
	ld.hu	%d2, [%SP] 8
	.loc 1 447 0 discriminator 1
	mov.a	%a2, %d4
	.loc 1 446 0 discriminator 1
	ld.hu	%d15, [%a2]0
	jne	%d2, %d15, .L22
	.loc 1 453 0
	ld.a	%a5, [%a15] lo:Fee_PageBytePtr_cpu8
	lea	%a4, [%SP] 4
	.loc 1 465 0
	movh.a	%a15, hi:Fee_GlobInfoLastRdHeaderMt_st
	.loc 1 453 0
	call	Fee_LLCopyPageBuff2HeaderEnd
.LVL20:
	.loc 1 457 0
	ld.h	%d15, [%SP] 10
	.loc 1 456 0
	ld.w	%d2, [%SP] 16
	.loc 1 457 0
	st.h	[%a12] 10, %d15
	.loc 1 458 0
	ld.bu	%d15, [%SP] 7
	.loc 1 465 0
	lea	%a15, [%a15] lo:Fee_GlobInfoLastRdHeaderMt_st
	.loc 1 458 0
	st.b	[%a12] 16, %d15
	.loc 1 459 0
	ld.h	%d15, [%SP] 8
	.loc 1 456 0
	st.w	[%a12] 4, %d2
	.loc 1 459 0
	st.h	[%a12] 12, %d15
	.loc 1 460 0
	ld.h	%d15, [%SP] 12
	st.h	[%a12] 8, %d15
	.loc 1 461 0
	ld.bu	%d15, [%SP] 20
	st.b	[%a12] 14, %d15
	.loc 1 462 0
	ld.bu	%d15, [%SP] 21
	st.b	[%a12] 15, %d15
	.loc 1 465 0
	ld.w	%d15, [%a15] 4
	jne	%d2, %d15, .L22
.L55:
	.loc 1 468 0
	mov	%d15, 5
	movh.a	%a15, hi:Fee_stMain
	st.b	[%a13] 44, %d15
	lea	%a15, [%a15] lo:Fee_stMain
	j	.L12
.L60:
	.loc 1 419 0
	call	Fls_17_Dmu_MainFunction
.LVL21:
	.loc 1 424 0
	call	Fee_CheckFlsJobResult
.LVL22:
	j	.L12
.L37:
	.loc 1 512 0
	mov	%d2, 1
.LVL23:
	movh.a	%a15, hi:xAdrLastBlkHeader_u32.1997
	j	.L29
.LVL24:
.L16:
	.loc 1 240 0
	movh.a	%a15, hi:Fee_Rb_GlobSecurityLevelInfo_b
	ld.bu	%d15, [%a15] lo:Fee_Rb_GlobSecurityLevelInfo_b
	jnz	%d15, .L18
	.loc 1 243 0
	movh.a	%a3, hi:Fee_GlobInfoLastRdHeaderMt_st
	lea	%a2, [%a3] lo:Fee_GlobInfoLastRdHeaderMt_st
	mov.a	%a6, %d9
	mov.aa	%a5, %a2
		# #chunks=2, chunksize=8, remains=4
	ld.d	%e4, [%a6+]8
	st.d	[%a5+]8, %e4
	ld.d	%e4, [%a6+]8
	st.d	[%a5+]8, %e4
	ld.w	%d4, [%a6+]4
	st.w	[%a5+]4, %d4
	.loc 1 246 0
	mov.a	%a4, %d9
	.loc 1 268 0
	ld.hu	%d5, [%a2] 10
	.loc 1 246 0
	mov	%d3, %d15
	st.w	[%a4] 4, %d15
	.loc 1 268 0
	addi	%d15, %d5, 14
	.loc 1 253 0
	ld.w	%d4, [%a3] lo:Fee_GlobInfoLastRdHeaderMt_st
	.loc 1 268 0
	extr.u	%d15, %d15, 0, 16
	.loc 1 249 0
	st.b	[%a15] lo:Fee_Rb_GlobSecurityLevelInfo_b, %d2
	.loc 1 253 0
	st.w	[%a14]0, %d4
.LVL25:
	.loc 1 271 0
	and	%d2, %d15, 7
.LVL26:
	.loc 1 253 0
	movh.a	%a15, hi:xAdrLastBlkHeader_u32.1997
	.loc 1 271 0
	jz	%d2, .L19
	addi	%d5, %d5, 15
.LVL27:
.L20:
	add	%d15, %d5, %d3
	extr.u	%d15, %d15, 0, 16
.LVL28:
	add	%d3, 1
	and	%d2, %d15, 7
	jnz	%d2, .L20
.LVL29:
.L19:
	.loc 1 277 0
	call	Fee_GetPhysSectorByAddress
.LVL30:
	mov	%d4, %d2
	call	Fee_LLGetSecStartAddress
.LVL31:
	.loc 1 287 0
	mov.a	%a5, %d10
	ld.w	%d4, [%a5]0
	jge.u	%d15, %d4, .L22
	.loc 1 287 0 is_stmt 0 discriminator 1
	sub	%d4, %d15
	jlt.u	%d4, %d2, .L22
	.loc 1 300 0 is_stmt 1
	movh.a	%a2, hi:Fee_PageBytePtr_cpu8
	ld.a	%a4, [%a2] lo:Fee_PageBytePtr_cpu8
	mov	%d5, 14
	.loc 1 297 0
	st.w	[%a5]0, %d4
	.loc 1 300 0
	call	Fls_17_Dmu_Read
.LVL32:
	jeq	%d2, 1, .L36
	.loc 1 306 0
	mov.a	%a2, %d10
	.loc 1 303 0
	mov	%d15, 2
	.loc 1 306 0
	ld.w	%d2, [%a2]0
	movh.a	%a15, hi:Fee_stMain
	.loc 1 303 0
	st.b	[%a13] 44, %d15
	.loc 1 306 0
	st.w	[%a12]0, %d2
	lea	%a15, [%a15] lo:Fee_stMain
	j	.L12
.LVL33:
.L18:
	.loc 1 355 0
	movh.a	%a15, hi:Fee_GlobInfoLastRdHeaderMt_st
	lea	%a2, [%a15] lo:Fee_GlobInfoLastRdHeaderMt_st
	ld.w	%d5, [%a15] lo:Fee_GlobInfoLastRdHeaderMt_st
	ld.hu	%d4, [%a2] 12
	call	Fee_LLUpdateAddressInCache
.LVL34:
	movh.a	%a15, hi:xAdrLastBlkHeader_u32.1997
	.loc 1 360 0
	mov	%d2, 1
	j	.L29
.LFE24:
	.size	Fee_HLMaintainBlock, .-Fee_HLMaintainBlock
.section .bss.a1.xSearchRetry_b.1998,"aw",@nobits
	.type	xSearchRetry_b.1998, @object
	.size	xSearchRetry_b.1998, 1
xSearchRetry_b.1998:
	.zero	1
.section .data.a4.xAdrLastBlkHeader_u32.1997,"aw",@progbits
	.align 2
	.type	xAdrLastBlkHeader_u32.1997, @object
	.size	xAdrLastBlkHeader_u32.1997, 4
xAdrLastBlkHeader_u32.1997:
	.word	-1
.section .bss.a1.Fee_Rb_GlobSecurityLevelInfo_b,"aw",@nobits
	.type	Fee_Rb_GlobSecurityLevelInfo_b, @object
	.size	Fee_Rb_GlobSecurityLevelInfo_b, 1
Fee_Rb_GlobSecurityLevelInfo_b:
	.zero	1
.section .bss.a4.Fee_GlobInfoLastRdHeaderMt_st,"aw",@nobits
	.align 2
	.type	Fee_GlobInfoLastRdHeaderMt_st, @object
	.size	Fee_GlobInfoLastRdHeaderMt_st, 20
Fee_GlobInfoLastRdHeaderMt_st:
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
	.byte	0x4
	.uaword	.LCFI0-.LFB24
	.byte	0xe
	.uleb128 0x18
	.align 2
.LEFDE0:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 4 ".\\output\\inc/..\\..\\bsw\\Fee\\api\\Fee_Rb_Types.h"
	.file 5 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\inc\\Fls_17_Dmu.h"
	.file 6 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_Prv.h"
	.file 7 ".\\output\\inc/..\\..\\bsw\\Crc\\Crc.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x2454
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_HlMaintainBlock.c"
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
	.uaword	0x1da
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
	.uaword	0x206
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
	.uaword	0x242
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
	.uaword	0x1da
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
	.uaword	0x1cd
	.uleb128 0x4
	.byte	0x1
	.byte	0x4
	.byte	0x52
	.uaword	0x344
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
	.uaword	0x2c5
	.uleb128 0x6
	.string	"Fls_17_Dmu_AddressType"
	.byte	0x5
	.uahalf	0xa21
	.uaword	0x234
	.uleb128 0x6
	.string	"Fls_17_Dmu_LengthType"
	.byte	0x5
	.uahalf	0xa25
	.uaword	0x234
	.uleb128 0x7
	.byte	0x4
	.uaword	0x1cd
	.uleb128 0x7
	.byte	0x4
	.uaword	0x3a3
	.uleb128 0x8
	.uaword	0x1cd
	.uleb128 0x7
	.byte	0x4
	.uaword	0x3ae
	.uleb128 0x9
	.byte	0x1
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.byte	0x9f
	.uaword	0x3df
	.uleb128 0x5
	.string	"FEE_NORMAL_PRIO_E"
	.sleb128 0
	.uleb128 0x5
	.string	"FEE_HIGH_PRIO_E"
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.string	"Fee_HlPriority_ten"
	.byte	0x6
	.byte	0xa2
	.uaword	0x3b0
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.byte	0xa9
	.uaword	0x446
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
	.uleb128 0xa
	.byte	0x10
	.byte	0x6
	.byte	0xb0
	.uaword	0x4f8
	.uleb128 0xb
	.string	"DataBufferPtr_pu8"
	.byte	0x6
	.byte	0xb2
	.uaword	0x397
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"FeeIdx_u16"
	.byte	0x6
	.byte	0xb3
	.uaword	0x1f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"BlockPropIdx_u16"
	.byte	0x6
	.byte	0xb4
	.uaword	0x1f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xb
	.string	"Offset_u16"
	.byte	0x6
	.byte	0xb5
	.uaword	0x1f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x6
	.byte	0xb6
	.uaword	0x1f8
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xb
	.string	"Mode_en"
	.byte	0x6
	.byte	0xb7
	.uaword	0x344
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.string	"Prio_en"
	.byte	0x6
	.byte	0xb8
	.uaword	0x3df
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xb
	.string	"SecLevel_u8"
	.byte	0x6
	.byte	0xb9
	.uaword	0x1cd
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.byte	0
	.uleb128 0x3
	.string	"Fee_OrderFifo_tst"
	.byte	0x6
	.byte	0xba
	.uaword	0x446
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.byte	0xdb
	.uaword	0x66b
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
	.uleb128 0xd
	.uaword	0x1cd
	.uaword	0x67b
	.uleb128 0xe
	.uaword	0x67b
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0xf
	.byte	0x1
	.byte	0x6
	.uahalf	0x116
	.uaword	0x75e
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
	.uleb128 0x6
	.string	"Fee_stRetVal_ten"
	.byte	0x6
	.uahalf	0x121
	.uaword	0x687
	.uleb128 0x10
	.byte	0x10
	.byte	0x6
	.uahalf	0x14c
	.uaword	0x80c
	.uleb128 0x11
	.string	"BlockPersistentId_u16"
	.byte	0x6
	.uahalf	0x14e
	.uaword	0x1f8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"Flags_u16"
	.byte	0x6
	.uahalf	0x14f
	.uaword	0x1f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x12
	.uaword	.LASF0
	.byte	0x6
	.uahalf	0x150
	.uaword	0x1f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.string	"JobEndNotification_pfn"
	.byte	0x6
	.uahalf	0x151
	.uaword	0x80c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.string	"JobErrorNotification_pfn"
	.byte	0x6
	.uahalf	0x152
	.uaword	0x80c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x8
	.uaword	0x3a8
	.uleb128 0x6
	.string	"Fee_BlockPropertiesType_tst"
	.byte	0x6
	.uahalf	0x153
	.uaword	0x777
	.uleb128 0xf
	.byte	0x1
	.byte	0x6
	.uahalf	0x15f
	.uaword	0x966
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
	.uleb128 0x6
	.string	"Fee_LLWrMarkerType_ten"
	.byte	0x6
	.uahalf	0x16a
	.uaword	0x835
	.uleb128 0xf
	.byte	0x1
	.byte	0x6
	.uahalf	0x16e
	.uaword	0xa69
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
	.uleb128 0x6
	.string	"Fee_HLRdWrBlockType_ten"
	.byte	0x6
	.uahalf	0x17f
	.uaword	0x985
	.uleb128 0xf
	.byte	0x1
	.byte	0x6
	.uahalf	0x183
	.uaword	0xc84
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
	.uleb128 0x6
	.string	"Fee_LLWrBlockType_ten"
	.byte	0x6
	.uahalf	0x1ae
	.uaword	0xa89
	.uleb128 0xf
	.byte	0x1
	.byte	0x6
	.uahalf	0x1b2
	.uaword	0xd63
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
	.uleb128 0x6
	.string	"Fee_LLCmpBlkType_ten"
	.byte	0x6
	.uahalf	0x1ba
	.uaword	0xca2
	.uleb128 0xf
	.byte	0x1
	.byte	0x6
	.uahalf	0x1be
	.uaword	0xe33
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
	.uleb128 0x6
	.string	"Fee_LLCpyBlkType_ten"
	.byte	0x6
	.uahalf	0x1c5
	.uaword	0xd80
	.uleb128 0xf
	.byte	0x1
	.byte	0x6
	.uahalf	0x1c9
	.uaword	0xf50
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
	.uleb128 0x6
	.string	"Fee_LLCalcCrcBlkType_ten"
	.byte	0x6
	.uahalf	0x1d5
	.uaword	0xe50
	.uleb128 0xf
	.byte	0x1
	.byte	0x6
	.uahalf	0x1d9
	.uaword	0x10c2
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
	.uleb128 0x6
	.string	"Fee_LLRdStateType_ten"
	.byte	0x6
	.uahalf	0x1f3
	.uaword	0xf71
	.uleb128 0xf
	.byte	0x1
	.byte	0x6
	.uahalf	0x1f7
	.uaword	0x1186
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
	.uleb128 0x6
	.string	"Fee_LLBlankCheckType_ten"
	.byte	0x6
	.uahalf	0x1fd
	.uaword	0x10e0
	.uleb128 0xf
	.byte	0x1
	.byte	0x6
	.uahalf	0x201
	.uaword	0x1200
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
	.uleb128 0x6
	.string	"Fee_LLFndEmptyPgeType_ten"
	.byte	0x6
	.uahalf	0x20d
	.uaword	0x11a7
	.uleb128 0xf
	.byte	0x1
	.byte	0x6
	.uahalf	0x211
	.uaword	0x1266
	.uleb128 0x5
	.string	"FEE_LL_SEARCHBLK_INIT_E"
	.sleb128 0
	.uleb128 0x5
	.string	"FEE_LL_SEARCHBLK_BLK_HEADER_E"
	.sleb128 1
	.byte	0
	.uleb128 0x6
	.string	"Fee_LLSearchBlkHdrType_ten"
	.byte	0x6
	.uahalf	0x214
	.uaword	0x1222
	.uleb128 0xf
	.byte	0x1
	.byte	0x6
	.uahalf	0x219
	.uaword	0x12cd
	.uleb128 0x5
	.string	"FEE_LL_BLD_UP_CACHE_INIT_E"
	.sleb128 0
	.uleb128 0x5
	.string	"FEE_LL_BLD_UP_CACHE_READ_E"
	.sleb128 1
	.byte	0
	.uleb128 0x6
	.string	"Fee_LLBuildUpCache_ten"
	.byte	0x6
	.uahalf	0x21c
	.uaword	0x1289
	.uleb128 0xf
	.byte	0x1
	.byte	0x6
	.uahalf	0x220
	.uaword	0x1340
	.uleb128 0x5
	.string	"FEE_LL_BLD_UP_CACHE_ALL_SECT_INIT_E"
	.sleb128 0
	.uleb128 0x5
	.string	"FEE_LL_BLD_UP_CACHE_ALL_SECT_DO_E"
	.sleb128 1
	.byte	0
	.uleb128 0x6
	.string	"Fee_LLBuildUpCacheAllSect_ten"
	.byte	0x6
	.uahalf	0x223
	.uaword	0x12ec
	.uleb128 0xf
	.byte	0x1
	.byte	0x6
	.uahalf	0x23d
	.uaword	0x143d
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
	.uleb128 0x6
	.string	"Fee_LLSecReorgType_ten"
	.byte	0x6
	.uahalf	0x255
	.uaword	0x1366
	.uleb128 0xf
	.byte	0x1
	.byte	0x6
	.uahalf	0x259
	.uaword	0x1580
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
	.uleb128 0x6
	.string	"Fee_LLRedundantCpyChk_ten"
	.byte	0x6
	.uahalf	0x265
	.uaword	0x145c
	.uleb128 0xf
	.byte	0x1
	.byte	0x6
	.uahalf	0x269
	.uaword	0x199a
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
	.uleb128 0x6
	.string	"Fee_LLCpyBlkFls2Fls_ten"
	.byte	0x6
	.uahalf	0x2a3
	.uaword	0x15a2
	.uleb128 0x10
	.byte	0x3c
	.byte	0x6
	.uahalf	0x2c1
	.uaword	0x1d35
	.uleb128 0x11
	.string	"xRdAddress"
	.byte	0x6
	.uahalf	0x2c3
	.uaword	0x234
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"xWrAddress"
	.byte	0x6
	.uahalf	0x2c4
	.uaword	0x234
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.string	"xCmpAddress"
	.byte	0x6
	.uahalf	0x2c5
	.uaword	0x234
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.string	"xCrcAddress"
	.byte	0x6
	.uahalf	0x2c6
	.uaword	0x234
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x11
	.string	"xCpyAddress"
	.byte	0x6
	.uahalf	0x2c7
	.uaword	0x234
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x11
	.string	"AdrHdSearchStart_u32"
	.byte	0x6
	.uahalf	0x2c8
	.uaword	0x234
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x11
	.string	"xStartAddrNextSector_u32"
	.byte	0x6
	.uahalf	0x2c9
	.uaword	0x234
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x11
	.string	"xHdPg2Address"
	.byte	0x6
	.uahalf	0x2cd
	.uaword	0x234
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x11
	.string	"LastProgrammedAddress_u32"
	.byte	0x6
	.uahalf	0x2d1
	.uaword	0x234
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x11
	.string	"LastValidHdrAddress_u32"
	.byte	0x6
	.uahalf	0x2d2
	.uaword	0x234
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x11
	.string	"Fee_LLSecReorg_en"
	.byte	0x6
	.uahalf	0x2d5
	.uaword	0x143d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x11
	.string	"Fee_LLRedundantCpyChk_en"
	.byte	0x6
	.uahalf	0x2d6
	.uaword	0x1580
	.byte	0x2
	.byte	0x23
	.uleb128 0x29
	.uleb128 0x11
	.string	"Fee_LLCpyBlkFls2Fls_en"
	.byte	0x6
	.uahalf	0x2d7
	.uaword	0x199a
	.byte	0x2
	.byte	0x23
	.uleb128 0x2a
	.uleb128 0x11
	.string	"Fee_HLWrBlock_en"
	.byte	0x6
	.uahalf	0x2dd
	.uaword	0xa69
	.byte	0x2
	.byte	0x23
	.uleb128 0x2b
	.uleb128 0x11
	.string	"Fee_HLMtBlock_en"
	.byte	0x6
	.uahalf	0x2e0
	.uaword	0xa69
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x11
	.string	"Fee_LLWrBlock_en"
	.byte	0x6
	.uahalf	0x2e3
	.uaword	0xc84
	.byte	0x2
	.byte	0x23
	.uleb128 0x2d
	.uleb128 0x11
	.string	"Fee_HLRdBlock"
	.byte	0x6
	.uahalf	0x2e4
	.uaword	0xa69
	.byte	0x2
	.byte	0x23
	.uleb128 0x2e
	.uleb128 0x11
	.string	"Fee_LLNextUsedWrBlock_en"
	.byte	0x6
	.uahalf	0x2e5
	.uaword	0xc84
	.byte	0x2
	.byte	0x23
	.uleb128 0x2f
	.uleb128 0x11
	.string	"Fee_LLNextEraseWrBlock_en"
	.byte	0x6
	.uahalf	0x2e6
	.uaword	0xc84
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x11
	.string	"Fee_LLCompBlk"
	.byte	0x6
	.uahalf	0x2e7
	.uaword	0xd63
	.byte	0x2
	.byte	0x23
	.uleb128 0x31
	.uleb128 0x11
	.string	"Fee_LLCopyBlk_en"
	.byte	0x6
	.uahalf	0x2e8
	.uaword	0xe33
	.byte	0x2
	.byte	0x23
	.uleb128 0x32
	.uleb128 0x11
	.string	"Fee_LLCalcCrcBlk_en"
	.byte	0x6
	.uahalf	0x2e9
	.uaword	0xf50
	.byte	0x2
	.byte	0x23
	.uleb128 0x33
	.uleb128 0x11
	.string	"Fee_LLWrMarker_en"
	.byte	0x6
	.uahalf	0x2ea
	.uaword	0x966
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x11
	.string	"Fee_LLRdState_en"
	.byte	0x6
	.uahalf	0x2eb
	.uaword	0x10c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x35
	.uleb128 0x11
	.string	"Fee_LLBlankCheckState_en"
	.byte	0x6
	.uahalf	0x2ec
	.uaword	0x1186
	.byte	0x2
	.byte	0x23
	.uleb128 0x36
	.uleb128 0x11
	.string	"Fee_LLFindEmptyPageState_en"
	.byte	0x6
	.uahalf	0x2ed
	.uaword	0x1200
	.byte	0x2
	.byte	0x23
	.uleb128 0x37
	.uleb128 0x11
	.string	"Fee_LLSearchBlkHdr_en"
	.byte	0x6
	.uahalf	0x2ee
	.uaword	0x1266
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x11
	.string	"Fee_LLBuildUpCache_en"
	.byte	0x6
	.uahalf	0x2fb
	.uaword	0x12cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x39
	.uleb128 0x11
	.string	"Fee_LLBuildUpCacheAllSect_en"
	.byte	0x6
	.uahalf	0x2fc
	.uaword	0x1340
	.byte	0x2
	.byte	0x23
	.uleb128 0x3a
	.byte	0
	.uleb128 0x6
	.string	"Fee_RdWrOrder_tst"
	.byte	0x6
	.uahalf	0x2fe
	.uaword	0x19ba
	.uleb128 0x10
	.byte	0x14
	.byte	0x6
	.uahalf	0x301
	.uaword	0x1dcf
	.uleb128 0x11
	.string	"AdrBlkHeader_u32"
	.byte	0x6
	.uahalf	0x303
	.uaword	0x234
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF1
	.byte	0x6
	.uahalf	0x304
	.uaword	0x234
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.uaword	.LASF2
	.byte	0x6
	.uahalf	0x305
	.uaword	0x1f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.uaword	.LASF3
	.byte	0x6
	.uahalf	0x306
	.uaword	0x1f8
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x12
	.uaword	.LASF4
	.byte	0x6
	.uahalf	0x307
	.uaword	0x1f8
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x12
	.uaword	.LASF5
	.byte	0x6
	.uahalf	0x308
	.uaword	0x1dcf
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x12
	.uaword	.LASF6
	.byte	0x6
	.uahalf	0x309
	.uaword	0x1cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0xd
	.uaword	0x1cd
	.uaword	0x1ddf
	.uleb128 0xe
	.uaword	0x67b
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.string	"Fee_GlobInfoLastRdHeader_tst"
	.byte	0x6
	.uahalf	0x30a
	.uaword	0x1d4f
	.uleb128 0x10
	.byte	0x14
	.byte	0x6
	.uahalf	0x34b
	.uaword	0x1e80
	.uleb128 0x11
	.string	"Preamble_au8"
	.byte	0x6
	.uahalf	0x34d
	.uaword	0x66b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF6
	.byte	0x6
	.uahalf	0x34e
	.uaword	0x1cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x12
	.uaword	.LASF4
	.byte	0x6
	.uahalf	0x34f
	.uaword	0x1f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.uaword	.LASF3
	.byte	0x6
	.uahalf	0x350
	.uaword	0x1f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x12
	.uaword	.LASF2
	.byte	0x6
	.uahalf	0x351
	.uaword	0x1f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.uaword	.LASF1
	.byte	0x6
	.uahalf	0x352
	.uaword	0x234
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x12
	.uaword	.LASF5
	.byte	0x6
	.uahalf	0x353
	.uaword	0x1dcf
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x6
	.string	"Fee_BlkHeader_tst"
	.byte	0x6
	.uahalf	0x354
	.uaword	0x1e04
	.uleb128 0xf
	.byte	0x1
	.byte	0x6
	.uahalf	0x3b8
	.uaword	0x1ecd
	.uleb128 0x5
	.string	"FEE_POLLING_MODE_E"
	.sleb128 0
	.uleb128 0x5
	.string	"FEE_NORMAL_MODE_E"
	.sleb128 1
	.byte	0
	.uleb128 0x6
	.string	"Fee_stMainType"
	.byte	0x6
	.uahalf	0x3bb
	.uaword	0x1e9a
	.uleb128 0x13
	.byte	0x1
	.string	"Fee_HLMaintainBlock"
	.byte	0x1
	.byte	0x48
	.byte	0x1
	.uaword	0x75e
	.uaword	.LFB24
	.uaword	.LFE24
	.uaword	.LLST0
	.byte	0x1
	.uaword	0x20b2
	.uleb128 0x14
	.string	"xRetVal_en"
	.byte	0x1
	.byte	0x4a
	.uaword	0x75e
	.uaword	.LLST1
	.uleb128 0x14
	.string	"xTmpRetVal_en"
	.byte	0x1
	.byte	0x4b
	.uaword	0x75e
	.uaword	.LLST2
	.uleb128 0x15
	.string	"xTmpBlkHdr_st"
	.byte	0x1
	.byte	0x4c
	.uaword	0x1e80
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.string	"xAdrLastBlkHeader_u32"
	.byte	0x1
	.byte	0x4d
	.uaword	0x234
	.byte	0x5
	.byte	0x3
	.uaword	xAdrLastBlkHeader_u32.1997
	.uleb128 0x15
	.string	"xSearchRetry_b"
	.byte	0x1
	.byte	0x4e
	.uaword	0x27f
	.byte	0x5
	.byte	0x3
	.uaword	xSearchRetry_b.1998
	.uleb128 0x14
	.string	"xBlockLength_u16"
	.byte	0x1
	.byte	0x4f
	.uaword	0x1f8
	.uaword	.LLST3
	.uleb128 0x14
	.string	"xCalcCrc_u16"
	.byte	0x1
	.byte	0x50
	.uaword	0x1f8
	.uaword	.LLST4
	.uleb128 0x14
	.string	"secStartAddr_u32"
	.byte	0x1
	.byte	0x52
	.uaword	0x234
	.uaword	.LLST5
	.uleb128 0x16
	.uaword	.LVL4
	.uaword	0x21f7
	.uaword	0x2004
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.uleb128 0x17
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	Fee_GlobInfoLastRdHeaderMt_st
	.byte	0
	.uleb128 0x16
	.uaword	.LVL6
	.uaword	0x2234
	.uaword	0x2018
	.uleb128 0x17
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.uaword	.LVL8
	.uaword	0x2261
	.uleb128 0x18
	.uaword	.LVL9
	.uaword	0x227e
	.uleb128 0x16
	.uaword	.LVL17
	.uaword	0x22cd
	.uaword	0x203e
	.uleb128 0x17
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x16
	.uaword	.LVL18
	.uaword	0x2306
	.uaword	0x205d
	.uleb128 0x17
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x30
	.uleb128 0x17
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xb
	.uahalf	0xcafe
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x38
	.byte	0
	.uleb128 0x16
	.uaword	.LVL20
	.uaword	0x233c
	.uaword	0x2071
	.uleb128 0x17
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x18
	.uaword	.LVL21
	.uaword	0x236f
	.uleb128 0x18
	.uaword	.LVL22
	.uaword	0x2261
	.uleb128 0x18
	.uaword	.LVL30
	.uaword	0x238e
	.uleb128 0x18
	.uaword	.LVL31
	.uaword	0x23be
	.uleb128 0x16
	.uaword	.LVL32
	.uaword	0x23ec
	.uaword	0x20a8
	.uleb128 0x17
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x3e
	.byte	0
	.uleb128 0x18
	.uaword	.LVL34
	.uaword	0x242a
	.byte	0
	.uleb128 0x15
	.string	"Fee_GlobInfoLastRdHeaderMt_st"
	.byte	0x1
	.byte	0x22
	.uaword	0x1ddf
	.byte	0x5
	.byte	0x3
	.uaword	Fee_GlobInfoLastRdHeaderMt_st
	.uleb128 0x15
	.string	"Fee_Rb_GlobSecurityLevelInfo_b"
	.byte	0x1
	.byte	0x29
	.uaword	0x27f
	.byte	0x5
	.byte	0x3
	.uaword	Fee_Rb_GlobSecurityLevelInfo_b
	.uleb128 0x19
	.string	"Fee_PageBytePtr_cpu8"
	.byte	0x6
	.uahalf	0x404
	.uaword	0x397
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.string	"Fee_RdWrOrder_st"
	.byte	0x6
	.uahalf	0x405
	.uaword	0x1d35
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.uaword	0x4f8
	.uaword	0x2153
	.uleb128 0xe
	.uaword	0x67b
	.byte	0x2
	.byte	0
	.uleb128 0x19
	.string	"Fee_OrderFifo_st"
	.byte	0x6
	.uahalf	0x409
	.uaword	0x2143
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.string	"Fee_GlobInfoLastRdHeader_st"
	.byte	0x6
	.uahalf	0x40a
	.uaword	0x1ddf
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.string	"Fee_stMain"
	.byte	0x6
	.uahalf	0x431
	.uaword	0x1ecd
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.string	"Fee_idxActQueue_u8"
	.byte	0x6
	.uahalf	0x438
	.uaword	0x1cd
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.uaword	0x811
	.uaword	0x21d6
	.uleb128 0xe
	.uaword	0x67b
	.byte	0x39
	.byte	0
	.uleb128 0x19
	.string	"Fee_BlockProperties_st"
	.byte	0x6
	.uahalf	0x464
	.uaword	0x21c6
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.byte	0x1
	.string	"Fee_LLCpyBlkFromFls2Fls"
	.byte	0x6
	.uahalf	0x4e1
	.byte	0x1
	.uaword	0x75e
	.byte	0x1
	.uaword	0x2229
	.uleb128 0x1b
	.uaword	0x2229
	.uleb128 0x1b
	.uaword	0x27f
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.uaword	0x222f
	.uleb128 0x8
	.uaword	0x1ddf
	.uleb128 0x1a
	.byte	0x1
	.string	"Fee_LLCalcBlkCrcInFlash"
	.byte	0x6
	.uahalf	0x4e0
	.byte	0x1
	.uaword	0x75e
	.byte	0x1
	.uaword	0x2261
	.uleb128 0x1b
	.uaword	0x2229
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.string	"Fee_CheckFlsJobResult"
	.byte	0x6
	.uahalf	0x547
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.byte	0x1
	.string	"Fee_LLSearchSpecifiedBlkHeader"
	.byte	0x6
	.uahalf	0x4c9
	.byte	0x1
	.uaword	0x75e
	.byte	0x1
	.uaword	0x22c1
	.uleb128 0x1b
	.uaword	0x1f8
	.uleb128 0x1b
	.uaword	0x22c1
	.uleb128 0x1b
	.uaword	0x22c7
	.uleb128 0x1b
	.uaword	0x27f
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.uaword	0x234
	.uleb128 0x7
	.byte	0x4
	.uaword	0x1ddf
	.uleb128 0x1d
	.byte	0x1
	.string	"Fee_LLCopyPageBuff2HeaderMid"
	.byte	0x6
	.uahalf	0x4ff
	.byte	0x1
	.byte	0x1
	.uaword	0x2300
	.uleb128 0x1b
	.uaword	0x2300
	.uleb128 0x1b
	.uaword	0x39d
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.uaword	0x1e80
	.uleb128 0x1e
	.byte	0x1
	.string	"Crc_CalculateCRC16"
	.byte	0x7
	.byte	0x40
	.byte	0x1
	.uaword	0x1f8
	.byte	0x1
	.uaword	0x233c
	.uleb128 0x1b
	.uaword	0x39d
	.uleb128 0x1b
	.uaword	0x234
	.uleb128 0x1b
	.uaword	0x1f8
	.uleb128 0x1b
	.uaword	0x27f
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.string	"Fee_LLCopyPageBuff2HeaderEnd"
	.byte	0x6
	.uahalf	0x500
	.byte	0x1
	.byte	0x1
	.uaword	0x236f
	.uleb128 0x1b
	.uaword	0x2300
	.uleb128 0x1b
	.uaword	0x39d
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.string	"Fls_17_Dmu_MainFunction"
	.byte	0x5
	.uahalf	0xc2d
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.byte	0x1
	.string	"Fee_GetPhysSectorByAddress"
	.byte	0x6
	.uahalf	0x4b7
	.byte	0x1
	.uaword	0x1cd
	.byte	0x1
	.uaword	0x23be
	.uleb128 0x1b
	.uaword	0x234
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.string	"Fee_LLGetSecStartAddress"
	.byte	0x6
	.uahalf	0x4db
	.byte	0x1
	.uaword	0x234
	.byte	0x1
	.uaword	0x23ec
	.uleb128 0x1b
	.uaword	0x1cd
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.string	"Fls_17_Dmu_Read"
	.byte	0x5
	.uahalf	0xc68
	.byte	0x1
	.uaword	0x2af
	.byte	0x1
	.uaword	0x241b
	.uleb128 0x1b
	.uaword	0x241b
	.uleb128 0x1b
	.uaword	0x2420
	.uleb128 0x1b
	.uaword	0x2425
	.byte	0
	.uleb128 0x8
	.uaword	0x35a
	.uleb128 0x8
	.uaword	0x397
	.uleb128 0x8
	.uaword	0x379
	.uleb128 0x1f
	.byte	0x1
	.string	"Fee_LLUpdateAddressInCache"
	.byte	0x6
	.uahalf	0x51e
	.byte	0x1
	.byte	0x1
	.uleb128 0x1b
	.uaword	0x1f8
	.uleb128 0x1b
	.uaword	0x234
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
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x12
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
	.uleb128 0x6
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
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LFB24
	.uaword	.LCFI0
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0
	.uaword	.LFE24
	.uahalf	0x2
	.byte	0x8a
	.sleb128 24
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL2
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LVL23
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LVL34
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL34
	.uaword	.LFE24
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL24
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL33
	.uaword	.LVL34-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL25
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL27
	.uaword	.LVL28
	.uahalf	0x8
	.byte	0x75
	.sleb128 -15
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0xe
	.byte	0x9f
	.uaword	.LVL28
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL31
	.uaword	.LVL32-1
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
.LASF1:
	.string	"BlkCrc32_u32"
.LASF5:
	.string	"DataBytes_au8"
.LASF6:
	.string	"BlkStatus_u8"
.LASF3:
	.string	"BlkLength_u16"
.LASF0:
	.string	"Length_u16"
.LASF2:
	.string	"HdrCrc16_u16"
.LASF4:
	.string	"FeeIndex_u16"
	.extern	Fee_LLUpdateAddressInCache,STT_FUNC,0
	.extern	Fls_17_Dmu_Read,STT_FUNC,0
	.extern	Fee_LLGetSecStartAddress,STT_FUNC,0
	.extern	Fee_GetPhysSectorByAddress,STT_FUNC,0
	.extern	Fls_17_Dmu_MainFunction,STT_FUNC,0
	.extern	Fee_LLCopyPageBuff2HeaderEnd,STT_FUNC,0
	.extern	Crc_CalculateCRC16,STT_FUNC,0
	.extern	Fee_LLCopyPageBuff2HeaderMid,STT_FUNC,0
	.extern	Fee_BlockProperties_st,STT_OBJECT,928
	.extern	Fee_LLSearchSpecifiedBlkHeader,STT_FUNC,0
	.extern	Fee_OrderFifo_st,STT_OBJECT,48
	.extern	Fee_idxActQueue_u8,STT_OBJECT,1
	.extern	Fee_CheckFlsJobResult,STT_FUNC,0
	.extern	Fee_PageBytePtr_cpu8,STT_OBJECT,4
	.extern	Fee_stMain,STT_OBJECT,1
	.extern	Fee_LLCalcBlkCrcInFlash,STT_FUNC,0
	.extern	Fee_LLCpyBlkFromFls2Fls,STT_FUNC,0
	.extern	Fee_RdWrOrder_st,STT_OBJECT,60
	.extern	Fee_GlobInfoLastRdHeader_st,STT_OBJECT,20
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
