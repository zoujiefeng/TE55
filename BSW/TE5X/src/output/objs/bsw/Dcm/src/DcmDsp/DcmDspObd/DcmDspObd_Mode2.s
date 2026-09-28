	.file	"DcmDspObd_Mode2.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Dcm_DcmObdMode02,"ax",@progbits
	.align 1
	.global	Dcm_DcmObdMode02
	.type	Dcm_DcmObdMode02, @function
Dcm_DcmObdMode02:
.LFB67:
	.file 1 "bsw\\Dcm\\src\\DcmDsp\\DcmDspObd\\DcmDspObd_Mode2.c"
	.loc 1 380 0
.LVL0:
	.loc 1 389 0
	mov	%d15, 0
	st.b	[%a5]0, %d15
	.loc 1 392 0
	ld.w	%d3, [%a4] 16
.LVL1:
	.loc 1 380 0
	sub.a	%SP, 56
.LCFI0:
	.loc 1 398 0
	mov	%d2, 1
	.loc 1 411 0
	andn	%d4, %d3, ~(-5)
.LVL2:
	.loc 1 390 0
	mov	%d15, 0
	.loc 1 398 0
	st.b	[%SP] 24, %d2
	.loc 1 412 0
	eq	%d2, %d4, 2
	.loc 1 390 0
	st.w	[%SP] 44, %d15
	.loc 1 391 0
	st.b	[%SP] 21, %d15
	.loc 1 393 0
	st.b	[%SP] 29, %d15
	.loc 1 394 0
	st.w	[%SP] 52, %d15
	.loc 1 395 0
	st.b	[%SP] 26, %d15
	.loc 1 399 0
	st.b	[%SP] 31, %d15
	.loc 1 400 0
	st.b	[%SP] 28, %d15
	.loc 1 403 0
	st.b	[%SP] 25, %d15
.LVL3:
	.loc 1 412 0
	or.eq	%d2, %d3, 4
	jnz	%d2, .L73
.LVL4:
.L2:
	.loc 1 502 0
	mov	%d15, 18
	st.b	[%a5]0, %d15
.LVL5:
	mov	%d2, 1
.LVL6:
	ret
.LVL7:
.L73:
	.loc 1 420 0
	st.b	[%SP] 30, %d15
	.loc 1 416 0
	ld.a	%a3, [%a4] 4
.LVL8:
	.loc 1 420 0
	jz	%d3, .L39
	mov	%d2, 0
.L6:
	.loc 1 426 0
	addsc.a	%a15, %a3, %d15, 0
	ld.bu	%d15, [%a15]0
	and	%d15, %d15, 31
	jnz	%d15, .L4
	.loc 1 433 0
	ld.bu	%d15, [%SP] 26
	add	%d15, 1
	st.b	[%SP] 26, %d15
.L4:
	.loc 1 437 0
	ld.bu	%d15, [%a15] 1
	jnz	%d15, .L5
	.loc 1 440 0
	ld.bu	%d15, [%SP] 29
	lea	%a6, [%SP] 21
	addsc.a	%a2, %a6, %d15, 0
	ld.bu	%d4, [%a15]0
	.loc 1 443 0
	add	%d15, 1
	.loc 1 440 0
	st.b	[%a2]0, %d4
	.loc 1 443 0
	st.b	[%SP] 29, %d15
.L5:
	add	%d2, 1
	sh	%d15, %d2, 1
	and	%d15, 255
	.loc 1 420 0 discriminator 2
	st.b	[%SP] 30, %d15
	jlt.u	%d15, %d3, .L6
	ld.bu	%d5, [%SP] 26
	.loc 1 450 0
	jz	%d5, .L3
	.loc 1 450 0 is_stmt 0 discriminator 1
	extr.u	%d3, %d3, 1, 8
.LVL9:
	jne	%d3, %d5, .L2
.L3:
	.loc 1 458 0 is_stmt 1
	mov	%d15, 18
	.loc 1 454 0
	ld.a	%a12, [%a4]0
.LVL10:
	.loc 1 458 0
	st.b	[%a5]0, %d15
.LVL11:
	.loc 1 461 0
	ld.w	%d2, [%a4] 20
	.loc 1 466 0
	mov	%d15, 0
	ld.bu	%d4, [%SP] 29
	st.b	[%SP] 30, %d15
	st.a	[%SP] 8, %a5
	st.a	[%SP] 12, %a4
	.loc 1 461 0
	st.w	[%SP] 48, %d2
	.loc 1 466 0
	mov	%d15, 0
	jz	%d4, .L7
	movh.a	%a14, hi:Dcm_Dsp_Mode2Bitmask_acs
	movh	%d10, hi:Dcm_Dsp_Mode2PidArray_acs
	movh.a	%a13, hi:Dcm_Dsp_Mode2DataSourcePid_acs
	mov	%d0, 0
	lea	%a14, [%a14] lo:Dcm_Dsp_Mode2Bitmask_acs
	addi	%d10, %d10, lo:Dcm_Dsp_Mode2PidArray_acs
	lea	%a13, [%a13] lo:Dcm_Dsp_Mode2DataSourcePid_acs
	j	.L33
.LVL12:
.L75:
.LBB12:
.LBB13:
	.loc 1 249 0
	jz	%d3, .L9
	.loc 1 252 0
	ld.w	%d15, [%SP] 48
	jge.u	%d15, 6, .L74
	.loc 1 282 0
	ld.a	%a15, [%SP] 8
	mov	%d15, 18
	ld.bu	%d4, [%SP] 29
	ld.bu	%d0, [%SP] 30
	st.b	[%a15]0, %d15
.LVL13:
.L9:
.LBE13:
.LBE12:
	.loc 1 467 0
	add	%d15, %d0, 1
	and	%d0, %d15, 255
	st.b	[%SP] 30, %d0
	.loc 1 466 0
	jge.u	%d0, %d4, .L32
.L76:
	ld.bu	%d5, [%SP] 26
.L33:
	.loc 1 470 0
	lea	%a3, [%SP] 21
	addsc.a	%a15, %a3, %d0, 0
	ld.bu	%d2, [%a15]0
	sh	%d3, %d2, -5
	.loc 1 473 0
	addsc.a	%a15, %a14, %d3, 3
	.loc 1 470 0
	st.b	[%SP] 27, %d3
	.loc 1 473 0
	ld.w	%d3, [%a15]0
	st.w	[%SP] 36, %d3
	.loc 1 477 0
	jnz	%d5, .L75
.LVL14:
.LBB15:
.LBB16:
	.loc 1 307 0
	and	%d15, %d2, 31
	rsub	%d4, %d15, 32
	mov	%d15, 1
	sh	%d15, %d15, %d4
	.loc 1 306 0
	st.w	[%SP] 40, %d15
	.loc 1 310 0
	and	%d3, %d15
	jz	%d3, .L70
	.loc 1 314 0
	jeq	%d2, 2, .L12
	ld.bu	%d15, [%SP] 24
	jz	%d15, .L13
.L12:
	.loc 1 323 0
	mov	%d15, 0
	.loc 1 331 0
	mov	%d4, 0
	lea	%a4, [%SP] 44
	mov	%d5, 0
	.loc 1 323 0
	st.b	[%SP] 24, %d15
	.loc 1 331 0
	call	Dem_DcmGetDTCOfOBDFreezeFrame
.LVL15:
	jz	%d2, .L13
	.loc 1 343 0
	ld.bu	%d0, [%SP] 30
	lea	%a2, [%SP] 21
