	.file	"I2c.c"
.section .text,"ax",@progbits
.Ltext0:
.section Code.Cpu0,"ax",@progbits
	.align 1
	.type	I2c_lWrite, @function
I2c_lWrite:
.LFB34:
	.file 1 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\I2c\\src\\I2c.c"
	.loc 1 1476 0
.LVL0:
	.loc 1 1489 0
	ld.hu	%d5, [%a5] 8
	.loc 1 1488 0
	ld.hu	%d15, [%a5] 6
.LVL1:
	.loc 1 1492 0
	jnz	%d5, .L2
	.loc 1 1495 0
	ge.u	%d2, %d15, 31
	jnz	%d2, .L13
.L34:
	.loc 1 1524 0
	and	%d2, %d15, 3
	.loc 1 1522 0
	extr.u	%d10, %d15, 2, 8
.LVL2:
	.loc 1 1524 0
	jnz	%d2, .L36
.LVL3:
	.loc 1 1538 0
	ld.a	%a2, [%a5]0
.LVL4:
	.loc 1 1540 0
	jnz	%d10, .L12
	.loc 1 1590 0
	st.h	[%a5] 6, %d15
	.loc 1 1591 0
	st.h	[%a5] 8, %d5
	ret
.LVL5:
.L2:
	.loc 1 1512 0
	ld.w	%d2, [%a4] 128
	and	%d2, %d2, 192
	jz	%d2, .L14
	.loc 1 1515 0
	ge.u	%d2, %d15, 16
	jz	%d2, .L34
	.loc 1 1517 0
	mov	%d10, 4
.LVL6:
.L5:
	.loc 1 1538 0
	ld.a	%a2, [%a5]0
.LVL7:
.L12:
	.loc 1 1545 0
	movh.a	%a15, hi:I2c_ConfigPtr
	ld.a	%a6, [%a15] lo:I2c_ConfigPtr
	lea	%a3, [%a4] -32768
	mov	%d11, 0
	mov	%d2, 0
	.loc 1 1587 0
	addih.a	%a3, %a3, 1
.LVL8:
.L11:
	.loc 1 1543 0
	eq	%d3, %d5, 0
	and.eq	%d3, %d2, 0
	mov	%d7, %d5
	.loc 1 1574 0
	mov	%d0, 0
	.loc 1 1542 0
	mov	%d2, 0
	.loc 1 1543 0
	jz	%d3, .L7
	.loc 1 1545 0
	ld.a	%a15, [%a6]0
	ld.bu	%d2, [%a15] 32
	jnz	%d2, .L8
.LVL9:
	.loc 1 1548 0
	ld.h	%d2, [%a5] 12
	.loc 1 1551 0
	mov	%d0, 1
	.loc 1 1548 0
	sh	%d2, 1
	.loc 1 1550 0
	and	%d2, %d2, 255
.LVL10:
	mov	%d7, 0
.LVL11:
.L7:
	.loc 1 1577 0
	mov	%d5, %d7
	jz	%d15, .L9
	addi	%d8, %d7, 1
	add	%d15, -1
	extr.u	%d8, %d8, 0, 16
	extr.u	%d1, %d15, 0, 16
	mov	%d3, 0
	addi	%d9, %d0, 1
.LVL12:
.L10:
	extr.u	%d15, %d3, 0, 16
	and	%d6, %d3, 255
.LVL13:
	add	%d4, %d15, %d7
	.loc 1 1579 0
	extr.u	%d4, %d4, 0, 16
	add	%d3, 1
	addsc.a	%a15, %a2, %d4, 0
	add	%d4, %d6, %d0
	ld.bu	%d5, [%a15]0
	.loc 1 1580 0
	and	%d4, %d4, 255
	sh	%d4, 3
	sh	%d4, %d5, %d4
	add	%d6, %d9
.LVL14:
	add	%d5, %d15, %d8
	sub	%d15, %d1, %d15
.LVL15:
	extr.u	%d15, %d15, 0, 16
	.loc 1 1577 0
	and	%d6, %d6, 255
	.loc 1 1580 0
	or	%d2, %d4
.LVL16:
	.loc 1 1577 0
	lt.u	%d4, %d6, 4
	and.ne	%d4, %d15, 0
	extr.u	%d5, %d5, 0, 16
.LVL17:
	jnz	%d4, .L10
.LVL18:
.L9:
	add	%d11, 1
.LVL19:
	.loc 1 1587 0
	st.w	[%a3]0, %d2
.LVL20:
	.loc 1 1540 0
	and	%d2, %d11, 255
.LVL21:
	jlt.u	%d2, %d10, .L11
	.loc 1 1590 0
	st.h	[%a5] 6, %d15
.LVL22:
	.loc 1 1591 0
	st.h	[%a5] 8, %d5
	ret
.LVL23:
.L13:
	.loc 1 1497 0
	mov	%d10, 8
	j	.L5
.L14:
	.loc 1 1532 0
	mov	%d10, 1
	j	.L5
.LVL24:
.L8:
	.loc 1 1556 0
	ld.hu	%d3, [%a5] 12
.LVL25:
	.loc 1 1569 0
	mov	%d0, 2
	.loc 1 1558 0
	sh	%d2, %d3, -8
	sh	%d2, 1
	.loc 1 1567 0
	sh	%d3, %d3, 8
.LVL26:
	.loc 1 1557 0
	orn	%d2, %d2, ~(-16)
	.loc 1 1567 0
	insert	%d3, %d3, 0, 16, 16
	.loc 1 1568 0
	and	%d2, %d2, 255
	.loc 1 1567 0
	or	%d2, %d3
.LVL27:
	mov	%d7, 0
	j	.L7
.LVL28:
.L36:
	.loc 1 1526 0
	add	%d10, 1
.LVL29:
	and	%d10, %d10, 255
.LVL30:
	j	.L5
.LFE34:
	.size	I2c_lWrite, .-I2c_lWrite
	.align 1
	.type	I2c_ReadWriteDetCheck, @function
I2c_ReadWriteDetCheck:
.LFB33:
	.loc 1 1381 0
.LVL31:
	.loc 1 1384 0
	movh.a	%a15, hi:I2c_InitStatus
	ld.bu	%d15, [%a15] lo:I2c_InitStatus
	jz	%d15, .L47
	.loc 1 1393 0
	jnz	%d4, .L48
	.loc 1 1401 0
	jz.a	%a4, .L49
	.loc 1 1408 0
	add	%d5, -1
.LVL32:
	extr.u	%d5, %d5, 0, 16
	mov	%d15, 16383
	jge.u	%d5, %d15, .L50
.LVL33:
.LBB28:
.LBB29:
	.loc 1 1415 0
	movh.a	%a15, hi:I2c_ConfigPtr
	ld.a	%a15, [%a15] lo:I2c_ConfigPtr
	ld.a	%a15, [%a15]0
	ld.bu	%d15, [%a15] 32
	jz	%d15, .L51
	.loc 1 1424 0
	mov	%d2, 1024
	ge.u	%d6, %d6, %d2
.LVL34:
	.loc 1 1423 0
	eq	%d15, %d15, 1
	.loc 1 1424 0
	and	%d15, %d6
	jnz	%d15, .L45
.L44:
	.loc 1 1431 0
	movh.a	%a15, hi:I2c_ChannelInfo
	lea	%a15, [%a15] lo:I2c_ChannelInfo
	ld.bu	%d15, [%a15] 4
	.loc 1 1441 0
	mov	%d2, 0
	.loc 1 1431 0
	jeq	%d15, 2, .L52
.LVL35:
.LBE29:
.LBE28:
	.loc 1 1444 0
	ret
.LVL36:
.L48:
	.loc 1 1396 0
	mov	%d6, %d7
.LVL37:
	mov	%e4, 255
.LVL38:
	mov	%d7, 2
.LVL39:
	call	Det_ReportError
.LVL40:
	.loc 1 1399 0
	mov	%d2, 7
	ret
.LVL41:
.L47:
	.loc 1 1388 0
	mov	%d6, %d7
.LVL42:
	mov	%e4, 255
.LVL43:
	mov	%d7, 1
.LVL44:
	call	Det_ReportError
.LVL45:
	.loc 1 1391 0
	mov	%d2, 11
	ret
.LVL46:
.L50:
	.loc 1 1411 0
	mov	%d6, %d7
.LVL47:
	mov	%e4, 255
.LVL48:
	mov	%d7, 6
.LVL49:
	call	Det_ReportError
.LVL50:
	.loc 1 1413 0
	mov	%d2, 8
	ret
.LVL51:
.L51:
.LBB31:
.LBB30:
	.loc 1 1416 0
	lt.u	%d6, %d6, 128
.LVL52:
	jnz	%d6, .L44
.L45:
	.loc 1 1419 0
	mov	%d6, %d7
	mov	%e4, 255
.LVL53:
	mov	%d7, 5
.LVL54:
	call	Det_ReportError
.LVL55:
	.loc 1 1421 0
	mov	%d2, 9
	ret
.LVL56:
.L52:
	.loc 1 1433 0
	mov	%d6, %d7
	mov	%e4, 255
.LVL57:
	mov	%d7, 4
.LVL58:
	call	Det_ReportError
.LVL59:
	.loc 1 1436 0
	mov	%d2, 12
.LVL60:
.LBE30:
.LBE31:
	.loc 1 1444 0
	ret
.LVL61:
.L49:
	.loc 1 1404 0
	mov	%d6, %d7
.LVL62:
	mov	%e4, 255
.LVL63:
	mov	%d7, 0
.LVL64:
	call	Det_ReportError
.LVL65:
	.loc 1 1406 0
	mov	%d2, 10
	ret
.LFE33:
	.size	I2c_ReadWriteDetCheck, .-I2c_ReadWriteDetCheck
	.align 1
	.global	I2c_Init
	.type	I2c_Init, @function
I2c_Init:
.LFB19:
	.loc 1 434 0
.LVL66:
	.loc 1 440 0
	movh.a	%a15, 61444
	lea	%a15, [%a15] -32224
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 10, 1
	st.w	[%a15]0, %d15
	.loc 1 441 0
	movh.a	%a15, 61444
	lea	%a15, [%a15] -32220
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 10, 1
	st.w	[%a15]0, %d15
	.loc 1 442 0
	movh.a	%a15, 61444
	lea	%a15, [%a15] -32216
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 10, 1
	st.w	[%a15]0, %d15
.LVL67:
	.loc 1 449 0
	jz.a	%a4, .L72
	.loc 1 456 0
	movh.a	%a3, hi:I2c_InitStatus
	ld.bu	%d15, [%a3] lo:I2c_InitStatus
	jeq	%d15, 1, .L55
	.loc 1 474 0 discriminator 1
	ld.bu	%d15, [%a4] 4
	movh	%d14, hi:I2c_ChannelMap
	movh	%d11, hi:I2c_HwModuleAddr
	mov.aa	%a13, %a4
.LVL68:
	mov	%d9, 0
	addi	%d14, %d14, lo:I2c_ChannelMap
	addi	%d11, %d11, lo:I2c_HwModuleAddr
.LBB40:
.LBB41:
	.loc 1 1167 0 discriminator 1
	mov	%d13, 127
	.loc 1 1171 0 discriminator 1
	mov	%d12, 15
.LBE41:
.LBE40:
	.loc 1 474 0 discriminator 1
	jz	%d15, .L57
.LVL69:
.L68:
	.loc 1 476 0
	ld.w	%d2, [%a13]0
	and	%d15, %d9, 255
	madd	%d3, %d2, %d15, 48
	.loc 1 478 0
	mov.a	%a3, %d14
	and	%d10, %d9, 255
.LVL70:
	.loc 1 476 0
	mov.a	%a15, %d3
.LVL71:
.LBB43:
.LBB44:
.LBB45:
.LBB46:
	.loc 1 1319 0
	mov	%d4, 1
.LBE46:
.LBE45:
.LBE44:
.LBE43:
	.loc 1 477 0
	ld.bu	%d8, [%a15]0
.LVL72:
.LBB55:
.LBB51:
.LBB49:
.LBB47:
	.loc 1 1323 0
	mov	%d15, 256
.LBE47:
.LBE49:
.LBE51:
.LBE55:
	.loc 1 478 0
	addsc.a	%a2, %a3, %d8, 0
.LBB56:
.LBB52:
	.loc 1 1125 0
	mov.a	%a3, %d11
.LBE52:
.LBE56:
	.loc 1 478 0
	st.b	[%a2]0, %d10
.LVL73:
.LBB57:
.LBB53:
	.loc 1 1125 0
	addsc.a	%a2, %a3, %d8, 2
	ld.a	%a12, [%a2]0
.LVL74:
.LBB50:
.LBB48:
	.loc 1 1319 0
	lea	%a4, [%a12] 20
	addih.a	%a14, %a4, 1
	mov.aa	%a4, %a14
	call	Mcal_WritePeripEndInitProtReg
.LVL75:
	.loc 1 1320 0
	lea	%a4, [%a12] 24
	addih.a	%a4, %a4, 1
	mov	%d4, 1
	call	Mcal_WritePeripEndInitProtReg
.LVL76:
	.loc 1 1330 0
	mov.aa	%a4, %a14
.LVL77:
.L58:
	ld.w	%d2, [%a4]0
	.loc 1 1326 0
	add	%d15, -1
.LVL78:
	.loc 1 1333 0
	nand.t	%d2, %d2,1, %d2,1
.LVL79:
	ne	%d3, %d15, 0
	and	%d2, %d3
	jnz	%d2, .L58
	.loc 1 1335 0
	lea	%a4, [%a12] 28
	addih.a	%a4, %a4, 1
	mov	%d4, 1
	call	Mcal_WritePeripEndInitProtReg
.LVL80:
.LBE48:
.LBE50:
	.loc 1 1128 0
	addih.a	%a14, %a12, 1
	mov.aa	%a4, %a14
	mov	%d4, 0
	call	Mcal_WritePeripEndInitProtReg
.LVL81:
	.loc 1 1129 0
	ld.w	%d15, [%a14]0
.LVL82:
	.loc 1 1130 0
	mov	%d2, 1
	jnz.t	%d15, 1, .L59
	.loc 1 1132 0
	ld.w	%d15, [%a13]0
.LVL83:
	madd	%d3, %d15, %d8, 48
	mov.a	%a2, %d3
	ld.w	%d15, [%a2] 28
	st.w	[%a12]0, %d15
	.loc 1 1133 0
	ld.w	%d15, [%a12]0
	extr.u	%d15, %d15, 1, 1
.LVL84:
.LBE53:
.LBE57:
	.loc 1 480 0
	jnz	%d15, .L59
	.loc 1 483 0
	ld.bu	%d2, [%a15]0
	mov.a	%a3, %d11
	addsc.a	%a2, %a3, %d2, 2
.LBB58:
.LBB59:
	.loc 1 1211 0
	ld.w	%d2, [%a12] 16
.LBE59:
.LBE58:
	.loc 1 483 0
	ld.a	%a2, [%a2]0
.LVL85:
.LBB61:
.LBB60:
	.loc 1 1211 0
	andn	%d2, %d2, ~(-2)
	st.w	[%a12] 16, %d2
	.loc 1 1213 0
	ld.w	%d2, [%a15] 8
	st.w	[%a12] 24, %d2
	.loc 1 1215 0
	ld.w	%d3, [%a15] 12
	st.w	[%a12] 28, %d3
	.loc 1 1217 0
	ld.w	%d2, [%a15] 4
	st.w	[%a12] 32, %d2
	.loc 1 1219 0
	ld.w	%d3, [%a15] 16
	st.w	[%a12] 64, %d3
	.loc 1 1221 0
	ld.w	%d2, [%a15] 20
	st.w	[%a12] 40, %d2
	.loc 1 1223 0
	ld.bu	%d2, [%a15] 24
	lea	%a12, [%a12] 8
.LVL86:
	addih.a	%a12, %a12, 1
	st.w	[%a12]0, %d2
.LVL87:
.LBE60:
.LBE61:
.LBB62:
.LBB42:
	.loc 1 1163 0
	st.w	[%a2] 132, %d15
	.loc 1 1165 0
	st.w	[%a2] 112, %d15
	.loc 1 1167 0
	st.w	[%a2] 120, %d13
	.loc 1 1169 0
	st.w	[%a2] 96, %d15
	.loc 1 1171 0
	st.w	[%a2] 104, %d12
.LBE42:
.LBE62:
.LBB63:
.LBB54:
	.loc 1 1133 0
	mov	%d2, 0
.LVL88:
.L59:
	add	%d10, 1
.LVL89:
.LBE54:
.LBE63:
	.loc 1 474 0 discriminator 2
	ld.bu	%d15, [%a13] 4
	and	%d10, %d10, 255
	add	%d9, 1
.LVL90:
	jlt.u	%d10, %d15, .L68
	.loc 1 489 0
	jz	%d2, .L73
	.loc 1 503 0
	mov	%d15, 0
	movh.a	%a3, hi:I2c_InitStatus
	st.b	[%a3] lo:I2c_InitStatus, %d15
	ret
.L73:
.LVL91:
	movh	%d5, hi:I2c_ChannelInfo
	addi	%d5, %d5, lo:I2c_ChannelInfo
	.loc 1 493 0 discriminator 1
	mov	%d4, 1
	.loc 1 491 0 discriminator 1
	jz	%d15, .L57
.LVL92:
.L67:
	.loc 1 493 0 discriminator 3
	madd	%d3, %d5, %d2, 16
	add	%d2, 1
.LVL93:
	mov.a	%a15, %d3
	.loc 1 491 0 discriminator 3
	and	%d3, %d2, 255
	.loc 1 493 0 discriminator 3
	st.b	[%a15] 4, %d4
.LVL94:
	.loc 1 491 0 discriminator 3
	jlt.u	%d3, %d15, .L67
.LVL95:
.L57:
	.loc 1 495 0
	movh.a	%a15, hi:I2c_ConfigPtr
	.loc 1 497 0
	mov	%d15, 1
	movh.a	%a3, hi:I2c_InitStatus
	.loc 1 495 0
	st.a	[%a15] lo:I2c_ConfigPtr, %a13
	.loc 1 497 0
	st.b	[%a3] lo:I2c_InitStatus, %d15
	ret
.LVL96:
.L55:
	.loc 1 459 0
	mov	%e4, 255
	mov	%d6, 79
	mov	%d7, 3
	j	Det_ReportError
.LVL97:
.L72:
	.loc 1 452 0
	mov	%e4, 255
	mov	%d6, 79
	mov	%d7, 7
	j	Det_ReportError
.LVL98:
.LFE19:
	.size	I2c_Init, .-I2c_Init
	.align 1
	.global	I2c_DeInit
	.type	I2c_DeInit, @function
I2c_DeInit:
.LFB20:
	.loc 1 536 0
.LVL99:
	.loc 1 547 0
	movh.a	%a15, hi:I2c_InitStatus
	ld.bu	%d15, [%a15] lo:I2c_InitStatus
	jz	%d15, .L78
	.loc 1 564 0
	movh.a	%a2, hi:I2c_ChannelInfo
	.loc 1 558 0
	mov	%d15, 0
	st.b	[%a15] lo:I2c_InitStatus, %d15
.LVL100:
	.loc 1 566 0
	mov	%d2, 0
	.loc 1 564 0
	mov	%d15, 0
	lea	%a15, [%a2] lo:I2c_ChannelInfo
	.loc 1 565 0
	st.b	[%a15] 4, %d15
	.loc 1 566 0
	st.h	[%a15] 6, %d15
	.loc 1 567 0
	st.h	[%a15] 8, %d15
	.loc 1 569 0
	st.h	[%a15] 12, %d15
	.loc 1 568 0
	st.b	[%a15] 10, %d2
	.loc 1 570 0
	st.b	[%a15] 14, %d2
.LVL101:
	.loc 1 572 0
	movh.a	%a15, hi:I2c_ConfigPtr
	.loc 1 564 0
	st.w	[%a2] lo:I2c_ChannelInfo, %d15
.LVL102:
	.loc 1 572 0
	ld.a	%a2, [%a15] lo:I2c_ConfigPtr
	ld.a	%a2, [%a2]0
	.loc 1 577 0
	mov	%d4, 1
	.loc 1 573 0
	ld.bu	%d2, [%a2]0
	movh.a	%a2, hi:I2c_HwModuleAddr
	lea	%a2, [%a2] lo:I2c_HwModuleAddr
	addsc.a	%a2, %a2, %d2, 2
.LBB64:
.LBB65:
	.loc 1 1167 0
	mov	%d2, 127
.LBE65:
.LBE64:
	.loc 1 573 0
	ld.a	%a4, [%a2]0
.LVL103:
.LBB67:
.LBB66:
	.loc 1 1163 0
	st.w	[%a4] 132, %d15
	.loc 1 1165 0
	st.w	[%a4] 112, %d15
	.loc 1 1167 0
	st.w	[%a4] 120, %d2
	.loc 1 1169 0
	st.w	[%a4] 96, %d15
	.loc 1 1171 0
	mov	%d2, 15
	st.w	[%a4] 104, %d2
.LBE66:
.LBE67:
	.loc 1 577 0
	addih.a	%a4, %a4, 1
.LVL104:
	call	Mcal_WritePeripEndInitProtReg
.LVL105:
	.loc 1 580 0
	st.w	[%a15] lo:I2c_ConfigPtr, %d15
	.loc 1 544 0
	mov	%d2, 0
	.loc 1 584 0
	ret
.LVL106:
.L78:
	.loc 1 550 0
	mov	%e4, 255
	mov	%d6, 80
	mov	%d7, 1
	call	Det_ReportError
.LVL107:
	.loc 1 552 0
	mov	%d2, 1
	ret
.LFE20:
	.size	I2c_DeInit, .-I2c_DeInit
	.align 1
	.global	I2c_SyncWrite
	.type	I2c_SyncWrite, @function
I2c_SyncWrite:
.LFB21:
	.loc 1 624 0
.LVL108:
	.loc 1 632 0
	mov	%d7, 81
	.loc 1 624 0
	mov	%d15, %d4
	mov.aa	%a13, %a4
	mov	%d9, %d5
	mov	%d10, %d6
	.loc 1 632 0
	call	I2c_ReadWriteDetCheck
.LVL109:
	mov	%d8, %d2
.LVL110:
	.loc 1 635 0
	jnz	%d2, .L80
	.loc 1 639 0
	movh.a	%a2, hi:I2c_ChannelInfo
	sh	%d11, %d15, 4
	lea	%a14, [%a2] lo:I2c_ChannelInfo
	addsc.a	%a12, %a14, %d11, 0
.LVL111:
	.loc 1 640 0
	mov	%d2, 2
.LVL112:
	.loc 1 641 0
	mov.aa	%a15, %a12
	st.a	[%a15+]8, %a13
	.loc 1 640 0
	st.b	[%a12] 4, %d2
	.loc 1 644 0
	mov	%d2, 1
	st.b	[%a15] 2, %d2
	.loc 1 646 0
	movh.a	%a15, hi:I2c_ConfigPtr
	ld.a	%a3, [%a15] lo:I2c_ConfigPtr
	ld.a	%a15, [%a3]0
	mul	%d2, %d15, 48
	.loc 1 642 0
	st.h	[%a12] 6, %d9
	.loc 1 643 0
	st.h	[%a12] 8, %d8
	.loc 1 646 0
	addsc.a	%a2, %a15, %d2, 0
.LVL113:
	.loc 1 645 0
	st.h	[%a12] 12, %d10
	.loc 1 647 0
	ld.bu	%d15, [%a2]0
	movh.a	%a15, hi:I2c_HwModuleAddr
	lea	%a15, [%a15] lo:I2c_HwModuleAddr
	addsc.a	%a15, %a15, %d15, 2
	ld.a	%a15, [%a15]0
.LVL114:
	.loc 1 650 0
	ld.w	%d15, [%a15] 16
	insert	%d15, %d15, 1, 0, 1
	st.w	[%a15] 16, %d15
	.loc 1 653 0
	ld.w	%d15, [%a2] 12
	jz	%d15, .L81
.LVL115:
.LBB74:
.LBB75:
	.loc 1 1283 0
	mov	%d15, 1
	.loc 1 1285 0
	lea	%a4, [%a15] -32768
	.loc 1 1283 0
	st.w	[%a15] 52, %d15
	.loc 1 1285 0
	addih.a	%a4, %a4, 1
	mov	%d15, 9
	st.w	[%a4]0, %d15
	.loc 1 1287 0
	mov	%d15, 15
	st.w	[%a15] 140, %d15
	.loc 1 1289 0
	mov	%d15, 127
	st.w	[%a15] 120, %d15
.LVL116:
.L81:
.LBE75:
.LBE74:
	.loc 1 659 0
	ld.bu	%d15, [%a2] 32
	jz	%d15, .L105
	.loc 1 666 0
	add	%d9, 2
	st.w	[%a15] 52, %d9
.L83:
.LVL117:
.LBB76:
.LBB77:
	.loc 1 1633 0
	ld.a	%a2, [%a3]0
.LVL118:
	.loc 1 1646 0
	mov	%d10, 15
	.loc 1 1633 0
	addsc.a	%a2, %a2, %d2, 0
	ld.w	%d9, [%a2] 40
.LVL119:
	.loc 1 1637 0
	jz	%d9, .L85
.L101:
	.loc 1 1640 0
	ld.w	%d2, [%a15] 100
.LVL120:
	.loc 1 1641 0
	ld.w	%d4, [%a15] 116
.LVL121:
	.loc 1 1643 0
	ld.w	%d3, [%a15] 128
	and	%d15, %d3, 15
	jnz	%d15, .L106
	.loc 1 1640 0
	and	%d2, %d2, 15
.LVL122:
	.loc 1 1641 0
	and	%d15, %d4, 127
.LVL123:
	.loc 1 1649 0
	or	%d15, %d2
.LVL124:
	jz	%d15, .L87
	.loc 1 1651 0
	addsc.a	%a2, %a14, %d11, 0
	mov	%d15, 1
	st.b	[%a2] 4, %d15
	.loc 1 1653 0
	ld.w	%d15, [%a15] 100
	jnz.t	%d15, 2, .L91
	.loc 1 1657 0
	ld.w	%d15, [%a15] 100
	jnz.t	%d15, 3, .L92
	.loc 1 1661 0
	ld.w	%d15, [%a15] 116
	jnz.t	%d15, 4, .L93
	.loc 1 1665 0
	ld.w	%d15, [%a15] 116
	jnz.t	%d15, 3, .L94
	.loc 1 1669 0
	ld.w	%d15, [%a15] 116
	.loc 1 1675 0
	extr.u	%d15, %d15, 5, 1
	sel	%d8, %d15, %d8, 13
.LVL125:
.L88:
.LBB78:
.LBB79:
	.loc 1 1163 0
	mov	%d15, 0
	st.w	[%a15] 132, %d15
	.loc 1 1165 0
	st.w	[%a15] 112, %d15
	.loc 1 1167 0
	mov	%d2, 127
.LVL126:
	st.w	[%a15] 120, %d2
	.loc 1 1169 0
	st.w	[%a15] 96, %d15
	.loc 1 1171 0
	mov	%d15, 15
	st.w	[%a15] 104, %d15
.LVL127:
.L85:
.LBE79:
.LBE78:
	.loc 1 1687 0
	ld.w	%d15, [%a15] 16
	andn	%d15, %d15, ~(-2)
	st.w	[%a15] 16, %d15
.LVL128:
.L80:
.LBE77:
.LBE76:
	.loc 1 674 0
	mov	%d2, %d8
	ret
.LVL129:
.L105:
	.loc 1 661 0
	add	%d9, 1
	st.w	[%a15] 52, %d9
	j	.L83
.LVL130:
.L106:
.LBB81:
.LBB80:
	.loc 1 1645 0
	mov.aa	%a4, %a15
	mov.aa	%a5, %a12
	call	I2c_lWrite
.LVL131:
	.loc 1 1646 0
	st.w	[%a15] 140, %d10
.L87:
.LVL132:
	.loc 1 1685 0
	add	%d9, -1
.LVL133:
	.loc 1 1637 0
	jnz	%d9, .L101
	j	.L85
.LVL134:
.L91:
	.loc 1 1655 0
	mov	%d8, 1
.LVL135:
	j	.L88
.LVL136:
.L92:
	.loc 1 1659 0
	mov	%d8, 2
.LVL137:
	j	.L88
.LVL138:
.L93:
	.loc 1 1663 0
	mov	%d8, 5
.LVL139:
	j	.L88
.LVL140:
.L94:
	.loc 1 1667 0
	mov	%d8, 6
.LVL141:
	j	.L88
.LBE80:
.LBE81:
.LFE21:
	.size	I2c_SyncWrite, .-I2c_SyncWrite
	.align 1
	.global	I2c_SyncRead
	.type	I2c_SyncRead, @function
I2c_SyncRead:
.LFB22:
	.loc 1 714 0
.LVL142:
	sub.a	%SP, 8
.LCFI0:
	.loc 1 722 0
	mov	%d7, 82
	.loc 1 714 0
	mov	%d15, %d4
	mov.aa	%a12, %a4
	mov	%e8, %d5, %d6
	.loc 1 722 0
	call	I2c_ReadWriteDetCheck
.LVL143:
	.loc 1 725 0
	jnz	%d2, .L137
.LVL144:
	.loc 1 730 0
	movh.a	%a15, hi:I2c_ChannelInfo
	sh	%d14, %d15, 4
	lea	%a13, [%a15] lo:I2c_ChannelInfo
	addsc.a	%a15, %a13, %d14, 0
	.loc 1 735 0
	movh.a	%a6, hi:I2c_ConfigPtr
	ld.a	%a4, [%a6] lo:I2c_ConfigPtr
	ld.a	%a3, [%a4]0
	.loc 1 733 0
	st.h	[%a15] 8, %d2
	.loc 1 735 0
	mul	%d2, %d15, 48
.LVL145:
	.loc 1 731 0
	mov.aa	%a2, %a15
	st.a	[%a2+]8, %a12
	.loc 1 730 0
	mov	%d3, 2
	.loc 1 734 0
	st.b	[%a2] 2, %d3
	.loc 1 737 0
	mov	%d15, 1
.LVL146:
	.loc 1 735 0
	addsc.a	%a2, %a3, %d2, 0
.LVL147:
	.loc 1 730 0
	st.b	[%a15] 4, %d3
	.loc 1 732 0
	st.h	[%a15] 6, %d9
	.loc 1 736 0
	st.h	[%a15] 12, %d8
	.loc 1 737 0
	st.b	[%a15] 14, %d15
	.loc 1 738 0
	ld.bu	%d15, [%a2]0
	movh.a	%a3, hi:I2c_HwModuleAddr
	lea	%a3, [%a3] lo:I2c_HwModuleAddr
	addsc.a	%a3, %a3, %d15, 2
	ld.a	%a3, [%a3]0
