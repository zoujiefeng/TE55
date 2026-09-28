	.file	"rba_FeeFs1_LlErase.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Fee_LLSetEraseSector,"ax",@progbits
	.align 1
	.global	Fee_LLSetEraseSector
	.type	Fee_LLSetEraseSector, @function
Fee_LLSetEraseSector:
.LFB24:
	.file 1 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_LlErase.c"
	.loc 1 47 0
.LVL0:
	.loc 1 48 0
	movh.a	%a15, hi:Fee_LLSectorOrder_st
	lea	%a15, [%a15] lo:Fee_LLSectorOrder_st
	addsc.a	%a15, %a15, %d4, 3
	movh.a	%a2, hi:Fee_LLEraseOrder_st
	ld.bu	%d15, [%a15] 5
	lea	%a2, [%a2] lo:Fee_LLEraseOrder_st
	st.b	[%a2] 1, %d15
	.loc 1 50 0
	mov	%d15, 4
	st.b	[%a15] 4, %d15
	.loc 1 51 0
	mov	%d15, -1
	st.w	[%a15]0, %d15
	ret
.LFE24:
	.size	Fee_LLSetEraseSector, .-Fee_LLSetEraseSector
.section .text.Fee_LLEraseSector,"ax",@progbits
	.align 1
	.global	Fee_LLEraseSector
	.type	Fee_LLEraseSector, @function
Fee_LLEraseSector:
.LFB25:
	.loc 1 76 0
.LVL1:
	.loc 1 88 0
	movh.a	%a12, hi:Fee_LLEraseOrder_st
	ld.bu	%d15, [%a12] lo:Fee_LLEraseOrder_st
	.loc 1 76 0
	sub.a	%SP, 8
.LCFI0:
	.loc 1 88 0
	jlt.u	%d15, 6, .L42
	.loc 1 226 0
	mov	%d2, 3
.LVL2:
	lea	%a15, [%a12] lo:Fee_LLEraseOrder_st
.LVL3:
.L26:
	.loc 1 244 0
	mov	%d15, 0
	st.b	[%a12] lo:Fee_LLEraseOrder_st, %d15
	.loc 1 247 0
	mov	%d15, -1
	st.b	[%a15] 1, %d15
	ret
.LVL4:
.L42:
	.loc 1 88 0
	movh.a	%a15, hi:.L5
	lea	%a15, [%a15] lo:.L5
	addsc.a	%a15, %a15, %d15, 2
	ji	%a15
	.align 2
	.align 2
.L5:
	.code32
	j	.L4
	.code32
	j	.L4
	.code32
	j	.L6
	.code32
	j	.L7
	.code32
	j	.L19
	.code32
	j	.L9
.L19:
.LBB4:
.LBB5:
	.loc 1 326 0
	movh.a	%a15, hi:Fee_stMain
	ld.bu	%d15, [%a15] lo:Fee_stMain
	jz	%d15, .L43
.L23:
	.loc 1 334 0
	call	Fee_CheckFlsJobResult
.LVL5:
.L21:
.LBE5:
.LBE4:
	.loc 1 101 0
	mov	%d2, 0
	ret
.LVL6:
.L9:
	.loc 1 213 0
	lea	%a15, [%a12] lo:Fee_LLEraseOrder_st
	ld.bu	%d4, [%a15] 1
	mov	%d5, 1
	call	Fee_LLWriteMarker
.LVL7:
	.loc 1 232 0
	jnz	%d2, .L26
	.loc 1 266 0
	ret
.LVL8:
.L4:
	.loc 1 101 0
	lea	%a15, [%a12] lo:Fee_LLEraseOrder_st
	ld.bu	%d4, [%a15] 1
	jlt.u	%d4, 2, .L12
.L11:
	.loc 1 244 0
	mov	%d15, 0
	st.b	[%a12] lo:Fee_LLEraseOrder_st, %d15
	.loc 1 247 0
	mov	%d15, -1
	.loc 1 121 0
	mov	%d2, 6
