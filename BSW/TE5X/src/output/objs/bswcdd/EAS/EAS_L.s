	.file	"EAS_L.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	EAS_vidEncrypt
	.type	EAS_vidEncrypt, @function
EAS_vidEncrypt:
.LFB2:
	.file 1 "bswcdd\\EAS\\EAS_L.c"
	.loc 1 480 0
.LVL0:
	.loc 1 480 0
	mov.d	%d4, %a4
.LVL1:
.LBB28:
.LBB29:
	.loc 1 437 0
	ld.w	%d3, [%a5]0
.LVL2:
	ld.w	%d2, [%a5] 4
.LVL3:
	.loc 1 439 0
	jz	%d4, .L2
	movh	%d5, 25033
	addi	%d5, %d5, -31161
	mul	%d4, %d5
	movh	%d5, 60339
	addi	%d5, %d5, 17271
	addi	%d4, %d4, 31161
	addih	%d4, %d4, 40503
	mul	%d5, %d4
	mov	%d15, 0
	mov.a	%a15, %d5
.LVL4:
.L3:
	.loc 1 441 0
	and	%d4, %d15, 3
	addsc.a	%a2, %a6, %d4, 2
	sh	%d5, %d2, -5
	ld.w	%d4, [%a2]0
	add	%d6, %d15, %d4
	sh	%d4, %d2, 4
	xor	%d4, %d5
	add	%d4, %d2
	xor	%d4, %d6
	add	%d3, %d4
.LVL5:
	.loc 1 443 0
	sh	%d5, %d3, -5
	.loc 1 442 0
	addi	%d15, %d15, 31161
.LVL6:
	.loc 1 443 0
	sh	%d4, %d3, 4
	.loc 1 442 0
	addih	%d15, %d15, 40503
.LVL7:
	.loc 1 443 0
	xor	%d4, %d5
	add	%d5, %d4, %d3
	extr.u	%d4, %d15, 11, 2
	addsc.a	%a2, %a6, %d4, 2
	ld.w	%d4, [%a2]0
	add	%d6, %d15, %d4
	xor	%d4, %d5, %d6
	add	%d2, %d4
.LVL8:
	loop	%a15, .L3
.LVL9:
.L2:
	.loc 1 446 0
	st.w	[%a5]0, %d3
	.loc 1 447 0
	st.w	[%a5] 4, %d2
	ret
.LBE29:
.LBE28:
.LFE2:
	.size	EAS_vidEncrypt, .-EAS_vidEncrypt
	.align 1
	.global	EAS_vidDecrypt
	.type	EAS_vidDecrypt, @function
EAS_vidDecrypt:
.LFB3:
	.loc 1 485 0
.LVL10:
	.loc 1 485 0
	mov.d	%d4, %a4
.LVL11:
.LBB32:
.LBB33:
	.loc 1 466 0
	movh	%d15, 40503
	addi	%d15, %d15, 31161
	ld.w	%d3, [%a5]0
.LVL12:
	ld.w	%d2, [%a5] 4
.LVL13:
	mul	%d15, %d4
.LVL14:
	.loc 1 468 0
	jz	%d4, .L10
	movh	%d5, 25033
	addi	%d5, %d5, -31161
	madd	%d4, %d15, %d4, %d5
	movh	%d5, 60339
	addi	%d5, %d5, 17271
	sub	%d4, %d15
	addi	%d4, %d4, 31161
	addih	%d4, %d4, 40503
	mul	%d5, %d4
	mov.a	%a15, %d5
.LVL15:
.L11:
	.loc 1 470 0
	extr.u	%d4, %d15, 11, 2
	sh	%d6, %d3, -5
	addsc.a	%a2, %a6, %d4, 2
	sh	%d5, %d3, 4
	ld.w	%d4, [%a2]0
	xor	%d5, %d6
	add	%d5, %d3
	add	%d7, %d15, %d4
	xor	%d4, %d7, %d5
	sub	%d2, %d4
.LVL16:
	.loc 1 471 0
	addi	%d15, %d15, -31161
.LVL17:
	addih	%d15, %d15, 25033
.LVL18:
	.loc 1 472 0
	sh	%d5, %d2, -5
	sh	%d4, %d2, 4
	xor	%d4, %d5
	and	%d5, %d15, 3
	addsc.a	%a2, %a6, %d5, 2
	add	%d4, %d2
	ld.w	%d6, [%a2]0
	add	%d6, %d15
	xor	%d4, %d6
	sub	%d3, %d4
.LVL19:
	loop	%a15, .L11
.L10:
	.loc 1 475 0
	st.w	[%a5]0, %d3
	.loc 1 476 0
	st.w	[%a5] 4, %d2
	ret
.LBE33:
.LBE32:
.LFE3:
	.size	EAS_vidDecrypt, .-EAS_vidDecrypt
	.align 1
	.global	EAS_vidArrayToLong
	.type	EAS_vidArrayToLong, @function
EAS_vidArrayToLong:
.LFB4:
	.loc 1 503 0
.LVL20:
	.loc 1 510 0
	ld.bu	%d2, [%a4] 3
	mov	%d15, 0
.LVL21:
	insert	%d15, %d15, %d2, 0, 8
.LVL22:
	ld.bu	%d2, [%a4] 2
	insert	%d15, %d15, %d2, 8, 8
.LVL23:
	ld.bu	%d2, [%a4] 1
	insert	%d15, %d15, %d2, 16, 8
.LVL24:
	ld.bu	%d2, [%a4]0
	insert	%d15, %d15, %d2, 24, 8
.LVL25:
	.loc 1 515 0
	st.w	[%a5]0, %d15
	ret
.LFE4:
	.size	EAS_vidArrayToLong, .-EAS_vidArrayToLong
	.align 1
	.global	EAS_vidLongToArray
	.type	EAS_vidLongToArray, @function
EAS_vidLongToArray:
.LFB5:
	.loc 1 519 0
.LVL26:
	.loc 1 528 0
	extr.u	%d15, %d4, 24, 8
	st.b	[%a4] 3, %d4
	st.b	[%a4]0, %d15
.LVL27:
	extr.u	%d15, %d4, 16, 8
	st.b	[%a4] 1, %d15
.LVL28:
	extr.u	%d15, %d4, 8, 8
	st.b	[%a4] 2, %d15
.LVL29:
	ret
.LFE5:
	.size	EAS_vidLongToArray, .-EAS_vidLongToArray
	.align 1
	.global	EAS_vidAES128KeySetupEnc
	.type	EAS_vidAES128KeySetupEnc, @function
EAS_vidAES128KeySetupEnc:
.LFB6:
	.loc 1 550 0
.LVL30:
.LBB34:
.LBB35:
	.loc 1 510 0
	ld.bu	%d15, [%a5] 3
	mov	%d2, 0
.LVL31:
	insert	%d2, %d2, %d15, 0, 8
.LVL32:
	ld.bu	%d15, [%a5] 2
.LBE35:
.LBE34:
.LBB38:
.LBB39:
	mov	%d3, 0
.LVL33:
.LBE39:
.LBE38:
.LBB41:
.LBB36:
	insert	%d2, %d2, %d15, 8, 8
.LVL34:
	ld.bu	%d15, [%a5] 1
.LBE36:
.LBE41:
.LBB42:
.LBB43:
	mov	%d4, 0
.LVL35:
.LBE43:
.LBE42:
.LBB46:
.LBB37:
	insert	%d2, %d2, %d15, 16, 8
.LVL36:
	ld.bu	%d15, [%a5]0
	movh.a	%a2, hi:Te4
	insert	%d2, %d2, %d15, 24, 8
.LVL37:
	lea	%a2, [%a2] lo:Te4
	.loc 1 515 0
	st.w	[%a4]0, %d2
.LVL38:
.LBE37:
.LBE46:
.LBB47:
.LBB40:
	.loc 1 510 0
	ld.bu	%d15, [%a5] 7
	mov.a	%a15, 9
	insert	%d3, %d3, %d15, 0, 8
.LVL39:
	ld.bu	%d15, [%a5] 6
	insert	%d3, %d3, %d15, 8, 8
.LVL40:
	ld.bu	%d15, [%a5] 5
	insert	%d3, %d3, %d15, 16, 8
.LVL41:
	ld.bu	%d15, [%a5] 4
	insert	%d3, %d3, %d15, 24, 8
.LVL42:
	.loc 1 515 0
	st.w	[%a4] 4, %d3
.LVL43:
.LBE40:
.LBE47:
.LBB48:
.LBB44:
	.loc 1 510 0
	ld.bu	%d15, [%a5] 11
	insert	%d4, %d4, %d15, 0, 8
.LVL44:
	ld.bu	%d15, [%a5] 10
	insert	%d4, %d4, %d15, 8, 8
.LVL45:
	ld.bu	%d15, [%a5] 9
	insert	%d4, %d4, %d15, 16, 8
.LVL46:
	ld.bu	%d15, [%a5] 8
	insert	%d4, %d4, %d15, 24, 8
.LVL47:
.LBE44:
.LBE48:
.LBB49:
.LBB50:
	mov	%d15, 0
.LVL48:
.LBE50:
.LBE49:
.LBB52:
.LBB45:
	.loc 1 515 0
	st.w	[%a4] 8, %d4
.LVL49:
.LBE45:
.LBE52:
.LBB53:
.LBB51:
	.loc 1 510 0
	ld.bu	%d5, [%a5] 15
	insert	%d15, %d15, %d5, 0, 8
.LVL50:
	ld.bu	%d5, [%a5] 14
	insert	%d15, %d15, %d5, 8, 8
.LVL51:
	ld.bu	%d5, [%a5] 13
	insert	%d15, %d15, %d5, 16, 8
.LVL52:
	ld.bu	%d5, [%a5] 12
	movh.a	%a5, hi:rcon
.LVL53:
	insert	%d15, %d15, %d5, 24, 8
.LVL54:
	lea	%a5, [%a5] lo:rcon
	.loc 1 515 0
	st.w	[%a4] 12, %d15
	mov	%d5, 0
.LVL55:
.L20:
.LBE51:
.LBE53:
	.loc 1 564 0
	extr.u	%d6, %d15, 16, 8
	addsc.a	%a3, %a2, %d6, 2
	ld.w	%d6, [%a3]0
	insert	%d7, %d6, 0, 0, 24
	.loc 1 565 0
	extr.u	%d6, %d15, 8, 8
.LVL56:
	addsc.a	%a3, %a2, %d6, 2
	movh	%d6, 255
	ld.w	%d0, [%a3]0
	and	%d6, %d0
	xor	%d6, %d7
	xor	%d2, %d6
.LVL57:
	.loc 1 566 0
	and	%d6, %d15, 255
	addsc.a	%a3, %a2, %d6, 2
	mov.u	%d6, 65280
	ld.w	%d7, [%a3]0
	and	%d6, %d7
	xor	%d2, %d6
	.loc 1 567 0
	sh	%d6, %d15, -24
	addsc.a	%a3, %a2, %d6, 2
	ld.bu	%d6, [%a3]0
	.loc 1 568 0
	addsc.a	%a3, %a5, %d5, 2
	.loc 1 566 0
	xor	%d2, %d6
	.loc 1 567 0
	ld.w	%d6, [%a3]0
	add	%d5, 1
.LVL58:
	xor	%d2, %d6
	.loc 1 569 0
	xor	%d3, %d2
.LVL59:
	.loc 1 570 0
	xor	%d4, %d3
.LVL60:
	.loc 1 571 0
	xor	%d15, %d4
	.loc 1 563 0
	st.w	[%a4] 16, %d2
	.loc 1 569 0
	st.w	[%a4] 20, %d3
	.loc 1 570 0
	st.w	[%a4] 24, %d4
	.loc 1 571 0
	st.w	[%a4] 28, %d15
.LVL61:
	.loc 1 572 0
	loop	%a15, .L21
	ret
.L21:
	.loc 1 576 0
	lea	%a4, [%a4] 16
.LVL62:
	.loc 1 577 0
	j	.L20
.LFE6:
	.size	EAS_vidAES128KeySetupEnc, .-EAS_vidAES128KeySetupEnc
	.align 1
	.global	EAS_vidAES128Encrypt
	.type	EAS_vidAES128Encrypt, @function
EAS_vidAES128Encrypt:
.LFB7:
	.loc 1 594 0
