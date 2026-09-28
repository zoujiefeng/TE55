	.file	"CCPUSR.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	CCP_vidUsrIni
	.type	CCP_vidUsrIni, @function
CCP_vidUsrIni:
.LFB2:
	.file 1 "bswcdd\\CCP\\CCPUSR\\CCPUSR.c"
	.loc 1 295 0
	sub.a	%SP, 8
.LCFI0:
	.loc 1 300 0
	mov	%d15, 1
	movh.a	%a15, hi:CCPUSR_enuCalStoreStatus
	.loc 1 298 0
	call	CCPUSR_vidDaqListIni
.LVL0:
	.loc 1 300 0
	st.b	[%a15] lo:CCPUSR_enuCalStoreStatus, %d15
	.loc 1 302 0
	mov	%d15, 0
	movh.a	%a15, hi:CalUsr_bIsCalibUpdEna
	st.b	[%a15] lo:CalUsr_bIsCalibUpdEna, %d15
	.loc 1 306 0
	call	DEVHAL_bCheckEmulCard
.LVL1:
	.loc 1 312 0
	movh	%d15, 32774
	addi	%d15, %d15, -32768
	addih	%d3, %d15, 57340
	eq	%d2, %d2, 1
	seln	%d2, %d2, %d15, %d3
	movh.a	%a15, hi:CCPUSR_u32ActivePageAddr
	.loc 1 322 0
	movh.a	%a3, hi:CCPUSR_kau32ReadOnlyMemoryZone
	st.w	[%a15] lo:CCPUSR_u32ActivePageAddr, %d2
.LVL2:
	lea	%a15, [%a3] lo:CCPUSR_kau32ReadOnlyMemoryZone
	movh.a	%a4, hi:CCPUSR_au32ReadOnlyMemoryZone
	ld.w	%d15, [%a3] lo:CCPUSR_kau32ReadOnlyMemoryZone
	ld.w	%d3, [%a15] 4
	lea	%a2, [%a4] lo:CCPUSR_au32ReadOnlyMemoryZone
	st.w	[%a4] lo:CCPUSR_au32ReadOnlyMemoryZone, %d15
.LVL3:
	st.w	[%a2] 4, %d3
.LVL4:
	ld.w	%d15, [%a15] 8
	ld.w	%d3, [%a15] 12
	st.w	[%a2] 8, %d15
.LVL5:
	st.w	[%a2] 12, %d3
	ret
.LFE2:
	.size	CCP_vidUsrIni, .-CCP_vidUsrIni
	.align 1
	.global	CCP_vidUsrNtfySsnTrmd
	.type	CCP_vidUsrNtfySsnTrmd, @function
CCP_vidUsrNtfySsnTrmd:
.LFB3:
	.loc 1 330 0
	ret
.LFE3:
	.size	CCP_vidUsrNtfySsnTrmd, .-CCP_vidUsrNtfySsnTrmd
	.align 1
	.global	CCP_udtUsrReadMem
	.type	CCP_udtUsrReadMem, @function
CCP_udtUsrReadMem:
.LFB4:
	.loc 1 395 0
.LVL6:
.LBB10:
.LBB11:
	.loc 1 258 0
	movh.a	%a2, hi:CCPUSR_au32ReadOnlyMemoryZone
.LBE11:
.LBE10:
	.loc 1 403 0
	ld.w	%d15, [%a4]0
.LVL7:
.LBB20:
.LBB16:
	.loc 1 258 0
	ld.w	%d4, [%a2] lo:CCPUSR_au32ReadOnlyMemoryZone
.LVL8:
.LBE16:
.LBE20:
	.loc 1 395 0
	sub.a	%SP, 8
.LCFI1:
	.loc 1 395 0
	mov.d	%d3, %a5
.LBB21:
.LBB17:
	.loc 1 258 0
	lea	%a15, [%a2] lo:CCPUSR_au32ReadOnlyMemoryZone
	.loc 1 254 0
	mov	%d2, 51
	.loc 1 258 0
	jlt.u	%d15, %d4, .L6
	.loc 1 259 0
	ld.w	%d4, [%a15] 4
	sub	%d4, %d5
	.loc 1 261 0
	lt.u	%d4, %d4, %d15
	sel	%d2, %d4, %d2, 0
.L6:
.LVL9:
	.loc 1 258 0
	ld.w	%d4, [%a15] 8
	jlt.u	%d15, %d4, .L7
	.loc 1 259 0
	ld.w	%d4, [%a15] 12
	sub	%d4, %d5
	jlt.u	%d4, %d15, .L7
.LVL10:
.L10:
.LBE17:
.LBE21:
	.loc 1 408 0 discriminator 1
	mov	%d2, 0
	jz	%d5, .L41
	or	%d2, %d3, %d15
	and	%d2, %d2, 3
	eq	%d4, %d2, 0
	addi	%d2, %d3, 4
	ge.u	%d2, %d15, %d2
	add	%d6, %d15, 4
	or.ge.u	%d2, %d3, %d6
	and	%d2, %d4
	ge.u	%d4, %d5, 10
	and	%d2, %d4
	.loc 1 403 0
	mov.a	%a2, %d15
	jz	%d2, .L22
	addi	%d2, %d5, -4
	sh	%d2, -2
	addi	%d4, %d2, 1
	ne	%d6, %d2, -1
	mov.a	%a15, %d15
	sh	%d4, 2
	sel	%d2, %d6, %d2, 0
.LVL11:
.L23:
	mov.a	%a3, %d15
	.loc 1 410 0 discriminator 3
	ld.w	%d6, [%a15]0
	sub.a	%a2, %a15, %a3
	addsc.a	%a2, %a2, %d3, 0
	add.a	%a15, 4
	st.w	[%a2]0, %d6
	jned	%d2, 0, .L23
	mov.a	%a2, %d3
	mov.a	%a3, %d15
	addsc.a	%a15, %a2, %d4, 0
	addsc.a	%a2, %a3, %d4, 0
	jeq	%d5, %d4, .L28
.LVL12:
	.loc 1 410 0 is_stmt 0
	ld.bu	%d15, [%a2]0
.LVL13:
	st.b	[%a15]0, %d15
.LVL14:
	.loc 1 408 0 is_stmt 1
	add	%d15, %d4, 1
	jge.u	%d15, %d5, .L28
	.loc 1 410 0
	ld.bu	%d15, [%a2] 1
	.loc 1 408 0
	add	%d4, 2
.LVL15:
	.loc 1 410 0
	st.b	[%a15] 1, %d15
.LVL16:
	.loc 1 408 0
	jge.u	%d4, %d5, .L28
	.loc 1 410 0
	ld.bu	%d15, [%a2] 2
	st.b	[%a15] 2, %d15
.LVL17:
.L28:
	.loc 1 403 0
	mov	%d2, 0
	ret
.LVL18:
.L7:
.LBB22:
.LBB18:
	.loc 1 265 0
	movh	%d4, hi:__const_begin
	addi	%d4, %d4, lo:__const_begin
	jlt.u	%d15, %d4, .L9
	.loc 1 266 0
	movh	%d4, hi:__const_end
	addi	%d4, %d4, lo:__const_end
	sub	%d4, %d5
	jge.u	%d4, %d15, .L10
.L9:
	.loc 1 272 0
	jz	%d2, .L10
.LVL19:
.LBB12:
.LBB13:
	.loc 1 229 0
	movh.a	%a2, hi:CCPUSR_kau32WritableMemoryZone
	ld.w	%d4, [%a2] lo:CCPUSR_kau32WritableMemoryZone
	lea	%a15, [%a2] lo:CCPUSR_kau32WritableMemoryZone
	mov	%d2, 51