.LVL148:
	.loc 1 741 0
	ld.w	%d15, [%a3] 16
	insert	%d15, %d15, 1, 0, 1
	st.w	[%a3] 16, %d15
	.loc 1 744 0
	ld.w	%d15, [%a2] 12
	jz	%d15, .L109
.LVL149:
.LBB92:
.LBB93:
	.loc 1 1283 0
	mov	%d15, 1
	.loc 1 1285 0
	lea	%a5, [%a3] -32768
	.loc 1 1283 0
	st.w	[%a3] 52, %d15
	.loc 1 1285 0
	addih.a	%a5, %a5, 1
	mov	%d15, 9
	st.w	[%a5]0, %d15
	.loc 1 1287 0
	mov	%d15, 15
	st.w	[%a3] 140, %d15
	.loc 1 1289 0
	mov	%d15, 127
	st.w	[%a3] 120, %d15
.LVL150:
.L109:
.LBE93:
.LBE92:
	.loc 1 749 0
	ld.bu	%d15, [%a2] 32
	jz	%d15, .L151
	.loc 1 755 0
	mov	%d15, 2
	st.w	[%a3] 52, %d15
.L111:
.LVL151:
.LBB94:
.LBB95:
	.loc 1 1842 0
	ld.a	%a2, [%a4]0
.LVL152:
	addsc.a	%a2, %a2, %d2, 0
	.loc 1 1844 0
	mov	%d2, 0
	.loc 1 1842 0
	ld.a	%a2, [%a2] 44
.LVL153:
	.loc 1 1846 0
	jz.a	%a2, .L112
.LBB96:
.LBB97:
.LBB98:
.LBB99:
	.loc 1 1742 0
	ld.a	%a6, [%a6] lo:I2c_ConfigPtr
	lea	%a4, [%a3] -16384
.LBE99:
.LBE98:
	.loc 1 1734 0
	addsc.a	%a14, %a13, %d14, 0
	.loc 1 1782 0
	addih.a	%a12, %a4, 1
.LVL154:
.LBB103:
.LBB100:
	.loc 1 1764 0
	lea	%a4, [%a3] -32768
	addih.a	%a4, %a4, 1
	.loc 1 1742 0
	st.a	[%SP]0, %a6
	.loc 1 1764 0
	st.a	[%SP] 4, %a4
.LBE100:
.LBE103:
	.loc 1 1734 0
	lea	%a5, [%a14] 4
	.loc 1 1735 0
	lea	%a7, [%a14] 8
	.loc 1 1737 0
	lea	%a6, [%a14] 12
.LBE97:
.LBE96:
	.loc 1 1894 0
	mov	%d12, 15
.LBB110:
.LBB106:
	.loc 1 1780 0
	mov	%d11, 0
.LBE106:
.LBE110:
.LBB111:
.LBB112:
	.loc 1 1167 0
	mov	%d13, 127
.LBE112:
.LBE111:
	.loc 1 1864 0
	lea	%a4, [%a2] -1
.LVL155:
.L126:
	.loc 1 1849 0
	ld.w	%d15, [%a3] 100
.LVL156:
	.loc 1 1850 0
	ld.w	%d3, [%a3] 116
.LVL157:
	.loc 1 1849 0
	and	%d15, %d15, 15
.LVL158:
	.loc 1 1850 0
	and	%d3, %d3, 127
.LVL159:
	.loc 1 1851 0
	or	%d15, %d3
.LVL160:
	jz	%d15, .L113
	.loc 1 1854 0
	ld.w	%d15, [%a3] 100
	jnz.t	%d15, 0, .L130
	.loc 1 1858 0
	ld.w	%d15, [%a3] 100
	jnz.t	%d15, 1, .L131
	.loc 1 1862 0
	ld.w	%d15, [%a3] 116
	jnz.t	%d15, 4, .L132
	.loc 1 1866 0
	ld.w	%d15, [%a3] 116
	jnz.t	%d15, 3, .L133
	.loc 1 1870 0
	ld.w	%d15, [%a3] 116
	jnz.t	%d15, 5, .L115
.LVL161:
	.loc 1 1876 0
	mov	%d2, 13
.LVL162:
.L114:
.LBB116:
.LBB113:
	.loc 1 1163 0
	st.w	[%a3] 132, %d11
	.loc 1 1165 0
	st.w	[%a3] 112, %d11
	.loc 1 1167 0
	st.w	[%a3] 120, %d13
	.loc 1 1169 0
	st.w	[%a3] 96, %d11
.LBE113:
.LBE116:
	.loc 1 1879 0
	ld.bu	%d15, [%a6] 2
.LBB117:
.LBB114:
	.loc 1 1171 0
	st.w	[%a3] 104, %d12
.LBE114:
.LBE117:
	.loc 1 1879 0
	jeq	%d15, 2, .L152
.L127:
.LVL163:
	.loc 1 1887 0
	addsc.a	%a15, %a13, %d14, 0
	mov	%d15, 1
	st.b	[%a15] 4, %d15
.LVL164:
.L112:
	.loc 1 1902 0
	ld.w	%d15, [%a3] 16
	andn	%d15, %d15, ~(-2)
	st.w	[%a3] 16, %d15
	ret
.LVL165:
.L137:
.LBE95:
.LBE94:
	.loc 1 761 0
	ret
.LVL166:
.L151:
	.loc 1 751 0
	mov	%d15, 1
	st.w	[%a3] 52, %d15
	j	.L111
.LVL167:
.L113:
.LBB123:
.LBB122:
	.loc 1 1891 0
	ld.w	%d15, [%a3] 128
	and	%d15, %d15, 15
	jnz	%d15, .L153
	.loc 1 1900 0
	loop	%a4, .L126
	j	.L112
.L153:
.LVL168:
.LBB118:
.LBB107:
	.loc 1 1737 0
	ld.bu	%d15, [%a6] 2
	.loc 1 1734 0
	ld.hu	%d3, [%a5] 2
.LVL169:
	.loc 1 1735 0
	ld.hu	%d8, [%a7]0
.LVL170:
	.loc 1 1737 0
	jeq	%d15, 1, .L154
	.loc 1 1775 0
	mov	%d15, 3
	st.b	[%a6] 2, %d15
	.loc 1 1776 0
	ld.w	%d15, [%a3] 56
	.loc 1 1777 0
	ld.a	%a2, [%a14]0
	.loc 1 1776 0
	and	%d10, %d15, 63
.LVL171:
	.loc 1 1780 0
	mov	%d9, 0
	jz	%d10, .L120
	mov	%d15, %d3
.LVL172:
.L141:
	.loc 1 1782 0
	ld.w	%d7, [%a12]0
.LVL173:
	.loc 1 1784 0
	jz	%d15, .L122
	addi	%d3, %d8, 1
	add	%d15, -1
	extr.u	%d1, %d3, 0, 16
	extr.u	%d0, %d15, 0, 16
	mov	%d6, 0
.LVL174:
.L123:
	extr.u	%d15, %d6, 0, 16
.LVL175:
	and	%d4, %d6, 255
	add	%d3, %d15, %d8
	.loc 1 1789 0
	extr.u	%d3, %d3, 0, 16
	add	%d4, 1
	addsc.a	%a15, %a2, %d3, 0
	and	%d3, %d6, 255
	sh	%d3, 3
	rsub	%d5, %d3, 0
	add	%d3, %d15, %d1
	sub	%d15, %d0, %d15
.LVL176:
	sh	%d5, %d7, %d5
	extr.u	%d15, %d15, 0, 16
	.loc 1 1786 0
	and	%d4, %d4, 255
	.loc 1 1789 0
	st.b	[%a15]0, %d5
	.loc 1 1784 0
	lt.u	%d5, %d4, 4
	and.ne	%d5, %d15, 0
	extr.u	%d3, %d3, 0, 16
.LVL177:
	add	%d6, 1
.LVL178:
	jnz	%d5, .L123
	.loc 1 1790 0
	mov	%d8, %d3
.LVL179:
.L122:
	add	%d9, 1
.LVL180:
	.loc 1 1796 0
	st.h	[%a5] 2, %d15
	.loc 1 1797 0
	st.h	[%a7]0, %d8
.LVL181:
	.loc 1 1780 0
	and	%d3, %d9, 255
	jlt.u	%d3, %d10, .L141
.LVL182:
.L120:
.LBE107:
.LBE118:
	.loc 1 1894 0
	st.w	[%a3] 140, %d12
.LVL183:
.L156:
	.loc 1 1900 0
	loop	%a4, .L126
	j	.L112
.LVL184:
.L130:
	.loc 1 1856 0
	mov	%d2, 3
	j	.L114
.LVL185:
.L131:
	.loc 1 1860 0
	mov	%d2, 4
	j	.L114
.LVL186:
.L132:
	.loc 1 1864 0
	mov	%d2, 5
	j	.L114
.LVL187:
.L152:
	.loc 1 1882 0
	mov	%d3, 3
.LVL188:
	st.b	[%a6] 2, %d3
	.loc 1 1900 0
	loop	%a4, .L126
	j	.L112
.LVL189:
.L133:
	.loc 1 1868 0
	mov	%d2, 6
	j	.L114
.LVL190:
.L154:
.LBB119:
.LBB108:
.LBB104:
.LBB101:
	.loc 1 1742 0
	ld.a	%a2, [%SP]0
	ld.a	%a15, [%a2]0
	.loc 1 1739 0
	mov	%d3, 2
	st.b	[%a6] 2, %d3
	.loc 1 1742 0
	ld.bu	%d4, [%a15] 32
	.loc 1 1741 0
	ld.hu	%d3, [%a6]0
.LVL191:
	.loc 1 1742 0
	jz	%d4, .L155
	.loc 1 1753 0
	sh	%d4, %d3, -8
	sh	%d4, 1
	.loc 1 1762 0
	sh	%d3, %d3, 8
	.loc 1 1764 0
	ld.a	%a2, [%SP] 4
	.loc 1 1752 0
	orn	%d4, %d4, ~(-16)
	.loc 1 1762 0
	insert	%d3, %d3, 0, 16, 16
	.loc 1 1752 0
	and	%d4, %d4, 255
.LVL192:
	.loc 1 1762 0
	or	%d3, %d4
.LVL193:
	.loc 1 1764 0
	st.w	[%a2]0, %d3
	.loc 1 1766 0
	ld.w	%d3, [%a3] 20
.LVL194:
	.loc 1 1769 0
	or	%d4, %d4, 1
.LVL195:
	.loc 1 1766 0
	insert	%d3, %d3, 1, 0, 1
	st.w	[%a3] 20, %d3
.LVL196:
	.loc 1 1768 0
	st.w	[%a3] 52, %d15
	.loc 1 1769 0
	st.w	[%a2]0, %d4
.L119:
	.loc 1 1771 0
	ld.hu	%d15, [%a5] 2
	st.w	[%a3] 44, %d15
.LBE101:
.LBE104:
.LBE108:
.LBE119:
	.loc 1 1894 0
	st.w	[%a3] 140, %d12
	j	.L156
.LVL197:
.L115:
.LBB120:
.LBB115:
	.loc 1 1163 0
	mov	%d15, 0
	st.w	[%a3] 132, %d15
	.loc 1 1165 0
	st.w	[%a3] 112, %d15
	.loc 1 1167 0
	mov	%d2, 127
	st.w	[%a3] 120, %d2
	.loc 1 1169 0
	st.w	[%a3] 96, %d15
	.loc 1 1171 0
	mov	%d15, 15
	st.w	[%a3] 104, %d15
.LBE115:
.LBE120:
	.loc 1 1872 0
	mov	%d2, 0
	j	.L127
.LVL198:
.L155:
.LBB121:
.LBB109:
.LBB105:
.LBB102:
	.loc 1 1747 0
	ld.a	%a15, [%SP] 4
	.loc 1 1745 0
	sh.eq	%d3, %d3, %d3
.LVL199:
	.loc 1 1747 0
	st.w	[%a15]0, %d3
	j	.L119
.LBE102:
.LBE105:
.LBE109:
.LBE121:
.LBE122:
.LBE123:
.LFE22:
	.size	I2c_SyncRead, .-I2c_SyncRead
	.align 1
	.global	I2c_AsyncWrite
	.type	I2c_AsyncWrite, @function
I2c_AsyncWrite:
.LFB23:
	.loc 1 801 0
.LVL200:
.LBB132:
.LBB133:
	.loc 1 1384 0
	movh.a	%a15, hi:I2c_InitStatus
	ld.bu	%d15, [%a15] lo:I2c_InitStatus
	jz	%d15, .L172
	.loc 1 1393 0
	jnz	%d4, .L173
	.loc 1 1401 0
	jz.a	%a4, .L174
	.loc 1 1408 0
	add	%d15, %d5, -1
	extr.u	%d15, %d15, 0, 16
	mov	%d2, 16383
	jge.u	%d15, %d2, .L175
.LVL201:
.LBB134:
.LBB135:
	.loc 1 1415 0
	movh.a	%a15, hi:I2c_ConfigPtr
	ld.a	%a15, [%a15] lo:I2c_ConfigPtr
	ld.a	%a2, [%a15]0
	ld.bu	%d15, [%a2] 32
	jz	%d15, .L176
	.loc 1 1424 0
	mov	%d3, 1024
	.loc 1 1423 0
	eq	%d15, %d15, 1
	.loc 1 1424 0
	ge.u	%d2, %d6, %d3
	and	%d15, %d2
	jnz	%d15, .L165
.L164:
	.loc 1 1431 0
	movh.a	%a3, hi:I2c_ChannelInfo
	lea	%a15, [%a3] lo:I2c_ChannelInfo
	ld.bu	%d15, [%a15] 4
	jeq	%d15, 2, .L177
.LVL202:
.LBE135:
.LBE134:
.LBE133:
.LBE132:
	.loc 1 819 0
	mov	%d15, 2
	st.b	[%a15] 4, %d15
	.loc 1 822 0
	mov	%d15, 0
	st.h	[%a15] 8, %d15
	.loc 1 823 0
	mov	%d15, 1
	.loc 1 820 0
	st.a	[%a3] lo:I2c_ChannelInfo, %a4
	.loc 1 821 0
	st.h	[%a15] 6, %d5
	.loc 1 823 0
	st.b	[%a15] 10, %d15
	.loc 1 824 0
	st.h	[%a15] 12, %d6
.LVL203:
	.loc 1 826 0
	ld.bu	%d15, [%a2]0
	movh.a	%a15, hi:I2c_HwModuleAddr
	lea	%a15, [%a15] lo:I2c_HwModuleAddr
	addsc.a	%a15, %a15, %d15, 2
.LBB147:
.LBB148:
	.loc 1 1252 0
	mov	%d15, 63
.LBE148:
.LBE147:
	.loc 1 826 0
	ld.a	%a15, [%a15]0
.LVL204:
.LBB150:
.LBB149:
	.loc 1 1252 0
	st.w	[%a15] 132, %d15
	.loc 1 1254 0
	mov	%d15, 127
	st.w	[%a15] 112, %d15
.LBE149:
.LBE150:
	.loc 1 832 0
	ld.w	%d2, [%a15] 16
	insert	%d2, %d2, 1, 0, 1
	st.w	[%a15] 16, %d2
	.loc 1 835 0
	ld.w	%d2, [%a2] 12
	jnz	%d2, .L169
	.loc 1 841 0
	ld.bu	%d15, [%a2] 32
	jz	%d15, .L178
.L167:
	.loc 1 848 0
	add	%d5, 2
.LVL205:
	st.w	[%a15] 52, %d5
.LBB151:
.LBB144:
.LBB140:
.LBB136:
	.loc 1 1441 0
	mov	%d2, 0
	ret
.LVL206:
.L173:
.LBE136:
.LBE140:
	.loc 1 1396 0
	mov	%e4, 255
.LVL207:
	mov	%d6, 83
.LVL208:
	mov	%d7, 2
	call	Det_ReportError
.LVL209:
	.loc 1 1399 0
	mov	%d2, 7
	ret
.LVL210:
.L172:
	.loc 1 1388 0
	mov	%e4, 255
.LVL211:
	mov	%d6, 83
.LVL212:
	mov	%d7, 1
	call	Det_ReportError
.LVL213:
	.loc 1 1391 0
	mov	%d2, 11
	ret
.LVL214:
.L175:
	.loc 1 1411 0
	mov	%e4, 255
.LVL215:
	mov	%d6, 83
.LVL216:
	mov	%d7, 6
	call	Det_ReportError
.LVL217:
	.loc 1 1413 0
	mov	%d2, 8
	ret
.LVL218:
.L169:
.LBE144:
.LBE151:
.LBB152:
.LBB153:
	.loc 1 1283 0
	mov	%d2, 1
	.loc 1 1285 0
	lea	%a3, [%a15] -32768
	.loc 1 1283 0
	st.w	[%a15] 52, %d2
	.loc 1 1285 0
	addih.a	%a3, %a3, 1
	mov	%d2, 9
	st.w	[%a3]0, %d2
	.loc 1 1287 0
	mov	%d2, 15
	st.w	[%a15] 140, %d2
	.loc 1 1289 0
	st.w	[%a15] 120, %d15
.LBE153:
.LBE152:
	.loc 1 841 0
	ld.bu	%d15, [%a2] 32
	jnz	%d15, .L167
.LVL219:
.L178:
	.loc 1 843 0
	add	%d5, 1
.LVL220:
	st.w	[%a15] 52, %d5
.LBB154:
.LBB145:
.LBB141:
.LBB137:
	.loc 1 1441 0
	mov	%d2, 0
.LBE137:
.LBE141:
.LBE145:
.LBE154:
	ret
.LVL221:
.L176:
.LBB155:
.LBB146:
.LBB142:
.LBB138:
	.loc 1 1416 0
	lt.u	%d15, %d6, 128
	jnz	%d15, .L164
.L165:
	.loc 1 1419 0
	mov	%e4, 255
.LVL222:
	mov	%d6, 83
.LVL223:
	mov	%d7, 5
	call	Det_ReportError
.LVL224:
	.loc 1 1421 0
	mov	%d2, 9
	ret
.LVL225:
.L174:
.LBE138:
.LBE142:
	.loc 1 1404 0
	mov	%e4, 255
.LVL226:
	mov	%e6, 83
.LVL227:
	call	Det_ReportError
.LVL228:
	.loc 1 1406 0
	mov	%d2, 10
	ret
.LVL229:
.L177:
.LBB143:
.LBB139:
	.loc 1 1433 0
	mov	%e4, 255
.LVL230:
	mov	%d6, 83
.LVL231:
	mov	%d7, 4
	call	Det_ReportError
.LVL232:
	.loc 1 1436 0
	mov	%d2, 12
	ret
.LBE139:
.LBE143:
.LBE146:
.LBE155:
.LFE23:
	.size	I2c_AsyncWrite, .-I2c_AsyncWrite
	.align 1
	.global	I2c_AsyncRead
	.type	I2c_AsyncRead, @function
I2c_AsyncRead:
.LFB24:
	.loc 1 893 0
.LVL233:
.LBB164:
.LBB165:
	.loc 1 1384 0
	movh.a	%a15, hi:I2c_InitStatus
	ld.bu	%d15, [%a15] lo:I2c_InitStatus
	jz	%d15, .L194
	.loc 1 1393 0
	jnz	%d4, .L195
	.loc 1 1401 0
	jz.a	%a4, .L196
	.loc 1 1408 0
	add	%d15, %d5, -1
	extr.u	%d15, %d15, 0, 16
	mov	%d2, 16383
	jge.u	%d15, %d2, .L197
.LVL234:
.LBB166:
.LBB167:
	.loc 1 1415 0
	movh.a	%a15, hi:I2c_ConfigPtr
	ld.a	%a15, [%a15] lo:I2c_ConfigPtr
	ld.a	%a2, [%a15]0
	ld.bu	%d15, [%a2] 32
	jz	%d15, .L198
	.loc 1 1424 0
	mov	%d3, 1024
	.loc 1 1423 0
	eq	%d15, %d15, 1
	.loc 1 1424 0
	ge.u	%d2, %d6, %d3
	and	%d15, %d2
	jnz	%d15, .L187
.L186:
	.loc 1 1431 0
	movh.a	%a3, hi:I2c_ChannelInfo
	lea	%a15, [%a3] lo:I2c_ChannelInfo
	ld.bu	%d15, [%a15] 4
	jeq	%d15, 2, .L199
.LVL235:
.LBE167:
.LBE166:
.LBE165:
.LBE164:
	.loc 1 911 0
	mov	%d15, 2
	st.b	[%a15] 4, %d15
	.loc 1 915 0
	st.b	[%a15] 10, %d15
.LVL236:
	.loc 1 914 0
	mov	%d2, 0
	.loc 1 918 0
	mov	%d15, 1
	.loc 1 912 0
	st.a	[%a3] lo:I2c_ChannelInfo, %a4
	.loc 1 914 0
	st.h	[%a15] 8, %d2
	.loc 1 913 0
	st.h	[%a15] 6, %d5
	.loc 1 917 0
	st.h	[%a15] 12, %d6
	.loc 1 918 0
	st.b	[%a15] 14, %d15
	.loc 1 919 0
	ld.bu	%d15, [%a2]0
	movh.a	%a15, hi:I2c_HwModuleAddr
	lea	%a15, [%a15] lo:I2c_HwModuleAddr
	addsc.a	%a15, %a15, %d15, 2
.LBB179:
.LBB180:
	.loc 1 1252 0
	mov	%d15, 63
.LBE180:
.LBE179:
	.loc 1 919 0
	ld.a	%a15, [%a15]0
.LVL237:
.LBB182:
.LBB181:
	.loc 1 1252 0
	st.w	[%a15] 132, %d15
	.loc 1 1254 0
	mov	%d15, 127
	st.w	[%a15] 112, %d15
.LBE181:
.LBE182:
	.loc 1 925 0
	ld.w	%d2, [%a15] 16
	insert	%d2, %d2, 1, 0, 1
	st.w	[%a15] 16, %d2
	.loc 1 928 0
	ld.w	%d2, [%a2] 12
	jnz	%d2, .L191
	.loc 1 934 0
	ld.bu	%d15, [%a2] 32
	jz	%d15, .L200
.L189:
	.loc 1 940 0
	mov	%d15, 2
	st.w	[%a15] 52, %d15
.LBB183:
.LBB176:
.LBB172:
.LBB168:
	.loc 1 1441 0
	mov	%d2, 0
	ret
.LVL238:
.L195:
.LBE168:
.LBE172:
	.loc 1 1396 0
	mov	%e4, 255
.LVL239:
	mov	%d6, 84
.LVL240:
	mov	%d7, 2
	call	Det_ReportError
.LVL241:
	.loc 1 1399 0
	mov	%d2, 7
	ret
.LVL242:
.L194:
	.loc 1 1388 0
	mov	%e4, 255
.LVL243:
	mov	%d6, 84
.LVL244:
	mov	%d7, 1
	call	Det_ReportError
.LVL245:
	.loc 1 1391 0
	mov	%d2, 11
	ret
.LVL246:
.L197:
	.loc 1 1411 0
	mov	%e4, 255
.LVL247:
	mov	%d6, 84
.LVL248:
	mov	%d7, 6
	call	Det_ReportError
.LVL249:
	.loc 1 1413 0
	mov	%d2, 8
	ret
.LVL250:
.L191:
.LBE176:
.LBE183:
.LBB184:
.LBB185:
	.loc 1 1283 0
	mov	%d2, 1
	.loc 1 1285 0
	lea	%a3, [%a15] -32768
	.loc 1 1283 0
	st.w	[%a15] 52, %d2
	.loc 1 1285 0
	addih.a	%a3, %a3, 1
	mov	%d2, 9
	st.w	[%a3]0, %d2
	.loc 1 1287 0
	mov	%d2, 15
	st.w	[%a15] 140, %d2
	.loc 1 1289 0
	st.w	[%a15] 120, %d15
.LBE185:
.LBE184:
	.loc 1 934 0
	ld.bu	%d15, [%a2] 32
	jnz	%d15, .L189
.LVL251:
.L200:
	.loc 1 936 0
	mov	%d15, 1
	st.w	[%a15] 52, %d15
.LBB186:
.LBB177:
.LBB173:
.LBB169:
	.loc 1 1441 0
	mov	%d2, 0
.LBE169:
.LBE173:
.LBE177:
.LBE186:
	ret
.LVL252:
.L198:
.LBB187:
.LBB178:
.LBB174:
.LBB170:
	.loc 1 1416 0
	lt.u	%d15, %d6, 128
	jnz	%d15, .L186
.L187:
	.loc 1 1419 0
	mov	%e4, 255
.LVL253:
	mov	%d6, 84
.LVL254:
	mov	%d7, 5
	call	Det_ReportError
.LVL255:
	.loc 1 1421 0
	mov	%d2, 9
	ret
.LVL256:
.L196:
.LBE170:
.LBE174:
	.loc 1 1404 0
	mov	%e4, 255
.LVL257:
	mov	%e6, 84
.LVL258:
	call	Det_ReportError
.LVL259:
	.loc 1 1406 0
	mov	%d2, 10
	ret
.LVL260:
.L199:
.LBB175:
.LBB171:
	.loc 1 1433 0
	mov	%e4, 255
.LVL261:
	mov	%d6, 84
.LVL262:
	mov	%d7, 4
	call	Det_ReportError
.LVL263:
	.loc 1 1436 0
	mov	%d2, 12
	ret
.LBE171:
.LBE175:
.LBE178:
.LBE187:
.LFE24:
	.size	I2c_AsyncRead, .-I2c_AsyncRead
	.align 1
	.global	I2c_GetStatus
	.type	I2c_GetStatus, @function
I2c_GetStatus:
.LFB25:
	.loc 1 978 0
.LVL264:
	.loc 1 983 0
	jnz	%d4, .L204
	.loc 1 998 0
	movh.a	%a15, hi:I2c_ChannelInfo
	lea	%a15, [%a15] lo:I2c_ChannelInfo
	ld.bu	%d2, [%a15] 4
.LVL265:
	.loc 1 1002 0
	ret
.LVL266:
.L204:
	.loc 1 986 0
	mov	%e4, 255
.LVL267:
	mov	%d6, 85
	mov	%d7, 2
	call	Det_ReportError
.LVL268:
	.loc 1 988 0
	mov	%d2, 0
	ret
.LFE25:
	.size	I2c_GetStatus, .-I2c_GetStatus
	.align 1
	.global	I2c_CancelOperation
	.type	I2c_CancelOperation, @function
I2c_CancelOperation:
.LFB26:
	.loc 1 1034 0
.LVL269:
	.loc 1 1043 0
	movh.a	%a15, hi:I2c_InitStatus
	ld.bu	%d15, [%a15] lo:I2c_InitStatus
	jz	%d15, .L210
	.loc 1 1050 0
	jnz	%d4, .L211
	.loc 1 1057 0
	jz.a	%a4, .L212
.LVL270:
	.loc 1 1068 0
	movh.a	%a15, hi:I2c_ConfigPtr
	ld.a	%a15, [%a15] lo:I2c_ConfigPtr
	.loc 1 1069 0
	ld.a	%a15, [%a15]0
	.loc 1 1077 0
	movh.a	%a2, hi:I2c_ChannelInfo
	.loc 1 1080 0
	mov	%d2, 1
	.loc 1 1069 0
	ld.bu	%d15, [%a15]0
	movh.a	%a15, hi:I2c_HwModuleAddr
	lea	%a15, [%a15] lo:I2c_HwModuleAddr
	addsc.a	%a15, %a15, %d15, 2
	ld.a	%a15, [%a15]0
.LVL271:
	.loc 1 1073 0
	ld.w	%d15, [%a15] 16
	andn	%d15, %d15, ~(-2)
	st.w	[%a15] 16, %d15
.LVL272:
.LBB188:
.LBB189:
	.loc 1 1163 0
	st.w	[%a15] 132, %d4
	.loc 1 1165 0
	st.w	[%a15] 112, %d4
	.loc 1 1167 0
	mov	%d15, 127
	st.w	[%a15] 120, %d15
	.loc 1 1169 0
	st.w	[%a15] 96, %d4
	.loc 1 1171 0
	mov	%d15, 15
	st.w	[%a15] 104, %d15
.LBE189:
.LBE188:
	.loc 1 1077 0
	lea	%a15, [%a2] lo:I2c_ChannelInfo
.LVL273:
	ld.hu	%d15, [%a15] 8
.LVL274:
	.loc 1 1080 0
	st.b	[%a15] 4, %d2
	.loc 1 1081 0
	st.w	[%a2] lo:I2c_ChannelInfo, %d4
	.loc 1 1084 0
	st.h	[%a15] 6, %d4
	.loc 1 1085 0
	st.h	[%a15] 8, %d4
.LVL275:
	.loc 1 1087 0
	st.h	[%a4]0, %d15
	.loc 1 1086 0
	mov	%d2, 0
.LVL276:
	.loc 1 1090 0
	ret
.LVL277:
.L210:
	.loc 1 1047 0
	mov	%e4, 255
.LVL278:
	mov	%d6, 86
	mov	%d7, 1
	call	Det_ReportError
.LVL279:
	.loc 1 1045 0
	mov	%d2, 1
	ret
.LVL280:
.L211:
	.loc 1 1054 0
	mov	%e4, 255
.LVL281:
	mov	%d6, 86
	mov	%d7, 2
	call	Det_ReportError
.LVL282:
	.loc 1 1052 0
	mov	%d2, 1
	ret
.LVL283:
.L212:
	.loc 1 1061 0
	mov	%e4, 255
.LVL284:
	mov	%e6, 86
	call	Det_ReportError
.LVL285:
	.loc 1 1059 0
	mov	%d2, 1
	ret
.LFE26:
	.size	I2c_CancelOperation, .-I2c_CancelOperation
	.align 1
	.global	I2c_IsrI2cDtr
	.type	I2c_IsrI2cDtr, @function
I2c_IsrI2cDtr:
.LFB38:
	.loc 1 1933 0
.LVL286:
	.loc 1 1937 0
	movh.a	%a15, hi:I2c_HwModuleAddr
	lea	%a15, [%a15] lo:I2c_HwModuleAddr
	addsc.a	%a15, %a15, %d4, 2
	.loc 1 1941 0
	movh.a	%a2, hi:I2c_ChannelInfo
	.loc 1 1937 0
	ld.a	%a12, [%a15]0
.LVL287:
	.loc 1 1938 0
	movh.a	%a15, hi:I2c_ChannelMap
	lea	%a15, [%a15] lo:I2c_ChannelMap
	addsc.a	%a15, %a15, %d4, 0
	.loc 1 1941 0
	lea	%a2, [%a2] lo:I2c_ChannelInfo
	.loc 1 1939 0
	ld.bu	%d15, [%a15]0
