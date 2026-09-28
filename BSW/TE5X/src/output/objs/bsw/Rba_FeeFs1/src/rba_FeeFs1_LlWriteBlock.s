	.file	"rba_FeeFs1_LlWriteBlock.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Fee_LLWriteBlock,"ax",@progbits
	.align 1
	.global	Fee_LLWriteBlock
	.type	Fee_LLWriteBlock, @function
Fee_LLWriteBlock:
.LFB24:
	.file 1 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_LlWriteBlock.c"
	.loc 1 68 0
.LVL0:
	.loc 1 99 0
	movh.a	%a15, hi:Fee_RdWrOrder_st
	lea	%a15, [%a15] lo:Fee_RdWrOrder_st
	ld.bu	%d15, [%a15] 45
	.loc 1 68 0
	sub.a	%SP, 8
.LCFI0:
	.loc 1 99 0
	ge.u	%d2, %d15, 17
	jz	%d2, .L123
.LVL1:
.L64:
	movh.a	%a13, hi:Fee_GlobInfoWrBlock_st
	.loc 1 273 0
	mov	%d2, 6
	lea	%a13, [%a13] lo:Fee_GlobInfoWrBlock_st
.LVL2:
.L31:
	.loc 1 1249 0
	mov	%d15, 0
	st.b	[%a15] 45, %d15
	.loc 1 1252 0
	st.b	[%a13] 8, %d15
	ret
.LVL3:
.L123:
	.loc 1 99 0
	movh.a	%a2, hi:.L4
	lea	%a2, [%a2] lo:.L4
	addsc.a	%a2, %a2, %d15, 2
	mov.aa	%a12, %a4
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
	j	.L7
	.code32
	j	.L63
	.code32
	j	.L10
	.code32
	j	.L7
	.code32
	j	.L63
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
	.code32
	j	.L16
	.code32
	j	.L7
.L63:
	movh.a	%a13, hi:Fee_GlobInfoWrBlock_st
	.loc 1 671 0
	mov	%d2, 3
	lea	%a13, [%a13] lo:Fee_GlobInfoWrBlock_st
	j	.L31
.L11:
	.loc 1 895 0
	ld.w	%d4, [%a15] 4
	call	Fee_GetPhysSectorByAddress
.LVL4:
	.loc 1 898 0
	mov	%d5, 3
	mov	%d4, %d2
	.loc 1 895 0
	mov	%d15, %d2
.LVL5:
	.loc 1 898 0
	call	Fee_LLWriteMarker
.LVL6:
	jz	%d2, .L120
	.loc 1 908 0
	movh.a	%a2, hi:Fee_idxLLSectorOrder_au8
	lea	%a2, [%a2] lo:Fee_idxLLSectorOrder_au8
	addsc.a	%a2, %a2, %d15, 0
	ld.bu	%d4, [%a2]0
	.loc 1 911 0
	movh.a	%a2, hi:Fee_NumFlashBanksUsed_u8
	.loc 1 908 0
	add	%d4, 1
	.loc 1 911 0
	ld.bu	%d15, [%a2] lo:Fee_NumFlashBanksUsed_u8
.LVL7:
	.loc 1 908 0
	and	%d4, %d4, 255
.LVL8:
	.loc 1 911 0
	jlt.u	%d4, %d15, .L52
	.loc 1 914 0
	add	%d4, %d15, -1
.LVL9:
	and	%d4, %d4, 255
.LVL10:
.L52:
	.loc 1 918 0
	movh.a	%a2, hi:Fee_LLSectorOrder_st
	lea	%a2, [%a2] lo:Fee_LLSectorOrder_st
	addsc.a	%a2, %a2, %d4, 3
	.loc 1 921 0
	ld.bu	%d15, [%a2] 4
	.loc 1 918 0
	ld.bu	%d8, [%a2] 5
.LVL11:
	.loc 1 921 0
	and	%d15, %d15, 251
	jz	%d15, .L124
	.loc 1 941 0
	movh.a	%a2, hi:Fee_FlashProp_st
.LVL12:
	mov.d	%d4, %a2
.LVL13:
	addi	%d15, %d4, lo:Fee_FlashProp_st
	madd	%d2, %d15, %d8, 16
	.loc 1 944 0
	mov	%d15, 12
	st.b	[%a15] 45, %d15
	.loc 1 941 0
	mov.a	%a2, %d2
	ld.w	%d3, [%a2] 8
	st.w	[%a15] 4, %d3
.LVL14:
.L120:
.LBB10:
	.loc 1 336 0
	mov	%d2, 0
.LBE10:
	.loc 1 1256 0
	ret
.LVL15:
.L12:
	.loc 1 954 0
	call	Fee_LLEraseSector
.LVL16:
	.loc 1 957 0
	jz	%d2, .L120
	.loc 1 962 0
	eq	%d15, %d2, 6
	or.eq	%d15, %d2, 3
	jz	%d15, .L54
	movh.a	%a13, hi:Fee_GlobInfoWrBlock_st
	lea	%a13, [%a13] lo:Fee_GlobInfoWrBlock_st
.LVL17:
.L61:
	.loc 1 967 0
	mov	%d2, 3
	j	.L31
.LVL18:
.L13:
	.loc 1 982 0
	ld.w	%d4, [%a15] 4
	call	Fee_GetPhysSectorByAddress
.LVL19:
	.loc 1 985 0
	mov	%d4, %d2
	.loc 1 982 0
	mov	%d15, %d2
.LVL20:
	.loc 1 985 0
	call	Fee_LLUpdateCacheStForSect
.LVL21:
	.loc 1 988 0
	mov	%d4, %d15
	mov	%d5, 2
	call	Fee_LLWriteMarker
.LVL22:
	.loc 1 991 0
	jz	%d2, .L120
	.loc 1 997 0
	jne	%d2, 1, .L55
	.loc 1 1001 0
	movh.a	%a2, hi:Fee_FlashProp_st
	lea	%a3, [%a2] lo:Fee_FlashProp_st
	sh	%d15, 4
.LVL23:
	addsc.a	%a2, %a3, %d15, 0
	ld.w	%d2, [%a2] 8
.LVL24:
	.loc 1 1004 0
	movh.a	%a2, hi:cntProgrammedBytes_u32.2012
	ld.w	%d3, [%a2] lo:cntProgrammedBytes_u32.2012
	jz	%d3, .L56
	.loc 1 1008 0
	ld.hu	%d4, [%a12] 10
	addi	%d2, %d2, 14
.LVL25:
	add	%d2, %d4
	sub	%d2, %d3
.LVL26:
	.loc 1 1011 0
	and	%d3, %d2, 7
	jz	%d3, .L57
.L58:
	.loc 1 1013 0
	add	%d2, 1
.LVL27:
	.loc 1 1011 0
	and	%d3, %d2, 7
	jnz	%d3, .L58
.L57:
	.loc 1 1017 0
	addsc.a	%a2, %a3, %d15, 0
	ld.w	%d15, [%a2] 12
	.loc 1 1019 0
	lt.u	%d15, %d2, %d15
	cmovn	%d2, %d15, -1
.LVL28:
.L56:
	.loc 1 1031 0
	mov	%d15, 13
	.loc 1 1028 0
	st.w	[%a15] 24, %d2
	.loc 1 1031 0
	st.b	[%a15] 45, %d15
	j	.L120
.LVL29:
.L14:
	.loc 1 1060 0
	ld.w	%d4, [%a15] 4
	call	Fee_GetPhysSectorByAddress
.LVL30:
	.loc 1 1063 0
	mov	%d5, 5
	mov	%d4, %d2
	call	Fee_LLWriteMarker
.LVL31:
	.loc 1 1066 0
	jz	%d2, .L120
	.loc 1 1069 0
	ld.bu	%d15, [%a15] 47
	st.b	[%a15] 45, %d15
	j	.L120
.LVL32:
.L15:
	.loc 1 1078 0
	movh.a	%a2, hi:Fee_GlobInfoLastRdHeader_st
	movh.a	%a14, hi:Fee_GlobInfoWrBlock_st
	lea	%a2, [%a2] lo:Fee_GlobInfoLastRdHeader_st
	ld.hu	%d2, [%a14] lo:Fee_GlobInfoWrBlock_st
	ld.hu	%d15, [%a2] 10
	lea	%a13, [%a14] lo:Fee_GlobInfoWrBlock_st
	jlt.u	%d2, %d15, .L125
	.loc 1 1107 0
	ld.w	%d15, [%a15] 28
	jeq	%d15, -1, .L60
	.loc 1 1110 0
	mov	%d15, 15
	st.b	[%a15] 45, %d15
	j	.L120
.L3:
	.loc 1 109 0
	movh.a	%a2, hi:Fee_DataBytePtr_cpu8
	ld.a	%a4, [%a2] lo:Fee_DataBytePtr_cpu8
.LVL33:
	.loc 1 105 0
	mov	%d15, 0
	.loc 1 109 0
	mov	%d4, 0
	mov	%d5, 256
	.loc 1 105 0
	st.b	[%a15] 47, %d15
	.loc 1 106 0
	st.b	[%a15] 48, %d15
	.loc 1 109 0
	call	Fee_SrvMemSet8
.LVL34:
	.loc 1 112 0
	ld.w	%d4, [%a15] 4
	call	Fee_GetPhysSectorByAddress
.LVL35:
	movh.a	%a2, hi:Fee_idxLLSectorOrder_au8
	lea	%a2, [%a2] lo:Fee_idxLLSectorOrder_au8
	addsc.a	%a2, %a2, %d2, 0
	.loc 1 127 0
	movh.a	%a3, hi:Fee_LLSectorOrder_st
	.loc 1 112 0
	ld.bu	%d4, [%a2]0
.LVL36:
	.loc 1 116 0
	movh.a	%a2, hi:Fee_DataByteStartCrc_u32
.LVL37:
	ld.w	%d15, [%a2] lo:Fee_DataByteStartCrc_u32
	movh.a	%a2, hi:xBlkCrc32Result_u32.2010
	st.w	[%a2] lo:xBlkCrc32Result_u32.2010, %d15
	.loc 1 127 0
	lea	%a3, [%a3] lo:Fee_LLSectorOrder_st
	.loc 1 119 0
	mov	%d15, 0
	movh.a	%a2, hi:cntProgrammedBytes_u32.2012
	st.w	[%a2] lo:cntProgrammedBytes_u32.2012, %d15
	.loc 1 127 0
	addsc.a	%a2, %a3, %d4, 3
	.loc 1 123 0
	st.w	[%a15] 28, %d15
	.loc 1 127 0
	ld.bu	%d15, [%a2] 4
	jge.u	%d15, 5, .L64
	movh.a	%a2, hi:.L18
	lea	%a2, [%a2] lo:.L18
	addsc.a	%a2, %a2, %d15, 2
	ji	%a2
	.align 2
	.align 2
.L18:
	.code32
	j	.L17
	.code32
	j	.L19
	.code32
	j	.L20
	.code32
	j	.L21
	.code32
	j	.L17
.LVL38:
.L5:
	.loc 1 521 0
	ld.w	%d4, [%a15] 4
	call	Fee_CalculateNumOfFreeBytesInCurSector
.LVL39:
	lt.u	%d2, %d2, 16
	jnz	%d2, .L32
	.loc 1 526 0
	ld.hu	%d15, [%a12] 10
	addi	%d15, %d15, 14
	lt.u	%d15, %d15, 17
	jz	%d15, .L126
.LVL40:
	.loc 1 544 0
	mov	%d15, -1
	st.w	[%a15] 28, %d15
	mov	%d5, 16
	movh.a	%a13, hi:Fee_PageBytePtr_cpu8
