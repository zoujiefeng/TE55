	.file	"MAIN_OCTrim.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.MAIN_OCT_vidGetOcTrimData,"ax",@progbits
	.align 1
	.global	MAIN_OCT_vidGetOcTrimData
	.type	MAIN_OCT_vidGetOcTrimData, @function
MAIN_OCT_vidGetOcTrimData:
.LFB254:
	.file 1 "main\\_MainModule\\OCTrim\\MAIN_OCTrim.c"
	.loc 1 250 0
.LVL0:
	movh.a	%a2, hi:Rte_CPim_ASW_NVM_ASW_NVM_BlockNative_1024_1
	lea	%a12, [%a2] lo:Rte_CPim_ASW_NVM_ASW_NVM_BlockNative_1024_1
	mov.d	%d3, %a12
	sub.a	%SP, 32
.LCFI0:
	and	%d3, %d3, 3
	st.w	[%SP] 28, %d3
	jnz	%d3, .L23
.LVL1:
.LBB33:
.LBB34:
.LBB35:
.LBB36:
	.loc 1 777 0
	ld.bu	%d3, [%a12] 1
	movh.a	%a3, hi:Rte_CPim_ASW_NVM_ASW_NVM_BlockNative_1024_1
	ld.bu	%d2, [%a3] lo:Rte_CPim_ASW_NVM_ASW_NVM_BlockNative_1024_1
	sh	%d15, %d3, 8
	or	%d3, %d15, %d2
	ld.bu	%d15, [%a12] 2
	movh.a	%a2, hi:MAIN_u32OCTrimNvmAlignBuf
	sh	%d15, %d15, 16
	or	%d2, %d15, %d3
	ld.bu	%d15, [%a12] 3
	ld.bu	%d3, [%a12] 5
	sh	%d15, %d15, 24
	or	%d2, %d15
	st.w	[%a2] lo:MAIN_u32OCTrimNvmAlignBuf, %d2
	ld.bu	%d2, [%a12] 4
	sh	%d15, %d3, 8
	or	%d3, %d15, %d2
	ld.bu	%d15, [%a12] 6
	lea	%a14, [%a2] lo:MAIN_u32OCTrimNvmAlignBuf
	sh	%d15, %d15, 16
	or	%d2, %d15, %d3
	ld.bu	%d15, [%a12] 7
	ld.bu	%d3, [%a12] 9
	sh	%d15, %d15, 24
	or	%d15, %d2
	ld.bu	%d2, [%a12] 8
	st.w	[%a14] 4, %d15
	sh	%d15, %d3, 8
	or	%d3, %d15, %d2
	ld.bu	%d15, [%a12] 10
	st.a	[%SP] 16, %a2
	sh	%d15, %d15, 16
	or	%d2, %d15, %d3
	ld.bu	%d15, [%a12] 11
	ld.bu	%d3, [%a12] 13
	sh	%d15, %d15, 24
	or	%d15, %d2
	ld.bu	%d2, [%a12] 12
	st.w	[%a14] 8, %d15
	sh	%d15, %d3, 8
	or	%d3, %d15, %d2
	ld.bu	%d15, [%a12] 14
	sh	%d15, %d15, 16
	or	%d2, %d15, %d3
	ld.bu	%d15, [%a12] 15
	ld.bu	%d3, [%a12] 17
	sh	%d15, %d15, 24
	or	%d15, %d2
	ld.bu	%d2, [%a12] 16
	st.w	[%a14] 12, %d15
	sh	%d15, %d3, 8
	or	%d3, %d15, %d2
	ld.bu	%d15, [%a12] 18
	sh	%d15, %d15, 16
	or	%d2, %d15, %d3
	ld.bu	%d15, [%a12] 19
	ld.bu	%d3, [%a12] 21
	sh	%d15, %d15, 24
	or	%d15, %d2
	ld.bu	%d2, [%a12] 20
	st.w	[%a14] 16, %d15
	sh	%d15, %d3, 8
	or	%d3, %d15, %d2
	ld.bu	%d15, [%a12] 22
	sh	%d15, %d15, 16
	or	%d2, %d15, %d3
	ld.bu	%d15, [%a12] 23
	ld.bu	%d3, [%a12] 25
	sh	%d15, %d15, 24
	or	%d15, %d2
	ld.bu	%d2, [%a12] 24
	st.w	[%a14] 20, %d15
	sh	%d15, %d3, 8
	or	%d3, %d15, %d2
	ld.bu	%d15, [%a12] 26
	sh	%d15, %d15, 16
	or	%d2, %d15, %d3
	ld.bu	%d15, [%a12] 27
	ld.bu	%d3, [%a12] 29
	sh	%d15, %d15, 24
	or	%d15, %d2
	ld.bu	%d2, [%a12] 28
	st.w	[%a14] 24, %d15
	sh	%d15, %d3, 8
	or	%d3, %d15, %d2
	ld.bu	%d15, [%a12] 30
	sh	%d15, %d15, 16
	or	%d2, %d15, %d3
	ld.bu	%d15, [%a12] 31
	ld.bu	%d3, [%a12] 33
	sh	%d15, %d15, 24
	or	%d15, %d2
	ld.bu	%d2, [%a12] 32
	st.w	[%a14] 28, %d15
	sh	%d15, %d3, 8
	or	%d3, %d15, %d2
	ld.bu	%d15, [%a12] 34
	sh	%d15, %d15, 16
	or	%d2, %d15, %d3
	ld.bu	%d15, [%a12] 35
	ld.bu	%d3, [%a12] 37
	sh	%d15, %d15, 24
	or	%d15, %d2
	ld.bu	%d2, [%a12] 36
	st.w	[%a14] 32, %d15
	sh	%d15, %d3, 8
	or	%d3, %d15, %d2
	ld.bu	%d15, [%a12] 38
	sh	%d15, %d15, 16
	or	%d2, %d15, %d3
	ld.bu	%d15, [%a12] 39
	sh	%d15, %d15, 24
	or	%d15, %d2
	st.w	[%a14] 36, %d15
.L3:
	movh.a	%a6, hi:MAIN_atOCTrimEcuCfgSet
	mov.d	%d2, %a6
.LBE36:
.LBE35:
.LBE34:
.LBE33:
	.loc 1 250 0
	mov	%d3, 0
	mov	%d9, 0
	mov	%d15, 0
	movh.a	%a5, hi:MAIN_u32FixOcDataBuf
	mov.d	%d8, %a14
	st.w	[%SP] 24, %d3
	st.w	[%SP] 20, %d9
	st.w	[%SP]0, %d15
	addi	%d10, %d2, lo:MAIN_atOCTrimEcuCfgSet
	lea	%a13, [%a5] lo:MAIN_u32FixOcDataBuf
	mov	%d12, 0
.LVL2:
.L17:
	.loc 1 267 0
	mul	%d9, %d12, 84
	mov.a	%a2, %d10
	.loc 1 268 0
	sh	%d2, %d12, 5
	.loc 1 267 0
	addsc.a	%a14, %a2, %d9, 0
	.loc 1 268 0
	addsc.a	%a15, %a13, %d2, 0
	.loc 1 267 0
	ld.w	%d11, [%a14] 72
	.loc 1 268 0
	ld.w	%d15, [%a15]0
	.loc 1 267 0
	mov.a	%a2, %d11
	.loc 1 268 0
	sh	%d13, %d12, 3
	.loc 1 267 0
	st.w	[%a2]0, %d15
.LVL3:
	.loc 1 268 0
	add	%d15, %d13, 1
	sh	%d14, %d15, 2
	addsc.a	%a15, %a13, %d14, 0
	.loc 1 276 0
	mov	%d4, 20
	.loc 1 268 0
	ld.w	%d15, [%a15]0
	.loc 1 276 0
	mov	%d5, -1
	.loc 1 267 0
	st.w	[%a2] 4, %d15
.LVL4:
	.loc 1 268 0
	add	%d15, %d13, 2
	sh	%d15, 2
	mov.a	%a15, %d15
	st.w	[%SP] 4, %d15
	add.a	%a15, %a13
	ld.w	%d15, [%a15]0
	.loc 1 276 0
	mov	%d6, 1
	.loc 1 267 0
	st.w	[%a2] 8, %d15
.LVL5:
	.loc 1 268 0
	add	%d15, %d13, 3
	sh	%d15, 2
	mov.a	%a15, %d15
	st.w	[%SP] 8, %d15
	add.a	%a15, %a13
	ld.w	%d15, [%a15]0
	.loc 1 267 0
	st.w	[%a2] 12, %d15
.LVL6:
	.loc 1 268 0
	add	%d15, %d13, 4
	sh	%d15, 2
	mov.a	%a15, %d15
	st.w	[%SP] 12, %d15
	add.a	%a15, %a13
	ld.w	%d15, [%a15]0
	.loc 1 267 0
	st.w	[%a2] 16, %d15
.LVL7:
	.loc 1 275 0
	and	%d15, %d13, 255
.LVL8:
	.loc 1 276 0
	addsc.a	%a4, %a13, %d15, 2
	call	Crc_CalculateCRC32
.LVL9:
	.loc 1 280 0
	mov	%d3, 20
	cadd	%d15, %d15, %d3, 32
.LVL10:
	addsc.a	%a15, %a13, %d15, 0
	ld.w	%d15, [%a15]0
	jeq	%d15, %d2, .L44
	.loc 1 312 0
	ld.w	%d15, [%SP]0
	jz	%d15, .L5
	mov	%d3, 1
	st.w	[%SP]0, %d3
.LVL11:
.L12:
	.loc 1 326 0
	jz	%d12, .L29
	.loc 1 328 0
	ld.w	%d9, [%SP] 20
	mov.a	%a14, %d8
	jeq	%d9, 1, .L45
	.loc 1 332 0
	ld.w	%d15, [%SP] 24
	jeq	%d15, 1, .L46
	ret
.L29:
	mov	%d12, 1
.LVL12:
	j	.L17
.LVL13:
.L44:
	mov.a	%a2, %d11
	.loc 1 280 0
	mov	%d7, 0
.LBB40:
.LBB41:
	.loc 1 384 0
	mov.a	%a3, 4
.LVL14:
.L9:
	addsc.a	%a15, %a14, %d7, 0
	add	%d7, 1
.LVL15:
	ld.bu	%d6, [%a15] 56
.LVL16:
	.loc 1 385 0
	addsc.a	%a15, %a14, %d7, 0
.LVL17:
	ld.bu	%d5, [%a15] 56
	.loc 1 384 0
	jge.u	%d6, %d5, .L5
	mov	%d4, 0
	mov	%d15, %d6
.LVL18:
.L8:
	.loc 1 388 0
	and	%d15, 255
	.loc 1 389 0
	madd	%d15, %d9, %d15, 8
	mov.a	%a4, %d10
	.loc 1 391 0
	ld.w	%d2, [%a2]0
	.loc 1 389 0
	addsc.a	%a15, %a4, %d15, 0
	.loc 1 391 0
	ld.w	%d15, [%a15]0
	.loc 1 389 0
	ld.w	%d3, [%a15] 4
.LVL19:
	.loc 1 391 0
	jlt	%d2, %d15, .L6
	ld.w	%d15, [%a2]0
	jlt	%d3, %d15, .L6
.LVL20:
	add.a	%a2, 4
	loop	%a3, .L9
.LVL21:
.LBE41:
.LBE40:
	.loc 1 295 0
	mul	%d2, %d12, 5
.LVL22:
	mov.a	%a3, %d8
	.loc 1 297 0
	addsc.a	%a5, %a13, %d13, 2
	.loc 1 295 0
	addsc.a	%a15, %a3, %d2, 2
	.loc 1 297 0
	ld.w	%d4, [%a5]0
	ld.w	%d3, [%a15]0
.LVL23:
	jne	%d4, %d3, .L26
.LVL24:
	movh.a	%a15, hi:MAIN_u32FixOcDataBuf
	.loc 1 295 0
	movh.a	%a2, hi:MAIN_u32OCTrimNvmAlignBuf
	.loc 1 297 0
	lea	%a15, [%a15] lo:MAIN_u32FixOcDataBuf
	.loc 1 295 0
	lea	%a2, [%a2] lo:MAIN_u32OCTrimNvmAlignBuf
	.loc 1 297 0
	addsc.a	%a4, %a15, %d14, 0
	.loc 1 295 0
	addsc.a	%a15, %a2, %d2, 2
	.loc 1 297 0
	ld.w	%d4, [%a4]0
	ld.w	%d3, [%a15] 4
	jne	%d4, %d3, .L24
.LVL25:
	ld.a	%a15, [%SP] 4
	movh.a	%a3, hi:MAIN_u32FixOcDataBuf
	lea	%a3, [%a3] lo:MAIN_u32FixOcDataBuf
	add.a	%a3, %a15
	.loc 1 295 0
	addsc.a	%a15, %a2, %d2, 2
	.loc 1 297 0
	ld.w	%d4, [%a3]0
	ld.w	%d3, [%a15] 8
	jne	%d4, %d3, .L25
.LVL26:
	ld.a	%a3, [%SP] 8
	movh.a	%a2, hi:MAIN_u32FixOcDataBuf
	lea	%a2, [%a2] lo:MAIN_u32FixOcDataBuf
	add.a	%a2, %a3
	ld.w	%d4, [%a2]0
	ld.w	%d3, [%a15] 12
	.loc 1 295 0
	movh.a	%a4, hi:MAIN_u32OCTrimNvmAlignBuf
	lea	%a4, [%a4] lo:MAIN_u32OCTrimNvmAlignBuf
	.loc 1 297 0
	jne	%d4, %d3, .L26
.LVL27:
	ld.a	%a15, [%SP] 12
	movh.a	%a2, hi:MAIN_u32FixOcDataBuf
	lea	%a2, [%a2] lo:MAIN_u32FixOcDataBuf
	add.a	%a2, %a15
	.loc 1 295 0
	addsc.a	%a15, %a4, %d2, 2
	.loc 1 297 0
	ld.w	%d2, [%a2]0
.LVL28:
	ld.w	%d15, [%a15] 16
	.loc 1 301 0
	ld.w	%d3, [%SP] 24
	eq	%d15, %d2, %d15
	cmovn	%d3, %d15, 1
	st.w	[%SP] 24, %d3
.LVL29:
.L11:
.LBB43:
.LBB44:
	.loc 1 384 0
	mov	%d9, 1
	st.w	[%SP]0, %d9
	j	.L12
.LVL30:
.L6:
	add	%d4, 1
.LVL31:
	add	%d15, %d6, %d4
.LBE44:
.LBE43:
.LBB51:
.LBB42:
	and	%d2, %d15, 255
	jlt.u	%d2, %d5, .L8
.LVL32:
.L5:
.LBE42:
.LBE51:
.LBB52:
.LBB53:
	.loc 1 557 0
	mul	%d15, %d12, 5
	.loc 1 584 0
	mov.a	%a2, %d8
	mov.a	%a3, %d11
	and	%d15, 255
	addsc.a	%a15, %a2, %d15, 2
	mov.a	%a2, %d11
	ld.w	%d2, [%a15]0
	mov	%d7, 0
	st.w	[%a3]0, %d2
.LVL33:
	ld.w	%d2, [%a15] 4
.LBE53:
.LBE52:
.LBB55:
.LBB45:
	.loc 1 384 0
	add	%d0, %d10, %d9
.LBE45:
.LBE55:
.LBB56:
.LBB54:
	.loc 1 584 0
	st.w	[%a3] 4, %d2
.LVL34:
	ld.w	%d2, [%a15] 8
	st.w	[%a3] 8, %d2
.LVL35:
	ld.w	%d2, [%a15] 12
	st.w	[%a3] 12, %d2
.LVL36:
	ld.w	%d15, [%a15] 16
	st.w	[%a3] 16, %d15
.LVL37:
.LBE54:
.LBE56:
.LBB57:
.LBB46:
	.loc 1 384 0
	mov.a	%a3, 4
.LVL38:
.L16:
	mov.a	%a4, %d0
	addsc.a	%a15, %a4, %d7, 0
	add	%d7, 1
.LVL39:
	ld.bu	%d6, [%a15] 56
.LVL40:
	.loc 1 385 0
	addsc.a	%a15, %a4, %d7, 0
.LVL41:
	.loc 1 384 0
	mov	%d3, 0
	.loc 1 385 0
	ld.bu	%d4, [%a15] 56
	.loc 1 384 0
	jge.u	%d6, %d4, .L28
.LVL42:
	mov	%d15, %d6
.LVL43:
.L15:
	.loc 1 388 0
	and	%d15, 255
	.loc 1 389 0
	madd	%d15, %d9, %d15, 8
	mov.a	%a4, %d10
	.loc 1 391 0
	ld.w	%d2, [%a2]0
	.loc 1 389 0
	addsc.a	%a15, %a4, %d15, 0
	.loc 1 391 0
	ld.w	%d15, [%a15]0
	.loc 1 389 0
	ld.w	%d5, [%a15] 4
.LVL44:
	.loc 1 391 0
	jlt	%d2, %d15, .L13
	ld.w	%d15, [%a2]0
	jlt	%d5, %d15, .L13
.LVL45:
	add.a	%a2, 4
	loop	%a3, .L16
.LBE46:
.LBE57:
	.loc 1 323 0
	mov	%d9, 1
.LBB58:
.LBB47:
	.loc 1 377 0
	mov	%d15, 1
.LBE47:
.LBE58:
	.loc 1 323 0
	st.w	[%SP] 20, %d9
.LBB59:
.LBB48:
	.loc 1 377 0
	st.w	[%SP]0, %d15
	j	.L12
.LVL46:
.L23:
	movh.a	%a2, hi:MAIN_u32OCTrimNvmAlignBuf
.LBE48:
.LBE59:
	.loc 1 250 0
	mov	%d15, 0
	st.a	[%SP] 16, %a2
	lea	%a14, [%a2] lo:MAIN_u32OCTrimNvmAlignBuf
	lea	%a15, 39
.LVL47:
.L2:
.LBB60:
.LBB39:
.LBB38:
.LBB37:
	.loc 1 777 0
	addsc.a	%a2, %a12, %d15, 0
	addsc.a	%a3, %a14, %d15, 0
	ld.bu	%d2, [%a2]0
	add	%d15, 1
.LVL48:
	st.b	[%a3]0, %d2
.LVL49:
	.loc 1 775 0
	loop	%a15, .L2
	j	.L3
.LVL50:
.L45:
.LBE37:
.LBE38:
.LBE39:
.LBE60:
.LBB61:
.LBB62:
	.loc 1 463 0
	movh.a	%a15, hi:MAIN_bOcDataStoreEna
	st.b	[%a15] lo:MAIN_bOcDataStoreEna, %d9
	ret
.LVL51:
.L13:
	add	%d3, 1