.LVL288:
	.loc 1 1941 0
	sh	%d3, %d15, 4
	addsc.a	%a5, %a2, %d3, 0
	lea	%a3, [%a5] 8
	ld.bu	%d15, [%a3] 2
.LVL289:
	jeq	%d15, 1, .L235
.LVL290:
.LBB194:
.LBB195:
	.loc 1 1737 0
	lea	%a15, [%a5] 12
.LVL291:
	ld.bu	%d4, [%a15] 2
.LVL292:
	.loc 1 1734 0
	lea	%a4, [%a5] 4
	ld.hu	%d2, [%a4] 2
.LVL293:
	.loc 1 1735 0
	ld.hu	%d7, [%a5] 8
.LVL294:
	.loc 1 1737 0
	jeq	%d4, 1, .L236
	.loc 1 1776 0
	ld.w	%d9, [%a12] 56
	.loc 1 1775 0
	mov	%d15, 3
	.loc 1 1777 0
	ld.a	%a2, [%a5]0
	.loc 1 1775 0
	st.b	[%a15] 2, %d15
	lea	%a5, [%a12] -16384
	.loc 1 1776 0
	and	%d9, %d9, 63
.LVL295:
	.loc 1 1780 0
	mov	%d8, 0
	.loc 1 1782 0
	addih.a	%a5, %a5, 1
	.loc 1 1780 0
	jz	%d9, .L220
.LVL296:
.L230:
	.loc 1 1782 0
	ld.w	%d6, [%a5]0
.LVL297:
	.loc 1 1784 0
	jz	%d2, .L222
	addi	%d1, %d7, 1
	add	%d2, -1
.LVL298:
	extr.u	%d1, %d1, 0, 16
	extr.u	%d0, %d2, 0, 16
	mov	%d15, 0
.LVL299:
.L223:
	extr.u	%d2, %d15, 0, 16
.LVL300:
	and	%d4, %d15, 255
	add	%d3, %d2, %d7
	.loc 1 1789 0
	extr.u	%d3, %d3, 0, 16
	sh	%d4, 3
	addsc.a	%a15, %a2, %d3, 0
	rsub	%d3, %d4, 0
	and	%d5, %d15, 255
	sh	%d3, %d6, %d3
	st.b	[%a15]0, %d3
	add	%d5, 1
	add	%d3, %d2, %d1
	sub	%d2, %d0, %d2
.LVL301:
	extr.u	%d2, %d2, 0, 16
	.loc 1 1786 0
	and	%d5, %d5, 255
	extr.u	%d4, %d3, 0, 16
.LVL302:
	.loc 1 1784 0
	lt.u	%d3, %d5, 4
	and.ne	%d3, %d2, 0
	add	%d15, 1
.LVL303:
	jnz	%d3, .L223
	.loc 1 1790 0
	mov	%d7, %d4
.LVL304:
.L222:
	add	%d8, 1
.LVL305:
	.loc 1 1796 0
	st.h	[%a4] 2, %d2
	.loc 1 1797 0
	st.h	[%a3]0, %d7
.LVL306:
	.loc 1 1780 0
	and	%d15, %d8, 255
	jlt.u	%d15, %d9, .L230
.LVL307:
.L220:
.LBE195:
.LBE194:
	.loc 1 1952 0
	mov	%d15, 15
	st.w	[%a12] 140, %d15
	ret
.LVL308:
.L235:
	.loc 1 1943 0
	ld.hu	%d15, [%a5] 6
	jz	%d15, .L220
	.loc 1 1945 0
	mov.aa	%a4, %a12
	.loc 1 1952 0
	mov	%d15, 15
	.loc 1 1945 0
	call	I2c_lWrite
.LVL309:
	.loc 1 1952 0
	st.w	[%a12] 140, %d15
	ret
.LVL310:
.L236:
.LBB202:
.LBB200:
.LBB196:
.LBB197:
	.loc 1 1739 0
	mov	%d15, 2
	st.b	[%a15] 2, %d15
	.loc 1 1742 0
	movh.a	%a15, hi:I2c_ConfigPtr
	ld.a	%a15, [%a15] lo:I2c_ConfigPtr
	ld.a	%a15, [%a15]0
	.loc 1 1741 0
	ld.hu	%d15, [%a5] 12
.LVL311:
	.loc 1 1742 0
	ld.bu	%d2, [%a15] 32
.LVL312:
	jnz	%d2, .L218
	.loc 1 1747 0
	lea	%a15, [%a12] -32768
	.loc 1 1745 0
	sh.eq	%d15, %d15, %d15
.LVL313:
	.loc 1 1747 0
	addih.a	%a15, %a15, 1
	st.w	[%a15]0, %d15
.LVL314:
.L219:
	.loc 1 1771 0
	addsc.a	%a2, %a2, %d3, 0
	ld.hu	%d15, [%a2] 6
	st.w	[%a12] 44, %d15
.LBE197:
.LBE196:
.LBE200:
.LBE202:
	.loc 1 1952 0
	mov	%d15, 15
	st.w	[%a12] 140, %d15
	ret
.LVL315:
.L218:
.LBB203:
.LBB201:
.LBB199:
.LBB198:
	.loc 1 1753 0
	sh	%d2, %d15, -8
	sh	%d2, 1
	.loc 1 1762 0
	sh	%d15, %d15, 8
	.loc 1 1752 0
	orn	%d2, %d2, ~(-16)
	.loc 1 1762 0
	insert	%d15, %d15, 0, 16, 16
	.loc 1 1752 0
	and	%d2, %d2, 255
.LVL316:
	.loc 1 1764 0
	lea	%a15, [%a12] -32768
	.loc 1 1762 0
	or	%d15, %d2
.LVL317:
	.loc 1 1764 0
	addih.a	%a15, %a15, 1
	st.w	[%a15]0, %d15
	.loc 1 1766 0
	ld.w	%d15, [%a12] 20
.LVL318:
	.loc 1 1769 0
	or	%d2, %d2, 1
.LVL319:
	.loc 1 1766 0
	insert	%d15, %d15, 1, 0, 1
	st.w	[%a12] 20, %d15
.LVL320:
	.loc 1 1768 0
	st.w	[%a12] 52, %d4
	.loc 1 1769 0
	st.w	[%a15]0, %d2
	j	.L219
.LBE198:
.LBE199:
.LBE201:
.LBE203:
.LFE38:
	.size	I2c_IsrI2cDtr, .-I2c_IsrI2cDtr
	.align 1
	.global	I2c_IsrI2cProtocol
	.type	I2c_IsrI2cProtocol, @function
I2c_IsrI2cProtocol:
.LFB39:
	.loc 1 1980 0
.LVL321:
	.loc 1 1987 0
	movh.a	%a15, hi:I2c_ChannelMap
	lea	%a15, [%a15] lo:I2c_ChannelMap
	addsc.a	%a15, %a15, %d4, 0
	.loc 1 1990 0
	movh.a	%a2, hi:I2c_ConfigPtr
	.loc 1 1987 0
	ld.bu	%d2, [%a15]0
.LVL322:
	.loc 1 1988 0
	movh.a	%a15, hi:I2c_HwModuleAddr
.LVL323:
	lea	%a15, [%a15] lo:I2c_HwModuleAddr
	addsc.a	%a15, %a15, %d4, 2
	.loc 1 1990 0
	ld.a	%a2, [%a2] lo:I2c_ConfigPtr
	.loc 1 1988 0
	ld.a	%a15, [%a15]0
.LVL324:
	.loc 1 1990 0
	ld.w	%d5, [%a2]0
.LVL325:
	.loc 1 1992 0
	ld.w	%d15, [%a15] 116
	and	%d15, %d15, 127
	jz	%d15, .L237
	.loc 1 1994 0
	movh.a	%a2, hi:I2c_ChannelInfo
	lea	%a3, [%a2] lo:I2c_ChannelInfo
	sh	%d3, %d2, 4
	addsc.a	%a2, %a3, %d3, 0
	ld.bu	%d15, [%a2] 14
	jeq	%d15, 2, .L240
	.loc 1 1996 0
	ld.w	%d15, [%a15] 116
	.loc 1 1998 0
	mov	%d4, 5
.LVL326:
	.loc 1 1996 0
	jnz.t	%d15, 4, .L241
	.loc 1 2000 0
	ld.w	%d15, [%a15] 116
	.loc 1 2002 0
	mov	%d4, 6
	.loc 1 2000 0
	jnz.t	%d15, 3, .L241
	.loc 1 2004 0
	ld.w	%d4, [%a15] 116
	.loc 1 2010 0
	nor.t	%d4, %d4,5, %d4,5
	seln	%d4, %d4, %d4, 13
.L241:
.LVL327:
	.loc 1 2013 0
	addsc.a	%a2, %a3, %d3, 0
	mov	%d15, 1
	st.b	[%a2] 4, %d15
	.loc 1 2014 0
	mov	%d15, 127
	st.w	[%a15] 120, %d15
	.loc 1 2015 0
	mov	%d15, 15
	st.w	[%a15] 104, %d15
	.loc 1 2018 0
	ld.w	%d15, [%a15] 16
	andn	%d15, %d15, ~(-2)
	st.w	[%a15] 16, %d15
	.loc 1 2021 0
	madd	%d15, %d5, %d2, 48
	mov.a	%a15, %d15
.LVL328:
	ld.a	%a15, [%a15] 36
	jz.a	%a15, .L237
	.loc 1 2024 0
	ji	%a15
.LVL329:
.L240:
	.loc 1 2029 0
	mov	%d15, 127
	st.w	[%a15] 120, %d15
.LVL330:
.L237:
	ret
.LFE39:
	.size	I2c_IsrI2cProtocol, .-I2c_IsrI2cProtocol
	.align 1
	.global	I2c_IsrI2cError
	.type	I2c_IsrI2cError, @function
I2c_IsrI2cError:
.LFB40:
	.loc 1 2057 0
.LVL331:
	.loc 1 2064 0
	movh.a	%a15, hi:I2c_ChannelMap
	lea	%a15, [%a15] lo:I2c_ChannelMap
	addsc.a	%a15, %a15, %d4, 0
	.loc 1 2067 0
	movh.a	%a2, hi:I2c_ConfigPtr
	.loc 1 2064 0
	ld.bu	%d2, [%a15]0
.LVL332:
	.loc 1 2065 0
	movh.a	%a15, hi:I2c_HwModuleAddr
.LVL333:
	lea	%a15, [%a15] lo:I2c_HwModuleAddr
	addsc.a	%a15, %a15, %d4, 2
	.loc 1 2067 0
	ld.a	%a2, [%a2] lo:I2c_ConfigPtr
	.loc 1 2065 0
	ld.a	%a15, [%a15]0
.LVL334:
	.loc 1 2067 0
	ld.w	%d3, [%a2]0
.LVL335:
	.loc 1 2069 0
	ld.w	%d15, [%a15] 100
	and	%d15, %d15, 15
	jz	%d15, .L251
	.loc 1 2071 0
	movh.a	%a2, hi:I2c_ChannelInfo
	mov.d	%d4, %a2
.LVL336:
	addi	%d15, %d4, lo:I2c_ChannelInfo
	madd	%d4, %d15, %d2, 16
	mov	%d15, 1
	mov.a	%a2, %d4
	.loc 1 2075 0
	mov	%d4, 1
	.loc 1 2071 0
	st.b	[%a2] 4, %d15
	.loc 1 2073 0
	ld.w	%d15, [%a15] 100
	jnz.t	%d15, 2, .L254
	.loc 1 2077 0
	ld.w	%d15, [%a15] 100
	.loc 1 2079 0
	mov	%d4, 2
	.loc 1 2077 0
	jnz.t	%d15, 3, .L254
	.loc 1 2081 0
	ld.w	%d15, [%a15] 100
	.loc 1 2083 0
	mov	%d4, 3
	.loc 1 2081 0
	jnz.t	%d15, 0, .L254
	.loc 1 2085 0
	ld.w	%d4, [%a15] 100
	.loc 1 2091 0
	extr.u	%d15, %d4, 1, 1
	mov	%d4, 4
	sel	%d4, %d15, %d4, 13
.L254:
.LVL337:
	.loc 1 2094 0
	mov	%d15, 127
	st.w	[%a15] 120, %d15
	.loc 1 2095 0
	mov	%d15, 15
	st.w	[%a15] 104, %d15
	.loc 1 2098 0
	ld.w	%d15, [%a15] 16
	andn	%d15, %d15, ~(-2)
	st.w	[%a15] 16, %d15
	.loc 1 2101 0
	madd	%d15, %d3, %d2, 48
	mov.a	%a15, %d15
.LVL338:
	ld.a	%a15, [%a15] 36
	jz.a	%a15, .L251
	.loc 1 2104 0
	ji	%a15
.LVL339:
.L251:
	ret
.LFE40:
	.size	I2c_IsrI2cError, .-I2c_IsrI2cError
.section ClearedData.Cpu0.Unspecified.I2c_ChannelInfo,"aw",@progbits
	.align 2
	.type	I2c_ChannelInfo, @object
	.size	I2c_ChannelInfo, 16
I2c_ChannelInfo:
	.zero	16
.section ClearedData.Cpu0.8bit.I2c_InitStatus,"aw",@progbits
	.type	I2c_InitStatus, @object
	.size	I2c_InitStatus, 1
I2c_InitStatus:
	.zero	1
.section ClearedData.Cpu0.8bit.I2c_ChannelMap,"aw",@progbits
	.type	I2c_ChannelMap, @object
	.size	I2c_ChannelMap, 2
I2c_ChannelMap:
	.zero	2
.section ClearedData.Cpu0.32bit.I2c_ConfigPtr,"aw",@progbits
	.align 2
	.type	I2c_ConfigPtr, @object
	.size	I2c_ConfigPtr, 4
I2c_ConfigPtr:
	.zero	4
.section Const.Cpu0.32bit.I2c_HwModuleAddr,"a",@progbits
	.align 2
	.type	I2c_HwModuleAddr, @object
	.size	I2c_HwModuleAddr, 8
I2c_HwModuleAddr:
	.word	-267649024
	.word	-267517952
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
	.uaword	.LFB34
	.uaword	.LFE34-.LFB34
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
	.uaword	.LFB19
	.uaword	.LFE19-.LFB19
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB20
	.uaword	.LFE20-.LFB20
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB21
	.uaword	.LFE21-.LFB21
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB22
	.uaword	.LFE22-.LFB22
	.byte	0x4
	.uaword	.LCFI0-.LFB22
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB23
	.uaword	.LFE23-.LFB23
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB24
	.uaword	.LFE24-.LFB24
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB25
	.uaword	.LFE25-.LFB25
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB26
	.uaword	.LFE26-.LFB26
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB38
	.uaword	.LFE38-.LFB38
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB39
	.uaword	.LFE39-.LFB39
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB40
	.uaword	.LFE40-.LFB40
	.align 2
