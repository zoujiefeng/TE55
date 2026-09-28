	.file	"ComM.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.ComM_Prv_ValidateUserId,"ax",@progbits
	.align 1
	.global	ComM_Prv_ValidateUserId
	.type	ComM_Prv_ValidateUserId, @function
ComM_Prv_ValidateUserId:
.LFB131:
	.file 1 "bsw\\ComM\\src\\ComM.c"
	.loc 1 83 0
.LVL0:
	.loc 1 90 0
	mov	%d2, 0
	.loc 1 87 0
	jge.u	%d4, 4, .L2
	.loc 1 94 0
	movh.a	%a15, hi:ComM_UserId_MappingTable_acst
	lea	%a15, [%a15] lo:ComM_UserId_MappingTable_acst
	addsc.a	%a15, %a15, %d4, 0
	ld.bu	%d2, [%a15]0
	ne	%d2, %d2, 255
.L2:
	.loc 1 97 0
	ret
.LFE131:
	.size	ComM_Prv_ValidateUserId, .-ComM_Prv_ValidateUserId
.section .text.ComM_Prv_getLeastBusSmMode,"ax",@progbits
	.align 1
	.global	ComM_Prv_getLeastBusSmMode
	.type	ComM_Prv_getLeastBusSmMode, @function
ComM_Prv_getLeastBusSmMode:
.LFB132:
	.loc 1 437 0
.LVL1:
	.loc 1 444 0
	movh.a	%a15, hi:ComM_UserId_MappingTable_acst
	lea	%a15, [%a15] lo:ComM_UserId_MappingTable_acst
	addsc.a	%a15, %a15, %d4, 0
	ld.bu	%d15, [%a15]0
.LVL2:
	.loc 1 446 0
	movh.a	%a15, hi:ComM_UserStruct
	mov.d	%d3, %a15
	addi	%d2, %d3, lo:ComM_UserStruct
	madd	%d3, %d2, %d15, 10
	.loc 1 448 0
	mov	%d2, 0
	.loc 1 446 0
	mov.a	%a15, %d3
	ld.bu	%d15, [%a15] 8
.LVL3:
	jnz	%d15, .L6
	.loc 1 450 0
	ld.bu	%d2, [%a15] 7
	.loc 1 456 0
	mov	%d15, 1
	sel	%d2, %d2, %d15, 2
.L6:
.LVL4:
	.loc 1 459 0
	ret
.LFE132:
	.size	ComM_Prv_getLeastBusSmMode, .-ComM_Prv_getLeastBusSmMode
.section .text.ComM_Prv_TranslateInhibitionStatus,"ax",@progbits
	.align 1
	.global	ComM_Prv_TranslateInhibitionStatus
	.type	ComM_Prv_TranslateInhibitionStatus, @function
ComM_Prv_TranslateInhibitionStatus:
.LFB133:
	.loc 1 486 0
.LVL5:
	.loc 1 511 0
	movh.a	%a2, hi:ComM_ChanelList_acst
	mov.d	%d2, %a2
	addi	%d15, %d2, lo:ComM_ChanelList_acst
	madd	%d3, %d15, %d4, 24
	mov.a	%a2, %d3
	ld.a	%a15, [%a2+]16
	ld.bu	%d8, [%a2] 3
.LVL6:
.LBB32:
.LBB33:
	.loc 1 578 0
	jz	%d8, .L9
	movh.a	%a13, hi:ComM_UserId_MappingTable_acst
	movh	%d15, hi:ComM_UserStruct
	mov.aa	%a12, %a15
	lea	%a13, [%a13] lo:ComM_UserId_MappingTable_acst
	addi	%d15, %d15, lo:ComM_UserStruct
	jz	%d5, .L11
	jz	%d6, .L15
	movh.a	%a14, hi:ComM_UserList_acst
	lea	%a14, [%a14] lo:ComM_UserList_acst
	j	.L19
.LVL7:
.L32:
.LBB34:
.LBB35:
	.loc 1 630 0
	add	%d3, 1
	add.a	%a12, 1
.LVL8:
	st.h	[%a2] 2, %d3
.LVL9:
	sub.a	%a2, %a12, %a15
	mov.d	%d2, %a2
.LBE35:
.LBE34:
	.loc 1 578 0
	and	%d2, %d2, 255
	jge.u	%d2, %d8, .L31
.L19:
.LVL10:
	.loc 1 581 0
	ld.bu	%d2, [%a12]0
	addsc.a	%a2, %a13, %d2, 0
	ld.bu	%d2, [%a2]0
.LVL11:
.LBB40:
.LBB36:
	.loc 1 620 0
	madd	%d3, %d15, %d2, 10
.LBE36:
.LBE40:
	.loc 1 590 0
	addsc.a	%a3, %a14, %d2, 3
.LBB41:
.LBB37:
	.loc 1 620 0
	mov.a	%a2, %d3
	ld.bu	%d2, [%a3] 5
.LVL12:
	ld.hu	%d3, [%a2] 2
	jne	%d2, %d3, .L32
.LVL13:
.LBE37:
.LBE41:
.LBB42:
.LBB43:
.LBB44:
.LBB45:
	.loc 1 624 0
	mov	%e4, 12
	mov	%d6, 65
	mov	%d7, 7
	call	Det_ReportError
.LVL14:
	add.a	%a12, 1
	sub.a	%a2, %a12, %a15
	mov.d	%d2, %a2
.LBE45:
.LBE44:
.LBE43:
.LBE42:
	.loc 1 578 0
	and	%d2, %d2, 255
	jlt.u	%d2, %d8, .L19
.L31:
	ret
.L9:
	ret
.LVL15:
.L11:
	jz	%d6, .L23
	movh.a	%a14, hi:ComM_UserList_acst
	lea	%a14, [%a14] lo:ComM_UserList_acst
	j	.L26
.LVL16:
.L24:
.LBB53:
.LBB48:
	.loc 1 630 0
	add	%d3, 1
	st.h	[%a2]0, %d3
.LVL17:
.L25:
	add.a	%a12, 1
	sub.a	%a2, %a12, %a15
	mov.d	%d2, %a2
.LBE48:
.LBE53:
	.loc 1 578 0
	and	%d2, %d2, 255
	jge.u	%d2, %d8, .L9
.L26:
.LVL18:
	.loc 1 581 0
	ld.bu	%d2, [%a12]0
	addsc.a	%a2, %a13, %d2, 0
	ld.bu	%d2, [%a2]0
.LVL19:
.LBB54:
.LBB49:
	.loc 1 620 0
	madd	%d3, %d15, %d2, 10
.LBE49:
.LBE54:
	.loc 1 586 0
	addsc.a	%a3, %a14, %d2, 3
.LBB55:
.LBB50:
	.loc 1 620 0
	mov.a	%a2, %d3
	ld.bu	%d2, [%a3] 5
.LVL20:
	ld.hu	%d3, [%a2]0
	jne	%d2, %d3, .L24
.LVL21:
.LBB47:
.LBB46:
	.loc 1 624 0
	mov	%e4, 12
	mov	%d6, 65
	mov	%d7, 7
	call	Det_ReportError
.LVL22:
	j	.L25
.LVL23:
.L21:
.LBE46:
.LBE47:
	.loc 1 645 0
	add	%d2, -1
	add.a	%a12, 1
.LVL24:
	st.h	[%a2]0, %d2
.LVL25:
	sub.a	%a2, %a12, %a15
	mov.d	%d2, %a2
.LBE50:
.LBE55:
	.loc 1 578 0
	and	%d2, %d2, 255
	jge.u	%d2, %d8, .L33
.LVL26:
.L23:
	.loc 1 581 0
	ld.bu	%d2, [%a12]0
	addsc.a	%a2, %a13, %d2, 0
	ld.bu	%d2, [%a2]0
.LVL27:
.LBB56:
.LBB51:
	.loc 1 635 0
	madd	%d3, %d15, %d2, 10
	mov.a	%a2, %d3
	ld.hu	%d2, [%a2]0
.LVL28:
	jnz	%d2, .L21
	.loc 1 639 0
	mov	%e4, 12
	mov	%d6, 65
	mov	%d7, 6
	call	Det_ReportError
.LVL29:
	add.a	%a12, 1
	sub.a	%a2, %a12, %a15
	mov.d	%d2, %a2
.LBE51:
.LBE56:
	.loc 1 578 0
	and	%d2, %d2, 255
	jlt.u	%d2, %d8, .L23
.L33:
	ret
.LVL30:
.L13:
.LBB57:
.LBB38:
	.loc 1 645 0
	add	%d2, -1
	add.a	%a12, 1
.LVL31:
	st.h	[%a2] 2, %d2
.LVL32:
	sub.a	%a2, %a12, %a15
	mov.d	%d2, %a2
.LBE38:
.LBE57:
	.loc 1 578 0
	and	%d2, %d2, 255
	jge.u	%d2, %d8, .L34
.LVL33:
.L15:
	.loc 1 581 0
	ld.bu	%d2, [%a12]0
	addsc.a	%a2, %a13, %d2, 0
	ld.bu	%d2, [%a2]0
.LVL34:
.LBB58:
.LBB39:
	.loc 1 635 0
	madd	%d3, %d15, %d2, 10
	mov.a	%a2, %d3
	ld.hu	%d2, [%a2] 2
.LVL35:
	jnz	%d2, .L13
.LBE39:
.LBE58:
.LBB59:
.LBB52:
	.loc 1 639 0
	mov	%e4, 12
	mov	%d6, 65
	mov	%d7, 6
	call	Det_ReportError
.LVL36:
	add.a	%a12, 1
	sub.a	%a2, %a12, %a15
	mov.d	%d2, %a2
.LBE52:
.LBE59:
	.loc 1 578 0
	and	%d2, %d2, 255
	jlt.u	%d2, %d8, .L15
.L34:
	ret
.LBE33:
.LBE32:
.LFE133:
	.size	ComM_Prv_TranslateInhibitionStatus, .-ComM_Prv_TranslateInhibitionStatus
.section .text.ComM_Prv_UpdateChannelModes,"ax",@progbits
	.align 1
	.global	ComM_Prv_UpdateChannelModes
	.type	ComM_Prv_UpdateChannelModes, @function
