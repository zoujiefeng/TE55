	.file	"rba_FeeFs1_HlReadBlock.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Fee_HLReadBlock,"ax",@progbits
	.align 1
	.global	Fee_HLReadBlock
	.type	Fee_HLReadBlock, @function
Fee_HLReadBlock:
.LFB24:
	.file 1 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_HlReadBlock.c"
	.loc 1 49 0
.LVL0:
	.loc 1 61 0
	movh.a	%a15, hi:Fee_RdWrOrder_st
	lea	%a15, [%a15] lo:Fee_RdWrOrder_st
	ld.bu	%d15, [%a15] 46
	jlt.u	%d15, 7, .L35
.L33:
	.loc 1 237 0
	mov	%d2, 6
	movh.a	%a13, hi:xAdrLastBlkHeader_u32.1958
	movh.a	%a12, hi:xSearchRetry_b.1959
.LVL1:
.L18:
	.loc 1 294 0
	mov	%d15, 0
	.loc 1 297 0
	mov	%d3, -1
	.loc 1 294 0
	st.b	[%a15] 46, %d15
	.loc 1 297 0
	st.w	[%a13] lo:xAdrLastBlkHeader_u32.1958, %d3
	.loc 1 300 0
	st.b	[%a12] lo:xSearchRetry_b.1959, %d15
	ret
.LVL2:
.L35:
	.loc 1 61 0
	movh.a	%a2, hi:.L4
	lea	%a2, [%a2] lo:.L4
	addsc.a	%a2, %a2, %d15, 2
	ji	%a2
	.align 2
	.align 2
.L4:
	.code32
	j	.L3
	.code32
	j	.L5
	.code32
	j	.L33
	.code32
	j	.L33
	.code32
	j	.L33
	.code32
	j	.L6
	.code32
	j	.L7
.L7:
	.loc 1 267 0
	movh.a	%a2, hi:Fee_idxActQueue_u8
	ld.bu	%d15, [%a2] lo:Fee_idxActQueue_u8
.LVL3:
	movh.a	%a2, hi:Fee_OrderFifo_st
	mov.d	%d3, %a2
	.loc 1 275 0
	movh.a	%a4, hi:Fee_GlobInfoLastRdHeader_st
	.loc 1 267 0
	addi	%d2, %d3, lo:Fee_OrderFifo_st
	madd	%d4, %d2, %d15, 16
	.loc 1 275 0
	lea	%a4, [%a4] lo:Fee_GlobInfoLastRdHeader_st
	.loc 1 267 0
	mov.a	%a2, %d4
	.loc 1 275 0
	ld.a	%a5, [%a2]0
	ld.hu	%d4, [%a2] 8
	ld.hu	%d5, [%a2] 10
	call	Fee_LLCopyData2Buffer
.LVL4:
	.loc 1 291 0
	jz	%d2, .L26
	movh.a	%a13, hi:xAdrLastBlkHeader_u32.1958
	movh.a	%a12, hi:xSearchRetry_b.1959
	j	.L18
.LVL5:
.L6:
	.loc 1 158 0
	movh.a	%a12, hi:Fee_GlobInfoLastRdHeader_st
	lea	%a12, [%a12] lo:Fee_GlobInfoLastRdHeader_st
	mov.aa	%a4, %a12
	call	Fee_LLCalcBlkCrcInFlash
.LVL6:
	.loc 1 161 0
	jeq	%d2, 1, .L14
	jz	%d2, .L10
	jne	%d2, 3, .L33
	.loc 1 195 0
	movh.a	%a2, hi:Fee_idxActQueue_u8
	ld.bu	%d15, [%a2] lo:Fee_idxActQueue_u8
	movh.a	%a2, hi:Fee_OrderFifo_st
	mov.d	%d3, %a2
	addi	%d2, %d3, lo:Fee_OrderFifo_st
.LVL7:
	madd	%d4, %d2, %d15, 16
	mov.a	%a2, %d4
	ld.bu	%d15, [%a2] 12
	jeq	%d15, 5, .L16
	.loc 1 203 0
	mov	%d15, 1
	st.b	[%a15] 46, %d15
	.loc 1 222 0
	movh.a	%a15, hi:xSearchRetry_b.1959
	st.b	[%a15] lo:xSearchRetry_b.1959, %d15
