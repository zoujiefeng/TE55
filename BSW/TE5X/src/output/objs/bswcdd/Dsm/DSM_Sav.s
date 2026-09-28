	.file	"DSM_Sav.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.FaultRecordDTC,"ax",@progbits
	.align 1
	.global	FaultRecordDTC
	.type	FaultRecordDTC, @function
FaultRecordDTC:
.LFB31:
	.file 1 "bswcdd\\Dsm\\DSM_Sav.c"
	.loc 1 76 0
.LVL0:
	.loc 1 77 0
	movh.a	%a15, hi:FaultFunctionTypeDtcFtTable
	lea	%a15, [%a15] lo:FaultFunctionTypeDtcFtTable
	addsc.a	%a15, %a15, %d4, 0
	ld.bu	%d15, [%a15]0
	jeq	%d15, 1, .L29
	ret
.L29:
.LBB8:
.LBB9:
	.loc 1 112 0
	movh.a	%a15, hi:FaultFunctionTypeDtcNbTable
	lea	%a15, [%a15] lo:FaultFunctionTypeDtcNbTable
	addsc.a	%a15, %a15, %d4, 2
.LBE9:
.LBE8:
	.loc 1 79 0
	movh.a	%a3, hi:FAULT_FF_bFrameLock_FF1
	movh	%d4, hi:DSM_DtcSavedFreezeFrameNvm
.LVL1:
.LBB13:
.LBB10:
	.loc 1 112 0
	ld.w	%d6, [%a15]0
.LBE10:
.LBE13:
	.loc 1 79 0
	st.b	[%a3] lo:FAULT_FF_bFrameLock_FF1, %d15
.LVL2:
.LBB14:
.LBB11:
	.loc 1 112 0
	mov	%d2, 0
	addi	%d4, %d4, lo:DSM_DtcSavedFreezeFrameNvm
.LVL3:
.L3:
	and	%d15, %d2, 255
	.loc 1 120 0
	madd	%d5, %d4, %d15, 228
	and	%d3, %d2, 255
.LVL4:
	add	%d3, 1
	mov.a	%a15, %d5
	.loc 1 115 0
	and	%d3, %d3, 255
	.loc 1 120 0
	ld.w	%d5, [%a15]0
	.loc 1 115 0
	lt.u	%d3, %d3, 10
	.loc 1 120 0
	eq	%d5, %d6, %d5
.LVL5:
	add	%d2, 1
.LVL6:
	.loc 1 115 0
	jlt.u	%d5, %d3, .L3
.LVL7:
	.loc 1 130 0
	jz	%d5, .L17
	.loc 1 133 0
	movh.a	%a2, hi:DSM_DtcStatusNvm
	lea	%a2, [%a2] lo:DSM_DtcStatusNvm
	addsc.a	%a2, %a2, %d15, 0
	.loc 1 141 0
	movh.a	%a15, hi:DSM_DtcEnvDataNvm
	.loc 1 133 0
	ld.bu	%d3, [%a2]0
	.loc 1 141 0
	lea	%a15, [%a15] lo:DSM_DtcEnvDataNvm
	sh	%d15, 2
	addsc.a	%a4, %a15, %d15, 0
	.loc 1 138 0
	or	%d2, %d3, 43
.LVL8:
	st.b	[%a2]0, %d2
	.loc 1 141 0
	ld.bu	%d2, [%a4]0
	jnz	%d2, .L30
.L5:
	.loc 1 147 0
	addsc.a	%a15, %a15, %d15, 0
	mov	%d15, 0
	st.b	[%a15]0, %d15
	.loc 1 148 0
	ld.bu	%d15, [%a15] 1
	eq	%d2, %d15, 255
	jnz	%d2, .L6
	.loc 1 150 0
	add	%d15, 1
	st.b	[%a15] 1, %d15
.LVL9:
.L6:
.LBE11:
.LBE14:
	.loc 1 82 0
	mov	%d15, 0
	st.b	[%a3] lo:FAULT_FF_bFrameLock_FF1, %d15
	ret
.LVL10:
.L17:
.LBB15:
.LBB12:
	.loc 1 130 0
	mov	%d15, 0
.LVL11:
.L4:
	and	%d2, %d15, 255
	.loc 1 166 0
	mul	%d5, %d2, 228
	mov.a	%a2, %d4
	and	%d3, %d15, 255
.LVL12:
	addsc.a	%a15, %a2, %d5, 0
	add	%d3, 1
	ld.w	%d7, [%a15]0
	.loc 1 162 0
	and	%d3, %d3, 255
	.loc 1 166 0
	eq	%d7, %d7, 0
.LVL13:
	.loc 1 162 0
	lt.u	%d3, %d3, 10
	add	%d15, 1
.LVL14:
	jlt.u	%d7, %d3, .L4
.LVL15:
	movh.a	%a2, hi:DSM_DtcEnvDataNvm
	lea	%a15, [%a2] lo:DSM_DtcEnvDataNvm
	.loc 1 175 0
	jz	%d7, .L31