.LVL41:
.L34:
	.loc 1 550 0
	ld.a	%a4, [%a13] lo:Fee_PageBytePtr_cpu8
	ld.w	%d4, [%a15] 4
	call	Fls_17_Dmu_Write
.LVL42:
	jeq	%d2, 1, .L64
	.loc 1 552 0
	movh.a	%a2, hi:cntProgrammedBytes_u32.2012
	ld.w	%d2, [%a2] lo:cntProgrammedBytes_u32.2012
	.loc 1 555 0
	mov.aa	%a13, %a15
	.loc 1 552 0
	addi	%d15, %d2, 16
	st.w	[%a2] lo:cntProgrammedBytes_u32.2012, %d15
	.loc 1 555 0
	ld.w	%d15, [+%a13]4
	.loc 1 558 0
	movh	%d5, 45055
	.loc 1 555 0
	st.w	[%a12]0, %d15
	.loc 1 558 0
	ld.hu	%d4, [%a12] 12
	addi	%d5, %d5, -13570
	call	Fee_LLUpdateAddressInCache
.LVL43:
	.loc 1 565 0
	mov	%d15, 3
	.loc 1 562 0
	mov.aa	%a4, %a13
	mov	%d4, 16
	mov	%d5, 1
	call	Fee_IncAddressInsideSector
.LVL44:
	.loc 1 565 0
	st.b	[%a15] 45, %d15
	j	.L120
.LVL45:
.L6:
.LBB24:
	.loc 1 288 0
	movh.a	%a14, hi:Fee_GlobInfoWrBlock_st
	lea	%a13, [%a14] lo:Fee_GlobInfoWrBlock_st
	ld.bu	%d15, [%a13] 8
	jnz	%d15, .L28
.LVL46:
.LBB11:
	.loc 1 296 0
	movh.a	%a2, hi:Fee_idxActQueue_u8
	ld.bu	%d15, [%a2] lo:Fee_idxActQueue_u8
	movh.a	%a2, hi:Fee_OrderFifo_st
	mov.d	%d3, %a2
	addi	%d2, %d3, lo:Fee_OrderFifo_st
	madd	%d4, %d2, %d15, 16
	mov.a	%a2, %d4
	.loc 1 298 0
	ld.hu	%d15, [%a2] 6
	movh.a	%a2, hi:Fee_BlockProperties_st
	mov.d	%d3, %a2
	addi	%d2, %d3, lo:Fee_BlockProperties_st
	madd	%d4, %d2, %d15, 16
.LBB12:
.LBB13:
	.file 2 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_Prv.h"
	.loc 2 1562 0
	ld.hu	%d3, [%a4] 10
.LBE13:
.LBE12:
	.loc 1 298 0
	mov.a	%a2, %d4
.LBB21:
.LBB18:
	.loc 2 1562 0
	addi	%d5, %d3, 14
.LBE18:
.LBE21:
	.loc 1 298 0
	ld.h	%d2, [%a2] 2
.LBB22:
.LBB19:
.LBB14:
.LBB15:
	.loc 2 1533 0
	and	%d15, %d5, 7
.LBE15:
.LBE14:
.LBE19:
.LBE22:
	.loc 1 298 0
	and	%d2, %d2, 1
.LVL47:
.LBB23:
.LBB20:
.LBB17:
.LBB16:
	.loc 2 1535 0
	jz	%d15, .L29
	addi	%d5, %d3, 22
.LVL48:
	.loc 2 1537 0
	sub	%d5, %d15
.LVL49:
.L29:
.LBE16:
.LBE17:
	.loc 2 1582 0
	sh	%d5, %d5, %d2
.LVL50:
.LBE20:
.LBE23:
	.loc 1 310 0
	movh	%d4, 1
	extr.u	%d5, %d5, 0, 16
.LVL51:
	addi	%d4, %d4, 8
	call	Fee_LLCheckReorganizationNeed
.LVL52:
	jne	%d2, 5, .L28
	.loc 1 317 0
	mov	%d2, 5
	j	.L31
.LVL53:
.L7:
.LBE11:
.LBE24:
	.loc 1 612 0
	movh.a	%a15, hi:Fee_stMain
	ld.bu	%d15, [%a15] lo:Fee_stMain
	jz	%d15, .L127
	.loc 1 620 0
	call	Fee_CheckFlsJobResult
.LVL54:
	.loc 1 623 0
	j	.L120
.LVL55:
.L16:
	.loc 1 1203 0
	movh.a	%a4, hi:Fee_hdr2Buffer_au8
.LVL56:
	ld.w	%d4, [%a15] 28
	lea	%a4, [%a4] lo:Fee_hdr2Buffer_au8
	mov	%d5, 8
	call	Fls_17_Dmu_Write
.LVL57:
	jeq	%d2, 1, .L64
	.loc 1 1206 0
	mov	%d15, -1
	st.w	[%a15] 28, %d15
	.loc 1 1208 0
	mov	%d15, 16
	st.b	[%a15] 45, %d15
	j	.L120
.LVL58:
.L10:
	.loc 1 693 0
	movh.a	%a14, hi:Fee_GlobInfoWrBlock_st
	ld.h	%d2, [%a4] 10
	ld.h	%d15, [%a14] lo:Fee_GlobInfoWrBlock_st
	sub	%d15, %d2, %d15
	extr.u	%d15, %d15, 0, 16
.LVL59:
	.loc 1 696 0
	jnz	%d15, .L39
	.loc 1 699 0
	mov	%d15, 14
.LVL60:
	st.b	[%a15] 45, %d15
	j	.L120
.LVL61:
.L8:
	.loc 1 630 0
	ld.w	%d5, [%a15] 28
	.loc 1 643 0
	movh.a	%a2, hi:Fee_PageBytePtr_cpu8
	ld.w	%d4, [%a4]0
	ld.a	%a4, [%a2] lo:Fee_PageBytePtr_cpu8
.LVL62:
	.loc 1 630 0
	ne	%d5, %d5, -1
	.loc 1 643 0
	mov	%d15, 8
	sel	%d5, %d5, %d15, 16
	call	Fls_17_Dmu_Compare
.LVL63:
	jnz	%d2, .L64
	.loc 1 653 0
	mov	%d15, 5
	st.b	[%a15] 45, %d15
	j	.L120
.LVL64:
.L28:
.LBB25:
	.loc 1 336 0
	mov	%d15, 1
	st.b	[%a15] 45, %d15
	j	.L120
.LVL65:
.L32:
.LBE25:
	.loc 1 580 0
	mov	%d15, 10
	st.b	[%a15] 45, %d15
	.loc 1 583 0
	mov	%d15, 1
	st.b	[%a15] 47, %d15
	j	.L120
.LVL66:
.L127:
	.loc 1 615 0
	call	Fls_17_Dmu_MainFunction
.LVL67:
	.loc 1 620 0
	call	Fee_CheckFlsJobResult
.LVL68:
	j	.L120
.LVL69:
.L19:
	.loc 1 261 0
	mov	%d15, 12
	st.b	[%a15] 45, %d15
	.loc 1 264 0
	mov	%d15, 2
	st.b	[%a15] 47, %d15
	.loc 1 266 0
	j	.L120
.LVL70:
.L20:
	.loc 1 133 0
	mov	%d15, 2
	st.b	[%a15] 45, %d15
	.loc 1 135 0
	j	.L120
.L17:
	.loc 1 148 0
	mov	%d15, 11
	.loc 1 145 0
	call	Fee_LLSetEraseSector
.LVL71:
	.loc 1 148 0
	st.b	[%a15] 45, %d15
	.loc 1 151 0
	mov	%d15, 0
	st.b	[%a15] 48, %d15
	.loc 1 153 0
	j	.L120
.LVL72:
.L21:
	.loc 1 165 0
	movh.a	%a12, hi:Fee_NumFlashBanksUsed_u8
.LVL73:
	.loc 1 162 0
	add	%d4, 1
	.loc 1 165 0
	ld.bu	%d15, [%a12] lo:Fee_NumFlashBanksUsed_u8
	.loc 1 162 0
	and	%d4, %d4, 255
.LVL74:
	.loc 1 165 0
	jge.u	%d4, %d15, .L128
.LVL75:
	.loc 1 219 0
	addsc.a	%a3, %a3, %d4, 3
	.loc 1 222 0
	movh.a	%a2, hi:Fee_FlashProp_st
	mov.d	%d3, %a2
	ld.bu	%d15, [%a3] 5
	addi	%d2, %d3, lo:Fee_FlashProp_st
	madd	%d3, %d2, %d15, 16
	mov.a	%a2, %d3
	ld.w	%d15, [%a2] 8
	st.w	[%a15] 4, %d15
	.loc 1 225 0
	ld.bu	%d15, [%a3] 4
	jeq	%d15, 1, .L19
	.loc 1 243 0
	mov	%d15, 11
	.loc 1 240 0
	call	Fee_LLSetEraseSector
.LVL76:
	.loc 1 243 0
	st.b	[%a15] 45, %d15
	.loc 1 246 0
	mov	%d15, 12
	st.b	[%a15] 48, %d15
	.loc 1 249 0
	mov	%d15, 2
	st.b	[%a15] 47, %d15
	j	.L120
.LVL77:
.L60:
	.loc 1 1116 0
	st.a	[%SP]0, %a5
	call	Fee_LLCalcBlkCrcInFlash
.LVL78:
	.loc 1 1119 0
	ld.a	%a5, [%SP]0
	.loc 1 1116 0
	mov	%d15, %d2
.LVL79:
	.loc 1 1119 0
	jz	%d2, .L120
	.loc 1 1122 0
	jne	%d2, 1, .L61
	.loc 1 1129 0
	movh.a	%a2, hi:Fee_idxActQueue_u8
	ld.bu	%d2, [%a2] lo:Fee_idxActQueue_u8
.LVL80:
	movh.a	%a2, hi:Fee_OrderFifo_st
	mov.d	%d4, %a2
	addi	%d3, %d4, lo:Fee_OrderFifo_st
	madd	%d4, %d3, %d2, 16
	movh	%d3, hi:Fee_BlockProperties_st
	addi	%d3, %d3, lo:Fee_BlockProperties_st
	mov.a	%a2, %d4
	ld.hu	%d2, [%a2] 6
	madd	%d4, %d3, %d2, 16
	mov.a	%a2, %d4
	ld.h	%d2, [%a2] 2
	jz.t	%d2, 0, .L69
	.loc 1 1130 0
	ld.bu	%d3, [%a13] 8
	.loc 1 1151 0
	mov	%d2, 1
	.loc 1 1130 0
	jnz	%d3, .L31
	.loc 1 1134 0
	st.b	[%a15] 45, %d3
	.loc 1 1137 0
	st.b	[%a13] 8, %d15
	.loc 1 1145 0
	mov.aa	%a4, %a12
	st.a	[%SP]0, %a5
	call	Fee_LLPrepPageBufWithHdrDataStart
.LVL81:
	.loc 1 1146 0
	ld.a	%a5, [%SP]0
	mov.aa	%a4, %a12
	ld.w	%d4, [%a12] 4
	call	Fee_LLPrepPageBufWithHdrDataEnd
.LVL82:
	j	.L120
.LVL83:
.L125:
	.loc 1 1081 0
	ld.w	%d4, [%a15] 4
	call	Fee_CalculateNumOfFreeBytesInCurSector
.LVL84:
	jz	%d2, .L40
	.loc 1 1100 0
	mov	%d15, 7
	st.b	[%a15] 45, %d15
	j	.L120
