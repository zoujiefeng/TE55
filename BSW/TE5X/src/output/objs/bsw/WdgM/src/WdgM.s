	.file	"WdgM.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.WdgM_DeInit,"ax",@progbits
	.align 1
	.global	WdgM_DeInit
	.type	WdgM_DeInit, @function
WdgM_DeInit:
.LFB26:
	.file 1 "bsw\\WdgM\\src\\WdgM.c"
	.loc 1 234 0
	.loc 1 236 0
	movh.a	%a15, hi:WdgM_GlobalStatus
	ld.bu	%d15, [%a15] lo:WdgM_GlobalStatus
	jeq	%d15, 4, .L5
	.loc 1 245 0
	jnz	%d15, .L1
	.loc 1 249 0
	mov	%d15, 4
	st.b	[%a15] lo:WdgM_GlobalStatus, %d15
.L1:
	ret
.L5:
	.loc 1 240 0
	mov	%e4, 13
	mov	%d6, 1
	mov	%d7, 16
	j	Det_ReportError
.LVL0:
.LFE26:
	.size	WdgM_DeInit, .-WdgM_DeInit
.section .text.WdgM_CheckpointReached,"ax",@progbits
	.align 1
	.global	WdgM_CheckpointReached
	.type	WdgM_CheckpointReached, @function
WdgM_CheckpointReached:
.LFB27:
	.loc 1 305 0
.LVL1:
	.loc 1 318 0
	movh.a	%a15, hi:WdgM_GlobalStatus
	ld.bu	%d2, [%a15] lo:WdgM_GlobalStatus
	.loc 1 305 0
	mov	%d15, %d5
	.loc 1 318 0
	jeq	%d2, 4, .L7
	.loc 1 322 0
	jge.u	%d4, 5, .L8
	.loc 1 326 0
	mul	%d10, %d4, 24
	movh.a	%a15, hi:WdgM_SupervisedEntity
	lea	%a12, [%a15] lo:WdgM_SupervisedEntity
	addsc.a	%a2, %a12, %d10, 0
	extr.u	%d8, %d5, 0, 16
	ld.hu	%d2, [%a2]0
	jge.u	%d8, %d2, .L9
	.loc 1 335 0
	mul	%d9, %d4, 12
	movh.a	%a13, hi:WdgM_SupervisedEntityDyn
	lea	%a13, [%a13] lo:WdgM_SupervisedEntityDyn
	addsc.a	%a15, %a13, %d9, 0
	ld.bu	%d2, [%a15] 10
	jnz.t	%d2, 2, .L10
	.loc 1 344 0
	movh.a	%a2, hi:WdgM_ConfigSetPtr
	ld.a	%a2, [%a2] lo:WdgM_ConfigSetPtr
	movh.a	%a3, hi:WdgM_Mode
	ld.bu	%d2, [%a3] lo:WdgM_Mode
	ld.w	%d5, [%a2] 16
.LVL2:
	.loc 1 342 0
	ld.hu	%d3, [%a15] 8
.LVL3:
	.loc 1 344 0
	madd	%d4, %d5, %d2, 40
.LVL4:
	.loc 1 307 0
	mov	%d2, 0
	.loc 1 344 0
	mov.a	%a2, %d4
	ld.hu	%d5, [%a2] 8
	jeq	%d5, %d3, .L11
	.loc 1 345 0 discriminator 1
	ld.w	%d4, [%a2] 16
	madd	%d5, %d4, %d3, 10
	mov.a	%a2, %d5
	.loc 1 344 0 discriminator 1
	ld.bu	%d3, [%a2] 4
	jeq	%d3, %d15, .L32
.L11:
.LVL5:
.LBB8:
.LBB9:
	.file 2 "bsw\\WdgM\\src\\WdgM_Prv.h"
	.loc 2 860 0
	addsc.a	%a15, %a12, %d10, 0
.LVL6:
	ld.bu	%d3, [%a15] 20
	jeq	%d3, 1, .L33
.LVL7:
.L23:
.LBE9:
.LBE8:
	.loc 1 427 0
	ret
.LVL8:
.L33:
.LBB15:
.LBB10:
	.loc 2 862 0
	ld.hu	%d3, [%a15] 22
.LVL9:
	.loc 2 863 0
	movh.a	%a2, hi:WdgM_InternalGraph_CPProperty
	.loc 2 862 0
	add	%d8, %d3
.LVL10:
	.loc 2 863 0
	extr.u	%d8, %d8, 0, 16
	lea	%a2, [%a2] lo:WdgM_InternalGraph_CPProperty
	addsc.a	%a15, %a2, %d8, 3
	ld.bu	%d1, [%a15]0
.LVL11:
	.loc 2 867 0
	jz	%d1, .L23
	.loc 2 876 0
	addsc.a	%a3, %a13, %d9, 0
	lea	%a3, [%a3] 8
	ld.bu	%d8, [%a3] 2
	jnz.t	%d8, 2, .L13
	.loc 2 883 0
	ld.hu	%d4, [%a15] 6
	movh	%d10, hi:WdgM_InternalGraph_StatusDyn
	addi	%d10, %d10, lo:WdgM_InternalGraph_StatusDyn
	sh	%d4, 1
	mov.a	%a4, %d10
	addsc.a	%a15, %a4, %d4, 0
.LVL12:
	ld.bu	%d5, [%a15]0
	jz	%d5, .L34
	.loc 2 909 0
	ld.bu	%d5, [%a15] 1
	add	%d3, %d5
	.loc 2 910 0
	extr.u	%d3, %d3, 0, 16
	addsc.a	%a2, %a2, %d3, 3
	.loc 2 911 0
	ld.hu	%d7, [%a2] 2
	.loc 2 910 0
	ld.hu	%d3, [%a2] 4
.LVL13:
	.loc 2 912 0
	jz	%d7, .L22
	.loc 2 914 0
	movh.a	%a2, hi:WdgM_InternalGraph_DestCheckpoints
.LVL14:
	lea	%a2, [%a2] lo:WdgM_InternalGraph_DestCheckpoints
	addsc.a	%a2, %a2, %d3, 0
	mov	%d6, 0
	ld.bu	%d3, [%a2]0
.LVL15:
	jne	%d3, %d15, .L19
	j	.L35
.LVL16:
.L21:
	addsc.a	%a15, %a2, %d6, 0
	mov	%d6, %d5
	ld.bu	%d0, [%a15] 1
	jeq	%d15, %d0, .L18
.LVL17:
.L19:
	addi	%d5, %d6, 1
	extr.u	%d3, %d5, 0, 16
.LVL18:
	.loc 2 912 0
	jlt.u	%d3, %d7, .L21
.LVL19:
.L20:
	.loc 2 922 0
	jeq	%d7, %d3, .L22
	.loc 2 934 0
	jne	%d1, 2, .L23
	.loc 2 936 0
	mov.a	%a4, %d10
	addsc.a	%a15, %a4, %d4, 0
	mov	%d15, 0
	st.b	[%a15]0, %d15
	ret
.LVL20:
.L10:
.LBE10:
.LBE15:
	.loc 1 364 0
	mov	%e4, 13
.LVL21:
	mov	%d6, 14
	mov	%d7, 25
	call	Det_ReportError
.LVL22:
.LBB16:
.LBB11:
	.loc 2 860 0
	addsc.a	%a15, %a12, %d10, 0
.LBE11:
.LBE16:
	.loc 1 367 0
	mov	%d2, 1
.LVL23:
.LBB17:
.LBB12:
	.loc 2 860 0
	ld.bu	%d3, [%a15] 20
	jne	%d3, 1, .L23
	j	.L33
.LVL24:
.L32:
.LBE12:
.LBE17:
	.loc 1 354 0
	ld.w	%d3, [%a15] 4
	add	%d3, 1
	st.w	[%a15] 4, %d3
	j	.L11
.LVL25:
.L8:
	.loc 1 412 0
	mov	%e4, 13
.LVL26:
	mov	%d6, 14
	mov	%d7, 19
	call	Det_ReportError
.LVL27:
	.loc 1 413 0
	mov	%d2, 1
	ret
.LVL28:
.L9:
	.loc 1 405 0
	mov	%e4, 13
.LVL29:
	mov	%d6, 14
	mov	%d7, 22
	call	Det_ReportError
.LVL30:
	.loc 1 406 0
	mov	%d2, 1
	ret
.LVL31:
.L7:
	.loc 1 421 0
	mov	%e4, 13
.LVL32:
	mov	%d6, 14
	mov	%d7, 16
	call	Det_ReportError
.LVL33:
	.loc 1 423 0
	mov	%d2, 1
.LVL34:
	.loc 1 427 0
	ret
.LVL35:
.L34:
.LBB18:
.LBB13:
	.loc 2 885 0
	jeq	%d1, 1, .L36
	.loc 2 895 0
	or	%d8, %d8, 2
	st.b	[%a3] 2, %d8
	ret
.L13:
	.loc 2 960 0
	mov	%e4, 13
	mov	%d6, 14
	mov	%d7, 25
	call	Det_ReportError
.LVL36:
.LBE13:
.LBE18:
	.loc 1 388 0
	mov	%d2, 1
	ret
.LVL37:
.L35:
.LBB19:
.LBB14:
	.loc 2 912 0
	mov	%d3, 0
.LVL38:
.L18:
	.loc 2 916 0
	mov.a	%a2, %d10
	addsc.a	%a15, %a2, %d4, 0
	st.b	[%a15] 1, %d15
	j	.L20
.LVL39:
.L36:
	.loc 2 887 0
	st.b	[%a15] 1, %d15
	.loc 2 888 0
	st.b	[%a15]0, %d1
	ret
.LVL40:
.L22:
	.loc 2 924 0
	addsc.a	%a13, %a13, %d9, 0
	or	%d8, %d8, 2
	st.b	[%a13] 10, %d8
	ret
.LBE14:
.LBE19:
.LFE27:
	.size	WdgM_CheckpointReached, .-WdgM_CheckpointReached
.section .text.WdgM_SetMode,"ax",@progbits
	.align 1
	.global	WdgM_SetMode
	.type	WdgM_SetMode, @function
WdgM_SetMode:
.LFB28:
	.loc 1 439 0
.LVL41:
	.loc 1 451 0
	movh.a	%a15, hi:WdgM_GlobalStatus
	.loc 1 439 0
	mov	%d8, %d4
	.loc 1 451 0
	ld.bu	%d4, [%a15] lo:WdgM_GlobalStatus
.LVL42:
	jeq	%d4, 4, .L96
	.loc 1 461 0
	movh.a	%a13, hi:WdgM_ConfigSetPtr
	ld.a	%a2, [%a13] lo:WdgM_ConfigSetPtr
	ld.bu	%d15, [%a2] 1
	jge.u	%d8, %d15, .L97
	.loc 1 473 0
	ld.a	%a5, [%a2] 16
	mul	%d9, %d8, 40
	addsc.a	%a15, %a5, %d9, 0
	.loc 1 474 0
	ld.bu	%d15, [%a15] 14
	.loc 1 473 0
	ld.a	%a3, [%a15] 28
.LVL43:
	.loc 1 474 0
	jz	%d15, .L41
	.loc 1 476 0
	ld.bu	%d2, [%a3] 3
	jz	%d2, .L42
	lea	%a15, [%a3] 4
	mov	%d2, 0
	j	.L44
.LVL44:
.L45:
	ld.bu	%d3, [%a15] 3
	add.a	%a15, 4
	jz	%d3, .L42
.LVL45:
.L44:
	add	%d2, 1
.LVL46:
	.loc 1 474 0 discriminator 2
	and	%d3, %d2, 255
	jlt.u	%d3, %d15, .L45
	.loc 1 488 0
	jlt.u	%d4, 2, .L98
.LVL47:
.L92:
	.loc 1 448 0
	mov	%d2, 1
	.loc 1 566 0
	ret
.L42:
	.loc 1 480 0
	mov	%e4, 13
	mov	%d6, 3
	mov	%d7, 21
	call	Det_ReportError
.LVL48:
	.loc 1 482 0
	mov	%d2, 1
	ret
.L97:
	.loc 1 465 0
	mov	%e4, 13
	mov	%d6, 3
	mov	%d7, 18
	call	Det_ReportError
.LVL49:
	.loc 1 467 0
	mov	%d2, 1
	ret
.L96:
	.loc 1 455 0
	mov	%e4, 13
	mov	%d6, 3
	mov	%d7, 16
	call	Det_ReportError
.LVL50:
	.loc 1 457 0
	mov	%d2, 1
	ret
.LVL51:
.L98:
	.loc 1 488 0
	mov.aa	%a12, %a3
	mov	%d10, 0
	lea	%a14, [%a13] lo:WdgM_ConfigSetPtr
	j	.L49
.LVL52:
.L100:
	addsc.a	%a3, %a5, %d9, 0
	mov.aa	%a15, %a3
.L48:
.LVL53:
	addi	%d2, %d11, 1
.LBB26:
.LBB27:
	.loc 2 1307 0
	and	%d2, %d2, 255
	add	%d10, 1
	jge.u	%d2, %d15, .L99
.LVL54:
.L49:
	.loc 2 1309 0
	and	%d2, %d10, 255
	addsc.a	%a15, %a12, %d2, 2
	and	%d11, %d10, 255
.LVL55:
	ld.bu	%d2, [%a15] 3
	jz	%d2, .L100
	.loc 2 1311 0
	ld.hu	%d4, [%a15]0
	call	Wdg_SetTriggerCondition
.LVL56:
	ld.a	%a2, [%a14]0
	ld.a	%a5, [%a2] 16
	addsc.a	%a3, %a5, %d9, 0
	mov.aa	%a15, %a3
	ld.bu	%d15, [%a3] 14
	ld.a	%a12, [%a3] 28
	j	.L48
.LVL57:
.L99:
	.loc 2 1318 0
	jz	%d15, .L50
	mov	%d15, 0
	lea	%a13, [%a13] lo:WdgM_ConfigSetPtr
	j	.L52