.LEFDE24:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\Ifx_TypesReg.h"
	.file 3 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxI2c_regdef.h"
	.file 4 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
	.file 5 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 6 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 7 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\I2c\\inc\\I2c.h"
	.file 8 ".\\output\\inc/..\\..\\bsw\\Det\\api\\Det.h"
	.file 9 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x4316
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"Targets\\TC38xx\\MCAL\\MCAL_Modules\\I2c\\src\\I2c.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x260
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.string	"Ifx_UReg_8Bit"
	.byte	0x2
	.byte	0x60
	.uaword	0x1d2
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x2
	.string	"Ifx_UReg_32Bit"
	.byte	0x2
	.byte	0x62
	.uaword	0x20f
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x2
	.string	"Ifx_SReg_32Bit"
	.byte	0x2
	.byte	0x65
	.uaword	0x251
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.string	"_Ifx_I2C_ACCEN0_Bits"
	.byte	0x4
	.byte	0x3
	.byte	0x44
	.uaword	0x4ac
	.uleb128 0x5
	.string	"EN0"
	.byte	0x3
	.byte	0x46
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN1"
	.byte	0x3
	.byte	0x47
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN2"
	.byte	0x3
	.byte	0x48
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN3"
	.byte	0x3
	.byte	0x49
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN4"
	.byte	0x3
	.byte	0x4a
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN5"
	.byte	0x3
	.byte	0x4b
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN6"
	.byte	0x3
	.byte	0x4c
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN7"
	.byte	0x3
	.byte	0x4d
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN8"
	.byte	0x3
	.byte	0x4e
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN9"
	.byte	0x3
	.byte	0x4f
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN10"
	.byte	0x3
	.byte	0x50
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN11"
	.byte	0x3
	.byte	0x51
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN12"
	.byte	0x3
	.byte	0x52
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN13"
	.byte	0x3
	.byte	0x53
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN14"
	.byte	0x3
	.byte	0x54
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN15"
	.byte	0x3
	.byte	0x55
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN16"
	.byte	0x3
	.byte	0x56
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN17"
	.byte	0x3
	.byte	0x57
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN18"
	.byte	0x3
	.byte	0x58
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN19"
	.byte	0x3
	.byte	0x59
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN20"
	.byte	0x3
	.byte	0x5a
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN21"
	.byte	0x3
	.byte	0x5b
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN22"
	.byte	0x3
	.byte	0x5c
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN23"
	.byte	0x3
	.byte	0x5d
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN24"
	.byte	0x3
	.byte	0x5e
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN25"
	.byte	0x3
	.byte	0x5f
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN26"
	.byte	0x3
	.byte	0x60
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN27"
	.byte	0x3
	.byte	0x61
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN28"
	.byte	0x3
	.byte	0x62
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN29"
	.byte	0x3
	.byte	0x63
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN30"
	.byte	0x3
	.byte	0x64
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN31"
	.byte	0x3
	.byte	0x65
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x2
	.string	"Ifx_I2C_ACCEN0_Bits"
	.byte	0x3
	.byte	0x66
	.uaword	0x258
	.uleb128 0x4
	.string	"_Ifx_I2C_ACCEN1_Bits"
	.byte	0x4
	.byte	0x3
	.byte	0x69
	.uaword	0x4fd
	.uleb128 0x5
	.string	"reserved_0"
	.byte	0x3
	.byte	0x6b
	.uaword	0x1f9
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x2
	.string	"Ifx_I2C_ACCEN1_Bits"
	.byte	0x3
	.byte	0x6c
	.uaword	0x4c7
	.uleb128 0x4
	.string	"_Ifx_I2C_ADDRCFG_Bits"
	.byte	0x4
	.byte	0x3
	.byte	0x6f
	.uaword	0x5db
	.uleb128 0x5
	.string	"ADR"
	.byte	0x3
	.byte	0x71
	.uaword	0x1f9
	.byte	0x4
	.byte	0xa
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF0
	.byte	0x3
	.byte	0x72
	.uaword	0x1f9
	.byte	0x4
	.byte	0x6
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"TBAM"
	.byte	0x3
	.byte	0x73
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"GCE"
	.byte	0x3
	.byte	0x74
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"MCE"
	.byte	0x3
	.byte	0x75
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"MNS"
	.byte	0x3
	.byte	0x76
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"SONA"
	.byte	0x3
	.byte	0x77
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"SOPE"
	.byte	0x3
	.byte	0x78
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"reserved_22"
	.byte	0x3
	.byte	0x79
	.uaword	0x1f9
	.byte	0x4
	.byte	0xa
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x2
	.string	"Ifx_I2C_ADDRCFG_Bits"
	.byte	0x3
	.byte	0x7a
	.uaword	0x518
	.uleb128 0x4
	.string	"_Ifx_I2C_BUSSTAT_Bits"
	.byte	0x4
	.byte	0x3
	.byte	0x7d
	.uaword	0x648
	.uleb128 0x5
	.string	"BS"
	.byte	0x3
	.byte	0x7f
	.uaword	0x1f9
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"RNW"
	.byte	0x3
	.byte	0x80
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF1
	.byte	0x3
	.byte	0x81
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1d
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x2
	.string	"Ifx_I2C_BUSSTAT_Bits"
	.byte	0x3
	.byte	0x82
	.uaword	0x5f7
	.uleb128 0x4
	.string	"_Ifx_I2C_CLC_Bits"
	.byte	0x4
	.byte	0x3
	.byte	0x85
	.uaword	0x6b4
	.uleb128 0x5
	.string	"DISR"
	.byte	0x3
	.byte	0x87
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"DISS"
	.byte	0x3
	.byte	0x88
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF2
	.byte	0x3
	.byte	0x89
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x2
	.string	"Ifx_I2C_CLC_Bits"
	.byte	0x3
	.byte	0x8a
	.uaword	0x664
	.uleb128 0x4
	.string	"_Ifx_I2C_CLC1_Bits"
	.byte	0x4
	.byte	0x3
	.byte	0x8d
	.uaword	0x798
	.uleb128 0x5
	.string	"DISR"
	.byte	0x3
	.byte	0x8f
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"DISS"
	.byte	0x3
	.byte	0x90
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"SPEN"
	.byte	0x3
	.byte	0x91
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EDIS"
	.byte	0x3
	.byte	0x92
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"SBWE"
	.byte	0x3
	.byte	0x93
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"FSOE"
	.byte	0x3
	.byte	0x94
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF3
	.byte	0x3
	.byte	0x95
	.uaword	0x1f9
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"RMC"
	.byte	0x3
	.byte	0x96
	.uaword	0x1f9
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF4
	.byte	0x3
	.byte	0x97
	.uaword	0x1f9
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF5
	.byte	0x3
	.byte	0x98
	.uaword	0x1f9
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x2
	.string	"Ifx_I2C_CLC1_Bits"
	.byte	0x3
	.byte	0x99
	.uaword	0x6cc
	.uleb128 0x4
	.string	"_Ifx_I2C_ENDDCTRL_Bits"
	.byte	0x4
	.byte	0x3
	.byte	0x9c
	.uaword	0x80a
	.uleb128 0x5
	.string	"SETRSC"
	.byte	0x3
	.byte	0x9e
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"SETEND"
	.byte	0x3
	.byte	0x9f
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF2
	.byte	0x3
	.byte	0xa0
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x2
	.string	"Ifx_I2C_ENDDCTRL_Bits"
	.byte	0x3
	.byte	0xa1
	.uaword	0x7b1
	.uleb128 0x4
	.string	"_Ifx_I2C_ERRIRQSC_Bits"
	.byte	0x4
	.byte	0x3
	.byte	0xa4
	.uaword	0x89c
	.uleb128 0x6
	.uaword	.LASF6
	.byte	0x3
	.byte	0xa6
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF7
	.byte	0x3
	.byte	0xa7
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF8
	.byte	0x3
	.byte	0xa8
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF9
	.byte	0x3
	.byte	0xa9
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF10
	.byte	0x3
	.byte	0xaa
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x2
	.string	"Ifx_I2C_ERRIRQSC_Bits"
	.byte	0x3
	.byte	0xab
	.uaword	0x827
	.uleb128 0x4
	.string	"_Ifx_I2C_ERRIRQSM_Bits"
	.byte	0x4
	.byte	0x3
	.byte	0xae
	.uaword	0x92e
	.uleb128 0x6
	.uaword	.LASF6
	.byte	0x3
	.byte	0xb0
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF7
	.byte	0x3
	.byte	0xb1
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF8
	.byte	0x3
	.byte	0xb2
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF9
	.byte	0x3
	.byte	0xb3
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF10
	.byte	0x3
	.byte	0xb4
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x2
	.string	"Ifx_I2C_ERRIRQSM_Bits"
	.byte	0x3
	.byte	0xb5
	.uaword	0x8b9
	.uleb128 0x4
	.string	"_Ifx_I2C_ERRIRQSS_Bits"
	.byte	0x4
	.byte	0x3
	.byte	0xb8
	.uaword	0x9c0
	.uleb128 0x6
	.uaword	.LASF6
	.byte	0x3
	.byte	0xba
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF7
	.byte	0x3
	.byte	0xbb
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF8
	.byte	0x3
	.byte	0xbc
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF9
	.byte	0x3
	.byte	0xbd
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF10
	.byte	0x3
	.byte	0xbe
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x2
	.string	"Ifx_I2C_ERRIRQSS_Bits"
	.byte	0x3
	.byte	0xbf
	.uaword	0x94b
	.uleb128 0x4
	.string	"_Ifx_I2C_FDIVCFG_Bits"
	.byte	0x4
	.byte	0x3
	.byte	0xc2
	.uaword	0xa40
	.uleb128 0x5
	.string	"DEC"
	.byte	0x3
	.byte	0xc4
	.uaword	0x1f9
	.byte	0x4
	.byte	0xb
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF11
	.byte	0x3
	.byte	0xc5
	.uaword	0x1f9
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"INC"
	.byte	0x3
	.byte	0xc6
	.uaword	0x1f9
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF5
	.byte	0x3
	.byte	0xc7
	.uaword	0x1f9
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x2
	.string	"Ifx_I2C_FDIVCFG_Bits"
	.byte	0x3
	.byte	0xc8
	.uaword	0x9dd
	.uleb128 0x4
	.string	"_Ifx_I2C_FDIVHIGHCFG_Bits"
	.byte	0x4
	.byte	0x3
	.byte	0xcb
	.uaword	0xad4
	.uleb128 0x5
	.string	"DEC"
	.byte	0x3
	.byte	0xcd
	.uaword	0x1f9
	.byte	0x4
	.byte	0xb
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF11
	.byte	0x3
	.byte	0xce
	.uaword	0x1f9
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"INC"
	.byte	0x3
	.byte	0xcf
	.uaword	0x1f9
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF5
	.byte	0x3
	.byte	0xd0
	.uaword	0x1f9
	.byte	0x4
	.byte	0x7
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF12
	.byte	0x3
	.byte	0xd1
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x2
	.string	"Ifx_I2C_FDIVHIGHCFG_Bits"
	.byte	0x3
	.byte	0xd2
	.uaword	0xa5c
	.uleb128 0x4
	.string	"_Ifx_I2C_FFSSTAT_Bits"
	.byte	0x4
	.byte	0x3
	.byte	0xd5
	.uaword	0xb35
	.uleb128 0x5
	.string	"FFS"
	.byte	0x3
	.byte	0xd7
	.uaword	0x1f9
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF3
	.byte	0x3
	.byte	0xd8
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1a
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x2
	.string	"Ifx_I2C_FFSSTAT_Bits"
	.byte	0x3
	.byte	0xd9
	.uaword	0xaf4
	.uleb128 0x4
	.string	"_Ifx_I2C_FIFOCFG_Bits"
	.byte	0x4
	.byte	0x3
	.byte	0xdc
	.uaword	0xc4b
	.uleb128 0x5
	.string	"RXBS"
	.byte	0x3
	.byte	0xde
	.uaword	0x1f9
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF2
	.byte	0x3
	.byte	0xdf
	.uaword	0x1f9
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"TXBS"
	.byte	0x3
	.byte	0xe0
	.uaword	0x1f9
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF3
	.byte	0x3
	.byte	0xe1
	.uaword	0x1f9
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"RXFA"
	.byte	0x3
	.byte	0xe2
	.uaword	0x1f9
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF0
	.byte	0x3
	.byte	0xe3
	.uaword	0x1f9
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"TXFA"
	.byte	0x3
	.byte	0xe4
	.uaword	0x1f9
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF13
	.byte	0x3
	.byte	0xe5
	.uaword	0x1f9
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"RXFC"
	.byte	0x3
	.byte	0xe6
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"TXFC"
	.byte	0x3
	.byte	0xe7
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"CRBC"
	.byte	0x3
	.byte	0xe8
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"reserved_19"
	.byte	0x3
	.byte	0xe9
	.uaword	0x1f9
	.byte	0x4
	.byte	0xd
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x2
	.string	"Ifx_I2C_FIFOCFG_Bits"
	.byte	0x3
	.byte	0xea
	.uaword	0xb51
	.uleb128 0x4
	.string	"_Ifx_I2C_GPCTL_Bits"
	.byte	0x4
	.byte	0x3
	.byte	0xed
	.uaword	0xca8
	.uleb128 0x5
	.string	"PISEL"
	.byte	0x3
	.byte	0xef
	.uaword	0x1f9
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF1
	.byte	0x3
	.byte	0xf0
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1d
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x2
	.string	"Ifx_I2C_GPCTL_Bits"
	.byte	0x3
	.byte	0xf1
	.uaword	0xc67
	.uleb128 0x4
	.string	"_Ifx_I2C_ICR_Bits"
	.byte	0x4
	.byte	0x3
	.byte	0xf4
	.uaword	0xd32
	.uleb128 0x6
	.uaword	.LASF14
	.byte	0x3
	.byte	0xf6
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF15
	.byte	0x3
	.byte	0xf7
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF16
	.byte	0x3
	.byte	0xf8
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF17
	.byte	0x3
	.byte	0xf9
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF10
	.byte	0x3
	.byte	0xfa
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x2
	.string	"Ifx_I2C_ICR_Bits"
	.byte	0x3
	.byte	0xfb
	.uaword	0xcc2
	.uleb128 0x4
	.string	"_Ifx_I2C_ID_Bits"
	.byte	0x4
	.byte	0x3
	.byte	0xfe
	.uaword	0xd9e
	.uleb128 0x7
	.string	"MOD_REV"
	.byte	0x3
	.uahalf	0x100
	.uaword	0x1f9
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF18
	.byte	0x3
	.uahalf	0x101
	.uaword	0x1f9
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF4
	.byte	0x3
	.uahalf	0x102
	.uaword	0x1f9
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_I2C_ID_Bits"
	.byte	0x3
	.uahalf	0x103
	.uaword	0xd4a
	.uleb128 0xa
	.string	"_Ifx_I2C_IMSC_Bits"
	.byte	0x4
	.byte	0x3
	.uahalf	0x106
	.uaword	0xe51
	.uleb128 0x8
	.uaword	.LASF14
	.byte	0x3
	.uahalf	0x108
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF15
	.byte	0x3
	.uahalf	0x109
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF16
	.byte	0x3
	.uahalf	0x10a
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF17
	.byte	0x3
	.uahalf	0x10b
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF19
	.byte	0x3
	.uahalf	0x10c
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF20
	.byte	0x3
	.uahalf	0x10d
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF3
	.byte	0x3
	.uahalf	0x10e
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1a
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_I2C_IMSC_Bits"
	.byte	0x3
	.uahalf	0x10f
	.uaword	0xdb6
	.uleb128 0xa
	.string	"_Ifx_I2C_ISR_Bits"
	.byte	0x4
	.byte	0x3
	.uahalf	0x112
	.uaword	0xf05
	.uleb128 0x8
	.uaword	.LASF14
	.byte	0x3
	.uahalf	0x114
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF15
	.byte	0x3
	.uahalf	0x115
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF16
	.byte	0x3
	.uahalf	0x116
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF17
	.byte	0x3
	.uahalf	0x117
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF19
	.byte	0x3
	.uahalf	0x118
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF20
	.byte	0x3
	.uahalf	0x119
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF3
	.byte	0x3
	.uahalf	0x11a
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1a
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_I2C_ISR_Bits"
	.byte	0x3
	.uahalf	0x11b
	.uaword	0xe6b
	.uleb128 0xa
	.string	"_Ifx_I2C_KRST0_Bits"
	.byte	0x4
	.byte	0x3
	.uahalf	0x11e
	.uaword	0xf76
	.uleb128 0x7
	.string	"RST"
	.byte	0x3
	.uahalf	0x120
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"RSTSTAT"
	.byte	0x3
	.uahalf	0x121
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF2
	.byte	0x3
	.uahalf	0x122
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_I2C_KRST0_Bits"
	.byte	0x3
	.uahalf	0x123
	.uaword	0xf1e
	.uleb128 0xa
	.string	"_Ifx_I2C_KRST1_Bits"
	.byte	0x4
	.byte	0x3
	.uahalf	0x126
	.uaword	0xfd3
	.uleb128 0x7
	.string	"RST"
	.byte	0x3
	.uahalf	0x128
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF21
	.byte	0x3
	.uahalf	0x129
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_I2C_KRST1_Bits"
	.byte	0x3
	.uahalf	0x12a
	.uaword	0xf91
	.uleb128 0xa
	.string	"_Ifx_I2C_KRSTCLR_Bits"
	.byte	0x4
	.byte	0x3
	.uahalf	0x12d
	.uaword	0x1032
	.uleb128 0x7
	.string	"CLR"
	.byte	0x3
	.uahalf	0x12f
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF21
	.byte	0x3
	.uahalf	0x130
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_I2C_KRSTCLR_Bits"
	.byte	0x3
	.uahalf	0x131
	.uaword	0xfee
	.uleb128 0xa
	.string	"_Ifx_I2C_MIS_Bits"
	.byte	0x4
	.byte	0x3
	.uahalf	0x134
	.uaword	0x10e9
	.uleb128 0x8
	.uaword	.LASF14
	.byte	0x3
	.uahalf	0x136
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF15
	.byte	0x3
	.uahalf	0x137
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF16
	.byte	0x3
	.uahalf	0x138
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF17
	.byte	0x3
	.uahalf	0x139
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF19
	.byte	0x3
	.uahalf	0x13a
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF20
	.byte	0x3
	.uahalf	0x13b
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF3
	.byte	0x3
	.uahalf	0x13c
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1a
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_I2C_MIS_Bits"
	.byte	0x3
	.uahalf	0x13d
	.uaword	0x104f
	.uleb128 0xa
	.string	"_Ifx_I2C_MODID_Bits"
	.byte	0x4
	.byte	0x3
	.uahalf	0x140
	.uaword	0x115f
	.uleb128 0x7
	.string	"MOD_REV"
	.byte	0x3
	.uahalf	0x142
	.uaword	0x1f9
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"MOD_TYPE"
	.byte	0x3
	.uahalf	0x143
	.uaword	0x1f9
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF18
	.byte	0x3
	.uahalf	0x144
	.uaword	0x1f9
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_I2C_MODID_Bits"
	.byte	0x3
	.uahalf	0x145
	.uaword	0x1102
	.uleb128 0xa
	.string	"_Ifx_I2C_MRPSCTRL_Bits"
	.byte	0x4
	.byte	0x3
	.uahalf	0x148
	.uaword	0x11c0
	.uleb128 0x7
	.string	"MRPS"
	.byte	0x3
	.uahalf	0x14a
	.uaword	0x1f9
	.byte	0x4
	.byte	0xe
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF13
	.byte	0x3
	.uahalf	0x14b
	.uaword	0x1f9
	.byte	0x4
	.byte	0x12
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_I2C_MRPSCTRL_Bits"
	.byte	0x3
	.uahalf	0x14c
	.uaword	0x117a
	.uleb128 0xa
	.string	"_Ifx_I2C_PIRQSC_Bits"
	.byte	0x4
	.byte	0x3
	.uahalf	0x14f
	.uaword	0x1289
	.uleb128 0x7
	.string	"AM"
	.byte	0x3
	.uahalf	0x151
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"GC"
	.byte	0x3
	.uahalf	0x152
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"MC"
	.byte	0x3
	.uahalf	0x153
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"AL"
	.byte	0x3
	.uahalf	0x154
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"NACK"
	.byte	0x3
	.uahalf	0x155
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF22
	.byte	0x3
	.uahalf	0x156
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"RX"
	.byte	0x3
	.uahalf	0x157
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF23
	.byte	0x3
	.uahalf	0x158
	.uaword	0x1f9
	.byte	0x4
	.byte	0x19
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_I2C_PIRQSC_Bits"
	.byte	0x3
	.uahalf	0x159
	.uaword	0x11de
	.uleb128 0xa
	.string	"_Ifx_I2C_PIRQSM_Bits"
	.byte	0x4
	.byte	0x3
	.uahalf	0x15c
	.uaword	0x1350
	.uleb128 0x7
	.string	"AM"
	.byte	0x3
	.uahalf	0x15e
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"GC"
	.byte	0x3
	.uahalf	0x15f
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"MC"
	.byte	0x3
	.uahalf	0x160
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"AL"
	.byte	0x3
	.uahalf	0x161
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"NACK"
	.byte	0x3
	.uahalf	0x162
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF22
	.byte	0x3
	.uahalf	0x163
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"RX"
	.byte	0x3
	.uahalf	0x164
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF23
	.byte	0x3
	.uahalf	0x165
	.uaword	0x1f9
	.byte	0x4
	.byte	0x19
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_I2C_PIRQSM_Bits"
	.byte	0x3
	.uahalf	0x166
	.uaword	0x12a5
	.uleb128 0xa
	.string	"_Ifx_I2C_PIRQSS_Bits"
	.byte	0x4
	.byte	0x3
	.uahalf	0x169
	.uaword	0x1417
	.uleb128 0x7
	.string	"AM"
	.byte	0x3
	.uahalf	0x16b
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"GC"
	.byte	0x3
	.uahalf	0x16c
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"MC"
	.byte	0x3
	.uahalf	0x16d
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"AL"
	.byte	0x3
	.uahalf	0x16e
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"NACK"
	.byte	0x3
	.uahalf	0x16f
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF22
	.byte	0x3
	.uahalf	0x170
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"RX"
	.byte	0x3
	.uahalf	0x171
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF23
	.byte	0x3
	.uahalf	0x172
	.uaword	0x1f9
	.byte	0x4
	.byte	0x19
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_I2C_PIRQSS_Bits"
	.byte	0x3
	.uahalf	0x173
	.uaword	0x136c
	.uleb128 0xa
	.string	"_Ifx_I2C_RIS_Bits"
	.byte	0x4
	.byte	0x3
	.uahalf	0x176
	.uaword	0x14cd
	.uleb128 0x8
	.uaword	.LASF14
	.byte	0x3
	.uahalf	0x178
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF15
	.byte	0x3
	.uahalf	0x179
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF16
	.byte	0x3
	.uahalf	0x17a
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF17
	.byte	0x3
	.uahalf	0x17b
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF19
	.byte	0x3
	.uahalf	0x17c
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF20
	.byte	0x3
	.uahalf	0x17d
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF3
	.byte	0x3
	.uahalf	0x17e
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1a
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_I2C_RIS_Bits"
	.byte	0x3
	.uahalf	0x17f
	.uaword	0x1433
	.uleb128 0xa
	.string	"_Ifx_I2C_RPSSTAT_Bits"
	.byte	0x4
	.byte	0x3
	.uahalf	0x182
	.uaword	0x152a
	.uleb128 0x7
	.string	"RPS"
	.byte	0x3
	.uahalf	0x184
	.uaword	0x1f9
	.byte	0x4
	.byte	0xe
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF13
	.byte	0x3
	.uahalf	0x185
	.uaword	0x1f9
	.byte	0x4
	.byte	0x12
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_I2C_RPSSTAT_Bits"
	.byte	0x3
	.uahalf	0x186
	.uaword	0x14e6
	.uleb128 0xa
	.string	"_Ifx_I2C_RUNCTRL_Bits"
	.byte	0x4
	.byte	0x3
	.uahalf	0x189
	.uaword	0x158b
	.uleb128 0x7
	.string	"RUN"
	.byte	0x3
	.uahalf	0x18b
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF21
	.byte	0x3
	.uahalf	0x18c
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_I2C_RUNCTRL_Bits"
	.byte	0x3
	.uahalf	0x18d
	.uaword	0x1547
	.uleb128 0xa
	.string	"_Ifx_I2C_RXD_Bits"
	.byte	0x4
	.byte	0x3
	.uahalf	0x190
	.uaword	0x15d6
	.uleb128 0x7
	.string	"RXD"
	.byte	0x3
	.uahalf	0x192
	.uaword	0x1f9
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_I2C_RXD_Bits"
	.byte	0x3
	.uahalf	0x193
	.uaword	0x15a8
	.uleb128 0xa
	.string	"_Ifx_I2C_TIMCFG_Bits"
	.byte	0x4
	.byte	0x3
	.uahalf	0x196
	.uaword	0x16fd
	.uleb128 0x7
	.string	"SDA_DEL_HD_DAT"
	.byte	0x3
	.uahalf	0x198
	.uaword	0x1f9
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"HS_SDA_DEL_HD_DAT"
	.byte	0x3
	.uahalf	0x199
	.uaword	0x1f9
	.byte	0x4
	.byte	0x3
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"SCL_DEL_HD_STA"
	.byte	0x3
	.uahalf	0x19a
	.uaword	0x1f9
	.byte	0x4
	.byte	0x3
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"reserved_12"
	.byte	0x3
	.uahalf	0x19b
	.uaword	0x1f9
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN_SCL_LOW_LEN"
	.byte	0x3
	.uahalf	0x19c
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"FS_SCL_LOW"
	.byte	0x3
	.uahalf	0x19d
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"HS_SDA_DEL"
	.byte	0x3
	.uahalf	0x19e
	.uaword	0x1f9
	.byte	0x4
	.byte	0x5
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF24
	.byte	0x3
	.uahalf	0x19f
	.uaword	0x1f9
	.byte	0x4
	.byte	0x3
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"SCL_LOW_LEN"
	.byte	0x3
	.uahalf	0x1a0
	.uaword	0x1f9
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_I2C_TIMCFG_Bits"
	.byte	0x3
	.uahalf	0x1a1
	.uaword	0x15ef
	.uleb128 0xa
	.string	"_Ifx_I2C_TPSCTRL_Bits"
	.byte	0x4
	.byte	0x3
	.uahalf	0x1a4
	.uaword	0x175d
	.uleb128 0x7
	.string	"TPS"
	.byte	0x3
	.uahalf	0x1a6
	.uaword	0x1f9
	.byte	0x4
	.byte	0xe
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF13
	.byte	0x3
	.uahalf	0x1a7
	.uaword	0x1f9
	.byte	0x4
	.byte	0x12
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_I2C_TPSCTRL_Bits"
	.byte	0x3
	.uahalf	0x1a8
	.uaword	0x1719
	.uleb128 0xa
	.string	"_Ifx_I2C_TXD_Bits"
	.byte	0x4
	.byte	0x3
	.uahalf	0x1ab
	.uaword	0x17a8
	.uleb128 0x7
	.string	"TXD"
	.byte	0x3
	.uahalf	0x1ad
	.uaword	0x1f9
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_I2C_TXD_Bits"
	.byte	0x3
	.uahalf	0x1ae
	.uaword	0x177a
	.uleb128 0xb
	.byte	0x4
	.byte	0x3
	.uahalf	0x1b6
	.uaword	0x17e9
	.uleb128 0xc
	.string	"U"
	.byte	0x3
	.uahalf	0x1b8
	.uaword	0x1f9
	.uleb128 0xc
	.string	"I"
	.byte	0x3
	.uahalf	0x1b9
	.uaword	0x23b
	.uleb128 0xc
	.string	"B"
	.byte	0x3
	.uahalf	0x1ba
	.uaword	0x4ac
	.byte	0
	.uleb128 0x9
	.string	"Ifx_I2C_ACCEN0"
	.byte	0x3
	.uahalf	0x1bb
	.uaword	0x17c1
	.uleb128 0xb
	.byte	0x4
	.byte	0x3
	.uahalf	0x1be
	.uaword	0x1828
	.uleb128 0xc
	.string	"U"
	.byte	0x3
	.uahalf	0x1c0
	.uaword	0x1f9
	.uleb128 0xc
	.string	"I"
	.byte	0x3
	.uahalf	0x1c1
	.uaword	0x23b
	.uleb128 0xc
	.string	"B"
	.byte	0x3
	.uahalf	0x1c2
	.uaword	0x4fd
	.byte	0
	.uleb128 0x9
	.string	"Ifx_I2C_ACCEN1"
	.byte	0x3
	.uahalf	0x1c3
	.uaword	0x1800
	.uleb128 0xb
	.byte	0x4
	.byte	0x3
	.uahalf	0x1c6
	.uaword	0x1867
	.uleb128 0xc
	.string	"U"
	.byte	0x3
	.uahalf	0x1c8
	.uaword	0x1f9
	.uleb128 0xc
	.string	"I"
	.byte	0x3
	.uahalf	0x1c9
	.uaword	0x23b
	.uleb128 0xc
	.string	"B"
	.byte	0x3
	.uahalf	0x1ca
	.uaword	0x5db
	.byte	0
	.uleb128 0x9
	.string	"Ifx_I2C_ADDRCFG"
	.byte	0x3
	.uahalf	0x1cb
	.uaword	0x183f
	.uleb128 0xb
	.byte	0x4
	.byte	0x3
	.uahalf	0x1ce
	.uaword	0x18a7
	.uleb128 0xc
	.string	"U"
	.byte	0x3
	.uahalf	0x1d0
	.uaword	0x1f9
	.uleb128 0xc
	.string	"I"
	.byte	0x3
	.uahalf	0x1d1
	.uaword	0x23b
	.uleb128 0xc
	.string	"B"
	.byte	0x3
	.uahalf	0x1d2
	.uaword	0x648
	.byte	0
	.uleb128 0x9
	.string	"Ifx_I2C_BUSSTAT"
	.byte	0x3
	.uahalf	0x1d3
	.uaword	0x187f
	.uleb128 0xb
	.byte	0x4
	.byte	0x3
	.uahalf	0x1d6
	.uaword	0x18e7
	.uleb128 0xc
	.string	"U"
	.byte	0x3
	.uahalf	0x1d8
	.uaword	0x1f9
	.uleb128 0xc
	.string	"I"
	.byte	0x3
	.uahalf	0x1d9
	.uaword	0x23b
	.uleb128 0xc
	.string	"B"
	.byte	0x3
	.uahalf	0x1da
	.uaword	0x6b4
	.byte	0
	.uleb128 0x9
	.string	"Ifx_I2C_CLC"
	.byte	0x3
	.uahalf	0x1db
	.uaword	0x18bf
	.uleb128 0xb
	.byte	0x4
	.byte	0x3
	.uahalf	0x1de
	.uaword	0x1923
	.uleb128 0xc
	.string	"U"
	.byte	0x3
	.uahalf	0x1e0
	.uaword	0x1f9
	.uleb128 0xc
	.string	"I"
	.byte	0x3
	.uahalf	0x1e1
	.uaword	0x23b
	.uleb128 0xc
	.string	"B"
	.byte	0x3
	.uahalf	0x1e2
	.uaword	0x798
	.byte	0
	.uleb128 0x9
	.string	"Ifx_I2C_CLC1"
	.byte	0x3
	.uahalf	0x1e3
	.uaword	0x18fb
	.uleb128 0xb
	.byte	0x4
	.byte	0x3
	.uahalf	0x1e6
	.uaword	0x1960
	.uleb128 0xc
	.string	"U"
	.byte	0x3
	.uahalf	0x1e8
	.uaword	0x1f9
	.uleb128 0xc
	.string	"I"
	.byte	0x3
	.uahalf	0x1e9
	.uaword	0x23b
	.uleb128 0xc
	.string	"B"
	.byte	0x3
	.uahalf	0x1ea
	.uaword	0x80a
	.byte	0
	.uleb128 0x9
	.string	"Ifx_I2C_ENDDCTRL"
	.byte	0x3
	.uahalf	0x1eb
	.uaword	0x1938
	.uleb128 0xb
	.byte	0x4
	.byte	0x3
	.uahalf	0x1ee
	.uaword	0x19a1
	.uleb128 0xc
	.string	"U"
	.byte	0x3
	.uahalf	0x1f0
	.uaword	0x1f9
	.uleb128 0xc
	.string	"I"
	.byte	0x3
	.uahalf	0x1f1
	.uaword	0x23b
	.uleb128 0xc
	.string	"B"
	.byte	0x3
	.uahalf	0x1f2
	.uaword	0x89c
	.byte	0
	.uleb128 0x9
	.string	"Ifx_I2C_ERRIRQSC"
	.byte	0x3
	.uahalf	0x1f3
	.uaword	0x1979
	.uleb128 0xb
	.byte	0x4
	.byte	0x3
	.uahalf	0x1f6
	.uaword	0x19e2
	.uleb128 0xc
	.string	"U"
	.byte	0x3
	.uahalf	0x1f8
	.uaword	0x1f9
	.uleb128 0xc
	.string	"I"
	.byte	0x3
	.uahalf	0x1f9
	.uaword	0x23b
	.uleb128 0xc
	.string	"B"
	.byte	0x3
	.uahalf	0x1fa
	.uaword	0x92e
	.byte	0
	.uleb128 0x9
	.string	"Ifx_I2C_ERRIRQSM"
	.byte	0x3
	.uahalf	0x1fb
	.uaword	0x19ba
	.uleb128 0xb
	.byte	0x4
	.byte	0x3
	.uahalf	0x1fe
	.uaword	0x1a23
	.uleb128 0xc
	.string	"U"
	.byte	0x3
	.uahalf	0x200
	.uaword	0x1f9
	.uleb128 0xc
	.string	"I"
	.byte	0x3
	.uahalf	0x201
	.uaword	0x23b
	.uleb128 0xc
	.string	"B"
	.byte	0x3
	.uahalf	0x202
	.uaword	0x9c0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_I2C_ERRIRQSS"
	.byte	0x3
	.uahalf	0x203
	.uaword	0x19fb
	.uleb128 0xb
	.byte	0x4
	.byte	0x3
	.uahalf	0x206
	.uaword	0x1a64
	.uleb128 0xc
	.string	"U"
	.byte	0x3
	.uahalf	0x208
	.uaword	0x1f9
	.uleb128 0xc
	.string	"I"
	.byte	0x3
	.uahalf	0x209
	.uaword	0x23b
	.uleb128 0xc
	.string	"B"
	.byte	0x3
	.uahalf	0x20a
	.uaword	0xa40
	.byte	0
	.uleb128 0x9
	.string	"Ifx_I2C_FDIVCFG"
	.byte	0x3
	.uahalf	0x20b
	.uaword	0x1a3c
	.uleb128 0xb
	.byte	0x4
	.byte	0x3
	.uahalf	0x20e
	.uaword	0x1aa4
	.uleb128 0xc
	.string	"U"
	.byte	0x3
	.uahalf	0x210
	.uaword	0x1f9
	.uleb128 0xc
	.string	"I"
	.byte	0x3
	.uahalf	0x211
	.uaword	0x23b
	.uleb128 0xc
	.string	"B"
	.byte	0x3
	.uahalf	0x212
	.uaword	0xad4
	.byte	0
	.uleb128 0x9
	.string	"Ifx_I2C_FDIVHIGHCFG"
	.byte	0x3
	.uahalf	0x213
	.uaword	0x1a7c
	.uleb128 0xb
	.byte	0x4
	.byte	0x3
	.uahalf	0x216
	.uaword	0x1ae8
	.uleb128 0xc
	.string	"U"
	.byte	0x3
	.uahalf	0x218
	.uaword	0x1f9
	.uleb128 0xc
	.string	"I"
	.byte	0x3
	.uahalf	0x219
	.uaword	0x23b
	.uleb128 0xc
	.string	"B"
	.byte	0x3
	.uahalf	0x21a
	.uaword	0xb35
	.byte	0
	.uleb128 0x9
	.string	"Ifx_I2C_FFSSTAT"
	.byte	0x3
	.uahalf	0x21b
	.uaword	0x1ac0
	.uleb128 0xb
	.byte	0x4
	.byte	0x3
	.uahalf	0x21e
	.uaword	0x1b28
	.uleb128 0xc
	.string	"U"
	.byte	0x3
	.uahalf	0x220
	.uaword	0x1f9
	.uleb128 0xc
	.string	"I"
	.byte	0x3
	.uahalf	0x221
	.uaword	0x23b
	.uleb128 0xc
	.string	"B"
	.byte	0x3
	.uahalf	0x222
	.uaword	0xc4b
	.byte	0
	.uleb128 0x9
	.string	"Ifx_I2C_FIFOCFG"
	.byte	0x3
	.uahalf	0x223
	.uaword	0x1b00
	.uleb128 0xb
	.byte	0x4
	.byte	0x3
	.uahalf	0x226
	.uaword	0x1b68
	.uleb128 0xc
	.string	"U"
	.byte	0x3
	.uahalf	0x228
	.uaword	0x1f9
	.uleb128 0xc
	.string	"I"
	.byte	0x3
	.uahalf	0x229
	.uaword	0x23b
	.uleb128 0xc
	.string	"B"
	.byte	0x3
	.uahalf	0x22a
	.uaword	0xca8
	.byte	0
	.uleb128 0x9
	.string	"Ifx_I2C_GPCTL"
	.byte	0x3
	.uahalf	0x22b
	.uaword	0x1b40
	.uleb128 0xb
	.byte	0x4
	.byte	0x3
	.uahalf	0x22e
	.uaword	0x1ba6
	.uleb128 0xc
	.string	"U"
	.byte	0x3
	.uahalf	0x230
	.uaword	0x1f9
	.uleb128 0xc
	.string	"I"
	.byte	0x3
	.uahalf	0x231
	.uaword	0x23b
	.uleb128 0xc
	.string	"B"
	.byte	0x3
	.uahalf	0x232
	.uaword	0xd32
	.byte	0
	.uleb128 0x9
	.string	"Ifx_I2C_ICR"
	.byte	0x3
	.uahalf	0x233
	.uaword	0x1b7e
	.uleb128 0xb
	.byte	0x4
	.byte	0x3
	.uahalf	0x236
	.uaword	0x1be2
	.uleb128 0xc
	.string	"U"
	.byte	0x3
	.uahalf	0x238
	.uaword	0x1f9
	.uleb128 0xc
	.string	"I"
	.byte	0x3
	.uahalf	0x239
	.uaword	0x23b
	.uleb128 0xc
	.string	"B"
	.byte	0x3
	.uahalf	0x23a
	.uaword	0xd9e
	.byte	0
	.uleb128 0x9
	.string	"Ifx_I2C_ID"
	.byte	0x3
	.uahalf	0x23b
	.uaword	0x1bba
	.uleb128 0xb
	.byte	0x4
	.byte	0x3
	.uahalf	0x23e
	.uaword	0x1c1d
	.uleb128 0xc
	.string	"U"
	.byte	0x3
	.uahalf	0x240
	.uaword	0x1f9
	.uleb128 0xc
	.string	"I"
	.byte	0x3
	.uahalf	0x241
	.uaword	0x23b
	.uleb128 0xc
	.string	"B"
	.byte	0x3
	.uahalf	0x242
	.uaword	0xe51
	.byte	0
	.uleb128 0x9
	.string	"Ifx_I2C_IMSC"
	.byte	0x3
	.uahalf	0x243
	.uaword	0x1bf5
	.uleb128 0xb
	.byte	0x4
	.byte	0x3
	.uahalf	0x246
	.uaword	0x1c5a
	.uleb128 0xc
	.string	"U"
	.byte	0x3
	.uahalf	0x248
	.uaword	0x1f9
	.uleb128 0xc
	.string	"I"
	.byte	0x3
	.uahalf	0x249
	.uaword	0x23b
	.uleb128 0xc
	.string	"B"
	.byte	0x3
	.uahalf	0x24a
	.uaword	0xf05
	.byte	0
	.uleb128 0x9
	.string	"Ifx_I2C_ISR"
	.byte	0x3
	.uahalf	0x24b
	.uaword	0x1c32
	.uleb128 0xb
	.byte	0x4
	.byte	0x3
	.uahalf	0x24e
	.uaword	0x1c96
	.uleb128 0xc
	.string	"U"
	.byte	0x3
	.uahalf	0x250
	.uaword	0x1f9
	.uleb128 0xc
	.string	"I"
	.byte	0x3
	.uahalf	0x251
	.uaword	0x23b
	.uleb128 0xc
	.string	"B"
	.byte	0x3
	.uahalf	0x252
	.uaword	0xf76
	.byte	0
	.uleb128 0x9
	.string	"Ifx_I2C_KRST0"
	.byte	0x3
	.uahalf	0x253
	.uaword	0x1c6e
	.uleb128 0xb
	.byte	0x4
	.byte	0x3
	.uahalf	0x256
	.uaword	0x1cd4
	.uleb128 0xc
	.string	"U"
	.byte	0x3
	.uahalf	0x258
	.uaword	0x1f9
	.uleb128 0xc
	.string	"I"
	.byte	0x3
	.uahalf	0x259
	.uaword	0x23b
	.uleb128 0xc
	.string	"B"
	.byte	0x3
	.uahalf	0x25a
	.uaword	0xfd3
	.byte	0
	.uleb128 0x9
	.string	"Ifx_I2C_KRST1"
	.byte	0x3
	.uahalf	0x25b
	.uaword	0x1cac
	.uleb128 0xb
	.byte	0x4
	.byte	0x3
	.uahalf	0x25e
	.uaword	0x1d12
	.uleb128 0xc
	.string	"U"
	.byte	0x3
	.uahalf	0x260
	.uaword	0x1f9
	.uleb128 0xc
	.string	"I"
	.byte	0x3
	.uahalf	0x261
	.uaword	0x23b
	.uleb128 0xc
	.string	"B"
	.byte	0x3
	.uahalf	0x262
	.uaword	0x1032
	.byte	0
	.uleb128 0x9
	.string	"Ifx_I2C_KRSTCLR"
	.byte	0x3
	.uahalf	0x263
	.uaword	0x1cea
	.uleb128 0xb
	.byte	0x4
	.byte	0x3
	.uahalf	0x266
	.uaword	0x1d52
	.uleb128 0xc
	.string	"U"
	.byte	0x3
	.uahalf	0x268
	.uaword	0x1f9
	.uleb128 0xc
	.string	"I"
	.byte	0x3
	.uahalf	0x269
	.uaword	0x23b
	.uleb128 0xc
	.string	"B"
	.byte	0x3
	.uahalf	0x26a
	.uaword	0x10e9
	.byte	0
	.uleb128 0x9
	.string	"Ifx_I2C_MIS"
	.byte	0x3
	.uahalf	0x26b
	.uaword	0x1d2a
	.uleb128 0xb
	.byte	0x4
	.byte	0x3
	.uahalf	0x26e
	.uaword	0x1d8e
	.uleb128 0xc
	.string	"U"
	.byte	0x3
	.uahalf	0x270
	.uaword	0x1f9
	.uleb128 0xc
	.string	"I"
	.byte	0x3
	.uahalf	0x271
	.uaword	0x23b
	.uleb128 0xc
	.string	"B"
	.byte	0x3
	.uahalf	0x272
	.uaword	0x115f
	.byte	0
	.uleb128 0x9
	.string	"Ifx_I2C_MODID"
	.byte	0x3
	.uahalf	0x273
	.uaword	0x1d66
	.uleb128 0xb
	.byte	0x4
	.byte	0x3
	.uahalf	0x276
	.uaword	0x1dcc
	.uleb128 0xc
	.string	"U"
	.byte	0x3
	.uahalf	0x278
	.uaword	0x1f9
	.uleb128 0xc
	.string	"I"
	.byte	0x3
	.uahalf	0x279
	.uaword	0x23b
	.uleb128 0xc
	.string	"B"
	.byte	0x3
	.uahalf	0x27a
	.uaword	0x11c0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_I2C_MRPSCTRL"
	.byte	0x3
	.uahalf	0x27b
	.uaword	0x1da4
	.uleb128 0xb
	.byte	0x4
	.byte	0x3
	.uahalf	0x27e
	.uaword	0x1e0d
	.uleb128 0xc
	.string	"U"
	.byte	0x3
	.uahalf	0x280
	.uaword	0x1f9
	.uleb128 0xc
	.string	"I"
	.byte	0x3
	.uahalf	0x281
	.uaword	0x23b
	.uleb128 0xc
	.string	"B"
	.byte	0x3
	.uahalf	0x282
	.uaword	0x1289
	.byte	0
	.uleb128 0x9
	.string	"Ifx_I2C_PIRQSC"
	.byte	0x3
	.uahalf	0x283
	.uaword	0x1de5
	.uleb128 0xb
	.byte	0x4
	.byte	0x3
	.uahalf	0x286
	.uaword	0x1e4c
	.uleb128 0xc
	.string	"U"
	.byte	0x3
	.uahalf	0x288
	.uaword	0x1f9
	.uleb128 0xc
	.string	"I"
	.byte	0x3
	.uahalf	0x289
	.uaword	0x23b
	.uleb128 0xc
	.string	"B"
	.byte	0x3
	.uahalf	0x28a
	.uaword	0x1350
	.byte	0
	.uleb128 0x9
	.string	"Ifx_I2C_PIRQSM"
	.byte	0x3
	.uahalf	0x28b
	.uaword	0x1e24
	.uleb128 0xb
	.byte	0x4
	.byte	0x3
	.uahalf	0x28e
	.uaword	0x1e8b
	.uleb128 0xc
	.string	"U"
	.byte	0x3
	.uahalf	0x290
	.uaword	0x1f9
	.uleb128 0xc
	.string	"I"
	.byte	0x3
	.uahalf	0x291
	.uaword	0x23b
	.uleb128 0xc
	.string	"B"
	.byte	0x3
	.uahalf	0x292
	.uaword	0x1417
	.byte	0
	.uleb128 0x9
	.string	"Ifx_I2C_PIRQSS"
	.byte	0x3
	.uahalf	0x293
	.uaword	0x1e63
	.uleb128 0xb
	.byte	0x4
	.byte	0x3
	.uahalf	0x296
	.uaword	0x1eca
	.uleb128 0xc
	.string	"U"
	.byte	0x3
	.uahalf	0x298
	.uaword	0x1f9
	.uleb128 0xc
	.string	"I"
	.byte	0x3
	.uahalf	0x299
	.uaword	0x23b
	.uleb128 0xc
	.string	"B"
	.byte	0x3
	.uahalf	0x29a
	.uaword	0x14cd
	.byte	0
	.uleb128 0x9
	.string	"Ifx_I2C_RIS"
	.byte	0x3
	.uahalf	0x29b
	.uaword	0x1ea2
	.uleb128 0xb
	.byte	0x4
	.byte	0x3
	.uahalf	0x29e
	.uaword	0x1f06
	.uleb128 0xc
	.string	"U"
	.byte	0x3
	.uahalf	0x2a0
	.uaword	0x1f9
	.uleb128 0xc
	.string	"I"
	.byte	0x3
	.uahalf	0x2a1
	.uaword	0x23b
	.uleb128 0xc
	.string	"B"
	.byte	0x3
	.uahalf	0x2a2
	.uaword	0x152a
	.byte	0
	.uleb128 0x9
	.string	"Ifx_I2C_RPSSTAT"
	.byte	0x3
	.uahalf	0x2a3
	.uaword	0x1ede
	.uleb128 0xb
	.byte	0x4
	.byte	0x3
	.uahalf	0x2a6
	.uaword	0x1f46
	.uleb128 0xc
	.string	"U"
	.byte	0x3
	.uahalf	0x2a8
	.uaword	0x1f9
	.uleb128 0xc
	.string	"I"
	.byte	0x3
	.uahalf	0x2a9
	.uaword	0x23b
	.uleb128 0xc
	.string	"B"
	.byte	0x3
	.uahalf	0x2aa
	.uaword	0x158b
	.byte	0
	.uleb128 0x9
	.string	"Ifx_I2C_RUNCTRL"
	.byte	0x3
	.uahalf	0x2ab
	.uaword	0x1f1e
	.uleb128 0xb
	.byte	0x4
	.byte	0x3
	.uahalf	0x2ae
	.uaword	0x1f86
	.uleb128 0xc
	.string	"U"
	.byte	0x3
	.uahalf	0x2b0
	.uaword	0x1f9
	.uleb128 0xc
	.string	"I"
	.byte	0x3
	.uahalf	0x2b1
	.uaword	0x23b
	.uleb128 0xc
	.string	"B"
	.byte	0x3
	.uahalf	0x2b2
	.uaword	0x15d6
	.byte	0
	.uleb128 0x9
	.string	"Ifx_I2C_RXD"
	.byte	0x3
	.uahalf	0x2b3
	.uaword	0x1f5e
	.uleb128 0xb
	.byte	0x4
	.byte	0x3
	.uahalf	0x2b6
	.uaword	0x1fc2
	.uleb128 0xc
	.string	"U"
	.byte	0x3
	.uahalf	0x2b8
	.uaword	0x1f9
	.uleb128 0xc
	.string	"I"
	.byte	0x3
	.uahalf	0x2b9
	.uaword	0x23b
	.uleb128 0xc
	.string	"B"
	.byte	0x3
	.uahalf	0x2ba
	.uaword	0x16fd
	.byte	0
	.uleb128 0x9
	.string	"Ifx_I2C_TIMCFG"
	.byte	0x3
	.uahalf	0x2bb
	.uaword	0x1f9a
	.uleb128 0xb
	.byte	0x4
	.byte	0x3
	.uahalf	0x2be
	.uaword	0x2001
	.uleb128 0xc
	.string	"U"
	.byte	0x3
	.uahalf	0x2c0
	.uaword	0x1f9
	.uleb128 0xc
	.string	"I"
	.byte	0x3
	.uahalf	0x2c1
	.uaword	0x23b
	.uleb128 0xc
	.string	"B"
	.byte	0x3
	.uahalf	0x2c2
	.uaword	0x175d
	.byte	0
	.uleb128 0x9
	.string	"Ifx_I2C_TPSCTRL"
	.byte	0x3
	.uahalf	0x2c3
	.uaword	0x1fd9
	.uleb128 0xb
	.byte	0x4
	.byte	0x3
	.uahalf	0x2c6
	.uaword	0x2041
	.uleb128 0xc
	.string	"U"
	.byte	0x3
	.uahalf	0x2c8
	.uaword	0x1f9
	.uleb128 0xc
	.string	"I"
	.byte	0x3
	.uahalf	0x2c9
	.uaword	0x23b
	.uleb128 0xc
	.string	"B"
	.byte	0x3
	.uahalf	0x2ca
	.uaword	0x17a8
	.byte	0
	.uleb128 0x9
	.string	"Ifx_I2C_TXD"
	.byte	0x3
	.uahalf	0x2cb
	.uaword	0x2019
	.uleb128 0xd
	.string	"_Ifx_I2C"
	.uaword	0x10100
	.byte	0x3
	.uahalf	0x2d7
	.uaword	0x23dc
	.uleb128 0xe
	.string	"CLC1"
	.byte	0x3
	.uahalf	0x2d9
	.uaword	0x1923
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.uaword	.LASF10
	.byte	0x3
	.uahalf	0x2da
	.uaword	0x23dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"ID"
	.byte	0x3
	.uahalf	0x2db
	.uaword	0x1be2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"reserved_C"
	.byte	0x3
	.uahalf	0x2dc
	.uaword	0x23dc
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"RUNCTRL"
	.byte	0x3
	.uahalf	0x2dd
	.uaword	0x1f46
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"ENDDCTRL"
	.byte	0x3
	.uahalf	0x2de
	.uaword	0x1960
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"FDIVCFG"
	.byte	0x3
	.uahalf	0x2df
	.uaword	0x1a64
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"FDIVHIGHCFG"
	.byte	0x3
	.uahalf	0x2e0
	.uaword	0x1aa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"ADDRCFG"
	.byte	0x3
	.uahalf	0x2e1
	.uaword	0x1867
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.string	"BUSSTAT"
	.byte	0x3
	.uahalf	0x2e2
	.uaword	0x18a7
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xe
	.string	"FIFOCFG"
	.byte	0x3
	.uahalf	0x2e3
	.uaword	0x1b28
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xe
	.string	"MRPSCTRL"
	.byte	0x3
	.uahalf	0x2e4
	.uaword	0x1dcc
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xe
	.string	"RPSSTAT"
	.byte	0x3
	.uahalf	0x2e5
	.uaword	0x1f06
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"TPSCTRL"
	.byte	0x3
	.uahalf	0x2e6
	.uaword	0x2001
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xe
	.string	"FFSSTAT"
	.byte	0x3
	.uahalf	0x2e7
	.uaword	0x1ae8
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xe
	.string	"reserved_3C"
	.byte	0x3
	.uahalf	0x2e8
	.uaword	0x23dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xe
	.string	"TIMCFG"
	.byte	0x3
	.uahalf	0x2e9
	.uaword	0x1fc2
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xe
	.string	"reserved_44"
	.byte	0x3
	.uahalf	0x2ea
	.uaword	0x23f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xe
	.string	"ERRIRQSM"
	.byte	0x3
	.uahalf	0x2eb
	.uaword	0x19e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xe
	.string	"ERRIRQSS"
	.byte	0x3
	.uahalf	0x2ec
	.uaword	0x1a23
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xe
	.string	"ERRIRQSC"
	.byte	0x3
	.uahalf	0x2ed
	.uaword	0x19a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xe
	.string	"reserved_6C"
	.byte	0x3
	.uahalf	0x2ee
	.uaword	0x23dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xe
	.string	"PIRQSM"
	.byte	0x3
	.uahalf	0x2ef
	.uaword	0x1e4c
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xe
	.string	"PIRQSS"
	.byte	0x3
	.uahalf	0x2f0
	.uaword	0x1e8b
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xe
	.string	"PIRQSC"
	.byte	0x3
	.uahalf	0x2f1
	.uaword	0x1e0d
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xe
	.string	"reserved_7C"
	.byte	0x3
	.uahalf	0x2f2
	.uaword	0x23dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xe
	.string	"RIS"
	.byte	0x3
	.uahalf	0x2f3
	.uaword	0x1eca
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xe
	.string	"IMSC"
	.byte	0x3
	.uahalf	0x2f4
	.uaword	0x1c1d
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0xe
	.string	"MIS"
	.byte	0x3
	.uahalf	0x2f5
	.uaword	0x1d52
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xe
	.string	"ICR"
	.byte	0x3
	.uahalf	0x2f6
	.uaword	0x1ba6
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xe
	.string	"ISR"
	.byte	0x3
	.uahalf	0x2f7
	.uaword	0x1c5a
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xe
	.string	"reserved_94"
	.byte	0x3
	.uahalf	0x2f8
	.uaword	0x2408
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xe
	.string	"TXD"
	.byte	0x3
	.uahalf	0x2f9
	.uaword	0x2041
	.byte	0x4
	.byte	0x23
	.uleb128 0x8000
	.uleb128 0xe
	.string	"reserved_8004"
	.byte	0x3
	.uahalf	0x2fa
	.uaword	0x2419
	.byte	0x4
	.byte	0x23
	.uleb128 0x8004
	.uleb128 0xe
	.string	"RXD"
	.byte	0x3
	.uahalf	0x2fb
	.uaword	0x1f86
	.byte	0x4
	.byte	0x23
	.uleb128 0xc000
	.uleb128 0xe
	.string	"reserved_C004"
	.byte	0x3
	.uahalf	0x2fc
	.uaword	0x2419
	.byte	0x4
	.byte	0x23
	.uleb128 0xc004
	.uleb128 0xe
	.string	"CLC"
	.byte	0x3
	.uahalf	0x2fd
	.uaword	0x18e7
	.byte	0x4
	.byte	0x23
	.uleb128 0x10000
	.uleb128 0xe
	.string	"MODID"
	.byte	0x3
	.uahalf	0x2fe
	.uaword	0x1d8e
	.byte	0x4
	.byte	0x23
	.uleb128 0x10004
	.uleb128 0xe
	.string	"GPCTL"
	.byte	0x3
	.uahalf	0x2ff
	.uaword	0x1b68
	.byte	0x4
	.byte	0x23
	.uleb128 0x10008
	.uleb128 0xe
	.string	"ACCEN0"
	.byte	0x3
	.uahalf	0x300
	.uaword	0x17e9
	.byte	0x4
	.byte	0x23
	.uleb128 0x1000c
	.uleb128 0xe
	.string	"ACCEN1"
	.byte	0x3
	.uahalf	0x301
	.uaword	0x1828
	.byte	0x4
	.byte	0x23
	.uleb128 0x10010
	.uleb128 0xe
	.string	"KRST0"
	.byte	0x3
	.uahalf	0x302
	.uaword	0x1c96
	.byte	0x4
	.byte	0x23
	.uleb128 0x10014
	.uleb128 0xe
	.string	"KRST1"
	.byte	0x3
	.uahalf	0x303
	.uaword	0x1cd4
	.byte	0x4
	.byte	0x23
	.uleb128 0x10018
	.uleb128 0xe
	.string	"KRSTCLR"
	.byte	0x3
	.uahalf	0x304
	.uaword	0x1d12
	.byte	0x4
	.byte	0x23
	.uleb128 0x1001c
	.uleb128 0xe
	.string	"reserved_10020"
	.byte	0x3
	.uahalf	0x305
	.uaword	0x242a
	.byte	0x4
	.byte	0x23
	.uleb128 0x10020
	.byte	0
	.uleb128 0x10
	.uaword	0x1bd
	.uaword	0x23ec
	.uleb128 0x11
	.uaword	0x23ec
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x10
	.uaword	0x1bd
	.uaword	0x2408
	.uleb128 0x11
	.uaword	0x23ec
	.byte	0x1b
	.byte	0
	.uleb128 0x10
	.uaword	0x1bd
	.uaword	0x2419
	.uleb128 0x12
	.uaword	0x23ec
	.uahalf	0x7f6b
	.byte	0
	.uleb128 0x10
	.uaword	0x1bd
	.uaword	0x242a
	.uleb128 0x12
	.uaword	0x23ec
	.uahalf	0x3ffb
	.byte	0
	.uleb128 0x10
	.uaword	0x1bd
	.uaword	0x243a
	.uleb128 0x11
	.uaword	0x23ec
	.byte	0xdd
	.byte	0
	.uleb128 0x9
	.string	"Ifx_I2C"
	.byte	0x3
	.uahalf	0x306
	.uaword	0x244a
	.uleb128 0x13
	.uaword	0x2055
	.uleb128 0x4
	.string	"_Ifx_SRC_SRCR_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0x44
	.uaword	0x257a
	.uleb128 0x5
	.string	"SRPN"
	.byte	0x4
	.byte	0x46
	.uaword	0x1f9
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"reserved_8"
	.byte	0x4
	.byte	0x47
	.uaword	0x1f9
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"SRE"
	.byte	0x4
	.byte	0x48
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"TOS"
	.byte	0x4
	.byte	0x49
	.uaword	0x1f9
	.byte	0x4
	.byte	0x3
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF13
	.byte	0x4
	.byte	0x4a
	.uaword	0x1f9
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"ECC"
	.byte	0x4
	.byte	0x4b
	.uaword	0x1f9
	.byte	0x4
	.byte	0x5
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF24
	.byte	0x4
	.byte	0x4c
	.uaword	0x1f9
	.byte	0x4
	.byte	0x3
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"SRR"
	.byte	0x4
	.byte	0x4d
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"CLRR"
	.byte	0x4
	.byte	0x4e
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"SETR"
	.byte	0x4
	.byte	0x4f
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"IOV"
	.byte	0x4
	.byte	0x50
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"IOVCLR"
	.byte	0x4
	.byte	0x51
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"SWS"
	.byte	0x4
	.byte	0x52
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"SWSCLR"
	.byte	0x4
	.byte	0x53
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF12
	.byte	0x4
	.byte	0x54
	.uaword	0x1f9
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x2
	.string	"Ifx_SRC_SRCR_Bits"
	.byte	0x4
	.byte	0x55
	.uaword	0x244f
	.uleb128 0x14
	.byte	0x4
	.byte	0x4
	.byte	0x5d
	.uaword	0x25b7
	.uleb128 0x15
	.string	"U"
	.byte	0x4
	.byte	0x5f
	.uaword	0x1f9
	.uleb128 0x15
	.string	"I"
	.byte	0x4
	.byte	0x60
	.uaword	0x23b
	.uleb128 0x15
	.string	"B"
	.byte	0x4
	.byte	0x61
	.uaword	0x257a
	.byte	0
	.uleb128 0x2
	.string	"Ifx_SRC_SRCR"
	.byte	0x4
	.byte	0x62
	.uaword	0x2593
	.uleb128 0x2
	.string	"uint8"
	.byte	0x5
	.byte	0x51
	.uaword	0x1d2
	.uleb128 0x2
	.string	"uint16"
	.byte	0x5
	.byte	0x5b
	.uaword	0x1e3
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x2
	.string	"uint32"
	.byte	0x5
	.byte	0x6a
	.uaword	0x20f
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.string	"double"
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x2
	.string	"Std_ReturnType"
	.byte	0x6
	.byte	0x60
	.uaword	0x25cb
	.uleb128 0x16
	.uaword	0x25cb
	.uleb128 0x10
	.uaword	0x25cb
	.uaword	0x267e
	.uleb128 0x11
	.uaword	0x23ec
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.string	"I2c_ChannelType"
	.byte	0x7
	.byte	0x81
	.uaword	0x25cb
	.uleb128 0x2
	.string	"I2c_SizeType"
	.byte	0x7
	.byte	0x83
	.uaword	0x25d8
	.uleb128 0x2
	.string	"I2c_DataType"
	.byte	0x7
	.byte	0x85
	.uaword	0x25cb
	.uleb128 0x2
	.string	"I2c_SlaveAddrType"
	.byte	0x7
	.byte	0x87
	.uaword	0x25d8
	.uleb128 0x17
	.byte	0x1
	.byte	0x7
	.byte	0x90
	.uaword	0x2702
	.uleb128 0x18
	.string	"I2C_UNINIT"
	.sleb128 0
	.uleb128 0x18
	.string	"I2C_IDLE"
	.sleb128 1
	.uleb128 0x18
	.string	"I2C_BUSY"
	.sleb128 2
	.byte	0
	.uleb128 0x2
	.string	"I2c_ChannelStatusType"
	.byte	0x7
	.byte	0x97
	.uaword	0x26d6
	.uleb128 0x17
	.byte	0x1
	.byte	0x7
	.byte	0x9a
	.uaword	0x281f
	.uleb128 0x18
	.string	"I2C_NO_ERR"
	.sleb128 0
	.uleb128 0x18
	.string	"I2C_TX_UNDERFLOW"
	.sleb128 1
	.uleb128 0x18
	.string	"I2C_TX_OVERFLOW"
	.sleb128 2
	.uleb128 0x18
	.string	"I2C_RX_UNDERFLOW"
	.sleb128 3
	.uleb128 0x18
	.string	"I2C_RX_OVERFLOW"
	.sleb128 4
	.uleb128 0x18
	.string	"I2C_NO_ACK"
	.sleb128 5
	.uleb128 0x18
	.string	"I2C_ARBITRATION_LOST"
	.sleb128 6
	.uleb128 0x18
	.string	"I2C_INVALID_CHANNEL"
	.sleb128 7
	.uleb128 0x18
	.string	"I2C_INVALID_SIZE"
	.sleb128 8
	.uleb128 0x18
	.string	"I2C_INVALID_ADDRESS"
	.sleb128 9
	.uleb128 0x18
	.string	"I2C_NULL_PTR"
	.sleb128 10
	.uleb128 0x18
	.string	"I2C_IS_UNINIT"
	.sleb128 11
	.uleb128 0x18
	.string	"I2C_IS_BUSY"
	.sleb128 12
	.uleb128 0x18
	.string	"I2C_ERR_OTHER"
	.sleb128 13
	.byte	0
	.uleb128 0x2
	.string	"I2c_ErrorType"
	.byte	0x7
	.byte	0xa9
	.uaword	0x271f
	.uleb128 0x17
	.byte	0x1
	.byte	0x7
	.byte	0xac
	.uaword	0x286c
	.uleb128 0x18
	.string	"I2C_7_BIT_ADDRESSING"
	.sleb128 0
	.uleb128 0x18
	.string	"I2C_10_BIT_ADDRESSING"
	.sleb128 1
	.byte	0
	.uleb128 0x2
	.string	"I2c_AddressingModeType"
	.byte	0x7
	.byte	0xaf
	.uaword	0x2834
	.uleb128 0x2
	.string	"I2c_NotifFunctionPtrType"
	.byte	0x7
	.byte	0xb1
	.uaword	0x28aa
	.uleb128 0x19
	.byte	0x4
	.uaword	0x28b0
	.uleb128 0x1a
	.byte	0x1
	.uaword	0x28bc
	.uleb128 0x1b
	.uaword	0x281f
	.byte	0
	.uleb128 0x1c
	.byte	0x4
	.byte	0x7
	.byte	0xb3
	.uaword	0x28e4
	.uleb128 0x1d
	.string	"I2c_NotifFunctionPtr"
	.byte	0x7
	.byte	0xb5
	.uaword	0x288a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x2
	.string	"I2c_NotifType"
	.byte	0x7
	.byte	0xb6
	.uaword	0x28bc
	.uleb128 0x1c
	.byte	0x30
	.byte	0x7
	.byte	0xb8
	.uaword	0x2a2b
	.uleb128 0x1e
	.uaword	.LASF25
	.byte	0x7
	.byte	0xba
	.uaword	0x2669
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x1d
	.string	"AdddressCfgValue"
	.byte	0x7
	.byte	0xbc
	.uaword	0x2a2b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1d
	.string	"FracDividerCfgValue"
	.byte	0x7
	.byte	0xbe
	.uaword	0x2a2b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1d
	.string	"FracDividerHighCfgValue"
	.byte	0x7
	.byte	0xc0
	.uaword	0x2a2b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1d
	.string	"TimingCfgvalue"
	.byte	0x7
	.byte	0xc2
	.uaword	0x2a2b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1d
	.string	"FIFOCfgValue"
	.byte	0x7
	.byte	0xc4
	.uaword	0x2a2b
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x1d
	.string	"PortPinCfgvalue"
	.byte	0x7
	.byte	0xc6
	.uaword	0x2669
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x1d
	.string	"HWClkSetting"
	.byte	0x7
	.byte	0xc8
	.uaword	0x2a2b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x1d
	.string	"AddressingMode"
	.byte	0x7
	.byte	0xca
	.uaword	0x2a30
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1d
	.string	"I2c_Notif"
	.byte	0x7
	.byte	0xcc
	.uaword	0x28e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1d
	.string	"TxTimeOutCount"
	.byte	0x7
	.byte	0xce
	.uaword	0x2a2b
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x1d
	.string	"RxTimeOutCount"
	.byte	0x7
	.byte	0xcf
	.uaword	0x2a2b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.byte	0
	.uleb128 0x16
	.uaword	0x25f7
	.uleb128 0x16
	.uaword	0x286c
	.uleb128 0x2
	.string	"I2c_ChannelConfigType"
	.byte	0x7
	.byte	0xd1
	.uaword	0x28f9
	.uleb128 0x1c
	.byte	0x8
	.byte	0x7
	.byte	0xd4
	.uaword	0x2a94
	.uleb128 0x1d
	.string	"I2c_ChannelConfigPtr"
	.byte	0x7
	.byte	0xd6
	.uaword	0x2a94
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x1d
	.string	"I2c_MaxChannels"
	.byte	0x7
	.byte	0xd7
	.uaword	0x2669
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x19
	.byte	0x4
	.uaword	0x2a9a
	.uleb128 0x16
	.uaword	0x2a35
	.uleb128 0x2
	.string	"I2c_ConfigType"
	.byte	0x7
	.byte	0xd9
	.uaword	0x2a52
	.uleb128 0x17
	.byte	0x1
	.byte	0x1
	.byte	0xb2
	.uaword	0x2b24
	.uleb128 0x18
	.string	"I2C_RX_NOT_STARTED"
	.sleb128 0
	.uleb128 0x18
	.string	"I2C_RX_INITIATED"
	.sleb128 1
	.uleb128 0x18
	.string	"I2C_RX_COMMAND_SENT"
	.sleb128 2
	.uleb128 0x18
	.string	"I2C_RX_IN_PROGRESS"
	.sleb128 3
	.uleb128 0x18
	.string	"I2C_RX_COMPLETED"
	.sleb128 4
	.byte	0
	.uleb128 0x2
	.string	"I2c_RxTransferStateType"
	.byte	0x1
	.byte	0xb8
	.uaword	0x2ab5
	.uleb128 0x17
	.byte	0x1
	.byte	0x1
	.byte	0xbb
	.uaword	0x2b74
	.uleb128 0x18
	.string	"I2C_TX_IN_PROGRESS"
	.sleb128 0
	.uleb128 0x18
	.string	"I2C_TX_COMPLETED"
	.sleb128 1
	.byte	0
	.uleb128 0x2
	.string	"I2c_TxTransferStateType"
	.byte	0x1
	.byte	0xbe
	.uaword	0x2b43
	.uleb128 0x17
	.byte	0x1
	.byte	0x1
	.byte	0xc1
	.uaword	0x2bc6
	.uleb128 0x18
	.string	"I2C_NO_OPERATION"
	.sleb128 0
	.uleb128 0x18
	.string	"I2C_WRITE"
	.sleb128 1
	.uleb128 0x18
	.string	"I2C_READ"
	.sleb128 2
	.byte	0
	.uleb128 0x2
	.string	"I2c_OperationType"
	.byte	0x1
	.byte	0xc5
	.uaword	0x2b93
	.uleb128 0x1c
	.byte	0x10
	.byte	0x1
	.byte	0xc7
	.uaword	0x2c6d
	.uleb128 0x1e
	.uaword	.LASF26
	.byte	0x1
	.byte	0xca
	.uaword	0x2c6d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x1d
	.string	"HwState"
	.byte	0x1
	.byte	0xcc
	.uaword	0x2702
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1e
	.uaword	.LASF27
	.byte	0x1
	.byte	0xce
	.uaword	0x2695
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x1d
	.string	"TotalDataTxd"
	.byte	0x1
	.byte	0xd0
	.uaword	0x2695
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1d
	.string	"I2c_Operation"
	.byte	0x1
	.byte	0xd2
	.uaword	0x2bc6
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x1e
	.uaword	.LASF28
	.byte	0x1
	.byte	0xd4
	.uaword	0x26bd
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1d
	.string	"RxTransferState"
	.byte	0x1
	.byte	0xd6
	.uaword	0x2b24
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.byte	0
	.uleb128 0x19
	.byte	0x4
	.uaword	0x26a9
	.uleb128 0x2
	.string	"I2c_ChannelInfoType"
	.byte	0x1
	.byte	0xd7
	.uaword	0x2bdf
	.uleb128 0x1f
	.string	"I2c_lHwClearAllInterrupts"
	.byte	0x1
	.uahalf	0x485
	.byte	0x1
	.byte	0x1
	.uaword	0x2cbf
	.uleb128 0x20
	.uaword	.LASF29
	.byte	0x1
	.uahalf	0x487
	.uaword	0x2cbf
	.byte	0
	.uleb128 0x16
	.uaword	0x2cc4
	.uleb128 0x19
	.byte	0x4
	.uaword	0x243a
	.uleb128 0x1f
	.string	"I2c_lRead"
	.byte	0x1
	.uahalf	0x6b4
	.byte	0x1
	.byte	0x1
	.uaword	0x2d82
	.uleb128 0x20
	.uaword	.LASF29
	.byte	0x1
	.uahalf	0x6b6
	.uaword	0x2cbf
	.uleb128 0x20
	.uaword	.LASF30
	.byte	0x1
	.uahalf	0x6b7
	.uaword	0x2d82
	.uleb128 0x21
	.uaword	.LASF31
	.byte	0x1
	.uahalf	0x6ba
	.uaword	0x2c6d
	.uleb128 0x22
	.string	"RxData"
	.byte	0x1
	.uahalf	0x6bb
	.uaword	0x25f7
	.uleb128 0x22
	.string	"TxData"
	.byte	0x1
	.uahalf	0x6bc
	.uaword	0x25f7
	.uleb128 0x21
	.uaword	.LASF28
	.byte	0x1
	.uahalf	0x6bd
	.uaword	0x25d8
	.uleb128 0x21
	.uaword	.LASF27
	.byte	0x1
	.uahalf	0x6be
	.uaword	0x25d8
	.uleb128 0x22
	.string	"RxdCnt"
	.byte	0x1
	.uahalf	0x6bf
	.uaword	0x25d8
	.uleb128 0x21
	.uaword	.LASF32
	.byte	0x1
	.uahalf	0x6c0
	.uaword	0x25cb
	.uleb128 0x22
	.string	"LoopCount"
	.byte	0x1
	.uahalf	0x6c1
	.uaword	0x25cb
	.uleb128 0x22
	.string	"Counter"
	.byte	0x1
	.uahalf	0x6c2
	.uaword	0x25cb
	.uleb128 0x21
	.uaword	.LASF33
	.byte	0x1
	.uahalf	0x6c3
	.uaword	0x25cb
	.byte	0
	.uleb128 0x16
	.uaword	0x2d87
	.uleb128 0x19
	.byte	0x4
	.uaword	0x2c73
	.uleb128 0x23
	.string	"I2c_ReadWriteDetCheck"
	.byte	0x1
	.uahalf	0x55d
	.byte	0x1
	.uaword	0x281f
	.byte	0x1
	.uaword	0x2e01
	.uleb128 0x20
	.uaword	.LASF34
	.byte	0x1
	.uahalf	0x55f
	.uaword	0x2e01
	.uleb128 0x20
	.uaword	.LASF26
	.byte	0x1
	.uahalf	0x560
	.uaword	0x2e06
	.uleb128 0x24
	.string	"Size"
	.byte	0x1
	.uahalf	0x561
	.uaword	0x2e16
	.uleb128 0x20
	.uaword	.LASF35
	.byte	0x1
	.uahalf	0x562
	.uaword	0x2e1b
	.uleb128 0x24
	.string	"ServiceId"
	.byte	0x1
	.uahalf	0x563
	.uaword	0x2669
	.uleb128 0x21
	.uaword	.LASF36
	.byte	0x1
	.uahalf	0x566
	.uaword	0x281f
	.byte	0
	.uleb128 0x16
	.uaword	0x267e
	.uleb128 0x16
	.uaword	0x2e0b
	.uleb128 0x19
	.byte	0x4
	.uaword	0x2e11
	.uleb128 0x16
	.uaword	0x26a9
	.uleb128 0x16
	.uaword	0x2695
	.uleb128 0x16
	.uaword	0x26bd
	.uleb128 0x23
	.string	"I2c_lHwInit"
	.byte	0x1
	.uahalf	0x45c
	.byte	0x1
	.uaword	0x25cb
	.byte	0x1
	.uaword	0x2e6b
	.uleb128 0x20
	.uaword	.LASF25
	.byte	0x1
	.uahalf	0x45e
	.uaword	0x2669
	.uleb128 0x20
	.uaword	.LASF37
	.byte	0x1
	.uahalf	0x45f
	.uaword	0x2e6b
	.uleb128 0x21
	.uaword	.LASF29
	.byte	0x1
	.uahalf	0x462
	.uaword	0x2cc4
	.uleb128 0x21
	.uaword	.LASF38
	.byte	0x1
	.uahalf	0x463
	.uaword	0x25cb
	.byte	0
	.uleb128 0x19
	.byte	0x4
	.uaword	0x2e71
	.uleb128 0x16
	.uaword	0x2a9f
	.uleb128 0x1f
	.string	"I2c_lHwUpdateModuleReg"
	.byte	0x1
	.uahalf	0x4b0
	.byte	0x1
	.byte	0x1
	.uaword	0x2ebc
	.uleb128 0x20
	.uaword	.LASF25
	.byte	0x1
	.uahalf	0x4b2
	.uaword	0x2669
	.uleb128 0x20
	.uaword	.LASF39
	.byte	0x1
	.uahalf	0x4b3
	.uaword	0x2ebc
	.uleb128 0x21
	.uaword	.LASF29
	.byte	0x1
	.uahalf	0x4b6
	.uaword	0x2cc4
	.byte	0
	.uleb128 0x16
	.uaword	0x2a94
	.uleb128 0x1f
	.string	"I2c_lSendMasterCode"
	.byte	0x1
	.uahalf	0x4fd
	.byte	0x1
	.byte	0x1
	.uaword	0x2eec
	.uleb128 0x20
	.uaword	.LASF29
	.byte	0x1
	.uahalf	0x4ff
	.uaword	0x2cbf
	.byte	0
	.uleb128 0x1f
	.string	"I2c_lHwEnableInterrupt"
	.byte	0x1
	.uahalf	0x4de
	.byte	0x1
	.byte	0x1
	.uaword	0x2f1a
	.uleb128 0x20
	.uaword	.LASF29
	.byte	0x1
	.uahalf	0x4e0
	.uaword	0x2cbf
	.byte	0
	.uleb128 0x25
	.string	"I2c_lWrite"
	.byte	0x1
	.uahalf	0x5bf
	.byte	0x1
	.uaword	.LFB34
	.uaword	.LFE34
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x3010
	.uleb128 0x26
	.uaword	.LASF29
	.byte	0x1
	.uahalf	0x5c1
	.uaword	0x2cbf
	.byte	0x1
	.byte	0x64
	.uleb128 0x26
	.uaword	.LASF30
	.byte	0x1
	.uahalf	0x5c2
	.uaword	0x2d82
	.byte	0x1
	.byte	0x65
	.uleb128 0x27
	.uaword	.LASF31
	.byte	0x1
	.uahalf	0x5c5
	.uaword	0x2e0b
	.uaword	.LLST0
	.uleb128 0x28
	.string	"TxData"
	.byte	0x1
	.uahalf	0x5c6
	.uaword	0x25f7
	.uaword	.LLST1
	.uleb128 0x28
	.string	"TempTxData"
	.byte	0x1
	.uahalf	0x5c7
	.uaword	0x25f7
	.uaword	.LLST2
	.uleb128 0x27
	.uaword	.LASF27
	.byte	0x1
	.uahalf	0x5c8
	.uaword	0x25d8
	.uaword	.LLST3
	.uleb128 0x28
	.string	"TxdCnt"
	.byte	0x1
	.uahalf	0x5c9
	.uaword	0x25d8
	.uaword	.LLST4
	.uleb128 0x27
	.uaword	.LASF28
	.byte	0x1
	.uahalf	0x5ca
	.uaword	0x25d8
	.uaword	.LLST5
	.uleb128 0x27
	.uaword	.LASF32
	.byte	0x1
	.uahalf	0x5cb
	.uaword	0x25cb
	.uaword	.LLST6
	.uleb128 0x28
	.string	"Counter"
	.byte	0x1
	.uahalf	0x5cc
	.uaword	0x25cb
	.uaword	.LLST7
	.uleb128 0x27
	.uaword	.LASF33
	.byte	0x1
	.uahalf	0x5cd
	.uaword	0x25cb
	.uaword	.LLST8
	.uleb128 0x28
	.string	"FIFOCounter"
	.byte	0x1
	.uahalf	0x5ce
	.uaword	0x25cb
	.uaword	.LLST9
	.byte	0
	.uleb128 0x29
	.uaword	0x2d8d
	.uaword	.LFB33
	.uaword	.LFE33
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x314a
	.uleb128 0x2a
	.uaword	0x2db1
	.uaword	.LLST10
	.uleb128 0x2a
	.uaword	0x2dbd
	.uaword	.LLST11
	.uleb128 0x2a
	.uaword	0x2dc9
	.uaword	.LLST12
	.uleb128 0x2a
	.uaword	0x2dd6
	.uaword	.LLST13
	.uleb128 0x2a
	.uaword	0x2de2
	.uaword	.LLST14
	.uleb128 0x2b
	.uaword	0x2df4
	.uaword	.LLST15
	.uleb128 0x2c
	.uaword	.Ldebug_ranges0+0
	.uaword	0x30d5
	.uleb128 0x2a
	.uaword	0x2dbd
	.uaword	.LLST16
	.uleb128 0x2d
	.uaword	0x2dc9
	.uleb128 0x2a
	.uaword	0x2de2
	.uaword	.LLST17
	.uleb128 0x2a
	.uaword	0x2dd6
	.uaword	.LLST18
	.uleb128 0x2a
	.uaword	0x2db1
	.uaword	.LLST19
	.uleb128 0x2e
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x2b
	.uaword	0x2df4
	.uaword	.LLST20
	.uleb128 0x2f
	.uaword	.LVL55
	.uaword	0x42a6
	.uaword	0x30b9
	.uleb128 0x30
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x35
	.uleb128 0x30
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0xff
	.byte	0
	.uleb128 0x31
	.uaword	.LVL59
	.uaword	0x42a6
	.uleb128 0x30
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x34
	.uleb128 0x30
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0xff
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uaword	.LVL40
	.uaword	0x42a6
	.uaword	0x30f3
	.uleb128 0x30
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x32
	.uleb128 0x30
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0xff
	.byte	0
	.uleb128 0x2f
	.uaword	.LVL45
	.uaword	0x42a6
	.uaword	0x3111
	.uleb128 0x30
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x31
	.uleb128 0x30
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0xff
	.byte	0
	.uleb128 0x2f
	.uaword	.LVL50
	.uaword	0x42a6
	.uaword	0x312f
	.uleb128 0x30
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x36
	.uleb128 0x30
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0xff
	.byte	0
	.uleb128 0x31
	.uaword	.LVL65
	.uaword	0x42a6
	.uleb128 0x30
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x30
	.uleb128 0x30
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0xff
	.byte	0
	.byte	0
	.uleb128 0x1f
	.string	"I2c_lResetKernels"
	.byte	0x1
	.uahalf	0x51f
	.byte	0x1
	.byte	0x1
	.uaword	0x3197
	.uleb128 0x20
	.uaword	.LASF29
	.byte	0x1
	.uahalf	0x521
	.uaword	0x2cbf
	.uleb128 0x22
	.string	"RstStatus"
	.byte	0x1
	.uahalf	0x524
	.uaword	0x25f7
	.uleb128 0x22
	.string	"WaitCount"
	.byte	0x1
	.uahalf	0x525
	.uaword	0x25f7
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.string	"I2c_Init"
	.byte	0x1
	.uahalf	0x1ae
	.byte	0x1
	.uaword	.LFB19
	.uaword	.LFE19
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x3397
	.uleb128 0x33
	.uaword	.LASF37
	.byte	0x1
	.uahalf	0x1b0
	.uaword	0x3397
	.uaword	.LLST21
	.uleb128 0x27
	.uaword	.LASF39
	.byte	0x1
	.uahalf	0x1b3
	.uaword	0x2a94
	.uaword	.LLST22
	.uleb128 0x27
	.uaword	.LASF29
	.byte	0x1
	.uahalf	0x1b4
	.uaword	0x2cc4
	.uaword	.LLST23
	.uleb128 0x27
	.uaword	.LASF38
	.byte	0x1
	.uahalf	0x1b5
	.uaword	0x25cb
	.uaword	.LLST24
	.uleb128 0x28
	.string	"Channel"
	.byte	0x1
	.uahalf	0x1b6
	.uaword	0x25cb
	.uaword	.LLST25
	.uleb128 0x27
	.uaword	.LASF25
	.byte	0x1
	.uahalf	0x1b7
	.uaword	0x25cb
	.uaword	.LLST26
	.uleb128 0x34
	.uaword	.LASF36
	.byte	0x1
	.uahalf	0x1be
	.uaword	0x2653
	.byte	0
	.uleb128 0x35
	.uaword	0x2c8e
	.uaword	.LBB40
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x1
	.uahalf	0x1e6
	.uaword	0x3245
	.uleb128 0x2a
	.uaword	0x2cb2
	.uaword	.LLST27
	.byte	0
	.uleb128 0x35
	.uaword	0x2e20
	.uaword	.LBB43
	.uaword	.Ldebug_ranges0+0x30
	.byte	0x1
	.uahalf	0x1df
	.uaword	0x331a
	.uleb128 0x2a
	.uaword	0x2e46
	.uaword	.LLST28
	.uleb128 0x2a
	.uaword	0x2e3a
	.uaword	.LLST29
	.uleb128 0x2e
	.uaword	.Ldebug_ranges0+0x30
	.uleb128 0x2b
	.uaword	0x2e52
	.uaword	.LLST30
	.uleb128 0x2b
	.uaword	0x2e5e
	.uaword	.LLST31
	.uleb128 0x35
	.uaword	0x314a
	.uaword	.LBB45
	.uaword	.Ldebug_ranges0+0x60
	.byte	0x1
	.uahalf	0x465
	.uaword	0x3303
	.uleb128 0x2a
	.uaword	0x3166
	.uaword	.LLST32
	.uleb128 0x2e
	.uaword	.Ldebug_ranges0+0x60
	.uleb128 0x2b
	.uaword	0x3172
	.uaword	.LLST33
	.uleb128 0x2b
	.uaword	0x3184
	.uaword	.LLST34
	.uleb128 0x2f
	.uaword	.LVL75
	.uaword	0x42d9
	.uaword	0x32cf
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.uleb128 0x30
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.uaword	.LVL76
	.uaword	0x42d9
	.uaword	0x32ea
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.uleb128 0x30
	.byte	0x1
	.byte	0x64
	.byte	0x4
	.byte	0x8c
	.sleb128 65560
	.byte	0
	.uleb128 0x31
	.uaword	.LVL80
	.uaword	0x42d9
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.uleb128 0x30
	.byte	0x1
	.byte	0x64
	.byte	0x4
	.byte	0x8c
	.sleb128 65564
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.uaword	.LVL81
	.uaword	0x42d9
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.uleb128 0x30
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x35
	.uaword	0x2e76
	.uaword	.LBB58
	.uaword	.Ldebug_ranges0+0x80
	.byte	0x1
	.uahalf	0x1e5
	.uaword	0x3350
	.uleb128 0x2a
	.uaword	0x2ea3
	.uaword	.LLST35
	.uleb128 0x2a
	.uaword	0x2e97
	.uaword	.LLST36
	.uleb128 0x2e
	.uaword	.Ldebug_ranges0+0x80
	.uleb128 0x2b
	.uaword	0x2eaf
	.uaword	.LLST37
	.byte	0
	.byte	0
	.uleb128 0x36
	.uaword	.LVL97
	.byte	0x1
	.uaword	0x42a6
	.uaword	0x3375
	.uleb128 0x30
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x33
	.uleb128 0x30
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x8
	.byte	0x4f
	.uleb128 0x30
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0xff
	.byte	0
	.uleb128 0x37
	.uaword	.LVL98
	.byte	0x1
	.uaword	0x42a6
	.uleb128 0x30
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x37
	.uleb128 0x30
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x8
	.byte	0x4f
	.uleb128 0x30
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0xff
	.byte	0
	.byte	0
	.uleb128 0x16
	.uaword	0x2e6b
	.uleb128 0x38
	.byte	0x1
	.string	"I2c_DeInit"
	.byte	0x1
	.uahalf	0x214
	.byte	0x1
	.uaword	0x2653
	.uaword	.LFB20
	.uaword	.LFE20
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x3467
	.uleb128 0x27
	.uaword	.LASF30
	.byte	0x1
	.uahalf	0x219
	.uaword	0x2d87
	.uaword	.LLST38
	.uleb128 0x27
	.uaword	.LASF29
	.byte	0x1
	.uahalf	0x21a
	.uaword	0x2cc4
	.uaword	.LLST39
	.uleb128 0x27
	.uaword	.LASF36
	.byte	0x1
	.uahalf	0x21b
	.uaword	0x2653
	.uaword	.LLST40
	.uleb128 0x28
	.string	"Channel"
	.byte	0x1
	.uahalf	0x21c
	.uaword	0x25cb
	.uaword	.LLST41
	.uleb128 0x27
	.uaword	.LASF25
	.byte	0x1
	.uahalf	0x21d
	.uaword	0x25cb
	.uaword	.LLST42
	.uleb128 0x35
	.uaword	0x2c8e
	.uaword	.LBB64
	.uaword	.Ldebug_ranges0+0x98
	.byte	0x1
	.uahalf	0x23f
	.uaword	0x3433
	.uleb128 0x2a
	.uaword	0x2cb2
	.uaword	.LLST39
	.byte	0
	.uleb128 0x2f
	.uaword	.LVL105
	.uaword	0x42d9
	.uaword	0x3446
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x31
	.uaword	.LVL107
	.uaword	0x42a6
	.uleb128 0x30
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x31
	.uleb128 0x30
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x8
	.byte	0x50
	.uleb128 0x30
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0xff
	.byte	0
	.byte	0
	.uleb128 0x23
	.string	"I2c_lSyncTransmit"
	.byte	0x1
	.uahalf	0x654
	.byte	0x1
	.uaword	0x281f
	.byte	0x1
	.uaword	0x34f4
	.uleb128 0x20
	.uaword	.LASF29
	.byte	0x1
	.uahalf	0x656
	.uaword	0x2cbf
	.uleb128 0x20
	.uaword	.LASF30
	.byte	0x1
	.uahalf	0x657
	.uaword	0x2d82
	.uleb128 0x20
	.uaword	.LASF34
	.byte	0x1
	.uahalf	0x658
	.uaword	0x2e01
	.uleb128 0x21
	.uaword	.LASF40
	.byte	0x1
	.uahalf	0x65b
	.uaword	0x281f
	.uleb128 0x22
	.string	"TransmitPending"
	.byte	0x1
	.uahalf	0x65c
	.uaword	0x2b74
	.uleb128 0x21
	.uaword	.LASF41
	.byte	0x1
	.uahalf	0x65d
	.uaword	0x25f7
	.uleb128 0x21
	.uaword	.LASF42
	.byte	0x1
	.uahalf	0x65e
	.uaword	0x25f7
	.uleb128 0x21
	.uaword	.LASF43
	.byte	0x1
	.uahalf	0x65f
	.uaword	0x25f7
	.byte	0
	.uleb128 0x38
	.byte	0x1
	.string	"I2c_SyncWrite"
	.byte	0x1
	.uahalf	0x269
	.byte	0x1
	.uaword	0x281f
	.uaword	.LFB21
	.uaword	.LFE21
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x3677
	.uleb128 0x33
	.uaword	.LASF34
	.byte	0x1
	.uahalf	0x26b
	.uaword	0x2e01
	.uaword	.LLST44
	.uleb128 0x33
	.uaword	.LASF26
	.byte	0x1
	.uahalf	0x26c
	.uaword	0x3677
	.uaword	.LLST45
	.uleb128 0x39
	.string	"Size"
	.byte	0x1
	.uahalf	0x26d
	.uaword	0x2e16
	.uaword	.LLST46
	.uleb128 0x33
	.uaword	.LASF35
	.byte	0x1
	.uahalf	0x26e
	.uaword	0x2e1b
	.uaword	.LLST47
	.uleb128 0x27
	.uaword	.LASF29
	.byte	0x1
	.uahalf	0x271
	.uaword	0x2cc4
	.uaword	.LLST48
	.uleb128 0x27
	.uaword	.LASF39
	.byte	0x1
	.uahalf	0x272
	.uaword	0x2a94
	.uaword	.LLST49
	.uleb128 0x27
	.uaword	.LASF30
	.byte	0x1
	.uahalf	0x273
	.uaword	0x2d87
	.uaword	.LLST50
	.uleb128 0x27
	.uaword	.LASF36
	.byte	0x1
	.uahalf	0x274
	.uaword	0x281f
	.uaword	.LLST51
	.uleb128 0x3a
	.uaword	0x2ec1
	.uaword	.LBB74
	.uaword	.LBE74
	.byte	0x1
	.uahalf	0x28f
	.uaword	0x35bb
	.uleb128 0x2a
	.uaword	0x2edf
	.uaword	.LLST52
	.byte	0
	.uleb128 0x35
	.uaword	0x3467
	.uaword	.LBB76
	.uaword	.Ldebug_ranges0+0xb0
	.byte	0x1
	.uahalf	0x29f
	.uaword	0x364e
	.uleb128 0x2d
	.uaword	0x349f
	.uleb128 0x2a
	.uaword	0x3493
	.uaword	.LLST53
	.uleb128 0x2a
	.uaword	0x3487
	.uaword	.LLST54
	.uleb128 0x2e
	.uaword	.Ldebug_ranges0+0xb0
	.uleb128 0x2b
	.uaword	0x34ab
	.uaword	.LLST55
	.uleb128 0x2b
	.uaword	0x34b7
	.uaword	.LLST56
	.uleb128 0x2b
	.uaword	0x34cf
	.uaword	.LLST57
	.uleb128 0x2b
	.uaword	0x34db
	.uaword	.LLST58
	.uleb128 0x2b
	.uaword	0x34e7
	.uaword	.LLST59
	.uleb128 0x3a
	.uaword	0x2c8e
	.uaword	.LBB78
	.uaword	.LBE78
	.byte	0x1
	.uahalf	0x68f
	.uaword	0x3636
	.uleb128 0x2a
	.uaword	0x2cb2
	.uaword	.LLST60
	.byte	0
	.uleb128 0x31
	.uaword	.LVL131
	.uaword	0x2f1a
	.uleb128 0x30
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x30
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.uaword	.LVL109
	.uaword	0x2d8d
	.uleb128 0x30
	.byte	0x1
	.byte	0x57
	.byte	0x2
	.byte	0x8
	.byte	0x51
	.uleb128 0x30
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x30
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x30
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x16
	.uaword	0x2c6d
	.uleb128 0x23
	.string	"I2c_lSyncReceive"
	.byte	0x1
	.uahalf	0x725
	.byte	0x1
	.uaword	0x281f
	.byte	0x1
	.uaword	0x3707
	.uleb128 0x20
	.uaword	.LASF29
	.byte	0x1
	.uahalf	0x727
	.uaword	0x2cbf
	.uleb128 0x20
	.uaword	.LASF30
	.byte	0x1
	.uahalf	0x728
	.uaword	0x2d82
	.uleb128 0x20
	.uaword	.LASF34
	.byte	0x1
	.uahalf	0x729
	.uaword	0x2e01
	.uleb128 0x21
	.uaword	.LASF40
	.byte	0x1
	.uahalf	0x72c
	.uaword	0x281f
	.uleb128 0x22
	.string	"ReceivePending"
	.byte	0x1
	.uahalf	0x72d
	.uaword	0x2b24
	.uleb128 0x21
	.uaword	.LASF41
	.byte	0x1
	.uahalf	0x72e
	.uaword	0x25f7
	.uleb128 0x21
	.uaword	.LASF42
	.byte	0x1
	.uahalf	0x72f
	.uaword	0x25f7
	.uleb128 0x21
	.uaword	.LASF43
	.byte	0x1
	.uahalf	0x730
	.uaword	0x25f7
	.byte	0
	.uleb128 0x3b
	.byte	0x1
	.string	"I2c_SyncRead"
	.byte	0x1
	.uahalf	0x2c3
	.byte	0x1
	.uaword	0x281f
	.uaword	.LFB22
	.uaword	.LFE22
	.uaword	.LLST61
	.byte	0x1
	.uaword	0x3933
	.uleb128 0x33
	.uaword	.LASF34
	.byte	0x1
	.uahalf	0x2c5
	.uaword	0x2e01
	.uaword	.LLST62
	.uleb128 0x33
	.uaword	.LASF26
	.byte	0x1
	.uahalf	0x2c6
	.uaword	0x3677
	.uaword	.LLST63
	.uleb128 0x39
	.string	"Size"
	.byte	0x1
	.uahalf	0x2c7
	.uaword	0x2e16
	.uaword	.LLST64
	.uleb128 0x33
	.uaword	.LASF35
	.byte	0x1
	.uahalf	0x2c8
	.uaword	0x2e1b
	.uaword	.LLST65
	.uleb128 0x27
	.uaword	.LASF29
	.byte	0x1
	.uahalf	0x2cb
	.uaword	0x2cc4
	.uaword	.LLST66
	.uleb128 0x27
	.uaword	.LASF30
	.byte	0x1
	.uahalf	0x2cc
	.uaword	0x2d87
	.uaword	.LLST67
	.uleb128 0x27
	.uaword	.LASF39
	.byte	0x1
	.uahalf	0x2cd
	.uaword	0x2a94
	.uaword	.LLST68
	.uleb128 0x27
	.uaword	.LASF36
	.byte	0x1
	.uahalf	0x2ce
	.uaword	0x281f
	.uaword	.LLST69
	.uleb128 0x3a
	.uaword	0x2ec1
	.uaword	.LBB92
	.uaword	.LBE92
	.byte	0x1
	.uahalf	0x2ea
	.uaword	0x37ce
	.uleb128 0x2a
	.uaword	0x2edf
	.uaword	.LLST70
	.byte	0
	.uleb128 0x35
	.uaword	0x367c
	.uaword	.LBB94
	.uaword	.Ldebug_ranges0+0xc8
	.byte	0x1
	.uahalf	0x2f6
	.uaword	0x390a
	.uleb128 0x2d
	.uaword	0x36b3
	.uleb128 0x2d
	.uaword	0x36a7
	.uleb128 0x2a
	.uaword	0x369b
	.uaword	.LLST71
	.uleb128 0x2e
	.uaword	.Ldebug_ranges0+0xc8
	.uleb128 0x2b
	.uaword	0x36bf
	.uaword	.LLST72
	.uleb128 0x2b
	.uaword	0x36cb
	.uaword	.LLST73
	.uleb128 0x2b
	.uaword	0x36e2
	.uaword	.LLST74
	.uleb128 0x2b
	.uaword	0x36ee
	.uaword	.LLST75
	.uleb128 0x2b
	.uaword	0x36fa
	.uaword	.LLST76
	.uleb128 0x35
	.uaword	0x2cca
	.uaword	.LBB96
	.uaword	.Ldebug_ranges0+0xe0
	.byte	0x1
	.uahalf	0x765
	.uaword	0x38ee
	.uleb128 0x2d
	.uaword	0x2cea
	.uleb128 0x2d
	.uaword	0x2cde
	.uleb128 0x2e
	.uaword	.Ldebug_ranges0+0xe0
	.uleb128 0x2b
	.uaword	0x2cf6
	.uaword	.LLST77
	.uleb128 0x2b
	.uaword	0x2d02
	.uaword	.LLST78
	.uleb128 0x3c
	.uaword	0x2d11
	.uleb128 0x3c
	.uaword	0x2d20
	.uleb128 0x2b
	.uaword	0x2d2c
	.uaword	.LLST79
	.uleb128 0x2b
	.uaword	0x2d38
	.uaword	.LLST80
	.uleb128 0x3c
	.uaword	0x2d47
	.uleb128 0x2b
	.uaword	0x2d53
	.uaword	.LLST81
	.uleb128 0x2b
	.uaword	0x2d65
	.uaword	.LLST82
	.uleb128 0x2b
	.uaword	0x2d75
	.uaword	.LLST83
	.uleb128 0x2e
	.uaword	.Ldebug_ranges0+0x110
	.uleb128 0x2d
	.uaword	0x2cea
	.uleb128 0x2d
	.uaword	0x2cde
	.uleb128 0x2e
	.uaword	.Ldebug_ranges0+0x110
	.uleb128 0x3c
	.uaword	0x2cf6
	.uleb128 0x3c
	.uaword	0x2d02
	.uleb128 0x2b
	.uaword	0x2d11
	.uaword	.LLST84
	.uleb128 0x2b
	.uaword	0x2d20
	.uaword	.LLST85
	.uleb128 0x3c
	.uaword	0x2d2c
	.uleb128 0x3c
	.uaword	0x2d38
	.uleb128 0x2b
	.uaword	0x2d47
	.uaword	.LLST86
	.uleb128 0x3c
	.uaword	0x2d53
	.uleb128 0x3c
	.uaword	0x2d65
	.uleb128 0x3c
	.uaword	0x2d75
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uaword	0x2c8e
	.uaword	.LBB111
	.uaword	.Ldebug_ranges0+0x138
	.byte	0x1
	.uahalf	0x756
	.uleb128 0x2a
	.uaword	0x2cb2
	.uaword	.LLST87
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.uaword	.LVL143
	.uaword	0x2d8d
	.uleb128 0x30
	.byte	0x1
	.byte	0x57
	.byte	0x2
	.byte	0x8
	.byte	0x52
	.uleb128 0x30
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x30
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x30
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x38
	.byte	0x1
	.string	"I2c_AsyncWrite"
	.byte	0x1
	.uahalf	0x31a
	.byte	0x1
	.uaword	0x281f
	.uaword	.LFB23
	.uaword	.LFE23
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x3b78
	.uleb128 0x33
	.uaword	.LASF34
	.byte	0x1
	.uahalf	0x31c
	.uaword	0x2e01
	.uaword	.LLST88
	.uleb128 0x33
	.uaword	.LASF26
	.byte	0x1
	.uahalf	0x31d
	.uaword	0x3677
	.uaword	.LLST89
	.uleb128 0x39
	.string	"Size"
	.byte	0x1
	.uahalf	0x31e
	.uaword	0x2e16
	.uaword	.LLST90
	.uleb128 0x33
	.uaword	.LASF35
	.byte	0x1
	.uahalf	0x31f
	.uaword	0x2e1b
	.uaword	.LLST91
	.uleb128 0x27
	.uaword	.LASF29
	.byte	0x1
	.uahalf	0x322
	.uaword	0x2cc4
	.uaword	.LLST92
	.uleb128 0x27
	.uaword	.LASF39
	.byte	0x1
	.uahalf	0x323
	.uaword	0x2a94
	.uaword	.LLST93
	.uleb128 0x27
	.uaword	.LASF30
	.byte	0x1
	.uahalf	0x324
	.uaword	0x2d87
	.uaword	.LLST94
	.uleb128 0x3e
	.uaword	.LASF36
	.byte	0x1
	.uahalf	0x325
	.uaword	0x281f
	.byte	0x1
	.byte	0x52
	.uleb128 0x35
	.uaword	0x2d8d
	.uaword	.LBB132
	.uaword	.Ldebug_ranges0+0x160
	.byte	0x1
	.uahalf	0x32b
	.uaword	0x3b3f
	.uleb128 0x3f
	.uaword	0x2de2
	.byte	0x53
	.uleb128 0x2a
	.uaword	0x2dd6
	.uaword	.LLST95
	.uleb128 0x2a
	.uaword	0x2dc9
	.uaword	.LLST96
	.uleb128 0x2a
	.uaword	0x2dbd
	.uaword	.LLST89
	.uleb128 0x2a
	.uaword	0x2db1
	.uaword	.LLST98
	.uleb128 0x2e
	.uaword	.Ldebug_ranges0+0x160
	.uleb128 0x2b
	.uaword	0x2df4
	.uaword	.LLST99
	.uleb128 0x2c
	.uaword	.Ldebug_ranges0+0x188
	.uaword	0x3ab1
	.uleb128 0x2a
	.uaword	0x2dbd
	.uaword	.LLST100
	.uleb128 0x2a
	.uaword	0x2dc9
	.uaword	.LLST101
	.uleb128 0x2a
	.uaword	0x2de2
	.uaword	.LLST102
	.uleb128 0x2a
	.uaword	0x2dd6
	.uaword	.LLST103
	.uleb128 0x2a
	.uaword	0x2db1
	.uaword	.LLST104
	.uleb128 0x2e
	.uaword	.Ldebug_ranges0+0x188
	.uleb128 0x2b
	.uaword	0x2df4
	.uaword	.LLST105
	.uleb128 0x2f
	.uaword	.LVL224
	.uaword	0x42a6
	.uaword	0x3a8f
	.uleb128 0x30
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x35
	.uleb128 0x30
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x8
	.byte	0x53
	.uleb128 0x30
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0xff
	.byte	0
	.uleb128 0x31
	.uaword	.LVL232
	.uaword	0x42a6
	.uleb128 0x30
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x34
	.uleb128 0x30
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x8
	.byte	0x53
	.uleb128 0x30
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0xff
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uaword	.LVL209
	.uaword	0x42a6
	.uaword	0x3ad5
	.uleb128 0x30
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x32
	.uleb128 0x30
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x8
	.byte	0x53
	.uleb128 0x30
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0xff
	.byte	0
	.uleb128 0x2f
	.uaword	.LVL213
	.uaword	0x42a6
	.uaword	0x3af9
	.uleb128 0x30
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x31
	.uleb128 0x30
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x8
	.byte	0x53
	.uleb128 0x30
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0xff
	.byte	0
	.uleb128 0x2f
	.uaword	.LVL217
	.uaword	0x42a6
	.uaword	0x3b1d
	.uleb128 0x30
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x36
	.uleb128 0x30
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x8
	.byte	0x53
	.uleb128 0x30
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0xff
	.byte	0
	.uleb128 0x31
	.uaword	.LVL228
	.uaword	0x42a6
	.uleb128 0x30
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x30
	.uleb128 0x30
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x8
	.byte	0x53
	.uleb128 0x30
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0xff
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x35
	.uaword	0x2eec
	.uaword	.LBB147
	.uaword	.Ldebug_ranges0+0x1b8
	.byte	0x1
	.uahalf	0x33d
	.uaword	0x3b5d
	.uleb128 0x2a
	.uaword	0x2f0d
	.uaword	.LLST92
	.byte	0
	.uleb128 0x40
	.uaword	0x2ec1
	.uaword	.LBB152
	.uaword	.LBE152
	.byte	0x1
	.uahalf	0x345
	.uleb128 0x2a
	.uaword	0x2edf
	.uaword	.LLST107
	.byte	0
	.byte	0
	.uleb128 0x38
	.byte	0x1
	.string	"I2c_AsyncRead"
	.byte	0x1
	.uahalf	0x376
	.byte	0x1
	.uaword	0x281f
	.uaword	.LFB24
	.uaword	.LFE24
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x3dbc
	.uleb128 0x33
	.uaword	.LASF34
	.byte	0x1
	.uahalf	0x378
	.uaword	0x2e01
	.uaword	.LLST108
	.uleb128 0x33
	.uaword	.LASF26
	.byte	0x1
	.uahalf	0x379
	.uaword	0x3677
	.uaword	.LLST109
	.uleb128 0x39
	.string	"Size"
	.byte	0x1
	.uahalf	0x37a
	.uaword	0x2e16
	.uaword	.LLST110
	.uleb128 0x33
	.uaword	.LASF35
	.byte	0x1
	.uahalf	0x37b
	.uaword	0x2e1b
	.uaword	.LLST111
	.uleb128 0x27
	.uaword	.LASF29
	.byte	0x1
	.uahalf	0x37e
	.uaword	0x2cc4
	.uaword	.LLST112
	.uleb128 0x27
	.uaword	.LASF30
	.byte	0x1
	.uahalf	0x37f
	.uaword	0x2d87
	.uaword	.LLST113
	.uleb128 0x27
	.uaword	.LASF39
	.byte	0x1
	.uahalf	0x380
	.uaword	0x2a94
	.uaword	.LLST114
	.uleb128 0x3e
	.uaword	.LASF36
	.byte	0x1
	.uahalf	0x381
	.uaword	0x281f
	.byte	0x1
	.byte	0x52
	.uleb128 0x35
	.uaword	0x2d8d
	.uaword	.LBB164
	.uaword	.Ldebug_ranges0+0x1d0
	.byte	0x1
	.uahalf	0x387
	.uaword	0x3d83
	.uleb128 0x3f
	.uaword	0x2de2
	.byte	0x54
	.uleb128 0x2a
	.uaword	0x2dd6
	.uaword	.LLST115
	.uleb128 0x2a
	.uaword	0x2dc9
	.uaword	.LLST116
	.uleb128 0x2a
	.uaword	0x2dbd
	.uaword	.LLST109
	.uleb128 0x2a
	.uaword	0x2db1
	.uaword	.LLST118
	.uleb128 0x2e
	.uaword	.Ldebug_ranges0+0x1d0
	.uleb128 0x2b
	.uaword	0x2df4
	.uaword	.LLST119
	.uleb128 0x2c
	.uaword	.Ldebug_ranges0+0x1f8
	.uaword	0x3cf5
	.uleb128 0x2a
	.uaword	0x2dbd
	.uaword	.LLST120
	.uleb128 0x2a
	.uaword	0x2dc9
	.uaword	.LLST121
	.uleb128 0x2a
	.uaword	0x2de2
	.uaword	.LLST122
	.uleb128 0x2a
	.uaword	0x2dd6
	.uaword	.LLST123
	.uleb128 0x2a
	.uaword	0x2db1
	.uaword	.LLST124
	.uleb128 0x2e
	.uaword	.Ldebug_ranges0+0x1f8
	.uleb128 0x2b
	.uaword	0x2df4
	.uaword	.LLST125
	.uleb128 0x2f
	.uaword	.LVL255
	.uaword	0x42a6
	.uaword	0x3cd3
	.uleb128 0x30
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x35
	.uleb128 0x30
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x8
	.byte	0x54
	.uleb128 0x30
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0xff
	.byte	0
	.uleb128 0x31
	.uaword	.LVL263
	.uaword	0x42a6
	.uleb128 0x30
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x34
	.uleb128 0x30
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x8
	.byte	0x54
	.uleb128 0x30
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0xff
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uaword	.LVL241
	.uaword	0x42a6
	.uaword	0x3d19
	.uleb128 0x30
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x32
	.uleb128 0x30
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x8
	.byte	0x54
	.uleb128 0x30
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0xff
	.byte	0
	.uleb128 0x2f
	.uaword	.LVL245
	.uaword	0x42a6
	.uaword	0x3d3d
	.uleb128 0x30
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x31
	.uleb128 0x30
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x8
	.byte	0x54
	.uleb128 0x30
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0xff
	.byte	0
	.uleb128 0x2f
	.uaword	.LVL249
	.uaword	0x42a6
	.uaword	0x3d61
	.uleb128 0x30
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x36
	.uleb128 0x30
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x8
	.byte	0x54
	.uleb128 0x30
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0xff
	.byte	0
	.uleb128 0x31
	.uaword	.LVL259
	.uaword	0x42a6
	.uleb128 0x30
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x30
	.uleb128 0x30
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x8
	.byte	0x54
	.uleb128 0x30
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0xff
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x35
	.uaword	0x2eec
	.uaword	.LBB179
	.uaword	.Ldebug_ranges0+0x228
	.byte	0x1
	.uahalf	0x39a
	.uaword	0x3da1
	.uleb128 0x2a
	.uaword	0x2f0d
	.uaword	.LLST112
	.byte	0
	.uleb128 0x40
	.uaword	0x2ec1
	.uaword	.LBB184
	.uaword	.LBE184
	.byte	0x1
	.uahalf	0x3a2
	.uleb128 0x2a
	.uaword	0x2edf
	.uaword	.LLST127
	.byte	0
	.byte	0
	.uleb128 0x38
	.byte	0x1
	.string	"I2c_GetStatus"
	.byte	0x1
	.uahalf	0x3ce
	.byte	0x1
	.uaword	0x2702
	.uaword	.LFB25
	.uaword	.LFE25
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x3e2e
	.uleb128 0x33
	.uaword	.LASF34
	.byte	0x1
	.uahalf	0x3d0
	.uaword	0x2e01
	.uaword	.LLST128
	.uleb128 0x28
	.string	"ReturnStatus"
	.byte	0x1
	.uahalf	0x3d3
	.uaword	0x2702
	.uaword	.LLST129
	.uleb128 0x31
	.uaword	.LVL268
	.uaword	0x42a6
	.uleb128 0x30
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x32
	.uleb128 0x30
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x8
	.byte	0x55
	.uleb128 0x30
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0xff
	.byte	0
	.byte	0
	.uleb128 0x38
	.byte	0x1
	.string	"I2c_CancelOperation"
	.byte	0x1
	.uahalf	0x405
	.byte	0x1
	.uaword	0x2653
	.uaword	.LFB26
	.uaword	.LFE26
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x3f7a
	.uleb128 0x33
	.uaword	.LASF34
	.byte	0x1
	.uahalf	0x407
	.uaword	0x2e01
	.uaword	.LLST130
	.uleb128 0x39
	.string	"TransmittedDataSize"
	.byte	0x1
	.uahalf	0x408
	.uaword	0x3f7a
	.uaword	.LLST131
	.uleb128 0x27
	.uaword	.LASF29
	.byte	0x1
	.uahalf	0x40b
	.uaword	0x2cc4
	.uaword	.LLST132
	.uleb128 0x27
	.uaword	.LASF39
	.byte	0x1
	.uahalf	0x40c
	.uaword	0x2a94
	.uaword	.LLST133
	.uleb128 0x27
	.uaword	.LASF30
	.byte	0x1
	.uahalf	0x40d
	.uaword	0x2d87
	.uaword	.LLST134
	.uleb128 0x28
	.string	"RetDataTransmitted"
	.byte	0x1
	.uahalf	0x40e
	.uaword	0x2695
	.uaword	.LLST135
	.uleb128 0x28
	.string	"ReturnValue"
	.byte	0x1
	.uahalf	0x40f
	.uaword	0x2653
	.uaword	.LLST136
	.uleb128 0x3a
	.uaword	0x2c8e
	.uaword	.LBB188
	.uaword	.LBE188
	.byte	0x1
	.uahalf	0x432
	.uaword	0x3f11
	.uleb128 0x2a
	.uaword	0x2cb2
	.uaword	.LLST137
	.byte	0
	.uleb128 0x2f
	.uaword	.LVL279
	.uaword	0x42a6
	.uaword	0x3f35
	.uleb128 0x30
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x31
	.uleb128 0x30
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x8
	.byte	0x56
	.uleb128 0x30
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0xff
	.byte	0
	.uleb128 0x2f
	.uaword	.LVL282
	.uaword	0x42a6
	.uaword	0x3f59
	.uleb128 0x30
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x32
	.uleb128 0x30
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x8
	.byte	0x56
	.uleb128 0x30
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0xff
	.byte	0
	.uleb128 0x31
	.uaword	.LVL285
	.uaword	0x42a6
	.uleb128 0x30
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x30
	.uleb128 0x30
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x8
	.byte	0x56
	.uleb128 0x30
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0xff
	.byte	0
	.byte	0
	.uleb128 0x16
	.uaword	0x3f7f
	.uleb128 0x19
	.byte	0x4
	.uaword	0x2695
	.uleb128 0x32
	.byte	0x1
	.string	"I2c_IsrI2cDtr"
	.byte	0x1
	.uahalf	0x789
	.byte	0x1
	.uaword	.LFB38
	.uaword	.LFE38
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x40c5
	.uleb128 0x33
	.uaword	.LASF25
	.byte	0x1
	.uahalf	0x78b
	.uaword	0x2669
	.uaword	.LLST138
	.uleb128 0x3e
	.uaword	.LASF29
	.byte	0x1
	.uahalf	0x78e
	.uaword	0x2cc4
	.byte	0x1
	.byte	0x6c
	.uleb128 0x27
	.uaword	.LASF30
	.byte	0x1
	.uahalf	0x78f
	.uaword	0x2d87
	.uaword	.LLST139
	.uleb128 0x27
	.uaword	.LASF34
	.byte	0x1
	.uahalf	0x790
	.uaword	0x25cb
	.uaword	.LLST140
	.uleb128 0x35
	.uaword	0x2cca
	.uaword	.LBB194
	.uaword	.Ldebug_ranges0+0x240
	.byte	0x1
	.uahalf	0x79f
	.uaword	0x40b4
	.uleb128 0x2a
	.uaword	0x2cea
	.uaword	.LLST141
	.uleb128 0x2a
	.uaword	0x2cde
	.uaword	.LLST142
	.uleb128 0x2e
	.uaword	.Ldebug_ranges0+0x240
	.uleb128 0x2b
	.uaword	0x2cf6
	.uaword	.LLST143
	.uleb128 0x2b
	.uaword	0x2d02
	.uaword	.LLST144
	.uleb128 0x3c
	.uaword	0x2d11
	.uleb128 0x3c
	.uaword	0x2d20
	.uleb128 0x2b
	.uaword	0x2d2c
	.uaword	.LLST145
	.uleb128 0x2b
	.uaword	0x2d38
	.uaword	.LLST146
	.uleb128 0x3c
	.uaword	0x2d47
	.uleb128 0x2b
	.uaword	0x2d53
	.uaword	.LLST147
	.uleb128 0x2b
	.uaword	0x2d65
	.uaword	.LLST148
	.uleb128 0x3c
	.uaword	0x2d75
	.uleb128 0x2e
	.uaword	.Ldebug_ranges0+0x248
	.uleb128 0x2d
	.uaword	0x2cea
	.uleb128 0x41
	.uaword	0x2cde
	.byte	0x1
	.byte	0x6c
	.uleb128 0x2e
	.uaword	.Ldebug_ranges0+0x248
	.uleb128 0x3c
	.uaword	0x2cf6
	.uleb128 0x3c
	.uaword	0x2d02
	.uleb128 0x2b
	.uaword	0x2d11
	.uaword	.LLST149
	.uleb128 0x2b
	.uaword	0x2d20
	.uaword	.LLST150
	.uleb128 0x3c
	.uaword	0x2d2c
	.uleb128 0x3c
	.uaword	0x2d38
	.uleb128 0x2b
	.uaword	0x2d47
	.uaword	.LLST151
	.uleb128 0x3c
	.uaword	0x2d53
	.uleb128 0x3c
	.uaword	0x2d65
	.uleb128 0x3c
	.uaword	0x2d75
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.uaword	.LVL309
	.uaword	0x2f1a
	.uleb128 0x30
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.string	"I2c_IsrI2cProtocol"
	.byte	0x1
	.uahalf	0x7b8
	.byte	0x1
	.uaword	.LFB39
	.uaword	.LFE39
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x4158
	.uleb128 0x33
	.uaword	.LASF25
	.byte	0x1
	.uahalf	0x7ba
	.uaword	0x2669
	.uaword	.LLST152
	.uleb128 0x27
	.uaword	.LASF39
	.byte	0x1
	.uahalf	0x7bd
	.uaword	0x2a94
	.uaword	.LLST153
	.uleb128 0x27
	.uaword	.LASF30
	.byte	0x1
	.uahalf	0x7be
	.uaword	0x2d87
	.uaword	.LLST154
	.uleb128 0x27
	.uaword	.LASF29
	.byte	0x1
	.uahalf	0x7bf
	.uaword	0x2cc4
	.uaword	.LLST155
	.uleb128 0x27
	.uaword	.LASF40
	.byte	0x1
	.uahalf	0x7c0
	.uaword	0x281f
	.uaword	.LLST156
	.uleb128 0x27
	.uaword	.LASF34
	.byte	0x1
	.uahalf	0x7c1
	.uaword	0x25cb
	.uaword	.LLST157
	.uleb128 0x42
	.uaword	.LVL329
	.byte	0x1
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.string	"I2c_IsrI2cError"
	.byte	0x1
	.uahalf	0x805
	.byte	0x1
	.uaword	.LFB40
	.uaword	.LFE40
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x41e8
	.uleb128 0x33
	.uaword	.LASF25
	.byte	0x1
	.uahalf	0x807
	.uaword	0x2669
	.uaword	.LLST158
	.uleb128 0x27
	.uaword	.LASF39
	.byte	0x1
	.uahalf	0x80a
	.uaword	0x2a94
	.uaword	.LLST159
	.uleb128 0x27
	.uaword	.LASF30
	.byte	0x1
	.uahalf	0x80b
	.uaword	0x2d87
	.uaword	.LLST160
	.uleb128 0x27
	.uaword	.LASF29
	.byte	0x1
	.uahalf	0x80c
	.uaword	0x2cc4
	.uaword	.LLST161
	.uleb128 0x27
	.uaword	.LASF40
	.byte	0x1
	.uahalf	0x80d
	.uaword	0x281f
	.uaword	.LLST162
	.uleb128 0x27
	.uaword	.LASF34
	.byte	0x1
	.uahalf	0x80e
	.uaword	0x25cb
	.uaword	.LLST163
	.uleb128 0x42
	.uaword	.LVL339
	.byte	0x1
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.uaword	0x41f8
	.uaword	0x41f8
	.uleb128 0x11
	.uaword	0x23ec
	.byte	0x1
	.byte	0
	.uleb128 0x19
	.byte	0x4
	.uaword	0x244a
	.uleb128 0x43
	.string	"I2c_HwModuleAddr"
	.byte	0x1
	.uahalf	0x11c
	.uaword	0x421d
	.byte	0x5
	.byte	0x3
	.uaword	I2c_HwModuleAddr
	.uleb128 0x16
	.uaword	0x41e8
	.uleb128 0x43
	.string	"I2c_ConfigPtr"
	.byte	0x1
	.uahalf	0x139
	.uaword	0x2e6b
	.byte	0x5
	.byte	0x3
	.uaword	I2c_ConfigPtr
	.uleb128 0x43
	.string	"I2c_ChannelMap"
	.byte	0x1
	.uahalf	0x157
	.uaword	0x266e
	.byte	0x5
	.byte	0x3
	.uaword	I2c_ChannelMap
	.uleb128 0x43
	.string	"I2c_InitStatus"
	.byte	0x1
	.uahalf	0x15b
	.uaword	0x25cb
	.byte	0x5
	.byte	0x3
	.uaword	I2c_InitStatus
	.uleb128 0x10
	.uaword	0x2c73
	.uaword	0x4288
	.uleb128 0x11
	.uaword	0x23ec
	.byte	0
	.byte	0
	.uleb128 0x43
	.string	"I2c_ChannelInfo"
	.byte	0x1
	.uahalf	0x17c
	.uaword	0x4278
	.byte	0x5
	.byte	0x3
	.uaword	I2c_ChannelInfo
	.uleb128 0x44
	.byte	0x1
	.string	"Det_ReportError"
	.byte	0x8
	.byte	0x70
	.byte	0x1
	.uaword	0x2653
	.byte	0x1
	.uaword	0x42d9
	.uleb128 0x1b
	.uaword	0x25d8
	.uleb128 0x1b
	.uaword	0x25cb
	.uleb128 0x1b
	.uaword	0x25cb
	.uleb128 0x1b
	.uaword	0x25cb
	.byte	0
	.uleb128 0x45
	.byte	0x1
	.string	"Mcal_WritePeripEndInitProtReg"
	.byte	0x9
	.uahalf	0x223
	.byte	0x1
	.byte	0x1
	.uaword	0x430d
	.uleb128 0x1b
	.uaword	0x430d
	.uleb128 0x1b
	.uaword	0x2a2b
	.byte	0
	.uleb128 0x16
	.uaword	0x4312
	.uleb128 0x19
	.byte	0x4
	.uaword	0x4318
	.uleb128 0x46
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
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0x6
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x36
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3c
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x3f
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x40
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
	.uleb128 0x41
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x42
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x2113
	.uleb128 0xa
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x44
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
	.uleb128 0x45
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
	.uleb128 0x46
	.uleb128 0x35
	.byte	0
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL7
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL24
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL8
	.uaword	.LVL10
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x2
	.byte	0x83
	.sleb128 0
	.uaword	.LVL24
	.uaword	.LVL27
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL27
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL13
	.uaword	.LVL15
	.uahalf	0x12
	.byte	0x7f
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x82
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL1
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL28
	.uaword	.LFE34
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL1
	.uaword	.LVL4
	.uahalf	0x2
	.byte	0x85
	.sleb128 8
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL5
	.uaword	.LVL7
	.uahalf	0x2
	.byte	0x85
	.sleb128 8
	.uaword	.LVL7
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL13
	.uaword	.LVL15
	.uahalf	0x6
	.byte	0x7f
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL20
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x2
	.byte	0x85
	.sleb128 8
	.uaword	.LVL24
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL28
	.uaword	.LFE34
	.uahalf	0x2
	.byte	0x85
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL9
	.uaword	.LVL11
	.uahalf	0x7
	.byte	0x85
	.sleb128 12
	.byte	0x94
	.byte	0x2
	.byte	0x31
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LVL28
	.uahalf	0x2
	.byte	0x85
	.sleb128 12
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0xe
	.byte	0x73
	.sleb128 0
	.byte	0x38
	.byte	0x25
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x31
	.byte	0x24
	.byte	0x9
	.byte	0xf0
	.byte	0x21
	.byte	0x9f
	.uaword	.LVL26
	.uaword	.LVL28
	.uahalf	0x10
	.byte	0x85
	.sleb128 12
	.byte	0x94
	.byte	0x2
	.byte	0x38
	.byte	0x25
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x31
	.byte	0x24
	.byte	0x9
	.byte	0xf0
	.byte	0x21
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x6
	.byte	0x76
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x6
	.byte	0x7f
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL27
	.uaword	.LVL28
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL2
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL6
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL24
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL29
	.uaword	.LVL30
	.uahalf	0x3
	.byte	0x7a
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL30
	.uaword	.LFE34
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL3
	.uaword	.LVL5
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL8
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL8
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x3
	.byte	0x7b
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LVL23
	.uahalf	0x3
	.byte	0x7b
	.sleb128 0
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x5b
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL31
	.uaword	.LVL38
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL38
	.uaword	.LVL41
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL41
	.uaword	.LVL43
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL43
	.uaword	.LVL46
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL46
	.uaword	.LVL48
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL48
	.uaword	.LVL51
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL51
	.uaword	.LVL53
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL53
	.uaword	.LVL56
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL56
	.uaword	.LVL57
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL57
	.uaword	.LVL61
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL61
	.uaword	.LVL63
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL63
	.uaword	.LFE33
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL31
	.uaword	.LVL40-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL40-1
	.uaword	.LVL41
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL41
	.uaword	.LVL45-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL45-1
	.uaword	.LVL46
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL46
	.uaword	.LVL50-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL50-1
	.uaword	.LVL51
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL51
	.uaword	.LVL55-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL55-1
	.uaword	.LVL56
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL56
	.uaword	.LVL59-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL59-1
	.uaword	.LVL61
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL61
	.uaword	.LVL65-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL65-1
	.uaword	.LFE33
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL31
	.uaword	.LVL32
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL32
	.uaword	.LVL36
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL36
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
	.uaword	.LVL43
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL43
	.uaword	.LVL61
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL61
	.uaword	.LVL63
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL63
	.uaword	.LFE33
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL31
	.uaword	.LVL34
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL34
	.uaword	.LVL36
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	.LVL36
	.uaword	.LVL37
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL37
	.uaword	.LVL41
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	.LVL41
	.uaword	.LVL42
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL42
	.uaword	.LVL46
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	.LVL46
	.uaword	.LVL47
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL47
	.uaword	.LVL51
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	.LVL51
	.uaword	.LVL52
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL52
	.uaword	.LVL61
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	.LVL61
	.uaword	.LVL62
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL62
	.uaword	.LFE33
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL31
	.uaword	.LVL39
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL39
	.uaword	.LVL41
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.uaword	.LVL41
	.uaword	.LVL44
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL44
	.uaword	.LVL46
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.uaword	.LVL46
	.uaword	.LVL49
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL49
	.uaword	.LVL51
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.uaword	.LVL51
	.uaword	.LVL54
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL54
	.uaword	.LVL56
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.uaword	.LVL56
	.uaword	.LVL58
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL58
	.uaword	.LVL61
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.uaword	.LVL61
	.uaword	.LVL64
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL64
	.uaword	.LFE33
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL35
	.uaword	.LVL36
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL40
	.uaword	.LVL41
	.uahalf	0x2
	.byte	0x37
	.byte	0x9f
	.uaword	.LVL45
	.uaword	.LVL46
	.uahalf	0x2
	.byte	0x3b
	.byte	0x9f
	.uaword	.LVL50
	.uaword	.LVL51
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	.LVL60
	.uaword	.LVL61
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL65
	.uaword	.LFE33
	.uahalf	0x2
	.byte	0x3a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL33
	.uaword	.LVL36
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL51
	.uaword	.LVL55-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL55-1
	.uaword	.LVL56
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL56
	.uaword	.LVL59-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL59-1
	.uaword	.LVL61
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL33
	.uaword	.LVL36
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL51
	.uaword	.LVL54
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL54
	.uaword	.LVL55-1
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL56
	.uaword	.LVL58
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL58
	.uaword	.LVL59-1
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL33
	.uaword	.LVL34
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL51
	.uaword	.LVL52
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL33
	.uaword	.LVL36
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL51
	.uaword	.LVL61
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL55
	.uaword	.LVL56
	.uahalf	0x2
	.byte	0x39
	.byte	0x9f
	.uaword	.LVL59
	.uaword	.LVL61
	.uahalf	0x2
	.byte	0x3c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL66
	.uaword	.LVL69
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL69
	.uaword	.LVL96
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL96
	.uaword	.LVL97-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL97-1
	.uaword	.LVL97
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL97
	.uaword	.LVL98-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL98-1
	.uaword	.LFE19
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL71
	.uaword	.LVL75-1
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL75-1
	.uaword	.LVL92
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL85
	.uaword	.LVL88
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL67
	.uaword	.LVL69
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL70
	.uaword	.LVL84
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL96
	.uaword	.LFE19
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL68
	.uaword	.LVL69
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL70
	.uaword	.LVL88
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL88
	.uaword	.LVL89
	.uahalf	0x3
	.byte	0x7a
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL89
	.uaword	.LVL90
	.uahalf	0x3
	.byte	0x79
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL91
	.uaword	.LVL92
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL92
	.uaword	.LVL93
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL93
	.uaword	.LVL94
	.uahalf	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL72
	.uaword	.LVL95
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL87
	.uaword	.LVL88
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL73
	.uaword	.LVL95
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL73
	.uaword	.LVL95
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL80
	.uaword	.LVL86
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL86
	.uaword	.LVL95
	.uahalf	0x7
	.byte	0x78
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL82
	.uaword	.LVL83
	.uahalf	0x7
	.byte	0x7f
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x33
	.byte	0x25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL74
	.uaword	.LVL86
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL86
	.uaword	.LVL95
	.uahalf	0x7
	.byte	0x78
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL78
	.uaword	.LVL79
	.uahalf	0x7
	.byte	0x72
	.sleb128 0
	.byte	0x32
	.byte	0x1a
	.byte	0x31
	.byte	0x25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL76
	.uaword	.LVL77
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x100
	.byte	0x9f
	.uaword	.LVL77
	.uaword	.LVL82
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL85
	.uaword	.LVL88
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL85
	.uaword	.LVL88
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL85
	.uaword	.LVL86
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL86
	.uaword	.LVL88
	.uahalf	0x7
	.byte	0x78
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL100
	.uaword	.LVL106
	.uahalf	0x6
	.byte	0x3
	.uaword	I2c_ChannelInfo
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL103
	.uaword	.LVL104
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL104
	.uaword	.LVL105-1
	.uahalf	0x2
	.byte	0x82
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL99
	.uaword	.LVL107
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL107
	.uaword	.LFE20
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL100
	.uaword	.LVL105
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL105
	.uaword	.LVL106
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST42:
	.uaword	.LVL101
	.uaword	.LVL102
	.uahalf	0x7
	.byte	0x3
	.uaword	I2c_ConfigPtr
	.byte	0x6
	.byte	0x6
	.uaword	0
	.uaword	0
