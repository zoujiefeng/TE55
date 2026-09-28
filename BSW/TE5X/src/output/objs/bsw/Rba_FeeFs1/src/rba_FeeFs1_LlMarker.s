	.file	"rba_FeeFs1_LlMarker.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Fee_LLWriteMarker,"ax",@progbits
	.align 1
	.global	Fee_LLWriteMarker
	.type	Fee_LLWriteMarker, @function
Fee_LLWriteMarker:
.LFB24:
	.file 1 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_LlMarker.c"
	.loc 1 65 0
.LVL0:
	.loc 1 78 0
	movh.a	%a15, hi:Fee_idxLLSectorOrder_au8
	lea	%a15, [%a15] lo:Fee_idxLLSectorOrder_au8
	addsc.a	%a15, %a15, %d4, 0
	.loc 1 65 0
	sub.a	%SP, 16
.LCFI0:
	.loc 1 78 0
	ld.bu	%d9, [%a15]0
.LVL1:
	.loc 1 82 0
	movh.a	%a15, hi:Fee_RdWrOrder_st
.LVL2:
	lea	%a15, [%a15] lo:Fee_RdWrOrder_st
	ld.bu	%d2, [%a15] 52
	.loc 1 65 0
	mov	%d8, %d4
	mov	%d15, %d5
	.loc 1 82 0
	jlt.u	%d2, 10, .L57
.LVL3:
	.loc 1 370 0
	mov	%d2, 6
.LVL4:
.L54:
	movh.a	%a13, hi:Fee_LLSectorOrder_st
	movh.a	%a12, hi:xRdWr_Address_u32.1997
	lea	%a13, [%a13] lo:Fee_LLSectorOrder_st
	sh	%d9, 3
	movh.a	%a2, hi:Fee_RdWrRetries_u8
.LVL5:
.L16:
	.loc 1 389 0
	add	%d3, %d15, -5
	jlt.u	%d3, 2, .L58
	.loc 1 394 0
	addsc.a	%a13, %a13, %d9, 0
	st.b	[%a13] 4, %d15
.L32:
	.loc 1 403 0
	mov	%d15, 0
	st.b	[%a15] 52, %d15
	.loc 1 406 0
	mov	%d15, 3
	st.b	[%a2] lo:Fee_RdWrRetries_u8, %d15
	.loc 1 409 0
	mov	%d15, -1
	st.w	[%a12] lo:xRdWr_Address_u32.1997, %d15
	ret
.LVL6:
.L57:
	.loc 1 82 0
	movh.a	%a2, hi:.L4
	lea	%a2, [%a2] lo:.L4
	addsc.a	%a2, %a2, %d2, 2
	ji	%a2
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
	j	.L8
	.code32
	j	.L6
	.code32
	j	.L10
	.code32
	j	.L11
	.code32
	j	.L6
	.code32
	j	.L13
.L6:
	.loc 1 142 0
	movh.a	%a15, hi:Fee_stMain
	ld.bu	%d15, [%a15] lo:Fee_stMain
	jz	%d15, .L59
.LVL7:
.L18:
	.loc 1 150 0
	call	Fee_CheckFlsJobResult
.LVL8:
.L17:
	mov	%d2, 0
	.loc 1 413 0
	ret
.LVL9:
.L59:
	.loc 1 145 0
	call	Fls_17_Dmu_MainFunction
.LVL10:
	j	.L18
.LVL11:
.L10:
	.loc 1 292 0
	movh.a	%a2, hi:Fee_RdWrRetries_u8
	ld.bu	%d2, [%a2] lo:Fee_RdWrRetries_u8
	jnz	%d2, .L27
	movh.a	%a13, hi:Fee_LLSectorOrder_st
	.loc 1 316 0
	mov	%d2, 3
	movh.a	%a12, hi:xRdWr_Address_u32.1997
	lea	%a13, [%a13] lo:Fee_LLSectorOrder_st
	sh	%d9, 3
	j	.L16
.L3:
	.loc 1 109 0
	movh.a	%a2, hi:Fee_MarkerBufBytePtr_cpu8
	ld.a	%a4, [%a2] lo:Fee_MarkerBufBytePtr_cpu8
	.loc 1 106 0
	mov	%d2, 1
	.loc 1 109 0
	mov	%d4, 0
.LVL12:
	mov	%d5, 96
.LVL13:
	.loc 1 106 0
	st.b	[%a15] 52, %d2
	.loc 1 109 0
	call	Fee_SrvMemSet8