.L10:
	.loc 1 49 0
	mov	%d2, 0
.LVL8:
.L26:
	.loc 1 304 0
	ret
.LVL9:
.L5:
	movh.a	%a2, hi:Fee_idxActQueue_u8
	ld.bu	%d15, [%a2] lo:Fee_idxActQueue_u8
	movh.a	%a14, hi:Fee_GlobInfoLastRdHeader_st
	movh.a	%a2, hi:Fee_OrderFifo_st
	lea	%a3, [%a2] lo:Fee_OrderFifo_st
	sh	%d2, %d15, 4
	lea	%a5, [%a14] lo:Fee_GlobInfoLastRdHeader_st
.L8:
	.loc 1 90 0
	addsc.a	%a2, %a3, %d2, 0
	movh.a	%a13, hi:xAdrLastBlkHeader_u32.1958
	movh.a	%a12, hi:xSearchRetry_b.1959
	ld.hu	%d4, [%a2] 4
	lea	%a4, [%a13] lo:xAdrLastBlkHeader_u32.1958
	ld.bu	%d5, [%a12] lo:xSearchRetry_b.1959
	call	Fee_LLSearchSpecifiedBlkHeader
.LVL10:
	.loc 1 96 0
	jlt.u	%d2, 7, .L36
.L9:
	.loc 1 147 0
	mov	%d2, 6
.LVL11:
	j	.L18
.LVL12:
.L36:
	.loc 1 96 0
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
	j	.L9
	.code32
	j	.L20
	.code32
	j	.L9
	.code32
	j	.L9
	.code32
	j	.L13
.LVL13:
.L3:
	.loc 1 67 0
	movh.a	%a2, hi:Fee_idxActQueue_u8
	ld.bu	%d15, [%a2] lo:Fee_idxActQueue_u8
	movh.a	%a2, hi:Fee_OrderFifo_st
	sh	%d2, %d15, 4
	lea	%a3, [%a2] lo:Fee_OrderFifo_st
	addsc.a	%a2, %a3, %d2, 0
	.loc 1 66 0
	movh.a	%a14, hi:Fee_GlobInfoLastRdHeader_st
	.loc 1 67 0
	ld.hu	%d15, [%a2] 6
	movh.a	%a2, hi:Fee_BlockProperties_st
	mov.d	%d4, %a2
	.loc 1 66 0
	lea	%a5, [%a14] lo:Fee_GlobInfoLastRdHeader_st
	.loc 1 67 0
	addi	%d3, %d4, lo:Fee_BlockProperties_st
	madd	%d4, %d3, %d15, 16
	.loc 1 76 0
	mov	%d3, 0
	.loc 1 77 0
	st.b	[%a5] 14, %d3
	.loc 1 67 0
	mov.a	%a2, %d4
	.loc 1 78 0
	st.b	[%a5] 15, %d3
	.loc 1 66 0
	ld.h	%d15, [%a2]0
	st.h	[%a5] 12, %d15
	.loc 1 69 0
	ld.h	%d15, [%a2] 4
	st.h	[%a5] 10, %d15
	.loc 1 72 0
	ld.h	%d15, [%a2] 2
	st.b	[%a5] 16, %d15
	.loc 1 74 0
	mov	%d15, 0
	st.w	[%a14] lo:Fee_GlobInfoLastRdHeader_st, %d15
	.loc 1 75 0
	st.w	[%a5] 4, %d15
	.loc 1 76 0
	st.h	[%a5] 8, %d15
	.loc 1 81 0
	mov	%d15, 1
	st.b	[%a15] 46, %d15
	j	.L8
.LVL14:
.L14:
	.loc 1 177 0
	ld.bu	%d15, [%a12] 16
	.loc 1 180 0
	mov	%d2, 2
.LVL15:
	movh.a	%a13, hi:xAdrLastBlkHeader_u32.1958
	movh.a	%a12, hi:xSearchRetry_b.1959
	.loc 1 177 0
	jnz.t	%d15, 3, .L18
.LVL16:
.L16:
	.loc 1 185 0
	mov	%d15, 6
	st.b	[%a15] 46, %d15