.LVL58:
.L101:
	ld.a	%a2, [%a13]0
	ld.a	%a3, [%a2] 16
	addi	%d3, %d10, 1
	and	%d3, %d3, 255
	addsc.a	%a15, %a3, %d9, 0
	add	%d15, 1
	ld.bu	%d2, [%a15] 14
	jge.u	%d3, %d2, .L72
.LVL59:
.L52:
	.loc 2 1320 0
	and	%d2, %d15, 255
	addsc.a	%a15, %a12, %d2, 2
	and	%d10, %d15, 255
.LVL60:
	ld.bu	%d4, [%a15] 3
	call	Wdg_SetMode
.LVL61:
	.loc 2 1321 0
	jz	%d2, .L101
.LBE27:
.LBE26:
	.loc 1 551 0
	mov	%d15, 3
.LVL62:
	movh.a	%a15, hi:WdgM_Prv_SetMode_GlobalStatus
	st.b	[%a15] lo:WdgM_Prv_SetMode_GlobalStatus, %d15
	ret
.LVL63:
.L41:
	.loc 1 488 0
	jge.u	%d4, 2, .L92
.LVL64:
.L72:
	mov.aa	%a3, %a15
.L50:
.LVL65:
.LBB28:
.LBB29:
	.loc 2 1135 0
	movh.a	%a4, hi:WdgM_AliveSupervisionActive
	mov	%d15, 0
.LBE29:
.LBE28:
.LBB31:
.LBB32:
	.loc 2 1347 0
	ld.a	%a7, [%a15] 16
.LBE32:
.LBE31:
.LBB35:
.LBB30:
	.loc 2 1135 0
	st.b	[%a4] lo:WdgM_AliveSupervisionActive, %d15
.LVL66:
.LBE30:
.LBE35:
.LBB36:
.LBB33:
	.loc 2 1348 0
	ld.a	%a4, [%a15] 24
.LVL67:
	movh.a	%a12, hi:WdgM_SupervisedEntityDyn
	.loc 2 1392 0
	movh	%d1, hi:WdgM_InternalGraph_StatusDyn
	.loc 2 1348 0
	mov	%d6, 0
	lea	%a12, [%a12] lo:WdgM_SupervisedEntityDyn
	.loc 2 1365 0
	mov	%d0, 0
	.loc 2 1386 0
	mov	%d10, 4
	.loc 2 1392 0
	addi	%d1, %d1, lo:WdgM_InternalGraph_StatusDyn
	lea	%a13, [%a7] 10
	mov.a	%a6, 4
.LVL68:
.L66:
	.loc 2 1352 0
	ld.hu	%d4, [%a3] 12
	and	%d15, %d6, 255
.LVL69:
	mul	%d7, %d6, 12
	jz	%d4, .L62
	.loc 2 1354 0
	ld.bu	%d2, [%a4] 1
	mov	%d5, 0
	jne	%d2, %d15, .L53
	j	.L102
.LVL70:
.L55:
	addsc.a	%a15, %a4, %d3, 1
	ld.bu	%d3, [%a15] 1
	jeq	%d3, %d15, .L63
.LVL71:
.L53:
	add	%d5, 1
.LVL72:
	and	%d3, %d5, 255
.LVL73:
	.loc 2 1352 0
	extr.u	%d2, %d3, 0, 16
	jlt.u	%d2, %d4, .L55
	mul	%d7, %d6, 12
.LVL74:
.L54:
	.loc 2 1383 0
	jeq	%d2, %d4, .L62
.L56:
.LVL75:
	.loc 2 1399 0
	ld.hu	%d5, [%a3] 8
	mov	%d2, 0
	jz	%d5, .L57
	.loc 2 1401 0
	ld.bu	%d3, [%a7] 5
	jeq	%d3, %d15, .L57
	mov.aa	%a15, %a13
	mov	%d3, 0
	j	.L58
.LVL76:
.L59:
	ld.bu	%d4, [%a15] 5
	lea	%a15, [%a15] 10
	jeq	%d15, %d4, .L57
.LVL77:
.L58:
	add	%d3, 1
.LVL78:
	extr.u	%d2, %d3, 0, 16
.LVL79:
	.loc 2 1399 0
	jlt.u	%d2, %d5, .L59
.LVL80:
.L57:
	.loc 2 1407 0
	addsc.a	%a15, %a12, %d7, 0
	add	%d6, 1
.LVL81:
	st.h	[%a15] 8, %d2
.LVL82:
	loop	%a6, .L66
.LBE33:
.LBE36:
	.loc 1 519 0
	movh.a	%a15, hi:WdgM_Mode
	st.b	[%a15] lo:WdgM_Mode, %d8
	.loc 1 523 0
	movh.a	%a15, hi:Rte_ModeCurrent_6
	ld.bu	%d4, [%a3] 2
	ld.bu	%d15, [%a15] lo:Rte_ModeCurrent_6
	jeq	%d15, %d4, .L65
	.loc 1 525 0
	call	SchM_Switch_WdgM_WdgMSupervisionCycle
.LVL83:
	jnz	%d2, .L103
.L65:
	.loc 1 448 0
	mov	%d2, 0
	ret
.LVL84:
.L102:
.LBB37:
.LBB34:
	.loc 2 1354 0
	mov.aa	%a15, %a4
	.loc 2 1352 0
	mov	%d2, 0
.LVL85:
.L63:
	.loc 2 1356 0
	mul	%d7, %d6, 12
	addsc.a	%a5, %a12, %d7, 0
	ld.bu	%d3, [%a5] 11
	jne	%d3, 4, .L54
	.loc 2 1365 0
	st.b	[%a5] 10, %d0
	.loc 2 1366 0
	st.b	[%a5]0, %d0
	.loc 2 1367 0
	ld.bu	%d3, [%a15]0
	st.b	[%a5] 1, %d3
	ld.a	%a5, [%a2] 16
	addsc.a	%a3, %a5, %d9, 0
	ld.hu	%d4, [%a3] 12
	j	.L54
.L62:
	.loc 2 1384 0
	addsc.a	%a5, %a12, %d7, 0
	ld.bu	%d2, [%a5] 11
	and	%d2, %d2, 2
	.loc 2 1383 0
	and	%d2, %d2, 255
	jnz	%d2, .L56
	.loc 2 1386 0
	st.b	[%a5] 10, %d10
	.loc 2 1387 0
	st.b	[%a5] 1, %d2
.LVL86:
	ld.a	%a5, [%a2] 16
	.loc 2 1392 0
	mov.a	%a15, %d1
	addsc.a	%a3, %a5, %d9, 0
	st.b	[%a15]0, %d0
	.loc 2 1393 0
	st.b	[%a15] 1, %d0
.LVL87:
	j	.L56
.LVL88:
.L103:
.LBE34:
.LBE37:
	.loc 1 529 0
	mov	%e4, 13
	mov	%d6, 3
	mov	%d7, 129
	call	Det_ReportError
.LVL89:
	.loc 1 531 0
	mov	%d2, 1
	ret
.LFE28:
	.size	WdgM_SetMode, .-WdgM_SetMode
.section .text.WdgM_Init,"ax",@progbits
	.align 1
	.global	WdgM_Init
	.type	WdgM_Init, @function
WdgM_Init:
.LFB25:
	.loc 1 55 0
.LVL90:
	.loc 1 79 0
	movh.a	%a13, hi:WdgM_GlobalStatus
	ld.bu	%d15, [%a13] lo:WdgM_GlobalStatus
	jne	%d15, 4, .L121
	.loc 1 100 0
	movh.a	%a2, hi:WdgM_Config
	.loc 1 89 0
	mov	%d15, 0
	movh.a	%a15, hi:WdgM_MainFunction_Cnt_u32
	st.w	[%a15] lo:WdgM_MainFunction_Cnt_u32, %d15
	.loc 1 100 0
	lea	%a15, [%a2] lo:WdgM_Config
	.loc 1 126 0
	ld.bu	%d15, [%a2] lo:WdgM_Config
	ld.w	%d2, [%a15] 16
	.loc 1 100 0
	movh.a	%a14, hi:WdgM_ConfigSetPtr
	.loc 1 126 0
	madd	%d3, %d2, %d15, 40
	.loc 1 100 0
	st.a	[%a14] lo:WdgM_ConfigSetPtr, %a15
	.loc 1 126 0
	mov.a	%a2, %d3
	.loc 1 128 0
	ld.bu	%d3, [%a2] 14
	.loc 1 126 0
	ld.a	%a15, [%a2] 28
.LVL91:
	.loc 1 127 0
	jz	%d3, .L113
	.loc 1 131 0
	ld.bu	%d15, [%a15] 3
	jz	%d15, .L107
	add.a	%a15, 4
.LVL92:
	mov	%d15, 0
	j	.L109
.LVL93:
.L110:
	ld.bu	%d2, [%a15] 3
	add.a	%a15, 4
	jz	%d2, .L107
.LVL94:
.L109:
	add	%d15, 1
.LVL95:
	.loc 1 127 0
	and	%d2, %d15, 255
	jlt.u	%d2, %d3, .L110
.LVL96:
.L113:
	movh	%d10, hi:WdgM_SupervisedEntityDyn
	movh.a	%a15, hi:WdgM_InternalGraph_StatusDyn
	movh.a	%a12, hi:Rte_Inst_WdgM
	mov	%d15, 0
	addi	%d10, %d10, lo:WdgM_SupervisedEntityDyn
	lea	%a15, [%a15] lo:WdgM_InternalGraph_StatusDyn
	lea	%a12, [%a12] lo:Rte_Inst_WdgM
	.loc 1 145 0
	mov	%d9, 4
	.loc 1 152 0
	mov	%d8, 0
.LVL97:
.L116:
	.loc 1 145 0
	madd	%d2, %d10, %d15, 12
	.loc 1 157 0
	addsc.a	%a2, %a12, %d15, 3
	.loc 1 152 0
	st.b	[%a15]0, %d8
	.loc 1 145 0
	mov.a	%a3, %d2
	.loc 1 157 0
	ld.a	%a2, [%a2] 4
	.loc 1 145 0
	st.b	[%a3] 11, %d9
	.loc 1 146 0
	st.b	[%a3] 10, %d9
.LVL98:
	.loc 1 153 0
	st.b	[%a15] 1, %d8
.LVL99:
	.loc 1 157 0
	mov	%d4, 4
	add	%d15, 1
.LVL100:
	calli	%a2
.LVL101:
	.loc 1 143 0
	jne	%d15, 5, .L116
	.loc 1 170 0
	movh.a	%a15, hi:WdgM_Prv_SetMode_GlobalStatus
	mov	%d15, 4
	st.b	[%a15] lo:WdgM_Prv_SetMode_GlobalStatus, %d15
	.loc 1 180 0
	ld.a	%a15, [%a14] lo:WdgM_ConfigSetPtr
	.loc 1 175 0
	mov	%d15, 0
	st.b	[%a13] lo:WdgM_GlobalStatus, %d15
	.loc 1 180 0
	ld.bu	%d4, [%a15]0
	call	WdgM_SetMode
.LVL102:
	.loc 1 182 0
	jz	%d2, .L122
	.loc 1 218 0
	mov	%d15, 3
	movh.a	%a15, hi:WdgM_GlobalStatus
	st.b	[%a15] lo:WdgM_GlobalStatus, %d15
	ret
.LVL103:
.L121:
	.loc 1 83 0
	mov	%e4, 13
	mov	%d6, 0
	mov	%d7, 26
	j	Det_ReportError
.LVL104:
.L107:
	.loc 1 136 0
	mov	%e4, 13
	mov	%d6, 0
	mov	%d7, 21
	j	Det_ReportError
.LVL105:
.L122:
	.loc 1 185 0
	movh.a	%a15, hi:WdgM_FirstExpiredSupervisedEntityId
	st.b	[%a15] lo:WdgM_FirstExpiredSupervisedEntityId, %d2
	.loc 1 187 0
	movh.a	%a15, hi:WdgM_FirstExpiredSupervisedEntityId_Comp
	st.b	[%a15] lo:WdgM_FirstExpiredSupervisedEntityId_Comp, %d2
	.loc 1 188 0
	movh.a	%a15, hi:WdgM_ExpiredSupervisionCycleCtr
	st.h	[%a15] lo:WdgM_ExpiredSupervisionCycleCtr, %d2
	ret
.LFE25:
	.size	WdgM_Init, .-WdgM_Init
.section .text.WdgM_GetMode,"ax",@progbits
	.align 1
	.global	WdgM_GetMode
	.type	WdgM_GetMode, @function
WdgM_GetMode:
.LFB29:
	.loc 1 579 0
.LVL106:
	.loc 1 581 0
	movh.a	%a15, hi:WdgM_GlobalStatus
	ld.bu	%d15, [%a15] lo:WdgM_GlobalStatus
	jeq	%d15, 4, .L127
	.loc 1 591 0
	jz.a	%a4, .L128
	.loc 1 598 0
	movh.a	%a15, hi:WdgM_Mode
	ld.bu	%d15, [%a15] lo:WdgM_Mode
	.loc 1 599 0
	mov	%d2, 0
	.loc 1 598 0
	st.b	[%a4]0, %d15
	.loc 1 600 0
	ret
.L127:
	.loc 1 585 0
	mov	%e4, 13
	mov	%d6, 11
	mov	%d7, 16
	call	Det_ReportError
.LVL107:
	.loc 1 587 0
	mov	%d2, 1
	ret
.LVL108:
.L128:
	.loc 1 594 0
	mov	%e4, 13
	mov	%d6, 11
	mov	%d7, 20
	call	Det_ReportError
.LVL109:
	.loc 1 595 0
	mov	%d2, 1
	ret
.LFE29:
	.size	WdgM_GetMode, .-WdgM_GetMode
.section .text.WdgM_GetLocalStatus,"ax",@progbits
	.align 1
	.global	WdgM_GetLocalStatus
	.type	WdgM_GetLocalStatus, @function
WdgM_GetLocalStatus:
.LFB30:
	.loc 1 613 0