.LVL9:
	.loc 1 247 0
	st.b	[%a15] 1, %d15
	ret
.LVL10:
.L6:
	lea	%a15, [%a12] lo:Fee_LLEraseOrder_st
	ld.bu	%d4, [%a15] 1
	.loc 1 134 0
	ne	%d15, %d4, 255
	jz	%d15, .L11
.L10:
.LVL11:
.LBB9:
.LBB6:
	.loc 1 292 0
	movh.a	%a15, hi:Fee_LLWrEraseStartFlag_st
	ld.bu	%d15, [%a15] lo:Fee_LLWrEraseStartFlag_st
	lea	%a13, [%a15] lo:Fee_LLWrEraseStartFlag_st
	jge.u	%d15, 6, .L15
	movh.a	%a2, hi:.L17
	lea	%a2, [%a2] lo:.L17
	addsc.a	%a2, %a2, %d15, 2
	ji	%a2
	.align 2
	.align 2
.L17:
	.code32
	j	.L16
	.code32
	j	.L18
	.code32
	j	.L19
	.code32
	j	.L32
	.code32
	j	.L20
	.code32
	j	.L19
.LVL12:
.L7:
.LBE6:
.LBE9:
	.loc 1 156 0
	lea	%a15, [%a12] lo:Fee_LLEraseOrder_st
	ld.bu	%d15, [%a15] 1
	jge.u	%d15, 2, .L11
	.loc 1 158 0
	movh.a	%a2, hi:Fee_FlashProp_st
	mov.d	%d3, %a2
	addi	%d2, %d3, lo:Fee_FlashProp_st
	madd	%d3, %d2, %d15, 16
	mov.a	%a2, %d3
	ld.w	%d5, [%a2] 4
	ld.w	%d4, [%a2]0
.LVL13:
	add	%d5, 1
	.loc 1 164 0
	sub	%d5, %d4
	call	Fls_17_Dmu_Erase
.LVL14:
	jnz	%d2, .L11
	.loc 1 167 0
	mov	%d15, 4
.LVL15:
	movh.a	%a15, hi:Fee_LLEraseOrder_st
	st.b	[%a15] lo:Fee_LLEraseOrder_st, %d15
	j	.L21
.L43:
.LBB10:
.LBB7:
	.loc 1 329 0
	call	Fls_17_Dmu_MainFunction
.LVL16:
	j	.L23
.LVL17:
.L32:
	movh.a	%a13, hi:Fee_LLWrEraseStartFlag_st
	lea	%a13, [%a13] lo:Fee_LLWrEraseStartFlag_st
.LVL18:
.L15:
	.loc 1 392 0
	mov	%d15, 0
	st.b	[%a15] lo:Fee_LLWrEraseStartFlag_st, %d15
	.loc 1 393 0
	mov	%d15, 0
	st.w	[%a13] 4, %d15
.LBE7:
.LBE10:
	.loc 1 142 0
	mov	%d15, 3
	st.b	[%a12] lo:Fee_LLEraseOrder_st, %d15
	j	.L21
.L12:
	movh.a	%a3, hi:Fee_FlashProp_st
	mov.d	%d2, %a3
	movh.a	%a4, hi:Fee_Cache_au32
	addi	%d15, %d2, lo:Fee_FlashProp_st
	madd	%d3, %d15, %d4, 16
	.loc 1 109 0
	movh	%d5, 45055
	.loc 1 101 0
	mov	%d15, 0
	mov.a	%a3, %d3
	lea	%a4, [%a4] lo:Fee_Cache_au32
	ld.w	%d3, [%a3+]4
	.loc 1 109 0
	addi	%d5, %d5, -13570
	lea	%a15, 57
.L14:
.LVL19:
	.loc 1 105 0
	addsc.a	%a2, %a4, %d15, 2
	ld.w	%d2, [%a2]0
	jlt.u	%d2, %d3, .L13
	.loc 1 105 0 is_stmt 0 discriminator 1
	ld.w	%d6, [%a3]0
	jlt.u	%d6, %d2, .L13
	.loc 1 109 0 is_stmt 1
	st.w	[%a2]0, %d5