.LVL17:
	.loc 1 49 0
	mov	%d2, 0
	j	.L26
.LVL18:
.L20:
	.loc 1 124 0
	mov	%d2, 3
.LVL19:
	j	.L18
.LVL20:
.L12:
	.loc 1 110 0
	mov	%d15, 5
	st.b	[%a15] 46, %d15
	.loc 1 114 0
	ld.w	%d15, [%a14] lo:Fee_GlobInfoLastRdHeader_st
	.loc 1 49 0
	mov	%d2, 0
.LVL21:
	.loc 1 114 0
	st.w	[%a13] lo:xAdrLastBlkHeader_u32.1958, %d15
	j	.L26
.LVL22:
.L13:
	.loc 1 135 0
	mov	%d15, 1
	st.b	[%a12] lo:xSearchRetry_b.1959, %d15
	.loc 1 49 0
	mov	%d2, 0
.LVL23:
	j	.L26
.LFE24:
	.size	Fee_HLReadBlock, .-Fee_HLReadBlock
.section .data.a4.xAdrLastBlkHeader_u32.1958,"aw",@progbits
	.align 2
	.type	xAdrLastBlkHeader_u32.1958, @object
	.size	xAdrLastBlkHeader_u32.1958, 4
xAdrLastBlkHeader_u32.1958:
	.word	-1
.section .bss.a1.xSearchRetry_b.1959,"aw",@nobits
	.type	xSearchRetry_b.1959, @object
	.size	xSearchRetry_b.1959, 1
