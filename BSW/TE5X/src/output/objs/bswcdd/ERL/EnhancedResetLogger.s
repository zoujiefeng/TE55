	.file	"EnhancedResetLogger.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.ERL_vidSaveInfoToNoClearRam,"ax",@progbits
	.align 1
	.global	ERL_vidSaveInfoToNoClearRam
	.type	ERL_vidSaveInfoToNoClearRam, @function
ERL_vidSaveInfoToNoClearRam:
.LFB39:
	.file 1 "bswcdd\\ERL\\EnhancedResetLogger.c"
	.loc 1 259 0
	.loc 1 272 0
	movh.a	%a3, hi:Os_ControlledCoreInfo
	.loc 1 267 0
	movh.a	%a2, hi:NoClearResetLog
	mov	%d15, 1
	st.b	[%a2] lo:NoClearResetLog, %d15
.LVL0:
	.loc 1 272 0
	ld.bu	%d15, [%a3] lo:Os_ControlledCoreInfo
	.loc 1 267 0
	lea	%a15, [%a2] lo:NoClearResetLog
	.loc 1 272 0
	lea	%a2, [%a3] lo:Os_ControlledCoreInfo
	st.b	[%a15] 20, %d15
	.loc 1 273 0
	ld.bu	%d15, [%a2] 1
	.loc 1 274 0
	ld.w	%d2, [%a2] 4
	.loc 1 273 0
	st.b	[%a15] 21, %d15
	.loc 1 277 0
	mov	%d15, 0
	st.w	[%a15] 52, %d15
	.loc 1 278 0
	st.w	[%a15] 56, %d15
	.loc 1 279 0
	st.w	[%a15] 60, %d15
	.loc 1 280 0
	st.w	[%a15] 64, %d15
.LVL1:
	.loc 1 274 0
	st.w	[%a15] 24, %d2
	.loc 1 272 0
	ld.bu	%d2, [%a2] 120
	st.b	[%a15] 28, %d2
	.loc 1 273 0
	ld.bu	%d2, [%a2] 121
	st.b	[%a15] 29, %d2
	.loc 1 274 0
	ld.w	%d2, [%a2] 124
	.loc 1 277 0
	st.w	[%a15] 68, %d15
	.loc 1 278 0
	st.w	[%a15] 72, %d15
	.loc 1 279 0
	st.w	[%a15] 76, %d15
	.loc 1 280 0
	st.w	[%a15] 80, %d15
.LVL2:
	.loc 1 274 0
	st.w	[%a15] 32, %d2
	.loc 1 272 0
	ld.bu	%d2, [%a2] 240
	st.b	[%a15] 36, %d2
	.loc 1 273 0
	ld.bu	%d2, [%a2] 241
	st.b	[%a15] 37, %d2
	.loc 1 274 0
	ld.w	%d2, [%a2] 244
	.loc 1 277 0
	st.w	[%a15] 84, %d15
	.loc 1 278 0
	st.w	[%a15] 88, %d15
	.loc 1 279 0
	st.w	[%a15] 92, %d15
	.loc 1 280 0
	st.w	[%a15] 96, %d15
.LVL3:
	.loc 1 274 0
	st.w	[%a15] 40, %d2
	.loc 1 272 0
	ld.bu	%d2, [%a2] 360
	st.b	[%a15] 44, %d2
	.loc 1 273 0
	ld.bu	%d2, [%a2] 361
	st.b	[%a15] 45, %d2
	.loc 1 274 0
	ld.w	%d2, [%a2] 364
	.loc 1 277 0
	st.w	[%a15] 100, %d15
	.loc 1 274 0
	st.w	[%a15] 48, %d2
	.loc 1 278 0
	st.w	[%a15] 104, %d15
	.loc 1 279 0
	st.w	[%a15] 108, %d15
	.loc 1 280 0
	st.w	[%a15] 112, %d15
.LVL4:
	.loc 1 286 0
	call	IOHAL_u16Read_CH_ADC_IN_AN_P5V_REF
.LVL5:
	st.h	[%a15] 2, %d2
	.loc 1 287 0
	call	IOHAL_u16Read_CH_ADC_IN_AN_P5V_AD2S
.LVL6:
	.loc 1 288 0
	mov	%d4, 211
	.loc 1 287 0
	st.h	[%a15] 4, %d2
	.loc 1 288 0
	call	PMux_u16GetInputVal
.LVL7:
	.loc 1 289 0
	mov	%d4, 209
	.loc 1 288 0
	st.h	[%a15] 6, %d2
	.loc 1 289 0
	call	PMux_u16GetInputVal
.LVL8:
	.loc 1 290 0
	mov	%d4, 210
	.loc 1 289 0
	st.h	[%a15] 8, %d2
	.loc 1 290 0
	call	PMux_u16GetInputVal
.LVL9:
	.loc 1 291 0
	mov	%d4, 195
	.loc 1 290 0
	st.h	[%a15] 10, %d2
	.loc 1 291 0
	call	PMux_u16GetInputVal
.LVL10:
	.loc 1 292 0
	mov	%d4, 194
	.loc 1 291 0
	st.h	[%a15] 12, %d2
	.loc 1 292 0
	call	PMux_u16GetInputVal
.LVL11:
	st.h	[%a15] 14, %d2
	.loc 1 293 0
	call	IOHAL_u16Read_CH_ADC_IN_AN_15V_RDC
.LVL12:
	.loc 1 294 0
	mov	%d4, 192
	.loc 1 293 0
	st.h	[%a15] 16, %d2
	.loc 1 294 0
	call	PMux_u16GetInputVal
.LVL13:
	st.h	[%a15] 18, %d2
	ret
.LFE39:
	.size	ERL_vidSaveInfoToNoClearRam, .-ERL_vidSaveInfoToNoClearRam
.section .text.ERL_vidRestoreInfoFromNoClearRam,"ax",@progbits
	.align 1
	.global	ERL_vidRestoreInfoFromNoClearRam
	.type	ERL_vidRestoreInfoFromNoClearRam, @function
ERL_vidRestoreInfoFromNoClearRam:
.LFB40:
	.loc 1 299 0
.LVL14:
	.loc 1 307 0
	movh.a	%a2, hi:NoClearResetLog
	lea	%a15, [%a2] lo:NoClearResetLog
	.loc 1 314 0
	ld.w	%d2, [%a15] 24
	.loc 1 307 0
	ld.bu	%d15, [%a2] lo:NoClearResetLog
	.loc 1 314 0
	st.w	[%a4] 116, %d2
	.loc 1 312 0
	ld.bu	%d2, [%a15] 28
	.loc 1 307 0
	st.b	[%a4] 6, %d15
.LVL15:
	.loc 1 312 0
	st.b	[%a4] 120, %d2
	.loc 1 313 0
	ld.bu	%d2, [%a15] 29
	.loc 1 312 0
	ld.bu	%d15, [%a15] 20
	.loc 1 313 0
	st.b	[%a4] 121, %d2
	.loc 1 314 0
	ld.w	%d2, [%a15] 32
	.loc 1 312 0
	st.b	[%a4] 112, %d15
	.loc 1 314 0
	st.w	[%a4] 124, %d2
	.loc 1 313 0
	ld.bu	%d15, [%a15] 21
	.loc 1 312 0
	ld.bu	%d2, [%a15] 36
	.loc 1 313 0
	st.b	[%a4] 113, %d15
	.loc 1 312 0
	st.b	[%a4] 128, %d2
	.loc 1 317 0
	mov	%d15, 0
	.loc 1 313 0
	ld.bu	%d2, [%a15] 37
	.loc 1 317 0
	st.w	[%a15] 52, %d15
	st.w	[%a4] 144, %d15
	.loc 1 318 0
	st.w	[%a15] 56, %d15
	st.w	[%a4] 148, %d15
	.loc 1 319 0
	st.w	[%a15] 60, %d15
	st.w	[%a4] 152, %d15
	.loc 1 320 0
	st.w	[%a15] 64, %d15
	st.w	[%a4] 156, %d15
.LVL16:
	.loc 1 317 0
	st.w	[%a15] 68, %d15
	st.w	[%a4] 160, %d15
	.loc 1 318 0
	st.w	[%a15] 72, %d15
	st.w	[%a4] 164, %d15
	.loc 1 319 0
	st.w	[%a15] 76, %d15
	st.w	[%a4] 168, %d15
	.loc 1 320 0
	st.w	[%a15] 80, %d15
	st.w	[%a4] 172, %d15
.LVL17:
	.loc 1 313 0
	st.b	[%a4] 129, %d2
	.loc 1 317 0
	st.w	[%a15] 84, %d15
	st.w	[%a4] 176, %d15
	.loc 1 318 0
	st.w	[%a15] 88, %d15
	st.w	[%a4] 180, %d15
	.loc 1 319 0
	st.w	[%a15] 92, %d15
	st.w	[%a4] 184, %d15
	.loc 1 320 0
	st.w	[%a15] 96, %d15
	st.w	[%a4] 188, %d15
.LVL18:
	.loc 1 317 0
	st.w	[%a15] 100, %d15
	st.w	[%a4] 192, %d15
	.loc 1 318 0
	st.w	[%a15] 104, %d15
	st.w	[%a4] 196, %d15
	.loc 1 319 0
	st.w	[%a15] 108, %d15
	st.w	[%a4] 200, %d15
	.loc 1 320 0
	st.w	[%a15] 112, %d15
	st.w	[%a4] 204, %d15
.LVL19:
	.loc 1 326 0
	ld.h	%d15, [%a15] 2
	.loc 1 314 0
	ld.w	%d2, [%a15] 40
	.loc 1 326 0
	st.h	[%a4] 92, %d15
	.loc 1 327 0
	ld.h	%d15, [%a15] 4
	.loc 1 314 0
	st.w	[%a4] 132, %d2
	.loc 1 312 0
	ld.bu	%d2, [%a15] 44
	.loc 1 327 0
	st.h	[%a4] 94, %d15
	.loc 1 328 0
	ld.h	%d15, [%a15] 6
	.loc 1 312 0
	st.b	[%a4] 136, %d2
	.loc 1 313 0
	ld.bu	%d2, [%a15] 45
	.loc 1 328 0
	st.h	[%a4] 96, %d15
	.loc 1 329 0
	ld.h	%d15, [%a15] 8
	.loc 1 313 0
	st.b	[%a4] 137, %d2
	.loc 1 314 0
	ld.w	%d2, [%a15] 48
	.loc 1 329 0
	st.h	[%a4] 98, %d15
	.loc 1 330 0
	ld.h	%d15, [%a15] 10
	.loc 1 314 0
	st.w	[%a4] 140, %d2
	.loc 1 330 0
	st.h	[%a4] 100, %d15
	.loc 1 331 0
	ld.h	%d15, [%a15] 12
	st.h	[%a4] 102, %d15
	.loc 1 332 0
	ld.h	%d15, [%a15] 16
	st.h	[%a4] 106, %d15
	.loc 1 333 0
	ld.h	%d15, [%a15] 14
	st.h	[%a4] 104, %d15
	.loc 1 334 0
	ld.h	%d15, [%a15] 18
	st.h	[%a4] 108, %d15
	ret
.LFE40:
	.size	ERL_vidRestoreInfoFromNoClearRam, .-ERL_vidRestoreInfoFromNoClearRam
.section .text.ERL_SaveResetInfo,"ax",@progbits
	.align 1
	.global	ERL_SaveResetInfo
	.type	ERL_SaveResetInfo, @function
ERL_SaveResetInfo:
.LFB42:
	.loc 1 359 0
	.loc 1 364 0
	movh.a	%a15, 61443
.LBB23:
.LBB24:
	.loc 1 207 0
	movh.a	%a12, hi:ERL_axResetLogNvMCfg
.LBE24:
.LBE23:
	.loc 1 364 0
	lea	%a15, [%a15] 24656
.LBB54:
.LBB51:
	.loc 1 207 0
	lea	%a12, [%a12] lo:ERL_axResetLogNvMCfg
.LBE51:
.LBE54:
	.loc 1 364 0
	ld.w	%d9, [%a15]0
.LVL20:
.LBB55:
.LBB52:
	.loc 1 207 0
	ld.a	%a15, [%a12] 4
	mov	%d3, 256
	mov	%d10, 0
	ld.hu	%d2, [%a15]0
	.loc 1 205 0
	mov	%d8, 0
	.loc 1 214 0
	mov	%d15, 0
	.loc 1 207 0
	jne	%d2, %d3, .L19
.LVL21:
	ld.a	%a3, [%a12] 12
	ld.hu	%d3, [%a3]0
	jne	%d3, %d2, .L21
.LVL22:
	ld.a	%a2, [%a12] 20
	ld.hu	%d2, [%a2]0
	jne	%d2, %d3, .L22
.LVL23:
	ld.a	%a4, [%a12] 28
	ld.hu	%d3, [%a4]0
	jne	%d3, %d2, .L23
.LVL24:
	ld.a	%a5, [%a12] 36
	ld.hu	%d2, [%a5]0
	jne	%d2, %d3, .L24
.LVL25:
	ld.a	%a6, [%a12] 44
	ld.hu	%d3, [%a6]0
	jne	%d3, %d2, .L25
.LVL26:
	ld.a	%a7, [%a12] 52
	ld.hu	%d2, [%a7]0
	jne	%d2, %d3, .L26
.LVL27:
	ld.a	%a13, [%a12] 60
	ld.hu	%d3, [%a13]0
	jne	%d3, %d2, .L27
.LVL28:
	ld.w	%d1, [%a12] 68
	mov.a	%a14, %d1
	ld.hu	%d2, [%a14]0
	jne	%d2, %d3, .L28
.LVL29:
	ld.w	%d5, [%a12] 76
	mov.a	%a14, %d5
	ld.hu	%d3, [%a14]0
	jne	%d3, %d2, .L29
.LVL30:
	.loc 1 230 0
	ld.hu	%d4, [%a15] 2
	ld.hu	%d2, [%a3] 2
.LVL31:
.LBB25:
.LBB26:
	.loc 1 179 0
	addi	%d3, %d4, 1
	jeq	%d2, %d3, .L6
	.loc 1 183 0
	mov.u	%d6, 65535
	eq	%d15, %d4, %d6
.LBE26:
.LBE25:
	.loc 1 234 0
	extr.u	%d3, %d3, 0, 16
.LBB39:
.LBB27:
	.loc 1 183 0
	and.eq	%d15, %d2, 0
.LBE27:
.LBE39:
	.loc 1 234 0
	seln	%d15, %d15, %d3, 0
.L6:
.LVL32:
	.loc 1 230 0
	ld.hu	%d3, [%a2] 2
.LVL33:
.LBB40:
.LBB28:
	.loc 1 179 0
	addi	%d6, %d2, 1
	mov	%d8, 1
	jeq	%d3, %d6, .L7
	.loc 1 183 0
	mov.u	%d0, 65535
	eq	%d7, %d2, %d0
	and.eq	%d7, %d3, 0
	jnz	%d7, .L7
.LVL34:
.LBE28:
.LBE40:
	.loc 1 234 0
	extr.u	%d15, %d6, 0, 16
.LVL35:
	.loc 1 228 0
	mov	%d8, 2
.LVL36:
.L7:
	.loc 1 230 0
	ld.hu	%d2, [%a4] 2
.LVL37:
.LBB41:
.LBB29:
	.loc 1 179 0
	addi	%d6, %d3, 1
	jeq	%d2, %d6, .L8
	.loc 1 183 0
	mov.u	%d0, 65535
	eq	%d7, %d3, %d0
	and.eq	%d7, %d2, 0
	jnz	%d7, .L8
.LVL38:
.LBE29:
.LBE41:
	.loc 1 234 0
	extr.u	%d15, %d6, 0, 16
.LVL39:
	.loc 1 228 0
	mov	%d8, 3
.LVL40:
.L8:
	.loc 1 230 0
	ld.hu	%d3, [%a5] 2
.LVL41:
.LBB42:
.LBB30:
	.loc 1 179 0
	addi	%d6, %d2, 1
	jeq	%d3, %d6, .L9
	.loc 1 183 0
	mov.u	%d0, 65535
	eq	%d7, %d2, %d0
	and.eq	%d7, %d3, 0
	jnz	%d7, .L9