.L13:
.LVL20:
	add	%d15, 1
.LVL21:
	.loc 1 103 0 discriminator 2
	loop	%a15, .L14
	.loc 1 126 0
	mov	%d15, 2
.LVL22:
	st.b	[%a12] lo:Fee_LLEraseOrder_st, %d15
	j	.L10
.LVL23:
.L18:
.LBB11:
.LBB8:
	.loc 1 307 0
	lea	%a13, [%a15] lo:Fee_LLWrEraseStartFlag_st
	ld.w	%d4, [%a13] 4
.LVL24:
	mov	%d5, 8
	call	Fls_17_Dmu_BlankCheck
.LVL25:
	jeq	%d2, 1, .L15
	.loc 1 310 0
	mov	%d15, 2
	movh.a	%a15, hi:Fee_LLWrEraseStartFlag_st
	st.b	[%a15] lo:Fee_LLWrEraseStartFlag_st, %d15
	j	.L21
.LVL26:
.L16:
	.loc 1 297 0
	movh.a	%a2, hi:Fee_FlashProp_st
	mov.d	%d2, %a2
	lea	%a3, [%a15] lo:Fee_LLWrEraseStartFlag_st
	addi	%d15, %d2, lo:Fee_FlashProp_st
	madd	%d3, %d15, %d4, 16
	mov.a	%a2, %d3
	ld.w	%d15, [%a2]0
	addi	%d15, %d15, 88
	st.w	[%a3] 4, %d15
	.loc 1 300 0
	mov	%d15, 1
	st.b	[%a15] lo:Fee_LLWrEraseStartFlag_st, %d15
	j	.L21
.L20:
	.loc 1 350 0
	movh.a	%a2, hi:Fee_MarkerBufBytePtr_cpu8
	ld.w	%d15, [%a2] lo:Fee_MarkerBufBytePtr_cpu8
	mov	%d4, 255
.LVL27:
	mov.a	%a4, %d15
	mov	%d5, 8
	st.w	[%SP] 4, %d15
	call	Fee_SrvMemSet8
.LVL28:
	.loc 1 352 0
	ld.a	%a4, [%SP] 4
	lea	%a13, [%a15] lo:Fee_LLWrEraseStartFlag_st
	ld.w	%d4, [%a13] 4
	mov	%d5, 8
	call	Fls_17_Dmu_Write
.LVL29:
	jeq	%d2, 1, .L15
	.loc 1 355 0
	mov	%d15, 5
	movh.a	%a15, hi:Fee_LLWrEraseStartFlag_st
	st.b	[%a15] lo:Fee_LLWrEraseStartFlag_st, %d15
	j	.L21
.LBE8:
.LBE11:
.LFE25:
	.size	Fee_LLEraseSector, .-Fee_LLEraseSector
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
	.uleb128 0x8
	.align 2