xSearchRetry_b.1959:
	.zero	1
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
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x1e90
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_HlReadBlock.c"
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
	.uaword	0x1d6
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
	.uaword	0x202
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
	.uaword	0x23e
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
	.uaword	0x1d6
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
	.uaword	0x32a
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
	.uaword	0x2ab
	.uleb128 0x6
	.byte	0x4
	.uaword	0x1c9
	.uleb128 0x6
	.byte	0x4
	.uaword	0x34c
	.uleb128 0x7
	.byte	0x1
	.uleb128 0x4
	.byte	0x1
	.byte	0x4
	.byte	0x9f
	.uaword	0x37d
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
	.uaword	0x34e
	.uleb128 0x8
	.byte	0x10
	.byte	0x4
	.byte	0xb0
	.uaword	0x449
	.uleb128 0x9
	.string	"DataBufferPtr_pu8"
	.byte	0x4
	.byte	0xb2
	.uaword	0x340
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"FeeIdx_u16"
	.byte	0x4
	.byte	0xb3
	.uaword	0x1f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"BlockPropIdx_u16"
	.byte	0x4
	.byte	0xb4
	.uaword	0x1f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x9
	.string	"Offset_u16"
	.byte	0x4
	.byte	0xb5
	.uaword	0x1f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x4
	.byte	0xb6
	.uaword	0x1f4
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x9
	.string	"Mode_en"
	.byte	0x4
	.byte	0xb7
	.uaword	0x32a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.string	"Prio_en"
	.byte	0x4
	.byte	0xb8
	.uaword	0x37d
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0x9
	.string	"SecLevel_u8"
	.byte	0x4
	.byte	0xb9
	.uaword	0x1c9
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.byte	0
	.uleb128 0x3
	.string	"Fee_OrderFifo_tst"
	.byte	0x4
	.byte	0xba
	.uaword	0x397
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0xb
	.byte	0x1
	.byte	0x4
	.uahalf	0x116
	.uaword	0x545
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
	.byte	0x4
	.uahalf	0x121
	.uaword	0x46e
	.uleb128 0xd
	.byte	0x10
	.byte	0x4
	.uahalf	0x14c
	.uaword	0x5f3
	.uleb128 0xe
	.string	"BlockPersistentId_u16"
	.byte	0x4
	.uahalf	0x14e
	.uaword	0x1f4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"Flags_u16"
	.byte	0x4
	.uahalf	0x14f
	.uaword	0x1f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xf
	.uaword	.LASF0
	.byte	0x4
	.uahalf	0x150
	.uaword	0x1f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"JobEndNotification_pfn"
	.byte	0x4
	.uahalf	0x151
	.uaword	0x5f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"JobErrorNotification_pfn"
	.byte	0x4
	.uahalf	0x152
	.uaword	0x5f3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x10
	.uaword	0x346
	.uleb128 0xc
	.string	"Fee_BlockPropertiesType_tst"
	.byte	0x4
	.uahalf	0x153
	.uaword	0x55e
	.uleb128 0xb
	.byte	0x1
	.byte	0x4
	.uahalf	0x15f
	.uaword	0x74d
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
	.byte	0x4
	.uahalf	0x16a
	.uaword	0x61c
	.uleb128 0xb
	.byte	0x1
	.byte	0x4
	.uahalf	0x16e
	.uaword	0x850
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
	.byte	0x4
	.uahalf	0x17f
	.uaword	0x76c
	.uleb128 0xb
	.byte	0x1
	.byte	0x4
	.uahalf	0x183
	.uaword	0xa6b
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
	.byte	0x4
	.uahalf	0x1ae
	.uaword	0x870
	.uleb128 0xb
	.byte	0x1
	.byte	0x4
	.uahalf	0x1b2
	.uaword	0xb4a
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
	.byte	0x4
	.uahalf	0x1ba
	.uaword	0xa89
	.uleb128 0xb
	.byte	0x1
	.byte	0x4
	.uahalf	0x1be
	.uaword	0xc1a
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
	.byte	0x4
	.uahalf	0x1c5
	.uaword	0xb67
	.uleb128 0xb
	.byte	0x1
	.byte	0x4
	.uahalf	0x1c9
	.uaword	0xd37
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
	.byte	0x4
	.uahalf	0x1d5
	.uaword	0xc37
	.uleb128 0xb
	.byte	0x1
	.byte	0x4
	.uahalf	0x1d9
	.uaword	0xea9
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
	.byte	0x4
	.uahalf	0x1f3
	.uaword	0xd58
	.uleb128 0xb
	.byte	0x1
	.byte	0x4
	.uahalf	0x1f7
	.uaword	0xf6d
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
	.byte	0x4
	.uahalf	0x1fd
	.uaword	0xec7
	.uleb128 0xb
	.byte	0x1
	.byte	0x4
	.uahalf	0x201
	.uaword	0xfe7
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
	.byte	0x4
	.uahalf	0x20d
	.uaword	0xf8e
	.uleb128 0xb
	.byte	0x1
	.byte	0x4
	.uahalf	0x211
	.uaword	0x104d
	.uleb128 0x5
	.string	"FEE_LL_SEARCHBLK_INIT_E"
	.sleb128 0
	.uleb128 0x5
	.string	"FEE_LL_SEARCHBLK_BLK_HEADER_E"
	.sleb128 1
	.byte	0
	.uleb128 0xc
	.string	"Fee_LLSearchBlkHdrType_ten"
	.byte	0x4
	.uahalf	0x214
	.uaword	0x1009
	.uleb128 0xb
	.byte	0x1
	.byte	0x4
	.uahalf	0x219
	.uaword	0x10b4
	.uleb128 0x5
	.string	"FEE_LL_BLD_UP_CACHE_INIT_E"
	.sleb128 0
	.uleb128 0x5
	.string	"FEE_LL_BLD_UP_CACHE_READ_E"
	.sleb128 1
	.byte	0
	.uleb128 0xc
	.string	"Fee_LLBuildUpCache_ten"
	.byte	0x4
	.uahalf	0x21c
	.uaword	0x1070
	.uleb128 0xb
	.byte	0x1
	.byte	0x4
	.uahalf	0x220
	.uaword	0x1127
	.uleb128 0x5
	.string	"FEE_LL_BLD_UP_CACHE_ALL_SECT_INIT_E"
	.sleb128 0
	.uleb128 0x5
	.string	"FEE_LL_BLD_UP_CACHE_ALL_SECT_DO_E"
	.sleb128 1
	.byte	0
	.uleb128 0xc
	.string	"Fee_LLBuildUpCacheAllSect_ten"
	.byte	0x4
	.uahalf	0x223
	.uaword	0x10d3
	.uleb128 0xb
	.byte	0x1
	.byte	0x4
	.uahalf	0x23d
	.uaword	0x1224
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
	.byte	0x4
	.uahalf	0x255
	.uaword	0x114d
	.uleb128 0xb
	.byte	0x1
	.byte	0x4
	.uahalf	0x259
	.uaword	0x1367
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
	.byte	0x4
	.uahalf	0x265
	.uaword	0x1243
	.uleb128 0xb
	.byte	0x1
	.byte	0x4
	.uahalf	0x269
	.uaword	0x1781
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
	.byte	0x4
	.uahalf	0x2a3
	.uaword	0x1389
	.uleb128 0xd
	.byte	0x3c
	.byte	0x4
	.uahalf	0x2c1
	.uaword	0x1b1c
	.uleb128 0xe
	.string	"xRdAddress"
	.byte	0x4
	.uahalf	0x2c3
	.uaword	0x230
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"xWrAddress"
	.byte	0x4
	.uahalf	0x2c4
	.uaword	0x230
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"xCmpAddress"
	.byte	0x4
	.uahalf	0x2c5
	.uaword	0x230
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"xCrcAddress"
	.byte	0x4
	.uahalf	0x2c6
	.uaword	0x230
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"xCpyAddress"
	.byte	0x4
	.uahalf	0x2c7
	.uaword	0x230
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"AdrHdSearchStart_u32"
	.byte	0x4
	.uahalf	0x2c8
	.uaword	0x230
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"xStartAddrNextSector_u32"
	.byte	0x4
	.uahalf	0x2c9
	.uaword	0x230
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"xHdPg2Address"
	.byte	0x4
	.uahalf	0x2cd
	.uaword	0x230
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"LastProgrammedAddress_u32"
	.byte	0x4
	.uahalf	0x2d1
	.uaword	0x230
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.string	"LastValidHdrAddress_u32"
	.byte	0x4
	.uahalf	0x2d2
	.uaword	0x230
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xe
	.string	"Fee_LLSecReorg_en"
	.byte	0x4
	.uahalf	0x2d5
	.uaword	0x1224
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xe
	.string	"Fee_LLRedundantCpyChk_en"
	.byte	0x4
	.uahalf	0x2d6
	.uaword	0x1367
	.byte	0x2
	.byte	0x23
	.uleb128 0x29
	.uleb128 0xe
	.string	"Fee_LLCpyBlkFls2Fls_en"
	.byte	0x4
	.uahalf	0x2d7
	.uaword	0x1781
	.byte	0x2
	.byte	0x23
	.uleb128 0x2a
	.uleb128 0xe
	.string	"Fee_HLWrBlock_en"
	.byte	0x4
	.uahalf	0x2dd
	.uaword	0x850
	.byte	0x2
	.byte	0x23
	.uleb128 0x2b
	.uleb128 0xe
	.string	"Fee_HLMtBlock_en"
	.byte	0x4
	.uahalf	0x2e0
	.uaword	0x850
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xe
	.string	"Fee_LLWrBlock_en"
	.byte	0x4
	.uahalf	0x2e3
	.uaword	0xa6b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2d
	.uleb128 0xe
	.string	"Fee_HLRdBlock"
	.byte	0x4
	.uahalf	0x2e4
	.uaword	0x850
	.byte	0x2
	.byte	0x23
	.uleb128 0x2e
	.uleb128 0xe
	.string	"Fee_LLNextUsedWrBlock_en"
	.byte	0x4
	.uahalf	0x2e5
	.uaword	0xa6b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2f
	.uleb128 0xe
	.string	"Fee_LLNextEraseWrBlock_en"
	.byte	0x4
	.uahalf	0x2e6
	.uaword	0xa6b
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"Fee_LLCompBlk"
	.byte	0x4
	.uahalf	0x2e7
	.uaword	0xb4a
	.byte	0x2
	.byte	0x23
	.uleb128 0x31
	.uleb128 0xe
	.string	"Fee_LLCopyBlk_en"
	.byte	0x4
	.uahalf	0x2e8
	.uaword	0xc1a
	.byte	0x2
	.byte	0x23
	.uleb128 0x32
	.uleb128 0xe
	.string	"Fee_LLCalcCrcBlk_en"
	.byte	0x4
	.uahalf	0x2e9
	.uaword	0xd37
	.byte	0x2
	.byte	0x23
	.uleb128 0x33
	.uleb128 0xe
	.string	"Fee_LLWrMarker_en"
	.byte	0x4
	.uahalf	0x2ea
	.uaword	0x74d
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xe
	.string	"Fee_LLRdState_en"
	.byte	0x4
	.uahalf	0x2eb
	.uaword	0xea9
	.byte	0x2
	.byte	0x23
	.uleb128 0x35
	.uleb128 0xe
	.string	"Fee_LLBlankCheckState_en"
	.byte	0x4
	.uahalf	0x2ec
	.uaword	0xf6d
	.byte	0x2
	.byte	0x23
	.uleb128 0x36
	.uleb128 0xe
	.string	"Fee_LLFindEmptyPageState_en"
	.byte	0x4
	.uahalf	0x2ed
	.uaword	0xfe7
	.byte	0x2
	.byte	0x23
	.uleb128 0x37
	.uleb128 0xe
	.string	"Fee_LLSearchBlkHdr_en"
	.byte	0x4
	.uahalf	0x2ee
	.uaword	0x104d
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xe
	.string	"Fee_LLBuildUpCache_en"
	.byte	0x4
	.uahalf	0x2fb
	.uaword	0x10b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x39
	.uleb128 0xe
	.string	"Fee_LLBuildUpCacheAllSect_en"
	.byte	0x4
	.uahalf	0x2fc
	.uaword	0x1127
	.byte	0x2
	.byte	0x23
	.uleb128 0x3a
	.byte	0
	.uleb128 0xc
	.string	"Fee_RdWrOrder_tst"
	.byte	0x4
	.uahalf	0x2fe
	.uaword	0x17a1
	.uleb128 0xd
	.byte	0x14
	.byte	0x4
	.uahalf	0x301
	.uaword	0x1bee
	.uleb128 0xe
	.string	"AdrBlkHeader_u32"
	.byte	0x4
	.uahalf	0x303
	.uaword	0x230
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"BlkCrc32_u32"
	.byte	0x4
	.uahalf	0x304
	.uaword	0x230
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"HdrCrc16_u16"
	.byte	0x4
	.uahalf	0x305
	.uaword	0x1f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"BlkLength_u16"
	.byte	0x4
	.uahalf	0x306
	.uaword	0x1f4
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xe
	.string	"FeeIndex_u16"
	.byte	0x4
	.uahalf	0x307
	.uaword	0x1f4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"DataBytes_au8"
	.byte	0x4
	.uahalf	0x308
	.uaword	0x1bee
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xe
	.string	"BlkStatus_u8"
	.byte	0x4
	.uahalf	0x309
	.uaword	0x1c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x11
	.uaword	0x1c9
	.uaword	0x1bfe
	.uleb128 0x12
	.uaword	0x462
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.string	"Fee_GlobInfoLastRdHeader_tst"
	.byte	0x4
	.uahalf	0x30a
	.uaword	0x1b36
	.uleb128 0x13
	.byte	0x1
	.string	"Fee_HLReadBlock"
	.byte	0x1
	.byte	0x30
	.byte	0x1
	.uaword	0x545
	.uaword	.LFB24
	.uaword	.LFE24
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1d18
	.uleb128 0x14
	.string	"xRetVal"
	.byte	0x1
	.byte	0x32
	.uaword	0x545
	.uaword	.LLST0
	.uleb128 0x14
	.string	"xtmpRetVal"
	.byte	0x1
	.byte	0x33
	.uaword	0x545
	.uaword	.LLST1
	.uleb128 0x15
	.string	"xAdrLastBlkHeader_u32"
	.byte	0x1
	.byte	0x34
	.uaword	0x230
	.byte	0x5
	.byte	0x3
	.uaword	xAdrLastBlkHeader_u32.1958
	.uleb128 0x15
	.string	"xSearchRetry_b"
	.byte	0x1
	.byte	0x35
	.uaword	0x27b
	.byte	0x5
	.byte	0x3
	.uaword	xSearchRetry_b.1959
	.uleb128 0x14
	.string	"Offset"
	.byte	0x1
	.byte	0x37
	.uaword	0x1f4
	.uaword	.LLST2
	.uleb128 0x14
	.string	"Length"
	.byte	0x1
	.byte	0x38
	.uaword	0x1f4
	.uaword	.LLST2
	.uleb128 0x16
	.string	"DataPtr"
	.byte	0x1
	.byte	0x39
	.uaword	0x340
	.uleb128 0x17
	.uaword	.LVL4
	.uaword	0x1dd2
	.uleb128 0x18
	.uaword	.LVL6
	.uaword	0x1e17
	.uaword	0x1d04
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL10
	.uaword	0x1e44
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	xAdrLastBlkHeader_u32.1958
	.byte	0
	.byte	0
	.uleb128 0x1b
	.string	"Fee_RdWrOrder_st"
	.byte	0x4
	.uahalf	0x405
	.uaword	0x1b1c
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.uaword	0x449
	.uaword	0x1d43
	.uleb128 0x12
	.uaword	0x462
	.byte	0x2
	.byte	0
	.uleb128 0x1b
	.string	"Fee_OrderFifo_st"
	.byte	0x4
	.uahalf	0x409
	.uaword	0x1d33
	.byte	0x1
	.byte	0x1
	.uleb128 0x1b
	.string	"Fee_GlobInfoLastRdHeader_st"
	.byte	0x4
	.uahalf	0x40a
	.uaword	0x1bfe
	.byte	0x1
	.byte	0x1
	.uleb128 0x1b
	.string	"Fee_idxActQueue_u8"
	.byte	0x4
	.uahalf	0x438
	.uaword	0x1c9
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.uaword	0x5f8
	.uaword	0x1db1
	.uleb128 0x12
	.uaword	0x462
	.byte	0x39
	.byte	0
	.uleb128 0x1b
	.string	"Fee_BlockProperties_st"
	.byte	0x4
	.uahalf	0x464
	.uaword	0x1da1
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.byte	0x1
	.string	"Fee_LLCopyData2Buffer"
	.byte	0x4
	.uahalf	0x501
	.byte	0x1
	.uaword	0x545
	.byte	0x1
	.uaword	0x1e0c
	.uleb128 0x1d
	.uaword	0x1e0c
	.uleb128 0x1d
	.uaword	0x340
	.uleb128 0x1d
	.uaword	0x1f4
	.uleb128 0x1d
	.uaword	0x1f4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x1e12
	.uleb128 0x10
	.uaword	0x1bfe
	.uleb128 0x1c
	.byte	0x1
	.string	"Fee_LLCalcBlkCrcInFlash"
	.byte	0x4
	.uahalf	0x4e0
	.byte	0x1
	.uaword	0x545
	.byte	0x1
	.uaword	0x1e44
	.uleb128 0x1d
	.uaword	0x1e0c
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.string	"Fee_LLSearchSpecifiedBlkHeader"
	.byte	0x4
	.uahalf	0x4c9
	.byte	0x1
	.uaword	0x545
	.byte	0x1
	.uaword	0x1e87
	.uleb128 0x1d
	.uaword	0x1f4
	.uleb128 0x1d
	.uaword	0x1e87
	.uleb128 0x1d
	.uaword	0x1e8d
	.uleb128 0x1d
	.uaword	0x27b
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x230
	.uleb128 0x6
	.byte	0x4
	.uaword	0x1bfe
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uaword	.LVL4
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL5
	.uaword	.LVL8
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LVL15
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL17
	.uaword	.LFE24
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL6
	.uaword	.LVL7
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
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL8
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL9
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
	.extern	Fee_BlockProperties_st,STT_OBJECT,928
	.extern	Fee_LLSearchSpecifiedBlkHeader,STT_FUNC,0
	.extern	Fee_LLCalcBlkCrcInFlash,STT_FUNC,0
	.extern	Fee_LLCopyData2Buffer,STT_FUNC,0
	.extern	Fee_GlobInfoLastRdHeader_st,STT_OBJECT,20
	.extern	Fee_OrderFifo_st,STT_OBJECT,48
	.extern	Fee_idxActQueue_u8,STT_OBJECT,1
	.extern	Fee_RdWrOrder_st,STT_OBJECT,60
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