.LVL63:
.LBB54:
.LBB55:
	.loc 1 510 0
	ld.bu	%d15, [%a5] 3
	mov	%d6, 0
.LVL64:
	insert	%d6, %d6, %d15, 0, 8
.LVL65:
	ld.bu	%d15, [%a5] 2
.LBE55:
.LBE54:
.LBB59:
.LBB60:
	mov	%d5, 0
.LVL66:
.LBE60:
.LBE59:
.LBB62:
.LBB56:
	insert	%d6, %d6, %d15, 8, 8
.LVL67:
	ld.bu	%d15, [%a5] 1
.LBE56:
.LBE62:
.LBB63:
.LBB64:
	mov	%d7, 0
.LVL68:
.LBE64:
.LBE63:
.LBB68:
.LBB57:
	insert	%d6, %d6, %d15, 16, 8
.LVL69:
	ld.bu	%d15, [%a5]0
.LBE57:
.LBE68:
.LBB69:
.LBB70:
	mov	%d3, 0
.LVL70:
.LBE70:
.LBE69:
.LBB75:
.LBB58:
	insert	%d6, %d6, %d15, 24, 8
.LVL71:
.LBE58:
.LBE75:
.LBB76:
.LBB61:
	ld.bu	%d15, [%a5] 7
	movh.a	%a7, hi:Te1
	insert	%d5, %d5, %d15, 0, 8
.LVL72:
	ld.bu	%d15, [%a5] 6
	movh.a	%a2, hi:Te3
	insert	%d5, %d5, %d15, 8, 8
.LVL73:
	ld.bu	%d15, [%a5] 5
	lea	%a7, [%a7] lo:Te1
	insert	%d5, %d5, %d15, 16, 8
.LVL74:
	ld.bu	%d15, [%a5] 4
	movh.a	%a3, hi:Te2
	insert	%d5, %d5, %d15, 24, 8
.LVL75:
.LBE61:
.LBE76:
.LBB77:
.LBB65:
	ld.bu	%d15, [%a5] 11
	lea	%a2, [%a2] lo:Te3
	insert	%d7, %d7, %d15, 0, 8
.LVL76:
	ld.bu	%d15, [%a5] 10
	lea	%a3, [%a3] lo:Te2
	insert	%d7, %d7, %d15, 8, 8
.LVL77:
	ld.bu	%d15, [%a5] 9
.LBE65:
.LBE77:
	.loc 1 621 0
	mov.d	%d1, %a7
.LBB78:
.LBB66:
	.loc 1 510 0
	insert	%d7, %d7, %d15, 16, 8
.LVL78:
	ld.bu	%d15, [%a5] 8
.LBE66:
.LBE78:
	.loc 1 623 0
	mov.d	%d10, %a2
.LBB79:
.LBB67:
	.loc 1 510 0
	insert	%d7, %d7, %d15, 24, 8
.LVL79:
.LBE67:
.LBE79:
.LBB80:
.LBB71:
	ld.bu	%d15, [%a5] 15
.LBE71:
.LBE80:
	.loc 1 612 0
	mov.aa	%a15, %a4
.LBB81:
.LBB72:
	.loc 1 510 0
	insert	%d3, %d3, %d15, 0, 8
.LVL80:
	ld.bu	%d15, [%a5] 14
.LBE72:
.LBE81:
	.loc 1 622 0
	mov.aa	%a14, %a3
.LBB82:
.LBB73:
	.loc 1 510 0
	insert	%d3, %d3, %d15, 8, 8
.LVL81:
	ld.bu	%d15, [%a5] 13
.LBE73:
.LBE82:
	.loc 1 623 0
	mov.a	%a12, 4
.LBB83:
.LBB74:
	.loc 1 510 0
	insert	%d3, %d3, %d15, 16, 8
.LVL82:
	ld.bu	%d15, [%a5] 12
	movh.a	%a5, hi:Te0
.LVL83:
	insert	%d3, %d3, %d15, 24, 8
.LVL84:
.LBE74:
.LBE83:
	.loc 1 609 0
	ld.w	%d15, [%a4]0
	lea	%a5, [%a5] lo:Te0
	xor	%d6, %d15
.LVL85:
	.loc 1 610 0
	ld.w	%d15, [%a4] 4
	.loc 1 620 0
	mov.d	%d0, %a5
	.loc 1 610 0
	xor	%d5, %d15
.LVL86:
	.loc 1 611 0
	ld.w	%d15, [%a4] 8
	xor	%d7, %d15
.LVL87:
	.loc 1 612 0
	ld.w	%d15, [%a4] 12
	xor	%d3, %d15
.LVL88:
.L25:
	.loc 1 621 0
	extr.u	%d15, %d5, 16, 8
	mov.d	%d2, %a7
	.loc 1 620 0
	mov.d	%d4, %a5
	.loc 1 621 0
	madd	%d15, %d2, %d15, 4
.LVL89:
	.loc 1 620 0
	sh	%d2, %d6, -24
	madd	%d2, %d4, %d2, 4
	mov.a	%a13, %d15
	.loc 1 626 0
	mov.d	%d8, %a5
	.loc 1 620 0
	ld.w	%d4, [%a13]0
	mov.a	%a13, %d2
.LVL90:
	.loc 1 622 0
	extr.u	%d2, %d7, 8, 8
	.loc 1 620 0
	ld.w	%d15, [%a13]0
	.loc 1 632 0
	mov.d	%d9, %a5
	.loc 1 620 0
	xor	%d15, %d4
	.loc 1 622 0
	mov.d	%d4, %a3
	madd	%d2, %d4, %d2, 4
	.loc 1 623 0
	mov.d	%d4, %a2
	.loc 1 621 0
	mov.a	%a13, %d2
	ld.w	%d2, [%a13]0
	xor	%d15, %d2
	.loc 1 623 0
	and	%d2, %d3, 255
	madd	%d2, %d4, %d2, 4
	.loc 1 627 0
	mov.d	%d4, %a7
	.loc 1 622 0
	mov.a	%a13, %d2
	ld.w	%d2, [%a13]0
	xor	%d15, %d2
	.loc 1 623 0
	ld.w	%d2, [%a15] 16
	xor	%d15, %d2
	.loc 1 627 0
	extr.u	%d2, %d7, 16, 8
	madd	%d2, %d4, %d2, 4
	.loc 1 626 0
	sh	%d4, %d5, -24
	madd	%d4, %d8, %d4, 4
	mov.a	%a13, %d2
	ld.w	%d8, [%a13]0
	mov.a	%a13, %d4
	.loc 1 628 0
	extr.u	%d4, %d3, 8, 8
	.loc 1 626 0
	ld.w	%d2, [%a13]0
	xor	%d2, %d8
	.loc 1 628 0
	mov.d	%d8, %a3
	madd	%d4, %d8, %d4, 4
	.loc 1 629 0
	mov.d	%d8, %a2
	.loc 1 627 0
	mov.a	%a13, %d4
	ld.w	%d4, [%a13]0
	xor	%d2, %d4
	.loc 1 629 0
	and	%d4, %d6, 255
	madd	%d4, %d8, %d4, 4
	.loc 1 633 0
	mov.d	%d8, %a7
	.loc 1 628 0
	mov.a	%a13, %d4
	ld.w	%d4, [%a13]0
	xor	%d2, %d4
	.loc 1 629 0
	ld.w	%d4, [%a15] 20
	xor	%d2, %d4
	.loc 1 633 0
	extr.u	%d4, %d3, 16, 8
	.loc 1 638 0
	sh	%d3, %d3, -24
	.loc 1 633 0
	madd	%d4, %d8, %d4, 4
	.loc 1 632 0
	sh	%d8, %d7, -24
	madd	%d8, %d9, %d8, 4
	mov.a	%a13, %d4
	.loc 1 641 0
	and	%d7, %d7, 255
.LVL91:
	.loc 1 632 0
	ld.w	%d9, [%a13]0
	mov.a	%a13, %d8
	.loc 1 634 0
	extr.u	%d8, %d6, 8, 8
	.loc 1 632 0
	ld.w	%d4, [%a13]0
	.loc 1 639 0
	extr.u	%d6, %d6, 16, 8
.LVL92:
	.loc 1 632 0
	xor	%d4, %d9
	.loc 1 634 0
	mov.d	%d9, %a3
	madd	%d8, %d9, %d8, 4
	.loc 1 635 0
	mov.d	%d9, %a2
	.loc 1 633 0
	mov.a	%a13, %d8
	ld.w	%d8, [%a13]0
	xor	%d4, %d8
	.loc 1 635 0
	and	%d8, %d5, 255
	madd	%d8, %d9, %d8, 4
	.loc 1 638 0
	mov.d	%d9, %a5
	.loc 1 640 0
	extr.u	%d5, %d5, 8, 8
.LVL93:
	.loc 1 634 0
	mov.a	%a13, %d8
	ld.w	%d8, [%a13]0
	xor	%d4, %d8
	.loc 1 635 0
	ld.w	%d8, [%a15] 24
	xor	%d4, %d8
	.loc 1 639 0
	mov.d	%d8, %a7
	madd	%d6, %d8, %d6, 4
	.loc 1 638 0
	madd	%d8, %d9, %d3, 4
	mov.a	%a13, %d6
	ld.w	%d6, [%a13]0
	mov.a	%a13, %d8
	ld.w	%d3, [%a13]0
	xor	%d3, %d6
	.loc 1 640 0
	mov.d	%d6, %a3
	madd	%d5, %d6, %d5, 4
	.loc 1 639 0
	mov.a	%a13, %d5
	ld.w	%d5, [%a13]0
	xor	%d3, %d5
	.loc 1 641 0
	mov.d	%d5, %a2
	madd	%d7, %d5, %d7, 4
	.loc 1 640 0
	mov.a	%a13, %d7
	ld.w	%d5, [%a13]0
	xor	%d3, %d5
	.loc 1 641 0
	ld.w	%d5, [%a15] 28
	.loc 1 644 0
	lea	%a15, [%a15] 32
.LVL94:
	.loc 1 641 0
	xor	%d3, %d5
	.loc 1 644 0
	loop	%a12, .L26
	.loc 1 687 0
	extr.u	%d5, %d4, 16, 8
	movh.a	%a15, hi:Te4
.LVL95:
	lea	%a15, [%a15] lo:Te4
	addsc.a	%a2, %a15, %d5, 2
	movh	%d5, 255
	ld.w	%d7, [%a2]0
	and	%d7, %d5
	.loc 1 686 0
	sh	%d5, %d2, -24
	addsc.a	%a2, %a15, %d5, 2
	ld.w	%d6, [%a2]0
	insert	%d5, %d6, 0, 0, 24
	xor	%d6, %d7, %d5
	.loc 1 688 0
	extr.u	%d5, %d3, 8, 8
	addsc.a	%a2, %a15, %d5, 2
	mov.u	%d5, 65280
	ld.w	%d7, [%a2]0
	and	%d5, %d7
	.loc 1 687 0
	xor	%d7, %d6, %d5
	.loc 1 689 0
	and	%d5, %d15, 255
	addsc.a	%a2, %a15, %d5, 2
	ld.bu	%d5, [%a2]0
	.loc 1 688 0
	xor	%d7, %d5
	.loc 1 689 0
	ld.w	%d5, [%a4] 164
	xor	%d7, %d5
.LVL96:
	.loc 1 693 0
	extr.u	%d5, %d3, 16, 8
	addsc.a	%a2, %a15, %d5, 2
	movh	%d5, 255
	ld.w	%d6, [%a2]0
	and	%d6, %d5
	.loc 1 692 0
	sh	%d5, %d4, -24
	addsc.a	%a2, %a15, %d5, 2
	ld.w	%d0, [%a2]0
	insert	%d5, %d0, 0, 0, 24
	xor	%d0, %d6, %d5
	.loc 1 694 0
	extr.u	%d5, %d15, 8, 8
	addsc.a	%a2, %a15, %d5, 2
	mov.u	%d5, 65280
	ld.w	%d6, [%a2]0
	and	%d5, %d6
	.loc 1 693 0
	xor	%d6, %d0, %d5
	.loc 1 695 0
	and	%d5, %d2, 255
	addsc.a	%a2, %a15, %d5, 2
	ld.bu	%d5, [%a2]0
	.loc 1 694 0
	xor	%d6, %d5
	.loc 1 695 0
	ld.w	%d5, [%a4] 168
	xor	%d6, %d5