.LVL52:
	add	%d15, %d6, %d3
.LBE62:
.LBE61:
.LBB63:
.LBB49:
	.loc 1 384 0
	and	%d2, %d15, 255
	jlt.u	%d2, %d4, .L15
	mov	%d3, 0
.LVL53:
	st.w	[%SP]0, %d3
	j	.L12
.LVL54:
.L46:
.LBE49:
.LBE63:
.LBB64:
.LBB65:
.LBB66:
.LBB67:
	.loc 1 575 0
	movh.a	%a2, hi:MAIN_as32OCTrimNvm
	ld.w	%d8, [%a2] lo:MAIN_as32OCTrimNvm
	lea	%a15, [%a2] lo:MAIN_as32OCTrimNvm
	ld.a	%a2, [%SP] 16
	ld.w	%d1, [%a15] 4
	ld.w	%d0, [%a15] 8
	st.w	[%a2] lo:MAIN_u32OCTrimNvmAlignBuf, %d8
.LVL55:
	movh.a	%a2, hi:GMAIN_as32OCTrimNvm
	ld.w	%d7, [%a15] 12
	ld.w	%d6, [%a15] 16
	lea	%a15, [%a2] lo:GMAIN_as32OCTrimNvm
	ld.w	%d5, [%a2] lo:GMAIN_as32OCTrimNvm
	ld.w	%d4, [%a15] 4
	ld.w	%d3, [%a15] 8
	ld.w	%d2, [%a15] 12
	ld.w	%d15, [%a15] 16
	ld.w	%d9, [%SP] 28
	st.w	[%a14] 4, %d1
.LVL56:
	st.w	[%a14] 8, %d0
.LVL57:
	st.w	[%a14] 12, %d7
.LVL58:
	st.w	[%a14] 16, %d6
.LVL59:
	st.w	[%a14] 20, %d5
.LVL60:
	st.w	[%a14] 24, %d4
.LVL61:
	st.w	[%a14] 28, %d3
.LVL62:
	st.w	[%a14] 32, %d2
.LVL63:
	st.w	[%a14] 36, %d15
.LVL64:
	jnz	%d9, .L30
.LVL65:
.LBE67:
.LBE66:
.LBB69:
.LBB70:
	.loc 1 784 0
	extr.u	%d9, %d8, 8, 8
	movh.a	%a2, hi:Rte_CPim_ASW_NVM_ASW_NVM_BlockNative_1024_1
	st.b	[%a2] lo:Rte_CPim_ASW_NVM_ASW_NVM_BlockNative_1024_1, %d8
	st.b	[%a12] 1, %d9
	extr.u	%d9, %d8, 16, 8
	sh	%d8, %d8, -24
	st.b	[%a12] 3, %d8
	extr.u	%d8, %d1, 8, 8
	st.b	[%a12] 4, %d1
	st.b	[%a12] 5, %d8
	extr.u	%d8, %d1, 16, 8
	sh	%d1, %d1, -24
	st.b	[%a12] 7, %d1
	extr.u	%d1, %d0, 8, 8
	st.b	[%a12] 8, %d0
	st.b	[%a12] 9, %d1
	extr.u	%d1, %d0, 16, 8
	sh	%d0, %d0, -24
	st.b	[%a12] 11, %d0
	extr.u	%d0, %d7, 8, 8
	st.b	[%a12] 12, %d7
	st.b	[%a12] 13, %d0
	extr.u	%d0, %d7, 16, 8
	sh	%d7, %d7, -24
	st.b	[%a12] 15, %d7
	extr.u	%d7, %d6, 8, 8
	st.b	[%a12] 16, %d6
	st.b	[%a12] 17, %d7
	extr.u	%d7, %d6, 16, 8
	sh	%d6, %d6, -24
	st.b	[%a12] 19, %d6
	extr.u	%d6, %d5, 8, 8
	st.b	[%a12] 20, %d5
	st.b	[%a12] 21, %d6
	extr.u	%d6, %d5, 16, 8
	sh	%d5, %d5, -24
	st.b	[%a12] 23, %d5
	extr.u	%d5, %d4, 8, 8
	st.b	[%a12] 24, %d4
	st.b	[%a12] 25, %d5
	extr.u	%d5, %d4, 16, 8
	sh	%d4, %d4, -24
	st.b	[%a12] 27, %d4
	extr.u	%d4, %d3, 8, 8
	st.b	[%a12] 28, %d3
	st.b	[%a12] 29, %d4
	extr.u	%d4, %d3, 16, 8
	sh	%d3, %d3, -24
	st.b	[%a12] 31, %d3
	extr.u	%d3, %d2, 8, 8
	st.b	[%a12] 32, %d2
	st.b	[%a12] 2, %d9
	st.b	[%a12] 6, %d8
	st.b	[%a12] 10, %d1
	st.b	[%a12] 14, %d0
	st.b	[%a12] 18, %d7
	st.b	[%a12] 22, %d6
	st.b	[%a12] 26, %d5
	st.b	[%a12] 30, %d4
	st.b	[%a12] 33, %d3
	extr.u	%d3, %d2, 16, 8
	sh	%d2, %d2, -24
	st.b	[%a12] 35, %d2
	extr.u	%d2, %d15, 8, 8
	st.b	[%a12] 36, %d15
	st.b	[%a12] 37, %d2
	extr.u	%d2, %d15, 16, 8
	sh	%d15, %d15, -24
	st.b	[%a12] 34, %d3
	st.b	[%a12] 38, %d2
	st.b	[%a12] 39, %d15
.L21:
.LBE70:
.LBE69:
	.loc 1 616 0
	mov	%d4, 23
	mov	%d5, 1
	call	NvM_SetRamBlockStatus
.LVL66:
.LBE65:
.LBE64:
	.loc 1 340 0
	lea	%SP, [%SP] 32
.LVL67:
.LBB76:
.LBB74:
	.loc 1 617 0
	j	NvM_WriteAll
.LVL68:
.L28:
.LBE74:
.LBE76:
.LBB77:
.LBB50:
	.loc 1 384 0
	st.w	[%SP]0, %d3
	j	.L12
.LVL69:
.L30:
.LBE50:
.LBE77:
.LBB78:
.LBB75:
.LBB72:
.LBB68:
	.loc 1 575 0
	mov	%d15, 0
	lea	%a15, 39
.LVL70:
.L20:
.LBE68:
.LBE72:
.LBB73:
.LBB71:
	.loc 1 784 0
	addsc.a	%a2, %a14, %d15, 0
	addsc.a	%a3, %a12, %d15, 0
	ld.bu	%d2, [%a2]0
	add	%d15, 1
.LVL71:
	st.b	[%a3]0, %d2
.LVL72:
	.loc 1 782 0
	loop	%a15, .L20
	j	.L21
.LVL73:
.L26:
.LBE71:
.LBE73:
.LBE75:
.LBE78:
	.loc 1 301 0
	mov	%d3, 1
	st.w	[%SP] 24, %d3
.LVL74:
	j	.L11
.LVL75:
.L25:
	mov	%d15, 1
	st.w	[%SP] 24, %d15
.LVL76:
	j	.L11
.LVL77:
.L24:
	mov	%d9, 1
	st.w	[%SP] 24, %d9
.LVL78:
	j	.L11
.LFE254:
	.size	MAIN_OCT_vidGetOcTrimData, .-MAIN_OCT_vidGetOcTrimData
.section .text.MAIN_OCT_bCheckOcTrimData,"ax",@progbits
	.align 1
	.global	MAIN_OCT_bCheckOcTrimData
	.type	MAIN_OCT_bCheckOcTrimData, @function
MAIN_OCT_bCheckOcTrimData:
.LFB255:
	.loc 1 353 0
.LVL79:
	.loc 1 372 0
	mov	%d2, 0
	.loc 1 369 0
	jlt.u	%d4, 2, .L57
.LVL80:
	.loc 1 406 0
	ret
.LVL81:
.L57:
	.loc 1 376 0
	mul	%d4, %d4, 84
.LVL82:
	movh.a	%a4, hi:MAIN_atOCTrimEcuCfgSet
	lea	%a4, [%a4] lo:MAIN_atOCTrimEcuCfgSet
	addsc.a	%a5, %a4, %d4, 0
	mov	%d0, 0
	ld.a	%a2, [%a5] 72
	.loc 1 384 0
	mov.a	%a3, 4
.LVL83:
.L52:
	addsc.a	%a15, %a5, %d0, 0
	add	%d0, 1
.LVL84:
	ld.bu	%d7, [%a15] 56
.LVL85:
	.loc 1 385 0
	addsc.a	%a15, %a5, %d0, 0
.LVL86:
	ld.bu	%d5, [%a15] 56
	.loc 1 384 0
	jge.u	%d7, %d5, .L54
	mov	%d3, 0
	mov	%d15, %d7
.LVL87:
.L51:
	.loc 1 388 0
	and	%d15, 255
.LVL88:
	.loc 1 389 0
	madd	%d15, %d4, %d15, 8
	.loc 1 391 0
	ld.w	%d2, [%a2]0
	.loc 1 389 0
	addsc.a	%a15, %a4, %d15, 0
	.loc 1 391 0
	ld.w	%d15, [%a15]0
	.loc 1 389 0
	ld.w	%d6, [%a15] 4
.LVL89:
	.loc 1 391 0
	jlt	%d2, %d15, .L49
	.loc 1 391 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a2]0
	jlt	%d6, %d15, .L49
.LVL90:
	add.a	%a2, 4
	loop	%a3, .L52
	mov	%d2, 1
	ret
.LVL91:
.L49:
	add	%d3, 1
.LVL92:
	add	%d15, %d7, %d3
	.loc 1 384 0 is_stmt 1
	and	%d2, %d15, 255
	jlt.u	%d2, %d5, .L51
.LVL93:
.L54:
	.loc 1 372 0
	mov	%d2, 0
.LVL94:
	.loc 1 406 0
	ret
.LFE255:
	.size	MAIN_OCT_bCheckOcTrimData, .-MAIN_OCT_bCheckOcTrimData
.section .text.MAIN_OCT_vidOcDataMng,"ax",@progbits
	.align 1
	.global	MAIN_OCT_vidOcDataMng
	.type	MAIN_OCT_vidOcDataMng, @function
MAIN_OCT_vidOcDataMng:
.LFB256:
	.loc 1 420 0
.LVL95:
.LBB104:
.LBB105:
	.loc 1 802 0
	movh.a	%a2, hi:MAIN_OCT_atOnlineCalibSet
	ld.bu	%d15, [%a2] lo:MAIN_OCT_atOnlineCalibSet
.LBE105:
.LBE104:
	.loc 1 420 0
	sub.a	%SP, 8
.LCFI1:
	lea	%a15, [%a2] lo:MAIN_OCT_atOnlineCalibSet
	movh	%d8, hi:MAIN_bOCStoreResult
.LBB114:
.LBB110:
	.loc 1 802 0
	jge.u	%d15, 9, .L59
	movh.a	%a15, hi:.L61
	lea	%a15, [%a15] lo:.L61
	addsc.a	%a15, %a15, %d15, 2
	ji	%a15
	.align 2
	.align 2
.L61:
	.code32
	j	.L60
	.code32
	j	.L62
	.code32
	j	.L63
	.code32
	j	.L64
	.code32
	j	.L65
	.code32
	j	.L66
	.code32
	j	.L67
	.code32
	j	.L68
	.code32
	j	.L69
.LVL96:
.L122:
	.loc 1 815 0
	ld.bu	%d15, [%a15] 2
	ne	%d15, %d15, 88
	jnz	%d15, .L70
	.loc 1 817 0
	st.b	[%a15] 2, %d15
	.loc 1 819 0
	st.b	[%a15] 5, %d15
	.loc 1 820 0
	st.b	[%a15] 6, %d15
	.loc 1 821 0
	mov	%d15, 2
	.loc 1 818 0
	st.b	[%a15] 4, %d2
	.loc 1 821 0
	st.b	[%a2] lo:MAIN_OCT_atOnlineCalibSet, %d15
	movh	%d8, hi:MAIN_bOCStoreResult
.LVL97:
.L59:
.LBE110:
.LBE114:
.LBB115:
.LBB116:
	.loc 1 802 0
	ld.bu	%d15, [%a15] 10
	jge.u	%d15, 9, .L77
	movh.a	%a2, hi:.L79
	lea	%a2, [%a2] lo:.L79
	addsc.a	%a2, %a2, %d15, 2
	ji	%a2
	.align 2
	.align 2
.L79:
	.code32
	j	.L78
	.code32
	j	.L80
	.code32
	j	.L81
	.code32
	j	.L82
	.code32
	j	.L83
	.code32
	j	.L84
	.code32
	j	.L85
	.code32
	j	.L86
	.code32
	j	.L87
.LVL98:
.L123:
	.loc 1 815 0
	ld.bu	%d15, [%a15] 12
	ne	%d15, %d15, 88
	jnz	%d15, .L88
	.loc 1 817 0
	st.b	[%a15] 12, %d15
	.loc 1 819 0
	st.b	[%a15] 15, %d15
	.loc 1 820 0
	st.b	[%a15] 16, %d15
	.loc 1 821 0
	mov	%d15, 2
	.loc 1 818 0
	st.b	[%a15] 14, %d2
	.loc 1 821 0
	st.b	[%a15] 10, %d15
.LVL99:
.L77:
.LBE116:
.LBE115:
.LBB124:
.LBB125:
	.loc 1 635 0
	mov	%d15, 0
	.loc 1 639 0
	movh.a	%a12, hi:MAIN_u8OCStoreState
	.loc 1 635 0
	st.b	[%SP] 7, %d15
.LVL100:
	.loc 1 639 0
	ld.bu	%d15, [%a12] lo:MAIN_u8OCStoreState
	jlt.u	%d15, 6, .L119
.L95:
	.loc 1 726 0
	mov	%d15, 1
	st.b	[%a12] lo:MAIN_u8OCStoreState, %d15
.LVL101:
.L105:
.LBE125:
.LBE124:
	.loc 1 425 0
	mov.a	%a3, %d8
	mov	%d15, 0
	st.b	[%a3] lo:MAIN_bOCStoreResult, %d15
	ret
.LVL102:
.L119:
.LBB156:
.LBB148:
	.loc 1 639 0
	movh.a	%a15, hi:.L97
	lea	%a15, [%a15] lo:.L97
	addsc.a	%a15, %a15, %d15, 2
	ji	%a15
	.align 2
	.align 2
.L97:
	.code32
	j	.L95
	.code32
	j	.L98
	.code32
	j	.L99
	.code32
	j	.L100
	.code32
	j	.L101
	.code32
	j	.L102
.L101:
	.loc 1 703 0
	mov	%d4, 0
	lea	%a4, [%SP] 7
	call	DFM_bWriteBlock
.LVL103:
	.loc 1 704 0
	jne	%d2, 1, .L105
	.loc 1 706 0
	mov	%d15, 5
	st.b	[%a12] lo:MAIN_u8OCStoreState, %d15
	j	.L105
.LVL104:
.L102:
	.loc 1 712 0
	movh.a	%a15, hi:u8LocOCstoreEndDelay.15200
	ld.bu	%d15, [%a15] lo:u8LocOCstoreEndDelay.15200
	jge.u	%d15, 4, .L109
	.loc 1 714 0
	add	%d15, 1
	st.b	[%a15] lo:u8LocOCstoreEndDelay.15200, %d15
	j	.L105
.L98:
	.loc 1 649 0
	movh.a	%a15, hi:MAIN_bOcDataStoreEna
	ld.bu	%d15, [%a15] lo:MAIN_bOcDataStoreEna
	jne	%d15, 1, .L105
	.loc 1 651 0
	mov	%d15, 2
.LBB126:
.LBB127:
	.loc 1 750 0
	movh.a	%a15, hi:MAIN_bOCStoreAswReq
.LBE127:
.LBE126:
	.loc 1 651 0
	st.b	[%a12] lo:MAIN_u8OCStoreState, %d15
.LVL105:
.LBB130:
.LBB128:
	.loc 1 750 0
	ld.bu	%d15, [%a15] lo:MAIN_bOCStoreAswReq
	jeq	%d15, 1, .L120
.L107:
.LVL106:
	movh.a	%a15, hi:GMAIN_bOCStoreAswReq
	ld.bu	%d15, [%a15] lo:GMAIN_bOCStoreAswReq
	jne	%d15, 1, .L105
	.loc 1 752 0
	call	GMAIN_vidOcDataRestore
.LVL107:
	j	.L105
.LVL108:
.L99:
.LBE128:
.LBE130:
.LBB131:
.LBB132:
.LBB133:
.LBB134:
.LBB135:
	.loc 1 575 0
	movh	%d11, hi:MAIN_as32OCTrimNvm
	mov.a	%a3, %d11
	movh.a	%a15, hi:MAIN_u32OCTrimNvmAlignBuf
	ld.w	%d9, [%a3] lo:MAIN_as32OCTrimNvm
	movh	%d10, hi:GMAIN_as32OCTrimNvm
	lea	%a14, [%a3] lo:MAIN_as32OCTrimNvm
	st.w	[%a15] lo:MAIN_u32OCTrimNvmAlignBuf, %d9
.LVL109:
	lea	%a3, [%a15] lo:MAIN_u32OCTrimNvmAlignBuf
	mov.a	%a15, %d10
	movh.a	%a2, hi:Rte_CPim_ASW_NVM_ASW_NVM_BlockNative_1024_1
	ld.w	%d1, [%a14] 4
	lea	%a13, [%a15] lo:GMAIN_as32OCTrimNvm
	ld.w	%d0, [%a14] 8
	ld.w	%d7, [%a14] 12
	ld.w	%d6, [%a14] 16
	ld.w	%d5, [%a15] lo:GMAIN_as32OCTrimNvm
	lea	%a15, [%a2] lo:Rte_CPim_ASW_NVM_ASW_NVM_BlockNative_1024_1
	ld.w	%d4, [%a13] 4
	mov.d	%d13, %a15
	ld.w	%d3, [%a13] 8
	ld.w	%d2, [%a13] 12
	ld.w	%d15, [%a13] 16
	st.w	[%a3] 4, %d1
.LVL110:
	st.w	[%a3] 8, %d0
.LVL111:
	st.w	[%a3] 12, %d7
.LVL112:
	st.w	[%a3] 16, %d6
.LVL113:
	st.w	[%a3] 20, %d5
.LVL114:
	st.w	[%a3] 24, %d4
.LVL115:
	st.w	[%a3] 28, %d3
.LVL116:
	st.w	[%a3] 32, %d2
.LVL117:
	st.w	[%a3] 36, %d15
.LVL118:
	and	%d12, %d13, 3
	jnz	%d12, .L121