.LLST44:
	.uaword	.LVL108
	.uaword	.LVL109-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL109-1
	.uaword	.LFE21
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST45:
	.uaword	.LVL108
	.uaword	.LVL109-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL109-1
	.uaword	.LFE21
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST46:
	.uaword	.LVL108
	.uaword	.LVL109-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL109-1
	.uaword	.LFE21
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST47:
	.uaword	.LVL108
	.uaword	.LVL109-1
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL109-1
	.uaword	.LFE21
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST48:
	.uaword	.LVL114
	.uaword	.LVL128
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL129
	.uaword	.LFE21
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST49:
	.uaword	.LVL113
	.uaword	.LVL118
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL129
	.uaword	.LVL130
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST50:
	.uaword	.LVL111
	.uaword	.LVL128
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL129
	.uaword	.LFE21
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST51:
	.uaword	.LVL110
	.uaword	.LVL112
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL112
	.uaword	.LVL125
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL128
	.uaword	.LVL135
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL136
	.uaword	.LVL137
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL138
	.uaword	.LVL139
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL140
	.uaword	.LVL141
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST52:
	.uaword	.LVL115
	.uaword	.LVL116
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST53:
	.uaword	.LVL117
	.uaword	.LVL128
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL130
	.uaword	.LFE21
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST54:
	.uaword	.LVL117
	.uaword	.LVL128
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL130
	.uaword	.LFE21
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST55:
	.uaword	.LVL119
	.uaword	.LVL125
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL125
	.uaword	.LVL127
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL130
	.uaword	.LFE21
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST56:
	.uaword	.LVL119
	.uaword	.LVL125
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL125
	.uaword	.LVL127
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL130
	.uaword	.LFE21
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST57:
	.uaword	.LVL120
	.uaword	.LVL122
	.uahalf	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL122
	.uaword	.LVL126
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL130
	.uaword	.LVL131-1
	.uahalf	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL134
	.uaword	.LFE21
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST58:
	.uaword	.LVL121
	.uaword	.LVL123
	.uahalf	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0x7f
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL123
	.uaword	.LVL124
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL124
	.uaword	.LVL127
	.uahalf	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0x7f
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL130
	.uaword	.LVL131-1
	.uahalf	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0x7f
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL134
	.uaword	.LFE21
	.uahalf	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0x7f
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST59:
	.uaword	.LVL119
	.uaword	.LVL127
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL130
	.uaword	.LVL132
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL132
	.uaword	.LVL133
	.uahalf	0x3
	.byte	0x79
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL133
	.uaword	.LFE21
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST60:
	.uaword	.LVL125
	.uaword	.LVL127
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST61:
	.uaword	.LFB22
	.uaword	.LCFI0
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0
	.uaword	.LFE22
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST62:
	.uaword	.LVL142
	.uaword	.LVL143-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL143-1
	.uaword	.LFE22
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST63:
	.uaword	.LVL142
	.uaword	.LVL143-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL143-1
	.uaword	.LVL154
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL154
	.uaword	.LVL165
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL165
	.uaword	.LVL167
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL167
	.uaword	.LFE22
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST64:
	.uaword	.LVL142
	.uaword	.LVL143-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL143-1
	.uaword	.LFE22
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST65:
	.uaword	.LVL142
	.uaword	.LVL143-1
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL143-1
	.uaword	.LFE22
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST66:
	.uaword	.LVL148
	.uaword	.LVL165
	.uahalf	0x1
	.byte	0x63
	.uaword	.LVL166
	.uaword	.LFE22
	.uahalf	0x1
	.byte	0x63
	.uaword	0
	.uaword	0