.LVL42:
.LBE30:
.LBE42:
	.loc 1 234 0
	extr.u	%d15, %d6, 0, 16
.LVL43:
	.loc 1 228 0
	mov	%d8, 4
.LVL44:
.L9:
	.loc 1 230 0
	ld.hu	%d2, [%a6] 2
.LVL45:
.LBB43:
.LBB31:
	.loc 1 179 0
	addi	%d6, %d3, 1
	jeq	%d2, %d6, .L10
	.loc 1 183 0
	mov.u	%d0, 65535
	eq	%d7, %d3, %d0
	and.eq	%d7, %d2, 0
	jnz	%d7, .L10
.LVL46:
.LBE31:
.LBE43:
	.loc 1 234 0
	extr.u	%d15, %d6, 0, 16
.LVL47:
	.loc 1 228 0
	mov	%d8, 5
.LVL48:
.L10:
	.loc 1 230 0
	ld.hu	%d3, [%a7] 2
.LVL49:
.LBB44:
.LBB32:
	.loc 1 179 0
	addi	%d6, %d2, 1
	jeq	%d3, %d6, .L11
	.loc 1 183 0
	mov.u	%d0, 65535
	eq	%d7, %d2, %d0
	and.eq	%d7, %d3, 0
	jnz	%d7, .L11
.LVL50:
.LBE32:
.LBE44:
	.loc 1 234 0
	extr.u	%d15, %d6, 0, 16
.LVL51:
	.loc 1 228 0
	mov	%d8, 6
.LVL52:
.L11:
	.loc 1 230 0
	ld.hu	%d2, [%a13] 2
.LVL53:
.LBB45:
.LBB33:
	.loc 1 179 0
	addi	%d6, %d3, 1
	jeq	%d2, %d6, .L12
	.loc 1 183 0
	mov.u	%d0, 65535
	eq	%d7, %d3, %d0
	and.eq	%d7, %d2, 0
	jnz	%d7, .L12
.LVL54:
.LBE33:
.LBE45:
	.loc 1 234 0
	extr.u	%d15, %d6, 0, 16
.LVL55:
	.loc 1 228 0
	mov	%d8, 7
.LVL56:
.L12:
	.loc 1 230 0
	mov.a	%a15, %d1
.LBB46:
.LBB34:
	.loc 1 179 0
	addi	%d6, %d2, 1
.LBE34:
.LBE46:
	.loc 1 230 0
	ld.hu	%d3, [%a15] 2
.LVL57:
.LBB47:
.LBB35:
	.loc 1 179 0
	jeq	%d3, %d6, .L13
.LVL58:
	.loc 1 183 0
	mov.u	%d0, 65535
	eq	%d7, %d2, %d0
	and.eq	%d7, %d3, 0
	jnz	%d7, .L13
.LVL59:
.LBE35:
.LBE47:
	.loc 1 234 0
	extr.u	%d15, %d6, 0, 16
.LVL60:
	.loc 1 228 0
	mov	%d8, 8
.LVL61:
.L13:
	.loc 1 230 0
	mov.a	%a14, %d5
.LBB48:
.LBB36:
	.loc 1 179 0
	addi	%d5, %d3, 1
.LBE36:
.LBE48:
	.loc 1 230 0
	ld.hu	%d2, [%a14] 2
.LVL62:
.LBB49:
.LBB37:
	.loc 1 179 0
	jeq	%d2, %d5, .L14
	.loc 1 183 0
	mov.u	%d7, 65535
	eq	%d6, %d3, %d7
	and.eq	%d6, %d2, 0
	jnz	%d6, .L14
.LVL63:
.LBE37:
.LBE49:
	.loc 1 234 0
	extr.u	%d15, %d5, 0, 16
.LVL64:
	.loc 1 228 0
	mov	%d8, 9
.LVL65:
.L14:
.LBB50:
.LBB38:
	.loc 1 179 0
	addi	%d3, %d2, 1
	jeq	%d3, %d4, .L15
	.loc 1 183 0
	mov.u	%d6, 65535
	eq	%d5, %d2, %d6
	and.eq	%d5, %d4, 0
	jnz	%d5, .L15
.LVL66:
.LBE38:
.LBE50:
	.loc 1 234 0
	extr.u	%d15, %d3, 0, 16
.LVL67:
	.loc 1 228 0
	mov	%d8, 0
.LVL68:
.L15:
	addsc.a	%a15, %a12, %d8, 3
	mov	%d10, %d8
	ld.a	%a15, [%a15] 4
.LVL69:
.L19:
.LBE52:
.LBE55:
	.loc 1 370 0
	mov.aa	%a4, %a15
	mov	%d4, 0
	mov	%d5, 208
	call	rba_BswSrv_MemSet
.LVL70:
	.loc 1 372 0
	mov	%d2, 256
	.loc 1 374 0
	st.h	[%a15] 2, %d15
.LVL71:
	.loc 1 372 0
	st.h	[%a15]0, %d2
.LBB56:
.LBB57:
	.loc 1 137 0
	st.w	[%a15] 20, %d9
.LVL72:
.LBB58:
.LBB59:
	.loc 1 125 0
	mov	%d15, 2
.LVL73:
	jz.t	%d9, 1, .L38
.L17:
.LBE59:
.LBE58:
	.loc 1 141 0
	movh.a	%a2, 61443
	.loc 1 138 0
	st.b	[%a15] 4, %d15
	.loc 1 141 0
	lea	%a2, [%a2] 25172
	ld.w	%d15, [%a2]0
	.loc 1 142 0
	movh.a	%a2, 61443
	.loc 1 141 0
	st.w	[%a15] 28, %d15
	.loc 1 142 0
	lea	%a2, [%a2] 25184
	ld.w	%d15, [%a2]0
	.loc 1 143 0
	movh.a	%a2, 61443
	.loc 1 142 0
	st.w	[%a15] 32, %d15
	.loc 1 143 0
	lea	%a2, [%a2] 25196
	ld.w	%d15, [%a2]0
	.loc 1 144 0
	movh.a	%a2, 61443
	.loc 1 143 0
	st.w	[%a15] 36, %d15
	.loc 1 144 0
	lea	%a2, [%a2] 25208
	ld.w	%d15, [%a2]0
	.loc 1 147 0
	movh.a	%a2, 61443
	.loc 1 144 0
	st.w	[%a15] 40, %d15
	.loc 1 147 0
	lea	%a2, [%a2] 27072
	ld.w	%d15, [%a2]0
	.loc 1 148 0
	movh.a	%a2, 61443
	.loc 1 147 0
	st.w	[%a15] 44, %d15
	.loc 1 148 0
	lea	%a2, [%a2] 27076
	ld.w	%d15, [%a2]0
	.loc 1 149 0
	movh.a	%a2, 61443
	.loc 1 148 0
	st.w	[%a15] 48, %d15
	.loc 1 149 0
	lea	%a2, [%a2] 27080
	ld.w	%d15, [%a2]0
	.loc 1 150 0
	movh.a	%a2, 61443
	.loc 1 149 0
	st.w	[%a15] 52, %d15
	.loc 1 150 0
	lea	%a2, [%a2] 27084
	ld.w	%d15, [%a2]0
	.loc 1 151 0
	movh.a	%a2, 61443
	.loc 1 150 0
	st.w	[%a15] 56, %d15
	.loc 1 151 0
	lea	%a2, [%a2] 27088
	ld.w	%d15, [%a2]0
	.loc 1 152 0
	movh.a	%a2, 61443
	.loc 1 151 0
	st.w	[%a15] 60, %d15
	.loc 1 152 0
	lea	%a2, [%a2] 27092
	ld.w	%d15, [%a2]0
	.loc 1 153 0
	movh.a	%a2, 61443
	.loc 1 152 0
	st.w	[%a15] 64, %d15
	.loc 1 153 0
	lea	%a2, [%a2] 27096
	ld.w	%d15, [%a2]0
	.loc 1 154 0
	movh.a	%a2, 61443
	.loc 1 153 0
	st.w	[%a15] 68, %d15
	.loc 1 154 0
	lea	%a2, [%a2] 27100
	ld.w	%d15, [%a2]0
	.loc 1 155 0
	movh.a	%a2, 61443
	.loc 1 154 0
	st.w	[%a15] 72, %d15
	.loc 1 155 0
	lea	%a2, [%a2] 27104
	ld.w	%d15, [%a2]0
	.loc 1 156 0
	movh.a	%a2, 61443
	.loc 1 155 0
	st.w	[%a15] 76, %d15
	.loc 1 156 0
	lea	%a2, [%a2] 27108
	ld.w	%d15, [%a2]0
	.loc 1 157 0
	movh.a	%a2, 61443
	.loc 1 156 0
	st.w	[%a15] 80, %d15
	.loc 1 157 0
	lea	%a2, [%a2] 27112
	ld.w	%d15, [%a2]0
	.loc 1 158 0
	movh.a	%a2, 61443
	.loc 1 157 0
	st.w	[%a15] 84, %d15
	.loc 1 158 0
	lea	%a2, [%a2] 27116
	ld.w	%d15, [%a2]0
	.loc 1 167 0
	movh.a	%a2, hi:g_systemUptime
	.loc 1 158 0
	st.w	[%a15] 88, %d15
	.loc 1 160 0
	mov	%d15, 0
	st.b	[%a15] 5, %d15
.LVL74:
	.loc 1 167 0
	ld.w	%d2, [%a2] lo:g_systemUptime
.LBE57:
.LBE56:
.LBB67:
.LBB68:
	.loc 1 307 0
	movh.a	%a3, hi:NoClearResetLog
.LBE68:
.LBE67:
.LBB73:
.LBB62:
	.loc 1 167 0
	st.w	[%a15] 12, %d2
.LBE62:
.LBE73:
.LBB74:
.LBB69:
	.loc 1 307 0
	ld.bu	%d2, [%a3] lo:NoClearResetLog
	lea	%a2, [%a3] lo:NoClearResetLog
	st.b	[%a15] 6, %d2
.LVL75:
	.loc 1 312 0
	ld.bu	%d2, [%a2] 20
.LBE69:
.LBE74:
.LBB75:
.LBB63:
	.loc 1 161 0
	st.b	[%a15] 7, %d15
.LBE63:
.LBE75:
.LBB76:
.LBB70:
	.loc 1 312 0
	st.b	[%a15] 112, %d2
	.loc 1 313 0
	ld.bu	%d2, [%a2] 21
.LBE70:
.LBE76:
.LBB77:
.LBB64:
	.loc 1 164 0
	mov	%d15, 0
.LBE64:
.LBE77:
.LBB78:
.LBB71:
	.loc 1 313 0
	st.b	[%a15] 113, %d2
	.loc 1 314 0
	ld.w	%d2, [%a2] 24
.LBE71:
.LBE78:
.LBB79:
.LBB65:
	.loc 1 164 0
	st.w	[%a15] 16, %d15
.LBE65:
.LBE79:
.LBB80:
.LBB72:
	.loc 1 314 0
	st.w	[%a15] 116, %d2
	.loc 1 312 0
	ld.bu	%d2, [%a2] 28
	.loc 1 317 0
	st.w	[%a2] 52, %d15
	.loc 1 312 0
	st.b	[%a15] 120, %d2
	.loc 1 313 0
	ld.bu	%d2, [%a2] 29
	.loc 1 317 0
	st.w	[%a15] 144, %d15
	.loc 1 313 0
	st.b	[%a15] 121, %d2
	.loc 1 314 0
	ld.w	%d2, [%a2] 32
	.loc 1 318 0
	st.w	[%a2] 56, %d15
	st.w	[%a15] 148, %d15
	.loc 1 319 0
	st.w	[%a2] 60, %d15
	st.w	[%a15] 152, %d15
	.loc 1 320 0
	st.w	[%a2] 64, %d15
	st.w	[%a15] 156, %d15
.LVL76:
	.loc 1 314 0
	st.w	[%a15] 124, %d2
	.loc 1 317 0
	st.w	[%a2] 68, %d15
	st.w	[%a15] 160, %d15
	.loc 1 318 0
	st.w	[%a2] 72, %d15
	st.w	[%a15] 164, %d15
	.loc 1 319 0
	st.w	[%a2] 76, %d15
	st.w	[%a15] 168, %d15
	.loc 1 320 0
	st.w	[%a2] 80, %d15
	st.w	[%a15] 172, %d15
.LVL77:
	.loc 1 312 0
	ld.bu	%d2, [%a2] 36
	.loc 1 317 0
	st.w	[%a2] 84, %d15
	.loc 1 312 0
	st.b	[%a15] 128, %d2
	.loc 1 313 0
	ld.bu	%d2, [%a2] 37
	.loc 1 317 0
	st.w	[%a15] 176, %d15
	.loc 1 313 0
	st.b	[%a15] 129, %d2
	.loc 1 314 0
	ld.w	%d2, [%a2] 40
	.loc 1 318 0
	st.w	[%a2] 88, %d15
	.loc 1 314 0
	st.w	[%a15] 132, %d2
	.loc 1 312 0
	ld.bu	%d2, [%a2] 44
	.loc 1 318 0
	st.w	[%a15] 180, %d15
	.loc 1 319 0
	st.w	[%a2] 92, %d15
	st.w	[%a15] 184, %d15
	.loc 1 320 0
	st.w	[%a2] 96, %d15
	st.w	[%a15] 188, %d15
.LVL78:
	.loc 1 317 0
	st.w	[%a2] 100, %d15
	st.w	[%a15] 192, %d15
	.loc 1 318 0
	st.w	[%a2] 104, %d15
	st.w	[%a15] 196, %d15
	.loc 1 319 0
	st.w	[%a2] 108, %d15
	st.w	[%a15] 200, %d15
	.loc 1 320 0
	st.w	[%a2] 112, %d15
	st.w	[%a15] 204, %d15
.LVL79:
	.loc 1 326 0
	ld.h	%d15, [%a2] 2
	.loc 1 312 0
	st.b	[%a15] 136, %d2
	.loc 1 313 0
	ld.bu	%d2, [%a2] 45
	.loc 1 326 0
	st.h	[%a15] 92, %d15
	.loc 1 327 0
	ld.h	%d15, [%a2] 4
	.loc 1 313 0
	st.b	[%a15] 137, %d2
	.loc 1 314 0
	ld.w	%d2, [%a2] 48
	.loc 1 327 0
	st.h	[%a15] 94, %d15
	.loc 1 328 0
	ld.h	%d15, [%a2] 6
	.loc 1 314 0
	st.w	[%a15] 140, %d2
	.loc 1 328 0
	st.h	[%a15] 96, %d15
	.loc 1 329 0
	ld.h	%d15, [%a2] 8
	st.h	[%a15] 98, %d15
	.loc 1 330 0
	ld.h	%d15, [%a2] 10
	st.h	[%a15] 100, %d15
	.loc 1 331 0
	ld.h	%d15, [%a2] 12
	st.h	[%a15] 102, %d15
	.loc 1 332 0
	ld.h	%d15, [%a2] 16
	st.h	[%a15] 106, %d15
	.loc 1 333 0
	ld.h	%d15, [%a2] 14
	st.h	[%a15] 104, %d15
	.loc 1 334 0
	ld.h	%d15, [%a2] 18
	st.h	[%a15] 108, %d15
.LBE72:
.LBE80:
.LBB81:
.LBB82:
	.loc 1 64 0
	jlt.u	%d8, 10, .L39
	ret
.L39:
.LVL80:
	.loc 1 69 0
	addsc.a	%a12, %a12, %d10, 3
	.loc 1 70 0
	mov.a	%a4, 0
	ld.hu	%d4, [%a12]0
	j	NvM_WriteBlock
.LVL81:
.L38:
.LBE82:
.LBE81:
.LBB83:
.LBB66:
.LBB61:
.LBB60:
	.loc 1 126 0
	mov	%d15, 3
	jnz.t	%d9, 2, .L17
	.loc 1 127 0
	mov	%d15, 4
	jnz.t	%d9, 3, .L17
	.loc 1 128 0
	mov	%d15, 1
	jnz.t	%d9, 4, .L17
	.loc 1 129 0
	and	%d15, %d9, 32
	.loc 1 131 0
	cmov	%d15, %d15, 5
	j	.L17