.LVL16:
.L7:
	.loc 1 215 0
	movh.a	%a2, hi:DSM_DtcStatusNvm
	lea	%a2, [%a2] lo:DSM_DtcStatusNvm
	addsc.a	%a2, %a2, %d2, 0
	.loc 1 222 0
	mov.a	%a4, %d4
	.loc 1 215 0
	ld.bu	%d15, [%a2]0
	.loc 1 225 0
	addsc.a	%a15, %a15, %d2, 2
	.loc 1 215 0
	or	%d15, %d15, 43
	st.b	[%a2]0, %d15
	.loc 1 222 0
	addsc.a	%a2, %a4, %d5, 0
	.loc 1 225 0
	mov	%d15, 0
	.loc 1 222 0
	st.w	[%a2]0, %d6
.LVL17:
	.loc 1 225 0
	st.b	[%a15]0, %d15
	.loc 1 226 0
	st.b	[%a15] 1, %d15
	j	.L6
.LVL18:
.L30:
	.loc 1 143 0
	or	%d3, %d3, 47
	st.b	[%a2]0, %d3
.LVL19:
	j	.L5
.LVL20:
.L31:
	.loc 1 184 0
	ld.bu	%d3, [%a2] lo:DSM_DtcEnvDataNvm
.LVL21:
	ld.bu	%d2, [%a15] 4
.LVL22:
	.loc 1 186 0
	mov	%d15, 0
	jge.u	%d3, %d2, .L8
	mov	%d3, %d2
	.loc 1 182 0
	mov	%d15, 1
.L8:
.LVL23:
	.loc 1 184 0
	ld.bu	%d2, [%a15] 8
.LVL24:
	.loc 1 186 0
	jge.u	%d3, %d2, .L9
	mov	%d3, %d2
.LVL25:
	.loc 1 182 0
	mov	%d15, 2
.LVL26:
.L9:
	.loc 1 184 0
	ld.bu	%d2, [%a15] 12
.LVL27:
	.loc 1 186 0
	jge.u	%d3, %d2, .L10
	mov	%d3, %d2
.LVL28:
	.loc 1 182 0
	mov	%d15, 3
.LVL29:
.L10:
	.loc 1 184 0
	ld.bu	%d2, [%a15] 16
.LVL30:
	.loc 1 186 0
	jge.u	%d3, %d2, .L11
	mov	%d3, %d2
.LVL31:
	.loc 1 182 0
	mov	%d15, 4
.LVL32:
.L11:
	.loc 1 184 0
	ld.bu	%d2, [%a15] 20
.LVL33:
	.loc 1 186 0
	jge.u	%d3, %d2, .L12
	mov	%d3, %d2
.LVL34:
	.loc 1 182 0
	mov	%d15, 5
.LVL35:
.L12:
	.loc 1 184 0
	ld.bu	%d2, [%a15] 24
.LVL36:
	.loc 1 186 0
	jge.u	%d3, %d2, .L13
	mov	%d3, %d2
.LVL37:
	.loc 1 182 0
	mov	%d15, 6
.LVL38:
.L13:
	.loc 1 184 0
	ld.bu	%d2, [%a15] 28
.LVL39:
	.loc 1 186 0
	jge.u	%d3, %d2, .L14
	mov	%d3, %d2
.LVL40:
	.loc 1 182 0
	mov	%d15, 7
.LVL41:
.L14:
	.loc 1 184 0
	ld.bu	%d2, [%a15] 32
.LVL42:
	.loc 1 186 0
	jge.u	%d3, %d2, .L15
	mov	%d3, %d2
.LVL43:
	.loc 1 182 0
	mov	%d15, 8
.LVL44:
.L15:
	.loc 1 186 0
	ld.bu	%d2, [%a15] 36
	.loc 1 182 0
	ge.u	%d2, %d3, %d2
	sel	%d2, %d2, %d15, 9
.LVL45:
	mul	%d5, %d2, 228
	j	.L7
.LBE12:
.LBE15:
.LFE31:
	.size	FaultRecordDTC, .-FaultRecordDTC
.section .text.FaultClearDTCRecord,"ax",@progbits
	.align 1
	.global	FaultClearDTCRecord
	.type	FaultClearDTCRecord, @function
FaultClearDTCRecord:
.LFB33:
	.loc 1 245 0
.LVL46:
	.loc 1 251 0
	mov	%d15, 0
	movh.a	%a15, hi:DSM_DtcSavedFreezeFrameNvm
	lea	%a3, [%a15] lo:DSM_DtcSavedFreezeFrameNvm
	st.w	[%a15] lo:DSM_DtcSavedFreezeFrameNvm, %d15
	.loc 1 253 0
	movh.a	%a4, hi:DSM_DtcEnvDataNvm
	.loc 1 252 0
	movh.a	%a15, hi:DSM_DtcStatusNvm
	lea	%a2, [%a15] lo:DSM_DtcStatusNvm
	st.b	[%a15] lo:DSM_DtcStatusNvm, %d15
	.loc 1 253 0
	lea	%a15, [%a4] lo:DSM_DtcEnvDataNvm
	st.b	[%a4] lo:DSM_DtcEnvDataNvm, %d15
	.loc 1 254 0
	st.b	[%a15] 1, %d15