.LVL97:
	.loc 1 699 0
	extr.u	%d5, %d15, 16, 8
	.loc 1 680 0
	sh	%d15, %d15, -24
	.loc 1 699 0
	addsc.a	%a2, %a15, %d5, 2
	movh	%d5, 255
	ld.w	%d0, [%a2]0
	and	%d5, %d0
	.loc 1 698 0
	sh	%d0, %d3, -24
	addsc.a	%a2, %a15, %d0, 2
	.loc 1 683 0
	and	%d3, %d3, 255
	.loc 1 698 0
	ld.w	%d0, [%a2]0
	insert	%d0, %d0, 0, 0, 24
	xor	%d0, %d5
	.loc 1 700 0
	extr.u	%d5, %d2, 8, 8
	.loc 1 681 0
	extr.u	%d2, %d2, 16, 8
	.loc 1 700 0
	addsc.a	%a2, %a15, %d5, 2
	mov.u	%d5, 65280
	ld.w	%d1, [%a2]0
	and	%d5, %d1
	.loc 1 699 0
	xor	%d5, %d0
	.loc 1 701 0
	and	%d0, %d4, 255
	addsc.a	%a2, %a15, %d0, 2
	.loc 1 682 0
	extr.u	%d4, %d4, 8, 8
	.loc 1 701 0
	ld.bu	%d0, [%a2]0
	.loc 1 681 0
	addsc.a	%a2, %a15, %d2, 2
	.loc 1 700 0
	xor	%d5, %d0
	.loc 1 701 0
	ld.w	%d0, [%a4] 172
	.loc 1 681 0
	movh	%d2, 255
	.loc 1 701 0
	xor	%d5, %d0
.LVL98:
	.loc 1 681 0
	ld.w	%d0, [%a2]0
	.loc 1 680 0
	addsc.a	%a2, %a15, %d15, 2
	.loc 1 681 0
	and	%d0, %d2
	.loc 1 680 0
	ld.w	%d2, [%a2]0
	.loc 1 682 0
	addsc.a	%a2, %a15, %d4, 2
	.loc 1 680 0
	insert	%d2, %d2, 0, 0, 24
	.loc 1 682 0
	ld.w	%d4, [%a2]0
	mov.u	%d15, 65280
	.loc 1 683 0
	addsc.a	%a15, %a15, %d3, 2
	.loc 1 680 0
	xor	%d2, %d0
	.loc 1 682 0
	and	%d15, %d4
	.loc 1 681 0
	xor	%d15, %d2
	.loc 1 683 0
	ld.bu	%d2, [%a15]0
	.loc 1 682 0
	xor	%d15, %d2
	.loc 1 683 0
	ld.w	%d2, [%a4] 160
.LBB84:
.LBB85:
	.loc 1 528 0
	st.b	[%a6] 7, %d7
.LBE85:
.LBE84:
	.loc 1 683 0
	xor	%d15, %d2
.LVL99:
.LBB88:
.LBB89:
	.loc 1 528 0
	extr.u	%d2, %d15, 24, 8
	st.b	[%a6] 3, %d15
	st.b	[%a6]0, %d2
.LVL100:
	extr.u	%d2, %d15, 16, 8
.LBE89:
.LBE88:
.LBB92:
.LBB93:
	st.b	[%a6] 11, %d6
.LBE93:
.LBE92:
.LBB95:
.LBB90:
	st.b	[%a6] 1, %d2
.LVL101:
	extr.u	%d2, %d15, 8, 8
.LBE90:
.LBE95:
.LBB96:
.LBB86:
	extr.u	%d15, %d7, 24, 8
.LBE86:
.LBE96:
.LBB97:
.LBB91:
	st.b	[%a6] 2, %d2
.LVL102:
.LBE91:
.LBE97:
.LBB98:
.LBB87:
	st.b	[%a6] 4, %d15
.LVL103:
	extr.u	%d15, %d7, 16, 8
	st.b	[%a6] 5, %d15
.LVL104:
	extr.u	%d15, %d7, 8, 8
	st.b	[%a6] 6, %d15
.LVL105:
.LBE87:
.LBE98:
.LBB99:
.LBB94:
	extr.u	%d15, %d6, 24, 8
	st.b	[%a6] 8, %d15
.LVL106:
	extr.u	%d15, %d6, 16, 8
	st.b	[%a6] 9, %d15
.LVL107:
	extr.u	%d15, %d6, 8, 8
	st.b	[%a6] 10, %d15
.LVL108:
.LBE94:
.LBE99:
.LBB100:
.LBB101:
	extr.u	%d15, %d5, 24, 8
	st.b	[%a6] 12, %d15
.LVL109:
	extr.u	%d15, %d5, 16, 8
	st.b	[%a6] 13, %d15
.LVL110:
	extr.u	%d15, %d5, 8, 8
	st.b	[%a6] 15, %d5
	st.b	[%a6] 14, %d15
.LVL111:
	ret
.LVL112:
.L26:
.LBE101:
.LBE100:
	.loc 1 652 0
	extr.u	%d6, %d2, 16, 8
	.loc 1 651 0
	sh	%d5, %d15, -24
	.loc 1 652 0
	madd	%d6, %d1, %d6, 4
	.loc 1 651 0
	madd	%d5, %d0, %d5, 4
	.loc 1 653 0
	mov.d	%d7, %a14
	.loc 1 651 0
	mov.a	%a13, %d6
	ld.w	%d6, [%a13]0
	mov.a	%a13, %d5
	ld.w	%d5, [%a13]0
	xor	%d6, %d5
	.loc 1 653 0
	extr.u	%d5, %d4, 8, 8
	madd	%d5, %d7, %d5, 4
	.loc 1 657 0
	sh	%d7, %d2, -24
	madd	%d7, %d0, %d7, 4
	.loc 1 652 0
	mov.a	%a13, %d5
	ld.w	%d5, [%a13]0
	xor	%d6, %d5
	.loc 1 654 0
	and	%d5, %d3, 255
	madd	%d5, %d10, %d5, 4
	.loc 1 653 0
	mov.a	%a13, %d5
	ld.w	%d5, [%a13]0
	xor	%d6, %d5
	.loc 1 654 0
	ld.w	%d5, [%a15]0
	xor	%d6, %d5
	.loc 1 658 0
	extr.u	%d5, %d4, 16, 8
	madd	%d5, %d1, %d5, 4
	.loc 1 657 0
	mov.a	%a13, %d5
	ld.w	%d8, [%a13]0
	mov.a	%a13, %d7
	.loc 1 659 0
	extr.u	%d7, %d3, 8, 8
	.loc 1 657 0
	ld.w	%d5, [%a13]0
	xor	%d5, %d8
	.loc 1 659 0
	mov.d	%d8, %a14
	madd	%d7, %d8, %d7, 4
	.loc 1 663 0
	sh	%d8, %d4, -24
	madd	%d8, %d0, %d8, 4
	.loc 1 658 0
	mov.a	%a13, %d7
	.loc 1 672 0
	and	%d4, %d4, 255
	.loc 1 658 0
	ld.w	%d7, [%a13]0
	.loc 1 672 0
	madd	%d4, %d10, %d4, 4
	.loc 1 658 0
	xor	%d5, %d7
	.loc 1 660 0
	and	%d7, %d15, 255
	madd	%d7, %d10, %d7, 4
	.loc 1 659 0
	mov.a	%a13, %d7
	ld.w	%d7, [%a13]0
	xor	%d5, %d7
	.loc 1 660 0
	ld.w	%d7, [%a15] 4
	xor	%d5, %d7
	.loc 1 664 0
	extr.u	%d7, %d3, 16, 8
	.loc 1 669 0
	sh	%d3, %d3, -24
	.loc 1 664 0
	madd	%d7, %d1, %d7, 4
	.loc 1 663 0
	mov.a	%a13, %d7
	ld.w	%d9, [%a13]0
	mov.a	%a13, %d8
	.loc 1 665 0
	extr.u	%d8, %d15, 8, 8
	.loc 1 663 0
	ld.w	%d7, [%a13]0
	.loc 1 670 0
	extr.u	%d15, %d15, 16, 8
	.loc 1 663 0
	xor	%d7, %d9
	.loc 1 665 0
	mov.d	%d9, %a14
	.loc 1 670 0
	madd	%d15, %d1, %d15, 4
	.loc 1 665 0
	madd	%d8, %d9, %d8, 4
	.loc 1 664 0
	mov.a	%a13, %d8
	ld.w	%d8, [%a13]0
	xor	%d7, %d8
	.loc 1 666 0
	and	%d8, %d2, 255
	madd	%d8, %d10, %d8, 4
	.loc 1 671 0
	extr.u	%d2, %d2, 8, 8
	.loc 1 665 0
	mov.a	%a13, %d8
	.loc 1 671 0
	madd	%d2, %d9, %d2, 4
	.loc 1 665 0
	ld.w	%d8, [%a13]0
	.loc 1 669 0
	mov.a	%a13, %d15
	.loc 1 665 0
	xor	%d7, %d8
	.loc 1 666 0
	ld.w	%d8, [%a15] 8
	xor	%d7, %d8
	.loc 1 669 0
	madd	%d8, %d0, %d3, 4
	ld.w	%d3, [%a13]0
	mov.a	%a13, %d8
	ld.w	%d15, [%a13]0
	.loc 1 670 0
	mov.a	%a13, %d2
	.loc 1 669 0
	xor	%d3, %d15
	.loc 1 670 0
	ld.w	%d15, [%a13]0
	.loc 1 671 0
	mov.a	%a13, %d4
	.loc 1 670 0
	xor	%d3, %d15
	.loc 1 671 0
	ld.w	%d15, [%a13]0
	xor	%d3, %d15
	.loc 1 672 0
	ld.w	%d15, [%a15] 12
	xor	%d3, %d15
	.loc 1 674 0
	j	.L25
.LFE7:
	.size	EAS_vidAES128Encrypt, .-EAS_vidAES128Encrypt
.section .rodata.a4.rcon,"a",@progbits
	.align 2
	.type	rcon, @object
	.size	rcon, 40
rcon:
	.word	16777216
	.word	33554432
	.word	67108864
	.word	134217728
	.word	268435456
	.word	536870912
	.word	1073741824
	.word	-2147483648
	.word	452984832
	.word	905969664
.section .rodata.a4.Te4,"a",@progbits
	.align 2
	.type	Te4, @object
	.size	Te4, 1024
