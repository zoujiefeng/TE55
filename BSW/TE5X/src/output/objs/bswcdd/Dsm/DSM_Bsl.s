	.file	"DSM_Bsl.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.FaultCounterInit,"ax",@progbits
	.align 1
	.global	FaultCounterInit
	.type	FaultCounterInit, @function
FaultCounterInit:
.LFB1:
	.file 1 "bswcdd\\Dsm\\DSM_Bsl.c"
	.loc 1 253 0
.LVL0:
	.loc 1 262 0
	mov	%d15, 0
	movh.a	%a15, hi:FaultFailureLevel
	st.b	[%a15] lo:FaultFailureLevel, %d15
	.loc 1 265 0
	movh.a	%a2, hi:DSM_FaultFailureLevel
	lea	%a15, [%a2] lo:DSM_FaultFailureLevel
	st.b	[%a2] lo:DSM_FaultFailureLevel, %d15
.LVL1:
	st.b	[%a15] 1, %d15
.LVL2:
	st.b	[%a15] 2, %d15
.LVL3:
	st.b	[%a15] 3, %d15
.LVL4:
	st.b	[%a15] 4, %d15
.LVL5:
	movh	%d11, hi:FaultFunctionTypeLoggedArray
	movh	%d4, hi:FaultFunctionTypeDetectedArray
	st.b	[%a15] 5, %d15
.LVL6:
	addi	%d11, %d11, lo:FaultFunctionTypeLoggedArray
	.loc 1 268 0
	mov	%d15, 0
	movh.a	%a15, hi:FaultEraseRequest
	addi	%d4, %d4, lo:FaultFunctionTypeDetectedArray
	movh	%d6, hi:FaultFunctionTypeLogIgnArray
	st.h	[%a15] lo:FaultEraseRequest, %d15
	addi	%d6, %d6, lo:FaultFunctionTypeLogIgnArray
	or	%d15, %d11, %d4
	movh	%d5, hi:FaultFunctionTypeAutInitArray
	or	%d15, %d6
	addi	%d5, %d5, lo:FaultFunctionTypeAutInitArray
	movh	%d3, hi:FaultFunctionTypeAuthorizedArray
	or	%d15, %d5
	addi	%d3, %d3, lo:FaultFunctionTypeAuthorizedArray
	or	%d15, %d3
	and	%d15, %d15, 3
	jnz	%d15, .L15
	.loc 1 275 0
	mov.a	%a12, %d4
	.loc 1 276 0
	mov.a	%a7, %d11
	.loc 1 277 0
	mov.a	%a6, %d6
	.loc 1 278 0
	mov.a	%a4, %d5
	mov.a	%a5, %d3
	.loc 1 268 0
	mov.a	%a2, 0
	.loc 1 278 0
	lea	%a15, 43
.LVL7:
.L3:
	.loc 1 275 0
	addsc.a	%a3, %a2, %d4, 0
	mov	%d7, 0
	st.w	[%a3]0, %d15
	.loc 1 276 0
	addsc.a	%a3, %a2, %d11, 0
	st.w	[%a3]0, %d15
	.loc 1 277 0
	addsc.a	%a3, %a2, %d6, 0
	st.w	[%a3]0, %d15
	.loc 1 278 0
	addsc.a	%a3, %a2, %d5, 0
	ld.w	%d2, [%a3]0
	addsc.a	%a3, %a2, %d3, 0
	add.a	%a2, 4
	st.w	[%a3]0, %d2
	loop	%a15, .L3
.LVL8:
	ld.h	%d15, [%a4] 176
	.loc 1 275 0
	st.h	[%a12] 176, %d7
	.loc 1 276 0
	st.h	[%a7] 176, %d7
	.loc 1 277 0
	st.h	[%a6] 176, %d7
	.loc 1 278 0
	st.h	[%a5] 176, %d15
.LVL9:
.L4:
	movh.a	%a5, hi:FaultFunctionTypeOffsetTable
	movh	%d12, hi:FaultFunctionTypeCntIgnArray
	movh.a	%a3, hi:FaultTableFuncTypeCounter1
	.loc 1 268 0
	mov	%d9, 0
	mov	%d1, 0
	lea	%a5, [%a5] lo:FaultFunctionTypeOffsetTable
	addi	%d12, %d12, lo:FaultFunctionTypeCntIgnArray
	lea	%a3, [%a3] lo:FaultTableFuncTypeCounter1
	.loc 1 303 0
	mov	%d0, 0
	lea	%a2, 88
.LVL10:
.L9:
	.loc 1 287 0
	mov	%d15, %d9
	add	%d9, 1
.LVL11:
	mov.a	%a4, %d15
	addsc.a	%a15, %a5, %d9, 1
	ld.hu	%d5, [%a15]0
	add.a	%a15, %a4, %a4
	add.a	%a4, %a5, %a15
	ld.hu	%d15, [%a4]0
.LVL12:
	sub	%d5, %d15
.LVL13:
	.loc 1 288 0
	jz	%d5, .L5
	addsc.a	%a4, %a15, %d12, 0
	addi	%d10, %d1, 1
	ld.hu	%d6, [%a4]0
	mov	%d15, 0
	.loc 1 298 0
	addsc.a	%a4, %a15, %d11, 0
	and	%d10, %d10, 255
	j	.L8
.LVL14:
.L6:
	.loc 1 303 0
	st.b	[%a15]0, %d0
.LVL15:
.L7:
	addi	%d2, %d4, 1
	.loc 1 289 0
	extr.u	%d2, %d2, 0, 16
	add	%d7, %d10
	and	%d7, %d7, 255
.LVL16:
	add	%d15, 1
.LVL17:
	.loc 1 288 0
	jge.u	%d2, %d5, .L32
.LVL18:
.L8:
	and	%d7, %d15, 255
	add	%d2, %d7, %d1
	and	%d8, %d2, 255
	insert	%d2, %d15, 0, 16, 16
	.loc 1 294 0
	extr.u	%d3, %d6, %d2, 1
	extr.u	%d4, %d15, 0, 16
.LVL19:
	.loc 1 296 0
	addsc.a	%a15, %a3, %d8, 0
	.loc 1 294 0
	jne	%d3, 1, .L6
	.loc 1 296 0
	ld.bu	%d3, [%a15]0
	ne	%d3, %d3, 255
	jnz	%d3, .L7
	.loc 1 298 0
	ld.h	%d3, [%a4]0
	insert	%d2, %d3, 1, %d2, 1
.LVL20:
	st.h	[%a4]0, %d2
	j	.L7
.LVL21:
.L32:
	.loc 1 305 0
	mov	%d1, %d7
.LVL22:
.L5:
	.loc 1 282 0
	loop	%a2, .L9
	movh.a	%a2, hi:FaultFailModCounterTable
	lea	%a15, [%a2] lo:FaultFailModCounterTable
	mov.d	%d2, %a15
	mov	%d7, 21
	rsub	%d2
	and	%d2, %d2, 3
	mov	%d15, 0
	mov	%d4, 5
	mov	%d3, 20
	mov	%d5, 0
.LVL23:
	mov	%d6, %d7
	jz	%d2, .L10
	.loc 1 313 0
	st.b	[%a2] lo:FaultFailModCounterTable, %d5
.LVL24:
	mov	%d6, %d3
	.loc 1 310 0
	mov	%d5, 1
	jeq	%d2, 1, .L11
	.loc 1 313 0
	st.b	[%a15] 1, %d15
.LVL25:
	mov	%d6, 19
	.loc 1 310 0
	mov	%d5, 2
	jne	%d2, 3, .L11
	.loc 1 313 0
	st.b	[%a15] 2, %d15
.LVL26:
	mov	%d6, 18
	.loc 1 310 0
	mov	%d5, 3
.LVL27:
.L11:
	rsub	%d4, %d2, 17
	extr.u	%d4, %d4, 2, 6
	rsub	%d7, %d2, 21
	add	%d4, 1
	sh	%d3, %d4, 2
	mov	%d15, %d2
	and	%d7, %d7, 255
	and	%d3, %d3, 255
.L10:
	addsc.a	%a2, %a15, %d15, 0
	.loc 1 313 0
	mov	%d15, 0
	st.w	[%a2]0, %d15
	st.w	[%a2] 4, %d15
	st.w	[%a2] 8, %d15
	st.w	[%a2] 12, %d15
	jne	%d4, 5, .L12
	st.w	[%a2] 16, %d15
.L12:
	add	%d5, %d3
	sub	%d2, %d6, %d3
	and	%d5, %d5, 255
	and	%d2, %d2, 255
	jeq	%d3, %d7, .L13
.LVL28:
	addsc.a	%a2, %a15, %d5, 0
	mov	%d15, 0
	.loc 1 310 0
	addi	%d3, %d5, 1
	.loc 1 313 0
	st.b	[%a2]0, %d15
	.loc 1 310 0
	and	%d3, %d3, 255
.LVL29:
	.loc 1 308 0
	jeq	%d2, 1, .L13
	.loc 1 313 0
	addsc.a	%a2, %a15, %d3, 0
	.loc 1 310 0
	add	%d5, 2
	.loc 1 313 0
	st.b	[%a2]0, %d15
	.loc 1 310 0
	and	%d5, %d5, 255
.LVL30:
	.loc 1 308 0
	jeq	%d2, 2, .L13
	.loc 1 313 0
	addsc.a	%a15, %a15, %d5, 0
	st.b	[%a15]0, %d15
.L13:
	.loc 1 317 0
	j	DSM_vidDtcStsInit
.LVL31:
.L15:
	.loc 1 268 0
	mov	%d2, 0
	.loc 1 275 0
	mov	%d15, 0
	lea	%a15, 88
.LVL32:
.L2:
	mov.a	%a3, %d2
	add	%d2, 1
.LVL33:
	add.a	%a2, %a3, %a3
	addsc.a	%a3, %a2, %d4, 0
.LVL34:
	st.h	[%a3]0, %d15
	.loc 1 276 0
	addsc.a	%a3, %a2, %d11, 0
	st.h	[%a3]0, %d15
	.loc 1 277 0
	addsc.a	%a3, %a2, %d6, 0
	st.h	[%a3]0, %d15
	.loc 1 278 0
	addsc.a	%a3, %a2, %d3, 0
	addsc.a	%a2, %a2, %d5, 0
	ld.h	%d7, [%a2]0
	st.h	[%a3]0, %d7
.LVL35:
	.loc 1 270 0
	loop	%a15, .L2
	j	.L4
.LFE1:
	.size	FaultCounterInit, .-FaultCounterInit
.section .text.FaultDetectionWithFail,"ax",@progbits
	.align 1
	.global	FaultDetectionWithFail
	.type	FaultDetectionWithFail, @function
FaultDetectionWithFail:
.LFB2:
	.loc 1 335 0
.LVL36:
	.loc 1 348 0
	movh.a	%a15, hi:FaultFunctionTypeAuthorizedArray
	sh	%d4, 1
.LVL37:
	lea	%a15, [%a15] lo:FaultFunctionTypeAuthorizedArray
	addsc.a	%a15, %a15, %d4, 0
	ld.hu	%d15, [%a15]0
	.loc 1 349 0
	extr.u	%d15, %d15, %d5, 1
	jeq	%d15, 1, .L46
.LVL38:
.L33:
	ret
.LVL39:
.L46:
	.loc 1 351 0
	movh.a	%a15, hi:FaultFunctionTypeDetectedArray
	lea	%a15, [%a15] lo:FaultFunctionTypeDetectedArray
	addsc.a	%a15, %a15, %d4, 0
	mov	%d2, 1
	sh	%d2, %d2, %d5
	ld.h	%d15, [%a15]0
	extr.u	%d2, %d2, 0, 16
	or	%d15, %d2
	st.h	[%a15]0, %d15
	.loc 1 352 0
	movh.a	%a15, hi:FaultFunctionTypeOffsetTable
	lea	%a15, [%a15] lo:FaultFunctionTypeOffsetTable
	addsc.a	%a15, %a15, %d4, 0
	ld.h	%d15, [%a15]0
	.loc 1 353 0
	movh.a	%a15, hi:FaultTableFuncTypeCounter1
	.loc 1 352 0
	add	%d15, %d5
	extr.u	%d15, %d15, 0, 16
.LVL40:
	.loc 1 353 0
	lea	%a15, [%a15] lo:FaultTableFuncTypeCounter1
	addsc.a	%a15, %a15, %d15, 0
	ld.bu	%d3, [%a15]0
	eq	%d6, %d3, 255
	jnz	%d6, .L33
	.loc 1 356 0
	movh.a	%a2, hi:FaultFunctionTypeIncs
	lea	%a2, [%a2] lo:FaultFunctionTypeIncs
	addsc.a	%a2, %a2, %d15, 0
	ld.bu	%d6, [%a2]0
	add	%d3, %d6
.LVL41:
	.loc 1 357 0
	lt	%d6, %d3, 255
	jnz	%d6, .L37
	.loc 1 359 0
	mov	%d3, -1
.LVL42:
	st.b	[%a15]0, %d3
.LVL43:
	.loc 1 360 0
	movh.a	%a15, hi:FaultFunctionTypeLoggedArray
	lea	%a15, [%a15] lo:FaultFunctionTypeLoggedArray
	addsc.a	%a15, %a15, %d4, 0
	ld.hu	%d3, [%a15]0
.LVL44:
	.loc 1 361 0
	extr.u	%d5, %d3, %d5, 1
.LVL45:
	jnz	%d5, .L33
	.loc 1 363 0
	or	%d2, %d3
	.loc 1 366 0
	mov	%d4, %d15
	.loc 1 363 0
	st.h	[%a15]0, %d2
	.loc 1 366 0
	call	FaultRecordDTC
.LVL46:
.LBB256:
.LBB257:
	.loc 1 146 0
	movh.a	%a15, hi:FaultFunctionTypeFailModTable
	lea	%a15, [%a15] lo:FaultFunctionTypeFailModTable
	addsc.a	%a15, %a15, %d15, 0
	ld.bu	%d15, [%a15]0
	.loc 1 171 0
	movh.a	%a15, hi:FaultFailModCounterTable
	.loc 1 146 0
	sh	%d2, %d15, -4
.LVL47:
	.loc 1 148 0
	and	%d15, %d15, 15
.LVL48:
	madd	%d3, %d15, %d2, 5
	lt.u	%d4, %d2, 5
	.loc 1 171 0
	lea	%a15, [%a15] lo:FaultFailModCounterTable
	sel	%d3, %d4, %d3, 0
.LVL49:
	addsc.a	%a15, %a15, %d3, 0
	ld.bu	%d3, [%a15]0
	add	%d3, 1
	st.b	[%a15]0, %d3
	.loc 1 189 0
	jz	%d15, .L33
	.loc 1 198 0
	movh.a	%a15, hi:DSM_FaultFailureLevel
	lea	%a15, [%a15] lo:DSM_FaultFailureLevel
	addsc.a	%a15, %a15, %d2, 0
	ld.bu	%d2, [%a15]0
.LVL50:
	jge.u	%d2, %d15, .L33
	.loc 1 202 0
	st.b	[%a15]0, %d15
	ret
.LVL51:
.L37:
.LBE257:
.LBE256:
	.loc 1 377 0
	st.b	[%a15]0, %d3
	ret
.LFE2:
	.size	FaultDetectionWithFail, .-FaultDetectionWithFail
.section .text.FaultDetectionWithoutFail,"ax",@progbits
	.align 1
	.global	FaultDetectionWithoutFail
	.type	FaultDetectionWithoutFail, @function
FaultDetectionWithoutFail:
.LFB3:
	.loc 1 401 0
.LVL52:
	.loc 1 415 0
	movh.a	%a15, hi:FaultFunctionTypeAuthorizedArray
	sh	%d15, %d4, 1
	lea	%a15, [%a15] lo:FaultFunctionTypeAuthorizedArray
	addsc.a	%a15, %a15, %d15, 0
	ld.hu	%d2, [%a15]0
	.loc 1 416 0
	extr.u	%d2, %d2, %d5, 1
	jeq	%d2, 1, .L66
.LVL53:
.L47:
	ret
.LVL54:
.L66:
	.loc 1 418 0
	movh.a	%a15, hi:FaultFunctionTypeDetectedArray
	mov	%d9, 1
	lea	%a15, [%a15] lo:FaultFunctionTypeDetectedArray
	addsc.a	%a15, %a15, %d15, 0
	sh	%d9, %d9, %d5
	not	%d9
	ld.h	%d2, [%a15]0
	extr.u	%d9, %d9, 0, 16
	and	%d2, %d9
	st.h	[%a15]0, %d2
	.loc 1 419 0
	movh.a	%a15, hi:FaultFunctionTypeOffsetTable
	lea	%a15, [%a15] lo:FaultFunctionTypeOffsetTable
	addsc.a	%a15, %a15, %d15, 0
	ld.h	%d8, [%a15]0
	.loc 1 420 0
	movh.a	%a15, hi:FaultTableFuncTypeCounter1
	.loc 1 419 0
	add	%d8, %d5
	extr.u	%d8, %d8, 0, 16
.LVL55:
	.loc 1 420 0
	lea	%a15, [%a15] lo:FaultTableFuncTypeCounter1
	addsc.a	%a15, %a15, %d8, 0
	ld.bu	%d2, [%a15]0
	jz	%d2, .L47
	.loc 1 423 0
	movh.a	%a2, hi:FaultFunctionTypeDecs
	lea	%a2, [%a2] lo:FaultFunctionTypeDecs
	addsc.a	%a2, %a2, %d8, 0
	.loc 1 422 0
	ld.bu	%d3, [%a2]0
	sub	%d2, %d3
	extr.u	%d2, %d2, 0, 16
.LVL56:
	.loc 1 424 0
	extr	%d3, %d2, 0, 16
	jlez	%d3, .L67
	.loc 1 443 0
	st.b	[%a15]0, %d2
	ret
.L67:
	.loc 1 427 0
	and	%d4, %d8, 255
.LVL57:
	mov	%d10, %d5
	call	DSM_vidClrDtcStsTFBit
.LVL58:
	.loc 1 431 0
	movh.a	%a2, hi:FaultFunctionTypeIrrArray
	.loc 1 429 0
	mov	%d2, 0
	.loc 1 431 0
	lea	%a2, [%a2] lo:FaultFunctionTypeIrrArray
	.loc 1 429 0
	st.b	[%a15]0, %d2
	.loc 1 431 0
	addsc.a	%a2, %a2, %d15, 0
	.loc 1 430 0
	movh.a	%a15, hi:FaultFunctionTypeLoggedArray
	lea	%a15, [%a15] lo:FaultFunctionTypeLoggedArray
	addsc.a	%a15, %a15, %d15, 0
	.loc 1 431 0
	ld.hu	%d5, [%a2]0
	.loc 1 430 0
	ld.hu	%d2, [%a15]0
.LVL59:
	.loc 1 431 0
	extr.u	%d5, %d5, %d10, 1
	.loc 1 433 0
	xor	%d15, %d5, 1
.LVL60:
	.loc 1 432 0
	extr.u	%d5, %d2, %d10, 1
	and	%d5, %d15
	jz	%d5, .L47
	.loc 1 436 0
	and	%d9, %d2
	st.h	[%a15]0, %d9
.LVL61:
.LBB260:
.LBB261:
	.loc 1 146 0
	movh.a	%a15, hi:FaultFunctionTypeFailModTable
	lea	%a15, [%a15] lo:FaultFunctionTypeFailModTable
	addsc.a	%a15, %a15, %d8, 0
	.loc 1 164 0
	mov	%d4, 0
	.loc 1 146 0
	ld.bu	%d2, [%a15]0
.LVL62:
	.loc 1 139 0
	mov	%d3, 0
	.loc 1 146 0
	sh	%d15, %d2, -4
.LVL63:
	.loc 1 148 0
	and	%d2, %d2, 15
.LVL64:
	.loc 1 164 0
	jge.u	%d15, 5, .L52
	.loc 1 166 0
	madd	%d3, %d2, %d15, 5
.LVL65:
	mov	%d4, %d3
.LVL66:
.L52:
	.loc 1 175 0
	movh.a	%a2, hi:FaultFailModCounterTable
	lea	%a2, [%a2] lo:FaultFailModCounterTable
	addsc.a	%a15, %a2, %d4, 0
	ld.bu	%d4, [%a15]0
	jlt.u	%d4, 2, .L53
	.loc 1 177 0
	add	%d4, -1
	st.b	[%a15]0, %d4
	ret
.L53:
.LVL67:
	.loc 1 182 0
	mov	%d4, 0
	st.b	[%a15]0, %d4
	.loc 1 189 0
	jz	%d2, .L47
	.loc 1 213 0
	movh.a	%a15, hi:DSM_FaultFailureLevel
	lea	%a3, [%a15] lo:DSM_FaultFailureLevel
	addsc.a	%a15, %a3, %d15, 0
	ld.bu	%d4, [%a15]0
	jne	%d2, %d4, .L47
	add	%d2, -1
.LVL68:
	mov	%d6, 0
	addi	%d7, %d3, -1
	and	%d2, %d2, 255
.LVL69:
.L54:
	and	%d3, %d6, 255
	sub	%d4, %d7, %d3
	.loc 1 223 0
	and	%d4, %d4, 255
	addsc.a	%a15, %a2, %d4, 0
	sub	%d5, %d2, %d3
	and	%d5, %d5, 255
.LVL70:
	.loc 1 224 0
	ld.bu	%d4, [%a15]0
	.loc 1 225 0
	ne	%d3, %d5, 0
	and.eq	%d3, %d4, 0
	add	%d6, 1
	jnz	%d3, .L54
	.loc 1 228 0
	addsc.a	%a15, %a3, %d15, 0
	st.b	[%a15]0, %d5
	ret
.LBE261:
.LBE260:
.LFE3:
	.size	FaultDetectionWithoutFail, .-FaultDetectionWithoutFail
.section .text.FaultPowerDownManage,"ax",@progbits
	.align 1
	.global	FaultPowerDownManage
	.type	FaultPowerDownManage, @function
FaultPowerDownManage:
.LFB4:
	.loc 1 466 0
	ret
.LFE4:
	.size	FaultPowerDownManage, .-FaultPowerDownManage
.section .text.DSM_vidClrFuncArrayBySegment,"ax",@progbits
	.align 1
	.global	DSM_vidClrFuncArrayBySegment
	.type	DSM_vidClrFuncArrayBySegment, @function
DSM_vidClrFuncArrayBySegment:
.LFB5:
	.loc 1 471 0
.LVL71:
	movh	%d7, hi:FaultFunctionTypeDetectedArray
	movh	%d6, hi:FaultFunctionTypeLoggedArray
	.loc 1 474 0
	mov	%d2, 0
	addi	%d7, %d7, lo:FaultFunctionTypeDetectedArray
	addi	%d6, %d6, lo:FaultFunctionTypeLoggedArray
	addi	%d3, %d4, 1
	.loc 1 476 0
	mov	%d15, 0
	.loc 1 474 0
	jlt	%d5, %d4, .L69
.LVL72:
.L73:
	.loc 1 476 0 discriminator 3
	sh	%d4, 1
	mov.a	%a2, %d7
	addsc.a	%a15, %a2, %d4, 0
	.loc 1 477 0 discriminator 3
	mov.a	%a2, %d6
	.loc 1 476 0 discriminator 3
	st.h	[%a15]0, %d15
	.loc 1 477 0 discriminator 3
	addsc.a	%a15, %a2, %d4, 0
	add	%d4, %d3, %d2
	.loc 1 474 0 discriminator 3
	extr.u	%d4, %d4, 0, 16
	.loc 1 477 0 discriminator 3
	st.h	[%a15]0, %d15