.LVL20:
	jlt.u	%d15, %d4, .L12
	.loc 1 230 0
	ld.w	%d2, [%a15] 4
	mov	%d4, 0
	st.w	[%SP] 4, %d2
	sub	%d2, %d5
	ge.u	%d2, %d2, %d15
	sel	%d2, %d2, %d4, 51
.L12:
.LVL21:
	.loc 1 229 0
	ld.w	%d4, [%a15] 8
	jlt.u	%d15, %d4, .L13
	.loc 1 230 0
	ld.w	%d4, [%a15] 12
	st.w	[%SP] 4, %d4
	sub	%d4, %d5
	.loc 1 232 0
	lt.u	%d4, %d4, %d15
	sel	%d2, %d4, %d2, 0
.LVL22:
.L13:
	.loc 1 229 0
	ld.w	%d4, [%a15] 16
	jlt.u	%d15, %d4, .L14
	.loc 1 230 0
	ld.w	%d6, [%a15] 20
	mov	%d4, %d6
	sub	%d4, %d5
	.loc 1 232 0
	lt.u	%d4, %d4, %d15
	sel	%d2, %d4, %d2, 0
.LVL23:
.L14:
	.loc 1 229 0
	ld.w	%d4, [%a15] 24
	jlt.u	%d15, %d4, .L15
	.loc 1 230 0
	ld.w	%d4, [%a15] 28
	st.w	[%SP] 4, %d4
	sub	%d4, %d5
	.loc 1 232 0
	lt.u	%d4, %d4, %d15
	sel	%d2, %d4, %d2, 0
.LVL24:
.L15:
	.loc 1 229 0
	ld.w	%d4, [%a15] 32
	jlt.u	%d15, %d4, .L16
	.loc 1 230 0
	ld.w	%d6, [%a15] 36
	mov	%d4, %d6
	sub	%d4, %d5
	.loc 1 232 0
	lt.u	%d4, %d4, %d15
	sel	%d2, %d4, %d2, 0
.LVL25:
.L16:
	.loc 1 229 0
	ld.w	%d4, [%a15] 40
	jlt.u	%d15, %d4, .L17
	.loc 1 230 0
	ld.w	%d4, [%a15] 44
	st.w	[%SP] 4, %d4
	sub	%d4, %d5
	jlt.u	%d4, %d15, .L17
.LVL26:
	.loc 1 229 0
	ld.w	%d2, [%a15] 48
	jlt.u	%d15, %d2, .L10
	.loc 1 230 0
	ld.w	%d6, [%a15] 52
	.loc 1 232 0
	mov	%d2, 0
	.loc 1 230 0
	mov	%d4, %d6
	sub	%d4, %d5
	jge.u	%d4, %d15, .L10
.LVL27:
.L19:
.LBE13:
.LBE12:
.LBE18:
.LBE22:
	.loc 1 406 0
	jz	%d2, .L10
.LVL28:
.L41:
	.loc 1 416 0
	ret
.LVL29:
.L17:
.LBB23:
.LBB19:
.LBB15:
.LBB14:
	.loc 1 229 0
	ld.w	%d4, [%a15] 48
	jlt.u	%d15, %d4, .L19
	.loc 1 230 0
	ld.w	%d6, [%a15] 52
	mov	%d4, %d6
	sub	%d4, %d5
	jge.u	%d4, %d15, .L10
	j	.L19
.LVL30:
.L22:
	add	%d5, %d15
.LVL31:
	nor	%d2, %d15, 0
	mov.a	%a4, %d5
.LVL32:
	addsc.a	%a15, %a4, %d2, 0
.LVL33:
.L27:
	mov.a	%a4, %d15
.LBE14:
.LBE15:
.LBE19:
.LBE23:
	.loc 1 410 0
	ld.bu	%d2, [%a2]0
	sub.a	%a3, %a2, %a4
.LVL34:
	addsc.a	%a3, %a3, %d3, 0
.LVL35:
	.loc 1 412 0
	add.a	%a2, 1
.LVL36:
	.loc 1 410 0
	st.b	[%a3]0, %d2
.LVL37:
	.loc 1 412 0
	loop	%a15, .L27
	.loc 1 403 0
	mov	%d2, 0
	ret
.LFE4:
	.size	CCP_udtUsrReadMem, .-CCP_udtUsrReadMem
	.align 1
	.global	CCP_udtUsrWrMem
	.type	CCP_udtUsrWrMem, @function
CCP_udtUsrWrMem:
.LFB5:
	.loc 1 456 0
.LVL38:
	.loc 1 465 0
	ld.w	%d15, [%a4]0
.LVL39:
	.loc 1 469 0
	movh.a	%a4, hi:CCPUSR_u32ActivePageAddr
.LVL40:
	movh	%d2, 24578
	ld.w	%d3, [%a4] lo:CCPUSR_u32ActivePageAddr
	addi	%d2, %d2, -32768
	.loc 1 456 0
	sub.a	%SP, 8
.LCFI2:
	.loc 1 469 0
	jeq	%d3, %d2, .L94
.LVL41:
.L50:
.LBB24:
.LBB25:
	.loc 1 229 0
	movh.a	%a2, hi:CCPUSR_kau32WritableMemoryZone
	ld.w	%d4, [%a2] lo:CCPUSR_kau32WritableMemoryZone
	lea	%a15, [%a2] lo:CCPUSR_kau32WritableMemoryZone
	.loc 1 225 0
	mov	%d2, 51
	.loc 1 229 0
	jlt.u	%d15, %d4, .L51
	.loc 1 230 0
	ld.w	%d6, [%a15] 4
	.loc 1 225 0
	mov	%d4, 0
	.loc 1 230 0
	mov	%d2, %d6
	sub	%d2, %d5
	.loc 1 225 0
	ge.u	%d2, %d2, %d15
	sel	%d2, %d2, %d4, 51
.L51:
.LVL42:
	.loc 1 229 0
	ld.w	%d4, [%a15] 8
	jlt.u	%d15, %d4, .L52
	.loc 1 230 0
	ld.w	%d4, [%a15] 12
	st.w	[%SP] 4, %d4
	sub	%d4, %d5
	.loc 1 232 0
	lt.u	%d4, %d4, %d15
	sel	%d2, %d4, %d2, 0
.LVL43:
.L52:
	.loc 1 229 0
	ld.w	%d4, [%a15] 16
	jlt.u	%d15, %d4, .L53
	.loc 1 230 0
	ld.w	%d6, [%a15] 20
	mov	%d4, %d6
	sub	%d4, %d5
	.loc 1 232 0
	lt.u	%d4, %d4, %d15
	sel	%d2, %d4, %d2, 0
.LVL44:
.L53:
	.loc 1 229 0
	ld.w	%d4, [%a15] 24
	jlt.u	%d15, %d4, .L54
	.loc 1 230 0
	ld.w	%d4, [%a15] 28
	st.w	[%SP] 4, %d4
	sub	%d4, %d5
	.loc 1 232 0
	lt.u	%d4, %d4, %d15
	sel	%d2, %d4, %d2, 0
.LVL45:
.L54:
	.loc 1 229 0
	ld.w	%d4, [%a15] 32
	jlt.u	%d15, %d4, .L55
	.loc 1 230 0
	ld.w	%d6, [%a15] 36
	mov	%d4, %d6
	sub	%d4, %d5
	.loc 1 232 0
	lt.u	%d4, %d4, %d15
	sel	%d2, %d4, %d2, 0
.LVL46:
.L55:
	.loc 1 229 0
	ld.w	%d4, [%a15] 40
	jlt.u	%d15, %d4, .L56
	.loc 1 230 0
	ld.w	%d4, [%a15] 44
	st.w	[%SP] 4, %d4
	sub	%d4, %d5
	jge.u	%d4, %d15, .L57