.LVL110:
	.loc 1 616 0
	movh.a	%a15, hi:WdgM_GlobalStatus
	ld.bu	%d15, [%a15] lo:WdgM_GlobalStatus
	jeq	%d15, 4, .L134
	.loc 1 626 0
	jge.u	%d4, 5, .L135
	.loc 1 633 0
	jz.a	%a4, .L136
	.loc 1 642 0
	movh.a	%a15, hi:WdgM_SupervisedEntityDyn
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:WdgM_SupervisedEntityDyn
	madd	%d2, %d15, %d4, 12
	mov.a	%a15, %d2
	.loc 1 644 0
	mov	%d2, 0
	.loc 1 642 0
	ld.bu	%d15, [%a15] 11
	st.b	[%a4]0, %d15
	.loc 1 645 0
	ret
.L135:
	.loc 1 629 0
	mov	%e4, 13
.LVL111:
	mov	%d6, 12
	mov	%d7, 19
	call	Det_ReportError
.LVL112:
	.loc 1 630 0
	mov	%d2, 1
	ret
.LVL113:
.L134:
	.loc 1 620 0
	mov	%e4, 13
.LVL114:
	mov	%d6, 12
	mov	%d7, 16
	call	Det_ReportError
.LVL115:
	.loc 1 622 0
	mov	%d2, 1
	ret
.LVL116:
.L136:
	.loc 1 636 0
	mov	%e4, 13
.LVL117:
	mov	%d6, 12
	mov	%d7, 20
	call	Det_ReportError
.LVL118:
	.loc 1 637 0
	mov	%d2, 1
	ret
.LFE30:
	.size	WdgM_GetLocalStatus, .-WdgM_GetLocalStatus
.section .text.WdgM_GetGlobalStatus,"ax",@progbits
	.align 1
	.global	WdgM_GetGlobalStatus
	.type	WdgM_GetGlobalStatus, @function
WdgM_GetGlobalStatus:
.LFB31:
	.loc 1 657 0
.LVL119:
	.loc 1 660 0
	movh.a	%a15, hi:WdgM_GlobalStatus
	ld.bu	%d15, [%a15] lo:WdgM_GlobalStatus
	jeq	%d15, 4, .L141
	.loc 1 667 0
	jz.a	%a4, .L142
	.loc 1 675 0
	st.b	[%a4]0, %d15
	.loc 1 676 0
	mov	%d2, 0
	.loc 1 677 0
	ret
.L141:
	.loc 1 663 0
	mov	%e4, 13
	mov	%d6, %d4
	mov	%d7, 16
	call	Det_ReportError
.LVL120:
	.loc 1 664 0
	mov	%d2, 1
	ret
.LVL121:
.L142:
	.loc 1 670 0
	mov	%e4, 13
	mov	%d6, %d4
	mov	%d7, 20
	call	Det_ReportError
.LVL122:
	.loc 1 671 0
	mov	%d2, 1
	ret
.LFE31:
	.size	WdgM_GetGlobalStatus, .-WdgM_GetGlobalStatus
.section .text.WdgM_PerformReset,"ax",@progbits
	.align 1
	.global	WdgM_PerformReset
	.type	WdgM_PerformReset, @function
WdgM_PerformReset:
.LFB32:
	.loc 1 689 0
	.loc 1 692 0
	movh.a	%a15, hi:WdgM_GlobalStatus
	ld.bu	%d15, [%a15] lo:WdgM_GlobalStatus
	jeq	%d15, 4, .L145
	.loc 1 703 0
	mov	%d15, 4
	.loc 1 705 0
	mov	%d4, 4
	.loc 1 703 0
	st.b	[%a15] lo:WdgM_GlobalStatus, %d15
	.loc 1 705 0
	j	WdgM_Prv_SetTriggerCondition
.LVL123:
.L145:
	.loc 1 696 0
	mov	%e4, 13
	mov	%d6, 15
	mov	%d7, 16
	j	Det_ReportError
.LVL124:
.LFE32:
	.size	WdgM_PerformReset, .-WdgM_PerformReset
.section .text.WdgM_GetFirstExpiredSEID,"ax",@progbits
	.align 1
	.global	WdgM_GetFirstExpiredSEID
	.type	WdgM_GetFirstExpiredSEID, @function
WdgM_GetFirstExpiredSEID:
.LFB33:
	.loc 1 726 0
.LVL125:
	.loc 1 732 0
	jz.a	%a4, .L150
.LVL126:
	.loc 1 744 0
	movh.a	%a15, hi:WdgM_FirstExpiredSupervisedEntityId
	ld.bu	%d2, [%a15] lo:WdgM_FirstExpiredSupervisedEntityId
	.loc 1 743 0
	movh.a	%a15, hi:WdgM_FirstExpiredSupervisedEntityId_Comp
.LBB38:
.LBB39:
	.file 3 ".\\output\\inc/..\\..\\bsw\\WdgM\\WdgM_Cfg.h"
	.loc 3 380 0
	ld.bu	%d15, [%a15] lo:WdgM_FirstExpiredSupervisedEntityId_Comp
	not	%d15
.LBE39:
.LBE38:
	.loc 1 744 0
	and	%d15, 255
	jeq	%d2, %d15, .L151
	.loc 1 751 0
	mov	%d15, 0
	st.b	[%a4]0, %d15
.LVL127:
	.loc 1 727 0
	mov	%d2, 1
	.loc 1 754 0
	ret
.LVL128:
.L151:
	.loc 1 746 0
	st.b	[%a4]0, %d2
.LVL129:
	.loc 1 747 0
	mov	%d2, 0
	ret
.LVL130:
.L150:
	.loc 1 735 0
	mov	%e4, 13
	mov	%d6, 16
	mov	%d7, 20
	call	Det_ReportError
.LVL131:
	.loc 1 736 0
	mov	%d2, 1
	ret
.LFE33:
	.size	WdgM_GetFirstExpiredSEID, .-WdgM_GetFirstExpiredSEID
.section .text.WdgM_MainFunction,"ax",@progbits
	.align 1
	.global	WdgM_MainFunction
	.type	WdgM_MainFunction, @function
WdgM_MainFunction:
.LFB34:
	.loc 1 772 0
.LVL132:
	.loc 1 785 0
	movh.a	%a15, hi:WdgM_MainFunction_Cnt_u32
	ld.w	%d15, [%a15] lo:WdgM_MainFunction_Cnt_u32
	.loc 1 786 0
	movh.a	%a13, hi:WdgM_GlobalStatus
	.loc 1 785 0
	add	%d15, 1
	.loc 1 786 0
	ld.bu	%d8, [%a13] lo:WdgM_GlobalStatus
	.loc 1 785 0
	st.w	[%a15] lo:WdgM_MainFunction_Cnt_u32, %d15
	.loc 1 786 0
	jeq	%d8, 4, .L205
.LVL133:
	.loc 1 801 0
	add	%d15, %d8, -3
	movh.a	%a15, hi:WdgM_Prv_SetMode_GlobalStatus
	jlt.u	%d15, 2, .L154
	.loc 1 801 0 is_stmt 0 discriminator 1
	ld.bu	%d15, [%a15] lo:WdgM_Prv_SetMode_GlobalStatus
	jeq	%d15, 3, .L192
	.loc 1 803 0 is_stmt 1
	jeq	%d8, 2, .L156
.LVL134:
.LBB42:
.LBB43:
	.loc 2 294 0
	movh	%d12, hi:WdgM_ConfigSetPtr
	mov.a	%a2, %d12
	movh.a	%a14, hi:WdgM_Mode
	ld.bu	%d10, [%a14] lo:WdgM_Mode
	ld.a	%a5, [%a2] lo:WdgM_ConfigSetPtr
	mul	%d10, %d10, 40
	ld.a	%a6, [%a5] 16
	movh.a	%a7, hi:WdgM_AliveSupervisionActive
	movh.a	%a12, hi:WdgM_SupervisedEntityDyn
	addsc.a	%a15, %a6, %d10, 0
	ld.bu	%d1, [%a7] lo:WdgM_AliveSupervisionActive
	.loc 2 296 0
	ld.hu	%d2, [%a15] 8
	.loc 2 294 0
	ld.w	%d7, [%a15] 16
.LVL135:
	.loc 2 296 0
	mov	%d15, 0
	lea	%a12, [%a12] lo:WdgM_SupervisedEntityDyn
	.loc 2 414 0
	mov	%d0, 0
	.loc 2 432 0
	mov	%d5, 0
	.loc 2 296 0
	jnz	%d2, .L197
	j	.L158
.LVL136:
.L159:
	.loc 2 432 0
	addsc.a	%a15, %a12, %d3, 0
	.loc 2 440 0
	st.b	[%a15]0, %d0
.LVL137:
	ld.a	%a6, [%a5] 16
	.loc 2 432 0
	st.w	[%a15] 4, %d5
	.loc 2 439 0
	st.h	[%a15] 2, %d5
.L160:
.LVL138:
	.loc 2 297 0
	addsc.a	%a15, %a6, %d10, 0
	addi	%d3, %d6, 1
	.loc 2 296 0
	ld.hu	%d2, [%a15] 8
	extr.u	%d3, %d3, 0, 16
	add	%d15, 1
	jge.u	%d3, %d2, .L158
.LVL139:
.L197:
	.loc 2 300 0
	insert	%d2, %d15, 0, 16, 16
	extr.u	%d6, %d15, 0, 16
.LVL140:
	madd	%d3, %d7, %d2, 10
	mov.a	%a2, %d3
.LVL141:
	.loc 2 305 0
	ld.bu	%d3, [%a2] 5
.LVL142:
	mul	%d3, %d3, 12
	addsc.a	%a3, %a12, %d3, 0
	lea	%a4, [%a3] 8
	ld.bu	%d2, [%a4] 2
	and	%d4, %d2, 4
	and	%d4, %d4, 255
	jnz	%d4, .L159
	jne	%d1, 1, .L159
	.loc 2 308 0
	ld.h	%d9, [%a3] 2
	.loc 2 310 0
	ld.hu	%d11, [%a2] 8
	.loc 2 308 0
	add	%d9, 1
	extr.u	%d9, %d9, 0, 16
	st.h	[%a3] 2, %d9
.LVL143:
	.loc 2 310 0
	jne	%d11, %d9, .L160
	.loc 2 330 0
	ld.hu	%d13, [%a2] 6
	ld.hu	%d9, [%a2]0
	.loc 2 322 0
	ld.w	%d11, [%a3] 4
.LVL144:
	.loc 2 330 0
	sub	%d9, %d13, %d9
	.loc 2 323 0
	st.w	[%a3] 4, %d4
	.loc 2 329 0
	jlt.u	%d11, %d9, .L161
	.loc 2 332 0
	ld.hu	%d9, [%a2] 2
	add	%d13, %d9
	.loc 2 330 0
	jlt.u	%d13, %d11, .L161
	.loc 2 336 0
	ld.bu	%d9, [%a3]0
	jlt.u	%d9, 2, .L162
	.loc 2 342 0
	or	%d2, %d2, 1
	.loc 2 346 0
	add	%d9, -1
	.loc 2 342 0
	st.b	[%a4] 2, %d2
	.loc 2 346 0
	st.b	[%a3]0, %d9
	j	.L163
.LVL145:
.L154:
.LBE43:
.LBE42:
	.loc 1 922 0
	movh.a	%a15, hi:WdgM_Prv_Rte_Switch_globalMode_Status
.LVL146:
	ld.bu	%d15, [%a15] lo:WdgM_Prv_Rte_Switch_globalMode_Status
	jnz	%d15, .L155
.LVL147:
.L202:
	.loc 1 948 0
	mov	%d15, 3
.L178:
	.loc 1 962 0
	mov	%d4, %d15
	call	WdgM_Prv_SetTriggerCondition
.LVL148:
	.loc 1 963 0
	st.b	[%a13] lo:WdgM_GlobalStatus, %d15
	.loc 1 964 0
	ret
.LVL149:
.L158:
.LBB47:
.LBB44:
	.loc 2 445 0
	jnz	%d1, .L167
	.loc 2 447 0
	mov	%d15, 1
	st.b	[%a7] lo:WdgM_AliveSupervisionActive, %d15
.L167:
.LBE44:
.LBE47:
	.loc 1 813 0
	call	WdgM_Prv_LocalStatusMainFunction
.LVL150:
	.loc 1 823 0
	ld.bu	%d15, [%a12] 10
	jnz.t	%d15, 1, .L168
	ld.bu	%d2, [%a12] 22
	.loc 1 850 0
	and	%d15, %d15, 1
.LVL151:
	.loc 1 823 0
	jnz.t	%d2, 1, .L168
	.loc 1 848 0
	and	%d2, %d2, 1
	.loc 1 850 0
	seln	%d15, %d2, %d15, 1
.LVL152:
	.loc 1 823 0
	ld.bu	%d2, [%a12] 34
	jnz.t	%d2, 1, .L168
	.loc 1 848 0
	and	%d2, %d2, 1
	.loc 1 850 0
	seln	%d15, %d2, %d15, 1
.LVL153:
	.loc 1 823 0
	ld.bu	%d2, [%a12] 46
	jnz.t	%d2, 1, .L168
	.loc 1 848 0
	and	%d2, %d2, 1
	.loc 1 850 0
	seln	%d15, %d2, %d15, 1
.LVL154:
	.loc 1 823 0
	ld.bu	%d2, [%a12] 58
	jnz.t	%d2, 1, .L168
	.loc 1 848 0
	and	%d2, %d2, 1
	.loc 1 850 0
	seln	%d15, %d2, %d15, 1
.LVL155:
	.loc 1 924 0
	jeq	%d15, %d8, .L177
.LVL156:
.L176:
	.loc 1 926 0
	jge.u	%d15, 4, .L178
	movh.a	%a15, hi:.L180
	lea	%a15, [%a15] lo:.L180
	addsc.a	%a15, %a15, %d15, 2
	ji	%a15
	.align 2
	.align 2
.L180:
	.code32
	j	.L179
	.code32
	j	.L181
	.code32
	j	.L182
	.code32
	j	.L192