.LVL73:
	add	%d2, 1
.LVL74:
	.loc 1 474 0 discriminator 3
	jge	%d5, %d4, .L73
.LVL75:
.L69:
	ret
.LFE5:
	.size	DSM_vidClrFuncArrayBySegment, .-DSM_vidClrFuncArrayBySegment
.section .text.DSM_vidClrFuncCtrBySegment,"ax",@progbits
	.align 1
	.global	DSM_vidClrFuncCtrBySegment
	.type	DSM_vidClrFuncCtrBySegment, @function
DSM_vidClrFuncCtrBySegment:
.LFB6:
	.loc 1 482 0
.LVL76:
	movh.a	%a2, hi:FaultTableFuncTypeCounter1
	.loc 1 485 0
	mov	%d15, 0
	lea	%a2, [%a2] lo:FaultTableFuncTypeCounter1
	addi	%d3, %d4, 1
	.loc 1 487 0
	mov	%d2, 0
	.loc 1 485 0
	jlt	%d5, %d4, .L75
.LVL77:
.L79:
	.loc 1 487 0 discriminator 3
	addsc.a	%a15, %a2, %d4, 0
	add	%d4, %d15, %d3
	.loc 1 485 0 discriminator 3
	extr.u	%d4, %d4, 0, 16
	.loc 1 487 0 discriminator 3
	st.b	[%a15]0, %d2
.LVL78:
	add	%d15, 1
.LVL79:
	.loc 1 485 0 discriminator 3
	jge	%d5, %d4, .L79
.LVL80:
.L75:
	ret
.LFE6:
	.size	DSM_vidClrFuncCtrBySegment, .-DSM_vidClrFuncCtrBySegment
.section .text.DSM_vidClrFailModeCtrBySegment,"ax",@progbits
	.align 1
	.global	DSM_vidClrFailModeCtrBySegment
	.type	DSM_vidClrFailModeCtrBySegment, @function
DSM_vidClrFailModeCtrBySegment:
.LFB7:
	.loc 1 492 0
.LVL81:
	movh.a	%a2, hi:FaultFailModCounterTable
	.loc 1 495 0
	mov	%d3, 0
	lea	%a2, [%a2] lo:FaultFailModCounterTable
	mov	%d15, %d4
	.loc 1 497 0
	mov	%d6, 0
	.loc 1 495 0
	jge.u	%d4, %d5, .L81
.LVL82:
.L85:
	.loc 1 497 0 discriminator 3
	and	%d15, 255
	addsc.a	%a15, %a2, %d15, 0
	add	%d3, 1
.LVL83:
	add	%d15, %d4, %d3
	st.b	[%a15]0, %d6
.LVL84:
	.loc 1 495 0 discriminator 3
	and	%d2, %d15, 255
	jlt.u	%d2, %d5, .L85
.L81:
	ret
.LFE7:
	.size	DSM_vidClrFailModeCtrBySegment, .-DSM_vidClrFailModeCtrBySegment
.section .text.FaultClear,"ax",@progbits
	.align 1
	.global	FaultClear
	.type	FaultClear, @function
FaultClear:
.LFB8:
	.loc 1 520 0
.LVL85:
	.loc 1 521 0
	jge.u	%d4, 5, .L88
	movh.a	%a15, hi:.L90
	lea	%a15, [%a15] lo:.L90
	addsc.a	%a15, %a15, %d4, 2
	ji	%a15
	.align 2
	.align 2
.L90:
	.code32
	j	.L89
	.code32
	j	.L91
	.code32
	j	.L92
	.code32
	j	.L93
	.code32
	j	.L94
.L92:
	movh.a	%a3, hi:FaultFunctionTypeLoggedArray
	movh.a	%a4, hi:FaultFunctionTypeDetectedArray
	lea	%a15, [%a3] lo:FaultFunctionTypeLoggedArray
	lea	%a2, [%a4] lo:FaultFunctionTypeDetectedArray
	mov.d	%d15, %a15
	mov.d	%d2, %a2
	or	%d15, %d2
	and	%d15, %d15, 3
	jnz	%d15, .L140
.LVL86:
.LBB262:
.LBB263:
	.loc 1 476 0
	st.h	[%a4] lo:FaultFunctionTypeDetectedArray, %d15
	.loc 1 477 0
	st.h	[%a3] lo:FaultFunctionTypeLoggedArray, %d15
	.loc 1 476 0
	st.h	[%a2] 2, %d15
	.loc 1 477 0
	st.h	[%a15] 2, %d15
	.loc 1 476 0
	st.h	[%a2] 4, %d15
	st.h	[%a2] 6, %d15
	.loc 1 477 0
	st.h	[%a15] 4, %d15
	st.h	[%a15] 6, %d15
	.loc 1 476 0
	st.h	[%a2] 8, %d15
	st.h	[%a2] 10, %d15
	.loc 1 477 0
	st.h	[%a15] 8, %d15
	st.h	[%a15] 10, %d15
	.loc 1 476 0
	st.h	[%a2] 12, %d15
	st.h	[%a2] 14, %d15
	.loc 1 477 0
	st.h	[%a15] 12, %d15
	st.h	[%a15] 14, %d15
	.loc 1 476 0
	st.h	[%a2] 16, %d15
	st.h	[%a2] 18, %d15
	.loc 1 477 0
	st.h	[%a15] 16, %d15
	st.h	[%a15] 18, %d15
	.loc 1 476 0
	st.h	[%a2] 20, %d15
	st.h	[%a2] 22, %d15
	.loc 1 477 0
	st.h	[%a15] 20, %d15
	st.h	[%a15] 22, %d15
	.loc 1 476 0
	st.h	[%a2] 24, %d15
	st.h	[%a2] 26, %d15
	.loc 1 477 0
	st.h	[%a15] 24, %d15
	st.h	[%a15] 26, %d15
	.loc 1 476 0
	st.h	[%a2] 28, %d15
	st.h	[%a2] 30, %d15
	.loc 1 477 0
	st.h	[%a15] 28, %d15
	st.h	[%a15] 30, %d15
	.loc 1 476 0
	st.h	[%a2] 32, %d15
	st.h	[%a2] 34, %d15
	.loc 1 477 0
	st.h	[%a15] 32, %d15
	st.h	[%a15] 34, %d15
.LVL87:
.L109:
	movh.a	%a2, hi:FaultTableFuncTypeCounter1
	lea	%a15, [%a2] lo:FaultTableFuncTypeCounter1
	mov.d	%d15, %a15
.LBE263:
.LBE262:
.LBB265:
.LBB266:
	.loc 1 485 0
	mov	%d2, 40
	rsub	%d15
	and	%d15, %d15, 3
	mov	%d3, 10
	mov	%d6, 41
	mov	%d0, 41
	mov	%d5, 0
	mov	%d7, 0
	jz	%d15, .L111
.LVL88:
	.loc 1 487 0
	st.b	[%a2] lo:FaultTableFuncTypeCounter1, %d5
.LVL89:
	mov	%d2, 0
	mov	%d6, 40
	.loc 1 485 0
	mov	%d5, 1
	mov	%d7, 1
	jeq	%d15, 1, .L112
	.loc 1 487 0
	st.b	[%a15] 1, %d2
.LVL90:
	mov	%d6, 39
	.loc 1 485 0
	mov	%d5, 2
	mov	%d7, 2
	jne	%d15, 3, .L112
	.loc 1 487 0
	st.b	[%a15] 2, %d2
.LVL91:
	mov	%d6, 38
	.loc 1 485 0
	mov	%d5, 3
	mov	%d7, 3
.LVL92:
.L112:
	rsub	%d3, %d15, 37
	sh	%d3, -2
	add	%d3, 1
	rsub	%d0, %d15, 41
	sh	%d2, %d3, 2
.L111:
	addsc.a	%a2, %a15, %d15, 0
	.loc 1 487 0
	mov	%d15, 0
	st.w	[%a2]0, %d15
	st.w	[%a2] 4, %d15
	st.w	[%a2] 8, %d15
	st.w	[%a2] 12, %d15
	st.w	[%a2] 16, %d15
	st.w	[%a2] 20, %d15
	st.w	[%a2] 24, %d15
	st.w	[%a2] 28, %d15
	st.w	[%a2] 32, %d15
	ne	%d3, %d3, 10
	jnz	%d3, .L113
	st.w	[%a2] 36, %d15
.L113:
	add	%d5, %d2
	add	%d7, %d2
	extr.u	%d5, %d5, 0, 16
	sub	%d3, %d6, %d2
	jeq	%d0, %d2, .L114
	addsc.a	%a2, %a15, %d7, 0
	mov	%d15, 0
	.loc 1 485 0
	addi	%d2, %d5, 1
	.loc 1 487 0
	st.b	[%a2]0, %d15
	.loc 1 485 0
	extr.u	%d2, %d2, 0, 16
	jeq	%d3, 1, .L114
	.loc 1 487 0
	addsc.a	%a2, %a15, %d2, 0
	.loc 1 485 0
	add	%d5, 2
	.loc 1 487 0
	st.b	[%a2]0, %d15
	.loc 1 485 0
	extr.u	%d5, %d5, 0, 16
	jeq	%d3, 2, .L114
	.loc 1 487 0
	addsc.a	%a15, %a15, %d5, 0
	st.b	[%a15]0, %d15
.L114:
.LVL93:
.LBE266:
.LBE265:
.LBB267:
.LBB268:
	.loc 1 497 0
	movh.a	%a15, hi:FaultFailModCounterTable
	lea	%a15, [%a15] lo:FaultFailModCounterTable
	mov	%d15, 0
	st.b	[%a15] 10, %d15
.LVL94:
	st.b	[%a15] 11, %d15
.LVL95:
	st.b	[%a15] 12, %d15
.LVL96:
	st.b	[%a15] 13, %d15
.LVL97:
	st.b	[%a15] 14, %d15
.LVL98:
.L88:
.LBE268:
.LBE267:
	.loc 1 580 0
	mov	%d15, 0
	movh.a	%a15, hi:FaultFailureLevel
	st.b	[%a15] lo:FaultFailureLevel, %d15
	.loc 1 581 0
	movh.a	%a15, hi:DSM_FaultFailureLevel
	lea	%a15, [%a15] lo:DSM_FaultFailureLevel
	addsc.a	%a15, %a15, %d4, 0
	st.b	[%a15]0, %d15
	ret
.L93:
	movh.a	%a15, hi:FaultFunctionTypeLoggedArray+118
	mov.d	%d15, %a15
	movh.a	%a2, hi:FaultFunctionTypeDetectedArray+118
	addi	%d2, %d15, lo:FaultFunctionTypeLoggedArray+118
	mov.d	%d15, %a2
	addi	%d3, %d15, lo:FaultFunctionTypeDetectedArray+118
	or	%d15, %d2, %d3
	and	%d15, %d15, 3
	jnz	%d15, .L144
.LVL99:
.LBB269:
.LBB270:
	.loc 1 476 0
	mov.a	%a2, %d3
	.loc 1 477 0
	mov.a	%a15, %d2
	.loc 1 476 0
	st.h	[%a2+]-118, %d15
	.loc 1 477 0
	st.h	[%a15+]-118, %d15
	.loc 1 476 0
	st.h	[%a2] 120, %d15
	.loc 1 477 0
	st.h	[%a15] 120, %d15
	.loc 1 476 0
	st.h	[%a2] 122, %d15
	st.h	[%a2] 124, %d15
	.loc 1 477 0
	st.h	[%a15] 122, %d15
	st.h	[%a15] 124, %d15
	.loc 1 476 0
	st.h	[%a2] 126, %d15
	st.h	[%a2] 128, %d15
	.loc 1 477 0
	st.h	[%a15] 126, %d15
	st.h	[%a15] 128, %d15
	.loc 1 476 0
	st.h	[%a2] 130, %d15
	st.h	[%a2] 132, %d15
	.loc 1 477 0
	st.h	[%a15] 130, %d15
	st.h	[%a15] 132, %d15
	.loc 1 476 0
	st.h	[%a2] 134, %d15
	st.h	[%a2] 136, %d15
	.loc 1 477 0
	st.h	[%a15] 134, %d15
	st.h	[%a15] 136, %d15
	.loc 1 476 0
	st.h	[%a2] 138, %d15
	st.h	[%a2] 140, %d15
	.loc 1 477 0
	st.h	[%a15] 138, %d15
	st.h	[%a15] 140, %d15
	.loc 1 476 0
	st.h	[%a2] 142, %d15
	st.h	[%a2] 144, %d15
	.loc 1 477 0
	st.h	[%a15] 142, %d15
	st.h	[%a15] 144, %d15
	.loc 1 476 0
	st.h	[%a2] 146, %d15
	st.h	[%a2] 148, %d15
	.loc 1 477 0
	st.h	[%a15] 146, %d15
	st.h	[%a15] 148, %d15
	.loc 1 476 0
	st.h	[%a2] 150, %d15
	st.h	[%a2] 152, %d15
	.loc 1 477 0
	st.h	[%a15] 150, %d15
	st.h	[%a15] 152, %d15
.LVL100:
.L117:
	movh.a	%a15, hi:FaultTableFuncTypeCounter1+153
	mov.d	%d2, %a15
.LBE270:
.LBE269:
.LBB272:
.LBB273:
	.loc 1 485 0
	mov	%d3, 10
	addi	%d0, %d2, lo:FaultTableFuncTypeCounter1+153
	rsub	%d15, %d0, 0
	mov.a	%a2, %d0
	and	%d15, %d15, 3
	mov	%d2, 40
	mov	%d5, 41
	mov	%d1, 41
	mov	%d7, 153
	mov	%d6, 153
	lea	%a15, [%a2] -153
	jz	%d15, .L119
.LVL101:
	.loc 1 487 0
	mov	%d2, 0
	st.b	[%a15] 153, %d2
.LVL102:
	mov	%d5, 40
	.loc 1 485 0
	mov	%d7, 154
	mov	%d6, 154
	jeq	%d15, 1, .L120
	.loc 1 487 0
	st.b	[%a15] 154, %d2
.LVL103:
	mov	%d5, 39
	.loc 1 485 0
	mov	%d7, 155
	mov	%d6, 155
	jne	%d15, 3, .L120
	.loc 1 487 0
	st.b	[%a15] 155, %d2
.LVL104:
	mov	%d5, 38
	.loc 1 485 0
	mov	%d7, 156
	mov	%d6, 156
.LVL105:
.L120:
	rsub	%d3, %d15, 37
	sh	%d3, -2
	add	%d3, 1
	rsub	%d1, %d15, 41
	sh	%d2, %d3, 2
.L119:
	addi	%d15, %d15, 153
	addsc.a	%a2, %a15, %d15, 0
	.loc 1 487 0
	mov	%d15, 0
	st.w	[%a2]0, %d15
	st.w	[%a2] 4, %d15
	st.w	[%a2] 8, %d15
	st.w	[%a2] 12, %d15
	st.w	[%a2] 16, %d15
	st.w	[%a2] 20, %d15
	st.w	[%a2] 24, %d15
	st.w	[%a2] 28, %d15
	st.w	[%a2] 32, %d15
	ne	%d3, %d3, 10
	jnz	%d3, .L121
	st.w	[%a2] 36, %d15
.L121:
	add	%d6, %d2
	add	%d7, %d2
	extr.u	%d6, %d6, 0, 16
	sub	%d3, %d5, %d2
	jeq	%d1, %d2, .L122
	addsc.a	%a2, %a15, %d7, 0
	mov	%d15, 0
	.loc 1 485 0
	addi	%d2, %d6, 1
	.loc 1 487 0
	st.b	[%a2]0, %d15
	.loc 1 485 0
	extr.u	%d2, %d2, 0, 16
	jeq	%d3, 1, .L122
	.loc 1 487 0
	addsc.a	%a2, %a15, %d2, 0
	.loc 1 485 0
	add	%d6, 2
	.loc 1 487 0
	st.b	[%a2]0, %d15
	.loc 1 485 0
	extr.u	%d6, %d6, 0, 16
	jeq	%d3, 2, .L122
	.loc 1 487 0
	addsc.a	%a15, %a15, %d6, 0
	st.b	[%a15]0, %d15
.L122:
.LVL106:
.LBE273:
.LBE272:
.LBB274:
.LBB275:
	.loc 1 497 0
	movh.a	%a15, hi:FaultFailModCounterTable
	lea	%a15, [%a15] lo:FaultFailModCounterTable
	mov	%d15, 0
	st.b	[%a15] 15, %d15
.LVL107:
	st.b	[%a15] 16, %d15
.LVL108:
	st.b	[%a15] 17, %d15
.LVL109:
	st.b	[%a15] 18, %d15
.LVL110:
	st.b	[%a15] 19, %d15
.LVL111:
	j	.L88
.LVL112:
.L94:
	movh.a	%a15, hi:FaultFunctionTypeLoggedArray+154
	mov.d	%d15, %a15
	movh.a	%a2, hi:FaultFunctionTypeDetectedArray+154
	addi	%d2, %d15, lo:FaultFunctionTypeLoggedArray+154
	mov.d	%d15, %a2
	addi	%d3, %d15, lo:FaultFunctionTypeDetectedArray+154
	or	%d15, %d2, %d3
	and	%d15, %d15, 3
.LBE275:
.LBE274:
.LBB276:
.LBB277:
	.loc 1 476 0
	mov.a	%a2, %d3
	jnz	%d15, .L124
.LVL113:
	.loc 1 477 0
	mov.a	%a15, %d2
	.loc 1 476 0
	st.h	[%a2+]-154, %d15
	.loc 1 477 0
	st.h	[%a15+]-154, %d15
	.loc 1 476 0
	st.h	[%a2] 156, %d15
	st.h	[%a2] 158, %d15
	st.h	[%a2] 160, %d15
	st.h	[%a2] 162, %d15
	st.h	[%a2] 164, %d15
	st.h	[%a2] 166, %d15
	st.h	[%a2] 168, %d15
	st.h	[%a2] 170, %d15
	st.h	[%a2] 172, %d15
	.loc 1 477 0
	st.h	[%a15] 172, %d15
	st.h	[%a15] 156, %d15
	st.h	[%a15] 158, %d15
	st.h	[%a15] 160, %d15
	st.h	[%a15] 162, %d15
	st.h	[%a15] 164, %d15
	st.h	[%a15] 166, %d15
	st.h	[%a15] 168, %d15
.LVL114:
	st.h	[%a15] 170, %d15
	.loc 1 476 0
	st.h	[%a2] 174, %d15
	.loc 1 477 0
	st.h	[%a15] 174, %d15
.LVL115:
.L125:
	movh.a	%a15, hi:FaultTableFuncTypeCounter1+194
	mov.d	%d15, %a15
.LBE277:
.LBE276:
.LBB279:
.LBB280:
	.loc 1 485 0
	mov	%d3, 88
	addi	%d2, %d15, lo:FaultTableFuncTypeCounter1+194
	rsub	%d15, %d2, 0
	mov.a	%a2, %d2
	and	%d15, %d15, 3
	mov	%d0, 22
	mov	%d1, %d3
	mov	%d5, %d3
	mov	%d7, 194
	mov	%d6, 194
	lea	%a15, [%a2] -194
	jz	%d15, .L126
.LVL116:
	.loc 1 487 0
	mov	%d2, 0
	st.b	[%a15] 194, %d2
.LVL117:
	mov	%d5, 87
	.loc 1 485 0
	mov	%d7, 195
	mov	%d6, 195
	jeq	%d15, 1, .L127
	.loc 1 487 0
	st.b	[%a15] 195, %d2
.LVL118:
	mov	%d5, 86
	.loc 1 485 0
	mov	%d7, 196
	mov	%d6, 196
	jne	%d15, 3, .L127
	.loc 1 487 0
	st.b	[%a15] 196, %d2
.LVL119:
	mov	%d5, 85
	.loc 1 485 0
	mov	%d7, 197
	mov	%d6, 197
.LVL120:
.L127:
	rsub	%d1, %d15, 88
	mov	%d3, 84
	mov	%d0, 21
.L126:
	addi	%d2, %d0, -1
	sel	%d2, %d0, %d2, 0
	addi	%d15, %d15, 194
	mov.a	%a2, %d2
	addsc.a	%a3, %a15, %d15, 0
	.loc 1 487 0
	mov	%d15, 0
.L128:
	st.w	[%a3+]4, %d15
	mov	%d2, 0
	loop	%a2, .L128
	add	%d7, %d3
	add	%d6, %d3
	sub	%d15, %d5, %d3
	jeq	%d1, %d3, .L130
.LVL121:
	addsc.a	%a2, %a15, %d7, 0
	.loc 1 485 0
	addi	%d3, %d6, 1
	.loc 1 487 0
	st.b	[%a2]0, %d2
.LVL122:
	.loc 1 485 0
	extr.u	%d3, %d3, 0, 16
	jeq	%d15, 1, .L130
	.loc 1 487 0
	addsc.a	%a2, %a15, %d3, 0
	.loc 1 485 0
	add	%d6, 2
.LVL123:
	.loc 1 487 0
	st.b	[%a2]0, %d2
.LVL124:
	.loc 1 485 0
	extr.u	%d6, %d6, 0, 16
.LVL125:
	jeq	%d15, 2, .L130
	.loc 1 487 0
	addsc.a	%a15, %a15, %d6, 0
	st.b	[%a15]0, %d2
.L130:
.LVL126:
.LBE280:
.LBE279:
.LBB281:
.LBB282:
	.loc 1 497 0
	movh.a	%a15, hi:FaultFailModCounterTable
	mov	%d15, 0
	lea	%a15, [%a15] lo:FaultFailModCounterTable
	st.b	[%a15] 20, %d15
.LVL127:
	j	.L88
.LVL128:
.L89:
	movh.a	%a15, hi:FaultFunctionTypeLoggedArray+36
	mov.d	%d15, %a15
	movh.a	%a2, hi:FaultFunctionTypeDetectedArray+36
	addi	%d2, %d15, lo:FaultFunctionTypeLoggedArray+36
	mov.d	%d15, %a2
	addi	%d3, %d15, lo:FaultFunctionTypeDetectedArray+36
	or	%d15, %d2, %d3
	and	%d15, %d15, 3
	jnz	%d15, .L135
.LBE282:
.LBE281:
.LBB283:
.LBB284:
	.loc 1 476 0
	mov.a	%a2, %d3
	.loc 1 477 0
	mov.a	%a15, %d2
	.loc 1 476 0
	st.h	[%a2+]-36, %d15
	.loc 1 477 0
	st.h	[%a15+]-36, %d15
	.loc 1 476 0
	st.h	[%a2] 38, %d15
	.loc 1 477 0
	st.h	[%a15] 38, %d15
	.loc 1 476 0
	st.h	[%a2] 40, %d15
	st.h	[%a2] 42, %d15
	.loc 1 477 0
	st.h	[%a15] 40, %d15
	st.h	[%a15] 42, %d15
	.loc 1 476 0
	st.h	[%a2] 44, %d15
	st.h	[%a2] 46, %d15
	.loc 1 477 0
	st.h	[%a15] 44, %d15
	st.h	[%a15] 46, %d15
	.loc 1 476 0
	st.h	[%a2] 48, %d15
	st.h	[%a2] 50, %d15
	.loc 1 477 0
	st.h	[%a15] 48, %d15
	st.h	[%a15] 50, %d15
	.loc 1 476 0
	st.h	[%a2] 52, %d15
	st.h	[%a2] 54, %d15
	.loc 1 477 0
	st.h	[%a15] 52, %d15
	st.h	[%a15] 54, %d15
	.loc 1 476 0
	st.h	[%a2] 56, %d15
	st.h	[%a2] 58, %d15
	.loc 1 477 0
	st.h	[%a15] 56, %d15
	st.h	[%a15] 58, %d15
	.loc 1 476 0
	st.h	[%a2] 60, %d15
	st.h	[%a2] 62, %d15
	.loc 1 477 0
	st.h	[%a15] 60, %d15
	st.h	[%a15] 62, %d15
	.loc 1 476 0
	st.h	[%a2] 64, %d15
	st.h	[%a2] 66, %d15
	.loc 1 477 0
	st.h	[%a15] 64, %d15
	st.h	[%a15] 66, %d15
	.loc 1 476 0
	st.h	[%a2] 68, %d15
	st.h	[%a2] 70, %d15
	.loc 1 477 0
	st.h	[%a15] 68, %d15
	st.h	[%a15] 70, %d15
	.loc 1 476 0
	st.h	[%a2] 72, %d15
	st.h	[%a2] 74, %d15
	.loc 1 477 0
	st.h	[%a15] 72, %d15
	st.h	[%a15] 74, %d15