.L56:
.LVL47:
	.loc 1 229 0
	ld.w	%d4, [%a15] 48
	jlt.u	%d15, %d4, .L58
.LVL48:
.L71:
	.loc 1 230 0
	ld.w	%d6, [%a15] 52
	mov	%d4, %d6
	sub	%d4, %d5
	jlt.u	%d4, %d15, .L58
.LVL49:
.L59:
.LBE25:
.LBE24:
	.loc 1 495 0 discriminator 1
	jz	%d5, .L61
	mov.d	%d2, %a5
	mov.d	%d4, %a5
	add	%d2, 4
	add	%d3, %d15, 4
	ge.u	%d2, %d15, %d2
	or.ge.u	%d2, %d4, %d3
	ge.u	%d3, %d5, 10
	and	%d3, %d2
	mov.d	%d2, %a5
	.loc 1 490 0
	mov.a	%a15, %d15
	or	%d2, %d15
	and	%d2, %d2, 3
	eq	%d2, %d2, 0
	and	%d2, %d3
	jz	%d2, .L62
.LVL50:
	addi	%d2, %d5, -4
	sh	%d2, -2
	addi	%d3, %d2, 1
	addi	%d4, %d5, -1
.LVL51:
	sh	%d3, 2
	jlt.u	%d4, 3, .L78
	mov.d	%d6, %a5
	mov.aa	%a15, %a5
	sub	%d4, %d15, %d6
	ne	%d6, %d2, -1
	sel	%d2, %d6, %d2, 0
.LVL52:
.L64:
	.loc 1 497 0 discriminator 3
	addsc.a	%a2, %a15, %d4, 0
	ld.w	%d6, [%a15]0
	add.a	%a15, 4
	st.w	[%a2]0, %d6
	jned	%d2, 0, .L64
	mov.a	%a2, %d15
	addsc.a	%a5, %a5, %d3, 0
	addsc.a	%a15, %a2, %d3, 0
	jeq	%d5, %d3, .L69
.L63:
.LVL53:
	.loc 1 497 0 is_stmt 0
	ld.bu	%d15, [%a5]0
.LVL54:
	st.b	[%a15]0, %d15
.LVL55:
	.loc 1 495 0 is_stmt 1
	add	%d15, %d3, 1
	jge.u	%d15, %d5, .L69
	.loc 1 497 0
	ld.bu	%d15, [%a5] 1
	.loc 1 495 0
	add	%d3, 2
	.loc 1 497 0
	st.b	[%a15] 1, %d15
.LVL56:
	.loc 1 495 0
	jge.u	%d3, %d5, .L69
	.loc 1 497 0
	ld.bu	%d15, [%a5] 2
	st.b	[%a15] 2, %d15
.LVL57:
.L69:
	ld.w	%d3, [%a4] lo:CCPUSR_u32ActivePageAddr
.L61:
	.loc 1 502 0
	movh	%d15, 24578
	addi	%d15, %d15, -32768
	mov	%d2, 0
	jeq	%d3, %d15, .L95
	.loc 1 509 0
	ret
.LVL58:
.L58:
	.loc 1 493 0
	jz	%d2, .L59
	.loc 1 509 0
	ret
.LVL59:
.L57:
.LBB27:
.LBB26:
	.loc 1 229 0
	ld.w	%d2, [%a15] 48
	jlt.u	%d15, %d2, .L59
	.loc 1 232 0
	mov	%d2, 0
	j	.L71
.LVL60:
.L95:
.LBE26:
.LBE27:
	.loc 1 505 0
	movh	%d15, 4
	movh.a	%a15, 61443
	addi	%d15, %d15, 15
	lea	%a15, [%a15] 25060
	st.w	[%a15]0, %d15
	ret
.LVL61:
.L94:
	.loc 1 473 0
	addi	%d2, %d15, -32768
	.loc 1 475 0
	movh	%d4, 1
.LVL62:
	.loc 1 473 0
	addih	%d2, %d2, 32763
	.loc 1 475 0
	lt.u	%d2, %d2, %d4
	movh	%d4, 57340
	cadd	%d15, %d2, %d15, %d4
.LVL63:
	j	.L50
.LVL64:
.L62:
	add	%d5, %d15
.LVL65:
	nor	%d2, %d15, 0
	mov.a	%a3, %d5
	addsc.a	%a2, %a3, %d2, 0
.LVL66:
.L68:
	mov.a	%a6, %d15
	sub.a	%a3, %a15, %a6
.LVL67:
	.loc 1 497 0
	add.a	%a3, %a5
.LVL68:
	ld.bu	%d2, [%a3]0
	st.b	[%a15+]1, %d2
.LVL69:
	.loc 1 499 0
	loop	%a2, .L68
	j	.L69
.LVL70:
.L78:
	.loc 1 490 0
	mov	%d3, 0
	j	.L63
.LFE5:
	.size	CCP_udtUsrWrMem, .-CCP_udtUsrWrMem
	.align 1
	.global	CCP_vidUsrNtfyCalStoreSttChgd
	.type	CCP_vidUsrNtfyCalStoreSttChgd, @function
CCP_vidUsrNtfyCalStoreSttChgd:
.LFB6:
	.loc 1 535 0
.LVL71:
	.loc 1 542 0
	eq	%d4, %d4, 1
.LVL72:
	mov	%d15, 2
	sel	%d4, %d4, %d15, 1
	movh.a	%a15, hi:CCPUSR_enuCalStoreStatus
	st.b	[%a15] lo:CCPUSR_enuCalStoreStatus, %d4
	ret
.LFE6:
	.size	CCP_vidUsrNtfyCalStoreSttChgd, .-CCP_vidUsrNtfyCalStoreSttChgd
	.align 1
	.global	CCP_udtUsrSelCalPage
	.type	CCP_udtUsrSelCalPage, @function
CCP_udtUsrSelCalPage:
.LFB7:
	.loc 1 612 0
.LVL73:
	.loc 1 634 0
	mov	%d2, 0
	ret
.LFE7:
	.size	CCP_udtUsrSelCalPage, .-CCP_udtUsrSelCalPage
	.align 1
	.global	CCP_vidUsrGetAcvCalPage
	.type	CCP_vidUsrGetAcvCalPage, @function
CCP_vidUsrGetAcvCalPage:
.LFB8:
	.loc 1 644 0
.LVL74:
	.loc 1 646 0
	movh.a	%a15, hi:CCPUSR_u32ActivePageAddr
	ld.w	%d15, [%a15] lo:CCPUSR_u32ActivePageAddr
	st.w	[%a4]0, %d15
	.loc 1 647 0
	mov	%d15, 0
	st.b	[%a4] 4, %d15
	ret
.LFE8:
	.size	CCP_vidUsrGetAcvCalPage, .-CCP_vidUsrGetAcvCalPage
	.align 1
	.global	CCP_udtUsrBldCks
	.type	CCP_udtUsrBldCks, @function
CCP_udtUsrBldCks:
.LFB9:
	.loc 1 671 0
.LVL75:
	.loc 1 679 0
	ld.a	%a2, [%a4]0
.LVL76:
	.loc 1 678 0
	mov	%d15, 0
	.loc 1 680 0
	jz	%d4, .L102
	mov.d	%d2, %a2
	addsc.a	%a15, %a2, %d4, 0
	not	%d2
	addsc.a	%a15, %a15, %d2, 0
.LVL77:
.L103:
	.loc 1 682 0 discriminator 3
	ld.bu	%d2, [%a2+]1
.LVL78:
	add	%d15, %d2
.LVL79:
	extr.u	%d15, %d15, 0, 16
.LVL80:
	.loc 1 683 0 discriminator 3
	loop	%a15, .L103