.LVL119:
.LBE135:
.LBE134:
.LBB137:
.LBB138:
	.loc 1 784 0
	extr.u	%d12, %d9, 8, 8
	st.b	[%a2] lo:Rte_CPim_ASW_NVM_ASW_NVM_BlockNative_1024_1, %d9
	st.b	[%a15] 1, %d12
	extr.u	%d12, %d9, 16, 8
	sh	%d9, %d9, -24
	st.b	[%a15] 3, %d9
	extr.u	%d9, %d1, 8, 8
	st.b	[%a15] 4, %d1
	st.b	[%a15] 5, %d9
	extr.u	%d9, %d1, 16, 8
	sh	%d1, %d1, -24
	st.b	[%a15] 7, %d1
	extr.u	%d1, %d0, 8, 8
	st.b	[%a15] 8, %d0
	st.b	[%a15] 9, %d1
	extr.u	%d1, %d0, 16, 8
	sh	%d0, %d0, -24
	st.b	[%a15] 11, %d0
	extr.u	%d0, %d7, 8, 8
	st.b	[%a15] 12, %d7
	st.b	[%a15] 13, %d0
	extr.u	%d0, %d7, 16, 8
	sh	%d7, %d7, -24
	st.b	[%a15] 15, %d7
	extr.u	%d7, %d6, 8, 8
	st.b	[%a15] 16, %d6
	st.b	[%a15] 17, %d7
	extr.u	%d7, %d6, 16, 8
	sh	%d6, %d6, -24
	st.b	[%a15] 19, %d6
	extr.u	%d6, %d5, 8, 8
	st.b	[%a15] 20, %d5
	st.b	[%a15] 21, %d6
	extr.u	%d6, %d5, 16, 8
	sh	%d5, %d5, -24
	st.b	[%a15] 23, %d5
	extr.u	%d5, %d4, 8, 8
	st.b	[%a15] 24, %d4
	st.b	[%a15] 25, %d5
	extr.u	%d5, %d4, 16, 8
	sh	%d4, %d4, -24
	st.b	[%a15] 27, %d4
	extr.u	%d4, %d3, 8, 8
	st.b	[%a15] 28, %d3
	st.b	[%a15] 29, %d4
	extr.u	%d4, %d3, 16, 8
	sh	%d3, %d3, -24
	st.b	[%a15] 31, %d3
	extr.u	%d3, %d2, 8, 8
	st.b	[%a15] 32, %d2
	st.b	[%a15] 2, %d12
	st.b	[%a15] 6, %d9
	st.b	[%a15] 10, %d1
	st.b	[%a15] 14, %d0
	st.b	[%a15] 18, %d7
	st.b	[%a15] 22, %d6
	st.b	[%a15] 26, %d5
	st.b	[%a15] 30, %d4
	st.b	[%a15] 33, %d3
	extr.u	%d3, %d2, 16, 8
	sh	%d2, %d2, -24
	st.b	[%a15] 35, %d2
	extr.u	%d2, %d15, 8, 8
	st.b	[%a15] 36, %d15
	st.b	[%a15] 37, %d2
	extr.u	%d2, %d15, 16, 8
	sh	%d15, %d15, -24
	st.b	[%a15] 34, %d3
	st.b	[%a15] 38, %d2
	st.b	[%a15] 39, %d15
.L108:
.LBE138:
.LBE137:
	.loc 1 616 0
	mov	%d4, 23
	mov	%d5, 1
	call	NvM_SetRamBlockStatus
.LVL120:
	.loc 1 617 0
	call	NvM_WriteAll
.LVL121:
.LBE133:
.LBE132:
	.loc 1 674 0
	mov.a	%a3, %d11
	.loc 1 664 0
	movh.a	%a2, hi:MAIN_u32FixOcDataBuf
	.loc 1 674 0
	ld.w	%d11, [%a3] lo:MAIN_as32OCTrimNvm
	.loc 1 664 0
	lea	%a15, [%a2] lo:MAIN_u32FixOcDataBuf
	mov	%d15, 0
.LVL122:
	.loc 1 674 0
	st.w	[%a2] lo:MAIN_u32FixOcDataBuf, %d11
	.loc 1 664 0
	st.w	[%a15] 20, %d15
.LVL123:
	st.w	[%a15] 24, %d15
.LVL124:
	st.w	[%a15] 28, %d15
.LVL125:
	st.w	[%a15] 32, %d15
.LVL126:
	st.w	[%a15] 36, %d15
.LVL127:
	st.w	[%a15] 40, %d15
.LVL128:
	st.w	[%a15] 44, %d15
.LVL129:
	st.w	[%a15] 48, %d15
.LVL130:
	st.w	[%a15] 52, %d15
.LVL131:
	st.w	[%a15] 56, %d15
.LVL132:
	st.w	[%a15] 60, %d15
.LVL133:
	.loc 1 674 0
	ld.w	%d2, [%a14] 4
	.loc 1 679 0
	mov.aa	%a4, %a15
	.loc 1 674 0
	st.w	[%a15] 4, %d2
.LVL134:
	ld.w	%d13, [%a14] 8
	.loc 1 679 0
	mov	%d4, 20
	.loc 1 674 0
	st.w	[%a15] 8, %d13
.LVL135:
	ld.w	%d15, [%a14] 12
	.loc 1 679 0
	mov	%d5, -1
	.loc 1 674 0
	st.w	[%a15] 12, %d15
.LVL136:
	.loc 1 675 0
	ld.w	%d2, [%a14] 16
	.loc 1 679 0
	mov	%d6, 1
	.loc 1 675 0
	st.w	[%a15] 16, %d2
	.loc 1 679 0
	call	Crc_CalculateCRC32
.LVL137:
	.loc 1 674 0
	mov.a	%a2, %d10
	.loc 1 678 0
	st.w	[%a15] 20, %d2
	.loc 1 674 0
	ld.w	%d10, [%a2] lo:GMAIN_as32OCTrimNvm
	.loc 1 687 0
	mov	%d15, 3
	.loc 1 674 0
	st.w	[%a15] 32, %d10
	ld.w	%d2, [%a13] 4
	.loc 1 679 0
	lea	%a4, [%a15] 32
	.loc 1 674 0
	st.w	[%a15] 36, %d2
	ld.w	%d13, [%a13] 8
	.loc 1 679 0
	mov	%d4, 20
	.loc 1 674 0
	st.w	[%a15] 40, %d13
	ld.w	%d2, [%a13] 12
	.loc 1 679 0
	mov	%d5, -1
	.loc 1 674 0
	st.w	[%a15] 44, %d2
	.loc 1 675 0
	ld.w	%d13, [%a13] 16
	.loc 1 679 0
	mov	%d6, 1
	.loc 1 687 0
	st.b	[%a12] lo:MAIN_u8OCStoreState, %d15
.LVL138:
	.loc 1 675 0
	st.w	[%a15] 48, %d13
	.loc 1 679 0
	call	Crc_CalculateCRC32
.LVL139:
.LBE131:
.LBE148:
.LBE156:
	.loc 1 425 0
	mov.a	%a3, %d8
.LBB157:
.LBB149:
.LBB144:
	.loc 1 687 0
	st.b	[%a12] lo:MAIN_u8OCStoreState, %d15
.LVL140:
.LBE144:
.LBE149:
.LBE157:
	.loc 1 425 0
	mov	%d15, 0
.LBB158:
.LBB150:
.LBB145:
	.loc 1 678 0
	st.w	[%a15] 52, %d2
.LBE145:
.LBE150:
.LBE158:
	.loc 1 425 0
	st.b	[%a3] lo:MAIN_bOCStoreResult, %d15
	ret
.LVL141:
.L100:
.LBB159:
.LBB151:
	.loc 1 693 0
	mov	%d4, 0
	call	DFM_bEraseBlock
.LVL142:
	.loc 1 695 0
	jne	%d2, 1, .L105
	.loc 1 697 0
	mov	%d15, 4
	st.b	[%a12] lo:MAIN_u8OCStoreState, %d15
	j	.L105
.LVL143:
.L62:
.LBE151:
.LBE159:
.LBB160:
.LBB111:
	.loc 1 812 0
	call	MAIN_bChkOcCondition
.LVL144:
	movh.a	%a2, hi:MAIN_OCT_atOnlineCalibSet
	lea	%a15, [%a2] lo:MAIN_OCT_atOnlineCalibSet
	.loc 1 814 0
	jeq	%d2, 1, .L122
.L70:
	.loc 1 825 0
	mov	%d15, 0
	st.b	[%a15] 4, %d15
	.loc 1 826 0
	st.b	[%a15] 5, %d15
	.loc 1 827 0
	st.b	[%a15] 6, %d15
	movh	%d8, hi:MAIN_bOCStoreResult
	j	.L59
.LVL145:
.L63:
	.loc 1 833 0
	lea	%a15, [%a2] lo:MAIN_OCT_atOnlineCalibSet
	mov	%d15, 1
	st.b	[%a15] 4, %d15
	.loc 1 834 0
	st.b	[%a15] 5, %d15
	.loc 1 835 0
	mov	%d15, 0
	st.b	[%a15] 6, %d15
	.loc 1 836 0
	mov	%d15, 3
	st.b	[%a2] lo:MAIN_OCT_atOnlineCalibSet, %d15
	movh	%d8, hi:MAIN_bOCStoreResult
	j	.L59
.L64:
	.loc 1 841 0
	lea	%a15, [%a2] lo:MAIN_OCT_atOnlineCalibSet
	mov	%d15, 1
	st.b	[%a15] 4, %d15
	.loc 1 842 0
	st.b	[%a15] 5, %d15
	.loc 1 843 0
	mov	%d15, 0
	st.b	[%a15] 6, %d15
	.loc 1 844 0
	mov	%d15, 3
	st.b	[%a15] 1, %d15
	.loc 1 845 0
	ld.bu	%d15, [%a15] 7
	jz	%d15, .L117
	.loc 1 849 0
	mov	%d15, 4
	movh.a	%a2, hi:MAIN_OCT_atOnlineCalibSet
	st.b	[%a2] lo:MAIN_OCT_atOnlineCalibSet, %d15
	movh	%d8, hi:MAIN_bOCStoreResult
	j	.L59
.L65:
	.loc 1 855 0
	lea	%a15, [%a2] lo:MAIN_OCT_atOnlineCalibSet
	ld.bu	%d15, [%a15] 8
	jnz	%d15, .L72
	.loc 1 856 0
	ld.bu	%d15, [%a15] 9
	jnz	%d15, .L72
.LVL146:
.LBB106:
.LBB107:
	.loc 1 446 0
	mov	%d15, 1
	movh.a	%a2, hi:MAIN_bOCStoreAswReq
	st.b	[%a2] lo:MAIN_bOCStoreAswReq, %d15
.LVL147:
.LBB108:
.LBB109:
	.loc 1 463 0
	movh.a	%a2, hi:MAIN_bOcDataStoreEna
	st.b	[%a2] lo:MAIN_bOcDataStoreEna, %d15
.LBE109:
.LBE108:
.LBE107:
.LBE106:
	.loc 1 866 0
	mov	%d15, 5
	movh.a	%a2, hi:MAIN_OCT_atOnlineCalibSet
	st.b	[%a2] lo:MAIN_OCT_atOnlineCalibSet, %d15
	movh	%d8, hi:MAIN_bOCStoreResult
	j	.L59
.LVL148:
.L69:
	.loc 1 916 0
	lea	%a15, [%a2] lo:MAIN_OCT_atOnlineCalibSet
	ld.bu	%d15, [%a15] 7
	movh	%d8, hi:MAIN_bOCStoreResult
	jnz	%d15, .L59
	.loc 1 918 0
	mov	%d2, 1
	movh.a	%a2, hi:MAIN_OCT_atOnlineCalibSet
	st.b	[%a2] lo:MAIN_OCT_atOnlineCalibSet, %d2
	.loc 1 919 0
	st.b	[%a15] 4, %d15
	.loc 1 920 0
	st.b	[%a15] 5, %d15
	.loc 1 921 0
	st.b	[%a15] 6, %d15
	.loc 1 922 0
	st.b	[%a15] 3, %d15
	j	.L59
.L66:
	.loc 1 872 0
	movh	%d8, hi:MAIN_bOCStoreResult
	mov.a	%a3, %d8
	movh.a	%a15, hi:MAIN_OCT_atOnlineCalibSet
	ld.bu	%d15, [%a3] lo:MAIN_bOCStoreResult
	lea	%a15, [%a15] lo:MAIN_OCT_atOnlineCalibSet
	jne	%d15, 1, .L59
	.loc 1 874 0
	mov	%d2, 6
	.loc 1 875 0
	st.b	[%a15] 1, %d15
	.loc 1 876 0
	mov	%d15, 0
	.loc 1 874 0
	st.b	[%a2] lo:MAIN_OCT_atOnlineCalibSet, %d2
	.loc 1 876 0
	st.b	[%a15] 4, %d15
	.loc 1 877 0
	st.b	[%a15] 5, %d15
	.loc 1 878 0
	st.b	[%a15] 3, %d15
	j	.L59
.L67:
	.loc 1 884 0
	lea	%a15, [%a2] lo:MAIN_OCT_atOnlineCalibSet
	ld.bu	%d15, [%a15] 3
	jlt.u	%d15, 2, .L116
	.loc 1 890 0
	mov	%d15, 8
	movh.a	%a2, hi:MAIN_OCT_atOnlineCalibSet
	st.b	[%a2] lo:MAIN_OCT_atOnlineCalibSet, %d15
	.loc 1 891 0
	mov	%d15, 0
	st.b	[%a15] 4, %d15
	.loc 1 892 0
	st.b	[%a15] 5, %d15
	.loc 1 893 0
	mov	%d15, 1
	st.b	[%a15] 6, %d15
	.loc 1 894 0
	st.b	[%a15] 1, %d15
	movh	%d8, hi:MAIN_bOCStoreResult
	j	.L59
.L68:
	.loc 1 900 0
	lea	%a15, [%a2] lo:MAIN_OCT_atOnlineCalibSet
	ld.bu	%d15, [%a15] 3
	jlt.u	%d15, 2, .L116
	.loc 1 906 0
	mov	%d15, 8
	movh.a	%a2, hi:MAIN_OCT_atOnlineCalibSet
	st.b	[%a2] lo:MAIN_OCT_atOnlineCalibSet, %d15
	.loc 1 907 0
	mov	%d15, 0
	st.b	[%a15] 4, %d15
	.loc 1 908 0
	st.b	[%a15] 5, %d15
	.loc 1 909 0
	mov	%d15, 1
	st.b	[%a15] 6, %d15
	.loc 1 910 0
	mov	%d15, 2
	st.b	[%a15] 1, %d15
	movh	%d8, hi:MAIN_bOCStoreResult
	j	.L59
.LVL149:
.L87:
.LBE111:
.LBE160:
.LBB161:
.LBB121:
	.loc 1 916 0
	ld.bu	%d15, [%a15] 17
	jnz	%d15, .L77
	.loc 1 918 0
	mov	%d2, 1
	st.b	[%a15] 10, %d2
	.loc 1 919 0
	st.b	[%a15] 14, %d15
	.loc 1 920 0
	st.b	[%a15] 15, %d15
	.loc 1 921 0
	st.b	[%a15] 16, %d15
	.loc 1 922 0
	st.b	[%a15] 13, %d15
	j	.L77
.L78:
	.loc 1 806 0
	mov	%d15, 1
	st.b	[%a15] 10, %d15
	.loc 1 807 0
	mov	%d15, 0
	st.b	[%a15] 11, %d15
	j	.L77
.L80:
	.loc 1 812 0
	call	GMAIN_bChkOcCondition
.LVL150:
	.loc 1 814 0
	jeq	%d2, 1, .L123
.L88:
	.loc 1 825 0
	mov	%d15, 0
	st.b	[%a15] 14, %d15
	.loc 1 826 0
	st.b	[%a15] 15, %d15
	.loc 1 827 0
	st.b	[%a15] 16, %d15
	j	.L77
.LVL151:
.L81:
	.loc 1 833 0
	mov	%d15, 1
	st.b	[%a15] 14, %d15
	.loc 1 834 0
	st.b	[%a15] 15, %d15
	.loc 1 835 0
	mov	%d15, 0
	st.b	[%a15] 16, %d15
	.loc 1 836 0
	mov	%d15, 3
	st.b	[%a15] 10, %d15
	j	.L77
.L82:
	.loc 1 841 0
	mov	%d15, 1
	st.b	[%a15] 14, %d15
	.loc 1 842 0
	st.b	[%a15] 15, %d15
	.loc 1 843 0
	mov	%d15, 0
	st.b	[%a15] 16, %d15
	.loc 1 844 0
	mov	%d15, 3
	st.b	[%a15] 11, %d15
	.loc 1 845 0
	ld.bu	%d15, [%a15] 17
	jz	%d15, .L77
	.loc 1 849 0
	mov	%d15, 4
	st.b	[%a15] 10, %d15
	j	.L77
.L83:
	.loc 1 855 0
	ld.bu	%d15, [%a15] 18
	jnz	%d15, .L90
	.loc 1 856 0
	ld.bu	%d15, [%a15] 19
	jnz	%d15, .L90
.LVL152:
.LBB117:
.LBB118:
	.loc 1 446 0
	mov	%d15, 1
	movh.a	%a2, hi:GMAIN_bOCStoreAswReq
	st.b	[%a2] lo:GMAIN_bOCStoreAswReq, %d15
.LVL153:
.LBB119:
.LBB120:
	.loc 1 463 0
	movh.a	%a2, hi:MAIN_bOcDataStoreEna
	st.b	[%a2] lo:MAIN_bOcDataStoreEna, %d15
.LBE120:
.LBE119:
.LBE118:
.LBE117:
	.loc 1 866 0
	mov	%d15, 5
	st.b	[%a15] 10, %d15
	j	.L77
.LVL154:
.L84:
	.loc 1 872 0
	mov.a	%a2, %d8
	ld.bu	%d15, [%a2] lo:MAIN_bOCStoreResult
	jne	%d15, 1, .L77
	.loc 1 874 0
	mov	%d2, 6
	.loc 1 875 0
	st.b	[%a15] 11, %d15
	.loc 1 876 0
	mov	%d15, 0
	.loc 1 874 0
	st.b	[%a15] 10, %d2
	.loc 1 876 0
	st.b	[%a15] 14, %d15
	.loc 1 877 0
	st.b	[%a15] 15, %d15
	.loc 1 878 0
	st.b	[%a15] 13, %d15
	j	.L77