.LVL14:
	.loc 1 112 0
	movh.a	%a2, hi:Fee_FlashProp_st
	mov.d	%d3, %a2
	movh.a	%a12, hi:xRdWr_Address_u32.1997
	addi	%d2, %d3, lo:Fee_FlashProp_st
	madd	%d4, %d2, %d8, 16
	mov.a	%a2, %d4
	ld.w	%d4, [%a2]0
	st.w	[%a12] lo:xRdWr_Address_u32.1997, %d4
.L14:
	.loc 1 121 0
	mov	%d5, 8
	call	Fls_17_Dmu_BlankCheck
.LVL15:
	jeq	%d2, 1, .L53
	.loc 1 124 0
	mov	%d15, 2
	st.b	[%a15] 52, %d15
	mov	%d2, 0
	.loc 1 413 0
	ret
.LVL16:
.L5:
	movh.a	%a12, hi:xRdWr_Address_u32.1997
	ld.w	%d4, [%a12] lo:xRdWr_Address_u32.1997
.LVL17:
	j	.L14
.LVL18:
.L13:
	.loc 1 362 0
	mov	%d2, 1
	j	.L54
.L8:
	.loc 1 203 0
	movh.a	%a13, hi:Fee_LLSectorOrder_st
	lea	%a13, [%a13] lo:Fee_LLSectorOrder_st
	sh	%d9, 3
	addsc.a	%a2, %a13, %d9, 0
	.loc 1 190 0
	mov	%d2, -13570
	st.h	[%SP] 8, %d2
	.loc 1 203 0
	ld.w	%d2, [%a2]0
	.loc 1 191 0
	st.b	[%SP] 10, %d5
	.loc 1 203 0
	ne	%d3, %d2, -1
	and.ne	%d3, %d5, 1
	jz	%d3, .L60
.LVL19:
.L22:
	.loc 1 223 0
	jeq	%d15, 5, .L61
.L25:
	.loc 1 239 0
	sh	%d3, %d2, -16
	.loc 1 245 0
	mov	%d4, 6
.LVL20:
	mov.u	%d5, 51966
.LVL21:
	.loc 1 239 0
	st.b	[%SP] 11, %d3
	.loc 1 245 0
	lea	%a4, [%SP] 8
	.loc 1 240 0
	sh	%d3, %d2, -8
	.loc 1 245 0
	mov	%d6, 0
	.loc 1 240 0
	st.b	[%SP] 12, %d3
	.loc 1 241 0
	st.b	[%SP] 13, %d2
	.loc 1 245 0
	call	Crc_CalculateCRC16
.LVL22:
	.loc 1 251 0
	movh.a	%a2, hi:Fee_MarkerBufBytePtr_cpu8
	.loc 1 245 0
	st.h	[%SP] 14, %d2
	.loc 1 251 0
	ld.w	%d2, [%a2] lo:Fee_MarkerBufBytePtr_cpu8
	lea	%a4, [%SP] 8
	mov.a	%a5, %d2
	st.w	[%SP] 4, %d2
	call	Fee_LLPrepMarkerBufWithMarkerData
.LVL23:
	.loc 1 254 0
	ld.a	%a4, [%SP] 4
	movh.a	%a12, hi:xRdWr_Address_u32.1997
	ld.w	%d4, [%a12] lo:xRdWr_Address_u32.1997
	mov	%d5, 8
	call	Fls_17_Dmu_Write
.LVL24:
	jeq	%d2, 1, .L37
	.loc 1 257 0
	mov	%d15, 5
	st.b	[%a15] 52, %d15
	j	.L17
.LVL25:
.L11:
	.loc 1 324 0
	movh.a	%a2, hi:Fee_MarkerBufBytePtr_cpu8
	ld.a	%a4, [%a2] lo:Fee_MarkerBufBytePtr_cpu8
	movh.a	%a12, hi:xRdWr_Address_u32.1997
	ld.w	%d4, [%a12] lo:xRdWr_Address_u32.1997
.LVL26:
	mov	%d5, 8
.LVL27:
	call	Fls_17_Dmu_Compare
.LVL28:
	jeq	%d2, 1, .L53
	.loc 1 327 0
	mov	%d15, 8
	st.b	[%a15] 52, %d15
	j	.L17
.LVL29:
.L7:
	.loc 1 159 0
	movh.a	%a12, hi:xRdWr_Address_u32.1997
	ld.w	%d4, [%a12] lo:xRdWr_Address_u32.1997
.LVL30:
	addi	%d2, %d4, 8
	st.w	[%a12] lo:xRdWr_Address_u32.1997, %d2
	.loc 1 162 0
	and	%d3, %d2, 7
	jz	%d3, .L19
	addi	%d2, %d4, 9
	j	.L20
.L36:
	mov	%d2, %d4