.LVL129:
.L96:
.LBE284:
.LBE283:
.LBB286:
.LBB287:
	.loc 1 476 0
	mov	%d15, 0
	.loc 1 477 0
	st.h	[%a15] 176, %d15
.LVL130:
	movh.a	%a15, hi:FaultTableFuncTypeCounter1+41
	mov.d	%d2, %a15
	.loc 1 476 0
	st.h	[%a2] 176, %d15
	addi	%d0, %d2, lo:FaultTableFuncTypeCounter1+41
	rsub	%d2, %d0, 0
	mov.a	%a2, %d0
	.loc 1 477 0
	mov	%d1, 52
	and	%d2, %d2, 3
	mov	%d6, 41
	mov	%d7, 41
	mov	%d5, 52
	mov	%d8, 13
	mov	%d3, %d1
	lea	%a15, [%a2] -41
	jz	%d2, .L132
.LBE287:
.LBE286:
.LBB288:
.LBB289:
	.loc 1 487 0
	st.b	[%a15] 41, %d15
.LVL131:
	mov	%d5, 51
	.loc 1 485 0
	mov	%d7, 42
	mov	%d6, 42
	jeq	%d2, 1, .L133
	.loc 1 487 0
	st.b	[%a15] 42, %d15
.LVL132:
	mov	%d5, 50
	.loc 1 485 0
	mov	%d7, 43
	mov	%d6, 43
	jne	%d2, 3, .L133
	.loc 1 487 0
	st.b	[%a15] 43, %d15
.LVL133:
	mov	%d5, 49
	.loc 1 485 0
	mov	%d7, 44
	mov	%d6, 44
.LVL134:
.L133:
	rsub	%d1, %d2, 52
	mov	%d8, 12
	mov	%d3, 48
.L132:
	addi	%d2, %d2, 41
	addsc.a	%a2, %a15, %d2, 0
	.loc 1 487 0
	mov	%d15, 0
	st.w	[%a2]0, %d15
	st.w	[%a2] 4, %d15
	st.w	[%a2] 8, %d15
	st.w	[%a2] 12, %d15
	st.w	[%a2] 16, %d15
	st.w	[%a2] 20, %d15
	st.w	[%a2] 24, %d15
	st.w	[%a2] 28, %d15
	st.w	[%a2] 32, %d15
	st.w	[%a2] 36, %d15
	st.w	[%a2] 40, %d15
	st.w	[%a2] 44, %d15
	eq	%d8, %d8, 13
	jz	%d8, .L97
	st.w	[%a2] 48, %d15
.L97:
	add	%d7, %d3
	add	%d6, %d3
	sub	%d2, %d5, %d3
	jeq	%d3, %d1, .L98
.LVL135:
	addsc.a	%a2, %a15, %d7, 0
	mov	%d15, 0
	.loc 1 485 0
	addi	%d3, %d6, 1
	.loc 1 487 0
	st.b	[%a2]0, %d15
.LVL136:
	.loc 1 485 0
	extr.u	%d3, %d3, 0, 16
	jeq	%d2, 1, .L98
	.loc 1 487 0
	addsc.a	%a2, %a15, %d3, 0
	.loc 1 485 0
	add	%d6, 2
.LVL137:
	.loc 1 487 0
	st.b	[%a2]0, %d15
.LVL138:
	.loc 1 485 0
	extr.u	%d6, %d6, 0, 16
.LVL139:
	jeq	%d2, 2, .L98
	.loc 1 487 0
	addsc.a	%a2, %a15, %d6, 0
	st.b	[%a2]0, %d15
.L98:
.LVL140:
.LBE289:
.LBE288:
.LBB290:
.LBB291:
	mov	%d15, 0
.LBE291:
.LBE290:
.LBB293:
.LBB294:
	.loc 1 497 0
	movh.a	%a2, hi:FaultFailModCounterTable
.LBE294:
.LBE293:
.LBB296:
.LBB292:
	.loc 1 487 0
	st.b	[%a15] 282, %d15
.LVL141:
	st.b	[%a15] 283, %d15
.LVL142:
	st.b	[%a15] 284, %d15
.LVL143:
	st.b	[%a15] 285, %d15
.LVL144:
	st.b	[%a15] 286, %d15
.LVL145:
	st.b	[%a15] 287, %d15
.LVL146:
	st.b	[%a15] 288, %d15
.LVL147:
	st.b	[%a15] 289, %d15
.LVL148:
.LBE292:
.LBE296:
.LBB297:
.LBB295:
	.loc 1 497 0
	lea	%a15, [%a2] lo:FaultFailModCounterTable
	st.b	[%a2] lo:FaultFailModCounterTable, %d15
.LVL149:
	st.b	[%a15] 1, %d15
.LVL150:
	st.b	[%a15] 2, %d15
.LVL151:
	st.b	[%a15] 3, %d15
.LVL152:
	st.b	[%a15] 4, %d15
.LVL153:
	j	.L88
.LVL154:
.L91:
	movh.a	%a15, hi:FaultFunctionTypeLoggedArray+76
	mov.d	%d15, %a15
	movh.a	%a2, hi:FaultFunctionTypeDetectedArray+76
	addi	%d2, %d15, lo:FaultFunctionTypeLoggedArray+76
	mov.d	%d15, %a2
	addi	%d3, %d15, lo:FaultFunctionTypeDetectedArray+76
	or	%d15, %d2, %d3
	and	%d15, %d15, 3
	jnz	%d15, .L136
.LVL155:
.LBE295:
.LBE297:
.LBB298:
.LBB299:
	.loc 1 476 0
	mov.a	%a2, %d3
	.loc 1 477 0
	mov.a	%a15, %d2
	.loc 1 476 0
	st.h	[%a2+]-76, %d15
	.loc 1 477 0
	st.h	[%a15+]-76, %d15
	.loc 1 476 0
	st.h	[%a2] 78, %d15
	.loc 1 477 0
	st.h	[%a15] 78, %d15
	.loc 1 476 0
	st.h	[%a2] 80, %d15
	st.h	[%a2] 82, %d15
	.loc 1 477 0
	st.h	[%a15] 80, %d15
	st.h	[%a15] 82, %d15
	.loc 1 476 0
	st.h	[%a2] 84, %d15
	st.h	[%a2] 86, %d15
	.loc 1 477 0
	st.h	[%a15] 84, %d15
	st.h	[%a15] 86, %d15
	.loc 1 476 0
	st.h	[%a2] 88, %d15
	st.h	[%a2] 90, %d15
	.loc 1 477 0
	st.h	[%a15] 88, %d15
	st.h	[%a15] 90, %d15
	.loc 1 476 0
	st.h	[%a2] 92, %d15
	st.h	[%a2] 94, %d15
	.loc 1 477 0
	st.h	[%a15] 92, %d15
	st.h	[%a15] 94, %d15
	.loc 1 476 0
	st.h	[%a2] 96, %d15
	st.h	[%a2] 98, %d15
	.loc 1 477 0
	st.h	[%a15] 96, %d15
	st.h	[%a15] 98, %d15
	.loc 1 476 0
	st.h	[%a2] 100, %d15
	st.h	[%a2] 102, %d15
	.loc 1 477 0
	st.h	[%a15] 100, %d15
	st.h	[%a15] 102, %d15
	.loc 1 476 0
	st.h	[%a2] 104, %d15
	st.h	[%a2] 106, %d15
	.loc 1 477 0
	st.h	[%a15] 104, %d15
	st.h	[%a15] 106, %d15
	.loc 1 476 0
	st.h	[%a2] 108, %d15
	st.h	[%a2] 110, %d15
	.loc 1 477 0
	st.h	[%a15] 108, %d15
	st.h	[%a15] 110, %d15
	.loc 1 476 0
	st.h	[%a2] 112, %d15
	st.h	[%a2] 114, %d15
	.loc 1 477 0
	st.h	[%a15] 112, %d15
	st.h	[%a15] 114, %d15
.LVL156:
	.loc 1 476 0
	st.h	[%a2] 116, %d15
	.loc 1 477 0
	st.h	[%a15] 116, %d15
.LVL157:
.L101:
	movh.a	%a15, hi:FaultTableFuncTypeCounter1+93
	mov.d	%d2, %a15
.LBE299:
.LBE298:
.LBB301:
.LBB302:
	.loc 1 485 0
	mov	%d0, 60
	addi	%d7, %d2, lo:FaultTableFuncTypeCounter1+93
	rsub	%d15, %d7, 0
	mov.a	%a2, %d7
	and	%d15, %d15, 3
	mov	%d2, 60
	mov	%d5, 93
	mov	%d6, 93
	mov	%d3, %d0
	mov	%d1, 15
	lea	%a15, [%a2] -93
	jz	%d15, .L103
.LVL158:
	.loc 1 487 0
	mov	%d2, 0
	st.b	[%a15] 93, %d2
.LVL159:
	mov	%d3, 59
	.loc 1 485 0
	mov	%d6, 94
	mov	%d5, 94
	jeq	%d15, 1, .L104
	.loc 1 487 0
	st.b	[%a15] 94, %d2
.LVL160:
	mov	%d3, 58
	.loc 1 485 0
	mov	%d6, 95
	mov	%d5, 95
	jne	%d15, 3, .L104
	.loc 1 487 0
	st.b	[%a15] 95, %d2
.LVL161:
	mov	%d3, 57
	.loc 1 485 0
	mov	%d6, 96
	mov	%d5, 96
.LVL162:
.L104:
	rsub	%d0, %d15, 60
	mov	%d2, 56
	mov	%d1, 14
.L103:
	addi	%d15, %d15, 93
	addsc.a	%a2, %a15, %d15, 0
	.loc 1 487 0
	mov	%d15, 0
	st.w	[%a2]0, %d15
	st.w	[%a2] 4, %d15
	st.w	[%a2] 8, %d15
	st.w	[%a2] 12, %d15
	st.w	[%a2] 16, %d15
	st.w	[%a2] 20, %d15
	st.w	[%a2] 24, %d15
	st.w	[%a2] 28, %d15
	st.w	[%a2] 32, %d15
	st.w	[%a2] 36, %d15
	st.w	[%a2] 40, %d15
	st.w	[%a2] 44, %d15
	st.w	[%a2] 48, %d15
	st.w	[%a2] 52, %d15
	ne	%d1, %d1, 15
	jnz	%d1, .L105
	st.w	[%a2] 56, %d15
.L105:
	add	%d6, %d2
	add	%d5, %d2
	sub	%d3, %d2
	jeq	%d0, %d2, .L106
.LVL163:
	addsc.a	%a2, %a15, %d6, 0
	mov	%d15, 0
	.loc 1 485 0
	addi	%d2, %d5, 1
	.loc 1 487 0
	st.b	[%a2]0, %d15
.LVL164:
	.loc 1 485 0
	extr.u	%d2, %d2, 0, 16
	jeq	%d3, 1, .L106
	.loc 1 487 0
	addsc.a	%a2, %a15, %d2, 0
	.loc 1 485 0
	add	%d5, 2
.LVL165:
	.loc 1 487 0
	st.b	[%a2]0, %d15
.LVL166:
	.loc 1 485 0
	extr.u	%d5, %d5, 0, 16
.LVL167:
	jeq	%d3, 2, .L106
	.loc 1 487 0
	addsc.a	%a15, %a15, %d5, 0
	st.b	[%a15]0, %d15
.L106:
.LVL168:
.LBE302:
.LBE301:
.LBB303:
.LBB304:
	.loc 1 497 0
	movh.a	%a15, hi:FaultFailModCounterTable
	lea	%a15, [%a15] lo:FaultFailModCounterTable
	mov	%d15, 0
	st.b	[%a15] 5, %d15
.LVL169:
	st.b	[%a15] 6, %d15
.LVL170:
	st.b	[%a15] 7, %d15
.LVL171:
	st.b	[%a15] 8, %d15
.LVL172:
	st.b	[%a15] 9, %d15
.LVL173:
	j	.L88
.LVL174:
.L144:
	mov.a	%a3, %d3
	mov.a	%a5, %d2
	lea	%a2, [%a3] -118
.LBE304:
.LBE303:
	.loc 1 521 0
	mov	%d15, 59
	lea	%a15, [%a5] -118
.LBB305:
.LBB306:
	.loc 1 476 0
	mov	%d2, 0
	lea	%a3, 17
.L116:
.LVL175:
	mov.a	%a5, %d15
	add	%d15, 1
.LVL176:
	add.a	%a4, %a5, %a5
	add.a	%a5, %a2, %a4
.LVL177:
	.loc 1 477 0
	add.a	%a4, %a15
	.loc 1 476 0
	st.h	[%a5]0, %d2
	.loc 1 477 0
	st.h	[%a4]0, %d2
.LVL178:
	.loc 1 474 0
	loop	%a3, .L116
	mov	%d15, 59
.LBE306:
.LBE305:
.LBB307:
.LBB271:
	.loc 1 476 0
	mov	%d2, 0
	lea	%a3, 17
.L118:
.LVL179:
	mov.a	%a5, %d15
	add	%d15, 1
.LVL180:
	add.a	%a4, %a5, %a5
	add.a	%a5, %a2, %a4
.LVL181:
	.loc 1 477 0
	add.a	%a4, %a15
	.loc 1 476 0
	st.h	[%a5]0, %d2
	.loc 1 477 0
	st.h	[%a4]0, %d2
.LVL182:
	.loc 1 474 0
	loop	%a3, .L118
	j	.L117
.L140:
.LBE271:
.LBE307:
	.loc 1 521 0
	mov	%d15, 0
.LBB308:
.LBB309:
	.loc 1 476 0
	mov	%d2, 0
	lea	%a3, 17
.L108:
.LVL183:
	mov.a	%a5, %d15
	add	%d15, 1
.LVL184:
	add.a	%a4, %a5, %a5
	add.a	%a5, %a2, %a4
.LVL185:
	.loc 1 477 0
	add.a	%a4, %a15
	.loc 1 476 0
	st.h	[%a5]0, %d2
	.loc 1 477 0
	st.h	[%a4]0, %d2
.LVL186:
	.loc 1 474 0
	loop	%a3, .L108
	mov	%d15, 0
.LBE309:
.LBE308:
.LBB310:
.LBB264:
	.loc 1 476 0
	mov	%d2, 0
	lea	%a3, 17
.L110:
.LVL187:
	mov.a	%a5, %d15
	add	%d15, 1
.LVL188:
	add.a	%a4, %a5, %a5
	add.a	%a5, %a2, %a4
.LVL189:
	.loc 1 477 0
	add.a	%a4, %a15
	.loc 1 476 0
	st.h	[%a5]0, %d2
	.loc 1 477 0
	st.h	[%a4]0, %d2
.LVL190:
	.loc 1 474 0
	loop	%a3, .L110
	j	.L109
.L136:
	mov.a	%a3, %d3
	mov.a	%a5, %d2
	lea	%a2, [%a3] -76
.LBE264:
.LBE310:
	.loc 1 521 0
	mov	%d15, 38
	lea	%a15, [%a5] -76
.LBB311:
.LBB312:
	.loc 1 476 0
	mov	%d2, 0
	lea	%a3, 20
.L100:
.LVL191:
	mov.a	%a5, %d15
	add	%d15, 1
.LVL192:
	add.a	%a4, %a5, %a5
	add.a	%a5, %a2, %a4
.LVL193:
	.loc 1 477 0
	add.a	%a4, %a15
	.loc 1 476 0
	st.h	[%a5]0, %d2
	.loc 1 477 0
	st.h	[%a4]0, %d2
.LVL194:
	.loc 1 474 0
	loop	%a3, .L100
	mov	%d15, 38
.LBE312:
.LBE311:
.LBB313:
.LBB300:
	.loc 1 476 0
	mov	%d2, 0
	lea	%a3, 20
.L102:
.LVL195:
	mov.a	%a5, %d15
	add	%d15, 1
.LVL196:
	add.a	%a4, %a5, %a5
	add.a	%a5, %a2, %a4
.LVL197:
	.loc 1 477 0
	add.a	%a4, %a15
	.loc 1 476 0
	st.h	[%a5]0, %d2
	.loc 1 477 0
	st.h	[%a4]0, %d2
.LVL198:
	.loc 1 474 0
	loop	%a3, .L102
	j	.L101
.L135:
	mov.a	%a3, %d3
	mov.a	%a5, %d2
	lea	%a2, [%a3] -36
.LBE300:
.LBE313:
	.loc 1 521 0
	mov	%d15, 18
	lea	%a15, [%a5] -36
.LBB314:
.LBB285:
	.loc 1 476 0
	mov	%d2, 0
	lea	%a3, 19
.L95:
.LVL199:
	mov.a	%a5, %d15
	add	%d15, 1
.LVL200:
	add.a	%a4, %a5, %a5
	add.a	%a5, %a2, %a4
.LVL201:
	.loc 1 477 0
	add.a	%a4, %a15
	.loc 1 476 0
	st.h	[%a5]0, %d2
	.loc 1 477 0
	st.h	[%a4]0, %d2
.LVL202:
	.loc 1 474 0
	loop	%a3, .L95
	j	.L96
.L124:
.LVL203:
.LBE285:
.LBE314:
.LBB315:
.LBB278:
	.loc 1 476 0
	mov	%d15, 0
	.loc 1 477 0
	mov.a	%a15, %d2
	.loc 1 476 0
	st.h	[%a2+]-154, %d15
	.loc 1 477 0
	st.h	[%a15+]-154, %d15
.LVL204:
	.loc 1 476 0
	st.h	[%a2] 156, %d15
	st.h	[%a2] 158, %d15
	st.h	[%a2] 160, %d15
	st.h	[%a2] 162, %d15
	st.h	[%a2] 164, %d15
	st.h	[%a2] 166, %d15
	st.h	[%a2] 168, %d15
	st.h	[%a2] 170, %d15
	st.h	[%a2] 172, %d15
	.loc 1 477 0
	st.h	[%a15] 172, %d15
	st.h	[%a15] 156, %d15
.LVL205:
	st.h	[%a15] 158, %d15
.LVL206:
	st.h	[%a15] 160, %d15
.LVL207:
	st.h	[%a15] 162, %d15
.LVL208:
	st.h	[%a15] 164, %d15
.LVL209:
	st.h	[%a15] 166, %d15
.LVL210:
	st.h	[%a15] 168, %d15
.LVL211:
	st.h	[%a15] 170, %d15
.LVL212:
	.loc 1 476 0
	st.h	[%a2] 174, %d15
	.loc 1 477 0
	st.h	[%a15] 174, %d15
.LVL213:
	j	.L125
.LBE278:
.LBE315:
.LFE8:
	.size	FaultClear, .-FaultClear
.section .text.FaultManualErase,"ax",@progbits
	.align 1
	.global	FaultManualErase
	.type	FaultManualErase, @function
FaultManualErase:
.LFB9:
	.loc 1 599 0
.LVL214:
	.loc 1 604 0
	movh.a	%a2, hi:FaultEraseRequest
	ld.hu	%d2, [%a2] lo:FaultEraseRequest
	mov	%d15, 21930
	movh.a	%a15, hi:FaultEraseRequestC
	jeq	%d2, %d15, .L192
	.loc 1 604 0 is_stmt 0 discriminator 1
	ld.hu	%d2, [%a15] lo:FaultEraseRequestC
	jeq	%d2, %d15, .L192
	movh.a	%a3, hi:DSM_DtcSavedFreezeFrameNvm
	ld.w	%d2, [%a3] lo:DSM_DtcSavedFreezeFrameNvm
	lea	%a15, [%a3] lo:DSM_DtcSavedFreezeFrameNvm
.LVL215:
.L230:
	.loc 1 624 0 is_stmt 1
	movh.a	%a4, hi:DSM_DtcNumber
	ld.w	%d15, [%a15] 228
	lea	%a2, [%a4] lo:DSM_DtcNumber
	st.w	[%a4] lo:DSM_DtcNumber, %d2
	st.w	[%a2] 4, %d15
.LVL216:
	ld.w	%d2, [%a15] 456
	ld.w	%d15, [%a15] 684
	st.w	[%a2] 8, %d2
.LVL217:
	st.w	[%a2] 12, %d15
.LVL218:
	ld.w	%d2, [%a15] 912
	ld.w	%d15, [%a15] 1140
	st.w	[%a2] 16, %d2
.LVL219:
	st.w	[%a2] 20, %d15
.LVL220:
	ld.w	%d2, [%a15] 1368
	ld.w	%d15, [%a15] 1596
	st.w	[%a2] 24, %d2
.LVL221:
	st.w	[%a2] 28, %d15
.LVL222:
	ld.w	%d2, [%a15] 1824
	ld.w	%d15, [%a15] 2052
	st.w	[%a2] 32, %d2
.LVL223:
	st.w	[%a2] 36, %d15
	ret
.LVL224:
.L192:
	.loc 1 607 0
	mov	%d15, 0
	.loc 1 608 0
	st.h	[%a15] lo:FaultEraseRequestC, %d15
.LVL225:
	movh.a	%a15, hi:FaultFunctionTypeLoggedArray+36
	.loc 1 607 0
	st.h	[%a2] lo:FaultEraseRequest, %d15
	mov.d	%d15, %a15
	movh.a	%a2, hi:FaultFunctionTypeDetectedArray+36
	addi	%d2, %d15, lo:FaultFunctionTypeLoggedArray+36
	mov.d	%d15, %a2
	addi	%d3, %d15, lo:FaultFunctionTypeDetectedArray+36
	or	%d15, %d2, %d3
	and	%d15, %d15, 3
	jnz	%d15, .L295