Te4:
	.word	1667457891
	.word	2088533116
	.word	2004318071
	.word	2071690107
	.word	-218959118
	.word	1802201963
	.word	1869573999
	.word	-976894523
	.word	808464432
	.word	16843009
	.word	1734829927
	.word	724249387
	.word	-16843010
	.word	-673720361
	.word	-1414812757
	.word	1987475062
	.word	-892679478
	.word	-2105376126
	.word	-909522487
	.word	2105376125
	.word	-84215046
	.word	1499027801
	.word	1195853639
	.word	-252645136
	.word	-1381126739
	.word	-724249388
	.word	-1566399838
	.word	-1347440721
	.word	-1667457892
	.word	-1532713820
	.word	1920103026
	.word	-1061109568
	.word	-1212696649
	.word	-33686019
	.word	-1819044973
	.word	640034342
	.word	909522486
	.word	1061109567
	.word	-134744073
	.word	-858993460
	.word	875836468
	.word	-1515870811
	.word	-437918235
	.word	-235802127
	.word	1903260017
	.word	-656877352
	.word	825307441
	.word	353703189
	.word	67372036
	.word	-943208505
	.word	589505315
	.word	-1010580541
	.word	404232216
	.word	-1768515946
	.word	84215045
	.word	-1701143910
	.word	117901063
	.word	303174162
	.word	-2139062144
	.word	-488447262
	.word	-336860181
	.word	656877351
	.word	-1296911694
	.word	1970632053
	.word	151587081
	.word	-2088533117
	.word	741092396
	.word	437918234
	.word	454761243
	.word	1852730990
	.word	1515870810
	.word	-1600085856
	.word	1381126738
	.word	993737531
	.word	-690563370
	.word	-1280068685
	.word	690563369
	.word	-471604253
	.word	791621423
	.word	-2071690108
	.word	1397969747
	.word	-774778415
	.word	0
	.word	-303174163
	.word	538976288
	.word	-50529028
	.word	-1313754703
	.word	1532713819
	.word	1785358954
	.word	-875836469
	.word	-1094795586
	.word	960051513
	.word	1246382666
	.word	1280068684
	.word	1482184792
	.word	-808464433
	.word	-791621424
	.word	-269488145
	.word	-1431655766
	.word	-67372037
	.word	1128481603
	.word	1296911693
	.word	858993459
	.word	-2054847099
	.word	1162167621
	.word	-101058055
	.word	33686018
	.word	2139062143
	.word	1347440720
	.word	1010580540
	.word	-1616928865
	.word	-1465341784
	.word	1364283729
	.word	-1549556829
	.word	1077952576
	.word	-1886417009
	.word	-1835887982
	.word	-1650614883
	.word	943208504
	.word	-168430091
	.word	-1128481604
	.word	-1229539658
	.word	-623191334
	.word	555819297
	.word	269488144
	.word	-1
	.word	-202116109
	.word	-757935406
	.word	-842150451
	.word	202116108
	.word	320017171
	.word	-320017172
	.word	1600085855
	.word	-1751672937
	.word	1145324612
	.word	387389207
	.word	-993737532
	.word	-1482184793
	.word	2122219134
	.word	1027423549
	.word	1684300900
	.word	1566399837
	.word	421075225
	.word	1936946035
	.word	1616928864
	.word	-2122219135
	.word	1330597711
	.word	-589505316
	.word	572662306
	.word	707406378
	.word	-1869574000
	.word	-2004318072
	.word	1179010630
	.word	-286331154
	.word	-1195853640
	.word	336860180
	.word	-555819298
	.word	1583242846
	.word	185273099
	.word	-606348325
	.word	-522133280
	.word	842150450
	.word	976894522
	.word	168430090
	.word	1229539657
	.word	101058054
	.word	606348324
	.word	1549556828
	.word	-1027423550
	.word	-741092397
	.word	-1397969748
	.word	1650614882
	.word	-1852730991
	.word	-1785358955
	.word	-454761244
	.word	2038004089
	.word	-404232217
	.word	-926365496
	.word	926365495
	.word	1835887981
	.word	-1920103027
	.word	-707406379
	.word	1313754702
	.word	-1448498775
	.word	1819044972
	.word	1448498774
	.word	-185273100
	.word	-353703190
	.word	1701143909
	.word	2054847098
	.word	-1364283730
	.word	134744072
	.word	-1162167622
	.word	2021161080
	.word	623191333
	.word	774778414
	.word	471604252
	.word	-1499027802
	.word	-1263225676
	.word	-960051514
	.word	-387389208
	.word	-572662307
	.word	1953789044
	.word	522133279
	.word	1263225675
	.word	-1111638595
	.word	-1953789045
	.word	-1970632054
	.word	1886417008
	.word	1044266558
	.word	-1246382667
	.word	1717986918
	.word	1212696648
	.word	50529027
	.word	-151587082
	.word	235802126
	.word	1633771873
	.word	892679477
	.word	1465341783
	.word	-1179010631
	.word	-2038004090
	.word	-1044266559
	.word	488447261
	.word	-1633771874
	.word	-505290271
	.word	-117901064
	.word	-1734829928
	.word	286331153
	.word	1768515945
	.word	-640034343
	.word	-1903260018
	.word	-1802201964
	.word	-1684300901
	.word	505290270
	.word	-2021161081
	.word	-370546199
	.word	-825307442
	.word	1431655765
	.word	673720360
	.word	-538976289
	.word	-1936946036
	.word	-1583242847
	.word	-1987475063
	.word	218959117
	.word	-1077952577
	.word	-421075226
	.word	1111638594
	.word	1751672936
	.word	1094795585
	.word	-1717986919
	.word	757935405
	.word	252645135
	.word	-1330597712
	.word	1414812756
	.word	-1145324613
	.word	370546198
.section .rodata.a4.Te3,"a",@progbits
	.align 2
	.type	Te3, @object
	.size	Te3, 1024
Te3:
	.word	1667474886
	.word	2088535288
	.word	2004326894
	.word	2071694838
	.word	-219017729
	.word	1802223062
	.word	1869591006
	.word	-976923503
	.word	808472672
	.word	16843522
	.word	1734846926
	.word	724270422
	.word	-16901657
	.word	-673750347
	.word	-1414797747
	.word	1987484396
	.word	-892713585
	.word	-2105369313
	.word	-909557623
	.word	2105378810
	.word	-84273681
	.word	1499065266
	.word	1195886990
	.word	-252703749
	.word	-1381110719
	.word	-724277325
	.word	-1566376609
	.word	-1347425723
	.word	-1667449053
	.word	-1532692653
	.word	1920112356
	.word	-1061135461
	.word	-1212693899
	.word	-33743647
	.word	-1819038147
	.word	640051788
	.word	909531756
	.word	1061110142
	.word	-134806795
	.word	-859025533
	.word	875846760
	.word	-1515850671
	.word	-437963567
	.word	-235861767
	.word	1903268834
	.word	-656903253
	.word	825316194
	.word	353713962
	.word	67374088
	.word	-943238507
	.word	589522246
	.word	-1010606435
	.word	404236336
	.word	-1768513225
	.word	84217610
	.word	-1701137105
	.word	117901582
	.word	303183396
	.word	-2139055333
	.word	-488489505
	.word	-336910643
	.word	656894286
	.word	-1296904833
	.word	1970642922
	.word	151591698
	.word	-2088526307
	.word	741110872
	.word	437923380
	.word	454765878
	.word	1852748508
	.word	1515908788
	.word	-1600062629
	.word	1381168804
	.word	993742198
	.word	-690593353
	.word	-1280061827
	.word	690584402
	.word	-471646499
	.word	791638366
	.word	-2071685357
	.word	1398011302
	.word	-774805319
	.word	0
	.word	-303223615
	.word	538992704
	.word	-50585629
	.word	-1313748871
	.word	1532751286
	.word	1785380564
	.word	-875870579
	.word	-1094788761
	.word	960056178
	.word	1246420628
	.word	1280103576
	.word	1482221744
	.word	-808498555
	.word	-791647301
	.word	-269538619
	.word	-1431640753
	.word	-67430675
	.word	1128514950
	.word	1296947098
	.word	859002214
	.word	-2054843375
	.word	1162203018
	.word	-101117719
	.word	33687044
	.word	2139062782
	.word	1347481760
	.word	1010582648
	.word	-1616922075
	.word	-1465326773
	.word	1364325282
	.word	-1549533603
	.word	1077985408
	.word	-1886418427
	.word	-1835881153
	.word	-1650607071
	.word	943212656
	.word	-168491791
	.word	-1128472733
	.word	-1229536905
	.word	-623217233
	.word	555836226
	.word	269496352
	.word	-58651
	.word	-202174723
	.word	-757961281
	.word	-842183551
	.word	202118168
	.word	320025894
	.word	-320065597
	.word	1600119230
	.word	-1751670219
	.word	1145359496
	.word	387397934
	.word	-993765485
	.word	-1482165675
	.word	2122220284
	.word	1027426170
	.word	1684319432
	.word	1566435258
	.word	421079858
	.word	1936954854
	.word	1616945344
	.word	-2122213351
	.word	1330631070
	.word	-589529181
	.word	572679748
	.word	707427924
	.word	-1869567173
	.word	-2004319477
	.word	1179044492
	.word	-286381625
	.word	-1195846805
	.word	336870440
	.word	-555845209
	.word	1583276732
	.word	185277718
	.word	-606374227
	.word	-522175525
	.word	842159716
	.word	976899700
	.word	168435220
	.word	1229577106
	.word	101059084
	.word	606366792
	.word	1549591736
	.word	-1027449441
	.word	-741118275
	.word	-1397952701
	.word	1650632388
	.word	-1852725191
	.word	-1785355215
	.word	-454805549
	.word	2038008818
	.word	-404278571
	.word	-926399605
	.word	926374254
	.word	1835907034
	.word	-1920103423
	.word	-707435343
	.word	1313788572
	.word	-1448484791
	.word	1819063512
	.word	1448540844
	.word	-185333773
	.word	-353753649
	.word	1701162954
	.word	2054852340
	.word	-1364268729
	.word	134748176
	.word	-1162160785
	.word	2021165296
	.word	623210314
	.word	774795868
	.word	471606328
	.word	-1499008681
	.word	-1263220877
	.word	-960081513
	.word	-387439669
	.word	-572687199
	.word	1953799400
	.word	522133822
	.word	1263263126
	.word	-1111630751
	.word	-1953790451
	.word	-1970633457
	.word	1886425312
	.word	1044267644
	.word	-1246378895
	.word	1718004428
	.word	1212733584
	.word	50529542
	.word	-151649801
	.word	235803164
	.word	1633788866
	.word	892690282
	.word	1465383342
	.word	-1179004823
	.word	-2038001385
	.word	-1044293479
	.word	488449850
	.word	-1633765081
	.word	-505333543
	.word	-117959701
	.word	-1734823125
	.word	286339874
	.word	1768537042
	.word	-640061271
	.word	-1903261433
	.word	-1802197197
	.word	-1684294099
	.word	505291324
	.word	-2021158379
	.word	-370597687
	.word	-825341561
	.word	1431699370
	.word	673740880
	.word	-539002203
	.word	-1936945405
	.word	-1583220647
	.word	-1987477495
	.word	218961690
	.word	-1077945755
	.word	-421121577
	.word	1111672452
	.word	1751693520
	.word	1094828930
	.word	-1717981143
	.word	757954394
	.word	252645662
	.word	-1330590853
	.word	1414855848
	.word	-1145317779
	.word	370555436
.section .rodata.a4.Te2,"a",@progbits
	.align 2
	.type	Te2, @object
	.size	Te2, 1024