ComM_Prv_UpdateChannelModes:
.LFB136:
	.loc 1 671 0
.LVL37:
	.loc 1 686 0
	movh.a	%a15, hi:ComM_ChanelList_acst
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:ComM_ChanelList_acst
	madd	%d2, %d15, %d4, 24
	mov.a	%a15, %d2
	ld.a	%a14, [%a15] 4
.LVL38:
	.loc 1 688 0
	jeq	%d5, %d6, .L35
.LVL39:
	.loc 1 690 0 discriminator 1
	ld.bu	%d12, [%a15] 21
	jz	%d12, .L35
	movh.a	%a12, hi:ComM_UserStruct
	.loc 1 733 0
	movh	%d14, hi:ComM_UserList_acst
	mov	%d10, %d6
	mov	%d9, %d5
	.loc 1 690 0
	mov.aa	%a15, %a14
	lea	%a12, [%a12] lo:ComM_UserStruct
	.loc 1 733 0
	addi	%d14, %d14, lo:ComM_UserList_acst
.LBB64:
.LBB65:
.LBB66:
.LBB67:
	.loc 1 456 0
	mov	%d13, 1
.LVL40:
.L50:
.LBE67:
.LBE66:
.LBE65:
.LBE64:
	.loc 1 693 0
	ld.bu	%d11, [%a15]0
.LVL41:
	.loc 1 694 0
	movh.a	%a3, hi:ComM_UserId_MappingTable_acst
	lea	%a3, [%a3] lo:ComM_UserId_MappingTable_acst
	addsc.a	%a2, %a3, %d11, 0
	.loc 1 695 0
	ld.bu	%d2, [%a2]0
.LVL42:
	.loc 1 708 0
	mul	%d8, %d2, 10
	.loc 1 702 0
	jeq	%d9, 1, .L39
	jz	%d9, .L40
	jne	%d9, 2, .L38
	.loc 1 706 0
	addsc.a	%a2, %a12, %d8, 0
	ld.bu	%d15, [%a2] 6
	add	%d15, -1
	st.b	[%a2] 6, %d15
.LVL43:
.L38:
	.loc 1 716 0
	jeq	%d10, 1, .L43
.L61:
	jz	%d10, .L44
	jeq	%d10, 2, .L45
	addsc.a	%a2, %a12, %d8, 0
	ld.bu	%d15, [%a2] 8
.L46:
	.loc 1 732 0
	addsc.a	%a13, %a12, %d8, 0
	ld.hu	%d3, [%a13] 2
	jz	%d3, .L47
	.loc 1 733 0 discriminator 1
	mov.a	%a3, %d14
	addsc.a	%a2, %a3, %d2, 3
	.loc 1 732 0 discriminator 1
	ld.bu	%d2, [%a2] 5
.LVL44:
	jeq	%d2, %d15, .L60
.L47:
.LVL45:
.LBB71:
.LBB70:
.LBB69:
.LBB68:
	.loc 1 448 0 discriminator 2
	mov	%d5, 0
	.loc 1 446 0 discriminator 2
	jnz	%d15, .L48
	.loc 1 450 0
	addsc.a	%a2, %a12, %d8, 0
	ld.bu	%d5, [%a2] 7
	.loc 1 456 0
	sel	%d5, %d5, %d13, 2
.L48:
.LVL46:
.LBE68:
.LBE69:
	.loc 1 782 0
	addsc.a	%a2, %a12, %d8, 0
	ld.bu	%d15, [%a2] 5
	add.a	%a2, 4
	jeq	%d15, %d5, .L49
	.loc 1 784 0
	st.b	[%a2] 1, %d5
	.loc 1 785 0
	mov	%d4, %d11
	call	ComM_Prv_Rte_Switch_UM_currentMode
.LVL47:
.L49:
	add.a	%a15, 1
.LVL48:
	sub.a	%a2, %a15, %a14
	mov.d	%d15, %a2
.LBE70:
.LBE71:
	.loc 1 690 0 discriminator 2
	and	%d15, 255
	jlt.u	%d15, %d12, .L50
.LVL49:
.L35:
	ret
.LVL50:
.L45:
	.loc 1 720 0
	addsc.a	%a3, %a12, %d8, 0
	ld.bu	%d15, [%a3] 6
	add	%d15, 1
	st.b	[%a3] 6, %d15
	ld.bu	%d15, [%a3] 8
	.loc 1 721 0
	j	.L46
.LVL51:
.L39:
	.loc 1 708 0
	addsc.a	%a2, %a12, %d8, 0
	ld.bu	%d15, [%a2] 7
	add	%d15, -1
	st.b	[%a2] 7, %d15
.LVL52:
	.loc 1 716 0
	jne	%d10, 1, .L61
.L43:
	.loc 1 722 0
	addsc.a	%a3, %a12, %d8, 0
	ld.bu	%d15, [%a3] 7
	add	%d15, 1
	st.b	[%a3] 7, %d15
	ld.bu	%d15, [%a3] 8
	.loc 1 723 0
	j	.L46
.L44:
	.loc 1 718 0
	addsc.a	%a2, %a12, %d8, 0
	ld.bu	%d15, [%a2] 8
	add	%d15, 1
	and	%d15, 255
	st.b	[%a2] 8, %d15
	.loc 1 719 0
	j	.L46
.LVL53:
.L40:
	.loc 1 704 0
	addsc.a	%a2, %a12, %d8, 0
	ld.bu	%d15, [%a2] 8
	add	%d15, -1
	st.b	[%a2] 8, %d15
.LVL54:
	.loc 1 705 0
	j	.L38
.LVL55:
.L60:
	.loc 1 735 0
	mov	%d4, %d11
	mov	%d5, 0
	call	ComM_RequestComMode
.LVL56:
	ld.bu	%d15, [%a13] 8
	j	.L47
.LFE136:
	.size	ComM_Prv_UpdateChannelModes, .-ComM_Prv_UpdateChannelModes
.section .text.ComM_Prv_RteNotifyLowestComMode,"ax",@progbits
	.align 1
	.global	ComM_Prv_RteNotifyLowestComMode
	.type	ComM_Prv_RteNotifyLowestComMode, @function
ComM_Prv_RteNotifyLowestComMode:
.LFB137:
	.loc 1 768 0
.LVL57:
	.loc 1 774 0
	movh.a	%a15, hi:ComM_UserId_MappingTable_acst
	lea	%a15, [%a15] lo:ComM_UserId_MappingTable_acst
	addsc.a	%a15, %a15, %d4, 0
.LBB72:
.LBB73:
	.loc 1 448 0
	mov	%d5, 0
.LBE73:
.LBE72:
	.loc 1 775 0
	ld.bu	%d15, [%a15]0
.LVL58:
.LBB75:
.LBB74:
	.loc 1 446 0
	movh.a	%a15, hi:ComM_UserStruct
	mul	%d15, %d15, 10
.LVL59:
	lea	%a15, [%a15] lo:ComM_UserStruct
	addsc.a	%a2, %a15, %d15, 0
	ld.bu	%d2, [%a2] 8
	jnz	%d2, .L63
	.loc 1 450 0
	ld.bu	%d5, [%a2] 7
	.loc 1 456 0
	mov	%d2, 1
	sel	%d5, %d5, %d2, 2
.L63:
.LVL60:
.LBE74:
.LBE75:
	.loc 1 782 0
	addsc.a	%a15, %a15, %d15, 0
	add.a	%a15, 4
	ld.bu	%d15, [%a15] 1
	jeq	%d15, %d5, .L62
	.loc 1 784 0
	st.b	[%a15] 1, %d5
	.loc 1 785 0
	j	ComM_Prv_Rte_Switch_UM_currentMode
.LVL61:
.L62:
	ret
.LFE137:
	.size	ComM_Prv_RteNotifyLowestComMode, .-ComM_Prv_RteNotifyLowestComMode
.section .text.ComM_Prv_ProcessLimitToNoCom,"ax",@progbits
	.align 1
	.global	ComM_Prv_ProcessLimitToNoCom
	.type	ComM_Prv_ProcessLimitToNoCom, @function
ComM_Prv_ProcessLimitToNoCom:
.LFB138:
	.loc 1 881 0
.LVL62:
	.loc 1 889 0
	mul	%d4, %d4, 24
.LVL63:
	movh.a	%a15, hi:ComM_ChannelStruct
	lea	%a15, [%a15] lo:ComM_ChannelStruct
	addsc.a	%a15, %a15, %d4, 0
	ld.bu	%d15, [%a15] 16
.LVL64:
	extr.u	%d2, %d15, 1, 1
	jeq	%d5, %d2, .L67
	.loc 1 893 0
	jnz	%d5, .L85
.LVL65:
.LBB98:
.LBB99:
	.file 2 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
	.loc 2 252 0
	andn	%d15, %d15, ~(-3)
	st.b	[%a15] 16, %d15
.LVL66:
.LBE99:
.LBE98:
.LBB100:
.LBB101:
	.loc 1 511 0
	movh.a	%a15, hi:ComM_ChanelList_acst
	lea	%a15, [%a15] lo:ComM_ChanelList_acst
	addsc.a	%a15, %a15, %d4, 0
	ld.a	%a12, [%a15+]16
	ld.bu	%d8, [%a15] 3
.LVL67:
.LBB102:
.LBB103:
	.loc 1 578 0
	jz	%d8, .L67
	movh.a	%a13, hi:ComM_UserId_MappingTable_acst
	movh	%d15, hi:ComM_UserStruct
	mov.aa	%a15, %a12
.LVL68:
	lea	%a13, [%a13] lo:ComM_UserId_MappingTable_acst
	addi	%d15, %d15, lo:ComM_UserStruct
	j	.L76
.LVL69:
.L74:
.LBB104:
.LBB105:
	.loc 1 645 0
	add	%d2, -1
	add.a	%a15, 1
.LVL70:
	st.h	[%a2] 2, %d2
.LVL71:
	sub.a	%a2, %a15, %a12
	mov.d	%d2, %a2
.LBE105:
.LBE104:
	.loc 1 578 0
	and	%d2, %d2, 255
	jge.u	%d2, %d8, .L67