.LVL81:
.L102:
	.loc 1 686 0
	st.h	[%a6]0, %d15
	.loc 1 687 0
	mov	%d15, 2
	st.b	[%a5]0, %d15
	.loc 1 689 0
	mov	%d2, 0
	ret
.LFE9:
	.size	CCP_udtUsrBldCks, .-CCP_udtUsrBldCks
	.align 1
	.global	CCPUSR_vidMainFunction
	.type	CCPUSR_vidMainFunction, @function
CCPUSR_vidMainFunction:
.LFB10:
	.loc 1 858 0
	.loc 1 861 0
	call	DEVHAL_bCheckEmulCard
.LVL82:
	mov	%d15, %d2
	jeq	%d2, 1, .L116
.L107:
	ret
.L116:
	.loc 1 863 0
	movh.a	%a15, hi:CCPUSR_enuCalStoreStatus
	ld.bu	%d2, [%a15] lo:CCPUSR_enuCalStoreStatus
	jne	%d2, 4, .L107
	.loc 1 865 0
	call	DEVHAL_udtCheckEngineState
.LVL83:
	.loc 1 866 0
	movh.a	%a2, hi:DEVHAL_u8CheckEngineState
	.loc 1 867 0
	ld.bu	%d2, [%a2] lo:DEVHAL_u8CheckEngineState
	jeq	%d2, 1, .L110
	jz	%d2, .L115
	jeq	%d2, 2, .L107
.L115:
	.loc 1 885 0
	st.b	[%a15] lo:CCPUSR_enuCalStoreStatus, %d15
	.loc 1 889 0
	movh.a	%a15, hi:CCP_u8SsnSts
	ld.bu	%d15, [%a15] lo:CCP_u8SsnSts
	andn	%d15, %d15, ~(-65)
	st.b	[%a15] lo:CCP_u8SsnSts, %d15
	ret
.L110:
	.loc 1 870 0
	mov	%d15, 8
	st.b	[%a15] lo:CCPUSR_enuCalStoreStatus, %d15
	.loc 1 871 0
	ret
.LFE10:
	.size	CCPUSR_vidMainFunction, .-CCPUSR_vidMainFunction
	.align 1
	.global	CCPUSR_DaqListSetEvent
	.type	CCPUSR_DaqListSetEvent, @function
CCPUSR_DaqListSetEvent:
.LFB11:
	.loc 1 937 0
.LVL84:
	.loc 1 938 0
	movh.a	%a15, hi:CCPUSR_bDaqListEnableEvent
	ld.bu	%d15, [%a15] lo:CCPUSR_bDaqListEnableEvent
	jeq	%d15, 1, .L119
	ret
.L119:
	.loc 1 940 0
	j	CCP_vidDaqListSetEvent
.LVL85:
.LFE11:
	.size	CCPUSR_DaqListSetEvent, .-CCPUSR_DaqListSetEvent
	.global	CCPUSR_kstrDaqListDynCfgInin
.section .const.CCPUSR_kstrDaqListDynCfgInin,"a",@progbits
	.align 2
	.type	CCPUSR_kstrDaqListDynCfgInin, @object
	.size	CCPUSR_kstrDaqListDynCfgInin, 1612
CCPUSR_kstrDaqListDynCfgInin:
	.zero	1612
	.global	CCPUSR_au32ReadOnlyMemoryZone
.section .data_cpu0.CCPUSR_au32ReadOnlyMemoryZone,"aw",@progbits
	.align 2
	.type	CCPUSR_au32ReadOnlyMemoryZone, @object
	.size	CCPUSR_au32ReadOnlyMemoryZone, 16
CCPUSR_au32ReadOnlyMemoryZone:
	.zero	16
	.global	CCPUSR_u32ActivePageAddr
.section .data_cpu0.CCPUSR_u32ActivePageAddr,"aw",@progbits
	.align 2
	.type	CCPUSR_u32ActivePageAddr, @object
	.size	CCPUSR_u32ActivePageAddr, 4
CCPUSR_u32ActivePageAddr:
	.zero	4
	.global	CCPUSR_enuCalStoreStatus
.section .data_cpu0.CCPUSR_enuCalStoreStatus,"aw",@progbits
	.type	CCPUSR_enuCalStoreStatus, @object
	.size	CCPUSR_enuCalStoreStatus, 1
CCPUSR_enuCalStoreStatus:
	.zero	1
	.global	CCPUSR_bDaqListEnableEvent
.section .data_cpu0.CCPUSR_bDaqListEnableEvent,"aw",@progbits
	.type	CCPUSR_bDaqListEnableEvent, @object
	.size	CCPUSR_bDaqListEnableEvent, 1
CCPUSR_bDaqListEnableEvent:
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
	.uaword	.LFB2
	.uaword	.LFE2-.LFB2
	.byte	0x4
	.uaword	.LCFI0-.LFB2
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB3
	.uaword	.LFE3-.LFB3
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB4
	.uaword	.LFE4-.LFB4
	.byte	0x4
	.uaword	.LCFI1-.LFB4
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB5
	.uaword	.LFE5-.LFB5
	.byte	0x4
	.uaword	.LCFI2-.LFB5
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB6
	.uaword	.LFE6-.LFB6
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB7
	.uaword	.LFE7-.LFB7
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB8
	.uaword	.LFE8-.LFB8
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB9
	.uaword	.LFE9-.LFB9
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB10
	.uaword	.LFE10-.LFB10
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB11
	.uaword	.LFE11-.LFB11
	.align 2