.L20:
	and	%d3, %d2, 7
	addi	%d4, %d2, 1
	jnz	%d3, .L36
	st.w	[%a12] lo:xRdWr_Address_u32.1997, %d2
.L19:
	.loc 1 170 0
	movh.a	%a2, hi:Fee_FlashProp_st
	mov.d	%d4, %a2
	addi	%d3, %d4, lo:Fee_FlashProp_st
	madd	%d4, %d3, %d8, 16
	mov.a	%a2, %d4
	ld.w	%d3, [%a2]0
	addi	%d3, %d3, 80
	.loc 1 169 0
	jge.u	%d3, %d2, .L30
	movh.a	%a13, hi:Fee_LLSectorOrder_st
	.loc 1 173 0
	mov	%d2, 3
	lea	%a13, [%a13] lo:Fee_LLSectorOrder_st
	sh	%d9, 3
	movh.a	%a2, hi:Fee_RdWrRetries_u8
	j	.L16
.LVL31:
.L58:
	.loc 1 399 0
	addsc.a	%a13, %a13, %d9, 0
	mov	%d15, 2
	st.b	[%a13] 4, %d15
	j	.L32
.LVL32:
.L53:
	movh.a	%a13, hi:Fee_LLSectorOrder_st
	.loc 1 332 0
	mov	%d2, 6
	lea	%a13, [%a13] lo:Fee_LLSectorOrder_st
	sh	%d9, 3
.LVL33:
	movh.a	%a2, hi:Fee_RdWrRetries_u8
	j	.L16
.LVL34:
.L60:
	.loc 1 213 0
	movh.a	%a2, hi:Fee_RdWrRetries_u8
	ld.bu	%d2, [%a2] lo:Fee_RdWrRetries_u8
	.loc 1 216 0
	movh.a	%a2, hi:Fee_SecChngCnt_u32
	.loc 1 213 0
	jeq	%d2, 3, .L23
	ld.w	%d2, [%a2] lo:Fee_SecChngCnt_u32
.L24:
.LVL35:
	.loc 1 220 0
	addsc.a	%a2, %a13, %d9, 0
	st.w	[%a2]0, %d2
	j	.L22
.LVL36:
.L27:
	.loc 1 298 0
	movh.a	%a12, hi:xRdWr_Address_u32.1997
	ld.w	%d15, [%a12] lo:xRdWr_Address_u32.1997
	.loc 1 295 0
	add	%d2, -1
	st.b	[%a2] lo:Fee_RdWrRetries_u8, %d2
	.loc 1 298 0
	addi	%d2, %d15, 8
	st.w	[%a12] lo:xRdWr_Address_u32.1997, %d2
	.loc 1 301 0
	and	%d2, %d2, 7
	addi	%d15, %d15, 9
	jnz	%d2, .L45
	j	.L30
.L38:
	mov	%d15, %d3
.L45:
	and	%d2, %d15, 7
	add	%d3, %d15, 1
	jnz	%d2, .L38
	st.w	[%a12] lo:xRdWr_Address_u32.1997, %d15
.LVL37:
.L30:
	.loc 1 308 0
	movh.a	%a2, hi:Fee_MarkerBufBytePtr_cpu8
	ld.a	%a4, [%a2] lo:Fee_MarkerBufBytePtr_cpu8
	mov	%d4, 0
	mov	%d5, 96
.LVL38:
	.loc 1 311 0
	mov	%d15, 1
	.loc 1 308 0
	call	Fee_SrvMemSet8
.LVL39:
	.loc 1 311 0
	st.b	[%a15] 52, %d15
	j	.L17
.LVL40:
.L37:
	.loc 1 262 0
	mov	%d2, 6
	movh.a	%a2, hi:Fee_RdWrRetries_u8
	j	.L16
.LVL41:
.L61:
	.loc 1 225 0
	ld.w	%d2, [%a15] 24
.LVL42:
	j	.L25
.LVL43:
.L23:
	.loc 1 216 0
	ld.w	%d2, [%a2] lo:Fee_SecChngCnt_u32
	add	%d2, 1
	st.w	[%a2] lo:Fee_SecChngCnt_u32, %d2
	j	.L24
.LFE24:
	.size	Fee_LLWriteMarker, .-Fee_LLWriteMarker
.section .data.a4.xRdWr_Address_u32.1997,"aw",@progbits
	.align 2
	.type	xRdWr_Address_u32.1997, @object
	.size	xRdWr_Address_u32.1997, 4
xRdWr_Address_u32.1997:
	.word	-1
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
	.uleb128 0x10
	.align 2