.LVL82:
.L21:
.LBE60:
.LBE61:
.LBE66:
.LBE83:
.LBB84:
.LBB53:
	.loc 1 207 0
	mov.aa	%a15, %a3
	.loc 1 205 0
	mov	%d8, 1
	.loc 1 207 0
	mov	%d10, 1
.LVL83:
.L5:
	.loc 1 218 0
	addsc.a	%a2, %a12, %d10, 3
	ld.a	%a2, [%a2] -4
	ld.h	%d15, [%a2] 2
	add	%d15, 1
	extr.u	%d15, %d15, 0, 16
.LVL84:
	j	.L19
.LVL85:
.L22:
	.loc 1 207 0
	mov.aa	%a15, %a2
	.loc 1 205 0
	mov	%d8, 2
	.loc 1 207 0
	mov	%d10, 2
	j	.L5
.LVL86:
.L23:
	mov.aa	%a15, %a4
	.loc 1 205 0
	mov	%d8, 3
	.loc 1 207 0
	mov	%d10, 3
	j	.L5
.LVL87:
.L24:
	mov.aa	%a15, %a5
	.loc 1 205 0
	mov	%d8, 4
	.loc 1 207 0
	mov	%d10, 4
	j	.L5
.LVL88:
.L25:
	mov.aa	%a15, %a6
	.loc 1 205 0
	mov	%d8, 5
	.loc 1 207 0
	mov	%d10, 5
	j	.L5
.LVL89:
.L26:
	mov.aa	%a15, %a7
	.loc 1 205 0
	mov	%d8, 6
	.loc 1 207 0
	mov	%d10, 6
	j	.L5
.LVL90:
.L27:
	mov.aa	%a15, %a13
	.loc 1 205 0
	mov	%d8, 7
	.loc 1 207 0
	mov	%d10, 7
	j	.L5
.LVL91:
.L28:
	mov.a	%a15, %d1
	mov	%d10, 8
	mov	%d8, 8
	j	.L5
.LVL92:
.L29:
	mov.a	%a15, %d5
	mov	%d10, 9
	mov	%d8, 9
	j	.L5
.LBE53:
.LBE84:
.LFE42:
	.size	ERL_SaveResetInfo, .-ERL_SaveResetInfo
.section .text.ERL_Init,"ax",@progbits
	.align 1
	.global	ERL_Init
	.type	ERL_Init, @function
ERL_Init:
.LFB41:
	.loc 1 341 0
.LVL93:
.LBB92:
.LBB93:
	.loc 1 111 0
	movh.a	%a12, hi:ERL_xShutdownStatusBlock
	movh	%d15, 21320
	ld.w	%d2, [%a12] lo:ERL_xShutdownStatusBlock
	addi	%d15, %d15, 17486
	lea	%a15, [%a12] lo:ERL_xShutdownStatusBlock
	jeq	%d2, %d15, .L42
.LVL94:
.L41:
.LBE93:
.LBE92:
.LBB94:
.LBB95:
	.loc 1 94 0
	movh	%d15, 21320
	addi	%d15, %d15, 17486
	st.w	[%a12] lo:ERL_xShutdownStatusBlock, %d15
	.loc 1 98 0
	movh.a	%a2, hi:g_systemUptime
	.loc 1 97 0
	mov	%d15, 85
	st.b	[%a15] 4, %d15
	.loc 1 98 0
	ld.w	%d15, [%a2] lo:g_systemUptime
.LBB96:
.LBB97:
	.loc 1 79 0
	mov	%d4, 26
.LBE97:
.LBE96:
	.loc 1 98 0
	st.w	[%a15] 8, %d15
.LBB100:
.LBB98:
	.loc 1 79 0
	mov.a	%a4, 0
.LBE98:
.LBE100:
	.loc 1 99 0
	mov	%d15, 0
	st.w	[%a15] 12, %d15
.LVL95:
.LBB101:
.LBB99:
	.loc 1 79 0
	j	NvM_WriteBlock
.LVL96:
.L42:
.LBE99:
.LBE101:
.LBE95:
.LBE94:
	.loc 1 344 0
	ld.bu	%d15, [%a15] 4
	ne	%d15, %d15, 85
	jnz	%d15, .L41
.LBB102:
	.loc 1 347 0
	call	ERL_SaveResetInfo
.LVL97:
	j	.L41
.LBE102:
.LFE41:
	.size	ERL_Init, .-ERL_Init
.section .text.ERL_MarkNormalShutdown,"ax",@progbits
	.align 1
	.global	ERL_MarkNormalShutdown
	.type	ERL_MarkNormalShutdown, @function
ERL_MarkNormalShutdown:
.LFB43:
	.loc 1 388 0
.LVL98:
.LBB107:
.LBB108:
	.loc 1 94 0
	movh	%d15, 21320
	movh.a	%a2, hi:ERL_xShutdownStatusBlock
	addi	%d15, %d15, 17486
	lea	%a15, [%a2] lo:ERL_xShutdownStatusBlock
	st.w	[%a2] lo:ERL_xShutdownStatusBlock, %d15
	.loc 1 97 0
	mov	%d15, -86
	.loc 1 98 0
	movh.a	%a2, hi:g_systemUptime
	.loc 1 97 0
	st.b	[%a15] 4, %d15
	.loc 1 98 0
	ld.w	%d15, [%a2] lo:g_systemUptime
.LBB109:
.LBB110:
	.loc 1 79 0
	mov	%d4, 26
.LBE110:
.LBE109:
	.loc 1 98 0
	st.w	[%a15] 8, %d15
.LBB113:
.LBB111:
	.loc 1 79 0
	mov.a	%a4, 0
.LBE111:
.LBE113:
	.loc 1 99 0
	mov	%d15, 0
	st.w	[%a15] 12, %d15
.LVL99:
.LBB114:
.LBB112:
	.loc 1 79 0
	j	NvM_WriteBlock
.LVL100:
.LBE112:
.LBE114:
.LBE108:
.LBE107:
.LFE43:
	.size	ERL_MarkNormalShutdown, .-ERL_MarkNormalShutdown
.section .text.ERL_UpdateUptime,"ax",@progbits
	.align 1
	.global	ERL_UpdateUptime
	.type	ERL_UpdateUptime, @function
ERL_UpdateUptime:
.LFB44:
	.loc 1 397 0
	.loc 1 398 0
	movh.a	%a15, hi:g_systemUptime
	ld.w	%d15, [%a15] lo:g_systemUptime
	add	%d15, 1
	st.w	[%a15] lo:g_systemUptime, %d15
	ret
.LFE44:
	.size	ERL_UpdateUptime, .-ERL_UpdateUptime
.section .text.ERL_vidReadLogByIndex,"ax",@progbits
	.align 1
	.global	ERL_vidReadLogByIndex
	.type	ERL_vidReadLogByIndex, @function
ERL_vidReadLogByIndex:
.LFB45:
	.loc 1 409 0
.LVL101:
	.loc 1 410 0
	movh	%d2, 52429
	addi	%d2, %d2, -13107
	mul.u	%e2, %d4, %d2
	.loc 1 415 0
	movh.a	%a3, hi:ERL_axResetLogNvMCfg
	lea	%a3, [%a3] lo:ERL_axResetLogNvMCfg
	.loc 1 410 0
	sh	%d15, %d3, -3
	madd	%d15, %d4, %d15, -10
	mov.aa	%a2, %a4
	.loc 1 415 0
	lea	%a15, 207
	and	%d15, 255
	addsc.a	%a3, %a3, %d15, 3
	add.a	%a3, 4
.LVL102:
.L46:
	.loc 1 415 0 is_stmt 0 discriminator 3
	ld.a	%a6, [%a3]0
	sub.a	%a5, %a2, %a4
	add.a	%a5, %a6
	ld.bu	%d15, [%a5]0
	st.b	[%a2+]1, %d15
.LVL103:
	.loc 1 416 0 is_stmt 1 discriminator 3
	loop	%a15, .L46
	.loc 1 418 0
	ret
.LFE45:
	.size	ERL_vidReadLogByIndex, .-ERL_vidReadLogByIndex
.section .rodata.a1,"a",@progbits
.LC0:
	.string	"Unknown"
.section .text.ERL_GetResetTypeString,"ax",@progbits
	.align 1
	.global	ERL_GetResetTypeString
	.type	ERL_GetResetTypeString, @function
ERL_GetResetTypeString:
.LFB46:
	.loc 1 425 0
.LVL104:
	add	%d4, -1
.LVL105:
	.loc 1 425 0
	movh.a	%a2, hi:.LC0
	and	%d4, %d4, 255
	lea	%a2, [%a2] lo:.LC0
	jge.u	%d4, 7, .L49
	movh.a	%a15, hi:CSWTCH.26
	lea	%a15, [%a15] lo:CSWTCH.26
	addsc.a	%a15, %a15, %d4, 2
	ld.a	%a2, [%a15]0
.L49:
	.loc 1 437 0
	ret
.LFE46:
	.size	ERL_GetResetTypeString, .-ERL_GetResetTypeString
.section .rodata.a1,"a",@progbits
.LC1:
	.string	"Abnormal"
.LC2:
	.string	"Normal"
.LC3:
	.string	"Running"
.LC4:
	.string	"Invalid"
.section .text.ERL_GetShutdownStatusString,"ax",@progbits
	.align 1
	.global	ERL_GetShutdownStatusString
	.type	ERL_GetShutdownStatusString, @function
ERL_GetShutdownStatusString:
.LFB47:
	.loc 1 440 0
.LVL106:
	.loc 1 444 0
	movh.a	%a2, hi:.LC1
	.loc 1 441 0
	eq	%d15, %d4, 85
	.loc 1 444 0
	lea	%a2, [%a2] lo:.LC1
	.loc 1 441 0
	jnz	%d15, .L55
	ge.u	%d15, %d4, 86
	jz	%d15, .L63
	.loc 1 445 0
	movh.a	%a2, hi:.LC2
	.loc 1 441 0
	eq	%d15, %d4, 170
	.loc 1 445 0
	lea	%a2, [%a2] lo:.LC2
	.loc 1 441 0
	jnz	%d15, .L55
	.loc 1 446 0
	movh.a	%a2, hi:.LC3
	.loc 1 441 0
	eq	%d4, %d4, 204
.LVL107:
	.loc 1 446 0
	lea	%a2, [%a2] lo:.LC3
	.loc 1 441 0
	jz	%d4, .L52
.L55:
	.loc 1 449 0
	ret
.LVL108:
.L63:
	.loc 1 443 0
	movh.a	%a2, hi:.LC0
	lea	%a2, [%a2] lo:.LC0
	.loc 1 441 0
	jz	%d4, .L55
.LVL109:
.L52:
	.loc 1 447 0
	movh.a	%a2, hi:.LC4
	lea	%a2, [%a2] lo:.LC4
	.loc 1 449 0
	ret
.LFE47:
	.size	ERL_GetShutdownStatusString, .-ERL_GetShutdownStatusString
.section .rodata.a1,"a",@progbits
.LC5:
	.string	"PowerOn"
.LC6:
	.string	"Watchdog"
.LC7:
	.string	"Software"
.LC8:
	.string	"External"
.LC9:
	.string	"SafetyWDT"
.LC10:
	.string	"Trap"
.LC11:
	.string	"SMUAlarm"
.section .rodata.a4.CSWTCH.26,"a",@progbits
	.align 2
	.type	CSWTCH.26, @object
	.size	CSWTCH.26, 28
CSWTCH.26:
	.word	.LC5
	.word	.LC6
	.word	.LC7
	.word	.LC8
	.word	.LC9
	.word	.LC10
	.word	.LC11
	.global	ERL_axResetLogNvMCfg
.section .data.a4.ERL_axResetLogNvMCfg,"aw",@progbits
	.align 2
	.type	ERL_axResetLogNvMCfg, @object
	.size	ERL_axResetLogNvMCfg, 80
ERL_axResetLogNvMCfg:
	.short	27
	.zero	2
	.word	ERL_xResetLogNvMEntry_0
	.short	28
	.zero	2
	.word	ERL_xResetLogNvMEntry_1
	.short	29
	.zero	2
	.word	ERL_xResetLogNvMEntry_2
	.short	30
	.zero	2
	.word	ERL_xResetLogNvMEntry_3
	.short	31
	.zero	2
	.word	ERL_xResetLogNvMEntry_4
	.short	32
	.zero	2
	.word	ERL_xResetLogNvMEntry_5
	.short	33
	.zero	2
	.word	ERL_xResetLogNvMEntry_6
	.short	34
	.zero	2
	.word	ERL_xResetLogNvMEntry_7
	.short	35
	.zero	2
	.word	ERL_xResetLogNvMEntry_8
	.short	36
	.zero	2
	.word	ERL_xResetLogNvMEntry_9
	.global	ERL_xResetLogNvMEntry_9_Rom_NVM
.section .rodata.a4.ERL_xResetLogNvMEntry_9_Rom_NVM,"a",@progbits
	.align 2
	.type	ERL_xResetLogNvMEntry_9_Rom_NVM, @object
	.size	ERL_xResetLogNvMEntry_9_Rom_NVM, 208
ERL_xResetLogNvMEntry_9_Rom_NVM:
	.zero	208
	.global	ERL_xResetLogNvMEntry_8_Rom_NVM
.section .rodata.a4.ERL_xResetLogNvMEntry_8_Rom_NVM,"a",@progbits
	.align 2
	.type	ERL_xResetLogNvMEntry_8_Rom_NVM, @object
	.size	ERL_xResetLogNvMEntry_8_Rom_NVM, 208
ERL_xResetLogNvMEntry_8_Rom_NVM:
	.zero	208
	.global	ERL_xResetLogNvMEntry_7_Rom_NVM
.section .rodata.a4.ERL_xResetLogNvMEntry_7_Rom_NVM,"a",@progbits
	.align 2
	.type	ERL_xResetLogNvMEntry_7_Rom_NVM, @object
	.size	ERL_xResetLogNvMEntry_7_Rom_NVM, 208
ERL_xResetLogNvMEntry_7_Rom_NVM:
	.zero	208
	.global	ERL_xResetLogNvMEntry_6_Rom_NVM
.section .rodata.a4.ERL_xResetLogNvMEntry_6_Rom_NVM,"a",@progbits
	.align 2
	.type	ERL_xResetLogNvMEntry_6_Rom_NVM, @object
	.size	ERL_xResetLogNvMEntry_6_Rom_NVM, 208
ERL_xResetLogNvMEntry_6_Rom_NVM:
	.zero	208
	.global	ERL_xResetLogNvMEntry_5_Rom_NVM
.section .rodata.a4.ERL_xResetLogNvMEntry_5_Rom_NVM,"a",@progbits
	.align 2
	.type	ERL_xResetLogNvMEntry_5_Rom_NVM, @object
	.size	ERL_xResetLogNvMEntry_5_Rom_NVM, 208
ERL_xResetLogNvMEntry_5_Rom_NVM:
	.zero	208
	.global	ERL_xResetLogNvMEntry_4_Rom_NVM
.section .rodata.a4.ERL_xResetLogNvMEntry_4_Rom_NVM,"a",@progbits
	.align 2
	.type	ERL_xResetLogNvMEntry_4_Rom_NVM, @object
	.size	ERL_xResetLogNvMEntry_4_Rom_NVM, 208
ERL_xResetLogNvMEntry_4_Rom_NVM:
	.zero	208
	.global	ERL_xResetLogNvMEntry_3_Rom_NVM
.section .rodata.a4.ERL_xResetLogNvMEntry_3_Rom_NVM,"a",@progbits
	.align 2
	.type	ERL_xResetLogNvMEntry_3_Rom_NVM, @object
	.size	ERL_xResetLogNvMEntry_3_Rom_NVM, 208
ERL_xResetLogNvMEntry_3_Rom_NVM:
	.zero	208
	.global	ERL_xResetLogNvMEntry_2_Rom_NVM
.section .rodata.a4.ERL_xResetLogNvMEntry_2_Rom_NVM,"a",@progbits
	.align 2
	.type	ERL_xResetLogNvMEntry_2_Rom_NVM, @object
	.size	ERL_xResetLogNvMEntry_2_Rom_NVM, 208
ERL_xResetLogNvMEntry_2_Rom_NVM:
	.zero	208
	.global	ERL_xResetLogNvMEntry_1_Rom_NVM