.L85:
	.loc 1 884 0
	ld.bu	%d15, [%a15] 13
	jlt.u	%d15, 2, .L118
	.loc 1 890 0
	mov	%d15, 8
	st.b	[%a15] 10, %d15
	.loc 1 891 0
	mov	%d15, 0
	st.b	[%a15] 14, %d15
	.loc 1 892 0
	st.b	[%a15] 15, %d15
	.loc 1 893 0
	mov	%d15, 1
	st.b	[%a15] 16, %d15
	.loc 1 894 0
	st.b	[%a15] 11, %d15
	j	.L77
.L86:
	.loc 1 900 0
	ld.bu	%d15, [%a15] 13
	jlt.u	%d15, 2, .L118
	.loc 1 906 0
	mov	%d15, 8
	st.b	[%a15] 10, %d15
	.loc 1 907 0
	mov	%d15, 0
	st.b	[%a15] 14, %d15
	.loc 1 908 0
	st.b	[%a15] 15, %d15
	.loc 1 909 0
	mov	%d15, 1
	st.b	[%a15] 16, %d15
	.loc 1 910 0
	mov	%d15, 2
	st.b	[%a15] 11, %d15
	j	.L77
.LVL155:
.L60:
.LBE121:
.LBE161:
.LBB162:
.LBB112:
	.loc 1 806 0
	mov	%d15, 1
	lea	%a15, [%a2] lo:MAIN_OCT_atOnlineCalibSet
	st.b	[%a2] lo:MAIN_OCT_atOnlineCalibSet, %d15
	.loc 1 807 0
	mov	%d15, 0
	st.b	[%a15] 1, %d15
	movh	%d8, hi:MAIN_bOCStoreResult
	j	.L59
.L72:
	.loc 1 858 0
	mov	%d15, 7
	st.b	[%a2] lo:MAIN_OCT_atOnlineCalibSet, %d15
	.loc 1 859 0
	mov	%d15, 2
	st.b	[%a15] 1, %d15
	.loc 1 860 0
	mov	%d15, 0
	st.b	[%a15] 3, %d15
	movh	%d8, hi:MAIN_bOCStoreResult
	j	.L59
.LVL156:
.L90:
.LBE112:
.LBE162:
.LBB163:
.LBB122:
	.loc 1 858 0
	mov	%d15, 7
	st.b	[%a15] 10, %d15
	.loc 1 859 0
	mov	%d15, 2
	st.b	[%a15] 11, %d15
	.loc 1 860 0
	mov	%d15, 0
	st.b	[%a15] 13, %d15
	j	.L77
.LVL157:
.L116:
.LBE122:
.LBE163:
.LBB164:
.LBB113:
	.loc 1 902 0
	add	%d15, 1
	st.b	[%a15] 3, %d15
.L117:
	movh	%d8, hi:MAIN_bOCStoreResult
	j	.L59
.LVL158:
.L109:
.LBE113:
.LBE164:
.LBB165:
.LBB152:
	.loc 1 718 0
	mov	%d15, 0
.LBE152:
.LBE165:
	.loc 1 425 0
	mov.a	%a2, %d8
.LBB166:
.LBB153:
	.loc 1 719 0
	mov	%d2, 1
	.loc 1 718 0
	st.b	[%a15] lo:u8LocOCstoreEndDelay.15200, %d15
.LBE153:
.LBE166:
.LBB167:
.LBB168:
	.loc 1 463 0
	movh.a	%a15, hi:MAIN_bOcDataStoreEna
.LBE168:
.LBE167:
.LBB170:
.LBB154:
	.loc 1 719 0
	st.b	[%a12] lo:MAIN_u8OCStoreState, %d2
.LVL159:
.LBE154:
.LBE170:
	.loc 1 425 0
	st.b	[%a2] lo:MAIN_bOCStoreResult, %d2
.LVL160:
.LBB171:
.LBB169:
	.loc 1 463 0
	st.b	[%a15] lo:MAIN_bOcDataStoreEna, %d15
	ret
.LVL161:
.L118:
.LBE169:
.LBE171:
.LBB172:
.LBB123:
	.loc 1 902 0
	add	%d15, 1
	st.b	[%a15] 13, %d15
	j	.L77
.LVL162:
.L120:
.LBE123:
.LBE172:
.LBB173:
.LBB155:
.LBB146:
.LBB129:
	.loc 1 752 0
	call	MAIN_vidOcDataRestore
.LVL163:
	j	.L107
.LVL164:
.L121:
.LBE129:
.LBE146:
.LBB147:
.LBB143:
.LBB142:
.LBB140:
.LBB136:
	.loc 1 575 0
	mov	%d15, 0
	lea	%a2, 39
.LVL165:
.L104:
.LBE136:
.LBE140:
.LBB141:
.LBB139:
	.loc 1 784 0
	addsc.a	%a4, %a3, %d15, 0
	addsc.a	%a5, %a15, %d15, 0
	ld.bu	%d2, [%a4]0
	add	%d15, 1
.LVL166:
	st.b	[%a5]0, %d2
.LVL167:
	.loc 1 782 0
	loop	%a2, .L104
	j	.L108
.LBE139:
.LBE141:
.LBE142:
.LBE143:
.LBE147:
.LBE155:
.LBE173:
.LFE256:
	.size	MAIN_OCT_vidOcDataMng, .-MAIN_OCT_vidOcDataMng
.section .text.MAIN_OCT_SetOcDataStoreReq,"ax",@progbits
	.align 1
	.global	MAIN_OCT_SetOcDataStoreReq
	.type	MAIN_OCT_SetOcDataStoreReq, @function
MAIN_OCT_SetOcDataStoreReq:
.LFB258:
	.loc 1 462 0
.LVL168:
	.loc 1 463 0
	movh.a	%a15, hi:MAIN_bOcDataStoreEna
	st.b	[%a15] lo:MAIN_bOcDataStoreEna, %d4
	ret
.LFE258:
	.size	MAIN_OCT_SetOcDataStoreReq, .-MAIN_OCT_SetOcDataStoreReq
.section .text.MAIN_OCT_vidTrigOcCalib,"ax",@progbits
	.align 1
	.global	MAIN_OCT_vidTrigOcCalib
	.type	MAIN_OCT_vidTrigOcCalib, @function
MAIN_OCT_vidTrigOcCalib:
.LFB259:
	.loc 1 467 0
.LVL169:
	.loc 1 468 0
	movh.a	%a15, hi:MAIN_OCT_atOnlineCalibSet
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:MAIN_OCT_atOnlineCalibSet
	madd	%d2, %d15, %d4, 10
	mov	%d15, 88
	mov.a	%a15, %d2
	st.b	[%a15] 2, %d15
	ret
.LFE259:
	.size	MAIN_OCT_vidTrigOcCalib, .-MAIN_OCT_vidTrigOcCalib
.section .text.MAIN_OCT_u8GetOcCalibState,"ax",@progbits
	.align 1
	.global	MAIN_OCT_u8GetOcCalibState
	.type	MAIN_OCT_u8GetOcCalibState, @function
MAIN_OCT_u8GetOcCalibState:
.LFB260:
	.loc 1 472 0
.LVL170:
	.loc 1 473 0
	movh.a	%a15, hi:MAIN_OCT_atOnlineCalibSet
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:MAIN_OCT_atOnlineCalibSet
	madd	%d2, %d15, %d4, 10
	mov.a	%a15, %d2
	.loc 1 474 0
	ld.bu	%d2, [%a15] 1
	ret
.LFE260:
	.size	MAIN_OCT_u8GetOcCalibState, .-MAIN_OCT_u8GetOcCalibState
.section .text.MAIN_OCT_vidSetOcFinishFlg,"ax",@progbits
	.align 1
	.global	MAIN_OCT_vidSetOcFinishFlg
	.type	MAIN_OCT_vidSetOcFinishFlg, @function
MAIN_OCT_vidSetOcFinishFlg:
.LFB261:
	.loc 1 477 0
.LVL171:
	.loc 1 478 0
	movh.a	%a15, hi:MAIN_OCT_atOnlineCalibSet
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:MAIN_OCT_atOnlineCalibSet
	madd	%d2, %d15, %d4, 10
	mov.a	%a15, %d2
	st.b	[%a15] 7, %d5
	ret
.LFE261:
	.size	MAIN_OCT_vidSetOcFinishFlg, .-MAIN_OCT_vidSetOcFinishFlg
.section .text.MAIN_OCT_vidSetOcFailureFlg,"ax",@progbits
	.align 1
	.global	MAIN_OCT_vidSetOcFailureFlg
	.type	MAIN_OCT_vidSetOcFailureFlg, @function
MAIN_OCT_vidSetOcFailureFlg:
.LFB262:
	.loc 1 482 0
.LVL172:
	.loc 1 483 0
	movh.a	%a15, hi:MAIN_OCT_atOnlineCalibSet
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:MAIN_OCT_atOnlineCalibSet
	madd	%d2, %d15, %d4, 10
	mov.a	%a15, %d2
	st.b	[%a15] 8, %d5
	ret
.LFE262:
	.size	MAIN_OCT_vidSetOcFailureFlg, .-MAIN_OCT_vidSetOcFailureFlg
.section .text.MAIN_OCT_vidSetOcNotRatFlg,"ax",@progbits
	.align 1
	.global	MAIN_OCT_vidSetOcNotRatFlg
	.type	MAIN_OCT_vidSetOcNotRatFlg, @function
MAIN_OCT_vidSetOcNotRatFlg:
.LFB263:
	.loc 1 487 0
.LVL173:
	.loc 1 488 0
	movh.a	%a15, hi:MAIN_OCT_atOnlineCalibSet
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:MAIN_OCT_atOnlineCalibSet
	madd	%d2, %d15, %d4, 10
	mov.a	%a15, %d2
	st.b	[%a15] 9, %d5
	ret
.LFE263:
	.size	MAIN_OCT_vidSetOcNotRatFlg, .-MAIN_OCT_vidSetOcNotRatFlg
.section .text.MAIN_OCT_bGetOcModeEna,"ax",@progbits
	.align 1
	.global	MAIN_OCT_bGetOcModeEna
	.type	MAIN_OCT_bGetOcModeEna, @function
MAIN_OCT_bGetOcModeEna:
.LFB264:
	.loc 1 492 0
.LVL174:
	.loc 1 493 0
	movh.a	%a15, hi:MAIN_OCT_atOnlineCalibSet
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:MAIN_OCT_atOnlineCalibSet
	madd	%d2, %d15, %d4, 10
	mov.a	%a15, %d2
	.loc 1 494 0
	ld.bu	%d2, [%a15] 4
	ret
.LFE264:
	.size	MAIN_OCT_bGetOcModeEna, .-MAIN_OCT_bGetOcModeEna
.section .text.MAIN_OCT_bGetOcRdResultFlag,"ax",@progbits
	.align 1
	.global	MAIN_OCT_bGetOcRdResultFlag
	.type	MAIN_OCT_bGetOcRdResultFlag, @function
MAIN_OCT_bGetOcRdResultFlag:
.LFB265:
	.loc 1 497 0
.LVL175:
	.loc 1 498 0
	movh.a	%a15, hi:MAIN_OCT_atOnlineCalibSet
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:MAIN_OCT_atOnlineCalibSet
	madd	%d2, %d15, %d4, 10
	mov.a	%a15, %d2
	.loc 1 499 0
	ld.bu	%d2, [%a15] 6
	ret
.LFE265:
	.size	MAIN_OCT_bGetOcRdResultFlag, .-MAIN_OCT_bGetOcRdResultFlag
.section .text.MAIN_OCT_bGetOcStartFlag,"ax",@progbits
	.align 1
	.global	MAIN_OCT_bGetOcStartFlag
	.type	MAIN_OCT_bGetOcStartFlag, @function
MAIN_OCT_bGetOcStartFlag:
.LFB266:
	.loc 1 502 0
.LVL176:
	.loc 1 503 0
	movh.a	%a15, hi:MAIN_OCT_atOnlineCalibSet
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:MAIN_OCT_atOnlineCalibSet
	madd	%d2, %d15, %d4, 10
	mov.a	%a15, %d2
	.loc 1 504 0
	ld.bu	%d2, [%a15] 5
	ret
.LFE266:
	.size	MAIN_OCT_bGetOcStartFlag, .-MAIN_OCT_bGetOcStartFlag
.section .text.MAIN_OCT_vidRestoreOcBlockDefaults,"ax",@progbits
	.align 1
	.global	MAIN_OCT_vidRestoreOcBlockDefaults
	.type	MAIN_OCT_vidRestoreOcBlockDefaults, @function
MAIN_OCT_vidRestoreOcBlockDefaults:
.LFB267:
	.loc 1 517 0
.LVL177:
	.loc 1 520 0
	jlt.u	%d4, 2, .L136
	ret
.L136:
	movh.a	%a15, hi:MAIN_atOCTrimEcuCfgSet
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:MAIN_atOCTrimEcuCfgSet
	madd	%d2, %d15, %d4, 84
	mov.a	%a15, %d2
	ld.a	%a2, [%a15] 72
	ld.a	%a15, [%a15] 64
.LVL178:
	.loc 1 524 0
	ld.w	%d15, [%a15]0
	st.w	[%a2]0, %d15
.LVL179:
	ld.w	%d2, [%a15] 4
	st.w	[%a2] 4, %d2
.LVL180:
	ld.w	%d15, [%a15] 8
	st.w	[%a2] 8, %d15
.LVL181:
	ld.w	%d2, [%a15] 12
	st.w	[%a2] 12, %d2
.LVL182:
	.loc 1 525 0
	ld.w	%d15, [%a15] 16
	.loc 1 524 0
	st.w	[%a2] 16, %d15
.LVL183:
	ret
.LFE267:
	.size	MAIN_OCT_vidRestoreOcBlockDefaults, .-MAIN_OCT_vidRestoreOcBlockDefaults
.section .bss.a1.u8LocOCstoreEndDelay.15200,"aw",@nobits
	.type	u8LocOCstoreEndDelay.15200, @object
	.size	u8LocOCstoreEndDelay.15200, 1
u8LocOCstoreEndDelay.15200:
	.zero	1
.section .rodata.a4.MAIN_atOCTrimEcuCfgSet,"a",@progbits
	.align 2
	.type	MAIN_atOCTrimEcuCfgSet, @object
	.size	MAIN_atOCTrimEcuCfgSet, 168
MAIN_atOCTrimEcuCfgSet:
	.word	-3000
	.word	-1500
	.word	-3000
	.word	-1500
	.word	-30000
	.word	-5000
	.word	5000
	.word	30000
	.word	-30000
	.word	-5000
	.word	5000
	.word	30000
	.word	-18000
	.word	18000
	.byte	0
	.byte	1
	.byte	2
	.byte	4
	.byte	6
	.byte	7
	.zero	2
	.word	MAIN_aks32OCTrimNvm_def
	.word	MAIN_bOCStoreAswReq
	.word	MAIN_as32OCTrimNvm
	.word	MAIN_vidOcDataRestore
	.word	MAIN_bChkOcCondition
	.word	-3000
	.word	-1500
	.word	-3000
	.word	-1500
	.word	-30000
	.word	-5000
	.word	5000
	.word	30000
	.word	-30000
	.word	-5000
	.word	5000
	.word	30000
	.word	-18000
	.word	18000
	.byte	0
	.byte	1
	.byte	2
	.byte	4
	.byte	6
	.byte	7
	.zero	2
	.word	GMAIN_aks32OCTrimNvm_def
	.word	GMAIN_bOCStoreAswReq
	.word	GMAIN_as32OCTrimNvm
	.word	GMAIN_vidOcDataRestore
	.word	GMAIN_bChkOcCondition
	.global	GMAIN_aks32OCTrimNvm_def
.section .rodata.a4.GMAIN_aks32OCTrimNvm_def,"a",@progbits
	.align 2
	.type	GMAIN_aks32OCTrimNvm_def, @object
	.size	GMAIN_aks32OCTrimNvm_def, 20
GMAIN_aks32OCTrimNvm_def:
	.word	-2026
	.word	-2059
	.word	-14017
	.word	14145
	.word	0
	.global	MAIN_aks32OCTrimNvm_def
.section .rodata.a4.MAIN_aks32OCTrimNvm_def,"a",@progbits
	.align 2
	.type	MAIN_aks32OCTrimNvm_def, @object
	.size	MAIN_aks32OCTrimNvm_def, 20
MAIN_aks32OCTrimNvm_def:
	.word	-2061
	.word	-2028
	.word	13848
	.word	13944
	.word	0
	.global	MAIN_u32FixOcDataBuf
.section .bss.a4.MAIN_u32FixOcDataBuf,"aw",@nobits
	.align 2
	.type	MAIN_u32FixOcDataBuf, @object
	.size	MAIN_u32FixOcDataBuf, 64
MAIN_u32FixOcDataBuf:
	.zero	64
.section .bss.a2.MAIN_OCT_atOnlineCalibSet,"aw",@nobits
	.align 1
	.type	MAIN_OCT_atOnlineCalibSet, @object
	.size	MAIN_OCT_atOnlineCalibSet, 20
MAIN_OCT_atOnlineCalibSet:
	.zero	20
.section .bss.a1.MAIN_bOCStoreResult,"aw",@nobits
	.type	MAIN_bOCStoreResult, @object
	.size	MAIN_bOCStoreResult, 1
MAIN_bOCStoreResult:
	.zero	1
.section .data.a1.MAIN_u8OCStoreState,"aw",@progbits
	.type	MAIN_u8OCStoreState, @object
	.size	MAIN_u8OCStoreState, 1
MAIN_u8OCStoreState:
	.byte	1
.section .bss.a1.MAIN_bOcDataStoreEna,"aw",@nobits
	.type	MAIN_bOcDataStoreEna, @object
	.size	MAIN_bOcDataStoreEna, 1
MAIN_bOcDataStoreEna:
	.zero	1
.section .bss.a4.MAIN_u32OCTrimNvmAlignBuf,"aw",@nobits
	.align 2
	.type	MAIN_u32OCTrimNvmAlignBuf, @object
	.size	MAIN_u32OCTrimNvmAlignBuf, 40
MAIN_u32OCTrimNvmAlignBuf:
	.zero	40
.section .bss.a1.GMAIN_bOCStoreAswReq,"aw",@nobits
	.type	GMAIN_bOCStoreAswReq, @object
	.size	GMAIN_bOCStoreAswReq, 1
GMAIN_bOCStoreAswReq:
	.zero	1
.section .bss.a1.MAIN_bOCStoreAswReq,"aw",@nobits
	.type	MAIN_bOCStoreAswReq, @object
	.size	MAIN_bOCStoreAswReq, 1