.LEFDE18:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 4 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_Typ.h"
	.file 5 "bswcdd\\CCP\\CCPUSR\\CCPUSR_Daq.h"
	.file 6 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\Ifx_TypesReg.h"
	.file 7 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxScu_regdef.h"
	.file 8 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_Cfg.h"
	.file 9 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_L.h"
	.file 10 "bswcdd\\CCP\\CCPUSR\\CCPUSR.h"
	.file 11 ".\\output\\inc/..\\..\\bswcdd\\CCP\\DEVHAL\\DEVHAL_Def.h"
	.file 12 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CAL\\CALUSR.h"
	.file 13 ".\\output\\inc/..\\..\\bswcdd\\CCP\\DEVHAL\\DEVHAL.h"
	.file 14 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xdf1
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\CCP\\CCPUSR\\CCPUSR.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ltext0
	.uaword	.Letext0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x2
	.byte	0x51
	.uaword	0x1c1
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
	.uaword	0x1ed
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
	.uaword	0x229
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
	.uaword	0x1c1
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x3
	.string	"uint8_least"
	.byte	0x2
	.byte	0x8a
	.uaword	0x294
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x3
	.string	"uint16_least"
	.byte	0x2
	.byte	0x94
	.uaword	0x294
	.uleb128 0x3
	.string	"Std_ReturnType"
	.byte	0x3
	.byte	0x60
	.uaword	0x1b4
	.uleb128 0x3
	.string	"CCP_tudtCmdSts"
	.byte	0x4
	.byte	0x3f
	.uaword	0x281
	.uleb128 0x4
	.byte	0x8
	.byte	0x4
	.byte	0x46
	.uaword	0x314
	.uleb128 0x5
	.string	"u32Adr"
	.byte	0x4
	.byte	0x48
	.uaword	0x21b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"u8Extn"
	.byte	0x4
	.byte	0x49
	.uaword	0x1b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"CCP_tstrMta"
	.byte	0x4
	.byte	0x4b
	.uaword	0x2e9
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x6
	.byte	0x4
	.uaword	0x1b4
	.uleb128 0x7
	.uahalf	0x64c
	.byte	0x5
	.byte	0x43
	.uaword	0x37c
	.uleb128 0x5
	.string	"apu8DaqListElmAdr"
	.byte	0x5
	.byte	0x45
	.uaword	0x37c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"au8DaqListElmSize"
	.byte	0x5
	.byte	0x47
	.uaword	0x38d
	.byte	0x3
	.byte	0x23
	.uleb128 0x508
	.byte	0
	.uleb128 0x8
	.uaword	0x333
	.uaword	0x38d
	.uleb128 0x9
	.uaword	0x327
	.uahalf	0x141
	.byte	0
	.uleb128 0x8
	.uaword	0x1b4
	.uaword	0x39e
	.uleb128 0x9
	.uaword	0x327
	.uahalf	0x141
	.byte	0
	.uleb128 0x3
	.string	"CCPUSR_tstrDaqListDynCfg"
	.byte	0x5
	.byte	0x54
	.uaword	0x339
	.uleb128 0x3
	.string	"Ifx_UReg_32Bit"
	.byte	0x6
	.byte	0x62
	.uaword	0x229
	.uleb128 0x3
	.string	"Ifx_SReg_32Bit"
	.byte	0x6
	.byte	0x65
	.uaword	0x203
	.uleb128 0xa
	.string	"_Ifx_SCU_OVCCON_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x2ae
	.uaword	0x542
	.uleb128 0xb
	.string	"CSEL0"
	.byte	0x7
	.uahalf	0x2b0
	.uaword	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"CSEL1"
	.byte	0x7
	.uahalf	0x2b1
	.uaword	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"CSEL2"
	.byte	0x7
	.uahalf	0x2b2
	.uaword	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"CSEL3"
	.byte	0x7
	.uahalf	0x2b3
	.uaword	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"reserved_4"
	.byte	0x7
	.uahalf	0x2b4
	.uaword	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"reserved_5"
	.byte	0x7
	.uahalf	0x2b5
	.uaword	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"reserved_6"
	.byte	0x7
	.uahalf	0x2b6
	.uaword	0x3be
	.byte	0x4
	.byte	0xa
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"OVSTRT"
	.byte	0x7
	.uahalf	0x2b7
	.uaword	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"OVSTP"
	.byte	0x7
	.uahalf	0x2b8
	.uaword	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"DCINVAL"
	.byte	0x7
	.uahalf	0x2b9
	.uaword	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"reserved_19"
	.byte	0x7
	.uahalf	0x2ba
	.uaword	0x3be
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"OVCONF"
	.byte	0x7
	.uahalf	0x2bb
	.uaword	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"POVCONF"
	.byte	0x7
	.uahalf	0x2bc
	.uaword	0x3be
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"reserved_26"
	.byte	0x7
	.uahalf	0x2bd
	.uaword	0x3be
	.byte	0x4
	.byte	0x6
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_OVCCON_Bits"
	.byte	0x7
	.uahalf	0x2be
	.uaword	0x3ea
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x6a1
	.uaword	0x586
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x6a3
	.uaword	0x3be
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x6a4
	.uaword	0x3d4
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x6a5
	.uaword	0x542
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_OVCCON"
	.byte	0x7
	.uahalf	0x6a6
	.uaword	0x55e
	.uleb128 0xf
	.string	"CCPUSR_udtMemoryControlWriteRight"
	.byte	0x1
	.byte	0xd8
	.byte	0x1
	.uaword	0x2d3
	.byte	0x1
	.uaword	0x5f9
	.uleb128 0x10
	.uaword	.LASF0
	.byte	0x1
	.byte	0xda
	.uaword	0x333
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0x1
	.byte	0xdb
	.uaword	0x1b4
	.uleb128 0x11
	.uaword	.LASF2
	.byte	0x1
	.byte	0xde
	.uaword	0x2d3
	.uleb128 0x11
	.uaword	.LASF3
	.byte	0x1
	.byte	0xdf
	.uaword	0x2a9
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.string	"CCP_vidUsrIni"
	.byte	0x1
	.uahalf	0x126
	.byte	0x1
	.uaword	.LFB2
	.uaword	.LFE2
	.uaword	.LLST0
	.byte	0x1
	.uaword	0x64b
	.uleb128 0x13
	.string	"u16LocalIndex"
	.byte	0x1
	.uahalf	0x128
	.uaword	0x1df
	.uaword	.LLST1
	.uleb128 0x14
	.uaword	.LVL0
	.uaword	0xd71
	.uleb128 0x14
	.uaword	.LVL1
	.uaword	0xd8c
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.string	"CCP_vidUsrNtfySsnTrmd"
	.byte	0x1
	.uahalf	0x149
	.byte	0x1
	.uaword	.LFB3
	.uaword	.LFE3
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xf
	.string	"CCPUSR_udtMemoryControlReadRight"
	.byte	0x1
	.byte	0xf4
	.byte	0x1
	.uaword	0x2d3
	.byte	0x1
	.uaword	0x6ce
	.uleb128 0x10
	.uaword	.LASF0
	.byte	0x1
	.byte	0xf6
	.uaword	0x333
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0x1
	.byte	0xf7
	.uaword	0x1b4
	.uleb128 0x11
	.uaword	.LASF2
	.byte	0x1
	.byte	0xfa
	.uaword	0x2d3
	.uleb128 0x11
	.uaword	.LASF3
	.byte	0x1
	.byte	0xfb
	.uaword	0x2a9
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.string	"CCP_udtUsrReadMem"
	.byte	0x1
	.uahalf	0x17d
	.byte	0x1
	.uaword	0x2d3
	.uaword	.LFB4
	.uaword	.LFE4
	.uaword	.LLST2
	.byte	0x1
	.uaword	0x7e4
	.uleb128 0x17
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x182
	.uaword	0x1b4
	.uaword	.LLST3
	.uleb128 0x17
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x184
	.uaword	0x7e4
	.uaword	.LLST4
	.uleb128 0x18
	.string	"pu8Data"
	.byte	0x1
	.uahalf	0x186
	.uaword	0x333
	.uaword	.LLST5
	.uleb128 0x17
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x189
	.uaword	0x1b4
	.uaword	.LLST6
	.uleb128 0x13
	.string	"u8LocalIdx"
	.byte	0x1
	.uahalf	0x18c
	.uaword	0x281
	.uaword	.LLST7
	.uleb128 0x13
	.string	"pu8Src"
	.byte	0x1
	.uahalf	0x18d
	.uaword	0x333
	.uaword	.LLST8
	.uleb128 0x19
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x18e
	.uaword	0x2d3
	.uleb128 0x1a
	.uaword	0x673
	.uaword	.LBB10
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.uahalf	0x195
	.uleb128 0x1b
	.uaword	0x6ac
	.uaword	.LLST9
	.uleb128 0x1b
	.uaword	0x6a1
	.uaword	.LLST10
	.uleb128 0x1c
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x1d
	.uaword	0x6b7
	.uaword	.LLST11
	.uleb128 0x1d
	.uaword	0x6c2
	.uaword	.LLST12
	.uleb128 0x1a
	.uaword	0x59d
	.uaword	.LBB12
	.uaword	.Ldebug_ranges0+0x30
	.byte	0x1
	.uahalf	0x112
	.uleb128 0x1e
	.uaword	0x5d7
	.uleb128 0x1e
	.uaword	0x5cc
	.uleb128 0x1c
	.uaword	.Ldebug_ranges0+0x30
	.uleb128 0x1d
	.uaword	0x5e2
	.uaword	.LLST13
	.uleb128 0x1d
	.uaword	0x5ed
	.uaword	.LLST14
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x7ea
	.uleb128 0x1f
	.uaword	0x314
	.uleb128 0x16
	.byte	0x1
	.string	"CCP_udtUsrWrMem"
	.byte	0x1
	.uahalf	0x1ba
	.byte	0x1
	.uaword	0x2d3
	.uaword	.LFB5
	.uaword	.LFE5
	.uaword	.LLST15
	.byte	0x1
	.uaword	0x8eb
	.uleb128 0x17
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x1bf
	.uaword	0x1b4
	.uaword	.LLST16
	.uleb128 0x17
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x1c1
	.uaword	0x7e4
	.uaword	.LLST17
	.uleb128 0x18
	.string	"pku8Data"
	.byte	0x1
	.uahalf	0x1c3
	.uaword	0x8eb
	.uaword	.LLST18
	.uleb128 0x17
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x1c6
	.uaword	0x1b4
	.uaword	.LLST19
	.uleb128 0x13
	.string	"u32LocAddr"
	.byte	0x1
	.uahalf	0x1c9
	.uaword	0x21b
	.uaword	.LLST20
	.uleb128 0x13
	.string	"u8LocIdx"
	.byte	0x1
	.uahalf	0x1ca
	.uaword	0x281
	.uaword	.LLST21
	.uleb128 0x13
	.string	"pu8LocDst"
	.byte	0x1
	.uahalf	0x1cb
	.uaword	0x333
	.uaword	.LLST22
	.uleb128 0x20
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x1cc
	.uaword	0x2d3
	.byte	0x1
	.byte	0x52
	.uleb128 0x1a
	.uaword	0x59d
	.uaword	.LBB24
	.uaword	.Ldebug_ranges0+0x48
	.byte	0x1
	.uahalf	0x1ec
	.uleb128 0x1b
	.uaword	0x5d7
	.uaword	.LLST23
	.uleb128 0x1b
	.uaword	0x5cc
	.uaword	.LLST24
	.uleb128 0x1c
	.uaword	.Ldebug_ranges0+0x48
	.uleb128 0x1d
	.uaword	0x5e2
	.uaword	.LLST25
	.uleb128 0x1d
	.uaword	0x5ed
	.uaword	.LLST26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x8f1
	.uleb128 0x1f
	.uaword	0x1b4
	.uleb128 0x21
	.byte	0x1
	.string	"CCP_vidUsrNtfyCalStoreSttChgd"
	.byte	0x1
	.uahalf	0x212
	.byte	0x1
	.uaword	.LFB6
	.uaword	.LFE6
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x944
	.uleb128 0x18
	.string	"bCalStoreStt"
	.byte	0x1
	.uahalf	0x215
	.uaword	0x266
	.uaword	.LLST27
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.string	"CCP_udtUsrSelCalPage"
	.byte	0x1
	.uahalf	0x25f
	.byte	0x1
	.uaword	0x2d3
	.uaword	.LFB7
	.uaword	.LFE7
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x999
	.uleb128 0x23
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x262
	.uaword	0x7e4
	.byte	0x1
	.byte	0x64
	.uleb128 0x24
	.string	"udtReturnCode"
	.byte	0x1
	.uahalf	0x265
	.uaword	0x2d3
	.byte	0
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"CCP_vidUsrGetAcvCalPage"
	.byte	0x1
	.uahalf	0x27f
	.byte	0x1
	.uaword	.LFB8
	.uaword	.LFE8
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x9da
	.uleb128 0x25
	.string	"pstrMta"
	.byte	0x1
	.uahalf	0x282
	.uaword	0x9da
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x314
	.uleb128 0x22
	.byte	0x1
	.string	"CCP_udtUsrBldCks"
	.byte	0x1
	.uahalf	0x291
	.byte	0x1
	.uaword	0x2d3
	.uaword	.LFB9
	.uaword	.LFE9
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xab4
	.uleb128 0x23
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x294
	.uaword	0x7e4
	.byte	0x1
	.byte	0x64
	.uleb128 0x25
	.string	"u32BlkSize"
	.byte	0x1
	.uahalf	0x297
	.uaword	0x21b
	.byte	0x1
	.byte	0x54
	.uleb128 0x25
	.string	"pu8CksSize"
	.byte	0x1
	.uahalf	0x29b
	.uaword	0x333
	.byte	0x1
	.byte	0x65
	.uleb128 0x25
	.string	"au8CksData"
	.byte	0x1
	.uahalf	0x29d
	.uaword	0x333
	.byte	0x1
	.byte	0x66
	.uleb128 0x13
	.string	"u32LocalIdx"
	.byte	0x1
	.uahalf	0x2a0
	.uaword	0x21b
	.uaword	.LLST28
	.uleb128 0x13
	.string	"pu8Data"
	.byte	0x1
	.uahalf	0x2a1
	.uaword	0x333
	.uaword	.LLST29
	.uleb128 0x13
	.string	"u16LocalChecksum"
	.byte	0x1
	.uahalf	0x2a2
	.uaword	0x1df
	.uaword	.LLST30
	.uleb128 0x26
	.string	"pu16Cks"
	.byte	0x1
	.uahalf	0x2a3
	.uaword	0xab4
	.byte	0x1
	.byte	0x66
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x1df
	.uleb128 0x21
	.byte	0x1
	.string	"CCPUSR_vidMainFunction"
	.byte	0x1
	.uahalf	0x359
	.byte	0x1
	.uaword	.LFB10
	.uaword	.LFE10
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xb1a
	.uleb128 0x27
	.string	"u8LocalCheckEngineState"
	.byte	0x1
	.uahalf	0x35b
	.uaword	0x1b4
	.uleb128 0x14
	.uaword	.LVL82
	.uaword	0xd8c
	.uleb128 0x14
	.uaword	.LVL83
	.uaword	0xdac
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"CCPUSR_DaqListSetEvent"
	.byte	0x1
	.uahalf	0x3a8
	.byte	0x1
	.uaword	.LFB11
	.uaword	.LFE11
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xb67
	.uleb128 0x18
	.string	"u8EveChn"
	.byte	0x1
	.uahalf	0x3a8
	.uaword	0x1b4
	.uaword	.LLST31
	.uleb128 0x28
	.uaword	.LVL85
	.byte	0x1
	.uaword	0xdd1
	.byte	0
	.uleb128 0x8
	.uaword	0x1b4
	.uaword	0xb77
	.uleb128 0x29
	.uaword	0x327
	.byte	0xb
	.byte	0
	.uleb128 0x2a
	.string	"CCP_kaudtDevId"
	.byte	0x8
	.byte	0x81
	.uaword	0xb8f
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.uaword	0xb67
	.uleb128 0x2b
	.string	"CCP_u8SsnSts"
	.byte	0x9
	.uahalf	0x110
	.uaword	0x1b4
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.string	"CCPUSR_enuCalStoreStatus"
	.byte	0x1
	.byte	0xa5
	.uaword	0x1b4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CCPUSR_enuCalStoreStatus
	.uleb128 0x8
	.uaword	0x21b
	.uaword	0xbe2
	.uleb128 0x29
	.uaword	0x327
	.byte	0x3
	.byte	0
	.uleb128 0x2c
	.string	"CCPUSR_au32ReadOnlyMemoryZone"
	.byte	0x1
	.byte	0xa7
	.uaword	0xbd2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CCPUSR_au32ReadOnlyMemoryZone
	.uleb128 0x8
	.uaword	0x21b
	.uaword	0xc1e
	.uleb128 0x29
	.uaword	0x327
	.byte	0xd
	.byte	0
	.uleb128 0x2a
	.string	"CCPUSR_kau32WritableMemoryZone"
	.byte	0xa
	.byte	0x39
	.uaword	0xc46
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.uaword	0xc0e
	.uleb128 0x2a
	.string	"CCPUSR_kau32ReadOnlyMemoryZone"
	.byte	0xa
	.byte	0x3a
	.uaword	0xc73
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.uaword	0xbd2
	.uleb128 0x2c
	.string	"CCPUSR_kstrDaqListDynCfgInin"
	.byte	0x1
	.byte	0xb5
	.uaword	0xca3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CCPUSR_kstrDaqListDynCfgInin
	.uleb128 0x1f
	.uaword	0x39e
	.uleb128 0x2a
	.string	"DEVHAL_u8CheckEngineState"
	.byte	0xb
	.byte	0x28
	.uaword	0x1b4
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.string	"CalUsr_bIsCalibUpdEna"
	.byte	0xc
	.byte	0x41
	.uaword	0x266
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.uaword	0x229
	.uaword	0xcf5
	.uleb128 0x2d
	.byte	0
	.uleb128 0x2a
	.string	"__const_begin"
	.byte	0x1
	.byte	0x9b
	.uaword	0xcea
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.string	"__const_end"
	.byte	0x1
	.byte	0x9c
	.uaword	0xcea
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.string	"CCPUSR_bDaqListEnableEvent"
	.byte	0x1
	.byte	0xa4
	.uaword	0x266
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CCPUSR_bDaqListEnableEvent
	.uleb128 0x2c
	.string	"CCPUSR_u32ActivePageAddr"
	.byte	0x1
	.byte	0xa6
	.uaword	0x21b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CCPUSR_u32ActivePageAddr
	.uleb128 0x2e
	.byte	0x1
	.string	"CCPUSR_vidDaqListIni"
	.byte	0x5
	.byte	0x79
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.byte	0x1
	.string	"DEVHAL_bCheckEmulCard"
	.byte	0xd
	.byte	0x3d
	.byte	0x1
	.uaword	0x266
	.byte	0x1
	.uleb128 0x2f
	.byte	0x1
	.string	"DEVHAL_udtCheckEngineState"
	.byte	0xd
	.byte	0x3e
	.byte	0x1
	.uaword	0x2bd
	.byte	0x1
	.uleb128 0x30
	.byte	0x1
	.string	"CCP_vidDaqListSetEvent"
	.byte	0xe
	.byte	0xa9
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.uaword	0x1b4
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x2d
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uaword	.LFB2-.text
	.uaword	.LCFI0-.text
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0-.text
	.uaword	.LFE2-.text
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL2-.text
	.uaword	.LVL3-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL3-.text
	.uaword	.LVL4-.text
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL4-.text
	.uaword	.LVL5-.text
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL5-.text
	.uaword	.LFE2-.text
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LFB4-.text
	.uaword	.LCFI1-.text
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI1-.text
	.uaword	.LFE4-.text
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL6-.text
	.uaword	.LVL8-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL8-.text
	.uaword	.LFE4-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL6-.text
	.uaword	.LVL32-.text
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL32-.text
	.uaword	.LFE4-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL6-.text
	.uaword	.LVL11-.text
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL12-.text
	.uaword	.LVL14-.text
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL14-.text
	.uaword	.LVL16-.text
	.uahalf	0x3
	.byte	0x8f
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL16-.text
	.uaword	.LVL17-.text
	.uahalf	0x3
	.byte	0x8f
	.sleb128 2
	.byte	0x9f
	.uaword	.LVL18-.text
	.uaword	.LVL33-.text
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL33-.text
	.uaword	.LVL35-.text
	.uahalf	0x9
	.byte	0x73
	.sleb128 0
	.byte	0x82
	.sleb128 0
	.byte	0x22
	.byte	0x7f
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL35-.text
	.uaword	.LVL37-.text
	.uahalf	0x1
	.byte	0x63
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL6-.text
	.uaword	.LVL31-.text
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL31-.text
	.uaword	.LFE4-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL10-.text
	.uaword	.LVL11-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL12-.text
	.uaword	.LVL14-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL14-.text
	.uaword	.LVL15-.text
	.uahalf	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL15-.text
	.uaword	.LVL16-.text
	.uahalf	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL16-.text
	.uaword	.LVL17-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL30-.text
	.uaword	.LVL33-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL33-.text
	.uaword	.LVL34-.text
	.uahalf	0x6
	.byte	0x82
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL34-.text
	.uaword	.LVL35-.text
	.uahalf	0x1
	.byte	0x63
	.uaword	.LVL35-.text
	.uaword	.LVL36-.text
	.uahalf	0x6
	.byte	0x82
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL36-.text
	.uaword	.LVL37-.text
	.uahalf	0x7
	.byte	0x7f
	.sleb128 0
	.byte	0x20
	.byte	0x82
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL37-.text
	.uaword	.LFE4-.text
	.uahalf	0x6
	.byte	0x82
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL7-.text
	.uaword	.LVL11-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL12-.text
	.uaword	.LVL14-.text
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL14-.text
	.uaword	.LVL16-.text
	.uahalf	0x3
	.byte	0x82
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL16-.text
	.uaword	.LVL17-.text
	.uahalf	0x3
	.byte	0x82
	.sleb128 2
	.byte	0x9f
	.uaword	.LVL18-.text
	.uaword	.LVL33-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL33-.text
	.uaword	.LVL36-.text
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL36-.text
	.uaword	.LVL37-.text
	.uahalf	0x3
	.byte	0x82
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL37-.text
	.uaword	.LFE4-.text
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL7-.text
	.uaword	.LVL31-.text
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL7-.text
	.uaword	.LVL13-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL13-.text
	.uaword	.LVL18-.text
	.uahalf	0x1
	.byte	0x63
	.uaword	.LVL18-.text
	.uaword	.LFE4-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL7-.text
	.uaword	.LVL9-.text
	.uahalf	0x3
	.byte	0x8
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL9-.text
	.uaword	.LVL10-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL10-.text
	.uaword	.LVL18-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL18-.text
	.uaword	.LVL20-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL27-.text
	.uaword	.LVL28-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL30-.text
	.uaword	.LFE4-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL7-.text
	.uaword	.LVL9-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL9-.text
	.uaword	.LVL10-.text
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL18-.text
	.uaword	.LVL28-.text
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL29-.text
	.uaword	.LVL30-.text
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL19-.text
	.uaword	.LVL21-.text
	.uahalf	0x3
	.byte	0x8
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL21-.text
	.uaword	.LVL26-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL26-.text
	.uaword	.LVL27-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL27-.text
	.uaword	.LVL28-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL29-.text
	.uaword	.LVL30-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL19-.text
	.uaword	.LVL21-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL21-.text
	.uaword	.LVL22-.text
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL22-.text
	.uaword	.LVL23-.text
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL23-.text
	.uaword	.LVL24-.text
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	.LVL24-.text
	.uaword	.LVL25-.text
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	.LVL25-.text
	.uaword	.LVL26-.text
	.uahalf	0x2
	.byte	0x3a
	.byte	0x9f
	.uaword	.LVL26-.text
	.uaword	.LVL27-.text
	.uahalf	0x2
	.byte	0x3c
	.byte	0x9f
	.uaword	.LVL27-.text
	.uaword	.LVL28-.text
	.uahalf	0x2
	.byte	0x3e
	.byte	0x9f
	.uaword	.LVL29-.text
	.uaword	.LVL30-.text
	.uahalf	0x2
	.byte	0x3c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LFB5-.text
	.uaword	.LCFI2-.text
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI2-.text
	.uaword	.LFE5-.text
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL38-.text
	.uaword	.LVL41-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL41-.text
	.uaword	.LVL61-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL61-.text
	.uaword	.LVL62-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL62-.text
	.uaword	.LFE5-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL38-.text
	.uaword	.LVL40-.text
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL40-.text
	.uaword	.LFE5-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL38-.text
	.uaword	.LVL50-.text
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL50-.text
	.uaword	.LVL51-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL51-.text
	.uaword	.LVL52-.text
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL53-.text
	.uaword	.LVL55-.text
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL55-.text
	.uaword	.LVL56-.text
	.uahalf	0x3
	.byte	0x85
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL56-.text
	.uaword	.LVL57-.text
	.uahalf	0x3
	.byte	0x85
	.sleb128 2
	.byte	0x9f
	.uaword	.LVL58-.text
	.uaword	.LVL60-.text
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL61-.text
	.uaword	.LVL64-.text
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL64-.text
	.uaword	.LVL66-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL66-.text
	.uaword	.LVL68-.text
	.uahalf	0x9
	.byte	0x8f
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x1c
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL68-.text
	.uaword	.LVL69-.text
	.uahalf	0x1
	.byte	0x63
	.uaword	.LVL69-.text
	.uaword	.LVL70-.text
	.uahalf	0xb
	.byte	0x8f
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x7f
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	.LVL70-.text
	.uaword	.LFE5-.text
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL38-.text
	.uaword	.LVL57-.text
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL57-.text
	.uaword	.LVL58-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL58-.text
	.uaword	.LVL60-.text
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL60-.text
	.uaword	.LVL61-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL61-.text
	.uaword	.LVL65-.text
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL65-.text
	.uaword	.LVL70-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL70-.text
	.uaword	.LFE5-.text
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL39-.text
	.uaword	.LVL54-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL58-.text
	.uaword	.LVL60-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL61-.text
	.uaword	.LVL63-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL63-.text
	.uaword	.LVL64-.text
	.uahalf	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.uaword	.LVL64-.text
	.uaword	.LFE5-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL49-.text
	.uaword	.LVL52-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL64-.text
	.uaword	.LVL66-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL66-.text
	.uaword	.LVL67-.text
	.uahalf	0x6
	.byte	0x8f
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL67-.text
	.uaword	.LVL68-.text
	.uahalf	0x1
	.byte	0x63
	.uaword	.LVL68-.text
	.uaword	.LVL70-.text
	.uahalf	0x6
	.byte	0x8f
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL70-.text
	.uaword	.LFE5-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL41-.text
	.uaword	.LVL52-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL53-.text
	.uaword	.LVL55-.text
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL55-.text
	.uaword	.LVL56-.text
	.uahalf	0x3
	.byte	0x8f
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL56-.text
	.uaword	.LVL57-.text
	.uahalf	0x3
	.byte	0x8f
	.sleb128 2
	.byte	0x9f
	.uaword	.LVL58-.text
	.uaword	.LVL60-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL64-.text
	.uaword	.LVL66-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL66-.text
	.uaword	.LVL70-.text
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL70-.text
	.uaword	.LFE5-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL41-.text
	.uaword	.LVL57-.text
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL58-.text
	.uaword	.LVL60-.text
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL64-.text
	.uaword	.LVL65-.text
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL70-.text
	.uaword	.LFE5-.text
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL41-.text
	.uaword	.LVL54-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL58-.text
	.uaword	.LVL60-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL64-.text
	.uaword	.LFE5-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL41-.text
	.uaword	.LVL42-.text
	.uahalf	0x3
	.byte	0x8
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL42-.text
	.uaword	.LVL48-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL49-.text
	.uaword	.LVL58-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL58-.text
	.uaword	.LVL59-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL59-.text
	.uaword	.LVL61-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL64-.text
	.uaword	.LFE5-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL41-.text
	.uaword	.LVL42-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL42-.text
	.uaword	.LVL43-.text
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL43-.text
	.uaword	.LVL44-.text
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL44-.text
	.uaword	.LVL45-.text
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	.LVL45-.text
	.uaword	.LVL46-.text
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	.LVL46-.text
	.uaword	.LVL47-.text
	.uahalf	0x2
	.byte	0x3a
	.byte	0x9f
	.uaword	.LVL47-.text
	.uaword	.LVL49-.text
	.uahalf	0x2
	.byte	0x3c
	.byte	0x9f
	.uaword	.LVL49-.text
	.uaword	.LVL59-.text
	.uahalf	0x2
	.byte	0x3e
	.byte	0x9f
	.uaword	.LVL59-.text
	.uaword	.LVL60-.text
	.uahalf	0x2
	.byte	0x3c
	.byte	0x9f
	.uaword	.LVL60-.text
	.uaword	.LVL61-.text
	.uahalf	0x2
	.byte	0x3e
	.byte	0x9f
	.uaword	.LVL64-.text
	.uaword	.LFE5-.text
	.uahalf	0x2
	.byte	0x3e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL71-.text
	.uaword	.LVL72-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL72-.text
	.uaword	.LFE6-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL76-.text
	.uaword	.LVL77-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL77-.text
	.uaword	.LVL78-.text
	.uahalf	0x7
	.byte	0x82
	.sleb128 0
	.byte	0x84
	.sleb128 0
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL78-.text
	.uaword	.LVL80-.text
	.uahalf	0x8
	.byte	0x84
	.sleb128 0
	.byte	0x6
	.byte	0x20
	.byte	0x82
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL80-.text
	.uaword	.LVL81-.text
	.uahalf	0x7
	.byte	0x82
	.sleb128 0
	.byte	0x84
	.sleb128 0
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL76-.text
	.uaword	.LVL78-.text
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL78-.text
	.uaword	.LVL80-.text
	.uahalf	0x3
	.byte	0x82
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL80-.text
	.uaword	.LFE9-.text
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL75-.text
	.uaword	.LVL77-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL77-.text
	.uaword	.LVL79-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL80-.text
	.uaword	.LVL81-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL84-.text
	.uaword	.LVL85-1-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL85-1-.text
	.uaword	.LFE11-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
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
	.uaword	.Ltext0
	.uaword	.Letext0-.Ltext0
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB10-.Ltext0
	.uaword	.LBE10-.Ltext0
	.uaword	.LBB20-.Ltext0
	.uaword	.LBE20-.Ltext0
	.uaword	.LBB21-.Ltext0
	.uaword	.LBE21-.Ltext0
	.uaword	.LBB22-.Ltext0
	.uaword	.LBE22-.Ltext0
	.uaword	.LBB23-.Ltext0
	.uaword	.LBE23-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB12-.Ltext0
	.uaword	.LBE12-.Ltext0
	.uaword	.LBB15-.Ltext0
	.uaword	.LBE15-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB24-.Ltext0
	.uaword	.LBE24-.Ltext0
	.uaword	.LBB27-.Ltext0
	.uaword	.LBE27-.Ltext0
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF6:
	.string	"u8DataSize"
.LASF4:
	.string	"u8UsrSrv"
.LASF1:
	.string	"u8SizeOfData"
.LASF3:
	.string	"u16LocalLoop"
.LASF2:
	.string	"udtlocalStatus"
.LASF5:
	.string	"pkstrMta"
.LASF7:
	.string	"udtLocalStatus"
.LASF0:
	.string	"pu8SrcAddr"
	.extern	CCP_vidDaqListSetEvent,STT_FUNC,0
	.extern	CCP_u8SsnSts,STT_OBJECT,1
	.extern	DEVHAL_u8CheckEngineState,STT_OBJECT,1
	.extern	DEVHAL_udtCheckEngineState,STT_FUNC,0
	.extern	CCPUSR_kau32WritableMemoryZone,STT_OBJECT,56
	.extern	__const_end,STT_OBJECT,-1
	.extern	__const_begin,STT_OBJECT,-1
	.extern	CCPUSR_kau32ReadOnlyMemoryZone,STT_OBJECT,16
	.extern	DEVHAL_bCheckEmulCard,STT_FUNC,0
	.extern	CalUsr_bIsCalibUpdEna,STT_OBJECT,1
	.extern	CCPUSR_vidDaqListIni,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