Te2:
	.word	1671808611
	.word	2089089148
	.word	2006576759
	.word	2072901243
	.word	-233963534
	.word	1807603307
	.word	1873927791
	.word	-984313403
	.word	810573872
	.word	16974337
	.word	1739181671
	.word	729634347
	.word	-31856642
	.word	-681396777
	.word	-1410970197
	.word	1989864566
	.word	-901410870
	.word	-2103631998
	.word	-918517303
	.word	2106063485
	.word	-99225606
	.word	1508618841
	.word	1204391495
	.word	-267650064
	.word	-1377025619
	.word	-731401260
	.word	-1560453214
	.word	-1343601233
	.word	-1665195108
	.word	-1527295068
	.word	1922491506
	.word	-1067738176
	.word	-1211992649
	.word	-48438787
	.word	-1817297517
	.word	644500518
	.word	911895606
	.word	1061256767
	.word	-150800905
	.word	-867204148
	.word	878471220
	.word	-1510714971
	.word	-449523227
	.word	-251069967
	.word	1905517169
	.word	-663508008
	.word	827548209
	.word	356461077
	.word	67897348
	.word	-950889017
	.word	593839651
	.word	-1017209405
	.word	405286936
	.word	-1767819370
	.word	84871685
	.word	-1699401830
	.word	118033927
	.word	305538066
	.word	-2137318528
	.word	-499261470
	.word	-349778453
	.word	661212711
	.word	-1295155278
	.word	1973414517
	.word	152769033
	.word	-2086789757
	.word	745822252
	.word	439235610
	.word	455947803
	.word	1857215598
	.word	1525593178
	.word	-1594139744
	.word	1391895634
	.word	994932283
	.word	-698239018
	.word	-1278313037
	.word	695947817
	.word	-482419229
	.word	795958831
	.word	-2070473852
	.word	1408607827
	.word	-781665839
	.word	0
	.word	-315833875
	.word	543178784
	.word	-65018884
	.word	-1312261711
	.word	1542305371
	.word	1790891114
	.word	-884568629
	.word	-1093048386
	.word	961245753
	.word	1256100938
	.word	1289001036
	.word	1491644504
	.word	-817199665
	.word	-798245936
	.word	-282409489
	.word	-1427812438
	.word	-82383365
	.word	1137018435
	.word	1305975373
	.word	861234739
	.word	-2053893755
	.word	1171229253
	.word	-116332039
	.word	33948674
	.word	2139225727
	.word	1357946960
	.word	1011120188
	.word	-1615190625
	.word	-1461498968
	.word	1374921297
	.word	-1543610973
	.word	1086357568
	.word	-1886780017
	.word	-1834139758
	.word	-1648615011
	.word	944271416
	.word	-184225291
	.word	-1126210628
	.word	-1228834890
	.word	-629821478
	.word	560153121
	.word	271589392
	.word	-15014401
	.word	-217121293
	.word	-764559406
	.word	-850624051
	.word	202643468
	.word	322250259
	.word	-332413972
	.word	1608629855
	.word	-1750977129
	.word	1154254916
	.word	389623319
	.word	-1000893500
	.word	-1477290585
	.word	2122513534
	.word	1028094525
	.word	1689045092
	.word	1575467613
	.word	422261273
	.word	1939203699
	.word	1621147744
	.word	-2120738431
	.word	1339137615
	.word	-595614756
	.word	577127458
	.word	712922154
	.word	-1867826288
	.word	-2004677752
	.word	1187679302
	.word	-299251730
	.word	-1194103880
	.word	339486740
	.word	-562452514
	.word	1591917662
	.word	186455563
	.word	-612979237
	.word	-532948000
	.word	844522546
	.word	978220090
	.word	169743370
	.word	1239126601
	.word	101321734
	.word	611076132
	.word	1558493276
	.word	-1034051646
	.word	-747717165
	.word	-1393605716
	.word	1655096418
	.word	-1851246191
	.word	-1784401515
	.word	-466103324
	.word	2039214713
	.word	-416098841
	.word	-935097400
	.word	928607799
	.word	1840765549
	.word	-1920204403
	.word	-714821163
	.word	1322425422
	.word	-1444918871
	.word	1823791212
	.word	1459268694
	.word	-200805388
	.word	-366620694
	.word	1706019429
	.word	2056189050
	.word	-1360443474
	.word	135794696
	.word	-1160417350
	.word	2022240376
	.word	628050469
	.word	779246638
	.word	472135708
	.word	-1494132826
	.word	-1261997132
	.word	-967731258
	.word	-400307224
	.word	-579034659
	.word	1956440180
	.word	522272287
	.word	1272813131
	.word	-1109630531
	.word	-1954148981
	.word	-1970991222
	.word	1888542832
	.word	1044544574
	.word	-1245417035
	.word	1722469478
	.word	1222152264
	.word	50660867
	.word	-167643146
	.word	236067854
	.word	1638122081
	.word	895445557
	.word	1475980887
	.word	-1177523783
	.word	-2037311610
	.word	-1051158079
	.word	489110045
	.word	-1632032866
	.word	-516367903
	.word	-132912136
	.word	-1733088360
	.word	288563729
	.word	1773916777
	.word	-646927911
	.word	-1903622258
	.word	-1800981612
	.word	-1682559589
	.word	505560094
	.word	-2020469369
	.word	-383727127
	.word	-834041906
	.word	1442818645
	.word	678973480
	.word	-545610273
	.word	-1936784500
	.word	-1577559647
	.word	-1988097655
	.word	219617805
	.word	-1076206145
	.word	-432941082
	.word	1120306242
	.word	1756942440
	.word	1103331905
	.word	-1716508263
	.word	762796589
	.word	252780047
	.word	-1328841808
	.word	1425844308
	.word	-1143575109
	.word	372911126
.section .rodata.a4.Te1,"a",@progbits
	.align 2
	.type	Te1, @object
	.size	Te1, 1024
Te1:
	.word	-1513725085
	.word	-2064089988
	.word	-1712425097
	.word	-1913226373
	.word	234877682
	.word	-1110021269
	.word	-1310822545
	.word	1418839493
	.word	1348481072
	.word	50462977
	.word	-1446090905
	.word	2102799147
	.word	434634494
	.word	1656084439
	.word	-431117397
	.word	-1695779210
	.word	1167051466
	.word	-1658879358
	.word	1082771913
	.word	-2013627011
	.word	368048890
	.word	-340633255
	.word	-913422521
	.word	201060592
	.word	-331240019
	.word	1739838676
	.word	-44064094
	.word	-364531793
	.word	-1088185188
	.word	-145513308
	.word	-1763413390
	.word	1536934080
	.word	-1032472649
	.word	484572669
	.word	-1371696237
	.word	1783375398
	.word	1517041206
	.word	1098792767
	.word	49674231
	.word	1334037708
	.word	1550332980
	.word	-195975771
	.word	886171109
	.word	150598129
	.word	-1813876367
	.word	1940642008
	.word	1398944049
	.word	1059722517
	.word	201851908
	.word	1385547719
	.word	1699095331
	.word	1587397571
	.word	674240536
	.word	-1590192490
	.word	252314885
	.word	-1255171430
	.word	151914247
	.word	908333586
	.word	-1692696448
	.word	1038082786
	.word	651029483
	.word	1766729511
	.word	-847269198
	.word	-1612024459
	.word	454166793
	.word	-1642232957
	.word	1951935532
	.word	775166490
	.word	758520603
	.word	-1294176658
	.word	-290170278
	.word	-77881184
	.word	-157003182
	.word	1299594043
	.word	1639438038
	.word	-830622797
	.word	2068982057
	.word	1054729187
	.word	1901997871
	.word	-1760328572
	.word	-173649069
	.word	1757008337
	.word	0
	.word	750906861
	.word	1614815264
	.word	535035132
	.word	-931548751
	.word	-306816165
	.word	-1093375382
	.word	1183697867
	.word	-647512386
	.word	1265776953
	.word	-560706998
	.word	-728216500
	.word	-391096232
	.word	1250283471
	.word	1807470800
	.word	717615087
	.word	-447763798
	.word	384695291
	.word	-981056701
	.word	-677753523
	.word	1432761139
	.word	-1810791035
	.word	-813021883
	.word	283769337
	.word	100925954
	.word	-2114027649
	.word	-257929136
	.word	1148730428
	.word	-1171939425
	.word	-481580888
	.word	-207466159
	.word	-27417693
	.word	-1065336768
	.word	-1979347057
	.word	-1388342638
	.word	-1138647651
	.word	1215313976
	.word	82966005
	.word	-547111748
	.word	-1049119050
	.word	1974459098
	.word	1665278241
	.word	807407632
	.word	451280895
	.word	251524083
	.word	1841287890
	.word	1283575245
	.word	337120268
	.word	891687699
	.word	801369324
	.word	-507617441
	.word	-1573546089
	.word	-863484860
	.word	959321879
	.word	1469301956
	.word	-229267545
	.word	-2097381762
	.word	1199193405
	.word	-1396153244
	.word	-407216803
	.word	724703513
	.word	-1780059277
	.word	-1598005152
	.word	-1743158911
	.word	-778154161
	.word	2141445340
	.word	1715741218
	.word	2119445034
	.word	-1422159728
	.word	-2096396152
	.word	-896776634
	.word	700968686
	.word	-747915080
	.word	1009259540
	.word	2041044702
	.word	-490971554
	.word	487983883
	.word	1991105499
	.word	1004265696
	.word	1449407026
	.word	1316239930
	.word	504629770
	.word	-611169975
	.word	168560134
	.word	1816667172
	.word	-457679780
	.word	1570751170
	.word	1857934291
	.word	-280777556
	.word	-1497079198
	.word	-1472622191
	.word	-1540254315
	.word	936633572
	.word	-1947043463
	.word	852879335
	.word	1133234376
	.word	1500395319
	.word	-1210421907
	.word	-1946055283
	.word	1689376213
	.word	-761508274
	.word	-532043351
	.word	-1260884884
	.word	-89369002
	.word	133428468
	.word	634383082
	.word	-1345690267
	.word	-1896580486
	.word	-381178194
	.word	403703816
	.word	-714097990
	.word	-1997506440
	.word	1867130149
	.word	1918643758
	.word	607656988
	.word	-245913946
	.word	-948718412
	.word	1368901318
	.word	600565992
	.word	2090982877
	.word	-1662487436
	.word	557719327
	.word	-577352885
	.word	-597574211
	.word	-2045932661
	.word	-2062579062
	.word	-1864339344
	.word	1115438654
	.word	-999180875
	.word	-1429445018
	.word	-661632952
	.word	84280067
	.word	33027830
	.word	303828494
	.word	-1547542175
	.word	1600795957
	.word	-106014889
	.word	-798377543
	.word	-1860729210
	.word	1486471617
	.word	658119965
	.word	-1188585826
	.word	953803233
	.word	334231800
	.word	-1288988520
	.word	857870609
	.word	-1143838359
	.word	1890179545
	.word	-1995993458
	.word	-1489791852
	.word	-1238525029
	.word	574365214
	.word	-1844082809
	.word	550103529
	.word	1233637070
	.word	-5614251
	.word	2018519080
	.word	2057691103
	.word	-1895592820
	.word	-128343647
	.word	-2146858615
	.word	387583245
	.word	-630865985
	.word	836232934
	.word	-964410814
	.word	-1194301336
	.word	-1014873791
	.word	-1339450983
	.word	2002398509
	.word	287182607
	.word	-881086288
	.word	-56077228
	.word	-697451589
	.word	975967766
.section .rodata.a4.Te0,"a",@progbits
	.align 2
	.type	Te0, @object
	.size	Te0, 1024