.LVL157:
.L156:
	.loc 1 862 0
	movh.a	%a15, hi:WdgM_ConfigSetPtr
	ld.a	%a15, [%a15] lo:WdgM_ConfigSetPtr
	movh.a	%a3, hi:WdgM_Mode
	ld.bu	%d2, [%a3] lo:WdgM_Mode
	ld.w	%d3, [%a15] 16
	movh.a	%a2, hi:WdgM_ExpiredSupervisionCycleCtr
	madd	%d4, %d3, %d2, 40
	ld.hu	%d15, [%a2] lo:WdgM_ExpiredSupervisionCycleCtr
	mov.a	%a15, %d4
	ld.hu	%d2, [%a15]0
	jeq	%d2, %d15, .L184
	.loc 1 878 0
	add	%d15, 1
	st.h	[%a2] lo:WdgM_ExpiredSupervisionCycleCtr, %d15
.LVL158:
.L177:
	.loc 1 924 0 discriminator 1
	movh.a	%a15, hi:WdgM_Prv_Rte_Switch_globalMode_Status
	ld.bu	%d2, [%a15] lo:WdgM_Prv_Rte_Switch_globalMode_Status
	mov	%d15, %d8
	jnz	%d2, .L176
	.loc 1 962 0
	mov	%d4, %d15
	call	WdgM_Prv_SetTriggerCondition
.LVL159:
	.loc 1 963 0
	st.b	[%a13] lo:WdgM_GlobalStatus, %d15
	.loc 1 964 0
	ret
.L192:
	movh.a	%a15, hi:WdgM_Prv_Rte_Switch_globalMode_Status
.L155:
	.loc 1 946 0
	mov	%d4, 3
	call	Rte_Switch_WdgM_globalMode_currentMode
.LVL160:
	st.b	[%a15] lo:WdgM_Prv_Rte_Switch_globalMode_Status, %d2
	j	.L202
.L182:
	.loc 1 935 0
	mov	%d4, 2
	call	Rte_Switch_WdgM_globalMode_currentMode
.LVL161:
	movh.a	%a15, hi:WdgM_Prv_Rte_Switch_globalMode_Status
	.loc 1 962 0
	mov	%d4, %d15
	.loc 1 935 0
	st.b	[%a15] lo:WdgM_Prv_Rte_Switch_globalMode_Status, %d2
	.loc 1 962 0
	call	WdgM_Prv_SetTriggerCondition
.LVL162:
	.loc 1 963 0
	st.b	[%a13] lo:WdgM_GlobalStatus, %d15
	.loc 1 964 0
	ret
.L181:
	.loc 1 932 0
	mov	%d4, 1
	call	Rte_Switch_WdgM_globalMode_currentMode
.LVL163:
	movh.a	%a15, hi:WdgM_Prv_Rte_Switch_globalMode_Status
	.loc 1 962 0
	mov	%d4, %d15
	.loc 1 932 0
	st.b	[%a15] lo:WdgM_Prv_Rte_Switch_globalMode_Status, %d2
	.loc 1 962 0
	call	WdgM_Prv_SetTriggerCondition
.LVL164:
	.loc 1 963 0
	st.b	[%a13] lo:WdgM_GlobalStatus, %d15
	.loc 1 964 0
	ret
.L179:
	.loc 1 929 0
	mov	%d4, 0
	call	Rte_Switch_WdgM_globalMode_currentMode
.LVL165:
	movh.a	%a15, hi:WdgM_Prv_Rte_Switch_globalMode_Status
	.loc 1 962 0
	mov	%d4, %d15
	.loc 1 929 0
	st.b	[%a15] lo:WdgM_Prv_Rte_Switch_globalMode_Status, %d2
	.loc 1 962 0
	call	WdgM_Prv_SetTriggerCondition
.LVL166:
	.loc 1 963 0
	st.b	[%a13] lo:WdgM_GlobalStatus, %d15
	.loc 1 964 0
	ret
.LVL167:
.L184:
	.loc 1 870 0
	mov	%d15, 3
.LVL168:
	j	.L176
.LVL169:
.L161:
.LBB48:
.LBB45:
	.loc 2 388 0
	addsc.a	%a15, %a12, %d3, 0
	or	%d4, %d2, 1
	st.b	[%a15] 10, %d4
	.loc 2 394 0
	ld.bu	%d9, [%a15] 1
	ld.bu	%d4, [%a15]0
	jeq	%d9, %d4, .L206
	.loc 2 411 0
	add	%d4, 1
	st.b	[%a15]0, %d4
.L163:
	.loc 2 414 0
	addsc.a	%a15, %a12, %d3, 0
	ld.a	%a6, [%a5] 16
	st.h	[%a15] 2, %d0
	j	.L160
.LVL170:
.L205:
.LBE45:
.LBE48:
	.loc 1 789 0
	mov	%e4, 13
	mov	%d6, 8
	mov	%d7, 16
	j	Det_ReportError
.LVL171:
.L168:
	.loc 1 830 0
	movh.a	%a15, hi:WdgM_ExpiredSupervisionCycleCtr
	ld.h	%d15, [%a15] lo:WdgM_ExpiredSupervisionCycleCtr
	.loc 1 837 0
	mov.a	%a2, %d12
	.loc 1 830 0
	add	%d15, 1
	st.h	[%a15] lo:WdgM_ExpiredSupervisionCycleCtr, %d15
	.loc 1 837 0
	ld.a	%a15, [%a2] lo:WdgM_ConfigSetPtr
	ld.bu	%d15, [%a14] lo:WdgM_Mode
	ld.w	%d2, [%a15] 16
	madd	%d3, %d2, %d15, 40
	.loc 1 829 0
	mov	%d15, 3
	.loc 1 837 0
	mov.a	%a15, %d3
	ld.hu	%d2, [%a15]0
	.loc 1 829 0
	seln	%d15, %d2, %d15, 2
	j	.L176
.LVL172:
.L206:
.LBB49:
.LBB46:
	.loc 2 400 0
	or	%d2, %d2, 3
	st.b	[%a15] 10, %d2
	j	.L163
.L162:
	.loc 2 357 0
	andn	%d2, %d2, ~(-2)
	st.b	[%a4] 2, %d2
	.loc 2 351 0
	jne	%d9, 1, .L163
	.loc 2 361 0
	st.b	[%a3]0, %d4
	j	.L163
.LBE46:
.LBE49:
.LFE34:
	.size	WdgM_MainFunction, .-WdgM_MainFunction
.section .data.a1.WdgM_Prv_SetMode_GlobalStatus,"aw",@progbits
	.type	WdgM_Prv_SetMode_GlobalStatus, @object
	.size	WdgM_Prv_SetMode_GlobalStatus, 1
WdgM_Prv_SetMode_GlobalStatus:
	.byte	4
.section .data.a1.WdgM_GlobalStatus,"aw",@progbits
	.type	WdgM_GlobalStatus, @object
	.size	WdgM_GlobalStatus, 1
WdgM_GlobalStatus:
	.byte	4
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
	.uaword	.LFB26
	.uaword	.LFE26-.LFB26
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB27
	.uaword	.LFE27-.LFB27
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB28
	.uaword	.LFE28-.LFB28
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB25
	.uaword	.LFE25-.LFB25
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB29
	.uaword	.LFE29-.LFB29
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB30
	.uaword	.LFE30-.LFB30
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB31
	.uaword	.LFE31-.LFB31
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB32
	.uaword	.LFE32-.LFB32
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB33
	.uaword	.LFE33-.LFB33
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB34
	.uaword	.LFE34-.LFB34
	.align 2