.LLST67:
	.uaword	.LVL144
	.uaword	.LVL146
	.uahalf	0xb
	.byte	0x7f
	.sleb128 0
	.byte	0x34
	.byte	0x24
	.byte	0x3
	.uaword	I2c_ChannelInfo
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST68:
	.uaword	.LVL147
	.uaword	.LVL152
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL166
	.uaword	.LVL167
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST69:
	.uaword	.LVL143
	.uaword	.LVL145
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL165
	.uaword	.LVL166
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST70:
	.uaword	.LVL149
	.uaword	.LVL150
	.uahalf	0x1
	.byte	0x63
	.uaword	0
	.uaword	0
.LLST71:
	.uaword	.LVL151
	.uaword	.LVL165
	.uahalf	0x1
	.byte	0x63
	.uaword	.LVL167
	.uaword	.LFE22
	.uahalf	0x1
	.byte	0x63
	.uaword	0
	.uaword	0
.LLST72:
	.uaword	.LVL153
	.uaword	.LVL155
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL161
	.uaword	.LVL162
	.uahalf	0x2
	.byte	0x3d
	.byte	0x9f
	.uaword	.LVL184
	.uaword	.LVL185
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL185
	.uaword	.LVL186
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL186
	.uaword	.LVL187
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL189
	.uaword	.LVL190
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	.LVL197
	.uaword	.LVL198
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST73:
	.uaword	.LVL153
	.uaword	.LVL163
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL163
	.uaword	.LVL164
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL167
	.uaword	.LFE22
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST74:
	.uaword	.LVL156
	.uaword	.LVL158
	.uahalf	0x5
	.byte	0x7f
	.sleb128 0
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL158
	.uaword	.LVL160
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST75:
	.uaword	.LVL157
	.uaword	.LVL159
	.uahalf	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0x7f
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL159
	.uaword	.LVL164
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL167
	.uaword	.LVL169
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL184
	.uaword	.LVL188
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL189
	.uaword	.LVL190
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL197
	.uaword	.LVL198
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST76:
	.uaword	.LVL153
	.uaword	.LVL155
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST77:
	.uaword	.LVL171
	.uaword	.LVL183
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST78:
	.uaword	.LVL173
	.uaword	.LVL182
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST79:
	.uaword	.LVL169
	.uaword	.LVL172
	.uahalf	0x2
	.byte	0x85
	.sleb128 2
	.uaword	.LVL177
	.uaword	.LVL179
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL190
	.uaword	.LVL196
	.uahalf	0x2
	.byte	0x85
	.sleb128 2
	.uaword	.LVL198
	.uaword	.LFE22
	.uahalf	0x2
	.byte	0x85
	.sleb128 2
	.uaword	0
	.uaword	0