.LVL47:
	.loc 1 251 0
	st.w	[%a3] 228, %d15
	.loc 1 252 0
	st.b	[%a2] 1, %d15
	.loc 1 253 0
	st.b	[%a15] 4, %d15
	.loc 1 254 0
	st.b	[%a15] 5, %d15
.LVL48:
	.loc 1 251 0
	st.w	[%a3] 456, %d15
	.loc 1 252 0
	st.b	[%a2] 2, %d15
	.loc 1 253 0
	st.b	[%a15] 8, %d15
	.loc 1 254 0
	st.b	[%a15] 9, %d15
.LVL49:
	.loc 1 251 0
	st.w	[%a3] 684, %d15
	.loc 1 252 0
	st.b	[%a2] 3, %d15
	.loc 1 253 0
	st.b	[%a15] 12, %d15
	.loc 1 254 0
	st.b	[%a15] 13, %d15
.LVL50:
	.loc 1 251 0
	st.w	[%a3] 912, %d15
	.loc 1 252 0
	st.b	[%a2] 4, %d15
	.loc 1 253 0
	st.b	[%a15] 16, %d15
	.loc 1 254 0
	st.b	[%a15] 17, %d15
.LVL51:
	.loc 1 251 0
	st.w	[%a3] 1140, %d15
	.loc 1 252 0
	st.b	[%a2] 5, %d15
	.loc 1 253 0
	st.b	[%a15] 20, %d15
	.loc 1 254 0
	st.b	[%a15] 21, %d15
.LVL52:
	.loc 1 251 0
	st.w	[%a3] 1368, %d15
	.loc 1 252 0
	st.b	[%a2] 6, %d15
	.loc 1 253 0
	st.b	[%a15] 24, %d15
	.loc 1 254 0
	st.b	[%a15] 25, %d15
.LVL53:
	.loc 1 251 0
	st.w	[%a3] 1596, %d15
	.loc 1 252 0
	st.b	[%a2] 7, %d15
	.loc 1 253 0
	st.b	[%a15] 28, %d15
	.loc 1 254 0
	st.b	[%a15] 29, %d15
.LVL54:
	.loc 1 251 0
	st.w	[%a3] 1824, %d15
	.loc 1 252 0
	st.b	[%a2] 8, %d15
	.loc 1 253 0
	st.b	[%a15] 32, %d15
	.loc 1 254 0
	st.b	[%a15] 33, %d15
.LVL55:
	.loc 1 251 0
	st.w	[%a3] 2052, %d15
	.loc 1 252 0
	st.b	[%a2] 9, %d15
	.loc 1 253 0
	st.b	[%a15] 36, %d15
	.loc 1 254 0
	st.b	[%a15] 37, %d15
.LVL56:
	ret
.LFE33:
	.size	FaultClearDTCRecord, .-FaultClearDTCRecord
.section .text,"ax",@progbits
	.align 1
	.global	DSM_vidAgingCycleCnt
	.type	DSM_vidAgingCycleCnt, @function
DSM_vidAgingCycleCnt:
.LFB35:
	.loc 1 299 0
.LVL57:
	.loc 1 303 0
	movh.a	%a15, hi:DSM_DtcSavedFreezeFrameNvm
	ld.w	%d15, [%a15] lo:DSM_DtcSavedFreezeFrameNvm
	jz	%d15, .L34
	.loc 1 304 0
	movh.a	%a2, hi:DSM_DtcEnvDataNvm
	ld.bu	%d15, [%a2] lo:DSM_DtcEnvDataNvm
	eq	%d2, %d15, 255
	jnz	%d2, .L34
	.loc 1 307 0
	add	%d15, 1
	st.b	[%a2] lo:DSM_DtcEnvDataNvm, %d15
.L34:
.LVL58:
	.loc 1 303 0
	lea	%a15, [%a15] lo:DSM_DtcSavedFreezeFrameNvm
	ld.w	%d15, [%a15] 228
	jz	%d15, .L35
	.loc 1 304 0
	movh.a	%a2, hi:DSM_DtcEnvDataNvm
	lea	%a2, [%a2] lo:DSM_DtcEnvDataNvm
	ld.bu	%d15, [%a2] 4
	eq	%d2, %d15, 255
	jnz	%d2, .L35
	.loc 1 307 0
	add	%d15, 1
	st.b	[%a2] 4, %d15
.L35:
.LVL59:
	.loc 1 303 0
	ld.w	%d15, [%a15] 456
	jz	%d15, .L36
	.loc 1 304 0
	movh.a	%a2, hi:DSM_DtcEnvDataNvm
	lea	%a2, [%a2] lo:DSM_DtcEnvDataNvm
	ld.bu	%d15, [%a2] 8
	eq	%d2, %d15, 255
	jnz	%d2, .L36
	.loc 1 307 0
	add	%d15, 1
	st.b	[%a2] 8, %d15