.LVL226:
.LBB536:
.LBB537:
.LBB538:
.LBB539:
	.loc 1 476 0
	mov.a	%a2, %d3
	.loc 1 477 0
	mov.a	%a15, %d2
	.loc 1 476 0
	st.h	[%a2+]-36, %d15
	.loc 1 477 0
	st.h	[%a15+]-36, %d15
	.loc 1 476 0
	st.h	[%a2] 38, %d15
	.loc 1 477 0
	st.h	[%a15] 38, %d15
	.loc 1 476 0
	st.h	[%a2] 40, %d15
	st.h	[%a2] 42, %d15
	.loc 1 477 0
	st.h	[%a15] 40, %d15
	st.h	[%a15] 42, %d15
	.loc 1 476 0
	st.h	[%a2] 44, %d15
	st.h	[%a2] 46, %d15
	.loc 1 477 0
	st.h	[%a15] 44, %d15
	st.h	[%a15] 46, %d15
	.loc 1 476 0
	st.h	[%a2] 48, %d15
	st.h	[%a2] 50, %d15
	.loc 1 477 0
	st.h	[%a15] 48, %d15
	st.h	[%a15] 50, %d15
	.loc 1 476 0
	st.h	[%a2] 52, %d15
	st.h	[%a2] 54, %d15
	.loc 1 477 0
	st.h	[%a15] 52, %d15
	st.h	[%a15] 54, %d15
	.loc 1 476 0
	st.h	[%a2] 56, %d15
	st.h	[%a2] 58, %d15
	.loc 1 477 0
	st.h	[%a15] 56, %d15
	st.h	[%a15] 58, %d15
	.loc 1 476 0
	st.h	[%a2] 60, %d15
	st.h	[%a2] 62, %d15
	.loc 1 477 0
	st.h	[%a15] 60, %d15
	st.h	[%a15] 62, %d15
	.loc 1 476 0
	st.h	[%a2] 64, %d15
	st.h	[%a2] 66, %d15
	.loc 1 477 0
	st.h	[%a15] 64, %d15
	st.h	[%a15] 66, %d15
	.loc 1 476 0
	st.h	[%a2] 68, %d15
	st.h	[%a2] 70, %d15
	movh	%d8, hi:FaultFunctionTypeDetectedArray
	.loc 1 477 0
	st.h	[%a15] 68, %d15
	st.h	[%a15] 70, %d15
	.loc 1 476 0
	st.h	[%a2] 72, %d15
	st.h	[%a2] 74, %d15
	.loc 1 477 0
	st.h	[%a15] 72, %d15
	st.h	[%a15] 74, %d15
	movh.a	%a14, hi:FaultFunctionTypeLoggedArray
.L194:
.LVL227:
	movh.a	%a3, hi:FaultTableFuncTypeCounter1+41
	mov.d	%d2, %a3
.LBE539:
.LBE538:
.LBB541:
.LBB542:
	.loc 1 476 0
	mov	%d15, 0
	addi	%d7, %d2, lo:FaultTableFuncTypeCounter1+41
	rsub	%d2, %d7, 0
	mov.a	%a4, %d7
	.loc 1 477 0
	mov	%d3, 52
	.loc 1 476 0
	st.h	[%a2] 176, %d15
	.loc 1 477 0
	st.h	[%a15] 176, %d15
.LVL228:
	and	%d2, %d2, 3
	mov	%d1, 13
	mov	%d0, %d3
	mov	%d6, %d3
	mov	%d4, 41
	mov	%d5, 41
	lea	%a3, [%a4] -41
	jz	%d2, .L232
.LBE542:
.LBE541:
.LBB543:
.LBB544:
	.loc 1 487 0
	st.b	[%a3] 41, %d15
.LVL229:
	mov	%d6, 51
	.loc 1 485 0
	mov	%d4, 42
	mov	%d5, 42
	jeq	%d2, 1, .L233
	.loc 1 487 0
	st.b	[%a3] 42, %d15
.LVL230:
	mov	%d6, 50
	.loc 1 485 0
	mov	%d4, 43
	mov	%d5, 43
	jne	%d2, 3, .L233
	.loc 1 487 0
	st.b	[%a3] 43, %d15
.LVL231:
	mov	%d6, 49
	.loc 1 485 0
	mov	%d4, 44
	mov	%d5, 44
.LVL232:
.L233:
	rsub	%d0, %d2, 52
	mov	%d3, 48
	mov	%d1, 12
.L232:
	addi	%d2, %d2, 41
	addsc.a	%a4, %a3, %d2, 0
	.loc 1 487 0
	mov	%d15, 0
	st.w	[%a4]0, %d15
	st.w	[%a4] 4, %d15
	st.w	[%a4] 8, %d15
	st.w	[%a4] 12, %d15
	st.w	[%a4] 16, %d15
	st.w	[%a4] 20, %d15
	st.w	[%a4] 24, %d15
	st.w	[%a4] 28, %d15
	st.w	[%a4] 32, %d15
	st.w	[%a4] 36, %d15
	st.w	[%a4] 40, %d15
	st.w	[%a4] 44, %d15
	eq	%d1, %d1, 13
	jz	%d1, .L195
	st.w	[%a4] 48, %d15
.L195:
	add	%d4, %d3
	add	%d5, %d3
	sub	%d6, %d3
	jeq	%d0, %d3, .L196
.LVL233:
	addsc.a	%a4, %a3, %d4, 0
	mov	%d15, 0
	.loc 1 485 0
	addi	%d2, %d5, 1
	.loc 1 487 0
	st.b	[%a4]0, %d15
.LVL234:
	.loc 1 485 0
	extr.u	%d2, %d2, 0, 16
	jeq	%d6, 1, .L196
	.loc 1 487 0
	addsc.a	%a4, %a3, %d2, 0
	.loc 1 485 0
	add	%d5, 2
.LVL235:
	.loc 1 487 0
	st.b	[%a4]0, %d15
.LVL236:
	.loc 1 485 0
	extr.u	%d5, %d5, 0, 16
.LVL237:
	jeq	%d6, 2, .L196
	.loc 1 487 0
	addsc.a	%a4, %a3, %d5, 0
	st.b	[%a4]0, %d15
.L196:
.LVL238:
.LBE544:
.LBE543:
.LBB545:
.LBB546:
	mov	%d15, 0
.LBE546:
.LBE545:
.LBB548:
.LBB549:
	.loc 1 497 0
	movh.a	%a5, hi:FaultFailModCounterTable
.LBE549:
.LBE548:
	.loc 1 580 0
	movh.a	%a6, hi:FaultFailureLevel
.LBB552:
.LBB550:
	.loc 1 497 0
	lea	%a4, [%a5] lo:FaultFailModCounterTable
.LBE550:
.LBE552:
	.loc 1 580 0
	st.b	[%a6] lo:FaultFailureLevel, %d15
	.loc 1 581 0
	movh.a	%a7, hi:DSM_FaultFailureLevel
.LBB553:
.LBB547:
	.loc 1 487 0
	st.b	[%a3] 282, %d15
.LVL239:
	st.b	[%a3] 283, %d15
.LVL240:
	st.b	[%a3] 284, %d15
.LVL241:
	st.b	[%a3] 285, %d15
.LVL242:
	st.b	[%a3] 286, %d15
.LVL243:
	st.b	[%a3] 287, %d15
.LVL244:
	st.b	[%a3] 288, %d15
.LVL245:
	st.b	[%a3] 289, %d15
.LVL246:
.LBE547:
.LBE553:
.LBB554:
.LBB551:
	.loc 1 497 0
	st.b	[%a5] lo:FaultFailModCounterTable, %d15
.LVL247:
	st.b	[%a4] 1, %d15
.LVL248:
	st.b	[%a4] 2, %d15
.LVL249:
	st.b	[%a4] 3, %d15
.LVL250:
	st.b	[%a4] 4, %d15
.LVL251:
.LBE551:
.LBE554:
	.loc 1 581 0
	st.b	[%a7] lo:DSM_FaultFailureLevel, %d15
.LVL252:
	movh	%d15, hi:FaultFunctionTypeDetectedArray+76
	addi	%d2, %d15, lo:FaultFunctionTypeDetectedArray+76
	movh	%d15, hi:FaultFunctionTypeLoggedArray+76
	addi	%d15, %d15, lo:FaultFunctionTypeLoggedArray+76
	or	%d15, %d2
	and	%d15, %d15, 3
	jnz	%d15, .L296
.LVL253:
.LBE537:
.LBE536:
.LBB558:
.LBB559:
.LBB560:
.LBB561:
	.loc 1 476 0
	st.h	[%a2] 76, %d15
	st.h	[%a2] 78, %d15
	.loc 1 477 0
	st.h	[%a15] 76, %d15
	st.h	[%a15] 78, %d15
	.loc 1 476 0
	st.h	[%a2] 80, %d15
	st.h	[%a2] 82, %d15
	.loc 1 477 0
	st.h	[%a15] 80, %d15
	st.h	[%a15] 82, %d15
	.loc 1 476 0
	st.h	[%a2] 84, %d15
	st.h	[%a2] 86, %d15
	.loc 1 477 0
	st.h	[%a15] 84, %d15
	st.h	[%a15] 86, %d15
	.loc 1 476 0
	st.h	[%a2] 88, %d15
	st.h	[%a2] 90, %d15
	.loc 1 477 0
	st.h	[%a15] 88, %d15
	st.h	[%a15] 90, %d15
	.loc 1 476 0
	st.h	[%a2] 92, %d15
	st.h	[%a2] 94, %d15
	.loc 1 477 0
	st.h	[%a15] 92, %d15
	st.h	[%a15] 94, %d15
	.loc 1 476 0
	st.h	[%a2] 96, %d15
	st.h	[%a2] 98, %d15
	.loc 1 477 0
	st.h	[%a15] 96, %d15
	st.h	[%a15] 98, %d15
	.loc 1 476 0
	st.h	[%a2] 100, %d15
	st.h	[%a2] 102, %d15
	.loc 1 477 0
	st.h	[%a15] 100, %d15
	st.h	[%a15] 102, %d15
	.loc 1 476 0
	st.h	[%a2] 104, %d15
	st.h	[%a2] 106, %d15
	.loc 1 477 0
	st.h	[%a15] 104, %d15
	st.h	[%a15] 106, %d15
	.loc 1 476 0
	st.h	[%a2] 108, %d15
	st.h	[%a2] 110, %d15
	.loc 1 477 0
	st.h	[%a15] 108, %d15
	st.h	[%a15] 110, %d15
	.loc 1 476 0
	st.h	[%a2] 112, %d15
	st.h	[%a2] 114, %d15
	.loc 1 477 0
	st.h	[%a15] 112, %d15
	st.h	[%a15] 114, %d15
.LVL254:
	.loc 1 476 0
	st.h	[%a2] 116, %d15
	.loc 1 477 0
	st.h	[%a15] 116, %d15
.LVL255:
.L201:
	movh	%d15, hi:FaultTableFuncTypeCounter1+93
	addi	%d15, %d15, lo:FaultTableFuncTypeCounter1+93
	rsub	%d15
.LBE561:
.LBE560:
.LBB563:
.LBB564:
	.loc 1 485 0
	mov	%d2, 60
	and	%d15, %d15, 3
	mov	%d7, 15
	mov	%d6, %d2
	mov	%d3, %d2
	mov	%d5, 93
	mov	%d4, 93
	jz	%d15, .L202
.LVL256:
	.loc 1 487 0
	mov	%d2, 0
	st.b	[%a3] 93, %d2
.LVL257:
	mov	%d3, 59
	.loc 1 485 0
	mov	%d5, 94
	mov	%d4, 94
	jeq	%d15, 1, .L203
	.loc 1 487 0
	st.b	[%a3] 94, %d2
.LVL258:
	mov	%d3, 58
	.loc 1 485 0
	mov	%d5, 95
	mov	%d4, 95
	jne	%d15, 3, .L203
	.loc 1 487 0
	st.b	[%a3] 95, %d2
.LVL259:
	mov	%d3, 57
	.loc 1 485 0
	mov	%d5, 96
	mov	%d4, 96
.LVL260:
.L203:
	rsub	%d6, %d15, 60
	mov	%d2, 56
	mov	%d7, 14
.L202:
	addi	%d15, %d15, 93
	addsc.a	%a5, %a3, %d15, 0
	.loc 1 487 0
	mov	%d15, 0
	st.w	[%a5]0, %d15
	st.w	[%a5] 4, %d15
	st.w	[%a5] 8, %d15
	st.w	[%a5] 12, %d15
	st.w	[%a5] 16, %d15
	st.w	[%a5] 20, %d15
	st.w	[%a5] 24, %d15
	st.w	[%a5] 28, %d15
	st.w	[%a5] 32, %d15
	st.w	[%a5] 36, %d15
	st.w	[%a5] 40, %d15
	st.w	[%a5] 44, %d15
	st.w	[%a5] 48, %d15
	st.w	[%a5] 52, %d15
	ne	%d7, %d7, 15
	jnz	%d7, .L204
	st.w	[%a5] 56, %d15
.L204:
	add	%d5, %d2
	add	%d4, %d2
	sub	%d3, %d2
	jeq	%d6, %d2, .L205
.LVL261:
	addsc.a	%a5, %a3, %d5, 0
	mov	%d15, 0
	.loc 1 485 0
	addi	%d2, %d4, 1
	.loc 1 487 0
	st.b	[%a5]0, %d15
.LVL262:
	.loc 1 485 0
	extr.u	%d2, %d2, 0, 16
	jeq	%d3, 1, .L205
	.loc 1 487 0
	addsc.a	%a5, %a3, %d2, 0
	.loc 1 485 0
	add	%d4, 2
.LVL263:
	.loc 1 487 0
	st.b	[%a5]0, %d15
.LVL264:
	.loc 1 485 0
	extr.u	%d4, %d4, 0, 16
.LVL265:
	jeq	%d3, 2, .L205
	.loc 1 487 0
	addsc.a	%a5, %a3, %d4, 0
	st.b	[%a5]0, %d15
.L205:
.LVL266:
.LBE564:
.LBE563:
.LBB565:
.LBB566:
	.loc 1 497 0
	mov	%d15, 0
.LBE566:
.LBE565:
	.loc 1 580 0
	st.b	[%a6] lo:FaultFailureLevel, %d15
	.loc 1 581 0
	lea	%a7, [%a7] lo:DSM_FaultFailureLevel
.LBB568:
.LBB567:
	.loc 1 497 0
	st.b	[%a4] 5, %d15
.LVL267:
	st.b	[%a4] 6, %d15
.LVL268:
	st.b	[%a4] 7, %d15
.LVL269:
	st.b	[%a4] 8, %d15
.LVL270:
	st.b	[%a4] 9, %d15
.LVL271:
.LBE567:
.LBE568:
	.loc 1 581 0
	st.b	[%a7] 1, %d15
.LVL272:
	mov.d	%d2, %a2
	mov.d	%d15, %a15
	or	%d15, %d2
	and	%d15, %d15, 3
	jnz	%d15, .L297
.LVL273:
.LBE559:
.LBE558:
.LBB574:
.LBB575:
.LBB576:
.LBB577:
	.loc 1 476 0
	mov.a	%a5, %d8
	.loc 1 477 0
	st.h	[%a14] lo:FaultFunctionTypeLoggedArray, %d15
	.loc 1 476 0
	st.h	[%a5] lo:FaultFunctionTypeDetectedArray, %d15
	st.h	[%a2] 2, %d15
	.loc 1 477 0
	st.h	[%a15] 2, %d15
	.loc 1 476 0
	st.h	[%a2] 4, %d15
	st.h	[%a2] 6, %d15
	.loc 1 477 0
	st.h	[%a15] 4, %d15
	st.h	[%a15] 6, %d15
	.loc 1 476 0
	st.h	[%a2] 8, %d15
	st.h	[%a2] 10, %d15
	.loc 1 477 0
	st.h	[%a15] 8, %d15
	st.h	[%a15] 10, %d15
	.loc 1 476 0
	st.h	[%a2] 12, %d15
	st.h	[%a2] 14, %d15
	.loc 1 477 0
	st.h	[%a15] 12, %d15
	st.h	[%a15] 14, %d15
	.loc 1 476 0
	st.h	[%a2] 16, %d15
	st.h	[%a2] 18, %d15
	.loc 1 477 0
	st.h	[%a15] 16, %d15
	st.h	[%a15] 18, %d15
	.loc 1 476 0
	st.h	[%a2] 20, %d15
	st.h	[%a2] 22, %d15
	.loc 1 477 0
	st.h	[%a15] 20, %d15
	st.h	[%a15] 22, %d15
	.loc 1 476 0
	st.h	[%a2] 24, %d15
	st.h	[%a2] 26, %d15
	.loc 1 477 0
	st.h	[%a15] 24, %d15
	st.h	[%a15] 26, %d15
	.loc 1 476 0
	st.h	[%a2] 28, %d15
	st.h	[%a2] 30, %d15
	.loc 1 477 0
	st.h	[%a15] 28, %d15
	st.h	[%a15] 30, %d15
	.loc 1 476 0
	st.h	[%a2] 32, %d15
	st.h	[%a2] 34, %d15
	.loc 1 477 0
	st.h	[%a15] 32, %d15
	st.h	[%a15] 34, %d15
.LVL274:
.L209:
	mov.d	%d15, %a3
.LBE577:
.LBE576:
.LBB579:
.LBB580:
	.loc 1 485 0
	mov	%d2, 40
	rsub	%d15
	and	%d15, %d15, 3
	mov	%d3, 10
	mov	%d5, 41
	mov	%d7, 41
	mov	%d4, 0
	mov	%d6, 0
	jz	%d15, .L210
.LVL275:
	.loc 1 487 0
	movh.a	%a5, hi:FaultTableFuncTypeCounter1
	st.b	[%a5] lo:FaultTableFuncTypeCounter1, %d4
.LVL276:
	mov	%d2, 0
	mov	%d5, 40
	.loc 1 485 0
	mov	%d4, 1
	mov	%d6, 1
	jeq	%d15, 1, .L211
	.loc 1 487 0
	st.b	[%a3] 1, %d2
.LVL277:
	mov	%d5, 39
	.loc 1 485 0
	mov	%d4, 2
	mov	%d6, 2
	jne	%d15, 3, .L211
	.loc 1 487 0
	st.b	[%a3] 2, %d2
.LVL278:
	mov	%d5, 38
	.loc 1 485 0
	mov	%d4, 3
	mov	%d6, 3
.LVL279:
.L211:
	rsub	%d3, %d15, 37
	sh	%d3, -2
	add	%d3, 1
	rsub	%d7, %d15, 41
	sh	%d2, %d3, 2
.L210:
	addsc.a	%a5, %a3, %d15, 0
	.loc 1 487 0
	mov	%d15, 0
	st.w	[%a5]0, %d15
	st.w	[%a5] 4, %d15
	st.w	[%a5] 8, %d15
	st.w	[%a5] 12, %d15
	st.w	[%a5] 16, %d15
	st.w	[%a5] 20, %d15
	st.w	[%a5] 24, %d15
	st.w	[%a5] 28, %d15
	st.w	[%a5] 32, %d15
	ne	%d3, %d3, 10
	jnz	%d3, .L212
	st.w	[%a5] 36, %d15
.L212:
	add	%d4, %d2
	add	%d6, %d2
	extr.u	%d4, %d4, 0, 16
	sub	%d5, %d2
	jeq	%d7, %d2, .L213
	addsc.a	%a5, %a3, %d6, 0
	mov	%d15, 0
	.loc 1 485 0
	addi	%d2, %d4, 1
	.loc 1 487 0
	st.b	[%a5]0, %d15
	.loc 1 485 0
	extr.u	%d2, %d2, 0, 16
	jeq	%d5, 1, .L213
	.loc 1 487 0
	addsc.a	%a5, %a3, %d2, 0
	.loc 1 485 0
	add	%d4, 2
	.loc 1 487 0
	st.b	[%a5]0, %d15
	.loc 1 485 0
	extr.u	%d4, %d4, 0, 16
	jeq	%d5, 2, .L213
	.loc 1 487 0
	addsc.a	%a5, %a3, %d4, 0
	st.b	[%a5]0, %d15
.L213:
.LVL280:
.LBE580:
.LBE579:
.LBB581:
.LBB582:
	.loc 1 497 0
	mov	%d15, 0
.LBE582:
.LBE581:
	.loc 1 580 0
	st.b	[%a6] lo:FaultFailureLevel, %d15
.LBB584:
.LBB583:
	.loc 1 497 0
	st.b	[%a4] 10, %d15
.LVL281:
	st.b	[%a4] 11, %d15
.LVL282:
	st.b	[%a4] 12, %d15
.LVL283:
	st.b	[%a4] 13, %d15
.LVL284:
	st.b	[%a4] 14, %d15
.LVL285:
.LBE583:
.LBE584:
	.loc 1 581 0
	st.b	[%a7] 2, %d15
.LVL286:
	movh	%d15, hi:FaultFunctionTypeDetectedArray+118
	addi	%d2, %d15, lo:FaultFunctionTypeDetectedArray+118
	movh	%d15, hi:FaultFunctionTypeLoggedArray+118
	addi	%d15, %d15, lo:FaultFunctionTypeLoggedArray+118
	or	%d15, %d2
	and	%d15, %d15, 3
	jnz	%d15, .L298
.LVL287:
.LBE575:
.LBE574:
.LBB590:
.LBB591:
.LBB592:
.LBB593:
	.loc 1 476 0
	st.h	[%a2] 118, %d15
	st.h	[%a2] 120, %d15
	.loc 1 477 0
	st.h	[%a15] 118, %d15
	st.h	[%a15] 120, %d15
	.loc 1 476 0
	st.h	[%a2] 122, %d15
	st.h	[%a2] 124, %d15
	.loc 1 477 0
	st.h	[%a15] 122, %d15
	st.h	[%a15] 124, %d15
	.loc 1 476 0
	st.h	[%a2] 126, %d15
	st.h	[%a2] 128, %d15
	.loc 1 477 0
	st.h	[%a15] 126, %d15
	st.h	[%a15] 128, %d15
	.loc 1 476 0
	st.h	[%a2] 130, %d15
	st.h	[%a2] 132, %d15
	.loc 1 477 0
	st.h	[%a15] 130, %d15
	st.h	[%a15] 132, %d15
	.loc 1 476 0
	st.h	[%a2] 134, %d15
	st.h	[%a2] 136, %d15
	.loc 1 477 0
	st.h	[%a15] 134, %d15
	st.h	[%a15] 136, %d15
	.loc 1 476 0
	st.h	[%a2] 138, %d15
	st.h	[%a2] 140, %d15
	.loc 1 477 0
	st.h	[%a15] 138, %d15
	st.h	[%a15] 140, %d15
	.loc 1 476 0
	st.h	[%a2] 142, %d15
	st.h	[%a2] 144, %d15
	.loc 1 477 0
	st.h	[%a15] 142, %d15
	st.h	[%a15] 144, %d15
	.loc 1 476 0
	st.h	[%a2] 146, %d15
	st.h	[%a2] 148, %d15
	.loc 1 477 0
	st.h	[%a15] 146, %d15
	st.h	[%a15] 148, %d15
	.loc 1 476 0
	st.h	[%a2] 150, %d15
	st.h	[%a2] 152, %d15
	.loc 1 477 0
	st.h	[%a15] 150, %d15
	st.h	[%a15] 152, %d15
.LVL288:
.L217:
	movh	%d15, hi:FaultTableFuncTypeCounter1+153
	addi	%d15, %d15, lo:FaultTableFuncTypeCounter1+153
	rsub	%d15
.LBE593:
.LBE592:
.LBB595:
.LBB596:
	.loc 1 485 0
	mov	%d6, 153
	and	%d15, %d15, 3
	mov	%d2, 40
	mov	%d3, 10
	mov	%d4, 41
	mov	%d7, 41
	mov	%d5, %d6
	jz	%d15, .L218
.LVL289:
	.loc 1 487 0
	mov	%d2, 0
	st.b	[%a3] 153, %d2
.LVL290:
	mov	%d4, 40
	.loc 1 485 0
	mov	%d6, 154
	mov	%d5, 154
	jeq	%d15, 1, .L219
	.loc 1 487 0
	st.b	[%a3] 154, %d2
.LVL291:
	mov	%d4, 39
	.loc 1 485 0
	mov	%d6, 155
	mov	%d5, 155
	jne	%d15, 3, .L219
	.loc 1 487 0
	st.b	[%a3] 155, %d2
.LVL292:
	mov	%d4, 38
	.loc 1 485 0
	mov	%d6, 156
	mov	%d5, 156
.LVL293:
.L219:
	rsub	%d3, %d15, 37
	sh	%d3, -2
	add	%d3, 1
	rsub	%d7, %d15, 41
	sh	%d2, %d3, 2