.LLST80:
	.uaword	.LVL170
	.uaword	.LVL172
	.uahalf	0x2
	.byte	0x87
	.sleb128 0
	.uaword	.LVL172
	.uaword	.LVL174
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL175
	.uaword	.LVL176
	.uahalf	0x6
	.byte	0x7f
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL176
	.uaword	.LVL177
	.uahalf	0x6
	.byte	0x76
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL177
	.uaword	.LVL179
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL181
	.uaword	.LVL182
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL190
	.uaword	.LVL196
	.uahalf	0x2
	.byte	0x87
	.sleb128 0
	.uaword	.LVL196
	.uaword	.LVL197
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL198
	.uaword	.LFE22
	.uahalf	0x2
	.byte	0x87
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST81:
	.uaword	.LVL171
	.uaword	.LVL172
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL172
	.uaword	.LVL180
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL180
	.uaword	.LVL181
	.uahalf	0x3
	.byte	0x79
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST82:
	.uaword	.LVL173
	.uaword	.LVL174
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL177
	.uaword	.LVL178
	.uahalf	0x3
	.byte	0x76
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL178
	.uaword	.LVL179
	.uahalf	0x3
	.byte	0x76
	.sleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST83:
	.uaword	.LVL171
	.uaword	.LVL172
	.uahalf	0x6
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST84:
	.uaword	.LVL193
	.uaword	.LVL194
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL194
	.uaword	.LVL196
	.uahalf	0x2
	.byte	0x82
	.sleb128 0
	.uaword	.LVL199
	.uaword	.LFE22
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST85:
	.uaword	.LVL191
	.uaword	.LVL196
	.uahalf	0x2
	.byte	0x86
	.sleb128 0
	.uaword	.LVL198
	.uaword	.LFE22
	.uahalf	0x2
	.byte	0x86
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST86:
	.uaword	.LVL192
	.uaword	.LVL195
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL195
	.uaword	.LVL196
	.uahalf	0x10
	.byte	0x86
	.sleb128 0
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x38
	.byte	0x25
	.byte	0x31
	.byte	0x24
	.byte	0x9
	.byte	0xf0
	.byte	0x21
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST87:
	.uaword	.LVL162
	.uaword	.LVL164
	.uahalf	0x1
	.byte	0x63
	.uaword	.LVL187
	.uaword	.LVL189
	.uahalf	0x1
	.byte	0x63
	.uaword	.LVL197
	.uaword	.LVL198
	.uahalf	0x1
	.byte	0x63
	.uaword	0
	.uaword	0