.LVL72:
.L76:
	.loc 1 581 0
	ld.bu	%d2, [%a15]0
	addsc.a	%a2, %a13, %d2, 0
	ld.bu	%d2, [%a2]0
.LVL73:
.LBB107:
.LBB106:
	.loc 1 635 0
	madd	%d3, %d15, %d2, 10
	mov.a	%a2, %d3
	ld.hu	%d2, [%a2] 2
.LVL74:
	jnz	%d2, .L74
	.loc 1 639 0
	mov	%e4, 12
	mov	%d6, 65
	mov	%d7, 6
	call	Det_ReportError
.LVL75:
	add.a	%a15, 1
	sub.a	%a2, %a15, %a12
	mov.d	%d2, %a2
.LBE106:
.LBE107:
	.loc 1 578 0
	and	%d2, %d2, 255
	jlt.u	%d2, %d8, .L76
.LVL76:
.L67:
	ret
.LVL77:
.L85:
.LBE103:
.LBE102:
.LBE101:
.LBE100:
.LBB108:
.LBB109:
	.loc 2 1131 0
	or	%d15, %d15, 2
	st.b	[%a15] 16, %d15
.LVL78:
.LBE109:
.LBE108:
.LBB110:
.LBB111:
	.loc 1 511 0
	movh.a	%a15, hi:ComM_ChanelList_acst
	lea	%a15, [%a15] lo:ComM_ChanelList_acst
	addsc.a	%a15, %a15, %d4, 0
	ld.a	%a12, [%a15+]16
	ld.bu	%d8, [%a15] 3
.LVL79:
.LBB112:
.LBB113:
	.loc 1 578 0
	jz	%d8, .L67
	movh.a	%a13, hi:ComM_UserId_MappingTable_acst
	movh	%d15, hi:ComM_UserStruct
	movh.a	%a14, hi:ComM_UserList_acst
	mov.aa	%a15, %a12
.LVL80:
	lea	%a13, [%a13] lo:ComM_UserId_MappingTable_acst
	addi	%d15, %d15, lo:ComM_UserStruct
	lea	%a14, [%a14] lo:ComM_UserList_acst
	j	.L73
.LVL81:
.L71:
.LBB114:
.LBB115:
	.loc 1 630 0
	add	%d3, 1
	add.a	%a15, 1
.LVL82:
	st.h	[%a2] 2, %d3
.LVL83:
	sub.a	%a2, %a15, %a12
	mov.d	%d2, %a2
.LBE115:
.LBE114:
	.loc 1 578 0
	and	%d2, %d2, 255
	jge.u	%d2, %d8, .L86
.L73:
.LVL84:
	.loc 1 581 0
	ld.bu	%d2, [%a15]0
	addsc.a	%a2, %a13, %d2, 0
	ld.bu	%d2, [%a2]0
.LVL85:
.LBB120:
.LBB118:
	.loc 1 620 0
	madd	%d3, %d15, %d2, 10
.LBE118:
.LBE120:
	.loc 1 590 0
	addsc.a	%a3, %a14, %d2, 3
.LBB121:
.LBB119:
	.loc 1 620 0
	mov.a	%a2, %d3
	ld.bu	%d2, [%a3] 5
.LVL86:
	ld.hu	%d3, [%a2] 2
	jne	%d2, %d3, .L71
.LVL87:
.LBB116:
.LBB117:
	.loc 1 624 0
	mov	%e4, 12
	mov	%d6, 65
	mov	%d7, 7
	call	Det_ReportError
.LVL88:
	add.a	%a15, 1
	sub.a	%a2, %a15, %a12
	mov.d	%d2, %a2
.LBE117:
.LBE116:
.LBE119:
.LBE121:
	.loc 1 578 0
	and	%d2, %d2, 255
	jlt.u	%d2, %d8, .L73
.L86:
	ret
.LBE113:
.LBE112:
.LBE111:
.LBE110:
.LFE138:
	.size	ComM_Prv_ProcessLimitToNoCom, .-ComM_Prv_ProcessLimitToNoCom
.section .text.ComM_Nm_TransmissionFailure,"ax",@progbits
	.align 1
	.global	ComM_Nm_TransmissionFailure
	.type	ComM_Nm_TransmissionFailure, @function
ComM_Nm_TransmissionFailure:
.LFB139:
	.loc 1 935 0
.LVL89:
	ret
.LFE139:
	.size	ComM_Nm_TransmissionFailure, .-ComM_Nm_TransmissionFailure
.section .text.ComM_Nm_NetworkTimeoutException,"ax",@progbits
	.align 1
	.global	ComM_Nm_NetworkTimeoutException
	.type	ComM_Nm_NetworkTimeoutException, @function
ComM_Nm_NetworkTimeoutException:
.LFB140:
	.loc 1 959 0
.LVL90:
	ret
.LFE140:
	.size	ComM_Nm_NetworkTimeoutException, .-ComM_Nm_NetworkTimeoutException
	.global	ComM_NvMblock
.section .bss.a2.ComM_NvMblock,"aw",@nobits
	.align 1
	.type	ComM_NvMblock, @object
	.size	ComM_NvMblock, 4
ComM_NvMblock:
	.zero	4
	.global	ComM_ChannelStruct
.section .bss.a4.ComM_ChannelStruct,"aw",@nobits
	.align 2
	.type	ComM_ChannelStruct, @object
	.size	ComM_ChannelStruct, 96
ComM_ChannelStruct:
	.zero	96
	.global	ComM_UserStruct
.section .bss.a2.ComM_UserStruct,"aw",@nobits
	.align 1
	.type	ComM_UserStruct, @object
	.size	ComM_UserStruct, 40
ComM_UserStruct:
	.zero	40
	.global	ComM_GlobalStruct
.section .bss.a2.ComM_GlobalStruct,"aw",@nobits
	.align 1
	.type	ComM_GlobalStruct, @object
	.size	ComM_GlobalStruct, 6
ComM_GlobalStruct:
	.zero	6
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
	.uaword	.LFB131
	.uaword	.LFE131-.LFB131
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB132
	.uaword	.LFE132-.LFB132
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB133
	.uaword	.LFE133-.LFB133
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB136
	.uaword	.LFE136-.LFB136
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB137
	.uaword	.LFE137-.LFB137
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB138
	.uaword	.LFE138-.LFB138
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB139
	.uaword	.LFE139-.LFB139
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB140
	.uaword	.LFE140-.LFB140
	.align 2