.L218:
	addi	%d15, %d15, 153
	addsc.a	%a5, %a3, %d15, 0
	.loc 1 487 0
	mov	%d15, 0
	st.w	[%a5]0, %d15
	st.w	[%a5] 4, %d15
	st.w	[%a5] 8, %d15
	st.w	[%a5] 12, %d15
	st.w	[%a5] 16, %d15
	st.w	[%a5] 20, %d15
	st.w	[%a5] 24, %d15
	st.w	[%a5] 28, %d15
	st.w	[%a5] 32, %d15
	ne	%d3, %d3, 10
	jnz	%d3, .L220
	st.w	[%a5] 36, %d15
.L220:
	add	%d5, %d2
	add	%d6, %d2
	extr.u	%d5, %d5, 0, 16
	sub	%d4, %d2
	jeq	%d7, %d2, .L221
	addsc.a	%a5, %a3, %d6, 0
	mov	%d15, 0
	.loc 1 485 0
	addi	%d2, %d5, 1
	.loc 1 487 0
	st.b	[%a5]0, %d15
	.loc 1 485 0
	extr.u	%d2, %d2, 0, 16
	jeq	%d4, 1, .L221
	.loc 1 487 0
	addsc.a	%a5, %a3, %d2, 0
	.loc 1 485 0
	add	%d5, 2
	.loc 1 487 0
	st.b	[%a5]0, %d15
	.loc 1 485 0
	extr.u	%d5, %d5, 0, 16
	jeq	%d4, 2, .L221
	.loc 1 487 0
	addsc.a	%a5, %a3, %d5, 0
	st.b	[%a5]0, %d15
.L221:
.LVL294:
.LBE596:
.LBE595:
.LBB597:
.LBB598:
	.loc 1 497 0
	mov	%d15, 0
.LBE598:
.LBE597:
	.loc 1 580 0
	st.b	[%a6] lo:FaultFailureLevel, %d15
.LBB600:
.LBB599:
	.loc 1 497 0
	st.b	[%a4] 15, %d15
.LVL295:
	st.b	[%a4] 16, %d15
.LVL296:
	st.b	[%a4] 17, %d15
.LVL297:
	st.b	[%a4] 18, %d15
.LVL298:
	st.b	[%a4] 19, %d15
.LVL299:
.LBE599:
.LBE600:
	.loc 1 581 0
	st.b	[%a7] 3, %d15
.LVL300:
	movh	%d15, hi:FaultFunctionTypeDetectedArray+154
	addi	%d2, %d15, lo:FaultFunctionTypeDetectedArray+154
	movh	%d15, hi:FaultFunctionTypeLoggedArray+154
	addi	%d15, %d15, lo:FaultFunctionTypeLoggedArray+154
	or	%d15, %d2
	and	%d15, %d15, 3
	jnz	%d15, .L299
.LVL301:
.LBE591:
.LBE590:
.LBB605:
.LBB606:
.LBB607:
.LBB608:
	.loc 1 476 0
	st.h	[%a2] 154, %d15
	st.h	[%a2] 156, %d15
	st.h	[%a2] 158, %d15
	st.h	[%a2] 160, %d15
	st.h	[%a2] 162, %d15
	st.h	[%a2] 164, %d15
	st.h	[%a2] 166, %d15
	st.h	[%a2] 168, %d15
	st.h	[%a2] 170, %d15
	st.h	[%a2] 172, %d15
	.loc 1 477 0
	st.h	[%a15] 172, %d15
	st.h	[%a15] 154, %d15
	st.h	[%a15] 156, %d15
	st.h	[%a15] 158, %d15
	st.h	[%a15] 160, %d15
	st.h	[%a15] 162, %d15
	st.h	[%a15] 164, %d15
	st.h	[%a15] 166, %d15
	st.h	[%a15] 168, %d15
.LVL302:
	st.h	[%a15] 170, %d15
	.loc 1 476 0
	st.h	[%a2] 174, %d15
	.loc 1 477 0
	st.h	[%a15] 174, %d15
.LVL303:
.L223:
	movh	%d15, hi:FaultTableFuncTypeCounter1+194
	addi	%d15, %d15, lo:FaultTableFuncTypeCounter1+194
	rsub	%d15
.LBE608:
.LBE607:
.LBB610:
.LBB611:
	.loc 1 485 0
	mov	%d0, 88
	and	%d15, %d15, 3
	mov	%d5, 194
	mov	%d6, 194
	mov	%d4, 88
	mov	%d7, 22
	mov	%d2, %d0
	jz	%d15, .L224
.LVL304:
	.loc 1 487 0
	mov	%d2, 0
	st.b	[%a3] 194, %d2
.LVL305:
	mov	%d4, 87
	.loc 1 485 0
	mov	%d6, 195
	mov	%d5, 195
	jeq	%d15, 1, .L225
	.loc 1 487 0
	st.b	[%a3] 195, %d2
.LVL306:
	mov	%d4, 86
	.loc 1 485 0
	mov	%d6, 196
	mov	%d5, 196
	jne	%d15, 3, .L225
	.loc 1 487 0
	st.b	[%a3] 196, %d2
.LVL307:
	mov	%d4, 85
	.loc 1 485 0
	mov	%d6, 197
	mov	%d5, 197
.LVL308:
.L225:
	rsub	%d0, %d15, 88
	mov	%d7, 21
	mov	%d2, 84
.L224:
	addi	%d15, %d15, 194
	addsc.a	%a2, %a3, %d15, 0
	add	%d15, %d7, -1
	sel	%d15, %d7, %d15, 0
	mov.a	%a15, %d15
	.loc 1 487 0
	mov	%d3, 0
.L226:
	st.w	[%a2+]4, %d3
	mov	%d15, 0
	loop	%a15, .L226
	add	%d6, %d2
	add	%d5, %d2
	sub	%d4, %d2
	jeq	%d2, %d0, .L228
.LVL309:
	addsc.a	%a15, %a3, %d6, 0
	.loc 1 485 0
	addi	%d2, %d5, 1
	.loc 1 487 0
	st.b	[%a15]0, %d15
.LVL310:
	.loc 1 485 0
	extr.u	%d2, %d2, 0, 16
	jeq	%d4, 1, .L228
	.loc 1 487 0
	addsc.a	%a15, %a3, %d2, 0
	.loc 1 485 0
	add	%d5, 2
.LVL311:
	.loc 1 487 0
	st.b	[%a15]0, %d15
.LVL312:
	.loc 1 485 0
	extr.u	%d5, %d5, 0, 16
.LVL313:
	jeq	%d4, 2, .L228
	.loc 1 487 0
	addsc.a	%a3, %a3, %d5, 0
	st.b	[%a3]0, %d15
.L228:
.LVL314:
.LBE611:
.LBE610:
.LBB612:
.LBB613:
	.loc 1 497 0
	mov	%d15, 0
.LBE613:
.LBE612:
	.loc 1 580 0
	st.b	[%a6] lo:FaultFailureLevel, %d15
.LBE606:
.LBE605:
	.loc 1 618 0
	movh.a	%a3, hi:DSM_DtcSavedFreezeFrameNvm
	lea	%a15, [%a3] lo:DSM_DtcSavedFreezeFrameNvm
.LBB619:
.LBB617:
.LBB615:
.LBB614:
	.loc 1 497 0
	st.b	[%a4] 20, %d15
.LVL315:
.LBE614:
.LBE615:
	.loc 1 581 0
	st.b	[%a7] 4, %d15
.LBE617:
.LBE619:
	.loc 1 618 0
	mov	%d15, 0
	st.w	[%a3] lo:DSM_DtcSavedFreezeFrameNvm, %d15
.LVL316:
	st.w	[%a15] 228, %d15
.LVL317:
	st.w	[%a15] 456, %d15
.LVL318:
	st.w	[%a15] 684, %d15
.LVL319:
	st.w	[%a15] 912, %d15
.LVL320:
	st.w	[%a15] 1140, %d15
.LVL321:
	st.w	[%a15] 1368, %d15
.LVL322:
	st.w	[%a15] 1596, %d15
.LVL323:
	st.w	[%a15] 1824, %d15
.LVL324:
	st.w	[%a15] 2052, %d15
.LVL325:
	mov	%d2, 0
	j	.L230
.LVL326:
.L295:
	mov.a	%a3, %d3
	mov.a	%a4, %d2
	lea	%a2, [%a3] -36
	.loc 1 608 0
	mov	%d15, 18
	movh	%d8, hi:FaultFunctionTypeDetectedArray
	movh.a	%a14, hi:FaultFunctionTypeLoggedArray
	lea	%a15, [%a4] -36
.LBB620:
.LBB556:
.LBB555:
.LBB540:
	.loc 1 476 0
	mov	%d2, 0
	lea	%a3, 19
.LVL327:
.L193:
	mov.a	%a5, %d15
	add	%d15, 1
.LVL328:
	add.a	%a4, %a5, %a5
	add.a	%a5, %a2, %a4
.LVL329:
	.loc 1 477 0
	add.a	%a4, %a15
	.loc 1 476 0
	st.h	[%a5]0, %d2
	.loc 1 477 0
	st.h	[%a4]0, %d2
.LVL330:
	.loc 1 474 0
	loop	%a3, .L193
	j	.L194
.LVL331:
.L299:
.LBE540:
.LBE555:
.LBE556:
.LBE620:
.LBB621:
.LBB618:
.LBB616:
.LBB609:
	.loc 1 476 0
	mov	%d15, 0
	st.h	[%a2] 154, %d15
	st.h	[%a2] 156, %d15
	st.h	[%a2] 158, %d15
	st.h	[%a2] 160, %d15
	st.h	[%a2] 162, %d15
	st.h	[%a2] 164, %d15
	st.h	[%a2] 166, %d15
	st.h	[%a2] 168, %d15
	st.h	[%a2] 170, %d15
	st.h	[%a2] 172, %d15
	.loc 1 477 0
	st.h	[%a15] 172, %d15
	st.h	[%a15] 154, %d15
.LVL332:
	st.h	[%a15] 156, %d15
.LVL333:
	st.h	[%a15] 158, %d15
.LVL334:
	st.h	[%a15] 160, %d15
.LVL335:
	st.h	[%a15] 162, %d15
.LVL336:
	st.h	[%a15] 164, %d15
.LVL337:
	st.h	[%a15] 166, %d15
.LVL338:
	st.h	[%a15] 168, %d15
.LVL339:
	st.h	[%a15] 170, %d15
.LVL340:
	.loc 1 476 0
	st.h	[%a2] 174, %d15
	.loc 1 477 0
	st.h	[%a15] 174, %d15
.LVL341:
	j	.L223
.LVL342:
.L296:
.LBE609:
.LBE616:
.LBE618:
.LBE621:
.LBB622:
.LBB557:
	.loc 1 581 0
	mov	%d15, 38
.LBE557:
.LBE622:
.LBB623:
.LBB572:
.LBB569:
.LBB570:
	.loc 1 476 0
	mov	%d2, 0
	lea	%a5, 20
.LVL343:
.L199:
	mov.a	%a13, %d15
	add	%d15, 1
.LVL344:
	add.a	%a12, %a13, %a13
	add.a	%a13, %a2, %a12
.LVL345:
	.loc 1 477 0
	add.a	%a12, %a15
	.loc 1 476 0
	st.h	[%a13]0, %d2
	.loc 1 477 0
	st.h	[%a12]0, %d2
.LVL346:
	.loc 1 474 0
	loop	%a5, .L199
	mov	%d15, 38
.LBE570:
.LBE569:
.LBB571:
.LBB562:
	.loc 1 476 0
	mov	%d2, 0
	lea	%a5, 20
.L200:
.LVL347:
	mov.a	%a13, %d15
	add	%d15, 1
.LVL348:
	add.a	%a12, %a13, %a13
	add.a	%a13, %a2, %a12
.LVL349:
	.loc 1 477 0
	add.a	%a12, %a15
	.loc 1 476 0
	st.h	[%a13]0, %d2
	.loc 1 477 0
	st.h	[%a12]0, %d2
.LVL350:
	.loc 1 474 0
	loop	%a5, .L200
	j	.L201
.LVL351:
.L298:
.LBE562:
.LBE571:
.LBE572:
.LBE623:
.LBB624:
.LBB588:
	.loc 1 581 0
	mov	%d15, 59
.LBE588:
.LBE624:
.LBB625:
.LBB604:
.LBB601:
.LBB602:
	.loc 1 476 0
	mov	%d2, 0
	lea	%a5, 17
.LVL352:
.L215:
	mov.a	%a13, %d15
	add	%d15, 1
.LVL353:
	add.a	%a12, %a13, %a13
	add.a	%a13, %a2, %a12
.LVL354:
	.loc 1 477 0
	add.a	%a12, %a15
	.loc 1 476 0
	st.h	[%a13]0, %d2
	.loc 1 477 0
	st.h	[%a12]0, %d2
.LVL355:
	.loc 1 474 0
	loop	%a5, .L215
	mov	%d15, 59
.LBE602:
.LBE601:
.LBB603:
.LBB594:
	.loc 1 476 0
	mov	%d2, 0
	lea	%a5, 17
.L216:
.LVL356:
	mov.a	%a13, %d15
	add	%d15, 1
.LVL357:
	add.a	%a12, %a13, %a13
	add.a	%a13, %a2, %a12
.LVL358:
	.loc 1 477 0
	add.a	%a12, %a15
	.loc 1 476 0
	st.h	[%a13]0, %d2
	.loc 1 477 0
	st.h	[%a12]0, %d2
.LVL359:
	.loc 1 474 0
	loop	%a5, .L216
	j	.L217
.LVL360:
.L297:
.LBE594:
.LBE603:
.LBE604:
.LBE625:
.LBB626:
.LBB573:
	.loc 1 581 0
	mov	%d15, 0
.LBE573:
.LBE626:
.LBB627:
.LBB589:
.LBB585:
.LBB586:
	.loc 1 476 0
	mov	%d2, 0
	lea	%a5, 17
.LVL361:
.L207:
	mov.a	%a13, %d15
	add	%d15, 1
.LVL362:
	add.a	%a12, %a13, %a13
	add.a	%a13, %a2, %a12
.LVL363:
	.loc 1 477 0
	add.a	%a12, %a15
	.loc 1 476 0
	st.h	[%a13]0, %d2
	.loc 1 477 0
	st.h	[%a12]0, %d2
.LVL364:
	.loc 1 474 0
	loop	%a5, .L207
	mov	%d15, 0
.LBE586:
.LBE585:
.LBB587:
.LBB578:
	.loc 1 476 0
	mov	%d2, 0
	lea	%a5, 17
.L208:
.LVL365:
	mov.a	%a13, %d15
	add	%d15, 1
.LVL366:
	add.a	%a12, %a13, %a13
	add.a	%a13, %a2, %a12
.LVL367:
	.loc 1 477 0
	add.a	%a12, %a15
	.loc 1 476 0
	st.h	[%a13]0, %d2
	.loc 1 477 0
	st.h	[%a12]0, %d2
.LVL368:
	.loc 1 474 0
	loop	%a5, .L208
	j	.L209
.LBE578:
.LBE587:
.LBE589:
.LBE627:
.LFE9:
	.size	FaultManualErase, .-FaultManualErase
.section .text.DSM_u8GetUnitFaultLevel,"ax",@progbits
	.align 1
	.global	DSM_u8GetUnitFaultLevel
	.type	DSM_u8GetUnitFaultLevel, @function
DSM_u8GetUnitFaultLevel:
.LFB10:
	.loc 1 639 0
.LVL369:
	.loc 1 643 0
	movh.a	%a2, hi:DSM_FaultFailureLevel
	lea	%a15, [%a2] lo:DSM_FaultFailureLevel
	ld.bu	%d15, [%a2] lo:DSM_FaultFailureLevel
.LVL370:
	.loc 1 646 0
	ld.bu	%d2, [%a15] 1
	jge.u	%d15, %d2, .L301
	.loc 1 648 0
	ld.bu	%d15, [%a15] 1
.LVL371:
.L301:
	.loc 1 646 0
	ld.bu	%d2, [%a15] 2
	jge.u	%d15, %d2, .L302
	.loc 1 648 0
	ld.bu	%d15, [%a15] 2
.LVL372:
.L302:
	.loc 1 646 0
	ld.bu	%d2, [%a15] 3
	jge.u	%d15, %d2, .L303
	.loc 1 648 0
	ld.bu	%d15, [%a15] 3
.LVL373:
.L303:
	.loc 1 646 0
	ld.bu	%d2, [%a15] 4
	jge.u	%d15, %d2, .L304
	.loc 1 648 0
	ld.bu	%d15, [%a15] 4
.LVL374:
.L304:
	.loc 1 652 0 discriminator 2
	st.b	[%a15] 5, %d15
	.loc 1 654 0 discriminator 2
	addsc.a	%a15, %a15, %d4, 0
	.loc 1 655 0 discriminator 2
	ld.bu	%d2, [%a15]0
	ret
.LFE10:
	.size	DSM_u8GetUnitFaultLevel, .-DSM_u8GetUnitFaultLevel
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
	.uaword	.LFB1
	.uaword	.LFE1-.LFB1
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB2
	.uaword	.LFE2-.LFB2
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB3
	.uaword	.LFE3-.LFB3
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB4
	.uaword	.LFE4-.LFB4
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB5
	.uaword	.LFE5-.LFB5
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB6
	.uaword	.LFE6-.LFB6
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB7
	.uaword	.LFE7-.LFB7
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB8
	.uaword	.LFE8-.LFB8
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB9
	.uaword	.LFE9-.LFB9
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB10
	.uaword	.LFE10-.LFB10
	.align 2