Te0:
	.word	-966564955
	.word	-126059388
	.word	-294160487
	.word	-159679603
	.word	-855539
	.word	-697603139
	.word	-563122255
	.word	-1849309868
	.word	1613770832
	.word	33620227
	.word	-832084055
	.word	1445669757
	.word	-402719207
	.word	-1244145822
	.word	1303096294
	.word	-327780710
	.word	-1882535355
	.word	528646813
	.word	-1983264448
	.word	-92439161
	.word	-268764651
	.word	-1302767125
	.word	-1907931191
	.word	-68095989
	.word	1101901292
	.word	-1277897625
	.word	1604494077
	.word	1169141738
	.word	597466303
	.word	1403299063
	.word	-462261610
	.word	-1681866661
	.word	1974974402
	.word	-503448292
	.word	1033081774
	.word	1277568618
	.word	1815492186
	.word	2118074177
	.word	-168298750
	.word	-2083730353
	.word	1748251740
	.word	1369810420
	.word	-773462732
	.word	-101584632
	.word	-495881837
	.word	-1411852173
	.word	1647391059
	.word	706024767
	.word	134480908
	.word	-1782069422
	.word	1176707941
	.word	-1648114850
	.word	806885416
	.word	932615841
	.word	168101135
	.word	798661301
	.word	235341577
	.word	605164086
	.word	461406363
	.word	-538779075
	.word	-840176858
	.word	1311188841
	.word	2142417613
	.word	-361400929
	.word	302582043
	.word	495158174
	.word	1479289972
	.word	874125870
	.word	907746093
	.word	-596742478
	.word	-1269146898
	.word	1537253627
	.word	-1538108682
	.word	1983593293
	.word	-1210657183
	.word	2108928974
	.word	1378429307
	.word	-572267714
	.word	1580150641
	.word	327451799
	.word	-1504488459
	.word	-1177431704
	.word	0
	.word	-1041371860
	.word	1075847264
	.word	-469959649
	.word	2041688520
	.word	-1235526675
	.word	-731223362
	.word	-1916023994
	.word	1740553945
	.word	1916352843
	.word	-1807070498
	.word	-1739830060
	.word	-1336387352
	.word	-2049978550
	.word	-1143943061
	.word	-974131414
	.word	1336584933
	.word	-302253290
	.word	-2042412091
	.word	-1706209833
	.word	1714631509
	.word	293963156
	.word	-1975171633
	.word	-369493744
	.word	67240454
	.word	-25198719
	.word	-1605349136
	.word	2017213508
	.word	631218106
	.word	1269344483
	.word	-1571728909
	.word	1571005438
	.word	-2143272768
	.word	93294474
	.word	1066570413
	.word	563977660
	.word	1882732616
	.word	-235539196
	.word	1673313503
	.word	2008463041
	.word	-1344611723
	.word	1109467491
	.word	537923632
	.word	-436207846
	.word	-34344178
	.word	-1076702611
	.word	-2117218996
	.word	403442708
	.word	638784309
	.word	-1007883217
	.word	-1101045791
	.word	899127202
	.word	-2008791860
	.word	773265209
	.word	-1815821225
	.word	1437050866
	.word	-58818942
	.word	2050833735
	.word	-932944724
	.word	-1168286233
	.word	840505643
	.word	-428641387
	.word	-1067425632
	.word	427917720
	.word	-1638969391
	.word	-1545806721
	.word	1143087718
	.word	1412049534
	.word	999329963
	.word	193497219
	.word	-1941551414
	.word	-940642775
	.word	1807268051
	.word	672404540
	.word	-1478566279
	.word	-1134666014
	.word	369822493
	.word	-1378100362
	.word	-606019525
	.word	1681011286
	.word	1949973070
	.word	336202270
	.word	-1840690725
	.word	201721354
	.word	1210328172
	.word	-1201906460
	.word	-1614626211
	.word	-1110191250
	.word	1135389935
	.word	-1000185178
	.word	965841320
	.word	831886756
	.word	-739974089
	.word	-226920053
	.word	-706222286
	.word	-1949775805
	.word	1849112409
	.word	-630362697
	.word	26054028
	.word	-1311386268
	.word	-1672589614
	.word	1235855840
	.word	-663982924
	.word	-1403627782
	.word	-202050553
	.word	-806688219
	.word	-899324497
	.word	-193299826
	.word	1202630377
	.word	268961816
	.word	1874508501
	.word	-260540280
	.word	1243948399
	.word	1546530418
	.word	941366308
	.word	1470539505
	.word	1941222599
	.word	-1748580783
	.word	-873928669
	.word	-1579295364
	.word	-395021156
	.word	1042226977
	.word	-1773450275
	.word	1639824860
	.word	227249030
	.word	260737669
	.word	-529502064
	.word	2084453954
	.word	1907733956
	.word	-865704278
	.word	-1874310952
	.word	100860677
	.word	-134810111
	.word	470683154
	.word	-1033805405
	.word	1781871967
	.word	-1370007559
	.word	1773779408
	.word	394692241
	.word	-1715355304
	.word	974986535
	.word	664706745
	.word	-639508168
	.word	-336005101
	.word	731420851
	.word	571543859
	.word	-764843589
	.word	-1445340816
	.word	126783113
	.word	865375399
	.word	765172662
	.word	1008606754
	.word	361203602
	.word	-907417312
	.word	-2016489911
	.word	-1437248001
	.word	1344809080
	.word	-1512054918
	.word	59542671
	.word	1503764984
	.word	160008576
	.word	437062935
	.word	1707065306
	.word	-672733647
	.word	-2076032314
	.word	-798463816
	.word	-2109652541
	.word	697932208
	.word	1512910199
	.word	504303377
	.word	2075177163
	.word	-1470868228
	.word	1841019862
	.word	739644986
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
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB5
	.uaword	.LFE5-.LFB5
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
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xb5e
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\EAS\\EAS_L.c"
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
	.uaword	0x1b9
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
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
	.uaword	0x213
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x4
	.byte	0x4
	.byte	0x1
	.byte	0x36
	.uaword	0x293
	.uleb128 0x5
	.string	"dword"
	.byte	0x1
	.byte	0x38
	.uaword	0x205
	.uleb128 0x5
	.string	"byte"
	.byte	0x1
	.byte	0x39
	.uaword	0x293
	.byte	0
	.uleb128 0x6
	.uaword	0x1ac
	.uaword	0x2a3
	.uleb128 0x7
	.uaword	0x2a3
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x3
	.string	"ConvData_t"
	.byte	0x1
	.byte	0x3a
	.uaword	0x271
	.uleb128 0x8
	.byte	0x1
	.string	"EAS_vidArrayToLong"
	.byte	0x1
	.uahalf	0x1f6
	.byte	0x1
	.byte	0x1
	.uaword	0x30e
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x1f6
	.uaword	0x30e
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x1f6
	.uaword	0x319
	.uleb128 0xa
	.string	"i"
	.byte	0x1
	.uahalf	0x1f8
	.uaword	0x1ac
	.uleb128 0xb
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x1f9
	.uaword	0x2af
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.uaword	0x314
	.uleb128 0xd
	.uaword	0x1ac
	.uleb128 0xc
	.byte	0x4
	.uaword	0x205
	.uleb128 0x8
	.byte	0x1
	.string	"EAS_vidLongToArray"
	.byte	0x1
	.uahalf	0x206
	.byte	0x1
	.byte	0x1
	.uaword	0x36c
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x206
	.uaword	0x205
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x206
	.uaword	0x36c
	.uleb128 0xa
	.string	"i"
	.byte	0x1
	.uahalf	0x208
	.uaword	0x1ac
	.uleb128 0xb
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x209
	.uaword	0x2af
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.uaword	0x1ac
	.uleb128 0xe
	.string	"EAS_XTEAEncipher"
	.byte	0x1
	.uahalf	0x1b2
	.byte	0x1
	.byte	0x1
	.uaword	0x3ea
	.uleb128 0x9
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x1b2
	.uaword	0x213
	.uleb128 0xf
	.string	"v"
	.byte	0x1
	.uahalf	0x1b2
	.uaword	0x319
	.uleb128 0xf
	.string	"key"
	.byte	0x1
	.uahalf	0x1b2
	.uaword	0x3ea
	.uleb128 0xa
	.string	"i"
	.byte	0x1
	.uahalf	0x1b4
	.uaword	0x213
	.uleb128 0xa
	.string	"v0"
	.byte	0x1
	.uahalf	0x1b5
	.uaword	0x205
	.uleb128 0xa
	.string	"v1"
	.byte	0x1
	.uahalf	0x1b5
	.uaword	0x205
	.uleb128 0xa
	.string	"sum"
	.byte	0x1
	.uahalf	0x1b5
	.uaword	0x205
	.uleb128 0xa
	.string	"delta"
	.byte	0x1
	.uahalf	0x1b5
	.uaword	0x205
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.uaword	0x3f0
	.uleb128 0xd
	.uaword	0x205
	.uleb128 0x10
	.byte	0x1
	.string	"EAS_vidEncrypt"
	.byte	0x1
	.uahalf	0x1df
	.byte	0x1
	.uaword	.LFB2
	.uaword	.LFE2
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x4a5
	.uleb128 0x11
	.string	"Parm1"
	.byte	0x1
	.uahalf	0x1df
	.uaword	0x4a5
	.byte	0x1
	.byte	0x64
	.uleb128 0x11
	.string	"Parm2"
	.byte	0x1
	.uahalf	0x1df
	.uaword	0x4a5
	.byte	0x1
	.byte	0x65
	.uleb128 0x11
	.string	"Parm3"
	.byte	0x1
	.uahalf	0x1df
	.uaword	0x4a5
	.byte	0x1
	.byte	0x66
	.uleb128 0x12
	.uaword	0x372
	.uaword	.LBB28
	.uaword	.LBE28
	.byte	0x1
	.uahalf	0x1e1
	.uleb128 0x13
	.uaword	0x3a3
	.byte	0x1
	.byte	0x66
	.uleb128 0x13
	.uaword	0x399
	.byte	0x1
	.byte	0x65
	.uleb128 0x13
	.uaword	0x38d
	.byte	0x1
	.byte	0x64
	.uleb128 0x14
	.uaword	.LBB29
	.uaword	.LBE29
	.uleb128 0x15
	.uaword	0x3af
	.uaword	.LLST0
	.uleb128 0x16
	.uaword	0x3b9
	.byte	0x1
	.byte	0x53
	.uleb128 0x16
	.uaword	0x3c4
	.byte	0x1
	.byte	0x52
	.uleb128 0x15
	.uaword	0x3cf
	.uaword	.LLST1
	.uleb128 0x17
	.uaword	0x3db
	.sleb128 -1640531527
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.byte	0x4
	.uleb128 0xe
	.string	"EAS_XTEADecipher"
	.byte	0x1
	.uahalf	0x1cf
	.byte	0x1
	.byte	0x1
	.uaword	0x51f
	.uleb128 0x9
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x1cf
	.uaword	0x213
	.uleb128 0xf
	.string	"v"
	.byte	0x1
	.uahalf	0x1cf
	.uaword	0x319
	.uleb128 0xf
	.string	"key"
	.byte	0x1
	.uahalf	0x1cf
	.uaword	0x3ea
	.uleb128 0xa
	.string	"i"
	.byte	0x1
	.uahalf	0x1d1
	.uaword	0x213
	.uleb128 0xa
	.string	"v0"
	.byte	0x1
	.uahalf	0x1d2
	.uaword	0x205
	.uleb128 0xa
	.string	"v1"
	.byte	0x1
	.uahalf	0x1d2
	.uaword	0x205
	.uleb128 0xa
	.string	"delta"
	.byte	0x1
	.uahalf	0x1d2
	.uaword	0x205
	.uleb128 0xa
	.string	"sum"
	.byte	0x1
	.uahalf	0x1d2
	.uaword	0x205
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.string	"EAS_vidDecrypt"
	.byte	0x1
	.uahalf	0x1e4
	.byte	0x1
	.uaword	.LFB3
	.uaword	.LFE3
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x5cf
	.uleb128 0x11
	.string	"Parm1"
	.byte	0x1
	.uahalf	0x1e4
	.uaword	0x4a5
	.byte	0x1
	.byte	0x64
	.uleb128 0x11
	.string	"Parm2"
	.byte	0x1
	.uahalf	0x1e4
	.uaword	0x4a5
	.byte	0x1
	.byte	0x65
	.uleb128 0x11
	.string	"Parm3"
	.byte	0x1
	.uahalf	0x1e4
	.uaword	0x4a5
	.byte	0x1
	.byte	0x66
	.uleb128 0x12
	.uaword	0x4a7
	.uaword	.LBB32
	.uaword	.LBE32
	.byte	0x1
	.uahalf	0x1e6
	.uleb128 0x13
	.uaword	0x4d8
	.byte	0x1
	.byte	0x66
	.uleb128 0x13
	.uaword	0x4ce
	.byte	0x1
	.byte	0x65
	.uleb128 0x13
	.uaword	0x4c2
	.byte	0x1
	.byte	0x64
	.uleb128 0x14
	.uaword	.LBB33
	.uaword	.LBE33
	.uleb128 0x15
	.uaword	0x4e4
	.uaword	.LLST2
	.uleb128 0x16
	.uaword	0x4ee
	.byte	0x1
	.byte	0x53
	.uleb128 0x16
	.uaword	0x4f9
	.byte	0x1
	.byte	0x52
	.uleb128 0x17
	.uaword	0x504
	.sleb128 -1640531527
	.uleb128 0x15
	.uaword	0x512
	.uaword	.LLST3
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.uaword	0x2c1
	.uaword	.LFB4
	.uaword	.LFE4
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x605
	.uleb128 0x13
	.uaword	0x2df
	.byte	0x1
	.byte	0x64
	.uleb128 0x13
	.uaword	0x2eb
	.byte	0x1
	.byte	0x65
	.uleb128 0x15
	.uaword	0x2f7
	.uaword	.LLST4
	.uleb128 0x15
	.uaword	0x301
	.uaword	.LLST5
	.byte	0
	.uleb128 0x19
	.uaword	0x31f
	.uaword	.LFB5
	.uaword	.LFE5
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x637
	.uleb128 0x13
	.uaword	0x33d
	.byte	0x1
	.byte	0x54
	.uleb128 0x13
	.uaword	0x349
	.byte	0x1
	.byte	0x64
	.uleb128 0x15
	.uaword	0x355
	.uaword	.LLST6
	.uleb128 0x1a
	.uaword	0x35f
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.string	"EAS_vidAES128KeySetupEnc"
	.byte	0x1
	.uahalf	0x225
	.byte	0x1
	.uaword	.LFB6
	.uaword	.LFE6
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x79e
	.uleb128 0x1b
	.string	"rk"
	.byte	0x1
	.uahalf	0x225
	.uaword	0x319
	.uaword	.LLST7
	.uleb128 0x1b
	.string	"cipherKey"
	.byte	0x1
	.uahalf	0x225
	.uaword	0x30e
	.uaword	.LLST8
	.uleb128 0x1c
	.string	"i"
	.byte	0x1
	.uahalf	0x227
	.uaword	0x1ac
	.uaword	.LLST9
	.uleb128 0xb
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x228
	.uaword	0x2af
	.uleb128 0x1d
	.uaword	0x2c1
	.uaword	.LBB34
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.uahalf	0x22b
	.uaword	0x6e4
	.uleb128 0x1e
	.uaword	0x2eb
	.uaword	.LLST10
	.uleb128 0x1e
	.uaword	0x2df
	.uaword	.LLST8
	.uleb128 0x1f
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x15
	.uaword	0x2f7
	.uaword	.LLST12
	.uleb128 0x15
	.uaword	0x301
	.uaword	.LLST13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0x2c1
	.uaword	.LBB38
	.uaword	.Ldebug_ranges0+0x20
	.byte	0x1
	.uahalf	0x22c
	.uaword	0x723
	.uleb128 0x1e
	.uaword	0x2eb
	.uaword	.LLST14
	.uleb128 0x1e
	.uaword	0x2df
	.uaword	.LLST15
	.uleb128 0x1f
	.uaword	.Ldebug_ranges0+0x20
	.uleb128 0x15
	.uaword	0x2f7
	.uaword	.LLST16
	.uleb128 0x15
	.uaword	0x301
	.uaword	.LLST17
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0x2c1
	.uaword	.LBB42
	.uaword	.Ldebug_ranges0+0x38
	.byte	0x1
	.uahalf	0x22d
	.uaword	0x762
	.uleb128 0x1e
	.uaword	0x2eb
	.uaword	.LLST18
	.uleb128 0x1e
	.uaword	0x2df
	.uaword	.LLST19
	.uleb128 0x1f
	.uaword	.Ldebug_ranges0+0x38
	.uleb128 0x15
	.uaword	0x2f7
	.uaword	.LLST20
	.uleb128 0x15
	.uaword	0x301
	.uaword	.LLST21
	.byte	0
	.byte	0
	.uleb128 0x20
	.uaword	0x2c1
	.uaword	.LBB49
	.uaword	.Ldebug_ranges0+0x58
	.byte	0x1
	.uahalf	0x22e
	.uleb128 0x1e
	.uaword	0x2eb
	.uaword	.LLST22
	.uleb128 0x1e
	.uaword	0x2df
	.uaword	.LLST23
	.uleb128 0x1f
	.uaword	.Ldebug_ranges0+0x58
	.uleb128 0x15
	.uaword	0x2f7
	.uaword	.LLST24
	.uleb128 0x15
	.uaword	0x301
	.uaword	.LLST25
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.string	"EAS_vidAES128Encrypt"
	.byte	0x1
	.uahalf	0x251
	.byte	0x1
	.uaword	.LFB7
	.uaword	.LFE7
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xaa9
	.uleb128 0x1b
	.string	"rk"
	.byte	0x1
	.uahalf	0x251
	.uaword	0x3ea
	.uaword	.LLST26
	.uleb128 0x1b
	.string	"pt"
	.byte	0x1
	.uahalf	0x251
	.uaword	0x30e
	.uaword	.LLST27
	.uleb128 0x11
	.string	"ct"
	.byte	0x1
	.uahalf	0x251
	.uaword	0x36c
	.byte	0x1
	.byte	0x66
	.uleb128 0x1c
	.string	"locS0_st"
	.byte	0x1
	.uahalf	0x253
	.uaword	0x2af
	.uaword	.LLST28
	.uleb128 0x1c
	.string	"locS1_st"
	.byte	0x1
	.uahalf	0x253
	.uaword	0x2af
	.uaword	.LLST29
	.uleb128 0x1c
	.string	"locS2_st"
	.byte	0x1
	.uahalf	0x253
	.uaword	0x2af
	.uaword	.LLST30
	.uleb128 0xa
	.string	"locS3_st"
	.byte	0x1
	.uahalf	0x253
	.uaword	0x2af
	.uleb128 0xa
	.string	"locT0_st"
	.byte	0x1
	.uahalf	0x253
	.uaword	0x2af
	.uleb128 0xa
	.string	"locT1_st"
	.byte	0x1
	.uahalf	0x253
	.uaword	0x2af
	.uleb128 0xa
	.string	"locT2_st"
	.byte	0x1
	.uahalf	0x253
	.uaword	0x2af
	.uleb128 0xa
	.string	"locT3_st"
	.byte	0x1
	.uahalf	0x253
	.uaword	0x2af
	.uleb128 0xa
	.string	"r"
	.byte	0x1
	.uahalf	0x254
	.uaword	0x1ac
	.uleb128 0x1c
	.string	"locSrc"
	.byte	0x1
	.uahalf	0x255
	.uaword	0xaa9
	.uaword	.LLST31
	.uleb128 0x1c
	.string	"locDst"
	.byte	0x1
	.uahalf	0x256
	.uaword	0xaa9
	.uaword	.LLST32
	.uleb128 0x1d
	.uaword	0x2c1
	.uaword	.LBB54
	.uaword	.Ldebug_ranges0+0x70
	.byte	0x1
	.uahalf	0x258
	.uaword	0x8fa
	.uleb128 0x13
	.uaword	0x2eb
	.byte	0x6
	.byte	0xf2
	.uaword	.Ldebug_info0+2194
	.sleb128 0
	.uleb128 0x1e
	.uaword	0x2df
	.uaword	.LLST27
	.uleb128 0x1f
	.uaword	.Ldebug_ranges0+0x70
	.uleb128 0x15
	.uaword	0x2f7
	.uaword	.LLST34
	.uleb128 0x15
	.uaword	0x301
	.uaword	.LLST35
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0x2c1
	.uaword	.LBB59
	.uaword	.Ldebug_ranges0+0x98
	.byte	0x1
	.uahalf	0x259
	.uaword	0x93c
	.uleb128 0x13
	.uaword	0x2eb
	.byte	0x6
	.byte	0xf2
	.uaword	.Ldebug_info0+2194
	.sleb128 4
	.uleb128 0x1e
	.uaword	0x2df
	.uaword	.LLST36
	.uleb128 0x1f
	.uaword	.Ldebug_ranges0+0x98
	.uleb128 0x15
	.uaword	0x2f7
	.uaword	.LLST37
	.uleb128 0x15
	.uaword	0x301
	.uaword	.LLST38
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0x2c1
	.uaword	.LBB63
	.uaword	.Ldebug_ranges0+0xb0
	.byte	0x1
	.uahalf	0x25a
	.uaword	0x97e
	.uleb128 0x13
	.uaword	0x2eb
	.byte	0x6
	.byte	0xf2
	.uaword	.Ldebug_info0+2194
	.sleb128 8
	.uleb128 0x1e
	.uaword	0x2df
	.uaword	.LLST39
	.uleb128 0x1f
	.uaword	.Ldebug_ranges0+0xb0
	.uleb128 0x15
	.uaword	0x2f7
	.uaword	.LLST40
	.uleb128 0x15
	.uaword	0x301
	.uaword	.LLST41
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0x2c1
	.uaword	.LBB69
	.uaword	.Ldebug_ranges0+0xd8
	.byte	0x1
	.uahalf	0x25b
	.uaword	0x9c0
	.uleb128 0x13
	.uaword	0x2eb
	.byte	0x6
	.byte	0xf2
	.uaword	.Ldebug_info0+2194
	.sleb128 12
	.uleb128 0x1e
	.uaword	0x2df
	.uaword	.LLST42
	.uleb128 0x1f
	.uaword	.Ldebug_ranges0+0xd8
	.uleb128 0x15
	.uaword	0x2f7
	.uaword	.LLST43
	.uleb128 0x15
	.uaword	0x301
	.uaword	.LLST44
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0x31f
	.uaword	.LBB84
	.uaword	.Ldebug_ranges0+0x108
	.byte	0x1
	.uahalf	0x2c1
	.uaword	0x9fb
	.uleb128 0x1e
	.uaword	0x349
	.uaword	.LLST45
	.uleb128 0x1e
	.uaword	0x33d
	.uaword	.LLST46
	.uleb128 0x1f
	.uaword	.Ldebug_ranges0+0x108
	.uleb128 0x15
	.uaword	0x355
	.uaword	.LLST47
	.uleb128 0x1a
	.uaword	0x35f
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0x31f
	.uaword	.LBB88
	.uaword	.Ldebug_ranges0+0x128
	.byte	0x1
	.uahalf	0x2c0
	.uaword	0xa32
	.uleb128 0x1e
	.uaword	0x349
	.uaword	.LLST48
	.uleb128 0x21
	.uaword	0x33d
	.uleb128 0x1f
	.uaword	.Ldebug_ranges0+0x128
	.uleb128 0x15
	.uaword	0x355
	.uaword	.LLST49
	.uleb128 0x1a
	.uaword	0x35f
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0x31f
	.uaword	.LBB92
	.uaword	.Ldebug_ranges0+0x148
	.byte	0x1
	.uahalf	0x2c2
	.uaword	0xa6d
	.uleb128 0x1e
	.uaword	0x349
	.uaword	.LLST50
	.uleb128 0x1e
	.uaword	0x33d
	.uaword	.LLST51
	.uleb128 0x1f
	.uaword	.Ldebug_ranges0+0x148
	.uleb128 0x15
	.uaword	0x355
	.uaword	.LLST52
	.uleb128 0x1a
	.uaword	0x35f
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x31f
	.uaword	.LBB100
	.uaword	.LBE100
	.byte	0x1
	.uahalf	0x2c3
	.uleb128 0x1e
	.uaword	0x349
	.uaword	.LLST53
	.uleb128 0x1e
	.uaword	0x33d
	.uaword	.LLST54
	.uleb128 0x14
	.uaword	.LBB101
	.uaword	.LBE101
	.uleb128 0x15
	.uaword	0x355
	.uaword	.LLST55
	.uleb128 0x1a
	.uaword	0x35f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.uaword	0x205
	.uaword	0xab9
	.uleb128 0x7
	.uaword	0x2a3
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.uaword	0x205
	.uaword	0xac9
	.uleb128 0x7
	.uaword	0x2a3
	.byte	0xff
	.byte	0
	.uleb128 0x22
	.string	"Te0"
	.byte	0x1
	.byte	0x42
	.uaword	0xada
	.byte	0x5
	.byte	0x3
	.uaword	Te0
	.uleb128 0xd
	.uaword	0xab9
	.uleb128 0x22
	.string	"Te1"
	.byte	0x1
	.byte	0x84
	.uaword	0xaf0
	.byte	0x5
	.byte	0x3
	.uaword	Te1
	.uleb128 0xd
	.uaword	0xab9
	.uleb128 0x22
	.string	"Te2"
	.byte	0x1
	.byte	0xc6
	.uaword	0xb06
	.byte	0x5
	.byte	0x3
	.uaword	Te2
	.uleb128 0xd
	.uaword	0xab9
	.uleb128 0x23
	.string	"Te3"
	.byte	0x1
	.uahalf	0x108
	.uaword	0xb1d
	.byte	0x5
	.byte	0x3
	.uaword	Te3
	.uleb128 0xd
	.uaword	0xab9
	.uleb128 0x23
	.string	"Te4"
	.byte	0x1
	.uahalf	0x14a
	.uaword	0xb34
	.byte	0x5
	.byte	0x3
	.uaword	Te4
	.uleb128 0xd
	.uaword	0xab9
	.uleb128 0x6
	.uaword	0x205
	.uaword	0xb49
	.uleb128 0x7
	.uaword	0x2a3
	.byte	0x9
	.byte	0
	.uleb128 0x23
	.string	"rcon"
	.byte	0x1
	.uahalf	0x18c
	.uaword	0xb5c
	.byte	0x5
	.byte	0x3
	.uaword	rcon
	.uleb128 0xd
	.uaword	0xb39
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL3-.text
	.uaword	.LVL4-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL3-.text
	.uaword	.LVL4-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL4-.text
	.uaword	.LVL6-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL6-.text
	.uaword	.LVL7-.text
	.uahalf	0x5
	.byte	0x7f
	.sleb128 -31161
	.byte	0x9f
	.uaword	.LVL7-.text
	.uaword	.LVL9-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL14-.text
	.uaword	.LVL15-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL14-.text
	.uaword	.LVL17-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL17-.text
	.uaword	.LVL18-.text
	.uahalf	0x5
	.byte	0x7f
	.sleb128 31161
	.byte	0x9f
	.uaword	.LVL18-.text
	.uaword	.LFE3-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL20-.text
	.uaword	.LVL22-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL22-.text
	.uaword	.LVL23-.text
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL23-.text
	.uaword	.LVL24-.text
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL24-.text
	.uaword	.LVL25-.text
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL25-.text
	.uaword	.LFE4-.text
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL22-.text
	.uaword	.LFE4-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL26-.text
	.uaword	.LVL27-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL27-.text
	.uaword	.LVL28-.text
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL28-.text
	.uaword	.LVL29-.text
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL29-.text
	.uaword	.LFE5-.text
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL30-.text
	.uaword	.LVL62-.text
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL62-.text
	.uaword	.LFE6-.text
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL30-.text
	.uaword	.LVL53-.text
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL53-.text
	.uaword	.LFE6-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL30-.text
	.uaword	.LVL55-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL55-.text
	.uaword	.LVL58-.text
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL58-.text
	.uaword	.LVL61-.text
	.uahalf	0x3
	.byte	0x75
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL30-.text
	.uaword	.LVL55-.text
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL55-.text
	.uaword	.LFE6-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL30-.text
	.uaword	.LVL32-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL32-.text
	.uaword	.LVL34-.text
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL34-.text
	.uaword	.LVL36-.text
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL36-.text
	.uaword	.LVL37-.text
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL37-.text
	.uaword	.LFE6-.text
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL32-.text
	.uaword	.LVL57-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL38-.text
	.uaword	.LVL55-.text
	.uahalf	0x3
	.byte	0x84
	.sleb128 4
	.byte	0x9f
	.uaword	.LVL55-.text
	.uaword	.LFE6-.text
	.uahalf	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x23
	.uleb128 0x4
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL38-.text
	.uaword	.LVL53-.text
	.uahalf	0x3
	.byte	0x85
	.sleb128 4
	.byte	0x9f
	.uaword	.LVL53-.text
	.uaword	.LFE6-.text
	.uahalf	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x23
	.uleb128 0x4
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL38-.text
	.uaword	.LVL39-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL39-.text
	.uaword	.LVL40-.text
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL40-.text
	.uaword	.LVL41-.text
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL41-.text
	.uaword	.LVL42-.text
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL42-.text
	.uaword	.LFE6-.text
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL39-.text
	.uaword	.LVL59-.text
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL43-.text
	.uaword	.LVL55-.text
	.uahalf	0x3
	.byte	0x84
	.sleb128 8
	.byte	0x9f
	.uaword	.LVL55-.text
	.uaword	.LFE6-.text
	.uahalf	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x23
	.uleb128 0x8
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL43-.text
	.uaword	.LVL53-.text
	.uahalf	0x3
	.byte	0x85
	.sleb128 8
	.byte	0x9f
	.uaword	.LVL53-.text
	.uaword	.LFE6-.text
	.uahalf	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x23
	.uleb128 0x8
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL43-.text
	.uaword	.LVL44-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL44-.text
	.uaword	.LVL45-.text
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL45-.text
	.uaword	.LVL46-.text
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL46-.text
	.uaword	.LVL47-.text
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL47-.text
	.uaword	.LFE6-.text
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL44-.text
	.uaword	.LVL60-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL49-.text
	.uaword	.LVL55-.text
	.uahalf	0x3
	.byte	0x84
	.sleb128 12
	.byte	0x9f
	.uaword	.LVL55-.text
	.uaword	.LFE6-.text
	.uahalf	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x23
	.uleb128 0xc
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL49-.text
	.uaword	.LVL53-.text
	.uahalf	0x3
	.byte	0x85
	.sleb128 12
	.byte	0x9f
	.uaword	.LVL53-.text
	.uaword	.LFE6-.text
	.uahalf	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x23
	.uleb128 0xc
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL49-.text
	.uaword	.LVL50-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL50-.text
	.uaword	.LVL51-.text
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL51-.text
	.uaword	.LVL52-.text
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL52-.text
	.uaword	.LVL54-.text
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL54-.text
	.uaword	.LFE6-.text
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL50-.text
	.uaword	.LVL56-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL63-.text
	.uaword	.LVL88-.text
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL88-.text
	.uaword	.LVL95-.text
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL112-.text
	.uaword	.LFE7-.text
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL63-.text
	.uaword	.LVL83-.text
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL83-.text
	.uaword	.LFE7-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL89-.text
	.uaword	.LVL92-.text
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL88-.text
	.uaword	.LVL93-.text
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL90-.text
	.uaword	.LVL91-.text
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL71-.text
	.uaword	.LVL75-.text
	.uahalf	0x5
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0xc
	.uaword	.LVL75-.text
	.uaword	.LVL79-.text
	.uahalf	0x8
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.uaword	.LVL79-.text
	.uaword	.LVL84-.text
	.uahalf	0xb
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL84-.text
	.uaword	.LVL85-.text
	.uahalf	0xc
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL85-.text
	.uaword	.LVL86-.text
	.uahalf	0xb
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL86-.text
	.uaword	.LVL87-.text
	.uahalf	0x8
	.byte	0x93
	.uleb128 0x8
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL87-.text
	.uaword	.LVL88-.text
	.uahalf	0x5
	.byte	0x93
	.uleb128 0xc
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL96-.text
	.uaword	.LVL97-.text
	.uahalf	0x7
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.uaword	.LVL97-.text
	.uaword	.LVL98-.text
	.uahalf	0xa
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL98-.text
	.uaword	.LVL112-.text
	.uahalf	0xb
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL63-.text
	.uaword	.LVL65-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL65-.text
	.uaword	.LVL67-.text
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL67-.text
	.uaword	.LVL69-.text
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL69-.text
	.uaword	.LVL71-.text
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL71-.text
	.uaword	.LFE7-.text
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL65-.text
	.uaword	.LVL85-.text
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL71-.text
	.uaword	.LVL83-.text
	.uahalf	0x3
	.byte	0x85
	.sleb128 4
	.byte	0x9f
	.uaword	.LVL83-.text
	.uaword	.LFE7-.text
	.uahalf	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x23
	.uleb128 0x4
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL71-.text
	.uaword	.LVL72-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL72-.text
	.uaword	.LVL73-.text
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL73-.text
	.uaword	.LVL74-.text
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL74-.text
	.uaword	.LVL75-.text
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL75-.text
	.uaword	.LFE7-.text
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL72-.text
	.uaword	.LVL86-.text
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL75-.text
	.uaword	.LVL83-.text
	.uahalf	0x3
	.byte	0x85
	.sleb128 8
	.byte	0x9f
	.uaword	.LVL83-.text
	.uaword	.LFE7-.text
	.uahalf	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x23
	.uleb128 0x8
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL75-.text
	.uaword	.LVL76-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL76-.text
	.uaword	.LVL77-.text
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL77-.text
	.uaword	.LVL78-.text
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL78-.text
	.uaword	.LVL79-.text
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL79-.text
	.uaword	.LFE7-.text
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL76-.text
	.uaword	.LVL87-.text
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST42:
	.uaword	.LVL79-.text
	.uaword	.LVL83-.text
	.uahalf	0x3
	.byte	0x85
	.sleb128 12
	.byte	0x9f
	.uaword	.LVL83-.text
	.uaword	.LFE7-.text
	.uahalf	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x23
	.uleb128 0xc
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST43:
	.uaword	.LVL79-.text
	.uaword	.LVL80-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL80-.text
	.uaword	.LVL81-.text
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL81-.text
	.uaword	.LVL82-.text
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL82-.text
	.uaword	.LVL84-.text
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL84-.text
	.uaword	.LFE7-.text
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST44:
	.uaword	.LVL80-.text
	.uaword	.LVL88-.text
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST45:
	.uaword	.LVL102-.text
	.uaword	.LVL112-.text
	.uahalf	0x3
	.byte	0x86
	.sleb128 4
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST46:
	.uaword	.LVL102-.text
	.uaword	.LVL112-.text
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST47:
	.uaword	.LVL102-.text
	.uaword	.LVL103-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL103-.text
	.uaword	.LVL104-.text
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL104-.text
	.uaword	.LVL105-.text
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL105-.text
	.uaword	.LVL112-.text
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST48:
	.uaword	.LVL98-.text
	.uaword	.LVL112-.text
	.uahalf	0x1
	.byte	0x66
	.uaword	0
	.uaword	0