.LEFDE18:
.section .text,"ax",@progbits
.Letext0:
	.file 4 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 5 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 6 ".\\output\\inc/..\\..\\rte\\Rte_Type.h"
	.file 7 ".\\output\\inc/..\\..\\rte\\SchM_WdgM_Type.h"
	.file 8 ".\\output\\inc/..\\..\\os\\Os.h"
	.file 9 ".\\output\\inc/..\\..\\rte\\Rte_WdgM.h"
	.file 10 ".\\output\\inc/..\\..\\bsw\\WdgIf\\api\\WdgIf_Types.h"
	.file 11 ".\\output\\inc/..\\..\\rte\\SchM_WdgM.h"
	.file 12 ".\\output\\inc/..\\..\\bsw\\Det\\api\\Det.h"
	.file 13 ".\\output\\inc/..\\..\\Integration\\mcal\\Wdg.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x221b
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\WdgM\\src\\WdgM.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x98
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x4
	.byte	0x51
	.uaword	0x1a2
	.uleb128 0x3
	.string	"uint16"
	.byte	0x4
	.byte	0x5b
	.uaword	0x1b3
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x3
	.string	"uint32"
	.byte	0x4
	.byte	0x6a
	.uaword	0x1c9
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
	.byte	0x4
	.byte	0x80
	.uaword	0x1a2
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x3
	.string	"StatusType"
	.byte	0x5
	.byte	0x48
	.uaword	0x1a2
	.uleb128 0x3
	.string	"Std_ReturnType"
	.byte	0x5
	.byte	0x60
	.uaword	0x208
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2cd
	.uleb128 0x5
	.uleb128 0x6
	.string	"WdgM_CheckpointIdType"
	.byte	0x6
	.uahalf	0x1fa
	.uaword	0x208
	.uleb128 0x6
	.string	"WdgM_SupervisedEntityIdType"
	.byte	0x6
	.uahalf	0x1fc
	.uaword	0x208
	.uleb128 0x6
	.string	"WdgM_ModeType"
	.byte	0x6
	.uahalf	0x200
	.uaword	0x208
	.uleb128 0x6
	.string	"WdgM_GlobalStatusType"
	.byte	0x6
	.uahalf	0x210
	.uaword	0x208
	.uleb128 0x6
	.string	"WdgM_LocalStatusType"
	.byte	0x6
	.uahalf	0x212
	.uaword	0x208
	.uleb128 0x4
	.byte	0x4
	.uaword	0x215
	.uleb128 0x4
	.byte	0x4
	.uaword	0x36d
	.uleb128 0x7
	.byte	0x1
	.uaword	0x2b1
	.uleb128 0x4
	.byte	0x4
	.uaword	0x379
	.uleb128 0x8
	.byte	0x1
	.uaword	0x2b1
	.uaword	0x389
	.uleb128 0x9
	.uaword	0x208
	.byte	0
	.uleb128 0xa
	.uaword	0x38e
	.uleb128 0xb
	.string	"Rte_CDS_WdgM"
	.byte	0x28
	.byte	0x9
	.byte	0x51
	.uaword	0x3df
	.uleb128 0xc
	.string	"mode_WdgMSupervisedEntity_Alive_Supervision_CPU1"
	.byte	0x9
	.byte	0x53
	.uaword	0x11d8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.string	"Rte_SwitchAckFP_WdgM_WdgM_LocalMode_currentMode"
	.byte	0x6
	.uahalf	0x2d5
	.uaword	0x367
	.uleb128 0x6
	.string	"Rte_SwitchFP_WdgM_WdgM_LocalMode_currentMode"
	.byte	0x6
	.uahalf	0x2e3
	.uaword	0x373
	.uleb128 0x3
	.string	"Rte_ModeType_WdgMSupervisionCycle"
	.byte	0x7
	.byte	0x1a
	.uaword	0x208
	.uleb128 0x3
	.string	"ApplicationType"
	.byte	0x8
	.byte	0xee
	.uaword	0x1a2
	.uleb128 0xa
	.uaword	0x361
	.uleb128 0x6
	.string	"TickType"
	.byte	0x8
	.uahalf	0x10b
	.uaword	0x1c9
	.uleb128 0x4
	.byte	0x4
	.uaword	0x491
	.uleb128 0xd
	.byte	0xc
	.byte	0x8
	.uahalf	0x1f1
	.uaword	0x4f9
	.uleb128 0xe
	.string	"maxallowedvalue"
	.byte	0x8
	.uahalf	0x1f2
	.uaword	0x491
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"ticksperbase"
	.byte	0x8
	.uahalf	0x1f3
	.uaword	0x491
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"mincycle"
	.byte	0x8
	.uahalf	0x1f4
	.uaword	0x491
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x6
	.string	"AlarmBaseType"
	.byte	0x8
	.uahalf	0x1f5
	.uaword	0x4a8
	.uleb128 0x6
	.string	"Os_CounterIncrAdvType"
	.byte	0x8
	.uahalf	0x215
	.uaword	0x52d
	.uleb128 0x4
	.byte	0x4
	.uaword	0x533
	.uleb128 0x7
	.byte	0x1
	.uaword	0x29f
	.uleb128 0xf
	.string	"s_swd"
	.byte	0x4
	.byte	0x8
	.uahalf	0x21a
	.uaword	0x55a
	.uleb128 0xe
	.string	"count"
	.byte	0x8
	.uahalf	0x21b
	.uaword	0x491
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.byte	0x8
	.uahalf	0x219
	.uaword	0x56f
	.uleb128 0x11
	.string	"sw"
	.byte	0x8
	.uahalf	0x21c
	.uaword	0x539
	.byte	0
	.uleb128 0xf
	.string	"Os_CounterDynType_s"
	.byte	0x4
	.byte	0x8
	.uahalf	0x218
	.uaword	0x5a7
	.uleb128 0xe
	.string	"type_dependent"
	.byte	0x8
	.uahalf	0x21d
	.uaword	0x55a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.string	"Os_CounterDynType"
	.byte	0x8
	.uahalf	0x21e
	.uaword	0x56f
	.uleb128 0xf
	.string	"Os_CounterType_s"
	.byte	0x1c
	.byte	0x8
	.uahalf	0x21f
	.uaword	0x64b
	.uleb128 0xe
	.string	"dynamic"
	.byte	0x8
	.uahalf	0x220
	.uaword	0x64b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"advincr"
	.byte	0x8
	.uahalf	0x221
	.uaword	0x50f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"base"
	.byte	0x8
	.uahalf	0x222
	.uaword	0x4f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"core"
	.byte	0x8
	.uahalf	0x223
	.uaword	0x2c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"access"
	.byte	0x8
	.uahalf	0x224
	.uaword	0x208
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"application"
	.byte	0x8
	.uahalf	0x225
	.uaword	0x475
	.byte	0x2
	.byte	0x23
	.uleb128 0x19
	.byte	0
	.uleb128 0xa
	.uaword	0x650
	.uleb128 0x4
	.byte	0x4
	.uaword	0x5a7
	.uleb128 0x6
	.string	"Os_CounterType"
	.byte	0x8
	.uahalf	0x226
	.uaword	0x5c1
	.uleb128 0x6
	.string	"CounterType"
	.byte	0x8
	.uahalf	0x227
	.uaword	0x681
	.uleb128 0x4
	.byte	0x4
	.uaword	0x687
	.uleb128 0xa
	.uaword	0x656
	.uleb128 0x12
	.byte	0x1
	.byte	0xa
	.byte	0x22
	.uaword	0x6ca
	.uleb128 0x13
	.string	"WDGIF_OFF_MODE"
	.sleb128 0
	.uleb128 0x13
	.string	"WDGIF_SLOW_MODE"
	.sleb128 1
	.uleb128 0x13
	.string	"WDGIF_FAST_MODE"
	.sleb128 2
	.byte	0
	.uleb128 0x3
	.string	"WdgIf_ModeType"
	.byte	0xa
	.byte	0x26
	.uaword	0x68c
	.uleb128 0x14
	.byte	0x8
	.byte	0x3
	.byte	0x9b
	.uaword	0x705
	.uleb128 0x15
	.uaword	.LASF0
	.byte	0x3
	.byte	0x9d
	.uaword	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.uaword	.LASF1
	.byte	0x3
	.byte	0x9e
	.uaword	0x361
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"WdgM_CheckpointDynType"
	.byte	0x3
	.byte	0x9f
	.uaword	0x6e0
	.uleb128 0x14
	.byte	0x4
	.byte	0x3
	.byte	0xa1
	.uaword	0x749
	.uleb128 0xc
	.string	"PtrToCheckpointDyn"
	.byte	0x3
	.byte	0xa3
	.uaword	0x749
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.uaword	0x74e
	.uleb128 0x4
	.byte	0x4
	.uaword	0x705
	.uleb128 0x3
	.string	"WdgM_CheckpointType"
	.byte	0x3
	.byte	0xa4
	.uaword	0x723
	.uleb128 0x14
	.byte	0xc
	.byte	0x3
	.byte	0xa6
	.uaword	0x83d
	.uleb128 0xc
	.string	"FailedAliveSupervisionRefCycleCtr"
	.byte	0x3
	.byte	0xa8
	.uaword	0x208
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.uaword	.LASF2
	.byte	0x3
	.byte	0xa9
	.uaword	0x208
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xc
	.string	"IndividualSupervisionCycleCtr"
	.byte	0x3
	.byte	0xaa
	.uaword	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xc
	.string	"IndividualAliveUpdateCtr"
	.byte	0x3
	.byte	0xab
	.uaword	0x234
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.uaword	.LASF3
	.byte	0x3
	.byte	0xac
	.uaword	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.string	"NewLocalStatus"
	.byte	0x3
	.byte	0xad
	.uaword	0x344
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xc
	.string	"OldLocalStatus"
	.byte	0x3
	.byte	0xae
	.uaword	0x344
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.byte	0
	.uleb128 0x3
	.string	"WdgM_SupervisedEntityDynType"
	.byte	0x3
	.byte	0xaf
	.uaword	0x76f
	.uleb128 0x14
	.byte	0x18
	.byte	0x3
	.byte	0xb1
	.uaword	0x945
	.uleb128 0xc
	.string	"NoOfCheckpoint"
	.byte	0x3
	.byte	0xb3
	.uaword	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"PartionEnabled"
	.byte	0x3
	.byte	0xb4
	.uaword	0x26f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xc
	.string	"TimerId"
	.byte	0x3
	.byte	0xb5
	.uaword	0x66d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"OsApplicationId"
	.byte	0x3
	.byte	0xb6
	.uaword	0x475
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.string	"PtrToCheckpoint"
	.byte	0x3
	.byte	0xb7
	.uaword	0x945
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.string	"PtrToSupervisedEntityDyn"
	.byte	0x3
	.byte	0xb8
	.uaword	0x950
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.string	"hasInternalGraph"
	.byte	0x3
	.byte	0xba
	.uaword	0x26f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xc
	.string	"idxInternalGraphCPProperty"
	.byte	0x3
	.byte	0xbb
	.uaword	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x94b
	.uleb128 0xa
	.uaword	0x754
	.uleb128 0xa
	.uaword	0x955
	.uleb128 0x4
	.byte	0x4
	.uaword	0x83d
	.uleb128 0x3
	.string	"WdgM_SupervisedEntityType"
	.byte	0x3
	.byte	0xbd
	.uaword	0x861
	.uleb128 0x14
	.byte	0xa
	.byte	0x3
	.byte	0xc0
	.uaword	0xa29
	.uleb128 0xc
	.string	"MinMargin"
	.byte	0x3
	.byte	0xc2
	.uaword	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"MaxMargin"
	.byte	0x3
	.byte	0xc3
	.uaword	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xc
	.string	"AliveSupervisionCheckpointId"
	.byte	0x3
	.byte	0xc4
	.uaword	0x2ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.uaword	.LASF4
	.byte	0x3
	.byte	0xc5
	.uaword	0x2ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0xc
	.string	"ExpectedAliveIndications"
	.byte	0x3
	.byte	0xc6
	.uaword	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xc
	.string	"SupervisionReferenceCycle"
	.byte	0x3
	.byte	0xc7
	.uaword	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x3
	.string	"WdgM_AliveSupervisionType"
	.byte	0x3
	.byte	0xc8
	.uaword	0x97c
	.uleb128 0x14
	.byte	0xc
	.byte	0x3
	.byte	0xcb
	.uaword	0xac4
	.uleb128 0xc
	.string	"StartCheckpointId"
	.byte	0x3
	.byte	0xcd
	.uaword	0x2ce
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"StopCheckpointId"
	.byte	0x3
	.byte	0xce
	.uaword	0x2ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x15
	.uaword	.LASF4
	.byte	0x3
	.byte	0xcf
	.uaword	0x2ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xc
	.string	"DeadlineMin"
	.byte	0x3
	.byte	0xd0
	.uaword	0x491
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"DeadlineMax"
	.byte	0x3
	.byte	0xd1
	.uaword	0x491
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x3
	.string	"WdgM_DeadlineSupervisionType"
	.byte	0x3
	.byte	0xd2
	.uaword	0xa4a
	.uleb128 0x14
	.byte	0x2
	.byte	0x3
	.byte	0xd4
	.uaword	0xb0d
	.uleb128 0x15
	.uaword	.LASF2
	.byte	0x3
	.byte	0xd6
	.uaword	0x208
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.uaword	.LASF4
	.byte	0x3
	.byte	0xd7
	.uaword	0x2ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x3
	.string	"WdgM_LocalStatusParamsType"
	.byte	0x3
	.byte	0xd8
	.uaword	0xae8
	.uleb128 0x14
	.byte	0x4
	.byte	0x3
	.byte	0xda
	.uaword	0xb7e
	.uleb128 0xc
	.string	"TriggerConditionValue"
	.byte	0x3
	.byte	0xdc
	.uaword	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"DeviceIdx"
	.byte	0x3
	.byte	0xdd
	.uaword	0x208
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xc
	.string	"WdgMode"
	.byte	0x3
	.byte	0xde
	.uaword	0x6ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0x3
	.string	"WdgM_TriggerType"
	.byte	0x3
	.byte	0xdf
	.uaword	0xb2f
	.uleb128 0x12
	.byte	0x1
	.byte	0x3
	.byte	0xe2
	.uaword	0xc0b
	.uleb128 0x13
	.string	"WDGM_EXTERNALPOSNGRAPH_INITIAL_E"
	.sleb128 1
	.uleb128 0x13
	.string	"WDGM_EXTERNALPOSNGRAPH_FINAL_E"
	.sleb128 2
	.uleb128 0x13
	.string	"WDGM_EXTERNALPOSNGRAPH_INTERMEDIATE_E"
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.string	"WdgM_ExternalPositionInGraph_ten"
	.byte	0x3
	.byte	0xe6
	.uaword	0xb96
	.uleb128 0x14
	.byte	0x8
	.byte	0x3
	.byte	0xe8
	.uaword	0xce2
	.uleb128 0xc
	.string	"SourcePosnInGraph_en"
	.byte	0x3
	.byte	0xea
	.uaword	0xc0b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"SourceSEId"
	.byte	0x3
	.byte	0xeb
	.uaword	0x2ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xc
	.string	"SourceCPId"
	.byte	0x3
	.byte	0xec
	.uaword	0x2ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xc
	.string	"DestSEId"
	.byte	0x3
	.byte	0xed
	.uaword	0x2ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xc
	.string	"DestCPId"
	.byte	0x3
	.byte	0xee
	.uaword	0x2ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"DestPosnInGraph_en"
	.byte	0x3
	.byte	0xef
	.uaword	0xc0b
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0xc
	.string	"ExternalGraphId"
	.byte	0x3
	.byte	0xf0
	.uaword	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0
	.uleb128 0x3
	.string	"WdgM_ExternalGraphType"
	.byte	0x3
	.byte	0xf1
	.uaword	0xc33
	.uleb128 0x14
	.byte	0x28
	.byte	0x3
	.byte	0xfc
	.uaword	0xe99
	.uleb128 0xc
	.string	"ExpiredSupervisionCycleTol"
	.byte	0x3
	.byte	0xfe
	.uaword	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"SchMWdgMSupervisionCycle"
	.byte	0x3
	.byte	0xff
	.uaword	0x44c
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xe
	.string	"SupervisionCycle"
	.byte	0x3
	.uahalf	0x100
	.uaword	0x234
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"NoOfAliveSupervision"
	.byte	0x3
	.uahalf	0x101
	.uaword	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.uaword	.LASF0
	.byte	0x3
	.uahalf	0x102
	.uaword	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xe
	.string	"NoOfLocalStatusParams"
	.byte	0x3
	.uahalf	0x103
	.uaword	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"NoOfTrigger"
	.byte	0x3
	.uahalf	0x104
	.uaword	0x208
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xe
	.string	"PtrToAliveSupervision"
	.byte	0x3
	.uahalf	0x105
	.uaword	0xe99
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"PtrToDeadlineSupervision"
	.byte	0x3
	.uahalf	0x106
	.uaword	0xea4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"PtrToLocalStatusParams"
	.byte	0x3
	.uahalf	0x107
	.uaword	0xeaf
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"PtrToTrigger"
	.byte	0x3
	.uahalf	0x108
	.uaword	0xeba
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"NoOfExternalGraphTransitions"
	.byte	0x3
	.uahalf	0x109
	.uaword	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.string	"PtrToExternalGraph"
	.byte	0x3
	.uahalf	0x10a
	.uaword	0xec5
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0xe9f
	.uleb128 0xa
	.uaword	0xa29
	.uleb128 0x4
	.byte	0x4
	.uaword	0xeaa
	.uleb128 0xa
	.uaword	0xac4
	.uleb128 0x4
	.byte	0x4
	.uaword	0xeb5
	.uleb128 0xa
	.uaword	0xb0d
	.uleb128 0x4
	.byte	0x4
	.uaword	0xec0
	.uleb128 0xa
	.uaword	0xb7e
	.uleb128 0x4
	.byte	0x4
	.uaword	0xecb
	.uleb128 0xa
	.uaword	0xce2
	.uleb128 0x6
	.string	"WdgM_PrvModeType"
	.byte	0x3
	.uahalf	0x10b
	.uaword	0xd00
	.uleb128 0xd
	.byte	0x18
	.byte	0x3
	.uahalf	0x10e
	.uaword	0xfc0
	.uleb128 0xe
	.string	"InitialMode"
	.byte	0x3
	.uahalf	0x110
	.uaword	0x310
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"NoOfMode"
	.byte	0x3
	.uahalf	0x111
	.uaword	0x208
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xe
	.string	"ErrorSupervision"
	.byte	0x3
	.uahalf	0x116
	.uaword	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xe
	.string	"ErrorSetMode"
	.byte	0x3
	.uahalf	0x117
	.uaword	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"PtrToRunningCounterValue"
	.byte	0x3
	.uahalf	0x119
	.uaword	0xfc0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.uaword	.LASF1
	.byte	0x3
	.uahalf	0x11a
	.uaword	0x48c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"PtrToMode"
	.byte	0x3
	.uahalf	0x11b
	.uaword	0xfc5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"PtrToExternalGraphsIndices"
	.byte	0x3
	.uahalf	0x11c
	.uaword	0x48c
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0
	.uleb128 0xa
	.uaword	0x4a2
	.uleb128 0x4
	.byte	0x4
	.uaword	0xfcb
	.uleb128 0xa
	.uaword	0xed0
	.uleb128 0x6
	.string	"WdgM_ConfigType"
	.byte	0x3
	.uahalf	0x11d
	.uaword	0xee9
	.uleb128 0x17
	.byte	0x1
	.byte	0x3
	.uahalf	0x122
	.uaword	0x105e
	.uleb128 0x13
	.string	"WDGM_POSNGRAPH_NONE_E"
	.sleb128 0
	.uleb128 0x13
	.string	"WDGM_POSNGRAPH_INITIAL_E"
	.sleb128 1
	.uleb128 0x13
	.string	"WDGM_POSNGRAPH_FINAL_E"
	.sleb128 2
	.uleb128 0x13
	.string	"WDGM_POSNGRAPH_INTERMEDIATE_E"
	.sleb128 3
	.byte	0
	.uleb128 0x6
	.string	"WdgM_PositionInGraph_ten"
	.byte	0x3
	.uahalf	0x127
	.uaword	0xfe8
	.uleb128 0xd
	.byte	0x8
	.byte	0x3
	.uahalf	0x129
	.uaword	0x10e0
	.uleb128 0x16
	.uaword	.LASF5
	.byte	0x3
	.uahalf	0x12b
	.uaword	0x105e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x16
	.uaword	.LASF6
	.byte	0x3
	.uahalf	0x12c
	.uaword	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xe
	.string	"idxDestCheckpoints"
	.byte	0x3
	.uahalf	0x12d
	.uaword	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"InternalGraphId"
	.byte	0x3
	.uahalf	0x12e
	.uaword	0x215
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0
	.uleb128 0x6
	.string	"WdgM_InternalGraph_CPPropertyType"
	.byte	0x3
	.uahalf	0x12f
	.uaword	0x107f
	.uleb128 0xd
	.byte	0x2
	.byte	0x3
	.uahalf	0x131
	.uaword	0x114e
	.uleb128 0xe
	.string	"flgActivity"
	.byte	0x3
	.uahalf	0x133
	.uaword	0x26f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"idLastReachedCheckpoint"
	.byte	0x3
	.uahalf	0x134
	.uaword	0x2ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x6
	.string	"WdgM_InternalGraph_StatusType"
	.byte	0x3
	.uahalf	0x135
	.uaword	0x110a
	.uleb128 0xb
	.string	"Rte_PDS_WdgM_WdgM_LocalMode_P"
	.byte	0x8
	.byte	0x9
	.byte	0x4b
	.uaword	0x11d8
	.uleb128 0xc
	.string	"SwitchAck_currentMode"
	.byte	0x9
	.byte	0x4c
	.uaword	0x3df
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"Switch_currentMode"
	.byte	0x9
	.byte	0x4d
	.uaword	0x417
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"Rte_PDS_WdgM_WdgM_LocalMode_PA"
	.byte	0x9
	.byte	0x50
	.uaword	0x11fe
	.uleb128 0x18
	.uaword	0x1174
	.uaword	0x120e
	.uleb128 0x19
	.uaword	0x1fc
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"Rte_PortHandle_WdgM_LocalMode_P"
	.byte	0x9
	.byte	0x60
	.uaword	0x1235
	.uleb128 0x4
	.byte	0x4
	.uaword	0x123b
	.uleb128 0xa
	.uaword	0x1174
	.uleb128 0x1a
	.string	"WdgM_Prv_UpdateAliveSupervisionDyn_v_Inl"
	.byte	0x2
	.uahalf	0x465
	.byte	0x1
	.byte	0x3
	.uleb128 0x1b
	.string	"WdgM_Prv_ComplementSeId_to_Inl"
	.byte	0x3
	.uahalf	0x17a
	.byte	0x1
	.uaword	0x2ec
	.byte	0x3
	.uaword	0x12a9
	.uleb128 0x1c
	.uaword	.LASF7
	.byte	0x3
	.uahalf	0x17a
	.uaword	0x2ec
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.string	"WdgM_DeInit"
	.byte	0x1
	.byte	0xe9
	.byte	0x1
	.uaword	.LFB26
	.uaword	.LFE26
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x12ea
	.uleb128 0x1e
	.uaword	.LVL0
	.byte	0x1
	.uaword	0x20de
	.uleb128 0x1f
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x40
	.uleb128 0x1f
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x31
	.uleb128 0x1f
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1f
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3d
	.byte	0
	.byte	0
	.uleb128 0x1b
	.string	"WdgM_Prv_LogicalSupervisionCheckpointReached_v_Inl"
	.byte	0x2
	.uahalf	0x347
	.byte	0x1
	.uaword	0x2b1
	.byte	0x3
	.uaword	0x13cb
	.uleb128 0x1c
	.uaword	.LASF7
	.byte	0x2
	.uahalf	0x347
	.uaword	0x2ec
	.uleb128 0x1c
	.uaword	.LASF8
	.byte	0x2
	.uahalf	0x348
	.uaword	0x2ce
	.uleb128 0x20
	.string	"cntrDestCPs"
	.byte	0x2
	.uahalf	0x34a
	.uaword	0x215
	.uleb128 0x20
	.string	"idxStartDestCPs"
	.byte	0x2
	.uahalf	0x34b
	.uaword	0x215
	.uleb128 0x20
	.string	"idxCPProperty_givenCP"
	.byte	0x2
	.uahalf	0x34c
	.uaword	0x215
	.uleb128 0x20
	.string	"InternalGraphIdx"
	.byte	0x2
	.uahalf	0x34d
	.uaword	0x215
	.uleb128 0x21
	.uaword	.LASF5
	.byte	0x2
	.uahalf	0x34e
	.uaword	0x105e
	.uleb128 0x21
	.uaword	.LASF6
	.byte	0x2
	.uahalf	0x34f
	.uaword	0x215
	.uleb128 0x21
	.uaword	.LASF9
	.byte	0x2
	.uahalf	0x350
	.uaword	0x2b1
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.string	"WdgM_CheckpointReached"
	.byte	0x1
	.uahalf	0x12f
	.byte	0x1
	.uaword	0x2b1
	.uaword	.LFB27
	.uaword	.LFE27
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1561
	.uleb128 0x23
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x12f
	.uaword	0x2ec
	.uaword	.LLST0
	.uleb128 0x23
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x130
	.uaword	0x2ce
	.uaword	.LLST1
	.uleb128 0x24
	.string	"SvIdx"
	.byte	0x1
	.uahalf	0x132
	.uaword	0x215
	.uaword	.LLST2
	.uleb128 0x25
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x133
	.uaword	0x2b1
	.uaword	.LLST3
	.uleb128 0x20
	.string	"LogicalReturnStatus"
	.byte	0x1
	.uahalf	0x13a
	.uaword	0x2b1
	.uleb128 0x26
	.uaword	0x12ea
	.uaword	.LBB8
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.uahalf	0x181
	.uaword	0x14dc
	.uleb128 0x27
	.uaword	0x1337
	.uaword	.LLST4
	.uleb128 0x28
	.uaword	0x132b
	.uleb128 0x29
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x2a
	.uaword	0x1343
	.uaword	.LLST5
	.uleb128 0x2a
	.uaword	0x1357
	.uaword	.LLST6
	.uleb128 0x2a
	.uaword	0x136f
	.uaword	.LLST7
	.uleb128 0x2b
	.uaword	0x138d
	.uleb128 0x2a
	.uaword	0x13a6
	.uaword	.LLST8
	.uleb128 0x2a
	.uaword	0x13b2
	.uaword	.LLST9
	.uleb128 0x2a
	.uaword	0x13be
	.uaword	.LLST10
	.uleb128 0x2c
	.uaword	.LVL36
	.uaword	0x20de
	.uleb128 0x1f
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x49
	.uleb128 0x1f
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x3e
	.uleb128 0x1f
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1f
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3d
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uaword	.LVL22
	.uaword	0x20de
	.uaword	0x14fe
	.uleb128 0x1f
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x49
	.uleb128 0x1f
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x3e
	.uleb128 0x1f
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1f
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3d
	.byte	0
	.uleb128 0x2d
	.uaword	.LVL27
	.uaword	0x20de
	.uaword	0x1520
	.uleb128 0x1f
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x43
	.uleb128 0x1f
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x3e
	.uleb128 0x1f
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1f
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3d
	.byte	0
	.uleb128 0x2d
	.uaword	.LVL30
	.uaword	0x20de
	.uaword	0x1542
	.uleb128 0x1f
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x46
	.uleb128 0x1f
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x3e
	.uleb128 0x1f
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1f
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3d
	.byte	0
	.uleb128 0x2c
	.uaword	.LVL33
	.uaword	0x20de
	.uleb128 0x1f
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x40
	.uleb128 0x1f
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x3e
	.uleb128 0x1f
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1f
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3d
	.byte	0
	.byte	0
	.uleb128 0x2e
	.string	"WdgM_Prv_UpdateTriggerDyn_v_Inl"
	.byte	0x2
	.uahalf	0x514
	.byte	0x1
	.byte	0x3
	.uaword	0x15c7
	.uleb128 0x2f
	.string	"Mode"
	.byte	0x2
	.uahalf	0x514
	.uaword	0x310
	.uleb128 0x1c
	.uaword	.LASF9
	.byte	0x2
	.uahalf	0x514
	.uaword	0x15c7
	.uleb128 0x20
	.string	"triggerIdx_u8"
	.byte	0x2
	.uahalf	0x516
	.uaword	0x208
	.uleb128 0x21
	.uaword	.LASF10
	.byte	0x2
	.uahalf	0x517
	.uaword	0xeba
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2b1
	.uleb128 0x2e
	.string	"WdgM_Prv_UpdateSupervisedEntityDyn_v_Inl"
	.byte	0x2
	.uahalf	0x538
	.byte	0x1
	.byte	0x3
	.uaword	0x166d
	.uleb128 0x2f
	.string	"Mode"
	.byte	0x2
	.uahalf	0x538
	.uaword	0x310
	.uleb128 0x20
	.string	"ctr"
	.byte	0x2
	.uahalf	0x53a
	.uaword	0x215
	.uleb128 0x20
	.string	"grpIdx"
	.byte	0x2
	.uahalf	0x53c
	.uaword	0x215
	.uleb128 0x21
	.uaword	.LASF7
	.byte	0x2
	.uahalf	0x53e
	.uaword	0x2ec
	.uleb128 0x20
	.string	"LspIdx"
	.byte	0x2
	.uahalf	0x53f
	.uaword	0x2ec
	.uleb128 0x21
	.uaword	.LASF11
	.byte	0x2
	.uahalf	0x540
	.uaword	0xe99
	.uleb128 0x20
	.string	"LocalStatusParamsPtr"
	.byte	0x2
	.uahalf	0x541
	.uaword	0xeaf
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.string	"WdgM_SetMode"
	.byte	0x1
	.uahalf	0x1b4
	.byte	0x1
	.uaword	0x2b1
	.uaword	.LFB28
	.uaword	.LFE28
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1819
	.uleb128 0x30
	.string	"Mode"
	.byte	0x1
	.uahalf	0x1b4
	.uaword	0x310
	.uaword	.LLST11
	.uleb128 0x24
	.string	"ctr"
	.byte	0x1
	.uahalf	0x1ba
	.uaword	0x208
	.uaword	.LLST12
	.uleb128 0x25
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x1bb
	.uaword	0xeba
	.uaword	.LLST13
	.uleb128 0x25
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x1be
	.uaword	0x2b1
	.uaword	.LLST14
	.uleb128 0x31
	.uaword	0x1561
	.uaword	.LBB26
	.uaword	.LBE26
	.byte	0x1
	.uahalf	0x1eb
	.uaword	0x1722
	.uleb128 0x28
	.uaword	0x1598
	.uleb128 0x28
	.uaword	0x158b
	.uleb128 0x32
	.uaword	.LBB27
	.uaword	.LBE27
	.uleb128 0x2a
	.uaword	0x15a4
	.uaword	.LLST15
	.uleb128 0x2a
	.uaword	0x15ba
	.uaword	.LLST16
	.uleb128 0x33
	.uaword	.LVL56
	.uaword	0x2111
	.uleb128 0x33
	.uaword	.LVL61
	.uaword	0x2139
	.byte	0
	.byte	0
	.uleb128 0x34
	.uaword	0x1240
	.uaword	.LBB28
	.uaword	.Ldebug_ranges0+0x38
	.byte	0x1
	.uahalf	0x1f9
	.uleb128 0x26
	.uaword	0x15cd
	.uaword	.LBB31
	.uaword	.Ldebug_ranges0+0x50
	.byte	0x1
	.uahalf	0x206
	.uaword	0x178a
	.uleb128 0x35
	.uaword	0x1600
	.byte	0x1
	.byte	0x58
	.uleb128 0x29
	.uaword	.Ldebug_ranges0+0x50
	.uleb128 0x2a
	.uaword	0x160d
	.uaword	.LLST17
	.uleb128 0x2a
	.uaword	0x1619
	.uaword	.LLST18
	.uleb128 0x2a
	.uaword	0x1628
	.uaword	.LLST19
	.uleb128 0x2a
	.uaword	0x1634
	.uaword	.LLST20
	.uleb128 0x2a
	.uaword	0x1643
	.uaword	.LLST21
	.uleb128 0x2a
	.uaword	0x164f
	.uaword	.LLST22
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uaword	.LVL48
	.uaword	0x20de
	.uaword	0x17ac
	.uleb128 0x1f
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x45
	.uleb128 0x1f
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x33
	.uleb128 0x1f
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1f
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3d
	.byte	0
	.uleb128 0x2d
	.uaword	.LVL49
	.uaword	0x20de
	.uaword	0x17ce
	.uleb128 0x1f
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x42
	.uleb128 0x1f
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x33
	.uleb128 0x1f
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1f
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3d
	.byte	0
	.uleb128 0x2d
	.uaword	.LVL50
	.uaword	0x20de
	.uaword	0x17f0
	.uleb128 0x1f
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x40
	.uleb128 0x1f
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x33
	.uleb128 0x1f
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1f
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3d
	.byte	0
	.uleb128 0x33
	.uaword	.LVL83
	.uaword	0x2159
	.uleb128 0x2c
	.uaword	.LVL89
	.uaword	0x20de
	.uleb128 0x1f
	.byte	0x1
	.byte	0x57
	.byte	0x2
	.byte	0x9
	.byte	0x81
	.uleb128 0x1f
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x33
	.uleb128 0x1f
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1f
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3d
	.byte	0
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.string	"WdgM_Init"
	.byte	0x1
	.byte	0x36
	.byte	0x1
	.uaword	.LFB25
	.uaword	.LFE25
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x190f
	.uleb128 0x36
	.string	"ConfigPtr"
	.byte	0x1
	.byte	0x36
	.uaword	0x190f
	.uaword	.LLST23
	.uleb128 0x37
	.string	"TriggerIdx"
	.byte	0x1
	.byte	0x39
	.uaword	0x208
	.uaword	.LLST24
	.uleb128 0x38
	.uaword	.LASF10
	.byte	0x1
	.byte	0x3a
	.uaword	0xeba
	.uaword	.LLST25
	.uleb128 0x38
	.uaword	.LASF7
	.byte	0x1
	.byte	0x3c
	.uaword	0x2ec
	.uaword	.LLST26
	.uleb128 0x38
	.uaword	.LASF9
	.byte	0x1
	.byte	0x40
	.uaword	0x2b1
	.uaword	.LLST27
	.uleb128 0x39
	.string	"PortHandle"
	.byte	0x1
	.byte	0x42
	.uaword	0x120e
	.uleb128 0x37
	.string	"grpIdx"
	.byte	0x1
	.byte	0x45
	.uaword	0x208
	.uaword	.LLST28
	.uleb128 0x3a
	.uaword	.LVL101
	.uaword	0x18c3
	.uleb128 0x1f
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x34
	.byte	0
	.uleb128 0x33
	.uaword	.LVL102
	.uaword	0x166d
	.uleb128 0x3b
	.uaword	.LVL104
	.byte	0x1
	.uaword	0x20de
	.uaword	0x18ef
	.uleb128 0x1f
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x4a
	.uleb128 0x1f
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x30
	.uleb128 0x1f
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1f
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3d
	.byte	0
	.uleb128 0x1e
	.uaword	.LVL105
	.byte	0x1
	.uaword	0x20de
	.uleb128 0x1f
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x45
	.uleb128 0x1f
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x30
	.uleb128 0x1f
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1f
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3d
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x1915
	.uleb128 0xa
	.uaword	0xfd0
	.uleb128 0x22
	.byte	0x1
	.string	"WdgM_GetMode"
	.byte	0x1
	.uahalf	0x242
	.byte	0x1
	.uaword	0x2b1
	.uaword	.LFB29
	.uaword	.LFE29
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1993
	.uleb128 0x30
	.string	"Mode"
	.byte	0x1
	.uahalf	0x242
	.uaword	0x1993
	.uaword	.LLST29
	.uleb128 0x2d
	.uaword	.LVL107
	.uaword	0x20de
	.uaword	0x1974
	.uleb128 0x1f
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x40
	.uleb128 0x1f
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x3b
	.uleb128 0x1f
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1f
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3d
	.byte	0
	.uleb128 0x2c
	.uaword	.LVL109
	.uaword	0x20de
	.uleb128 0x1f
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x44
	.uleb128 0x1f
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x3b
	.uleb128 0x1f
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1f
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3d
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x310
	.uleb128 0x22
	.byte	0x1
	.string	"WdgM_GetLocalStatus"
	.byte	0x1
	.uahalf	0x263
	.byte	0x1
	.uaword	0x2b1
	.uaword	.LFB30
	.uaword	.LFE30
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1a4d
	.uleb128 0x23
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x263
	.uaword	0x2ec
	.uaword	.LLST30
	.uleb128 0x30
	.string	"Status"
	.byte	0x1
	.uahalf	0x264
	.uaword	0x1a4d
	.uaword	.LLST31
	.uleb128 0x2d
	.uaword	.LVL112
	.uaword	0x20de
	.uaword	0x1a0c
	.uleb128 0x1f
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x43
	.uleb128 0x1f
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x3c
	.uleb128 0x1f
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1f
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3d
	.byte	0
	.uleb128 0x2d
	.uaword	.LVL115
	.uaword	0x20de
	.uaword	0x1a2e
	.uleb128 0x1f
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x40
	.uleb128 0x1f
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x3c
	.uleb128 0x1f
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1f
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3d
	.byte	0
	.uleb128 0x2c
	.uaword	.LVL118
	.uaword	0x20de
	.uleb128 0x1f
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x44
	.uleb128 0x1f
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x3c
	.uleb128 0x1f
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1f
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3d
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x344
	.uleb128 0x22
	.byte	0x1
	.string	"WdgM_GetGlobalStatus"
	.byte	0x1
	.uahalf	0x290
	.byte	0x1
	.uaword	0x2b1
	.uaword	.LFB31
	.uaword	.LFE31
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1ad6
	.uleb128 0x30
	.string	"Status"
	.byte	0x1
	.uahalf	0x290
	.uaword	0x1ad6
	.uaword	.LLST32
	.uleb128 0x2d
	.uaword	.LVL120
	.uaword	0x20de
	.uaword	0x1ab7
	.uleb128 0x1f
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x40
	.uleb128 0x1f
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x3d
	.uleb128 0x1f
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1f
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3d
	.byte	0
	.uleb128 0x2c
	.uaword	.LVL122
	.uaword	0x20de
	.uleb128 0x1f
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x44
	.uleb128 0x1f
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x3d
	.uleb128 0x1f
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1f
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3d
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x326
	.uleb128 0x3c
	.byte	0x1
	.string	"WdgM_PerformReset"
	.byte	0x1
	.uahalf	0x2b0
	.byte	0x1
	.uaword	.LFB32
	.uaword	.LFE32
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1b38
	.uleb128 0x3b
	.uaword	.LVL123
	.byte	0x1
	.uaword	0x2193
	.uaword	0x1b18
	.uleb128 0x1f
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x34
	.byte	0
	.uleb128 0x1e
	.uaword	.LVL124
	.byte	0x1
	.uaword	0x20de
	.uleb128 0x1f
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x40
	.uleb128 0x1f
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x3f
	.uleb128 0x1f
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1f
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3d
	.byte	0
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.string	"WdgM_GetFirstExpiredSEID"
	.byte	0x1
	.uahalf	0x2d5
	.byte	0x1
	.uaword	0x2b1
	.uaword	.LFB33
	.uaword	.LFE33
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1bef
	.uleb128 0x23
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x2d5
	.uaword	0x1bef
	.uaword	.LLST33
	.uleb128 0x25
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x2d7
	.uaword	0x2b1
	.uaword	.LLST34
	.uleb128 0x20
	.string	"FirstExpiredSupervisedEntityIdTemp"
	.byte	0x1
	.uahalf	0x2d8
	.uaword	0x2ec
	.uleb128 0x31
	.uaword	0x126f
	.uaword	.LBB38
	.uaword	.LBE38
	.byte	0x1
	.uahalf	0x2e7
	.uaword	0x1bd0
	.uleb128 0x28
	.uaword	0x129c
	.byte	0
	.uleb128 0x2c
	.uaword	.LVL131
	.uaword	0x20de
	.uleb128 0x1f
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x44
	.uleb128 0x1f
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x40
	.uleb128 0x1f
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1f
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3d
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2ec
	.uleb128 0x2e
	.string	"WdgM_Prv_AliveSupervisionMainFunction_v_Inl"
	.byte	0x2
	.uahalf	0x120
	.byte	0x1
	.byte	0x3
	.uaword	0x1c76
	.uleb128 0x21
	.uaword	.LASF7
	.byte	0x2
	.uahalf	0x122
	.uaword	0x2ec
	.uleb128 0x21
	.uaword	.LASF3
	.byte	0x2
	.uahalf	0x123
	.uaword	0x215
	.uleb128 0x21
	.uaword	.LASF11
	.byte	0x2
	.uahalf	0x124
	.uaword	0xe99
	.uleb128 0x20
	.string	"IndividualAliveUpdateCtrCache"
	.byte	0x2
	.uahalf	0x125
	.uaword	0x234
	.byte	0
	.uleb128 0x3c
	.byte	0x1
	.string	"WdgM_MainFunction"
	.byte	0x1
	.uahalf	0x303
	.byte	0x1
	.uaword	.LFB34
	.uaword	.LFE34
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1e01
	.uleb128 0x25
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x305
	.uaword	0x2ec
	.uaword	.LLST35
	.uleb128 0x24
	.string	"NewGlobalStatus"
	.byte	0x1
	.uahalf	0x306
	.uaword	0x326
	.uaword	.LLST36
	.uleb128 0x24
	.string	"GlobalStatusCached"
	.byte	0x1
	.uahalf	0x30b
	.uaword	0x326
	.uaword	.LLST37
	.uleb128 0x26
	.uaword	0x1bf5
	.uaword	.LBB42
	.uaword	.Ldebug_ranges0+0x70
	.byte	0x1
	.uahalf	0x326
	.uaword	0x1d28
	.uleb128 0x29
	.uaword	.Ldebug_ranges0+0x70
	.uleb128 0x2a
	.uaword	0x1c2b
	.uaword	.LLST38
	.uleb128 0x2a
	.uaword	0x1c37
	.uaword	.LLST39
	.uleb128 0x2a
	.uaword	0x1c43
	.uaword	.LLST40
	.uleb128 0x2a
	.uaword	0x1c4f
	.uaword	.LLST41
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uaword	.LVL148
	.uaword	0x2193
	.uaword	0x1d3c
	.uleb128 0x1f
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x33
	.uaword	.LVL150
	.uaword	0x21c0
	.uleb128 0x2d
	.uaword	.LVL159
	.uaword	0x2193
	.uaword	0x1d59
	.uleb128 0x1f
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.uaword	.LVL160
	.uaword	0x21e7
	.uaword	0x1d6c
	.uleb128 0x1f
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.uleb128 0x2d
	.uaword	.LVL161
	.uaword	0x21e7
	.uaword	0x1d7f
	.uleb128 0x1f
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x2d
	.uaword	.LVL162
	.uaword	0x2193
	.uaword	0x1d93
	.uleb128 0x1f
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.uaword	.LVL163
	.uaword	0x21e7
	.uaword	0x1da6
	.uleb128 0x1f
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2d
	.uaword	.LVL164
	.uaword	0x2193
	.uaword	0x1dba
	.uleb128 0x1f
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.uaword	.LVL165
	.uaword	0x21e7
	.uaword	0x1dcd
	.uleb128 0x1f
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2d
	.uaword	.LVL166
	.uaword	0x2193
	.uaword	0x1de1
	.uleb128 0x1f
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.uaword	.LVL171
	.byte	0x1
	.uaword	0x20de
	.uleb128 0x1f
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x40
	.uleb128 0x1f
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x38
	.uleb128 0x1f
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1f
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3d
	.byte	0
	.byte	0
	.uleb128 0x3d
	.string	"WdgM_GlobalStatus"
	.byte	0x1
	.byte	0x1b
	.uaword	0x326
	.byte	0x5
	.byte	0x3
	.uaword	WdgM_GlobalStatus
	.uleb128 0x3d
	.string	"WdgM_Prv_SetMode_GlobalStatus"
	.byte	0x1
	.byte	0x1d
	.uaword	0x326
	.byte	0x5
	.byte	0x3
	.uaword	WdgM_Prv_SetMode_GlobalStatus
	.uleb128 0x18
	.uaword	0x95b
	.uaword	0x1e5b
	.uleb128 0x19
	.uaword	0x1fc
	.byte	0x4
	.byte	0
	.uleb128 0x3e
	.string	"WdgM_SupervisedEntity"
	.byte	0x3
	.uahalf	0x143
	.uaword	0x1e7b
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.uaword	0x1e4b
	.uleb128 0x18
	.uaword	0x2ce
	.uaword	0x1e90
	.uleb128 0x19
	.uaword	0x1fc
	.byte	0x3
	.byte	0
	.uleb128 0x3e
	.string	"WdgM_InternalGraph_DestCheckpoints"
	.byte	0x3
	.uahalf	0x145
	.uaword	0x1ebd
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.uaword	0x1e80
	.uleb128 0x18
	.uaword	0x10e0
	.uaword	0x1ed2
	.uleb128 0x19
	.uaword	0x1fc
	.byte	0x4
	.byte	0
	.uleb128 0x3e
	.string	"WdgM_InternalGraph_CPProperty"
	.byte	0x3
	.uahalf	0x146
	.uaword	0x1efa
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.uaword	0x1ec2
	.uleb128 0x3e
	.string	"WdgM_Config"
	.byte	0x3
	.uahalf	0x15a
	.uaword	0x1915
	.byte	0x1
	.byte	0x1
	.uleb128 0x18
	.uaword	0x83d
	.uaword	0x1f25
	.uleb128 0x19
	.uaword	0x1fc
	.byte	0x4
	.byte	0
	.uleb128 0x3e
	.string	"WdgM_SupervisedEntityDyn"
	.byte	0x3
	.uahalf	0x16a
	.uaword	0x1f15
	.byte	0x1
	.byte	0x1
	.uleb128 0x18
	.uaword	0x114e
	.uaword	0x1f58
	.uleb128 0x19
	.uaword	0x1fc
	.byte	0
	.byte	0
	.uleb128 0x3e
	.string	"WdgM_InternalGraph_StatusDyn"
	.byte	0x3
	.uahalf	0x16b
	.uaword	0x1f48
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"Rte_ModeCurrent_6"
	.byte	0xb
	.byte	0x30
	.uaword	0x208
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"Rte_Inst_WdgM"
	.byte	0x9
	.byte	0x6d
	.uaword	0x389
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"WdgM_ConfigSetPtr"
	.byte	0x2
	.byte	0x6b
	.uaword	0x190f
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"WdgM_AliveSupervisionActive"
	.byte	0x2
	.byte	0x73
	.uaword	0x26f
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"WdgM_Mode"
	.byte	0x2
	.byte	0x7b
	.uaword	0x208
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"WdgM_ExpiredSupervisionCycleCtr"
	.byte	0x2
	.byte	0x83
	.uaword	0x215
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"WdgM_MainFunction_Cnt_u32"
	.byte	0x2
	.byte	0x8c
	.uaword	0x234
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"WdgM_FirstExpiredSupervisedEntityId"
	.byte	0x2
	.byte	0xa8
	.uaword	0x2ec
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"WdgM_FirstExpiredSupervisedEntityId_Comp"
	.byte	0x2
	.byte	0xa9
	.uaword	0x2ec
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"WdgM_Prv_Rte_Switch_globalMode_Status"
	.byte	0x2
	.byte	0xbd
	.uaword	0x2b1
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.byte	0x1
	.string	"Det_ReportError"
	.byte	0xc
	.byte	0x70
	.byte	0x1
	.uaword	0x2b1
	.byte	0x1
	.uaword	0x2111
	.uleb128 0x9
	.uaword	0x215
	.uleb128 0x9
	.uaword	0x208
	.uleb128 0x9
	.uaword	0x208
	.uleb128 0x9
	.uaword	0x208
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.string	"Wdg_SetTriggerCondition"
	.byte	0xd
	.byte	0x3b
	.byte	0x1
	.byte	0x1
	.uaword	0x2139
	.uleb128 0x9
	.uaword	0x215
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.string	"Wdg_SetMode"
	.byte	0xd
	.byte	0x3a
	.byte	0x1
	.uaword	0x2b1
	.byte	0x1
	.uaword	0x2159
	.uleb128 0x9
	.uaword	0x6ca
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.string	"SchM_Switch_WdgM_WdgMSupervisionCycle"
	.byte	0xb
	.byte	0x2b
	.byte	0x1
	.uaword	0x2b1
	.byte	0x1
	.uaword	0x2193
	.uleb128 0x9
	.uaword	0x208
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.string	"WdgM_Prv_SetTriggerCondition"
	.byte	0x2
	.byte	0xcb
	.byte	0x1
	.byte	0x1
	.uaword	0x21c0
	.uleb128 0x9
	.uaword	0x326
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.string	"WdgM_Prv_LocalStatusMainFunction"
	.byte	0x2
	.byte	0xcc
	.byte	0x1
	.byte	0x1
	.uleb128 0x43
	.byte	0x1
	.string	"Rte_Switch_WdgM_globalMode_currentMode"
	.byte	0x9
	.byte	0x82
	.byte	0x1
	.uaword	0x2b1
	.byte	0x1
	.uleb128 0x9
	.uaword	0x208
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x6
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x34
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
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
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
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3b
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x42
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL1
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL4
	.uaword	.LVL20
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL21
	.uaword	.LVL25
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL26
	.uaword	.LVL28
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL28
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL29
	.uaword	.LVL31
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL31
	.uaword	.LVL32
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL32
	.uaword	.LFE27
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL2
	.uaword	.LVL20
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL21
	.uaword	.LVL25
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL26
	.uaword	.LVL28
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL28
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL29
	.uaword	.LVL31
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL31
	.uaword	.LVL32
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL32
	.uaword	.LFE27
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL3
	.uaword	.LVL6
	.uahalf	0x2
	.byte	0x8f
	.sleb128 8
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x7
	.byte	0x8d
	.sleb128 0
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x8
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x2
	.byte	0x8f
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL1
	.uaword	.LVL5
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL20
	.uaword	.LVL22
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL24
	.uaword	.LVL27
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL27
	.uaword	.LVL28
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL28
	.uaword	.LVL30
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL31
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
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL5
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL13
	.uaword	.LVL16
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL37
	.uaword	.LVL38
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x2
	.byte	0x82
	.sleb128 4
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x6
	.byte	0x78
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL12
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x51
	.uaword	.LVL35
	.uaword	.LVL36-1
	.uahalf	0x1
	.byte	0x51
	.uaword	.LVL36-1
	.uaword	.LVL37
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL37
	.uaword	.LFE27
	.uahalf	0x1
	.byte	0x51
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x2
	.byte	0x82
	.sleb128 2
	.uaword	.LVL14
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL37
	.uaword	.LVL39
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL40
	.uaword	.LFE27
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL5
	.uaword	.LVL20
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL35
	.uaword	.LVL36
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL36
	.uaword	.LVL37
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL37
	.uaword	.LFE27
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL41
	.uaword	.LVL42
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL42
	.uaword	.LFE28
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL43
	.uaword	.LVL44
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL44
	.uaword	.LVL45
	.uahalf	0x3
	.byte	0x72
	.sleb128 0
	.byte	0x9f
	.uaword	.LVL45
	.uaword	.LVL46
	.uahalf	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL46
	.uaword	.LVL47
	.uahalf	0x3
	.byte	0x72
	.sleb128 0
	.byte	0x9f
	.uaword	.LVL51
	.uaword	.LVL52
	.uahalf	0x3
	.byte	0x72
	.sleb128 0
	.byte	0x9f
	.uaword	.LVL63
	.uaword	.LVL64
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL43
	.uaword	.LVL48-1
	.uahalf	0x1
	.byte	0x63
	.uaword	.LVL51
	.uaword	.LVL52
	.uahalf	0x1
	.byte	0x63
	.uaword	.LVL63
	.uaword	.LVL64
	.uahalf	0x1
	.byte	0x63
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL41
	.uaword	.LVL57
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL57
	.uaword	.LVL61
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL61
	.uaword	.LVL63
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL63
	.uaword	.LVL64
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL65
	.uaword	.LFE28
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL52
	.uaword	.LVL53
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL53
	.uaword	.LVL54
	.uahalf	0x3
	.byte	0x7b
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL55
	.uaword	.LVL57
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL57
	.uaword	.LVL58
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL58
	.uaword	.LVL59
	.uahalf	0x3
	.byte	0x7a
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL60
	.uaword	.LVL62
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL62
	.uaword	.LVL63
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL57
	.uaword	.LVL63
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL75
	.uaword	.LVL76
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL76
	.uaword	.LVL78
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL78
	.uaword	.LVL79
	.uahalf	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL79
	.uaword	.LVL80
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL86
	.uaword	.LVL87
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL87
	.uaword	.LVL88
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL67
	.uaword	.LVL68
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL69
	.uaword	.LVL81
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL81
	.uaword	.LVL82
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL84
	.uaword	.LVL88
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL69
	.uaword	.LVL70
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL70
	.uaword	.LVL72
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL72
	.uaword	.LVL73
	.uahalf	0x3
	.byte	0x75
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL73
	.uaword	.LVL74
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL84
	.uaword	.LVL85
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL66
	.uaword	.LVL83-1
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL83-1
	.uaword	.LVL84
	.uahalf	0x3
	.byte	0x8d
	.sleb128 -10
	.byte	0x9f
	.uaword	.LVL84
	.uaword	.LVL88
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL88
	.uaword	.LFE28
	.uahalf	0x3
	.byte	0x8d
	.sleb128 -10
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL67
	.uaword	.LVL83-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL84
	.uaword	.LVL88
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL90
	.uaword	.LVL97
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL97
	.uaword	.LVL103
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL103
	.uaword	.LVL104-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL104-1
	.uaword	.LVL104
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL104
	.uaword	.LVL105-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL105-1
	.uaword	.LFE25
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL91
	.uaword	.LVL93
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL93
	.uaword	.LVL94
	.uahalf	0x3
	.byte	0x7f
	.sleb128 0
	.byte	0x9f
	.uaword	.LVL94
	.uaword	.LVL95
	.uahalf	0x3
	.byte	0x7f
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL95
	.uaword	.LVL96
	.uahalf	0x3
	.byte	0x7f
	.sleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL91
	.uaword	.LVL92
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL92
	.uaword	.LVL97
	.uahalf	0x2
	.byte	0x82
	.sleb128 28
	.uaword	.LVL104
	.uaword	.LVL105-1
	.uahalf	0x2
	.byte	0x82
	.sleb128 28
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL97
	.uaword	.LVL100
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL100
	.uaword	.LVL101
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL102
	.uaword	.LVL103
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL105
	.uaword	.LFE25
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL98
	.uaword	.LVL99
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL99
	.uaword	.LVL103
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL105
	.uaword	.LFE25
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL106
	.uaword	.LVL107-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL107-1
	.uaword	.LVL108
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL108
	.uaword	.LVL109-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL109-1
	.uaword	.LFE29
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL110
	.uaword	.LVL111
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL111
	.uaword	.LVL113
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL113
	.uaword	.LVL114
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL114
	.uaword	.LVL116
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL116
	.uaword	.LVL117
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL117
	.uaword	.LFE30
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL110
	.uaword	.LVL112-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL112-1
	.uaword	.LVL113
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL113
	.uaword	.LVL115-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL115-1
	.uaword	.LVL116
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL116
	.uaword	.LVL118-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL118-1
	.uaword	.LFE30
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL119
	.uaword	.LVL120-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL120-1
	.uaword	.LVL121
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL121
	.uaword	.LVL122-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL122-1
	.uaword	.LFE31
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL125
	.uaword	.LVL131-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL131-1
	.uaword	.LFE33
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL125
	.uaword	.LVL129
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL129
	.uaword	.LVL130
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL130
	.uaword	.LFE33
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL150
	.uaword	.LVL151
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL151
	.uaword	.LVL152
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL152
	.uaword	.LVL153
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL153
	.uaword	.LVL154
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL154
	.uaword	.LVL155
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL155
	.uaword	.LVL156
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL132
	.uaword	.LVL146
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL146
	.uaword	.LVL147
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL149
	.uaword	.LVL150
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL150
	.uaword	.LVL151
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL151
	.uaword	.LVL156
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL157
	.uaword	.LVL158
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL167
	.uaword	.LVL168
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL168
	.uaword	.LVL169
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL169
	.uaword	.LVL171
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL171
	.uaword	.LVL172
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL172
	.uaword	.LFE34
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL133
	.uaword	.LVL147
	.uahalf	0x5
	.byte	0x3
	.uaword	WdgM_GlobalStatus
	.uaword	.LVL147
	.uaword	.LVL149
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL149
	.uaword	.LVL150-1
	.uahalf	0x5
	.byte	0x3
	.uaword	WdgM_GlobalStatus
	.uaword	.LVL150-1
	.uaword	.LVL157
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL157
	.uaword	.LVL158
	.uahalf	0x5
	.byte	0x3
	.uaword	WdgM_GlobalStatus
	.uaword	.LVL158
	.uaword	.LVL167
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL167
	.uaword	.LVL170
	.uahalf	0x5
	.byte	0x3
	.uaword	WdgM_GlobalStatus
	.uaword	.LVL171
	.uaword	.LVL172
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL172
	.uaword	.LFE34
	.uahalf	0x5
	.byte	0x3
	.uaword	WdgM_GlobalStatus
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL136
	.uaword	.LVL137
	.uahalf	0x2
	.byte	0x82
	.sleb128 5
	.uaword	.LVL141
	.uaword	.LVL142
	.uahalf	0x2
	.byte	0x73
	.sleb128 5
	.uaword	.LVL142
	.uaword	.LVL143
	.uahalf	0x2
	.byte	0x82
	.sleb128 5
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL135
	.uaword	.LVL136
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL136
	.uaword	.LVL138
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL138
	.uaword	.LVL139
	.uahalf	0x3
	.byte	0x76
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL140
	.uaword	.LVL145
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL169
	.uaword	.LVL170
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL172
	.uaword	.LFE34
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL135
	.uaword	.LVL145
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL149
	.uaword	.LVL150-1
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL169
	.uaword	.LVL170
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL172
	.uaword	.LFE34
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL134
	.uaword	.LVL136
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL144
	.uaword	.LVL145
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL169
	.uaword	.LVL170
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL172
	.uaword	.LFE34
	.uahalf	0x1
	.byte	0x5b
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
	.uaword	.LFB26
	.uaword	.LFE26-.LFB26
	.uaword	.LFB27
	.uaword	.LFE27-.LFB27
	.uaword	.LFB28
	.uaword	.LFE28-.LFB28
	.uaword	.LFB25
	.uaword	.LFE25-.LFB25
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
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB8
	.uaword	.LBE8
	.uaword	.LBB15
	.uaword	.LBE15
	.uaword	.LBB16
	.uaword	.LBE16
	.uaword	.LBB17
	.uaword	.LBE17
	.uaword	.LBB18
	.uaword	.LBE18
	.uaword	.LBB19
	.uaword	.LBE19
	.uaword	0
	.uaword	0
	.uaword	.LBB28
	.uaword	.LBE28
	.uaword	.LBB35
	.uaword	.LBE35
	.uaword	0
	.uaword	0
	.uaword	.LBB31
	.uaword	.LBE31
	.uaword	.LBB36
	.uaword	.LBE36
	.uaword	.LBB37
	.uaword	.LBE37
	.uaword	0
	.uaword	0
	.uaword	.LBB42
	.uaword	.LBE42
	.uaword	.LBB47
	.uaword	.LBE47
	.uaword	.LBB48
	.uaword	.LBE48
	.uaword	.LBB49
	.uaword	.LBE49
	.uaword	0
	.uaword	0
	.uaword	.LFB26
	.uaword	.LFE26
	.uaword	.LFB27
	.uaword	.LFE27
	.uaword	.LFB28
	.uaword	.LFE28
	.uaword	.LFB25
	.uaword	.LFE25
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
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF6:
	.string	"nrDestCheckpoints"