.LEFDE18:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\DSM_Typ.h"
	.file 4 "bswcdd\\Dsm\\DSM_Nvm.h"
	.file 5 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\DSM.h"
	.file 6 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fault\\FAULT_Data.h"
	.file 7 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\DSM_L.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x1789
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\Dsm\\DSM_Bsl.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x250
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
	.uleb128 0x3
	.string	"sint16"
	.byte	0x2
	.byte	0x56
	.uaword	0x1de
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x3
	.string	"uint16"
	.byte	0x2
	.byte	0x5b
	.uaword	0x1f9
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
	.uaword	0x235
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
	.string	"uint16_least"
	.byte	0x2
	.byte	0x94
	.uaword	0x28d
	.uleb128 0x3
	.string	"FaultFunctionType"
	.byte	0x3
	.byte	0x25
	.uaword	0x1b2
	.uleb128 0x3
	.string	"FaultIndexType"
	.byte	0x3
	.byte	0x26
	.uaword	0x1b2
	.uleb128 0x3
	.string	"FaultBitFieldType"
	.byte	0x3
	.byte	0x27
	.uaword	0x1eb
	.uleb128 0x3
	.string	"FaultOffsetType"
	.byte	0x3
	.byte	0x29
	.uaword	0x1eb
	.uleb128 0x3
	.string	"FaultStateType"
	.byte	0x3
	.byte	0x2b
	.uaword	0x2e5
	.uleb128 0x3
	.string	"FaultCntType"
	.byte	0x3
	.byte	0x2d
	.uaword	0x1b2
	.uleb128 0x3
	.string	"FaultFailModType"
	.byte	0x3
	.byte	0x2e
	.uaword	0x1b2
	.uleb128 0x4
	.string	"DSM_CONTROL_UNIT_INDEX"
	.byte	0x1
	.byte	0x5
	.byte	0x2b
	.uaword	0x3cb
	.uleb128 0x5
	.string	"DSM_UNIT_0"
	.sleb128 0
	.uleb128 0x5
	.string	"DSM_UNIT_1"
	.sleb128 1
	.uleb128 0x5
	.string	"DSM_UNIT_2"
	.sleb128 2
	.uleb128 0x5
	.string	"DSM_UNIT_3"
	.sleb128 3
	.uleb128 0x5
	.string	"DSM_UNIT_4"
	.sleb128 4
	.uleb128 0x5
	.string	"DSM_UNIT_MAX_NUM"
	.sleb128 5
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x6
	.byte	0xe4
	.byte	0x4
	.byte	0x44
	.uaword	0x40d
	.uleb128 0x7
	.string	"DtcNumber"
	.byte	0x4
	.byte	0x46
	.uaword	0x227
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"DtcFreezeFrame"
	.byte	0x4
	.byte	0x47
	.uaword	0x40d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x8
	.uaword	0x1b2
	.uaword	0x41d
	.uleb128 0x9
	.uaword	0x3cb
	.byte	0xdf
	.byte	0
	.uleb128 0x3
	.string	"DSM_DtcSavedContextType"
	.byte	0x4
	.byte	0x48
	.uaword	0x3d7
	.uleb128 0xa
	.byte	0x1
	.byte	0x1
	.byte	0x67
	.uaword	0x571
	.uleb128 0x5
	.string	"DSM_FAILMOD_START_IDX_UNIT_0"
	.sleb128 0
	.uleb128 0x5
	.string	"DSM_FAILMOD_END_IDX_UNIT_0"
	.sleb128 5
	.uleb128 0x5
	.string	"DSM_FAILMOD_START_IDX_UNIT_1"
	.sleb128 5
	.uleb128 0x5
	.string	"DSM_FAILMOD_END_IDX_UNIT_1"
	.sleb128 10
	.uleb128 0x5
	.string	"DSM_FAILMOD_START_IDX_UNIT_2"
	.sleb128 10
	.uleb128 0x5
	.string	"DSM_FAILMOD_END_IDX_UNIT_2"
	.sleb128 15
	.uleb128 0x5
	.string	"DSM_FAILMOD_START_IDX_UNIT_3"
	.sleb128 15
	.uleb128 0x5
	.string	"DSM_FAILMOD_END_IDX_UNIT_3"
	.sleb128 20
	.uleb128 0x5
	.string	"DSM_FAILMOD_START_IDX_UNIT_4"
	.sleb128 20
	.uleb128 0x5
	.string	"DSM_FAILMOD_END_IDX_UNIT_4"
	.sleb128 21
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"DSM_vidClrFuncArrayBySegment"
	.byte	0x1
	.uahalf	0x1d6
	.byte	0x1
	.byte	0x1
	.uaword	0x5be
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x1d6
	.uaword	0x5be
	.uleb128 0xc
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x1d6
	.uaword	0x5be
	.uleb128 0xd
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x1d8
	.uaword	0x1eb
	.byte	0
	.uleb128 0xe
	.uaword	0x1eb
	.uleb128 0xb
	.byte	0x1
	.string	"DSM_vidClrFuncCtrBySegment"
	.byte	0x1
	.uahalf	0x1e1
	.byte	0x1
	.byte	0x1
	.uaword	0x60e
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x1e1
	.uaword	0x5be
	.uleb128 0xc
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x1e1
	.uaword	0x5be
	.uleb128 0xd
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x1e3
	.uaword	0x1eb
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"DSM_vidClrFailModeCtrBySegment"
	.byte	0x1
	.uahalf	0x1eb
	.byte	0x1
	.byte	0x1
	.uaword	0x66f
	.uleb128 0xf
	.string	"ku8SegStart"
	.byte	0x1
	.uahalf	0x1eb
	.uaword	0x66f
	.uleb128 0xf
	.string	"ku8SegEnd"
	.byte	0x1
	.uahalf	0x1eb
	.uaword	0x66f
	.uleb128 0x10
	.string	"u8Index"
	.byte	0x1
	.uahalf	0x1ed
	.uaword	0x1b2
	.byte	0
	.uleb128 0xe
	.uaword	0x1b2
	.uleb128 0xb
	.byte	0x1
	.string	"FaultClear"
	.byte	0x1
	.uahalf	0x207
	.byte	0x1
	.byte	0x1
	.uaword	0x697
	.uleb128 0xc
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x207
	.uaword	0x1b2
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"FaultCounterInit"
	.byte	0x1
	.byte	0xfc
	.byte	0x1
	.uaword	.LFB1
	.uaword	.LFE1
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x798
	.uleb128 0x12
	.string	"localFaultIgn"
	.byte	0x1
	.byte	0xfe
	.uaword	0x315
	.uaword	.LLST0
	.uleb128 0x12
	.string	"localFaultGroupIdx"
	.byte	0x1
	.byte	0xff
	.uaword	0x2b6
	.uaword	.LLST1
	.uleb128 0x13
	.string	"localFaultIdx"
	.byte	0x1
	.uahalf	0x100
	.uaword	0x1eb
	.uaword	.LLST2
	.uleb128 0x13
	.string	"localCheckFaultTypeIdx"
	.byte	0x1
	.uahalf	0x101
	.uaword	0x2cf
	.uaword	.LLST3
	.uleb128 0x13
	.string	"localFaultFailMod"
	.byte	0x1
	.uahalf	0x102
	.uaword	0x33f
	.uaword	.LLST4
	.uleb128 0x13
	.string	"localNbFaultTypeByGroup"
	.byte	0x1
	.uahalf	0x103
	.uaword	0x2a2
	.uaword	.LLST5
	.uleb128 0x13
	.string	"u8LocMotorNum"
	.byte	0x1
	.uahalf	0x104
	.uaword	0x1b2
	.uaword	.LLST6
	.uleb128 0x14
	.uaword	.LVL31
	.byte	0x1
	.uaword	0x1733
	.byte	0
	.uleb128 0x15
	.string	"FaultFailModHandle"
	.byte	0x1
	.byte	0x89
	.byte	0x1
	.byte	0x1
	.uaword	0x858
	.uleb128 0x16
	.string	"xLocalFaultOffset"
	.byte	0x1
	.byte	0x89
	.uaword	0x2fe
	.uleb128 0x16
	.string	"bisFailState"
	.byte	0x1
	.byte	0x89
	.uaword	0x272
	.uleb128 0x17
	.string	"u8LocFailModCounterIdx"
	.byte	0x1
	.byte	0x8b
	.uaword	0x1b2
	.uleb128 0x18
	.uaword	.LASF3
	.byte	0x1
	.byte	0x8c
	.uaword	0x1b2
	.uleb128 0x17
	.string	"u8LocFailMode"
	.byte	0x1
	.byte	0x8d
	.uaword	0x1b2
	.uleb128 0x17
	.string	"s16LocFailModCount"
	.byte	0x1
	.byte	0x8e
	.uaword	0x1d0
	.uleb128 0x17
	.string	"bFaultLevelRecoverFlag"
	.byte	0x1
	.byte	0x8f
	.uaword	0x272
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.string	"FaultDetectionWithFail"
	.byte	0x1
	.uahalf	0x14e
	.byte	0x1
	.uaword	.LFB2
	.uaword	.LFE2
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x949
	.uleb128 0x1a
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x14e
	.uaword	0x2b6
	.uaword	.LLST7
	.uleb128 0x1b
	.string	"Type"
	.byte	0x1
	.uahalf	0x14e
	.uaword	0x2cf
	.uaword	.LLST8
	.uleb128 0xd
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x150
	.uaword	0x2fe
	.uleb128 0xd
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x151
	.uaword	0x315
	.uleb128 0x1c
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x152
	.uaword	0x315
	.uaword	.LLST9
	.uleb128 0x1c
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x153
	.uaword	0x2a2
	.uaword	.LLST10
	.uleb128 0x1d
	.uaword	0x798
	.uaword	.LBB256
	.uaword	.LBE256
	.byte	0x1
	.uahalf	0x174
	.uaword	0x938
	.uleb128 0x1e
	.uaword	0x7cd
	.uaword	.LLST11
	.uleb128 0x1f
	.uaword	0x7b4
	.uleb128 0x20
	.uaword	.LBB257
	.uaword	.LBE257
	.uleb128 0x21
	.uaword	0x7e1
	.uaword	.LLST12
	.uleb128 0x21
	.uaword	0x7ff
	.uaword	.LLST13
	.uleb128 0x21
	.uaword	0x80a
	.uaword	.LLST14
	.uleb128 0x21
	.uaword	0x81f
	.uaword	.LLST15
	.uleb128 0x21
	.uaword	0x839
	.uaword	.LLST15
	.byte	0
	.byte	0
	.uleb128 0x22
	.uaword	.LVL46
	.uaword	0x174b
	.uleb128 0x23
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.string	"FaultDetectionWithoutFail"
	.byte	0x1
	.uahalf	0x190
	.byte	0x1
	.uaword	.LFB3
	.uaword	.LFE3
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xa50
	.uleb128 0x1a
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x190
	.uaword	0x2b6
	.uaword	.LLST17
	.uleb128 0x1b
	.string	"Type"
	.byte	0x1
	.uahalf	0x190
	.uaword	0x2cf
	.uaword	.LLST18
	.uleb128 0xd
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x192
	.uaword	0x2fe
	.uleb128 0x1c
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x193
	.uaword	0x1d0
	.uaword	.LLST19
	.uleb128 0xd
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x194
	.uaword	0x315
	.uleb128 0x1c
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x195
	.uaword	0x315
	.uaword	.LLST20
	.uleb128 0x10
	.string	"localFaultIrr"
	.byte	0x1
	.uahalf	0x196
	.uaword	0x315
	.uleb128 0x1d
	.uaword	0x798
	.uaword	.LBB260
	.uaword	.LBE260
	.byte	0x1
	.uahalf	0x1b6
	.uaword	0xa3f
	.uleb128 0x24
	.uaword	0x7cd
	.byte	0
	.uleb128 0x1f
	.uaword	0x7b4
	.uleb128 0x20
	.uaword	.LBB261
	.uaword	.LBE261
	.uleb128 0x21
	.uaword	0x7e1
	.uaword	.LLST21
	.uleb128 0x21
	.uaword	0x7ff
	.uaword	.LLST22
	.uleb128 0x21
	.uaword	0x80a
	.uaword	.LLST23
	.uleb128 0x21
	.uaword	0x81f
	.uaword	.LLST24
	.uleb128 0x21
	.uaword	0x839
	.uaword	.LLST25
	.byte	0
	.byte	0
	.uleb128 0x22
	.uaword	.LVL58
	.uaword	0x176a
	.uleb128 0x23
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.string	"FaultPowerDownManage"
	.byte	0x1
	.uahalf	0x1d1
	.byte	0x1
	.uaword	.LFB4
	.uaword	.LFE4
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x26
	.uaword	0x571
	.uaword	.LFB5
	.uaword	.LFE5
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xaa6
	.uleb128 0x1e
	.uaword	0x599
	.uaword	.LLST26
	.uleb128 0x27
	.uaword	0x5a5
	.byte	0x1
	.byte	0x55
	.uleb128 0x21
	.uaword	0x5b1
	.uaword	.LLST27
	.byte	0
	.uleb128 0x26
	.uaword	0x5c3
	.uaword	.LFB6
	.uaword	.LFE6
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xad5
	.uleb128 0x1e
	.uaword	0x5e9
	.uaword	.LLST28
	.uleb128 0x27
	.uaword	0x5f5
	.byte	0x1
	.byte	0x55
	.uleb128 0x21
	.uaword	0x601
	.uaword	.LLST29
	.byte	0
	.uleb128 0x26
	.uaword	0x60e
	.uaword	.LFB7
	.uaword	.LFE7
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xb02
	.uleb128 0x27
	.uaword	0x638
	.byte	0x1
	.byte	0x54
	.uleb128 0x27
	.uaword	0x64c
	.byte	0x1
	.byte	0x55
	.uleb128 0x21
	.uaword	0x65e
	.uaword	.LLST30
	.byte	0
	.uleb128 0x26
	.uaword	0x674
	.uaword	.LFB8
	.uaword	.LFE8
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xee7
	.uleb128 0x27
	.uaword	0x68a
	.byte	0x1
	.byte	0x54
	.uleb128 0x28
	.uaword	0x571
	.uaword	.LBB262
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.uahalf	0x223
	.uaword	0xb4c
	.uleb128 0x1f
	.uaword	0x5a5
	.uleb128 0x1f
	.uaword	0x599
	.uleb128 0x29
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x21
	.uaword	0x5b1
	.uaword	.LLST31
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0x5c3
	.uaword	.LBB265
	.uaword	.LBE265
	.byte	0x1
	.uahalf	0x225
	.uaword	0xb7e
	.uleb128 0x1f
	.uaword	0x5f5
	.uleb128 0x1f
	.uaword	0x5e9
	.uleb128 0x20
	.uaword	.LBB266
	.uaword	.LBE266
	.uleb128 0x21
	.uaword	0x601
	.uaword	.LLST32
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0x60e
	.uaword	.LBB267
	.uaword	.LBE267
	.byte	0x1
	.uahalf	0x227
	.uaword	0xbb0
	.uleb128 0x1f
	.uaword	0x64c
	.uleb128 0x1f
	.uaword	0x638
	.uleb128 0x20
	.uaword	.LBB268
	.uaword	.LBE268
	.uleb128 0x21
	.uaword	0x65e
	.uaword	.LLST33
	.byte	0
	.byte	0
	.uleb128 0x28
	.uaword	0x571
	.uaword	.LBB269
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x1
	.uahalf	0x22d
	.uaword	0xbde
	.uleb128 0x1f
	.uaword	0x5a5
	.uleb128 0x1f
	.uaword	0x599
	.uleb128 0x29
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0x21
	.uaword	0x5b1
	.uaword	.LLST34
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0x5c3
	.uaword	.LBB272
	.uaword	.LBE272
	.byte	0x1
	.uahalf	0x22f
	.uaword	0xc10
	.uleb128 0x1f
	.uaword	0x5f5
	.uleb128 0x1f
	.uaword	0x5e9
	.uleb128 0x20
	.uaword	.LBB273
	.uaword	.LBE273
	.uleb128 0x21
	.uaword	0x601
	.uaword	.LLST35
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0x60e
	.uaword	.LBB274
	.uaword	.LBE274
	.byte	0x1
	.uahalf	0x231
	.uaword	0xc42
	.uleb128 0x1f
	.uaword	0x64c
	.uleb128 0x1f
	.uaword	0x638
	.uleb128 0x20
	.uaword	.LBB275
	.uaword	.LBE275
	.uleb128 0x21
	.uaword	0x65e
	.uaword	.LLST36
	.byte	0
	.byte	0
	.uleb128 0x28
	.uaword	0x571
	.uaword	.LBB276
	.uaword	.Ldebug_ranges0+0x30
	.byte	0x1
	.uahalf	0x237
	.uaword	0xc70
	.uleb128 0x1f
	.uaword	0x5a5
	.uleb128 0x1f
	.uaword	0x599
	.uleb128 0x29
	.uaword	.Ldebug_ranges0+0x30
	.uleb128 0x21
	.uaword	0x5b1
	.uaword	.LLST37
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0x5c3
	.uaword	.LBB279
	.uaword	.LBE279
	.byte	0x1
	.uahalf	0x239
	.uaword	0xca2
	.uleb128 0x1f
	.uaword	0x5f5
	.uleb128 0x1f
	.uaword	0x5e9
	.uleb128 0x20
	.uaword	.LBB280
	.uaword	.LBE280
	.uleb128 0x21
	.uaword	0x601
	.uaword	.LLST38
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0x60e
	.uaword	.LBB281
	.uaword	.LBE281
	.byte	0x1
	.uahalf	0x23b
	.uaword	0xcd4
	.uleb128 0x1f
	.uaword	0x64c
	.uleb128 0x1f
	.uaword	0x638
	.uleb128 0x20
	.uaword	.LBB282
	.uaword	.LBE282
	.uleb128 0x21
	.uaword	0x65e
	.uaword	.LLST39
	.byte	0
	.byte	0
	.uleb128 0x28
	.uaword	0x571
	.uaword	.LBB283
	.uaword	.Ldebug_ranges0+0x48
	.byte	0x1
	.uahalf	0x20d
	.uaword	0xd02
	.uleb128 0x1f
	.uaword	0x5a5
	.uleb128 0x1f
	.uaword	0x599
	.uleb128 0x29
	.uaword	.Ldebug_ranges0+0x48
	.uleb128 0x21
	.uaword	0x5b1
	.uaword	.LLST40
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0x571
	.uaword	.LBB286
	.uaword	.LBE286
	.byte	0x1
	.uahalf	0x20e
	.uaword	0xd34
	.uleb128 0x1f
	.uaword	0x5a5
	.uleb128 0x1f
	.uaword	0x599
	.uleb128 0x20
	.uaword	.LBB287
	.uaword	.LBE287
	.uleb128 0x21
	.uaword	0x5b1
	.uaword	.LLST41
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0x5c3
	.uaword	.LBB288
	.uaword	.LBE288
	.byte	0x1
	.uahalf	0x210
	.uaword	0xd66
	.uleb128 0x1f
	.uaword	0x5f5
	.uleb128 0x1f
	.uaword	0x5e9
	.uleb128 0x20
	.uaword	.LBB289
	.uaword	.LBE289
	.uleb128 0x21
	.uaword	0x601
	.uaword	.LLST42
	.byte	0
	.byte	0
	.uleb128 0x28
	.uaword	0x5c3
	.uaword	.LBB290
	.uaword	.Ldebug_ranges0+0x60
	.byte	0x1
	.uahalf	0x211
	.uaword	0xd94
	.uleb128 0x1f
	.uaword	0x5f5
	.uleb128 0x1f
	.uaword	0x5e9
	.uleb128 0x29
	.uaword	.Ldebug_ranges0+0x60
	.uleb128 0x21
	.uaword	0x601
	.uaword	.LLST43
	.byte	0
	.byte	0
	.uleb128 0x28
	.uaword	0x60e
	.uaword	.LBB293
	.uaword	.Ldebug_ranges0+0x78
	.byte	0x1
	.uahalf	0x213
	.uaword	0xdc2
	.uleb128 0x1f
	.uaword	0x64c
	.uleb128 0x1f
	.uaword	0x638
	.uleb128 0x29
	.uaword	.Ldebug_ranges0+0x78
	.uleb128 0x21
	.uaword	0x65e
	.uaword	.LLST44
	.byte	0
	.byte	0
	.uleb128 0x28
	.uaword	0x571
	.uaword	.LBB298
	.uaword	.Ldebug_ranges0+0x90
	.byte	0x1
	.uahalf	0x219
	.uaword	0xdf0
	.uleb128 0x1f
	.uaword	0x5a5
	.uleb128 0x1f
	.uaword	0x599
	.uleb128 0x29
	.uaword	.Ldebug_ranges0+0x90
	.uleb128 0x21
	.uaword	0x5b1
	.uaword	.LLST45
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0x5c3
	.uaword	.LBB301
	.uaword	.LBE301
	.byte	0x1
	.uahalf	0x21b
	.uaword	0xe22
	.uleb128 0x1f
	.uaword	0x5f5
	.uleb128 0x1f
	.uaword	0x5e9
	.uleb128 0x20
	.uaword	.LBB302
	.uaword	.LBE302
	.uleb128 0x21
	.uaword	0x601
	.uaword	.LLST46
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0x60e
	.uaword	.LBB303
	.uaword	.LBE303
	.byte	0x1
	.uahalf	0x21d
	.uaword	0xe54
	.uleb128 0x1f
	.uaword	0x64c
	.uleb128 0x1f
	.uaword	0x638
	.uleb128 0x20
	.uaword	.LBB304
	.uaword	.LBE304
	.uleb128 0x21
	.uaword	0x65e
	.uaword	.LLST47
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0x571
	.uaword	.LBB305
	.uaword	.LBE305
	.byte	0x1
	.uahalf	0x22c
	.uaword	0xe86
	.uleb128 0x1f
	.uaword	0x5a5
	.uleb128 0x1f
	.uaword	0x599
	.uleb128 0x20
	.uaword	.LBB306
	.uaword	.LBE306
	.uleb128 0x21
	.uaword	0x5b1
	.uaword	.LLST48
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0x571
	.uaword	.LBB308
	.uaword	.LBE308
	.byte	0x1
	.uahalf	0x222
	.uaword	0xeb8
	.uleb128 0x1f
	.uaword	0x5a5
	.uleb128 0x1f
	.uaword	0x599
	.uleb128 0x20
	.uaword	.LBB309
	.uaword	.LBE309
	.uleb128 0x21
	.uaword	0x5b1
	.uaword	.LLST49
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uaword	0x571
	.uaword	.LBB311
	.uaword	.LBE311
	.byte	0x1
	.uahalf	0x218
	.uleb128 0x1f
	.uaword	0x5a5
	.uleb128 0x1f
	.uaword	0x599
	.uleb128 0x20
	.uaword	.LBB312
	.uaword	.LBE312
	.uleb128 0x21
	.uaword	0x5b1
	.uaword	.LLST50
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.string	"FaultManualErase"
	.byte	0x1
	.uahalf	0x256
	.byte	0x1
	.uaword	.LFB9
	.uaword	.LFE9
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1371
	.uleb128 0x13
	.string	"u8Index"
	.byte	0x1
	.uahalf	0x258
	.uaword	0x1b2
	.uaword	.LLST51
	.uleb128 0x10
	.string	"pu16FaultErase"
	.byte	0x1
	.uahalf	0x259
	.uaword	0x1371
	.uleb128 0x28
	.uaword	0x674
	.uaword	.LBB536
	.uaword	.Ldebug_ranges0+0xa8
	.byte	0x1
	.uahalf	0x262
	.uaword	0x103e
	.uleb128 0x24
	.uaword	0x68a
	.byte	0
	.uleb128 0x28
	.uaword	0x571
	.uaword	.LBB538
	.uaword	.Ldebug_ranges0+0xc8
	.byte	0x1
	.uahalf	0x20d
	.uaword	0xf81
	.uleb128 0x1f
	.uaword	0x5a5
	.uleb128 0x1f
	.uaword	0x599
	.uleb128 0x29
	.uaword	.Ldebug_ranges0+0xc8
	.uleb128 0x21
	.uaword	0x5b1
	.uaword	.LLST52
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0x571
	.uaword	.LBB541
	.uaword	.LBE541
	.byte	0x1
	.uahalf	0x20e
	.uaword	0xfb3
	.uleb128 0x1f
	.uaword	0x5a5
	.uleb128 0x1f
	.uaword	0x599
	.uleb128 0x20
	.uaword	.LBB542
	.uaword	.LBE542
	.uleb128 0x21
	.uaword	0x5b1
	.uaword	.LLST53
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0x5c3
	.uaword	.LBB543
	.uaword	.LBE543
	.byte	0x1
	.uahalf	0x210
	.uaword	0xfe5
	.uleb128 0x1f
	.uaword	0x5f5
	.uleb128 0x1f
	.uaword	0x5e9
	.uleb128 0x20
	.uaword	.LBB544
	.uaword	.LBE544
	.uleb128 0x21
	.uaword	0x601
	.uaword	.LLST54
	.byte	0
	.byte	0
	.uleb128 0x28
	.uaword	0x5c3
	.uaword	.LBB545
	.uaword	.Ldebug_ranges0+0xe0
	.byte	0x1
	.uahalf	0x211
	.uaword	0x1013
	.uleb128 0x1f
	.uaword	0x5f5
	.uleb128 0x1f
	.uaword	0x5e9
	.uleb128 0x29
	.uaword	.Ldebug_ranges0+0xe0
	.uleb128 0x21
	.uaword	0x601
	.uaword	.LLST55
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0x60e
	.uaword	.LBB548
	.uaword	.Ldebug_ranges0+0xf8
	.byte	0x1
	.uahalf	0x213
	.uleb128 0x1f
	.uaword	0x64c
	.uleb128 0x1f
	.uaword	0x638
	.uleb128 0x29
	.uaword	.Ldebug_ranges0+0xf8
	.uleb128 0x21
	.uaword	0x65e
	.uaword	.LLST56
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
	.uaword	0x674
	.uaword	.LBB558
	.uaword	.Ldebug_ranges0+0x118
	.byte	0x1
	.uahalf	0x263
	.uaword	0x1118
	.uleb128 0x1e
	.uaword	0x68a
	.uaword	.LLST57
	.uleb128 0x28
	.uaword	0x571
	.uaword	.LBB560
	.uaword	.Ldebug_ranges0+0x138
	.byte	0x1
	.uahalf	0x219
	.uaword	0x1089
	.uleb128 0x1f
	.uaword	0x5a5
	.uleb128 0x1f
	.uaword	0x599
	.uleb128 0x29
	.uaword	.Ldebug_ranges0+0x138
	.uleb128 0x21
	.uaword	0x5b1
	.uaword	.LLST58
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0x5c3
	.uaword	.LBB563
	.uaword	.LBE563
	.byte	0x1
	.uahalf	0x21b
	.uaword	0x10bb
	.uleb128 0x1f
	.uaword	0x5f5
	.uleb128 0x1f
	.uaword	0x5e9
	.uleb128 0x20
	.uaword	.LBB564
	.uaword	.LBE564
	.uleb128 0x21
	.uaword	0x601
	.uaword	.LLST59
	.byte	0
	.byte	0
	.uleb128 0x28
	.uaword	0x60e
	.uaword	.LBB565
	.uaword	.Ldebug_ranges0+0x150
	.byte	0x1
	.uahalf	0x21d
	.uaword	0x10e9
	.uleb128 0x1f
	.uaword	0x64c
	.uleb128 0x1f
	.uaword	0x638
	.uleb128 0x29
	.uaword	.Ldebug_ranges0+0x150
	.uleb128 0x21
	.uaword	0x65e
	.uaword	.LLST60
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uaword	0x571
	.uaword	.LBB569
	.uaword	.LBE569
	.byte	0x1
	.uahalf	0x218
	.uleb128 0x1f
	.uaword	0x5a5
	.uleb128 0x1f
	.uaword	0x599
	.uleb128 0x20
	.uaword	.LBB570
	.uaword	.LBE570
	.uleb128 0x21
	.uaword	0x5b1
	.uaword	.LLST61
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
	.uaword	0x674
	.uaword	.LBB574
	.uaword	.Ldebug_ranges0+0x168
	.byte	0x1
	.uahalf	0x264
	.uaword	0x11f2
	.uleb128 0x1e
	.uaword	0x68a
	.uaword	.LLST62
	.uleb128 0x28
	.uaword	0x571
	.uaword	.LBB576
	.uaword	.Ldebug_ranges0+0x188
	.byte	0x1
	.uahalf	0x223
	.uaword	0x1163
	.uleb128 0x1f
	.uaword	0x5a5
	.uleb128 0x1f
	.uaword	0x599
	.uleb128 0x29
	.uaword	.Ldebug_ranges0+0x188
	.uleb128 0x21
	.uaword	0x5b1
	.uaword	.LLST63
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0x5c3
	.uaword	.LBB579
	.uaword	.LBE579
	.byte	0x1
	.uahalf	0x225
	.uaword	0x1195
	.uleb128 0x1f
	.uaword	0x5f5
	.uleb128 0x1f
	.uaword	0x5e9
	.uleb128 0x20
	.uaword	.LBB580
	.uaword	.LBE580
	.uleb128 0x21
	.uaword	0x601
	.uaword	.LLST64
	.byte	0
	.byte	0
	.uleb128 0x28
	.uaword	0x60e
	.uaword	.LBB581
	.uaword	.Ldebug_ranges0+0x1a0
	.byte	0x1
	.uahalf	0x227
	.uaword	0x11c3
	.uleb128 0x1f
	.uaword	0x64c
	.uleb128 0x1f
	.uaword	0x638
	.uleb128 0x29
	.uaword	.Ldebug_ranges0+0x1a0
	.uleb128 0x21
	.uaword	0x65e
	.uaword	.LLST65
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uaword	0x571
	.uaword	.LBB585
	.uaword	.LBE585
	.byte	0x1
	.uahalf	0x222
	.uleb128 0x1f
	.uaword	0x5a5
	.uleb128 0x1f
	.uaword	0x599
	.uleb128 0x20
	.uaword	.LBB586
	.uaword	.LBE586
	.uleb128 0x21
	.uaword	0x5b1
	.uaword	.LLST66
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
	.uaword	0x674
	.uaword	.LBB590
	.uaword	.Ldebug_ranges0+0x1b8
	.byte	0x1
	.uahalf	0x265
	.uaword	0x12cc
	.uleb128 0x1e
	.uaword	0x68a
	.uaword	.LLST67
	.uleb128 0x28
	.uaword	0x571
	.uaword	.LBB592
	.uaword	.Ldebug_ranges0+0x1d0
	.byte	0x1
	.uahalf	0x22d
	.uaword	0x123d
	.uleb128 0x1f
	.uaword	0x5a5
	.uleb128 0x1f
	.uaword	0x599
	.uleb128 0x29
	.uaword	.Ldebug_ranges0+0x1d0
	.uleb128 0x21
	.uaword	0x5b1
	.uaword	.LLST68
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0x5c3
	.uaword	.LBB595
	.uaword	.LBE595
	.byte	0x1
	.uahalf	0x22f
	.uaword	0x126f
	.uleb128 0x1f
	.uaword	0x5f5
	.uleb128 0x1f
	.uaword	0x5e9
	.uleb128 0x20
	.uaword	.LBB596
	.uaword	.LBE596
	.uleb128 0x21
	.uaword	0x601
	.uaword	.LLST69
	.byte	0
	.byte	0
	.uleb128 0x28
	.uaword	0x60e
	.uaword	.LBB597
	.uaword	.Ldebug_ranges0+0x1e8
	.byte	0x1
	.uahalf	0x231
	.uaword	0x129d
	.uleb128 0x1f
	.uaword	0x64c
	.uleb128 0x1f
	.uaword	0x638
	.uleb128 0x29
	.uaword	.Ldebug_ranges0+0x1e8
	.uleb128 0x21
	.uaword	0x65e
	.uaword	.LLST70
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uaword	0x571
	.uaword	.LBB601
	.uaword	.LBE601
	.byte	0x1
	.uahalf	0x22c
	.uleb128 0x1f
	.uaword	0x5a5
	.uleb128 0x1f
	.uaword	0x599
	.uleb128 0x20
	.uaword	.LBB602
	.uaword	.LBE602
	.uleb128 0x21
	.uaword	0x5b1
	.uaword	.LLST71
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0x674
	.uaword	.LBB605
	.uaword	.Ldebug_ranges0+0x200
	.byte	0x1
	.uahalf	0x266
	.uleb128 0x1e
	.uaword	0x68a
	.uaword	.LLST72
	.uleb128 0x28
	.uaword	0x571
	.uaword	.LBB607
	.uaword	.Ldebug_ranges0+0x220
	.byte	0x1
	.uahalf	0x237
	.uaword	0x1313
	.uleb128 0x1f
	.uaword	0x5a5
	.uleb128 0x1f
	.uaword	0x599
	.uleb128 0x29
	.uaword	.Ldebug_ranges0+0x220
	.uleb128 0x21
	.uaword	0x5b1
	.uaword	.LLST73
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0x5c3
	.uaword	.LBB610
	.uaword	.LBE610
	.byte	0x1
	.uahalf	0x239
	.uaword	0x1345
	.uleb128 0x1f
	.uaword	0x5f5
	.uleb128 0x1f
	.uaword	0x5e9
	.uleb128 0x20
	.uaword	.LBB611
	.uaword	.LBE611
	.uleb128 0x21
	.uaword	0x601
	.uaword	.LLST74
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0x60e
	.uaword	.LBB612
	.uaword	.Ldebug_ranges0+0x238
	.byte	0x1
	.uahalf	0x23b
	.uleb128 0x1f
	.uaword	0x64c
	.uleb128 0x1f
	.uaword	0x638
	.uleb128 0x29
	.uaword	.Ldebug_ranges0+0x238
	.uleb128 0x21
	.uaword	0x65e
	.uaword	.LLST75
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.byte	0x4
	.uaword	0x1eb
	.uleb128 0x2d
	.byte	0x1
	.string	"DSM_u8GetUnitFaultLevel"
	.byte	0x1
	.uahalf	0x27e
	.byte	0x1
	.uaword	0x1b2
	.uaword	.LFB10
	.uaword	.LFE10
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x13e8
	.uleb128 0x2e
	.string	"u8UnitIndex"
	.byte	0x1
	.uahalf	0x27e
	.uaword	0x1b2
	.byte	0x1
	.byte	0x54
	.uleb128 0x13
	.string	"u8Unit"
	.byte	0x1
	.uahalf	0x280
	.uaword	0x1b2
	.uaword	.LLST76
	.uleb128 0x2f
	.string	"u8MaxLevel"
	.byte	0x1
	.uahalf	0x281
	.uaword	0x1b2
	.byte	0x1
	.byte	0x5f
	.byte	0
	.uleb128 0x30
	.string	"FaultEraseRequestC"
	.byte	0x5
	.byte	0x48
	.uaword	0x5be
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.uaword	0x227
	.uaword	0x1414
	.uleb128 0x9
	.uaword	0x3cb
	.byte	0x9
	.byte	0
	.uleb128 0x30
	.string	"DSM_DtcNumber"
	.byte	0x5
	.byte	0x52
	.uaword	0x1404
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.string	"FaultFailureLevel"
	.byte	0x5
	.byte	0x53
	.uaword	0x1446
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.uaword	0x1b2
	.uleb128 0x8
	.uaword	0x1b2
	.uaword	0x145b
	.uleb128 0x9
	.uaword	0x3cb
	.byte	0x5
	.byte	0
	.uleb128 0x30
	.string	"DSM_FaultFailureLevel"
	.byte	0x5
	.byte	0x54
	.uaword	0x147a
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.uaword	0x144b
	.uleb128 0x30
	.string	"FaultEraseRequest"
	.byte	0x5
	.byte	0x55
	.uaword	0x1eb
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.uaword	0x1b2
	.uaword	0x14ab
	.uleb128 0x32
	.uaword	0x3cb
	.uahalf	0x121
	.byte	0
	.uleb128 0x30
	.string	"FaultTableFuncTypeCounter1"
	.byte	0x6
	.byte	0x2d
	.uaword	0x149a
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.uaword	0x2e5
	.uaword	0x14df
	.uleb128 0x9
	.uaword	0x3cb
	.byte	0x58
	.byte	0
	.uleb128 0x30
	.string	"FaultFunctionTypeDetectedArray"
	.byte	0x6
	.byte	0x2f
	.uaword	0x14cf
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.string	"FaultFunctionTypeLoggedArray"
	.byte	0x6
	.byte	0x30
	.uaword	0x14cf
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.string	"FaultFunctionTypeAuthorizedArray"
	.byte	0x6
	.byte	0x31
	.uaword	0x14cf
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.string	"FaultFunctionTypeLogIgnArray"
	.byte	0x6
	.byte	0x32
	.uaword	0x14cf
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.uaword	0x1b2
	.uaword	0x158d
	.uleb128 0x9
	.uaword	0x3cb
	.byte	0x14
	.byte	0
	.uleb128 0x30
	.string	"FaultFailModCounterTable"
	.byte	0x6
	.byte	0x34
	.uaword	0x157d
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.uaword	0x32b
	.uaword	0x15c0
	.uleb128 0x32
	.uaword	0x3cb
	.uahalf	0x121
	.byte	0
	.uleb128 0x30
	.string	"FaultFunctionTypeIncs"
	.byte	0x6
	.byte	0x3e
	.uaword	0x15df
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.uaword	0x15af
	.uleb128 0x30
	.string	"FaultFunctionTypeDecs"
	.byte	0x6
	.byte	0x3f
	.uaword	0x1603
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.uaword	0x15af
	.uleb128 0x30
	.string	"FaultFunctionTypeIrrArray"
	.byte	0x6
	.byte	0x40
	.uaword	0x162b
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.uaword	0x14cf
	.uleb128 0x30
	.string	"FaultFunctionTypeAutInitArray"
	.byte	0x6
	.byte	0x41
	.uaword	0x1657
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.uaword	0x14cf
	.uleb128 0x30
	.string	"FaultFunctionTypeCntIgnArray"
	.byte	0x6
	.byte	0x43
	.uaword	0x1682
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.uaword	0x14cf
	.uleb128 0x8
	.uaword	0x33f
	.uaword	0x1698
	.uleb128 0x32
	.uaword	0x3cb
	.uahalf	0x121
	.byte	0
	.uleb128 0x30
	.string	"FaultFunctionTypeFailModTable"
	.byte	0x6
	.byte	0x44
	.uaword	0x16bf
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.uaword	0x1687
	.uleb128 0x8
	.uaword	0x2fe
	.uaword	0x16d4
	.uleb128 0x9
	.uaword	0x3cb
	.byte	0x59
	.byte	0
	.uleb128 0x30
	.string	"FaultFunctionTypeOffsetTable"
	.byte	0x6
	.byte	0x4e
	.uaword	0x16fa
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.uaword	0x16c4
	.uleb128 0x8
	.uaword	0x41d
	.uaword	0x170f
	.uleb128 0x9
	.uaword	0x3cb
	.byte	0x9
	.byte	0
	.uleb128 0x30
	.string	"DSM_DtcSavedFreezeFrameNvm"
	.byte	0x4
	.byte	0x54
	.uaword	0x16ff
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.byte	0x1
	.string	"DSM_vidDtcStsInit"
	.byte	0x4
	.byte	0x72
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.byte	0x1
	.string	"FaultRecordDTC"
	.byte	0x7
	.byte	0x41
	.byte	0x1
	.byte	0x1
	.uaword	0x176a
	.uleb128 0x35
	.uaword	0x1eb
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.string	"DSM_vidClrDtcStsTFBit"
	.byte	0x4
	.byte	0x73
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.uaword	0x66f
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x12
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x1a
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
	.uleb128 0x6
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
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL10
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x8
	.byte	0x76
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x26
	.byte	0x31
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL17
	.uahalf	0xc
	.byte	0x76
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x26
	.byte	0x31
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0xc
	.byte	0x76
	.sleb128 0
	.byte	0x7f
	.sleb128 -1
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x26
	.byte	0x31
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x8
	.byte	0x76
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x26
	.byte	0x31
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0xc
	.byte	0x76
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x26
	.byte	0x31
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0xc
	.byte	0x76
	.sleb128 0
	.byte	0x7f
	.sleb128 -1
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x26
	.byte	0x31
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL31
	.uaword	.LFE1
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL7
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x3
	.byte	0x8
	.byte	0x58
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL12
	.uaword	.LVL22
	.uahalf	0x3
	.byte	0x79
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL22
	.uaword	.LVL31
	.uahalf	0x3
	.byte	0x79
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL31
	.uaword	.LVL32
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL33
	.uaword	.LVL34
	.uahalf	0x1
	.byte	0x63
	.uaword	.LVL34
	.uaword	.LVL35
	.uahalf	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL0
	.uaword	.LVL10
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL14
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL16
	.uaword	.LVL18
	.uahalf	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL31
	.uaword	.LFE1
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL0
	.uaword	.LVL10
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x51
	.uaword	.LVL14
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL16
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL19
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL22
	.uaword	.LVL31-1
	.uahalf	0x1
	.byte	0x51
	.uaword	.LVL31
	.uaword	.LFE1
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL0
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
	.uaword	.LVL28
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL29
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL31
	.uaword	.LFE1
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL0
	.uaword	.LVL10
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL23
	.uaword	.LVL31-1
	.uahalf	0x1c
	.byte	0x79
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x85
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x79
	.sleb128 -1
	.byte	0x31
	.byte	0x24
	.byte	0x85
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL31
	.uaword	.LFE1
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LFE1
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL36
	.uaword	.LVL37
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL37
	.uaword	.LFE2
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL36
	.uaword	.LVL38
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL38
	.uaword	.LVL39
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL39
	.uaword	.LVL45
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL45
	.uaword	.LVL51
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL51
	.uaword	.LFE2
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL44
	.uaword	.LVL45
	.uahalf	0xe
	.byte	0x8f
	.sleb128 0
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x75
	.sleb128 0
	.byte	0x26
	.byte	0x31
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL41
	.uaword	.LVL42
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL42
	.uaword	.LVL43
	.uahalf	0x10
	.byte	0x8f
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x82
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL51
	.uaword	.LFE2
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL46
	.uaword	.LVL51
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL46
	.uaword	.LVL49
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL46
	.uaword	.LVL47
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL47
	.uaword	.LVL50
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL46
	.uaword	.LVL48
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL48
	.uaword	.LVL51
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL46
	.uaword	.LVL51
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL52
	.uaword	.LVL53
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL53
	.uaword	.LVL54
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL54
	.uaword	.LVL57
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL57
	.uaword	.LFE3
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL52
	.uaword	.LVL53
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL53
	.uaword	.LVL54
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL54
	.uaword	.LVL58-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL58-1
	.uaword	.LFE3
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL56
	.uaword	.LVL58-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL59
	.uaword	.LVL62
	.uahalf	0xc
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x7a
	.sleb128 0
	.byte	0x26
	.byte	0x31
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL61
	.uaword	.LVL65
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL65
	.uaword	.LVL66
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL61
	.uaword	.LVL63
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL63
	.uaword	.LFE3
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL61
	.uaword	.LVL64
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL64
	.uaword	.LVL68
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL68
	.uaword	.LVL69
	.uahalf	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL70
	.uaword	.LFE3
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL61
	.uaword	.LVL69
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL61
	.uaword	.LVL67
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL67
	.uaword	.LFE3
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL71
	.uaword	.LVL72
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL72
	.uaword	.LFE5
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL71
	.uaword	.LVL72
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL72
	.uaword	.LVL73
	.uahalf	0x6
	.byte	0x73
	.sleb128 -1
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL73
	.uaword	.LVL74
	.uahalf	0x8
	.byte	0x73
	.sleb128 -1
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	.LVL74
	.uaword	.LVL75
	.uahalf	0x8
	.byte	0x73
	.sleb128 -1
	.byte	0x72
	.sleb128 -1
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL76
	.uaword	.LVL77
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL77
	.uaword	.LFE6
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL76
	.uaword	.LVL77
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL77
	.uaword	.LVL78
	.uahalf	0x6
	.byte	0x73
	.sleb128 -1
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL78
	.uaword	.LVL79
	.uahalf	0x8
	.byte	0x73
	.sleb128 -1
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	.LVL79
	.uaword	.LVL80
	.uahalf	0x8
	.byte	0x73
	.sleb128 -1
	.byte	0x7f
	.sleb128 -1
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL81
	.uaword	.LVL82
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL82
	.uaword	.LVL83
	.uahalf	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL83
	.uaword	.LVL84
	.uahalf	0x6
	.byte	0x73
	.sleb128 -1
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL187
	.uaword	.LVL188
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL188
	.uaword	.LVL189
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL189
	.uaword	.LVL190
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL88
	.uaword	.LVL89
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL89
	.uaword	.LVL90
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL90
	.uaword	.LVL91
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL91
	.uaword	.LVL92
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL93
	.uaword	.LVL94
	.uahalf	0x2
	.byte	0x3a
	.byte	0x9f
	.uaword	.LVL94
	.uaword	.LVL95
	.uahalf	0x2
	.byte	0x3b
	.byte	0x9f
	.uaword	.LVL95
	.uaword	.LVL96
	.uahalf	0x2
	.byte	0x3c
	.byte	0x9f
	.uaword	.LVL96
	.uaword	.LVL97
	.uahalf	0x2
	.byte	0x3d
	.byte	0x9f
	.uaword	.LVL97
	.uaword	.LVL98
	.uahalf	0x2
	.byte	0x3e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL179
	.uaword	.LVL180
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL180
	.uaword	.LVL181
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL181
	.uaword	.LVL182
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL101
	.uaword	.LVL102
	.uahalf	0x3
	.byte	0x8
	.byte	0x99
	.byte	0x9f
	.uaword	.LVL102
	.uaword	.LVL103
	.uahalf	0x3
	.byte	0x8
	.byte	0x9a
	.byte	0x9f
	.uaword	.LVL103
	.uaword	.LVL104
	.uahalf	0x3
	.byte	0x8
	.byte	0x9b
	.byte	0x9f
	.uaword	.LVL104
	.uaword	.LVL105
	.uahalf	0x3
	.byte	0x8
	.byte	0x9c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL106
	.uaword	.LVL107
	.uahalf	0x2
	.byte	0x3f
	.byte	0x9f
	.uaword	.LVL107
	.uaword	.LVL108
	.uahalf	0x2
	.byte	0x40
	.byte	0x9f
	.uaword	.LVL108
	.uaword	.LVL109
	.uahalf	0x2
	.byte	0x41
	.byte	0x9f
	.uaword	.LVL109
	.uaword	.LVL110
	.uahalf	0x2
	.byte	0x42
	.byte	0x9f
	.uaword	.LVL110
	.uaword	.LVL111
	.uahalf	0x2
	.byte	0x43
	.byte	0x9f
	.uaword	.LVL111
	.uaword	.LVL112
	.uahalf	0x2
	.byte	0x44
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL114
	.uaword	.LVL115
	.uahalf	0x3
	.byte	0x8
	.byte	0x57
	.byte	0x9f
	.uaword	.LVL115
	.uaword	.LVL128
	.uahalf	0x3
	.byte	0x8
	.byte	0x58
	.byte	0x9f
	.uaword	.LVL203
	.uaword	.LVL204
	.uahalf	0x3
	.byte	0x8
	.byte	0x4d
	.byte	0x9f
	.uaword	.LVL204
	.uaword	.LVL205
	.uahalf	0x3
	.byte	0x8
	.byte	0x4e
	.byte	0x9f
	.uaword	.LVL205
	.uaword	.LVL206
	.uahalf	0x3
	.byte	0x8
	.byte	0x4f
	.byte	0x9f
	.uaword	.LVL206
	.uaword	.LVL207
	.uahalf	0x3
	.byte	0x8
	.byte	0x50
	.byte	0x9f
	.uaword	.LVL207
	.uaword	.LVL208
	.uahalf	0x3
	.byte	0x8
	.byte	0x51
	.byte	0x9f
	.uaword	.LVL208
	.uaword	.LVL209
	.uahalf	0x3
	.byte	0x8
	.byte	0x52
	.byte	0x9f
	.uaword	.LVL209
	.uaword	.LVL210
	.uahalf	0x3
	.byte	0x8
	.byte	0x53
	.byte	0x9f
	.uaword	.LVL210
	.uaword	.LVL211
	.uahalf	0x3
	.byte	0x8
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL211
	.uaword	.LVL212
	.uahalf	0x3
	.byte	0x8
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL212
	.uaword	.LVL213
	.uahalf	0x3
	.byte	0x8
	.byte	0x57
	.byte	0x9f
	.uaword	.LVL213
	.uaword	.LFE8
	.uahalf	0x3
	.byte	0x8
	.byte	0x58
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL116
	.uaword	.LVL117
	.uahalf	0x3
	.byte	0x8
	.byte	0xc2
	.byte	0x9f
	.uaword	.LVL117
	.uaword	.LVL118
	.uahalf	0x3
	.byte	0x8
	.byte	0xc3
	.byte	0x9f
	.uaword	.LVL118
	.uaword	.LVL119
	.uahalf	0x3
	.byte	0x8
	.byte	0xc4
	.byte	0x9f
	.uaword	.LVL119
	.uaword	.LVL120
	.uahalf	0x3
	.byte	0x8
	.byte	0xc5
	.byte	0x9f
	.uaword	.LVL121
	.uaword	.LVL122
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL122
	.uaword	.LVL123
	.uahalf	0x3
	.byte	0x76
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL123
	.uaword	.LVL124
	.uahalf	0x3
	.byte	0x76
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL124
	.uaword	.LVL125
	.uahalf	0x3
	.byte	0x76
	.sleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL126
	.uaword	.LVL127
	.uahalf	0x2
	.byte	0x44
	.byte	0x9f
	.uaword	.LVL127
	.uaword	.LVL128
	.uahalf	0x2
	.byte	0x45
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL199
	.uaword	.LVL200
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL200
	.uaword	.LVL201
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL201
	.uaword	.LVL202
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL129
	.uaword	.LVL130
	.uahalf	0x3
	.byte	0x8
	.byte	0x58
	.byte	0x9f
	.uaword	.LVL130
	.uaword	.LVL154
	.uahalf	0x3
	.byte	0x8
	.byte	0x59
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST42:
	.uaword	.LVL130
	.uaword	.LVL131
	.uahalf	0x3
	.byte	0x8
	.byte	0x29
	.byte	0x9f
	.uaword	.LVL131
	.uaword	.LVL132
	.uahalf	0x3
	.byte	0x8
	.byte	0x2a
	.byte	0x9f
	.uaword	.LVL132
	.uaword	.LVL133
	.uahalf	0x3
	.byte	0x8
	.byte	0x2b
	.byte	0x9f
	.uaword	.LVL133
	.uaword	.LVL134
	.uahalf	0x3
	.byte	0x8
	.byte	0x2c
	.byte	0x9f
	.uaword	.LVL135
	.uaword	.LVL136
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL136
	.uaword	.LVL137
	.uahalf	0x3
	.byte	0x76
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL137
	.uaword	.LVL138
	.uahalf	0x3
	.byte	0x76
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL138
	.uaword	.LVL139
	.uahalf	0x3
	.byte	0x76
	.sleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST43:
	.uaword	.LVL140
	.uaword	.LVL141
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x11a
	.byte	0x9f
	.uaword	.LVL141
	.uaword	.LVL142
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x11b
	.byte	0x9f
	.uaword	.LVL142
	.uaword	.LVL143
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x11c
	.byte	0x9f
	.uaword	.LVL143
	.uaword	.LVL144
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x11d
	.byte	0x9f
	.uaword	.LVL144
	.uaword	.LVL145
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x11e
	.byte	0x9f
	.uaword	.LVL145
	.uaword	.LVL146
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x11f
	.byte	0x9f
	.uaword	.LVL146
	.uaword	.LVL147
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x120
	.byte	0x9f
	.uaword	.LVL147
	.uaword	.LVL148
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x121
	.byte	0x9f
	.uaword	.LVL148
	.uaword	.LVL154
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x122
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST44:
	.uaword	.LVL148
	.uaword	.LVL149
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL149
	.uaword	.LVL150
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL150
	.uaword	.LVL151
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL151
	.uaword	.LVL152
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL152
	.uaword	.LVL153
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL153
	.uaword	.LVL154
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST45:
	.uaword	.LVL156
	.uaword	.LVL157
	.uahalf	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0x9f
	.uaword	.LVL195
	.uaword	.LVL196
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL196
	.uaword	.LVL197
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL197
	.uaword	.LVL198
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST46:
	.uaword	.LVL158
	.uaword	.LVL159
	.uahalf	0x3
	.byte	0x8
	.byte	0x5d
	.byte	0x9f
	.uaword	.LVL159
	.uaword	.LVL160
	.uahalf	0x3
	.byte	0x8
	.byte	0x5e
	.byte	0x9f
	.uaword	.LVL160
	.uaword	.LVL161
	.uahalf	0x3
	.byte	0x8
	.byte	0x5f
	.byte	0x9f
	.uaword	.LVL161
	.uaword	.LVL162
	.uahalf	0x3
	.byte	0x8
	.byte	0x60
	.byte	0x9f
	.uaword	.LVL163
	.uaword	.LVL164
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL164
	.uaword	.LVL165
	.uahalf	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL165
	.uaword	.LVL166
	.uahalf	0x3
	.byte	0x75
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL166
	.uaword	.LVL167
	.uahalf	0x3
	.byte	0x75
	.sleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST47:
	.uaword	.LVL168
	.uaword	.LVL169
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL169
	.uaword	.LVL170
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	.LVL170
	.uaword	.LVL171
	.uahalf	0x2
	.byte	0x37
	.byte	0x9f
	.uaword	.LVL171
	.uaword	.LVL172
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	.LVL172
	.uaword	.LVL173
	.uahalf	0x2
	.byte	0x39
	.byte	0x9f
	.uaword	.LVL173
	.uaword	.LVL174
	.uahalf	0x2
	.byte	0x3a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST48:
	.uaword	.LVL175
	.uaword	.LVL176
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL176
	.uaword	.LVL177
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL177
	.uaword	.LVL178
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST49:
	.uaword	.LVL183
	.uaword	.LVL184
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL184
	.uaword	.LVL185
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL185
	.uaword	.LVL186
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST50:
	.uaword	.LVL155
	.uaword	.LVL157
	.uahalf	0x3
	.byte	0x8
	.byte	0x3b
	.byte	0x9f
	.uaword	.LVL191
	.uaword	.LVL192
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL192
	.uaword	.LVL193
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL193
	.uaword	.LVL194
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST51:
	.uaword	.LVL214
	.uaword	.LVL215
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL215
	.uaword	.LVL216
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL216
	.uaword	.LVL217
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL217
	.uaword	.LVL218
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL218
	.uaword	.LVL219
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL219
	.uaword	.LVL220
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL220
	.uaword	.LVL221
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	.LVL221
	.uaword	.LVL222
	.uahalf	0x2
	.byte	0x37
	.byte	0x9f
	.uaword	.LVL222
	.uaword	.LVL223
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	.LVL223
	.uaword	.LVL224
	.uahalf	0x2
	.byte	0x3a
	.byte	0x9f
	.uaword	.LVL224
	.uaword	.LVL316
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL316
	.uaword	.LVL317
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL317
	.uaword	.LVL318
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL318
	.uaword	.LVL319
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL319
	.uaword	.LVL320
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL320
	.uaword	.LVL321
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL321
	.uaword	.LVL322
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	.LVL322
	.uaword	.LVL323
	.uahalf	0x2
	.byte	0x37
	.byte	0x9f
	.uaword	.LVL323
	.uaword	.LVL324
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	.LVL324
	.uaword	.LVL325
	.uahalf	0x2
	.byte	0x39
	.byte	0x9f
	.uaword	.LVL325
	.uaword	.LVL326
	.uahalf	0x2
	.byte	0x3a
	.byte	0x9f
	.uaword	.LVL326
	.uaword	.LFE9
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST52:
	.uaword	.LVL225
	.uaword	.LVL226
	.uahalf	0x2
	.byte	0x42
	.byte	0x9f
	.uaword	.LVL326
	.uaword	.LVL327
	.uahalf	0x2
	.byte	0x42
	.byte	0x9f
	.uaword	.LVL327
	.uaword	.LVL328
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL328
	.uaword	.LVL329
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL329
	.uaword	.LVL330
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST53:
	.uaword	.LVL227
	.uaword	.LVL228
	.uahalf	0x3
	.byte	0x8
	.byte	0x58
	.byte	0x9f
	.uaword	.LVL228
	.uaword	.LVL326
	.uahalf	0x3
	.byte	0x8
	.byte	0x59
	.byte	0x9f
	.uaword	.LVL331
	.uaword	.LFE9
	.uahalf	0x3
	.byte	0x8
	.byte	0x59
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST54:
	.uaword	.LVL228
	.uaword	.LVL229
	.uahalf	0x3
	.byte	0x8
	.byte	0x29
	.byte	0x9f
	.uaword	.LVL229
	.uaword	.LVL230
	.uahalf	0x3
	.byte	0x8
	.byte	0x2a
	.byte	0x9f
	.uaword	.LVL230
	.uaword	.LVL231
	.uahalf	0x3
	.byte	0x8
	.byte	0x2b
	.byte	0x9f
	.uaword	.LVL231
	.uaword	.LVL232
	.uahalf	0x3
	.byte	0x8
	.byte	0x2c
	.byte	0x9f
	.uaword	.LVL233
	.uaword	.LVL234
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL234
	.uaword	.LVL235
	.uahalf	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL235
	.uaword	.LVL236
	.uahalf	0x3
	.byte	0x75
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL236
	.uaword	.LVL237
	.uahalf	0x3
	.byte	0x75
	.sleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST55:
	.uaword	.LVL238
	.uaword	.LVL239
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x11a
	.byte	0x9f
	.uaword	.LVL239
	.uaword	.LVL240
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x11b
	.byte	0x9f
	.uaword	.LVL240
	.uaword	.LVL241
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x11c
	.byte	0x9f
	.uaword	.LVL241
	.uaword	.LVL242
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x11d
	.byte	0x9f
	.uaword	.LVL242
	.uaword	.LVL243
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x11e
	.byte	0x9f
	.uaword	.LVL243
	.uaword	.LVL244
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x11f
	.byte	0x9f
	.uaword	.LVL244
	.uaword	.LVL245
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x120
	.byte	0x9f
	.uaword	.LVL245
	.uaword	.LVL246
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x121
	.byte	0x9f
	.uaword	.LVL246
	.uaword	.LVL326
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x122
	.byte	0x9f
	.uaword	.LVL331
	.uaword	.LFE9
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x122
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST56:
	.uaword	.LVL246
	.uaword	.LVL247
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL247
	.uaword	.LVL248
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL248
	.uaword	.LVL249
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL249
	.uaword	.LVL250
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL250
	.uaword	.LVL251
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL251
	.uaword	.LVL326
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL331
	.uaword	.LFE9
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST57:
	.uaword	.LVL252
	.uaword	.LVL326
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL331
	.uaword	.LFE9
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST58:
	.uaword	.LVL254
	.uaword	.LVL255
	.uahalf	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0x9f
	.uaword	.LVL347
	.uaword	.LVL348
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL348
	.uaword	.LVL349
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL349
	.uaword	.LVL350
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST59:
	.uaword	.LVL256
	.uaword	.LVL257
	.uahalf	0x3
	.byte	0x8
	.byte	0x5d
	.byte	0x9f
	.uaword	.LVL257
	.uaword	.LVL258
	.uahalf	0x3
	.byte	0x8
	.byte	0x5e
	.byte	0x9f
	.uaword	.LVL258
	.uaword	.LVL259
	.uahalf	0x3
	.byte	0x8
	.byte	0x5f
	.byte	0x9f
	.uaword	.LVL259
	.uaword	.LVL260
	.uahalf	0x3
	.byte	0x8
	.byte	0x60
	.byte	0x9f
	.uaword	.LVL261
	.uaword	.LVL262
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL262
	.uaword	.LVL263
	.uahalf	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL263
	.uaword	.LVL264
	.uahalf	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL264
	.uaword	.LVL265
	.uahalf	0x3
	.byte	0x74
	.sleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST60:
	.uaword	.LVL266
	.uaword	.LVL267
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL267
	.uaword	.LVL268
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	.LVL268
	.uaword	.LVL269
	.uahalf	0x2
	.byte	0x37
	.byte	0x9f
	.uaword	.LVL269
	.uaword	.LVL270
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	.LVL270
	.uaword	.LVL271
	.uahalf	0x2
	.byte	0x39
	.byte	0x9f
	.uaword	.LVL271
	.uaword	.LVL326
	.uahalf	0x2
	.byte	0x3a
	.byte	0x9f
	.uaword	.LVL331
	.uaword	.LVL342
	.uahalf	0x2
	.byte	0x3a
	.byte	0x9f
	.uaword	.LVL351
	.uaword	.LFE9
	.uahalf	0x2
	.byte	0x3a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST61:
	.uaword	.LVL252
	.uaword	.LVL253
	.uahalf	0x3
	.byte	0x8
	.byte	0x26
	.byte	0x9f
	.uaword	.LVL253
	.uaword	.LVL255
	.uahalf	0x3
	.byte	0x8
	.byte	0x3b
	.byte	0x9f
	.uaword	.LVL342
	.uaword	.LVL343
	.uahalf	0x3
	.byte	0x8
	.byte	0x26
	.byte	0x9f
	.uaword	.LVL343
	.uaword	.LVL344
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL344
	.uaword	.LVL345
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL345
	.uaword	.LVL346
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST62:
	.uaword	.LVL272
	.uaword	.LVL326
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL331
	.uaword	.LVL342
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL351
	.uaword	.LFE9
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST63:
	.uaword	.LVL365
	.uaword	.LVL366
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL366
	.uaword	.LVL367
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL367
	.uaword	.LVL368
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST64:
	.uaword	.LVL275
	.uaword	.LVL276
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL276
	.uaword	.LVL277
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL277
	.uaword	.LVL278
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL278
	.uaword	.LVL279
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST65:
	.uaword	.LVL280
	.uaword	.LVL281
	.uahalf	0x2
	.byte	0x3a
	.byte	0x9f
	.uaword	.LVL281
	.uaword	.LVL282
	.uahalf	0x2
	.byte	0x3b
	.byte	0x9f
	.uaword	.LVL282
	.uaword	.LVL283
	.uahalf	0x2
	.byte	0x3c
	.byte	0x9f
	.uaword	.LVL283
	.uaword	.LVL284
	.uahalf	0x2
	.byte	0x3d
	.byte	0x9f
	.uaword	.LVL284
	.uaword	.LVL285
	.uahalf	0x2
	.byte	0x3e
	.byte	0x9f
	.uaword	.LVL285
	.uaword	.LVL326
	.uahalf	0x2
	.byte	0x3f
	.byte	0x9f
	.uaword	.LVL331
	.uaword	.LVL342
	.uahalf	0x2
	.byte	0x3f
	.byte	0x9f
	.uaword	.LVL351
	.uaword	.LVL360
	.uahalf	0x2
	.byte	0x3f
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST66:
	.uaword	.LVL272
	.uaword	.LVL273
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL360
	.uaword	.LVL361
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL361
	.uaword	.LVL362
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL362
	.uaword	.LVL363
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL363
	.uaword	.LVL364
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST67:
	.uaword	.LVL286
	.uaword	.LVL326
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL331
	.uaword	.LVL342
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL351
	.uaword	.LVL360
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST68:
	.uaword	.LVL356
	.uaword	.LVL357
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL357
	.uaword	.LVL358
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL358
	.uaword	.LVL359
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST69:
	.uaword	.LVL289
	.uaword	.LVL290
	.uahalf	0x3
	.byte	0x8
	.byte	0x99
	.byte	0x9f
	.uaword	.LVL290
	.uaword	.LVL291
	.uahalf	0x3
	.byte	0x8
	.byte	0x9a
	.byte	0x9f
	.uaword	.LVL291
	.uaword	.LVL292
	.uahalf	0x3
	.byte	0x8
	.byte	0x9b
	.byte	0x9f
	.uaword	.LVL292
	.uaword	.LVL293
	.uahalf	0x3
	.byte	0x8
	.byte	0x9c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST70:
	.uaword	.LVL294
	.uaword	.LVL295
	.uahalf	0x2
	.byte	0x3f
	.byte	0x9f
	.uaword	.LVL295
	.uaword	.LVL296
	.uahalf	0x2
	.byte	0x40
	.byte	0x9f
	.uaword	.LVL296
	.uaword	.LVL297
	.uahalf	0x2
	.byte	0x41
	.byte	0x9f
	.uaword	.LVL297
	.uaword	.LVL298
	.uahalf	0x2
	.byte	0x42
	.byte	0x9f
	.uaword	.LVL298
	.uaword	.LVL299
	.uahalf	0x2
	.byte	0x43
	.byte	0x9f
	.uaword	.LVL299
	.uaword	.LVL326
	.uahalf	0x2
	.byte	0x44
	.byte	0x9f
	.uaword	.LVL331
	.uaword	.LVL342
	.uahalf	0x2
	.byte	0x44
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST71:
	.uaword	.LVL286
	.uaword	.LVL287
	.uahalf	0x3
	.byte	0x8
	.byte	0x3b
	.byte	0x9f
	.uaword	.LVL351
	.uaword	.LVL352
	.uahalf	0x3
	.byte	0x8
	.byte	0x3b
	.byte	0x9f
	.uaword	.LVL352
	.uaword	.LVL353
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL353
	.uaword	.LVL354
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL354
	.uaword	.LVL355
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST72:
	.uaword	.LVL300
	.uaword	.LVL326
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL331
	.uaword	.LVL342
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST73:
	.uaword	.LVL302
	.uaword	.LVL303
	.uahalf	0x3
	.byte	0x8
	.byte	0x57
	.byte	0x9f
	.uaword	.LVL303
	.uaword	.LVL326
	.uahalf	0x3
	.byte	0x8
	.byte	0x58
	.byte	0x9f
	.uaword	.LVL331
	.uaword	.LVL332
	.uahalf	0x3
	.byte	0x8
	.byte	0x4d
	.byte	0x9f
	.uaword	.LVL332
	.uaword	.LVL333
	.uahalf	0x3
	.byte	0x8
	.byte	0x4e
	.byte	0x9f
	.uaword	.LVL333
	.uaword	.LVL334
	.uahalf	0x3
	.byte	0x8
	.byte	0x4f
	.byte	0x9f
	.uaword	.LVL334
	.uaword	.LVL335
	.uahalf	0x3
	.byte	0x8
	.byte	0x50
	.byte	0x9f
	.uaword	.LVL335
	.uaword	.LVL336
	.uahalf	0x3
	.byte	0x8
	.byte	0x51
	.byte	0x9f
	.uaword	.LVL336
	.uaword	.LVL337
	.uahalf	0x3
	.byte	0x8
	.byte	0x52
	.byte	0x9f
	.uaword	.LVL337
	.uaword	.LVL338
	.uahalf	0x3
	.byte	0x8
	.byte	0x53
	.byte	0x9f
	.uaword	.LVL338
	.uaword	.LVL339
	.uahalf	0x3
	.byte	0x8
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL339
	.uaword	.LVL340
	.uahalf	0x3
	.byte	0x8
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL340
	.uaword	.LVL341
	.uahalf	0x3
	.byte	0x8
	.byte	0x57
	.byte	0x9f
	.uaword	.LVL341
	.uaword	.LVL342
	.uahalf	0x3
	.byte	0x8
	.byte	0x58
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST74:
	.uaword	.LVL304
	.uaword	.LVL305
	.uahalf	0x3
	.byte	0x8
	.byte	0xc2
	.byte	0x9f
	.uaword	.LVL305
	.uaword	.LVL306
	.uahalf	0x3
	.byte	0x8
	.byte	0xc3
	.byte	0x9f
	.uaword	.LVL306
	.uaword	.LVL307
	.uahalf	0x3
	.byte	0x8
	.byte	0xc4
	.byte	0x9f
	.uaword	.LVL307
	.uaword	.LVL308
	.uahalf	0x3
	.byte	0x8
	.byte	0xc5
	.byte	0x9f
	.uaword	.LVL309
	.uaword	.LVL310
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL310
	.uaword	.LVL311
	.uahalf	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL311
	.uaword	.LVL312
	.uahalf	0x3
	.byte	0x75
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL312
	.uaword	.LVL313
	.uahalf	0x3
	.byte	0x75
	.sleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST75:
	.uaword	.LVL314
	.uaword	.LVL315
	.uahalf	0x2
	.byte	0x44
	.byte	0x9f
	.uaword	.LVL315
	.uaword	.LVL326
	.uahalf	0x2
	.byte	0x45
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST76:
	.uaword	.LVL370
	.uaword	.LVL371
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL371
	.uaword	.LVL372
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL372
	.uaword	.LVL373
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL373
	.uaword	.LVL374
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL374
	.uaword	.LFE10
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x64
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB1
	.uaword	.LFE1-.LFB1
	.uaword	.LFB2
	.uaword	.LFE2-.LFB2
	.uaword	.LFB3
	.uaword	.LFE3-.LFB3
	.uaword	.LFB4
	.uaword	.LFE4-.LFB4
	.uaword	.LFB5
	.uaword	.LFE5-.LFB5
	.uaword	.LFB6
	.uaword	.LFE6-.LFB6
	.uaword	.LFB7
	.uaword	.LFE7-.LFB7
	.uaword	.LFB8
	.uaword	.LFE8-.LFB8
	.uaword	.LFB9
	.uaword	.LFE9-.LFB9
	.uaword	.LFB10
	.uaword	.LFE10-.LFB10
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB262
	.uaword	.LBE262
	.uaword	.LBB310
	.uaword	.LBE310
	.uaword	0
	.uaword	0
	.uaword	.LBB269
	.uaword	.LBE269
	.uaword	.LBB307
	.uaword	.LBE307
	.uaword	0
	.uaword	0
	.uaword	.LBB276
	.uaword	.LBE276
	.uaword	.LBB315
	.uaword	.LBE315
	.uaword	0
	.uaword	0
	.uaword	.LBB283
	.uaword	.LBE283
	.uaword	.LBB314
	.uaword	.LBE314
	.uaword	0
	.uaword	0
	.uaword	.LBB290
	.uaword	.LBE290
	.uaword	.LBB296
	.uaword	.LBE296
	.uaword	0
	.uaword	0
	.uaword	.LBB293
	.uaword	.LBE293
	.uaword	.LBB297
	.uaword	.LBE297
	.uaword	0
	.uaword	0
	.uaword	.LBB298
	.uaword	.LBE298
	.uaword	.LBB313
	.uaword	.LBE313
	.uaword	0
	.uaword	0
	.uaword	.LBB536
	.uaword	.LBE536
	.uaword	.LBB620
	.uaword	.LBE620
	.uaword	.LBB622
	.uaword	.LBE622
	.uaword	0
	.uaword	0
	.uaword	.LBB538
	.uaword	.LBE538
	.uaword	.LBB555
	.uaword	.LBE555
	.uaword	0
	.uaword	0
	.uaword	.LBB545
	.uaword	.LBE545
	.uaword	.LBB553
	.uaword	.LBE553
	.uaword	0
	.uaword	0
	.uaword	.LBB548
	.uaword	.LBE548
	.uaword	.LBB552
	.uaword	.LBE552
	.uaword	.LBB554
	.uaword	.LBE554
	.uaword	0
	.uaword	0
	.uaword	.LBB558
	.uaword	.LBE558
	.uaword	.LBB623
	.uaword	.LBE623
	.uaword	.LBB626
	.uaword	.LBE626
	.uaword	0
	.uaword	0
	.uaword	.LBB560
	.uaword	.LBE560
	.uaword	.LBB571
	.uaword	.LBE571
	.uaword	0
	.uaword	0
	.uaword	.LBB565
	.uaword	.LBE565
	.uaword	.LBB568
	.uaword	.LBE568
	.uaword	0
	.uaword	0
	.uaword	.LBB574
	.uaword	.LBE574
	.uaword	.LBB624
	.uaword	.LBE624
	.uaword	.LBB627
	.uaword	.LBE627
	.uaword	0
	.uaword	0
	.uaword	.LBB576
	.uaword	.LBE576
	.uaword	.LBB587
	.uaword	.LBE587
	.uaword	0
	.uaword	0
	.uaword	.LBB581
	.uaword	.LBE581
	.uaword	.LBB584
	.uaword	.LBE584
	.uaword	0
	.uaword	0
	.uaword	.LBB590
	.uaword	.LBE590
	.uaword	.LBB625
	.uaword	.LBE625
	.uaword	0
	.uaword	0
	.uaword	.LBB592
	.uaword	.LBE592
	.uaword	.LBB603
	.uaword	.LBE603
	.uaword	0
	.uaword	0
	.uaword	.LBB597
	.uaword	.LBE597
	.uaword	.LBB600
	.uaword	.LBE600
	.uaword	0
	.uaword	0
	.uaword	.LBB605
	.uaword	.LBE605
	.uaword	.LBB619
	.uaword	.LBE619
	.uaword	.LBB621
	.uaword	.LBE621
	.uaword	0
	.uaword	0
	.uaword	.LBB607
	.uaword	.LBE607
	.uaword	.LBB616
	.uaword	.LBE616
	.uaword	0
	.uaword	0
	.uaword	.LBB612
	.uaword	.LBE612
	.uaword	.LBB615
	.uaword	.LBE615
	.uaword	0
	.uaword	0
	.uaword	.LFB1
	.uaword	.LFE1
	.uaword	.LFB2
	.uaword	.LFE2
	.uaword	.LFB3
	.uaword	.LFE3
	.uaword	.LFB4
	.uaword	.LFE4
	.uaword	.LFB5
	.uaword	.LFE5
	.uaword	.LFB6
	.uaword	.LFE6
	.uaword	.LFB7
	.uaword	.LFE7
	.uaword	.LFB8
	.uaword	.LFE8
	.uaword	.LFB9
	.uaword	.LFE9
	.uaword	.LFB10
	.uaword	.LFE10
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF8:
	.string	"localFaultCount"