.LVL85:
.L40:
	.loc 1 882 0
	mov	%d15, 10
	st.b	[%a15] 45, %d15
	.loc 1 885 0
	mov	%d15, 7
	st.b	[%a15] 47, %d15
	j	.L120
.LVL86:
.L39:
	.loc 1 704 0
	ld.w	%d4, [%a15] 4
	st.a	[%SP]0, %a5
	call	Fee_CalculateNumOfFreeBytesInCurSector
.LVL87:
	.loc 1 707 0
	ld.a	%a5, [%SP]0
	jlt.u	%d2, 8, .L40
	.loc 1 713 0
	lt.u	%d3, %d2, %d15
	extr.u	%d2, %d2, 0, 16
.LVL88:
	sel	%d15, %d3, %d2, %d15
.LVL89:
	.loc 1 718 0
	ge.u	%d2, %d15, 257
	jnz	%d2, .L67
	.loc 1 726 0
	and	%d2, %d15, 7
	.loc 1 729 0
	rsub	%d8, %d2, 8
	and	%d8, %d8, 255
	add	%d8, %d15
	mov	%d11, %d15
	sel	%d8, %d2, %d8, %d15
.LVL90:
.L42:
	.loc 1 733 0
	movh.a	%a2, hi:Fee_DataBytePtr_cpu8
	ld.w	%d3, [%a2] lo:Fee_DataBytePtr_cpu8
	mov	%d4, 0
	mov.a	%a4, %d3
	mov	%d5, %d8
	st.w	[%SP] 4, %d3
	st.a	[%SP]0, %a5
	call	Fee_SrvMemSet8
.LVL91:
	.loc 1 744 0
	movh.a	%a2, hi:Fee_idxActQueue_u8
	ld.bu	%d5, [%a2] lo:Fee_idxActQueue_u8
	movh.a	%a2, hi:Fee_OrderFifo_st
	mov.d	%d4, %a2
	.loc 1 741 0
	ld.hu	%d6, [%a12] 10
	.loc 1 744 0
	addi	%d0, %d4, lo:Fee_OrderFifo_st
	madd	%d4, %d0, %d5, 16
	.loc 1 741 0
	ld.hu	%d3, [%a14] lo:Fee_GlobInfoWrBlock_st
	.loc 1 738 0
	mov	%d2, 0
	.loc 1 744 0
	mov.a	%a2, %d4
	.loc 1 738 0
	movh.a	%a13, hi:xNumCrcBytesDone_u8.2011
	.loc 1 744 0
	ld.hu	%d5, [%a2] 6
	movh.a	%a2, hi:Fee_BlockProperties_st
	mov.d	%d4, %a2
	.loc 1 741 0
	sub	%d7, %d6, %d3
	.loc 1 744 0
	addi	%d0, %d4, lo:Fee_BlockProperties_st
	madd	%d4, %d0, %d5, 16
	.loc 1 738 0
	st.b	[%a13] lo:xNumCrcBytesDone_u8.2011, %d2
	.loc 1 741 0
	sub	%d2, %d7, %d15
	.loc 1 744 0
	mov.a	%a2, %d4
	.loc 1 741 0
	extr.u	%d2, %d2, 0, 16
.LVL92:
	.loc 1 744 0
	ld.h	%d5, [%a2] 2
	ld.a	%a5, [%SP]0
	jz.t	%d5, 5, .L44
	.loc 1 749 0
	jge.u	%d2, 4, .L45
	mov	%d10, 0
	.loc 1 763 0
	jge	%d7, 5, .L46
.LVL93:
	addi	%d10, %d3, 4
	.loc 1 771 0
	sub	%d10, %d6
	and	%d10, %d10, 255
.LVL94:
.L46:
	.loc 1 785 0
	lt.u	%d4, %d15, 4
	and.eq	%d4, %d2, 0
	.loc 1 793 0
	rsub	%d2, %d2, 4
.LVL95:
	.loc 1 788 0
	and	%d2, %d2, 255
	and	%d5, %d15, 255
	movh.a	%a2, hi:xBlkCrc32Result_u32.2010
	seln	%d9, %d4, %d2, %d5
.LVL96:
	ld.w	%d2, [%a2] lo:xBlkCrc32Result_u32.2010
	.loc 1 798 0
	mov.a	%a2, 0
	jlt.u	%d9, %d15, .L129
.LVL97:
.L50:
	.loc 1 823 0 discriminator 1
	ld.a	%a3, [%SP] 4
	.loc 1 824 0 discriminator 1
	rsub	%d4, %d10, 3
	sh	%d4, 3
	rsub	%d3, %d4, 0
	.loc 1 823 0 discriminator 1
	add.a	%a2, %a3
	.loc 1 824 0 discriminator 1
	sh	%d3, %d2, %d3
	st.b	[%a2]0, %d3
.LVL98:
	.loc 1 820 0 discriminator 1
	jeq	%d9, 1, .L51
	.loc 1 824 0
	rsub	%d4, %d10, 2
	sh	%d4, 3
	rsub	%d3, %d4, 0
	sh	%d3, %d2, %d3
	st.b	[%a2] 1, %d3
.LVL99:
	.loc 1 820 0
	jeq	%d9, 2, .L51
	.loc 1 824 0
	rsub	%d4, %d10, 1
	sh	%d4, 3
	rsub	%d3, %d4, 0
	sh	%d3, %d2, %d3
	st.b	[%a2] 2, %d3
.LVL100:
	.loc 1 820 0
	jne	%d9, 4, .L51
	.loc 1 824 0 discriminator 3
	rsub	%d10
	sh	%d10, 3
	rsub	%d3, %d10, 0
	sh	%d3, %d2, %d3
	st.b	[%a2] 3, %d3
.LVL101:
.L51:
	.loc 1 855 0
	ld.a	%a4, [%SP] 4
	ld.w	%d4, [%a15] 4
	mov	%d5, %d8
	call	Fls_17_Dmu_Write
.LVL102:
	jeq	%d2, 1, .L64
	.loc 1 858 0
	movh.a	%a2, hi:cntProgrammedBytes_u32.2012
	ld.w	%d2, [%a2] lo:cntProgrammedBytes_u32.2012
	.loc 1 866 0
	mov	%d4, %d15
	.loc 1 858 0
	add	%d2, %d15
	st.w	[%a2] lo:cntProgrammedBytes_u32.2012, %d2
	.loc 1 861 0
	ld.h	%d2, [%a14] lo:Fee_GlobInfoWrBlock_st
	.loc 1 866 0
	lea	%a4, [%a15] 4
	.loc 1 861 0
	add	%d2, %d15
	.loc 1 866 0
	mov	%d5, 1
	.loc 1 869 0
	mov	%d15, 8
	.loc 1 861 0
	st.h	[%a14] lo:Fee_GlobInfoWrBlock_st, %d2
	.loc 1 866 0
	call	Fee_IncAddressInsideSector
.LVL103:
	.loc 1 869 0
	st.b	[%a15] 45, %d15
	j	.L120
.LVL104:
.L55:
	.loc 1 1039 0
	movh.a	%a2, hi:Fee_idxLLSectorOrder_au8
	lea	%a2, [%a2] lo:Fee_idxLLSectorOrder_au8
	addsc.a	%a2, %a2, %d15, 0
	.loc 1 1045 0
	mov	%d15, 11
.LVL105:
	.loc 1 1042 0
	ld.bu	%d4, [%a2]0
	call	Fee_LLSetEraseSector
.LVL106:
	.loc 1 1045 0
	st.b	[%a15] 45, %d15
	.loc 1 1050 0
	mov	%d15, 12
	st.b	[%a15] 48, %d15
	j	.L120
.LVL107:
.L54:
	.loc 1 972 0
	ld.bu	%d15, [%a15] 48
	st.b	[%a15] 45, %d15
	j	.L120
.LVL108:
.L126:
	.loc 1 533 0
	movh.a	%a13, hi:Fee_PageBytePtr_cpu8
	ld.a	%a2, [%a13] lo:Fee_PageBytePtr_cpu8
	.loc 1 530 0
	ld.w	%d2, [%a15] 4
	.loc 1 533 0
	movh.a	%a4, hi:Fee_hdr2Buffer_au8
	.loc 1 530 0
	addi	%d15, %d2, 8
	.loc 1 533 0
	lea	%a4, [%a4] lo:Fee_hdr2Buffer_au8
	lea	%a5, [%a2] 8
	mov	%d4, 8
	.loc 1 530 0
	st.w	[%a15] 28, %d15
	.loc 1 533 0
	call	Fee_SrvMemCopy8
.LVL109:
	mov	%d5, 8
	j	.L34
.LVL110:
.L124:
	.loc 1 925 0
	call	Fee_LLSetEraseSector
.LVL111:
	.loc 1 928 0
	movh.a	%a2, hi:Fee_FlashProp_st
	mov.d	%d4, %a2
	addi	%d15, %d4, lo:Fee_FlashProp_st
	madd	%d2, %d15, %d8, 16
	.loc 1 931 0
	mov	%d15, 11
	st.b	[%a15] 45, %d15
	.loc 1 928 0
	mov.a	%a2, %d2
	.loc 1 934 0
	mov	%d15, 12
	.loc 1 928 0
	ld.w	%d3, [%a2] 8
	.loc 1 934 0
	st.b	[%a15] 48, %d15
	.loc 1 928 0
	st.w	[%a15] 4, %d3
	j	.L120
.LVL112:
.L67:
	.loc 1 721 0
	mov	%d11, 256
	mov	%d15, 256
.LVL113:
	mov	%d8, 256
	j	.L42
.LVL114:
.L128:
	.loc 1 176 0
	add	%d15, -1
	and	%d4, %d15, 255
.LVL115:
	.loc 1 179 0
	addsc.a	%a3, %a3, %d4, 3
	.loc 1 182 0
	movh.a	%a2, hi:Fee_FlashProp_st
	mov.d	%d3, %a2
	ld.bu	%d15, [%a3] 5
.LVL116:
	addi	%d2, %d3, lo:Fee_FlashProp_st
	madd	%d3, %d2, %d15, 16
	movh	%d8, hi:Fee_BlockProperties_st
	addi	%d8, %d8, lo:Fee_BlockProperties_st
	mov.a	%a2, %d3
	ld.w	%d15, [%a2] 8
	st.w	[%a15] 4, %d15
	.loc 1 188 0
	mov	%d15, 11
	.loc 1 185 0
	call	Fee_LLSetEraseSector
.LVL117:
	.loc 1 188 0
	st.b	[%a15] 45, %d15
	.loc 1 191 0
	mov	%d15, 12
	st.b	[%a15] 48, %d15
	.loc 1 194 0
	mov	%d15, 2
	st.b	[%a15] 47, %d15
	mov	%d15, 0
.LVL118:
.L24:
	.loc 1 200 0 discriminator 3
	madd	%d2, %d8, %d15, 16
	movh	%d5, 51967
	addi	%d5, %d5, -20482
	mov.a	%a15, %d2
	add	%d15, 1
.LVL119:
	ld.hu	%d4, [%a15]0
	call	Fee_LLUpdateAddressInCache
.LVL120:
	.loc 1 197 0 discriminator 3
	ne	%d2, %d15, 58
	jnz	%d2, .L24
	.loc 1 204 0 discriminator 1
	ld.bu	%d15, [%a12] lo:Fee_NumFlashBanksUsed_u8
	jz	%d15, .L120
	movh.a	%a15, hi:Fee_NumFlashBanksUsed_u8
	.loc 1 204 0 is_stmt 0
	mov	%d8, 0
	lea	%a15, [%a15] lo:Fee_NumFlashBanksUsed_u8