.L36:
.LVL60:
	.loc 1 303 0
	ld.w	%d15, [%a15] 684
	jz	%d15, .L37
	.loc 1 304 0
	movh.a	%a2, hi:DSM_DtcEnvDataNvm
	lea	%a2, [%a2] lo:DSM_DtcEnvDataNvm
	ld.bu	%d15, [%a2] 12
	eq	%d2, %d15, 255
	jnz	%d2, .L37
	.loc 1 307 0
	add	%d15, 1
	st.b	[%a2] 12, %d15
.L37:
.LVL61:
	.loc 1 303 0
	ld.w	%d15, [%a15] 912
	jz	%d15, .L38
	.loc 1 304 0
	movh.a	%a2, hi:DSM_DtcEnvDataNvm
	lea	%a2, [%a2] lo:DSM_DtcEnvDataNvm
	ld.bu	%d15, [%a2] 16
	eq	%d2, %d15, 255
	jnz	%d2, .L38
	.loc 1 307 0
	add	%d15, 1
	st.b	[%a2] 16, %d15
.L38:
.LVL62:
	.loc 1 303 0
	ld.w	%d15, [%a15] 1140
	jz	%d15, .L39
	.loc 1 304 0
	movh.a	%a2, hi:DSM_DtcEnvDataNvm
	lea	%a2, [%a2] lo:DSM_DtcEnvDataNvm
	ld.bu	%d15, [%a2] 20
	eq	%d2, %d15, 255
	jnz	%d2, .L39
	.loc 1 307 0
	add	%d15, 1
	st.b	[%a2] 20, %d15
.L39:
.LVL63:
	.loc 1 303 0
	ld.w	%d15, [%a15] 1368
	jz	%d15, .L40
	.loc 1 304 0
	movh.a	%a2, hi:DSM_DtcEnvDataNvm
	lea	%a2, [%a2] lo:DSM_DtcEnvDataNvm
	ld.bu	%d15, [%a2] 24
	eq	%d2, %d15, 255
	jnz	%d2, .L40
	.loc 1 307 0
	add	%d15, 1
	st.b	[%a2] 24, %d15
.L40:
.LVL64:
	.loc 1 303 0
	ld.w	%d15, [%a15] 1596
	jz	%d15, .L41
	.loc 1 304 0
	movh.a	%a2, hi:DSM_DtcEnvDataNvm
	lea	%a2, [%a2] lo:DSM_DtcEnvDataNvm
	ld.bu	%d15, [%a2] 28
	eq	%d2, %d15, 255
	jnz	%d2, .L41
	.loc 1 307 0
	add	%d15, 1
	st.b	[%a2] 28, %d15
.L41:
.LVL65:
	.loc 1 303 0
	ld.w	%d15, [%a15] 1824
	jz	%d15, .L42
	.loc 1 304 0
	movh.a	%a2, hi:DSM_DtcEnvDataNvm
	lea	%a2, [%a2] lo:DSM_DtcEnvDataNvm
	ld.bu	%d15, [%a2] 32
	eq	%d2, %d15, 255
	jnz	%d2, .L42
	.loc 1 307 0
	add	%d15, 1
	st.b	[%a2] 32, %d15
.L42:
.LVL66:
	.loc 1 303 0
	ld.w	%d15, [%a15] 2052
	jz	%d15, .L33
	.loc 1 304 0
	movh.a	%a15, hi:DSM_DtcEnvDataNvm
	lea	%a15, [%a15] lo:DSM_DtcEnvDataNvm
	ld.bu	%d15, [%a15] 36
	eq	%d2, %d15, 255
	jnz	%d2, .L33
	.loc 1 307 0
	add	%d15, 1
	st.b	[%a15] 36, %d15
.LVL67:
.L33:
	ret
.LFE35:
	.size	DSM_vidAgingCycleCnt, .-DSM_vidAgingCycleCnt
	.align 1
	.global	DSM_vidDtcStsInit
	.type	DSM_vidDtcStsInit, @function
DSM_vidDtcStsInit:
.LFB36:
	.loc 1 323 0
.LVL68:
	movh.a	%a2, hi:DSM_DtcStatusNvm
	lea	%a15, [%a2] lo:DSM_DtcStatusNvm
	mov.d	%d15, %a15
	.loc 1 330 0
	mov	%d9, 10
	rsub	%d15
	and	%d15, %d15, 3
	mov	%d4, 8
	mov	%d3, 2
	mov	%d2, 0
	mov	%d5, %d9
	mov	%d8, 0
	jz	%d15, .L105
	.loc 1 332 0
	ld.bu	%d2, [%a2] lo:DSM_DtcStatusNvm
	mov	%d5, 9
	andn	%d2, %d2, ~(-4)
	st.b	[%a2] lo:DSM_DtcStatusNvm, %d2
.LVL69:
	.loc 1 330 0
	mov	%d8, 1
	jeq	%d15, 1, .L106
	.loc 1 332 0
	ld.bu	%d2, [%a15] 1
	mov	%d5, %d4
	andn	%d2, %d2, ~(-4)
	st.b	[%a15] 1, %d2