.LLST88:
	.uaword	.LVL200
	.uaword	.LVL207
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL207
	.uaword	.LVL210
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL210
	.uaword	.LVL211
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL211
	.uaword	.LVL214
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL214
	.uaword	.LVL215
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL215
	.uaword	.LVL218
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL218
	.uaword	.LVL222
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL222
	.uaword	.LVL225
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL225
	.uaword	.LVL226
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL226
	.uaword	.LVL229
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL229
	.uaword	.LVL230
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL230
	.uaword	.LFE23
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST89:
	.uaword	.LVL200
	.uaword	.LVL209-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL209-1
	.uaword	.LVL210
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL210
	.uaword	.LVL213-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL213-1
	.uaword	.LVL214
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL214
	.uaword	.LVL217-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL217-1
	.uaword	.LVL218
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL218
	.uaword	.LVL224-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL224-1
	.uaword	.LVL225
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL225
	.uaword	.LVL228-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL228-1
	.uaword	.LVL229
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL229
	.uaword	.LVL232-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL232-1
	.uaword	.LFE23
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST90:
	.uaword	.LVL200
	.uaword	.LVL205
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL205
	.uaword	.LVL206
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL206
	.uaword	.LVL207
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL207
	.uaword	.LVL210
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL210
	.uaword	.LVL211
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL211
	.uaword	.LVL214
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL214
	.uaword	.LVL215
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL215
	.uaword	.LVL218
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL218
	.uaword	.LVL220
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL220
	.uaword	.LVL221
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL221
	.uaword	.LVL222
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL222
	.uaword	.LVL225
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL225
	.uaword	.LVL226
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL226
	.uaword	.LVL229
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL229
	.uaword	.LVL230
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL230
	.uaword	.LFE23
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST91:
	.uaword	.LVL200
	.uaword	.LVL208
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL208
	.uaword	.LVL210
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	.LVL210
	.uaword	.LVL212
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL212
	.uaword	.LVL214
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	.LVL214
	.uaword	.LVL216
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL216
	.uaword	.LVL218
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	.LVL218
	.uaword	.LVL223
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL223
	.uaword	.LVL225
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	.LVL225
	.uaword	.LVL227
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL227
	.uaword	.LVL229
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	.LVL229
	.uaword	.LVL231
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL231
	.uaword	.LFE23
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST92:
	.uaword	.LVL204
	.uaword	.LVL206
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL218
	.uaword	.LVL221
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST93:
	.uaword	.LVL203
	.uaword	.LVL206
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL218
	.uaword	.LVL221
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST94:
	.uaword	.LVL202
	.uaword	.LVL206
	.uahalf	0x6
	.byte	0x3
	.uaword	I2c_ChannelInfo
	.byte	0x9f
	.uaword	.LVL218
	.uaword	.LVL221
	.uahalf	0x6
	.byte	0x3
	.uaword	I2c_ChannelInfo
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST95:
	.uaword	.LVL200
	.uaword	.LVL208
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL210
	.uaword	.LVL212
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL214
	.uaword	.LVL216
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL218
	.uaword	.LVL223
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL225
	.uaword	.LVL227
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL229
	.uaword	.LVL231
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST96:
	.uaword	.LVL200
	.uaword	.LVL205
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL205
	.uaword	.LVL206
	.uahalf	0x3
	.byte	0x75
	.sleb128 -2
	.byte	0x9f
	.uaword	.LVL206
	.uaword	.LVL207
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL210
	.uaword	.LVL211
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL214
	.uaword	.LVL215
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL218
	.uaword	.LVL220
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL220
	.uaword	.LVL221
	.uahalf	0x3
	.byte	0x75
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL221
	.uaword	.LVL222
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL225
	.uaword	.LVL226
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL229
	.uaword	.LVL230
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST98:
	.uaword	.LVL200
	.uaword	.LVL207
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL210
	.uaword	.LVL211
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL214
	.uaword	.LVL215
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL218
	.uaword	.LVL222
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL225
	.uaword	.LVL226
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL229
	.uaword	.LVL230
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST99:
	.uaword	.LVL202
	.uaword	.LVL206
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL209
	.uaword	.LVL210
	.uahalf	0x2
	.byte	0x37
	.byte	0x9f
	.uaword	.LVL213
	.uaword	.LVL214
	.uahalf	0x2
	.byte	0x3b
	.byte	0x9f
	.uaword	.LVL217
	.uaword	.LVL218
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	.LVL218
	.uaword	.LVL221
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL228
	.uaword	.LVL229
	.uahalf	0x2
	.byte	0x3a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST100:
	.uaword	.LVL201
	.uaword	.LVL206
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL218
	.uaword	.LVL224-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL224-1
	.uaword	.LVL225
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL229
	.uaword	.LVL232-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL232-1
	.uaword	.LFE23
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST101:
	.uaword	.LVL201
	.uaword	.LVL205
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL205
	.uaword	.LVL206
	.uahalf	0x3
	.byte	0x75
	.sleb128 -2
	.byte	0x9f
	.uaword	.LVL218
	.uaword	.LVL220
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL220
	.uaword	.LVL221
	.uahalf	0x3
	.byte	0x75
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL221
	.uaword	.LVL222
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL229
	.uaword	.LVL230
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST102:
	.uaword	.LVL201
	.uaword	.LVL206
	.uahalf	0x3
	.byte	0x8
	.byte	0x53
	.byte	0x9f
	.uaword	.LVL218
	.uaword	.LVL225
	.uahalf	0x3
	.byte	0x8
	.byte	0x53
	.byte	0x9f
	.uaword	.LVL229
	.uaword	.LFE23
	.uahalf	0x3
	.byte	0x8
	.byte	0x53
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST103:
	.uaword	.LVL201
	.uaword	.LVL206
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL218
	.uaword	.LVL223
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL229
	.uaword	.LVL231
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST104:
	.uaword	.LVL201
	.uaword	.LVL206
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL218
	.uaword	.LVL225
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL229
	.uaword	.LFE23
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST105:
	.uaword	.LVL224
	.uaword	.LVL225
	.uahalf	0x2
	.byte	0x39
	.byte	0x9f
	.uaword	.LVL232
	.uaword	.LFE23
	.uahalf	0x2
	.byte	0x3c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST107:
	.uaword	.LVL218
	.uaword	.LVL219
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST108:
	.uaword	.LVL233
	.uaword	.LVL239
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL239
	.uaword	.LVL242
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL242
	.uaword	.LVL243
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL243
	.uaword	.LVL246
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL246
	.uaword	.LVL247
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL247
	.uaword	.LVL250
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL250
	.uaword	.LVL253
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL253
	.uaword	.LVL256
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL256
	.uaword	.LVL257
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL257
	.uaword	.LVL260
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL260
	.uaword	.LVL261
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL261
	.uaword	.LFE24
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST109:
	.uaword	.LVL233
	.uaword	.LVL241-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL241-1
	.uaword	.LVL242
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL242
	.uaword	.LVL245-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL245-1
	.uaword	.LVL246
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL246
	.uaword	.LVL249-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL249-1
	.uaword	.LVL250
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL250
	.uaword	.LVL255-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL255-1
	.uaword	.LVL256
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL256
	.uaword	.LVL259-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL259-1
	.uaword	.LVL260
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL260
	.uaword	.LVL263-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL263-1
	.uaword	.LFE24
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST110:
	.uaword	.LVL233
	.uaword	.LVL239
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL239
	.uaword	.LVL242
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL242
	.uaword	.LVL243
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL243
	.uaword	.LVL246
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL246
	.uaword	.LVL247
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL247
	.uaword	.LVL250
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL250
	.uaword	.LVL253
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL253
	.uaword	.LVL256
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL256
	.uaword	.LVL257
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL257
	.uaword	.LVL260
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL260
	.uaword	.LVL261
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL261
	.uaword	.LFE24
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST111:
	.uaword	.LVL233
	.uaword	.LVL240
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL240
	.uaword	.LVL242
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	.LVL242
	.uaword	.LVL244
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL244
	.uaword	.LVL246
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	.LVL246
	.uaword	.LVL248
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL248
	.uaword	.LVL250
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	.LVL250
	.uaword	.LVL254
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL254
	.uaword	.LVL256
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	.LVL256
	.uaword	.LVL258
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL258
	.uaword	.LVL260
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	.LVL260
	.uaword	.LVL262
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL262
	.uaword	.LFE24
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST112:
	.uaword	.LVL237
	.uaword	.LVL238
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL250
	.uaword	.LVL252
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST113:
	.uaword	.LVL235
	.uaword	.LVL238
	.uahalf	0x6
	.byte	0x3
	.uaword	I2c_ChannelInfo
	.byte	0x9f
	.uaword	.LVL250
	.uaword	.LVL252
	.uahalf	0x6
	.byte	0x3
	.uaword	I2c_ChannelInfo
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST114:
	.uaword	.LVL236
	.uaword	.LVL238
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL250
	.uaword	.LVL252
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST115:
	.uaword	.LVL233
	.uaword	.LVL240
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL242
	.uaword	.LVL244
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL246
	.uaword	.LVL248
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL250
	.uaword	.LVL254
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL256
	.uaword	.LVL258
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL260
	.uaword	.LVL262
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST116:
	.uaword	.LVL233
	.uaword	.LVL239
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL242
	.uaword	.LVL243
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL246
	.uaword	.LVL247
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL250
	.uaword	.LVL253
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL256
	.uaword	.LVL257
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL260
	.uaword	.LVL261
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST118:
	.uaword	.LVL233
	.uaword	.LVL239
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL242
	.uaword	.LVL243
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL246
	.uaword	.LVL247
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL250
	.uaword	.LVL253
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL256
	.uaword	.LVL257
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL260
	.uaword	.LVL261
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST119:
	.uaword	.LVL235
	.uaword	.LVL238
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL241
	.uaword	.LVL242
	.uahalf	0x2
	.byte	0x37
	.byte	0x9f
	.uaword	.LVL245
	.uaword	.LVL246
	.uahalf	0x2
	.byte	0x3b
	.byte	0x9f
	.uaword	.LVL249
	.uaword	.LVL250
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	.LVL250
	.uaword	.LVL252
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL259
	.uaword	.LVL260
	.uahalf	0x2
	.byte	0x3a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST120:
	.uaword	.LVL234
	.uaword	.LVL238
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL250
	.uaword	.LVL255-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL255-1
	.uaword	.LVL256
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL260
	.uaword	.LVL263-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL263-1
	.uaword	.LFE24
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST121:
	.uaword	.LVL234
	.uaword	.LVL238
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL250
	.uaword	.LVL253
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL260
	.uaword	.LVL261
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST122:
	.uaword	.LVL234
	.uaword	.LVL238
	.uahalf	0x3
	.byte	0x8
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL250
	.uaword	.LVL256
	.uahalf	0x3
	.byte	0x8
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL260
	.uaword	.LFE24
	.uahalf	0x3
	.byte	0x8
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST123:
	.uaword	.LVL234
	.uaword	.LVL238
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL250
	.uaword	.LVL254
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL260
	.uaword	.LVL262
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST124:
	.uaword	.LVL234
	.uaword	.LVL238
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL250
	.uaword	.LVL256
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL260
	.uaword	.LFE24
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST125:
	.uaword	.LVL255
	.uaword	.LVL256
	.uahalf	0x2
	.byte	0x39
	.byte	0x9f
	.uaword	.LVL263
	.uaword	.LFE24
	.uahalf	0x2
	.byte	0x3c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST127:
	.uaword	.LVL250
	.uaword	.LVL251
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST128:
	.uaword	.LVL264
	.uaword	.LVL267
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL267
	.uaword	.LFE25
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST129:
	.uaword	.LVL265
	.uaword	.LVL266
	.uahalf	0x5
	.byte	0x3
	.uaword	I2c_ChannelInfo+4
	.uaword	.LVL268
	.uaword	.LFE25
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST130:
	.uaword	.LVL269
	.uaword	.LVL278
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL278
	.uaword	.LVL280
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL280
	.uaword	.LVL281
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL281
	.uaword	.LVL283
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL283
	.uaword	.LVL284
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL284
	.uaword	.LFE26
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST131:
	.uaword	.LVL269
	.uaword	.LVL279-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL279-1
	.uaword	.LVL280
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL280
	.uaword	.LVL282-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL282-1
	.uaword	.LVL283
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL283
	.uaword	.LVL285-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL285-1
	.uaword	.LFE26
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST132:
	.uaword	.LVL271
	.uaword	.LVL273
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST133:
	.uaword	.LVL270
	.uaword	.LVL272
	.uahalf	0x6
	.byte	0x3
	.uaword	I2c_ConfigPtr
	.byte	0x6
	.uaword	0
	.uaword	0
.LLST134:
	.uaword	.LVL271
	.uaword	.LVL277
	.uahalf	0x6
	.byte	0x3
	.uaword	I2c_ChannelInfo
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST135:
	.uaword	.LVL274
	.uaword	.LVL275
	.uahalf	0x5
	.byte	0x3
	.uaword	I2c_ChannelInfo+8
	.uaword	.LVL275
	.uaword	.LVL277
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST136:
	.uaword	.LVL275
	.uaword	.LVL276
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL276
	.uaword	.LVL277
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL277
	.uaword	.LFE26
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST137:
	.uaword	.LVL272
	.uaword	.LVL273
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST138:
	.uaword	.LVL286
	.uaword	.LVL292
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL292
	.uaword	.LVL308
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL308
	.uaword	.LVL309-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL309-1
	.uaword	.LFE38
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST139:
	.uaword	.LVL288
	.uaword	.LVL289
	.uahalf	0xb
	.byte	0x7f
	.sleb128 0
	.byte	0x34
	.byte	0x24
	.byte	0x3
	.uaword	I2c_ChannelInfo
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL289
	.uaword	.LVL291
	.uahalf	0x10
	.byte	0x8f
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x34
	.byte	0x24
	.byte	0x3
	.uaword	I2c_ChannelInfo
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL291
	.uaword	.LVL292
	.uahalf	0x16
	.byte	0x74
	.sleb128 0
	.byte	0x3
	.uaword	I2c_ChannelMap
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x34
	.byte	0x24
	.byte	0x3
	.uaword	I2c_ChannelInfo
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL308
	.uaword	.LVL309-1
	.uahalf	0x10
	.byte	0x8f
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x34
	.byte	0x24
	.byte	0x3
	.uaword	I2c_ChannelInfo
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST140:
	.uaword	.LVL287
	.uaword	.LVL292
	.uahalf	0x8
	.byte	0x74
	.sleb128 0
	.byte	0x3
	.uaword	I2c_ChannelMap
	.byte	0x22
	.uaword	.LVL308
	.uaword	.LVL309-1
	.uahalf	0x8
	.byte	0x74
	.sleb128 0
	.byte	0x3
	.uaword	I2c_ChannelMap
	.byte	0x22
	.uaword	0
	.uaword	0
.LLST141:
	.uaword	.LVL290
	.uaword	.LVL291
	.uahalf	0x10
	.byte	0x8f
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x34
	.byte	0x24
	.byte	0x3
	.uaword	I2c_ChannelInfo
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL291
	.uaword	.LVL292
	.uahalf	0x16
	.byte	0x74
	.sleb128 0
	.byte	0x3
	.uaword	I2c_ChannelMap
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x34
	.byte	0x24
	.byte	0x3
	.uaword	I2c_ChannelInfo
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST142:
	.uaword	.LVL290
	.uaword	.LVL307
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL310
	.uaword	.LFE38
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST143:
	.uaword	.LVL295
	.uaword	.LVL307
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST144:
	.uaword	.LVL297
	.uaword	.LVL307
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST145:
	.uaword	.LVL293
	.uaword	.LVL298
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL298
	.uaword	.LVL299
	.uahalf	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL302
	.uaword	.LVL304
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL306
	.uaword	.LVL307
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL310
	.uaword	.LVL312
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL312
	.uaword	.LVL314
	.uahalf	0x2
	.byte	0x84
	.sleb128 2
	.uaword	.LVL315
	.uaword	.LVL320
	.uahalf	0x2
	.byte	0x84
	.sleb128 2
	.uaword	0
	.uaword	0
.LLST146:
	.uaword	.LVL294
	.uaword	.LVL296
	.uahalf	0x2
	.byte	0x83
	.sleb128 0
	.uaword	.LVL296
	.uaword	.LVL299
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL300
	.uaword	.LVL301
	.uahalf	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL301
	.uaword	.LVL302
	.uahalf	0x6
	.byte	0x7f
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL302
	.uaword	.LVL304
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL306
	.uaword	.LVL307
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL310
	.uaword	.LVL314
	.uahalf	0x2
	.byte	0x83
	.sleb128 0
	.uaword	.LVL314
	.uaword	.LVL315
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL315
	.uaword	.LVL320
	.uahalf	0x2
	.byte	0x83
	.sleb128 0
	.uaword	.LVL320
	.uaword	.LFE38
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST147:
	.uaword	.LVL295
	.uaword	.LVL296
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL296
	.uaword	.LVL305
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL305
	.uaword	.LVL306
	.uahalf	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST148:
	.uaword	.LVL297
	.uaword	.LVL299
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL302
	.uaword	.LVL303
	.uahalf	0x3
	.byte	0x7f
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL303
	.uaword	.LVL304
	.uahalf	0x3
	.byte	0x7f
	.sleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST149:
	.uaword	.LVL313
	.uaword	.LVL314
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL317
	.uaword	.LVL318
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL318
	.uaword	.LVL320
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST150:
	.uaword	.LVL311
	.uaword	.LVL314
	.uahalf	0x2
	.byte	0x85
	.sleb128 12
	.uaword	.LVL315
	.uaword	.LVL320
	.uahalf	0x2
	.byte	0x85
	.sleb128 12
	.uaword	0
	.uaword	0
.LLST151:
	.uaword	.LVL316
	.uaword	.LVL319
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL319
	.uaword	.LVL320
	.uahalf	0x10
	.byte	0x85
	.sleb128 12
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x38
	.byte	0x25
	.byte	0x31
	.byte	0x24
	.byte	0x9
	.byte	0xf0
	.byte	0x21
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST152:
	.uaword	.LVL321
	.uaword	.LVL326
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL326
	.uaword	.LVL329
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL329
	.uaword	.LVL330
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL330
	.uaword	.LFE39
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST153:
	.uaword	.LVL325
	.uaword	.LVL329-1
	.uahalf	0xc
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x30
	.byte	0x1e
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL329
	.uaword	.LFE39
	.uahalf	0xc
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x30
	.byte	0x1e
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST154:
	.uaword	.LVL324
	.uaword	.LVL329-1
	.uahalf	0xe
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x34
	.byte	0x24
	.byte	0x3
	.uaword	I2c_ChannelInfo
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL329
	.uaword	.LFE39
	.uahalf	0xe
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x34
	.byte	0x24
	.byte	0x3
	.uaword	I2c_ChannelInfo
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST155:
	.uaword	.LVL324
	.uaword	.LVL328
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL329
	.uaword	.LVL330
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST156:
	.uaword	.LVL327
	.uaword	.LVL329-1
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST157:
	.uaword	.LVL322
	.uaword	.LVL323
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL323
	.uaword	.LVL326
	.uahalf	0x8
	.byte	0x74
	.sleb128 0
	.byte	0x3
	.uaword	I2c_ChannelMap
	.byte	0x22
	.uaword	.LVL326
	.uaword	.LVL329-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL329
	.uaword	.LVL330
	.uahalf	0x8
	.byte	0x74
	.sleb128 0
	.byte	0x3
	.uaword	I2c_ChannelMap
	.byte	0x22
	.uaword	.LVL330
	.uaword	.LFE39
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST158:
	.uaword	.LVL331
	.uaword	.LVL336
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL336
	.uaword	.LFE40
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST159:
	.uaword	.LVL335
	.uaword	.LVL339-1
	.uahalf	0xc
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x30
	.byte	0x1e
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL339
	.uaword	.LFE40
	.uahalf	0xc
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x30
	.byte	0x1e
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST160:
	.uaword	.LVL334
	.uaword	.LVL339-1
	.uahalf	0xe
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x34
	.byte	0x24
	.byte	0x3
	.uaword	I2c_ChannelInfo
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL339
	.uaword	.LFE40
	.uahalf	0xe
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x34
	.byte	0x24
	.byte	0x3
	.uaword	I2c_ChannelInfo
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST161:
	.uaword	.LVL334
	.uaword	.LVL338
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST162:
	.uaword	.LVL337
	.uaword	.LVL339-1
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST163:
	.uaword	.LVL332
	.uaword	.LVL333
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL333
	.uaword	.LVL336
	.uahalf	0x8
	.byte	0x74
	.sleb128 0
	.byte	0x3
	.uaword	I2c_ChannelMap
	.byte	0x22
	.uaword	.LVL336
	.uaword	.LVL339-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL339
	.uaword	.LFE40
	.uahalf	0x1
	.byte	0x52
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
	.uaword	.LFB34
	.uaword	.LFE34-.LFB34
	.uaword	.LFB33
	.uaword	.LFE33-.LFB33
	.uaword	.LFB19
	.uaword	.LFE19-.LFB19
	.uaword	.LFB20
	.uaword	.LFE20-.LFB20
	.uaword	.LFB21
	.uaword	.LFE21-.LFB21
	.uaword	.LFB22
	.uaword	.LFE22-.LFB22
	.uaword	.LFB23
	.uaword	.LFE23-.LFB23
	.uaword	.LFB24
	.uaword	.LFE24-.LFB24
	.uaword	.LFB25
	.uaword	.LFE25-.LFB25
	.uaword	.LFB26
	.uaword	.LFE26-.LFB26
	.uaword	.LFB38
	.uaword	.LFE38-.LFB38
	.uaword	.LFB39
	.uaword	.LFE39-.LFB39
	.uaword	.LFB40
	.uaword	.LFE40-.LFB40
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB28
	.uaword	.LBE28
	.uaword	.LBB31
	.uaword	.LBE31
	.uaword	0
	.uaword	0
	.uaword	.LBB40
	.uaword	.LBE40
	.uaword	.LBB62
	.uaword	.LBE62
	.uaword	0
	.uaword	0
	.uaword	.LBB43
	.uaword	.LBE43
	.uaword	.LBB55
	.uaword	.LBE55
	.uaword	.LBB56
	.uaword	.LBE56
	.uaword	.LBB57
	.uaword	.LBE57
	.uaword	.LBB63
	.uaword	.LBE63
	.uaword	0
	.uaword	0
	.uaword	.LBB45
	.uaword	.LBE45
	.uaword	.LBB49
	.uaword	.LBE49
	.uaword	.LBB50
	.uaword	.LBE50
	.uaword	0
	.uaword	0
	.uaword	.LBB58
	.uaword	.LBE58
	.uaword	.LBB61
	.uaword	.LBE61
	.uaword	0
	.uaword	0
	.uaword	.LBB64
	.uaword	.LBE64
	.uaword	.LBB67
	.uaword	.LBE67
	.uaword	0
	.uaword	0
	.uaword	.LBB76
	.uaword	.LBE76
	.uaword	.LBB81
	.uaword	.LBE81
	.uaword	0
	.uaword	0
	.uaword	.LBB94
	.uaword	.LBE94
	.uaword	.LBB123
	.uaword	.LBE123
	.uaword	0
	.uaword	0
	.uaword	.LBB96
	.uaword	.LBE96
	.uaword	.LBB110
	.uaword	.LBE110
	.uaword	.LBB118
	.uaword	.LBE118
	.uaword	.LBB119
	.uaword	.LBE119
	.uaword	.LBB121
	.uaword	.LBE121
	.uaword	0
	.uaword	0
	.uaword	.LBB98
	.uaword	.LBE98
	.uaword	.LBB103
	.uaword	.LBE103
	.uaword	.LBB104
	.uaword	.LBE104
	.uaword	.LBB105
	.uaword	.LBE105
	.uaword	0
	.uaword	0
	.uaword	.LBB111
	.uaword	.LBE111
	.uaword	.LBB116
	.uaword	.LBE116
	.uaword	.LBB117
	.uaword	.LBE117
	.uaword	.LBB120
	.uaword	.LBE120
	.uaword	0
	.uaword	0
	.uaword	.LBB132
	.uaword	.LBE132
	.uaword	.LBB151
	.uaword	.LBE151
	.uaword	.LBB154
	.uaword	.LBE154
	.uaword	.LBB155
	.uaword	.LBE155
	.uaword	0
	.uaword	0
	.uaword	.LBB134
	.uaword	.LBE134
	.uaword	.LBB140
	.uaword	.LBE140
	.uaword	.LBB141
	.uaword	.LBE141
	.uaword	.LBB142
	.uaword	.LBE142
	.uaword	.LBB143
	.uaword	.LBE143
	.uaword	0
	.uaword	0
	.uaword	.LBB147
	.uaword	.LBE147
	.uaword	.LBB150
	.uaword	.LBE150
	.uaword	0
	.uaword	0
	.uaword	.LBB164
	.uaword	.LBE164
	.uaword	.LBB183
	.uaword	.LBE183
	.uaword	.LBB186
	.uaword	.LBE186
	.uaword	.LBB187
	.uaword	.LBE187
	.uaword	0
	.uaword	0
	.uaword	.LBB166
	.uaword	.LBE166
	.uaword	.LBB172
	.uaword	.LBE172
	.uaword	.LBB173
	.uaword	.LBE173
	.uaword	.LBB174
	.uaword	.LBE174
	.uaword	.LBB175
	.uaword	.LBE175
	.uaword	0
	.uaword	0
	.uaword	.LBB179
	.uaword	.LBE179
	.uaword	.LBB182
	.uaword	.LBE182
	.uaword	0
	.uaword	0
	.uaword	.LBB194
	.uaword	.LBE194
	.uaword	.LBB202
	.uaword	.LBE202
	.uaword	.LBB203
	.uaword	.LBE203
	.uaword	0
	.uaword	0
	.uaword	.LFB34
	.uaword	.LFE34
	.uaword	.LFB33
	.uaword	.LFE33
	.uaword	.LFB19
	.uaword	.LFE19
	.uaword	.LFB20
	.uaword	.LFE20
	.uaword	.LFB21
	.uaword	.LFE21
	.uaword	.LFB22
	.uaword	.LFE22
	.uaword	.LFB23
	.uaword	.LFE23
	.uaword	.LFB24
	.uaword	.LFE24
	.uaword	.LFB25
	.uaword	.LFE25
	.uaword	.LFB26
	.uaword	.LFE26
	.uaword	.LFB38
	.uaword	.LFE38
	.uaword	.LFB39
	.uaword	.LFE39
	.uaword	.LFB40
	.uaword	.LFE40
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF40:
	.string	"ErrorId"
.LASF14:
	.string	"LSREQ_INT"
.LASF19:
	.string	"I2C_ERR_INT"
.LASF32:
	.string	"UpperSlaveAddr"
.LASF26:
	.string	"DataPtr"
.LASF2:
	.string	"reserved_2"
.LASF1:
	.string	"reserved_3"
.LASF10:
	.string	"reserved_4"
.LASF3:
	.string	"reserved_6"
.LASF23:
	.string	"reserved_7"
.LASF16:
	.string	"LBREQ_INT"
.LASF34:
	.string	"ChannelId"
.LASF12:
	.string	"reserved_31"
.LASF25:
	.string	"HwUnit"
.LASF7:
	.string	"RXF_OFL"
.LASF36:
	.string	"Returnvalue"
.LASF15:
	.string	"SREQ_INT"
.LASF41:
	.string	"ERRIRQSS_Val"
.LASF20:
	.string	"I2C_P_INT"
.LASF31:
	.string	"DataPointer"
.LASF21:
	.string	"reserved_1"
.LASF29:
	.string	"HwModulePtr"
.LASF27:
	.string	"DataLeft"
.LASF17:
	.string	"BREQ_INT"
.LASF33:
	.string	"FilledFIFOStage"
.LASF42:
	.string	"PIRQSS_Val"
.LASF9:
	.string	"TXF_OFL"
.LASF43:
	.string	"TimeOutValue"
.LASF0:
	.string	"reserved_10"
.LASF11:
	.string	"reserved_11"
.LASF13:
	.string	"reserved_14"
.LASF4:
	.string	"reserved_16"
.LASF6:
	.string	"RXF_UFL"
.LASF18:
	.string	"MOD_NUMBER"
.LASF35:
	.string	"SlaveAddress"
.LASF8:
	.string	"TXF_UFL"
.LASF22:
	.string	"TX_END"
.LASF37:
	.string	"ConfigPtr"
.LASF28:
	.string	"SlaveAddr"
.LASF38:
	.string	"ClkDisableChk"
.LASF39:
	.string	"ChannelConfigPtr"
.LASF30:
	.string	"ChannelInfo"
.LASF24:
	.string	"reserved_21"
.LASF5:
	.string	"reserved_24"
	.extern	Mcal_WritePeripEndInitProtReg,STT_FUNC,0
	.extern	Det_ReportError,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