.LVL121:
.L26:
	and	%d15, %d8, 255
.LVL122:
	.loc 1 207 0 is_stmt 1 discriminator 3
	mov	%d4, %d15
	call	Fee_LLEraseCacheStForSect
.LVL123:
	add	%d15, 1
.LVL124:
	.loc 1 204 0 discriminator 3
	ld.bu	%d2, [%a15]0
	and	%d15, 255
.LVL125:
	add	%d8, 1
.LVL126:
	jlt.u	%d15, %d2, .L26
	j	.L120
.LVL127:
.L45:
	.loc 1 830 0
	ld.a	%a4, [%SP] 4
	addsc.a	%a5, %a5, %d3, 0
	mov	%d4, %d15
	call	Fee_SrvMemCopy8
.LVL128:
	.loc 1 835 0
	ld.a	%a4, [%SP] 4
	movh.a	%a12, hi:xBlkCrc32Result_u32.2010
.LVL129:
	mov	%d4, %d15
	ld.w	%d5, [%a12] lo:xBlkCrc32Result_u32.2010
	mov	%d6, 0
	call	Crc_CalculateCRC32
.LVL130:
	.loc 1 841 0
	st.w	[%a12] lo:xBlkCrc32Result_u32.2010, %d2
	j	.L51
.LVL131:
.L129:
	.loc 1 801 0
	ld.a	%a4, [%SP] 4
	addsc.a	%a5, %a5, %d3, 0
	.loc 1 803 0
	sub	%d11, %d9
	.loc 1 801 0
	mov	%d4, %d11
	call	Fee_SrvMemCopy8
.LVL132:
	.loc 1 806 0
	ld.a	%a4, [%SP] 4
	movh.a	%a12, hi:xBlkCrc32Result_u32.2010
.LVL133:
	mov	%d4, %d11
	ld.w	%d5, [%a12] lo:xBlkCrc32Result_u32.2010
	mov	%d6, 0
	call	Crc_CalculateCRC32
.LVL134:
	.loc 1 816 0
	sub	%d3, %d15, %d9
	and	%d3, %d3, 255
	.loc 1 813 0
	st.w	[%a12] lo:xBlkCrc32Result_u32.2010, %d2
	.loc 1 816 0
	st.b	[%a13] lo:xNumCrcBytesDone_u8.2011, %d3
	mov.a	%a2, %d3
	j	.L50
.LVL135:
.L44:
	.loc 1 848 0
	ld.a	%a4, [%SP] 4
	addsc.a	%a5, %a5, %d3, 0
	mov	%d4, %d15
	call	Fee_SrvMemCopy8
.LVL136:
	j	.L51
.LVL137:
.L69:
	.loc 1 1151 0
	mov	%d2, 1
	j	.L31
.LFE24:
	.size	Fee_LLWriteBlock, .-Fee_LLWriteBlock
.section .bss.a1.xNumCrcBytesDone_u8.2011,"aw",@nobits
	.type	xNumCrcBytesDone_u8.2011, @object
	.size	xNumCrcBytesDone_u8.2011, 1
xNumCrcBytesDone_u8.2011:
	.zero	1
.section .bss.a4.cntProgrammedBytes_u32.2012,"aw",@nobits
	.align 2
	.type	cntProgrammedBytes_u32.2012, @object
	.size	cntProgrammedBytes_u32.2012, 4
cntProgrammedBytes_u32.2012:
	.zero	4
.section .bss.a4.xBlkCrc32Result_u32.2010,"aw",@nobits
	.align 2
	.type	xBlkCrc32Result_u32.2010, @object
	.size	xBlkCrc32Result_u32.2010, 4