.LVL16:
	addsc.a	%a15, %a2, %d0, 0
	.loc 1 333 0
	mov	%d15, 0
	.loc 1 343 0
	ld.bu	%d3, [%a15]0
	.loc 1 333 0
	st.w	[%SP] 44, %d15
	.loc 1 343 0
	mov	%d2, %d0
	jeq	%d3, 2, .L14
.LVL17:
.L31:
.LBE16:
.LBE15:
	.loc 1 467 0
	add	%d15, %d0, 1
	and	%d0, %d15, 255
	ld.bu	%d4, [%SP] 29
	st.b	[%SP] 30, %d0
	.loc 1 466 0
	jlt.u	%d0, %d4, .L76
.LVL18:
.L32:
	ld.w	%d15, [%SP] 52
.L7:
	.loc 1 495 0
	ld.a	%a2, [%SP] 12
	ld.a	%a3, [%SP] 8
	st.w	[%a2] 12, %d15
	ld.bu	%d2, [%a3]0
	ne	%d2, %d2, 0
	ret
.LVL19:
.L74:
.LBB32:
.LBB14:
	.loc 1 255 0
	ld.a	%a15, [%SP] 52
	add.a	%a15, %a12
	st.b	[%a15]0, %d2
	.loc 1 256 0
	ld.w	%d15, [%SP] 52
	add	%d15, 1
	.loc 1 258 0
	addsc.a	%a15, %a12, %d15, 0
	.loc 1 256 0
	st.w	[%SP] 52, %d15
	.loc 1 258 0
	mov	%d15, 0
	st.b	[%a15]0, %d15
	.loc 1 259 0
	ld.w	%d2, [%SP] 52
	.loc 1 262 0
	ld.bu	%d3, [%SP] 39
	.loc 1 259 0
	add	%d2, 1
	.loc 1 262 0
	addsc.a	%a15, %a12, %d2, 0
	.loc 1 259 0
	st.w	[%SP] 52, %d2
	.loc 1 262 0
	st.b	[%a15]0, %d3
	.loc 1 263 0
	ld.w	%d2, [%SP] 52
	.loc 1 264 0
	ld.hu	%d3, [%SP] 38
	.loc 1 263 0
	add	%d2, 1
	.loc 1 264 0
	addsc.a	%a15, %a12, %d2, 0
	.loc 1 263 0
	st.w	[%SP] 52, %d2
	.loc 1 264 0
	st.b	[%a15]0, %d3
	.loc 1 265 0
	ld.w	%d2, [%SP] 52
	.loc 1 266 0
	ld.w	%d3, [%SP] 36
	.loc 1 265 0
	add	%d2, 1
	.loc 1 266 0
	addsc.a	%a15, %a12, %d2, 0
	.loc 1 265 0
	st.w	[%SP] 52, %d2
	.loc 1 266 0
	sh	%d3, -8
	st.b	[%a15]0, %d3
	.loc 1 267 0
	ld.w	%d2, [%SP] 52
	add	%d2, 1
	st.w	[%SP] 52, %d2
	.loc 1 268 0
	addsc.a	%a15, %a12, %d2, 0
	ld.w	%d2, [%SP] 36
	st.b	[%a15]0, %d2
	.loc 1 269 0
	ld.w	%d2, [%SP] 52
	add	%d2, 1
	st.w	[%SP] 52, %d2
	.loc 1 272 0
	ld.w	%d2, [%SP] 48
	add	%d2, -6
.LVL20:
.L71:
.LBE14:
.LBE32:
.LBB33:
.LBB31:
.LBB17:
.LBB18:
	.loc 1 144 0
	ld.a	%a6, [%SP] 8
	.loc 1 141 0
	st.w	[%SP] 48, %d2
	.loc 1 144 0
	st.b	[%a6]0, %d15
.L70:
	ld.bu	%d4, [%SP] 29
	ld.bu	%d0, [%SP] 30
	j	.L9
.LVL21:
.L13:
.LBE18:
.LBE17:
	.loc 1 343 0
	ld.bu	%d0, [%SP] 30
	lea	%a3, [%SP] 21
.LVL22:
	addsc.a	%a15, %a3, %d0, 0
	mov	%d2, %d0
	ld.bu	%d7, [%a15]0
	jeq	%d7, 2, .L14
.LVL23:
.LBB20:
.LBB21:
	.loc 1 176 0
	ld.w	%d3, [%SP] 44
	insert	%d2, %d3, 0, 8, 16
	xor	%d2, %d3
	jz	%d2, .L31
	.loc 1 186 0
	ld.bu	%d2, [%SP] 27
	ld.bu	%d4, [%SP] 29
	addsc.a	%a15, %a14, %d2, 3
	.loc 1 190 0
	mov	%d2, 0
	.loc 1 186 0
	ld.bu	%d5, [%a15] 4
	.loc 1 198 0
	ld.bu	%d6, [%a15] 5
	.loc 1 190 0
	st.b	[%SP] 25, %d2
	.loc 1 191 0
	st.b	[%SP] 32, %d2
	.loc 1 186 0
	st.b	[%SP] 31, %d5
	.loc 1 197 0
	st.b	[%SP] 28, %d5
	.loc 1 198 0
	add	%d2, %d6, %d5
	mov	%d3, %d5
	.loc 1 197 0
	jge	%d5, %d2, .L9
	mov	%d2, %d5
	mov	%d4, %d7
	.loc 1 206 0
	mov	%d14, 1
.LBB22:
.LBB23:
	.loc 1 77 0
	mov	%d11, 0
	j	.L19
.LVL24:
.L20:
.LBE23:
.LBE22:
	.loc 1 199 0
	add	%d2, 1
	and	%d2, %d2, 255
	st.b	[%SP] 28, %d2
	.loc 1 198 0
	add	%d4, %d5, %d6
	mov	%d3, %d2
	.loc 1 197 0
	jge	%d2, %d4, .L31
	.loc 1 198 0
	ld.bu	%d4, [%SP] 25
	jnz	%d4, .L31
	lea	%a6, [%SP] 21
.LVL25:
	addsc.a	%a15, %a6, %d0, 0
	ld.bu	%d4, [%a15]0
.LVL26:
.L19:
	.loc 1 202 0
	madd	%d7, %d10, %d3, 6
	mov.a	%a15, %d7
	ld.bu	%d3, [%a15]0
	jne	%d3, %d4, .L20
	.loc 1 210 0
	ld.hu	%d3, [%a15] 4
	.loc 1 209 0
	ld.w	%d4, [%SP] 48
	.loc 1 206 0
	st.b	[%SP] 25, %d14
	.loc 1 210 0
	add	%d3, 2
	.loc 1 209 0
	jlt.u	%d4, %d3, .L21
.LVL27:
.LBB26:
.LBB24:
	.loc 1 40 0
	mul	%d6, %d2, 6
	movh.a	%a2, hi:Dcm_Dsp_Mode2PidArray_acs
	lea	%a2, [%a2] lo:Dcm_Dsp_Mode2PidArray_acs
	.loc 1 39 0
	ld.w	%d4, [%SP] 52
	.loc 1 36 0
	ld.hu	%d13, [%a15] 2
.LVL28:
	.loc 1 40 0
	addsc.a	%a15, %a2, %d6, 0
	.loc 1 39 0
	addi	%d5, %d4, 2
	.loc 1 40 0
	ld.hu	%d7, [%a15] 4
	extr.u	%d3, %d5, 0, 16
	add	%d7, %d5
	.loc 1 39 0
	mov	%d5, %d4
	jge.u	%d3, %d7, .L22
	mov	%d7, 0
	addi	%d1, %d4, 3