.LVL70:
	.loc 1 330 0
	mov	%d8, 2
	jne	%d15, 3, .L106
	.loc 1 332 0
	ld.bu	%d2, [%a15] 2
	mov	%d5, 7
	andn	%d2, %d2, ~(-4)
	st.b	[%a15] 2, %d2
.LVL71:
	.loc 1 330 0
	mov	%d8, 3
.LVL72:
.L106:
	rsub	%d3, %d15, 6
	extr.u	%d3, %d3, 2, 6
	rsub	%d9, %d15, 10
	add	%d3, 1
	sh	%d4, %d3, 2
	mov	%d2, %d15
	and	%d9, %d9, 255
	and	%d4, %d4, 255
.L105:
	.loc 1 332 0
	movh	%d15, 64765
	addsc.a	%a2, %a15, %d2, 0
	addi	%d15, %d15, -772
	mov	%d0, 0
	nor	%d1, %d15, 0
	ldmst	[%a2]0, %e0
	jne	%d3, 2, .L107
	mov	%d6, 0
	mov	%d7, %d1
	ldmst	[%a2] 4, %e6
.L107:
	add	%d8, %d4
	sub	%d15, %d5, %d4
	and	%d8, %d8, 255
	and	%d15, 255
	jeq	%d9, %d4, .L104
.LVL73:
	addsc.a	%a2, %a15, %d8, 0
	ld.bu	%d2, [%a2]0
	andn	%d2, %d2, ~(-4)
	st.b	[%a2]0, %d2
	.loc 1 330 0
	addi	%d2, %d8, 1
	and	%d2, %d2, 255
.LVL74:
	jeq	%d15, 1, .L104
	.loc 1 332 0
	addsc.a	%a2, %a15, %d2, 0
	.loc 1 330 0
	add	%d8, 2
	.loc 1 332 0
	ld.bu	%d2, [%a2]0
.LVL75:
	.loc 1 330 0
	and	%d8, %d8, 255
.LVL76:
	.loc 1 332 0
	andn	%d2, %d2, ~(-4)
	st.b	[%a2]0, %d2
	.loc 1 330 0
	jeq	%d15, 2, .L104
	.loc 1 332 0
	addsc.a	%a15, %a15, %d8, 0
	ld.bu	%d15, [%a15]0
	andn	%d15, %d15, ~(-4)
	st.b	[%a15]0, %d15
	ret
.L104:
	ret
.LFE36:
	.size	DSM_vidDtcStsInit, .-DSM_vidDtcStsInit
	.align 1
	.global	DSM_vidClrDtcStsTFBit
	.type	DSM_vidClrDtcStsTFBit, @function
DSM_vidClrDtcStsTFBit:
.LFB37:
	.loc 1 344 0
.LVL77:
	.loc 1 353 0
	movh.a	%a15, hi:FaultFunctionTypeDtcNbTable
	lea	%a15, [%a15] lo:FaultFunctionTypeDtcNbTable
	addsc.a	%a15, %a15, %d4, 2
	movh	%d6, hi:DSM_DtcSavedFreezeFrameNvm
	ld.w	%d5, [%a15]0
.LVL78:
	mov	%d15, 0
	addi	%d6, %d6, lo:DSM_DtcSavedFreezeFrameNvm
.LVL79:
.L119:
	and	%d2, %d15, 255
	.loc 1 361 0
	madd	%d3, %d6, %d2, 228
	and	%d7, %d15, 255
.LVL80:
	add	%d15, 1
.LVL81:
	mov.a	%a15, %d3
	addi	%d3, %d7, 1
	ld.w	%d4, [%a15]0
	.loc 1 356 0
	and	%d3, %d3, 255
	.loc 1 361 0
	eq	%d4, %d5, %d4
.LVL82:
	.loc 1 356 0
	lt.u	%d3, %d3, 10
	jlt.u	%d4, %d3, .L119
.LVL83:
	.loc 1 372 0
	lt.u	%d7, %d7, 10
.LVL84:
	and	%d4, %d7
.LVL85:
	jz	%d4, .L118
	.loc 1 374 0
	movh.a	%a15, hi:DSM_DtcStatusNvm
.LVL86:
	lea	%a15, [%a15] lo:DSM_DtcStatusNvm
	addsc.a	%a15, %a15, %d2, 0
	ld.bu	%d15, [%a15]0
	andn	%d15, %d15, ~(-2)
	st.b	[%a15]0, %d15
.L118:
	ret
.LFE37:
	.size	DSM_vidClrDtcStsTFBit, .-DSM_vidClrDtcStsTFBit
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
	.uaword	.LFB31
	.uaword	.LFE31-.LFB31
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB33
	.uaword	.LFE33-.LFB33
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB35
	.uaword	.LFE35-.LFB35
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB36
	.uaword	.LFE36-.LFB36
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB37
	.uaword	.LFE37-.LFB37
	.align 2