xBlkCrc32Result_u32.2010:
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
	.byte	0x4
	.uaword	.LCFI0-.LFB24
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE0:
.section .text,"ax",@progbits
.Letext0:
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 4 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 5 ".\\output\\inc/..\\..\\bsw\\Fee\\api\\Fee_Rb_Types.h"
	.file 6 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\inc\\Fls_17_Dmu.h"
	.file 7 ".\\output\\inc/..\\..\\bsw\\Crc\\Crc.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x2ddc
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_LlWriteBlock.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x60
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.uleb128 0x3
	.string	"Std_ReturnType"
	.byte	0x4
	.byte	0x60
	.uaword	0x1ca
	.uleb128 0x4
	.byte	0x1
	.byte	0x5
	.byte	0x52
	.uaword	0x341
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
	.byte	0x5
	.byte	0x59
	.uaword	0x2c2
	.uleb128 0x6
	.string	"Fls_17_Dmu_AddressType"
	.byte	0x6
	.uahalf	0xa21
	.uaword	0x231
	.uleb128 0x6
	.string	"Fls_17_Dmu_LengthType"
	.byte	0x6
	.uahalf	0xa25
	.uaword	0x231
	.uleb128 0x7
	.byte	0x4
	.uaword	0x1ca
	.uleb128 0x7
	.byte	0x4
	.uaword	0x3a0
	.uleb128 0x8
	.uaword	0x1ca
	.uleb128 0x7
	.byte	0x4
	.uaword	0x3ab
	.uleb128 0x9
	.byte	0x1
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.byte	0x9f
	.uaword	0x3dc
	.uleb128 0x5
	.string	"FEE_NORMAL_PRIO_E"
	.sleb128 0
	.uleb128 0x5
	.string	"FEE_HIGH_PRIO_E"
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.string	"Fee_HlPriority_ten"
	.byte	0x2
	.byte	0xa2
	.uaword	0x3ad
	.uleb128 0xa
	.byte	0x10
	.byte	0x2
	.byte	0xb0
	.uaword	0x4a8
	.uleb128 0xb
	.string	"DataBufferPtr_pu8"
	.byte	0x2
	.byte	0xb2
	.uaword	0x394
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"FeeIdx_u16"
	.byte	0x2
	.byte	0xb3
	.uaword	0x1f5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"BlockPropIdx_u16"
	.byte	0x2
	.byte	0xb4
	.uaword	0x1f5
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xb
	.string	"Offset_u16"
	.byte	0x2
	.byte	0xb5
	.uaword	0x1f5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x2
	.byte	0xb6
	.uaword	0x1f5
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xb
	.string	"Mode_en"
	.byte	0x2
	.byte	0xb7
	.uaword	0x341
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.string	"Prio_en"
	.byte	0x2
	.byte	0xb8
	.uaword	0x3dc
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xb
	.string	"SecLevel_u8"
	.byte	0x2
	.byte	0xb9
	.uaword	0x1ca
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.byte	0
	.uleb128 0x3
	.string	"Fee_OrderFifo_tst"
	.byte	0x2
	.byte	0xba
	.uaword	0x3f6
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.byte	0xdb
	.uaword	0x61b
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
	.uleb128 0xd
	.byte	0x1
	.byte	0x2
	.uahalf	0x103
	.uaword	0x6c1
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
	.uleb128 0x6
	.string	"Fee_SectorState_ten"
	.byte	0x2
	.uahalf	0x10a
	.uaword	0x627
	.uleb128 0xe
	.byte	0x8
	.byte	0x2
	.uahalf	0x10d
	.uaword	0x731
	.uleb128 0xf
	.string	"SecChngCnt_u32"
	.byte	0x2
	.uahalf	0x10f
	.uaword	0x231
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"SecState_en"
	.byte	0x2
	.uahalf	0x110
	.uaword	0x6c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.string	"xPhySecIdx_u8"
	.byte	0x2
	.uahalf	0x111
	.uaword	0x1ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x6
	.string	"Fee_LLSectorOrder_tst"
	.byte	0x2
	.uahalf	0x112
	.uaword	0x6dd
	.uleb128 0xd
	.byte	0x1
	.byte	0x2
	.uahalf	0x116
	.uaword	0x826
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
	.byte	0x2
	.uahalf	0x121
	.uaword	0x74f
	.uleb128 0xe
	.byte	0x10
	.byte	0x2
	.uahalf	0x125
	.uaword	0x8d3
	.uleb128 0xf
	.string	"Fee_PhysStartAddress_u32"
	.byte	0x2
	.uahalf	0x127
	.uaword	0x231
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"Fee_PhysEndAddress_u32"
	.byte	0x2
	.uahalf	0x128
	.uaword	0x231
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.string	"Fee_LogStartAddress_u32"
	.byte	0x2
	.uahalf	0x129
	.uaword	0x231
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.string	"Fee_LogEndAddress_u32"
	.byte	0x2
	.uahalf	0x12a
	.uaword	0x231
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x6
	.string	"Fee_FlashProp_tst"
	.byte	0x2
	.uahalf	0x12b
	.uaword	0x83f
	.uleb128 0xe
	.byte	0x10
	.byte	0x2
	.uahalf	0x14c
	.uaword	0x982
	.uleb128 0xf
	.string	"BlockPersistentId_u16"
	.byte	0x2
	.uahalf	0x14e
	.uaword	0x1f5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"Flags_u16"
	.byte	0x2
	.uahalf	0x14f
	.uaword	0x1f5
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x10
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x150
	.uaword	0x1f5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.string	"JobEndNotification_pfn"
	.byte	0x2
	.uahalf	0x151
	.uaword	0x982
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.string	"JobErrorNotification_pfn"
	.byte	0x2
	.uahalf	0x152
	.uaword	0x982
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x8
	.uaword	0x3a5
	.uleb128 0x6
	.string	"Fee_BlockPropertiesType_tst"
	.byte	0x2
	.uahalf	0x153
	.uaword	0x8ed
	.uleb128 0xd
	.byte	0x1
	.byte	0x2
	.uahalf	0x15f
	.uaword	0xadc
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
	.byte	0x2
	.uahalf	0x16a
	.uaword	0x9ab
	.uleb128 0xd
	.byte	0x1
	.byte	0x2
	.uahalf	0x16e
	.uaword	0xbdf
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
	.byte	0x2
	.uahalf	0x17f
	.uaword	0xafb
	.uleb128 0xd
	.byte	0x1
	.byte	0x2
	.uahalf	0x183
	.uaword	0xdfa
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
	.byte	0x2
	.uahalf	0x1ae
	.uaword	0xbff
	.uleb128 0xd
	.byte	0x1
	.byte	0x2
	.uahalf	0x1b2
	.uaword	0xed9
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
	.byte	0x2
	.uahalf	0x1ba
	.uaword	0xe18
	.uleb128 0xd
	.byte	0x1
	.byte	0x2
	.uahalf	0x1be
	.uaword	0xfa9
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
	.byte	0x2
	.uahalf	0x1c5
	.uaword	0xef6
	.uleb128 0xd
	.byte	0x1
	.byte	0x2
	.uahalf	0x1c9
	.uaword	0x10c6
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
	.byte	0x2
	.uahalf	0x1d5
	.uaword	0xfc6
	.uleb128 0xd
	.byte	0x1
	.byte	0x2
	.uahalf	0x1d9
	.uaword	0x1238
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
	.byte	0x2
	.uahalf	0x1f3
	.uaword	0x10e7
	.uleb128 0xd
	.byte	0x1
	.byte	0x2
	.uahalf	0x1f7
	.uaword	0x12fc
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
	.byte	0x2
	.uahalf	0x1fd
	.uaword	0x1256
	.uleb128 0xd
	.byte	0x1
	.byte	0x2
	.uahalf	0x201
	.uaword	0x1376
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
	.byte	0x2
	.uahalf	0x20d
	.uaword	0x131d
	.uleb128 0xd
	.byte	0x1
	.byte	0x2
	.uahalf	0x211
	.uaword	0x13dc
	.uleb128 0x5
	.string	"FEE_LL_SEARCHBLK_INIT_E"
	.sleb128 0
	.uleb128 0x5
	.string	"FEE_LL_SEARCHBLK_BLK_HEADER_E"
	.sleb128 1
	.byte	0
	.uleb128 0x6
	.string	"Fee_LLSearchBlkHdrType_ten"
	.byte	0x2
	.uahalf	0x214
	.uaword	0x1398
	.uleb128 0xd
	.byte	0x1
	.byte	0x2
	.uahalf	0x219
	.uaword	0x1443
	.uleb128 0x5
	.string	"FEE_LL_BLD_UP_CACHE_INIT_E"
	.sleb128 0
	.uleb128 0x5
	.string	"FEE_LL_BLD_UP_CACHE_READ_E"
	.sleb128 1
	.byte	0
	.uleb128 0x6
	.string	"Fee_LLBuildUpCache_ten"
	.byte	0x2
	.uahalf	0x21c
	.uaword	0x13ff
	.uleb128 0xd
	.byte	0x1
	.byte	0x2
	.uahalf	0x220
	.uaword	0x14b6
	.uleb128 0x5
	.string	"FEE_LL_BLD_UP_CACHE_ALL_SECT_INIT_E"
	.sleb128 0
	.uleb128 0x5
	.string	"FEE_LL_BLD_UP_CACHE_ALL_SECT_DO_E"
	.sleb128 1
	.byte	0
	.uleb128 0x6
	.string	"Fee_LLBuildUpCacheAllSect_ten"
	.byte	0x2
	.uahalf	0x223
	.uaword	0x1462
	.uleb128 0xd
	.byte	0x1
	.byte	0x2
	.uahalf	0x23d
	.uaword	0x15b3
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
	.byte	0x2
	.uahalf	0x255
	.uaword	0x14dc
	.uleb128 0xd
	.byte	0x1
	.byte	0x2
	.uahalf	0x259
	.uaword	0x16f6
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
	.byte	0x2
	.uahalf	0x265
	.uaword	0x15d2
	.uleb128 0xd
	.byte	0x1
	.byte	0x2
	.uahalf	0x269
	.uaword	0x1b10
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
	.byte	0x2
	.uahalf	0x2a3
	.uaword	0x1718
	.uleb128 0xe
	.byte	0x3c
	.byte	0x2
	.uahalf	0x2c1
	.uaword	0x1eab
	.uleb128 0xf
	.string	"xRdAddress"
	.byte	0x2
	.uahalf	0x2c3
	.uaword	0x231
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"xWrAddress"
	.byte	0x2
	.uahalf	0x2c4
	.uaword	0x231
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.string	"xCmpAddress"
	.byte	0x2
	.uahalf	0x2c5
	.uaword	0x231
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.string	"xCrcAddress"
	.byte	0x2
	.uahalf	0x2c6
	.uaword	0x231
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xf
	.string	"xCpyAddress"
	.byte	0x2
	.uahalf	0x2c7
	.uaword	0x231
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"AdrHdSearchStart_u32"
	.byte	0x2
	.uahalf	0x2c8
	.uaword	0x231
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xf
	.string	"xStartAddrNextSector_u32"
	.byte	0x2
	.uahalf	0x2c9
	.uaword	0x231
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xf
	.string	"xHdPg2Address"
	.byte	0x2
	.uahalf	0x2cd
	.uaword	0x231
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xf
	.string	"LastProgrammedAddress_u32"
	.byte	0x2
	.uahalf	0x2d1
	.uaword	0x231
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xf
	.string	"LastValidHdrAddress_u32"
	.byte	0x2
	.uahalf	0x2d2
	.uaword	0x231
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xf
	.string	"Fee_LLSecReorg_en"
	.byte	0x2
	.uahalf	0x2d5
	.uaword	0x15b3
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xf
	.string	"Fee_LLRedundantCpyChk_en"
	.byte	0x2
	.uahalf	0x2d6
	.uaword	0x16f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x29
	.uleb128 0xf
	.string	"Fee_LLCpyBlkFls2Fls_en"
	.byte	0x2
	.uahalf	0x2d7
	.uaword	0x1b10
	.byte	0x2
	.byte	0x23
	.uleb128 0x2a
	.uleb128 0xf
	.string	"Fee_HLWrBlock_en"
	.byte	0x2
	.uahalf	0x2dd
	.uaword	0xbdf
	.byte	0x2
	.byte	0x23
	.uleb128 0x2b
	.uleb128 0xf
	.string	"Fee_HLMtBlock_en"
	.byte	0x2
	.uahalf	0x2e0
	.uaword	0xbdf
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xf
	.string	"Fee_LLWrBlock_en"
	.byte	0x2
	.uahalf	0x2e3
	.uaword	0xdfa
	.byte	0x2
	.byte	0x23
	.uleb128 0x2d
	.uleb128 0xf
	.string	"Fee_HLRdBlock"
	.byte	0x2
	.uahalf	0x2e4
	.uaword	0xbdf
	.byte	0x2
	.byte	0x23
	.uleb128 0x2e
	.uleb128 0xf
	.string	"Fee_LLNextUsedWrBlock_en"
	.byte	0x2
	.uahalf	0x2e5
	.uaword	0xdfa
	.byte	0x2
	.byte	0x23
	.uleb128 0x2f
	.uleb128 0xf
	.string	"Fee_LLNextEraseWrBlock_en"
	.byte	0x2
	.uahalf	0x2e6
	.uaword	0xdfa
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xf
	.string	"Fee_LLCompBlk"
	.byte	0x2
	.uahalf	0x2e7
	.uaword	0xed9
	.byte	0x2
	.byte	0x23
	.uleb128 0x31
	.uleb128 0xf
	.string	"Fee_LLCopyBlk_en"
	.byte	0x2
	.uahalf	0x2e8
	.uaword	0xfa9
	.byte	0x2
	.byte	0x23
	.uleb128 0x32
	.uleb128 0xf
	.string	"Fee_LLCalcCrcBlk_en"
	.byte	0x2
	.uahalf	0x2e9
	.uaword	0x10c6
	.byte	0x2
	.byte	0x23
	.uleb128 0x33
	.uleb128 0xf
	.string	"Fee_LLWrMarker_en"
	.byte	0x2
	.uahalf	0x2ea
	.uaword	0xadc
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xf
	.string	"Fee_LLRdState_en"
	.byte	0x2
	.uahalf	0x2eb
	.uaword	0x1238
	.byte	0x2
	.byte	0x23
	.uleb128 0x35
	.uleb128 0xf
	.string	"Fee_LLBlankCheckState_en"
	.byte	0x2
	.uahalf	0x2ec
	.uaword	0x12fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x36
	.uleb128 0xf
	.string	"Fee_LLFindEmptyPageState_en"
	.byte	0x2
	.uahalf	0x2ed
	.uaword	0x1376
	.byte	0x2
	.byte	0x23
	.uleb128 0x37
	.uleb128 0xf
	.string	"Fee_LLSearchBlkHdr_en"
	.byte	0x2
	.uahalf	0x2ee
	.uaword	0x13dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xf
	.string	"Fee_LLBuildUpCache_en"
	.byte	0x2
	.uahalf	0x2fb
	.uaword	0x1443
	.byte	0x2
	.byte	0x23
	.uleb128 0x39
	.uleb128 0xf
	.string	"Fee_LLBuildUpCacheAllSect_en"
	.byte	0x2
	.uahalf	0x2fc
	.uaword	0x14b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x3a
	.byte	0
	.uleb128 0x6
	.string	"Fee_RdWrOrder_tst"
	.byte	0x2
	.uahalf	0x2fe
	.uaword	0x1b30
	.uleb128 0xe
	.byte	0x14
	.byte	0x2
	.uahalf	0x301
	.uaword	0x1f7d
	.uleb128 0xf
	.string	"AdrBlkHeader_u32"
	.byte	0x2
	.uahalf	0x303
	.uaword	0x231
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"BlkCrc32_u32"
	.byte	0x2
	.uahalf	0x304
	.uaword	0x231
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.string	"HdrCrc16_u16"
	.byte	0x2
	.uahalf	0x305
	.uaword	0x1f5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.string	"BlkLength_u16"
	.byte	0x2
	.uahalf	0x306
	.uaword	0x1f5
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xf
	.string	"FeeIndex_u16"
	.byte	0x2
	.uahalf	0x307
	.uaword	0x1f5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xf
	.string	"DataBytes_au8"
	.byte	0x2
	.uahalf	0x308
	.uaword	0x1f7d
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xf
	.string	"BlkStatus_u8"
	.byte	0x2
	.uahalf	0x309
	.uaword	0x1ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x11
	.uaword	0x1ca
	.uaword	0x1f8d
	.uleb128 0x12
	.uaword	0x61b
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.string	"Fee_GlobInfoLastRdHeader_tst"
	.byte	0x2
	.uahalf	0x30a
	.uaword	0x1ec5
	.uleb128 0xe
	.byte	0xa
	.byte	0x2
	.uahalf	0x30d
	.uaword	0x2068
	.uleb128 0xf
	.string	"BytesAlrdyConsid_u16"
	.byte	0x2
	.uahalf	0x30f
	.uaword	0x1f5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"BytesAlrdyCompared_u16"
	.byte	0x2
	.uahalf	0x310
	.uaword	0x1f5
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xf
	.string	"Bytes2Read_u16"
	.byte	0x2
	.uahalf	0x311
	.uaword	0x1f5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.string	"CompareResult_u8"
	.byte	0x2
	.uahalf	0x312
	.uaword	0x1ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xf
	.string	"cntWriteRetry_u8"
	.byte	0x2
	.uahalf	0x313
	.uaword	0x1ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xf
	.string	"cntCopies_u8"
	.byte	0x2
	.uahalf	0x314
	.uaword	0x1ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x6
	.string	"Fee_GlobInfoWrBlock_tst"
	.byte	0x2
	.uahalf	0x315
	.uaword	0x1fb2
	.uleb128 0xd
	.byte	0x1
	.byte	0x2
	.uahalf	0x3b8
	.uaword	0x20bb
	.uleb128 0x5
	.string	"FEE_POLLING_MODE_E"
	.sleb128 0
	.uleb128 0x5
	.string	"FEE_NORMAL_MODE_E"
	.sleb128 1
	.byte	0
	.uleb128 0x6
	.string	"Fee_stMainType"
	.byte	0x2
	.uahalf	0x3bb
	.uaword	0x2088
	.uleb128 0x13
	.string	"Fee_SrvRoundUp"
	.byte	0x2
	.uahalf	0x5f7
	.byte	0x1
	.uaword	0x231
	.byte	0x3
	.uaword	0x213f
	.uleb128 0x14
	.string	"value_u32"
	.byte	0x2
	.uahalf	0x5f7
	.uaword	0x231
	.uleb128 0x14
	.string	"stepsize_u32"
	.byte	0x2
	.uahalf	0x5f7
	.uaword	0x231
	.uleb128 0x15
	.string	"modValue_u32"
	.byte	0x2
	.uahalf	0x5f9
	.uaword	0x231
	.uleb128 0x15
	.string	"retVal_u32"
	.byte	0x2
	.uahalf	0x5f9
	.uaword	0x231
	.byte	0
	.uleb128 0x13
	.string	"Fee_SrvCalcSpaceNeededForWrite"
	.byte	0x2
	.uahalf	0x615
	.byte	0x1
	.uaword	0x231
	.byte	0x3
	.uaword	0x21bb
	.uleb128 0x14
	.string	"blockLen_u16"
	.byte	0x2
	.uahalf	0x615
	.uaword	0x1f5
	.uleb128 0x14
	.string	"securityLevel_b"
	.byte	0x2
	.uahalf	0x615
	.uaword	0x27c
	.uleb128 0x14
	.string	"noFallback_b"
	.byte	0x2
	.uahalf	0x615
	.uaword	0x27c
	.uleb128 0x16
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x617
	.uaword	0x231
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"Fee_LLWriteBlock"
	.byte	0x1
	.byte	0x43
	.byte	0x1
	.uaword	0x826
	.uaword	.LFB24
	.uaword	.LFE24
	.uaword	.LLST0
	.byte	0x1
	.uaword	0x2800
	.uleb128 0x18
	.string	"Info_ptr"
	.byte	0x1
	.byte	0x43
	.uaword	0x2800
	.uaword	.LLST1
	.uleb128 0x18
	.string	"Data_pcu8"
	.byte	0x1
	.byte	0x43
	.uaword	0x39a
	.uaword	.LLST2
	.uleb128 0x19
	.string	"xRetVal_en"
	.byte	0x1
	.byte	0x45
	.uaword	0x826
	.uaword	.LLST3
	.uleb128 0x19
	.string	"xCompareRetVal_en"
	.byte	0x1
	.byte	0x46
	.uaword	0x826
	.uaword	.LLST4
	.uleb128 0x19
	.string	"xWrMarkerRetVal_en"
	.byte	0x1
	.byte	0x47
	.uaword	0x826
	.uaword	.LLST5
	.uleb128 0x19
	.string	"xErSectorRetVal_en"
	.byte	0x1
	.byte	0x48
	.uaword	0x826
	.uaword	.LLST6
	.uleb128 0x19
	.string	"xNumBytes_u16"
	.byte	0x1
	.byte	0x4a
	.uaword	0x1f5
	.uaword	.LLST7
	.uleb128 0x19
	.string	"xTempNumBytes_u16"
	.byte	0x1
	.byte	0x4b
	.uaword	0x1f5
	.uaword	.LLST8
	.uleb128 0x19
	.string	"xNumFreeBytes_u32"
	.byte	0x1
	.byte	0x4c
	.uaword	0x231
	.uaword	.LLST9
	.uleb128 0x19
	.string	"xCnt_u8"
	.byte	0x1
	.byte	0x4d
	.uaword	0x1ca
	.uaword	.LLST10
	.uleb128 0x19
	.string	"xCnt_u16"
	.byte	0x1
	.byte	0x4e
	.uaword	0x1f5
	.uaword	.LLST11
	.uleb128 0x19
	.string	"xPhySectIdx_u8"
	.byte	0x1
	.byte	0x4f
	.uaword	0x1ca
	.uaword	.LLST12
	.uleb128 0x19
	.string	"xLogSectIdx_u8"
	.byte	0x1
	.byte	0x50
	.uaword	0x1ca
	.uaword	.LLST13
	.uleb128 0x19
	.string	"xTempPadding"
	.byte	0x1
	.byte	0x52
	.uaword	0x1ca
	.uaword	.LLST14
	.uleb128 0x19
	.string	"i_u8"
	.byte	0x1
	.byte	0x56
	.uaword	0x1ca
	.uaword	.LLST15
	.uleb128 0x19
	.string	"xNumBytesCutOff_u16"
	.byte	0x1
	.byte	0x57
	.uaword	0x1f5
	.uaword	.LLST16
	.uleb128 0x19
	.string	"xCrcOffset_u8"
	.byte	0x1
	.byte	0x58
	.uaword	0x1ca
	.uaword	.LLST17
	.uleb128 0x19
	.string	"xNumCrcBytes_u8"
	.byte	0x1
	.byte	0x59
	.uaword	0x1ca
	.uaword	.LLST18
	.uleb128 0x19
	.string	"xBlkCrc32Tmp_u32"
	.byte	0x1
	.byte	0x5a
	.uaword	0x231
	.uaword	.LLST19
	.uleb128 0x1a
	.string	"xBlkCrc32Result_u32"
	.byte	0x1
	.byte	0x5b
	.uaword	0x231
	.byte	0x5
	.byte	0x3
	.uaword	xBlkCrc32Result_u32.2010
	.uleb128 0x1a
	.string	"xNumCrcBytesDone_u8"
	.byte	0x1
	.byte	0x5c
	.uaword	0x1ca
	.byte	0x5
	.byte	0x3
	.uaword	xNumCrcBytesDone_u8.2011
	.uleb128 0x1a
	.string	"cntProgrammedBytes_u32"
	.byte	0x1
	.byte	0x5f
	.uaword	0x231
	.byte	0x5
	.byte	0x3
	.uaword	cntProgrammedBytes_u32.2012
	.uleb128 0x19
	.string	"tmpAddr_u32"
	.byte	0x1
	.byte	0x60
	.uaword	0x231
	.uaword	.LLST20
	.uleb128 0x1b
	.uaword	.Ldebug_ranges0+0
	.uaword	0x2557
	.uleb128 0x1c
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x11d
	.uaword	0x231
	.byte	0x1
	.byte	0x55
	.uleb128 0x1d
	.uaword	.LBB11
	.uaword	.LBE11
	.uleb128 0x1e
	.string	"dataLen_u16"
	.byte	0x1
	.uahalf	0x122
	.uaword	0x1f5
	.uaword	.LLST21
	.uleb128 0x15
	.string	"blockPropIdx_u16"
	.byte	0x1
	.uahalf	0x122
	.uaword	0x1f5
	.uleb128 0x1e
	.string	"noFbActive_b"
	.byte	0x1
	.uahalf	0x123
	.uaword	0x27c
	.uaword	.LLST22
	.uleb128 0x1e
	.string	"doubleSecActive_b"
	.byte	0x1
	.uahalf	0x123
	.uaword	0x27c
	.uaword	.LLST23
	.uleb128 0x1f
	.uaword	0x213f
	.uaword	.LBB12
	.uaword	.Ldebug_ranges0+0x20
	.byte	0x1
	.uahalf	0x134
	.uaword	0x2542
	.uleb128 0x20
	.uaword	0x2199
	.uaword	.LLST22
	.uleb128 0x20
	.uaword	0x2181
	.uaword	.LLST23
	.uleb128 0x20
	.uaword	0x216c
	.uaword	.LLST26
	.uleb128 0x21
	.uaword	.Ldebug_ranges0+0x20
	.uleb128 0x22
	.uaword	0x21ae
	.uaword	.LLST27
	.uleb128 0x23
	.uaword	0x20d2
	.uaword	.LBB14
	.uaword	.Ldebug_ranges0+0x48
	.byte	0x2
	.uahalf	0x61f
	.uleb128 0x20
	.uaword	0x2101
	.uaword	.LLST28
	.uleb128 0x20
	.uaword	0x20ef
	.uaword	.LLST29
	.uleb128 0x21
	.uaword	.Ldebug_ranges0+0x48
	.uleb128 0x22
	.uaword	0x2116
	.uaword	.LLST30
	.uleb128 0x22
	.uaword	0x212b
	.uaword	.LLST31
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.uaword	.LVL52
	.uaword	0x2a2e
	.uleb128 0x25
	.byte	0x1
	.byte	0x54
	.byte	0x5
	.byte	0xc
	.uaword	0x10008
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.uaword	.LVL4
	.uaword	0x2a66
	.uleb128 0x27
	.uaword	.LVL6
	.uaword	0x2a96
	.uaword	0x2579
	.uleb128 0x25
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x33
	.uleb128 0x25
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.uaword	.LVL16
	.uaword	0x2ac2
	.uleb128 0x26
	.uaword	.LVL19
	.uaword	0x2a66
	.uleb128 0x27
	.uaword	.LVL21
	.uaword	0x2adf
	.uaword	0x259f
	.uleb128 0x25
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.uaword	.LVL22
	.uaword	0x2a96
	.uaword	0x25b8
	.uleb128 0x25
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x32
	.uleb128 0x25
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.uaword	.LVL30
	.uaword	0x2a66
	.uleb128 0x27
	.uaword	.LVL31
	.uaword	0x2a96
	.uaword	0x25d4
	.uleb128 0x25
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x35
	.byte	0
	.uleb128 0x27
	.uaword	.LVL34
	.uaword	0x2b0b
	.uaword	0x25ee
	.uleb128 0x25
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xa
	.uahalf	0x100
	.uleb128 0x25
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x26
	.uaword	.LVL35
	.uaword	0x2a66
	.uleb128 0x26
	.uaword	.LVL39
	.uaword	0x2b35
	.uleb128 0x26
	.uaword	.LVL42
	.uaword	0x2b71
	.uleb128 0x27
	.uaword	.LVL43
	.uaword	0x2bb0
	.uaword	0x2621
	.uleb128 0x25
	.byte	0x1
	.byte	0x55
	.byte	0x6
	.byte	0x11
	.sleb128 -1342256386
	.byte	0
	.uleb128 0x27
	.uaword	.LVL44
	.uaword	0x2be1
	.uaword	0x263f
	.uleb128 0x25
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0x25
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x40
	.uleb128 0x25
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.uaword	.LVL54
	.uaword	0x2c1d
	.uleb128 0x27
	.uaword	.LVL57
	.uaword	0x2b71
	.uaword	0x265b
	.uleb128 0x25
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x38
	.byte	0
	.uleb128 0x26
	.uaword	.LVL63
	.uaword	0x2c3a
	.uleb128 0x26
	.uaword	.LVL67
	.uaword	0x2c6c
	.uleb128 0x26
	.uaword	.LVL68
	.uaword	0x2c1d
	.uleb128 0x26
	.uaword	.LVL71
	.uaword	0x2c8b
	.uleb128 0x26
	.uaword	.LVL76
	.uaword	0x2c8b
	.uleb128 0x26
	.uaword	.LVL78
	.uaword	0x2cb1
	.uleb128 0x27
	.uaword	.LVL81
	.uaword	0x2ce9
	.uaword	0x26a5
	.uleb128 0x25
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.uaword	.LVL82
	.uaword	0x2d1c
	.uaword	0x26b9
	.uleb128 0x25
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.uaword	.LVL84
	.uaword	0x2b35
	.uleb128 0x26
	.uaword	.LVL87
	.uaword	0x2b35
	.uleb128 0x27
	.uaword	.LVL91
	.uaword	0x2b0b
	.uaword	0x26e4
	.uleb128 0x25
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x25
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x27
	.uaword	.LVL102
	.uaword	0x2b71
	.uaword	0x26ff
	.uleb128 0x25
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x25
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -4
	.byte	0x6
	.byte	0
	.uleb128 0x27
	.uaword	.LVL103
	.uaword	0x2be1
	.uaword	0x2718
	.uleb128 0x25
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0x25
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 4
	.byte	0
	.uleb128 0x26
	.uaword	.LVL106
	.uaword	0x2c8b
	.uleb128 0x27
	.uaword	.LVL109
	.uaword	0x2d57
	.uaword	0x2734
	.uleb128 0x25
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x38
	.byte	0
	.uleb128 0x26
	.uaword	.LVL111
	.uaword	0x2c8b
	.uleb128 0x26
	.uaword	.LVL117
	.uaword	0x2c8b
	.uleb128 0x27
	.uaword	.LVL120
	.uaword	0x2bb0
	.uaword	0x275e
	.uleb128 0x25
	.byte	0x1
	.byte	0x55
	.byte	0x6
	.byte	0x11
	.sleb128 -889278466
	.byte	0
	.uleb128 0x27
	.uaword	.LVL123
	.uaword	0x2d82
	.uaword	0x2772
	.uleb128 0x25
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.uaword	.LVL128
	.uaword	0x2d57
	.uaword	0x278d
	.uleb128 0x25
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x25
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -4
	.byte	0x6
	.byte	0
	.uleb128 0x27
	.uaword	.LVL130
	.uaword	0x2dad
	.uaword	0x27ad
	.uleb128 0x25
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x30
	.uleb128 0x25
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x25
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -4
	.byte	0x6
	.byte	0
	.uleb128 0x27
	.uaword	.LVL132
	.uaword	0x2d57
	.uaword	0x27c8
	.uleb128 0x25
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7b
	.sleb128 0
	.uleb128 0x25
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -4
	.byte	0x6
	.byte	0
	.uleb128 0x27
	.uaword	.LVL134
	.uaword	0x2dad
	.uaword	0x27e8
	.uleb128 0x25
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x30
	.uleb128 0x25
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7b
	.sleb128 0
	.uleb128 0x25
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -4
	.byte	0x6
	.byte	0
	.uleb128 0x24
	.uaword	.LVL136
	.uaword	0x2d57
	.uleb128 0x25
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x25
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -4
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.uaword	0x1f8d
	.uleb128 0x11
	.uaword	0x8d3
	.uaword	0x2816
	.uleb128 0x12
	.uaword	0x61b
	.byte	0x1
	.byte	0
	.uleb128 0x28
	.string	"Fee_FlashProp_st"
	.byte	0x2
	.uahalf	0x3fc
	.uaword	0x2831
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.uaword	0x2806
	.uleb128 0x28
	.string	"Fee_PageBytePtr_cpu8"
	.byte	0x2
	.uahalf	0x404
	.uaword	0x394
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.string	"Fee_RdWrOrder_st"
	.byte	0x2
	.uahalf	0x405
	.uaword	0x1eab
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.uaword	0x731
	.uaword	0x2880
	.uleb128 0x12
	.uaword	0x61b
	.byte	0x1
	.byte	0
	.uleb128 0x28
	.string	"Fee_LLSectorOrder_st"
	.byte	0x2
	.uahalf	0x406
	.uaword	0x2870
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.uaword	0x4a8
	.uaword	0x28af
	.uleb128 0x12
	.uaword	0x61b
	.byte	0x2
	.byte	0
	.uleb128 0x28
	.string	"Fee_OrderFifo_st"
	.byte	0x2
	.uahalf	0x409
	.uaword	0x289f
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.string	"Fee_GlobInfoLastRdHeader_st"
	.byte	0x2
	.uahalf	0x40a
	.uaword	0x1f8d
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.string	"Fee_GlobInfoWrBlock_st"
	.byte	0x2
	.uahalf	0x40b
	.uaword	0x2068
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.string	"Fee_DataBytePtr_cpu8"
	.byte	0x2
	.uahalf	0x414
	.uaword	0x2930
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.uaword	0x394
	.uleb128 0x28
	.string	"Fee_NumFlashBanksUsed_u8"
	.byte	0x2
	.uahalf	0x41c
	.uaword	0x1ca
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.uaword	0x1ca
	.uaword	0x2968
	.uleb128 0x12
	.uaword	0x61b
	.byte	0x7
	.byte	0
	.uleb128 0x28
	.string	"Fee_hdr2Buffer_au8"
	.byte	0x2
	.uahalf	0x421
	.uaword	0x2958
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.string	"Fee_stMain"
	.byte	0x2
	.uahalf	0x431
	.uaword	0x20bb
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.string	"Fee_idxLLSectorOrder_au8"
	.byte	0x2
	.uahalf	0x437
	.uaword	0x1f7d
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.string	"Fee_idxActQueue_u8"
	.byte	0x2
	.uahalf	0x438
	.uaword	0x1ca
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.string	"Fee_DataByteStartCrc_u32"
	.byte	0x2
	.uahalf	0x44e
	.uaword	0x231
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.uaword	0x987
	.uaword	0x2a0d
	.uleb128 0x12
	.uaword	0x61b
	.byte	0x39
	.byte	0
	.uleb128 0x28
	.string	"Fee_BlockProperties_st"
	.byte	0x2
	.uahalf	0x464
	.uaword	0x29fd
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.byte	0x1
	.string	"Fee_LLCheckReorganizationNeed"
	.byte	0x2
	.uahalf	0x508
	.byte	0x1
	.uaword	0x826
	.byte	0x1
	.uaword	0x2a66
	.uleb128 0x2a
	.uaword	0x231
	.uleb128 0x2a
	.uaword	0x1f5
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.string	"Fee_GetPhysSectorByAddress"
	.byte	0x2
	.uahalf	0x4b7
	.byte	0x1
	.uaword	0x1ca
	.byte	0x1
	.uaword	0x2a96
	.uleb128 0x2a
	.uaword	0x231
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.string	"Fee_LLWriteMarker"
	.byte	0x2
	.uahalf	0x4ba
	.byte	0x1
	.uaword	0x826
	.byte	0x1
	.uaword	0x2ac2
	.uleb128 0x2a
	.uaword	0x1ca
	.uleb128 0x2a
	.uaword	0x1ca
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"Fee_LLEraseSector"
	.byte	0x2
	.uahalf	0x4bd
	.byte	0x1
	.uaword	0x826
	.byte	0x1
	.uleb128 0x2c
	.byte	0x1
	.string	"Fee_LLUpdateCacheStForSect"
	.byte	0x2
	.uahalf	0x520
	.byte	0x1
	.byte	0x1
	.uaword	0x2b0b
	.uleb128 0x2a
	.uaword	0x1ca
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.string	"Fee_SrvMemSet8"
	.byte	0x2
	.uahalf	0x537
	.byte	0x1
	.byte	0x1
	.uaword	0x2b35
	.uleb128 0x2a
	.uaword	0x394
	.uleb128 0x2a
	.uaword	0x231
	.uleb128 0x2a
	.uaword	0x231
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.string	"Fee_CalculateNumOfFreeBytesInCurSector"
	.byte	0x2
	.uahalf	0x4ac
	.byte	0x1
	.uaword	0x231
	.byte	0x1
	.uaword	0x2b71
	.uleb128 0x2a
	.uaword	0x231
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.string	"Fls_17_Dmu_Write"
	.byte	0x6
	.uahalf	0xb4b
	.byte	0x1
	.uaword	0x2ac
	.byte	0x1
	.uaword	0x2ba1
	.uleb128 0x2a
	.uaword	0x2ba1
	.uleb128 0x2a
	.uaword	0x2ba6
	.uleb128 0x2a
	.uaword	0x2bab
	.byte	0
	.uleb128 0x8
	.uaword	0x357
	.uleb128 0x8
	.uaword	0x39a
	.uleb128 0x8
	.uaword	0x376
	.uleb128 0x2c
	.byte	0x1
	.string	"Fee_LLUpdateAddressInCache"
	.byte	0x2
	.uahalf	0x51e
	.byte	0x1
	.byte	0x1
	.uaword	0x2be1
	.uleb128 0x2a
	.uaword	0x1f5
	.uleb128 0x2a
	.uaword	0x231
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.string	"Fee_IncAddressInsideSector"
	.byte	0x2
	.uahalf	0x505
	.byte	0x1
	.byte	0x1
	.uaword	0x2c17
	.uleb128 0x2a
	.uaword	0x2c17
	.uleb128 0x2a
	.uaword	0x1f5
	.uleb128 0x2a
	.uaword	0x27c
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.uaword	0x231
	.uleb128 0x2d
	.byte	0x1
	.string	"Fee_CheckFlsJobResult"
	.byte	0x2
	.uahalf	0x547
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.byte	0x1
	.string	"Fls_17_Dmu_Compare"
	.byte	0x6
	.uahalf	0xb6d
	.byte	0x1
	.uaword	0x2ac
	.byte	0x1
	.uaword	0x2c6c
	.uleb128 0x2a
	.uaword	0x2ba1
	.uleb128 0x2a
	.uaword	0x2ba6
	.uleb128 0x2a
	.uaword	0x2bab
	.byte	0
	.uleb128 0x2d
	.byte	0x1
	.string	"Fls_17_Dmu_MainFunction"
	.byte	0x6
	.uahalf	0xc2d
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.byte	0x1
	.string	"Fee_LLSetEraseSector"
	.byte	0x2
	.uahalf	0x4be
	.byte	0x1
	.byte	0x1
	.uaword	0x2cb1
	.uleb128 0x2a
	.uaword	0x1ca
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.string	"Fee_LLCalcBlkCrcInFlash"
	.byte	0x2
	.uahalf	0x4e0
	.byte	0x1
	.uaword	0x826
	.byte	0x1
	.uaword	0x2cde
	.uleb128 0x2a
	.uaword	0x2cde
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.uaword	0x2ce4
	.uleb128 0x8
	.uaword	0x1f8d
	.uleb128 0x2c
	.byte	0x1
	.string	"Fee_LLPrepPageBufWithHdrDataStart"
	.byte	0x2
	.uahalf	0x4e7
	.byte	0x1
	.byte	0x1
	.uaword	0x2d1c
	.uleb128 0x2a
	.uaword	0x2800
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.string	"Fee_LLPrepPageBufWithHdrDataEnd"
	.byte	0x2
	.uahalf	0x4e8
	.byte	0x1
	.byte	0x1
	.uaword	0x2d57
	.uleb128 0x2a
	.uaword	0x2800
	.uleb128 0x2a
	.uaword	0x39a
	.uleb128 0x2a
	.uaword	0x231
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.string	"Fee_SrvMemCopy8"
	.byte	0x2
	.uahalf	0x538
	.byte	0x1
	.byte	0x1
	.uaword	0x2d82
	.uleb128 0x2a
	.uaword	0x394
	.uleb128 0x2a
	.uaword	0x39a
	.uleb128 0x2a
	.uaword	0x231
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.string	"Fee_LLEraseCacheStForSect"
	.byte	0x2
	.uahalf	0x521
	.byte	0x1
	.byte	0x1
	.uaword	0x2dad
	.uleb128 0x2a
	.uaword	0x1ca
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.string	"Crc_CalculateCRC32"
	.byte	0x7
	.byte	0x41
	.byte	0x1
	.uaword	0x231
	.byte	0x1
	.uleb128 0x2a
	.uaword	0x39a
	.uleb128 0x2a
	.uaword	0x231
	.uleb128 0x2a
	.uaword	0x231
	.uleb128 0x2a
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
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0x20
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uaword	.LFB24
	.uaword	.LCFI0
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0
	.uaword	.LFE24
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
	.uaword	.LVL3
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LVL4-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL4-1
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL16-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL16-1
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL18
	.uaword	.LVL19-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL19-1
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL29
	.uaword	.LVL30-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL30-1
	.uaword	.LVL32
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL33
	.uaword	.LVL38
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL38
	.uaword	.LVL39-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL39-1
	.uaword	.LVL45
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL45
	.uaword	.LVL52-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL52-1
	.uaword	.LVL53
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL53
	.uaword	.LVL54-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL54-1
	.uaword	.LVL55
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL55
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL56
	.uaword	.LVL58
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL58
	.uaword	.LVL62
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL62
	.uaword	.LVL66
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL66
	.uaword	.LVL67-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL67-1
	.uaword	.LVL69
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL69
	.uaword	.LVL70
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL70
	.uaword	.LVL73
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL73
	.uaword	.LVL77
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL77
	.uaword	.LVL78-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL78-1
	.uaword	.LVL83
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL83
	.uaword	.LVL84-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL84-1
	.uaword	.LVL86
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL86
	.uaword	.LVL87-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL87-1
	.uaword	.LVL97
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL97
	.uaword	.LVL104
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL104
	.uaword	.LVL114
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL114
	.uaword	.LVL127
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL127
	.uaword	.LVL129
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL129
	.uaword	.LVL131
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL131
	.uaword	.LVL133
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL133
	.uaword	.LVL135
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL135
	.uaword	.LFE24
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL1
	.uaword	.LVL3
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LVL4-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL4-1
	.uaword	.LVL15
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL16-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL16-1
	.uaword	.LVL18
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LVL19-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL19-1
	.uaword	.LVL29
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL29
	.uaword	.LVL30-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL30-1
	.uaword	.LVL32
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL32
	.uaword	.LVL34-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL34-1
	.uaword	.LVL38
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL38
	.uaword	.LVL39-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL39-1
	.uaword	.LVL45
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL45
	.uaword	.LVL52-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL52-1
	.uaword	.LVL53
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL53
	.uaword	.LVL54-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL54-1
	.uaword	.LVL55
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL55
	.uaword	.LVL57-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL57-1
	.uaword	.LVL58
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL58
	.uaword	.LVL63-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL63-1
	.uaword	.LVL66
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL66
	.uaword	.LVL67-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL67-1
	.uaword	.LVL77
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL77
	.uaword	.LVL78-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL78-1
	.uaword	.LVL83
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL83
	.uaword	.LVL84-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL84-1
	.uaword	.LVL86
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL86
	.uaword	.LVL87-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL87-1
	.uaword	.LFE24
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL0
	.uaword	.LVL2
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL3
	.uaword	.LFE24
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL0
	.uaword	.LVL2
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LVL14
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL17
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LVL79
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL79
	.uaword	.LVL80
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL80
	.uaword	.LVL83
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL83
	.uaword	.LVL137
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL137
	.uaword	.LFE24
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL22
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL31
	.uaword	.LVL32
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL104
	.uaword	.LVL106-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL107
	.uaword	.LVL108
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LVL14
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL38
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL38
	.uaword	.LVL45
	.uahalf	0x2
	.byte	0x40
	.byte	0x9f
	.uaword	.LVL45
	.uaword	.LVL59
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL59
	.uaword	.LVL60
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL61
	.uaword	.LVL65
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL65
	.uaword	.LVL66
	.uahalf	0x2
	.byte	0x40
	.byte	0x9f
	.uaword	.LVL66
	.uaword	.LVL85
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL86
	.uaword	.LVL90
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL104
	.uaword	.LVL108
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL108
	.uaword	.LVL110
	.uahalf	0x2
	.byte	0x40
	.byte	0x9f
	.uaword	.LVL110
	.uaword	.LVL112
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL112
	.uaword	.LVL113
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL114
	.uaword	.LVL127
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL137
	.uaword	.LFE24
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LVL14
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL40
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL40
	.uaword	.LVL41
	.uahalf	0x2
	.byte	0x40
	.byte	0x9f
	.uaword	.LVL45
	.uaword	.LVL61
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL64
	.uaword	.LVL109
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL109
	.uaword	.LVL110
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	.LVL110
	.uaword	.LFE24
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LVL14
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL85
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL86
	.uaword	.LVL87
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL87
	.uaword	.LVL88
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL104
	.uaword	.LVL112
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL114
	.uaword	.LVL127
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL137
	.uaword	.LFE24
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL0
	.uaword	.LVL14
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL121
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL122
	.uaword	.LVL123
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL123
	.uaword	.LVL124
	.uahalf	0x3
	.byte	0x7f
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL124
	.uaword	.LVL125
	.uahalf	0x3
	.byte	0x7f
	.sleb128 0
	.byte	0x9f
	.uaword	.LVL125
	.uaword	.LVL126
	.uahalf	0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL127
	.uaword	.LFE24
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL0
	.uaword	.LVL14
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL118
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL118
	.uaword	.LVL119
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL119
	.uaword	.LVL120
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL127
	.uaword	.LFE24
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL0
	.uaword	.LVL5
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL6-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL6-1
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x2
	.byte	0x82
	.sleb128 5
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL15
	.uaword	.LVL20
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LVL21-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL21-1
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL29
	.uaword	.LVL30
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL30
	.uaword	.LVL31-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL32
	.uaword	.LVL69
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL70
	.uaword	.LVL75
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL77
	.uaword	.LVL104
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL104
	.uaword	.LVL105
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL107
	.uaword	.LVL110
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL110
	.uaword	.LVL111-1
	.uahalf	0x2
	.byte	0x82
	.sleb128 5
	.uaword	.LVL111-1
	.uaword	.LVL112
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL112
	.uaword	.LVL115
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL127
	.uaword	.LFE24
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LVL8
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL10
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL15
	.uaword	.LVL36
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL36
	.uaword	.LVL37
	.uahalf	0x2
	.byte	0x82
	.sleb128 0
	.uaword	.LVL38
	.uaword	.LVL69
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL74
	.uaword	.LVL76-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL77
	.uaword	.LVL104
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL107
	.uaword	.LVL110
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL110
	.uaword	.LVL111-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL112
	.uaword	.LVL114
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL114
	.uaword	.LVL115
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL115
	.uaword	.LVL116
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL116
	.uaword	.LVL117-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL127
	.uaword	.LFE24
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LVL14
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL90
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL104
	.uaword	.LVL127
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL137
	.uaword	.LFE24
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LVL14
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL15
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
	.uaword	.LVL100
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL100
	.uaword	.LVL101
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL104
	.uaword	.LFE24
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LVL14
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL92
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL92
	.uaword	.LVL95
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL95
	.uaword	.LVL97
	.uahalf	0x6
	.byte	0x77
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL104
	.uaword	.LVL127
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL127
	.uaword	.LVL128-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL131
	.uaword	.LVL132-1
	.uahalf	0x6
	.byte	0x77
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL135
	.uaword	.LVL136-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL137
	.uaword	.LFE24
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LVL14
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL93
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL93
	.uaword	.LVL94
	.uahalf	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x4
	.byte	0x9f
	.uaword	.LVL104
	.uaword	.LVL131
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL135
	.uaword	.LFE24
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LVL14
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL96
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL96
	.uaword	.LVL97
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL104
	.uaword	.LVL131
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL131
	.uaword	.LVL135
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL135
	.uaword	.LFE24
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LVL14
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL97
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL104
	.uaword	.LVL130
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL130
	.uaword	.LVL131
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL131
	.uaword	.LVL134
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL134
	.uaword	.LVL135
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL135
	.uaword	.LFE24
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x7
	.byte	0x83
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x8
	.uaword	.LVL26
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL46
	.uaword	.LVL52-1
	.uahalf	0x2
	.byte	0x84
	.sleb128 10
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL47
	.uaword	.LVL53
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL47
	.uaword	.LVL52-1
	.uahalf	0x7
	.byte	0x72
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL47
	.uaword	.LVL52-1
	.uahalf	0x2
	.byte	0x84
	.sleb128 10
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL47
	.uaword	.LVL48
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL48
	.uaword	.LVL49
	.uahalf	0x3
	.byte	0x73
	.sleb128 14
	.byte	0x9f
	.uaword	.LVL49
	.uaword	.LVL51
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL47
	.uaword	.LVL53
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL47
	.uaword	.LVL48
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL48
	.uaword	.LVL52-1
	.uahalf	0x3
	.byte	0x73
	.sleb128 14
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL47
	.uaword	.LVL53
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL47
	.uaword	.LVL48
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL48
	.uaword	.LVL49
	.uahalf	0x3
	.byte	0x73
	.sleb128 14
	.byte	0x9f
	.uaword	.LVL49
	.uaword	.LVL50
	.uahalf	0x1
	.byte	0x55
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
	.uaword	.LBB10
	.uaword	.LBE10
	.uaword	.LBB24
	.uaword	.LBE24
	.uaword	.LBB25
	.uaword	.LBE25
	.uaword	0
	.uaword	0
	.uaword	.LBB12
	.uaword	.LBE12
	.uaword	.LBB21
	.uaword	.LBE21
	.uaword	.LBB22
	.uaword	.LBE22
	.uaword	.LBB23
	.uaword	.LBE23
	.uaword	0
	.uaword	0
	.uaword	.LBB14
	.uaword	.LBE14
	.uaword	.LBB17
	.uaword	.LBE17
	.uaword	0
	.uaword	0
	.uaword	.LFB24
	.uaword	.LFE24
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF1:
	.string	"neededSpace_u32"