MAIN_bOCStoreAswReq:
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
	.uaword	.LFB254
	.uaword	.LFE254-.LFB254
	.byte	0x4
	.uaword	.LCFI0-.LFB254
	.byte	0xe
	.uleb128 0x20
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB255
	.uaword	.LFE255-.LFB255
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB256
	.uaword	.LFE256-.LFB256
	.byte	0x4
	.uaword	.LCFI1-.LFB256
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB258
	.uaword	.LFE258-.LFB258
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB259
	.uaword	.LFE259-.LFB259
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB260
	.uaword	.LFE260-.LFB260
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB261
	.uaword	.LFE261-.LFB261
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB262
	.uaword	.LFE262-.LFB262
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB263
	.uaword	.LFE263-.LFB263
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB264
	.uaword	.LFE264-.LFB264
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB265
	.uaword	.LFE265-.LFB265
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB266
	.uaword	.LFE266-.LFB266
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB267
	.uaword	.LFE267-.LFB267
	.align 2
.LEFDE24:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 4 ".\\output\\inc/..\\..\\rte\\Rte_Type.h"
	.file 5 "main\\_MainModule\\OCTrim\\MAIN_OCTrim.h"
	.file 6 ".\\output\\inc/..\\..\\main\\_MainModule\\CalibData\\MAIN_CalibData.h"
	.file 7 ".\\output\\inc/..\\..\\bswcdd\\DFM\\DFM_Cfg.h"
	.file 8 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\Cpu\\Std\\Ifx_Types.h"
	.file 9 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\_Impl\\IfxCpu_cfg.h"
	.file 10 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\Scu\\Std\\IfxScuCcu.h"
	.file 11 ".\\output\\inc/..\\..\\rte\\Rte_ASW_NVM.h"
	.file 12 ".\\output\\inc/..\\..\\main\\McuMain\\MAIN_tsk.h"
	.file 13 ".\\output\\inc/..\\..\\main\\GcuMain\\GMAIN_tsk.h"
	.file 14 ".\\output\\inc/..\\..\\bsw\\Crc\\Crc.h"
	.file 15 ".\\output\\inc/..\\..\\bswcdd\\DFM\\DFM.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x20c7
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"main\\_MainModule\\OCTrim\\MAIN_OCTrim.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x228
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x2
	.byte	0x51
	.uaword	0x1b4
	.uleb128 0x3
	.string	"uint16"
	.byte	0x2
	.byte	0x5b
	.uaword	0x1c5
	.uleb128 0x3
	.string	"sint32"
	.byte	0x2
	.byte	0x60
	.uaword	0x207
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x3
	.string	"uint32"
	.byte	0x2
	.byte	0x6a
	.uaword	0x1db
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
	.uaword	0x1b4
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
	.uaword	0x21a
	.uleb128 0x4
	.byte	0x4
	.uaword	0x21a
	.uleb128 0x5
	.uaword	0x21a
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2e6
	.uleb128 0x6
	.byte	0x1
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2db
	.uleb128 0x5
	.uaword	0x2d5
	.uleb128 0x7
	.uaword	0x254
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2fe
	.uleb128 0x8
	.byte	0x1
	.uaword	0x28f
	.uleb128 0x3
	.string	"Impl_NVM_DstPtrType_1024"
	.byte	0x4
	.byte	0x3d
	.uaword	0x324
	.uleb128 0x9
	.uaword	0x21a
	.uaword	0x335
	.uleb128 0xa
	.uaword	0x20e
	.uahalf	0x3ff
	.byte	0
	.uleb128 0x9
	.uaword	0x21a
	.uaword	0x345
	.uleb128 0xb
	.uaword	0x20e
	.byte	0x5
	.byte	0
	.uleb128 0xc
	.string	"NvM_BlockIdType"
	.byte	0x4
	.uahalf	0x1ca
	.uaword	0x227
	.uleb128 0x4
	.byte	0x4
	.uaword	0x28f
	.uleb128 0xc
	.string	"Rte_PimType_ASW_NVM_ASW_NVM_BlockNative_1024_Type"
	.byte	0x4
	.uahalf	0x28f
	.uaword	0x304
	.uleb128 0xd
	.string	"MAIN_CONTROL_UNIT_INDEX"
	.byte	0x1
	.byte	0x5
	.byte	0x45
	.uaword	0x401
	.uleb128 0xe
	.string	"eMAIN_UNIT_MCU_INDEX"
	.sleb128 0
	.uleb128 0xe
	.string	"eMAIN_UNIT_GCU_INDEX"
	.sleb128 1
	.uleb128 0xe
	.string	"eMAIN_MAX_UNIT_NUM"
	.sleb128 2
	.byte	0
	.uleb128 0xd
	.string	"eCalibIndex"
	.byte	0x1
	.byte	0x6
	.byte	0x15
	.uaword	0x4bc
	.uleb128 0xe
	.string	"eMAIN_CALIB_BUF_UI_INDEX"
	.sleb128 0
	.uleb128 0xe
	.string	"eMAIN_CALIB_BUF_VI_INDEX"
	.sleb128 1
	.uleb128 0xe
	.string	"eMAIN_CALIB_BUF_WI_INDEX"
	.sleb128 2
	.uleb128 0xe
	.string	"eMAIN_CALIB_BUF_VO_INDEX"
	.sleb128 3
	.uleb128 0xe
	.string	"eMAIN_CALIB_BUF_VALID_PARAM_NO"
	.sleb128 4
	.uleb128 0xe
	.string	"eMAIN_CALIB_BUF_MAX_NO"
	.sleb128 16
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.byte	0x6
	.byte	0x1f
	.uaword	0x534
	.uleb128 0xe
	.string	"eMAIN_CALIB_IDX_MCU1"
	.sleb128 0
	.uleb128 0xe
	.string	"eMAIN_CALIB_IDX_MCU2"
	.sleb128 1
	.uleb128 0xe
	.string	"eMAIN_CALIB_IDX_ACM"
	.sleb128 2
	.uleb128 0xe
	.string	"eMAIN_CALIB_IDX_EPS"
	.sleb128 3
	.uleb128 0xe
	.string	"eMAIN_CALIB_ECU_NO"
	.sleb128 4
	.byte	0
	.uleb128 0xd
	.string	"eRcGainIndex"
	.byte	0x1
	.byte	0x6
	.byte	0x27
	.uaword	0x771
	.uleb128 0xe
	.string	"eMAIN_CALIB_BUF_RC00_INDEX"
	.sleb128 0
	.uleb128 0xe
	.string	"eMAIN_CALIB_BUF_RC01_INDEX"
	.sleb128 1
	.uleb128 0xe
	.string	"eMAIN_CALIB_BUF_RC02_INDEX"
	.sleb128 2
	.uleb128 0xe
	.string	"eMAIN_CALIB_BUF_RC03_INDEX"
	.sleb128 3
	.uleb128 0xe
	.string	"eMAIN_CALIB_BUF_RC04_INDEX"
	.sleb128 4
	.uleb128 0xe
	.string	"eMAIN_CALIB_BUF_RC05_INDEX"
	.sleb128 5
	.uleb128 0xe
	.string	"eMAIN_CALIB_BUF_RC06_INDEX"
	.sleb128 6
	.uleb128 0xe
	.string	"eMAIN_CALIB_BUF_RC07_INDEX"
	.sleb128 7
	.uleb128 0xe
	.string	"eMAIN_CALIB_BUF_RC08_INDEX"
	.sleb128 8
	.uleb128 0xe
	.string	"eMAIN_CALIB_BUF_RC09_INDEX"
	.sleb128 9
	.uleb128 0xe
	.string	"eMAIN_CALIB_BUF_RC10_INDEX"
	.sleb128 10
	.uleb128 0xe
	.string	"eMAIN_CALIB_BUF_RC11_INDEX"
	.sleb128 11
	.uleb128 0xe
	.string	"eMAIN_CALIB_BUF_RC12_INDEX"
	.sleb128 12
	.uleb128 0xe
	.string	"eMAIN_CALIB_BUF_RC13_INDEX"
	.sleb128 13
	.uleb128 0xe
	.string	"eMAIN_CALIB_BUF_RC14_INDEX"
	.sleb128 14
	.uleb128 0xe
	.string	"eMAIN_CALIB_BUF_RC15_INDEX"
	.sleb128 15
	.uleb128 0xe
	.string	"eMAIN_CALIB_BUF_RC16_INDEX"
	.sleb128 16
	.uleb128 0xe
	.string	"eMAIN_CALIB_BUF_VALID_RC_NO"
	.sleb128 17
	.uleb128 0xe
	.string	"eMAIN_CALIB_BUF_MAX_RC_NO"
	.sleb128 25
	.byte	0
	.uleb128 0xd
	.string	"DFM_BLOCK_INDEX"
	.byte	0x1
	.byte	0x7
	.byte	0x50
	.uaword	0x8f3
	.uleb128 0xe
	.string	"DFM_OC_TRIM_BLOCK"
	.sleb128 0
	.uleb128 0xe
	.string	"DFM_CUR_CAL_BLOCK"
	.sleb128 1
	.uleb128 0xe
	.string	"DFM_FRECORD_START_INDEX"
	.sleb128 2
	.uleb128 0xe
	.string	"DFM_MGTCU_FRECORD_A_BLOCK"
	.sleb128 2
	.uleb128 0xe
	.string	"DFM_MGTCU_FRECORD_B_BLOCK"
	.sleb128 3
	.uleb128 0xe
	.string	"DFM_MGTCU_FRECORD_C_BLOCK"
	.sleb128 4
	.uleb128 0xe
	.string	"DFM_MGTCU_FRECORD_D_BLOCK"
	.sleb128 5
	.uleb128 0xe
	.string	"DFM_MGTCU_FRECORD_E_BLOCK"
	.sleb128 6
	.uleb128 0xe
	.string	"DFM_MGTCU_FRECORD_F_BLOCK"
	.sleb128 7
	.uleb128 0xe
	.string	"DFM_MGTCU_FRECORD_G_BLOCK"
	.sleb128 8
	.uleb128 0xe
	.string	"DFM_MGTCU_FRECORD_H_BLOCK"
	.sleb128 9
	.uleb128 0xe
	.string	"DFM_MGTCU_FRECORD_I_BLOCK"
	.sleb128 10
	.uleb128 0xe
	.string	"DFM_FRECORD_END_INDEX"
	.sleb128 11
	.uleb128 0xe
	.string	"DFM_MAX_BLOCK_NO"
	.sleb128 11
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x4
	.byte	0x4
	.uaword	0x901
	.uleb128 0x10
	.uleb128 0x11
	.byte	0x8
	.byte	0x8
	.byte	0x8c
	.uaword	0x92c
	.uleb128 0x12
	.string	"module"
	.byte	0x8
	.byte	0x8e
	.uaword	0x8fb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.string	"index"
	.byte	0x8
	.byte	0x8f
	.uaword	0x235
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"IfxModule_IndexMap"
	.byte	0x8
	.byte	0x90
	.uaword	0x902
	.uleb128 0xf
	.byte	0x1
	.byte	0x9
	.byte	0x88
	.uaword	0x9a7
	.uleb128 0xe
	.string	"IfxCpu_Index_0"
	.sleb128 0
	.uleb128 0xe
	.string	"IfxCpu_Index_1"
	.sleb128 1
	.uleb128 0xe
	.string	"IfxCpu_Index_2"
	.sleb128 2
	.uleb128 0xe
	.string	"IfxCpu_Index_3"
	.sleb128 3
	.uleb128 0xe
	.string	"IfxCpu_Index_none"
	.sleb128 4
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.byte	0xa
	.uahalf	0x160
	.uaword	0xab0
	.uleb128 0xe
	.string	"IfxScuCcu_ModulationAmplitude_0p5"
	.sleb128 0
	.uleb128 0xe
	.string	"IfxScuCcu_ModulationAmplitude_1p0"
	.sleb128 1
	.uleb128 0xe
	.string	"IfxScuCcu_ModulationAmplitude_1p25"
	.sleb128 2
	.uleb128 0xe
	.string	"IfxScuCcu_ModulationAmplitude_1p5"
	.sleb128 3
	.uleb128 0xe
	.string	"IfxScuCcu_ModulationAmplitude_2p0"
	.sleb128 4
	.uleb128 0xe
	.string	"IfxScuCcu_ModulationAmplitude_2p5"
	.sleb128 5
	.uleb128 0xe
	.string	"IfxScuCcu_ModulationAmplitude_count"
	.sleb128 6
	.byte	0
	.uleb128 0xd
	.string	"eOCStoreState"
	.byte	0x1
	.byte	0x1
	.byte	0x35
	.uaword	0xb46
	.uleb128 0xe
	.string	"MAIN_OC_STORE_INIT"
	.sleb128 0
	.uleb128 0xe
	.string	"MAIN_OC_STORE_IDLE"
	.sleb128 1
	.uleb128 0xe
	.string	"MAIN_OC_STORE_COPY"
	.sleb128 2
	.uleb128 0xe
	.string	"MAIN_OC_STORE_ERASE"
	.sleb128 3
	.uleb128 0xe
	.string	"MAIN_OC_STORE_WRITE"
	.sleb128 4
	.uleb128 0xe
	.string	"MAIN_OC_STORE_END"
	.sleb128 5
	.byte	0
	.uleb128 0xd
	.string	"MAIN_tOCTrimBlockIndex"
	.byte	0x1
	.byte	0x1
	.byte	0x3e
	.uaword	0xc4e
	.uleb128 0xe
	.string	"eMAIN_OFFSET_COS_TRIM_INDEX"
	.sleb128 0
	.uleb128 0xe
	.string	"eMAIN_OFFSET_SIN_TRIM_INDEX"
	.sleb128 1
	.uleb128 0xe
	.string	"eMAIN_GAIN_COS_TRIM_INDEX"
	.sleb128 2
	.uleb128 0xe
	.string	"eMAIN_GAIN_SIN_TRIM_INDEX"
	.sleb128 3
	.uleb128 0xe
	.string	"eMAIN_AUTO_PHASING_ANGLE_INDEX"
	.sleb128 4
	.uleb128 0xe
	.string	"eMAIN_OC_DATA_ARRAY_SIZE"
	.sleb128 5
	.uleb128 0xe
	.string	"eMAIN_OC_CRC_INDEX_INDEX"
	.sleb128 5
	.uleb128 0xe
	.string	"eMAIN_OC_NVM_BLOCK_MAX_NUM"
	.sleb128 8
	.byte	0
	.uleb128 0xd
	.string	"MAIN_tOCLimitObjIndex"
	.byte	0x1
	.byte	0x1
	.byte	0x4e
	.uaword	0xd25
	.uleb128 0xe
	.string	"eMAIN_TRIM_0_LIMIT_OBJ_INDEX"
	.sleb128 0
	.uleb128 0xe
	.string	"eMAIN_TRIM_1_LIMIT_OBJ_INDEX"
	.sleb128 1
	.uleb128 0xe
	.string	"eMAIN_TRIM_2_LIMIT_OBJ_INDEX"
	.sleb128 2
	.uleb128 0xe
	.string	"eMAIN_TRIM_3_LIMIT_OBJ_INDEX"
	.sleb128 4
	.uleb128 0xe
	.string	"eMAIN_TRIM_4_LIMIT_OBJ_INDEX"
	.sleb128 6
	.uleb128 0xe
	.string	"eMAIN_OC_LIMIT_OBJ_MAX_NUM"
	.sleb128 7
	.byte	0
	.uleb128 0x14
	.uaword	.LASF0
	.byte	0x1
	.byte	0x1
	.byte	0x59
	.uaword	0xd67
	.uleb128 0xe
	.string	"eMAIN_OCT_PushDataToNvm"
	.sleb128 0
	.uleb128 0xe
	.string	"eMAIN_OCT_GetDataFromNvm"
	.sleb128 1
	.byte	0
	.uleb128 0x15
	.uaword	.LASF0
	.byte	0x1
	.byte	0x5c
	.uaword	0xd25
	.uleb128 0x16
	.uaword	.LASF3
	.byte	0x8
	.byte	0x1
	.byte	0x5e
	.uaword	0xd9b
	.uleb128 0x17
	.uaword	.LASF1
	.byte	0x1
	.byte	0x5f
	.uaword	0x235
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x17
	.uaword	.LASF2
	.byte	0x1
	.byte	0x60
	.uaword	0x235
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x15
	.uaword	.LASF3
	.byte	0x1
	.byte	0x61
	.uaword	0xd72
	.uleb128 0x16
	.uaword	.LASF4
	.byte	0x54
	.byte	0x1
	.byte	0x63
	.uaword	0xe75
	.uleb128 0x12
	.string	"aks32OCTrimLimit"
	.byte	0x1
	.byte	0x64
	.uaword	0xe75
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.string	"aku8LimitObjIdx"
	.byte	0x1
	.byte	0x65
	.uaword	0x335
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x12
	.string	"aks32OCTrimDefault"
	.byte	0x1
	.byte	0x67
	.uaword	0xe85
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x12
	.string	"pbOCStoreAswReq"
	.byte	0x1
	.byte	0x68
	.uaword	0x35d
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x12
	.string	"pas32OCTrimRamBlock"
	.byte	0x1
	.byte	0x69
	.uaword	0xe90
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x12
	.string	"vidOcAswCalRestore"
	.byte	0x1
	.byte	0x6b
	.uaword	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x12
	.string	"bGetRocCondition"
	.byte	0x1
	.byte	0x6c
	.uaword	0x2f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.byte	0
	.uleb128 0x9
	.uaword	0xd9b
	.uaword	0xe85
	.uleb128 0xb
	.uaword	0x20e
	.byte	0x6
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0xe8b
	.uleb128 0x5
	.uaword	0x235
	.uleb128 0x4
	.byte	0x4
	.uaword	0xe96
	.uleb128 0x7
	.uaword	0x235
	.uleb128 0x15
	.uaword	.LASF4
	.byte	0x1
	.byte	0x6d
	.uaword	0xda6
	.uleb128 0xf
	.byte	0x1
	.byte	0x1
	.byte	0x6f
	.uaword	0xf6a
	.uleb128 0xe
	.string	"eMAIN_OC_STT_INIT"
	.sleb128 0
	.uleb128 0xe
	.string	"eMAIN_OC_STT_IDLE"
	.sleb128 1
	.uleb128 0xe
	.string	"eMAIN_OC_STT_START"
	.sleb128 2
	.uleb128 0xe
	.string	"eMAIN_OC_STT_GOING"
	.sleb128 3
	.uleb128 0xe
	.string	"eMAIN_OC_STT_FINISH"
	.sleb128 4
	.uleb128 0xe
	.string	"eMAIN_OC_STT_STORE"
	.sleb128 5
	.uleb128 0xe
	.string	"eMAIN_OC_STT_SUCCS"
	.sleb128 6
	.uleb128 0xe
	.string	"eMAIN_OC_STT_FAILED"
	.sleb128 7
	.uleb128 0xe
	.string	"eMAIN_OC_STT_END"
	.sleb128 8
	.byte	0
	.uleb128 0x11
	.byte	0xa
	.byte	0x1
	.byte	0x7b
	.uaword	0x1060
	.uleb128 0x12
	.string	"u8OcState"
	.byte	0x1
	.byte	0x7c
	.uaword	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.string	"u8OfsAlCalSts"
	.byte	0x1
	.byte	0x7d
	.uaword	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x12
	.string	"u8TrigOcByUser"
	.byte	0x1
	.byte	0x7e
	.uaword	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x12
	.string	"u8OcStsRptDelayCnt"
	.byte	0x1
	.byte	0x7f
	.uaword	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x12
	.string	"bOcModeEna"
	.byte	0x1
	.byte	0x81
	.uaword	0x28f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.string	"bOcStartFlag"
	.byte	0x1
	.byte	0x82
	.uaword	0x28f
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x12
	.string	"bOcRdResultFlag"
	.byte	0x1
	.byte	0x83
	.uaword	0x28f
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x12
	.string	"bOcFinshFlg"
	.byte	0x1
	.byte	0x84
	.uaword	0x28f
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0x12
	.string	"bOcFailureFlg"
	.byte	0x1
	.byte	0x86
	.uaword	0x28f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.string	"bOcNotRatFlg"
	.byte	0x1
	.byte	0x87
	.uaword	0x28f
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.byte	0
	.uleb128 0x3
	.string	"MAIN_OCT_tOnlineCalib"
	.byte	0x1
	.byte	0x88
	.uaword	0xf6a
	.uleb128 0x18
	.string	"MAIN_OCT_vidOcNvmDataAlign"
	.byte	0x1
	.uahalf	0x2ff
	.byte	0x1
	.byte	0x1
	.uaword	0x10d0
	.uleb128 0x19
	.string	"bAlignReq"
	.byte	0x1
	.uahalf	0x2ff
	.uaword	0x28f
	.uleb128 0x1a
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x301
	.uaword	0x21a
	.uleb128 0x1b
	.string	"pu8Ptr"
	.byte	0x1
	.uahalf	0x302
	.uaword	0x2d5
	.byte	0
	.uleb128 0x18
	.string	"MAIN_OCT_vidAswOcDataReload"
	.byte	0x1
	.uahalf	0x2e8
	.byte	0x1
	.byte	0x1
	.uaword	0x110b
	.uleb128 0x1b
	.string	"u8UnitIndex"
	.byte	0x1
	.uahalf	0x2ea
	.uaword	0x21a
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.string	"MAIN_OCT_SetOcDataStoreReq"
	.byte	0x1
	.uahalf	0x1cd
	.byte	0x1
	.byte	0x1
	.uaword	0x1144
	.uleb128 0x19
	.string	"bStoreReq"
	.byte	0x1
	.uahalf	0x1cd
	.uaword	0x28f
	.byte	0
	.uleb128 0x18
	.string	"MAIN_OCT_SetOcStudyDataStoreReq"
	.byte	0x1
	.uahalf	0x1ba
	.byte	0x1
	.byte	0x1
	.uaword	0x117b
	.uleb128 0x1d
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x1ba
	.uaword	0x21a
	.byte	0
	.uleb128 0x18
	.string	"MAIN_OCT_vidOcRamBlockDataHandle"
	.byte	0x1
	.uahalf	0x223
	.byte	0x1
	.byte	0x1
	.uaword	0x1222
	.uleb128 0x1d
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x223
	.uaword	0x21a
	.uleb128 0x19
	.string	"eGetData"
	.byte	0x1
	.uahalf	0x223
	.uaword	0xd67
	.uleb128 0x1b
	.string	"bLocParamValid"
	.byte	0x1
	.uahalf	0x225
	.uaword	0x28f
	.uleb128 0x1b
	.string	"u8RamBlockStartIndex"
	.byte	0x1
	.uahalf	0x227
	.uaword	0x21a
	.uleb128 0x1b
	.string	"u8LoopIndex"
	.byte	0x1
	.uahalf	0x228
	.uaword	0x21a
	.uleb128 0x1b
	.string	"pu32OcDataPtr"
	.byte	0x1
	.uahalf	0x229
	.uaword	0x1222
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2f3
	.uleb128 0x1e
	.byte	0x1
	.string	"MAIN_OCT_bCheckOcTrimData"
	.byte	0x1
	.uahalf	0x160
	.byte	0x1
	.uaword	0x28f
	.byte	0x1
	.uaword	0x12c5
	.uleb128 0x1d
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x160
	.uaword	0x21a
	.uleb128 0x1a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x16a
	.uaword	0x28f
	.uleb128 0x1b
	.string	"u8OcDataIndex"
	.byte	0x1
	.uahalf	0x16b
	.uaword	0x21a
	.uleb128 0x1b
	.string	"u8SegmentIndex"
	.byte	0x1
	.uahalf	0x16c
	.uaword	0x21a
	.uleb128 0x1a
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x16d
	.uaword	0x235
	.uleb128 0x1a
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x16e
	.uaword	0x235
	.uleb128 0x1b
	.string	"ps32OcDataPtr"
	.byte	0x1
	.uahalf	0x16f
	.uaword	0xe90
	.byte	0
	.uleb128 0x18
	.string	"MAIN_OCT_vidOcNvmStore"
	.byte	0x1
	.uahalf	0x25e
	.byte	0x1
	.byte	0x1
	.uaword	0x12f3
	.uleb128 0x1a
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x260
	.uaword	0x21a
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"MAIN_OCT_vidGetOcTrimData"
	.byte	0x1
	.byte	0xf9
	.byte	0x1
	.uaword	.LFB254
	.uaword	.LFE254
	.uaword	.LLST0
	.byte	0x1
	.uaword	0x1626
	.uleb128 0x20
	.string	"bLocalDataValid"
	.byte	0x1
	.byte	0xfb
	.uaword	0x28f
	.uaword	.LLST1
	.uleb128 0x21
	.uaword	.LASF7
	.byte	0x1
	.byte	0xfc
	.uaword	0x28f
	.uaword	.LLST2
	.uleb128 0x20
	.string	"bLocalOcStoreReq"
	.byte	0x1
	.byte	0xfd
	.uaword	0x28f
	.uaword	.LLST2
	.uleb128 0x20
	.string	"bLocalOcNvmStoreReq"
	.byte	0x1
	.byte	0xfe
	.uaword	0x28f
	.uaword	.LLST4
	.uleb128 0x22
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x100
	.uaword	0x21a
	.uaword	.LLST5
	.uleb128 0x22
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x101
	.uaword	0x21a
	.uaword	.LLST6
	.uleb128 0x23
	.string	"u32LocalCrc"
	.byte	0x1
	.uahalf	0x102
	.uaword	0x254
	.uaword	.LLST7
	.uleb128 0x23
	.string	"u32LocalData"
	.byte	0x1
	.uahalf	0x103
	.uaword	0x254
	.uaword	.LLST8
	.uleb128 0x24
	.uaword	0x107d
	.uaword	.LBB33
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.uahalf	0x105
	.uaword	0x142c
	.uleb128 0x25
	.uaword	0x10a2
	.byte	0x1
	.uleb128 0x26
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x27
	.uaword	0x10b4
	.byte	0
	.uleb128 0x28
	.uaword	0x10c0
	.byte	0x6
	.byte	0x3
	.uaword	MAIN_u32OCTrimNvmAlignBuf
	.byte	0x9f
	.uleb128 0x26
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x25
	.uaword	0x10a2
	.byte	0x1
	.uleb128 0x26
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x29
	.uaword	0x10b4
	.uaword	.LLST9
	.uleb128 0x2a
	.uaword	0x10c0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.uaword	0x1228
	.uaword	.LBB40
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x1
	.uahalf	0x11c
	.uaword	0x147a
	.uleb128 0x2b
	.uaword	0x1251
	.uleb128 0x26
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0x29
	.uaword	0x125d
	.uaword	.LLST10
	.uleb128 0x29
	.uaword	0x1269
	.uaword	.LLST11
	.uleb128 0x29
	.uaword	0x127f
	.uaword	.LLST12
	.uleb128 0x2a
	.uaword	0x1296
	.uleb128 0x29
	.uaword	0x12a2
	.uaword	.LLST13
	.uleb128 0x2a
	.uaword	0x12ae
	.byte	0
	.byte	0
	.uleb128 0x24
	.uaword	0x1228
	.uaword	.LBB43
	.uaword	.Ldebug_ranges0+0x30
	.byte	0x1
	.uahalf	0x13e
	.uaword	0x14d0
	.uleb128 0x2c
	.uaword	0x1251
	.uaword	.LLST14
	.uleb128 0x26
	.uaword	.Ldebug_ranges0+0x30
	.uleb128 0x29
	.uaword	0x125d
	.uaword	.LLST15
	.uleb128 0x29
	.uaword	0x1269
	.uaword	.LLST16
	.uleb128 0x29
	.uaword	0x127f
	.uaword	.LLST17
	.uleb128 0x2a
	.uaword	0x1296
	.uleb128 0x29
	.uaword	0x12a2
	.uaword	.LLST18
	.uleb128 0x29
	.uaword	0x12ae
	.uaword	.LLST19
	.byte	0
	.byte	0
	.uleb128 0x24
	.uaword	0x117b
	.uaword	.LBB52
	.uaword	.Ldebug_ranges0+0x70
	.byte	0x1
	.uahalf	0x13c
	.uaword	0x1521
	.uleb128 0x2c
	.uaword	0x11b2
	.uaword	.LLST20
	.uleb128 0x2c
	.uaword	0x11a6
	.uaword	.LLST21
	.uleb128 0x26
	.uaword	.Ldebug_ranges0+0x70
	.uleb128 0x29
	.uaword	0x11c3
	.uaword	.LLST20
	.uleb128 0x29
	.uaword	0x11da
	.uaword	.LLST23
	.uleb128 0x29
	.uaword	0x11f7
	.uaword	.LLST24
	.uleb128 0x29
	.uaword	0x120b
	.uaword	.LLST25
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uaword	0x110b
	.uaword	.LBB61
	.uaword	.LBE61
	.byte	0x1
	.uahalf	0x14a
	.uaword	0x153f
	.uleb128 0x2c
	.uaword	0x1131
	.uaword	.LLST26
	.byte	0
	.uleb128 0x24
	.uaword	0x12c5
	.uaword	.LBB64
	.uaword	.Ldebug_ranges0+0x88
	.byte	0x1
	.uahalf	0x14e
	.uaword	0x1600
	.uleb128 0x26
	.uaword	.Ldebug_ranges0+0x88
	.uleb128 0x29
	.uaword	0x12e6
	.uaword	.LLST27
	.uleb128 0x24
	.uaword	0x117b
	.uaword	.LBB66
	.uaword	.Ldebug_ranges0+0xa8
	.byte	0x1
	.uahalf	0x264
	.uaword	0x15ae
	.uleb128 0x2c
	.uaword	0x11b2
	.uaword	.LLST28
	.uleb128 0x2c
	.uaword	0x11a6
	.uaword	.LLST29
	.uleb128 0x26
	.uaword	.Ldebug_ranges0+0xa8
	.uleb128 0x29
	.uaword	0x11c3
	.uaword	.LLST30
	.uleb128 0x29
	.uaword	0x11da
	.uaword	.LLST31
	.uleb128 0x29
	.uaword	0x11f7
	.uaword	.LLST32
	.uleb128 0x2a
	.uaword	0x120b
	.byte	0
	.byte	0
	.uleb128 0x24
	.uaword	0x107d
	.uaword	.LBB69
	.uaword	.Ldebug_ranges0+0xc0
	.byte	0x1
	.uahalf	0x267
	.uaword	0x15dc
	.uleb128 0x2b
	.uaword	0x10a2
	.uleb128 0x26
	.uaword	.Ldebug_ranges0+0xc0
	.uleb128 0x29
	.uaword	0x10b4
	.uaword	.LLST33
	.uleb128 0x2a
	.uaword	0x10c0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uaword	.LVL66
	.uaword	0x1f91
	.uaword	0x15f4
	.uleb128 0x2f
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0x2f
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x47
	.byte	0
	.uleb128 0x30
	.uaword	.LVL68
	.byte	0x1
	.uaword	0x1fc0
	.byte	0
	.byte	0
	.uleb128 0x31
	.uaword	.LVL9
	.uaword	0x1fd3
	.uleb128 0x2f
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x31
	.uleb128 0x2f
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x2f
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x44
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x7
	.byte	0x7f
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x8d
	.sleb128 0
	.byte	0x22
	.byte	0
	.byte	0
	.uleb128 0x32
	.uaword	0x1228
	.uaword	.LFB255
	.uaword	.LFE255
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1677
	.uleb128 0x2c
	.uaword	0x1251
	.uaword	.LLST34
	.uleb128 0x29
	.uaword	0x125d
	.uaword	.LLST35
	.uleb128 0x29
	.uaword	0x1269
	.uaword	.LLST36
	.uleb128 0x29
	.uaword	0x127f
	.uaword	.LLST37
	.uleb128 0x2a
	.uaword	0x1296
	.uleb128 0x29
	.uaword	0x12a2
	.uaword	.LLST38
	.uleb128 0x29
	.uaword	0x12ae
	.uaword	.LLST39
	.byte	0
	.uleb128 0x18
	.string	"MAIN_OCT_vidOcStateMng"
	.byte	0x1
	.uahalf	0x31e
	.byte	0x1
	.byte	0x1
	.uaword	0x16bc
	.uleb128 0x1d
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x31e
	.uaword	0x2db
	.uleb128 0x1b
	.string	"bLocRocCondSts"
	.byte	0x1
	.uahalf	0x320
	.uaword	0x28f
	.byte	0
	.uleb128 0x33
	.string	"MAIN_OCT_bOcDataStore"
	.byte	0x1
	.uahalf	0x276
	.byte	0x1
	.uaword	0x28f
	.byte	0x1
	.uaword	0x1769
	.uleb128 0x1b
	.string	"u8LocOCstoreEndDelay"
	.byte	0x1
	.uahalf	0x278
	.uaword	0x21a
	.uleb128 0x1a
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x27a
	.uaword	0x21a
	.uleb128 0x1b
	.string	"u8ErrCode"
	.byte	0x1
	.uahalf	0x27b
	.uaword	0x21a
	.uleb128 0x1b
	.string	"bRetVal"
	.byte	0x1
	.uahalf	0x27c
	.uaword	0x28f
	.uleb128 0x1b
	.string	"bOpResult"
	.byte	0x1
	.uahalf	0x27d
	.uaword	0x28f
	.uleb128 0x34
	.uleb128 0x1b
	.string	"u8UnitID"
	.byte	0x1
	.uahalf	0x292
	.uaword	0x21a
	.uleb128 0x1b
	.string	"u32RamBlockAddr"
	.byte	0x1
	.uahalf	0x293
	.uaword	0x254
	.byte	0
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.string	"MAIN_OCT_vidOcDataMng"
	.byte	0x1
	.uahalf	0x1a3
	.byte	0x1
	.uaword	.LFB256
	.uaword	.LFE256
	.uaword	.LLST40
	.byte	0x1
	.uaword	0x1a51
	.uleb128 0x24
	.uaword	0x1677
	.uaword	.LBB104
	.uaword	.Ldebug_ranges0+0xd8
	.byte	0x1
	.uahalf	0x1a6
	.uaword	0x1801
	.uleb128 0x25
	.uaword	0x1698
	.byte	0
	.uleb128 0x26
	.uaword	.Ldebug_ranges0+0xd8
	.uleb128 0x29
	.uaword	0x16a4
	.uaword	.LLST41
	.uleb128 0x2d
	.uaword	0x1144
	.uaword	.LBB106
	.uaword	.LBE106
	.byte	0x1
	.uahalf	0x361
	.uaword	0x17f6
	.uleb128 0x2c
	.uaword	0x116e
	.uaword	.LLST42
	.uleb128 0x36
	.uaword	0x110b
	.uaword	.LBB108
	.uaword	.LBE108
	.byte	0x1
	.uahalf	0x1bf
	.uleb128 0x2c
	.uaword	0x1131
	.uaword	.LLST43
	.byte	0
	.byte	0
	.uleb128 0x37
	.uaword	.LVL144
	.uaword	0x2009
	.byte	0
	.byte	0
	.uleb128 0x24
	.uaword	0x1677
	.uaword	.LBB115
	.uaword	.Ldebug_ranges0+0x108
	.byte	0x1
	.uahalf	0x1a7
	.uaword	0x186f
	.uleb128 0x2c
	.uaword	0x1698
	.uaword	.LLST44
	.uleb128 0x26
	.uaword	.Ldebug_ranges0+0x108
	.uleb128 0x29
	.uaword	0x16a4
	.uaword	.LLST45
	.uleb128 0x2d
	.uaword	0x1144
	.uaword	.LBB117
	.uaword	.LBE117
	.byte	0x1
	.uahalf	0x361
	.uaword	0x1864
	.uleb128 0x2c
	.uaword	0x116e
	.uaword	.LLST46
	.uleb128 0x36
	.uaword	0x110b
	.uaword	.LBB119
	.uaword	.LBE119
	.byte	0x1
	.uahalf	0x1bf
	.uleb128 0x2c
	.uaword	0x1131
	.uaword	.LLST47
	.byte	0
	.byte	0
	.uleb128 0x37
	.uaword	.LVL150
	.uaword	0x2028
	.byte	0
	.byte	0
	.uleb128 0x24
	.uaword	0x16bc
	.uaword	.LBB124
	.uaword	.Ldebug_ranges0+0x130
	.byte	0x1
	.uahalf	0x1a9
	.uaword	0x1a36
	.uleb128 0x26
	.uaword	.Ldebug_ranges0+0x130
	.uleb128 0x29
	.uaword	0x16fd
	.uaword	.LLST48
	.uleb128 0x28
	.uaword	0x1709
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x29
	.uaword	0x171b
	.uaword	.LLST49
	.uleb128 0x29
	.uaword	0x172b
	.uaword	.LLST50
	.uleb128 0x28
	.uaword	0x16e0
	.byte	0x5
	.byte	0x3
	.uaword	u8LocOCstoreEndDelay.15200
	.uleb128 0x24
	.uaword	0x10d0
	.uaword	.LBB126
	.uaword	.Ldebug_ranges0+0x180
	.byte	0x1
	.uahalf	0x28c
	.uaword	0x18ec
	.uleb128 0x26
	.uaword	.Ldebug_ranges0+0x180
	.uleb128 0x29
	.uaword	0x10f6
	.uaword	.LLST51
	.uleb128 0x37
	.uaword	.LVL107
	.uaword	0x2048
	.uleb128 0x37
	.uaword	.LVL163
	.uaword	0x2065
	.byte	0
	.byte	0
	.uleb128 0x38
	.uaword	.Ldebug_ranges0+0x1a0
	.uaword	0x1a0c
	.uleb128 0x29
	.uaword	0x173e
	.uaword	.LLST52
	.uleb128 0x29
	.uaword	0x174f
	.uaword	.LLST53
	.uleb128 0x24
	.uaword	0x12c5
	.uaword	.LBB132
	.uaword	.Ldebug_ranges0+0x1c8
	.byte	0x1
	.uahalf	0x295
	.uaword	0x19c7
	.uleb128 0x26
	.uaword	.Ldebug_ranges0+0x1c8
	.uleb128 0x29
	.uaword	0x12e6
	.uaword	.LLST54
	.uleb128 0x24
	.uaword	0x117b
	.uaword	.LBB134
	.uaword	.Ldebug_ranges0+0x1e0
	.byte	0x1
	.uahalf	0x264
	.uaword	0x1976
	.uleb128 0x2c
	.uaword	0x11b2
	.uaword	.LLST55
	.uleb128 0x2c
	.uaword	0x11a6
	.uaword	.LLST56
	.uleb128 0x26
	.uaword	.Ldebug_ranges0+0x1e0
	.uleb128 0x29
	.uaword	0x11c3
	.uaword	.LLST57
	.uleb128 0x29
	.uaword	0x11da
	.uaword	.LLST58
	.uleb128 0x29
	.uaword	0x11f7
	.uaword	.LLST59
	.uleb128 0x2a
	.uaword	0x120b
	.byte	0
	.byte	0
	.uleb128 0x24
	.uaword	0x107d
	.uaword	.LBB137
	.uaword	.Ldebug_ranges0+0x1f8
	.byte	0x1
	.uahalf	0x267
	.uaword	0x19a4
	.uleb128 0x2b
	.uaword	0x10a2
	.uleb128 0x26
	.uaword	.Ldebug_ranges0+0x1f8
	.uleb128 0x29
	.uaword	0x10b4
	.uaword	.LLST60
	.uleb128 0x2a
	.uaword	0x10c0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uaword	.LVL120
	.uaword	0x1f91
	.uaword	0x19bc
	.uleb128 0x2f
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0x2f
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x47
	.byte	0
	.uleb128 0x37
	.uaword	.LVL121
	.uaword	0x1fc0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uaword	.LVL137
	.uaword	0x1fd3
	.uaword	0x19eb
	.uleb128 0x2f
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x31
	.uleb128 0x2f
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x2f
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x44
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.uaword	.LVL139
	.uaword	0x1fd3
	.uleb128 0x2f
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x31
	.uleb128 0x2f
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x2f
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x44
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 32
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uaword	.LVL103
	.uaword	0x2081
	.uaword	0x1a25
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x2f
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x31
	.uaword	.LVL142
	.uaword	0x20aa
	.uleb128 0x2f
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x39
	.uaword	0x110b
	.uaword	.LBB167
	.uaword	.Ldebug_ranges0+0x210
	.byte	0x1
	.uahalf	0x1ac
	.uleb128 0x2c
	.uaword	0x1131
	.uaword	.LLST61
	.byte	0
	.byte	0
	.uleb128 0x32
	.uaword	0x110b
	.uaword	.LFB258
	.uaword	.LFE258
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1a6e
	.uleb128 0x3a
	.uaword	0x1131
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x3b
	.byte	0x1
	.string	"MAIN_OCT_vidTrigOcCalib"
	.byte	0x1
	.uahalf	0x1d2
	.byte	0x1
	.uaword	.LFB259
	.uaword	.LFE259
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1aab
	.uleb128 0x3c
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x1d2
	.uaword	0x2db
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.string	"MAIN_OCT_u8GetOcCalibState"
	.byte	0x1
	.uahalf	0x1d7
	.byte	0x1
	.uaword	0x21a
	.uaword	.LFB260
	.uaword	.LFE260
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1aef
	.uleb128 0x3c
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x1d7
	.uaword	0x2db
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x3b
	.byte	0x1
	.string	"MAIN_OCT_vidSetOcFinishFlg"
	.byte	0x1
	.uahalf	0x1dc
	.byte	0x1
	.uaword	.LFB261
	.uaword	.LFE261
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1b3f
	.uleb128 0x3c
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x1dc
	.uaword	0x2db
	.byte	0x1
	.byte	0x54
	.uleb128 0x3e
	.string	"bFlag"
	.byte	0x1
	.uahalf	0x1dc
	.uaword	0x28f
	.byte	0x1
	.byte	0x55
	.byte	0
	.uleb128 0x3b
	.byte	0x1
	.string	"MAIN_OCT_vidSetOcFailureFlg"
	.byte	0x1
	.uahalf	0x1e1
	.byte	0x1
	.uaword	.LFB262
	.uaword	.LFE262
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1b90
	.uleb128 0x3c
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x1e1
	.uaword	0x2db
	.byte	0x1
	.byte	0x54
	.uleb128 0x3e
	.string	"bFlag"
	.byte	0x1
	.uahalf	0x1e1
	.uaword	0x28f
	.byte	0x1
	.byte	0x55
	.byte	0
	.uleb128 0x3b
	.byte	0x1
	.string	"MAIN_OCT_vidSetOcNotRatFlg"
	.byte	0x1
	.uahalf	0x1e6
	.byte	0x1
	.uaword	.LFB263
	.uaword	.LFE263
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1be0
	.uleb128 0x3c
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x1e6
	.uaword	0x2db
	.byte	0x1
	.byte	0x54
	.uleb128 0x3e
	.string	"bFlag"
	.byte	0x1
	.uahalf	0x1e6
	.uaword	0x28f
	.byte	0x1
	.byte	0x55
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.string	"MAIN_OCT_bGetOcModeEna"
	.byte	0x1
	.uahalf	0x1eb
	.byte	0x1
	.uaword	0x28f
	.uaword	.LFB264
	.uaword	.LFE264
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1c20
	.uleb128 0x3c
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x1eb
	.uaword	0x2db
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.string	"MAIN_OCT_bGetOcRdResultFlag"
	.byte	0x1
	.uahalf	0x1f0
	.byte	0x1
	.uaword	0x28f
	.uaword	.LFB265
	.uaword	.LFE265
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1c65
	.uleb128 0x3c
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x1f0
	.uaword	0x2db
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.string	"MAIN_OCT_bGetOcStartFlag"
	.byte	0x1
	.uahalf	0x1f5
	.byte	0x1
	.uaword	0x28f
	.uaword	.LFB266
	.uaword	.LFE266
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1ca7
	.uleb128 0x3c
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x1f5
	.uaword	0x2db
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x3b
	.byte	0x1
	.string	"MAIN_OCT_vidRestoreOcBlockDefaults"
	.byte	0x1
	.uahalf	0x204
	.byte	0x1
	.uaword	.LFB267
	.uaword	.LFE267
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1cff
	.uleb128 0x3c
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x204
	.uaword	0x21a
	.byte	0x1
	.byte	0x54
	.uleb128 0x22
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x206
	.uaword	0x21a
	.uaword	.LLST62
	.byte	0
	.uleb128 0x3f
	.string	"MAIN_bOCStoreAswReq"
	.byte	0x1
	.byte	0x8e
	.uaword	0x28f
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_bOCStoreAswReq
	.uleb128 0x3f
	.string	"GMAIN_bOCStoreAswReq"
	.byte	0x1
	.byte	0x8f
	.uaword	0x28f
	.byte	0x5
	.byte	0x3
	.uaword	GMAIN_bOCStoreAswReq
	.uleb128 0x9
	.uaword	0x254
	.uaword	0x1d52
	.uleb128 0xb
	.uaword	0x20e
	.byte	0x9
	.byte	0
	.uleb128 0x3f
	.string	"MAIN_u32OCTrimNvmAlignBuf"
	.byte	0x1
	.byte	0x90
	.uaword	0x1d42
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_u32OCTrimNvmAlignBuf
	.uleb128 0x3f
	.string	"MAIN_bOcDataStoreEna"
	.byte	0x1
	.byte	0x92
	.uaword	0x28f
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_bOcDataStoreEna
	.uleb128 0x3f
	.string	"MAIN_u8OCStoreState"
	.byte	0x1
	.byte	0x93
	.uaword	0x21a
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_u8OCStoreState
	.uleb128 0x3f
	.string	"MAIN_bOCStoreResult"
	.byte	0x1
	.byte	0x94
	.uaword	0x28f
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_bOCStoreResult
	.uleb128 0x9
	.uaword	0x1060
	.uaword	0x1ded
	.uleb128 0xb
	.uaword	0x20e
	.byte	0x1
	.byte	0
	.uleb128 0x3f
	.string	"MAIN_OCT_atOnlineCalibSet"
	.byte	0x1
	.byte	0x95
	.uaword	0x1ddd
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_OCT_atOnlineCalibSet
	.uleb128 0x9
	.uaword	0xe9b
	.uaword	0x1e24
	.uleb128 0xb
	.uaword	0x20e
	.byte	0x1
	.byte	0
	.uleb128 0x3f
	.string	"MAIN_atOCTrimEcuCfgSet"
	.byte	0x1
	.byte	0xa5
	.uaword	0x1e48
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_atOCTrimEcuCfgSet
	.uleb128 0x5
	.uaword	0x1e14
	.uleb128 0x40
	.string	"Rte_CPim_ASW_NVM_ASW_NVM_BlockNative_1024_1"
	.byte	0xb
	.byte	0x93
	.uaword	0x363
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.uaword	0x235
	.uaword	0x1e92
	.uleb128 0xb
	.uaword	0x20e
	.byte	0x4
	.byte	0
	.uleb128 0x41
	.string	"MAIN_aks32OCTrimNvm_def"
	.byte	0x1
	.byte	0x9f
	.uaword	0x1eb8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_aks32OCTrimNvm_def
	.uleb128 0x5
	.uaword	0x1e82
	.uleb128 0x41
	.string	"GMAIN_aks32OCTrimNvm_def"
	.byte	0x1
	.byte	0xa0
	.uaword	0x1ee4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	GMAIN_aks32OCTrimNvm_def
	.uleb128 0x5
	.uaword	0x1e82
	.uleb128 0x9
	.uaword	0x254
	.uaword	0x1ef9
	.uleb128 0xb
	.uaword	0x20e
	.byte	0xf
	.byte	0
	.uleb128 0x41
	.string	"MAIN_u32FixOcDataBuf"
	.byte	0x1
	.byte	0x9a
	.uaword	0x1ee9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_u32FixOcDataBuf
	.uleb128 0x40
	.string	"MAIN_as32OCTrimNvm"
	.byte	0xc
	.byte	0x4c
	.uaword	0x1f38
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.uaword	0x1e82
	.uleb128 0x40
	.string	"GMAIN_as32OCTrimNvm"
	.byte	0xd
	.byte	0x4a
	.uaword	0x1f5a
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.uaword	0x1e82
	.uleb128 0x9
	.uaword	0x92c
	.uaword	0x1f6f
	.uleb128 0xb
	.uaword	0x20e
	.byte	0x3
	.byte	0
	.uleb128 0x40
	.string	"IfxCpu_cfg_indexMap"
	.byte	0x9
	.byte	0xaa
	.uaword	0x1f8c
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.uaword	0x1f5f
	.uleb128 0x42
	.byte	0x1
	.string	"NvM_SetRamBlockStatus"
	.byte	0xb
	.byte	0x84
	.byte	0x1
	.uaword	0x2bf
	.byte	0x1
	.uaword	0x1fc0
	.uleb128 0x43
	.uaword	0x345
	.uleb128 0x43
	.uaword	0x28f
	.byte	0
	.uleb128 0x44
	.byte	0x1
	.string	"NvM_WriteAll"
	.byte	0x1
	.byte	0x14
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.byte	0x1
	.string	"Crc_CalculateCRC32"
	.byte	0xe
	.byte	0x41
	.byte	0x1
	.uaword	0x254
	.byte	0x1
	.uaword	0x2009
	.uleb128 0x43
	.uaword	0x2e8
	.uleb128 0x43
	.uaword	0x254
	.uleb128 0x43
	.uaword	0x254
	.uleb128 0x43
	.uaword	0x28f
	.byte	0
	.uleb128 0x45
	.byte	0x1
	.string	"MAIN_bChkOcCondition"
	.byte	0xc
	.byte	0x83
	.byte	0x1
	.uaword	0x28f
	.byte	0x1
	.uleb128 0x45
	.byte	0x1
	.string	"GMAIN_bChkOcCondition"
	.byte	0xd
	.byte	0x5a
	.byte	0x1
	.uaword	0x28f
	.byte	0x1
	.uleb128 0x44
	.byte	0x1
	.string	"GMAIN_vidOcDataRestore"
	.byte	0xd
	.byte	0x60
	.byte	0x1
	.byte	0x1
	.uleb128 0x44
	.byte	0x1
	.string	"MAIN_vidOcDataRestore"
	.byte	0xc
	.byte	0x88
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.byte	0x1
	.string	"DFM_bWriteBlock"
	.byte	0xf
	.byte	0x37
	.byte	0x1
	.uaword	0x28f
	.byte	0x1
	.uaword	0x20aa
	.uleb128 0x43
	.uaword	0x2db
	.uleb128 0x43
	.uaword	0x2ee
	.byte	0
	.uleb128 0x46
	.byte	0x1
	.string	"DFM_bEraseBlock"
	.byte	0xf
	.byte	0x36
	.byte	0x1
	.uaword	0x28f
	.byte	0x1
	.uleb128 0x43
	.uaword	0x2db
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x35
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0xe
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x35
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x15
	.uleb128 0x16
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
	.uleb128 0x16
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0xb
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
	.uleb128 0xb
	.byte	0x1
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
	.uleb128 0x36
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
	.uleb128 0x37
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.uleb128 0x3a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x43
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x44
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x45
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x46
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
	.uaword	.LFB254
	.uaword	.LCFI0
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0
	.uaword	.LFE254
	.uahalf	0x2
	.byte	0x8a
	.sleb128 32
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL2
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL2
	.uaword	.LVL29
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LVL29
	.uaword	.LVL30
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL30
	.uaword	.LVL46
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LVL46
	.uaword	.LVL50
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL50
	.uaword	.LVL67
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LVL67
	.uaword	.LVL68
	.uahalf	0x2
	.byte	0x8a
	.sleb128 -32
	.uaword	.LVL68
	.uaword	.LFE254
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL0
	.uaword	.LVL2
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL46
	.uaword	.LVL50
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
	.uaword	.LVL2
	.uaword	.LVL46
	.uahalf	0x2
	.byte	0x91
	.sleb128 -8
	.uaword	.LVL46
	.uaword	.LVL50
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL50
	.uaword	.LVL67
	.uahalf	0x2
	.byte	0x91
	.sleb128 -8
	.uaword	.LVL67
	.uaword	.LVL68
	.uahalf	0x2
	.byte	0x8a
	.sleb128 -8
	.uaword	.LVL68
	.uaword	.LVL74
	.uahalf	0x2
	.byte	0x91
	.sleb128 -8
	.uaword	.LVL75
	.uaword	.LVL76
	.uahalf	0x2
	.byte	0x91
	.sleb128 -8
	.uaword	.LVL77
	.uaword	.LVL78
	.uahalf	0x2
	.byte	0x91
	.sleb128 -8
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL0
	.uaword	.LVL2
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL2
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x5c
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x3
	.byte	0x7c
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LVL46
	.uahalf	0x1
	.byte	0x5c
	.uaword	.LVL46
	.uaword	.LVL50
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL50
	.uaword	.LVL51
	.uahalf	0x3
	.byte	0x7c
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL51
	.uaword	.LVL54
	.uahalf	0x1
	.byte	0x5c
	.uaword	.LVL54
	.uaword	.LVL68
	.uahalf	0x3
	.byte	0x7c
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL68
	.uaword	.LVL69
	.uahalf	0x1
	.byte	0x5c
	.uaword	.LVL69
	.uaword	.LVL73
	.uahalf	0x3
	.byte	0x7c
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL73
	.uaword	.LFE254
	.uahalf	0x1
	.byte	0x5c
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL0
	.uaword	.LVL3
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x5d
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x3
	.byte	0x7f
	.sleb128 5
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x3
	.byte	0x7d
	.sleb128 5
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LVL21
	.uahalf	0x3
	.byte	0x7d
	.sleb128 5
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL24
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL26
	.uaword	.LVL27
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL27
	.uaword	.LVL29
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL30
	.uaword	.LVL46
	.uahalf	0x3
	.byte	0x7d
	.sleb128 5
	.byte	0x9f
	.uaword	.LVL46
	.uaword	.LVL50
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL51
	.uaword	.LVL54
	.uahalf	0x3
	.byte	0x7d
	.sleb128 5
	.byte	0x9f
	.uaword	.LVL68
	.uaword	.LVL69
	.uahalf	0x3
	.byte	0x7d
	.sleb128 5
	.byte	0x9f
	.uaword	.LVL75
	.uaword	.LVL77
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL77
	.uaword	.LFE254
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL0
	.uaword	.LVL2
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL46
	.uaword	.LVL50
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL0
	.uaword	.LVL2
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL22
	.uaword	.LVL24
	.uahalf	0xa
	.byte	0x72
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.uaword	MAIN_u32OCTrimNvmAlignBuf
	.byte	0x22
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0xa
	.byte	0x72
	.sleb128 1
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.uaword	MAIN_u32OCTrimNvmAlignBuf
	.byte	0x22
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0xa
	.byte	0x72
	.sleb128 2
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.uaword	MAIN_u32OCTrimNvmAlignBuf
	.byte	0x22
	.uaword	.LVL26
	.uaword	.LVL27
	.uahalf	0xa
	.byte	0x72
	.sleb128 3
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.uaword	MAIN_u32OCTrimNvmAlignBuf
	.byte	0x22
	.uaword	.LVL27
	.uaword	.LVL28
	.uahalf	0xa
	.byte	0x72
	.sleb128 4
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.uaword	MAIN_u32OCTrimNvmAlignBuf
	.byte	0x22
	.uaword	.LVL28
	.uaword	.LVL29
	.uahalf	0xe
	.byte	0x7c
	.sleb128 0
	.byte	0x35
	.byte	0x1e
	.byte	0x23
	.uleb128 0x4
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.uaword	MAIN_u32OCTrimNvmAlignBuf
	.byte	0x22
	.uaword	.LVL46
	.uaword	.LVL50
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL75
	.uaword	.LVL77
	.uahalf	0xa
	.byte	0x72
	.sleb128 2
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.uaword	MAIN_u32OCTrimNvmAlignBuf
	.byte	0x22
	.uaword	.LVL77
	.uaword	.LFE254
	.uahalf	0xa
	.byte	0x72
	.sleb128 1
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.uaword	MAIN_u32OCTrimNvmAlignBuf
	.byte	0x22
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL46
	.uaword	.LVL47
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL47
	.uaword	.LVL48
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL48
	.uaword	.LVL49
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL14
	.uaword	.LVL20
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LVL30
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL30
	.uaword	.LVL32
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL73
	.uaword	.LFE254
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL15
	.uaword	.LVL20
	.uahalf	0x3
	.byte	0x77
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LVL30
	.uahalf	0x3
	.byte	0x77
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL30
	.uaword	.LVL32
	.uahalf	0x3
	.byte	0x77
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL73
	.uaword	.LFE254
	.uahalf	0x3
	.byte	0x77
	.sleb128 1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x2
	.byte	0x8f
	.sleb128 56
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x7
	.byte	0x77
	.sleb128 0
	.byte	0x8e
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x37
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x8
	.byte	0x74
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	.LVL31
	.uaword	.LVL32
	.uahalf	0x8
	.byte	0x74
	.sleb128 -1
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL19
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL30
	.uaword	.LVL32
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL37
	.uaword	.LVL46
	.uahalf	0x1
	.byte	0x5c
	.uaword	.LVL51
	.uaword	.LVL54
	.uahalf	0x1
	.byte	0x5c
	.uaword	.LVL68
	.uaword	.LVL69
	.uahalf	0x1
	.byte	0x5c
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL37
	.uaword	.LVL38
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL38
	.uaword	.LVL45
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL45
	.uaword	.LVL46
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL51
	.uaword	.LVL54
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL68
	.uaword	.LVL69
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL37
	.uaword	.LVL38
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL38
	.uaword	.LVL39
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL39
	.uaword	.LVL45
	.uahalf	0x3
	.byte	0x77
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL45
	.uaword	.LVL46
	.uahalf	0x3
	.byte	0x77
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL51
	.uaword	.LVL54
	.uahalf	0x3
	.byte	0x77
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL68
	.uaword	.LVL69
	.uahalf	0x3
	.byte	0x77
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL40
	.uaword	.LVL41
	.uahalf	0x2
	.byte	0x8f
	.sleb128 56
	.uaword	.LVL41
	.uaword	.LVL42
	.uahalf	0x7
	.byte	0x77
	.sleb128 0
	.byte	0x84
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x37
	.uaword	.LVL42
	.uaword	.LVL43
	.uahalf	0x7
	.byte	0x70
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x37
	.uaword	.LVL51
	.uaword	.LVL52
	.uahalf	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	.LVL52
	.uaword	.LVL53
	.uahalf	0x8
	.byte	0x73
	.sleb128 -1
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	.LVL68
	.uaword	.LVL69
	.uahalf	0x7
	.byte	0x70
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x37
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL44
	.uaword	.LVL46
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL51
	.uaword	.LVL54
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL37
	.uaword	.LVL46
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL51
	.uaword	.LVL54
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL68
	.uaword	.LVL69
	.uahalf	0x1
	.byte	0x5b
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL32
	.uaword	.LVL46
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL51
	.uaword	.LVL54
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL68
	.uaword	.LVL69
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL32
	.uaword	.LVL46
	.uahalf	0x1
	.byte	0x5c
	.uaword	.LVL51
	.uaword	.LVL54
	.uahalf	0x1
	.byte	0x5c
	.uaword	.LVL68
	.uaword	.LVL69
	.uahalf	0x1
	.byte	0x5c
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL32
	.uaword	.LVL46
	.uahalf	0x5
	.byte	0x7c
	.sleb128 0
	.byte	0x35
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL51
	.uaword	.LVL54
	.uahalf	0x5
	.byte	0x7c
	.sleb128 0
	.byte	0x35
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL68
	.uaword	.LVL69
	.uahalf	0x5
	.byte	0x7c
	.sleb128 0
	.byte	0x35
	.byte	0x1e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL33
	.uaword	.LVL34
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL34
	.uaword	.LVL35
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL35
	.uaword	.LVL36
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL36
	.uaword	.LVL37
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL37
	.uaword	.LVL46
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL51
	.uaword	.LVL54
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL68
	.uaword	.LVL69
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL32
	.uaword	.LVL46
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL51
	.uaword	.LVL54
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL68
	.uaword	.LVL69
	.uahalf	0x1
	.byte	0x5b
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL50
	.uaword	.LVL51
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL54
	.uaword	.LVL59
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL59
	.uaword	.LVL64
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL64
	.uaword	.LVL68
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL69
	.uaword	.LVL73
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL54
	.uaword	.LVL68
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL69
	.uaword	.LVL73
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL54
	.uaword	.LVL59
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL59
	.uaword	.LVL68
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL69
	.uaword	.LVL73
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL54
	.uaword	.LVL68
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL69
	.uaword	.LVL73
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL54
	.uaword	.LVL59
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL59
	.uaword	.LVL68
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL69
	.uaword	.LVL73
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL54
	.uaword	.LVL55
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL55
	.uaword	.LVL56
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL56
	.uaword	.LVL57
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL57
	.uaword	.LVL58
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL58
	.uaword	.LVL59
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL59
	.uaword	.LVL60
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL60
	.uaword	.LVL61
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL61
	.uaword	.LVL62
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL62
	.uaword	.LVL63
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL63
	.uaword	.LVL64
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL64
	.uaword	.LVL68
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL69
	.uaword	.LVL73
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL64
	.uaword	.LVL65
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL69
	.uaword	.LVL70
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL70
	.uaword	.LVL71
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL71
	.uaword	.LVL72
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL79
	.uaword	.LVL82
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL82
	.uaword	.LFE255
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL80
	.uaword	.LVL81
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL81
	.uaword	.LVL83
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL83
	.uaword	.LVL90
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL90
	.uaword	.LVL91
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL91
	.uaword	.LVL94
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL94
	.uaword	.LFE255
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL81
	.uaword	.LVL83
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL83
	.uaword	.LVL84
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL84
	.uaword	.LVL90
	.uahalf	0x3
	.byte	0x70
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL90
	.uaword	.LVL91
	.uahalf	0x3
	.byte	0x70
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL91
	.uaword	.LFE255
	.uahalf	0x3
	.byte	0x70
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL85
	.uaword	.LVL86
	.uahalf	0x2
	.byte	0x8f
	.sleb128 56
	.uaword	.LVL86
	.uaword	.LVL87
	.uahalf	0x7
	.byte	0x70
	.sleb128 0
	.byte	0x85
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x37
	.uaword	.LVL91
	.uaword	.LVL92
	.uahalf	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	.LVL92
	.uaword	.LVL93
	.uahalf	0x8
	.byte	0x73
	.sleb128 -1
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL89
	.uaword	.LVL93
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL81
	.uaword	.LVL82
	.uahalf	0xb
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0x54
	.byte	0x1e
	.byte	0x3
	.uaword	MAIN_atOCTrimEcuCfgSet+72
	.byte	0x22
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LFB256
	.uaword	.LCFI1
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI1
	.uaword	.LFE256
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL96
	.uaword	.LVL97
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL144
	.uaword	.LVL145
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST42:
	.uaword	.LVL146
	.uaword	.LVL148
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST43:
	.uaword	.LVL147
	.uaword	.LVL148
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST44:
	.uaword	.LVL97
	.uaword	.LVL143
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL149
	.uaword	.LVL155
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL156
	.uaword	.LVL157
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL158
	.uaword	.LFE256
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST45:
	.uaword	.LVL98
	.uaword	.LVL99
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL150
	.uaword	.LVL151
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST46:
	.uaword	.LVL152
	.uaword	.LVL154
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST47:
	.uaword	.LVL153
	.uaword	.LVL154
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST48:
	.uaword	.LVL99
	.uaword	.LVL121
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL121
	.uaword	.LVL122
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL122
	.uaword	.LVL123
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL123
	.uaword	.LVL124
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	.LVL124
	.uaword	.LVL125
	.uahalf	0x2
	.byte	0x37
	.byte	0x9f
	.uaword	.LVL125
	.uaword	.LVL126
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	.LVL126
	.uaword	.LVL127
	.uahalf	0x2
	.byte	0x39
	.byte	0x9f
	.uaword	.LVL127
	.uaword	.LVL128
	.uahalf	0x2
	.byte	0x3a
	.byte	0x9f
	.uaword	.LVL128
	.uaword	.LVL129
	.uahalf	0x2
	.byte	0x3b
	.byte	0x9f
	.uaword	.LVL129
	.uaword	.LVL130
	.uahalf	0x2
	.byte	0x3c
	.byte	0x9f
	.uaword	.LVL130
	.uaword	.LVL131
	.uahalf	0x2
	.byte	0x3d
	.byte	0x9f
	.uaword	.LVL131
	.uaword	.LVL132
	.uahalf	0x2
	.byte	0x3e
	.byte	0x9f
	.uaword	.LVL132
	.uaword	.LVL133
	.uahalf	0x2
	.byte	0x3f
	.byte	0x9f
	.uaword	.LVL133
	.uaword	.LVL134
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL134
	.uaword	.LVL135
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL135
	.uaword	.LVL136
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL136
	.uaword	.LVL141
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL141
	.uaword	.LVL143
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL158
	.uaword	.LVL161
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL162
	.uaword	.LFE256
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST49:
	.uaword	.LVL100
	.uaword	.LVL143
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL158
	.uaword	.LVL159
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL159
	.uaword	.LVL161
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL162
	.uaword	.LFE256
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST50:
	.uaword	.LVL100
	.uaword	.LVL101
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL102
	.uaword	.LVL103
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL103
	.uaword	.LVL104
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL104
	.uaword	.LVL142
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL142
	.uaword	.LVL143
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL158
	.uaword	.LVL161
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL162
	.uaword	.LFE256
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST51:
	.uaword	.LVL105
	.uaword	.LVL106
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL106
	.uaword	.LVL108
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL162
	.uaword	.LVL164
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST52:
	.uaword	.LVL133
	.uaword	.LVL138
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL138
	.uaword	.LVL140
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL140
	.uaword	.LVL141
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST53:
	.uaword	.LVL133
	.uaword	.LVL138
	.uahalf	0x1
	.byte	0x6e
	.uaword	.LVL138
	.uaword	.LVL141
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST54:
	.uaword	.LVL108
	.uaword	.LVL113
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL113
	.uaword	.LVL118
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL118
	.uaword	.LVL141
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL164
	.uaword	.LFE256
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST55:
	.uaword	.LVL108
	.uaword	.LVL141
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL164
	.uaword	.LFE256
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST56:
	.uaword	.LVL108
	.uaword	.LVL113
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL113
	.uaword	.LVL141
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL164
	.uaword	.LFE256
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST57:
	.uaword	.LVL108
	.uaword	.LVL141
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL164
	.uaword	.LFE256
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST58:
	.uaword	.LVL108
	.uaword	.LVL113
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL113
	.uaword	.LVL141
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL164
	.uaword	.LFE256
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST59:
	.uaword	.LVL108
	.uaword	.LVL109
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL109
	.uaword	.LVL110
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL110
	.uaword	.LVL111
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL111
	.uaword	.LVL112
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL112
	.uaword	.LVL113
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL113
	.uaword	.LVL114
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL114
	.uaword	.LVL115
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL115
	.uaword	.LVL116
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL116
	.uaword	.LVL117
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL117
	.uaword	.LVL118
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL118
	.uaword	.LVL141
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL164
	.uaword	.LFE256
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST60:
	.uaword	.LVL118
	.uaword	.LVL119
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL164
	.uaword	.LVL165
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL165
	.uaword	.LVL166
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL166
	.uaword	.LVL167
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST61:
	.uaword	.LVL160
	.uaword	.LVL161
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST62:
	.uaword	.LVL178
	.uaword	.LVL179
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL179
	.uaword	.LVL180
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL180
	.uaword	.LVL181
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL181
	.uaword	.LVL182
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL182
	.uaword	.LVL183
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL183
	.uaword	.LFE267
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x7c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB254
	.uaword	.LFE254-.LFB254
	.uaword	.LFB255
	.uaword	.LFE255-.LFB255
	.uaword	.LFB256
	.uaword	.LFE256-.LFB256
	.uaword	.LFB258
	.uaword	.LFE258-.LFB258
	.uaword	.LFB259
	.uaword	.LFE259-.LFB259
	.uaword	.LFB260
	.uaword	.LFE260-.LFB260
	.uaword	.LFB261
	.uaword	.LFE261-.LFB261
	.uaword	.LFB262
	.uaword	.LFE262-.LFB262
	.uaword	.LFB263
	.uaword	.LFE263-.LFB263
	.uaword	.LFB264
	.uaword	.LFE264-.LFB264
	.uaword	.LFB265
	.uaword	.LFE265-.LFB265
	.uaword	.LFB266
	.uaword	.LFE266-.LFB266
	.uaword	.LFB267
	.uaword	.LFE267-.LFB267
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB33
	.uaword	.LBE33
	.uaword	.LBB60
	.uaword	.LBE60
	.uaword	0
	.uaword	0
	.uaword	.LBB40
	.uaword	.LBE40
	.uaword	.LBB51
	.uaword	.LBE51
	.uaword	0
	.uaword	0
	.uaword	.LBB43
	.uaword	.LBE43
	.uaword	.LBB55
	.uaword	.LBE55
	.uaword	.LBB57
	.uaword	.LBE57
	.uaword	.LBB58
	.uaword	.LBE58
	.uaword	.LBB59
	.uaword	.LBE59
	.uaword	.LBB63
	.uaword	.LBE63
	.uaword	.LBB77
	.uaword	.LBE77
	.uaword	0
	.uaword	0
	.uaword	.LBB52
	.uaword	.LBE52
	.uaword	.LBB56
	.uaword	.LBE56
	.uaword	0
	.uaword	0
	.uaword	.LBB64
	.uaword	.LBE64
	.uaword	.LBB76
	.uaword	.LBE76
	.uaword	.LBB78
	.uaword	.LBE78
	.uaword	0
	.uaword	0
	.uaword	.LBB66
	.uaword	.LBE66
	.uaword	.LBB72
	.uaword	.LBE72
	.uaword	0
	.uaword	0
	.uaword	.LBB69
	.uaword	.LBE69
	.uaword	.LBB73
	.uaword	.LBE73
	.uaword	0
	.uaword	0
	.uaword	.LBB104
	.uaword	.LBE104
	.uaword	.LBB114
	.uaword	.LBE114
	.uaword	.LBB160
	.uaword	.LBE160
	.uaword	.LBB162
	.uaword	.LBE162
	.uaword	.LBB164
	.uaword	.LBE164
	.uaword	0
	.uaword	0
	.uaword	.LBB115
	.uaword	.LBE115
	.uaword	.LBB161
	.uaword	.LBE161
	.uaword	.LBB163
	.uaword	.LBE163
	.uaword	.LBB172
	.uaword	.LBE172
	.uaword	0
	.uaword	0
	.uaword	.LBB124
	.uaword	.LBE124
	.uaword	.LBB156
	.uaword	.LBE156
	.uaword	.LBB157
	.uaword	.LBE157
	.uaword	.LBB158
	.uaword	.LBE158
	.uaword	.LBB159
	.uaword	.LBE159
	.uaword	.LBB165
	.uaword	.LBE165
	.uaword	.LBB166
	.uaword	.LBE166
	.uaword	.LBB170
	.uaword	.LBE170
	.uaword	.LBB173
	.uaword	.LBE173
	.uaword	0
	.uaword	0
	.uaword	.LBB126
	.uaword	.LBE126
	.uaword	.LBB130
	.uaword	.LBE130
	.uaword	.LBB146
	.uaword	.LBE146
	.uaword	0
	.uaword	0
	.uaword	.LBB131
	.uaword	.LBE131
	.uaword	.LBB144
	.uaword	.LBE144
	.uaword	.LBB145
	.uaword	.LBE145
	.uaword	.LBB147
	.uaword	.LBE147
	.uaword	0
	.uaword	0
	.uaword	.LBB132
	.uaword	.LBE132
	.uaword	.LBB143
	.uaword	.LBE143
	.uaword	0
	.uaword	0
	.uaword	.LBB134
	.uaword	.LBE134
	.uaword	.LBB140
	.uaword	.LBE140
	.uaword	0
	.uaword	0
	.uaword	.LBB137
	.uaword	.LBE137
	.uaword	.LBB141
	.uaword	.LBE141
	.uaword	0
	.uaword	0
	.uaword	.LBB167
	.uaword	.LBE167
	.uaword	.LBB171
	.uaword	.LBE171
	.uaword	0
	.uaword	0
	.uaword	.LFB254
	.uaword	.LFE254
	.uaword	.LFB255
	.uaword	.LFE255
	.uaword	.LFB256
	.uaword	.LFE256
	.uaword	.LFB258
	.uaword	.LFE258
	.uaword	.LFB259
	.uaword	.LFE259
	.uaword	.LFB260
	.uaword	.LFE260
	.uaword	.LFB261
	.uaword	.LFE261
	.uaword	.LFB262
	.uaword	.LFE262
	.uaword	.LFB263
	.uaword	.LFE263
	.uaword	.LFB264
	.uaword	.LFE264
	.uaword	.LFB265
	.uaword	.LFE265
	.uaword	.LFB266
	.uaword	.LFE266
	.uaword	.LFB267
	.uaword	.LFE267
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF2:
	.string	"s32HighLimit"