.LEFDE8:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 "bswcdd\\Dsm\\DSM_Typ.h"
	.file 4 "bswcdd\\Dsm\\DSM_Nvm.h"
	.file 5 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fault\\FAULT_FF.h"
	.file 6 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fault\\FAULT_Data.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x7e9
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\Dsm\\DSM_Sav.c"
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
	.uaword	0x1bf
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
	.uaword	0x1eb
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
	.uaword	0x227
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
	.uaword	0x1bf
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x3
	.string	"FaultOffsetType"
	.byte	0x3
	.byte	0x29
	.uaword	0x1dd
	.uleb128 0x3
	.string	"FaultDtcNbType"
	.byte	0x3
	.byte	0x30
	.uaword	0x219
	.uleb128 0x3
	.string	"FaultDtcFailTypeType"
	.byte	0x3
	.byte	0x31
	.uaword	0x1b2
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x3
	.string	"DSM_DtcStatusType"
	.byte	0x4
	.byte	0x3a
	.uaword	0x1b2
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3c
	.uaword	0x37a
	.uleb128 0x5
	.string	"u8DtcAgingCycleCnt"
	.byte	0x4
	.byte	0x3e
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"u8DtcOccurCnt"
	.byte	0x4
	.byte	0x3f
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x5
	.string	"u8DtcEnvDataSpare1"
	.byte	0x4
	.byte	0x40
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x5
	.string	"u8DtcEnvDataSpare2"
	.byte	0x4
	.byte	0x41
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0x3
	.string	"DSM_DtcEnvDataType"
	.byte	0x4
	.byte	0x42
	.uaword	0x302
	.uleb128 0x4
	.byte	0xe4
	.byte	0x4
	.byte	0x44
	.uaword	0x3ca
	.uleb128 0x5
	.string	"DtcNumber"
	.byte	0x4
	.byte	0x46
	.uaword	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"DtcFreezeFrame"
	.byte	0x4
	.byte	0x47
	.uaword	0x3ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x6
	.uaword	0x1b2
	.uaword	0x3da
	.uleb128 0x7
	.uaword	0x2dd
	.byte	0xdf
	.byte	0
	.uleb128 0x3
	.string	"DSM_DtcSavedContextType"
	.byte	0x4
	.byte	0x48
	.uaword	0x394
	.uleb128 0x8
	.uaword	0x1b2
	.uleb128 0x9
	.string	"DSM_vidRecordDtc"
	.byte	0x1
	.uahalf	0x111
	.byte	0x1
	.byte	0x1
	.uaword	0x426
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x111
	.uaword	0x1b2
	.byte	0
	.uleb128 0xb
	.string	"DSM_vidManageFaultLogged"
	.byte	0x1
	.byte	0x60
	.byte	0x1
	.byte	0x1
	.uaword	0x4f8
	.uleb128 0xc
	.uaword	.LASF1
	.byte	0x1
	.byte	0x60
	.uaword	0x294
	.uleb128 0xd
	.uaword	.LASF2
	.byte	0x1
	.byte	0x62
	.uaword	0x219
	.uleb128 0xe
	.string	"u16LocalTimestampIgn"
	.byte	0x1
	.byte	0x63
	.uaword	0x1dd
	.uleb128 0xe
	.string	"u16LocalPrevTimestampIgn"
	.byte	0x1
	.byte	0x64
	.uaword	0x1dd
	.uleb128 0xe
	.string	"u8LocalPrevAgingCycleCnt"
	.byte	0x1
	.byte	0x65
	.uaword	0x1b2
	.uleb128 0xe
	.string	"u8LocalAgingCycleCnt"
	.byte	0x1
	.byte	0x66
	.uaword	0x1b2
	.uleb128 0xd
	.uaword	.LASF3
	.byte	0x1
	.byte	0x67
	.uaword	0x1b2
	.uleb128 0xd
	.uaword	.LASF0
	.byte	0x1
	.byte	0x68
	.uaword	0x1b2
	.uleb128 0xd
	.uaword	.LASF4
	.byte	0x1
	.byte	0x69
	.uaword	0x264
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.string	"FaultRecordDTC"
	.byte	0x1
	.byte	0x4b
	.byte	0x1
	.uaword	.LFB31
	.uaword	.LFE31
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x58a
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0x1
	.byte	0x4b
	.uaword	0x294
	.uaword	.LLST0
	.uleb128 0x11
	.uaword	0x426
	.uaword	.LBB8
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x51
	.uleb128 0x12
	.uaword	0x448
	.uleb128 0x13
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x14
	.uaword	0x453
	.byte	0x1
	.byte	0x56
	.uleb128 0x15
	.uaword	0x45e
	.byte	0
	.uleb128 0x16
	.uaword	0x47a
	.uaword	.LLST1
	.uleb128 0x16
	.uaword	0x49a
	.uaword	.LLST2
	.uleb128 0x16
	.uaword	0x4ba
	.uaword	.LLST3
	.uleb128 0x16
	.uaword	0x4d6
	.uaword	.LLST4
	.uleb128 0x16
	.uaword	0x4e1
	.uaword	.LLST5
	.uleb128 0x16
	.uaword	0x4ec
	.uaword	.LLST6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.string	"FaultClearDTCRecord"
	.byte	0x1
	.byte	0xf4
	.byte	0x1
	.uaword	.LFB33
	.uaword	.LFE33
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x5c3
	.uleb128 0x17
	.uaword	.LASF5
	.byte	0x1
	.byte	0xf6
	.uaword	0x1b2
	.uaword	.LLST7
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"DSM_vidAgingCycleCnt"
	.byte	0x1
	.uahalf	0x12a
	.byte	0x1
	.uaword	.LFB35
	.uaword	.LFE35
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x5ff
	.uleb128 0x19
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x12c
	.uaword	0x1b2
	.uaword	.LLST8
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"DSM_vidDtcStsInit"
	.byte	0x1
	.uahalf	0x142
	.byte	0x1
	.uaword	.LFB36
	.uaword	.LFE36
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x64a
	.uleb128 0x1a
	.string	"u8LocIdx"
	.byte	0x1
	.uahalf	0x144
	.uaword	0x1b2
	.uaword	.LLST9
	.uleb128 0x1b
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x145
	.uaword	0x1b2
	.sleb128 -4
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"DSM_vidClrDtcStsTFBit"
	.byte	0x1
	.uahalf	0x157
	.byte	0x1
	.uaword	.LFB37
	.uaword	.LFE37
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x6cb
	.uleb128 0x1c
	.string	"u8LocListIdx"
	.byte	0x1
	.uahalf	0x157
	.uaword	0x3f9
	.uaword	.LLST10
	.uleb128 0x19
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x159
	.uaword	0x264
	.uaword	.LLST11
	.uleb128 0x1b
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x15a
	.uaword	0x1b2
	.sleb128 -2
	.uleb128 0x19
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x15b
	.uaword	0x1b2
	.uaword	.LLST12
	.uleb128 0x1d
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x15c
	.uaword	0x219
	.byte	0x1
	.byte	0x55
	.byte	0
	.uleb128 0x1e
	.string	"FAULT_FF_bFrameLock_FF1"
	.byte	0x5
	.uahalf	0x330
	.uaword	0x264
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.uaword	0x37a
	.uaword	0x6fd
	.uleb128 0x7
	.uaword	0x2dd
	.byte	0x9
	.byte	0
	.uleb128 0x1f
	.string	"DSM_DtcEnvDataNvm"
	.byte	0x4
	.byte	0x51
	.uaword	0x6ed
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.uaword	0x2e9
	.uaword	0x728
	.uleb128 0x7
	.uaword	0x2dd
	.byte	0x9
	.byte	0
	.uleb128 0x1f
	.string	"DSM_DtcStatusNvm"
	.byte	0x4
	.byte	0x52
	.uaword	0x718
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.uaword	0x3da
	.uaword	0x752
	.uleb128 0x7
	.uaword	0x2dd
	.byte	0x9
	.byte	0
	.uleb128 0x1f
	.string	"DSM_DtcSavedFreezeFrameNvm"
	.byte	0x4
	.byte	0x54
	.uaword	0x742
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.uaword	0x2ab
	.uaword	0x787
	.uleb128 0x20
	.uaword	0x2dd
	.uahalf	0x121
	.byte	0
	.uleb128 0x1f
	.string	"FaultFunctionTypeDtcNbTable"
	.byte	0x6
	.byte	0x4f
	.uaword	0x7ac
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.uaword	0x776
	.uleb128 0x6
	.uaword	0x2c1
	.uaword	0x7c2
	.uleb128 0x20
	.uaword	0x2dd
	.uahalf	0x121
	.byte	0
	.uleb128 0x1f
	.string	"FaultFunctionTypeDtcFtTable"
	.byte	0x6
	.byte	0x50
	.uaword	0x7e7
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.uaword	0x7b1
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
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x5
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x5
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
	.uleb128 0x11
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
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x19
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0xa
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uaword	.LFE31
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LFE31
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL23
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL26
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL29
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL32
	.uaword	.LVL34
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL35
	.uaword	.LVL37
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL38
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL41
	.uaword	.LVL43
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL44
	.uaword	.LVL45
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL22
	.uaword	.LVL24
	.uahalf	0x2
	.byte	0x8f
	.sleb128 4
	.uaword	.LVL24
	.uaword	.LVL27
	.uahalf	0x2
	.byte	0x8f
	.sleb128 8
	.uaword	.LVL27
	.uaword	.LVL30
	.uahalf	0x2
	.byte	0x8f
	.sleb128 12
	.uaword	.LVL30
	.uaword	.LVL33
	.uahalf	0x2
	.byte	0x8f
	.sleb128 16
	.uaword	.LVL33
	.uaword	.LVL36
	.uahalf	0x2
	.byte	0x8f
	.sleb128 20
	.uaword	.LVL36
	.uaword	.LVL39
	.uahalf	0x2
	.byte	0x8f
	.sleb128 24
	.uaword	.LVL39
	.uaword	.LVL42
	.uahalf	0x2
	.byte	0x8f
	.sleb128 28
	.uaword	.LVL42
	.uaword	.LVL44
	.uahalf	0x2
	.byte	0x8f
	.sleb128 32
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x3
	.byte	0x72
	.sleb128 0
	.byte	0x9f
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x3
	.byte	0x7f
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x3
	.byte	0x7f
	.sleb128 0
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x2
	.byte	0x39
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL23
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL23
	.uaword	.LFE31
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL2
	.uaword	.LVL9
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LVL16
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LVL21
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL23
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL23
	.uaword	.LVL26
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL26
	.uaword	.LVL29
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL29
	.uaword	.LVL32
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL32
	.uaword	.LVL35
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL35
	.uaword	.LVL38
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	.LVL38
	.uaword	.LVL41
	.uahalf	0x2
	.byte	0x37
	.byte	0x9f
	.uaword	.LVL41
	.uaword	.LVL44
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	.LVL44
	.uaword	.LVL45
	.uahalf	0x2
	.byte	0x39
	.byte	0x9f
	.uaword	.LVL45
	.uaword	.LFE31
	.uahalf	0x2
	.byte	0x3a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL18
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL20
	.uaword	.LFE31
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL46
	.uaword	.LVL47
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL47
	.uaword	.LVL48
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL48
	.uaword	.LVL49
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL49
	.uaword	.LVL50
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL50
	.uaword	.LVL51
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL51
	.uaword	.LVL52
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL52
	.uaword	.LVL53
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	.LVL53
	.uaword	.LVL54
	.uahalf	0x2
	.byte	0x37
	.byte	0x9f
	.uaword	.LVL54
	.uaword	.LVL55
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	.LVL55
	.uaword	.LVL56
	.uahalf	0x2
	.byte	0x39
	.byte	0x9f
	.uaword	.LVL56
	.uaword	.LFE33
	.uahalf	0x2
	.byte	0x3a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL57
	.uaword	.LVL58
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL58
	.uaword	.LVL59
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL59
	.uaword	.LVL60
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL60
	.uaword	.LVL61
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL61
	.uaword	.LVL62
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL62
	.uaword	.LVL63
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL63
	.uaword	.LVL64
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	.LVL64
	.uaword	.LVL65
	.uahalf	0x2
	.byte	0x37
	.byte	0x9f
	.uaword	.LVL65
	.uaword	.LVL66
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	.LVL66
	.uaword	.LVL67
	.uahalf	0x2
	.byte	0x39
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL68
	.uaword	.LVL69
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL69
	.uaword	.LVL70
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL70
	.uaword	.LVL71
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL71
	.uaword	.LVL72
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL73
	.uaword	.LVL74
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL74
	.uaword	.LVL75
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL75
	.uaword	.LVL76
	.uahalf	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL77
	.uaword	.LVL79
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL79
	.uaword	.LFE37
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL77
	.uaword	.LVL79
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL80
	.uaword	.LVL82
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL82
	.uaword	.LVL85
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL85
	.uaword	.LVL86
	.uahalf	0x7
	.byte	0x75
	.sleb128 0
	.byte	0x8f
	.sleb128 0
	.byte	0x6
	.byte	0x29
	.byte	0x9f
	.uaword	.LVL86
	.uaword	.LFE37
	.uahalf	0xd
	.byte	0x75
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0xe4
	.byte	0x1e
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x6
	.byte	0x29
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL77
	.uaword	.LVL79
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL80
	.uaword	.LVL81
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL81
	.uaword	.LVL82
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL83
	.uaword	.LVL84
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x2c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.Ltext0
	.uaword	.Letext0-.Ltext0
	.uaword	.LFB31
	.uaword	.LFE31-.LFB31
	.uaword	.LFB33
	.uaword	.LFE33-.LFB33
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB8
	.uaword	.LBE8
	.uaword	.LBB13
	.uaword	.LBE13
	.uaword	.LBB14
	.uaword	.LBE14
	.uaword	.LBB15
	.uaword	.LBE15
	.uaword	0
	.uaword	0
	.uaword	.Ltext0
	.uaword	.Letext0
	.uaword	.LFB31
	.uaword	.LFE31
	.uaword	.LFB33
	.uaword	.LFE33
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF4:
	.string	"bLocalDtcFound"
.LASF6:
	.string	"u8LocDtcStsMask"
.LASF5:
	.string	"u8LocalNvmFaultId"
.LASF3:
	.string	"u8LocalFaultId"
.LASF2:
	.string	"u32LocalDtcNumber"
.LASF1:
	.string	"faultOffset"
.LASF0:
	.string	"u8LocalNvmId"
	.extern	DSM_DtcEnvDataNvm,STT_OBJECT,40
	.extern	DSM_DtcStatusNvm,STT_OBJECT,10
	.extern	DSM_DtcSavedFreezeFrameNvm,STT_OBJECT,2280
	.extern	FAULT_FF_bFrameLock_FF1,STT_OBJECT,1
	.extern	FaultFunctionTypeDtcNbTable,STT_OBJECT,1160
	.extern	FaultFunctionTypeDtcFtTable,STT_OBJECT,290
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