.LASF0:
	.string	"Length_u16"
	.extern	Crc_CalculateCRC32,STT_FUNC,0
	.extern	Fee_LLEraseCacheStForSect,STT_FUNC,0
	.extern	Fee_SrvMemCopy8,STT_FUNC,0
	.extern	Fee_LLPrepPageBufWithHdrDataEnd,STT_FUNC,0
	.extern	Fee_LLPrepPageBufWithHdrDataStart,STT_FUNC,0
	.extern	Fee_LLCalcBlkCrcInFlash,STT_FUNC,0
	.extern	Fee_LLSetEraseSector,STT_FUNC,0
	.extern	Fls_17_Dmu_MainFunction,STT_FUNC,0
	.extern	Fls_17_Dmu_Compare,STT_FUNC,0
	.extern	Fee_hdr2Buffer_au8,STT_OBJECT,8
	.extern	Fee_CheckFlsJobResult,STT_FUNC,0
	.extern	Fee_stMain,STT_OBJECT,1
	.extern	Fee_LLCheckReorganizationNeed,STT_FUNC,0
	.extern	Fee_BlockProperties_st,STT_OBJECT,928
	.extern	Fee_OrderFifo_st,STT_OBJECT,48
	.extern	Fee_idxActQueue_u8,STT_OBJECT,1
	.extern	Fee_IncAddressInsideSector,STT_FUNC,0
	.extern	Fee_LLUpdateAddressInCache,STT_FUNC,0
	.extern	Fls_17_Dmu_Write,STT_FUNC,0
	.extern	Fee_PageBytePtr_cpu8,STT_OBJECT,4
	.extern	Fee_CalculateNumOfFreeBytesInCurSector,STT_FUNC,0
	.extern	Fee_DataByteStartCrc_u32,STT_OBJECT,4
	.extern	Fee_SrvMemSet8,STT_FUNC,0
	.extern	Fee_DataBytePtr_cpu8,STT_OBJECT,4
	.extern	Fee_GlobInfoLastRdHeader_st,STT_OBJECT,20
	.extern	Fee_LLUpdateCacheStForSect,STT_FUNC,0
	.extern	Fee_LLEraseSector,STT_FUNC,0
	.extern	Fee_FlashProp_st,STT_OBJECT,32
	.extern	Fee_LLSectorOrder_st,STT_OBJECT,16
	.extern	Fee_NumFlashBanksUsed_u8,STT_OBJECT,1
	.extern	Fee_idxLLSectorOrder_au8,STT_OBJECT,2
	.extern	Fee_LLWriteMarker,STT_FUNC,0
	.extern	Fee_GetPhysSectorByAddress,STT_FUNC,0
	.extern	Fee_GlobInfoWrBlock_st,STT_OBJECT,10
	.extern	Fee_RdWrOrder_st,STT_OBJECT,60
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