.LEFDE14:
.section .text,"ax",@progbits
.Letext0:
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 4 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 5 ".\\output\\inc/..\\..\\bsw\\ComStack\\api\\ComStack_Types.h"
	.file 6 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM_Types.h"
	.file 7 ".\\output\\inc/..\\..\\rte\\Rte_Type.h"
	.file 8 ".\\output\\inc/..\\..\\bsw\\ComM\\ComM_Cfg_Internal.h"
	.file 9 "bsw\\ComM\\src\\ComM_Priv.h"
	.file 10 ".\\output\\inc/..\\..\\bsw\\ComM\\integration\\ComM_Cfg_SchM.h"
	.file 11 ".\\output\\inc/..\\..\\bsw\\Det\\api\\Det.h"
	.file 12 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x185d
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\ComM\\src\\ComM.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x100
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x3
	.byte	0x51
	.uaword	0x1be
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
	.byte	0x3
	.byte	0x5b
	.uaword	0x1ea
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
	.byte	0x3
	.byte	0x6a
	.uaword	0x226
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
	.byte	0x3
	.byte	0x80
	.uaword	0x1be
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
	.byte	0x4
	.byte	0x60
	.uaword	0x1b1
	.uleb128 0x4
	.byte	0x4
	.uaword	0x1b1
	.uleb128 0x3
	.string	"NetworkHandleType"
	.byte	0x5
	.byte	0x4f
	.uaword	0x1b1
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.byte	0x4a
	.uaword	0x2eb
	.uleb128 0x6
	.string	"COMM_UNINIT"
	.sleb128 0
	.uleb128 0x6
	.string	"COMM_INIT"
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.string	"ComM_InitStatusType"
	.byte	0x6
	.byte	0x4d
	.uaword	0x2c8
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.byte	0x5d
	.uaword	0x377
	.uleb128 0x6
	.string	"COMM_BUS_TYPE_CAN"
	.sleb128 0
	.uleb128 0x6
	.string	"COMM_BUS_TYPE_ETH"
	.sleb128 1
	.uleb128 0x6
	.string	"COMM_BUS_TYPE_FR"
	.sleb128 2
	.uleb128 0x6
	.string	"COMM_BUS_TYPE_INTERNAL"
	.sleb128 3
	.uleb128 0x6
	.string	"COMM_BUS_TYPE_LIN"
	.sleb128 4
	.byte	0
	.uleb128 0x3
	.string	"ComM_BusType_ten"
	.byte	0x6
	.byte	0x63
	.uaword	0x306
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.byte	0x72
	.uaword	0x3b8
	.uleb128 0x6
	.string	"FULL"
	.sleb128 0
	.uleb128 0x6
	.string	"LIGHT"
	.sleb128 1
	.uleb128 0x6
	.string	"NONE"
	.sleb128 2
	.uleb128 0x6
	.string	"PASSIVE"
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.string	"ComM_NMVariantType_ten"
	.byte	0x6
	.byte	0x77
	.uaword	0x38f
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.byte	0x89
	.uaword	0x46e
	.uleb128 0x6
	.string	"COMM_NO_COM_NO_PENDING_REQUEST"
	.sleb128 0
	.uleb128 0x6
	.string	"COMM_NO_COM_REQUEST_PENDING"
	.sleb128 1
	.uleb128 0x6
	.string	"COMM_FULL_COM_NETWORK_REQUESTED"
	.sleb128 2
	.uleb128 0x6
	.string	"COMM_FULL_COM_READY_SLEEP"
	.sleb128 3
	.uleb128 0x6
	.string	"COMM_SILENT_COM"
	.sleb128 4
	.byte	0
	.uleb128 0x3
	.string	"ComM_StateType"
	.byte	0x6
	.byte	0x8f
	.uaword	0x3d6
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x7
	.uaword	0x1b1
	.uleb128 0x3
	.string	"ComM_InhibitionStatusType"
	.byte	0x7
	.byte	0xde
	.uaword	0x1b1
	.uleb128 0x3
	.string	"ComM_ModeType"
	.byte	0x7
	.byte	0xe0
	.uaword	0x1b1
	.uleb128 0x3
	.string	"ComM_UserHandleType"
	.byte	0x7
	.byte	0xe2
	.uaword	0x1b1
	.uleb128 0x8
	.uaword	0x1b1
	.uaword	0x4f6
	.uleb128 0x9
	.uaword	0x484
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x1dc
	.uleb128 0x4
	.byte	0x4
	.uaword	0x490
	.uleb128 0xa
	.byte	0x8
	.byte	0x8
	.byte	0x8d
	.uaword	0x564
	.uleb128 0xb
	.string	"DirectChannels_pcu8"
	.byte	0x8
	.byte	0x8f
	.uaword	0x4fc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"NumDirectChannels_u8"
	.byte	0x8
	.byte	0x93
	.uaword	0x1b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"NumAllChannels_u8"
	.byte	0x8
	.byte	0x94
	.uaword	0x1b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.string	"ComM_UsersType_tst"
	.byte	0x8
	.byte	0x98
	.uaword	0x502
	.uleb128 0xc
	.string	"ComM_ChannelTypeStruct"
	.byte	0x18
	.byte	0x8
	.byte	0x9b
	.uaword	0x6e8
	.uleb128 0xb
	.string	"DirectUsers_pcu8"
	.byte	0x8
	.byte	0xa1
	.uaword	0x4fc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"AllUsers_pcu8"
	.byte	0x8
	.byte	0xa3
	.uaword	0x4fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"BusType_en"
	.byte	0x8
	.byte	0xa4
	.uaword	0x377
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"ComMNmVariant_en"
	.byte	0x8
	.byte	0xa5
	.uaword	0x3b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xb
	.string	"NmLightTimeout_u32"
	.byte	0x8
	.byte	0xa9
	.uaword	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.string	"TMinFullComModeDuration_u16"
	.byte	0x8
	.byte	0xaa
	.uaword	0x1dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"ComMChannelId_u8"
	.byte	0x8
	.byte	0xae
	.uaword	0x2af
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0xb
	.string	"numDirectUsers_u8"
	.byte	0x8
	.byte	0xb3
	.uaword	0x1b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x13
	.uleb128 0xb
	.string	"InhibitionInitValue_u8"
	.byte	0x8
	.byte	0xb4
	.uaword	0x1b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.string	"numAllUsers_u8"
	.byte	0x8
	.byte	0xb6
	.uaword	0x1b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.uleb128 0xb
	.string	"ComMFullCommRequestNotificationEnabled_b"
	.byte	0x8
	.byte	0xc3
	.uaword	0x263
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.string	"ComM_ChannelType_tst"
	.byte	0x8
	.byte	0xc4
	.uaword	0x57e
	.uleb128 0x3
	.string	"ComM_DiagnosticType"
	.byte	0x9
	.byte	0xf3
	.uaword	0x263
	.uleb128 0x5
	.byte	0x1
	.byte	0x9
	.byte	0xf7
	.uaword	0x751
	.uleb128 0x6
	.string	"COMM_PREVENTWAKEUP"
	.sleb128 0
	.uleb128 0x6
	.string	"COMM_LIMITTONOCOM"
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.string	"ComM_InhibitionType_ten"
	.byte	0x9
	.byte	0xfa
	.uaword	0x71f
	.uleb128 0xd
	.byte	0x6
	.byte	0x9
	.uahalf	0x109
	.uaword	0x807
	.uleb128 0xe
	.string	"ComM_InitStatus_en"
	.byte	0x9
	.uahalf	0x10b
	.uaword	0x2eb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"ComM_InhibitCounter_u16"
	.byte	0x9
	.uahalf	0x10d
	.uaword	0x1dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xe
	.string	"ComM_EcuGroupClassification_u8"
	.byte	0x9
	.uahalf	0x10e
	.uaword	0x495
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"ComM_LimitECUToNoCom_b"
	.byte	0x9
	.uahalf	0x111
	.uaword	0x263
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0xf
	.string	"ComM_GlobalVarType_tst"
	.byte	0x9
	.uahalf	0x113
	.uaword	0x770
	.uleb128 0xd
	.byte	0x18
	.byte	0x9
	.uahalf	0x132
	.uaword	0xa1f
	.uleb128 0xe
	.string	"ChannelState_e"
	.byte	0x9
	.uahalf	0x134
	.uaword	0x46e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"LightTimeoutCtr_u32"
	.byte	0x9
	.uahalf	0x135
	.uaword	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"MinFullComTimeoutCtr_u16"
	.byte	0x9
	.uahalf	0x136
	.uaword	0x1dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"UserRequestCtr_u16"
	.byte	0x9
	.uahalf	0x137
	.uaword	0x1dc
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xe
	.string	"ChannelMode_u8"
	.byte	0x9
	.uahalf	0x138
	.uaword	0x4b6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"BusSmMode_u8"
	.byte	0x9
	.uahalf	0x139
	.uaword	0x4b6
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xe
	.string	"PassiveRequestState_u8"
	.byte	0x9
	.uahalf	0x13d
	.uaword	0x1b1
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xe
	.string	"PncRequestCtr_u8"
	.byte	0x9
	.uahalf	0x13e
	.uaword	0x1b1
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0xe
	.string	"InhibitionReqStatus_u8"
	.byte	0x9
	.uahalf	0x13f
	.uaword	0x495
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"NmNetworkRequestStatus_b"
	.byte	0x9
	.uahalf	0x140
	.uaword	0x263
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0xe
	.string	"DiagnosticRequestState_b"
	.byte	0x9
	.uahalf	0x141
	.uaword	0x704
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0xe
	.string	"CommunicationAllowed_b"
	.byte	0x9
	.uahalf	0x142
	.uaword	0x263
	.byte	0x2
	.byte	0x23
	.uleb128 0x13
	.uleb128 0xe
	.string	"NmBusSleepIndicationStatus_b"
	.byte	0x9
	.uahalf	0x143
	.uaword	0x263
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"NmPrepareBusSleepIndicationStatus_b"
	.byte	0x9
	.uahalf	0x144
	.uaword	0x263
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.uleb128 0xe
	.string	"NmNetworkModeStatus_b"
	.byte	0x9
	.uahalf	0x145
	.uaword	0x263
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.byte	0
	.uleb128 0xf
	.string	"ComM_ChannelVarType_tst"
	.byte	0x9
	.uahalf	0x149
	.uaword	0x826
	.uleb128 0xd
	.byte	0xa
	.byte	0x9
	.uahalf	0x15c
	.uaword	0xb34
	.uleb128 0xe
	.string	"WakeUpInhibitionCtr_u16"
	.byte	0x9
	.uahalf	0x15e
	.uaword	0x1dc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"LimitToNoComCtr_u16"
	.byte	0x9
	.uahalf	0x15f
	.uaword	0x1dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xe
	.string	"RequestedUserMode_u8"
	.byte	0x9
	.uahalf	0x160
	.uaword	0x4b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"IndicatedUserMode_u8"
	.byte	0x9
	.uahalf	0x161
	.uaword	0x4b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0xe
	.string	"numChannelsInFullCom_u8"
	.byte	0x9
	.uahalf	0x162
	.uaword	0x1b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xe
	.string	"numChannelsInSilentCom_u8"
	.byte	0x9
	.uahalf	0x163
	.uaword	0x1b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xe
	.string	"numChannelsInNoCom_u8"
	.byte	0x9
	.uahalf	0x164
	.uaword	0x1b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0xf
	.string	"ComM_UserVarType_tst"
	.byte	0x9
	.uahalf	0x165
	.uaword	0xa3f
	.uleb128 0xd
	.byte	0x4
	.byte	0x9
	.uahalf	0x1b8
	.uaword	0xbc0
	.uleb128 0xe
	.string	"Inhibitioncounter_u16"
	.byte	0x9
	.uahalf	0x1b9
	.uaword	0x1dc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"ComMNoWakeup_u8"
	.byte	0x9
	.uahalf	0x1ba
	.uaword	0x4e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xe
	.string	"ComMEcuGroupClassification_u8"
	.byte	0x9
	.uahalf	0x1bb
	.uaword	0x1b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0xf
	.string	"ComM_NvMStorageType_tst"
	.byte	0x9
	.uahalf	0x1bc
	.uaword	0xb51
	.uleb128 0x10
	.string	"ComM_Prv_UpdateInhibitionCounter"
	.byte	0x1
	.uahalf	0x266
	.byte	0x1
	.byte	0x3
	.uaword	0xc58
	.uleb128 0x11
	.string	"InhibitionCounter_pu16"
	.byte	0x1
	.uahalf	0x266
	.uaword	0x4f6
	.uleb128 0x12
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x267
	.uaword	0x263
	.uleb128 0x11
	.string	"InhibitionCounterMax_u16"
	.byte	0x1
	.uahalf	0x268
	.uaword	0x1dc
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"ComM_Prv_getLeastBusSmMode"
	.byte	0x1
	.uahalf	0x1b3
	.byte	0x1
	.uaword	0x4b6
	.byte	0x1
	.uaword	0xcbe
	.uleb128 0x12
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x1b3
	.uaword	0x4cb
	.uleb128 0x14
	.string	"leastModeAmongChannels_tu8"
	.byte	0x1
	.uahalf	0x1b9
	.uaword	0x4b6
	.uleb128 0x15
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x1ba
	.uaword	0xcbe
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0xb34
	.uleb128 0x16
	.string	"SchM_Enter_ComM_Channel"
	.byte	0xa
	.byte	0xbf
	.byte	0x1
	.byte	0x3
	.uleb128 0x16
	.string	"SchM_Exit_ComM_Channel"
	.byte	0xa
	.byte	0xd5
	.byte	0x1
	.byte	0x3
	.uleb128 0x17
	.string	"Bfx_Prv_GetBit_u8u8_u8_Inl"
	.byte	0x2
	.uahalf	0x1fd
	.byte	0x1
	.uaword	0x263
	.byte	0x3
	.uaword	0xd42
	.uleb128 0x11
	.string	"Data"
	.byte	0x2
	.uahalf	0x1fd
	.uaword	0x1b1
	.uleb128 0x11
	.string	"BitPn"
	.byte	0x2
	.uahalf	0x1fd
	.uaword	0x1b1
	.byte	0
	.uleb128 0x16
	.string	"SchM_Enter_ComM_LimitationNoNest"
	.byte	0xa
	.byte	0xad
	.byte	0x1
	.byte	0x3
	.uleb128 0x10
	.string	"Bfx_Prv_SetBit_u8u8_Inl"
	.byte	0x2
	.uahalf	0x469
	.byte	0x1
	.byte	0x3
	.uaword	0xda6
	.uleb128 0x11
	.string	"Data"
	.byte	0x2
	.uahalf	0x469
	.uaword	0x2a9
	.uleb128 0x11
	.string	"BitPn"
	.byte	0x2
	.uahalf	0x469
	.uaword	0x1b1
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"ComM_Prv_TranslateInhibitionStatus"
	.byte	0x1
	.uahalf	0x1e3
	.byte	0x1
	.byte	0x1
	.uaword	0xe05
	.uleb128 0x12
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x1e3
	.uaword	0x2af
	.uleb128 0x12
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x1e4
	.uaword	0x751
	.uleb128 0x12
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x1e5
	.uaword	0x263
	.uleb128 0x15
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x1e9
	.uaword	0xe05
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0xe0b
	.uleb128 0x7
	.uaword	0x6e8
	.uleb128 0x19
	.string	"Bfx_Prv_ClrBit_u8u8_Inl"
	.byte	0x2
	.byte	0xf9
	.byte	0x1
	.byte	0x3
	.uaword	0xe4b
	.uleb128 0x1a
	.string	"Data"
	.byte	0x2
	.byte	0xf9
	.uaword	0x2a9
	.uleb128 0x1a
	.string	"BitPn"
	.byte	0x2
	.byte	0xf9
	.uaword	0x1b1
	.byte	0
	.uleb128 0x16
	.string	"SchM_Exit_ComM_LimitationNoNest"
	.byte	0xa
	.byte	0xbc
	.byte	0x1
	.byte	0x3
	.uleb128 0x10
	.string	"ComM_Prv_TranslateInhibitionToUser"
	.byte	0x1
	.uahalf	0x238
	.byte	0x1
	.byte	0x3
	.uaword	0xf28
	.uleb128 0x11
	.string	"Users_pcu8"
	.byte	0x1
	.uahalf	0x238
	.uaword	0x4fc
	.uleb128 0x12
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x239
	.uaword	0x1b1
	.uleb128 0x12
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x23a
	.uaword	0x751
	.uleb128 0x12
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x23b
	.uaword	0x263
	.uleb128 0x14
	.string	"loopCounter_u8"
	.byte	0x1
	.uahalf	0x23d
	.uaword	0x1b1
	.uleb128 0x15
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x23e
	.uaword	0x1b1
	.uleb128 0x14
	.string	"userRamPtr_ps"
	.byte	0x1
	.uahalf	0x23f
	.uaword	0xcbe
	.uleb128 0x14
	.string	"userConfigPtr_pcs"
	.byte	0x1
	.uahalf	0x240
	.uaword	0xf28
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0xf2e
	.uleb128 0x7
	.uaword	0x564
	.uleb128 0x1b
	.byte	0x1
	.string	"ComM_Prv_ValidateUserId"
	.byte	0x1
	.byte	0x52
	.byte	0x1
	.uaword	0x263
	.uaword	.LFB131
	.uaword	.LFE131
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xf79
	.uleb128 0x1c
	.string	"UserId_tu8"
	.byte	0x1
	.byte	0x52
	.uaword	0x4cb
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x1d
	.uaword	0xc58
	.uaword	.LFB132
	.uaword	.LFE132
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xfa6
	.uleb128 0x1e
	.uaword	0xc82
	.byte	0x1
	.byte	0x54
	.uleb128 0x1f
	.uaword	0xc8e
	.byte	0x1
	.byte	0x52
	.uleb128 0x20
	.uaword	0xcb1
	.uaword	.LLST0
	.byte	0
	.uleb128 0x1d
	.uaword	0xda6
	.uaword	.LFB133
	.uaword	.LFE133
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x112c
	.uleb128 0x21
	.uaword	0xdd4
	.uaword	.LLST1
	.uleb128 0x21
	.uaword	0xde0
	.uaword	.LLST2
	.uleb128 0x21
	.uaword	0xdec
	.uaword	.LLST3
	.uleb128 0x22
	.uaword	0xdf8
	.uleb128 0x23
	.uaword	0xe70
	.uaword	.LBB32
	.uaword	.LBE32
	.byte	0x1
	.uahalf	0x1ff
	.uleb128 0x21
	.uaword	0xec8
	.uaword	.LLST4
	.uleb128 0x21
	.uaword	0xebc
	.uaword	.LLST5
	.uleb128 0x21
	.uaword	0xeb0
	.uaword	.LLST6
	.uleb128 0x24
	.uaword	0xe9d
	.uleb128 0x25
	.uaword	.LBB33
	.uaword	.LBE33
	.uleb128 0x20
	.uaword	0xed4
	.uaword	.LLST7
	.uleb128 0x20
	.uaword	0xeeb
	.uaword	.LLST8
	.uleb128 0x20
	.uaword	0xef7
	.uaword	.LLST9
	.uleb128 0x22
	.uaword	0xf0d
	.uleb128 0x26
	.uaword	0xbe0
	.uaword	.LBB34
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.uahalf	0x24e
	.uaword	0x1060
	.uleb128 0x24
	.uaword	0xc36
	.uleb128 0x21
	.uaword	0xc2a
	.uaword	.LLST10
	.uleb128 0x21
	.uaword	0xc0b
	.uaword	.LLST11
	.byte	0
	.uleb128 0x27
	.uaword	0xbe0
	.uaword	.LBB42
	.uaword	.Ldebug_ranges0+0x30
	.byte	0x1
	.uahalf	0x24a
	.uleb128 0x24
	.uaword	0xc36
	.uleb128 0x21
	.uaword	0xc2a
	.uaword	.LLST12
	.uleb128 0x21
	.uaword	0xc0b
	.uaword	.LLST13
	.uleb128 0x28
	.uaword	.Ldebug_ranges0+0x68
	.uaword	0x10e6
	.uleb128 0x21
	.uaword	0xc0b
	.uaword	.LLST14
	.uleb128 0x24
	.uaword	0xc2a
	.uleb128 0x24
	.uaword	0xc36
	.uleb128 0x29
	.uaword	.LVL14
	.uaword	0x17cb
	.uaword	0x10c6
	.uleb128 0x2a
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x37
	.uleb128 0x2a
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x8
	.byte	0x41
	.uleb128 0x2a
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x2a
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3c
	.byte	0
	.uleb128 0x2b
	.uaword	.LVL22
	.uaword	0x17cb
	.uleb128 0x2a
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x37
	.uleb128 0x2a
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x8
	.byte	0x41
	.uleb128 0x2a
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x2a
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0
	.uleb128 0x29
	.uaword	.LVL29
	.uaword	0x17cb
	.uaword	0x1109
	.uleb128 0x2a
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x36
	.uleb128 0x2a
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x8
	.byte	0x41
	.uleb128 0x2a
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x2a
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3c
	.byte	0
	.uleb128 0x2b
	.uaword	.LVL36
	.uaword	0x17cb
	.uleb128 0x2a
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x36
	.uleb128 0x2a
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x8
	.byte	0x41
	.uleb128 0x2a
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x2a
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"ComM_Prv_RteNotifyLowestComMode"
	.byte	0x1
	.uahalf	0x2ff
	.byte	0x1
	.byte	0x1
	.uaword	0x1197
	.uleb128 0x12
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x2ff
	.uaword	0x4cb
	.uleb128 0x14
	.string	"lowestUserMode_tu8"
	.byte	0x1
	.uahalf	0x302
	.uaword	0x4b6
	.uleb128 0x15
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x303
	.uaword	0xcbe
	.uleb128 0x15
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x304
	.uaword	0x1b1
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.string	"ComM_Prv_UpdateChannelModes"
	.byte	0x1
	.uahalf	0x29c
	.byte	0x1
	.uaword	.LFB136
	.uaword	.LFE136
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x131a
	.uleb128 0x2d
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x29c
	.uaword	0x2af
	.uaword	.LLST15
	.uleb128 0x2e
	.string	"PreviousMode_tu8"
	.byte	0x1
	.uahalf	0x29d
	.uaword	0x4b6
	.uaword	.LLST16
	.uleb128 0x2e
	.string	"CurrentMode_tu8"
	.byte	0x1
	.uahalf	0x29e
	.uaword	0x4b6
	.uaword	.LLST17
	.uleb128 0x2f
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x2a1
	.uaword	0x1b1
	.uaword	.LLST18
	.uleb128 0x2f
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x2a2
	.uaword	0x1b1
	.uaword	.LLST19
	.uleb128 0x15
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x2a3
	.uaword	0xe05
	.uleb128 0x2f
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x2a5
	.uaword	0xcbe
	.uaword	.LLST20
	.uleb128 0x30
	.string	"allUsers_pcu8"
	.byte	0x1
	.uahalf	0x2a6
	.uaword	0x4fc
	.byte	0x1
	.byte	0x6e
	.uleb128 0x15
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x2a7
	.uaword	0x1b1
	.uleb128 0x14
	.string	"userConfigPtr_pcst"
	.byte	0x1
	.uahalf	0x2aa
	.uaword	0xf28
	.uleb128 0x26
	.uaword	0x112c
	.uaword	.LBB64
	.uaword	.Ldebug_ranges0+0x80
	.byte	0x1
	.uahalf	0x2e5
	.uaword	0x1304
	.uleb128 0x21
	.uaword	0x1157
	.uaword	.LLST21
	.uleb128 0x31
	.uaword	.Ldebug_ranges0+0x80
	.uleb128 0x1f
	.uaword	0x1163
	.byte	0x1
	.byte	0x55
	.uleb128 0x22
	.uaword	0x117e
	.uleb128 0x22
	.uaword	0x118a
	.uleb128 0x26
	.uaword	0xc58
	.uaword	.LBB66
	.uaword	.Ldebug_ranges0+0x98
	.byte	0x1
	.uahalf	0x309
	.uaword	0x12f2
	.uleb128 0x21
	.uaword	0xc82
	.uaword	.LLST21
	.uleb128 0x31
	.uaword	.Ldebug_ranges0+0x98
	.uleb128 0x20
	.uaword	0xc8e
	.uaword	.LLST23
	.uleb128 0x22
	.uaword	0xcb1
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	.LVL47
	.uaword	0x17fe
	.uleb128 0x2a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7b
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	.LVL56
	.uaword	0x1837
	.uleb128 0x2a
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x2a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7b
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0x112c
	.uaword	.LFB137
	.uaword	.LFE137
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x138e
	.uleb128 0x21
	.uaword	0x1157
	.uaword	.LLST24
	.uleb128 0x1f
	.uaword	0x1163
	.byte	0x1
	.byte	0x55
	.uleb128 0x20
	.uaword	0x117e
	.uaword	.LLST25
	.uleb128 0x22
	.uaword	0x118a
	.uleb128 0x26
	.uaword	0xc58
	.uaword	.LBB72
	.uaword	.Ldebug_ranges0+0xb0
	.byte	0x1
	.uahalf	0x309
	.uaword	0x1383
	.uleb128 0x21
	.uaword	0xc82
	.uaword	.LLST26
	.uleb128 0x31
	.uaword	.Ldebug_ranges0+0xb0
	.uleb128 0x20
	.uaword	0xc8e
	.uaword	.LLST27
	.uleb128 0x20
	.uaword	0xcb1
	.uaword	.LLST25
	.byte	0
	.byte	0
	.uleb128 0x32
	.uaword	.LVL61
	.byte	0x1
	.uaword	0x17fe
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.string	"ComM_Prv_ProcessLimitToNoCom"
	.byte	0x1
	.uahalf	0x370
	.byte	0x1
	.uaword	.LFB138
	.uaword	.LFE138
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1610
	.uleb128 0x2d
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x370
	.uaword	0x2af
	.uaword	.LLST29
	.uleb128 0x2d
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x370
	.uaword	0x263
	.uaword	.LLST30
	.uleb128 0x33
	.string	"channelRamPtr_pst"
	.byte	0x1
	.uahalf	0x373
	.uaword	0x1610
	.uaword	.LLST31
	.uleb128 0x34
	.uaword	0xe10
	.uaword	.LBB98
	.uaword	.LBE98
	.byte	0x1
	.uahalf	0x387
	.uaword	0x1422
	.uleb128 0x21
	.uaword	0xe3d
	.uaword	.LLST32
	.uleb128 0x24
	.uaword	0xe31
	.byte	0
	.uleb128 0x34
	.uaword	0xda6
	.uaword	.LBB100
	.uaword	.LBE100
	.byte	0x1
	.uahalf	0x389
	.uaword	0x14ff
	.uleb128 0x21
	.uaword	0xdec
	.uaword	.LLST33
	.uleb128 0x21
	.uaword	0xde0
	.uaword	.LLST34
	.uleb128 0x24
	.uaword	0xdd4
	.uleb128 0x25
	.uaword	.LBB101
	.uaword	.LBE101
	.uleb128 0x22
	.uaword	0xdf8
	.uleb128 0x23
	.uaword	0xe70
	.uaword	.LBB102
	.uaword	.LBE102
	.byte	0x1
	.uahalf	0x1ff
	.uleb128 0x21
	.uaword	0xebc
	.uaword	.LLST35
	.uleb128 0x21
	.uaword	0xec8
	.uaword	.LLST36
	.uleb128 0x21
	.uaword	0xeb0
	.uaword	.LLST37
	.uleb128 0x24
	.uaword	0xe9d
	.uleb128 0x25
	.uaword	.LBB103
	.uaword	.LBE103
	.uleb128 0x20
	.uaword	0xed4
	.uaword	.LLST38
	.uleb128 0x20
	.uaword	0xeeb
	.uaword	.LLST39
	.uleb128 0x20
	.uaword	0xef7
	.uaword	.LLST40
	.uleb128 0x22
	.uaword	0xf0d
	.uleb128 0x27
	.uaword	0xbe0
	.uaword	.LBB104
	.uaword	.Ldebug_ranges0+0xc8
	.byte	0x1
	.uahalf	0x24e
	.uleb128 0x24
	.uaword	0xc36
	.uleb128 0x21
	.uaword	0xc2a
	.uaword	.LLST41
	.uleb128 0x21
	.uaword	0xc0b
	.uaword	.LLST42
	.uleb128 0x2b
	.uaword	.LVL75
	.uaword	0x17cb
	.uleb128 0x2a
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x36
	.uleb128 0x2a
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x8
	.byte	0x41
	.uleb128 0x2a
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x2a
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
	.uaword	0xd68
	.uaword	.LBB108
	.uaword	.LBE108
	.byte	0x1
	.uahalf	0x380
	.uaword	0x151f
	.uleb128 0x35
	.uaword	0xd97
	.byte	0x1
	.uleb128 0x24
	.uaword	0xd8a
	.byte	0
	.uleb128 0x23
	.uaword	0xda6
	.uaword	.LBB110
	.uaword	.LBE110
	.byte	0x1
	.uahalf	0x382
	.uleb128 0x21
	.uaword	0xdec
	.uaword	.LLST43
	.uleb128 0x35
	.uaword	0xde0
	.byte	0x1
	.uleb128 0x24
	.uaword	0xdd4
	.uleb128 0x25
	.uaword	.LBB111
	.uaword	.LBE111
	.uleb128 0x22
	.uaword	0xdf8
	.uleb128 0x23
	.uaword	0xe70
	.uaword	.LBB112
	.uaword	.LBE112
	.byte	0x1
	.uahalf	0x1ff
	.uleb128 0x35
	.uaword	0xebc
	.byte	0x1
	.uleb128 0x21
	.uaword	0xec8
	.uaword	.LLST44
	.uleb128 0x21
	.uaword	0xeb0
	.uaword	.LLST45
	.uleb128 0x24
	.uaword	0xe9d
	.uleb128 0x25
	.uaword	.LBB113
	.uaword	.LBE113
	.uleb128 0x20
	.uaword	0xed4
	.uaword	.LLST46
	.uleb128 0x20
	.uaword	0xeeb
	.uaword	.LLST47
	.uleb128 0x20
	.uaword	0xef7
	.uaword	.LLST48
	.uleb128 0x22
	.uaword	0xf0d
	.uleb128 0x27
	.uaword	0xbe0
	.uaword	.LBB114
	.uaword	.Ldebug_ranges0+0xe0
	.byte	0x1
	.uahalf	0x24e
	.uleb128 0x24
	.uaword	0xc36
	.uleb128 0x24
	.uaword	0xc2a
	.uleb128 0x21
	.uaword	0xc0b
	.uaword	.LLST49
	.uleb128 0x25
	.uaword	.LBB116
	.uaword	.LBE116
	.uleb128 0x21
	.uaword	0xc0b
	.uaword	.LLST50
	.uleb128 0x24
	.uaword	0xc2a
	.uleb128 0x21
	.uaword	0xc36
	.uaword	.LLST51
	.uleb128 0x2b
	.uaword	.LVL88
	.uaword	0x17cb
	.uleb128 0x2a
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x37
	.uleb128 0x2a
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x8
	.byte	0x41
	.uleb128 0x2a
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x2a
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0xa1f
	.uleb128 0x2c
	.byte	0x1
	.string	"ComM_Nm_TransmissionFailure"
	.byte	0x1
	.uahalf	0x3a3
	.byte	0x1
	.uaword	.LFB139
	.uaword	.LFE139
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1657
	.uleb128 0x36
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x3a5
	.uaword	0x2af
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.string	"ComM_Nm_NetworkTimeoutException"
	.byte	0x1
	.uahalf	0x3bb
	.byte	0x1
	.uaword	.LFB140
	.uaword	.LFE140
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x169c
	.uleb128 0x36
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x3bd
	.uaword	0x2af
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x8
	.uaword	0x4cb
	.uaword	0x16a7
	.uleb128 0x37
	.byte	0
	.uleb128 0x38
	.string	"ComM_UserId_MappingTable_acst"
	.byte	0x8
	.uahalf	0x10f
	.uaword	0x16cf
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.uaword	0x169c
	.uleb128 0x8
	.uaword	0x6e8
	.uaword	0x16df
	.uleb128 0x37
	.byte	0
	.uleb128 0x38
	.string	"ComM_ChanelList_acst"
	.byte	0x8
	.uahalf	0x127
	.uaword	0x16fe
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.uaword	0x16d4
	.uleb128 0x8
	.uaword	0x564
	.uaword	0x170e
	.uleb128 0x37
	.byte	0
	.uleb128 0x38
	.string	"ComM_UserList_acst"
	.byte	0x8
	.uahalf	0x128
	.uaword	0x172b
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.uaword	0x1703
	.uleb128 0x39
	.string	"ComM_GlobalStruct"
	.byte	0x1
	.byte	0x23
	.uaword	0x807
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	ComM_GlobalStruct
	.uleb128 0x8
	.uaword	0xa1f
	.uaword	0x1760
	.uleb128 0x9
	.uaword	0x484
	.byte	0x3
	.byte	0
	.uleb128 0x39
	.string	"ComM_ChannelStruct"
	.byte	0x1
	.byte	0x25
	.uaword	0x1750
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	ComM_ChannelStruct
	.uleb128 0x39
	.string	"ComM_NvMblock"
	.byte	0x1
	.byte	0x26
	.uaword	0xbc0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	ComM_NvMblock
	.uleb128 0x8
	.uaword	0xb34
	.uaword	0x17ad
	.uleb128 0x9
	.uaword	0x484
	.byte	0x3
	.byte	0
	.uleb128 0x39
	.string	"ComM_UserStruct"
	.byte	0x1
	.byte	0x24
	.uaword	0x179d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	ComM_UserStruct
	.uleb128 0x3a
	.byte	0x1
	.string	"Det_ReportError"
	.byte	0xb
	.byte	0x70
	.byte	0x1
	.uaword	0x293
	.byte	0x1
	.uaword	0x17fe
	.uleb128 0x3b
	.uaword	0x1dc
	.uleb128 0x3b
	.uaword	0x1b1
	.uleb128 0x3b
	.uaword	0x1b1
	.uleb128 0x3b
	.uaword	0x1b1
	.byte	0
	.uleb128 0x3c
	.byte	0x1
	.string	"ComM_Prv_Rte_Switch_UM_currentMode"
	.byte	0x8
	.uahalf	0x102
	.byte	0x1
	.byte	0x1
	.uaword	0x1837
	.uleb128 0x3b
	.uaword	0x4cb
	.uleb128 0x3b
	.uaword	0x1b1
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.string	"ComM_RequestComMode"
	.byte	0xc
	.byte	0x9e
	.byte	0x1
	.uaword	0x293
	.byte	0x1
	.uleb128 0x3b
	.uaword	0x4cb
	.uleb128 0x3b
	.uaword	0x4b6
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
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0x10
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
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x2d
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
	.uleb128 0x6
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x37
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3c
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
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0xb
	.byte	0x7f
	.sleb128 0
	.byte	0x3a
	.byte	0x1e
	.byte	0x3
	.uaword	ComM_UserStruct
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL5
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL7
	.uaword	.LVL15
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL16
	.uaword	.LFE133
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL5
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL7
	.uaword	.LVL15
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL16
	.uaword	.LFE133
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL5
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL7
	.uaword	.LVL15
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL16
	.uaword	.LFE133
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x2
	.byte	0x82
	.sleb128 3
	.uaword	.LVL7
	.uaword	.LFE133
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x2
	.byte	0x8c
	.sleb128 0
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x2
	.byte	0x8c
	.sleb128 -1
	.uaword	.LVL10
	.uaword	.LVL14-1
	.uahalf	0x2
	.byte	0x8c
	.sleb128 0
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x2
	.byte	0x8c
	.sleb128 0
	.uaword	.LVL18
	.uaword	.LVL22-1
	.uahalf	0x2
	.byte	0x8c
	.sleb128 0
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x2
	.byte	0x8c
	.sleb128 0
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x2
	.byte	0x8c
	.sleb128 -1
	.uaword	.LVL26
	.uaword	.LVL29-1
	.uahalf	0x2
	.byte	0x8c
	.sleb128 0
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x2
	.byte	0x8c
	.sleb128 0
	.uaword	.LVL31
	.uaword	.LVL32
	.uahalf	0x2
	.byte	0x8c
	.sleb128 -1
	.uaword	.LVL33
	.uaword	.LVL36-1
	.uahalf	0x2
	.byte	0x8c
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x18
	.byte	0x8c
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8d
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3a
	.byte	0x1e
	.byte	0x3
	.uaword	ComM_UserStruct
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x18
	.byte	0x8c
	.sleb128 -1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8d
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3a
	.byte	0x1e
	.byte	0x3
	.uaword	ComM_UserStruct
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0xb
	.byte	0x72
	.sleb128 0
	.byte	0x3a
	.byte	0x1e
	.byte	0x3
	.uaword	ComM_UserStruct
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LVL14-1
	.uahalf	0x18
	.byte	0x8c
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8d
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3a
	.byte	0x1e
	.byte	0x3
	.uaword	ComM_UserStruct
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x18
	.byte	0x8c
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8d
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3a
	.byte	0x1e
	.byte	0x3
	.uaword	ComM_UserStruct
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0xb
	.byte	0x72
	.sleb128 0
	.byte	0x3a
	.byte	0x1e
	.byte	0x3
	.uaword	ComM_UserStruct
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LVL22-1
	.uahalf	0x18
	.byte	0x8c
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8d
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3a
	.byte	0x1e
	.byte	0x3
	.uaword	ComM_UserStruct
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x18
	.byte	0x8c
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8d
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3a
	.byte	0x1e
	.byte	0x3
	.uaword	ComM_UserStruct
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x18
	.byte	0x8c
	.sleb128 -1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8d
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3a
	.byte	0x1e
	.byte	0x3
	.uaword	ComM_UserStruct
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL27
	.uaword	.LVL28
	.uahalf	0xb
	.byte	0x72
	.sleb128 0
	.byte	0x3a
	.byte	0x1e
	.byte	0x3
	.uaword	ComM_UserStruct
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL28
	.uaword	.LVL29-1
	.uahalf	0x18
	.byte	0x8c
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8d
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3a
	.byte	0x1e
	.byte	0x3
	.uaword	ComM_UserStruct
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x18
	.byte	0x8c
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8d
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3a
	.byte	0x1e
	.byte	0x3
	.uaword	ComM_UserStruct
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL31
	.uaword	.LVL32
	.uahalf	0x18
	.byte	0x8c
	.sleb128 -1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8d
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3a
	.byte	0x1e
	.byte	0x3
	.uaword	ComM_UserStruct
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL34
	.uaword	.LVL35
	.uahalf	0xb
	.byte	0x72
	.sleb128 0
	.byte	0x3a
	.byte	0x1e
	.byte	0x3
	.uaword	ComM_UserStruct
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL35
	.uaword	.LVL36-1
	.uahalf	0x18
	.byte	0x8c
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8d
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3a
	.byte	0x1e
	.byte	0x3
	.uaword	ComM_UserStruct
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL30
	.uaword	.LVL33
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL34
	.uaword	.LFE133
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x18
	.byte	0x8c
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8d
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3a
	.byte	0x1e
	.byte	0x3
	.uaword	ComM_UserStruct+2
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x18
	.byte	0x8c
	.sleb128 -1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8d
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3a
	.byte	0x1e
	.byte	0x3
	.uaword	ComM_UserStruct+2
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0xb
	.byte	0x72
	.sleb128 0
	.byte	0x3a
	.byte	0x1e
	.byte	0x3
	.uaword	ComM_UserStruct+2
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LVL14-1
	.uahalf	0x18
	.byte	0x8c
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8d
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3a
	.byte	0x1e
	.byte	0x3
	.uaword	ComM_UserStruct+2
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x18
	.byte	0x8c
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8d
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3a
	.byte	0x1e
	.byte	0x3
	.uaword	ComM_UserStruct+2
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL31
	.uaword	.LVL32
	.uahalf	0x18
	.byte	0x8c
	.sleb128 -1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8d
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3a
	.byte	0x1e
	.byte	0x3
	.uaword	ComM_UserStruct+2
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL34
	.uaword	.LVL35
	.uahalf	0xb
	.byte	0x72
	.sleb128 0
	.byte	0x3a
	.byte	0x1e
	.byte	0x3
	.uaword	ComM_UserStruct+2
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL35
	.uaword	.LVL36-1
	.uahalf	0x18
	.byte	0x8c
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8d
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3a
	.byte	0x1e
	.byte	0x3
	.uaword	ComM_UserStruct+2
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL23
	.uaword	.LVL26
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL27
	.uaword	.LVL30
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x18
	.byte	0x8c
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8d
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3a
	.byte	0x1e
	.byte	0x3
	.uaword	ComM_UserStruct
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0xb
	.byte	0x72
	.sleb128 0
	.byte	0x3a
	.byte	0x1e
	.byte	0x3
	.uaword	ComM_UserStruct
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LVL22-1
	.uahalf	0x18
	.byte	0x8c
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8d
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3a
	.byte	0x1e
	.byte	0x3
	.uaword	ComM_UserStruct
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x18
	.byte	0x8c
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8d
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3a
	.byte	0x1e
	.byte	0x3
	.uaword	ComM_UserStruct
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x18
	.byte	0x8c
	.sleb128 -1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8d
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3a
	.byte	0x1e
	.byte	0x3
	.uaword	ComM_UserStruct
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL27
	.uaword	.LVL28
	.uahalf	0xb
	.byte	0x72
	.sleb128 0
	.byte	0x3a
	.byte	0x1e
	.byte	0x3
	.uaword	ComM_UserStruct
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL28
	.uaword	.LVL29-1
	.uahalf	0x18
	.byte	0x8c
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8d
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3a
	.byte	0x1e
	.byte	0x3
	.uaword	ComM_UserStruct
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL21
	.uaword	.LVL22-1
	.uahalf	0x18
	.byte	0x8c
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8d
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3a
	.byte	0x1e
	.byte	0x3
	.uaword	ComM_UserStruct
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL37
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL40
	.uaword	.LFE136
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL37
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL40
	.uaword	.LFE136
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL37
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL40
	.uaword	.LFE136
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL39
	.uaword	.LVL40
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL40
	.uaword	.LVL47
	.uahalf	0x6
	.byte	0x8f
	.sleb128 0
	.byte	0x8e
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL47
	.uaword	.LVL48
	.uahalf	0x8
	.byte	0x8f
	.sleb128 0
	.byte	0x8e
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	.LVL48
	.uaword	.LVL49
	.uahalf	0x8
	.byte	0x8f
	.sleb128 -1
	.byte	0x8e
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	.LVL50
	.uaword	.LFE136
	.uahalf	0x6
	.byte	0x8f
	.sleb128 0
	.byte	0x8e
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL41
	.uaword	.LVL43
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL43
	.uaword	.LVL49
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL50
	.uaword	.LVL51
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL51
	.uaword	.LVL52
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL52
	.uaword	.LVL53
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL53
	.uaword	.LVL54
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL54
	.uaword	.LFE136
	.uahalf	0x1
	.byte	0x5b
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL42
	.uaword	.LVL44
	.uahalf	0xb
	.byte	0x72
	.sleb128 0
	.byte	0x3a
	.byte	0x1e
	.byte	0x3
	.uaword	ComM_UserStruct
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL50
	.uaword	.LVL55
	.uahalf	0xb
	.byte	0x72
	.sleb128 0
	.byte	0x3a
	.byte	0x1e
	.byte	0x3
	.uaword	ComM_UserStruct
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL45
	.uaword	.LVL49
	.uahalf	0x1
	.byte	0x5b
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL46
	.uaword	.LVL47-1
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL57
	.uaword	.LVL61-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL61-1
	.uaword	.LVL61
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL61
	.uaword	.LFE137
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL58
	.uaword	.LVL59
	.uahalf	0xb
	.byte	0x7f
	.sleb128 0
	.byte	0x3a
	.byte	0x1e
	.byte	0x3
	.uaword	ComM_UserStruct
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL58
	.uaword	.LVL61-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL61
	.uaword	.LFE137
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL60
	.uaword	.LVL61-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL61
	.uaword	.LFE137
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL62
	.uaword	.LVL63
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL63
	.uaword	.LFE138
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL62
	.uaword	.LVL69
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL69
	.uaword	.LVL77
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL77
	.uaword	.LVL81
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL81
	.uaword	.LFE138
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL62
	.uaword	.LVL63
	.uahalf	0xb
	.byte	0x74
	.sleb128 0
	.byte	0x48
	.byte	0x1e
	.byte	0x3
	.uaword	ComM_ChannelStruct
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL65
	.uaword	.LVL76
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL66
	.uaword	.LVL76
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL66
	.uaword	.LVL76
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL67
	.uaword	.LVL76
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL67
	.uaword	.LVL76
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL67
	.uaword	.LVL68
	.uahalf	0x2
	.byte	0x8f
	.sleb128 3
	.uaword	.LVL69
	.uaword	.LVL76
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL67
	.uaword	.LVL69
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL69
	.uaword	.LVL70
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL70
	.uaword	.LVL71
	.uahalf	0x2
	.byte	0x8f
	.sleb128 -1
	.uaword	.LVL72
	.uaword	.LVL75-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL69
	.uaword	.LVL70
	.uahalf	0x18
	.byte	0x8f
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8d
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3a
	.byte	0x1e
	.byte	0x3
	.uaword	ComM_UserStruct
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL70
	.uaword	.LVL71
	.uahalf	0x18
	.byte	0x8f
	.sleb128 -1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8d
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3a
	.byte	0x1e
	.byte	0x3
	.uaword	ComM_UserStruct
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL73
	.uaword	.LVL74
	.uahalf	0xb
	.byte	0x72
	.sleb128 0
	.byte	0x3a
	.byte	0x1e
	.byte	0x3
	.uaword	ComM_UserStruct
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL74
	.uaword	.LVL75-1
	.uahalf	0x18
	.byte	0x8f
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8d
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3a
	.byte	0x1e
	.byte	0x3
	.uaword	ComM_UserStruct
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL69
	.uaword	.LVL72
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL73
	.uaword	.LVL76
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST42:
	.uaword	.LVL69
	.uaword	.LVL70
	.uahalf	0x18
	.byte	0x8f
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8d
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3a
	.byte	0x1e
	.byte	0x3
	.uaword	ComM_UserStruct+2
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL70
	.uaword	.LVL71
	.uahalf	0x18
	.byte	0x8f
	.sleb128 -1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8d
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3a
	.byte	0x1e
	.byte	0x3
	.uaword	ComM_UserStruct+2
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL73
	.uaword	.LVL74
	.uahalf	0xb
	.byte	0x72
	.sleb128 0
	.byte	0x3a
	.byte	0x1e
	.byte	0x3
	.uaword	ComM_UserStruct+2
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL74
	.uaword	.LVL75-1
	.uahalf	0x18
	.byte	0x8f
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8d
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3a
	.byte	0x1e
	.byte	0x3
	.uaword	ComM_UserStruct+2
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST43:
	.uaword	.LVL78
	.uaword	.LVL81
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST44:
	.uaword	.LVL79
	.uaword	.LVL81
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST45:
	.uaword	.LVL79
	.uaword	.LVL80
	.uahalf	0x2
	.byte	0x8f
	.sleb128 3
	.uaword	.LVL81
	.uaword	.LFE138
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST46:
	.uaword	.LVL79
	.uaword	.LVL81
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST47:
	.uaword	.LVL81
	.uaword	.LVL82
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL82
	.uaword	.LVL83
	.uahalf	0x2
	.byte	0x8f
	.sleb128 -1
	.uaword	.LVL84
	.uaword	.LVL88-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST48:
	.uaword	.LVL81
	.uaword	.LVL82
	.uahalf	0x18
	.byte	0x8f
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8d
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3a
	.byte	0x1e
	.byte	0x3
	.uaword	ComM_UserStruct
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL82
	.uaword	.LVL83
	.uahalf	0x18
	.byte	0x8f
	.sleb128 -1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8d
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3a
	.byte	0x1e
	.byte	0x3
	.uaword	ComM_UserStruct
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL85
	.uaword	.LVL86
	.uahalf	0xb
	.byte	0x72
	.sleb128 0
	.byte	0x3a
	.byte	0x1e
	.byte	0x3
	.uaword	ComM_UserStruct
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL86
	.uaword	.LVL88-1
	.uahalf	0x18
	.byte	0x8f
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8d
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3a
	.byte	0x1e
	.byte	0x3
	.uaword	ComM_UserStruct
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST49:
	.uaword	.LVL81
	.uaword	.LVL82
	.uahalf	0x18
	.byte	0x8f
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8d
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3a
	.byte	0x1e
	.byte	0x3
	.uaword	ComM_UserStruct+2
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL82
	.uaword	.LVL83
	.uahalf	0x18
	.byte	0x8f
	.sleb128 -1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8d
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3a
	.byte	0x1e
	.byte	0x3
	.uaword	ComM_UserStruct+2
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL85
	.uaword	.LVL86
	.uahalf	0xb
	.byte	0x72
	.sleb128 0
	.byte	0x3a
	.byte	0x1e
	.byte	0x3
	.uaword	ComM_UserStruct+2
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL86
	.uaword	.LVL88-1
	.uahalf	0x18
	.byte	0x8f
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8d
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3a
	.byte	0x1e
	.byte	0x3
	.uaword	ComM_UserStruct+2
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST50:
	.uaword	.LVL87
	.uaword	.LVL88-1
	.uahalf	0x18
	.byte	0x8f
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8d
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3a
	.byte	0x1e
	.byte	0x3
	.uaword	ComM_UserStruct+2
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST51:
	.uaword	.LVL87
	.uaword	.LVL88-1
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x54
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB131
	.uaword	.LFE131-.LFB131
	.uaword	.LFB132
	.uaword	.LFE132-.LFB132
	.uaword	.LFB133
	.uaword	.LFE133-.LFB133
	.uaword	.LFB136
	.uaword	.LFE136-.LFB136
	.uaword	.LFB137
	.uaword	.LFE137-.LFB137
	.uaword	.LFB138
	.uaword	.LFE138-.LFB138
	.uaword	.LFB139
	.uaword	.LFE139-.LFB139
	.uaword	.LFB140
	.uaword	.LFE140-.LFB140
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB34
	.uaword	.LBE34
	.uaword	.LBB40
	.uaword	.LBE40
	.uaword	.LBB41
	.uaword	.LBE41
	.uaword	.LBB57
	.uaword	.LBE57
	.uaword	.LBB58
	.uaword	.LBE58
	.uaword	0
	.uaword	0
	.uaword	.LBB42
	.uaword	.LBE42
	.uaword	.LBB53
	.uaword	.LBE53
	.uaword	.LBB54
	.uaword	.LBE54
	.uaword	.LBB55
	.uaword	.LBE55
	.uaword	.LBB56
	.uaword	.LBE56
	.uaword	.LBB59
	.uaword	.LBE59
	.uaword	0
	.uaword	0
	.uaword	.LBB44
	.uaword	.LBE44
	.uaword	.LBB47
	.uaword	.LBE47
	.uaword	0
	.uaword	0
	.uaword	.LBB64
	.uaword	.LBE64
	.uaword	.LBB71
	.uaword	.LBE71
	.uaword	0
	.uaword	0
	.uaword	.LBB66
	.uaword	.LBE66
	.uaword	.LBB69
	.uaword	.LBE69
	.uaword	0
	.uaword	0
	.uaword	.LBB72
	.uaword	.LBE72
	.uaword	.LBB75
	.uaword	.LBE75
	.uaword	0
	.uaword	0
	.uaword	.LBB104
	.uaword	.LBE104
	.uaword	.LBB107
	.uaword	.LBE107
	.uaword	0
	.uaword	0
	.uaword	.LBB114
	.uaword	.LBE114
	.uaword	.LBB120
	.uaword	.LBE120
	.uaword	.LBB121
	.uaword	.LBE121
	.uaword	0
	.uaword	0
	.uaword	.LFB131
	.uaword	.LFE131
	.uaword	.LFB132
	.uaword	.LFE132
	.uaword	.LFB133
	.uaword	.LFE133
	.uaword	.LFB136
	.uaword	.LFE136
	.uaword	.LFB137
	.uaword	.LFE137
	.uaword	.LFB138
	.uaword	.LFE138
	.uaword	.LFB139
	.uaword	.LFE139
	.uaword	.LFB140
	.uaword	.LFE140
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF2:
	.string	"userRamPtr_pst"
.LASF0:
	.string	"Status_b"
.LASF1:
	.string	"UserIndex_tu8"
.LASF5:
	.string	"channelConfigPtr_pcst"
.LASF8:
	.string	"userId_internal_u8"
.LASF7:
	.string	"userId_u8"
.LASF3:
	.string	"Channel_tu8"
.LASF4:
	.string	"InhibitionType_en"
.LASF6:
	.string	"numUsers_u8"
	.extern	ComM_RequestComMode,STT_FUNC,0
	.extern	ComM_Prv_Rte_Switch_UM_currentMode,STT_FUNC,0
	.extern	Det_ReportError,STT_FUNC,0
	.extern	ComM_UserList_acst,STT_OBJECT,-1
	.extern	ComM_ChanelList_acst,STT_OBJECT,-1
	.extern	ComM_UserId_MappingTable_acst,STT_OBJECT,-1
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