.LVL29:
.L23:
	.loc 1 43 0
	addsc.a	%a15, %a12, %d3, 0
	.loc 1 40 0
	mov.a	%a3, %d10
	.loc 1 43 0
	st.b	[%a15]0, %d11
.LVL30:
	.loc 1 40 0
	ld.bu	%d2, [%SP] 28
	ld.w	%d4, [%SP] 52
	mul	%d6, %d2, 6
	add	%d3, %d1, %d7
	addi	%d0, %d4, 2
	addsc.a	%a15, %a3, %d6, 0
	extr.u	%d3, %d3, 0, 16
	ld.hu	%d15, [%a15] 4
	mov	%d5, %d4
	add	%d15, %d0
	add	%d7, 1
.LVL31:
	.loc 1 39 0
	jlt.u	%d3, %d15, .L23
	ld.bu	%d0, [%SP] 30
.LVL32:
.L22:
	.loc 1 47 0
	mov.a	%a6, %d10
	addsc.a	%a15, %a6, %d6, 0
	ld.bu	%d3, [%a15] 1
	add	%d3, %d13
	.loc 1 46 0
	jge.u	%d13, %d3, .L24
	add	%d15, %d13, 1
	.loc 1 47 0
	ld.bu	%d3, [%SP] 32
	st.w	[%SP] 4, %d15
	mov	%d8, 0
	jnz	%d3, .L29
.LVL33:
.L59:
	extr.u	%d12, %d8, 0, 16
.LVL34:
	.loc 1 55 0
	lea	%a3, [%SP] 21
.LVL35:
	add	%d2, %d12, %d13
	.loc 1 51 0
	extr.u	%d2, %d2, 0, 16
	.loc 1 55 0
	addsc.a	%a2, %a3, %d0, 0
	.loc 1 51 0
	addsc.a	%a15, %a13, %d2, 2
	.loc 1 55 0
	ld.bu	%d4, [%a2]0
	.loc 1 57 0
	ld.hu	%d15, [%a15] 2
	.loc 1 51 0
	ld.hu	%d9, [%a15]0
	add	%d15, 2
	.loc 1 57 0
	mov.a	%a6, %d15
	addsc.a	%a4, %a6, %d5, 0
	.loc 1 51 0
	and	%d2, %d9, 255
	.loc 1 55 0
	and	%d5, %d8, 255
	add.a	%a4, %a12
	lea	%a5, [%SP] 18
	.loc 1 51 0
	st.h	[%SP] 18, %d2
	.loc 1 55 0
	call	Dem_DcmReadDataOfOBDFreezeFrame
.LVL36:
	.loc 1 54 0
	st.b	[%SP] 32, %d2
	.loc 1 60 0
	jnz	%d2, .L27
	.loc 1 63 0
	ld.hu	%d15, [%SP] 18
	jge.u	%d9, %d15, .L28
	.loc 1 66 0
	st.b	[%SP] 32, %d14
.L27:
.LVL37:
	.loc 1 47 0
	ld.bu	%d2, [%SP] 28
	ld.bu	%d0, [%SP] 30
.LVL38:
.L29:
	ld.bu	%d3, [%SP] 27
	ld.bu	%d5, [%SP] 31
	addsc.a	%a15, %a14, %d3, 3
	ld.bu	%d6, [%a15] 5
	j	.L20
.LVL39:
.L28:
	ld.bu	%d15, [%SP] 28
	ld.w	%d3, [%SP] 4
	madd	%d7, %d10, %d15, 6
	add	%d12, %d3
	extr.u	%d12, %d12, 0, 16
	mov.a	%a15, %d7
	ld.bu	%d0, [%SP] 30
	ld.bu	%d15, [%a15] 1
	add	%d15, %d13
	.loc 1 46 0
	jge.u	%d12, %d15, .L77
	ld.w	%d5, [%SP] 52
	add	%d8, 1
.LVL40:
	j	.L59
.LVL41:
.L77:
	ld.w	%d4, [%SP] 52
.LVL42:
.L36:
	.loc 1 73 0
	lea	%a3, [%SP] 21
.LVL43:
	addsc.a	%a15, %a3, %d0, 0
	addsc.a	%a2, %a12, %d4, 0
	ld.bu	%d15, [%a15]0
	st.b	[%a2]0, %d15
	.loc 1 74 0
	ld.w	%d15, [%SP] 52
	.loc 1 92 0
	ld.a	%a2, [%SP] 8
	.loc 1 74 0
	add	%d15, 1
	.loc 1 77 0
	addsc.a	%a15, %a12, %d15, 0
	.loc 1 74 0
	st.w	[%SP] 52, %d15
	.loc 1 77 0
	st.b	[%a15]0, %d11
	.loc 1 85 0
	ld.bu	%d2, [%SP] 28
	.loc 1 92 0
	st.b	[%a2]0, %d11
	.loc 1 85 0
	madd	%d3, %d10, %d2, 6
	ld.bu	%d0, [%SP] 30
	mov.a	%a15, %d3
	.loc 1 78 0
	ld.w	%d3, [%SP] 52
	.loc 1 85 0
	ld.hu	%d15, [%a15] 4
	.loc 1 78 0
	add	%d3, 1
	.loc 1 85 0
	add	%d3, %d15
	.loc 1 84 0
	st.w	[%SP] 52, %d3
	ld.w	%d3, [%SP] 48
	add	%d3, -2
	.loc 1 89 0
	sub	%d15, %d3, %d15
	.loc 1 88 0
	st.w	[%SP] 48, %d15
	j	.L29
.LVL44:
.L14:
.LBE24:
.LBE26:
.LBE21:
.LBE20:
.LBB29:
.LBB19:
	.loc 1 116 0
	ld.w	%d15, [%SP] 48
	jge.u	%d15, 4, .L78
	.loc 1 150 0
	ld.a	%a15, [%SP] 8
	mov	%d15, 18
	.loc 1 153 0
	st.b	[%SP] 29, %d2
	.loc 1 150 0
	st.b	[%a15]0, %d15
	.loc 1 153 0
	mov	%d4, %d2
	mov	%d0, %d2
	j	.L9
.L78:
	.loc 1 119 0
	ld.a	%a15, [%SP] 52
	mov	%d15, 2
	add.a	%a15, %a12
	st.b	[%a15]0, %d15
	.loc 1 120 0
	ld.w	%d15, [%SP] 52
	add	%d15, 1
	.loc 1 123 0
	addsc.a	%a15, %a12, %d15, 0
	.loc 1 120 0
	st.w	[%SP] 52, %d15
	.loc 1 123 0
	mov	%d15, 0
	st.b	[%a15]0, %d15
	.loc 1 124 0
	ld.w	%d2, [%SP] 52
	.loc 1 135 0
	ld.hu	%d3, [%SP] 46
	.loc 1 124 0
	add	%d2, 1
	.loc 1 135 0
	addsc.a	%a15, %a12, %d2, 0
	.loc 1 124 0
	st.w	[%SP] 52, %d2
	.loc 1 135 0
	st.b	[%a15]0, %d3
	.loc 1 136 0
	ld.w	%d2, [%SP] 52
	.loc 1 137 0
	ld.w	%d3, [%SP] 44
	.loc 1 136 0
	add	%d2, 1
	.loc 1 137 0
	addsc.a	%a15, %a12, %d2, 0
	.loc 1 136 0
	st.w	[%SP] 52, %d2
	.loc 1 137 0
	sh	%d3, -8
	st.b	[%a15]0, %d3
	.loc 1 138 0
	ld.w	%d2, [%SP] 52
	add	%d2, 1
	st.w	[%SP] 52, %d2
	.loc 1 141 0
	ld.w	%d2, [%SP] 48
	add	%d2, -4
	j	.L71