.LEFDE2:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 4 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\inc\\Fls_17_Dmu.h"
	.file 5 ".\\output\\inc/..\\..\\Integration\\mcal\\Fls.h"
	.file 6 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_Prv.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xf9e
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_LlErase.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x28
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
	.uaword	0x1d2
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
	.uaword	0x1fe
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
	.uaword	0x23a
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
	.string	"Std_ReturnType"
	.byte	0x3
	.byte	0x60
	.uaword	0x1c5
	.uleb128 0x4
	.string	"Fls_17_Dmu_AddressType"
	.byte	0x4
	.uahalf	0xa21
	.uaword	0x22c
	.uleb128 0x4
	.string	"Fls_17_Dmu_LengthType"
	.byte	0x4
	.uahalf	0xa25
	.uaword	0x22c
	.uleb128 0x5
	.byte	0x4
	.uaword	0x1c5
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2f7
	.uleb128 0x6
	.uaword	0x1c5
	.uleb128 0x5
	.byte	0x4
	.uaword	0x302
	.uleb128 0x7
	.byte	0x1
	.uleb128 0x3
	.string	"Fls_AddressType"
	.byte	0x5
	.byte	0x2c
	.uaword	0x22c
	.uleb128 0x3
	.string	"Fls_LengthType"
	.byte	0x5
	.byte	0x2e
	.uaword	0x22c
	.uleb128 0x8
	.byte	0x1
	.byte	0x6
	.byte	0xdb
	.uaword	0x48b
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0xa
	.byte	0x1
	.byte	0x6
	.uahalf	0x103
	.uaword	0x531
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
	.byte	0x6
	.uahalf	0x10a
	.uaword	0x497
	.uleb128 0xb
	.byte	0x8
	.byte	0x6
	.uahalf	0x10d
	.uaword	0x5a1
	.uleb128 0xc
	.string	"SecChngCnt_u32"
	.byte	0x6
	.uahalf	0x10f
	.uaword	0x22c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"SecState_en"
	.byte	0x6
	.uahalf	0x110
	.uaword	0x531
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"xPhySecIdx_u8"
	.byte	0x6
	.uahalf	0x111
	.uaword	0x1c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x4
	.string	"Fee_LLSectorOrder_tst"
	.byte	0x6
	.uahalf	0x112
	.uaword	0x54d
	.uleb128 0xa
	.byte	0x1
	.byte	0x6
	.uahalf	0x116
	.uaword	0x696
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
	.byte	0x6
	.uahalf	0x121
	.uaword	0x5bf
	.uleb128 0xb
	.byte	0x10
	.byte	0x6
	.uahalf	0x125
	.uaword	0x743
	.uleb128 0xc
	.string	"Fee_PhysStartAddress_u32"
	.byte	0x6
	.uahalf	0x127
	.uaword	0x22c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"Fee_PhysEndAddress_u32"
	.byte	0x6
	.uahalf	0x128
	.uaword	0x22c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"Fee_LogStartAddress_u32"
	.byte	0x6
	.uahalf	0x129
	.uaword	0x22c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.string	"Fee_LogEndAddress_u32"
	.byte	0x6
	.uahalf	0x12a
	.uaword	0x22c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x4
	.string	"Fee_FlashProp_tst"
	.byte	0x6
	.uahalf	0x12b
	.uaword	0x6af
	.uleb128 0xb
	.byte	0x10
	.byte	0x6
	.uahalf	0x14c
	.uaword	0x7f9
	.uleb128 0xc
	.string	"BlockPersistentId_u16"
	.byte	0x6
	.uahalf	0x14e
	.uaword	0x1f0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"Flags_u16"
	.byte	0x6
	.uahalf	0x14f
	.uaword	0x1f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xc
	.string	"Length_u16"
	.byte	0x6
	.uahalf	0x150
	.uaword	0x1f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"JobEndNotification_pfn"
	.byte	0x6
	.uahalf	0x151
	.uaword	0x7f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.string	"JobErrorNotification_pfn"
	.byte	0x6
	.uahalf	0x152
	.uaword	0x7f9
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x6
	.uaword	0x2fc
	.uleb128 0x4
	.string	"Fee_BlockPropertiesType_tst"
	.byte	0x6
	.uahalf	0x153
	.uaword	0x75d
	.uleb128 0xa
	.byte	0x1
	.byte	0x6
	.uahalf	0x325
	.uaword	0x8e5
	.uleb128 0x9
	.string	"FEE_ERASESEC_IDLE_E"
	.sleb128 0
	.uleb128 0x9
	.string	"FEE_ERASESEC_CHECK_CACHE_E"
	.sleb128 1
	.uleb128 0x9
	.string	"FEE_ERASESEC_WRITE_ERASESTARTFLAG_E"
	.sleb128 2
	.uleb128 0x9
	.string	"FEE_ERASESEC_START_E"
	.sleb128 3
	.uleb128 0x9
	.string	"FEE_ERASESEC_DO_E"
	.sleb128 4
	.uleb128 0x9
	.string	"FEE_ERASESEC_WRITE_MARKER_E"
	.sleb128 5
	.uleb128 0x9
	.string	"FEE_ERASESEC_ERROR_E"
	.sleb128 6
	.byte	0
	.uleb128 0x4
	.string	"Fee_LLEraseStateType_ten"
	.byte	0x6
	.uahalf	0x32d
	.uaword	0x822
	.uleb128 0xb
	.byte	0x2
	.byte	0x6
	.uahalf	0x330
	.uaword	0x945
	.uleb128 0xc
	.string	"EraseState_en"
	.byte	0x6
	.uahalf	0x332
	.uaword	0x8e5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"xPhySectorIdx_u8"
	.byte	0x6
	.uahalf	0x333
	.uaword	0x1c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x4
	.string	"Fee_LLEraseOrderType_tst"
	.byte	0x6
	.uahalf	0x334
	.uaword	0x906
	.uleb128 0xa
	.byte	0x1
	.byte	0x6
	.uahalf	0x338
	.uaword	0xaa9
	.uleb128 0x9
	.string	"FEE_LLWR_ERASESTARTFLAG_INIT_E"
	.sleb128 0
	.uleb128 0x9
	.string	"FEE_LLWR_ERASESTARTFLAG_BLK_CHK_E"
	.sleb128 1
	.uleb128 0x9
	.string	"FEE_LLWR_ERASESTARTFLAG_BLK_CHK_WAIT_E"
	.sleb128 2
	.uleb128 0x9
	.string	"FEE_LLWR_ERASESTARTFLAG_ALREADY_PROGRAMMED_E"
	.sleb128 3
	.uleb128 0x9
	.string	"FEE_LLWR_ERASESTARTFLAG_WRITE_E"
	.sleb128 4
	.uleb128 0x9
	.string	"FEE_LLWR_ERASESTARTFLAG_WRITE_WAIT_E"
	.sleb128 5
	.uleb128 0x9
	.string	"FEE_LLWR_ERASESTARTFLAG_WRITE_ERROR_E"
	.sleb128 6
	.uleb128 0x9
	.string	"FEE_LLWR_ERASESTARTFLAG_WRITE_FINISHED_E"
	.sleb128 7
	.byte	0
	.uleb128 0x4
	.string	"Fee_LLWrEraseStartFlagStateType_ten"
	.byte	0x6
	.uahalf	0x341
	.uaword	0x966
	.uleb128 0xb
	.byte	0x8
	.byte	0x6
	.uahalf	0x344
	.uaword	0xb15
	.uleb128 0xc
	.string	"state_en"
	.byte	0x6
	.uahalf	0x346
	.uaword	0xaa9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"eraseStartFlagAddr_u32"
	.byte	0x6
	.uahalf	0x347
	.uaword	0x22c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x4
	.string	"Fee_LLWrEraseStartFlagOrderType_tst"
	.byte	0x6
	.uahalf	0x348
	.uaword	0xad5
	.uleb128 0xa
	.byte	0x1
	.byte	0x6
	.uahalf	0x3b8
	.uaword	0xb74
	.uleb128 0x9
	.string	"FEE_POLLING_MODE_E"
	.sleb128 0
	.uleb128 0x9
	.string	"FEE_NORMAL_MODE_E"
	.sleb128 1
	.byte	0
	.uleb128 0x4
	.string	"Fee_stMainType"
	.byte	0x6
	.uahalf	0x3bb
	.uaword	0xb41
	.uleb128 0xd
	.byte	0x1
	.string	"Fee_LLSetEraseSector"
	.byte	0x1
	.byte	0x2e
	.byte	0x1
	.uaword	.LFB24
	.uaword	.LFE24
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xbcb
	.uleb128 0xe
	.string	"EraseLogIdx"
	.byte	0x1
	.byte	0x2e
	.uaword	0x1c5
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0xf
	.string	"Fee_LLWrEraseStartFlag"
	.byte	0x1
	.uahalf	0x120
	.byte	0x1
	.uaword	0x696
	.byte	0x1
	.uaword	0xc1b
	.uleb128 0x10
	.string	"phySectorIdx_u8"
	.byte	0x1
	.uahalf	0x120
	.uaword	0x1c5
	.uleb128 0x11
	.string	"retVal_en"
	.byte	0x1
	.uahalf	0x122
	.uaword	0x696
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.string	"Fee_LLEraseSector"
	.byte	0x1
	.byte	0x4b
	.byte	0x1
	.uaword	0x696
	.uaword	.LFB25
	.uaword	.LFE25
	.uaword	.LLST0
	.byte	0x1
	.uaword	0xd40
	.uleb128 0x13
	.string	"xRetVal"
	.byte	0x1
	.byte	0x4d
	.uaword	0x696
	.uaword	.LLST1
	.uleb128 0x13
	.string	"xAdStart_uo"
	.byte	0x1
	.byte	0x4e
	.uaword	0x304
	.uaword	.LLST2
	.uleb128 0x14
	.string	"xSecSize_uo"
	.byte	0x1
	.byte	0x4f
	.uaword	0x31b
	.uleb128 0x13
	.string	"xCacheIdx_u16"
	.byte	0x1
	.byte	0x50
	.uaword	0x1f0
	.uaword	.LLST3
	.uleb128 0x15
	.uaword	0xbcb
	.uaword	.LBB4
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x8b
	.uaword	0xd23
	.uleb128 0x16
	.uaword	0xbf0
	.uaword	.LLST4
	.uleb128 0x17
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x18
	.uaword	0xc08
	.uaword	.LLST5
	.uleb128 0x19
	.uaword	.LVL5
	.uaword	0xe79
	.uleb128 0x19
	.uaword	.LVL16
	.uaword	0xe96
	.uleb128 0x1a
	.uaword	.LVL25
	.uaword	0xeb5
	.uaword	0xcec
	.uleb128 0x1b
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x38
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL28
	.uaword	0xeef
	.uaword	0xd0b
	.uleb128 0x1b
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x38
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0xff
	.uleb128 0x1b
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.uaword	.LVL29
	.uaword	0xf19
	.uleb128 0x1b
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x38
	.uleb128 0x1b
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -4
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL7
	.uaword	0xf4e
	.uaword	0xd36
	.uleb128 0x1b
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x19
	.uaword	.LVL14
	.uaword	0xf7a
	.byte	0
	.uleb128 0x1d
	.uaword	0x743
	.uaword	0xd50
	.uleb128 0x1e
	.uaword	0x48b
	.byte	0x1
	.byte	0
	.uleb128 0x1f
	.string	"Fee_FlashProp_st"
	.byte	0x6
	.uahalf	0x3fc
	.uaword	0xd6b
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.uaword	0xd40
	.uleb128 0x1d
	.uaword	0x5a1
	.uaword	0xd80
	.uleb128 0x1e
	.uaword	0x48b
	.byte	0x1
	.byte	0
	.uleb128 0x1f
	.string	"Fee_LLSectorOrder_st"
	.byte	0x6
	.uahalf	0x406
	.uaword	0xd70
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.string	"Fee_LLEraseOrder_st"
	.byte	0x6
	.uahalf	0x407
	.uaword	0x945
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.string	"Fee_LLWrEraseStartFlag_st"
	.byte	0x6
	.uahalf	0x408
	.uaword	0xb15
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.string	"Fee_MarkerBufBytePtr_cpu8"
	.byte	0x6
	.uahalf	0x413
	.uaword	0xe05
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.uaword	0x2eb
	.uleb128 0x1f
	.string	"Fee_stMain"
	.byte	0x6
	.uahalf	0x431
	.uaword	0xb74
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.uaword	0x22c
	.uaword	0xe2f
	.uleb128 0x1e
	.uaword	0x48b
	.byte	0x39
	.byte	0
	.uleb128 0x1f
	.string	"Fee_Cache_au32"
	.byte	0x6
	.uahalf	0x44b
	.uaword	0xe1f
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.uaword	0x7fe
	.uaword	0xe58
	.uleb128 0x1e
	.uaword	0x48b
	.byte	0x39
	.byte	0
	.uleb128 0x1f
	.string	"Fee_BlockProperties_st"
	.byte	0x6
	.uahalf	0x464
	.uaword	0xe48
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.byte	0x1
	.string	"Fee_CheckFlsJobResult"
	.byte	0x6
	.uahalf	0x547
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.byte	0x1
	.string	"Fls_17_Dmu_MainFunction"
	.byte	0x4
	.uahalf	0xc2d
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.byte	0x1
	.string	"Fls_17_Dmu_BlankCheck"
	.byte	0x4
	.uahalf	0xb94
	.byte	0x1
	.uaword	0x298
	.byte	0x1
	.uaword	0xee5
	.uleb128 0x22
	.uaword	0xee5
	.uleb128 0x22
	.uaword	0xeea
	.byte	0
	.uleb128 0x6
	.uaword	0x2ae
	.uleb128 0x6
	.uaword	0x2cd
	.uleb128 0x23
	.byte	0x1
	.string	"Fee_SrvMemSet8"
	.byte	0x6
	.uahalf	0x537
	.byte	0x1
	.byte	0x1
	.uaword	0xf19
	.uleb128 0x22
	.uaword	0x2eb
	.uleb128 0x22
	.uaword	0x22c
	.uleb128 0x22
	.uaword	0x22c
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"Fls_17_Dmu_Write"
	.byte	0x4
	.uahalf	0xb4b
	.byte	0x1
	.uaword	0x298
	.byte	0x1
	.uaword	0xf49
	.uleb128 0x22
	.uaword	0xee5
	.uleb128 0x22
	.uaword	0xf49
	.uleb128 0x22
	.uaword	0xeea
	.byte	0
	.uleb128 0x6
	.uaword	0x2f1
	.uleb128 0x21
	.byte	0x1
	.string	"Fee_LLWriteMarker"
	.byte	0x6
	.uahalf	0x4ba
	.byte	0x1
	.uaword	0x696
	.byte	0x1
	.uaword	0xf7a
	.uleb128 0x22
	.uaword	0x1c5
	.uleb128 0x22
	.uaword	0x1c5
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.string	"Fls_17_Dmu_Erase"
	.byte	0x4
	.uahalf	0xb2c
	.byte	0x1
	.uaword	0x298
	.byte	0x1
	.uleb128 0x22
	.uaword	0xee5
	.uleb128 0x22
	.uaword	0xeea
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x34
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
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL4
	.uaword	.LVL7
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL10
	.uaword	.LFE25
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL13
	.uaword	.LVL14-1
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x3
	.byte	0x7f
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x3
	.byte	0x7f
	.sleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL26
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL23
	.uaword	.LFE25
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
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
	.uaword	.LBB9
	.uaword	.LBE9
	.uaword	.LBB10
	.uaword	.LBE10
	.uaword	.LBB11
	.uaword	.LBE11
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
	.extern	Fls_17_Dmu_Write,STT_FUNC,0
	.extern	Fee_SrvMemSet8,STT_FUNC,0
	.extern	Fee_MarkerBufBytePtr_cpu8,STT_OBJECT,4
	.extern	Fls_17_Dmu_BlankCheck,STT_FUNC,0
	.extern	Fee_Cache_au32,STT_OBJECT,232
	.extern	Fls_17_Dmu_MainFunction,STT_FUNC,0
	.extern	Fls_17_Dmu_Erase,STT_FUNC,0
	.extern	Fee_FlashProp_st,STT_OBJECT,32
	.extern	Fee_LLWrEraseStartFlag_st,STT_OBJECT,8
	.extern	Fee_LLWriteMarker,STT_FUNC,0
	.extern	Fee_CheckFlsJobResult,STT_FUNC,0
	.extern	Fee_stMain,STT_OBJECT,1
	.extern	Fee_LLEraseOrder_st,STT_OBJECT,2
	.extern	Fee_LLSectorOrder_st,STT_OBJECT,16
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
