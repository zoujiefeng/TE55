	.file	"Adc.c"
.section .text,"ax",@progbits
.Ltext0:
.section .FTramCode.fast,"awxc0",@progbits
	.align 1
	.type	Adc_lKernelDeInit.isra.11, @function
Adc_lKernelDeInit.isra.11:
.LFB97:
	.file 1 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Adc\\src\\Adc.c"
	.loc 1 6554 0
.LVL0:
	.loc 1 6560 0
	sh	%d15, %d5, 10
	mov.a	%a2, %d15
	.loc 1 6554 0
	mov	%d9, %d5
	.loc 1 6560 0
	lea	%a15, [%a2] 1024
	addih.a	%a15, %a15, 61442
.LVL1:
	.loc 1 6571 0
	jz	%d4, .L2
	addi	%d8, %d4, -1
	and	%d8, %d8, 255
	mov.d	%d15, %a4
	add	%d8, 1
	mov.aa	%a12, %a4
	madd	%d8, %d15, %d8, 60
.LBB303:
.LBB304:
.LBB305:
.LBB306:
	.loc 1 9887 0
	mov.u	%d10, 65535
	j	.L11
.LVL2:
.L4:
	lea	%a12, [%a12] 60
.LBE306:
.LBE305:
.LBE304:
.LBE303:
	.loc 1 6571 0
	mov.d	%d15, %a12
	jeq	%d15, %d8, .L2
.L11:
	.loc 1 6575 0
	ld.bu	%d15, [%a12] 48
	jne	%d15, 1, .L4
	.loc 1 6579 0
	ld.w	%d15, [%a12] 36
	jnz	%d15, .L4
.LVL3:
.LBB329:
.LBB325:
	.loc 1 9082 0
	ld.a	%a2, [%a12] 16
	jz.a	%a2, .L6
	ld.bu	%d2, [%a2] 4
	ld.bu	%d15, [%a2] 5
.LVL4:
.LBB309:
.LBB310:
	.loc 1 9865 0
	extr.u	%d3, %d2, 1, 2
	.loc 1 9869 0
	and	%d2, %d2, 1
.LVL5:
	.loc 1 9887 0
	sh	%d3, 2
	mov.a	%a2, %d3
.LVL6:
	.loc 1 9869 0
	sh	%d5, %d2, 4
	.loc 1 9887 0
	lea	%a4, [%a2] 25104
	addih.a	%a4, %a4, 61443
	mov	%d4, 0
	sh	%d5, %d10, %d5
	call	Mcal_WriteSafetyEndInitProtRegMask
.LVL7:
	.loc 1 9874 0
	extr.u	%d2, %d15, 1, 2
	.loc 1 9878 0
	and	%d15, %d15, 1
.LVL8:
	.loc 1 9894 0
	sh	%d2, 2
	mov.a	%a2, %d2
	.loc 1 9878 0
	sh	%d5, %d15, 4
	.loc 1 9894 0
	lea	%a4, [%a2] 25132
	addih.a	%a4, %a4, 61443
	mov	%d4, 0
	sh	%d5, %d10, %d5
	call	Mcal_WriteSafetyEndInitProtRegMask
.LVL9:
.L7:
.LBE310:
.LBE309:
	.loc 1 9106 0
	ld.a	%a2, [%a12] 20
	jz.a	%a2, .L9
	ld.bu	%d2, [%a2] 4
	ld.bu	%d15, [%a2] 5
.LVL10:
.LBB311:
.LBB307:
	.loc 1 9865 0
	extr.u	%d3, %d2, 1, 2
	.loc 1 9869 0
	and	%d2, %d2, 1
.LVL11:
	.loc 1 9887 0
	sh	%d3, 2
	mov.a	%a2, %d3
.LVL12:
	.loc 1 9869 0
	sh	%d5, %d2, 4
	.loc 1 9887 0
	lea	%a4, [%a2] 25104
	addih.a	%a4, %a4, 61443
	mov	%d4, 0
	sh	%d5, %d10, %d5
	call	Mcal_WriteSafetyEndInitProtRegMask
.LVL13:
	.loc 1 9874 0
	extr.u	%d2, %d15, 1, 2
	lea	%a12, [%a12] 60
.LVL14:
	.loc 1 9894 0
	sh	%d2, 2
	mov.a	%a2, %d2
	.loc 1 9878 0
	and	%d15, %d15, 1
.LVL15:
	.loc 1 9894 0
	lea	%a4, [%a2] 25132
	.loc 1 9878 0
	sh	%d5, %d15, 4
.LBE307:
.LBE311:
.LBE325:
.LBE329:
	.loc 1 6571 0
	mov.d	%d15, %a12
.LBB330:
.LBB326:
.LBB312:
.LBB308:
	.loc 1 9894 0
	addih.a	%a4, %a4, 61443
	mov	%d4, 0
	sh	%d5, %d10, %d5
	call	Mcal_WriteSafetyEndInitProtRegMask
.LVL16:
.LBE308:
.LBE312:
.LBE326:
.LBE330:
	.loc 1 6571 0
	jne	%d15, %d8, .L11
.LVL17:
.L2:
	.loc 1 6593 0
	mov	%d3, 3328
	.loc 1 6597 0
	movh	%d2, 32897
	.loc 1 6593 0
	st.w	[%a15] 260, %d3
	.loc 1 6597 0
	addi	%d2, %d2, -32768
	st.w	[%a15] 256, %d2
	.loc 1 6598 0
	movh	%d15, 65472
	st.w	[%a15] 280, %d15
.LVL18:
	.loc 1 6593 0
	st.w	[%a15] 292, %d3
	.loc 1 6597 0
	st.w	[%a15] 288, %d2
	.loc 1 6598 0
	st.w	[%a15] 312, %d15
.LVL19:
	.loc 1 6593 0
	st.w	[%a15] 324, %d3
	.loc 1 6597 0
	st.w	[%a15] 320, %d2
	.loc 1 6598 0
	st.w	[%a15] 344, %d15
.LVL20:
	.loc 1 6602 0
	mov	%d15, 0
	st.w	[%a15] 128, %d15
.LBB331:
.LBB332:
	.file 2 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\machine\\intrinsics.h"
	.loc 2 190 0
#APP
	# 190 "s:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE332:
.LBE331:
	.loc 1 6606 0
	movh	%d2, 32768
	st.w	[%a15] 16, %d2
	.loc 1 6610 0
	movh	%d2, 48
	.loc 1 6609 0
	st.w	[%a15] 132, %d15
	.loc 1 6610 0
	add	%d2, 4
	st.w	[%a15] 136, %d2
	.loc 1 6611 0
	st.w	[%a15] 160, %d15
	.loc 1 6612 0
	st.w	[%a15] 164, %d15
	.loc 1 6613 0
	mov	%d2, 256
	st.w	[%a15] 176, %d2
	.loc 1 6614 0
	st.w	[%a15] 184, %d15
	.loc 1 6615 0
	st.w	[%a15] 192, %d15
	.loc 1 6616 0
	mov.u	%d2, 32768
	st.w	[%a15] 496, %d2
	.loc 1 6618 0
	st.w	[%a15] 500, %d15
	.loc 1 6633 0
	st.w	[%a15] 512, %d15
	st.w	[%a15] 516, %d15
	st.w	[%a15] 520, %d15
	st.w	[%a15] 524, %d15
	st.w	[%a15] 528, %d15
	.loc 1 6626 0
	mov	%d3, 16
	.loc 1 6633 0
	st.w	[%a15] 532, %d15
	.loc 1 6626 0
	ge.u	%d2, %d9, 5
	sel	%d2, %d2, %d3, 8
.LVL21:
	.loc 1 6633 0
	st.w	[%a15] 536, %d15
.LVL22:
	st.w	[%a15] 540, %d15
.LVL23:
	.loc 1 6628 0
	ne	%d3, %d2, 8
	jz	%d3, .L12
	.loc 1 6633 0
	st.w	[%a15] 544, %d15
.LVL24:
	.loc 1 6628 0
	eq	%d3, %d2, 9
	jnz	%d3, .L12
	.loc 1 6633 0
	st.w	[%a15] 548, %d15
.LVL25:
	.loc 1 6628 0
	eq	%d3, %d2, 10
	jnz	%d3, .L12
	.loc 1 6633 0
	st.w	[%a15] 552, %d15
.LVL26:
	.loc 1 6628 0
	eq	%d3, %d2, 11
	jnz	%d3, .L12
	.loc 1 6633 0
	st.w	[%a15] 556, %d15
.LVL27:
	.loc 1 6628 0
	eq	%d3, %d2, 12
	jnz	%d3, .L12
	.loc 1 6633 0
	st.w	[%a15] 560, %d15
.LVL28:
	.loc 1 6628 0
	eq	%d3, %d2, 13
	jnz	%d3, .L12
	.loc 1 6633 0
	st.w	[%a15] 564, %d15
.LVL29:
	.loc 1 6628 0
	eq	%d3, %d2, 14
	jnz	%d3, .L12
	.loc 1 6633 0
	st.w	[%a15] 568, %d15
.LVL30:
	.loc 1 6628 0
	ne	%d2, %d2, 16
.LVL31:
	jnz	%d2, .L12
	.loc 1 6633 0
	st.w	[%a15] 572, %d15
.LVL32:
.L12:
	.loc 1 6639 0
	mov	%d15, 0
	st.w	[%a15] 640, %d15
.LVL33:
	st.w	[%a15] 644, %d15
.LVL34:
	st.w	[%a15] 648, %d15
.LVL35:
	st.w	[%a15] 652, %d15
.LVL36:
	st.w	[%a15] 656, %d15
.LVL37:
	st.w	[%a15] 660, %d15
.LVL38:
	st.w	[%a15] 664, %d15
.LVL39:
	st.w	[%a15] 668, %d15
.LVL40:
	st.w	[%a15] 672, %d15
.LVL41:
	st.w	[%a15] 676, %d15
.LVL42:
	st.w	[%a15] 680, %d15
.LVL43:
	st.w	[%a15] 684, %d15
.LVL44:
	st.w	[%a15] 688, %d15
.LVL45:
	st.w	[%a15] 692, %d15
.LVL46:
	st.w	[%a15] 696, %d15
.LVL47:
	st.w	[%a15] 700, %d15
.LVL48:
	.loc 1 6644 0
	mov.u	%d2, 65535
	st.w	[%a15] 504, %d2
	.loc 1 6645 0
	mov	%d3, 7
	st.w	[%a15] 408, %d3
	.loc 1 6646 0
	st.w	[%a15] 404, %d2
	.loc 1 6647 0
	st.w	[%a15] 448, %d15
	.loc 1 6648 0
	st.w	[%a15] 432, %d15
	.loc 1 6649 0
	st.w	[%a15] 436, %d15
	.loc 1 6650 0
	st.w	[%a15] 416, %d15
	.loc 1 6653 0
	jge.u	%d9, 5, .L47
	.loc 1 6664 0
	mov	%d15, 255
	st.w	[%a15] 400, %d15
	ret
.LVL49:
.L9:
.LBB333:
.LBB327:
.LBB313:
.LBB314:
	.loc 1 9117 0
	ld.a	%a2, [%a12] 12
	jz.a	%a2, .L4
	ld.w	%d11, [%a2] 4
.LVL50:
.LBB315:
.LBB316:
	.loc 1 9737 0
	ld.bu	%d2, [%a2]0
	.loc 1 9728 0
	extr.u	%d15, %d11, 8, 8
.LVL51:
	.loc 1 9732 0
	and	%d11, %d11, 255
.LVL52:
	.loc 1 9741 0
	mov	%e4, %d11, %d15
	.loc 1 9737 0
	jz	%d2, .L48
	.loc 1 9753 0
	call	Mcu_17_Gtm_AtomChannelDisable
.LVL53:
	.loc 1 9756 0
	mov	%e4, %d11, %d15
	call	Mcu_17_Gtm_AtomChannelDeInit
.LVL54:
	.loc 1 9759 0
	mov	%e4, %d11, %d15
	call	Mcu_17_Gtm_AtomChannelShadowTransfer
.LVL55:
	j	.L4
.LVL56:
.L47:
.LBE316:
.LBE315:
.LBE314:
.LBE313:
.LBE327:
.LBE333:
	.loc 1 6657 0
	st.w	[%a15] 400, %d2
	.loc 1 6658 0
	st.w	[%a15] 420, %d15
	ret
.LVL57:
.L6:
.LBB334:
.LBB328:
	.loc 1 9093 0
	ld.a	%a2, [%a12] 8
	jz.a	%a2, .L7
	ld.w	%d11, [%a2] 4
.LVL58:
.LBB320:
.LBB321:
	.loc 1 9737 0
	ld.bu	%d2, [%a2]0
	.loc 1 9728 0
	extr.u	%d15, %d11, 8, 8
.LVL59:
	.loc 1 9732 0
	and	%d11, %d11, 255
.LVL60:
	.loc 1 9741 0
	mov	%e4, %d11, %d15
	.loc 1 9737 0
	jz	%d2, .L49
	.loc 1 9753 0
	call	Mcu_17_Gtm_AtomChannelDisable
.LVL61:
	.loc 1 9756 0
	mov	%e4, %d11, %d15
	call	Mcu_17_Gtm_AtomChannelDeInit
.LVL62:
	.loc 1 9759 0
	mov	%e4, %d11, %d15
	call	Mcu_17_Gtm_AtomChannelShadowTransfer
.LVL63:
	j	.L7
.LVL64:
.L48:
.LBE321:
.LBE320:
.LBB323:
.LBB319:
.LBB318:
.LBB317:
	.loc 1 9741 0
	call	Mcu_17_Gtm_TomChannelDisable
.LVL65:
	.loc 1 9744 0
	mov	%e4, %d11, %d15
	call	Mcu_17_Gtm_TomChannelDeInit
.LVL66:
	.loc 1 9747 0
	mov	%e4, %d11, %d15
	call	Mcu_17_Gtm_TomChannelShadowTransfer
.LVL67:
	j	.L4
.LVL68:
.L49:
.LBE317:
.LBE318:
.LBE319:
.LBE323:
.LBB324:
.LBB322:
	.loc 1 9741 0
	call	Mcu_17_Gtm_TomChannelDisable
.LVL69:
	.loc 1 9744 0
	mov	%e4, %d11, %d15
	call	Mcu_17_Gtm_TomChannelDeInit
.LVL70:
	.loc 1 9747 0
	mov	%e4, %d11, %d15
	call	Mcu_17_Gtm_TomChannelShadowTransfer
.LVL71:
	j	.L7
.LBE322:
.LBE324:
.LBE328:
.LBE334:
.LFE97:
	.size	Adc_lKernelDeInit.isra.11, .-Adc_lKernelDeInit.isra.11
	.align 1
	.type	Adc_lStopConvRequest, @function
Adc_lStopConvRequest:
.LFB73:
	.loc 1 8700 0
.LVL72:
	.loc 1 8700 0
	mov	%e8, %d4, %d5
	addi	%d15, %d8, 8
	.loc 1 8709 0
	madd	%d15, %d15, %d9, 32
	.loc 1 8700 0
	mov.aa	%a12, %a4
	.loc 1 8709 0
	sh	%d15, 5
	mov.a	%a2, %d15
	lea	%a13, [%a2] 1024
	addih.a	%a13, %a13, 61442
.LVL73:
	.loc 1 8712 0
	ld.w	%d15, [%a13] 4
	andn	%d15, %d15, ~(-4)
	st.w	[%a13] 4, %d15
	.loc 1 8715 0
	mov	%d15, 3328
	st.w	[%a13] 4, %d15
	.loc 1 8724 0
	ld.bu	%d15, [%a4] 48
	jeq	%d15, 1, .L75
.LVL74:
.L52:
	.loc 1 8751 0
	sh	%d15, %d9, 10
	mov.a	%a2, %d15
	lea	%a15, [%a2] 1024
	addih.a	%a15, %a15, 61442
.LVL75:
	.loc 1 8756 0
	ld.w	%d3, [%a15] 128
	.loc 1 8758 0
	ld.w	%d15, [%a15] 128
	.loc 1 8756 0
	extr.u	%d3, %d3, 18, 2
.LVL76:
	.loc 1 8758 0
	extr.u	%d2, %d15, 30, 1
.LVL77:
	.loc 1 8766 0
	eq	%d15, %d8, %d3
.LVL78:
	and	%d15, %d2
	jz	%d15, .L60
	mov	%d15, 6000
.LVL79:
.L61:
	.loc 1 8773 0
	ld.w	%d5, [%a15] 128
	.loc 1 8775 0
	ld.w	%d2, [%a15] 128
	.loc 1 8771 0
	add	%d15, -1
.LVL80:
	.loc 1 8775 0
	extr.u	%d2, %d2, 30, 1
	.loc 1 8773 0
	extr.u	%d5, %d5, 18, 2
	.loc 1 8766 0
	ne	%d3, %d15, 0
	and	%d3, %d2
	eq	%d2, %d8, %d5
	and	%d2, %d3
	jnz	%d2, .L61
.LVL81:
.L60:
	.loc 1 8799 0
	sh	%d9, 4
.LVL82:
	madd	%d9, %d9, %d8, 4
	.loc 1 8842 0
	mov.a	%a2, %d9
	lea	%a14, [%a2] -31120
	addih.a	%a14, %a14, 61444
.LVL83:
	.loc 1 8851 0
	call	SchM_Enter_Adc_SrcRegAccess
.LVL84:
	.loc 1 8861 0
	ld.w	%d15, [%a14]0
	insert	%d15, %d15, 15, 25, 1
	st.w	[%a14]0, %d15
	.loc 1 8869 0
	call	SchM_Exit_Adc_SrcRegAccess
.LVL85:
.LBB349:
.LBB350:
	.loc 1 8926 0
	mov	%d15, 3328
	.loc 1 8923 0
	ld.a	%a2, [%a12] 4
.LVL86:
	.loc 1 8926 0
	st.w	[%a13] 4, %d15
	.loc 1 8931 0
	movh	%d15, 32897
	addi	%d15, %d15, -32768
	st.w	[%a13]0, %d15
	.loc 1 8935 0
	ld.w	%d2, [%a12] 32
	mov	%d15, 256
	jeq	%d2, %d15, .L62
	.loc 1 8937 0
	st.w	[%a15] 176, %d15
.L62:
	.loc 1 8941 0
	mov	%d15, 1
	sh	%d15, %d15, %d8
	st.w	[%a15] 408, %d15
	.loc 1 8942 0
	ld.hu	%d15, [%a12] 40
	.loc 1 8962 0
	mov	%d4, 0
	.loc 1 8942 0
	st.w	[%a15] 400, %d15
	.loc 1 8943 0
	ld.hu	%d15, [%a12] 42
	st.w	[%a15] 404, %d15
	.loc 1 8945 0
	ld.hu	%d15, [%a12] 42
	st.w	[%a15] 504, %d15
.LVL87:
	.loc 1 8962 0
	ld.bu	%d5, [%a12] 56
.LVL88:
	.loc 1 8970 0
	mov	%d15, 0
.LVL89:
.L63:
	ld.bu	%d3, [%a2] 1
	.loc 1 8969 0
	ld.bu	%d2, [%a2] 2
.LVL90:
	.loc 1 8970 0
	addi	%d3, %d3, 128
	.loc 1 8971 0
	addi	%d2, %d2, 160
	.loc 1 8970 0
	addsc.a	%a4, %a15, %d3, 2
	.loc 1 8971 0
	addsc.a	%a3, %a15, %d2, 2
	.loc 1 8970 0
	st.w	[%a4]0, %d15
.LVL91:
	add	%d4, 1
.LVL92:
	.loc 1 8971 0
	st.w	[%a3]0, %d15
.LVL93:
	.loc 1 8984 0
	and	%d2, %d4, 255
.LVL94:
	add.a	%a2, 4
	jlt.u	%d2, %d5, .L63
.LBE350:
.LBE349:
	.loc 1 8874 0
	ret
.LVL95:
.L75:
	.loc 1 8728 0
	ld.w	%d15, [%a4] 36
	jz	%d15, .L53
	.loc 1 8732 0
	movh	%d15, 65472
	st.w	[%a13] 24, %d15
	j	.L52
.L53:
.LVL96:
.LBB351:
.LBB352:
	.loc 1 9082 0
	ld.a	%a15, [%a4] 16
	jz.a	%a15, .L54
	ld.bu	%d15, [%a15] 4
	ld.bu	%d10, [%a15] 5
.LVL97:
.LBB353:
.LBB354:
	.loc 1 9865 0
	extr.u	%d2, %d15, 1, 2
	.loc 1 9869 0
	and	%d15, %d15, 1
.LVL98:
	.loc 1 9903 0
	sh	%d2, 2
	mov.a	%a15, %d2
.LVL99:
	.loc 1 9869 0
	sh	%d5, %d15, 4
.LVL100:
	.loc 1 9903 0
	lea	%a4, [%a15] 25104
.LVL101:
	mov.u	%d15, 65535
	addih.a	%a4, %a4, 61443
	mov	%d4, 0
.LVL102:
	sh	%d5, %d15, %d5
	call	Mcal_WriteSafetyEndInitProtRegMask
.LVL103:
	.loc 1 9874 0
	extr.u	%d2, %d10, 1, 2
	.loc 1 9878 0
	and	%d10, %d10, 1
.LVL104:
	.loc 1 9910 0
	sh	%d2, 2
	mov.a	%a2, %d2
	.loc 1 9878 0
	sh	%d5, %d10, 4
	.loc 1 9910 0
	lea	%a4, [%a2] 25132
	addih.a	%a4, %a4, 61443
	mov	%d4, 0
	sh	%d5, %d15, %d5
	call	Mcal_WriteSafetyEndInitProtRegMask
.LVL105:
.L55:
.LBE354:
.LBE353:
	.loc 1 9106 0
	ld.a	%a15, [%a12] 20
	jz.a	%a15, .L57
	ld.bu	%d15, [%a15] 4
	ld.bu	%d10, [%a15] 5
.LVL106:
.LBB355:
.LBB356:
	.loc 1 9865 0
	extr.u	%d2, %d15, 1, 2
	.loc 1 9869 0
	and	%d15, %d15, 1
.LVL107:
	.loc 1 9903 0
	sh	%d2, 2
	mov.a	%a15, %d2
.LVL108:
	.loc 1 9869 0
	sh	%d5, %d15, 4
	.loc 1 9903 0
	lea	%a4, [%a15] 25104
	mov.u	%d15, 65535
	sh	%d5, %d15, %d5
	addih.a	%a4, %a4, 61443
	mov	%d4, 0
	call	Mcal_WriteSafetyEndInitProtRegMask
.LVL109:
	.loc 1 9874 0
	extr.u	%d2, %d10, 1, 2
	.loc 1 9878 0
	and	%d10, %d10, 1
.LVL110:
	.loc 1 9910 0
	sh	%d2, 2
	mov.a	%a2, %d2
	.loc 1 9878 0
	sh	%d5, %d10, 4
	.loc 1 9910 0
	lea	%a4, [%a2] 25132
	addih.a	%a4, %a4, 61443
	mov	%d4, 0
	sh	%d5, %d15, %d5
	call	Mcal_WriteSafetyEndInitProtRegMask
.LVL111:
	j	.L52
.LVL112:
.L57:
.LBE356:
.LBE355:
.LBB357:
.LBB358:
	.loc 1 9117 0
	ld.a	%a15, [%a12] 12
	jz.a	%a15, .L52
	ld.w	%d10, [%a15] 4
.LVL113:
.LBB359:
.LBB360:
	.loc 1 9737 0
	ld.bu	%d2, [%a15]0
	.loc 1 9728 0
	extr.u	%d15, %d10, 8, 8
.LVL114:
	.loc 1 9732 0
	and	%d10, %d10, 255
.LVL115:
	.loc 1 9741 0
	mov	%e4, %d10, %d15
	.loc 1 9737 0
	jz	%d2, .L76
	.loc 1 9753 0
	call	Mcu_17_Gtm_AtomChannelDisable
.LVL116:
	.loc 1 9756 0
	mov	%e4, %d10, %d15
	call	Mcu_17_Gtm_AtomChannelDeInit
.LVL117:
	.loc 1 9759 0
	mov	%e4, %d10, %d15
	call	Mcu_17_Gtm_AtomChannelShadowTransfer
.LVL118:
	j	.L52
.LVL119:
.L54:
.LBE360:
.LBE359:
.LBE358:
.LBE357:
	.loc 1 9093 0
	ld.a	%a15, [%a4] 8
	jz.a	%a15, .L55
	ld.w	%d10, [%a15] 4
.LVL120:
.LBB364:
.LBB365:
	.loc 1 9737 0
	ld.bu	%d2, [%a15]0
	.loc 1 9728 0
	extr.u	%d15, %d10, 8, 8
.LVL121:
	.loc 1 9732 0
	and	%d10, %d10, 255
.LVL122:
	.loc 1 9741 0
	mov	%e4, %d10, %d15
.LVL123:
	.loc 1 9737 0
	jz	%d2, .L77
	.loc 1 9753 0
	call	Mcu_17_Gtm_AtomChannelDisable
.LVL124:
	.loc 1 9756 0
	mov	%e4, %d10, %d15
	call	Mcu_17_Gtm_AtomChannelDeInit
.LVL125:
	.loc 1 9759 0
	mov	%e4, %d10, %d15
	call	Mcu_17_Gtm_AtomChannelShadowTransfer
.LVL126:
	j	.L55
.LVL127:
.L76:
.LBE365:
.LBE364:
.LBB367:
.LBB363:
.LBB362:
.LBB361:
	.loc 1 9741 0
	call	Mcu_17_Gtm_TomChannelDisable
.LVL128:
	.loc 1 9744 0
	mov	%e4, %d10, %d15
	call	Mcu_17_Gtm_TomChannelDeInit
.LVL129:
	.loc 1 9747 0
	mov	%e4, %d10, %d15
	call	Mcu_17_Gtm_TomChannelShadowTransfer
.LVL130:
	j	.L52
.LVL131:
.L77:
.LBE361:
.LBE362:
.LBE363:
.LBE367:
.LBB368:
.LBB366:
	.loc 1 9741 0
	call	Mcu_17_Gtm_TomChannelDisable
.LVL132:
	.loc 1 9744 0
	mov	%e4, %d10, %d15
	call	Mcu_17_Gtm_TomChannelDeInit
.LVL133:
	.loc 1 9747 0
	mov	%e4, %d10, %d15
	call	Mcu_17_Gtm_TomChannelShadowTransfer
.LVL134:
	j	.L55
.LBE366:
.LBE368:
.LBE352:
.LBE351:
.LFE73:
	.size	Adc_lStopConvRequest, .-Adc_lStopConvRequest
	.align 1
	.type	Adc_lStartSwConversion, @function
Adc_lStartSwConversion:
.LFB64:
	.loc 1 7068 0
.LVL135:
	.loc 1 7076 0
	sh	%d15, %d4, 10
	mov.a	%a2, %d15
	addi	%d15, %d5, 8
	.loc 1 7079 0
	madd	%d15, %d15, %d4, 32
	.loc 1 7076 0
	lea	%a15, [%a2] 1024
	addih.a	%a15, %a15, 61442
.LVL136:
	.loc 1 7079 0
	sh	%d15, 5
	mov.a	%a2, %d15
	.loc 1 7083 0
	mov	%d15, 3328
	.loc 1 7079 0
	lea	%a12, [%a2] 1024
	addih.a	%a12, %a12, 61442
.LVL137:
	.loc 1 7083 0
	st.w	[%a12] 4, %d15
	.loc 1 7088 0
	mov	%d15, 1
	sh	%d15, %d15, %d5
	st.w	[%a15] 408, %d15
	.loc 1 7089 0
	ld.hu	%d15, [%a4] 40
	.loc 1 7068 0
	sub.a	%SP, 8
.LCFI0:
	.loc 1 7089 0
	st.w	[%a15] 400, %d15
	.loc 1 7090 0
	ld.hu	%d15, [%a4] 42
	.loc 1 7068 0
	mov	%d8, %d4
	.loc 1 7090 0
	st.w	[%a15] 404, %d15
	.loc 1 7092 0
	ld.hu	%d15, [%a4] 42
	st.w	[%a15] 504, %d15
	.loc 1 7149 0
	ld.w	%d2, [%a4] 24
	movh	%d15, 32897
	.loc 1 7109 0
	ld.bu	%d3, [%a4] 49
	.loc 1 7145 0
	ld.bu	%d5, [%a4] 56
.LVL138:
	.loc 1 7149 0
	addi	%d15, %d15, -32768
	or	%d15, %d2
	.loc 1 7120 0
	eq	%d3, %d3, 1
	.loc 1 7143 0
	ld.a	%a3, [%a4] 4
	.loc 1 7154 0
	add	%d5, -1
	.loc 1 7149 0
	st.w	[%a12]0, %d15
	.loc 1 7120 0
	sh	%d3, 5
.LVL139:
	.loc 1 7154 0
	mov	%d2, 0
	jlez	%d5, .L80
	mov	%d15, 0
.LVL140:
.L81:
	.loc 1 7160 0
	and	%d2, %d15, 255
	addsc.a	%a2, %a3, %d2, 2
	ld.bu	%d2, [%a2] 1
	.loc 1 7159 0
	or	%d2, %d3
	st.w	[%a12] 16, %d2
	add	%d2, %d15, 1
	and	%d2, %d2, 255
.LVL141:
	add	%d15, 1
	.loc 1 7154 0
	jlt	%d2, %d5, .L81
	sh	%d2, 2
.LVL142:
.L80:
	.loc 1 7168 0
	addsc.a	%a3, %a3, %d2, 0
.LVL143:
	ld.bu	%d15, [%a3] 1
	or	%d15, %d15, 64
	and	%d15, 255
	.loc 1 7167 0
	or	%d3, %d15
.LVL144:
	st.w	[%a12] 16, %d3
.LVL145:
.LBB373:
.LBB374:
	.loc 1 7333 0
	call	Mcal_GetCpuIndex
.LVL146:
.LBB375:
.LBB376:
	.loc 1 4607 0
	madd	%d15, %d8, %d2, 12
	movh.a	%a3, hi:Adc_kKernelData
	movh.a	%a2, hi:Adc_kKernelDataIndex
	lea	%a3, [%a3] lo:Adc_kKernelData
	lea	%a2, [%a2] lo:Adc_kKernelDataIndex
	addsc.a	%a3, %a3, %d2, 2
	addsc.a	%a2, %a2, %d15, 0
	ld.w	%d3, [%a3]0
	ld.bu	%d15, [%a2]0
.LBE376:
.LBE375:
	.loc 1 7353 0
	movh.a	%a3, hi:Adc_ConfigPtr
.LBB379:
.LBB377:
	.loc 1 4607 0
	madd	%d4, %d3, %d15, 56
.LBE377:
.LBE379:
	.loc 1 7353 0
	ld.a	%a3, [%a3] lo:Adc_ConfigPtr
	.loc 1 7360 0
	mov	%d3, 0
.LBB380:
.LBB378:
	.loc 1 4607 0
	mov.a	%a2, %d4
.LVL147:
.LBE378:
.LBE380:
	.loc 1 7348 0
	ld.hu	%d15, [%a2] 36
	eq	%d4, %d15, 255
	jnz	%d4, .L82
.LVL148:
	.loc 1 7353 0
	addsc.a	%a4, %a3, %d2, 2
	.loc 1 7354 0
	ld.a	%a4, [%a4] 4
	addsc.a	%a4, %a4, %d8, 2
	ld.a	%a4, [%a4]0
	.loc 1 7356 0
	ld.w	%d3, [%a4] 8
	madd	%d4, %d3, %d15, 60
	mov.a	%a4, %d4
	ld.bu	%d3, [%a4] 55
.LVL149:
.L82:
	.loc 1 7362 0
	mov	%d15, 0
	st.b	[%SP] 2, %d15
.LVL150:
	.loc 1 7348 0
	ld.hu	%d15, [%a2] 40
	st.b	[%SP] 5, %d3
	eq	%d4, %d15, 255
	.loc 1 7360 0
	mov	%d3, 0
	.loc 1 7348 0
	jnz	%d4, .L83
.LVL151:
	.loc 1 7353 0
	addsc.a	%a4, %a3, %d2, 2
	.loc 1 7354 0
	ld.a	%a4, [%a4] 4
	addsc.a	%a4, %a4, %d8, 2
	ld.a	%a4, [%a4]0
	.loc 1 7356 0
	ld.w	%d3, [%a4] 8
	madd	%d4, %d3, %d15, 60
	mov.a	%a4, %d4
	ld.bu	%d3, [%a4] 55
.LVL152:
.L83:
	.loc 1 7362 0
	mov	%d15, 0
	st.b	[%SP] 3, %d15
.LVL153:
	.loc 1 7348 0
	ld.hu	%d15, [%a2] 44
	st.b	[%SP] 6, %d3
	eq	%d4, %d15, 255
	.loc 1 7360 0
	mov	%d3, 0
	.loc 1 7348 0
	jnz	%d4, .L84
.LVL154:
	.loc 1 7353 0
	addsc.a	%a3, %a3, %d2, 2
.LVL155:
	.loc 1 7354 0
	ld.a	%a2, [%a3] 4
	addsc.a	%a2, %a2, %d8, 2
	ld.a	%a2, [%a2]0
	.loc 1 7356 0
	ld.w	%d2, [%a2] 8
.LVL156:
	madd	%d3, %d2, %d15, 60
	mov.a	%a2, %d3
	ld.bu	%d3, [%a2] 55
.L84:
	.loc 1 7368 0
	ld.bu	%d4, [%SP] 2
	st.b	[%SP] 7, %d3
.LVL157:
	.loc 1 7366 0
	ld.bu	%d2, [%SP] 5
	ld.bu	%d3, [%SP] 6
	.loc 1 7368 0
	add	%d4, 1
	and	%d6, %d4, 255
	ld.bu	%d5, [%SP] 3
	.loc 1 7366 0
	jlt.u	%d3, %d2, .L86
	ld.bu	%d6, [%SP] 2
	ld.bu	%d5, [%SP] 3
	.loc 1 7370 0
	jlt.u	%d2, %d3, .L102
.L86:
	.loc 1 7379 0
	ld.bu	%d15, [%SP] 7
	lt.u	%d4, %d2, %d15
	jge.u	%d15, %d2, .L89
	.loc 1 7381 0
	addi	%d4, %d6, 1
	and	%d6, %d4, 255
	mov	%d4, 0
.L89:
	.loc 1 7392 0
	jge.u	%d15, %d3, .L90
	.loc 1 7394 0
	add	%d5, 1
	and	%d5, %d5, 255
.L91:
	.loc 1 7408 0
	sh	%d5, 4
	.loc 1 7409 0
	sh	%d4, %d4, 8
	.loc 1 7412 0
	ld.w	%d2, [%a15] 132
	or	%d4, %d5
	mov	%d15, 819
	.loc 1 7406 0
	or	%d4, %d6
.LVL158:
	.loc 1 7412 0
	and	%d15, %d2
	jeq	%d4, %d15, .L92
	.loc 1 7416 0
	ld.w	%d2, [%a15] 132
.LVL159:
	.loc 1 7417 0
	insert	%d15, %d2, 0, 24, 3
.LVL160:
	.loc 1 7420 0
	st.w	[%a15] 132, %d15
	.loc 1 7421 0
	st.w	[%a15] 132, %d15
	.loc 1 7425 0
	movh	%d15, 63744
.LVL161:
	addi	%d15, %d15, -820
	and	%d2, %d15
.LVL162:
	.loc 1 7426 0
	st.w	[%a15] 132, %d2
	.loc 1 7430 0
	ld.w	%d15, [%a15] 132
	or	%d4, %d15
.LVL163:
	st.w	[%a15] 132, %d4
	.loc 1 7434 0
	ld.w	%d15, [%a15] 132
	insert	%d15, %d15, 15, 24, 3
	st.w	[%a15] 132, %d15
.LVL164:
.L92:
.LBE374:
.LBE373:
	.loc 1 7181 0
	mov	%d15, 513
	st.w	[%a12] 4, %d15
	ret
.L90:
.LBB382:
.LBB381:
	.loc 1 7396 0
	jge.u	%d3, %d15, .L91
	.loc 1 7398 0
	add	%d4, 1
	and	%d4, %d4, 255
	j	.L91
.L102:
	.loc 1 7372 0
	ld.bu	%d5, [%SP] 3
	ld.bu	%d6, [%SP] 2
	add	%d5, 1
	and	%d5, %d5, 255
	j	.L86
.LBE381:
.LBE382:
.LFE64:
	.size	Adc_lStartSwConversion, .-Adc_lStartSwConversion
	.align 1
	.type	Adc_lSchedulerOnStop, @function
Adc_lSchedulerOnStop:
.LFB72:
	.loc 1 8530 0
.LVL165:
.LBB421:
.LBB422:
	.loc 1 4607 0
	mul	%d9, %d6, 12
	movh.a	%a2, hi:Adc_kKernelData
	movh.a	%a3, hi:Adc_kKernelDataIndex
	add	%d2, %d9, %d4
	lea	%a2, [%a2] lo:Adc_kKernelData
	sh	%d10, %d6, 2
	lea	%a3, [%a3] lo:Adc_kKernelDataIndex
	addsc.a	%a15, %a2, %d10, 0
	addsc.a	%a2, %a3, %d2, 0
.LBE422:
.LBE421:
	.loc 1 8541 0
	movh.a	%a13, hi:Adc_ConfigPtr
.LBB427:
.LBB423:
	.loc 1 4607 0
	ld.bu	%d2, [%a2]0
.LBE423:
.LBE427:
	.loc 1 8541 0
	ld.a	%a2, [%a13] lo:Adc_ConfigPtr
	addi	%d11, %d6, 1
	.loc 1 8530 0
	mov	%d8, %d4
	.loc 1 8541 0
	addsc.a	%a2, %a2, %d11, 2
	sh	%d12, %d8, 2
	ld.a	%a2, [%a2]0
.LBB428:
.LBB424:
	.loc 1 4607 0
	ld.w	%d3, [%a15]0
.LBE424:
.LBE428:
	.loc 1 8530 0
	mov	%d15, %d5
.LVL166:
	.loc 1 8541 0
	addsc.a	%a2, %a2, %d12, 0
.LBB429:
.LBB425:
	.loc 1 4607 0
	madd	%d4, %d3, %d2, 56
.LVL167:
.LBE425:
.LBE429:
	.loc 1 8541 0
	ld.a	%a2, [%a2]0
.LBB430:
.LBB426:
	.loc 1 4607 0
	mov.a	%a15, %d4
.LBE426:
.LBE430:
	.loc 1 8541 0
	ld.w	%d2, [%a2] 8
	madd	%d5, %d2, %d5, 60
.LVL168:
.LBB431:
.LBB432:
	.loc 1 4657 0
	ld.hu	%d2, [%a15] 36
.LBE432:
.LBE431:
	.loc 1 8541 0
	mov.a	%a12, %d5
.LVL169:
.LBB437:
.LBB433:
	.loc 1 4657 0
	jeq	%d2, %d15, .L120
.LVL170:
	ld.hu	%d2, [%a15] 40
	jeq	%d2, %d15, .L121
.LVL171:
	ld.hu	%d2, [%a15] 44
	.loc 1 4653 0
	mov	%d13, 2
	.loc 1 4657 0
	mov.a	%a6, 2
	jeq	%d2, %d15, .L104
.LVL172:
.LBE433:
.LBE437:
	.loc 1 8563 0
	ld.w	%d3, [%a12] 32
	mov	%d2, 256
	jeq	%d3, %d2, .L109
	.loc 1 8567 0
	mov	%d2, 0
	st.b	[%a15] 54, %d2
.L109:
	.loc 1 8617 0
	lea	%a3, [%a15] 24
.LVL173:
	.loc 1 8618 0
	addsc.a	%a2, %a3, %d15, 2
	ld.hu	%d3, [%a2]0
.LVL174:
	.loc 1 8619 0
	ld.hu	%d2, [%a2] 2
.LVL175:
	.loc 1 8620 0
	eq	%d4, %d3, 255
	jnz	%d4, .L114
	.loc 1 8622 0
	addsc.a	%a4, %a3, %d3, 2
	st.h	[%a4] 2, %d2
.LVL176:
.L114:
	.loc 1 8624 0
	eq	%d4, %d2, 255
	jnz	%d4, .L115
	.loc 1 8626 0
	addsc.a	%a4, %a3, %d2, 2
	st.h	[%a4]0, %d3
.LVL177:
.L115:
	.loc 1 8630 0
	mov	%d4, 255
	st.h	[%a2]0, %d4
	.loc 1 8631 0
	st.h	[%a2] 2, %d4
	.loc 1 8633 0
	ld.hu	%d4, [%a15] 34
	jeq	%d4, %d15, .L133
	.loc 1 8638 0
	ld.hu	%d3, [%a15] 32
.LVL178:
	jeq	%d3, %d15, .L134
.L117:
.LVL179:
.LBB438:
.LBB439:
	.loc 1 4894 0
	and	%d3, %d15, 255
	mov	%d2, 0
.LVL180:
	lea	%a2, [%a15] 8
#APP
	# 4894 "Targets\TC38xx\MCAL\MCAL_Modules\Adc\src\Adc.c" 1
	imask %e4,%d2,%d3,1
	# 0 "" 2
.LVL181:
	# 4894 "Targets\TC38xx\MCAL\MCAL_Modules\Adc\src\Adc.c" 1
	ldmst [%a2]0,%e4
	# 0 "" 2
.LVL182:
#NO_APP
.LBE439:
.LBE438:
.LBB440:
.LBB441:
	.loc 1 4934 0
#APP
	# 4934 "Targets\TC38xx\MCAL\MCAL_Modules\Adc\src\Adc.c" 1
	imask %e4,%d2,%d3,1
	# 0 "" 2
.LVL183:
#NO_APP
	lea	%a2, [%a15] 12
#APP
	# 4934 "Targets\TC38xx\MCAL\MCAL_Modules\Adc\src\Adc.c" 1
	ldmst [%a2]0,%e4
	# 0 "" 2
.LVL184:
#NO_APP
.LBE441:
.LBE440:
.LBB442:
.LBB443:
	.loc 1 4975 0
#APP
	# 4975 "Targets\TC38xx\MCAL\MCAL_Modules\Adc\src\Adc.c" 1
	imask %e4,%d2,%d3,1
	# 0 "" 2
.LVL185:
#NO_APP
	lea	%a2, [%a15] 16
#APP
	# 4975 "Targets\TC38xx\MCAL\MCAL_Modules\Adc\src\Adc.c" 1
	ldmst [%a2]0,%e4
	# 0 "" 2
#NO_APP
.LBE443:
.LBE442:
.LBB444:
.LBB445:
.LBB446:
.LBB447:
	.loc 1 4607 0
	movh.a	%a3, hi:Adc_kKernelData
.LVL186:
.LBE447:
.LBE446:
.LBE445:
.LBE444:
	.loc 1 8653 0
	addsc.a	%a2, %a15, %d15, 0
.LBB457:
.LBB454:
.LBB451:
.LBB448:
	.loc 1 4607 0
	movh.a	%a4, hi:Adc_kKernelDataIndex
	lea	%a3, [%a3] lo:Adc_kKernelData
	add	%d8, %d9
.LVL187:
	lea	%a4, [%a4] lo:Adc_kKernelDataIndex
.LBE448:
.LBE451:
.LBE454:
.LBE457:
	.loc 1 8653 0
	st.b	[%a2] 52, %d2
.LBB458:
.LBB455:
.LBB452:
.LBB449:
	.loc 1 4607 0
	addsc.a	%a2, %a3, %d10, 0
	addsc.a	%a3, %a4, %d8, 0
	ld.w	%d5, [%a2]0
.LVL188:
	ld.bu	%d15, [%a3]0
.LVL189:
	ld.hu	%d4, [%a12] 42
.LVL190:
	madd	%d6, %d5, %d15, 56
.LVL191:
.LBE449:
.LBE452:
	.loc 1 5419 0
	ld.h	%d5, [%a12] 40
.LBE455:
.LBE458:
.LBB459:
.LBB460:
	.loc 1 5017 0
	lea	%a15, [%a15] 20
.LVL192:
.LBE460:
.LBE459:
.LBB462:
.LBB456:
.LBB453:
.LBB450:
	.loc 1 4607 0
	mov.a	%a2, %d6
.LBE450:
.LBE453:
	.loc 1 5418 0
	ld.h	%d15, [%a2] 48
	andn	%d15, %d15, %d5
	st.h	[%a2] 48, %d15
	.loc 1 5420 0
	ld.h	%d15, [%a2] 50
	andn	%d15, %d15, %d4
	st.h	[%a2] 50, %d15
.LVL193:
.LBE456:
.LBE462:
.LBB463:
.LBB461:
	.loc 1 5017 0
#APP
	# 5017 "Targets\TC38xx\MCAL\MCAL_Modules\Adc\src\Adc.c" 1
	imask %e2,%d2,%d3,1
	# 0 "" 2
.LVL194:
	# 5017 "Targets\TC38xx\MCAL\MCAL_Modules\Adc\src\Adc.c" 1
	ldmst [%a15]0,%e2
	# 0 "" 2
#NO_APP
	ret
.LVL195:
.L134:
.LBE461:
.LBE463:
	.loc 1 8641 0
	st.h	[%a15] 32, %d2
	j	.L117
.LVL196:
.L133:
	.loc 1 8636 0
	st.h	[%a15] 34, %d3
	.loc 1 8638 0
	ld.hu	%d3, [%a15] 32
.LVL197:
	jne	%d3, %d15, .L117
	j	.L134
.LVL198:
.L121:
.LBB464:
.LBB434:
	.loc 1 4653 0
	mov	%d13, 1
	.loc 1 4657 0
	mov.a	%a6, 1
.LVL199:
.L104:
.LBE434:
.LBE464:
	.loc 1 8563 0
	ld.w	%d3, [%a12] 32
	mov	%d2, 256
	jeq	%d3, %d2, .L107
	.loc 1 8567 0
	mov	%d2, 0
	st.b	[%a15] 54, %d2
.L107:
	mov.d	%d14, %a6
	.loc 1 8575 0
	mov	%d2, 1
	sh	%d14, 2
	addsc.a	%a14, %a15, %d14, 0
	.loc 1 8579 0
	mov	%e4, %d13, %d8
.LVL200:
	.loc 1 8575 0
	st.b	[%a14] 39, %d2
	.loc 1 8579 0
	mov.aa	%a4, %a12
	call	Adc_lStopConvRequest
.LVL201:
.LBB465:
.LBB466:
	.loc 1 9033 0
	mov	%d7, 255
	st.h	[%a14] 36, %d7
.LBE466:
.LBE465:
.LBB467:
.LBB468:
	.loc 1 5419 0
	ld.h	%d4, [%a12] 40
	.loc 1 5418 0
	ld.h	%d2, [%a15] 48
	ld.hu	%d3, [%a12] 42
.LVL202:
	andn	%d2, %d2, %d4
	st.h	[%a15] 48, %d2
	.loc 1 5420 0
	ld.h	%d2, [%a15] 50
.LBE468:
.LBE467:
.LBB470:
.LBB471:
	.loc 1 4894 0
	lea	%a2, [%a15] 8
.LBE471:
.LBE470:
.LBB473:
.LBB469:
	.loc 1 5420 0
	andn	%d2, %d2, %d3
	st.h	[%a15] 50, %d2
.LVL203:
.LBE469:
.LBE473:
.LBB474:
.LBB472:
	.loc 1 4894 0
	and	%d3, %d15, 255
	mov	%d2, 0
#APP
	# 4894 "Targets\TC38xx\MCAL\MCAL_Modules\Adc\src\Adc.c" 1
	imask %e4,%d2,%d3,1
	# 0 "" 2
.LVL204:
	# 4894 "Targets\TC38xx\MCAL\MCAL_Modules\Adc\src\Adc.c" 1
	ldmst [%a2]0,%e4
	# 0 "" 2
.LVL205:
#NO_APP
.LBE472:
.LBE474:
.LBB475:
.LBB476:
	.loc 1 4934 0
#APP
	# 4934 "Targets\TC38xx\MCAL\MCAL_Modules\Adc\src\Adc.c" 1
	imask %e4,%d2,%d3,1
	# 0 "" 2
.LVL206:
#NO_APP
	lea	%a2, [%a15] 12
#APP
	# 4934 "Targets\TC38xx\MCAL\MCAL_Modules\Adc\src\Adc.c" 1
	ldmst [%a2]0,%e4
	# 0 "" 2
.LVL207:
#NO_APP
.LBE476:
.LBE475:
.LBB477:
.LBB478:
	.loc 1 4975 0
#APP
	# 4975 "Targets\TC38xx\MCAL\MCAL_Modules\Adc\src\Adc.c" 1
	imask %e4,%d2,%d3,1
	# 0 "" 2
.LVL208:
#NO_APP
	lea	%a2, [%a15] 16
#APP
	# 4975 "Targets\TC38xx\MCAL\MCAL_Modules\Adc\src\Adc.c" 1
	ldmst [%a2]0,%e4
	# 0 "" 2
#NO_APP
.LBE478:
.LBE477:
	.loc 1 8594 0
	addsc.a	%a2, %a15, %d15, 0
.LBB479:
.LBB480:
	.loc 1 5017 0
	lea	%a15, [%a15] 20
.LVL209:
.LBE480:
.LBE479:
	.loc 1 8594 0
	st.b	[%a2] 52, %d2
.LVL210:
.LBB482:
.LBB481:
	.loc 1 5017 0
#APP
	# 5017 "Targets\TC38xx\MCAL\MCAL_Modules\Adc\src\Adc.c" 1
	imask %e2,%d2,%d3,1
	# 0 "" 2
.LVL211:
	# 5017 "Targets\TC38xx\MCAL\MCAL_Modules\Adc\src\Adc.c" 1
	ldmst [%a15]0,%e2
	# 0 "" 2
.LVL212:
#NO_APP
.LBE481:
.LBE482:
.LBB483:
.LBB484:
.LBB485:
.LBB486:
	.loc 1 4607 0
	movh.a	%a3, hi:Adc_kKernelData
.LVL213:
	movh.a	%a4, hi:Adc_kKernelDataIndex
.LVL214:
	lea	%a3, [%a3] lo:Adc_kKernelData
.LVL215:
	add	%d9, %d8
.LVL216:
	lea	%a4, [%a4] lo:Adc_kKernelDataIndex
.LVL217:
	addsc.a	%a2, %a3, %d10, 0
	addsc.a	%a3, %a4, %d9, 0
	ld.w	%d2, [%a2]0
.LVL218:
	ld.bu	%d15, [%a3]0
.LVL219:
	madd	%d3, %d2, %d15, 56
	mov.a	%a15, %d3
.LVL220:
.LBE486:
.LBE485:
.LBB487:
.LBB488:
	.loc 1 8188 0
	ld.hu	%d15, [%a15] 32
.LVL221:
	.loc 1 8191 0
	eq	%d2, %d15, 255
	jnz	%d2, .L103
	.loc 1 8195 0
	ld.hu	%d2, [%a15] 34
	jeq	%d2, %d15, .L135
	addsc.a	%a2, %a15, %d15, 2
	.loc 1 8207 0
	ld.hu	%d2, [%a2] 26
.LVL222:
	.loc 1 8209 0
	addsc.a	%a3, %a15, %d2, 2
	.loc 1 8208 0
	st.h	[%a15] 32, %d2
.LVL223:
	.loc 1 8209 0
	st.h	[%a3] 24, %d7
	.loc 1 8211 0
	st.h	[%a2] 26, %d7
.LVL224:
.L112:
.LBE488:
.LBE487:
	.loc 1 8465 0
	ld.a	%a2, [%a13] lo:Adc_ConfigPtr
	addsc.a	%a6, %a15, %d14, 0
	addsc.a	%a2, %a2, %d11, 2
	ld.a	%a2, [%a2]0
	addsc.a	%a2, %a2, %d12, 0
	ld.a	%a3, [%a2]0
	ld.w	%d2, [%a3] 8
	.loc 1 8469 0
	st.h	[%a6] 36, %d15
	.loc 1 8465 0
	madd	%d3, %d2, %d15, 60
.LBB490:
.LBB491:
	.loc 1 6819 0
	sh	%d15, %d8, 10
.LVL225:
	mov.a	%a15, %d15
.LBE491:
.LBE490:
	.loc 1 8465 0
	mov.a	%a4, %d3
.LVL226:
.LBB494:
.LBB492:
	.loc 1 6819 0
	lea	%a2, [%a15] 1024
	.loc 1 6833 0
	ld.w	%d15, [%a4] 32
	mov	%d2, 256
	.loc 1 6819 0
	addih.a	%a2, %a2, 61442
.LVL227:
	.loc 1 6824 0
	ld.w	%d7, [%a3] 4
.LVL228:
	.loc 1 6827 0
	ld.a	%a15, [%a4] 4
.LVL229:
	.loc 1 6829 0
	ld.bu	%d6, [%a4] 56
.LVL230:
	.loc 1 6833 0
	jeq	%d15, %d2, .L119
	.loc 1 6837 0
	st.w	[%a2] 176, %d15
.LVL231:
.L119:
.LBE492:
.LBE494:
.LBE484:
.LBE483:
.LBB498:
.LBB435:
	.loc 1 4657 0
	mov	%d4, 0
.LVL232:
.LBE435:
.LBE498:
.LBB499:
.LBB497:
.LBB495:
.LBB493:
	.loc 1 6859 0
	mov	%d0, 0
.LVL233:
.L113:
	.loc 1 6852 0
	ld.bu	%d3, [%a15]0
	.loc 1 6849 0
	ld.bu	%d2, [%a15] 2
.LVL234:
	.loc 1 6852 0
	madd	%d5, %d7, %d3, 12
	.loc 1 6853 0
	sh	%d15, %d2, 16
	.loc 1 6859 0
	addi	%d2, %d2, 160
	.loc 1 6852 0
	mov.a	%a5, %d5
	.loc 1 6859 0
	addsc.a	%a3, %a2, %d2, 2
	.loc 1 6852 0
	ld.w	%d3, [%a5]0
	add	%d4, 1
.LVL235:
	or	%d15, %d3
.LVL236:
	.loc 1 6858 0
	ld.bu	%d3, [%a15] 1
	add.a	%a15, 4
.LVL237:
	addi	%d3, %d3, 128
	addsc.a	%a5, %a2, %d3, 2
	st.w	[%a5]0, %d15
.LVL238:
	.loc 1 6859 0
	st.w	[%a3]0, %d0
.LVL239:
	.loc 1 6876 0
	and	%d15, %d4, 255
.LVL240:
	jlt.u	%d15, %d6, .L113
.LBE493:
.LBE495:
	.loc 1 8487 0
	mov	%d15, 0
	st.b	[%a6] 39, %d15
	.loc 1 8491 0
	mov	%e4, %d13, %d8
	j	Adc_lStartSwConversion
.LVL241:
.L103:
	ret
.L135:
.LBB496:
.LBB489:
	.loc 1 8199 0
	st.h	[%a15] 32, %d7
	.loc 1 8200 0
	st.h	[%a15] 34, %d7
	j	.L112
.LVL242:
.L120:
.LBE489:
.LBE496:
.LBE497:
.LBE499:
.LBB500:
.LBB436:
	.loc 1 4653 0
	mov	%d13, 0
	.loc 1 4657 0
	mov.a	%a6, 0
	j	.L104
.LBE436:
.LBE500:
.LFE72:
	.size	Adc_lSchedulerOnStop, .-Adc_lSchedulerOnStop
	.align 1
	.type	Adc_lSchedulerOnStart, @function
Adc_lSchedulerOnStart:
.LFB70:
	.loc 1 8259 0
.LVL243:
	.loc 1 8265 0
	movh.a	%a14, hi:Adc_ConfigPtr
	ld.a	%a15, [%a14] lo:Adc_ConfigPtr
	addi	%d11, %d6, 1
.LBB544:
.LBB545:
	.loc 1 4607 0
	movh.a	%a3, hi:Adc_kKernelData
.LBE545:
.LBE544:
	.loc 1 8265 0
	addsc.a	%a15, %a15, %d11, 2
	sh	%d12, %d4, 2
	ld.a	%a15, [%a15]0
.LBB552:
.LBB546:
	.loc 1 4607 0
	lea	%a3, [%a3] lo:Adc_kKernelData
	addsc.a	%a2, %a3, %d6, 2
.LBE546:
.LBE552:
	.loc 1 8265 0
	addsc.a	%a15, %a15, %d12, 0
.LBB553:
.LBB547:
	.loc 1 4607 0
	madd	%d6, %d4, %d6, 12
.LVL244:
	movh.a	%a4, hi:Adc_kKernelDataIndex
.LBE547:
.LBE553:
	.loc 1 8265 0
	ld.a	%a15, [%a15]0
.LBB554:
.LBB548:
	.loc 1 4607 0
	lea	%a4, [%a4] lo:Adc_kKernelDataIndex
.LBE548:
.LBE554:
	.loc 1 8265 0
	ld.a	%a12, [%a15] 8
.LBB555:
.LBB549:
	.loc 1 4607 0
	addsc.a	%a15, %a4, %d6, 0
	ld.w	%d3, [%a2]0
	ld.bu	%d2, [%a15]0
.LBE549:
.LBE555:
	.loc 1 8259 0
	mov	%d8, %d4
.LBB556:
.LBB550:
	.loc 1 4607 0
	madd	%d4, %d3, %d2, 56
.LVL245:
.LBE550:
.LBE556:
	.loc 1 8266 0
	mul	%d13, %d5, 60
	.loc 1 8259 0
	mov	%d15, %d5
.LBB557:
.LBB551:
	.loc 1 4607 0
	mov.a	%a15, %d4
.LBE551:
.LBE557:
.LBB558:
.LBB559:
	.loc 1 4700 0
	and	%d2, %d5, 255
	mov	%d7, 1
.LBE559:
.LBE558:
	.loc 1 8259 0
	sub.a	%SP, 8
.LCFI1:
	.loc 1 8265 0
	addsc.a	%a12, %a12, %d13, 0
.LVL246:
.LBB561:
.LBB560:
	.loc 1 4700 0
#APP
	# 4700 "Targets\TC38xx\MCAL\MCAL_Modules\Adc\src\Adc.c" 1
	imask %e4,%d7,%d2,1
	# 0 "" 2
.LVL247:
#NO_APP
	lea	%a2, [%a15] 8
#APP
	# 4700 "Targets\TC38xx\MCAL\MCAL_Modules\Adc\src\Adc.c" 1
	ldmst [%a2]0,%e4
	# 0 "" 2
.LVL248:
#NO_APP
.LBE560:
.LBE561:
.LBB562:
.LBB563:
	.loc 1 4934 0
	mov	%d6, 0
	lea	%a2, [%a15] 12
#APP
	# 4934 "Targets\TC38xx\MCAL\MCAL_Modules\Adc\src\Adc.c" 1
	imask %e4,%d6,%d2,1
	# 0 "" 2
.LVL249:
	# 4934 "Targets\TC38xx\MCAL\MCAL_Modules\Adc\src\Adc.c" 1
	ldmst [%a2]0,%e4
	# 0 "" 2
.LVL250:
#NO_APP
.LBE563:
.LBE562:
.LBB564:
.LBB565:
	.loc 1 4975 0
#APP
	# 4975 "Targets\TC38xx\MCAL\MCAL_Modules\Adc\src\Adc.c" 1
	imask %e2,%d6,%d2,1
	# 0 "" 2
.LVL251:
#NO_APP
	lea	%a2, [%a15] 16
#APP
	# 4975 "Targets\TC38xx\MCAL\MCAL_Modules\Adc\src\Adc.c" 1
	ldmst [%a2]0,%e2
	# 0 "" 2
#NO_APP
.LBE565:
.LBE564:
	.loc 1 8280 0
	addsc.a	%a2, %a15, %d15, 0
.LBB566:
.LBB567:
	.loc 1 5337 0
	ld.h	%d2, [%a15] 48
.LVL252:
.LBE567:
.LBE566:
	.loc 1 8280 0
	st.b	[%a2] 52, %d6
.LBB570:
.LBB568:
	.loc 1 5337 0
	ld.h	%d4, [%a12] 40
.LVL253:
	ld.hu	%d3, [%a12] 42
.LVL254:
	or	%d2, %d4
	st.h	[%a15] 48, %d2
	.loc 1 5338 0
	ld.h	%d2, [%a15] 50
	or	%d2, %d3
.LBE568:
.LBE570:
	.loc 1 8301 0
	ld.w	%d3, [%a12] 32
.LBB571:
.LBB569:
	.loc 1 5338 0
	st.h	[%a15] 50, %d2
.LBE569:
.LBE571:
	.loc 1 8301 0
	mov	%d2, 256
	jeq	%d3, %d2, .L137
	.loc 1 8306 0
	st.b	[%a15] 54, %d7
.L137:
.LVL255:
.LBB572:
.LBB573:
	.loc 1 7953 0
	ld.a	%a2, [%a14] lo:Adc_ConfigPtr
	.loc 1 7965 0
	ld.hu	%d2, [%a15] 36
	.loc 1 7953 0
	addsc.a	%a2, %a2, %d11, 2
	.loc 1 7968 0
	eq	%d5, %d2, 255
.LVL256:
	.loc 1 7953 0
	ld.a	%a2, [%a2]0
	addsc.a	%a2, %a2, %d12, 0
	ld.a	%a2, [%a2]0
	ld.w	%d3, [%a2] 8
	.loc 1 7954 0
	mov.a	%a4, %d3
	addsc.a	%a3, %a4, %d13, 0
	.loc 1 7953 0
	ld.bu	%d4, [%a3] 55
.LVL257:
	.loc 1 7968 0
	jnz	%d5, .L178
.LVL258:
	.loc 1 7965 0
	ld.hu	%d5, [%a15] 40
.LVL259:
	.loc 1 7968 0
	eq	%d6, %d5, 255
	jnz	%d6, .L179
.LVL260:
	.loc 1 7965 0
	ld.hu	%d6, [%a15] 44
.LVL261:
	.loc 1 7962 0
	mov	%d10, 2
	.loc 1 7968 0
	ne	%d7, %d6, 255
	.loc 1 7965 0
	mov	%d14, 2
	.loc 1 7968 0
	jz	%d7, .L140
.LVL262:
	.loc 1 7990 0
	madd	%d7, %d3, %d2, 60
	.loc 1 7995 0
	mov	%d10, 255
	.loc 1 7953 0
	mov	%d2, %d4
	.loc 1 7990 0
	mov.a	%a4, %d7
.LVL263:
	.loc 1 7995 0
	ld.bu	%d7, [%a4] 48
.LVL264:
	jnz	%d7, .L141
	.loc 1 7996 0
	ld.bu	%d2, [%a4] 55
	.loc 1 7995 0
	jge.u	%d2, %d4, .L181
	mov	%d10, 0
.L141:
.LVL265:
	.loc 1 7990 0
	madd	%d7, %d3, %d5, 60
	mov.a	%a4, %d7
.LVL266:
	.loc 1 7995 0
	ld.bu	%d5, [%a4] 48
.LVL267:
	jnz	%d5, .L142
.LVL268:
.L216:
	.loc 1 7996 0
	ld.bu	%d5, [%a4] 55
	.loc 1 7995 0
	jge.u	%d5, %d2, .L142
	mov	%d2, %d5
	.loc 1 7985 0
	mov	%d10, 1
.L142:
.LVL269:
	.loc 1 7990 0
	madd	%d5, %d3, %d6, 60
	mov.a	%a4, %d5
.LVL270:
	.loc 1 7995 0
	ld.bu	%d5, [%a4] 48
.LVL271:
	jnz	%d5, .L143
	ld.bu	%d5, [%a4] 55
	jge.u	%d5, %d2, .L143
	.loc 1 7985 0
	mov	%d10, 2
.LVL272:
.L144:
	mov	%d14, %d10
.LVL273:
.L140:
	addsc.a	%a13, %a15, %d14, 2
.LBE573:
.LBE572:
	.loc 1 8319 0
	ld.hu	%d9, [%a13] 36
	eq	%d2, %d9, 255
	jnz	%d2, .L146
.LVL274:
.LBB576:
	.loc 1 8334 0
	madd	%d7, %d3, %d9, 60
.LVL275:
	.loc 1 8330 0
	mov	%d2, 1
	st.b	[%a13] 39, %d2
	.loc 1 8334 0
	mov.a	%a4, %d7
	mov	%e4, %d10, %d8
	call	Adc_lStopConvRequest
.LVL276:
	.loc 1 8337 0
	mov	%d3, 255
	st.h	[%a13] 36, %d3
.LVL277:
.LBB577:
.LBB578:
	.loc 1 8066 0
	ld.hu	%d2, [%a15] 34
	ne	%d4, %d2, 255
	jz	%d4, .L211
.LVL278:
	.loc 1 8121 0
	ld.hu	%d2, [%a15] 32
	addsc.a	%a2, %a15, %d2, 2
	st.h	[%a2] 24, %d9
.LVL279:
	addsc.a	%a2, %a15, %d9, 2
	.loc 1 8123 0
	st.h	[%a2] 26, %d2
	.loc 1 8125 0
	st.h	[%a2] 24, %d3
	.loc 1 8127 0
	st.h	[%a15] 32, %d9
	ld.a	%a15, [%a14] lo:Adc_ConfigPtr
.LVL280:
	addsc.a	%a15, %a15, %d11, 2
	ld.a	%a15, [%a15]0
	addsc.a	%a15, %a15, %d12, 0
	ld.a	%a2, [%a15]0
	ld.a	%a15, [%a2] 8
	addsc.a	%a3, %a15, %d13, 0
.LVL281:
.L146:
.LBE578:
.LBE577:
.LBE576:
	.loc 1 8359 0
	st.h	[%a13] 36, %d15
.LVL282:
.LBB581:
.LBB582:
	.loc 1 6819 0
	sh	%d15, %d8, 10
.LVL283:
	mov.a	%a4, %d15
	.loc 1 6833 0
	ld.w	%d15, [%a3] 32
	.loc 1 6819 0
	lea	%a15, [%a4] 1024
	.loc 1 6833 0
	mov	%d2, 256
	.loc 1 6824 0
	ld.w	%d0, [%a2] 4
	.loc 1 6819 0
	addih.a	%a15, %a15, 61442
.LVL284:
	.loc 1 6827 0
	ld.a	%a2, [%a3] 4
.LVL285:
	.loc 1 6829 0
	ld.bu	%d6, [%a3] 56
.LVL286:
	.loc 1 6833 0
	jeq	%d15, %d2, .L148
	.loc 1 6837 0
	st.w	[%a15] 176, %d15
.LVL287:
.L148:
.LBE582:
.LBE581:
	mov	%d4, 0
.LBB584:
.LBB583:
	.loc 1 6859 0
	mov	%d7, 0
.LVL288:
.L149:
	.loc 1 6852 0
	ld.bu	%d3, [%a2]0
	.loc 1 6849 0
	ld.bu	%d2, [%a2] 2
.LVL289:
	.loc 1 6852 0
	madd	%d5, %d0, %d3, 12
	.loc 1 6853 0
	sh	%d15, %d2, 16
	.loc 1 6859 0
	addi	%d2, %d2, 160
	.loc 1 6852 0
	mov.a	%a4, %d5
	.loc 1 6859 0
	addsc.a	%a3, %a15, %d2, 2
	.loc 1 6852 0
	ld.w	%d3, [%a4]0
	add	%d4, 1
.LVL290:
	or	%d15, %d3
.LVL291:
	.loc 1 6858 0
	ld.bu	%d3, [%a2] 1
	add.a	%a2, 4
.LVL292:
	addi	%d3, %d3, 128
	addsc.a	%a4, %a15, %d3, 2
	st.w	[%a4]0, %d15
.LVL293:
	.loc 1 6859 0
	st.w	[%a3]0, %d7
.LVL294:
	.loc 1 6876 0
	and	%d15, %d4, 255
.LVL295:
	jlt.u	%d15, %d6, .L149
.LBE583:
.LBE584:
	.loc 1 8376 0
	mov	%d15, 0
	st.b	[%a13] 39, %d15
	.loc 1 8380 0
	ld.bu	%d15, [%a12] 48
	jz	%d15, .L212
.LVL296:
	madd	%d10, %d10, %d8, 32
.LVL297:
.LBB585:
.LBB586:
	.loc 1 9499 0
	mov	%d15, 3328
	.loc 1 9563 0
	mov	%d3, 0
.LVL298:
	.loc 1 9496 0
	sh	%d10, 5
	mov.a	%a2, %d10
	.loc 1 9559 0
	mov	%d4, 128
	.loc 1 9496 0
	lea	%a13, [%a2] 1280
	addih.a	%a13, %a13, 61442
.LVL299:
	.loc 1 9499 0
	st.w	[%a13] 4, %d15
	.loc 1 9504 0
	mov	%d15, 1
	sh	%d15, %d15, %d14
	st.w	[%a15] 408, %d15
	.loc 1 9505 0
	ld.hu	%d15, [%a12] 40
	st.w	[%a15] 400, %d15
	.loc 1 9506 0
	ld.hu	%d15, [%a12] 42
	st.w	[%a15] 404, %d15
	.loc 1 9508 0
	ld.hu	%d15, [%a12] 42
	st.w	[%a15] 504, %d15
.LVL300:
	.loc 1 9554 0
	ld.w	%d2, [%a12] 24
.LVL301:
	movh	%d15, 32897
	.loc 1 9549 0
	ld.bu	%d5, [%a12] 56
	.loc 1 9554 0
	addi	%d15, %d15, -32768
	or	%d15, %d2
	.loc 1 9547 0
	ld.a	%a3, [%a12] 4
.LVL302:
	.loc 1 9563 0
	add	%d5, -1
	.loc 1 9553 0
	st.w	[%a13]0, %d15
.LVL303:
	.loc 1 9563 0
	jlez	%d5, .L151
	mov	%d15, 0
.LVL304:
.L152:
	.loc 1 9571 0
	and	%d3, %d15, 255
	addsc.a	%a2, %a3, %d3, 2
	ld.bu	%d3, [%a2] 1
	or	%d2, %d3, 32
	and	%d2, %d2, 255
	.loc 1 9570 0
	or	%d2, %d4
	add	%d3, %d15, 1
	.loc 1 9569 0
	st.w	[%a13] 16, %d2
.LVL305:
	and	%d3, %d3, 255
.LVL306:
	add	%d15, 1
	.loc 1 9573 0
	mov	%d4, 0
	.loc 1 9563 0
	jlt	%d3, %d5, .L152
	sh	%d3, 2
.LVL307:
.L151:
	.loc 1 9583 0
	addsc.a	%a3, %a3, %d3, 0
.LVL308:
	ld.bu	%d2, [%a3] 1
	or	%d15, %d2, 96
	and	%d15, 255
	.loc 1 9582 0
	or	%d15, %d4
	st.w	[%a13] 16, %d15
	.loc 1 9590 0
	ld.w	%d15, [%a12] 36
	jz	%d15, .L153
	.loc 1 9594 0
	st.w	[%a13] 24, %d15
.LVL309:
.L154:
.LBB587:
.LBB588:
	.loc 1 7333 0
	call	Mcal_GetCpuIndex
.LVL310:
.LBB589:
.LBB590:
	.loc 1 4607 0
	movh.a	%a4, hi:Adc_kKernelData
.LVL311:
	lea	%a4, [%a4] lo:Adc_kKernelData
.LVL312:
	madd	%d8, %d8, %d2, 12
.LVL313:
	addsc.a	%a3, %a4, %d2, 2
	movh.a	%a4, hi:Adc_kKernelDataIndex
.LVL314:
	lea	%a4, [%a4] lo:Adc_kKernelDataIndex
.LVL315:
	addsc.a	%a2, %a4, %d8, 0
	ld.w	%d3, [%a3]0
	ld.bu	%d15, [%a2]0
.LBE590:
.LBE589:
	.loc 1 7353 0
	ld.a	%a3, [%a14] lo:Adc_ConfigPtr
.LBB593:
.LBB591:
	.loc 1 4607 0
	madd	%d4, %d3, %d15, 56
.LBE591:
.LBE593:
	.loc 1 7360 0
	mov	%d3, 0
.LBB594:
.LBB592:
	.loc 1 4607 0
	mov.a	%a2, %d4
.LVL316:
.LBE592:
.LBE594:
	.loc 1 7348 0
	ld.hu	%d15, [%a2] 36
	eq	%d4, %d15, 255
	jnz	%d4, .L160
.LVL317:
	.loc 1 7353 0
	addsc.a	%a4, %a3, %d2, 2
	.loc 1 7354 0
	ld.a	%a4, [%a4] 4
	addsc.a	%a4, %a4, %d12, 0
	ld.a	%a4, [%a4]0
	.loc 1 7356 0
	ld.w	%d3, [%a4] 8
	madd	%d5, %d3, %d15, 60
	mov.a	%a4, %d5
	ld.bu	%d3, [%a4] 55
.LVL318:
.L160:
	.loc 1 7362 0
	mov	%d15, 0
	st.b	[%SP] 2, %d15
.LVL319:
	.loc 1 7348 0
	ld.hu	%d15, [%a2] 40
	st.b	[%SP] 5, %d3
	eq	%d4, %d15, 255
	.loc 1 7360 0
	mov	%d3, 0
	.loc 1 7348 0
	jnz	%d4, .L161
.LVL320:
	.loc 1 7353 0
	addsc.a	%a4, %a3, %d2, 2
	.loc 1 7354 0
	ld.a	%a4, [%a4] 4
	addsc.a	%a4, %a4, %d12, 0
	ld.a	%a4, [%a4]0
	.loc 1 7356 0
	ld.w	%d3, [%a4] 8
	madd	%d7, %d3, %d15, 60
	mov.a	%a4, %d7
	ld.bu	%d3, [%a4] 55
.LVL321:
.L161:
	.loc 1 7362 0
	mov	%d15, 0
	st.b	[%SP] 3, %d15
.LVL322:
	.loc 1 7348 0
	ld.hu	%d15, [%a2] 44
	st.b	[%SP] 6, %d3
	eq	%d4, %d15, 255
	.loc 1 7360 0
	mov	%d3, 0
	.loc 1 7348 0
	jnz	%d4, .L162
.LVL323:
	.loc 1 7353 0
	addsc.a	%a3, %a3, %d2, 2
.LVL324:
	.loc 1 7354 0
	ld.a	%a2, [%a3] 4
	addsc.a	%a2, %a2, %d12, 0
	ld.a	%a2, [%a2]0
	.loc 1 7356 0
	ld.w	%d2, [%a2] 8
.LVL325:
	madd	%d3, %d2, %d15, 60
	mov.a	%a2, %d3
	ld.bu	%d3, [%a2] 55
.L162:
	.loc 1 7368 0
	ld.bu	%d4, [%SP] 2
	st.b	[%SP] 7, %d3
.LVL326:
	.loc 1 7366 0
	ld.bu	%d2, [%SP] 5
	ld.bu	%d3, [%SP] 6
	.loc 1 7368 0
	add	%d4, 1
	and	%d6, %d4, 255
	ld.bu	%d5, [%SP] 3
	.loc 1 7366 0
	jlt.u	%d3, %d2, .L164
	ld.bu	%d6, [%SP] 2
	ld.bu	%d5, [%SP] 3
	.loc 1 7370 0
	jlt.u	%d2, %d3, .L213
.L164:
	.loc 1 7379 0
	ld.bu	%d15, [%SP] 7
	lt.u	%d4, %d2, %d15
	jge.u	%d15, %d2, .L167
	.loc 1 7381 0
	addi	%d4, %d6, 1
	and	%d6, %d4, 255
	mov	%d4, 0
.L167:
	.loc 1 7392 0
	jge.u	%d15, %d3, .L168
	.loc 1 7394 0
	add	%d5, 1
	and	%d5, %d5, 255
.L169:
	.loc 1 7408 0
	sh	%d5, 4
	.loc 1 7409 0
	sh	%d4, %d4, 8
	.loc 1 7412 0
	ld.w	%d2, [%a15] 132
	or	%d4, %d5
	mov	%d15, 819
	.loc 1 7406 0
	or	%d4, %d6
.LVL327:
	.loc 1 7412 0
	and	%d15, %d2
	jeq	%d4, %d15, .L170
	.loc 1 7416 0
	ld.w	%d2, [%a15] 132
.LVL328:
	.loc 1 7417 0
	insert	%d15, %d2, 0, 24, 3
.LVL329:
	.loc 1 7420 0
	st.w	[%a15] 132, %d15
	.loc 1 7421 0
	st.w	[%a15] 132, %d15
	.loc 1 7425 0
	movh	%d15, 63744
.LVL330:
	addi	%d15, %d15, -820
	and	%d2, %d15
.LVL331:
	.loc 1 7426 0
	st.w	[%a15] 132, %d2
	.loc 1 7430 0
	ld.w	%d15, [%a15] 132
	or	%d4, %d15
.LVL332:
	st.w	[%a15] 132, %d4
	.loc 1 7434 0
	ld.w	%d15, [%a15] 132
	insert	%d15, %d15, 15, 24, 3
	st.w	[%a15] 132, %d15
.LVL333:
.L170:
.LBE588:
.LBE587:
	.loc 1 9614 0
	ld.w	%d4, [%a12] 28
	st.w	[%a13] 4, %d4
	.loc 1 9617 0
	ld.w	%d15, [%a12] 36
	jz	%d15, .L136
	.loc 1 9621 0
	ld.w	%d15, [%a13] 24
	insert	%d15, %d15, 1, 16, 1
	st.w	[%a13] 24, %d15
	ret
.LVL334:
.L143:
.LBE586:
.LBE585:
	.loc 1 8315 0
	eq	%d2, %d10, 255
	jz	%d2, .L144
.LVL335:
.LBB621:
.LBB622:
	.loc 1 8066 0
	ld.hu	%d2, [%a15] 34
	ne	%d5, %d2, 255
	jz	%d5, .L214
.L194:
.LVL336:
	.loc 1 8101 0
	madd	%d5, %d3, %d2, 60
	mov.a	%a2, %d5
	ld.bu	%d5, [%a2] 55
	addsc.a	%a2, %a15, %d2, 2
	jge.u	%d5, %d4, .L173
	.loc 1 8107 0
	ld.hu	%d2, [%a2] 24
.LVL337:
	.loc 1 8110 0
	ne	%d5, %d2, 255
	jnz	%d5, .L194
.LVL338:
	.loc 1 8121 0
	ld.hu	%d3, [%a15] 32
	addsc.a	%a2, %a15, %d3, 2
	st.h	[%a2] 24, %d15
	addsc.a	%a2, %a15, %d15, 2
	.loc 1 8123 0
	st.h	[%a2] 26, %d3
	.loc 1 8125 0
	st.h	[%a2] 24, %d2
	.loc 1 8127 0
	st.h	[%a15] 32, %d15
	ret
.LVL339:
.L212:
.LBE622:
.LBE621:
	.loc 1 8412 0
	.loc 1 8387 0
	mov.aa	%a4, %a12
	mov	%e4, %d10, %d8
	.loc 1 8412 0
	lea	%SP, [%SP] 8
	.loc 1 8387 0
	j	Adc_lStartSwConversion
.LVL340:
.L173:
.LBB625:
.LBB623:
	.loc 1 8133 0
	ld.hu	%d3, [%a2] 26
.LVL341:
	.loc 1 8135 0
	st.h	[%a2] 26, %d15
.LVL342:
	addsc.a	%a2, %a15, %d15, 2
	.loc 1 8137 0
	st.h	[%a2] 24, %d2
	.loc 1 8136 0
	st.h	[%a2] 26, %d3
	.loc 1 8138 0
	eq	%d2, %d3, 255
.LVL343:
	jnz	%d2, .L215
	.loc 1 8144 0
	addsc.a	%a15, %a15, %d3, 2
.LVL344:
	st.h	[%a15] 24, %d15
.LVL345:
.L136:
	ret
.LVL346:
.L181:
.LBE623:
.LBE625:
.LBB626:
.LBB574:
	.loc 1 7990 0
	madd	%d7, %d3, %d5, 60
	.loc 1 7995 0
	mov	%d2, %d4
.LVL347:
	.loc 1 7990 0
	mov.a	%a4, %d7
.LVL348:
	.loc 1 7995 0
	ld.bu	%d5, [%a4] 48
.LVL349:
	jnz	%d5, .L142
	j	.L216
.LVL350:
.L168:
.LBE574:
.LBE626:
.LBB627:
.LBB617:
.LBB596:
.LBB595:
	.loc 1 7396 0
	jge.u	%d3, %d15, .L169
	.loc 1 7398 0
	add	%d4, 1
	and	%d4, %d4, 255
	j	.L169
.L213:
	.loc 1 7372 0
	ld.bu	%d5, [%SP] 3
	ld.bu	%d6, [%SP] 2
	add	%d5, 1
	and	%d5, %d5, 255
	j	.L164
.LVL351:
.L153:
.LBE595:
.LBE596:
.LBB597:
.LBB598:
	.loc 1 9403 0
	ld.w	%d15, [%a12] 16
	jz	%d15, .L155
.LVL352:
.LBB599:
.LBB600:
	.loc 1 9796 0
	mov.a	%a3, %d15
	.loc 1 9815 0
	mov.u	%d9, 65535
	.loc 1 9796 0
	ld.bu	%d2, [%a3] 4
.LVL353:
	.loc 1 9815 0
	ld.hu	%d4, [%a3]0
	.loc 1 9800 0
	and	%d5, %d2, 1
.LVL354:
	.loc 1 9796 0
	extr.u	%d2, %d2, 1, 2
.LVL355:
	.loc 1 9800 0
	sh	%d5, 4
	.loc 1 9815 0
	sh	%d2, 2
	mov.a	%a2, %d2
	and	%d5, %d5, 255
	lea	%a4, [%a2] 25104
	sh	%d4, %d4, %d5
	addih.a	%a4, %a4, 61443
	sh	%d5, %d9, %d5
	.loc 1 9805 0
	ld.bu	%d10, [%a3] 5
.LVL356:
	.loc 1 9815 0
	call	Mcal_WriteSafetyEndInitProtRegMask
.LVL357:
	.loc 1 9809 0
	and	%d5, %d10, 1
	.loc 1 9805 0
	extr.u	%d10, %d10, 1, 2
.LVL358:
	.loc 1 9822 0
	mov.a	%a2, %d15
	sh	%d10, 2
	mov.a	%a3, %d10
	.loc 1 9809 0
	sh	%d5, 4
	.loc 1 9822 0
	ld.hu	%d4, [%a2] 2
	and	%d5, %d5, 255
	lea	%a4, [%a3] 25132
	sh	%d4, %d4, %d5
	addih.a	%a4, %a4, 61443
	sh	%d5, %d9, %d5
	call	Mcal_WriteSafetyEndInitProtRegMask
.LVL359:
.L156:
.LBE600:
.LBE599:
	.loc 1 9428 0
	ld.w	%d15, [%a12] 20
	jz	%d15, .L158
.LVL360:
.LBB601:
.LBB602:
	.loc 1 9796 0
	mov.a	%a3, %d15
	.loc 1 9815 0
	mov.u	%d9, 65535
	.loc 1 9796 0
	ld.bu	%d2, [%a3] 4
.LVL361:
	.loc 1 9815 0
	ld.hu	%d4, [%a3]0
	.loc 1 9800 0
	and	%d5, %d2, 1
	.loc 1 9796 0
	extr.u	%d2, %d2, 1, 2
.LVL362:
	.loc 1 9800 0
	sh	%d5, 4
	.loc 1 9815 0
	sh	%d2, 2
	mov.a	%a2, %d2
	and	%d5, %d5, 255
	lea	%a4, [%a2] 25104
	sh	%d4, %d4, %d5
	addih.a	%a4, %a4, 61443
	sh	%d5, %d9, %d5
	.loc 1 9805 0
	ld.bu	%d10, [%a3] 5
.LVL363:
	.loc 1 9815 0
	call	Mcal_WriteSafetyEndInitProtRegMask
.LVL364:
	.loc 1 9809 0
	and	%d5, %d10, 1
	.loc 1 9805 0
	extr.u	%d10, %d10, 1, 2
.LVL365:
	.loc 1 9822 0
	mov.a	%a2, %d15
	sh	%d10, 2
	mov.a	%a3, %d10
	ld.hu	%d4, [%a2] 2
	.loc 1 9809 0
	sh	%d5, 4
	.loc 1 9822 0
	and	%d5, %d5, 255
	lea	%a4, [%a3] 25132
	sh	%d4, %d4, %d5
	addih.a	%a4, %a4, 61443
	sh	%d5, %d9, %d5
	call	Mcal_WriteSafetyEndInitProtRegMask
.LVL366:
	j	.L154
.LVL367:
.L211:
	addsc.a	%a2, %a15, %d9, 2
.LBE602:
.LBE601:
.LBE598:
.LBE597:
.LBE617:
.LBE627:
.LBB628:
.LBB580:
.LBB579:
	.loc 1 8070 0
	st.h	[%a2] 26, %d2
	.loc 1 8071 0
	st.h	[%a2] 24, %d2
	.loc 1 8073 0
	st.h	[%a15] 32, %d9
	.loc 1 8074 0
	st.h	[%a15] 34, %d9
	ld.a	%a15, [%a14] lo:Adc_ConfigPtr
.LVL368:
	addsc.a	%a15, %a15, %d11, 2
	ld.a	%a15, [%a15]0
	addsc.a	%a15, %a15, %d12, 0
	ld.a	%a2, [%a15]0
	ld.a	%a4, [%a2] 8
	addsc.a	%a3, %a4, %d13, 0
	j	.L146
.LVL369:
.L158:
.LBE579:
.LBE580:
.LBE628:
.LBB629:
.LBB618:
.LBB614:
.LBB611:
	.loc 1 9439 0
	ld.a	%a4, [%a12] 12
	jz.a	%a4, .L154
.LVL370:
.LBB603:
.LBB604:
	.loc 1 9658 0
	ld.w	%d9, [%a4] 4
	.loc 1 9667 0
	ld.bu	%d2, [%a4]0
	.loc 1 9658 0
	extr.u	%d15, %d9, 8, 8
.LVL371:
	.loc 1 9662 0
	and	%d9, %d9, 255
.LVL372:
	.loc 1 9667 0
	jz	%d2, .L217
	.loc 1 9684 0
	call	Mcu_17_Gtm_AtomChannelInit
.LVL373:
	.loc 1 9687 0
	mov	%e4, %d9, %d15
	call	Mcu_17_Gtm_AtomChannelShadowTransfer
.LVL374:
	.loc 1 9690 0
	mov	%e4, %d9, %d15
	mov	%d6, 1
	call	Mcu_17_Gtm_AtomChannelEnable
.LVL375:
	j	.L154
.LVL376:
.L178:
.LBE604:
.LBE603:
.LBE611:
.LBE614:
.LBE618:
.LBE629:
.LBB630:
.LBB575:
	.loc 1 7961 0
	mov	%d10, 0
	.loc 1 7965 0
	mov	%d14, 0
	j	.L140
.LVL377:
.L179:
	.loc 1 7962 0
	mov	%d10, 1
	.loc 1 7965 0
	mov	%d14, 1
.LVL378:
	j	.L140
.LVL379:
.L155:
.LBE575:
.LBE630:
.LBB631:
.LBB619:
.LBB615:
.LBB612:
	.loc 1 9414 0
	ld.a	%a4, [%a12] 8
	jz.a	%a4, .L156
.LVL380:
.LBB606:
.LBB607:
	.loc 1 9658 0
	ld.w	%d9, [%a4] 4
	.loc 1 9667 0
	ld.bu	%d2, [%a4]0
	.loc 1 9658 0
	extr.u	%d15, %d9, 8, 8
.LVL381:
	.loc 1 9662 0
	and	%d9, %d9, 255
.LVL382:
	.loc 1 9667 0
	jz	%d2, .L218
	.loc 1 9684 0
	call	Mcu_17_Gtm_AtomChannelInit
.LVL383:
	.loc 1 9687 0
	mov	%e4, %d9, %d15
	call	Mcu_17_Gtm_AtomChannelShadowTransfer
.LVL384:
	.loc 1 9690 0
	mov	%e4, %d9, %d15
	mov	%d6, 1
	call	Mcu_17_Gtm_AtomChannelEnable
.LVL385:
	j	.L156
.LVL386:
.L214:
	addsc.a	%a2, %a15, %d15, 2
.LBE607:
.LBE606:
.LBE612:
.LBE615:
.LBE619:
.LBE631:
.LBB632:
.LBB624:
	.loc 1 8070 0
	st.h	[%a2] 26, %d10
	.loc 1 8071 0
	st.h	[%a2] 24, %d10
	.loc 1 8073 0
	st.h	[%a15] 32, %d15
	.loc 1 8074 0
	st.h	[%a15] 34, %d15
	ret
.LVL387:
.L215:
	.loc 1 8140 0
	st.h	[%a15] 34, %d15
	ret
.LVL388:
.L217:
.LBE624:
.LBE632:
.LBB633:
.LBB620:
.LBB616:
.LBB613:
.LBB609:
.LBB605:
	.loc 1 9671 0
	call	Mcu_17_Gtm_TomChannelInit
.LVL389:
	.loc 1 9674 0
	mov	%e4, %d9, %d15
	call	Mcu_17_Gtm_TomChannelShadowTransfer
.LVL390:
	.loc 1 9677 0
	mov	%e4, %d9, %d15
	mov	%d6, 1
	call	Mcu_17_Gtm_TomChannelEnable
.LVL391:
	j	.L154
.LVL392:
.L218:
.LBE605:
.LBE609:
.LBB610:
.LBB608:
	.loc 1 9671 0
	call	Mcu_17_Gtm_TomChannelInit
.LVL393:
	.loc 1 9674 0
	mov	%e4, %d9, %d15
	call	Mcu_17_Gtm_TomChannelShadowTransfer
.LVL394:
	.loc 1 9677 0
	mov	%e4, %d9, %d15
	mov	%d6, 1
	call	Mcu_17_Gtm_TomChannelEnable
.LVL395:
	j	.L156
.LBE608:
.LBE610:
.LBE613:
.LBE616:
.LBE620:
.LBE633:
.LFE70:
	.size	Adc_lSchedulerOnStart, .-Adc_lSchedulerOnStart
	.align 1
	.global	Adc_Init
	.type	Adc_Init, @function
Adc_Init:
.LFB19:
	.loc 1 1330 0
.LVL396:
	.loc 1 1330 0
	mov.aa	%a15, %a4
	.loc 1 1342 0
	call	Mcal_GetCpuIndex
.LVL397:
	movh.a	%a12, hi:Adc_ConfigPtr
	mov	%d9, %d2
.LVL398:
	ld.a	%a2, [%a12] lo:Adc_ConfigPtr
	.loc 1 1356 0
	jz	%d2, .L291
.LVL399:
.L222:
	addi	%d8, %d9, 1
	.loc 1 1330 0
	mov	%d15, 0
.LBB647:
.LBB648:
	.loc 1 5497 0
	sh	%d10, %d8, 2
	lea	%a13, [%a12] lo:Adc_ConfigPtr
.LVL400:
.L224:
	addsc.a	%a15, %a2, %d10, 0
	ld.a	%a15, [%a15]0
	addsc.a	%a15, %a15, %d15, 2
	ld.a	%a15, [%a15]0
	jz.a	%a15, .L223
	.loc 1 5502 0
	ld.a	%a4, [%a15] 8
	ld.bu	%d4, [%a15] 24
	mov	%d5, %d15
	call	Adc_lKernelDeInit.isra.11
.LVL401:
	ld.a	%a2, [%a13]0
.L223:
	.loc 1 5493 0
	add	%d15, 1
.LVL402:
	ne	%d2, %d15, 12
	jnz	%d2, .L224
	.loc 1 5509 0
	jz	%d9, .L292
.LVL403:
.L225:
	sh	%d5, %d9, 2
	addsc.a	%a5, %a2, %d5, 0
	.loc 1 5493 0
	movh.a	%a15, 61442
	ld.a	%a4, [%a5] 4
	lea	%a15, [%a15] 1024
	mov	%d3, 0
.LBB649:
.LBB650:
	.loc 1 6257 0
	mov	%d4, 528
	.loc 1 6263 0
	mov	%d15, 0
	mov.a	%a3, 11
.LVL404:
.L228:
.LBE650:
.LBE649:
	.loc 1 5541 0
	addsc.a	%a2, %a4, %d3, 2
	ld.a	%a2, [%a2]0
	jz.a	%a2, .L226
	ld.a	%a2, [%a2]0
.LVL405:
.LBB652:
.LBB651:
	.loc 1 6249 0
	ld.w	%d2, [%a2]0
	st.w	[%a15] 136, %d2
.LVL406:
	.loc 1 6250 0
	ld.w	%d2, [%a2] 8
	st.w	[%a15] 132, %d2
	.loc 1 6251 0
	ld.w	%d2, [%a2] 12
	st.w	[%a15] 160, %d2
	.loc 1 6252 0
	ld.w	%d2, [%a2] 16
	st.w	[%a15] 164, %d2
	.loc 1 6253 0
	ld.w	%d2, [%a2] 20
	st.w	[%a15] 192, %d2
	.loc 1 6257 0
	st.w	[%a15] 448, %d4
	.loc 1 6263 0
	st.w	[%a15] 416, %d15
	.loc 1 6266 0
	jlt.u	%d3, 5, .L227
	.loc 1 6268 0
	st.w	[%a15] 420, %d15
.L227:
	.loc 1 6272 0
	st.w	[%a15] 432, %d15
	.loc 1 6273 0
	st.w	[%a15] 436, %d15
	.loc 1 6276 0
	ld.w	%d2, [%a2] 4
	st.w	[%a15] 128, %d2
	ld.a	%a4, [%a5] 4
.LVL407:
.L226:
.LBE651:
.LBE652:
	.loc 1 5537 0
	add	%d3, 1
.LVL408:
	lea	%a15, [%a15] 1024
	loop	%a3, .L228
.LVL409:
	.loc 1 5558 0
	ld.a	%a15, [%a4]0
	jz.a	%a15, .L229
	.loc 1 5574 0
	ld.a	%a15, [%a15]0
	.loc 1 5572 0
	ld.w	%d2, [%a15] 4
	movh.a	%a15, 61442
	ld.w	%d15, [%a15] 1152
	insert	%d15, %d15, %d2, 0, 2
	st.w	[%a15] 1152, %d15
.LBB653:
.LBB654:
	.loc 2 190 0
#APP
	# 190 "s:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
.L229:
.LVL410:
	ld.a	%a15, [%a12] lo:Adc_ConfigPtr
	addsc.a	%a15, %a15, %d8, 2
.LBE654:
.LBE653:
	.loc 1 5558 0
	ld.a	%a15, [%a15]0
	ld.a	%a15, [%a15] 4
	jz.a	%a15, .L230
	.loc 1 5574 0
	ld.a	%a15, [%a15]0
	.loc 1 5572 0
	ld.w	%d2, [%a15] 4
	movh.a	%a15, 61442
	ld.w	%d15, [%a15] 2176
	insert	%d15, %d15, %d2, 0, 2
	st.w	[%a15] 2176, %d15
.LBB666:
.LBB655:
	.loc 2 190 0
#APP
	# 190 "s:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
.L230:
.LVL411:
	ld.a	%a15, [%a12] lo:Adc_ConfigPtr
	addsc.a	%a15, %a15, %d8, 2
.LBE655:
.LBE666:
	.loc 1 5558 0
	ld.a	%a15, [%a15]0
	ld.a	%a15, [%a15] 8
	jz.a	%a15, .L231
	.loc 1 5574 0
	ld.a	%a15, [%a15]0
	.loc 1 5572 0
	ld.w	%d2, [%a15] 4
	movh.a	%a15, 61442
	ld.w	%d15, [%a15] 3200
	insert	%d15, %d15, %d2, 0, 2
	st.w	[%a15] 3200, %d15
.LBB667:
.LBB656:
	.loc 2 190 0
#APP
	# 190 "s:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
.L231:
.LVL412:
	ld.a	%a15, [%a12] lo:Adc_ConfigPtr
	addsc.a	%a15, %a15, %d8, 2
.LBE656:
.LBE667:
	.loc 1 5558 0
	ld.a	%a15, [%a15]0
	ld.a	%a15, [%a15] 12
	jz.a	%a15, .L232
	.loc 1 5574 0
	ld.a	%a15, [%a15]0
	.loc 1 5572 0
	ld.w	%d2, [%a15] 4
	movh.a	%a15, 61442
	ld.w	%d15, [%a15] 4224
	insert	%d15, %d15, %d2, 0, 2
	st.w	[%a15] 4224, %d15
.LBB668:
.LBB657:
	.loc 2 190 0
#APP
	# 190 "s:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
.L232:
.LVL413:
	ld.a	%a15, [%a12] lo:Adc_ConfigPtr
	addsc.a	%a15, %a15, %d8, 2
.LBE657:
.LBE668:
	.loc 1 5558 0
	ld.a	%a15, [%a15]0
	ld.a	%a15, [%a15] 16
	jz.a	%a15, .L233
	.loc 1 5574 0
	ld.a	%a15, [%a15]0
	.loc 1 5572 0
	ld.w	%d2, [%a15] 4
	movh.a	%a15, 61442
	ld.w	%d15, [%a15] 5248
	insert	%d15, %d15, %d2, 0, 2
	st.w	[%a15] 5248, %d15
.LBB669:
.LBB658:
	.loc 2 190 0
#APP
	# 190 "s:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
.L233:
.LVL414:
	ld.a	%a15, [%a12] lo:Adc_ConfigPtr
	addsc.a	%a15, %a15, %d8, 2
.LBE658:
.LBE669:
	.loc 1 5558 0
	ld.a	%a15, [%a15]0
	ld.a	%a15, [%a15] 20
	jz.a	%a15, .L234
	.loc 1 5574 0
	ld.a	%a15, [%a15]0
	.loc 1 5572 0
	ld.w	%d2, [%a15] 4
	movh.a	%a15, 61442
	ld.w	%d15, [%a15] 6272
	insert	%d15, %d15, %d2, 0, 2
	st.w	[%a15] 6272, %d15
.LBB670:
.LBB659:
	.loc 2 190 0
#APP
	# 190 "s:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
.L234:
.LVL415:
	ld.a	%a15, [%a12] lo:Adc_ConfigPtr
	addsc.a	%a15, %a15, %d8, 2
.LBE659:
.LBE670:
	.loc 1 5558 0
	ld.a	%a15, [%a15]0
	ld.a	%a15, [%a15] 24
	jz.a	%a15, .L235
	.loc 1 5574 0
	ld.a	%a15, [%a15]0
	.loc 1 5572 0
	ld.w	%d2, [%a15] 4
	movh.a	%a15, 61442
	ld.w	%d15, [%a15] 7296
	insert	%d15, %d15, %d2, 0, 2
	st.w	[%a15] 7296, %d15
.LBB671:
.LBB660:
	.loc 2 190 0
#APP
	# 190 "s:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
.L235:
.LVL416:
	ld.a	%a15, [%a12] lo:Adc_ConfigPtr
	addsc.a	%a15, %a15, %d8, 2
.LBE660:
.LBE671:
	.loc 1 5558 0
	ld.a	%a15, [%a15]0
	ld.a	%a15, [%a15] 28
	jz.a	%a15, .L236
	.loc 1 5574 0
	ld.a	%a15, [%a15]0
	.loc 1 5572 0
	ld.w	%d2, [%a15] 4
	movh.a	%a15, 61442
	ld.w	%d15, [%a15] 8320
	insert	%d15, %d15, %d2, 0, 2
	st.w	[%a15] 8320, %d15
.LBB672:
.LBB661:
	.loc 2 190 0
#APP
	# 190 "s:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
.L236:
.LVL417:
	ld.a	%a15, [%a12] lo:Adc_ConfigPtr
	addsc.a	%a15, %a15, %d8, 2
.LBE661:
.LBE672:
	.loc 1 5558 0
	ld.a	%a15, [%a15]0
	ld.a	%a15, [%a15] 32
	jz.a	%a15, .L237
	.loc 1 5574 0
	ld.a	%a15, [%a15]0
	.loc 1 5572 0
	ld.w	%d2, [%a15] 4
	movh.a	%a15, 61442
	ld.w	%d15, [%a15] 9344
	insert	%d15, %d15, %d2, 0, 2
	st.w	[%a15] 9344, %d15
.LBB673:
.LBB662:
	.loc 2 190 0
#APP
	# 190 "s:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
.L237:
.LVL418:
	ld.a	%a15, [%a12] lo:Adc_ConfigPtr
	addsc.a	%a15, %a15, %d8, 2
.LBE662:
.LBE673:
	.loc 1 5558 0
	ld.a	%a15, [%a15]0
	ld.a	%a15, [%a15] 36
	jz.a	%a15, .L238
	.loc 1 5574 0
	ld.a	%a15, [%a15]0
	.loc 1 5572 0
	ld.w	%d2, [%a15] 4
	movh.a	%a15, 61442
	ld.w	%d15, [%a15] 10368
	insert	%d15, %d15, %d2, 0, 2
	st.w	[%a15] 10368, %d15
.LBB674:
.LBB663:
	.loc 2 190 0
#APP
	# 190 "s:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
.L238:
.LVL419:
	ld.a	%a15, [%a12] lo:Adc_ConfigPtr
	addsc.a	%a15, %a15, %d8, 2
.LBE663:
.LBE674:
	.loc 1 5558 0
	ld.a	%a15, [%a15]0
	ld.a	%a15, [%a15] 40
	jz.a	%a15, .L239
	.loc 1 5574 0
	ld.a	%a15, [%a15]0
	.loc 1 5572 0
	ld.w	%d2, [%a15] 4
	movh.a	%a15, 61442
	ld.w	%d15, [%a15] 11392
	insert	%d15, %d15, %d2, 0, 2
	st.w	[%a15] 11392, %d15
.LBB675:
.LBB664:
	.loc 2 190 0
#APP
	# 190 "s:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
.L239:
.LVL420:
	ld.a	%a15, [%a12] lo:Adc_ConfigPtr
	addsc.a	%a15, %a15, %d8, 2
.LBE664:
.LBE675:
	.loc 1 5558 0
	ld.a	%a15, [%a15]0
	ld.a	%a15, [%a15] 44
	jz.a	%a15, .L240
	.loc 1 5574 0
	ld.a	%a15, [%a15]0
	.loc 1 5572 0
	ld.w	%d2, [%a15] 4
	movh.a	%a15, 61442
	ld.w	%d15, [%a15] 12416
	insert	%d15, %d15, %d2, 0, 2
	st.w	[%a15] 12416, %d15
.LBB676:
.LBB665:
	.loc 2 190 0
#APP
	# 190 "s:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
.L240:
.LVL421:
.LBE665:
.LBE676:
.LBB677:
.LBB678:
	.loc 1 5865 0
	movh.a	%a15, hi:Adc_kKernelUsedCount
	lea	%a15, [%a15] lo:Adc_kKernelUsedCount
	addsc.a	%a15, %a15, %d9, 0
	ld.bu	%d7, [%a15]0
	jz	%d7, .L219
	movh.a	%a15, hi:Adc_kKernelData
	lea	%a15, [%a15] lo:Adc_kKernelData
	addsc.a	%a15, %a15, %d5, 0
	mov	%d6, 0
	ld.a	%a15, [%a15]0
.LBB679:
	.loc 1 5882 0
	mov	%d15, 0
	.loc 1 5905 0
	mov	%d2, 255
	.loc 1 5918 0
	mov	%d3, -1
	.loc 1 5920 0
	mov	%d4, 1
	.loc 1 5936 0
	mov	%d0, 0
.LVL422:
.L242:
	add	%d6, 1
.LVL423:
	.loc 1 5882 0
	st.w	[%a15]0, %d15
	.loc 1 5883 0
	st.b	[%a15] 52, %d15
	.loc 1 5905 0
	st.h	[%a15] 24, %d2
	.loc 1 5907 0
	st.h	[%a15] 26, %d2
.LVL424:
	.loc 1 5882 0
	st.w	[%a15] 4, %d15
	.loc 1 5883 0
	st.b	[%a15] 53, %d15
	.loc 1 5905 0
	st.h	[%a15] 28, %d2
	.loc 1 5907 0
	st.h	[%a15] 30, %d2
.LVL425:
	.loc 1 5917 0
	st.h	[%a15] 36, %d2
	.loc 1 5918 0
	st.b	[%a15] 38, %d3
	.loc 1 5920 0
	st.b	[%a15] 39, %d4
.LVL426:
	.loc 1 5917 0
	st.h	[%a15] 40, %d2
	.loc 1 5918 0
	st.b	[%a15] 42, %d3
	.loc 1 5920 0
	st.b	[%a15] 43, %d4
.LVL427:
	.loc 1 5917 0
	st.h	[%a15] 44, %d2
	.loc 1 5918 0
	st.b	[%a15] 46, %d3
	.loc 1 5920 0
	st.b	[%a15] 47, %d4
.LVL428:
	.loc 1 5932 0
	st.w	[%a15] 8, %d15
	.loc 1 5933 0
	st.w	[%a15] 12, %d15
	.loc 1 5934 0
	st.w	[%a15] 16, %d15
	.loc 1 5935 0
	st.w	[%a15] 20, %d15
	.loc 1 5936 0
	st.h	[%a15] 48, %d15
	.loc 1 5937 0
	st.h	[%a15] 50, %d15
	.loc 1 5939 0
	st.h	[%a15] 32, %d2
	.loc 1 5940 0
	st.h	[%a15] 34, %d2
	.loc 1 5955 0
	st.b	[%a15] 54, %d0
.LVL429:
.LBE679:
	.loc 1 5865 0
	and	%d5, %d6, 255
	lea	%a15, [%a15] 56
.LVL430:
	jlt.u	%d5, %d7, .L242
	ret
.LVL431:
.L291:
.LBE678:
.LBE677:
.LBE648:
.LBE647:
	.loc 1 1360 0
	movh.a	%a4, 61442
	mov	%d4, 8
	call	Mcal_WritePeripEndInitProtReg
.LVL432:
	.loc 1 1365 0
	movh.a	%a2, 61442
	ld.w	%d15, [%a2]0
.LVL433:
	.loc 1 1369 0
	jz.t	%d15, 1, .L293
.LVL434:
.L219:
	ret
.LVL435:
.L292:
.LBB687:
.LBB686:
.LBB680:
.LBB681:
	.loc 1 5818 0
	movh.a	%a15, 61442
	lea	%a15, [%a15] 160
	st.w	[%a15]0, %d9
	.loc 1 5819 0
	st.w	[%a15] 4, %d9
	.loc 1 5820 0
	st.w	[%a15] 24, %d9
	.loc 1 5821 0
	st.w	[%a15] 480, %d9
	.loc 1 5822 0
	movh	%d15, 32768
.LVL436:
	st.w	[%a15] 608, %d15
	.loc 1 5824 0
	movh	%d15, 256
	st.w	[%a15] 64, %d15
	.loc 1 5826 0
	st.w	[%a15] 160, %d9
	.loc 1 5828 0
	movh	%d15, 129
	.loc 1 5827 0
	st.w	[%a15] 196, %d9
	.loc 1 5828 0
	addi	%d15, %d15, -32768
	st.w	[%a15] 192, %d15
	.loc 1 5829 0
	movh.a	%a15, 61442
	st.w	[%a15] 1008, %d9
	.loc 1 5830 0
	mov.u	%d15, 32768
	st.w	[%a15] 128, %d15
.LBE681:
.LBE680:
	.loc 1 5516 0
	ld.a	%a3, [%a2]0
.LBB682:
.LBB683:
	.loc 1 5057 0
	mov	%d2, 0
.LBE683:
.LBE682:
	.loc 1 5516 0
	ld.w	%d15, [%a3]0
	insert	%d15, %d15, 15, 15, 1
	st.w	[%a15] 128, %d15
	.loc 1 5519 0
	ld.a	%a3, [%a2]0
	ld.w	%d15, [%a3] 4
	.loc 1 5518 0
	st.w	[%a15] 160, %d15
	.loc 1 5521 0
	ld.a	%a2, [%a2]0
	ld.w	%d15, [%a2] 8
	.loc 1 5520 0
	st.w	[%a15] 164, %d15
.LBB685:
.LBB684:
	.loc 1 5057 0
	movh.a	%a15, hi:Adc_StartupCalStatus
#APP
	# 5057 "Targets\TC38xx\MCAL\MCAL_Modules\Adc\src\Adc.c" 1
	imask %e2,%d9,%d2,1
	# 0 "" 2
.LVL437:
#NO_APP
	lea	%a15, [%a15] lo:Adc_StartupCalStatus
#APP
	# 5057 "Targets\TC38xx\MCAL\MCAL_Modules\Adc\src\Adc.c" 1
	ldmst [%a15]0,%e2
	# 0 "" 2
#NO_APP
	ld.a	%a2, [%a12] lo:Adc_ConfigPtr
	j	.L225
.LVL438:
.L293:
.LBE684:
.LBE685:
.LBE686:
.LBE687:
	.loc 1 1381 0
	st.a	[%a12] lo:Adc_ConfigPtr, %a15
	mov.aa	%a2, %a15
	j	.L222
.LFE19:
	.size	Adc_Init, .-Adc_Init
	.align 1
	.global	Adc_SetupResultBuffer
	.type	Adc_SetupResultBuffer, @function
Adc_SetupResultBuffer:
.LFB20:
	.loc 1 1527 0
.LVL439:
	.loc 1 1527 0
	mov	%d8, %d4
	mov.aa	%a12, %a4
	.loc 1 1534 0
	call	Mcal_GetCpuIndex
.LVL440:
.LBB688:
.LBB689:
.LBB690:
.LBB691:
	.file 3 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\Mcal_Compiler.h"
	.loc 3 615 0
	mov	%d4, 11
	mov	%d3, 5
#APP
	# 615 ".\output\inc/..\..\Targets\TC38xx\MCAL\MCAL_Modules\McalLib\inc\Mcal_Compiler.h" 1
	mov %d14,%d3  
                     mov %d15,%d4  
                     extr.u %d3,%d8,%e14
	# 0 "" 2
.LVL441:
#NO_APP
.LBE691:
.LBE690:
.LBE689:
.LBE688:
.LBB692:
.LBB693:
	.loc 1 4607 0
	movh.a	%a15, hi:Adc_kKernelData
	lea	%a15, [%a15] lo:Adc_kKernelData
	addsc.a	%a15, %a15, %d2, 2
	madd	%d2, %d3, %d2, 12
.LVL442:
	movh.a	%a2, hi:Adc_kKernelDataIndex
	lea	%a2, [%a2] lo:Adc_kKernelDataIndex
	addsc.a	%a2, %a2, %d2, 0
	ld.w	%d2, [%a15]0
	ld.bu	%d15, [%a2]0
.LBE693:
.LBE692:
	.loc 1 1607 0
	and	%d8, %d8, 31
.LVL443:
.LBB695:
.LBB694:
	.loc 1 4607 0
	madd	%d15, %d2, %d15, 56
.LBE694:
.LBE695:
	.loc 1 1595 0
	call	SchM_Enter_Adc_KernelData
.LVL444:
	.loc 1 1607 0
	mov.a	%a2, %d15
	addsc.a	%a15, %a2, %d8, 2
	.loc 1 1609 0
	mov	%d15, 0
	.loc 1 1607 0
	st.a	[%a15]0, %a12
	.loc 1 1609 0
	addsc.a	%a15, %a2, %d8, 0
	st.b	[%a15] 52, %d15
	.loc 1 1613 0
	call	SchM_Exit_Adc_KernelData
.LVL445:
	.loc 1 1620 0
	mov	%d2, 0
	ret
.LFE20:
	.size	Adc_SetupResultBuffer, .-Adc_SetupResultBuffer
	.align 1
	.global	Adc_DeInit
	.type	Adc_DeInit, @function
Adc_DeInit:
.LFB21:
	.loc 1 1654 0
	.loc 1 1659 0
	call	Mcal_GetCpuIndex
.LVL446:
	mov	%d8, %d2
.LVL447:
	add	%d2, 1
.LVL448:
	.loc 1 1688 0
	sh	%d2, 2
	movh.a	%a14, hi:Adc_ConfigPtr
	mov.a	%a13, %d2
	.loc 1 1683 0
	mov	%d15, 0
	lea	%a12, [%a14] lo:Adc_ConfigPtr
.LVL449:
.L297:
	.loc 1 1688 0
	ld.a	%a15, [%a12]0
	add.a	%a15, %a13
	ld.a	%a15, [%a15]0
	addsc.a	%a15, %a15, %d15, 2
	ld.a	%a15, [%a15]0
	jz.a	%a15, .L296
	.loc 1 1693 0
	ld.a	%a4, [%a15] 8
	ld.bu	%d4, [%a15] 24
	mov	%d5, %d15
	call	Adc_lKernelDeInit.isra.11
.LVL450:
.L296:
	.loc 1 1684 0
	add	%d15, 1
.LVL451:
	.loc 1 1683 0
	ne	%d3, %d15, 12
	jnz	%d3, .L297
.LVL452:
.LBB703:
.LBB704:
	.loc 1 5865 0
	movh.a	%a15, hi:Adc_kKernelUsedCount
	lea	%a15, [%a15] lo:Adc_kKernelUsedCount
	addsc.a	%a15, %a15, %d8, 0
	ld.bu	%d7, [%a15]0
	jz	%d7, .L302
	movh.a	%a15, hi:Adc_kKernelData
	lea	%a15, [%a15] lo:Adc_kKernelData
	addsc.a	%a15, %a15, %d8, 2
	mov	%d6, 0
	ld.a	%a15, [%a15]0
.LBB705:
	.loc 1 5882 0
	mov	%d15, 0
.LVL453:
	.loc 1 5905 0
	mov	%d3, 255
	.loc 1 5918 0
	mov	%d4, -1
	.loc 1 5920 0
	mov	%d5, 1
	.loc 1 5936 0
	mov	%d0, 0
.LVL454:
.L301:
	add	%d6, 1
.LVL455:
	.loc 1 5882 0
	st.w	[%a15]0, %d15
	.loc 1 5883 0
	st.b	[%a15] 52, %d15
	.loc 1 5905 0
	st.h	[%a15] 24, %d3
	.loc 1 5907 0
	st.h	[%a15] 26, %d3
.LVL456:
	.loc 1 5882 0
	st.w	[%a15] 4, %d15
	.loc 1 5883 0
	st.b	[%a15] 53, %d15
	.loc 1 5905 0
	st.h	[%a15] 28, %d3
	.loc 1 5907 0
	st.h	[%a15] 30, %d3
.LVL457:
	.loc 1 5917 0
	st.h	[%a15] 36, %d3
	.loc 1 5918 0
	st.b	[%a15] 38, %d4
	.loc 1 5920 0
	st.b	[%a15] 39, %d5
.LVL458:
	.loc 1 5917 0
	st.h	[%a15] 40, %d3
	.loc 1 5918 0
	st.b	[%a15] 42, %d4
	.loc 1 5920 0
	st.b	[%a15] 43, %d5
.LVL459:
	.loc 1 5917 0
	st.h	[%a15] 44, %d3
	.loc 1 5918 0
	st.b	[%a15] 46, %d4
	.loc 1 5920 0
	st.b	[%a15] 47, %d5
.LVL460:
	.loc 1 5932 0
	st.w	[%a15] 8, %d15
	.loc 1 5933 0
	st.w	[%a15] 12, %d15
	.loc 1 5934 0
	st.w	[%a15] 16, %d15
	.loc 1 5935 0
	st.w	[%a15] 20, %d15
	.loc 1 5936 0
	st.h	[%a15] 48, %d15
	.loc 1 5937 0
	st.h	[%a15] 50, %d15
	.loc 1 5939 0
	st.h	[%a15] 32, %d3
	.loc 1 5940 0
	st.h	[%a15] 34, %d3
	.loc 1 5955 0
	st.b	[%a15] 54, %d0
.LVL461:
.LBE705:
	.loc 1 5865 0
	and	%d2, %d6, 255
	lea	%a15, [%a15] 56
.LVL462:
	jlt.u	%d2, %d7, .L301
.LVL463:
.L302:
.LBE704:
.LBE703:
	.loc 1 1702 0
	jz	%d8, .L309
	ret
.L309:
.LVL464:
.LBB706:
.LBB707:
	.loc 1 5818 0
	movh.a	%a15, 61442
	lea	%a15, [%a15] 160
	st.w	[%a15]0, %d8
	.loc 1 5819 0
	st.w	[%a15] 4, %d8
	.loc 1 5820 0
	st.w	[%a15] 24, %d8
	.loc 1 5821 0
	st.w	[%a15] 480, %d8
	.loc 1 5822 0
	movh	%d15, 32768
	st.w	[%a15] 608, %d15
	.loc 1 5824 0
	movh	%d15, 256
	st.w	[%a15] 64, %d15
	.loc 1 5826 0
	st.w	[%a15] 160, %d8
	.loc 1 5828 0
	movh	%d15, 129
	.loc 1 5827 0
	st.w	[%a15] 196, %d8
	.loc 1 5828 0
	addi	%d15, %d15, -32768
	st.w	[%a15] 192, %d15
	.loc 1 5829 0
	movh.a	%a15, 61442
	st.w	[%a15] 1008, %d8
	.loc 1 5830 0
	mov.u	%d15, 32768
	st.w	[%a15] 128, %d15
.LBE707:
.LBE706:
	.loc 1 1707 0
	mov.aa	%a4, %a15
	mov	%d4, 1
.LBB708:
.LBB709:
	.loc 1 5057 0
	movh.a	%a15, hi:Adc_StartupCalStatus
.LBE709:
.LBE708:
	.loc 1 1707 0
	call	Mcal_WritePeripEndInitProtReg
.LVL465:
.LBB712:
.LBB710:
	.loc 1 5057 0
	mov	%d15, 0
.LBE710:
.LBE712:
	.loc 1 1711 0
	st.w	[%a14] lo:Adc_ConfigPtr, %d8
.LBB713:
.LBB711:
	.loc 1 5057 0
	lea	%a15, [%a15] lo:Adc_StartupCalStatus
#APP
	# 5057 "Targets\TC38xx\MCAL\MCAL_Modules\Adc\src\Adc.c" 1
	imask %e8,%d8,%d15,1
	# 0 "" 2
.LVL466:
	# 5057 "Targets\TC38xx\MCAL\MCAL_Modules\Adc\src\Adc.c" 1
	ldmst [%a15]0,%e8
	# 0 "" 2
#NO_APP
	ret
.LBE711:
.LBE713:
.LFE21:
	.size	Adc_DeInit, .-Adc_DeInit
	.align 1
	.global	Adc_StartGroupConversion
	.type	Adc_StartGroupConversion, @function
Adc_StartGroupConversion:
.LFB22:
	.loc 1 1765 0
.LVL467:
	.loc 1 1765 0
	mov	%d8, %d4
	.loc 1 1771 0
	call	Mcal_GetCpuIndex
.LVL468:
.LBB714:
.LBB715:
.LBB716:
.LBB717:
	.loc 3 615 0
	mov	%d10, 11
.LBE717:
.LBE716:
.LBE715:
.LBE714:
	.loc 1 1771 0
	mov	%d9, %d2
.LVL469:
.LBB721:
.LBB720:
.LBB719:
.LBB718:
	.loc 3 615 0
	mov	%d2, 5
.LVL470:
#APP
	# 615 ".\output\inc/..\..\Targets\TC38xx\MCAL\MCAL_Modules\McalLib\inc\Mcal_Compiler.h" 1
	mov %d14,%d2  
                     mov %d15,%d10  
                     extr.u %d10,%d8,%e14
	# 0 "" 2
.LVL471:
#NO_APP
.LBE718:
.LBE719:
.LBE720:
.LBE721:
	.loc 1 1839 0
	call	SchM_Enter_Adc_KernelData
.LVL472:
	.loc 1 1848 0
	mov	%d4, %d10
	and	%d5, %d8, 31
	mov	%d6, %d9
	call	Adc_lSchedulerOnStart
.LVL473:
	.loc 1 1859 0
	j	SchM_Exit_Adc_KernelData
.LVL474:
.LFE22:
	.size	Adc_StartGroupConversion, .-Adc_StartGroupConversion
	.align 1
	.global	Adc_StartGroupConversionSimple
	.type	Adc_StartGroupConversionSimple, @function
Adc_StartGroupConversionSimple:
.LFB23:
	.loc 1 1941 0
.LVL475:
	.loc 1 1941 0
	mov	%d8, %d4
	.loc 1 1947 0
	call	Mcal_GetCpuIndex
.LVL476:
.LBB722:
.LBB723:
.LBB724:
.LBB725:
	.loc 3 615 0
	mov	%d5, 11
	mov	%d3, 5
#APP
	# 615 ".\output\inc/..\..\Targets\TC38xx\MCAL\MCAL_Modules\McalLib\inc\Mcal_Compiler.h" 1
	mov %d14,%d3  
                     mov %d15,%d5  
                     extr.u %d5,%d8,%e14
	# 0 "" 2
.LVL477:
#NO_APP
.LBE725:
.LBE724:
.LBE723:
.LBE722:
.LBB726:
.LBB727:
	.loc 1 4607 0
	movh.a	%a15, hi:Adc_kKernelData
	lea	%a15, [%a15] lo:Adc_kKernelData
	addsc.a	%a15, %a15, %d2, 2
	madd	%d15, %d5, %d2, 12
	ld.w	%d0, [%a15]0
.LBE727:
.LBE726:
	.loc 1 1982 0
	movh.a	%a15, hi:Adc_ConfigPtr
	ld.a	%a15, [%a15] lo:Adc_ConfigPtr
.LBB732:
.LBB728:
	.loc 1 4607 0
	movh.a	%a2, hi:Adc_kKernelDataIndex
	lea	%a2, [%a2] lo:Adc_kKernelDataIndex
.LBE728:
.LBE732:
	.loc 1 1982 0
	addsc.a	%a15, %a15, %d2, 2
.LBB733:
.LBB729:
	.loc 1 4607 0
	addsc.a	%a2, %a2, %d15, 0
.LBE729:
.LBE733:
	.loc 1 1983 0
	ld.a	%a15, [%a15] 4
.LBB734:
.LBB730:
	.loc 1 4607 0
	ld.bu	%d15, [%a2]0
.LBE730:
.LBE734:
.LBB735:
.LBB736:
	.loc 1 4575 0
	and	%d4, %d8, 31
.LVL478:
.LBE736:
.LBE735:
	.loc 1 1983 0
	addsc.a	%a15, %a15, %d5, 2
.LBB737:
.LBB731:
	.loc 1 4607 0
	madd	%d0, %d0, %d15, 56
.LBE731:
.LBE737:
	.loc 1 1983 0
	ld.a	%a15, [%a15]0
.LBB738:
.LBB739:
	.loc 1 4700 0
	mov	%d6, 1
	mov.a	%a2, %d0
.LBE739:
.LBE738:
	.loc 1 1982 0
	ld.w	%d15, [%a15] 8
.LBB742:
.LBB740:
	.loc 1 4700 0
	lea	%a15, [%a2] 8
.LBE740:
.LBE742:
	.loc 1 1982 0
	madd	%d2, %d15, %d4, 60
.LVL479:
	mov.a	%a4, %d2
.LVL480:
.LBB743:
.LBB741:
	.loc 1 4700 0
	and	%d2, %d4, 255
.LVL481:
#APP
	# 4700 "Targets\TC38xx\MCAL\MCAL_Modules\Adc\src\Adc.c" 1
	imask %e6,%d6,%d2,1
	# 0 "" 2
.LVL482:
	# 4700 "Targets\TC38xx\MCAL\MCAL_Modules\Adc\src\Adc.c" 1
	ldmst [%a15]0,%e6
	# 0 "" 2
.LVL483:
#NO_APP
.LBE741:
.LBE743:
.LBB744:
.LBB745:
	.loc 1 4934 0
	mov	%d15, 0
	lea	%a15, [%a2] 12
#APP
	# 4934 "Targets\TC38xx\MCAL\MCAL_Modules\Adc\src\Adc.c" 1
	imask %e6,%d15,%d2,1
	# 0 "" 2
.LVL484:
	# 4934 "Targets\TC38xx\MCAL\MCAL_Modules\Adc\src\Adc.c" 1
	ldmst [%a15]0,%e6
	# 0 "" 2
.LVL485:
#NO_APP
.LBE745:
.LBE744:
.LBB746:
.LBB747:
	.loc 1 4975 0
#APP
	# 4975 "Targets\TC38xx\MCAL\MCAL_Modules\Adc\src\Adc.c" 1
	imask %e2,%d15,%d2,1
	# 0 "" 2
.LVL486:
#NO_APP
	lea	%a15, [%a2] 16
#APP
	# 4975 "Targets\TC38xx\MCAL\MCAL_Modules\Adc\src\Adc.c" 1
	ldmst [%a15]0,%e2
	# 0 "" 2
#NO_APP
.LBE747:
.LBE746:
	.loc 1 1999 0
	addsc.a	%a15, %a2, %d4, 0
	st.b	[%a15] 52, %d15
	.loc 1 2002 0
	ld.bu	%d2, [%a4] 55
.LVL487:
	addsc.a	%a15, %a2, %d2, 2
	st.h	[%a15] 36, %d4
	.loc 1 2010 0
	ld.bu	%d2, [%a4] 55
	.loc 1 2015 0
	mov	%d4, %d5
.LVL488:
	.loc 1 2010 0
	addi	%d2, %d2, 9
	addsc.a	%a15, %a2, %d2, 2
	st.b	[%a15] 3, %d15
	.loc 1 2015 0
	ld.bu	%d5, [%a4] 55
.LVL489:
	j	Adc_lStartSwConversion
.LVL490:
.LFE23:
	.size	Adc_StartGroupConversionSimple, .-Adc_StartGroupConversionSimple
	.align 1
	.global	Adc_StopGroupConversion
	.type	Adc_StopGroupConversion, @function
Adc_StopGroupConversion:
.LFB24:
	.loc 1 2052 0
.LVL491:
	.loc 1 2052 0
	mov	%d8, %d4
	.loc 1 2058 0
	call	Mcal_GetCpuIndex
.LVL492:
.LBB748:
.LBB749:
.LBB750:
.LBB751:
	.loc 3 615 0
	mov	%d10, 11
.LBE751:
.LBE750:
.LBE749:
.LBE748:
	.loc 1 2058 0
	mov	%d9, %d2
.LVL493:
.LBB755:
.LBB754:
.LBB753:
.LBB752:
	.loc 3 615 0
	mov	%d2, 5
.LVL494:
#APP
	# 615 ".\output\inc/..\..\Targets\TC38xx\MCAL\MCAL_Modules\McalLib\inc\Mcal_Compiler.h" 1
	mov %d14,%d2  
                     mov %d15,%d10  
                     extr.u %d10,%d8,%e14
	# 0 "" 2
.LVL495:
#NO_APP
.LBE752:
.LBE753:
.LBE754:
.LBE755:
	.loc 1 2115 0
	call	SchM_Enter_Adc_KernelData
.LVL496:
	.loc 1 2122 0
	mov	%d4, %d10
	and	%d5, %d8, 31
	mov	%d6, %d9
	call	Adc_lSchedulerOnStop
.LVL497:
	.loc 1 2132 0
	j	SchM_Exit_Adc_KernelData
.LVL498:
.LFE24:
	.size	Adc_StopGroupConversion, .-Adc_StopGroupConversion
	.align 1
	.global	Adc_ReadGroup
	.type	Adc_ReadGroup, @function
Adc_ReadGroup:
.LFB25:
	.loc 1 2275 0
.LVL499:
	.loc 1 2275 0
	mov	%d8, %d4
	mov.aa	%a13, %a4
	.loc 1 2286 0
	call	Mcal_GetCpuIndex
.LVL500:
.LBB756:
.LBB757:
.LBB758:
.LBB759:
	.loc 3 615 0
	mov	%d4, 11
	mov	%d3, 5
#APP
	# 615 ".\output\inc/..\..\Targets\TC38xx\MCAL\MCAL_Modules\McalLib\inc\Mcal_Compiler.h" 1
	mov %d14,%d3  
                     mov %d15,%d4  
                     extr.u %d3,%d8,%e14
	# 0 "" 2
.LVL501:
#NO_APP
.LBE759:
.LBE758:
.LBE757:
.LBE756:
.LBB760:
.LBB761:
	.loc 1 4607 0
	movh.a	%a15, hi:Adc_kKernelData
	lea	%a15, [%a15] lo:Adc_kKernelData
	addsc.a	%a15, %a15, %d2, 2
	madd	%d15, %d3, %d2, 12
	ld.w	%d4, [%a15]0
.LBE761:
.LBE760:
	.loc 1 2334 0
	movh.a	%a15, hi:Adc_ConfigPtr
	ld.a	%a15, [%a15] lo:Adc_ConfigPtr
.LBB767:
.LBB762:
	.loc 1 4607 0
	movh.a	%a2, hi:Adc_kKernelDataIndex
	lea	%a2, [%a2] lo:Adc_kKernelDataIndex
.LBE762:
.LBE767:
	.loc 1 2334 0
	addsc.a	%a15, %a15, %d2, 2
.LBB768:
.LBB763:
	.loc 1 4607 0
	addsc.a	%a2, %a2, %d15, 0
.LBE763:
.LBE768:
	.loc 1 2335 0
	ld.a	%a15, [%a15] 4
.LBB769:
.LBB764:
	.loc 1 4607 0
	ld.bu	%d15, [%a2]0
.LBE764:
.LBE769:
.LBB770:
.LBB771:
	.loc 1 4575 0
	and	%d8, %d8, 31
.LVL502:
.LBE771:
.LBE770:
	.loc 1 2335 0
	addsc.a	%a15, %a15, %d3, 2
.LBB772:
.LBB765:
	.loc 1 4607 0
	madd	%d5, %d4, %d15, 56
.LBE765:
.LBE772:
	.loc 1 2335 0
	ld.a	%a15, [%a15]0
.LBB773:
.LBB766:
	.loc 1 4607 0
	mov.a	%a12, %d5
.LBE766:
.LBE773:
	.loc 1 2334 0
	ld.w	%d15, [%a15] 8
	madd	%d2, %d15, %d8, 60
.LVL503:
	mov.a	%a15, %d2
.LVL504:
	.loc 1 2338 0
	ld.bu	%d10, [%a15] 52
.LVL505:
	.loc 1 2340 0
	ld.bu	%d9, [%a15] 56
.LVL506:
	.loc 1 2354 0
	call	SchM_Enter_Adc_KernelData
.LVL507:
.LBB774:
.LBB775:
.LBB776:
	.loc 3 615 0
	ld.w	%d4, [%a12] 8
	mov	%d2, 1
#APP
	# 615 ".\output\inc/..\..\Targets\TC38xx\MCAL\MCAL_Modules\McalLib\inc\Mcal_Compiler.h" 1
	mov %d14,%d8  
                     mov %d15,%d2  
                     extr.u %d4,%d4,%e14
	# 0 "" 2
.LVL508:
#NO_APP
.LBE776:
.LBE775:
.LBE774:
.LBB777:
.LBB778:
.LBB779:
	ld.w	%d3, [%a12] 12
#APP
	# 615 ".\output\inc/..\..\Targets\TC38xx\MCAL\MCAL_Modules\McalLib\inc\Mcal_Compiler.h" 1
	mov %d14,%d8  
                     mov %d15,%d2  
                     extr.u %d2,%d3,%e14
	# 0 "" 2
.LVL509:
#NO_APP
.LBE779:
.LBE778:
.LBE777:
	.loc 1 2362 0
	addsc.a	%a2, %a12, %d8, 0
	.loc 1 2366 0
	eq	%d5, %d4, 1
	and.eq	%d5, %d2, 0
	.loc 1 2362 0
	ld.bu	%d3, [%a2] 52
.LVL510:
	.loc 1 2370 0
	mov	%d15, 1
	.loc 1 2366 0
	jnz	%d5, .L314
	.loc 1 2444 0
	addsc.a	%a3, %a12, %d8, 2
	.loc 1 2445 0
	add	%d15, %d3, -1
	.loc 1 2444 0
	ld.a	%a3, [%a3]0
.LVL511:
	sh	%d3, %d10, 1
	mov.aa	%a4, %a13
	addsc.a	%a15, %a3, %d15, 1
.LVL512:
	.loc 1 2449 0
	mov	%d2, 0
.LVL513:
	jz	%d9, .L318
.LVL514:
.L320:
	.loc 1 2454 0 discriminator 3
	ld.hu	%d15, [%a15]0
	add	%d2, 1
.LVL515:
	.loc 1 2453 0 discriminator 3
	st.h	[%a4+]2, %d15
.LVL516:
	.loc 1 2449 0 discriminator 3
	and	%d15, %d2, 255
	addsc.a	%a15, %a15, %d3, 0
	jlt.u	%d15, %d9, .L320
.L318:
.LVL517:
.LBB780:
.LBB781:
	.loc 1 4934 0
	and	%d8, %d8, 255
.LVL518:
	mov	%d15, 0
	lea	%a15, [%a12] 12
#APP
	# 4934 "Targets\TC38xx\MCAL\MCAL_Modules\Adc\src\Adc.c" 1
	imask %e2,%d15,%d8,1
	# 0 "" 2
.LVL519:
	# 4934 "Targets\TC38xx\MCAL\MCAL_Modules\Adc\src\Adc.c" 1
	ldmst [%a15]0,%e2
	# 0 "" 2
.LVL520:
#NO_APP
.LBE781:
.LBE780:
.LBB782:
.LBB783:
	.loc 1 4975 0
#APP
	# 4975 "Targets\TC38xx\MCAL\MCAL_Modules\Adc\src\Adc.c" 1
	imask %e8,%d15,%d8,1
	# 0 "" 2
.LVL521:
#NO_APP
	lea	%a12, [%a12] 16
.LVL522:
#APP
	# 4975 "Targets\TC38xx\MCAL\MCAL_Modules\Adc\src\Adc.c" 1
	ldmst [%a12]0,%e8
	# 0 "" 2
#NO_APP
.LBE783:
.LBE782:
	.loc 1 2480 0
	jnz	%d4, .L314
	.loc 1 2485 0
	st.b	[%a2] 52, %d4
	.loc 1 2488 0
	mov	%d15, 0
.LVL523:
.L314:
	.loc 1 2492 0
	call	SchM_Exit_Adc_KernelData
.LVL524:
	.loc 1 2495 0
	mov	%d2, %d15
	ret
.LFE25:
	.size	Adc_ReadGroup, .-Adc_ReadGroup
	.align 1
	.global	Adc_EnableHardwareTrigger
	.type	Adc_EnableHardwareTrigger, @function
Adc_EnableHardwareTrigger:
.LFB26:
	.loc 1 2529 0
.LVL525:
	.loc 1 2529 0
	mov	%d8, %d4
	.loc 1 2539 0
	call	Mcal_GetCpuIndex
.LVL526:
.LBB784:
.LBB785:
.LBB786:
.LBB787:
	.loc 3 615 0
	mov	%d10, 11
.LBE787:
.LBE786:
.LBE785:
.LBE784:
	.loc 1 2539 0
	mov	%d9, %d2
.LVL527:
.LBB791:
.LBB790:
.LBB789:
.LBB788:
	.loc 3 615 0
	mov	%d2, 5
.LVL528:
#APP
	# 615 ".\output\inc/..\..\Targets\TC38xx\MCAL\MCAL_Modules\McalLib\inc\Mcal_Compiler.h" 1
	mov %d14,%d2  
                     mov %d15,%d10  
                     extr.u %d10,%d8,%e14
	# 0 "" 2
.LVL529:
#NO_APP
.LBE788:
.LBE789:
.LBE790:
.LBE791:
	.loc 1 2585 0
	call	SchM_Enter_Adc_KernelData
.LVL530:
	.loc 1 2592 0
	mov	%d4, %d10
	and	%d5, %d8, 31
	mov	%d6, %d9
	call	Adc_lSchedulerOnStart
.LVL531:
	.loc 1 2596 0
	j	SchM_Exit_Adc_KernelData
.LVL532:
.LFE26:
	.size	Adc_EnableHardwareTrigger, .-Adc_EnableHardwareTrigger
	.align 1
	.global	Adc_DisableHardwareTrigger
	.type	Adc_DisableHardwareTrigger, @function
Adc_DisableHardwareTrigger:
.LFB27:
	.loc 1 2735 0
.LVL533:
	.loc 1 2735 0
	mov	%d8, %d4
	.loc 1 2740 0
	call	Mcal_GetCpuIndex
.LVL534:
.LBB792:
.LBB793:
.LBB794:
.LBB795:
	.loc 3 615 0
	mov	%d10, 11
.LBE795:
.LBE794:
.LBE793:
.LBE792:
	.loc 1 2740 0
	mov	%d9, %d2
.LVL535:
.LBB799:
.LBB798:
.LBB797:
.LBB796:
	.loc 3 615 0
	mov	%d2, 5
.LVL536:
#APP
	# 615 ".\output\inc/..\..\Targets\TC38xx\MCAL\MCAL_Modules\McalLib\inc\Mcal_Compiler.h" 1
	mov %d14,%d2  
                     mov %d15,%d10  
                     extr.u %d10,%d8,%e14
	# 0 "" 2
.LVL537:
#NO_APP
.LBE796:
.LBE797:
.LBE798:
.LBE799:
	.loc 1 2791 0
	call	SchM_Enter_Adc_KernelData
.LVL538:
	.loc 1 2798 0
	mov	%d4, %d10
	and	%d5, %d8, 31
	mov	%d6, %d9
	call	Adc_lSchedulerOnStop
.LVL539:
	.loc 1 2808 0
	j	SchM_Exit_Adc_KernelData
.LVL540:
.LFE27:
	.size	Adc_DisableHardwareTrigger, .-Adc_DisableHardwareTrigger
	.align 1
	.global	Adc_EnableGroupNotification
	.type	Adc_EnableGroupNotification, @function
Adc_EnableGroupNotification:
.LFB28:
	.loc 1 2937 0
.LVL541:
	.loc 1 2937 0
	mov	%d8, %d4
	.loc 1 2944 0
	call	Mcal_GetCpuIndex
.LVL542:
.LBB800:
.LBB801:
.LBB802:
.LBB803:
	.loc 3 615 0
	mov	%d4, 11
	mov	%d3, 5
#APP
	# 615 ".\output\inc/..\..\Targets\TC38xx\MCAL\MCAL_Modules\McalLib\inc\Mcal_Compiler.h" 1
	mov %d14,%d3  
                     mov %d15,%d4  
                     extr.u %d3,%d8,%e14
	# 0 "" 2
.LVL543:
#NO_APP
.LBE803:
.LBE802:
.LBE801:
.LBE800:
.LBB804:
.LBB805:
	.loc 1 4607 0
	movh.a	%a15, hi:Adc_kKernelData
	lea	%a15, [%a15] lo:Adc_kKernelData
	addsc.a	%a15, %a15, %d2, 2
	madd	%d2, %d3, %d2, 12
.LVL544:
	movh.a	%a2, hi:Adc_kKernelDataIndex
	lea	%a2, [%a2] lo:Adc_kKernelDataIndex
	addsc.a	%a2, %a2, %d2, 0
	ld.w	%d2, [%a15]0
	ld.bu	%d15, [%a2]0
.LBE805:
.LBE804:
.LBB807:
.LBB808:
	.loc 1 4575 0
	and	%d8, %d8, 31
.LVL545:
.LBE808:
.LBE807:
.LBB809:
.LBB806:
	.loc 1 4607 0
	madd	%d15, %d2, %d15, 56
.LVL546:
.LBE806:
.LBE809:
.LBB810:
.LBB811:
	.loc 1 4822 0
	mov	%d4, 1
#APP
	# 4822 "Targets\TC38xx\MCAL\MCAL_Modules\Adc\src\Adc.c" 1
	imask %e4,%d4,%d8,1
	# 0 "" 2
.LVL547:
#NO_APP
	mov.a	%a2, %d15
	lea	%a15, [%a2] 20
#APP
	# 4822 "Targets\TC38xx\MCAL\MCAL_Modules\Adc\src\Adc.c" 1
	ldmst [%a15]0,%e4
	# 0 "" 2
#NO_APP
	ret
.LBE811:
.LBE810:
.LFE28:
	.size	Adc_EnableGroupNotification, .-Adc_EnableGroupNotification
	.align 1
	.global	Adc_DisableGroupNotification
	.type	Adc_DisableGroupNotification, @function
Adc_DisableGroupNotification:
.LFB29:
	.loc 1 3002 0
.LVL548:
	.loc 1 3002 0
	mov	%d8, %d4
	.loc 1 3008 0
	call	Mcal_GetCpuIndex
.LVL549:
.LBB812:
.LBB813:
.LBB814:
.LBB815:
	.loc 3 615 0
	mov	%d4, 11
	mov	%d3, 5
#APP
	# 615 ".\output\inc/..\..\Targets\TC38xx\MCAL\MCAL_Modules\McalLib\inc\Mcal_Compiler.h" 1
	mov %d14,%d3  
                     mov %d15,%d4  
                     extr.u %d3,%d8,%e14
	# 0 "" 2
.LVL550:
#NO_APP
.LBE815:
.LBE814:
.LBE813:
.LBE812:
.LBB816:
.LBB817:
	.loc 1 4607 0
	movh.a	%a15, hi:Adc_kKernelData
	lea	%a15, [%a15] lo:Adc_kKernelData
	addsc.a	%a15, %a15, %d2, 2
	madd	%d2, %d3, %d2, 12
.LVL551:
	movh.a	%a2, hi:Adc_kKernelDataIndex
	lea	%a2, [%a2] lo:Adc_kKernelDataIndex
	addsc.a	%a2, %a2, %d2, 0
	ld.w	%d2, [%a15]0
	ld.bu	%d15, [%a2]0
.LBE817:
.LBE816:
.LBB819:
.LBB820:
	.loc 1 4575 0
	and	%d8, %d8, 31
.LVL552:
.LBE820:
.LBE819:
.LBB821:
.LBB818:
	.loc 1 4607 0
	madd	%d15, %d2, %d15, 56
.LVL553:
.LBE818:
.LBE821:
.LBB822:
.LBB823:
	.loc 1 5017 0
	mov	%d4, 0
#APP
	# 5017 "Targets\TC38xx\MCAL\MCAL_Modules\Adc\src\Adc.c" 1
	imask %e4,%d4,%d8,1
	# 0 "" 2
.LVL554:
#NO_APP
	mov.a	%a2, %d15
	lea	%a15, [%a2] 20
#APP
	# 5017 "Targets\TC38xx\MCAL\MCAL_Modules\Adc\src\Adc.c" 1
	ldmst [%a15]0,%e4
	# 0 "" 2
#NO_APP
	ret
.LBE823:
.LBE822:
.LFE29:
	.size	Adc_DisableGroupNotification, .-Adc_DisableGroupNotification
	.align 1
	.global	Adc_GetGroupStatus
	.type	Adc_GetGroupStatus, @function
Adc_GetGroupStatus:
.LFB30:
	.loc 1 3064 0
.LVL555:
	.loc 1 3064 0
	mov	%d8, %d4
	.loc 1 3071 0
	call	Mcal_GetCpuIndex
.LVL556:
.LBB824:
.LBB825:
.LBB826:
.LBB827:
	.loc 3 615 0
	mov	%d4, 11
	mov	%d3, 5
#APP
	# 615 ".\output\inc/..\..\Targets\TC38xx\MCAL\MCAL_Modules\McalLib\inc\Mcal_Compiler.h" 1
	mov %d14,%d3  
                     mov %d15,%d4  
                     extr.u %d3,%d8,%e14
	# 0 "" 2
.LVL557:
#NO_APP
.LBE827:
.LBE826:
.LBE825:
.LBE824:
.LBB828:
.LBB829:
	.loc 1 4607 0
	movh.a	%a2, hi:Adc_kKernelData
	lea	%a2, [%a2] lo:Adc_kKernelData
	addsc.a	%a2, %a2, %d2, 2
	madd	%d2, %d3, %d2, 12
.LVL558:
	movh.a	%a15, hi:Adc_kKernelDataIndex
	lea	%a15, [%a15] lo:Adc_kKernelDataIndex
	addsc.a	%a15, %a15, %d2, 0
	ld.w	%d2, [%a2]0
	ld.bu	%d15, [%a15]0
	madd	%d3, %d2, %d15, 56
.LVL559:
	mov.a	%a15, %d3
.LBE829:
.LBE828:
	.loc 1 3102 0
	call	SchM_Enter_Adc_KernelData
.LVL560:
.LBB830:
.LBB831:
	.loc 1 5164 0
	and	%d4, %d8, 31
.LVL561:
.LBB832:
.LBB833:
	.loc 3 615 0
	mov	%d2, 1
	ld.w	%d8, [%a15] 16
.LVL562:
#APP
	# 615 ".\output\inc/..\..\Targets\TC38xx\MCAL\MCAL_Modules\McalLib\inc\Mcal_Compiler.h" 1
	mov %d14,%d4  
                     mov %d15,%d2  
                     extr.u %d8,%d8,%e14
	# 0 "" 2
.LVL563:
#NO_APP
.LBE833:
.LBE832:
.LBE831:
.LBE830:
.LBB834:
.LBB835:
.LBB836:
	ld.w	%d9, [%a15] 12
#APP
	# 615 ".\output\inc/..\..\Targets\TC38xx\MCAL\MCAL_Modules\McalLib\inc\Mcal_Compiler.h" 1
	mov %d14,%d4  
                     mov %d15,%d2  
                     extr.u %d9,%d9,%e14
	# 0 "" 2
.LVL564:
#NO_APP
.LBE836:
.LBE835:
.LBE834:
.LBB837:
.LBB838:
.LBB839:
	ld.w	%d10, [%a15] 8
#APP
	# 615 ".\output\inc/..\..\Targets\TC38xx\MCAL\MCAL_Modules\McalLib\inc\Mcal_Compiler.h" 1
	mov %d14,%d4  
                     mov %d15,%d2  
                     extr.u %d10,%d10,%e14
	# 0 "" 2
.LVL565:
#NO_APP
.LBE839:
.LBE838:
.LBE837:
	.loc 1 3116 0
	call	SchM_Exit_Adc_KernelData
.LVL566:
	.loc 1 3124 0
	mov	%d2, 3
	.loc 1 3120 0
	jeq	%d8, 1, .L327
	.loc 1 3124 0
	eq	%d4, %d10, 1
	ne	%d2, %d9, 1
	sel	%d2, %d2, %d4, 2
.L327:
.LVL567:
	.loc 1 3150 0
	ret
.LFE30:
	.size	Adc_GetGroupStatus, .-Adc_GetGroupStatus
	.align 1
	.global	Adc_GetStreamLastPointer
	.type	Adc_GetStreamLastPointer, @function
Adc_GetStreamLastPointer:
.LFB31:
	.loc 1 3186 0
.LVL568:
	.loc 1 3186 0
	mov	%d8, %d4
	mov.aa	%a12, %a4
	.loc 1 3194 0
	call	Mcal_GetCpuIndex
.LVL569:
.LBB840:
.LBB841:
.LBB842:
.LBB843:
	.loc 3 615 0
	mov	%d4, 11
	mov	%d3, 5
#APP
	# 615 ".\output\inc/..\..\Targets\TC38xx\MCAL\MCAL_Modules\McalLib\inc\Mcal_Compiler.h" 1
	mov %d14,%d3  
                     mov %d15,%d4  
                     extr.u %d3,%d8,%e14
	# 0 "" 2
.LVL570:
#NO_APP
.LBE843:
.LBE842:
.LBE841:
.LBE840:
.LBB844:
.LBB845:
	.loc 1 4607 0
	movh.a	%a2, hi:Adc_kKernelData
	lea	%a2, [%a2] lo:Adc_kKernelData
	addsc.a	%a2, %a2, %d2, 2
	madd	%d15, %d3, %d2, 12
	ld.w	%d4, [%a2]0
.LBE845:
.LBE844:
	.loc 1 3250 0
	movh.a	%a2, hi:Adc_ConfigPtr
	ld.a	%a2, [%a2] lo:Adc_ConfigPtr
.LBB851:
.LBB846:
	.loc 1 4607 0
	movh.a	%a15, hi:Adc_kKernelDataIndex
	lea	%a15, [%a15] lo:Adc_kKernelDataIndex
.LBE846:
.LBE851:
	.loc 1 3250 0
	addsc.a	%a2, %a2, %d2, 2
.LBB852:
.LBB847:
	.loc 1 4607 0
	addsc.a	%a15, %a15, %d15, 0
.LBE847:
.LBE852:
	.loc 1 3251 0
	ld.a	%a2, [%a2] 4
.LBB853:
.LBB848:
	.loc 1 4607 0
	ld.bu	%d15, [%a15]0
.LBE848:
.LBE853:
.LBB854:
.LBB855:
	.loc 1 4575 0
	and	%d8, %d8, 31
.LVL571:
.LBE855:
.LBE854:
	.loc 1 3251 0
	addsc.a	%a2, %a2, %d3, 2
.LBB856:
.LBB849:
	.loc 1 4607 0
	madd	%d5, %d4, %d15, 56
.LBE849:
.LBE856:
	.loc 1 3251 0
	ld.a	%a2, [%a2]0
.LBB857:
.LBB850:
	.loc 1 4607 0
	mov.a	%a15, %d5
.LBE850:
.LBE857:
	.loc 1 3251 0
	ld.w	%d11, [%a2] 8
.LVL572:
	.loc 1 3261 0
	call	SchM_Enter_Adc_KernelData
.LVL573:
.LBB858:
.LBB859:
.LBB860:
	.loc 3 615 0
	ld.w	%d10, [%a15] 16
	mov	%d2, 1
#APP
	# 615 ".\output\inc/..\..\Targets\TC38xx\MCAL\MCAL_Modules\McalLib\inc\Mcal_Compiler.h" 1
	mov %d14,%d8  
                     mov %d15,%d2  
                     extr.u %d10,%d10,%e14
	# 0 "" 2
.LVL574:
#NO_APP
.LBE860:
.LBE859:
.LBE858:
.LBB861:
.LBB862:
.LBB863:
	ld.w	%d4, [%a15] 12
#APP
	# 615 ".\output\inc/..\..\Targets\TC38xx\MCAL\MCAL_Modules\McalLib\inc\Mcal_Compiler.h" 1
	mov %d14,%d8  
                     mov %d15,%d2  
                     extr.u %d4,%d4,%e14
	# 0 "" 2
.LVL575:
#NO_APP
.LBE863:
.LBE862:
.LBE861:
.LBB864:
.LBB865:
.LBB866:
	ld.w	%d3, [%a15] 8
#APP
	# 615 ".\output\inc/..\..\Targets\TC38xx\MCAL\MCAL_Modules\McalLib\inc\Mcal_Compiler.h" 1
	mov %d14,%d8  
                     mov %d15,%d2  
                     extr.u %d3,%d3,%e14
	# 0 "" 2
.LVL576:
#NO_APP
.LBE866:
.LBE865:
.LBE864:
	.loc 1 3269 0
	addsc.a	%a2, %a15, %d8, 0
	.loc 1 3273 0
	eq	%d15, %d3, 1
	and.eq	%d15, %d4, 0
	.loc 1 3269 0
	ld.bu	%d9, [%a2] 52
.LVL577:
	.loc 1 3273 0
	jnz	%d15, .L336
.LVL578:
.LBB867:
.LBB868:
	.loc 1 4934 0
	and	%d4, %d8, 255
.LVL579:
	lea	%a3, [%a15] 12
.LVL580:
#APP
	# 4934 "Targets\TC38xx\MCAL\MCAL_Modules\Adc\src\Adc.c" 1
	imask %e6,%d15,%d4,1
	# 0 "" 2
.LVL581:
	# 4934 "Targets\TC38xx\MCAL\MCAL_Modules\Adc\src\Adc.c" 1
	ldmst [%a3]0,%e6
	# 0 "" 2
.LVL582:
#NO_APP
.LBE868:
.LBE867:
.LBB869:
.LBB870:
	.loc 1 4975 0
#APP
	# 4975 "Targets\TC38xx\MCAL\MCAL_Modules\Adc\src\Adc.c" 1
	imask %e4,%d15,%d4,1
	# 0 "" 2
.LVL583:
#NO_APP
	lea	%a3, [%a15] 16
.LVL584:
#APP
	# 4975 "Targets\TC38xx\MCAL\MCAL_Modules\Adc\src\Adc.c" 1
	ldmst [%a3]0,%e4
	# 0 "" 2
#NO_APP
.LBE870:
.LBE869:
	.loc 1 3298 0
	jnz	%d3, .L335
	.loc 1 3302 0
	st.b	[%a2] 52, %d3
.LVL585:
.L335:
	.loc 1 3307 0
	call	SchM_Exit_Adc_KernelData
.LVL586:
	.loc 1 3312 0
	addsc.a	%a15, %a15, %d8, 2
.LVL587:
	add	%d15, %d9, -1
	ld.w	%d2, [%a15]0
	madd	%d15, %d2, %d15, 2
	st.w	[%a12]0, %d15
	.loc 1 3317 0
	jeq	%d10, 1, .L337
	.loc 1 3326 0
	mov	%d2, %d9
	ret
.L337:
	.loc 1 3321 0
	madd	%d15, %d11, %d8, 60
	mov.a	%a15, %d15
	ld.bu	%d9, [%a15] 52
.LVL588:
	.loc 1 3326 0
	mov	%d2, %d9
	ret
.LVL589:
.L336:
	.loc 1 3279 0
	call	SchM_Exit_Adc_KernelData
.LVL590:
	.loc 1 3284 0
	mov	%d15, 0
	.loc 1 3283 0
	mov	%d9, 0
.LVL591:
	.loc 1 3284 0
	st.w	[%a12]0, %d15
	.loc 1 3326 0
	mov	%d2, %d9
	ret
.LFE31:
	.size	Adc_GetStreamLastPointer, .-Adc_GetStreamLastPointer
	.align 1
	.global	Adc_TriggerStartupCal
	.type	Adc_TriggerStartupCal, @function
Adc_TriggerStartupCal:
.LFB32:
	.loc 1 3882 0
.LBB871:
	.loc 1 3914 0
	movh.a	%a15, 61442
	mov	%d15, 1
	mov	%d4, 31
	lea	%a15, [%a15] 128
#APP
	# 3914 "Targets\TC38xx\MCAL\MCAL_Modules\Adc\src\Adc.c" 1
	imask %e4,%d15,%d4,1
	# 0 "" 2
.LVL592:
	# 3914 "Targets\TC38xx\MCAL\MCAL_Modules\Adc\src\Adc.c" 1
	ldmst [%a15]0,%e4
	# 0 "" 2
#NO_APP
.LBE871:
.LBB872:
.LBB873:
	.loc 1 4859 0
	movh.a	%a15, hi:Adc_StartupCalStatus
	mov	%d2, 0
	lea	%a15, [%a15] lo:Adc_StartupCalStatus
#APP
	# 4859 "Targets\TC38xx\MCAL\MCAL_Modules\Adc\src\Adc.c" 1
	imask %e2,%d15,%d2,1
	# 0 "" 2
.LVL593:
	# 4859 "Targets\TC38xx\MCAL\MCAL_Modules\Adc\src\Adc.c" 1
	ldmst [%a15]0,%e2
	# 0 "" 2
.LVL594:
#NO_APP
.LBE873:
.LBE872:
	.loc 1 3925 0
	mov	%d2, 0
.LVL595:
	ret
.LFE32:
	.size	Adc_TriggerStartupCal, .-Adc_TriggerStartupCal
	.align 1
	.global	Adc_GetStartupCalStatus
	.type	Adc_GetStartupCalStatus, @function
Adc_GetStartupCalStatus:
.LFB33:
	.loc 1 3963 0
.LVL596:
	.loc 1 3974 0
	call	Mcal_GetCpuIndex
.LVL597:
.LBB874:
.LBB875:
	.loc 1 5236 0
	movh.a	%a15, hi:Adc_StartupCalStatus
.LBB876:
.LBB877:
	.loc 3 615 0
	ld.w	%d4, [%a15] lo:Adc_StartupCalStatus
	mov	%d5, 1
	mov	%d3, 0
#APP
	# 615 ".\output\inc/..\..\Targets\TC38xx\MCAL\MCAL_Modules\McalLib\inc\Mcal_Compiler.h" 1
	mov %d14,%d3  
                     mov %d15,%d5  
                     extr.u %d3,%d4,%e14
	# 0 "" 2
.LVL598:
#NO_APP
.LBE877:
.LBE876:
.LBE875:
.LBE874:
	.loc 1 3999 0
	mov	%d15, 0
	.loc 1 3994 0
	jeq	%d3, 1, .L411
.LVL599:
.L340:
	.loc 1 4029 0
	mov	%d2, %d15
	ret
.LVL600:
.L411:
	movh.a	%a15, hi:Adc_ConfigPtr
	ld.a	%a15, [%a15] lo:Adc_ConfigPtr
	addsc.a	%a15, %a15, %d2, 2
	ld.a	%a15, [%a15] 4
.LVL601:
	.loc 1 4010 0
	ld.w	%d15, [%a15]0
	jz	%d15, .L341
	.loc 1 4016 0
	movh.a	%a2, 61442
	ld.w	%d2, [%a2] 1152
.LVL602:
	.loc 1 4021 0
	mov	%d15, 1
	.loc 1 4016 0
	jnz.t	%d2, 28, .L340
.L341:
.LVL603:
	.loc 1 4010 0
	ld.w	%d15, [%a15] 4
	jz	%d15, .L342
	.loc 1 4016 0
	movh.a	%a2, 61442
	ld.w	%d2, [%a2] 2176
	.loc 1 4021 0
	mov	%d15, 1
	.loc 1 4016 0
	jnz.t	%d2, 28, .L340
.L342:
.LVL604:
	.loc 1 4010 0
	ld.w	%d15, [%a15] 8
	jz	%d15, .L343
	.loc 1 4016 0
	movh.a	%a2, 61442
	ld.w	%d2, [%a2] 3200
	.loc 1 4021 0
	mov	%d15, 1
	.loc 1 4016 0
	jnz.t	%d2, 28, .L340
.L343:
.LVL605:
	.loc 1 4010 0
	ld.w	%d15, [%a15] 12
	jz	%d15, .L344
	.loc 1 4016 0
	movh.a	%a2, 61442
	ld.w	%d2, [%a2] 4224
	.loc 1 4021 0
	mov	%d15, 1
	.loc 1 4016 0
	jnz.t	%d2, 28, .L340
.L344:
.LVL606:
	.loc 1 4010 0
	ld.w	%d15, [%a15] 16
	jz	%d15, .L345
	.loc 1 4016 0
	movh.a	%a2, 61442
	ld.w	%d2, [%a2] 5248
	.loc 1 4021 0
	mov	%d15, 1
	.loc 1 4016 0
	jnz.t	%d2, 28, .L340
.L345:
.LVL607:
	.loc 1 4010 0
	ld.w	%d15, [%a15] 20
	jz	%d15, .L346
	.loc 1 4016 0
	movh.a	%a2, 61442
	ld.w	%d2, [%a2] 6272
	.loc 1 4021 0
	mov	%d15, 1
	.loc 1 4016 0
	jnz.t	%d2, 28, .L340
.L346:
.LVL608:
	.loc 1 4010 0
	ld.w	%d15, [%a15] 24
	jz	%d15, .L347
	.loc 1 4016 0
	movh.a	%a2, 61442
	ld.w	%d2, [%a2] 7296
	.loc 1 4021 0
	mov	%d15, 1
	.loc 1 4016 0
	jnz.t	%d2, 28, .L340
.L347:
.LVL609:
	.loc 1 4010 0
	ld.w	%d15, [%a15] 28
	jz	%d15, .L348
	.loc 1 4016 0
	movh.a	%a2, 61442
	ld.w	%d2, [%a2] 8320
	.loc 1 4021 0
	mov	%d15, 1
	.loc 1 4016 0
	jnz.t	%d2, 28, .L340
.L348:
.LVL610:
	.loc 1 4010 0
	ld.w	%d15, [%a15] 32
	jz	%d15, .L349
	.loc 1 4016 0
	movh.a	%a2, 61442
	ld.w	%d2, [%a2] 9344
	.loc 1 4021 0
	mov	%d15, 1
	.loc 1 4016 0
	jnz.t	%d2, 28, .L340
.L349:
.LVL611:
	.loc 1 4010 0
	ld.w	%d15, [%a15] 36
	jz	%d15, .L350
	.loc 1 4016 0
	movh.a	%a2, 61442
	ld.w	%d2, [%a2] 10368
	.loc 1 4021 0
	mov	%d15, 1
	.loc 1 4016 0
	jnz.t	%d2, 28, .L340
.L350:
.LVL612:
	.loc 1 4010 0
	ld.w	%d15, [%a15] 40
	jz	%d15, .L351
	.loc 1 4016 0
	movh.a	%a2, 61442
	ld.w	%d2, [%a2] 11392
	.loc 1 4021 0
	mov	%d15, 1
	.loc 1 4016 0
	jnz.t	%d2, 28, .L340
.L351:
.LVL613:
	.loc 1 4010 0
	ld.w	%d2, [%a15] 44
	.loc 1 3968 0
	mov	%d15, 2
	.loc 1 4010 0
	jz	%d2, .L340
	.loc 1 4016 0
	movh.a	%a15, 61442
	ld.w	%d15, [%a15] 12416
	.loc 1 3968 0
	extr.u	%d2, %d15, 28, 1
	mov	%d15, 1
	sel	%d15, %d2, %d15, 2
.LVL614:
	.loc 1 4029 0
	mov	%d2, %d15
	ret
.LFE33:
	.size	Adc_GetStartupCalStatus, .-Adc_GetStartupCalStatus
	.align 1
	.global	Adc_RS0EventInterruptHandler
	.type	Adc_RS0EventInterruptHandler, @function
Adc_RS0EventInterruptHandler:
.LFB34:
	.loc 1 4060 0
.LVL615:
	sub.a	%SP, 16
.LCFI2:
	.loc 1 4060 0
	mov	%d8, %d4
	.loc 1 4066 0
	call	Mcal_GetCpuIndex
.LVL616:
	.loc 1 4067 0
	jnz	%d2, .L413
	.loc 1 4076 0
	movh.a	%a15, hi:Adc_ConfigPtr
	ld.w	%d15, [%a15] lo:Adc_ConfigPtr
	.loc 1 4070 0
	ld.w	%d9, 0xf0001110
.LVL617:
	.loc 1 4076 0
	jz	%d15, .L414
.LVL618:
.L429:
	mov.a	%a3, %d15
	sh	%d4, %d2, 2
	addsc.a	%a2, %a3, %d4, 0
	.loc 1 4084 0
	lt.u	%d3, %d8, 12
	.loc 1 4080 0
	ld.w	%d15, [%a2] 4
	.loc 1 4084 0
	and.ne	%d3, %d15, 0
	jz	%d3, .L416
	.loc 1 4089 0
	mov.a	%a4, %d15
	sh	%d10, %d8, 2
	addsc.a	%a3, %a4, %d10, 0
	ld.w	%d15, [%a3]0
	jz	%d15, .L416
	.loc 1 4094 0
	sh	%d3, %d8, 10
	mov.a	%a5, %d3
	addih.a	%a3, %a5, 61442
	ld.w	%d15, [%a3] 1416
	and	%d15, %d15, 1
	jeq	%d15, 1, .L457
.LVL619:
.L416:
	.loc 1 4143 0
	jnz	%d2, .L412
.L414:
	.loc 1 4148 0
	ld.w	%d15, 0xf0001110
.LVL620:
	.loc 1 4149 0
	movh.a	%a15, hi:ADCTotalTime
	sub	%d9, %d15, %d9
	st.w	[%a15] lo:ADCTotalTime, %d9
	ret
.LVL621:
.L413:
	.loc 1 4076 0
	movh.a	%a15, hi:Adc_ConfigPtr
	ld.w	%d15, [%a15] lo:Adc_ConfigPtr
	.loc 1 4062 0
	mov	%d9, 0
	.loc 1 4076 0
	jnz	%d15, .L429
.LVL622:
.L412:
	ret
.LVL623:
.L457:
.LBB906:
.LBB907:
.LBB908:
.LBB909:
	.loc 1 4607 0
	mul	%d12, %d2, 12
	movh	%d14, hi:Adc_kKernelDataIndex
	movh.a	%a6, hi:Adc_kKernelData
	addi	%d14, %d14, lo:Adc_kKernelDataIndex
.LBE909:
.LBE908:
.LBE907:
.LBE906:
	.loc 1 4098 0
	st.w	[%a3] 1432, %d15
.LVL624:
.LBB951:
.LBB950:
.LBB911:
.LBB910:
	.loc 1 4607 0
	lea	%a6, [%a6] lo:Adc_kKernelData
	add	%d15, %d12, %d8
	mov.a	%a5, %d14
	addsc.a	%a3, %a6, %d4, 0
	addsc.a	%a4, %a5, %d15, 0
	ld.w	%d5, [%a3]0
	ld.bu	%d15, [%a4]0
	madd	%d6, %d5, %d15, 56
	mov.a	%a12, %d6
.LBE910:
.LBE911:
	.loc 1 10036 0
	ld.bu	%d15, [%a12] 39
	jnz	%d15, .L416
.LBB912:
.LBB913:
.LBB914:
	.loc 1 10214 0
	ld.a	%a5, [%a2] 4
.LBE914:
.LBE913:
	.loc 1 10040 0
	ld.hu	%d11, [%a12] 36
.LVL625:
.LBB920:
.LBB919:
	.loc 1 10210 0
	mov.a	%a3, %d3
	.loc 1 10214 0
	addsc.a	%a5, %a5, %d10, 0
	.loc 1 10215 0
	mul	%d6, %d11, 60
	.loc 1 10214 0
	ld.a	%a5, [%a5]0
	ld.a	%a2, [%a5] 8
	.loc 1 10210 0
	lea	%a4, [%a3] 1024
	.loc 1 10215 0
	st.w	[%SP] 8, %d6
	.loc 1 10214 0
	addsc.a	%a2, %a2, %d6, 0
	.loc 1 10210 0
	addih.a	%a4, %a4, 61442
.LVL626:
	.loc 1 10218 0
	ld.a	%a5, [%a2] 4
	.loc 1 10216 0
	ld.bu	%d0, [%a2] 52
.LVL627:
	.loc 1 10217 0
	ld.bu	%d5, [%a2] 56
.LVL628:
	.loc 1 10218 0
	ld.bu	%d7, [%a5] 2
.LVL629:
	.loc 1 10221 0
	addsc.a	%a5, %a12, %d11, 0
.LVL630:
	.loc 1 10224 0
	mov	%d1, 1
	.loc 1 10221 0
	ld.bu	%d15, [%a5] 52
.LVL631:
	.loc 1 10224 0
	mov	%d3, 0
	jeq	%d0, %d15, .L418
	add	%d1, %d15, 1
	sh	%d3, %d15, 1
	and	%d1, %d1, 255
.L418:
.LVL632:
	.loc 1 10277 0
	addsc.a	%a3, %a12, %d11, 2
	sh	%d6, %d0, 1
	ld.a	%a2, [%a3]0
.LVL633:
	addsc.a	%a2, %a2, %d3, 0
.LVL634:
	.loc 1 10282 0
	mov	%d3, 0
	jz	%d5, .L423
.LVL635:
.L447:
	add	%d15, %d7, %d3
	.loc 1 10288 0
	and	%d15, 255
	addi	%d15, %d15, 192
	addsc.a	%a3, %a4, %d15, 2
	add	%d3, 1
.LVL636:
	ld.w	%d15, [%a3]0
	insert	%d15, %d15, 0, 12, 20
	.loc 1 10287 0
	st.h	[%a2]0, %d15
.LVL637:
	.loc 1 10282 0
	and	%d15, %d3, 255
	addsc.a	%a2, %a2, %d6, 0
	jlt.u	%d15, %d5, .L447
.L423:
.LVL638:
	.loc 1 10313 0
	st.b	[%a5] 52, %d1
.LVL639:
.LBB915:
.LBB916:
	.loc 1 4741 0
	and	%d13, %d11, 255
	mov	%d15, 1
	lea	%a2, [%a12] 12
#APP
	# 4741 "Targets\TC38xx\MCAL\MCAL_Modules\Adc\src\Adc.c" 1
	imask %e6,%d15,%d13,1
	# 0 "" 2
.LVL640:
	# 4741 "Targets\TC38xx\MCAL\MCAL_Modules\Adc\src\Adc.c" 1
	ldmst [%a2]0,%e6
	# 0 "" 2
#NO_APP
.LBE916:
.LBE915:
	.loc 1 10322 0
	jne	%d0, %d1, .L421
.LVL641:
.LBB917:
.LBB918:
	.loc 1 4781 0
#APP
	# 4781 "Targets\TC38xx\MCAL\MCAL_Modules\Adc\src\Adc.c" 1
	imask %e6,%d15,%d13,1
	# 0 "" 2
.LVL642:
#NO_APP
	lea	%a2, [%a12] 16
#APP
	# 4781 "Targets\TC38xx\MCAL\MCAL_Modules\Adc\src\Adc.c" 1
	ldmst [%a2]0,%e6
	# 0 "" 2
.LVL643:
#NO_APP
.L421:
.LBE918:
.LBE917:
.LBE919:
.LBE920:
.LBB921:
.LBB922:
	.loc 1 10568 0
	ld.a	%a2, [%a15] lo:Adc_ConfigPtr
	add	%d15, %d2, 1
.LBB923:
.LBB924:
	.loc 1 4607 0
	add	%d12, %d8
.LBE924:
.LBE923:
	.loc 1 10568 0
	addsc.a	%a2, %a2, %d15, 2
	st.w	[%SP] 12, %d15
	ld.a	%a4, [%a2]0
.LVL644:
.LBB930:
.LBB925:
	.loc 1 4607 0
	addsc.a	%a2, %a6, %d4, 0
.LBE925:
.LBE930:
	.loc 1 10568 0
	ld.w	%d6, [%SP] 8
	addsc.a	%a4, %a4, %d10, 0
.LBB931:
.LBB926:
	.loc 1 4607 0
	ld.w	%d3, [%a2]0
.LBE926:
.LBE931:
	.loc 1 10568 0
	ld.a	%a4, [%a4]0
	ld.a	%a14, [%a4] 8
.LBB932:
.LBB927:
	.loc 1 4607 0
	mov.a	%a4, %d14
	addsc.a	%a3, %a4, %d12, 0
.LBE927:
.LBE932:
	.loc 1 10568 0
	addsc.a	%a14, %a14, %d6, 0
.LVL645:
.LBB933:
.LBB928:
	.loc 1 4607 0
	ld.bu	%d15, [%a3]0
	madd	%d4, %d3, %d15, 56
.LBE928:
.LBE933:
.LBB934:
.LBB935:
.LBB936:
	.loc 3 615 0
	mov	%d3, 1
.LBE936:
.LBE935:
.LBE934:
.LBB939:
.LBB929:
	.loc 1 4607 0
	mov.a	%a13, %d4
.LVL646:
.LBE929:
.LBE939:
.LBB940:
.LBB938:
.LBB937:
	.loc 3 615 0
	ld.w	%d4, [%a13] 16
.LVL647:
#APP
	# 615 ".\output\inc/..\..\Targets\TC38xx\MCAL\MCAL_Modules\McalLib\inc\Mcal_Compiler.h" 1
	mov %d14,%d11  
                     mov %d15,%d3  
                     extr.u %d3,%d4,%e14
	# 0 "" 2
.LVL648:
#NO_APP
.LBE937:
.LBE938:
.LBE940:
	.loc 1 10583 0
	ld.hu	%d15, [%a14] 48
	jz	%d15, .L424
	.loc 1 10584 0
	ld.bu	%d4, [%a14] 51
.LVL649:
	.loc 1 10585 0
	eq	%d15, %d4, 0
	and.eq	%d15, %d3, 1
	jnz	%d15, .L424
.LVL650:
.L425:
.LBE922:
.LBE921:
.LBB946:
.LBB947:
.LBB948:
	.loc 3 615 0
	ld.w	%d3, [%a12] 20
	mov	%d4, 1
#APP
	# 615 ".\output\inc/..\..\Targets\TC38xx\MCAL\MCAL_Modules\McalLib\inc\Mcal_Compiler.h" 1
	mov %d14,%d11  
                     mov %d15,%d4  
                     extr.u %d11,%d3,%e14
	# 0 "" 2
.LVL651:
#NO_APP
.LBE948:
.LBE947:
.LBE946:
	.loc 1 10069 0
	jne	%d11, 1, .L416
.LVL652:
	.loc 1 10071 0
	ld.a	%a15, [%a15] lo:Adc_ConfigPtr
	ld.w	%d6, [%SP] 12
	addsc.a	%a15, %a15, %d6, 2
	.loc 1 10075 0
	ld.w	%d6, [%SP] 8
	.loc 1 10072 0
	ld.a	%a15, [%a15]0
	addsc.a	%a15, %a15, %d10, 0
	ld.a	%a15, [%a15]0
	.loc 1 10075 0
	ld.a	%a15, [%a15] 8
	addsc.a	%a15, %a15, %d6, 0
	ld.a	%a15, [%a15]0
	jz.a	%a15, .L416
	.loc 1 10079 0
	st.w	[%SP] 4, %d2
.LVL653:
	calli	%a15
.LVL654:
	ld.w	%d2, [%SP] 4
	j	.L416
.LVL655:
.L424:
.LBB949:
.LBB945:
	.loc 1 10589 0
	mov	%d15, 1
	st.b	[%a13] 39, %d15
	.loc 1 10595 0
	ld.hu	%d15, [%a14] 48
	jnz	%d15, .L458
.LVL656:
.L426:
.LBB941:
.LBB942:
	.loc 1 9033 0
	mov	%d15, 255
	st.h	[%a13] 36, %d15
.LBE942:
.LBE941:
	.loc 1 10620 0
	st.w	[%SP] 4, %d2
	call	SchM_Enter_Adc_KernelData
.LVL657:
	.loc 1 10643 0
	ld.w	%d3, [%a14] 32
	mov	%d15, 256
	ld.w	%d2, [%SP] 4
	jeq	%d3, %d15, .L427
	.loc 1 10647 0
	mov	%d15, 0
	st.b	[%a13] 54, %d15
.L427:
	.loc 1 10653 0
	st.w	[%SP] 4, %d2
	call	SchM_Exit_Adc_KernelData
.LVL658:
.LBB943:
.LBB944:
	.loc 1 4894 0
	lea	%a13, [%a13] 8
.LVL659:
	mov	%d4, 0
#APP
	# 4894 "Targets\TC38xx\MCAL\MCAL_Modules\Adc\src\Adc.c" 1
	imask %e4,%d4,%d13,1
	# 0 "" 2
.LVL660:
	# 4894 "Targets\TC38xx\MCAL\MCAL_Modules\Adc\src\Adc.c" 1
	ldmst [%a13]0,%e4
	# 0 "" 2
#NO_APP
.LBE944:
.LBE943:
	.loc 1 10690 0
	call	SchM_Enter_Adc_KernelData
.LVL661:
	.loc 1 10697 0
	call	SchM_Exit_Adc_KernelData
.LVL662:
	ld.w	%d2, [%SP] 4
	j	.L425
.LVL663:
.L458:
	.loc 1 10608 0
	mov.aa	%a4, %a14
	mov	%d4, %d8
	mov	%d5, 0
.LVL664:
	st.w	[%SP] 4, %d2
.LVL665:
	call	Adc_lStopConvRequest
.LVL666:
	ld.w	%d2, [%SP] 4
	j	.L426
.LBE945:
.LBE949:
.LBE912:
.LBE950:
.LBE951:
.LFE34:
	.size	Adc_RS0EventInterruptHandler, .-Adc_RS0EventInterruptHandler
	.align 1
	.global	Adc_RS1EventInterruptHandler
	.type	Adc_RS1EventInterruptHandler, @function
Adc_RS1EventInterruptHandler:
.LFB35:
	.loc 1 4182 0
.LVL667:
	.loc 1 4192 0
	movh.a	%a15, hi:Adc_ConfigPtr
	.loc 1 4182 0
	mov	%d8, %d4
	.loc 1 4186 0
	call	Mcal_GetCpuIndex
.LVL668:
	.loc 1 4192 0
	ld.w	%d15, [%a15] lo:Adc_ConfigPtr
	jz	%d15, .L459
	mov.a	%a3, %d15
	sh	%d3, %d2, 2
	addsc.a	%a2, %a3, %d3, 0
	.loc 1 4200 0
	lt.u	%d15, %d8, 12
	.loc 1 4196 0
	ld.w	%d4, [%a2] 4
	.loc 1 4200 0
	and.ne	%d15, %d4, 0
	jz	%d15, .L459
	.loc 1 4205 0
	sh	%d9, %d8, 2
	mov.a	%a4, %d4
	addsc.a	%a3, %a4, %d9, 0
	ld.w	%d15, [%a3]0
	jz	%d15, .L459
	.loc 1 4210 0
	sh	%d15, %d8, 10
	mov.a	%a5, %d15
	addih.a	%a3, %a5, 61442
	ld.w	%d4, [%a3] 1416
	jnz.t	%d4, 1, .L495
.LVL669:
.L459:
	ret
.LVL670:
.L495:
.LBB980:
.LBB981:
.LBB982:
.LBB983:
	.loc 1 4607 0
	mul	%d1, %d2, 12
	movh	%d14, hi:Adc_kKernelDataIndex
.LBE983:
.LBE982:
.LBE981:
.LBE980:
	.loc 1 4214 0
	mov	%d4, 2
.LBB1028:
.LBB1026:
.LBB986:
.LBB984:
	.loc 1 4607 0
	movh.a	%a6, hi:Adc_kKernelData
	addi	%d14, %d14, lo:Adc_kKernelDataIndex
.LBE984:
.LBE986:
.LBE1026:
.LBE1028:
	.loc 1 4214 0
	st.w	[%a3] 1432, %d4
.LVL671:
.LBB1029:
.LBB1027:
.LBB987:
.LBB985:
	.loc 1 4607 0
	lea	%a6, [%a6] lo:Adc_kKernelData
	add	%d4, %d1, %d8
	mov.a	%a5, %d14
	addsc.a	%a3, %a6, %d3, 0
	addsc.a	%a4, %a5, %d4, 0
	ld.w	%d5, [%a3]0
	ld.bu	%d4, [%a4]0
	madd	%d6, %d5, %d4, 56
	mov.a	%a12, %d6
.LBE985:
.LBE987:
	.loc 1 10036 0
	ld.bu	%d4, [%a12] 43
	jnz	%d4, .L459
.LBB988:
.LBB989:
.LBB990:
	.loc 1 10214 0
	ld.a	%a5, [%a2] 4
.LBE990:
.LBE989:
	.loc 1 10040 0
	ld.hu	%d10, [%a12] 40
.LVL672:
.LBB996:
.LBB995:
	.loc 1 10210 0
	mov.a	%a3, %d15
	.loc 1 10214 0
	addsc.a	%a5, %a5, %d9, 0
	.loc 1 10215 0
	mul	%d12, %d10, 60
	.loc 1 10214 0
	ld.a	%a5, [%a5]0
	ld.a	%a2, [%a5] 8
	.loc 1 10210 0
	lea	%a4, [%a3] 1024
	addih.a	%a4, %a4, 61442
.LVL673:
	.loc 1 10214 0
	addsc.a	%a2, %a2, %d12, 0
.LVL674:
	.loc 1 10224 0
	mov	%d7, 1
	.loc 1 10218 0
	ld.a	%a5, [%a2] 4
	.loc 1 10216 0
	ld.bu	%d6, [%a2] 52
.LVL675:
	.loc 1 10217 0
	ld.bu	%d5, [%a2] 56
.LVL676:
	.loc 1 10218 0
	ld.bu	%d11, [%a5] 2
.LVL677:
	.loc 1 10221 0
	addsc.a	%a5, %a12, %d10, 0
.LVL678:
	ld.bu	%d15, [%a5] 52
.LVL679:
	.loc 1 10224 0
	jeq	%d6, %d15, .L463
	add	%d7, %d15, 1
	sh	%d4, %d15, 1
	and	%d7, %d7, 255
.L463:
.LVL680:
	.loc 1 10277 0
	addsc.a	%a3, %a12, %d10, 2
	sh	%d0, %d6, 1
	ld.a	%a2, [%a3]0
.LVL681:
	addsc.a	%a2, %a2, %d4, 0
.LVL682:
	.loc 1 10282 0
	mov	%d4, 0
	jz	%d5, .L468
.LVL683:
.L486:
	add	%d15, %d11, %d4
	.loc 1 10288 0
	and	%d15, 255
	addi	%d15, %d15, 192
	addsc.a	%a3, %a4, %d15, 2
	add	%d4, 1
.LVL684:
	ld.w	%d15, [%a3]0
	insert	%d15, %d15, 0, 12, 20
	.loc 1 10287 0
	st.h	[%a2]0, %d15
.LVL685:
	.loc 1 10282 0
	and	%d15, %d4, 255
	addsc.a	%a2, %a2, %d0, 0
	jlt.u	%d15, %d5, .L486
.L468:
.LVL686:
	.loc 1 10313 0
	st.b	[%a5] 52, %d7
.LVL687:
.LBB991:
.LBB992:
	.loc 1 4741 0
	and	%d11, %d10, 255
	mov	%d15, 1
	lea	%a2, [%a12] 12
#APP
	# 4741 "Targets\TC38xx\MCAL\MCAL_Modules\Adc\src\Adc.c" 1
	imask %e4,%d15,%d11,1
	# 0 "" 2
.LVL688:
	# 4741 "Targets\TC38xx\MCAL\MCAL_Modules\Adc\src\Adc.c" 1
	ldmst [%a2]0,%e4
	# 0 "" 2
#NO_APP
.LBE992:
.LBE991:
	.loc 1 10322 0
	jne	%d6, %d7, .L466
.LVL689:
.LBB993:
.LBB994:
	.loc 1 4781 0
#APP
	# 4781 "Targets\TC38xx\MCAL\MCAL_Modules\Adc\src\Adc.c" 1
	imask %e4,%d15,%d11,1
	# 0 "" 2
.LVL690:
#NO_APP
	lea	%a2, [%a12] 16
#APP
	# 4781 "Targets\TC38xx\MCAL\MCAL_Modules\Adc\src\Adc.c" 1
	ldmst [%a2]0,%e4
	# 0 "" 2
.LVL691:
#NO_APP
.L466:
.LBE994:
.LBE993:
.LBE995:
.LBE996:
.LBB997:
.LBB998:
	.loc 1 10568 0
	ld.a	%a2, [%a15] lo:Adc_ConfigPtr
	addi	%d13, %d2, 1
.LBB999:
.LBB1000:
	.loc 1 4607 0
	add	%d1, %d8
.LBE1000:
.LBE999:
	.loc 1 10568 0
	addsc.a	%a2, %a2, %d13, 2
	ld.a	%a4, [%a2]0
.LVL692:
.LBB1006:
.LBB1001:
	.loc 1 4607 0
	addsc.a	%a2, %a6, %d3, 0
.LBE1001:
.LBE1006:
	.loc 1 10568 0
	addsc.a	%a4, %a4, %d9, 0
.LBB1007:
.LBB1002:
	.loc 1 4607 0
	ld.w	%d2, [%a2]0
.LVL693:
.LBE1002:
.LBE1007:
	.loc 1 10568 0
	ld.a	%a4, [%a4]0
	ld.a	%a14, [%a4] 8
.LBB1008:
.LBB1003:
	.loc 1 4607 0
	mov.a	%a4, %d14
	addsc.a	%a3, %a4, %d1, 0
.LBE1003:
.LBE1008:
	.loc 1 10568 0
	addsc.a	%a14, %a14, %d12, 0
.LVL694:
.LBB1009:
.LBB1004:
	.loc 1 4607 0
	ld.bu	%d15, [%a3]0
	madd	%d3, %d2, %d15, 56
.LBE1004:
.LBE1009:
.LBB1010:
.LBB1011:
.LBB1012:
	.loc 3 615 0
	mov	%d2, 1
.LBE1012:
.LBE1011:
.LBE1010:
.LBB1015:
.LBB1005:
	.loc 1 4607 0
	mov.a	%a13, %d3
.LVL695:
.LBE1005:
.LBE1015:
.LBB1016:
.LBB1014:
.LBB1013:
	.loc 3 615 0
	ld.w	%d3, [%a13] 16
.LVL696:
#APP
	# 615 ".\output\inc/..\..\Targets\TC38xx\MCAL\MCAL_Modules\McalLib\inc\Mcal_Compiler.h" 1
	mov %d14,%d10  
                     mov %d15,%d2  
                     extr.u %d2,%d3,%e14
	# 0 "" 2
.LVL697:
#NO_APP
.LBE1013:
.LBE1014:
.LBE1016:
	.loc 1 10583 0
	ld.hu	%d15, [%a14] 48
	jz	%d15, .L469
	.loc 1 10584 0
	ld.bu	%d3, [%a14] 51
.LVL698:
	.loc 1 10585 0
	eq	%d15, %d3, 0
	and.eq	%d15, %d2, 1
	jnz	%d15, .L469
.LVL699:
.L470:
.LBE998:
.LBE997:
.LBB1022:
.LBB1023:
.LBB1024:
	.loc 3 615 0
	ld.w	%d2, [%a12] 20
	mov	%d3, 1
#APP
	# 615 ".\output\inc/..\..\Targets\TC38xx\MCAL\MCAL_Modules\McalLib\inc\Mcal_Compiler.h" 1
	mov %d14,%d10  
                     mov %d15,%d3  
                     extr.u %d10,%d2,%e14
	# 0 "" 2
.LVL700:
#NO_APP
.LBE1024:
.LBE1023:
.LBE1022:
	.loc 1 10069 0
	jne	%d10, 1, .L459
.LVL701:
	.loc 1 10071 0
	ld.a	%a15, [%a15] lo:Adc_ConfigPtr
	addsc.a	%a15, %a15, %d13, 2
	.loc 1 10072 0
	ld.a	%a15, [%a15]0
	addsc.a	%a15, %a15, %d9, 0
	ld.a	%a15, [%a15]0
	.loc 1 10075 0
	ld.a	%a15, [%a15] 8
	addsc.a	%a15, %a15, %d12, 0
	ld.a	%a15, [%a15]0
	jz.a	%a15, .L459
	.loc 1 10079 0
	ji	%a15
.LVL702:
.L469:
.LBB1025:
.LBB1021:
	.loc 1 10589 0
	mov	%d15, 1
	st.b	[%a13] 43, %d15
	.loc 1 10595 0
	ld.hu	%d15, [%a14] 48
	jnz	%d15, .L496
.LVL703:
.L471:
.LBB1017:
.LBB1018:
	.loc 1 9033 0
	mov	%d15, 255
	st.h	[%a13] 40, %d15
.LBE1018:
.LBE1017:
	.loc 1 10620 0
	call	SchM_Enter_Adc_KernelData
.LVL704:
	.loc 1 10643 0
	ld.w	%d2, [%a14] 32
	mov	%d15, 256
	jeq	%d2, %d15, .L472
	.loc 1 10647 0
	mov	%d15, 0
	st.b	[%a13] 54, %d15
.L472:
	.loc 1 10653 0
	call	SchM_Exit_Adc_KernelData
.LVL705:
.LBB1019:
.LBB1020:
	.loc 1 4894 0
	lea	%a13, [%a13] 8
.LVL706:
	mov	%d4, 0
#APP
	# 4894 "Targets\TC38xx\MCAL\MCAL_Modules\Adc\src\Adc.c" 1
	imask %e4,%d4,%d11,1
	# 0 "" 2
.LVL707:
	# 4894 "Targets\TC38xx\MCAL\MCAL_Modules\Adc\src\Adc.c" 1
	ldmst [%a13]0,%e4
	# 0 "" 2
#NO_APP
.LBE1020:
.LBE1019:
	.loc 1 10690 0
	call	SchM_Enter_Adc_KernelData
.LVL708:
	.loc 1 10697 0
	call	SchM_Exit_Adc_KernelData
.LVL709:
	j	.L470
.LVL710:
.L496:
	.loc 1 10608 0
	mov.aa	%a4, %a14
	mov	%d4, %d8
	mov	%d5, 1
.LVL711:
	call	Adc_lStopConvRequest
.LVL712:
	j	.L471
.LBE1021:
.LBE1025:
.LBE988:
.LBE1027:
.LBE1029:
.LFE35:
	.size	Adc_RS1EventInterruptHandler, .-Adc_RS1EventInterruptHandler
	.align 1
	.global	Adc_RS2EventInterruptHandler
	.type	Adc_RS2EventInterruptHandler, @function
Adc_RS2EventInterruptHandler:
.LFB36:
	.loc 1 4291 0
.LVL713:
	.loc 1 4301 0
	movh.a	%a15, hi:Adc_ConfigPtr
	.loc 1 4291 0
	mov	%d8, %d4
	.loc 1 4295 0
	call	Mcal_GetCpuIndex
.LVL714:
	.loc 1 4301 0
	ld.w	%d15, [%a15] lo:Adc_ConfigPtr
	jz	%d15, .L497
	mov.a	%a3, %d15
	sh	%d3, %d2, 2
	addsc.a	%a2, %a3, %d3, 0
	.loc 1 4309 0
	lt.u	%d15, %d8, 12
	.loc 1 4305 0
	ld.w	%d4, [%a2] 4
	.loc 1 4309 0
	and.ne	%d15, %d4, 0
	jz	%d15, .L497
	.loc 1 4314 0
	sh	%d9, %d8, 2
	mov.a	%a4, %d4
	addsc.a	%a3, %a4, %d9, 0
	ld.w	%d15, [%a3]0
	jz	%d15, .L497
	.loc 1 4319 0
	sh	%d15, %d8, 10
	mov.a	%a5, %d15
	addih.a	%a3, %a5, 61442
	ld.w	%d4, [%a3] 1416
	jnz.t	%d4, 2, .L533
.LVL715:
.L497:
	ret
.LVL716:
.L533:
.LBB1058:
.LBB1059:
.LBB1060:
.LBB1061:
	.loc 1 4607 0
	mul	%d1, %d2, 12
	movh	%d14, hi:Adc_kKernelDataIndex
.LBE1061:
.LBE1060:
.LBE1059:
.LBE1058:
	.loc 1 4323 0
	mov	%d4, 4
.LBB1106:
.LBB1104:
.LBB1064:
.LBB1062:
	.loc 1 4607 0
	movh.a	%a6, hi:Adc_kKernelData
	addi	%d14, %d14, lo:Adc_kKernelDataIndex
.LBE1062:
.LBE1064:
.LBE1104:
.LBE1106:
	.loc 1 4323 0
	st.w	[%a3] 1432, %d4
.LVL717:
.LBB1107:
.LBB1105:
.LBB1065:
.LBB1063:
	.loc 1 4607 0
	lea	%a6, [%a6] lo:Adc_kKernelData
	add	%d4, %d1, %d8
	mov.a	%a5, %d14
	addsc.a	%a3, %a6, %d3, 0
	addsc.a	%a4, %a5, %d4, 0
	ld.w	%d5, [%a3]0
	ld.bu	%d4, [%a4]0
	madd	%d6, %d5, %d4, 56
	mov.a	%a12, %d6
.LBE1063:
.LBE1065:
	.loc 1 10036 0
	ld.bu	%d4, [%a12] 47
	jnz	%d4, .L497
.LBB1066:
.LBB1067:
.LBB1068:
	.loc 1 10214 0
	ld.a	%a5, [%a2] 4
.LBE1068:
.LBE1067:
	.loc 1 10040 0
	ld.hu	%d10, [%a12] 44
.LVL718:
.LBB1074:
.LBB1073:
	.loc 1 10210 0
	mov.a	%a3, %d15
	.loc 1 10214 0
	addsc.a	%a5, %a5, %d9, 0
	.loc 1 10215 0
	mul	%d12, %d10, 60
	.loc 1 10214 0
	ld.a	%a5, [%a5]0
	ld.a	%a2, [%a5] 8
	.loc 1 10210 0
	lea	%a4, [%a3] 1024
	addih.a	%a4, %a4, 61442
.LVL719:
	.loc 1 10214 0
	addsc.a	%a2, %a2, %d12, 0
.LVL720:
	.loc 1 10224 0
	mov	%d7, 1
	.loc 1 10218 0
	ld.a	%a5, [%a2] 4
	.loc 1 10216 0
	ld.bu	%d6, [%a2] 52
.LVL721:
	.loc 1 10217 0
	ld.bu	%d5, [%a2] 56
.LVL722:
	.loc 1 10218 0
	ld.bu	%d11, [%a5] 2
.LVL723:
	.loc 1 10221 0
	addsc.a	%a5, %a12, %d10, 0
.LVL724:
	ld.bu	%d15, [%a5] 52
.LVL725:
	.loc 1 10224 0
	jeq	%d6, %d15, .L501
	add	%d7, %d15, 1
	sh	%d4, %d15, 1
	and	%d7, %d7, 255
.L501:
.LVL726:
	.loc 1 10277 0
	addsc.a	%a3, %a12, %d10, 2
	sh	%d0, %d6, 1
	ld.a	%a2, [%a3]0
.LVL727:
	addsc.a	%a2, %a2, %d4, 0
.LVL728:
	.loc 1 10282 0
	mov	%d4, 0
	jz	%d5, .L506
.LVL729:
.L524:
	add	%d15, %d11, %d4
	.loc 1 10288 0
	and	%d15, 255
	addi	%d15, %d15, 192
	addsc.a	%a3, %a4, %d15, 2
	add	%d4, 1
.LVL730:
	ld.w	%d15, [%a3]0
	insert	%d15, %d15, 0, 12, 20
	.loc 1 10287 0
	st.h	[%a2]0, %d15
.LVL731:
	.loc 1 10282 0
	and	%d15, %d4, 255
	addsc.a	%a2, %a2, %d0, 0
	jlt.u	%d15, %d5, .L524
.L506:
.LVL732:
	.loc 1 10313 0
	st.b	[%a5] 52, %d7
.LVL733:
.LBB1069:
.LBB1070:
	.loc 1 4741 0
	and	%d11, %d10, 255
	mov	%d15, 1
	lea	%a2, [%a12] 12
#APP
	# 4741 "Targets\TC38xx\MCAL\MCAL_Modules\Adc\src\Adc.c" 1
	imask %e4,%d15,%d11,1
	# 0 "" 2
.LVL734:
	# 4741 "Targets\TC38xx\MCAL\MCAL_Modules\Adc\src\Adc.c" 1
	ldmst [%a2]0,%e4
	# 0 "" 2
#NO_APP
.LBE1070:
.LBE1069:
	.loc 1 10322 0
	jne	%d6, %d7, .L504
.LVL735:
.LBB1071:
.LBB1072:
	.loc 1 4781 0
#APP
	# 4781 "Targets\TC38xx\MCAL\MCAL_Modules\Adc\src\Adc.c" 1
	imask %e4,%d15,%d11,1
	# 0 "" 2
.LVL736:
#NO_APP
	lea	%a2, [%a12] 16
#APP
	# 4781 "Targets\TC38xx\MCAL\MCAL_Modules\Adc\src\Adc.c" 1
	ldmst [%a2]0,%e4
	# 0 "" 2
.LVL737:
#NO_APP
.L504:
.LBE1072:
.LBE1071:
.LBE1073:
.LBE1074:
.LBB1075:
.LBB1076:
	.loc 1 10568 0
	ld.a	%a2, [%a15] lo:Adc_ConfigPtr
	addi	%d13, %d2, 1
.LBB1077:
.LBB1078:
	.loc 1 4607 0
	add	%d1, %d8
.LBE1078:
.LBE1077:
	.loc 1 10568 0
	addsc.a	%a2, %a2, %d13, 2
	ld.a	%a4, [%a2]0
.LVL738:
.LBB1084:
.LBB1079:
	.loc 1 4607 0
	addsc.a	%a2, %a6, %d3, 0
.LBE1079:
.LBE1084:
	.loc 1 10568 0
	addsc.a	%a4, %a4, %d9, 0
.LBB1085:
.LBB1080:
	.loc 1 4607 0
	ld.w	%d2, [%a2]0
.LVL739:
.LBE1080:
.LBE1085:
	.loc 1 10568 0
	ld.a	%a4, [%a4]0
	ld.a	%a14, [%a4] 8
.LBB1086:
.LBB1081:
	.loc 1 4607 0
	mov.a	%a4, %d14
	addsc.a	%a3, %a4, %d1, 0
.LBE1081:
.LBE1086:
	.loc 1 10568 0
	addsc.a	%a14, %a14, %d12, 0
.LVL740:
.LBB1087:
.LBB1082:
	.loc 1 4607 0
	ld.bu	%d15, [%a3]0
	madd	%d3, %d2, %d15, 56
.LBE1082:
.LBE1087:
.LBB1088:
.LBB1089:
.LBB1090:
	.loc 3 615 0
	mov	%d2, 1
.LBE1090:
.LBE1089:
.LBE1088:
.LBB1093:
.LBB1083:
	.loc 1 4607 0
	mov.a	%a13, %d3
.LVL741:
.LBE1083:
.LBE1093:
.LBB1094:
.LBB1092:
.LBB1091:
	.loc 3 615 0
	ld.w	%d3, [%a13] 16
.LVL742:
#APP
	# 615 ".\output\inc/..\..\Targets\TC38xx\MCAL\MCAL_Modules\McalLib\inc\Mcal_Compiler.h" 1
	mov %d14,%d10  
                     mov %d15,%d2  
                     extr.u %d2,%d3,%e14
	# 0 "" 2
.LVL743:
#NO_APP
.LBE1091:
.LBE1092:
.LBE1094:
	.loc 1 10583 0
	ld.hu	%d15, [%a14] 48
	jz	%d15, .L507
	.loc 1 10584 0
	ld.bu	%d3, [%a14] 51
.LVL744:
	.loc 1 10585 0
	eq	%d15, %d3, 0
	and.eq	%d15, %d2, 1
	jnz	%d15, .L507
.LVL745:
.L508:
.LBE1076:
.LBE1075:
.LBB1100:
.LBB1101:
.LBB1102:
	.loc 3 615 0
	ld.w	%d2, [%a12] 20
	mov	%d3, 1
#APP
	# 615 ".\output\inc/..\..\Targets\TC38xx\MCAL\MCAL_Modules\McalLib\inc\Mcal_Compiler.h" 1
	mov %d14,%d10  
                     mov %d15,%d3  
                     extr.u %d10,%d2,%e14
	# 0 "" 2
.LVL746:
#NO_APP
.LBE1102:
.LBE1101:
.LBE1100:
	.loc 1 10069 0
	jne	%d10, 1, .L497
.LVL747:
	.loc 1 10071 0
	ld.a	%a15, [%a15] lo:Adc_ConfigPtr
	addsc.a	%a15, %a15, %d13, 2
	.loc 1 10072 0
	ld.a	%a15, [%a15]0
	addsc.a	%a15, %a15, %d9, 0
	ld.a	%a15, [%a15]0
	.loc 1 10075 0
	ld.a	%a15, [%a15] 8
	addsc.a	%a15, %a15, %d12, 0
	ld.a	%a15, [%a15]0
	jz.a	%a15, .L497
	.loc 1 10079 0
	ji	%a15
.LVL748:
.L507:
.LBB1103:
.LBB1099:
	.loc 1 10589 0
	mov	%d15, 1
	st.b	[%a13] 47, %d15
	.loc 1 10595 0
	ld.hu	%d15, [%a14] 48
	jnz	%d15, .L534
.LVL749:
.L509:
.LBB1095:
.LBB1096:
	.loc 1 9033 0
	mov	%d15, 255
	st.h	[%a13] 44, %d15
.LBE1096:
.LBE1095:
	.loc 1 10620 0
	call	SchM_Enter_Adc_KernelData
.LVL750:
	.loc 1 10643 0
	ld.w	%d2, [%a14] 32
	mov	%d15, 256
	jeq	%d2, %d15, .L510
	.loc 1 10647 0
	mov	%d15, 0
	st.b	[%a13] 54, %d15
.L510:
	.loc 1 10653 0
	call	SchM_Exit_Adc_KernelData
.LVL751:
.LBB1097:
.LBB1098:
	.loc 1 4894 0
	lea	%a13, [%a13] 8
.LVL752:
	mov	%d4, 0
#APP
	# 4894 "Targets\TC38xx\MCAL\MCAL_Modules\Adc\src\Adc.c" 1
	imask %e4,%d4,%d11,1
	# 0 "" 2
.LVL753:
	# 4894 "Targets\TC38xx\MCAL\MCAL_Modules\Adc\src\Adc.c" 1
	ldmst [%a13]0,%e4
	# 0 "" 2
#NO_APP
.LBE1098:
.LBE1097:
	.loc 1 10690 0
	call	SchM_Enter_Adc_KernelData
.LVL754:
	.loc 1 10697 0
	call	SchM_Exit_Adc_KernelData
.LVL755:
	j	.L508
.LVL756:
.L534:
	.loc 1 10608 0
	mov.aa	%a4, %a14
	mov	%d4, %d8
	mov	%d5, 2
.LVL757:
	call	Adc_lStopConvRequest
.LVL758:
	j	.L509
.LBE1099:
.LBE1103:
.LBE1066:
.LBE1105:
.LBE1107:
.LFE36:
	.size	Adc_RS2EventInterruptHandler, .-Adc_RS2EventInterruptHandler
.section Const.Cpu0.Unspecified.Adc_kKernelData,"a",@progbits
	.align 2
	.type	Adc_kKernelData, @object
	.size	Adc_kKernelData, 16
Adc_kKernelData:
	.word	Adc_KernelData_Core0
	.word	Adc_KernelData_Core1
	.word	Adc_KernelData_Core2
	.word	Adc_KernelData_Core3
.section Const.Cpu0.8bit.Adc_kKernelUsedCount,"a",@progbits
	.type	Adc_kKernelUsedCount, @object
	.size	Adc_kKernelUsedCount, 4
Adc_kKernelUsedCount:
	.byte	4
	.byte	2
	.byte	1
	.byte	2
.section Const.Cpu0.8bit.Adc_kKernelDataIndex,"a",@progbits
	.type	Adc_kKernelDataIndex, @object
	.size	Adc_kKernelDataIndex, 48
Adc_kKernelDataIndex:
	.byte	-1
	.byte	0
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	1
	.byte	2
	.byte	3
	.byte	0
	.byte	-1
	.byte	1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	0
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	0
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	1
	.byte	-1
	.byte	-1
	.byte	-1
.section ClearedData.Cpu0.32bit.Adc_StartupCalStatus,"aw",@progbits
	.align 2
	.type	Adc_StartupCalStatus, @object
	.size	Adc_StartupCalStatus, 4
Adc_StartupCalStatus:
	.zero	4
.section ClearedData.Cpu0.32bit.Adc_ConfigPtr,"aw",@progbits
	.align 2
	.type	Adc_ConfigPtr, @object
	.size	Adc_ConfigPtr, 4
Adc_ConfigPtr:
	.zero	4
.section ClearedData.Cpu3.Unspecified.Adc_KernelData_Core3,"aw",@progbits
	.align 2
	.type	Adc_KernelData_Core3, @object
	.size	Adc_KernelData_Core3, 112
Adc_KernelData_Core3:
	.zero	112
.section ClearedData.Cpu2.Unspecified.Adc_KernelData_Core2,"aw",@progbits
	.align 2
	.type	Adc_KernelData_Core2, @object
	.size	Adc_KernelData_Core2, 56
Adc_KernelData_Core2:
	.zero	56
.section ClearedData.Cpu1.Unspecified.Adc_KernelData_Core1,"aw",@progbits
	.align 2
	.type	Adc_KernelData_Core1, @object
	.size	Adc_KernelData_Core1, 112
Adc_KernelData_Core1:
	.zero	112
.section ClearedData.Cpu0.Unspecified.Adc_KernelData_Core0,"aw",@progbits
	.align 2
	.type	Adc_KernelData_Core0, @object
	.size	Adc_KernelData_Core0, 224
Adc_KernelData_Core0:
	.zero	224
	.global	ADCTotalTime
.section .bss.a4.ADCTotalTime,"aw",@nobits
	.align 2
	.type	ADCTotalTime, @object
	.size	ADCTotalTime, 4
ADCTotalTime:
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
	.uaword	.LFB97
	.uaword	.LFE97-.LFB97
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB73
	.uaword	.LFE73-.LFB73
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB64
	.uaword	.LFE64-.LFB64
	.byte	0x4
	.uaword	.LCFI0-.LFB64
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB72
	.uaword	.LFE72-.LFB72
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB70
	.uaword	.LFE70-.LFB70
	.byte	0x4
	.uaword	.LCFI1-.LFB70
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB19
	.uaword	.LFE19-.LFB19
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB20
	.uaword	.LFE20-.LFB20
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB21
	.uaword	.LFE21-.LFB21
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB22
	.uaword	.LFE22-.LFB22
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB23
	.uaword	.LFE23-.LFB23
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB24
	.uaword	.LFE24-.LFB24
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB25
	.uaword	.LFE25-.LFB25
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB26
	.uaword	.LFE26-.LFB26
	.align 2
.LEFDE24:
.LSFDE26:
	.uaword	.LEFDE26-.LASFDE26
.LASFDE26:
	.uaword	.Lframe0
	.uaword	.LFB27
	.uaword	.LFE27-.LFB27
	.align 2
.LEFDE26:
.LSFDE28:
	.uaword	.LEFDE28-.LASFDE28
.LASFDE28:
	.uaword	.Lframe0
	.uaword	.LFB28
	.uaword	.LFE28-.LFB28
	.align 2
.LEFDE28:
.LSFDE30:
	.uaword	.LEFDE30-.LASFDE30
.LASFDE30:
	.uaword	.Lframe0
	.uaword	.LFB29
	.uaword	.LFE29-.LFB29
	.align 2
.LEFDE30:
.LSFDE32:
	.uaword	.LEFDE32-.LASFDE32
.LASFDE32:
	.uaword	.Lframe0
	.uaword	.LFB30
	.uaword	.LFE30-.LFB30
	.align 2
.LEFDE32:
.LSFDE34:
	.uaword	.LEFDE34-.LASFDE34
.LASFDE34:
	.uaword	.Lframe0
	.uaword	.LFB31
	.uaword	.LFE31-.LFB31
	.align 2
.LEFDE34:
.LSFDE36:
	.uaword	.LEFDE36-.LASFDE36
.LASFDE36:
	.uaword	.Lframe0
	.uaword	.LFB32
	.uaword	.LFE32-.LFB32
	.align 2
.LEFDE36:
.LSFDE38:
	.uaword	.LEFDE38-.LASFDE38
.LASFDE38:
	.uaword	.Lframe0
	.uaword	.LFB33
	.uaword	.LFE33-.LFB33
	.align 2
.LEFDE38:
.LSFDE40:
	.uaword	.LEFDE40-.LASFDE40
.LASFDE40:
	.uaword	.Lframe0
	.uaword	.LFB34
	.uaword	.LFE34-.LFB34
	.byte	0x4
	.uaword	.LCFI2-.LFB34
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE40:
.LSFDE42:
	.uaword	.LEFDE42-.LASFDE42
.LASFDE42:
	.uaword	.Lframe0
	.uaword	.LFB35
	.uaword	.LFE35-.LFB35
	.align 2
.LEFDE42:
.LSFDE44:
	.uaword	.LEFDE44-.LASFDE44
.LASFDE44:
	.uaword	.Lframe0
	.uaword	.LFB36
	.uaword	.LFE36-.LFB36
	.align 2
.LEFDE44:
.section .text,"ax",@progbits
.Letext0:
	.file 4 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 5 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 6 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\Ifx_TypesReg.h"
	.file 7 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu_17_TimerIp.h"
	.file 8 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Adc\\inc\\Adc.h"
	.file 9 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxEvadc_regdef.h"
	.file 10 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxScu_regdef.h"
	.file 11 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
	.file 12 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxStm_regdef.h"
	.file 13 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h"
	.file 14 ".\\output\\inc/..\\..\\Integration\\mcal\\SchM_Adc.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x15184
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"Targets\\TC38xx\\MCAL\\MCAL_Modules\\Adc\\src\\Adc.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x960
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x4
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
	.byte	0x4
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
	.byte	0x4
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
	.byte	0x5
	.byte	0x60
	.uaword	0x1cc
	.uleb128 0x3
	.string	"Ifx_UReg_8Bit"
	.byte	0x6
	.byte	0x60
	.uaword	0x1d9
	.uleb128 0x3
	.string	"Ifx_UReg_32Bit"
	.byte	0x6
	.byte	0x62
	.uaword	0x241
	.uleb128 0x3
	.string	"Ifx_SReg_32Bit"
	.byte	0x6
	.byte	0x65
	.uaword	0x21b
	.uleb128 0x4
	.uaword	0x241
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x5
	.uaword	0x2b5
	.uaword	0x317
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.uaword	0x2b5
	.uaword	0x327
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0xb
	.byte	0
	.uleb128 0x5
	.uaword	0x2b5
	.uaword	0x337
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0x1b
	.byte	0
	.uleb128 0x5
	.uaword	0x2b5
	.uaword	0x347
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0x23
	.byte	0
	.uleb128 0x5
	.uaword	0x2b5
	.uaword	0x357
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.uaword	0x2b5
	.uaword	0x367
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0x2f
	.byte	0
	.uleb128 0x5
	.uaword	0x2b5
	.uaword	0x377
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0x3f
	.byte	0
	.uleb128 0x5
	.uaword	0x2b5
	.uaword	0x387
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.uaword	0x2b5
	.uaword	0x397
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0x5b
	.byte	0
	.uleb128 0x5
	.uaword	0x2b5
	.uaword	0x3a7
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0x2b
	.byte	0
	.uleb128 0x5
	.uaword	0x2b5
	.uaword	0x3b7
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0x5f
	.byte	0
	.uleb128 0x5
	.uaword	0x2b5
	.uaword	0x3c7
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.uaword	0x2b5
	.uaword	0x3d7
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0xf
	.byte	0
	.uleb128 0x5
	.uaword	0x2b5
	.uaword	0x3e7
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0x27
	.byte	0
	.uleb128 0x5
	.uaword	0x2b5
	.uaword	0x3f7
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0x4b
	.byte	0
	.uleb128 0x5
	.uaword	0x2b5
	.uaword	0x407
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0x3b
	.byte	0
	.uleb128 0x5
	.uaword	0x2b5
	.uaword	0x417
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0x17
	.byte	0
	.uleb128 0x3
	.string	"Mcu_17_Gtm_TimerOutType"
	.byte	0x7
	.byte	0xa0
	.uaword	0x1cc
	.uleb128 0x3
	.string	"Mcu_17_Gtm_TimerOutputEnableType"
	.byte	0x7
	.byte	0xa6
	.uaword	0x1cc
	.uleb128 0x3
	.string	"Mcu_17_Gtm_TimerChIdentifierType"
	.byte	0x7
	.byte	0xde
	.uaword	0x233
	.uleb128 0x7
	.byte	0x28
	.byte	0x7
	.byte	0xee
	.uaword	0x580
	.uleb128 0x8
	.string	"TimerType"
	.byte	0x7
	.byte	0xf0
	.uaword	0x417
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TimerId"
	.byte	0x7
	.byte	0xf1
	.uaword	0x45e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"TimerChCtrlReg"
	.byte	0x7
	.byte	0xf2
	.uaword	0x233
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.string	"TimerChCN0Reg"
	.byte	0x7
	.byte	0xf3
	.uaword	0x233
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.string	"TimerChCM0Reg"
	.byte	0x7
	.byte	0xf4
	.uaword	0x233
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.string	"TimerChCM1Reg"
	.byte	0x7
	.byte	0xf5
	.uaword	0x233
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.string	"TimerChSR0Reg"
	.byte	0x7
	.byte	0xf6
	.uaword	0x233
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.string	"TimerChSR1Reg"
	.byte	0x7
	.byte	0xf7
	.uaword	0x233
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x8
	.string	"TimerChPortOutConfig"
	.byte	0x7
	.byte	0xf8
	.uaword	0x233
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.string	"TimerChIntEnMode"
	.byte	0x7
	.byte	0xf9
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0
	.uleb128 0x3
	.string	"Mcu_17_Gtm_TomAtomChConfigType"
	.byte	0x7
	.byte	0xfa
	.uaword	0x486
	.uleb128 0x3
	.string	"Adc_ChannelType"
	.byte	0x8
	.byte	0x9d
	.uaword	0x1cc
	.uleb128 0x3
	.string	"Adc_GroupType"
	.byte	0x8
	.byte	0xa1
	.uaword	0x1f7
	.uleb128 0x3
	.string	"Adc_ValueGroupType"
	.byte	0x8
	.byte	0xa5
	.uaword	0x1f7
	.uleb128 0x3
	.string	"Adc_GroupPriorityType"
	.byte	0x8
	.byte	0xb5
	.uaword	0x1cc
	.uleb128 0x3
	.string	"Adc_StreamNumSampleType"
	.byte	0x8
	.byte	0xb9
	.uaword	0x1cc
	.uleb128 0x3
	.string	"Adc_ResultRegType"
	.byte	0x8
	.byte	0xc1
	.uaword	0x1cc
	.uleb128 0x3
	.string	"Adc_NotifyFnPtrType"
	.byte	0x8
	.byte	0xc9
	.uaword	0x65c
	.uleb128 0x9
	.byte	0x4
	.uaword	0x662
	.uleb128 0xa
	.byte	0x1
	.uleb128 0x3
	.string	"Adc_StatusType"
	.byte	0x8
	.byte	0xcd
	.uaword	0x1cc
	.uleb128 0x3
	.string	"Adc_StartupCalibStatusType"
	.byte	0x8
	.byte	0xd5
	.uaword	0x1cc
	.uleb128 0x3
	.string	"Adc_TriggerSourceType"
	.byte	0x8
	.byte	0xdc
	.uaword	0x1cc
	.uleb128 0x3
	.string	"Adc_GroupConvModeType"
	.byte	0x8
	.byte	0xe2
	.uaword	0x1cc
	.uleb128 0x3
	.string	"Adc_SyncConvModeType"
	.byte	0x8
	.byte	0xe8
	.uaword	0x1cc
	.uleb128 0x3
	.string	"Adc_StreamBufferModeType"
	.byte	0x8
	.byte	0xef
	.uaword	0x1cc
	.uleb128 0x3
	.string	"Adc_GroupAccessModeType"
	.byte	0x8
	.byte	0xf5
	.uaword	0x1cc
	.uleb128 0xb
	.string	"Adc_HwTrigGateType"
	.byte	0x8
	.uahalf	0x108
	.uaword	0x1cc
	.uleb128 0xc
	.byte	0x6
	.byte	0x8
	.uahalf	0x13d
	.uaword	0x7ae
	.uleb128 0xd
	.string	"EruEicrCfg"
	.byte	0x8
	.uahalf	0x13f
	.uaword	0x1f7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"EruIgcrCfg"
	.byte	0x8
	.uahalf	0x140
	.uaword	0x1f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xd
	.string	"ErsChannel"
	.byte	0x8
	.uahalf	0x141
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"OguChannel"
	.byte	0x8
	.uahalf	0x142
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0xb
	.string	"Adc_EruChannelCfgType"
	.byte	0x8
	.uahalf	0x143
	.uaword	0x74c
	.uleb128 0xc
	.byte	0x4
	.byte	0x8
	.uahalf	0x147
	.uaword	0x81d
	.uleb128 0xd
	.string	"ASChannelId"
	.byte	0x8
	.uahalf	0x149
	.uaword	0x5a6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"AnalogChannelNo"
	.byte	0x8
	.uahalf	0x14a
	.uaword	0x5a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xd
	.string	"ResultReg"
	.byte	0x8
	.uahalf	0x14b
	.uaword	0x628
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0xb
	.string	"Adc_GroupDefType"
	.byte	0x8
	.uahalf	0x14c
	.uaword	0x7cc
	.uleb128 0xc
	.byte	0x3c
	.byte	0x8
	.uahalf	0x150
	.uaword	0xa73
	.uleb128 0xd
	.string	"NotifyPtr"
	.byte	0x8
	.uahalf	0x152
	.uaword	0x641
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"GroupDefinition"
	.byte	0x8
	.uahalf	0x153
	.uaword	0xa73
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"GtmTrigCfg"
	.byte	0x8
	.uahalf	0x155
	.uaword	0xa7e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"GtmGateCfg"
	.byte	0x8
	.uahalf	0x156
	.uaword	0xa7e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"EruTrigCfg"
	.byte	0x8
	.uahalf	0x158
	.uaword	0xa89
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"EruGateCfg"
	.byte	0x8
	.uahalf	0x159
	.uaword	0xa89
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"GroupQCtrlCfg"
	.byte	0x8
	.uahalf	0x15a
	.uaword	0x233
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"GroupQModeCfg"
	.byte	0x8
	.uahalf	0x15b
	.uaword	0x233
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"AliasChCfg"
	.byte	0x8
	.uahalf	0x15c
	.uaword	0x233
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"GrpReqTmCfg"
	.byte	0x8
	.uahalf	0x15d
	.uaword	0x233
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"ChannelMask"
	.byte	0x8
	.uahalf	0x15e
	.uaword	0x1f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.string	"ResultRegMask"
	.byte	0x8
	.uahalf	0x15f
	.uaword	0x1f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x2a
	.uleb128 0xd
	.string	"SyncChannelMask"
	.byte	0x8
	.uahalf	0x160
	.uaword	0x1f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"SyncResRegMask"
	.byte	0x8
	.uahalf	0x161
	.uaword	0x1f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x2e
	.uleb128 0xd
	.string	"TriggerSource"
	.byte	0x8
	.uahalf	0x162
	.uaword	0x69c
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"ConvMode"
	.byte	0x8
	.uahalf	0x163
	.uaword	0x6b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x31
	.uleb128 0xd
	.string	"AccessMode"
	.byte	0x8
	.uahalf	0x164
	.uaword	0x712
	.byte	0x2
	.byte	0x23
	.uleb128 0x32
	.uleb128 0xd
	.string	"StreamMode"
	.byte	0x8
	.uahalf	0x165
	.uaword	0x6f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x33
	.uleb128 0xd
	.string	"NumOfSamples"
	.byte	0x8
	.uahalf	0x166
	.uaword	0x609
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"HwTrigType"
	.byte	0x8
	.uahalf	0x167
	.uaword	0x731
	.byte	0x2
	.byte	0x23
	.uleb128 0x35
	.uleb128 0xd
	.string	"HwGateType"
	.byte	0x8
	.uahalf	0x168
	.uaword	0x731
	.byte	0x2
	.byte	0x23
	.uleb128 0x36
	.uleb128 0xd
	.string	"GrpPriority"
	.byte	0x8
	.uahalf	0x169
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x37
	.uleb128 0xd
	.string	"NoOfChannels"
	.byte	0x8
	.uahalf	0x16a
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"LimitCheckGroup"
	.byte	0x8
	.uahalf	0x16b
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x39
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.uaword	0xa79
	.uleb128 0xe
	.uaword	0x81d
	.uleb128 0x9
	.byte	0x4
	.uaword	0xa84
	.uleb128 0xe
	.uaword	0x580
	.uleb128 0x9
	.byte	0x4
	.uaword	0xa8f
	.uleb128 0xe
	.uaword	0x7ae
	.uleb128 0xb
	.string	"Adc_GroupCfgType"
	.byte	0x8
	.uahalf	0x16c
	.uaword	0x836
	.uleb128 0xc
	.byte	0xc
	.byte	0x8
	.uahalf	0x170
	.uaword	0xb20
	.uleb128 0xd
	.string	"ChannelChctrCfg"
	.byte	0x8
	.uahalf	0x172
	.uaword	0x233
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"BoundaryValues"
	.byte	0x8
	.uahalf	0x173
	.uaword	0x233
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"AnChannelNo"
	.byte	0x8
	.uahalf	0x174
	.uaword	0x5a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"LimitCheckEnabled"
	.byte	0x8
	.uahalf	0x175
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.byte	0
	.uleb128 0xb
	.string	"Adc_ChannelCfgType"
	.byte	0x8
	.uahalf	0x176
	.uaword	0xaad
	.uleb128 0xc
	.byte	0x18
	.byte	0x8
	.uahalf	0x17a
	.uaword	0xbed
	.uleb128 0xd
	.string	"GrpAnalogFuncCfg"
	.byte	0x8
	.uahalf	0x17c
	.uaword	0x233
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"GrpArbitCfg"
	.byte	0x8
	.uahalf	0x17d
	.uaword	0x233
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"GrpArbitPrioCfg"
	.byte	0x8
	.uahalf	0x17e
	.uaword	0x233
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"KernelInputClass0Cfg"
	.byte	0x8
	.uahalf	0x17f
	.uaword	0x233
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"KernelInputClass1Cfg"
	.byte	0x8
	.uahalf	0x180
	.uaword	0x233
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"GrpSyncCtrlCfg"
	.byte	0x8
	.uahalf	0x181
	.uaword	0x233
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0
	.uleb128 0xb
	.string	"Adc_HwCfgType"
	.byte	0x8
	.uahalf	0x182
	.uaword	0xb3b
	.uleb128 0xc
	.byte	0x1c
	.byte	0x8
	.uahalf	0x186
	.uaword	0xccf
	.uleb128 0xd
	.string	"HwCfgPtr"
	.byte	0x8
	.uahalf	0x188
	.uaword	0xccf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"ChCfgPtr"
	.byte	0x8
	.uahalf	0x189
	.uaword	0xcda
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.uaword	.LASF0
	.byte	0x8
	.uahalf	0x18a
	.uaword	0xce5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"SwTrigGrpMask"
	.byte	0x8
	.uahalf	0x18b
	.uaword	0x233
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"HwTrigGrpMask"
	.byte	0x8
	.uahalf	0x18c
	.uaword	0x233
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"SyncConvMode"
	.byte	0x8
	.uahalf	0x18d
	.uaword	0x6d6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"SlaveKernels"
	.byte	0x8
	.uahalf	0x18e
	.uaword	0xcf0
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.uleb128 0xd
	.string	"NoOfGroups"
	.byte	0x8
	.uahalf	0x18f
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"SRNUsed"
	.byte	0x8
	.uahalf	0x190
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x19
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.uaword	0xcd5
	.uleb128 0xe
	.uaword	0xbed
	.uleb128 0x9
	.byte	0x4
	.uaword	0xce0
	.uleb128 0xe
	.uaword	0xb20
	.uleb128 0x9
	.byte	0x4
	.uaword	0xceb
	.uleb128 0xe
	.uaword	0xa94
	.uleb128 0x5
	.uaword	0x1cc
	.uaword	0xd00
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.string	"Adc_HwUnitCfgType"
	.byte	0x8
	.uahalf	0x191
	.uaword	0xc03
	.uleb128 0xc
	.byte	0xc
	.byte	0x8
	.uahalf	0x195
	.uaword	0xd75
	.uleb128 0xd
	.string	"GlobalCfg"
	.byte	0x8
	.uahalf	0x197
	.uaword	0x233
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"GlobInputClass0Cfg"
	.byte	0x8
	.uahalf	0x198
	.uaword	0x233
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"GlobInputClass1Cfg"
	.byte	0x8
	.uahalf	0x199
	.uaword	0x233
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0xb
	.string	"Adc_GlobalCfgType"
	.byte	0x8
	.uahalf	0x19a
	.uaword	0xd1a
	.uleb128 0xc
	.byte	0x30
	.byte	0x8
	.uahalf	0x19e
	.uaword	0xdb1
	.uleb128 0xd
	.string	"HwUnitCfgPtr"
	.byte	0x8
	.uahalf	0x1a0
	.uaword	0xdb1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.uaword	0xdc1
	.uaword	0xdc1
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0xb
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.uaword	0xdc7
	.uleb128 0xe
	.uaword	0xd00
	.uleb128 0xb
	.string	"Adc_CoreConfigType"
	.byte	0x8
	.uahalf	0x1a1
	.uaword	0xd8f
	.uleb128 0xc
	.byte	0x14
	.byte	0x8
	.uahalf	0x1a5
	.uaword	0xe1f
	.uleb128 0xd
	.string	"GlobalCfgPtr"
	.byte	0x8
	.uahalf	0x1a7
	.uaword	0xe1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CoreCfgPtr"
	.byte	0x8
	.uahalf	0x1a8
	.uaword	0xe2a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.uaword	0xe25
	.uleb128 0xe
	.uaword	0xd75
	.uleb128 0x5
	.uaword	0xe3a
	.uaword	0xe3a
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.uaword	0xe40
	.uleb128 0xe
	.uaword	0xdcc
	.uleb128 0xb
	.string	"Adc_ConfigType"
	.byte	0x8
	.uahalf	0x1a9
	.uaword	0xde7
	.uleb128 0x10
	.string	"_Ifx_EVADC_ACCEN0_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0x44
	.uaword	0x10b2
	.uleb128 0x11
	.string	"EN0"
	.byte	0x9
	.byte	0x46
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN1"
	.byte	0x9
	.byte	0x47
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN2"
	.byte	0x9
	.byte	0x48
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN3"
	.byte	0x9
	.byte	0x49
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN4"
	.byte	0x9
	.byte	0x4a
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN5"
	.byte	0x9
	.byte	0x4b
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN6"
	.byte	0x9
	.byte	0x4c
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN7"
	.byte	0x9
	.byte	0x4d
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN8"
	.byte	0x9
	.byte	0x4e
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN9"
	.byte	0x9
	.byte	0x4f
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN10"
	.byte	0x9
	.byte	0x50
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN11"
	.byte	0x9
	.byte	0x51
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN12"
	.byte	0x9
	.byte	0x52
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN13"
	.byte	0x9
	.byte	0x53
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN14"
	.byte	0x9
	.byte	0x54
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN15"
	.byte	0x9
	.byte	0x55
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN16"
	.byte	0x9
	.byte	0x56
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN17"
	.byte	0x9
	.byte	0x57
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN18"
	.byte	0x9
	.byte	0x58
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN19"
	.byte	0x9
	.byte	0x59
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN20"
	.byte	0x9
	.byte	0x5a
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN21"
	.byte	0x9
	.byte	0x5b
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN22"
	.byte	0x9
	.byte	0x5c
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN23"
	.byte	0x9
	.byte	0x5d
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN24"
	.byte	0x9
	.byte	0x5e
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN25"
	.byte	0x9
	.byte	0x5f
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN26"
	.byte	0x9
	.byte	0x60
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN27"
	.byte	0x9
	.byte	0x61
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN28"
	.byte	0x9
	.byte	0x62
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN29"
	.byte	0x9
	.byte	0x63
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN30"
	.byte	0x9
	.byte	0x64
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN31"
	.byte	0x9
	.byte	0x65
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_EVADC_ACCEN0_Bits"
	.byte	0x9
	.byte	0x66
	.uaword	0xe5c
	.uleb128 0x10
	.string	"_Ifx_EVADC_ACCPROT0_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0x69
	.uaword	0x115b
	.uleb128 0x11
	.string	"APCP"
	.byte	0x9
	.byte	0x6b
	.uaword	0x2ca
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"APCS"
	.byte	0x9
	.byte	0x6c
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF1
	.byte	0x9
	.byte	0x6d
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"APIP"
	.byte	0x9
	.byte	0x6e
	.uaword	0x2ca
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"APIS"
	.byte	0x9
	.byte	0x6f
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF2
	.byte	0x9
	.byte	0x70
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_EVADC_ACCPROT0_Bits"
	.byte	0x9
	.byte	0x71
	.uaword	0x10cf
	.uleb128 0x10
	.string	"_Ifx_EVADC_ACCPROT1_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0x74
	.uaword	0x1206
	.uleb128 0x11
	.string	"APSP"
	.byte	0x9
	.byte	0x76
	.uaword	0x2ca
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"APSS"
	.byte	0x9
	.byte	0x77
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF1
	.byte	0x9
	.byte	0x78
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"APRP"
	.byte	0x9
	.byte	0x79
	.uaword	0x2ca
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"APRS"
	.byte	0x9
	.byte	0x7a
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF2
	.byte	0x9
	.byte	0x7b
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_EVADC_ACCPROT1_Bits"
	.byte	0x9
	.byte	0x7c
	.uaword	0x117a
	.uleb128 0x10
	.string	"_Ifx_EVADC_ACCPROT2_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0x7f
	.uaword	0x12b0
	.uleb128 0x11
	.string	"APF"
	.byte	0x9
	.byte	0x81
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF3
	.byte	0x9
	.byte	0x82
	.uaword	0x2ca
	.byte	0x4
	.byte	0xc
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"APGC"
	.byte	0x9
	.byte	0x83
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"APEM"
	.byte	0x9
	.byte	0x84
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"APTF"
	.byte	0x9
	.byte	0x85
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF4
	.byte	0x9
	.byte	0x86
	.uaword	0x2ca
	.byte	0x4
	.byte	0xd
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_EVADC_ACCPROT2_Bits"
	.byte	0x9
	.byte	0x87
	.uaword	0x1225
	.uleb128 0x10
	.string	"_Ifx_EVADC_CLC_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0x8a
	.uaword	0x1344
	.uleb128 0x11
	.string	"DISR"
	.byte	0x9
	.byte	0x8c
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"DISS"
	.byte	0x9
	.byte	0x8d
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF5
	.byte	0x9
	.byte	0x8e
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EDIS"
	.byte	0x9
	.byte	0x8f
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF3
	.byte	0x9
	.byte	0x90
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_EVADC_CLC_Bits"
	.byte	0x9
	.byte	0x91
	.uaword	0x12cf
	.uleb128 0x10
	.string	"_Ifx_EVADC_EMUXSEL_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0x94
	.uaword	0x13bc
	.uleb128 0x11
	.string	"EMUXGRP0"
	.byte	0x9
	.byte	0x96
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EMUXGRP1"
	.byte	0x9
	.byte	0x97
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF6
	.byte	0x9
	.byte	0x98
	.uaword	0x2ca
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_EVADC_EMUXSEL_Bits"
	.byte	0x9
	.byte	0x99
	.uaword	0x135e
	.uleb128 0x10
	.string	"_Ifx_EVADC_FC_FCBFL_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0x9c
	.uaword	0x14fc
	.uleb128 0x11
	.string	"BFL"
	.byte	0x9
	.byte	0x9e
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF7
	.byte	0x9
	.byte	0x9f
	.uaword	0x2ca
	.byte	0x4
	.byte	0x3
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"BFA"
	.byte	0x9
	.byte	0xa0
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF8
	.byte	0x9
	.byte	0xa1
	.uaword	0x2ca
	.byte	0x4
	.byte	0x3
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"BFI"
	.byte	0x9
	.byte	0xa2
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF9
	.byte	0x9
	.byte	0xa3
	.uaword	0x2ca
	.byte	0x4
	.byte	0x3
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"BFS"
	.byte	0x9
	.byte	0xa4
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF10
	.byte	0x9
	.byte	0xa5
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"BFM"
	.byte	0x9
	.byte	0xa6
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"BFV"
	.byte	0x9
	.byte	0xa7
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF11
	.byte	0x9
	.byte	0xa8
	.uaword	0x2ca
	.byte	0x4
	.byte	0x6
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"BFLNP"
	.byte	0x9
	.byte	0xa9
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"FCR"
	.byte	0x9
	.byte	0xaa
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF12
	.byte	0x9
	.byte	0xab
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"VF"
	.byte	0x9
	.byte	0xac
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_EVADC_FC_FCBFL_Bits"
	.byte	0x9
	.byte	0xad
	.uaword	0x13da
	.uleb128 0x10
	.string	"_Ifx_EVADC_FC_FCCTRL_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0xb0
	.uaword	0x162f
	.uleb128 0x11
	.string	"STCF"
	.byte	0x9
	.byte	0xb2
	.uaword	0x2ca
	.byte	0x4
	.byte	0x5
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"RPE"
	.byte	0x9
	.byte	0xb3
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"AIPF"
	.byte	0x9
	.byte	0xb4
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF13
	.byte	0x9
	.byte	0xb5
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"DIVA"
	.byte	0x9
	.byte	0xb6
	.uaword	0x2ca
	.byte	0x4
	.byte	0x5
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"CPWC"
	.byte	0x9
	.byte	0xb7
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"XTSEL"
	.byte	0x9
	.byte	0xb8
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"XTLVL"
	.byte	0x9
	.byte	0xb9
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"XTMODE"
	.byte	0x9
	.byte	0xba
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"XTPOL"
	.byte	0x9
	.byte	0xbb
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"GTMODE"
	.byte	0x9
	.byte	0xbc
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"FCCHNR"
	.byte	0x9
	.byte	0xbd
	.uaword	0x2ca
	.byte	0x4
	.byte	0x5
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"XTWC"
	.byte	0x9
	.byte	0xbe
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_EVADC_FC_FCCTRL_Bits"
	.byte	0x9
	.byte	0xbf
	.uaword	0x151b
	.uleb128 0x10
	.string	"_Ifx_EVADC_FC_FCHYST_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0xc2
	.uaword	0x16d4
	.uleb128 0x12
	.uaword	.LASF14
	.byte	0x9
	.byte	0xc4
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"DELTAMINUS"
	.byte	0x9
	.byte	0xc5
	.uaword	0x2ca
	.byte	0x4
	.byte	0xa
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF1
	.byte	0x9
	.byte	0xc6
	.uaword	0x2ca
	.byte	0x4
	.byte	0x6
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"DELTAPLUS"
	.byte	0x9
	.byte	0xc7
	.uaword	0x2ca
	.byte	0x4
	.byte	0xa
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF2
	.byte	0x9
	.byte	0xc8
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_EVADC_FC_FCHYST_Bits"
	.byte	0x9
	.byte	0xc9
	.uaword	0x164f
	.uleb128 0x10
	.string	"_Ifx_EVADC_FC_FCM_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0xcc
	.uaword	0x17e3
	.uleb128 0x11
	.string	"RUNCOMP"
	.byte	0x9
	.byte	0xce
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"RUNRAMP"
	.byte	0x9
	.byte	0xcf
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"FCRDIR"
	.byte	0x9
	.byte	0xd0
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"ANON"
	.byte	0x9
	.byte	0xd1
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"ACSD"
	.byte	0x9
	.byte	0xd2
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"FCTRIV"
	.byte	0x9
	.byte	0xd3
	.uaword	0x2ca
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SRG"
	.byte	0x9
	.byte	0xd4
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"AUE"
	.byte	0x9
	.byte	0xd5
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SSE"
	.byte	0x9
	.byte	0xd6
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"FCMWC"
	.byte	0x9
	.byte	0xd7
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"FCREF"
	.byte	0x9
	.byte	0xd8
	.uaword	0x2ca
	.byte	0x4
	.byte	0xa
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_EVADC_FC_FCM_Bits"
	.byte	0x9
	.byte	0xd9
	.uaword	0x16f4
	.uleb128 0x10
	.string	"_Ifx_EVADC_FC_FCRAMP0_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0xdc
	.uaword	0x1883
	.uleb128 0x11
	.string	"FCRCOMPA"
	.byte	0x9
	.byte	0xde
	.uaword	0x2ca
	.byte	0x4
	.byte	0xa
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF15
	.byte	0x9
	.byte	0xdf
	.uaword	0x2ca
	.byte	0x4
	.byte	0x6
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"FCRSTEP"
	.byte	0x9
	.byte	0xe0
	.uaword	0x2ca
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF16
	.byte	0x9
	.byte	0xe1
	.uaword	0x2ca
	.byte	0x4
	.byte	0x7
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"FSWC"
	.byte	0x9
	.byte	0xe2
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_EVADC_FC_FCRAMP0_Bits"
	.byte	0x9
	.byte	0xe3
	.uaword	0x1800
	.uleb128 0x10
	.string	"_Ifx_EVADC_FC_FCRAMP1_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0xe6
	.uaword	0x18ef
	.uleb128 0x11
	.string	"FCRCOMPB"
	.byte	0x9
	.byte	0xe8
	.uaword	0x2ca
	.byte	0x4
	.byte	0xa
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF15
	.byte	0x9
	.byte	0xe9
	.uaword	0x2ca
	.byte	0x4
	.byte	0x16
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_EVADC_FC_FCRAMP1_Bits"
	.byte	0x9
	.byte	0xea
	.uaword	0x18a4
	.uleb128 0x10
	.string	"_Ifx_EVADC_GLOBCFG_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0xed
	.uaword	0x199d
	.uleb128 0x12
	.uaword	.LASF14
	.byte	0x9
	.byte	0xef
	.uaword	0x2ca
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"USC"
	.byte	0x9
	.byte	0xf0
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SUPLEV"
	.byte	0x9
	.byte	0xf1
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"CPWC"
	.byte	0x9
	.byte	0xf2
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF17
	.byte	0x9
	.byte	0xf3
	.uaword	0x2ca
	.byte	0x4
	.byte	0xf
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SUCAL"
	.byte	0x9
	.byte	0xf4
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_EVADC_GLOBCFG_Bits"
	.byte	0x9
	.byte	0xf5
	.uaword	0x1910
	.uleb128 0x10
	.string	"_Ifx_EVADC_GLOB_BOUND_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0xf8
	.uaword	0x1a23
	.uleb128 0x12
	.uaword	.LASF18
	.byte	0x9
	.byte	0xfa
	.uaword	0x2ca
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF1
	.byte	0x9
	.byte	0xfb
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF19
	.byte	0x9
	.byte	0xfc
	.uaword	0x2ca
	.byte	0x4
	.byte	0xc
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF2
	.byte	0x9
	.byte	0xfd
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_EVADC_GLOB_BOUND_Bits"
	.byte	0x9
	.byte	0xfe
	.uaword	0x19bb
	.uleb128 0x13
	.string	"_Ifx_EVADC_GLOB_EFLAG_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x101
	.uaword	0x1acc
	.uleb128 0x14
	.uaword	.LASF14
	.byte	0x9
	.uahalf	0x103
	.uaword	0x2ca
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"REVGLB"
	.byte	0x9
	.uahalf	0x104
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF9
	.byte	0x9
	.uahalf	0x105
	.uaword	0x2ca
	.byte	0x4
	.byte	0xf
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"REVGLBCLR"
	.byte	0x9
	.uahalf	0x106
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF20
	.byte	0x9
	.uahalf	0x107
	.uaword	0x2ca
	.byte	0x4
	.byte	0x7
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_GLOB_EFLAG_Bits"
	.byte	0x9
	.uahalf	0x108
	.uaword	0x1a44
	.uleb128 0x13
	.string	"_Ifx_EVADC_GLOB_EVNP_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x10b
	.uaword	0x1b4b
	.uleb128 0x14
	.uaword	.LASF14
	.byte	0x9
	.uahalf	0x10d
	.uaword	0x2ca
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"REV0NP"
	.byte	0x9
	.uahalf	0x10e
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF21
	.byte	0x9
	.uahalf	0x10f
	.uaword	0x2ca
	.byte	0x4
	.byte	0xc
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_GLOB_EVNP_Bits"
	.byte	0x9
	.uahalf	0x110
	.uaword	0x1aee
	.uleb128 0x13
	.string	"_Ifx_EVADC_GLOB_ICLASS_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x113
	.uaword	0x1c72
	.uleb128 0x15
	.string	"STCS"
	.byte	0x9
	.uahalf	0x115
	.uaword	0x2ca
	.byte	0x4
	.byte	0x5
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF8
	.byte	0x9
	.uahalf	0x116
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"AIPS"
	.byte	0x9
	.uahalf	0x117
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CMS"
	.byte	0x9
	.uahalf	0x118
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"SESPS"
	.byte	0x9
	.uahalf	0x119
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF22
	.byte	0x9
	.uahalf	0x11a
	.uaword	0x2ca
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"STCE"
	.byte	0x9
	.uahalf	0x11b
	.uaword	0x2ca
	.byte	0x4
	.byte	0x5
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF23
	.byte	0x9
	.uahalf	0x11c
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"AIPE"
	.byte	0x9
	.uahalf	0x11d
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CME"
	.byte	0x9
	.uahalf	0x11e
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"SESPE"
	.byte	0x9
	.uahalf	0x11f
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF24
	.byte	0x9
	.uahalf	0x120
	.uaword	0x2ca
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_GLOB_ICLASS_Bits"
	.byte	0x9
	.uahalf	0x121
	.uaword	0x1b6c
	.uleb128 0x13
	.string	"_Ifx_EVADC_GLOB_RCR_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x124
	.uaword	0x1d28
	.uleb128 0x14
	.uaword	.LASF14
	.byte	0x9
	.uahalf	0x126
	.uaword	0x2ca
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"DRCTR"
	.byte	0x9
	.uahalf	0x127
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF21
	.byte	0x9
	.uahalf	0x128
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"WFR"
	.byte	0x9
	.uahalf	0x129
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF20
	.byte	0x9
	.uahalf	0x12a
	.uaword	0x2ca
	.byte	0x4
	.byte	0x6
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"SRGEN"
	.byte	0x9
	.uahalf	0x12b
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_GLOB_RCR_Bits"
	.byte	0x9
	.uahalf	0x12c
	.uaword	0x1c95
	.uleb128 0x13
	.string	"_Ifx_EVADC_GLOB_RES_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x12f
	.uaword	0x1dea
	.uleb128 0x14
	.uaword	.LASF25
	.byte	0x9
	.uahalf	0x131
	.uaword	0x2ca
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"GNR"
	.byte	0x9
	.uahalf	0x132
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CHNR"
	.byte	0x9
	.uahalf	0x133
	.uaword	0x2ca
	.byte	0x4
	.byte	0x5
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"EMUX"
	.byte	0x9
	.uahalf	0x134
	.uaword	0x2ca
	.byte	0x4
	.byte	0x3
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CRS"
	.byte	0x9
	.uahalf	0x135
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF26
	.byte	0x9
	.uahalf	0x136
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"VF"
	.byte	0x9
	.uahalf	0x137
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_GLOB_RES_Bits"
	.byte	0x9
	.uahalf	0x138
	.uaword	0x1d48
	.uleb128 0x13
	.string	"_Ifx_EVADC_GLOB_RESD_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x13b
	.uaword	0x1ead
	.uleb128 0x14
	.uaword	.LASF25
	.byte	0x9
	.uahalf	0x13d
	.uaword	0x2ca
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"GNR"
	.byte	0x9
	.uahalf	0x13e
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CHNR"
	.byte	0x9
	.uahalf	0x13f
	.uaword	0x2ca
	.byte	0x4
	.byte	0x5
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"EMUX"
	.byte	0x9
	.uahalf	0x140
	.uaword	0x2ca
	.byte	0x4
	.byte	0x3
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CRS"
	.byte	0x9
	.uahalf	0x141
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF26
	.byte	0x9
	.uahalf	0x142
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"VF"
	.byte	0x9
	.uahalf	0x143
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_GLOB_RESD_Bits"
	.byte	0x9
	.uahalf	0x144
	.uaword	0x1e0a
	.uleb128 0x13
	.string	"_Ifx_EVADC_GLOB_TE_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x147
	.uaword	0x1f28
	.uleb128 0x15
	.string	"TFEP"
	.byte	0x9
	.uahalf	0x149
	.uaword	0x2ca
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"TFES"
	.byte	0x9
	.uahalf	0x14a
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF1
	.byte	0x9
	.uahalf	0x14b
	.uaword	0x2ca
	.byte	0x4
	.byte	0x14
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_GLOB_TE_Bits"
	.byte	0x9
	.uahalf	0x14c
	.uaword	0x1ece
	.uleb128 0x13
	.string	"_Ifx_EVADC_GLOB_TF_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x14f
	.uaword	0x2048
	.uleb128 0x15
	.string	"CDCH"
	.byte	0x9
	.uahalf	0x151
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CDGR"
	.byte	0x9
	.uahalf	0x152
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CDEN"
	.byte	0x9
	.uahalf	0x153
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF27
	.byte	0x9
	.uahalf	0x154
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF22
	.byte	0x9
	.uahalf	0x155
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CDWC"
	.byte	0x9
	.uahalf	0x156
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"PDD"
	.byte	0x9
	.uahalf	0x157
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"MDPD"
	.byte	0x9
	.uahalf	0x158
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"MDPU"
	.byte	0x9
	.uahalf	0x159
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF4
	.byte	0x9
	.uahalf	0x15a
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"MDWC"
	.byte	0x9
	.uahalf	0x15b
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF16
	.byte	0x9
	.uahalf	0x15c
	.uaword	0x2ca
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_GLOB_TF_Bits"
	.byte	0x9
	.uahalf	0x15d
	.uaword	0x1f47
	.uleb128 0x13
	.string	"_Ifx_EVADC_G_ALIAS_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x160
	.uaword	0x20d7
	.uleb128 0x15
	.string	"ALIAS0"
	.byte	0x9
	.uahalf	0x162
	.uaword	0x2ca
	.byte	0x4
	.byte	0x5
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF8
	.byte	0x9
	.uahalf	0x163
	.uaword	0x2ca
	.byte	0x4
	.byte	0x3
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"ALIAS1"
	.byte	0x9
	.uahalf	0x164
	.uaword	0x2ca
	.byte	0x4
	.byte	0x5
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF28
	.byte	0x9
	.uahalf	0x165
	.uaword	0x2ca
	.byte	0x4
	.byte	0x13
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_G_ALIAS_Bits"
	.byte	0x9
	.uahalf	0x166
	.uaword	0x2067
	.uleb128 0x13
	.string	"_Ifx_EVADC_G_ANCFG_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x169
	.uaword	0x21f8
	.uleb128 0x15
	.string	"IPE"
	.byte	0x9
	.uahalf	0x16b
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"BE"
	.byte	0x9
	.uahalf	0x16c
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"RPE"
	.byte	0x9
	.uahalf	0x16d
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"RPC"
	.byte	0x9
	.uahalf	0x16e
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CALSTC"
	.byte	0x9
	.uahalf	0x16f
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"DPCAL"
	.byte	0x9
	.uahalf	0x170
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF29
	.byte	0x9
	.uahalf	0x171
	.uaword	0x2ca
	.byte	0x4
	.byte	0x9
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"ACSD"
	.byte	0x9
	.uahalf	0x172
	.uaword	0x2ca
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"SSE"
	.byte	0x9
	.uahalf	0x173
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"DIVA"
	.byte	0x9
	.uahalf	0x174
	.uaword	0x2ca
	.byte	0x4
	.byte	0x5
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"DCMSB"
	.byte	0x9
	.uahalf	0x175
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF30
	.byte	0x9
	.uahalf	0x176
	.uaword	0x2ca
	.byte	0x4
	.byte	0x6
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_G_ANCFG_Bits"
	.byte	0x9
	.uahalf	0x177
	.uaword	0x20f6
	.uleb128 0x13
	.string	"_Ifx_EVADC_G_ARBCFG_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x17a
	.uaword	0x230d
	.uleb128 0x15
	.string	"ANONC"
	.byte	0x9
	.uahalf	0x17c
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF5
	.byte	0x9
	.uahalf	0x17d
	.uaword	0x2ca
	.byte	0x4
	.byte	0xe
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"ANONS"
	.byte	0x9
	.uahalf	0x17e
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CSRC"
	.byte	0x9
	.uahalf	0x17f
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CHNR"
	.byte	0x9
	.uahalf	0x180
	.uaword	0x2ca
	.byte	0x4
	.byte	0x5
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"SYNRUN"
	.byte	0x9
	.uahalf	0x181
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF30
	.byte	0x9
	.uahalf	0x182
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CAL"
	.byte	0x9
	.uahalf	0x183
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF12
	.byte	0x9
	.uahalf	0x184
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"BUSY"
	.byte	0x9
	.uahalf	0x185
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"SAMPLE"
	.byte	0x9
	.uahalf	0x186
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_G_ARBCFG_Bits"
	.byte	0x9
	.uahalf	0x187
	.uaword	0x2217
	.uleb128 0x13
	.string	"_Ifx_EVADC_G_ARBPR_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x18a
	.uaword	0x245a
	.uleb128 0x15
	.string	"PRIO0"
	.byte	0x9
	.uahalf	0x18c
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF5
	.byte	0x9
	.uahalf	0x18d
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CSM0"
	.byte	0x9
	.uahalf	0x18e
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"PRIO1"
	.byte	0x9
	.uahalf	0x18f
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF31
	.byte	0x9
	.uahalf	0x190
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CSM1"
	.byte	0x9
	.uahalf	0x191
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"PRIO2"
	.byte	0x9
	.uahalf	0x192
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF15
	.byte	0x9
	.uahalf	0x193
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CSM2"
	.byte	0x9
	.uahalf	0x194
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF1
	.byte	0x9
	.uahalf	0x195
	.uaword	0x2ca
	.byte	0x4
	.byte	0xc
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"ASEN0"
	.byte	0x9
	.uahalf	0x196
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"ASEN1"
	.byte	0x9
	.uahalf	0x197
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"ASEN2"
	.byte	0x9
	.uahalf	0x198
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF24
	.byte	0x9
	.uahalf	0x199
	.uaword	0x2ca
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_G_ARBPR_Bits"
	.byte	0x9
	.uahalf	0x19a
	.uaword	0x232d
	.uleb128 0x13
	.string	"_Ifx_EVADC_G_BOUND_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x19d
	.uaword	0x24e3
	.uleb128 0x14
	.uaword	.LASF18
	.byte	0x9
	.uahalf	0x19f
	.uaword	0x2ca
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF1
	.byte	0x9
	.uahalf	0x1a0
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF19
	.byte	0x9
	.uahalf	0x1a1
	.uaword	0x2ca
	.byte	0x4
	.byte	0xc
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF2
	.byte	0x9
	.uahalf	0x1a2
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_G_BOUND_Bits"
	.byte	0x9
	.uahalf	0x1a3
	.uaword	0x2479
	.uleb128 0x13
	.string	"_Ifx_EVADC_G_CEFCLR_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x1a6
	.uaword	0x266d
	.uleb128 0x15
	.string	"CEV0"
	.byte	0x9
	.uahalf	0x1a8
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CEV1"
	.byte	0x9
	.uahalf	0x1a9
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CEV2"
	.byte	0x9
	.uahalf	0x1aa
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CEV3"
	.byte	0x9
	.uahalf	0x1ab
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CEV4"
	.byte	0x9
	.uahalf	0x1ac
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CEV5"
	.byte	0x9
	.uahalf	0x1ad
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CEV6"
	.byte	0x9
	.uahalf	0x1ae
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CEV7"
	.byte	0x9
	.uahalf	0x1af
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CEV8"
	.byte	0x9
	.uahalf	0x1b0
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CEV9"
	.byte	0x9
	.uahalf	0x1b1
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CEV10"
	.byte	0x9
	.uahalf	0x1b2
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CEV11"
	.byte	0x9
	.uahalf	0x1b3
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CEV12"
	.byte	0x9
	.uahalf	0x1b4
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CEV13"
	.byte	0x9
	.uahalf	0x1b5
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CEV14"
	.byte	0x9
	.uahalf	0x1b6
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CEV15"
	.byte	0x9
	.uahalf	0x1b7
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF17
	.byte	0x9
	.uahalf	0x1b8
	.uaword	0x2ca
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_G_CEFCLR_Bits"
	.byte	0x9
	.uahalf	0x1b9
	.uaword	0x2502
	.uleb128 0x13
	.string	"_Ifx_EVADC_G_CEFLAG_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x1bc
	.uaword	0x27f8
	.uleb128 0x15
	.string	"CEV0"
	.byte	0x9
	.uahalf	0x1be
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CEV1"
	.byte	0x9
	.uahalf	0x1bf
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CEV2"
	.byte	0x9
	.uahalf	0x1c0
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CEV3"
	.byte	0x9
	.uahalf	0x1c1
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CEV4"
	.byte	0x9
	.uahalf	0x1c2
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CEV5"
	.byte	0x9
	.uahalf	0x1c3
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CEV6"
	.byte	0x9
	.uahalf	0x1c4
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CEV7"
	.byte	0x9
	.uahalf	0x1c5
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CEV8"
	.byte	0x9
	.uahalf	0x1c6
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CEV9"
	.byte	0x9
	.uahalf	0x1c7
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CEV10"
	.byte	0x9
	.uahalf	0x1c8
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CEV11"
	.byte	0x9
	.uahalf	0x1c9
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CEV12"
	.byte	0x9
	.uahalf	0x1ca
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CEV13"
	.byte	0x9
	.uahalf	0x1cb
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CEV14"
	.byte	0x9
	.uahalf	0x1cc
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CEV15"
	.byte	0x9
	.uahalf	0x1cd
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF17
	.byte	0x9
	.uahalf	0x1ce
	.uaword	0x2ca
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_G_CEFLAG_Bits"
	.byte	0x9
	.uahalf	0x1cf
	.uaword	0x268d
	.uleb128 0x13
	.string	"_Ifx_EVADC_G_CEVNP0_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x1d2
	.uaword	0x28e3
	.uleb128 0x15
	.string	"CEV0NP"
	.byte	0x9
	.uahalf	0x1d4
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CEV1NP"
	.byte	0x9
	.uahalf	0x1d5
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CEV2NP"
	.byte	0x9
	.uahalf	0x1d6
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CEV3NP"
	.byte	0x9
	.uahalf	0x1d7
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CEV4NP"
	.byte	0x9
	.uahalf	0x1d8
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CEV5NP"
	.byte	0x9
	.uahalf	0x1d9
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CEV6NP"
	.byte	0x9
	.uahalf	0x1da
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CEV7NP"
	.byte	0x9
	.uahalf	0x1db
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_G_CEVNP0_Bits"
	.byte	0x9
	.uahalf	0x1dc
	.uaword	0x2818
	.uleb128 0x13
	.string	"_Ifx_EVADC_G_CEVNP1_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x1df
	.uaword	0x29d4
	.uleb128 0x15
	.string	"CEV8NP"
	.byte	0x9
	.uahalf	0x1e1
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CEV9NP"
	.byte	0x9
	.uahalf	0x1e2
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CEV10NP"
	.byte	0x9
	.uahalf	0x1e3
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CEV11NP"
	.byte	0x9
	.uahalf	0x1e4
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CEV12NP"
	.byte	0x9
	.uahalf	0x1e5
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CEV13NP"
	.byte	0x9
	.uahalf	0x1e6
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CEV14NP"
	.byte	0x9
	.uahalf	0x1e7
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CEV15NP"
	.byte	0x9
	.uahalf	0x1e8
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_G_CEVNP1_Bits"
	.byte	0x9
	.uahalf	0x1e9
	.uaword	0x2903
	.uleb128 0x13
	.string	"_Ifx_EVADC_G_CHCTR_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x1ec
	.uaword	0x2b44
	.uleb128 0x15
	.string	"ICLSEL"
	.byte	0x9
	.uahalf	0x1ee
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF5
	.byte	0x9
	.uahalf	0x1ef
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"BNDSELL"
	.byte	0x9
	.uahalf	0x1f0
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"BNDSELU"
	.byte	0x9
	.uahalf	0x1f1
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF13
	.byte	0x9
	.uahalf	0x1f2
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"SYNC"
	.byte	0x9
	.uahalf	0x1f3
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"REFSEL"
	.byte	0x9
	.uahalf	0x1f4
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"BNDSELX"
	.byte	0x9
	.uahalf	0x1f5
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"RESREG"
	.byte	0x9
	.uahalf	0x1f6
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"RESTGT"
	.byte	0x9
	.uahalf	0x1f7
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"RESPOS"
	.byte	0x9
	.uahalf	0x1f8
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF32
	.byte	0x9
	.uahalf	0x1f9
	.uaword	0x2ca
	.byte	0x4
	.byte	0x6
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"BWDCH"
	.byte	0x9
	.uahalf	0x1fa
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"BWDEN"
	.byte	0x9
	.uahalf	0x1fb
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF33
	.byte	0x9
	.uahalf	0x1fc
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_G_CHCTR_Bits"
	.byte	0x9
	.uahalf	0x1fd
	.uaword	0x29f4
	.uleb128 0x13
	.string	"_Ifx_EVADC_G_EMUXCS_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x200
	.uaword	0x2bad
	.uleb128 0x15
	.string	"EMUXCH"
	.byte	0x9
	.uahalf	0x202
	.uaword	0x2ca
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF17
	.byte	0x9
	.uahalf	0x203
	.uaword	0x2ca
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_G_EMUXCS_Bits"
	.byte	0x9
	.uahalf	0x204
	.uaword	0x2b63
	.uleb128 0x13
	.string	"_Ifx_EVADC_G_EMUXCTR_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x207
	.uaword	0x2ce4
	.uleb128 0x15
	.string	"EMUXSET"
	.byte	0x9
	.uahalf	0x209
	.uaword	0x2ca
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF34
	.byte	0x9
	.uahalf	0x20a
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"EMUXMODE"
	.byte	0x9
	.uahalf	0x20b
	.uaword	0x2ca
	.byte	0x4
	.byte	0x3
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF29
	.byte	0x9
	.uahalf	0x20c
	.uaword	0x2ca
	.byte	0x4
	.byte	0x5
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"EMXCOD"
	.byte	0x9
	.uahalf	0x20d
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"EMXST"
	.byte	0x9
	.uahalf	0x20e
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"EMXCSS"
	.byte	0x9
	.uahalf	0x20f
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"EMXWC"
	.byte	0x9
	.uahalf	0x210
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"EMUXACT"
	.byte	0x9
	.uahalf	0x211
	.uaword	0x2ca
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF4
	.byte	0x9
	.uahalf	0x212
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"EMUXCCB"
	.byte	0x9
	.uahalf	0x213
	.uaword	0x2ca
	.byte	0x4
	.byte	0x5
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF20
	.byte	0x9
	.uahalf	0x214
	.uaword	0x2ca
	.byte	0x4
	.byte	0x7
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_G_EMUXCTR_Bits"
	.byte	0x9
	.uahalf	0x215
	.uaword	0x2bcd
	.uleb128 0x13
	.string	"_Ifx_EVADC_G_ICLASS_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x218
	.uaword	0x2e08
	.uleb128 0x15
	.string	"STCS"
	.byte	0x9
	.uahalf	0x21a
	.uaword	0x2ca
	.byte	0x4
	.byte	0x5
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF8
	.byte	0x9
	.uahalf	0x21b
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"AIPS"
	.byte	0x9
	.uahalf	0x21c
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CMS"
	.byte	0x9
	.uahalf	0x21d
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"SESPS"
	.byte	0x9
	.uahalf	0x21e
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF22
	.byte	0x9
	.uahalf	0x21f
	.uaword	0x2ca
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"STCE"
	.byte	0x9
	.uahalf	0x220
	.uaword	0x2ca
	.byte	0x4
	.byte	0x5
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF23
	.byte	0x9
	.uahalf	0x221
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"AIPE"
	.byte	0x9
	.uahalf	0x222
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CME"
	.byte	0x9
	.uahalf	0x223
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"SESPE"
	.byte	0x9
	.uahalf	0x224
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF24
	.byte	0x9
	.uahalf	0x225
	.uaword	0x2ca
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_G_ICLASS_Bits"
	.byte	0x9
	.uahalf	0x226
	.uaword	0x2d05
	.uleb128 0x13
	.string	"_Ifx_EVADC_G_Q_Q0R_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x229
	.uaword	0x2f12
	.uleb128 0x14
	.uaword	.LASF35
	.byte	0x9
	.uahalf	0x22b
	.uaword	0x2ca
	.byte	0x4
	.byte	0x5
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"RF"
	.byte	0x9
	.uahalf	0x22c
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"ENSI"
	.byte	0x9
	.uahalf	0x22d
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"EXTR"
	.byte	0x9
	.uahalf	0x22e
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"V"
	.byte	0x9
	.uahalf	0x22f
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"PDD"
	.byte	0x9
	.uahalf	0x230
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"MDPD"
	.byte	0x9
	.uahalf	0x231
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"MDPU"
	.byte	0x9
	.uahalf	0x232
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CDEN"
	.byte	0x9
	.uahalf	0x233
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF27
	.byte	0x9
	.uahalf	0x234
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF36
	.byte	0x9
	.uahalf	0x235
	.uaword	0x2ca
	.byte	0x4
	.byte	0x11
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_G_Q_Q0R_Bits"
	.byte	0x9
	.uahalf	0x236
	.uaword	0x2e28
	.uleb128 0x13
	.string	"_Ifx_EVADC_G_Q_QBUR_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x239
	.uaword	0x301c
	.uleb128 0x14
	.uaword	.LASF35
	.byte	0x9
	.uahalf	0x23b
	.uaword	0x2ca
	.byte	0x4
	.byte	0x5
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"RF"
	.byte	0x9
	.uahalf	0x23c
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"ENSI"
	.byte	0x9
	.uahalf	0x23d
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"EXTR"
	.byte	0x9
	.uahalf	0x23e
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"V"
	.byte	0x9
	.uahalf	0x23f
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"PDD"
	.byte	0x9
	.uahalf	0x240
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"MDPD"
	.byte	0x9
	.uahalf	0x241
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"MDPU"
	.byte	0x9
	.uahalf	0x242
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CDEN"
	.byte	0x9
	.uahalf	0x243
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF27
	.byte	0x9
	.uahalf	0x244
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF36
	.byte	0x9
	.uahalf	0x245
	.uaword	0x2ca
	.byte	0x4
	.byte	0x11
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_G_Q_QBUR_Bits"
	.byte	0x9
	.uahalf	0x246
	.uaword	0x2f31
	.uleb128 0x13
	.string	"_Ifx_EVADC_G_Q_QCTRL_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x249
	.uaword	0x3185
	.uleb128 0x15
	.string	"SRCRESREG"
	.byte	0x9
	.uahalf	0x24b
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF3
	.byte	0x9
	.uahalf	0x24c
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"TRSEL"
	.byte	0x9
	.uahalf	0x24d
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"XTSEL"
	.byte	0x9
	.uahalf	0x24e
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"XTLVL"
	.byte	0x9
	.uahalf	0x24f
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"XTMODE"
	.byte	0x9
	.uahalf	0x250
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"XTWC"
	.byte	0x9
	.uahalf	0x251
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"GTSEL"
	.byte	0x9
	.uahalf	0x252
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"GTLVL"
	.byte	0x9
	.uahalf	0x253
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF23
	.byte	0x9
	.uahalf	0x254
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"GTWC"
	.byte	0x9
	.uahalf	0x255
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF16
	.byte	0x9
	.uahalf	0x256
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"TMEN"
	.byte	0x9
	.uahalf	0x257
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF12
	.byte	0x9
	.uahalf	0x258
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"TMWC"
	.byte	0x9
	.uahalf	0x259
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_G_Q_QCTRL_Bits"
	.byte	0x9
	.uahalf	0x25a
	.uaword	0x303c
	.uleb128 0x13
	.string	"_Ifx_EVADC_G_Q_QINR_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x25d
	.uaword	0x3293
	.uleb128 0x14
	.uaword	.LASF35
	.byte	0x9
	.uahalf	0x25f
	.uaword	0x2ca
	.byte	0x4
	.byte	0x5
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"RF"
	.byte	0x9
	.uahalf	0x260
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"ENSI"
	.byte	0x9
	.uahalf	0x261
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"EXTR"
	.byte	0x9
	.uahalf	0x262
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF6
	.byte	0x9
	.uahalf	0x263
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"PDD"
	.byte	0x9
	.uahalf	0x264
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"MDPD"
	.byte	0x9
	.uahalf	0x265
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"MDPU"
	.byte	0x9
	.uahalf	0x266
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CDEN"
	.byte	0x9
	.uahalf	0x267
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF27
	.byte	0x9
	.uahalf	0x268
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF36
	.byte	0x9
	.uahalf	0x269
	.uaword	0x2ca
	.byte	0x4
	.byte	0x11
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_G_Q_QINR_Bits"
	.byte	0x9
	.uahalf	0x26a
	.uaword	0x31a6
	.uleb128 0x13
	.string	"_Ifx_EVADC_G_Q_QMR_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x26d
	.uaword	0x3392
	.uleb128 0x15
	.string	"ENGT"
	.byte	0x9
	.uahalf	0x26f
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"ENTR"
	.byte	0x9
	.uahalf	0x270
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF34
	.byte	0x9
	.uahalf	0x271
	.uaword	0x2ca
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CLRV"
	.byte	0x9
	.uahalf	0x272
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"TREV"
	.byte	0x9
	.uahalf	0x273
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"FLUSH"
	.byte	0x9
	.uahalf	0x274
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CEV"
	.byte	0x9
	.uahalf	0x275
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF1
	.byte	0x9
	.uahalf	0x276
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"RPTDIS"
	.byte	0x9
	.uahalf	0x277
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF37
	.byte	0x9
	.uahalf	0x278
	.uaword	0x2ca
	.byte	0x4
	.byte	0xf
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_G_Q_QMR_Bits"
	.byte	0x9
	.uahalf	0x279
	.uaword	0x32b3
	.uleb128 0x13
	.string	"_Ifx_EVADC_G_Q_QSR_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x27c
	.uaword	0x3455
	.uleb128 0x15
	.string	"FILL"
	.byte	0x9
	.uahalf	0x27e
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF3
	.byte	0x9
	.uahalf	0x27f
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"EMPTY"
	.byte	0x9
	.uahalf	0x280
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF31
	.byte	0x9
	.uahalf	0x281
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"REQGT"
	.byte	0x9
	.uahalf	0x282
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"EV"
	.byte	0x9
	.uahalf	0x283
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF9
	.byte	0x9
	.uahalf	0x284
	.uaword	0x2ca
	.byte	0x4
	.byte	0x17
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_G_Q_QSR_Bits"
	.byte	0x9
	.uahalf	0x285
	.uaword	0x33b1
	.uleb128 0x13
	.string	"_Ifx_EVADC_G_Q_REQTM_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x288
	.uaword	0x3528
	.uleb128 0x15
	.string	"SEQMOD"
	.byte	0x9
	.uahalf	0x28a
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF5
	.byte	0x9
	.uahalf	0x28b
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"SEQTIMSET"
	.byte	0x9
	.uahalf	0x28c
	.uaword	0x2ca
	.byte	0x4
	.byte	0xa
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"REQTS"
	.byte	0x9
	.uahalf	0x28d
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"ENTR"
	.byte	0x9
	.uahalf	0x28e
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF11
	.byte	0x9
	.uahalf	0x28f
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"SEQTIMOFF"
	.byte	0x9
	.uahalf	0x290
	.uaword	0x2ca
	.byte	0x4
	.byte	0xa
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_G_Q_REQTM_Bits"
	.byte	0x9
	.uahalf	0x291
	.uaword	0x3474
	.uleb128 0x13
	.string	"_Ifx_EVADC_G_Q_REQTS_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x294
	.uaword	0x35a8
	.uleb128 0x14
	.uaword	.LASF14
	.byte	0x9
	.uahalf	0x296
	.uaword	0x2ca
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"SEQTIMER"
	.byte	0x9
	.uahalf	0x297
	.uaword	0x2ca
	.byte	0x4
	.byte	0xa
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF17
	.byte	0x9
	.uahalf	0x298
	.uaword	0x2ca
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_G_Q_REQTS_Bits"
	.byte	0x9
	.uahalf	0x299
	.uaword	0x3549
	.uleb128 0x13
	.string	"_Ifx_EVADC_G_RCR_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x29c
	.uaword	0x367d
	.uleb128 0x14
	.uaword	.LASF14
	.byte	0x9
	.uahalf	0x29e
	.uaword	0x2ca
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"DRCTR"
	.byte	0x9
	.uahalf	0x29f
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"DMM"
	.byte	0x9
	.uahalf	0x2a0
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF32
	.byte	0x9
	.uahalf	0x2a1
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"WFR"
	.byte	0x9
	.uahalf	0x2a2
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"FEN"
	.byte	0x9
	.uahalf	0x2a3
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF24
	.byte	0x9
	.uahalf	0x2a4
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"SRGEN"
	.byte	0x9
	.uahalf	0x2a5
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_G_RCR_Bits"
	.byte	0x9
	.uahalf	0x2a6
	.uaword	0x35c9
	.uleb128 0x13
	.string	"_Ifx_EVADC_G_REFCLR_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x2a9
	.uaword	0x3805
	.uleb128 0x15
	.string	"REV0"
	.byte	0x9
	.uahalf	0x2ab
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"REV1"
	.byte	0x9
	.uahalf	0x2ac
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"REV2"
	.byte	0x9
	.uahalf	0x2ad
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"REV3"
	.byte	0x9
	.uahalf	0x2ae
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"REV4"
	.byte	0x9
	.uahalf	0x2af
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"REV5"
	.byte	0x9
	.uahalf	0x2b0
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"REV6"
	.byte	0x9
	.uahalf	0x2b1
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"REV7"
	.byte	0x9
	.uahalf	0x2b2
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"REV8"
	.byte	0x9
	.uahalf	0x2b3
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"REV9"
	.byte	0x9
	.uahalf	0x2b4
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"REV10"
	.byte	0x9
	.uahalf	0x2b5
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"REV11"
	.byte	0x9
	.uahalf	0x2b6
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"REV12"
	.byte	0x9
	.uahalf	0x2b7
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"REV13"
	.byte	0x9
	.uahalf	0x2b8
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"REV14"
	.byte	0x9
	.uahalf	0x2b9
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"REV15"
	.byte	0x9
	.uahalf	0x2ba
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF17
	.byte	0x9
	.uahalf	0x2bb
	.uaword	0x2ca
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_G_REFCLR_Bits"
	.byte	0x9
	.uahalf	0x2bc
	.uaword	0x369a
	.uleb128 0x13
	.string	"_Ifx_EVADC_G_REFLAG_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x2bf
	.uaword	0x3990
	.uleb128 0x15
	.string	"REV0"
	.byte	0x9
	.uahalf	0x2c1
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"REV1"
	.byte	0x9
	.uahalf	0x2c2
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"REV2"
	.byte	0x9
	.uahalf	0x2c3
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"REV3"
	.byte	0x9
	.uahalf	0x2c4
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"REV4"
	.byte	0x9
	.uahalf	0x2c5
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"REV5"
	.byte	0x9
	.uahalf	0x2c6
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"REV6"
	.byte	0x9
	.uahalf	0x2c7
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"REV7"
	.byte	0x9
	.uahalf	0x2c8
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"REV8"
	.byte	0x9
	.uahalf	0x2c9
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"REV9"
	.byte	0x9
	.uahalf	0x2ca
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"REV10"
	.byte	0x9
	.uahalf	0x2cb
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"REV11"
	.byte	0x9
	.uahalf	0x2cc
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"REV12"
	.byte	0x9
	.uahalf	0x2cd
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"REV13"
	.byte	0x9
	.uahalf	0x2ce
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"REV14"
	.byte	0x9
	.uahalf	0x2cf
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"REV15"
	.byte	0x9
	.uahalf	0x2d0
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF17
	.byte	0x9
	.uahalf	0x2d1
	.uaword	0x2ca
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_G_REFLAG_Bits"
	.byte	0x9
	.uahalf	0x2d2
	.uaword	0x3825
	.uleb128 0x13
	.string	"_Ifx_EVADC_G_RES_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x2d5
	.uaword	0x3a4f
	.uleb128 0x14
	.uaword	.LASF25
	.byte	0x9
	.uahalf	0x2d7
	.uaword	0x2ca
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"DRC"
	.byte	0x9
	.uahalf	0x2d8
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CHNR"
	.byte	0x9
	.uahalf	0x2d9
	.uaword	0x2ca
	.byte	0x4
	.byte	0x5
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"EMUX"
	.byte	0x9
	.uahalf	0x2da
	.uaword	0x2ca
	.byte	0x4
	.byte	0x3
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CRS"
	.byte	0x9
	.uahalf	0x2db
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF26
	.byte	0x9
	.uahalf	0x2dc
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"VF"
	.byte	0x9
	.uahalf	0x2dd
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_G_RES_Bits"
	.byte	0x9
	.uahalf	0x2de
	.uaword	0x39b0
	.uleb128 0x13
	.string	"_Ifx_EVADC_G_RESD_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x2e1
	.uaword	0x3b0c
	.uleb128 0x14
	.uaword	.LASF25
	.byte	0x9
	.uahalf	0x2e3
	.uaword	0x2ca
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"DRC"
	.byte	0x9
	.uahalf	0x2e4
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CHNR"
	.byte	0x9
	.uahalf	0x2e5
	.uaword	0x2ca
	.byte	0x4
	.byte	0x5
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"EMUX"
	.byte	0x9
	.uahalf	0x2e6
	.uaword	0x2ca
	.byte	0x4
	.byte	0x3
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CRS"
	.byte	0x9
	.uahalf	0x2e7
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF26
	.byte	0x9
	.uahalf	0x2e8
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"VF"
	.byte	0x9
	.uahalf	0x2e9
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_G_RESD_Bits"
	.byte	0x9
	.uahalf	0x2ea
	.uaword	0x3a6c
	.uleb128 0x13
	.string	"_Ifx_EVADC_G_REVNP0_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x2ed
	.uaword	0x3bf5
	.uleb128 0x15
	.string	"REV0NP"
	.byte	0x9
	.uahalf	0x2ef
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"REV1NP"
	.byte	0x9
	.uahalf	0x2f0
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"REV2NP"
	.byte	0x9
	.uahalf	0x2f1
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"REV3NP"
	.byte	0x9
	.uahalf	0x2f2
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"REV4NP"
	.byte	0x9
	.uahalf	0x2f3
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"REV5NP"
	.byte	0x9
	.uahalf	0x2f4
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"REV6NP"
	.byte	0x9
	.uahalf	0x2f5
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"REV7NP"
	.byte	0x9
	.uahalf	0x2f6
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_G_REVNP0_Bits"
	.byte	0x9
	.uahalf	0x2f7
	.uaword	0x3b2a
	.uleb128 0x13
	.string	"_Ifx_EVADC_G_REVNP1_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x2fa
	.uaword	0x3ce6
	.uleb128 0x15
	.string	"REV8NP"
	.byte	0x9
	.uahalf	0x2fc
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"REV9NP"
	.byte	0x9
	.uahalf	0x2fd
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"REV10NP"
	.byte	0x9
	.uahalf	0x2fe
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"REV11NP"
	.byte	0x9
	.uahalf	0x2ff
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"REV12NP"
	.byte	0x9
	.uahalf	0x300
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"REV13NP"
	.byte	0x9
	.uahalf	0x301
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"REV14NP"
	.byte	0x9
	.uahalf	0x302
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"REV15NP"
	.byte	0x9
	.uahalf	0x303
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_G_REVNP1_Bits"
	.byte	0x9
	.uahalf	0x304
	.uaword	0x3c15
	.uleb128 0x13
	.string	"_Ifx_EVADC_G_SEFCLR_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x307
	.uaword	0x3d74
	.uleb128 0x15
	.string	"SEV0"
	.byte	0x9
	.uahalf	0x309
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"SEV1"
	.byte	0x9
	.uahalf	0x30a
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"SEV2"
	.byte	0x9
	.uahalf	0x30b
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF34
	.byte	0x9
	.uahalf	0x30c
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1d
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_G_SEFCLR_Bits"
	.byte	0x9
	.uahalf	0x30d
	.uaword	0x3d06
	.uleb128 0x13
	.string	"_Ifx_EVADC_G_SEFLAG_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x310
	.uaword	0x3e02
	.uleb128 0x15
	.string	"SEV0"
	.byte	0x9
	.uahalf	0x312
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"SEV1"
	.byte	0x9
	.uahalf	0x313
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"SEV2"
	.byte	0x9
	.uahalf	0x314
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF34
	.byte	0x9
	.uahalf	0x315
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1d
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_G_SEFLAG_Bits"
	.byte	0x9
	.uahalf	0x316
	.uaword	0x3d94
	.uleb128 0x13
	.string	"_Ifx_EVADC_G_SEVNP_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x319
	.uaword	0x3e95
	.uleb128 0x15
	.string	"SEV0NP"
	.byte	0x9
	.uahalf	0x31b
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"SEV1NP"
	.byte	0x9
	.uahalf	0x31c
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"SEV2NP"
	.byte	0x9
	.uahalf	0x31d
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF1
	.byte	0x9
	.uahalf	0x31e
	.uaword	0x2ca
	.byte	0x4
	.byte	0x14
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_G_SEVNP_Bits"
	.byte	0x9
	.uahalf	0x31f
	.uaword	0x3e22
	.uleb128 0x13
	.string	"_Ifx_EVADC_G_SRACT_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x322
	.uaword	0x3f9a
	.uleb128 0x15
	.string	"AGSR0"
	.byte	0x9
	.uahalf	0x324
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"AGSR1"
	.byte	0x9
	.uahalf	0x325
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"AGSR2"
	.byte	0x9
	.uahalf	0x326
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"AGSR3"
	.byte	0x9
	.uahalf	0x327
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF3
	.byte	0x9
	.uahalf	0x328
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"ASSR0"
	.byte	0x9
	.uahalf	0x329
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"ASSR1"
	.byte	0x9
	.uahalf	0x32a
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"ASSR2"
	.byte	0x9
	.uahalf	0x32b
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"ASSR3"
	.byte	0x9
	.uahalf	0x32c
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF1
	.byte	0x9
	.uahalf	0x32d
	.uaword	0x2ca
	.byte	0x4
	.byte	0x14
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_G_SRACT_Bits"
	.byte	0x9
	.uahalf	0x32e
	.uaword	0x3eb4
	.uleb128 0x13
	.string	"_Ifx_EVADC_G_SYNCTR_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x331
	.uaword	0x4053
	.uleb128 0x15
	.string	"STSEL"
	.byte	0x9
	.uahalf	0x333
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF5
	.byte	0x9
	.uahalf	0x334
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"EVALR1"
	.byte	0x9
	.uahalf	0x335
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"EVALR2"
	.byte	0x9
	.uahalf	0x336
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"EVALR3"
	.byte	0x9
	.uahalf	0x337
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF29
	.byte	0x9
	.uahalf	0x338
	.uaword	0x2ca
	.byte	0x4
	.byte	0x19
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_G_SYNCTR_Bits"
	.byte	0x9
	.uahalf	0x339
	.uaword	0x3fb9
	.uleb128 0x13
	.string	"_Ifx_EVADC_G_TRCTR_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x33c
	.uaword	0x4162
	.uleb128 0x15
	.string	"TSC"
	.byte	0x9
	.uahalf	0x33e
	.uaword	0x2ca
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF31
	.byte	0x9
	.uahalf	0x33f
	.uaword	0x2ca
	.byte	0x4
	.byte	0x8
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"QACT"
	.byte	0x9
	.uahalf	0x340
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"OV"
	.byte	0x9
	.uahalf	0x341
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"TSCSET"
	.byte	0x9
	.uahalf	0x342
	.uaword	0x2ca
	.byte	0x4
	.byte	0x6
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF32
	.byte	0x9
	.uahalf	0x343
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"ITSEL"
	.byte	0x9
	.uahalf	0x344
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF30
	.byte	0x9
	.uahalf	0x345
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"SRDIS"
	.byte	0x9
	.uahalf	0x346
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF12
	.byte	0x9
	.uahalf	0x347
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"COV"
	.byte	0x9
	.uahalf	0x348
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_G_TRCTR_Bits"
	.byte	0x9
	.uahalf	0x349
	.uaword	0x4073
	.uleb128 0x13
	.string	"_Ifx_EVADC_G_VFR_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x34c
	.uaword	0x42d9
	.uleb128 0x15
	.string	"VF0"
	.byte	0x9
	.uahalf	0x34e
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"VF1"
	.byte	0x9
	.uahalf	0x34f
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"VF2"
	.byte	0x9
	.uahalf	0x350
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"VF3"
	.byte	0x9
	.uahalf	0x351
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"VF4"
	.byte	0x9
	.uahalf	0x352
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"VF5"
	.byte	0x9
	.uahalf	0x353
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"VF6"
	.byte	0x9
	.uahalf	0x354
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"VF7"
	.byte	0x9
	.uahalf	0x355
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"VF8"
	.byte	0x9
	.uahalf	0x356
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"VF9"
	.byte	0x9
	.uahalf	0x357
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"VF10"
	.byte	0x9
	.uahalf	0x358
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"VF11"
	.byte	0x9
	.uahalf	0x359
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"VF12"
	.byte	0x9
	.uahalf	0x35a
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"VF13"
	.byte	0x9
	.uahalf	0x35b
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"VF14"
	.byte	0x9
	.uahalf	0x35c
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"VF15"
	.byte	0x9
	.uahalf	0x35d
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF17
	.byte	0x9
	.uahalf	0x35e
	.uaword	0x2ca
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_G_VFR_Bits"
	.byte	0x9
	.uahalf	0x35f
	.uaword	0x4181
	.uleb128 0x13
	.string	"_Ifx_EVADC_ID_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x362
	.uaword	0x4359
	.uleb128 0x15
	.string	"MOD_REV"
	.byte	0x9
	.uahalf	0x364
	.uaword	0x2ca
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"MOD_TYPE"
	.byte	0x9
	.uahalf	0x365
	.uaword	0x2ca
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"MOD_NUMBER"
	.byte	0x9
	.uahalf	0x366
	.uaword	0x2ca
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_ID_Bits"
	.byte	0x9
	.uahalf	0x367
	.uaword	0x42f6
	.uleb128 0x13
	.string	"_Ifx_EVADC_KRST0_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x36a
	.uaword	0x43c9
	.uleb128 0x15
	.string	"RST"
	.byte	0x9
	.uahalf	0x36c
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF38
	.byte	0x9
	.uahalf	0x36d
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF5
	.byte	0x9
	.uahalf	0x36e
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_KRST0_Bits"
	.byte	0x9
	.uahalf	0x36f
	.uaword	0x4373
	.uleb128 0x13
	.string	"_Ifx_EVADC_KRST1_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x372
	.uaword	0x442a
	.uleb128 0x15
	.string	"RST"
	.byte	0x9
	.uahalf	0x374
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF7
	.byte	0x9
	.uahalf	0x375
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_KRST1_Bits"
	.byte	0x9
	.uahalf	0x376
	.uaword	0x43e6
	.uleb128 0x13
	.string	"_Ifx_EVADC_KRSTCLR_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x379
	.uaword	0x448d
	.uleb128 0x15
	.string	"CLR"
	.byte	0x9
	.uahalf	0x37b
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF7
	.byte	0x9
	.uahalf	0x37c
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_KRSTCLR_Bits"
	.byte	0x9
	.uahalf	0x37d
	.uaword	0x4447
	.uleb128 0x13
	.string	"_Ifx_EVADC_OCS_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x380
	.uaword	0x4560
	.uleb128 0x15
	.string	"TGS"
	.byte	0x9
	.uahalf	0x382
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"TGB"
	.byte	0x9
	.uahalf	0x383
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"TG_P"
	.byte	0x9
	.uahalf	0x384
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF3
	.byte	0x9
	.uahalf	0x385
	.uaword	0x2ca
	.byte	0x4
	.byte	0x14
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"SUS"
	.byte	0x9
	.uahalf	0x386
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"SUS_P"
	.byte	0x9
	.uahalf	0x387
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"SUSSTA"
	.byte	0x9
	.uahalf	0x388
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF26
	.byte	0x9
	.uahalf	0x389
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_OCS_Bits"
	.byte	0x9
	.uahalf	0x38a
	.uaword	0x44ac
	.uleb128 0x16
	.byte	0x4
	.byte	0x9
	.uahalf	0x392
	.uaword	0x45a3
	.uleb128 0x17
	.string	"U"
	.byte	0x9
	.uahalf	0x394
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0x9
	.uahalf	0x395
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0x9
	.uahalf	0x396
	.uaword	0x10b2
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_ACCEN0"
	.byte	0x9
	.uahalf	0x397
	.uaword	0x457b
	.uleb128 0x16
	.byte	0x4
	.byte	0x9
	.uahalf	0x39a
	.uaword	0x45e4
	.uleb128 0x17
	.string	"U"
	.byte	0x9
	.uahalf	0x39c
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0x9
	.uahalf	0x39d
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0x9
	.uahalf	0x39e
	.uaword	0x115b
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_ACCPROT0"
	.byte	0x9
	.uahalf	0x39f
	.uaword	0x45bc
	.uleb128 0x16
	.byte	0x4
	.byte	0x9
	.uahalf	0x3a2
	.uaword	0x4627
	.uleb128 0x17
	.string	"U"
	.byte	0x9
	.uahalf	0x3a4
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0x9
	.uahalf	0x3a5
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0x9
	.uahalf	0x3a6
	.uaword	0x1206
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_ACCPROT1"
	.byte	0x9
	.uahalf	0x3a7
	.uaword	0x45ff
	.uleb128 0x16
	.byte	0x4
	.byte	0x9
	.uahalf	0x3aa
	.uaword	0x466a
	.uleb128 0x17
	.string	"U"
	.byte	0x9
	.uahalf	0x3ac
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0x9
	.uahalf	0x3ad
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0x9
	.uahalf	0x3ae
	.uaword	0x12b0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_ACCPROT2"
	.byte	0x9
	.uahalf	0x3af
	.uaword	0x4642
	.uleb128 0x16
	.byte	0x4
	.byte	0x9
	.uahalf	0x3b2
	.uaword	0x46ad
	.uleb128 0x17
	.string	"U"
	.byte	0x9
	.uahalf	0x3b4
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0x9
	.uahalf	0x3b5
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0x9
	.uahalf	0x3b6
	.uaword	0x1344
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_CLC"
	.byte	0x9
	.uahalf	0x3b7
	.uaword	0x4685
	.uleb128 0x16
	.byte	0x4
	.byte	0x9
	.uahalf	0x3ba
	.uaword	0x46eb
	.uleb128 0x17
	.string	"U"
	.byte	0x9
	.uahalf	0x3bc
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0x9
	.uahalf	0x3bd
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0x9
	.uahalf	0x3be
	.uaword	0x13bc
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_EMUXSEL"
	.byte	0x9
	.uahalf	0x3bf
	.uaword	0x46c3
	.uleb128 0x16
	.byte	0x4
	.byte	0x9
	.uahalf	0x3c2
	.uaword	0x472d
	.uleb128 0x17
	.string	"U"
	.byte	0x9
	.uahalf	0x3c4
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0x9
	.uahalf	0x3c5
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0x9
	.uahalf	0x3c6
	.uaword	0x14fc
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_FC_FCBFL"
	.byte	0x9
	.uahalf	0x3c7
	.uaword	0x4705
	.uleb128 0x16
	.byte	0x4
	.byte	0x9
	.uahalf	0x3ca
	.uaword	0x4770
	.uleb128 0x17
	.string	"U"
	.byte	0x9
	.uahalf	0x3cc
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0x9
	.uahalf	0x3cd
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0x9
	.uahalf	0x3ce
	.uaword	0x162f
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_FC_FCCTRL"
	.byte	0x9
	.uahalf	0x3cf
	.uaword	0x4748
	.uleb128 0x16
	.byte	0x4
	.byte	0x9
	.uahalf	0x3d2
	.uaword	0x47b4
	.uleb128 0x17
	.string	"U"
	.byte	0x9
	.uahalf	0x3d4
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0x9
	.uahalf	0x3d5
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0x9
	.uahalf	0x3d6
	.uaword	0x16d4
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_FC_FCHYST"
	.byte	0x9
	.uahalf	0x3d7
	.uaword	0x478c
	.uleb128 0x16
	.byte	0x4
	.byte	0x9
	.uahalf	0x3da
	.uaword	0x47f8
	.uleb128 0x17
	.string	"U"
	.byte	0x9
	.uahalf	0x3dc
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0x9
	.uahalf	0x3dd
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0x9
	.uahalf	0x3de
	.uaword	0x17e3
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_FC_FCM"
	.byte	0x9
	.uahalf	0x3df
	.uaword	0x47d0
	.uleb128 0x16
	.byte	0x4
	.byte	0x9
	.uahalf	0x3e2
	.uaword	0x4839
	.uleb128 0x17
	.string	"U"
	.byte	0x9
	.uahalf	0x3e4
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0x9
	.uahalf	0x3e5
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0x9
	.uahalf	0x3e6
	.uaword	0x1883
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_FC_FCRAMP0"
	.byte	0x9
	.uahalf	0x3e7
	.uaword	0x4811
	.uleb128 0x16
	.byte	0x4
	.byte	0x9
	.uahalf	0x3ea
	.uaword	0x487e
	.uleb128 0x17
	.string	"U"
	.byte	0x9
	.uahalf	0x3ec
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0x9
	.uahalf	0x3ed
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0x9
	.uahalf	0x3ee
	.uaword	0x18ef
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_FC_FCRAMP1"
	.byte	0x9
	.uahalf	0x3ef
	.uaword	0x4856
	.uleb128 0x16
	.byte	0x4
	.byte	0x9
	.uahalf	0x3f2
	.uaword	0x48c3
	.uleb128 0x17
	.string	"U"
	.byte	0x9
	.uahalf	0x3f4
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0x9
	.uahalf	0x3f5
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0x9
	.uahalf	0x3f6
	.uaword	0x199d
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_GLOBCFG"
	.byte	0x9
	.uahalf	0x3f7
	.uaword	0x489b
	.uleb128 0x16
	.byte	0x4
	.byte	0x9
	.uahalf	0x3fa
	.uaword	0x4905
	.uleb128 0x17
	.string	"U"
	.byte	0x9
	.uahalf	0x3fc
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0x9
	.uahalf	0x3fd
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0x9
	.uahalf	0x3fe
	.uaword	0x1a23
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_GLOB_BOUND"
	.byte	0x9
	.uahalf	0x3ff
	.uaword	0x48dd
	.uleb128 0x16
	.byte	0x4
	.byte	0x9
	.uahalf	0x402
	.uaword	0x494a
	.uleb128 0x17
	.string	"U"
	.byte	0x9
	.uahalf	0x404
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0x9
	.uahalf	0x405
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0x9
	.uahalf	0x406
	.uaword	0x1acc
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_GLOB_EFLAG"
	.byte	0x9
	.uahalf	0x407
	.uaword	0x4922
	.uleb128 0x16
	.byte	0x4
	.byte	0x9
	.uahalf	0x40a
	.uaword	0x498f
	.uleb128 0x17
	.string	"U"
	.byte	0x9
	.uahalf	0x40c
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0x9
	.uahalf	0x40d
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0x9
	.uahalf	0x40e
	.uaword	0x1b4b
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_GLOB_EVNP"
	.byte	0x9
	.uahalf	0x40f
	.uaword	0x4967
	.uleb128 0x16
	.byte	0x4
	.byte	0x9
	.uahalf	0x412
	.uaword	0x49d3
	.uleb128 0x17
	.string	"U"
	.byte	0x9
	.uahalf	0x414
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0x9
	.uahalf	0x415
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0x9
	.uahalf	0x416
	.uaword	0x1c72
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_GLOB_ICLASS"
	.byte	0x9
	.uahalf	0x417
	.uaword	0x49ab
	.uleb128 0x16
	.byte	0x4
	.byte	0x9
	.uahalf	0x41a
	.uaword	0x4a19
	.uleb128 0x17
	.string	"U"
	.byte	0x9
	.uahalf	0x41c
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0x9
	.uahalf	0x41d
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0x9
	.uahalf	0x41e
	.uaword	0x1d28
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_GLOB_RCR"
	.byte	0x9
	.uahalf	0x41f
	.uaword	0x49f1
	.uleb128 0x16
	.byte	0x4
	.byte	0x9
	.uahalf	0x422
	.uaword	0x4a5c
	.uleb128 0x17
	.string	"U"
	.byte	0x9
	.uahalf	0x424
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0x9
	.uahalf	0x425
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0x9
	.uahalf	0x426
	.uaword	0x1dea
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_GLOB_RES"
	.byte	0x9
	.uahalf	0x427
	.uaword	0x4a34
	.uleb128 0x16
	.byte	0x4
	.byte	0x9
	.uahalf	0x42a
	.uaword	0x4a9f
	.uleb128 0x17
	.string	"U"
	.byte	0x9
	.uahalf	0x42c
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0x9
	.uahalf	0x42d
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0x9
	.uahalf	0x42e
	.uaword	0x1ead
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_GLOB_RESD"
	.byte	0x9
	.uahalf	0x42f
	.uaword	0x4a77
	.uleb128 0x16
	.byte	0x4
	.byte	0x9
	.uahalf	0x432
	.uaword	0x4ae3
	.uleb128 0x17
	.string	"U"
	.byte	0x9
	.uahalf	0x434
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0x9
	.uahalf	0x435
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0x9
	.uahalf	0x436
	.uaword	0x1f28
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_GLOB_TE"
	.byte	0x9
	.uahalf	0x437
	.uaword	0x4abb
	.uleb128 0x16
	.byte	0x4
	.byte	0x9
	.uahalf	0x43a
	.uaword	0x4b25
	.uleb128 0x17
	.string	"U"
	.byte	0x9
	.uahalf	0x43c
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0x9
	.uahalf	0x43d
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0x9
	.uahalf	0x43e
	.uaword	0x2048
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_GLOB_TF"
	.byte	0x9
	.uahalf	0x43f
	.uaword	0x4afd
	.uleb128 0x16
	.byte	0x4
	.byte	0x9
	.uahalf	0x442
	.uaword	0x4b67
	.uleb128 0x17
	.string	"U"
	.byte	0x9
	.uahalf	0x444
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0x9
	.uahalf	0x445
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0x9
	.uahalf	0x446
	.uaword	0x20d7
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_G_ALIAS"
	.byte	0x9
	.uahalf	0x447
	.uaword	0x4b3f
	.uleb128 0x16
	.byte	0x4
	.byte	0x9
	.uahalf	0x44a
	.uaword	0x4ba9
	.uleb128 0x17
	.string	"U"
	.byte	0x9
	.uahalf	0x44c
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0x9
	.uahalf	0x44d
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0x9
	.uahalf	0x44e
	.uaword	0x21f8
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_G_ANCFG"
	.byte	0x9
	.uahalf	0x44f
	.uaword	0x4b81
	.uleb128 0x16
	.byte	0x4
	.byte	0x9
	.uahalf	0x452
	.uaword	0x4beb
	.uleb128 0x17
	.string	"U"
	.byte	0x9
	.uahalf	0x454
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0x9
	.uahalf	0x455
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0x9
	.uahalf	0x456
	.uaword	0x230d
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_G_ARBCFG"
	.byte	0x9
	.uahalf	0x457
	.uaword	0x4bc3
	.uleb128 0x16
	.byte	0x4
	.byte	0x9
	.uahalf	0x45a
	.uaword	0x4c2e
	.uleb128 0x17
	.string	"U"
	.byte	0x9
	.uahalf	0x45c
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0x9
	.uahalf	0x45d
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0x9
	.uahalf	0x45e
	.uaword	0x245a
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_G_ARBPR"
	.byte	0x9
	.uahalf	0x45f
	.uaword	0x4c06
	.uleb128 0x16
	.byte	0x4
	.byte	0x9
	.uahalf	0x462
	.uaword	0x4c70
	.uleb128 0x17
	.string	"U"
	.byte	0x9
	.uahalf	0x464
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0x9
	.uahalf	0x465
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0x9
	.uahalf	0x466
	.uaword	0x24e3
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_G_BOUND"
	.byte	0x9
	.uahalf	0x467
	.uaword	0x4c48
	.uleb128 0x16
	.byte	0x4
	.byte	0x9
	.uahalf	0x46a
	.uaword	0x4cb2
	.uleb128 0x17
	.string	"U"
	.byte	0x9
	.uahalf	0x46c
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0x9
	.uahalf	0x46d
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0x9
	.uahalf	0x46e
	.uaword	0x266d
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_G_CEFCLR"
	.byte	0x9
	.uahalf	0x46f
	.uaword	0x4c8a
	.uleb128 0x16
	.byte	0x4
	.byte	0x9
	.uahalf	0x472
	.uaword	0x4cf5
	.uleb128 0x17
	.string	"U"
	.byte	0x9
	.uahalf	0x474
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0x9
	.uahalf	0x475
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0x9
	.uahalf	0x476
	.uaword	0x27f8
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_G_CEFLAG"
	.byte	0x9
	.uahalf	0x477
	.uaword	0x4ccd
	.uleb128 0x16
	.byte	0x4
	.byte	0x9
	.uahalf	0x47a
	.uaword	0x4d38
	.uleb128 0x17
	.string	"U"
	.byte	0x9
	.uahalf	0x47c
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0x9
	.uahalf	0x47d
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0x9
	.uahalf	0x47e
	.uaword	0x28e3
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_G_CEVNP0"
	.byte	0x9
	.uahalf	0x47f
	.uaword	0x4d10
	.uleb128 0x16
	.byte	0x4
	.byte	0x9
	.uahalf	0x482
	.uaword	0x4d7b
	.uleb128 0x17
	.string	"U"
	.byte	0x9
	.uahalf	0x484
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0x9
	.uahalf	0x485
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0x9
	.uahalf	0x486
	.uaword	0x29d4
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_G_CEVNP1"
	.byte	0x9
	.uahalf	0x487
	.uaword	0x4d53
	.uleb128 0x16
	.byte	0x4
	.byte	0x9
	.uahalf	0x48a
	.uaword	0x4dbe
	.uleb128 0x17
	.string	"U"
	.byte	0x9
	.uahalf	0x48c
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0x9
	.uahalf	0x48d
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0x9
	.uahalf	0x48e
	.uaword	0x2b44
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_G_CHCTR"
	.byte	0x9
	.uahalf	0x48f
	.uaword	0x4d96
	.uleb128 0x16
	.byte	0x4
	.byte	0x9
	.uahalf	0x492
	.uaword	0x4e00
	.uleb128 0x17
	.string	"U"
	.byte	0x9
	.uahalf	0x494
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0x9
	.uahalf	0x495
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0x9
	.uahalf	0x496
	.uaword	0x2bad
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_G_EMUXCS"
	.byte	0x9
	.uahalf	0x497
	.uaword	0x4dd8
	.uleb128 0x16
	.byte	0x4
	.byte	0x9
	.uahalf	0x49a
	.uaword	0x4e43
	.uleb128 0x17
	.string	"U"
	.byte	0x9
	.uahalf	0x49c
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0x9
	.uahalf	0x49d
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0x9
	.uahalf	0x49e
	.uaword	0x2ce4
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_G_EMUXCTR"
	.byte	0x9
	.uahalf	0x49f
	.uaword	0x4e1b
	.uleb128 0x16
	.byte	0x4
	.byte	0x9
	.uahalf	0x4a2
	.uaword	0x4e87
	.uleb128 0x17
	.string	"U"
	.byte	0x9
	.uahalf	0x4a4
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0x9
	.uahalf	0x4a5
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0x9
	.uahalf	0x4a6
	.uaword	0x2e08
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_G_ICLASS"
	.byte	0x9
	.uahalf	0x4a7
	.uaword	0x4e5f
	.uleb128 0x16
	.byte	0x4
	.byte	0x9
	.uahalf	0x4aa
	.uaword	0x4eca
	.uleb128 0x17
	.string	"U"
	.byte	0x9
	.uahalf	0x4ac
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0x9
	.uahalf	0x4ad
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0x9
	.uahalf	0x4ae
	.uaword	0x2f12
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_G_Q_Q0R"
	.byte	0x9
	.uahalf	0x4af
	.uaword	0x4ea2
	.uleb128 0x16
	.byte	0x4
	.byte	0x9
	.uahalf	0x4b2
	.uaword	0x4f0c
	.uleb128 0x17
	.string	"U"
	.byte	0x9
	.uahalf	0x4b4
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0x9
	.uahalf	0x4b5
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0x9
	.uahalf	0x4b6
	.uaword	0x301c
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_G_Q_QBUR"
	.byte	0x9
	.uahalf	0x4b7
	.uaword	0x4ee4
	.uleb128 0x16
	.byte	0x4
	.byte	0x9
	.uahalf	0x4ba
	.uaword	0x4f4f
	.uleb128 0x17
	.string	"U"
	.byte	0x9
	.uahalf	0x4bc
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0x9
	.uahalf	0x4bd
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0x9
	.uahalf	0x4be
	.uaword	0x3185
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_G_Q_QCTRL"
	.byte	0x9
	.uahalf	0x4bf
	.uaword	0x4f27
	.uleb128 0x16
	.byte	0x4
	.byte	0x9
	.uahalf	0x4c2
	.uaword	0x4f93
	.uleb128 0x17
	.string	"U"
	.byte	0x9
	.uahalf	0x4c4
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0x9
	.uahalf	0x4c5
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0x9
	.uahalf	0x4c6
	.uaword	0x3293
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_G_Q_QINR"
	.byte	0x9
	.uahalf	0x4c7
	.uaword	0x4f6b
	.uleb128 0x16
	.byte	0x4
	.byte	0x9
	.uahalf	0x4ca
	.uaword	0x4fd6
	.uleb128 0x17
	.string	"U"
	.byte	0x9
	.uahalf	0x4cc
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0x9
	.uahalf	0x4cd
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0x9
	.uahalf	0x4ce
	.uaword	0x3392
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_G_Q_QMR"
	.byte	0x9
	.uahalf	0x4cf
	.uaword	0x4fae
	.uleb128 0x16
	.byte	0x4
	.byte	0x9
	.uahalf	0x4d2
	.uaword	0x5018
	.uleb128 0x17
	.string	"U"
	.byte	0x9
	.uahalf	0x4d4
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0x9
	.uahalf	0x4d5
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0x9
	.uahalf	0x4d6
	.uaword	0x3455
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_G_Q_QSR"
	.byte	0x9
	.uahalf	0x4d7
	.uaword	0x4ff0
	.uleb128 0x16
	.byte	0x4
	.byte	0x9
	.uahalf	0x4da
	.uaword	0x505a
	.uleb128 0x17
	.string	"U"
	.byte	0x9
	.uahalf	0x4dc
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0x9
	.uahalf	0x4dd
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0x9
	.uahalf	0x4de
	.uaword	0x3528
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_G_Q_REQTM"
	.byte	0x9
	.uahalf	0x4df
	.uaword	0x5032
	.uleb128 0x16
	.byte	0x4
	.byte	0x9
	.uahalf	0x4e2
	.uaword	0x509e
	.uleb128 0x17
	.string	"U"
	.byte	0x9
	.uahalf	0x4e4
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0x9
	.uahalf	0x4e5
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0x9
	.uahalf	0x4e6
	.uaword	0x35a8
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_G_Q_REQTS"
	.byte	0x9
	.uahalf	0x4e7
	.uaword	0x5076
	.uleb128 0x16
	.byte	0x4
	.byte	0x9
	.uahalf	0x4ea
	.uaword	0x50e2
	.uleb128 0x17
	.string	"U"
	.byte	0x9
	.uahalf	0x4ec
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0x9
	.uahalf	0x4ed
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0x9
	.uahalf	0x4ee
	.uaword	0x367d
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_G_RCR"
	.byte	0x9
	.uahalf	0x4ef
	.uaword	0x50ba
	.uleb128 0x16
	.byte	0x4
	.byte	0x9
	.uahalf	0x4f2
	.uaword	0x5122
	.uleb128 0x17
	.string	"U"
	.byte	0x9
	.uahalf	0x4f4
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0x9
	.uahalf	0x4f5
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0x9
	.uahalf	0x4f6
	.uaword	0x3805
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_G_REFCLR"
	.byte	0x9
	.uahalf	0x4f7
	.uaword	0x50fa
	.uleb128 0x16
	.byte	0x4
	.byte	0x9
	.uahalf	0x4fa
	.uaword	0x5165
	.uleb128 0x17
	.string	"U"
	.byte	0x9
	.uahalf	0x4fc
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0x9
	.uahalf	0x4fd
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0x9
	.uahalf	0x4fe
	.uaword	0x3990
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_G_REFLAG"
	.byte	0x9
	.uahalf	0x4ff
	.uaword	0x513d
	.uleb128 0x16
	.byte	0x4
	.byte	0x9
	.uahalf	0x502
	.uaword	0x51a8
	.uleb128 0x17
	.string	"U"
	.byte	0x9
	.uahalf	0x504
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0x9
	.uahalf	0x505
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0x9
	.uahalf	0x506
	.uaword	0x3a4f
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_G_RES"
	.byte	0x9
	.uahalf	0x507
	.uaword	0x5180
	.uleb128 0x16
	.byte	0x4
	.byte	0x9
	.uahalf	0x50a
	.uaword	0x51e8
	.uleb128 0x17
	.string	"U"
	.byte	0x9
	.uahalf	0x50c
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0x9
	.uahalf	0x50d
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0x9
	.uahalf	0x50e
	.uaword	0x3b0c
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_G_RESD"
	.byte	0x9
	.uahalf	0x50f
	.uaword	0x51c0
	.uleb128 0x16
	.byte	0x4
	.byte	0x9
	.uahalf	0x512
	.uaword	0x5229
	.uleb128 0x17
	.string	"U"
	.byte	0x9
	.uahalf	0x514
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0x9
	.uahalf	0x515
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0x9
	.uahalf	0x516
	.uaword	0x3bf5
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_G_REVNP0"
	.byte	0x9
	.uahalf	0x517
	.uaword	0x5201
	.uleb128 0x16
	.byte	0x4
	.byte	0x9
	.uahalf	0x51a
	.uaword	0x526c
	.uleb128 0x17
	.string	"U"
	.byte	0x9
	.uahalf	0x51c
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0x9
	.uahalf	0x51d
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0x9
	.uahalf	0x51e
	.uaword	0x3ce6
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_G_REVNP1"
	.byte	0x9
	.uahalf	0x51f
	.uaword	0x5244
	.uleb128 0x16
	.byte	0x4
	.byte	0x9
	.uahalf	0x522
	.uaword	0x52af
	.uleb128 0x17
	.string	"U"
	.byte	0x9
	.uahalf	0x524
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0x9
	.uahalf	0x525
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0x9
	.uahalf	0x526
	.uaword	0x3d74
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_G_SEFCLR"
	.byte	0x9
	.uahalf	0x527
	.uaword	0x5287
	.uleb128 0x16
	.byte	0x4
	.byte	0x9
	.uahalf	0x52a
	.uaword	0x52f2
	.uleb128 0x17
	.string	"U"
	.byte	0x9
	.uahalf	0x52c
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0x9
	.uahalf	0x52d
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0x9
	.uahalf	0x52e
	.uaword	0x3e02
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_G_SEFLAG"
	.byte	0x9
	.uahalf	0x52f
	.uaword	0x52ca
	.uleb128 0x16
	.byte	0x4
	.byte	0x9
	.uahalf	0x532
	.uaword	0x5335
	.uleb128 0x17
	.string	"U"
	.byte	0x9
	.uahalf	0x534
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0x9
	.uahalf	0x535
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0x9
	.uahalf	0x536
	.uaword	0x3e95
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_G_SEVNP"
	.byte	0x9
	.uahalf	0x537
	.uaword	0x530d
	.uleb128 0x16
	.byte	0x4
	.byte	0x9
	.uahalf	0x53a
	.uaword	0x5377
	.uleb128 0x17
	.string	"U"
	.byte	0x9
	.uahalf	0x53c
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0x9
	.uahalf	0x53d
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0x9
	.uahalf	0x53e
	.uaword	0x3f9a
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_G_SRACT"
	.byte	0x9
	.uahalf	0x53f
	.uaword	0x534f
	.uleb128 0x16
	.byte	0x4
	.byte	0x9
	.uahalf	0x542
	.uaword	0x53b9
	.uleb128 0x17
	.string	"U"
	.byte	0x9
	.uahalf	0x544
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0x9
	.uahalf	0x545
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0x9
	.uahalf	0x546
	.uaword	0x4053
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_G_SYNCTR"
	.byte	0x9
	.uahalf	0x547
	.uaword	0x5391
	.uleb128 0x16
	.byte	0x4
	.byte	0x9
	.uahalf	0x54a
	.uaword	0x53fc
	.uleb128 0x17
	.string	"U"
	.byte	0x9
	.uahalf	0x54c
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0x9
	.uahalf	0x54d
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0x9
	.uahalf	0x54e
	.uaword	0x4162
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_G_TRCTR"
	.byte	0x9
	.uahalf	0x54f
	.uaword	0x53d4
	.uleb128 0x16
	.byte	0x4
	.byte	0x9
	.uahalf	0x552
	.uaword	0x543e
	.uleb128 0x17
	.string	"U"
	.byte	0x9
	.uahalf	0x554
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0x9
	.uahalf	0x555
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0x9
	.uahalf	0x556
	.uaword	0x42d9
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_G_VFR"
	.byte	0x9
	.uahalf	0x557
	.uaword	0x5416
	.uleb128 0x16
	.byte	0x4
	.byte	0x9
	.uahalf	0x55a
	.uaword	0x547e
	.uleb128 0x17
	.string	"U"
	.byte	0x9
	.uahalf	0x55c
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0x9
	.uahalf	0x55d
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0x9
	.uahalf	0x55e
	.uaword	0x4359
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_ID"
	.byte	0x9
	.uahalf	0x55f
	.uaword	0x5456
	.uleb128 0x16
	.byte	0x4
	.byte	0x9
	.uahalf	0x562
	.uaword	0x54bb
	.uleb128 0x17
	.string	"U"
	.byte	0x9
	.uahalf	0x564
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0x9
	.uahalf	0x565
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0x9
	.uahalf	0x566
	.uaword	0x43c9
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_KRST0"
	.byte	0x9
	.uahalf	0x567
	.uaword	0x5493
	.uleb128 0x16
	.byte	0x4
	.byte	0x9
	.uahalf	0x56a
	.uaword	0x54fb
	.uleb128 0x17
	.string	"U"
	.byte	0x9
	.uahalf	0x56c
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0x9
	.uahalf	0x56d
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0x9
	.uahalf	0x56e
	.uaword	0x442a
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_KRST1"
	.byte	0x9
	.uahalf	0x56f
	.uaword	0x54d3
	.uleb128 0x16
	.byte	0x4
	.byte	0x9
	.uahalf	0x572
	.uaword	0x553b
	.uleb128 0x17
	.string	"U"
	.byte	0x9
	.uahalf	0x574
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0x9
	.uahalf	0x575
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0x9
	.uahalf	0x576
	.uaword	0x448d
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_KRSTCLR"
	.byte	0x9
	.uahalf	0x577
	.uaword	0x5513
	.uleb128 0x16
	.byte	0x4
	.byte	0x9
	.uahalf	0x57a
	.uaword	0x557d
	.uleb128 0x17
	.string	"U"
	.byte	0x9
	.uahalf	0x57c
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0x9
	.uahalf	0x57d
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0x9
	.uahalf	0x57e
	.uaword	0x4560
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_OCS"
	.byte	0x9
	.uahalf	0x57f
	.uaword	0x5555
	.uleb128 0x18
	.string	"_Ifx_EVADC_GLOB"
	.uahalf	0x2e4
	.byte	0x9
	.uahalf	0x58b
	.uaword	0x56d9
	.uleb128 0xd
	.string	"ICLASS"
	.byte	0x9
	.uahalf	0x58d
	.uaword	0x56d9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.uaword	.LASF6
	.byte	0x9
	.uahalf	0x58e
	.uaword	0x3c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"BOUND"
	.byte	0x9
	.uahalf	0x58f
	.uaword	0x4905
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"reserved_1C"
	.byte	0x9
	.uahalf	0x590
	.uaword	0x337
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"EFLAG"
	.byte	0x9
	.uahalf	0x591
	.uaword	0x494a
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xf
	.uaword	.LASF39
	.byte	0x9
	.uahalf	0x592
	.uaword	0x387
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"EVNP"
	.byte	0x9
	.uahalf	0x593
	.uaword	0x498f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xd
	.string	"reserved_A4"
	.byte	0x9
	.uahalf	0x594
	.uaword	0x327
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0xd
	.string	"TF"
	.byte	0x9
	.uahalf	0x595
	.uaword	0x4b25
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xd
	.string	"TE"
	.byte	0x9
	.uahalf	0x596
	.uaword	0x4ae3
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0xd
	.string	"reserved_C8"
	.byte	0x9
	.uahalf	0x597
	.uaword	0x56e9
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0xd
	.string	"RCR"
	.byte	0x9
	.uahalf	0x598
	.uaword	0x4a19
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e0
	.uleb128 0xd
	.string	"reserved_1E4"
	.byte	0x9
	.uahalf	0x599
	.uaword	0x56fa
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e4
	.uleb128 0xd
	.string	"RES"
	.byte	0x9
	.uahalf	0x59a
	.uaword	0x4a5c
	.byte	0x3
	.byte	0x23
	.uleb128 0x260
	.uleb128 0xd
	.string	"reserved_264"
	.byte	0x9
	.uahalf	0x59b
	.uaword	0x56fa
	.byte	0x3
	.byte	0x23
	.uleb128 0x264
	.uleb128 0xd
	.string	"RESD"
	.byte	0x9
	.uahalf	0x59c
	.uaword	0x4a9f
	.byte	0x3
	.byte	0x23
	.uleb128 0x2e0
	.byte	0
	.uleb128 0x5
	.uaword	0x49d3
	.uaword	0x56e9
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.uaword	0x2b5
	.uaword	0x56fa
	.uleb128 0x19
	.uaword	0x2fb
	.uahalf	0x117
	.byte	0
	.uleb128 0x5
	.uaword	0x2b5
	.uaword	0x570a
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0x7b
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_GLOB"
	.byte	0x9
	.uahalf	0x59d
	.uaword	0x5721
	.uleb128 0x4
	.uaword	0x5593
	.uleb128 0x13
	.string	"_Ifx_EVADC_G_Q"
	.byte	0x20
	.byte	0x9
	.uahalf	0x5ac
	.uaword	0x57bf
	.uleb128 0xd
	.string	"QCTRL"
	.byte	0x9
	.uahalf	0x5ae
	.uaword	0x4f4f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"QMR"
	.byte	0x9
	.uahalf	0x5af
	.uaword	0x4fd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"QSR"
	.byte	0x9
	.uahalf	0x5b0
	.uaword	0x5018
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"Q0R"
	.byte	0x9
	.uahalf	0x5b1
	.uaword	0x4eca
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"QINR"
	.byte	0x9
	.uahalf	0x5b2
	.uaword	0x4f93
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"QBUR"
	.byte	0x9
	.uahalf	0x5b3
	.uaword	0x4f0c
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"REQTM"
	.byte	0x9
	.uahalf	0x5b4
	.uaword	0x505a
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"REQTS"
	.byte	0x9
	.uahalf	0x5b5
	.uaword	0x509e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_G_Q"
	.byte	0x9
	.uahalf	0x5b6
	.uaword	0x57d5
	.uleb128 0x4
	.uaword	0x5726
	.uleb128 0x18
	.string	"_Ifx_EVADC_G"
	.uahalf	0x400
	.byte	0x9
	.uahalf	0x5c5
	.uaword	0x5b9e
	.uleb128 0xf
	.uaword	.LASF14
	.byte	0x9
	.uahalf	0x5c7
	.uaword	0x3c7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"TRCTR"
	.byte	0x9
	.uahalf	0x5c8
	.uaword	0x53fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.uaword	.LASF10
	.byte	0x9
	.uahalf	0x5c9
	.uaword	0x5b9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"ARBCFG"
	.byte	0x9
	.uahalf	0x5ca
	.uaword	0x4beb
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xd
	.string	"ARBPR"
	.byte	0x9
	.uahalf	0x5cb
	.uaword	0x4c2e
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0xd
	.string	"ANCFG"
	.byte	0x9
	.uahalf	0x5cc
	.uaword	0x4ba9
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xd
	.string	"reserved_8C"
	.byte	0x9
	.uahalf	0x5cd
	.uaword	0x377
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xd
	.string	"ICLASS"
	.byte	0x9
	.uahalf	0x5ce
	.uaword	0x5bae
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xd
	.string	"reserved_A8"
	.byte	0x9
	.uahalf	0x5cf
	.uaword	0x347
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xd
	.string	"ALIAS"
	.byte	0x9
	.uahalf	0x5d0
	.uaword	0x4b67
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xd
	.string	"reserved_B4"
	.byte	0x9
	.uahalf	0x5d1
	.uaword	0x307
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0xd
	.string	"BOUND"
	.byte	0x9
	.uahalf	0x5d2
	.uaword	0x4c70
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xd
	.string	"reserved_BC"
	.byte	0x9
	.uahalf	0x5d3
	.uaword	0x307
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0xd
	.string	"SYNCTR"
	.byte	0x9
	.uahalf	0x5d4
	.uaword	0x53b9
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xd
	.string	"reserved_C4"
	.byte	0x9
	.uahalf	0x5d5
	.uaword	0x3f7
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0xd
	.string	"Q"
	.byte	0x9
	.uahalf	0x5d6
	.uaword	0x5bce
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xd
	.string	"reserved_160"
	.byte	0x9
	.uahalf	0x5d7
	.uaword	0x3b7
	.byte	0x3
	.byte	0x23
	.uleb128 0x160
	.uleb128 0xd
	.string	"CEFLAG"
	.byte	0x9
	.uahalf	0x5d8
	.uaword	0x4cf5
	.byte	0x3
	.byte	0x23
	.uleb128 0x180
	.uleb128 0xd
	.string	"REFLAG"
	.byte	0x9
	.uahalf	0x5d9
	.uaword	0x5165
	.byte	0x3
	.byte	0x23
	.uleb128 0x184
	.uleb128 0xd
	.string	"SEFLAG"
	.byte	0x9
	.uahalf	0x5da
	.uaword	0x52f2
	.byte	0x3
	.byte	0x23
	.uleb128 0x188
	.uleb128 0xd
	.string	"reserved_18C"
	.byte	0x9
	.uahalf	0x5db
	.uaword	0x307
	.byte	0x3
	.byte	0x23
	.uleb128 0x18c
	.uleb128 0xd
	.string	"CEFCLR"
	.byte	0x9
	.uahalf	0x5dc
	.uaword	0x4cb2
	.byte	0x3
	.byte	0x23
	.uleb128 0x190
	.uleb128 0xd
	.string	"REFCLR"
	.byte	0x9
	.uahalf	0x5dd
	.uaword	0x5122
	.byte	0x3
	.byte	0x23
	.uleb128 0x194
	.uleb128 0xd
	.string	"SEFCLR"
	.byte	0x9
	.uahalf	0x5de
	.uaword	0x52af
	.byte	0x3
	.byte	0x23
	.uleb128 0x198
	.uleb128 0xd
	.string	"reserved_19C"
	.byte	0x9
	.uahalf	0x5df
	.uaword	0x307
	.byte	0x3
	.byte	0x23
	.uleb128 0x19c
	.uleb128 0xd
	.string	"CEVNP0"
	.byte	0x9
	.uahalf	0x5e0
	.uaword	0x4d38
	.byte	0x3
	.byte	0x23
	.uleb128 0x1a0
	.uleb128 0xd
	.string	"CEVNP1"
	.byte	0x9
	.uahalf	0x5e1
	.uaword	0x4d7b
	.byte	0x3
	.byte	0x23
	.uleb128 0x1a4
	.uleb128 0xf
	.uaword	.LASF40
	.byte	0x9
	.uahalf	0x5e2
	.uaword	0x347
	.byte	0x3
	.byte	0x23
	.uleb128 0x1a8
	.uleb128 0xd
	.string	"REVNP0"
	.byte	0x9
	.uahalf	0x5e3
	.uaword	0x5229
	.byte	0x3
	.byte	0x23
	.uleb128 0x1b0
	.uleb128 0xd
	.string	"REVNP1"
	.byte	0x9
	.uahalf	0x5e4
	.uaword	0x526c
	.byte	0x3
	.byte	0x23
	.uleb128 0x1b4
	.uleb128 0xd
	.string	"reserved_1B8"
	.byte	0x9
	.uahalf	0x5e5
	.uaword	0x347
	.byte	0x3
	.byte	0x23
	.uleb128 0x1b8
	.uleb128 0xd
	.string	"SEVNP"
	.byte	0x9
	.uahalf	0x5e6
	.uaword	0x5335
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c0
	.uleb128 0xd
	.string	"reserved_1C4"
	.byte	0x9
	.uahalf	0x5e7
	.uaword	0x307
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c4
	.uleb128 0xd
	.string	"SRACT"
	.byte	0x9
	.uahalf	0x5e8
	.uaword	0x5377
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c8
	.uleb128 0xd
	.string	"reserved_1CC"
	.byte	0x9
	.uahalf	0x5e9
	.uaword	0x337
	.byte	0x3
	.byte	0x23
	.uleb128 0x1cc
	.uleb128 0xd
	.string	"EMUXCTR"
	.byte	0x9
	.uahalf	0x5ea
	.uaword	0x4e43
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f0
	.uleb128 0xd
	.string	"EMUXCS"
	.byte	0x9
	.uahalf	0x5eb
	.uaword	0x4e00
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f4
	.uleb128 0xd
	.string	"VFR"
	.byte	0x9
	.uahalf	0x5ec
	.uaword	0x543e
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f8
	.uleb128 0xd
	.string	"reserved_1FC"
	.byte	0x9
	.uahalf	0x5ed
	.uaword	0x307
	.byte	0x3
	.byte	0x23
	.uleb128 0x1fc
	.uleb128 0xd
	.string	"CHCTR"
	.byte	0x9
	.uahalf	0x5ee
	.uaword	0x5bd3
	.byte	0x3
	.byte	0x23
	.uleb128 0x200
	.uleb128 0xd
	.string	"reserved_240"
	.byte	0x9
	.uahalf	0x5ef
	.uaword	0x367
	.byte	0x3
	.byte	0x23
	.uleb128 0x240
	.uleb128 0xd
	.string	"RCR"
	.byte	0x9
	.uahalf	0x5f0
	.uaword	0x5be3
	.byte	0x3
	.byte	0x23
	.uleb128 0x280
	.uleb128 0xf
	.uaword	.LASF41
	.byte	0x9
	.uahalf	0x5f1
	.uaword	0x367
	.byte	0x3
	.byte	0x23
	.uleb128 0x2c0
	.uleb128 0xd
	.string	"RES"
	.byte	0x9
	.uahalf	0x5f2
	.uaword	0x5bf3
	.byte	0x3
	.byte	0x23
	.uleb128 0x300
	.uleb128 0xd
	.string	"reserved_340"
	.byte	0x9
	.uahalf	0x5f3
	.uaword	0x367
	.byte	0x3
	.byte	0x23
	.uleb128 0x340
	.uleb128 0xd
	.string	"RESD"
	.byte	0x9
	.uahalf	0x5f4
	.uaword	0x5c03
	.byte	0x3
	.byte	0x23
	.uleb128 0x380
	.uleb128 0xd
	.string	"reserved_3C0"
	.byte	0x9
	.uahalf	0x5f5
	.uaword	0x367
	.byte	0x3
	.byte	0x23
	.uleb128 0x3c0
	.byte	0
	.uleb128 0x5
	.uaword	0x2b5
	.uaword	0x5bae
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0x6b
	.byte	0
	.uleb128 0x5
	.uaword	0x4e87
	.uaword	0x5bbe
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.uaword	0x57bf
	.uaword	0x5bce
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.uaword	0x5bbe
	.uleb128 0x5
	.uaword	0x4dbe
	.uaword	0x5be3
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0xf
	.byte	0
	.uleb128 0x5
	.uaword	0x50e2
	.uaword	0x5bf3
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0xf
	.byte	0
	.uleb128 0x5
	.uaword	0x51a8
	.uaword	0x5c03
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0xf
	.byte	0
	.uleb128 0x5
	.uaword	0x51e8
	.uaword	0x5c13
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0xf
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_G"
	.byte	0x9
	.uahalf	0x5f6
	.uaword	0x5c27
	.uleb128 0x4
	.uaword	0x57da
	.uleb128 0x18
	.string	"_Ifx_EVADC_FC"
	.uahalf	0x100
	.byte	0x9
	.uahalf	0x605
	.uaword	0x5ccd
	.uleb128 0xd
	.string	"FCCTRL"
	.byte	0x9
	.uahalf	0x607
	.uaword	0x4770
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"FCM"
	.byte	0x9
	.uahalf	0x608
	.uaword	0x47f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"FCRAMP0"
	.byte	0x9
	.uahalf	0x609
	.uaword	0x4839
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"FCRAMP1"
	.byte	0x9
	.uahalf	0x60a
	.uaword	0x487e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xf
	.uaword	.LASF15
	.byte	0x9
	.uahalf	0x60b
	.uaword	0x3c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"FCBFL"
	.byte	0x9
	.uahalf	0x60c
	.uaword	0x472d
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"FCHYST"
	.byte	0x9
	.uahalf	0x60d
	.uaword	0x47b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xf
	.uaword	.LASF2
	.byte	0x9
	.uahalf	0x60e
	.uaword	0x5ccd
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0
	.uleb128 0x5
	.uaword	0x2b5
	.uaword	0x5cdd
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0xd7
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC_FC"
	.byte	0x9
	.uahalf	0x60f
	.uaword	0x5cf2
	.uleb128 0x4
	.uaword	0x5c2c
	.uleb128 0x18
	.string	"_Ifx_EVADC"
	.uahalf	0x4000
	.byte	0x9
	.uahalf	0x61e
	.uaword	0x5edd
	.uleb128 0xd
	.string	"CLC"
	.byte	0x9
	.uahalf	0x620
	.uaword	0x46ad
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.uaword	.LASF3
	.byte	0x9
	.uahalf	0x621
	.uaword	0x307
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"ID"
	.byte	0x9
	.uahalf	0x622
	.uaword	0x547e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.uaword	.LASF42
	.byte	0x9
	.uahalf	0x623
	.uaword	0x327
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"OCS"
	.byte	0x9
	.uahalf	0x624
	.uaword	0x557d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.string	"KRSTCLR"
	.byte	0x9
	.uahalf	0x625
	.uaword	0x553b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"KRST1"
	.byte	0x9
	.uahalf	0x626
	.uaword	0x54fb
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"KRST0"
	.byte	0x9
	.uahalf	0x627
	.uaword	0x54bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"reserved_38"
	.byte	0x9
	.uahalf	0x628
	.uaword	0x307
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"ACCEN0"
	.byte	0x9
	.uahalf	0x629
	.uaword	0x45a3
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"reserved_40"
	.byte	0x9
	.uahalf	0x62a
	.uaword	0x367
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"GLOBCFG"
	.byte	0x9
	.uahalf	0x62b
	.uaword	0x48c3
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xd
	.string	"reserved_84"
	.byte	0x9
	.uahalf	0x62c
	.uaword	0x307
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0xd
	.string	"ACCPROT0"
	.byte	0x9
	.uahalf	0x62d
	.uaword	0x45e4
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xd
	.string	"ACCPROT1"
	.byte	0x9
	.uahalf	0x62e
	.uaword	0x4627
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xd
	.string	"ACCPROT2"
	.byte	0x9
	.uahalf	0x62f
	.uaword	0x466a
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xd
	.string	"reserved_94"
	.byte	0x9
	.uahalf	0x630
	.uaword	0x317
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xd
	.string	"GLOB"
	.byte	0x9
	.uahalf	0x631
	.uaword	0x570a
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xd
	.string	"reserved_384"
	.byte	0x9
	.uahalf	0x632
	.uaword	0x5b9e
	.byte	0x3
	.byte	0x23
	.uleb128 0x384
	.uleb128 0xd
	.string	"EMUXSEL"
	.byte	0x9
	.uahalf	0x633
	.uaword	0x46eb
	.byte	0x3
	.byte	0x23
	.uleb128 0x3f0
	.uleb128 0xd
	.string	"reserved_3F4"
	.byte	0x9
	.uahalf	0x634
	.uaword	0x317
	.byte	0x3
	.byte	0x23
	.uleb128 0x3f4
	.uleb128 0xd
	.string	"G"
	.byte	0x9
	.uahalf	0x635
	.uaword	0x5eed
	.byte	0x3
	.byte	0x23
	.uleb128 0x400
	.uleb128 0xd
	.string	"FC"
	.byte	0x9
	.uahalf	0x636
	.uaword	0x5f02
	.byte	0x3
	.byte	0x23
	.uleb128 0x3400
	.uleb128 0xd
	.string	"reserved_3800"
	.byte	0x9
	.uahalf	0x637
	.uaword	0x5f07
	.byte	0x3
	.byte	0x23
	.uleb128 0x3800
	.byte	0
	.uleb128 0x5
	.uaword	0x5c13
	.uaword	0x5eed
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0xb
	.byte	0
	.uleb128 0x4
	.uaword	0x5edd
	.uleb128 0x5
	.uaword	0x5cdd
	.uaword	0x5f02
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.uaword	0x5ef2
	.uleb128 0x5
	.uaword	0x2b5
	.uaword	0x5f18
	.uleb128 0x19
	.uaword	0x2fb
	.uahalf	0x7ff
	.byte	0
	.uleb128 0xb
	.string	"Ifx_EVADC"
	.byte	0x9
	.uahalf	0x638
	.uaword	0x5f2a
	.uleb128 0x4
	.uaword	0x5cf7
	.uleb128 0x10
	.string	"_Ifx_SCU_ACCEN00_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0x44
	.uaword	0x6184
	.uleb128 0x11
	.string	"EN0"
	.byte	0xa
	.byte	0x46
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN1"
	.byte	0xa
	.byte	0x47
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN2"
	.byte	0xa
	.byte	0x48
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN3"
	.byte	0xa
	.byte	0x49
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN4"
	.byte	0xa
	.byte	0x4a
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN5"
	.byte	0xa
	.byte	0x4b
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN6"
	.byte	0xa
	.byte	0x4c
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN7"
	.byte	0xa
	.byte	0x4d
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN8"
	.byte	0xa
	.byte	0x4e
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN9"
	.byte	0xa
	.byte	0x4f
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN10"
	.byte	0xa
	.byte	0x50
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN11"
	.byte	0xa
	.byte	0x51
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN12"
	.byte	0xa
	.byte	0x52
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN13"
	.byte	0xa
	.byte	0x53
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN14"
	.byte	0xa
	.byte	0x54
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN15"
	.byte	0xa
	.byte	0x55
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN16"
	.byte	0xa
	.byte	0x56
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN17"
	.byte	0xa
	.byte	0x57
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN18"
	.byte	0xa
	.byte	0x58
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN19"
	.byte	0xa
	.byte	0x59
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN20"
	.byte	0xa
	.byte	0x5a
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN21"
	.byte	0xa
	.byte	0x5b
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN22"
	.byte	0xa
	.byte	0x5c
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN23"
	.byte	0xa
	.byte	0x5d
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN24"
	.byte	0xa
	.byte	0x5e
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN25"
	.byte	0xa
	.byte	0x5f
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN26"
	.byte	0xa
	.byte	0x60
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN27"
	.byte	0xa
	.byte	0x61
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN28"
	.byte	0xa
	.byte	0x62
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN29"
	.byte	0xa
	.byte	0x63
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN30"
	.byte	0xa
	.byte	0x64
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN31"
	.byte	0xa
	.byte	0x65
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SCU_ACCEN00_Bits"
	.byte	0xa
	.byte	0x66
	.uaword	0x5f2f
	.uleb128 0x10
	.string	"_Ifx_SCU_ACCEN01_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0x69
	.uaword	0x61d0
	.uleb128 0x12
	.uaword	.LASF14
	.byte	0xa
	.byte	0x6b
	.uaword	0x2ca
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SCU_ACCEN01_Bits"
	.byte	0xa
	.byte	0x6c
	.uaword	0x61a0
	.uleb128 0x10
	.string	"_Ifx_SCU_ACCEN10_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0x6f
	.uaword	0x6441
	.uleb128 0x11
	.string	"EN0"
	.byte	0xa
	.byte	0x71
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN1"
	.byte	0xa
	.byte	0x72
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN2"
	.byte	0xa
	.byte	0x73
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN3"
	.byte	0xa
	.byte	0x74
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN4"
	.byte	0xa
	.byte	0x75
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN5"
	.byte	0xa
	.byte	0x76
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN6"
	.byte	0xa
	.byte	0x77
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN7"
	.byte	0xa
	.byte	0x78
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN8"
	.byte	0xa
	.byte	0x79
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN9"
	.byte	0xa
	.byte	0x7a
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN10"
	.byte	0xa
	.byte	0x7b
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN11"
	.byte	0xa
	.byte	0x7c
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN12"
	.byte	0xa
	.byte	0x7d
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN13"
	.byte	0xa
	.byte	0x7e
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN14"
	.byte	0xa
	.byte	0x7f
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN15"
	.byte	0xa
	.byte	0x80
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN16"
	.byte	0xa
	.byte	0x81
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN17"
	.byte	0xa
	.byte	0x82
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN18"
	.byte	0xa
	.byte	0x83
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN19"
	.byte	0xa
	.byte	0x84
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN20"
	.byte	0xa
	.byte	0x85
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN21"
	.byte	0xa
	.byte	0x86
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN22"
	.byte	0xa
	.byte	0x87
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN23"
	.byte	0xa
	.byte	0x88
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN24"
	.byte	0xa
	.byte	0x89
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN25"
	.byte	0xa
	.byte	0x8a
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN26"
	.byte	0xa
	.byte	0x8b
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN27"
	.byte	0xa
	.byte	0x8c
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN28"
	.byte	0xa
	.byte	0x8d
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN29"
	.byte	0xa
	.byte	0x8e
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN30"
	.byte	0xa
	.byte	0x8f
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN31"
	.byte	0xa
	.byte	0x90
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SCU_ACCEN10_Bits"
	.byte	0xa
	.byte	0x91
	.uaword	0x61ec
	.uleb128 0x10
	.string	"_Ifx_SCU_ACCEN11_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0x94
	.uaword	0x648d
	.uleb128 0x12
	.uaword	.LASF14
	.byte	0xa
	.byte	0x96
	.uaword	0x2ca
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SCU_ACCEN11_Bits"
	.byte	0xa
	.byte	0x97
	.uaword	0x645d
	.uleb128 0x10
	.string	"_Ifx_SCU_ARSTDIS_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0x9a
	.uaword	0x6560
	.uleb128 0x11
	.string	"STM0DIS"
	.byte	0xa
	.byte	0x9c
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"STM1DIS"
	.byte	0xa
	.byte	0x9d
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"STM2DIS"
	.byte	0xa
	.byte	0x9e
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"STM3DIS"
	.byte	0xa
	.byte	0x9f
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF3
	.byte	0xa
	.byte	0xa0
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF8
	.byte	0xa
	.byte	0xa1
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF31
	.byte	0xa
	.byte	0xa2
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF6
	.byte	0xa
	.byte	0xa3
	.uaword	0x2ca
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SCU_ARSTDIS_Bits"
	.byte	0xa
	.byte	0xa4
	.uaword	0x64a9
	.uleb128 0x10
	.string	"_Ifx_SCU_CCUCON0_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0xa7
	.uaword	0x6681
	.uleb128 0x11
	.string	"STMDIV"
	.byte	0xa
	.byte	0xa9
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"GTMDIV"
	.byte	0xa
	.byte	0xaa
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SRIDIV"
	.byte	0xa
	.byte	0xab
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"LPDIV"
	.byte	0xa
	.byte	0xac
	.uaword	0x2ca
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF36
	.byte	0xa
	.byte	0xad
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SPBDIV"
	.byte	0xa
	.byte	0xae
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"BBBDIV"
	.byte	0xa
	.byte	0xaf
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"FSIDIV"
	.byte	0xa
	.byte	0xb0
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"FSI2DIV"
	.byte	0xa
	.byte	0xb1
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"CLKSEL"
	.byte	0xa
	.byte	0xb2
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"UP"
	.byte	0xa
	.byte	0xb3
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"LCK"
	.byte	0xa
	.byte	0xb4
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SCU_CCUCON0_Bits"
	.byte	0xa
	.byte	0xb5
	.uaword	0x657c
	.uleb128 0x10
	.string	"_Ifx_SCU_CCUCON1_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0xb8
	.uaword	0x67c2
	.uleb128 0x11
	.string	"MCANDIV"
	.byte	0xa
	.byte	0xba
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"CLKSELMCAN"
	.byte	0xa
	.byte	0xbb
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF31
	.byte	0xa
	.byte	0xbc
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PLL1DIVDIS"
	.byte	0xa
	.byte	0xbd
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"I2CDIV"
	.byte	0xa
	.byte	0xbe
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF1
	.byte	0xa
	.byte	0xbf
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"MSCDIV"
	.byte	0xa
	.byte	0xc0
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"CLKSELMSC"
	.byte	0xa
	.byte	0xc1
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF32
	.byte	0xa
	.byte	0xc2
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"QSPIDIV"
	.byte	0xa
	.byte	0xc3
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"CLKSELQSPI"
	.byte	0xa
	.byte	0xc4
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF26
	.byte	0xa
	.byte	0xc5
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"LCK"
	.byte	0xa
	.byte	0xc6
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SCU_CCUCON1_Bits"
	.byte	0xa
	.byte	0xc7
	.uaword	0x669d
	.uleb128 0x10
	.string	"_Ifx_SCU_CCUCON2_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0xca
	.uaword	0x68c5
	.uleb128 0x11
	.string	"ASCLINFDIV"
	.byte	0xa
	.byte	0xcc
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF3
	.byte	0xa
	.byte	0xcd
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"ASCLINSDIV"
	.byte	0xa
	.byte	0xce
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"CLKSELASCLINS"
	.byte	0xa
	.byte	0xcf
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF10
	.byte	0xa
	.byte	0xd0
	.uaword	0x2ca
	.byte	0x4
	.byte	0xa
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF16
	.byte	0xa
	.byte	0xd1
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"ERAYPERON"
	.byte	0xa
	.byte	0xd2
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF30
	.byte	0xa
	.byte	0xd3
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF24
	.byte	0xa
	.byte	0xd4
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"LCK"
	.byte	0xa
	.byte	0xd5
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SCU_CCUCON2_Bits"
	.byte	0xa
	.byte	0xd6
	.uaword	0x67de
	.uleb128 0x10
	.string	"_Ifx_SCU_CCUCON3_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0xd9
	.uaword	0x6a3d
	.uleb128 0x11
	.string	"PLL0MONEN"
	.byte	0xa
	.byte	0xdb
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PLL1MONEN"
	.byte	0xa
	.byte	0xdc
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PLL2MONEN"
	.byte	0xa
	.byte	0xdd
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SPBMONEN"
	.byte	0xa
	.byte	0xde
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"BACKMONEN"
	.byte	0xa
	.byte	0xdf
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF8
	.byte	0xa
	.byte	0xe0
	.uaword	0x2ca
	.byte	0x4
	.byte	0x3
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PLL0MONTST"
	.byte	0xa
	.byte	0xe1
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PLL1MONTST"
	.byte	0xa
	.byte	0xe2
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PLL2MONTST"
	.byte	0xa
	.byte	0xe3
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SPBMONTST"
	.byte	0xa
	.byte	0xe4
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"BACKMONTST"
	.byte	0xa
	.byte	0xe5
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF28
	.byte	0xa
	.byte	0xe6
	.uaword	0x2ca
	.byte	0x4
	.byte	0xb
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF16
	.byte	0xa
	.byte	0xe7
	.uaword	0x2ca
	.byte	0x4
	.byte	0x6
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"UP"
	.byte	0xa
	.byte	0xe8
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"LCK"
	.byte	0xa
	.byte	0xe9
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SCU_CCUCON3_Bits"
	.byte	0xa
	.byte	0xea
	.uaword	0x68e1
	.uleb128 0x10
	.string	"_Ifx_SCU_CCUCON4_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0xed
	.uaword	0x6af7
	.uleb128 0x11
	.string	"LOTHR"
	.byte	0xa
	.byte	0xef
	.uaword	0x2ca
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"UPTHR"
	.byte	0xa
	.byte	0xf0
	.uaword	0x2ca
	.byte	0x4
	.byte	0xc
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"MONEN"
	.byte	0xa
	.byte	0xf1
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"MONTST"
	.byte	0xa
	.byte	0xf2
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF30
	.byte	0xa
	.byte	0xf3
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"UP"
	.byte	0xa
	.byte	0xf4
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"LCK"
	.byte	0xa
	.byte	0xf5
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SCU_CCUCON4_Bits"
	.byte	0xa
	.byte	0xf6
	.uaword	0x6a59
	.uleb128 0x10
	.string	"_Ifx_SCU_CCUCON5_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0xf9
	.uaword	0x6ba1
	.uleb128 0x11
	.string	"GETHDIV"
	.byte	0xa
	.byte	0xfb
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"MCANHDIV"
	.byte	0xa
	.byte	0xfc
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF6
	.byte	0xa
	.byte	0xfd
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF1
	.byte	0xa
	.byte	0xfe
	.uaword	0x2ca
	.byte	0x4
	.byte	0x12
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"UP"
	.byte	0xa
	.byte	0xff
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"LCK"
	.byte	0xa
	.uahalf	0x100
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_CCUCON5_Bits"
	.byte	0xa
	.uahalf	0x101
	.uaword	0x6b13
	.uleb128 0x13
	.string	"_Ifx_SCU_CCUCON6_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x104
	.uaword	0x6c06
	.uleb128 0x15
	.string	"CPU0DIV"
	.byte	0xa
	.uahalf	0x106
	.uaword	0x2ca
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF31
	.byte	0xa
	.uahalf	0x107
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1a
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_CCUCON6_Bits"
	.byte	0xa
	.uahalf	0x108
	.uaword	0x6bbe
	.uleb128 0x13
	.string	"_Ifx_SCU_CCUCON7_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x10b
	.uaword	0x6c6b
	.uleb128 0x15
	.string	"CPU1DIV"
	.byte	0xa
	.uahalf	0x10d
	.uaword	0x2ca
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF31
	.byte	0xa
	.uahalf	0x10e
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1a
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_CCUCON7_Bits"
	.byte	0xa
	.uahalf	0x10f
	.uaword	0x6c23
	.uleb128 0x13
	.string	"_Ifx_SCU_CCUCON8_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x112
	.uaword	0x6cd0
	.uleb128 0x15
	.string	"CPU2DIV"
	.byte	0xa
	.uahalf	0x114
	.uaword	0x2ca
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF31
	.byte	0xa
	.uahalf	0x115
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1a
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_CCUCON8_Bits"
	.byte	0xa
	.uahalf	0x116
	.uaword	0x6c88
	.uleb128 0x13
	.string	"_Ifx_SCU_CCUCON9_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x119
	.uaword	0x6d35
	.uleb128 0x15
	.string	"CPU3DIV"
	.byte	0xa
	.uahalf	0x11b
	.uaword	0x2ca
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF31
	.byte	0xa
	.uahalf	0x11c
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1a
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_CCUCON9_Bits"
	.byte	0xa
	.uahalf	0x11d
	.uaword	0x6ced
	.uleb128 0x13
	.string	"_Ifx_SCU_CHIPID_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x120
	.uaword	0x6e1e
	.uleb128 0x15
	.string	"CHREV"
	.byte	0xa
	.uahalf	0x122
	.uaword	0x2ca
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CHTEC"
	.byte	0xa
	.uahalf	0x123
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CHPK"
	.byte	0xa
	.uahalf	0x124
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CHID"
	.byte	0xa
	.uahalf	0x125
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"EEA"
	.byte	0xa
	.uahalf	0x126
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"UCODE"
	.byte	0xa
	.uahalf	0x127
	.uaword	0x2ca
	.byte	0x4
	.byte	0x7
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"FSIZE"
	.byte	0xa
	.uahalf	0x128
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"VART"
	.byte	0xa
	.uahalf	0x129
	.uaword	0x2ca
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"SEC"
	.byte	0xa
	.uahalf	0x12a
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_CHIPID_Bits"
	.byte	0xa
	.uahalf	0x12b
	.uaword	0x6d52
	.uleb128 0x13
	.string	"_Ifx_SCU_DTSCLIM_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x12e
	.uaword	0x6f15
	.uleb128 0x15
	.string	"LOWER"
	.byte	0xa
	.uahalf	0x130
	.uaword	0x2ca
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF1
	.byte	0xa
	.uahalf	0x131
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"BGPOK"
	.byte	0xa
	.uahalf	0x132
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"EN"
	.byte	0xa
	.uahalf	0x133
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"LLU"
	.byte	0xa
	.uahalf	0x134
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"UPPER"
	.byte	0xa
	.uahalf	0x135
	.uaword	0x2ca
	.byte	0x4
	.byte	0xc
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"INTEN"
	.byte	0xa
	.uahalf	0x136
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF12
	.byte	0xa
	.uahalf	0x137
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"INT"
	.byte	0xa
	.uahalf	0x138
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"UOF"
	.byte	0xa
	.uahalf	0x139
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_DTSCLIM_Bits"
	.byte	0xa
	.uahalf	0x13a
	.uaword	0x6e3a
	.uleb128 0x13
	.string	"_Ifx_SCU_DTSCSTAT_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x13d
	.uaword	0x6f77
	.uleb128 0x14
	.uaword	.LASF25
	.byte	0xa
	.uahalf	0x13f
	.uaword	0x2ca
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF1
	.byte	0xa
	.uahalf	0x140
	.uaword	0x2ca
	.byte	0x4
	.byte	0x14
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_DTSCSTAT_Bits"
	.byte	0xa
	.uahalf	0x141
	.uaword	0x6f32
	.uleb128 0x13
	.string	"_Ifx_SCU_EICON0_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x144
	.uaword	0x6ffc
	.uleb128 0x14
	.uaword	.LASF14
	.byte	0xa
	.uahalf	0x146
	.uaword	0x2f6
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF43
	.byte	0xa
	.uahalf	0x147
	.uaword	0x2f6
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"EPW"
	.byte	0xa
	.uahalf	0x148
	.uaword	0x2f6
	.byte	0x4
	.byte	0xe
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"REL"
	.byte	0xa
	.uahalf	0x149
	.uaword	0x2f6
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_EICON0_Bits"
	.byte	0xa
	.uahalf	0x14a
	.uaword	0x6f95
	.uleb128 0x13
	.string	"_Ifx_SCU_EICON1_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x14d
	.uaword	0x70b4
	.uleb128 0x14
	.uaword	.LASF14
	.byte	0xa
	.uahalf	0x14f
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF7
	.byte	0xa
	.uahalf	0x150
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"IR0"
	.byte	0xa
	.uahalf	0x151
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"DR"
	.byte	0xa
	.uahalf	0x152
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF3
	.byte	0xa
	.uahalf	0x153
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"IR1"
	.byte	0xa
	.uahalf	0x154
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF31
	.byte	0xa
	.uahalf	0x155
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1a
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_EICON1_Bits"
	.byte	0xa
	.uahalf	0x156
	.uaword	0x7018
	.uleb128 0x13
	.string	"_Ifx_SCU_EICR_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x159
	.uaword	0x7231
	.uleb128 0x14
	.uaword	.LASF14
	.byte	0xa
	.uahalf	0x15b
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"EXIS0"
	.byte	0xa
	.uahalf	0x15c
	.uaword	0x2ca
	.byte	0x4
	.byte	0x3
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF29
	.byte	0xa
	.uahalf	0x15d
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"FEN0"
	.byte	0xa
	.uahalf	0x15e
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"REN0"
	.byte	0xa
	.uahalf	0x15f
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"LDEN0"
	.byte	0xa
	.uahalf	0x160
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"EIEN0"
	.byte	0xa
	.uahalf	0x161
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"INP0"
	.byte	0xa
	.uahalf	0x162
	.uaword	0x2ca
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF36
	.byte	0xa
	.uahalf	0x163
	.uaword	0x2ca
	.byte	0x4
	.byte	0x5
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"EXIS1"
	.byte	0xa
	.uahalf	0x164
	.uaword	0x2ca
	.byte	0x4
	.byte	0x3
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF44
	.byte	0xa
	.uahalf	0x165
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"FEN1"
	.byte	0xa
	.uahalf	0x166
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"REN1"
	.byte	0xa
	.uahalf	0x167
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"LDEN1"
	.byte	0xa
	.uahalf	0x168
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"EIEN1"
	.byte	0xa
	.uahalf	0x169
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"INP1"
	.byte	0xa
	.uahalf	0x16a
	.uaword	0x2ca
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF33
	.byte	0xa
	.uahalf	0x16b
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_EICR_Bits"
	.byte	0xa
	.uahalf	0x16c
	.uaword	0x70d0
	.uleb128 0x13
	.string	"_Ifx_SCU_EIFILT_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x16f
	.uaword	0x741c
	.uleb128 0x15
	.string	"FILRQ0A"
	.byte	0xa
	.uahalf	0x171
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"FILRQ5A"
	.byte	0xa
	.uahalf	0x172
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"FILRQ2A"
	.byte	0xa
	.uahalf	0x173
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"FILRQ3A"
	.byte	0xa
	.uahalf	0x174
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"FILRQ0C"
	.byte	0xa
	.uahalf	0x175
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"FILRQ1C"
	.byte	0xa
	.uahalf	0x176
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"FILRQ3C"
	.byte	0xa
	.uahalf	0x177
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"FILRQ2C"
	.byte	0xa
	.uahalf	0x178
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"FILRQ4A"
	.byte	0xa
	.uahalf	0x179
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"FILRQ6A"
	.byte	0xa
	.uahalf	0x17a
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"FILRQ1A"
	.byte	0xa
	.uahalf	0x17b
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"FILRQ7A"
	.byte	0xa
	.uahalf	0x17c
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"FILRQ6D"
	.byte	0xa
	.uahalf	0x17d
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"FILRQ4D"
	.byte	0xa
	.uahalf	0x17e
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"FILRQ2B"
	.byte	0xa
	.uahalf	0x17f
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"FILRQ3B"
	.byte	0xa
	.uahalf	0x180
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"FILRQ7C"
	.byte	0xa
	.uahalf	0x181
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF37
	.byte	0xa
	.uahalf	0x182
	.uaword	0x2ca
	.byte	0x4
	.byte	0x7
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"FILTDIV"
	.byte	0xa
	.uahalf	0x183
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"DEPTH"
	.byte	0xa
	.uahalf	0x184
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_EIFILT_Bits"
	.byte	0xa
	.uahalf	0x185
	.uaword	0x724b
	.uleb128 0x13
	.string	"_Ifx_SCU_EIFR_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x188
	.uaword	0x7507
	.uleb128 0x15
	.string	"INTF0"
	.byte	0xa
	.uahalf	0x18a
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"INTF1"
	.byte	0xa
	.uahalf	0x18b
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"INTF2"
	.byte	0xa
	.uahalf	0x18c
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"INTF3"
	.byte	0xa
	.uahalf	0x18d
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"INTF4"
	.byte	0xa
	.uahalf	0x18e
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"INTF5"
	.byte	0xa
	.uahalf	0x18f
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"INTF6"
	.byte	0xa
	.uahalf	0x190
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"INTF7"
	.byte	0xa
	.uahalf	0x191
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF6
	.byte	0xa
	.uahalf	0x192
	.uaword	0x2ca
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_EIFR_Bits"
	.byte	0xa
	.uahalf	0x193
	.uaword	0x7438
	.uleb128 0x13
	.string	"_Ifx_SCU_EISR_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x196
	.uaword	0x75ca
	.uleb128 0x15
	.string	"AE"
	.byte	0xa
	.uahalf	0x198
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"OE"
	.byte	0xa
	.uahalf	0x199
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"IS0"
	.byte	0xa
	.uahalf	0x19a
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"DS"
	.byte	0xa
	.uahalf	0x19b
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"TO"
	.byte	0xa
	.uahalf	0x19c
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"IS1"
	.byte	0xa
	.uahalf	0x19d
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF31
	.byte	0xa
	.uahalf	0x19e
	.uaword	0x2ca
	.byte	0x4
	.byte	0xa
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"TIM"
	.byte	0xa
	.uahalf	0x19f
	.uaword	0x2ca
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_EISR_Bits"
	.byte	0xa
	.uahalf	0x1a0
	.uaword	0x7521
	.uleb128 0x13
	.string	"_Ifx_SCU_EMSR_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x1a3
	.uaword	0x7697
	.uleb128 0x15
	.string	"POL"
	.byte	0xa
	.uahalf	0x1a5
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"MODE"
	.byte	0xa
	.uahalf	0x1a6
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"ENON"
	.byte	0xa
	.uahalf	0x1a7
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"PSEL"
	.byte	0xa
	.uahalf	0x1a8
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF3
	.byte	0xa
	.uahalf	0x1a9
	.uaword	0x2ca
	.byte	0x4
	.byte	0xc
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"EMSF"
	.byte	0xa
	.uahalf	0x1aa
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"SEMSF"
	.byte	0xa
	.uahalf	0x1ab
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF11
	.byte	0xa
	.uahalf	0x1ac
	.uaword	0x2ca
	.byte	0x4
	.byte	0xe
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_EMSR_Bits"
	.byte	0xa
	.uahalf	0x1ad
	.uaword	0x75e4
	.uleb128 0x13
	.string	"_Ifx_SCU_EMSSW_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x1b0
	.uaword	0x771c
	.uleb128 0x14
	.uaword	.LASF14
	.byte	0xa
	.uahalf	0x1b2
	.uaword	0x2ca
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"EMSFM"
	.byte	0xa
	.uahalf	0x1b3
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"SEMSFM"
	.byte	0xa
	.uahalf	0x1b4
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF2
	.byte	0xa
	.uahalf	0x1b5
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_EMSSW_Bits"
	.byte	0xa
	.uahalf	0x1b6
	.uaword	0x76b1
	.uleb128 0x13
	.string	"_Ifx_SCU_ESRCFGX_ESRCFGX_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x1b9
	.uaword	0x7797
	.uleb128 0x14
	.uaword	.LASF14
	.byte	0xa
	.uahalf	0x1bb
	.uaword	0x2ca
	.byte	0x4
	.byte	0x7
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"EDCON"
	.byte	0xa
	.uahalf	0x1bc
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF9
	.byte	0xa
	.uahalf	0x1bd
	.uaword	0x2ca
	.byte	0x4
	.byte	0x17
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_ESRCFGX_ESRCFGX_Bits"
	.byte	0xa
	.uahalf	0x1be
	.uaword	0x7737
	.uleb128 0x13
	.string	"_Ifx_SCU_ESROCFG_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x1c1
	.uaword	0x7812
	.uleb128 0x15
	.string	"ARI"
	.byte	0xa
	.uahalf	0x1c3
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"ARC"
	.byte	0xa
	.uahalf	0x1c4
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF5
	.byte	0xa
	.uahalf	0x1c5
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_ESROCFG_Bits"
	.byte	0xa
	.uahalf	0x1c6
	.uaword	0x77bc
	.uleb128 0x13
	.string	"_Ifx_SCU_EXTCON_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x1c9
	.uaword	0x78f4
	.uleb128 0x15
	.string	"EN0"
	.byte	0xa
	.uahalf	0x1cb
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF7
	.byte	0xa
	.uahalf	0x1cc
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"SEL0"
	.byte	0xa
	.uahalf	0x1cd
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF31
	.byte	0xa
	.uahalf	0x1ce
	.uaword	0x2ca
	.byte	0x4
	.byte	0xa
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"EN1"
	.byte	0xa
	.uahalf	0x1cf
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"NSEL"
	.byte	0xa
	.uahalf	0x1d0
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"SEL1"
	.byte	0xa
	.uahalf	0x1d1
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF32
	.byte	0xa
	.uahalf	0x1d2
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"DIV1"
	.byte	0xa
	.uahalf	0x1d3
	.uaword	0x2ca
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_EXTCON_Bits"
	.byte	0xa
	.uahalf	0x1d4
	.uaword	0x782f
	.uleb128 0x13
	.string	"_Ifx_SCU_FDR_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x1d7
	.uaword	0x799b
	.uleb128 0x15
	.string	"STEP"
	.byte	0xa
	.uahalf	0x1d9
	.uaword	0x2ca
	.byte	0x4
	.byte	0xa
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF15
	.byte	0xa
	.uahalf	0x1da
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"DM"
	.byte	0xa
	.uahalf	0x1db
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF25
	.byte	0xa
	.uahalf	0x1dc
	.uaword	0x2ca
	.byte	0x4
	.byte	0xa
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF30
	.byte	0xa
	.uahalf	0x1dd
	.uaword	0x2ca
	.byte	0x4
	.byte	0x5
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"DISCLK"
	.byte	0xa
	.uahalf	0x1de
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_FDR_Bits"
	.byte	0xa
	.uahalf	0x1df
	.uaword	0x7910
	.uleb128 0x13
	.string	"_Ifx_SCU_FMR_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x1e2
	.uaword	0x7b14
	.uleb128 0x15
	.string	"FS0"
	.byte	0xa
	.uahalf	0x1e4
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"FS1"
	.byte	0xa
	.uahalf	0x1e5
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"FS2"
	.byte	0xa
	.uahalf	0x1e6
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"FS3"
	.byte	0xa
	.uahalf	0x1e7
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"FS4"
	.byte	0xa
	.uahalf	0x1e8
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"FS5"
	.byte	0xa
	.uahalf	0x1e9
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"FS6"
	.byte	0xa
	.uahalf	0x1ea
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"FS7"
	.byte	0xa
	.uahalf	0x1eb
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF6
	.byte	0xa
	.uahalf	0x1ec
	.uaword	0x2ca
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"FC0"
	.byte	0xa
	.uahalf	0x1ed
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"FC1"
	.byte	0xa
	.uahalf	0x1ee
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"FC2"
	.byte	0xa
	.uahalf	0x1ef
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"FC3"
	.byte	0xa
	.uahalf	0x1f0
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"FC4"
	.byte	0xa
	.uahalf	0x1f1
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"FC5"
	.byte	0xa
	.uahalf	0x1f2
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"FC6"
	.byte	0xa
	.uahalf	0x1f3
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"FC7"
	.byte	0xa
	.uahalf	0x1f4
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF16
	.byte	0xa
	.uahalf	0x1f5
	.uaword	0x2ca
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_FMR_Bits"
	.byte	0xa
	.uahalf	0x1f6
	.uaword	0x79b4
	.uleb128 0x13
	.string	"_Ifx_SCU_ID_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x1f9
	.uaword	0x7b8b
	.uleb128 0x15
	.string	"MODREV"
	.byte	0xa
	.uahalf	0x1fb
	.uaword	0x2ca
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"MODTYPE"
	.byte	0xa
	.uahalf	0x1fc
	.uaword	0x2ca
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"MODNUMBER"
	.byte	0xa
	.uahalf	0x1fd
	.uaword	0x2ca
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_ID_Bits"
	.byte	0xa
	.uahalf	0x1fe
	.uaword	0x7b2d
	.uleb128 0x13
	.string	"_Ifx_SCU_IGCR_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x201
	.uaword	0x7d82
	.uleb128 0x15
	.string	"IPEN00"
	.byte	0xa
	.uahalf	0x203
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"IPEN01"
	.byte	0xa
	.uahalf	0x204
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"IPEN02"
	.byte	0xa
	.uahalf	0x205
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"IPEN03"
	.byte	0xa
	.uahalf	0x206
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"IPEN04"
	.byte	0xa
	.uahalf	0x207
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"IPEN05"
	.byte	0xa
	.uahalf	0x208
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"IPEN06"
	.byte	0xa
	.uahalf	0x209
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"IPEN07"
	.byte	0xa
	.uahalf	0x20a
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF6
	.byte	0xa
	.uahalf	0x20b
	.uaword	0x2ca
	.byte	0x4
	.byte	0x5
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"GEEN0"
	.byte	0xa
	.uahalf	0x20c
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"IGP0"
	.byte	0xa
	.uahalf	0x20d
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"IPEN10"
	.byte	0xa
	.uahalf	0x20e
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"IPEN11"
	.byte	0xa
	.uahalf	0x20f
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"IPEN12"
	.byte	0xa
	.uahalf	0x210
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"IPEN13"
	.byte	0xa
	.uahalf	0x211
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"IPEN14"
	.byte	0xa
	.uahalf	0x212
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"IPEN15"
	.byte	0xa
	.uahalf	0x213
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"IPEN16"
	.byte	0xa
	.uahalf	0x214
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"IPEN17"
	.byte	0xa
	.uahalf	0x215
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF16
	.byte	0xa
	.uahalf	0x216
	.uaword	0x2ca
	.byte	0x4
	.byte	0x5
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"GEEN1"
	.byte	0xa
	.uahalf	0x217
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"IGP1"
	.byte	0xa
	.uahalf	0x218
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_IGCR_Bits"
	.byte	0xa
	.uahalf	0x219
	.uaword	0x7ba3
	.uleb128 0x13
	.string	"_Ifx_SCU_IN_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x21c
	.uaword	0x7deb
	.uleb128 0x15
	.string	"P0"
	.byte	0xa
	.uahalf	0x21e
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"P1"
	.byte	0xa
	.uahalf	0x21f
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF5
	.byte	0xa
	.uahalf	0x220
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_IN_Bits"
	.byte	0xa
	.uahalf	0x221
	.uaword	0x7d9c
	.uleb128 0x13
	.string	"_Ifx_SCU_IOCR_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x224
	.uaword	0x7e7a
	.uleb128 0x14
	.uaword	.LASF14
	.byte	0xa
	.uahalf	0x226
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"PC0"
	.byte	0xa
	.uahalf	0x227
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF6
	.byte	0xa
	.uahalf	0x228
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"PC1"
	.byte	0xa
	.uahalf	0x229
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF17
	.byte	0xa
	.uahalf	0x22a
	.uaword	0x2ca
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_IOCR_Bits"
	.byte	0xa
	.uahalf	0x22b
	.uaword	0x7e03
	.uleb128 0x13
	.string	"_Ifx_SCU_LBISTCTRL0_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x22e
	.uaword	0x7f6c
	.uleb128 0x15
	.string	"LBISTREQ"
	.byte	0xa
	.uahalf	0x230
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"LBISTRES"
	.byte	0xa
	.uahalf	0x231
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"PATTERNS"
	.byte	0xa
	.uahalf	0x232
	.uaword	0x2ca
	.byte	0x4
	.byte	0x12
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF21
	.byte	0xa
	.uahalf	0x233
	.uaword	0x2ca
	.byte	0x4
	.byte	0x8
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"LBISTDONE"
	.byte	0xa
	.uahalf	0x234
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF12
	.byte	0xa
	.uahalf	0x235
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"LBISTERRINJ"
	.byte	0xa
	.uahalf	0x236
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"LBISTREQRED"
	.byte	0xa
	.uahalf	0x237
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_LBISTCTRL0_Bits"
	.byte	0xa
	.uahalf	0x238
	.uaword	0x7e94
	.uleb128 0x13
	.string	"_Ifx_SCU_LBISTCTRL1_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x23b
	.uaword	0x8016
	.uleb128 0x15
	.string	"SEED"
	.byte	0xa
	.uahalf	0x23d
	.uaword	0x2ca
	.byte	0x4
	.byte	0x13
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF4
	.byte	0xa
	.uahalf	0x23e
	.uaword	0x2ca
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"SPLITSH"
	.byte	0xa
	.uahalf	0x23f
	.uaword	0x2ca
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"BODY"
	.byte	0xa
	.uahalf	0x240
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"LBISTFREQU"
	.byte	0xa
	.uahalf	0x241
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_LBISTCTRL1_Bits"
	.byte	0xa
	.uahalf	0x242
	.uaword	0x7f8c
	.uleb128 0x13
	.string	"_Ifx_SCU_LBISTCTRL2_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x245
	.uaword	0x8080
	.uleb128 0x15
	.string	"LENGTH"
	.byte	0xa
	.uahalf	0x247
	.uaword	0x2ca
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF1
	.byte	0xa
	.uahalf	0x248
	.uaword	0x2ca
	.byte	0x4
	.byte	0x14
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_LBISTCTRL2_Bits"
	.byte	0xa
	.uahalf	0x249
	.uaword	0x8036
	.uleb128 0x13
	.string	"_Ifx_SCU_LBISTCTRL3_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x24c
	.uaword	0x80db
	.uleb128 0x15
	.string	"SIGNATURE"
	.byte	0xa
	.uahalf	0x24e
	.uaword	0x2ca
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_LBISTCTRL3_Bits"
	.byte	0xa
	.uahalf	0x24f
	.uaword	0x80a0
	.uleb128 0x13
	.string	"_Ifx_SCU_LCLCON0_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x252
	.uaword	0x8189
	.uleb128 0x14
	.uaword	.LASF14
	.byte	0xa
	.uahalf	0x254
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF7
	.byte	0xa
	.uahalf	0x255
	.uaword	0x2ca
	.byte	0x4
	.byte	0xe
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF36
	.byte	0xa
	.uahalf	0x256
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"LS0"
	.byte	0xa
	.uahalf	0x257
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF37
	.byte	0xa
	.uahalf	0x258
	.uaword	0x2ca
	.byte	0x4
	.byte	0xe
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"LSEN0"
	.byte	0xa
	.uahalf	0x259
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_LCLCON0_Bits"
	.byte	0xa
	.uahalf	0x25a
	.uaword	0x80fb
	.uleb128 0x13
	.string	"_Ifx_SCU_LCLCON1_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x25d
	.uaword	0x8234
	.uleb128 0x14
	.uaword	.LASF14
	.byte	0xa
	.uahalf	0x25f
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF7
	.byte	0xa
	.uahalf	0x260
	.uaword	0x2ca
	.byte	0x4
	.byte	0xe
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF36
	.byte	0xa
	.uahalf	0x261
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"LS1"
	.byte	0xa
	.uahalf	0x262
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF37
	.byte	0xa
	.uahalf	0x263
	.uaword	0x2ca
	.byte	0x4
	.byte	0xe
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"LSEN1"
	.byte	0xa
	.uahalf	0x264
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_LCLCON1_Bits"
	.byte	0xa
	.uahalf	0x265
	.uaword	0x81a6
	.uleb128 0x13
	.string	"_Ifx_SCU_LCLTEST_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x268
	.uaword	0x8381
	.uleb128 0x15
	.string	"LCLT0"
	.byte	0xa
	.uahalf	0x26a
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"LCLT1"
	.byte	0xa
	.uahalf	0x26b
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"LCLT2"
	.byte	0xa
	.uahalf	0x26c
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"LCLT3"
	.byte	0xa
	.uahalf	0x26d
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF3
	.byte	0xa
	.uahalf	0x26e
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF8
	.byte	0xa
	.uahalf	0x26f
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF31
	.byte	0xa
	.uahalf	0x270
	.uaword	0x2ca
	.byte	0x4
	.byte	0xa
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"PLCLT0"
	.byte	0xa
	.uahalf	0x271
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"PLCLT1"
	.byte	0xa
	.uahalf	0x272
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"PLCLT2"
	.byte	0xa
	.uahalf	0x273
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"PLCLT3"
	.byte	0xa
	.uahalf	0x274
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF21
	.byte	0xa
	.uahalf	0x275
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF23
	.byte	0xa
	.uahalf	0x276
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF32
	.byte	0xa
	.uahalf	0x277
	.uaword	0x2ca
	.byte	0x4
	.byte	0xa
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_LCLTEST_Bits"
	.byte	0xa
	.uahalf	0x278
	.uaword	0x8251
	.uleb128 0x13
	.string	"_Ifx_SCU_MANID_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x27b
	.uaword	0x83f5
	.uleb128 0x15
	.string	"DEPT"
	.byte	0xa
	.uahalf	0x27d
	.uaword	0x2ca
	.byte	0x4
	.byte	0x5
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"MANUF"
	.byte	0xa
	.uahalf	0x27e
	.uaword	0x2ca
	.byte	0x4
	.byte	0xb
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF17
	.byte	0xa
	.uahalf	0x27f
	.uaword	0x2ca
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_MANID_Bits"
	.byte	0xa
	.uahalf	0x280
	.uaword	0x839e
	.uleb128 0x13
	.string	"_Ifx_SCU_OMR_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x283
	.uaword	0x849a
	.uleb128 0x15
	.string	"PS0"
	.byte	0xa
	.uahalf	0x285
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"PS1"
	.byte	0xa
	.uahalf	0x286
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF5
	.byte	0xa
	.uahalf	0x287
	.uaword	0x2ca
	.byte	0x4
	.byte	0xe
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"PCL0"
	.byte	0xa
	.uahalf	0x288
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"PCL1"
	.byte	0xa
	.uahalf	0x289
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF11
	.byte	0xa
	.uahalf	0x28a
	.uaword	0x2ca
	.byte	0x4
	.byte	0xe
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_OMR_Bits"
	.byte	0xa
	.uahalf	0x28b
	.uaword	0x8410
	.uleb128 0x13
	.string	"_Ifx_SCU_OSCCON_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x28e
	.uaword	0x864e
	.uleb128 0x14
	.uaword	.LASF14
	.byte	0xa
	.uahalf	0x290
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"PLLLV"
	.byte	0xa
	.uahalf	0x291
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"OSCRES"
	.byte	0xa
	.uahalf	0x292
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"GAINSEL"
	.byte	0xa
	.uahalf	0x293
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"MODE"
	.byte	0xa
	.uahalf	0x294
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"SHBY"
	.byte	0xa
	.uahalf	0x295
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"PLLHV"
	.byte	0xa
	.uahalf	0x296
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"HYSEN"
	.byte	0xa
	.uahalf	0x297
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"HYSCTL"
	.byte	0xa
	.uahalf	0x298
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"AMPCTL"
	.byte	0xa
	.uahalf	0x299
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF10
	.byte	0xa
	.uahalf	0x29a
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"OSCVAL"
	.byte	0xa
	.uahalf	0x29b
	.uaword	0x2ca
	.byte	0x4
	.byte	0x5
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF23
	.byte	0xa
	.uahalf	0x29c
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"APREN"
	.byte	0xa
	.uahalf	0x29d
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CAP0EN"
	.byte	0xa
	.uahalf	0x29e
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CAP1EN"
	.byte	0xa
	.uahalf	0x29f
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CAP2EN"
	.byte	0xa
	.uahalf	0x2a0
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CAP3EN"
	.byte	0xa
	.uahalf	0x2a1
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF2
	.byte	0xa
	.uahalf	0x2a2
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_OSCCON_Bits"
	.byte	0xa
	.uahalf	0x2a3
	.uaword	0x84b3
	.uleb128 0x13
	.string	"_Ifx_SCU_OUT_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x2a6
	.uaword	0x86ba
	.uleb128 0x15
	.string	"P0"
	.byte	0xa
	.uahalf	0x2a8
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"P1"
	.byte	0xa
	.uahalf	0x2a9
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF5
	.byte	0xa
	.uahalf	0x2aa
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_OUT_Bits"
	.byte	0xa
	.uahalf	0x2ab
	.uaword	0x866a
	.uleb128 0x13
	.string	"_Ifx_SCU_OVCCON_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x2ae
	.uaword	0x8806
	.uleb128 0x15
	.string	"CSEL0"
	.byte	0xa
	.uahalf	0x2b0
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CSEL1"
	.byte	0xa
	.uahalf	0x2b1
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CSEL2"
	.byte	0xa
	.uahalf	0x2b2
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CSEL3"
	.byte	0xa
	.uahalf	0x2b3
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF3
	.byte	0xa
	.uahalf	0x2b4
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF8
	.byte	0xa
	.uahalf	0x2b5
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF31
	.byte	0xa
	.uahalf	0x2b6
	.uaword	0x2ca
	.byte	0x4
	.byte	0xa
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"OVSTRT"
	.byte	0xa
	.uahalf	0x2b7
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"OVSTP"
	.byte	0xa
	.uahalf	0x2b8
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"DCINVAL"
	.byte	0xa
	.uahalf	0x2b9
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF4
	.byte	0xa
	.uahalf	0x2ba
	.uaword	0x2ca
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"OVCONF"
	.byte	0xa
	.uahalf	0x2bb
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"POVCONF"
	.byte	0xa
	.uahalf	0x2bc
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF30
	.byte	0xa
	.uahalf	0x2bd
	.uaword	0x2ca
	.byte	0x4
	.byte	0x6
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_OVCCON_Bits"
	.byte	0xa
	.uahalf	0x2be
	.uaword	0x86d3
	.uleb128 0x13
	.string	"_Ifx_SCU_OVCENABLE_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x2c1
	.uaword	0x88ca
	.uleb128 0x15
	.string	"OVEN0"
	.byte	0xa
	.uahalf	0x2c3
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"OVEN1"
	.byte	0xa
	.uahalf	0x2c4
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"OVEN2"
	.byte	0xa
	.uahalf	0x2c5
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"OVEN3"
	.byte	0xa
	.uahalf	0x2c6
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF3
	.byte	0xa
	.uahalf	0x2c7
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF8
	.byte	0xa
	.uahalf	0x2c8
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF31
	.byte	0xa
	.uahalf	0x2c9
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1a
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_OVCENABLE_Bits"
	.byte	0xa
	.uahalf	0x2ca
	.uaword	0x8822
	.uleb128 0x13
	.string	"_Ifx_SCU_PDISC_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x2cd
	.uaword	0x8941
	.uleb128 0x15
	.string	"PDIS0"
	.byte	0xa
	.uahalf	0x2cf
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"PDIS1"
	.byte	0xa
	.uahalf	0x2d0
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF5
	.byte	0xa
	.uahalf	0x2d1
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PDISC_Bits"
	.byte	0xa
	.uahalf	0x2d2
	.uaword	0x88e9
	.uleb128 0x13
	.string	"_Ifx_SCU_PDR_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x2d5
	.uaword	0x89d2
	.uleb128 0x15
	.string	"PD0"
	.byte	0xa
	.uahalf	0x2d7
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"PL0"
	.byte	0xa
	.uahalf	0x2d8
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"PD1"
	.byte	0xa
	.uahalf	0x2d9
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"PL1"
	.byte	0xa
	.uahalf	0x2da
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF6
	.byte	0xa
	.uahalf	0x2db
	.uaword	0x2ca
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PDR_Bits"
	.byte	0xa
	.uahalf	0x2dc
	.uaword	0x895c
	.uleb128 0x13
	.string	"_Ifx_SCU_PDRR_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x2df
	.uaword	0x8ab2
	.uleb128 0x15
	.string	"PDR0"
	.byte	0xa
	.uahalf	0x2e1
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"PDR1"
	.byte	0xa
	.uahalf	0x2e2
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"PDR2"
	.byte	0xa
	.uahalf	0x2e3
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"PDR3"
	.byte	0xa
	.uahalf	0x2e4
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"PDR4"
	.byte	0xa
	.uahalf	0x2e5
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"PDR5"
	.byte	0xa
	.uahalf	0x2e6
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"PDR6"
	.byte	0xa
	.uahalf	0x2e7
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"PDR7"
	.byte	0xa
	.uahalf	0x2e8
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF6
	.byte	0xa
	.uahalf	0x2e9
	.uaword	0x2ca
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PDRR_Bits"
	.byte	0xa
	.uahalf	0x2ea
	.uaword	0x89eb
	.uleb128 0x13
	.string	"_Ifx_SCU_PERPLLCON0_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x2ed
	.uaword	0x8b9a
	.uleb128 0x15
	.string	"DIVBY"
	.byte	0xa
	.uahalf	0x2ef
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF7
	.byte	0xa
	.uahalf	0x2f0
	.uaword	0x2ca
	.byte	0x4
	.byte	0x8
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"NDIV"
	.byte	0xa
	.uahalf	0x2f1
	.uaword	0x2ca
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"PLLPWD"
	.byte	0xa
	.uahalf	0x2f2
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF37
	.byte	0xa
	.uahalf	0x2f3
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"RESLD"
	.byte	0xa
	.uahalf	0x2f4
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF4
	.byte	0xa
	.uahalf	0x2f5
	.uaword	0x2ca
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"PDIV"
	.byte	0xa
	.uahalf	0x2f6
	.uaword	0x2ca
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF24
	.byte	0xa
	.uahalf	0x2f7
	.uaword	0x2ca
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PERPLLCON0_Bits"
	.byte	0xa
	.uahalf	0x2f8
	.uaword	0x8acc
	.uleb128 0x13
	.string	"_Ifx_SCU_PERPLLCON1_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x2fb
	.uaword	0x8c29
	.uleb128 0x15
	.string	"K2DIV"
	.byte	0xa
	.uahalf	0x2fd
	.uaword	0x2ca
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF34
	.byte	0xa
	.uahalf	0x2fe
	.uaword	0x2ca
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"K3DIV"
	.byte	0xa
	.uahalf	0x2ff
	.uaword	0x2ca
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF22
	.byte	0xa
	.uahalf	0x300
	.uaword	0x2ca
	.byte	0x4
	.byte	0x15
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PERPLLCON1_Bits"
	.byte	0xa
	.uahalf	0x301
	.uaword	0x8bba
	.uleb128 0x13
	.string	"_Ifx_SCU_PERPLLSTAT_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x304
	.uaword	0x8d05
	.uleb128 0x14
	.uaword	.LASF14
	.byte	0xa
	.uahalf	0x306
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"PWDSTAT"
	.byte	0xa
	.uahalf	0x307
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"LOCK"
	.byte	0xa
	.uahalf	0x308
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF34
	.byte	0xa
	.uahalf	0x309
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"K3RDY"
	.byte	0xa
	.uahalf	0x30a
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"K2RDY"
	.byte	0xa
	.uahalf	0x30b
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF31
	.byte	0xa
	.uahalf	0x30c
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF29
	.byte	0xa
	.uahalf	0x30d
	.uaword	0x2ca
	.byte	0x4
	.byte	0x19
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PERPLLSTAT_Bits"
	.byte	0xa
	.uahalf	0x30e
	.uaword	0x8c49
	.uleb128 0x13
	.string	"_Ifx_SCU_PMCSR0_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x311
	.uaword	0x8d8c
	.uleb128 0x14
	.uaword	.LASF45
	.byte	0xa
	.uahalf	0x313
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF5
	.byte	0xa
	.uahalf	0x314
	.uaword	0x2ca
	.byte	0x4
	.byte	0x6
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF46
	.byte	0xa
	.uahalf	0x315
	.uaword	0x2ca
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF22
	.byte	0xa
	.uahalf	0x316
	.uaword	0x2ca
	.byte	0x4
	.byte	0x15
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PMCSR0_Bits"
	.byte	0xa
	.uahalf	0x317
	.uaword	0x8d25
	.uleb128 0x13
	.string	"_Ifx_SCU_PMCSR1_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x31a
	.uaword	0x8e0f
	.uleb128 0x14
	.uaword	.LASF45
	.byte	0xa
	.uahalf	0x31c
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF5
	.byte	0xa
	.uahalf	0x31d
	.uaword	0x2ca
	.byte	0x4
	.byte	0x6
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF46
	.byte	0xa
	.uahalf	0x31e
	.uaword	0x2ca
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF22
	.byte	0xa
	.uahalf	0x31f
	.uaword	0x2ca
	.byte	0x4
	.byte	0x15
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PMCSR1_Bits"
	.byte	0xa
	.uahalf	0x320
	.uaword	0x8da8
	.uleb128 0x13
	.string	"_Ifx_SCU_PMCSR2_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x323
	.uaword	0x8e92
	.uleb128 0x14
	.uaword	.LASF45
	.byte	0xa
	.uahalf	0x325
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF5
	.byte	0xa
	.uahalf	0x326
	.uaword	0x2ca
	.byte	0x4
	.byte	0x6
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF46
	.byte	0xa
	.uahalf	0x327
	.uaword	0x2ca
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF22
	.byte	0xa
	.uahalf	0x328
	.uaword	0x2ca
	.byte	0x4
	.byte	0x15
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PMCSR2_Bits"
	.byte	0xa
	.uahalf	0x329
	.uaword	0x8e2b
	.uleb128 0x13
	.string	"_Ifx_SCU_PMCSR3_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x32c
	.uaword	0x8f15
	.uleb128 0x14
	.uaword	.LASF45
	.byte	0xa
	.uahalf	0x32e
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF5
	.byte	0xa
	.uahalf	0x32f
	.uaword	0x2ca
	.byte	0x4
	.byte	0x6
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF46
	.byte	0xa
	.uahalf	0x330
	.uaword	0x2ca
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF22
	.byte	0xa
	.uahalf	0x331
	.uaword	0x2ca
	.byte	0x4
	.byte	0x15
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PMCSR3_Bits"
	.byte	0xa
	.uahalf	0x332
	.uaword	0x8eae
	.uleb128 0x13
	.string	"_Ifx_SCU_PMCSR4_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x335
	.uaword	0x8f98
	.uleb128 0x14
	.uaword	.LASF45
	.byte	0xa
	.uahalf	0x337
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF5
	.byte	0xa
	.uahalf	0x338
	.uaword	0x2ca
	.byte	0x4
	.byte	0x6
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF46
	.byte	0xa
	.uahalf	0x339
	.uaword	0x2ca
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF22
	.byte	0xa
	.uahalf	0x33a
	.uaword	0x2ca
	.byte	0x4
	.byte	0x15
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PMCSR4_Bits"
	.byte	0xa
	.uahalf	0x33b
	.uaword	0x8f31
	.uleb128 0x13
	.string	"_Ifx_SCU_PMCSR5_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x33e
	.uaword	0x901b
	.uleb128 0x14
	.uaword	.LASF45
	.byte	0xa
	.uahalf	0x340
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF5
	.byte	0xa
	.uahalf	0x341
	.uaword	0x2ca
	.byte	0x4
	.byte	0x6
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF46
	.byte	0xa
	.uahalf	0x342
	.uaword	0x2ca
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF22
	.byte	0xa
	.uahalf	0x343
	.uaword	0x2ca
	.byte	0x4
	.byte	0x15
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PMCSR5_Bits"
	.byte	0xa
	.uahalf	0x344
	.uaword	0x8fb4
	.uleb128 0x13
	.string	"_Ifx_SCU_PMSTAT0_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x347
	.uaword	0x9141
	.uleb128 0x15
	.string	"CPU0"
	.byte	0xa
	.uahalf	0x349
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CPU1"
	.byte	0xa
	.uahalf	0x34a
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CPU2"
	.byte	0xa
	.uahalf	0x34b
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CPU3"
	.byte	0xa
	.uahalf	0x34c
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CPU4"
	.byte	0xa
	.uahalf	0x34d
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CPU5"
	.byte	0xa
	.uahalf	0x34e
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF31
	.byte	0xa
	.uahalf	0x34f
	.uaword	0x2ca
	.byte	0x4
	.byte	0xa
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CPU0LS"
	.byte	0xa
	.uahalf	0x350
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CPU1LS"
	.byte	0xa
	.uahalf	0x351
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CPU2LS"
	.byte	0xa
	.uahalf	0x352
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CPU3LS"
	.byte	0xa
	.uahalf	0x353
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF21
	.byte	0xa
	.uahalf	0x354
	.uaword	0x2ca
	.byte	0x4
	.byte	0xc
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PMSTAT0_Bits"
	.byte	0xa
	.uahalf	0x355
	.uaword	0x9037
	.uleb128 0x13
	.string	"_Ifx_SCU_PMSWCR1_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x358
	.uaword	0x9234
	.uleb128 0x14
	.uaword	.LASF14
	.byte	0xa
	.uahalf	0x35a
	.uaword	0x2ca
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CPUIDLSEL"
	.byte	0xa
	.uahalf	0x35b
	.uaword	0x2ca
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF22
	.byte	0xa
	.uahalf	0x35c
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"IRADIS"
	.byte	0xa
	.uahalf	0x35d
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF28
	.byte	0xa
	.uahalf	0x35e
	.uaword	0x2ca
	.byte	0x4
	.byte	0xb
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CPUSEL"
	.byte	0xa
	.uahalf	0x35f
	.uaword	0x2ca
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"STBYEVEN"
	.byte	0xa
	.uahalf	0x360
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"STBYEV"
	.byte	0xa
	.uahalf	0x361
	.uaword	0x2ca
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF33
	.byte	0xa
	.uahalf	0x362
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PMSWCR1_Bits"
	.byte	0xa
	.uahalf	0x363
	.uaword	0x915e
	.uleb128 0x13
	.string	"_Ifx_SCU_PMTRCSR0_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x366
	.uaword	0x93d5
	.uleb128 0x15
	.string	"LJTEN"
	.byte	0xa
	.uahalf	0x368
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"LJTOVEN"
	.byte	0xa
	.uahalf	0x369
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"LJTOVIEN"
	.byte	0xa
	.uahalf	0x36a
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"LJTSTRT"
	.byte	0xa
	.uahalf	0x36b
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"LJTSTP"
	.byte	0xa
	.uahalf	0x36c
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"LJTCLR"
	.byte	0xa
	.uahalf	0x36d
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF31
	.byte	0xa
	.uahalf	0x36e
	.uaword	0x2ca
	.byte	0x4
	.byte	0x6
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"SDSTEP"
	.byte	0xa
	.uahalf	0x36f
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"VDTEN"
	.byte	0xa
	.uahalf	0x370
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"VDTOVEN"
	.byte	0xa
	.uahalf	0x371
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"VDTOVIEN"
	.byte	0xa
	.uahalf	0x372
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"VDTSTRT"
	.byte	0xa
	.uahalf	0x373
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"VDTSTP"
	.byte	0xa
	.uahalf	0x374
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"VDTCLR"
	.byte	0xa
	.uahalf	0x375
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF32
	.byte	0xa
	.uahalf	0x376
	.uaword	0x2ca
	.byte	0x4
	.byte	0x7
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"LPSLPEN"
	.byte	0xa
	.uahalf	0x377
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF26
	.byte	0xa
	.uahalf	0x378
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PMTRCSR0_Bits"
	.byte	0xa
	.uahalf	0x379
	.uaword	0x9251
	.uleb128 0x13
	.string	"_Ifx_SCU_PMTRCSR1_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x37c
	.uaword	0x944e
	.uleb128 0x15
	.string	"LJTCV"
	.byte	0xa
	.uahalf	0x37e
	.uaword	0x2ca
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"VDTCV"
	.byte	0xa
	.uahalf	0x37f
	.uaword	0x2ca
	.byte	0x4
	.byte	0xa
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF30
	.byte	0xa
	.uahalf	0x380
	.uaword	0x2ca
	.byte	0x4
	.byte	0x6
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PMTRCSR1_Bits"
	.byte	0xa
	.uahalf	0x381
	.uaword	0x93f3
	.uleb128 0x13
	.string	"_Ifx_SCU_PMTRCSR2_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x384
	.uaword	0x9541
	.uleb128 0x15
	.string	"LDJMPREQ"
	.byte	0xa
	.uahalf	0x386
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF5
	.byte	0xa
	.uahalf	0x387
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"LJTRUN"
	.byte	0xa
	.uahalf	0x388
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF31
	.byte	0xa
	.uahalf	0x389
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"LJTOV"
	.byte	0xa
	.uahalf	0x38a
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF9
	.byte	0xa
	.uahalf	0x38b
	.uaword	0x2ca
	.byte	0x4
	.byte	0x3
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"LJTOVCLR"
	.byte	0xa
	.uahalf	0x38c
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF28
	.byte	0xa
	.uahalf	0x38d
	.uaword	0x2ca
	.byte	0x4
	.byte	0x3
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"LJTCNT"
	.byte	0xa
	.uahalf	0x38e
	.uaword	0x2ca
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PMTRCSR2_Bits"
	.byte	0xa
	.uahalf	0x38f
	.uaword	0x946c
	.uleb128 0x13
	.string	"_Ifx_SCU_PMTRCSR3_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x392
	.uaword	0x9647
	.uleb128 0x15
	.string	"VDROOPREQ"
	.byte	0xa
	.uahalf	0x394
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF5
	.byte	0xa
	.uahalf	0x395
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"VDTRUN"
	.byte	0xa
	.uahalf	0x396
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF31
	.byte	0xa
	.uahalf	0x397
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"VDTOV"
	.byte	0xa
	.uahalf	0x398
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF9
	.byte	0xa
	.uahalf	0x399
	.uaword	0x2ca
	.byte	0x4
	.byte	0x3
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"VDTOVCLR"
	.byte	0xa
	.uahalf	0x39a
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF28
	.byte	0xa
	.uahalf	0x39b
	.uaword	0x2ca
	.byte	0x4
	.byte	0x3
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"VDTCNT"
	.byte	0xa
	.uahalf	0x39c
	.uaword	0x2ca
	.byte	0x4
	.byte	0xa
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF30
	.byte	0xa
	.uahalf	0x39d
	.uaword	0x2ca
	.byte	0x4
	.byte	0x6
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PMTRCSR3_Bits"
	.byte	0xa
	.uahalf	0x39e
	.uaword	0x955f
	.uleb128 0x13
	.string	"_Ifx_SCU_RSTCON_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x3a1
	.uaword	0x9761
	.uleb128 0x15
	.string	"ESR0"
	.byte	0xa
	.uahalf	0x3a3
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"ESR1"
	.byte	0xa
	.uahalf	0x3a4
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF3
	.byte	0xa
	.uahalf	0x3a5
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"SMU"
	.byte	0xa
	.uahalf	0x3a6
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"SW"
	.byte	0xa
	.uahalf	0x3a7
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"STM0"
	.byte	0xa
	.uahalf	0x3a8
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"STM1"
	.byte	0xa
	.uahalf	0x3a9
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"STM2"
	.byte	0xa
	.uahalf	0x3aa
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"STM3"
	.byte	0xa
	.uahalf	0x3ab
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF11
	.byte	0xa
	.uahalf	0x3ac
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF21
	.byte	0xa
	.uahalf	0x3ad
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF32
	.byte	0xa
	.uahalf	0x3ae
	.uaword	0x2ca
	.byte	0x4
	.byte	0xa
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_RSTCON_Bits"
	.byte	0xa
	.uahalf	0x3af
	.uaword	0x9665
	.uleb128 0x13
	.string	"_Ifx_SCU_RSTCON2_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x3b2
	.uaword	0x987c
	.uleb128 0x15
	.string	"FRTO"
	.byte	0xa
	.uahalf	0x3b4
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CLRC"
	.byte	0xa
	.uahalf	0x3b5
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF5
	.byte	0xa
	.uahalf	0x3b6
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF34
	.byte	0xa
	.uahalf	0x3b7
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF3
	.byte	0xa
	.uahalf	0x3b8
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF8
	.byte	0xa
	.uahalf	0x3b9
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF31
	.byte	0xa
	.uahalf	0x3ba
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CSSX"
	.byte	0xa
	.uahalf	0x3bb
	.uaword	0x2ca
	.byte	0x4
	.byte	0x6
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF28
	.byte	0xa
	.uahalf	0x3bc
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF10
	.byte	0xa
	.uahalf	0x3bd
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF36
	.byte	0xa
	.uahalf	0x3be
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"USRINFO"
	.byte	0xa
	.uahalf	0x3bf
	.uaword	0x2ca
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_RSTCON2_Bits"
	.byte	0xa
	.uahalf	0x3c0
	.uaword	0x977d
	.uleb128 0x13
	.string	"_Ifx_SCU_RSTCON3_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x3c3
	.uaword	0x98cb
	.uleb128 0x14
	.uaword	.LASF14
	.byte	0xa
	.uahalf	0x3c5
	.uaword	0x2ca
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_RSTCON3_Bits"
	.byte	0xa
	.uahalf	0x3c6
	.uaword	0x9899
	.uleb128 0x13
	.string	"_Ifx_SCU_RSTSTAT_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x3c9
	.uaword	0x9b15
	.uleb128 0x15
	.string	"ESR0"
	.byte	0xa
	.uahalf	0x3cb
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"ESR1"
	.byte	0xa
	.uahalf	0x3cc
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF5
	.byte	0xa
	.uahalf	0x3cd
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"SMU"
	.byte	0xa
	.uahalf	0x3ce
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"SW"
	.byte	0xa
	.uahalf	0x3cf
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"STM0"
	.byte	0xa
	.uahalf	0x3d0
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"STM1"
	.byte	0xa
	.uahalf	0x3d1
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"STM2"
	.byte	0xa
	.uahalf	0x3d2
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"STM3"
	.byte	0xa
	.uahalf	0x3d3
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF9
	.byte	0xa
	.uahalf	0x3d4
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF15
	.byte	0xa
	.uahalf	0x3d5
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF22
	.byte	0xa
	.uahalf	0x3d6
	.uaword	0x2ca
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"PORST"
	.byte	0xa
	.uahalf	0x3d7
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF37
	.byte	0xa
	.uahalf	0x3d8
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CB0"
	.byte	0xa
	.uahalf	0x3d9
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CB1"
	.byte	0xa
	.uahalf	0x3da
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CB3"
	.byte	0xa
	.uahalf	0x3db
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF23
	.byte	0xa
	.uahalf	0x3dc
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF32
	.byte	0xa
	.uahalf	0x3dd
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"EVRC"
	.byte	0xa
	.uahalf	0x3de
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"EVR33"
	.byte	0xa
	.uahalf	0x3df
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"SWD"
	.byte	0xa
	.uahalf	0x3e0
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"HSMS"
	.byte	0xa
	.uahalf	0x3e1
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"HSMA"
	.byte	0xa
	.uahalf	0x3e2
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"STBYR"
	.byte	0xa
	.uahalf	0x3e3
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"LBPORST"
	.byte	0xa
	.uahalf	0x3e4
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"LBTERM"
	.byte	0xa
	.uahalf	0x3e5
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF33
	.byte	0xa
	.uahalf	0x3e6
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_RSTSTAT_Bits"
	.byte	0xa
	.uahalf	0x3e7
	.uaword	0x98e8
	.uleb128 0x13
	.string	"_Ifx_SCU_SEICON0_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x3ea
	.uaword	0x9b9a
	.uleb128 0x14
	.uaword	.LASF14
	.byte	0xa
	.uahalf	0x3ec
	.uaword	0x2f6
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF43
	.byte	0xa
	.uahalf	0x3ed
	.uaword	0x2f6
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"EPW"
	.byte	0xa
	.uahalf	0x3ee
	.uaword	0x2f6
	.byte	0x4
	.byte	0xe
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"REL"
	.byte	0xa
	.uahalf	0x3ef
	.uaword	0x2f6
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_SEICON0_Bits"
	.byte	0xa
	.uahalf	0x3f0
	.uaword	0x9b32
	.uleb128 0x13
	.string	"_Ifx_SCU_SEICON1_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x3f3
	.uaword	0x9c54
	.uleb128 0x14
	.uaword	.LASF14
	.byte	0xa
	.uahalf	0x3f5
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF7
	.byte	0xa
	.uahalf	0x3f6
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"IR0"
	.byte	0xa
	.uahalf	0x3f7
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"DR"
	.byte	0xa
	.uahalf	0x3f8
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF3
	.byte	0xa
	.uahalf	0x3f9
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"IR1"
	.byte	0xa
	.uahalf	0x3fa
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF31
	.byte	0xa
	.uahalf	0x3fb
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1a
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_SEICON1_Bits"
	.byte	0xa
	.uahalf	0x3fc
	.uaword	0x9bb7
	.uleb128 0x13
	.string	"_Ifx_SCU_SEISR_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x3ff
	.uaword	0x9d1b
	.uleb128 0x15
	.string	"AE"
	.byte	0xa
	.uahalf	0x401
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"OE"
	.byte	0xa
	.uahalf	0x402
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"IS0"
	.byte	0xa
	.uahalf	0x403
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"DS"
	.byte	0xa
	.uahalf	0x404
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"TO"
	.byte	0xa
	.uahalf	0x405
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"IS1"
	.byte	0xa
	.uahalf	0x406
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF31
	.byte	0xa
	.uahalf	0x407
	.uaword	0x2ca
	.byte	0x4
	.byte	0xa
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"TIM"
	.byte	0xa
	.uahalf	0x408
	.uaword	0x2ca
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_SEISR_Bits"
	.byte	0xa
	.uahalf	0x409
	.uaword	0x9c71
	.uleb128 0x13
	.string	"_Ifx_SCU_STCON_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x40c
	.uaword	0x9db4
	.uleb128 0x14
	.uaword	.LASF14
	.byte	0xa
	.uahalf	0x40e
	.uaword	0x2ca
	.byte	0x4
	.byte	0xd
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"SFCBAE"
	.byte	0xa
	.uahalf	0x40f
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CFCBAE"
	.byte	0xa
	.uahalf	0x410
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"STP"
	.byte	0xa
	.uahalf	0x411
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF17
	.byte	0xa
	.uahalf	0x412
	.uaword	0x2ca
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_STCON_Bits"
	.byte	0xa
	.uahalf	0x413
	.uaword	0x9d36
	.uleb128 0x13
	.string	"_Ifx_SCU_STMEM1_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x416
	.uaword	0x9e00
	.uleb128 0x15
	.string	"MEM"
	.byte	0xa
	.uahalf	0x418
	.uaword	0x2ca
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_STMEM1_Bits"
	.byte	0xa
	.uahalf	0x419
	.uaword	0x9dcf
	.uleb128 0x13
	.string	"_Ifx_SCU_STMEM2_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x41c
	.uaword	0x9e4d
	.uleb128 0x15
	.string	"MEM"
	.byte	0xa
	.uahalf	0x41e
	.uaword	0x2ca
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_STMEM2_Bits"
	.byte	0xa
	.uahalf	0x41f
	.uaword	0x9e1c
	.uleb128 0x13
	.string	"_Ifx_SCU_STMEM3_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x422
	.uaword	0x9e9a
	.uleb128 0x15
	.string	"MEM"
	.byte	0xa
	.uahalf	0x424
	.uaword	0x2ca
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_STMEM3_Bits"
	.byte	0xa
	.uahalf	0x425
	.uaword	0x9e69
	.uleb128 0x13
	.string	"_Ifx_SCU_STMEM4_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x428
	.uaword	0x9ee7
	.uleb128 0x15
	.string	"MEM"
	.byte	0xa
	.uahalf	0x42a
	.uaword	0x2ca
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_STMEM4_Bits"
	.byte	0xa
	.uahalf	0x42b
	.uaword	0x9eb6
	.uleb128 0x13
	.string	"_Ifx_SCU_STMEM5_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x42e
	.uaword	0x9f34
	.uleb128 0x15
	.string	"MEM"
	.byte	0xa
	.uahalf	0x430
	.uaword	0x2ca
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_STMEM5_Bits"
	.byte	0xa
	.uahalf	0x431
	.uaword	0x9f03
	.uleb128 0x13
	.string	"_Ifx_SCU_STMEM6_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x434
	.uaword	0x9f81
	.uleb128 0x15
	.string	"MEM"
	.byte	0xa
	.uahalf	0x436
	.uaword	0x2ca
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_STMEM6_Bits"
	.byte	0xa
	.uahalf	0x437
	.uaword	0x9f50
	.uleb128 0x13
	.string	"_Ifx_SCU_STSTAT_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x43a
	.uaword	0xa0c6
	.uleb128 0x15
	.string	"HWCFG"
	.byte	0xa
	.uahalf	0x43c
	.uaword	0x2ca
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"FTM"
	.byte	0xa
	.uahalf	0x43d
	.uaword	0x2ca
	.byte	0x4
	.byte	0x7
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"MODE"
	.byte	0xa
	.uahalf	0x43e
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"FCBAE"
	.byte	0xa
	.uahalf	0x43f
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"LUDIS"
	.byte	0xa
	.uahalf	0x440
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF11
	.byte	0xa
	.uahalf	0x441
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"TRSTL"
	.byte	0xa
	.uahalf	0x442
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"SPDEN"
	.byte	0xa
	.uahalf	0x443
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF23
	.byte	0xa
	.uahalf	0x444
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF32
	.byte	0xa
	.uahalf	0x445
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF44
	.byte	0xa
	.uahalf	0x446
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"RAMINT"
	.byte	0xa
	.uahalf	0x447
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF20
	.byte	0xa
	.uahalf	0x448
	.uaword	0x2ca
	.byte	0x4
	.byte	0x3
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF2
	.byte	0xa
	.uahalf	0x449
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_STSTAT_Bits"
	.byte	0xa
	.uahalf	0x44a
	.uaword	0x9f9d
	.uleb128 0x13
	.string	"_Ifx_SCU_SWAPCTRL_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x44d
	.uaword	0xa13f
	.uleb128 0x15
	.string	"ADDRCFG"
	.byte	0xa
	.uahalf	0x44f
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"SPARE"
	.byte	0xa
	.uahalf	0x450
	.uaword	0x2ca
	.byte	0x4
	.byte	0xe
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF17
	.byte	0xa
	.uahalf	0x451
	.uaword	0x2ca
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_SWAPCTRL_Bits"
	.byte	0xa
	.uahalf	0x452
	.uaword	0xa0e2
	.uleb128 0x13
	.string	"_Ifx_SCU_SWRSTCON_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x455
	.uaword	0xa1dd
	.uleb128 0x14
	.uaword	.LASF14
	.byte	0xa
	.uahalf	0x457
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"SWRSTREQ"
	.byte	0xa
	.uahalf	0x458
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF5
	.byte	0xa
	.uahalf	0x459
	.uaword	0x2ca
	.byte	0x4
	.byte	0x6
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF6
	.byte	0xa
	.uahalf	0x45a
	.uaword	0x2ca
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF17
	.byte	0xa
	.uahalf	0x45b
	.uaword	0x2ca
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_SWRSTCON_Bits"
	.byte	0xa
	.uahalf	0x45c
	.uaword	0xa15d
	.uleb128 0x13
	.string	"_Ifx_SCU_SYSCON_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x45f
	.uaword	0xa2db
	.uleb128 0x15
	.string	"CCTRIG0"
	.byte	0xa
	.uahalf	0x461
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF7
	.byte	0xa
	.uahalf	0x462
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"RAMINTM"
	.byte	0xa
	.uahalf	0x463
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"SETLUDIS"
	.byte	0xa
	.uahalf	0x464
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF8
	.byte	0xa
	.uahalf	0x465
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF31
	.byte	0xa
	.uahalf	0x466
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF29
	.byte	0xa
	.uahalf	0x467
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"DDC"
	.byte	0xa
	.uahalf	0x468
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF9
	.byte	0xa
	.uahalf	0x469
	.uaword	0x2ca
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF17
	.byte	0xa
	.uahalf	0x46a
	.uaword	0x2ca
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_SYSCON_Bits"
	.byte	0xa
	.uahalf	0x46b
	.uaword	0xa1fb
	.uleb128 0x13
	.string	"_Ifx_SCU_SYSPLLCON0_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x46e
	.uaword	0xa3eb
	.uleb128 0x14
	.uaword	.LASF14
	.byte	0xa
	.uahalf	0x470
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"MODEN"
	.byte	0xa
	.uahalf	0x471
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF34
	.byte	0xa
	.uahalf	0x472
	.uaword	0x2ca
	.byte	0x4
	.byte	0x6
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"NDIV"
	.byte	0xa
	.uahalf	0x473
	.uaword	0x2ca
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"PLLPWD"
	.byte	0xa
	.uahalf	0x474
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF37
	.byte	0xa
	.uahalf	0x475
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"RESLD"
	.byte	0xa
	.uahalf	0x476
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF4
	.byte	0xa
	.uahalf	0x477
	.uaword	0x2ca
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"PDIV"
	.byte	0xa
	.uahalf	0x478
	.uaword	0x2ca
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF24
	.byte	0xa
	.uahalf	0x479
	.uaword	0x2ca
	.byte	0x4
	.byte	0x3
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"INSEL"
	.byte	0xa
	.uahalf	0x47a
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_SYSPLLCON0_Bits"
	.byte	0xa
	.uahalf	0x47b
	.uaword	0xa2f7
	.uleb128 0x13
	.string	"_Ifx_SCU_SYSPLLCON1_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x47e
	.uaword	0xa454
	.uleb128 0x15
	.string	"K2DIV"
	.byte	0xa
	.uahalf	0x480
	.uaword	0x2ca
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF34
	.byte	0xa
	.uahalf	0x481
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1d
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_SYSPLLCON1_Bits"
	.byte	0xa
	.uahalf	0x482
	.uaword	0xa40b
	.uleb128 0x13
	.string	"_Ifx_SCU_SYSPLLCON2_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x485
	.uaword	0xa4be
	.uleb128 0x15
	.string	"MODCFG"
	.byte	0xa
	.uahalf	0x487
	.uaword	0x2ca
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF17
	.byte	0xa
	.uahalf	0x488
	.uaword	0x2ca
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_SYSPLLCON2_Bits"
	.byte	0xa
	.uahalf	0x489
	.uaword	0xa474
	.uleb128 0x13
	.string	"_Ifx_SCU_SYSPLLSTAT_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x48c
	.uaword	0xa59b
	.uleb128 0x14
	.uaword	.LASF14
	.byte	0xa
	.uahalf	0x48e
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"PWDSTAT"
	.byte	0xa
	.uahalf	0x48f
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"LOCK"
	.byte	0xa
	.uahalf	0x490
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF34
	.byte	0xa
	.uahalf	0x491
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"K2RDY"
	.byte	0xa
	.uahalf	0x492
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF31
	.byte	0xa
	.uahalf	0x493
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"MODRUN"
	.byte	0xa
	.uahalf	0x494
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF6
	.byte	0xa
	.uahalf	0x495
	.uaword	0x2ca
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_SYSPLLSTAT_Bits"
	.byte	0xa
	.uahalf	0x496
	.uaword	0xa4de
	.uleb128 0x13
	.string	"_Ifx_SCU_TRAPCLR_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x499
	.uaword	0xa63c
	.uleb128 0x15
	.string	"ESR0T"
	.byte	0xa
	.uahalf	0x49b
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"ESR1T"
	.byte	0xa
	.uahalf	0x49c
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"TRAP2"
	.byte	0xa
	.uahalf	0x49d
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"SMUT"
	.byte	0xa
	.uahalf	0x49e
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF3
	.byte	0xa
	.uahalf	0x49f
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_TRAPCLR_Bits"
	.byte	0xa
	.uahalf	0x4a0
	.uaword	0xa5bb
	.uleb128 0x13
	.string	"_Ifx_SCU_TRAPDIS0_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x4a3
	.uaword	0xa842
	.uleb128 0x15
	.string	"CPU0ESR0T"
	.byte	0xa
	.uahalf	0x4a5
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CPU0ESR1T"
	.byte	0xa
	.uahalf	0x4a6
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CPU0TRAP2T"
	.byte	0xa
	.uahalf	0x4a7
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CPU0SMUT"
	.byte	0xa
	.uahalf	0x4a8
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF3
	.byte	0xa
	.uahalf	0x4a9
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CPU1ESR0T"
	.byte	0xa
	.uahalf	0x4aa
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CPU1ESR1T"
	.byte	0xa
	.uahalf	0x4ab
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CPU1TRAP2T"
	.byte	0xa
	.uahalf	0x4ac
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CPU1SMUT"
	.byte	0xa
	.uahalf	0x4ad
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF1
	.byte	0xa
	.uahalf	0x4ae
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CPU2ESR0T"
	.byte	0xa
	.uahalf	0x4af
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CPU2ESR1T"
	.byte	0xa
	.uahalf	0x4b0
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CPU2TRAP2T"
	.byte	0xa
	.uahalf	0x4b1
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CPU2SMUT"
	.byte	0xa
	.uahalf	0x4b2
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF21
	.byte	0xa
	.uahalf	0x4b3
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CPU3ESR0T"
	.byte	0xa
	.uahalf	0x4b4
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CPU3ESR1T"
	.byte	0xa
	.uahalf	0x4b5
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CPU3TRAP2T"
	.byte	0xa
	.uahalf	0x4b6
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CPU3SMUT"
	.byte	0xa
	.uahalf	0x4b7
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF2
	.byte	0xa
	.uahalf	0x4b8
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_TRAPDIS0_Bits"
	.byte	0xa
	.uahalf	0x4b9
	.uaword	0xa659
	.uleb128 0x13
	.string	"_Ifx_SCU_TRAPDIS1_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x4bc
	.uaword	0xa8db
	.uleb128 0x14
	.uaword	.LASF14
	.byte	0xa
	.uahalf	0x4be
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF3
	.byte	0xa
	.uahalf	0x4bf
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF6
	.byte	0xa
	.uahalf	0x4c0
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF1
	.byte	0xa
	.uahalf	0x4c1
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF17
	.byte	0xa
	.uahalf	0x4c2
	.uaword	0x2ca
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_TRAPDIS1_Bits"
	.byte	0xa
	.uahalf	0x4c3
	.uaword	0xa860
	.uleb128 0x13
	.string	"_Ifx_SCU_TRAPSET_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x4c6
	.uaword	0xa97a
	.uleb128 0x15
	.string	"ESR0T"
	.byte	0xa
	.uahalf	0x4c8
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"ESR1T"
	.byte	0xa
	.uahalf	0x4c9
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"TRAP2"
	.byte	0xa
	.uahalf	0x4ca
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"SMUT"
	.byte	0xa
	.uahalf	0x4cb
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF3
	.byte	0xa
	.uahalf	0x4cc
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_TRAPSET_Bits"
	.byte	0xa
	.uahalf	0x4cd
	.uaword	0xa8f9
	.uleb128 0x13
	.string	"_Ifx_SCU_TRAPSTAT_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x4d0
	.uaword	0xaa19
	.uleb128 0x15
	.string	"ESR0T"
	.byte	0xa
	.uahalf	0x4d2
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"ESR1T"
	.byte	0xa
	.uahalf	0x4d3
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"TRAP2"
	.byte	0xa
	.uahalf	0x4d4
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"SMUT"
	.byte	0xa
	.uahalf	0x4d5
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF3
	.byte	0xa
	.uahalf	0x4d6
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_TRAPSTAT_Bits"
	.byte	0xa
	.uahalf	0x4d7
	.uaword	0xa997
	.uleb128 0x13
	.string	"_Ifx_SCU_WDTCPU_CON0_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x4da
	.uaword	0xaaa2
	.uleb128 0x14
	.uaword	.LASF43
	.byte	0xa
	.uahalf	0x4dc
	.uaword	0x2f6
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"LCK"
	.byte	0xa
	.uahalf	0x4dd
	.uaword	0x2f6
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"PW"
	.byte	0xa
	.uahalf	0x4de
	.uaword	0x2f6
	.byte	0x4
	.byte	0xe
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"REL"
	.byte	0xa
	.uahalf	0x4df
	.uaword	0x2f6
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_WDTCPU_CON0_Bits"
	.byte	0xa
	.uahalf	0x4e0
	.uaword	0xaa37
	.uleb128 0x13
	.string	"_Ifx_SCU_WDTCPU_CON1_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x4e3
	.uaword	0xabac
	.uleb128 0x14
	.uaword	.LASF14
	.byte	0xa
	.uahalf	0x4e5
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF7
	.byte	0xa
	.uahalf	0x4e6
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"IR0"
	.byte	0xa
	.uahalf	0x4e7
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"DR"
	.byte	0xa
	.uahalf	0x4e8
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF3
	.byte	0xa
	.uahalf	0x4e9
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"IR1"
	.byte	0xa
	.uahalf	0x4ea
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"UR"
	.byte	0xa
	.uahalf	0x4eb
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"PAR"
	.byte	0xa
	.uahalf	0x4ec
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"TCR"
	.byte	0xa
	.uahalf	0x4ed
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"TCTR"
	.byte	0xa
	.uahalf	0x4ee
	.uaword	0x2ca
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF17
	.byte	0xa
	.uahalf	0x4ef
	.uaword	0x2ca
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_WDTCPU_CON1_Bits"
	.byte	0xa
	.uahalf	0x4f0
	.uaword	0xaac3
	.uleb128 0x13
	.string	"_Ifx_SCU_WDTCPU_SR_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x4f3
	.uaword	0xacb0
	.uleb128 0x15
	.string	"AE"
	.byte	0xa
	.uahalf	0x4f5
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"OE"
	.byte	0xa
	.uahalf	0x4f6
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"IS0"
	.byte	0xa
	.uahalf	0x4f7
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"DS"
	.byte	0xa
	.uahalf	0x4f8
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"TO"
	.byte	0xa
	.uahalf	0x4f9
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"IS1"
	.byte	0xa
	.uahalf	0x4fa
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"US"
	.byte	0xa
	.uahalf	0x4fb
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"PAS"
	.byte	0xa
	.uahalf	0x4fc
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"TCS"
	.byte	0xa
	.uahalf	0x4fd
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"TCT"
	.byte	0xa
	.uahalf	0x4fe
	.uaword	0x2ca
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"TIM"
	.byte	0xa
	.uahalf	0x4ff
	.uaword	0x2ca
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_WDTCPU_SR_Bits"
	.byte	0xa
	.uahalf	0x500
	.uaword	0xabcd
	.uleb128 0x13
	.string	"_Ifx_SCU_WDTS_CON0_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x503
	.uaword	0xad38
	.uleb128 0x14
	.uaword	.LASF43
	.byte	0xa
	.uahalf	0x505
	.uaword	0x2f6
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"LCK"
	.byte	0xa
	.uahalf	0x506
	.uaword	0x2f6
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"PW"
	.byte	0xa
	.uahalf	0x507
	.uaword	0x2f6
	.byte	0x4
	.byte	0xe
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"REL"
	.byte	0xa
	.uahalf	0x508
	.uaword	0x2f6
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_WDTS_CON0_Bits"
	.byte	0xa
	.uahalf	0x509
	.uaword	0xaccf
	.uleb128 0x13
	.string	"_Ifx_SCU_WDTS_CON1_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x50c
	.uaword	0xae41
	.uleb128 0x15
	.string	"CLRIRF"
	.byte	0xa
	.uahalf	0x50e
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF7
	.byte	0xa
	.uahalf	0x50f
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"IR0"
	.byte	0xa
	.uahalf	0x510
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"DR"
	.byte	0xa
	.uahalf	0x511
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF3
	.byte	0xa
	.uahalf	0x512
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"IR1"
	.byte	0xa
	.uahalf	0x513
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"UR"
	.byte	0xa
	.uahalf	0x514
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"PAR"
	.byte	0xa
	.uahalf	0x515
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"TCR"
	.byte	0xa
	.uahalf	0x516
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"TCTR"
	.byte	0xa
	.uahalf	0x517
	.uaword	0x2ca
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF17
	.byte	0xa
	.uahalf	0x518
	.uaword	0x2ca
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_WDTS_CON1_Bits"
	.byte	0xa
	.uahalf	0x519
	.uaword	0xad57
	.uleb128 0x13
	.string	"_Ifx_SCU_WDTS_SR_Bits"
	.byte	0x4
	.byte	0xa
	.uahalf	0x51c
	.uaword	0xaf41
	.uleb128 0x15
	.string	"AE"
	.byte	0xa
	.uahalf	0x51e
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"OE"
	.byte	0xa
	.uahalf	0x51f
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"IS0"
	.byte	0xa
	.uahalf	0x520
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"DS"
	.byte	0xa
	.uahalf	0x521
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"TO"
	.byte	0xa
	.uahalf	0x522
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"IS1"
	.byte	0xa
	.uahalf	0x523
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"US"
	.byte	0xa
	.uahalf	0x524
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"PAS"
	.byte	0xa
	.uahalf	0x525
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"TCS"
	.byte	0xa
	.uahalf	0x526
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"TCT"
	.byte	0xa
	.uahalf	0x527
	.uaword	0x2ca
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"TIM"
	.byte	0xa
	.uahalf	0x528
	.uaword	0x2ca
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_WDTS_SR_Bits"
	.byte	0xa
	.uahalf	0x529
	.uaword	0xae60
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x531
	.uaword	0xaf86
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x533
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x534
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x535
	.uaword	0x6184
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_ACCEN00"
	.byte	0xa
	.uahalf	0x536
	.uaword	0xaf5e
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x539
	.uaword	0xafc6
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x53b
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x53c
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x53d
	.uaword	0x61d0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_ACCEN01"
	.byte	0xa
	.uahalf	0x53e
	.uaword	0xaf9e
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x541
	.uaword	0xb006
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x543
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x544
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x545
	.uaword	0x6441
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_ACCEN10"
	.byte	0xa
	.uahalf	0x546
	.uaword	0xafde
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x549
	.uaword	0xb046
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x54b
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x54c
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x54d
	.uaword	0x648d
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_ACCEN11"
	.byte	0xa
	.uahalf	0x54e
	.uaword	0xb01e
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x551
	.uaword	0xb086
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x553
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x554
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x555
	.uaword	0x6560
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_ARSTDIS"
	.byte	0xa
	.uahalf	0x556
	.uaword	0xb05e
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x559
	.uaword	0xb0c6
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x55b
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x55c
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x55d
	.uaword	0x6681
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_CCUCON0"
	.byte	0xa
	.uahalf	0x55e
	.uaword	0xb09e
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x561
	.uaword	0xb106
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x563
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x564
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x565
	.uaword	0x67c2
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_CCUCON1"
	.byte	0xa
	.uahalf	0x566
	.uaword	0xb0de
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x569
	.uaword	0xb146
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x56b
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x56c
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x56d
	.uaword	0x68c5
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_CCUCON2"
	.byte	0xa
	.uahalf	0x56e
	.uaword	0xb11e
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x571
	.uaword	0xb186
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x573
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x574
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x575
	.uaword	0x6a3d
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_CCUCON3"
	.byte	0xa
	.uahalf	0x576
	.uaword	0xb15e
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x579
	.uaword	0xb1c6
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x57b
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x57c
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x57d
	.uaword	0x6af7
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_CCUCON4"
	.byte	0xa
	.uahalf	0x57e
	.uaword	0xb19e
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x581
	.uaword	0xb206
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x583
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x584
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x585
	.uaword	0x6ba1
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_CCUCON5"
	.byte	0xa
	.uahalf	0x586
	.uaword	0xb1de
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x589
	.uaword	0xb246
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x58b
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x58c
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x58d
	.uaword	0x6c06
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_CCUCON6"
	.byte	0xa
	.uahalf	0x58e
	.uaword	0xb21e
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x591
	.uaword	0xb286
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x593
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x594
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x595
	.uaword	0x6c6b
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_CCUCON7"
	.byte	0xa
	.uahalf	0x596
	.uaword	0xb25e
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x599
	.uaword	0xb2c6
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x59b
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x59c
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x59d
	.uaword	0x6cd0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_CCUCON8"
	.byte	0xa
	.uahalf	0x59e
	.uaword	0xb29e
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x5a1
	.uaword	0xb306
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x5a3
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x5a4
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x5a5
	.uaword	0x6d35
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_CCUCON9"
	.byte	0xa
	.uahalf	0x5a6
	.uaword	0xb2de
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x5a9
	.uaword	0xb346
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x5ab
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x5ac
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x5ad
	.uaword	0x6e1e
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_CHIPID"
	.byte	0xa
	.uahalf	0x5ae
	.uaword	0xb31e
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x5b1
	.uaword	0xb385
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x5b3
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x5b4
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x5b5
	.uaword	0x6f15
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_DTSCLIM"
	.byte	0xa
	.uahalf	0x5b6
	.uaword	0xb35d
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x5b9
	.uaword	0xb3c5
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x5bb
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x5bc
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x5bd
	.uaword	0x6f77
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_DTSCSTAT"
	.byte	0xa
	.uahalf	0x5be
	.uaword	0xb39d
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x5c1
	.uaword	0xb406
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x5c3
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x5c4
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x5c5
	.uaword	0x6ffc
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_EICON0"
	.byte	0xa
	.uahalf	0x5c6
	.uaword	0xb3de
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x5c9
	.uaword	0xb445
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x5cb
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x5cc
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x5cd
	.uaword	0x70b4
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_EICON1"
	.byte	0xa
	.uahalf	0x5ce
	.uaword	0xb41d
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x5d1
	.uaword	0xb484
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x5d3
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x5d4
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x5d5
	.uaword	0x7231
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_EICR"
	.byte	0xa
	.uahalf	0x5d6
	.uaword	0xb45c
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x5d9
	.uaword	0xb4c1
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x5db
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x5dc
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x5dd
	.uaword	0x741c
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_EIFILT"
	.byte	0xa
	.uahalf	0x5de
	.uaword	0xb499
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x5e1
	.uaword	0xb500
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x5e3
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x5e4
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x5e5
	.uaword	0x7507
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_EIFR"
	.byte	0xa
	.uahalf	0x5e6
	.uaword	0xb4d8
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x5e9
	.uaword	0xb53d
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x5eb
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x5ec
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x5ed
	.uaword	0x75ca
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_EISR"
	.byte	0xa
	.uahalf	0x5ee
	.uaword	0xb515
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x5f1
	.uaword	0xb57a
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x5f3
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x5f4
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x5f5
	.uaword	0x7697
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_EMSR"
	.byte	0xa
	.uahalf	0x5f6
	.uaword	0xb552
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x5f9
	.uaword	0xb5b7
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x5fb
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x5fc
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x5fd
	.uaword	0x771c
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_EMSSW"
	.byte	0xa
	.uahalf	0x5fe
	.uaword	0xb58f
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x601
	.uaword	0xb5f5
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x603
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x604
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x605
	.uaword	0x7797
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_ESRCFGX_ESRCFGX"
	.byte	0xa
	.uahalf	0x606
	.uaword	0xb5cd
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x609
	.uaword	0xb63d
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x60b
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x60c
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x60d
	.uaword	0x7812
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_ESROCFG"
	.byte	0xa
	.uahalf	0x60e
	.uaword	0xb615
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x611
	.uaword	0xb67d
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x613
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x614
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x615
	.uaword	0x78f4
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_EXTCON"
	.byte	0xa
	.uahalf	0x616
	.uaword	0xb655
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x619
	.uaword	0xb6bc
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x61b
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x61c
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x61d
	.uaword	0x799b
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_FDR"
	.byte	0xa
	.uahalf	0x61e
	.uaword	0xb694
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x621
	.uaword	0xb6f8
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x623
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x624
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x625
	.uaword	0x7b14
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_FMR"
	.byte	0xa
	.uahalf	0x626
	.uaword	0xb6d0
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x629
	.uaword	0xb734
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x62b
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x62c
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x62d
	.uaword	0x7b8b
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_ID"
	.byte	0xa
	.uahalf	0x62e
	.uaword	0xb70c
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x631
	.uaword	0xb76f
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x633
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x634
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x635
	.uaword	0x7d82
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_IGCR"
	.byte	0xa
	.uahalf	0x636
	.uaword	0xb747
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x639
	.uaword	0xb7ac
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x63b
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x63c
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x63d
	.uaword	0x7deb
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_IN"
	.byte	0xa
	.uahalf	0x63e
	.uaword	0xb784
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x641
	.uaword	0xb7e7
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x643
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x644
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x645
	.uaword	0x7e7a
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_IOCR"
	.byte	0xa
	.uahalf	0x646
	.uaword	0xb7bf
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x649
	.uaword	0xb824
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x64b
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x64c
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x64d
	.uaword	0x7f6c
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_LBISTCTRL0"
	.byte	0xa
	.uahalf	0x64e
	.uaword	0xb7fc
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x651
	.uaword	0xb867
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x653
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x654
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x655
	.uaword	0x8016
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_LBISTCTRL1"
	.byte	0xa
	.uahalf	0x656
	.uaword	0xb83f
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x659
	.uaword	0xb8aa
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x65b
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x65c
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x65d
	.uaword	0x8080
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_LBISTCTRL2"
	.byte	0xa
	.uahalf	0x65e
	.uaword	0xb882
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x661
	.uaword	0xb8ed
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x663
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x664
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x665
	.uaword	0x80db
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_LBISTCTRL3"
	.byte	0xa
	.uahalf	0x666
	.uaword	0xb8c5
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x669
	.uaword	0xb930
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x66b
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x66c
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x66d
	.uaword	0x8189
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_LCLCON0"
	.byte	0xa
	.uahalf	0x66e
	.uaword	0xb908
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x671
	.uaword	0xb970
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x673
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x674
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x675
	.uaword	0x8234
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_LCLCON1"
	.byte	0xa
	.uahalf	0x676
	.uaword	0xb948
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x679
	.uaword	0xb9b0
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x67b
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x67c
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x67d
	.uaword	0x8381
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_LCLTEST"
	.byte	0xa
	.uahalf	0x67e
	.uaword	0xb988
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x681
	.uaword	0xb9f0
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x683
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x684
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x685
	.uaword	0x83f5
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_MANID"
	.byte	0xa
	.uahalf	0x686
	.uaword	0xb9c8
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x689
	.uaword	0xba2e
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x68b
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x68c
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x68d
	.uaword	0x849a
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_OMR"
	.byte	0xa
	.uahalf	0x68e
	.uaword	0xba06
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x691
	.uaword	0xba6a
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x693
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x694
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x695
	.uaword	0x864e
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_OSCCON"
	.byte	0xa
	.uahalf	0x696
	.uaword	0xba42
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x699
	.uaword	0xbaa9
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x69b
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x69c
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x69d
	.uaword	0x86ba
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_OUT"
	.byte	0xa
	.uahalf	0x69e
	.uaword	0xba81
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x6a1
	.uaword	0xbae5
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x6a3
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x6a4
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x6a5
	.uaword	0x8806
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_OVCCON"
	.byte	0xa
	.uahalf	0x6a6
	.uaword	0xbabd
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x6a9
	.uaword	0xbb24
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x6ab
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x6ac
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x6ad
	.uaword	0x88ca
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_OVCENABLE"
	.byte	0xa
	.uahalf	0x6ae
	.uaword	0xbafc
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x6b1
	.uaword	0xbb66
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x6b3
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x6b4
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x6b5
	.uaword	0x8941
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PDISC"
	.byte	0xa
	.uahalf	0x6b6
	.uaword	0xbb3e
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x6b9
	.uaword	0xbba4
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x6bb
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x6bc
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x6bd
	.uaword	0x89d2
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PDR"
	.byte	0xa
	.uahalf	0x6be
	.uaword	0xbb7c
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x6c1
	.uaword	0xbbe0
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x6c3
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x6c4
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x6c5
	.uaword	0x8ab2
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PDRR"
	.byte	0xa
	.uahalf	0x6c6
	.uaword	0xbbb8
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x6c9
	.uaword	0xbc1d
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x6cb
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x6cc
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x6cd
	.uaword	0x8b9a
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PERPLLCON0"
	.byte	0xa
	.uahalf	0x6ce
	.uaword	0xbbf5
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x6d1
	.uaword	0xbc60
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x6d3
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x6d4
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x6d5
	.uaword	0x8c29
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PERPLLCON1"
	.byte	0xa
	.uahalf	0x6d6
	.uaword	0xbc38
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x6d9
	.uaword	0xbca3
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x6db
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x6dc
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x6dd
	.uaword	0x8d05
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PERPLLSTAT"
	.byte	0xa
	.uahalf	0x6de
	.uaword	0xbc7b
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x6e1
	.uaword	0xbce6
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x6e3
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x6e4
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x6e5
	.uaword	0x8d8c
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PMCSR0"
	.byte	0xa
	.uahalf	0x6e6
	.uaword	0xbcbe
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x6e9
	.uaword	0xbd25
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x6eb
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x6ec
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x6ed
	.uaword	0x8e0f
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PMCSR1"
	.byte	0xa
	.uahalf	0x6ee
	.uaword	0xbcfd
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x6f1
	.uaword	0xbd64
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x6f3
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x6f4
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x6f5
	.uaword	0x8e92
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PMCSR2"
	.byte	0xa
	.uahalf	0x6f6
	.uaword	0xbd3c
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x6f9
	.uaword	0xbda3
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x6fb
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x6fc
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x6fd
	.uaword	0x8f15
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PMCSR3"
	.byte	0xa
	.uahalf	0x6fe
	.uaword	0xbd7b
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x701
	.uaword	0xbde2
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x703
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x704
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x705
	.uaword	0x8f98
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PMCSR4"
	.byte	0xa
	.uahalf	0x706
	.uaword	0xbdba
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x709
	.uaword	0xbe21
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x70b
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x70c
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x70d
	.uaword	0x901b
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PMCSR5"
	.byte	0xa
	.uahalf	0x70e
	.uaword	0xbdf9
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x711
	.uaword	0xbe60
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x713
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x714
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x715
	.uaword	0x9141
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PMSTAT0"
	.byte	0xa
	.uahalf	0x716
	.uaword	0xbe38
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x719
	.uaword	0xbea0
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x71b
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x71c
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x71d
	.uaword	0x9234
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PMSWCR1"
	.byte	0xa
	.uahalf	0x71e
	.uaword	0xbe78
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x721
	.uaword	0xbee0
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x723
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x724
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x725
	.uaword	0x93d5
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PMTRCSR0"
	.byte	0xa
	.uahalf	0x726
	.uaword	0xbeb8
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x729
	.uaword	0xbf21
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x72b
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x72c
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x72d
	.uaword	0x944e
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PMTRCSR1"
	.byte	0xa
	.uahalf	0x72e
	.uaword	0xbef9
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x731
	.uaword	0xbf62
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x733
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x734
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x735
	.uaword	0x9541
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PMTRCSR2"
	.byte	0xa
	.uahalf	0x736
	.uaword	0xbf3a
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x739
	.uaword	0xbfa3
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x73b
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x73c
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x73d
	.uaword	0x9647
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PMTRCSR3"
	.byte	0xa
	.uahalf	0x73e
	.uaword	0xbf7b
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x741
	.uaword	0xbfe4
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x743
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x744
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x745
	.uaword	0x9761
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_RSTCON"
	.byte	0xa
	.uahalf	0x746
	.uaword	0xbfbc
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x749
	.uaword	0xc023
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x74b
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x74c
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x74d
	.uaword	0x987c
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_RSTCON2"
	.byte	0xa
	.uahalf	0x74e
	.uaword	0xbffb
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x751
	.uaword	0xc063
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x753
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x754
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x755
	.uaword	0x98cb
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_RSTCON3"
	.byte	0xa
	.uahalf	0x756
	.uaword	0xc03b
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x759
	.uaword	0xc0a3
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x75b
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x75c
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x75d
	.uaword	0x9b15
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_RSTSTAT"
	.byte	0xa
	.uahalf	0x75e
	.uaword	0xc07b
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x761
	.uaword	0xc0e3
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x763
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x764
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x765
	.uaword	0x9b9a
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_SEICON0"
	.byte	0xa
	.uahalf	0x766
	.uaword	0xc0bb
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x769
	.uaword	0xc123
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x76b
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x76c
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x76d
	.uaword	0x9c54
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_SEICON1"
	.byte	0xa
	.uahalf	0x76e
	.uaword	0xc0fb
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x771
	.uaword	0xc163
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x773
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x774
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x775
	.uaword	0x9d1b
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_SEISR"
	.byte	0xa
	.uahalf	0x776
	.uaword	0xc13b
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x779
	.uaword	0xc1a1
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x77b
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x77c
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x77d
	.uaword	0x9db4
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_STCON"
	.byte	0xa
	.uahalf	0x77e
	.uaword	0xc179
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x781
	.uaword	0xc1df
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x783
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x784
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x785
	.uaword	0x9e00
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_STMEM1"
	.byte	0xa
	.uahalf	0x786
	.uaword	0xc1b7
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x789
	.uaword	0xc21e
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x78b
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x78c
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x78d
	.uaword	0x9e4d
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_STMEM2"
	.byte	0xa
	.uahalf	0x78e
	.uaword	0xc1f6
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x791
	.uaword	0xc25d
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x793
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x794
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x795
	.uaword	0x9e9a
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_STMEM3"
	.byte	0xa
	.uahalf	0x796
	.uaword	0xc235
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x799
	.uaword	0xc29c
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x79b
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x79c
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x79d
	.uaword	0x9ee7
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_STMEM4"
	.byte	0xa
	.uahalf	0x79e
	.uaword	0xc274
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x7a1
	.uaword	0xc2db
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x7a3
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x7a4
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x7a5
	.uaword	0x9f34
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_STMEM5"
	.byte	0xa
	.uahalf	0x7a6
	.uaword	0xc2b3
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x7a9
	.uaword	0xc31a
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x7ab
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x7ac
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x7ad
	.uaword	0x9f81
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_STMEM6"
	.byte	0xa
	.uahalf	0x7ae
	.uaword	0xc2f2
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x7b1
	.uaword	0xc359
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x7b3
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x7b4
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x7b5
	.uaword	0xa0c6
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_STSTAT"
	.byte	0xa
	.uahalf	0x7b6
	.uaword	0xc331
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x7b9
	.uaword	0xc398
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x7bb
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x7bc
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x7bd
	.uaword	0xa13f
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_SWAPCTRL"
	.byte	0xa
	.uahalf	0x7be
	.uaword	0xc370
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x7c1
	.uaword	0xc3d9
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x7c3
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x7c4
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x7c5
	.uaword	0xa1dd
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_SWRSTCON"
	.byte	0xa
	.uahalf	0x7c6
	.uaword	0xc3b1
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x7c9
	.uaword	0xc41a
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x7cb
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x7cc
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x7cd
	.uaword	0xa2db
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_SYSCON"
	.byte	0xa
	.uahalf	0x7ce
	.uaword	0xc3f2
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x7d1
	.uaword	0xc459
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x7d3
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x7d4
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x7d5
	.uaword	0xa3eb
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_SYSPLLCON0"
	.byte	0xa
	.uahalf	0x7d6
	.uaword	0xc431
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x7d9
	.uaword	0xc49c
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x7db
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x7dc
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x7dd
	.uaword	0xa454
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_SYSPLLCON1"
	.byte	0xa
	.uahalf	0x7de
	.uaword	0xc474
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x7e1
	.uaword	0xc4df
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x7e3
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x7e4
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x7e5
	.uaword	0xa4be
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_SYSPLLCON2"
	.byte	0xa
	.uahalf	0x7e6
	.uaword	0xc4b7
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x7e9
	.uaword	0xc522
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x7eb
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x7ec
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x7ed
	.uaword	0xa59b
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_SYSPLLSTAT"
	.byte	0xa
	.uahalf	0x7ee
	.uaword	0xc4fa
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x7f1
	.uaword	0xc565
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x7f3
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x7f4
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x7f5
	.uaword	0xa63c
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_TRAPCLR"
	.byte	0xa
	.uahalf	0x7f6
	.uaword	0xc53d
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x7f9
	.uaword	0xc5a5
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x7fb
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x7fc
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x7fd
	.uaword	0xa842
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_TRAPDIS0"
	.byte	0xa
	.uahalf	0x7fe
	.uaword	0xc57d
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x801
	.uaword	0xc5e6
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x803
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x804
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x805
	.uaword	0xa8db
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_TRAPDIS1"
	.byte	0xa
	.uahalf	0x806
	.uaword	0xc5be
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x809
	.uaword	0xc627
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x80b
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x80c
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x80d
	.uaword	0xa97a
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_TRAPSET"
	.byte	0xa
	.uahalf	0x80e
	.uaword	0xc5ff
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x811
	.uaword	0xc667
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x813
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x814
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x815
	.uaword	0xaa19
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_TRAPSTAT"
	.byte	0xa
	.uahalf	0x816
	.uaword	0xc63f
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x819
	.uaword	0xc6a8
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x81b
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x81c
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x81d
	.uaword	0xaaa2
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_WDTCPU_CON0"
	.byte	0xa
	.uahalf	0x81e
	.uaword	0xc680
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x821
	.uaword	0xc6ec
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x823
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x824
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x825
	.uaword	0xabac
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_WDTCPU_CON1"
	.byte	0xa
	.uahalf	0x826
	.uaword	0xc6c4
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x829
	.uaword	0xc730
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x82b
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x82c
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x82d
	.uaword	0xacb0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_WDTCPU_SR"
	.byte	0xa
	.uahalf	0x82e
	.uaword	0xc708
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x831
	.uaword	0xc772
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x833
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x834
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x835
	.uaword	0xad38
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_WDTS_CON0"
	.byte	0xa
	.uahalf	0x836
	.uaword	0xc74a
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x839
	.uaword	0xc7b4
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x83b
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x83c
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x83d
	.uaword	0xae41
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_WDTS_CON1"
	.byte	0xa
	.uahalf	0x83e
	.uaword	0xc78c
	.uleb128 0x16
	.byte	0x4
	.byte	0xa
	.uahalf	0x841
	.uaword	0xc7f6
	.uleb128 0x17
	.string	"U"
	.byte	0xa
	.uahalf	0x843
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xa
	.uahalf	0x844
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xa
	.uahalf	0x845
	.uaword	0xaf41
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_WDTS_SR"
	.byte	0xa
	.uahalf	0x846
	.uaword	0xc7ce
	.uleb128 0x13
	.string	"_Ifx_SCU_ESRCFGX"
	.byte	0x4
	.byte	0xa
	.uahalf	0x852
	.uaword	0xc83c
	.uleb128 0xd
	.string	"ESRCFGX"
	.byte	0xa
	.uahalf	0x854
	.uaword	0xb5f5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_ESRCFGX"
	.byte	0xa
	.uahalf	0x855
	.uaword	0xc854
	.uleb128 0x4
	.uaword	0xc80e
	.uleb128 0x13
	.string	"_Ifx_SCU_WDTCPU"
	.byte	0xc
	.byte	0xa
	.uahalf	0x864
	.uaword	0xc8a1
	.uleb128 0xd
	.string	"CON0"
	.byte	0xa
	.uahalf	0x866
	.uaword	0xc6a8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CON1"
	.byte	0xa
	.uahalf	0x867
	.uaword	0xc6ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"SR"
	.byte	0xa
	.uahalf	0x868
	.uaword	0xc730
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_WDTCPU"
	.byte	0xa
	.uahalf	0x869
	.uaword	0xc8b8
	.uleb128 0x4
	.uaword	0xc859
	.uleb128 0x13
	.string	"_Ifx_SCU_WDTS"
	.byte	0xc
	.byte	0xa
	.uahalf	0x878
	.uaword	0xc903
	.uleb128 0xd
	.string	"CON0"
	.byte	0xa
	.uahalf	0x87a
	.uaword	0xc772
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CON1"
	.byte	0xa
	.uahalf	0x87b
	.uaword	0xc7b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"SR"
	.byte	0xa
	.uahalf	0x87c
	.uaword	0xc7f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_WDTS"
	.byte	0xa
	.uahalf	0x87d
	.uaword	0xc918
	.uleb128 0x4
	.uaword	0xc8bd
	.uleb128 0x18
	.string	"_Ifx_SCU"
	.uahalf	0x400
	.byte	0xa
	.uahalf	0x88c
	.uaword	0xd1fa
	.uleb128 0xf
	.uaword	.LASF14
	.byte	0xa
	.uahalf	0x88e
	.uaword	0x347
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"ID"
	.byte	0xa
	.uahalf	0x88f
	.uaword	0xb734
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.uaword	.LASF42
	.byte	0xa
	.uahalf	0x890
	.uaword	0x307
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"OSCCON"
	.byte	0xa
	.uahalf	0x891
	.uaword	0xba6a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"SYSPLLSTAT"
	.byte	0xa
	.uahalf	0x892
	.uaword	0xc522
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"SYSPLLCON0"
	.byte	0xa
	.uahalf	0x893
	.uaword	0xc459
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"SYSPLLCON1"
	.byte	0xa
	.uahalf	0x894
	.uaword	0xc49c
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"SYSPLLCON2"
	.byte	0xa
	.uahalf	0x895
	.uaword	0xc4df
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"PERPLLSTAT"
	.byte	0xa
	.uahalf	0x896
	.uaword	0xbca3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"PERPLLCON0"
	.byte	0xa
	.uahalf	0x897
	.uaword	0xbc1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.string	"PERPLLCON1"
	.byte	0xa
	.uahalf	0x898
	.uaword	0xbc60
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"CCUCON0"
	.byte	0xa
	.uahalf	0x899
	.uaword	0xb0c6
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"CCUCON1"
	.byte	0xa
	.uahalf	0x89a
	.uaword	0xb106
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"FDR"
	.byte	0xa
	.uahalf	0x89b
	.uaword	0xb6bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"EXTCON"
	.byte	0xa
	.uahalf	0x89c
	.uaword	0xb67d
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"CCUCON2"
	.byte	0xa
	.uahalf	0x89d
	.uaword	0xb146
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"CCUCON3"
	.byte	0xa
	.uahalf	0x89e
	.uaword	0xb186
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"CCUCON4"
	.byte	0xa
	.uahalf	0x89f
	.uaword	0xb1c6
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"CCUCON5"
	.byte	0xa
	.uahalf	0x8a0
	.uaword	0xb206
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xf
	.uaword	.LASF38
	.byte	0xa
	.uahalf	0x8a1
	.uaword	0xc0a3
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.string	"reserved_54"
	.byte	0xa
	.uahalf	0x8a2
	.uaword	0x307
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xd
	.string	"RSTCON"
	.byte	0xa
	.uahalf	0x8a3
	.uaword	0xbfe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.string	"ARSTDIS"
	.byte	0xa
	.uahalf	0x8a4
	.uaword	0xb086
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"SWRSTCON"
	.byte	0xa
	.uahalf	0x8a5
	.uaword	0xc3d9
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.string	"RSTCON2"
	.byte	0xa
	.uahalf	0x8a6
	.uaword	0xc023
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"RSTCON3"
	.byte	0xa
	.uahalf	0x8a7
	.uaword	0xc063
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"reserved_6C"
	.byte	0xa
	.uahalf	0x8a8
	.uaword	0x307
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xd
	.string	"ESRCFGX"
	.byte	0xa
	.uahalf	0x8a9
	.uaword	0xd20a
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xd
	.string	"ESROCFG"
	.byte	0xa
	.uahalf	0x8aa
	.uaword	0xb63d
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xd
	.string	"SYSCON"
	.byte	0xa
	.uahalf	0x8ab
	.uaword	0xc41a
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xd
	.string	"CCUCON6"
	.byte	0xa
	.uahalf	0x8ac
	.uaword	0xb246
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xd
	.string	"CCUCON7"
	.byte	0xa
	.uahalf	0x8ad
	.uaword	0xb286
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0xd
	.string	"CCUCON8"
	.byte	0xa
	.uahalf	0x8ae
	.uaword	0xb2c6
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xd
	.string	"CCUCON9"
	.byte	0xa
	.uahalf	0x8af
	.uaword	0xb306
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xd
	.string	"reserved_90"
	.byte	0xa
	.uahalf	0x8b0
	.uaword	0x317
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xd
	.string	"PDR"
	.byte	0xa
	.uahalf	0x8b1
	.uaword	0xbba4
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0xd
	.string	"IOCR"
	.byte	0xa
	.uahalf	0x8b2
	.uaword	0xb7e7
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xd
	.string	"OUT"
	.byte	0xa
	.uahalf	0x8b3
	.uaword	0xbaa9
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0xd
	.string	"OMR"
	.byte	0xa
	.uahalf	0x8b4
	.uaword	0xba2e
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xd
	.string	"IN"
	.byte	0xa
	.uahalf	0x8b5
	.uaword	0xb7ac
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xd
	.string	"reserved_B0"
	.byte	0xa
	.uahalf	0x8b6
	.uaword	0x3c7
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xd
	.string	"STSTAT"
	.byte	0xa
	.uahalf	0x8b7
	.uaword	0xc359
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xd
	.string	"STCON"
	.byte	0xa
	.uahalf	0x8b8
	.uaword	0xc1a1
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0xd
	.string	"PMCSR0"
	.byte	0xa
	.uahalf	0x8b9
	.uaword	0xbce6
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0xd
	.string	"PMCSR1"
	.byte	0xa
	.uahalf	0x8ba
	.uaword	0xbd25
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0xd
	.string	"PMCSR2"
	.byte	0xa
	.uahalf	0x8bb
	.uaword	0xbd64
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xd
	.string	"PMCSR3"
	.byte	0xa
	.uahalf	0x8bc
	.uaword	0xbda3
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xd
	.string	"PMCSR4"
	.byte	0xa
	.uahalf	0x8bd
	.uaword	0xbde2
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xd
	.string	"PMCSR5"
	.byte	0xa
	.uahalf	0x8be
	.uaword	0xbe21
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0xf
	.uaword	.LASF47
	.byte	0xa
	.uahalf	0x8bf
	.uaword	0x307
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xd
	.string	"PMSTAT0"
	.byte	0xa
	.uahalf	0x8c0
	.uaword	0xbe60
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xd
	.string	"PMSWCR1"
	.byte	0xa
	.uahalf	0x8c1
	.uaword	0xbea0
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xd
	.string	"reserved_EC"
	.byte	0xa
	.uahalf	0x8c2
	.uaword	0x3c7
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xd
	.string	"EMSR"
	.byte	0xa
	.uahalf	0x8c3
	.uaword	0xb57a
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.uleb128 0xd
	.string	"EMSSW"
	.byte	0xa
	.uahalf	0x8c4
	.uaword	0xb5b7
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xd
	.string	"DTSCSTAT"
	.byte	0xa
	.uahalf	0x8c5
	.uaword	0xb3c5
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0xd
	.string	"DTSCLIM"
	.byte	0xa
	.uahalf	0x8c6
	.uaword	0xb385
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0xd
	.string	"reserved_10C"
	.byte	0xa
	.uahalf	0x8c7
	.uaword	0x377
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0xd
	.string	"TRAPDIS1"
	.byte	0xa
	.uahalf	0x8c8
	.uaword	0xc5e6
	.byte	0x3
	.byte	0x23
	.uleb128 0x120
	.uleb128 0xd
	.string	"TRAPSTAT"
	.byte	0xa
	.uahalf	0x8c9
	.uaword	0xc667
	.byte	0x3
	.byte	0x23
	.uleb128 0x124
	.uleb128 0xd
	.string	"TRAPSET"
	.byte	0xa
	.uahalf	0x8ca
	.uaword	0xc627
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0xd
	.string	"TRAPCLR"
	.byte	0xa
	.uahalf	0x8cb
	.uaword	0xc565
	.byte	0x3
	.byte	0x23
	.uleb128 0x12c
	.uleb128 0xd
	.string	"TRAPDIS0"
	.byte	0xa
	.uahalf	0x8cc
	.uaword	0xc5a5
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.uleb128 0xd
	.string	"LCLCON0"
	.byte	0xa
	.uahalf	0x8cd
	.uaword	0xb930
	.byte	0x3
	.byte	0x23
	.uleb128 0x134
	.uleb128 0xd
	.string	"LCLCON1"
	.byte	0xa
	.uahalf	0x8ce
	.uaword	0xb970
	.byte	0x3
	.byte	0x23
	.uleb128 0x138
	.uleb128 0xd
	.string	"LCLTEST"
	.byte	0xa
	.uahalf	0x8cf
	.uaword	0xb9b0
	.byte	0x3
	.byte	0x23
	.uleb128 0x13c
	.uleb128 0xd
	.string	"CHIPID"
	.byte	0xa
	.uahalf	0x8d0
	.uaword	0xb346
	.byte	0x3
	.byte	0x23
	.uleb128 0x140
	.uleb128 0xd
	.string	"MANID"
	.byte	0xa
	.uahalf	0x8d1
	.uaword	0xb9f0
	.byte	0x3
	.byte	0x23
	.uleb128 0x144
	.uleb128 0xd
	.string	"reserved_148"
	.byte	0xa
	.uahalf	0x8d2
	.uaword	0x307
	.byte	0x3
	.byte	0x23
	.uleb128 0x148
	.uleb128 0xd
	.string	"SWAPCTRL"
	.byte	0xa
	.uahalf	0x8d3
	.uaword	0xc398
	.byte	0x3
	.byte	0x23
	.uleb128 0x14c
	.uleb128 0xd
	.string	"reserved_150"
	.byte	0xa
	.uahalf	0x8d4
	.uaword	0x377
	.byte	0x3
	.byte	0x23
	.uleb128 0x150
	.uleb128 0xd
	.string	"LBISTCTRL0"
	.byte	0xa
	.uahalf	0x8d5
	.uaword	0xb824
	.byte	0x3
	.byte	0x23
	.uleb128 0x164
	.uleb128 0xd
	.string	"LBISTCTRL1"
	.byte	0xa
	.uahalf	0x8d6
	.uaword	0xb867
	.byte	0x3
	.byte	0x23
	.uleb128 0x168
	.uleb128 0xd
	.string	"LBISTCTRL2"
	.byte	0xa
	.uahalf	0x8d7
	.uaword	0xb8aa
	.byte	0x3
	.byte	0x23
	.uleb128 0x16c
	.uleb128 0xd
	.string	"LBISTCTRL3"
	.byte	0xa
	.uahalf	0x8d8
	.uaword	0xb8ed
	.byte	0x3
	.byte	0x23
	.uleb128 0x170
	.uleb128 0xd
	.string	"reserved_174"
	.byte	0xa
	.uahalf	0x8d9
	.uaword	0x3c7
	.byte	0x3
	.byte	0x23
	.uleb128 0x174
	.uleb128 0xd
	.string	"STMEM1"
	.byte	0xa
	.uahalf	0x8da
	.uaword	0xc1df
	.byte	0x3
	.byte	0x23
	.uleb128 0x184
	.uleb128 0xd
	.string	"STMEM2"
	.byte	0xa
	.uahalf	0x8db
	.uaword	0xc21e
	.byte	0x3
	.byte	0x23
	.uleb128 0x188
	.uleb128 0xd
	.string	"PDISC"
	.byte	0xa
	.uahalf	0x8dc
	.uaword	0xbb66
	.byte	0x3
	.byte	0x23
	.uleb128 0x18c
	.uleb128 0xd
	.string	"reserved_190"
	.byte	0xa
	.uahalf	0x8dd
	.uaword	0x347
	.byte	0x3
	.byte	0x23
	.uleb128 0x190
	.uleb128 0xd
	.string	"PMTRCSR0"
	.byte	0xa
	.uahalf	0x8de
	.uaword	0xbee0
	.byte	0x3
	.byte	0x23
	.uleb128 0x198
	.uleb128 0xd
	.string	"PMTRCSR1"
	.byte	0xa
	.uahalf	0x8df
	.uaword	0xbf21
	.byte	0x3
	.byte	0x23
	.uleb128 0x19c
	.uleb128 0xd
	.string	"PMTRCSR2"
	.byte	0xa
	.uahalf	0x8e0
	.uaword	0xbf62
	.byte	0x3
	.byte	0x23
	.uleb128 0x1a0
	.uleb128 0xd
	.string	"PMTRCSR3"
	.byte	0xa
	.uahalf	0x8e1
	.uaword	0xbfa3
	.byte	0x3
	.byte	0x23
	.uleb128 0x1a4
	.uleb128 0xf
	.uaword	.LASF40
	.byte	0xa
	.uahalf	0x8e2
	.uaword	0x407
	.byte	0x3
	.byte	0x23
	.uleb128 0x1a8
	.uleb128 0xd
	.string	"STMEM3"
	.byte	0xa
	.uahalf	0x8e3
	.uaword	0xc25d
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c0
	.uleb128 0xd
	.string	"STMEM4"
	.byte	0xa
	.uahalf	0x8e4
	.uaword	0xc29c
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c4
	.uleb128 0xd
	.string	"STMEM5"
	.byte	0xa
	.uahalf	0x8e5
	.uaword	0xc2db
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c8
	.uleb128 0xd
	.string	"STMEM6"
	.byte	0xa
	.uahalf	0x8e6
	.uaword	0xc31a
	.byte	0x3
	.byte	0x23
	.uleb128 0x1cc
	.uleb128 0xd
	.string	"reserved_1D0"
	.byte	0xa
	.uahalf	0x8e7
	.uaword	0x3c7
	.byte	0x3
	.byte	0x23
	.uleb128 0x1d0
	.uleb128 0xd
	.string	"OVCENABLE"
	.byte	0xa
	.uahalf	0x8e8
	.uaword	0xbb24
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e0
	.uleb128 0xd
	.string	"OVCCON"
	.byte	0xa
	.uahalf	0x8e9
	.uaword	0xbae5
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e4
	.uleb128 0xd
	.string	"reserved_1E8"
	.byte	0xa
	.uahalf	0x8ea
	.uaword	0x337
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e8
	.uleb128 0xd
	.string	"EIFILT"
	.byte	0xa
	.uahalf	0x8eb
	.uaword	0xb4c1
	.byte	0x3
	.byte	0x23
	.uleb128 0x20c
	.uleb128 0xd
	.string	"EICR"
	.byte	0xa
	.uahalf	0x8ec
	.uaword	0xd20f
	.byte	0x3
	.byte	0x23
	.uleb128 0x210
	.uleb128 0xd
	.string	"EIFR"
	.byte	0xa
	.uahalf	0x8ed
	.uaword	0xb500
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0xd
	.string	"FMR"
	.byte	0xa
	.uahalf	0x8ee
	.uaword	0xb6f8
	.byte	0x3
	.byte	0x23
	.uleb128 0x224
	.uleb128 0xd
	.string	"PDRR"
	.byte	0xa
	.uahalf	0x8ef
	.uaword	0xbbe0
	.byte	0x3
	.byte	0x23
	.uleb128 0x228
	.uleb128 0xd
	.string	"IGCR"
	.byte	0xa
	.uahalf	0x8f0
	.uaword	0xd21f
	.byte	0x3
	.byte	0x23
	.uleb128 0x22c
	.uleb128 0xd
	.string	"reserved_23C"
	.byte	0xa
	.uahalf	0x8f1
	.uaword	0x3c7
	.byte	0x3
	.byte	0x23
	.uleb128 0x23c
	.uleb128 0xd
	.string	"WDTCPU"
	.byte	0xa
	.uahalf	0x8f2
	.uaword	0xd23f
	.byte	0x3
	.byte	0x23
	.uleb128 0x24c
	.uleb128 0xd
	.string	"reserved_27C"
	.byte	0xa
	.uahalf	0x8f3
	.uaword	0x3b7
	.byte	0x3
	.byte	0x23
	.uleb128 0x27c
	.uleb128 0xd
	.string	"EICON0"
	.byte	0xa
	.uahalf	0x8f4
	.uaword	0xb406
	.byte	0x3
	.byte	0x23
	.uleb128 0x29c
	.uleb128 0xd
	.string	"EICON1"
	.byte	0xa
	.uahalf	0x8f5
	.uaword	0xb445
	.byte	0x3
	.byte	0x23
	.uleb128 0x2a0
	.uleb128 0xd
	.string	"EISR"
	.byte	0xa
	.uahalf	0x8f6
	.uaword	0xb53d
	.byte	0x3
	.byte	0x23
	.uleb128 0x2a4
	.uleb128 0xd
	.string	"WDTS"
	.byte	0xa
	.uahalf	0x8f7
	.uaword	0xc903
	.byte	0x3
	.byte	0x23
	.uleb128 0x2a8
	.uleb128 0xd
	.string	"SEICON0"
	.byte	0xa
	.uahalf	0x8f8
	.uaword	0xc0e3
	.byte	0x3
	.byte	0x23
	.uleb128 0x2b4
	.uleb128 0xd
	.string	"SEICON1"
	.byte	0xa
	.uahalf	0x8f9
	.uaword	0xc123
	.byte	0x3
	.byte	0x23
	.uleb128 0x2b8
	.uleb128 0xd
	.string	"SEISR"
	.byte	0xa
	.uahalf	0x8fa
	.uaword	0xc163
	.byte	0x3
	.byte	0x23
	.uleb128 0x2bc
	.uleb128 0xf
	.uaword	.LASF41
	.byte	0xa
	.uahalf	0x8fb
	.uaword	0xd244
	.byte	0x3
	.byte	0x23
	.uleb128 0x2c0
	.uleb128 0xd
	.string	"ACCEN11"
	.byte	0xa
	.uahalf	0x8fc
	.uaword	0xb046
	.byte	0x3
	.byte	0x23
	.uleb128 0x3f0
	.uleb128 0xd
	.string	"ACCEN10"
	.byte	0xa
	.uahalf	0x8fd
	.uaword	0xb006
	.byte	0x3
	.byte	0x23
	.uleb128 0x3f4
	.uleb128 0xd
	.string	"ACCEN01"
	.byte	0xa
	.uahalf	0x8fe
	.uaword	0xafc6
	.byte	0x3
	.byte	0x23
	.uleb128 0x3f8
	.uleb128 0xd
	.string	"ACCEN00"
	.byte	0xa
	.uahalf	0x8ff
	.uaword	0xaf86
	.byte	0x3
	.byte	0x23
	.uleb128 0x3fc
	.byte	0
	.uleb128 0x5
	.uaword	0xc83c
	.uaword	0xd20a
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.uaword	0xd1fa
	.uleb128 0x5
	.uaword	0xb484
	.uaword	0xd21f
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.uaword	0xb76f
	.uaword	0xd22f
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.uaword	0xc8a1
	.uaword	0xd23f
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.uaword	0xd22f
	.uleb128 0x5
	.uaword	0x2b5
	.uaword	0xd255
	.uleb128 0x19
	.uaword	0x2fb
	.uahalf	0x12f
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU"
	.byte	0xa
	.uahalf	0x900
	.uaword	0xd265
	.uleb128 0x4
	.uaword	0xc91d
	.uleb128 0x10
	.string	"_Ifx_SRC_SRCR_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0x44
	.uaword	0xd38e
	.uleb128 0x11
	.string	"SRPN"
	.byte	0xb
	.byte	0x46
	.uaword	0x2ca
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF6
	.byte	0xb
	.byte	0x47
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SRE"
	.byte	0xb
	.byte	0x48
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"TOS"
	.byte	0xb
	.byte	0x49
	.uaword	0x2ca
	.byte	0x4
	.byte	0x3
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF10
	.byte	0xb
	.byte	0x4a
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"ECC"
	.byte	0xb
	.byte	0x4b
	.uaword	0x2ca
	.byte	0x4
	.byte	0x5
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF23
	.byte	0xb
	.byte	0x4c
	.uaword	0x2ca
	.byte	0x4
	.byte	0x3
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SRR"
	.byte	0xb
	.byte	0x4d
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"CLRR"
	.byte	0xb
	.byte	0x4e
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SETR"
	.byte	0xb
	.byte	0x4f
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"IOV"
	.byte	0xb
	.byte	0x50
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"IOVCLR"
	.byte	0xb
	.byte	0x51
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SWS"
	.byte	0xb
	.byte	0x52
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SWSCLR"
	.byte	0xb
	.byte	0x53
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF33
	.byte	0xb
	.byte	0x54
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_SRCR_Bits"
	.byte	0xb
	.byte	0x55
	.uaword	0xd26a
	.uleb128 0x1a
	.byte	0x4
	.byte	0xb
	.byte	0x5d
	.uaword	0xd3cb
	.uleb128 0x1b
	.string	"U"
	.byte	0xb
	.byte	0x5f
	.uaword	0x2ca
	.uleb128 0x1b
	.string	"I"
	.byte	0xb
	.byte	0x60
	.uaword	0x2e0
	.uleb128 0x1b
	.string	"B"
	.byte	0xb
	.byte	0x61
	.uaword	0xd38e
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_SRCR"
	.byte	0xb
	.byte	0x62
	.uaword	0xd3a7
	.uleb128 0x10
	.string	"_Ifx_SRC_CPU_CPU"
	.byte	0x4
	.byte	0xb
	.byte	0x6e
	.uaword	0xd406
	.uleb128 0x8
	.string	"SB"
	.byte	0xb
	.byte	0x70
	.uaword	0xd3cb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_CPU_CPU"
	.byte	0xb
	.byte	0x71
	.uaword	0xd41d
	.uleb128 0x4
	.uaword	0xd3df
	.uleb128 0x10
	.string	"_Ifx_SRC_CPU"
	.byte	0x10
	.byte	0xb
	.byte	0x80
	.uaword	0xd446
	.uleb128 0x8
	.string	"CPU"
	.byte	0xb
	.byte	0x82
	.uaword	0xd456
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.uaword	0xd406
	.uaword	0xd456
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.uaword	0xd446
	.uleb128 0x3
	.string	"Ifx_SRC_CPU"
	.byte	0xb
	.byte	0x83
	.uaword	0xd46e
	.uleb128 0x4
	.uaword	0xd422
	.uleb128 0x10
	.string	"_Ifx_SRC_CERBERUS_CERBERUS"
	.byte	0x8
	.byte	0xb
	.byte	0x92
	.uaword	0xd4a4
	.uleb128 0x8
	.string	"SR"
	.byte	0xb
	.byte	0x94
	.uaword	0xd4a4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.uaword	0xd3cb
	.uaword	0xd4b4
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_CERBERUS_CERBERUS"
	.byte	0xb
	.byte	0x95
	.uaword	0xd4d5
	.uleb128 0x4
	.uaword	0xd473
	.uleb128 0x10
	.string	"_Ifx_SRC_CERBERUS"
	.byte	0x8
	.byte	0xb
	.byte	0xa4
	.uaword	0xd503
	.uleb128 0x1c
	.uaword	.LASF48
	.byte	0xb
	.byte	0xa6
	.uaword	0xd4b4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_CERBERUS"
	.byte	0xb
	.byte	0xa7
	.uaword	0xd51b
	.uleb128 0x4
	.uaword	0xd4da
	.uleb128 0x10
	.string	"_Ifx_SRC_ASCLIN_ASCLIN"
	.byte	0xc
	.byte	0xb
	.byte	0xb6
	.uaword	0xd568
	.uleb128 0x8
	.string	"TX"
	.byte	0xb
	.byte	0xb8
	.uaword	0xd3cb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"RX"
	.byte	0xb
	.byte	0xb9
	.uaword	0xd3cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"ERR"
	.byte	0xb
	.byte	0xba
	.uaword	0xd3cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_ASCLIN_ASCLIN"
	.byte	0xb
	.byte	0xbb
	.uaword	0xd585
	.uleb128 0x4
	.uaword	0xd520
	.uleb128 0x10
	.string	"_Ifx_SRC_ASCLIN"
	.byte	0x90
	.byte	0xb
	.byte	0xca
	.uaword	0xd5b4
	.uleb128 0x8
	.string	"ASCLIN"
	.byte	0xb
	.byte	0xcc
	.uaword	0xd5c4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.uaword	0xd568
	.uaword	0xd5c4
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0xb
	.byte	0
	.uleb128 0x4
	.uaword	0xd5b4
	.uleb128 0x3
	.string	"Ifx_SRC_ASCLIN"
	.byte	0xb
	.byte	0xcd
	.uaword	0xd5df
	.uleb128 0x4
	.uaword	0xd58a
	.uleb128 0x10
	.string	"_Ifx_SRC_QSPI_QSPI"
	.byte	0x14
	.byte	0xb
	.byte	0xdc
	.uaword	0xd641
	.uleb128 0x8
	.string	"TX"
	.byte	0xb
	.byte	0xde
	.uaword	0xd3cb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"RX"
	.byte	0xb
	.byte	0xdf
	.uaword	0xd3cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"ERR"
	.byte	0xb
	.byte	0xe0
	.uaword	0xd3cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.string	"PT"
	.byte	0xb
	.byte	0xe1
	.uaword	0xd3cb
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.string	"U"
	.byte	0xb
	.byte	0xe2
	.uaword	0xd3cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_QSPI_QSPI"
	.byte	0xb
	.byte	0xe3
	.uaword	0xd65a
	.uleb128 0x4
	.uaword	0xd5e4
	.uleb128 0x10
	.string	"_Ifx_SRC_QSPI"
	.byte	0x64
	.byte	0xb
	.byte	0xf2
	.uaword	0xd685
	.uleb128 0x8
	.string	"QSPI"
	.byte	0xb
	.byte	0xf4
	.uaword	0xd695
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.uaword	0xd641
	.uaword	0xd695
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.uaword	0xd685
	.uleb128 0x3
	.string	"Ifx_SRC_QSPI"
	.byte	0xb
	.byte	0xf5
	.uaword	0xd6ae
	.uleb128 0x4
	.uaword	0xd65f
	.uleb128 0x13
	.string	"_Ifx_SRC_HSCT_HSCT"
	.byte	0x4
	.byte	0xb
	.uahalf	0x104
	.uaword	0xd6de
	.uleb128 0xd
	.string	"SR"
	.byte	0xb
	.uahalf	0x106
	.uaword	0xd3cb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SRC_HSCT_HSCT"
	.byte	0xb
	.uahalf	0x107
	.uaword	0xd6f8
	.uleb128 0x4
	.uaword	0xd6b3
	.uleb128 0x13
	.string	"_Ifx_SRC_HSCT"
	.byte	0x4
	.byte	0xb
	.uahalf	0x116
	.uaword	0xd725
	.uleb128 0xd
	.string	"HSCT"
	.byte	0xb
	.uahalf	0x118
	.uaword	0xd735
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.uaword	0xd6de
	.uaword	0xd735
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0
	.byte	0
	.uleb128 0x4
	.uaword	0xd725
	.uleb128 0xb
	.string	"Ifx_SRC_HSCT"
	.byte	0xb
	.uahalf	0x119
	.uaword	0xd74f
	.uleb128 0x4
	.uaword	0xd6fd
	.uleb128 0x13
	.string	"_Ifx_SRC_HSSL_HSSL_CH"
	.byte	0x10
	.byte	0xb
	.uahalf	0x128
	.uaword	0xd7b0
	.uleb128 0xd
	.string	"COK"
	.byte	0xb
	.uahalf	0x12a
	.uaword	0xd3cb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"RDI"
	.byte	0xb
	.uahalf	0x12b
	.uaword	0xd3cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"ERR"
	.byte	0xb
	.uahalf	0x12c
	.uaword	0xd3cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"TRG"
	.byte	0xb
	.uahalf	0x12d
	.uaword	0xd3cb
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SRC_HSSL_HSSL_CH"
	.byte	0xb
	.uahalf	0x12e
	.uaword	0xd7cd
	.uleb128 0x4
	.uaword	0xd754
	.uleb128 0x13
	.string	"_Ifx_SRC_HSSL_HSSL"
	.byte	0x44
	.byte	0xb
	.uahalf	0x13d
	.uaword	0xd80c
	.uleb128 0xd
	.string	"CH"
	.byte	0xb
	.uahalf	0x13f
	.uaword	0xd81c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"EXI"
	.byte	0xb
	.uahalf	0x140
	.uaword	0xd3cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0
	.uleb128 0x5
	.uaword	0xd7b0
	.uaword	0xd81c
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.uaword	0xd80c
	.uleb128 0xb
	.string	"Ifx_SRC_HSSL_HSSL"
	.byte	0xb
	.uahalf	0x141
	.uaword	0xd83b
	.uleb128 0x4
	.uaword	0xd7d2
	.uleb128 0x13
	.string	"_Ifx_SRC_HSSL"
	.byte	0x44
	.byte	0xb
	.uahalf	0x150
	.uaword	0xd868
	.uleb128 0xd
	.string	"HSSL"
	.byte	0xb
	.uahalf	0x152
	.uaword	0xd878
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.uaword	0xd821
	.uaword	0xd878
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0
	.byte	0
	.uleb128 0x4
	.uaword	0xd868
	.uleb128 0xb
	.string	"Ifx_SRC_HSSL"
	.byte	0xb
	.uahalf	0x153
	.uaword	0xd892
	.uleb128 0x4
	.uaword	0xd840
	.uleb128 0x13
	.string	"_Ifx_SRC_I2C_I2C"
	.byte	0x10
	.byte	0xb
	.uahalf	0x162
	.uaword	0xd8ec
	.uleb128 0xd
	.string	"DTR"
	.byte	0xb
	.uahalf	0x164
	.uaword	0xd3cb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"ERR"
	.byte	0xb
	.uahalf	0x165
	.uaword	0xd3cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"P"
	.byte	0xb
	.uahalf	0x166
	.uaword	0xd3cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.uaword	.LASF42
	.byte	0xb
	.uahalf	0x167
	.uaword	0x307
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SRC_I2C_I2C"
	.byte	0xb
	.uahalf	0x168
	.uaword	0xd904
	.uleb128 0x4
	.uaword	0xd897
	.uleb128 0x13
	.string	"_Ifx_SRC_I2C"
	.byte	0x20
	.byte	0xb
	.uahalf	0x177
	.uaword	0xd92f
	.uleb128 0xd
	.string	"I2C"
	.byte	0xb
	.uahalf	0x179
	.uaword	0xd93f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.uaword	0xd8ec
	.uaword	0xd93f
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.uaword	0xd92f
	.uleb128 0xb
	.string	"Ifx_SRC_I2C"
	.byte	0xb
	.uahalf	0x17a
	.uaword	0xd958
	.uleb128 0x4
	.uaword	0xd909
	.uleb128 0x13
	.string	"_Ifx_SRC_SENT_SENT"
	.byte	0x4
	.byte	0xb
	.uahalf	0x189
	.uaword	0xd988
	.uleb128 0xd
	.string	"SR"
	.byte	0xb
	.uahalf	0x18b
	.uaword	0xd3cb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SRC_SENT_SENT"
	.byte	0xb
	.uahalf	0x18c
	.uaword	0xd9a2
	.uleb128 0x4
	.uaword	0xd95d
	.uleb128 0x13
	.string	"_Ifx_SRC_SENT"
	.byte	0x28
	.byte	0xb
	.uahalf	0x19b
	.uaword	0xd9cf
	.uleb128 0xd
	.string	"SENT"
	.byte	0xb
	.uahalf	0x19d
	.uaword	0xd9df
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.uaword	0xd988
	.uaword	0xd9df
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0x9
	.byte	0
	.uleb128 0x4
	.uaword	0xd9cf
	.uleb128 0xb
	.string	"Ifx_SRC_SENT"
	.byte	0xb
	.uahalf	0x19e
	.uaword	0xd9f9
	.uleb128 0x4
	.uaword	0xd9a7
	.uleb128 0x13
	.string	"_Ifx_SRC_MSC_MSC"
	.byte	0x14
	.byte	0xb
	.uahalf	0x1ad
	.uaword	0xda27
	.uleb128 0xd
	.string	"SR"
	.byte	0xb
	.uahalf	0x1af
	.uaword	0xda27
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.uaword	0xd3cb
	.uaword	0xda37
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SRC_MSC_MSC"
	.byte	0xb
	.uahalf	0x1b0
	.uaword	0xda4f
	.uleb128 0x4
	.uaword	0xd9fe
	.uleb128 0x13
	.string	"_Ifx_SRC_MSC"
	.byte	0x3c
	.byte	0xb
	.uahalf	0x1bf
	.uaword	0xda7a
	.uleb128 0xd
	.string	"MSC"
	.byte	0xb
	.uahalf	0x1c1
	.uaword	0xda8a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.uaword	0xda37
	.uaword	0xda8a
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.uaword	0xda7a
	.uleb128 0xb
	.string	"Ifx_SRC_MSC"
	.byte	0xb
	.uahalf	0x1c2
	.uaword	0xdaa3
	.uleb128 0x4
	.uaword	0xda54
	.uleb128 0x13
	.string	"_Ifx_SRC_CCU6_CCU"
	.byte	0x10
	.byte	0xb
	.uahalf	0x1d1
	.uaword	0xdad2
	.uleb128 0xd
	.string	"SR"
	.byte	0xb
	.uahalf	0x1d3
	.uaword	0xdad2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.uaword	0xd3cb
	.uaword	0xdae2
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SRC_CCU6_CCU"
	.byte	0xb
	.uahalf	0x1d4
	.uaword	0xdafb
	.uleb128 0x4
	.uaword	0xdaa8
	.uleb128 0x13
	.string	"_Ifx_SRC_CCU6"
	.byte	0x20
	.byte	0xb
	.uahalf	0x1e3
	.uaword	0xdb27
	.uleb128 0xd
	.string	"CCU"
	.byte	0xb
	.uahalf	0x1e5
	.uaword	0xdb37
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.uaword	0xdae2
	.uaword	0xdb37
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.uaword	0xdb27
	.uleb128 0xb
	.string	"Ifx_SRC_CCU6"
	.byte	0xb
	.uahalf	0x1e6
	.uaword	0xdb51
	.uleb128 0x4
	.uaword	0xdb00
	.uleb128 0x13
	.string	"_Ifx_SRC_GPT12_GPT12"
	.byte	0x18
	.byte	0xb
	.uahalf	0x1f5
	.uaword	0xdbcb
	.uleb128 0xd
	.string	"CIRQ"
	.byte	0xb
	.uahalf	0x1f7
	.uaword	0xd3cb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"T2"
	.byte	0xb
	.uahalf	0x1f8
	.uaword	0xd3cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"T3"
	.byte	0xb
	.uahalf	0x1f9
	.uaword	0xd3cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"T4"
	.byte	0xb
	.uahalf	0x1fa
	.uaword	0xd3cb
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"T5"
	.byte	0xb
	.uahalf	0x1fb
	.uaword	0xd3cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"T6"
	.byte	0xb
	.uahalf	0x1fc
	.uaword	0xd3cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SRC_GPT12_GPT12"
	.byte	0xb
	.uahalf	0x1fd
	.uaword	0xdbe7
	.uleb128 0x4
	.uaword	0xdb56
	.uleb128 0x13
	.string	"_Ifx_SRC_GPT12"
	.byte	0x18
	.byte	0xb
	.uahalf	0x20c
	.uaword	0xdc16
	.uleb128 0xd
	.string	"GPT12"
	.byte	0xb
	.uahalf	0x20e
	.uaword	0xdc26
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.uaword	0xdbcb
	.uaword	0xdc26
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0
	.byte	0
	.uleb128 0x4
	.uaword	0xdc16
	.uleb128 0xb
	.string	"Ifx_SRC_GPT12"
	.byte	0xb
	.uahalf	0x20f
	.uaword	0xdc41
	.uleb128 0x4
	.uaword	0xdbec
	.uleb128 0x13
	.string	"_Ifx_SRC_STM_STM"
	.byte	0x8
	.byte	0xb
	.uahalf	0x21e
	.uaword	0xdc6f
	.uleb128 0xd
	.string	"SR"
	.byte	0xb
	.uahalf	0x220
	.uaword	0xd4a4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SRC_STM_STM"
	.byte	0xb
	.uahalf	0x221
	.uaword	0xdc87
	.uleb128 0x4
	.uaword	0xdc46
	.uleb128 0x13
	.string	"_Ifx_SRC_STM"
	.byte	0x20
	.byte	0xb
	.uahalf	0x230
	.uaword	0xdcb2
	.uleb128 0xd
	.string	"STM"
	.byte	0xb
	.uahalf	0x232
	.uaword	0xdcc2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.uaword	0xdc6f
	.uaword	0xdcc2
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.uaword	0xdcb2
	.uleb128 0xb
	.string	"Ifx_SRC_STM"
	.byte	0xb
	.uahalf	0x233
	.uaword	0xdcdb
	.uleb128 0x4
	.uaword	0xdc8c
	.uleb128 0x13
	.string	"_Ifx_SRC_FCE_FCE0"
	.byte	0x4
	.byte	0xb
	.uahalf	0x242
	.uaword	0xdd0a
	.uleb128 0xd
	.string	"SR"
	.byte	0xb
	.uahalf	0x244
	.uaword	0xd3cb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SRC_FCE_FCE0"
	.byte	0xb
	.uahalf	0x245
	.uaword	0xdd23
	.uleb128 0x4
	.uaword	0xdce0
	.uleb128 0x13
	.string	"_Ifx_SRC_FCE"
	.byte	0x4
	.byte	0xb
	.uahalf	0x254
	.uaword	0xdd4f
	.uleb128 0xd
	.string	"FCE0"
	.byte	0xb
	.uahalf	0x256
	.uaword	0xdd0a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SRC_FCE"
	.byte	0xb
	.uahalf	0x257
	.uaword	0xdd63
	.uleb128 0x4
	.uaword	0xdd28
	.uleb128 0x18
	.string	"_Ifx_SRC_DMA_DMA"
	.uahalf	0x230
	.byte	0xb
	.uahalf	0x266
	.uaword	0xddb0
	.uleb128 0xd
	.string	"ERR"
	.byte	0xb
	.uahalf	0x268
	.uaword	0xdad2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.uaword	.LASF15
	.byte	0xb
	.uahalf	0x269
	.uaword	0x3b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"CH"
	.byte	0xb
	.uahalf	0x26a
	.uaword	0xddb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0
	.uleb128 0x5
	.uaword	0xd3cb
	.uaword	0xddc0
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0x7f
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SRC_DMA_DMA"
	.byte	0xb
	.uahalf	0x26b
	.uaword	0xddd8
	.uleb128 0x4
	.uaword	0xdd68
	.uleb128 0x18
	.string	"_Ifx_SRC_DMA"
	.uahalf	0x230
	.byte	0xb
	.uahalf	0x27a
	.uaword	0xde04
	.uleb128 0xd
	.string	"DMA"
	.byte	0xb
	.uahalf	0x27c
	.uaword	0xde14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.uaword	0xddc0
	.uaword	0xde14
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0
	.byte	0
	.uleb128 0x4
	.uaword	0xde04
	.uleb128 0xb
	.string	"Ifx_SRC_DMA"
	.byte	0xb
	.uahalf	0x27d
	.uaword	0xde2d
	.uleb128 0x4
	.uaword	0xdddd
	.uleb128 0x13
	.string	"_Ifx_SRC_GETH_GETH"
	.byte	0x28
	.byte	0xb
	.uahalf	0x28c
	.uaword	0xde5d
	.uleb128 0xd
	.string	"SR"
	.byte	0xb
	.uahalf	0x28e
	.uaword	0xde5d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.uaword	0xd3cb
	.uaword	0xde6d
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0x9
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SRC_GETH_GETH"
	.byte	0xb
	.uahalf	0x28f
	.uaword	0xde87
	.uleb128 0x4
	.uaword	0xde32
	.uleb128 0x13
	.string	"_Ifx_SRC_GETH"
	.byte	0x28
	.byte	0xb
	.uahalf	0x29e
	.uaword	0xdeb4
	.uleb128 0xd
	.string	"GETH"
	.byte	0xb
	.uahalf	0x2a0
	.uaword	0xdec4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.uaword	0xde6d
	.uaword	0xdec4
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0
	.byte	0
	.uleb128 0x4
	.uaword	0xdeb4
	.uleb128 0xb
	.string	"Ifx_SRC_GETH"
	.byte	0xb
	.uahalf	0x2a1
	.uaword	0xdede
	.uleb128 0x4
	.uaword	0xde8c
	.uleb128 0x13
	.string	"_Ifx_SRC_CAN_CAN"
	.byte	0x40
	.byte	0xb
	.uahalf	0x2b0
	.uaword	0xdf0d
	.uleb128 0xd
	.string	"INT"
	.byte	0xb
	.uahalf	0x2b2
	.uaword	0xdf0d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.uaword	0xd3cb
	.uaword	0xdf1d
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0xf
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SRC_CAN_CAN"
	.byte	0xb
	.uahalf	0x2b3
	.uaword	0xdf35
	.uleb128 0x4
	.uaword	0xdee3
	.uleb128 0x13
	.string	"_Ifx_SRC_CAN"
	.byte	0xc0
	.byte	0xb
	.uahalf	0x2c2
	.uaword	0xdf60
	.uleb128 0xd
	.string	"CAN"
	.byte	0xb
	.uahalf	0x2c4
	.uaword	0xdf70
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.uaword	0xdf1d
	.uaword	0xdf70
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.uaword	0xdf60
	.uleb128 0xb
	.string	"Ifx_SRC_CAN"
	.byte	0xb
	.uahalf	0x2c5
	.uaword	0xdf89
	.uleb128 0x4
	.uaword	0xdf3a
	.uleb128 0x13
	.string	"_Ifx_SRC_VADC_G"
	.byte	0x10
	.byte	0xb
	.uahalf	0x2d4
	.uaword	0xdfe4
	.uleb128 0xd
	.string	"SR0"
	.byte	0xb
	.uahalf	0x2d6
	.uaword	0xd3cb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"SR1"
	.byte	0xb
	.uahalf	0x2d7
	.uaword	0xd3cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"SR2"
	.byte	0xb
	.uahalf	0x2d8
	.uaword	0xd3cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"SR3"
	.byte	0xb
	.uahalf	0x2d9
	.uaword	0xd3cb
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SRC_VADC_G"
	.byte	0xb
	.uahalf	0x2da
	.uaword	0xdffb
	.uleb128 0x4
	.uaword	0xdf8e
	.uleb128 0x13
	.string	"_Ifx_SRC_VADC_FC"
	.byte	0x4
	.byte	0xb
	.uahalf	0x2e9
	.uaword	0xe02a
	.uleb128 0xd
	.string	"SR0"
	.byte	0xb
	.uahalf	0x2eb
	.uaword	0xd3cb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SRC_VADC_FC"
	.byte	0xb
	.uahalf	0x2ec
	.uaword	0xe042
	.uleb128 0x4
	.uaword	0xe000
	.uleb128 0x18
	.string	"_Ifx_SRC_VADC"
	.uahalf	0x100
	.byte	0xb
	.uahalf	0x2fc
	.uaword	0xe0a3
	.uleb128 0xd
	.string	"G"
	.byte	0xb
	.uahalf	0x2fe
	.uaword	0xe0b3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"FC"
	.byte	0xb
	.uahalf	0x2ff
	.uaword	0xe0c8
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xd
	.string	"reserved_D0"
	.byte	0xb
	.uahalf	0x300
	.uaword	0x3c7
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xd
	.string	"CG"
	.byte	0xb
	.uahalf	0x301
	.uaword	0xe0dd
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.byte	0
	.uleb128 0x5
	.uaword	0xdfe4
	.uaword	0xe0b3
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0xb
	.byte	0
	.uleb128 0x4
	.uaword	0xe0a3
	.uleb128 0x5
	.uaword	0xe02a
	.uaword	0xe0c8
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.uaword	0xe0b8
	.uleb128 0x5
	.uaword	0xdfe4
	.uaword	0xe0dd
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.uaword	0xe0cd
	.uleb128 0xb
	.string	"Ifx_SRC_VADC"
	.byte	0xb
	.uahalf	0x302
	.uaword	0xe0f7
	.uleb128 0x4
	.uaword	0xe047
	.uleb128 0x13
	.string	"_Ifx_SRC_DSADC_DSADC"
	.byte	0x8
	.byte	0xb
	.uahalf	0x311
	.uaword	0xe139
	.uleb128 0xd
	.string	"SRM"
	.byte	0xb
	.uahalf	0x313
	.uaword	0xd3cb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"SRA"
	.byte	0xb
	.uahalf	0x314
	.uaword	0xd3cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SRC_DSADC_DSADC"
	.byte	0xb
	.uahalf	0x315
	.uaword	0xe155
	.uleb128 0x4
	.uaword	0xe0fc
	.uleb128 0x13
	.string	"_Ifx_SRC_DSADC"
	.byte	0x50
	.byte	0xb
	.uahalf	0x324
	.uaword	0xe184
	.uleb128 0xd
	.string	"DSADC"
	.byte	0xb
	.uahalf	0x326
	.uaword	0xe194
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.uaword	0xe139
	.uaword	0xe194
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0x9
	.byte	0
	.uleb128 0x4
	.uaword	0xe184
	.uleb128 0xb
	.string	"Ifx_SRC_DSADC"
	.byte	0xb
	.uahalf	0x327
	.uaword	0xe1af
	.uleb128 0x4
	.uaword	0xe15a
	.uleb128 0x13
	.string	"_Ifx_SRC_ERAY_ERAY"
	.byte	0x30
	.byte	0xb
	.uahalf	0x338
	.uaword	0xe288
	.uleb128 0xd
	.string	"INT0"
	.byte	0xb
	.uahalf	0x33a
	.uaword	0xd3cb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"INT1"
	.byte	0xb
	.uahalf	0x33b
	.uaword	0xd3cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"TINT0"
	.byte	0xb
	.uahalf	0x33c
	.uaword	0xd3cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"TINT1"
	.byte	0xb
	.uahalf	0x33d
	.uaword	0xd3cb
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"NDAT0"
	.byte	0xb
	.uahalf	0x33e
	.uaword	0xd3cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"NDAT1"
	.byte	0xb
	.uahalf	0x33f
	.uaword	0xd3cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"MBSC0"
	.byte	0xb
	.uahalf	0x340
	.uaword	0xd3cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"MBSC1"
	.byte	0xb
	.uahalf	0x341
	.uaword	0xd3cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"OBUSY"
	.byte	0xb
	.uahalf	0x342
	.uaword	0xd3cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"IBUSY"
	.byte	0xb
	.uahalf	0x343
	.uaword	0xd3cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xf
	.uaword	.LASF2
	.byte	0xb
	.uahalf	0x344
	.uaword	0x347
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SRC_ERAY_ERAY"
	.byte	0xb
	.uahalf	0x345
	.uaword	0xe2a2
	.uleb128 0x4
	.uaword	0xe1b4
	.uleb128 0x13
	.string	"_Ifx_SRC_ERAY"
	.byte	0x60
	.byte	0xb
	.uahalf	0x354
	.uaword	0xe2cf
	.uleb128 0xd
	.string	"ERAY"
	.byte	0xb
	.uahalf	0x356
	.uaword	0xe2df
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.uaword	0xe288
	.uaword	0xe2df
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.uaword	0xe2cf
	.uleb128 0xb
	.string	"Ifx_SRC_ERAY"
	.byte	0xb
	.uahalf	0x357
	.uaword	0xe2f9
	.uleb128 0x4
	.uaword	0xe2a7
	.uleb128 0x13
	.string	"_Ifx_SRC_HSM_HSM"
	.byte	0x8
	.byte	0xb
	.uahalf	0x366
	.uaword	0xe328
	.uleb128 0xd
	.string	"HSM"
	.byte	0xb
	.uahalf	0x368
	.uaword	0xd4a4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SRC_HSM_HSM"
	.byte	0xb
	.uahalf	0x369
	.uaword	0xe340
	.uleb128 0x4
	.uaword	0xe2fe
	.uleb128 0x13
	.string	"_Ifx_SRC_HSM"
	.byte	0x8
	.byte	0xb
	.uahalf	0x378
	.uaword	0xe36b
	.uleb128 0xd
	.string	"HSM"
	.byte	0xb
	.uahalf	0x37a
	.uaword	0xe37b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.uaword	0xe328
	.uaword	0xe37b
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0
	.byte	0
	.uleb128 0x4
	.uaword	0xe36b
	.uleb128 0xb
	.string	"Ifx_SRC_HSM"
	.byte	0xb
	.uahalf	0x37b
	.uaword	0xe394
	.uleb128 0x4
	.uaword	0xe345
	.uleb128 0x13
	.string	"_Ifx_SRC_SCU"
	.byte	0x10
	.byte	0xb
	.uahalf	0x38a
	.uaword	0xe3c2
	.uleb128 0xd
	.string	"SCUERU"
	.byte	0xb
	.uahalf	0x38c
	.uaword	0xdad2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SRC_SCU"
	.byte	0xb
	.uahalf	0x38d
	.uaword	0xe3d6
	.uleb128 0x4
	.uaword	0xe399
	.uleb128 0x13
	.string	"_Ifx_SRC_PMS_PMS"
	.byte	0x4
	.byte	0xb
	.uahalf	0x39c
	.uaword	0xe404
	.uleb128 0xd
	.string	"SR"
	.byte	0xb
	.uahalf	0x39e
	.uaword	0xd3cb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SRC_PMS_PMS"
	.byte	0xb
	.uahalf	0x39f
	.uaword	0xe41c
	.uleb128 0x4
	.uaword	0xe3db
	.uleb128 0x13
	.string	"_Ifx_SRC_PMS"
	.byte	0x10
	.byte	0xb
	.uahalf	0x3ae
	.uaword	0xe447
	.uleb128 0xd
	.string	"PMS"
	.byte	0xb
	.uahalf	0x3b0
	.uaword	0xe457
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.uaword	0xe404
	.uaword	0xe457
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.uaword	0xe447
	.uleb128 0xb
	.string	"Ifx_SRC_PMS"
	.byte	0xb
	.uahalf	0x3b1
	.uaword	0xe470
	.uleb128 0x4
	.uaword	0xe421
	.uleb128 0x13
	.string	"_Ifx_SRC_SMU_SMU"
	.byte	0xc
	.byte	0xb
	.uahalf	0x3c0
	.uaword	0xe49e
	.uleb128 0xd
	.string	"SR"
	.byte	0xb
	.uahalf	0x3c2
	.uaword	0xe49e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.uaword	0xd3cb
	.uaword	0xe4ae
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SRC_SMU_SMU"
	.byte	0xb
	.uahalf	0x3c3
	.uaword	0xe4c6
	.uleb128 0x4
	.uaword	0xe475
	.uleb128 0x13
	.string	"_Ifx_SRC_SMU"
	.byte	0xc
	.byte	0xb
	.uahalf	0x3d2
	.uaword	0xe4f1
	.uleb128 0xd
	.string	"SMU"
	.byte	0xb
	.uahalf	0x3d4
	.uaword	0xe501
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.uaword	0xe4ae
	.uaword	0xe501
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0
	.byte	0
	.uleb128 0x4
	.uaword	0xe4f1
	.uleb128 0xb
	.string	"Ifx_SRC_SMU"
	.byte	0xb
	.uahalf	0x3d5
	.uaword	0xe51a
	.uleb128 0x4
	.uaword	0xe4cb
	.uleb128 0x13
	.string	"_Ifx_SRC_PSI5_PSI5"
	.byte	0x20
	.byte	0xb
	.uahalf	0x3e4
	.uaword	0xe54a
	.uleb128 0xd
	.string	"SR"
	.byte	0xb
	.uahalf	0x3e6
	.uaword	0xe54a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.uaword	0xd3cb
	.uaword	0xe55a
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0x7
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SRC_PSI5_PSI5"
	.byte	0xb
	.uahalf	0x3e7
	.uaword	0xe574
	.uleb128 0x4
	.uaword	0xe51f
	.uleb128 0x13
	.string	"_Ifx_SRC_PSI5"
	.byte	0x20
	.byte	0xb
	.uahalf	0x3f6
	.uaword	0xe5a1
	.uleb128 0xd
	.string	"PSI5"
	.byte	0xb
	.uahalf	0x3f8
	.uaword	0xe5b1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.uaword	0xe55a
	.uaword	0xe5b1
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0
	.byte	0
	.uleb128 0x4
	.uaword	0xe5a1
	.uleb128 0xb
	.string	"Ifx_SRC_PSI5"
	.byte	0xb
	.uahalf	0x3f9
	.uaword	0xe5cb
	.uleb128 0x4
	.uaword	0xe579
	.uleb128 0x13
	.string	"_Ifx_SRC_DAM_DAM"
	.byte	0x18
	.byte	0xb
	.uahalf	0x408
	.uaword	0xe644
	.uleb128 0xd
	.string	"LI0"
	.byte	0xb
	.uahalf	0x40a
	.uaword	0xd3cb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"RI0"
	.byte	0xb
	.uahalf	0x40b
	.uaword	0xd3cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"LI1"
	.byte	0xb
	.uahalf	0x40c
	.uaword	0xd3cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"RI1"
	.byte	0xb
	.uahalf	0x40d
	.uaword	0xd3cb
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"DR"
	.byte	0xb
	.uahalf	0x40e
	.uaword	0xd3cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"ERR"
	.byte	0xb
	.uahalf	0x40f
	.uaword	0xd3cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SRC_DAM_DAM"
	.byte	0xb
	.uahalf	0x410
	.uaword	0xe65c
	.uleb128 0x4
	.uaword	0xe5d0
	.uleb128 0x13
	.string	"_Ifx_SRC_DAM"
	.byte	0x18
	.byte	0xb
	.uahalf	0x41f
	.uaword	0xe687
	.uleb128 0xd
	.string	"DAM"
	.byte	0xb
	.uahalf	0x421
	.uaword	0xe697
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.uaword	0xe644
	.uaword	0xe697
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0
	.byte	0
	.uleb128 0x4
	.uaword	0xe687
	.uleb128 0xb
	.string	"Ifx_SRC_DAM"
	.byte	0xb
	.uahalf	0x422
	.uaword	0xe6b0
	.uleb128 0x4
	.uaword	0xe661
	.uleb128 0x13
	.string	"_Ifx_SRC_PSI5S_PSI5S"
	.byte	0x20
	.byte	0xb
	.uahalf	0x431
	.uaword	0xe6e2
	.uleb128 0xd
	.string	"SR"
	.byte	0xb
	.uahalf	0x433
	.uaword	0xe54a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SRC_PSI5S_PSI5S"
	.byte	0xb
	.uahalf	0x434
	.uaword	0xe6fe
	.uleb128 0x4
	.uaword	0xe6b5
	.uleb128 0x13
	.string	"_Ifx_SRC_PSI5S"
	.byte	0x20
	.byte	0xb
	.uahalf	0x443
	.uaword	0xe72d
	.uleb128 0xd
	.string	"PSI5S"
	.byte	0xb
	.uahalf	0x445
	.uaword	0xe73d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.uaword	0xe6e2
	.uaword	0xe73d
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0
	.byte	0
	.uleb128 0x4
	.uaword	0xe72d
	.uleb128 0xb
	.string	"Ifx_SRC_PSI5S"
	.byte	0xb
	.uahalf	0x446
	.uaword	0xe758
	.uleb128 0x4
	.uaword	0xe703
	.uleb128 0x13
	.string	"_Ifx_SRC_GPSR_GPSR"
	.byte	0x20
	.byte	0xb
	.uahalf	0x455
	.uaword	0xe788
	.uleb128 0xd
	.string	"SR"
	.byte	0xb
	.uahalf	0x457
	.uaword	0xe54a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SRC_GPSR_GPSR"
	.byte	0xb
	.uahalf	0x458
	.uaword	0xe7a2
	.uleb128 0x4
	.uaword	0xe75d
	.uleb128 0x13
	.string	"_Ifx_SRC_GPSR"
	.byte	0x80
	.byte	0xb
	.uahalf	0x467
	.uaword	0xe7cf
	.uleb128 0xd
	.string	"GPSR"
	.byte	0xb
	.uahalf	0x469
	.uaword	0xe7df
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.uaword	0xe788
	.uaword	0xe7df
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.uaword	0xe7cf
	.uleb128 0xb
	.string	"Ifx_SRC_GPSR"
	.byte	0xb
	.uahalf	0x46a
	.uaword	0xe7f9
	.uleb128 0x4
	.uaword	0xe7a7
	.uleb128 0x18
	.string	"_Ifx_SRC"
	.uahalf	0x2000
	.byte	0xb
	.uahalf	0x483
	.uaword	0xf02a
	.uleb128 0xd
	.string	"CPU"
	.byte	0xb
	.uahalf	0x485
	.uaword	0xd45b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.uaword	.LASF15
	.byte	0xb
	.uahalf	0x486
	.uaword	0x3c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"SBCU"
	.byte	0xb
	.uahalf	0x487
	.uaword	0xd3cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xf
	.uaword	.LASF16
	.byte	0xb
	.uahalf	0x488
	.uaword	0x317
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"XBAR0"
	.byte	0xb
	.uahalf	0x489
	.uaword	0xd3cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"reserved_34"
	.byte	0xb
	.uahalf	0x48a
	.uaword	0x317
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xf
	.uaword	.LASF48
	.byte	0xb
	.uahalf	0x48b
	.uaword	0xd503
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"reserved_48"
	.byte	0xb
	.uahalf	0x48c
	.uaword	0x347
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"ASCLIN"
	.byte	0xb
	.uahalf	0x48d
	.uaword	0xd5c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xf
	.uaword	.LASF47
	.byte	0xb
	.uahalf	0x48e
	.uaword	0x317
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xd
	.string	"MTUDONE"
	.byte	0xb
	.uahalf	0x48f
	.uaword	0xd3cb
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xd
	.string	"QSPI"
	.byte	0xb
	.uahalf	0x490
	.uaword	0xd69a
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xd
	.string	"reserved_154"
	.byte	0xb
	.uahalf	0x491
	.uaword	0x397
	.byte	0x3
	.byte	0x23
	.uleb128 0x154
	.uleb128 0xd
	.string	"HSCT"
	.byte	0xb
	.uahalf	0x492
	.uaword	0xd73a
	.byte	0x3
	.byte	0x23
	.uleb128 0x180
	.uleb128 0xd
	.string	"reserved_184"
	.byte	0xb
	.uahalf	0x493
	.uaword	0x317
	.byte	0x3
	.byte	0x23
	.uleb128 0x184
	.uleb128 0xd
	.string	"HSSL"
	.byte	0xb
	.uahalf	0x494
	.uaword	0xd87d
	.byte	0x3
	.byte	0x23
	.uleb128 0x190
	.uleb128 0xd
	.string	"reserved_1D4"
	.byte	0xb
	.uahalf	0x495
	.uaword	0x3e7
	.byte	0x3
	.byte	0x23
	.uleb128 0x1d4
	.uleb128 0xd
	.string	"I2C"
	.byte	0xb
	.uahalf	0x496
	.uaword	0xd944
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0xd
	.string	"SENT"
	.byte	0xb
	.uahalf	0x497
	.uaword	0xd9e4
	.byte	0x3
	.byte	0x23
	.uleb128 0x240
	.uleb128 0xd
	.string	"reserved_268"
	.byte	0xb
	.uahalf	0x498
	.uaword	0x347
	.byte	0x3
	.byte	0x23
	.uleb128 0x268
	.uleb128 0xd
	.string	"MSC"
	.byte	0xb
	.uahalf	0x499
	.uaword	0xda8f
	.byte	0x3
	.byte	0x23
	.uleb128 0x270
	.uleb128 0xd
	.string	"reserved_2AC"
	.byte	0xb
	.uahalf	0x49a
	.uaword	0x377
	.byte	0x3
	.byte	0x23
	.uleb128 0x2ac
	.uleb128 0xd
	.string	"CCU6"
	.byte	0xb
	.uahalf	0x49b
	.uaword	0xdb3c
	.byte	0x3
	.byte	0x23
	.uleb128 0x2c0
	.uleb128 0xd
	.string	"GPT12"
	.byte	0xb
	.uahalf	0x49c
	.uaword	0xdc2b
	.byte	0x3
	.byte	0x23
	.uleb128 0x2e0
	.uleb128 0xd
	.string	"reserved_2F8"
	.byte	0xb
	.uahalf	0x49d
	.uaword	0x347
	.byte	0x3
	.byte	0x23
	.uleb128 0x2f8
	.uleb128 0xd
	.string	"STM"
	.byte	0xb
	.uahalf	0x49e
	.uaword	0xdcc7
	.byte	0x3
	.byte	0x23
	.uleb128 0x300
	.uleb128 0xd
	.string	"reserved_320"
	.byte	0xb
	.uahalf	0x49f
	.uaword	0x3c7
	.byte	0x3
	.byte	0x23
	.uleb128 0x320
	.uleb128 0xd
	.string	"FCE"
	.byte	0xb
	.uahalf	0x4a0
	.uaword	0xdd4f
	.byte	0x3
	.byte	0x23
	.uleb128 0x330
	.uleb128 0xd
	.string	"reserved_334"
	.byte	0xb
	.uahalf	0x4a1
	.uaword	0x317
	.byte	0x3
	.byte	0x23
	.uleb128 0x334
	.uleb128 0xd
	.string	"DMA"
	.byte	0xb
	.uahalf	0x4a2
	.uaword	0xde19
	.byte	0x3
	.byte	0x23
	.uleb128 0x340
	.uleb128 0xd
	.string	"reserved_570"
	.byte	0xb
	.uahalf	0x4a3
	.uaword	0x3c7
	.byte	0x3
	.byte	0x23
	.uleb128 0x570
	.uleb128 0xd
	.string	"GETH"
	.byte	0xb
	.uahalf	0x4a4
	.uaword	0xdec9
	.byte	0x3
	.byte	0x23
	.uleb128 0x580
	.uleb128 0xd
	.string	"reserved_5A8"
	.byte	0xb
	.uahalf	0x4a5
	.uaword	0x347
	.byte	0x3
	.byte	0x23
	.uleb128 0x5a8
	.uleb128 0xd
	.string	"CAN"
	.byte	0xb
	.uahalf	0x4a6
	.uaword	0xdf75
	.byte	0x3
	.byte	0x23
	.uleb128 0x5b0
	.uleb128 0xd
	.string	"VADC"
	.byte	0xb
	.uahalf	0x4a7
	.uaword	0xe0e2
	.byte	0x3
	.byte	0x23
	.uleb128 0x670
	.uleb128 0xd
	.string	"DSADC"
	.byte	0xb
	.uahalf	0x4a8
	.uaword	0xe199
	.byte	0x3
	.byte	0x23
	.uleb128 0x770
	.uleb128 0xd
	.string	"reserved_7C0"
	.byte	0xb
	.uahalf	0x4a9
	.uaword	0x3b7
	.byte	0x3
	.byte	0x23
	.uleb128 0x7c0
	.uleb128 0xd
	.string	"ASCLIN12"
	.byte	0xb
	.uahalf	0x4aa
	.uaword	0xd568
	.byte	0x3
	.byte	0x23
	.uleb128 0x7e0
	.uleb128 0xd
	.string	"ASCLIN13"
	.byte	0xb
	.uahalf	0x4ab
	.uaword	0xd568
	.byte	0x3
	.byte	0x23
	.uleb128 0x7ec
	.uleb128 0xd
	.string	"reserved_7F8"
	.byte	0xb
	.uahalf	0x4ac
	.uaword	0x347
	.byte	0x3
	.byte	0x23
	.uleb128 0x7f8
	.uleb128 0xd
	.string	"ERAY"
	.byte	0xb
	.uahalf	0x4ad
	.uaword	0xe2e4
	.byte	0x3
	.byte	0x23
	.uleb128 0x800
	.uleb128 0xd
	.string	"DMUHOST"
	.byte	0xb
	.uahalf	0x4ae
	.uaword	0xd3cb
	.byte	0x3
	.byte	0x23
	.uleb128 0x860
	.uleb128 0xd
	.string	"DMUFSI"
	.byte	0xb
	.uahalf	0x4af
	.uaword	0xd3cb
	.byte	0x3
	.byte	0x23
	.uleb128 0x864
	.uleb128 0xd
	.string	"reserved_868"
	.byte	0xb
	.uahalf	0x4b0
	.uaword	0x347
	.byte	0x3
	.byte	0x23
	.uleb128 0x868
	.uleb128 0xd
	.string	"HSM"
	.byte	0xb
	.uahalf	0x4b1
	.uaword	0xe380
	.byte	0x3
	.byte	0x23
	.uleb128 0x870
	.uleb128 0xd
	.string	"reserved_878"
	.byte	0xb
	.uahalf	0x4b2
	.uaword	0x347
	.byte	0x3
	.byte	0x23
	.uleb128 0x878
	.uleb128 0xd
	.string	"SCU"
	.byte	0xb
	.uahalf	0x4b3
	.uaword	0xe3c2
	.byte	0x3
	.byte	0x23
	.uleb128 0x880
	.uleb128 0xd
	.string	"reserved_890"
	.byte	0xb
	.uahalf	0x4b4
	.uaword	0x327
	.byte	0x3
	.byte	0x23
	.uleb128 0x890
	.uleb128 0xd
	.string	"PMSDTS"
	.byte	0xb
	.uahalf	0x4b5
	.uaword	0xd3cb
	.byte	0x3
	.byte	0x23
	.uleb128 0x8ac
	.uleb128 0xd
	.string	"PMS"
	.byte	0xb
	.uahalf	0x4b6
	.uaword	0xe45c
	.byte	0x3
	.byte	0x23
	.uleb128 0x8b0
	.uleb128 0xd
	.string	"SCR"
	.byte	0xb
	.uahalf	0x4b7
	.uaword	0xd3cb
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c0
	.uleb128 0xd
	.string	"reserved_8C4"
	.byte	0xb
	.uahalf	0x4b8
	.uaword	0x317
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c4
	.uleb128 0xd
	.string	"SMU"
	.byte	0xb
	.uahalf	0x4b9
	.uaword	0xe506
	.byte	0x3
	.byte	0x23
	.uleb128 0x8d0
	.uleb128 0xd
	.string	"reserved_8DC"
	.byte	0xb
	.uahalf	0x4ba
	.uaword	0x307
	.byte	0x3
	.byte	0x23
	.uleb128 0x8dc
	.uleb128 0xd
	.string	"PSI5"
	.byte	0xb
	.uahalf	0x4bb
	.uaword	0xe5b6
	.byte	0x3
	.byte	0x23
	.uleb128 0x8e0
	.uleb128 0xd
	.string	"reserved_900"
	.byte	0xb
	.uahalf	0x4bc
	.uaword	0x3c7
	.byte	0x3
	.byte	0x23
	.uleb128 0x900
	.uleb128 0xd
	.string	"DAM"
	.byte	0xb
	.uahalf	0x4bd
	.uaword	0xe69c
	.byte	0x3
	.byte	0x23
	.uleb128 0x910
	.uleb128 0xd
	.string	"reserved_928"
	.byte	0xb
	.uahalf	0x4be
	.uaword	0x3d7
	.byte	0x3
	.byte	0x23
	.uleb128 0x928
	.uleb128 0xd
	.string	"PSI5S"
	.byte	0xb
	.uahalf	0x4bf
	.uaword	0xe742
	.byte	0x3
	.byte	0x23
	.uleb128 0x950
	.uleb128 0xd
	.string	"reserved_970"
	.byte	0xb
	.uahalf	0x4c0
	.uaword	0x3b7
	.byte	0x3
	.byte	0x23
	.uleb128 0x970
	.uleb128 0xd
	.string	"GPSR"
	.byte	0xb
	.uahalf	0x4c1
	.uaword	0xe7e4
	.byte	0x3
	.byte	0x23
	.uleb128 0x990
	.uleb128 0xd
	.string	"reserved_A10"
	.byte	0xb
	.uahalf	0x4c2
	.uaword	0x367
	.byte	0x3
	.byte	0x23
	.uleb128 0xa10
	.uleb128 0xd
	.string	"ASCLIN14"
	.byte	0xb
	.uahalf	0x4c3
	.uaword	0xd568
	.byte	0x3
	.byte	0x23
	.uleb128 0xa50
	.uleb128 0xd
	.string	"ASCLIN15"
	.byte	0xb
	.uahalf	0x4c4
	.uaword	0xd568
	.byte	0x3
	.byte	0x23
	.uleb128 0xa5c
	.uleb128 0xd
	.string	"reserved_A68"
	.byte	0xb
	.uahalf	0x4c5
	.uaword	0x347
	.byte	0x3
	.byte	0x23
	.uleb128 0xa68
	.uleb128 0xd
	.string	"GTM_AEIIRQ"
	.byte	0xb
	.uahalf	0x4c6
	.uaword	0xd3cb
	.byte	0x3
	.byte	0x23
	.uleb128 0xa70
	.uleb128 0xd
	.string	"GTM_ARUIRQ"
	.byte	0xb
	.uahalf	0x4c7
	.uaword	0xe49e
	.byte	0x3
	.byte	0x23
	.uleb128 0xa74
	.uleb128 0xd
	.string	"GTM_BRCIRQ"
	.byte	0xb
	.uahalf	0x4c8
	.uaword	0xd3cb
	.byte	0x3
	.byte	0x23
	.uleb128 0xa80
	.uleb128 0xd
	.string	"GTM_CMBIRQ"
	.byte	0xb
	.uahalf	0x4c9
	.uaword	0xd3cb
	.byte	0x3
	.byte	0x23
	.uleb128 0xa84
	.uleb128 0xd
	.string	"GTM_SPEIRQ"
	.byte	0xb
	.uahalf	0x4ca
	.uaword	0xdad2
	.byte	0x3
	.byte	0x23
	.uleb128 0xa88
	.uleb128 0xd
	.string	"reserved_A98"
	.byte	0xb
	.uahalf	0x4cb
	.uaword	0x347
	.byte	0x3
	.byte	0x23
	.uleb128 0xa98
	.uleb128 0xd
	.string	"GTM_PSM"
	.byte	0xb
	.uahalf	0x4cc
	.uaword	0xf02a
	.byte	0x3
	.byte	0x23
	.uleb128 0xaa0
	.uleb128 0xd
	.string	"reserved_AE0"
	.byte	0xb
	.uahalf	0x4cd
	.uaword	0x3b7
	.byte	0x3
	.byte	0x23
	.uleb128 0xae0
	.uleb128 0xd
	.string	"GTM_DPLL"
	.byte	0xb
	.uahalf	0x4ce
	.uaword	0xf040
	.byte	0x3
	.byte	0x23
	.uleb128 0xb00
	.uleb128 0xd
	.string	"reserved_B6C"
	.byte	0xb
	.uahalf	0x4cf
	.uaword	0x307
	.byte	0x3
	.byte	0x23
	.uleb128 0xb6c
	.uleb128 0xd
	.string	"GTM_ERR"
	.byte	0xb
	.uahalf	0x4d0
	.uaword	0xd3cb
	.byte	0x3
	.byte	0x23
	.uleb128 0xb70
	.uleb128 0xd
	.string	"reserved_B74"
	.byte	0xb
	.uahalf	0x4d1
	.uaword	0x327
	.byte	0x3
	.byte	0x23
	.uleb128 0xb74
	.uleb128 0xd
	.string	"GTM_TIM"
	.byte	0xb
	.uahalf	0x4d2
	.uaword	0xf050
	.byte	0x3
	.byte	0x23
	.uleb128 0xb90
	.uleb128 0xd
	.string	"reserved_C70"
	.byte	0xb
	.uahalf	0x4d3
	.uaword	0x3b7
	.byte	0x3
	.byte	0x23
	.uleb128 0xc70
	.uleb128 0xd
	.string	"ASCLIN16"
	.byte	0xb
	.uahalf	0x4d4
	.uaword	0xd568
	.byte	0x3
	.byte	0x23
	.uleb128 0xc90
	.uleb128 0xd
	.string	"ASCLIN17"
	.byte	0xb
	.uahalf	0x4d5
	.uaword	0xd568
	.byte	0x3
	.byte	0x23
	.uleb128 0xc9c
	.uleb128 0xd
	.string	"reserved_CA8"
	.byte	0xb
	.uahalf	0x4d6
	.uaword	0x347
	.byte	0x3
	.byte	0x23
	.uleb128 0xca8
	.uleb128 0xd
	.string	"GTM_MCS"
	.byte	0xb
	.uahalf	0x4d7
	.uaword	0xf050
	.byte	0x3
	.byte	0x23
	.uleb128 0xcb0
	.uleb128 0xd
	.string	"reserved_D90"
	.byte	0xb
	.uahalf	0x4d8
	.uaword	0x3a7
	.byte	0x3
	.byte	0x23
	.uleb128 0xd90
	.uleb128 0xd
	.string	"ASCLIN18"
	.byte	0xb
	.uahalf	0x4d9
	.uaword	0xd568
	.byte	0x3
	.byte	0x23
	.uleb128 0xdf0
	.uleb128 0xd
	.string	"ASCLIN19"
	.byte	0xb
	.uahalf	0x4da
	.uaword	0xd568
	.byte	0x3
	.byte	0x23
	.uleb128 0xdfc
	.uleb128 0xd
	.string	"reserved_E08"
	.byte	0xb
	.uahalf	0x4db
	.uaword	0x347
	.byte	0x3
	.byte	0x23
	.uleb128 0xe08
	.uleb128 0xd
	.string	"GTM_TOM"
	.byte	0xb
	.uahalf	0x4dc
	.uaword	0xf066
	.byte	0x3
	.byte	0x23
	.uleb128 0xe10
	.uleb128 0xd
	.string	"reserved_EB0"
	.byte	0xb
	.uahalf	0x4dd
	.uaword	0x3b7
	.byte	0x3
	.byte	0x23
	.uleb128 0xeb0
	.uleb128 0xd
	.string	"ASCLIN20"
	.byte	0xb
	.uahalf	0x4de
	.uaword	0xd568
	.byte	0x3
	.byte	0x23
	.uleb128 0xed0
	.uleb128 0xd
	.string	"ASCLIN21"
	.byte	0xb
	.uahalf	0x4df
	.uaword	0xd568
	.byte	0x3
	.byte	0x23
	.uleb128 0xedc
	.uleb128 0xd
	.string	"reserved_EE8"
	.byte	0xb
	.uahalf	0x4e0
	.uaword	0x347
	.byte	0x3
	.byte	0x23
	.uleb128 0xee8
	.uleb128 0xd
	.string	"GTM_ATOM"
	.byte	0xb
	.uahalf	0x4e1
	.uaword	0xf07c
	.byte	0x3
	.byte	0x23
	.uleb128 0xef0
	.uleb128 0xd
	.string	"reserved_F80"
	.byte	0xb
	.uahalf	0x4e2
	.uaword	0x357
	.byte	0x3
	.byte	0x23
	.uleb128 0xf80
	.uleb128 0xd
	.string	"ASCLIN22"
	.byte	0xb
	.uahalf	0x4e3
	.uaword	0xd568
	.byte	0x3
	.byte	0x23
	.uleb128 0xfb0
	.uleb128 0xd
	.string	"ASCLIN23"
	.byte	0xb
	.uahalf	0x4e4
	.uaword	0xd568
	.byte	0x3
	.byte	0x23
	.uleb128 0xfbc
	.uleb128 0xd
	.string	"reserved_FC8"
	.byte	0xb
	.uahalf	0x4e5
	.uaword	0x347
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc8
	.uleb128 0xd
	.string	"GTM_MCSW"
	.byte	0xb
	.uahalf	0x4e6
	.uaword	0xde5d
	.byte	0x3
	.byte	0x23
	.uleb128 0xfd0
	.uleb128 0xd
	.string	"reserved_FF8"
	.byte	0xb
	.uahalf	0x4e7
	.uaword	0xf092
	.byte	0x3
	.byte	0x23
	.uleb128 0xff8
	.byte	0
	.uleb128 0x5
	.uaword	0xd3cb
	.uaword	0xf040
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0x1
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.uaword	0xd3cb
	.uaword	0xf050
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.uaword	0xd3cb
	.uaword	0xf066
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0x6
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.uaword	0xd3cb
	.uaword	0xf07c
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0x4
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.uaword	0xd3cb
	.uaword	0xf092
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0x8
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.uaword	0x2b5
	.uaword	0xf0a3
	.uleb128 0x19
	.uaword	0x2fb
	.uahalf	0x1007
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SRC"
	.byte	0xb
	.uahalf	0x4e8
	.uaword	0xf0b3
	.uleb128 0x4
	.uaword	0xe7fe
	.uleb128 0x10
	.string	"_Ifx_STM_ACCEN0_Bits"
	.byte	0x4
	.byte	0xc
	.byte	0x44
	.uaword	0xf30c
	.uleb128 0x11
	.string	"EN0"
	.byte	0xc
	.byte	0x46
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN1"
	.byte	0xc
	.byte	0x47
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN2"
	.byte	0xc
	.byte	0x48
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN3"
	.byte	0xc
	.byte	0x49
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN4"
	.byte	0xc
	.byte	0x4a
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN5"
	.byte	0xc
	.byte	0x4b
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN6"
	.byte	0xc
	.byte	0x4c
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN7"
	.byte	0xc
	.byte	0x4d
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN8"
	.byte	0xc
	.byte	0x4e
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN9"
	.byte	0xc
	.byte	0x4f
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN10"
	.byte	0xc
	.byte	0x50
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN11"
	.byte	0xc
	.byte	0x51
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN12"
	.byte	0xc
	.byte	0x52
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN13"
	.byte	0xc
	.byte	0x53
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN14"
	.byte	0xc
	.byte	0x54
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN15"
	.byte	0xc
	.byte	0x55
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN16"
	.byte	0xc
	.byte	0x56
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN17"
	.byte	0xc
	.byte	0x57
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN18"
	.byte	0xc
	.byte	0x58
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN19"
	.byte	0xc
	.byte	0x59
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN20"
	.byte	0xc
	.byte	0x5a
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN21"
	.byte	0xc
	.byte	0x5b
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN22"
	.byte	0xc
	.byte	0x5c
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN23"
	.byte	0xc
	.byte	0x5d
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN24"
	.byte	0xc
	.byte	0x5e
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN25"
	.byte	0xc
	.byte	0x5f
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN26"
	.byte	0xc
	.byte	0x60
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN27"
	.byte	0xc
	.byte	0x61
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN28"
	.byte	0xc
	.byte	0x62
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN29"
	.byte	0xc
	.byte	0x63
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN30"
	.byte	0xc
	.byte	0x64
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EN31"
	.byte	0xc
	.byte	0x65
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_ACCEN0_Bits"
	.byte	0xc
	.byte	0x66
	.uaword	0xf0b8
	.uleb128 0x10
	.string	"_Ifx_STM_ACCEN1_Bits"
	.byte	0x4
	.byte	0xc
	.byte	0x69
	.uaword	0xf356
	.uleb128 0x12
	.uaword	.LASF14
	.byte	0xc
	.byte	0x6b
	.uaword	0x2ca
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_ACCEN1_Bits"
	.byte	0xc
	.byte	0x6c
	.uaword	0xf327
	.uleb128 0x10
	.string	"_Ifx_STM_CAP_Bits"
	.byte	0x4
	.byte	0xc
	.byte	0x6f
	.uaword	0xf39d
	.uleb128 0x12
	.uaword	.LASF49
	.byte	0xc
	.byte	0x71
	.uaword	0x2ca
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_CAP_Bits"
	.byte	0xc
	.byte	0x72
	.uaword	0xf371
	.uleb128 0x10
	.string	"_Ifx_STM_CAPSV_Bits"
	.byte	0x4
	.byte	0xc
	.byte	0x75
	.uaword	0xf3e3
	.uleb128 0x12
	.uaword	.LASF49
	.byte	0xc
	.byte	0x77
	.uaword	0x2ca
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_CAPSV_Bits"
	.byte	0xc
	.byte	0x78
	.uaword	0xf3b5
	.uleb128 0x10
	.string	"_Ifx_STM_CLC_Bits"
	.byte	0x4
	.byte	0xc
	.byte	0x7b
	.uaword	0xf470
	.uleb128 0x11
	.string	"DISR"
	.byte	0xc
	.byte	0x7d
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"DISS"
	.byte	0xc
	.byte	0x7e
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF5
	.byte	0xc
	.byte	0x7f
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EDIS"
	.byte	0xc
	.byte	0x80
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF3
	.byte	0xc
	.byte	0x81
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_CLC_Bits"
	.byte	0xc
	.byte	0x82
	.uaword	0xf3fd
	.uleb128 0x10
	.string	"_Ifx_STM_CMCON_Bits"
	.byte	0x4
	.byte	0xc
	.byte	0x85
	.uaword	0xf53b
	.uleb128 0x11
	.string	"MSIZE0"
	.byte	0xc
	.byte	0x87
	.uaword	0x2ca
	.byte	0x4
	.byte	0x5
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF8
	.byte	0xc
	.byte	0x88
	.uaword	0x2ca
	.byte	0x4
	.byte	0x3
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"MSTART0"
	.byte	0xc
	.byte	0x89
	.uaword	0x2ca
	.byte	0x4
	.byte	0x5
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF28
	.byte	0xc
	.byte	0x8a
	.uaword	0x2ca
	.byte	0x4
	.byte	0x3
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"MSIZE1"
	.byte	0xc
	.byte	0x8b
	.uaword	0x2ca
	.byte	0x4
	.byte	0x5
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF23
	.byte	0xc
	.byte	0x8c
	.uaword	0x2ca
	.byte	0x4
	.byte	0x3
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"MSTART1"
	.byte	0xc
	.byte	0x8d
	.uaword	0x2ca
	.byte	0x4
	.byte	0x5
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF12
	.byte	0xc
	.byte	0x8e
	.uaword	0x2ca
	.byte	0x4
	.byte	0x3
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_CMCON_Bits"
	.byte	0xc
	.byte	0x8f
	.uaword	0xf488
	.uleb128 0x10
	.string	"_Ifx_STM_CMP_Bits"
	.byte	0x4
	.byte	0xc
	.byte	0x92
	.uaword	0xf584
	.uleb128 0x11
	.string	"CMPVAL"
	.byte	0xc
	.byte	0x94
	.uaword	0x2ca
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_CMP_Bits"
	.byte	0xc
	.byte	0x95
	.uaword	0xf555
	.uleb128 0x10
	.string	"_Ifx_STM_ICR_Bits"
	.byte	0x4
	.byte	0xc
	.byte	0x98
	.uaword	0xf651
	.uleb128 0x11
	.string	"CMP0EN"
	.byte	0xc
	.byte	0x9a
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"CMP0IR"
	.byte	0xc
	.byte	0x9b
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"CMP0OS"
	.byte	0xc
	.byte	0x9c
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF34
	.byte	0xc
	.byte	0x9d
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"CMP1EN"
	.byte	0xc
	.byte	0x9e
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"CMP1IR"
	.byte	0xc
	.byte	0x9f
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"CMP1OS"
	.byte	0xc
	.byte	0xa0
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF29
	.byte	0xc
	.byte	0xa1
	.uaword	0x2ca
	.byte	0x4
	.byte	0x19
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_ICR_Bits"
	.byte	0xc
	.byte	0xa2
	.uaword	0xf59c
	.uleb128 0x10
	.string	"_Ifx_STM_ID_Bits"
	.byte	0x4
	.byte	0xc
	.byte	0xa5
	.uaword	0xf6c0
	.uleb128 0x11
	.string	"MODREV"
	.byte	0xc
	.byte	0xa7
	.uaword	0x2ca
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"MODTYPE"
	.byte	0xc
	.byte	0xa8
	.uaword	0x2ca
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"MODNUM"
	.byte	0xc
	.byte	0xa9
	.uaword	0x2ca
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_ID_Bits"
	.byte	0xc
	.byte	0xaa
	.uaword	0xf669
	.uleb128 0x10
	.string	"_Ifx_STM_ISCR_Bits"
	.byte	0x4
	.byte	0xc
	.byte	0xad
	.uaword	0xf758
	.uleb128 0x11
	.string	"CMP0IRR"
	.byte	0xc
	.byte	0xaf
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"CMP0IRS"
	.byte	0xc
	.byte	0xb0
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"CMP1IRR"
	.byte	0xc
	.byte	0xb1
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"CMP1IRS"
	.byte	0xc
	.byte	0xb2
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF3
	.byte	0xc
	.byte	0xb3
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_ISCR_Bits"
	.byte	0xc
	.byte	0xb4
	.uaword	0xf6d7
	.uleb128 0x10
	.string	"_Ifx_STM_KRST0_Bits"
	.byte	0x4
	.byte	0xc
	.byte	0xb7
	.uaword	0xf7c1
	.uleb128 0x11
	.string	"RST"
	.byte	0xc
	.byte	0xb9
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF38
	.byte	0xc
	.byte	0xba
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF5
	.byte	0xc
	.byte	0xbb
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_KRST0_Bits"
	.byte	0xc
	.byte	0xbc
	.uaword	0xf771
	.uleb128 0x10
	.string	"_Ifx_STM_KRST1_Bits"
	.byte	0x4
	.byte	0xc
	.byte	0xbf
	.uaword	0xf81a
	.uleb128 0x11
	.string	"RST"
	.byte	0xc
	.byte	0xc1
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF7
	.byte	0xc
	.byte	0xc2
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_KRST1_Bits"
	.byte	0xc
	.byte	0xc3
	.uaword	0xf7db
	.uleb128 0x10
	.string	"_Ifx_STM_KRSTCLR_Bits"
	.byte	0x4
	.byte	0xc
	.byte	0xc6
	.uaword	0xf875
	.uleb128 0x11
	.string	"CLR"
	.byte	0xc
	.byte	0xc8
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF7
	.byte	0xc
	.byte	0xc9
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_KRSTCLR_Bits"
	.byte	0xc
	.byte	0xca
	.uaword	0xf834
	.uleb128 0x10
	.string	"_Ifx_STM_OCS_Bits"
	.byte	0x4
	.byte	0xc
	.byte	0xcd
	.uaword	0xf917
	.uleb128 0x12
	.uaword	.LASF14
	.byte	0xc
	.byte	0xcf
	.uaword	0x2ca
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF34
	.byte	0xc
	.byte	0xd0
	.uaword	0x2ca
	.byte	0x4
	.byte	0x15
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SUS"
	.byte	0xc
	.byte	0xd1
	.uaword	0x2ca
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SUS_P"
	.byte	0xc
	.byte	0xd2
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SUSSTA"
	.byte	0xc
	.byte	0xd3
	.uaword	0x2ca
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF26
	.byte	0xc
	.byte	0xd4
	.uaword	0x2ca
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_OCS_Bits"
	.byte	0xc
	.byte	0xd5
	.uaword	0xf891
	.uleb128 0x10
	.string	"_Ifx_STM_TIM0_Bits"
	.byte	0x4
	.byte	0xc
	.byte	0xd8
	.uaword	0xf95c
	.uleb128 0x12
	.uaword	.LASF50
	.byte	0xc
	.byte	0xda
	.uaword	0x2ca
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_TIM0_Bits"
	.byte	0xc
	.byte	0xdb
	.uaword	0xf92f
	.uleb128 0x10
	.string	"_Ifx_STM_TIM0SV_Bits"
	.byte	0x4
	.byte	0xc
	.byte	0xde
	.uaword	0xf9a4
	.uleb128 0x12
	.uaword	.LASF50
	.byte	0xc
	.byte	0xe0
	.uaword	0x2ca
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_TIM0SV_Bits"
	.byte	0xc
	.byte	0xe1
	.uaword	0xf975
	.uleb128 0x10
	.string	"_Ifx_STM_TIM1_Bits"
	.byte	0x4
	.byte	0xc
	.byte	0xe4
	.uaword	0xf9f1
	.uleb128 0x11
	.string	"STM_35_4"
	.byte	0xc
	.byte	0xe6
	.uaword	0x2ca
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_TIM1_Bits"
	.byte	0xc
	.byte	0xe7
	.uaword	0xf9bf
	.uleb128 0x10
	.string	"_Ifx_STM_TIM2_Bits"
	.byte	0x4
	.byte	0xc
	.byte	0xea
	.uaword	0xfa3c
	.uleb128 0x11
	.string	"STM_39_8"
	.byte	0xc
	.byte	0xec
	.uaword	0x2ca
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_TIM2_Bits"
	.byte	0xc
	.byte	0xed
	.uaword	0xfa0a
	.uleb128 0x10
	.string	"_Ifx_STM_TIM3_Bits"
	.byte	0x4
	.byte	0xc
	.byte	0xf0
	.uaword	0xfa88
	.uleb128 0x11
	.string	"STM_43_12"
	.byte	0xc
	.byte	0xf2
	.uaword	0x2ca
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_TIM3_Bits"
	.byte	0xc
	.byte	0xf3
	.uaword	0xfa55
	.uleb128 0x10
	.string	"_Ifx_STM_TIM4_Bits"
	.byte	0x4
	.byte	0xc
	.byte	0xf6
	.uaword	0xfad4
	.uleb128 0x11
	.string	"STM_47_16"
	.byte	0xc
	.byte	0xf8
	.uaword	0x2ca
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_TIM4_Bits"
	.byte	0xc
	.byte	0xf9
	.uaword	0xfaa1
	.uleb128 0x10
	.string	"_Ifx_STM_TIM5_Bits"
	.byte	0x4
	.byte	0xc
	.byte	0xfc
	.uaword	0xfb20
	.uleb128 0x11
	.string	"STM_51_20"
	.byte	0xc
	.byte	0xfe
	.uaword	0x2ca
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_TIM5_Bits"
	.byte	0xc
	.byte	0xff
	.uaword	0xfaed
	.uleb128 0x13
	.string	"_Ifx_STM_TIM6_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x102
	.uaword	0xfb6e
	.uleb128 0x15
	.string	"STM_63_32"
	.byte	0xc
	.uahalf	0x104
	.uaword	0x2ca
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_STM_TIM6_Bits"
	.byte	0xc
	.uahalf	0x105
	.uaword	0xfb39
	.uleb128 0x16
	.byte	0x4
	.byte	0xc
	.uahalf	0x10d
	.uaword	0xfbb0
	.uleb128 0x17
	.string	"U"
	.byte	0xc
	.uahalf	0x10f
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xc
	.uahalf	0x110
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xc
	.uahalf	0x111
	.uaword	0xf30c
	.byte	0
	.uleb128 0xb
	.string	"Ifx_STM_ACCEN0"
	.byte	0xc
	.uahalf	0x112
	.uaword	0xfb88
	.uleb128 0x16
	.byte	0x4
	.byte	0xc
	.uahalf	0x115
	.uaword	0xfbef
	.uleb128 0x17
	.string	"U"
	.byte	0xc
	.uahalf	0x117
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xc
	.uahalf	0x118
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xc
	.uahalf	0x119
	.uaword	0xf356
	.byte	0
	.uleb128 0xb
	.string	"Ifx_STM_ACCEN1"
	.byte	0xc
	.uahalf	0x11a
	.uaword	0xfbc7
	.uleb128 0x16
	.byte	0x4
	.byte	0xc
	.uahalf	0x11d
	.uaword	0xfc2e
	.uleb128 0x17
	.string	"U"
	.byte	0xc
	.uahalf	0x11f
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xc
	.uahalf	0x120
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xc
	.uahalf	0x121
	.uaword	0xf39d
	.byte	0
	.uleb128 0xb
	.string	"Ifx_STM_CAP"
	.byte	0xc
	.uahalf	0x122
	.uaword	0xfc06
	.uleb128 0x16
	.byte	0x4
	.byte	0xc
	.uahalf	0x125
	.uaword	0xfc6a
	.uleb128 0x17
	.string	"U"
	.byte	0xc
	.uahalf	0x127
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xc
	.uahalf	0x128
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xc
	.uahalf	0x129
	.uaword	0xf3e3
	.byte	0
	.uleb128 0xb
	.string	"Ifx_STM_CAPSV"
	.byte	0xc
	.uahalf	0x12a
	.uaword	0xfc42
	.uleb128 0x16
	.byte	0x4
	.byte	0xc
	.uahalf	0x12d
	.uaword	0xfca8
	.uleb128 0x17
	.string	"U"
	.byte	0xc
	.uahalf	0x12f
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xc
	.uahalf	0x130
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xc
	.uahalf	0x131
	.uaword	0xf470
	.byte	0
	.uleb128 0xb
	.string	"Ifx_STM_CLC"
	.byte	0xc
	.uahalf	0x132
	.uaword	0xfc80
	.uleb128 0x16
	.byte	0x4
	.byte	0xc
	.uahalf	0x135
	.uaword	0xfce4
	.uleb128 0x17
	.string	"U"
	.byte	0xc
	.uahalf	0x137
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xc
	.uahalf	0x138
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xc
	.uahalf	0x139
	.uaword	0xf53b
	.byte	0
	.uleb128 0xb
	.string	"Ifx_STM_CMCON"
	.byte	0xc
	.uahalf	0x13a
	.uaword	0xfcbc
	.uleb128 0x16
	.byte	0x4
	.byte	0xc
	.uahalf	0x13d
	.uaword	0xfd22
	.uleb128 0x17
	.string	"U"
	.byte	0xc
	.uahalf	0x13f
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xc
	.uahalf	0x140
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xc
	.uahalf	0x141
	.uaword	0xf584
	.byte	0
	.uleb128 0xb
	.string	"Ifx_STM_CMP"
	.byte	0xc
	.uahalf	0x142
	.uaword	0xfcfa
	.uleb128 0x16
	.byte	0x4
	.byte	0xc
	.uahalf	0x145
	.uaword	0xfd5e
	.uleb128 0x17
	.string	"U"
	.byte	0xc
	.uahalf	0x147
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xc
	.uahalf	0x148
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xc
	.uahalf	0x149
	.uaword	0xf651
	.byte	0
	.uleb128 0xb
	.string	"Ifx_STM_ICR"
	.byte	0xc
	.uahalf	0x14a
	.uaword	0xfd36
	.uleb128 0x16
	.byte	0x4
	.byte	0xc
	.uahalf	0x14d
	.uaword	0xfd9a
	.uleb128 0x17
	.string	"U"
	.byte	0xc
	.uahalf	0x14f
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xc
	.uahalf	0x150
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xc
	.uahalf	0x151
	.uaword	0xf6c0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_STM_ID"
	.byte	0xc
	.uahalf	0x152
	.uaword	0xfd72
	.uleb128 0x16
	.byte	0x4
	.byte	0xc
	.uahalf	0x155
	.uaword	0xfdd5
	.uleb128 0x17
	.string	"U"
	.byte	0xc
	.uahalf	0x157
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xc
	.uahalf	0x158
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xc
	.uahalf	0x159
	.uaword	0xf758
	.byte	0
	.uleb128 0xb
	.string	"Ifx_STM_ISCR"
	.byte	0xc
	.uahalf	0x15a
	.uaword	0xfdad
	.uleb128 0x16
	.byte	0x4
	.byte	0xc
	.uahalf	0x15d
	.uaword	0xfe12
	.uleb128 0x17
	.string	"U"
	.byte	0xc
	.uahalf	0x15f
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xc
	.uahalf	0x160
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xc
	.uahalf	0x161
	.uaword	0xf7c1
	.byte	0
	.uleb128 0xb
	.string	"Ifx_STM_KRST0"
	.byte	0xc
	.uahalf	0x162
	.uaword	0xfdea
	.uleb128 0x16
	.byte	0x4
	.byte	0xc
	.uahalf	0x165
	.uaword	0xfe50
	.uleb128 0x17
	.string	"U"
	.byte	0xc
	.uahalf	0x167
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xc
	.uahalf	0x168
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xc
	.uahalf	0x169
	.uaword	0xf81a
	.byte	0
	.uleb128 0xb
	.string	"Ifx_STM_KRST1"
	.byte	0xc
	.uahalf	0x16a
	.uaword	0xfe28
	.uleb128 0x16
	.byte	0x4
	.byte	0xc
	.uahalf	0x16d
	.uaword	0xfe8e
	.uleb128 0x17
	.string	"U"
	.byte	0xc
	.uahalf	0x16f
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xc
	.uahalf	0x170
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xc
	.uahalf	0x171
	.uaword	0xf875
	.byte	0
	.uleb128 0xb
	.string	"Ifx_STM_KRSTCLR"
	.byte	0xc
	.uahalf	0x172
	.uaword	0xfe66
	.uleb128 0x16
	.byte	0x4
	.byte	0xc
	.uahalf	0x175
	.uaword	0xfece
	.uleb128 0x17
	.string	"U"
	.byte	0xc
	.uahalf	0x177
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xc
	.uahalf	0x178
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xc
	.uahalf	0x179
	.uaword	0xf917
	.byte	0
	.uleb128 0xb
	.string	"Ifx_STM_OCS"
	.byte	0xc
	.uahalf	0x17a
	.uaword	0xfea6
	.uleb128 0x16
	.byte	0x4
	.byte	0xc
	.uahalf	0x17d
	.uaword	0xff0a
	.uleb128 0x17
	.string	"U"
	.byte	0xc
	.uahalf	0x17f
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xc
	.uahalf	0x180
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xc
	.uahalf	0x181
	.uaword	0xf95c
	.byte	0
	.uleb128 0xb
	.string	"Ifx_STM_TIM0"
	.byte	0xc
	.uahalf	0x182
	.uaword	0xfee2
	.uleb128 0x16
	.byte	0x4
	.byte	0xc
	.uahalf	0x185
	.uaword	0xff47
	.uleb128 0x17
	.string	"U"
	.byte	0xc
	.uahalf	0x187
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xc
	.uahalf	0x188
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xc
	.uahalf	0x189
	.uaword	0xf9a4
	.byte	0
	.uleb128 0xb
	.string	"Ifx_STM_TIM0SV"
	.byte	0xc
	.uahalf	0x18a
	.uaword	0xff1f
	.uleb128 0x16
	.byte	0x4
	.byte	0xc
	.uahalf	0x18d
	.uaword	0xff86
	.uleb128 0x17
	.string	"U"
	.byte	0xc
	.uahalf	0x18f
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xc
	.uahalf	0x190
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xc
	.uahalf	0x191
	.uaword	0xf9f1
	.byte	0
	.uleb128 0xb
	.string	"Ifx_STM_TIM1"
	.byte	0xc
	.uahalf	0x192
	.uaword	0xff5e
	.uleb128 0x16
	.byte	0x4
	.byte	0xc
	.uahalf	0x195
	.uaword	0xffc3
	.uleb128 0x17
	.string	"U"
	.byte	0xc
	.uahalf	0x197
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xc
	.uahalf	0x198
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xc
	.uahalf	0x199
	.uaword	0xfa3c
	.byte	0
	.uleb128 0xb
	.string	"Ifx_STM_TIM2"
	.byte	0xc
	.uahalf	0x19a
	.uaword	0xff9b
	.uleb128 0x16
	.byte	0x4
	.byte	0xc
	.uahalf	0x19d
	.uaword	0x10000
	.uleb128 0x17
	.string	"U"
	.byte	0xc
	.uahalf	0x19f
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xc
	.uahalf	0x1a0
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xc
	.uahalf	0x1a1
	.uaword	0xfa88
	.byte	0
	.uleb128 0xb
	.string	"Ifx_STM_TIM3"
	.byte	0xc
	.uahalf	0x1a2
	.uaword	0xffd8
	.uleb128 0x16
	.byte	0x4
	.byte	0xc
	.uahalf	0x1a5
	.uaword	0x1003d
	.uleb128 0x17
	.string	"U"
	.byte	0xc
	.uahalf	0x1a7
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xc
	.uahalf	0x1a8
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xc
	.uahalf	0x1a9
	.uaword	0xfad4
	.byte	0
	.uleb128 0xb
	.string	"Ifx_STM_TIM4"
	.byte	0xc
	.uahalf	0x1aa
	.uaword	0x10015
	.uleb128 0x16
	.byte	0x4
	.byte	0xc
	.uahalf	0x1ad
	.uaword	0x1007a
	.uleb128 0x17
	.string	"U"
	.byte	0xc
	.uahalf	0x1af
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xc
	.uahalf	0x1b0
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xc
	.uahalf	0x1b1
	.uaword	0xfb20
	.byte	0
	.uleb128 0xb
	.string	"Ifx_STM_TIM5"
	.byte	0xc
	.uahalf	0x1b2
	.uaword	0x10052
	.uleb128 0x16
	.byte	0x4
	.byte	0xc
	.uahalf	0x1b5
	.uaword	0x100b7
	.uleb128 0x17
	.string	"U"
	.byte	0xc
	.uahalf	0x1b7
	.uaword	0x2ca
	.uleb128 0x17
	.string	"I"
	.byte	0xc
	.uahalf	0x1b8
	.uaword	0x2e0
	.uleb128 0x17
	.string	"B"
	.byte	0xc
	.uahalf	0x1b9
	.uaword	0xfb6e
	.byte	0
	.uleb128 0xb
	.string	"Ifx_STM_TIM6"
	.byte	0xc
	.uahalf	0x1ba
	.uaword	0x1008f
	.uleb128 0x18
	.string	"_Ifx_STM"
	.uahalf	0x100
	.byte	0xc
	.uahalf	0x1c6
	.uaword	0x10290
	.uleb128 0xd
	.string	"CLC"
	.byte	0xc
	.uahalf	0x1c8
	.uaword	0xfca8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.uaword	.LASF3
	.byte	0xc
	.uahalf	0x1c9
	.uaword	0x307
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"ID"
	.byte	0xc
	.uahalf	0x1ca
	.uaword	0xfd9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.uaword	.LASF42
	.byte	0xc
	.uahalf	0x1cb
	.uaword	0x307
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"TIM0"
	.byte	0xc
	.uahalf	0x1cc
	.uaword	0xff0a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"TIM1"
	.byte	0xc
	.uahalf	0x1cd
	.uaword	0xff86
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"TIM2"
	.byte	0xc
	.uahalf	0x1ce
	.uaword	0xffc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"TIM3"
	.byte	0xc
	.uahalf	0x1cf
	.uaword	0x10000
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"TIM4"
	.byte	0xc
	.uahalf	0x1d0
	.uaword	0x1003d
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"TIM5"
	.byte	0xc
	.uahalf	0x1d1
	.uaword	0x1007a
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"TIM6"
	.byte	0xc
	.uahalf	0x1d2
	.uaword	0x100b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.string	"CAP"
	.byte	0xc
	.uahalf	0x1d3
	.uaword	0xfc2e
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"CMP"
	.byte	0xc
	.uahalf	0x1d4
	.uaword	0x10290
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"CMCON"
	.byte	0xc
	.uahalf	0x1d5
	.uaword	0xfce4
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"ICR"
	.byte	0xc
	.uahalf	0x1d6
	.uaword	0xfd5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"ISCR"
	.byte	0xc
	.uahalf	0x1d7
	.uaword	0xfdd5
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xf
	.uaword	.LASF39
	.byte	0xc
	.uahalf	0x1d8
	.uaword	0x317
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"TIM0SV"
	.byte	0xc
	.uahalf	0x1d9
	.uaword	0xff47
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.string	"CAPSV"
	.byte	0xc
	.uahalf	0x1da
	.uaword	0xfc6a
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xd
	.string	"reserved_58"
	.byte	0xc
	.uahalf	0x1db
	.uaword	0x102a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.string	"OCS"
	.byte	0xc
	.uahalf	0x1dc
	.uaword	0xfece
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xd
	.string	"KRSTCLR"
	.byte	0xc
	.uahalf	0x1dd
	.uaword	0xfe8e
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xd
	.string	"KRST1"
	.byte	0xc
	.uahalf	0x1de
	.uaword	0xfe50
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xd
	.string	"KRST0"
	.byte	0xc
	.uahalf	0x1df
	.uaword	0xfe12
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xd
	.string	"ACCEN1"
	.byte	0xc
	.uahalf	0x1e0
	.uaword	0xfbef
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0xd
	.string	"ACCEN0"
	.byte	0xc
	.uahalf	0x1e1
	.uaword	0xfbb0
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.byte	0
	.uleb128 0x5
	.uaword	0xfd22
	.uaword	0x102a0
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.uaword	0x2b5
	.uaword	0x102b0
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0x8f
	.byte	0
	.uleb128 0xb
	.string	"Ifx_STM"
	.byte	0xc
	.uahalf	0x1e2
	.uaword	0x102c0
	.uleb128 0x4
	.uaword	0x100cc
	.uleb128 0xc
	.byte	0x4
	.byte	0x1
	.uahalf	0x16e
	.uaword	0x102fd
	.uleb128 0xd
	.string	"PreviousGroup"
	.byte	0x1
	.uahalf	0x170
	.uaword	0x5bd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"NextGroup"
	.byte	0x1
	.uahalf	0x171
	.uaword	0x5bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0xb
	.string	"Adc_QueueDataType"
	.byte	0x1
	.uahalf	0x172
	.uaword	0x102c5
	.uleb128 0xc
	.byte	0x4
	.byte	0x1
	.uahalf	0x176
	.uaword	0x10372
	.uleb128 0xd
	.string	"ActiveGroupId"
	.byte	0x1
	.uahalf	0x178
	.uaword	0x5bd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"ActiveLimitChkCh"
	.byte	0x1
	.uahalf	0x179
	.uaword	0x5a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xd
	.string	"IsrNoServiceFlag"
	.byte	0x1
	.uahalf	0x180
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0xb
	.string	"Adc_RSDataType"
	.byte	0x1
	.uahalf	0x181
	.uaword	0x10317
	.uleb128 0xc
	.byte	0x38
	.byte	0x1
	.uahalf	0x184
	.uaword	0x104e3
	.uleb128 0xd
	.string	"GrpResBuffer"
	.byte	0x1
	.uahalf	0x187
	.uaword	0x104e3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"GrpStatus"
	.byte	0x1
	.uahalf	0x189
	.uaword	0x233
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"GrpResultStatus"
	.byte	0x1
	.uahalf	0x18a
	.uaword	0x233
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"GrpBufferEndResultStatus"
	.byte	0x1
	.uahalf	0x18b
	.uaword	0x233
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"GrpNotifStatus"
	.byte	0x1
	.uahalf	0x18c
	.uaword	0x233
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"QueueOfSwGroup"
	.byte	0x1
	.uahalf	0x18e
	.uaword	0x104f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"PopGroupId"
	.byte	0x1
	.uahalf	0x18f
	.uaword	0x5bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"PushGroupId"
	.byte	0x1
	.uahalf	0x190
	.uaword	0x5bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x22
	.uleb128 0xd
	.string	"RSData"
	.byte	0x1
	.uahalf	0x192
	.uaword	0x10509
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"AllRunningChannels"
	.byte	0x1
	.uahalf	0x193
	.uaword	0x1f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"AllRunningResReg"
	.byte	0x1
	.uahalf	0x194
	.uaword	0x1f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x32
	.uleb128 0xd
	.string	"NumofValidConRes"
	.byte	0x1
	.uahalf	0x196
	.uaword	0x10519
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"AliasActiveFlag"
	.byte	0x1
	.uahalf	0x19c
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x36
	.byte	0
	.uleb128 0x5
	.uaword	0x104f3
	.uaword	0x104f3
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.uaword	0x5d2
	.uleb128 0x5
	.uaword	0x102fd
	.uaword	0x10509
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.uaword	0x10372
	.uaword	0x10519
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.uaword	0x609
	.uaword	0x10529
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.string	"Adc_GlobalDataType"
	.byte	0x1
	.uahalf	0x19e
	.uaword	0x10389
	.uleb128 0x1d
	.string	"_extru"
	.byte	0x3
	.uahalf	0x265
	.byte	0x1
	.uaword	0x241
	.byte	0x3
	.uaword	0x10584
	.uleb128 0x1e
	.string	"a"
	.byte	0x3
	.uahalf	0x265
	.uaword	0x241
	.uleb128 0x1e
	.string	"p"
	.byte	0x3
	.uahalf	0x265
	.uaword	0x241
	.uleb128 0x1e
	.string	"w"
	.byte	0x3
	.uahalf	0x265
	.uaword	0x241
	.uleb128 0x1f
	.string	"res"
	.byte	0x3
	.uahalf	0x266
	.uaword	0x241
	.byte	0
	.uleb128 0x1d
	.string	"Adc_lGetKernelDataAddress"
	.byte	0x1
	.uahalf	0x11fc
	.byte	0x1
	.uaword	0x105c5
	.byte	0x3
	.uaword	0x105c5
	.uleb128 0x20
	.uaword	.LASF51
	.byte	0x1
	.uahalf	0x11fd
	.uaword	0x105cb
	.uleb128 0x20
	.uaword	.LASF52
	.byte	0x1
	.uahalf	0x11fd
	.uaword	0x105cb
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.uaword	0x10529
	.uleb128 0xe
	.uaword	0x233
	.uleb128 0x1d
	.string	"Adc_lGetGroupStatus"
	.byte	0x1
	.uahalf	0x13e0
	.byte	0x1
	.uaword	0x233
	.byte	0x3
	.uaword	0x1060b
	.uleb128 0x20
	.uaword	.LASF53
	.byte	0x1
	.uahalf	0x13e1
	.uaword	0x1060b
	.uleb128 0x20
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0x13e1
	.uaword	0x1061b
	.byte	0
	.uleb128 0xe
	.uaword	0x10610
	.uleb128 0x9
	.byte	0x4
	.uaword	0x10616
	.uleb128 0xe
	.uaword	0x10529
	.uleb128 0xe
	.uaword	0x5bd
	.uleb128 0x1d
	.string	"Adc_lGetGroupResultStatus"
	.byte	0x1
	.uahalf	0x1404
	.byte	0x1
	.uaword	0x233
	.byte	0x3
	.uaword	0x10661
	.uleb128 0x20
	.uaword	.LASF53
	.byte	0x1
	.uahalf	0x1405
	.uaword	0x1060b
	.uleb128 0x20
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0x1405
	.uaword	0x1061b
	.byte	0
	.uleb128 0x1d
	.string	"Adc_lGetResBuffEndStatus"
	.byte	0x1
	.uahalf	0x1427
	.byte	0x1
	.uaword	0x233
	.byte	0x3
	.uaword	0x106a1
	.uleb128 0x20
	.uaword	.LASF53
	.byte	0x1
	.uahalf	0x1428
	.uaword	0x1060b
	.uleb128 0x20
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0x1428
	.uaword	0x1061b
	.byte	0
	.uleb128 0x1d
	.string	"Adc_lGetGroupNotifStatus"
	.byte	0x1
	.uahalf	0x144d
	.byte	0x1
	.uaword	0x233
	.byte	0x3
	.uaword	0x106e1
	.uleb128 0x20
	.uaword	.LASF53
	.byte	0x1
	.uahalf	0x144e
	.uaword	0x1060b
	.uleb128 0x20
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0x144e
	.uaword	0x1061b
	.byte	0
	.uleb128 0x21
	.string	"Adc_lSetRunningChAndResReg"
	.byte	0x1
	.uahalf	0x14cf
	.byte	0x1
	.byte	0x1
	.uaword	0x10737
	.uleb128 0x20
	.uaword	.LASF51
	.byte	0x1
	.uahalf	0x14cf
	.uaword	0x105cb
	.uleb128 0x20
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x14d0
	.uaword	0x10737
	.uleb128 0x20
	.uaword	.LASF52
	.byte	0x1
	.uahalf	0x14d1
	.uaword	0x105cb
	.uleb128 0x22
	.uaword	.LASF55
	.byte	0x1
	.uahalf	0x14d3
	.uaword	0x105c5
	.byte	0
	.uleb128 0xe
	.uaword	0xce5
	.uleb128 0x21
	.string	"Adc_lClrRunningChAndResReg"
	.byte	0x1
	.uahalf	0x1520
	.byte	0x1
	.byte	0x1
	.uaword	0x10792
	.uleb128 0x20
	.uaword	.LASF51
	.byte	0x1
	.uahalf	0x1520
	.uaword	0x105cb
	.uleb128 0x20
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x1521
	.uaword	0x10737
	.uleb128 0x20
	.uaword	.LASF52
	.byte	0x1
	.uahalf	0x1522
	.uaword	0x105cb
	.uleb128 0x22
	.uaword	.LASF55
	.byte	0x1
	.uahalf	0x1524
	.uaword	0x105c5
	.byte	0
	.uleb128 0x21
	.string	"Adc_lKernelInit"
	.byte	0x1
	.uahalf	0x185d
	.byte	0x1
	.byte	0x3
	.uaword	0x107e3
	.uleb128 0x20
	.uaword	.LASF56
	.byte	0x1
	.uahalf	0x185d
	.uaword	0x107e3
	.uleb128 0x20
	.uaword	.LASF51
	.byte	0x1
	.uahalf	0x185e
	.uaword	0x105cb
	.uleb128 0x22
	.uaword	.LASF57
	.byte	0x1
	.uahalf	0x1860
	.uaword	0x107e8
	.uleb128 0x1f
	.string	"lHwCfgPtr"
	.byte	0x1
	.uahalf	0x1861
	.uaword	0xccf
	.byte	0
	.uleb128 0xe
	.uaword	0xdc1
	.uleb128 0x9
	.byte	0x4
	.uaword	0x5c13
	.uleb128 0x21
	.string	"Adc_lRemoveActiveGroup"
	.byte	0x1
	.uahalf	0x2343
	.byte	0x1
	.byte	0x3
	.uaword	0x10834
	.uleb128 0x20
	.uaword	.LASF53
	.byte	0x1
	.uahalf	0x2344
	.uaword	0x10834
	.uleb128 0x20
	.uaword	.LASF58
	.byte	0x1
	.uahalf	0x2345
	.uaword	0x10737
	.uleb128 0x20
	.uaword	.LASF59
	.byte	0x1
	.uahalf	0x2346
	.uaword	0x10839
	.byte	0
	.uleb128 0xe
	.uaword	0x105c5
	.uleb128 0xe
	.uaword	0x1cc
	.uleb128 0x21
	.string	"Adc_lSetGroupResultAtomic"
	.byte	0x1
	.uahalf	0x1280
	.byte	0x1
	.byte	0x3
	.uaword	0x10889
	.uleb128 0x20
	.uaword	.LASF53
	.byte	0x1
	.uahalf	0x1281
	.uaword	0x10834
	.uleb128 0x20
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0x1281
	.uaword	0x1061b
	.uleb128 0x23
	.uleb128 0x1f
	.string	"tmp"
	.byte	0x1
	.uahalf	0x1285
	.uaword	0x222
	.byte	0
	.byte	0
	.uleb128 0x21
	.string	"Adc_lSetResBuffEndStatusAtomic"
	.byte	0x1
	.uahalf	0x12a8
	.byte	0x1
	.byte	0x3
	.uaword	0x108d9
	.uleb128 0x20
	.uaword	.LASF53
	.byte	0x1
	.uahalf	0x12a9
	.uaword	0x10834
	.uleb128 0x20
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0x12a9
	.uaword	0x1061b
	.uleb128 0x23
	.uleb128 0x1f
	.string	"tmp"
	.byte	0x1
	.uahalf	0x12ad
	.uaword	0x222
	.byte	0
	.byte	0
	.uleb128 0x21
	.string	"Adc_lEruChannelDeInit"
	.byte	0x1
	.uahalf	0x2681
	.byte	0x1
	.byte	0x3
	.uaword	0x10943
	.uleb128 0x20
	.uaword	.LASF60
	.byte	0x1
	.uahalf	0x2682
	.uaword	0x10943
	.uleb128 0x1e
	.string	"Mode"
	.byte	0x1
	.uahalf	0x2683
	.uaword	0x10839
	.uleb128 0x22
	.uaword	.LASF61
	.byte	0x1
	.uahalf	0x2685
	.uaword	0x233
	.uleb128 0x22
	.uaword	.LASF62
	.byte	0x1
	.uahalf	0x2685
	.uaword	0x233
	.uleb128 0x22
	.uaword	.LASF63
	.byte	0x1
	.uahalf	0x2686
	.uaword	0x1cc
	.uleb128 0x22
	.uaword	.LASF64
	.byte	0x1
	.uahalf	0x2686
	.uaword	0x1cc
	.byte	0
	.uleb128 0xe
	.uaword	0xa89
	.uleb128 0x21
	.string	"Adc_lGtmChannelDeInit"
	.byte	0x1
	.uahalf	0x25fa
	.byte	0x1
	.byte	0x3
	.uaword	0x1098d
	.uleb128 0x20
	.uaword	.LASF65
	.byte	0x1
	.uahalf	0x25fb
	.uaword	0x1098d
	.uleb128 0x22
	.uaword	.LASF66
	.byte	0x1
	.uahalf	0x25fd
	.uaword	0x1cc
	.uleb128 0x22
	.uaword	.LASF67
	.byte	0x1
	.uahalf	0x25fd
	.uaword	0x1cc
	.byte	0
	.uleb128 0xe
	.uaword	0xa7e
	.uleb128 0x21
	.string	"Adc_lResetHwTrigger"
	.byte	0x1
	.uahalf	0x2375
	.byte	0x1
	.byte	0x3
	.uaword	0x109ca
	.uleb128 0x20
	.uaword	.LASF58
	.byte	0x1
	.uahalf	0x2375
	.uaword	0x10737
	.uleb128 0x1e
	.string	"Mode"
	.byte	0x1
	.uahalf	0x2376
	.uaword	0x10839
	.byte	0
	.uleb128 0x24
	.string	"_dsync"
	.byte	0x2
	.byte	0xbc
	.byte	0x1
	.byte	0x3
	.uleb128 0x21
	.string	"Adc_lKernelDeInit"
	.byte	0x1
	.uahalf	0x199a
	.byte	0x1
	.byte	0x1
	.uaword	0x10a51
	.uleb128 0x20
	.uaword	.LASF56
	.byte	0x1
	.uahalf	0x199a
	.uaword	0x107e3
	.uleb128 0x20
	.uaword	.LASF51
	.byte	0x1
	.uahalf	0x199b
	.uaword	0x105cb
	.uleb128 0x22
	.uaword	.LASF57
	.byte	0x1
	.uahalf	0x199d
	.uaword	0x107e8
	.uleb128 0x22
	.uaword	.LASF68
	.byte	0x1
	.uahalf	0x199e
	.uaword	0x1cc
	.uleb128 0x1f
	.string	"lChannelCount"
	.byte	0x1
	.uahalf	0x199e
	.uaword	0x1cc
	.uleb128 0x22
	.uaword	.LASF69
	.byte	0x1
	.uahalf	0x19a4
	.uaword	0xce5
	.uleb128 0x22
	.uaword	.LASF70
	.byte	0x1
	.uahalf	0x19a5
	.uaword	0x1cc
	.byte	0
	.uleb128 0x21
	.string	"Adc_lResetGlobalSfr"
	.byte	0x1
	.uahalf	0x16b5
	.byte	0x1
	.byte	0x3
	.uaword	0x10a88
	.uleb128 0x1f
	.string	"lEvadcGlobalSfr"
	.byte	0x1
	.uahalf	0x16b7
	.uaword	0x10a88
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.uaword	0x570a
	.uleb128 0x21
	.string	"Adc_lClrStartupCalStatusAtomic"
	.byte	0x1
	.uahalf	0x13bd
	.byte	0x1
	.byte	0x3
	.uaword	0x10ac6
	.uleb128 0x23
	.uleb128 0x1f
	.string	"tmp"
	.byte	0x1
	.uahalf	0x13c1
	.uaword	0x222
	.byte	0
	.byte	0
	.uleb128 0x1d
	.string	"Adc_lGetGrpReqSrc"
	.byte	0x1
	.uahalf	0x1220
	.byte	0x1
	.uaword	0x1cc
	.byte	0x3
	.uaword	0x10b33
	.uleb128 0x20
	.uaword	.LASF51
	.byte	0x1
	.uahalf	0x1220
	.uaword	0x105cb
	.uleb128 0x20
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0x1221
	.uaword	0x1061b
	.uleb128 0x20
	.uaword	.LASF52
	.byte	0x1
	.uahalf	0x1221
	.uaword	0x105cb
	.uleb128 0x1f
	.string	"lReqSrc"
	.byte	0x1
	.uahalf	0x1223
	.uaword	0x1cc
	.uleb128 0x22
	.uaword	.LASF71
	.byte	0x1
	.uahalf	0x1224
	.uaword	0x1cc
	.uleb128 0x22
	.uaword	.LASF55
	.byte	0x1
	.uahalf	0x1225
	.uaword	0x10610
	.byte	0
	.uleb128 0x21
	.string	"Adc_lClrGroupStatusBusyAtomic"
	.byte	0x1
	.uahalf	0x1319
	.byte	0x1
	.byte	0x3
	.uaword	0x10b82
	.uleb128 0x20
	.uaword	.LASF53
	.byte	0x1
	.uahalf	0x131a
	.uaword	0x10834
	.uleb128 0x20
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0x131a
	.uaword	0x1061b
	.uleb128 0x23
	.uleb128 0x1f
	.string	"tmp"
	.byte	0x1
	.uahalf	0x131e
	.uaword	0x222
	.byte	0
	.byte	0
	.uleb128 0x21
	.string	"Adc_lClrGroupResultAtomic"
	.byte	0x1
	.uahalf	0x1341
	.byte	0x1
	.byte	0x3
	.uaword	0x10bcd
	.uleb128 0x20
	.uaword	.LASF53
	.byte	0x1
	.uahalf	0x1342
	.uaword	0x10834
	.uleb128 0x20
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0x1342
	.uaword	0x1061b
	.uleb128 0x23
	.uleb128 0x1f
	.string	"tmp"
	.byte	0x1
	.uahalf	0x1346
	.uaword	0x222
	.byte	0
	.byte	0
	.uleb128 0x21
	.string	"Adc_lClrResBuffEndStatusAtomic"
	.byte	0x1
	.uahalf	0x136a
	.byte	0x1
	.byte	0x3
	.uaword	0x10c1d
	.uleb128 0x20
	.uaword	.LASF53
	.byte	0x1
	.uahalf	0x136b
	.uaword	0x10834
	.uleb128 0x20
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0x136b
	.uaword	0x1061b
	.uleb128 0x23
	.uleb128 0x1f
	.string	"tmp"
	.byte	0x1
	.uahalf	0x136f
	.uaword	0x222
	.byte	0
	.byte	0
	.uleb128 0x21
	.string	"Adc_lClrGrpNotifAtomic"
	.byte	0x1
	.uahalf	0x1394
	.byte	0x1
	.byte	0x3
	.uaword	0x10c65
	.uleb128 0x20
	.uaword	.LASF53
	.byte	0x1
	.uahalf	0x1395
	.uaword	0x10834
	.uleb128 0x20
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0x1395
	.uaword	0x1061b
	.uleb128 0x23
	.uleb128 0x1f
	.string	"tmp"
	.byte	0x1
	.uahalf	0x1399
	.uaword	0x222
	.byte	0
	.byte	0
	.uleb128 0x21
	.string	"Adc_lSetGroupStatusBusyAtomic"
	.byte	0x1
	.uahalf	0x1257
	.byte	0x1
	.byte	0x3
	.uaword	0x10cb4
	.uleb128 0x20
	.uaword	.LASF53
	.byte	0x1
	.uahalf	0x1258
	.uaword	0x10834
	.uleb128 0x20
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0x1258
	.uaword	0x1061b
	.uleb128 0x23
	.uleb128 0x1f
	.string	"tmp"
	.byte	0x1
	.uahalf	0x125c
	.uaword	0x222
	.byte	0
	.byte	0
	.uleb128 0x1d
	.string	"Adc_lGetAdcKernel"
	.byte	0x1
	.uahalf	0x11ba
	.byte	0x1
	.uaword	0x233
	.byte	0x3
	.uaword	0x10ce1
	.uleb128 0x20
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0x11ba
	.uaword	0x1061b
	.byte	0
	.uleb128 0x1d
	.string	"Adc_lGetKernelGroupId"
	.byte	0x1
	.uahalf	0x11db
	.byte	0x1
	.uaword	0x5bd
	.byte	0x3
	.uaword	0x10d12
	.uleb128 0x20
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0x11db
	.uaword	0x1061b
	.byte	0
	.uleb128 0x21
	.string	"Adc_lSetGrpNotifAtomic"
	.byte	0x1
	.uahalf	0x12d1
	.byte	0x1
	.byte	0x3
	.uaword	0x10d5a
	.uleb128 0x20
	.uaword	.LASF53
	.byte	0x1
	.uahalf	0x12d2
	.uaword	0x10834
	.uleb128 0x20
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0x12d2
	.uaword	0x1061b
	.uleb128 0x23
	.uleb128 0x1f
	.string	"tmp"
	.byte	0x1
	.uahalf	0x12d6
	.uaword	0x222
	.byte	0
	.byte	0
	.uleb128 0x21
	.string	"Adc_lSetStartupCalStatusAtomic"
	.byte	0x1
	.uahalf	0x12f7
	.byte	0x1
	.byte	0x3
	.uaword	0x10d92
	.uleb128 0x23
	.uleb128 0x1f
	.string	"tmp"
	.byte	0x1
	.uahalf	0x12fb
	.uaword	0x222
	.byte	0
	.byte	0
	.uleb128 0x25
	.string	"Adc_lGetStartupCalStatusAtomic"
	.byte	0x1
	.uahalf	0x1470
	.byte	0x1
	.uaword	0x233
	.byte	0x3
	.uleb128 0x21
	.string	"Adc_lPushToScheduler"
	.byte	0x1
	.uahalf	0x1f71
	.byte	0x1
	.byte	0x3
	.uaword	0x10e76
	.uleb128 0x20
	.uaword	.LASF51
	.byte	0x1
	.uahalf	0x1f71
	.uaword	0x105cb
	.uleb128 0x20
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0x1f72
	.uaword	0x1061b
	.uleb128 0x20
	.uaword	.LASF52
	.byte	0x1
	.uahalf	0x1f73
	.uaword	0x105cb
	.uleb128 0x1e
	.string	"PriorityBoost"
	.byte	0x1
	.uahalf	0x1f74
	.uaword	0x10839
	.uleb128 0x22
	.uaword	.LASF72
	.byte	0x1
	.uahalf	0x1f76
	.uaword	0x5bd
	.uleb128 0x1f
	.string	"lGroupInsertBefore"
	.byte	0x1
	.uahalf	0x1f77
	.uaword	0x5bd
	.uleb128 0x22
	.uaword	.LASF73
	.byte	0x1
	.uahalf	0x1f78
	.uaword	0x5bd
	.uleb128 0x22
	.uaword	.LASF55
	.byte	0x1
	.uahalf	0x1f79
	.uaword	0x105c5
	.uleb128 0x22
	.uaword	.LASF69
	.byte	0x1
	.uahalf	0x1f7a
	.uaword	0xce5
	.uleb128 0x1f
	.string	"lGrpCfgPtrTmp"
	.byte	0x1
	.uahalf	0x1f7b
	.uaword	0xce5
	.byte	0
	.uleb128 0x26
	.uaword	0x109d6
	.uaword	.LFB97
	.uaword	.LFE97
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x111b6
	.uleb128 0x27
	.uaword	0x109fe
	.uaword	.LLST0
	.uleb128 0x28
	.uaword	0x109f2
	.byte	0x6
	.byte	0xfa
	.uaword	0x109f2
	.byte	0x9f
	.uleb128 0x28
	.uaword	0x109f2
	.byte	0x6
	.byte	0xfa
	.uaword	0x109f2
	.byte	0x9f
	.uleb128 0x29
	.uaword	0x10a0a
	.byte	0x1
	.byte	0x6f
	.uleb128 0x2a
	.uaword	0x10a16
	.uaword	.LLST1
	.uleb128 0x2a
	.uaword	0x10a22
	.uaword	.LLST2
	.uleb128 0x2a
	.uaword	0x10a38
	.uaword	.LLST3
	.uleb128 0x2a
	.uaword	0x10a44
	.uaword	.LLST4
	.uleb128 0x2b
	.uaword	0x10992
	.uaword	.LBB303
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.uahalf	0x19b7
	.uaword	0x111a5
	.uleb128 0x27
	.uaword	0x109bc
	.uaword	.LLST5
	.uleb128 0x27
	.uaword	0x109b0
	.uaword	.LLST6
	.uleb128 0x2b
	.uaword	0x108d9
	.uaword	.LBB305
	.uaword	.Ldebug_ranges0+0x30
	.byte	0x1
	.uahalf	0x2396
	.uaword	0x10f79
	.uleb128 0x27
	.uaword	0x108f9
	.uaword	.LLST7
	.uleb128 0x27
	.uaword	0x108f9
	.uaword	.LLST7
	.uleb128 0x27
	.uaword	0x10905
	.uaword	.LLST9
	.uleb128 0x2c
	.uaword	.Ldebug_ranges0+0x30
	.uleb128 0x2a
	.uaword	0x10912
	.uaword	.LLST10
	.uleb128 0x2a
	.uaword	0x1091e
	.uaword	.LLST11
	.uleb128 0x2a
	.uaword	0x1092a
	.uaword	.LLST12
	.uleb128 0x2a
	.uaword	0x10936
	.uaword	.LLST13
	.uleb128 0x2d
	.uaword	.LVL13
	.uaword	0x14e5f
	.uaword	0x10f68
	.uleb128 0x2e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2f
	.uaword	.LVL16
	.uaword	0x14e5f
	.uleb128 0x2e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.uaword	0x108d9
	.uaword	.LBB309
	.uaword	.LBE309
	.byte	0x1
	.uahalf	0x237e
	.uaword	0x11004
	.uleb128 0x27
	.uaword	0x108f9
	.uaword	.LLST14
	.uleb128 0x27
	.uaword	0x108f9
	.uaword	.LLST14
	.uleb128 0x27
	.uaword	0x10905
	.uaword	.LLST16
	.uleb128 0x31
	.uaword	.LBB310
	.uaword	.LBE310
	.uleb128 0x2a
	.uaword	0x10912
	.uaword	.LLST17
	.uleb128 0x2a
	.uaword	0x1091e
	.uaword	.LLST18
	.uleb128 0x2a
	.uaword	0x1092a
	.uaword	.LLST19
	.uleb128 0x2a
	.uaword	0x10936
	.uaword	.LLST20
	.uleb128 0x2d
	.uaword	.LVL7
	.uaword	0x14e5f
	.uaword	0x10fe8
	.uleb128 0x2e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2f
	.uaword	.LVL9
	.uaword	0x14e5f
	.uleb128 0x2e
	.byte	0x1
	.byte	0x55
	.byte	0x7
	.byte	0x7a
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x34
	.byte	0x24
	.byte	0x24
	.uleb128 0x2e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
	.uaword	.Ldebug_ranges0+0x50
	.uaword	0x110e2
	.uleb128 0x27
	.uaword	0x109bc
	.uaword	.LLST21
	.uleb128 0x27
	.uaword	0x109b0
	.uaword	.LLST22
	.uleb128 0x33
	.uaword	0x10948
	.uaword	.LBB315
	.uaword	.Ldebug_ranges0+0x68
	.byte	0x1
	.uahalf	0x23a1
	.uleb128 0x27
	.uaword	0x10968
	.uaword	.LLST23
	.uleb128 0x27
	.uaword	0x10968
	.uaword	.LLST23
	.uleb128 0x2c
	.uaword	.Ldebug_ranges0+0x68
	.uleb128 0x2a
	.uaword	0x10974
	.uaword	.LLST25
	.uleb128 0x2a
	.uaword	0x10980
	.uaword	.LLST26
	.uleb128 0x2d
	.uaword	.LVL53
	.uaword	0x14ea9
	.uaword	0x11072
	.uleb128 0x2e
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7b
	.sleb128 0
	.uleb128 0x2e
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.uaword	.LVL54
	.uaword	0x14edd
	.uaword	0x1108c
	.uleb128 0x2e
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7b
	.sleb128 0
	.uleb128 0x2e
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.uaword	.LVL55
	.uaword	0x14f10
	.uaword	0x110a6
	.uleb128 0x2e
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7b
	.sleb128 0
	.uleb128 0x2e
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x34
	.uaword	.LVL65
	.uaword	0x14f4b
	.uleb128 0x2d
	.uaword	.LVL66
	.uaword	0x14f7e
	.uaword	0x110c9
	.uleb128 0x2e
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7b
	.sleb128 0
	.uleb128 0x2e
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.uaword	.LVL67
	.uaword	0x14fb0
	.uleb128 0x2e
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7b
	.sleb128 0
	.uleb128 0x2e
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x33
	.uaword	0x10948
	.uaword	.LBB320
	.uaword	.Ldebug_ranges0+0x80
	.byte	0x1
	.uahalf	0x2389
	.uleb128 0x27
	.uaword	0x10968
	.uaword	.LLST27
	.uleb128 0x27
	.uaword	0x10968
	.uaword	.LLST27
	.uleb128 0x2c
	.uaword	.Ldebug_ranges0+0x80
	.uleb128 0x2a
	.uaword	0x10974
	.uaword	.LLST29
	.uleb128 0x2a
	.uaword	0x10980
	.uaword	.LLST30
	.uleb128 0x2d
	.uaword	.LVL61
	.uaword	0x14ea9
	.uaword	0x11135
	.uleb128 0x2e
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7b
	.sleb128 0
	.uleb128 0x2e
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.uaword	.LVL62
	.uaword	0x14edd
	.uaword	0x1114f
	.uleb128 0x2e
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7b
	.sleb128 0
	.uleb128 0x2e
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.uaword	.LVL63
	.uaword	0x14f10
	.uaword	0x11169
	.uleb128 0x2e
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7b
	.sleb128 0
	.uleb128 0x2e
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x34
	.uaword	.LVL69
	.uaword	0x14f4b
	.uleb128 0x2d
	.uaword	.LVL70
	.uaword	0x14f7e
	.uaword	0x1118c
	.uleb128 0x2e
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7b
	.sleb128 0
	.uleb128 0x2e
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.uaword	.LVL71
	.uaword	0x14fb0
	.uleb128 0x2e
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7b
	.sleb128 0
	.uleb128 0x2e
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x35
	.uaword	0x109ca
	.uaword	.LBB331
	.uaword	.LBE331
	.byte	0x1
	.uahalf	0x19cc
	.byte	0
	.uleb128 0x21
	.string	"Adc_lClearGroupSfr"
	.byte	0x1
	.uahalf	0x22c9
	.byte	0x1
	.byte	0x1
	.uaword	0x1124c
	.uleb128 0x20
	.uaword	.LASF58
	.byte	0x1
	.uahalf	0x22c9
	.uaword	0x10737
	.uleb128 0x20
	.uaword	.LASF51
	.byte	0x1
	.uahalf	0x22ca
	.uaword	0x105cb
	.uleb128 0x20
	.uaword	.LASF59
	.byte	0x1
	.uahalf	0x22cb
	.uaword	0x10839
	.uleb128 0x22
	.uaword	.LASF57
	.byte	0x1
	.uahalf	0x22cd
	.uaword	0x107e8
	.uleb128 0x22
	.uaword	.LASF74
	.byte	0x1
	.uahalf	0x22ce
	.uaword	0x1124c
	.uleb128 0x22
	.uaword	.LASF75
	.byte	0x1
	.uahalf	0x22cf
	.uaword	0xa73
	.uleb128 0x22
	.uaword	.LASF76
	.byte	0x1
	.uahalf	0x22d0
	.uaword	0x5a6
	.uleb128 0x22
	.uaword	.LASF77
	.byte	0x1
	.uahalf	0x22d1
	.uaword	0x628
	.uleb128 0x22
	.uaword	.LASF78
	.byte	0x1
	.uahalf	0x22d2
	.uaword	0x1cc
	.uleb128 0x22
	.uaword	.LASF79
	.byte	0x1
	.uahalf	0x22d2
	.uaword	0x1cc
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.uaword	0x57bf
	.uleb128 0x36
	.string	"Adc_lStopConvRequest"
	.byte	0x1
	.uahalf	0x21f9
	.byte	0x1
	.uaword	.LFB73
	.uaword	.LFE73
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x11699
	.uleb128 0x37
	.uaword	.LASF58
	.byte	0x1
	.uahalf	0x21f9
	.uaword	0x10737
	.uaword	.LLST31
	.uleb128 0x37
	.uaword	.LASF51
	.byte	0x1
	.uahalf	0x21fa
	.uaword	0x105cb
	.uaword	.LLST32
	.uleb128 0x37
	.uaword	.LASF59
	.byte	0x1
	.uahalf	0x21fb
	.uaword	0x10839
	.uaword	.LLST33
	.uleb128 0x38
	.uaword	.LASF74
	.byte	0x1
	.uahalf	0x21fd
	.uaword	0x1124c
	.byte	0x1
	.byte	0x6d
	.uleb128 0x39
	.string	"lVadcGrpSrcPtr"
	.byte	0x1
	.uahalf	0x2202
	.uaword	0x11699
	.uaword	.LLST34
	.uleb128 0x39
	.string	"lWaitCount"
	.byte	0x1
	.uahalf	0x222b
	.uaword	0x233
	.uaword	.LLST35
	.uleb128 0x1f
	.string	"lCurrentRS"
	.byte	0x1
	.uahalf	0x222b
	.uaword	0x233
	.uleb128 0x3a
	.uaword	.LASF80
	.byte	0x1
	.uahalf	0x222b
	.uaword	0x233
	.uaword	.LLST36
	.uleb128 0x3a
	.uaword	.LASF57
	.byte	0x1
	.uahalf	0x222c
	.uaword	0x116a4
	.uaword	.LLST37
	.uleb128 0x30
	.uaword	0x111b6
	.uaword	.LBB349
	.uaword	.LBE349
	.byte	0x1
	.uahalf	0x22a9
	.uaword	0x11398
	.uleb128 0x27
	.uaword	0x111eb
	.uaword	.LLST38
	.uleb128 0x27
	.uaword	0x111df
	.uaword	.LLST39
	.uleb128 0x27
	.uaword	0x111d3
	.uaword	.LLST40
	.uleb128 0x31
	.uaword	.LBB350
	.uaword	.LBE350
	.uleb128 0x2a
	.uaword	0x111f7
	.uaword	.LLST41
	.uleb128 0x2a
	.uaword	0x11203
	.uaword	.LLST42
	.uleb128 0x2a
	.uaword	0x1120f
	.uaword	.LLST43
	.uleb128 0x2a
	.uaword	0x1121b
	.uaword	.LLST44
	.uleb128 0x2a
	.uaword	0x11227
	.uaword	.LLST45
	.uleb128 0x2a
	.uaword	0x11233
	.uaword	.LLST46
	.uleb128 0x2a
	.uaword	0x1123f
	.uaword	.LLST47
	.byte	0
	.byte	0
	.uleb128 0x30
	.uaword	0x10992
	.uaword	.LBB351
	.uaword	.LBE351
	.byte	0x1
	.uahalf	0x2222
	.uaword	0x11686
	.uleb128 0x3b
	.uaword	0x109bc
	.byte	0x1
	.uleb128 0x27
	.uaword	0x109b0
	.uaword	.LLST48
	.uleb128 0x30
	.uaword	0x108d9
	.uaword	.LBB353
	.uaword	.LBE353
	.byte	0x1
	.uahalf	0x237e
	.uaword	0x11450
	.uleb128 0x27
	.uaword	0x108f9
	.uaword	.LLST49
	.uleb128 0x27
	.uaword	0x108f9
	.uaword	.LLST49
	.uleb128 0x27
	.uaword	0x10905
	.uaword	.LLST51
	.uleb128 0x31
	.uaword	.LBB354
	.uaword	.LBE354
	.uleb128 0x2a
	.uaword	0x10912
	.uaword	.LLST52
	.uleb128 0x2a
	.uaword	0x1091e
	.uaword	.LLST53
	.uleb128 0x2a
	.uaword	0x1092a
	.uaword	.LLST54
	.uleb128 0x2a
	.uaword	0x10936
	.uaword	.LLST55
	.uleb128 0x2d
	.uaword	.LVL103
	.uaword	0x14e5f
	.uaword	0x11434
	.uleb128 0x2e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.uleb128 0x2e
	.byte	0x1
	.byte	0x64
	.byte	0x6
	.byte	0x8f
	.sleb128 -268213744
	.byte	0
	.uleb128 0x2f
	.uaword	.LVL105
	.uaword	0x14e5f
	.uleb128 0x2e
	.byte	0x1
	.byte	0x55
	.byte	0x7
	.byte	0x7f
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x34
	.byte	0x24
	.byte	0x24
	.uleb128 0x2e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.uaword	0x108d9
	.uaword	.LBB355
	.uaword	.LBE355
	.byte	0x1
	.uahalf	0x2396
	.uaword	0x114e5
	.uleb128 0x27
	.uaword	0x108f9
	.uaword	.LLST56
	.uleb128 0x27
	.uaword	0x108f9
	.uaword	.LLST56
	.uleb128 0x27
	.uaword	0x10905
	.uaword	.LLST58
	.uleb128 0x31
	.uaword	.LBB356
	.uaword	.LBE356
	.uleb128 0x2a
	.uaword	0x10912
	.uaword	.LLST59
	.uleb128 0x2a
	.uaword	0x1091e
	.uaword	.LLST60
	.uleb128 0x2a
	.uaword	0x1092a
	.uaword	.LLST61
	.uleb128 0x2a
	.uaword	0x10936
	.uaword	.LLST62
	.uleb128 0x2d
	.uaword	.LVL109
	.uaword	0x14e5f
	.uaword	0x114c9
	.uleb128 0x2e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.uleb128 0x2e
	.byte	0x1
	.byte	0x64
	.byte	0x6
	.byte	0x8f
	.sleb128 -268213744
	.byte	0
	.uleb128 0x2f
	.uaword	.LVL111
	.uaword	0x14e5f
	.uleb128 0x2e
	.byte	0x1
	.byte	0x55
	.byte	0x7
	.byte	0x7f
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x34
	.byte	0x24
	.byte	0x24
	.uleb128 0x2e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
	.uaword	.Ldebug_ranges0+0x98
	.uaword	0x115c3
	.uleb128 0x27
	.uaword	0x109bc
	.uaword	.LLST63
	.uleb128 0x27
	.uaword	0x109b0
	.uaword	.LLST64
	.uleb128 0x33
	.uaword	0x10948
	.uaword	.LBB359
	.uaword	.Ldebug_ranges0+0xb0
	.byte	0x1
	.uahalf	0x23a1
	.uleb128 0x27
	.uaword	0x10968
	.uaword	.LLST65
	.uleb128 0x27
	.uaword	0x10968
	.uaword	.LLST65
	.uleb128 0x2c
	.uaword	.Ldebug_ranges0+0xb0
	.uleb128 0x2a
	.uaword	0x10974
	.uaword	.LLST67
	.uleb128 0x2a
	.uaword	0x10980
	.uaword	.LLST68
	.uleb128 0x2d
	.uaword	.LVL116
	.uaword	0x14ea9
	.uaword	0x11553
	.uleb128 0x2e
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x2e
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.uaword	.LVL117
	.uaword	0x14edd
	.uaword	0x1156d
	.uleb128 0x2e
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x2e
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.uaword	.LVL118
	.uaword	0x14f10
	.uaword	0x11587
	.uleb128 0x2e
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x2e
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x34
	.uaword	.LVL128
	.uaword	0x14f4b
	.uleb128 0x2d
	.uaword	.LVL129
	.uaword	0x14f7e
	.uaword	0x115aa
	.uleb128 0x2e
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x2e
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.uaword	.LVL130
	.uaword	0x14fb0
	.uleb128 0x2e
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x2e
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x33
	.uaword	0x10948
	.uaword	.LBB364
	.uaword	.Ldebug_ranges0+0xc8
	.byte	0x1
	.uahalf	0x2389
	.uleb128 0x27
	.uaword	0x10968
	.uaword	.LLST69
	.uleb128 0x27
	.uaword	0x10968
	.uaword	.LLST69
	.uleb128 0x2c
	.uaword	.Ldebug_ranges0+0xc8
	.uleb128 0x2a
	.uaword	0x10974
	.uaword	.LLST71
	.uleb128 0x2a
	.uaword	0x10980
	.uaword	.LLST72
	.uleb128 0x2d
	.uaword	.LVL124
	.uaword	0x14ea9
	.uaword	0x11616
	.uleb128 0x2e
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x2e
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.uaword	.LVL125
	.uaword	0x14edd
	.uaword	0x11630
	.uleb128 0x2e
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x2e
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.uaword	.LVL126
	.uaword	0x14f10
	.uaword	0x1164a
	.uleb128 0x2e
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x2e
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x34
	.uaword	.LVL132
	.uaword	0x14f4b
	.uleb128 0x2d
	.uaword	.LVL133
	.uaword	0x14f7e
	.uaword	0x1166d
	.uleb128 0x2e
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x2e
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.uaword	.LVL134
	.uaword	0x14fb0
	.uleb128 0x2e
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x2e
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
	.uaword	.LVL84
	.uaword	0x14fea
	.uleb128 0x34
	.uaword	.LVL85
	.uaword	0x1500c
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.uaword	0x1169f
	.uleb128 0x4
	.uaword	0xd3cb
	.uleb128 0x9
	.byte	0x4
	.uaword	0x116aa
	.uleb128 0xe
	.uaword	0x5c13
	.uleb128 0x21
	.string	"Adc_lAdjustRsPriorities"
	.byte	0x1
	.uahalf	0x1c9a
	.byte	0x1
	.byte	0x3
	.uaword	0x11764
	.uleb128 0x20
	.uaword	.LASF51
	.byte	0x1
	.uahalf	0x1c9a
	.uaword	0x105cb
	.uleb128 0x22
	.uaword	.LASF55
	.byte	0x1
	.uahalf	0x1c9c
	.uaword	0x10610
	.uleb128 0x22
	.uaword	.LASF69
	.byte	0x1
	.uahalf	0x1c9d
	.uaword	0xce5
	.uleb128 0x22
	.uaword	.LASF57
	.byte	0x1
	.uahalf	0x1c9e
	.uaword	0x107e8
	.uleb128 0x1f
	.string	"lRsPrios"
	.byte	0x1
	.uahalf	0x1c9f
	.uaword	0xcf0
	.uleb128 0x1f
	.string	"lGroupPrios"
	.byte	0x1
	.uahalf	0x1ca0
	.uaword	0xcf0
	.uleb128 0x22
	.uaword	.LASF81
	.byte	0x1
	.uahalf	0x1ca1
	.uaword	0x1cc
	.uleb128 0x1f
	.string	"lFinalPrio"
	.byte	0x1
	.uahalf	0x1ca2
	.uaword	0x233
	.uleb128 0x22
	.uaword	.LASF82
	.byte	0x1
	.uahalf	0x1ca2
	.uaword	0x233
	.uleb128 0x1f
	.string	"lArbPrVal"
	.byte	0x1
	.uahalf	0x1ca2
	.uaword	0x233
	.byte	0
	.uleb128 0x3c
	.string	"Adc_lStartSwConversion"
	.byte	0x1
	.uahalf	0x1b99
	.byte	0x1
	.uaword	.LFB64
	.uaword	.LFE64
	.uaword	.LLST73
	.byte	0x1
	.uaword	0x118c0
	.uleb128 0x37
	.uaword	.LASF58
	.byte	0x1
	.uahalf	0x1b99
	.uaword	0x10737
	.uaword	.LLST74
	.uleb128 0x37
	.uaword	.LASF51
	.byte	0x1
	.uahalf	0x1b9a
	.uaword	0x105cb
	.uaword	.LLST75
	.uleb128 0x37
	.uaword	.LASF59
	.byte	0x1
	.uahalf	0x1b9b
	.uaword	0x10839
	.uaword	.LLST76
	.uleb128 0x38
	.uaword	.LASF57
	.byte	0x1
	.uahalf	0x1b9d
	.uaword	0x107e8
	.byte	0x1
	.byte	0x6f
	.uleb128 0x38
	.uaword	.LASF74
	.byte	0x1
	.uahalf	0x1b9e
	.uaword	0x1124c
	.byte	0x1
	.byte	0x6c
	.uleb128 0x3a
	.uaword	.LASF75
	.byte	0x1
	.uahalf	0x1b9f
	.uaword	0xa73
	.uaword	.LLST77
	.uleb128 0x3a
	.uaword	.LASF83
	.byte	0x1
	.uahalf	0x1ba0
	.uaword	0x233
	.uaword	.LLST78
	.uleb128 0x3d
	.uaword	.LASF84
	.byte	0x1
	.uahalf	0x1ba0
	.uaword	0x233
	.byte	0x40
	.uleb128 0x38
	.uaword	.LASF78
	.byte	0x1
	.uahalf	0x1ba1
	.uaword	0x1cc
	.byte	0x1
	.byte	0x55
	.uleb128 0x3a
	.uaword	.LASF79
	.byte	0x1
	.uahalf	0x1ba1
	.uaword	0x1cc
	.uaword	.LLST79
	.uleb128 0x33
	.uaword	0x116af
	.uaword	.LBB373
	.uaword	.Ldebug_ranges0+0xe0
	.byte	0x1
	.uahalf	0x1c07
	.uleb128 0x27
	.uaword	0x116d1
	.uaword	.LLST80
	.uleb128 0x2c
	.uaword	.Ldebug_ranges0+0xe0
	.uleb128 0x3e
	.uaword	0x116dd
	.uleb128 0x2a
	.uaword	0x116e9
	.uaword	.LLST81
	.uleb128 0x29
	.uaword	0x116f5
	.byte	0x1
	.byte	0x6f
	.uleb128 0x29
	.uaword	0x11701
	.byte	0x2
	.byte	0x91
	.sleb128 -6
	.uleb128 0x29
	.uaword	0x11712
	.byte	0x2
	.byte	0x91
	.sleb128 -3
	.uleb128 0x2a
	.uaword	0x11726
	.uaword	.LLST82
	.uleb128 0x2a
	.uaword	0x11732
	.uaword	.LLST83
	.uleb128 0x2a
	.uaword	0x11745
	.uaword	.LLST84
	.uleb128 0x2a
	.uaword	0x11751
	.uaword	.LLST85
	.uleb128 0x2b
	.uaword	0x10584
	.uaword	.LBB375
	.uaword	.Ldebug_ranges0+0xf8
	.byte	0x1
	.uahalf	0x1ca8
	.uaword	0x118b4
	.uleb128 0x27
	.uaword	0x105b8
	.uaword	.LLST84
	.uleb128 0x28
	.uaword	0x105ac
	.byte	0x1
	.byte	0x58
	.byte	0
	.uleb128 0x34
	.uaword	.LVL146
	.uaword	0x1502d
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.string	"Adc_lScheduleNext"
	.byte	0x1
	.uahalf	0x20fd
	.byte	0x1
	.byte	0x1
	.uaword	0x11925
	.uleb128 0x20
	.uaword	.LASF51
	.byte	0x1
	.uahalf	0x20fd
	.uaword	0x105cb
	.uleb128 0x20
	.uaword	.LASF52
	.byte	0x1
	.uahalf	0x20fe
	.uaword	0x105cb
	.uleb128 0x20
	.uaword	.LASF59
	.byte	0x1
	.uahalf	0x20ff
	.uaword	0x10839
	.uleb128 0x22
	.uaword	.LASF55
	.byte	0x1
	.uahalf	0x2101
	.uaword	0x105c5
	.uleb128 0x22
	.uaword	.LASF69
	.byte	0x1
	.uahalf	0x2102
	.uaword	0xce5
	.uleb128 0x22
	.uaword	.LASF72
	.byte	0x1
	.uahalf	0x2103
	.uaword	0x5bd
	.byte	0
	.uleb128 0x1d
	.string	"Adc_lPopFromScheduler"
	.byte	0x1
	.uahalf	0x1ff3
	.byte	0x1
	.uaword	0x5bd
	.byte	0x3
	.uaword	0x11986
	.uleb128 0x20
	.uaword	.LASF51
	.byte	0x1
	.uahalf	0x1ff3
	.uaword	0x105cb
	.uleb128 0x20
	.uaword	.LASF52
	.byte	0x1
	.uahalf	0x1ff4
	.uaword	0x105cb
	.uleb128 0x22
	.uaword	.LASF72
	.byte	0x1
	.uahalf	0x1ff6
	.uaword	0x5bd
	.uleb128 0x22
	.uaword	.LASF73
	.byte	0x1
	.uahalf	0x1ff7
	.uaword	0x5bd
	.uleb128 0x22
	.uaword	.LASF55
	.byte	0x1
	.uahalf	0x1ff8
	.uaword	0x105c5
	.byte	0
	.uleb128 0x21
	.string	"Adc_lPrepareGrpForStart"
	.byte	0x1
	.uahalf	0x1a96
	.byte	0x1
	.byte	0x1
	.uaword	0x11a5d
	.uleb128 0x20
	.uaword	.LASF51
	.byte	0x1
	.uahalf	0x1a96
	.uaword	0x105cb
	.uleb128 0x20
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0x1a97
	.uaword	0x1061b
	.uleb128 0x20
	.uaword	.LASF52
	.byte	0x1
	.uahalf	0x1a97
	.uaword	0x105cb
	.uleb128 0x22
	.uaword	.LASF57
	.byte	0x1
	.uahalf	0x1a99
	.uaword	0x107e8
	.uleb128 0x22
	.uaword	.LASF69
	.byte	0x1
	.uahalf	0x1a9a
	.uaword	0xce5
	.uleb128 0x1f
	.string	"lChCfgPtr"
	.byte	0x1
	.uahalf	0x1a9b
	.uaword	0xcda
	.uleb128 0x22
	.uaword	.LASF75
	.byte	0x1
	.uahalf	0x1a9c
	.uaword	0xa73
	.uleb128 0x1f
	.string	"lChctrCfgVal"
	.byte	0x1
	.uahalf	0x1a9d
	.uaword	0x233
	.uleb128 0x1f
	.string	"lAsChannelId"
	.byte	0x1
	.uahalf	0x1a9e
	.uaword	0x5a6
	.uleb128 0x22
	.uaword	.LASF76
	.byte	0x1
	.uahalf	0x1a9e
	.uaword	0x5a6
	.uleb128 0x22
	.uaword	.LASF77
	.byte	0x1
	.uahalf	0x1a9f
	.uaword	0x628
	.uleb128 0x22
	.uaword	.LASF78
	.byte	0x1
	.uahalf	0x1aa0
	.uaword	0x1cc
	.uleb128 0x22
	.uaword	.LASF79
	.byte	0x1
	.uahalf	0x1aa0
	.uaword	0x1cc
	.byte	0
	.uleb128 0x36
	.string	"Adc_lSchedulerOnStop"
	.byte	0x1
	.uahalf	0x214f
	.byte	0x1
	.uaword	.LFB72
	.uaword	.LFE72
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x11fa9
	.uleb128 0x37
	.uaword	.LASF51
	.byte	0x1
	.uahalf	0x214f
	.uaword	0x105cb
	.uaword	.LLST87
	.uleb128 0x37
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0x2150
	.uaword	0x1061b
	.uaword	.LLST88
	.uleb128 0x37
	.uaword	.LASF52
	.byte	0x1
	.uahalf	0x2151
	.uaword	0x105cb
	.uaword	.LLST89
	.uleb128 0x22
	.uaword	.LASF55
	.byte	0x1
	.uahalf	0x2153
	.uaword	0x105c5
	.uleb128 0x39
	.string	"lQueuePtr"
	.byte	0x1
	.uahalf	0x2154
	.uaword	0x11fa9
	.uaword	.LLST90
	.uleb128 0x3a
	.uaword	.LASF69
	.byte	0x1
	.uahalf	0x2155
	.uaword	0xce5
	.uaword	.LLST91
	.uleb128 0x39
	.string	"lTempPrevGrpId"
	.byte	0x1
	.uahalf	0x2156
	.uaword	0x5bd
	.uaword	.LLST92
	.uleb128 0x39
	.string	"lTempNextGrpId"
	.byte	0x1
	.uahalf	0x2156
	.uaword	0x5bd
	.uaword	.LLST93
	.uleb128 0x3f
	.string	"lGrpReqSrc"
	.byte	0x1
	.uahalf	0x2158
	.uaword	0x1cc
	.byte	0x1
	.byte	0x5d
	.uleb128 0x2b
	.uaword	0x10584
	.uaword	.LBB421
	.uaword	.Ldebug_ranges0+0x118
	.byte	0x1
	.uahalf	0x215b
	.uaword	0x11b5b
	.uleb128 0x27
	.uaword	0x105b8
	.uaword	.LLST94
	.uleb128 0x27
	.uaword	0x105ac
	.uaword	.LLST95
	.byte	0
	.uleb128 0x2b
	.uaword	0x10ac6
	.uaword	.LBB431
	.uaword	.Ldebug_ranges0+0x148
	.byte	0x1
	.uahalf	0x2162
	.uaword	0x11ba8
	.uleb128 0x27
	.uaword	0x10afe
	.uaword	.LLST96
	.uleb128 0x27
	.uaword	0x10af2
	.uaword	.LLST97
	.uleb128 0x27
	.uaword	0x10ae6
	.uaword	.LLST98
	.uleb128 0x2c
	.uaword	.Ldebug_ranges0+0x148
	.uleb128 0x2a
	.uaword	0x10b0a
	.uaword	.LLST99
	.uleb128 0x2a
	.uaword	0x10b1a
	.uaword	.LLST100
	.uleb128 0x3e
	.uaword	0x10b26
	.byte	0
	.byte	0
	.uleb128 0x30
	.uaword	0x10b33
	.uaword	.LBB438
	.uaword	.LBE438
	.byte	0x1
	.uahalf	0x21c6
	.uaword	0x11be2
	.uleb128 0x27
	.uaword	0x10b67
	.uaword	.LLST101
	.uleb128 0x27
	.uaword	0x10b5b
	.uaword	.LLST102
	.uleb128 0x31
	.uaword	.LBB439
	.uaword	.LBE439
	.uleb128 0x2a
	.uaword	0x10b74
	.uaword	.LLST103
	.byte	0
	.byte	0
	.uleb128 0x30
	.uaword	0x10b82
	.uaword	.LBB440
	.uaword	.LBE440
	.byte	0x1
	.uahalf	0x21c9
	.uaword	0x11c1c
	.uleb128 0x27
	.uaword	0x10bb2
	.uaword	.LLST104
	.uleb128 0x27
	.uaword	0x10ba6
	.uaword	.LLST105
	.uleb128 0x31
	.uaword	.LBB441
	.uaword	.LBE441
	.uleb128 0x2a
	.uaword	0x10bbf
	.uaword	.LLST106
	.byte	0
	.byte	0
	.uleb128 0x30
	.uaword	0x10bcd
	.uaword	.LBB442
	.uaword	.LBE442
	.byte	0x1
	.uahalf	0x21cc
	.uaword	0x11c56
	.uleb128 0x27
	.uaword	0x10c02
	.uaword	.LLST107
	.uleb128 0x27
	.uaword	0x10bf6
	.uaword	.LLST108
	.uleb128 0x31
	.uaword	.LBB443
	.uaword	.LBE443
	.uleb128 0x2a
	.uaword	0x10c0f
	.uaword	.LLST109
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0x1073c
	.uaword	.LBB444
	.uaword	.Ldebug_ranges0+0x178
	.byte	0x1
	.uahalf	0x21d1
	.uaword	0x11cb5
	.uleb128 0x27
	.uaword	0x1076d
	.uaword	.LLST110
	.uleb128 0x27
	.uaword	0x1076d
	.uaword	.LLST110
	.uleb128 0x27
	.uaword	0x10779
	.uaword	.LLST112
	.uleb128 0x40
	.uaword	0x10761
	.uleb128 0x2c
	.uaword	.Ldebug_ranges0+0x178
	.uleb128 0x3e
	.uaword	0x10785
	.uleb128 0x33
	.uaword	0x10584
	.uaword	.LBB446
	.uaword	.Ldebug_ranges0+0x1a0
	.byte	0x1
	.uahalf	0x1526
	.uleb128 0x27
	.uaword	0x105b8
	.uaword	.LLST112
	.uleb128 0x40
	.uaword	0x105ac
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0x10c1d
	.uaword	.LBB459
	.uaword	.Ldebug_ranges0+0x1c8
	.byte	0x1
	.uahalf	0x21d8
	.uaword	0x11ce3
	.uleb128 0x40
	.uaword	0x10c4a
	.uleb128 0x40
	.uaword	0x10c3e
	.uleb128 0x2c
	.uaword	.Ldebug_ranges0+0x1c8
	.uleb128 0x2a
	.uaword	0x10c57
	.uaword	.LLST114
	.byte	0
	.byte	0
	.uleb128 0x30
	.uaword	0x107ee
	.uaword	.LBB465
	.uaword	.LBE465
	.byte	0x1
	.uahalf	0x2186
	.uaword	0x11d13
	.uleb128 0x27
	.uaword	0x1081b
	.uaword	.LLST115
	.uleb128 0x27
	.uaword	0x10827
	.uaword	.LLST116
	.uleb128 0x27
	.uaword	0x1080f
	.uaword	.LLST117
	.byte	0
	.uleb128 0x2b
	.uaword	0x1073c
	.uaword	.LBB467
	.uaword	.Ldebug_ranges0+0x1e0
	.byte	0x1
	.uahalf	0x2187
	.uaword	0x11d57
	.uleb128 0x27
	.uaword	0x1076d
	.uaword	.LLST118
	.uleb128 0x27
	.uaword	0x1076d
	.uaword	.LLST118
	.uleb128 0x27
	.uaword	0x10779
	.uaword	.LLST120
	.uleb128 0x27
	.uaword	0x10761
	.uaword	.LLST121
	.uleb128 0x2c
	.uaword	.Ldebug_ranges0+0x1e0
	.uleb128 0x3e
	.uaword	0x10785
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0x10b33
	.uaword	.LBB470
	.uaword	.Ldebug_ranges0+0x1f8
	.byte	0x1
	.uahalf	0x218b
	.uaword	0x11d8d
	.uleb128 0x27
	.uaword	0x10b67
	.uaword	.LLST122
	.uleb128 0x27
	.uaword	0x10b5b
	.uaword	.LLST123
	.uleb128 0x2c
	.uaword	.Ldebug_ranges0+0x1f8
	.uleb128 0x2a
	.uaword	0x10b74
	.uaword	.LLST124
	.byte	0
	.byte	0
	.uleb128 0x30
	.uaword	0x10b82
	.uaword	.LBB475
	.uaword	.LBE475
	.byte	0x1
	.uahalf	0x218e
	.uaword	0x11dc7
	.uleb128 0x27
	.uaword	0x10bb2
	.uaword	.LLST125
	.uleb128 0x27
	.uaword	0x10ba6
	.uaword	.LLST126
	.uleb128 0x31
	.uaword	.LBB476
	.uaword	.LBE476
	.uleb128 0x2a
	.uaword	0x10bbf
	.uaword	.LLST127
	.byte	0
	.byte	0
	.uleb128 0x30
	.uaword	0x10bcd
	.uaword	.LBB477
	.uaword	.LBE477
	.byte	0x1
	.uahalf	0x2191
	.uaword	0x11e01
	.uleb128 0x27
	.uaword	0x10c02
	.uaword	.LLST128
	.uleb128 0x27
	.uaword	0x10bf6
	.uaword	.LLST129
	.uleb128 0x31
	.uaword	.LBB478
	.uaword	.LBE478
	.uleb128 0x2a
	.uaword	0x10c0f
	.uaword	.LLST130
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0x10c1d
	.uaword	.LBB479
	.uaword	.Ldebug_ranges0+0x210
	.byte	0x1
	.uahalf	0x2198
	.uaword	0x11e33
	.uleb128 0x27
	.uaword	0x10c4a
	.uaword	.LLST131
	.uleb128 0x40
	.uaword	0x10c3e
	.uleb128 0x2c
	.uaword	.Ldebug_ranges0+0x210
	.uleb128 0x2a
	.uaword	0x10c57
	.uaword	.LLST132
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0x118c0
	.uaword	.LBB483
	.uaword	.Ldebug_ranges0+0x228
	.byte	0x1
	.uahalf	0x21a1
	.uaword	0x11f8c
	.uleb128 0x27
	.uaword	0x118f4
	.uaword	.LLST133
	.uleb128 0x27
	.uaword	0x118e8
	.uaword	.LLST134
	.uleb128 0x27
	.uaword	0x118dc
	.uaword	.LLST135
	.uleb128 0x2c
	.uaword	.Ldebug_ranges0+0x228
	.uleb128 0x3e
	.uaword	0x11900
	.uleb128 0x2a
	.uaword	0x1190c
	.uaword	.LLST136
	.uleb128 0x29
	.uaword	0x11918
	.byte	0x1
	.byte	0x5f
	.uleb128 0x30
	.uaword	0x10584
	.uaword	.LBB485
	.uaword	.LBE485
	.byte	0x1
	.uahalf	0x2106
	.uaword	0x11ea3
	.uleb128 0x27
	.uaword	0x105b8
	.uaword	.LLST134
	.uleb128 0x27
	.uaword	0x105ac
	.uaword	.LLST135
	.byte	0
	.uleb128 0x2b
	.uaword	0x11925
	.uaword	.LBB487
	.uaword	.Ldebug_ranges0+0x240
	.byte	0x1
	.uahalf	0x210a
	.uaword	0x11ee7
	.uleb128 0x27
	.uaword	0x11955
	.uaword	.LLST139
	.uleb128 0x27
	.uaword	0x11949
	.uaword	.LLST140
	.uleb128 0x2c
	.uaword	.Ldebug_ranges0+0x240
	.uleb128 0x2a
	.uaword	0x11961
	.uaword	.LLST141
	.uleb128 0x2a
	.uaword	0x1196d
	.uaword	.LLST142
	.uleb128 0x3e
	.uaword	0x11979
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0x11986
	.uaword	.LBB490
	.uaword	.Ldebug_ranges0+0x258
	.byte	0x1
	.uahalf	0x2125
	.uaword	0x11f73
	.uleb128 0x27
	.uaword	0x119c0
	.uaword	.LLST143
	.uleb128 0x40
	.uaword	0x119b4
	.uleb128 0x27
	.uaword	0x119a8
	.uaword	.LLST144
	.uleb128 0x2c
	.uaword	.Ldebug_ranges0+0x258
	.uleb128 0x2a
	.uaword	0x119cc
	.uaword	.LLST145
	.uleb128 0x2a
	.uaword	0x119d8
	.uaword	.LLST146
	.uleb128 0x2a
	.uaword	0x119e4
	.uaword	.LLST147
	.uleb128 0x2a
	.uaword	0x119f6
	.uaword	.LLST148
	.uleb128 0x2a
	.uaword	0x11a02
	.uaword	.LLST149
	.uleb128 0x2a
	.uaword	0x11a17
	.uaword	.LLST150
	.uleb128 0x2a
	.uaword	0x11a2c
	.uaword	.LLST151
	.uleb128 0x2a
	.uaword	0x11a38
	.uaword	.LLST152
	.uleb128 0x2a
	.uaword	0x11a44
	.uaword	.LLST153
	.uleb128 0x2a
	.uaword	0x11a50
	.uaword	.LLST154
	.byte	0
	.byte	0
	.uleb128 0x41
	.uaword	.LVL241
	.byte	0x1
	.uaword	0x11764
	.uleb128 0x2e
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2e
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uaword	.LVL201
	.uaword	0x11252
	.uleb128 0x2e
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2e
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x2e
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.uaword	0x102fd
	.uleb128 0x1d
	.string	"Adc_lGetReqSrcForGrp"
	.byte	0x1
	.uahalf	0x1f06
	.byte	0x1
	.uaword	0x1cc
	.byte	0x3
	.uaword	0x1204a
	.uleb128 0x20
	.uaword	.LASF51
	.byte	0x1
	.uahalf	0x1f06
	.uaword	0x105cb
	.uleb128 0x20
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0x1f07
	.uaword	0x1061b
	.uleb128 0x20
	.uaword	.LASF52
	.byte	0x1
	.uahalf	0x1f07
	.uaword	0x105cb
	.uleb128 0x22
	.uaword	.LASF55
	.byte	0x1
	.uahalf	0x1f09
	.uaword	0x10610
	.uleb128 0x22
	.uaword	.LASF69
	.byte	0x1
	.uahalf	0x1f0a
	.uaword	0xce5
	.uleb128 0x22
	.uaword	.LASF72
	.byte	0x1
	.uahalf	0x1f0b
	.uaword	0x5bd
	.uleb128 0x1f
	.string	"lGroupPriority"
	.byte	0x1
	.uahalf	0x1f0c
	.uaword	0x5ec
	.uleb128 0x22
	.uaword	.LASF71
	.byte	0x1
	.uahalf	0x1f0d
	.uaword	0x1cc
	.uleb128 0x22
	.uaword	.LASF81
	.byte	0x1
	.uahalf	0x1f0e
	.uaword	0x1cc
	.byte	0
	.uleb128 0x21
	.string	"Adc_lStartHwConversion"
	.byte	0x1
	.uahalf	0x2509
	.byte	0x1
	.byte	0x3
	.uaword	0x120fc
	.uleb128 0x20
	.uaword	.LASF58
	.byte	0x1
	.uahalf	0x2509
	.uaword	0x10737
	.uleb128 0x20
	.uaword	.LASF51
	.byte	0x1
	.uahalf	0x250a
	.uaword	0x105cb
	.uleb128 0x20
	.uaword	.LASF59
	.byte	0x1
	.uahalf	0x250b
	.uaword	0x10839
	.uleb128 0x22
	.uaword	.LASF57
	.byte	0x1
	.uahalf	0x250d
	.uaword	0x107e8
	.uleb128 0x22
	.uaword	.LASF74
	.byte	0x1
	.uahalf	0x250e
	.uaword	0x1124c
	.uleb128 0x22
	.uaword	.LASF75
	.byte	0x1
	.uahalf	0x250f
	.uaword	0xa73
	.uleb128 0x22
	.uaword	.LASF83
	.byte	0x1
	.uahalf	0x2510
	.uaword	0x233
	.uleb128 0x22
	.uaword	.LASF84
	.byte	0x1
	.uahalf	0x2510
	.uaword	0x233
	.uleb128 0x1f
	.string	"lWaitForTrigger"
	.byte	0x1
	.uahalf	0x2510
	.uaword	0x233
	.uleb128 0x22
	.uaword	.LASF78
	.byte	0x1
	.uahalf	0x2511
	.uaword	0x1cc
	.uleb128 0x22
	.uaword	.LASF79
	.byte	0x1
	.uahalf	0x2511
	.uaword	0x1cc
	.byte	0
	.uleb128 0x21
	.string	"Adc_lSetHwTrigger"
	.byte	0x1
	.uahalf	0x24b7
	.byte	0x1
	.byte	0x3
	.uaword	0x12125
	.uleb128 0x20
	.uaword	.LASF58
	.byte	0x1
	.uahalf	0x24b7
	.uaword	0x10737
	.byte	0
	.uleb128 0x21
	.string	"Adc_lEruChannelInit"
	.byte	0x1
	.uahalf	0x263d
	.byte	0x1
	.byte	0x3
	.uaword	0x12180
	.uleb128 0x20
	.uaword	.LASF60
	.byte	0x1
	.uahalf	0x263e
	.uaword	0x10943
	.uleb128 0x22
	.uaword	.LASF61
	.byte	0x1
	.uahalf	0x2640
	.uaword	0x233
	.uleb128 0x22
	.uaword	.LASF62
	.byte	0x1
	.uahalf	0x2640
	.uaword	0x233
	.uleb128 0x22
	.uaword	.LASF63
	.byte	0x1
	.uahalf	0x2641
	.uaword	0x1cc
	.uleb128 0x22
	.uaword	.LASF64
	.byte	0x1
	.uahalf	0x2641
	.uaword	0x1cc
	.byte	0
	.uleb128 0x21
	.string	"Adc_lGtmChannelInit"
	.byte	0x1
	.uahalf	0x25b4
	.byte	0x1
	.byte	0x3
	.uaword	0x121c3
	.uleb128 0x20
	.uaword	.LASF65
	.byte	0x1
	.uahalf	0x25b5
	.uaword	0x1098d
	.uleb128 0x22
	.uaword	.LASF66
	.byte	0x1
	.uahalf	0x25b7
	.uaword	0x1cc
	.uleb128 0x22
	.uaword	.LASF67
	.byte	0x1
	.uahalf	0x25b7
	.uaword	0x1cc
	.byte	0
	.uleb128 0x3c
	.string	"Adc_lSchedulerOnStart"
	.byte	0x1
	.uahalf	0x2040
	.byte	0x1
	.uaword	.LFB70
	.uaword	.LFE70
	.uaword	.LLST155
	.byte	0x1
	.uaword	0x128ef
	.uleb128 0x37
	.uaword	.LASF51
	.byte	0x1
	.uahalf	0x2040
	.uaword	0x105cb
	.uaword	.LLST156
	.uleb128 0x37
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0x2041
	.uaword	0x1061b
	.uaword	.LLST157
	.uleb128 0x37
	.uaword	.LASF52
	.byte	0x1
	.uahalf	0x2042
	.uaword	0x105cb
	.uaword	.LLST158
	.uleb128 0x22
	.uaword	.LASF55
	.byte	0x1
	.uahalf	0x2044
	.uaword	0x105c5
	.uleb128 0x38
	.uaword	.LASF69
	.byte	0x1
	.uahalf	0x2045
	.uaword	0xce5
	.byte	0x1
	.byte	0x6c
	.uleb128 0x3f
	.string	"lReqSrc"
	.byte	0x1
	.uahalf	0x2046
	.uaword	0x1cc
	.byte	0x1
	.byte	0x5a
	.uleb128 0x2b
	.uaword	0x10584
	.uaword	.LBB544
	.uaword	.Ldebug_ranges0+0x278
	.byte	0x1
	.uahalf	0x204c
	.uaword	0x1226e
	.uleb128 0x40
	.uaword	0x105b8
	.uleb128 0x27
	.uaword	0x105ac
	.uaword	.LLST159
	.byte	0
	.uleb128 0x2b
	.uaword	0x10c65
	.uaword	.LBB558
	.uaword	.Ldebug_ranges0+0x2b8
	.byte	0x1
	.uahalf	0x2051
	.uaword	0x122a4
	.uleb128 0x27
	.uaword	0x10c99
	.uaword	.LLST160
	.uleb128 0x27
	.uaword	0x10c8d
	.uaword	.LLST161
	.uleb128 0x2c
	.uaword	.Ldebug_ranges0+0x2b8
	.uleb128 0x2a
	.uaword	0x10ca6
	.uaword	.LLST162
	.byte	0
	.byte	0
	.uleb128 0x30
	.uaword	0x10b82
	.uaword	.LBB562
	.uaword	.LBE562
	.byte	0x1
	.uahalf	0x2054
	.uaword	0x122de
	.uleb128 0x27
	.uaword	0x10bb2
	.uaword	.LLST163
	.uleb128 0x27
	.uaword	0x10ba6
	.uaword	.LLST164
	.uleb128 0x31
	.uaword	.LBB563
	.uaword	.LBE563
	.uleb128 0x2a
	.uaword	0x10bbf
	.uaword	.LLST165
	.byte	0
	.byte	0
	.uleb128 0x30
	.uaword	0x10bcd
	.uaword	.LBB564
	.uaword	.LBE564
	.byte	0x1
	.uahalf	0x2057
	.uaword	0x12318
	.uleb128 0x27
	.uaword	0x10c02
	.uaword	.LLST166
	.uleb128 0x27
	.uaword	0x10bf6
	.uaword	.LLST167
	.uleb128 0x31
	.uaword	.LBB565
	.uaword	.LBE565
	.uleb128 0x2a
	.uaword	0x10c0f
	.uaword	.LLST168
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0x106e1
	.uaword	.LBB566
	.uaword	.Ldebug_ranges0+0x2d0
	.byte	0x1
	.uahalf	0x205b
	.uaword	0x12354
	.uleb128 0x28
	.uaword	0x10712
	.byte	0x1
	.byte	0x6c
	.uleb128 0x28
	.uaword	0x10712
	.byte	0x1
	.byte	0x6c
	.uleb128 0x40
	.uaword	0x1071e
	.uleb128 0x27
	.uaword	0x10706
	.uaword	.LLST169
	.uleb128 0x2c
	.uaword	.Ldebug_ranges0+0x2d0
	.uleb128 0x3e
	.uaword	0x1072a
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0x11faf
	.uaword	.LBB572
	.uaword	.Ldebug_ranges0+0x2f0
	.byte	0x1
	.uahalf	0x2077
	.uaword	0x123b8
	.uleb128 0x40
	.uaword	0x11fea
	.uleb128 0x27
	.uaword	0x11fde
	.uaword	.LLST170
	.uleb128 0x27
	.uaword	0x11fd2
	.uaword	.LLST171
	.uleb128 0x2c
	.uaword	.Ldebug_ranges0+0x2f0
	.uleb128 0x3e
	.uaword	0x11ff6
	.uleb128 0x2a
	.uaword	0x12002
	.uaword	.LLST172
	.uleb128 0x2a
	.uaword	0x1200e
	.uaword	.LLST173
	.uleb128 0x2a
	.uaword	0x1201a
	.uaword	.LLST174
	.uleb128 0x2a
	.uaword	0x12031
	.uaword	.LLST175
	.uleb128 0x2a
	.uaword	0x1203d
	.uaword	.LLST176
	.byte	0
	.byte	0
	.uleb128 0x32
	.uaword	.Ldebug_ranges0+0x310
	.uaword	0x1246b
	.uleb128 0x39
	.string	"lStopGrpId"
	.byte	0x1
	.uahalf	0x2081
	.uaword	0x5bd
	.uaword	.LLST177
	.uleb128 0x39
	.string	"lStopGrpCfgPtr"
	.byte	0x1
	.uahalf	0x2082
	.uaword	0xce5
	.uaword	.LLST178
	.uleb128 0x2b
	.uaword	0x10dbb
	.uaword	.LBB577
	.uaword	.Ldebug_ranges0+0x328
	.byte	0x1
	.uahalf	0x20a1
	.uaword	0x12454
	.uleb128 0x27
	.uaword	0x10dfe
	.uaword	.LLST179
	.uleb128 0x40
	.uaword	0x10df2
	.uleb128 0x27
	.uaword	0x10de6
	.uaword	.LLST180
	.uleb128 0x27
	.uaword	0x10dda
	.uaword	.LLST181
	.uleb128 0x2c
	.uaword	.Ldebug_ranges0+0x328
	.uleb128 0x2a
	.uaword	0x10e14
	.uaword	.LLST182
	.uleb128 0x2a
	.uaword	0x10e20
	.uaword	.LLST183
	.uleb128 0x3e
	.uaword	0x10e3b
	.uleb128 0x3e
	.uaword	0x10e47
	.uleb128 0x3e
	.uaword	0x10e53
	.uleb128 0x3e
	.uaword	0x10e5f
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uaword	.LVL276
	.uaword	0x11252
	.uleb128 0x2e
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x2e
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0x11986
	.uaword	.LBB581
	.uaword	.Ldebug_ranges0+0x340
	.byte	0x1
	.uahalf	0x20b6
	.uaword	0x124f7
	.uleb128 0x40
	.uaword	0x119c0
	.uleb128 0x27
	.uaword	0x119b4
	.uaword	.LLST184
	.uleb128 0x27
	.uaword	0x119a8
	.uaword	.LLST185
	.uleb128 0x2c
	.uaword	.Ldebug_ranges0+0x340
	.uleb128 0x2a
	.uaword	0x119cc
	.uaword	.LLST186
	.uleb128 0x2a
	.uaword	0x119d8
	.uaword	.LLST187
	.uleb128 0x2a
	.uaword	0x119e4
	.uaword	.LLST188
	.uleb128 0x2a
	.uaword	0x119f6
	.uaword	.LLST189
	.uleb128 0x2a
	.uaword	0x11a02
	.uaword	.LLST190
	.uleb128 0x2a
	.uaword	0x11a17
	.uaword	.LLST191
	.uleb128 0x2a
	.uaword	0x11a2c
	.uaword	.LLST192
	.uleb128 0x2a
	.uaword	0x11a38
	.uaword	.LLST193
	.uleb128 0x2a
	.uaword	0x11a44
	.uaword	.LLST194
	.uleb128 0x2a
	.uaword	0x11a50
	.uaword	.LLST195
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0x1204a
	.uaword	.LBB585
	.uaword	.Ldebug_ranges0+0x358
	.byte	0x1
	.uahalf	0x20cd
	.uaword	0x12868
	.uleb128 0x27
	.uaword	0x12083
	.uaword	.LLST196
	.uleb128 0x27
	.uaword	0x12077
	.uaword	.LLST197
	.uleb128 0x27
	.uaword	0x1206b
	.uaword	.LLST198
	.uleb128 0x2c
	.uaword	.Ldebug_ranges0+0x358
	.uleb128 0x2a
	.uaword	0x1208f
	.uaword	.LLST199
	.uleb128 0x2a
	.uaword	0x1209b
	.uaword	.LLST200
	.uleb128 0x2a
	.uaword	0x120a7
	.uaword	.LLST201
	.uleb128 0x2a
	.uaword	0x120b3
	.uaword	.LLST202
	.uleb128 0x2a
	.uaword	0x120bf
	.uaword	.LLST203
	.uleb128 0x2a
	.uaword	0x120cb
	.uaword	.LLST204
	.uleb128 0x2a
	.uaword	0x120e3
	.uaword	.LLST205
	.uleb128 0x2a
	.uaword	0x120ef
	.uaword	.LLST206
	.uleb128 0x2b
	.uaword	0x116af
	.uaword	.LBB587
	.uaword	.Ldebug_ranges0+0x388
	.byte	0x1
	.uahalf	0x2588
	.uaword	0x12612
	.uleb128 0x27
	.uaword	0x116d1
	.uaword	.LLST207
	.uleb128 0x2c
	.uaword	.Ldebug_ranges0+0x388
	.uleb128 0x3e
	.uaword	0x116dd
	.uleb128 0x2a
	.uaword	0x116e9
	.uaword	.LLST208
	.uleb128 0x2a
	.uaword	0x116f5
	.uaword	.LLST209
	.uleb128 0x29
	.uaword	0x11701
	.byte	0x2
	.byte	0x91
	.sleb128 -6
	.uleb128 0x29
	.uaword	0x11712
	.byte	0x2
	.byte	0x91
	.sleb128 -3
	.uleb128 0x2a
	.uaword	0x11726
	.uaword	.LLST210
	.uleb128 0x2a
	.uaword	0x11732
	.uaword	.LLST211
	.uleb128 0x2a
	.uaword	0x11745
	.uaword	.LLST212
	.uleb128 0x2a
	.uaword	0x11751
	.uaword	.LLST213
	.uleb128 0x2b
	.uaword	0x10584
	.uaword	.LBB589
	.uaword	.Ldebug_ranges0+0x3a0
	.byte	0x1
	.uahalf	0x1ca8
	.uaword	0x12607
	.uleb128 0x27
	.uaword	0x105b8
	.uaword	.LLST212
	.uleb128 0x27
	.uaword	0x105ac
	.uaword	.LLST215
	.byte	0
	.uleb128 0x34
	.uaword	.LVL310
	.uaword	0x1502d
	.byte	0
	.byte	0
	.uleb128 0x33
	.uaword	0x120fc
	.uaword	.LBB597
	.uaword	.Ldebug_ranges0+0x3c0
	.byte	0x1
	.uahalf	0x2580
	.uleb128 0x27
	.uaword	0x12118
	.uaword	.LLST216
	.uleb128 0x30
	.uaword	0x12125
	.uaword	.LBB599
	.uaword	.LBE599
	.byte	0x1
	.uahalf	0x24bf
	.uaword	0x12694
	.uleb128 0x27
	.uaword	0x12143
	.uaword	.LLST217
	.uleb128 0x31
	.uaword	.LBB600
	.uaword	.LBE600
	.uleb128 0x2a
	.uaword	0x1214f
	.uaword	.LLST218
	.uleb128 0x2a
	.uaword	0x1215b
	.uaword	.LLST219
	.uleb128 0x2a
	.uaword	0x12167
	.uaword	.LLST220
	.uleb128 0x2a
	.uaword	0x12173
	.uaword	.LLST221
	.uleb128 0x34
	.uaword	.LVL357
	.uaword	0x14e5f
	.uleb128 0x2f
	.uaword	.LVL359
	.uaword	0x14e5f
	.uleb128 0x2e
	.byte	0x1
	.byte	0x64
	.byte	0x6
	.byte	0x7a
	.sleb128 -268213716
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.uaword	0x12125
	.uaword	.LBB601
	.uaword	.LBE601
	.byte	0x1
	.uahalf	0x24d8
	.uaword	0x126fd
	.uleb128 0x27
	.uaword	0x12143
	.uaword	.LLST222
	.uleb128 0x31
	.uaword	.LBB602
	.uaword	.LBE602
	.uleb128 0x2a
	.uaword	0x1214f
	.uaword	.LLST223
	.uleb128 0x2a
	.uaword	0x1215b
	.uaword	.LLST224
	.uleb128 0x2a
	.uaword	0x12167
	.uaword	.LLST225
	.uleb128 0x2a
	.uaword	0x12173
	.uaword	.LLST226
	.uleb128 0x34
	.uaword	.LVL364
	.uaword	0x14e5f
	.uleb128 0x2f
	.uaword	.LVL366
	.uaword	0x14e5f
	.uleb128 0x2e
	.byte	0x1
	.byte	0x64
	.byte	0x6
	.byte	0x7a
	.sleb128 -268213716
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0x12180
	.uaword	.LBB603
	.uaword	.Ldebug_ranges0+0x3e8
	.byte	0x1
	.uahalf	0x24e3
	.uaword	0x127b3
	.uleb128 0x27
	.uaword	0x1219e
	.uaword	.LLST227
	.uleb128 0x2c
	.uaword	.Ldebug_ranges0+0x3e8
	.uleb128 0x2a
	.uaword	0x121aa
	.uaword	.LLST228
	.uleb128 0x2a
	.uaword	0x121b6
	.uaword	.LLST229
	.uleb128 0x34
	.uaword	.LVL373
	.uaword	0x15049
	.uleb128 0x2d
	.uaword	.LVL374
	.uaword	0x14f10
	.uaword	0x12754
	.uleb128 0x2e
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x2e
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.uaword	.LVL375
	.uaword	0x15075
	.uaword	0x12773
	.uleb128 0x2e
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x31
	.uleb128 0x2e
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x2e
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x34
	.uaword	.LVL389
	.uaword	0x150b2
	.uleb128 0x2d
	.uaword	.LVL390
	.uaword	0x14fb0
	.uaword	0x12796
	.uleb128 0x2e
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x2e
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.uaword	.LVL391
	.uaword	0x150dd
	.uleb128 0x2e
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x31
	.uleb128 0x2e
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x2e
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x33
	.uaword	0x12180
	.uaword	.LBB606
	.uaword	.Ldebug_ranges0+0x400
	.byte	0x1
	.uahalf	0x24ca
	.uleb128 0x27
	.uaword	0x1219e
	.uaword	.LLST230
	.uleb128 0x2c
	.uaword	.Ldebug_ranges0+0x400
	.uleb128 0x2a
	.uaword	0x121aa
	.uaword	.LLST231
	.uleb128 0x2a
	.uaword	0x121b6
	.uaword	.LLST232
	.uleb128 0x34
	.uaword	.LVL383
	.uaword	0x15049
	.uleb128 0x2d
	.uaword	.LVL384
	.uaword	0x14f10
	.uaword	0x12806
	.uleb128 0x2e
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x2e
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.uaword	.LVL385
	.uaword	0x15075
	.uaword	0x12825
	.uleb128 0x2e
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x31
	.uleb128 0x2e
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x2e
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x34
	.uaword	.LVL393
	.uaword	0x150b2
	.uleb128 0x2d
	.uaword	.LVL394
	.uaword	0x14fb0
	.uaword	0x12848
	.uleb128 0x2e
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x2e
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.uaword	.LVL395
	.uaword	0x150dd
	.uleb128 0x2e
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x31
	.uleb128 0x2e
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x2e
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0x10dbb
	.uaword	.LBB621
	.uaword	.Ldebug_ranges0+0x418
	.byte	0x1
	.uahalf	0x20da
	.uaword	0x128d1
	.uleb128 0x27
	.uaword	0x10dfe
	.uaword	.LLST233
	.uleb128 0x40
	.uaword	0x10df2
	.uleb128 0x27
	.uaword	0x10de6
	.uaword	.LLST234
	.uleb128 0x27
	.uaword	0x10dda
	.uaword	.LLST235
	.uleb128 0x2c
	.uaword	.Ldebug_ranges0+0x418
	.uleb128 0x2a
	.uaword	0x10e14
	.uaword	.LLST236
	.uleb128 0x2a
	.uaword	0x10e20
	.uaword	.LLST237
	.uleb128 0x2a
	.uaword	0x10e3b
	.uaword	.LLST238
	.uleb128 0x3e
	.uaword	0x10e47
	.uleb128 0x3e
	.uaword	0x10e53
	.uleb128 0x2a
	.uaword	0x10e5f
	.uaword	.LLST239
	.byte	0
	.byte	0
	.uleb128 0x41
	.uaword	.LVL340
	.byte	0x1
	.uaword	0x11764
	.uleb128 0x2e
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x2e
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x2e
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x21
	.string	"Adc_lInit"
	.byte	0x1
	.uahalf	0x156f
	.byte	0x1
	.byte	0x3
	.uaword	0x1291c
	.uleb128 0x20
	.uaword	.LASF52
	.byte	0x1
	.uahalf	0x156f
	.uaword	0x105cb
	.uleb128 0x22
	.uaword	.LASF85
	.byte	0x1
	.uahalf	0x1571
	.uaword	0x233
	.byte	0
	.uleb128 0x21
	.string	"Adc_lResetCoreGlobalVars"
	.byte	0x1
	.uahalf	0x16e1
	.byte	0x1
	.byte	0x1
	.uaword	0x1297e
	.uleb128 0x20
	.uaword	.LASF52
	.byte	0x1
	.uahalf	0x16e1
	.uaword	0x105cb
	.uleb128 0x22
	.uaword	.LASF55
	.byte	0x1
	.uahalf	0x16e3
	.uaword	0x105c5
	.uleb128 0x22
	.uaword	.LASF68
	.byte	0x1
	.uahalf	0x16e4
	.uaword	0x1cc
	.uleb128 0x22
	.uaword	.LASF81
	.byte	0x1
	.uahalf	0x16e4
	.uaword	0x1cc
	.uleb128 0x23
	.uleb128 0x22
	.uaword	.LASF70
	.byte	0x1
	.uahalf	0x16f5
	.uaword	0x1cc
	.byte	0
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.string	"Adc_Init"
	.byte	0x1
	.uahalf	0x531
	.byte	0x1
	.uaword	.LFB19
	.uaword	.LFE19
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x12b41
	.uleb128 0x43
	.string	"ConfigPtr"
	.byte	0x1
	.uahalf	0x531
	.uaword	0x12b41
	.uaword	.LLST240
	.uleb128 0x39
	.string	"lClcReadBack"
	.byte	0x1
	.uahalf	0x533
	.uaword	0x233
	.uaword	.LLST241
	.uleb128 0x3a
	.uaword	.LASF82
	.byte	0x1
	.uahalf	0x534
	.uaword	0x233
	.uaword	.LLST242
	.uleb128 0x44
	.string	"lClcDemErr"
	.byte	0x1
	.uahalf	0x535
	.uaword	0x233
	.byte	0
	.uleb128 0x2b
	.uaword	0x128ef
	.uaword	.LBB647
	.uaword	.Ldebug_ranges0+0x438
	.byte	0x1
	.uahalf	0x577
	.uaword	0x12b1e
	.uleb128 0x40
	.uaword	0x12903
	.uleb128 0x2c
	.uaword	.Ldebug_ranges0+0x438
	.uleb128 0x2a
	.uaword	0x1290f
	.uaword	.LLST243
	.uleb128 0x2b
	.uaword	0x10792
	.uaword	.LBB649
	.uaword	.Ldebug_ranges0+0x450
	.byte	0x1
	.uahalf	0x15aa
	.uaword	0x12a56
	.uleb128 0x27
	.uaword	0x107ac
	.uaword	.LLST244
	.uleb128 0x27
	.uaword	0x107b8
	.uaword	.LLST245
	.uleb128 0x2c
	.uaword	.Ldebug_ranges0+0x450
	.uleb128 0x2a
	.uaword	0x107c4
	.uaword	.LLST246
	.uleb128 0x2a
	.uaword	0x107d0
	.uaword	.LLST247
	.byte	0
	.byte	0
	.uleb128 0x45
	.uaword	0x109ca
	.uaword	.LBB653
	.uaword	.Ldebug_ranges0+0x468
	.byte	0x1
	.uahalf	0x15c8
	.uleb128 0x30
	.uaword	0x1291c
	.uaword	.LBB677
	.uaword	.LBE677
	.byte	0x1
	.uahalf	0x15cb
	.uaword	0x12ab8
	.uleb128 0x40
	.uaword	0x1293f
	.uleb128 0x31
	.uaword	.LBB678
	.uaword	.LBE678
	.uleb128 0x2a
	.uaword	0x1294b
	.uaword	.LLST248
	.uleb128 0x2a
	.uaword	0x12957
	.uaword	.LLST249
	.uleb128 0x2a
	.uaword	0x12963
	.uaword	.LLST250
	.uleb128 0x31
	.uaword	.LBB679
	.uaword	.LBE679
	.uleb128 0x2a
	.uaword	0x12970
	.uaword	.LLST251
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.uaword	0x10a51
	.uaword	.LBB680
	.uaword	.LBE680
	.byte	0x1
	.uahalf	0x1587
	.uaword	0x12ae0
	.uleb128 0x31
	.uaword	.LBB681
	.uaword	.LBE681
	.uleb128 0x2a
	.uaword	0x10a6f
	.uaword	.LLST252
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0x10a8e
	.uaword	.LBB682
	.uaword	.Ldebug_ranges0+0x4d0
	.byte	0x1
	.uahalf	0x159b
	.uaword	0x12b04
	.uleb128 0x2c
	.uaword	.Ldebug_ranges0+0x4d0
	.uleb128 0x2a
	.uaword	0x10ab8
	.uaword	.LLST253
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uaword	.LVL401
	.uaword	0x10e76
	.uleb128 0x2e
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x46
	.uaword	0x109f2
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
	.uaword	.LVL397
	.uaword	0x1502d
	.uleb128 0x2f
	.uaword	.LVL432
	.uaword	0x15114
	.uleb128 0x2e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x38
	.uleb128 0x2e
	.byte	0x1
	.byte	0x64
	.byte	0x6
	.byte	0x11
	.sleb128 -268304384
	.byte	0
	.byte	0
	.uleb128 0xe
	.uaword	0x12b46
	.uleb128 0x9
	.byte	0x4
	.uaword	0x12b4c
	.uleb128 0xe
	.uaword	0xe45
	.uleb128 0x47
	.byte	0x1
	.string	"Adc_SetupResultBuffer"
	.byte	0x1
	.uahalf	0x5f5
	.byte	0x1
	.uaword	0x29f
	.uaword	.LFB20
	.uaword	.LFE20
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x12c7c
	.uleb128 0x37
	.uaword	.LASF86
	.byte	0x1
	.uahalf	0x5f5
	.uaword	0x1061b
	.uaword	.LLST254
	.uleb128 0x37
	.uaword	.LASF87
	.byte	0x1
	.uahalf	0x5f6
	.uaword	0x12c7c
	.uaword	.LLST255
	.uleb128 0x22
	.uaword	.LASF55
	.byte	0x1
	.uahalf	0x5f8
	.uaword	0x105c5
	.uleb128 0x3d
	.uaword	.LASF71
	.byte	0x1
	.uahalf	0x5f9
	.uaword	0x29f
	.byte	0
	.uleb128 0x22
	.uaword	.LASF88
	.byte	0x1
	.uahalf	0x5fa
	.uaword	0x233
	.uleb128 0x3a
	.uaword	.LASF82
	.byte	0x1
	.uahalf	0x5fa
	.uaword	0x233
	.uaword	.LLST256
	.uleb128 0x22
	.uaword	.LASF72
	.byte	0x1
	.uahalf	0x5fb
	.uaword	0x5bd
	.uleb128 0x30
	.uaword	0x10cb4
	.uaword	.LBB688
	.uaword	.LBE688
	.byte	0x1
	.uahalf	0x601
	.uaword	0x12c39
	.uleb128 0x27
	.uaword	0x10cd4
	.uaword	.LLST257
	.uleb128 0x48
	.uaword	0x10544
	.uaword	.LBB690
	.uaword	.LBE690
	.byte	0x1
	.uahalf	0x11be
	.uleb128 0x3b
	.uaword	0x1056d
	.byte	0xb
	.uleb128 0x3b
	.uaword	0x10563
	.byte	0x5
	.uleb128 0x27
	.uaword	0x10559
	.uaword	.LLST258
	.uleb128 0x31
	.uaword	.LBB691
	.uaword	.LBE691
	.uleb128 0x2a
	.uaword	0x10577
	.uaword	.LLST259
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0x10584
	.uaword	.LBB692
	.uaword	.Ldebug_ranges0+0x4e8
	.byte	0x1
	.uahalf	0x630
	.uaword	0x12c60
	.uleb128 0x27
	.uaword	0x105b8
	.uaword	.LLST260
	.uleb128 0x27
	.uaword	0x105ac
	.uaword	.LLST259
	.byte	0
	.uleb128 0x34
	.uaword	.LVL440
	.uaword	0x1502d
	.uleb128 0x34
	.uaword	.LVL444
	.uaword	0x15148
	.uleb128 0x34
	.uaword	.LVL445
	.uaword	0x15168
	.byte	0
	.uleb128 0xe
	.uaword	0x12c81
	.uleb128 0x9
	.byte	0x4
	.uaword	0x12c87
	.uleb128 0xe
	.uaword	0x5d2
	.uleb128 0x42
	.byte	0x1
	.string	"Adc_DeInit"
	.byte	0x1
	.uahalf	0x675
	.byte	0x1
	.uaword	.LFB21
	.uaword	.LFE21
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x12dae
	.uleb128 0x3a
	.uaword	.LASF85
	.byte	0x1
	.uahalf	0x678
	.uaword	0x233
	.uaword	.LLST262
	.uleb128 0x3a
	.uaword	.LASF82
	.byte	0x1
	.uahalf	0x678
	.uaword	0x233
	.uaword	.LLST263
	.uleb128 0x30
	.uaword	0x1291c
	.uaword	.LBB703
	.uaword	.LBE703
	.byte	0x1
	.uahalf	0x6a2
	.uaword	0x12d1f
	.uleb128 0x40
	.uaword	0x1293f
	.uleb128 0x31
	.uaword	.LBB704
	.uaword	.LBE704
	.uleb128 0x2a
	.uaword	0x1294b
	.uaword	.LLST264
	.uleb128 0x2a
	.uaword	0x12957
	.uaword	.LLST265
	.uleb128 0x2a
	.uaword	0x12963
	.uaword	.LLST266
	.uleb128 0x31
	.uaword	.LBB705
	.uaword	.LBE705
	.uleb128 0x2a
	.uaword	0x12970
	.uaword	.LLST267
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.uaword	0x10a51
	.uaword	.LBB706
	.uaword	.LBE706
	.byte	0x1
	.uahalf	0x6a8
	.uaword	0x12d48
	.uleb128 0x31
	.uaword	.LBB707
	.uaword	.LBE707
	.uleb128 0x49
	.uaword	0x10a6f
	.sleb128 -268304224
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0x10a8e
	.uaword	.LBB708
	.uaword	.Ldebug_ranges0+0x500
	.byte	0x1
	.uahalf	0x6b6
	.uaword	0x12d6f
	.uleb128 0x2c
	.uaword	.Ldebug_ranges0+0x500
	.uleb128 0x29
	.uaword	0x10ab8
	.byte	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.byte	0
	.byte	0
	.uleb128 0x34
	.uaword	.LVL446
	.uaword	0x1502d
	.uleb128 0x2d
	.uaword	.LVL450
	.uaword	0x10e76
	.uaword	0x12d94
	.uleb128 0x2e
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x46
	.uaword	0x109f2
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.uaword	.LVL465
	.uaword	0x15114
	.uleb128 0x2e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.uleb128 0x2e
	.byte	0x1
	.byte	0x64
	.byte	0x6
	.byte	0x11
	.sleb128 -268304384
	.byte	0
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.string	"Adc_StartGroupConversion"
	.byte	0x1
	.uahalf	0x6e4
	.byte	0x1
	.uaword	.LFB22
	.uaword	.LFE22
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x12ea7
	.uleb128 0x37
	.uaword	.LASF86
	.byte	0x1
	.uahalf	0x6e4
	.uaword	0x1061b
	.uaword	.LLST268
	.uleb128 0x22
	.uaword	.LASF88
	.byte	0x1
	.uahalf	0x6e6
	.uaword	0x233
	.uleb128 0x3a
	.uaword	.LASF82
	.byte	0x1
	.uahalf	0x6e7
	.uaword	0x233
	.uaword	.LLST269
	.uleb128 0x22
	.uaword	.LASF72
	.byte	0x1
	.uahalf	0x6e8
	.uaword	0x5bd
	.uleb128 0x2b
	.uaword	0x10cb4
	.uaword	.LBB714
	.uaword	.Ldebug_ranges0+0x520
	.byte	0x1
	.uahalf	0x6fa
	.uaword	0x12e68
	.uleb128 0x28
	.uaword	0x10cd4
	.byte	0x1
	.byte	0x58
	.uleb128 0x33
	.uaword	0x10544
	.uaword	.LBB716
	.uaword	.Ldebug_ranges0+0x538
	.byte	0x1
	.uahalf	0x11be
	.uleb128 0x3b
	.uaword	0x1056d
	.byte	0xb
	.uleb128 0x3b
	.uaword	0x10563
	.byte	0x5
	.uleb128 0x28
	.uaword	0x10559
	.byte	0x7
	.byte	0x78
	.sleb128 0
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x9f
	.uleb128 0x2c
	.uaword	.Ldebug_ranges0+0x550
	.uleb128 0x29
	.uaword	0x10577
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
	.uaword	.LVL468
	.uaword	0x1502d
	.uleb128 0x34
	.uaword	.LVL472
	.uaword	0x15148
	.uleb128 0x2d
	.uaword	.LVL473
	.uaword	0x121c3
	.uaword	0x12e9c
	.uleb128 0x2e
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x2e
	.byte	0x1
	.byte	0x55
	.byte	0x4
	.byte	0x78
	.sleb128 0
	.byte	0x4f
	.byte	0x1a
	.uleb128 0x2e
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x4a
	.uaword	.LVL474
	.byte	0x1
	.uaword	0x15168
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.string	"Adc_StartGroupConversionSimple"
	.byte	0x1
	.uahalf	0x794
	.byte	0x1
	.uaword	.LFB23
	.uaword	.LFE23
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1308a
	.uleb128 0x37
	.uaword	.LASF86
	.byte	0x1
	.uahalf	0x794
	.uaword	0x1061b
	.uaword	.LLST270
	.uleb128 0x22
	.uaword	.LASF88
	.byte	0x1
	.uahalf	0x796
	.uaword	0x233
	.uleb128 0x3a
	.uaword	.LASF82
	.byte	0x1
	.uahalf	0x797
	.uaword	0x233
	.uaword	.LLST271
	.uleb128 0x22
	.uaword	.LASF72
	.byte	0x1
	.uahalf	0x798
	.uaword	0x5bd
	.uleb128 0x22
	.uaword	.LASF55
	.byte	0x1
	.uahalf	0x7b8
	.uaword	0x105c5
	.uleb128 0x3a
	.uaword	.LASF69
	.byte	0x1
	.uahalf	0x7b9
	.uaword	0xce5
	.uaword	.LLST272
	.uleb128 0x30
	.uaword	0x10cb4
	.uaword	.LBB722
	.uaword	.LBE722
	.byte	0x1
	.uahalf	0x7aa
	.uaword	0x12f89
	.uleb128 0x28
	.uaword	0x10cd4
	.byte	0x1
	.byte	0x58
	.uleb128 0x48
	.uaword	0x10544
	.uaword	.LBB724
	.uaword	.LBE724
	.byte	0x1
	.uahalf	0x11be
	.uleb128 0x3b
	.uaword	0x1056d
	.byte	0xb
	.uleb128 0x3b
	.uaword	0x10563
	.byte	0x5
	.uleb128 0x28
	.uaword	0x10559
	.byte	0x7
	.byte	0x78
	.sleb128 0
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x9f
	.uleb128 0x31
	.uaword	.LBB725
	.uaword	.LBE725
	.uleb128 0x2a
	.uaword	0x10577
	.uaword	.LLST273
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0x10584
	.uaword	.LBB726
	.uaword	.Ldebug_ranges0+0x568
	.byte	0x1
	.uahalf	0x7bc
	.uaword	0x12fb0
	.uleb128 0x27
	.uaword	0x105b8
	.uaword	.LLST274
	.uleb128 0x27
	.uaword	0x105ac
	.uaword	.LLST275
	.byte	0
	.uleb128 0x30
	.uaword	0x10ce1
	.uaword	.LBB735
	.uaword	.LBE735
	.byte	0x1
	.uahalf	0x7ac
	.uaword	0x12fcc
	.uleb128 0x28
	.uaword	0x10d05
	.byte	0x1
	.byte	0x58
	.byte	0
	.uleb128 0x2b
	.uaword	0x10c65
	.uaword	.LBB738
	.uaword	.Ldebug_ranges0+0x598
	.byte	0x1
	.uahalf	0x7c3
	.uaword	0x13002
	.uleb128 0x27
	.uaword	0x10c99
	.uaword	.LLST276
	.uleb128 0x27
	.uaword	0x10c8d
	.uaword	.LLST277
	.uleb128 0x2c
	.uaword	.Ldebug_ranges0+0x598
	.uleb128 0x2a
	.uaword	0x10ca6
	.uaword	.LLST278
	.byte	0
	.byte	0
	.uleb128 0x30
	.uaword	0x10b82
	.uaword	.LBB744
	.uaword	.LBE744
	.byte	0x1
	.uahalf	0x7c6
	.uaword	0x1303c
	.uleb128 0x27
	.uaword	0x10bb2
	.uaword	.LLST279
	.uleb128 0x27
	.uaword	0x10ba6
	.uaword	.LLST280
	.uleb128 0x31
	.uaword	.LBB745
	.uaword	.LBE745
	.uleb128 0x2a
	.uaword	0x10bbf
	.uaword	.LLST281
	.byte	0
	.byte	0
	.uleb128 0x30
	.uaword	0x10bcd
	.uaword	.LBB746
	.uaword	.LBE746
	.byte	0x1
	.uahalf	0x7c9
	.uaword	0x13076
	.uleb128 0x27
	.uaword	0x10c02
	.uaword	.LLST282
	.uleb128 0x27
	.uaword	0x10bf6
	.uaword	.LLST283
	.uleb128 0x31
	.uaword	.LBB747
	.uaword	.LBE747
	.uleb128 0x2a
	.uaword	0x10c0f
	.uaword	.LLST284
	.byte	0
	.byte	0
	.uleb128 0x34
	.uaword	.LVL476
	.uaword	0x1502d
	.uleb128 0x4a
	.uaword	.LVL490
	.byte	0x1
	.uaword	0x11764
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.string	"Adc_StopGroupConversion"
	.byte	0x1
	.uahalf	0x803
	.byte	0x1
	.uaword	.LFB24
	.uaword	.LFE24
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x13182
	.uleb128 0x37
	.uaword	.LASF86
	.byte	0x1
	.uahalf	0x803
	.uaword	0x1061b
	.uaword	.LLST285
	.uleb128 0x22
	.uaword	.LASF88
	.byte	0x1
	.uahalf	0x805
	.uaword	0x233
	.uleb128 0x3a
	.uaword	.LASF82
	.byte	0x1
	.uahalf	0x806
	.uaword	0x233
	.uaword	.LLST286
	.uleb128 0x22
	.uaword	.LASF72
	.byte	0x1
	.uahalf	0x807
	.uaword	0x5bd
	.uleb128 0x2b
	.uaword	0x10cb4
	.uaword	.LBB748
	.uaword	.Ldebug_ranges0+0x5b8
	.byte	0x1
	.uahalf	0x80d
	.uaword	0x13143
	.uleb128 0x28
	.uaword	0x10cd4
	.byte	0x1
	.byte	0x58
	.uleb128 0x33
	.uaword	0x10544
	.uaword	.LBB750
	.uaword	.Ldebug_ranges0+0x5d0
	.byte	0x1
	.uahalf	0x11be
	.uleb128 0x3b
	.uaword	0x1056d
	.byte	0xb
	.uleb128 0x3b
	.uaword	0x10563
	.byte	0x5
	.uleb128 0x28
	.uaword	0x10559
	.byte	0x7
	.byte	0x78
	.sleb128 0
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x9f
	.uleb128 0x2c
	.uaword	.Ldebug_ranges0+0x5e8
	.uleb128 0x29
	.uaword	0x10577
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
	.uaword	.LVL492
	.uaword	0x1502d
	.uleb128 0x34
	.uaword	.LVL496
	.uaword	0x15148
	.uleb128 0x2d
	.uaword	.LVL497
	.uaword	0x11a5d
	.uaword	0x13177
	.uleb128 0x2e
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x2e
	.byte	0x1
	.byte	0x55
	.byte	0x4
	.byte	0x78
	.sleb128 0
	.byte	0x4f
	.byte	0x1a
	.uleb128 0x2e
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x4a
	.uaword	.LVL498
	.byte	0x1
	.uaword	0x15168
	.byte	0
	.uleb128 0x47
	.byte	0x1
	.string	"Adc_ReadGroup"
	.byte	0x1
	.uahalf	0x8e1
	.byte	0x1
	.uaword	0x29f
	.uaword	.LFB25
	.uaword	.LFE25
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x13486
	.uleb128 0x37
	.uaword	.LASF86
	.byte	0x1
	.uahalf	0x8e1
	.uaword	0x1061b
	.uaword	.LLST287
	.uleb128 0x37
	.uaword	.LASF87
	.byte	0x1
	.uahalf	0x8e2
	.uaword	0x13486
	.uaword	.LLST288
	.uleb128 0x3a
	.uaword	.LASF69
	.byte	0x1
	.uahalf	0x8e4
	.uaword	0xce5
	.uaword	.LLST289
	.uleb128 0x22
	.uaword	.LASF55
	.byte	0x1
	.uahalf	0x8e5
	.uaword	0x105c5
	.uleb128 0x39
	.string	"lCurrentResultPtr"
	.byte	0x1
	.uahalf	0x8e6
	.uaword	0x12c81
	.uaword	.LLST290
	.uleb128 0x22
	.uaword	.LASF88
	.byte	0x1
	.uahalf	0x8e7
	.uaword	0x233
	.uleb128 0x22
	.uaword	.LASF80
	.byte	0x1
	.uahalf	0x8e7
	.uaword	0x233
	.uleb128 0x22
	.uaword	.LASF89
	.byte	0x1
	.uahalf	0x8e7
	.uaword	0x233
	.uleb128 0x3a
	.uaword	.LASF82
	.byte	0x1
	.uahalf	0x8e7
	.uaword	0x233
	.uaword	.LLST291
	.uleb128 0x38
	.uaword	.LASF71
	.byte	0x1
	.uahalf	0x8e8
	.uaword	0x29f
	.byte	0x1
	.byte	0x5f
	.uleb128 0x22
	.uaword	.LASF72
	.byte	0x1
	.uahalf	0x8e9
	.uaword	0x5bd
	.uleb128 0x39
	.string	"lNoofValidConv"
	.byte	0x1
	.uahalf	0x8ea
	.uaword	0x609
	.uaword	.LLST292
	.uleb128 0x3a
	.uaword	.LASF90
	.byte	0x1
	.uahalf	0x8ea
	.uaword	0x609
	.uaword	.LLST293
	.uleb128 0x3a
	.uaword	.LASF78
	.byte	0x1
	.uahalf	0x8eb
	.uaword	0x1cc
	.uaword	.LLST294
	.uleb128 0x39
	.string	"lCount"
	.byte	0x1
	.uahalf	0x8eb
	.uaword	0x1cc
	.uaword	.LLST295
	.uleb128 0x30
	.uaword	0x10cb4
	.uaword	.LBB756
	.uaword	.LBE756
	.byte	0x1
	.uahalf	0x8f1
	.uaword	0x132f7
	.uleb128 0x27
	.uaword	0x10cd4
	.uaword	.LLST296
	.uleb128 0x48
	.uaword	0x10544
	.uaword	.LBB758
	.uaword	.LBE758
	.byte	0x1
	.uahalf	0x11be
	.uleb128 0x3b
	.uaword	0x1056d
	.byte	0xb
	.uleb128 0x3b
	.uaword	0x10563
	.byte	0x5
	.uleb128 0x27
	.uaword	0x10559
	.uaword	.LLST297
	.uleb128 0x31
	.uaword	.LBB759
	.uaword	.LBE759
	.uleb128 0x2a
	.uaword	0x10577
	.uaword	.LLST298
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0x10584
	.uaword	.LBB760
	.uaword	.Ldebug_ranges0+0x600
	.byte	0x1
	.uahalf	0x91c
	.uaword	0x1331e
	.uleb128 0x27
	.uaword	0x105b8
	.uaword	.LLST299
	.uleb128 0x27
	.uaword	0x105ac
	.uaword	.LLST300
	.byte	0
	.uleb128 0x30
	.uaword	0x10ce1
	.uaword	.LBB770
	.uaword	.LBE770
	.byte	0x1
	.uahalf	0x8f3
	.uaword	0x1333c
	.uleb128 0x27
	.uaword	0x10d05
	.uaword	.LLST301
	.byte	0
	.uleb128 0x30
	.uaword	0x105d0
	.uaword	.LBB774
	.uaword	.LBE774
	.byte	0x1
	.uahalf	0x936
	.uaword	0x1339b
	.uleb128 0x40
	.uaword	0x105f2
	.uleb128 0x27
	.uaword	0x105fe
	.uaword	.LLST302
	.uleb128 0x48
	.uaword	0x10544
	.uaword	.LBB775
	.uaword	.LBE775
	.byte	0x1
	.uahalf	0x13e5
	.uleb128 0x3b
	.uaword	0x1056d
	.byte	0x1
	.uleb128 0x27
	.uaword	0x10563
	.uaword	.LLST302
	.uleb128 0x27
	.uaword	0x10559
	.uaword	.LLST304
	.uleb128 0x31
	.uaword	.LBB776
	.uaword	.LBE776
	.uleb128 0x2a
	.uaword	0x10577
	.uaword	.LLST305
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.uaword	0x10620
	.uaword	.LBB777
	.uaword	.LBE777
	.byte	0x1
	.uahalf	0x937
	.uaword	0x133fa
	.uleb128 0x40
	.uaword	0x10648
	.uleb128 0x27
	.uaword	0x10654
	.uaword	.LLST306
	.uleb128 0x48
	.uaword	0x10544
	.uaword	.LBB778
	.uaword	.LBE778
	.byte	0x1
	.uahalf	0x1409
	.uleb128 0x3b
	.uaword	0x1056d
	.byte	0x1
	.uleb128 0x27
	.uaword	0x10563
	.uaword	.LLST306
	.uleb128 0x27
	.uaword	0x10559
	.uaword	.LLST308
	.uleb128 0x31
	.uaword	.LBB779
	.uaword	.LBE779
	.uleb128 0x2a
	.uaword	0x10577
	.uaword	.LLST309
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.uaword	0x10b82
	.uaword	.LBB780
	.uaword	.LBE780
	.byte	0x1
	.uahalf	0x9a9
	.uaword	0x13434
	.uleb128 0x27
	.uaword	0x10bb2
	.uaword	.LLST310
	.uleb128 0x27
	.uaword	0x10ba6
	.uaword	.LLST311
	.uleb128 0x31
	.uaword	.LBB781
	.uaword	.LBE781
	.uleb128 0x2a
	.uaword	0x10bbf
	.uaword	.LLST312
	.byte	0
	.byte	0
	.uleb128 0x30
	.uaword	0x10bcd
	.uaword	.LBB782
	.uaword	.LBE782
	.byte	0x1
	.uahalf	0x9ac
	.uaword	0x1346a
	.uleb128 0x40
	.uaword	0x10c02
	.uleb128 0x27
	.uaword	0x10bf6
	.uaword	.LLST313
	.uleb128 0x31
	.uaword	.LBB783
	.uaword	.LBE783
	.uleb128 0x2a
	.uaword	0x10c0f
	.uaword	.LLST314
	.byte	0
	.byte	0
	.uleb128 0x34
	.uaword	.LVL500
	.uaword	0x1502d
	.uleb128 0x34
	.uaword	.LVL507
	.uaword	0x15148
	.uleb128 0x34
	.uaword	.LVL524
	.uaword	0x15168
	.byte	0
	.uleb128 0xe
	.uaword	0x104f3
	.uleb128 0x42
	.byte	0x1
	.string	"Adc_EnableHardwareTrigger"
	.byte	0x1
	.uahalf	0x9e0
	.byte	0x1
	.uaword	.LFB26
	.uaword	.LFE26
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x13585
	.uleb128 0x37
	.uaword	.LASF86
	.byte	0x1
	.uahalf	0x9e0
	.uaword	0x1061b
	.uaword	.LLST315
	.uleb128 0x22
	.uaword	.LASF88
	.byte	0x1
	.uahalf	0x9e6
	.uaword	0x233
	.uleb128 0x3a
	.uaword	.LASF82
	.byte	0x1
	.uahalf	0x9e7
	.uaword	0x233
	.uaword	.LLST316
	.uleb128 0x22
	.uaword	.LASF72
	.byte	0x1
	.uahalf	0x9e8
	.uaword	0x5bd
	.uleb128 0x2b
	.uaword	0x10cb4
	.uaword	.LBB784
	.uaword	.Ldebug_ranges0+0x638
	.byte	0x1
	.uahalf	0x9ee
	.uaword	0x13546
	.uleb128 0x28
	.uaword	0x10cd4
	.byte	0x1
	.byte	0x58
	.uleb128 0x33
	.uaword	0x10544
	.uaword	.LBB786
	.uaword	.Ldebug_ranges0+0x650
	.byte	0x1
	.uahalf	0x11be
	.uleb128 0x3b
	.uaword	0x1056d
	.byte	0xb
	.uleb128 0x3b
	.uaword	0x10563
	.byte	0x5
	.uleb128 0x28
	.uaword	0x10559
	.byte	0x7
	.byte	0x78
	.sleb128 0
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x9f
	.uleb128 0x2c
	.uaword	.Ldebug_ranges0+0x668
	.uleb128 0x29
	.uaword	0x10577
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
	.uaword	.LVL526
	.uaword	0x1502d
	.uleb128 0x34
	.uaword	.LVL530
	.uaword	0x15148
	.uleb128 0x2d
	.uaword	.LVL531
	.uaword	0x121c3
	.uaword	0x1357a
	.uleb128 0x2e
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x2e
	.byte	0x1
	.byte	0x55
	.byte	0x4
	.byte	0x78
	.sleb128 0
	.byte	0x4f
	.byte	0x1a
	.uleb128 0x2e
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x4a
	.uaword	.LVL532
	.byte	0x1
	.uaword	0x15168
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.string	"Adc_DisableHardwareTrigger"
	.byte	0x1
	.uahalf	0xaae
	.byte	0x1
	.uaword	.LFB27
	.uaword	.LFE27
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x13680
	.uleb128 0x37
	.uaword	.LASF86
	.byte	0x1
	.uahalf	0xaae
	.uaword	0x1061b
	.uaword	.LLST317
	.uleb128 0x22
	.uaword	.LASF88
	.byte	0x1
	.uahalf	0xab0
	.uaword	0x233
	.uleb128 0x3a
	.uaword	.LASF82
	.byte	0x1
	.uahalf	0xab0
	.uaword	0x233
	.uaword	.LLST318
	.uleb128 0x22
	.uaword	.LASF72
	.byte	0x1
	.uahalf	0xab1
	.uaword	0x5bd
	.uleb128 0x2b
	.uaword	0x10cb4
	.uaword	.LBB792
	.uaword	.Ldebug_ranges0+0x680
	.byte	0x1
	.uahalf	0xab7
	.uaword	0x13641
	.uleb128 0x28
	.uaword	0x10cd4
	.byte	0x1
	.byte	0x58
	.uleb128 0x33
	.uaword	0x10544
	.uaword	.LBB794
	.uaword	.Ldebug_ranges0+0x698
	.byte	0x1
	.uahalf	0x11be
	.uleb128 0x3b
	.uaword	0x1056d
	.byte	0xb
	.uleb128 0x3b
	.uaword	0x10563
	.byte	0x5
	.uleb128 0x28
	.uaword	0x10559
	.byte	0x7
	.byte	0x78
	.sleb128 0
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x9f
	.uleb128 0x2c
	.uaword	.Ldebug_ranges0+0x6b0
	.uleb128 0x29
	.uaword	0x10577
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
	.uaword	.LVL534
	.uaword	0x1502d
	.uleb128 0x34
	.uaword	.LVL538
	.uaword	0x15148
	.uleb128 0x2d
	.uaword	.LVL539
	.uaword	0x11a5d
	.uaword	0x13675
	.uleb128 0x2e
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x2e
	.byte	0x1
	.byte	0x55
	.byte	0x4
	.byte	0x78
	.sleb128 0
	.byte	0x4f
	.byte	0x1a
	.uleb128 0x2e
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x4a
	.uaword	.LVL540
	.byte	0x1
	.uaword	0x15168
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.string	"Adc_EnableGroupNotification"
	.byte	0x1
	.uahalf	0xb78
	.byte	0x1
	.uaword	.LFB28
	.uaword	.LFE28
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x137cf
	.uleb128 0x37
	.uaword	.LASF86
	.byte	0x1
	.uahalf	0xb78
	.uaword	0x1061b
	.uaword	.LLST319
	.uleb128 0x22
	.uaword	.LASF55
	.byte	0x1
	.uahalf	0xb7a
	.uaword	0x105c5
	.uleb128 0x22
	.uaword	.LASF88
	.byte	0x1
	.uahalf	0xb7b
	.uaword	0x233
	.uleb128 0x3a
	.uaword	.LASF82
	.byte	0x1
	.uahalf	0xb7c
	.uaword	0x233
	.uaword	.LLST320
	.uleb128 0x22
	.uaword	.LASF72
	.byte	0x1
	.uahalf	0xb7d
	.uaword	0x5bd
	.uleb128 0x30
	.uaword	0x10cb4
	.uaword	.LBB800
	.uaword	.LBE800
	.byte	0x1
	.uahalf	0xb83
	.uaword	0x1374b
	.uleb128 0x27
	.uaword	0x10cd4
	.uaword	.LLST321
	.uleb128 0x48
	.uaword	0x10544
	.uaword	.LBB802
	.uaword	.LBE802
	.byte	0x1
	.uahalf	0x11be
	.uleb128 0x3b
	.uaword	0x1056d
	.byte	0xb
	.uleb128 0x3b
	.uaword	0x10563
	.byte	0x5
	.uleb128 0x27
	.uaword	0x10559
	.uaword	.LLST322
	.uleb128 0x31
	.uaword	.LBB803
	.uaword	.LBE803
	.uleb128 0x29
	.uaword	0x10577
	.byte	0x1
	.byte	0x53
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0x10584
	.uaword	.LBB804
	.uaword	.Ldebug_ranges0+0x6c8
	.byte	0x1
	.uahalf	0xb94
	.uaword	0x13770
	.uleb128 0x27
	.uaword	0x105b8
	.uaword	.LLST323
	.uleb128 0x28
	.uaword	0x105ac
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x30
	.uaword	0x10ce1
	.uaword	.LBB807
	.uaword	.LBE807
	.byte	0x1
	.uahalf	0xb85
	.uaword	0x1378e
	.uleb128 0x27
	.uaword	0x10d05
	.uaword	.LLST324
	.byte	0
	.uleb128 0x30
	.uaword	0x10d12
	.uaword	.LBB810
	.uaword	.LBE810
	.byte	0x1
	.uahalf	0xb97
	.uaword	0x137c5
	.uleb128 0x40
	.uaword	0x10d3f
	.uleb128 0x28
	.uaword	0x10d33
	.byte	0x1
	.byte	0x5f
	.uleb128 0x31
	.uaword	.LBB811
	.uaword	.LBE811
	.uleb128 0x29
	.uaword	0x10d4c
	.byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.byte	0
	.byte	0
	.uleb128 0x34
	.uaword	.LVL542
	.uaword	0x1502d
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.string	"Adc_DisableGroupNotification"
	.byte	0x1
	.uahalf	0xbb9
	.byte	0x1
	.uaword	.LFB29
	.uaword	.LFE29
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1391f
	.uleb128 0x37
	.uaword	.LASF86
	.byte	0x1
	.uahalf	0xbb9
	.uaword	0x1061b
	.uaword	.LLST325
	.uleb128 0x22
	.uaword	.LASF55
	.byte	0x1
	.uahalf	0xbbb
	.uaword	0x105c5
	.uleb128 0x22
	.uaword	.LASF88
	.byte	0x1
	.uahalf	0xbbc
	.uaword	0x233
	.uleb128 0x3a
	.uaword	.LASF82
	.byte	0x1
	.uahalf	0xbbc
	.uaword	0x233
	.uaword	.LLST326
	.uleb128 0x22
	.uaword	.LASF72
	.byte	0x1
	.uahalf	0xbbd
	.uaword	0x5bd
	.uleb128 0x30
	.uaword	0x10cb4
	.uaword	.LBB812
	.uaword	.LBE812
	.byte	0x1
	.uahalf	0xbc3
	.uaword	0x1389b
	.uleb128 0x27
	.uaword	0x10cd4
	.uaword	.LLST327
	.uleb128 0x48
	.uaword	0x10544
	.uaword	.LBB814
	.uaword	.LBE814
	.byte	0x1
	.uahalf	0x11be
	.uleb128 0x3b
	.uaword	0x1056d
	.byte	0xb
	.uleb128 0x3b
	.uaword	0x10563
	.byte	0x5
	.uleb128 0x27
	.uaword	0x10559
	.uaword	.LLST328
	.uleb128 0x31
	.uaword	.LBB815
	.uaword	.LBE815
	.uleb128 0x29
	.uaword	0x10577
	.byte	0x1
	.byte	0x53
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0x10584
	.uaword	.LBB816
	.uaword	.Ldebug_ranges0+0x6e0
	.byte	0x1
	.uahalf	0xbd4
	.uaword	0x138c0
	.uleb128 0x27
	.uaword	0x105b8
	.uaword	.LLST329
	.uleb128 0x28
	.uaword	0x105ac
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x30
	.uaword	0x10ce1
	.uaword	.LBB819
	.uaword	.LBE819
	.byte	0x1
	.uahalf	0xbc5
	.uaword	0x138de
	.uleb128 0x27
	.uaword	0x10d05
	.uaword	.LLST330
	.byte	0
	.uleb128 0x30
	.uaword	0x10c1d
	.uaword	.LBB822
	.uaword	.LBE822
	.byte	0x1
	.uahalf	0xbd7
	.uaword	0x13915
	.uleb128 0x40
	.uaword	0x10c4a
	.uleb128 0x28
	.uaword	0x10c3e
	.byte	0x1
	.byte	0x5f
	.uleb128 0x31
	.uaword	.LBB823
	.uaword	.LBE823
	.uleb128 0x29
	.uaword	0x10c57
	.byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.byte	0
	.byte	0
	.uleb128 0x34
	.uaword	.LVL549
	.uaword	0x1502d
	.byte	0
	.uleb128 0x47
	.byte	0x1
	.string	"Adc_GetGroupStatus"
	.byte	0x1
	.uahalf	0xbf7
	.byte	0x1
	.uaword	0x664
	.uaword	.LFB30
	.uaword	.LFE30
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x13b6b
	.uleb128 0x37
	.uaword	.LASF86
	.byte	0x1
	.uahalf	0xbf7
	.uaword	0x1061b
	.uaword	.LLST331
	.uleb128 0x22
	.uaword	.LASF55
	.byte	0x1
	.uahalf	0xbf9
	.uaword	0x10610
	.uleb128 0x22
	.uaword	.LASF88
	.byte	0x1
	.uahalf	0xbfa
	.uaword	0x233
	.uleb128 0x22
	.uaword	.LASF91
	.byte	0x1
	.uahalf	0xbfa
	.uaword	0x233
	.uleb128 0x22
	.uaword	.LASF89
	.byte	0x1
	.uahalf	0xbfa
	.uaword	0x233
	.uleb128 0x22
	.uaword	.LASF80
	.byte	0x1
	.uahalf	0xbfa
	.uaword	0x233
	.uleb128 0x3a
	.uaword	.LASF82
	.byte	0x1
	.uahalf	0xbfa
	.uaword	0x233
	.uaword	.LLST332
	.uleb128 0x22
	.uaword	.LASF72
	.byte	0x1
	.uahalf	0xbfb
	.uaword	0x5bd
	.uleb128 0x38
	.uaword	.LASF71
	.byte	0x1
	.uahalf	0xbfc
	.uaword	0x664
	.byte	0x1
	.byte	0x52
	.uleb128 0x30
	.uaword	0x10cb4
	.uaword	.LBB824
	.uaword	.LBE824
	.byte	0x1
	.uahalf	0xc02
	.uaword	0x13a19
	.uleb128 0x27
	.uaword	0x10cd4
	.uaword	.LLST333
	.uleb128 0x48
	.uaword	0x10544
	.uaword	.LBB826
	.uaword	.LBE826
	.byte	0x1
	.uahalf	0x11be
	.uleb128 0x3b
	.uaword	0x1056d
	.byte	0xb
	.uleb128 0x3b
	.uaword	0x10563
	.byte	0x5
	.uleb128 0x27
	.uaword	0x10559
	.uaword	.LLST334
	.uleb128 0x31
	.uaword	.LBB827
	.uaword	.LBE827
	.uleb128 0x2a
	.uaword	0x10577
	.uaword	.LLST335
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.uaword	0x10584
	.uaword	.LBB828
	.uaword	.LBE828
	.byte	0x1
	.uahalf	0xc18
	.uaword	0x13a40
	.uleb128 0x27
	.uaword	0x105b8
	.uaword	.LLST336
	.uleb128 0x27
	.uaword	0x105ac
	.uaword	.LLST335
	.byte	0
	.uleb128 0x30
	.uaword	0x10661
	.uaword	.LBB830
	.uaword	.LBE830
	.byte	0x1
	.uahalf	0xc22
	.uaword	0x13a9d
	.uleb128 0x40
	.uaword	0x10688
	.uleb128 0x27
	.uaword	0x10694
	.uaword	.LLST338
	.uleb128 0x48
	.uaword	0x10544
	.uaword	.LBB832
	.uaword	.LBE832
	.byte	0x1
	.uahalf	0x142c
	.uleb128 0x3b
	.uaword	0x1056d
	.byte	0x1
	.uleb128 0x27
	.uaword	0x10563
	.uaword	.LLST339
	.uleb128 0x27
	.uaword	0x10559
	.uaword	.LLST340
	.uleb128 0x31
	.uaword	.LBB833
	.uaword	.LBE833
	.uleb128 0x29
	.uaword	0x10577
	.byte	0x1
	.byte	0x58
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.uaword	0x10620
	.uaword	.LBB834
	.uaword	.LBE834
	.byte	0x1
	.uahalf	0xc25
	.uaword	0x13af6
	.uleb128 0x40
	.uaword	0x10648
	.uleb128 0x40
	.uaword	0x10654
	.uleb128 0x48
	.uaword	0x10544
	.uaword	.LBB835
	.uaword	.LBE835
	.byte	0x1
	.uahalf	0x1409
	.uleb128 0x3b
	.uaword	0x1056d
	.byte	0x1
	.uleb128 0x27
	.uaword	0x10563
	.uaword	.LLST341
	.uleb128 0x27
	.uaword	0x10559
	.uaword	.LLST342
	.uleb128 0x31
	.uaword	.LBB836
	.uaword	.LBE836
	.uleb128 0x29
	.uaword	0x10577
	.byte	0x1
	.byte	0x59
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.uaword	0x105d0
	.uaword	.LBB837
	.uaword	.LBE837
	.byte	0x1
	.uahalf	0xc28
	.uaword	0x13b4f
	.uleb128 0x40
	.uaword	0x105f2
	.uleb128 0x40
	.uaword	0x105fe
	.uleb128 0x48
	.uaword	0x10544
	.uaword	.LBB838
	.uaword	.LBE838
	.byte	0x1
	.uahalf	0x13e5
	.uleb128 0x3b
	.uaword	0x1056d
	.byte	0x1
	.uleb128 0x27
	.uaword	0x10563
	.uaword	.LLST343
	.uleb128 0x27
	.uaword	0x10559
	.uaword	.LLST344
	.uleb128 0x31
	.uaword	.LBB839
	.uaword	.LBE839
	.uleb128 0x29
	.uaword	0x10577
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
	.uaword	.LVL556
	.uaword	0x1502d
	.uleb128 0x34
	.uaword	.LVL560
	.uaword	0x15148
	.uleb128 0x34
	.uaword	.LVL566
	.uaword	0x15168
	.byte	0
	.uleb128 0x47
	.byte	0x1
	.string	"Adc_GetStreamLastPointer"
	.byte	0x1
	.uahalf	0xc70
	.byte	0x1
	.uaword	0x609
	.uaword	.LFB31
	.uaword	.LFE31
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x13e96
	.uleb128 0x37
	.uaword	.LASF86
	.byte	0x1
	.uahalf	0xc71
	.uaword	0x1061b
	.uaword	.LLST345
	.uleb128 0x43
	.string	"PtrToSamplePtr"
	.byte	0x1
	.uahalf	0xc71
	.uaword	0x13e96
	.uaword	.LLST346
	.uleb128 0x38
	.uaword	.LASF69
	.byte	0x1
	.uahalf	0xc73
	.uaword	0xce5
	.byte	0x9
	.byte	0x78
	.sleb128 0
	.byte	0x8
	.byte	0x3c
	.byte	0x1e
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uleb128 0x22
	.uaword	.LASF55
	.byte	0x1
	.uahalf	0xc74
	.uaword	0x105c5
	.uleb128 0x39
	.string	"lNoOfValidConv"
	.byte	0x1
	.uahalf	0xc75
	.uaword	0x609
	.uaword	.LLST347
	.uleb128 0x22
	.uaword	.LASF88
	.byte	0x1
	.uahalf	0xc76
	.uaword	0x233
	.uleb128 0x22
	.uaword	.LASF80
	.byte	0x1
	.uahalf	0xc76
	.uaword	0x233
	.uleb128 0x22
	.uaword	.LASF91
	.byte	0x1
	.uahalf	0xc76
	.uaword	0x233
	.uleb128 0x22
	.uaword	.LASF89
	.byte	0x1
	.uahalf	0xc76
	.uaword	0x233
	.uleb128 0x3a
	.uaword	.LASF82
	.byte	0x1
	.uahalf	0xc76
	.uaword	0x233
	.uaword	.LLST348
	.uleb128 0x22
	.uaword	.LASF72
	.byte	0x1
	.uahalf	0xc77
	.uaword	0x5bd
	.uleb128 0x30
	.uaword	0x10cb4
	.uaword	.LBB840
	.uaword	.LBE840
	.byte	0x1
	.uahalf	0xc7d
	.uaword	0x13ca9
	.uleb128 0x27
	.uaword	0x10cd4
	.uaword	.LLST349
	.uleb128 0x48
	.uaword	0x10544
	.uaword	.LBB842
	.uaword	.LBE842
	.byte	0x1
	.uahalf	0x11be
	.uleb128 0x3b
	.uaword	0x1056d
	.byte	0xb
	.uleb128 0x3b
	.uaword	0x10563
	.byte	0x5
	.uleb128 0x27
	.uaword	0x10559
	.uaword	.LLST350
	.uleb128 0x31
	.uaword	.LBB843
	.uaword	.LBE843
	.uleb128 0x2a
	.uaword	0x10577
	.uaword	.LLST351
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0x10584
	.uaword	.LBB844
	.uaword	.Ldebug_ranges0+0x6f8
	.byte	0x1
	.uahalf	0xcb0
	.uaword	0x13cd0
	.uleb128 0x27
	.uaword	0x105b8
	.uaword	.LLST352
	.uleb128 0x27
	.uaword	0x105ac
	.uaword	.LLST353
	.byte	0
	.uleb128 0x30
	.uaword	0x10ce1
	.uaword	.LBB854
	.uaword	.LBE854
	.byte	0x1
	.uahalf	0xc7f
	.uaword	0x13cee
	.uleb128 0x27
	.uaword	0x10d05
	.uaword	.LLST354
	.byte	0
	.uleb128 0x30
	.uaword	0x10661
	.uaword	.LBB858
	.uaword	.LBE858
	.byte	0x1
	.uahalf	0xcc2
	.uaword	0x13d47
	.uleb128 0x40
	.uaword	0x10688
	.uleb128 0x28
	.uaword	0x10694
	.byte	0x1
	.byte	0x58
	.uleb128 0x48
	.uaword	0x10544
	.uaword	.LBB859
	.uaword	.LBE859
	.byte	0x1
	.uahalf	0x142c
	.uleb128 0x3b
	.uaword	0x1056d
	.byte	0x1
	.uleb128 0x28
	.uaword	0x10563
	.byte	0x1
	.byte	0x58
	.uleb128 0x27
	.uaword	0x10559
	.uaword	.LLST355
	.uleb128 0x31
	.uaword	.LBB860
	.uaword	.LBE860
	.uleb128 0x29
	.uaword	0x10577
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.uaword	0x10620
	.uaword	.LBB861
	.uaword	.LBE861
	.byte	0x1
	.uahalf	0xcc3
	.uaword	0x13da2
	.uleb128 0x40
	.uaword	0x10648
	.uleb128 0x28
	.uaword	0x10654
	.byte	0x1
	.byte	0x58
	.uleb128 0x48
	.uaword	0x10544
	.uaword	.LBB862
	.uaword	.LBE862
	.byte	0x1
	.uahalf	0x1409
	.uleb128 0x3b
	.uaword	0x1056d
	.byte	0x1
	.uleb128 0x28
	.uaword	0x10563
	.byte	0x1
	.byte	0x58
	.uleb128 0x27
	.uaword	0x10559
	.uaword	.LLST356
	.uleb128 0x31
	.uaword	.LBB863
	.uaword	.LBE863
	.uleb128 0x2a
	.uaword	0x10577
	.uaword	.LLST357
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.uaword	0x105d0
	.uaword	.LBB864
	.uaword	.LBE864
	.byte	0x1
	.uahalf	0xcc4
	.uaword	0x13dfd
	.uleb128 0x40
	.uaword	0x105f2
	.uleb128 0x28
	.uaword	0x105fe
	.byte	0x1
	.byte	0x58
	.uleb128 0x48
	.uaword	0x10544
	.uaword	.LBB865
	.uaword	.LBE865
	.byte	0x1
	.uahalf	0x13e5
	.uleb128 0x3b
	.uaword	0x1056d
	.byte	0x1
	.uleb128 0x28
	.uaword	0x10563
	.byte	0x1
	.byte	0x58
	.uleb128 0x27
	.uaword	0x10559
	.uaword	.LLST358
	.uleb128 0x31
	.uaword	.LBB866
	.uaword	.LBE866
	.uleb128 0x2a
	.uaword	0x10577
	.uaword	.LLST359
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.uaword	0x10b82
	.uaword	.LBB867
	.uaword	.LBE867
	.byte	0x1
	.uahalf	0xcda
	.uaword	0x13e37
	.uleb128 0x27
	.uaword	0x10bb2
	.uaword	.LLST360
	.uleb128 0x27
	.uaword	0x10ba6
	.uaword	.LLST361
	.uleb128 0x31
	.uaword	.LBB868
	.uaword	.LBE868
	.uleb128 0x2a
	.uaword	0x10bbf
	.uaword	.LLST362
	.byte	0
	.byte	0
	.uleb128 0x30
	.uaword	0x10bcd
	.uaword	.LBB869
	.uaword	.LBE869
	.byte	0x1
	.uahalf	0xcdd
	.uaword	0x13e71
	.uleb128 0x27
	.uaword	0x10c02
	.uaword	.LLST363
	.uleb128 0x27
	.uaword	0x10bf6
	.uaword	.LLST364
	.uleb128 0x31
	.uaword	.LBB870
	.uaword	.LBE870
	.uleb128 0x2a
	.uaword	0x10c0f
	.uaword	.LLST365
	.byte	0
	.byte	0
	.uleb128 0x34
	.uaword	.LVL569
	.uaword	0x1502d
	.uleb128 0x34
	.uaword	.LVL573
	.uaword	0x15148
	.uleb128 0x34
	.uaword	.LVL586
	.uaword	0x15168
	.uleb128 0x34
	.uaword	.LVL590
	.uaword	0x15168
	.byte	0
	.uleb128 0xe
	.uaword	0x13e9b
	.uleb128 0x9
	.byte	0x4
	.uaword	0x104f3
	.uleb128 0x47
	.byte	0x1
	.string	"Adc_TriggerStartupCal"
	.byte	0x1
	.uahalf	0xf29
	.byte	0x1
	.uaword	0x29f
	.uaword	.LFB32
	.uaword	.LFE32
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x13f24
	.uleb128 0x3d
	.uaword	.LASF71
	.byte	0x1
	.uahalf	0xf2b
	.uaword	0x29f
	.byte	0
	.uleb128 0x4b
	.uaword	.LBB871
	.uaword	.LBE871
	.uaword	0x13eff
	.uleb128 0x3f
	.string	"tmp"
	.byte	0x1
	.uahalf	0xf4a
	.uaword	0x222
	.byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.byte	0
	.uleb128 0x48
	.uaword	0x10d5a
	.uaword	.LBB872
	.uaword	.LBE872
	.byte	0x1
	.uahalf	0xf4e
	.uleb128 0x31
	.uaword	.LBB873
	.uaword	.LBE873
	.uleb128 0x2a
	.uaword	0x10d84
	.uaword	.LLST366
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x47
	.byte	0x1
	.string	"Adc_GetStartupCalStatus"
	.byte	0x1
	.uahalf	0xf7a
	.byte	0x1
	.uaword	0x67a
	.uaword	.LFB33
	.uaword	.LFE33
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x13fde
	.uleb128 0x3a
	.uaword	.LASF85
	.byte	0x1
	.uahalf	0xf7c
	.uaword	0x233
	.uaword	.LLST367
	.uleb128 0x3a
	.uaword	.LASF82
	.byte	0x1
	.uahalf	0xf7d
	.uaword	0x233
	.uaword	.LLST368
	.uleb128 0x3a
	.uaword	.LASF71
	.byte	0x1
	.uahalf	0xf80
	.uaword	0x67a
	.uaword	.LLST369
	.uleb128 0x30
	.uaword	0x10d92
	.uaword	.LBB874
	.uaword	.LBE874
	.byte	0x1
	.uahalf	0xf9a
	.uaword	0x13fd4
	.uleb128 0x48
	.uaword	0x10544
	.uaword	.LBB876
	.uaword	.LBE876
	.byte	0x1
	.uahalf	0x1474
	.uleb128 0x3b
	.uaword	0x1056d
	.byte	0x1
	.uleb128 0x3b
	.uaword	0x10563
	.byte	0
	.uleb128 0x28
	.uaword	0x10559
	.byte	0x5
	.byte	0x3
	.uaword	Adc_StartupCalStatus
	.uleb128 0x31
	.uaword	.LBB877
	.uaword	.LBE877
	.uleb128 0x29
	.uaword	0x10577
	.byte	0x1
	.byte	0x53
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
	.uaword	.LVL597
	.uaword	0x1502d
	.byte	0
	.uleb128 0x21
	.string	"Adc_lRSEventHandler"
	.byte	0x1
	.uahalf	0x2725
	.byte	0x1
	.byte	0x1
	.uaword	0x1404e
	.uleb128 0x20
	.uaword	.LASF51
	.byte	0x1
	.uahalf	0x2725
	.uaword	0x105cb
	.uleb128 0x1e
	.string	"RequestSrc"
	.byte	0x1
	.uahalf	0x2725
	.uaword	0x10839
	.uleb128 0x20
	.uaword	.LASF52
	.byte	0x1
	.uahalf	0x2726
	.uaword	0x105cb
	.uleb128 0x22
	.uaword	.LASF55
	.byte	0x1
	.uahalf	0x272a
	.uaword	0x10610
	.uleb128 0x22
	.uaword	.LASF72
	.byte	0x1
	.uahalf	0x272e
	.uaword	0x5bd
	.uleb128 0x23
	.uleb128 0x22
	.uaword	.LASF69
	.byte	0x1
	.uahalf	0x2752
	.uaword	0xce5
	.byte	0
	.byte	0
	.uleb128 0x21
	.string	"Adc_lUpdateResBuffer"
	.byte	0x1
	.uahalf	0x27d5
	.byte	0x1
	.byte	0x1
	.uaword	0x1411f
	.uleb128 0x20
	.uaword	.LASF51
	.byte	0x1
	.uahalf	0x27d5
	.uaword	0x105cb
	.uleb128 0x20
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0x27d6
	.uaword	0x1061b
	.uleb128 0x20
	.uaword	.LASF52
	.byte	0x1
	.uahalf	0x27d7
	.uaword	0x105cb
	.uleb128 0x22
	.uaword	.LASF57
	.byte	0x1
	.uahalf	0x27da
	.uaword	0x116a4
	.uleb128 0x22
	.uaword	.LASF55
	.byte	0x1
	.uahalf	0x27db
	.uaword	0x105c5
	.uleb128 0x22
	.uaword	.LASF69
	.byte	0x1
	.uahalf	0x27dc
	.uaword	0xce5
	.uleb128 0x1f
	.string	"lCurrentBufferPtr"
	.byte	0x1
	.uahalf	0x27dd
	.uaword	0x104f3
	.uleb128 0x22
	.uaword	.LASF90
	.byte	0x1
	.uahalf	0x27de
	.uaword	0x609
	.uleb128 0x1f
	.string	"lCurrentBufLocation"
	.byte	0x1
	.uahalf	0x27de
	.uaword	0x609
	.uleb128 0x22
	.uaword	.LASF77
	.byte	0x1
	.uahalf	0x27df
	.uaword	0x628
	.uleb128 0x22
	.uaword	.LASF78
	.byte	0x1
	.uahalf	0x27e0
	.uaword	0x1cc
	.uleb128 0x1f
	.string	"lCount"
	.byte	0x1
	.uahalf	0x27e0
	.uaword	0x1cc
	.byte	0
	.uleb128 0x21
	.string	"Adc_lGrpSequenceHandler"
	.byte	0x1
	.uahalf	0x2940
	.byte	0x1
	.byte	0x1
	.uaword	0x14196
	.uleb128 0x20
	.uaword	.LASF51
	.byte	0x1
	.uahalf	0x2940
	.uaword	0x105cb
	.uleb128 0x20
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0x2941
	.uaword	0x1061b
	.uleb128 0x20
	.uaword	.LASF59
	.byte	0x1
	.uahalf	0x2941
	.uaword	0x10839
	.uleb128 0x20
	.uaword	.LASF52
	.byte	0x1
	.uahalf	0x2941
	.uaword	0x105cb
	.uleb128 0x22
	.uaword	.LASF55
	.byte	0x1
	.uahalf	0x2943
	.uaword	0x105c5
	.uleb128 0x22
	.uaword	.LASF69
	.byte	0x1
	.uahalf	0x2944
	.uaword	0xce5
	.uleb128 0x22
	.uaword	.LASF91
	.byte	0x1
	.uahalf	0x2945
	.uaword	0x233
	.byte	0
	.uleb128 0x4c
	.byte	0x1
	.string	"Adc_RS0EventInterruptHandler"
	.byte	0x1
	.uahalf	0xfdb
	.byte	0x1
	.uaword	.LFB34
	.uaword	.LFE34
	.uaword	.LLST370
	.byte	0x1
	.uaword	0x1455c
	.uleb128 0x37
	.uaword	.LASF51
	.byte	0x1
	.uahalf	0xfdb
	.uaword	0x105cb
	.uaword	.LLST371
	.uleb128 0x3a
	.uaword	.LASF82
	.byte	0x1
	.uahalf	0xfdd
	.uaword	0x233
	.uaword	.LLST372
	.uleb128 0x39
	.string	"StartT"
	.byte	0x1
	.uahalf	0xfde
	.uaword	0x233
	.uaword	.LLST373
	.uleb128 0x39
	.string	"EndT"
	.byte	0x1
	.uahalf	0xfdf
	.uaword	0x233
	.uaword	.LLST374
	.uleb128 0x2b
	.uaword	0x13fde
	.uaword	.LBB906
	.uaword	.Ldebug_ranges0+0x730
	.byte	0x1
	.uahalf	0x1006
	.uaword	0x14552
	.uleb128 0x27
	.uaword	0x1401b
	.uaword	.LLST375
	.uleb128 0x3b
	.uaword	0x14008
	.byte	0
	.uleb128 0x28
	.uaword	0x13ffc
	.byte	0x1
	.byte	0x58
	.uleb128 0x2c
	.uaword	.Ldebug_ranges0+0x730
	.uleb128 0x3e
	.uaword	0x14027
	.uleb128 0x2a
	.uaword	0x14033
	.uaword	.LLST376
	.uleb128 0x2b
	.uaword	0x10584
	.uaword	.LBB908
	.uaword	.Ldebug_ranges0+0x748
	.byte	0x1
	.uahalf	0x2731
	.uaword	0x14270
	.uleb128 0x27
	.uaword	0x105b8
	.uaword	.LLST375
	.uleb128 0x28
	.uaword	0x105ac
	.byte	0x1
	.byte	0x58
	.byte	0
	.uleb128 0x31
	.uaword	.LBB912
	.uaword	.LBE912
	.uleb128 0x2a
	.uaword	0x14040
	.uaword	.LLST378
	.uleb128 0x2b
	.uaword	0x1404e
	.uaword	.LBB913
	.uaword	.Ldebug_ranges0+0x760
	.byte	0x1
	.uahalf	0x2741
	.uaword	0x14371
	.uleb128 0x27
	.uaword	0x14085
	.uaword	.LLST379
	.uleb128 0x27
	.uaword	0x14079
	.uaword	.LLST376
	.uleb128 0x28
	.uaword	0x1406d
	.byte	0x1
	.byte	0x58
	.uleb128 0x2c
	.uaword	.Ldebug_ranges0+0x760
	.uleb128 0x2a
	.uaword	0x14091
	.uaword	.LLST381
	.uleb128 0x3e
	.uaword	0x1409d
	.uleb128 0x2a
	.uaword	0x140a9
	.uaword	.LLST382
	.uleb128 0x2a
	.uaword	0x140b5
	.uaword	.LLST383
	.uleb128 0x2a
	.uaword	0x140cf
	.uaword	.LLST384
	.uleb128 0x2a
	.uaword	0x140db
	.uaword	.LLST385
	.uleb128 0x2a
	.uaword	0x140f7
	.uaword	.LLST386
	.uleb128 0x2a
	.uaword	0x14103
	.uaword	.LLST387
	.uleb128 0x2a
	.uaword	0x1410f
	.uaword	.LLST388
	.uleb128 0x30
	.uaword	0x1083e
	.uaword	.LBB915
	.uaword	.LBE915
	.byte	0x1
	.uahalf	0x284e
	.uaword	0x14339
	.uleb128 0x27
	.uaword	0x1086e
	.uaword	.LLST389
	.uleb128 0x28
	.uaword	0x10862
	.byte	0x1
	.byte	0x6c
	.uleb128 0x31
	.uaword	.LBB916
	.uaword	.LBE916
	.uleb128 0x2a
	.uaword	0x1087b
	.uaword	.LLST390
	.byte	0
	.byte	0
	.uleb128 0x48
	.uaword	0x10889
	.uaword	.LBB917
	.uaword	.LBE917
	.byte	0x1
	.uahalf	0x2858
	.uleb128 0x27
	.uaword	0x108be
	.uaword	.LLST391
	.uleb128 0x27
	.uaword	0x108b2
	.uaword	.LLST392
	.uleb128 0x31
	.uaword	.LBB918
	.uaword	.LBE918
	.uleb128 0x2a
	.uaword	0x108cb
	.uaword	.LLST393
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0x1411f
	.uaword	.LBB921
	.uaword	.Ldebug_ranges0+0x778
	.byte	0x1
	.uahalf	0x2744
	.uaword	0x144e5
	.uleb128 0x27
	.uaword	0x14165
	.uaword	.LLST394
	.uleb128 0x3b
	.uaword	0x14159
	.byte	0
	.uleb128 0x27
	.uaword	0x1414d
	.uaword	.LLST395
	.uleb128 0x28
	.uaword	0x14141
	.byte	0x1
	.byte	0x58
	.uleb128 0x2c
	.uaword	.Ldebug_ranges0+0x778
	.uleb128 0x3e
	.uaword	0x14171
	.uleb128 0x29
	.uaword	0x1417d
	.byte	0x1
	.byte	0x6e
	.uleb128 0x3e
	.uaword	0x14189
	.uleb128 0x2b
	.uaword	0x10584
	.uaword	.LBB923
	.uaword	.Ldebug_ranges0+0x790
	.byte	0x1
	.uahalf	0x294b
	.uaword	0x143df
	.uleb128 0x27
	.uaword	0x105b8
	.uaword	.LLST396
	.uleb128 0x28
	.uaword	0x105ac
	.byte	0x1
	.byte	0x58
	.byte	0
	.uleb128 0x2b
	.uaword	0x10661
	.uaword	.LBB934
	.uaword	.Ldebug_ranges0+0x7c8
	.byte	0x1
	.uahalf	0x294e
	.uaword	0x1443a
	.uleb128 0x40
	.uaword	0x10688
	.uleb128 0x27
	.uaword	0x10694
	.uaword	.LLST397
	.uleb128 0x33
	.uaword	0x10544
	.uaword	.LBB935
	.uaword	.Ldebug_ranges0+0x7c8
	.byte	0x1
	.uahalf	0x142c
	.uleb128 0x3b
	.uaword	0x1056d
	.byte	0x1
	.uleb128 0x27
	.uaword	0x10563
	.uaword	.LLST397
	.uleb128 0x27
	.uaword	0x10559
	.uaword	.LLST399
	.uleb128 0x2c
	.uaword	.Ldebug_ranges0+0x7c8
	.uleb128 0x2a
	.uaword	0x10577
	.uaword	.LLST400
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.uaword	0x107ee
	.uaword	.LBB941
	.uaword	.LBE941
	.byte	0x1
	.uahalf	0x2973
	.uaword	0x1446a
	.uleb128 0x27
	.uaword	0x1081b
	.uaword	.LLST401
	.uleb128 0x27
	.uaword	0x10827
	.uaword	.LLST402
	.uleb128 0x27
	.uaword	0x1080f
	.uaword	.LLST403
	.byte	0
	.uleb128 0x30
	.uaword	0x10b33
	.uaword	.LBB943
	.uaword	.LBE943
	.byte	0x1
	.uahalf	0x29a3
	.uaword	0x144a4
	.uleb128 0x27
	.uaword	0x10b67
	.uaword	.LLST404
	.uleb128 0x27
	.uaword	0x10b5b
	.uaword	.LLST405
	.uleb128 0x31
	.uaword	.LBB944
	.uaword	.LBE944
	.uleb128 0x2a
	.uaword	0x10b74
	.uaword	.LLST406
	.byte	0
	.byte	0
	.uleb128 0x34
	.uaword	.LVL657
	.uaword	0x15148
	.uleb128 0x34
	.uaword	.LVL658
	.uaword	0x15168
	.uleb128 0x34
	.uaword	.LVL661
	.uaword	0x15148
	.uleb128 0x34
	.uaword	.LVL662
	.uaword	0x15168
	.uleb128 0x2f
	.uaword	.LVL666
	.uaword	0x11252
	.uleb128 0x2e
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x2e
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x2e
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.uaword	0x106a1
	.uaword	.LBB946
	.uaword	.LBE946
	.byte	0x1
	.uahalf	0x2755
	.uaword	0x14547
	.uleb128 0x40
	.uaword	0x106c8
	.uleb128 0x27
	.uaword	0x106d4
	.uaword	.LLST407
	.uleb128 0x48
	.uaword	0x10544
	.uaword	.LBB947
	.uaword	.LBE947
	.byte	0x1
	.uahalf	0x1452
	.uleb128 0x27
	.uaword	0x1056d
	.uaword	.LLST408
	.uleb128 0x27
	.uaword	0x10563
	.uaword	.LLST407
	.uleb128 0x27
	.uaword	0x10559
	.uaword	.LLST410
	.uleb128 0x31
	.uaword	.LBB948
	.uaword	.LBE948
	.uleb128 0x2a
	.uaword	0x10577
	.uaword	.LLST411
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4d
	.uaword	.LVL654
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
	.uaword	.LVL616
	.uaword	0x1502d
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.string	"Adc_RS1EventInterruptHandler"
	.byte	0x1
	.uahalf	0x1055
	.byte	0x1
	.uaword	.LFB35
	.uaword	.LFE35
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x148fe
	.uleb128 0x37
	.uaword	.LASF51
	.byte	0x1
	.uahalf	0x1055
	.uaword	0x105cb
	.uaword	.LLST412
	.uleb128 0x3a
	.uaword	.LASF82
	.byte	0x1
	.uahalf	0x1057
	.uaword	0x233
	.uaword	.LLST413
	.uleb128 0x2b
	.uaword	0x13fde
	.uaword	.LBB980
	.uaword	.Ldebug_ranges0+0x7e0
	.byte	0x1
	.uahalf	0x107a
	.uaword	0x148f4
	.uleb128 0x27
	.uaword	0x1401b
	.uaword	.LLST414
	.uleb128 0x3b
	.uaword	0x14008
	.byte	0x1
	.uleb128 0x28
	.uaword	0x13ffc
	.byte	0x1
	.byte	0x58
	.uleb128 0x2c
	.uaword	.Ldebug_ranges0+0x7e0
	.uleb128 0x3e
	.uaword	0x14027
	.uleb128 0x2a
	.uaword	0x14033
	.uaword	.LLST415
	.uleb128 0x2b
	.uaword	0x10584
	.uaword	.LBB982
	.uaword	.Ldebug_ranges0+0x800
	.byte	0x1
	.uahalf	0x2731
	.uaword	0x14611
	.uleb128 0x27
	.uaword	0x105b8
	.uaword	.LLST414
	.uleb128 0x28
	.uaword	0x105ac
	.byte	0x1
	.byte	0x58
	.byte	0
	.uleb128 0x31
	.uaword	.LBB988
	.uaword	.LBE988
	.uleb128 0x2a
	.uaword	0x14040
	.uaword	.LLST417
	.uleb128 0x2b
	.uaword	0x1404e
	.uaword	.LBB989
	.uaword	.Ldebug_ranges0+0x820
	.byte	0x1
	.uahalf	0x2741
	.uaword	0x14712
	.uleb128 0x27
	.uaword	0x14085
	.uaword	.LLST418
	.uleb128 0x27
	.uaword	0x14079
	.uaword	.LLST415
	.uleb128 0x28
	.uaword	0x1406d
	.byte	0x1
	.byte	0x58
	.uleb128 0x2c
	.uaword	.Ldebug_ranges0+0x820
	.uleb128 0x2a
	.uaword	0x14091
	.uaword	.LLST420
	.uleb128 0x3e
	.uaword	0x1409d
	.uleb128 0x2a
	.uaword	0x140a9
	.uaword	.LLST421
	.uleb128 0x2a
	.uaword	0x140b5
	.uaword	.LLST422
	.uleb128 0x2a
	.uaword	0x140cf
	.uaword	.LLST423
	.uleb128 0x2a
	.uaword	0x140db
	.uaword	.LLST424
	.uleb128 0x2a
	.uaword	0x140f7
	.uaword	.LLST425
	.uleb128 0x2a
	.uaword	0x14103
	.uaword	.LLST426
	.uleb128 0x2a
	.uaword	0x1410f
	.uaword	.LLST427
	.uleb128 0x30
	.uaword	0x1083e
	.uaword	.LBB991
	.uaword	.LBE991
	.byte	0x1
	.uahalf	0x284e
	.uaword	0x146da
	.uleb128 0x27
	.uaword	0x1086e
	.uaword	.LLST428
	.uleb128 0x28
	.uaword	0x10862
	.byte	0x1
	.byte	0x6c
	.uleb128 0x31
	.uaword	.LBB992
	.uaword	.LBE992
	.uleb128 0x2a
	.uaword	0x1087b
	.uaword	.LLST429
	.byte	0
	.byte	0
	.uleb128 0x48
	.uaword	0x10889
	.uaword	.LBB993
	.uaword	.LBE993
	.byte	0x1
	.uahalf	0x2858
	.uleb128 0x27
	.uaword	0x108be
	.uaword	.LLST430
	.uleb128 0x27
	.uaword	0x108b2
	.uaword	.LLST431
	.uleb128 0x31
	.uaword	.LBB994
	.uaword	.LBE994
	.uleb128 0x2a
	.uaword	0x108cb
	.uaword	.LLST432
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0x1411f
	.uaword	.LBB997
	.uaword	.Ldebug_ranges0+0x838
	.byte	0x1
	.uahalf	0x2744
	.uaword	0x14886
	.uleb128 0x27
	.uaword	0x14165
	.uaword	.LLST433
	.uleb128 0x3b
	.uaword	0x14159
	.byte	0x1
	.uleb128 0x27
	.uaword	0x1414d
	.uaword	.LLST434
	.uleb128 0x28
	.uaword	0x14141
	.byte	0x1
	.byte	0x58
	.uleb128 0x2c
	.uaword	.Ldebug_ranges0+0x838
	.uleb128 0x3e
	.uaword	0x14171
	.uleb128 0x29
	.uaword	0x1417d
	.byte	0x1
	.byte	0x6e
	.uleb128 0x3e
	.uaword	0x14189
	.uleb128 0x2b
	.uaword	0x10584
	.uaword	.LBB999
	.uaword	.Ldebug_ranges0+0x850
	.byte	0x1
	.uahalf	0x294b
	.uaword	0x14780
	.uleb128 0x28
	.uaword	0x105b8
	.byte	0x3
	.byte	0x7d
	.sleb128 -1
	.byte	0x9f
	.uleb128 0x28
	.uaword	0x105ac
	.byte	0x1
	.byte	0x58
	.byte	0
	.uleb128 0x2b
	.uaword	0x10661
	.uaword	.LBB1010
	.uaword	.Ldebug_ranges0+0x888
	.byte	0x1
	.uahalf	0x294e
	.uaword	0x147db
	.uleb128 0x40
	.uaword	0x10688
	.uleb128 0x27
	.uaword	0x10694
	.uaword	.LLST435
	.uleb128 0x33
	.uaword	0x10544
	.uaword	.LBB1011
	.uaword	.Ldebug_ranges0+0x888
	.byte	0x1
	.uahalf	0x142c
	.uleb128 0x3b
	.uaword	0x1056d
	.byte	0x1
	.uleb128 0x27
	.uaword	0x10563
	.uaword	.LLST435
	.uleb128 0x27
	.uaword	0x10559
	.uaword	.LLST437
	.uleb128 0x2c
	.uaword	.Ldebug_ranges0+0x888
	.uleb128 0x2a
	.uaword	0x10577
	.uaword	.LLST438
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.uaword	0x107ee
	.uaword	.LBB1017
	.uaword	.LBE1017
	.byte	0x1
	.uahalf	0x2973
	.uaword	0x1480b
	.uleb128 0x27
	.uaword	0x1081b
	.uaword	.LLST439
	.uleb128 0x27
	.uaword	0x10827
	.uaword	.LLST440
	.uleb128 0x27
	.uaword	0x1080f
	.uaword	.LLST441
	.byte	0
	.uleb128 0x30
	.uaword	0x10b33
	.uaword	.LBB1019
	.uaword	.LBE1019
	.byte	0x1
	.uahalf	0x29a3
	.uaword	0x14845
	.uleb128 0x27
	.uaword	0x10b67
	.uaword	.LLST442
	.uleb128 0x27
	.uaword	0x10b5b
	.uaword	.LLST443
	.uleb128 0x31
	.uaword	.LBB1020
	.uaword	.LBE1020
	.uleb128 0x2a
	.uaword	0x10b74
	.uaword	.LLST444
	.byte	0
	.byte	0
	.uleb128 0x34
	.uaword	.LVL704
	.uaword	0x15148
	.uleb128 0x34
	.uaword	.LVL705
	.uaword	0x15168
	.uleb128 0x34
	.uaword	.LVL708
	.uaword	0x15148
	.uleb128 0x34
	.uaword	.LVL709
	.uaword	0x15168
	.uleb128 0x2f
	.uaword	.LVL712
	.uaword	0x11252
	.uleb128 0x2e
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0x2e
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x2e
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.uaword	0x106a1
	.uaword	.LBB1022
	.uaword	.LBE1022
	.byte	0x1
	.uahalf	0x2755
	.uaword	0x148e8
	.uleb128 0x40
	.uaword	0x106c8
	.uleb128 0x27
	.uaword	0x106d4
	.uaword	.LLST445
	.uleb128 0x48
	.uaword	0x10544
	.uaword	.LBB1023
	.uaword	.LBE1023
	.byte	0x1
	.uahalf	0x1452
	.uleb128 0x27
	.uaword	0x1056d
	.uaword	.LLST446
	.uleb128 0x27
	.uaword	0x10563
	.uaword	.LLST445
	.uleb128 0x27
	.uaword	0x10559
	.uaword	.LLST448
	.uleb128 0x31
	.uaword	.LBB1024
	.uaword	.LBE1024
	.uleb128 0x2a
	.uaword	0x10577
	.uaword	.LLST449
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4e
	.uaword	.LVL702
	.byte	0x1
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
	.uaword	.LVL668
	.uaword	0x1502d
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.string	"Adc_RS2EventInterruptHandler"
	.byte	0x1
	.uahalf	0x10c2
	.byte	0x1
	.uaword	.LFB36
	.uaword	.LFE36
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x14ca0
	.uleb128 0x37
	.uaword	.LASF51
	.byte	0x1
	.uahalf	0x10c2
	.uaword	0x105cb
	.uaword	.LLST450
	.uleb128 0x3a
	.uaword	.LASF82
	.byte	0x1
	.uahalf	0x10c4
	.uaword	0x233
	.uaword	.LLST451
	.uleb128 0x2b
	.uaword	0x13fde
	.uaword	.LBB1058
	.uaword	.Ldebug_ranges0+0x8a0
	.byte	0x1
	.uahalf	0x10e7
	.uaword	0x14c96
	.uleb128 0x27
	.uaword	0x1401b
	.uaword	.LLST452
	.uleb128 0x3b
	.uaword	0x14008
	.byte	0x2
	.uleb128 0x28
	.uaword	0x13ffc
	.byte	0x1
	.byte	0x58
	.uleb128 0x2c
	.uaword	.Ldebug_ranges0+0x8a0
	.uleb128 0x3e
	.uaword	0x14027
	.uleb128 0x2a
	.uaword	0x14033
	.uaword	.LLST453
	.uleb128 0x2b
	.uaword	0x10584
	.uaword	.LBB1060
	.uaword	.Ldebug_ranges0+0x8c0
	.byte	0x1
	.uahalf	0x2731
	.uaword	0x149b3
	.uleb128 0x27
	.uaword	0x105b8
	.uaword	.LLST452
	.uleb128 0x28
	.uaword	0x105ac
	.byte	0x1
	.byte	0x58
	.byte	0
	.uleb128 0x31
	.uaword	.LBB1066
	.uaword	.LBE1066
	.uleb128 0x2a
	.uaword	0x14040
	.uaword	.LLST455
	.uleb128 0x2b
	.uaword	0x1404e
	.uaword	.LBB1067
	.uaword	.Ldebug_ranges0+0x8e0
	.byte	0x1
	.uahalf	0x2741
	.uaword	0x14ab4
	.uleb128 0x27
	.uaword	0x14085
	.uaword	.LLST456
	.uleb128 0x27
	.uaword	0x14079
	.uaword	.LLST453
	.uleb128 0x28
	.uaword	0x1406d
	.byte	0x1
	.byte	0x58
	.uleb128 0x2c
	.uaword	.Ldebug_ranges0+0x8e0
	.uleb128 0x2a
	.uaword	0x14091
	.uaword	.LLST458
	.uleb128 0x3e
	.uaword	0x1409d
	.uleb128 0x2a
	.uaword	0x140a9
	.uaword	.LLST459
	.uleb128 0x2a
	.uaword	0x140b5
	.uaword	.LLST460
	.uleb128 0x2a
	.uaword	0x140cf
	.uaword	.LLST461
	.uleb128 0x2a
	.uaword	0x140db
	.uaword	.LLST462
	.uleb128 0x2a
	.uaword	0x140f7
	.uaword	.LLST463
	.uleb128 0x2a
	.uaword	0x14103
	.uaword	.LLST464
	.uleb128 0x2a
	.uaword	0x1410f
	.uaword	.LLST465
	.uleb128 0x30
	.uaword	0x1083e
	.uaword	.LBB1069
	.uaword	.LBE1069
	.byte	0x1
	.uahalf	0x284e
	.uaword	0x14a7c
	.uleb128 0x27
	.uaword	0x1086e
	.uaword	.LLST466
	.uleb128 0x28
	.uaword	0x10862
	.byte	0x1
	.byte	0x6c
	.uleb128 0x31
	.uaword	.LBB1070
	.uaword	.LBE1070
	.uleb128 0x2a
	.uaword	0x1087b
	.uaword	.LLST467
	.byte	0
	.byte	0
	.uleb128 0x48
	.uaword	0x10889
	.uaword	.LBB1071
	.uaword	.LBE1071
	.byte	0x1
	.uahalf	0x2858
	.uleb128 0x27
	.uaword	0x108be
	.uaword	.LLST468
	.uleb128 0x27
	.uaword	0x108b2
	.uaword	.LLST469
	.uleb128 0x31
	.uaword	.LBB1072
	.uaword	.LBE1072
	.uleb128 0x2a
	.uaword	0x108cb
	.uaword	.LLST470
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0x1411f
	.uaword	.LBB1075
	.uaword	.Ldebug_ranges0+0x8f8
	.byte	0x1
	.uahalf	0x2744
	.uaword	0x14c28
	.uleb128 0x27
	.uaword	0x14165
	.uaword	.LLST471
	.uleb128 0x3b
	.uaword	0x14159
	.byte	0x2
	.uleb128 0x27
	.uaword	0x1414d
	.uaword	.LLST472
	.uleb128 0x28
	.uaword	0x14141
	.byte	0x1
	.byte	0x58
	.uleb128 0x2c
	.uaword	.Ldebug_ranges0+0x8f8
	.uleb128 0x3e
	.uaword	0x14171
	.uleb128 0x29
	.uaword	0x1417d
	.byte	0x1
	.byte	0x6e
	.uleb128 0x3e
	.uaword	0x14189
	.uleb128 0x2b
	.uaword	0x10584
	.uaword	.LBB1077
	.uaword	.Ldebug_ranges0+0x910
	.byte	0x1
	.uahalf	0x294b
	.uaword	0x14b22
	.uleb128 0x28
	.uaword	0x105b8
	.byte	0x3
	.byte	0x7d
	.sleb128 -1
	.byte	0x9f
	.uleb128 0x28
	.uaword	0x105ac
	.byte	0x1
	.byte	0x58
	.byte	0
	.uleb128 0x2b
	.uaword	0x10661
	.uaword	.LBB1088
	.uaword	.Ldebug_ranges0+0x948
	.byte	0x1
	.uahalf	0x294e
	.uaword	0x14b7d
	.uleb128 0x40
	.uaword	0x10688
	.uleb128 0x27
	.uaword	0x10694
	.uaword	.LLST473
	.uleb128 0x33
	.uaword	0x10544
	.uaword	.LBB1089
	.uaword	.Ldebug_ranges0+0x948
	.byte	0x1
	.uahalf	0x142c
	.uleb128 0x3b
	.uaword	0x1056d
	.byte	0x1
	.uleb128 0x27
	.uaword	0x10563
	.uaword	.LLST473
	.uleb128 0x27
	.uaword	0x10559
	.uaword	.LLST475
	.uleb128 0x2c
	.uaword	.Ldebug_ranges0+0x948
	.uleb128 0x2a
	.uaword	0x10577
	.uaword	.LLST476
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.uaword	0x107ee
	.uaword	.LBB1095
	.uaword	.LBE1095
	.byte	0x1
	.uahalf	0x2973
	.uaword	0x14bad
	.uleb128 0x27
	.uaword	0x1081b
	.uaword	.LLST477
	.uleb128 0x27
	.uaword	0x10827
	.uaword	.LLST478
	.uleb128 0x27
	.uaword	0x1080f
	.uaword	.LLST479
	.byte	0
	.uleb128 0x30
	.uaword	0x10b33
	.uaword	.LBB1097
	.uaword	.LBE1097
	.byte	0x1
	.uahalf	0x29a3
	.uaword	0x14be7
	.uleb128 0x27
	.uaword	0x10b67
	.uaword	.LLST480
	.uleb128 0x27
	.uaword	0x10b5b
	.uaword	.LLST481
	.uleb128 0x31
	.uaword	.LBB1098
	.uaword	.LBE1098
	.uleb128 0x2a
	.uaword	0x10b74
	.uaword	.LLST482
	.byte	0
	.byte	0
	.uleb128 0x34
	.uaword	.LVL750
	.uaword	0x15148
	.uleb128 0x34
	.uaword	.LVL751
	.uaword	0x15168
	.uleb128 0x34
	.uaword	.LVL754
	.uaword	0x15148
	.uleb128 0x34
	.uaword	.LVL755
	.uaword	0x15168
	.uleb128 0x2f
	.uaword	.LVL758
	.uaword	0x11252
	.uleb128 0x2e
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x32
	.uleb128 0x2e
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x2e
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.uaword	0x106a1
	.uaword	.LBB1100
	.uaword	.LBE1100
	.byte	0x1
	.uahalf	0x2755
	.uaword	0x14c8a
	.uleb128 0x40
	.uaword	0x106c8
	.uleb128 0x27
	.uaword	0x106d4
	.uaword	.LLST483
	.uleb128 0x48
	.uaword	0x10544
	.uaword	.LBB1101
	.uaword	.LBE1101
	.byte	0x1
	.uahalf	0x1452
	.uleb128 0x27
	.uaword	0x1056d
	.uaword	.LLST484
	.uleb128 0x27
	.uaword	0x10563
	.uaword	.LLST483
	.uleb128 0x27
	.uaword	0x10559
	.uaword	.LLST486
	.uleb128 0x31
	.uaword	.LBB1102
	.uaword	.LBE1102
	.uleb128 0x2a
	.uaword	0x10577
	.uaword	.LLST487
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4e
	.uaword	.LVL748
	.byte	0x1
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
	.uaword	.LVL714
	.uaword	0x1502d
	.byte	0
	.uleb128 0x5
	.uaword	0x10529
	.uaword	0x14cb0
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0x3
	.byte	0
	.uleb128 0x3f
	.string	"Adc_KernelData_Core0"
	.byte	0x1
	.uahalf	0x37f
	.uaword	0x14ca0
	.byte	0x5
	.byte	0x3
	.uaword	Adc_KernelData_Core0
	.uleb128 0x5
	.uaword	0x10529
	.uaword	0x14ce3
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0x1
	.byte	0
	.uleb128 0x3f
	.string	"Adc_KernelData_Core1"
	.byte	0x1
	.uahalf	0x3a1
	.uaword	0x14cd3
	.byte	0x5
	.byte	0x3
	.uaword	Adc_KernelData_Core1
	.uleb128 0x5
	.uaword	0x10529
	.uaword	0x14d16
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0
	.byte	0
	.uleb128 0x3f
	.string	"Adc_KernelData_Core2"
	.byte	0x1
	.uahalf	0x3c4
	.uaword	0x14d06
	.byte	0x5
	.byte	0x3
	.uaword	Adc_KernelData_Core2
	.uleb128 0x3f
	.string	"Adc_KernelData_Core3"
	.byte	0x1
	.uahalf	0x3e7
	.uaword	0x14cd3
	.byte	0x5
	.byte	0x3
	.uaword	Adc_KernelData_Core3
	.uleb128 0x3f
	.string	"Adc_ConfigPtr"
	.byte	0x1
	.uahalf	0x44f
	.uaword	0x12b46
	.byte	0x5
	.byte	0x3
	.uaword	Adc_ConfigPtr
	.uleb128 0x3f
	.string	"Adc_StartupCalStatus"
	.byte	0x1
	.uahalf	0x45b
	.uaword	0x233
	.byte	0x5
	.byte	0x3
	.uaword	Adc_StartupCalStatus
	.uleb128 0x5
	.uaword	0x1cc
	.uaword	0x14db1
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0x3
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0xb
	.byte	0
	.uleb128 0x3f
	.string	"Adc_kKernelDataIndex"
	.byte	0x1
	.uahalf	0x484
	.uaword	0x14dd4
	.byte	0x5
	.byte	0x3
	.uaword	Adc_kKernelDataIndex
	.uleb128 0xe
	.uaword	0x14d9b
	.uleb128 0x5
	.uaword	0x1cc
	.uaword	0x14de9
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0x3
	.byte	0
	.uleb128 0x3f
	.string	"Adc_kKernelUsedCount"
	.byte	0x1
	.uahalf	0x49a
	.uaword	0x14e0c
	.byte	0x5
	.byte	0x3
	.uaword	Adc_kKernelUsedCount
	.uleb128 0xe
	.uaword	0x14dd9
	.uleb128 0x5
	.uaword	0x105c5
	.uaword	0x14e21
	.uleb128 0x6
	.uaword	0x2fb
	.byte	0x3
	.byte	0
	.uleb128 0x3f
	.string	"Adc_kKernelData"
	.byte	0x1
	.uahalf	0x4c8
	.uaword	0x14e3f
	.byte	0x5
	.byte	0x3
	.uaword	Adc_kKernelData
	.uleb128 0xe
	.uaword	0x14e11
	.uleb128 0x4f
	.string	"ADCTotalTime"
	.byte	0x1
	.byte	0x54
	.uaword	0x233
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	ADCTotalTime
	.uleb128 0x50
	.byte	0x1
	.string	"Mcal_WriteSafetyEndInitProtRegMask"
	.byte	0xd
	.uahalf	0x1d2
	.byte	0x1
	.byte	0x1
	.uaword	0x14e9d
	.uleb128 0x51
	.uaword	0x14e9d
	.uleb128 0x51
	.uaword	0x105cb
	.uleb128 0x51
	.uaword	0x233
	.byte	0
	.uleb128 0xe
	.uaword	0x14ea2
	.uleb128 0x9
	.byte	0x4
	.uaword	0x14ea8
	.uleb128 0x52
	.uleb128 0x50
	.byte	0x1
	.string	"Mcu_17_Gtm_AtomChannelDisable"
	.byte	0x7
	.uahalf	0x475
	.byte	0x1
	.byte	0x1
	.uaword	0x14edd
	.uleb128 0x51
	.uaword	0x10839
	.uleb128 0x51
	.uaword	0x10839
	.byte	0
	.uleb128 0x50
	.byte	0x1
	.string	"Mcu_17_Gtm_AtomChannelDeInit"
	.byte	0x7
	.uahalf	0x42b
	.byte	0x1
	.byte	0x1
	.uaword	0x14f10
	.uleb128 0x51
	.uaword	0x10839
	.uleb128 0x51
	.uaword	0x10839
	.byte	0
	.uleb128 0x50
	.byte	0x1
	.string	"Mcu_17_Gtm_AtomChannelShadowTransfer"
	.byte	0x7
	.uahalf	0x40b
	.byte	0x1
	.byte	0x1
	.uaword	0x14f4b
	.uleb128 0x51
	.uaword	0x10839
	.uleb128 0x51
	.uaword	0x10839
	.byte	0
	.uleb128 0x50
	.byte	0x1
	.string	"Mcu_17_Gtm_TomChannelDisable"
	.byte	0x7
	.uahalf	0x2b2
	.byte	0x1
	.byte	0x1
	.uaword	0x14f7e
	.uleb128 0x51
	.uaword	0x10839
	.uleb128 0x51
	.uaword	0x10839
	.byte	0
	.uleb128 0x50
	.byte	0x1
	.string	"Mcu_17_Gtm_TomChannelDeInit"
	.byte	0x7
	.uahalf	0x268
	.byte	0x1
	.byte	0x1
	.uaword	0x14fb0
	.uleb128 0x51
	.uaword	0x10839
	.uleb128 0x51
	.uaword	0x10839
	.byte	0
	.uleb128 0x50
	.byte	0x1
	.string	"Mcu_17_Gtm_TomChannelShadowTransfer"
	.byte	0x7
	.uahalf	0x248
	.byte	0x1
	.byte	0x1
	.uaword	0x14fea
	.uleb128 0x51
	.uaword	0x10839
	.uleb128 0x51
	.uaword	0x10839
	.byte	0
	.uleb128 0x53
	.byte	0x1
	.string	"SchM_Enter_Adc_SrcRegAccess"
	.byte	0xe
	.byte	0x2e
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.byte	0x1
	.string	"SchM_Exit_Adc_SrcRegAccess"
	.byte	0xe
	.byte	0x2f
	.byte	0x1
	.byte	0x1
	.uleb128 0x54
	.byte	0x1
	.string	"Mcal_GetCpuIndex"
	.byte	0xd
	.uahalf	0x335
	.byte	0x1
	.uaword	0x233
	.byte	0x1
	.uleb128 0x50
	.byte	0x1
	.string	"Mcu_17_Gtm_AtomChannelInit"
	.byte	0x7
	.uahalf	0x3ea
	.byte	0x1
	.byte	0x1
	.uaword	0x15075
	.uleb128 0x51
	.uaword	0x1098d
	.byte	0
	.uleb128 0x50
	.byte	0x1
	.string	"Mcu_17_Gtm_AtomChannelEnable"
	.byte	0x7
	.uahalf	0x452
	.byte	0x1
	.byte	0x1
	.uaword	0x150ad
	.uleb128 0x51
	.uaword	0x10839
	.uleb128 0x51
	.uaword	0x10839
	.uleb128 0x51
	.uaword	0x150ad
	.byte	0
	.uleb128 0xe
	.uaword	0x436
	.uleb128 0x50
	.byte	0x1
	.string	"Mcu_17_Gtm_TomChannelInit"
	.byte	0x7
	.uahalf	0x229
	.byte	0x1
	.byte	0x1
	.uaword	0x150dd
	.uleb128 0x51
	.uaword	0x1098d
	.byte	0
	.uleb128 0x50
	.byte	0x1
	.string	"Mcu_17_Gtm_TomChannelEnable"
	.byte	0x7
	.uahalf	0x28f
	.byte	0x1
	.byte	0x1
	.uaword	0x15114
	.uleb128 0x51
	.uaword	0x10839
	.uleb128 0x51
	.uaword	0x10839
	.uleb128 0x51
	.uaword	0x150ad
	.byte	0
	.uleb128 0x50
	.byte	0x1
	.string	"Mcal_WritePeripEndInitProtReg"
	.byte	0xd
	.uahalf	0x223
	.byte	0x1
	.byte	0x1
	.uaword	0x15148
	.uleb128 0x51
	.uaword	0x14e9d
	.uleb128 0x51
	.uaword	0x105cb
	.byte	0
	.uleb128 0x53
	.byte	0x1
	.string	"SchM_Enter_Adc_KernelData"
	.byte	0xe
	.byte	0x2a
	.byte	0x1
	.byte	0x1
	.uleb128 0x53
	.byte	0x1
	.string	"SchM_Exit_Adc_KernelData"
	.byte	0xe
	.byte	0x2b
	.byte	0x1
	.byte	0x1
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
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xc
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
	.uleb128 0x38
	.uleb128 0xa
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x5
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x1d
	.byte	0
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3c
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
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x41
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
	.uleb128 0x44
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
	.uleb128 0x45
	.uleb128 0x1d
	.byte	0
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
	.uleb128 0x46
	.uleb128 0x410a
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2111
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
	.uleb128 0x49
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x4a
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
	.uleb128 0x4b
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
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4d
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x4e
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
	.uleb128 0x4f
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
	.uleb128 0x50
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
	.uleb128 0x51
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x52
	.uleb128 0x35
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x53
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
	.uleb128 0x54
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
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL2
	.uaword	.LFE97
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x2
	.byte	0x37
	.byte	0x9f
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x2
	.byte	0x39
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x2
	.byte	0x3a
	.byte	0x9f
	.uaword	.LVL26
	.uaword	.LVL27
	.uahalf	0x2
	.byte	0x3b
	.byte	0x9f
	.uaword	.LVL27
	.uaword	.LVL28
	.uahalf	0x2
	.byte	0x3c
	.byte	0x9f
	.uaword	.LVL28
	.uaword	.LVL29
	.uahalf	0x2
	.byte	0x3d
	.byte	0x9f
	.uaword	.LVL29
	.uaword	.LVL30
	.uahalf	0x2
	.byte	0x3e
	.byte	0x9f
	.uaword	.LVL30
	.uaword	.LVL32
	.uahalf	0x2
	.byte	0x3f
	.byte	0x9f
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
	.uaword	.LVL38
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL38
	.uaword	.LVL39
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	.LVL39
	.uaword	.LVL40
	.uahalf	0x2
	.byte	0x37
	.byte	0x9f
	.uaword	.LVL40
	.uaword	.LVL41
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	.LVL41
	.uaword	.LVL42
	.uahalf	0x2
	.byte	0x39
	.byte	0x9f
	.uaword	.LVL42
	.uaword	.LVL43
	.uahalf	0x2
	.byte	0x3a
	.byte	0x9f
	.uaword	.LVL43
	.uaword	.LVL44
	.uahalf	0x2
	.byte	0x3b
	.byte	0x9f
	.uaword	.LVL44
	.uaword	.LVL45
	.uahalf	0x2
	.byte	0x3c
	.byte	0x9f
	.uaword	.LVL45
	.uaword	.LVL46
	.uahalf	0x2
	.byte	0x3d
	.byte	0x9f
	.uaword	.LVL46
	.uaword	.LVL47
	.uahalf	0x2
	.byte	0x3e
	.byte	0x9f
	.uaword	.LVL47
	.uaword	.LVL48
	.uahalf	0x2
	.byte	0x3f
	.byte	0x9f
	.uaword	.LVL48
	.uaword	.LVL49
	.uahalf	0x2
	.byte	0x40
	.byte	0x9f
	.uaword	.LVL56
	.uaword	.LVL57
	.uahalf	0x2
	.byte	0x40
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL21
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL31
	.uaword	.LVL49
	.uahalf	0x14
	.byte	0x40
	.byte	0x38
	.byte	0x79
	.sleb128 0
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0xc
	.uaword	0x80000005
	.byte	0x2a
	.byte	0x28
	.uahalf	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.uaword	.LVL56
	.uaword	.LVL57
	.uahalf	0x14
	.byte	0x40
	.byte	0x38
	.byte	0x79
	.sleb128 0
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0xc
	.uaword	0x80000005
	.byte	0x2a
	.byte	0x28
	.uahalf	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL3
	.uaword	.LVL17
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL49
	.uaword	.LVL56
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL57
	.uaword	.LFE97
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL3
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL14
	.uaword	.LVL17
	.uahalf	0x3
	.byte	0x8c
	.sleb128 -60
	.byte	0x9f
	.uaword	.LVL49
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL57
	.uaword	.LFE97
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL10
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL12
	.uaword	.LVL13-1
	.uahalf	0x2
	.byte	0x8c
	.sleb128 20
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL10
	.uaword	.LVL17
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0xa
	.byte	0x72
	.sleb128 0
	.byte	0x31
	.byte	0x25
	.byte	0x33
	.byte	0x1a
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0xc
	.byte	0x82
	.sleb128 4
	.byte	0x94
	.byte	0x1
	.byte	0x31
	.byte	0x25
	.byte	0x33
	.byte	0x1a
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LVL13-1
	.uahalf	0xf
	.byte	0x8c
	.sleb128 20
	.byte	0x6
	.byte	0x23
	.uleb128 0x4
	.byte	0x94
	.byte	0x1
	.byte	0x31
	.byte	0x25
	.byte	0x33
	.byte	0x1a
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL10
	.uaword	.LVL15
	.uahalf	0xa
	.byte	0x7f
	.sleb128 0
	.byte	0x31
	.byte	0x25
	.byte	0x33
	.byte	0x1a
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x7
	.byte	0x72
	.sleb128 0
	.byte	0x31
	.byte	0x1a
	.byte	0x34
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x9
	.byte	0x82
	.sleb128 4
	.byte	0x94
	.byte	0x1
	.byte	0x31
	.byte	0x1a
	.byte	0x34
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LVL13-1
	.uahalf	0xc
	.byte	0x8c
	.sleb128 20
	.byte	0x6
	.byte	0x23
	.uleb128 0x4
	.byte	0x94
	.byte	0x1
	.byte	0x31
	.byte	0x1a
	.byte	0x34
	.byte	0x24
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL10
	.uaword	.LVL15
	.uahalf	0x7
	.byte	0x7f
	.sleb128 0
	.byte	0x31
	.byte	0x1a
	.byte	0x34
	.byte	0x24
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL4
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL6
	.uaword	.LVL7-1
	.uahalf	0x2
	.byte	0x8c
	.sleb128 16
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL4
	.uaword	.LVL9
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0xa
	.byte	0x72
	.sleb128 0
	.byte	0x31
	.byte	0x25
	.byte	0x33
	.byte	0x1a
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0xc
	.byte	0x82
	.sleb128 4
	.byte	0x94
	.byte	0x1
	.byte	0x31
	.byte	0x25
	.byte	0x33
	.byte	0x1a
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL7-1
	.uahalf	0xf
	.byte	0x8c
	.sleb128 16
	.byte	0x6
	.byte	0x23
	.uleb128 0x4
	.byte	0x94
	.byte	0x1
	.byte	0x31
	.byte	0x25
	.byte	0x33
	.byte	0x1a
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL4
	.uaword	.LVL8
	.uahalf	0xa
	.byte	0x7f
	.sleb128 0
	.byte	0x31
	.byte	0x25
	.byte	0x33
	.byte	0x1a
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x7
	.byte	0x72
	.sleb128 0
	.byte	0x31
	.byte	0x1a
	.byte	0x34
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x9
	.byte	0x82
	.sleb128 4
	.byte	0x94
	.byte	0x1
	.byte	0x31
	.byte	0x1a
	.byte	0x34
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL7-1
	.uahalf	0xc
	.byte	0x8c
	.sleb128 16
	.byte	0x6
	.byte	0x23
	.uleb128 0x4
	.byte	0x94
	.byte	0x1
	.byte	0x31
	.byte	0x1a
	.byte	0x34
	.byte	0x24
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL4
	.uaword	.LVL8
	.uahalf	0x7
	.byte	0x7f
	.sleb128 0
	.byte	0x31
	.byte	0x1a
	.byte	0x34
	.byte	0x24
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL49
	.uaword	.LVL56
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL64
	.uaword	.LVL68
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL49
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL64
	.uaword	.LVL68
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL50
	.uaword	.LVL53-1
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL64
	.uaword	.LVL65-1
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL51
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL64
	.uaword	.LVL65-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL65-1
	.uaword	.LVL68
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL52
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL64
	.uaword	.LVL65-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL65-1
	.uaword	.LVL68
	.uahalf	0x1
	.byte	0x5b
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL58
	.uaword	.LVL61-1
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL68
	.uaword	.LVL69-1
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL59
	.uaword	.LVL64
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL68
	.uaword	.LVL69-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL69-1
	.uaword	.LFE97
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL60
	.uaword	.LVL64
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL68
	.uaword	.LVL69-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL69-1
	.uaword	.LFE97
	.uahalf	0x1
	.byte	0x5b
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL72
	.uaword	.LVL74
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL74
	.uaword	.LVL95
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL95
	.uaword	.LVL101
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL101
	.uaword	.LVL119
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL119
	.uaword	.LVL124-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL124-1
	.uaword	.LVL131
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL131
	.uaword	.LVL132-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL132-1
	.uaword	.LFE73
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL72
	.uaword	.LVL74
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL74
	.uaword	.LVL82
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL82
	.uaword	.LVL95
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL95
	.uaword	.LVL102
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL102
	.uaword	.LVL119
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL119
	.uaword	.LVL123
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL123
	.uaword	.LFE73
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL72
	.uaword	.LVL74
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL74
	.uaword	.LVL95
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL95
	.uaword	.LVL100
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL100
	.uaword	.LVL119
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL119
	.uaword	.LVL123
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL123
	.uaword	.LFE73
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL81
	.uaword	.LVL82
	.uahalf	0xb
	.byte	0x79
	.sleb128 0
	.byte	0x34
	.byte	0x24
	.byte	0xc
	.uaword	0xffc7990
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL82
	.uaword	.LVL83
	.uahalf	0xc
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x34
	.byte	0x24
	.byte	0xc
	.uaword	0xffc7990
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL83
	.uaword	.LVL95
	.uahalf	0x1
	.byte	0x6e
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL75
	.uaword	.LVL79
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x1770
	.byte	0x9f
	.uaword	.LVL79
	.uaword	.LVL81
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL77
	.uaword	.LVL78
	.uahalf	0x8
	.byte	0x7f
	.sleb128 0
	.byte	0x9
	.byte	0xe5
	.byte	0x24
	.byte	0x33
	.byte	0x25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL75
	.uaword	.LVL95
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL85
	.uaword	.LVL95
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL85
	.uaword	.LVL95
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL85
	.uaword	.LVL95
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL85
	.uaword	.LVL95
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST42:
	.uaword	.LVL85
	.uaword	.LVL95
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST43:
	.uaword	.LVL86
	.uaword	.LVL89
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST44:
	.uaword	.LVL89
	.uaword	.LVL91
	.uahalf	0x2
	.byte	0x82
	.sleb128 1
	.uaword	.LVL91
	.uaword	.LVL95
	.uahalf	0x4
	.byte	0x73
	.sleb128 -128
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST45:
	.uaword	.LVL90
	.uaword	.LVL91
	.uahalf	0x2
	.byte	0x82
	.sleb128 2
	.uaword	.LVL91
	.uaword	.LVL94
	.uahalf	0x4
	.byte	0x72
	.sleb128 -160
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST46:
	.uaword	.LVL88
	.uaword	.LVL89
	.uahalf	0x2
	.byte	0x8c
	.sleb128 56
	.uaword	.LVL89
	.uaword	.LVL95
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST47:
	.uaword	.LVL87
	.uaword	.LVL89
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL89
	.uaword	.LVL92
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL92
	.uaword	.LVL93
	.uahalf	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST48:
	.uaword	.LVL96
	.uaword	.LVL101
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL101
	.uaword	.LVL119
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL119
	.uaword	.LVL124-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL124-1
	.uaword	.LVL131
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL131
	.uaword	.LVL132-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL132-1
	.uaword	.LFE73
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST49:
	.uaword	.LVL97
	.uaword	.LVL99
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL99
	.uaword	.LVL101
	.uahalf	0x2
	.byte	0x84
	.sleb128 16
	.uaword	.LVL101
	.uaword	.LVL103-1
	.uahalf	0x2
	.byte	0x8c
	.sleb128 16
	.uaword	0
	.uaword	0
.LLST51:
	.uaword	.LVL97
	.uaword	.LVL105
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST52:
	.uaword	.LVL97
	.uaword	.LVL98
	.uahalf	0xa
	.byte	0x7f
	.sleb128 0
	.byte	0x31
	.byte	0x25
	.byte	0x33
	.byte	0x1a
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL98
	.uaword	.LVL99
	.uahalf	0xc
	.byte	0x8f
	.sleb128 4
	.byte	0x94
	.byte	0x1
	.byte	0x31
	.byte	0x25
	.byte	0x33
	.byte	0x1a
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL99
	.uaword	.LVL101
	.uahalf	0xf
	.byte	0x84
	.sleb128 16
	.byte	0x6
	.byte	0x23
	.uleb128 0x4
	.byte	0x94
	.byte	0x1
	.byte	0x31
	.byte	0x25
	.byte	0x33
	.byte	0x1a
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL101
	.uaword	.LVL103-1
	.uahalf	0xf
	.byte	0x8c
	.sleb128 16
	.byte	0x6
	.byte	0x23
	.uleb128 0x4
	.byte	0x94
	.byte	0x1
	.byte	0x31
	.byte	0x25
	.byte	0x33
	.byte	0x1a
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST53:
	.uaword	.LVL97
	.uaword	.LVL104
	.uahalf	0xa
	.byte	0x7a
	.sleb128 0
	.byte	0x31
	.byte	0x25
	.byte	0x33
	.byte	0x1a
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST54:
	.uaword	.LVL97
	.uaword	.LVL98
	.uahalf	0x7
	.byte	0x7f
	.sleb128 0
	.byte	0x31
	.byte	0x1a
	.byte	0x34
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL98
	.uaword	.LVL99
	.uahalf	0x9
	.byte	0x8f
	.sleb128 4
	.byte	0x94
	.byte	0x1
	.byte	0x31
	.byte	0x1a
	.byte	0x34
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL99
	.uaword	.LVL101
	.uahalf	0xc
	.byte	0x84
	.sleb128 16
	.byte	0x6
	.byte	0x23
	.uleb128 0x4
	.byte	0x94
	.byte	0x1
	.byte	0x31
	.byte	0x1a
	.byte	0x34
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL101
	.uaword	.LVL103-1
	.uahalf	0xc
	.byte	0x8c
	.sleb128 16
	.byte	0x6
	.byte	0x23
	.uleb128 0x4
	.byte	0x94
	.byte	0x1
	.byte	0x31
	.byte	0x1a
	.byte	0x34
	.byte	0x24
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST55:
	.uaword	.LVL97
	.uaword	.LVL104
	.uahalf	0x7
	.byte	0x7a
	.sleb128 0
	.byte	0x31
	.byte	0x1a
	.byte	0x34
	.byte	0x24
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST56:
	.uaword	.LVL106
	.uaword	.LVL108
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL108
	.uaword	.LVL109-1
	.uahalf	0x2
	.byte	0x8c
	.sleb128 20
	.uaword	0
	.uaword	0
.LLST58:
	.uaword	.LVL106
	.uaword	.LVL112
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST59:
	.uaword	.LVL106
	.uaword	.LVL107
	.uahalf	0xa
	.byte	0x7f
	.sleb128 0
	.byte	0x31
	.byte	0x25
	.byte	0x33
	.byte	0x1a
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL107
	.uaword	.LVL108
	.uahalf	0xc
	.byte	0x8f
	.sleb128 4
	.byte	0x94
	.byte	0x1
	.byte	0x31
	.byte	0x25
	.byte	0x33
	.byte	0x1a
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL108
	.uaword	.LVL109-1
	.uahalf	0xf
	.byte	0x8c
	.sleb128 20
	.byte	0x6
	.byte	0x23
	.uleb128 0x4
	.byte	0x94
	.byte	0x1
	.byte	0x31
	.byte	0x25
	.byte	0x33
	.byte	0x1a
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST60:
	.uaword	.LVL106
	.uaword	.LVL110
	.uahalf	0xa
	.byte	0x7a
	.sleb128 0
	.byte	0x31
	.byte	0x25
	.byte	0x33
	.byte	0x1a
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST61:
	.uaword	.LVL106
	.uaword	.LVL107
	.uahalf	0x7
	.byte	0x7f
	.sleb128 0
	.byte	0x31
	.byte	0x1a
	.byte	0x34
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL107
	.uaword	.LVL108
	.uahalf	0x9
	.byte	0x8f
	.sleb128 4
	.byte	0x94
	.byte	0x1
	.byte	0x31
	.byte	0x1a
	.byte	0x34
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL108
	.uaword	.LVL109-1
	.uahalf	0xc
	.byte	0x8c
	.sleb128 20
	.byte	0x6
	.byte	0x23
	.uleb128 0x4
	.byte	0x94
	.byte	0x1
	.byte	0x31
	.byte	0x1a
	.byte	0x34
	.byte	0x24
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST62:
	.uaword	.LVL106
	.uaword	.LVL110
	.uahalf	0x7
	.byte	0x7a
	.sleb128 0
	.byte	0x31
	.byte	0x1a
	.byte	0x34
	.byte	0x24
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST63:
	.uaword	.LVL112
	.uaword	.LVL119
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL127
	.uaword	.LVL131
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST64:
	.uaword	.LVL112
	.uaword	.LVL119
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL127
	.uaword	.LVL131
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST65:
	.uaword	.LVL113
	.uaword	.LVL119
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL127
	.uaword	.LVL131
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST67:
	.uaword	.LVL114
	.uaword	.LVL119
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL127
	.uaword	.LVL128-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL128-1
	.uaword	.LVL131
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST68:
	.uaword	.LVL115
	.uaword	.LVL119
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL127
	.uaword	.LVL128-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL128-1
	.uaword	.LVL131
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST69:
	.uaword	.LVL120
	.uaword	.LVL127
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL131
	.uaword	.LFE73
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST71:
	.uaword	.LVL121
	.uaword	.LVL127
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL131
	.uaword	.LVL132-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL132-1
	.uaword	.LFE73
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST72:
	.uaword	.LVL122
	.uaword	.LVL127
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL131
	.uaword	.LVL132-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL132-1
	.uaword	.LFE73
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST73:
	.uaword	.LFB64
	.uaword	.LCFI0
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0
	.uaword	.LFE64
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST74:
	.uaword	.LVL135
	.uaword	.LVL146-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL146-1
	.uaword	.LFE64
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST75:
	.uaword	.LVL135
	.uaword	.LVL146-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL146-1
	.uaword	.LFE64
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST76:
	.uaword	.LVL135
	.uaword	.LVL138
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL138
	.uaword	.LFE64
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST77:
	.uaword	.LVL139
	.uaword	.LVL143
	.uahalf	0x1
	.byte	0x63
	.uaword	0
	.uaword	0
.LLST78:
	.uaword	.LVL139
	.uaword	.LVL144
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST79:
	.uaword	.LVL139
	.uaword	.LVL140
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL140
	.uaword	.LVL141
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL141
	.uaword	.LVL142
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST80:
	.uaword	.LVL145
	.uaword	.LVL146-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL146-1
	.uaword	.LFE64
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST81:
	.uaword	.LVL148
	.uaword	.LVL149
	.uahalf	0x1c
	.byte	0x7f
	.sleb128 0
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x8
	.byte	0x3c
	.byte	0x1e
	.byte	0x78
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x72
	.sleb128 1
	.byte	0x32
	.byte	0x24
	.byte	0x83
	.sleb128 0
	.byte	0x22
	.byte	0x6
	.byte	0x22
	.byte	0x6
	.byte	0x23
	.uleb128 0x8
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL151
	.uaword	.LVL152
	.uahalf	0x1c
	.byte	0x7f
	.sleb128 0
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x8
	.byte	0x3c
	.byte	0x1e
	.byte	0x78
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x72
	.sleb128 1
	.byte	0x32
	.byte	0x24
	.byte	0x83
	.sleb128 0
	.byte	0x22
	.byte	0x6
	.byte	0x22
	.byte	0x6
	.byte	0x23
	.uleb128 0x8
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL154
	.uaword	.LVL155
	.uahalf	0x1c
	.byte	0x7f
	.sleb128 0
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x8
	.byte	0x3c
	.byte	0x1e
	.byte	0x78
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x72
	.sleb128 1
	.byte	0x32
	.byte	0x24
	.byte	0x83
	.sleb128 0
	.byte	0x22
	.byte	0x6
	.byte	0x22
	.byte	0x6
	.byte	0x23
	.uleb128 0x8
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL155
	.uaword	.LVL156
	.uahalf	0x20
	.byte	0x7f
	.sleb128 0
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x8
	.byte	0x3c
	.byte	0x1e
	.byte	0x78
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x72
	.sleb128 1
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.uaword	Adc_ConfigPtr
	.byte	0x6
	.byte	0x22
	.byte	0x6
	.byte	0x22
	.byte	0x6
	.byte	0x23
	.uleb128 0x8
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST82:
	.uaword	.LVL147
	.uaword	.LVL150
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL150
	.uaword	.LVL153
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL153
	.uaword	.LVL157
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL157
	.uaword	.LFE64
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST83:
	.uaword	.LVL158
	.uaword	.LVL163
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST84:
	.uaword	.LVL146
	.uaword	.LVL156
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST85:
	.uaword	.LVL159
	.uaword	.LVL160
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL160
	.uaword	.LVL161
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL161
	.uaword	.LVL162
	.uahalf	0x3
	.byte	0x8f
	.sleb128 132
	.uaword	.LVL162
	.uaword	.LVL164
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST87:
	.uaword	.LVL165
	.uaword	.LVL167
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL167
	.uaword	.LVL187
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL187
	.uaword	.LVL195
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL195
	.uaword	.LFE72
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST88:
	.uaword	.LVL165
	.uaword	.LVL168
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL168
	.uaword	.LFE72
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST89:
	.uaword	.LVL165
	.uaword	.LVL191
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL191
	.uaword	.LVL195
	.uahalf	0x3
	.byte	0x7b
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL195
	.uaword	.LVL201-1
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL201-1
	.uaword	.LVL242
	.uahalf	0x3
	.byte	0x7b
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL242
	.uaword	.LFE72
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST90:
	.uaword	.LVL173
	.uaword	.LVL186
	.uahalf	0x1
	.byte	0x63
	.uaword	.LVL186
	.uaword	.LVL192
	.uahalf	0x3
	.byte	0x8f
	.sleb128 24
	.byte	0x9f
	.uaword	.LVL192
	.uaword	.LVL195
	.uahalf	0x21
	.byte	0x79
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x22
	.byte	0x3
	.uaword	Adc_kKernelDataIndex
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x38
	.byte	0x1e
	.byte	0x7a
	.sleb128 0
	.byte	0x3
	.uaword	Adc_kKernelData
	.byte	0x22
	.byte	0x6
	.byte	0x22
	.byte	0x23
	.uleb128 0x18
	.byte	0x9f
	.uaword	.LVL195
	.uaword	.LVL198
	.uahalf	0x1
	.byte	0x63
	.uaword	0
	.uaword	0
.LLST91:
	.uaword	.LVL169
	.uaword	.LVL188
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL188
	.uaword	.LVL195
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL195
	.uaword	.LVL200
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL200
	.uaword	.LVL242
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL242
	.uaword	.LFE72
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST92:
	.uaword	.LVL174
	.uaword	.LVL177
	.uahalf	0x2
	.byte	0x82
	.sleb128 0
	.uaword	.LVL177
	.uaword	.LVL178
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL196
	.uaword	.LVL197
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST93:
	.uaword	.LVL175
	.uaword	.LVL176
	.uahalf	0x2
	.byte	0x82
	.sleb128 2
	.uaword	.LVL176
	.uaword	.LVL180
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL195
	.uaword	.LVL198
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST94:
	.uaword	.LVL166
	.uaword	.LVL191
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL191
	.uaword	.LVL195
	.uahalf	0x3
	.byte	0x7b
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL195
	.uaword	.LVL201-1
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL201-1
	.uaword	.LVL242
	.uahalf	0x3
	.byte	0x7b
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL242
	.uaword	.LFE72
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST95:
	.uaword	.LVL166
	.uaword	.LVL167
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL167
	.uaword	.LVL187
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL187
	.uaword	.LVL195
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL195
	.uaword	.LFE72
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST96:
	.uaword	.LVL169
	.uaword	.LVL191
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL191
	.uaword	.LVL195
	.uahalf	0x3
	.byte	0x7b
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL195
	.uaword	.LVL201-1
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL201-1
	.uaword	.LVL242
	.uahalf	0x3
	.byte	0x7b
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL242
	.uaword	.LFE72
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST97:
	.uaword	.LVL169
	.uaword	.LVL189
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL195
	.uaword	.LVL219
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL242
	.uaword	.LFE72
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST98:
	.uaword	.LVL169
	.uaword	.LVL187
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL187
	.uaword	.LVL195
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL195
	.uaword	.LFE72
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST99:
	.uaword	.LVL169
	.uaword	.LVL170
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL170
	.uaword	.LVL171
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL171
	.uaword	.LVL172
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL172
	.uaword	.LVL198
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL198
	.uaword	.LVL199
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL242
	.uaword	.LFE72
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST100:
	.uaword	.LVL169
	.uaword	.LVL199
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	.LVL199
	.uaword	.LVL242
	.uahalf	0x1
	.byte	0x5d
	.uaword	.LVL242
	.uaword	.LFE72
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST101:
	.uaword	.LVL179
	.uaword	.LVL189
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST102:
	.uaword	.LVL179
	.uaword	.LVL192
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL192
	.uaword	.LVL195
	.uahalf	0x3
	.byte	0x8f
	.sleb128 -20
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST103:
	.uaword	.LVL181
	.uaword	.LVL183
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST104:
	.uaword	.LVL182
	.uaword	.LVL189
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST105:
	.uaword	.LVL182
	.uaword	.LVL192
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL192
	.uaword	.LVL195
	.uahalf	0x3
	.byte	0x8f
	.sleb128 -20
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST106:
	.uaword	.LVL183
	.uaword	.LVL185
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST107:
	.uaword	.LVL184
	.uaword	.LVL189
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST108:
	.uaword	.LVL184
	.uaword	.LVL192
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL192
	.uaword	.LVL195
	.uahalf	0x3
	.byte	0x8f
	.sleb128 -20
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST109:
	.uaword	.LVL185
	.uaword	.LVL190
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST110:
	.uaword	.LVL190
	.uaword	.LVL195
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST112:
	.uaword	.LVL190
	.uaword	.LVL191
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL191
	.uaword	.LVL195
	.uahalf	0x3
	.byte	0x7b
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST114:
	.uaword	.LVL194
	.uaword	.LVL195
	.uahalf	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST115:
	.uaword	.LVL201
	.uaword	.LVL242
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST116:
	.uaword	.LVL201
	.uaword	.LVL242
	.uahalf	0x1
	.byte	0x5d
	.uaword	0
	.uaword	0
.LLST117:
	.uaword	.LVL201
	.uaword	.LVL209
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL209
	.uaword	.LVL213
	.uahalf	0x1e
	.byte	0x78
	.sleb128 0
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.uaword	Adc_kKernelDataIndex
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x38
	.byte	0x1e
	.byte	0x7a
	.sleb128 0
	.byte	0x3
	.uaword	Adc_kKernelData
	.byte	0x22
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL213
	.uaword	.LVL214
	.uahalf	0x1e
	.byte	0x78
	.sleb128 0
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.uaword	Adc_kKernelDataIndex
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x38
	.byte	0x1e
	.byte	0x3
	.uaword	Adc_kKernelData
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL214
	.uaword	.LVL215
	.uahalf	0x1e
	.byte	0x79
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.uaword	Adc_kKernelDataIndex
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x38
	.byte	0x1e
	.byte	0x3
	.uaword	Adc_kKernelData
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL215
	.uaword	.LVL216
	.uahalf	0x1e
	.byte	0x79
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.uaword	Adc_kKernelDataIndex
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x38
	.byte	0x1e
	.byte	0x7a
	.sleb128 0
	.byte	0x3
	.uaword	Adc_kKernelData
	.byte	0x22
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL216
	.uaword	.LVL217
	.uahalf	0x20
	.byte	0x7b
	.sleb128 -1
	.byte	0x3c
	.byte	0x1e
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.uaword	Adc_kKernelDataIndex
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x38
	.byte	0x1e
	.byte	0x7a
	.sleb128 0
	.byte	0x3
	.uaword	Adc_kKernelData
	.byte	0x22
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL217
	.uaword	.LVL242
	.uahalf	0x20
	.byte	0x7b
	.sleb128 -1
	.byte	0x3c
	.byte	0x1e
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.uaword	Adc_kKernelDataIndex
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x38
	.byte	0x1e
	.byte	0x7a
	.sleb128 0
	.byte	0x3
	.uaword	Adc_kKernelData
	.byte	0x22
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST118:
	.uaword	.LVL202
	.uaword	.LVL242
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST120:
	.uaword	.LVL202
	.uaword	.LVL242
	.uahalf	0x3
	.byte	0x7b
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST121:
	.uaword	.LVL202
	.uaword	.LVL242
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST122:
	.uaword	.LVL203
	.uaword	.LVL219
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST123:
	.uaword	.LVL203
	.uaword	.LVL209
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL209
	.uaword	.LVL213
	.uahalf	0x1e
	.byte	0x78
	.sleb128 0
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.uaword	Adc_kKernelDataIndex
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x38
	.byte	0x1e
	.byte	0x7a
	.sleb128 0
	.byte	0x3
	.uaword	Adc_kKernelData
	.byte	0x22
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL213
	.uaword	.LVL214
	.uahalf	0x1e
	.byte	0x78
	.sleb128 0
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.uaword	Adc_kKernelDataIndex
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x38
	.byte	0x1e
	.byte	0x3
	.uaword	Adc_kKernelData
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL214
	.uaword	.LVL215
	.uahalf	0x1e
	.byte	0x79
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.uaword	Adc_kKernelDataIndex
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x38
	.byte	0x1e
	.byte	0x3
	.uaword	Adc_kKernelData
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL215
	.uaword	.LVL216
	.uahalf	0x1e
	.byte	0x79
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.uaword	Adc_kKernelDataIndex
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x38
	.byte	0x1e
	.byte	0x7a
	.sleb128 0
	.byte	0x3
	.uaword	Adc_kKernelData
	.byte	0x22
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL216
	.uaword	.LVL217
	.uahalf	0x20
	.byte	0x7b
	.sleb128 -1
	.byte	0x3c
	.byte	0x1e
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.uaword	Adc_kKernelDataIndex
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x38
	.byte	0x1e
	.byte	0x7a
	.sleb128 0
	.byte	0x3
	.uaword	Adc_kKernelData
	.byte	0x22
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL217
	.uaword	.LVL242
	.uahalf	0x20
	.byte	0x7b
	.sleb128 -1
	.byte	0x3c
	.byte	0x1e
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.uaword	Adc_kKernelDataIndex
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x38
	.byte	0x1e
	.byte	0x7a
	.sleb128 0
	.byte	0x3
	.uaword	Adc_kKernelData
	.byte	0x22
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST124:
	.uaword	.LVL204
	.uaword	.LVL206
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST125:
	.uaword	.LVL205
	.uaword	.LVL219
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST126:
	.uaword	.LVL205
	.uaword	.LVL209
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL209
	.uaword	.LVL213
	.uahalf	0x1e
	.byte	0x78
	.sleb128 0
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.uaword	Adc_kKernelDataIndex
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x38
	.byte	0x1e
	.byte	0x7a
	.sleb128 0
	.byte	0x3
	.uaword	Adc_kKernelData
	.byte	0x22
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL213
	.uaword	.LVL214
	.uahalf	0x1e
	.byte	0x78
	.sleb128 0
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.uaword	Adc_kKernelDataIndex
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x38
	.byte	0x1e
	.byte	0x3
	.uaword	Adc_kKernelData
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL214
	.uaword	.LVL215
	.uahalf	0x1e
	.byte	0x79
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.uaword	Adc_kKernelDataIndex
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x38
	.byte	0x1e
	.byte	0x3
	.uaword	Adc_kKernelData
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL215
	.uaword	.LVL216
	.uahalf	0x1e
	.byte	0x79
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.uaword	Adc_kKernelDataIndex
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x38
	.byte	0x1e
	.byte	0x7a
	.sleb128 0
	.byte	0x3
	.uaword	Adc_kKernelData
	.byte	0x22
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL216
	.uaword	.LVL217
	.uahalf	0x20
	.byte	0x7b
	.sleb128 -1
	.byte	0x3c
	.byte	0x1e
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.uaword	Adc_kKernelDataIndex
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x38
	.byte	0x1e
	.byte	0x7a
	.sleb128 0
	.byte	0x3
	.uaword	Adc_kKernelData
	.byte	0x22
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL217
	.uaword	.LVL242
	.uahalf	0x20
	.byte	0x7b
	.sleb128 -1
	.byte	0x3c
	.byte	0x1e
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.uaword	Adc_kKernelDataIndex
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x38
	.byte	0x1e
	.byte	0x7a
	.sleb128 0
	.byte	0x3
	.uaword	Adc_kKernelData
	.byte	0x22
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST127:
	.uaword	.LVL206
	.uaword	.LVL208
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST128:
	.uaword	.LVL207
	.uaword	.LVL219
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST129:
	.uaword	.LVL207
	.uaword	.LVL209
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL209
	.uaword	.LVL213
	.uahalf	0x1e
	.byte	0x78
	.sleb128 0
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.uaword	Adc_kKernelDataIndex
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x38
	.byte	0x1e
	.byte	0x7a
	.sleb128 0
	.byte	0x3
	.uaword	Adc_kKernelData
	.byte	0x22
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL213
	.uaword	.LVL214
	.uahalf	0x1e
	.byte	0x78
	.sleb128 0
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.uaword	Adc_kKernelDataIndex
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x38
	.byte	0x1e
	.byte	0x3
	.uaword	Adc_kKernelData
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL214
	.uaword	.LVL215
	.uahalf	0x1e
	.byte	0x79
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.uaword	Adc_kKernelDataIndex
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x38
	.byte	0x1e
	.byte	0x3
	.uaword	Adc_kKernelData
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL215
	.uaword	.LVL216
	.uahalf	0x1e
	.byte	0x79
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.uaword	Adc_kKernelDataIndex
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x38
	.byte	0x1e
	.byte	0x7a
	.sleb128 0
	.byte	0x3
	.uaword	Adc_kKernelData
	.byte	0x22
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL216
	.uaword	.LVL217
	.uahalf	0x20
	.byte	0x7b
	.sleb128 -1
	.byte	0x3c
	.byte	0x1e
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.uaword	Adc_kKernelDataIndex
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x38
	.byte	0x1e
	.byte	0x7a
	.sleb128 0
	.byte	0x3
	.uaword	Adc_kKernelData
	.byte	0x22
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL217
	.uaword	.LVL242
	.uahalf	0x20
	.byte	0x7b
	.sleb128 -1
	.byte	0x3c
	.byte	0x1e
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.uaword	Adc_kKernelDataIndex
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x38
	.byte	0x1e
	.byte	0x7a
	.sleb128 0
	.byte	0x3
	.uaword	Adc_kKernelData
	.byte	0x22
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST130:
	.uaword	.LVL208
	.uaword	.LVL232
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL241
	.uaword	.LVL242
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST131:
	.uaword	.LVL210
	.uaword	.LVL219
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST132:
	.uaword	.LVL211
	.uaword	.LVL218
	.uahalf	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST133:
	.uaword	.LVL212
	.uaword	.LVL242
	.uahalf	0x1
	.byte	0x5d
	.uaword	0
	.uaword	0
.LLST134:
	.uaword	.LVL212
	.uaword	.LVL242
	.uahalf	0x3
	.byte	0x7b
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST135:
	.uaword	.LVL212
	.uaword	.LVL242
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST136:
	.uaword	.LVL226
	.uaword	.LVL233
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL233
	.uaword	.LVL241-1
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST139:
	.uaword	.LVL220
	.uaword	.LVL242
	.uahalf	0x3
	.byte	0x7b
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST140:
	.uaword	.LVL220
	.uaword	.LVL242
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST141:
	.uaword	.LVL221
	.uaword	.LVL225
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL241
	.uaword	.LVL242
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST142:
	.uaword	.LVL222
	.uaword	.LVL223
	.uahalf	0x2
	.byte	0x82
	.sleb128 26
	.uaword	.LVL223
	.uaword	.LVL224
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST143:
	.uaword	.LVL226
	.uaword	.LVL241
	.uahalf	0x3
	.byte	0x7b
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST144:
	.uaword	.LVL226
	.uaword	.LVL241
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST145:
	.uaword	.LVL227
	.uaword	.LVL241-1
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL241-1
	.uaword	.LVL241
	.uahalf	0xb
	.byte	0x78
	.sleb128 0
	.byte	0x3a
	.byte	0x24
	.byte	0xc
	.uaword	0xffdfc00
	.byte	0x1c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST146:
	.uaword	.LVL227
	.uaword	.LVL233
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL233
	.uaword	.LVL241-1
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST147:
	.uaword	.LVL228
	.uaword	.LVL241-1
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST148:
	.uaword	.LVL229
	.uaword	.LVL233
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST149:
	.uaword	.LVL236
	.uaword	.LVL240
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST150:
	.uaword	.LVL233
	.uaword	.LVL237
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL237
	.uaword	.LVL238
	.uahalf	0x2
	.byte	0x8f
	.sleb128 -4
	.uaword	0
	.uaword	0
.LLST151:
	.uaword	.LVL233
	.uaword	.LVL237
	.uahalf	0x2
	.byte	0x8f
	.sleb128 1
	.uaword	.LVL237
	.uaword	.LVL238
	.uahalf	0x2
	.byte	0x8f
	.sleb128 -3
	.uaword	.LVL238
	.uaword	.LVL241-1
	.uahalf	0x4
	.byte	0x73
	.sleb128 -128
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST152:
	.uaword	.LVL234
	.uaword	.LVL237
	.uahalf	0x2
	.byte	0x8f
	.sleb128 2
	.uaword	.LVL237
	.uaword	.LVL238
	.uahalf	0x2
	.byte	0x8f
	.sleb128 -2
	.uaword	.LVL238
	.uaword	.LVL241-1
	.uahalf	0x4
	.byte	0x72
	.sleb128 -160
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST153:
	.uaword	.LVL230
	.uaword	.LVL231
	.uahalf	0x2
	.byte	0x73
	.sleb128 56
	.uaword	.LVL231
	.uaword	.LVL241-1
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST154:
	.uaword	.LVL233
	.uaword	.LVL235
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL235
	.uaword	.LVL239
	.uahalf	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST155:
	.uaword	.LFB70
	.uaword	.LCFI1
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI1
	.uaword	.LFE70
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST156:
	.uaword	.LVL243
	.uaword	.LVL245
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL245
	.uaword	.LVL313
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL313
	.uaword	.LVL334
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL334
	.uaword	.LVL345
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL345
	.uaword	.LVL346
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL346
	.uaword	.LVL350
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL350
	.uaword	.LVL351
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL351
	.uaword	.LFE70
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST157:
	.uaword	.LVL243
	.uaword	.LVL256
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL256
	.uaword	.LFE70
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST158:
	.uaword	.LVL243
	.uaword	.LVL244
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL244
	.uaword	.LFE70
	.uahalf	0x3
	.byte	0x7b
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST159:
	.uaword	.LVL246
	.uaword	.LVL313
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL313
	.uaword	.LVL334
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL334
	.uaword	.LVL345
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL345
	.uaword	.LVL346
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL346
	.uaword	.LVL350
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL350
	.uaword	.LVL351
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL351
	.uaword	.LFE70
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST160:
	.uaword	.LVL246
	.uaword	.LVL256
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL256
	.uaword	.LVL283
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL334
	.uaword	.LVL339
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL340
	.uaword	.LVL345
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL346
	.uaword	.LVL350
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL367
	.uaword	.LVL369
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL376
	.uaword	.LVL379
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL386
	.uaword	.LVL388
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST161:
	.uaword	.LVL246
	.uaword	.LVL247
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL247
	.uaword	.LVL280
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL280
	.uaword	.LVL311
	.uahalf	0x22
	.byte	0x7b
	.sleb128 -1
	.byte	0x3c
	.byte	0x1e
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.uaword	Adc_kKernelDataIndex
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x38
	.byte	0x1e
	.byte	0x7b
	.sleb128 -1
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.uaword	Adc_kKernelData
	.byte	0x22
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL311
	.uaword	.LVL312
	.uahalf	0x22
	.byte	0x7b
	.sleb128 -1
	.byte	0x3c
	.byte	0x1e
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.uaword	Adc_kKernelDataIndex
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x38
	.byte	0x1e
	.byte	0x7b
	.sleb128 -1
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.uaword	Adc_kKernelData
	.byte	0x22
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL312
	.uaword	.LVL313
	.uahalf	0x22
	.byte	0x7b
	.sleb128 -1
	.byte	0x3c
	.byte	0x1e
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.uaword	Adc_kKernelDataIndex
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x38
	.byte	0x1e
	.byte	0x7b
	.sleb128 -1
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.uaword	Adc_kKernelData
	.byte	0x22
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL313
	.uaword	.LVL314
	.uahalf	0x23
	.byte	0x7b
	.sleb128 -1
	.byte	0x3c
	.byte	0x1e
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x22
	.byte	0x3
	.uaword	Adc_kKernelDataIndex
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x38
	.byte	0x1e
	.byte	0x7b
	.sleb128 -1
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.uaword	Adc_kKernelData
	.byte	0x22
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL314
	.uaword	.LVL315
	.uahalf	0x23
	.byte	0x7b
	.sleb128 -1
	.byte	0x3c
	.byte	0x1e
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x22
	.byte	0x3
	.uaword	Adc_kKernelDataIndex
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x38
	.byte	0x1e
	.byte	0x7b
	.sleb128 -1
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.uaword	Adc_kKernelData
	.byte	0x22
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL315
	.uaword	.LVL334
	.uahalf	0x23
	.byte	0x7b
	.sleb128 -1
	.byte	0x3c
	.byte	0x1e
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x22
	.byte	0x3
	.uaword	Adc_kKernelDataIndex
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x38
	.byte	0x1e
	.byte	0x7b
	.sleb128 -1
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.uaword	Adc_kKernelData
	.byte	0x22
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL334
	.uaword	.LVL339
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL339
	.uaword	.LVL340
	.uahalf	0x22
	.byte	0x7b
	.sleb128 -1
	.byte	0x3c
	.byte	0x1e
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.uaword	Adc_kKernelDataIndex
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x38
	.byte	0x1e
	.byte	0x7b
	.sleb128 -1
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.uaword	Adc_kKernelData
	.byte	0x22
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL340
	.uaword	.LVL344
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL344
	.uaword	.LVL345
	.uahalf	0x22
	.byte	0x7b
	.sleb128 -1
	.byte	0x3c
	.byte	0x1e
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.uaword	Adc_kKernelDataIndex
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x38
	.byte	0x1e
	.byte	0x7b
	.sleb128 -1
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.uaword	Adc_kKernelData
	.byte	0x22
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL345
	.uaword	.LVL346
	.uahalf	0x23
	.byte	0x7b
	.sleb128 -1
	.byte	0x3c
	.byte	0x1e
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x22
	.byte	0x3
	.uaword	Adc_kKernelDataIndex
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x38
	.byte	0x1e
	.byte	0x7b
	.sleb128 -1
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.uaword	Adc_kKernelData
	.byte	0x22
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL346
	.uaword	.LVL350
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL350
	.uaword	.LVL351
	.uahalf	0x23
	.byte	0x7b
	.sleb128 -1
	.byte	0x3c
	.byte	0x1e
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x22
	.byte	0x3
	.uaword	Adc_kKernelDataIndex
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x38
	.byte	0x1e
	.byte	0x7b
	.sleb128 -1
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.uaword	Adc_kKernelData
	.byte	0x22
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL351
	.uaword	.LVL367
	.uahalf	0x22
	.byte	0x7b
	.sleb128 -1
	.byte	0x3c
	.byte	0x1e
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.uaword	Adc_kKernelDataIndex
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x38
	.byte	0x1e
	.byte	0x7b
	.sleb128 -1
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.uaword	Adc_kKernelData
	.byte	0x22
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL367
	.uaword	.LVL368
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL368
	.uaword	.LVL376
	.uahalf	0x22
	.byte	0x7b
	.sleb128 -1
	.byte	0x3c
	.byte	0x1e
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.uaword	Adc_kKernelDataIndex
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x38
	.byte	0x1e
	.byte	0x7b
	.sleb128 -1
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.uaword	Adc_kKernelData
	.byte	0x22
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL376
	.uaword	.LVL379
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL379
	.uaword	.LVL386
	.uahalf	0x22
	.byte	0x7b
	.sleb128 -1
	.byte	0x3c
	.byte	0x1e
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.uaword	Adc_kKernelDataIndex
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x38
	.byte	0x1e
	.byte	0x7b
	.sleb128 -1
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.uaword	Adc_kKernelData
	.byte	0x22
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL386
	.uaword	.LVL388
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL388
	.uaword	.LFE70
	.uahalf	0x22
	.byte	0x7b
	.sleb128 -1
	.byte	0x3c
	.byte	0x1e
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.uaword	Adc_kKernelDataIndex
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x38
	.byte	0x1e
	.byte	0x7b
	.sleb128 -1
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.uaword	Adc_kKernelData
	.byte	0x22
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST162:
	.uaword	.LVL247
	.uaword	.LVL249
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST163:
	.uaword	.LVL248
	.uaword	.LVL256
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL256
	.uaword	.LVL283
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL334
	.uaword	.LVL339
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL340
	.uaword	.LVL345
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL346
	.uaword	.LVL350
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL367
	.uaword	.LVL369
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL376
	.uaword	.LVL379
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL386
	.uaword	.LVL388
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST164:
	.uaword	.LVL248
	.uaword	.LVL280
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL280
	.uaword	.LVL311
	.uahalf	0x22
	.byte	0x7b
	.sleb128 -1
	.byte	0x3c
	.byte	0x1e
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.uaword	Adc_kKernelDataIndex
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x38
	.byte	0x1e
	.byte	0x7b
	.sleb128 -1
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.uaword	Adc_kKernelData
	.byte	0x22
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL311
	.uaword	.LVL312
	.uahalf	0x22
	.byte	0x7b
	.sleb128 -1
	.byte	0x3c
	.byte	0x1e
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.uaword	Adc_kKernelDataIndex
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x38
	.byte	0x1e
	.byte	0x7b
	.sleb128 -1
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.uaword	Adc_kKernelData
	.byte	0x22
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL312
	.uaword	.LVL313
	.uahalf	0x22
	.byte	0x7b
	.sleb128 -1
	.byte	0x3c
	.byte	0x1e
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.uaword	Adc_kKernelDataIndex
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x38
	.byte	0x1e
	.byte	0x7b
	.sleb128 -1
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.uaword	Adc_kKernelData
	.byte	0x22
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL313
	.uaword	.LVL314
	.uahalf	0x23
	.byte	0x7b
	.sleb128 -1
	.byte	0x3c
	.byte	0x1e
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x22
	.byte	0x3
	.uaword	Adc_kKernelDataIndex
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x38
	.byte	0x1e
	.byte	0x7b
	.sleb128 -1
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.uaword	Adc_kKernelData
	.byte	0x22
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL314
	.uaword	.LVL315
	.uahalf	0x23
	.byte	0x7b
	.sleb128 -1
	.byte	0x3c
	.byte	0x1e
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x22
	.byte	0x3
	.uaword	Adc_kKernelDataIndex
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x38
	.byte	0x1e
	.byte	0x7b
	.sleb128 -1
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.uaword	Adc_kKernelData
	.byte	0x22
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL315
	.uaword	.LVL334
	.uahalf	0x23
	.byte	0x7b
	.sleb128 -1
	.byte	0x3c
	.byte	0x1e
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x22
	.byte	0x3
	.uaword	Adc_kKernelDataIndex
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x38
	.byte	0x1e
	.byte	0x7b
	.sleb128 -1
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.uaword	Adc_kKernelData
	.byte	0x22
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL334
	.uaword	.LVL339
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL339
	.uaword	.LVL340
	.uahalf	0x22
	.byte	0x7b
	.sleb128 -1
	.byte	0x3c
	.byte	0x1e
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.uaword	Adc_kKernelDataIndex
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x38
	.byte	0x1e
	.byte	0x7b
	.sleb128 -1
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.uaword	Adc_kKernelData
	.byte	0x22
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL340
	.uaword	.LVL344
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL344
	.uaword	.LVL345
	.uahalf	0x22
	.byte	0x7b
	.sleb128 -1
	.byte	0x3c
	.byte	0x1e
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.uaword	Adc_kKernelDataIndex
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x38
	.byte	0x1e
	.byte	0x7b
	.sleb128 -1
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.uaword	Adc_kKernelData
	.byte	0x22
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL345
	.uaword	.LVL346
	.uahalf	0x23
	.byte	0x7b
	.sleb128 -1
	.byte	0x3c
	.byte	0x1e
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x22
	.byte	0x3
	.uaword	Adc_kKernelDataIndex
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x38
	.byte	0x1e
	.byte	0x7b
	.sleb128 -1
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.uaword	Adc_kKernelData
	.byte	0x22
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL346
	.uaword	.LVL350
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL350
	.uaword	.LVL351
	.uahalf	0x23
	.byte	0x7b
	.sleb128 -1
	.byte	0x3c
	.byte	0x1e
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x22
	.byte	0x3
	.uaword	Adc_kKernelDataIndex
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x38
	.byte	0x1e
	.byte	0x7b
	.sleb128 -1
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.uaword	Adc_kKernelData
	.byte	0x22
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL351
	.uaword	.LVL367
	.uahalf	0x22
	.byte	0x7b
	.sleb128 -1
	.byte	0x3c
	.byte	0x1e
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.uaword	Adc_kKernelDataIndex
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x38
	.byte	0x1e
	.byte	0x7b
	.sleb128 -1
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.uaword	Adc_kKernelData
	.byte	0x22
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL367
	.uaword	.LVL368
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL368
	.uaword	.LVL376
	.uahalf	0x22
	.byte	0x7b
	.sleb128 -1
	.byte	0x3c
	.byte	0x1e
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.uaword	Adc_kKernelDataIndex
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x38
	.byte	0x1e
	.byte	0x7b
	.sleb128 -1
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.uaword	Adc_kKernelData
	.byte	0x22
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL376
	.uaword	.LVL379
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL379
	.uaword	.LVL386
	.uahalf	0x22
	.byte	0x7b
	.sleb128 -1
	.byte	0x3c
	.byte	0x1e
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.uaword	Adc_kKernelDataIndex
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x38
	.byte	0x1e
	.byte	0x7b
	.sleb128 -1
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.uaword	Adc_kKernelData
	.byte	0x22
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL386
	.uaword	.LVL388
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL388
	.uaword	.LFE70
	.uahalf	0x22
	.byte	0x7b
	.sleb128 -1
	.byte	0x3c
	.byte	0x1e
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.uaword	Adc_kKernelDataIndex
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x38
	.byte	0x1e
	.byte	0x7b
	.sleb128 -1
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.uaword	Adc_kKernelData
	.byte	0x22
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST165:
	.uaword	.LVL249
	.uaword	.LVL253
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST166:
	.uaword	.LVL250
	.uaword	.LVL256
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL256
	.uaword	.LVL283
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL334
	.uaword	.LVL339
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL340
	.uaword	.LVL345
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL346
	.uaword	.LVL350
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL367
	.uaword	.LVL369
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL376
	.uaword	.LVL379
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL386
	.uaword	.LVL388
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST167:
	.uaword	.LVL250
	.uaword	.LVL280
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL280
	.uaword	.LVL311
	.uahalf	0x22
	.byte	0x7b
	.sleb128 -1
	.byte	0x3c
	.byte	0x1e
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.uaword	Adc_kKernelDataIndex
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x38
	.byte	0x1e
	.byte	0x7b
	.sleb128 -1
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.uaword	Adc_kKernelData
	.byte	0x22
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL311
	.uaword	.LVL312
	.uahalf	0x22
	.byte	0x7b
	.sleb128 -1
	.byte	0x3c
	.byte	0x1e
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.uaword	Adc_kKernelDataIndex
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x38
	.byte	0x1e
	.byte	0x7b
	.sleb128 -1
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.uaword	Adc_kKernelData
	.byte	0x22
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL312
	.uaword	.LVL313
	.uahalf	0x22
	.byte	0x7b
	.sleb128 -1
	.byte	0x3c
	.byte	0x1e
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.uaword	Adc_kKernelDataIndex
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x38
	.byte	0x1e
	.byte	0x7b
	.sleb128 -1
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.uaword	Adc_kKernelData
	.byte	0x22
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL313
	.uaword	.LVL314
	.uahalf	0x23
	.byte	0x7b
	.sleb128 -1
	.byte	0x3c
	.byte	0x1e
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x22
	.byte	0x3
	.uaword	Adc_kKernelDataIndex
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x38
	.byte	0x1e
	.byte	0x7b
	.sleb128 -1
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.uaword	Adc_kKernelData
	.byte	0x22
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL314
	.uaword	.LVL315
	.uahalf	0x23
	.byte	0x7b
	.sleb128 -1
	.byte	0x3c
	.byte	0x1e
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x22
	.byte	0x3
	.uaword	Adc_kKernelDataIndex
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x38
	.byte	0x1e
	.byte	0x7b
	.sleb128 -1
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.uaword	Adc_kKernelData
	.byte	0x22
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL315
	.uaword	.LVL334
	.uahalf	0x23
	.byte	0x7b
	.sleb128 -1
	.byte	0x3c
	.byte	0x1e
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x22
	.byte	0x3
	.uaword	Adc_kKernelDataIndex
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x38
	.byte	0x1e
	.byte	0x7b
	.sleb128 -1
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.uaword	Adc_kKernelData
	.byte	0x22
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL334
	.uaword	.LVL339
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL339
	.uaword	.LVL340
	.uahalf	0x22
	.byte	0x7b
	.sleb128 -1
	.byte	0x3c
	.byte	0x1e
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.uaword	Adc_kKernelDataIndex
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x38
	.byte	0x1e
	.byte	0x7b
	.sleb128 -1
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.uaword	Adc_kKernelData
	.byte	0x22
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL340
	.uaword	.LVL344
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL344
	.uaword	.LVL345
	.uahalf	0x22
	.byte	0x7b
	.sleb128 -1
	.byte	0x3c
	.byte	0x1e
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.uaword	Adc_kKernelDataIndex
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x38
	.byte	0x1e
	.byte	0x7b
	.sleb128 -1
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.uaword	Adc_kKernelData
	.byte	0x22
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL345
	.uaword	.LVL346
	.uahalf	0x23
	.byte	0x7b
	.sleb128 -1
	.byte	0x3c
	.byte	0x1e
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x22
	.byte	0x3
	.uaword	Adc_kKernelDataIndex
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x38
	.byte	0x1e
	.byte	0x7b
	.sleb128 -1
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.uaword	Adc_kKernelData
	.byte	0x22
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL346
	.uaword	.LVL350
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL350
	.uaword	.LVL351
	.uahalf	0x23
	.byte	0x7b
	.sleb128 -1
	.byte	0x3c
	.byte	0x1e
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x22
	.byte	0x3
	.uaword	Adc_kKernelDataIndex
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x38
	.byte	0x1e
	.byte	0x7b
	.sleb128 -1
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.uaword	Adc_kKernelData
	.byte	0x22
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL351
	.uaword	.LVL367
	.uahalf	0x22
	.byte	0x7b
	.sleb128 -1
	.byte	0x3c
	.byte	0x1e
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.uaword	Adc_kKernelDataIndex
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x38
	.byte	0x1e
	.byte	0x7b
	.sleb128 -1
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.uaword	Adc_kKernelData
	.byte	0x22
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL367
	.uaword	.LVL368
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL368
	.uaword	.LVL376
	.uahalf	0x22
	.byte	0x7b
	.sleb128 -1
	.byte	0x3c
	.byte	0x1e
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.uaword	Adc_kKernelDataIndex
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x38
	.byte	0x1e
	.byte	0x7b
	.sleb128 -1
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.uaword	Adc_kKernelData
	.byte	0x22
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL376
	.uaword	.LVL379
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL379
	.uaword	.LVL386
	.uahalf	0x22
	.byte	0x7b
	.sleb128 -1
	.byte	0x3c
	.byte	0x1e
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.uaword	Adc_kKernelDataIndex
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x38
	.byte	0x1e
	.byte	0x7b
	.sleb128 -1
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.uaword	Adc_kKernelData
	.byte	0x22
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL386
	.uaword	.LVL388
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL388
	.uaword	.LFE70
	.uahalf	0x22
	.byte	0x7b
	.sleb128 -1
	.byte	0x3c
	.byte	0x1e
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.uaword	Adc_kKernelDataIndex
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x38
	.byte	0x1e
	.byte	0x7b
	.sleb128 -1
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.uaword	Adc_kKernelData
	.byte	0x22
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST168:
	.uaword	.LVL251
	.uaword	.LVL252
	.uahalf	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST169:
	.uaword	.LVL254
	.uaword	.LVL313
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL313
	.uaword	.LVL334
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL334
	.uaword	.LVL345
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL345
	.uaword	.LVL346
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL346
	.uaword	.LVL350
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL350
	.uaword	.LVL351
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL351
	.uaword	.LFE70
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST170:
	.uaword	.LVL255
	.uaword	.LVL256
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL256
	.uaword	.LVL283
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL334
	.uaword	.LVL339
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL340
	.uaword	.LVL345
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL346
	.uaword	.LVL350
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL367
	.uaword	.LVL369
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL376
	.uaword	.LVL379
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL386
	.uaword	.LVL388
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST171:
	.uaword	.LVL255
	.uaword	.LVL313
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL313
	.uaword	.LVL334
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL334
	.uaword	.LVL345
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL345
	.uaword	.LVL346
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL346
	.uaword	.LVL350
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL350
	.uaword	.LVL351
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL351
	.uaword	.LFE70
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST172:
	.uaword	.LVL263
	.uaword	.LVL264
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL264
	.uaword	.LVL266
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL266
	.uaword	.LVL270
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL270
	.uaword	.LVL271
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL271
	.uaword	.LVL273
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL334
	.uaword	.LVL339
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL340
	.uaword	.LVL345
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL346
	.uaword	.LVL348
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL348
	.uaword	.LVL350
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL386
	.uaword	.LVL388
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST173:
	.uaword	.LVL257
	.uaword	.LVL259
	.uahalf	0x2
	.byte	0x8f
	.sleb128 36
	.uaword	.LVL259
	.uaword	.LVL261
	.uahalf	0x2
	.byte	0x8f
	.sleb128 40
	.uaword	.LVL261
	.uaword	.LVL262
	.uahalf	0x2
	.byte	0x8f
	.sleb128 44
	.uaword	.LVL262
	.uaword	.LVL265
	.uahalf	0x2
	.byte	0x8f
	.sleb128 36
	.uaword	.LVL265
	.uaword	.LVL267
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL267
	.uaword	.LVL268
	.uahalf	0x2
	.byte	0x8f
	.sleb128 40
	.uaword	.LVL269
	.uaword	.LVL273
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL334
	.uaword	.LVL339
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL340
	.uaword	.LVL345
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL346
	.uaword	.LVL347
	.uahalf	0x2
	.byte	0x8f
	.sleb128 36
	.uaword	.LVL347
	.uaword	.LVL349
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL349
	.uaword	.LVL350
	.uahalf	0x2
	.byte	0x8f
	.sleb128 40
	.uaword	.LVL376
	.uaword	.LVL377
	.uahalf	0x2
	.byte	0x8f
	.sleb128 36
	.uaword	.LVL377
	.uaword	.LVL379
	.uahalf	0x2
	.byte	0x8f
	.sleb128 40
	.uaword	.LVL386
	.uaword	.LVL388
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST174:
	.uaword	.LVL257
	.uaword	.LVL265
	.uahalf	0x2
	.byte	0x83
	.sleb128 55
	.uaword	.LVL346
	.uaword	.LVL347
	.uahalf	0x2
	.byte	0x83
	.sleb128 55
	.uaword	.LVL347
	.uaword	.LVL350
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL376
	.uaword	.LVL379
	.uahalf	0x2
	.byte	0x83
	.sleb128 55
	.uaword	0
	.uaword	0
.LLST175:
	.uaword	.LVL255
	.uaword	.LVL265
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	.LVL265
	.uaword	.LVL268
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL269
	.uaword	.LVL297
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL334
	.uaword	.LVL345
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL346
	.uaword	.LVL347
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	.LVL347
	.uaword	.LVL350
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL367
	.uaword	.LVL369
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL376
	.uaword	.LVL378
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	.LVL378
	.uaword	.LVL379
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL386
	.uaword	.LVL388
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST176:
	.uaword	.LVL257
	.uaword	.LVL258
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL258
	.uaword	.LVL260
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL260
	.uaword	.LVL262
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL262
	.uaword	.LVL265
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL265
	.uaword	.LVL269
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL269
	.uaword	.LVL272
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL272
	.uaword	.LVL273
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL334
	.uaword	.LVL339
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL340
	.uaword	.LVL345
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL346
	.uaword	.LVL347
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL347
	.uaword	.LVL350
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL376
	.uaword	.LVL377
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL377
	.uaword	.LVL379
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL386
	.uaword	.LVL388
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST177:
	.uaword	.LVL274
	.uaword	.LVL276-1
	.uahalf	0x2
	.byte	0x8d
	.sleb128 36
	.uaword	.LVL276-1
	.uaword	.LVL281
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL367
	.uaword	.LVL369
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST178:
	.uaword	.LVL274
	.uaword	.LVL275
	.uahalf	0xd
	.byte	0x79
	.sleb128 0
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x8
	.byte	0x3c
	.byte	0x1e
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL275
	.uaword	.LVL276-1
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST179:
	.uaword	.LVL277
	.uaword	.LVL281
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL367
	.uaword	.LVL369
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST180:
	.uaword	.LVL277
	.uaword	.LVL281
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL367
	.uaword	.LVL369
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST181:
	.uaword	.LVL277
	.uaword	.LVL281
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL367
	.uaword	.LVL369
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST182:
	.uaword	.LVL278
	.uaword	.LVL279
	.uahalf	0x2
	.byte	0x8f
	.sleb128 34
	.uaword	0
	.uaword	0
.LLST183:
	.uaword	.LVL278
	.uaword	.LVL281
	.uahalf	0x3
	.byte	0x8
	.byte	0xff
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST184:
	.uaword	.LVL282
	.uaword	.LVL283
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST185:
	.uaword	.LVL282
	.uaword	.LVL313
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL313
	.uaword	.LVL334
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL339
	.uaword	.LVL340
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL350
	.uaword	.LVL351
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL351
	.uaword	.LVL367
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL369
	.uaword	.LVL376
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL379
	.uaword	.LVL386
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL388
	.uaword	.LFE70
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST186:
	.uaword	.LVL284
	.uaword	.LVL334
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL339
	.uaword	.LVL340
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL350
	.uaword	.LVL367
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL369
	.uaword	.LVL376
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL379
	.uaword	.LVL386
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL388
	.uaword	.LFE70
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST187:
	.uaword	.LVL284
	.uaword	.LVL288
	.uahalf	0x1
	.byte	0x63
	.uaword	0
	.uaword	0
.LLST188:
	.uaword	.LVL284
	.uaword	.LVL309
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL339
	.uaword	.LVL340-1
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL351
	.uaword	.LVL357-1
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL379
	.uaword	.LVL383-1
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL392
	.uaword	.LVL393-1
	.uahalf	0x1
	.byte	0x50
	.uaword	0
	.uaword	0
.LLST189:
	.uaword	.LVL285
	.uaword	.LVL288
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST190:
	.uaword	.LVL291
	.uaword	.LVL295
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST191:
	.uaword	.LVL288
	.uaword	.LVL292
	.uahalf	0x2
	.byte	0x82
	.sleb128 0
	.uaword	.LVL292
	.uaword	.LVL293
	.uahalf	0x2
	.byte	0x82
	.sleb128 -4
	.uaword	0
	.uaword	0
.LLST192:
	.uaword	.LVL288
	.uaword	.LVL292
	.uahalf	0x2
	.byte	0x82
	.sleb128 1
	.uaword	.LVL292
	.uaword	.LVL293
	.uahalf	0x2
	.byte	0x82
	.sleb128 -3
	.uaword	.LVL293
	.uaword	.LVL298
	.uahalf	0x4
	.byte	0x73
	.sleb128 -128
	.byte	0x9f
	.uaword	.LVL339
	.uaword	.LVL340-1
	.uahalf	0x4
	.byte	0x73
	.sleb128 -128
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST193:
	.uaword	.LVL289
	.uaword	.LVL292
	.uahalf	0x2
	.byte	0x82
	.sleb128 2
	.uaword	.LVL292
	.uaword	.LVL293
	.uahalf	0x2
	.byte	0x82
	.sleb128 -2
	.uaword	.LVL293
	.uaword	.LVL301
	.uahalf	0x4
	.byte	0x72
	.sleb128 -160
	.byte	0x9f
	.uaword	.LVL339
	.uaword	.LVL340-1
	.uahalf	0x4
	.byte	0x72
	.sleb128 -160
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST194:
	.uaword	.LVL286
	.uaword	.LVL287
	.uahalf	0x2
	.byte	0x83
	.sleb128 56
	.uaword	.LVL287
	.uaword	.LVL309
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL339
	.uaword	.LVL340-1
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL351
	.uaword	.LVL357-1
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL379
	.uaword	.LVL383-1
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL392
	.uaword	.LVL393-1
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST195:
	.uaword	.LVL288
	.uaword	.LVL290
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL290
	.uaword	.LVL294
	.uahalf	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST196:
	.uaword	.LVL296
	.uaword	.LVL297
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST197:
	.uaword	.LVL296
	.uaword	.LVL313
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL313
	.uaword	.LVL334
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL350
	.uaword	.LVL351
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL351
	.uaword	.LVL367
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL369
	.uaword	.LVL376
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL379
	.uaword	.LVL386
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL388
	.uaword	.LFE70
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST198:
	.uaword	.LVL296
	.uaword	.LVL334
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL350
	.uaword	.LVL367
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL369
	.uaword	.LVL376
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL379
	.uaword	.LVL386
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL388
	.uaword	.LFE70
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST199:
	.uaword	.LVL296
	.uaword	.LVL334
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL350
	.uaword	.LVL367
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL369
	.uaword	.LVL376
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL379
	.uaword	.LVL386
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL388
	.uaword	.LFE70
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST200:
	.uaword	.LVL299
	.uaword	.LVL334
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL350
	.uaword	.LVL367
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL369
	.uaword	.LVL376
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL379
	.uaword	.LVL386
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL388
	.uaword	.LFE70
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST201:
	.uaword	.LVL302
	.uaword	.LVL308
	.uahalf	0x1
	.byte	0x63
	.uaword	0
	.uaword	0
.LLST202:
	.uaword	.LVL300
	.uaword	.LVL334
	.uahalf	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.uaword	.LVL350
	.uaword	.LVL367
	.uahalf	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.uaword	.LVL369
	.uaword	.LVL376
	.uahalf	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.uaword	.LVL379
	.uaword	.LVL386
	.uahalf	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.uaword	.LVL388
	.uaword	.LFE70
	.uahalf	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST203:
	.uaword	.LVL300
	.uaword	.LVL334
	.uahalf	0x3
	.byte	0x8
	.byte	0x40
	.byte	0x9f
	.uaword	.LVL350
	.uaword	.LVL367
	.uahalf	0x3
	.byte	0x8
	.byte	0x40
	.byte	0x9f
	.uaword	.LVL369
	.uaword	.LVL376
	.uahalf	0x3
	.byte	0x8
	.byte	0x40
	.byte	0x9f
	.uaword	.LVL379
	.uaword	.LVL386
	.uahalf	0x3
	.byte	0x8
	.byte	0x40
	.byte	0x9f
	.uaword	.LVL388
	.uaword	.LFE70
	.uahalf	0x3
	.byte	0x8
	.byte	0x40
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST204:
	.uaword	.LVL303
	.uaword	.LVL304
	.uahalf	0x3
	.byte	0x8
	.byte	0x80
	.byte	0x9f
	.uaword	.LVL304
	.uaword	.LVL305
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL305
	.uaword	.LVL307
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST205:
	.uaword	.LVL302
	.uaword	.LVL303
	.uahalf	0x2
	.byte	0x8c
	.sleb128 56
	.uaword	.LVL303
	.uaword	.LVL309
	.uahalf	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL351
	.uaword	.LVL354
	.uahalf	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL379
	.uaword	.LVL383-1
	.uahalf	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL392
	.uaword	.LVL393-1
	.uahalf	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST206:
	.uaword	.LVL302
	.uaword	.LVL304
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL304
	.uaword	.LVL306
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL306
	.uaword	.LVL307
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST207:
	.uaword	.LVL309
	.uaword	.LVL313
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL313
	.uaword	.LVL334
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL350
	.uaword	.LVL351
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST208:
	.uaword	.LVL317
	.uaword	.LVL318
	.uahalf	0x1d
	.byte	0x7f
	.sleb128 0
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x8
	.byte	0x3c
	.byte	0x1e
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x32
	.byte	0x24
	.byte	0x72
	.sleb128 1
	.byte	0x32
	.byte	0x24
	.byte	0x83
	.sleb128 0
	.byte	0x22
	.byte	0x6
	.byte	0x22
	.byte	0x6
	.byte	0x23
	.uleb128 0x8
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL320
	.uaword	.LVL321
	.uahalf	0x1d
	.byte	0x7f
	.sleb128 0
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x8
	.byte	0x3c
	.byte	0x1e
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x32
	.byte	0x24
	.byte	0x72
	.sleb128 1
	.byte	0x32
	.byte	0x24
	.byte	0x83
	.sleb128 0
	.byte	0x22
	.byte	0x6
	.byte	0x22
	.byte	0x6
	.byte	0x23
	.uleb128 0x8
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL323
	.uaword	.LVL324
	.uahalf	0x1d
	.byte	0x7f
	.sleb128 0
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x8
	.byte	0x3c
	.byte	0x1e
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x32
	.byte	0x24
	.byte	0x72
	.sleb128 1
	.byte	0x32
	.byte	0x24
	.byte	0x83
	.sleb128 0
	.byte	0x22
	.byte	0x6
	.byte	0x22
	.byte	0x6
	.byte	0x23
	.uleb128 0x8
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL324
	.uaword	.LVL325
	.uahalf	0x21
	.byte	0x7f
	.sleb128 0
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x8
	.byte	0x3c
	.byte	0x1e
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x32
	.byte	0x24
	.byte	0x72
	.sleb128 1
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.uaword	Adc_ConfigPtr
	.byte	0x6
	.byte	0x22
	.byte	0x6
	.byte	0x22
	.byte	0x6
	.byte	0x23
	.uleb128 0x8
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST209:
	.uaword	.LVL316
	.uaword	.LVL334
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL350
	.uaword	.LVL351
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST210:
	.uaword	.LVL316
	.uaword	.LVL319
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL319
	.uaword	.LVL322
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL322
	.uaword	.LVL326
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL326
	.uaword	.LVL334
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL350
	.uaword	.LVL351
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST211:
	.uaword	.LVL327
	.uaword	.LVL332
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST212:
	.uaword	.LVL310
	.uaword	.LVL325
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST213:
	.uaword	.LVL328
	.uaword	.LVL329
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL329
	.uaword	.LVL330
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL330
	.uaword	.LVL331
	.uahalf	0x3
	.byte	0x8f
	.sleb128 132
	.uaword	.LVL331
	.uaword	.LVL333
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST215:
	.uaword	.LVL310
	.uaword	.LVL313
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL313
	.uaword	.LVL334
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL350
	.uaword	.LVL351
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST216:
	.uaword	.LVL351
	.uaword	.LVL367
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL369
	.uaword	.LVL376
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL379
	.uaword	.LVL386
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL388
	.uaword	.LFE70
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST217:
	.uaword	.LVL352
	.uaword	.LVL359
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST218:
	.uaword	.LVL353
	.uaword	.LVL355
	.uahalf	0xa
	.byte	0x72
	.sleb128 0
	.byte	0x31
	.byte	0x25
	.byte	0x33
	.byte	0x1a
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL355
	.uaword	.LVL357-1
	.uahalf	0xc
	.byte	0x7f
	.sleb128 4
	.byte	0x94
	.byte	0x1
	.byte	0x31
	.byte	0x25
	.byte	0x33
	.byte	0x1a
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST219:
	.uaword	.LVL356
	.uaword	.LVL358
	.uahalf	0xa
	.byte	0x7a
	.sleb128 0
	.byte	0x31
	.byte	0x25
	.byte	0x33
	.byte	0x1a
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST220:
	.uaword	.LVL353
	.uaword	.LVL355
	.uahalf	0x7
	.byte	0x72
	.sleb128 0
	.byte	0x31
	.byte	0x1a
	.byte	0x34
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL355
	.uaword	.LVL357-1
	.uahalf	0x9
	.byte	0x7f
	.sleb128 4
	.byte	0x94
	.byte	0x1
	.byte	0x31
	.byte	0x1a
	.byte	0x34
	.byte	0x24
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST221:
	.uaword	.LVL356
	.uaword	.LVL358
	.uahalf	0x7
	.byte	0x7a
	.sleb128 0
	.byte	0x31
	.byte	0x1a
	.byte	0x34
	.byte	0x24
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST222:
	.uaword	.LVL360
	.uaword	.LVL367
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST223:
	.uaword	.LVL361
	.uaword	.LVL362
	.uahalf	0xa
	.byte	0x72
	.sleb128 0
	.byte	0x31
	.byte	0x25
	.byte	0x33
	.byte	0x1a
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL362
	.uaword	.LVL364-1
	.uahalf	0xc
	.byte	0x7f
	.sleb128 4
	.byte	0x94
	.byte	0x1
	.byte	0x31
	.byte	0x25
	.byte	0x33
	.byte	0x1a
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST224:
	.uaword	.LVL363
	.uaword	.LVL365
	.uahalf	0xa
	.byte	0x7a
	.sleb128 0
	.byte	0x31
	.byte	0x25
	.byte	0x33
	.byte	0x1a
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST225:
	.uaword	.LVL361
	.uaword	.LVL362
	.uahalf	0x7
	.byte	0x72
	.sleb128 0
	.byte	0x31
	.byte	0x1a
	.byte	0x34
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL362
	.uaword	.LVL364-1
	.uahalf	0x9
	.byte	0x7f
	.sleb128 4
	.byte	0x94
	.byte	0x1
	.byte	0x31
	.byte	0x1a
	.byte	0x34
	.byte	0x24
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST226:
	.uaword	.LVL363
	.uaword	.LVL365
	.uahalf	0x7
	.byte	0x7a
	.sleb128 0
	.byte	0x31
	.byte	0x1a
	.byte	0x34
	.byte	0x24
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST227:
	.uaword	.LVL370
	.uaword	.LVL373-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL388
	.uaword	.LVL389-1
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST228:
	.uaword	.LVL371
	.uaword	.LVL376
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL388
	.uaword	.LVL392
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST229:
	.uaword	.LVL372
	.uaword	.LVL376
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL388
	.uaword	.LVL392
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST230:
	.uaword	.LVL380
	.uaword	.LVL383-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL392
	.uaword	.LVL393-1
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST231:
	.uaword	.LVL381
	.uaword	.LVL386
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL392
	.uaword	.LFE70
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST232:
	.uaword	.LVL382
	.uaword	.LVL386
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL392
	.uaword	.LFE70
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST233:
	.uaword	.LVL335
	.uaword	.LVL339
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL340
	.uaword	.LVL345
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL386
	.uaword	.LVL388
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST234:
	.uaword	.LVL335
	.uaword	.LVL339
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL340
	.uaword	.LVL345
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL386
	.uaword	.LVL388
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST235:
	.uaword	.LVL335
	.uaword	.LVL339
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL340
	.uaword	.LVL345
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL386
	.uaword	.LVL388
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST236:
	.uaword	.LVL336
	.uaword	.LVL337
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL337
	.uaword	.LVL338
	.uahalf	0x2
	.byte	0x82
	.sleb128 24
	.uaword	0
	.uaword	0
.LLST237:
	.uaword	.LVL336
	.uaword	.LVL339
	.uahalf	0x3
	.byte	0x8
	.byte	0xff
	.byte	0x9f
	.uaword	.LVL340
	.uaword	.LVL343
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST238:
	.uaword	.LVL341
	.uaword	.LVL342
	.uahalf	0x2
	.byte	0x82
	.sleb128 26
	.uaword	.LVL342
	.uaword	.LVL345
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL387
	.uaword	.LVL388
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST239:
	.uaword	.LVL336
	.uaword	.LVL337
	.uahalf	0xd
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x8
	.byte	0x3c
	.byte	0x1e
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL340
	.uaword	.LVL341
	.uahalf	0xd
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x8
	.byte	0x3c
	.byte	0x1e
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL341
	.uaword	.LVL342
	.uahalf	0x1e
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x8
	.byte	0x3c
	.byte	0x1e
	.byte	0x7b
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.uaword	Adc_ConfigPtr
	.byte	0x6
	.byte	0x22
	.byte	0x6
	.byte	0x7c
	.sleb128 0
	.byte	0x22
	.byte	0x6
	.byte	0x23
	.uleb128 0x8
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST240:
	.uaword	.LVL396
	.uaword	.LVL397-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL397-1
	.uaword	.LVL400
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL400
	.uaword	.LVL431
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL431
	.uaword	.LVL434
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL434
	.uaword	.LVL438
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL438
	.uaword	.LFE19
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST241:
	.uaword	.LVL433
	.uaword	.LVL434
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL438
	.uaword	.LFE19
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST242:
	.uaword	.LVL398
	.uaword	.LVL399
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL399
	.uaword	.LVL431
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL431
	.uaword	.LVL432-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL432-1
	.uaword	.LFE19
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST243:
	.uaword	.LVL399
	.uaword	.LVL400
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL400
	.uaword	.LVL403
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL403
	.uaword	.LVL404
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL404
	.uaword	.LVL409
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL409
	.uaword	.LVL410
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL410
	.uaword	.LVL411
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL411
	.uaword	.LVL412
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL412
	.uaword	.LVL413
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL413
	.uaword	.LVL414
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL414
	.uaword	.LVL415
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL415
	.uaword	.LVL416
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	.LVL416
	.uaword	.LVL417
	.uahalf	0x2
	.byte	0x37
	.byte	0x9f
	.uaword	.LVL417
	.uaword	.LVL418
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	.LVL418
	.uaword	.LVL419
	.uahalf	0x2
	.byte	0x39
	.byte	0x9f
	.uaword	.LVL419
	.uaword	.LVL420
	.uahalf	0x2
	.byte	0x3a
	.byte	0x9f
	.uaword	.LVL420
	.uaword	.LVL421
	.uahalf	0x2
	.byte	0x3b
	.byte	0x9f
	.uaword	.LVL421
	.uaword	.LVL431
	.uahalf	0x2
	.byte	0x3c
	.byte	0x9f
	.uaword	.LVL435
	.uaword	.LVL436
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST244:
	.uaword	.LVL405
	.uaword	.LVL406
	.uahalf	0x7
	.byte	0x73
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x84
	.sleb128 0
	.byte	0x22
	.uaword	0
	.uaword	0
.LLST245:
	.uaword	.LVL405
	.uaword	.LVL407
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST246:
	.uaword	.LVL405
	.uaword	.LVL407
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST247:
	.uaword	.LVL405
	.uaword	.LVL407
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST248:
	.uaword	.LVL422
	.uaword	.LVL430
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL430
	.uaword	.LVL431
	.uahalf	0x3
	.byte	0x8f
	.sleb128 -56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST249:
	.uaword	.LVL421
	.uaword	.LVL422
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL422
	.uaword	.LVL423
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL423
	.uaword	.LVL429
	.uahalf	0x3
	.byte	0x76
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST250:
	.uaword	.LVL425
	.uaword	.LVL426
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL426
	.uaword	.LVL427
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL427
	.uaword	.LVL428
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL428
	.uaword	.LVL431
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST251:
	.uaword	.LVL422
	.uaword	.LVL424
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL424
	.uaword	.LVL425
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL425
	.uaword	.LVL431
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST252:
	.uaword	.LVL435
	.uaword	.LVL438
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xf00200a0
	.uaword	0
	.uaword	0
.LLST253:
	.uaword	.LVL437
	.uaword	.LVL438
	.uahalf	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST254:
	.uaword	.LVL439
	.uaword	.LVL440-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL440-1
	.uaword	.LFE20
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST255:
	.uaword	.LVL439
	.uaword	.LVL440-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL440-1
	.uaword	.LFE20
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST256:
	.uaword	.LVL440
	.uaword	.LVL442
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST257:
	.uaword	.LVL440
	.uaword	.LVL443
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST258:
	.uaword	.LVL440
	.uaword	.LVL443
	.uahalf	0x7
	.byte	0x78
	.sleb128 0
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST259:
	.uaword	.LVL441
	.uaword	.LVL444-1
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST260:
	.uaword	.LVL441
	.uaword	.LVL442
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST262:
	.uaword	.LVL447
	.uaword	.LVL449
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL449
	.uaword	.LVL453
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST263:
	.uaword	.LVL447
	.uaword	.LVL448
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL448
	.uaword	.LVL466
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL466
	.uaword	.LFE21
	.uahalf	0x5
	.byte	0x3
	.uaword	Adc_ConfigPtr
	.uaword	0
	.uaword	0
.LLST264:
	.uaword	.LVL454
	.uaword	.LVL462
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL462
	.uaword	.LVL463
	.uahalf	0x3
	.byte	0x8f
	.sleb128 -56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST265:
	.uaword	.LVL452
	.uaword	.LVL454
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL454
	.uaword	.LVL455
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL455
	.uaword	.LVL461
	.uahalf	0x3
	.byte	0x76
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST266:
	.uaword	.LVL457
	.uaword	.LVL458
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL458
	.uaword	.LVL459
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL459
	.uaword	.LVL460
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL460
	.uaword	.LVL463
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST267:
	.uaword	.LVL454
	.uaword	.LVL456
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL456
	.uaword	.LVL457
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL457
	.uaword	.LVL463
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST268:
	.uaword	.LVL467
	.uaword	.LVL468-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL468-1
	.uaword	.LFE22
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST269:
	.uaword	.LVL469
	.uaword	.LVL470
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL470
	.uaword	.LFE22
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST270:
	.uaword	.LVL475
	.uaword	.LVL476-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL476-1
	.uaword	.LFE23
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST271:
	.uaword	.LVL476
	.uaword	.LVL479
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST272:
	.uaword	.LVL480
	.uaword	.LVL481
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL481
	.uaword	.LVL490-1
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST273:
	.uaword	.LVL477
	.uaword	.LVL489
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL489
	.uaword	.LVL490-1
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST274:
	.uaword	.LVL478
	.uaword	.LVL479
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST275:
	.uaword	.LVL478
	.uaword	.LVL489
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL489
	.uaword	.LVL490-1
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST276:
	.uaword	.LVL480
	.uaword	.LVL488
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL488
	.uaword	.LFE23
	.uahalf	0x5
	.byte	0x78
	.sleb128 0
	.byte	0x4f
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST277:
	.uaword	.LVL480
	.uaword	.LVL490-1
	.uahalf	0x1
	.byte	0x50
	.uaword	0
	.uaword	0
.LLST278:
	.uaword	.LVL482
	.uaword	.LVL484
	.uahalf	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST279:
	.uaword	.LVL483
	.uaword	.LVL488
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL488
	.uaword	.LFE23
	.uahalf	0x5
	.byte	0x78
	.sleb128 0
	.byte	0x4f
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST280:
	.uaword	.LVL483
	.uaword	.LVL490-1
	.uahalf	0x1
	.byte	0x50
	.uaword	0
	.uaword	0
.LLST281:
	.uaword	.LVL484
	.uaword	.LVL490-1
	.uahalf	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST282:
	.uaword	.LVL485
	.uaword	.LVL488
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL488
	.uaword	.LFE23
	.uahalf	0x5
	.byte	0x78
	.sleb128 0
	.byte	0x4f
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST283:
	.uaword	.LVL485
	.uaword	.LVL490-1
	.uahalf	0x1
	.byte	0x50
	.uaword	0
	.uaword	0
.LLST284:
	.uaword	.LVL486
	.uaword	.LVL487
	.uahalf	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST285:
	.uaword	.LVL491
	.uaword	.LVL492-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL492-1
	.uaword	.LFE24
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST286:
	.uaword	.LVL493
	.uaword	.LVL494
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL494
	.uaword	.LFE24
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST287:
	.uaword	.LVL499
	.uaword	.LVL500-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL500-1
	.uaword	.LFE25
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST288:
	.uaword	.LVL499
	.uaword	.LVL500-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL500-1
	.uaword	.LFE25
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST289:
	.uaword	.LVL504
	.uaword	.LVL507-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL507-1
	.uaword	.LVL512
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST290:
	.uaword	.LVL511
	.uaword	.LVL514
	.uahalf	0x8
	.byte	0x7f
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x83
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST291:
	.uaword	.LVL500
	.uaword	.LVL503
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST292:
	.uaword	.LVL510
	.uaword	.LVL514
	.uahalf	0x2
	.byte	0x82
	.sleb128 52
	.uaword	0
	.uaword	0
.LLST293:
	.uaword	.LVL505
	.uaword	.LVL507-1
	.uahalf	0x2
	.byte	0x72
	.sleb128 52
	.uaword	.LVL507-1
	.uaword	.LFE25
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST294:
	.uaword	.LVL506
	.uaword	.LVL507-1
	.uahalf	0x2
	.byte	0x72
	.sleb128 56
	.uaword	.LVL507-1
	.uaword	.LFE25
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST295:
	.uaword	.LVL511
	.uaword	.LVL514
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL514
	.uaword	.LVL515
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL515
	.uaword	.LVL516
	.uahalf	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST296:
	.uaword	.LVL500
	.uaword	.LVL502
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST297:
	.uaword	.LVL500
	.uaword	.LVL502
	.uahalf	0x7
	.byte	0x78
	.sleb128 0
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST298:
	.uaword	.LVL501
	.uaword	.LVL507-1
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST299:
	.uaword	.LVL502
	.uaword	.LVL503
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST300:
	.uaword	.LVL502
	.uaword	.LVL507-1
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST301:
	.uaword	.LVL501
	.uaword	.LVL502
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST302:
	.uaword	.LVL507
	.uaword	.LVL518
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST304:
	.uaword	.LVL507
	.uaword	.LVL514
	.uahalf	0x2
	.byte	0x8c
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST305:
	.uaword	.LVL508
	.uaword	.LVL524-1
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST306:
	.uaword	.LVL508
	.uaword	.LVL518
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST308:
	.uaword	.LVL508
	.uaword	.LVL514
	.uahalf	0x2
	.byte	0x8c
	.sleb128 12
	.uaword	0
	.uaword	0
.LLST309:
	.uaword	.LVL509
	.uaword	.LVL513
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST310:
	.uaword	.LVL517
	.uaword	.LVL518
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST311:
	.uaword	.LVL517
	.uaword	.LVL522
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL522
	.uaword	.LVL523
	.uahalf	0x3
	.byte	0x8c
	.sleb128 -16
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST312:
	.uaword	.LVL519
	.uaword	.LVL523
	.uahalf	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST313:
	.uaword	.LVL520
	.uaword	.LVL522
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL522
	.uaword	.LVL523
	.uahalf	0x3
	.byte	0x8c
	.sleb128 -16
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST314:
	.uaword	.LVL521
	.uaword	.LVL523
	.uahalf	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST315:
	.uaword	.LVL525
	.uaword	.LVL526-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL526-1
	.uaword	.LFE26
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST316:
	.uaword	.LVL527
	.uaword	.LVL528
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL528
	.uaword	.LFE26
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST317:
	.uaword	.LVL533
	.uaword	.LVL534-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL534-1
	.uaword	.LFE27
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST318:
	.uaword	.LVL535
	.uaword	.LVL536
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL536
	.uaword	.LFE27
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST319:
	.uaword	.LVL541
	.uaword	.LVL542-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL542-1
	.uaword	.LFE28
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST320:
	.uaword	.LVL542
	.uaword	.LVL544
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST321:
	.uaword	.LVL542
	.uaword	.LVL545
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST322:
	.uaword	.LVL542
	.uaword	.LVL545
	.uahalf	0x7
	.byte	0x78
	.sleb128 0
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST323:
	.uaword	.LVL543
	.uaword	.LVL544
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST324:
	.uaword	.LVL543
	.uaword	.LVL545
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST325:
	.uaword	.LVL548
	.uaword	.LVL549-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL549-1
	.uaword	.LFE29
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST326:
	.uaword	.LVL549
	.uaword	.LVL551
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST327:
	.uaword	.LVL549
	.uaword	.LVL552
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST328:
	.uaword	.LVL549
	.uaword	.LVL552
	.uahalf	0x7
	.byte	0x78
	.sleb128 0
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST329:
	.uaword	.LVL550
	.uaword	.LVL551
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST330:
	.uaword	.LVL550
	.uaword	.LVL552
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST331:
	.uaword	.LVL555
	.uaword	.LVL556-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL556-1
	.uaword	.LFE30
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST332:
	.uaword	.LVL556
	.uaword	.LVL558
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST333:
	.uaword	.LVL556
	.uaword	.LVL562
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST334:
	.uaword	.LVL556
	.uaword	.LVL562
	.uahalf	0x7
	.byte	0x78
	.sleb128 0
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST335:
	.uaword	.LVL557
	.uaword	.LVL559
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST336:
	.uaword	.LVL557
	.uaword	.LVL558
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST338:
	.uaword	.LVL560
	.uaword	.LVL562
	.uahalf	0x5
	.byte	0x78
	.sleb128 0
	.byte	0x4f
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST339:
	.uaword	.LVL561
	.uaword	.LVL566-1
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST340:
	.uaword	.LVL561
	.uaword	.LVL566-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 16
	.uaword	0
	.uaword	0
.LLST341:
	.uaword	.LVL563
	.uaword	.LVL566-1
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST342:
	.uaword	.LVL563
	.uaword	.LVL566-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 12
	.uaword	0
	.uaword	0
.LLST343:
	.uaword	.LVL564
	.uaword	.LVL566-1
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST344:
	.uaword	.LVL564
	.uaword	.LVL566-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST345:
	.uaword	.LVL568
	.uaword	.LVL569-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL569-1
	.uaword	.LFE31
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST346:
	.uaword	.LVL568
	.uaword	.LVL569-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL569-1
	.uaword	.LFE31
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST347:
	.uaword	.LVL577
	.uaword	.LVL585
	.uahalf	0x2
	.byte	0x82
	.sleb128 52
	.uaword	.LVL585
	.uaword	.LVL588
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL588
	.uaword	.LVL589
	.uahalf	0x2
	.byte	0x7f
	.sleb128 52
	.uaword	.LVL589
	.uaword	.LVL590-1
	.uahalf	0x2
	.byte	0x82
	.sleb128 52
	.uaword	.LVL590-1
	.uaword	.LVL590
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL590
	.uaword	.LVL591
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL591
	.uaword	.LFE31
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST348:
	.uaword	.LVL569
	.uaword	.LVL573-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST349:
	.uaword	.LVL569
	.uaword	.LVL571
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST350:
	.uaword	.LVL569
	.uaword	.LVL571
	.uahalf	0x7
	.byte	0x78
	.sleb128 0
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST351:
	.uaword	.LVL570
	.uaword	.LVL573-1
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST352:
	.uaword	.LVL571
	.uaword	.LVL573-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST353:
	.uaword	.LVL571
	.uaword	.LVL573-1
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST354:
	.uaword	.LVL570
	.uaword	.LVL571
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST355:
	.uaword	.LVL573
	.uaword	.LVL584
	.uahalf	0x2
	.byte	0x8f
	.sleb128 16
	.uaword	.LVL584
	.uaword	.LVL585
	.uahalf	0x2
	.byte	0x83
	.sleb128 0
	.uaword	.LVL589
	.uaword	.LVL590-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 16
	.uaword	0
	.uaword	0
.LLST356:
	.uaword	.LVL574
	.uaword	.LVL580
	.uahalf	0x2
	.byte	0x8f
	.sleb128 12
	.uaword	.LVL580
	.uaword	.LVL584
	.uahalf	0x2
	.byte	0x83
	.sleb128 0
	.uaword	.LVL584
	.uaword	.LVL585
	.uahalf	0x2
	.byte	0x8f
	.sleb128 12
	.uaword	.LVL589
	.uaword	.LVL590-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 12
	.uaword	0
	.uaword	0
.LLST357:
	.uaword	.LVL575
	.uaword	.LVL579
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL589
	.uaword	.LVL590-1
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST358:
	.uaword	.LVL575
	.uaword	.LVL585
	.uahalf	0x2
	.byte	0x8f
	.sleb128 8
	.uaword	.LVL589
	.uaword	.LVL590-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST359:
	.uaword	.LVL576
	.uaword	.LVL586-1
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL589
	.uaword	.LVL590-1
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST360:
	.uaword	.LVL578
	.uaword	.LVL589
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST361:
	.uaword	.LVL578
	.uaword	.LVL587
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST362:
	.uaword	.LVL581
	.uaword	.LVL586-1
	.uahalf	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST363:
	.uaword	.LVL582
	.uaword	.LVL589
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST364:
	.uaword	.LVL582
	.uaword	.LVL587
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST365:
	.uaword	.LVL583
	.uaword	.LVL586-1
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST366:
	.uaword	.LVL593
	.uaword	.LVL595
	.uahalf	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST367:
	.uaword	.LVL601
	.uaword	.LVL603
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL603
	.uaword	.LVL604
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL604
	.uaword	.LVL605
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL605
	.uaword	.LVL606
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL606
	.uaword	.LVL607
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL607
	.uaword	.LVL608
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL608
	.uaword	.LVL609
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	.LVL609
	.uaword	.LVL610
	.uahalf	0x2
	.byte	0x37
	.byte	0x9f
	.uaword	.LVL610
	.uaword	.LVL611
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	.LVL611
	.uaword	.LVL612
	.uahalf	0x2
	.byte	0x39
	.byte	0x9f
	.uaword	.LVL612
	.uaword	.LVL613
	.uahalf	0x2
	.byte	0x3a
	.byte	0x9f
	.uaword	.LVL613
	.uaword	.LFE33
	.uahalf	0x2
	.byte	0x3b
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST368:
	.uaword	.LVL597
	.uaword	.LVL599
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL600
	.uaword	.LVL602
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST369:
	.uaword	.LVL596
	.uaword	.LVL599
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL599
	.uaword	.LVL600
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL600
	.uaword	.LVL614
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL614
	.uaword	.LFE33
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST370:
	.uaword	.LFB34
	.uaword	.LCFI2
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI2
	.uaword	.LFE34
	.uahalf	0x2
	.byte	0x8a
	.sleb128 16
	.uaword	0
	.uaword	0
.LLST371:
	.uaword	.LVL615
	.uaword	.LVL616-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL616-1
	.uaword	.LFE34
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST372:
	.uaword	.LVL616
	.uaword	.LVL619
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL621
	.uaword	.LVL622
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL623
	.uaword	.LVL650
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL650
	.uaword	.LVL655
	.uahalf	0x6
	.byte	0x91
	.sleb128 -4
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL655
	.uaword	.LVL656
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL656
	.uaword	.LVL663
	.uahalf	0x6
	.byte	0x91
	.sleb128 -4
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL663
	.uaword	.LVL666-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL666-1
	.uaword	.LFE34
	.uahalf	0x6
	.byte	0x91
	.sleb128 -4
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST373:
	.uaword	.LVL615
	.uaword	.LVL617
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL617
	.uaword	.LVL618
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL621
	.uaword	.LVL622
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST374:
	.uaword	.LVL615
	.uaword	.LVL620
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL620
	.uaword	.LVL621
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL621
	.uaword	.LFE34
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST375:
	.uaword	.LVL624
	.uaword	.LVL650
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL650
	.uaword	.LVL655
	.uahalf	0x6
	.byte	0x91
	.sleb128 -4
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL655
	.uaword	.LVL656
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL656
	.uaword	.LVL663
	.uahalf	0x6
	.byte	0x91
	.sleb128 -4
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL663
	.uaword	.LVL666-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL666-1
	.uaword	.LFE34
	.uahalf	0x6
	.byte	0x91
	.sleb128 -4
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST376:
	.uaword	.LVL625
	.uaword	.LVL651
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL655
	.uaword	.LFE34
	.uahalf	0x1
	.byte	0x5b
	.uaword	0
	.uaword	0
.LLST378:
	.uaword	.LVL652
	.uaword	.LVL653
	.uahalf	0x1a
	.byte	0x78
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x72
	.sleb128 1
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.uaword	Adc_ConfigPtr
	.byte	0x6
	.byte	0x22
	.byte	0x6
	.byte	0x22
	.byte	0x6
	.byte	0x23
	.uleb128 0x8
	.byte	0x6
	.byte	0x91
	.sleb128 -8
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST379:
	.uaword	.LVL625
	.uaword	.LVL650
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL650
	.uaword	.LVL655
	.uahalf	0x6
	.byte	0x91
	.sleb128 -4
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL655
	.uaword	.LVL656
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL656
	.uaword	.LVL663
	.uahalf	0x6
	.byte	0x91
	.sleb128 -4
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL663
	.uaword	.LVL666-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL666-1
	.uaword	.LFE34
	.uahalf	0x6
	.byte	0x91
	.sleb128 -4
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST381:
	.uaword	.LVL626
	.uaword	.LVL644
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL644
	.uaword	.LFE34
	.uahalf	0xb
	.byte	0x78
	.sleb128 0
	.byte	0x3a
	.byte	0x24
	.byte	0xc
	.uaword	0xffdfc00
	.byte	0x1c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST382:
	.uaword	.LVL626
	.uaword	.LVL633
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST383:
	.uaword	.LVL633
	.uaword	.LVL634
	.uahalf	0x6
	.byte	0x82
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL634
	.uaword	.LVL635
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST384:
	.uaword	.LVL627
	.uaword	.LVL633
	.uahalf	0x2
	.byte	0x82
	.sleb128 52
	.uaword	.LVL633
	.uaword	.LVL650
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL655
	.uaword	.LVL656
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL663
	.uaword	.LVL666-1
	.uahalf	0x1
	.byte	0x50
	.uaword	0
	.uaword	0
.LLST385:
	.uaword	.LVL631
	.uaword	.LVL632
	.uahalf	0x2
	.byte	0x85
	.sleb128 52
	.uaword	.LVL638
	.uaword	.LVL650
	.uahalf	0x1
	.byte	0x51
	.uaword	.LVL655
	.uaword	.LVL656
	.uahalf	0x1
	.byte	0x51
	.uaword	.LVL663
	.uaword	.LVL666-1
	.uahalf	0x1
	.byte	0x51
	.uaword	0
	.uaword	0
.LLST386:
	.uaword	.LVL629
	.uaword	.LVL630
	.uahalf	0x2
	.byte	0x85
	.sleb128 2
	.uaword	.LVL630
	.uaword	.LVL633
	.uahalf	0x5
	.byte	0x82
	.sleb128 4
	.byte	0x6
	.byte	0x23
	.uleb128 0x2
	.uaword	.LVL633
	.uaword	.LVL635
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL635
	.uaword	.LVL636
	.uahalf	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL636
	.uaword	.LVL637
	.uahalf	0x6
	.byte	0x73
	.sleb128 -1
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST387:
	.uaword	.LVL628
	.uaword	.LVL633
	.uahalf	0x2
	.byte	0x82
	.sleb128 56
	.uaword	.LVL633
	.uaword	.LVL650
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL655
	.uaword	.LVL656
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL663
	.uaword	.LVL664
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST388:
	.uaword	.LVL633
	.uaword	.LVL635
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL635
	.uaword	.LVL636
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL636
	.uaword	.LVL637
	.uahalf	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST389:
	.uaword	.LVL639
	.uaword	.LVL651
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL655
	.uaword	.LFE34
	.uahalf	0x1
	.byte	0x5b
	.uaword	0
	.uaword	0
.LLST390:
	.uaword	.LVL640
	.uaword	.LVL642
	.uahalf	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST391:
	.uaword	.LVL641
	.uaword	.LVL643
	.uahalf	0x1
	.byte	0x5b
	.uaword	0
	.uaword	0
.LLST392:
	.uaword	.LVL641
	.uaword	.LVL643
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST393:
	.uaword	.LVL642
	.uaword	.LVL643
	.uahalf	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST394:
	.uaword	.LVL643
	.uaword	.LVL650
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL650
	.uaword	.LVL655
	.uahalf	0x6
	.byte	0x91
	.sleb128 -4
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL655
	.uaword	.LVL656
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL656
	.uaword	.LVL663
	.uahalf	0x6
	.byte	0x91
	.sleb128 -4
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL663
	.uaword	.LVL666-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL666-1
	.uaword	.LFE34
	.uahalf	0x6
	.byte	0x91
	.sleb128 -4
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST395:
	.uaword	.LVL643
	.uaword	.LVL651
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL655
	.uaword	.LFE34
	.uahalf	0x1
	.byte	0x5b
	.uaword	0
	.uaword	0
.LLST396:
	.uaword	.LVL645
	.uaword	.LVL650
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL650
	.uaword	.LVL655
	.uahalf	0x6
	.byte	0x91
	.sleb128 -4
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL655
	.uaword	.LVL656
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL656
	.uaword	.LVL663
	.uahalf	0x6
	.byte	0x91
	.sleb128 -4
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL663
	.uaword	.LVL666-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL666-1
	.uaword	.LFE34
	.uahalf	0x6
	.byte	0x91
	.sleb128 -4
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST397:
	.uaword	.LVL646
	.uaword	.LVL651
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL655
	.uaword	.LFE34
	.uahalf	0x1
	.byte	0x5b
	.uaword	0
	.uaword	0
.LLST399:
	.uaword	.LVL646
	.uaword	.LVL647
	.uahalf	0x2
	.byte	0x74
	.sleb128 16
	.uaword	.LVL647
	.uaword	.LVL649
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL649
	.uaword	.LVL650
	.uahalf	0x2
	.byte	0x8d
	.sleb128 16
	.uaword	.LVL655
	.uaword	.LVL656
	.uahalf	0x2
	.byte	0x8d
	.sleb128 16
	.uaword	.LVL663
	.uaword	.LVL665
	.uahalf	0x2
	.byte	0x8d
	.sleb128 16
	.uaword	0
	.uaword	0
.LLST400:
	.uaword	.LVL648
	.uaword	.LVL650
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL655
	.uaword	.LVL656
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL663
	.uaword	.LVL666-1
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST401:
	.uaword	.LVL656
	.uaword	.LVL663
	.uahalf	0x1
	.byte	0x6e
	.uaword	0
	.uaword	0
.LLST402:
	.uaword	.LVL656
	.uaword	.LVL663
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST403:
	.uaword	.LVL656
	.uaword	.LVL659
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL659
	.uaword	.LVL663
	.uahalf	0x20
	.byte	0x7c
	.sleb128 0
	.byte	0x3
	.uaword	Adc_kKernelDataIndex
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x38
	.byte	0x1e
	.byte	0x91
	.sleb128 -4
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.uaword	Adc_kKernelData
	.byte	0x22
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST404:
	.uaword	.LVL658
	.uaword	.LVL663
	.uahalf	0x1
	.byte	0x5b
	.uaword	0
	.uaword	0
.LLST405:
	.uaword	.LVL658
	.uaword	.LVL659
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL659
	.uaword	.LVL663
	.uahalf	0x20
	.byte	0x7c
	.sleb128 0
	.byte	0x3
	.uaword	Adc_kKernelDataIndex
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x38
	.byte	0x1e
	.byte	0x91
	.sleb128 -4
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.uaword	Adc_kKernelData
	.byte	0x22
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST406:
	.uaword	.LVL660
	.uaword	.LVL661-1
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST407:
	.uaword	.LVL650
	.uaword	.LVL651
	.uahalf	0x1
	.byte	0x5b
	.uaword	0
	.uaword	0
.LLST408:
	.uaword	.LVL650
	.uaword	.LVL655
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST410:
	.uaword	.LVL650
	.uaword	.LVL653
	.uahalf	0x2
	.byte	0x8c
	.sleb128 20
	.uaword	.LVL653
	.uaword	.LVL654-1
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST411:
	.uaword	.LVL651
	.uaword	.LVL655
	.uahalf	0x1
	.byte	0x5b
	.uaword	0
	.uaword	0
.LLST412:
	.uaword	.LVL667
	.uaword	.LVL668-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL668-1
	.uaword	.LFE35
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST413:
	.uaword	.LVL668
	.uaword	.LVL669
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL670
	.uaword	.LVL693
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL693
	.uaword	.LFE35
	.uahalf	0x3
	.byte	0x7d
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST414:
	.uaword	.LVL671
	.uaword	.LVL693
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL693
	.uaword	.LFE35
	.uahalf	0x3
	.byte	0x7d
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST415:
	.uaword	.LVL672
	.uaword	.LVL700
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL702
	.uaword	.LFE35
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST417:
	.uaword	.LVL701
	.uaword	.LVL702-1
	.uahalf	0x19
	.byte	0x78
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x7d
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.uaword	Adc_ConfigPtr
	.byte	0x6
	.byte	0x22
	.byte	0x6
	.byte	0x22
	.byte	0x6
	.byte	0x23
	.uleb128 0x8
	.byte	0x6
	.byte	0x7c
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST418:
	.uaword	.LVL672
	.uaword	.LVL693
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL693
	.uaword	.LFE35
	.uahalf	0x3
	.byte	0x7d
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST420:
	.uaword	.LVL673
	.uaword	.LVL692
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL692
	.uaword	.LFE35
	.uahalf	0xb
	.byte	0x78
	.sleb128 0
	.byte	0x3a
	.byte	0x24
	.byte	0xc
	.uaword	0xffdfc00
	.byte	0x1c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST421:
	.uaword	.LVL674
	.uaword	.LVL681
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST422:
	.uaword	.LVL681
	.uaword	.LVL682
	.uahalf	0x6
	.byte	0x82
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL682
	.uaword	.LVL683
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST423:
	.uaword	.LVL675
	.uaword	.LVL681
	.uahalf	0x2
	.byte	0x82
	.sleb128 52
	.uaword	.LVL681
	.uaword	.LVL699
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL702
	.uaword	.LVL703
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL710
	.uaword	.LVL712-1
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST424:
	.uaword	.LVL679
	.uaword	.LVL680
	.uahalf	0x2
	.byte	0x85
	.sleb128 52
	.uaword	.LVL686
	.uaword	.LVL699
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL702
	.uaword	.LVL703
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL710
	.uaword	.LVL712-1
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST425:
	.uaword	.LVL677
	.uaword	.LVL678
	.uahalf	0x2
	.byte	0x85
	.sleb128 2
	.uaword	.LVL678
	.uaword	.LVL681
	.uahalf	0x5
	.byte	0x82
	.sleb128 4
	.byte	0x6
	.byte	0x23
	.uleb128 0x2
	.uaword	.LVL681
	.uaword	.LVL683
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL683
	.uaword	.LVL684
	.uahalf	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL684
	.uaword	.LVL685
	.uahalf	0x6
	.byte	0x74
	.sleb128 -1
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST426:
	.uaword	.LVL676
	.uaword	.LVL681
	.uahalf	0x2
	.byte	0x82
	.sleb128 56
	.uaword	.LVL681
	.uaword	.LVL699
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL702
	.uaword	.LVL703
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL710
	.uaword	.LVL711
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST427:
	.uaword	.LVL681
	.uaword	.LVL683
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL683
	.uaword	.LVL684
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL684
	.uaword	.LVL685
	.uahalf	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST428:
	.uaword	.LVL687
	.uaword	.LVL700
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL702
	.uaword	.LFE35
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST429:
	.uaword	.LVL688
	.uaword	.LVL690
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST430:
	.uaword	.LVL689
	.uaword	.LVL691
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST431:
	.uaword	.LVL689
	.uaword	.LVL691
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST432:
	.uaword	.LVL690
	.uaword	.LVL691
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST433:
	.uaword	.LVL691
	.uaword	.LVL693
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL693
	.uaword	.LFE35
	.uahalf	0x3
	.byte	0x7d
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST434:
	.uaword	.LVL691
	.uaword	.LVL700
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL702
	.uaword	.LFE35
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST435:
	.uaword	.LVL695
	.uaword	.LVL700
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL702
	.uaword	.LFE35
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST437:
	.uaword	.LVL695
	.uaword	.LVL696
	.uahalf	0x2
	.byte	0x73
	.sleb128 16
	.uaword	.LVL696
	.uaword	.LVL698
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL698
	.uaword	.LVL699
	.uahalf	0x2
	.byte	0x8d
	.sleb128 16
	.uaword	.LVL702
	.uaword	.LVL703
	.uahalf	0x2
	.byte	0x8d
	.sleb128 16
	.uaword	.LVL710
	.uaword	.LVL712-1
	.uahalf	0x2
	.byte	0x8d
	.sleb128 16
	.uaword	0
	.uaword	0
.LLST438:
	.uaword	.LVL697
	.uaword	.LVL699
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL702
	.uaword	.LVL703
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL710
	.uaword	.LVL712-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST439:
	.uaword	.LVL703
	.uaword	.LVL710
	.uahalf	0x1
	.byte	0x6e
	.uaword	0
	.uaword	0
.LLST440:
	.uaword	.LVL703
	.uaword	.LVL710
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST441:
	.uaword	.LVL703
	.uaword	.LVL706
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL706
	.uaword	.LVL710
	.uahalf	0x3
	.byte	0x8d
	.sleb128 -8
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST442:
	.uaword	.LVL705
	.uaword	.LVL710
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST443:
	.uaword	.LVL705
	.uaword	.LVL706
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL706
	.uaword	.LVL710
	.uahalf	0x3
	.byte	0x8d
	.sleb128 -8
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST444:
	.uaword	.LVL707
	.uaword	.LVL708-1
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST445:
	.uaword	.LVL699
	.uaword	.LVL700
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST446:
	.uaword	.LVL699
	.uaword	.LVL702
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST448:
	.uaword	.LVL699
	.uaword	.LVL702-1
	.uahalf	0x2
	.byte	0x8c
	.sleb128 20
	.uaword	0
	.uaword	0
.LLST449:
	.uaword	.LVL700
	.uaword	.LVL702
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST450:
	.uaword	.LVL713
	.uaword	.LVL714-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL714-1
	.uaword	.LFE36
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST451:
	.uaword	.LVL714
	.uaword	.LVL715
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL716
	.uaword	.LVL739
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL739
	.uaword	.LFE36
	.uahalf	0x3
	.byte	0x7d
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST452:
	.uaword	.LVL717
	.uaword	.LVL739
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL739
	.uaword	.LFE36
	.uahalf	0x3
	.byte	0x7d
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST453:
	.uaword	.LVL718
	.uaword	.LVL746
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL748
	.uaword	.LFE36
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST455:
	.uaword	.LVL747
	.uaword	.LVL748-1
	.uahalf	0x19
	.byte	0x78
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x7d
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.uaword	Adc_ConfigPtr
	.byte	0x6
	.byte	0x22
	.byte	0x6
	.byte	0x22
	.byte	0x6
	.byte	0x23
	.uleb128 0x8
	.byte	0x6
	.byte	0x7c
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST456:
	.uaword	.LVL718
	.uaword	.LVL739
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL739
	.uaword	.LFE36
	.uahalf	0x3
	.byte	0x7d
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST458:
	.uaword	.LVL719
	.uaword	.LVL738
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL738
	.uaword	.LFE36
	.uahalf	0xb
	.byte	0x78
	.sleb128 0
	.byte	0x3a
	.byte	0x24
	.byte	0xc
	.uaword	0xffdfc00
	.byte	0x1c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST459:
	.uaword	.LVL720
	.uaword	.LVL727
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST460:
	.uaword	.LVL727
	.uaword	.LVL728
	.uahalf	0x6
	.byte	0x82
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL728
	.uaword	.LVL729
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST461:
	.uaword	.LVL721
	.uaword	.LVL727
	.uahalf	0x2
	.byte	0x82
	.sleb128 52
	.uaword	.LVL727
	.uaword	.LVL745
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL748
	.uaword	.LVL749
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL756
	.uaword	.LVL758-1
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST462:
	.uaword	.LVL725
	.uaword	.LVL726
	.uahalf	0x2
	.byte	0x85
	.sleb128 52
	.uaword	.LVL732
	.uaword	.LVL745
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL748
	.uaword	.LVL749
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL756
	.uaword	.LVL758-1
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST463:
	.uaword	.LVL723
	.uaword	.LVL724
	.uahalf	0x2
	.byte	0x85
	.sleb128 2
	.uaword	.LVL724
	.uaword	.LVL727
	.uahalf	0x5
	.byte	0x82
	.sleb128 4
	.byte	0x6
	.byte	0x23
	.uleb128 0x2
	.uaword	.LVL727
	.uaword	.LVL729
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL729
	.uaword	.LVL730
	.uahalf	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL730
	.uaword	.LVL731
	.uahalf	0x6
	.byte	0x74
	.sleb128 -1
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST464:
	.uaword	.LVL722
	.uaword	.LVL727
	.uahalf	0x2
	.byte	0x82
	.sleb128 56
	.uaword	.LVL727
	.uaword	.LVL745
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL748
	.uaword	.LVL749
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL756
	.uaword	.LVL757
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST465:
	.uaword	.LVL727
	.uaword	.LVL729
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL729
	.uaword	.LVL730
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL730
	.uaword	.LVL731
	.uahalf	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST466:
	.uaword	.LVL733
	.uaword	.LVL746
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL748
	.uaword	.LFE36
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST467:
	.uaword	.LVL734
	.uaword	.LVL736
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST468:
	.uaword	.LVL735
	.uaword	.LVL737
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST469:
	.uaword	.LVL735
	.uaword	.LVL737
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST470:
	.uaword	.LVL736
	.uaword	.LVL737
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST471:
	.uaword	.LVL737
	.uaword	.LVL739
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL739
	.uaword	.LFE36
	.uahalf	0x3
	.byte	0x7d
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST472:
	.uaword	.LVL737
	.uaword	.LVL746
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL748
	.uaword	.LFE36
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST473:
	.uaword	.LVL741
	.uaword	.LVL746
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL748
	.uaword	.LFE36
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST475:
	.uaword	.LVL741
	.uaword	.LVL742
	.uahalf	0x2
	.byte	0x73
	.sleb128 16
	.uaword	.LVL742
	.uaword	.LVL744
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL744
	.uaword	.LVL745
	.uahalf	0x2
	.byte	0x8d
	.sleb128 16
	.uaword	.LVL748
	.uaword	.LVL749
	.uahalf	0x2
	.byte	0x8d
	.sleb128 16
	.uaword	.LVL756
	.uaword	.LVL758-1
	.uahalf	0x2
	.byte	0x8d
	.sleb128 16
	.uaword	0
	.uaword	0
.LLST476:
	.uaword	.LVL743
	.uaword	.LVL745
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL748
	.uaword	.LVL749
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL756
	.uaword	.LVL758-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST477:
	.uaword	.LVL749
	.uaword	.LVL756
	.uahalf	0x1
	.byte	0x6e
	.uaword	0
	.uaword	0
.LLST478:
	.uaword	.LVL749
	.uaword	.LVL756
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST479:
	.uaword	.LVL749
	.uaword	.LVL752
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL752
	.uaword	.LVL756
	.uahalf	0x22
	.byte	0x7d
	.sleb128 -1
	.byte	0x3c
	.byte	0x1e
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.uaword	Adc_kKernelDataIndex
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x38
	.byte	0x1e
	.byte	0x7d
	.sleb128 -1
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.uaword	Adc_kKernelData
	.byte	0x22
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST480:
	.uaword	.LVL751
	.uaword	.LVL756
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST481:
	.uaword	.LVL751
	.uaword	.LVL752
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL752
	.uaword	.LVL756
	.uahalf	0x22
	.byte	0x7d
	.sleb128 -1
	.byte	0x3c
	.byte	0x1e
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.uaword	Adc_kKernelDataIndex
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x38
	.byte	0x1e
	.byte	0x7d
	.sleb128 -1
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.uaword	Adc_kKernelData
	.byte	0x22
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST482:
	.uaword	.LVL753
	.uaword	.LVL754-1
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST483:
	.uaword	.LVL745
	.uaword	.LVL746
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST484:
	.uaword	.LVL745
	.uaword	.LVL748
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST486:
	.uaword	.LVL745
	.uaword	.LVL748-1
	.uahalf	0x2
	.byte	0x8c
	.sleb128 20
	.uaword	0
	.uaword	0
.LLST487:
	.uaword	.LVL746
	.uaword	.LVL748
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0xcc
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB97
	.uaword	.LFE97-.LFB97
	.uaword	.LFB73
	.uaword	.LFE73-.LFB73
	.uaword	.LFB64
	.uaword	.LFE64-.LFB64
	.uaword	.LFB72
	.uaword	.LFE72-.LFB72
	.uaword	.LFB70
	.uaword	.LFE70-.LFB70
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
	.uaword	.LFB27
	.uaword	.LFE27-.LFB27
	.uaword	.LFB28
	.uaword	.LFE28-.LFB28
	.uaword	.LFB29
	.uaword	.LFE29-.LFB29
	.uaword	.LFB30
	.uaword	.LFE30-.LFB30
	.uaword	.LFB31
	.uaword	.LFE31-.LFB31
	.uaword	.LFB32
	.uaword	.LFE32-.LFB32
	.uaword	.LFB33
	.uaword	.LFE33-.LFB33
	.uaword	.LFB34
	.uaword	.LFE34-.LFB34
	.uaword	.LFB35
	.uaword	.LFE35-.LFB35
	.uaword	.LFB36
	.uaword	.LFE36-.LFB36
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB303
	.uaword	.LBE303
	.uaword	.LBB329
	.uaword	.LBE329
	.uaword	.LBB330
	.uaword	.LBE330
	.uaword	.LBB333
	.uaword	.LBE333
	.uaword	.LBB334
	.uaword	.LBE334
	.uaword	0
	.uaword	0
	.uaword	.LBB305
	.uaword	.LBE305
	.uaword	.LBB311
	.uaword	.LBE311
	.uaword	.LBB312
	.uaword	.LBE312
	.uaword	0
	.uaword	0
	.uaword	.LBB313
	.uaword	.LBE313
	.uaword	.LBB323
	.uaword	.LBE323
	.uaword	0
	.uaword	0
	.uaword	.LBB315
	.uaword	.LBE315
	.uaword	.LBB318
	.uaword	.LBE318
	.uaword	0
	.uaword	0
	.uaword	.LBB320
	.uaword	.LBE320
	.uaword	.LBB324
	.uaword	.LBE324
	.uaword	0
	.uaword	0
	.uaword	.LBB357
	.uaword	.LBE357
	.uaword	.LBB367
	.uaword	.LBE367
	.uaword	0
	.uaword	0
	.uaword	.LBB359
	.uaword	.LBE359
	.uaword	.LBB362
	.uaword	.LBE362
	.uaword	0
	.uaword	0
	.uaword	.LBB364
	.uaword	.LBE364
	.uaword	.LBB368
	.uaword	.LBE368
	.uaword	0
	.uaword	0
	.uaword	.LBB373
	.uaword	.LBE373
	.uaword	.LBB382
	.uaword	.LBE382
	.uaword	0
	.uaword	0
	.uaword	.LBB375
	.uaword	.LBE375
	.uaword	.LBB379
	.uaword	.LBE379
	.uaword	.LBB380
	.uaword	.LBE380
	.uaword	0
	.uaword	0
	.uaword	.LBB421
	.uaword	.LBE421
	.uaword	.LBB427
	.uaword	.LBE427
	.uaword	.LBB428
	.uaword	.LBE428
	.uaword	.LBB429
	.uaword	.LBE429
	.uaword	.LBB430
	.uaword	.LBE430
	.uaword	0
	.uaword	0
	.uaword	.LBB431
	.uaword	.LBE431
	.uaword	.LBB437
	.uaword	.LBE437
	.uaword	.LBB464
	.uaword	.LBE464
	.uaword	.LBB498
	.uaword	.LBE498
	.uaword	.LBB500
	.uaword	.LBE500
	.uaword	0
	.uaword	0
	.uaword	.LBB444
	.uaword	.LBE444
	.uaword	.LBB457
	.uaword	.LBE457
	.uaword	.LBB458
	.uaword	.LBE458
	.uaword	.LBB462
	.uaword	.LBE462
	.uaword	0
	.uaword	0
	.uaword	.LBB446
	.uaword	.LBE446
	.uaword	.LBB451
	.uaword	.LBE451
	.uaword	.LBB452
	.uaword	.LBE452
	.uaword	.LBB453
	.uaword	.LBE453
	.uaword	0
	.uaword	0
	.uaword	.LBB459
	.uaword	.LBE459
	.uaword	.LBB463
	.uaword	.LBE463
	.uaword	0
	.uaword	0
	.uaword	.LBB467
	.uaword	.LBE467
	.uaword	.LBB473
	.uaword	.LBE473
	.uaword	0
	.uaword	0
	.uaword	.LBB470
	.uaword	.LBE470
	.uaword	.LBB474
	.uaword	.LBE474
	.uaword	0
	.uaword	0
	.uaword	.LBB479
	.uaword	.LBE479
	.uaword	.LBB482
	.uaword	.LBE482
	.uaword	0
	.uaword	0
	.uaword	.LBB483
	.uaword	.LBE483
	.uaword	.LBB499
	.uaword	.LBE499
	.uaword	0
	.uaword	0
	.uaword	.LBB487
	.uaword	.LBE487
	.uaword	.LBB496
	.uaword	.LBE496
	.uaword	0
	.uaword	0
	.uaword	.LBB490
	.uaword	.LBE490
	.uaword	.LBB494
	.uaword	.LBE494
	.uaword	.LBB495
	.uaword	.LBE495
	.uaword	0
	.uaword	0
	.uaword	.LBB544
	.uaword	.LBE544
	.uaword	.LBB552
	.uaword	.LBE552
	.uaword	.LBB553
	.uaword	.LBE553
	.uaword	.LBB554
	.uaword	.LBE554
	.uaword	.LBB555
	.uaword	.LBE555
	.uaword	.LBB556
	.uaword	.LBE556
	.uaword	.LBB557
	.uaword	.LBE557
	.uaword	0
	.uaword	0
	.uaword	.LBB558
	.uaword	.LBE558
	.uaword	.LBB561
	.uaword	.LBE561
	.uaword	0
	.uaword	0
	.uaword	.LBB566
	.uaword	.LBE566
	.uaword	.LBB570
	.uaword	.LBE570
	.uaword	.LBB571
	.uaword	.LBE571
	.uaword	0
	.uaword	0
	.uaword	.LBB572
	.uaword	.LBE572
	.uaword	.LBB626
	.uaword	.LBE626
	.uaword	.LBB630
	.uaword	.LBE630
	.uaword	0
	.uaword	0
	.uaword	.LBB576
	.uaword	.LBE576
	.uaword	.LBB628
	.uaword	.LBE628
	.uaword	0
	.uaword	0
	.uaword	.LBB577
	.uaword	.LBE577
	.uaword	.LBB580
	.uaword	.LBE580
	.uaword	0
	.uaword	0
	.uaword	.LBB581
	.uaword	.LBE581
	.uaword	.LBB584
	.uaword	.LBE584
	.uaword	0
	.uaword	0
	.uaword	.LBB585
	.uaword	.LBE585
	.uaword	.LBB627
	.uaword	.LBE627
	.uaword	.LBB629
	.uaword	.LBE629
	.uaword	.LBB631
	.uaword	.LBE631
	.uaword	.LBB633
	.uaword	.LBE633
	.uaword	0
	.uaword	0
	.uaword	.LBB587
	.uaword	.LBE587
	.uaword	.LBB596
	.uaword	.LBE596
	.uaword	0
	.uaword	0
	.uaword	.LBB589
	.uaword	.LBE589
	.uaword	.LBB593
	.uaword	.LBE593
	.uaword	.LBB594
	.uaword	.LBE594
	.uaword	0
	.uaword	0
	.uaword	.LBB597
	.uaword	.LBE597
	.uaword	.LBB614
	.uaword	.LBE614
	.uaword	.LBB615
	.uaword	.LBE615
	.uaword	.LBB616
	.uaword	.LBE616
	.uaword	0
	.uaword	0
	.uaword	.LBB603
	.uaword	.LBE603
	.uaword	.LBB609
	.uaword	.LBE609
	.uaword	0
	.uaword	0
	.uaword	.LBB606
	.uaword	.LBE606
	.uaword	.LBB610
	.uaword	.LBE610
	.uaword	0
	.uaword	0
	.uaword	.LBB621
	.uaword	.LBE621
	.uaword	.LBB625
	.uaword	.LBE625
	.uaword	.LBB632
	.uaword	.LBE632
	.uaword	0
	.uaword	0
	.uaword	.LBB647
	.uaword	.LBE647
	.uaword	.LBB687
	.uaword	.LBE687
	.uaword	0
	.uaword	0
	.uaword	.LBB649
	.uaword	.LBE649
	.uaword	.LBB652
	.uaword	.LBE652
	.uaword	0
	.uaword	0
	.uaword	.LBB653
	.uaword	.LBE653
	.uaword	.LBB666
	.uaword	.LBE666
	.uaword	.LBB667
	.uaword	.LBE667
	.uaword	.LBB668
	.uaword	.LBE668
	.uaword	.LBB669
	.uaword	.LBE669
	.uaword	.LBB670
	.uaword	.LBE670
	.uaword	.LBB671
	.uaword	.LBE671
	.uaword	.LBB672
	.uaword	.LBE672
	.uaword	.LBB673
	.uaword	.LBE673
	.uaword	.LBB674
	.uaword	.LBE674
	.uaword	.LBB675
	.uaword	.LBE675
	.uaword	.LBB676
	.uaword	.LBE676
	.uaword	0
	.uaword	0
	.uaword	.LBB682
	.uaword	.LBE682
	.uaword	.LBB685
	.uaword	.LBE685
	.uaword	0
	.uaword	0
	.uaword	.LBB692
	.uaword	.LBE692
	.uaword	.LBB695
	.uaword	.LBE695
	.uaword	0
	.uaword	0
	.uaword	.LBB708
	.uaword	.LBE708
	.uaword	.LBB712
	.uaword	.LBE712
	.uaword	.LBB713
	.uaword	.LBE713
	.uaword	0
	.uaword	0
	.uaword	.LBB714
	.uaword	.LBE714
	.uaword	.LBB721
	.uaword	.LBE721
	.uaword	0
	.uaword	0
	.uaword	.LBB716
	.uaword	.LBE716
	.uaword	.LBB719
	.uaword	.LBE719
	.uaword	0
	.uaword	0
	.uaword	.LBB717
	.uaword	.LBE717
	.uaword	.LBB718
	.uaword	.LBE718
	.uaword	0
	.uaword	0
	.uaword	.LBB726
	.uaword	.LBE726
	.uaword	.LBB732
	.uaword	.LBE732
	.uaword	.LBB733
	.uaword	.LBE733
	.uaword	.LBB734
	.uaword	.LBE734
	.uaword	.LBB737
	.uaword	.LBE737
	.uaword	0
	.uaword	0
	.uaword	.LBB738
	.uaword	.LBE738
	.uaword	.LBB742
	.uaword	.LBE742
	.uaword	.LBB743
	.uaword	.LBE743
	.uaword	0
	.uaword	0
	.uaword	.LBB748
	.uaword	.LBE748
	.uaword	.LBB755
	.uaword	.LBE755
	.uaword	0
	.uaword	0
	.uaword	.LBB750
	.uaword	.LBE750
	.uaword	.LBB753
	.uaword	.LBE753
	.uaword	0
	.uaword	0
	.uaword	.LBB751
	.uaword	.LBE751
	.uaword	.LBB752
	.uaword	.LBE752
	.uaword	0
	.uaword	0
	.uaword	.LBB760
	.uaword	.LBE760
	.uaword	.LBB767
	.uaword	.LBE767
	.uaword	.LBB768
	.uaword	.LBE768
	.uaword	.LBB769
	.uaword	.LBE769
	.uaword	.LBB772
	.uaword	.LBE772
	.uaword	.LBB773
	.uaword	.LBE773
	.uaword	0
	.uaword	0
	.uaword	.LBB784
	.uaword	.LBE784
	.uaword	.LBB791
	.uaword	.LBE791
	.uaword	0
	.uaword	0
	.uaword	.LBB786
	.uaword	.LBE786
	.uaword	.LBB789
	.uaword	.LBE789
	.uaword	0
	.uaword	0
	.uaword	.LBB787
	.uaword	.LBE787
	.uaword	.LBB788
	.uaword	.LBE788
	.uaword	0
	.uaword	0
	.uaword	.LBB792
	.uaword	.LBE792
	.uaword	.LBB799
	.uaword	.LBE799
	.uaword	0
	.uaword	0
	.uaword	.LBB794
	.uaword	.LBE794
	.uaword	.LBB797
	.uaword	.LBE797
	.uaword	0
	.uaword	0
	.uaword	.LBB795
	.uaword	.LBE795
	.uaword	.LBB796
	.uaword	.LBE796
	.uaword	0
	.uaword	0
	.uaword	.LBB804
	.uaword	.LBE804
	.uaword	.LBB809
	.uaword	.LBE809
	.uaword	0
	.uaword	0
	.uaword	.LBB816
	.uaword	.LBE816
	.uaword	.LBB821
	.uaword	.LBE821
	.uaword	0
	.uaword	0
	.uaword	.LBB844
	.uaword	.LBE844
	.uaword	.LBB851
	.uaword	.LBE851
	.uaword	.LBB852
	.uaword	.LBE852
	.uaword	.LBB853
	.uaword	.LBE853
	.uaword	.LBB856
	.uaword	.LBE856
	.uaword	.LBB857
	.uaword	.LBE857
	.uaword	0
	.uaword	0
	.uaword	.LBB906
	.uaword	.LBE906
	.uaword	.LBB951
	.uaword	.LBE951
	.uaword	0
	.uaword	0
	.uaword	.LBB908
	.uaword	.LBE908
	.uaword	.LBB911
	.uaword	.LBE911
	.uaword	0
	.uaword	0
	.uaword	.LBB913
	.uaword	.LBE913
	.uaword	.LBB920
	.uaword	.LBE920
	.uaword	0
	.uaword	0
	.uaword	.LBB921
	.uaword	.LBE921
	.uaword	.LBB949
	.uaword	.LBE949
	.uaword	0
	.uaword	0
	.uaword	.LBB923
	.uaword	.LBE923
	.uaword	.LBB930
	.uaword	.LBE930
	.uaword	.LBB931
	.uaword	.LBE931
	.uaword	.LBB932
	.uaword	.LBE932
	.uaword	.LBB933
	.uaword	.LBE933
	.uaword	.LBB939
	.uaword	.LBE939
	.uaword	0
	.uaword	0
	.uaword	.LBB934
	.uaword	.LBE934
	.uaword	.LBB940
	.uaword	.LBE940
	.uaword	0
	.uaword	0
	.uaword	.LBB980
	.uaword	.LBE980
	.uaword	.LBB1028
	.uaword	.LBE1028
	.uaword	.LBB1029
	.uaword	.LBE1029
	.uaword	0
	.uaword	0
	.uaword	.LBB982
	.uaword	.LBE982
	.uaword	.LBB986
	.uaword	.LBE986
	.uaword	.LBB987
	.uaword	.LBE987
	.uaword	0
	.uaword	0
	.uaword	.LBB989
	.uaword	.LBE989
	.uaword	.LBB996
	.uaword	.LBE996
	.uaword	0
	.uaword	0
	.uaword	.LBB997
	.uaword	.LBE997
	.uaword	.LBB1025
	.uaword	.LBE1025
	.uaword	0
	.uaword	0
	.uaword	.LBB999
	.uaword	.LBE999
	.uaword	.LBB1006
	.uaword	.LBE1006
	.uaword	.LBB1007
	.uaword	.LBE1007
	.uaword	.LBB1008
	.uaword	.LBE1008
	.uaword	.LBB1009
	.uaword	.LBE1009
	.uaword	.LBB1015
	.uaword	.LBE1015
	.uaword	0
	.uaword	0
	.uaword	.LBB1010
	.uaword	.LBE1010
	.uaword	.LBB1016
	.uaword	.LBE1016
	.uaword	0
	.uaword	0
	.uaword	.LBB1058
	.uaword	.LBE1058
	.uaword	.LBB1106
	.uaword	.LBE1106
	.uaword	.LBB1107
	.uaword	.LBE1107
	.uaword	0
	.uaword	0
	.uaword	.LBB1060
	.uaword	.LBE1060
	.uaword	.LBB1064
	.uaword	.LBE1064
	.uaword	.LBB1065
	.uaword	.LBE1065
	.uaword	0
	.uaword	0
	.uaword	.LBB1067
	.uaword	.LBE1067
	.uaword	.LBB1074
	.uaword	.LBE1074
	.uaword	0
	.uaword	0
	.uaword	.LBB1075
	.uaword	.LBE1075
	.uaword	.LBB1103
	.uaword	.LBE1103
	.uaword	0
	.uaword	0
	.uaword	.LBB1077
	.uaword	.LBE1077
	.uaword	.LBB1084
	.uaword	.LBE1084
	.uaword	.LBB1085
	.uaword	.LBE1085
	.uaword	.LBB1086
	.uaword	.LBE1086
	.uaword	.LBB1087
	.uaword	.LBE1087
	.uaword	.LBB1093
	.uaword	.LBE1093
	.uaword	0
	.uaword	0
	.uaword	.LBB1088
	.uaword	.LBE1088
	.uaword	.LBB1094
	.uaword	.LBE1094
	.uaword	0
	.uaword	0
	.uaword	.LFB97
	.uaword	.LFE97
	.uaword	.LFB73
	.uaword	.LFE73
	.uaword	.LFB64
	.uaword	.LFE64
	.uaword	.LFB72
	.uaword	.LFE72
	.uaword	.LFB70
	.uaword	.LFE70
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
	.uaword	.LFB27
	.uaword	.LFE27
	.uaword	.LFB28
	.uaword	.LFE28
	.uaword	.LFB29
	.uaword	.LFE29
	.uaword	.LFB30
	.uaword	.LFE30
	.uaword	.LFB31
	.uaword	.LFE31
	.uaword	.LFB32
	.uaword	.LFE32
	.uaword	.LFB33
	.uaword	.LFE33
	.uaword	.LFB34
	.uaword	.LFE34
	.uaword	.LFB35
	.uaword	.LFE35
	.uaword	.LFB36
	.uaword	.LFE36
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF13:
	.string	"CHEVMODE"
.LASF53:
	.string	"KernelDataPtr"
.LASF87:
	.string	"DataBufferPtr"
.LASF50:
	.string	"STM_31_0"
.LASF52:
	.string	"CoreId"
.LASF55:
	.string	"lKernelDataPtr"
.LASF63:
	.string	"lEicrPos"
.LASF68:
	.string	"lLoopCount"
.LASF35:
	.string	"REQCHNR"
.LASF15:
	.string	"reserved_10"
.LASF22:
	.string	"reserved_11"
.LASF1:
	.string	"reserved_12"
.LASF28:
	.string	"reserved_13"
.LASF10:
	.string	"reserved_14"
.LASF36:
	.string	"reserved_15"
.LASF17:
	.string	"reserved_16"
.LASF0:
	.string	"GrpCfgPtr"
.LASF11:
	.string	"reserved_18"
.LASF4:
	.string	"reserved_19"
.LASF37:
	.string	"reserved_17"
.LASF21:
	.string	"reserved_20"
.LASF23:
	.string	"reserved_21"
.LASF32:
	.string	"reserved_22"
.LASF44:
	.string	"reserved_23"
.LASF16:
	.string	"reserved_24"
.LASF20:
	.string	"reserved_25"
.LASF30:
	.string	"reserved_26"
.LASF24:
	.string	"reserved_27"
.LASF88:
	.string	"lKernelId"
.LASF12:
	.string	"reserved_29"
.LASF57:
	.string	"lEvadcGroupPtr"
.LASF76:
	.string	"lAnChannelId"
.LASF54:
	.string	"GroupId"
.LASF26:
	.string	"reserved_30"
.LASF2:
	.string	"reserved_28"
.LASF78:
	.string	"lNoOfChannels"
.LASF39:
	.string	"reserved_44"
.LASF65:
	.string	"GtmChannelCfgPtr"
.LASF72:
	.string	"lGroupId"
.LASF80:
	.string	"lBusyFlag"
.LASF27:
	.string	"CDSEL"
.LASF64:
	.string	"lIgcrPos"
.LASF89:
	.string	"lResultFlag"
.LASF43:
	.string	"ENDINIT"
.LASF75:
	.string	"lGrpDefCfgPtr"
.LASF56:
	.string	"KernelCfgPtr"
.LASF33:
	.string	"reserved_31"
.LASF14:
	.string	"reserved_0"
.LASF7:
	.string	"reserved_1"
.LASF5:
	.string	"reserved_2"
.LASF34:
	.string	"reserved_3"
.LASF3:
	.string	"reserved_4"
.LASF8:
	.string	"reserved_5"
.LASF31:
	.string	"reserved_6"
.LASF29:
	.string	"reserved_7"
.LASF6:
	.string	"reserved_8"
.LASF9:
	.string	"reserved_9"
.LASF42:
	.string	"reserved_C"
.LASF18:
	.string	"BOUNDARY0"
.LASF19:
	.string	"BOUNDARY1"
.LASF41:
	.string	"reserved_2C0"
.LASF70:
	.string	"lGroupCount"
.LASF81:
	.string	"lRsCount"
.LASF86:
	.string	"Group"
.LASF84:
	.string	"lRsIntpt"
.LASF90:
	.string	"lNumOfSamples"
.LASF59:
	.string	"ReqSrc"
.LASF79:
	.string	"lChloopCount"
.LASF67:
	.string	"lGtmChNo"
.LASF73:
	.string	"lNextGroup"
.LASF61:
	.string	"lEicrIndex"
.LASF71:
	.string	"lRetVal"
.LASF25:
	.string	"RESULT"
.LASF49:
	.string	"STMCAP_63_32"
.LASF38:
	.string	"RSTSTAT"
.LASF66:
	.string	"lGtmModuleNo"
.LASF47:
	.string	"reserved_E0"
.LASF45:
	.string	"REQSLP"
.LASF77:
	.string	"lResReg"
.LASF46:
	.string	"PMST"
.LASF91:
	.string	"lStrmCompletedFlag"
.LASF60:
	.string	"EruChannelCfgPtr"
.LASF83:
	.string	"lConvMode"
.LASF85:
	.string	"lKernelCount"
.LASF74:
	.string	"lEvadcQPtr"
.LASF62:
	.string	"lIgcrIndex"
.LASF69:
	.string	"lGrpCfgPtr"
.LASF58:
	.string	"GrpPtr"
.LASF40:
	.string	"reserved_1A8"
.LASF48:
	.string	"CERBERUS"
.LASF51:
	.string	"KernelId"
.LASF82:
	.string	"lCoreId"
	.extern	SchM_Exit_Adc_KernelData,STT_FUNC,0
	.extern	SchM_Enter_Adc_KernelData,STT_FUNC,0
	.extern	Mcal_WritePeripEndInitProtReg,STT_FUNC,0
	.extern	Mcu_17_Gtm_TomChannelEnable,STT_FUNC,0
	.extern	Mcu_17_Gtm_TomChannelInit,STT_FUNC,0
	.extern	Mcu_17_Gtm_AtomChannelEnable,STT_FUNC,0
	.extern	Mcu_17_Gtm_AtomChannelInit,STT_FUNC,0
	.extern	Mcal_GetCpuIndex,STT_FUNC,0
	.extern	SchM_Exit_Adc_SrcRegAccess,STT_FUNC,0
	.extern	SchM_Enter_Adc_SrcRegAccess,STT_FUNC,0
	.extern	Mcu_17_Gtm_TomChannelShadowTransfer,STT_FUNC,0
	.extern	Mcu_17_Gtm_TomChannelDeInit,STT_FUNC,0
	.extern	Mcu_17_Gtm_TomChannelDisable,STT_FUNC,0
	.extern	Mcu_17_Gtm_AtomChannelShadowTransfer,STT_FUNC,0
	.extern	Mcu_17_Gtm_AtomChannelDeInit,STT_FUNC,0
	.extern	Mcu_17_Gtm_AtomChannelDisable,STT_FUNC,0
	.extern	Mcal_WriteSafetyEndInitProtRegMask,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