.LVL45:
.L24:
.LBE19:
.LBE29:
.LBB30:
.LBB28:
.LBB27:
.LBB25:
	.loc 1 70 0
	ld.bu	%d3, [%SP] 32
	jz	%d3, .L36
	j	.L29
.LVL46:
.L21:
.LBE25:
.LBE27:
	.loc 1 221 0
	ld.a	%a3, [%SP] 8
	mov	%d2, 18
	.loc 1 209 0
	mov	%d4, %d0
	.loc 1 221 0
	st.b	[%a3]0, %d2
	.loc 1 224 0
	st.b	[%SP] 29, %d0
	j	.L9
.LVL47:
.L39:
.LBE28:
.LBE30:
.LBE31:
.LBE33:
	.loc 1 420 0
	mov	%d5, 0
	j	.L3
.LFE67:
	.size	Dcm_DcmObdMode02, .-Dcm_DcmObdMode02
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
	.uaword	.LFB67
	.uaword	.LFE67-.LFB67
	.byte	0x4
	.uaword	.LCFI0-.LFB67
	.byte	0xe
	.uleb128 0x38
	.align 2
.LEFDE0:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 4 ".\\output\\inc/..\\..\\bsw\\ComStack\\ComStack_Cfg.h"
	.file 5 ".\\output\\inc/..\\..\\rte\\Rte_Type.h"
	.file 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmCore_DslDsd_Pub.h"
	.file 7 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspObd_Mode2_Pub.h"
	.file 8 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\Dsd\\Dcm_Dsd.h"
	.file 9 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\DcmCore\\DcmCoreDslDsd\\DcmCore_DslDsd_Prot.h"
	.file 10 "bsw\\Dcm\\src\\DcmDsp\\DcmDspObd\\DcmDspObd_Mode2_Priv.h"
	.file 11 ".\\output\\inc/..\\..\\bsw\\Rba_DemObdBasic\\api\\rba_DemObdBasic_Dcm.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x14a8
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Dcm\\src\\DcmDsp\\DcmDspObd\\DcmDspObd_Mode2.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x80
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
	.uaword	0x1d9
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
	.uaword	0x205
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
	.uaword	0x241
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
	.uaword	0x1d9
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x3
	.string	"uint8_least"
	.byte	0x2
	.byte	0x8a
	.uaword	0x2ac
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x3
	.string	"Std_ReturnType"
	.byte	0x3
	.byte	0x60
	.uaword	0x1cc
	.uleb128 0x3
	.string	"PduIdType"
	.byte	0x4
	.byte	0x2c
	.uaword	0x1f7
	.uleb128 0x3
	.string	"PduLengthType"
	.byte	0x4
	.byte	0x30
	.uaword	0x1f7
	.uleb128 0x4
	.byte	0x4
	.uaword	0x1cc
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x5
	.uaword	0x1cc
	.uleb128 0x6
	.string	"Dcm_ConfirmationStatusType"
	.byte	0x5
	.uahalf	0x107
	.uaword	0x1cc
	.uleb128 0x6
	.string	"Dcm_NegativeResponseCodeType"
	.byte	0x5
	.uahalf	0x118
	.uaword	0x1cc
	.uleb128 0x6
	.string	"Dem_DTCFormatType"
	.byte	0x5
	.uahalf	0x135
	.uaword	0x1cc
	.uleb128 0x4
	.byte	0x4
	.uaword	0x1f7
	.uleb128 0x4
	.byte	0x4
	.uaword	0x337
	.uleb128 0x4
	.byte	0x4
	.uaword	0x30f
	.uleb128 0x3
	.string	"Dcm_SrvOpStatusType"
	.byte	0x6
	.byte	0x3e
	.uaword	0x1cc
	.uleb128 0x6
	.string	"Dcm_MsgItemType"
	.byte	0x6
	.uahalf	0x102
	.uaword	0x1cc
	.uleb128 0x6
	.string	"Dcm_MsgType"
	.byte	0x6
	.uahalf	0x108
	.uaword	0x3cf
	.uleb128 0x4
	.byte	0x4
	.uaword	0x3a3
	.uleb128 0x6
	.string	"Dcm_MsgLenType"
	.byte	0x6
	.uahalf	0x111
	.uaword	0x233
	.uleb128 0x7
	.byte	0x4
	.byte	0x6
	.uahalf	0x11a
	.uaword	0x443
	.uleb128 0x8
	.string	"reqType"
	.byte	0x6
	.uahalf	0x11e
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"suppressPosResponse"
	.byte	0x6
	.uahalf	0x122
	.uaword	0x27e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x8
	.string	"sourceofRequest"
	.byte	0x6
	.uahalf	0x126
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x6
	.string	"Dcm_MsgAddInfoType"
	.byte	0x6
	.uahalf	0x127
	.uaword	0x3ec
	.uleb128 0x6
	.string	"Dcm_IdContextType"
	.byte	0x6
	.uahalf	0x12d
	.uaword	0x1cc
	.uleb128 0x7
	.byte	0x1c
	.byte	0x6
	.uahalf	0x13c
	.uaword	0x52e
	.uleb128 0x8
	.string	"resData"
	.byte	0x6
	.uahalf	0x143
	.uaword	0x3bb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"reqData"
	.byte	0x6
	.uahalf	0x149
	.uaword	0x3bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"msgAddInfo"
	.byte	0x6
	.uahalf	0x14f
	.uaword	0x443
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.string	"resDataLen"
	.byte	0x6
	.uahalf	0x155
	.uaword	0x3d5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.string	"reqDataLen"
	.byte	0x6
	.uahalf	0x15a
	.uaword	0x3d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.string	"resMaxDataLen"
	.byte	0x6
	.uahalf	0x16c
	.uaword	0x3d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.string	"idContext"
	.byte	0x6
	.uahalf	0x177
	.uaword	0x45e
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.string	"dcmRxPduId"
	.byte	0x6
	.uahalf	0x186
	.uaword	0x2d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.byte	0
	.uleb128 0x6
	.string	"Dcm_MsgContextType"
	.byte	0x6
	.uahalf	0x188
	.uaword	0x478
	.uleb128 0x6
	.string	"Dcm_ConfirmationApiType"
	.byte	0x6
	.uahalf	0x2e1
	.uaword	0x569
	.uleb128 0x4
	.byte	0x4
	.uaword	0x56f
	.uleb128 0x9
	.byte	0x1
	.uaword	0x58a
	.uleb128 0xa
	.uaword	0x45e
	.uleb128 0xa
	.uaword	0x2d7
	.uleb128 0xa
	.uaword	0x1f7
	.uleb128 0xa
	.uaword	0x314
	.byte	0
	.uleb128 0x7
	.byte	0x14
	.byte	0x6
	.uahalf	0x2ee
	.uaword	0x62b
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0x6
	.uahalf	0x2f0
	.uaword	0x233
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.uaword	.LASF1
	.byte	0x6
	.uahalf	0x2f1
	.uaword	0x233
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"adrUserSubServiceModeRule_pfct"
	.byte	0x6
	.uahalf	0x2f5
	.uaword	0x645
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.string	"SubFunc_fp"
	.byte	0x6
	.uahalf	0x2f6
	.uaword	0x66b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.string	"subservice_id_u8"
	.byte	0x6
	.uahalf	0x2f7
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.string	"isDspRDTCSubFnc_b"
	.byte	0x6
	.uahalf	0x2f8
	.uaword	0x27e
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.uaword	0x2c1
	.uaword	0x645
	.uleb128 0xa
	.uaword	0x37c
	.uleb128 0xa
	.uaword	0x1cc
	.uleb128 0xa
	.uaword	0x1cc
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x62b
	.uleb128 0xc
	.byte	0x1
	.uaword	0x2c1
	.uaword	0x665
	.uleb128 0xa
	.uaword	0x388
	.uleb128 0xa
	.uaword	0x665
	.uleb128 0xa
	.uaword	0x37c
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x52e
	.uleb128 0x4
	.byte	0x4
	.uaword	0x64b
	.uleb128 0x6
	.string	"Dcm_Dsld_SubServiceType"
	.byte	0x6
	.uahalf	0x2f9
	.uaword	0x58a
	.uleb128 0x7
	.byte	0x24
	.byte	0x6
	.uahalf	0x30a
	.uaword	0x7c2
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0x6
	.uahalf	0x30c
	.uaword	0x233
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.uaword	.LASF1
	.byte	0x6
	.uahalf	0x30d
	.uaword	0x233
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"service_handler_fp"
	.byte	0x6
	.uahalf	0x312
	.uaword	0x66b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.string	"Service_init_fp"
	.byte	0x6
	.uahalf	0x313
	.uaword	0x7c4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.string	"sid_u8"
	.byte	0x6
	.uahalf	0x314
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.string	"subfunction_exist_b"
	.byte	0x6
	.uahalf	0x315
	.uaword	0x27e
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0x8
	.string	"servicelocator_b"
	.byte	0x6
	.uahalf	0x316
	.uaword	0x27e
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0x8
	.string	"ptr_subservice_table_pcs"
	.byte	0x6
	.uahalf	0x317
	.uaword	0x7ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.string	"num_sf_u8"
	.byte	0x6
	.uahalf	0x318
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.string	"adrUserServiceModeRule_pfct"
	.byte	0x6
	.uahalf	0x319
	.uaword	0x7ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x8
	.string	"Dcm_ConfirmationService"
	.byte	0x6
	.uahalf	0x31b
	.uaword	0x549
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.uleb128 0x4
	.byte	0x4
	.uaword	0x7c2
	.uleb128 0x4
	.byte	0x4
	.uaword	0x7d0
	.uleb128 0x5
	.uaword	0x671
	.uleb128 0xc
	.byte	0x1
	.uaword	0x2c1
	.uaword	0x7ea
	.uleb128 0xa
	.uaword	0x37c
	.uleb128 0xa
	.uaword	0x1cc
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x7d5
	.uleb128 0x6
	.string	"Dcm_Dsld_ServiceType"
	.byte	0x6
	.uahalf	0x31c
	.uaword	0x691
	.uleb128 0x4
	.byte	0x4
	.uaword	0x813
	.uleb128 0x5
	.uaword	0x7f0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x233
	.uleb128 0xe
	.byte	0x8
	.byte	0x7
	.byte	0x15
	.uaword	0x86a
	.uleb128 0xf
	.string	"BitMask_u32"
	.byte	0x7
	.byte	0x17
	.uaword	0x233
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"StartIndex_u8"
	.byte	0x7
	.byte	0x18
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.string	"NumPids_u8"
	.byte	0x7
	.byte	0x19
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.string	"Dcm_Dsp_Mode2BitMask_Type"
	.byte	0x7
	.byte	0x1a
	.uaword	0x81e
	.uleb128 0xe
	.byte	0x6
	.byte	0x7
	.byte	0x24
	.uaword	0x905
	.uleb128 0xf
	.string	"Pid_Id_u8"
	.byte	0x7
	.byte	0x26
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"Num_DataSourcePids_u8"
	.byte	0x7
	.byte	0x27
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xf
	.string	"DataSourcePid_ArrayIndex_u16"
	.byte	0x7
	.byte	0x28
	.uaword	0x1f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xf
	.string	"Pid_Size_u8"
	.byte	0x7
	.byte	0x29
	.uaword	0x1f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"Dcm_Dsp_Mode2Pid_Type"
	.byte	0x7
	.byte	0x2a
	.uaword	0x88b
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.byte	0x32
	.uaword	0x95a
	.uleb128 0xf
	.string	"Length_data_u8"
	.byte	0x7
	.byte	0x34
	.uaword	0x1f7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"Pos_data_u8"
	.byte	0x7
	.byte	0x35
	.uaword	0x1f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x3
	.string	"Dcm_Dsp_Mode2DataSourcePid_Type"
	.byte	0x7
	.byte	0x36
	.uaword	0x922
	.uleb128 0x10
	.byte	0x1
	.byte	0x8
	.byte	0x16
	.uaword	0x9ef
	.uleb128 0x11
	.string	"DSD_IDLE"
	.sleb128 0
	.uleb128 0x11
	.string	"DSD_VERIFY_DIAGNOSTIC_DATA"
	.sleb128 1
	.uleb128 0x11
	.string	"DSD_CALL_SERVICE"
	.sleb128 2
	.uleb128 0x11
	.string	"DSD_WAITFORTXCONF"
	.sleb128 3
	.uleb128 0x11
	.string	"DSD_SENDTXCONF_APPL"
	.sleb128 4
	.byte	0
	.uleb128 0x3
	.string	"Dcm_DsdStatesType_ten"
	.byte	0x8
	.byte	0x1c
	.uaword	0x981
	.uleb128 0x12
	.byte	0x1
	.byte	0x9
	.uahalf	0x17f
	.uaword	0xa46
	.uleb128 0x11
	.string	"DCM_DSLD_POS_RESPONSE"
	.sleb128 0
	.uleb128 0x11
	.string	"DCM_DSLD_NEG_RESPONSE"
	.sleb128 1
	.byte	0
	.uleb128 0x6
	.string	"Dcm_DsldResponseType_ten"
	.byte	0x9
	.uahalf	0x182
	.uaword	0xa0c
	.uleb128 0x7
	.byte	0x30
	.byte	0x9
	.uahalf	0x18c
	.uaword	0xd82
	.uleb128 0x8
	.string	"dataActiveRxPduId_u8"
	.byte	0x9
	.uahalf	0x191
	.uaword	0x2d7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"nrActiveConn_u8"
	.byte	0x9
	.uahalf	0x192
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x8
	.string	"idxActiveSession_u8"
	.byte	0x9
	.uahalf	0x193
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x8
	.string	"flgMonitorP3timer_b"
	.byte	0x9
	.uahalf	0x194
	.uaword	0x27e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"idxCurrentProtocol_u8"
	.byte	0x9
	.uahalf	0x195
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x8
	.string	"dataActiveTxPduId_u8"
	.byte	0x9
	.uahalf	0x196
	.uaword	0x2d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x8
	.string	"datActiveSrvtable_u8"
	.byte	0x9
	.uahalf	0x197
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.string	"flgCommActive_b"
	.byte	0x9
	.uahalf	0x198
	.uaword	0x27e
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x8
	.string	"cntrWaitpendCounter_u8"
	.byte	0x9
	.uahalf	0x199
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x8
	.string	"stResponseType_en"
	.byte	0x9
	.uahalf	0x19a
	.uaword	0xa46
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0x8
	.string	"idxActiveSecurity_u8"
	.byte	0x9
	.uahalf	0x19b
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.string	"dataResult_u8"
	.byte	0x9
	.uahalf	0x19c
	.uaword	0x2c1
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0x8
	.string	"idxService_u8"
	.byte	0x9
	.uahalf	0x19d
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x8
	.string	"dataResponseByDsd_b"
	.byte	0x9
	.uahalf	0x19e
	.uaword	0x27e
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0x8
	.string	"dataSid_u8"
	.byte	0x9
	.uahalf	0x19f
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.string	"flgPagedBufferTxOn_b"
	.byte	0x9
	.uahalf	0x1a4
	.uaword	0x27e
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0x8
	.string	"dataNewRxPduId_u8"
	.byte	0x9
	.uahalf	0x1a7
	.uaword	0x2d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0x8
	.string	"dataRequestLength_u16"
	.byte	0x9
	.uahalf	0x1ac
	.uaword	0x2e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.string	"dataOldtxPduId_u8"
	.byte	0x9
	.uahalf	0x1ad
	.uaword	0x2d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0x8
	.string	"dataCurrentPageRespLength_u32"
	.byte	0x9
	.uahalf	0x1af
	.uaword	0x3d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.string	"dataNewdataRequestLength_u16"
	.byte	0x9
	.uahalf	0x1b2
	.uaword	0x2e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x8
	.string	"adrActiveTxBuffer_tpu8"
	.byte	0x9
	.uahalf	0x1ba
	.uaword	0x3bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.string	"dataTimeoutMonitor_u32"
	.byte	0x9
	.uahalf	0x1bb
	.uaword	0x233
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x8
	.string	"dataPagedBufferTimeout_u32"
	.byte	0x9
	.uahalf	0x1c0
	.uaword	0x233
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.string	"PreviousSessionIndex"
	.byte	0x9
	.uahalf	0x1c2
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.byte	0
	.uleb128 0x6
	.string	"Dcm_DsldInternalStructureType_tst"
	.byte	0x9
	.uahalf	0x1c4
	.uaword	0xa67
	.uleb128 0xe
	.byte	0x20
	.byte	0xa
	.byte	0x18
	.uaword	0xf0d
	.uleb128 0xf
	.string	"flgGetDTCNum_b"
	.byte	0xa
	.byte	0x1a
	.uaword	0x27e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"isPIDFound_b"
	.byte	0xa
	.byte	0x1b
	.uaword	0x27e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xf
	.string	"nrMultiple_u8"
	.byte	0xa
	.byte	0x1c
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xf
	.string	"idxPID_u8"
	.byte	0xa
	.byte	0x1d
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xf
	.string	"nrPid_u8"
	.byte	0xa
	.byte	0x1e
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.string	"nrPIDValid_qu8"
	.byte	0xa
	.byte	0x1f
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0xf
	.string	"nrPIDChk_qu8"
	.byte	0xa
	.byte	0x20
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xf
	.string	"idxPIDStart_qu8"
	.byte	0xa
	.byte	0x21
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xf
	.string	"dataRetGet_u8"
	.byte	0xa
	.byte	0x22
	.uaword	0x2c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.string	"dataPIDBitMask_u32"
	.byte	0xa
	.byte	0x23
	.uaword	0x233
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xf
	.string	"dataCalBitMask_u32"
	.byte	0xa
	.byte	0x24
	.uaword	0x233
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"nrDTC_u32"
	.byte	0xa
	.byte	0x25
	.uaword	0x233
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xf
	.string	"nrResMaxDataLen_u32"
	.byte	0xa
	.byte	0x26
	.uaword	0x3d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xf
	.string	"nrResDataLen_u32"
	.byte	0xa
	.byte	0x27
	.uaword	0x3d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0
	.uleb128 0x3
	.string	"Dcm_ObdContextType"
	.byte	0xa
	.byte	0x28
	.uaword	0xdac
	.uleb128 0x13
	.string	"Dcm_Prv_AvailabiltyPid"
	.byte	0x1
	.byte	0xf3
	.byte	0x1
	.byte	0x1
	.uaword	0xf74
	.uleb128 0x14
	.uaword	.LASF2
	.byte	0x1
	.byte	0xf4
	.uaword	0xf74
	.uleb128 0x14
	.uaword	.LASF3
	.byte	0x1
	.byte	0xf5
	.uaword	0x2fd
	.uleb128 0x14
	.uaword	.LASF4
	.byte	0x1
	.byte	0xf6
	.uaword	0x382
	.uleb128 0x14
	.uaword	.LASF5
	.byte	0x1
	.byte	0xf7
	.uaword	0x37c
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0xf0d
	.uleb128 0x15
	.string	"Dcm_Prv_NonAvailabiltyPid"
	.byte	0x1
	.uahalf	0x129
	.byte	0x1
	.byte	0x1
	.uaword	0xfcf
	.uleb128 0x16
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x12a
	.uaword	0xf74
	.uleb128 0x16
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x12b
	.uaword	0x2fd
	.uleb128 0x16
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x12c
	.uaword	0x382
	.uleb128 0x16
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x12d
	.uaword	0x37c
	.byte	0
	.uleb128 0x13
	.string	"Dcm_Prv_specialPid02"
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.byte	0x1
	.uaword	0x101a
	.uleb128 0x14
	.uaword	.LASF2
	.byte	0x1
	.byte	0x6f
	.uaword	0xf74
	.uleb128 0x14
	.uaword	.LASF3
	.byte	0x1
	.byte	0x70
	.uaword	0x2fd
	.uleb128 0x14
	.uaword	.LASF4
	.byte	0x1
	.byte	0x71
	.uaword	0x382
	.uleb128 0x14
	.uaword	.LASF5
	.byte	0x1
	.byte	0x72
	.uaword	0x37c
	.byte	0
	.uleb128 0x13
	.string	"Dcm_Prv_OtherPid"
	.byte	0x1
	.byte	0xa9
	.byte	0x1
	.byte	0x1
	.uaword	0x1061
	.uleb128 0x14
	.uaword	.LASF2
	.byte	0x1
	.byte	0xaa
	.uaword	0xf74
	.uleb128 0x14
	.uaword	.LASF3
	.byte	0x1
	.byte	0xab
	.uaword	0x2fd
	.uleb128 0x14
	.uaword	.LASF4
	.byte	0x1
	.byte	0xac
	.uaword	0x382
	.uleb128 0x14
	.uaword	.LASF5
	.byte	0x1
	.byte	0xad
	.uaword	0x37c
	.byte	0
	.uleb128 0x13
	.string	"Dcm_Prv_ReadDataOfOBDFreezeFrame"
	.byte	0x1
	.byte	0x17
	.byte	0x1
	.byte	0x1
	.uaword	0x10fc
	.uleb128 0x14
	.uaword	.LASF2
	.byte	0x1
	.byte	0x18
	.uaword	0xf74
	.uleb128 0x14
	.uaword	.LASF4
	.byte	0x1
	.byte	0x19
	.uaword	0x382
	.uleb128 0x14
	.uaword	.LASF3
	.byte	0x1
	.byte	0x1a
	.uaword	0x2fd
	.uleb128 0x14
	.uaword	.LASF5
	.byte	0x1
	.byte	0x1b
	.uaword	0x37c
	.uleb128 0x17
	.string	"idxDataSource_u16"
	.byte	0x1
	.byte	0x1d
	.uaword	0x1f7
	.uleb128 0x17
	.string	"nrBufSize_u16"
	.byte	0x1
	.byte	0x1e
	.uaword	0x1f7
	.uleb128 0x17
	.string	"idxPIDData_qu8"
	.byte	0x1
	.byte	0x1f
	.uaword	0x299
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"Dcm_DcmObdMode02"
	.byte	0x1
	.uahalf	0x178
	.byte	0x1
	.uaword	0x2c1
	.uaword	.LFB67
	.uaword	.LFE67
	.uaword	.LLST0
	.byte	0x1
	.uaword	0x1321
	.uleb128 0x19
	.string	"OpStatus"
	.byte	0x1
	.uahalf	0x179
	.uaword	0x388
	.uaword	.LLST1
	.uleb128 0x19
	.string	"pMsgContext"
	.byte	0x1
	.uahalf	0x17a
	.uaword	0x665
	.uaword	.LLST2
	.uleb128 0x1a
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x17b
	.uaword	0x37c
	.uaword	.LLST3
	.uleb128 0x1b
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x17d
	.uaword	0x2fd
	.uaword	.LLST4
	.uleb128 0x1c
	.string	"adrReqBuf_pu8"
	.byte	0x1
	.uahalf	0x17e
	.uaword	0x2fd
	.uaword	.LLST5
	.uleb128 0x1c
	.string	"nrReqDataLen_u32"
	.byte	0x1
	.uahalf	0x17f
	.uaword	0x3d5
	.uaword	.LLST6
	.uleb128 0x1d
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x180
	.uaword	0x1321
	.byte	0x2
	.byte	0x91
	.sleb128 -35
	.uleb128 0x1c
	.string	"dataRetVal_u8"
	.byte	0x1
	.uahalf	0x181
	.uaword	0x2c1
	.uaword	.LLST7
	.uleb128 0x1d
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x182
	.uaword	0xf0d
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1e
	.uaword	0xf27
	.uaword	.LBB12
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.uahalf	0x1df
	.uaword	0x1215
	.uleb128 0x1f
	.uaword	0xf68
	.uleb128 0x20
	.uaword	0xf5d
	.uaword	.LLST8
	.uleb128 0x1f
	.uaword	0xf52
	.uleb128 0x20
	.uaword	0xf47
	.uaword	.LLST9
	.byte	0
	.uleb128 0x21
	.uaword	0xf7a
	.uaword	.LBB15
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x1
	.uahalf	0x1e7
	.uleb128 0x1f
	.uaword	0xfc2
	.uleb128 0x20
	.uaword	0xfb6
	.uaword	.LLST10
	.uleb128 0x1f
	.uaword	0xfaa
	.uleb128 0x20
	.uaword	0xf9e
	.uaword	.LLST11
	.uleb128 0x1e
	.uaword	0xfcf
	.uaword	.LBB17
	.uaword	.Ldebug_ranges0+0x30
	.byte	0x1
	.uahalf	0x159
	.uaword	0x1272
	.uleb128 0x1f
	.uaword	0x100e
	.uleb128 0x20
	.uaword	0x1003
	.uaword	.LLST12
	.uleb128 0x1f
	.uaword	0xff8
	.uleb128 0x20
	.uaword	0xfed
	.uaword	.LLST13
	.byte	0
	.uleb128 0x1e
	.uaword	0x101a
	.uaword	.LBB20
	.uaword	.Ldebug_ranges0+0x48
	.byte	0x1
	.uahalf	0x160
	.uaword	0x1305
	.uleb128 0x1f
	.uaword	0x1055
	.uleb128 0x20
	.uaword	0x104a
	.uaword	.LLST14
	.uleb128 0x1f
	.uaword	0x103f
	.uleb128 0x20
	.uaword	0x1034
	.uaword	.LLST15
	.uleb128 0x22
	.uaword	0x1061
	.uaword	.LBB22
	.uaword	.Ldebug_ranges0+0x60
	.byte	0x1
	.byte	0xd4
	.uleb128 0x1f
	.uaword	0x10ac
	.uleb128 0x1f
	.uaword	0x10a1
	.uleb128 0x20
	.uaword	0x1096
	.uaword	.LLST16
	.uleb128 0x20
	.uaword	0x108b
	.uaword	.LLST17
	.uleb128 0x23
	.uaword	.Ldebug_ranges0+0x60
	.uleb128 0x24
	.uaword	0x10b7
	.uaword	.LLST18
	.uleb128 0x25
	.uaword	0x10d0
	.byte	0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0x24
	.uaword	0x10e5
	.uaword	.LLST19
	.uleb128 0x26
	.uaword	.LVL36
	.uaword	0x1430
	.uleb128 0x27
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0x27
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.uaword	.LVL15
	.uaword	0x1473
	.uleb128 0x27
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x27
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x27
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
	.uaword	0x1cc
	.uaword	0x1331
	.uleb128 0x29
	.uaword	0x303
	.byte	0x2
	.byte	0
	.uleb128 0x28
	.uaword	0x86a
	.uaword	0x1341
	.uleb128 0x29
	.uaword	0x303
	.byte	0x7
	.byte	0
	.uleb128 0x2a
	.string	"Dcm_Dsp_Mode2Bitmask_acs"
	.byte	0x7
	.byte	0x3f
	.uaword	0x1363
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.uaword	0x1331
	.uleb128 0x28
	.uaword	0x905
	.uaword	0x1378
	.uleb128 0x29
	.uaword	0x303
	.byte	0x6
	.byte	0
	.uleb128 0x2a
	.string	"Dcm_Dsp_Mode2PidArray_acs"
	.byte	0x7
	.byte	0x44
	.uaword	0x139b
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.uaword	0x1368
	.uleb128 0x28
	.uaword	0x95a
	.uaword	0x13b0
	.uleb128 0x29
	.uaword	0x303
	.byte	0x6
	.byte	0
	.uleb128 0x2a
	.string	"Dcm_Dsp_Mode2DataSourcePid_acs"
	.byte	0x7
	.byte	0x4a
	.uaword	0x13d8
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.uaword	0x13a0
	.uleb128 0x2a
	.string	"stDsdState_en"
	.byte	0x8
	.byte	0x25
	.uaword	0x9ef
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.string	"Dcm_DsldGlobal_st"
	.byte	0x9
	.uahalf	0x287
	.uaword	0xd82
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.string	"Dcm_DsldSrvTable_pcst"
	.byte	0x9
	.uahalf	0x2ad
	.uaword	0x80d
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.byte	0x1
	.string	"Dem_DcmReadDataOfOBDFreezeFrame"
	.byte	0xb
	.byte	0xaf
	.byte	0x1
	.uaword	0x2c1
	.byte	0x1
	.uaword	0x1473
	.uleb128 0xa
	.uaword	0x1cc
	.uleb128 0xa
	.uaword	0x1cc
	.uleb128 0xa
	.uaword	0x2fd
	.uleb128 0xa
	.uaword	0x376
	.byte	0
	.uleb128 0x2d
	.byte	0x1
	.string	"Dem_DcmGetDTCOfOBDFreezeFrame"
	.byte	0xb
	.byte	0xc1
	.byte	0x1
	.uaword	0x2c1
	.byte	0x1
	.uleb128 0xa
	.uaword	0x1cc
	.uleb128 0xa
	.uaword	0x818
	.uleb128 0xa
	.uaword	0x35c
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
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
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
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
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x1c
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uaword	.LFB67
	.uaword	.LCFI0
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0
	.uaword	.LFE67
	.uahalf	0x2
	.byte	0x8a
	.sleb128 56
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL2
	.uaword	.LFE67
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL0
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL12
	.uaword	.LVL47
	.uahalf	0x2
	.byte	0x91
	.sleb128 -44
	.uaword	.LVL47
	.uaword	.LFE67
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL0
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL12
	.uaword	.LVL47
	.uahalf	0x2
	.byte	0x91
	.sleb128 -48
	.uaword	.LVL47
	.uaword	.LFE67
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL10
	.uaword	.LVL47
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL8
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x63
	.uaword	.LVL47
	.uaword	.LFE67
	.uahalf	0x1
	.byte	0x63
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL1
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x2
	.byte	0x84
	.sleb128 16
	.uaword	.LVL7
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL9
	.uaword	.LVL11
	.uahalf	0x2
	.byte	0x84
	.sleb128 16
	.uaword	.LVL47
	.uaword	.LFE67
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL3
	.uaword	.LVL6
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL7
	.uaword	.LFE67
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x63
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x63
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x3
	.byte	0x91
	.sleb128 -32
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x3
	.byte	0x91
	.sleb128 -32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL14
	.uaword	.LVL15-1
	.uahalf	0x1
	.byte	0x63
	.uaword	.LVL15-1
	.uaword	.LVL16
	.uahalf	0x3
	.byte	0x91
	.sleb128 -35
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x3
	.byte	0x91
	.sleb128 -35
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x3
	.byte	0x91
	.sleb128 -35
	.byte	0x9f
	.uaword	.LVL22
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x63
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x3
	.byte	0x91
	.sleb128 -35
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL26
	.uaword	.LVL35
	.uahalf	0x3
	.byte	0x91
	.sleb128 -35
	.byte	0x9f
	.uaword	.LVL35
	.uaword	.LVL36-1
	.uahalf	0x1
	.byte	0x63
	.uaword	.LVL36-1
	.uaword	.LVL43
	.uahalf	0x3
	.byte	0x91
	.sleb128 -35
	.byte	0x9f
	.uaword	.LVL43
	.uaword	.LVL44
	.uahalf	0x1
	.byte	0x63
	.uaword	.LVL44
	.uaword	.LVL47
	.uahalf	0x3
	.byte	0x91
	.sleb128 -35
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL14
	.uaword	.LVL18
	.uahalf	0x3
	.byte	0x91
	.sleb128 -32
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL47
	.uahalf	0x3
	.byte	0x91
	.sleb128 -32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL44
	.uaword	.LVL45
	.uahalf	0x3
	.byte	0x91
	.sleb128 -35
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL44
	.uaword	.LVL45
	.uahalf	0x3
	.byte	0x91
	.sleb128 -32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x63
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x3
	.byte	0x91
	.sleb128 -35
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL26
	.uaword	.LVL35
	.uahalf	0x3
	.byte	0x91
	.sleb128 -35
	.byte	0x9f
	.uaword	.LVL35
	.uaword	.LVL36-1
	.uahalf	0x1
	.byte	0x63
	.uaword	.LVL36-1
	.uaword	.LVL43
	.uahalf	0x3
	.byte	0x91
	.sleb128 -35
	.byte	0x9f
	.uaword	.LVL43
	.uaword	.LVL44
	.uahalf	0x1
	.byte	0x63
	.uaword	.LVL45
	.uaword	.LVL47
	.uahalf	0x3
	.byte	0x91
	.sleb128 -35
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL23
	.uaword	.LVL44
	.uahalf	0x3
	.byte	0x91
	.sleb128 -32
	.byte	0x9f
	.uaword	.LVL45
	.uaword	.LVL47
	.uahalf	0x3
	.byte	0x91
	.sleb128 -32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL27
	.uaword	.LVL35
	.uahalf	0x3
	.byte	0x91
	.sleb128 -35
	.byte	0x9f
	.uaword	.LVL35
	.uaword	.LVL36-1
	.uahalf	0x1
	.byte	0x63
	.uaword	.LVL36-1
	.uaword	.LVL43
	.uahalf	0x3
	.byte	0x91
	.sleb128 -35
	.byte	0x9f
	.uaword	.LVL43
	.uaword	.LVL44
	.uahalf	0x1
	.byte	0x63
	.uaword	.LVL45
	.uaword	.LVL46
	.uahalf	0x3
	.byte	0x91
	.sleb128 -35
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL27
	.uaword	.LVL44
	.uahalf	0x3
	.byte	0x91
	.sleb128 -32
	.byte	0x9f
	.uaword	.LVL45
	.uaword	.LVL46
	.uahalf	0x3
	.byte	0x91
	.sleb128 -32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL28
	.uaword	.LVL29
	.uahalf	0x3
	.byte	0x74
	.sleb128 2
	.byte	0x9f
	.uaword	.LVL29
	.uaword	.LVL30
	.uahalf	0x8
	.byte	0x71
	.sleb128 -3
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x2
	.byte	0x9f
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x8
	.byte	0x71
	.sleb128 -3
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x3
	.byte	0x9f
	.uaword	.LVL31
	.uaword	.LVL32
	.uahalf	0x8
	.byte	0x71
	.sleb128 -3
	.byte	0x77
	.sleb128 -1
	.byte	0x22
	.byte	0x23
	.uleb128 0x3
	.byte	0x9f
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x5d
	.uaword	.LVL34
	.uaword	.LVL37
	.uahalf	0x6
	.byte	0x78
	.sleb128 0
	.byte	0x7d
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL37
	.uaword	.LVL38
	.uahalf	0x8
	.byte	0x78
	.sleb128 0
	.byte	0x7d
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	.LVL39
	.uaword	.LVL40
	.uahalf	0x8
	.byte	0x78
	.sleb128 0
	.byte	0x7d
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	.LVL40
	.uaword	.LVL41
	.uahalf	0x8
	.byte	0x78
	.sleb128 -1
	.byte	0x7d
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	.LVL41
	.uaword	.LVL42
	.uahalf	0x8
	.byte	0x78
	.sleb128 0
	.byte	0x7d
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	.LVL45
	.uaword	.LVL46
	.uahalf	0x1
	.byte	0x5d
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL27
	.uaword	.LVL28
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL28
	.uaword	.LVL44
	.uahalf	0x1
	.byte	0x5d
	.uaword	.LVL45
	.uaword	.LVL46
	.uahalf	0x1
	.byte	0x5d
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
	.uaword	.LFB67
	.uaword	.LFE67-.LFB67
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB12
	.uaword	.LBE12
	.uaword	.LBB32
	.uaword	.LBE32
	.uaword	0
	.uaword	0
	.uaword	.LBB15
	.uaword	.LBE15
	.uaword	.LBB33
	.uaword	.LBE33
	.uaword	0
	.uaword	0
	.uaword	.LBB17
	.uaword	.LBE17
	.uaword	.LBB29
	.uaword	.LBE29
	.uaword	0
	.uaword	0
	.uaword	.LBB20
	.uaword	.LBE20
	.uaword	.LBB30
	.uaword	.LBE30
	.uaword	0
	.uaword	0
	.uaword	.LBB22
	.uaword	.LBE22
	.uaword	.LBB26
	.uaword	.LBE26
	.uaword	.LBB27
	.uaword	.LBE27
	.uaword	0
	.uaword	0
	.uaword	.LFB67
	.uaword	.LFE67
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF1:
	.string	"allowed_security_b32"
.LASF5:
	.string	"dataNegRespCode_u8"
.LASF2:
	.string	"ModeContext"
.LASF4:
	.string	"adrTmpBuf_au8"
.LASF0:
	.string	"allowed_session_b32"
.LASF3:
	.string	"adrRespBuf_pu8"
	.extern	Dem_DcmReadDataOfOBDFreezeFrame,STT_FUNC,0
	.extern	Dem_DcmGetDTCOfOBDFreezeFrame,STT_FUNC,0
	.extern	Dcm_Dsp_Mode2DataSourcePid_acs,STT_OBJECT,28
	.extern	Dcm_Dsp_Mode2PidArray_acs,STT_OBJECT,42
	.extern	Dcm_Dsp_Mode2Bitmask_acs,STT_OBJECT,64
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