.LASF1:
	.string	"s32LowLimit"
.LASF3:
	.string	"MAIN_tOCTrimLimit"
.LASF4:
	.string	"MAIN_tOCTrimEcuCfg"
.LASF0:
	.string	"MAIN_tOCT_TransDir"
.LASF6:
	.string	"u8Unit"
.LASF8:
	.string	"ku8Unit"
.LASF5:
	.string	"u8Index"
.LASF7:
	.string	"bLocOcDataValidFlag"
	.extern	MAIN_vidOcDataRestore,STT_FUNC,0
	.extern	GMAIN_bChkOcCondition,STT_FUNC,0
	.extern	MAIN_bChkOcCondition,STT_FUNC,0
	.extern	DFM_bEraseBlock,STT_FUNC,0
	.extern	GMAIN_vidOcDataRestore,STT_FUNC,0
	.extern	DFM_bWriteBlock,STT_FUNC,0
	.extern	NvM_WriteAll,STT_FUNC,0
	.extern	NvM_SetRamBlockStatus,STT_FUNC,0
	.extern	GMAIN_as32OCTrimNvm,STT_OBJECT,20
	.extern	MAIN_as32OCTrimNvm,STT_OBJECT,20
	.extern	Crc_CalculateCRC32,STT_FUNC,0
	.extern	Rte_CPim_ASW_NVM_ASW_NVM_BlockNative_1024_1,STT_OBJECT,1024
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