.section .rodata.a4.ERL_xResetLogNvMEntry_1_Rom_NVM,"a",@progbits
	.align 2
	.type	ERL_xResetLogNvMEntry_1_Rom_NVM, @object
	.size	ERL_xResetLogNvMEntry_1_Rom_NVM, 208
ERL_xResetLogNvMEntry_1_Rom_NVM:
	.zero	208
	.global	ERL_xResetLogNvMEntry_0_Rom_NVM
.section .rodata.a4.ERL_xResetLogNvMEntry_0_Rom_NVM,"a",@progbits
	.align 2
	.type	ERL_xResetLogNvMEntry_0_Rom_NVM, @object
	.size	ERL_xResetLogNvMEntry_0_Rom_NVM, 208
ERL_xResetLogNvMEntry_0_Rom_NVM:
	.zero	208
	.global	ERL_xResetLogNvMEntry_9
.section .bss.a4.ERL_xResetLogNvMEntry_9,"aw",@nobits
	.align 2
	.type	ERL_xResetLogNvMEntry_9, @object
	.size	ERL_xResetLogNvMEntry_9, 208
ERL_xResetLogNvMEntry_9:
	.zero	208
	.global	ERL_xResetLogNvMEntry_8
.section .bss.a4.ERL_xResetLogNvMEntry_8,"aw",@nobits
	.align 2
	.type	ERL_xResetLogNvMEntry_8, @object
	.size	ERL_xResetLogNvMEntry_8, 208
ERL_xResetLogNvMEntry_8:
	.zero	208
	.global	ERL_xResetLogNvMEntry_7
.section .bss.a4.ERL_xResetLogNvMEntry_7,"aw",@nobits
	.align 2
	.type	ERL_xResetLogNvMEntry_7, @object
	.size	ERL_xResetLogNvMEntry_7, 208
ERL_xResetLogNvMEntry_7:
	.zero	208
	.global	ERL_xResetLogNvMEntry_6
.section .bss.a4.ERL_xResetLogNvMEntry_6,"aw",@nobits
	.align 2
	.type	ERL_xResetLogNvMEntry_6, @object
	.size	ERL_xResetLogNvMEntry_6, 208
ERL_xResetLogNvMEntry_6:
	.zero	208
	.global	ERL_xResetLogNvMEntry_5
.section .bss.a4.ERL_xResetLogNvMEntry_5,"aw",@nobits
	.align 2
	.type	ERL_xResetLogNvMEntry_5, @object
	.size	ERL_xResetLogNvMEntry_5, 208
ERL_xResetLogNvMEntry_5:
	.zero	208
	.global	ERL_xResetLogNvMEntry_4
.section .bss.a4.ERL_xResetLogNvMEntry_4,"aw",@nobits
	.align 2
	.type	ERL_xResetLogNvMEntry_4, @object
	.size	ERL_xResetLogNvMEntry_4, 208
ERL_xResetLogNvMEntry_4:
	.zero	208
	.global	ERL_xResetLogNvMEntry_3
.section .bss.a4.ERL_xResetLogNvMEntry_3,"aw",@nobits
	.align 2
	.type	ERL_xResetLogNvMEntry_3, @object
	.size	ERL_xResetLogNvMEntry_3, 208
ERL_xResetLogNvMEntry_3:
	.zero	208
	.global	ERL_xResetLogNvMEntry_2
.section .bss.a4.ERL_xResetLogNvMEntry_2,"aw",@nobits
	.align 2
	.type	ERL_xResetLogNvMEntry_2, @object
	.size	ERL_xResetLogNvMEntry_2, 208
ERL_xResetLogNvMEntry_2:
	.zero	208
	.global	ERL_xResetLogNvMEntry_1
.section .bss.a4.ERL_xResetLogNvMEntry_1,"aw",@nobits
	.align 2
	.type	ERL_xResetLogNvMEntry_1, @object
	.size	ERL_xResetLogNvMEntry_1, 208
ERL_xResetLogNvMEntry_1:
	.zero	208
	.global	ERL_xResetLogNvMEntry_0
.section .bss.a4.ERL_xResetLogNvMEntry_0,"aw",@nobits
	.align 2
	.type	ERL_xResetLogNvMEntry_0, @object
	.size	ERL_xResetLogNvMEntry_0, 208
ERL_xResetLogNvMEntry_0:
	.zero	208
.section .psram_ErrorInfo.NoClearResetLog,"a",@progbits
	.align 2
	.type	NoClearResetLog, @object
	.size	NoClearResetLog, 116
NoClearResetLog:
	.zero	116
	.global	ERL_xShutdownStatusBlockRom_NVM
.section .rodata.a4.ERL_xShutdownStatusBlockRom_NVM,"a",@progbits
	.align 2
	.type	ERL_xShutdownStatusBlockRom_NVM, @object
	.size	ERL_xShutdownStatusBlockRom_NVM, 16
ERL_xShutdownStatusBlockRom_NVM:
	.zero	16
	.global	ERL_xShutdownStatusBlock
.section .bss.a4.ERL_xShutdownStatusBlock,"aw",@nobits
	.align 2
	.type	ERL_xShutdownStatusBlock, @object
	.size	ERL_xShutdownStatusBlock, 16
ERL_xShutdownStatusBlock:
	.zero	16
.section .bss.a4.g_systemUptime,"aw",@nobits
	.align 2
	.type	g_systemUptime, @object
	.size	g_systemUptime, 4
g_systemUptime:
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
	.uaword	.LFB39
	.uaword	.LFE39-.LFB39
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB40
	.uaword	.LFE40-.LFB40
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB42
	.uaword	.LFE42-.LFB42
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB41
	.uaword	.LFE41-.LFB41
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB43
	.uaword	.LFE43-.LFB43
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB44
	.uaword	.LFE44-.LFB44
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB45
	.uaword	.LFE45-.LFB45
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB46
	.uaword	.LFE46-.LFB46
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB47
	.uaword	.LFE47-.LFB47
	.align 2