.LEFDE0:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 4 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\inc\\Fls_17_Dmu.h"
	.file 5 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_Prv.h"
	.file 6 ".\\output\\inc/..\\..\\bsw\\Crc\\Crc.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x224e
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_LlMarker.c"
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
	.uaword	0x1d3
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
	.uaword	0x1ff
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
	.uaword	0x23b
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
	.uaword	0x1d3
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
	.uaword	0x1c6
	.uleb128 0x4
	.string	"Fls_17_Dmu_AddressType"
	.byte	0x4
	.uahalf	0xa21
	.uaword	0x22d
	.uleb128 0x4
	.string	"Fls_17_Dmu_LengthType"
	.byte	0x4
	.uahalf	0xa25
	.uaword	0x22d
	.uleb128 0x5
	.byte	0x4
	.uaword	0x1c6
	.uleb128 0x5
	.byte	0x4
	.uaword	0x307
	.uleb128 0x6
	.uaword	0x1c6
	.uleb128 0x5
	.byte	0x4
	.uaword	0x312
	.uleb128 0x7
	.byte	0x1
	.uleb128 0x8
	.byte	0x1
	.byte	0x5
	.byte	0xdb
	.uaword	0x46e
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
	.uaword	0x4c2
	.uleb128 0xb
	.string	"xPattern"
	.byte	0x5
	.byte	0xee
	.uaword	0x1f1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"xIdent"
	.byte	0x5
	.byte	0xef
	.uaword	0x1c6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.string	"xContent"
	.byte	0x5
	.byte	0xf0
	.uaword	0x4c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xb
	.string	"xChecksum"
	.byte	0x5
	.byte	0xf1
	.uaword	0x1f1
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0
	.uleb128 0xc
	.uaword	0x1c6
	.uaword	0x4d2
	.uleb128 0xd
	.uaword	0x4d2
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x3
	.string	"Fee_MarkerProp_t"
	.byte	0x5
	.byte	0xf2
	.uaword	0x46e
	.uleb128 0xe
	.byte	0x1
	.byte	0x5
	.uahalf	0x103
	.uaword	0x590
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
	.uaword	0x4f6
	.uleb128 0xf
	.byte	0x8
	.byte	0x5
	.uahalf	0x10d
	.uaword	0x600
	.uleb128 0x10
	.string	"SecChngCnt_u32"
	.byte	0x5
	.uahalf	0x10f
	.uaword	0x22d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"SecState_en"
	.byte	0x5
	.uahalf	0x110
	.uaword	0x590
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.string	"xPhySecIdx_u8"
	.byte	0x5
	.uahalf	0x111
	.uaword	0x1c6
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x4
	.string	"Fee_LLSectorOrder_tst"
	.byte	0x5
	.uahalf	0x112
	.uaword	0x5ac
	.uleb128 0xe
	.byte	0x1
	.byte	0x5
	.uahalf	0x116
	.uaword	0x6f5
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
	.uaword	0x61e
	.uleb128 0xf
	.byte	0x10
	.byte	0x5
	.uahalf	0x125
	.uaword	0x7a2
	.uleb128 0x10
	.string	"Fee_PhysStartAddress_u32"
	.byte	0x5
	.uahalf	0x127
	.uaword	0x22d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"Fee_PhysEndAddress_u32"
	.byte	0x5
	.uahalf	0x128
	.uaword	0x22d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.string	"Fee_LogStartAddress_u32"
	.byte	0x5
	.uahalf	0x129
	.uaword	0x22d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.string	"Fee_LogEndAddress_u32"
	.byte	0x5
	.uahalf	0x12a
	.uaword	0x22d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x4
	.string	"Fee_FlashProp_tst"
	.byte	0x5
	.uahalf	0x12b
	.uaword	0x70e
	.uleb128 0xf
	.byte	0x10
	.byte	0x5
	.uahalf	0x14c
	.uaword	0x858
	.uleb128 0x10
	.string	"BlockPersistentId_u16"
	.byte	0x5
	.uahalf	0x14e
	.uaword	0x1f1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"Flags_u16"
	.byte	0x5
	.uahalf	0x14f
	.uaword	0x1f1
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x10
	.string	"Length_u16"
	.byte	0x5
	.uahalf	0x150
	.uaword	0x1f1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.string	"JobEndNotification_pfn"
	.byte	0x5
	.uahalf	0x151
	.uaword	0x858
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.string	"JobErrorNotification_pfn"
	.byte	0x5
	.uahalf	0x152
	.uaword	0x858
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x6
	.uaword	0x30c
	.uleb128 0x4
	.string	"Fee_BlockPropertiesType_tst"
	.byte	0x5
	.uahalf	0x153
	.uaword	0x7bc
	.uleb128 0xe
	.byte	0x1
	.byte	0x5
	.uahalf	0x15f
	.uaword	0x9b2
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
	.uaword	0x881
	.uleb128 0xe
	.byte	0x1
	.byte	0x5
	.uahalf	0x16e
	.uaword	0xab5
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
	.uaword	0x9d1
	.uleb128 0xe
	.byte	0x1
	.byte	0x5
	.uahalf	0x183
	.uaword	0xcd0
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
	.uaword	0xad5
	.uleb128 0xe
	.byte	0x1
	.byte	0x5
	.uahalf	0x1b2
	.uaword	0xdaf
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
	.uaword	0xcee
	.uleb128 0xe
	.byte	0x1
	.byte	0x5
	.uahalf	0x1be
	.uaword	0xe7f
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
	.uaword	0xdcc
	.uleb128 0xe
	.byte	0x1
	.byte	0x5
	.uahalf	0x1c9
	.uaword	0xf9c
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
	.uaword	0xe9c
	.uleb128 0xe
	.byte	0x1
	.byte	0x5
	.uahalf	0x1d9
	.uaword	0x110e
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
	.uaword	0xfbd
	.uleb128 0xe
	.byte	0x1
	.byte	0x5
	.uahalf	0x1f7
	.uaword	0x11d2
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
	.uaword	0x112c
	.uleb128 0xe
	.byte	0x1
	.byte	0x5
	.uahalf	0x201
	.uaword	0x124c
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
	.uaword	0x11f3
	.uleb128 0xe
	.byte	0x1
	.byte	0x5
	.uahalf	0x211
	.uaword	0x12b2
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
	.uaword	0x126e
	.uleb128 0xe
	.byte	0x1
	.byte	0x5
	.uahalf	0x219
	.uaword	0x1319
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
	.uaword	0x12d5
	.uleb128 0xe
	.byte	0x1
	.byte	0x5
	.uahalf	0x220
	.uaword	0x138c
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
	.uaword	0x1338
	.uleb128 0xe
	.byte	0x1
	.byte	0x5
	.uahalf	0x23d
	.uaword	0x1489
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
	.uaword	0x13b2
	.uleb128 0xe
	.byte	0x1
	.byte	0x5
	.uahalf	0x259
	.uaword	0x15cc
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
	.uaword	0x14a8
	.uleb128 0xe
	.byte	0x1
	.byte	0x5
	.uahalf	0x269
	.uaword	0x19e6
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
	.uaword	0x15ee
	.uleb128 0xf
	.byte	0x3c
	.byte	0x5
	.uahalf	0x2c1
	.uaword	0x1d81
	.uleb128 0x10
	.string	"xRdAddress"
	.byte	0x5
	.uahalf	0x2c3
	.uaword	0x22d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"xWrAddress"
	.byte	0x5
	.uahalf	0x2c4
	.uaword	0x22d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.string	"xCmpAddress"
	.byte	0x5
	.uahalf	0x2c5
	.uaword	0x22d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.string	"xCrcAddress"
	.byte	0x5
	.uahalf	0x2c6
	.uaword	0x22d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x10
	.string	"xCpyAddress"
	.byte	0x5
	.uahalf	0x2c7
	.uaword	0x22d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.string	"AdrHdSearchStart_u32"
	.byte	0x5
	.uahalf	0x2c8
	.uaword	0x22d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x10
	.string	"xStartAddrNextSector_u32"
	.byte	0x5
	.uahalf	0x2c9
	.uaword	0x22d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x10
	.string	"xHdPg2Address"
	.byte	0x5
	.uahalf	0x2cd
	.uaword	0x22d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x10
	.string	"LastProgrammedAddress_u32"
	.byte	0x5
	.uahalf	0x2d1
	.uaword	0x22d
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x10
	.string	"LastValidHdrAddress_u32"
	.byte	0x5
	.uahalf	0x2d2
	.uaword	0x22d
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x10
	.string	"Fee_LLSecReorg_en"
	.byte	0x5
	.uahalf	0x2d5
	.uaword	0x1489
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x10
	.string	"Fee_LLRedundantCpyChk_en"
	.byte	0x5
	.uahalf	0x2d6
	.uaword	0x15cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x29
	.uleb128 0x10
	.string	"Fee_LLCpyBlkFls2Fls_en"
	.byte	0x5
	.uahalf	0x2d7
	.uaword	0x19e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2a
	.uleb128 0x10
	.string	"Fee_HLWrBlock_en"
	.byte	0x5
	.uahalf	0x2dd
	.uaword	0xab5
	.byte	0x2
	.byte	0x23
	.uleb128 0x2b
	.uleb128 0x10
	.string	"Fee_HLMtBlock_en"
	.byte	0x5
	.uahalf	0x2e0
	.uaword	0xab5
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x10
	.string	"Fee_LLWrBlock_en"
	.byte	0x5
	.uahalf	0x2e3
	.uaword	0xcd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2d
	.uleb128 0x10
	.string	"Fee_HLRdBlock"
	.byte	0x5
	.uahalf	0x2e4
	.uaword	0xab5
	.byte	0x2
	.byte	0x23
	.uleb128 0x2e
	.uleb128 0x10
	.string	"Fee_LLNextUsedWrBlock_en"
	.byte	0x5
	.uahalf	0x2e5
	.uaword	0xcd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2f
	.uleb128 0x10
	.string	"Fee_LLNextEraseWrBlock_en"
	.byte	0x5
	.uahalf	0x2e6
	.uaword	0xcd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x10
	.string	"Fee_LLCompBlk"
	.byte	0x5
	.uahalf	0x2e7
	.uaword	0xdaf
	.byte	0x2
	.byte	0x23
	.uleb128 0x31
	.uleb128 0x10
	.string	"Fee_LLCopyBlk_en"
	.byte	0x5
	.uahalf	0x2e8
	.uaword	0xe7f
	.byte	0x2
	.byte	0x23
	.uleb128 0x32
	.uleb128 0x10
	.string	"Fee_LLCalcCrcBlk_en"
	.byte	0x5
	.uahalf	0x2e9
	.uaword	0xf9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x33
	.uleb128 0x10
	.string	"Fee_LLWrMarker_en"
	.byte	0x5
	.uahalf	0x2ea
	.uaword	0x9b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x10
	.string	"Fee_LLRdState_en"
	.byte	0x5
	.uahalf	0x2eb
	.uaword	0x110e
	.byte	0x2
	.byte	0x23
	.uleb128 0x35
	.uleb128 0x10
	.string	"Fee_LLBlankCheckState_en"
	.byte	0x5
	.uahalf	0x2ec
	.uaword	0x11d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x36
	.uleb128 0x10
	.string	"Fee_LLFindEmptyPageState_en"
	.byte	0x5
	.uahalf	0x2ed
	.uaword	0x124c
	.byte	0x2
	.byte	0x23
	.uleb128 0x37
	.uleb128 0x10
	.string	"Fee_LLSearchBlkHdr_en"
	.byte	0x5
	.uahalf	0x2ee
	.uaword	0x12b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x10
	.string	"Fee_LLBuildUpCache_en"
	.byte	0x5
	.uahalf	0x2fb
	.uaword	0x1319
	.byte	0x2
	.byte	0x23
	.uleb128 0x39
	.uleb128 0x10
	.string	"Fee_LLBuildUpCacheAllSect_en"
	.byte	0x5
	.uahalf	0x2fc
	.uaword	0x138c
	.byte	0x2
	.byte	0x23
	.uleb128 0x3a
	.byte	0
	.uleb128 0x4
	.string	"Fee_RdWrOrder_tst"
	.byte	0x5
	.uahalf	0x2fe
	.uaword	0x1a06
	.uleb128 0xc
	.uaword	0x1c6
	.uaword	0x1dab
	.uleb128 0xd
	.uaword	0x4d2
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.byte	0x5
	.uahalf	0x3b8
	.uaword	0x1dde
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
	.uaword	0x1dab
	.uleb128 0x11
	.byte	0x1
	.string	"Fee_LLWriteMarker"
	.byte	0x1
	.byte	0x40
	.byte	0x1
	.uaword	0x6f5
	.uaword	.LFB24
	.uaword	.LFE24
	.uaword	.LLST0
	.byte	0x1
	.uaword	0x1f8f
	.uleb128 0x12
	.string	"PhySectIdx_u8"
	.byte	0x1
	.byte	0x40
	.uaword	0x1c6
	.uaword	.LLST1
	.uleb128 0x12
	.string	"MarkerID_u8"
	.byte	0x1
	.byte	0x40
	.uaword	0x1c6
	.uaword	.LLST2
	.uleb128 0x13
	.string	"xWrMarker_st"
	.byte	0x1
	.byte	0x42
	.uaword	0x4de
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x14
	.string	"xRetVal_en"
	.byte	0x1
	.byte	0x43
	.uaword	0x6f5
	.uaword	.LLST3
	.uleb128 0x14
	.string	"xSecChngCntTmp_u32"
	.byte	0x1
	.byte	0x44
	.uaword	0x22d
	.uaword	.LLST4
	.uleb128 0x14
	.string	"xLogSectIdx_u8"
	.byte	0x1
	.byte	0x45
	.uaword	0x1c6
	.uaword	.LLST5
	.uleb128 0x13
	.string	"xRdWr_Address_u32"
	.byte	0x1
	.byte	0x46
	.uaword	0x22d
	.byte	0x5
	.byte	0x3
	.uaword	xRdWr_Address_u32.1997
	.uleb128 0x15
	.uaword	.LVL8
	.uaword	0x20d5
	.uleb128 0x15
	.uaword	.LVL10
	.uaword	0x20f2
	.uleb128 0x16
	.uaword	.LVL14
	.uaword	0x2111
	.uaword	0x1f00
	.uleb128 0x17
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x8
	.byte	0x60
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x16
	.uaword	.LVL15
	.uaword	0x213b
	.uaword	0x1f13
	.uleb128 0x17
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x38
	.byte	0
	.uleb128 0x16
	.uaword	.LVL22
	.uaword	0x2175
	.uaword	0x1f38
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
	.byte	0x36
	.uleb128 0x17
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
	.uleb128 0x16
	.uaword	.LVL23
	.uaword	0x21ab
	.uaword	0x1f4c
	.uleb128 0x17
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
	.uleb128 0x16
	.uaword	.LVL24
	.uaword	0x21ee
	.uaword	0x1f66
	.uleb128 0x17
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x38
	.uleb128 0x17
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -12
	.byte	0x6
	.byte	0
	.uleb128 0x16
	.uaword	.LVL28
	.uaword	0x2223
	.uaword	0x1f79
	.uleb128 0x17
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x38
	.byte	0
	.uleb128 0x18
	.uaword	.LVL39
	.uaword	0x2111
	.uleb128 0x17
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x8
	.byte	0x60
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0xc
	.uaword	0x7a2
	.uaword	0x1f9f
	.uleb128 0xd
	.uaword	0x4d2
	.byte	0x1
	.byte	0
	.uleb128 0x19
	.string	"Fee_FlashProp_st"
	.byte	0x5
	.uahalf	0x3fc
	.uaword	0x1fba
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.uaword	0x1f8f
	.uleb128 0x19
	.string	"Fee_RdWrOrder_st"
	.byte	0x5
	.uahalf	0x405
	.uaword	0x1d81
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.uaword	0x600
	.uaword	0x1fea
	.uleb128 0xd
	.uaword	0x4d2
	.byte	0x1
	.byte	0
	.uleb128 0x19
	.string	"Fee_LLSectorOrder_st"
	.byte	0x5
	.uahalf	0x406
	.uaword	0x1fda
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.string	"Fee_MarkerBufBytePtr_cpu8"
	.byte	0x5
	.uahalf	0x413
	.uaword	0x202d
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.uaword	0x2fb
	.uleb128 0x19
	.string	"Fee_stMain"
	.byte	0x5
	.uahalf	0x431
	.uaword	0x1dde
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.string	"Fee_idxLLSectorOrder_au8"
	.byte	0x5
	.uahalf	0x437
	.uaword	0x1d9b
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.string	"Fee_RdWrRetries_u8"
	.byte	0x5
	.uahalf	0x43a
	.uaword	0x1c6
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.uaword	0x85d
	.uaword	0x2097
	.uleb128 0xd
	.uaword	0x4d2
	.byte	0x39
	.byte	0
	.uleb128 0x19
	.string	"Fee_BlockProperties_st"
	.byte	0x5
	.uahalf	0x464
	.uaword	0x2087
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.string	"Fee_SecChngCnt_u32"
	.byte	0x5
	.uahalf	0x49d
	.uaword	0x22d
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.byte	0x1
	.string	"Fee_CheckFlsJobResult"
	.byte	0x5
	.uahalf	0x547
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.byte	0x1
	.string	"Fls_17_Dmu_MainFunction"
	.byte	0x4
	.uahalf	0xc2d
	.byte	0x1
	.byte	0x1
	.uleb128 0x1b
	.byte	0x1
	.string	"Fee_SrvMemSet8"
	.byte	0x5
	.uahalf	0x537
	.byte	0x1
	.byte	0x1
	.uaword	0x213b
	.uleb128 0x1c
	.uaword	0x2fb
	.uleb128 0x1c
	.uaword	0x22d
	.uleb128 0x1c
	.uaword	0x22d
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.string	"Fls_17_Dmu_BlankCheck"
	.byte	0x4
	.uahalf	0xb94
	.byte	0x1
	.uaword	0x2a8
	.byte	0x1
	.uaword	0x216b
	.uleb128 0x1c
	.uaword	0x216b
	.uleb128 0x1c
	.uaword	0x2170
	.byte	0
	.uleb128 0x6
	.uaword	0x2be
	.uleb128 0x6
	.uaword	0x2dd
	.uleb128 0x1e
	.byte	0x1
	.string	"Crc_CalculateCRC16"
	.byte	0x6
	.byte	0x40
	.byte	0x1
	.uaword	0x1f1
	.byte	0x1
	.uaword	0x21ab
	.uleb128 0x1c
	.uaword	0x301
	.uleb128 0x1c
	.uaword	0x22d
	.uleb128 0x1c
	.uaword	0x1f1
	.uleb128 0x1c
	.uaword	0x278
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.string	"Fee_LLPrepMarkerBufWithMarkerData"
	.byte	0x5
	.uahalf	0x4e5
	.byte	0x1
	.byte	0x1
	.uaword	0x21e3
	.uleb128 0x1c
	.uaword	0x21e3
	.uleb128 0x1c
	.uaword	0x2fb
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x21e9
	.uleb128 0x6
	.uaword	0x4de
	.uleb128 0x1d
	.byte	0x1
	.string	"Fls_17_Dmu_Write"
	.byte	0x4
	.uahalf	0xb4b
	.byte	0x1
	.uaword	0x2a8
	.byte	0x1
	.uaword	0x221e
	.uleb128 0x1c
	.uaword	0x216b
	.uleb128 0x1c
	.uaword	0x221e
	.uleb128 0x1c
	.uaword	0x2170
	.byte	0
	.uleb128 0x6
	.uaword	0x301
	.uleb128 0x1f
	.byte	0x1
	.string	"Fls_17_Dmu_Compare"
	.byte	0x4
	.uahalf	0xb6d
	.byte	0x1
	.uaword	0x2a8
	.byte	0x1
	.uleb128 0x1c
	.uaword	0x216b
	.uleb128 0x1c
	.uaword	0x221e
	.uleb128 0x1c
	.uaword	0x2170
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x12
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
	.uleb128 0xa
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.byte	0x1
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uaword	.LFB24
	.uaword	.LCFI0
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0
	.uaword	.LFE24
	.uahalf	0x2
	.byte	0x8a
	.sleb128 16
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL7
	.uaword	.LVL9
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LVL10-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL10-1
	.uaword	.LVL11
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL12
	.uaword	.LVL16
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL20
	.uaword	.LVL25
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL26
	.uaword	.LVL29
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL29
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL30
	.uaword	.LVL34
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL34
	.uaword	.LVL37
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL37
	.uaword	.LVL41
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL41
	.uaword	.LFE24
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL0
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL7
	.uaword	.LVL9
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LVL10-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL10-1
	.uaword	.LVL11
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL13
	.uaword	.LVL16
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL21
	.uaword	.LVL22-1
	.uahalf	0x2
	.byte	0x91
	.sleb128 -6
	.uaword	.LVL22-1
	.uaword	.LVL25
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL27
	.uaword	.LVL29
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL29
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL31
	.uaword	.LVL34
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL34
	.uaword	.LVL38
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL38
	.uaword	.LVL41
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL41
	.uaword	.LFE24
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL0
	.uaword	.LVL3
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL6
	.uaword	.LVL31
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL31
	.uaword	.LVL32
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL32
	.uaword	.LFE24
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL0
	.uaword	.LVL5
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL8
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LVL19
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LVL22-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL25
	.uaword	.LVL31
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL32
	.uaword	.LVL35
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL35
	.uaword	.LVL36
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL36
	.uaword	.LVL40
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL41
	.uaword	.LVL43
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL43
	.uaword	.LFE24
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL10-1
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL14-1
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL28-1
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL39-1
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x59
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
	.extern	Fee_SecChngCnt_u32,STT_OBJECT,4
	.extern	Fls_17_Dmu_Compare,STT_FUNC,0
	.extern	Fls_17_Dmu_Write,STT_FUNC,0
	.extern	Fee_LLPrepMarkerBufWithMarkerData,STT_FUNC,0
	.extern	Crc_CalculateCRC16,STT_FUNC,0
	.extern	Fls_17_Dmu_BlankCheck,STT_FUNC,0
	.extern	Fee_FlashProp_st,STT_OBJECT,32
	.extern	Fee_SrvMemSet8,STT_FUNC,0
	.extern	Fee_MarkerBufBytePtr_cpu8,STT_OBJECT,4
	.extern	Fls_17_Dmu_MainFunction,STT_FUNC,0
	.extern	Fee_CheckFlsJobResult,STT_FUNC,0
	.extern	Fee_stMain,STT_OBJECT,1
	.extern	Fee_RdWrRetries_u8,STT_OBJECT,1
	.extern	Fee_LLSectorOrder_st,STT_OBJECT,16
	.extern	Fee_RdWrOrder_st,STT_OBJECT,60
	.extern	Fee_idxLLSectorOrder_au8,STT_OBJECT,2
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