.LASF0:
	.string	"ku16SegStart"
.LASF6:
	.string	"localFaultTypeAut"
.LASF1:
	.string	"ku16SegEnd"
.LASF2:
	.string	"u16Index"
.LASF7:
	.string	"localFaultLogged"
.LASF4:
	.string	"Function"
.LASF5:
	.string	"localFaultOffset"
.LASF3:
	.string	"u8LocMotorIndex"
	.extern	DSM_DtcNumber,STT_OBJECT,40
	.extern	DSM_DtcSavedFreezeFrameNvm,STT_OBJECT,2280
	.extern	FaultEraseRequestC,STT_OBJECT,2
	.extern	FaultFunctionTypeIrrArray,STT_OBJECT,178
	.extern	DSM_vidClrDtcStsTFBit,STT_FUNC,0
	.extern	FaultFunctionTypeDecs,STT_OBJECT,290
	.extern	FaultFunctionTypeFailModTable,STT_OBJECT,290
	.extern	FaultRecordDTC,STT_FUNC,0
	.extern	FaultFunctionTypeIncs,STT_OBJECT,290
	.extern	DSM_vidDtcStsInit,STT_FUNC,0
	.extern	FaultFailModCounterTable,STT_OBJECT,21
	.extern	FaultTableFuncTypeCounter1,STT_OBJECT,290
	.extern	FaultFunctionTypeCntIgnArray,STT_OBJECT,178
	.extern	FaultFunctionTypeOffsetTable,STT_OBJECT,180
	.extern	FaultFunctionTypeAuthorizedArray,STT_OBJECT,178
	.extern	FaultFunctionTypeAutInitArray,STT_OBJECT,178
	.extern	FaultFunctionTypeLogIgnArray,STT_OBJECT,178
	.extern	FaultEraseRequest,STT_OBJECT,2
	.extern	FaultFunctionTypeDetectedArray,STT_OBJECT,178
	.extern	FaultFunctionTypeLoggedArray,STT_OBJECT,178
	.extern	DSM_FaultFailureLevel,STT_OBJECT,6
	.extern	FaultFailureLevel,STT_OBJECT,1
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
