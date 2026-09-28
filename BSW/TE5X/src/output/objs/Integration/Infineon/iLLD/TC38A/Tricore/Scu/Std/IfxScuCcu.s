	.file	"IfxScuCcu.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.IfxScuCcu_calRGainParameters,"ax",@progbits
	.align 1
	.global	IfxScuCcu_calRGainParameters
	.type	IfxScuCcu_calRGainParameters, @function
IfxScuCcu_calRGainParameters:
.LFB237:
	.file 1 "Integration\\Infineon\\iLLD\\TC38A\\Tricore\\Scu\\Std\\IfxScuCcu.c"
	.loc 1 103 0
.LVL0:
	.loc 1 104 0
	movh.a	%a15, hi:IfxScuCcu_MA_percent
	lea	%a15, [%a15] lo:IfxScuCcu_MA_percent
	addsc.a	%a15, %a15, %d4, 2
.LBB172:
.LBB173:
	.file 2 "Integration\\Infineon\\iLLD\\TC38A\\Tricore\\Scu\\Std\\IfxScuCcu.h"
	.loc 2 1722 0
	movh	%d15, 19647
.LBE173:
.LBE172:
	.loc 1 104 0
	ld.w	%d4, [%a15]0
.LVL1:
.LBB175:
.LBB174:
	.loc 2 1720 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24600
	ld.w	%d2, [%a15]0
	.loc 2 1722 0
	addi	%d15, %d15, -17376
	.loc 2 1720 0
	sh	%d2, %d2, -30
	jz	%d2, .L2
	.loc 2 1724 0
	ld.w	%d2, [%a15]0
	.loc 2 1726 0
	movh	%d15, 19353
	.loc 2 1724 0
	sh	%d2, %d2, -30
	.loc 2 1726 0
	addi	%d15, %d15, -27008
	.loc 2 1724 0
	jeq	%d2, 1, .L2
	.loc 2 1728 0
	ld.w	%d2, [%a15]0
	sh	%d2, %d2, -30
	jeq	%d2, 2, .L2
	.loc 2 1735 0
	mov	%d15, 0
.L2:
.LVL2:
.LBE174:
.LBE175:
	.loc 1 110 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24576
	ld.w	%d3, [%a15] 24
	ld.w	%d5, [%a15] 24
	extr.u	%d3, %d3, 9, 7
	extr.u	%d5, %d5, 24, 3
.LVL3:
	add	%d3, 1
	itof	%d3, %d3
	.loc 1 112 0
	movh	%d2, 17096
	.loc 1 110 0
	mul.f	%d15, %d3, %d15
.LVL4:
	addi	%d3, %d5, 1
	itof	%d3, %d3
	.loc 1 112 0
	div.f	%d2, %d4, %d2
	.loc 1 110 0
	div.f	%d15, %d15, %d3
	.loc 1 112 0
	movh	%d4, 19036
.LVL5:
	addi	%d4, %d4, -17920
	div.f	%d3, %d15, %d4
	add.f	%d2, %d2, %d2
	mul.f	%d15, %d2, %d3
	.loc 1 113 0
	movh	%d2, 16128
	movh	%d3, 16896
	.loc 1 112 0
	st.w	[%a4]0, %d15
	.loc 1 113 0
	madd.f	%d15, %d2, %d15, %d3
	ftouz	%d15, %d15
	st.h	[%a4] 4, %d15
	ret
.LFE237:
	.size	IfxScuCcu_calRGainParameters, .-IfxScuCcu_calRGainParameters
.section .text.IfxScuCcu_distributeClock,"ax",@progbits
	.align 1
	.global	IfxScuCcu_distributeClock
	.type	IfxScuCcu_distributeClock, @function
IfxScuCcu_distributeClock:
.LFB238:
	.loc 1 118 0
.LVL6:
.LBB176:
.LBB177:
.LBB178:
.LBB179:
	.file 3 "Integration\\Infineon\\iLLD\\TC38A\\Tricore\\Scu\\Std\\IfxScuWdt.h"
	.loc 3 651 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 25256
	ld.w	%d3, [%a15]0
.LBE179:
.LBE178:
.LBB181:
.LBB182:
	.loc 3 585 0
	ld.w	%d15, [%a15]0
.LBE182:
.LBE181:
.LBB184:
.LBB180:
	.loc 3 651 0
	extr.u	%d3, %d3, 2, 14
.LVL7:
	.loc 3 652 0
	xor	%d3, %d3, 63
.LVL8:
.LBE180:
.LBE184:
.LBB185:
.LBB183:
	.loc 3 590 0
	sh	%d3, 2
.LVL9:
	.loc 3 585 0
	jz.t	%d15, 1, .L12
	.loc 3 591 0
	ld.hu	%d15, [%a15] 2
	sh	%d15, %d15, 16
	or	%d15, %d15, 1
	.loc 3 590 0
	or	%d15, %d3
	.loc 3 588 0
	st.w	[%a15]0, %d15
.L12:
	.loc 3 598 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 25256
	ld.hu	%d15, [%a15] 2
	sh	%d15, %d15, 16
	or	%d15, %d15, 2
	.loc 3 597 0
	or	%d15, %d3
	.loc 3 595 0
	st.w	[%a15]0, %d15
.L13:
	.loc 3 601 0
	ld.w	%d15, [%a15]0
	jnz.t	%d15, 0, .L13
.LBE183:
.LBE185:
.LBB186:
	.loc 2 1450 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d2, [%a4] 4
	ld.w	%d4, [%a15]0
.LVL10:
	.loc 2 1452 0
	ld.w	%d15, [%a4]0
	.loc 2 1450 0
	andn	%d4, %d4, %d2
.LVL11:
	.loc 2 1452 0
	and	%d15, %d2
	.loc 2 1455 0
	mov.aa	%a2, %a15
	.loc 2 1452 0
	or	%d2, %d4, %d15
.LVL12:
	.loc 2 1455 0
	lea	%a15, 4095
.LVL13:
.L14:
	ld.w	%d15, [%a2]0
	jgez	%d15, .L15
	loop	%a15, .L14
.L15:
.LVL14:
	.loc 2 1460 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	st.w	[%a15]0, %d2
.LVL15:
	.loc 2 1463 0
	mov.aa	%a2, %a15
	lea	%a15, 4095
.LVL16:
.L17:
	ld.w	%d15, [%a2]0
	jgez	%d15, .L18
	loop	%a15, .L17
.L18:
.LBE186:
.LBB187:
	.loc 2 1471 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24628
	ld.w	%d2, [%a15]0
.LVL17:
	.loc 2 1475 0
	movh	%d15, 12336
	addi	%d15, %d15, 48
	and	%d2, %d15
.LVL18:
	.loc 2 1473 0
	jnz	%d2, .L20
	ld.w	%d4, [%a4] 12
	ld.w	%d15, [%a4] 8
	nor	%d5, %d4, 0
	and	%d4, %d15
.LVL19:
.L21:
	.loc 2 1505 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24628
	ld.w	%d15, [%a15]0
	.loc 2 1511 0
	mov.aa	%a2, %a15
	.loc 2 1505 0
	and	%d5, %d15
	.loc 2 1507 0
	or	%d4, %d5
.LVL20:
	.loc 2 1511 0
	lea	%a15, 4095
.LVL21:
.L27:
	ld.w	%d15, [%a2]0
	jgez	%d15, .L28
	loop	%a15, .L27
.L28:
	.loc 2 1516 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24628
	st.w	[%a15]0, %d4
.LVL22:
	.loc 2 1520 0
	mov.aa	%a2, %a15
	lea	%a15, 4095
.LVL23:
.L30:
	ld.w	%d15, [%a2]0
	jgez	%d15, .L31
	loop	%a15, .L30
.L31:
.LBE187:
.LBB188:
	.loc 2 1529 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24640
	ld.w	%d2, [%a15]0
.LVL24:
	.loc 2 1531 0
	mov	%d15, 12288
	and	%d2, %d15
.LVL25:
	jnz	%d2, .L33
	ld.w	%d4, [%a4] 20
	ld.w	%d15, [%a4] 16
	nor	%d5, %d4, 0
	and	%d4, %d15
.LVL26:
.L34:
	.loc 2 1558 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24640
	ld.w	%d15, [%a15]0
	.loc 2 1564 0
	mov.aa	%a2, %a15
	.loc 2 1558 0
	and	%d5, %d15
	.loc 2 1560 0
	or	%d4, %d5
.LVL27:
	.loc 2 1564 0
	lea	%a15, 4095
.LVL28:
.L40:
	ld.w	%d15, [%a2]0
	jgez	%d15, .L41
	loop	%a15, .L40
.L41:
	.loc 2 1569 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24640
	st.w	[%a15]0, %d4
.LVL29:
	.loc 2 1573 0
	mov.aa	%a2, %a15
	lea	%a15, 4095
.LVL30:
.L43:
	ld.w	%d15, [%a2]0
	jgez	%d15, .L44
	loop	%a15, .L43
.L44:
.LBE188:
.LBB189:
	.loc 2 1581 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24652
	ld.w	%d2, [%a4] 28
.LVL31:
	ld.w	%d4, [%a15]0
	.loc 2 1583 0
	ld.w	%d15, [%a4] 24
	.loc 2 1581 0
	andn	%d4, %d4, %d2
	.loc 2 1583 0
	and	%d15, %d2
	or	%d2, %d4, %d15
.LVL32:
	.loc 2 1584 0
	insert	%d2, %d2, 1, 30, 1
.LVL33:
	.loc 2 1587 0
	mov.aa	%a2, %a15
	lea	%a15, 4095
.LVL34:
.L46:
	ld.w	%d15, [%a2]0
	jgez	%d15, .L47
	loop	%a15, .L46
.L47:
	.loc 2 1592 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24652
	st.w	[%a15]0, %d2
.LVL35:
	.loc 2 1595 0
	mov.aa	%a2, %a15
	lea	%a15, 4095
.LVL36:
.L49:
	ld.w	%d15, [%a2]0
	jgez	%d15, .L50
	loop	%a15, .L49
.L50:
.LBE189:
.LBB190:
	.loc 2 1603 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24704
	ld.w	%d2, [%a15]0
.LVL37:
	ld.w	%d15, [%a4] 36
.LVL38:
	.loc 2 1605 0
	ld.w	%d4, [%a4] 32
	.loc 2 1603 0
	andn	%d2, %d2, %d15
.LVL39:
	.loc 2 1605 0
	and	%d15, %d4
	or	%d15, %d2
.LVL40:
	.loc 2 1606 0
	st.w	[%a15]0, %d15
.LBE190:
.LBB191:
	.loc 2 1612 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24708
	ld.w	%d2, [%a15]0
	ld.w	%d15, [%a4] 44
.LVL41:
	.loc 2 1614 0
	ld.w	%d4, [%a4] 40
	.loc 2 1612 0
	andn	%d2, %d2, %d15
.LVL42:
	.loc 2 1614 0
	and	%d15, %d4
	or	%d15, %d2
.LVL43:
	.loc 2 1615 0
	st.w	[%a15]0, %d15
.LVL44:
.LBE191:
.LBB192:
	.loc 2 1621 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24712
	ld.w	%d2, [%a15]0
	ld.w	%d15, [%a4] 52
.LVL45:
	.loc 2 1623 0
	ld.w	%d4, [%a4] 48
	.loc 2 1621 0
	andn	%d2, %d2, %d15
.LVL46:
	.loc 2 1623 0
	and	%d15, %d4
	or	%d15, %d2
.LVL47:
	.loc 2 1624 0
	st.w	[%a15]0, %d15
.LVL48:
.LBE192:
.LBB193:
	.loc 2 1629 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24716
	ld.w	%d2, [%a15]0
	ld.w	%d15, [%a4] 60
.LVL49:
	.loc 2 1631 0
	ld.w	%d4, [%a4] 56
	.loc 2 1629 0
	andn	%d2, %d2, %d15
.LVL50:
	.loc 2 1631 0
	and	%d15, %d4
	or	%d15, %d2
.LVL51:
	.loc 2 1632 0
	st.w	[%a15]0, %d15
.LVL52:
.LBE193:
.LBB194:
.LBB195:
	.loc 3 693 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 25256
	ld.w	%d15, [%a15]0
.LVL53:
	jz.t	%d15, 1, .L52
	.loc 3 699 0
	ld.hu	%d15, [%a15] 2
	sh	%d15, %d15, 16
	or	%d15, %d15, 1
	.loc 3 698 0
	or	%d15, %d3
	.loc 3 696 0
	st.w	[%a15]0, %d15
.LVL54:
.L52:
	.loc 3 706 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 25256
	ld.hu	%d15, [%a15] 2
	sh	%d15, %d15, 16
	or	%d15, %d15, 3
	.loc 3 705 0
	or	%d3, %d15
	.loc 3 703 0
	st.w	[%a15]0, %d3
.L53:
	.loc 3 709 0
	ld.w	%d15, [%a15]0
	jz.t	%d15, 0, .L53
.LBE195:
.LBE194:
.LBE177:
.LBE176:
	.loc 1 120 0
	ret
.L33:
.LBB199:
.LBB198:
.LBB196:
	.loc 2 1535 0
	ld.w	%d4, [%a4] 20
	ld.w	%d2, [%a15]0
	.loc 2 1537 0
	ld.w	%d15, [%a4] 16
	.loc 2 1535 0
	nor	%d5, %d4, 0
	and	%d2, %d5
	.loc 2 1537 0
	and	%d4, %d15
	or	%d2, %d4
.LVL55:
	.loc 2 1539 0
	insert	%d2, %d2, 0, 12, 2
.LVL56:
	.loc 2 1543 0
	mov.aa	%a2, %a15
	lea	%a15, 4095
.LVL57:
.L35:
	ld.w	%d15, [%a2]0
	jgez	%d15, .L36
	loop	%a15, .L35
.L36:
	.loc 2 1548 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24640
.LVL58:
	st.w	[%a15]0, %d2
.LVL59:
	.loc 2 1552 0
	mov.aa	%a2, %a15
	lea	%a15, 4095
.LVL60:
.L38:
	ld.w	%d15, [%a2]0
	jgez	%d15, .L34
	loop	%a15, .L38
	j	.L34
.LVL61:
.L20:
.LBE196:
.LBB197:
	.loc 2 1479 0
	ld.w	%d4, [%a4] 12
	ld.w	%d2, [%a15]0
	.loc 2 1481 0
	ld.w	%d15, [%a4] 8
	.loc 2 1479 0
	nor	%d5, %d4, 0
	and	%d2, %d5
	.loc 2 1481 0
	and	%d4, %d15
	or	%d2, %d4
.LVL62:
	.loc 2 1484 0
	andn	%d2, %d2, ~(-49)
.LVL63:
	.loc 2 1485 0
	insert	%d2, %d2, 0, 20, 2
.LVL64:
	.loc 2 1486 0
	insert	%d2, %d2, 0, 28, 2
.LVL65:
	.loc 2 1490 0
	mov.aa	%a2, %a15
.LVL66:
	lea	%a15, 4095
.LVL67:
.L22:
	ld.w	%d15, [%a2]0
	jgez	%d15, .L23
	loop	%a15, .L22
.L23:
	.loc 2 1495 0
	movh.a	%a15, 61443
.LVL68:
	lea	%a15, [%a15] 24628
.LVL69:
	st.w	[%a15]0, %d2
.LVL70:
	.loc 2 1499 0
	mov.aa	%a2, %a15
	lea	%a15, 4095
.LVL71:
.L25:
	ld.w	%d15, [%a2]0
	jgez	%d15, .L21
	loop	%a15, .L25
	j	.L21
.LBE197:
.LBE198:
.LBE199:
.LFE238:
	.size	IfxScuCcu_distributeClock, .-IfxScuCcu_distributeClock
.section .rodata.a1,"a",@progbits
.LC0:
	.byte	1
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	6
	.byte	8
	.byte	8
	.byte	10
	.byte	10
	.byte	12
	.byte	12
	.byte	12
	.byte	15
.section .text.IfxScuCcu_getAsclinSFrequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_getAsclinSFrequency
	.type	IfxScuCcu_getAsclinSFrequency, @function
IfxScuCcu_getAsclinSFrequency:
.LFB239:
	.loc 1 124 0
.LVL72:
	sub.a	%SP, 16
.LCFI0:
	.loc 1 128 0
	movh.a	%a2, hi:.LC0
	lea	%a2, [%a2] lo:.LC0
	mov.aa	%a3, %SP
		# #chunks=16, chunksize=1, remains=0
	lea	%a4, 16-1
	0:
	ld.bu	%d15, [%a2+]1
	st.b	[%a3+]1, %d15
	loop	%a4, 0b
	.loc 1 130 0
	movh.a	%a2, 61443
	lea	%a2, [%a2] 24640
	ld.w	%d15, [%a2]0
	.loc 1 128 0
	mov.aa	%a15, %SP
	.loc 1 130 0
	extr.u	%d15, %d15, 12, 2
	jeq	%d15, 1, .L99
	.loc 1 144 0
	movh	%d2, 19353
	addi	%d2, %d2, -27008
	.loc 1 130 0
	jne	%d15, 2, .L119
.LVL73:
.L98:
	.loc 1 152 0
	ret
.LVL74:
.L119:
	.loc 1 125 0
	mov	%d2, 0
.LVL75:
	.loc 1 152 0
	ret
.LVL76:
.L99:
.LBB208:
.LBB209:
	.loc 1 442 0
	movh.a	%a2, 61443
	lea	%a2, [%a2] 24624
	ld.w	%d2, [%a2]0
	.loc 1 445 0
	movh	%d15, 19647
	.loc 1 442 0
	extr.u	%d2, %d2, 28, 2
	.loc 1 445 0
	addi	%d15, %d15, -17376
	.loc 1 442 0
	jz	%d2, .L102
	jne	%d2, 1, .L120
.LVL77:
.LBB210:
.LBB211:
.LBB212:
.LBB213:
.LBB214:
.LBB215:
	.loc 2 1720 0
	movh.a	%a2, 61443
	lea	%a2, [%a2] 24600
	ld.w	%d2, [%a2]0
	sh	%d2, %d2, -30
	jz	%d2, .L104
	.loc 2 1724 0
	ld.w	%d2, [%a2]0
	.loc 2 1726 0
	movh	%d15, 19353
	.loc 2 1724 0
	sh	%d2, %d2, -30
	.loc 2 1726 0
	addi	%d15, %d15, -27008
	.loc 2 1724 0
	jeq	%d2, 1, .L104
	.loc 2 1728 0
	ld.w	%d2, [%a2]0
	sh	%d2, %d2, -30
	jeq	%d2, 2, .L104
	.loc 2 1735 0
	mov	%d15, 0
.L104:
.LVL78:
.LBE215:
.LBE214:
	.loc 1 370 0
	movh.a	%a2, 61443
	lea	%a2, [%a2] 24576
	ld.w	%d4, [%a2] 40
	ld.w	%d2, [%a2] 40
	extr.u	%d4, %d4, 9, 7
	extr.u	%d3, %d2, 24, 3
	ld.w	%d2, [%a2] 44
	add	%d4, 1
	and	%d2, %d2, 7
	add	%d2, 1
	madd	%d2, %d2, %d3, %d2
	itof	%d4, %d4
.LBE213:
.LBE212:
	.loc 1 457 0
	movh.a	%a2, 61443
.LBB218:
.LBB216:
	.loc 1 370 0
	itof	%d2, %d2
	mul.f	%d15, %d4, %d15
.LVL79:
.LBE216:
.LBE218:
	.loc 1 457 0
	lea	%a2, [%a2] 24628
.LBB219:
.LBB217:
	.loc 1 370 0
	div.f	%d15, %d15, %d2
.LVL80:
.LBE217:
.LBE219:
	.loc 1 457 0
	ld.w	%d2, [%a2]0
	jnz.t	%d2, 7, .L102
	.loc 1 459 0
	movh	%d2, 16128
	mul.f	%d15, %d15, %d2
.LVL81:
.L102:
.LBE211:
.LBE210:
.LBE209:
.LBE208:
	.loc 1 136 0
	movh.a	%a2, 61443
	lea	%a2, [%a2] 24640
	ld.w	%d3, [%a2]0
	.loc 1 125 0
	mov	%d2, 0
	.loc 1 136 0
	extr.u	%d3, %d3, 8, 4
	jz	%d3, .L98
.L121:
	.loc 1 138 0
	ld.w	%d2, [%a2]0
	extr.u	%d2, %d2, 8, 4
	addsc.a	%a15, %a15, %d2, 0
	ld.bu	%d2, [%a15]0
	itof	%d2, %d2
	div.f	%d2, %d15, %d2
.LVL82:
	ret
.LVL83:
.L120:
	.loc 1 136 0
	movh.a	%a2, 61443
	lea	%a2, [%a2] 24640
	ld.w	%d3, [%a2]0
.LBB221:
.LBB220:
	.loc 1 473 0
	mov	%d15, 0
.LVL84:
.LBE220:
.LBE221:
	.loc 1 136 0
	extr.u	%d3, %d3, 8, 4
	.loc 1 125 0
	mov	%d2, 0
	.loc 1 136 0
	jz	%d3, .L98
	j	.L121
.LFE239:
	.size	IfxScuCcu_getAsclinSFrequency, .-IfxScuCcu_getAsclinSFrequency
.section .text.IfxScuCcu_getBbbFrequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_getBbbFrequency
	.type	IfxScuCcu_getBbbFrequency, @function
IfxScuCcu_getBbbFrequency:
.LFB240:
	.loc 1 156 0
.LVL85:
.LBB228:
.LBB229:
	.loc 1 442 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d2, [%a15]0
	.loc 1 445 0
	movh	%d15, 19647
	.loc 1 442 0
	extr.u	%d2, %d2, 28, 2
	.loc 1 445 0
	addi	%d15, %d15, -17376
	.loc 1 442 0
	jz	%d2, .L124
	jne	%d2, 1, .L145
.LVL86:
.LBB230:
.LBB231:
.LBB232:
.LBB233:
	.loc 2 1720 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24600
	ld.w	%d2, [%a15]0
	sh	%d2, %d2, -30
	jz	%d2, .L126
	.loc 2 1724 0
	ld.w	%d2, [%a15]0
	.loc 2 1726 0
	movh	%d15, 19353
	.loc 2 1724 0
	sh	%d2, %d2, -30
	.loc 2 1726 0
	addi	%d15, %d15, -27008
	.loc 2 1724 0
	jeq	%d2, 1, .L126
	.loc 2 1728 0
	ld.w	%d2, [%a15]0
	sh	%d2, %d2, -30
	jeq	%d2, 2, .L126
	.loc 2 1735 0
	mov	%d15, 0
.L126:
.LVL87:
.LBE233:
.LBE232:
	.loc 1 403 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24576
	ld.w	%d4, [%a15] 24
	ld.w	%d2, [%a15] 28
	extr.u	%d4, %d4, 9, 7
	and	%d3, %d2, 7
	ld.w	%d2, [%a15] 24
	add	%d4, 1
	extr.u	%d2, %d2, 24, 3
	itof	%d4, %d4
	add	%d2, 1
	madd	%d2, %d2, %d3, %d2
	mul.f	%d15, %d4, %d15
.LVL88:
	itof	%d2, %d2
	div.f	%d15, %d15, %d2
.LVL89:
.L124:
.LBE231:
.LBE230:
.LBE229:
.LBE228:
	.loc 1 162 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d3, [%a15]0
	.loc 1 190 0
	mov	%d2, 0
	.loc 1 162 0
	extr.u	%d3, %d3, 12, 3
	jge.u	%d3, 5, .L127
	movh.a	%a15, hi:.L129
	lea	%a15, [%a15] lo:.L129
	addsc.a	%a15, %a15, %d3, 2
	ji	%a15
	.align 2
	.align 2
.L129:
	.code32
	j	.L128
	.code32
	j	.L130
	.code32
	j	.L131
	.code32
	j	.L132
	.code32
	j	.L133
.L133:
	.loc 1 187 0
	movh	%d2, 17264
	div.f	%d2, %d15, %d2
.LVL90:
.L127:
	.loc 1 195 0
	ret
.LVL91:
.L145:
.LBB235:
.LBB234:
	.loc 1 473 0
	mov	%d15, 0
	j	.L124
.LVL92:
.L128:
.LBE234:
.LBE235:
	.loc 1 166 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d3, [%a15]0
	.loc 1 169 0
	mov	%d2, 0
	.loc 1 166 0
	extr.u	%d3, %d3, 20, 4
	jz	%d3, .L127
	.loc 1 173 0
	ld.w	%d2, [%a15]0
	extr.u	%d2, %d2, 20, 4
	itof	%d2, %d2
	div.f	%d2, %d15, %d2
.LVL93:
	ret
.LVL94:
.L130:
	.loc 1 178 0
	movh	%d2, 16880
	div.f	%d2, %d15, %d2
.LVL95:
	.loc 1 179 0
	ret
.LVL96:
.L131:
	.loc 1 181 0
	movh	%d2, 17008
	div.f	%d2, %d15, %d2
.LVL97:
	.loc 1 182 0
	ret
.LVL98:
.L132:
	.loc 1 184 0
	movh	%d2, 17136
	div.f	%d2, %d15, %d2
.LVL99:
	.loc 1 185 0
	ret
.LFE240:
	.size	IfxScuCcu_getBbbFrequency, .-IfxScuCcu_getBbbFrequency
.section .text.IfxScuCcu_getCpuFrequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_getCpuFrequency
	.type	IfxScuCcu_getCpuFrequency, @function
IfxScuCcu_getCpuFrequency:
.LFB241:
	.loc 1 199 0
.LVL100:
.LBB244:
.LBB245:
.LBB246:
.LBB247:
	.loc 1 442 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d2, [%a15]0
	.loc 1 445 0
	movh	%d15, 19647
	.loc 1 442 0
	extr.u	%d2, %d2, 28, 2
	.loc 1 445 0
	addi	%d15, %d15, -17376
	.loc 1 442 0
	jz	%d2, .L148
	jne	%d2, 1, .L180
.LVL101:
.LBB248:
.LBB249:
.LBB250:
.LBB251:
	.loc 2 1720 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24600
	ld.w	%d2, [%a15]0
	sh	%d2, %d2, -30
	jz	%d2, .L150
	.loc 2 1724 0
	ld.w	%d2, [%a15]0
	.loc 2 1726 0
	movh	%d15, 19353
	.loc 2 1724 0
	sh	%d2, %d2, -30
	.loc 2 1726 0
	addi	%d15, %d15, -27008
	.loc 2 1724 0
	jeq	%d2, 1, .L150
	.loc 2 1728 0
	ld.w	%d2, [%a15]0
	sh	%d2, %d2, -30
	jeq	%d2, 2, .L150
	.loc 2 1735 0
	mov	%d15, 0
.L150:
.LVL102:
.LBE251:
.LBE250:
	.loc 1 403 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24576
	ld.w	%d5, [%a15] 24
	ld.w	%d2, [%a15] 28
	extr.u	%d5, %d5, 9, 7
	and	%d3, %d2, 7
	ld.w	%d2, [%a15] 24
	add	%d5, 1
	extr.u	%d2, %d2, 24, 3
	itof	%d5, %d5
	add	%d2, 1
	madd	%d2, %d2, %d3, %d2
	mul.f	%d15, %d5, %d15
.LVL103:
	itof	%d2, %d2
	div.f	%d15, %d15, %d2
.LVL104:
.L148:
.LBE249:
.LBE248:
.LBE247:
.LBE246:
	.loc 1 530 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d3, [%a15]0
	.loc 1 557 0
	mov	%d2, 0
	.loc 1 530 0
	extr.u	%d3, %d3, 12, 3
	jge.u	%d3, 5, .L151
	movh.a	%a15, hi:.L153
	lea	%a15, [%a15] lo:.L153
	addsc.a	%a15, %a15, %d3, 2
	ji	%a15
	.align 2
	.align 2
.L153:
	.code32
	j	.L152
	.code32
	j	.L154
	.code32
	j	.L155
	.code32
	j	.L156
	.code32
	j	.L157
.L152:
	.loc 1 534 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d3, [%a15]0
	.loc 1 536 0
	mov	%d2, 0
	.loc 1 534 0
	extr.u	%d3, %d3, 8, 4
	jz	%d3, .L151
	.loc 1 540 0
	ld.w	%d2, [%a15]0
	extr.u	%d2, %d2, 8, 4
	itof	%d2, %d2
	div.f	%d2, %d15, %d2
.LVL105:
.L151:
.LBE245:
.LBE244:
	.loc 1 203 0
	jlt.u	%d4, 4, .L181
	.loc 1 219 0
	mov	%d2, 0
.LVL106:
.L158:
	.loc 1 229 0
	ret
.LVL107:
.L181:
	.loc 1 203 0
	movh.a	%a15, hi:.L160
	lea	%a15, [%a15] lo:.L160
	addsc.a	%a15, %a15, %d4, 2
	ji	%a15
	.align 2
	.align 2
.L160:
	.code32
	j	.L159
	.code32
	j	.L161
	.code32
	j	.L162
	.code32
	j	.L163
.LVL108:
.L180:
.LBB256:
.LBB254:
.LBB253:
.LBB252:
	.loc 1 473 0
	mov	%d15, 0
	j	.L148
.LVL109:
.L162:
.LBE252:
.LBE253:
.LBE254:
.LBE256:
	.loc 1 212 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24712
	ld.w	%d15, [%a15]0
.LVL110:
.L164:
	.loc 1 223 0
	jz	%d15, .L158
	.loc 1 225 0
	rsub	%d15, %d15, 64
.LVL111:
	utof	%d15, %d15
	movh	%d3, 15488
	mul.f	%d15, %d15, %d3
	mul.f	%d2, %d2, %d15
.LVL112:
	ret
.LVL113:
.L161:
	.loc 1 209 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24708
	ld.w	%d15, [%a15]0
.LVL114:
	.loc 1 210 0
	j	.L164
.LVL115:
.L159:
	.loc 1 206 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24704
	ld.w	%d15, [%a15]0
.LVL116:
	.loc 1 207 0
	j	.L164
.LVL117:
.L163:
	.loc 1 215 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24716
	ld.w	%d15, [%a15]0
.LVL118:
	.loc 1 216 0
	j	.L164
.LVL119:
.L157:
.LBB257:
.LBB255:
	.loc 1 554 0
	movh	%d2, 17264
	div.f	%d2, %d15, %d2
.LVL120:
	j	.L151
.LVL121:
.L154:
	.loc 1 545 0
	movh	%d2, 16880
	div.f	%d2, %d15, %d2
.LVL122:
	j	.L151
.LVL123:
.L155:
	.loc 1 548 0
	movh	%d2, 17008
	div.f	%d2, %d15, %d2
.LVL124:
	j	.L151
.LVL125:
.L156:
	.loc 1 551 0
	movh	%d2, 17136
	div.f	%d2, %d15, %d2
.LVL126:
	j	.L151
.LBE255:
.LBE257:
.LFE241:
	.size	IfxScuCcu_getCpuFrequency, .-IfxScuCcu_getCpuFrequency
.section .text.IfxScuCcu_getFsi2Frequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_getFsi2Frequency
	.type	IfxScuCcu_getFsi2Frequency, @function
IfxScuCcu_getFsi2Frequency:
.LFB242:
	.loc 1 233 0
	.loc 1 235 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d15, [%a15]0
.LVL127:
	.loc 1 237 0
	movh	%d3, 3072
	and	%d3, %d15
	.loc 1 235 0
	extr.u	%d4, %d15, 26, 2
.LVL128:
	.loc 1 239 0
	mov	%d2, 0
	.loc 1 237 0
	jnz	%d3, .L208
.LVL129:
.L183:
	.loc 1 252 0
	ret
.LVL130:
.L208:
.LBB266:
.LBB267:
.LBB268:
.LBB269:
	.loc 1 442 0
	ld.w	%d5, [%a15]0
	.loc 1 445 0
	movh	%d3, 19647
	.loc 1 442 0
	extr.u	%d5, %d5, 28, 2
	.loc 1 445 0
	addi	%d3, %d3, -17376
	.loc 1 442 0
	jz	%d5, .L185
	jne	%d5, 1, .L209
.LVL131:
.LBB270:
.LBB271:
.LBB272:
.LBB273:
	.loc 2 1720 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24600
	ld.w	%d5, [%a15]0
	sh	%d5, %d5, -30
	jz	%d5, .L187
	.loc 2 1724 0
	ld.w	%d5, [%a15]0
	.loc 2 1726 0
	movh	%d3, 19353
	.loc 2 1724 0
	sh	%d5, %d5, -30
	.loc 2 1726 0
	addi	%d3, %d3, -27008
	.loc 2 1724 0
	jeq	%d5, 1, .L187
	.loc 2 1728 0
	ld.w	%d5, [%a15]0
	sh	%d5, %d5, -30
	jeq	%d5, 2, .L187
	.loc 2 1735 0
	mov	%d3, 0
.L187:
.LVL132:
.LBE273:
.LBE272:
	.loc 1 403 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24576
	ld.w	%d6, [%a15] 24
	ld.w	%d2, [%a15] 28
	extr.u	%d6, %d6, 9, 7
	and	%d5, %d2, 7
	ld.w	%d2, [%a15] 24
	add	%d6, 1
	extr.u	%d2, %d2, 24, 3
	itof	%d6, %d6
	add	%d2, 1
	madd	%d2, %d2, %d5, %d2
	mul.f	%d3, %d6, %d3
.LVL133:
	itof	%d2, %d2
	div.f	%d3, %d3, %d2
.LVL134:
.L185:
.LBE271:
.LBE270:
.LBE269:
.LBE268:
	.loc 1 530 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d5, [%a15]0
	.loc 1 557 0
	mov	%d2, 0
	.loc 1 530 0
	extr.u	%d5, %d5, 12, 3
	jlt.u	%d5, 5, .L210
.L188:
.LVL135:
.LBE267:
.LBE266:
	.loc 1 245 0
	mov	%d3, 3840
.LVL136:
	and	%d15, %d3
.LVL137:
	addi	%d15, %d15, -256
	andn	%d15, %d15, ~(-257)
	jnz	%d15, .L183
	.loc 1 247 0
	itof	%d4, %d4
	div.f	%d2, %d2, %d4
.LVL138:
	.loc 1 252 0
	ret
.LVL139:
.L210:
.LBB277:
.LBB276:
	.loc 1 530 0
	movh.a	%a15, hi:.L190
	lea	%a15, [%a15] lo:.L190
	addsc.a	%a15, %a15, %d5, 2
	ji	%a15
	.align 2
	.align 2
.L190:
	.code32
	j	.L189
	.code32
	j	.L191
	.code32
	j	.L192
	.code32
	j	.L193
	.code32
	j	.L194
.LVL140:
.L209:
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d5, [%a15]0
.LBB275:
.LBB274:
	.loc 1 473 0
	mov	%d3, 0
.LVL141:
.LBE274:
.LBE275:
	.loc 1 530 0
	extr.u	%d5, %d5, 12, 3
	.loc 1 557 0
	mov	%d2, 0
	.loc 1 530 0
	jge.u	%d5, 5, .L188
	j	.L210
.LVL142:
.L193:
	.loc 1 551 0
	movh	%d2, 17136
	div.f	%d2, %d3, %d2
.LVL143:
	j	.L188
.LVL144:
.L192:
	.loc 1 548 0
	movh	%d2, 17008
	div.f	%d2, %d3, %d2
.LVL145:
	j	.L188
.LVL146:
.L191:
	.loc 1 545 0
	movh	%d2, 16880
	div.f	%d2, %d3, %d2
.LVL147:
	j	.L188
.LVL148:
.L189:
	.loc 1 534 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d5, [%a15]0
	.loc 1 536 0
	mov	%d2, 0
	.loc 1 534 0
	extr.u	%d5, %d5, 8, 4
	jz	%d5, .L188
	.loc 1 540 0
	ld.w	%d2, [%a15]0
	extr.u	%d2, %d2, 8, 4
	itof	%d2, %d2
	div.f	%d2, %d3, %d2
.LVL149:
	j	.L188
.LVL150:
.L194:
	.loc 1 554 0
	movh	%d2, 17264
	div.f	%d2, %d3, %d2
.LVL151:
	j	.L188
.LBE276:
.LBE277:
.LFE242:
	.size	IfxScuCcu_getFsi2Frequency, .-IfxScuCcu_getFsi2Frequency
.section .text.IfxScuCcu_getFsiFrequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_getFsiFrequency
	.type	IfxScuCcu_getFsiFrequency, @function
IfxScuCcu_getFsiFrequency:
.LFB243:
	.loc 1 256 0
	.loc 1 258 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d15, [%a15]0
.LVL152:
	.loc 1 260 0
	movh	%d3, 768
	and	%d3, %d15
	.loc 1 258 0
	extr.u	%d4, %d15, 24, 2
.LVL153:
	.loc 1 262 0
	mov	%d2, 0
	.loc 1 260 0
	jnz	%d3, .L237
.LVL154:
.L212:
	.loc 1 275 0
	ret
.LVL155:
.L237:
.LBB286:
.LBB287:
.LBB288:
.LBB289:
	.loc 1 442 0
	ld.w	%d5, [%a15]0
	.loc 1 445 0
	movh	%d3, 19647
	.loc 1 442 0
	extr.u	%d5, %d5, 28, 2
	.loc 1 445 0
	addi	%d3, %d3, -17376
	.loc 1 442 0
	jz	%d5, .L214
	jne	%d5, 1, .L238
.LVL156:
.LBB290:
.LBB291:
.LBB292:
.LBB293:
	.loc 2 1720 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24600
	ld.w	%d5, [%a15]0
	sh	%d5, %d5, -30
	jz	%d5, .L216
	.loc 2 1724 0
	ld.w	%d5, [%a15]0
	.loc 2 1726 0
	movh	%d3, 19353
	.loc 2 1724 0
	sh	%d5, %d5, -30
	.loc 2 1726 0
	addi	%d3, %d3, -27008
	.loc 2 1724 0
	jeq	%d5, 1, .L216
	.loc 2 1728 0
	ld.w	%d5, [%a15]0
	sh	%d5, %d5, -30
	jeq	%d5, 2, .L216
	.loc 2 1735 0
	mov	%d3, 0
.L216:
.LVL157:
.LBE293:
.LBE292:
	.loc 1 403 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24576
	ld.w	%d6, [%a15] 24
	ld.w	%d2, [%a15] 28
	extr.u	%d6, %d6, 9, 7
	and	%d5, %d2, 7
	ld.w	%d2, [%a15] 24
	add	%d6, 1
	extr.u	%d2, %d2, 24, 3
	itof	%d6, %d6
	add	%d2, 1
	madd	%d2, %d2, %d5, %d2
	mul.f	%d3, %d6, %d3
.LVL158:
	itof	%d2, %d2
	div.f	%d3, %d3, %d2
.LVL159:
.L214:
.LBE291:
.LBE290:
.LBE289:
.LBE288:
	.loc 1 530 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d5, [%a15]0
	.loc 1 557 0
	mov	%d2, 0
	.loc 1 530 0
	extr.u	%d5, %d5, 12, 3
	jlt.u	%d5, 5, .L239
.L217:
.LVL160:
.LBE287:
.LBE286:
	.loc 1 268 0
	mov	%d3, 3840
.LVL161:
	and	%d15, %d3
.LVL162:
	addi	%d15, %d15, -256
	andn	%d15, %d15, ~(-257)
	jnz	%d15, .L212
	.loc 1 270 0
	itof	%d4, %d4
	div.f	%d2, %d2, %d4
.LVL163:
	.loc 1 275 0
	ret
.LVL164:
.L239:
.LBB297:
.LBB296:
	.loc 1 530 0
	movh.a	%a15, hi:.L219
	lea	%a15, [%a15] lo:.L219
	addsc.a	%a15, %a15, %d5, 2
	ji	%a15
	.align 2
	.align 2
.L219:
	.code32
	j	.L218
	.code32
	j	.L220
	.code32
	j	.L221
	.code32
	j	.L222
	.code32
	j	.L223
.LVL165:
.L238:
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d5, [%a15]0
.LBB295:
.LBB294:
	.loc 1 473 0
	mov	%d3, 0
.LVL166:
.LBE294:
.LBE295:
	.loc 1 530 0
	extr.u	%d5, %d5, 12, 3
	.loc 1 557 0
	mov	%d2, 0
	.loc 1 530 0
	jge.u	%d5, 5, .L217
	j	.L239
.LVL167:
.L222:
	.loc 1 551 0
	movh	%d2, 17136
	div.f	%d2, %d3, %d2
.LVL168:
	j	.L217
.LVL169:
.L221:
	.loc 1 548 0
	movh	%d2, 17008
	div.f	%d2, %d3, %d2
.LVL170:
	j	.L217
.LVL171:
.L220:
	.loc 1 545 0
	movh	%d2, 16880
	div.f	%d2, %d3, %d2
.LVL172:
	j	.L217
.LVL173:
.L218:
	.loc 1 534 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d5, [%a15]0
	.loc 1 536 0
	mov	%d2, 0
	.loc 1 534 0
	extr.u	%d5, %d5, 8, 4
	jz	%d5, .L217
	.loc 1 540 0
	ld.w	%d2, [%a15]0
	extr.u	%d2, %d2, 8, 4
	itof	%d2, %d2
	div.f	%d2, %d3, %d2
.LVL174:
	j	.L217
.LVL175:
.L223:
	.loc 1 554 0
	movh	%d2, 17264
	div.f	%d2, %d3, %d2
.LVL176:
	j	.L217
.LBE296:
.LBE297:
.LFE243:
	.size	IfxScuCcu_getFsiFrequency, .-IfxScuCcu_getFsiFrequency
.section .text.IfxScuCcu_getMcanFrequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_getMcanFrequency
	.type	IfxScuCcu_getMcanFrequency, @function
IfxScuCcu_getMcanFrequency:
.LFB244:
	.loc 1 279 0
.LVL177:
	.loc 1 283 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24628
	ld.w	%d15, [%a15]0
	extr.u	%d15, %d15, 4, 2
	jeq	%d15, 1, .L242
	.loc 1 297 0
	movh	%d2, 19353
	addi	%d2, %d2, -27008
	.loc 1 283 0
	jne	%d15, 2, .L262
.L241:
.LVL178:
	.loc 1 305 0
	ret
.LVL179:
.L262:
	.loc 1 280 0
	mov	%d2, 0
.LVL180:
	.loc 1 305 0
	ret
.LVL181:
.L242:
.LBB308:
.LBB309:
.LBB310:
.LBB311:
	.loc 1 442 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d2, [%a15]0
	.loc 1 445 0
	movh	%d15, 19647
	.loc 1 442 0
	extr.u	%d2, %d2, 28, 2
	.loc 1 445 0
	addi	%d15, %d15, -17376
	.loc 1 442 0
	jz	%d2, .L245
	jne	%d2, 1, .L263
.LVL182:
.LBB312:
.LBB313:
.LBB314:
.LBB315:
.LBB316:
.LBB317:
	.loc 2 1720 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24600
	ld.w	%d2, [%a15]0
	sh	%d2, %d2, -30
	jz	%d2, .L247
	.loc 2 1724 0
	ld.w	%d2, [%a15]0
	.loc 2 1726 0
	movh	%d15, 19353
	.loc 2 1724 0
	sh	%d2, %d2, -30
	.loc 2 1726 0
	addi	%d15, %d15, -27008
	.loc 2 1724 0
	jeq	%d2, 1, .L247
	.loc 2 1728 0
	ld.w	%d2, [%a15]0
	sh	%d2, %d2, -30
	jeq	%d2, 2, .L247
	.loc 2 1735 0
	mov	%d15, 0
.L247:
.LVL183:
.LBE317:
.LBE316:
	.loc 1 370 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24576
	ld.w	%d4, [%a15] 40
	ld.w	%d2, [%a15] 40
	extr.u	%d4, %d4, 9, 7
	extr.u	%d3, %d2, 24, 3
	ld.w	%d2, [%a15] 44
	add	%d4, 1
	and	%d2, %d2, 7
	add	%d2, 1
	madd	%d2, %d2, %d3, %d2
	itof	%d4, %d4
.LBE315:
.LBE314:
	.loc 1 457 0
	movh.a	%a15, 61443
.LBB320:
.LBB318:
	.loc 1 370 0
	itof	%d2, %d2
	mul.f	%d15, %d4, %d15
.LVL184:
.LBE318:
.LBE320:
	.loc 1 457 0
	lea	%a15, [%a15] 24628
.LBB321:
.LBB319:
	.loc 1 370 0
	div.f	%d15, %d15, %d2
.LVL185:
.LBE319:
.LBE321:
	.loc 1 457 0
	ld.w	%d2, [%a15]0
	jnz.t	%d2, 7, .L245
	.loc 1 459 0
	movh	%d2, 16128
	mul.f	%d15, %d15, %d2
.LVL186:
.L245:
.LBE313:
.LBE312:
.LBE311:
.LBE310:
	.loc 1 289 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24628
	ld.w	%d3, [%a15]0
	.loc 1 280 0
	mov	%d2, 0
	.loc 1 289 0
	and	%d3, %d3, 15
	jz	%d3, .L241
	.loc 1 291 0
	ld.w	%d2, [%a15]0
	and	%d2, %d2, 15
	itof	%d2, %d2
	div.f	%d2, %d15, %d2
.LVL187:
	ret
.LVL188:
.L263:
.LBB323:
.LBB322:
	.loc 1 473 0
	mov	%d15, 0
	j	.L245
.LBE322:
.LBE323:
.LBE309:
.LBE308:
.LFE244:
	.size	IfxScuCcu_getMcanFrequency, .-IfxScuCcu_getMcanFrequency
.section .text.IfxScuCcu_getModuleFrequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_getModuleFrequency
	.type	IfxScuCcu_getModuleFrequency, @function
IfxScuCcu_getModuleFrequency:
.LFB245:
	.loc 1 309 0
	.loc 1 313 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24632
	ld.w	%d5, [%a15]0
.LVL189:
.LBB332:
.LBB333:
.LBB334:
.LBB335:
	.loc 1 442 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d4, [%a15]0
	.loc 1 445 0
	movh	%d15, 19647
	.loc 1 442 0
	extr.u	%d4, %d4, 28, 2
.LBE335:
.LBE334:
.LBE333:
.LBE332:
	.loc 1 313 0
	insert	%d6, %d5, 0, 10, 22
.LVL190:
.LBB348:
.LBB344:
.LBB342:
.LBB340:
	.loc 1 445 0
	addi	%d15, %d15, -17376
	.loc 1 442 0
	jz	%d4, .L266
	jne	%d4, 1, .L292
.LVL191:
.LBB336:
.LBB337:
.LBB338:
.LBB339:
	.loc 2 1720 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24600
	ld.w	%d2, [%a15]0
	sh	%d2, %d2, -30
	jz	%d2, .L268
	.loc 2 1724 0
	ld.w	%d2, [%a15]0
	.loc 2 1726 0
	movh	%d15, 19353
	.loc 2 1724 0
	sh	%d2, %d2, -30
	.loc 2 1726 0
	addi	%d15, %d15, -27008
	.loc 2 1724 0
	jeq	%d2, 1, .L268
	.loc 2 1728 0
	ld.w	%d2, [%a15]0
	sh	%d2, %d2, -30
	jeq	%d2, 2, .L268
	.loc 2 1735 0
	mov	%d15, 0
.L268:
.LVL192:
.LBE339:
.LBE338:
	.loc 1 403 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24576
	ld.w	%d4, [%a15] 24
	ld.w	%d2, [%a15] 28
	extr.u	%d4, %d4, 9, 7
	and	%d3, %d2, 7
	ld.w	%d2, [%a15] 24
	add	%d4, 1
	extr.u	%d2, %d2, 24, 3
	itof	%d4, %d4
	add	%d2, 1
	madd	%d2, %d2, %d3, %d2
	mul.f	%d15, %d4, %d15
.LVL193:
	itof	%d2, %d2
	div.f	%d15, %d15, %d2
.LVL194:
.L266:
.LBE337:
.LBE336:
.LBE340:
.LBE342:
	.loc 1 487 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d4, [%a15]0
	.loc 1 516 0
	mov	%d3, 0
	.loc 1 487 0
	extr.u	%d4, %d4, 12, 3
	jge.u	%d4, 5, .L269
	movh.a	%a15, hi:.L271
	lea	%a15, [%a15] lo:.L271
	addsc.a	%a15, %a15, %d4, 2
	ji	%a15
	.align 2
	.align 2
.L271:
	.code32
	j	.L270
	.code32
	j	.L272
	.code32
	j	.L273
	.code32
	j	.L274
	.code32
	j	.L275
.L270:
	.loc 1 491 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d2, [%a15]0
	.loc 1 495 0
	mov	%d3, 0
	.loc 1 491 0
	extr.u	%d2, %d2, 16, 4
	jz	%d2, .L269
	.loc 1 492 0
	ld.w	%d2, [%a15]0
	extr.u	%d2, %d2, 16, 4
	.loc 1 491 0
	jeq	%d2, 1, .L269
	.loc 1 499 0
	ld.w	%d3, [%a15]0
	extr.u	%d3, %d3, 16, 4
	itof	%d3, %d3
	div.f	%d3, %d15, %d3
.LVL195:
.L269:
.LBE344:
.LBE348:
	.loc 1 316 0
	mov.u	%d15, 49152
.LVL196:
	and	%d15, %d5
	mov	%d2, 16384
	jeq	%d15, %d2, .L293
.L276:
	.loc 1 320 0
	mov.u	%d4, 32768
	.loc 1 326 0
	mov	%d2, 0
	.loc 1 320 0
	jeq	%d15, %d4, .L294
.LVL197:
	.loc 1 330 0
	ret
.LVL198:
.L292:
.LBB349:
.LBB345:
.LBB343:
.LBB341:
	.loc 1 473 0
	mov	%d15, 0
	j	.L266
.LVL199:
.L294:
.LBE341:
.LBE343:
.LBE345:
.LBE349:
	.loc 1 322 0
	itof	%d2, %d6
	movh	%d15, 14976
	mul.f	%d3, %d2, %d3
.LVL200:
	mul.f	%d2, %d3, %d15
.LVL201:
	.loc 1 330 0
	ret
.LVL202:
.L275:
.LBB350:
.LBB346:
	.loc 1 513 0
	movh	%d3, 17264
	div.f	%d3, %d15, %d3
.LVL203:
.LBE346:
.LBE350:
	.loc 1 316 0
	mov.u	%d15, 49152
.LVL204:
	and	%d15, %d5
	mov	%d2, 16384
	jne	%d15, %d2, .L276
.L293:
	.loc 1 318 0
	mov	%d2, 1024
	sub	%d2, %d6
	itof	%d2, %d2
	div.f	%d2, %d3, %d2
.LVL205:
	ret
.LVL206:
.L272:
.LBB351:
.LBB347:
	.loc 1 504 0
	movh	%d3, 16880
	div.f	%d3, %d15, %d3
.LVL207:
	j	.L269
.LVL208:
.L273:
	.loc 1 507 0
	movh	%d3, 17008
	div.f	%d3, %d15, %d3
.LVL209:
	j	.L269
.LVL210:
.L274:
	.loc 1 510 0
	movh	%d3, 17136
	div.f	%d3, %d15, %d3
.LVL211:
	j	.L269
.LBE347:
.LBE351:
.LFE245:
	.size	IfxScuCcu_getModuleFrequency, .-IfxScuCcu_getModuleFrequency
.section .text.IfxScuCcu_getMscFrequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_getMscFrequency
	.type	IfxScuCcu_getMscFrequency, @function
IfxScuCcu_getMscFrequency:
.LFB246:
	.loc 1 334 0
.LVL212:
	.loc 1 338 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24628
	ld.w	%d15, [%a15]0
	extr.u	%d15, %d15, 20, 2
	jeq	%d15, 1, .L297
	jeq	%d15, 2, .L298
.L326:
	.loc 1 336 0
	mov	%d15, 0
.L296:
.LVL213:
	.loc 1 354 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24628
	ld.w	%d3, [%a15]0
	.loc 1 335 0
	mov	%d2, 0
	.loc 1 354 0
	extr.u	%d3, %d3, 16, 4
	jz	%d3, .L306
	.loc 1 356 0
	ld.w	%d2, [%a15]0
	extr.u	%d2, %d2, 16, 4
	itof	%d2, %d2
	div.f	%d2, %d15, %d2
.LVL214:
.L306:
	.loc 1 360 0
	ret
.LVL215:
.L298:
.LBB366:
.LBB367:
	.loc 1 442 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d2, [%a15]0
	.loc 1 445 0
	movh	%d15, 19647
	.loc 1 442 0
	extr.u	%d2, %d2, 28, 2
	.loc 1 445 0
	addi	%d15, %d15, -17376
	.loc 1 442 0
	jz	%d2, .L296
	jne	%d2, 1, .L326
.LVL216:
.LBB368:
.LBB369:
.LBB370:
.LBB371:
	.loc 2 1720 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24600
	ld.w	%d2, [%a15]0
	sh	%d2, %d2, -30
	jz	%d2, .L304
	.loc 2 1724 0
	ld.w	%d2, [%a15]0
	.loc 2 1726 0
	movh	%d15, 19353
	.loc 2 1724 0
	sh	%d2, %d2, -30
	.loc 2 1726 0
	addi	%d15, %d15, -27008
	.loc 2 1724 0
	jeq	%d2, 1, .L304
	.loc 2 1728 0
	ld.w	%d2, [%a15]0
	sh	%d2, %d2, -30
	jeq	%d2, 2, .L304
	.loc 2 1735 0
	mov	%d15, 0
.L304:
.LVL217:
.LBE371:
.LBE370:
	.loc 1 383 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24576
	ld.w	%d2, [%a15] 40
	.loc 1 385 0
	ld.w	%d4, [%a15] 40
	extr.u	%d4, %d4, 9, 7
	.loc 1 383 0
	jz.t	%d2, 0, .L327
	.loc 1 389 0
	ld.w	%d2, [%a15] 40
	add	%d4, 1
	extr.u	%d3, %d2, 24, 3
	ld.w	%d2, [%a15] 44
	itof	%d4, %d4
	extr.u	%d2, %d2, 8, 3
	mul.f	%d15, %d15, %d4
.LVL218:
	add	%d2, 1
	madd	%d2, %d2, %d3, %d2
	sh	%d2, 1
	itof	%d2, %d2
	div.f	%d15, %d15, %d2
.LVL219:
	j	.L296
.LVL220:
.L297:
.LBE369:
.LBE368:
.LBE367:
.LBE366:
.LBB375:
.LBB376:
	.loc 1 442 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d2, [%a15]0
	.loc 1 445 0
	movh	%d15, 19647
	.loc 1 442 0
	extr.u	%d2, %d2, 28, 2
	.loc 1 445 0
	addi	%d15, %d15, -17376
	.loc 1 442 0
	jz	%d2, .L296
	jne	%d2, 1, .L326
.LVL221:
.LBB377:
.LBB378:
.LBB379:
.LBB380:
.LBB381:
.LBB382:
	.loc 2 1720 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24600
	ld.w	%d2, [%a15]0
	sh	%d2, %d2, -30
	jz	%d2, .L301
	.loc 2 1724 0
	ld.w	%d2, [%a15]0
	.loc 2 1726 0
	movh	%d15, 19353
	.loc 2 1724 0
	sh	%d2, %d2, -30
	.loc 2 1726 0
	addi	%d15, %d15, -27008
	.loc 2 1724 0
	jeq	%d2, 1, .L301
	.loc 2 1728 0
	ld.w	%d2, [%a15]0
	sh	%d2, %d2, -30
	jeq	%d2, 2, .L301
	.loc 2 1735 0
	mov	%d15, 0
.L301:
.LVL222:
.LBE382:
.LBE381:
	.loc 1 370 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24576
	ld.w	%d4, [%a15] 40
	ld.w	%d2, [%a15] 40
	extr.u	%d4, %d4, 9, 7
	extr.u	%d3, %d2, 24, 3
	ld.w	%d2, [%a15] 44
	add	%d4, 1
	and	%d2, %d2, 7
	add	%d2, 1
	madd	%d2, %d2, %d3, %d2
	itof	%d4, %d4
.LBE380:
.LBE379:
	.loc 1 457 0
	movh.a	%a15, 61443
.LBB385:
.LBB383:
	.loc 1 370 0
	itof	%d2, %d2
	mul.f	%d15, %d4, %d15
.LVL223:
.LBE383:
.LBE385:
	.loc 1 457 0
	lea	%a15, [%a15] 24628
.LBB386:
.LBB384:
	.loc 1 370 0
	div.f	%d15, %d15, %d2
.LVL224:
.LBE384:
.LBE386:
	.loc 1 457 0
	ld.w	%d2, [%a15]0
	jnz.t	%d2, 7, .L296
	.loc 1 459 0
	movh	%d2, 16128
	mul.f	%d15, %d15, %d2
.LVL225:
	j	.L296
.LVL226:
.L327:
.LBE378:
.LBE377:
.LBE376:
.LBE375:
.LBB387:
.LBB374:
.LBB373:
.LBB372:
	.loc 1 385 0
	ld.w	%d2, [%a15] 40
	add	%d4, 1
	extr.u	%d3, %d2, 24, 3
	ld.w	%d2, [%a15] 44
	itof	%d4, %d4
	extr.u	%d2, %d2, 8, 3
	mul.f	%d15, %d4, %d15
.LVL227:
	add	%d2, 1
	madd	%d2, %d2, %d3, %d2
	movh	%d3, 16333
	addi	%d3, %d3, -13107
	itof	%d2, %d2
	mul.f	%d2, %d2, %d3
	div.f	%d15, %d15, %d2
.LVL228:
	j	.L296
.LBE372:
.LBE373:
.LBE374:
.LBE387:
.LFE246:
	.size	IfxScuCcu_getMscFrequency, .-IfxScuCcu_getMscFrequency
.section .text.IfxScuCcu_getPerPllFrequency1,"ax",@progbits
	.align 1
	.global	IfxScuCcu_getPerPllFrequency1
	.type	IfxScuCcu_getPerPllFrequency1, @function
IfxScuCcu_getPerPllFrequency1:
.LFB247:
	.loc 1 364 0
.LVL229:
.LBB390:
.LBB391:
	.loc 2 1720 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24600
	ld.w	%d2, [%a15]0
	.loc 2 1722 0
	movh	%d15, 19647
	.loc 2 1720 0
	sh	%d2, %d2, -30
	.loc 2 1722 0
	addi	%d15, %d15, -17376
	.loc 2 1720 0
	jz	%d2, .L329
	.loc 2 1724 0
	ld.w	%d2, [%a15]0
	.loc 2 1726 0
	movh	%d15, 19353
	.loc 2 1724 0
	sh	%d2, %d2, -30
	.loc 2 1726 0
	addi	%d15, %d15, -27008
	.loc 2 1724 0
	jeq	%d2, 1, .L329
	.loc 2 1728 0
	ld.w	%d2, [%a15]0
	sh	%d2, %d2, -30
	jeq	%d2, 2, .L329
	.loc 2 1735 0
	mov	%d15, 0
.L329:
.LVL230:
.LBE391:
.LBE390:
	.loc 1 370 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24576
	ld.w	%d4, [%a15] 40
	ld.w	%d3, [%a15] 40
	extr.u	%d4, %d4, 9, 7
	extr.u	%d2, %d3, 24, 3
	ld.w	%d3, [%a15] 44
	add	%d4, 1
	and	%d3, %d3, 7
.LVL231:
	add	%d3, 1
	madd	%d3, %d3, %d2, %d3
	itof	%d4, %d4
	itof	%d2, %d3
	mul.f	%d15, %d4, %d15
.LVL232:
	.loc 1 373 0
	div.f	%d2, %d15, %d2
	ret
.LFE247:
	.size	IfxScuCcu_getPerPllFrequency1, .-IfxScuCcu_getPerPllFrequency1
.section .text.IfxScuCcu_getPerPllFrequency2,"ax",@progbits
	.align 1
	.global	IfxScuCcu_getPerPllFrequency2
	.type	IfxScuCcu_getPerPllFrequency2, @function
IfxScuCcu_getPerPllFrequency2:
.LFB248:
	.loc 1 377 0
.LVL233:
.LBB394:
.LBB395:
	.loc 2 1720 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24600
	ld.w	%d2, [%a15]0
	.loc 2 1722 0
	movh	%d15, 19647
	.loc 2 1720 0
	sh	%d2, %d2, -30
	.loc 2 1722 0
	addi	%d15, %d15, -17376
	.loc 2 1720 0
	jz	%d2, .L337
	.loc 2 1724 0
	ld.w	%d2, [%a15]0
	.loc 2 1726 0
	movh	%d15, 19353
	.loc 2 1724 0
	sh	%d2, %d2, -30
	.loc 2 1726 0
	addi	%d15, %d15, -27008
	.loc 2 1724 0
	jeq	%d2, 1, .L337
	.loc 2 1728 0
	ld.w	%d2, [%a15]0
	sh	%d2, %d2, -30
	jeq	%d2, 2, .L337
	.loc 2 1735 0
	mov	%d15, 0
.L337:
.LVL234:
.LBE395:
.LBE394:
	.loc 1 383 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24576
	ld.w	%d2, [%a15] 40
	jz.t	%d2, 0, .L346
	.loc 1 389 0
	ld.w	%d2, [%a15] 40
	ld.w	%d3, [%a15] 40
	extr.u	%d2, %d2, 9, 7
	extr.u	%d4, %d3, 24, 3
	ld.w	%d3, [%a15] 44
	add	%d2, 1
	extr.u	%d3, %d3, 8, 3
	itof	%d2, %d2
	add	%d3, 1
	madd	%d3, %d3, %d4, %d3
	mul.f	%d15, %d2, %d15
.LVL235:
	sh	%d3, 1
	itof	%d3, %d3
	div.f	%d2, %d15, %d3
.LVL236:
	.loc 1 393 0
	ret
.LVL237:
.L346:
	.loc 1 385 0
	ld.w	%d2, [%a15] 40
	ld.w	%d3, [%a15] 40
	extr.u	%d2, %d2, 9, 7
	extr.u	%d4, %d3, 24, 3
	ld.w	%d3, [%a15] 44
	add	%d2, 1
	extr.u	%d3, %d3, 8, 3
	itof	%d2, %d2
	add	%d3, 1
	madd	%d3, %d3, %d4, %d3
	movh	%d4, 16333
	addi	%d4, %d4, -13107
	itof	%d3, %d3
	mul.f	%d15, %d2, %d15
.LVL238:
	mul.f	%d3, %d3, %d4
	div.f	%d2, %d15, %d3
.LVL239:
	ret
.LFE248:
	.size	IfxScuCcu_getPerPllFrequency2, .-IfxScuCcu_getPerPllFrequency2
.section .text.IfxScuCcu_getPllFrequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_getPllFrequency
	.type	IfxScuCcu_getPllFrequency, @function
IfxScuCcu_getPllFrequency:
.LFB249:
	.loc 1 397 0
.LVL240:
.LBB398:
.LBB399:
	.loc 2 1720 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24600
	ld.w	%d2, [%a15]0
	.loc 2 1722 0
	movh	%d15, 19647
	.loc 2 1720 0
	sh	%d2, %d2, -30
	.loc 2 1722 0
	addi	%d15, %d15, -17376
	.loc 2 1720 0
	jz	%d2, .L348
	.loc 2 1724 0
	ld.w	%d2, [%a15]0
	.loc 2 1726 0
	movh	%d15, 19353
	.loc 2 1724 0
	sh	%d2, %d2, -30
	.loc 2 1726 0
	addi	%d15, %d15, -27008
	.loc 2 1724 0
	jeq	%d2, 1, .L348
	.loc 2 1728 0
	ld.w	%d2, [%a15]0
	sh	%d2, %d2, -30
	jeq	%d2, 2, .L348
	.loc 2 1735 0
	mov	%d15, 0
.L348:
.LVL241:
.LBE399:
.LBE398:
	.loc 1 403 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24576
	ld.w	%d4, [%a15] 24
	ld.w	%d3, [%a15] 28
	extr.u	%d4, %d4, 9, 7
	and	%d2, %d3, 7
	ld.w	%d3, [%a15] 24
	add	%d4, 1
	extr.u	%d3, %d3, 24, 3
.LVL242:
	itof	%d4, %d4
	add	%d3, 1
	madd	%d3, %d3, %d2, %d3
	mul.f	%d15, %d4, %d15
.LVL243:
	itof	%d2, %d3
	.loc 1 405 0
	div.f	%d2, %d15, %d2
	ret
.LFE249:
	.size	IfxScuCcu_getPllFrequency, .-IfxScuCcu_getPllFrequency
.section .text.IfxScuCcu_getQspiFrequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_getQspiFrequency
	.type	IfxScuCcu_getQspiFrequency, @function
IfxScuCcu_getQspiFrequency:
.LFB250:
	.loc 1 409 0
.LVL244:
	.loc 1 413 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24628
	ld.w	%d15, [%a15]0
	extr.u	%d15, %d15, 28, 2
	jeq	%d15, 1, .L357
	jeq	%d15, 2, .L358
.L386:
	.loc 1 411 0
	mov	%d15, 0
.L356:
.LVL245:
	.loc 1 429 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24628
	ld.w	%d3, [%a15]0
	.loc 1 410 0
	mov	%d2, 0
	.loc 1 429 0
	extr.u	%d3, %d3, 24, 4
	jz	%d3, .L366
	.loc 1 431 0
	ld.w	%d2, [%a15]0
	extr.u	%d2, %d2, 24, 4
	itof	%d2, %d2
	div.f	%d2, %d15, %d2
.LVL246:
.L366:
	.loc 1 435 0
	ret
.LVL247:
.L358:
.LBB414:
.LBB415:
	.loc 1 442 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d2, [%a15]0
	.loc 1 445 0
	movh	%d15, 19647
	.loc 1 442 0
	extr.u	%d2, %d2, 28, 2
	.loc 1 445 0
	addi	%d15, %d15, -17376
	.loc 1 442 0
	jz	%d2, .L356
	jne	%d2, 1, .L386
.LVL248:
.LBB416:
.LBB417:
.LBB418:
.LBB419:
	.loc 2 1720 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24600
	ld.w	%d2, [%a15]0
	sh	%d2, %d2, -30
	jz	%d2, .L364
	.loc 2 1724 0
	ld.w	%d2, [%a15]0
	.loc 2 1726 0
	movh	%d15, 19353
	.loc 2 1724 0
	sh	%d2, %d2, -30
	.loc 2 1726 0
	addi	%d15, %d15, -27008
	.loc 2 1724 0
	jeq	%d2, 1, .L364
	.loc 2 1728 0
	ld.w	%d2, [%a15]0
	sh	%d2, %d2, -30
	jeq	%d2, 2, .L364
	.loc 2 1735 0
	mov	%d15, 0
.L364:
.LVL249:
.LBE419:
.LBE418:
	.loc 1 383 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24576
	ld.w	%d2, [%a15] 40
	.loc 1 385 0
	ld.w	%d4, [%a15] 40
	extr.u	%d4, %d4, 9, 7
	.loc 1 383 0
	jz.t	%d2, 0, .L387
	.loc 1 389 0
	ld.w	%d2, [%a15] 40
	add	%d4, 1
	extr.u	%d3, %d2, 24, 3
	ld.w	%d2, [%a15] 44
	itof	%d4, %d4
	extr.u	%d2, %d2, 8, 3
	mul.f	%d15, %d15, %d4
.LVL250:
	add	%d2, 1
	madd	%d2, %d2, %d3, %d2
	sh	%d2, 1
	itof	%d2, %d2
	div.f	%d15, %d15, %d2
.LVL251:
	j	.L356
.LVL252:
.L357:
.LBE417:
.LBE416:
.LBE415:
.LBE414:
.LBB423:
.LBB424:
	.loc 1 442 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d2, [%a15]0
	.loc 1 445 0
	movh	%d15, 19647
	.loc 1 442 0
	extr.u	%d2, %d2, 28, 2
	.loc 1 445 0
	addi	%d15, %d15, -17376
	.loc 1 442 0
	jz	%d2, .L356
	jne	%d2, 1, .L386
.LVL253:
.LBB425:
.LBB426:
.LBB427:
.LBB428:
.LBB429:
.LBB430:
	.loc 2 1720 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24600
	ld.w	%d2, [%a15]0
	sh	%d2, %d2, -30
	jz	%d2, .L361
	.loc 2 1724 0
	ld.w	%d2, [%a15]0
	.loc 2 1726 0
	movh	%d15, 19353
	.loc 2 1724 0
	sh	%d2, %d2, -30
	.loc 2 1726 0
	addi	%d15, %d15, -27008
	.loc 2 1724 0
	jeq	%d2, 1, .L361
	.loc 2 1728 0
	ld.w	%d2, [%a15]0
	sh	%d2, %d2, -30
	jeq	%d2, 2, .L361
	.loc 2 1735 0
	mov	%d15, 0
.L361:
.LVL254:
.LBE430:
.LBE429:
	.loc 1 370 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24576
	ld.w	%d4, [%a15] 40
	ld.w	%d2, [%a15] 40
	extr.u	%d4, %d4, 9, 7
	extr.u	%d3, %d2, 24, 3
	ld.w	%d2, [%a15] 44
	add	%d4, 1
	and	%d2, %d2, 7
	add	%d2, 1
	madd	%d2, %d2, %d3, %d2
	itof	%d4, %d4
.LBE428:
.LBE427:
	.loc 1 457 0
	movh.a	%a15, 61443
.LBB433:
.LBB431:
	.loc 1 370 0
	itof	%d2, %d2
	mul.f	%d15, %d4, %d15
.LVL255:
.LBE431:
.LBE433:
	.loc 1 457 0
	lea	%a15, [%a15] 24628
.LBB434:
.LBB432:
	.loc 1 370 0
	div.f	%d15, %d15, %d2
.LVL256:
.LBE432:
.LBE434:
	.loc 1 457 0
	ld.w	%d2, [%a15]0
	jnz.t	%d2, 7, .L356
	.loc 1 459 0
	movh	%d2, 16128
	mul.f	%d15, %d15, %d2
.LVL257:
	j	.L356
.LVL258:
.L387:
.LBE426:
.LBE425:
.LBE424:
.LBE423:
.LBB435:
.LBB422:
.LBB421:
.LBB420:
	.loc 1 385 0
	ld.w	%d2, [%a15] 40
	add	%d4, 1
	extr.u	%d3, %d2, 24, 3
	ld.w	%d2, [%a15] 44
	itof	%d4, %d4
	extr.u	%d2, %d2, 8, 3
	mul.f	%d15, %d4, %d15
.LVL259:
	add	%d2, 1
	madd	%d2, %d2, %d3, %d2
	movh	%d3, 16333
	addi	%d3, %d3, -13107
	itof	%d2, %d2
	mul.f	%d2, %d2, %d3
	div.f	%d15, %d15, %d2
.LVL260:
	j	.L356
.LBE420:
.LBE421:
.LBE422:
.LBE435:
.LFE250:
	.size	IfxScuCcu_getQspiFrequency, .-IfxScuCcu_getQspiFrequency
.section .text.IfxScuCcu_getSourceFrequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_getSourceFrequency
	.type	IfxScuCcu_getSourceFrequency, @function
IfxScuCcu_getSourceFrequency:
.LFB251:
	.loc 1 439 0
.LVL261:
	.loc 1 442 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d15, [%a15]0
	.loc 1 445 0
	movh	%d2, 19647
	.loc 1 442 0
	extr.u	%d15, %d15, 28, 2
	.loc 1 445 0
	addi	%d2, %d2, -17376
	.loc 1 442 0
	jz	%d15, .L390
	jne	%d15, 1, .L420
	.loc 1 449 0
	jeq	%d4, 1, .L392
	jz	%d4, .L393
	jne	%d4, 2, .L420
.LVL262:
.LBB450:
.LBB451:
.LBB452:
.LBB453:
	.loc 2 1720 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24600
	ld.w	%d15, [%a15]0
	sh	%d15, %d15, -30
	jz	%d15, .L397
	.loc 2 1724 0
	ld.w	%d15, [%a15]0
	.loc 2 1726 0
	movh	%d2, 19353
	.loc 2 1724 0
	sh	%d15, %d15, -30
	.loc 2 1726 0
	addi	%d2, %d2, -27008
	.loc 2 1724 0
	jeq	%d15, 1, .L397
	.loc 2 1728 0
	ld.w	%d15, [%a15]0
	sh	%d15, %d15, -30
	jeq	%d15, 2, .L397
	.loc 2 1735 0
	mov	%d2, 0
.L397:
.LVL263:
.LBE453:
.LBE452:
	.loc 1 383 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24576
	ld.w	%d15, [%a15] 40
	.loc 1 385 0
	ld.w	%d4, [%a15] 40
.LVL264:
	extr.u	%d4, %d4, 9, 7
	.loc 1 383 0
	jz.t	%d15, 0, .L421
	.loc 1 389 0
	ld.w	%d15, [%a15] 40
	add	%d4, 1
	extr.u	%d3, %d15, 24, 3
	ld.w	%d15, [%a15] 44
	itof	%d4, %d4
	extr.u	%d15, %d15, 8, 3
	mul.f	%d2, %d2, %d4
.LVL265:
	add	%d15, 1
	madd	%d15, %d15, %d3, %d15
	sh	%d15, 1
	itof	%d15, %d15
	div.f	%d2, %d2, %d15
.LVL266:
	ret
.LVL267:
.L420:
.LBE451:
.LBE450:
	.loc 1 467 0
	mov	%d2, 0
.LVL268:
.L390:
	.loc 1 478 0
	ret
.LVL269:
.L393:
.LBB455:
.LBB456:
.LBB457:
.LBB458:
	.loc 2 1720 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24600
	ld.w	%d15, [%a15]0
	sh	%d15, %d15, -30
	jz	%d15, .L395
	.loc 2 1724 0
	ld.w	%d15, [%a15]0
	.loc 2 1726 0
	movh	%d2, 19353
	.loc 2 1724 0
	sh	%d15, %d15, -30
	.loc 2 1726 0
	addi	%d2, %d2, -27008
	.loc 2 1724 0
	jeq	%d15, 1, .L395
	.loc 2 1728 0
	ld.w	%d15, [%a15]0
	sh	%d15, %d15, -30
	jeq	%d15, 2, .L395
	.loc 2 1735 0
	mov	%d2, 0
.L395:
.LVL270:
.LBE458:
.LBE457:
	.loc 1 403 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24576
	ld.w	%d4, [%a15] 24
.LVL271:
	ld.w	%d15, [%a15] 28
	extr.u	%d4, %d4, 9, 7
	and	%d3, %d15, 7
	ld.w	%d15, [%a15] 24
	add	%d4, 1
	extr.u	%d15, %d15, 24, 3
	itof	%d4, %d4
	add	%d15, 1
	madd	%d15, %d15, %d3, %d15
	mul.f	%d2, %d4, %d2
.LVL272:
	itof	%d15, %d15
	div.f	%d2, %d2, %d15
.LVL273:
.LBE456:
.LBE455:
	.loc 1 453 0
	ret
.LVL274:
.L392:
.LBB459:
.LBB460:
.LBB461:
.LBB462:
.LBB463:
.LBB464:
	.loc 2 1720 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24600
	ld.w	%d15, [%a15]0
	sh	%d15, %d15, -30
	jz	%d15, .L396
	.loc 2 1724 0
	ld.w	%d15, [%a15]0
	.loc 2 1726 0
	movh	%d2, 19353
	.loc 2 1724 0
	sh	%d15, %d15, -30
	.loc 2 1726 0
	addi	%d2, %d2, -27008
	.loc 2 1724 0
	jeq	%d15, 1, .L396
	.loc 2 1728 0
	ld.w	%d15, [%a15]0
	sh	%d15, %d15, -30
	jeq	%d15, 2, .L396
	.loc 2 1735 0
	mov	%d2, 0
.L396:
.LVL275:
.LBE464:
.LBE463:
	.loc 1 370 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24576
	ld.w	%d4, [%a15] 40
.LVL276:
	ld.w	%d15, [%a15] 40
	extr.u	%d4, %d4, 9, 7
	extr.u	%d3, %d15, 24, 3
	ld.w	%d15, [%a15] 44
	add	%d4, 1
	and	%d15, %d15, 7
	add	%d15, 1
	madd	%d15, %d15, %d3, %d15
	itof	%d4, %d4
.LBE462:
.LBE461:
	.loc 1 457 0
	movh.a	%a15, 61443
.LBB467:
.LBB465:
	.loc 1 370 0
	itof	%d15, %d15
	mul.f	%d2, %d4, %d2
.LVL277:
.LBE465:
.LBE467:
	.loc 1 457 0
	lea	%a15, [%a15] 24628
.LBB468:
.LBB466:
	.loc 1 370 0
	div.f	%d2, %d2, %d15
.LVL278:
.LBE466:
.LBE468:
	.loc 1 457 0
	ld.w	%d15, [%a15]0
	jnz.t	%d15, 7, .L390
	.loc 1 459 0
	movh	%d15, 16128
	mul.f	%d2, %d2, %d15
.LVL279:
	ret
.LVL280:
.L421:
.LBE460:
.LBE459:
.LBB469:
.LBB454:
	.loc 1 385 0
	ld.w	%d15, [%a15] 40
	add	%d4, 1
	extr.u	%d3, %d15, 24, 3
	ld.w	%d15, [%a15] 44
	itof	%d4, %d4
	extr.u	%d15, %d15, 8, 3
	mul.f	%d2, %d4, %d2
.LVL281:
	add	%d15, 1
	madd	%d15, %d15, %d3, %d15
	movh	%d3, 16333
	addi	%d3, %d3, -13107
	itof	%d15, %d15
	mul.f	%d15, %d15, %d3
	div.f	%d2, %d2, %d15
.LVL282:
	ret
.LBE454:
.LBE469:
.LFE251:
	.size	IfxScuCcu_getSourceFrequency, .-IfxScuCcu_getSourceFrequency
.section .text.IfxScuCcu_getSpbFrequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_getSpbFrequency
	.type	IfxScuCcu_getSpbFrequency, @function
IfxScuCcu_getSpbFrequency:
.LFB252:
	.loc 1 482 0
.LVL283:
.LBB476:
.LBB477:
	.loc 1 442 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d2, [%a15]0
	.loc 1 445 0
	movh	%d15, 19647
	.loc 1 442 0
	extr.u	%d2, %d2, 28, 2
	.loc 1 445 0
	addi	%d15, %d15, -17376
	.loc 1 442 0
	jz	%d2, .L424
	jne	%d2, 1, .L447
.LVL284:
.LBB478:
.LBB479:
.LBB480:
.LBB481:
	.loc 2 1720 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24600
	ld.w	%d2, [%a15]0
	sh	%d2, %d2, -30
	jz	%d2, .L426
	.loc 2 1724 0
	ld.w	%d2, [%a15]0
	.loc 2 1726 0
	movh	%d15, 19353
	.loc 2 1724 0
	sh	%d2, %d2, -30
	.loc 2 1726 0
	addi	%d15, %d15, -27008
	.loc 2 1724 0
	jeq	%d2, 1, .L426
	.loc 2 1728 0
	ld.w	%d2, [%a15]0
	sh	%d2, %d2, -30
	jeq	%d2, 2, .L426
	.loc 2 1735 0
	mov	%d15, 0
.L426:
.LVL285:
.LBE481:
.LBE480:
	.loc 1 403 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24576
	ld.w	%d4, [%a15] 24
	ld.w	%d2, [%a15] 28
	extr.u	%d4, %d4, 9, 7
	and	%d3, %d2, 7
	ld.w	%d2, [%a15] 24
	add	%d4, 1
	extr.u	%d2, %d2, 24, 3
	itof	%d4, %d4
	add	%d2, 1
	madd	%d2, %d2, %d3, %d2
	mul.f	%d15, %d4, %d15
.LVL286:
	itof	%d2, %d2
	div.f	%d15, %d15, %d2
.LVL287:
.L424:
.LBE479:
.LBE478:
.LBE477:
.LBE476:
	.loc 1 487 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d3, [%a15]0
	.loc 1 516 0
	mov	%d2, 0
	.loc 1 487 0
	extr.u	%d3, %d3, 12, 3
	jge.u	%d3, 5, .L427
	movh.a	%a15, hi:.L429
	lea	%a15, [%a15] lo:.L429
	addsc.a	%a15, %a15, %d3, 2
	ji	%a15
	.align 2
	.align 2
.L429:
	.code32
	j	.L428
	.code32
	j	.L430
	.code32
	j	.L431
	.code32
	j	.L432
	.code32
	j	.L433
.L433:
	.loc 1 513 0
	movh	%d2, 17264
	div.f	%d2, %d15, %d2
.LVL288:
.L427:
	.loc 1 521 0
	ret
.LVL289:
.L447:
.LBB483:
.LBB482:
	.loc 1 473 0
	mov	%d15, 0
	j	.L424
.LVL290:
.L428:
.LBE482:
.LBE483:
	.loc 1 491 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d3, [%a15]0
	.loc 1 495 0
	mov	%d2, 0
	.loc 1 491 0
	extr.u	%d3, %d3, 16, 4
	jz	%d3, .L427
	.loc 1 492 0 discriminator 1
	ld.w	%d3, [%a15]0
	extr.u	%d3, %d3, 16, 4
	.loc 1 491 0 discriminator 1
	jeq	%d3, 1, .L427
	.loc 1 499 0
	ld.w	%d2, [%a15]0
	extr.u	%d2, %d2, 16, 4
	itof	%d2, %d2
	div.f	%d2, %d15, %d2
.LVL291:
	ret
.LVL292:
.L430:
	.loc 1 504 0
	movh	%d2, 16880
	div.f	%d2, %d15, %d2
.LVL293:
	.loc 1 505 0
	ret
.LVL294:
.L431:
	.loc 1 507 0
	movh	%d2, 17008
	div.f	%d2, %d15, %d2
.LVL295:
	.loc 1 508 0
	ret
.LVL296:
.L432:
	.loc 1 510 0
	movh	%d2, 17136
	div.f	%d2, %d15, %d2
.LVL297:
	.loc 1 511 0
	ret
.LFE252:
	.size	IfxScuCcu_getSpbFrequency, .-IfxScuCcu_getSpbFrequency
.section .text.IfxScuCcu_getSriFrequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_getSriFrequency
	.type	IfxScuCcu_getSriFrequency, @function
IfxScuCcu_getSriFrequency:
.LFB253:
	.loc 1 525 0
.LVL298:
.LBB490:
.LBB491:
	.loc 1 442 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d2, [%a15]0
	.loc 1 445 0
	movh	%d15, 19647
	.loc 1 442 0
	extr.u	%d2, %d2, 28, 2
	.loc 1 445 0
	addi	%d15, %d15, -17376
	.loc 1 442 0
	jz	%d2, .L450
	jne	%d2, 1, .L471
.LVL299:
.LBB492:
.LBB493:
.LBB494:
.LBB495:
	.loc 2 1720 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24600
	ld.w	%d2, [%a15]0
	sh	%d2, %d2, -30
	jz	%d2, .L452
	.loc 2 1724 0
	ld.w	%d2, [%a15]0
	.loc 2 1726 0
	movh	%d15, 19353
	.loc 2 1724 0
	sh	%d2, %d2, -30
	.loc 2 1726 0
	addi	%d15, %d15, -27008
	.loc 2 1724 0
	jeq	%d2, 1, .L452
	.loc 2 1728 0
	ld.w	%d2, [%a15]0
	sh	%d2, %d2, -30
	jeq	%d2, 2, .L452
	.loc 2 1735 0
	mov	%d15, 0
.L452:
.LVL300:
.LBE495:
.LBE494:
	.loc 1 403 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24576
	ld.w	%d4, [%a15] 24
	ld.w	%d2, [%a15] 28
	extr.u	%d4, %d4, 9, 7
	and	%d3, %d2, 7
	ld.w	%d2, [%a15] 24
	add	%d4, 1
	extr.u	%d2, %d2, 24, 3
	itof	%d4, %d4
	add	%d2, 1
	madd	%d2, %d2, %d3, %d2
	mul.f	%d15, %d4, %d15
.LVL301:
	itof	%d2, %d2
	div.f	%d15, %d15, %d2
.LVL302:
.L450:
.LBE493:
.LBE492:
.LBE491:
.LBE490:
	.loc 1 530 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d3, [%a15]0
	.loc 1 557 0
	mov	%d2, 0
	.loc 1 530 0
	extr.u	%d3, %d3, 12, 3
	jge.u	%d3, 5, .L453
	movh.a	%a15, hi:.L455
	lea	%a15, [%a15] lo:.L455
	addsc.a	%a15, %a15, %d3, 2
	ji	%a15
	.align 2
	.align 2
.L455:
	.code32
	j	.L454
	.code32
	j	.L456
	.code32
	j	.L457
	.code32
	j	.L458
	.code32
	j	.L459
.L459:
	.loc 1 554 0
	movh	%d2, 17264
	div.f	%d2, %d15, %d2
.LVL303:
.L453:
	.loc 1 562 0
	ret
.LVL304:
.L471:
.LBB497:
.LBB496:
	.loc 1 473 0
	mov	%d15, 0
	j	.L450
.LVL305:
.L454:
.LBE496:
.LBE497:
	.loc 1 534 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d3, [%a15]0
	.loc 1 536 0
	mov	%d2, 0
	.loc 1 534 0
	extr.u	%d3, %d3, 8, 4
	jz	%d3, .L453
	.loc 1 540 0
	ld.w	%d2, [%a15]0
	extr.u	%d2, %d2, 8, 4
	itof	%d2, %d2
	div.f	%d2, %d15, %d2
.LVL306:
	ret
.LVL307:
.L456:
	.loc 1 545 0
	movh	%d2, 16880
	div.f	%d2, %d15, %d2
.LVL308:
	.loc 1 546 0
	ret
.LVL309:
.L457:
	.loc 1 548 0
	movh	%d2, 17008
	div.f	%d2, %d15, %d2
.LVL310:
	.loc 1 549 0
	ret
.LVL311:
.L458:
	.loc 1 551 0
	movh	%d2, 17136
	div.f	%d2, %d15, %d2
.LVL312:
	.loc 1 552 0
	ret
.LFE253:
	.size	IfxScuCcu_getSriFrequency, .-IfxScuCcu_getSriFrequency
.section .text.IfxScuCcu_initConfig,"ax",@progbits
	.align 1
	.global	IfxScuCcu_initConfig
	.type	IfxScuCcu_initConfig, @function
IfxScuCcu_initConfig:
.LFB255:
	.loc 1 612 0
.LVL313:
	.loc 1 613 0
	movh	%d2, hi:IfxScuCcu_defaultClockConfig
	mov.a	%a2, %d2
	lea	%a15, [%a2] lo:IfxScuCcu_defaultClockConfig
		# #chunks=12, chunksize=8, remains=4
	lea	%a2, 12-1
	0:
	ld.d	%e2, [%a15+]8
	st.d	[%a4+]8, %e2
	loop	%a2, 0b
	ld.w	%d2, [%a15+]4
	st.w	[%a4+]4, %d2
.LVL314:
	ret
.LFE255:
	.size	IfxScuCcu_initConfig, .-IfxScuCcu_initConfig
.section .text.IfxScuCcu_modulation_init,"ax",@progbits
	.align 1
	.global	IfxScuCcu_modulation_init
	.type	IfxScuCcu_modulation_init, @function
IfxScuCcu_modulation_init:
.LFB256:
	.loc 1 618 0
.LVL315:
	.loc 1 627 0
	ld.bu	%d15, [%a4]0
	.loc 1 622 0
	ld.bu	%d2, [%a4] 1
.LVL316:
	.loc 1 627 0
	jeq	%d15, 1, .L482
	ret
.L482:
.LVL317:
.LBB502:
.LBB503:
	.loc 1 104 0
	movh.a	%a15, hi:IfxScuCcu_MA_percent
	lea	%a15, [%a15] lo:IfxScuCcu_MA_percent
	addsc.a	%a15, %a15, %d2, 2
.LBB504:
.LBB505:
	.loc 2 1722 0
	movh	%d15, 19647
.LBE505:
.LBE504:
	.loc 1 104 0
	ld.w	%d9, [%a15]0
.LVL318:
.LBB507:
.LBB506:
	.loc 2 1720 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24600
	ld.w	%d2, [%a15]0
.LVL319:
	.loc 2 1722 0
	addi	%d15, %d15, -17376
	.loc 2 1720 0
	sh	%d2, %d2, -30
	jz	%d2, .L475
	.loc 2 1724 0
	ld.w	%d2, [%a15]0
	.loc 2 1726 0
	movh	%d15, 19353
	.loc 2 1724 0
	sh	%d2, %d2, -30
	.loc 2 1726 0
	addi	%d15, %d15, -27008
	.loc 2 1724 0
	jeq	%d2, 1, .L475
	.loc 2 1728 0
	ld.w	%d2, [%a15]0
	sh	%d2, %d2, -30
	jeq	%d2, 2, .L475
	.loc 2 1735 0
	mov	%d15, 0
.L475:
.LVL320:
.LBE506:
.LBE507:
	.loc 1 110 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24576
	ld.w	%d3, [%a15] 24
	ld.w	%d2, [%a15] 24
	extr.u	%d11, %d3, 9, 7
	extr.u	%d10, %d2, 24, 3
.LVL321:
.LBE503:
.LBE502:
	.loc 1 633 0
	call	IfxScuWdt_getSafetyWatchdogPassword
.LVL322:
	.loc 1 634 0
	mov	%d4, %d2
	.loc 1 633 0
	mov	%d8, %d2
.LVL323:
	.loc 1 634 0
	call	IfxScuWdt_clearSafetyEndinit
.LVL324:
.LBB512:
.LBB508:
	.loc 1 112 0
	movh	%d4, 17096
	div.f	%d2, %d9, %d4
.LBE508:
.LBE512:
	.loc 1 639 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24608
	ld.w	%d5, [%a15]0
.LBB513:
.LBB509:
	.loc 1 110 0
	addi	%d3, %d11, 1
	itof	%d3, %d3
	.loc 1 112 0
	add.f	%d4, %d2, %d2
	.loc 1 110 0
	addi	%d2, %d10, 1
	mul.f	%d3, %d3, %d15
	itof	%d2, %d2
.LBE509:
.LBE513:
	.loc 1 640 0
	mov	%d15, -3072
.LVL325:
.LBB514:
.LBB510:
	.loc 1 110 0
	div.f	%d2, %d3, %d2
	.loc 1 112 0
	movh	%d3, 19036
	addi	%d3, %d3, -17920
	div.f	%d3, %d2, %d3
	mul.f	%d2, %d4, %d3
	.loc 1 113 0
	movh	%d4, 16896
	movh	%d3, 16128
	madd.f	%d2, %d3, %d2, %d4
.LBE510:
.LBE514:
	.loc 1 649 0
	mov	%d4, %d8
.LBB515:
.LBB511:
	.loc 1 113 0
	ftouz	%d2, %d2
.LBE511:
.LBE515:
	.loc 1 640 0
	or	%d15, %d2
	insert	%d15, %d5, %d15, 0, 16
.LVL326:
	.loc 1 641 0
	st.w	[%a15]0, %d15
	.loc 1 644 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24600
	ld.w	%d15, [%a15]0
.LVL327:
	.loc 1 645 0
	insert	%d15, %d15, 1, 2, 1
.LVL328:
	.loc 1 646 0
	st.w	[%a15]0, %d15
	.loc 1 649 0
	j	IfxScuWdt_setSafetyEndinit
.LVL329:
.LFE256:
	.size	IfxScuCcu_modulation_init, .-IfxScuCcu_modulation_init
.section .text.IfxScuCcu_init,"ax",@progbits
	.align 1
	.global	IfxScuCcu_init
	.type	IfxScuCcu_init, @function
IfxScuCcu_init:
.LFB254:
	.loc 1 566 0
.LVL330:
.LBB564:
.LBB565:
.LBB566:
.LBB567:
	.loc 3 651 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 25256
	ld.w	%d2, [%a15]0
.LBE567:
.LBE566:
.LBB569:
.LBB570:
	.loc 3 585 0
	ld.w	%d15, [%a15]0
.LBE570:
.LBE569:
.LBB572:
.LBB568:
	.loc 3 651 0
	extr.u	%d2, %d2, 2, 14
.LVL331:
	.loc 3 652 0
	xor	%d2, %d2, 63
.LVL332:
.LBE568:
.LBE572:
.LBB573:
.LBB571:
	.loc 3 590 0
	sh	%d2, 2
.LVL333:
	.loc 3 585 0
	jz.t	%d15, 1, .L485
	.loc 3 591 0
	ld.hu	%d15, [%a15] 2
	sh	%d15, %d15, 16
	or	%d15, %d15, 1
	.loc 3 590 0
	or	%d15, %d2
	.loc 3 588 0
	st.w	[%a15]0, %d15
.L485:
	.loc 3 598 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 25256
	ld.hu	%d15, [%a15] 2
	sh	%d15, %d15, 16
	or	%d15, %d15, 2
	.loc 3 597 0
	or	%d15, %d2
	.loc 3 595 0
	st.w	[%a15]0, %d15
.L486:
	.loc 3 601 0
	ld.w	%d15, [%a15]0
	jnz.t	%d15, 0, .L486
.LBE571:
.LBE573:
	.loc 2 1263 0
	movh.a	%a2, 61443
	lea	%a2, [%a2] 24624
	lea	%a15, 4095
.L487:
	ld.w	%d15, [%a2]0
	jgez	%d15, .L746
	loop	%a15, .L487
	.loc 2 1265 0
	mov	%d8, 1
	j	.L488
.L746:
	.loc 2 1249 0
	mov	%d8, 0
.L488:
.LVL334:
.LBB574:
	.loc 2 1270 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d15, [%a15]0
.LBE574:
	.loc 2 1278 0
	mov.aa	%a2, %a15
.LBB575:
	.loc 2 1271 0
	insert	%d15, %d15, 0, 28, 2
.LVL335:
	.loc 2 1272 0
	insert	%d15, %d15, 1, 30, 1
.LVL336:
	.loc 2 1273 0
	st.w	[%a15]0, %d15
.LVL337:
.LBE575:
	.loc 2 1278 0
	lea	%a15, 4095
.LVL338:
.L490:
	ld.w	%d15, [%a2]0
.LVL339:
	jgez	%d15, .L491
	loop	%a15, .L490
	.loc 2 1280 0
	mov	%d8, 1
.LVL340:
.L491:
	.loc 2 1285 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 26676
	mov	%d15, 188
	.loc 2 1286 0
	movh.a	%a2, 61443
	.loc 2 1285 0
	st.w	[%a15]0, %d15
	.loc 2 1286 0
	lea	%a2, [%a2] 26976
	ld.w	%d15, [%a2]0
	.loc 2 1299 0
	movh.a	%a3, 61443
	.loc 2 1286 0
	andn	%d15, %d15, ~(-30)
	st.w	[%a2]0, %d15
	.loc 2 1287 0
	movh.a	%a2, 61443
	lea	%a2, [%a2] 26980
	ld.w	%d15, [%a2]0
	.loc 2 1299 0
	lea	%a3, [%a3] 24612
	.loc 2 1287 0
	andn	%d15, %d15, ~(-30)
	st.w	[%a2]0, %d15
	.loc 2 1288 0
	movh.a	%a2, 61443
	lea	%a2, [%a2] 26984
	ld.w	%d15, [%a2]0
	andn	%d15, %d15, ~(-30)
	st.w	[%a2]0, %d15
	.loc 2 1289 0
	mov	%d15, 0
	st.w	[%a15]0, %d15
	.loc 2 1294 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24600
	ld.w	%d15, [%a15]0
	.loc 2 1299 0
	movh.a	%a2, 61443
	.loc 2 1294 0
	insert	%d15, %d15, 0, 16, 1
	.loc 2 1299 0
	lea	%a2, [%a2] 24596
	.loc 2 1294 0
	st.w	[%a15]0, %d15
	.loc 2 1295 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24616
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 0, 16, 1
	st.w	[%a15]0, %d15
.LVL341:
	.loc 2 1299 0
	lea	%a15, 12287
.LVL342:
.L493:
	ld.w	%d15, [%a2]0
	jz.t	%d15, 1, .L495
	ld.w	%d15, [%a3]0
	jnz.t	%d15, 1, .L494
.L495:
	loop	%a15, .L493
	.loc 2 1301 0
	mov	%d8, 1
.LVL343:
.L494:
	.loc 2 1306 0
	ld.bu	%d3, [%a4] 4
	add	%d15, %d3, -1
	jlt.u	%d15, 2, .L747
.LVL344:
.L496:
.LBB576:
	.loc 2 1325 0
	movh.a	%a2, 61443
	lea	%a2, [%a2] 24600
	ld.w	%d15, [%a2]0
.LVL345:
	.loc 2 1326 0
	ld.bu	%d4, [%a4] 6
.LBE576:
.LBB577:
	.loc 2 1335 0
	movh.a	%a15, 61443
.LBE577:
.LBB578:
	.loc 2 1326 0
	insert	%d15, %d15, %d4, 24, 3
.LVL346:
	.loc 2 1327 0
	ld.bu	%d4, [%a4] 7
.LBE578:
.LBB579:
	.loc 2 1335 0
	lea	%a15, [%a15] 24616
.LBE579:
.LBB580:
	.loc 2 1327 0
	insert	%d15, %d15, %d4, 9, 7
	.loc 2 1328 0
	insert	%d15, %d15, %d3, 30, 2
.LBE580:
	.loc 2 1348 0
	movh.a	%a3, 61443
.LBB581:
	.loc 2 1329 0
	st.w	[%a2]0, %d15
.LBE581:
.LBB582:
	.loc 2 1335 0
	ld.w	%d15, [%a15]0
.LVL347:
	.loc 2 1336 0
	ld.bu	%d3, [%a4] 14
.LBE582:
	.loc 2 1348 0
	lea	%a3, [%a3] 24612
.LBB583:
	.loc 2 1336 0
	ins.t	%d15, %d15,0, %d3,0
.LVL348:
	.loc 2 1337 0
	ld.bu	%d3, [%a4] 10
	insert	%d15, %d15, %d3, 24, 3
	.loc 2 1338 0
	ld.bu	%d3, [%a4] 11
	insert	%d15, %d15, %d3, 9, 7
	.loc 2 1339 0
	st.w	[%a15]0, %d15
.LBE583:
	.loc 2 1343 0
	ld.w	%d15, [%a2]0
.LVL349:
	insert	%d15, %d15, 1, 16, 1
	st.w	[%a2]0, %d15
	.loc 2 1344 0
	ld.w	%d15, [%a15]0
	.loc 2 1348 0
	movh.a	%a2, 61443
	.loc 2 1344 0
	insert	%d15, %d15, 1, 16, 1
	.loc 2 1348 0
	lea	%a2, [%a2] 24596
	.loc 2 1344 0
	st.w	[%a15]0, %d15
.LVL350:
	.loc 2 1348 0
	lea	%a15, 12287
.LVL351:
.L497:
	ld.w	%d15, [%a2]0
	jnz.t	%d15, 1, .L499
	ld.w	%d15, [%a3]0
	jz.t	%d15, 1, .L498
.L499:
	loop	%a15, .L497
	.loc 2 1350 0
	mov	%d8, 1
.LVL352:
.L498:
	.loc 2 1355 0
	movh.a	%a2, 61443
	.loc 2 1356 0
	movh.a	%a3, 61443
	mov.a	%a15, 0
	.loc 2 1355 0
	lea	%a2, [%a2] 24596
	.loc 2 1356 0
	lea	%a3, [%a3] 24612
	lea	%a15, [%a15] 24575
.LVL353:
.L500:
	.loc 2 1355 0
	ld.w	%d15, [%a2]0
	jz.t	%d15, 5, .L502
	.loc 2 1356 0
	ld.w	%d15, [%a3]0
	.loc 2 1355 0
	jz.t	%d15, 5, .L502
	.loc 2 1357 0
	ld.w	%d15, [%a3]0
	.loc 2 1356 0
	jnz.t	%d15, 4, .L501
.L502:
	loop	%a15, .L500
	.loc 2 1359 0
	mov	%d8, 1
.LVL354:
.L501:
	.loc 2 1362 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24604
	ld.w	%d15, [%a15]0
	ld.bu	%d3, [%a4] 8
	.loc 2 1373 0
	movh.a	%a2, 61443
	.loc 2 1362 0
	insert	%d15, %d15, %d3, 0, 3
	.loc 2 1374 0
	movh.a	%a3, 61443
	.loc 2 1362 0
	st.w	[%a15]0, %d15
.LBB584:
	.loc 2 1365 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24620
	ld.w	%d15, [%a15]0
	.loc 2 1366 0
	ld.bu	%d3, [%a4] 12
.LBE584:
	.loc 2 1373 0
	lea	%a2, [%a2] 24596
.LBB585:
	.loc 2 1366 0
	insert	%d15, %d15, %d3, 0, 3
.LVL355:
	.loc 2 1367 0
	ld.bu	%d3, [%a4] 13
.LBE585:
	.loc 2 1374 0
	lea	%a3, [%a3] 24612
.LBB586:
	.loc 2 1367 0
	insert	%d15, %d15, %d3, 8, 3
	.loc 2 1368 0
	st.w	[%a15]0, %d15
.LVL356:
.LBE586:
	.loc 2 1374 0
	mov.a	%a15, 0
	lea	%a15, [%a15] 24575
.LVL357:
.L503:
	.loc 2 1373 0
	ld.w	%d15, [%a2]0
.LVL358:
	jz.t	%d15, 5, .L505
	.loc 2 1374 0
	ld.w	%d15, [%a3]0
	.loc 2 1373 0
	jz.t	%d15, 5, .L505
	.loc 2 1375 0
	ld.w	%d15, [%a3]0
	.loc 2 1374 0
	jnz.t	%d15, 4, .L504
.L505:
	loop	%a15, .L503
	.loc 2 1377 0
	mov	%d8, 1
.LVL359:
.L504:
	.loc 2 1383 0
	movh.a	%a2, 61443
	movh.a	%a15, 5
	lea	%a2, [%a2] 24592
	lea	%a15, [%a15] -27681
.LVL360:
.L506:
	ld.w	%d15, [%a2]0
	jnz.t	%d15, 1, .L507
	ld.w	%d15, [%a2]0
	jnz.t	%d15, 8, .L507
	loop	%a15, .L506
	.loc 2 1385 0
	mov	%d8, 1
.LVL361:
.L507:
	.loc 2 1390 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24600
	ld.w	%d15, [%a15]0
	.loc 2 1395 0
	movh.a	%a2, 61443
	.loc 2 1390 0
	insert	%d15, %d15, 1, 18, 1
	.loc 2 1395 0
	movh.a	%a3, 61443
	.loc 2 1390 0
	st.w	[%a15]0, %d15
	.loc 2 1391 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24616
	ld.w	%d15, [%a15]0
	.loc 2 1395 0
	lea	%a2, [%a2] 24596
	.loc 2 1391 0
	insert	%d15, %d15, 1, 18, 1
	.loc 2 1395 0
	lea	%a3, [%a3] 24612
	.loc 2 1391 0
	st.w	[%a15]0, %d15
.LVL362:
	.loc 2 1395 0
	lea	%a15, 12287
.LVL363:
.L509:
	ld.w	%d15, [%a2]0
	jz.t	%d15, 2, .L511
	ld.w	%d15, [%a3]0
	jnz.t	%d15, 2, .L510
.L511:
	loop	%a15, .L509
	.loc 2 1397 0
	mov	%d8, 1
.LVL364:
.L510:
	.loc 2 1402 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 26676
	mov	%d15, 188
	.loc 2 1403 0
	movh.a	%a2, 61443
	.loc 2 1402 0
	st.w	[%a15]0, %d15
	.loc 2 1403 0
	lea	%a2, [%a2] 26656
	mov	%d15, 5
	st.w	[%a2]0, %d15
	.loc 2 1404 0
	movh.a	%a2, 61443
	mov	%d15, 29
	lea	%a2, [%a2] 27104
	st.w	[%a2]0, %d15
	.loc 2 1405 0
	mov	%d15, 0
	st.w	[%a15]0, %d15
.LBB587:
	.loc 2 1409 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d3, [%a15]0
.LVL365:
	.loc 2 1415 0
	mov.aa	%a2, %a15
	.loc 2 1410 0
	insert	%d3, %d3, 1, 28, 2
	.loc 2 1411 0
	insert	%d3, %d3, 1, 30, 1
.LVL366:
	.loc 2 1415 0
	lea	%a15, 4095
.LVL367:
.L512:
	ld.w	%d15, [%a2]0
	jgez	%d15, .L513
	loop	%a15, .L512
	.loc 2 1417 0
	mov	%d8, 1
.LVL368:
.L513:
	.loc 2 1420 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	st.w	[%a15]0, %d3
.LVL369:
	.loc 2 1424 0
	mov.aa	%a2, %a15
	lea	%a15, 4095
.LVL370:
.L515:
	ld.w	%d15, [%a2]0
	jgez	%d15, .L516
	loop	%a15, .L515
	.loc 2 1426 0
	mov	%d8, 1
.LVL371:
.L516:
.LBE587:
.LBB588:
.LBB589:
	.loc 3 693 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 25256
	ld.w	%d15, [%a15]0
	jz.t	%d15, 1, .L518
	.loc 3 699 0
	ld.hu	%d15, [%a15] 2
	sh	%d15, %d15, 16
	or	%d15, %d15, 1
	.loc 3 698 0
	or	%d15, %d2
	.loc 3 696 0
	st.w	[%a15]0, %d15
.L518:
	.loc 3 706 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 25256
	ld.hu	%d15, [%a15] 2
	sh	%d15, %d15, 16
	or	%d15, %d15, 3
	.loc 3 705 0
	or	%d2, %d15
	.loc 3 703 0
	st.w	[%a15]0, %d2
.L519:
	.loc 3 709 0
	ld.w	%d15, [%a15]0
	movh.a	%a13, 61443
	lea	%a13, [%a13] 25256
	jz.t	%d15, 0, .L519
.LVL372:
.LBE589:
.LBE588:
.LBE565:
.LBE564:
	.loc 1 570 0
	jz	%d8, .L520
.LVL373:
.L565:
.LBB592:
.LBB593:
.LBB594:
.LBB595:
.LBB596:
.LBB597:
.LBB598:
.LBB599:
	.loc 1 473 0
	mov	%d8, 1
.LVL374:
.L521:
.LBE599:
.LBE598:
.LBE597:
.LBE596:
.LBE595:
.LBE594:
.LBE593:
.LBE592:
	.loc 1 608 0
	mov	%d2, %d8
	ret
.LVL375:
.L520:
	mov.aa	%a12, %a4
	.loc 1 572 0
	ld.a	%a4, [%a4] 96
.LVL376:
	call	IfxScuCcu_modulation_init
.LVL377:
.LBB660:
.LBB661:
.LBB662:
.LBB663:
	.loc 3 651 0
	ld.w	%d3, [%a13]0
.LBE663:
.LBE662:
.LBB665:
.LBB666:
	.loc 3 585 0
	ld.w	%d15, [%a13]0
.LBE666:
.LBE665:
.LBB669:
.LBB664:
	.loc 3 651 0
	extr.u	%d3, %d3, 2, 14
.LVL378:
	.loc 3 652 0
	xor	%d3, %d3, 63
.LVL379:
.LBE664:
.LBE669:
.LBB670:
.LBB667:
	.loc 3 590 0
	sh	%d3, 2
.LVL380:
	.loc 3 585 0
	jnz.t	%d15, 1, .L748
.L523:
	.loc 3 598 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 25256
	ld.hu	%d15, [%a15] 2
	sh	%d15, %d15, 16
	or	%d15, %d15, 2
	.loc 3 597 0
	or	%d15, %d3
	.loc 3 595 0
	st.w	[%a15]0, %d15
.L524:
	.loc 3 601 0
	ld.w	%d15, [%a15]0
	jnz.t	%d15, 0, .L524
.LBE667:
.LBE670:
.LBB671:
	.loc 2 1450 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d2, [%a12] 32
	ld.w	%d4, [%a15]0
.LVL381:
	.loc 2 1452 0
	ld.w	%d15, [%a12] 28
	.loc 2 1450 0
	andn	%d4, %d4, %d2
.LVL382:
	.loc 2 1452 0
	and	%d15, %d2
	.loc 2 1455 0
	mov.aa	%a2, %a15
	.loc 2 1452 0
	or	%d2, %d4, %d15
.LVL383:
	.loc 2 1455 0
	lea	%a15, 4095
.LVL384:
.L525:
	ld.w	%d15, [%a2]0
	jgez	%d15, .L749
	loop	%a15, .L525
	.loc 2 1457 0
	mov	%d4, 1
	j	.L526
.LVL385:
.L748:
.LBE671:
.LBB672:
.LBB668:
	.loc 3 591 0
	ld.hu	%d15, [%a13] 2
	sh	%d15, %d15, 16
	or	%d15, %d15, 1
	.loc 3 590 0
	or	%d15, %d3
	.loc 3 588 0
	st.w	[%a13]0, %d15
	j	.L523
.LVL386:
.L749:
.LBE668:
.LBE672:
.LBB673:
	.loc 2 1455 0
	mov	%d4, 0
.L526:
.LVL387:
	.loc 2 1460 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	st.w	[%a15]0, %d2
.LVL388:
	.loc 2 1463 0
	mov.aa	%a2, %a15
	lea	%a15, 4095
.LVL389:
.L528:
	ld.w	%d15, [%a2]0
	jgez	%d15, .L529
	loop	%a15, .L528
	.loc 2 1465 0
	mov	%d4, 1
.L529:
.LBE673:
.LBB674:
	.loc 2 1471 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24628
	ld.w	%d2, [%a15]0
.LVL390:
	.loc 2 1475 0
	movh	%d15, 12336
	addi	%d15, %d15, 48
	and	%d2, %d15
.LVL391:
	.loc 2 1473 0
	jnz	%d2, .L531
	ld.w	%d5, [%a12] 40
	ld.w	%d15, [%a12] 36
	nor	%d6, %d5, 0
	and	%d5, %d15
.LVL392:
.L532:
	.loc 2 1505 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24628
	ld.w	%d15, [%a15]0
	.loc 2 1511 0
	mov.aa	%a2, %a15
	.loc 2 1505 0
	and	%d6, %d15
	.loc 2 1507 0
	or	%d5, %d6
.LVL393:
	.loc 2 1511 0
	lea	%a15, 4095
.LVL394:
.L538:
	ld.w	%d15, [%a2]0
	jgez	%d15, .L539
	loop	%a15, .L538
	.loc 2 1513 0
	mov	%d4, 1
.L539:
	.loc 2 1516 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24628
	st.w	[%a15]0, %d5
.LVL395:
	.loc 2 1520 0
	mov.aa	%a2, %a15
	lea	%a15, 4095
.LVL396:
.L541:
	ld.w	%d15, [%a2]0
	jgez	%d15, .L542
	loop	%a15, .L541
	.loc 2 1522 0
	mov	%d4, 1
.L542:
.LBE674:
.LBB675:
	.loc 2 1529 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24640
	ld.w	%d2, [%a15]0
.LVL397:
	.loc 2 1531 0
	mov	%d15, 12288
	and	%d2, %d15
.LVL398:
	jnz	%d2, .L544
	ld.w	%d5, [%a12] 48
	ld.w	%d15, [%a12] 44
	nor	%d6, %d5, 0
	and	%d5, %d15
.LVL399:
.L545:
	.loc 2 1558 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24640
	ld.w	%d15, [%a15]0
	.loc 2 1564 0
	mov.aa	%a2, %a15
	.loc 2 1558 0
	and	%d6, %d15
	.loc 2 1560 0
	or	%d5, %d6
.LVL400:
	.loc 2 1564 0
	lea	%a15, 4095
.LVL401:
.L551:
	ld.w	%d15, [%a2]0
	jgez	%d15, .L552
	loop	%a15, .L551
	.loc 2 1566 0
	mov	%d4, 1
.L552:
	.loc 2 1569 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24640
	st.w	[%a15]0, %d5
.LVL402:
	.loc 2 1573 0
	mov.aa	%a2, %a15
	lea	%a15, 4095
.LVL403:
.L554:
	ld.w	%d15, [%a2]0
	jgez	%d15, .L555
	loop	%a15, .L554
	.loc 2 1575 0
	mov	%d4, 1
.L555:
.LBE675:
.LBB676:
	.loc 2 1581 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24652
	ld.w	%d2, [%a12] 56
.LVL404:
	ld.w	%d5, [%a15]0
	.loc 2 1583 0
	ld.w	%d15, [%a12] 52
	.loc 2 1581 0
	andn	%d5, %d5, %d2
	.loc 2 1583 0
	and	%d15, %d2
	or	%d2, %d5, %d15
.LVL405:
	.loc 2 1584 0
	insert	%d2, %d2, 1, 30, 1
.LVL406:
	.loc 2 1587 0
	mov.aa	%a2, %a15
	lea	%a15, 4095
.LVL407:
.L557:
	ld.w	%d15, [%a2]0
	jgez	%d15, .L558
	loop	%a15, .L557
	.loc 2 1589 0
	mov	%d4, 1
.L558:
	.loc 2 1592 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24652
	st.w	[%a15]0, %d2
.LVL408:
	.loc 2 1595 0
	mov.aa	%a2, %a15
	lea	%a15, 4095
.LVL409:
.L560:
	ld.w	%d15, [%a2]0
	jgez	%d15, .L561
	loop	%a15, .L560
	.loc 2 1597 0
	mov	%d4, 1
.L561:
.LBE676:
.LBB677:
	.loc 2 1603 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24704
	ld.w	%d2, [%a15]0
.LVL410:
	ld.w	%d15, [%a12] 64
.LVL411:
	.loc 2 1605 0
	ld.w	%d5, [%a12] 60
	.loc 2 1603 0
	andn	%d2, %d2, %d15
.LVL412:
	.loc 2 1605 0
	and	%d15, %d5
	or	%d15, %d2
.LVL413:
	.loc 2 1606 0
	st.w	[%a15]0, %d15
.LBE677:
.LBB678:
	.loc 2 1612 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24708
	ld.w	%d2, [%a15]0
	ld.w	%d15, [%a12] 72
.LVL414:
	.loc 2 1614 0
	ld.w	%d5, [%a12] 68
	.loc 2 1612 0
	andn	%d2, %d2, %d15
.LVL415:
	.loc 2 1614 0
	and	%d15, %d5
	or	%d15, %d2
.LVL416:
	.loc 2 1615 0
	st.w	[%a15]0, %d15
.LVL417:
.LBE678:
.LBB679:
	.loc 2 1621 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24712
	ld.w	%d2, [%a15]0
	ld.w	%d15, [%a12] 80
.LVL418:
	.loc 2 1623 0
	ld.w	%d5, [%a12] 76
	.loc 2 1621 0
	andn	%d2, %d2, %d15
.LVL419:
	.loc 2 1623 0
	and	%d15, %d5
	or	%d15, %d2
.LVL420:
	.loc 2 1624 0
	st.w	[%a15]0, %d15
.LVL421:
.LBE679:
.LBB680:
	.loc 2 1629 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24716
	ld.w	%d2, [%a15]0
	ld.w	%d15, [%a12] 88
.LVL422:
	.loc 2 1631 0
	ld.w	%d5, [%a12] 84
	.loc 2 1629 0
	andn	%d2, %d2, %d15
.LVL423:
	.loc 2 1631 0
	and	%d15, %d5
	or	%d15, %d2
.LVL424:
	.loc 2 1632 0
	st.w	[%a15]0, %d15
.LVL425:
.LBE680:
.LBB681:
.LBB682:
	.loc 3 693 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 25256
	ld.w	%d15, [%a15]0
.LVL426:
	jz.t	%d15, 1, .L563
	.loc 3 699 0
	ld.hu	%d15, [%a15] 2
	sh	%d15, %d15, 16
	or	%d15, %d15, 1
	.loc 3 698 0
	or	%d15, %d3
	.loc 3 696 0
	st.w	[%a15]0, %d15
.LVL427:
.L563:
	.loc 3 706 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 25256
	ld.hu	%d15, [%a15] 2
	sh	%d15, %d15, 16
	or	%d15, %d15, 3
	.loc 3 705 0
	or	%d3, %d15
	.loc 3 703 0
	st.w	[%a15]0, %d3
.L564:
	.loc 3 709 0
	ld.w	%d15, [%a15]0
	jz.t	%d15, 0, .L564
.LVL428:
.LBE682:
.LBE681:
.LBE661:
.LBE660:
	.loc 1 602 0
	jnz	%d4, .L565
.LVL429:
.LBB686:
.LBB658:
.LBB642:
.LBB643:
	.loc 3 651 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 25256
	ld.w	%d5, [%a15]0
.LBE643:
.LBE642:
	.loc 2 1799 0
	ld.bu	%d15, [%a12] 20
.LBB645:
.LBB644:
	.loc 3 651 0
	extr.u	%d5, %d5, 2, 14
.LVL430:
	.loc 3 652 0
	xor	%d5, %d5, 63
.LVL431:
.LBE644:
.LBE645:
	.loc 2 1799 0
	jz	%d15, .L521
	.loc 2 1807 0
	movh.a	%a3, 61443
	.loc 2 1813 0
	movh.a	%a5, 61443
.LBB646:
.LBB636:
.LBB630:
.LBB624:
.LBB618:
.LBB612:
	.loc 1 442 0
	movh.a	%a4, 61443
.LBB600:
.LBB601:
.LBB602:
.LBB603:
	.loc 2 1720 0
	movh.a	%a7, 61443
.LBE603:
.LBE602:
	.loc 1 403 0
	movh.a	%a6, 61443
	sh	%d5, 2
.LVL432:
.LBE601:
.LBE600:
.LBE612:
.LBE618:
.LBE624:
.LBE630:
.LBE636:
.LBE646:
	.loc 2 1799 0
	mov	%d6, 0
.LBB647:
.LBB648:
	.loc 3 585 0
	mov.aa	%a2, %a15
.LBE648:
.LBE647:
	.loc 2 1807 0
	lea	%a3, [%a3] 24596
	.loc 2 1813 0
	lea	%a5, [%a5] 24604
.LBB650:
.LBB637:
.LBB631:
.LBB625:
.LBB619:
.LBB613:
	.loc 1 442 0
	lea	%a4, [%a4] 24624
.LBB610:
.LBB608:
.LBB606:
.LBB604:
	.loc 2 1720 0
	lea	%a7, [%a7] 24600
.LBE604:
.LBE606:
	.loc 1 403 0
	lea	%a6, [%a6] 24576
.LVL433:
.L579:
.LBE608:
.LBE610:
.LBE613:
.LBE619:
.LBE625:
.LBE631:
.LBE637:
.LBE650:
.LBB651:
.LBB649:
	.loc 3 585 0
	ld.w	%d15, [%a2]0
	and	%d0, %d6, 255
.LVL434:
	jz.t	%d15, 1, .L567
	.loc 3 591 0
	ld.hu	%d15, [%a2] 2
	sh	%d15, %d15, 16
	or	%d15, %d15, 1
	.loc 3 590 0
	or	%d15, %d5
	.loc 3 588 0
	st.w	[%a2]0, %d15
.L567:
	.loc 3 598 0
	ld.hu	%d15, [%a2] 2
	sh	%d15, %d15, 16
	or	%d15, %d15, 2
	.loc 3 597 0
	or	%d15, %d5
	.loc 3 595 0
	st.w	[%a2]0, %d15
.L568:
	.loc 3 601 0
	ld.w	%d15, [%a2]0
	jnz.t	%d15, 0, .L568
.LBE649:
.LBE651:
	.loc 2 1807 0
	mov.a	%a15, 0
	lea	%a15, [%a15] 24575
.L569:
	ld.w	%d15, [%a3]0
	jnz.t	%d15, 5, .L570
	loop	%a15, .L569
	.loc 2 1809 0
	mov	%d8, 1
.L570:
	.loc 2 1813 0
	ld.a	%a13, [%a12] 24
	and	%d3, %d6, 255
	sh	%d3, 3
	addsc.a	%a15, %a13, %d3, 0
	ld.w	%d15, [%a5]0
	ld.bu	%d4, [%a15]0
	insert	%d15, %d15, %d4, 0, 3
	st.w	[%a5]0, %d15
.LVL435:
.LBB652:
.LBB653:
	.loc 3 693 0
	ld.w	%d15, [%a2]0
	jz.t	%d15, 1, .L572
	.loc 3 699 0
	ld.hu	%d15, [%a2] 2
	sh	%d15, %d15, 16
	or	%d15, %d15, 1
	.loc 3 698 0
	or	%d15, %d5
	.loc 3 696 0
	st.w	[%a2]0, %d15
.L572:
	.loc 3 706 0
	ld.hu	%d15, [%a2] 2
	sh	%d15, %d15, 16
	or	%d15, %d15, 3
	.loc 3 705 0
	or	%d15, %d5
	.loc 3 703 0
	st.w	[%a2]0, %d15
.L573:
	.loc 3 709 0
	ld.w	%d15, [%a2]0
	jz.t	%d15, 0, .L573
.LBE653:
.LBE652:
	.loc 2 1818 0
	ld.a	%a13, [%a12] 24
.LBB654:
.LBB638:
.LBB632:
.LBB626:
.LBB620:
.LBB614:
	.loc 1 442 0
	ld.w	%d4, [%a4]0
	.loc 1 445 0
	movh	%d15, 19647
.LBE614:
.LBE620:
.LBE626:
.LBE632:
.LBE638:
.LBE654:
	.loc 2 1818 0
	addsc.a	%a15, %a13, %d3, 0
.LBB655:
.LBB639:
.LBB633:
.LBB627:
.LBB621:
.LBB615:
	.loc 1 442 0
	extr.u	%d4, %d4, 28, 2
.LBE615:
.LBE621:
.LBE627:
.LBE633:
.LBE639:
.LBE655:
	.loc 2 1818 0
	ld.w	%d3, [%a15] 4
.LVL436:
.LBB656:
.LBB640:
.LBB634:
.LBB628:
.LBB622:
.LBB616:
	.loc 1 445 0
	addi	%d15, %d15, -17376
	.loc 1 442 0
	jz	%d4, .L575
	jeq	%d4, 1, .L576
	.loc 1 473 0
	mov	%d15, 0
.L575:
.LVL437:
.LBE616:
.LBE622:
	.loc 2 1750 0
	ld.w	%d4, [%a4]0
	and	%d4, %d4, 15
	itof	%d4, %d4
	div.f	%d15, %d15, %d4
.LVL438:
.LBE628:
.LBE634:
	.loc 2 1828 0
	ld.w	%d4, 0xf0001010
	.loc 2 1827 0
	mul.f	%d3, %d3, %d15
.LVL439:
	ftouz	%d3, %d3
.LVL440:
.L578:
	.loc 2 1830 0
	ld.w	%d15, 0xf0001010
	sub	%d15, %d4
	jlt.u	%d15, %d3, .L578
.LVL441:
	addi	%d3, %d0, 1
.LVL442:
.LBE640:
.LBE656:
	.loc 2 1799 0
	ld.bu	%d15, [%a12] 20
	and	%d3, %d3, 255
	add	%d6, 1
	jlt.u	%d3, %d15, .L579
.LVL443:
.LBE658:
.LBE686:
	.loc 1 608 0
	mov	%d2, %d8
	ret
.LVL444:
.L576:
.LBB687:
.LBB659:
.LBB657:
.LBB641:
.LBB635:
.LBB629:
.LBB623:
.LBB617:
.LBB611:
.LBB609:
.LBB607:
.LBB605:
	.loc 2 1720 0
	ld.w	%d2, [%a7]0
	sh	%d2, %d2, -30
	jz	%d2, .L577
	.loc 2 1724 0
	ld.w	%d2, [%a7]0
	.loc 2 1726 0
	movh	%d15, 19353
	.loc 2 1724 0
	sh	%d2, %d2, -30
	.loc 2 1726 0
	addi	%d15, %d15, -27008
	.loc 2 1724 0
	jeq	%d2, 1, .L577
	.loc 2 1728 0
	ld.w	%d2, [%a7]0
	sh	%d2, %d2, -30
	jeq	%d2, 2, .L577
	.loc 2 1735 0
	mov	%d15, 0
.L577:
.LVL445:
.LBE605:
.LBE607:
	.loc 1 403 0
	ld.w	%d7, [%a6] 24
	ld.w	%d2, [%a6] 28
	extr.u	%d7, %d7, 9, 7
	and	%d4, %d2, 7
	ld.w	%d2, [%a6] 24
	add	%d7, 1
	extr.u	%d2, %d2, 24, 3
	itof	%d7, %d7
	add	%d2, 1
	madd	%d2, %d2, %d4, %d2
	mul.f	%d15, %d7, %d15
.LVL446:
	itof	%d2, %d2
	div.f	%d15, %d15, %d2
.LVL447:
	j	.L575
.LVL448:
.L747:
.LBE609:
.LBE611:
.LBE617:
.LBE623:
.LBE629:
.LBE635:
.LBE641:
.LBE657:
.LBE659:
.LBE687:
.LBB688:
.LBB591:
.LBB590:
	.loc 2 1317 0
	ld.w	%d3, [%a4]0
	movh	%d4, 17180
	addi	%d4, %d4, -8573
	.loc 2 1310 0
	movh.a	%a15, 61443
	.loc 2 1317 0
	mul.u	%e4, %d3, %d4
	.loc 2 1310 0
	lea	%a15, [%a15] 24592
	ld.w	%d15, [%a15]0
	.loc 2 1317 0
	sh	%d3, %d5, -18
	addi	%d3, %d3, -15
	.loc 2 1314 0
	andn	%d15, %d15, ~(-97)
	.loc 2 1317 0
	insert	%d15, %d15, %d3, 16, 5
.LVL449:
	.loc 2 1319 0
	st.w	[%a15]0, %d15
	ld.bu	%d3, [%a4] 4
	j	.L496
.LVL450:
.L544:
.LBE590:
.LBE591:
.LBE688:
.LBB689:
.LBB685:
.LBB683:
	.loc 2 1535 0
	ld.w	%d5, [%a12] 48
	ld.w	%d2, [%a15]0
	.loc 2 1537 0
	ld.w	%d15, [%a12] 44
	.loc 2 1535 0
	nor	%d6, %d5, 0
	and	%d2, %d6
	.loc 2 1537 0
	and	%d5, %d15
	or	%d2, %d5
.LVL451:
	.loc 2 1539 0
	insert	%d2, %d2, 0, 12, 2
.LVL452:
	.loc 2 1543 0
	mov.aa	%a2, %a15
	lea	%a15, 4095
.LVL453:
.L546:
	ld.w	%d15, [%a2]0
	jgez	%d15, .L547
	loop	%a15, .L546
	.loc 2 1545 0
	mov	%d4, 1
.L547:
	.loc 2 1548 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24640
.LVL454:
	st.w	[%a15]0, %d2
.LVL455:
	.loc 2 1552 0
	mov.aa	%a2, %a15
	lea	%a15, 4095
.LVL456:
.L549:
	ld.w	%d15, [%a2]0
	jgez	%d15, .L545
	loop	%a15, .L549
	.loc 2 1554 0
	mov	%d4, 1
	j	.L545
.LVL457:
.L531:
.LBE683:
.LBB684:
	.loc 2 1479 0
	ld.w	%d5, [%a12] 40
	ld.w	%d2, [%a15]0
	.loc 2 1481 0
	ld.w	%d15, [%a12] 36
	.loc 2 1479 0
	nor	%d6, %d5, 0
	and	%d2, %d6
	.loc 2 1481 0
	and	%d5, %d15
	or	%d2, %d5
.LVL458:
	.loc 2 1484 0
	andn	%d2, %d2, ~(-49)
.LVL459:
	.loc 2 1485 0
	insert	%d2, %d2, 0, 20, 2
.LVL460:
	.loc 2 1486 0
	insert	%d2, %d2, 0, 28, 2
.LVL461:
	.loc 2 1490 0
	mov.aa	%a2, %a15
.LVL462:
	lea	%a15, 4095
.LVL463:
.L533:
	ld.w	%d15, [%a2]0
	jgez	%d15, .L534
	loop	%a15, .L533
	.loc 2 1492 0
	mov	%d4, 1
.L534:
	.loc 2 1495 0
	movh.a	%a15, 61443
.LVL464:
	lea	%a15, [%a15] 24628
.LVL465:
	st.w	[%a15]0, %d2
.LVL466:
	.loc 2 1499 0
	mov.aa	%a2, %a15
	lea	%a15, 4095
.LVL467:
.L536:
	ld.w	%d15, [%a2]0
	jgez	%d15, .L532
	loop	%a15, .L536
	.loc 2 1501 0
	mov	%d4, 1
	j	.L532
.LBE684:
.LBE685:
.LBE689:
.LFE254:
	.size	IfxScuCcu_init, .-IfxScuCcu_init
.section .text.IfxScuCcu_setAsclinFFrequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_setAsclinFFrequency
	.type	IfxScuCcu_setAsclinFFrequency, @function
IfxScuCcu_setAsclinFFrequency:
.LFB257:
	.loc 1 655 0
.LVL468:
.LBB706:
.LBB707:
	.loc 1 442 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d2, [%a15]0
	.loc 1 445 0
	movh	%d15, 19647
	.loc 1 442 0
	extr.u	%d2, %d2, 28, 2
.LBE707:
.LBE706:
	.loc 1 655 0
	sub.a	%SP, 16
.LCFI1:
.LBB717:
.LBB714:
	.loc 1 445 0
	addi	%d15, %d15, -17376
	.loc 1 442 0
	jz	%d2, .L752
	jne	%d2, 1, .L794
.LVL469:
.LBB708:
.LBB709:
.LBB710:
.LBB711:
	.loc 2 1720 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24600
	ld.w	%d2, [%a15]0
	sh	%d2, %d2, -30
	jz	%d2, .L754
	.loc 2 1724 0
	ld.w	%d2, [%a15]0
	.loc 2 1726 0
	movh	%d15, 19353
	.loc 2 1724 0
	sh	%d2, %d2, -30
	.loc 2 1726 0
	addi	%d15, %d15, -27008
	.loc 2 1724 0
	jeq	%d2, 1, .L754
	.loc 2 1728 0
	ld.w	%d2, [%a15]0
	sh	%d2, %d2, -30
	jeq	%d2, 2, .L754
	.loc 2 1735 0
	mov	%d15, 0
.L754:
.LVL470:
.LBE711:
.LBE710:
	.loc 1 383 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24576
	ld.w	%d2, [%a15] 40
	.loc 1 385 0
	ld.w	%d5, [%a15] 40
	extr.u	%d5, %d5, 9, 7
	.loc 1 383 0
	jz.t	%d2, 0, .L795
	.loc 1 389 0
	ld.w	%d2, [%a15] 40
	add	%d5, 1
	extr.u	%d3, %d2, 24, 3
	ld.w	%d2, [%a15] 44
	itof	%d5, %d5
	extr.u	%d2, %d2, 8, 3
	mul.f	%d15, %d15, %d5
.LVL471:
	add	%d2, 1
	madd	%d2, %d2, %d3, %d2
	sh	%d2, 1
	itof	%d2, %d2
	div.f	%d15, %d15, %d2
.LVL472:
.L752:
.LBE709:
.LBE708:
.LBE714:
.LBE717:
	.loc 1 659 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24640
	ld.w	%d8, [%a15]0
.LVL473:
	.loc 1 661 0
	div.f	%d15, %d15, %d4
.LVL474:
	ftoiz	%d2, %d15
	itof	%d3, %d2
	sub.f	%d15, %d15, %d3
	movh	%d3, 16128
	cmp.f	%d15, %d15, %d3
	extr.u	%d15, %d15, 2, 1
	add	%d15, %d2
.LVL475:
.LBB718:
.LBB719:
	.file 4 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\Cpu\\Std\\IfxCpu_IntrinsicsGnuc.h"
	.loc 4 168 0
	mov	%d2, 1
#APP
	# 168 ".\output\inc/..\..\Integration\Infineon\iLLD\TC38A\Tricore\Cpu\Std\IfxCpu_IntrinsicsGnuc.h" 1
	max.u %d15, %d15, %d2
	# 0 "" 2
.LVL476:
#NO_APP
.LBE719:
.LBE718:
	.loc 1 664 0
	add	%d2, %d15, -7
	jge.u	%d2, 7, .L759
	.loc 1 666 0 discriminator 1
	andn	%d15, %d15, ~(-2)
.LVL477:
.L769:
	and	%d10, %d15, 15
.L761:
.LVL478:
	.loc 1 674 0
	call	IfxScuWdt_getSafetyWatchdogPassword
.LVL479:
	.loc 1 675 0
	mov	%d4, %d2
	.loc 1 674 0
	mov	%d9, %d2
.LVL480:
	.loc 1 675 0
	call	IfxScuWdt_clearSafetyEndinit
.LVL481:
	.loc 1 679 0
	movh.a	%a15, 61443
	.loc 1 677 0
	insert	%d8, %d8, %d10, 0, 4
	.loc 1 679 0
	lea	%a15, [%a15] 24640
.L762:
	.loc 1 679 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
	movh.a	%a12, 61443
	lea	%a12, [%a12] 24640
	jltz	%d15, .L762
	.loc 1 682 0 is_stmt 1
	st.w	[%a12]0, %d8
	.loc 1 684 0
	mov	%d4, %d9
	call	IfxScuWdt_setSafetyEndinit
.LVL482:
.LBB720:
.LBB721:
	.loc 2 1649 0
	movh.a	%a2, hi:.LC0
	lea	%a2, [%a2] lo:.LC0
	mov.aa	%a3, %SP
		# #chunks=16, chunksize=1, remains=0
	lea	%a4, 16-1
	0:
	ld.bu	%d15, [%a2+]1
	st.b	[%a3+]1, %d15
	loop	%a4, 0b
	.loc 2 1651 0
	ld.w	%d15, [%a12]0
	.loc 2 1649 0
	mov.aa	%a15, %SP
	.loc 2 1651 0
	and	%d15, %d15, 15
	.loc 2 1647 0
	mov	%d2, 0
	.loc 2 1651 0
	jnz	%d15, .L796
.LVL483:
.LBE721:
.LBE720:
	.loc 1 687 0
	ret
.LVL484:
.L759:
	.loc 1 669 0
	eq	%d2, %d15, 14
	mov	%d10, 12
	jnz	%d2, .L761
	j	.L769
.LVL485:
.L796:
.LBB737:
.LBB734:
.LBB722:
.LBB723:
	.loc 1 442 0
	movh.a	%a2, 61443
	lea	%a2, [%a2] 24624
	ld.w	%d3, [%a2]0
	.loc 1 445 0
	movh	%d15, 19647
	.loc 1 442 0
	extr.u	%d3, %d3, 28, 2
	.loc 1 445 0
	addi	%d15, %d15, -17376
	.loc 1 442 0
	jz	%d3, .L765
	jne	%d3, 1, .L797
.LVL486:
.LBB724:
.LBB725:
.LBB726:
.LBB727:
	.loc 2 1720 0
	movh.a	%a2, 61443
	lea	%a2, [%a2] 24600
	ld.w	%d3, [%a2]0
	sh	%d3, %d3, -30
	jz	%d3, .L767
	.loc 2 1724 0
	ld.w	%d3, [%a2]0
	.loc 2 1726 0
	movh	%d15, 19353
	.loc 2 1724 0
	sh	%d3, %d3, -30
	.loc 2 1726 0
	addi	%d15, %d15, -27008
	.loc 2 1724 0
	jeq	%d3, 1, .L767
	.loc 2 1728 0
	ld.w	%d3, [%a2]0
	sh	%d3, %d3, -30
	jeq	%d3, 2, .L767
	.loc 2 1735 0
	mov	%d15, 0
.L767:
.LVL487:
.LBE727:
.LBE726:
	.loc 1 383 0
	movh.a	%a2, 61443
	lea	%a2, [%a2] 24576
	ld.w	%d2, [%a2] 40
	.loc 1 385 0
	ld.w	%d4, [%a2] 40
	extr.u	%d4, %d4, 9, 7
	.loc 1 383 0
	jz.t	%d2, 0, .L798
	.loc 1 389 0
	ld.w	%d2, [%a2] 40
	add	%d4, 1
	extr.u	%d3, %d2, 24, 3
	ld.w	%d2, [%a2] 44
	itof	%d4, %d4
	extr.u	%d2, %d2, 8, 3
	mul.f	%d15, %d15, %d4
.LVL488:
	add	%d2, 1
	madd	%d2, %d2, %d3, %d2
	sh	%d2, 1
	itof	%d2, %d2
	div.f	%d15, %d15, %d2
.LVL489:
.L765:
.LBE725:
.LBE724:
.LBE723:
.LBE722:
	.loc 2 1653 0
	movh.a	%a2, 61443
	lea	%a2, [%a2] 24640
	ld.w	%d2, [%a2]0
	and	%d2, %d2, 15
	addsc.a	%a15, %a15, %d2, 0
	ld.bu	%d2, [%a15]0
	itof	%d2, %d2
	div.f	%d2, %d15, %d2
.LVL490:
.LBE734:
.LBE737:
	.loc 1 687 0
	ret
.LVL491:
.L794:
.LBB738:
.LBB715:
	.loc 1 473 0
	mov	%d15, 0
	j	.L752
.LVL492:
.L797:
.LBE715:
.LBE738:
.LBB739:
.LBB735:
.LBB732:
.LBB730:
	mov	%d15, 0
	j	.L765
.LVL493:
.L795:
.LBE730:
.LBE732:
.LBE735:
.LBE739:
.LBB740:
.LBB716:
.LBB713:
.LBB712:
	.loc 1 385 0
	ld.w	%d2, [%a15] 40
	add	%d5, 1
	extr.u	%d3, %d2, 24, 3
	ld.w	%d2, [%a15] 44
	itof	%d5, %d5
	extr.u	%d2, %d2, 8, 3
	mul.f	%d15, %d5, %d15
.LVL494:
	add	%d2, 1
	madd	%d2, %d2, %d3, %d2
	movh	%d3, 16333
	addi	%d3, %d3, -13107
	itof	%d2, %d2
	mul.f	%d2, %d2, %d3
	div.f	%d15, %d15, %d2
.LVL495:
	j	.L752
.LVL496:
.L798:
.LBE712:
.LBE713:
.LBE716:
.LBE740:
.LBB741:
.LBB736:
.LBB733:
.LBB731:
.LBB729:
.LBB728:
	ld.w	%d2, [%a2] 40
	add	%d4, 1
	extr.u	%d3, %d2, 24, 3
	ld.w	%d2, [%a2] 44
	itof	%d4, %d4
	extr.u	%d2, %d2, 8, 3
	mul.f	%d15, %d4, %d15
.LVL497:
	add	%d2, 1
	madd	%d2, %d2, %d3, %d2
	movh	%d3, 16333
	addi	%d3, %d3, -13107
	itof	%d2, %d2
	mul.f	%d2, %d2, %d3
	div.f	%d15, %d15, %d2
.LVL498:
	j	.L765
.LBE728:
.LBE729:
.LBE731:
.LBE733:
.LBE736:
.LBE741:
.LFE257:
	.size	IfxScuCcu_setAsclinFFrequency, .-IfxScuCcu_setAsclinFFrequency
.section .text.IfxScuCcu_setAsclinSFrequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_setAsclinSFrequency
	.type	IfxScuCcu_setAsclinSFrequency, @function
IfxScuCcu_setAsclinSFrequency:
.LFB258:
	.loc 1 691 0
.LVL499:
	.loc 1 695 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24640
	ld.w	%d8, [%a15]0
.LVL500:
	.loc 1 697 0
	extr.u	%d2, %d8, 12, 2
	jeq	%d2, 1, .L801
	.loc 1 706 0
	movh	%d15, 19353
	addi	%d15, %d15, -27008
	.loc 1 697 0
	jne	%d2, 2, .L830
.L800:
.LVL501:
	.loc 1 713 0
	div.f	%d15, %d15, %d4
.LVL502:
	ftoiz	%d2, %d15
	itof	%d3, %d2
	sub.f	%d15, %d15, %d3
	movh	%d3, 16128
	cmp.f	%d15, %d15, %d3
	extr.u	%d15, %d15, 2, 1
	add	%d15, %d2
.LVL503:
.LBB752:
.LBB753:
	.loc 4 168 0
	mov	%d2, 1
#APP
	# 168 ".\output\inc/..\..\Integration\Infineon\iLLD\TC38A\Tricore\Cpu\Std\IfxCpu_IntrinsicsGnuc.h" 1
	max.u %d15, %d15, %d2
	# 0 "" 2
.LVL504:
#NO_APP
.LBE753:
.LBE752:
	.loc 1 716 0
	add	%d2, %d15, -7
	jge.u	%d2, 7, .L809
	.loc 1 718 0 discriminator 1
	andn	%d15, %d15, ~(-2)
.LVL505:
.L813:
	and	%d10, %d15, 15
.L811:
.LVL506:
	.loc 1 726 0
	call	IfxScuWdt_getSafetyWatchdogPassword
.LVL507:
	.loc 1 727 0
	mov	%d4, %d2
	.loc 1 726 0
	mov	%d9, %d2
.LVL508:
	.loc 1 727 0
	call	IfxScuWdt_clearSafetyEndinit
.LVL509:
	.loc 1 731 0
	movh.a	%a15, 61443
	.loc 1 729 0
	insert	%d8, %d8, %d10, 8, 4
	.loc 1 731 0
	lea	%a15, [%a15] 24640
.L812:
	.loc 1 731 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
	jltz	%d15, .L812
	.loc 1 734 0 is_stmt 1
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24640
	st.w	[%a15]0, %d8
	.loc 1 736 0
	mov	%d4, %d9
	call	IfxScuWdt_setSafetyEndinit
.LVL510:
	.loc 1 737 0
	j	IfxScuCcu_getAsclinSFrequency
.LVL511:
.L809:
	.loc 1 721 0
	eq	%d2, %d15, 14
	mov	%d10, 12
	jnz	%d2, .L811
	j	.L813
.LVL512:
.L801:
.LBB754:
.LBB755:
	.loc 1 442 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d2, [%a15]0
	.loc 1 445 0
	movh	%d15, 19647
	.loc 1 442 0
	extr.u	%d2, %d2, 28, 2
	.loc 1 445 0
	addi	%d15, %d15, -17376
	.loc 1 442 0
	jz	%d2, .L800
	jeq	%d2, 1, .L831
.LVL513:
.L830:
.LBE755:
.LBE754:
	.loc 1 693 0
	mov	%d15, 0
	j	.L800
.LVL514:
.L831:
.LBB767:
.LBB766:
.LBB756:
.LBB757:
.LBB758:
.LBB759:
.LBB760:
.LBB761:
	.loc 2 1720 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24600
	ld.w	%d2, [%a15]0
	sh	%d2, %d2, -30
	jz	%d2, .L805
	.loc 2 1724 0
	ld.w	%d2, [%a15]0
	.loc 2 1726 0
	movh	%d15, 19353
	.loc 2 1724 0
	sh	%d2, %d2, -30
	.loc 2 1726 0
	addi	%d15, %d15, -27008
	.loc 2 1724 0
	jeq	%d2, 1, .L805
	.loc 2 1728 0
	ld.w	%d2, [%a15]0
	sh	%d2, %d2, -30
	jeq	%d2, 2, .L805
	.loc 2 1735 0
	mov	%d15, 0
.L805:
.LVL515:
.LBE761:
.LBE760:
	.loc 1 370 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24576
	ld.w	%d5, [%a15] 40
	ld.w	%d2, [%a15] 40
	extr.u	%d5, %d5, 9, 7
	extr.u	%d3, %d2, 24, 3
	ld.w	%d2, [%a15] 44
	add	%d5, 1
	and	%d2, %d2, 7
	add	%d2, 1
	madd	%d2, %d2, %d3, %d2
	itof	%d5, %d5
.LBE759:
.LBE758:
	.loc 1 457 0
	movh.a	%a15, 61443
.LBB764:
.LBB762:
	.loc 1 370 0
	itof	%d2, %d2
	mul.f	%d15, %d5, %d15
.LVL516:
.LBE762:
.LBE764:
	.loc 1 457 0
	lea	%a15, [%a15] 24628
.LBB765:
.LBB763:
	.loc 1 370 0
	div.f	%d15, %d15, %d2
.LVL517:
.LBE763:
.LBE765:
	.loc 1 457 0
	ld.w	%d2, [%a15]0
	jnz.t	%d2, 7, .L800
	.loc 1 459 0
	movh	%d2, 16128
	mul.f	%d15, %d15, %d2
.LVL518:
	j	.L800
.LBE757:
.LBE756:
.LBE766:
.LBE767:
.LFE258:
	.size	IfxScuCcu_setAsclinSFrequency, .-IfxScuCcu_setAsclinSFrequency
.section .text.IfxScuCcu_setBbbFrequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_setBbbFrequency
	.type	IfxScuCcu_setBbbFrequency, @function
IfxScuCcu_setBbbFrequency:
.LFB259:
	.loc 1 743 0
.LVL519:
.LBB784:
.LBB785:
	.loc 1 442 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d2, [%a15]0
	.loc 1 445 0
	movh	%d15, 19647
	.loc 1 442 0
	extr.u	%d2, %d2, 28, 2
	.loc 1 445 0
	addi	%d15, %d15, -17376
	.loc 1 442 0
	jz	%d2, .L834
	jne	%d2, 1, .L883
.LVL520:
.LBB786:
.LBB787:
.LBB788:
.LBB789:
	.loc 2 1720 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24600
	ld.w	%d2, [%a15]0
	sh	%d2, %d2, -30
	jz	%d2, .L836
	.loc 2 1724 0
	ld.w	%d2, [%a15]0
	.loc 2 1726 0
	movh	%d15, 19353
	.loc 2 1724 0
	sh	%d2, %d2, -30
	.loc 2 1726 0
	addi	%d15, %d15, -27008
	.loc 2 1724 0
	jeq	%d2, 1, .L836
	.loc 2 1728 0
	ld.w	%d2, [%a15]0
	sh	%d2, %d2, -30
	jeq	%d2, 2, .L836
	.loc 2 1735 0
	mov	%d15, 0
.L836:
.LVL521:
.LBE789:
.LBE788:
	.loc 1 403 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24576
	ld.w	%d5, [%a15] 24
	ld.w	%d2, [%a15] 28
	extr.u	%d5, %d5, 9, 7
	and	%d3, %d2, 7
	ld.w	%d2, [%a15] 24
	add	%d5, 1
	extr.u	%d2, %d2, 24, 3
	itof	%d5, %d5
	add	%d2, 1
	madd	%d2, %d2, %d3, %d2
	mul.f	%d15, %d5, %d15
.LVL522:
	itof	%d2, %d2
	div.f	%d15, %d15, %d2
.LVL523:
.L834:
.LBE787:
.LBE786:
.LBE785:
.LBE784:
	.loc 1 748 0
	div.f	%d15, %d15, %d4
.LVL524:
	ftoiz	%d2, %d15
	itof	%d3, %d2
	sub.f	%d15, %d15, %d3
	movh	%d3, 16128
	cmp.f	%d15, %d15, %d3
	extr.u	%d15, %d15, 2, 1
	add	%d15, %d2
.LVL525:
.LBB791:
.LBB792:
	.loc 4 168 0
	mov	%d2, 1
#APP
	# 168 ".\output\inc/..\..\Integration\Infineon\iLLD\TC38A\Tricore\Cpu\Std\IfxCpu_IntrinsicsGnuc.h" 1
	max.u %d15, %d15, %d2
	# 0 "" 2
.LVL526:
#NO_APP
.LBE792:
.LBE791:
	.loc 1 751 0
	add	%d2, %d15, -7
	jge.u	%d2, 7, .L840
	.loc 1 753 0 discriminator 1
	andn	%d15, %d15, ~(-2)
.LVL527:
.L856:
	and	%d9, %d15, 15
.L842:
.LVL528:
	.loc 1 761 0
	call	IfxScuWdt_getSafetyWatchdogPassword
.LVL529:
	.loc 1 762 0
	mov	%d4, %d2
	.loc 1 761 0
	mov	%d8, %d2
.LVL530:
	.loc 1 762 0
	call	IfxScuWdt_clearSafetyEndinit
.LVL531:
	.loc 1 764 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d3, [%a15]0
.LVL532:
	.loc 1 765 0
	insert	%d3, %d3, %d9, 20, 4
	.loc 1 766 0
	insert	%d3, %d3, 1, 30, 1
.L843:
	.loc 1 768 0 discriminator 1
	ld.w	%d15, [%a15]0
	jltz	%d15, .L843
	.loc 1 771 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	st.w	[%a15]0, %d3
	.loc 1 773 0
	mov	%d4, %d8
	call	IfxScuWdt_setSafetyEndinit
.LVL533:
.L844:
	.loc 1 775 0 discriminator 1
	ld.w	%d15, [%a15]0
	jltz	%d15, .L844
.LVL534:
.LBB793:
.LBB794:
.LBB795:
.LBB796:
	.loc 1 442 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d2, [%a15]0
	.loc 1 445 0
	movh	%d15, 19647
	.loc 1 442 0
	extr.u	%d2, %d2, 28, 2
	.loc 1 445 0
	addi	%d15, %d15, -17376
	.loc 1 442 0
	jz	%d2, .L846
	jne	%d2, 1, .L884
.LVL535:
.LBB797:
.LBB798:
.LBB799:
.LBB800:
	.loc 2 1720 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24600
	ld.w	%d2, [%a15]0
	sh	%d2, %d2, -30
	jz	%d2, .L848
	.loc 2 1724 0
	ld.w	%d2, [%a15]0
	.loc 2 1726 0
	movh	%d15, 19353
	.loc 2 1724 0
	sh	%d2, %d2, -30
	.loc 2 1726 0
	addi	%d15, %d15, -27008
	.loc 2 1724 0
	jeq	%d2, 1, .L848
	.loc 2 1728 0
	ld.w	%d2, [%a15]0
	sh	%d2, %d2, -30
	jeq	%d2, 2, .L848
	.loc 2 1735 0
	mov	%d15, 0
.L848:
.LVL536:
.LBE800:
.LBE799:
	.loc 1 403 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24576
	ld.w	%d4, [%a15] 24
	ld.w	%d2, [%a15] 28
	extr.u	%d4, %d4, 9, 7
	and	%d3, %d2, 7
	ld.w	%d2, [%a15] 24
	add	%d4, 1
	extr.u	%d2, %d2, 24, 3
	itof	%d4, %d4
	add	%d2, 1
	madd	%d2, %d2, %d3, %d2
	mul.f	%d15, %d4, %d15
.LVL537:
	itof	%d2, %d2
	div.f	%d15, %d15, %d2
.LVL538:
.L846:
.LBE798:
.LBE797:
.LBE796:
.LBE795:
	.loc 1 162 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d3, [%a15]0
	.loc 1 190 0
	mov	%d2, 0
	.loc 1 162 0
	extr.u	%d3, %d3, 12, 3
	jge.u	%d3, 5, .L849
	movh.a	%a15, hi:.L851
	lea	%a15, [%a15] lo:.L851
	addsc.a	%a15, %a15, %d3, 2
	ji	%a15
	.align 2
	.align 2
.L851:
	.code32
	j	.L850
	.code32
	j	.L852
	.code32
	j	.L853
	.code32
	j	.L854
	.code32
	j	.L855
.L855:
	.loc 1 187 0
	movh	%d2, 17264
	div.f	%d2, %d15, %d2
.LVL539:
.L849:
.LBE794:
.LBE793:
	.loc 1 780 0
	ret
.LVL540:
.L840:
	.loc 1 756 0
	eq	%d2, %d15, 14
	mov	%d9, 12
	jnz	%d2, .L842
	j	.L856
.LVL541:
.L884:
.LBB805:
.LBB803:
.LBB802:
.LBB801:
	.loc 1 473 0
	mov	%d15, 0
	j	.L846
.LVL542:
.L883:
.LBE801:
.LBE802:
.LBE803:
.LBE805:
.LBB806:
.LBB790:
	mov	%d15, 0
	j	.L834
.LVL543:
.L850:
.LBE790:
.LBE806:
.LBB807:
.LBB804:
	.loc 1 166 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d3, [%a15]0
	.loc 1 169 0
	mov	%d2, 0
	.loc 1 166 0
	extr.u	%d3, %d3, 20, 4
	jz	%d3, .L849
	.loc 1 173 0
	ld.w	%d2, [%a15]0
	extr.u	%d2, %d2, 20, 4
	itof	%d2, %d2
	div.f	%d2, %d15, %d2
.LVL544:
	ret
.LVL545:
.L852:
	.loc 1 178 0
	movh	%d2, 16880
	div.f	%d2, %d15, %d2
.LVL546:
	ret
.LVL547:
.L853:
	.loc 1 181 0
	movh	%d2, 17008
	div.f	%d2, %d15, %d2
.LVL548:
	ret
.LVL549:
.L854:
	.loc 1 184 0
	movh	%d2, 17136
	div.f	%d2, %d15, %d2
.LVL550:
	ret
.LBE804:
.LBE807:
.LFE259:
	.size	IfxScuCcu_setBbbFrequency, .-IfxScuCcu_setBbbFrequency
.section .text.IfxScuCcu_setCpuFrequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_setCpuFrequency
	.type	IfxScuCcu_setCpuFrequency, @function
IfxScuCcu_setCpuFrequency:
.LFB260:
	.loc 1 784 0
.LVL551:
.LBB816:
.LBB817:
.LBB818:
.LBB819:
	.loc 1 442 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d15, [%a15]0
	.loc 1 445 0
	movh	%d2, 19647
	.loc 1 442 0
	extr.u	%d15, %d15, 28, 2
.LBE819:
.LBE818:
.LBE817:
.LBE816:
	.loc 1 784 0
	mov	%d10, %d4
.LBB831:
.LBB828:
.LBB826:
.LBB824:
	.loc 1 445 0
	addi	%d2, %d2, -17376
	.loc 1 442 0
	jz	%d15, .L887
	jne	%d15, 1, .L927
.LVL552:
.LBB820:
.LBB821:
.LBB822:
.LBB823:
	.loc 2 1720 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24600
	ld.w	%d15, [%a15]0
	sh	%d15, %d15, -30
	jz	%d15, .L889
	.loc 2 1724 0
	ld.w	%d15, [%a15]0
	.loc 2 1726 0
	movh	%d2, 19353
	.loc 2 1724 0
	sh	%d15, %d15, -30
	.loc 2 1726 0
	addi	%d2, %d2, -27008
	.loc 2 1724 0
	jeq	%d15, 1, .L889
	.loc 2 1728 0
	ld.w	%d15, [%a15]0
	sh	%d15, %d15, -30
	jeq	%d15, 2, .L889
	.loc 2 1735 0
	mov	%d2, 0
.L889:
.LVL553:
.LBE823:
.LBE822:
	.loc 1 403 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24576
	ld.w	%d4, [%a15] 24
.LVL554:
	ld.w	%d15, [%a15] 28
	extr.u	%d4, %d4, 9, 7
	and	%d3, %d15, 7
	ld.w	%d15, [%a15] 24
	add	%d4, 1
	extr.u	%d15, %d15, 24, 3
	itof	%d4, %d4
	add	%d15, 1
	madd	%d15, %d15, %d3, %d15
	mul.f	%d2, %d4, %d2
.LVL555:
	itof	%d15, %d15
	div.f	%d2, %d2, %d15
.LVL556:
.L887:
.LBE821:
.LBE820:
.LBE824:
.LBE826:
	.loc 1 530 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d3, [%a15]0
	.loc 1 557 0
	mov	%d15, 0
	.loc 1 530 0
	extr.u	%d3, %d3, 12, 3
	jge.u	%d3, 5, .L890
	movh.a	%a15, hi:.L892
	lea	%a15, [%a15] lo:.L892
	addsc.a	%a15, %a15, %d3, 2
	ji	%a15
	.align 2
	.align 2
.L892:
	.code32
	j	.L891
	.code32
	j	.L893
	.code32
	j	.L894
	.code32
	j	.L895
	.code32
	j	.L896
.L891:
	.loc 1 534 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d3, [%a15]0
	.loc 1 536 0
	mov	%d15, 0
	.loc 1 534 0
	extr.u	%d3, %d3, 8, 4
	jz	%d3, .L890
	.loc 1 540 0
	ld.w	%d15, [%a15]0
	extr.u	%d15, %d15, 8, 4
	itof	%d15, %d15
	div.f	%d15, %d2, %d15
.LVL557:
.L890:
.LBE828:
.LBE831:
	.loc 1 791 0
	cmp.f	%d2, %d5, %d15
.LVL558:
	or.t	%d2, %d2,2, %d2,1
	jnz	%d2, .L897
	.loc 1 797 0
	movh	%d2, 17024
	mul.f	%d8, %d5, %d2
	div.f	%d8, %d8, %d15
	sub.f	%d8, %d2, %d8
	ftouz	%d8, %d8
.LVL559:
	.loc 1 800 0
	call	IfxScuWdt_getSafetyWatchdogPassword
.LVL560:
	.loc 1 803 0
	mov	%d4, %d2
	.loc 1 800 0
	mov	%d9, %d2
.LVL561:
	.loc 1 803 0
	call	IfxScuWdt_clearSafetyEndinit
.LVL562:
	.loc 1 805 0
	jlt.u	%d10, 4, .L928
	.loc 1 820 0
	mov	%d15, 0
.LVL563:
	j	.L898
.LVL564:
.L897:
	.loc 1 800 0
	call	IfxScuWdt_getSafetyWatchdogPassword
.LVL565:
	.loc 1 803 0
	mov	%d4, %d2
	.loc 1 800 0
	mov	%d9, %d2
.LVL566:
	.loc 1 803 0
	call	IfxScuWdt_clearSafetyEndinit
.LVL567:
	.loc 1 805 0
	jlt.u	%d10, 4, .L929
.LVL568:
	.loc 1 824 0
	mov	%d4, %d9
	call	IfxScuWdt_setSafetyEndinit
.LVL569:
	.loc 1 820 0
	mov	%d15, 0
.LVL570:
	j	.L919
.LVL571:
.L927:
.LBB832:
.LBB829:
.LBB827:
.LBB825:
	.loc 1 473 0
	mov	%d2, 0
	j	.L887
.LVL572:
.L929:
.LBE825:
.LBE827:
.LBE829:
.LBE832:
	.loc 1 805 0
	movh.a	%a15, hi:.L906
	lea	%a15, [%a15] lo:.L906
	addsc.a	%a15, %a15, %d10, 2
	.loc 1 793 0
	mov	%d8, 0
	.loc 1 805 0
	ji	%a15
	.align 2
	.align 2
.L906:
	.code32
	j	.L899
	.code32
	j	.L901
	.code32
	j	.L902
	.code32
	j	.L903
.LVL573:
.L928:
	movh.a	%a15, hi:.L900
	lea	%a15, [%a15] lo:.L900
	addsc.a	%a15, %a15, %d10, 2
	ji	%a15
	.align 2
	.align 2
.L900:
	.code32
	j	.L899
	.code32
	j	.L901
	.code32
	j	.L902
	.code32
	j	.L903
.LVL574:
.L902:
	.loc 1 814 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24712
	st.w	[%a15]0, %d8
.LVL575:
.L898:
	.loc 1 824 0
	mov	%d4, %d9
	call	IfxScuWdt_setSafetyEndinit
.LVL576:
	.loc 1 827 0
	jz	%d8, .L919
	.loc 1 829 0
	rsub	%d8, %d8, 64
	utof	%d8, %d8
	movh	%d2, 15488
	mul.f	%d8, %d8, %d2
	mul.f	%d15, %d15, %d8
.LVL577:
.L919:
	.loc 1 833 0
	mov	%d2, %d15
	ret
.LVL578:
.L901:
	.loc 1 811 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24708
	st.w	[%a15]0, %d8
	.loc 1 812 0
	j	.L898
.L899:
	.loc 1 808 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24704
	st.w	[%a15]0, %d8
	.loc 1 809 0
	j	.L898
.L903:
	.loc 1 817 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24716
	st.w	[%a15]0, %d8
	.loc 1 818 0
	j	.L898
.LVL579:
.L895:
.LBB833:
.LBB830:
	.loc 1 551 0
	movh	%d15, 17136
	div.f	%d15, %d2, %d15
.LVL580:
	j	.L890
.LVL581:
.L896:
	.loc 1 554 0
	movh	%d15, 17264
	div.f	%d15, %d2, %d15
.LVL582:
	j	.L890
.LVL583:
.L893:
	.loc 1 545 0
	movh	%d15, 16880
	div.f	%d15, %d2, %d15
.LVL584:
	j	.L890
.LVL585:
.L894:
	.loc 1 548 0
	movh	%d15, 17008
	div.f	%d15, %d2, %d15
.LVL586:
	j	.L890
.LBE830:
.LBE833:
.LFE260:
	.size	IfxScuCcu_setCpuFrequency, .-IfxScuCcu_setCpuFrequency
.section .text.IfxScuCcu_setFsi2Frequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_setFsi2Frequency
	.type	IfxScuCcu_setFsi2Frequency, @function
IfxScuCcu_setFsi2Frequency:
.LFB261:
	.loc 1 837 0
.LVL587:
	.loc 1 840 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d15, [%a15]0
.LVL588:
	.loc 1 842 0
	mov	%d2, 3840
	and	%d15, %d2
.LVL589:
	addi	%d15, %d15, -256
	andn	%d15, %d15, ~(-257)
	.loc 1 837 0
	mov	%d8, %d4
	.loc 1 842 0
	jz	%d15, .L931
.LVL590:
.L939:
.LBB837:
.LBB838:
	.loc 1 235 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d15, [%a15]0
.LVL591:
	.loc 1 237 0
	movh	%d3, 3072
	and	%d3, %d15
	.loc 1 235 0
	extr.u	%d8, %d15, 26, 2
.LVL592:
	.loc 1 239 0
	mov	%d2, 0
	.loc 1 237 0
	jnz	%d3, .L947
.LVL593:
.L932:
.LBE838:
.LBE837:
	.loc 1 869 0
	ret
.LVL594:
.L947:
.LBB840:
.LBB839:
	.loc 1 243 0
	call	IfxScuCcu_getSriFrequency
.LVL595:
	.loc 1 245 0
	mov	%d3, 3840
	and	%d15, %d3
.LVL596:
	addi	%d15, %d15, -256
	andn	%d15, %d15, ~(-257)
	jnz	%d15, .L932
	.loc 1 247 0
	itof	%d8, %d8
	div.f	%d2, %d2, %d8
.LVL597:
.LBE839:
.LBE840:
	.loc 1 869 0
	ret
.LVL598:
.L931:
.LBB841:
	.loc 1 845 0
	call	IfxScuCcu_getSriFrequency
.LVL599:
	.loc 1 846 0
	div.f	%d2, %d2, %d8
.LVL600:
	movh	%d15, 16128
	ftoiz	%d3, %d2
	itof	%d8, %d3
.LVL601:
	sub.f	%d8, %d2, %d8
	cmp.f	%d15, %d8, %d15
	extr.u	%d15, %d15, 2, 1
	add	%d9, %d15, %d3
.LVL602:
	.loc 1 848 0
	call	IfxScuWdt_getSafetyWatchdogPassword
.LVL603:
	.loc 1 849 0
	mov	%d4, %d2
	.loc 1 848 0
	mov	%d8, %d2
.LVL604:
	.loc 1 849 0
	call	IfxScuWdt_clearSafetyEndinit
.LVL605:
	.loc 1 851 0
	ld.w	%d15, [%a15]0
.LVL606:
	.loc 1 852 0
	insert	%d15, %d15, %d9, 26, 2
	.loc 1 853 0
	insert	%d15, %d15, 1, 30, 1
.L937:
	.loc 1 855 0 discriminator 1
	ld.w	%d3, [%a15]0
	jltz	%d3, .L937
	.loc 1 858 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	st.w	[%a15]0, %d15
	.loc 1 860 0
	mov	%d4, %d8
	call	IfxScuWdt_setSafetyEndinit
.LVL607:
.L938:
	.loc 1 862 0 discriminator 1
	ld.w	%d15, [%a15]0
.LVL608:
	jltz	%d15, .L938
	j	.L939
.LBE841:
.LFE261:
	.size	IfxScuCcu_setFsi2Frequency, .-IfxScuCcu_setFsi2Frequency
.section .text.IfxScuCcu_setFsiFrequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_setFsiFrequency
	.type	IfxScuCcu_setFsiFrequency, @function
IfxScuCcu_setFsiFrequency:
.LFB262:
	.loc 1 873 0
.LVL609:
	.loc 1 876 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d15, [%a15]0
.LVL610:
	.loc 1 878 0
	mov	%d2, 3840
	and	%d15, %d2
.LVL611:
	addi	%d15, %d15, -256
	andn	%d15, %d15, ~(-257)
	.loc 1 873 0
	mov	%d8, %d4
	.loc 1 878 0
	jz	%d15, .L949
.LVL612:
.L957:
.LBB845:
.LBB846:
	.loc 1 258 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d15, [%a15]0
.LVL613:
	.loc 1 260 0
	movh	%d3, 768
	and	%d3, %d15
	.loc 1 258 0
	extr.u	%d8, %d15, 24, 2
.LVL614:
	.loc 1 262 0
	mov	%d2, 0
	.loc 1 260 0
	jnz	%d3, .L965
.LVL615:
.L950:
.LBE846:
.LBE845:
	.loc 1 905 0
	ret
.LVL616:
.L965:
.LBB848:
.LBB847:
	.loc 1 266 0
	call	IfxScuCcu_getSriFrequency
.LVL617:
	.loc 1 268 0
	mov	%d3, 3840
	and	%d15, %d3
.LVL618:
	addi	%d15, %d15, -256
	andn	%d15, %d15, ~(-257)
	jnz	%d15, .L950
	.loc 1 270 0
	itof	%d8, %d8
	div.f	%d2, %d2, %d8
.LVL619:
.LBE847:
.LBE848:
	.loc 1 905 0
	ret
.LVL620:
.L949:
.LBB849:
	.loc 1 881 0
	call	IfxScuCcu_getSriFrequency
.LVL621:
	.loc 1 882 0
	div.f	%d2, %d2, %d8
.LVL622:
	movh	%d15, 16128
	ftoiz	%d3, %d2
	itof	%d8, %d3
.LVL623:
	sub.f	%d8, %d2, %d8
	cmp.f	%d15, %d8, %d15
	extr.u	%d15, %d15, 2, 1
	add	%d9, %d15, %d3
.LVL624:
	.loc 1 884 0
	call	IfxScuWdt_getSafetyWatchdogPassword
.LVL625:
	.loc 1 885 0
	mov	%d4, %d2
	.loc 1 884 0
	mov	%d8, %d2
.LVL626:
	.loc 1 885 0
	call	IfxScuWdt_clearSafetyEndinit
.LVL627:
	.loc 1 887 0
	ld.w	%d15, [%a15]0
.LVL628:
	.loc 1 888 0
	insert	%d15, %d15, %d9, 24, 2
	.loc 1 889 0
	insert	%d15, %d15, 1, 30, 1
.L955:
	.loc 1 891 0 discriminator 1
	ld.w	%d3, [%a15]0
	jltz	%d3, .L955
	.loc 1 894 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	st.w	[%a15]0, %d15
	.loc 1 896 0
	mov	%d4, %d8
	call	IfxScuWdt_setSafetyEndinit
.LVL629:
.L956:
	.loc 1 898 0 discriminator 1
	ld.w	%d15, [%a15]0
.LVL630:
	jltz	%d15, .L956
	j	.L957
.LBE849:
.LFE262:
	.size	IfxScuCcu_setFsiFrequency, .-IfxScuCcu_setFsiFrequency
.section .text.IfxScuCcu_setGethFrequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_setGethFrequency
	.type	IfxScuCcu_setGethFrequency, @function
IfxScuCcu_setGethFrequency:
.LFB263:
	.loc 1 909 0
.LVL631:
.LBB866:
.LBB867:
	.loc 1 442 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d2, [%a15]0
	.loc 1 445 0
	movh	%d15, 19647
	.loc 1 442 0
	extr.u	%d2, %d2, 28, 2
	.loc 1 445 0
	addi	%d15, %d15, -17376
	.loc 1 442 0
	jz	%d2, .L968
	jne	%d2, 1, .L1007
.LVL632:
.LBB868:
.LBB869:
.LBB870:
.LBB871:
	.loc 2 1720 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24600
	ld.w	%d2, [%a15]0
	sh	%d2, %d2, -30
	jz	%d2, .L970
	.loc 2 1724 0
	ld.w	%d2, [%a15]0
	.loc 2 1726 0
	movh	%d15, 19353
	.loc 2 1724 0
	sh	%d2, %d2, -30
	.loc 2 1726 0
	addi	%d15, %d15, -27008
	.loc 2 1724 0
	jeq	%d2, 1, .L970
	.loc 2 1728 0
	ld.w	%d2, [%a15]0
	sh	%d2, %d2, -30
	jeq	%d2, 2, .L970
	.loc 2 1735 0
	mov	%d15, 0
.L970:
.LVL633:
.LBE871:
.LBE870:
	.loc 1 403 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24576
	ld.w	%d5, [%a15] 24
	ld.w	%d2, [%a15] 28
	extr.u	%d5, %d5, 9, 7
	and	%d3, %d2, 7
	ld.w	%d2, [%a15] 24
	add	%d5, 1
	extr.u	%d2, %d2, 24, 3
	itof	%d5, %d5
	add	%d2, 1
	madd	%d2, %d2, %d3, %d2
	mul.f	%d15, %d5, %d15
.LVL634:
	itof	%d2, %d2
	div.f	%d15, %d15, %d2
.LVL635:
.L968:
.LBE869:
.LBE868:
.LBE867:
.LBE866:
	.loc 1 914 0
	div.f	%d15, %d15, %d4
.LVL636:
	ftoiz	%d2, %d15
	itof	%d3, %d2
	sub.f	%d15, %d15, %d3
	movh	%d3, 16128
	cmp.f	%d15, %d15, %d3
	extr.u	%d15, %d15, 2, 1
	add	%d15, %d2
.LVL637:
.LBB873:
.LBB874:
	.loc 4 168 0
	mov	%d2, 1
#APP
	# 168 ".\output\inc/..\..\Integration\Infineon\iLLD\TC38A\Tricore\Cpu\Std\IfxCpu_IntrinsicsGnuc.h" 1
	max.u %d15, %d15, %d2
	# 0 "" 2
.LVL638:
#NO_APP
.LBE874:
.LBE873:
	.loc 1 917 0
	add	%d2, %d15, -7
	jge.u	%d2, 7, .L974
	.loc 1 919 0 discriminator 1
	andn	%d15, %d15, ~(-2)
.LVL639:
.L983:
	and	%d9, %d15, 15
.L976:
.LVL640:
	.loc 1 927 0
	call	IfxScuWdt_getSafetyWatchdogPassword
.LVL641:
	.loc 1 928 0
	mov	%d4, %d2
	.loc 1 927 0
	mov	%d8, %d2
.LVL642:
	.loc 1 928 0
	call	IfxScuWdt_clearSafetyEndinit
.LVL643:
	.loc 1 930 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24652
	ld.w	%d3, [%a15]0
.LVL644:
	.loc 1 931 0
	insert	%d3, %d3, %d9, 0, 4
	.loc 1 932 0
	insert	%d3, %d3, 1, 30, 1
.L977:
	.loc 1 934 0 discriminator 1
	ld.w	%d15, [%a15]0
	jltz	%d15, .L977
	.loc 1 937 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24652
	st.w	[%a15]0, %d3
	.loc 1 939 0
	mov	%d4, %d8
	call	IfxScuWdt_setSafetyEndinit
.LVL645:
.L978:
	.loc 1 941 0 discriminator 1
	ld.w	%d15, [%a15]0
	jltz	%d15, .L978
.LVL646:
.LBB875:
.LBB876:
.LBB877:
.LBB878:
	.loc 1 442 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d2, [%a15]0
	.loc 1 445 0
	movh	%d15, 19647
	.loc 1 442 0
	extr.u	%d2, %d2, 28, 2
	.loc 1 445 0
	addi	%d15, %d15, -17376
	.loc 1 442 0
	jz	%d2, .L980
	jne	%d2, 1, .L1008
.LVL647:
.LBB879:
.LBB880:
.LBB881:
.LBB882:
	.loc 2 1720 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24600
	ld.w	%d2, [%a15]0
	sh	%d2, %d2, -30
	jz	%d2, .L982
	.loc 2 1724 0
	ld.w	%d2, [%a15]0
	.loc 2 1726 0
	movh	%d15, 19353
	.loc 2 1724 0
	sh	%d2, %d2, -30
	.loc 2 1726 0
	addi	%d15, %d15, -27008
	.loc 2 1724 0
	jeq	%d2, 1, .L982
	.loc 2 1728 0
	ld.w	%d2, [%a15]0
	sh	%d2, %d2, -30
	jeq	%d2, 2, .L982
	.loc 2 1735 0
	mov	%d15, 0
.L982:
.LVL648:
.LBE882:
.LBE881:
	.loc 1 403 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24576
	ld.w	%d4, [%a15] 24
	ld.w	%d2, [%a15] 28
	extr.u	%d4, %d4, 9, 7
	and	%d3, %d2, 7
	ld.w	%d2, [%a15] 24
	add	%d4, 1
	extr.u	%d2, %d2, 24, 3
	itof	%d4, %d4
	add	%d2, 1
	madd	%d2, %d2, %d3, %d2
	mul.f	%d15, %d4, %d15
.LVL649:
	itof	%d2, %d2
	div.f	%d15, %d15, %d2
.LVL650:
.L980:
.LBE880:
.LBE879:
.LBE878:
.LBE877:
	.loc 2 1668 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24652
	ld.w	%d2, [%a15]0
	and	%d2, %d2, 15
.LVL651:
	itof	%d2, %d2
.LBE876:
.LBE875:
	.loc 1 946 0
	div.f	%d2, %d15, %d2
	ret
.LVL652:
.L974:
	.loc 1 922 0
	eq	%d2, %d15, 14
	mov	%d9, 12
	jnz	%d2, .L976
	j	.L983
.LVL653:
.L1008:
.LBB886:
.LBB885:
.LBB884:
.LBB883:
	.loc 1 473 0
	mov	%d15, 0
	j	.L980
.LVL654:
.L1007:
.LBE883:
.LBE884:
.LBE885:
.LBE886:
.LBB887:
.LBB872:
	mov	%d15, 0
	j	.L968
.LBE872:
.LBE887:
.LFE263:
	.size	IfxScuCcu_setGethFrequency, .-IfxScuCcu_setGethFrequency
.section .text.IfxScuCcu_setGtmFrequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_setGtmFrequency
	.type	IfxScuCcu_setGtmFrequency, @function
IfxScuCcu_setGtmFrequency:
.LFB264:
	.loc 1 950 0
.LVL655:
	.loc 1 952 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	.loc 1 950 0
	mov	%d9, %d4
	.loc 1 952 0
	ld.w	%d8, [%a15]0
.LVL656:
	.loc 1 955 0
	call	IfxScuCcu_getSpbFrequency
.LVL657:
	add.f	%d2, %d2, %d2
	mov	%d15, 1
	cmp.f	%d2, %d2, %d9
	jz.t	%d2, 1, .L1056
.LVL658:
.L1020:
	.loc 1 976 0
	call	IfxScuWdt_getSafetyWatchdogPassword
.LVL659:
	.loc 1 977 0
	mov	%d4, %d2
	.loc 1 976 0
	mov	%d9, %d2
.LVL660:
	.loc 1 977 0
	call	IfxScuWdt_clearSafetyEndinit
.LVL661:
	.loc 1 978 0
	insert	%d8, %d8, %d15, 4, 4
	.loc 1 981 0
	movh.a	%a15, 61443
	.loc 1 979 0
	insert	%d8, %d8, 1, 30, 1
	.loc 1 981 0
	lea	%a15, [%a15] 24624
.L1021:
	.loc 1 981 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
	jltz	%d15, .L1021
	.loc 1 984 0 is_stmt 1
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	st.w	[%a15]0, %d8
	.loc 1 986 0
	mov	%d4, %d9
	call	IfxScuWdt_setSafetyEndinit
.LVL662:
.L1022:
	.loc 1 988 0 discriminator 1
	ld.w	%d15, [%a15]0
	movh.a	%a2, 61443
	lea	%a2, [%a2] 24624
	jltz	%d15, .L1022
.LBB905:
.LBB906:
	.loc 2 1677 0
	ld.w	%d15, [%a2]0
	.loc 2 1682 0
	mov	%d2, 0
	.loc 2 1677 0
	extr.u	%d15, %d15, 4, 4
.LVL663:
	.loc 2 1680 0
	jz	%d15, .L1043
	.loc 2 1684 0
	jeq	%d15, 1, .L1057
.LVL664:
.LBB907:
.LBB908:
	.loc 1 442 0
	ld.w	%d4, [%a2]0
	.loc 1 445 0
	movh	%d3, 19647
	.loc 1 442 0
	extr.u	%d4, %d4, 28, 2
	.loc 1 445 0
	addi	%d3, %d3, -17376
	.loc 1 442 0
	jz	%d4, .L1026
	jne	%d4, 1, .L1058
.LVL665:
.LBB909:
.LBB910:
.LBB911:
.LBB912:
	.loc 2 1720 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24600
	ld.w	%d4, [%a15]0
	sh	%d4, %d4, -30
	jz	%d4, .L1028
	.loc 2 1724 0
	ld.w	%d4, [%a15]0
	.loc 2 1726 0
	movh	%d3, 19353
	.loc 2 1724 0
	sh	%d4, %d4, -30
	.loc 2 1726 0
	addi	%d3, %d3, -27008
	.loc 2 1724 0
	jeq	%d4, 1, .L1028
	.loc 2 1728 0
	ld.w	%d4, [%a15]0
	sh	%d4, %d4, -30
	jeq	%d4, 2, .L1028
	.loc 2 1735 0
	mov	%d3, 0
.L1028:
.LVL666:
.LBE912:
.LBE911:
	.loc 1 403 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24576
	ld.w	%d5, [%a15] 24
	ld.w	%d2, [%a15] 28
	extr.u	%d5, %d5, 9, 7
	and	%d4, %d2, 7
	ld.w	%d2, [%a15] 24
	add	%d5, 1
	extr.u	%d2, %d2, 24, 3
	itof	%d5, %d5
	add	%d2, 1
	madd	%d2, %d2, %d4, %d2
	mul.f	%d3, %d5, %d3
.LVL667:
	itof	%d2, %d2
	div.f	%d3, %d3, %d2
.LVL668:
.L1026:
.LBE910:
.LBE909:
.LBE908:
.LBE907:
	.loc 2 1691 0
	itof	%d2, %d15
	div.f	%d2, %d3, %d2
.LVL669:
.L1043:
.LBE906:
.LBE905:
	.loc 1 992 0
	ret
.LVL670:
.L1056:
.LBB916:
.LBB917:
.LBB918:
	.loc 1 442 0
	ld.w	%d2, [%a15]0
	.loc 1 445 0
	movh	%d15, 19647
	.loc 1 442 0
	extr.u	%d2, %d2, 28, 2
	.loc 1 445 0
	addi	%d15, %d15, -17376
	.loc 1 442 0
	jz	%d2, .L1012
	jeq	%d2, 1, .L1013
	.loc 1 473 0
	mov	%d15, 0
.L1012:
.LVL671:
.LBE918:
.LBE917:
	.loc 1 962 0
	div.f	%d9, %d15, %d9
.LVL672:
	movh	%d2, 16128
	ftoiz	%d3, %d9
	itof	%d15, %d3
.LVL673:
	sub.f	%d9, %d9, %d15
	cmp.f	%d9, %d9, %d2
	extr.u	%d9, %d9, 2, 1
.LBB924:
.LBB925:
	.loc 4 168 0
	mov	%d2, 1
.LBE925:
.LBE924:
	.loc 1 962 0
	add	%d9, %d3
.LVL674:
.LBB927:
.LBB926:
	.loc 4 168 0
#APP
	# 168 ".\output\inc/..\..\Integration\Infineon\iLLD\TC38A\Tricore\Cpu\Std\IfxCpu_IntrinsicsGnuc.h" 1
	max.u %d2, %d9, %d2
	# 0 "" 2
.LVL675:
#NO_APP
	and	%d3, %d2, 15
.LBE926:
.LBE927:
.LBE916:
	.loc 1 971 0
	eq	%d5, %d2, 14
	.loc 1 966 0
	addi	%d4, %d2, -7
	seln	%d15, %d5, %d3, 12
	mov	%d3, %d15
	and	%d2, %d2, 14
.LVL676:
	ge.u	%d15, %d4, 7
	sel	%d15, %d15, %d3, %d2
	j	.L1020
.LVL677:
.L1058:
.LBB929:
.LBB915:
	.loc 2 1691 0
	itof	%d2, %d15
.LBB914:
.LBB913:
	.loc 1 473 0
	mov	%d3, 0
.LVL678:
.LBE913:
.LBE914:
	.loc 2 1691 0
	div.f	%d2, %d3, %d2
.LVL679:
	j	.L1043
.LVL680:
.L1057:
	.loc 2 1686 0
	call	IfxScuCcu_getSpbFrequency
.LVL681:
	add.f	%d2, %d2, %d2
.LVL682:
	ret
.LVL683:
.L1013:
.LBE915:
.LBE929:
.LBB930:
.LBB928:
.LBB923:
.LBB919:
.LBB920:
.LBB921:
.LBB922:
	.loc 2 1720 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24600
	ld.w	%d2, [%a15]0
	sh	%d2, %d2, -30
	jz	%d2, .L1014
	.loc 2 1724 0
	ld.w	%d2, [%a15]0
	.loc 2 1726 0
	movh	%d15, 19353
	.loc 2 1724 0
	sh	%d2, %d2, -30
	.loc 2 1726 0
	addi	%d15, %d15, -27008
	.loc 2 1724 0
	jeq	%d2, 1, .L1014
	.loc 2 1728 0
	ld.w	%d2, [%a15]0
	sh	%d2, %d2, -30
	jeq	%d2, 2, .L1014
	.loc 2 1735 0
	mov	%d15, 0
.L1014:
.LVL684:
.LBE922:
.LBE921:
	.loc 1 403 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24576
	ld.w	%d4, [%a15] 24
	ld.w	%d2, [%a15] 28
	extr.u	%d4, %d4, 9, 7
	and	%d3, %d2, 7
	ld.w	%d2, [%a15] 24
	add	%d4, 1
	extr.u	%d2, %d2, 24, 3
	itof	%d4, %d4
	add	%d2, 1
	madd	%d2, %d2, %d3, %d2
	mul.f	%d15, %d4, %d15
.LVL685:
	itof	%d2, %d2
	div.f	%d15, %d15, %d2
.LVL686:
	j	.L1012
.LBE920:
.LBE919:
.LBE923:
.LBE928:
.LBE930:
.LFE264:
	.size	IfxScuCcu_setGtmFrequency, .-IfxScuCcu_setGtmFrequency
.section .text.IfxScuCcu_setI2cFrequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_setI2cFrequency
	.type	IfxScuCcu_setI2cFrequency, @function
IfxScuCcu_setI2cFrequency:
.LFB265:
	.loc 1 996 0
.LVL687:
.LBB947:
.LBB948:
	.loc 1 442 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d2, [%a15]0
	.loc 1 445 0
	movh	%d15, 19647
	.loc 1 442 0
	extr.u	%d2, %d2, 28, 2
	.loc 1 445 0
	addi	%d15, %d15, -17376
	.loc 1 442 0
	jz	%d2, .L1061
	jne	%d2, 1, .L1102
.LVL688:
.LBB949:
.LBB950:
.LBB951:
.LBB952:
	.loc 2 1720 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24600
	ld.w	%d2, [%a15]0
	sh	%d2, %d2, -30
	jz	%d2, .L1063
	.loc 2 1724 0
	ld.w	%d2, [%a15]0
	.loc 2 1726 0
	movh	%d15, 19353
	.loc 2 1724 0
	sh	%d2, %d2, -30
	.loc 2 1726 0
	addi	%d15, %d15, -27008
	.loc 2 1724 0
	jeq	%d2, 1, .L1063
	.loc 2 1728 0
	ld.w	%d2, [%a15]0
	sh	%d2, %d2, -30
	jeq	%d2, 2, .L1063
	.loc 2 1735 0
	mov	%d15, 0
.L1063:
.LVL689:
.LBE952:
.LBE951:
	.loc 1 383 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24576
	ld.w	%d2, [%a15] 40
	.loc 1 385 0
	ld.w	%d5, [%a15] 40
	extr.u	%d5, %d5, 9, 7
	.loc 1 383 0
	jz.t	%d2, 0, .L1103
	.loc 1 389 0
	ld.w	%d2, [%a15] 40
	add	%d5, 1
	extr.u	%d3, %d2, 24, 3
	ld.w	%d2, [%a15] 44
	itof	%d5, %d5
	extr.u	%d2, %d2, 8, 3
	mul.f	%d15, %d15, %d5
.LVL690:
	add	%d2, 1
	madd	%d2, %d2, %d3, %d2
	sh	%d2, 1
	itof	%d2, %d2
	div.f	%d15, %d15, %d2
.LVL691:
.L1061:
.LBE950:
.LBE949:
.LBE948:
.LBE947:
	.loc 1 1001 0
	div.f	%d15, %d15, %d4
.LVL692:
	ftoiz	%d2, %d15
	itof	%d3, %d2
	sub.f	%d15, %d15, %d3
	movh	%d3, 16128
	cmp.f	%d15, %d15, %d3
	extr.u	%d15, %d15, 2, 1
	add	%d15, %d2
.LVL693:
.LBB957:
.LBB958:
	.loc 4 168 0
	mov	%d2, 1
#APP
	# 168 ".\output\inc/..\..\Integration\Infineon\iLLD\TC38A\Tricore\Cpu\Std\IfxCpu_IntrinsicsGnuc.h" 1
	max.u %d15, %d15, %d2
	# 0 "" 2
.LVL694:
#NO_APP
.LBE958:
.LBE957:
	.loc 1 1004 0
	add	%d2, %d15, -7
	jge.u	%d2, 7, .L1068
	.loc 1 1006 0 discriminator 1
	andn	%d15, %d15, ~(-2)
.LVL695:
.L1078:
	and	%d9, %d15, 15
.L1070:
.LVL696:
	.loc 1 1014 0
	call	IfxScuWdt_getSafetyWatchdogPassword
.LVL697:
	.loc 1 1015 0
	mov	%d4, %d2
	.loc 1 1014 0
	mov	%d8, %d2
.LVL698:
	.loc 1 1015 0
	call	IfxScuWdt_clearSafetyEndinit
.LVL699:
	.loc 1 1017 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24628
	ld.w	%d3, [%a15]0
.LVL700:
	.loc 1 1018 0
	insert	%d3, %d3, %d9, 8, 4
.L1071:
	.loc 1 1020 0 discriminator 1
	ld.w	%d15, [%a15]0
	jltz	%d15, .L1071
	.loc 1 1023 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24628
	st.w	[%a15]0, %d3
	.loc 1 1025 0
	mov	%d4, %d8
	call	IfxScuWdt_setSafetyEndinit
.LVL701:
.L1072:
	.loc 1 1027 0 discriminator 1
	ld.w	%d15, [%a15]0
	jltz	%d15, .L1072
.LVL702:
.LBB959:
.LBB960:
.LBB961:
.LBB962:
	.loc 1 442 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d2, [%a15]0
	.loc 1 445 0
	movh	%d15, 19647
	.loc 1 442 0
	extr.u	%d2, %d2, 28, 2
	.loc 1 445 0
	addi	%d15, %d15, -17376
	.loc 1 442 0
	jz	%d2, .L1074
	jne	%d2, 1, .L1104
.LVL703:
.LBB963:
.LBB964:
.LBB965:
.LBB966:
	.loc 2 1720 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24600
	ld.w	%d2, [%a15]0
	sh	%d2, %d2, -30
	jz	%d2, .L1076
	.loc 2 1724 0
	ld.w	%d2, [%a15]0
	.loc 2 1726 0
	movh	%d15, 19353
	.loc 2 1724 0
	sh	%d2, %d2, -30
	.loc 2 1726 0
	addi	%d15, %d15, -27008
	.loc 2 1724 0
	jeq	%d2, 1, .L1076
	.loc 2 1728 0
	ld.w	%d2, [%a15]0
	sh	%d2, %d2, -30
	jeq	%d2, 2, .L1076
	.loc 2 1735 0
	mov	%d15, 0
.L1076:
.LVL704:
.LBE966:
.LBE965:
	.loc 1 383 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24576
	ld.w	%d2, [%a15] 40
	.loc 1 385 0
	ld.w	%d4, [%a15] 40
	extr.u	%d4, %d4, 9, 7
	.loc 1 383 0
	jz.t	%d2, 0, .L1105
	.loc 1 389 0
	ld.w	%d2, [%a15] 40
	add	%d4, 1
	extr.u	%d3, %d2, 24, 3
	ld.w	%d2, [%a15] 44
	itof	%d4, %d4
	extr.u	%d2, %d2, 8, 3
	mul.f	%d15, %d15, %d4
.LVL705:
	add	%d2, 1
	madd	%d2, %d2, %d3, %d2
	sh	%d2, 1
	itof	%d2, %d2
	div.f	%d15, %d15, %d2
.LVL706:
.L1074:
.LBE964:
.LBE963:
.LBE962:
.LBE961:
	.loc 2 1700 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24628
	ld.w	%d2, [%a15]0
	extr.u	%d2, %d2, 8, 4
.LVL707:
	itof	%d2, %d2
.LBE960:
.LBE959:
	.loc 1 1032 0
	div.f	%d2, %d15, %d2
	ret
.LVL708:
.L1068:
	.loc 1 1009 0
	eq	%d2, %d15, 14
	mov	%d9, 12
	jnz	%d2, .L1070
	j	.L1078
.LVL709:
.L1104:
.LBB975:
.LBB973:
.LBB971:
.LBB969:
	.loc 1 473 0
	mov	%d15, 0
	j	.L1074
.LVL710:
.L1102:
.LBE969:
.LBE971:
.LBE973:
.LBE975:
.LBB976:
.LBB955:
	mov	%d15, 0
	j	.L1061
.LVL711:
.L1105:
.LBE955:
.LBE976:
.LBB977:
.LBB974:
.LBB972:
.LBB970:
.LBB968:
.LBB967:
	.loc 1 385 0
	ld.w	%d2, [%a15] 40
	add	%d4, 1
	extr.u	%d3, %d2, 24, 3
	ld.w	%d2, [%a15] 44
	itof	%d4, %d4
	extr.u	%d2, %d2, 8, 3
	mul.f	%d15, %d4, %d15
.LVL712:
	add	%d2, 1
	madd	%d2, %d2, %d3, %d2
	movh	%d3, 16333
	addi	%d3, %d3, -13107
	itof	%d2, %d2
	mul.f	%d2, %d2, %d3
	div.f	%d15, %d15, %d2
.LVL713:
	j	.L1074
.LVL714:
.L1103:
.LBE967:
.LBE968:
.LBE970:
.LBE972:
.LBE974:
.LBE977:
.LBB978:
.LBB956:
.LBB954:
.LBB953:
	ld.w	%d2, [%a15] 40
	add	%d5, 1
	extr.u	%d3, %d2, 24, 3
	ld.w	%d2, [%a15] 44
	itof	%d5, %d5
	extr.u	%d2, %d2, 8, 3
	mul.f	%d15, %d5, %d15
.LVL715:
	add	%d2, 1
	madd	%d2, %d2, %d3, %d2
	movh	%d3, 16333
	addi	%d3, %d3, -13107
	itof	%d2, %d2
	mul.f	%d2, %d2, %d3
	div.f	%d15, %d15, %d2
.LVL716:
	j	.L1061
.LBE953:
.LBE954:
.LBE956:
.LBE978:
.LFE265:
	.size	IfxScuCcu_setI2cFrequency, .-IfxScuCcu_setI2cFrequency
.section .text.IfxScuCcu_setMcanFrequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_setMcanFrequency
	.type	IfxScuCcu_setMcanFrequency, @function
IfxScuCcu_setMcanFrequency:
.LFB266:
	.loc 1 1036 0
.LVL717:
	.loc 1 1038 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24628
	ld.w	%d8, [%a15]0
.LVL718:
	.loc 1 1041 0
	extr.u	%d2, %d8, 4, 2
	jeq	%d2, 1, .L1108
	.loc 1 1050 0
	movh	%d15, 19353
	addi	%d15, %d15, -27008
	.loc 1 1041 0
	jne	%d2, 2, .L1158
.L1107:
.LVL719:
	.loc 1 1057 0
	div.f	%d15, %d15, %d4
.LVL720:
	ftoiz	%d2, %d15
	itof	%d3, %d2
	sub.f	%d15, %d15, %d3
	movh	%d3, 16128
	cmp.f	%d15, %d15, %d3
	extr.u	%d15, %d15, 2, 1
	add	%d15, %d2
.LVL721:
.LBB1001:
.LBB1002:
	.loc 4 168 0
	mov	%d2, 1
#APP
	# 168 ".\output\inc/..\..\Integration\Infineon\iLLD\TC38A\Tricore\Cpu\Std\IfxCpu_IntrinsicsGnuc.h" 1
	max.u %d15, %d15, %d2
	# 0 "" 2
.LVL722:
#NO_APP
.LBE1002:
.LBE1001:
	.loc 1 1060 0
	add	%d2, %d15, -7
	jge.u	%d2, 7, .L1116
	.loc 1 1062 0 discriminator 1
	andn	%d15, %d15, ~(-2)
.LVL723:
.L1128:
	and	%d10, %d15, 15
.L1118:
.LVL724:
	.loc 1 1070 0
	call	IfxScuWdt_getSafetyWatchdogPassword
.LVL725:
	.loc 1 1071 0
	mov	%d4, %d2
	.loc 1 1070 0
	mov	%d9, %d2
.LVL726:
	.loc 1 1071 0
	call	IfxScuWdt_clearSafetyEndinit
.LVL727:
	.loc 1 1075 0
	movh.a	%a15, 61443
	.loc 1 1073 0
	insert	%d8, %d8, %d10, 0, 4
	.loc 1 1075 0
	lea	%a15, [%a15] 24628
.L1119:
	.loc 1 1075 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
	jltz	%d15, .L1119
	.loc 1 1078 0 is_stmt 1
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24628
	st.w	[%a15]0, %d8
	.loc 1 1080 0
	mov	%d4, %d9
	call	IfxScuWdt_setSafetyEndinit
.LVL728:
.L1120:
	.loc 1 1082 0 discriminator 1
	ld.w	%d15, [%a15]0
	jltz	%d15, .L1120
.LVL729:
.LBB1003:
.LBB1004:
	.loc 1 283 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24628
	ld.w	%d15, [%a15]0
	extr.u	%d15, %d15, 4, 2
	jeq	%d15, 1, .L1122
	.loc 1 297 0
	movh	%d2, 19353
	addi	%d2, %d2, -27008
	.loc 1 283 0
	jne	%d15, 2, .L1161
.L1121:
.LVL730:
.LBE1004:
.LBE1003:
	.loc 1 1086 0
	ret
.LVL731:
.L1116:
	.loc 1 1065 0
	eq	%d2, %d15, 14
	mov	%d10, 12
	jnz	%d2, .L1118
	j	.L1128
.LVL732:
.L1108:
.LBB1023:
.LBB1024:
	.loc 1 442 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d2, [%a15]0
	.loc 1 445 0
	movh	%d15, 19647
	.loc 1 442 0
	extr.u	%d2, %d2, 28, 2
	.loc 1 445 0
	addi	%d15, %d15, -17376
	.loc 1 442 0
	jz	%d2, .L1107
	jeq	%d2, 1, .L1162
.LVL733:
.L1158:
.LBE1024:
.LBE1023:
	.loc 1 1037 0
	mov	%d15, 0
	j	.L1107
.LVL734:
.L1161:
.LBB1036:
.LBB1021:
	.loc 1 280 0
	mov	%d2, 0
.LVL735:
.LBE1021:
.LBE1036:
	.loc 1 1086 0
	ret
.LVL736:
.L1122:
.LBB1037:
.LBB1022:
.LBB1005:
.LBB1006:
.LBB1007:
.LBB1008:
	.loc 1 442 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d2, [%a15]0
	.loc 1 445 0
	movh	%d15, 19647
	.loc 1 442 0
	extr.u	%d2, %d2, 28, 2
	.loc 1 445 0
	addi	%d15, %d15, -17376
	.loc 1 442 0
	jz	%d2, .L1125
	jne	%d2, 1, .L1163
.LVL737:
.LBB1009:
.LBB1010:
.LBB1011:
.LBB1012:
.LBB1013:
.LBB1014:
	.loc 2 1720 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24600
	ld.w	%d2, [%a15]0
	sh	%d2, %d2, -30
	jz	%d2, .L1127
	.loc 2 1724 0
	ld.w	%d2, [%a15]0
	.loc 2 1726 0
	movh	%d15, 19353
	.loc 2 1724 0
	sh	%d2, %d2, -30
	.loc 2 1726 0
	addi	%d15, %d15, -27008
	.loc 2 1724 0
	jeq	%d2, 1, .L1127
	.loc 2 1728 0
	ld.w	%d2, [%a15]0
	sh	%d2, %d2, -30
	jeq	%d2, 2, .L1127
	.loc 2 1735 0
	mov	%d15, 0
.L1127:
.LVL738:
.LBE1014:
.LBE1013:
	.loc 1 370 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24576
	ld.w	%d4, [%a15] 40
	ld.w	%d2, [%a15] 40
	extr.u	%d4, %d4, 9, 7
	extr.u	%d3, %d2, 24, 3
	ld.w	%d2, [%a15] 44
	add	%d4, 1
	and	%d2, %d2, 7
	add	%d2, 1
	madd	%d2, %d2, %d3, %d2
	itof	%d4, %d4
.LBE1012:
.LBE1011:
	.loc 1 457 0
	movh.a	%a15, 61443
.LBB1017:
.LBB1015:
	.loc 1 370 0
	itof	%d2, %d2
	mul.f	%d15, %d4, %d15
.LVL739:
.LBE1015:
.LBE1017:
	.loc 1 457 0
	lea	%a15, [%a15] 24628
.LBB1018:
.LBB1016:
	.loc 1 370 0
	div.f	%d15, %d15, %d2
.LVL740:
.LBE1016:
.LBE1018:
	.loc 1 457 0
	ld.w	%d2, [%a15]0
	jnz.t	%d2, 7, .L1125
	.loc 1 459 0
	movh	%d2, 16128
	mul.f	%d15, %d15, %d2
.LVL741:
.L1125:
.LBE1010:
.LBE1009:
.LBE1008:
.LBE1007:
	.loc 1 289 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24628
	ld.w	%d3, [%a15]0
	.loc 1 280 0
	mov	%d2, 0
	.loc 1 289 0
	and	%d3, %d3, 15
	jz	%d3, .L1121
	.loc 1 291 0
	ld.w	%d2, [%a15]0
	and	%d2, %d2, 15
	itof	%d2, %d2
	div.f	%d2, %d15, %d2
.LVL742:
	ret
.LVL743:
.L1163:
.LBB1020:
.LBB1019:
	.loc 1 473 0
	mov	%d15, 0
	j	.L1125
.LVL744:
.L1162:
.LBE1019:
.LBE1020:
.LBE1006:
.LBE1005:
.LBE1022:
.LBE1037:
.LBB1038:
.LBB1035:
.LBB1025:
.LBB1026:
.LBB1027:
.LBB1028:
.LBB1029:
.LBB1030:
	.loc 2 1720 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24600
	ld.w	%d2, [%a15]0
	sh	%d2, %d2, -30
	jz	%d2, .L1112
	.loc 2 1724 0
	ld.w	%d2, [%a15]0
	.loc 2 1726 0
	movh	%d15, 19353
	.loc 2 1724 0
	sh	%d2, %d2, -30
	.loc 2 1726 0
	addi	%d15, %d15, -27008
	.loc 2 1724 0
	jeq	%d2, 1, .L1112
	.loc 2 1728 0
	ld.w	%d2, [%a15]0
	sh	%d2, %d2, -30
	jeq	%d2, 2, .L1112
	.loc 2 1735 0
	mov	%d15, 0
.L1112:
.LVL745:
.LBE1030:
.LBE1029:
	.loc 1 370 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24576
	ld.w	%d5, [%a15] 40
	ld.w	%d2, [%a15] 40
	extr.u	%d5, %d5, 9, 7
	extr.u	%d3, %d2, 24, 3
	ld.w	%d2, [%a15] 44
	add	%d5, 1
	and	%d2, %d2, 7
	add	%d2, 1
	madd	%d2, %d2, %d3, %d2
	itof	%d5, %d5
.LBE1028:
.LBE1027:
	.loc 1 457 0
	movh.a	%a15, 61443
.LBB1033:
.LBB1031:
	.loc 1 370 0
	itof	%d2, %d2
	mul.f	%d15, %d5, %d15
.LVL746:
.LBE1031:
.LBE1033:
	.loc 1 457 0
	lea	%a15, [%a15] 24628
.LBB1034:
.LBB1032:
	.loc 1 370 0
	div.f	%d15, %d15, %d2
.LVL747:
.LBE1032:
.LBE1034:
	.loc 1 457 0
	ld.w	%d2, [%a15]0
	jnz.t	%d2, 7, .L1107
	.loc 1 459 0
	movh	%d2, 16128
	mul.f	%d15, %d15, %d2
.LVL748:
	j	.L1107
.LBE1026:
.LBE1025:
.LBE1035:
.LBE1038:
.LFE266:
	.size	IfxScuCcu_setMcanFrequency, .-IfxScuCcu_setMcanFrequency
.section .text.IfxScuCcu_setMcanhFrequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_setMcanhFrequency
	.type	IfxScuCcu_setMcanhFrequency, @function
IfxScuCcu_setMcanhFrequency:
.LFB267:
	.loc 1 1090 0
.LVL749:
.LBB1055:
.LBB1056:
	.loc 1 442 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d2, [%a15]0
	.loc 1 445 0
	movh	%d15, 19647
	.loc 1 442 0
	extr.u	%d2, %d2, 28, 2
	.loc 1 445 0
	addi	%d15, %d15, -17376
	.loc 1 442 0
	jz	%d2, .L1166
	jne	%d2, 1, .L1205
.LVL750:
.LBB1057:
.LBB1058:
.LBB1059:
.LBB1060:
	.loc 2 1720 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24600
	ld.w	%d2, [%a15]0
	sh	%d2, %d2, -30
	jz	%d2, .L1168
	.loc 2 1724 0
	ld.w	%d2, [%a15]0
	.loc 2 1726 0
	movh	%d15, 19353
	.loc 2 1724 0
	sh	%d2, %d2, -30
	.loc 2 1726 0
	addi	%d15, %d15, -27008
	.loc 2 1724 0
	jeq	%d2, 1, .L1168
	.loc 2 1728 0
	ld.w	%d2, [%a15]0
	sh	%d2, %d2, -30
	jeq	%d2, 2, .L1168
	.loc 2 1735 0
	mov	%d15, 0
.L1168:
.LVL751:
.LBE1060:
.LBE1059:
	.loc 1 403 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24576
	ld.w	%d5, [%a15] 24
	ld.w	%d2, [%a15] 28
	extr.u	%d5, %d5, 9, 7
	and	%d3, %d2, 7
	ld.w	%d2, [%a15] 24
	add	%d5, 1
	extr.u	%d2, %d2, 24, 3
	itof	%d5, %d5
	add	%d2, 1
	madd	%d2, %d2, %d3, %d2
	mul.f	%d15, %d5, %d15
.LVL752:
	itof	%d2, %d2
	div.f	%d15, %d15, %d2
.LVL753:
.L1166:
.LBE1058:
.LBE1057:
.LBE1056:
.LBE1055:
	.loc 1 1095 0
	div.f	%d15, %d15, %d4
.LVL754:
	ftoiz	%d2, %d15
	itof	%d3, %d2
	sub.f	%d15, %d15, %d3
	movh	%d3, 16128
	cmp.f	%d15, %d15, %d3
	extr.u	%d15, %d15, 2, 1
	add	%d15, %d2
.LVL755:
.LBB1062:
.LBB1063:
	.loc 4 168 0
	mov	%d2, 1
#APP
	# 168 ".\output\inc/..\..\Integration\Infineon\iLLD\TC38A\Tricore\Cpu\Std\IfxCpu_IntrinsicsGnuc.h" 1
	max.u %d15, %d15, %d2
	# 0 "" 2
.LVL756:
#NO_APP
.LBE1063:
.LBE1062:
	.loc 1 1098 0
	add	%d2, %d15, -7
	jge.u	%d2, 7, .L1172
	.loc 1 1100 0 discriminator 1
	andn	%d15, %d15, ~(-2)
.LVL757:
.L1181:
	and	%d9, %d15, 15
.L1174:
.LVL758:
	.loc 1 1108 0
	call	IfxScuWdt_getSafetyWatchdogPassword
.LVL759:
	.loc 1 1109 0
	mov	%d4, %d2
	.loc 1 1108 0
	mov	%d8, %d2
.LVL760:
	.loc 1 1109 0
	call	IfxScuWdt_clearSafetyEndinit
.LVL761:
	.loc 1 1111 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24652
	ld.w	%d3, [%a15]0
.LVL762:
	.loc 1 1112 0
	insert	%d3, %d3, %d9, 4, 4
	.loc 1 1113 0
	insert	%d3, %d3, 1, 30, 1
.L1175:
	.loc 1 1115 0 discriminator 1
	ld.w	%d15, [%a15]0
	jltz	%d15, .L1175
	.loc 1 1118 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24652
	st.w	[%a15]0, %d3
	.loc 1 1120 0
	mov	%d4, %d8
	call	IfxScuWdt_setSafetyEndinit
.LVL763:
.L1176:
	.loc 1 1122 0 discriminator 1
	ld.w	%d15, [%a15]0
	jltz	%d15, .L1176
.LVL764:
.LBB1064:
.LBB1065:
.LBB1066:
.LBB1067:
	.loc 1 442 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d2, [%a15]0
	.loc 1 445 0
	movh	%d15, 19647
	.loc 1 442 0
	extr.u	%d2, %d2, 28, 2
	.loc 1 445 0
	addi	%d15, %d15, -17376
	.loc 1 442 0
	jz	%d2, .L1178
	jne	%d2, 1, .L1206
.LVL765:
.LBB1068:
.LBB1069:
.LBB1070:
.LBB1071:
	.loc 2 1720 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24600
	ld.w	%d2, [%a15]0
	sh	%d2, %d2, -30
	jz	%d2, .L1180
	.loc 2 1724 0
	ld.w	%d2, [%a15]0
	.loc 2 1726 0
	movh	%d15, 19353
	.loc 2 1724 0
	sh	%d2, %d2, -30
	.loc 2 1726 0
	addi	%d15, %d15, -27008
	.loc 2 1724 0
	jeq	%d2, 1, .L1180
	.loc 2 1728 0
	ld.w	%d2, [%a15]0
	sh	%d2, %d2, -30
	jeq	%d2, 2, .L1180
	.loc 2 1735 0
	mov	%d15, 0
.L1180:
.LVL766:
.LBE1071:
.LBE1070:
	.loc 1 403 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24576
	ld.w	%d4, [%a15] 24
	ld.w	%d2, [%a15] 28
	extr.u	%d4, %d4, 9, 7
	and	%d3, %d2, 7
	ld.w	%d2, [%a15] 24
	add	%d4, 1
	extr.u	%d2, %d2, 24, 3
	itof	%d4, %d4
	add	%d2, 1
	madd	%d2, %d2, %d3, %d2
	mul.f	%d15, %d4, %d15
.LVL767:
	itof	%d2, %d2
	div.f	%d15, %d15, %d2
.LVL768:
.L1178:
.LBE1069:
.LBE1068:
.LBE1067:
.LBE1066:
	.loc 2 1706 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24652
	ld.w	%d2, [%a15]0
	extr.u	%d2, %d2, 4, 4
.LVL769:
	itof	%d2, %d2
.LBE1065:
.LBE1064:
	.loc 1 1127 0
	div.f	%d2, %d15, %d2
	ret
.LVL770:
.L1172:
	.loc 1 1103 0
	eq	%d2, %d15, 14
	mov	%d9, 12
	jnz	%d2, .L1174
	j	.L1181
.LVL771:
.L1206:
.LBB1075:
.LBB1074:
.LBB1073:
.LBB1072:
	.loc 1 473 0
	mov	%d15, 0
	j	.L1178
.LVL772:
.L1205:
.LBE1072:
.LBE1073:
.LBE1074:
.LBE1075:
.LBB1076:
.LBB1061:
	mov	%d15, 0
	j	.L1166
.LBE1061:
.LBE1076:
.LFE267:
	.size	IfxScuCcu_setMcanhFrequency, .-IfxScuCcu_setMcanhFrequency
.section .text.IfxScuCcu_setMscFrequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_setMscFrequency
	.type	IfxScuCcu_setMscFrequency, @function
IfxScuCcu_setMscFrequency:
.LFB268:
	.loc 1 1131 0
.LVL773:
	.loc 1 1133 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24628
	ld.w	%d8, [%a15]0
.LVL774:
	.loc 1 1136 0
	extr.u	%d2, %d8, 20, 2
	jeq	%d2, 1, .L1209
	jeq	%d2, 2, .L1210
.L1251:
	.loc 1 1132 0
	mov	%d15, 0
.L1208:
.LVL775:
	.loc 1 1152 0
	div.f	%d15, %d15, %d4
.LVL776:
	ftoiz	%d2, %d15
	itof	%d3, %d2
	sub.f	%d15, %d15, %d3
	movh	%d3, 16128
	cmp.f	%d15, %d15, %d3
	extr.u	%d15, %d15, 2, 1
	add	%d15, %d2
.LVL777:
.LBB1093:
.LBB1094:
	.loc 4 168 0
	mov	%d2, 1
#APP
	# 168 ".\output\inc/..\..\Integration\Infineon\iLLD\TC38A\Tricore\Cpu\Std\IfxCpu_IntrinsicsGnuc.h" 1
	max.u %d15, %d15, %d2
	# 0 "" 2
.LVL778:
#NO_APP
.LBE1094:
.LBE1093:
	.loc 1 1155 0
	add	%d2, %d15, -7
	jge.u	%d2, 7, .L1221
	.loc 1 1157 0 discriminator 1
	andn	%d15, %d15, ~(-2)
.LVL779:
.L1226:
	and	%d10, %d15, 15
.L1223:
.LVL780:
	.loc 1 1165 0
	call	IfxScuWdt_getSafetyWatchdogPassword
.LVL781:
	.loc 1 1166 0
	mov	%d4, %d2
	.loc 1 1165 0
	mov	%d9, %d2
.LVL782:
	.loc 1 1166 0
	call	IfxScuWdt_clearSafetyEndinit
.LVL783:
	.loc 1 1170 0
	movh.a	%a15, 61443
	.loc 1 1168 0
	insert	%d8, %d8, %d10, 16, 4
	.loc 1 1170 0
	lea	%a15, [%a15] 24628
.L1224:
	.loc 1 1170 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
	jltz	%d15, .L1224
	.loc 1 1173 0 is_stmt 1
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24628
	st.w	[%a15]0, %d8
	.loc 1 1175 0
	mov	%d4, %d9
	call	IfxScuWdt_setSafetyEndinit
.LVL784:
.L1225:
	.loc 1 1177 0 discriminator 1
	ld.w	%d15, [%a15]0
	jltz	%d15, .L1225
	.loc 1 1180 0
	j	IfxScuCcu_getMscFrequency
.LVL785:
.L1221:
	.loc 1 1160 0
	eq	%d2, %d15, 14
	mov	%d10, 12
	jnz	%d2, .L1223
	j	.L1226
.LVL786:
.L1210:
.LBB1095:
.LBB1096:
	.loc 1 442 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d2, [%a15]0
	.loc 1 445 0
	movh	%d15, 19647
	.loc 1 442 0
	extr.u	%d2, %d2, 28, 2
	.loc 1 445 0
	addi	%d15, %d15, -17376
	.loc 1 442 0
	jz	%d2, .L1208
	jne	%d2, 1, .L1251
.LVL787:
.LBB1097:
.LBB1098:
.LBB1099:
.LBB1100:
	.loc 2 1720 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24600
	ld.w	%d2, [%a15]0
	sh	%d2, %d2, -30
	jz	%d2, .L1216
	.loc 2 1724 0
	ld.w	%d2, [%a15]0
	.loc 2 1726 0
	movh	%d15, 19353
	.loc 2 1724 0
	sh	%d2, %d2, -30
	.loc 2 1726 0
	addi	%d15, %d15, -27008
	.loc 2 1724 0
	jeq	%d2, 1, .L1216
	.loc 2 1728 0
	ld.w	%d2, [%a15]0
	sh	%d2, %d2, -30
	jeq	%d2, 2, .L1216
	.loc 2 1735 0
	mov	%d15, 0
.L1216:
.LVL788:
.LBE1100:
.LBE1099:
	.loc 1 383 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24576
	ld.w	%d2, [%a15] 40
	.loc 1 385 0
	ld.w	%d5, [%a15] 40
	extr.u	%d5, %d5, 9, 7
	.loc 1 383 0
	jz.t	%d2, 0, .L1252
	.loc 1 389 0
	ld.w	%d2, [%a15] 40
	add	%d5, 1
	extr.u	%d3, %d2, 24, 3
	ld.w	%d2, [%a15] 44
	itof	%d5, %d5
	extr.u	%d2, %d2, 8, 3
	mul.f	%d15, %d15, %d5
.LVL789:
	add	%d2, 1
	madd	%d2, %d2, %d3, %d2
	sh	%d2, 1
	itof	%d2, %d2
	div.f	%d15, %d15, %d2
.LVL790:
	j	.L1208
.LVL791:
.L1209:
.LBE1098:
.LBE1097:
.LBE1096:
.LBE1095:
.LBB1104:
.LBB1105:
	.loc 1 442 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d2, [%a15]0
	.loc 1 445 0
	movh	%d15, 19647
	.loc 1 442 0
	extr.u	%d2, %d2, 28, 2
	.loc 1 445 0
	addi	%d15, %d15, -17376
	.loc 1 442 0
	jz	%d2, .L1208
	jne	%d2, 1, .L1251
.LVL792:
.LBB1106:
.LBB1107:
.LBB1108:
.LBB1109:
.LBB1110:
.LBB1111:
	.loc 2 1720 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24600
	ld.w	%d2, [%a15]0
	sh	%d2, %d2, -30
	jz	%d2, .L1213
	.loc 2 1724 0
	ld.w	%d2, [%a15]0
	.loc 2 1726 0
	movh	%d15, 19353
	.loc 2 1724 0
	sh	%d2, %d2, -30
	.loc 2 1726 0
	addi	%d15, %d15, -27008
	.loc 2 1724 0
	jeq	%d2, 1, .L1213
	.loc 2 1728 0
	ld.w	%d2, [%a15]0
	sh	%d2, %d2, -30
	jeq	%d2, 2, .L1213
	.loc 2 1735 0
	mov	%d15, 0
.L1213:
.LVL793:
.LBE1111:
.LBE1110:
	.loc 1 370 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24576
	ld.w	%d5, [%a15] 40
	ld.w	%d2, [%a15] 40
	extr.u	%d5, %d5, 9, 7
	extr.u	%d3, %d2, 24, 3
	ld.w	%d2, [%a15] 44
	add	%d5, 1
	and	%d2, %d2, 7
	add	%d2, 1
	madd	%d2, %d2, %d3, %d2
	itof	%d5, %d5
.LBE1109:
.LBE1108:
	.loc 1 457 0
	movh.a	%a15, 61443
.LBB1114:
.LBB1112:
	.loc 1 370 0
	itof	%d2, %d2
	mul.f	%d15, %d5, %d15
.LVL794:
.LBE1112:
.LBE1114:
	.loc 1 457 0
	lea	%a15, [%a15] 24628
.LBB1115:
.LBB1113:
	.loc 1 370 0
	div.f	%d15, %d15, %d2
.LVL795:
.LBE1113:
.LBE1115:
	.loc 1 457 0
	ld.w	%d2, [%a15]0
	jnz.t	%d2, 7, .L1208
	.loc 1 459 0
	movh	%d2, 16128
	mul.f	%d15, %d15, %d2
.LVL796:
	j	.L1208
.LVL797:
.L1252:
.LBE1107:
.LBE1106:
.LBE1105:
.LBE1104:
.LBB1116:
.LBB1103:
.LBB1102:
.LBB1101:
	.loc 1 385 0
	ld.w	%d2, [%a15] 40
	add	%d5, 1
	extr.u	%d3, %d2, 24, 3
	ld.w	%d2, [%a15] 44
	itof	%d5, %d5
	extr.u	%d2, %d2, 8, 3
	mul.f	%d15, %d5, %d15
.LVL798:
	add	%d2, 1
	madd	%d2, %d2, %d3, %d2
	movh	%d3, 16333
	addi	%d3, %d3, -13107
	itof	%d2, %d2
	mul.f	%d2, %d2, %d3
	div.f	%d15, %d15, %d2
.LVL799:
	j	.L1208
.LBE1101:
.LBE1102:
.LBE1103:
.LBE1116:
.LFE268:
	.size	IfxScuCcu_setMscFrequency, .-IfxScuCcu_setMscFrequency
.section .text.IfxScuCcu_setQspiFrequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_setQspiFrequency
	.type	IfxScuCcu_setQspiFrequency, @function
IfxScuCcu_setQspiFrequency:
.LFB269:
	.loc 1 1185 0
.LVL800:
	.loc 1 1187 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24628
	ld.w	%d8, [%a15]0
.LVL801:
	.loc 1 1190 0
	ld.w	%d2, [%a15]0
	extr.u	%d2, %d2, 28, 2
	jeq	%d2, 1, .L1255
	jeq	%d2, 2, .L1256
.L1297:
	.loc 1 1186 0
	mov	%d15, 0
.L1254:
.LVL802:
	.loc 1 1206 0
	div.f	%d15, %d15, %d4
.LVL803:
	ftoiz	%d2, %d15
	itof	%d3, %d2
	sub.f	%d15, %d15, %d3
	movh	%d3, 16128
	cmp.f	%d15, %d15, %d3
	extr.u	%d15, %d15, 2, 1
	add	%d15, %d2
.LVL804:
.LBB1133:
.LBB1134:
	.loc 4 168 0
	mov	%d2, 1
#APP
	# 168 ".\output\inc/..\..\Integration\Infineon\iLLD\TC38A\Tricore\Cpu\Std\IfxCpu_IntrinsicsGnuc.h" 1
	max.u %d15, %d15, %d2
	# 0 "" 2
.LVL805:
#NO_APP
.LBE1134:
.LBE1133:
	.loc 1 1209 0
	add	%d2, %d15, -7
	jge.u	%d2, 7, .L1267
	.loc 1 1211 0 discriminator 1
	andn	%d15, %d15, ~(-2)
.LVL806:
.L1272:
	and	%d10, %d15, 15
.L1269:
.LVL807:
	.loc 1 1219 0
	call	IfxScuWdt_getSafetyWatchdogPassword
.LVL808:
	.loc 1 1220 0
	mov	%d4, %d2
	.loc 1 1219 0
	mov	%d9, %d2
.LVL809:
	.loc 1 1220 0
	call	IfxScuWdt_clearSafetyEndinit
.LVL810:
	.loc 1 1224 0
	movh.a	%a15, 61443
	.loc 1 1222 0
	insert	%d8, %d8, %d10, 24, 4
	.loc 1 1224 0
	lea	%a15, [%a15] 24628
.L1270:
	.loc 1 1224 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
	jltz	%d15, .L1270
	.loc 1 1227 0 is_stmt 1
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24628
	st.w	[%a15]0, %d8
	.loc 1 1229 0
	mov	%d4, %d9
	call	IfxScuWdt_setSafetyEndinit
.LVL811:
.L1271:
	.loc 1 1231 0 discriminator 1
	ld.w	%d15, [%a15]0
	jltz	%d15, .L1271
	.loc 1 1234 0
	j	IfxScuCcu_getQspiFrequency
.LVL812:
.L1267:
	.loc 1 1214 0
	eq	%d2, %d15, 14
	mov	%d10, 12
	jnz	%d2, .L1269
	j	.L1272
.LVL813:
.L1256:
.LBB1135:
.LBB1136:
	.loc 1 442 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d2, [%a15]0
	.loc 1 445 0
	movh	%d15, 19647
	.loc 1 442 0
	extr.u	%d2, %d2, 28, 2
	.loc 1 445 0
	addi	%d15, %d15, -17376
	.loc 1 442 0
	jz	%d2, .L1254
	jne	%d2, 1, .L1297
.LVL814:
.LBB1137:
.LBB1138:
.LBB1139:
.LBB1140:
	.loc 2 1720 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24600
	ld.w	%d2, [%a15]0
	sh	%d2, %d2, -30
	jz	%d2, .L1262
	.loc 2 1724 0
	ld.w	%d2, [%a15]0
	.loc 2 1726 0
	movh	%d15, 19353
	.loc 2 1724 0
	sh	%d2, %d2, -30
	.loc 2 1726 0
	addi	%d15, %d15, -27008
	.loc 2 1724 0
	jeq	%d2, 1, .L1262
	.loc 2 1728 0
	ld.w	%d2, [%a15]0
	sh	%d2, %d2, -30
	jeq	%d2, 2, .L1262
	.loc 2 1735 0
	mov	%d15, 0
.L1262:
.LVL815:
.LBE1140:
.LBE1139:
	.loc 1 383 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24576
	ld.w	%d2, [%a15] 40
	.loc 1 385 0
	ld.w	%d5, [%a15] 40
	extr.u	%d5, %d5, 9, 7
	.loc 1 383 0
	jz.t	%d2, 0, .L1298
	.loc 1 389 0
	ld.w	%d2, [%a15] 40
	add	%d5, 1
	extr.u	%d3, %d2, 24, 3
	ld.w	%d2, [%a15] 44
	itof	%d5, %d5
	extr.u	%d2, %d2, 8, 3
	mul.f	%d15, %d15, %d5
.LVL816:
	add	%d2, 1
	madd	%d2, %d2, %d3, %d2
	sh	%d2, 1
	itof	%d2, %d2
	div.f	%d15, %d15, %d2
.LVL817:
	j	.L1254
.LVL818:
.L1255:
.LBE1138:
.LBE1137:
.LBE1136:
.LBE1135:
.LBB1144:
.LBB1145:
	.loc 1 442 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d2, [%a15]0
	.loc 1 445 0
	movh	%d15, 19647
	.loc 1 442 0
	extr.u	%d2, %d2, 28, 2
	.loc 1 445 0
	addi	%d15, %d15, -17376
	.loc 1 442 0
	jz	%d2, .L1254
	jne	%d2, 1, .L1297
.LVL819:
.LBB1146:
.LBB1147:
.LBB1148:
.LBB1149:
.LBB1150:
.LBB1151:
	.loc 2 1720 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24600
	ld.w	%d2, [%a15]0
	sh	%d2, %d2, -30
	jz	%d2, .L1259
	.loc 2 1724 0
	ld.w	%d2, [%a15]0
	.loc 2 1726 0
	movh	%d15, 19353
	.loc 2 1724 0
	sh	%d2, %d2, -30
	.loc 2 1726 0
	addi	%d15, %d15, -27008
	.loc 2 1724 0
	jeq	%d2, 1, .L1259
	.loc 2 1728 0
	ld.w	%d2, [%a15]0
	sh	%d2, %d2, -30
	jeq	%d2, 2, .L1259
	.loc 2 1735 0
	mov	%d15, 0
.L1259:
.LVL820:
.LBE1151:
.LBE1150:
	.loc 1 370 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24576
	ld.w	%d5, [%a15] 40
	ld.w	%d2, [%a15] 40
	extr.u	%d5, %d5, 9, 7
	extr.u	%d3, %d2, 24, 3
	ld.w	%d2, [%a15] 44
	add	%d5, 1
	and	%d2, %d2, 7
	add	%d2, 1
	madd	%d2, %d2, %d3, %d2
	itof	%d5, %d5
.LBE1149:
.LBE1148:
	.loc 1 457 0
	movh.a	%a15, 61443
.LBB1154:
.LBB1152:
	.loc 1 370 0
	itof	%d2, %d2
	mul.f	%d15, %d5, %d15
.LVL821:
.LBE1152:
.LBE1154:
	.loc 1 457 0
	lea	%a15, [%a15] 24628
.LBB1155:
.LBB1153:
	.loc 1 370 0
	div.f	%d15, %d15, %d2
.LVL822:
.LBE1153:
.LBE1155:
	.loc 1 457 0
	ld.w	%d2, [%a15]0
	jnz.t	%d2, 7, .L1254
	.loc 1 459 0
	movh	%d2, 16128
	mul.f	%d15, %d15, %d2
.LVL823:
	j	.L1254
.LVL824:
.L1298:
.LBE1147:
.LBE1146:
.LBE1145:
.LBE1144:
.LBB1156:
.LBB1143:
.LBB1142:
.LBB1141:
	.loc 1 385 0
	ld.w	%d2, [%a15] 40
	add	%d5, 1
	extr.u	%d3, %d2, 24, 3
	ld.w	%d2, [%a15] 44
	itof	%d5, %d5
	extr.u	%d2, %d2, 8, 3
	mul.f	%d15, %d5, %d15
.LVL825:
	add	%d2, 1
	madd	%d2, %d2, %d3, %d2
	movh	%d3, 16333
	addi	%d3, %d3, -13107
	itof	%d2, %d2
	mul.f	%d2, %d2, %d3
	div.f	%d15, %d15, %d2
.LVL826:
	j	.L1254
.LBE1141:
.LBE1142:
.LBE1143:
.LBE1156:
.LFE269:
	.size	IfxScuCcu_setQspiFrequency, .-IfxScuCcu_setQspiFrequency
.section .text.IfxScuCcu_setSpbFrequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_setSpbFrequency
	.type	IfxScuCcu_setSpbFrequency, @function
IfxScuCcu_setSpbFrequency:
.LFB270:
	.loc 1 1239 0
.LVL827:
.LBB1165:
.LBB1166:
	.loc 1 442 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d2, [%a15]0
	.loc 1 445 0
	movh	%d15, 19647
	.loc 1 442 0
	extr.u	%d2, %d2, 28, 2
	.loc 1 445 0
	addi	%d15, %d15, -17376
	.loc 1 442 0
	jz	%d2, .L1301
	jne	%d2, 1, .L1324
.LVL828:
.LBB1167:
.LBB1168:
.LBB1169:
.LBB1170:
	.loc 2 1720 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24600
	ld.w	%d2, [%a15]0
	sh	%d2, %d2, -30
	jz	%d2, .L1303
	.loc 2 1724 0
	ld.w	%d2, [%a15]0
	.loc 2 1726 0
	movh	%d15, 19353
	.loc 2 1724 0
	sh	%d2, %d2, -30
	.loc 2 1726 0
	addi	%d15, %d15, -27008
	.loc 2 1724 0
	jeq	%d2, 1, .L1303
	.loc 2 1728 0
	ld.w	%d2, [%a15]0
	sh	%d2, %d2, -30
	jeq	%d2, 2, .L1303
	.loc 2 1735 0
	mov	%d15, 0
.L1303:
.LVL829:
.LBE1170:
.LBE1169:
	.loc 1 403 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24576
	ld.w	%d5, [%a15] 24
	ld.w	%d2, [%a15] 28
	extr.u	%d5, %d5, 9, 7
	and	%d3, %d2, 7
	ld.w	%d2, [%a15] 24
	add	%d5, 1
	extr.u	%d2, %d2, 24, 3
	itof	%d5, %d5
	add	%d2, 1
	madd	%d2, %d2, %d3, %d2
	mul.f	%d15, %d5, %d15
.LVL830:
	itof	%d2, %d2
	div.f	%d15, %d15, %d2
.LVL831:
.L1301:
.LBE1168:
.LBE1167:
.LBE1166:
.LBE1165:
	.loc 1 1245 0
	div.f	%d4, %d15, %d4
.LVL832:
	ftouz	%d15, %d4
.LVL833:
.LBB1172:
.LBB1173:
	.loc 4 168 0
	mov	%d4, 2
#APP
	# 168 ".\output\inc/..\..\Integration\Infineon\iLLD\TC38A\Tricore\Cpu\Std\IfxCpu_IntrinsicsGnuc.h" 1
	max.u %d4, %d15, %d4
	# 0 "" 2
.LVL834:
#NO_APP
.LBE1173:
.LBE1172:
	.loc 1 1248 0
	add	%d15, %d4, -7
.LVL835:
	jge.u	%d15, 7, .L1304
	.loc 1 1250 0 discriminator 1
	andn	%d4, %d4, ~(-2)
.LVL836:
.L1309:
	and	%d10, %d4, 15
.L1306:
.LVL837:
	.loc 1 1258 0
	call	IfxScuWdt_getCpuWatchdogPassword
.LVL838:
	mov	%d8, %d2
.LVL839:
	.loc 1 1259 0
	call	IfxScuWdt_getSafetyWatchdogPassword
.LVL840:
	.loc 1 1261 0
	mov	%d4, %d8
	.loc 1 1259 0
	mov	%d9, %d2
.LVL841:
	.loc 1 1261 0
	call	IfxScuWdt_clearCpuEndinit
.LVL842:
	.loc 1 1263 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24880
	ld.w	%d11, [%a15]0
.LVL843:
	.loc 1 1264 0
	ld.w	%d2, [%a15]0
	mov	%d15, 992
	or	%d15, %d2
	st.w	[%a15]0, %d15
	.loc 1 1265 0
	mov	%d4, %d8
	call	IfxScuWdt_setCpuEndinit
.LVL844:
	.loc 1 1267 0
	mov	%d4, %d9
	call	IfxScuWdt_clearSafetyEndinit
.LVL845:
	.loc 1 1268 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d3, [%a15]0
.LVL846:
	.loc 1 1269 0
	insert	%d3, %d3, %d10, 16, 4
	.loc 1 1270 0
	insert	%d3, %d3, 1, 30, 1
.L1307:
	.loc 1 1272 0 discriminator 1
	ld.w	%d15, [%a15]0
	jltz	%d15, .L1307
	.loc 1 1275 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	st.w	[%a15]0, %d3
	.loc 1 1276 0
	mov	%d4, %d9
	call	IfxScuWdt_setSafetyEndinit
.LVL847:
	.loc 1 1278 0
	mov	%d4, %d8
	call	IfxScuWdt_clearCpuEndinit
.LVL848:
	.loc 1 1279 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24880
	st.w	[%a15]0, %d11
	.loc 1 1280 0
	mov	%d4, %d8
	call	IfxScuWdt_setCpuEndinit
.LVL849:
	.loc 1 1282 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
.L1308:
	.loc 1 1282 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
	jltz	%d15, .L1308
	.loc 1 1285 0 is_stmt 1
	j	IfxScuCcu_getSpbFrequency
.LVL850:
.L1304:
	.loc 1 1253 0
	eq	%d15, %d4, 14
	mov	%d10, 12
	jnz	%d15, .L1306
	j	.L1309
.LVL851:
.L1324:
.LBB1174:
.LBB1171:
	.loc 1 473 0
	mov	%d15, 0
	j	.L1301
.LBE1171:
.LBE1174:
.LFE270:
	.size	IfxScuCcu_setSpbFrequency, .-IfxScuCcu_setSpbFrequency
.section .text.IfxScuCcu_setSriFrequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_setSriFrequency
	.type	IfxScuCcu_setSriFrequency, @function
IfxScuCcu_setSriFrequency:
.LFB271:
	.loc 1 1290 0
.LVL852:
.LBB1183:
.LBB1184:
	.loc 1 442 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d2, [%a15]0
	.loc 1 445 0
	movh	%d15, 19647
	.loc 1 442 0
	extr.u	%d2, %d2, 28, 2
	.loc 1 445 0
	addi	%d15, %d15, -17376
	.loc 1 442 0
	jz	%d2, .L1327
	jne	%d2, 1, .L1354
.LVL853:
.LBB1185:
.LBB1186:
.LBB1187:
.LBB1188:
	.loc 2 1720 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24600
	ld.w	%d2, [%a15]0
	sh	%d2, %d2, -30
	jz	%d2, .L1329
	.loc 2 1724 0
	ld.w	%d2, [%a15]0
	.loc 2 1726 0
	movh	%d15, 19353
	.loc 2 1724 0
	sh	%d2, %d2, -30
	.loc 2 1726 0
	addi	%d15, %d15, -27008
	.loc 2 1724 0
	jeq	%d2, 1, .L1329
	.loc 2 1728 0
	ld.w	%d2, [%a15]0
	sh	%d2, %d2, -30
	jeq	%d2, 2, .L1329
	.loc 2 1735 0
	mov	%d15, 0
.L1329:
.LVL854:
.LBE1188:
.LBE1187:
	.loc 1 403 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24576
	ld.w	%d5, [%a15] 24
	ld.w	%d2, [%a15] 28
	extr.u	%d5, %d5, 9, 7
	and	%d3, %d2, 7
	ld.w	%d2, [%a15] 24
	add	%d5, 1
	extr.u	%d2, %d2, 24, 3
	itof	%d5, %d5
	add	%d2, 1
	madd	%d2, %d2, %d3, %d2
	mul.f	%d15, %d5, %d15
.LVL855:
	itof	%d2, %d2
	div.f	%d15, %d15, %d2
.LVL856:
.L1327:
.LBE1186:
.LBE1185:
.LBE1184:
.LBE1183:
	.loc 1 1295 0
	div.f	%d15, %d15, %d4
.LVL857:
	ftoiz	%d2, %d15
	itof	%d3, %d2
	sub.f	%d15, %d15, %d3
	movh	%d3, 16128
	cmp.f	%d15, %d15, %d3
	extr.u	%d15, %d15, 2, 1
	add	%d15, %d2
.LVL858:
.LBB1190:
.LBB1191:
	.loc 4 168 0
	mov	%d2, 1
#APP
	# 168 ".\output\inc/..\..\Integration\Infineon\iLLD\TC38A\Tricore\Cpu\Std\IfxCpu_IntrinsicsGnuc.h" 1
	max.u %d15, %d15, %d2
	# 0 "" 2
.LVL859:
#NO_APP
.LBE1191:
.LBE1190:
	.loc 1 1298 0
	add	%d2, %d15, -7
	jge.u	%d2, 7, .L1333
	.loc 1 1300 0 discriminator 1
	andn	%d15, %d15, ~(-2)
.LVL860:
.L1338:
	and	%d9, %d15, 15
.L1335:
.LVL861:
	.loc 1 1308 0
	call	IfxScuWdt_getSafetyWatchdogPassword
.LVL862:
	.loc 1 1309 0
	mov	%d4, %d2
	.loc 1 1308 0
	mov	%d8, %d2
.LVL863:
	.loc 1 1309 0
	call	IfxScuWdt_clearSafetyEndinit
.LVL864:
	.loc 1 1311 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d3, [%a15]0
.LVL865:
	.loc 1 1312 0
	insert	%d3, %d3, %d9, 8, 4
	.loc 1 1313 0
	insert	%d3, %d3, 1, 30, 1
.L1336:
	.loc 1 1315 0 discriminator 1
	ld.w	%d15, [%a15]0
	jltz	%d15, .L1336
	.loc 1 1318 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	st.w	[%a15]0, %d3
	.loc 1 1320 0
	mov	%d4, %d8
	call	IfxScuWdt_setSafetyEndinit
.LVL866:
.L1337:
	.loc 1 1322 0 discriminator 1
	ld.w	%d15, [%a15]0
	jltz	%d15, .L1337
	.loc 1 1325 0
	j	IfxScuCcu_getSriFrequency
.LVL867:
.L1333:
	.loc 1 1303 0
	eq	%d2, %d15, 14
	mov	%d9, 12
	jnz	%d2, .L1335
	j	.L1338
.LVL868:
.L1354:
.LBB1192:
.LBB1189:
	.loc 1 473 0
	mov	%d15, 0
	j	.L1327
.LBE1189:
.LBE1192:
.LFE271:
	.size	IfxScuCcu_setSriFrequency, .-IfxScuCcu_setSriFrequency
.section .text.IfxScuCcu_setStmFrequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_setStmFrequency
	.type	IfxScuCcu_setStmFrequency, @function
IfxScuCcu_setStmFrequency:
.LFB272:
	.loc 1 1331 0
.LVL869:
.LBB1209:
.LBB1210:
	.loc 1 442 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d2, [%a15]0
	.loc 1 445 0
	movh	%d15, 19647
	.loc 1 442 0
	extr.u	%d2, %d2, 28, 2
	.loc 1 445 0
	addi	%d15, %d15, -17376
	.loc 1 442 0
	jz	%d2, .L1357
	jne	%d2, 1, .L1396
.LVL870:
.LBB1211:
.LBB1212:
.LBB1213:
.LBB1214:
	.loc 2 1720 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24600
	ld.w	%d2, [%a15]0
	sh	%d2, %d2, -30
	jz	%d2, .L1359
	.loc 2 1724 0
	ld.w	%d2, [%a15]0
	.loc 2 1726 0
	movh	%d15, 19353
	.loc 2 1724 0
	sh	%d2, %d2, -30
	.loc 2 1726 0
	addi	%d15, %d15, -27008
	.loc 2 1724 0
	jeq	%d2, 1, .L1359
	.loc 2 1728 0
	ld.w	%d2, [%a15]0
	sh	%d2, %d2, -30
	jeq	%d2, 2, .L1359
	.loc 2 1735 0
	mov	%d15, 0
.L1359:
.LVL871:
.LBE1214:
.LBE1213:
	.loc 1 403 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24576
	ld.w	%d5, [%a15] 24
	ld.w	%d2, [%a15] 28
	extr.u	%d5, %d5, 9, 7
	and	%d3, %d2, 7
	ld.w	%d2, [%a15] 24
	add	%d5, 1
	extr.u	%d2, %d2, 24, 3
	itof	%d5, %d5
	add	%d2, 1
	madd	%d2, %d2, %d3, %d2
	mul.f	%d15, %d5, %d15
.LVL872:
	itof	%d2, %d2
	div.f	%d15, %d15, %d2
.LVL873:
.L1357:
.LBE1212:
.LBE1211:
.LBE1210:
.LBE1209:
	.loc 1 1336 0
	div.f	%d15, %d15, %d4
.LVL874:
	ftoiz	%d2, %d15
	itof	%d3, %d2
	sub.f	%d15, %d15, %d3
	movh	%d3, 16128
	cmp.f	%d15, %d15, %d3
	extr.u	%d15, %d15, 2, 1
	add	%d15, %d2
.LVL875:
.LBB1216:
.LBB1217:
	.loc 4 168 0
	mov	%d2, 1
#APP
	# 168 ".\output\inc/..\..\Integration\Infineon\iLLD\TC38A\Tricore\Cpu\Std\IfxCpu_IntrinsicsGnuc.h" 1
	max.u %d15, %d15, %d2
	# 0 "" 2
.LVL876:
#NO_APP
.LBE1217:
.LBE1216:
	.loc 1 1339 0
	add	%d2, %d15, -7
	jge.u	%d2, 7, .L1363
	.loc 1 1341 0 discriminator 1
	andn	%d15, %d15, ~(-2)
.LVL877:
.L1372:
	and	%d9, %d15, 15
.L1365:
.LVL878:
	.loc 1 1349 0
	call	IfxScuWdt_getSafetyWatchdogPassword
.LVL879:
	.loc 1 1350 0
	mov	%d4, %d2
	.loc 1 1349 0
	mov	%d8, %d2
.LVL880:
	.loc 1 1350 0
	call	IfxScuWdt_clearSafetyEndinit
.LVL881:
	.loc 1 1352 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d3, [%a15]0
.LVL882:
	.loc 1 1353 0
	insert	%d3, %d3, %d9, 0, 4
	.loc 1 1354 0
	insert	%d3, %d3, 1, 30, 1
.L1366:
	.loc 1 1356 0 discriminator 1
	ld.w	%d15, [%a15]0
	jltz	%d15, .L1366
	.loc 1 1359 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	st.w	[%a15]0, %d3
	.loc 1 1361 0
	mov	%d4, %d8
	call	IfxScuWdt_setSafetyEndinit
.LVL883:
.L1367:
	.loc 1 1363 0 discriminator 1
	ld.w	%d15, [%a15]0
	jltz	%d15, .L1367
.LVL884:
.LBB1218:
.LBB1219:
.LBB1220:
.LBB1221:
	.loc 1 442 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d2, [%a15]0
	.loc 1 445 0
	movh	%d15, 19647
	.loc 1 442 0
	extr.u	%d2, %d2, 28, 2
	.loc 1 445 0
	addi	%d15, %d15, -17376
	.loc 1 442 0
	jz	%d2, .L1369
	jne	%d2, 1, .L1397
.LVL885:
.LBB1222:
.LBB1223:
.LBB1224:
.LBB1225:
	.loc 2 1720 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24600
	ld.w	%d2, [%a15]0
	sh	%d2, %d2, -30
	jz	%d2, .L1371
	.loc 2 1724 0
	ld.w	%d2, [%a15]0
	.loc 2 1726 0
	movh	%d15, 19353
	.loc 2 1724 0
	sh	%d2, %d2, -30
	.loc 2 1726 0
	addi	%d15, %d15, -27008
	.loc 2 1724 0
	jeq	%d2, 1, .L1371
	.loc 2 1728 0
	ld.w	%d2, [%a15]0
	sh	%d2, %d2, -30
	jeq	%d2, 2, .L1371
	.loc 2 1735 0
	mov	%d15, 0
.L1371:
.LVL886:
.LBE1225:
.LBE1224:
	.loc 1 403 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24576
	ld.w	%d4, [%a15] 24
	ld.w	%d2, [%a15] 28
	extr.u	%d4, %d4, 9, 7
	and	%d3, %d2, 7
	ld.w	%d2, [%a15] 24
	add	%d4, 1
	extr.u	%d2, %d2, 24, 3
	itof	%d4, %d4
	add	%d2, 1
	madd	%d2, %d2, %d3, %d2
	mul.f	%d15, %d4, %d15
.LVL887:
	itof	%d2, %d2
	div.f	%d15, %d15, %d2
.LVL888:
.L1369:
.LBE1223:
.LBE1222:
.LBE1221:
.LBE1220:
	.loc 2 1750 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d2, [%a15]0
	and	%d2, %d2, 15
.LVL889:
	itof	%d2, %d2
.LBE1219:
.LBE1218:
	.loc 1 1368 0
	div.f	%d2, %d15, %d2
	ret
.LVL890:
.L1363:
	.loc 1 1344 0
	eq	%d2, %d15, 14
	mov	%d9, 12
	jnz	%d2, .L1365
	j	.L1372
.LVL891:
.L1397:
.LBB1229:
.LBB1228:
.LBB1227:
.LBB1226:
	.loc 1 473 0
	mov	%d15, 0
	j	.L1369
.LVL892:
.L1396:
.LBE1226:
.LBE1227:
.LBE1228:
.LBE1229:
.LBB1230:
.LBB1215:
	mov	%d15, 0
	j	.L1357
.LBE1215:
.LBE1230:
.LFE272:
	.size	IfxScuCcu_setStmFrequency, .-IfxScuCcu_setStmFrequency
.section .text.IfxScuCcu_switchToBackupClock,"ax",@progbits
	.align 1
	.global	IfxScuCcu_switchToBackupClock
	.type	IfxScuCcu_switchToBackupClock, @function
IfxScuCcu_switchToBackupClock:
.LFB273:
	.loc 1 1372 0
.LVL893:
	.loc 1 1377 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d15, [%a15]0
	.loc 1 1375 0
	ld.bu	%d9, [%a4] 20
.LVL894:
	.loc 1 1377 0
	extr.u	%d15, %d15, 28, 2
	.loc 1 1375 0
	ld.a	%a12, [%a4] 24
.LVL895:
	.loc 1 1377 0
	jnz	%d15, .L1422
	ret
.L1422:
	.loc 1 1382 0
	call	IfxScuWdt_getSafetyWatchdogPassword
.LVL896:
	add	%d15, %d9, -1
	.loc 1 1391 0
	movh.a	%a15, 61443
	.loc 1 1398 0
	movh.a	%a13, 61443
	.loc 1 1382 0
	mov	%d8, %d2
.LVL897:
	addsc.a	%a12, %a12, %d15, 3
.LVL898:
	.loc 1 1391 0
	lea	%a15, [%a15] 24596
	.loc 1 1398 0
	lea	%a13, [%a13] 24604
	.loc 1 1385 0
	jz	%d9, .L1405
.LVL899:
.L1414:
	.loc 1 1388 0
	mov	%d4, %d8
	call	IfxScuWdt_clearSafetyEndinit
.LVL900:
.L1403:
	.loc 1 1391 0 discriminator 1
	ld.w	%d15, [%a15]0
	jz.t	%d15, 5, .L1403
	.loc 1 1398 0 discriminator 2
	ld.bu	%d2, [%a12+]-8
	ld.w	%d15, [%a13]0
	.loc 1 1399 0 discriminator 2
	mov	%d4, %d8
	.loc 1 1398 0 discriminator 2
	insert	%d15, %d15, %d2, 0, 3
	.loc 1 1385 0 discriminator 2
	add	%d9, -1
.LVL901:
	.loc 1 1398 0 discriminator 2
	st.w	[%a13]0, %d15
	.loc 1 1399 0 discriminator 2
	call	IfxScuWdt_setSafetyEndinit
.LVL902:
	.loc 1 1385 0 discriminator 2
	jnz	%d9, .L1414
.L1405:
.LVL903:
.LBB1231:
.LBB1232:
	.loc 3 585 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 25256
	ld.w	%d15, [%a15]0
	jnz.t	%d15, 1, .L1401
	sh	%d8, 2
.LVL904:
.L1406:
	.loc 3 598 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 25256
	ld.hu	%d15, [%a15] 2
	sh	%d15, %d15, 16
	or	%d15, %d15, 2
	.loc 3 597 0
	or	%d8, %d15
	.loc 3 595 0
	st.w	[%a15]0, %d8
.L1407:
	.loc 3 601 0
	ld.w	%d15, [%a15]0
	jnz.t	%d15, 0, .L1407
.LBE1232:
.LBE1231:
	.loc 1 1409 0 discriminator 1
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
.L1413:
	ld.w	%d15, [%a15]0
	movh.a	%a2, 61443
	lea	%a2, [%a2] 24624
	jltz	%d15, .L1413
.LBB1234:
	.loc 1 1414 0
	ld.w	%d15, [%a2]0
	.loc 1 1415 0
	insert	%d15, %d15, 0, 28, 2
.LVL905:
	.loc 1 1416 0
	insert	%d15, %d15, 1, 30, 1
.LVL906:
	.loc 1 1417 0
	st.w	[%a2]0, %d15
	ret
.LVL907:
.L1401:
.LBE1234:
.LBB1235:
.LBB1233:
	.loc 3 591 0
	ld.hu	%d15, [%a15] 2
	.loc 3 590 0
	sh	%d8, 2
.LVL908:
	.loc 3 591 0
	sh	%d15, %d15, 16
	or	%d15, %d15, 1
	.loc 3 590 0
	or	%d15, %d8
	.loc 3 588 0
	st.w	[%a15]0, %d15
	j	.L1406
.LBE1233:
.LBE1235:
.LFE273:
	.size	IfxScuCcu_switchToBackupClock, .-IfxScuCcu_switchToBackupClock
.section .text.IfxScuCcu_throttleSysPllClock,"ax",@progbits
	.align 1
	.global	IfxScuCcu_throttleSysPllClock
	.type	IfxScuCcu_throttleSysPllClock, @function
IfxScuCcu_throttleSysPllClock:
.LFB274:
	.loc 1 1423 0
.LVL909:
.LBB1254:
.LBB1255:
.LBB1256:
.LBB1257:
	.loc 3 651 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 25256
	ld.w	%d4, [%a15]0
.LBE1257:
.LBE1256:
	.loc 2 1799 0
	ld.bu	%d15, [%a4]0
.LBB1260:
.LBB1258:
	.loc 3 651 0
	extr.u	%d4, %d4, 2, 14
.LVL910:
.LBE1258:
.LBE1260:
	.loc 2 1807 0
	movh.a	%a3, 61443
.LBB1261:
.LBB1259:
	.loc 3 652 0
	xor	%d4, %d4, 63
.LVL911:
.LBE1259:
.LBE1261:
	.loc 2 1813 0
	movh.a	%a6, 61443
.LBB1262:
.LBB1263:
.LBB1264:
.LBB1265:
.LBB1266:
.LBB1267:
	.loc 1 442 0
	movh.a	%a5, 61443
.LBB1268:
.LBB1269:
.LBB1270:
.LBB1271:
	.loc 2 1720 0
	movh.a	%a12, 61443
.LBE1271:
.LBE1270:
	.loc 1 403 0
	movh.a	%a7, 61443
	sh	%d4, 2
.LVL912:
.LBE1269:
.LBE1268:
.LBE1267:
.LBE1266:
.LBE1265:
.LBE1264:
.LBE1263:
.LBE1262:
	.loc 2 1799 0
	mov	%d5, 0
.LBB1305:
.LBB1306:
	.loc 3 585 0
	mov.aa	%a2, %a15
.LBE1306:
.LBE1305:
	.loc 2 1807 0
	lea	%a3, [%a3] 24596
	.loc 2 1813 0
	lea	%a6, [%a6] 24604
.LBB1308:
.LBB1300:
.LBB1295:
.LBB1290:
.LBB1285:
.LBB1280:
	.loc 1 442 0
	lea	%a5, [%a5] 24624
.LBB1278:
.LBB1276:
.LBB1274:
.LBB1272:
	.loc 2 1720 0
	lea	%a12, [%a12] 24600
.LBE1272:
.LBE1274:
	.loc 1 403 0
	lea	%a7, [%a7] 24576
.LBE1276:
.LBE1278:
.LBE1280:
.LBE1285:
.LBE1290:
.LBE1295:
.LBE1300:
.LBE1308:
	.loc 2 1799 0
	jz	%d15, .L1423
.LVL913:
.L1451:
.LBB1309:
.LBB1307:
	.loc 3 585 0
	ld.w	%d15, [%a2]0
	and	%d0, %d5, 255
.LVL914:
	jz.t	%d15, 1, .L1425
	.loc 3 591 0
	ld.hu	%d15, [%a2] 2
	sh	%d15, %d15, 16
	or	%d15, %d15, 1
	.loc 3 590 0
	or	%d15, %d4
	.loc 3 588 0
	st.w	[%a2]0, %d15
.L1425:
	.loc 3 598 0
	ld.hu	%d15, [%a2] 2
	sh	%d15, %d15, 16
	or	%d15, %d15, 2
	.loc 3 597 0
	or	%d15, %d4
	.loc 3 595 0
	st.w	[%a2]0, %d15
.L1426:
	.loc 3 601 0
	ld.w	%d15, [%a2]0
	jnz.t	%d15, 0, .L1426
.LBE1307:
.LBE1309:
	.loc 2 1807 0
	mov.a	%a15, 0
	lea	%a15, [%a15] 24575
.L1427:
	ld.w	%d15, [%a3]0
	jnz.t	%d15, 5, .L1428
	loop	%a15, .L1427
.L1428:
	.loc 2 1813 0
	ld.a	%a13, [%a4] 4
	and	%d2, %d5, 255
	sh	%d2, 3
	addsc.a	%a15, %a13, %d2, 0
	ld.w	%d15, [%a6]0
	ld.bu	%d3, [%a15]0
	insert	%d15, %d15, %d3, 0, 3
	st.w	[%a6]0, %d15
.LVL915:
.LBB1310:
.LBB1311:
	.loc 3 693 0
	ld.w	%d15, [%a2]0
	jz.t	%d15, 1, .L1430
	.loc 3 699 0
	ld.hu	%d15, [%a2] 2
	sh	%d15, %d15, 16
	or	%d15, %d15, 1
	.loc 3 698 0
	or	%d15, %d4
	.loc 3 696 0
	st.w	[%a2]0, %d15
.L1430:
	.loc 3 706 0
	ld.hu	%d15, [%a2] 2
	sh	%d15, %d15, 16
	or	%d15, %d15, 3
	.loc 3 705 0
	or	%d15, %d4
	.loc 3 703 0
	st.w	[%a2]0, %d15
.L1431:
	.loc 3 709 0
	ld.w	%d15, [%a2]0
	jz.t	%d15, 0, .L1431
.LBE1311:
.LBE1310:
	.loc 2 1818 0
	ld.a	%a13, [%a4] 4
.LBB1312:
.LBB1301:
.LBB1296:
.LBB1291:
.LBB1286:
.LBB1281:
	.loc 1 442 0
	ld.w	%d3, [%a5]0
	.loc 1 445 0
	movh	%d15, 19647
.LBE1281:
.LBE1286:
.LBE1291:
.LBE1296:
.LBE1301:
.LBE1312:
	.loc 2 1818 0
	addsc.a	%a15, %a13, %d2, 0
.LBB1313:
.LBB1302:
.LBB1297:
.LBB1292:
.LBB1287:
.LBB1282:
	.loc 1 442 0
	extr.u	%d3, %d3, 28, 2
.LBE1282:
.LBE1287:
.LBE1292:
.LBE1297:
.LBE1302:
.LBE1313:
	.loc 2 1818 0
	ld.w	%d2, [%a15] 4
.LVL916:
.LBB1314:
.LBB1303:
.LBB1298:
.LBB1293:
.LBB1288:
.LBB1283:
	.loc 1 445 0
	addi	%d15, %d15, -17376
	.loc 1 442 0
	jz	%d3, .L1433
	jeq	%d3, 1, .L1434
	.loc 1 473 0
	mov	%d15, 0
.L1433:
.LVL917:
.LBE1283:
.LBE1288:
	.loc 2 1750 0
	ld.w	%d3, [%a5]0
	and	%d3, %d3, 15
	itof	%d3, %d3
	div.f	%d15, %d15, %d3
.LVL918:
.LBE1293:
.LBE1298:
	.loc 2 1828 0
	ld.w	%d3, 0xf0001010
	.loc 2 1827 0
	mul.f	%d2, %d2, %d15
.LVL919:
	ftouz	%d2, %d2
.LVL920:
.L1436:
	.loc 2 1830 0
	ld.w	%d15, 0xf0001010
	sub	%d15, %d3
	jlt.u	%d15, %d2, .L1436
.LVL921:
	addi	%d2, %d0, 1
.LVL922:
.LBE1303:
.LBE1314:
	.loc 2 1799 0
	ld.bu	%d15, [%a4]0
	and	%d2, %d2, 255
	add	%d5, 1
	jlt.u	%d2, %d15, .L1451
.LVL923:
.L1423:
	ret
.LVL924:
.L1434:
.LBB1315:
.LBB1304:
.LBB1299:
.LBB1294:
.LBB1289:
.LBB1284:
.LBB1279:
.LBB1277:
.LBB1275:
.LBB1273:
	.loc 2 1720 0
	ld.w	%d3, [%a12]0
	sh	%d3, %d3, -30
	jz	%d3, .L1435
	.loc 2 1724 0
	ld.w	%d3, [%a12]0
	.loc 2 1726 0
	movh	%d15, 19353
	.loc 2 1724 0
	sh	%d3, %d3, -30
	.loc 2 1726 0
	addi	%d15, %d15, -27008
	.loc 2 1724 0
	jeq	%d3, 1, .L1435
	.loc 2 1728 0
	ld.w	%d3, [%a12]0
	sh	%d3, %d3, -30
	jeq	%d3, 2, .L1435
	.loc 2 1735 0
	mov	%d15, 0
.L1435:
.LVL925:
.LBE1273:
.LBE1275:
	.loc 1 403 0
	ld.w	%d7, [%a7] 24
	ld.w	%d3, [%a7] 28
	extr.u	%d7, %d7, 9, 7
	and	%d6, %d3, 7
	ld.w	%d3, [%a7] 24
	add	%d7, 1
	extr.u	%d3, %d3, 24, 3
	itof	%d7, %d7
	add	%d3, 1
	madd	%d3, %d3, %d6, %d3
	mul.f	%d15, %d7, %d15
.LVL926:
	itof	%d3, %d3
	div.f	%d15, %d15, %d3
.LVL927:
	j	.L1433
.LBE1277:
.LBE1279:
.LBE1284:
.LBE1289:
.LBE1294:
.LBE1299:
.LBE1304:
.LBE1315:
.LBE1255:
.LBE1254:
.LFE274:
	.size	IfxScuCcu_throttleSysPllClock, .-IfxScuCcu_throttleSysPllClock
.section .text.IfxScuCcu_enableExtClockOut0,"ax",@progbits
	.align 1
	.global	IfxScuCcu_enableExtClockOut0
	.type	IfxScuCcu_enableExtClockOut0, @function
IfxScuCcu_enableExtClockOut0:
.LFB275:
	.loc 1 1429 0
.LVL928:
	.loc 1 1429 0
	mov	%d9, %d4
	mov	%e10, %d6, %d5
	.loc 1 1432 0
	call	IfxScuWdt_getSafetyWatchdogPassword
.LVL929:
	.loc 1 1435 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24636
	.loc 1 1433 0
	mov	%d4, %d2
	.loc 1 1432 0
	mov	%d8, %d2
.LVL930:
	.loc 1 1433 0
	call	IfxScuWdt_clearSafetyEndinit
.LVL931:
	.loc 1 1435 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, %d9, 2, 4
	st.w	[%a15]0, %d15
	.loc 1 1437 0
	jnz	%d9, .L1464
	.loc 1 1442 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24632
	ld.w	%d15, [%a15]0
	.loc 1 1439 0
	jeq	%d11, 1, .L1467
	.loc 1 1456 0
	insert	%d15, %d15, 2, 14, 2
	.loc 1 1457 0
	sh	%d10, %d10, 11
.LVL932:
	.loc 1 1456 0
	st.w	[%a15]0, %d15
	.loc 1 1457 0
	call	IfxScuCcu_getSpbFrequency
.LVL933:
	utof	%d10, %d10
	ld.w	%d15, [%a15]0
	div.f	%d2, %d10, %d2
	ftouz	%d2, %d2
	insert	%d15, %d15, %d2, 0, 10
	st.w	[%a15]0, %d15
.L1464:
	.loc 1 1461 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24636
	ld.w	%d15, [%a15]0
	.loc 1 1462 0
	mov	%d4, %d8
	.loc 1 1461 0
	insert	%d15, %d15, 1, 0, 1
	st.w	[%a15]0, %d15
	.loc 1 1462 0
	j	IfxScuWdt_setSafetyEndinit
.LVL934:
.L1467:
	.loc 1 1442 0
	insert	%d15, %d15, 1, 14, 2
	st.w	[%a15]0, %d15
	.loc 1 1444 0
	call	IfxScuCcu_getSpbFrequency
.LVL935:
	movh	%d3, 16128
	utof	%d15, %d10
	mul.f	%d2, %d2, %d3
	cmp.f	%d2, %d15, %d2
	and	%d2, %d2, 13
	jnz	%d2, .L1466
	.loc 1 1446 0
	ld.w	%d15, [%a15]0
	mov	%d2, 1023
	insert	%d15, %d15, %d2, 0, 10
	st.w	[%a15]0, %d15
	j	.L1464
.L1466:
	.loc 1 1450 0
	call	IfxScuCcu_getSpbFrequency
.LVL936:
	sh	%d10, 1
.LVL937:
	utof	%d10, %d10
	movh	%d15, 17536
	div.f	%d2, %d2, %d10
	sub.f	%d2, %d15, %d2
	ld.w	%d15, [%a15]0
	ftouz	%d2, %d2
	insert	%d15, %d15, %d2, 0, 10
	st.w	[%a15]0, %d15
	j	.L1464
.LFE275:
	.size	IfxScuCcu_enableExtClockOut0, .-IfxScuCcu_enableExtClockOut0
.section .text.IfxScuCcu_enableExtClockOut1,"ax",@progbits
	.align 1
	.global	IfxScuCcu_enableExtClockOut1
	.type	IfxScuCcu_enableExtClockOut1, @function
IfxScuCcu_enableExtClockOut1:
.LFB276:
	.loc 1 1467 0
.LVL938:
	.loc 1 1467 0
	mov	%d9, %d4
	mov	%e10, %d5, %d6
	.loc 1 1470 0
	call	IfxScuWdt_getSafetyWatchdogPassword
.LVL939:
	.loc 1 1473 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24636
	.loc 1 1471 0
	mov	%d4, %d2
	.loc 1 1470 0
	mov	%d8, %d2
.LVL940:
	.loc 1 1471 0
	call	IfxScuWdt_clearSafetyEndinit
.LVL941:
	.loc 1 1473 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, %d9, 18, 4
	st.w	[%a15]0, %d15
	.loc 1 1475 0
	jnz	%d9, .L1469
	.loc 1 1477 0
	call	IfxScuCcu_getSpbFrequency
.LVL942:
	utof	%d11, %d11
.LVL943:
	div.f	%d2, %d2, %d11
	movh	%d11, 16256
	sub.f	%d2, %d2, %d11
	ftouz	%d2, %d2
	and	%d2, %d2, 255
	st.b	[%a15] 3, %d2
	.loc 1 1478 0
	ld.w	%d15, [%a15]0
	ins.t	%d15, %d15,17, %d10,0
	st.w	[%a15]0, %d15
.L1469:
	.loc 1 1481 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24636
	ld.w	%d15, [%a15]0
	.loc 1 1482 0
	mov	%d4, %d8
	.loc 1 1481 0
	insert	%d15, %d15, 1, 16, 1
	st.w	[%a15]0, %d15
	.loc 1 1482 0
	j	IfxScuWdt_setSafetyEndinit
.LVL944:
.LFE276:
	.size	IfxScuCcu_enableExtClockOut1, .-IfxScuCcu_enableExtClockOut1
	.global	IfxScuCcu_xtalFrequency
.section .data.a4.IfxScuCcu_xtalFrequency,"aw",@progbits
	.align 2
	.type	IfxScuCcu_xtalFrequency, @object
	.size	IfxScuCcu_xtalFrequency, 4
IfxScuCcu_xtalFrequency:
	.word	20000000
	.global	IfxScuCcu_defaultModConfig
.section .rodata.a2.IfxScuCcu_defaultModConfig,"a",@progbits
	.align 1
	.type	IfxScuCcu_defaultModConfig, @object
	.size	IfxScuCcu_defaultModConfig, 2
IfxScuCcu_defaultModConfig:
	.zero	2
	.global	IfxScuCcu_defaultClockConfig
.section .rodata.a4.IfxScuCcu_defaultClockConfig,"a",@progbits
	.align 2
	.type	IfxScuCcu_defaultClockConfig, @object
	.size	IfxScuCcu_defaultClockConfig, 100
IfxScuCcu_defaultClockConfig:
	.word	20000000
	.byte	1
	.zero	1
	.byte	0
	.byte	29
	.byte	5
	.zero	1
	.byte	0
	.byte	31
	.byte	1
	.byte	1
	.byte	0
	.zero	1
	.word	961656599
	.byte	3
	.zero	3
	.word	IfxScuCcu_defaultPllConfigSteps
	.word	119734547
	.word	268374015
	.word	554762770
	.word	1061097407
	.word	4609
	.word	16143
	.word	50
	.word	255
	.word	0
	.word	63
	.word	0
	.word	63
	.word	0
	.word	63
	.word	0
	.word	63
	.word	IfxScuCcu_defaultFlashWaitstateConfig
	.word	IfxScuCcu_defaultModConfig
	.global	IfxScuCcu_MA_percent
.section .rodata.a4.IfxScuCcu_MA_percent,"a",@progbits
	.align 2
	.type	IfxScuCcu_MA_percent, @object
	.size	IfxScuCcu_MA_percent, 24
IfxScuCcu_MA_percent:
	.word	1056964608
	.word	1065353216
	.word	1067450368
	.word	1069547520
	.word	1073741824
	.word	1075838976
.section .rodata.a4.IfxScuCcu_defaultPllConfigSteps,"a",@progbits
	.align 2
	.type	IfxScuCcu_defaultPllConfigSteps, @object
	.size	IfxScuCcu_defaultPllConfigSteps, 24
IfxScuCcu_defaultPllConfigSteps:
	.byte	3
	.zero	3
	.word	953267991
	.byte	2
	.zero	3
	.word	953267991
	.byte	1
	.zero	3
	.word	953267991
.section .rodata.a4.IfxScuCcu_defaultFlashWaitstateConfig,"a",@progbits
	.align 2
	.type	IfxScuCcu_defaultFlashWaitstateConfig, @object
	.size	IfxScuCcu_defaultFlashWaitstateConfig, 8
IfxScuCcu_defaultFlashWaitstateConfig:
	.word	261
	.word	1855
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
	.uaword	.LFB237
	.uaword	.LFE237-.LFB237
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB238
	.uaword	.LFE238-.LFB238
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB239
	.uaword	.LFE239-.LFB239
	.byte	0x4
	.uaword	.LCFI0-.LFB239
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB240
	.uaword	.LFE240-.LFB240
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB241
	.uaword	.LFE241-.LFB241
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB242
	.uaword	.LFE242-.LFB242
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB243
	.uaword	.LFE243-.LFB243
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB244
	.uaword	.LFE244-.LFB244
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB245
	.uaword	.LFE245-.LFB245
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB246
	.uaword	.LFE246-.LFB246
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB247
	.uaword	.LFE247-.LFB247
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB248
	.uaword	.LFE248-.LFB248
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB249
	.uaword	.LFE249-.LFB249
	.align 2
.LEFDE24:
.LSFDE26:
	.uaword	.LEFDE26-.LASFDE26
.LASFDE26:
	.uaword	.Lframe0
	.uaword	.LFB250
	.uaword	.LFE250-.LFB250
	.align 2
.LEFDE26:
.LSFDE28:
	.uaword	.LEFDE28-.LASFDE28
.LASFDE28:
	.uaword	.Lframe0
	.uaword	.LFB251
	.uaword	.LFE251-.LFB251
	.align 2
.LEFDE28:
.LSFDE30:
	.uaword	.LEFDE30-.LASFDE30
.LASFDE30:
	.uaword	.Lframe0
	.uaword	.LFB252
	.uaword	.LFE252-.LFB252
	.align 2
.LEFDE30:
.LSFDE32:
	.uaword	.LEFDE32-.LASFDE32
.LASFDE32:
	.uaword	.Lframe0
	.uaword	.LFB253
	.uaword	.LFE253-.LFB253
	.align 2
.LEFDE32:
.LSFDE34:
	.uaword	.LEFDE34-.LASFDE34
.LASFDE34:
	.uaword	.Lframe0
	.uaword	.LFB255
	.uaword	.LFE255-.LFB255
	.align 2
.LEFDE34:
.LSFDE36:
	.uaword	.LEFDE36-.LASFDE36
.LASFDE36:
	.uaword	.Lframe0
	.uaword	.LFB256
	.uaword	.LFE256-.LFB256
	.align 2
.LEFDE36:
.LSFDE38:
	.uaword	.LEFDE38-.LASFDE38
.LASFDE38:
	.uaword	.Lframe0
	.uaword	.LFB254
	.uaword	.LFE254-.LFB254
	.align 2
.LEFDE38:
.LSFDE40:
	.uaword	.LEFDE40-.LASFDE40
.LASFDE40:
	.uaword	.Lframe0
	.uaword	.LFB257
	.uaword	.LFE257-.LFB257
	.byte	0x4
	.uaword	.LCFI1-.LFB257
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE40:
.LSFDE42:
	.uaword	.LEFDE42-.LASFDE42
.LASFDE42:
	.uaword	.Lframe0
	.uaword	.LFB258
	.uaword	.LFE258-.LFB258
	.align 2
.LEFDE42:
.LSFDE44:
	.uaword	.LEFDE44-.LASFDE44
.LASFDE44:
	.uaword	.Lframe0
	.uaword	.LFB259
	.uaword	.LFE259-.LFB259
	.align 2
.LEFDE44:
.LSFDE46:
	.uaword	.LEFDE46-.LASFDE46
.LASFDE46:
	.uaword	.Lframe0
	.uaword	.LFB260
	.uaword	.LFE260-.LFB260
	.align 2
.LEFDE46:
.LSFDE48:
	.uaword	.LEFDE48-.LASFDE48
.LASFDE48:
	.uaword	.Lframe0
	.uaword	.LFB261
	.uaword	.LFE261-.LFB261
	.align 2
.LEFDE48:
.LSFDE50:
	.uaword	.LEFDE50-.LASFDE50
.LASFDE50:
	.uaword	.Lframe0
	.uaword	.LFB262
	.uaword	.LFE262-.LFB262
	.align 2
.LEFDE50:
.LSFDE52:
	.uaword	.LEFDE52-.LASFDE52
.LASFDE52:
	.uaword	.Lframe0
	.uaword	.LFB263
	.uaword	.LFE263-.LFB263
	.align 2
.LEFDE52:
.LSFDE54:
	.uaword	.LEFDE54-.LASFDE54
.LASFDE54:
	.uaword	.Lframe0
	.uaword	.LFB264
	.uaword	.LFE264-.LFB264
	.align 2
.LEFDE54:
.LSFDE56:
	.uaword	.LEFDE56-.LASFDE56
.LASFDE56:
	.uaword	.Lframe0
	.uaword	.LFB265
	.uaword	.LFE265-.LFB265
	.align 2
.LEFDE56:
.LSFDE58:
	.uaword	.LEFDE58-.LASFDE58
.LASFDE58:
	.uaword	.Lframe0
	.uaword	.LFB266
	.uaword	.LFE266-.LFB266
	.align 2
.LEFDE58:
.LSFDE60:
	.uaword	.LEFDE60-.LASFDE60
.LASFDE60:
	.uaword	.Lframe0
	.uaword	.LFB267
	.uaword	.LFE267-.LFB267
	.align 2
.LEFDE60:
.LSFDE62:
	.uaword	.LEFDE62-.LASFDE62
.LASFDE62:
	.uaword	.Lframe0
	.uaword	.LFB268
	.uaword	.LFE268-.LFB268
	.align 2
.LEFDE62:
.LSFDE64:
	.uaword	.LEFDE64-.LASFDE64
.LASFDE64:
	.uaword	.Lframe0
	.uaword	.LFB269
	.uaword	.LFE269-.LFB269
	.align 2
.LEFDE64:
.LSFDE66:
	.uaword	.LEFDE66-.LASFDE66
.LASFDE66:
	.uaword	.Lframe0
	.uaword	.LFB270
	.uaword	.LFE270-.LFB270
	.align 2
.LEFDE66:
.LSFDE68:
	.uaword	.LEFDE68-.LASFDE68
.LASFDE68:
	.uaword	.Lframe0
	.uaword	.LFB271
	.uaword	.LFE271-.LFB271
	.align 2
.LEFDE68:
.LSFDE70:
	.uaword	.LEFDE70-.LASFDE70
.LASFDE70:
	.uaword	.Lframe0
	.uaword	.LFB272
	.uaword	.LFE272-.LFB272
	.align 2
.LEFDE70:
.LSFDE72:
	.uaword	.LEFDE72-.LASFDE72
.LASFDE72:
	.uaword	.Lframe0
	.uaword	.LFB273
	.uaword	.LFE273-.LFB273
	.align 2
.LEFDE72:
.LSFDE74:
	.uaword	.LEFDE74-.LASFDE74
.LASFDE74:
	.uaword	.Lframe0
	.uaword	.LFB274
	.uaword	.LFE274-.LFB274
	.align 2
.LEFDE74:
.LSFDE76:
	.uaword	.LEFDE76-.LASFDE76
.LASFDE76:
	.uaword	.Lframe0
	.uaword	.LFB275
	.uaword	.LFE275-.LFB275
	.align 2
.LEFDE76:
.LSFDE78:
	.uaword	.LEFDE78-.LASFDE78
.LASFDE78:
	.uaword	.Lframe0
	.uaword	.LFB276
	.uaword	.LFE276-.LFB276
	.align 2
.LEFDE78:
.section .text,"ax",@progbits
.Letext0:
	.file 5 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 6 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\Cpu\\Std\\Ifx_Types.h"
	.file 7 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\Ifx_TypesReg.h"
	.file 8 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxScu_regdef.h"
	.file 9 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\_Impl\\IfxScu_cfg.h"
	.file 10 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\_Impl\\IfxCpu_cfg.h"
	.file 11 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxStm_regdef.h"
	.file 12 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSmu_regdef.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xce70
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"Integration\\Infineon\\iLLD\\TC38A\\Tricore\\Scu\\Std\\IfxScuCcu.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0xc20
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x1
	.byte	0x9
	.uahalf	0x524
	.uaword	0x21f
	.uleb128 0x4
	.string	"IfxScu_CCUCON0_CLKSEL_fBack"
	.sleb128 0
	.uleb128 0x4
	.string	"IfxScu_CCUCON0_CLKSEL_fPll"
	.sleb128 1
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x5
	.string	"uint8"
	.byte	0x5
	.byte	0x51
	.uaword	0x29f
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x5
	.string	"uint16"
	.byte	0x5
	.byte	0x5b
	.uaword	0x2cb
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x5
	.string	"sint32"
	.byte	0x5
	.byte	0x60
	.uaword	0x1d3
	.uleb128 0x5
	.string	"uint32"
	.byte	0x5
	.byte	0x6a
	.uaword	0x26b
	.uleb128 0x5
	.string	"float32"
	.byte	0x5
	.byte	0x75
	.uaword	0x1ca
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"double"
	.uleb128 0x5
	.string	"boolean"
	.byte	0x5
	.byte	0x80
	.uaword	0x29f
	.uleb128 0x6
	.byte	0x4
	.uaword	0x32b
	.uleb128 0x7
	.uleb128 0x8
	.byte	0x8
	.byte	0x6
	.byte	0x8c
	.uaword	0x356
	.uleb128 0x9
	.string	"module"
	.byte	0x6
	.byte	0x8e
	.uaword	0x325
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"index"
	.byte	0x6
	.byte	0x8f
	.uaword	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x5
	.string	"IfxModule_IndexMap"
	.byte	0x6
	.byte	0x90
	.uaword	0x32c
	.uleb128 0x5
	.string	"Ifx_UReg_8Bit"
	.byte	0x7
	.byte	0x60
	.uaword	0x29f
	.uleb128 0x5
	.string	"Ifx_UReg_32Bit"
	.byte	0x7
	.byte	0x62
	.uaword	0x26b
	.uleb128 0x5
	.string	"Ifx_SReg_32Bit"
	.byte	0x7
	.byte	0x65
	.uaword	0x1d3
	.uleb128 0xa
	.string	"_Ifx_SCU_ACCEN00_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0x44
	.uaword	0x606
	.uleb128 0xb
	.string	"EN0"
	.byte	0x8
	.byte	0x46
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"EN1"
	.byte	0x8
	.byte	0x47
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"EN2"
	.byte	0x8
	.byte	0x48
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"EN3"
	.byte	0x8
	.byte	0x49
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"EN4"
	.byte	0x8
	.byte	0x4a
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"EN5"
	.byte	0x8
	.byte	0x4b
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"EN6"
	.byte	0x8
	.byte	0x4c
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"EN7"
	.byte	0x8
	.byte	0x4d
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"EN8"
	.byte	0x8
	.byte	0x4e
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"EN9"
	.byte	0x8
	.byte	0x4f
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"EN10"
	.byte	0x8
	.byte	0x50
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"EN11"
	.byte	0x8
	.byte	0x51
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"EN12"
	.byte	0x8
	.byte	0x52
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"EN13"
	.byte	0x8
	.byte	0x53
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"EN14"
	.byte	0x8
	.byte	0x54
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"EN15"
	.byte	0x8
	.byte	0x55
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"EN16"
	.byte	0x8
	.byte	0x56
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"EN17"
	.byte	0x8
	.byte	0x57
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"EN18"
	.byte	0x8
	.byte	0x58
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"EN19"
	.byte	0x8
	.byte	0x59
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"EN20"
	.byte	0x8
	.byte	0x5a
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"EN21"
	.byte	0x8
	.byte	0x5b
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"EN22"
	.byte	0x8
	.byte	0x5c
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"EN23"
	.byte	0x8
	.byte	0x5d
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"EN24"
	.byte	0x8
	.byte	0x5e
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"EN25"
	.byte	0x8
	.byte	0x5f
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"EN26"
	.byte	0x8
	.byte	0x60
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"EN27"
	.byte	0x8
	.byte	0x61
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"EN28"
	.byte	0x8
	.byte	0x62
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"EN29"
	.byte	0x8
	.byte	0x63
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"EN30"
	.byte	0x8
	.byte	0x64
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"EN31"
	.byte	0x8
	.byte	0x65
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_ACCEN00_Bits"
	.byte	0x8
	.byte	0x66
	.uaword	0x3b1
	.uleb128 0xa
	.string	"_Ifx_SCU_ACCEN01_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0x69
	.uaword	0x652
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x8
	.byte	0x6b
	.uaword	0x385
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_ACCEN01_Bits"
	.byte	0x8
	.byte	0x6c
	.uaword	0x622
	.uleb128 0xa
	.string	"_Ifx_SCU_ACCEN10_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0x6f
	.uaword	0x8c3
	.uleb128 0xb
	.string	"EN0"
	.byte	0x8
	.byte	0x71
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"EN1"
	.byte	0x8
	.byte	0x72
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"EN2"
	.byte	0x8
	.byte	0x73
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"EN3"
	.byte	0x8
	.byte	0x74
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"EN4"
	.byte	0x8
	.byte	0x75
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"EN5"
	.byte	0x8
	.byte	0x76
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"EN6"
	.byte	0x8
	.byte	0x77
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"EN7"
	.byte	0x8
	.byte	0x78
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"EN8"
	.byte	0x8
	.byte	0x79
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"EN9"
	.byte	0x8
	.byte	0x7a
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"EN10"
	.byte	0x8
	.byte	0x7b
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"EN11"
	.byte	0x8
	.byte	0x7c
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"EN12"
	.byte	0x8
	.byte	0x7d
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"EN13"
	.byte	0x8
	.byte	0x7e
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"EN14"
	.byte	0x8
	.byte	0x7f
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"EN15"
	.byte	0x8
	.byte	0x80
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"EN16"
	.byte	0x8
	.byte	0x81
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"EN17"
	.byte	0x8
	.byte	0x82
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"EN18"
	.byte	0x8
	.byte	0x83
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"EN19"
	.byte	0x8
	.byte	0x84
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"EN20"
	.byte	0x8
	.byte	0x85
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"EN21"
	.byte	0x8
	.byte	0x86
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"EN22"
	.byte	0x8
	.byte	0x87
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"EN23"
	.byte	0x8
	.byte	0x88
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"EN24"
	.byte	0x8
	.byte	0x89
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"EN25"
	.byte	0x8
	.byte	0x8a
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"EN26"
	.byte	0x8
	.byte	0x8b
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"EN27"
	.byte	0x8
	.byte	0x8c
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"EN28"
	.byte	0x8
	.byte	0x8d
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"EN29"
	.byte	0x8
	.byte	0x8e
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"EN30"
	.byte	0x8
	.byte	0x8f
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"EN31"
	.byte	0x8
	.byte	0x90
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_ACCEN10_Bits"
	.byte	0x8
	.byte	0x91
	.uaword	0x66e
	.uleb128 0xa
	.string	"_Ifx_SCU_ACCEN11_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0x94
	.uaword	0x90f
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x8
	.byte	0x96
	.uaword	0x385
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_ACCEN11_Bits"
	.byte	0x8
	.byte	0x97
	.uaword	0x8df
	.uleb128 0xa
	.string	"_Ifx_SCU_ARSTDIS_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0x9a
	.uaword	0x9e2
	.uleb128 0xb
	.string	"STM0DIS"
	.byte	0x8
	.byte	0x9c
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"STM1DIS"
	.byte	0x8
	.byte	0x9d
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"STM2DIS"
	.byte	0x8
	.byte	0x9e
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"STM3DIS"
	.byte	0x8
	.byte	0x9f
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.uaword	.LASF1
	.byte	0x8
	.byte	0xa0
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.uaword	.LASF2
	.byte	0x8
	.byte	0xa1
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.uaword	.LASF3
	.byte	0x8
	.byte	0xa2
	.uaword	0x385
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.uaword	.LASF4
	.byte	0x8
	.byte	0xa3
	.uaword	0x385
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_ARSTDIS_Bits"
	.byte	0x8
	.byte	0xa4
	.uaword	0x92b
	.uleb128 0xa
	.string	"_Ifx_SCU_CCUCON0_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0xa7
	.uaword	0xb03
	.uleb128 0xb
	.string	"STMDIV"
	.byte	0x8
	.byte	0xa9
	.uaword	0x385
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"GTMDIV"
	.byte	0x8
	.byte	0xaa
	.uaword	0x385
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"SRIDIV"
	.byte	0x8
	.byte	0xab
	.uaword	0x385
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"LPDIV"
	.byte	0x8
	.byte	0xac
	.uaword	0x385
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.uaword	.LASF5
	.byte	0x8
	.byte	0xad
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"SPBDIV"
	.byte	0x8
	.byte	0xae
	.uaword	0x385
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"BBBDIV"
	.byte	0x8
	.byte	0xaf
	.uaword	0x385
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"FSIDIV"
	.byte	0x8
	.byte	0xb0
	.uaword	0x385
	.byte	0x4
	.byte	0x2
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"FSI2DIV"
	.byte	0x8
	.byte	0xb1
	.uaword	0x385
	.byte	0x4
	.byte	0x2
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"CLKSEL"
	.byte	0x8
	.byte	0xb2
	.uaword	0x385
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"UP"
	.byte	0x8
	.byte	0xb3
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"LCK"
	.byte	0x8
	.byte	0xb4
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_CCUCON0_Bits"
	.byte	0x8
	.byte	0xb5
	.uaword	0x9fe
	.uleb128 0xa
	.string	"_Ifx_SCU_CCUCON1_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0xb8
	.uaword	0xc44
	.uleb128 0xb
	.string	"MCANDIV"
	.byte	0x8
	.byte	0xba
	.uaword	0x385
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"CLKSELMCAN"
	.byte	0x8
	.byte	0xbb
	.uaword	0x385
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.uaword	.LASF3
	.byte	0x8
	.byte	0xbc
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"PLL1DIVDIS"
	.byte	0x8
	.byte	0xbd
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"I2CDIV"
	.byte	0x8
	.byte	0xbe
	.uaword	0x385
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.uaword	.LASF6
	.byte	0x8
	.byte	0xbf
	.uaword	0x385
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"MSCDIV"
	.byte	0x8
	.byte	0xc0
	.uaword	0x385
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"CLKSELMSC"
	.byte	0x8
	.byte	0xc1
	.uaword	0x385
	.byte	0x4
	.byte	0x2
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.uaword	.LASF7
	.byte	0x8
	.byte	0xc2
	.uaword	0x385
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"QSPIDIV"
	.byte	0x8
	.byte	0xc3
	.uaword	0x385
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"CLKSELQSPI"
	.byte	0x8
	.byte	0xc4
	.uaword	0x385
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.uaword	.LASF8
	.byte	0x8
	.byte	0xc5
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"LCK"
	.byte	0x8
	.byte	0xc6
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_CCUCON1_Bits"
	.byte	0x8
	.byte	0xc7
	.uaword	0xb1f
	.uleb128 0xa
	.string	"_Ifx_SCU_CCUCON2_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0xca
	.uaword	0xd47
	.uleb128 0xb
	.string	"ASCLINFDIV"
	.byte	0x8
	.byte	0xcc
	.uaword	0x385
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.uaword	.LASF1
	.byte	0x8
	.byte	0xcd
	.uaword	0x385
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"ASCLINSDIV"
	.byte	0x8
	.byte	0xce
	.uaword	0x385
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"CLKSELASCLINS"
	.byte	0x8
	.byte	0xcf
	.uaword	0x385
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.uaword	.LASF9
	.byte	0x8
	.byte	0xd0
	.uaword	0x385
	.byte	0x4
	.byte	0xa
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.uaword	.LASF10
	.byte	0x8
	.byte	0xd1
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"ERAYPERON"
	.byte	0x8
	.byte	0xd2
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.uaword	.LASF11
	.byte	0x8
	.byte	0xd3
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.uaword	.LASF12
	.byte	0x8
	.byte	0xd4
	.uaword	0x385
	.byte	0x4
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"LCK"
	.byte	0x8
	.byte	0xd5
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_CCUCON2_Bits"
	.byte	0x8
	.byte	0xd6
	.uaword	0xc60
	.uleb128 0xa
	.string	"_Ifx_SCU_CCUCON3_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0xd9
	.uaword	0xebf
	.uleb128 0xb
	.string	"PLL0MONEN"
	.byte	0x8
	.byte	0xdb
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"PLL1MONEN"
	.byte	0x8
	.byte	0xdc
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"PLL2MONEN"
	.byte	0x8
	.byte	0xdd
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"SPBMONEN"
	.byte	0x8
	.byte	0xde
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"BACKMONEN"
	.byte	0x8
	.byte	0xdf
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.uaword	.LASF2
	.byte	0x8
	.byte	0xe0
	.uaword	0x385
	.byte	0x4
	.byte	0x3
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"PLL0MONTST"
	.byte	0x8
	.byte	0xe1
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"PLL1MONTST"
	.byte	0x8
	.byte	0xe2
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"PLL2MONTST"
	.byte	0x8
	.byte	0xe3
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"SPBMONTST"
	.byte	0x8
	.byte	0xe4
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"BACKMONTST"
	.byte	0x8
	.byte	0xe5
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.uaword	.LASF13
	.byte	0x8
	.byte	0xe6
	.uaword	0x385
	.byte	0x4
	.byte	0xb
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.uaword	.LASF10
	.byte	0x8
	.byte	0xe7
	.uaword	0x385
	.byte	0x4
	.byte	0x6
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"UP"
	.byte	0x8
	.byte	0xe8
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"LCK"
	.byte	0x8
	.byte	0xe9
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_CCUCON3_Bits"
	.byte	0x8
	.byte	0xea
	.uaword	0xd63
	.uleb128 0xa
	.string	"_Ifx_SCU_CCUCON4_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0xed
	.uaword	0xf79
	.uleb128 0xb
	.string	"LOTHR"
	.byte	0x8
	.byte	0xef
	.uaword	0x385
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"UPTHR"
	.byte	0x8
	.byte	0xf0
	.uaword	0x385
	.byte	0x4
	.byte	0xc
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"MONEN"
	.byte	0x8
	.byte	0xf1
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"MONTST"
	.byte	0x8
	.byte	0xf2
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.uaword	.LASF11
	.byte	0x8
	.byte	0xf3
	.uaword	0x385
	.byte	0x4
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"UP"
	.byte	0x8
	.byte	0xf4
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"LCK"
	.byte	0x8
	.byte	0xf5
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_CCUCON4_Bits"
	.byte	0x8
	.byte	0xf6
	.uaword	0xedb
	.uleb128 0xa
	.string	"_Ifx_SCU_CCUCON5_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0xf9
	.uaword	0x1023
	.uleb128 0xb
	.string	"GETHDIV"
	.byte	0x8
	.byte	0xfb
	.uaword	0x385
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"MCANHDIV"
	.byte	0x8
	.byte	0xfc
	.uaword	0x385
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.uaword	.LASF4
	.byte	0x8
	.byte	0xfd
	.uaword	0x385
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.uaword	.LASF6
	.byte	0x8
	.byte	0xfe
	.uaword	0x385
	.byte	0x4
	.byte	0x12
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"UP"
	.byte	0x8
	.byte	0xff
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"LCK"
	.byte	0x8
	.uahalf	0x100
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_CCUCON5_Bits"
	.byte	0x8
	.uahalf	0x101
	.uaword	0xf95
	.uleb128 0xf
	.string	"_Ifx_SCU_CCUCON6_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x104
	.uaword	0x1088
	.uleb128 0xd
	.string	"CPU0DIV"
	.byte	0x8
	.uahalf	0x106
	.uaword	0x385
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF3
	.byte	0x8
	.uahalf	0x107
	.uaword	0x385
	.byte	0x4
	.byte	0x1a
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_CCUCON6_Bits"
	.byte	0x8
	.uahalf	0x108
	.uaword	0x1040
	.uleb128 0xf
	.string	"_Ifx_SCU_CCUCON7_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x10b
	.uaword	0x10ed
	.uleb128 0xd
	.string	"CPU1DIV"
	.byte	0x8
	.uahalf	0x10d
	.uaword	0x385
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF3
	.byte	0x8
	.uahalf	0x10e
	.uaword	0x385
	.byte	0x4
	.byte	0x1a
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_CCUCON7_Bits"
	.byte	0x8
	.uahalf	0x10f
	.uaword	0x10a5
	.uleb128 0xf
	.string	"_Ifx_SCU_CCUCON8_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x112
	.uaword	0x1152
	.uleb128 0xd
	.string	"CPU2DIV"
	.byte	0x8
	.uahalf	0x114
	.uaword	0x385
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF3
	.byte	0x8
	.uahalf	0x115
	.uaword	0x385
	.byte	0x4
	.byte	0x1a
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_CCUCON8_Bits"
	.byte	0x8
	.uahalf	0x116
	.uaword	0x110a
	.uleb128 0xf
	.string	"_Ifx_SCU_CCUCON9_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x119
	.uaword	0x11b7
	.uleb128 0xd
	.string	"CPU3DIV"
	.byte	0x8
	.uahalf	0x11b
	.uaword	0x385
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF3
	.byte	0x8
	.uahalf	0x11c
	.uaword	0x385
	.byte	0x4
	.byte	0x1a
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_CCUCON9_Bits"
	.byte	0x8
	.uahalf	0x11d
	.uaword	0x116f
	.uleb128 0xf
	.string	"_Ifx_SCU_CHIPID_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x120
	.uaword	0x12a0
	.uleb128 0xd
	.string	"CHREV"
	.byte	0x8
	.uahalf	0x122
	.uaword	0x385
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CHTEC"
	.byte	0x8
	.uahalf	0x123
	.uaword	0x385
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CHPK"
	.byte	0x8
	.uahalf	0x124
	.uaword	0x385
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CHID"
	.byte	0x8
	.uahalf	0x125
	.uaword	0x385
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"EEA"
	.byte	0x8
	.uahalf	0x126
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"UCODE"
	.byte	0x8
	.uahalf	0x127
	.uaword	0x385
	.byte	0x4
	.byte	0x7
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"FSIZE"
	.byte	0x8
	.uahalf	0x128
	.uaword	0x385
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"VART"
	.byte	0x8
	.uahalf	0x129
	.uaword	0x385
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"SEC"
	.byte	0x8
	.uahalf	0x12a
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_CHIPID_Bits"
	.byte	0x8
	.uahalf	0x12b
	.uaword	0x11d4
	.uleb128 0xf
	.string	"_Ifx_SCU_DTSCLIM_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x12e
	.uaword	0x1397
	.uleb128 0xd
	.string	"LOWER"
	.byte	0x8
	.uahalf	0x130
	.uaword	0x385
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF6
	.byte	0x8
	.uahalf	0x131
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"BGPOK"
	.byte	0x8
	.uahalf	0x132
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"EN"
	.byte	0x8
	.uahalf	0x133
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"LLU"
	.byte	0x8
	.uahalf	0x134
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"UPPER"
	.byte	0x8
	.uahalf	0x135
	.uaword	0x385
	.byte	0x4
	.byte	0xc
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"INTEN"
	.byte	0x8
	.uahalf	0x136
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF14
	.byte	0x8
	.uahalf	0x137
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"INT"
	.byte	0x8
	.uahalf	0x138
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"UOF"
	.byte	0x8
	.uahalf	0x139
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_DTSCLIM_Bits"
	.byte	0x8
	.uahalf	0x13a
	.uaword	0x12bc
	.uleb128 0xf
	.string	"_Ifx_SCU_DTSCSTAT_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x13d
	.uaword	0x13fc
	.uleb128 0xd
	.string	"RESULT"
	.byte	0x8
	.uahalf	0x13f
	.uaword	0x385
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF6
	.byte	0x8
	.uahalf	0x140
	.uaword	0x385
	.byte	0x4
	.byte	0x14
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_DTSCSTAT_Bits"
	.byte	0x8
	.uahalf	0x141
	.uaword	0x13b4
	.uleb128 0xf
	.string	"_Ifx_SCU_EICON0_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x144
	.uaword	0x1481
	.uleb128 0x10
	.uaword	.LASF0
	.byte	0x8
	.uahalf	0x146
	.uaword	0x1481
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF15
	.byte	0x8
	.uahalf	0x147
	.uaword	0x1481
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"EPW"
	.byte	0x8
	.uahalf	0x148
	.uaword	0x1481
	.byte	0x4
	.byte	0xe
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"REL"
	.byte	0x8
	.uahalf	0x149
	.uaword	0x1481
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x11
	.uaword	0x26b
	.uleb128 0xe
	.string	"Ifx_SCU_EICON0_Bits"
	.byte	0x8
	.uahalf	0x14a
	.uaword	0x141a
	.uleb128 0xf
	.string	"_Ifx_SCU_EICON1_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x14d
	.uaword	0x153e
	.uleb128 0x10
	.uaword	.LASF0
	.byte	0x8
	.uahalf	0x14f
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF16
	.byte	0x8
	.uahalf	0x150
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"IR0"
	.byte	0x8
	.uahalf	0x151
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DR"
	.byte	0x8
	.uahalf	0x152
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0x8
	.uahalf	0x153
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"IR1"
	.byte	0x8
	.uahalf	0x154
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF3
	.byte	0x8
	.uahalf	0x155
	.uaword	0x385
	.byte	0x4
	.byte	0x1a
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_EICON1_Bits"
	.byte	0x8
	.uahalf	0x156
	.uaword	0x14a2
	.uleb128 0xf
	.string	"_Ifx_SCU_EICR_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x159
	.uaword	0x16bb
	.uleb128 0x10
	.uaword	.LASF0
	.byte	0x8
	.uahalf	0x15b
	.uaword	0x385
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"EXIS0"
	.byte	0x8
	.uahalf	0x15c
	.uaword	0x385
	.byte	0x4
	.byte	0x3
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF17
	.byte	0x8
	.uahalf	0x15d
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"FEN0"
	.byte	0x8
	.uahalf	0x15e
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"REN0"
	.byte	0x8
	.uahalf	0x15f
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"LDEN0"
	.byte	0x8
	.uahalf	0x160
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"EIEN0"
	.byte	0x8
	.uahalf	0x161
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"INP0"
	.byte	0x8
	.uahalf	0x162
	.uaword	0x385
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF5
	.byte	0x8
	.uahalf	0x163
	.uaword	0x385
	.byte	0x4
	.byte	0x5
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"EXIS1"
	.byte	0x8
	.uahalf	0x164
	.uaword	0x385
	.byte	0x4
	.byte	0x3
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF18
	.byte	0x8
	.uahalf	0x165
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"FEN1"
	.byte	0x8
	.uahalf	0x166
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"REN1"
	.byte	0x8
	.uahalf	0x167
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"LDEN1"
	.byte	0x8
	.uahalf	0x168
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"EIEN1"
	.byte	0x8
	.uahalf	0x169
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"INP1"
	.byte	0x8
	.uahalf	0x16a
	.uaword	0x385
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF19
	.byte	0x8
	.uahalf	0x16b
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_EICR_Bits"
	.byte	0x8
	.uahalf	0x16c
	.uaword	0x155a
	.uleb128 0xf
	.string	"_Ifx_SCU_EIFILT_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x16f
	.uaword	0x18a6
	.uleb128 0xd
	.string	"FILRQ0A"
	.byte	0x8
	.uahalf	0x171
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"FILRQ5A"
	.byte	0x8
	.uahalf	0x172
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"FILRQ2A"
	.byte	0x8
	.uahalf	0x173
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"FILRQ3A"
	.byte	0x8
	.uahalf	0x174
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"FILRQ0C"
	.byte	0x8
	.uahalf	0x175
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"FILRQ1C"
	.byte	0x8
	.uahalf	0x176
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"FILRQ3C"
	.byte	0x8
	.uahalf	0x177
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"FILRQ2C"
	.byte	0x8
	.uahalf	0x178
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"FILRQ4A"
	.byte	0x8
	.uahalf	0x179
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"FILRQ6A"
	.byte	0x8
	.uahalf	0x17a
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"FILRQ1A"
	.byte	0x8
	.uahalf	0x17b
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"FILRQ7A"
	.byte	0x8
	.uahalf	0x17c
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"FILRQ6D"
	.byte	0x8
	.uahalf	0x17d
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"FILRQ4D"
	.byte	0x8
	.uahalf	0x17e
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"FILRQ2B"
	.byte	0x8
	.uahalf	0x17f
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"FILRQ3B"
	.byte	0x8
	.uahalf	0x180
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"FILRQ7C"
	.byte	0x8
	.uahalf	0x181
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF20
	.byte	0x8
	.uahalf	0x182
	.uaword	0x385
	.byte	0x4
	.byte	0x7
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"FILTDIV"
	.byte	0x8
	.uahalf	0x183
	.uaword	0x385
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DEPTH"
	.byte	0x8
	.uahalf	0x184
	.uaword	0x385
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_EIFILT_Bits"
	.byte	0x8
	.uahalf	0x185
	.uaword	0x16d5
	.uleb128 0xf
	.string	"_Ifx_SCU_EIFR_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x188
	.uaword	0x1991
	.uleb128 0xd
	.string	"INTF0"
	.byte	0x8
	.uahalf	0x18a
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"INTF1"
	.byte	0x8
	.uahalf	0x18b
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"INTF2"
	.byte	0x8
	.uahalf	0x18c
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"INTF3"
	.byte	0x8
	.uahalf	0x18d
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"INTF4"
	.byte	0x8
	.uahalf	0x18e
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"INTF5"
	.byte	0x8
	.uahalf	0x18f
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"INTF6"
	.byte	0x8
	.uahalf	0x190
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"INTF7"
	.byte	0x8
	.uahalf	0x191
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF4
	.byte	0x8
	.uahalf	0x192
	.uaword	0x385
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_EIFR_Bits"
	.byte	0x8
	.uahalf	0x193
	.uaword	0x18c2
	.uleb128 0xf
	.string	"_Ifx_SCU_EISR_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x196
	.uaword	0x1a54
	.uleb128 0xd
	.string	"AE"
	.byte	0x8
	.uahalf	0x198
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"OE"
	.byte	0x8
	.uahalf	0x199
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"IS0"
	.byte	0x8
	.uahalf	0x19a
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DS"
	.byte	0x8
	.uahalf	0x19b
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"TO"
	.byte	0x8
	.uahalf	0x19c
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"IS1"
	.byte	0x8
	.uahalf	0x19d
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF3
	.byte	0x8
	.uahalf	0x19e
	.uaword	0x385
	.byte	0x4
	.byte	0xa
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"TIM"
	.byte	0x8
	.uahalf	0x19f
	.uaword	0x385
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_EISR_Bits"
	.byte	0x8
	.uahalf	0x1a0
	.uaword	0x19ab
	.uleb128 0xf
	.string	"_Ifx_SCU_EMSR_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x1a3
	.uaword	0x1b21
	.uleb128 0xd
	.string	"POL"
	.byte	0x8
	.uahalf	0x1a5
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"MODE"
	.byte	0x8
	.uahalf	0x1a6
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"ENON"
	.byte	0x8
	.uahalf	0x1a7
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PSEL"
	.byte	0x8
	.uahalf	0x1a8
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0x8
	.uahalf	0x1a9
	.uaword	0x385
	.byte	0x4
	.byte	0xc
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"EMSF"
	.byte	0x8
	.uahalf	0x1aa
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"SEMSF"
	.byte	0x8
	.uahalf	0x1ab
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF21
	.byte	0x8
	.uahalf	0x1ac
	.uaword	0x385
	.byte	0x4
	.byte	0xe
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_EMSR_Bits"
	.byte	0x8
	.uahalf	0x1ad
	.uaword	0x1a6e
	.uleb128 0xf
	.string	"_Ifx_SCU_EMSSW_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x1b0
	.uaword	0x1ba6
	.uleb128 0x10
	.uaword	.LASF0
	.byte	0x8
	.uahalf	0x1b2
	.uaword	0x385
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"EMSFM"
	.byte	0x8
	.uahalf	0x1b3
	.uaword	0x385
	.byte	0x4
	.byte	0x2
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"SEMSFM"
	.byte	0x8
	.uahalf	0x1b4
	.uaword	0x385
	.byte	0x4
	.byte	0x2
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF22
	.byte	0x8
	.uahalf	0x1b5
	.uaword	0x385
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_EMSSW_Bits"
	.byte	0x8
	.uahalf	0x1b6
	.uaword	0x1b3b
	.uleb128 0xf
	.string	"_Ifx_SCU_ESRCFGX_ESRCFGX_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x1b9
	.uaword	0x1c21
	.uleb128 0x10
	.uaword	.LASF0
	.byte	0x8
	.uahalf	0x1bb
	.uaword	0x385
	.byte	0x4
	.byte	0x7
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"EDCON"
	.byte	0x8
	.uahalf	0x1bc
	.uaword	0x385
	.byte	0x4
	.byte	0x2
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF23
	.byte	0x8
	.uahalf	0x1bd
	.uaword	0x385
	.byte	0x4
	.byte	0x17
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_ESRCFGX_ESRCFGX_Bits"
	.byte	0x8
	.uahalf	0x1be
	.uaword	0x1bc1
	.uleb128 0xf
	.string	"_Ifx_SCU_ESROCFG_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x1c1
	.uaword	0x1c9c
	.uleb128 0xd
	.string	"ARI"
	.byte	0x8
	.uahalf	0x1c3
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"ARC"
	.byte	0x8
	.uahalf	0x1c4
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF24
	.byte	0x8
	.uahalf	0x1c5
	.uaword	0x385
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_ESROCFG_Bits"
	.byte	0x8
	.uahalf	0x1c6
	.uaword	0x1c46
	.uleb128 0xf
	.string	"_Ifx_SCU_EXTCON_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x1c9
	.uaword	0x1d7e
	.uleb128 0xd
	.string	"EN0"
	.byte	0x8
	.uahalf	0x1cb
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF16
	.byte	0x8
	.uahalf	0x1cc
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"SEL0"
	.byte	0x8
	.uahalf	0x1cd
	.uaword	0x385
	.byte	0x4
	.byte	0x4
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF3
	.byte	0x8
	.uahalf	0x1ce
	.uaword	0x385
	.byte	0x4
	.byte	0xa
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"EN1"
	.byte	0x8
	.uahalf	0x1cf
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"NSEL"
	.byte	0x8
	.uahalf	0x1d0
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"SEL1"
	.byte	0x8
	.uahalf	0x1d1
	.uaword	0x385
	.byte	0x4
	.byte	0x4
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF7
	.byte	0x8
	.uahalf	0x1d2
	.uaword	0x385
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DIV1"
	.byte	0x8
	.uahalf	0x1d3
	.uaword	0x385
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_EXTCON_Bits"
	.byte	0x8
	.uahalf	0x1d4
	.uaword	0x1cb9
	.uleb128 0xf
	.string	"_Ifx_SCU_FDR_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x1d7
	.uaword	0x1e28
	.uleb128 0xd
	.string	"STEP"
	.byte	0x8
	.uahalf	0x1d9
	.uaword	0x385
	.byte	0x4
	.byte	0xa
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF25
	.byte	0x8
	.uahalf	0x1da
	.uaword	0x385
	.byte	0x4
	.byte	0x4
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DM"
	.byte	0x8
	.uahalf	0x1db
	.uaword	0x385
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"RESULT"
	.byte	0x8
	.uahalf	0x1dc
	.uaword	0x385
	.byte	0x4
	.byte	0xa
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF11
	.byte	0x8
	.uahalf	0x1dd
	.uaword	0x385
	.byte	0x4
	.byte	0x5
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DISCLK"
	.byte	0x8
	.uahalf	0x1de
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_FDR_Bits"
	.byte	0x8
	.uahalf	0x1df
	.uaword	0x1d9a
	.uleb128 0xf
	.string	"_Ifx_SCU_FMR_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x1e2
	.uaword	0x1fa1
	.uleb128 0xd
	.string	"FS0"
	.byte	0x8
	.uahalf	0x1e4
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"FS1"
	.byte	0x8
	.uahalf	0x1e5
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"FS2"
	.byte	0x8
	.uahalf	0x1e6
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"FS3"
	.byte	0x8
	.uahalf	0x1e7
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"FS4"
	.byte	0x8
	.uahalf	0x1e8
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"FS5"
	.byte	0x8
	.uahalf	0x1e9
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"FS6"
	.byte	0x8
	.uahalf	0x1ea
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"FS7"
	.byte	0x8
	.uahalf	0x1eb
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF4
	.byte	0x8
	.uahalf	0x1ec
	.uaword	0x385
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"FC0"
	.byte	0x8
	.uahalf	0x1ed
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"FC1"
	.byte	0x8
	.uahalf	0x1ee
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"FC2"
	.byte	0x8
	.uahalf	0x1ef
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"FC3"
	.byte	0x8
	.uahalf	0x1f0
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"FC4"
	.byte	0x8
	.uahalf	0x1f1
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"FC5"
	.byte	0x8
	.uahalf	0x1f2
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"FC6"
	.byte	0x8
	.uahalf	0x1f3
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"FC7"
	.byte	0x8
	.uahalf	0x1f4
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF10
	.byte	0x8
	.uahalf	0x1f5
	.uaword	0x385
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_FMR_Bits"
	.byte	0x8
	.uahalf	0x1f6
	.uaword	0x1e41
	.uleb128 0xf
	.string	"_Ifx_SCU_ID_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x1f9
	.uaword	0x2018
	.uleb128 0xd
	.string	"MODREV"
	.byte	0x8
	.uahalf	0x1fb
	.uaword	0x385
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"MODTYPE"
	.byte	0x8
	.uahalf	0x1fc
	.uaword	0x385
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"MODNUMBER"
	.byte	0x8
	.uahalf	0x1fd
	.uaword	0x385
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_ID_Bits"
	.byte	0x8
	.uahalf	0x1fe
	.uaword	0x1fba
	.uleb128 0xf
	.string	"_Ifx_SCU_IGCR_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x201
	.uaword	0x220f
	.uleb128 0xd
	.string	"IPEN00"
	.byte	0x8
	.uahalf	0x203
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"IPEN01"
	.byte	0x8
	.uahalf	0x204
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"IPEN02"
	.byte	0x8
	.uahalf	0x205
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"IPEN03"
	.byte	0x8
	.uahalf	0x206
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"IPEN04"
	.byte	0x8
	.uahalf	0x207
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"IPEN05"
	.byte	0x8
	.uahalf	0x208
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"IPEN06"
	.byte	0x8
	.uahalf	0x209
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"IPEN07"
	.byte	0x8
	.uahalf	0x20a
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF4
	.byte	0x8
	.uahalf	0x20b
	.uaword	0x385
	.byte	0x4
	.byte	0x5
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"GEEN0"
	.byte	0x8
	.uahalf	0x20c
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"IGP0"
	.byte	0x8
	.uahalf	0x20d
	.uaword	0x385
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"IPEN10"
	.byte	0x8
	.uahalf	0x20e
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"IPEN11"
	.byte	0x8
	.uahalf	0x20f
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"IPEN12"
	.byte	0x8
	.uahalf	0x210
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"IPEN13"
	.byte	0x8
	.uahalf	0x211
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"IPEN14"
	.byte	0x8
	.uahalf	0x212
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"IPEN15"
	.byte	0x8
	.uahalf	0x213
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"IPEN16"
	.byte	0x8
	.uahalf	0x214
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"IPEN17"
	.byte	0x8
	.uahalf	0x215
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF10
	.byte	0x8
	.uahalf	0x216
	.uaword	0x385
	.byte	0x4
	.byte	0x5
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"GEEN1"
	.byte	0x8
	.uahalf	0x217
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"IGP1"
	.byte	0x8
	.uahalf	0x218
	.uaword	0x385
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_IGCR_Bits"
	.byte	0x8
	.uahalf	0x219
	.uaword	0x2030
	.uleb128 0xf
	.string	"_Ifx_SCU_IN_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x21c
	.uaword	0x2278
	.uleb128 0xd
	.string	"P0"
	.byte	0x8
	.uahalf	0x21e
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"P1"
	.byte	0x8
	.uahalf	0x21f
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF24
	.byte	0x8
	.uahalf	0x220
	.uaword	0x385
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_IN_Bits"
	.byte	0x8
	.uahalf	0x221
	.uaword	0x2229
	.uleb128 0xf
	.string	"_Ifx_SCU_IOCR_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x224
	.uaword	0x2307
	.uleb128 0x10
	.uaword	.LASF0
	.byte	0x8
	.uahalf	0x226
	.uaword	0x385
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PC0"
	.byte	0x8
	.uahalf	0x227
	.uaword	0x385
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF4
	.byte	0x8
	.uahalf	0x228
	.uaword	0x385
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PC1"
	.byte	0x8
	.uahalf	0x229
	.uaword	0x385
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF26
	.byte	0x8
	.uahalf	0x22a
	.uaword	0x385
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_IOCR_Bits"
	.byte	0x8
	.uahalf	0x22b
	.uaword	0x2290
	.uleb128 0xf
	.string	"_Ifx_SCU_LBISTCTRL0_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x22e
	.uaword	0x23f9
	.uleb128 0xd
	.string	"LBISTREQ"
	.byte	0x8
	.uahalf	0x230
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"LBISTRES"
	.byte	0x8
	.uahalf	0x231
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PATTERNS"
	.byte	0x8
	.uahalf	0x232
	.uaword	0x385
	.byte	0x4
	.byte	0x12
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF27
	.byte	0x8
	.uahalf	0x233
	.uaword	0x385
	.byte	0x4
	.byte	0x8
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"LBISTDONE"
	.byte	0x8
	.uahalf	0x234
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF14
	.byte	0x8
	.uahalf	0x235
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"LBISTERRINJ"
	.byte	0x8
	.uahalf	0x236
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"LBISTREQRED"
	.byte	0x8
	.uahalf	0x237
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_LBISTCTRL0_Bits"
	.byte	0x8
	.uahalf	0x238
	.uaword	0x2321
	.uleb128 0xf
	.string	"_Ifx_SCU_LBISTCTRL1_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x23b
	.uaword	0x24a3
	.uleb128 0xd
	.string	"SEED"
	.byte	0x8
	.uahalf	0x23d
	.uaword	0x385
	.byte	0x4
	.byte	0x13
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF28
	.byte	0x8
	.uahalf	0x23e
	.uaword	0x385
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"SPLITSH"
	.byte	0x8
	.uahalf	0x23f
	.uaword	0x385
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"BODY"
	.byte	0x8
	.uahalf	0x240
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"LBISTFREQU"
	.byte	0x8
	.uahalf	0x241
	.uaword	0x385
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_LBISTCTRL1_Bits"
	.byte	0x8
	.uahalf	0x242
	.uaword	0x2419
	.uleb128 0xf
	.string	"_Ifx_SCU_LBISTCTRL2_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x245
	.uaword	0x250d
	.uleb128 0xd
	.string	"LENGTH"
	.byte	0x8
	.uahalf	0x247
	.uaword	0x385
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF6
	.byte	0x8
	.uahalf	0x248
	.uaword	0x385
	.byte	0x4
	.byte	0x14
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_LBISTCTRL2_Bits"
	.byte	0x8
	.uahalf	0x249
	.uaword	0x24c3
	.uleb128 0xf
	.string	"_Ifx_SCU_LBISTCTRL3_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x24c
	.uaword	0x2568
	.uleb128 0xd
	.string	"SIGNATURE"
	.byte	0x8
	.uahalf	0x24e
	.uaword	0x385
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_LBISTCTRL3_Bits"
	.byte	0x8
	.uahalf	0x24f
	.uaword	0x252d
	.uleb128 0xf
	.string	"_Ifx_SCU_LCLCON0_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x252
	.uaword	0x2616
	.uleb128 0x10
	.uaword	.LASF0
	.byte	0x8
	.uahalf	0x254
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF16
	.byte	0x8
	.uahalf	0x255
	.uaword	0x385
	.byte	0x4
	.byte	0xe
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF5
	.byte	0x8
	.uahalf	0x256
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"LS0"
	.byte	0x8
	.uahalf	0x257
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF20
	.byte	0x8
	.uahalf	0x258
	.uaword	0x385
	.byte	0x4
	.byte	0xe
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"LSEN0"
	.byte	0x8
	.uahalf	0x259
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_LCLCON0_Bits"
	.byte	0x8
	.uahalf	0x25a
	.uaword	0x2588
	.uleb128 0xf
	.string	"_Ifx_SCU_LCLCON1_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x25d
	.uaword	0x26c1
	.uleb128 0x10
	.uaword	.LASF0
	.byte	0x8
	.uahalf	0x25f
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF16
	.byte	0x8
	.uahalf	0x260
	.uaword	0x385
	.byte	0x4
	.byte	0xe
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF5
	.byte	0x8
	.uahalf	0x261
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"LS1"
	.byte	0x8
	.uahalf	0x262
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF20
	.byte	0x8
	.uahalf	0x263
	.uaword	0x385
	.byte	0x4
	.byte	0xe
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"LSEN1"
	.byte	0x8
	.uahalf	0x264
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_LCLCON1_Bits"
	.byte	0x8
	.uahalf	0x265
	.uaword	0x2633
	.uleb128 0xf
	.string	"_Ifx_SCU_LCLTEST_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x268
	.uaword	0x280e
	.uleb128 0xd
	.string	"LCLT0"
	.byte	0x8
	.uahalf	0x26a
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"LCLT1"
	.byte	0x8
	.uahalf	0x26b
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"LCLT2"
	.byte	0x8
	.uahalf	0x26c
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"LCLT3"
	.byte	0x8
	.uahalf	0x26d
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0x8
	.uahalf	0x26e
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF2
	.byte	0x8
	.uahalf	0x26f
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF3
	.byte	0x8
	.uahalf	0x270
	.uaword	0x385
	.byte	0x4
	.byte	0xa
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PLCLT0"
	.byte	0x8
	.uahalf	0x271
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PLCLT1"
	.byte	0x8
	.uahalf	0x272
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PLCLT2"
	.byte	0x8
	.uahalf	0x273
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PLCLT3"
	.byte	0x8
	.uahalf	0x274
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF27
	.byte	0x8
	.uahalf	0x275
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF29
	.byte	0x8
	.uahalf	0x276
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF7
	.byte	0x8
	.uahalf	0x277
	.uaword	0x385
	.byte	0x4
	.byte	0xa
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_LCLTEST_Bits"
	.byte	0x8
	.uahalf	0x278
	.uaword	0x26de
	.uleb128 0xf
	.string	"_Ifx_SCU_MANID_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x27b
	.uaword	0x2882
	.uleb128 0xd
	.string	"DEPT"
	.byte	0x8
	.uahalf	0x27d
	.uaword	0x385
	.byte	0x4
	.byte	0x5
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"MANUF"
	.byte	0x8
	.uahalf	0x27e
	.uaword	0x385
	.byte	0x4
	.byte	0xb
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF26
	.byte	0x8
	.uahalf	0x27f
	.uaword	0x385
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_MANID_Bits"
	.byte	0x8
	.uahalf	0x280
	.uaword	0x282b
	.uleb128 0xf
	.string	"_Ifx_SCU_OMR_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x283
	.uaword	0x2927
	.uleb128 0xd
	.string	"PS0"
	.byte	0x8
	.uahalf	0x285
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PS1"
	.byte	0x8
	.uahalf	0x286
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF24
	.byte	0x8
	.uahalf	0x287
	.uaword	0x385
	.byte	0x4
	.byte	0xe
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PCL0"
	.byte	0x8
	.uahalf	0x288
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PCL1"
	.byte	0x8
	.uahalf	0x289
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF21
	.byte	0x8
	.uahalf	0x28a
	.uaword	0x385
	.byte	0x4
	.byte	0xe
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_OMR_Bits"
	.byte	0x8
	.uahalf	0x28b
	.uaword	0x289d
	.uleb128 0xf
	.string	"_Ifx_SCU_OSCCON_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x28e
	.uaword	0x2adb
	.uleb128 0x10
	.uaword	.LASF0
	.byte	0x8
	.uahalf	0x290
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PLLLV"
	.byte	0x8
	.uahalf	0x291
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"OSCRES"
	.byte	0x8
	.uahalf	0x292
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"GAINSEL"
	.byte	0x8
	.uahalf	0x293
	.uaword	0x385
	.byte	0x4
	.byte	0x2
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"MODE"
	.byte	0x8
	.uahalf	0x294
	.uaword	0x385
	.byte	0x4
	.byte	0x2
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"SHBY"
	.byte	0x8
	.uahalf	0x295
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PLLHV"
	.byte	0x8
	.uahalf	0x296
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"HYSEN"
	.byte	0x8
	.uahalf	0x297
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"HYSCTL"
	.byte	0x8
	.uahalf	0x298
	.uaword	0x385
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"AMPCTL"
	.byte	0x8
	.uahalf	0x299
	.uaword	0x385
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF9
	.byte	0x8
	.uahalf	0x29a
	.uaword	0x385
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"OSCVAL"
	.byte	0x8
	.uahalf	0x29b
	.uaword	0x385
	.byte	0x4
	.byte	0x5
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF29
	.byte	0x8
	.uahalf	0x29c
	.uaword	0x385
	.byte	0x4
	.byte	0x2
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"APREN"
	.byte	0x8
	.uahalf	0x29d
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CAP0EN"
	.byte	0x8
	.uahalf	0x29e
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CAP1EN"
	.byte	0x8
	.uahalf	0x29f
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CAP2EN"
	.byte	0x8
	.uahalf	0x2a0
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CAP3EN"
	.byte	0x8
	.uahalf	0x2a1
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF22
	.byte	0x8
	.uahalf	0x2a2
	.uaword	0x385
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_OSCCON_Bits"
	.byte	0x8
	.uahalf	0x2a3
	.uaword	0x2940
	.uleb128 0xf
	.string	"_Ifx_SCU_OUT_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x2a6
	.uaword	0x2b47
	.uleb128 0xd
	.string	"P0"
	.byte	0x8
	.uahalf	0x2a8
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"P1"
	.byte	0x8
	.uahalf	0x2a9
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF24
	.byte	0x8
	.uahalf	0x2aa
	.uaword	0x385
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_OUT_Bits"
	.byte	0x8
	.uahalf	0x2ab
	.uaword	0x2af7
	.uleb128 0xf
	.string	"_Ifx_SCU_OVCCON_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x2ae
	.uaword	0x2c93
	.uleb128 0xd
	.string	"CSEL0"
	.byte	0x8
	.uahalf	0x2b0
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CSEL1"
	.byte	0x8
	.uahalf	0x2b1
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CSEL2"
	.byte	0x8
	.uahalf	0x2b2
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CSEL3"
	.byte	0x8
	.uahalf	0x2b3
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0x8
	.uahalf	0x2b4
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF2
	.byte	0x8
	.uahalf	0x2b5
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF3
	.byte	0x8
	.uahalf	0x2b6
	.uaword	0x385
	.byte	0x4
	.byte	0xa
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"OVSTRT"
	.byte	0x8
	.uahalf	0x2b7
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"OVSTP"
	.byte	0x8
	.uahalf	0x2b8
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DCINVAL"
	.byte	0x8
	.uahalf	0x2b9
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF28
	.byte	0x8
	.uahalf	0x2ba
	.uaword	0x385
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"OVCONF"
	.byte	0x8
	.uahalf	0x2bb
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"POVCONF"
	.byte	0x8
	.uahalf	0x2bc
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF11
	.byte	0x8
	.uahalf	0x2bd
	.uaword	0x385
	.byte	0x4
	.byte	0x6
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_OVCCON_Bits"
	.byte	0x8
	.uahalf	0x2be
	.uaword	0x2b60
	.uleb128 0xf
	.string	"_Ifx_SCU_OVCENABLE_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x2c1
	.uaword	0x2d57
	.uleb128 0xd
	.string	"OVEN0"
	.byte	0x8
	.uahalf	0x2c3
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"OVEN1"
	.byte	0x8
	.uahalf	0x2c4
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"OVEN2"
	.byte	0x8
	.uahalf	0x2c5
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"OVEN3"
	.byte	0x8
	.uahalf	0x2c6
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0x8
	.uahalf	0x2c7
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF2
	.byte	0x8
	.uahalf	0x2c8
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF3
	.byte	0x8
	.uahalf	0x2c9
	.uaword	0x385
	.byte	0x4
	.byte	0x1a
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_OVCENABLE_Bits"
	.byte	0x8
	.uahalf	0x2ca
	.uaword	0x2caf
	.uleb128 0xf
	.string	"_Ifx_SCU_PDISC_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x2cd
	.uaword	0x2dce
	.uleb128 0xd
	.string	"PDIS0"
	.byte	0x8
	.uahalf	0x2cf
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PDIS1"
	.byte	0x8
	.uahalf	0x2d0
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF24
	.byte	0x8
	.uahalf	0x2d1
	.uaword	0x385
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_PDISC_Bits"
	.byte	0x8
	.uahalf	0x2d2
	.uaword	0x2d76
	.uleb128 0xf
	.string	"_Ifx_SCU_PDR_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x2d5
	.uaword	0x2e5f
	.uleb128 0xd
	.string	"PD0"
	.byte	0x8
	.uahalf	0x2d7
	.uaword	0x385
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PL0"
	.byte	0x8
	.uahalf	0x2d8
	.uaword	0x385
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PD1"
	.byte	0x8
	.uahalf	0x2d9
	.uaword	0x385
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PL1"
	.byte	0x8
	.uahalf	0x2da
	.uaword	0x385
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF4
	.byte	0x8
	.uahalf	0x2db
	.uaword	0x385
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_PDR_Bits"
	.byte	0x8
	.uahalf	0x2dc
	.uaword	0x2de9
	.uleb128 0xf
	.string	"_Ifx_SCU_PDRR_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x2df
	.uaword	0x2f3f
	.uleb128 0xd
	.string	"PDR0"
	.byte	0x8
	.uahalf	0x2e1
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PDR1"
	.byte	0x8
	.uahalf	0x2e2
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PDR2"
	.byte	0x8
	.uahalf	0x2e3
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PDR3"
	.byte	0x8
	.uahalf	0x2e4
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PDR4"
	.byte	0x8
	.uahalf	0x2e5
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PDR5"
	.byte	0x8
	.uahalf	0x2e6
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PDR6"
	.byte	0x8
	.uahalf	0x2e7
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PDR7"
	.byte	0x8
	.uahalf	0x2e8
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF4
	.byte	0x8
	.uahalf	0x2e9
	.uaword	0x385
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_PDRR_Bits"
	.byte	0x8
	.uahalf	0x2ea
	.uaword	0x2e78
	.uleb128 0xf
	.string	"_Ifx_SCU_PERPLLCON0_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x2ed
	.uaword	0x3027
	.uleb128 0xd
	.string	"DIVBY"
	.byte	0x8
	.uahalf	0x2ef
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF16
	.byte	0x8
	.uahalf	0x2f0
	.uaword	0x385
	.byte	0x4
	.byte	0x8
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"NDIV"
	.byte	0x8
	.uahalf	0x2f1
	.uaword	0x385
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PLLPWD"
	.byte	0x8
	.uahalf	0x2f2
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF20
	.byte	0x8
	.uahalf	0x2f3
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"RESLD"
	.byte	0x8
	.uahalf	0x2f4
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF28
	.byte	0x8
	.uahalf	0x2f5
	.uaword	0x385
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PDIV"
	.byte	0x8
	.uahalf	0x2f6
	.uaword	0x385
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF12
	.byte	0x8
	.uahalf	0x2f7
	.uaword	0x385
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_PERPLLCON0_Bits"
	.byte	0x8
	.uahalf	0x2f8
	.uaword	0x2f59
	.uleb128 0xf
	.string	"_Ifx_SCU_PERPLLCON1_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x2fb
	.uaword	0x30b6
	.uleb128 0xd
	.string	"K2DIV"
	.byte	0x8
	.uahalf	0x2fd
	.uaword	0x385
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF30
	.byte	0x8
	.uahalf	0x2fe
	.uaword	0x385
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"K3DIV"
	.byte	0x8
	.uahalf	0x2ff
	.uaword	0x385
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF31
	.byte	0x8
	.uahalf	0x300
	.uaword	0x385
	.byte	0x4
	.byte	0x15
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_PERPLLCON1_Bits"
	.byte	0x8
	.uahalf	0x301
	.uaword	0x3047
	.uleb128 0xf
	.string	"_Ifx_SCU_PERPLLSTAT_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x304
	.uaword	0x3192
	.uleb128 0x10
	.uaword	.LASF0
	.byte	0x8
	.uahalf	0x306
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PWDSTAT"
	.byte	0x8
	.uahalf	0x307
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"LOCK"
	.byte	0x8
	.uahalf	0x308
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF30
	.byte	0x8
	.uahalf	0x309
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"K3RDY"
	.byte	0x8
	.uahalf	0x30a
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"K2RDY"
	.byte	0x8
	.uahalf	0x30b
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF3
	.byte	0x8
	.uahalf	0x30c
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF17
	.byte	0x8
	.uahalf	0x30d
	.uaword	0x385
	.byte	0x4
	.byte	0x19
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_PERPLLSTAT_Bits"
	.byte	0x8
	.uahalf	0x30e
	.uaword	0x30d6
	.uleb128 0xf
	.string	"_Ifx_SCU_PMCSR0_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x311
	.uaword	0x3219
	.uleb128 0x10
	.uaword	.LASF32
	.byte	0x8
	.uahalf	0x313
	.uaword	0x385
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF24
	.byte	0x8
	.uahalf	0x314
	.uaword	0x385
	.byte	0x4
	.byte	0x6
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF33
	.byte	0x8
	.uahalf	0x315
	.uaword	0x385
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF31
	.byte	0x8
	.uahalf	0x316
	.uaword	0x385
	.byte	0x4
	.byte	0x15
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_PMCSR0_Bits"
	.byte	0x8
	.uahalf	0x317
	.uaword	0x31b2
	.uleb128 0xf
	.string	"_Ifx_SCU_PMCSR1_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x31a
	.uaword	0x329c
	.uleb128 0x10
	.uaword	.LASF32
	.byte	0x8
	.uahalf	0x31c
	.uaword	0x385
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF24
	.byte	0x8
	.uahalf	0x31d
	.uaword	0x385
	.byte	0x4
	.byte	0x6
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF33
	.byte	0x8
	.uahalf	0x31e
	.uaword	0x385
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF31
	.byte	0x8
	.uahalf	0x31f
	.uaword	0x385
	.byte	0x4
	.byte	0x15
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_PMCSR1_Bits"
	.byte	0x8
	.uahalf	0x320
	.uaword	0x3235
	.uleb128 0xf
	.string	"_Ifx_SCU_PMCSR2_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x323
	.uaword	0x331f
	.uleb128 0x10
	.uaword	.LASF32
	.byte	0x8
	.uahalf	0x325
	.uaword	0x385
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF24
	.byte	0x8
	.uahalf	0x326
	.uaword	0x385
	.byte	0x4
	.byte	0x6
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF33
	.byte	0x8
	.uahalf	0x327
	.uaword	0x385
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF31
	.byte	0x8
	.uahalf	0x328
	.uaword	0x385
	.byte	0x4
	.byte	0x15
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_PMCSR2_Bits"
	.byte	0x8
	.uahalf	0x329
	.uaword	0x32b8
	.uleb128 0xf
	.string	"_Ifx_SCU_PMCSR3_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x32c
	.uaword	0x33a2
	.uleb128 0x10
	.uaword	.LASF32
	.byte	0x8
	.uahalf	0x32e
	.uaword	0x385
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF24
	.byte	0x8
	.uahalf	0x32f
	.uaword	0x385
	.byte	0x4
	.byte	0x6
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF33
	.byte	0x8
	.uahalf	0x330
	.uaword	0x385
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF31
	.byte	0x8
	.uahalf	0x331
	.uaword	0x385
	.byte	0x4
	.byte	0x15
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_PMCSR3_Bits"
	.byte	0x8
	.uahalf	0x332
	.uaword	0x333b
	.uleb128 0xf
	.string	"_Ifx_SCU_PMCSR4_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x335
	.uaword	0x3425
	.uleb128 0x10
	.uaword	.LASF32
	.byte	0x8
	.uahalf	0x337
	.uaword	0x385
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF24
	.byte	0x8
	.uahalf	0x338
	.uaword	0x385
	.byte	0x4
	.byte	0x6
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF33
	.byte	0x8
	.uahalf	0x339
	.uaword	0x385
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF31
	.byte	0x8
	.uahalf	0x33a
	.uaword	0x385
	.byte	0x4
	.byte	0x15
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_PMCSR4_Bits"
	.byte	0x8
	.uahalf	0x33b
	.uaword	0x33be
	.uleb128 0xf
	.string	"_Ifx_SCU_PMCSR5_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x33e
	.uaword	0x34a8
	.uleb128 0x10
	.uaword	.LASF32
	.byte	0x8
	.uahalf	0x340
	.uaword	0x385
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF24
	.byte	0x8
	.uahalf	0x341
	.uaword	0x385
	.byte	0x4
	.byte	0x6
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF33
	.byte	0x8
	.uahalf	0x342
	.uaword	0x385
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF31
	.byte	0x8
	.uahalf	0x343
	.uaword	0x385
	.byte	0x4
	.byte	0x15
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_PMCSR5_Bits"
	.byte	0x8
	.uahalf	0x344
	.uaword	0x3441
	.uleb128 0xf
	.string	"_Ifx_SCU_PMSTAT0_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x347
	.uaword	0x35ce
	.uleb128 0xd
	.string	"CPU0"
	.byte	0x8
	.uahalf	0x349
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CPU1"
	.byte	0x8
	.uahalf	0x34a
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CPU2"
	.byte	0x8
	.uahalf	0x34b
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CPU3"
	.byte	0x8
	.uahalf	0x34c
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CPU4"
	.byte	0x8
	.uahalf	0x34d
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CPU5"
	.byte	0x8
	.uahalf	0x34e
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF3
	.byte	0x8
	.uahalf	0x34f
	.uaword	0x385
	.byte	0x4
	.byte	0xa
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CPU0LS"
	.byte	0x8
	.uahalf	0x350
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CPU1LS"
	.byte	0x8
	.uahalf	0x351
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CPU2LS"
	.byte	0x8
	.uahalf	0x352
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CPU3LS"
	.byte	0x8
	.uahalf	0x353
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF27
	.byte	0x8
	.uahalf	0x354
	.uaword	0x385
	.byte	0x4
	.byte	0xc
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_PMSTAT0_Bits"
	.byte	0x8
	.uahalf	0x355
	.uaword	0x34c4
	.uleb128 0xf
	.string	"_Ifx_SCU_PMSWCR1_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x358
	.uaword	0x36c1
	.uleb128 0x10
	.uaword	.LASF0
	.byte	0x8
	.uahalf	0x35a
	.uaword	0x385
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CPUIDLSEL"
	.byte	0x8
	.uahalf	0x35b
	.uaword	0x385
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF31
	.byte	0x8
	.uahalf	0x35c
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"IRADIS"
	.byte	0x8
	.uahalf	0x35d
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF13
	.byte	0x8
	.uahalf	0x35e
	.uaword	0x385
	.byte	0x4
	.byte	0xb
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CPUSEL"
	.byte	0x8
	.uahalf	0x35f
	.uaword	0x385
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"STBYEVEN"
	.byte	0x8
	.uahalf	0x360
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"STBYEV"
	.byte	0x8
	.uahalf	0x361
	.uaword	0x385
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF19
	.byte	0x8
	.uahalf	0x362
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_PMSWCR1_Bits"
	.byte	0x8
	.uahalf	0x363
	.uaword	0x35eb
	.uleb128 0xf
	.string	"_Ifx_SCU_PMTRCSR0_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x366
	.uaword	0x3862
	.uleb128 0xd
	.string	"LJTEN"
	.byte	0x8
	.uahalf	0x368
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"LJTOVEN"
	.byte	0x8
	.uahalf	0x369
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"LJTOVIEN"
	.byte	0x8
	.uahalf	0x36a
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"LJTSTRT"
	.byte	0x8
	.uahalf	0x36b
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"LJTSTP"
	.byte	0x8
	.uahalf	0x36c
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"LJTCLR"
	.byte	0x8
	.uahalf	0x36d
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF3
	.byte	0x8
	.uahalf	0x36e
	.uaword	0x385
	.byte	0x4
	.byte	0x6
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"SDSTEP"
	.byte	0x8
	.uahalf	0x36f
	.uaword	0x385
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"VDTEN"
	.byte	0x8
	.uahalf	0x370
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"VDTOVEN"
	.byte	0x8
	.uahalf	0x371
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"VDTOVIEN"
	.byte	0x8
	.uahalf	0x372
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"VDTSTRT"
	.byte	0x8
	.uahalf	0x373
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"VDTSTP"
	.byte	0x8
	.uahalf	0x374
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"VDTCLR"
	.byte	0x8
	.uahalf	0x375
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF7
	.byte	0x8
	.uahalf	0x376
	.uaword	0x385
	.byte	0x4
	.byte	0x7
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"LPSLPEN"
	.byte	0x8
	.uahalf	0x377
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF8
	.byte	0x8
	.uahalf	0x378
	.uaword	0x385
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_PMTRCSR0_Bits"
	.byte	0x8
	.uahalf	0x379
	.uaword	0x36de
	.uleb128 0xf
	.string	"_Ifx_SCU_PMTRCSR1_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x37c
	.uaword	0x38db
	.uleb128 0xd
	.string	"LJTCV"
	.byte	0x8
	.uahalf	0x37e
	.uaword	0x385
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"VDTCV"
	.byte	0x8
	.uahalf	0x37f
	.uaword	0x385
	.byte	0x4
	.byte	0xa
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF11
	.byte	0x8
	.uahalf	0x380
	.uaword	0x385
	.byte	0x4
	.byte	0x6
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_PMTRCSR1_Bits"
	.byte	0x8
	.uahalf	0x381
	.uaword	0x3880
	.uleb128 0xf
	.string	"_Ifx_SCU_PMTRCSR2_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x384
	.uaword	0x39ce
	.uleb128 0xd
	.string	"LDJMPREQ"
	.byte	0x8
	.uahalf	0x386
	.uaword	0x385
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF24
	.byte	0x8
	.uahalf	0x387
	.uaword	0x385
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"LJTRUN"
	.byte	0x8
	.uahalf	0x388
	.uaword	0x385
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF3
	.byte	0x8
	.uahalf	0x389
	.uaword	0x385
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"LJTOV"
	.byte	0x8
	.uahalf	0x38a
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF23
	.byte	0x8
	.uahalf	0x38b
	.uaword	0x385
	.byte	0x4
	.byte	0x3
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"LJTOVCLR"
	.byte	0x8
	.uahalf	0x38c
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF13
	.byte	0x8
	.uahalf	0x38d
	.uaword	0x385
	.byte	0x4
	.byte	0x3
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"LJTCNT"
	.byte	0x8
	.uahalf	0x38e
	.uaword	0x385
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_PMTRCSR2_Bits"
	.byte	0x8
	.uahalf	0x38f
	.uaword	0x38f9
	.uleb128 0xf
	.string	"_Ifx_SCU_PMTRCSR3_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x392
	.uaword	0x3ad4
	.uleb128 0xd
	.string	"VDROOPREQ"
	.byte	0x8
	.uahalf	0x394
	.uaword	0x385
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF24
	.byte	0x8
	.uahalf	0x395
	.uaword	0x385
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"VDTRUN"
	.byte	0x8
	.uahalf	0x396
	.uaword	0x385
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF3
	.byte	0x8
	.uahalf	0x397
	.uaword	0x385
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"VDTOV"
	.byte	0x8
	.uahalf	0x398
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF23
	.byte	0x8
	.uahalf	0x399
	.uaword	0x385
	.byte	0x4
	.byte	0x3
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"VDTOVCLR"
	.byte	0x8
	.uahalf	0x39a
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF13
	.byte	0x8
	.uahalf	0x39b
	.uaword	0x385
	.byte	0x4
	.byte	0x3
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"VDTCNT"
	.byte	0x8
	.uahalf	0x39c
	.uaword	0x385
	.byte	0x4
	.byte	0xa
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF11
	.byte	0x8
	.uahalf	0x39d
	.uaword	0x385
	.byte	0x4
	.byte	0x6
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_PMTRCSR3_Bits"
	.byte	0x8
	.uahalf	0x39e
	.uaword	0x39ec
	.uleb128 0xf
	.string	"_Ifx_SCU_RSTCON_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x3a1
	.uaword	0x3bee
	.uleb128 0xd
	.string	"ESR0"
	.byte	0x8
	.uahalf	0x3a3
	.uaword	0x385
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"ESR1"
	.byte	0x8
	.uahalf	0x3a4
	.uaword	0x385
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0x8
	.uahalf	0x3a5
	.uaword	0x385
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"SMU"
	.byte	0x8
	.uahalf	0x3a6
	.uaword	0x385
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"SW"
	.byte	0x8
	.uahalf	0x3a7
	.uaword	0x385
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"STM0"
	.byte	0x8
	.uahalf	0x3a8
	.uaword	0x385
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"STM1"
	.byte	0x8
	.uahalf	0x3a9
	.uaword	0x385
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"STM2"
	.byte	0x8
	.uahalf	0x3aa
	.uaword	0x385
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"STM3"
	.byte	0x8
	.uahalf	0x3ab
	.uaword	0x385
	.byte	0x4
	.byte	0x2
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF21
	.byte	0x8
	.uahalf	0x3ac
	.uaword	0x385
	.byte	0x4
	.byte	0x2
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF27
	.byte	0x8
	.uahalf	0x3ad
	.uaword	0x385
	.byte	0x4
	.byte	0x2
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF7
	.byte	0x8
	.uahalf	0x3ae
	.uaword	0x385
	.byte	0x4
	.byte	0xa
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_RSTCON_Bits"
	.byte	0x8
	.uahalf	0x3af
	.uaword	0x3af2
	.uleb128 0xf
	.string	"_Ifx_SCU_RSTCON2_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x3b2
	.uaword	0x3d09
	.uleb128 0xd
	.string	"FRTO"
	.byte	0x8
	.uahalf	0x3b4
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CLRC"
	.byte	0x8
	.uahalf	0x3b5
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF24
	.byte	0x8
	.uahalf	0x3b6
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF30
	.byte	0x8
	.uahalf	0x3b7
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0x8
	.uahalf	0x3b8
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF2
	.byte	0x8
	.uahalf	0x3b9
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF3
	.byte	0x8
	.uahalf	0x3ba
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CSSX"
	.byte	0x8
	.uahalf	0x3bb
	.uaword	0x385
	.byte	0x4
	.byte	0x6
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF13
	.byte	0x8
	.uahalf	0x3bc
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF9
	.byte	0x8
	.uahalf	0x3bd
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF5
	.byte	0x8
	.uahalf	0x3be
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"USRINFO"
	.byte	0x8
	.uahalf	0x3bf
	.uaword	0x385
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_RSTCON2_Bits"
	.byte	0x8
	.uahalf	0x3c0
	.uaword	0x3c0a
	.uleb128 0xf
	.string	"_Ifx_SCU_RSTCON3_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x3c3
	.uaword	0x3d58
	.uleb128 0x10
	.uaword	.LASF0
	.byte	0x8
	.uahalf	0x3c5
	.uaword	0x385
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_RSTCON3_Bits"
	.byte	0x8
	.uahalf	0x3c6
	.uaword	0x3d26
	.uleb128 0xf
	.string	"_Ifx_SCU_RSTSTAT_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x3c9
	.uaword	0x3fa2
	.uleb128 0xd
	.string	"ESR0"
	.byte	0x8
	.uahalf	0x3cb
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"ESR1"
	.byte	0x8
	.uahalf	0x3cc
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF24
	.byte	0x8
	.uahalf	0x3cd
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"SMU"
	.byte	0x8
	.uahalf	0x3ce
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"SW"
	.byte	0x8
	.uahalf	0x3cf
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"STM0"
	.byte	0x8
	.uahalf	0x3d0
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"STM1"
	.byte	0x8
	.uahalf	0x3d1
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"STM2"
	.byte	0x8
	.uahalf	0x3d2
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"STM3"
	.byte	0x8
	.uahalf	0x3d3
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF23
	.byte	0x8
	.uahalf	0x3d4
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF25
	.byte	0x8
	.uahalf	0x3d5
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF31
	.byte	0x8
	.uahalf	0x3d6
	.uaword	0x385
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PORST"
	.byte	0x8
	.uahalf	0x3d7
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF20
	.byte	0x8
	.uahalf	0x3d8
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CB0"
	.byte	0x8
	.uahalf	0x3d9
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CB1"
	.byte	0x8
	.uahalf	0x3da
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CB3"
	.byte	0x8
	.uahalf	0x3db
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF29
	.byte	0x8
	.uahalf	0x3dc
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF7
	.byte	0x8
	.uahalf	0x3dd
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"EVRC"
	.byte	0x8
	.uahalf	0x3de
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"EVR33"
	.byte	0x8
	.uahalf	0x3df
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"SWD"
	.byte	0x8
	.uahalf	0x3e0
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"HSMS"
	.byte	0x8
	.uahalf	0x3e1
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"HSMA"
	.byte	0x8
	.uahalf	0x3e2
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"STBYR"
	.byte	0x8
	.uahalf	0x3e3
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"LBPORST"
	.byte	0x8
	.uahalf	0x3e4
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"LBTERM"
	.byte	0x8
	.uahalf	0x3e5
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF19
	.byte	0x8
	.uahalf	0x3e6
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_RSTSTAT_Bits"
	.byte	0x8
	.uahalf	0x3e7
	.uaword	0x3d75
	.uleb128 0xf
	.string	"_Ifx_SCU_SEICON0_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x3ea
	.uaword	0x4027
	.uleb128 0x10
	.uaword	.LASF0
	.byte	0x8
	.uahalf	0x3ec
	.uaword	0x1481
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF15
	.byte	0x8
	.uahalf	0x3ed
	.uaword	0x1481
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"EPW"
	.byte	0x8
	.uahalf	0x3ee
	.uaword	0x1481
	.byte	0x4
	.byte	0xe
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"REL"
	.byte	0x8
	.uahalf	0x3ef
	.uaword	0x1481
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_SEICON0_Bits"
	.byte	0x8
	.uahalf	0x3f0
	.uaword	0x3fbf
	.uleb128 0xf
	.string	"_Ifx_SCU_SEICON1_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x3f3
	.uaword	0x40e1
	.uleb128 0x10
	.uaword	.LASF0
	.byte	0x8
	.uahalf	0x3f5
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF16
	.byte	0x8
	.uahalf	0x3f6
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"IR0"
	.byte	0x8
	.uahalf	0x3f7
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DR"
	.byte	0x8
	.uahalf	0x3f8
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0x8
	.uahalf	0x3f9
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"IR1"
	.byte	0x8
	.uahalf	0x3fa
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF3
	.byte	0x8
	.uahalf	0x3fb
	.uaword	0x385
	.byte	0x4
	.byte	0x1a
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_SEICON1_Bits"
	.byte	0x8
	.uahalf	0x3fc
	.uaword	0x4044
	.uleb128 0xf
	.string	"_Ifx_SCU_SEISR_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x3ff
	.uaword	0x41a8
	.uleb128 0xd
	.string	"AE"
	.byte	0x8
	.uahalf	0x401
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"OE"
	.byte	0x8
	.uahalf	0x402
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"IS0"
	.byte	0x8
	.uahalf	0x403
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DS"
	.byte	0x8
	.uahalf	0x404
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"TO"
	.byte	0x8
	.uahalf	0x405
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"IS1"
	.byte	0x8
	.uahalf	0x406
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF3
	.byte	0x8
	.uahalf	0x407
	.uaword	0x385
	.byte	0x4
	.byte	0xa
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"TIM"
	.byte	0x8
	.uahalf	0x408
	.uaword	0x385
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_SEISR_Bits"
	.byte	0x8
	.uahalf	0x409
	.uaword	0x40fe
	.uleb128 0xf
	.string	"_Ifx_SCU_STCON_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x40c
	.uaword	0x4241
	.uleb128 0x10
	.uaword	.LASF0
	.byte	0x8
	.uahalf	0x40e
	.uaword	0x385
	.byte	0x4
	.byte	0xd
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"SFCBAE"
	.byte	0x8
	.uahalf	0x40f
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CFCBAE"
	.byte	0x8
	.uahalf	0x410
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"STP"
	.byte	0x8
	.uahalf	0x411
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF26
	.byte	0x8
	.uahalf	0x412
	.uaword	0x385
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_STCON_Bits"
	.byte	0x8
	.uahalf	0x413
	.uaword	0x41c3
	.uleb128 0xf
	.string	"_Ifx_SCU_STMEM1_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x416
	.uaword	0x428d
	.uleb128 0xd
	.string	"MEM"
	.byte	0x8
	.uahalf	0x418
	.uaword	0x385
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_STMEM1_Bits"
	.byte	0x8
	.uahalf	0x419
	.uaword	0x425c
	.uleb128 0xf
	.string	"_Ifx_SCU_STMEM2_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x41c
	.uaword	0x42da
	.uleb128 0xd
	.string	"MEM"
	.byte	0x8
	.uahalf	0x41e
	.uaword	0x385
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_STMEM2_Bits"
	.byte	0x8
	.uahalf	0x41f
	.uaword	0x42a9
	.uleb128 0xf
	.string	"_Ifx_SCU_STMEM3_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x422
	.uaword	0x4327
	.uleb128 0xd
	.string	"MEM"
	.byte	0x8
	.uahalf	0x424
	.uaword	0x385
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_STMEM3_Bits"
	.byte	0x8
	.uahalf	0x425
	.uaword	0x42f6
	.uleb128 0xf
	.string	"_Ifx_SCU_STMEM4_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x428
	.uaword	0x4374
	.uleb128 0xd
	.string	"MEM"
	.byte	0x8
	.uahalf	0x42a
	.uaword	0x385
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_STMEM4_Bits"
	.byte	0x8
	.uahalf	0x42b
	.uaword	0x4343
	.uleb128 0xf
	.string	"_Ifx_SCU_STMEM5_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x42e
	.uaword	0x43c1
	.uleb128 0xd
	.string	"MEM"
	.byte	0x8
	.uahalf	0x430
	.uaword	0x385
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_STMEM5_Bits"
	.byte	0x8
	.uahalf	0x431
	.uaword	0x4390
	.uleb128 0xf
	.string	"_Ifx_SCU_STMEM6_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x434
	.uaword	0x440e
	.uleb128 0xd
	.string	"MEM"
	.byte	0x8
	.uahalf	0x436
	.uaword	0x385
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_STMEM6_Bits"
	.byte	0x8
	.uahalf	0x437
	.uaword	0x43dd
	.uleb128 0xf
	.string	"_Ifx_SCU_STSTAT_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x43a
	.uaword	0x455b
	.uleb128 0xd
	.string	"HWCFG"
	.byte	0x8
	.uahalf	0x43c
	.uaword	0x385
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"FTM"
	.byte	0x8
	.uahalf	0x43d
	.uaword	0x385
	.byte	0x4
	.byte	0x7
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"MODE"
	.byte	0x8
	.uahalf	0x43e
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"FCBAE"
	.byte	0x8
	.uahalf	0x43f
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"LUDIS"
	.byte	0x8
	.uahalf	0x440
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF21
	.byte	0x8
	.uahalf	0x441
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"TRSTL"
	.byte	0x8
	.uahalf	0x442
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"SPDEN"
	.byte	0x8
	.uahalf	0x443
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF29
	.byte	0x8
	.uahalf	0x444
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF7
	.byte	0x8
	.uahalf	0x445
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF18
	.byte	0x8
	.uahalf	0x446
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"RAMINT"
	.byte	0x8
	.uahalf	0x447
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"reserved_25"
	.byte	0x8
	.uahalf	0x448
	.uaword	0x385
	.byte	0x4
	.byte	0x3
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF22
	.byte	0x8
	.uahalf	0x449
	.uaword	0x385
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_STSTAT_Bits"
	.byte	0x8
	.uahalf	0x44a
	.uaword	0x442a
	.uleb128 0xf
	.string	"_Ifx_SCU_SWAPCTRL_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x44d
	.uaword	0x45d4
	.uleb128 0xd
	.string	"ADDRCFG"
	.byte	0x8
	.uahalf	0x44f
	.uaword	0x385
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"SPARE"
	.byte	0x8
	.uahalf	0x450
	.uaword	0x385
	.byte	0x4
	.byte	0xe
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF26
	.byte	0x8
	.uahalf	0x451
	.uaword	0x385
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_SWAPCTRL_Bits"
	.byte	0x8
	.uahalf	0x452
	.uaword	0x4577
	.uleb128 0xf
	.string	"_Ifx_SCU_SWRSTCON_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x455
	.uaword	0x4672
	.uleb128 0x10
	.uaword	.LASF0
	.byte	0x8
	.uahalf	0x457
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"SWRSTREQ"
	.byte	0x8
	.uahalf	0x458
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF24
	.byte	0x8
	.uahalf	0x459
	.uaword	0x385
	.byte	0x4
	.byte	0x6
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF4
	.byte	0x8
	.uahalf	0x45a
	.uaword	0x385
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF26
	.byte	0x8
	.uahalf	0x45b
	.uaword	0x385
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_SWRSTCON_Bits"
	.byte	0x8
	.uahalf	0x45c
	.uaword	0x45f2
	.uleb128 0xf
	.string	"_Ifx_SCU_SYSCON_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x45f
	.uaword	0x4770
	.uleb128 0xd
	.string	"CCTRIG0"
	.byte	0x8
	.uahalf	0x461
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF16
	.byte	0x8
	.uahalf	0x462
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"RAMINTM"
	.byte	0x8
	.uahalf	0x463
	.uaword	0x385
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"SETLUDIS"
	.byte	0x8
	.uahalf	0x464
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF2
	.byte	0x8
	.uahalf	0x465
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF3
	.byte	0x8
	.uahalf	0x466
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF17
	.byte	0x8
	.uahalf	0x467
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DDC"
	.byte	0x8
	.uahalf	0x468
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF23
	.byte	0x8
	.uahalf	0x469
	.uaword	0x385
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF26
	.byte	0x8
	.uahalf	0x46a
	.uaword	0x385
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_SYSCON_Bits"
	.byte	0x8
	.uahalf	0x46b
	.uaword	0x4690
	.uleb128 0xf
	.string	"_Ifx_SCU_SYSPLLCON0_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x46e
	.uaword	0x4880
	.uleb128 0x10
	.uaword	.LASF0
	.byte	0x8
	.uahalf	0x470
	.uaword	0x385
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"MODEN"
	.byte	0x8
	.uahalf	0x471
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF30
	.byte	0x8
	.uahalf	0x472
	.uaword	0x385
	.byte	0x4
	.byte	0x6
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"NDIV"
	.byte	0x8
	.uahalf	0x473
	.uaword	0x385
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PLLPWD"
	.byte	0x8
	.uahalf	0x474
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF20
	.byte	0x8
	.uahalf	0x475
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"RESLD"
	.byte	0x8
	.uahalf	0x476
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF28
	.byte	0x8
	.uahalf	0x477
	.uaword	0x385
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PDIV"
	.byte	0x8
	.uahalf	0x478
	.uaword	0x385
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF12
	.byte	0x8
	.uahalf	0x479
	.uaword	0x385
	.byte	0x4
	.byte	0x3
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"INSEL"
	.byte	0x8
	.uahalf	0x47a
	.uaword	0x385
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_SYSPLLCON0_Bits"
	.byte	0x8
	.uahalf	0x47b
	.uaword	0x478c
	.uleb128 0xf
	.string	"_Ifx_SCU_SYSPLLCON1_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x47e
	.uaword	0x48e9
	.uleb128 0xd
	.string	"K2DIV"
	.byte	0x8
	.uahalf	0x480
	.uaword	0x385
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF30
	.byte	0x8
	.uahalf	0x481
	.uaword	0x385
	.byte	0x4
	.byte	0x1d
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_SYSPLLCON1_Bits"
	.byte	0x8
	.uahalf	0x482
	.uaword	0x48a0
	.uleb128 0xf
	.string	"_Ifx_SCU_SYSPLLCON2_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x485
	.uaword	0x4953
	.uleb128 0xd
	.string	"MODCFG"
	.byte	0x8
	.uahalf	0x487
	.uaword	0x385
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF26
	.byte	0x8
	.uahalf	0x488
	.uaword	0x385
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_SYSPLLCON2_Bits"
	.byte	0x8
	.uahalf	0x489
	.uaword	0x4909
	.uleb128 0xf
	.string	"_Ifx_SCU_SYSPLLSTAT_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x48c
	.uaword	0x4a30
	.uleb128 0x10
	.uaword	.LASF0
	.byte	0x8
	.uahalf	0x48e
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PWDSTAT"
	.byte	0x8
	.uahalf	0x48f
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"LOCK"
	.byte	0x8
	.uahalf	0x490
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF30
	.byte	0x8
	.uahalf	0x491
	.uaword	0x385
	.byte	0x4
	.byte	0x2
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"K2RDY"
	.byte	0x8
	.uahalf	0x492
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF3
	.byte	0x8
	.uahalf	0x493
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"MODRUN"
	.byte	0x8
	.uahalf	0x494
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF4
	.byte	0x8
	.uahalf	0x495
	.uaword	0x385
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_SYSPLLSTAT_Bits"
	.byte	0x8
	.uahalf	0x496
	.uaword	0x4973
	.uleb128 0xf
	.string	"_Ifx_SCU_TRAPCLR_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x499
	.uaword	0x4ad1
	.uleb128 0xd
	.string	"ESR0T"
	.byte	0x8
	.uahalf	0x49b
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"ESR1T"
	.byte	0x8
	.uahalf	0x49c
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"TRAP2"
	.byte	0x8
	.uahalf	0x49d
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"SMUT"
	.byte	0x8
	.uahalf	0x49e
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0x8
	.uahalf	0x49f
	.uaword	0x385
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_TRAPCLR_Bits"
	.byte	0x8
	.uahalf	0x4a0
	.uaword	0x4a50
	.uleb128 0xf
	.string	"_Ifx_SCU_TRAPDIS0_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x4a3
	.uaword	0x4cd7
	.uleb128 0xd
	.string	"CPU0ESR0T"
	.byte	0x8
	.uahalf	0x4a5
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CPU0ESR1T"
	.byte	0x8
	.uahalf	0x4a6
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CPU0TRAP2T"
	.byte	0x8
	.uahalf	0x4a7
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CPU0SMUT"
	.byte	0x8
	.uahalf	0x4a8
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0x8
	.uahalf	0x4a9
	.uaword	0x385
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CPU1ESR0T"
	.byte	0x8
	.uahalf	0x4aa
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CPU1ESR1T"
	.byte	0x8
	.uahalf	0x4ab
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CPU1TRAP2T"
	.byte	0x8
	.uahalf	0x4ac
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CPU1SMUT"
	.byte	0x8
	.uahalf	0x4ad
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF6
	.byte	0x8
	.uahalf	0x4ae
	.uaword	0x385
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CPU2ESR0T"
	.byte	0x8
	.uahalf	0x4af
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CPU2ESR1T"
	.byte	0x8
	.uahalf	0x4b0
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CPU2TRAP2T"
	.byte	0x8
	.uahalf	0x4b1
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CPU2SMUT"
	.byte	0x8
	.uahalf	0x4b2
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF27
	.byte	0x8
	.uahalf	0x4b3
	.uaword	0x385
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CPU3ESR0T"
	.byte	0x8
	.uahalf	0x4b4
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CPU3ESR1T"
	.byte	0x8
	.uahalf	0x4b5
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CPU3TRAP2T"
	.byte	0x8
	.uahalf	0x4b6
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CPU3SMUT"
	.byte	0x8
	.uahalf	0x4b7
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF22
	.byte	0x8
	.uahalf	0x4b8
	.uaword	0x385
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_TRAPDIS0_Bits"
	.byte	0x8
	.uahalf	0x4b9
	.uaword	0x4aee
	.uleb128 0xf
	.string	"_Ifx_SCU_TRAPDIS1_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x4bc
	.uaword	0x4d70
	.uleb128 0x10
	.uaword	.LASF0
	.byte	0x8
	.uahalf	0x4be
	.uaword	0x385
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0x8
	.uahalf	0x4bf
	.uaword	0x385
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF4
	.byte	0x8
	.uahalf	0x4c0
	.uaword	0x385
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF6
	.byte	0x8
	.uahalf	0x4c1
	.uaword	0x385
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF26
	.byte	0x8
	.uahalf	0x4c2
	.uaword	0x385
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_TRAPDIS1_Bits"
	.byte	0x8
	.uahalf	0x4c3
	.uaword	0x4cf5
	.uleb128 0xf
	.string	"_Ifx_SCU_TRAPSET_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x4c6
	.uaword	0x4e0f
	.uleb128 0xd
	.string	"ESR0T"
	.byte	0x8
	.uahalf	0x4c8
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"ESR1T"
	.byte	0x8
	.uahalf	0x4c9
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"TRAP2"
	.byte	0x8
	.uahalf	0x4ca
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"SMUT"
	.byte	0x8
	.uahalf	0x4cb
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0x8
	.uahalf	0x4cc
	.uaword	0x385
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_TRAPSET_Bits"
	.byte	0x8
	.uahalf	0x4cd
	.uaword	0x4d8e
	.uleb128 0xf
	.string	"_Ifx_SCU_TRAPSTAT_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x4d0
	.uaword	0x4eae
	.uleb128 0xd
	.string	"ESR0T"
	.byte	0x8
	.uahalf	0x4d2
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"ESR1T"
	.byte	0x8
	.uahalf	0x4d3
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"TRAP2"
	.byte	0x8
	.uahalf	0x4d4
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"SMUT"
	.byte	0x8
	.uahalf	0x4d5
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0x8
	.uahalf	0x4d6
	.uaword	0x385
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_TRAPSTAT_Bits"
	.byte	0x8
	.uahalf	0x4d7
	.uaword	0x4e2c
	.uleb128 0xf
	.string	"_Ifx_SCU_WDTCPU_CON0_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x4da
	.uaword	0x4f37
	.uleb128 0x10
	.uaword	.LASF15
	.byte	0x8
	.uahalf	0x4dc
	.uaword	0x1481
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"LCK"
	.byte	0x8
	.uahalf	0x4dd
	.uaword	0x1481
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PW"
	.byte	0x8
	.uahalf	0x4de
	.uaword	0x1481
	.byte	0x4
	.byte	0xe
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"REL"
	.byte	0x8
	.uahalf	0x4df
	.uaword	0x1481
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_WDTCPU_CON0_Bits"
	.byte	0x8
	.uahalf	0x4e0
	.uaword	0x4ecc
	.uleb128 0xf
	.string	"_Ifx_SCU_WDTCPU_CON1_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x4e3
	.uaword	0x5041
	.uleb128 0x10
	.uaword	.LASF0
	.byte	0x8
	.uahalf	0x4e5
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF16
	.byte	0x8
	.uahalf	0x4e6
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"IR0"
	.byte	0x8
	.uahalf	0x4e7
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DR"
	.byte	0x8
	.uahalf	0x4e8
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0x8
	.uahalf	0x4e9
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"IR1"
	.byte	0x8
	.uahalf	0x4ea
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"UR"
	.byte	0x8
	.uahalf	0x4eb
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PAR"
	.byte	0x8
	.uahalf	0x4ec
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"TCR"
	.byte	0x8
	.uahalf	0x4ed
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"TCTR"
	.byte	0x8
	.uahalf	0x4ee
	.uaword	0x385
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF26
	.byte	0x8
	.uahalf	0x4ef
	.uaword	0x385
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_WDTCPU_CON1_Bits"
	.byte	0x8
	.uahalf	0x4f0
	.uaword	0x4f58
	.uleb128 0xf
	.string	"_Ifx_SCU_WDTCPU_SR_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x4f3
	.uaword	0x5145
	.uleb128 0xd
	.string	"AE"
	.byte	0x8
	.uahalf	0x4f5
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"OE"
	.byte	0x8
	.uahalf	0x4f6
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"IS0"
	.byte	0x8
	.uahalf	0x4f7
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DS"
	.byte	0x8
	.uahalf	0x4f8
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"TO"
	.byte	0x8
	.uahalf	0x4f9
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"IS1"
	.byte	0x8
	.uahalf	0x4fa
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"US"
	.byte	0x8
	.uahalf	0x4fb
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PAS"
	.byte	0x8
	.uahalf	0x4fc
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"TCS"
	.byte	0x8
	.uahalf	0x4fd
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"TCT"
	.byte	0x8
	.uahalf	0x4fe
	.uaword	0x385
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"TIM"
	.byte	0x8
	.uahalf	0x4ff
	.uaword	0x385
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_WDTCPU_SR_Bits"
	.byte	0x8
	.uahalf	0x500
	.uaword	0x5062
	.uleb128 0xf
	.string	"_Ifx_SCU_WDTS_CON0_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x503
	.uaword	0x51cd
	.uleb128 0x10
	.uaword	.LASF15
	.byte	0x8
	.uahalf	0x505
	.uaword	0x1481
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"LCK"
	.byte	0x8
	.uahalf	0x506
	.uaword	0x1481
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PW"
	.byte	0x8
	.uahalf	0x507
	.uaword	0x1481
	.byte	0x4
	.byte	0xe
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"REL"
	.byte	0x8
	.uahalf	0x508
	.uaword	0x1481
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_WDTS_CON0_Bits"
	.byte	0x8
	.uahalf	0x509
	.uaword	0x5164
	.uleb128 0xf
	.string	"_Ifx_SCU_WDTS_CON1_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x50c
	.uaword	0x52d6
	.uleb128 0xd
	.string	"CLRIRF"
	.byte	0x8
	.uahalf	0x50e
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF16
	.byte	0x8
	.uahalf	0x50f
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"IR0"
	.byte	0x8
	.uahalf	0x510
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DR"
	.byte	0x8
	.uahalf	0x511
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0x8
	.uahalf	0x512
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"IR1"
	.byte	0x8
	.uahalf	0x513
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"UR"
	.byte	0x8
	.uahalf	0x514
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PAR"
	.byte	0x8
	.uahalf	0x515
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"TCR"
	.byte	0x8
	.uahalf	0x516
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"TCTR"
	.byte	0x8
	.uahalf	0x517
	.uaword	0x385
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF26
	.byte	0x8
	.uahalf	0x518
	.uaword	0x385
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_WDTS_CON1_Bits"
	.byte	0x8
	.uahalf	0x519
	.uaword	0x51ec
	.uleb128 0xf
	.string	"_Ifx_SCU_WDTS_SR_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x51c
	.uaword	0x53d6
	.uleb128 0xd
	.string	"AE"
	.byte	0x8
	.uahalf	0x51e
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"OE"
	.byte	0x8
	.uahalf	0x51f
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"IS0"
	.byte	0x8
	.uahalf	0x520
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DS"
	.byte	0x8
	.uahalf	0x521
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"TO"
	.byte	0x8
	.uahalf	0x522
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"IS1"
	.byte	0x8
	.uahalf	0x523
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"US"
	.byte	0x8
	.uahalf	0x524
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PAS"
	.byte	0x8
	.uahalf	0x525
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"TCS"
	.byte	0x8
	.uahalf	0x526
	.uaword	0x385
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"TCT"
	.byte	0x8
	.uahalf	0x527
	.uaword	0x385
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"TIM"
	.byte	0x8
	.uahalf	0x528
	.uaword	0x385
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_WDTS_SR_Bits"
	.byte	0x8
	.uahalf	0x529
	.uaword	0x52f5
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x531
	.uaword	0x541b
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x533
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x534
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x535
	.uaword	0x606
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_ACCEN00"
	.byte	0x8
	.uahalf	0x536
	.uaword	0x53f3
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x539
	.uaword	0x545b
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x53b
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x53c
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x53d
	.uaword	0x652
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_ACCEN01"
	.byte	0x8
	.uahalf	0x53e
	.uaword	0x5433
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x541
	.uaword	0x549b
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x543
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x544
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x545
	.uaword	0x8c3
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_ACCEN10"
	.byte	0x8
	.uahalf	0x546
	.uaword	0x5473
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x549
	.uaword	0x54db
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x54b
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x54c
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x54d
	.uaword	0x90f
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_ACCEN11"
	.byte	0x8
	.uahalf	0x54e
	.uaword	0x54b3
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x551
	.uaword	0x551b
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x553
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x554
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x555
	.uaword	0x9e2
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_ARSTDIS"
	.byte	0x8
	.uahalf	0x556
	.uaword	0x54f3
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x559
	.uaword	0x555b
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x55b
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x55c
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x55d
	.uaword	0xb03
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_CCUCON0"
	.byte	0x8
	.uahalf	0x55e
	.uaword	0x5533
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x561
	.uaword	0x559b
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x563
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x564
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x565
	.uaword	0xc44
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_CCUCON1"
	.byte	0x8
	.uahalf	0x566
	.uaword	0x5573
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x569
	.uaword	0x55db
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x56b
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x56c
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x56d
	.uaword	0xd47
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_CCUCON2"
	.byte	0x8
	.uahalf	0x56e
	.uaword	0x55b3
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x571
	.uaword	0x561b
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x573
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x574
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x575
	.uaword	0xebf
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_CCUCON3"
	.byte	0x8
	.uahalf	0x576
	.uaword	0x55f3
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x579
	.uaword	0x565b
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x57b
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x57c
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x57d
	.uaword	0xf79
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_CCUCON4"
	.byte	0x8
	.uahalf	0x57e
	.uaword	0x5633
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x581
	.uaword	0x569b
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x583
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x584
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x585
	.uaword	0x1023
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_CCUCON5"
	.byte	0x8
	.uahalf	0x586
	.uaword	0x5673
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x589
	.uaword	0x56db
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x58b
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x58c
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x58d
	.uaword	0x1088
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_CCUCON6"
	.byte	0x8
	.uahalf	0x58e
	.uaword	0x56b3
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x591
	.uaword	0x571b
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x593
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x594
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x595
	.uaword	0x10ed
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_CCUCON7"
	.byte	0x8
	.uahalf	0x596
	.uaword	0x56f3
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x599
	.uaword	0x575b
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x59b
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x59c
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x59d
	.uaword	0x1152
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_CCUCON8"
	.byte	0x8
	.uahalf	0x59e
	.uaword	0x5733
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x5a1
	.uaword	0x579b
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x5a3
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x5a4
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x5a5
	.uaword	0x11b7
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_CCUCON9"
	.byte	0x8
	.uahalf	0x5a6
	.uaword	0x5773
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x5a9
	.uaword	0x57db
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x5ab
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x5ac
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x5ad
	.uaword	0x12a0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_CHIPID"
	.byte	0x8
	.uahalf	0x5ae
	.uaword	0x57b3
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x5b1
	.uaword	0x581a
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x5b3
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x5b4
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x5b5
	.uaword	0x1397
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_DTSCLIM"
	.byte	0x8
	.uahalf	0x5b6
	.uaword	0x57f2
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x5b9
	.uaword	0x585a
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x5bb
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x5bc
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x5bd
	.uaword	0x13fc
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_DTSCSTAT"
	.byte	0x8
	.uahalf	0x5be
	.uaword	0x5832
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x5c1
	.uaword	0x589b
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x5c3
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x5c4
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x5c5
	.uaword	0x1486
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_EICON0"
	.byte	0x8
	.uahalf	0x5c6
	.uaword	0x5873
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x5c9
	.uaword	0x58da
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x5cb
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x5cc
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x5cd
	.uaword	0x153e
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_EICON1"
	.byte	0x8
	.uahalf	0x5ce
	.uaword	0x58b2
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x5d1
	.uaword	0x5919
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x5d3
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x5d4
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x5d5
	.uaword	0x16bb
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_EICR"
	.byte	0x8
	.uahalf	0x5d6
	.uaword	0x58f1
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x5d9
	.uaword	0x5956
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x5db
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x5dc
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x5dd
	.uaword	0x18a6
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_EIFILT"
	.byte	0x8
	.uahalf	0x5de
	.uaword	0x592e
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x5e1
	.uaword	0x5995
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x5e3
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x5e4
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x5e5
	.uaword	0x1991
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_EIFR"
	.byte	0x8
	.uahalf	0x5e6
	.uaword	0x596d
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x5e9
	.uaword	0x59d2
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x5eb
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x5ec
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x5ed
	.uaword	0x1a54
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_EISR"
	.byte	0x8
	.uahalf	0x5ee
	.uaword	0x59aa
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x5f1
	.uaword	0x5a0f
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x5f3
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x5f4
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x5f5
	.uaword	0x1b21
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_EMSR"
	.byte	0x8
	.uahalf	0x5f6
	.uaword	0x59e7
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x5f9
	.uaword	0x5a4c
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x5fb
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x5fc
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x5fd
	.uaword	0x1ba6
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_EMSSW"
	.byte	0x8
	.uahalf	0x5fe
	.uaword	0x5a24
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x601
	.uaword	0x5a8a
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x603
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x604
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x605
	.uaword	0x1c21
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_ESRCFGX_ESRCFGX"
	.byte	0x8
	.uahalf	0x606
	.uaword	0x5a62
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x609
	.uaword	0x5ad2
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x60b
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x60c
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x60d
	.uaword	0x1c9c
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_ESROCFG"
	.byte	0x8
	.uahalf	0x60e
	.uaword	0x5aaa
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x611
	.uaword	0x5b12
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x613
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x614
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x615
	.uaword	0x1d7e
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_EXTCON"
	.byte	0x8
	.uahalf	0x616
	.uaword	0x5aea
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x619
	.uaword	0x5b51
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x61b
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x61c
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x61d
	.uaword	0x1e28
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_FDR"
	.byte	0x8
	.uahalf	0x61e
	.uaword	0x5b29
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x621
	.uaword	0x5b8d
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x623
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x624
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x625
	.uaword	0x1fa1
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_FMR"
	.byte	0x8
	.uahalf	0x626
	.uaword	0x5b65
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x629
	.uaword	0x5bc9
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x62b
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x62c
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x62d
	.uaword	0x2018
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_ID"
	.byte	0x8
	.uahalf	0x62e
	.uaword	0x5ba1
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x631
	.uaword	0x5c04
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x633
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x634
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x635
	.uaword	0x220f
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_IGCR"
	.byte	0x8
	.uahalf	0x636
	.uaword	0x5bdc
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x639
	.uaword	0x5c41
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x63b
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x63c
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x63d
	.uaword	0x2278
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_IN"
	.byte	0x8
	.uahalf	0x63e
	.uaword	0x5c19
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x641
	.uaword	0x5c7c
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x643
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x644
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x645
	.uaword	0x2307
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_IOCR"
	.byte	0x8
	.uahalf	0x646
	.uaword	0x5c54
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x649
	.uaword	0x5cb9
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x64b
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x64c
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x64d
	.uaword	0x23f9
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_LBISTCTRL0"
	.byte	0x8
	.uahalf	0x64e
	.uaword	0x5c91
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x651
	.uaword	0x5cfc
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x653
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x654
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x655
	.uaword	0x24a3
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_LBISTCTRL1"
	.byte	0x8
	.uahalf	0x656
	.uaword	0x5cd4
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x659
	.uaword	0x5d3f
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x65b
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x65c
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x65d
	.uaword	0x250d
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_LBISTCTRL2"
	.byte	0x8
	.uahalf	0x65e
	.uaword	0x5d17
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x661
	.uaword	0x5d82
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x663
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x664
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x665
	.uaword	0x2568
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_LBISTCTRL3"
	.byte	0x8
	.uahalf	0x666
	.uaword	0x5d5a
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x669
	.uaword	0x5dc5
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x66b
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x66c
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x66d
	.uaword	0x2616
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_LCLCON0"
	.byte	0x8
	.uahalf	0x66e
	.uaword	0x5d9d
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x671
	.uaword	0x5e05
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x673
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x674
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x675
	.uaword	0x26c1
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_LCLCON1"
	.byte	0x8
	.uahalf	0x676
	.uaword	0x5ddd
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x679
	.uaword	0x5e45
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x67b
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x67c
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x67d
	.uaword	0x280e
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_LCLTEST"
	.byte	0x8
	.uahalf	0x67e
	.uaword	0x5e1d
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x681
	.uaword	0x5e85
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x683
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x684
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x685
	.uaword	0x2882
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_MANID"
	.byte	0x8
	.uahalf	0x686
	.uaword	0x5e5d
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x689
	.uaword	0x5ec3
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x68b
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x68c
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x68d
	.uaword	0x2927
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_OMR"
	.byte	0x8
	.uahalf	0x68e
	.uaword	0x5e9b
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x691
	.uaword	0x5eff
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x693
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x694
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x695
	.uaword	0x2adb
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_OSCCON"
	.byte	0x8
	.uahalf	0x696
	.uaword	0x5ed7
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x699
	.uaword	0x5f3e
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x69b
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x69c
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x69d
	.uaword	0x2b47
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_OUT"
	.byte	0x8
	.uahalf	0x69e
	.uaword	0x5f16
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x6a1
	.uaword	0x5f7a
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x6a3
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x6a4
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x6a5
	.uaword	0x2c93
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_OVCCON"
	.byte	0x8
	.uahalf	0x6a6
	.uaword	0x5f52
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x6a9
	.uaword	0x5fb9
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x6ab
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x6ac
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x6ad
	.uaword	0x2d57
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_OVCENABLE"
	.byte	0x8
	.uahalf	0x6ae
	.uaword	0x5f91
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x6b1
	.uaword	0x5ffb
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x6b3
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x6b4
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x6b5
	.uaword	0x2dce
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_PDISC"
	.byte	0x8
	.uahalf	0x6b6
	.uaword	0x5fd3
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x6b9
	.uaword	0x6039
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x6bb
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x6bc
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x6bd
	.uaword	0x2e5f
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_PDR"
	.byte	0x8
	.uahalf	0x6be
	.uaword	0x6011
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x6c1
	.uaword	0x6075
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x6c3
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x6c4
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x6c5
	.uaword	0x2f3f
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_PDRR"
	.byte	0x8
	.uahalf	0x6c6
	.uaword	0x604d
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x6c9
	.uaword	0x60b2
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x6cb
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x6cc
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x6cd
	.uaword	0x3027
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_PERPLLCON0"
	.byte	0x8
	.uahalf	0x6ce
	.uaword	0x608a
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x6d1
	.uaword	0x60f5
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x6d3
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x6d4
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x6d5
	.uaword	0x30b6
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_PERPLLCON1"
	.byte	0x8
	.uahalf	0x6d6
	.uaword	0x60cd
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x6d9
	.uaword	0x6138
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x6db
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x6dc
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x6dd
	.uaword	0x3192
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_PERPLLSTAT"
	.byte	0x8
	.uahalf	0x6de
	.uaword	0x6110
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x6e1
	.uaword	0x617b
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x6e3
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x6e4
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x6e5
	.uaword	0x3219
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_PMCSR0"
	.byte	0x8
	.uahalf	0x6e6
	.uaword	0x6153
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x6e9
	.uaword	0x61ba
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x6eb
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x6ec
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x6ed
	.uaword	0x329c
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_PMCSR1"
	.byte	0x8
	.uahalf	0x6ee
	.uaword	0x6192
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x6f1
	.uaword	0x61f9
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x6f3
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x6f4
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x6f5
	.uaword	0x331f
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_PMCSR2"
	.byte	0x8
	.uahalf	0x6f6
	.uaword	0x61d1
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x6f9
	.uaword	0x6238
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x6fb
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x6fc
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x6fd
	.uaword	0x33a2
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_PMCSR3"
	.byte	0x8
	.uahalf	0x6fe
	.uaword	0x6210
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x701
	.uaword	0x6277
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x703
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x704
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x705
	.uaword	0x3425
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_PMCSR4"
	.byte	0x8
	.uahalf	0x706
	.uaword	0x624f
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x709
	.uaword	0x62b6
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x70b
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x70c
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x70d
	.uaword	0x34a8
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_PMCSR5"
	.byte	0x8
	.uahalf	0x70e
	.uaword	0x628e
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x711
	.uaword	0x62f5
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x713
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x714
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x715
	.uaword	0x35ce
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_PMSTAT0"
	.byte	0x8
	.uahalf	0x716
	.uaword	0x62cd
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x719
	.uaword	0x6335
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x71b
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x71c
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x71d
	.uaword	0x36c1
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_PMSWCR1"
	.byte	0x8
	.uahalf	0x71e
	.uaword	0x630d
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x721
	.uaword	0x6375
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x723
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x724
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x725
	.uaword	0x3862
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_PMTRCSR0"
	.byte	0x8
	.uahalf	0x726
	.uaword	0x634d
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x729
	.uaword	0x63b6
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x72b
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x72c
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x72d
	.uaword	0x38db
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_PMTRCSR1"
	.byte	0x8
	.uahalf	0x72e
	.uaword	0x638e
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x731
	.uaword	0x63f7
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x733
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x734
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x735
	.uaword	0x39ce
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_PMTRCSR2"
	.byte	0x8
	.uahalf	0x736
	.uaword	0x63cf
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x739
	.uaword	0x6438
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x73b
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x73c
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x73d
	.uaword	0x3ad4
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_PMTRCSR3"
	.byte	0x8
	.uahalf	0x73e
	.uaword	0x6410
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x741
	.uaword	0x6479
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x743
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x744
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x745
	.uaword	0x3bee
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_RSTCON"
	.byte	0x8
	.uahalf	0x746
	.uaword	0x6451
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x749
	.uaword	0x64b8
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x74b
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x74c
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x74d
	.uaword	0x3d09
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_RSTCON2"
	.byte	0x8
	.uahalf	0x74e
	.uaword	0x6490
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x751
	.uaword	0x64f8
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x753
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x754
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x755
	.uaword	0x3d58
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_RSTCON3"
	.byte	0x8
	.uahalf	0x756
	.uaword	0x64d0
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x759
	.uaword	0x6538
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x75b
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x75c
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x75d
	.uaword	0x3fa2
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_RSTSTAT"
	.byte	0x8
	.uahalf	0x75e
	.uaword	0x6510
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x761
	.uaword	0x6578
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x763
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x764
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x765
	.uaword	0x4027
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_SEICON0"
	.byte	0x8
	.uahalf	0x766
	.uaword	0x6550
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x769
	.uaword	0x65b8
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x76b
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x76c
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x76d
	.uaword	0x40e1
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_SEICON1"
	.byte	0x8
	.uahalf	0x76e
	.uaword	0x6590
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x771
	.uaword	0x65f8
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x773
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x774
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x775
	.uaword	0x41a8
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_SEISR"
	.byte	0x8
	.uahalf	0x776
	.uaword	0x65d0
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x779
	.uaword	0x6636
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x77b
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x77c
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x77d
	.uaword	0x4241
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_STCON"
	.byte	0x8
	.uahalf	0x77e
	.uaword	0x660e
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x781
	.uaword	0x6674
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x783
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x784
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x785
	.uaword	0x428d
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_STMEM1"
	.byte	0x8
	.uahalf	0x786
	.uaword	0x664c
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x789
	.uaword	0x66b3
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x78b
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x78c
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x78d
	.uaword	0x42da
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_STMEM2"
	.byte	0x8
	.uahalf	0x78e
	.uaword	0x668b
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x791
	.uaword	0x66f2
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x793
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x794
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x795
	.uaword	0x4327
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_STMEM3"
	.byte	0x8
	.uahalf	0x796
	.uaword	0x66ca
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x799
	.uaword	0x6731
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x79b
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x79c
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x79d
	.uaword	0x4374
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_STMEM4"
	.byte	0x8
	.uahalf	0x79e
	.uaword	0x6709
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x7a1
	.uaword	0x6770
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x7a3
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x7a4
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x7a5
	.uaword	0x43c1
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_STMEM5"
	.byte	0x8
	.uahalf	0x7a6
	.uaword	0x6748
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x7a9
	.uaword	0x67af
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x7ab
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x7ac
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x7ad
	.uaword	0x440e
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_STMEM6"
	.byte	0x8
	.uahalf	0x7ae
	.uaword	0x6787
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x7b1
	.uaword	0x67ee
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x7b3
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x7b4
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x7b5
	.uaword	0x455b
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_STSTAT"
	.byte	0x8
	.uahalf	0x7b6
	.uaword	0x67c6
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x7b9
	.uaword	0x682d
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x7bb
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x7bc
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x7bd
	.uaword	0x45d4
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_SWAPCTRL"
	.byte	0x8
	.uahalf	0x7be
	.uaword	0x6805
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x7c1
	.uaword	0x686e
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x7c3
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x7c4
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x7c5
	.uaword	0x4672
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_SWRSTCON"
	.byte	0x8
	.uahalf	0x7c6
	.uaword	0x6846
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x7c9
	.uaword	0x68af
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x7cb
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x7cc
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x7cd
	.uaword	0x4770
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_SYSCON"
	.byte	0x8
	.uahalf	0x7ce
	.uaword	0x6887
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x7d1
	.uaword	0x68ee
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x7d3
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x7d4
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x7d5
	.uaword	0x4880
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_SYSPLLCON0"
	.byte	0x8
	.uahalf	0x7d6
	.uaword	0x68c6
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x7d9
	.uaword	0x6931
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x7db
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x7dc
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x7dd
	.uaword	0x48e9
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_SYSPLLCON1"
	.byte	0x8
	.uahalf	0x7de
	.uaword	0x6909
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x7e1
	.uaword	0x6974
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x7e3
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x7e4
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x7e5
	.uaword	0x4953
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_SYSPLLCON2"
	.byte	0x8
	.uahalf	0x7e6
	.uaword	0x694c
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x7e9
	.uaword	0x69b7
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x7eb
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x7ec
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x7ed
	.uaword	0x4a30
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_SYSPLLSTAT"
	.byte	0x8
	.uahalf	0x7ee
	.uaword	0x698f
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x7f1
	.uaword	0x69fa
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x7f3
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x7f4
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x7f5
	.uaword	0x4ad1
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_TRAPCLR"
	.byte	0x8
	.uahalf	0x7f6
	.uaword	0x69d2
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x7f9
	.uaword	0x6a3a
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x7fb
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x7fc
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x7fd
	.uaword	0x4cd7
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_TRAPDIS0"
	.byte	0x8
	.uahalf	0x7fe
	.uaword	0x6a12
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x801
	.uaword	0x6a7b
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x803
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x804
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x805
	.uaword	0x4d70
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_TRAPDIS1"
	.byte	0x8
	.uahalf	0x806
	.uaword	0x6a53
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x809
	.uaword	0x6abc
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x80b
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x80c
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x80d
	.uaword	0x4e0f
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_TRAPSET"
	.byte	0x8
	.uahalf	0x80e
	.uaword	0x6a94
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x811
	.uaword	0x6afc
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x813
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x814
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x815
	.uaword	0x4eae
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_TRAPSTAT"
	.byte	0x8
	.uahalf	0x816
	.uaword	0x6ad4
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x819
	.uaword	0x6b3d
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x81b
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x81c
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x81d
	.uaword	0x4f37
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_WDTCPU_CON0"
	.byte	0x8
	.uahalf	0x81e
	.uaword	0x6b15
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x821
	.uaword	0x6b81
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x823
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x824
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x825
	.uaword	0x5041
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_WDTCPU_CON1"
	.byte	0x8
	.uahalf	0x826
	.uaword	0x6b59
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x829
	.uaword	0x6bc5
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x82b
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x82c
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x82d
	.uaword	0x5145
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_WDTCPU_SR"
	.byte	0x8
	.uahalf	0x82e
	.uaword	0x6b9d
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x831
	.uaword	0x6c07
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x833
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x834
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x835
	.uaword	0x51cd
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_WDTS_CON0"
	.byte	0x8
	.uahalf	0x836
	.uaword	0x6bdf
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x839
	.uaword	0x6c49
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x83b
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x83c
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x83d
	.uaword	0x52d6
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_WDTS_CON1"
	.byte	0x8
	.uahalf	0x83e
	.uaword	0x6c21
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x841
	.uaword	0x6c8b
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x843
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x844
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x845
	.uaword	0x53d6
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_WDTS_SR"
	.byte	0x8
	.uahalf	0x846
	.uaword	0x6c63
	.uleb128 0xf
	.string	"_Ifx_SCU_ESRCFGX"
	.byte	0x4
	.byte	0x8
	.uahalf	0x852
	.uaword	0x6cd1
	.uleb128 0x14
	.string	"ESRCFGX"
	.byte	0x8
	.uahalf	0x854
	.uaword	0x5a8a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_ESRCFGX"
	.byte	0x8
	.uahalf	0x855
	.uaword	0x6ce9
	.uleb128 0x11
	.uaword	0x6ca3
	.uleb128 0xf
	.string	"_Ifx_SCU_WDTCPU"
	.byte	0xc
	.byte	0x8
	.uahalf	0x864
	.uaword	0x6d36
	.uleb128 0x14
	.string	"CON0"
	.byte	0x8
	.uahalf	0x866
	.uaword	0x6b3d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"CON1"
	.byte	0x8
	.uahalf	0x867
	.uaword	0x6b81
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x14
	.string	"SR"
	.byte	0x8
	.uahalf	0x868
	.uaword	0x6bc5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_WDTCPU"
	.byte	0x8
	.uahalf	0x869
	.uaword	0x6d4d
	.uleb128 0x11
	.uaword	0x6cee
	.uleb128 0xf
	.string	"_Ifx_SCU_WDTS"
	.byte	0xc
	.byte	0x8
	.uahalf	0x878
	.uaword	0x6d98
	.uleb128 0x14
	.string	"CON0"
	.byte	0x8
	.uahalf	0x87a
	.uaword	0x6c07
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"CON1"
	.byte	0x8
	.uahalf	0x87b
	.uaword	0x6c49
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x14
	.string	"SR"
	.byte	0x8
	.uahalf	0x87c
	.uaword	0x6c8b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU_WDTS"
	.byte	0x8
	.uahalf	0x87d
	.uaword	0x6dad
	.uleb128 0x11
	.uaword	0x6d52
	.uleb128 0x15
	.string	"_Ifx_SCU"
	.uahalf	0x400
	.byte	0x8
	.uahalf	0x88c
	.uaword	0x76b4
	.uleb128 0x16
	.uaword	.LASF0
	.byte	0x8
	.uahalf	0x88e
	.uaword	0x76b4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"ID"
	.byte	0x8
	.uahalf	0x88f
	.uaword	0x5bc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x14
	.string	"reserved_C"
	.byte	0x8
	.uahalf	0x890
	.uaword	0x76d0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x14
	.string	"OSCCON"
	.byte	0x8
	.uahalf	0x891
	.uaword	0x5eff
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x14
	.string	"SYSPLLSTAT"
	.byte	0x8
	.uahalf	0x892
	.uaword	0x69b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x14
	.string	"SYSPLLCON0"
	.byte	0x8
	.uahalf	0x893
	.uaword	0x68ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x14
	.string	"SYSPLLCON1"
	.byte	0x8
	.uahalf	0x894
	.uaword	0x6931
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x14
	.string	"SYSPLLCON2"
	.byte	0x8
	.uahalf	0x895
	.uaword	0x6974
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x14
	.string	"PERPLLSTAT"
	.byte	0x8
	.uahalf	0x896
	.uaword	0x6138
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x14
	.string	"PERPLLCON0"
	.byte	0x8
	.uahalf	0x897
	.uaword	0x60b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x14
	.string	"PERPLLCON1"
	.byte	0x8
	.uahalf	0x898
	.uaword	0x60f5
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x14
	.string	"CCUCON0"
	.byte	0x8
	.uahalf	0x899
	.uaword	0x555b
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x14
	.string	"CCUCON1"
	.byte	0x8
	.uahalf	0x89a
	.uaword	0x559b
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x14
	.string	"FDR"
	.byte	0x8
	.uahalf	0x89b
	.uaword	0x5b51
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x14
	.string	"EXTCON"
	.byte	0x8
	.uahalf	0x89c
	.uaword	0x5b12
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x14
	.string	"CCUCON2"
	.byte	0x8
	.uahalf	0x89d
	.uaword	0x55db
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x14
	.string	"CCUCON3"
	.byte	0x8
	.uahalf	0x89e
	.uaword	0x561b
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x14
	.string	"CCUCON4"
	.byte	0x8
	.uahalf	0x89f
	.uaword	0x565b
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x14
	.string	"CCUCON5"
	.byte	0x8
	.uahalf	0x8a0
	.uaword	0x569b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x14
	.string	"RSTSTAT"
	.byte	0x8
	.uahalf	0x8a1
	.uaword	0x6538
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x14
	.string	"reserved_54"
	.byte	0x8
	.uahalf	0x8a2
	.uaword	0x76d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x14
	.string	"RSTCON"
	.byte	0x8
	.uahalf	0x8a3
	.uaword	0x6479
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x14
	.string	"ARSTDIS"
	.byte	0x8
	.uahalf	0x8a4
	.uaword	0x551b
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x14
	.string	"SWRSTCON"
	.byte	0x8
	.uahalf	0x8a5
	.uaword	0x686e
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x14
	.string	"RSTCON2"
	.byte	0x8
	.uahalf	0x8a6
	.uaword	0x64b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x14
	.string	"RSTCON3"
	.byte	0x8
	.uahalf	0x8a7
	.uaword	0x64f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x14
	.string	"reserved_6C"
	.byte	0x8
	.uahalf	0x8a8
	.uaword	0x76d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x14
	.string	"ESRCFGX"
	.byte	0x8
	.uahalf	0x8a9
	.uaword	0x76f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x14
	.string	"ESROCFG"
	.byte	0x8
	.uahalf	0x8aa
	.uaword	0x5ad2
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x14
	.string	"SYSCON"
	.byte	0x8
	.uahalf	0x8ab
	.uaword	0x68af
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x14
	.string	"CCUCON6"
	.byte	0x8
	.uahalf	0x8ac
	.uaword	0x56db
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x14
	.string	"CCUCON7"
	.byte	0x8
	.uahalf	0x8ad
	.uaword	0x571b
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x14
	.string	"CCUCON8"
	.byte	0x8
	.uahalf	0x8ae
	.uaword	0x575b
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x14
	.string	"CCUCON9"
	.byte	0x8
	.uahalf	0x8af
	.uaword	0x579b
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x14
	.string	"reserved_90"
	.byte	0x8
	.uahalf	0x8b0
	.uaword	0x76f5
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x14
	.string	"PDR"
	.byte	0x8
	.uahalf	0x8b1
	.uaword	0x6039
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0x14
	.string	"IOCR"
	.byte	0x8
	.uahalf	0x8b2
	.uaword	0x5c7c
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x14
	.string	"OUT"
	.byte	0x8
	.uahalf	0x8b3
	.uaword	0x5f3e
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0x14
	.string	"OMR"
	.byte	0x8
	.uahalf	0x8b4
	.uaword	0x5ec3
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x14
	.string	"IN"
	.byte	0x8
	.uahalf	0x8b5
	.uaword	0x5c41
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0x14
	.string	"reserved_B0"
	.byte	0x8
	.uahalf	0x8b6
	.uaword	0x7705
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x14
	.string	"STSTAT"
	.byte	0x8
	.uahalf	0x8b7
	.uaword	0x67ee
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x14
	.string	"STCON"
	.byte	0x8
	.uahalf	0x8b8
	.uaword	0x6636
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0x14
	.string	"PMCSR0"
	.byte	0x8
	.uahalf	0x8b9
	.uaword	0x617b
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0x14
	.string	"PMCSR1"
	.byte	0x8
	.uahalf	0x8ba
	.uaword	0x61ba
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0x14
	.string	"PMCSR2"
	.byte	0x8
	.uahalf	0x8bb
	.uaword	0x61f9
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0x14
	.string	"PMCSR3"
	.byte	0x8
	.uahalf	0x8bc
	.uaword	0x6238
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0x14
	.string	"PMCSR4"
	.byte	0x8
	.uahalf	0x8bd
	.uaword	0x6277
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0x14
	.string	"PMCSR5"
	.byte	0x8
	.uahalf	0x8be
	.uaword	0x62b6
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0x14
	.string	"reserved_E0"
	.byte	0x8
	.uahalf	0x8bf
	.uaword	0x76d0
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0x14
	.string	"PMSTAT0"
	.byte	0x8
	.uahalf	0x8c0
	.uaword	0x62f5
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0x14
	.string	"PMSWCR1"
	.byte	0x8
	.uahalf	0x8c1
	.uaword	0x6335
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0x14
	.string	"reserved_EC"
	.byte	0x8
	.uahalf	0x8c2
	.uaword	0x7705
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0x14
	.string	"EMSR"
	.byte	0x8
	.uahalf	0x8c3
	.uaword	0x5a0f
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.uleb128 0x14
	.string	"EMSSW"
	.byte	0x8
	.uahalf	0x8c4
	.uaword	0x5a4c
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0x14
	.string	"DTSCSTAT"
	.byte	0x8
	.uahalf	0x8c5
	.uaword	0x585a
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0x14
	.string	"DTSCLIM"
	.byte	0x8
	.uahalf	0x8c6
	.uaword	0x581a
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0x14
	.string	"reserved_10C"
	.byte	0x8
	.uahalf	0x8c7
	.uaword	0x7715
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0x14
	.string	"TRAPDIS1"
	.byte	0x8
	.uahalf	0x8c8
	.uaword	0x6a7b
	.byte	0x3
	.byte	0x23
	.uleb128 0x120
	.uleb128 0x14
	.string	"TRAPSTAT"
	.byte	0x8
	.uahalf	0x8c9
	.uaword	0x6afc
	.byte	0x3
	.byte	0x23
	.uleb128 0x124
	.uleb128 0x14
	.string	"TRAPSET"
	.byte	0x8
	.uahalf	0x8ca
	.uaword	0x6abc
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x14
	.string	"TRAPCLR"
	.byte	0x8
	.uahalf	0x8cb
	.uaword	0x69fa
	.byte	0x3
	.byte	0x23
	.uleb128 0x12c
	.uleb128 0x14
	.string	"TRAPDIS0"
	.byte	0x8
	.uahalf	0x8cc
	.uaword	0x6a3a
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.uleb128 0x14
	.string	"LCLCON0"
	.byte	0x8
	.uahalf	0x8cd
	.uaword	0x5dc5
	.byte	0x3
	.byte	0x23
	.uleb128 0x134
	.uleb128 0x14
	.string	"LCLCON1"
	.byte	0x8
	.uahalf	0x8ce
	.uaword	0x5e05
	.byte	0x3
	.byte	0x23
	.uleb128 0x138
	.uleb128 0x14
	.string	"LCLTEST"
	.byte	0x8
	.uahalf	0x8cf
	.uaword	0x5e45
	.byte	0x3
	.byte	0x23
	.uleb128 0x13c
	.uleb128 0x14
	.string	"CHIPID"
	.byte	0x8
	.uahalf	0x8d0
	.uaword	0x57db
	.byte	0x3
	.byte	0x23
	.uleb128 0x140
	.uleb128 0x14
	.string	"MANID"
	.byte	0x8
	.uahalf	0x8d1
	.uaword	0x5e85
	.byte	0x3
	.byte	0x23
	.uleb128 0x144
	.uleb128 0x14
	.string	"reserved_148"
	.byte	0x8
	.uahalf	0x8d2
	.uaword	0x76d0
	.byte	0x3
	.byte	0x23
	.uleb128 0x148
	.uleb128 0x14
	.string	"SWAPCTRL"
	.byte	0x8
	.uahalf	0x8d3
	.uaword	0x682d
	.byte	0x3
	.byte	0x23
	.uleb128 0x14c
	.uleb128 0x14
	.string	"reserved_150"
	.byte	0x8
	.uahalf	0x8d4
	.uaword	0x7715
	.byte	0x3
	.byte	0x23
	.uleb128 0x150
	.uleb128 0x14
	.string	"LBISTCTRL0"
	.byte	0x8
	.uahalf	0x8d5
	.uaword	0x5cb9
	.byte	0x3
	.byte	0x23
	.uleb128 0x164
	.uleb128 0x14
	.string	"LBISTCTRL1"
	.byte	0x8
	.uahalf	0x8d6
	.uaword	0x5cfc
	.byte	0x3
	.byte	0x23
	.uleb128 0x168
	.uleb128 0x14
	.string	"LBISTCTRL2"
	.byte	0x8
	.uahalf	0x8d7
	.uaword	0x5d3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x16c
	.uleb128 0x14
	.string	"LBISTCTRL3"
	.byte	0x8
	.uahalf	0x8d8
	.uaword	0x5d82
	.byte	0x3
	.byte	0x23
	.uleb128 0x170
	.uleb128 0x14
	.string	"reserved_174"
	.byte	0x8
	.uahalf	0x8d9
	.uaword	0x7705
	.byte	0x3
	.byte	0x23
	.uleb128 0x174
	.uleb128 0x14
	.string	"STMEM1"
	.byte	0x8
	.uahalf	0x8da
	.uaword	0x6674
	.byte	0x3
	.byte	0x23
	.uleb128 0x184
	.uleb128 0x14
	.string	"STMEM2"
	.byte	0x8
	.uahalf	0x8db
	.uaword	0x66b3
	.byte	0x3
	.byte	0x23
	.uleb128 0x188
	.uleb128 0x14
	.string	"PDISC"
	.byte	0x8
	.uahalf	0x8dc
	.uaword	0x5ffb
	.byte	0x3
	.byte	0x23
	.uleb128 0x18c
	.uleb128 0x14
	.string	"reserved_190"
	.byte	0x8
	.uahalf	0x8dd
	.uaword	0x76b4
	.byte	0x3
	.byte	0x23
	.uleb128 0x190
	.uleb128 0x14
	.string	"PMTRCSR0"
	.byte	0x8
	.uahalf	0x8de
	.uaword	0x6375
	.byte	0x3
	.byte	0x23
	.uleb128 0x198
	.uleb128 0x14
	.string	"PMTRCSR1"
	.byte	0x8
	.uahalf	0x8df
	.uaword	0x63b6
	.byte	0x3
	.byte	0x23
	.uleb128 0x19c
	.uleb128 0x14
	.string	"PMTRCSR2"
	.byte	0x8
	.uahalf	0x8e0
	.uaword	0x63f7
	.byte	0x3
	.byte	0x23
	.uleb128 0x1a0
	.uleb128 0x14
	.string	"PMTRCSR3"
	.byte	0x8
	.uahalf	0x8e1
	.uaword	0x6438
	.byte	0x3
	.byte	0x23
	.uleb128 0x1a4
	.uleb128 0x14
	.string	"reserved_1A8"
	.byte	0x8
	.uahalf	0x8e2
	.uaword	0x7725
	.byte	0x3
	.byte	0x23
	.uleb128 0x1a8
	.uleb128 0x14
	.string	"STMEM3"
	.byte	0x8
	.uahalf	0x8e3
	.uaword	0x66f2
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c0
	.uleb128 0x14
	.string	"STMEM4"
	.byte	0x8
	.uahalf	0x8e4
	.uaword	0x6731
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c4
	.uleb128 0x14
	.string	"STMEM5"
	.byte	0x8
	.uahalf	0x8e5
	.uaword	0x6770
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c8
	.uleb128 0x14
	.string	"STMEM6"
	.byte	0x8
	.uahalf	0x8e6
	.uaword	0x67af
	.byte	0x3
	.byte	0x23
	.uleb128 0x1cc
	.uleb128 0x14
	.string	"reserved_1D0"
	.byte	0x8
	.uahalf	0x8e7
	.uaword	0x7705
	.byte	0x3
	.byte	0x23
	.uleb128 0x1d0
	.uleb128 0x14
	.string	"OVCENABLE"
	.byte	0x8
	.uahalf	0x8e8
	.uaword	0x5fb9
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e0
	.uleb128 0x14
	.string	"OVCCON"
	.byte	0x8
	.uahalf	0x8e9
	.uaword	0x5f7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e4
	.uleb128 0x14
	.string	"reserved_1E8"
	.byte	0x8
	.uahalf	0x8ea
	.uaword	0x7735
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e8
	.uleb128 0x14
	.string	"EIFILT"
	.byte	0x8
	.uahalf	0x8eb
	.uaword	0x5956
	.byte	0x3
	.byte	0x23
	.uleb128 0x20c
	.uleb128 0x14
	.string	"EICR"
	.byte	0x8
	.uahalf	0x8ec
	.uaword	0x7745
	.byte	0x3
	.byte	0x23
	.uleb128 0x210
	.uleb128 0x14
	.string	"EIFR"
	.byte	0x8
	.uahalf	0x8ed
	.uaword	0x5995
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0x14
	.string	"FMR"
	.byte	0x8
	.uahalf	0x8ee
	.uaword	0x5b8d
	.byte	0x3
	.byte	0x23
	.uleb128 0x224
	.uleb128 0x14
	.string	"PDRR"
	.byte	0x8
	.uahalf	0x8ef
	.uaword	0x6075
	.byte	0x3
	.byte	0x23
	.uleb128 0x228
	.uleb128 0x14
	.string	"IGCR"
	.byte	0x8
	.uahalf	0x8f0
	.uaword	0x7755
	.byte	0x3
	.byte	0x23
	.uleb128 0x22c
	.uleb128 0x14
	.string	"reserved_23C"
	.byte	0x8
	.uahalf	0x8f1
	.uaword	0x7705
	.byte	0x3
	.byte	0x23
	.uleb128 0x23c
	.uleb128 0x14
	.string	"WDTCPU"
	.byte	0x8
	.uahalf	0x8f2
	.uaword	0x7775
	.byte	0x3
	.byte	0x23
	.uleb128 0x24c
	.uleb128 0x14
	.string	"reserved_27C"
	.byte	0x8
	.uahalf	0x8f3
	.uaword	0x777a
	.byte	0x3
	.byte	0x23
	.uleb128 0x27c
	.uleb128 0x14
	.string	"EICON0"
	.byte	0x8
	.uahalf	0x8f4
	.uaword	0x589b
	.byte	0x3
	.byte	0x23
	.uleb128 0x29c
	.uleb128 0x14
	.string	"EICON1"
	.byte	0x8
	.uahalf	0x8f5
	.uaword	0x58da
	.byte	0x3
	.byte	0x23
	.uleb128 0x2a0
	.uleb128 0x14
	.string	"EISR"
	.byte	0x8
	.uahalf	0x8f6
	.uaword	0x59d2
	.byte	0x3
	.byte	0x23
	.uleb128 0x2a4
	.uleb128 0x14
	.string	"WDTS"
	.byte	0x8
	.uahalf	0x8f7
	.uaword	0x6d98
	.byte	0x3
	.byte	0x23
	.uleb128 0x2a8
	.uleb128 0x14
	.string	"SEICON0"
	.byte	0x8
	.uahalf	0x8f8
	.uaword	0x6578
	.byte	0x3
	.byte	0x23
	.uleb128 0x2b4
	.uleb128 0x14
	.string	"SEICON1"
	.byte	0x8
	.uahalf	0x8f9
	.uaword	0x65b8
	.byte	0x3
	.byte	0x23
	.uleb128 0x2b8
	.uleb128 0x14
	.string	"SEISR"
	.byte	0x8
	.uahalf	0x8fa
	.uaword	0x65f8
	.byte	0x3
	.byte	0x23
	.uleb128 0x2bc
	.uleb128 0x14
	.string	"reserved_2C0"
	.byte	0x8
	.uahalf	0x8fb
	.uaword	0x778a
	.byte	0x3
	.byte	0x23
	.uleb128 0x2c0
	.uleb128 0x14
	.string	"ACCEN11"
	.byte	0x8
	.uahalf	0x8fc
	.uaword	0x54db
	.byte	0x3
	.byte	0x23
	.uleb128 0x3f0
	.uleb128 0x14
	.string	"ACCEN10"
	.byte	0x8
	.uahalf	0x8fd
	.uaword	0x549b
	.byte	0x3
	.byte	0x23
	.uleb128 0x3f4
	.uleb128 0x14
	.string	"ACCEN01"
	.byte	0x8
	.uahalf	0x8fe
	.uaword	0x545b
	.byte	0x3
	.byte	0x23
	.uleb128 0x3f8
	.uleb128 0x14
	.string	"ACCEN00"
	.byte	0x8
	.uahalf	0x8ff
	.uaword	0x541b
	.byte	0x3
	.byte	0x23
	.uleb128 0x3fc
	.byte	0
	.uleb128 0x17
	.uaword	0x370
	.uaword	0x76c4
	.uleb128 0x18
	.uaword	0x76c4
	.byte	0x7
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x17
	.uaword	0x370
	.uaword	0x76e0
	.uleb128 0x18
	.uaword	0x76c4
	.byte	0x3
	.byte	0
	.uleb128 0x17
	.uaword	0x6cd1
	.uaword	0x76f0
	.uleb128 0x18
	.uaword	0x76c4
	.byte	0x1
	.byte	0
	.uleb128 0x11
	.uaword	0x76e0
	.uleb128 0x17
	.uaword	0x370
	.uaword	0x7705
	.uleb128 0x18
	.uaword	0x76c4
	.byte	0xb
	.byte	0
	.uleb128 0x17
	.uaword	0x370
	.uaword	0x7715
	.uleb128 0x18
	.uaword	0x76c4
	.byte	0xf
	.byte	0
	.uleb128 0x17
	.uaword	0x370
	.uaword	0x7725
	.uleb128 0x18
	.uaword	0x76c4
	.byte	0x13
	.byte	0
	.uleb128 0x17
	.uaword	0x370
	.uaword	0x7735
	.uleb128 0x18
	.uaword	0x76c4
	.byte	0x17
	.byte	0
	.uleb128 0x17
	.uaword	0x370
	.uaword	0x7745
	.uleb128 0x18
	.uaword	0x76c4
	.byte	0x23
	.byte	0
	.uleb128 0x17
	.uaword	0x5919
	.uaword	0x7755
	.uleb128 0x18
	.uaword	0x76c4
	.byte	0x3
	.byte	0
	.uleb128 0x17
	.uaword	0x5c04
	.uaword	0x7765
	.uleb128 0x18
	.uaword	0x76c4
	.byte	0x3
	.byte	0
	.uleb128 0x17
	.uaword	0x6d36
	.uaword	0x7775
	.uleb128 0x18
	.uaword	0x76c4
	.byte	0x3
	.byte	0
	.uleb128 0x11
	.uaword	0x7765
	.uleb128 0x17
	.uaword	0x370
	.uaword	0x778a
	.uleb128 0x18
	.uaword	0x76c4
	.byte	0x1f
	.byte	0
	.uleb128 0x17
	.uaword	0x370
	.uaword	0x779b
	.uleb128 0x19
	.uaword	0x76c4
	.uahalf	0x12f
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SCU"
	.byte	0x8
	.uahalf	0x900
	.uaword	0x77ab
	.uleb128 0x11
	.uaword	0x6db2
	.uleb128 0x1a
	.byte	0x1
	.byte	0xa
	.byte	0x88
	.uaword	0x7811
	.uleb128 0x4
	.string	"IfxCpu_Index_0"
	.sleb128 0
	.uleb128 0x4
	.string	"IfxCpu_Index_1"
	.sleb128 1
	.uleb128 0x4
	.string	"IfxCpu_Index_2"
	.sleb128 2
	.uleb128 0x4
	.string	"IfxCpu_Index_3"
	.sleb128 3
	.uleb128 0x4
	.string	"IfxCpu_Index_none"
	.sleb128 4
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.byte	0xa
	.byte	0x9e
	.uaword	0x7890
	.uleb128 0x4
	.string	"IfxCpu_ResourceCpu_0"
	.sleb128 0
	.uleb128 0x4
	.string	"IfxCpu_ResourceCpu_1"
	.sleb128 1
	.uleb128 0x4
	.string	"IfxCpu_ResourceCpu_2"
	.sleb128 2
	.uleb128 0x4
	.string	"IfxCpu_ResourceCpu_3"
	.sleb128 3
	.uleb128 0x4
	.string	"IfxCpu_ResourceCpu_none"
	.sleb128 4
	.byte	0
	.uleb128 0x5
	.string	"IfxCpu_ResourceCpu"
	.byte	0xa
	.byte	0xa4
	.uaword	0x7811
	.uleb128 0xa
	.string	"_Ifx_STM_TIM0_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0xd8
	.uaword	0x78dc
	.uleb128 0xb
	.string	"STM_31_0"
	.byte	0xb
	.byte	0xda
	.uaword	0x385
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_STM_TIM0_Bits"
	.byte	0xb
	.byte	0xdb
	.uaword	0x78aa
	.uleb128 0x12
	.byte	0x4
	.byte	0xb
	.uahalf	0x17d
	.uaword	0x791d
	.uleb128 0x13
	.string	"U"
	.byte	0xb
	.uahalf	0x17f
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0xb
	.uahalf	0x180
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0xb
	.uahalf	0x181
	.uaword	0x78dc
	.byte	0
	.uleb128 0xe
	.string	"Ifx_STM_TIM0"
	.byte	0xb
	.uahalf	0x182
	.uaword	0x78f5
	.uleb128 0x6
	.byte	0x4
	.uaword	0x779b
	.uleb128 0xa
	.string	"_Ifx_SMU_AG_Bits"
	.byte	0x4
	.byte	0xc
	.byte	0xdc
	.uaword	0x7b88
	.uleb128 0xb
	.string	"SF0"
	.byte	0xc
	.byte	0xde
	.uaword	0x1481
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"SF1"
	.byte	0xc
	.byte	0xdf
	.uaword	0x1481
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"SF2"
	.byte	0xc
	.byte	0xe0
	.uaword	0x1481
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"SF3"
	.byte	0xc
	.byte	0xe1
	.uaword	0x1481
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"SF4"
	.byte	0xc
	.byte	0xe2
	.uaword	0x1481
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"SF5"
	.byte	0xc
	.byte	0xe3
	.uaword	0x1481
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"SF6"
	.byte	0xc
	.byte	0xe4
	.uaword	0x1481
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"SF7"
	.byte	0xc
	.byte	0xe5
	.uaword	0x1481
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"SF8"
	.byte	0xc
	.byte	0xe6
	.uaword	0x1481
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"SF9"
	.byte	0xc
	.byte	0xe7
	.uaword	0x1481
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"SF10"
	.byte	0xc
	.byte	0xe8
	.uaword	0x1481
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"SF11"
	.byte	0xc
	.byte	0xe9
	.uaword	0x1481
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"SF12"
	.byte	0xc
	.byte	0xea
	.uaword	0x1481
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"SF13"
	.byte	0xc
	.byte	0xeb
	.uaword	0x1481
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"SF14"
	.byte	0xc
	.byte	0xec
	.uaword	0x1481
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"SF15"
	.byte	0xc
	.byte	0xed
	.uaword	0x1481
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"SF16"
	.byte	0xc
	.byte	0xee
	.uaword	0x1481
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"SF17"
	.byte	0xc
	.byte	0xef
	.uaword	0x1481
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"SF18"
	.byte	0xc
	.byte	0xf0
	.uaword	0x1481
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"SF19"
	.byte	0xc
	.byte	0xf1
	.uaword	0x1481
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"SF20"
	.byte	0xc
	.byte	0xf2
	.uaword	0x1481
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"SF21"
	.byte	0xc
	.byte	0xf3
	.uaword	0x1481
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"SF22"
	.byte	0xc
	.byte	0xf4
	.uaword	0x1481
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"SF23"
	.byte	0xc
	.byte	0xf5
	.uaword	0x1481
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"SF24"
	.byte	0xc
	.byte	0xf6
	.uaword	0x1481
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"SF25"
	.byte	0xc
	.byte	0xf7
	.uaword	0x1481
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"SF26"
	.byte	0xc
	.byte	0xf8
	.uaword	0x1481
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"SF27"
	.byte	0xc
	.byte	0xf9
	.uaword	0x1481
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"SF28"
	.byte	0xc
	.byte	0xfa
	.uaword	0x1481
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"SF29"
	.byte	0xc
	.byte	0xfb
	.uaword	0x1481
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"SF30"
	.byte	0xc
	.byte	0xfc
	.uaword	0x1481
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"SF31"
	.byte	0xc
	.byte	0xfd
	.uaword	0x1481
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SMU_AG_Bits"
	.byte	0xc
	.byte	0xfe
	.uaword	0x7938
	.uleb128 0xf
	.string	"_Ifx_SMU_AGCF_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x111
	.uaword	0x7e12
	.uleb128 0xd
	.string	"CF0"
	.byte	0xc
	.uahalf	0x113
	.uaword	0x1481
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CF1"
	.byte	0xc
	.uahalf	0x114
	.uaword	0x1481
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CF2"
	.byte	0xc
	.uahalf	0x115
	.uaword	0x1481
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CF3"
	.byte	0xc
	.uahalf	0x116
	.uaword	0x1481
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CF4"
	.byte	0xc
	.uahalf	0x117
	.uaword	0x1481
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CF5"
	.byte	0xc
	.uahalf	0x118
	.uaword	0x1481
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CF6"
	.byte	0xc
	.uahalf	0x119
	.uaword	0x1481
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CF7"
	.byte	0xc
	.uahalf	0x11a
	.uaword	0x1481
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CF8"
	.byte	0xc
	.uahalf	0x11b
	.uaword	0x1481
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CF9"
	.byte	0xc
	.uahalf	0x11c
	.uaword	0x1481
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CF10"
	.byte	0xc
	.uahalf	0x11d
	.uaword	0x1481
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CF11"
	.byte	0xc
	.uahalf	0x11e
	.uaword	0x1481
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CF12"
	.byte	0xc
	.uahalf	0x11f
	.uaword	0x1481
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CF13"
	.byte	0xc
	.uahalf	0x120
	.uaword	0x1481
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CF14"
	.byte	0xc
	.uahalf	0x121
	.uaword	0x1481
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CF15"
	.byte	0xc
	.uahalf	0x122
	.uaword	0x1481
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CF16"
	.byte	0xc
	.uahalf	0x123
	.uaword	0x1481
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CF17"
	.byte	0xc
	.uahalf	0x124
	.uaword	0x1481
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CF18"
	.byte	0xc
	.uahalf	0x125
	.uaword	0x1481
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CF19"
	.byte	0xc
	.uahalf	0x126
	.uaword	0x1481
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CF20"
	.byte	0xc
	.uahalf	0x127
	.uaword	0x1481
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CF21"
	.byte	0xc
	.uahalf	0x128
	.uaword	0x1481
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CF22"
	.byte	0xc
	.uahalf	0x129
	.uaword	0x1481
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CF23"
	.byte	0xc
	.uahalf	0x12a
	.uaword	0x1481
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CF24"
	.byte	0xc
	.uahalf	0x12b
	.uaword	0x1481
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CF25"
	.byte	0xc
	.uahalf	0x12c
	.uaword	0x1481
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CF26"
	.byte	0xc
	.uahalf	0x12d
	.uaword	0x1481
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CF27"
	.byte	0xc
	.uahalf	0x12e
	.uaword	0x1481
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CF28"
	.byte	0xc
	.uahalf	0x12f
	.uaword	0x1481
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CF29"
	.byte	0xc
	.uahalf	0x130
	.uaword	0x1481
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CF30"
	.byte	0xc
	.uahalf	0x131
	.uaword	0x1481
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CF31"
	.byte	0xc
	.uahalf	0x132
	.uaword	0x1481
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SMU_AGCF_Bits"
	.byte	0xc
	.uahalf	0x133
	.uaword	0x7b9f
	.uleb128 0xf
	.string	"_Ifx_SMU_CMD_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x165
	.uaword	0x7e7e
	.uleb128 0xd
	.string	"CMD"
	.byte	0xc
	.uahalf	0x167
	.uaword	0x1481
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"ARG"
	.byte	0xc
	.uahalf	0x168
	.uaword	0x1481
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF4
	.byte	0xc
	.uahalf	0x169
	.uaword	0x1481
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SMU_CMD_Bits"
	.byte	0xc
	.uahalf	0x16a
	.uaword	0x7e2c
	.uleb128 0xf
	.string	"_Ifx_SMU_KEYS_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x187
	.uaword	0x7ef0
	.uleb128 0xd
	.string	"CFGLCK"
	.byte	0xc
	.uahalf	0x189
	.uaword	0x1481
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PERLCK"
	.byte	0xc
	.uahalf	0x18a
	.uaword	0x1481
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF26
	.byte	0xc
	.uahalf	0x18b
	.uaword	0x1481
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SMU_KEYS_Bits"
	.byte	0xc
	.uahalf	0x18c
	.uaword	0x7e97
	.uleb128 0x12
	.byte	0x4
	.byte	0xc
	.uahalf	0x294
	.uaword	0x7f32
	.uleb128 0x13
	.string	"U"
	.byte	0xc
	.uahalf	0x296
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0xc
	.uahalf	0x297
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0xc
	.uahalf	0x298
	.uaword	0x7b88
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SMU_AG"
	.byte	0xc
	.uahalf	0x299
	.uaword	0x7f0a
	.uleb128 0x12
	.byte	0x4
	.byte	0xc
	.uahalf	0x2a4
	.uaword	0x7f6d
	.uleb128 0x13
	.string	"U"
	.byte	0xc
	.uahalf	0x2a6
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0xc
	.uahalf	0x2a7
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0xc
	.uahalf	0x2a8
	.uaword	0x7e12
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SMU_AGCF"
	.byte	0xc
	.uahalf	0x2a9
	.uaword	0x7f45
	.uleb128 0x12
	.byte	0x4
	.byte	0xc
	.uahalf	0x2bc
	.uaword	0x7faa
	.uleb128 0x13
	.string	"U"
	.byte	0xc
	.uahalf	0x2be
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0xc
	.uahalf	0x2bf
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0xc
	.uahalf	0x2c0
	.uaword	0x7e7e
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SMU_CMD"
	.byte	0xc
	.uahalf	0x2c1
	.uaword	0x7f82
	.uleb128 0x12
	.byte	0x4
	.byte	0xc
	.uahalf	0x2dc
	.uaword	0x7fe6
	.uleb128 0x13
	.string	"U"
	.byte	0xc
	.uahalf	0x2de
	.uaword	0x385
	.uleb128 0x13
	.string	"I"
	.byte	0xc
	.uahalf	0x2df
	.uaword	0x39b
	.uleb128 0x13
	.string	"B"
	.byte	0xc
	.uahalf	0x2e0
	.uaword	0x7ef0
	.byte	0
	.uleb128 0xe
	.string	"Ifx_SMU_KEYS"
	.byte	0xc
	.uahalf	0x2e1
	.uaword	0x7fbe
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.uahalf	0x130
	.uaword	0x8047
	.uleb128 0x4
	.string	"IfxScuCcu_Fsource_0"
	.sleb128 0
	.uleb128 0x4
	.string	"IfxScuCcu_Fsource_1"
	.sleb128 1
	.uleb128 0x4
	.string	"IfxScuCcu_Fsource_2"
	.sleb128 2
	.byte	0
	.uleb128 0xe
	.string	"IfxScuCcu_Fsource"
	.byte	0x2
	.uahalf	0x134
	.uaword	0x7ffb
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.uahalf	0x160
	.uaword	0x816a
	.uleb128 0x4
	.string	"IfxScuCcu_ModulationAmplitude_0p5"
	.sleb128 0
	.uleb128 0x4
	.string	"IfxScuCcu_ModulationAmplitude_1p0"
	.sleb128 1
	.uleb128 0x4
	.string	"IfxScuCcu_ModulationAmplitude_1p25"
	.sleb128 2
	.uleb128 0x4
	.string	"IfxScuCcu_ModulationAmplitude_1p5"
	.sleb128 3
	.uleb128 0x4
	.string	"IfxScuCcu_ModulationAmplitude_2p0"
	.sleb128 4
	.uleb128 0x4
	.string	"IfxScuCcu_ModulationAmplitude_2p5"
	.sleb128 5
	.uleb128 0x4
	.string	"IfxScuCcu_ModulationAmplitude_count"
	.sleb128 6
	.byte	0
	.uleb128 0xe
	.string	"IfxScuCcu_ModulationAmplitude"
	.byte	0x2
	.uahalf	0x168
	.uaword	0x8061
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.uahalf	0x202
	.uaword	0x8217
	.uleb128 0x4
	.string	"IfxScuCcu_PllInputClockSelection_fOsc1"
	.sleb128 0
	.uleb128 0x4
	.string	"IfxScuCcu_PllInputClockSelection_fOsc0"
	.sleb128 1
	.uleb128 0x4
	.string	"IfxScuCcu_PllInputClockSelection_fSysclk"
	.sleb128 2
	.byte	0
	.uleb128 0xe
	.string	"IfxScuCcu_PllInputClockSelection"
	.byte	0x2
	.uahalf	0x206
	.uaword	0x8190
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.uahalf	0x217
	.uaword	0x8286
	.uleb128 0x4
	.string	"IfxScuCcu_Clk0Mode_normal"
	.sleb128 1
	.uleb128 0x4
	.string	"IfxScuCcu_Clk0Mode_fractional"
	.sleb128 2
	.byte	0
	.uleb128 0xe
	.string	"IfxScuCcu_Clk0Mode"
	.byte	0x2
	.uahalf	0x21a
	.uaword	0x8240
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.uahalf	0x21f
	.uaword	0x82f3
	.uleb128 0x4
	.string	"IfxScuCcu_Clk1Negation_inverted"
	.sleb128 0
	.uleb128 0x4
	.string	"IfxScuCcu_Clk1Negation_Clk1Negation"
	.sleb128 1
	.byte	0
	.uleb128 0xe
	.string	"IfxScuCcu_Clk1Negation"
	.byte	0x2
	.uahalf	0x222
	.uaword	0x82a1
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.uahalf	0x227
	.uaword	0x8480
	.uleb128 0x4
	.string	"IfxScuCcu_ClkSel0_fOUT"
	.sleb128 0
	.uleb128 0x4
	.string	"IfxScuCcu_ClkSel0_fPLL0"
	.sleb128 1
	.uleb128 0x4
	.string	"IfxScuCcu_ClkSel0_fPLL1"
	.sleb128 2
	.uleb128 0x4
	.string	"IfxScuCcu_ClkSel0_fOSC0"
	.sleb128 3
	.uleb128 0x4
	.string	"IfxScuCcu_ClkSel0_fBACK"
	.sleb128 4
	.uleb128 0x4
	.string	"IfxScuCcu_ClkSel0_fPLL2"
	.sleb128 5
	.uleb128 0x4
	.string	"IfxScuCcu_ClkSel0_fBBB"
	.sleb128 6
	.uleb128 0x4
	.string	"IfxScuCcu_ClkSel0_fSRI"
	.sleb128 8
	.uleb128 0x4
	.string	"IfxScuCcu_ClkSel0_fSPB"
	.sleb128 9
	.uleb128 0x4
	.string	"IfxScuCcu_ClkSel0_fFSI"
	.sleb128 10
	.uleb128 0x4
	.string	"IfxScuCcu_ClkSel0_fSTM"
	.sleb128 11
	.uleb128 0x4
	.string	"IfxScuCcu_ClkSel0_fGTM"
	.sleb128 12
	.uleb128 0x4
	.string	"IfxScuCcu_ClkSel0_fFSI2"
	.sleb128 14
	.uleb128 0x4
	.string	"IfxScuCcu_ClkSel0_fMT0"
	.sleb128 15
	.byte	0
	.uleb128 0xe
	.string	"IfxScuCcu_ClkSel0"
	.byte	0x2
	.uahalf	0x236
	.uaword	0x8312
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.uahalf	0x23b
	.uaword	0x8629
	.uleb128 0x4
	.string	"IfxScuCcu_ClkSel1_fOUT"
	.sleb128 0
	.uleb128 0x4
	.string	"IfxScuCcu_ClkSel1_fPLL0"
	.sleb128 1
	.uleb128 0x4
	.string	"IfxScuCcu_ClkSel1_fPLL1"
	.sleb128 2
	.uleb128 0x4
	.string	"IfxScuCcu_ClkSel1_fEBU"
	.sleb128 3
	.uleb128 0x4
	.string	"IfxScuCcu_ClkSel1_fBACK"
	.sleb128 4
	.uleb128 0x4
	.string	"IfxScuCcu_ClkSel1_fMCAN"
	.sleb128 5
	.uleb128 0x4
	.string	"IfxScuCcu_ClkSel1_fADC"
	.sleb128 6
	.uleb128 0x4
	.string	"IfxScuCcu_ClkSel1_fQSPI"
	.sleb128 7
	.uleb128 0x4
	.string	"IfxScuCcu_ClkSel1_fSRI"
	.sleb128 8
	.uleb128 0x4
	.string	"IfxScuCcu_ClkSel1_fSPB"
	.sleb128 9
	.uleb128 0x4
	.string	"IfxScuCcu_ClkSel1_fI2C"
	.sleb128 10
	.uleb128 0x4
	.string	"IfxScuCcu_ClkSel1_fMSC"
	.sleb128 11
	.uleb128 0x4
	.string	"IfxScuCcu_ClkSel1_fERAY"
	.sleb128 12
	.uleb128 0x4
	.string	"IfxScuCcu_ClkSel1_fASCLINF"
	.sleb128 13
	.uleb128 0x4
	.string	"IfxScuCcu_ClkSel1_fASCLINS"
	.sleb128 14
	.byte	0
	.uleb128 0xe
	.string	"IfxScuCcu_ClkSel1"
	.byte	0x2
	.uahalf	0x24b
	.uaword	0x849a
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.uahalf	0x250
	.uaword	0x8682
	.uleb128 0x4
	.string	"IfxScuCcu_ModEn_disabled"
	.sleb128 0
	.uleb128 0x4
	.string	"IfxScuCcu_ModEn_enabled"
	.sleb128 1
	.byte	0
	.uleb128 0xe
	.string	"IfxScuCcu_ModEn"
	.byte	0x2
	.uahalf	0x253
	.uaword	0x8643
	.uleb128 0x1b
	.byte	0x6
	.byte	0x2
	.uahalf	0x25e
	.uaword	0x8701
	.uleb128 0x16
	.uaword	.LASF34
	.byte	0x2
	.uahalf	0x260
	.uaword	0x292
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x16
	.uaword	.LASF35
	.byte	0x2
	.uahalf	0x261
	.uaword	0x292
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x16
	.uaword	.LASF36
	.byte	0x2
	.uahalf	0x262
	.uaword	0x292
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x14
	.string	"k3Divider"
	.byte	0x2
	.uahalf	0x263
	.uaword	0x292
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x14
	.string	"k3DividerBypass"
	.byte	0x2
	.uahalf	0x264
	.uaword	0x292
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xe
	.string	"IfxScuCcu_PerPllConfig"
	.byte	0x2
	.uahalf	0x267
	.uaword	0x869a
	.uleb128 0x1b
	.byte	0x4
	.byte	0x2
	.uahalf	0x26c
	.uaword	0x8757
	.uleb128 0x16
	.uaword	.LASF34
	.byte	0x2
	.uahalf	0x26e
	.uaword	0x292
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x16
	.uaword	.LASF35
	.byte	0x2
	.uahalf	0x26f
	.uaword	0x292
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x16
	.uaword	.LASF36
	.byte	0x2
	.uahalf	0x270
	.uaword	0x292
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0xe
	.string	"IfxScuCcu_SysPllConfig"
	.byte	0x2
	.uahalf	0x271
	.uaword	0x8720
	.uleb128 0x1b
	.byte	0x8
	.byte	0x2
	.uahalf	0x279
	.uaword	0x87a1
	.uleb128 0x14
	.string	"value"
	.byte	0x2
	.uahalf	0x27b
	.uaword	0x2ef
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"mask"
	.byte	0x2
	.uahalf	0x27c
	.uaword	0x2ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xe
	.string	"IfxScuCcu_CcuconRegConfig"
	.byte	0x2
	.uahalf	0x27d
	.uaword	0x8776
	.uleb128 0x1b
	.byte	0x8
	.byte	0x2
	.uahalf	0x281
	.uaword	0x87ee
	.uleb128 0x14
	.string	"k2Step"
	.byte	0x2
	.uahalf	0x283
	.uaword	0x292
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x16
	.uaword	.LASF37
	.byte	0x2
	.uahalf	0x284
	.uaword	0x2fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xe
	.string	"IfxScuCcu_PllStepConfig"
	.byte	0x2
	.uahalf	0x285
	.uaword	0x87c3
	.uleb128 0x1b
	.byte	0x10
	.byte	0x2
	.uahalf	0x289
	.uaword	0x8883
	.uleb128 0x14
	.string	"xtalFrequency"
	.byte	0x2
	.uahalf	0x28b
	.uaword	0x2ef
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"pllInputClockSelection"
	.byte	0x2
	.uahalf	0x28c
	.uaword	0x8217
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x14
	.string	"sysPllConfig"
	.byte	0x2
	.uahalf	0x28d
	.uaword	0x8757
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x14
	.string	"perPllConfig"
	.byte	0x2
	.uahalf	0x28e
	.uaword	0x8701
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0
	.uleb128 0xe
	.string	"IfxScuCcu_pllsParameterConfig"
	.byte	0x2
	.uahalf	0x28f
	.uaword	0x880e
	.uleb128 0x1b
	.byte	0x8
	.byte	0x2
	.uahalf	0x297
	.uaword	0x88d4
	.uleb128 0x14
	.string	"value"
	.byte	0x2
	.uahalf	0x299
	.uaword	0x2ef
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"mask"
	.byte	0x2
	.uahalf	0x29a
	.uaword	0x2ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xe
	.string	"IfxScuCcu_FlashWaitstateConfig"
	.byte	0x2
	.uahalf	0x29b
	.uaword	0x88a9
	.uleb128 0x1b
	.byte	0x40
	.byte	0x2
	.uahalf	0x2a3
	.uaword	0x898d
	.uleb128 0x16
	.uaword	.LASF38
	.byte	0x2
	.uahalf	0x2a5
	.uaword	0x87a1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x16
	.uaword	.LASF39
	.byte	0x2
	.uahalf	0x2a6
	.uaword	0x87a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.uaword	.LASF40
	.byte	0x2
	.uahalf	0x2a7
	.uaword	0x87a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x16
	.uaword	.LASF41
	.byte	0x2
	.uahalf	0x2a8
	.uaword	0x87a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x14
	.string	"ccucon6"
	.byte	0x2
	.uahalf	0x2a9
	.uaword	0x87a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x14
	.string	"ccucon7"
	.byte	0x2
	.uahalf	0x2aa
	.uaword	0x87a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x14
	.string	"ccucon8"
	.byte	0x2
	.uahalf	0x2ab
	.uaword	0x87a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x14
	.string	"ccucon9"
	.byte	0x2
	.uahalf	0x2ac
	.uaword	0x87a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0
	.uleb128 0xe
	.string	"IfxScuCcu_ClockDistributionConfig"
	.byte	0x2
	.uahalf	0x2ad
	.uaword	0x88fb
	.uleb128 0x1b
	.byte	0x14
	.byte	0x2
	.uahalf	0x2b1
	.uaword	0x89ea
	.uleb128 0x14
	.string	"pllsParameters"
	.byte	0x2
	.uahalf	0x2b3
	.uaword	0x8883
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x16
	.uaword	.LASF37
	.byte	0x2
	.uahalf	0x2b4
	.uaword	0x2fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0xe
	.string	"IfxScuCcu_InitialStepConfig"
	.byte	0x2
	.uahalf	0x2b5
	.uaword	0x89b7
	.uleb128 0x1b
	.byte	0x8
	.byte	0x2
	.uahalf	0x2b9
	.uaword	0x8a42
	.uleb128 0x14
	.string	"numOfSteps"
	.byte	0x2
	.uahalf	0x2bb
	.uaword	0x292
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"pllSteps"
	.byte	0x2
	.uahalf	0x2bc
	.uaword	0x8a42
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x8a48
	.uleb128 0x1c
	.uaword	0x87ee
	.uleb128 0xe
	.string	"IfxScuCcu_PllThrottleConfig"
	.byte	0x2
	.uahalf	0x2bd
	.uaword	0x8a0e
	.uleb128 0x1b
	.byte	0x2
	.byte	0x2
	.uahalf	0x2c3
	.uaword	0x8aa4
	.uleb128 0x14
	.string	"Mod_Enable"
	.byte	0x2
	.uahalf	0x2c5
	.uaword	0x8682
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"Mod_Amp"
	.byte	0x2
	.uahalf	0x2c6
	.uaword	0x816a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0xe
	.string	"IfxScuCcu_Mod_Config"
	.byte	0x2
	.uahalf	0x2c7
	.uaword	0x8a71
	.uleb128 0x1b
	.byte	0x64
	.byte	0x2
	.uahalf	0x2cd
	.uaword	0x8b68
	.uleb128 0x14
	.string	"pllInitialStepConfig"
	.byte	0x2
	.uahalf	0x2cf
	.uaword	0x89ea
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"sysPllThrottleConfig"
	.byte	0x2
	.uahalf	0x2d0
	.uaword	0x8a4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x14
	.string	"clockDistribution"
	.byte	0x2
	.uahalf	0x2d1
	.uaword	0x898d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x14
	.string	"flashFconWaitStateConfig"
	.byte	0x2
	.uahalf	0x2d2
	.uaword	0x8b68
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x14
	.string	"modulationConfig"
	.byte	0x2
	.uahalf	0x2d3
	.uaword	0x8b73
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x8b6e
	.uleb128 0x1c
	.uaword	0x88d4
	.uleb128 0x6
	.byte	0x4
	.uaword	0x8b79
	.uleb128 0x1c
	.uaword	0x8aa4
	.uleb128 0xe
	.string	"IfxScuCcu_Config"
	.byte	0x2
	.uahalf	0x2d4
	.uaword	0x8ac1
	.uleb128 0x1b
	.byte	0x8
	.byte	0x2
	.uahalf	0x2da
	.uaword	0x8bc9
	.uleb128 0x14
	.string	"RGainNom"
	.byte	0x2
	.uahalf	0x2dc
	.uaword	0x2fd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"RGainHex"
	.byte	0x2
	.uahalf	0x2dd
	.uaword	0x2bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xe
	.string	"IfxScuCcu_RGain_Values"
	.byte	0x2
	.uahalf	0x2de
	.uaword	0x8b97
	.uleb128 0x1d
	.string	"IfxScuWdt_getSafetyWatchdogPasswordInline"
	.byte	0x3
	.uahalf	0x283
	.byte	0x1
	.uaword	0x2bd
	.byte	0x3
	.uaword	0x8c3e
	.uleb128 0x1e
	.uaword	.LASF42
	.byte	0x3
	.uahalf	0x285
	.uaword	0x2bd
	.uleb128 0x1f
	.string	"watchdog"
	.byte	0x3
	.uahalf	0x286
	.uaword	0x8c3e
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x6d98
	.uleb128 0x20
	.string	"IfxScuWdt_clearSafetyEndinitInline"
	.byte	0x3
	.uahalf	0x247
	.byte	0x1
	.byte	0x3
	.uaword	0x8c7e
	.uleb128 0x21
	.uaword	.LASF42
	.byte	0x3
	.uahalf	0x247
	.uaword	0x2bd
	.byte	0
	.uleb128 0x20
	.string	"IfxScuWdt_setSafetyEndinitInline"
	.byte	0x3
	.uahalf	0x2b3
	.byte	0x1
	.byte	0x3
	.uaword	0x8cb6
	.uleb128 0x21
	.uaword	.LASF42
	.byte	0x3
	.uahalf	0x2b3
	.uaword	0x2bd
	.byte	0
	.uleb128 0x22
	.string	"IfxScuCcu_getStmFrequency"
	.byte	0x2
	.uahalf	0x6d4
	.byte	0x1
	.uaword	0x2fd
	.byte	0x3
	.uleb128 0x20
	.string	"IfxScuCcu_wait"
	.byte	0x2
	.uahalf	0x721
	.byte	0x1
	.byte	0x3
	.uaword	0x8d2b
	.uleb128 0x23
	.string	"timeSec"
	.byte	0x2
	.uahalf	0x721
	.uaword	0x2fd
	.uleb128 0x1f
	.string	"stmCount"
	.byte	0x2
	.uahalf	0x723
	.uaword	0x2ef
	.uleb128 0x1f
	.string	"stmCountBegin"
	.byte	0x2
	.uahalf	0x724
	.uaword	0x2ef
	.byte	0
	.uleb128 0x1d
	.string	"IfxScuCcu_getOscFrequency"
	.byte	0x2
	.uahalf	0x6b4
	.byte	0x1
	.uaword	0x2fd
	.byte	0x3
	.uaword	0x8d60
	.uleb128 0x1e
	.uaword	.LASF43
	.byte	0x2
	.uahalf	0x6b6
	.uaword	0x2fd
	.byte	0
	.uleb128 0x1d
	.string	"IfxScuCcu_distributeClockInline"
	.byte	0x2
	.uahalf	0x59b
	.byte	0x1
	.uaword	0x316
	.byte	0x3
	.uaword	0x8e5b
	.uleb128 0x21
	.uaword	.LASF44
	.byte	0x2
	.uahalf	0x59b
	.uaword	0x8e5b
	.uleb128 0x1e
	.uaword	.LASF45
	.byte	0x2
	.uahalf	0x59d
	.uaword	0x2bd
	.uleb128 0x1e
	.uaword	.LASF46
	.byte	0x2
	.uahalf	0x59e
	.uaword	0x2ef
	.uleb128 0x1e
	.uaword	.LASF47
	.byte	0x2
	.uahalf	0x59f
	.uaword	0x2ef
	.uleb128 0x24
	.uaword	0x8dd0
	.uleb128 0x1e
	.uaword	.LASF38
	.byte	0x2
	.uahalf	0x5a9
	.uaword	0x555b
	.byte	0
	.uleb128 0x24
	.uaword	0x8de2
	.uleb128 0x1e
	.uaword	.LASF39
	.byte	0x2
	.uahalf	0x5be
	.uaword	0x559b
	.byte	0
	.uleb128 0x24
	.uaword	0x8df4
	.uleb128 0x1e
	.uaword	.LASF40
	.byte	0x2
	.uahalf	0x5f8
	.uaword	0x55db
	.byte	0
	.uleb128 0x24
	.uaword	0x8e06
	.uleb128 0x1e
	.uaword	.LASF41
	.byte	0x2
	.uahalf	0x62c
	.uaword	0x569b
	.byte	0
	.uleb128 0x24
	.uaword	0x8e1c
	.uleb128 0x1f
	.string	"ccucon6"
	.byte	0x2
	.uahalf	0x642
	.uaword	0x56db
	.byte	0
	.uleb128 0x24
	.uaword	0x8e32
	.uleb128 0x1f
	.string	"ccucon7"
	.byte	0x2
	.uahalf	0x64b
	.uaword	0x571b
	.byte	0
	.uleb128 0x24
	.uaword	0x8e48
	.uleb128 0x1f
	.string	"ccucon8"
	.byte	0x2
	.uahalf	0x654
	.uaword	0x575b
	.byte	0
	.uleb128 0x25
	.uleb128 0x1f
	.string	"ccucon9"
	.byte	0x2
	.uahalf	0x65c
	.uaword	0x579b
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x8e61
	.uleb128 0x1c
	.uaword	0x898d
	.uleb128 0x22
	.string	"IfxScuCcu_getEvrFrequency"
	.byte	0x2
	.uahalf	0x67c
	.byte	0x1
	.uaword	0x2fd
	.byte	0x3
	.uleb128 0x26
	.byte	0x1
	.string	"IfxScuCcu_getSourceFrequency"
	.byte	0x1
	.uahalf	0x1b6
	.byte	0x1
	.uaword	0x2fd
	.byte	0x1
	.uaword	0x8eda
	.uleb128 0x23
	.string	"fsource"
	.byte	0x1
	.uahalf	0x1b6
	.uaword	0x8047
	.uleb128 0x1f
	.string	"sourcefreq"
	.byte	0x1
	.uahalf	0x1b8
	.uaword	0x2fd
	.byte	0
	.uleb128 0x22
	.string	"IfxScuCcu_getOsc0Frequency"
	.byte	0x2
	.uahalf	0x6ae
	.byte	0x1
	.uaword	0x2fd
	.byte	0x3
	.uleb128 0x26
	.byte	0x1
	.string	"IfxScuCcu_getMcanFrequency"
	.byte	0x1
	.uahalf	0x116
	.byte	0x1
	.uaword	0x2fd
	.byte	0x1
	.uaword	0x8f49
	.uleb128 0x1e
	.uaword	.LASF48
	.byte	0x1
	.uahalf	0x118
	.uaword	0x2fd
	.uleb128 0x1f
	.string	"mcanSource"
	.byte	0x1
	.uahalf	0x119
	.uaword	0x2fd
	.byte	0
	.uleb128 0x1d
	.string	"IfxScuCcu_configureCcuInitialStep"
	.byte	0x2
	.uahalf	0x4df
	.byte	0x1
	.uaword	0x316
	.byte	0x3
	.uaword	0x905a
	.uleb128 0x23
	.string	"pllInitStepCfg"
	.byte	0x2
	.uahalf	0x4df
	.uaword	0x905a
	.uleb128 0x1e
	.uaword	.LASF47
	.byte	0x2
	.uahalf	0x4e1
	.uaword	0x292
	.uleb128 0x1e
	.uaword	.LASF45
	.byte	0x2
	.uahalf	0x4e2
	.uaword	0x2bd
	.uleb128 0x1e
	.uaword	.LASF46
	.byte	0x2
	.uahalf	0x4e4
	.uaword	0x2ef
	.uleb128 0x1f
	.string	"pllsParamCfg"
	.byte	0x2
	.uahalf	0x4e5
	.uaword	0x9065
	.uleb128 0x24
	.uaword	0x8fe2
	.uleb128 0x1f
	.string	"scuCcucon0"
	.byte	0x2
	.uahalf	0x4f5
	.uaword	0x555b
	.byte	0
	.uleb128 0x24
	.uaword	0x8ffa
	.uleb128 0x1f
	.string	"scuOsccon"
	.byte	0x2
	.uahalf	0x51d
	.uaword	0x5eff
	.byte	0
	.uleb128 0x24
	.uaword	0x9013
	.uleb128 0x1f
	.string	"sysPllCon0"
	.byte	0x2
	.uahalf	0x52c
	.uaword	0x68ee
	.byte	0
	.uleb128 0x24
	.uaword	0x902f
	.uleb128 0x1f
	.string	"scuPerPllCon0"
	.byte	0x2
	.uahalf	0x536
	.uaword	0x60b2
	.byte	0
	.uleb128 0x24
	.uaword	0x904b
	.uleb128 0x1f
	.string	"scuPerPllCon1"
	.byte	0x2
	.uahalf	0x554
	.uaword	0x60f5
	.byte	0
	.uleb128 0x25
	.uleb128 0x1e
	.uaword	.LASF49
	.byte	0x2
	.uahalf	0x580
	.uaword	0x555b
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x9060
	.uleb128 0x1c
	.uaword	0x89ea
	.uleb128 0x6
	.byte	0x4
	.uaword	0x906b
	.uleb128 0x1c
	.uaword	0x8883
	.uleb128 0x1d
	.string	"IfxScuCcu_throttleSysPllClockInline"
	.byte	0x2
	.uahalf	0x6fc
	.byte	0x1
	.uaword	0x316
	.byte	0x3
	.uaword	0x90df
	.uleb128 0x21
	.uaword	.LASF50
	.byte	0x2
	.uahalf	0x6fc
	.uaword	0x90df
	.uleb128 0x1e
	.uaword	.LASF47
	.byte	0x2
	.uahalf	0x6fe
	.uaword	0x292
	.uleb128 0x1e
	.uaword	.LASF51
	.byte	0x2
	.uahalf	0x6ff
	.uaword	0x292
	.uleb128 0x1e
	.uaword	.LASF45
	.byte	0x2
	.uahalf	0x700
	.uaword	0x2bd
	.uleb128 0x1e
	.uaword	.LASF46
	.byte	0x2
	.uahalf	0x701
	.uaword	0x2ef
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x90e5
	.uleb128 0x1c
	.uaword	0x8a4d
	.uleb128 0x27
	.string	"Ifx__maxu"
	.byte	0x4
	.byte	0xa5
	.byte	0x1
	.uaword	0x2ef
	.byte	0x3
	.uaword	0x911f
	.uleb128 0x28
	.string	"a"
	.byte	0x4
	.byte	0xa5
	.uaword	0x2ef
	.uleb128 0x28
	.string	"b"
	.byte	0x4
	.byte	0xa5
	.uaword	0x2ef
	.uleb128 0x29
	.string	"res"
	.byte	0x4
	.byte	0xa7
	.uaword	0x2ef
	.byte	0
	.uleb128 0x1d
	.string	"IfxScuCcu_getAsclinFFrequency"
	.byte	0x2
	.uahalf	0x66d
	.byte	0x1
	.uaword	0x2fd
	.byte	0x3
	.uaword	0x9164
	.uleb128 0x1e
	.uaword	.LASF43
	.byte	0x2
	.uahalf	0x66f
	.uaword	0x2fd
	.uleb128 0x1e
	.uaword	.LASF52
	.byte	0x2
	.uahalf	0x671
	.uaword	0x9164
	.byte	0
	.uleb128 0x17
	.uaword	0x292
	.uaword	0x9174
	.uleb128 0x18
	.uaword	0x76c4
	.byte	0xf
	.byte	0
	.uleb128 0x22
	.string	"IfxScuCcu_getGethFrequency"
	.byte	0x2
	.uahalf	0x682
	.byte	0x1
	.uaword	0x2fd
	.byte	0x3
	.uleb128 0x1d
	.string	"IfxScuCcu_getGtmFrequency"
	.byte	0x2
	.uahalf	0x688
	.byte	0x1
	.uaword	0x2fd
	.byte	0x3
	.uaword	0x91e1
	.uleb128 0x1f
	.string	"gtmDiv"
	.byte	0x2
	.uahalf	0x68d
	.uaword	0x292
	.uleb128 0x1f
	.string	"gtmFreq"
	.byte	0x2
	.uahalf	0x68e
	.uaword	0x2fd
	.byte	0
	.uleb128 0x22
	.string	"IfxScuCcu_getI2cFrequency"
	.byte	0x2
	.uahalf	0x6a2
	.byte	0x1
	.uaword	0x2fd
	.byte	0x3
	.uleb128 0x22
	.string	"IfxScuCcu_getMcanhFrequency"
	.byte	0x2
	.uahalf	0x6a8
	.byte	0x1
	.uaword	0x2fd
	.byte	0x3
	.uleb128 0x2a
	.byte	0x1
	.string	"IfxScuCcu_calRGainParameters"
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x1
	.uaword	0x92cf
	.uleb128 0x28
	.string	"modamp"
	.byte	0x1
	.byte	0x66
	.uaword	0x816a
	.uleb128 0x28
	.string	"RGain_P"
	.byte	0x1
	.byte	0x66
	.uaword	0x92cf
	.uleb128 0x29
	.string	"mod_amp"
	.byte	0x1
	.byte	0x68
	.uaword	0x2fd
	.uleb128 0x29
	.string	"RGainNom_Temp"
	.byte	0x1
	.byte	0x69
	.uaword	0x92d5
	.uleb128 0x29
	.string	"RGain_Temp"
	.byte	0x1
	.byte	0x6a
	.uaword	0x92db
	.uleb128 0x29
	.string	"scu"
	.byte	0x1
	.byte	0x6c
	.uaword	0x7932
	.uleb128 0x29
	.string	"Fosc_Hz"
	.byte	0x1
	.byte	0x6d
	.uaword	0x2fd
	.uleb128 0x29
	.string	"Fdco_hz"
	.byte	0x1
	.byte	0x6e
	.uaword	0x2fd
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x8bc9
	.uleb128 0x6
	.byte	0x4
	.uaword	0x2fd
	.uleb128 0x6
	.byte	0x4
	.uaword	0x2bd
	.uleb128 0x2b
	.uaword	0x922b
	.uaword	.LFB237
	.uaword	.LFE237
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x9355
	.uleb128 0x2c
	.uaword	0x9252
	.uaword	.LLST0
	.uleb128 0x2d
	.uaword	0x9260
	.byte	0x1
	.byte	0x64
	.uleb128 0x2e
	.uaword	0x926f
	.uaword	.LLST1
	.uleb128 0x2f
	.uaword	0x927e
	.byte	0x1
	.byte	0x64
	.uleb128 0x2f
	.uaword	0x9293
	.byte	0x3
	.byte	0x84
	.sleb128 4
	.byte	0x9f
	.uleb128 0x30
	.uaword	0x92a5
	.sleb128 -268214272
	.uleb128 0x2f
	.uaword	0x92b0
	.byte	0x1
	.byte	0x5f
	.uleb128 0x31
	.uaword	0x92bf
	.uleb128 0x32
	.uaword	0x8d2b
	.uaword	.LBB172
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x6d
	.uleb128 0x33
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x2e
	.uaword	0x8d53
	.uaword	.LLST2
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.string	"IfxScuCcu_distributeClock"
	.byte	0x1
	.byte	0x75
	.byte	0x1
	.uaword	.LFB238
	.uaword	.LFE238
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x94c4
	.uleb128 0x35
	.uaword	.LASF44
	.byte	0x1
	.byte	0x75
	.uaword	0x94c4
	.byte	0x1
	.byte	0x64
	.uleb128 0x32
	.uaword	0x8d60
	.uaword	.LBB176
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x77
	.uleb128 0x2d
	.uaword	0x8d8e
	.byte	0x1
	.byte	0x64
	.uleb128 0x33
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0x31
	.uaword	0x8d9a
	.uleb128 0x2e
	.uaword	0x8da6
	.uaword	.LLST3
	.uleb128 0x2e
	.uaword	0x8db2
	.uaword	.LLST4
	.uleb128 0x36
	.uaword	0x8be8
	.uaword	.LBB178
	.uaword	.Ldebug_ranges0+0x30
	.byte	0x2
	.uahalf	0x5a2
	.uaword	0x93f1
	.uleb128 0x33
	.uaword	.Ldebug_ranges0+0x30
	.uleb128 0x2e
	.uaword	0x8c20
	.uaword	.LLST5
	.uleb128 0x30
	.uaword	0x8c2c
	.sleb128 -268213592
	.byte	0
	.byte	0
	.uleb128 0x36
	.uaword	0x8c44
	.uaword	.LBB181
	.uaword	.Ldebug_ranges0+0x48
	.byte	0x2
	.uahalf	0x5a5
	.uaword	0x940f
	.uleb128 0x2c
	.uaword	0x8c71
	.uaword	.LLST5
	.byte	0
	.uleb128 0x37
	.uaword	.LBB186
	.uaword	.LBE186
	.uaword	0x9422
	.uleb128 0x31
	.uaword	0x8dc3
	.byte	0
	.uleb128 0x38
	.uaword	.Ldebug_ranges0+0x60
	.uaword	0x9435
	.uleb128 0x2e
	.uaword	0x8dd5
	.uaword	.LLST7
	.byte	0
	.uleb128 0x38
	.uaword	.Ldebug_ranges0+0x78
	.uaword	0x9448
	.uleb128 0x2e
	.uaword	0x8de7
	.uaword	.LLST8
	.byte	0
	.uleb128 0x37
	.uaword	.LBB189
	.uaword	.LBE189
	.uaword	0x945f
	.uleb128 0x2e
	.uaword	0x8df9
	.uaword	.LLST9
	.byte	0
	.uleb128 0x37
	.uaword	.LBB190
	.uaword	.LBE190
	.uaword	0x9472
	.uleb128 0x31
	.uaword	0x8e0b
	.byte	0
	.uleb128 0x37
	.uaword	.LBB191
	.uaword	.LBE191
	.uaword	0x9485
	.uleb128 0x31
	.uaword	0x8e21
	.byte	0
	.uleb128 0x37
	.uaword	.LBB192
	.uaword	.LBE192
	.uaword	0x9498
	.uleb128 0x31
	.uaword	0x8e37
	.byte	0
	.uleb128 0x37
	.uaword	.LBB193
	.uaword	.LBE193
	.uaword	0x94ab
	.uleb128 0x31
	.uaword	0x8e49
	.byte	0
	.uleb128 0x39
	.uaword	0x8c7e
	.uaword	.LBB194
	.uaword	.LBE194
	.byte	0x2
	.uahalf	0x662
	.uleb128 0x3a
	.uaword	0x8ca9
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x898d
	.uleb128 0x26
	.byte	0x1
	.string	"IfxScuCcu_getPerPllFrequency1"
	.byte	0x1
	.uahalf	0x16b
	.byte	0x1
	.uaword	0x2fd
	.byte	0x1
	.uaword	0x9526
	.uleb128 0x1f
	.string	"scu"
	.byte	0x1
	.uahalf	0x16d
	.uaword	0x7932
	.uleb128 0x1f
	.string	"pllFrequency1"
	.byte	0x1
	.uahalf	0x16e
	.uaword	0x2fd
	.uleb128 0x1e
	.uaword	.LASF53
	.byte	0x1
	.uahalf	0x16f
	.uaword	0x2fd
	.byte	0
	.uleb128 0x3b
	.byte	0x1
	.string	"IfxScuCcu_getAsclinSFrequency"
	.byte	0x1
	.byte	0x7b
	.byte	0x1
	.uaword	0x2fd
	.uaword	.LFB239
	.uaword	.LFE239
	.uaword	.LLST10
	.byte	0x1
	.uaword	0x9626
	.uleb128 0x3c
	.uaword	.LASF43
	.byte	0x1
	.byte	0x7d
	.uaword	0x2fd
	.uaword	.LLST11
	.uleb128 0x3c
	.uaword	.LASF54
	.byte	0x1
	.byte	0x7e
	.uaword	0x2fd
	.uaword	.LLST12
	.uleb128 0x3d
	.uaword	.LASF52
	.byte	0x1
	.byte	0x80
	.uaword	0x9164
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x32
	.uaword	0x8e8a
	.uaword	.LBB208
	.uaword	.Ldebug_ranges0+0x90
	.byte	0x1
	.byte	0x86
	.uleb128 0x3e
	.uaword	0x8eb6
	.byte	0x1
	.uleb128 0x33
	.uaword	.Ldebug_ranges0+0x90
	.uleb128 0x2e
	.uaword	0x8ec6
	.uaword	.LLST13
	.uleb128 0x3f
	.uaword	.LBB210
	.uaword	.LBE210
	.uleb128 0x2c
	.uaword	0x8eb6
	.uaword	.LLST14
	.uleb128 0x3f
	.uaword	.LBB211
	.uaword	.LBE211
	.uleb128 0x31
	.uaword	0x8ec6
	.uleb128 0x40
	.uaword	0x94ca
	.uaword	.LBB212
	.uaword	.Ldebug_ranges0+0xa8
	.byte	0x1
	.uahalf	0x1c7
	.uleb128 0x33
	.uaword	.Ldebug_ranges0+0xa8
	.uleb128 0x2e
	.uaword	0x94f7
	.uaword	.LLST15
	.uleb128 0x2e
	.uaword	0x9503
	.uaword	.LLST16
	.uleb128 0x2f
	.uaword	0x9519
	.byte	0x1
	.byte	0x5f
	.uleb128 0x39
	.uaword	0x8d2b
	.uaword	.LBB214
	.uaword	.LBE214
	.byte	0x1
	.uahalf	0x170
	.uleb128 0x3f
	.uaword	.LBB215
	.uaword	.LBE215
	.uleb128 0x2e
	.uaword	0x8d53
	.uaword	.LLST17
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.string	"IfxScuCcu_getBbbFrequency"
	.byte	0x1
	.byte	0x9b
	.byte	0x1
	.uaword	0x2fd
	.byte	0x1
	.uaword	0x966e
	.uleb128 0x29
	.string	"bbbFrequency"
	.byte	0x1
	.byte	0x9d
	.uaword	0x2fd
	.uleb128 0x42
	.uaword	.LASF55
	.byte	0x1
	.byte	0x9e
	.uaword	0x2fd
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.string	"IfxScuCcu_getPllFrequency"
	.byte	0x1
	.uahalf	0x18c
	.byte	0x1
	.uaword	0x2fd
	.byte	0x1
	.uaword	0x96bc
	.uleb128 0x1f
	.string	"scu"
	.byte	0x1
	.uahalf	0x18e
	.uaword	0x7932
	.uleb128 0x1e
	.uaword	.LASF53
	.byte	0x1
	.uahalf	0x18f
	.uaword	0x2fd
	.uleb128 0x1e
	.uaword	.LASF43
	.byte	0x1
	.uahalf	0x190
	.uaword	0x2fd
	.byte	0
	.uleb128 0x2b
	.uaword	0x9626
	.uaword	.LFB240
	.uaword	.LFE240
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x975b
	.uleb128 0x2e
	.uaword	0x964e
	.uaword	.LLST18
	.uleb128 0x2f
	.uaword	0x9662
	.byte	0x1
	.byte	0x5f
	.uleb128 0x32
	.uaword	0x8e8a
	.uaword	.LBB228
	.uaword	.Ldebug_ranges0+0xc8
	.byte	0x1
	.byte	0xa0
	.uleb128 0x3e
	.uaword	0x8eb6
	.byte	0
	.uleb128 0x33
	.uaword	.Ldebug_ranges0+0xc8
	.uleb128 0x2e
	.uaword	0x8ec6
	.uaword	.LLST19
	.uleb128 0x39
	.uaword	0x966e
	.uaword	.LBB230
	.uaword	.LBE230
	.byte	0x1
	.uahalf	0x1c4
	.uleb128 0x3f
	.uaword	.LBB231
	.uaword	.LBE231
	.uleb128 0x2e
	.uaword	0x9697
	.uaword	.LLST20
	.uleb128 0x2f
	.uaword	0x96a3
	.byte	0x1
	.byte	0x5f
	.uleb128 0x31
	.uaword	0x96af
	.uleb128 0x39
	.uaword	0x8d2b
	.uaword	.LBB232
	.uaword	.LBE232
	.byte	0x1
	.uahalf	0x192
	.uleb128 0x3f
	.uaword	.LBB233
	.uaword	.LBE233
	.uleb128 0x2e
	.uaword	0x8d53
	.uaword	.LLST21
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.string	"IfxScuCcu_getSriFrequency"
	.byte	0x1
	.uahalf	0x20c
	.byte	0x1
	.uaword	0x2fd
	.byte	0x1
	.uaword	0x97a6
	.uleb128 0x1f
	.string	"sriFrequency"
	.byte	0x1
	.uahalf	0x20e
	.uaword	0x2fd
	.uleb128 0x1e
	.uaword	.LASF55
	.byte	0x1
	.uahalf	0x20f
	.uaword	0x2fd
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.string	"IfxScuCcu_getCpuFrequency"
	.byte	0x1
	.byte	0xc6
	.byte	0x1
	.uaword	0x2fd
	.uaword	.LFB241
	.uaword	.LFE241
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x98a8
	.uleb128 0x44
	.string	"cpu"
	.byte	0x1
	.byte	0xc6
	.uaword	0x98a8
	.byte	0x1
	.byte	0x54
	.uleb128 0x3c
	.uaword	.LASF56
	.byte	0x1
	.byte	0xc8
	.uaword	0x2fd
	.uaword	.LLST22
	.uleb128 0x45
	.string	"cpuDiv"
	.byte	0x1
	.byte	0xc9
	.uaword	0x2ef
	.uaword	.LLST23
	.uleb128 0x32
	.uaword	0x975b
	.uaword	.LBB244
	.uaword	.Ldebug_ranges0+0xe0
	.byte	0x1
	.byte	0xc8
	.uleb128 0x33
	.uaword	.Ldebug_ranges0+0xe0
	.uleb128 0x2e
	.uaword	0x9784
	.uaword	.LLST24
	.uleb128 0x2f
	.uaword	0x9799
	.byte	0x1
	.byte	0x5f
	.uleb128 0x40
	.uaword	0x8e8a
	.uaword	.LBB246
	.uaword	.Ldebug_ranges0+0x100
	.byte	0x1
	.uahalf	0x210
	.uleb128 0x3e
	.uaword	0x8eb6
	.byte	0
	.uleb128 0x33
	.uaword	.Ldebug_ranges0+0x100
	.uleb128 0x2e
	.uaword	0x8ec6
	.uaword	.LLST25
	.uleb128 0x39
	.uaword	0x966e
	.uaword	.LBB248
	.uaword	.LBE248
	.byte	0x1
	.uahalf	0x1c4
	.uleb128 0x3f
	.uaword	.LBB249
	.uaword	.LBE249
	.uleb128 0x2e
	.uaword	0x9697
	.uaword	.LLST26
	.uleb128 0x2f
	.uaword	0x96a3
	.byte	0x1
	.byte	0x5f
	.uleb128 0x31
	.uaword	0x96af
	.uleb128 0x39
	.uaword	0x8d2b
	.uaword	.LBB250
	.uaword	.LBE250
	.byte	0x1
	.uahalf	0x192
	.uleb128 0x3f
	.uaword	.LBB251
	.uaword	.LBE251
	.uleb128 0x2e
	.uaword	0x8d53
	.uaword	.LLST27
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uaword	0x7890
	.uleb128 0x41
	.byte	0x1
	.string	"IfxScuCcu_getFsi2Frequency"
	.byte	0x1
	.byte	0xe8
	.byte	0x1
	.uaword	0x2fd
	.byte	0x1
	.uaword	0x98ed
	.uleb128 0x42
	.uaword	.LASF56
	.byte	0x1
	.byte	0xea
	.uaword	0x2fd
	.uleb128 0x42
	.uaword	.LASF38
	.byte	0x1
	.byte	0xeb
	.uaword	0x555b
	.byte	0
	.uleb128 0x2b
	.uaword	0x98ad
	.uaword	.LFB242
	.uaword	.LFE242
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x99b5
	.uleb128 0x2e
	.uaword	0x98d6
	.uaword	.LLST28
	.uleb128 0x2e
	.uaword	0x98e1
	.uaword	.LLST29
	.uleb128 0x32
	.uaword	0x975b
	.uaword	.LBB266
	.uaword	.Ldebug_ranges0+0x118
	.byte	0x1
	.byte	0xf3
	.uleb128 0x33
	.uaword	.Ldebug_ranges0+0x118
	.uleb128 0x2e
	.uaword	0x9784
	.uaword	.LLST30
	.uleb128 0x2f
	.uaword	0x9799
	.byte	0x1
	.byte	0x53
	.uleb128 0x40
	.uaword	0x8e8a
	.uaword	.LBB268
	.uaword	.Ldebug_ranges0+0x130
	.byte	0x1
	.uahalf	0x210
	.uleb128 0x3e
	.uaword	0x8eb6
	.byte	0
	.uleb128 0x33
	.uaword	.Ldebug_ranges0+0x130
	.uleb128 0x2e
	.uaword	0x8ec6
	.uaword	.LLST31
	.uleb128 0x39
	.uaword	0x966e
	.uaword	.LBB270
	.uaword	.LBE270
	.byte	0x1
	.uahalf	0x1c4
	.uleb128 0x3f
	.uaword	.LBB271
	.uaword	.LBE271
	.uleb128 0x2e
	.uaword	0x9697
	.uaword	.LLST32
	.uleb128 0x2f
	.uaword	0x96a3
	.byte	0x1
	.byte	0x53
	.uleb128 0x31
	.uaword	0x96af
	.uleb128 0x39
	.uaword	0x8d2b
	.uaword	.LBB272
	.uaword	.LBE272
	.byte	0x1
	.uahalf	0x192
	.uleb128 0x3f
	.uaword	.LBB273
	.uaword	.LBE273
	.uleb128 0x2e
	.uaword	0x8d53
	.uaword	.LLST33
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.string	"IfxScuCcu_getFsiFrequency"
	.byte	0x1
	.byte	0xff
	.byte	0x1
	.uaword	0x2fd
	.byte	0x1
	.uaword	0x99f6
	.uleb128 0x1e
	.uaword	.LASF56
	.byte	0x1
	.uahalf	0x101
	.uaword	0x2fd
	.uleb128 0x1e
	.uaword	.LASF38
	.byte	0x1
	.uahalf	0x102
	.uaword	0x555b
	.byte	0
	.uleb128 0x2b
	.uaword	0x99b5
	.uaword	.LFB243
	.uaword	.LFE243
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x9abf
	.uleb128 0x2e
	.uaword	0x99dd
	.uaword	.LLST34
	.uleb128 0x2e
	.uaword	0x99e9
	.uaword	.LLST35
	.uleb128 0x40
	.uaword	0x975b
	.uaword	.LBB286
	.uaword	.Ldebug_ranges0+0x148
	.byte	0x1
	.uahalf	0x10a
	.uleb128 0x33
	.uaword	.Ldebug_ranges0+0x148
	.uleb128 0x2e
	.uaword	0x9784
	.uaword	.LLST36
	.uleb128 0x2f
	.uaword	0x9799
	.byte	0x1
	.byte	0x53
	.uleb128 0x40
	.uaword	0x8e8a
	.uaword	.LBB288
	.uaword	.Ldebug_ranges0+0x160
	.byte	0x1
	.uahalf	0x210
	.uleb128 0x3e
	.uaword	0x8eb6
	.byte	0
	.uleb128 0x33
	.uaword	.Ldebug_ranges0+0x160
	.uleb128 0x2e
	.uaword	0x8ec6
	.uaword	.LLST37
	.uleb128 0x39
	.uaword	0x966e
	.uaword	.LBB290
	.uaword	.LBE290
	.byte	0x1
	.uahalf	0x1c4
	.uleb128 0x3f
	.uaword	.LBB291
	.uaword	.LBE291
	.uleb128 0x2e
	.uaword	0x9697
	.uaword	.LLST38
	.uleb128 0x2f
	.uaword	0x96a3
	.byte	0x1
	.byte	0x53
	.uleb128 0x31
	.uaword	0x96af
	.uleb128 0x39
	.uaword	0x8d2b
	.uaword	.LBB292
	.uaword	.LBE292
	.byte	0x1
	.uahalf	0x192
	.uleb128 0x3f
	.uaword	.LBB293
	.uaword	.LBE293
	.uleb128 0x2e
	.uaword	0x8d53
	.uaword	.LLST39
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0x8eff
	.uaword	.LFB244
	.uaword	.LFE244
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x9b9e
	.uleb128 0x2e
	.uaword	0x8f29
	.uaword	.LLST40
	.uleb128 0x46
	.uaword	0x8f35
	.byte	0x4
	.uaword	0
	.uleb128 0x3f
	.uaword	.LBB309
	.uaword	.LBE309
	.uleb128 0x2e
	.uaword	0x8f29
	.uaword	.LLST41
	.uleb128 0x2f
	.uaword	0x8f35
	.byte	0x1
	.byte	0x5f
	.uleb128 0x40
	.uaword	0x8e8a
	.uaword	.LBB310
	.uaword	.Ldebug_ranges0+0x178
	.byte	0x1
	.uahalf	0x11f
	.uleb128 0x3e
	.uaword	0x8eb6
	.byte	0x1
	.uleb128 0x33
	.uaword	.Ldebug_ranges0+0x178
	.uleb128 0x2e
	.uaword	0x8ec6
	.uaword	.LLST42
	.uleb128 0x3f
	.uaword	.LBB312
	.uaword	.LBE312
	.uleb128 0x2c
	.uaword	0x8eb6
	.uaword	.LLST43
	.uleb128 0x3f
	.uaword	.LBB313
	.uaword	.LBE313
	.uleb128 0x31
	.uaword	0x8ec6
	.uleb128 0x40
	.uaword	0x94ca
	.uaword	.LBB314
	.uaword	.Ldebug_ranges0+0x190
	.byte	0x1
	.uahalf	0x1c7
	.uleb128 0x33
	.uaword	.Ldebug_ranges0+0x190
	.uleb128 0x2e
	.uaword	0x94f7
	.uaword	.LLST44
	.uleb128 0x2e
	.uaword	0x9503
	.uaword	.LLST45
	.uleb128 0x2f
	.uaword	0x9519
	.byte	0x1
	.byte	0x5f
	.uleb128 0x39
	.uaword	0x8d2b
	.uaword	.LBB316
	.uaword	.LBE316
	.byte	0x1
	.uahalf	0x170
	.uleb128 0x3f
	.uaword	.LBB317
	.uaword	.LBE317
	.uleb128 0x2e
	.uaword	0x8d53
	.uaword	.LLST46
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.string	"IfxScuCcu_getSpbFrequency"
	.byte	0x1
	.uahalf	0x1e1
	.byte	0x1
	.uaword	0x2fd
	.byte	0x1
	.uaword	0x9be9
	.uleb128 0x1f
	.string	"spbFrequency"
	.byte	0x1
	.uahalf	0x1e3
	.uaword	0x2fd
	.uleb128 0x1e
	.uaword	.LASF55
	.byte	0x1
	.uahalf	0x1e4
	.uaword	0x2fd
	.byte	0
	.uleb128 0x47
	.byte	0x1
	.string	"IfxScuCcu_getModuleFrequency"
	.byte	0x1
	.uahalf	0x134
	.byte	0x1
	.uaword	0x2fd
	.uaword	.LFB245
	.uaword	.LFE245
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x9cfe
	.uleb128 0x48
	.string	"spbFreq"
	.byte	0x1
	.uahalf	0x136
	.uaword	0x2fd
	.byte	0x1
	.byte	0x53
	.uleb128 0x49
	.string	"moduleFreq"
	.byte	0x1
	.uahalf	0x137
	.uaword	0x2fd
	.uaword	.LLST47
	.uleb128 0x49
	.string	"scuFdr"
	.byte	0x1
	.uahalf	0x138
	.uaword	0x5b51
	.uaword	.LLST48
	.uleb128 0x40
	.uaword	0x9b9e
	.uaword	.LBB332
	.uaword	.Ldebug_ranges0+0x1b0
	.byte	0x1
	.uahalf	0x13a
	.uleb128 0x33
	.uaword	.Ldebug_ranges0+0x1b0
	.uleb128 0x2e
	.uaword	0x9bc7
	.uaword	.LLST49
	.uleb128 0x2f
	.uaword	0x9bdc
	.byte	0x1
	.byte	0x5f
	.uleb128 0x40
	.uaword	0x8e8a
	.uaword	.LBB334
	.uaword	.Ldebug_ranges0+0x1e0
	.byte	0x1
	.uahalf	0x1e5
	.uleb128 0x3e
	.uaword	0x8eb6
	.byte	0
	.uleb128 0x33
	.uaword	.Ldebug_ranges0+0x1e0
	.uleb128 0x2e
	.uaword	0x8ec6
	.uaword	.LLST50
	.uleb128 0x39
	.uaword	0x966e
	.uaword	.LBB336
	.uaword	.LBE336
	.byte	0x1
	.uahalf	0x1c4
	.uleb128 0x3f
	.uaword	.LBB337
	.uaword	.LBE337
	.uleb128 0x2e
	.uaword	0x9697
	.uaword	.LLST51
	.uleb128 0x2f
	.uaword	0x96a3
	.byte	0x1
	.byte	0x5f
	.uleb128 0x31
	.uaword	0x96af
	.uleb128 0x39
	.uaword	0x8d2b
	.uaword	.LBB338
	.uaword	.LBE338
	.byte	0x1
	.uahalf	0x192
	.uleb128 0x3f
	.uaword	.LBB339
	.uaword	.LBE339
	.uleb128 0x2e
	.uaword	0x8d53
	.uaword	.LLST52
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.string	"IfxScuCcu_getPerPllFrequency2"
	.byte	0x1
	.uahalf	0x178
	.byte	0x1
	.uaword	0x2fd
	.byte	0x1
	.uaword	0x9d5a
	.uleb128 0x1f
	.string	"scu"
	.byte	0x1
	.uahalf	0x17a
	.uaword	0x7932
	.uleb128 0x1f
	.string	"pllFrequency2"
	.byte	0x1
	.uahalf	0x17b
	.uaword	0x2fd
	.uleb128 0x1e
	.uaword	.LASF53
	.byte	0x1
	.uahalf	0x17c
	.uaword	0x2fd
	.byte	0
	.uleb128 0x47
	.byte	0x1
	.string	"IfxScuCcu_getMscFrequency"
	.byte	0x1
	.uahalf	0x14d
	.byte	0x1
	.uaword	0x2fd
	.uaword	.LFB246
	.uaword	.LFE246
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x9ed3
	.uleb128 0x49
	.string	"mscFreq"
	.byte	0x1
	.uahalf	0x14f
	.uaword	0x2fd
	.uaword	.LLST53
	.uleb128 0x4a
	.uaword	.LASF57
	.byte	0x1
	.uahalf	0x150
	.uaword	0x2fd
	.uaword	.LLST54
	.uleb128 0x36
	.uaword	0x8e8a
	.uaword	.LBB366
	.uaword	.Ldebug_ranges0+0x200
	.byte	0x1
	.uahalf	0x15b
	.uaword	0x9e2f
	.uleb128 0x2c
	.uaword	0x8eb6
	.uaword	.LLST55
	.uleb128 0x33
	.uaword	.Ldebug_ranges0+0x200
	.uleb128 0x31
	.uaword	0x8ec6
	.uleb128 0x40
	.uaword	0x9cfe
	.uaword	.LBB368
	.uaword	.Ldebug_ranges0+0x218
	.byte	0x1
	.uahalf	0x1d0
	.uleb128 0x33
	.uaword	.Ldebug_ranges0+0x218
	.uleb128 0x2e
	.uaword	0x9d2b
	.uaword	.LLST56
	.uleb128 0x2e
	.uaword	0x9d37
	.uaword	.LLST57
	.uleb128 0x2f
	.uaword	0x9d4d
	.byte	0x1
	.byte	0x5f
	.uleb128 0x39
	.uaword	0x8d2b
	.uaword	.LBB370
	.uaword	.LBE370
	.byte	0x1
	.uahalf	0x17d
	.uleb128 0x3f
	.uaword	.LBB371
	.uaword	.LBE371
	.uleb128 0x2e
	.uaword	0x8d53
	.uaword	.LLST58
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x39
	.uaword	0x8e8a
	.uaword	.LBB375
	.uaword	.LBE375
	.byte	0x1
	.uahalf	0x156
	.uleb128 0x2c
	.uaword	0x8eb6
	.uaword	.LLST59
	.uleb128 0x3f
	.uaword	.LBB376
	.uaword	.LBE376
	.uleb128 0x31
	.uaword	0x8ec6
	.uleb128 0x3f
	.uaword	.LBB377
	.uaword	.LBE377
	.uleb128 0x2c
	.uaword	0x8eb6
	.uaword	.LLST60
	.uleb128 0x3f
	.uaword	.LBB378
	.uaword	.LBE378
	.uleb128 0x2e
	.uaword	0x8ec6
	.uaword	.LLST61
	.uleb128 0x40
	.uaword	0x94ca
	.uaword	.LBB379
	.uaword	.Ldebug_ranges0+0x230
	.byte	0x1
	.uahalf	0x1c7
	.uleb128 0x33
	.uaword	.Ldebug_ranges0+0x230
	.uleb128 0x2e
	.uaword	0x94f7
	.uaword	.LLST62
	.uleb128 0x2e
	.uaword	0x9503
	.uaword	.LLST63
	.uleb128 0x2f
	.uaword	0x9519
	.byte	0x1
	.byte	0x5f
	.uleb128 0x39
	.uaword	0x8d2b
	.uaword	.LBB381
	.uaword	.LBE381
	.byte	0x1
	.uahalf	0x170
	.uleb128 0x3f
	.uaword	.LBB382
	.uaword	.LBE382
	.uleb128 0x2e
	.uaword	0x8d53
	.uaword	.LLST64
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0x94ca
	.uaword	.LFB247
	.uaword	.LFE247
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x9f23
	.uleb128 0x30
	.uaword	0x94f7
	.sleb128 -268214272
	.uleb128 0x31
	.uaword	0x9503
	.uleb128 0x2f
	.uaword	0x9519
	.byte	0x1
	.byte	0x5f
	.uleb128 0x39
	.uaword	0x8d2b
	.uaword	.LBB390
	.uaword	.LBE390
	.byte	0x1
	.uahalf	0x170
	.uleb128 0x3f
	.uaword	.LBB391
	.uaword	.LBE391
	.uleb128 0x2e
	.uaword	0x8d53
	.uaword	.LLST65
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0x9cfe
	.uaword	.LFB248
	.uaword	.LFE248
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x9f77
	.uleb128 0x30
	.uaword	0x9d2b
	.sleb128 -268214272
	.uleb128 0x2e
	.uaword	0x9d37
	.uaword	.LLST66
	.uleb128 0x2f
	.uaword	0x9d4d
	.byte	0x1
	.byte	0x5f
	.uleb128 0x39
	.uaword	0x8d2b
	.uaword	.LBB394
	.uaword	.LBE394
	.byte	0x1
	.uahalf	0x17d
	.uleb128 0x3f
	.uaword	.LBB395
	.uaword	.LBE395
	.uleb128 0x2e
	.uaword	0x8d53
	.uaword	.LLST67
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0x966e
	.uaword	.LFB249
	.uaword	.LFE249
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x9fc7
	.uleb128 0x30
	.uaword	0x9697
	.sleb128 -268214272
	.uleb128 0x2f
	.uaword	0x96a3
	.byte	0x1
	.byte	0x5f
	.uleb128 0x31
	.uaword	0x96af
	.uleb128 0x39
	.uaword	0x8d2b
	.uaword	.LBB398
	.uaword	.LBE398
	.byte	0x1
	.uahalf	0x192
	.uleb128 0x3f
	.uaword	.LBB399
	.uaword	.LBE399
	.uleb128 0x2e
	.uaword	0x8d53
	.uaword	.LLST68
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x47
	.byte	0x1
	.string	"IfxScuCcu_getQspiFrequency"
	.byte	0x1
	.uahalf	0x198
	.byte	0x1
	.uaword	0x2fd
	.uaword	.LFB250
	.uaword	.LFE250
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xa13d
	.uleb128 0x4a
	.uaword	.LASF43
	.byte	0x1
	.uahalf	0x19a
	.uaword	0x2fd
	.uaword	.LLST69
	.uleb128 0x4a
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0x19b
	.uaword	0x2fd
	.uaword	.LLST70
	.uleb128 0x36
	.uaword	0x8e8a
	.uaword	.LBB414
	.uaword	.Ldebug_ranges0+0x250
	.byte	0x1
	.uahalf	0x1a6
	.uaword	0xa099
	.uleb128 0x2c
	.uaword	0x8eb6
	.uaword	.LLST71
	.uleb128 0x33
	.uaword	.Ldebug_ranges0+0x250
	.uleb128 0x31
	.uaword	0x8ec6
	.uleb128 0x40
	.uaword	0x9cfe
	.uaword	.LBB416
	.uaword	.Ldebug_ranges0+0x268
	.byte	0x1
	.uahalf	0x1d0
	.uleb128 0x33
	.uaword	.Ldebug_ranges0+0x268
	.uleb128 0x2e
	.uaword	0x9d2b
	.uaword	.LLST72
	.uleb128 0x2e
	.uaword	0x9d37
	.uaword	.LLST73
	.uleb128 0x2f
	.uaword	0x9d4d
	.byte	0x1
	.byte	0x5f
	.uleb128 0x39
	.uaword	0x8d2b
	.uaword	.LBB418
	.uaword	.LBE418
	.byte	0x1
	.uahalf	0x17d
	.uleb128 0x3f
	.uaword	.LBB419
	.uaword	.LBE419
	.uleb128 0x2e
	.uaword	0x8d53
	.uaword	.LLST74
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x39
	.uaword	0x8e8a
	.uaword	.LBB423
	.uaword	.LBE423
	.byte	0x1
	.uahalf	0x1a1
	.uleb128 0x2c
	.uaword	0x8eb6
	.uaword	.LLST75
	.uleb128 0x3f
	.uaword	.LBB424
	.uaword	.LBE424
	.uleb128 0x31
	.uaword	0x8ec6
	.uleb128 0x3f
	.uaword	.LBB425
	.uaword	.LBE425
	.uleb128 0x2c
	.uaword	0x8eb6
	.uaword	.LLST76
	.uleb128 0x3f
	.uaword	.LBB426
	.uaword	.LBE426
	.uleb128 0x2e
	.uaword	0x8ec6
	.uaword	.LLST77
	.uleb128 0x40
	.uaword	0x94ca
	.uaword	.LBB427
	.uaword	.Ldebug_ranges0+0x280
	.byte	0x1
	.uahalf	0x1c7
	.uleb128 0x33
	.uaword	.Ldebug_ranges0+0x280
	.uleb128 0x2e
	.uaword	0x94f7
	.uaword	.LLST78
	.uleb128 0x2e
	.uaword	0x9503
	.uaword	.LLST79
	.uleb128 0x2f
	.uaword	0x9519
	.byte	0x1
	.byte	0x5f
	.uleb128 0x39
	.uaword	0x8d2b
	.uaword	.LBB429
	.uaword	.LBE429
	.byte	0x1
	.uahalf	0x170
	.uleb128 0x3f
	.uaword	.LBB430
	.uaword	.LBE430
	.uleb128 0x2e
	.uaword	0x8d53
	.uaword	.LLST80
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0x8e8a
	.uaword	.LFB251
	.uaword	.LFE251
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xa293
	.uleb128 0x2c
	.uaword	0x8eb6
	.uaword	.LLST81
	.uleb128 0x2e
	.uaword	0x8ec6
	.uaword	.LLST82
	.uleb128 0x36
	.uaword	0x9cfe
	.uaword	.LBB450
	.uaword	.Ldebug_ranges0+0x2a0
	.byte	0x1
	.uahalf	0x1d0
	.uaword	0xa1bc
	.uleb128 0x33
	.uaword	.Ldebug_ranges0+0x2a0
	.uleb128 0x2e
	.uaword	0x9d2b
	.uaword	.LLST83
	.uleb128 0x2e
	.uaword	0x9d37
	.uaword	.LLST84
	.uleb128 0x2f
	.uaword	0x9d4d
	.byte	0x1
	.byte	0x52
	.uleb128 0x39
	.uaword	0x8d2b
	.uaword	.LBB452
	.uaword	.LBE452
	.byte	0x1
	.uahalf	0x17d
	.uleb128 0x3f
	.uaword	.LBB453
	.uaword	.LBE453
	.uleb128 0x2e
	.uaword	0x8d53
	.uaword	.LLST85
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4b
	.uaword	0x966e
	.uaword	.LBB455
	.uaword	.LBE455
	.byte	0x1
	.uahalf	0x1c4
	.uaword	0xa218
	.uleb128 0x3f
	.uaword	.LBB456
	.uaword	.LBE456
	.uleb128 0x2e
	.uaword	0x9697
	.uaword	.LLST86
	.uleb128 0x2f
	.uaword	0x96a3
	.byte	0x1
	.byte	0x52
	.uleb128 0x2e
	.uaword	0x96af
	.uaword	.LLST87
	.uleb128 0x39
	.uaword	0x8d2b
	.uaword	.LBB457
	.uaword	.LBE457
	.byte	0x1
	.uahalf	0x192
	.uleb128 0x3f
	.uaword	.LBB458
	.uaword	.LBE458
	.uleb128 0x2e
	.uaword	0x8d53
	.uaword	.LLST88
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uaword	.LBB459
	.uaword	.LBE459
	.uleb128 0x2c
	.uaword	0x8eb6
	.uaword	.LLST89
	.uleb128 0x3f
	.uaword	.LBB460
	.uaword	.LBE460
	.uleb128 0x2e
	.uaword	0x8ec6
	.uaword	.LLST90
	.uleb128 0x40
	.uaword	0x94ca
	.uaword	.LBB461
	.uaword	.Ldebug_ranges0+0x2b8
	.byte	0x1
	.uahalf	0x1c7
	.uleb128 0x33
	.uaword	.Ldebug_ranges0+0x2b8
	.uleb128 0x2e
	.uaword	0x94f7
	.uaword	.LLST91
	.uleb128 0x2e
	.uaword	0x9503
	.uaword	.LLST92
	.uleb128 0x2f
	.uaword	0x9519
	.byte	0x1
	.byte	0x52
	.uleb128 0x39
	.uaword	0x8d2b
	.uaword	.LBB463
	.uaword	.LBE463
	.byte	0x1
	.uahalf	0x170
	.uleb128 0x3f
	.uaword	.LBB464
	.uaword	.LBE464
	.uleb128 0x2e
	.uaword	0x8d53
	.uaword	.LLST93
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0x9b9e
	.uaword	.LFB252
	.uaword	.LFE252
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xa333
	.uleb128 0x2e
	.uaword	0x9bc7
	.uaword	.LLST94
	.uleb128 0x2f
	.uaword	0x9bdc
	.byte	0x1
	.byte	0x5f
	.uleb128 0x40
	.uaword	0x8e8a
	.uaword	.LBB476
	.uaword	.Ldebug_ranges0+0x2d8
	.byte	0x1
	.uahalf	0x1e5
	.uleb128 0x3e
	.uaword	0x8eb6
	.byte	0
	.uleb128 0x33
	.uaword	.Ldebug_ranges0+0x2d8
	.uleb128 0x2e
	.uaword	0x8ec6
	.uaword	.LLST95
	.uleb128 0x39
	.uaword	0x966e
	.uaword	.LBB478
	.uaword	.LBE478
	.byte	0x1
	.uahalf	0x1c4
	.uleb128 0x3f
	.uaword	.LBB479
	.uaword	.LBE479
	.uleb128 0x2e
	.uaword	0x9697
	.uaword	.LLST96
	.uleb128 0x2f
	.uaword	0x96a3
	.byte	0x1
	.byte	0x5f
	.uleb128 0x31
	.uaword	0x96af
	.uleb128 0x39
	.uaword	0x8d2b
	.uaword	.LBB480
	.uaword	.LBE480
	.byte	0x1
	.uahalf	0x192
	.uleb128 0x3f
	.uaword	.LBB481
	.uaword	.LBE481
	.uleb128 0x2e
	.uaword	0x8d53
	.uaword	.LLST97
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0x975b
	.uaword	.LFB253
	.uaword	.LFE253
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xa3d3
	.uleb128 0x2e
	.uaword	0x9784
	.uaword	.LLST98
	.uleb128 0x2f
	.uaword	0x9799
	.byte	0x1
	.byte	0x5f
	.uleb128 0x40
	.uaword	0x8e8a
	.uaword	.LBB490
	.uaword	.Ldebug_ranges0+0x2f0
	.byte	0x1
	.uahalf	0x210
	.uleb128 0x3e
	.uaword	0x8eb6
	.byte	0
	.uleb128 0x33
	.uaword	.Ldebug_ranges0+0x2f0
	.uleb128 0x2e
	.uaword	0x8ec6
	.uaword	.LLST99
	.uleb128 0x39
	.uaword	0x966e
	.uaword	.LBB492
	.uaword	.LBE492
	.byte	0x1
	.uahalf	0x1c4
	.uleb128 0x3f
	.uaword	.LBB493
	.uaword	.LBE493
	.uleb128 0x2e
	.uaword	0x9697
	.uaword	.LLST100
	.uleb128 0x2f
	.uaword	0x96a3
	.byte	0x1
	.byte	0x5f
	.uleb128 0x31
	.uaword	0x96af
	.uleb128 0x39
	.uaword	0x8d2b
	.uaword	.LBB494
	.uaword	.LBE494
	.byte	0x1
	.uahalf	0x192
	.uleb128 0x3f
	.uaword	.LBB495
	.uaword	.LBE495
	.uleb128 0x2e
	.uaword	0x8d53
	.uaword	.LLST101
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4c
	.byte	0x1
	.string	"IfxScuCcu_initConfig"
	.byte	0x1
	.uahalf	0x263
	.byte	0x1
	.uaword	.LFB255
	.uaword	.LFE255
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xa40f
	.uleb128 0x4d
	.string	"cfg"
	.byte	0x1
	.uahalf	0x263
	.uaword	0xa40f
	.uaword	.LLST102
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x8b7e
	.uleb128 0x4c
	.byte	0x1
	.string	"IfxScuCcu_modulation_init"
	.byte	0x1
	.uahalf	0x269
	.byte	0x1
	.uaword	.LFB256
	.uaword	.LFE256
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xa587
	.uleb128 0x4d
	.string	"Mod_Cfg"
	.byte	0x1
	.uahalf	0x269
	.uaword	0x8b73
	.uaword	.LLST103
	.uleb128 0x4a
	.uaword	.LASF45
	.byte	0x1
	.uahalf	0x26b
	.uaword	0x2bd
	.uaword	.LLST104
	.uleb128 0x1f
	.string	"RGain_P"
	.byte	0x1
	.uahalf	0x26c
	.uaword	0x8bc9
	.uleb128 0x49
	.string	"mod_enable"
	.byte	0x1
	.uahalf	0x26d
	.uaword	0x8682
	.uaword	.LLST105
	.uleb128 0x49
	.string	"Mod_Amp"
	.byte	0x1
	.uahalf	0x26e
	.uaword	0x816a
	.uaword	.LLST106
	.uleb128 0x48
	.string	"syspllcon0"
	.byte	0x1
	.uahalf	0x270
	.uaword	0x68ee
	.byte	0x1
	.byte	0x5f
	.uleb128 0x49
	.string	"syspllcon2"
	.byte	0x1
	.uahalf	0x271
	.uaword	0x6974
	.uaword	.LLST107
	.uleb128 0x36
	.uaword	0x922b
	.uaword	.LBB502
	.uaword	.Ldebug_ranges0+0x308
	.byte	0x1
	.uahalf	0x276
	.uaword	0xa558
	.uleb128 0x2d
	.uaword	0x9260
	.byte	0x6
	.byte	0xf2
	.uaword	.Ldebug_info0+42089
	.sleb128 0
	.uleb128 0x2c
	.uaword	0x9252
	.uaword	.LLST108
	.uleb128 0x33
	.uaword	.Ldebug_ranges0+0x308
	.uleb128 0x2f
	.uaword	0x926f
	.byte	0x1
	.byte	0x59
	.uleb128 0x2f
	.uaword	0x927e
	.byte	0x6
	.byte	0xf2
	.uaword	.Ldebug_info0+42089
	.sleb128 0
	.uleb128 0x2f
	.uaword	0x9293
	.byte	0x6
	.byte	0xf2
	.uaword	.Ldebug_info0+42089
	.sleb128 4
	.uleb128 0x30
	.uaword	0x92a5
	.sleb128 -268214272
	.uleb128 0x2f
	.uaword	0x92b0
	.byte	0x1
	.byte	0x5f
	.uleb128 0x2e
	.uaword	0x92bf
	.uaword	.LLST109
	.uleb128 0x32
	.uaword	0x8d2b
	.uaword	.LBB504
	.uaword	.Ldebug_ranges0+0x338
	.byte	0x1
	.byte	0x6d
	.uleb128 0x33
	.uaword	.Ldebug_ranges0+0x338
	.uleb128 0x2e
	.uaword	0x8d53
	.uaword	.LLST110
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4e
	.uaword	.LVL322
	.uaword	0xcd6f
	.uleb128 0x4f
	.uaword	.LVL324
	.uaword	0xcd9e
	.uaword	0xa575
	.uleb128 0x50
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x51
	.uaword	.LVL329
	.byte	0x1
	.uaword	0xcdcc
	.uleb128 0x50
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x47
	.byte	0x1
	.string	"IfxScuCcu_init"
	.byte	0x1
	.uahalf	0x235
	.byte	0x1
	.uaword	0x316
	.uaword	.LFB254
	.uaword	.LFE254
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xa991
	.uleb128 0x4d
	.string	"config"
	.byte	0x1
	.uahalf	0x235
	.uaword	0xa991
	.uaword	.LLST111
	.uleb128 0x49
	.string	"status"
	.byte	0x1
	.uahalf	0x237
	.uaword	0x316
	.uaword	.LLST112
	.uleb128 0x36
	.uaword	0x8f49
	.uaword	.LBB564
	.uaword	.Ldebug_ranges0+0x350
	.byte	0x1
	.uahalf	0x238
	.uaword	0xa6f6
	.uleb128 0x2c
	.uaword	0x8f79
	.uaword	.LLST111
	.uleb128 0x33
	.uaword	.Ldebug_ranges0+0x350
	.uleb128 0x2e
	.uaword	0x8f90
	.uaword	.LLST114
	.uleb128 0x31
	.uaword	0x8f9c
	.uleb128 0x2e
	.uaword	0x8fa8
	.uaword	.LLST115
	.uleb128 0x2e
	.uaword	0x8fb4
	.uaword	.LLST111
	.uleb128 0x36
	.uaword	0x8be8
	.uaword	.LBB566
	.uaword	.Ldebug_ranges0+0x368
	.byte	0x2
	.uahalf	0x4e8
	.uaword	0xa646
	.uleb128 0x33
	.uaword	.Ldebug_ranges0+0x368
	.uleb128 0x2e
	.uaword	0x8c20
	.uaword	.LLST117
	.uleb128 0x30
	.uaword	0x8c2c
	.sleb128 -268213592
	.byte	0
	.byte	0
	.uleb128 0x36
	.uaword	0x8c44
	.uaword	.LBB569
	.uaword	.Ldebug_ranges0+0x380
	.byte	0x2
	.uahalf	0x4eb
	.uaword	0xa664
	.uleb128 0x2c
	.uaword	0x8c71
	.uaword	.LLST117
	.byte	0
	.uleb128 0x38
	.uaword	.Ldebug_ranges0+0x398
	.uaword	0xa677
	.uleb128 0x2e
	.uaword	0x8fce
	.uaword	.LLST119
	.byte	0
	.uleb128 0x38
	.uaword	.Ldebug_ranges0+0x3b0
	.uaword	0xa68a
	.uleb128 0x2e
	.uaword	0x8fff
	.uaword	.LLST120
	.byte	0
	.uleb128 0x38
	.uaword	.Ldebug_ranges0+0x3d8
	.uaword	0xa69d
	.uleb128 0x2e
	.uaword	0x9018
	.uaword	.LLST121
	.byte	0
	.uleb128 0x38
	.uaword	.Ldebug_ranges0+0x400
	.uaword	0xa6b0
	.uleb128 0x2e
	.uaword	0x9034
	.uaword	.LLST122
	.byte	0
	.uleb128 0x37
	.uaword	.LBB587
	.uaword	.LBE587
	.uaword	0xa6c7
	.uleb128 0x2e
	.uaword	0x904c
	.uaword	.LLST123
	.byte	0
	.uleb128 0x4b
	.uaword	0x8c7e
	.uaword	.LBB588
	.uaword	.LBE588
	.byte	0x2
	.uahalf	0x596
	.uaword	0xa6e1
	.uleb128 0x3a
	.uaword	0x8ca9
	.byte	0
	.uleb128 0x3f
	.uaword	.LBB590
	.uaword	.LBE590
	.uleb128 0x2e
	.uaword	0x8fe7
	.uaword	.LLST124
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x36
	.uaword	0x9070
	.uaword	.LBB592
	.uaword	.Ldebug_ranges0+0x420
	.byte	0x1
	.uahalf	0x25c
	.uaword	0xa853
	.uleb128 0x2c
	.uaword	0x90a2
	.uaword	.LLST125
	.uleb128 0x33
	.uaword	.Ldebug_ranges0+0x420
	.uleb128 0x2e
	.uaword	0x90ae
	.uaword	.LLST126
	.uleb128 0x2e
	.uaword	0x90ba
	.uaword	.LLST127
	.uleb128 0x31
	.uaword	0x90c6
	.uleb128 0x31
	.uaword	0x90d2
	.uleb128 0x36
	.uaword	0x8cda
	.uaword	.LBB594
	.uaword	.Ldebug_ranges0+0x440
	.byte	0x2
	.uahalf	0x71a
	.uaword	0xa7f4
	.uleb128 0x2c
	.uaword	0x8cf3
	.uaword	.LLST128
	.uleb128 0x33
	.uaword	.Ldebug_ranges0+0x440
	.uleb128 0x2e
	.uaword	0x8d03
	.uaword	.LLST129
	.uleb128 0x2e
	.uaword	0x8d14
	.uaword	.LLST130
	.uleb128 0x40
	.uaword	0x8cb6
	.uaword	.LBB596
	.uaword	.Ldebug_ranges0+0x480
	.byte	0x2
	.uahalf	0x723
	.uleb128 0x40
	.uaword	0x8e8a
	.uaword	.LBB598
	.uaword	.Ldebug_ranges0+0x4c0
	.byte	0x2
	.uahalf	0x6d6
	.uleb128 0x2c
	.uaword	0x8eb6
	.uaword	.LLST131
	.uleb128 0x33
	.uaword	.Ldebug_ranges0+0x4c0
	.uleb128 0x2e
	.uaword	0x8ec6
	.uaword	.LLST132
	.uleb128 0x40
	.uaword	0x966e
	.uaword	.LBB600
	.uaword	.Ldebug_ranges0+0x500
	.byte	0x1
	.uahalf	0x1c4
	.uleb128 0x33
	.uaword	.Ldebug_ranges0+0x500
	.uleb128 0x2e
	.uaword	0x9697
	.uaword	.LLST133
	.uleb128 0x2f
	.uaword	0x96a3
	.byte	0x1
	.byte	0x5f
	.uleb128 0x2e
	.uaword	0x96af
	.uaword	.LLST134
	.uleb128 0x40
	.uaword	0x8d2b
	.uaword	.LBB602
	.uaword	.Ldebug_ranges0+0x520
	.byte	0x1
	.uahalf	0x192
	.uleb128 0x33
	.uaword	.Ldebug_ranges0+0x520
	.uleb128 0x2e
	.uaword	0x8d53
	.uaword	.LLST135
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x36
	.uaword	0x8be8
	.uaword	.LBB642
	.uaword	.Ldebug_ranges0+0x540
	.byte	0x2
	.uahalf	0x704
	.uaword	0xa821
	.uleb128 0x33
	.uaword	.Ldebug_ranges0+0x540
	.uleb128 0x2e
	.uaword	0x8c20
	.uaword	.LLST136
	.uleb128 0x2e
	.uaword	0x8c2c
	.uaword	.LLST137
	.byte	0
	.byte	0
	.uleb128 0x36
	.uaword	0x8c44
	.uaword	.LBB647
	.uaword	.Ldebug_ranges0+0x558
	.byte	0x2
	.uahalf	0x70a
	.uaword	0xa83b
	.uleb128 0x3a
	.uaword	0x8c71
	.byte	0
	.uleb128 0x39
	.uaword	0x8c7e
	.uaword	.LBB652
	.uaword	.LBE652
	.byte	0x2
	.uahalf	0x716
	.uleb128 0x3a
	.uaword	0x8ca9
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x36
	.uaword	0x8d60
	.uaword	.LBB660
	.uaword	.Ldebug_ranges0+0x570
	.byte	0x1
	.uahalf	0x241
	.uaword	0xa987
	.uleb128 0x2c
	.uaword	0x8d8e
	.uaword	.LLST138
	.uleb128 0x33
	.uaword	.Ldebug_ranges0+0x570
	.uleb128 0x31
	.uaword	0x8d9a
	.uleb128 0x2e
	.uaword	0x8da6
	.uaword	.LLST139
	.uleb128 0x2e
	.uaword	0x8db2
	.uaword	.LLST140
	.uleb128 0x36
	.uaword	0x8be8
	.uaword	.LBB662
	.uaword	.Ldebug_ranges0+0x588
	.byte	0x2
	.uahalf	0x5a2
	.uaword	0xa8b9
	.uleb128 0x33
	.uaword	.Ldebug_ranges0+0x588
	.uleb128 0x2e
	.uaword	0x8c20
	.uaword	.LLST141
	.uleb128 0x2e
	.uaword	0x8c2c
	.uaword	.LLST142
	.byte	0
	.byte	0
	.uleb128 0x36
	.uaword	0x8c44
	.uaword	.LBB665
	.uaword	.Ldebug_ranges0+0x5a0
	.byte	0x2
	.uahalf	0x5a5
	.uaword	0xa8d7
	.uleb128 0x2c
	.uaword	0x8c71
	.uaword	.LLST141
	.byte	0
	.uleb128 0x38
	.uaword	.Ldebug_ranges0+0x5c0
	.uaword	0xa8e6
	.uleb128 0x31
	.uaword	0x8dc3
	.byte	0
	.uleb128 0x38
	.uaword	.Ldebug_ranges0+0x5d8
	.uaword	0xa8f9
	.uleb128 0x2e
	.uaword	0x8dd5
	.uaword	.LLST144
	.byte	0
	.uleb128 0x38
	.uaword	.Ldebug_ranges0+0x5f0
	.uaword	0xa90c
	.uleb128 0x2e
	.uaword	0x8de7
	.uaword	.LLST145
	.byte	0
	.uleb128 0x37
	.uaword	.LBB676
	.uaword	.LBE676
	.uaword	0xa923
	.uleb128 0x2e
	.uaword	0x8df9
	.uaword	.LLST146
	.byte	0
	.uleb128 0x37
	.uaword	.LBB677
	.uaword	.LBE677
	.uaword	0xa936
	.uleb128 0x31
	.uaword	0x8e0b
	.byte	0
	.uleb128 0x37
	.uaword	.LBB678
	.uaword	.LBE678
	.uaword	0xa949
	.uleb128 0x31
	.uaword	0x8e21
	.byte	0
	.uleb128 0x37
	.uaword	.LBB679
	.uaword	.LBE679
	.uaword	0xa95c
	.uleb128 0x31
	.uaword	0x8e37
	.byte	0
	.uleb128 0x37
	.uaword	.LBB680
	.uaword	.LBE680
	.uaword	0xa96f
	.uleb128 0x31
	.uaword	0x8e49
	.byte	0
	.uleb128 0x39
	.uaword	0x8c7e
	.uaword	.LBB681
	.uaword	.LBE681
	.byte	0x2
	.uahalf	0x662
	.uleb128 0x3a
	.uaword	0x8ca9
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4e
	.uaword	.LVL377
	.uaword	0xa415
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0xa997
	.uleb128 0x1c
	.uaword	0x8b7e
	.uleb128 0x52
	.byte	0x1
	.string	"IfxScuCcu_setAsclinFFrequency"
	.byte	0x1
	.uahalf	0x28e
	.byte	0x1
	.uaword	0x2fd
	.uaword	.LFB257
	.uaword	.LFE257
	.uaword	.LLST147
	.byte	0x1
	.uaword	0xabd1
	.uleb128 0x4d
	.string	"asclinFFreq"
	.byte	0x1
	.uahalf	0x28e
	.uaword	0x2fd
	.uaword	.LLST148
	.uleb128 0x4a
	.uaword	.LASF43
	.byte	0x1
	.uahalf	0x290
	.uaword	0x2fd
	.uaword	.LLST149
	.uleb128 0x53
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0x291
	.uaword	0x2fd
	.byte	0x1
	.byte	0x5f
	.uleb128 0x4a
	.uaword	.LASF58
	.byte	0x1
	.uahalf	0x292
	.uaword	0x2bd
	.uaword	.LLST150
	.uleb128 0x4a
	.uaword	.LASF40
	.byte	0x1
	.uahalf	0x293
	.uaword	0x55db
	.uaword	.LLST151
	.uleb128 0x49
	.string	"asclinFDiv"
	.byte	0x1
	.uahalf	0x295
	.uaword	0x2ef
	.uaword	.LLST152
	.uleb128 0x36
	.uaword	0x8e8a
	.uaword	.LBB706
	.uaword	.Ldebug_ranges0+0x608
	.byte	0x1
	.uahalf	0x291
	.uaword	0xaac0
	.uleb128 0x3e
	.uaword	0x8eb6
	.byte	0x2
	.uleb128 0x33
	.uaword	.Ldebug_ranges0+0x608
	.uleb128 0x2e
	.uaword	0x8ec6
	.uaword	.LLST153
	.uleb128 0x40
	.uaword	0x9cfe
	.uaword	.LBB708
	.uaword	.Ldebug_ranges0+0x630
	.byte	0x1
	.uahalf	0x1d0
	.uleb128 0x33
	.uaword	.Ldebug_ranges0+0x630
	.uleb128 0x2e
	.uaword	0x9d2b
	.uaword	.LLST154
	.uleb128 0x2e
	.uaword	0x9d37
	.uaword	.LLST155
	.uleb128 0x2f
	.uaword	0x9d4d
	.byte	0x1
	.byte	0x5f
	.uleb128 0x39
	.uaword	0x8d2b
	.uaword	.LBB710
	.uaword	.LBE710
	.byte	0x1
	.uahalf	0x17d
	.uleb128 0x3f
	.uaword	.LBB711
	.uaword	.LBE711
	.uleb128 0x2e
	.uaword	0x8d53
	.uaword	.LLST156
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4b
	.uaword	0x90ea
	.uaword	.LBB718
	.uaword	.LBE718
	.byte	0x1
	.uahalf	0x296
	.uaword	0xaafa
	.uleb128 0x2c
	.uaword	0x910a
	.uaword	.LLST157
	.uleb128 0x2c
	.uaword	0x9101
	.uaword	.LLST158
	.uleb128 0x3f
	.uaword	.LBB719
	.uaword	.LBE719
	.uleb128 0x2e
	.uaword	0x9113
	.uaword	.LLST159
	.byte	0
	.byte	0
	.uleb128 0x36
	.uaword	0x911f
	.uaword	.LBB720
	.uaword	.Ldebug_ranges0+0x648
	.byte	0x1
	.uahalf	0x2ad
	.uaword	0xaba3
	.uleb128 0x33
	.uaword	.Ldebug_ranges0+0x648
	.uleb128 0x2e
	.uaword	0x914b
	.uaword	.LLST160
	.uleb128 0x2f
	.uaword	0x9157
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x40
	.uaword	0x8e8a
	.uaword	.LBB722
	.uaword	.Ldebug_ranges0+0x670
	.byte	0x2
	.uahalf	0x675
	.uleb128 0x2c
	.uaword	0x8eb6
	.uaword	.LLST161
	.uleb128 0x33
	.uaword	.Ldebug_ranges0+0x670
	.uleb128 0x2e
	.uaword	0x8ec6
	.uaword	.LLST162
	.uleb128 0x40
	.uaword	0x9cfe
	.uaword	.LBB724
	.uaword	.Ldebug_ranges0+0x690
	.byte	0x1
	.uahalf	0x1d0
	.uleb128 0x33
	.uaword	.Ldebug_ranges0+0x690
	.uleb128 0x2e
	.uaword	0x9d2b
	.uaword	.LLST163
	.uleb128 0x2e
	.uaword	0x9d37
	.uaword	.LLST164
	.uleb128 0x2f
	.uaword	0x9d4d
	.byte	0x1
	.byte	0x5f
	.uleb128 0x39
	.uaword	0x8d2b
	.uaword	.LBB726
	.uaword	.LBE726
	.byte	0x1
	.uahalf	0x17d
	.uleb128 0x3f
	.uaword	.LBB727
	.uaword	.LBE727
	.uleb128 0x2e
	.uaword	0x8d53
	.uaword	.LLST165
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4e
	.uaword	.LVL479
	.uaword	0xcd6f
	.uleb128 0x4f
	.uaword	.LVL481
	.uaword	0xcd9e
	.uaword	0xabc0
	.uleb128 0x50
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x54
	.uaword	.LVL482
	.uaword	0xcdcc
	.uleb128 0x50
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x47
	.byte	0x1
	.string	"IfxScuCcu_setAsclinSFrequency"
	.byte	0x1
	.uahalf	0x2b2
	.byte	0x1
	.uaword	0x2fd
	.uaword	.LFB258
	.uaword	.LFE258
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xad8c
	.uleb128 0x4d
	.string	"asclinSFreq"
	.byte	0x1
	.uahalf	0x2b2
	.uaword	0x2fd
	.uaword	.LLST166
	.uleb128 0x55
	.uaword	.LASF43
	.byte	0x1
	.uahalf	0x2b4
	.uaword	0x2fd
	.byte	0x4
	.uaword	0
	.uleb128 0x4a
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0x2b5
	.uaword	0x2fd
	.uaword	.LLST167
	.uleb128 0x4a
	.uaword	.LASF58
	.byte	0x1
	.uahalf	0x2b6
	.uaword	0x2bd
	.uaword	.LLST168
	.uleb128 0x53
	.uaword	.LASF40
	.byte	0x1
	.uahalf	0x2b7
	.uaword	0x55db
	.byte	0x1
	.byte	0x58
	.uleb128 0x49
	.string	"asclinSDiv"
	.byte	0x1
	.uahalf	0x2c9
	.uaword	0x2ef
	.uaword	.LLST169
	.uleb128 0x4b
	.uaword	0x90ea
	.uaword	.LBB752
	.uaword	.LBE752
	.byte	0x1
	.uahalf	0x2ca
	.uaword	0xacb1
	.uleb128 0x2c
	.uaword	0x910a
	.uaword	.LLST170
	.uleb128 0x2c
	.uaword	0x9101
	.uaword	.LLST171
	.uleb128 0x3f
	.uaword	.LBB753
	.uaword	.LBE753
	.uleb128 0x2e
	.uaword	0x9113
	.uaword	.LLST172
	.byte	0
	.byte	0
	.uleb128 0x36
	.uaword	0x8e8a
	.uaword	.LBB754
	.uaword	.Ldebug_ranges0+0x6a8
	.byte	0x1
	.uahalf	0x2bd
	.uaword	0xad50
	.uleb128 0x2c
	.uaword	0x8eb6
	.uaword	.LLST173
	.uleb128 0x33
	.uaword	.Ldebug_ranges0+0x6a8
	.uleb128 0x31
	.uaword	0x8ec6
	.uleb128 0x3f
	.uaword	.LBB756
	.uaword	.LBE756
	.uleb128 0x3e
	.uaword	0x8eb6
	.byte	0x1
	.uleb128 0x3f
	.uaword	.LBB757
	.uaword	.LBE757
	.uleb128 0x2f
	.uaword	0x8ec6
	.byte	0x1
	.byte	0x5f
	.uleb128 0x40
	.uaword	0x94ca
	.uaword	.LBB758
	.uaword	.Ldebug_ranges0+0x6c0
	.byte	0x1
	.uahalf	0x1c7
	.uleb128 0x33
	.uaword	.Ldebug_ranges0+0x6c0
	.uleb128 0x30
	.uaword	0x94f7
	.sleb128 -268214272
	.uleb128 0x2e
	.uaword	0x9503
	.uaword	.LLST174
	.uleb128 0x2f
	.uaword	0x9519
	.byte	0x1
	.byte	0x5f
	.uleb128 0x39
	.uaword	0x8d2b
	.uaword	.LBB760
	.uaword	.LBE760
	.byte	0x1
	.uahalf	0x170
	.uleb128 0x3f
	.uaword	.LBB761
	.uaword	.LBE761
	.uleb128 0x2e
	.uaword	0x8d53
	.uaword	.LLST175
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4e
	.uaword	.LVL507
	.uaword	0xcd6f
	.uleb128 0x4f
	.uaword	.LVL509
	.uaword	0xcd9e
	.uaword	0xad6d
	.uleb128 0x50
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x4f
	.uaword	.LVL510
	.uaword	0xcdcc
	.uaword	0xad81
	.uleb128 0x50
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x56
	.uaword	.LVL511
	.byte	0x1
	.uaword	0x9526
	.byte	0
	.uleb128 0x47
	.byte	0x1
	.string	"IfxScuCcu_setBbbFrequency"
	.byte	0x1
	.uahalf	0x2e6
	.byte	0x1
	.uaword	0x2fd
	.uaword	.LFB259
	.uaword	.LFE259
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xafb2
	.uleb128 0x4d
	.string	"bbbFreq"
	.byte	0x1
	.uahalf	0x2e6
	.uaword	0x2fd
	.uaword	.LLST176
	.uleb128 0x4a
	.uaword	.LASF43
	.byte	0x1
	.uahalf	0x2e8
	.uaword	0x2fd
	.uaword	.LLST177
	.uleb128 0x53
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0x2e9
	.uaword	0x2fd
	.byte	0x1
	.byte	0x5f
	.uleb128 0x4a
	.uaword	.LASF38
	.byte	0x1
	.uahalf	0x2ea
	.uaword	0x555b
	.uaword	.LLST178
	.uleb128 0x4a
	.uaword	.LASF58
	.byte	0x1
	.uahalf	0x2eb
	.uaword	0x2bd
	.uaword	.LLST179
	.uleb128 0x49
	.string	"bbbDiv"
	.byte	0x1
	.uahalf	0x2ec
	.uaword	0x2ef
	.uaword	.LLST180
	.uleb128 0x36
	.uaword	0x8e8a
	.uaword	.LBB784
	.uaword	.Ldebug_ranges0+0x6e0
	.byte	0x1
	.uahalf	0x2e9
	.uaword	0xaea3
	.uleb128 0x3e
	.uaword	0x8eb6
	.byte	0
	.uleb128 0x33
	.uaword	.Ldebug_ranges0+0x6e0
	.uleb128 0x2e
	.uaword	0x8ec6
	.uaword	.LLST181
	.uleb128 0x39
	.uaword	0x966e
	.uaword	.LBB786
	.uaword	.LBE786
	.byte	0x1
	.uahalf	0x1c4
	.uleb128 0x3f
	.uaword	.LBB787
	.uaword	.LBE787
	.uleb128 0x2e
	.uaword	0x9697
	.uaword	.LLST182
	.uleb128 0x2f
	.uaword	0x96a3
	.byte	0x1
	.byte	0x5f
	.uleb128 0x31
	.uaword	0x96af
	.uleb128 0x39
	.uaword	0x8d2b
	.uaword	.LBB788
	.uaword	.LBE788
	.byte	0x1
	.uahalf	0x192
	.uleb128 0x3f
	.uaword	.LBB789
	.uaword	.LBE789
	.uleb128 0x2e
	.uaword	0x8d53
	.uaword	.LLST183
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4b
	.uaword	0x90ea
	.uaword	.LBB791
	.uaword	.LBE791
	.byte	0x1
	.uahalf	0x2ed
	.uaword	0xaedd
	.uleb128 0x2c
	.uaword	0x910a
	.uaword	.LLST184
	.uleb128 0x2c
	.uaword	0x9101
	.uaword	.LLST185
	.uleb128 0x3f
	.uaword	.LBB792
	.uaword	.LBE792
	.uleb128 0x2e
	.uaword	0x9113
	.uaword	.LLST186
	.byte	0
	.byte	0
	.uleb128 0x36
	.uaword	0x9626
	.uaword	.LBB793
	.uaword	.Ldebug_ranges0+0x6f8
	.byte	0x1
	.uahalf	0x30a
	.uaword	0xaf84
	.uleb128 0x33
	.uaword	.Ldebug_ranges0+0x6f8
	.uleb128 0x2e
	.uaword	0x964e
	.uaword	.LLST187
	.uleb128 0x2f
	.uaword	0x9662
	.byte	0x1
	.byte	0x5f
	.uleb128 0x32
	.uaword	0x8e8a
	.uaword	.LBB795
	.uaword	.Ldebug_ranges0+0x718
	.byte	0x1
	.byte	0xa0
	.uleb128 0x2c
	.uaword	0x8eb6
	.uaword	.LLST188
	.uleb128 0x33
	.uaword	.Ldebug_ranges0+0x718
	.uleb128 0x2e
	.uaword	0x8ec6
	.uaword	.LLST189
	.uleb128 0x39
	.uaword	0x966e
	.uaword	.LBB797
	.uaword	.LBE797
	.byte	0x1
	.uahalf	0x1c4
	.uleb128 0x3f
	.uaword	.LBB798
	.uaword	.LBE798
	.uleb128 0x2e
	.uaword	0x9697
	.uaword	.LLST190
	.uleb128 0x2f
	.uaword	0x96a3
	.byte	0x1
	.byte	0x5f
	.uleb128 0x31
	.uaword	0x96af
	.uleb128 0x39
	.uaword	0x8d2b
	.uaword	.LBB799
	.uaword	.LBE799
	.byte	0x1
	.uahalf	0x192
	.uleb128 0x3f
	.uaword	.LBB800
	.uaword	.LBE800
	.uleb128 0x2e
	.uaword	0x8d53
	.uaword	.LLST191
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4e
	.uaword	.LVL529
	.uaword	0xcd6f
	.uleb128 0x4f
	.uaword	.LVL531
	.uaword	0xcd9e
	.uaword	0xafa1
	.uleb128 0x50
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x54
	.uaword	.LVL533
	.uaword	0xcdcc
	.uleb128 0x50
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x47
	.byte	0x1
	.string	"IfxScuCcu_setCpuFrequency"
	.byte	0x1
	.uahalf	0x30f
	.byte	0x1
	.uaword	0x2fd
	.uaword	.LFB260
	.uaword	.LFE260
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xb145
	.uleb128 0x4d
	.string	"cpu"
	.byte	0x1
	.uahalf	0x30f
	.uaword	0x7890
	.uaword	.LLST192
	.uleb128 0x4d
	.string	"cpuFreq"
	.byte	0x1
	.uahalf	0x30f
	.uaword	0x2fd
	.uaword	.LLST193
	.uleb128 0x4a
	.uaword	.LASF45
	.byte	0x1
	.uahalf	0x311
	.uaword	0x2bd
	.uaword	.LLST194
	.uleb128 0x49
	.string	"sriFreq"
	.byte	0x1
	.uahalf	0x312
	.uaword	0x2fd
	.uaword	.LLST195
	.uleb128 0x49
	.string	"cpuDiv"
	.byte	0x1
	.uahalf	0x313
	.uaword	0x2ef
	.uaword	.LLST196
	.uleb128 0x36
	.uaword	0x975b
	.uaword	.LBB816
	.uaword	.Ldebug_ranges0+0x730
	.byte	0x1
	.uahalf	0x315
	.uaword	0xb0e6
	.uleb128 0x33
	.uaword	.Ldebug_ranges0+0x730
	.uleb128 0x2e
	.uaword	0x9784
	.uaword	.LLST197
	.uleb128 0x2f
	.uaword	0x9799
	.byte	0x1
	.byte	0x52
	.uleb128 0x40
	.uaword	0x8e8a
	.uaword	.LBB818
	.uaword	.Ldebug_ranges0+0x758
	.byte	0x1
	.uahalf	0x210
	.uleb128 0x3e
	.uaword	0x8eb6
	.byte	0
	.uleb128 0x33
	.uaword	.Ldebug_ranges0+0x758
	.uleb128 0x2e
	.uaword	0x8ec6
	.uaword	.LLST198
	.uleb128 0x39
	.uaword	0x966e
	.uaword	.LBB820
	.uaword	.LBE820
	.byte	0x1
	.uahalf	0x1c4
	.uleb128 0x3f
	.uaword	.LBB821
	.uaword	.LBE821
	.uleb128 0x2e
	.uaword	0x9697
	.uaword	.LLST199
	.uleb128 0x2f
	.uaword	0x96a3
	.byte	0x1
	.byte	0x52
	.uleb128 0x31
	.uaword	0x96af
	.uleb128 0x39
	.uaword	0x8d2b
	.uaword	.LBB822
	.uaword	.LBE822
	.byte	0x1
	.uahalf	0x192
	.uleb128 0x3f
	.uaword	.LBB823
	.uaword	.LBE823
	.uleb128 0x2e
	.uaword	0x8d53
	.uaword	.LLST200
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4e
	.uaword	.LVL560
	.uaword	0xcd6f
	.uleb128 0x4f
	.uaword	.LVL562
	.uaword	0xcd9e
	.uaword	0xb103
	.uleb128 0x50
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x4e
	.uaword	.LVL565
	.uaword	0xcd6f
	.uleb128 0x4f
	.uaword	.LVL567
	.uaword	0xcd9e
	.uaword	0xb120
	.uleb128 0x50
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x4f
	.uaword	.LVL569
	.uaword	0xcdcc
	.uaword	0xb134
	.uleb128 0x50
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x54
	.uaword	.LVL576
	.uaword	0xcdcc
	.uleb128 0x50
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x47
	.byte	0x1
	.string	"IfxScuCcu_setFsi2Frequency"
	.byte	0x1
	.uahalf	0x344
	.byte	0x1
	.uaword	0x2fd
	.uaword	.LFB261
	.uaword	.LFE261
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xb248
	.uleb128 0x4d
	.string	"fsi2Freq"
	.byte	0x1
	.uahalf	0x344
	.uaword	0x2fd
	.uaword	.LLST201
	.uleb128 0x4a
	.uaword	.LASF56
	.byte	0x1
	.uahalf	0x346
	.uaword	0x2fd
	.uaword	.LLST202
	.uleb128 0x4a
	.uaword	.LASF58
	.byte	0x1
	.uahalf	0x347
	.uaword	0x2bd
	.uaword	.LLST203
	.uleb128 0x4a
	.uaword	.LASF38
	.byte	0x1
	.uahalf	0x348
	.uaword	0x555b
	.uaword	.LLST204
	.uleb128 0x36
	.uaword	0x98ad
	.uaword	.LBB837
	.uaword	.Ldebug_ranges0+0x778
	.byte	0x1
	.uahalf	0x362
	.uaword	0xb1f5
	.uleb128 0x33
	.uaword	.Ldebug_ranges0+0x778
	.uleb128 0x2e
	.uaword	0x98d6
	.uaword	.LLST205
	.uleb128 0x2e
	.uaword	0x98e1
	.uaword	.LLST206
	.uleb128 0x4e
	.uaword	.LVL595
	.uaword	0x975b
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uaword	.LBB841
	.uaword	.LBE841
	.uleb128 0x48
	.string	"fsi2Div"
	.byte	0x1
	.uahalf	0x34c
	.uaword	0x2ef
	.byte	0x1
	.byte	0x59
	.uleb128 0x4e
	.uaword	.LVL599
	.uaword	0x975b
	.uleb128 0x4e
	.uaword	.LVL603
	.uaword	0xcd6f
	.uleb128 0x4f
	.uaword	.LVL605
	.uaword	0xcd9e
	.uaword	0xb236
	.uleb128 0x50
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x54
	.uaword	.LVL607
	.uaword	0xcdcc
	.uleb128 0x50
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x47
	.byte	0x1
	.string	"IfxScuCcu_setFsiFrequency"
	.byte	0x1
	.uahalf	0x368
	.byte	0x1
	.uaword	0x2fd
	.uaword	.LFB262
	.uaword	.LFE262
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xb348
	.uleb128 0x4d
	.string	"fsiFreq"
	.byte	0x1
	.uahalf	0x368
	.uaword	0x2fd
	.uaword	.LLST207
	.uleb128 0x4a
	.uaword	.LASF56
	.byte	0x1
	.uahalf	0x36a
	.uaword	0x2fd
	.uaword	.LLST208
	.uleb128 0x4a
	.uaword	.LASF58
	.byte	0x1
	.uahalf	0x36b
	.uaword	0x2bd
	.uaword	.LLST209
	.uleb128 0x4a
	.uaword	.LASF38
	.byte	0x1
	.uahalf	0x36c
	.uaword	0x555b
	.uaword	.LLST210
	.uleb128 0x36
	.uaword	0x99b5
	.uaword	.LBB845
	.uaword	.Ldebug_ranges0+0x790
	.byte	0x1
	.uahalf	0x386
	.uaword	0xb2f6
	.uleb128 0x33
	.uaword	.Ldebug_ranges0+0x790
	.uleb128 0x2e
	.uaword	0x99dd
	.uaword	.LLST211
	.uleb128 0x2e
	.uaword	0x99e9
	.uaword	.LLST212
	.uleb128 0x4e
	.uaword	.LVL617
	.uaword	0x975b
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uaword	.LBB849
	.uaword	.LBE849
	.uleb128 0x48
	.string	"fsiDiv"
	.byte	0x1
	.uahalf	0x370
	.uaword	0x2ef
	.byte	0x1
	.byte	0x59
	.uleb128 0x4e
	.uaword	.LVL621
	.uaword	0x975b
	.uleb128 0x4e
	.uaword	.LVL625
	.uaword	0xcd6f
	.uleb128 0x4f
	.uaword	.LVL627
	.uaword	0xcd9e
	.uaword	0xb336
	.uleb128 0x50
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x54
	.uaword	.LVL629
	.uaword	0xcdcc
	.uleb128 0x50
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x47
	.byte	0x1
	.string	"IfxScuCcu_setGethFrequency"
	.byte	0x1
	.uahalf	0x38c
	.byte	0x1
	.uaword	0x2fd
	.uaword	.LFB263
	.uaword	.LFE263
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xb55c
	.uleb128 0x4d
	.string	"gethFreq"
	.byte	0x1
	.uahalf	0x38c
	.uaword	0x2fd
	.uaword	.LLST213
	.uleb128 0x4a
	.uaword	.LASF43
	.byte	0x1
	.uahalf	0x38e
	.uaword	0x2fd
	.uaword	.LLST214
	.uleb128 0x53
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0x38f
	.uaword	0x2fd
	.byte	0x1
	.byte	0x5f
	.uleb128 0x4a
	.uaword	.LASF41
	.byte	0x1
	.uahalf	0x390
	.uaword	0x569b
	.uaword	.LLST215
	.uleb128 0x4a
	.uaword	.LASF58
	.byte	0x1
	.uahalf	0x391
	.uaword	0x2bd
	.uaword	.LLST216
	.uleb128 0x49
	.string	"gethDiv"
	.byte	0x1
	.uahalf	0x392
	.uaword	0x2ef
	.uaword	.LLST217
	.uleb128 0x36
	.uaword	0x8e8a
	.uaword	.LBB866
	.uaword	.Ldebug_ranges0+0x7a8
	.byte	0x1
	.uahalf	0x38f
	.uaword	0xb462
	.uleb128 0x3e
	.uaword	0x8eb6
	.byte	0
	.uleb128 0x33
	.uaword	.Ldebug_ranges0+0x7a8
	.uleb128 0x2e
	.uaword	0x8ec6
	.uaword	.LLST218
	.uleb128 0x39
	.uaword	0x966e
	.uaword	.LBB868
	.uaword	.LBE868
	.byte	0x1
	.uahalf	0x1c4
	.uleb128 0x3f
	.uaword	.LBB869
	.uaword	.LBE869
	.uleb128 0x2e
	.uaword	0x9697
	.uaword	.LLST219
	.uleb128 0x2f
	.uaword	0x96a3
	.byte	0x1
	.byte	0x5f
	.uleb128 0x31
	.uaword	0x96af
	.uleb128 0x39
	.uaword	0x8d2b
	.uaword	.LBB870
	.uaword	.LBE870
	.byte	0x1
	.uahalf	0x192
	.uleb128 0x3f
	.uaword	.LBB871
	.uaword	.LBE871
	.uleb128 0x2e
	.uaword	0x8d53
	.uaword	.LLST220
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4b
	.uaword	0x90ea
	.uaword	.LBB873
	.uaword	.LBE873
	.byte	0x1
	.uahalf	0x393
	.uaword	0xb49c
	.uleb128 0x2c
	.uaword	0x910a
	.uaword	.LLST221
	.uleb128 0x2c
	.uaword	0x9101
	.uaword	.LLST222
	.uleb128 0x3f
	.uaword	.LBB874
	.uaword	.LBE874
	.uleb128 0x2e
	.uaword	0x9113
	.uaword	.LLST223
	.byte	0
	.byte	0
	.uleb128 0x36
	.uaword	0x9174
	.uaword	.LBB875
	.uaword	.Ldebug_ranges0+0x7c0
	.byte	0x1
	.uahalf	0x3b0
	.uaword	0xb52e
	.uleb128 0x40
	.uaword	0x8e8a
	.uaword	.LBB877
	.uaword	.Ldebug_ranges0+0x7d8
	.byte	0x2
	.uahalf	0x684
	.uleb128 0x2c
	.uaword	0x8eb6
	.uaword	.LLST224
	.uleb128 0x33
	.uaword	.Ldebug_ranges0+0x7d8
	.uleb128 0x2e
	.uaword	0x8ec6
	.uaword	.LLST225
	.uleb128 0x39
	.uaword	0x966e
	.uaword	.LBB879
	.uaword	.LBE879
	.byte	0x1
	.uahalf	0x1c4
	.uleb128 0x3f
	.uaword	.LBB880
	.uaword	.LBE880
	.uleb128 0x2e
	.uaword	0x9697
	.uaword	.LLST226
	.uleb128 0x2f
	.uaword	0x96a3
	.byte	0x1
	.byte	0x5f
	.uleb128 0x31
	.uaword	0x96af
	.uleb128 0x39
	.uaword	0x8d2b
	.uaword	.LBB881
	.uaword	.LBE881
	.byte	0x1
	.uahalf	0x192
	.uleb128 0x3f
	.uaword	.LBB882
	.uaword	.LBE882
	.uleb128 0x2e
	.uaword	0x8d53
	.uaword	.LLST227
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4e
	.uaword	.LVL641
	.uaword	0xcd6f
	.uleb128 0x4f
	.uaword	.LVL643
	.uaword	0xcd9e
	.uaword	0xb54b
	.uleb128 0x50
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x54
	.uaword	.LVL645
	.uaword	0xcdcc
	.uleb128 0x50
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x47
	.byte	0x1
	.string	"IfxScuCcu_setGtmFrequency"
	.byte	0x1
	.uahalf	0x3b5
	.byte	0x1
	.uaword	0x2fd
	.uaword	.LFB264
	.uaword	.LFE264
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xb78d
	.uleb128 0x4d
	.string	"gtmFreq"
	.byte	0x1
	.uahalf	0x3b5
	.uaword	0x2fd
	.uaword	.LLST228
	.uleb128 0x4a
	.uaword	.LASF58
	.byte	0x1
	.uahalf	0x3b7
	.uaword	0x2bd
	.uaword	.LLST229
	.uleb128 0x53
	.uaword	.LASF38
	.byte	0x1
	.uahalf	0x3b8
	.uaword	0x555b
	.byte	0x1
	.byte	0x58
	.uleb128 0x49
	.string	"gtmDiv"
	.byte	0x1
	.uahalf	0x3b9
	.uaword	0x2ef
	.uaword	.LLST230
	.uleb128 0x36
	.uaword	0x9199
	.uaword	.LBB905
	.uaword	.Ldebug_ranges0+0x7f0
	.byte	0x1
	.uahalf	0x3df
	.uaword	0xb688
	.uleb128 0x33
	.uaword	.Ldebug_ranges0+0x7f0
	.uleb128 0x31
	.uaword	0x91c1
	.uleb128 0x2e
	.uaword	0x91d0
	.uaword	.LLST231
	.uleb128 0x36
	.uaword	0x8e8a
	.uaword	.LBB907
	.uaword	.Ldebug_ranges0+0x808
	.byte	0x2
	.uahalf	0x69b
	.uaword	0xb67d
	.uleb128 0x2c
	.uaword	0x8eb6
	.uaword	.LLST232
	.uleb128 0x33
	.uaword	.Ldebug_ranges0+0x808
	.uleb128 0x2e
	.uaword	0x8ec6
	.uaword	.LLST233
	.uleb128 0x39
	.uaword	0x966e
	.uaword	.LBB909
	.uaword	.LBE909
	.byte	0x1
	.uahalf	0x1c4
	.uleb128 0x3f
	.uaword	.LBB910
	.uaword	.LBE910
	.uleb128 0x2e
	.uaword	0x9697
	.uaword	.LLST234
	.uleb128 0x2f
	.uaword	0x96a3
	.byte	0x1
	.byte	0x53
	.uleb128 0x31
	.uaword	0x96af
	.uleb128 0x39
	.uaword	0x8d2b
	.uaword	.LBB911
	.uaword	.LBE911
	.byte	0x1
	.uahalf	0x192
	.uleb128 0x3f
	.uaword	.LBB912
	.uaword	.LBE912
	.uleb128 0x2e
	.uaword	0x8d53
	.uaword	.LLST235
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4e
	.uaword	.LVL681
	.uaword	0x9b9e
	.byte	0
	.byte	0
	.uleb128 0x38
	.uaword	.Ldebug_ranges0+0x820
	.uaword	0xb756
	.uleb128 0x53
	.uaword	.LASF59
	.byte	0x1
	.uahalf	0x3c1
	.uaword	0x2fd
	.byte	0x1
	.byte	0x5f
	.uleb128 0x36
	.uaword	0x8e8a
	.uaword	.LBB917
	.uaword	.Ldebug_ranges0+0x838
	.byte	0x1
	.uahalf	0x3c1
	.uaword	0xb723
	.uleb128 0x2c
	.uaword	0x8eb6
	.uaword	.LLST236
	.uleb128 0x33
	.uaword	.Ldebug_ranges0+0x838
	.uleb128 0x2e
	.uaword	0x8ec6
	.uaword	.LLST237
	.uleb128 0x39
	.uaword	0x966e
	.uaword	.LBB919
	.uaword	.LBE919
	.byte	0x1
	.uahalf	0x1c4
	.uleb128 0x3f
	.uaword	.LBB920
	.uaword	.LBE920
	.uleb128 0x30
	.uaword	0x9697
	.sleb128 -268214272
	.uleb128 0x2f
	.uaword	0x96a3
	.byte	0x1
	.byte	0x5f
	.uleb128 0x2f
	.uaword	0x96af
	.byte	0x1
	.byte	0x5f
	.uleb128 0x39
	.uaword	0x8d2b
	.uaword	.LBB921
	.uaword	.LBE921
	.byte	0x1
	.uahalf	0x192
	.uleb128 0x3f
	.uaword	.LBB922
	.uaword	.LBE922
	.uleb128 0x2e
	.uaword	0x8d53
	.uaword	.LLST238
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x40
	.uaword	0x90ea
	.uaword	.LBB924
	.uaword	.Ldebug_ranges0+0x850
	.byte	0x1
	.uahalf	0x3c3
	.uleb128 0x2c
	.uaword	0x910a
	.uaword	.LLST239
	.uleb128 0x2c
	.uaword	0x9101
	.uaword	.LLST240
	.uleb128 0x33
	.uaword	.Ldebug_ranges0+0x850
	.uleb128 0x2e
	.uaword	0x9113
	.uaword	.LLST241
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4e
	.uaword	.LVL657
	.uaword	0x9b9e
	.uleb128 0x4e
	.uaword	.LVL659
	.uaword	0xcd6f
	.uleb128 0x4f
	.uaword	.LVL661
	.uaword	0xcd9e
	.uaword	0xb77c
	.uleb128 0x50
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x54
	.uaword	.LVL662
	.uaword	0xcdcc
	.uleb128 0x50
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x47
	.byte	0x1
	.string	"IfxScuCcu_setI2cFrequency"
	.byte	0x1
	.uahalf	0x3e3
	.byte	0x1
	.uaword	0x2fd
	.uaword	.LFB265
	.uaword	.LFE265
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xb99e
	.uleb128 0x4d
	.string	"i2cFreq"
	.byte	0x1
	.uahalf	0x3e3
	.uaword	0x2fd
	.uaword	.LLST242
	.uleb128 0x4a
	.uaword	.LASF43
	.byte	0x1
	.uahalf	0x3e5
	.uaword	0x2fd
	.uaword	.LLST243
	.uleb128 0x53
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0x3e6
	.uaword	0x2fd
	.byte	0x1
	.byte	0x5f
	.uleb128 0x4a
	.uaword	.LASF39
	.byte	0x1
	.uahalf	0x3e7
	.uaword	0x559b
	.uaword	.LLST244
	.uleb128 0x4a
	.uaword	.LASF58
	.byte	0x1
	.uahalf	0x3e8
	.uaword	0x2bd
	.uaword	.LLST245
	.uleb128 0x49
	.string	"i2cDiv"
	.byte	0x1
	.uahalf	0x3e9
	.uaword	0x2ef
	.uaword	.LLST246
	.uleb128 0x36
	.uaword	0x8e8a
	.uaword	.LBB947
	.uaword	.Ldebug_ranges0+0x868
	.byte	0x1
	.uahalf	0x3e6
	.uaword	0xb8a4
	.uleb128 0x3e
	.uaword	0x8eb6
	.byte	0x2
	.uleb128 0x33
	.uaword	.Ldebug_ranges0+0x868
	.uleb128 0x2e
	.uaword	0x8ec6
	.uaword	.LLST247
	.uleb128 0x40
	.uaword	0x9cfe
	.uaword	.LBB949
	.uaword	.Ldebug_ranges0+0x888
	.byte	0x1
	.uahalf	0x1d0
	.uleb128 0x33
	.uaword	.Ldebug_ranges0+0x888
	.uleb128 0x2e
	.uaword	0x9d2b
	.uaword	.LLST248
	.uleb128 0x2e
	.uaword	0x9d37
	.uaword	.LLST249
	.uleb128 0x2f
	.uaword	0x9d4d
	.byte	0x1
	.byte	0x5f
	.uleb128 0x39
	.uaword	0x8d2b
	.uaword	.LBB951
	.uaword	.LBE951
	.byte	0x1
	.uahalf	0x17d
	.uleb128 0x3f
	.uaword	.LBB952
	.uaword	.LBE952
	.uleb128 0x2e
	.uaword	0x8d53
	.uaword	.LLST250
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4b
	.uaword	0x90ea
	.uaword	.LBB957
	.uaword	.LBE957
	.byte	0x1
	.uahalf	0x3ea
	.uaword	0xb8de
	.uleb128 0x2c
	.uaword	0x910a
	.uaword	.LLST251
	.uleb128 0x2c
	.uaword	0x9101
	.uaword	.LLST252
	.uleb128 0x3f
	.uaword	.LBB958
	.uaword	.LBE958
	.uleb128 0x2e
	.uaword	0x9113
	.uaword	.LLST253
	.byte	0
	.byte	0
	.uleb128 0x36
	.uaword	0x91e1
	.uaword	.LBB959
	.uaword	.Ldebug_ranges0+0x8a0
	.byte	0x1
	.uahalf	0x406
	.uaword	0xb970
	.uleb128 0x40
	.uaword	0x8e8a
	.uaword	.LBB961
	.uaword	.Ldebug_ranges0+0x8c0
	.byte	0x2
	.uahalf	0x6a4
	.uleb128 0x2c
	.uaword	0x8eb6
	.uaword	.LLST254
	.uleb128 0x33
	.uaword	.Ldebug_ranges0+0x8c0
	.uleb128 0x2e
	.uaword	0x8ec6
	.uaword	.LLST255
	.uleb128 0x40
	.uaword	0x9cfe
	.uaword	.LBB963
	.uaword	.Ldebug_ranges0+0x8e0
	.byte	0x1
	.uahalf	0x1d0
	.uleb128 0x33
	.uaword	.Ldebug_ranges0+0x8e0
	.uleb128 0x2e
	.uaword	0x9d2b
	.uaword	.LLST256
	.uleb128 0x2e
	.uaword	0x9d37
	.uaword	.LLST257
	.uleb128 0x2f
	.uaword	0x9d4d
	.byte	0x1
	.byte	0x5f
	.uleb128 0x39
	.uaword	0x8d2b
	.uaword	.LBB965
	.uaword	.LBE965
	.byte	0x1
	.uahalf	0x17d
	.uleb128 0x3f
	.uaword	.LBB966
	.uaword	.LBE966
	.uleb128 0x2e
	.uaword	0x8d53
	.uaword	.LLST258
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4e
	.uaword	.LVL697
	.uaword	0xcd6f
	.uleb128 0x4f
	.uaword	.LVL699
	.uaword	0xcd9e
	.uaword	0xb98d
	.uleb128 0x50
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x54
	.uaword	.LVL701
	.uaword	0xcdcc
	.uleb128 0x50
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x47
	.byte	0x1
	.string	"IfxScuCcu_setMcanFrequency"
	.byte	0x1
	.uahalf	0x40b
	.byte	0x1
	.uaword	0x2fd
	.uaword	.LFB266
	.uaword	.LFE266
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xbc12
	.uleb128 0x57
	.uaword	.LASF48
	.byte	0x1
	.uahalf	0x40b
	.uaword	0x2fd
	.uaword	.LLST259
	.uleb128 0x4a
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0x40d
	.uaword	0x2fd
	.uaword	.LLST260
	.uleb128 0x53
	.uaword	.LASF39
	.byte	0x1
	.uahalf	0x40e
	.uaword	0x559b
	.byte	0x1
	.byte	0x58
	.uleb128 0x4a
	.uaword	.LASF58
	.byte	0x1
	.uahalf	0x40f
	.uaword	0x2bd
	.uaword	.LLST261
	.uleb128 0x49
	.string	"mcanDiv"
	.byte	0x1
	.uahalf	0x421
	.uaword	0x2ef
	.uaword	.LLST262
	.uleb128 0x4b
	.uaword	0x90ea
	.uaword	.LBB1001
	.uaword	.LBE1001
	.byte	0x1
	.uahalf	0x422
	.uaword	0xba5f
	.uleb128 0x2c
	.uaword	0x910a
	.uaword	.LLST263
	.uleb128 0x2c
	.uaword	0x9101
	.uaword	.LLST264
	.uleb128 0x3f
	.uaword	.LBB1002
	.uaword	.LBE1002
	.uleb128 0x2e
	.uaword	0x9113
	.uaword	.LLST265
	.byte	0
	.byte	0
	.uleb128 0x36
	.uaword	0x8eff
	.uaword	.LBB1003
	.uaword	.Ldebug_ranges0+0x8f8
	.byte	0x1
	.uahalf	0x43d
	.uaword	0xbb45
	.uleb128 0x33
	.uaword	.Ldebug_ranges0+0x8f8
	.uleb128 0x2e
	.uaword	0x8f29
	.uaword	.LLST266
	.uleb128 0x2e
	.uaword	0x8f35
	.uaword	.LLST267
	.uleb128 0x3f
	.uaword	.LBB1006
	.uaword	.LBE1006
	.uleb128 0x2e
	.uaword	0x8f29
	.uaword	.LLST268
	.uleb128 0x2f
	.uaword	0x8f35
	.byte	0x1
	.byte	0x5f
	.uleb128 0x40
	.uaword	0x8e8a
	.uaword	.LBB1007
	.uaword	.Ldebug_ranges0+0x918
	.byte	0x1
	.uahalf	0x11f
	.uleb128 0x2c
	.uaword	0x8eb6
	.uaword	.LLST269
	.uleb128 0x33
	.uaword	.Ldebug_ranges0+0x918
	.uleb128 0x2e
	.uaword	0x8ec6
	.uaword	.LLST270
	.uleb128 0x3f
	.uaword	.LBB1009
	.uaword	.LBE1009
	.uleb128 0x2c
	.uaword	0x8eb6
	.uaword	.LLST271
	.uleb128 0x3f
	.uaword	.LBB1010
	.uaword	.LBE1010
	.uleb128 0x31
	.uaword	0x8ec6
	.uleb128 0x40
	.uaword	0x94ca
	.uaword	.LBB1011
	.uaword	.Ldebug_ranges0+0x930
	.byte	0x1
	.uahalf	0x1c7
	.uleb128 0x33
	.uaword	.Ldebug_ranges0+0x930
	.uleb128 0x2e
	.uaword	0x94f7
	.uaword	.LLST272
	.uleb128 0x2e
	.uaword	0x9503
	.uaword	.LLST273
	.uleb128 0x2f
	.uaword	0x9519
	.byte	0x1
	.byte	0x5f
	.uleb128 0x39
	.uaword	0x8d2b
	.uaword	.LBB1013
	.uaword	.LBE1013
	.byte	0x1
	.uahalf	0x170
	.uleb128 0x3f
	.uaword	.LBB1014
	.uaword	.LBE1014
	.uleb128 0x2e
	.uaword	0x8d53
	.uaword	.LLST274
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x36
	.uaword	0x8e8a
	.uaword	.LBB1023
	.uaword	.Ldebug_ranges0+0x950
	.byte	0x1
	.uahalf	0x415
	.uaword	0xbbe4
	.uleb128 0x2c
	.uaword	0x8eb6
	.uaword	.LLST275
	.uleb128 0x33
	.uaword	.Ldebug_ranges0+0x950
	.uleb128 0x31
	.uaword	0x8ec6
	.uleb128 0x3f
	.uaword	.LBB1025
	.uaword	.LBE1025
	.uleb128 0x3e
	.uaword	0x8eb6
	.byte	0x1
	.uleb128 0x3f
	.uaword	.LBB1026
	.uaword	.LBE1026
	.uleb128 0x2f
	.uaword	0x8ec6
	.byte	0x1
	.byte	0x5f
	.uleb128 0x40
	.uaword	0x94ca
	.uaword	.LBB1027
	.uaword	.Ldebug_ranges0+0x968
	.byte	0x1
	.uahalf	0x1c7
	.uleb128 0x33
	.uaword	.Ldebug_ranges0+0x968
	.uleb128 0x30
	.uaword	0x94f7
	.sleb128 -268214272
	.uleb128 0x2e
	.uaword	0x9503
	.uaword	.LLST276
	.uleb128 0x2f
	.uaword	0x9519
	.byte	0x1
	.byte	0x5f
	.uleb128 0x39
	.uaword	0x8d2b
	.uaword	.LBB1029
	.uaword	.LBE1029
	.byte	0x1
	.uahalf	0x170
	.uleb128 0x3f
	.uaword	.LBB1030
	.uaword	.LBE1030
	.uleb128 0x2e
	.uaword	0x8d53
	.uaword	.LLST277
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4e
	.uaword	.LVL725
	.uaword	0xcd6f
	.uleb128 0x4f
	.uaword	.LVL727
	.uaword	0xcd9e
	.uaword	0xbc01
	.uleb128 0x50
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x54
	.uaword	.LVL728
	.uaword	0xcdcc
	.uleb128 0x50
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x47
	.byte	0x1
	.string	"IfxScuCcu_setMcanhFrequency"
	.byte	0x1
	.uahalf	0x441
	.byte	0x1
	.uaword	0x2fd
	.uaword	.LFB267
	.uaword	.LFE267
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xbe29
	.uleb128 0x4d
	.string	"mcanhFreq"
	.byte	0x1
	.uahalf	0x441
	.uaword	0x2fd
	.uaword	.LLST278
	.uleb128 0x4a
	.uaword	.LASF43
	.byte	0x1
	.uahalf	0x443
	.uaword	0x2fd
	.uaword	.LLST279
	.uleb128 0x53
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0x444
	.uaword	0x2fd
	.byte	0x1
	.byte	0x5f
	.uleb128 0x4a
	.uaword	.LASF41
	.byte	0x1
	.uahalf	0x445
	.uaword	0x569b
	.uaword	.LLST280
	.uleb128 0x4a
	.uaword	.LASF58
	.byte	0x1
	.uahalf	0x446
	.uaword	0x2bd
	.uaword	.LLST281
	.uleb128 0x49
	.string	"mcanhDiv"
	.byte	0x1
	.uahalf	0x447
	.uaword	0x2ef
	.uaword	.LLST282
	.uleb128 0x36
	.uaword	0x8e8a
	.uaword	.LBB1055
	.uaword	.Ldebug_ranges0+0x988
	.byte	0x1
	.uahalf	0x444
	.uaword	0xbd2f
	.uleb128 0x3e
	.uaword	0x8eb6
	.byte	0
	.uleb128 0x33
	.uaword	.Ldebug_ranges0+0x988
	.uleb128 0x2e
	.uaword	0x8ec6
	.uaword	.LLST283
	.uleb128 0x39
	.uaword	0x966e
	.uaword	.LBB1057
	.uaword	.LBE1057
	.byte	0x1
	.uahalf	0x1c4
	.uleb128 0x3f
	.uaword	.LBB1058
	.uaword	.LBE1058
	.uleb128 0x2e
	.uaword	0x9697
	.uaword	.LLST284
	.uleb128 0x2f
	.uaword	0x96a3
	.byte	0x1
	.byte	0x5f
	.uleb128 0x31
	.uaword	0x96af
	.uleb128 0x39
	.uaword	0x8d2b
	.uaword	.LBB1059
	.uaword	.LBE1059
	.byte	0x1
	.uahalf	0x192
	.uleb128 0x3f
	.uaword	.LBB1060
	.uaword	.LBE1060
	.uleb128 0x2e
	.uaword	0x8d53
	.uaword	.LLST285
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4b
	.uaword	0x90ea
	.uaword	.LBB1062
	.uaword	.LBE1062
	.byte	0x1
	.uahalf	0x448
	.uaword	0xbd69
	.uleb128 0x2c
	.uaword	0x910a
	.uaword	.LLST286
	.uleb128 0x2c
	.uaword	0x9101
	.uaword	.LLST287
	.uleb128 0x3f
	.uaword	.LBB1063
	.uaword	.LBE1063
	.uleb128 0x2e
	.uaword	0x9113
	.uaword	.LLST288
	.byte	0
	.byte	0
	.uleb128 0x36
	.uaword	0x9205
	.uaword	.LBB1064
	.uaword	.Ldebug_ranges0+0x9a0
	.byte	0x1
	.uahalf	0x465
	.uaword	0xbdfb
	.uleb128 0x40
	.uaword	0x8e8a
	.uaword	.LBB1066
	.uaword	.Ldebug_ranges0+0x9b8
	.byte	0x2
	.uahalf	0x6aa
	.uleb128 0x2c
	.uaword	0x8eb6
	.uaword	.LLST289
	.uleb128 0x33
	.uaword	.Ldebug_ranges0+0x9b8
	.uleb128 0x2e
	.uaword	0x8ec6
	.uaword	.LLST290
	.uleb128 0x39
	.uaword	0x966e
	.uaword	.LBB1068
	.uaword	.LBE1068
	.byte	0x1
	.uahalf	0x1c4
	.uleb128 0x3f
	.uaword	.LBB1069
	.uaword	.LBE1069
	.uleb128 0x2e
	.uaword	0x9697
	.uaword	.LLST291
	.uleb128 0x2f
	.uaword	0x96a3
	.byte	0x1
	.byte	0x5f
	.uleb128 0x31
	.uaword	0x96af
	.uleb128 0x39
	.uaword	0x8d2b
	.uaword	.LBB1070
	.uaword	.LBE1070
	.byte	0x1
	.uahalf	0x192
	.uleb128 0x3f
	.uaword	.LBB1071
	.uaword	.LBE1071
	.uleb128 0x2e
	.uaword	0x8d53
	.uaword	.LLST292
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4e
	.uaword	.LVL759
	.uaword	0xcd6f
	.uleb128 0x4f
	.uaword	.LVL761
	.uaword	0xcd9e
	.uaword	0xbe18
	.uleb128 0x50
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x54
	.uaword	.LVL763
	.uaword	0xcdcc
	.uleb128 0x50
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x47
	.byte	0x1
	.string	"IfxScuCcu_setMscFrequency"
	.byte	0x1
	.uahalf	0x46a
	.byte	0x1
	.uaword	0x2fd
	.uaword	.LFB268
	.uaword	.LFE268
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xc04c
	.uleb128 0x4d
	.string	"mscFreq"
	.byte	0x1
	.uahalf	0x46a
	.uaword	0x2fd
	.uaword	.LLST293
	.uleb128 0x4a
	.uaword	.LASF57
	.byte	0x1
	.uahalf	0x46c
	.uaword	0x2fd
	.uaword	.LLST294
	.uleb128 0x53
	.uaword	.LASF39
	.byte	0x1
	.uahalf	0x46d
	.uaword	0x559b
	.byte	0x1
	.byte	0x58
	.uleb128 0x4a
	.uaword	.LASF58
	.byte	0x1
	.uahalf	0x46e
	.uaword	0x2bd
	.uaword	.LLST295
	.uleb128 0x49
	.string	"mscDiv"
	.byte	0x1
	.uahalf	0x480
	.uaword	0x2ef
	.uaword	.LLST296
	.uleb128 0x4b
	.uaword	0x90ea
	.uaword	.LBB1093
	.uaword	.LBE1093
	.byte	0x1
	.uahalf	0x481
	.uaword	0xbeec
	.uleb128 0x2c
	.uaword	0x910a
	.uaword	.LLST297
	.uleb128 0x2c
	.uaword	0x9101
	.uaword	.LLST298
	.uleb128 0x3f
	.uaword	.LBB1094
	.uaword	.LBE1094
	.uleb128 0x2e
	.uaword	0x9113
	.uaword	.LLST299
	.byte	0
	.byte	0
	.uleb128 0x36
	.uaword	0x8e8a
	.uaword	.LBB1095
	.uaword	.Ldebug_ranges0+0x9d0
	.byte	0x1
	.uahalf	0x479
	.uaword	0xbf69
	.uleb128 0x2c
	.uaword	0x8eb6
	.uaword	.LLST300
	.uleb128 0x33
	.uaword	.Ldebug_ranges0+0x9d0
	.uleb128 0x31
	.uaword	0x8ec6
	.uleb128 0x40
	.uaword	0x9cfe
	.uaword	.LBB1097
	.uaword	.Ldebug_ranges0+0x9e8
	.byte	0x1
	.uahalf	0x1d0
	.uleb128 0x33
	.uaword	.Ldebug_ranges0+0x9e8
	.uleb128 0x2e
	.uaword	0x9d2b
	.uaword	.LLST301
	.uleb128 0x2e
	.uaword	0x9d37
	.uaword	.LLST302
	.uleb128 0x2f
	.uaword	0x9d4d
	.byte	0x1
	.byte	0x5f
	.uleb128 0x39
	.uaword	0x8d2b
	.uaword	.LBB1099
	.uaword	.LBE1099
	.byte	0x1
	.uahalf	0x17d
	.uleb128 0x3f
	.uaword	.LBB1100
	.uaword	.LBE1100
	.uleb128 0x2e
	.uaword	0x8d53
	.uaword	.LLST303
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4b
	.uaword	0x8e8a
	.uaword	.LBB1104
	.uaword	.LBE1104
	.byte	0x1
	.uahalf	0x474
	.uaword	0xc010
	.uleb128 0x2c
	.uaword	0x8eb6
	.uaword	.LLST304
	.uleb128 0x3f
	.uaword	.LBB1105
	.uaword	.LBE1105
	.uleb128 0x31
	.uaword	0x8ec6
	.uleb128 0x3f
	.uaword	.LBB1106
	.uaword	.LBE1106
	.uleb128 0x2c
	.uaword	0x8eb6
	.uaword	.LLST305
	.uleb128 0x3f
	.uaword	.LBB1107
	.uaword	.LBE1107
	.uleb128 0x2e
	.uaword	0x8ec6
	.uaword	.LLST306
	.uleb128 0x40
	.uaword	0x94ca
	.uaword	.LBB1108
	.uaword	.Ldebug_ranges0+0xa00
	.byte	0x1
	.uahalf	0x1c7
	.uleb128 0x33
	.uaword	.Ldebug_ranges0+0xa00
	.uleb128 0x2e
	.uaword	0x94f7
	.uaword	.LLST307
	.uleb128 0x2e
	.uaword	0x9503
	.uaword	.LLST308
	.uleb128 0x2f
	.uaword	0x9519
	.byte	0x1
	.byte	0x5f
	.uleb128 0x39
	.uaword	0x8d2b
	.uaword	.LBB1110
	.uaword	.LBE1110
	.byte	0x1
	.uahalf	0x170
	.uleb128 0x3f
	.uaword	.LBB1111
	.uaword	.LBE1111
	.uleb128 0x2e
	.uaword	0x8d53
	.uaword	.LLST309
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4e
	.uaword	.LVL781
	.uaword	0xcd6f
	.uleb128 0x4f
	.uaword	.LVL783
	.uaword	0xcd9e
	.uaword	0xc02d
	.uleb128 0x50
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x4f
	.uaword	.LVL784
	.uaword	0xcdcc
	.uaword	0xc041
	.uleb128 0x50
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x56
	.uaword	.LVL785
	.byte	0x1
	.uaword	0x9d5a
	.byte	0
	.uleb128 0x47
	.byte	0x1
	.string	"IfxScuCcu_setQspiFrequency"
	.byte	0x1
	.uahalf	0x4a0
	.byte	0x1
	.uaword	0x2fd
	.uaword	.LFB269
	.uaword	.LFE269
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xc272
	.uleb128 0x4d
	.string	"qspiFreq"
	.byte	0x1
	.uahalf	0x4a0
	.uaword	0x2fd
	.uaword	.LLST310
	.uleb128 0x4a
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0x4a2
	.uaword	0x2fd
	.uaword	.LLST311
	.uleb128 0x53
	.uaword	.LASF39
	.byte	0x1
	.uahalf	0x4a3
	.uaword	0x559b
	.byte	0x1
	.byte	0x58
	.uleb128 0x4a
	.uaword	.LASF58
	.byte	0x1
	.uahalf	0x4a4
	.uaword	0x2bd
	.uaword	.LLST312
	.uleb128 0x49
	.string	"qspiDiv"
	.byte	0x1
	.uahalf	0x4b6
	.uaword	0x2ef
	.uaword	.LLST313
	.uleb128 0x4b
	.uaword	0x90ea
	.uaword	.LBB1133
	.uaword	.LBE1133
	.byte	0x1
	.uahalf	0x4b7
	.uaword	0xc112
	.uleb128 0x2c
	.uaword	0x910a
	.uaword	.LLST314
	.uleb128 0x2c
	.uaword	0x9101
	.uaword	.LLST315
	.uleb128 0x3f
	.uaword	.LBB1134
	.uaword	.LBE1134
	.uleb128 0x2e
	.uaword	0x9113
	.uaword	.LLST316
	.byte	0
	.byte	0
	.uleb128 0x36
	.uaword	0x8e8a
	.uaword	.LBB1135
	.uaword	.Ldebug_ranges0+0xa20
	.byte	0x1
	.uahalf	0x4af
	.uaword	0xc18f
	.uleb128 0x2c
	.uaword	0x8eb6
	.uaword	.LLST317
	.uleb128 0x33
	.uaword	.Ldebug_ranges0+0xa20
	.uleb128 0x31
	.uaword	0x8ec6
	.uleb128 0x40
	.uaword	0x9cfe
	.uaword	.LBB1137
	.uaword	.Ldebug_ranges0+0xa38
	.byte	0x1
	.uahalf	0x1d0
	.uleb128 0x33
	.uaword	.Ldebug_ranges0+0xa38
	.uleb128 0x2e
	.uaword	0x9d2b
	.uaword	.LLST318
	.uleb128 0x2e
	.uaword	0x9d37
	.uaword	.LLST319
	.uleb128 0x2f
	.uaword	0x9d4d
	.byte	0x1
	.byte	0x5f
	.uleb128 0x39
	.uaword	0x8d2b
	.uaword	.LBB1139
	.uaword	.LBE1139
	.byte	0x1
	.uahalf	0x17d
	.uleb128 0x3f
	.uaword	.LBB1140
	.uaword	.LBE1140
	.uleb128 0x2e
	.uaword	0x8d53
	.uaword	.LLST320
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4b
	.uaword	0x8e8a
	.uaword	.LBB1144
	.uaword	.LBE1144
	.byte	0x1
	.uahalf	0x4aa
	.uaword	0xc236
	.uleb128 0x2c
	.uaword	0x8eb6
	.uaword	.LLST321
	.uleb128 0x3f
	.uaword	.LBB1145
	.uaword	.LBE1145
	.uleb128 0x31
	.uaword	0x8ec6
	.uleb128 0x3f
	.uaword	.LBB1146
	.uaword	.LBE1146
	.uleb128 0x2c
	.uaword	0x8eb6
	.uaword	.LLST322
	.uleb128 0x3f
	.uaword	.LBB1147
	.uaword	.LBE1147
	.uleb128 0x2e
	.uaword	0x8ec6
	.uaword	.LLST323
	.uleb128 0x40
	.uaword	0x94ca
	.uaword	.LBB1148
	.uaword	.Ldebug_ranges0+0xa50
	.byte	0x1
	.uahalf	0x1c7
	.uleb128 0x33
	.uaword	.Ldebug_ranges0+0xa50
	.uleb128 0x2e
	.uaword	0x94f7
	.uaword	.LLST324
	.uleb128 0x2e
	.uaword	0x9503
	.uaword	.LLST325
	.uleb128 0x2f
	.uaword	0x9519
	.byte	0x1
	.byte	0x5f
	.uleb128 0x39
	.uaword	0x8d2b
	.uaword	.LBB1150
	.uaword	.LBE1150
	.byte	0x1
	.uahalf	0x170
	.uleb128 0x3f
	.uaword	.LBB1151
	.uaword	.LBE1151
	.uleb128 0x2e
	.uaword	0x8d53
	.uaword	.LLST326
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4e
	.uaword	.LVL808
	.uaword	0xcd6f
	.uleb128 0x4f
	.uaword	.LVL810
	.uaword	0xcd9e
	.uaword	0xc253
	.uleb128 0x50
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x4f
	.uaword	.LVL811
	.uaword	0xcdcc
	.uaword	0xc267
	.uleb128 0x50
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x56
	.uaword	.LVL812
	.byte	0x1
	.uaword	0x9fc7
	.byte	0
	.uleb128 0x47
	.byte	0x1
	.string	"IfxScuCcu_setSpbFrequency"
	.byte	0x1
	.uahalf	0x4d6
	.byte	0x1
	.uaword	0x2fd
	.uaword	.LFB270
	.uaword	.LFE270
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xc475
	.uleb128 0x4d
	.string	"spbFreq"
	.byte	0x1
	.uahalf	0x4d6
	.uaword	0x2fd
	.uaword	.LLST327
	.uleb128 0x49
	.string	"l_EndInitPW"
	.byte	0x1
	.uahalf	0x4d9
	.uaword	0x2bd
	.uaword	.LLST328
	.uleb128 0x4a
	.uaword	.LASF58
	.byte	0x1
	.uahalf	0x4da
	.uaword	0x2bd
	.uaword	.LLST329
	.uleb128 0x4a
	.uaword	.LASF38
	.byte	0x1
	.uahalf	0x4db
	.uaword	0x555b
	.uaword	.LLST330
	.uleb128 0x53
	.uaword	.LASF59
	.byte	0x1
	.uahalf	0x4dc
	.uaword	0x2fd
	.byte	0x1
	.byte	0x5f
	.uleb128 0x49
	.string	"spbDiv"
	.byte	0x1
	.uahalf	0x4dd
	.uaword	0x2ef
	.uaword	.LLST331
	.uleb128 0x49
	.string	"trapdis0"
	.byte	0x1
	.uahalf	0x4ee
	.uaword	0x6a3a
	.uaword	.LLST332
	.uleb128 0x36
	.uaword	0x8e8a
	.uaword	.LBB1165
	.uaword	.Ldebug_ranges0+0xa70
	.byte	0x1
	.uahalf	0x4dc
	.uaword	0xc3a6
	.uleb128 0x3e
	.uaword	0x8eb6
	.byte	0
	.uleb128 0x33
	.uaword	.Ldebug_ranges0+0xa70
	.uleb128 0x2e
	.uaword	0x8ec6
	.uaword	.LLST333
	.uleb128 0x39
	.uaword	0x966e
	.uaword	.LBB1167
	.uaword	.LBE1167
	.byte	0x1
	.uahalf	0x1c4
	.uleb128 0x3f
	.uaword	.LBB1168
	.uaword	.LBE1168
	.uleb128 0x2e
	.uaword	0x9697
	.uaword	.LLST334
	.uleb128 0x2f
	.uaword	0x96a3
	.byte	0x1
	.byte	0x5f
	.uleb128 0x31
	.uaword	0x96af
	.uleb128 0x39
	.uaword	0x8d2b
	.uaword	.LBB1169
	.uaword	.LBE1169
	.byte	0x1
	.uahalf	0x192
	.uleb128 0x3f
	.uaword	.LBB1170
	.uaword	.LBE1170
	.uleb128 0x2e
	.uaword	0x8d53
	.uaword	.LLST335
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4b
	.uaword	0x90ea
	.uaword	.LBB1172
	.uaword	.LBE1172
	.byte	0x1
	.uahalf	0x4de
	.uaword	0xc3e0
	.uleb128 0x2c
	.uaword	0x910a
	.uaword	.LLST336
	.uleb128 0x2c
	.uaword	0x9101
	.uaword	.LLST337
	.uleb128 0x3f
	.uaword	.LBB1173
	.uaword	.LBE1173
	.uleb128 0x2e
	.uaword	0x9113
	.uaword	.LLST338
	.byte	0
	.byte	0
	.uleb128 0x4e
	.uaword	.LVL838
	.uaword	0xcdf8
	.uleb128 0x4e
	.uaword	.LVL840
	.uaword	0xcd6f
	.uleb128 0x4f
	.uaword	.LVL842
	.uaword	0xce24
	.uaword	0xc406
	.uleb128 0x50
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x4f
	.uaword	.LVL844
	.uaword	0xce4e
	.uaword	0xc41a
	.uleb128 0x50
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x4f
	.uaword	.LVL845
	.uaword	0xcd9e
	.uaword	0xc42e
	.uleb128 0x50
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x4f
	.uaword	.LVL847
	.uaword	0xcdcc
	.uaword	0xc442
	.uleb128 0x50
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x4f
	.uaword	.LVL848
	.uaword	0xce24
	.uaword	0xc456
	.uleb128 0x50
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x4f
	.uaword	.LVL849
	.uaword	0xce4e
	.uaword	0xc46a
	.uleb128 0x50
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x56
	.uaword	.LVL850
	.byte	0x1
	.uaword	0x9b9e
	.byte	0
	.uleb128 0x47
	.byte	0x1
	.string	"IfxScuCcu_setSriFrequency"
	.byte	0x1
	.uahalf	0x509
	.byte	0x1
	.uaword	0x2fd
	.uaword	.LFB271
	.uaword	.LFE271
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xc603
	.uleb128 0x4d
	.string	"sriFreq"
	.byte	0x1
	.uahalf	0x509
	.uaword	0x2fd
	.uaword	.LLST339
	.uleb128 0x55
	.uaword	.LASF43
	.byte	0x1
	.uahalf	0x50b
	.uaword	0x2fd
	.byte	0x4
	.uaword	0
	.uleb128 0x53
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0x50c
	.uaword	0x2fd
	.byte	0x1
	.byte	0x5f
	.uleb128 0x4a
	.uaword	.LASF38
	.byte	0x1
	.uahalf	0x50d
	.uaword	0x555b
	.uaword	.LLST340
	.uleb128 0x4a
	.uaword	.LASF58
	.byte	0x1
	.uahalf	0x50e
	.uaword	0x2bd
	.uaword	.LLST341
	.uleb128 0x49
	.string	"sriDiv"
	.byte	0x1
	.uahalf	0x50f
	.uaword	0x2ef
	.uaword	.LLST342
	.uleb128 0x36
	.uaword	0x8e8a
	.uaword	.LBB1183
	.uaword	.Ldebug_ranges0+0xa88
	.byte	0x1
	.uahalf	0x50c
	.uaword	0xc58d
	.uleb128 0x3e
	.uaword	0x8eb6
	.byte	0
	.uleb128 0x33
	.uaword	.Ldebug_ranges0+0xa88
	.uleb128 0x2e
	.uaword	0x8ec6
	.uaword	.LLST343
	.uleb128 0x39
	.uaword	0x966e
	.uaword	.LBB1185
	.uaword	.LBE1185
	.byte	0x1
	.uahalf	0x1c4
	.uleb128 0x3f
	.uaword	.LBB1186
	.uaword	.LBE1186
	.uleb128 0x2e
	.uaword	0x9697
	.uaword	.LLST344
	.uleb128 0x2f
	.uaword	0x96a3
	.byte	0x1
	.byte	0x5f
	.uleb128 0x31
	.uaword	0x96af
	.uleb128 0x39
	.uaword	0x8d2b
	.uaword	.LBB1187
	.uaword	.LBE1187
	.byte	0x1
	.uahalf	0x192
	.uleb128 0x3f
	.uaword	.LBB1188
	.uaword	.LBE1188
	.uleb128 0x2e
	.uaword	0x8d53
	.uaword	.LLST345
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4b
	.uaword	0x90ea
	.uaword	.LBB1190
	.uaword	.LBE1190
	.byte	0x1
	.uahalf	0x510
	.uaword	0xc5c7
	.uleb128 0x2c
	.uaword	0x910a
	.uaword	.LLST346
	.uleb128 0x2c
	.uaword	0x9101
	.uaword	.LLST347
	.uleb128 0x3f
	.uaword	.LBB1191
	.uaword	.LBE1191
	.uleb128 0x2e
	.uaword	0x9113
	.uaword	.LLST348
	.byte	0
	.byte	0
	.uleb128 0x4e
	.uaword	.LVL862
	.uaword	0xcd6f
	.uleb128 0x4f
	.uaword	.LVL864
	.uaword	0xcd9e
	.uaword	0xc5e4
	.uleb128 0x50
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x4f
	.uaword	.LVL866
	.uaword	0xcdcc
	.uaword	0xc5f8
	.uleb128 0x50
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x56
	.uaword	.LVL867
	.byte	0x1
	.uaword	0x975b
	.byte	0
	.uleb128 0x47
	.byte	0x1
	.string	"IfxScuCcu_setStmFrequency"
	.byte	0x1
	.uahalf	0x532
	.byte	0x1
	.uaword	0x2fd
	.uaword	.LFB272
	.uaword	.LFE272
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xc814
	.uleb128 0x4d
	.string	"stmFreq"
	.byte	0x1
	.uahalf	0x532
	.uaword	0x2fd
	.uaword	.LLST349
	.uleb128 0x4a
	.uaword	.LASF43
	.byte	0x1
	.uahalf	0x534
	.uaword	0x2fd
	.uaword	.LLST350
	.uleb128 0x53
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0x535
	.uaword	0x2fd
	.byte	0x1
	.byte	0x5f
	.uleb128 0x4a
	.uaword	.LASF38
	.byte	0x1
	.uahalf	0x536
	.uaword	0x555b
	.uaword	.LLST351
	.uleb128 0x4a
	.uaword	.LASF58
	.byte	0x1
	.uahalf	0x537
	.uaword	0x2bd
	.uaword	.LLST352
	.uleb128 0x49
	.string	"stmDiv"
	.byte	0x1
	.uahalf	0x538
	.uaword	0x2ef
	.uaword	.LLST353
	.uleb128 0x36
	.uaword	0x8e8a
	.uaword	.LBB1209
	.uaword	.Ldebug_ranges0+0xaa0
	.byte	0x1
	.uahalf	0x535
	.uaword	0xc71a
	.uleb128 0x3e
	.uaword	0x8eb6
	.byte	0
	.uleb128 0x33
	.uaword	.Ldebug_ranges0+0xaa0
	.uleb128 0x2e
	.uaword	0x8ec6
	.uaword	.LLST354
	.uleb128 0x39
	.uaword	0x966e
	.uaword	.LBB1211
	.uaword	.LBE1211
	.byte	0x1
	.uahalf	0x1c4
	.uleb128 0x3f
	.uaword	.LBB1212
	.uaword	.LBE1212
	.uleb128 0x2e
	.uaword	0x9697
	.uaword	.LLST355
	.uleb128 0x2f
	.uaword	0x96a3
	.byte	0x1
	.byte	0x5f
	.uleb128 0x31
	.uaword	0x96af
	.uleb128 0x39
	.uaword	0x8d2b
	.uaword	.LBB1213
	.uaword	.LBE1213
	.byte	0x1
	.uahalf	0x192
	.uleb128 0x3f
	.uaword	.LBB1214
	.uaword	.LBE1214
	.uleb128 0x2e
	.uaword	0x8d53
	.uaword	.LLST356
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4b
	.uaword	0x90ea
	.uaword	.LBB1216
	.uaword	.LBE1216
	.byte	0x1
	.uahalf	0x539
	.uaword	0xc754
	.uleb128 0x2c
	.uaword	0x910a
	.uaword	.LLST357
	.uleb128 0x2c
	.uaword	0x9101
	.uaword	.LLST358
	.uleb128 0x3f
	.uaword	.LBB1217
	.uaword	.LBE1217
	.uleb128 0x2e
	.uaword	0x9113
	.uaword	.LLST359
	.byte	0
	.byte	0
	.uleb128 0x36
	.uaword	0x8cb6
	.uaword	.LBB1218
	.uaword	.Ldebug_ranges0+0xab8
	.byte	0x1
	.uahalf	0x556
	.uaword	0xc7e6
	.uleb128 0x40
	.uaword	0x8e8a
	.uaword	.LBB1220
	.uaword	.Ldebug_ranges0+0xad0
	.byte	0x2
	.uahalf	0x6d6
	.uleb128 0x2c
	.uaword	0x8eb6
	.uaword	.LLST360
	.uleb128 0x33
	.uaword	.Ldebug_ranges0+0xad0
	.uleb128 0x2e
	.uaword	0x8ec6
	.uaword	.LLST361
	.uleb128 0x39
	.uaword	0x966e
	.uaword	.LBB1222
	.uaword	.LBE1222
	.byte	0x1
	.uahalf	0x1c4
	.uleb128 0x3f
	.uaword	.LBB1223
	.uaword	.LBE1223
	.uleb128 0x2e
	.uaword	0x9697
	.uaword	.LLST362
	.uleb128 0x2f
	.uaword	0x96a3
	.byte	0x1
	.byte	0x5f
	.uleb128 0x31
	.uaword	0x96af
	.uleb128 0x39
	.uaword	0x8d2b
	.uaword	.LBB1224
	.uaword	.LBE1224
	.byte	0x1
	.uahalf	0x192
	.uleb128 0x3f
	.uaword	.LBB1225
	.uaword	.LBE1225
	.uleb128 0x2e
	.uaword	0x8d53
	.uaword	.LLST363
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4e
	.uaword	.LVL879
	.uaword	0xcd6f
	.uleb128 0x4f
	.uaword	.LVL881
	.uaword	0xcd9e
	.uaword	0xc803
	.uleb128 0x50
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x54
	.uaword	.LVL883
	.uaword	0xcdcc
	.uleb128 0x50
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x4c
	.byte	0x1
	.string	"IfxScuCcu_switchToBackupClock"
	.byte	0x1
	.uahalf	0x55b
	.byte	0x1
	.uaword	.LFB273
	.uaword	.LFE273
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xc8f2
	.uleb128 0x4d
	.string	"cfg"
	.byte	0x1
	.uahalf	0x55b
	.uaword	0xa991
	.uaword	.LLST364
	.uleb128 0x4a
	.uaword	.LASF45
	.byte	0x1
	.uahalf	0x55d
	.uaword	0x2bd
	.uaword	.LLST365
	.uleb128 0x4a
	.uaword	.LASF51
	.byte	0x1
	.uahalf	0x55e
	.uaword	0x1d3
	.uaword	.LLST366
	.uleb128 0x4a
	.uaword	.LASF50
	.byte	0x1
	.uahalf	0x55f
	.uaword	0x8a4d
	.uaword	.LLST367
	.uleb128 0x36
	.uaword	0x8c44
	.uaword	.LBB1231
	.uaword	.Ldebug_ranges0+0xae8
	.byte	0x1
	.uahalf	0x57f
	.uaword	0xc8a6
	.uleb128 0x2c
	.uaword	0x8c71
	.uaword	.LLST368
	.byte	0
	.uleb128 0x37
	.uaword	.LBB1234
	.uaword	.LBE1234
	.uaword	0xc8c4
	.uleb128 0x4a
	.uaword	.LASF49
	.byte	0x1
	.uahalf	0x585
	.uaword	0x555b
	.uaword	.LLST369
	.byte	0
	.uleb128 0x4e
	.uaword	.LVL896
	.uaword	0xcd6f
	.uleb128 0x4f
	.uaword	.LVL900
	.uaword	0xcd9e
	.uaword	0xc8e1
	.uleb128 0x50
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x54
	.uaword	.LVL902
	.uaword	0xcdcc
	.uleb128 0x50
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x4c
	.byte	0x1
	.string	"IfxScuCcu_throttleSysPllClock"
	.byte	0x1
	.uahalf	0x58e
	.byte	0x1
	.uaword	.LFB274
	.uaword	.LFE274
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xca90
	.uleb128 0x58
	.uaword	.LASF50
	.byte	0x1
	.uahalf	0x58e
	.uaword	0xca90
	.byte	0x1
	.byte	0x64
	.uleb128 0x39
	.uaword	0x9070
	.uaword	.LBB1254
	.uaword	.LBE1254
	.byte	0x1
	.uahalf	0x590
	.uleb128 0x2d
	.uaword	0x90a2
	.byte	0x1
	.byte	0x64
	.uleb128 0x3f
	.uaword	.LBB1255
	.uaword	.LBE1255
	.uleb128 0x2e
	.uaword	0x90ae
	.uaword	.LLST370
	.uleb128 0x2e
	.uaword	0x90ba
	.uaword	.LLST371
	.uleb128 0x31
	.uaword	0x90c6
	.uleb128 0x31
	.uaword	0x90d2
	.uleb128 0x36
	.uaword	0x8be8
	.uaword	.LBB1256
	.uaword	.Ldebug_ranges0+0xb00
	.byte	0x2
	.uahalf	0x704
	.uaword	0xc99e
	.uleb128 0x33
	.uaword	.Ldebug_ranges0+0xb00
	.uleb128 0x2e
	.uaword	0x8c20
	.uaword	.LLST372
	.uleb128 0x30
	.uaword	0x8c2c
	.sleb128 -268213592
	.byte	0
	.byte	0
	.uleb128 0x36
	.uaword	0x8cda
	.uaword	.LBB1262
	.uaword	.Ldebug_ranges0+0xb20
	.byte	0x2
	.uahalf	0x71a
	.uaword	0xca5d
	.uleb128 0x2c
	.uaword	0x8cf3
	.uaword	.LLST373
	.uleb128 0x33
	.uaword	.Ldebug_ranges0+0xb20
	.uleb128 0x2e
	.uaword	0x8d03
	.uaword	.LLST374
	.uleb128 0x2e
	.uaword	0x8d14
	.uaword	.LLST375
	.uleb128 0x40
	.uaword	0x8cb6
	.uaword	.LBB1264
	.uaword	.Ldebug_ranges0+0xb58
	.byte	0x2
	.uahalf	0x723
	.uleb128 0x40
	.uaword	0x8e8a
	.uaword	.LBB1266
	.uaword	.Ldebug_ranges0+0xb90
	.byte	0x2
	.uahalf	0x6d6
	.uleb128 0x2c
	.uaword	0x8eb6
	.uaword	.LLST376
	.uleb128 0x33
	.uaword	.Ldebug_ranges0+0xb90
	.uleb128 0x2e
	.uaword	0x8ec6
	.uaword	.LLST377
	.uleb128 0x40
	.uaword	0x966e
	.uaword	.LBB1268
	.uaword	.Ldebug_ranges0+0xbc8
	.byte	0x1
	.uahalf	0x1c4
	.uleb128 0x33
	.uaword	.Ldebug_ranges0+0xbc8
	.uleb128 0x30
	.uaword	0x9697
	.sleb128 -268214272
	.uleb128 0x2f
	.uaword	0x96a3
	.byte	0x1
	.byte	0x5f
	.uleb128 0x2f
	.uaword	0x96af
	.byte	0x1
	.byte	0x5f
	.uleb128 0x40
	.uaword	0x8d2b
	.uaword	.LBB1270
	.uaword	.Ldebug_ranges0+0xbe8
	.byte	0x1
	.uahalf	0x192
	.uleb128 0x33
	.uaword	.Ldebug_ranges0+0xbe8
	.uleb128 0x2e
	.uaword	0x8d53
	.uaword	.LLST378
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x36
	.uaword	0x8c44
	.uaword	.LBB1305
	.uaword	.Ldebug_ranges0+0xc08
	.byte	0x2
	.uahalf	0x70a
	.uaword	0xca77
	.uleb128 0x3a
	.uaword	0x8c71
	.byte	0
	.uleb128 0x39
	.uaword	0x8c7e
	.uaword	.LBB1310
	.uaword	.LBE1310
	.byte	0x2
	.uahalf	0x716
	.uleb128 0x3a
	.uaword	0x8ca9
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x8a4d
	.uleb128 0x4c
	.byte	0x1
	.string	"IfxScuCcu_enableExtClockOut0"
	.byte	0x1
	.uahalf	0x594
	.byte	0x1
	.uaword	.LFB275
	.uaword	.LFE275
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xcb5f
	.uleb128 0x4d
	.string	"Clk_Sel"
	.byte	0x1
	.uahalf	0x594
	.uaword	0x8480
	.uaword	.LLST379
	.uleb128 0x4d
	.string	"freqHz"
	.byte	0x1
	.uahalf	0x594
	.uaword	0xcb5f
	.uaword	.LLST380
	.uleb128 0x4d
	.string	"mode"
	.byte	0x1
	.uahalf	0x594
	.uaword	0x8286
	.uaword	.LLST381
	.uleb128 0x4a
	.uaword	.LASF45
	.byte	0x1
	.uahalf	0x596
	.uaword	0x2bd
	.uaword	.LLST382
	.uleb128 0x4e
	.uaword	.LVL929
	.uaword	0xcd6f
	.uleb128 0x4f
	.uaword	.LVL931
	.uaword	0xcd9e
	.uaword	0xcb2e
	.uleb128 0x50
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x4e
	.uaword	.LVL933
	.uaword	0x9b9e
	.uleb128 0x59
	.uaword	.LVL934
	.byte	0x1
	.uaword	0xcdcc
	.uaword	0xcb4c
	.uleb128 0x50
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x4e
	.uaword	.LVL935
	.uaword	0x9b9e
	.uleb128 0x4e
	.uaword	.LVL936
	.uaword	0x9b9e
	.byte	0
	.uleb128 0x1c
	.uaword	0x2ef
	.uleb128 0x4c
	.byte	0x1
	.string	"IfxScuCcu_enableExtClockOut1"
	.byte	0x1
	.uahalf	0x5ba
	.byte	0x1
	.uaword	.LFB276
	.uaword	.LFE276
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xcc16
	.uleb128 0x4d
	.string	"Clk_Sel"
	.byte	0x1
	.uahalf	0x5ba
	.uaword	0x8629
	.uaword	.LLST383
	.uleb128 0x4d
	.string	"freqHz"
	.byte	0x1
	.uahalf	0x5ba
	.uaword	0xcb5f
	.uaword	.LLST384
	.uleb128 0x4d
	.string	"sel"
	.byte	0x1
	.uahalf	0x5ba
	.uaword	0x82f3
	.uaword	.LLST385
	.uleb128 0x4a
	.uaword	.LASF45
	.byte	0x1
	.uahalf	0x5bc
	.uaword	0x2bd
	.uaword	.LLST386
	.uleb128 0x4e
	.uaword	.LVL939
	.uaword	0xcd6f
	.uleb128 0x4f
	.uaword	.LVL941
	.uaword	0xcd9e
	.uaword	0xcbfb
	.uleb128 0x50
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x4e
	.uaword	.LVL942
	.uaword	0x9b9e
	.uleb128 0x51
	.uaword	.LVL944
	.byte	0x1
	.uaword	0xcdcc
	.uleb128 0x50
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5a
	.string	"IfxScuCcu_defaultFlashWaitstateConfig"
	.byte	0x1
	.byte	0x39
	.uaword	0x8b6e
	.byte	0x5
	.byte	0x3
	.uaword	IfxScuCcu_defaultFlashWaitstateConfig
	.uleb128 0x17
	.uaword	0x87ee
	.uaword	0xcc59
	.uleb128 0x18
	.uaword	0x76c4
	.byte	0x2
	.byte	0
	.uleb128 0x5a
	.string	"IfxScuCcu_defaultPllConfigSteps"
	.byte	0x1
	.byte	0x3d
	.uaword	0xcc86
	.byte	0x5
	.byte	0x3
	.uaword	IfxScuCcu_defaultPllConfigSteps
	.uleb128 0x1c
	.uaword	0xcc49
	.uleb128 0x17
	.uaword	0x356
	.uaword	0xcc9b
	.uleb128 0x18
	.uaword	0x76c4
	.byte	0x3
	.byte	0
	.uleb128 0x5b
	.string	"IfxCpu_cfg_indexMap"
	.byte	0xa
	.byte	0xaa
	.uaword	0xccb8
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.uaword	0xcc8b
	.uleb128 0x17
	.uaword	0x2fd
	.uaword	0xcccd
	.uleb128 0x18
	.uaword	0x76c4
	.byte	0x5
	.byte	0
	.uleb128 0x5c
	.string	"IfxScuCcu_MA_percent"
	.byte	0x1
	.byte	0x45
	.uaword	0xccf0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	IfxScuCcu_MA_percent
	.uleb128 0x1c
	.uaword	0xccbd
	.uleb128 0x5c
	.string	"IfxScuCcu_defaultClockConfig"
	.byte	0x1
	.byte	0x4e
	.uaword	0xa997
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	IfxScuCcu_defaultClockConfig
	.uleb128 0x5c
	.string	"IfxScuCcu_defaultModConfig"
	.byte	0x1
	.byte	0x5b
	.uaword	0x8b79
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	IfxScuCcu_defaultModConfig
	.uleb128 0x5c
	.string	"IfxScuCcu_xtalFrequency"
	.byte	0x1
	.byte	0x60
	.uaword	0x2ef
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	IfxScuCcu_xtalFrequency
	.uleb128 0x5d
	.byte	0x1
	.string	"IfxScuWdt_getSafetyWatchdogPassword"
	.byte	0x3
	.uahalf	0x1fb
	.byte	0x1
	.uaword	0x2bd
	.byte	0x1
	.uleb128 0x5e
	.byte	0x1
	.string	"IfxScuWdt_clearSafetyEndinit"
	.byte	0x3
	.uahalf	0x115
	.byte	0x1
	.byte	0x1
	.uaword	0xcdcc
	.uleb128 0x5f
	.uaword	0x2bd
	.byte	0
	.uleb128 0x5e
	.byte	0x1
	.string	"IfxScuWdt_setSafetyEndinit"
	.byte	0x3
	.uahalf	0x13d
	.byte	0x1
	.byte	0x1
	.uaword	0xcdf8
	.uleb128 0x5f
	.uaword	0x2bd
	.byte	0
	.uleb128 0x5d
	.byte	0x1
	.string	"IfxScuWdt_getCpuWatchdogPassword"
	.byte	0x3
	.uahalf	0x1d9
	.byte	0x1
	.uaword	0x2bd
	.byte	0x1
	.uleb128 0x60
	.byte	0x1
	.string	"IfxScuWdt_clearCpuEndinit"
	.byte	0x3
	.byte	0xef
	.byte	0x1
	.byte	0x1
	.uaword	0xce4e
	.uleb128 0x5f
	.uaword	0x2bd
	.byte	0
	.uleb128 0x61
	.byte	0x1
	.string	"IfxScuWdt_setCpuEndinit"
	.byte	0x3
	.uahalf	0x11f
	.byte	0x1
	.byte	0x1
	.uleb128 0x5f
	.uaword	0x2bd
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
	.uleb128 0x4
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x35
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0x11
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x15
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x33
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
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
	.uleb128 0x35
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x37
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x1
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
	.uleb128 0x3a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x42
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
	.uleb128 0x43
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
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x44
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
	.uleb128 0x45
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
	.uleb128 0x46
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x47
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
	.uleb128 0x48
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
	.uleb128 0x49
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
	.uleb128 0x4a
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
	.uleb128 0x4b
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
	.uleb128 0x4d
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
	.uleb128 0x4e
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4f
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
	.uleb128 0x50
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x51
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
	.uleb128 0x52
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
	.uleb128 0x53
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
	.uleb128 0x54
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x55
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x56
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
	.uleb128 0x57
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
	.uleb128 0x58
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
	.uleb128 0x59
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
	.uleb128 0x5a
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
	.uleb128 0x5b
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
	.uleb128 0x5c
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
	.uleb128 0x5d
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
	.uleb128 0x5e
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
	.uleb128 0x5f
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x60
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
	.uleb128 0x61
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
	.uaword	.LFE237
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL1
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL2
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x1000
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x1000
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x1000
	.byte	0x9f
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x1000
	.byte	0x9f
	.uaword	.LVL27
	.uaword	.LVL28
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x1000
	.byte	0x9f
	.uaword	.LVL29
	.uaword	.LVL30
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x1000
	.byte	0x9f
	.uaword	.LVL33
	.uaword	.LVL34
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x1000
	.byte	0x9f
	.uaword	.LVL35
	.uaword	.LVL36
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x1000
	.byte	0x9f
	.uaword	.LVL56
	.uaword	.LVL57
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x1000
	.byte	0x9f
	.uaword	.LVL59
	.uaword	.LVL60
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x1000
	.byte	0x9f
	.uaword	.LVL65
	.uaword	.LVL67
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x1000
	.byte	0x9f
	.uaword	.LVL70
	.uaword	.LVL71
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x1000
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL6
	.uaword	.LVL14
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL19
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL62
	.uaword	.LVL65
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL69
	.uaword	.LFE238
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL26
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL55
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL58
	.uaword	.LVL61
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL33
	.uaword	.LVL37
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LFB239
	.uaword	.LCFI0
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0
	.uaword	.LFE239
	.uahalf	0x2
	.byte	0x8a
	.sleb128 16
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL72
	.uaword	.LVL73
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL73
	.uaword	.LVL74
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL74
	.uaword	.LVL75
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL75
	.uaword	.LVL76
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL76
	.uaword	.LVL82
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL82
	.uaword	.LVL83
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL83
	.uaword	.LFE239
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL72
	.uaword	.LVL73
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL74
	.uaword	.LVL81
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL83
	.uaword	.LVL84
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL81
	.uaword	.LVL83
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL84
	.uaword	.LFE239
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL77
	.uaword	.LVL81
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL77
	.uaword	.LVL81
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xf0036000
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL80
	.uaword	.LVL81
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL78
	.uaword	.LVL79
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL90
	.uaword	.LVL91
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL93
	.uaword	.LVL94
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL95
	.uaword	.LVL96
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL97
	.uaword	.LVL98
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL99
	.uaword	.LFE240
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL89
	.uaword	.LVL91
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL92
	.uaword	.LFE240
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL86
	.uaword	.LVL89
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xf0036000
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL87
	.uaword	.LVL88
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL106
	.uaword	.LVL107
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL110
	.uaword	.LVL113
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL105
	.uaword	.LVL106
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL107
	.uaword	.LVL108
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL109
	.uaword	.LVL110
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL110
	.uaword	.LVL111
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL113
	.uaword	.LVL114
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL114
	.uaword	.LVL115
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL115
	.uaword	.LVL116
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL116
	.uaword	.LVL117
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL117
	.uaword	.LVL118
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL118
	.uaword	.LVL119
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL105
	.uaword	.LVL106
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL107
	.uaword	.LVL108
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL109
	.uaword	.LVL112
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL113
	.uaword	.LVL119
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL120
	.uaword	.LVL121
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL122
	.uaword	.LVL123
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL124
	.uaword	.LVL125
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL126
	.uaword	.LFE241
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL104
	.uaword	.LVL106
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL107
	.uaword	.LVL108
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL109
	.uaword	.LVL110
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL113
	.uaword	.LVL114
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL115
	.uaword	.LVL116
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL117
	.uaword	.LVL118
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL119
	.uaword	.LFE241
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL101
	.uaword	.LVL104
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xf0036000
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL102
	.uaword	.LVL103
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL129
	.uaword	.LVL130
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL138
	.uaword	.LVL139
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL127
	.uaword	.LVL128
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL128
	.uaword	.LVL129
	.uahalf	0x11
	.byte	0x9d
	.uleb128 0x1a
	.uleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x9
	.byte	0xe8
	.byte	0x24
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x2
	.uleb128 0
	.byte	0x9d
	.uleb128 0x4
	.uleb128 0
	.uaword	.LVL130
	.uaword	.LVL137
	.uahalf	0x11
	.byte	0x9d
	.uleb128 0x1a
	.uleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x9
	.byte	0xe8
	.byte	0x24
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x2
	.uleb128 0
	.byte	0x9d
	.uleb128 0x4
	.uleb128 0
	.uaword	.LVL139
	.uaword	.LFE242
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL135
	.uaword	.LVL138
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL143
	.uaword	.LVL144
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL145
	.uaword	.LVL146
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL147
	.uaword	.LVL148
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL149
	.uaword	.LVL150
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL151
	.uaword	.LFE242
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL134
	.uaword	.LVL136
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL139
	.uaword	.LVL140
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL141
	.uaword	.LVL142
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL142
	.uaword	.LFE242
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL131
	.uaword	.LVL134
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xf0036000
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL132
	.uaword	.LVL133
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL154
	.uaword	.LVL155
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL163
	.uaword	.LVL164
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL152
	.uaword	.LVL153
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL153
	.uaword	.LVL154
	.uahalf	0x10
	.byte	0x93
	.uleb128 0x3
	.byte	0x7f
	.sleb128 0
	.byte	0x9
	.byte	0xea
	.byte	0x24
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x2
	.uleb128 0
	.byte	0x9d
	.uleb128 0x6
	.uleb128 0
	.uaword	.LVL155
	.uaword	.LVL162
	.uahalf	0x10
	.byte	0x93
	.uleb128 0x3
	.byte	0x7f
	.sleb128 0
	.byte	0x9
	.byte	0xea
	.byte	0x24
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x2
	.uleb128 0
	.byte	0x9d
	.uleb128 0x6
	.uleb128 0
	.uaword	.LVL164
	.uaword	.LFE243
	.uahalf	0x10
	.byte	0x93
	.uleb128 0x3
	.byte	0x7f
	.sleb128 0
	.byte	0x9
	.byte	0xea
	.byte	0x24
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x2
	.uleb128 0
	.byte	0x9d
	.uleb128 0x6
	.uleb128 0
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL160
	.uaword	.LVL163
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL168
	.uaword	.LVL169
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL170
	.uaword	.LVL171
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL172
	.uaword	.LVL173
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL174
	.uaword	.LVL175
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL176
	.uaword	.LFE243
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL159
	.uaword	.LVL161
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL164
	.uaword	.LVL165
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL166
	.uaword	.LVL167
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL167
	.uaword	.LFE243
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL156
	.uaword	.LVL159
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xf0036000
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL157
	.uaword	.LVL158
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL177
	.uaword	.LVL178
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL178
	.uaword	.LVL179
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL179
	.uaword	.LVL180
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL180
	.uaword	.LVL181
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL181
	.uaword	.LFE244
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL187
	.uaword	.LVL188
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST42:
	.uaword	.LVL186
	.uaword	.LVL188
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST43:
	.uaword	.LVL182
	.uaword	.LVL186
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST44:
	.uaword	.LVL182
	.uaword	.LVL186
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xf0036000
	.uaword	0
	.uaword	0
.LLST45:
	.uaword	.LVL185
	.uaword	.LVL186
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST46:
	.uaword	.LVL183
	.uaword	.LVL184
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST47:
	.uaword	.LVL197
	.uaword	.LVL198
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL201
	.uaword	.LVL202
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL205
	.uaword	.LVL206
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST48:
	.uaword	.LVL189
	.uaword	.LVL190
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL190
	.uaword	.LFE245
	.uahalf	0xd
	.byte	0x75
	.sleb128 0
	.byte	0xa
	.uahalf	0x3ff
	.byte	0x1a
	.byte	0x9f
	.byte	0x9d
	.uleb128 0xa
	.uleb128 0
	.byte	0x9d
	.uleb128 0x16
	.uleb128 0
	.uaword	0
	.uaword	0
.LLST49:
	.uaword	.LVL195
	.uaword	.LVL198
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL199
	.uaword	.LVL200
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL203
	.uaword	.LVL206
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL207
	.uaword	.LVL208
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL209
	.uaword	.LVL210
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL211
	.uaword	.LFE245
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST50:
	.uaword	.LVL194
	.uaword	.LVL196
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL202
	.uaword	.LVL204
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL206
	.uaword	.LFE245
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST51:
	.uaword	.LVL191
	.uaword	.LVL194
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xf0036000
	.uaword	0
	.uaword	0
.LLST52:
	.uaword	.LVL192
	.uaword	.LVL193
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST53:
	.uaword	.LVL212
	.uaword	.LVL214
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL214
	.uaword	.LVL215
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL215
	.uaword	.LFE246
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	0
	.uaword	0
.LLST54:
	.uaword	.LVL212
	.uaword	.LVL213
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL213
	.uaword	.LVL215
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL215
	.uaword	.LFE246
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	0
	.uaword	0
.LLST55:
	.uaword	.LVL215
	.uaword	.LVL220
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL226
	.uaword	.LFE246
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST56:
	.uaword	.LVL216
	.uaword	.LVL220
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xf0036000
	.uaword	.LVL226
	.uaword	.LFE246
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xf0036000
	.uaword	0
	.uaword	0
.LLST57:
	.uaword	.LVL219
	.uaword	.LVL220
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL228
	.uaword	.LFE246
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST58:
	.uaword	.LVL217
	.uaword	.LVL218
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL226
	.uaword	.LVL227
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST59:
	.uaword	.LVL220
	.uaword	.LVL226
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST60:
	.uaword	.LVL221
	.uaword	.LVL226
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST61:
	.uaword	.LVL225
	.uaword	.LVL226
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST62:
	.uaword	.LVL221
	.uaword	.LVL226
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xf0036000
	.uaword	0
	.uaword	0
.LLST63:
	.uaword	.LVL224
	.uaword	.LVL225
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST64:
	.uaword	.LVL222
	.uaword	.LVL223
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST65:
	.uaword	.LVL230
	.uaword	.LVL232
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST66:
	.uaword	.LVL236
	.uaword	.LVL237
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL239
	.uaword	.LFE248
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST67:
	.uaword	.LVL234
	.uaword	.LVL235
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL237
	.uaword	.LVL238
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST68:
	.uaword	.LVL241
	.uaword	.LVL243
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST69:
	.uaword	.LVL244
	.uaword	.LVL246
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL246
	.uaword	.LVL247
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL247
	.uaword	.LFE250
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	0
	.uaword	0
.LLST70:
	.uaword	.LVL244
	.uaword	.LVL245
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL245
	.uaword	.LVL247
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL247
	.uaword	.LFE250
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	0
	.uaword	0
.LLST71:
	.uaword	.LVL247
	.uaword	.LVL252
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL258
	.uaword	.LFE250
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST72:
	.uaword	.LVL248
	.uaword	.LVL252
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xf0036000
	.uaword	.LVL258
	.uaword	.LFE250
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xf0036000
	.uaword	0
	.uaword	0
.LLST73:
	.uaword	.LVL251
	.uaword	.LVL252
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL260
	.uaword	.LFE250
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST74:
	.uaword	.LVL249
	.uaword	.LVL250
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL258
	.uaword	.LVL259
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST75:
	.uaword	.LVL252
	.uaword	.LVL258
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST76:
	.uaword	.LVL253
	.uaword	.LVL258
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST77:
	.uaword	.LVL257
	.uaword	.LVL258
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST78:
	.uaword	.LVL253
	.uaword	.LVL258
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xf0036000
	.uaword	0
	.uaword	0
.LLST79:
	.uaword	.LVL256
	.uaword	.LVL257
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST80:
	.uaword	.LVL254
	.uaword	.LVL255
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST81:
	.uaword	.LVL261
	.uaword	.LVL264
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL264
	.uaword	.LVL267
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL267
	.uaword	.LVL268
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL268
	.uaword	.LVL269
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL269
	.uaword	.LVL271
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL271
	.uaword	.LVL274
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL274
	.uaword	.LVL276
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL276
	.uaword	.LFE251
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST82:
	.uaword	.LVL268
	.uaword	.LVL269
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST83:
	.uaword	.LVL262
	.uaword	.LVL267
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xf0036000
	.uaword	.LVL280
	.uaword	.LFE251
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xf0036000
	.uaword	0
	.uaword	0
.LLST84:
	.uaword	.LVL266
	.uaword	.LVL267
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL282
	.uaword	.LFE251
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST85:
	.uaword	.LVL263
	.uaword	.LVL265
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL280
	.uaword	.LVL281
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST86:
	.uaword	.LVL269
	.uaword	.LVL274
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xf0036000
	.uaword	0
	.uaword	0
.LLST87:
	.uaword	.LVL273
	.uaword	.LVL274
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST88:
	.uaword	.LVL270
	.uaword	.LVL272
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST89:
	.uaword	.LVL274
	.uaword	.LVL280
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST90:
	.uaword	.LVL279
	.uaword	.LVL280
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST91:
	.uaword	.LVL274
	.uaword	.LVL280
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xf0036000
	.uaword	0
	.uaword	0
.LLST92:
	.uaword	.LVL278
	.uaword	.LVL279
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST93:
	.uaword	.LVL275
	.uaword	.LVL277
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST94:
	.uaword	.LVL288
	.uaword	.LVL289
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL291
	.uaword	.LVL292
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL293
	.uaword	.LVL294
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL295
	.uaword	.LVL296
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL297
	.uaword	.LFE252
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST95:
	.uaword	.LVL287
	.uaword	.LVL289
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL290
	.uaword	.LFE252
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST96:
	.uaword	.LVL284
	.uaword	.LVL287
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xf0036000
	.uaword	0
	.uaword	0
.LLST97:
	.uaword	.LVL285
	.uaword	.LVL286
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST98:
	.uaword	.LVL303
	.uaword	.LVL304
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL306
	.uaword	.LVL307
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL308
	.uaword	.LVL309
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL310
	.uaword	.LVL311
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL312
	.uaword	.LFE253
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST99:
	.uaword	.LVL302
	.uaword	.LVL304
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL305
	.uaword	.LFE253
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST100:
	.uaword	.LVL299
	.uaword	.LVL302
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xf0036000
	.uaword	0
	.uaword	0
.LLST101:
	.uaword	.LVL300
	.uaword	.LVL301
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST102:
	.uaword	.LVL313
	.uaword	.LVL314
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST103:
	.uaword	.LVL315
	.uaword	.LVL322-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL322-1
	.uaword	.LFE256
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST104:
	.uaword	.LVL323
	.uaword	.LVL324-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL324-1
	.uaword	.LFE256
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST105:
	.uaword	.LVL315
	.uaword	.LVL322-1
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST106:
	.uaword	.LVL316
	.uaword	.LVL322-1
	.uahalf	0x2
	.byte	0x84
	.sleb128 1
	.uaword	0
	.uaword	0
.LLST107:
	.uaword	.LVL326
	.uaword	.LVL327
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST108:
	.uaword	.LVL317
	.uaword	.LVL319
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL319
	.uaword	.LVL322-1
	.uahalf	0x2
	.byte	0x84
	.sleb128 1
	.uaword	0
	.uaword	0
.LLST109:
	.uaword	.LVL321
	.uaword	.LVL322-1
	.uahalf	0x26
	.byte	0x73
	.sleb128 0
	.byte	0x9
	.byte	0xf4
	.byte	0x24
	.byte	0x9
	.byte	0xfd
	.byte	0x25
	.byte	0x23
	.uleb128 0x1
	.byte	0xf7
	.uleb128 0x1d3
	.byte	0xf7
	.uleb128 0x1ca
	.byte	0xf5
	.uleb128 0xf
	.uleb128 0x1ca
	.byte	0x1e
	.byte	0x72
	.sleb128 0
	.byte	0x9
	.byte	0xe9
	.byte	0x24
	.byte	0x31
	.byte	0x25
	.byte	0x23
	.uleb128 0x1
	.byte	0xf7
	.uleb128 0x1d3
	.byte	0xf7
	.uleb128 0x1ca
	.byte	0x1b
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST110:
	.uaword	.LVL320
	.uaword	.LVL325
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST111:
	.uaword	.LVL330
	.uaword	.LVL373
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL373
	.uaword	.LVL375
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL375
	.uaword	.LVL376
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL376
	.uaword	.LVL448
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL448
	.uaword	.LVL450
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL450
	.uaword	.LFE254
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST112:
	.uaword	.LVL330
	.uaword	.LVL372
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL374
	.uaword	.LVL375
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL428
	.uaword	.LVL433
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL443
	.uaword	.LVL444
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL448
	.uaword	.LVL450
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST114:
	.uaword	.LVL330
	.uaword	.LVL334
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL334
	.uaword	.LVL374
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL375
	.uaword	.LVL433
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL448
	.uaword	.LFE254
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST115:
	.uaword	.LVL337
	.uaword	.LVL338
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x1000
	.byte	0x9f
	.uaword	.LVL341
	.uaword	.LVL342
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x3000
	.byte	0x9f
	.uaword	.LVL350
	.uaword	.LVL351
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x3000
	.byte	0x9f
	.uaword	.LVL352
	.uaword	.LVL353
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x6000
	.byte	0x9f
	.uaword	.LVL356
	.uaword	.LVL357
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x6000
	.byte	0x9f
	.uaword	.LVL359
	.uaword	.LVL360
	.uahalf	0x6
	.byte	0xc
	.uaword	0x493e0
	.byte	0x9f
	.uaword	.LVL362
	.uaword	.LVL363
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x3000
	.byte	0x9f
	.uaword	.LVL366
	.uaword	.LVL367
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x1000
	.byte	0x9f
	.uaword	.LVL369
	.uaword	.LVL370
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x1000
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST117:
	.uaword	.LVL332
	.uaword	.LVL333
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST119:
	.uaword	.LVL336
	.uaword	.LVL339
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST120:
	.uaword	.LVL346
	.uaword	.LVL347
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST121:
	.uaword	.LVL348
	.uaword	.LVL349
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST122:
	.uaword	.LVL355
	.uaword	.LVL358
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST123:
	.uaword	.LVL365
	.uaword	.LVL377-1
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST124:
	.uaword	.LVL344
	.uaword	.LVL345
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL449
	.uaword	.LVL450
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST125:
	.uaword	.LVL429
	.uaword	.LVL448
	.uahalf	0x3
	.byte	0x8c
	.sleb128 20
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST126:
	.uaword	.LVL429
	.uaword	.LVL433
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST127:
	.uaword	.LVL431
	.uaword	.LVL433
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL434
	.uaword	.LVL441
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL441
	.uaword	.LVL444
	.uahalf	0x3
	.byte	0x70
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL444
	.uaword	.LVL448
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST128:
	.uaword	.LVL436
	.uaword	.LVL439
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL439
	.uaword	.LVL444
	.uahalf	0x2
	.byte	0x8f
	.sleb128 4
	.uaword	.LVL444
	.uaword	.LVL448
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST129:
	.uaword	.LVL440
	.uaword	.LVL442
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST130:
	.uaword	.LVL440
	.uaword	.LVL444
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST131:
	.uaword	.LVL436
	.uaword	.LVL448
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST132:
	.uaword	.LVL437
	.uaword	.LVL438
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST133:
	.uaword	.LVL444
	.uaword	.LVL448
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xf0036000
	.uaword	0
	.uaword	0
.LLST134:
	.uaword	.LVL447
	.uaword	.LVL448
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST135:
	.uaword	.LVL445
	.uaword	.LVL446
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST136:
	.uaword	.LVL431
	.uaword	.LVL432
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST137:
	.uaword	.LVL429
	.uaword	.LVL448
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xf00362a8
	.uaword	0
	.uaword	0
.LLST138:
	.uaword	.LVL377
	.uaword	.LVL448
	.uahalf	0x3
	.byte	0x8c
	.sleb128 28
	.byte	0x9f
	.uaword	.LVL450
	.uaword	.LFE254
	.uahalf	0x3
	.byte	0x8c
	.sleb128 28
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST139:
	.uaword	.LVL383
	.uaword	.LVL384
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x1000
	.byte	0x9f
	.uaword	.LVL388
	.uaword	.LVL389
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x1000
	.byte	0x9f
	.uaword	.LVL393
	.uaword	.LVL394
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x1000
	.byte	0x9f
	.uaword	.LVL395
	.uaword	.LVL396
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x1000
	.byte	0x9f
	.uaword	.LVL400
	.uaword	.LVL401
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x1000
	.byte	0x9f
	.uaword	.LVL402
	.uaword	.LVL403
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x1000
	.byte	0x9f
	.uaword	.LVL406
	.uaword	.LVL407
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x1000
	.byte	0x9f
	.uaword	.LVL408
	.uaword	.LVL409
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x1000
	.byte	0x9f
	.uaword	.LVL452
	.uaword	.LVL453
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x1000
	.byte	0x9f
	.uaword	.LVL455
	.uaword	.LVL456
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x1000
	.byte	0x9f
	.uaword	.LVL461
	.uaword	.LVL463
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x1000
	.byte	0x9f
	.uaword	.LVL466
	.uaword	.LVL467
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x1000
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST140:
	.uaword	.LVL377
	.uaword	.LVL387
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST141:
	.uaword	.LVL379
	.uaword	.LVL380
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST142:
	.uaword	.LVL377
	.uaword	.LVL448
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xf00362a8
	.uaword	.LVL450
	.uaword	.LFE254
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xf00362a8
	.uaword	0
	.uaword	0
.LLST144:
	.uaword	.LVL390
	.uaword	.LVL391
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL392
	.uaword	.LVL397
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL458
	.uaword	.LVL461
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL465
	.uaword	.LFE254
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST145:
	.uaword	.LVL397
	.uaword	.LVL398
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL399
	.uaword	.LVL404
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL451
	.uaword	.LVL452
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL454
	.uaword	.LVL457
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST146:
	.uaword	.LVL406
	.uaword	.LVL410
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST147:
	.uaword	.LFB257
	.uaword	.LCFI1
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI1
	.uaword	.LFE257
	.uahalf	0x2
	.byte	0x8a
	.sleb128 16
	.uaword	0
	.uaword	0
.LLST148:
	.uaword	.LVL468
	.uaword	.LVL479-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL479-1
	.uaword	.LVL484
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1ca
	.byte	0x9f
	.uaword	.LVL484
	.uaword	.LVL485
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL485
	.uaword	.LVL491
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1ca
	.byte	0x9f
	.uaword	.LVL491
	.uaword	.LVL492
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL492
	.uaword	.LVL493
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1ca
	.byte	0x9f
	.uaword	.LVL493
	.uaword	.LVL496
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL496
	.uaword	.LFE257
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1ca
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST149:
	.uaword	.LVL468
	.uaword	.LVL483
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL484
	.uaword	.LVL490
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL491
	.uaword	.LFE257
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	0
	.uaword	0
.LLST150:
	.uaword	.LVL480
	.uaword	.LVL481-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL481-1
	.uaword	.LVL484
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL485
	.uaword	.LVL491
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL492
	.uaword	.LVL493
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL496
	.uaword	.LFE257
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST151:
	.uaword	.LVL473
	.uaword	.LVL491
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL492
	.uaword	.LVL493
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL496
	.uaword	.LFE257
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST152:
	.uaword	.LVL475
	.uaword	.LVL476
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL477
	.uaword	.LVL478
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL484
	.uaword	.LVL485
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST153:
	.uaword	.LVL472
	.uaword	.LVL474
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST154:
	.uaword	.LVL469
	.uaword	.LVL472
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xf0036000
	.uaword	.LVL493
	.uaword	.LVL496
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xf0036000
	.uaword	0
	.uaword	0
.LLST155:
	.uaword	.LVL495
	.uaword	.LVL496
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST156:
	.uaword	.LVL470
	.uaword	.LVL471
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL493
	.uaword	.LVL494
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST157:
	.uaword	.LVL475
	.uaword	.LVL491
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL492
	.uaword	.LVL493
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL496
	.uaword	.LFE257
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST158:
	.uaword	.LVL475
	.uaword	.LVL476
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST159:
	.uaword	.LVL476
	.uaword	.LVL477
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL484
	.uaword	.LVL485
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST160:
	.uaword	.LVL482
	.uaword	.LVL483
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL483
	.uaword	.LVL484
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL485
	.uaword	.LVL490
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL490
	.uaword	.LVL491
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL492
	.uaword	.LVL493
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL496
	.uaword	.LFE257
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	0
	.uaword	0
.LLST161:
	.uaword	.LVL485
	.uaword	.LVL491
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL492
	.uaword	.LVL493
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL496
	.uaword	.LFE257
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST162:
	.uaword	.LVL489
	.uaword	.LVL491
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST163:
	.uaword	.LVL486
	.uaword	.LVL489
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xf0036000
	.uaword	.LVL496
	.uaword	.LFE257
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xf0036000
	.uaword	0
	.uaword	0
.LLST164:
	.uaword	.LVL498
	.uaword	.LFE257
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST165:
	.uaword	.LVL487
	.uaword	.LVL488
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL496
	.uaword	.LVL497
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST166:
	.uaword	.LVL499
	.uaword	.LVL507-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL507-1
	.uaword	.LVL511
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1ca
	.byte	0x9f
	.uaword	.LVL511
	.uaword	.LFE258
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST167:
	.uaword	.LVL499
	.uaword	.LVL501
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL501
	.uaword	.LVL502
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL512
	.uaword	.LFE258
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	0
	.uaword	0
.LLST168:
	.uaword	.LVL508
	.uaword	.LVL509-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL509-1
	.uaword	.LVL511
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST169:
	.uaword	.LVL503
	.uaword	.LVL504
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL505
	.uaword	.LVL506
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL511
	.uaword	.LVL512
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST170:
	.uaword	.LVL503
	.uaword	.LVL512
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST171:
	.uaword	.LVL503
	.uaword	.LVL504
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST172:
	.uaword	.LVL504
	.uaword	.LVL505
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL511
	.uaword	.LVL512
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST173:
	.uaword	.LVL512
	.uaword	.LVL513
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL514
	.uaword	.LFE258
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST174:
	.uaword	.LVL517
	.uaword	.LVL518
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST175:
	.uaword	.LVL515
	.uaword	.LVL516
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST176:
	.uaword	.LVL519
	.uaword	.LVL529-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL529-1
	.uaword	.LVL540
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1ca
	.byte	0x9f
	.uaword	.LVL540
	.uaword	.LVL541
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL541
	.uaword	.LVL542
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1ca
	.byte	0x9f
	.uaword	.LVL542
	.uaword	.LVL543
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL543
	.uaword	.LFE259
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1ca
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST177:
	.uaword	.LVL519
	.uaword	.LVL539
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL540
	.uaword	.LFE259
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	0
	.uaword	0
.LLST178:
	.uaword	.LVL532
	.uaword	.LVL533-1
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST179:
	.uaword	.LVL530
	.uaword	.LVL531-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL531-1
	.uaword	.LVL540
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL541
	.uaword	.LVL542
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL543
	.uaword	.LFE259
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST180:
	.uaword	.LVL525
	.uaword	.LVL526
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL527
	.uaword	.LVL528
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL540
	.uaword	.LVL541
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST181:
	.uaword	.LVL523
	.uaword	.LVL524
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST182:
	.uaword	.LVL520
	.uaword	.LVL523
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xf0036000
	.uaword	0
	.uaword	0
.LLST183:
	.uaword	.LVL521
	.uaword	.LVL522
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST184:
	.uaword	.LVL525
	.uaword	.LVL542
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL543
	.uaword	.LFE259
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST185:
	.uaword	.LVL525
	.uaword	.LVL526
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST186:
	.uaword	.LVL526
	.uaword	.LVL527
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL540
	.uaword	.LVL541
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST187:
	.uaword	.LVL539
	.uaword	.LVL540
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL544
	.uaword	.LVL545
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL546
	.uaword	.LVL547
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL548
	.uaword	.LVL549
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL550
	.uaword	.LFE259
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST188:
	.uaword	.LVL534
	.uaword	.LVL540
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL541
	.uaword	.LVL542
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL543
	.uaword	.LFE259
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST189:
	.uaword	.LVL538
	.uaword	.LVL540
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL543
	.uaword	.LFE259
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST190:
	.uaword	.LVL535
	.uaword	.LVL538
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xf0036000
	.uaword	0
	.uaword	0
.LLST191:
	.uaword	.LVL536
	.uaword	.LVL537
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST192:
	.uaword	.LVL551
	.uaword	.LVL554
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL554
	.uaword	.LVL571
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL571
	.uaword	.LVL572
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL572
	.uaword	.LFE260
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST193:
	.uaword	.LVL551
	.uaword	.LVL560-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL560-1
	.uaword	.LVL564
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x5
	.uleb128 0x1ca
	.byte	0x9f
	.uaword	.LVL564
	.uaword	.LVL565-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL565-1
	.uaword	.LVL571
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x5
	.uleb128 0x1ca
	.byte	0x9f
	.uaword	.LVL571
	.uaword	.LVL572
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL572
	.uaword	.LVL579
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x5
	.uleb128 0x1ca
	.byte	0x9f
	.uaword	.LVL579
	.uaword	.LFE260
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST194:
	.uaword	.LVL561
	.uaword	.LVL562-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL562-1
	.uaword	.LVL564
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL566
	.uaword	.LVL567-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL567-1
	.uaword	.LVL571
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL572
	.uaword	.LVL574
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST195:
	.uaword	.LVL568
	.uaword	.LVL570
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL570
	.uaword	.LVL571
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL575
	.uaword	.LVL578
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST196:
	.uaword	.LVL559
	.uaword	.LVL564
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL564
	.uaword	.LVL571
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL572
	.uaword	.LVL573
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL573
	.uaword	.LVL574
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST197:
	.uaword	.LVL557
	.uaword	.LVL563
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL564
	.uaword	.LVL570
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL572
	.uaword	.LVL575
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL578
	.uaword	.LVL579
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL580
	.uaword	.LVL581
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL582
	.uaword	.LVL583
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL584
	.uaword	.LVL585
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL586
	.uaword	.LFE260
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST198:
	.uaword	.LVL556
	.uaword	.LVL558
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL579
	.uaword	.LFE260
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST199:
	.uaword	.LVL552
	.uaword	.LVL556
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xf0036000
	.uaword	0
	.uaword	0
.LLST200:
	.uaword	.LVL553
	.uaword	.LVL555
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST201:
	.uaword	.LVL587
	.uaword	.LVL590
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL590
	.uaword	.LVL598
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1ca
	.byte	0x9f
	.uaword	.LVL598
	.uaword	.LVL599-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL599-1
	.uaword	.LVL601
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL601
	.uaword	.LFE261
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1ca
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST202:
	.uaword	.LVL587
	.uaword	.LVL590
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL598
	.uaword	.LVL599
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL599
	.uaword	.LVL600
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST203:
	.uaword	.LVL604
	.uaword	.LVL605-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL605-1
	.uaword	.LFE261
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST204:
	.uaword	.LVL588
	.uaword	.LVL589
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL606
	.uaword	.LVL608
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST205:
	.uaword	.LVL593
	.uaword	.LVL594
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL595
	.uaword	.LVL598
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST206:
	.uaword	.LVL591
	.uaword	.LVL592
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL592
	.uaword	.LVL593
	.uahalf	0x11
	.byte	0x9d
	.uleb128 0x1a
	.uleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x9
	.byte	0xe8
	.byte	0x24
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x2
	.uleb128 0
	.byte	0x9d
	.uleb128 0x4
	.uleb128 0
	.uaword	.LVL594
	.uaword	.LVL596
	.uahalf	0x11
	.byte	0x9d
	.uleb128 0x1a
	.uleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x9
	.byte	0xe8
	.byte	0x24
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x2
	.uleb128 0
	.byte	0x9d
	.uleb128 0x4
	.uleb128 0
	.uaword	0
	.uaword	0
.LLST207:
	.uaword	.LVL609
	.uaword	.LVL612
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL612
	.uaword	.LVL620
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1ca
	.byte	0x9f
	.uaword	.LVL620
	.uaword	.LVL621-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL621-1
	.uaword	.LVL623
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL623
	.uaword	.LFE262
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1ca
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST208:
	.uaword	.LVL609
	.uaword	.LVL612
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL620
	.uaword	.LVL621
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL621
	.uaword	.LVL622
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST209:
	.uaword	.LVL626
	.uaword	.LVL627-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL627-1
	.uaword	.LFE262
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST210:
	.uaword	.LVL610
	.uaword	.LVL611
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL628
	.uaword	.LVL630
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST211:
	.uaword	.LVL615
	.uaword	.LVL616
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL617
	.uaword	.LVL620
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST212:
	.uaword	.LVL613
	.uaword	.LVL614
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL614
	.uaword	.LVL615
	.uahalf	0x10
	.byte	0x93
	.uleb128 0x3
	.byte	0x7f
	.sleb128 0
	.byte	0x9
	.byte	0xea
	.byte	0x24
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x2
	.uleb128 0
	.byte	0x9d
	.uleb128 0x6
	.uleb128 0
	.uaword	.LVL616
	.uaword	.LVL618
	.uahalf	0x10
	.byte	0x93
	.uleb128 0x3
	.byte	0x7f
	.sleb128 0
	.byte	0x9
	.byte	0xea
	.byte	0x24
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x2
	.uleb128 0
	.byte	0x9d
	.uleb128 0x6
	.uleb128 0
	.uaword	0
	.uaword	0
.LLST213:
	.uaword	.LVL631
	.uaword	.LVL641-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL641-1
	.uaword	.LVL652
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1ca
	.byte	0x9f
	.uaword	.LVL652
	.uaword	.LVL653
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL653
	.uaword	.LVL654
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1ca
	.byte	0x9f
	.uaword	.LVL654
	.uaword	.LFE263
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST214:
	.uaword	.LVL631
	.uaword	.LVL651
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL652
	.uaword	.LFE263
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	0
	.uaword	0
.LLST215:
	.uaword	.LVL644
	.uaword	.LVL645-1
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST216:
	.uaword	.LVL642
	.uaword	.LVL643-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL643-1
	.uaword	.LVL652
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL653
	.uaword	.LVL654
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST217:
	.uaword	.LVL637
	.uaword	.LVL638
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL639
	.uaword	.LVL640
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL652
	.uaword	.LVL653
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST218:
	.uaword	.LVL635
	.uaword	.LVL636
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST219:
	.uaword	.LVL632
	.uaword	.LVL635
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xf0036000
	.uaword	0
	.uaword	0
.LLST220:
	.uaword	.LVL633
	.uaword	.LVL634
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST221:
	.uaword	.LVL637
	.uaword	.LVL654
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST222:
	.uaword	.LVL637
	.uaword	.LVL638
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST223:
	.uaword	.LVL638
	.uaword	.LVL639
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL652
	.uaword	.LVL653
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST224:
	.uaword	.LVL646
	.uaword	.LVL652
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL653
	.uaword	.LVL654
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST225:
	.uaword	.LVL650
	.uaword	.LVL652
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST226:
	.uaword	.LVL647
	.uaword	.LVL650
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xf0036000
	.uaword	0
	.uaword	0
.LLST227:
	.uaword	.LVL648
	.uaword	.LVL649
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST228:
	.uaword	.LVL655
	.uaword	.LVL657-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL657-1
	.uaword	.LVL658
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL658
	.uaword	.LVL670
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1ca
	.byte	0x9f
	.uaword	.LVL670
	.uaword	.LVL672
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL672
	.uaword	.LVL683
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1ca
	.byte	0x9f
	.uaword	.LVL683
	.uaword	.LFE264
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST229:
	.uaword	.LVL660
	.uaword	.LVL661-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL661-1
	.uaword	.LVL670
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL677
	.uaword	.LVL683
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST230:
	.uaword	.LVL656
	.uaword	.LVL658
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL670
	.uaword	.LVL674
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL674
	.uaword	.LVL675
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL675
	.uaword	.LVL676
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL676
	.uaword	.LVL677
	.uahalf	0x3
	.byte	0x74
	.sleb128 7
	.byte	0x9f
	.uaword	.LVL683
	.uaword	.LFE264
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST231:
	.uaword	.LVL663
	.uaword	.LVL669
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL677
	.uaword	.LVL679
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL679
	.uaword	.LVL680
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL680
	.uaword	.LVL682
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL682
	.uaword	.LVL683
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST232:
	.uaword	.LVL664
	.uaword	.LVL669
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL677
	.uaword	.LVL680
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST233:
	.uaword	.LVL668
	.uaword	.LVL669
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL678
	.uaword	.LVL680
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST234:
	.uaword	.LVL665
	.uaword	.LVL668
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xf0036000
	.uaword	0
	.uaword	0
.LLST235:
	.uaword	.LVL666
	.uaword	.LVL667
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST236:
	.uaword	.LVL670
	.uaword	.LVL677
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL683
	.uaword	.LFE264
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST237:
	.uaword	.LVL671
	.uaword	.LVL673
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST238:
	.uaword	.LVL684
	.uaword	.LVL685
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST239:
	.uaword	.LVL674
	.uaword	.LVL677
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST240:
	.uaword	.LVL674
	.uaword	.LVL677
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST241:
	.uaword	.LVL675
	.uaword	.LVL676
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL676
	.uaword	.LVL677
	.uahalf	0x3
	.byte	0x74
	.sleb128 7
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST242:
	.uaword	.LVL687
	.uaword	.LVL697-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL697-1
	.uaword	.LVL708
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1ca
	.byte	0x9f
	.uaword	.LVL708
	.uaword	.LVL709
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL709
	.uaword	.LVL710
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1ca
	.byte	0x9f
	.uaword	.LVL710
	.uaword	.LVL711
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL711
	.uaword	.LVL714
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1ca
	.byte	0x9f
	.uaword	.LVL714
	.uaword	.LFE265
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST243:
	.uaword	.LVL687
	.uaword	.LVL707
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL708
	.uaword	.LFE265
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	0
	.uaword	0
.LLST244:
	.uaword	.LVL700
	.uaword	.LVL701-1
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST245:
	.uaword	.LVL698
	.uaword	.LVL699-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL699-1
	.uaword	.LVL708
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL709
	.uaword	.LVL710
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL711
	.uaword	.LVL714
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST246:
	.uaword	.LVL693
	.uaword	.LVL694
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL695
	.uaword	.LVL696
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL708
	.uaword	.LVL709
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST247:
	.uaword	.LVL691
	.uaword	.LVL692
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST248:
	.uaword	.LVL688
	.uaword	.LVL691
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xf0036000
	.uaword	.LVL714
	.uaword	.LFE265
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xf0036000
	.uaword	0
	.uaword	0
.LLST249:
	.uaword	.LVL716
	.uaword	.LFE265
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST250:
	.uaword	.LVL689
	.uaword	.LVL690
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL714
	.uaword	.LVL715
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST251:
	.uaword	.LVL693
	.uaword	.LVL710
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL711
	.uaword	.LVL714
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST252:
	.uaword	.LVL693
	.uaword	.LVL694
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST253:
	.uaword	.LVL694
	.uaword	.LVL695
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL708
	.uaword	.LVL709
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST254:
	.uaword	.LVL702
	.uaword	.LVL708
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL709
	.uaword	.LVL710
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL711
	.uaword	.LVL714
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST255:
	.uaword	.LVL706
	.uaword	.LVL708
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST256:
	.uaword	.LVL703
	.uaword	.LVL706
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xf0036000
	.uaword	.LVL711
	.uaword	.LVL714
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xf0036000
	.uaword	0
	.uaword	0
.LLST257:
	.uaword	.LVL713
	.uaword	.LVL714
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST258:
	.uaword	.LVL704
	.uaword	.LVL705
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL711
	.uaword	.LVL712
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST259:
	.uaword	.LVL717
	.uaword	.LVL725-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL725-1
	.uaword	.LVL731
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1ca
	.byte	0x9f
	.uaword	.LVL731
	.uaword	.LVL734
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL734
	.uaword	.LVL744
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1ca
	.byte	0x9f
	.uaword	.LVL744
	.uaword	.LFE266
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST260:
	.uaword	.LVL717
	.uaword	.LVL719
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL719
	.uaword	.LVL720
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL732
	.uaword	.LVL734
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL744
	.uaword	.LFE266
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	0
	.uaword	0
.LLST261:
	.uaword	.LVL726
	.uaword	.LVL727-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL727-1
	.uaword	.LVL731
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL734
	.uaword	.LVL744
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST262:
	.uaword	.LVL721
	.uaword	.LVL722
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL723
	.uaword	.LVL724
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL731
	.uaword	.LVL732
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST263:
	.uaword	.LVL721
	.uaword	.LVL732
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL734
	.uaword	.LVL744
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST264:
	.uaword	.LVL721
	.uaword	.LVL722
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST265:
	.uaword	.LVL722
	.uaword	.LVL723
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL731
	.uaword	.LVL732
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST266:
	.uaword	.LVL729
	.uaword	.LVL730
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL730
	.uaword	.LVL731
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL734
	.uaword	.LVL735
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL735
	.uaword	.LVL736
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL736
	.uaword	.LVL744
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	0
	.uaword	0
.LLST267:
	.uaword	.LVL729
	.uaword	.LVL731
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL734
	.uaword	.LVL744
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	0
	.uaword	0
.LLST268:
	.uaword	.LVL742
	.uaword	.LVL743
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST269:
	.uaword	.LVL736
	.uaword	.LVL744
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST270:
	.uaword	.LVL741
	.uaword	.LVL743
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST271:
	.uaword	.LVL737
	.uaword	.LVL741
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST272:
	.uaword	.LVL737
	.uaword	.LVL741
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xf0036000
	.uaword	0
	.uaword	0
.LLST273:
	.uaword	.LVL740
	.uaword	.LVL741
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST274:
	.uaword	.LVL738
	.uaword	.LVL739
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST275:
	.uaword	.LVL732
	.uaword	.LVL733
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL744
	.uaword	.LFE266
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST276:
	.uaword	.LVL747
	.uaword	.LVL748
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST277:
	.uaword	.LVL745
	.uaword	.LVL746
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST278:
	.uaword	.LVL749
	.uaword	.LVL759-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL759-1
	.uaword	.LVL770
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1ca
	.byte	0x9f
	.uaword	.LVL770
	.uaword	.LVL771
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL771
	.uaword	.LVL772
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1ca
	.byte	0x9f
	.uaword	.LVL772
	.uaword	.LFE267
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST279:
	.uaword	.LVL749
	.uaword	.LVL769
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL770
	.uaword	.LFE267
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	0
	.uaword	0
.LLST280:
	.uaword	.LVL762
	.uaword	.LVL763-1
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST281:
	.uaword	.LVL760
	.uaword	.LVL761-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL761-1
	.uaword	.LVL770
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL771
	.uaword	.LVL772
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST282:
	.uaword	.LVL755
	.uaword	.LVL756
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL757
	.uaword	.LVL758
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL770
	.uaword	.LVL771
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST283:
	.uaword	.LVL753
	.uaword	.LVL754
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST284:
	.uaword	.LVL750
	.uaword	.LVL753
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xf0036000
	.uaword	0
	.uaword	0
.LLST285:
	.uaword	.LVL751
	.uaword	.LVL752
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST286:
	.uaword	.LVL755
	.uaword	.LVL772
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST287:
	.uaword	.LVL755
	.uaword	.LVL756
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST288:
	.uaword	.LVL756
	.uaword	.LVL757
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL770
	.uaword	.LVL771
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST289:
	.uaword	.LVL764
	.uaword	.LVL770
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL771
	.uaword	.LVL772
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST290:
	.uaword	.LVL768
	.uaword	.LVL770
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST291:
	.uaword	.LVL765
	.uaword	.LVL768
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xf0036000
	.uaword	0
	.uaword	0
.LLST292:
	.uaword	.LVL766
	.uaword	.LVL767
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST293:
	.uaword	.LVL773
	.uaword	.LVL781-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL781-1
	.uaword	.LVL785
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1ca
	.byte	0x9f
	.uaword	.LVL785
	.uaword	.LFE268
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST294:
	.uaword	.LVL773
	.uaword	.LVL775
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL775
	.uaword	.LVL776
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL786
	.uaword	.LFE268
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	0
	.uaword	0
.LLST295:
	.uaword	.LVL782
	.uaword	.LVL783-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL783-1
	.uaword	.LVL785
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST296:
	.uaword	.LVL777
	.uaword	.LVL778
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL779
	.uaword	.LVL780
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL785
	.uaword	.LVL786
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST297:
	.uaword	.LVL777
	.uaword	.LVL786
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST298:
	.uaword	.LVL777
	.uaword	.LVL778
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST299:
	.uaword	.LVL778
	.uaword	.LVL779
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL785
	.uaword	.LVL786
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST300:
	.uaword	.LVL786
	.uaword	.LVL791
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL797
	.uaword	.LFE268
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST301:
	.uaword	.LVL787
	.uaword	.LVL791
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xf0036000
	.uaword	.LVL797
	.uaword	.LFE268
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xf0036000
	.uaword	0
	.uaword	0
.LLST302:
	.uaword	.LVL790
	.uaword	.LVL791
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL799
	.uaword	.LFE268
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST303:
	.uaword	.LVL788
	.uaword	.LVL789
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL797
	.uaword	.LVL798
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST304:
	.uaword	.LVL791
	.uaword	.LVL797
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST305:
	.uaword	.LVL792
	.uaword	.LVL797
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST306:
	.uaword	.LVL796
	.uaword	.LVL797
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST307:
	.uaword	.LVL792
	.uaword	.LVL797
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xf0036000
	.uaword	0
	.uaword	0
.LLST308:
	.uaword	.LVL795
	.uaword	.LVL796
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST309:
	.uaword	.LVL793
	.uaword	.LVL794
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST310:
	.uaword	.LVL800
	.uaword	.LVL808-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL808-1
	.uaword	.LVL812
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1ca
	.byte	0x9f
	.uaword	.LVL812
	.uaword	.LFE269
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST311:
	.uaword	.LVL800
	.uaword	.LVL802
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL802
	.uaword	.LVL803
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL813
	.uaword	.LFE269
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	0
	.uaword	0
.LLST312:
	.uaword	.LVL809
	.uaword	.LVL810-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL810-1
	.uaword	.LVL812
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST313:
	.uaword	.LVL804
	.uaword	.LVL805
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL806
	.uaword	.LVL807
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL812
	.uaword	.LVL813
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST314:
	.uaword	.LVL804
	.uaword	.LVL813
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST315:
	.uaword	.LVL804
	.uaword	.LVL805
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST316:
	.uaword	.LVL805
	.uaword	.LVL806
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL812
	.uaword	.LVL813
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST317:
	.uaword	.LVL813
	.uaword	.LVL818
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL824
	.uaword	.LFE269
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST318:
	.uaword	.LVL814
	.uaword	.LVL818
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xf0036000
	.uaword	.LVL824
	.uaword	.LFE269
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xf0036000
	.uaword	0
	.uaword	0
.LLST319:
	.uaword	.LVL817
	.uaword	.LVL818
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL826
	.uaword	.LFE269
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST320:
	.uaword	.LVL815
	.uaword	.LVL816
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL824
	.uaword	.LVL825
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST321:
	.uaword	.LVL818
	.uaword	.LVL824
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST322:
	.uaword	.LVL819
	.uaword	.LVL824
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST323:
	.uaword	.LVL823
	.uaword	.LVL824
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST324:
	.uaword	.LVL819
	.uaword	.LVL824
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xf0036000
	.uaword	0
	.uaword	0
.LLST325:
	.uaword	.LVL822
	.uaword	.LVL823
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST326:
	.uaword	.LVL820
	.uaword	.LVL821
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST327:
	.uaword	.LVL827
	.uaword	.LVL832
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL832
	.uaword	.LVL851
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1ca
	.byte	0x9f
	.uaword	.LVL851
	.uaword	.LFE270
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST328:
	.uaword	.LVL839
	.uaword	.LVL840-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL840-1
	.uaword	.LVL850
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST329:
	.uaword	.LVL841
	.uaword	.LVL842-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL842-1
	.uaword	.LVL850
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST330:
	.uaword	.LVL846
	.uaword	.LVL847-1
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST331:
	.uaword	.LVL833
	.uaword	.LVL834
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL836
	.uaword	.LVL837
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL850
	.uaword	.LVL851
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST332:
	.uaword	.LVL843
	.uaword	.LVL850
	.uahalf	0x3
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST333:
	.uaword	.LVL831
	.uaword	.LVL833
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST334:
	.uaword	.LVL828
	.uaword	.LVL831
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xf0036000
	.uaword	0
	.uaword	0
.LLST335:
	.uaword	.LVL829
	.uaword	.LVL830
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST336:
	.uaword	.LVL833
	.uaword	.LVL851
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST337:
	.uaword	.LVL833
	.uaword	.LVL835
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST338:
	.uaword	.LVL834
	.uaword	.LVL836
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL850
	.uaword	.LVL851
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST339:
	.uaword	.LVL852
	.uaword	.LVL862-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL862-1
	.uaword	.LVL867
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1ca
	.byte	0x9f
	.uaword	.LVL867
	.uaword	.LFE271
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST340:
	.uaword	.LVL865
	.uaword	.LVL866-1
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST341:
	.uaword	.LVL863
	.uaword	.LVL864-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL864-1
	.uaword	.LVL867
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST342:
	.uaword	.LVL858
	.uaword	.LVL859
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL860
	.uaword	.LVL861
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL867
	.uaword	.LVL868
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST343:
	.uaword	.LVL856
	.uaword	.LVL857
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST344:
	.uaword	.LVL853
	.uaword	.LVL856
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xf0036000
	.uaword	0
	.uaword	0
.LLST345:
	.uaword	.LVL854
	.uaword	.LVL855
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST346:
	.uaword	.LVL858
	.uaword	.LVL868
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST347:
	.uaword	.LVL858
	.uaword	.LVL859
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST348:
	.uaword	.LVL859
	.uaword	.LVL860
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL867
	.uaword	.LVL868
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST349:
	.uaword	.LVL869
	.uaword	.LVL879-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL879-1
	.uaword	.LVL890
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1ca
	.byte	0x9f
	.uaword	.LVL890
	.uaword	.LVL891
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL891
	.uaword	.LVL892
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1ca
	.byte	0x9f
	.uaword	.LVL892
	.uaword	.LFE272
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST350:
	.uaword	.LVL869
	.uaword	.LVL889
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL890
	.uaword	.LFE272
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	0
	.uaword	0
.LLST351:
	.uaword	.LVL882
	.uaword	.LVL883-1
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST352:
	.uaword	.LVL880
	.uaword	.LVL881-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL881-1
	.uaword	.LVL890
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL891
	.uaword	.LVL892
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST353:
	.uaword	.LVL875
	.uaword	.LVL876
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL877
	.uaword	.LVL878
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL890
	.uaword	.LVL891
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST354:
	.uaword	.LVL873
	.uaword	.LVL874
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST355:
	.uaword	.LVL870
	.uaword	.LVL873
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xf0036000
	.uaword	0
	.uaword	0
.LLST356:
	.uaword	.LVL871
	.uaword	.LVL872
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST357:
	.uaword	.LVL875
	.uaword	.LVL892
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST358:
	.uaword	.LVL875
	.uaword	.LVL876
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST359:
	.uaword	.LVL876
	.uaword	.LVL877
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL890
	.uaword	.LVL891
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST360:
	.uaword	.LVL884
	.uaword	.LVL890
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL891
	.uaword	.LVL892
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST361:
	.uaword	.LVL888
	.uaword	.LVL890
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST362:
	.uaword	.LVL885
	.uaword	.LVL888
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xf0036000
	.uaword	0
	.uaword	0
.LLST363:
	.uaword	.LVL886
	.uaword	.LVL887
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST364:
	.uaword	.LVL893
	.uaword	.LVL896-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL896-1
	.uaword	.LFE273
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST365:
	.uaword	.LVL897
	.uaword	.LVL899
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL899
	.uaword	.LVL904
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL907
	.uaword	.LVL908
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST366:
	.uaword	.LVL897
	.uaword	.LVL901
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL901
	.uaword	.LVL902
	.uahalf	0x3
	.byte	0x79
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL902
	.uaword	.LFE273
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST367:
	.uaword	.LVL894
	.uaword	.LVL895
	.uahalf	0x6
	.byte	0x84
	.sleb128 20
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x7
	.uaword	.LVL895
	.uaword	.LVL896-1
	.uahalf	0x9
	.byte	0x84
	.sleb128 20
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.byte	0x6c
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL896-1
	.uaword	.LVL898
	.uahalf	0x8
	.byte	0x59
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.byte	0x6c
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL898
	.uaword	.LVL899
	.uahalf	0x5
	.byte	0x59
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x7
	.uaword	0
	.uaword	0
.LLST368:
	.uaword	.LVL903
	.uaword	.LVL904
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL907
	.uaword	.LVL908
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST369:
	.uaword	.LVL906
	.uaword	.LVL907
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST370:
	.uaword	.LVL909
	.uaword	.LVL911
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST371:
	.uaword	.LVL911
	.uaword	.LVL913
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL914
	.uaword	.LVL921
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL921
	.uaword	.LVL923
	.uahalf	0x3
	.byte	0x70
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL924
	.uaword	.LFE274
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST372:
	.uaword	.LVL911
	.uaword	.LVL912
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST373:
	.uaword	.LVL916
	.uaword	.LVL919
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL919
	.uaword	.LVL923
	.uahalf	0x2
	.byte	0x8f
	.sleb128 4
	.uaword	.LVL924
	.uaword	.LFE274
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST374:
	.uaword	.LVL920
	.uaword	.LVL922
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST375:
	.uaword	.LVL920
	.uaword	.LVL923
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST376:
	.uaword	.LVL916
	.uaword	.LVL923
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL924
	.uaword	.LFE274
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST377:
	.uaword	.LVL917
	.uaword	.LVL918
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST378:
	.uaword	.LVL925
	.uaword	.LVL926
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST379:
	.uaword	.LVL928
	.uaword	.LVL929-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL929-1
	.uaword	.LFE275
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST380:
	.uaword	.LVL928
	.uaword	.LVL929-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL929-1
	.uaword	.LVL932
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL932
	.uaword	.LVL934
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL934
	.uaword	.LVL937
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL937
	.uaword	.LFE275
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST381:
	.uaword	.LVL928
	.uaword	.LVL929-1
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL929-1
	.uaword	.LFE275
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST382:
	.uaword	.LVL930
	.uaword	.LVL931-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL931-1
	.uaword	.LFE275
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST383:
	.uaword	.LVL938
	.uaword	.LVL939-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL939-1
	.uaword	.LFE276
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST384:
	.uaword	.LVL938
	.uaword	.LVL939-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL939-1
	.uaword	.LVL943
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL943
	.uaword	.LFE276
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST385:
	.uaword	.LVL938
	.uaword	.LVL939-1
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL939-1
	.uaword	.LFE276
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST386:
	.uaword	.LVL940
	.uaword	.LVL941-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL941-1
	.uaword	.LFE276
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x154
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB237
	.uaword	.LFE237-.LFB237
	.uaword	.LFB238
	.uaword	.LFE238-.LFB238
	.uaword	.LFB239
	.uaword	.LFE239-.LFB239
	.uaword	.LFB240
	.uaword	.LFE240-.LFB240
	.uaword	.LFB241
	.uaword	.LFE241-.LFB241
	.uaword	.LFB242
	.uaword	.LFE242-.LFB242
	.uaword	.LFB243
	.uaword	.LFE243-.LFB243
	.uaword	.LFB244
	.uaword	.LFE244-.LFB244
	.uaword	.LFB245
	.uaword	.LFE245-.LFB245
	.uaword	.LFB246
	.uaword	.LFE246-.LFB246
	.uaword	.LFB247
	.uaword	.LFE247-.LFB247
	.uaword	.LFB248
	.uaword	.LFE248-.LFB248
	.uaword	.LFB249
	.uaword	.LFE249-.LFB249
	.uaword	.LFB250
	.uaword	.LFE250-.LFB250
	.uaword	.LFB251
	.uaword	.LFE251-.LFB251
	.uaword	.LFB252
	.uaword	.LFE252-.LFB252
	.uaword	.LFB253
	.uaword	.LFE253-.LFB253
	.uaword	.LFB255
	.uaword	.LFE255-.LFB255
	.uaword	.LFB256
	.uaword	.LFE256-.LFB256
	.uaword	.LFB254
	.uaword	.LFE254-.LFB254
	.uaword	.LFB257
	.uaword	.LFE257-.LFB257
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
	.uaword	.LFB268
	.uaword	.LFE268-.LFB268
	.uaword	.LFB269
	.uaword	.LFE269-.LFB269
	.uaword	.LFB270
	.uaword	.LFE270-.LFB270
	.uaword	.LFB271
	.uaword	.LFE271-.LFB271
	.uaword	.LFB272
	.uaword	.LFE272-.LFB272
	.uaword	.LFB273
	.uaword	.LFE273-.LFB273
	.uaword	.LFB274
	.uaword	.LFE274-.LFB274
	.uaword	.LFB275
	.uaword	.LFE275-.LFB275
	.uaword	.LFB276
	.uaword	.LFE276-.LFB276
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB172
	.uaword	.LBE172
	.uaword	.LBB175
	.uaword	.LBE175
	.uaword	0
	.uaword	0
	.uaword	.LBB176
	.uaword	.LBE176
	.uaword	.LBB199
	.uaword	.LBE199
	.uaword	0
	.uaword	0
	.uaword	.LBB178
	.uaword	.LBE178
	.uaword	.LBB184
	.uaword	.LBE184
	.uaword	0
	.uaword	0
	.uaword	.LBB181
	.uaword	.LBE181
	.uaword	.LBB185
	.uaword	.LBE185
	.uaword	0
	.uaword	0
	.uaword	.LBB187
	.uaword	.LBE187
	.uaword	.LBB197
	.uaword	.LBE197
	.uaword	0
	.uaword	0
	.uaword	.LBB188
	.uaword	.LBE188
	.uaword	.LBB196
	.uaword	.LBE196
	.uaword	0
	.uaword	0
	.uaword	.LBB208
	.uaword	.LBE208
	.uaword	.LBB221
	.uaword	.LBE221
	.uaword	0
	.uaword	0
	.uaword	.LBB212
	.uaword	.LBE212
	.uaword	.LBB218
	.uaword	.LBE218
	.uaword	.LBB219
	.uaword	.LBE219
	.uaword	0
	.uaword	0
	.uaword	.LBB228
	.uaword	.LBE228
	.uaword	.LBB235
	.uaword	.LBE235
	.uaword	0
	.uaword	0
	.uaword	.LBB244
	.uaword	.LBE244
	.uaword	.LBB256
	.uaword	.LBE256
	.uaword	.LBB257
	.uaword	.LBE257
	.uaword	0
	.uaword	0
	.uaword	.LBB246
	.uaword	.LBE246
	.uaword	.LBB253
	.uaword	.LBE253
	.uaword	0
	.uaword	0
	.uaword	.LBB266
	.uaword	.LBE266
	.uaword	.LBB277
	.uaword	.LBE277
	.uaword	0
	.uaword	0
	.uaword	.LBB268
	.uaword	.LBE268
	.uaword	.LBB275
	.uaword	.LBE275
	.uaword	0
	.uaword	0
	.uaword	.LBB286
	.uaword	.LBE286
	.uaword	.LBB297
	.uaword	.LBE297
	.uaword	0
	.uaword	0
	.uaword	.LBB288
	.uaword	.LBE288
	.uaword	.LBB295
	.uaword	.LBE295
	.uaword	0
	.uaword	0
	.uaword	.LBB310
	.uaword	.LBE310
	.uaword	.LBB323
	.uaword	.LBE323
	.uaword	0
	.uaword	0
	.uaword	.LBB314
	.uaword	.LBE314
	.uaword	.LBB320
	.uaword	.LBE320
	.uaword	.LBB321
	.uaword	.LBE321
	.uaword	0
	.uaword	0
	.uaword	.LBB332
	.uaword	.LBE332
	.uaword	.LBB348
	.uaword	.LBE348
	.uaword	.LBB349
	.uaword	.LBE349
	.uaword	.LBB350
	.uaword	.LBE350
	.uaword	.LBB351
	.uaword	.LBE351
	.uaword	0
	.uaword	0
	.uaword	.LBB334
	.uaword	.LBE334
	.uaword	.LBB342
	.uaword	.LBE342
	.uaword	.LBB343
	.uaword	.LBE343
	.uaword	0
	.uaword	0
	.uaword	.LBB366
	.uaword	.LBE366
	.uaword	.LBB387
	.uaword	.LBE387
	.uaword	0
	.uaword	0
	.uaword	.LBB368
	.uaword	.LBE368
	.uaword	.LBB373
	.uaword	.LBE373
	.uaword	0
	.uaword	0
	.uaword	.LBB379
	.uaword	.LBE379
	.uaword	.LBB385
	.uaword	.LBE385
	.uaword	.LBB386
	.uaword	.LBE386
	.uaword	0
	.uaword	0
	.uaword	.LBB414
	.uaword	.LBE414
	.uaword	.LBB435
	.uaword	.LBE435
	.uaword	0
	.uaword	0
	.uaword	.LBB416
	.uaword	.LBE416
	.uaword	.LBB421
	.uaword	.LBE421
	.uaword	0
	.uaword	0
	.uaword	.LBB427
	.uaword	.LBE427
	.uaword	.LBB433
	.uaword	.LBE433
	.uaword	.LBB434
	.uaword	.LBE434
	.uaword	0
	.uaword	0
	.uaword	.LBB450
	.uaword	.LBE450
	.uaword	.LBB469
	.uaword	.LBE469
	.uaword	0
	.uaword	0
	.uaword	.LBB461
	.uaword	.LBE461
	.uaword	.LBB467
	.uaword	.LBE467
	.uaword	.LBB468
	.uaword	.LBE468
	.uaword	0
	.uaword	0
	.uaword	.LBB476
	.uaword	.LBE476
	.uaword	.LBB483
	.uaword	.LBE483
	.uaword	0
	.uaword	0
	.uaword	.LBB490
	.uaword	.LBE490
	.uaword	.LBB497
	.uaword	.LBE497
	.uaword	0
	.uaword	0
	.uaword	.LBB502
	.uaword	.LBE502
	.uaword	.LBB512
	.uaword	.LBE512
	.uaword	.LBB513
	.uaword	.LBE513
	.uaword	.LBB514
	.uaword	.LBE514
	.uaword	.LBB515
	.uaword	.LBE515
	.uaword	0
	.uaword	0
	.uaword	.LBB504
	.uaword	.LBE504
	.uaword	.LBB507
	.uaword	.LBE507
	.uaword	0
	.uaword	0
	.uaword	.LBB564
	.uaword	.LBE564
	.uaword	.LBB688
	.uaword	.LBE688
	.uaword	0
	.uaword	0
	.uaword	.LBB566
	.uaword	.LBE566
	.uaword	.LBB572
	.uaword	.LBE572
	.uaword	0
	.uaword	0
	.uaword	.LBB569
	.uaword	.LBE569
	.uaword	.LBB573
	.uaword	.LBE573
	.uaword	0
	.uaword	0
	.uaword	.LBB574
	.uaword	.LBE574
	.uaword	.LBB575
	.uaword	.LBE575
	.uaword	0
	.uaword	0
	.uaword	.LBB576
	.uaword	.LBE576
	.uaword	.LBB578
	.uaword	.LBE578
	.uaword	.LBB580
	.uaword	.LBE580
	.uaword	.LBB581
	.uaword	.LBE581
	.uaword	0
	.uaword	0
	.uaword	.LBB577
	.uaword	.LBE577
	.uaword	.LBB579
	.uaword	.LBE579
	.uaword	.LBB582
	.uaword	.LBE582
	.uaword	.LBB583
	.uaword	.LBE583
	.uaword	0
	.uaword	0
	.uaword	.LBB584
	.uaword	.LBE584
	.uaword	.LBB585
	.uaword	.LBE585
	.uaword	.LBB586
	.uaword	.LBE586
	.uaword	0
	.uaword	0
	.uaword	.LBB592
	.uaword	.LBE592
	.uaword	.LBB686
	.uaword	.LBE686
	.uaword	.LBB687
	.uaword	.LBE687
	.uaword	0
	.uaword	0
	.uaword	.LBB594
	.uaword	.LBE594
	.uaword	.LBB646
	.uaword	.LBE646
	.uaword	.LBB650
	.uaword	.LBE650
	.uaword	.LBB654
	.uaword	.LBE654
	.uaword	.LBB655
	.uaword	.LBE655
	.uaword	.LBB656
	.uaword	.LBE656
	.uaword	.LBB657
	.uaword	.LBE657
	.uaword	0
	.uaword	0
	.uaword	.LBB596
	.uaword	.LBE596
	.uaword	.LBB630
	.uaword	.LBE630
	.uaword	.LBB631
	.uaword	.LBE631
	.uaword	.LBB632
	.uaword	.LBE632
	.uaword	.LBB633
	.uaword	.LBE633
	.uaword	.LBB634
	.uaword	.LBE634
	.uaword	.LBB635
	.uaword	.LBE635
	.uaword	0
	.uaword	0
	.uaword	.LBB598
	.uaword	.LBE598
	.uaword	.LBB618
	.uaword	.LBE618
	.uaword	.LBB619
	.uaword	.LBE619
	.uaword	.LBB620
	.uaword	.LBE620
	.uaword	.LBB621
	.uaword	.LBE621
	.uaword	.LBB622
	.uaword	.LBE622
	.uaword	.LBB623
	.uaword	.LBE623
	.uaword	0
	.uaword	0
	.uaword	.LBB600
	.uaword	.LBE600
	.uaword	.LBB610
	.uaword	.LBE610
	.uaword	.LBB611
	.uaword	.LBE611
	.uaword	0
	.uaword	0
	.uaword	.LBB602
	.uaword	.LBE602
	.uaword	.LBB606
	.uaword	.LBE606
	.uaword	.LBB607
	.uaword	.LBE607
	.uaword	0
	.uaword	0
	.uaword	.LBB642
	.uaword	.LBE642
	.uaword	.LBB645
	.uaword	.LBE645
	.uaword	0
	.uaword	0
	.uaword	.LBB647
	.uaword	.LBE647
	.uaword	.LBB651
	.uaword	.LBE651
	.uaword	0
	.uaword	0
	.uaword	.LBB660
	.uaword	.LBE660
	.uaword	.LBB689
	.uaword	.LBE689
	.uaword	0
	.uaword	0
	.uaword	.LBB662
	.uaword	.LBE662
	.uaword	.LBB669
	.uaword	.LBE669
	.uaword	0
	.uaword	0
	.uaword	.LBB665
	.uaword	.LBE665
	.uaword	.LBB670
	.uaword	.LBE670
	.uaword	.LBB672
	.uaword	.LBE672
	.uaword	0
	.uaword	0
	.uaword	.LBB671
	.uaword	.LBE671
	.uaword	.LBB673
	.uaword	.LBE673
	.uaword	0
	.uaword	0
	.uaword	.LBB674
	.uaword	.LBE674
	.uaword	.LBB684
	.uaword	.LBE684
	.uaword	0
	.uaword	0
	.uaword	.LBB675
	.uaword	.LBE675
	.uaword	.LBB683
	.uaword	.LBE683
	.uaword	0
	.uaword	0
	.uaword	.LBB706
	.uaword	.LBE706
	.uaword	.LBB717
	.uaword	.LBE717
	.uaword	.LBB738
	.uaword	.LBE738
	.uaword	.LBB740
	.uaword	.LBE740
	.uaword	0
	.uaword	0
	.uaword	.LBB708
	.uaword	.LBE708
	.uaword	.LBB713
	.uaword	.LBE713
	.uaword	0
	.uaword	0
	.uaword	.LBB720
	.uaword	.LBE720
	.uaword	.LBB737
	.uaword	.LBE737
	.uaword	.LBB739
	.uaword	.LBE739
	.uaword	.LBB741
	.uaword	.LBE741
	.uaword	0
	.uaword	0
	.uaword	.LBB722
	.uaword	.LBE722
	.uaword	.LBB732
	.uaword	.LBE732
	.uaword	.LBB733
	.uaword	.LBE733
	.uaword	0
	.uaword	0
	.uaword	.LBB724
	.uaword	.LBE724
	.uaword	.LBB729
	.uaword	.LBE729
	.uaword	0
	.uaword	0
	.uaword	.LBB754
	.uaword	.LBE754
	.uaword	.LBB767
	.uaword	.LBE767
	.uaword	0
	.uaword	0
	.uaword	.LBB758
	.uaword	.LBE758
	.uaword	.LBB764
	.uaword	.LBE764
	.uaword	.LBB765
	.uaword	.LBE765
	.uaword	0
	.uaword	0
	.uaword	.LBB784
	.uaword	.LBE784
	.uaword	.LBB806
	.uaword	.LBE806
	.uaword	0
	.uaword	0
	.uaword	.LBB793
	.uaword	.LBE793
	.uaword	.LBB805
	.uaword	.LBE805
	.uaword	.LBB807
	.uaword	.LBE807
	.uaword	0
	.uaword	0
	.uaword	.LBB795
	.uaword	.LBE795
	.uaword	.LBB802
	.uaword	.LBE802
	.uaword	0
	.uaword	0
	.uaword	.LBB816
	.uaword	.LBE816
	.uaword	.LBB831
	.uaword	.LBE831
	.uaword	.LBB832
	.uaword	.LBE832
	.uaword	.LBB833
	.uaword	.LBE833
	.uaword	0
	.uaword	0
	.uaword	.LBB818
	.uaword	.LBE818
	.uaword	.LBB826
	.uaword	.LBE826
	.uaword	.LBB827
	.uaword	.LBE827
	.uaword	0
	.uaword	0
	.uaword	.LBB837
	.uaword	.LBE837
	.uaword	.LBB840
	.uaword	.LBE840
	.uaword	0
	.uaword	0
	.uaword	.LBB845
	.uaword	.LBE845
	.uaword	.LBB848
	.uaword	.LBE848
	.uaword	0
	.uaword	0
	.uaword	.LBB866
	.uaword	.LBE866
	.uaword	.LBB887
	.uaword	.LBE887
	.uaword	0
	.uaword	0
	.uaword	.LBB875
	.uaword	.LBE875
	.uaword	.LBB886
	.uaword	.LBE886
	.uaword	0
	.uaword	0
	.uaword	.LBB877
	.uaword	.LBE877
	.uaword	.LBB884
	.uaword	.LBE884
	.uaword	0
	.uaword	0
	.uaword	.LBB905
	.uaword	.LBE905
	.uaword	.LBB929
	.uaword	.LBE929
	.uaword	0
	.uaword	0
	.uaword	.LBB907
	.uaword	.LBE907
	.uaword	.LBB914
	.uaword	.LBE914
	.uaword	0
	.uaword	0
	.uaword	.LBB916
	.uaword	.LBE916
	.uaword	.LBB930
	.uaword	.LBE930
	.uaword	0
	.uaword	0
	.uaword	.LBB917
	.uaword	.LBE917
	.uaword	.LBB928
	.uaword	.LBE928
	.uaword	0
	.uaword	0
	.uaword	.LBB924
	.uaword	.LBE924
	.uaword	.LBB927
	.uaword	.LBE927
	.uaword	0
	.uaword	0
	.uaword	.LBB947
	.uaword	.LBE947
	.uaword	.LBB976
	.uaword	.LBE976
	.uaword	.LBB978
	.uaword	.LBE978
	.uaword	0
	.uaword	0
	.uaword	.LBB949
	.uaword	.LBE949
	.uaword	.LBB954
	.uaword	.LBE954
	.uaword	0
	.uaword	0
	.uaword	.LBB959
	.uaword	.LBE959
	.uaword	.LBB975
	.uaword	.LBE975
	.uaword	.LBB977
	.uaword	.LBE977
	.uaword	0
	.uaword	0
	.uaword	.LBB961
	.uaword	.LBE961
	.uaword	.LBB971
	.uaword	.LBE971
	.uaword	.LBB972
	.uaword	.LBE972
	.uaword	0
	.uaword	0
	.uaword	.LBB963
	.uaword	.LBE963
	.uaword	.LBB968
	.uaword	.LBE968
	.uaword	0
	.uaword	0
	.uaword	.LBB1003
	.uaword	.LBE1003
	.uaword	.LBB1036
	.uaword	.LBE1036
	.uaword	.LBB1037
	.uaword	.LBE1037
	.uaword	0
	.uaword	0
	.uaword	.LBB1007
	.uaword	.LBE1007
	.uaword	.LBB1020
	.uaword	.LBE1020
	.uaword	0
	.uaword	0
	.uaword	.LBB1011
	.uaword	.LBE1011
	.uaword	.LBB1017
	.uaword	.LBE1017
	.uaword	.LBB1018
	.uaword	.LBE1018
	.uaword	0
	.uaword	0
	.uaword	.LBB1023
	.uaword	.LBE1023
	.uaword	.LBB1038
	.uaword	.LBE1038
	.uaword	0
	.uaword	0
	.uaword	.LBB1027
	.uaword	.LBE1027
	.uaword	.LBB1033
	.uaword	.LBE1033
	.uaword	.LBB1034
	.uaword	.LBE1034
	.uaword	0
	.uaword	0
	.uaword	.LBB1055
	.uaword	.LBE1055
	.uaword	.LBB1076
	.uaword	.LBE1076
	.uaword	0
	.uaword	0
	.uaword	.LBB1064
	.uaword	.LBE1064
	.uaword	.LBB1075
	.uaword	.LBE1075
	.uaword	0
	.uaword	0
	.uaword	.LBB1066
	.uaword	.LBE1066
	.uaword	.LBB1073
	.uaword	.LBE1073
	.uaword	0
	.uaword	0
	.uaword	.LBB1095
	.uaword	.LBE1095
	.uaword	.LBB1116
	.uaword	.LBE1116
	.uaword	0
	.uaword	0
	.uaword	.LBB1097
	.uaword	.LBE1097
	.uaword	.LBB1102
	.uaword	.LBE1102
	.uaword	0
	.uaword	0
	.uaword	.LBB1108
	.uaword	.LBE1108
	.uaword	.LBB1114
	.uaword	.LBE1114
	.uaword	.LBB1115
	.uaword	.LBE1115
	.uaword	0
	.uaword	0
	.uaword	.LBB1135
	.uaword	.LBE1135
	.uaword	.LBB1156
	.uaword	.LBE1156
	.uaword	0
	.uaword	0
	.uaword	.LBB1137
	.uaword	.LBE1137
	.uaword	.LBB1142
	.uaword	.LBE1142
	.uaword	0
	.uaword	0
	.uaword	.LBB1148
	.uaword	.LBE1148
	.uaword	.LBB1154
	.uaword	.LBE1154
	.uaword	.LBB1155
	.uaword	.LBE1155
	.uaword	0
	.uaword	0
	.uaword	.LBB1165
	.uaword	.LBE1165
	.uaword	.LBB1174
	.uaword	.LBE1174
	.uaword	0
	.uaword	0
	.uaword	.LBB1183
	.uaword	.LBE1183
	.uaword	.LBB1192
	.uaword	.LBE1192
	.uaword	0
	.uaword	0
	.uaword	.LBB1209
	.uaword	.LBE1209
	.uaword	.LBB1230
	.uaword	.LBE1230
	.uaword	0
	.uaword	0
	.uaword	.LBB1218
	.uaword	.LBE1218
	.uaword	.LBB1229
	.uaword	.LBE1229
	.uaword	0
	.uaword	0
	.uaword	.LBB1220
	.uaword	.LBE1220
	.uaword	.LBB1227
	.uaword	.LBE1227
	.uaword	0
	.uaword	0
	.uaword	.LBB1231
	.uaword	.LBE1231
	.uaword	.LBB1235
	.uaword	.LBE1235
	.uaword	0
	.uaword	0
	.uaword	.LBB1256
	.uaword	.LBE1256
	.uaword	.LBB1260
	.uaword	.LBE1260
	.uaword	.LBB1261
	.uaword	.LBE1261
	.uaword	0
	.uaword	0
	.uaword	.LBB1262
	.uaword	.LBE1262
	.uaword	.LBB1308
	.uaword	.LBE1308
	.uaword	.LBB1312
	.uaword	.LBE1312
	.uaword	.LBB1313
	.uaword	.LBE1313
	.uaword	.LBB1314
	.uaword	.LBE1314
	.uaword	.LBB1315
	.uaword	.LBE1315
	.uaword	0
	.uaword	0
	.uaword	.LBB1264
	.uaword	.LBE1264
	.uaword	.LBB1295
	.uaword	.LBE1295
	.uaword	.LBB1296
	.uaword	.LBE1296
	.uaword	.LBB1297
	.uaword	.LBE1297
	.uaword	.LBB1298
	.uaword	.LBE1298
	.uaword	.LBB1299
	.uaword	.LBE1299
	.uaword	0
	.uaword	0
	.uaword	.LBB1266
	.uaword	.LBE1266
	.uaword	.LBB1285
	.uaword	.LBE1285
	.uaword	.LBB1286
	.uaword	.LBE1286
	.uaword	.LBB1287
	.uaword	.LBE1287
	.uaword	.LBB1288
	.uaword	.LBE1288
	.uaword	.LBB1289
	.uaword	.LBE1289
	.uaword	0
	.uaword	0
	.uaword	.LBB1268
	.uaword	.LBE1268
	.uaword	.LBB1278
	.uaword	.LBE1278
	.uaword	.LBB1279
	.uaword	.LBE1279
	.uaword	0
	.uaword	0
	.uaword	.LBB1270
	.uaword	.LBE1270
	.uaword	.LBB1274
	.uaword	.LBE1274
	.uaword	.LBB1275
	.uaword	.LBE1275
	.uaword	0
	.uaword	0
	.uaword	.LBB1305
	.uaword	.LBE1305
	.uaword	.LBB1309
	.uaword	.LBE1309
	.uaword	0
	.uaword	0
	.uaword	.LFB237
	.uaword	.LFE237
	.uaword	.LFB238
	.uaword	.LFE238
	.uaword	.LFB239
	.uaword	.LFE239
	.uaword	.LFB240
	.uaword	.LFE240
	.uaword	.LFB241
	.uaword	.LFE241
	.uaword	.LFB242
	.uaword	.LFE242
	.uaword	.LFB243
	.uaword	.LFE243
	.uaword	.LFB244
	.uaword	.LFE244
	.uaword	.LFB245
	.uaword	.LFE245
	.uaword	.LFB246
	.uaword	.LFE246
	.uaword	.LFB247
	.uaword	.LFE247
	.uaword	.LFB248
	.uaword	.LFE248
	.uaword	.LFB249
	.uaword	.LFE249
	.uaword	.LFB250
	.uaword	.LFE250
	.uaword	.LFB251
	.uaword	.LFE251
	.uaword	.LFB252
	.uaword	.LFE252
	.uaword	.LFB253
	.uaword	.LFE253
	.uaword	.LFB255
	.uaword	.LFE255
	.uaword	.LFB256
	.uaword	.LFE256
	.uaword	.LFB254
	.uaword	.LFE254
	.uaword	.LFB257
	.uaword	.LFE257
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
	.uaword	.LFB268
	.uaword	.LFE268
	.uaword	.LFB269
	.uaword	.LFE269
	.uaword	.LFB270
	.uaword	.LFE270
	.uaword	.LFB271
	.uaword	.LFE271
	.uaword	.LFB272
	.uaword	.LFE272
	.uaword	.LFB273
	.uaword	.LFE273
	.uaword	.LFB274
	.uaword	.LFE274
	.uaword	.LFB275
	.uaword	.LFE275
	.uaword	.LFB276
	.uaword	.LFE276
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF48:
	.string	"mcanFreq"
.LASF37:
	.string	"waitTime"
.LASF49:
	.string	"scu_ccucon0"
.LASF42:
	.string	"password"
.LASF56:
	.string	"frequency"
.LASF43:
	.string	"freq"
.LASF38:
	.string	"ccucon0"
.LASF41:
	.string	"ccucon5"
.LASF50:
	.string	"pllThrottleConfig"
.LASF25:
	.string	"reserved_10"
.LASF31:
	.string	"reserved_11"
.LASF6:
	.string	"reserved_12"
.LASF13:
	.string	"reserved_13"
.LASF9:
	.string	"reserved_14"
.LASF5:
	.string	"reserved_15"
.LASF26:
	.string	"reserved_16"
.LASF20:
	.string	"reserved_17"
.LASF21:
	.string	"reserved_18"
.LASF28:
	.string	"reserved_19"
.LASF53:
	.string	"oscFreq"
.LASF39:
	.string	"ccucon1"
.LASF40:
	.string	"ccucon2"
.LASF47:
	.string	"initError"
.LASF27:
	.string	"reserved_20"
.LASF29:
	.string	"reserved_21"
.LASF7:
	.string	"reserved_22"
.LASF18:
	.string	"reserved_23"
.LASF10:
	.string	"reserved_24"
.LASF11:
	.string	"reserved_26"
.LASF12:
	.string	"reserved_27"
.LASF22:
	.string	"reserved_28"
.LASF14:
	.string	"reserved_29"
.LASF54:
	.string	"source"
.LASF34:
	.string	"pDivider"
.LASF55:
	.string	"sourceFrequency"
.LASF59:
	.string	"inputFreq"
.LASF32:
	.string	"REQSLP"
.LASF51:
	.string	"pllStepsCount"
.LASF0:
	.string	"reserved_0"
.LASF16:
	.string	"reserved_1"
.LASF24:
	.string	"reserved_2"
.LASF30:
	.string	"reserved_3"
.LASF1:
	.string	"reserved_4"
.LASF2:
	.string	"reserved_5"
.LASF3:
	.string	"reserved_6"
.LASF17:
	.string	"reserved_7"
.LASF4:
	.string	"reserved_8"
.LASF23:
	.string	"reserved_9"
.LASF44:
	.string	"clockDistributionConfig"
.LASF8:
	.string	"reserved_30"
.LASF19:
	.string	"reserved_31"
.LASF35:
	.string	"nDivider"
.LASF45:
	.string	"endinitSfty_pw"
.LASF36:
	.string	"k2Divider"
.LASF33:
	.string	"PMST"
.LASF57:
	.string	"mscSource"
.LASF52:
	.string	"asclindiv"
.LASF15:
	.string	"ENDINIT"
.LASF58:
	.string	"l_SEndInitPW"
.LASF46:
	.string	"timeoutCycleCount"
	.extern	IfxScuWdt_setCpuEndinit,STT_FUNC,0
	.extern	IfxScuWdt_clearCpuEndinit,STT_FUNC,0
	.extern	IfxScuWdt_getCpuWatchdogPassword,STT_FUNC,0
	.extern	IfxScuWdt_setSafetyEndinit,STT_FUNC,0
	.extern	IfxScuWdt_clearSafetyEndinit,STT_FUNC,0
	.extern	IfxScuWdt_getSafetyWatchdogPassword,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