.LASF7:
	.string	"SEID"
.LASF1:
	.string	"PtrToDeadlineIndices"
.LASF8:
	.string	"CheckpointID"
.LASF5:
	.string	"posnInGraph_en"
.LASF11:
	.string	"AliveSupervisionPtr"
.LASF9:
	.string	"ReturnStatus"
.LASF10:
	.string	"TriggerPtr"
.LASF0:
	.string	"NoOfDeadlineSupervision"
.LASF2:
	.string	"FailedAliveSupervisionRefCycleTol"
.LASF4:
	.string	"SupervisedEntityId"
.LASF3:
	.string	"AliveSupervisionIdx"
	.extern	Rte_Switch_WdgM_globalMode_currentMode,STT_FUNC,0
	.extern	WdgM_Prv_LocalStatusMainFunction,STT_FUNC,0
	.extern	WdgM_Prv_Rte_Switch_globalMode_Status,STT_OBJECT,1
	.extern	WdgM_Prv_SetTriggerCondition,STT_FUNC,0
	.extern	WdgM_ExpiredSupervisionCycleCtr,STT_OBJECT,2
	.extern	WdgM_FirstExpiredSupervisedEntityId_Comp,STT_OBJECT,1
	.extern	WdgM_FirstExpiredSupervisedEntityId,STT_OBJECT,1
	.extern	Rte_Inst_WdgM,STT_OBJECT,40
	.extern	WdgM_MainFunction_Cnt_u32,STT_OBJECT,4
	.extern	WdgM_Config,STT_OBJECT,24
	.extern	SchM_Switch_WdgM_WdgMSupervisionCycle,STT_FUNC,0
	.extern	Rte_ModeCurrent_6,STT_OBJECT,1
	.extern	WdgM_AliveSupervisionActive,STT_OBJECT,1
	.extern	Wdg_SetMode,STT_FUNC,0
	.extern	Wdg_SetTriggerCondition,STT_FUNC,0
	.extern	WdgM_InternalGraph_DestCheckpoints,STT_OBJECT,4
	.extern	WdgM_InternalGraph_StatusDyn,STT_OBJECT,2
	.extern	WdgM_InternalGraph_CPProperty,STT_OBJECT,40
	.extern	WdgM_Mode,STT_OBJECT,1
	.extern	WdgM_ConfigSetPtr,STT_OBJECT,4
	.extern	WdgM_SupervisedEntityDyn,STT_OBJECT,60
	.extern	WdgM_SupervisedEntity,STT_OBJECT,120
	.extern	Det_ReportError,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