.LEFDE16:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 4 ".\\output\\inc/..\\..\\os\\Os.h"
	.file 5 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\Ifx_TypesReg.h"
	.file 6 ".\\output\\inc/..\\..\\rte\\Rte_Type.h"
	.file 7 "bswcdd\\ERL\\EnhancedResetLogger.h"
	.file 8 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxScu_regdef.h"
	.file 9 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSmu_regdef.h"
	.file 10 ".\\output\\inc/..\\..\\bswcdd\\PortMux\\PortMux.h"
	.file 11 ".\\output\\inc/..\\..\\bswcdd\\IOHAL\\IOHAL_Cfg_I.h"
	.file 12 ".\\output\\inc/..\\..\\bsw\\NvM\\api\\NvM.h"
	.file 13 ".\\output\\inc/..\\..\\bsw\\integration\\rba_BswSrv\\api\\rba_BswSrv.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x270c
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\ERL\\EnhancedResetLogger.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x158
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
	.uaword	0x1cb
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
	.uaword	0x1f7
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"sint32"
	.byte	0x2
	.byte	0x60
	.uaword	0x21b
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
	.uaword	0x1cb
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
	.uaword	0x1be
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x4
	.byte	0x4
	.uleb128 0x5
	.uaword	0x233
	.uaword	0x2e2
	.uleb128 0x6
	.uaword	0x2c4
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.byte	0x4
	.byte	0x65
	.uaword	0x321
	.uleb128 0x8
	.string	"Class"
	.byte	0x4
	.byte	0x66
	.uaword	0x1be
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TIN"
	.byte	0x4
	.byte	0x67
	.uaword	0x1be
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x8
	.string	"ReturnAddress"
	.byte	0x4
	.byte	0x68
	.uaword	0x233
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"OsTrapInfoType"
	.byte	0x4
	.byte	0x69
	.uaword	0x2e2
	.uleb128 0x3
	.string	"uint32_aligned"
	.byte	0x4
	.byte	0x6f
	.uaword	0x233
	.uleb128 0x7
	.byte	0x44
	.byte	0x4
	.byte	0xc7
	.uaword	0x366
	.uleb128 0x8
	.string	"store"
	.byte	0x4
	.byte	0xc8
	.uaword	0x366
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.uaword	0x233
	.uaword	0x376
	.uleb128 0x6
	.uaword	0x2c4
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.string	"Os_JumpBufType"
	.byte	0x4
	.byte	0xc9
	.uaword	0x38c
	.uleb128 0x5
	.uaword	0x34d
	.uaword	0x39c
	.uleb128 0x6
	.uaword	0x2c4
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Os_StackTraceType"
	.byte	0x4
	.byte	0xdb
	.uaword	0x241
	.uleb128 0x7
	.byte	0x8
	.byte	0x4
	.byte	0xdc
	.uaword	0x3d9
	.uleb128 0x8
	.string	"sp"
	.byte	0x4
	.byte	0xdc
	.uaword	0x39c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"ctx"
	.byte	0x4
	.byte	0xdc
	.uaword	0x39c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"Os_StackValueType"
	.byte	0x4
	.byte	0xdc
	.uaword	0x3b5
	.uleb128 0x3
	.string	"Os_StackSizeType"
	.byte	0x4
	.byte	0xdd
	.uaword	0x3d9
	.uleb128 0x3
	.string	"Os_VoidVoidFunctionType"
	.byte	0x4
	.byte	0xe0
	.uaword	0x429
	.uleb128 0x9
	.byte	0x4
	.uaword	0x42f
	.uleb128 0xa
	.byte	0x1
	.uleb128 0x3
	.string	"ApplicationType"
	.byte	0x4
	.byte	0xee
	.uaword	0x1cb
	.uleb128 0xb
	.uaword	0x1be
	.uleb128 0x9
	.byte	0x4
	.uaword	0x1be
	.uleb128 0x9
	.byte	0x4
	.uaword	0x1e9
	.uleb128 0xc
	.string	"Os_StopwatchTickType"
	.byte	0x4
	.uahalf	0x10f
	.uaword	0x241
	.uleb128 0xc
	.string	"Os_TerminatorType"
	.byte	0x4
	.uahalf	0x114
	.uaword	0x490
	.uleb128 0x9
	.byte	0x4
	.uaword	0x376
	.uleb128 0xc
	.string	"Os_Lockable"
	.byte	0x4
	.uahalf	0x119
	.uaword	0x337
	.uleb128 0x9
	.byte	0x4
	.uaword	0x4b0
	.uleb128 0xd
	.uleb128 0xc
	.string	"CoreIdType"
	.byte	0x4
	.uahalf	0x11b
	.uaword	0x1e9
	.uleb128 0xe
	.uaword	0x496
	.uleb128 0xf
	.string	"Os_MeterInfoType_s"
	.byte	0x30
	.byte	0x4
	.uahalf	0x172
	.uaword	0x580
	.uleb128 0x10
	.string	"elapsed"
	.byte	0x4
	.uahalf	0x173
	.uaword	0x459
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"previous"
	.byte	0x4
	.uahalf	0x174
	.uaword	0x459
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.string	"max"
	.byte	0x4
	.uahalf	0x175
	.uaword	0x459
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.string	"cumulative"
	.byte	0x4
	.uahalf	0x176
	.uaword	0x459
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x10
	.string	"stackbase"
	.byte	0x4
	.uahalf	0x177
	.uaword	0x3d9
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.string	"stackusage"
	.byte	0x4
	.uahalf	0x178
	.uaword	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x10
	.string	"stackmax"
	.byte	0x4
	.uahalf	0x179
	.uaword	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x11
	.uaword	.LASF0
	.byte	0x4
	.uahalf	0x17a
	.uaword	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0
	.uleb128 0xc
	.string	"Os_MeterInfoType"
	.byte	0x4
	.uahalf	0x17b
	.uaword	0x4c9
	.uleb128 0xc
	.string	"Os_MeterInfoRefType"
	.byte	0x4
	.uahalf	0x17c
	.uaword	0x5b5
	.uleb128 0x9
	.byte	0x4
	.uaword	0x580
	.uleb128 0xc
	.string	"Os_imaskType"
	.byte	0x4
	.uahalf	0x184
	.uaword	0x233
	.uleb128 0xf
	.string	"Os_ISRDynType_s"
	.byte	0x34
	.byte	0x4
	.uahalf	0x186
	.uaword	0x612
	.uleb128 0x10
	.string	"terminating"
	.byte	0x4
	.uahalf	0x187
	.uaword	0x27e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"meter"
	.byte	0x4
	.uahalf	0x188
	.uaword	0x580
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xc
	.string	"Os_ISRDynType"
	.byte	0x4
	.uahalf	0x189
	.uaword	0x5d0
	.uleb128 0xc
	.string	"Os_IsrTerminatedFunctionType"
	.byte	0x4
	.uahalf	0x18a
	.uaword	0x429
	.uleb128 0xf
	.string	"Os_ISRType_s"
	.byte	0x20
	.byte	0x4
	.uahalf	0x18b
	.uaword	0x6f5
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x4
	.uahalf	0x18c
	.uaword	0x40a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"terminated_function"
	.byte	0x4
	.uahalf	0x18d
	.uaword	0x628
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.string	"dynamic"
	.byte	0x4
	.uahalf	0x18e
	.uaword	0x6f5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.string	"imask"
	.byte	0x4
	.uahalf	0x18f
	.uaword	0x5bb
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x11
	.uaword	.LASF2
	.byte	0x4
	.uahalf	0x190
	.uaword	0x233
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x11
	.uaword	.LASF0
	.byte	0x4
	.uahalf	0x191
	.uaword	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x10
	.string	"access"
	.byte	0x4
	.uahalf	0x192
	.uaword	0x1be
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x11
	.uaword	.LASF3
	.byte	0x4
	.uahalf	0x193
	.uaword	0x431
	.byte	0x2
	.byte	0x23
	.uleb128 0x1d
	.byte	0
	.uleb128 0xb
	.uaword	0x6fa
	.uleb128 0x9
	.byte	0x4
	.uaword	0x612
	.uleb128 0xc
	.string	"Os_ISRType"
	.byte	0x4
	.uahalf	0x194
	.uaword	0x64d
	.uleb128 0xc
	.string	"ISRType"
	.byte	0x4
	.uahalf	0x195
	.uaword	0x723
	.uleb128 0x9
	.byte	0x4
	.uaword	0x729
	.uleb128 0xb
	.uaword	0x700
	.uleb128 0xc
	.string	"Os_bitmask"
	.byte	0x4
	.uahalf	0x1a7
	.uaword	0x241
	.uleb128 0xc
	.string	"Os_pset0Type"
	.byte	0x4
	.uahalf	0x1a8
	.uaword	0x72e
	.uleb128 0xc
	.string	"Os_pset1Type"
	.byte	0x4
	.uahalf	0x1a9
	.uaword	0x72e
	.uleb128 0xc
	.string	"Os_pset2Type"
	.byte	0x4
	.uahalf	0x1aa
	.uaword	0x72e
	.uleb128 0xc
	.string	"Os_pset3Type"
	.byte	0x4
	.uahalf	0x1ab
	.uaword	0x72e
	.uleb128 0x12
	.byte	0x4
	.byte	0x4
	.uahalf	0x1ac
	.uaword	0x7cb
	.uleb128 0x13
	.string	"p0"
	.byte	0x4
	.uahalf	0x1ad
	.uaword	0x741
	.uleb128 0x13
	.string	"p1"
	.byte	0x4
	.uahalf	0x1ae
	.uaword	0x756
	.uleb128 0x13
	.string	"p2"
	.byte	0x4
	.uahalf	0x1af
	.uaword	0x76b
	.uleb128 0x13
	.string	"p3"
	.byte	0x4
	.uahalf	0x1b0
	.uaword	0x780
	.byte	0
	.uleb128 0xc
	.string	"Os_psetType"
	.byte	0x4
	.uahalf	0x1b1
	.uaword	0x795
	.uleb128 0x12
	.byte	0x4
	.byte	0x4
	.uahalf	0x1b3
	.uaword	0x815
	.uleb128 0x13
	.string	"t0"
	.byte	0x4
	.uahalf	0x1b4
	.uaword	0x72e
	.uleb128 0x13
	.string	"t1"
	.byte	0x4
	.uahalf	0x1b5
	.uaword	0x72e
	.uleb128 0x13
	.string	"t2"
	.byte	0x4
	.uahalf	0x1b6
	.uaword	0x72e
	.uleb128 0x13
	.string	"t3"
	.byte	0x4
	.uahalf	0x1b7
	.uaword	0x72e
	.byte	0
	.uleb128 0xc
	.string	"Os_tpmaskType"
	.byte	0x4
	.uahalf	0x1b8
	.uaword	0x7df
	.uleb128 0xf
	.string	"Os_TaskDynType_s"
	.byte	0x78
	.byte	0x4
	.uahalf	0x1ba
	.uaword	0x892
	.uleb128 0x10
	.string	"terminate_jump_buf"
	.byte	0x4
	.uahalf	0x1bb
	.uaword	0x376
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"meter"
	.byte	0x4
	.uahalf	0x1bc
	.uaword	0x580
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x10
	.string	"termination_state"
	.byte	0x4
	.uahalf	0x1bd
	.uaword	0x233
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.byte	0
	.uleb128 0xc
	.string	"Os_TaskDynType"
	.byte	0x4
	.uahalf	0x1be
	.uaword	0x82b
	.uleb128 0xf
	.string	"Os_TaskType_s"
	.byte	0x28
	.byte	0x4
	.uahalf	0x1c0
	.uaword	0x96e
	.uleb128 0x10
	.string	"dynamic"
	.byte	0x4
	.uahalf	0x1c1
	.uaword	0x96e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x4
	.uahalf	0x1c2
	.uaword	0x40a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.string	"pset"
	.byte	0x4
	.uahalf	0x1c3
	.uaword	0x7cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.string	"base_tpmask"
	.byte	0x4
	.uahalf	0x1c4
	.uaword	0x815
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x10
	.string	"tpmask"
	.byte	0x4
	.uahalf	0x1c5
	.uaword	0x815
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.string	"core_id"
	.byte	0x4
	.uahalf	0x1c6
	.uaword	0x4b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x11
	.uaword	.LASF2
	.byte	0x4
	.uahalf	0x1c7
	.uaword	0x233
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x11
	.uaword	.LASF0
	.byte	0x4
	.uahalf	0x1c8
	.uaword	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x10
	.string	"access"
	.byte	0x4
	.uahalf	0x1c9
	.uaword	0x1be
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x11
	.uaword	.LASF3
	.byte	0x4
	.uahalf	0x1ca
	.uaword	0x431
	.byte	0x2
	.byte	0x23
	.uleb128 0x25
	.byte	0
	.uleb128 0xb
	.uaword	0x973
	.uleb128 0x9
	.byte	0x4
	.uaword	0x892
	.uleb128 0xc
	.string	"Os_TaskType"
	.byte	0x4
	.uahalf	0x1cb
	.uaword	0x8a9
	.uleb128 0xc
	.string	"TaskType"
	.byte	0x4
	.uahalf	0x1cc
	.uaword	0x99e
	.uleb128 0x9
	.byte	0x4
	.uaword	0x9a4
	.uleb128 0xb
	.uaword	0x979
	.uleb128 0xf
	.string	"Os_ControlledCoreType_s"
	.byte	0x78
	.byte	0x4
	.uahalf	0x397
	.uaword	0xbab
	.uleb128 0x10
	.string	"TrapInfo"
	.byte	0x4
	.uahalf	0x398
	.uaword	0x321
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"lock_taskaccess"
	.byte	0x4
	.uahalf	0x399
	.uaword	0x4c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.string	"ReadyTasks"
	.byte	0x4
	.uahalf	0x39a
	.uaword	0xbab
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x10
	.string	"RunningISR"
	.byte	0x4
	.uahalf	0x39b
	.uaword	0xbb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.string	"RunningTask"
	.byte	0x4
	.uahalf	0x39c
	.uaword	0xbb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x10
	.string	"RunningTPMask"
	.byte	0x4
	.uahalf	0x39d
	.uaword	0xbba
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x10
	.string	"TerminatingTasks"
	.byte	0x4
	.uahalf	0x39e
	.uaword	0xbab
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x10
	.string	"CurrentTerminator"
	.byte	0x4
	.uahalf	0x39f
	.uaword	0xbbf
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x10
	.string	"CurrentMeteredObject"
	.byte	0x4
	.uahalf	0x3a0
	.uaword	0x599
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x10
	.string	"IdleMeter"
	.byte	0x4
	.uahalf	0x3a1
	.uaword	0x580
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x10
	.string	"AppAccess"
	.byte	0x4
	.uahalf	0x3a2
	.uaword	0x1be
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x10
	.string	"AppOverride"
	.byte	0x4
	.uahalf	0x3a3
	.uaword	0xbc4
	.byte	0x2
	.byte	0x23
	.uleb128 0x59
	.uleb128 0x10
	.string	"GetStackValueAdjust"
	.byte	0x4
	.uahalf	0x3a4
	.uaword	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x10
	.string	"InErrorHook"
	.byte	0x4
	.uahalf	0x3a5
	.uaword	0x27e
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x10
	.string	"ChainTaskRef"
	.byte	0x4
	.uahalf	0x3a6
	.uaword	0xbb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x10
	.string	"GetStackUsageAdjust"
	.byte	0x4
	.uahalf	0x3a7
	.uaword	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x10
	.string	"InProtectionHook"
	.byte	0x4
	.uahalf	0x3a8
	.uaword	0x27e
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x10
	.string	"CoreIsActive"
	.byte	0x4
	.uahalf	0x3a9
	.uaword	0x27e
	.byte	0x2
	.byte	0x23
	.uleb128 0x75
	.uleb128 0x10
	.string	"InShutdownHook"
	.byte	0x4
	.uahalf	0x3aa
	.uaword	0x27e
	.byte	0x2
	.byte	0x23
	.uleb128 0x76
	.byte	0
	.uleb128 0xe
	.uaword	0x7cb
	.uleb128 0xe
	.uaword	0x713
	.uleb128 0xe
	.uaword	0x98d
	.uleb128 0xe
	.uaword	0x815
	.uleb128 0xe
	.uaword	0x476
	.uleb128 0xe
	.uaword	0x431
	.uleb128 0xc
	.string	"Os_ControlledCoreType"
	.byte	0x4
	.uahalf	0x3ab
	.uaword	0x9a9
	.uleb128 0x3
	.string	"Ifx_UReg_32Bit"
	.byte	0x5
	.byte	0x62
	.uaword	0x241
	.uleb128 0x3
	.string	"Ifx_SReg_32Bit"
	.byte	0x5
	.byte	0x65
	.uaword	0x21b
	.uleb128 0xc
	.string	"NvM_BlockIdType"
	.byte	0x6
	.uahalf	0x1ca
	.uaword	0x1e9
	.uleb128 0xc
	.string	"NvM_Rb_ConstVoidPtr"
	.byte	0x6
	.uahalf	0x1cc
	.uaword	0x4aa
	.uleb128 0xe
	.uaword	0x241
	.uleb128 0x14
	.byte	0x1
	.byte	0x7
	.byte	0x11
	.uaword	0xcc0
	.uleb128 0x15
	.string	"SHUTDOWN_STATUS_UNKNOWN"
	.sleb128 0
	.uleb128 0x15
	.string	"SHUTDOWN_STATUS_ABNORMAL"
	.sleb128 85
	.uleb128 0x15
	.string	"SHUTDOWN_STATUS_NORMAL"
	.sleb128 170
	.uleb128 0x15
	.string	"SHUTDOWN_STATUS_RUNNING"
	.sleb128 204
	.byte	0
	.uleb128 0x3
	.string	"ShutdownStatus_t"
	.byte	0x7
	.byte	0x16
	.uaword	0xc4c
	.uleb128 0x14
	.byte	0x1
	.byte	0x7
	.byte	0x19
	.uaword	0xd8f
	.uleb128 0x15
	.string	"RESET_TYPE_UNKNOWN"
	.sleb128 0
	.uleb128 0x15
	.string	"RESET_TYPE_POWER_ON"
	.sleb128 1
	.uleb128 0x15
	.string	"RESET_TYPE_WATCHDOG"
	.sleb128 2
	.uleb128 0x15
	.string	"RESET_TYPE_SOFTWARE"
	.sleb128 3
	.uleb128 0x15
	.string	"RESET_TYPE_EXTERNAL"
	.sleb128 4
	.uleb128 0x15
	.string	"RESET_TYPE_SAFETY_WDT"
	.sleb128 5
	.uleb128 0x15
	.string	"RESET_TYPE_TRAP"
	.sleb128 6
	.uleb128 0x15
	.string	"RESET_TYPE_SMU_ALARM"
	.sleb128 7
	.byte	0
	.uleb128 0x3
	.string	"ResetType_t"
	.byte	0x7
	.byte	0x22
	.uaword	0xcd8
	.uleb128 0x7
	.byte	0x10
	.byte	0x7
	.byte	0x24
	.uaword	0xdfa
	.uleb128 0x8
	.string	"appErrorCode"
	.byte	0x7
	.byte	0x25
	.uaword	0x233
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"taskId"
	.byte	0x7
	.byte	0x26
	.uaword	0x233
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"cpuLoad"
	.byte	0x7
	.byte	0x27
	.uaword	0x233
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.string	"stackUsage"
	.byte	0x7
	.byte	0x28
	.uaword	0x233
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x3
	.string	"ResetLogCore"
	.byte	0x7
	.byte	0x29
	.uaword	0xda2
	.uleb128 0x7
	.byte	0x74
	.byte	0x7
	.byte	0x2b
	.uaword	0xebf
	.uleb128 0x16
	.uaword	.LASF4
	.byte	0x7
	.byte	0x2c
	.uaword	0x1be
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x16
	.uaword	.LASF5
	.byte	0x7
	.byte	0x2e
	.uaword	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x16
	.uaword	.LASF6
	.byte	0x7
	.byte	0x2f
	.uaword	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.uaword	.LASF7
	.byte	0x7
	.byte	0x30
	.uaword	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x16
	.uaword	.LASF8
	.byte	0x7
	.byte	0x31
	.uaword	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.uaword	.LASF9
	.byte	0x7
	.byte	0x32
	.uaword	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x16
	.uaword	.LASF10
	.byte	0x7
	.byte	0x33
	.uaword	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x16
	.uaword	.LASF11
	.byte	0x7
	.byte	0x34
	.uaword	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x16
	.uaword	.LASF12
	.byte	0x7
	.byte	0x35
	.uaword	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x16
	.uaword	.LASF13
	.byte	0x7
	.byte	0x36
	.uaword	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0x16
	.uaword	.LASF14
	.byte	0x7
	.byte	0x39
	.uaword	0xebf
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x16
	.uaword	.LASF15
	.byte	0x7
	.byte	0x3c
	.uaword	0xecf
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0x5
	.uaword	0x321
	.uaword	0xecf
	.uleb128 0x6
	.uaword	0x2c4
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.uaword	0xdfa
	.uaword	0xedf
	.uleb128 0x6
	.uaword	0x2c4
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.string	"NoClearResetLog_t"
	.byte	0x7
	.byte	0x3d
	.uaword	0xe0e
	.uleb128 0x7
	.byte	0xd0
	.byte	0x7
	.byte	0x40
	.uaword	0x10b1
	.uleb128 0x8
	.string	"version"
	.byte	0x7
	.byte	0x42
	.uaword	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"sequence"
	.byte	0x7
	.byte	0x43
	.uaword	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x8
	.string	"resetType"
	.byte	0x7
	.byte	0x45
	.uaword	0xd8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"wdtTimeout"
	.byte	0x7
	.byte	0x46
	.uaword	0x1be
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x16
	.uaword	.LASF4
	.byte	0x7
	.byte	0x47
	.uaword	0x1be
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x8
	.string	"smuAlarmPresent"
	.byte	0x7
	.byte	0x48
	.uaword	0x1be
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0x8
	.string	"uptimeBeforeReset"
	.byte	0x7
	.byte	0x4b
	.uaword	0x233
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.string	"systemUptime"
	.byte	0x7
	.byte	0x4c
	.uaword	0x233
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.string	"resetInterval"
	.byte	0x7
	.byte	0x4d
	.uaword	0x233
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.string	"scuRstStat"
	.byte	0x7
	.byte	0x50
	.uaword	0x233
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.string	"scuRstCon"
	.byte	0x7
	.byte	0x51
	.uaword	0x233
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.string	"wdtStatus"
	.byte	0x7
	.byte	0x54
	.uaword	0x2d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x8
	.string	"smuAlmStatus"
	.byte	0x7
	.byte	0x57
	.uaword	0x10b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x16
	.uaword	.LASF5
	.byte	0x7
	.byte	0x5a
	.uaword	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x16
	.uaword	.LASF6
	.byte	0x7
	.byte	0x5b
	.uaword	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x5e
	.uleb128 0x16
	.uaword	.LASF7
	.byte	0x7
	.byte	0x5c
	.uaword	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x16
	.uaword	.LASF8
	.byte	0x7
	.byte	0x5d
	.uaword	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x62
	.uleb128 0x16
	.uaword	.LASF9
	.byte	0x7
	.byte	0x5e
	.uaword	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x16
	.uaword	.LASF10
	.byte	0x7
	.byte	0x5f
	.uaword	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x66
	.uleb128 0x16
	.uaword	.LASF11
	.byte	0x7
	.byte	0x60
	.uaword	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x16
	.uaword	.LASF12
	.byte	0x7
	.byte	0x61
	.uaword	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x6a
	.uleb128 0x16
	.uaword	.LASF13
	.byte	0x7
	.byte	0x62
	.uaword	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x16
	.uaword	.LASF14
	.byte	0x7
	.byte	0x65
	.uaword	0xebf
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x16
	.uaword	.LASF15
	.byte	0x7
	.byte	0x68
	.uaword	0xecf
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.byte	0
	.uleb128 0x5
	.uaword	0x233
	.uaword	0x10c1
	.uleb128 0x6
	.uaword	0x2c4
	.byte	0xb
	.byte	0
	.uleb128 0x3
	.string	"EnhancedResetLogEntry_t"
	.byte	0x7
	.byte	0x69
	.uaword	0xef8
	.uleb128 0x17
	.byte	0xd0
	.byte	0x7
	.byte	0x6b
	.uaword	0x110e
	.uleb128 0x18
	.string	"au8Data"
	.byte	0x7
	.byte	0x6c
	.uaword	0x110e
	.uleb128 0x18
	.string	"xResetLogEntry"
	.byte	0x7
	.byte	0x6d
	.uaword	0x10c1
	.byte	0
	.uleb128 0x5
	.uaword	0x1be
	.uaword	0x111e
	.uleb128 0x6
	.uaword	0x2c4
	.byte	0xc7
	.byte	0
	.uleb128 0x3
	.string	"ResetLogNvMEntry_t"
	.byte	0x7
	.byte	0x6e
	.uaword	0x10e0
	.uleb128 0x7
	.byte	0x8
	.byte	0x7
	.byte	0x70
	.uaword	0x1169
	.uleb128 0x8
	.string	"u16NvMID"
	.byte	0x7
	.byte	0x71
	.uaword	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"pxNvMEntry"
	.byte	0x7
	.byte	0x72
	.uaword	0x1169
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.uaword	0x111e
	.uleb128 0x3
	.string	"ResetLogNvMCfg"
	.byte	0x7
	.byte	0x73
	.uaword	0x1138
	.uleb128 0x7
	.byte	0x10
	.byte	0x7
	.byte	0x76
	.uaword	0x11d6
	.uleb128 0x8
	.string	"magic"
	.byte	0x7
	.byte	0x77
	.uaword	0x233
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"status"
	.byte	0x7
	.byte	0x78
	.uaword	0xcc0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"timestamp"
	.byte	0x7
	.byte	0x79
	.uaword	0x233
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.string	"checksum"
	.byte	0x7
	.byte	0x7a
	.uaword	0x233
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x3
	.string	"ShutdownStatusBlock_t"
	.byte	0x7
	.byte	0x7b
	.uaword	0x1185
	.uleb128 0xf
	.string	"_Ifx_SCU_RSTSTAT_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x3c9
	.uaword	0x145e
	.uleb128 0x19
	.string	"ESR0"
	.byte	0x8
	.uahalf	0x3cb
	.uaword	0xbe7
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x19
	.string	"ESR1"
	.byte	0x8
	.uahalf	0x3cc
	.uaword	0xbe7
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x19
	.string	"reserved_2"
	.byte	0x8
	.uahalf	0x3cd
	.uaword	0xbe7
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x19
	.string	"SMU"
	.byte	0x8
	.uahalf	0x3ce
	.uaword	0xbe7
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x19
	.string	"SW"
	.byte	0x8
	.uahalf	0x3cf
	.uaword	0xbe7
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x19
	.string	"STM0"
	.byte	0x8
	.uahalf	0x3d0
	.uaword	0xbe7
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x19
	.string	"STM1"
	.byte	0x8
	.uahalf	0x3d1
	.uaword	0xbe7
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x19
	.string	"STM2"
	.byte	0x8
	.uahalf	0x3d2
	.uaword	0xbe7
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x19
	.string	"STM3"
	.byte	0x8
	.uahalf	0x3d3
	.uaword	0xbe7
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x19
	.string	"reserved_9"
	.byte	0x8
	.uahalf	0x3d4
	.uaword	0xbe7
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x19
	.string	"reserved_10"
	.byte	0x8
	.uahalf	0x3d5
	.uaword	0xbe7
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x19
	.string	"reserved_11"
	.byte	0x8
	.uahalf	0x3d6
	.uaword	0xbe7
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x19
	.string	"PORST"
	.byte	0x8
	.uahalf	0x3d7
	.uaword	0xbe7
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x19
	.string	"reserved_17"
	.byte	0x8
	.uahalf	0x3d8
	.uaword	0xbe7
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x19
	.string	"CB0"
	.byte	0x8
	.uahalf	0x3d9
	.uaword	0xbe7
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x19
	.string	"CB1"
	.byte	0x8
	.uahalf	0x3da
	.uaword	0xbe7
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x19
	.string	"CB3"
	.byte	0x8
	.uahalf	0x3db
	.uaword	0xbe7
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x19
	.string	"reserved_21"
	.byte	0x8
	.uahalf	0x3dc
	.uaword	0xbe7
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x19
	.string	"reserved_22"
	.byte	0x8
	.uahalf	0x3dd
	.uaword	0xbe7
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x19
	.string	"EVRC"
	.byte	0x8
	.uahalf	0x3de
	.uaword	0xbe7
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x19
	.string	"EVR33"
	.byte	0x8
	.uahalf	0x3df
	.uaword	0xbe7
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x19
	.string	"SWD"
	.byte	0x8
	.uahalf	0x3e0
	.uaword	0xbe7
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x19
	.string	"HSMS"
	.byte	0x8
	.uahalf	0x3e1
	.uaword	0xbe7
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x19
	.string	"HSMA"
	.byte	0x8
	.uahalf	0x3e2
	.uaword	0xbe7
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x19
	.string	"STBYR"
	.byte	0x8
	.uahalf	0x3e3
	.uaword	0xbe7
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x19
	.string	"LBPORST"
	.byte	0x8
	.uahalf	0x3e4
	.uaword	0xbe7
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x19
	.string	"LBTERM"
	.byte	0x8
	.uahalf	0x3e5
	.uaword	0xbe7
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x19
	.string	"reserved_31"
	.byte	0x8
	.uahalf	0x3e6
	.uaword	0xbe7
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_RSTSTAT_Bits"
	.byte	0x8
	.uahalf	0x3e7
	.uaword	0x11f3
	.uleb128 0xf
	.string	"_Ifx_SCU_WDTCPU_SR_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x4f3
	.uaword	0x155e
	.uleb128 0x19
	.string	"AE"
	.byte	0x8
	.uahalf	0x4f5
	.uaword	0xbe7
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x19
	.string	"OE"
	.byte	0x8
	.uahalf	0x4f6
	.uaword	0xbe7
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x19
	.string	"IS0"
	.byte	0x8
	.uahalf	0x4f7
	.uaword	0xbe7
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x19
	.string	"DS"
	.byte	0x8
	.uahalf	0x4f8
	.uaword	0xbe7
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x19
	.string	"TO"
	.byte	0x8
	.uahalf	0x4f9
	.uaword	0xbe7
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x19
	.string	"IS1"
	.byte	0x8
	.uahalf	0x4fa
	.uaword	0xbe7
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x19
	.string	"US"
	.byte	0x8
	.uahalf	0x4fb
	.uaword	0xbe7
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x19
	.string	"PAS"
	.byte	0x8
	.uahalf	0x4fc
	.uaword	0xbe7
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x19
	.string	"TCS"
	.byte	0x8
	.uahalf	0x4fd
	.uaword	0xbe7
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x19
	.string	"TCT"
	.byte	0x8
	.uahalf	0x4fe
	.uaword	0xbe7
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x19
	.string	"TIM"
	.byte	0x8
	.uahalf	0x4ff
	.uaword	0xbe7
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_WDTCPU_SR_Bits"
	.byte	0x8
	.uahalf	0x500
	.uaword	0x147b
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x759
	.uaword	0x15a5
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x75b
	.uaword	0xbe7
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x75c
	.uaword	0xbfd
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x75d
	.uaword	0x145e
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_RSTSTAT"
	.byte	0x8
	.uahalf	0x75e
	.uaword	0x157d
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x829
	.uaword	0x15e5
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x82b
	.uaword	0xbe7
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x82c
	.uaword	0xbfd
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x82d
	.uaword	0x155e
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_WDTCPU_SR"
	.byte	0x8
	.uahalf	0x82e
	.uaword	0x15bd
	.uleb128 0x1a
	.string	"_Ifx_SMU_AG_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0xdc
	.uaword	0x184f
	.uleb128 0x1b
	.string	"SF0"
	.byte	0x9
	.byte	0xde
	.uaword	0xc47
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x1b
	.string	"SF1"
	.byte	0x9
	.byte	0xdf
	.uaword	0xc47
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x1b
	.string	"SF2"
	.byte	0x9
	.byte	0xe0
	.uaword	0xc47
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x1b
	.string	"SF3"
	.byte	0x9
	.byte	0xe1
	.uaword	0xc47
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x1b
	.string	"SF4"
	.byte	0x9
	.byte	0xe2
	.uaword	0xc47
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x1b
	.string	"SF5"
	.byte	0x9
	.byte	0xe3
	.uaword	0xc47
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x1b
	.string	"SF6"
	.byte	0x9
	.byte	0xe4
	.uaword	0xc47
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x1b
	.string	"SF7"
	.byte	0x9
	.byte	0xe5
	.uaword	0xc47
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x1b
	.string	"SF8"
	.byte	0x9
	.byte	0xe6
	.uaword	0xc47
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x1b
	.string	"SF9"
	.byte	0x9
	.byte	0xe7
	.uaword	0xc47
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x1b
	.string	"SF10"
	.byte	0x9
	.byte	0xe8
	.uaword	0xc47
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x1b
	.string	"SF11"
	.byte	0x9
	.byte	0xe9
	.uaword	0xc47
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x1b
	.string	"SF12"
	.byte	0x9
	.byte	0xea
	.uaword	0xc47
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x1b
	.string	"SF13"
	.byte	0x9
	.byte	0xeb
	.uaword	0xc47
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x1b
	.string	"SF14"
	.byte	0x9
	.byte	0xec
	.uaword	0xc47
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x1b
	.string	"SF15"
	.byte	0x9
	.byte	0xed
	.uaword	0xc47
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x1b
	.string	"SF16"
	.byte	0x9
	.byte	0xee
	.uaword	0xc47
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x1b
	.string	"SF17"
	.byte	0x9
	.byte	0xef
	.uaword	0xc47
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x1b
	.string	"SF18"
	.byte	0x9
	.byte	0xf0
	.uaword	0xc47
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x1b
	.string	"SF19"
	.byte	0x9
	.byte	0xf1
	.uaword	0xc47
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x1b
	.string	"SF20"
	.byte	0x9
	.byte	0xf2
	.uaword	0xc47
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x1b
	.string	"SF21"
	.byte	0x9
	.byte	0xf3
	.uaword	0xc47
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x1b
	.string	"SF22"
	.byte	0x9
	.byte	0xf4
	.uaword	0xc47
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x1b
	.string	"SF23"
	.byte	0x9
	.byte	0xf5
	.uaword	0xc47
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x1b
	.string	"SF24"
	.byte	0x9
	.byte	0xf6
	.uaword	0xc47
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x1b
	.string	"SF25"
	.byte	0x9
	.byte	0xf7
	.uaword	0xc47
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x1b
	.string	"SF26"
	.byte	0x9
	.byte	0xf8
	.uaword	0xc47
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x1b
	.string	"SF27"
	.byte	0x9
	.byte	0xf9
	.uaword	0xc47
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x1b
	.string	"SF28"
	.byte	0x9
	.byte	0xfa
	.uaword	0xc47
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x1b
	.string	"SF29"
	.byte	0x9
	.byte	0xfb
	.uaword	0xc47
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x1b
	.string	"SF30"
	.byte	0x9
	.byte	0xfc
	.uaword	0xc47
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x1b
	.string	"SF31"
	.byte	0x9
	.byte	0xfd
	.uaword	0xc47
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SMU_AG_Bits"
	.byte	0x9
	.byte	0xfe
	.uaword	0x15ff
	.uleb128 0x12
	.byte	0x4
	.byte	0x9
	.uahalf	0x294
	.uaword	0x188e
	.uleb128 0x13
	.string	"U"
	.byte	0x9
	.uahalf	0x296
	.uaword	0xbe7
	.uleb128 0x13
	.string	"I"
	.byte	0x9
	.uahalf	0x297
	.uaword	0xbfd
	.uleb128 0x13
	.string	"B"
	.byte	0x9
	.uahalf	0x298
	.uaword	0x184f
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SMU_AG"
	.byte	0x9
	.uahalf	0x299
	.uaword	0x1866
	.uleb128 0x14
	.byte	0x1
	.byte	0xa
	.byte	0xa9
	.uaword	0x1965
	.uleb128 0x15
	.string	"ePMUX_AN0_MUX10"
	.sleb128 192
	.uleb128 0x15
	.string	"ePMUX_AN1_MUX10"
	.sleb128 193
	.uleb128 0x15
	.string	"ePMUX_AN2_MUX10"
	.sleb128 194
	.uleb128 0x15
	.string	"ePMUX_AN3_MUX10"
	.sleb128 195
	.uleb128 0x15
	.string	"ePMUX_AN4_MUX10"
	.sleb128 196
	.uleb128 0x15
	.string	"ePMUX_AN5_MUX10"
	.sleb128 197
	.uleb128 0x15
	.string	"ePMUX_AN6_MUX10"
	.sleb128 198
	.uleb128 0x15
	.string	"ePMUX_AN7_MUX10"
	.sleb128 199
	.uleb128 0x15
	.string	"ePMux_ANInputMux10MaxChannelNum"
	.sleb128 200
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.byte	0xa
	.byte	0xb5
	.uaword	0x1a29
	.uleb128 0x15
	.string	"ePMUX_AN0_MUX11"
	.sleb128 208
	.uleb128 0x15
	.string	"ePMUX_AN1_MUX11"
	.sleb128 209
	.uleb128 0x15
	.string	"ePMUX_AN2_MUX11"
	.sleb128 210
	.uleb128 0x15
	.string	"ePMUX_AN3_MUX11"
	.sleb128 211
	.uleb128 0x15
	.string	"ePMUX_AN4_MUX11"
	.sleb128 212
	.uleb128 0x15
	.string	"ePMUX_AN5_MUX11"
	.sleb128 213
	.uleb128 0x15
	.string	"ePMUX_AN6_MUX11"
	.sleb128 214
	.uleb128 0x15
	.string	"ePMUX_AN7_MUX11"
	.sleb128 215
	.uleb128 0x15
	.string	"ePMux_ANInputMux11MaxChannelNum"
	.sleb128 216
	.byte	0
	.uleb128 0x1c
	.string	"is_continuous"
	.byte	0x1
	.byte	0xae
	.byte	0x1
	.uaword	0x27e
	.byte	0x1
	.uaword	0x1a63
	.uleb128 0x1d
	.string	"a"
	.byte	0x1
	.byte	0xae
	.uaword	0x1e9
	.uleb128 0x1d
	.string	"b"
	.byte	0x1
	.byte	0xae
	.uaword	0x1e9
	.uleb128 0x1e
	.string	"bRet"
	.byte	0x1
	.byte	0xb0
	.uaword	0x27e
	.byte	0
	.uleb128 0x1c
	.string	"WriteShutdownStatusImmediate"
	.byte	0x1
	.byte	0x4b
	.byte	0x1
	.uaword	0x2ae
	.byte	0x1
	.uaword	0x1aa8
	.uleb128 0x1e
	.string	"blockId"
	.byte	0x1
	.byte	0x4d
	.uaword	0x1e9
	.uleb128 0x1e
	.string	"ret"
	.byte	0x1
	.byte	0x4f
	.uaword	0x2ae
	.byte	0
	.uleb128 0x1c
	.string	"WriteLogEntryImmediate"
	.byte	0x1
	.byte	0x3e
	.byte	0x1
	.uaword	0x2ae
	.byte	0x1
	.uaword	0x1af2
	.uleb128 0x1f
	.uaword	.LASF2
	.byte	0x1
	.byte	0x3e
	.uaword	0x1be
	.uleb128 0x1e
	.string	"blockId"
	.byte	0x1
	.byte	0x45
	.uaword	0x1e9
	.uleb128 0x1e
	.string	"ret"
	.byte	0x1
	.byte	0x46
	.uaword	0x2ae
	.byte	0
	.uleb128 0x1c
	.string	"ERL_GetLastShutdownStatus"
	.byte	0x1
	.byte	0x6b
	.byte	0x1
	.uaword	0xcc0
	.byte	0x1
	.uaword	0x1b26
	.uleb128 0x1e
	.string	"eRet"
	.byte	0x1
	.byte	0x6d
	.uaword	0xcc0
	.byte	0
	.uleb128 0x20
	.string	"CollectResetInfo"
	.byte	0x1
	.byte	0x86
	.byte	0x1
	.byte	0x1
	.uaword	0x1b59
	.uleb128 0x1d
	.string	"entry"
	.byte	0x1
	.byte	0x86
	.uaword	0x1169
	.uleb128 0x1f
	.uaword	.LASF16
	.byte	0x1
	.byte	0x86
	.uaword	0x233
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"ERL_vidSaveInfoToNoClearRam"
	.byte	0x1
	.uahalf	0x102
	.byte	0x1
	.uaword	.LFB39
	.uaword	.LFE39
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1c2f
	.uleb128 0x22
	.string	"u8Index"
	.byte	0x1
	.uahalf	0x104
	.uaword	0x1be
	.uaword	.LLST0
	.uleb128 0x23
	.uaword	.LVL5
	.uaword	0x260a
	.uleb128 0x23
	.uaword	.LVL6
	.uaword	0x2637
	.uleb128 0x24
	.uaword	.LVL7
	.uaword	0x2665
	.uaword	0x1bc5
	.uleb128 0x25
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x9
	.byte	0xd3
	.byte	0
	.uleb128 0x24
	.uaword	.LVL8
	.uaword	0x2665
	.uaword	0x1bd9
	.uleb128 0x25
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x9
	.byte	0xd1
	.byte	0
	.uleb128 0x24
	.uaword	.LVL9
	.uaword	0x2665
	.uaword	0x1bed
	.uleb128 0x25
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x9
	.byte	0xd2
	.byte	0
	.uleb128 0x24
	.uaword	.LVL10
	.uaword	0x2665
	.uaword	0x1c01
	.uleb128 0x25
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x9
	.byte	0xc3
	.byte	0
	.uleb128 0x24
	.uaword	.LVL11
	.uaword	0x2665
	.uaword	0x1c15
	.uleb128 0x25
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x9
	.byte	0xc2
	.byte	0
	.uleb128 0x23
	.uaword	.LVL12
	.uaword	0x268d
	.uleb128 0x26
	.uaword	.LVL13
	.uaword	0x2665
	.uleb128 0x25
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x9
	.byte	0xc0
	.byte	0
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.string	"ERL_vidRestoreInfoFromNoClearRam"
	.byte	0x1
	.uahalf	0x12a
	.byte	0x1
	.byte	0x1
	.uaword	0x1c7a
	.uleb128 0x28
	.string	"entry"
	.byte	0x1
	.uahalf	0x12a
	.uaword	0x1169
	.uleb128 0x29
	.string	"u8Index"
	.byte	0x1
	.uahalf	0x12c
	.uaword	0x1be
	.byte	0
	.uleb128 0x2a
	.uaword	0x1c2f
	.uaword	.LFB40
	.uaword	.LFE40
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1ca0
	.uleb128 0x2b
	.uaword	0x1c5b
	.byte	0x1
	.byte	0x64
	.uleb128 0x2c
	.uaword	0x1c69
	.uaword	.LLST1
	.byte	0
	.uleb128 0x1c
	.string	"FindNextLogIndex"
	.byte	0x1
	.byte	0xc6
	.byte	0x1
	.uaword	0x1be
	.byte	0x1
	.uaword	0x1d1b
	.uleb128 0x1f
	.uaword	.LASF17
	.byte	0x1
	.byte	0xc6
	.uaword	0x453
	.uleb128 0x1e
	.string	"u8Idx"
	.byte	0x1
	.byte	0xc8
	.uaword	0x1be
	.uleb128 0x1e
	.string	"u8NextIdx"
	.byte	0x1
	.byte	0xc9
	.uaword	0x1be
	.uleb128 0x1e
	.string	"u8RetIdx"
	.byte	0x1
	.byte	0xca
	.uaword	0x1be
	.uleb128 0x1e
	.string	"bIsContinue"
	.byte	0x1
	.byte	0xcb
	.uaword	0x27e
	.uleb128 0x1e
	.string	"bIsFound"
	.byte	0x1
	.byte	0xcb
	.uaword	0x27e
	.byte	0
	.uleb128 0x1c
	.string	"GetResetType"
	.byte	0x1
	.byte	0x7b
	.byte	0x1
	.uaword	0xd8f
	.byte	0x1
	.uaword	0x1d41
	.uleb128 0x1f
	.uaword	.LASF16
	.byte	0x1
	.byte	0x7b
	.uaword	0x233
	.byte	0
	.uleb128 0x2d
	.byte	0x1
	.uaword	.LASF18
	.byte	0x1
	.uahalf	0x166
	.byte	0x1
	.uaword	.LFB42
	.uaword	.LFE42
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1eed
	.uleb128 0x22
	.string	"newEntry"
	.byte	0x1
	.uahalf	0x168
	.uaword	0x1169
	.uaword	.LLST2
	.uleb128 0x2e
	.uaword	.LASF17
	.byte	0x1
	.uahalf	0x169
	.uaword	0x1e9
	.uaword	.LLST3
	.uleb128 0x29
	.string	"writeIndex"
	.byte	0x1
	.uahalf	0x16a
	.uaword	0x1be
	.uleb128 0x2f
	.uaword	.LASF16
	.byte	0x1
	.uahalf	0x16c
	.uaword	0x233
	.byte	0x1
	.byte	0x59
	.uleb128 0x30
	.uaword	0x1ca0
	.uaword	.LBB23
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.uahalf	0x16e
	.uaword	0x1e22
	.uleb128 0x2b
	.uaword	0x1cbe
	.byte	0x6
	.byte	0xf2
	.uaword	.Ldebug_info0+7536
	.sleb128 0
	.uleb128 0x31
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x2c
	.uaword	0x1cc9
	.uaword	.LLST4
	.uleb128 0x2c
	.uaword	0x1cd6
	.uaword	.LLST5
	.uleb128 0x2c
	.uaword	0x1ce7
	.uaword	.LLST6
	.uleb128 0x32
	.uaword	0x1cf7
	.uleb128 0x2c
	.uaword	0x1d0a
	.uaword	.LLST7
	.uleb128 0x33
	.uaword	0x1a29
	.uaword	.LBB25
	.uaword	.Ldebug_ranges0+0x28
	.byte	0x1
	.byte	0xe6
	.uleb128 0x34
	.uaword	0x1a4d
	.uaword	.LLST8
	.uleb128 0x34
	.uaword	0x1a44
	.uaword	.LLST9
	.uleb128 0x31
	.uaword	.Ldebug_ranges0+0x28
	.uleb128 0x2c
	.uaword	0x1a56
	.uaword	.LLST10
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.uaword	0x1b26
	.uaword	.LBB56
	.uaword	.Ldebug_ranges0+0x98
	.byte	0x1
	.uahalf	0x178
	.uaword	0x1e62
	.uleb128 0x34
	.uaword	0x1b4d
	.uaword	.LLST11
	.uleb128 0x34
	.uaword	0x1b40
	.uaword	.LLST12
	.uleb128 0x33
	.uaword	0x1d1b
	.uaword	.LBB58
	.uaword	.Ldebug_ranges0+0xd0
	.byte	0x1
	.byte	0x8a
	.uleb128 0x34
	.uaword	0x1d35
	.uaword	.LLST13
	.byte	0
	.byte	0
	.uleb128 0x30
	.uaword	0x1c2f
	.uaword	.LBB67
	.uaword	.Ldebug_ranges0+0xe8
	.byte	0x1
	.uahalf	0x17a
	.uaword	0x1e8f
	.uleb128 0x34
	.uaword	0x1c5b
	.uaword	.LLST14
	.uleb128 0x31
	.uaword	.Ldebug_ranges0+0xe8
	.uleb128 0x2c
	.uaword	0x1c69
	.uaword	.LLST15
	.byte	0
	.byte	0
	.uleb128 0x35
	.uaword	0x1aa8
	.uaword	.LBB81
	.uaword	.LBE81
	.byte	0x1
	.uahalf	0x17c
	.uaword	0x1ed1
	.uleb128 0x36
	.uaword	0x1acc
	.uleb128 0x37
	.uaword	.LBB82
	.uaword	.LBE82
	.uleb128 0x2c
	.uaword	0x1ad7
	.uaword	.LLST16
	.uleb128 0x32
	.uaword	0x1ae6
	.uleb128 0x38
	.uaword	.LVL81
	.byte	0x1
	.uaword	0x26ba
	.uleb128 0x25
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.uaword	.LVL70
	.uaword	0x26e3
	.uleb128 0x25
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x8
	.byte	0xd0
	.uleb128 0x25
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.uleb128 0x25
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.string	"UpdateShutdownStatus"
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.uaword	0x1be
	.byte	0x1
	.uaword	0x1f21
	.uleb128 0x1d
	.string	"newStatus"
	.byte	0x1
	.byte	0x5a
	.uaword	0xcc0
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"ERL_Init"
	.byte	0x1
	.uahalf	0x154
	.byte	0x1
	.uaword	.LFB41
	.uaword	.LFE41
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1ff8
	.uleb128 0x29
	.string	"eStatus"
	.byte	0x1
	.uahalf	0x156
	.uaword	0xcc0
	.uleb128 0x35
	.uaword	0x1af2
	.uaword	.LBB92
	.uaword	.LBE92
	.byte	0x1
	.uahalf	0x156
	.uaword	0x1f78
	.uleb128 0x37
	.uaword	.LBB93
	.uaword	.LBE93
	.uleb128 0x2c
	.uaword	0x1b19
	.uaword	.LLST17
	.byte	0
	.byte	0
	.uleb128 0x35
	.uaword	0x1eed
	.uaword	.LBB94
	.uaword	.LBE94
	.byte	0x1
	.uahalf	0x160
	.uaword	0x1fd0
	.uleb128 0x34
	.uaword	0x1f0f
	.uaword	.LLST18
	.uleb128 0x33
	.uaword	0x1a63
	.uaword	.LBB96
	.uaword	.Ldebug_ranges0+0x118
	.byte	0x1
	.byte	0x65
	.uleb128 0x31
	.uaword	.Ldebug_ranges0+0x118
	.uleb128 0x2c
	.uaword	0x1a8d
	.uaword	.LLST19
	.uleb128 0x32
	.uaword	0x1a9c
	.uleb128 0x38
	.uaword	.LVL96
	.byte	0x1
	.uaword	0x26ba
	.uleb128 0x25
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x25
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x4a
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x37
	.uaword	.LBB102
	.uaword	.LBE102
	.uleb128 0x39
	.byte	0x1
	.uaword	.LASF18
	.byte	0x1
	.uahalf	0x15b
	.uaword	0x21b
	.byte	0x1
	.uaword	0x1fed
	.uleb128 0x3a
	.byte	0
	.uleb128 0x23
	.uaword	.LVL97
	.uaword	0x1d41
	.byte	0
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"ERL_MarkNormalShutdown"
	.byte	0x1
	.uahalf	0x183
	.byte	0x1
	.uaword	.LFB43
	.uaword	.LFE43
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x2075
	.uleb128 0x3b
	.uaword	0x1eed
	.uaword	.LBB107
	.uaword	.LBE107
	.byte	0x1
	.uahalf	0x186
	.uleb128 0x3c
	.uaword	0x1f0f
	.sleb128 -86
	.uleb128 0x33
	.uaword	0x1a63
	.uaword	.LBB109
	.uaword	.Ldebug_ranges0+0x138
	.byte	0x1
	.byte	0x65
	.uleb128 0x31
	.uaword	.Ldebug_ranges0+0x138
	.uleb128 0x3d
	.uaword	0x1a8d
	.byte	0x1a
	.uleb128 0x32
	.uaword	0x1a9c
	.uleb128 0x38
	.uaword	.LVL100
	.byte	0x1
	.uaword	0x26ba
	.uleb128 0x25
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x25
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x4a
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.string	"ERL_UpdateUptime"
	.byte	0x1
	.uahalf	0x18c
	.byte	0x1
	.uaword	.LFB44
	.uaword	.LFE44
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x21
	.byte	0x1
	.string	"ERL_vidReadLogByIndex"
	.byte	0x1
	.uahalf	0x198
	.byte	0x1
	.uaword	.LFB45
	.uaword	.LFE45
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x2113
	.uleb128 0x3f
	.string	"request"
	.byte	0x1
	.uahalf	0x198
	.uaword	0x1be
	.byte	0x1
	.byte	0x54
	.uleb128 0x40
	.string	"response"
	.byte	0x1
	.uahalf	0x198
	.uaword	0x44d
	.uaword	.LLST20
	.uleb128 0x41
	.string	"logIndex"
	.byte	0x1
	.uahalf	0x19a
	.uaword	0x1be
	.byte	0x5
	.byte	0x74
	.sleb128 0
	.byte	0x3a
	.byte	0x1d
	.byte	0x9f
	.uleb128 0x2e
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x19b
	.uaword	0x1be
	.uaword	.LLST21
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.string	"ERL_GetResetTypeString"
	.byte	0x1
	.uahalf	0x1a8
	.byte	0x1
	.uaword	0x2156
	.uaword	.LFB46
	.uaword	.LFE46
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x2156
	.uleb128 0x40
	.string	"type"
	.byte	0x1
	.uahalf	0x1a8
	.uaword	0xd8f
	.uaword	.LLST22
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.uaword	0x215c
	.uleb128 0xb
	.uaword	0x2161
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x42
	.byte	0x1
	.string	"ERL_GetShutdownStatusString"
	.byte	0x1
	.uahalf	0x1b7
	.byte	0x1
	.uaword	0x2156
	.uaword	.LFB47
	.uaword	.LFE47
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x21b3
	.uleb128 0x40
	.string	"status"
	.byte	0x1
	.uahalf	0x1b7
	.uaword	0xcc0
	.uaword	.LLST23
	.byte	0
	.uleb128 0x43
	.string	"g_latestSequence"
	.byte	0x1
	.byte	0xb
	.uaword	0x1e9
	.byte	0
	.uleb128 0x44
	.string	"g_systemUptime"
	.byte	0x1
	.byte	0xc
	.uaword	0x233
	.byte	0x5
	.byte	0x3
	.uaword	g_systemUptime
	.uleb128 0x44
	.string	"NoClearResetLog"
	.byte	0x1
	.byte	0x13
	.uaword	0xedf
	.byte	0x5
	.byte	0x3
	.uaword	NoClearResetLog
	.uleb128 0x5
	.uaword	0xbc9
	.uaword	0x2210
	.uleb128 0x45
	.byte	0
	.uleb128 0x46
	.string	"Os_ControlledCoreInfo"
	.byte	0x4
	.uahalf	0x47f
	.uaword	0x2205
	.byte	0x1
	.byte	0x1
	.uleb128 0x47
	.string	"ERL_xShutdownStatusBlock"
	.byte	0x1
	.byte	0xe
	.uaword	0x11d6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	ERL_xShutdownStatusBlock
	.uleb128 0x47
	.string	"ERL_xShutdownStatusBlockRom_NVM"
	.byte	0x1
	.byte	0x10
	.uaword	0x2285
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	ERL_xShutdownStatusBlockRom_NVM
	.uleb128 0xb
	.uaword	0x11d6
	.uleb128 0x47
	.string	"ERL_xResetLogNvMEntry_0"
	.byte	0x1
	.byte	0x16
	.uaword	0x111e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	ERL_xResetLogNvMEntry_0
	.uleb128 0x47
	.string	"ERL_xResetLogNvMEntry_1"
	.byte	0x1
	.byte	0x17
	.uaword	0x111e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	ERL_xResetLogNvMEntry_1
	.uleb128 0x47
	.string	"ERL_xResetLogNvMEntry_2"
	.byte	0x1
	.byte	0x18
	.uaword	0x111e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	ERL_xResetLogNvMEntry_2
	.uleb128 0x47
	.string	"ERL_xResetLogNvMEntry_3"
	.byte	0x1
	.byte	0x19
	.uaword	0x111e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	ERL_xResetLogNvMEntry_3
	.uleb128 0x47
	.string	"ERL_xResetLogNvMEntry_4"
	.byte	0x1
	.byte	0x1a
	.uaword	0x111e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	ERL_xResetLogNvMEntry_4
	.uleb128 0x47
	.string	"ERL_xResetLogNvMEntry_5"
	.byte	0x1
	.byte	0x1b
	.uaword	0x111e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	ERL_xResetLogNvMEntry_5
	.uleb128 0x47
	.string	"ERL_xResetLogNvMEntry_6"
	.byte	0x1
	.byte	0x1c
	.uaword	0x111e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	ERL_xResetLogNvMEntry_6
	.uleb128 0x47
	.string	"ERL_xResetLogNvMEntry_7"
	.byte	0x1
	.byte	0x1d
	.uaword	0x111e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	ERL_xResetLogNvMEntry_7
	.uleb128 0x47
	.string	"ERL_xResetLogNvMEntry_8"
	.byte	0x1
	.byte	0x1e
	.uaword	0x111e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	ERL_xResetLogNvMEntry_8
	.uleb128 0x47
	.string	"ERL_xResetLogNvMEntry_9"
	.byte	0x1
	.byte	0x1f
	.uaword	0x111e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	ERL_xResetLogNvMEntry_9
	.uleb128 0x47
	.string	"ERL_xResetLogNvMEntry_0_Rom_NVM"
	.byte	0x1
	.byte	0x21
	.uaword	0x2434
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	ERL_xResetLogNvMEntry_0_Rom_NVM
	.uleb128 0xb
	.uaword	0x111e
	.uleb128 0x47
	.string	"ERL_xResetLogNvMEntry_1_Rom_NVM"
	.byte	0x1
	.byte	0x22
	.uaword	0x2434
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	ERL_xResetLogNvMEntry_1_Rom_NVM
	.uleb128 0x47
	.string	"ERL_xResetLogNvMEntry_2_Rom_NVM"
	.byte	0x1
	.byte	0x23
	.uaword	0x2434
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	ERL_xResetLogNvMEntry_2_Rom_NVM
	.uleb128 0x47
	.string	"ERL_xResetLogNvMEntry_3_Rom_NVM"
	.byte	0x1
	.byte	0x24
	.uaword	0x2434
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	ERL_xResetLogNvMEntry_3_Rom_NVM
	.uleb128 0x47
	.string	"ERL_xResetLogNvMEntry_4_Rom_NVM"
	.byte	0x1
	.byte	0x25
	.uaword	0x2434
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	ERL_xResetLogNvMEntry_4_Rom_NVM
	.uleb128 0x47
	.string	"ERL_xResetLogNvMEntry_5_Rom_NVM"
	.byte	0x1
	.byte	0x26
	.uaword	0x2434
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	ERL_xResetLogNvMEntry_5_Rom_NVM
	.uleb128 0x47
	.string	"ERL_xResetLogNvMEntry_6_Rom_NVM"
	.byte	0x1
	.byte	0x27
	.uaword	0x2434
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	ERL_xResetLogNvMEntry_6_Rom_NVM
	.uleb128 0x47
	.string	"ERL_xResetLogNvMEntry_7_Rom_NVM"
	.byte	0x1
	.byte	0x28
	.uaword	0x2434
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	ERL_xResetLogNvMEntry_7_Rom_NVM
	.uleb128 0x47
	.string	"ERL_xResetLogNvMEntry_8_Rom_NVM"
	.byte	0x1
	.byte	0x29
	.uaword	0x2434
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	ERL_xResetLogNvMEntry_8_Rom_NVM
	.uleb128 0x47
	.string	"ERL_xResetLogNvMEntry_9_Rom_NVM"
	.byte	0x1
	.byte	0x2a
	.uaword	0x2434
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	ERL_xResetLogNvMEntry_9_Rom_NVM
	.uleb128 0x5
	.uaword	0x116f
	.uaword	0x25e7
	.uleb128 0x6
	.uaword	0x2c4
	.byte	0x9
	.byte	0
	.uleb128 0x47
	.string	"ERL_axResetLogNvMCfg"
	.byte	0x1
	.byte	0x2c
	.uaword	0x25d7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	ERL_axResetLogNvMCfg
	.uleb128 0x48
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_AN_P5V_REF"
	.byte	0xb
	.byte	0xa5
	.byte	0x1
	.uaword	0x1e9
	.byte	0x1
	.uleb128 0x48
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_AN_P5V_AD2S"
	.byte	0xb
	.byte	0x9f
	.byte	0x1
	.uaword	0x1e9
	.byte	0x1
	.uleb128 0x49
	.byte	0x1
	.string	"PMux_u16GetInputVal"
	.byte	0xa
	.byte	0xd7
	.byte	0x1
	.uaword	0x1e9
	.byte	0x1
	.uaword	0x268d
	.uleb128 0x4a
	.uaword	0x448
	.byte	0
	.uleb128 0x48
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_AN_15V_RDC"
	.byte	0xb
	.byte	0xa3
	.byte	0x1
	.uaword	0x1e9
	.byte	0x1
	.uleb128 0x4b
	.byte	0x1
	.string	"NvM_WriteBlock"
	.byte	0xc
	.uahalf	0x20e
	.byte	0x1
	.uaword	0x2ae
	.byte	0x1
	.uaword	0x26e3
	.uleb128 0x4a
	.uaword	0xc13
	.uleb128 0x4a
	.uaword	0xc2b
	.byte	0
	.uleb128 0x4c
	.byte	0x1
	.string	"rba_BswSrv_MemSet"
	.byte	0xd
	.byte	0x47
	.byte	0x1
	.uaword	0x2d0
	.byte	0x1
	.uleb128 0x4a
	.uaword	0x2d0
	.uleb128 0x4a
	.uaword	0x20d
	.uleb128 0x4a
	.uaword	0x233
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
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x12
	.uleb128 0x17
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
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x17
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
	.uleb128 0x18
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
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x13
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
	.uleb128 0x1b
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x36
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3b
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
	.uleb128 0x3c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x43
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x44
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
	.uleb128 0x45
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x46
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
	.uleb128 0x47
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
	.uleb128 0x48
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
	.uleb128 0x49
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
	.uleb128 0x4a
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4b
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
	.uleb128 0x4c
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
	.uaword	.LFE39
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LFE40
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL69
	.uaword	.LVL82
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL32
	.uaword	.LVL35
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL35
	.uaword	.LVL36
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL36
	.uaword	.LVL39
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL39
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL40
	.uaword	.LVL43
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL43
	.uaword	.LVL44
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL44
	.uaword	.LVL47
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL47
	.uaword	.LVL48
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL48
	.uaword	.LVL51
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL51
	.uaword	.LVL52
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL52
	.uaword	.LVL55
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL55
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL56
	.uaword	.LVL60
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL60
	.uaword	.LVL61
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL61
	.uaword	.LVL64
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL64
	.uaword	.LVL65
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL65
	.uaword	.LVL67
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL67
	.uaword	.LVL68
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL68
	.uaword	.LVL73
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL84
	.uaword	.LVL85
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL26
	.uaword	.LVL27
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	.LVL27
	.uaword	.LVL28
	.uahalf	0x2
	.byte	0x37
	.byte	0x9f
	.uaword	.LVL28
	.uaword	.LVL29
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	.LVL29
	.uaword	.LVL30
	.uahalf	0x2
	.byte	0x39
	.byte	0x9f
	.uaword	.LVL30
	.uaword	.LVL32
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL32
	.uaword	.LVL36
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL36
	.uaword	.LVL40
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL40
	.uaword	.LVL44
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL44
	.uaword	.LVL48
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL48
	.uaword	.LVL52
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL52
	.uaword	.LVL56
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	.LVL56
	.uaword	.LVL61
	.uahalf	0x2
	.byte	0x37
	.byte	0x9f
	.uaword	.LVL61
	.uaword	.LVL65
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	.LVL65
	.uaword	.LVL68
	.uahalf	0x2
	.byte	0x39
	.byte	0x9f
	.uaword	.LVL68
	.uaword	.LVL69
	.uahalf	0x2
	.byte	0x3a
	.byte	0x9f
	.uaword	.LVL82
	.uaword	.LVL83
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL85
	.uaword	.LVL86
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL86
	.uaword	.LVL87
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL87
	.uaword	.LVL88
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL88
	.uaword	.LVL89
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL89
	.uaword	.LVL90
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	.LVL90
	.uaword	.LVL91
	.uahalf	0x2
	.byte	0x37
	.byte	0x9f
	.uaword	.LVL91
	.uaword	.LVL92
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	.LVL92
	.uaword	.LFE42
	.uahalf	0x2
	.byte	0x39
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL30
	.uaword	.LVL32
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL32
	.uaword	.LVL36
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL36
	.uaword	.LVL40
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL40
	.uaword	.LVL44
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL44
	.uaword	.LVL48
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL48
	.uaword	.LVL52
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	.LVL52
	.uaword	.LVL56
	.uahalf	0x2
	.byte	0x37
	.byte	0x9f
	.uaword	.LVL56
	.uaword	.LVL61
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	.LVL61
	.uaword	.LVL65
	.uahalf	0x2
	.byte	0x39
	.byte	0x9f
	.uaword	.LVL65
	.uaword	.LVL69
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL32
	.uaword	.LVL34
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL34
	.uaword	.LVL36
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL36
	.uaword	.LVL38
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL38
	.uaword	.LVL40
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL40
	.uaword	.LVL42
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL42
	.uaword	.LVL44
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL44
	.uaword	.LVL46
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL46
	.uaword	.LVL48
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL48
	.uaword	.LVL50
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL50
	.uaword	.LVL52
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	.LVL52
	.uaword	.LVL54
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL54
	.uaword	.LVL56
	.uahalf	0x2
	.byte	0x37
	.byte	0x9f
	.uaword	.LVL56
	.uaword	.LVL59
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL59
	.uaword	.LVL61
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	.LVL61
	.uaword	.LVL63
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL63
	.uaword	.LVL65
	.uahalf	0x2
	.byte	0x39
	.byte	0x9f
	.uaword	.LVL65
	.uaword	.LVL66
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL66
	.uaword	.LVL68
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL68
	.uaword	.LVL82
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL83
	.uaword	.LVL85
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL20
	.uaword	.LVL69
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL82
	.uaword	.LVL83
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL83
	.uaword	.LVL85
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL85
	.uaword	.LFE42
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL31
	.uaword	.LVL33
	.uahalf	0x2
	.byte	0x83
	.sleb128 2
	.uaword	.LVL33
	.uaword	.LVL37
	.uahalf	0x2
	.byte	0x82
	.sleb128 2
	.uaword	.LVL37
	.uaword	.LVL41
	.uahalf	0x2
	.byte	0x84
	.sleb128 2
	.uaword	.LVL41
	.uaword	.LVL45
	.uahalf	0x2
	.byte	0x85
	.sleb128 2
	.uaword	.LVL45
	.uaword	.LVL49
	.uahalf	0x2
	.byte	0x86
	.sleb128 2
	.uaword	.LVL49
	.uaword	.LVL53
	.uahalf	0x2
	.byte	0x87
	.sleb128 2
	.uaword	.LVL53
	.uaword	.LVL57
	.uahalf	0x2
	.byte	0x8d
	.sleb128 2
	.uaword	.LVL57
	.uaword	.LVL58
	.uahalf	0x2
	.byte	0x8f
	.sleb128 2
	.uaword	.LVL58
	.uaword	.LVL62
	.uahalf	0x2
	.byte	0x71
	.sleb128 2
	.uaword	.LVL62
	.uaword	.LVL65
	.uahalf	0x2
	.byte	0x8e
	.sleb128 2
	.uaword	.LVL65
	.uaword	.LVL69
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL31
	.uaword	.LVL33
	.uahalf	0x2
	.byte	0x8f
	.sleb128 2
	.uaword	.LVL33
	.uaword	.LVL37
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL37
	.uaword	.LVL41
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL41
	.uaword	.LVL45
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL45
	.uaword	.LVL49
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL49
	.uaword	.LVL53
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL53
	.uaword	.LVL57
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL57
	.uaword	.LVL62
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL62
	.uaword	.LVL65
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL65
	.uaword	.LVL69
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL31
	.uaword	.LVL69
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL71
	.uaword	.LVL82
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL71
	.uaword	.LVL82
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL72
	.uaword	.LVL82
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL74
	.uaword	.LVL81
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL75
	.uaword	.LVL76
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL76
	.uaword	.LVL77
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL77
	.uaword	.LVL78
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL78
	.uaword	.LVL79
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL79
	.uaword	.LVL81
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL80
	.uaword	.LVL81-1
	.uahalf	0xa
	.byte	0x7a
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x3
	.uaword	ERL_axResetLogNvMCfg
	.byte	0x22
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL93
	.uaword	.LVL94
	.uahalf	0x3
	.byte	0x9
	.byte	0xaa
	.byte	0x9f
	.uaword	.LVL96
	.uaword	.LVL97-1
	.uahalf	0x5
	.byte	0x3
	.uaword	ERL_xShutdownStatusBlock+4
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL94
	.uaword	.LVL96
	.uahalf	0x3
	.byte	0x8
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL95
	.uaword	.LVL96
	.uahalf	0x2
	.byte	0x4a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL101
	.uaword	.LVL102
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL102
	.uaword	.LFE45
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL101
	.uaword	.LVL102
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL102
	.uaword	.LFE45
	.uahalf	0x6
	.byte	0x82
	.sleb128 0
	.byte	0x84
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL104
	.uaword	.LVL105
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL105
	.uaword	.LFE46
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL106
	.uaword	.LVL107
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL107
	.uaword	.LVL108
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL108
	.uaword	.LVL109
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL109
	.uaword	.LFE47
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x5c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB39
	.uaword	.LFE39-.LFB39
	.uaword	.LFB40
	.uaword	.LFE40-.LFB40
	.uaword	.LFB42
	.uaword	.LFE42-.LFB42
	.uaword	.LFB41
	.uaword	.LFE41-.LFB41
	.uaword	.LFB43
	.uaword	.LFE43-.LFB43
	.uaword	.LFB44
	.uaword	.LFE44-.LFB44
	.uaword	.LFB45
	.uaword	.LFE45-.LFB45
	.uaword	.LFB46
	.uaword	.LFE46-.LFB46
	.uaword	.LFB47
	.uaword	.LFE47-.LFB47
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB23
	.uaword	.LBE23
	.uaword	.LBB54
	.uaword	.LBE54
	.uaword	.LBB55
	.uaword	.LBE55
	.uaword	.LBB84
	.uaword	.LBE84
	.uaword	0
	.uaword	0
	.uaword	.LBB25
	.uaword	.LBE25
	.uaword	.LBB39
	.uaword	.LBE39
	.uaword	.LBB40
	.uaword	.LBE40
	.uaword	.LBB41
	.uaword	.LBE41
	.uaword	.LBB42
	.uaword	.LBE42
	.uaword	.LBB43
	.uaword	.LBE43
	.uaword	.LBB44
	.uaword	.LBE44
	.uaword	.LBB45
	.uaword	.LBE45
	.uaword	.LBB46
	.uaword	.LBE46
	.uaword	.LBB47
	.uaword	.LBE47
	.uaword	.LBB48
	.uaword	.LBE48
	.uaword	.LBB49
	.uaword	.LBE49
	.uaword	.LBB50
	.uaword	.LBE50
	.uaword	0
	.uaword	0
	.uaword	.LBB56
	.uaword	.LBE56
	.uaword	.LBB73
	.uaword	.LBE73
	.uaword	.LBB75
	.uaword	.LBE75
	.uaword	.LBB77
	.uaword	.LBE77
	.uaword	.LBB79
	.uaword	.LBE79
	.uaword	.LBB83
	.uaword	.LBE83
	.uaword	0
	.uaword	0
	.uaword	.LBB58
	.uaword	.LBE58
	.uaword	.LBB61
	.uaword	.LBE61
	.uaword	0
	.uaword	0
	.uaword	.LBB67
	.uaword	.LBE67
	.uaword	.LBB74
	.uaword	.LBE74
	.uaword	.LBB76
	.uaword	.LBE76
	.uaword	.LBB78
	.uaword	.LBE78
	.uaword	.LBB80
	.uaword	.LBE80
	.uaword	0
	.uaword	0
	.uaword	.LBB96
	.uaword	.LBE96
	.uaword	.LBB100
	.uaword	.LBE100
	.uaword	.LBB101
	.uaword	.LBE101
	.uaword	0
	.uaword	0
	.uaword	.LBB109
	.uaword	.LBE109
	.uaword	.LBB113
	.uaword	.LBE113
	.uaword	.LBB114
	.uaword	.LBE114
	.uaword	0
	.uaword	0
	.uaword	.LFB39
	.uaword	.LFE39
	.uaword	.LFB40
	.uaword	.LFE40
	.uaword	.LFB42
	.uaword	.LFE42
	.uaword	.LFB41
	.uaword	.LFE41
	.uaword	.LFB43
	.uaword	.LFE43
	.uaword	.LFB44
	.uaword	.LFE44
	.uaword	.LFB45
	.uaword	.LFE45
	.uaword	.LFB46
	.uaword	.LFE46
	.uaword	.LFB47
	.uaword	.LFE47
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF17:
	.string	"nextSequence"