.LLST49:
	.uaword	.LVL99-.text
	.uaword	.LVL100-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL100-.text
	.uaword	.LVL101-.text
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL101-.text
	.uaword	.LVL102-.text
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL102-.text
	.uaword	.LVL112-.text
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST50:
	.uaword	.LVL105-.text
	.uaword	.LVL112-.text
	.uahalf	0x3
	.byte	0x86
	.sleb128 8
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST51:
	.uaword	.LVL105-.text
	.uaword	.LVL112-.text
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST52:
	.uaword	.LVL105-.text
	.uaword	.LVL106-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL106-.text
	.uaword	.LVL107-.text
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL107-.text
	.uaword	.LVL108-.text
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL108-.text
	.uaword	.LVL112-.text
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST53:
	.uaword	.LVL108-.text
	.uaword	.LVL112-.text
	.uahalf	0x3
	.byte	0x86
	.sleb128 12
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST54:
	.uaword	.LVL108-.text
	.uaword	.LVL112-.text
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST55:
	.uaword	.LVL108-.text
	.uaword	.LVL109-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL109-.text
	.uaword	.LVL110-.text
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL110-.text
	.uaword	.LVL111-.text
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL111-.text
	.uaword	.LVL112-.text
	.uahalf	0x2
	.byte	0x34
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
	.uaword	.LBB34-.Ltext0
	.uaword	.LBE34-.Ltext0
	.uaword	.LBB41-.Ltext0
	.uaword	.LBE41-.Ltext0
	.uaword	.LBB46-.Ltext0
	.uaword	.LBE46-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB38-.Ltext0
	.uaword	.LBE38-.Ltext0
	.uaword	.LBB47-.Ltext0
	.uaword	.LBE47-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB42-.Ltext0
	.uaword	.LBE42-.Ltext0
	.uaword	.LBB48-.Ltext0
	.uaword	.LBE48-.Ltext0
	.uaword	.LBB52-.Ltext0
	.uaword	.LBE52-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB49-.Ltext0
	.uaword	.LBE49-.Ltext0
	.uaword	.LBB53-.Ltext0
	.uaword	.LBE53-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB54-.Ltext0
	.uaword	.LBE54-.Ltext0
	.uaword	.LBB62-.Ltext0
	.uaword	.LBE62-.Ltext0
	.uaword	.LBB68-.Ltext0
	.uaword	.LBE68-.Ltext0
	.uaword	.LBB75-.Ltext0
	.uaword	.LBE75-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB59-.Ltext0
	.uaword	.LBE59-.Ltext0
	.uaword	.LBB76-.Ltext0
	.uaword	.LBE76-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB63-.Ltext0
	.uaword	.LBE63-.Ltext0
	.uaword	.LBB77-.Ltext0
	.uaword	.LBE77-.Ltext0
	.uaword	.LBB78-.Ltext0
	.uaword	.LBE78-.Ltext0
	.uaword	.LBB79-.Ltext0
	.uaword	.LBE79-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB69-.Ltext0
	.uaword	.LBE69-.Ltext0
	.uaword	.LBB80-.Ltext0
	.uaword	.LBE80-.Ltext0
	.uaword	.LBB81-.Ltext0
	.uaword	.LBE81-.Ltext0
	.uaword	.LBB82-.Ltext0
	.uaword	.LBE82-.Ltext0
	.uaword	.LBB83-.Ltext0
	.uaword	.LBE83-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB84-.Ltext0
	.uaword	.LBE84-.Ltext0
	.uaword	.LBB96-.Ltext0
	.uaword	.LBE96-.Ltext0
	.uaword	.LBB98-.Ltext0
	.uaword	.LBE98-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB88-.Ltext0
	.uaword	.LBE88-.Ltext0
	.uaword	.LBB95-.Ltext0
	.uaword	.LBE95-.Ltext0
	.uaword	.LBB97-.Ltext0
	.uaword	.LBE97-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB92-.Ltext0
	.uaword	.LBE92-.Ltext0
	.uaword	.LBB99-.Ltext0
	.uaword	.LBE99-.Ltext0
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF2:
	.string	"locConvDataTemp_st"
.LASF0:
	.string	"DataBufAdd_p"
.LASF1:
	.string	"LongData_p"
.LASF3:
	.string	"num_rounds"
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