.LASF9:
	.string	"u16P5VCom"
.LASF4:
	.string	"trapOccurred"
.LASF12:
	.string	"u1615VRdc"
.LASF15:
	.string	"xCoreLog"
.LASF13:
	.string	"u16BatVol"
.LASF18:
	.string	"ERL_SaveResetInfo"
.LASF6:
	.string	"u16P5VAd2s"
.LASF1:
	.string	"entry_function"
.LASF2:
	.string	"index"
.LASF10:
	.string	"u16PsuP5VLS"
.LASF8:
	.string	"u16P5VGateway"
.LASF11:
	.string	"u16PsuP5VHS"
.LASF14:
	.string	"xCoresTrapInfo"
.LASF5:
	.string	"u16P5VRefProt"
.LASF0:
	.string	"stackbudget"
.LASF16:
	.string	"rstStat"
.LASF3:
	.string	"application"
.LASF7:
	.string	"u16P5VBtm"
	.extern	NvM_WriteBlock,STT_FUNC,0
	.extern	rba_BswSrv_MemSet,STT_FUNC,0
	.extern	IOHAL_u16Read_CH_ADC_IN_AN_15V_RDC,STT_FUNC,0
	.extern	PMux_u16GetInputVal,STT_FUNC,0
	.extern	IOHAL_u16Read_CH_ADC_IN_AN_P5V_AD2S,STT_FUNC,0
	.extern	IOHAL_u16Read_CH_ADC_IN_AN_P5V_REF,STT_FUNC,0
	.extern	Os_ControlledCoreInfo,STT_OBJECT,-1
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
