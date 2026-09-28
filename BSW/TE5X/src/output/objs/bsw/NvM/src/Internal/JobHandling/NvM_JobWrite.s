	.file	"NvM_JobWrite.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.NvM_Prv_JobWrite_DoCrypto,"ax",@progbits
	.align 1
	.type	NvM_Prv_JobWrite_DoCrypto, @function
NvM_Prv_JobWrite_DoCrypto:
.LFB187:
	.file 1 "bsw\\NvM\\src\\Internal\\JobHandling\\NvM_JobWrite.c"
	.loc 1 326 0
.LVL0:
	.loc 1 327 0
	mov	%d15, 0
	st.b	[%a5]0, %d15
	.loc 1 329 0
	ld.hu	%d15, [%a6] 6
.LVL1:
	.loc 1 326 0
	mov.aa	%a12, %a4
.LBB48:
.LBB49:
	.file 2 ".\\output\\inc/..\\..\\bsw\\NvM\\src\\Internal\\BlockData\\NvM_Prv_BlockDescriptor_Inl.h"
	.loc 2 77 0
	lt.u	%d2, %d15, 60
.LBE49:
.LBE48:
	.loc 1 326 0
	mov.aa	%a15, %a5
.LBB51:
.LBB50:
	.loc 2 77 0
	jz	%d2, .L5
	.loc 2 78 0
	movh.a	%a2, hi:NvM_Prv_BlockDescriptors_acst
	mov.d	%d3, %a2
	addi	%d2, %d3, lo:NvM_Prv_BlockDescriptors_acst
	madd	%d3, %d2, %d15, 52
	mov.a	%a2, %d3
	ld.w	%d15, [%a2] 48
	.loc 2 77 0
	jz.t	%d15, 15, .L5
.LBE50:
.LBE51:
	.loc 1 331 0
	mov	%d4, 1
	call	NvM_Prv_JobResource_DoStateMachine
.LVL2:
	.loc 1 334 0
	ld.bu	%d15, [%a15]0
	jz	%d15, .L5
	.loc 1 340 0
	jeq	%d15, 2, .L12
	ret
.L5:
	.loc 1 338 0
	mov	%d15, 9
	st.b	[%a12]0, %d15
	ret
.L12:
	.loc 1 344 0
	mov	%d15, 5
	st.b	[%a12]0, %d15
	ret
.LFE187:
	.size	NvM_Prv_JobWrite_DoCrypto, .-NvM_Prv_JobWrite_DoCrypto
.section .text.NvM_Prv_JobWrite_DoMemIf,"ax",@progbits
	.align 1
	.type	NvM_Prv_JobWrite_DoMemIf, @function
NvM_Prv_JobWrite_DoMemIf:
.LFB190:
	.loc 1 495 0
.LVL3:
	.loc 1 495 0
	mov.aa	%a15, %a5
	.loc 1 496 0
	mov	%d4, 0
	.loc 1 495 0
	mov.aa	%a12, %a4
	mov.aa	%a13, %a6
	.loc 1 496 0
	call	NvM_Prv_JobResource_DoStateMachine
.LVL4:
	.loc 1 498 0
	ld.bu	%d15, [%a15]0
	jnz	%d15, .L14
.LVL5:
.LBB56:
.LBB57:
	.loc 1 505 0
	ld.hu	%d4, [%a13] 6
.LVL6:
	.loc 1 501 0
	mov	%d15, 5
	st.b	[%a12]0, %d15
.LBB58:
.LBB59:
	.loc 2 77 0
	lt.u	%d15, %d4, 60
	jz	%d15, .L13
	.loc 2 78 0
	movh.a	%a2, hi:NvM_Prv_BlockDescriptors_acst
	mov.d	%d2, %a2
	addi	%d15, %d2, lo:NvM_Prv_BlockDescriptors_acst
	madd	%d2, %d15, %d4, 52
	mov.a	%a2, %d2
	ld.w	%d15, [%a2] 48
	.loc 2 77 0
	jz.t	%d15, 13, .L22
.LBE59:
.LBE58:
	.loc 1 507 0
	lea	%a4, [%a15] 16
	j	NvM_Prv_Crc_SetRamBlockCrc
.LVL7:
.L14:
.LBE57:
.LBE56:
	.loc 1 510 0
	jne	%d15, 1, .L23
.L13:
	ret
.L23:
	.loc 1 517 0
	mov	%d15, 2
	st.b	[%a15]0, %d15
	.loc 1 518 0
	mov	%d15, 5
	st.b	[%a12]0, %d15
	ret
.LVL8:
.L22:
	ret
.LFE190:
	.size	NvM_Prv_JobWrite_DoMemIf, .-NvM_Prv_JobWrite_DoMemIf
.section .text.NvM_Prv_JobWrite_CalcNvCrc,"ax",@progbits
	.align 1
	.type	NvM_Prv_JobWrite_CalcNvCrc, @function
NvM_Prv_JobWrite_CalcNvCrc:
.LFB189:
	.loc 1 438 0
.LVL9:
	.loc 1 439 0
	mov	%d15, 0
	st.b	[%a5]0, %d15
	.loc 1 441 0
	ld.hu	%d15, [%a6] 6
.LVL10:
	.loc 1 438 0
	mov.aa	%a3, %a4
.LBB66:
.LBB67:
	.loc 2 77 0
	ge.u	%d2, %d15, 60
.LBE67:
.LBE66:
	.loc 1 438 0
	mov.aa	%a15, %a5
.LBB69:
.LBB68:
	.loc 2 77 0
	jnz	%d2, .L25
	.loc 2 78 0
	movh.a	%a7, hi:NvM_Prv_BlockDescriptors_acst
	mov.d	%d3, %a7
	addi	%d2, %d3, lo:NvM_Prv_BlockDescriptors_acst
	madd	%d3, %d2, %d15, 52
	mov.a	%a7, %d3
	ld.w	%d15, [%a7] 48
	.loc 2 77 0
	jz.t	%d15, 14, .L25
	mov.aa	%a13, %a4
.LBE68:
.LBE69:
	.loc 1 444 0
	mov	%d15, 8
	.loc 1 443 0
	mov	%d4, 2
	mov.aa	%a12, %a6
	call	NvM_Prv_JobResource_DoStateMachine
.LVL11:
	.loc 1 444 0
	st.b	[%a13]0, %d15
	.loc 1 446 0
	ld.bu	%d15, [%a15]0
	jz	%d15, .L28
	ret
.LVL12:
.L25:
	.loc 1 468 0
	mov	%d15, 2
	st.b	[%a3]0, %d15
	ret
.LVL13:
.L28:
.LBB70:
.LBB71:
	.loc 1 453 0
	ld.a	%a4, [%a12] 20
	ld.a	%a5, [%a12] 24
	.loc 1 450 0
	mov	%d15, 2
	st.b	[%a13]0, %d15
	.loc 1 453 0
	ld.hu	%d4, [%a12] 6
	lea	%a6, [%a15] 12
	j	NvM_Prv_Crc_AppendCrc
.LVL14:
.LBE71:
.LBE70:
.LFE189:
	.size	NvM_Prv_JobWrite_CalcNvCrc, .-NvM_Prv_JobWrite_CalcNvCrc
.section .text.NvM_Prv_JobWrite_RecalcUserDataCrc,"ax",@progbits
	.align 1
	.type	NvM_Prv_JobWrite_RecalcUserDataCrc, @function
NvM_Prv_JobWrite_RecalcUserDataCrc:
.LFB186:
	.loc 1 233 0
.LVL15:
	.loc 1 234 0
	mov	%d15, 0
	st.b	[%a5]0, %d15
	.loc 1 236 0
	ld.hu	%d15, [%a6] 6
.LVL16:
	.loc 1 233 0
	mov.aa	%a3, %a4
.LBB83:
.LBB84:
	.loc 2 77 0
	ge.u	%d2, %d15, 60
.LBE84:
.LBE83:
	.loc 1 233 0
	mov.aa	%a15, %a5
.LBB86:
.LBB85:
	.loc 2 77 0
	jnz	%d2, .L30
	.loc 2 78 0
	movh	%d8, hi:NvM_Prv_BlockDescriptors_acst
	addi	%d8, %d8, lo:NvM_Prv_BlockDescriptors_acst
	madd	%d2, %d8, %d15, 52
	mov.a	%a7, %d2
	ld.w	%d15, [%a7] 48
	.loc 2 77 0
	jz.t	%d15, 13, .L30
	mov.aa	%a12, %a4
.LBE85:
.LBE86:
	.loc 1 243 0
	mov	%d15, 7
	.loc 1 242 0
	mov	%d4, 2
	mov.aa	%a13, %a6
	call	NvM_Prv_JobResource_DoStateMachine
.LVL17:
	.loc 1 243 0
	st.b	[%a12]0, %d15
	.loc 1 245 0
	ld.bu	%d15, [%a15]0
	jnz	%d15, .L42
.LVL18:
.LBB87:
.LBB88:
	.loc 1 258 0
	ld.hu	%d4, [%a13] 6
.LVL19:
.LBB89:
.LBB90:
	.file 3 ".\\output\\inc/..\\..\\bsw\\NvM\\src\\Internal\\BlockData\\NvM_Prv_BlockData_Inl.h"
	.loc 3 90 0
	movh.a	%a2, hi:NvM_Prv_stBlock_au8
	lea	%a2, [%a2] lo:NvM_Prv_stBlock_au8
	addsc.a	%a2, %a2, %d4, 0
.LBE90:
.LBE89:
.LBB92:
.LBB93:
	.loc 2 77 0
	lt.u	%d15, %d4, 60
.LBE93:
.LBE92:
.LBB95:
.LBB91:
	.loc 3 90 0
	ld.bu	%d2, [%a2]0
.LVL20:
.LBE91:
.LBE95:
.LBB96:
.LBB94:
	.loc 2 77 0
	jz	%d15, .L35
	.loc 2 78 0
	madd	%d15, %d8, %d4, 52
	mov.a	%a2, %d15
	ld.w	%d15, [%a2] 48
	.loc 2 77 0
	jz.t	%d15, 12, .L35
.LBE94:
.LBE96:
	.loc 1 262 0
	jnz.t	%d2, 4, .L35
	.loc 1 264 0
	lea	%a4, [%a15] 12
	call	NvM_Prv_Crc_CheckRamBlockCrc
.LVL21:
	.loc 1 268 0
	jz	%d2, .L35
	.loc 1 284 0
	mov	%d15, 6
	st.b	[%a15]0, %d15
	.loc 1 285 0
	mov	%d15, 5
	st.b	[%a12]0, %d15
	ret
.LVL22:
.L30:
.LBE88:
.LBE87:
	.loc 1 298 0
	mov	%d15, 1
	st.b	[%a3]0, %d15
	ret
.LVL23:
.L42:
	ret
.LVL24:
.L35:
.LBB98:
.LBB97:
	.loc 1 271 0
	ld.w	%d15, [%a15] 12
	st.w	[%a15] 16, %d15
	.loc 1 275 0
	mov	%d15, 1
	st.b	[%a12]0, %d15
	ret
.LBE97:
.LBE98:
.LFE186:
	.size	NvM_Prv_JobWrite_RecalcUserDataCrc, .-NvM_Prv_JobWrite_RecalcUserDataCrc
.section .text.NvM_Prv_JobWrite_AppendAdminData,"ax",@progbits
	.align 1
	.type	NvM_Prv_JobWrite_AppendAdminData, @function
NvM_Prv_JobWrite_AppendAdminData:
.LFB188:
	.loc 1 375 0
.LVL25:
	.loc 1 389 0
	mov	%d15, 0
	st.b	[%a5]0, %d15
.LVL26:
	.loc 1 393 0
	mov	%d15, 8
	st.b	[%a4]0, %d15
	.loc 1 396 0
	ld.hu	%d15, [%a6] 6
.LVL27:
.LBB113:
.LBB114:
	.loc 2 77 0
	ge.u	%d2, %d15, 60
	jnz	%d2, .L44
	.loc 2 78 0
	movh	%d2, hi:NvM_Prv_BlockDescriptors_acst
	addi	%d2, %d2, lo:NvM_Prv_BlockDescriptors_acst
	madd	%d3, %d2, %d15, 52
	mov.a	%a15, %d3
	ld.w	%d15, [%a15] 48
	.loc 2 77 0
	jz.t	%d15, 13, .L44
.LBE114:
.LBE113:
	.loc 1 397 0
	ld.bu	%d15, [%a6] 13
	jnz	%d15, .L44
.LVL28:
.LBB115:
.LBB116:
	.loc 1 399 0
	st.b	[%a5] 4, %d15
.LVL29:
	.loc 1 401 0
	ld.hu	%d15, [%a6] 6
	ld.w	%d4, [%a6] 20
.LVL30:
.LBB117:
.LBB118:
	.loc 2 158 0
	ge.u	%d3, %d15, 60
	jnz	%d3, .L47
.LVL31:
.LBB119:
.LBB120:
	.loc 2 159 0
	madd	%d3, %d2, %d15, 52
	mov.a	%a15, %d3
	ld.a	%a15, [%a15] 4
	.loc 2 158 0
	jz.a	%a15, .L47
.LVL32:
.LBE120:
.LBE119:
.LBE118:
.LBE117:
	.loc 1 402 0
	ld.a	%a2, [%a6] 24
	ld.hu	%d15, [%a15]0
.LVL33:
	ld.hu	%d2, [%a2]0
.LVL34:
	.loc 1 401 0
	add	%d4, %d15
.LBB121:
.LBB122:
.LBB123:
.LBB124:
	.loc 2 161 0
	ld.hu	%d15, [%a15]0
.LVL35:
.LBE124:
.LBE123:
.LBE122:
.LBE121:
	.loc 1 400 0
	st.w	[%a5] 8, %d4
.LVL36:
	.loc 1 402 0
	sub	%d15, %d2, %d15
.LVL37:
	st.h	[%a5] 6, %d15
	ret
.LVL38:
.L44:
.LBE116:
.LBE115:
	.loc 1 407 0
	mov	%d15, 1
	st.b	[%a5] 4, %d15
.LVL39:
	.loc 1 408 0
	mov	%d15, 0
	st.w	[%a5] 12, %d15
	.loc 1 410 0
	ld.a	%a15, [%a6] 24
	.loc 1 409 0
	ld.w	%d15, [%a6] 20
	st.w	[%a5] 8, %d15
	.loc 1 410 0
	ld.hu	%d15, [%a15]0
	st.h	[%a5] 6, %d15
	ret
.LVL40:
.L47:
.LBB130:
.LBB129:
	.loc 1 402 0
	ld.a	%a15, [%a6] 24
.LBB128:
.LBB127:
.LBB126:
.LBB125:
	.loc 2 156 0
	mov	%d15, 0
.LVL41:
.LBE125:
.LBE126:
.LBE127:
.LBE128:
	.loc 1 400 0
	st.w	[%a5] 8, %d4
	.loc 1 402 0
	ld.hu	%d2, [%a15]0
.LVL42:
	sub	%d15, %d2, %d15
.LVL43:
	st.h	[%a5] 6, %d15
	ret
.LBE129:
.LBE130:
.LFE188:
	.size	NvM_Prv_JobWrite_AppendAdminData, .-NvM_Prv_JobWrite_AppendAdminData
.section .text.NvM_Prv_JobWrite_GetUserData,"ax",@progbits
	.align 1
	.type	NvM_Prv_JobWrite_GetUserData, @function
NvM_Prv_JobWrite_GetUserData:
.LFB185:
	.loc 1 140 0
.LVL44:
	.loc 1 142 0
	ld.a	%a2, [%a6] 20
	ld.hu	%d15, [%a6] 28
	.loc 1 140 0
	mov.aa	%a14, %a4
	.loc 1 142 0
	addsc.a	%a13, %a2, %d15, 0
.LVL45:
	.loc 1 144 0
	mov	%d15, 0
	st.b	[%a5]0, %d15
.LVL46:
	.loc 1 157 0
	ld.hu	%d15, [%a6] 6
.LVL47:
	.loc 1 140 0
	mov.aa	%a12, %a5
.LBB143:
.LBB144:
	.loc 2 158 0
	ge.u	%d2, %d15, 60
.LBE144:
.LBE143:
	.loc 1 140 0
	mov.aa	%a15, %a6
	.loc 1 157 0
	ld.a	%a2, [%a6] 24
.LBB148:
.LBB147:
	.loc 2 156 0
	mov	%d3, 0
	.loc 2 158 0
	jnz	%d2, .L52
.LVL48:
.LBB145:
.LBB146:
	.loc 2 159 0
	movh.a	%a3, hi:NvM_Prv_BlockDescriptors_acst
	mov.d	%d4, %a3
	addi	%d2, %d4, lo:NvM_Prv_BlockDescriptors_acst
	madd	%d4, %d2, %d15, 52
	mov.a	%a3, %d4
	ld.a	%a3, [%a3] 4
	.loc 2 158 0
	jz.a	%a3, .L52
	.loc 2 161 0
	ld.hu	%d3, [%a3]0
.LVL49:
.L52:
.LBE146:
.LBE145:
.LBE147:
.LBE148:
	.loc 1 157 0
	st.h	[%a2]0, %d3
.LVL50:
	.loc 1 159 0
	ld.bu	%d15, [%a15] 12
.LVL51:
	jz	%d15, .L53
	.loc 1 164 0
	ld.hu	%d4, [%a15] 6
.LVL52:
.LBB149:
.LBB150:
	.loc 2 77 0
	ge.u	%d15, %d4, 60
	jnz	%d15, .L54
	.loc 2 78 0
	movh.a	%a2, hi:NvM_Prv_BlockDescriptors_acst
	mov.d	%d2, %a2
	addi	%d15, %d2, lo:NvM_Prv_BlockDescriptors_acst
	madd	%d2, %d15, %d4, 52
	mov.a	%a2, %d2
	ld.w	%d15, [%a2] 48
	.loc 2 77 0
	jz.t	%d15, 7, .L54
.LBE150:
.LBE149:
	.loc 1 165 0
	ld.bu	%d15, [%a15] 11
	jz	%d15, .L54
.LVL53:
	.loc 1 167 0
	ld.a	%a4, [%a2] 40
.LVL54:
	lea	%a5, [%a15] 14
.LVL55:
	mov.aa	%a6, %a13
.LVL56:
	call	NvM_Prv_ExplicitSync_CopyData
.LVL57:
	st.b	[%a12]0, %d2
.L56:
	.loc 1 181 0
	jz	%d2, .L53
	.loc 1 193 0
	jeq	%d2, 2, .L70
	ret
.LVL58:
.L53:
	.loc 1 185 0
	mov	%d15, 7
	st.b	[%a14]0, %d15
	.loc 1 188 0
	mov	%d15, 1
	st.b	[%a12] 4, %d15
	.loc 1 189 0
	ld.hu	%d15, [%a15] 6
.LVL59:
.LBB151:
.LBB152:
	.loc 2 156 0
	mov	%d3, 0
	.loc 2 158 0
	ge.u	%d2, %d15, 60
	jnz	%d2, .L58
.LVL60:
.LBB153:
.LBB154:
	.loc 2 159 0
	movh.a	%a15, hi:NvM_Prv_BlockDescriptors_acst
.LVL61:
	mov.d	%d4, %a15
	addi	%d2, %d4, lo:NvM_Prv_BlockDescriptors_acst
	madd	%d4, %d2, %d15, 52
	mov.a	%a15, %d4
	ld.a	%a15, [%a15] 4
	.loc 2 158 0
	jz.a	%a15, .L58
	.loc 2 161 0
	ld.hu	%d3, [%a15]0
.LVL62:
.L58:
.LBE154:
.LBE153:
.LBE152:
.LBE151:
	.loc 1 190 0
	mov	%d15, 0
.LVL63:
	.loc 1 189 0
	st.h	[%a12] 6, %d3
	.loc 1 190 0
	st.w	[%a12] 12, %d15
.LVL64:
	.loc 1 191 0
	st.a	[%a12] 8, %a13
	ret
.LVL65:
.L54:
	.loc 1 174 0
	ld.w	%d5, [%a15] 16
	mov.aa	%a4, %a13
.LVL66:
	mov	%d6, 1
	call	NvM_Prv_InternalBuffer_CopyData
.LVL67:
	st.b	[%a12]0, %d2
	j	.L56
.L70:
	.loc 1 197 0
	mov	%d15, 5
	st.b	[%a14]0, %d15
	ret
.LFE185:
	.size	NvM_Prv_JobWrite_GetUserData, .-NvM_Prv_JobWrite_GetUserData
.section .text.NvM_Prv_JobWrite_GetStateFct,"ax",@progbits
	.align 1
	.global	NvM_Prv_JobWrite_GetStateFct
	.type	NvM_Prv_JobWrite_GetStateFct, @function
NvM_Prv_JobWrite_GetStateFct:
.LFB184:
	.loc 1 73 0
.LVL68:
	.loc 1 76 0
	ld.bu	%d2, [%a4]0
	ge.u	%d15, %d2, 17
	jz	%d15, .L81
.L72:
	.loc 1 113 0
	mov.a	%a2, 0
	.loc 1 114 0
	ret
.L81:
	.loc 1 76 0
	movh.a	%a15, hi:.L74
	lea	%a15, [%a15] lo:.L74
	addsc.a	%a15, %a15, %d2, 2
	ji	%a15
	.align 2
	.align 2
.L74:
	.code32
	j	.L73
	.code32
	j	.L75
	.code32
	j	.L76
	.code32
	j	.L76
	.code32
	j	.L72
	.code32
	j	.L72
	.code32
	j	.L73
	.code32
	j	.L80
	.code32
	j	.L78
	.code32
	j	.L79
	.code32
	j	.L72
	.code32
	j	.L75
	.code32
	j	.L75
	.code32
	j	.L75
	.code32
	j	.L75
	.code32
	j	.L75
	.code32
	j	.L75
.L80:
	.loc 1 86 0
	movh.a	%a2, hi:NvM_Prv_JobWrite_RecalcUserDataCrc
	lea	%a2, [%a2] lo:NvM_Prv_JobWrite_RecalcUserDataCrc
.LVL69:
	.loc 1 118 0
	ret
.LVL70:
.L78:
	.loc 1 104 0
	movh.a	%a2, hi:NvM_Prv_JobWrite_CalcNvCrc
	lea	%a2, [%a2] lo:NvM_Prv_JobWrite_CalcNvCrc
	.loc 1 105 0
	ret
.LVL71:
.L79:
	.loc 1 100 0
	movh.a	%a2, hi:NvM_Prv_JobWrite_AppendAdminData
	lea	%a2, [%a2] lo:NvM_Prv_JobWrite_AppendAdminData
	.loc 1 101 0
	ret
.LVL72:
.L73:
	.loc 1 82 0
	mov	%d15, 6
	.loc 1 80 0
	movh.a	%a2, hi:NvM_Prv_JobWrite_GetUserData
	.loc 1 82 0
	st.b	[%a4]0, %d15
	.loc 1 80 0
	lea	%a2, [%a2] lo:NvM_Prv_JobWrite_GetUserData
	.loc 1 83 0
	ret
.LVL73:
.L75:
	.loc 1 96 0
	movh.a	%a2, hi:NvM_Prv_JobWrite_DoCrypto
	lea	%a2, [%a2] lo:NvM_Prv_JobWrite_DoCrypto
	ret
.L76:
.LVL74:
	.loc 1 109 0
	movh.a	%a2, hi:NvM_Prv_JobWrite_DoMemIf
	lea	%a2, [%a2] lo:NvM_Prv_JobWrite_DoMemIf
	.loc 1 110 0
	ret
.LFE184:
	.size	NvM_Prv_JobWrite_GetStateFct, .-NvM_Prv_JobWrite_GetStateFct
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
	.uaword	.LFB187
	.uaword	.LFE187-.LFB187
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB190
	.uaword	.LFE190-.LFB190
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB189
	.uaword	.LFE189-.LFB189
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB186
	.uaword	.LFE186-.LFB186
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB188
	.uaword	.LFE188-.LFB188
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB185
	.uaword	.LFE185-.LFB185
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB184
	.uaword	.LFE184-.LFB184
	.align 2
.LEFDE12:
.section .text,"ax",@progbits
.Letext0:
	.file 4 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 5 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 6 ".\\output\\inc/..\\..\\rte\\Rte_Type.h"
	.file 7 ".\\output\\inc/..\\..\\bsw\\NvM\\api\\NvM_Types.h"
	.file 8 ".\\output\\inc/..\\..\\bsw\\NvM\\src\\Internal\\InternalBuffer\\NvM_Prv_InternalBuffer_Types.h"
	.file 9 ".\\output\\inc/..\\..\\bsw\\NvM\\src\\Internal\\JobHandling\\NvM_Prv_Job_Types.h"
	.file 10 ".\\output\\inc/..\\..\\bsw\\NvM\\src\\Internal\\BlockData\\NvM_Prv_BlockDescriptor.h"
	.file 11 ".\\output\\inc/..\\..\\bsw\\NvM\\src\\Internal\\JobResource\\NvM_Prv_JobResource.h"
	.file 12 ".\\output\\inc/..\\..\\bsw\\Dem\\api\\Dem_Types.h"
	.file 13 ".\\output\\inc/..\\..\\bsw\\Dem\\src\\main\\Dem_Main.h"
	.file 14 ".\\output\\inc/..\\..\\bsw\\Dem\\Dem_Cfg_DTC_DataStructures.h"
	.file 15 ".\\output\\inc/..\\..\\bsw\\Dem\\Dem_Cfg_OperationCycle.h"
	.file 16 ".\\output\\inc/..\\..\\bsw\\Dem\\Dem_Cfg_OperationCycle_DataStructures.h"
	.file 17 ".\\output\\inc/..\\..\\bsw\\NvM\\src\\Internal\\BlockData\\NvM_Prv_BlockData_WriteCntr_Inl.h"
	.file 18 ".\\output\\inc/..\\..\\bsw\\NvM\\src\\Internal\\BlockData\\NvM_Prv_BlockData.h"
	.file 19 ".\\output\\inc/..\\..\\bsw\\Dem\\src\\main\\Dem_OperationCycle.h"
	.file 20 ".\\output\\inc/..\\..\\bsw\\NvM\\src\\Internal\\Crc\\NvM_Prv_Crc.h"
	.file 21 ".\\output\\inc/..\\..\\bsw\\NvM\\src\\Internal\\ExplicitSynchronization\\NvM_Prv_ExplicitSynchronization.h"
	.file 22 ".\\output\\inc/..\\..\\bsw\\NvM\\src\\Internal\\InternalBuffer\\NvM_Prv_InternalBuffer.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x279b
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\NvM\\src\\Internal\\JobHandling\\NvM_JobWrite.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0xd8
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
	.uaword	0x1da
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
	.uaword	0x206
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
	.uaword	0x242
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
	.byte	0x4
	.byte	0x80
	.uaword	0x1da
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
	.uaword	0x1cd
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x4
	.byte	0x4
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2d9
	.uleb128 0x6
	.uaword	0x1cd
	.uleb128 0x5
	.byte	0x4
	.uaword	0x1cd
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2ea
	.uleb128 0x6
	.uaword	0x1f8
	.uleb128 0x5
	.byte	0x4
	.uaword	0x1f8
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2fb
	.uleb128 0x7
	.uleb128 0x8
	.string	"NvM_BlockIdType"
	.byte	0x6
	.uahalf	0x1ca
	.uaword	0x1f8
	.uleb128 0x8
	.string	"NvM_RequestResultType"
	.byte	0x6
	.uahalf	0x1d4
	.uaword	0x1cd
	.uleb128 0x5
	.byte	0x4
	.uaword	0x338
	.uleb128 0x9
	.byte	0x1
	.uaword	0x2af
	.uleb128 0x5
	.byte	0x4
	.uaword	0x344
	.uleb128 0xa
	.byte	0x1
	.uaword	0x2af
	.uaword	0x354
	.uleb128 0xb
	.uaword	0x1cd
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.byte	0x7
	.byte	0xa2
	.uaword	0x39a
	.uleb128 0xd
	.string	"NVM_BLOCK_NATIVE"
	.sleb128 0
	.uleb128 0xd
	.string	"NVM_BLOCK_REDUNDANT"
	.sleb128 1
	.uleb128 0xd
	.string	"NVM_BLOCK_DATASET"
	.sleb128 2
	.byte	0
	.uleb128 0x3
	.string	"NvM_BlockManagementType"
	.byte	0x7
	.byte	0xa6
	.uaword	0x354
	.uleb128 0xe
	.byte	0x1
	.byte	0x7
	.uahalf	0x106
	.uaword	0x5cb
	.uleb128 0xd
	.string	"NvM_Prv_idJob_Idle_e"
	.sleb128 0
	.uleb128 0xd
	.string	"NvM_Prv_idJob_Read_e"
	.sleb128 1
	.uleb128 0xd
	.string	"NvM_Prv_idJob_Write_e"
	.sleb128 2
	.uleb128 0xd
	.string	"NvM_Prv_idJob_Erase_e"
	.sleb128 3
	.uleb128 0xd
	.string	"NvM_Prv_idJob_Restore_e"
	.sleb128 4
	.uleb128 0xd
	.string	"NvM_Prv_idJob_Maintain_e"
	.sleb128 5
	.uleb128 0xd
	.string	"NvM_Prv_idJob_Validate_e"
	.sleb128 6
	.uleb128 0xd
	.string	"NvM_Prv_idJob_Invalidate_e"
	.sleb128 7
	.uleb128 0xd
	.string	"NvM_Prv_idJob_ReadIdConfigForReadAll_e"
	.sleb128 8
	.uleb128 0xd
	.string	"NvM_Prv_idJob_InvalidateForFirstInitAll_e"
	.sleb128 9
	.uleb128 0xd
	.string	"NvM_Prv_idJob_RestoreForImplicitRecovery_e"
	.sleb128 10
	.uleb128 0xd
	.string	"NvM_Prv_idJob_InvalidateForRemoveNonResistant_e"
	.sleb128 11
	.uleb128 0xd
	.string	"NvM_Prv_idJob_RecalcRamBlkCrc_e"
	.sleb128 12
	.uleb128 0xd
	.string	"NvM_Prv_idJob_WriteAll_e"
	.sleb128 13
	.uleb128 0xd
	.string	"NvM_Prv_idJob_Suspend_e"
	.sleb128 14
	.uleb128 0xd
	.string	"NvM_Prv_idJob_Invalid_e"
	.sleb128 15
	.uleb128 0xd
	.string	"NvM_Prv_idJob_Count_e"
	.sleb128 16
	.byte	0
	.uleb128 0x8
	.string	"NvM_Prv_idJob_ten"
	.byte	0x7
	.uahalf	0x111
	.uaword	0x3b9
	.uleb128 0x8
	.string	"NvM_Prv_ServiceBit_tuo"
	.byte	0x7
	.uahalf	0x147
	.uaword	0x1f8
	.uleb128 0x8
	.string	"NvM_Prv_idService_tuo"
	.byte	0x7
	.uahalf	0x14c
	.uaword	0x1cd
	.uleb128 0x8
	.string	"NvM_Prv_idQueue_tuo"
	.byte	0x7
	.uahalf	0x174
	.uaword	0x1cd
	.uleb128 0xf
	.byte	0x4
	.byte	0x7
	.uahalf	0x178
	.uaword	0x67c
	.uleb128 0x10
	.string	"Crc8_u8"
	.byte	0x7
	.uahalf	0x17a
	.uaword	0x1cd
	.uleb128 0x10
	.string	"Crc16_u16"
	.byte	0x7
	.uahalf	0x17b
	.uaword	0x1f8
	.uleb128 0x10
	.string	"Crc32_u32"
	.byte	0x7
	.uahalf	0x17c
	.uaword	0x234
	.byte	0
	.uleb128 0x8
	.string	"NvM_Prv_Crc_tun"
	.byte	0x7
	.uahalf	0x17e
	.uaword	0x63e
	.uleb128 0xf
	.byte	0x4
	.byte	0x7
	.uahalf	0x180
	.uaword	0x6cd
	.uleb128 0x10
	.string	"ptrRamBlock_pv"
	.byte	0x7
	.uahalf	0x182
	.uaword	0x2d1
	.uleb128 0x10
	.string	"ptrRamBlock_pu8"
	.byte	0x7
	.uahalf	0x183
	.uaword	0x2de
	.byte	0
	.uleb128 0x8
	.string	"NvM_Prv_ptrRamBlock_tun"
	.byte	0x7
	.uahalf	0x185
	.uaword	0x694
	.uleb128 0x11
	.byte	0xc
	.byte	0x8
	.byte	0x9
	.uaword	0x731
	.uleb128 0x12
	.uaword	.LASF0
	.byte	0x8
	.byte	0xc
	.uaword	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.string	"UsedSizeInBytes_pu16"
	.byte	0x8
	.byte	0xe
	.uaword	0x2ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.uaword	.LASF1
	.byte	0x8
	.byte	0x13
	.uaword	0x1f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x3
	.string	"NvM_Prv_InternalBuffer_st"
	.byte	0x8
	.byte	0x15
	.uaword	0x6ed
	.uleb128 0xc
	.byte	0x1
	.byte	0x9
	.byte	0x20
	.uaword	0xd91
	.uleb128 0xd
	.string	"NvM_Prv_stJob_Idle_e"
	.sleb128 0
	.uleb128 0xd
	.string	"NvM_Prv_stJob_DoCrypto_e"
	.sleb128 1
	.uleb128 0xd
	.string	"NvM_Prv_stJob_DoMemIf_e"
	.sleb128 2
	.uleb128 0xd
	.string	"NvM_Prv_stJob_PollMemIf_e"
	.sleb128 3
	.uleb128 0xd
	.string	"NvM_Prv_stJob_DoCrc_e"
	.sleb128 4
	.uleb128 0xd
	.string	"NvM_Prv_stJob_Finished_e"
	.sleb128 5
	.uleb128 0xd
	.string	"NvM_Prv_stJobWrite_GetUserData_e"
	.sleb128 6
	.uleb128 0xd
	.string	"NvM_Prv_stJobWrite_RecalcUserDataCrc_e"
	.sleb128 7
	.uleb128 0xd
	.string	"NvM_Prv_stJobWrite_CalcNvBlkCrc_e"
	.sleb128 8
	.uleb128 0xd
	.string	"NvM_Prv_stJobWrite_AppendAdminData_e"
	.sleb128 9
	.uleb128 0xd
	.string	"NvM_Prv_stJobWrite_InitiateMemIf_e"
	.sleb128 10
	.uleb128 0xd
	.string	"NvM_Prv_stJobWrite_CryptoStartGenerationRandom_e"
	.sleb128 11
	.uleb128 0xd
	.string	"NvM_Prv_stJobWrite_CryptoPollGenerationRandom_e"
	.sleb128 12
	.uleb128 0xd
	.string	"NvM_Prv_stJobWrite_CryptoStartEncryption_e"
	.sleb128 13
	.uleb128 0xd
	.string	"NvM_Prv_stJobWrite_CryptoPollEncryption_e"
	.sleb128 14
	.uleb128 0xd
	.string	"NvM_Prv_stJobWrite_CryptoStartGenerationSignature_e"
	.sleb128 15
	.uleb128 0xd
	.string	"NvM_Prv_stJobWrite_CryptoPollGenerationSignature_e"
	.sleb128 16
	.uleb128 0xd
	.string	"NvM_Prv_stJobRead_Start_e"
	.sleb128 17
	.uleb128 0xd
	.string	"NvM_Prv_stJobRead_GetUserData_e"
	.sleb128 18
	.uleb128 0xd
	.string	"NvM_Prv_stJobRead_CrcCheck_e"
	.sleb128 19
	.uleb128 0xd
	.string	"NvM_Prv_stJobRead_InitiateMemIf_e"
	.sleb128 20
	.uleb128 0xd
	.string	"NvM_Prv_stJobRead_RecalcUserDataCrc_e"
	.sleb128 21
	.uleb128 0xd
	.string	"NvM_Prv_stJobRead_CalcNvBlkCrc_e"
	.sleb128 22
	.uleb128 0xd
	.string	"NvM_Prv_stJobRead_ExtractAdminData_e"
	.sleb128 23
	.uleb128 0xd
	.string	"NvM_Prv_stJobRead_SetUserData_e"
	.sleb128 24
	.uleb128 0xd
	.string	"NvM_Prv_stJobRead_StartImplicitRecovery_e"
	.sleb128 25
	.uleb128 0xd
	.string	"NvM_Prv_stJobRead_CryptoStartSignatureVerification_e"
	.sleb128 26
	.uleb128 0xd
	.string	"NvM_Prv_stJobRead_CryptoPollSignatureVerification_e"
	.sleb128 27
	.uleb128 0xd
	.string	"NvM_Prv_stJobRead_CryptoStartDecryption_e"
	.sleb128 28
	.uleb128 0xd
	.string	"NvM_Prv_stJobRead_CryptoPollDecryption_e"
	.sleb128 29
	.uleb128 0xd
	.string	"NvM_Prv_stJobRestore_Start_e"
	.sleb128 30
	.uleb128 0xd
	.string	"NvM_Prv_stJobRestore_CopyFromRom_e"
	.sleb128 31
	.uleb128 0xd
	.string	"NvM_Prv_stJobRestore_ExplicitSync_e"
	.sleb128 32
	.uleb128 0xd
	.string	"NvM_Prv_stJobRestore_InitCallback_e"
	.sleb128 33
	.uleb128 0xd
	.string	"NvM_Prv_stJobRestore_Crc_e"
	.sleb128 34
	.uleb128 0xd
	.string	"NvM_Prv_stJobRestore_StartWrite_e"
	.sleb128 35
	.uleb128 0xd
	.string	"NvM_Prv_stJobInvalidate_InitiateMemIf_e"
	.sleb128 36
	.uleb128 0xd
	.string	"NvM_Prv_stJobMaintain_InitiateMemIf_e"
	.sleb128 37
	.uleb128 0xd
	.string	"NvM_Prv_stJobValidate_Start_e"
	.sleb128 38
	.uleb128 0xd
	.string	"NvM_Prv_stRecalcRamBlkCrc_ExplicitSyncWriteToNvM_e"
	.sleb128 39
	.uleb128 0xd
	.string	"NvM_Prv_stRecalcRamBlkCrc_Do_e"
	.sleb128 40
	.uleb128 0xd
	.string	"NvM_Prv_stJob_Count_e"
	.sleb128 41
	.byte	0
	.uleb128 0x3
	.string	"NvM_Prv_stJob_ten"
	.byte	0x9
	.byte	0x9f
	.uaword	0x752
	.uleb128 0xc
	.byte	0x1
	.byte	0x9
	.byte	0xa5
	.uaword	0xea8
	.uleb128 0xd
	.string	"NvM_Prv_JobResult_Succeeded_e"
	.sleb128 0
	.uleb128 0xd
	.string	"NvM_Prv_JobResult_Pending_e"
	.sleb128 1
	.uleb128 0xd
	.string	"NvM_Prv_JobResult_Failed_e"
	.sleb128 2
	.uleb128 0xd
	.string	"NvM_Prv_JobResult_BlockInconsistent_e"
	.sleb128 3
	.uleb128 0xd
	.string	"NvM_Prv_JobResult_BlockInvalidated_e"
	.sleb128 4
	.uleb128 0xd
	.string	"NvM_Prv_JobResult_Skipped_e"
	.sleb128 5
	.uleb128 0xd
	.string	"NvM_Prv_JobResult_Succeeded_MemIfSkipped_e"
	.sleb128 6
	.byte	0
	.uleb128 0x3
	.string	"NvM_Prv_JobResult_ten"
	.byte	0x9
	.byte	0xb5
	.uaword	0xdaa
	.uleb128 0x11
	.byte	0xc
	.byte	0x9
	.byte	0xb7
	.uaword	0xf1a
	.uleb128 0x13
	.string	"isFirstCall_b"
	.byte	0x9
	.byte	0xbb
	.uaword	0x27f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.string	"Length_u16"
	.byte	0x9
	.byte	0xbd
	.uaword	0x1f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x12
	.uaword	.LASF0
	.byte	0x9
	.byte	0xbf
	.uaword	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.string	"Crc_un"
	.byte	0x9
	.byte	0xc1
	.uaword	0x67c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x3
	.string	"NvM_Prv_Job_CrcCalculation_tst"
	.byte	0x9
	.byte	0xc3
	.uaword	0xec5
	.uleb128 0x11
	.byte	0x10
	.byte	0x9
	.byte	0xc5
	.uaword	0xf79
	.uleb128 0x13
	.string	"Calculation_st"
	.byte	0x9
	.byte	0xc7
	.uaword	0xf1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.string	"CrcRamBlk_un"
	.byte	0x9
	.byte	0xcb
	.uaword	0x67c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x3
	.string	"NvM_Prv_Job_CrcData_tst"
	.byte	0x9
	.byte	0xcd
	.uaword	0xf40
	.uleb128 0x11
	.byte	0x20
	.byte	0x9
	.byte	0xcf
	.uaword	0x1107
	.uleb128 0x13
	.string	"idJob_en"
	.byte	0x9
	.byte	0xd2
	.uaword	0x5cb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.string	"idQueue_uo"
	.byte	0x9
	.byte	0xd4
	.uaword	0x622
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x13
	.string	"idService_uo"
	.byte	0x9
	.byte	0xd6
	.uaword	0x604
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x13
	.string	"ServiceBit_uo"
	.byte	0x9
	.byte	0xd8
	.uaword	0x5e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.uaword	.LASF2
	.byte	0x9
	.byte	0xda
	.uaword	0x2fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x13
	.string	"idxDataset_u8"
	.byte	0x9
	.byte	0xdc
	.uaword	0x1cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x13
	.string	"isMultiServiceActive_b"
	.byte	0x9
	.byte	0xdf
	.uaword	0x27f
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x13
	.string	"isAuxServiceActive_b"
	.byte	0x9
	.byte	0xe1
	.uaword	0x27f
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x13
	.string	"isPRamBlockUsed_b"
	.byte	0x9
	.byte	0xe3
	.uaword	0x27f
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0x13
	.string	"isIntBufferToUse_b"
	.byte	0x9
	.byte	0xe5
	.uaword	0x27f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x13
	.string	"isEncryptionEnabled_b"
	.byte	0x9
	.byte	0xe7
	.uaword	0x27f
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0x13
	.string	"cntrExpSyncOperations_u8"
	.byte	0x9
	.byte	0xea
	.uaword	0x1cd
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x13
	.string	"UserData_un"
	.byte	0x9
	.byte	0xf3
	.uaword	0x6cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x13
	.string	"IntBuffer_st"
	.byte	0x9
	.byte	0xf6
	.uaword	0x731
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0
	.uleb128 0x3
	.string	"NvM_Prv_JobData_tst"
	.byte	0x9
	.byte	0xf8
	.uaword	0xf98
	.uleb128 0x11
	.byte	0x14
	.byte	0x9
	.byte	0xfa
	.uaword	0x1172
	.uleb128 0x13
	.string	"Result_en"
	.byte	0x9
	.byte	0xfd
	.uaword	0xea8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.string	"ProductionError_u8"
	.byte	0x9
	.byte	0xff
	.uaword	0x1cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x14
	.string	"CrcData_st"
	.byte	0x9
	.uahalf	0x102
	.uaword	0xf79
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x8
	.string	"NvM_Prv_JobResult_tst"
	.byte	0x9
	.uahalf	0x109
	.uaword	0x1122
	.uleb128 0x8
	.string	"NvM_Prv_Job_State_tpfct"
	.byte	0x9
	.uahalf	0x115
	.uaword	0x11b0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x11b6
	.uleb128 0x15
	.byte	0x1
	.uaword	0x11cc
	.uleb128 0xb
	.uaword	0x11cc
	.uleb128 0xb
	.uaword	0x11d2
	.uleb128 0xb
	.uaword	0x11d8
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0xd91
	.uleb128 0x5
	.byte	0x4
	.uaword	0x1172
	.uleb128 0x5
	.byte	0x4
	.uaword	0x11de
	.uleb128 0x6
	.uaword	0x1107
	.uleb128 0x5
	.byte	0x4
	.uaword	0x11e9
	.uleb128 0x6
	.uaword	0x67c
	.uleb128 0x3
	.string	"NvM_Prv_ExplicitSync_Copy_tpfct"
	.byte	0xa
	.byte	0x27
	.uaword	0x1215
	.uleb128 0x5
	.byte	0x4
	.uaword	0x121b
	.uleb128 0xa
	.byte	0x1
	.uaword	0x2af
	.uaword	0x122b
	.uleb128 0xb
	.uaword	0x2d1
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.byte	0xa
	.byte	0x2d
	.uaword	0x14f0
	.uleb128 0xd
	.string	"NVM_PRV_BLOCK_FLAG_SELECT_FOR_READ_ALL"
	.sleb128 1
	.uleb128 0xd
	.string	"NVM_PRV_BLOCK_FLAG_SELECT_FOR_WRITE_ALL"
	.sleb128 2
	.uleb128 0xd
	.string	"NVM_PRV_BLOCK_FLAG_SELECT_FOR_FIRST_INIT_ALL"
	.sleb128 4
	.uleb128 0xd
	.string	"NVM_PRV_BLOCK_FLAG_SELECT_FOR_INIT_AT_LAYOUT_CHANGE"
	.sleb128 8
	.uleb128 0xd
	.string	"NVM_PRV_BLOCK_FLAG_WRITE_PROTECTED"
	.sleb128 16
	.uleb128 0xd
	.string	"NVM_PRV_BLOCK_FLAG_WRITE_ONCE"
	.sleb128 32
	.uleb128 0xd
	.string	"NVM_PRV_BLOCK_FLAG_RESISTANT_TO_CHANGED_SW"
	.sleb128 64
	.uleb128 0xd
	.string	"NVM_PRV_BLOCK_FLAG_USE_SYNC_MECHANISM"
	.sleb128 128
	.uleb128 0xd
	.string	"NVM_PRV_BLOCK_FLAG_USE_AUTO_VALIDATION"
	.sleb128 256
	.uleb128 0xd
	.string	"NVM_PRV_BLOCK_FLAG_USE_VARIABLE_BLOCK_LENGTH"
	.sleb128 512
	.uleb128 0xd
	.string	"NVM_PRV_BLOCK_FLAG_SELECT_FOR_MIGRATION"
	.sleb128 1024
	.uleb128 0xd
	.string	"NVM_PRV_BLOCK_FLAG_RAM_INIT_UNCONDITIONAL"
	.sleb128 2048
	.uleb128 0xd
	.string	"NVM_PRV_BLOCK_FLAG_USE_CRC_COMP_MECHANISM"
	.sleb128 4096
	.uleb128 0xd
	.string	"NVM_PRV_BLOCK_FLAG_USE_RAM_CRC"
	.sleb128 8192
	.uleb128 0xd
	.string	"NVM_PRV_BLOCK_FLAG_USE_NV_CRC"
	.sleb128 16384
	.uleb128 0xd
	.string	"NVM_PRV_BLOCK_FLAG_USE_CRYPTO"
	.sleb128 32768
	.uleb128 0xd
	.string	"NVM_PRV_BLOCK_FLAG_CNTR_WRITE"
	.sleb128 65536
	.byte	0
	.uleb128 0x3
	.string	"NvM_Prv_BlockConfiguration_ten"
	.byte	0xa
	.byte	0x71
	.uaword	0x122b
	.uleb128 0x11
	.byte	0xc
	.byte	0xa
	.byte	0x77
	.uaword	0x158a
	.uleb128 0x13
	.string	"MultiBlockCallback_pfct"
	.byte	0xa
	.byte	0x7f
	.uaword	0x159b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.string	"RbMultiBlockStartCallback_pfct"
	.byte	0xa
	.byte	0x84
	.uaword	0x15ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.string	"ObserverCallback_pfct"
	.byte	0xa
	.byte	0x8a
	.uaword	0x15cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.uaword	0x159b
	.uleb128 0xb
	.uaword	0x1cd
	.uleb128 0xb
	.uaword	0x314
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x158a
	.uleb128 0x15
	.byte	0x1
	.uaword	0x15ad
	.uleb128 0xb
	.uaword	0x1cd
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x15a1
	.uleb128 0xa
	.byte	0x1
	.uaword	0x2af
	.uaword	0x15cd
	.uleb128 0xb
	.uaword	0x2fc
	.uleb128 0xb
	.uaword	0x1cd
	.uleb128 0xb
	.uaword	0x314
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x15b3
	.uleb128 0x3
	.string	"NvM_Prv_Common_tst"
	.byte	0xa
	.byte	0x8d
	.uaword	0x1516
	.uleb128 0x11
	.byte	0x34
	.byte	0xa
	.byte	0x95
	.uaword	0x17bb
	.uleb128 0x13
	.string	"idBlockMemIf_u16"
	.byte	0xa
	.byte	0x9b
	.uaword	0x1f8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.string	"nrBlockBytes_pu16"
	.byte	0xa
	.byte	0xa9
	.uaword	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.string	"nrBlockBytesStored_u16"
	.byte	0xa
	.byte	0xb5
	.uaword	0x1f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x13
	.string	"idxDevice_u8"
	.byte	0xa
	.byte	0xbb
	.uaword	0x1cd
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x13
	.string	"nrNvBlocks_u8"
	.byte	0xa
	.byte	0xc0
	.uaword	0x1cd
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0x13
	.string	"nrRomBlocks_u8"
	.byte	0xa
	.byte	0xc5
	.uaword	0x1cd
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x13
	.string	"adrRamBlock_ppv"
	.byte	0xa
	.byte	0xd6
	.uaword	0x17bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x13
	.string	"adrRomBlock_pcv"
	.byte	0xa
	.byte	0xde
	.uaword	0x2f5
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x13
	.string	"SingleBlockCallback_pfct"
	.byte	0xa
	.byte	0xe8
	.uaword	0x17db
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x13
	.string	"SingleBlockStartCallback_pfct"
	.byte	0xa
	.byte	0xf0
	.uaword	0x33e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x13
	.string	"InitBlockCallback_pfct"
	.byte	0xa
	.byte	0xf9
	.uaword	0x332
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x14
	.string	"ReadRamBlockFromNvm_pfct"
	.byte	0xa
	.uahalf	0x102
	.uaword	0x1215
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x16
	.uaword	.LASF3
	.byte	0xa
	.uahalf	0x10b
	.uaword	0x1215
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x14
	.string	"BlockManagementType_en"
	.byte	0xa
	.uahalf	0x110
	.uaword	0x39a
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x14
	.string	"JobPriority_u8"
	.byte	0xa
	.uahalf	0x115
	.uaword	0x1cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x2d
	.uleb128 0x14
	.string	"stFlags_uo"
	.byte	0xa
	.uahalf	0x13e
	.uaword	0x234
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x17c1
	.uleb128 0x6
	.uaword	0x2d1
	.uleb128 0xa
	.byte	0x1
	.uaword	0x2af
	.uaword	0x17db
	.uleb128 0xb
	.uaword	0x1cd
	.uleb128 0xb
	.uaword	0x314
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x17c6
	.uleb128 0x8
	.string	"NvM_Prv_BlockDescriptor_tst"
	.byte	0xa
	.uahalf	0x153
	.uaword	0x15ed
	.uleb128 0x17
	.byte	0x4
	.byte	0xa
	.uahalf	0x158
	.uaword	0x1842
	.uleb128 0x14
	.string	"PersistentId_u16"
	.byte	0xa
	.uahalf	0x15a
	.uaword	0x1f8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"BlockId_u16"
	.byte	0xa
	.uahalf	0x15b
	.uaword	0x2fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x8
	.string	"NvM_Prv_PersId_BlockId_tst"
	.byte	0xa
	.uahalf	0x15c
	.uaword	0x1805
	.uleb128 0xc
	.byte	0x1
	.byte	0xb
	.byte	0x11
	.uaword	0x18f6
	.uleb128 0xd
	.string	"NvM_Prv_idJobResource_MemIf_e"
	.sleb128 0
	.uleb128 0xd
	.string	"NvM_Prv_idJobResource_Crypto_e"
	.sleb128 1
	.uleb128 0xd
	.string	"NvM_Prv_idJobResource_Crc_e"
	.sleb128 2
	.uleb128 0xd
	.string	"NvM_Prv_idJobResource_NrJobResources_e"
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.string	"NvM_Prv_idJobResource_tuo"
	.byte	0xb
	.byte	0x1b
	.uaword	0x1cd
	.uleb128 0x3
	.string	"Dem_boolean_least"
	.byte	0xc
	.byte	0x35
	.uaword	0x27f
	.uleb128 0x3
	.string	"Dem_OpMoStateType"
	.byte	0xd
	.byte	0xd
	.uaword	0x1cd
	.uleb128 0x3
	.string	"Dem_FimStateType"
	.byte	0xd
	.byte	0x17
	.uaword	0x1cd
	.uleb128 0x11
	.byte	0x1
	.byte	0xe
	.byte	0x31
	.uaword	0x197a
	.uleb128 0x13
	.string	"data3"
	.byte	0xe
	.byte	0x32
	.uaword	0x1cd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Dem_Cfg_Dtc_8Type"
	.byte	0xe
	.byte	0x33
	.uaword	0x1961
	.uleb128 0x11
	.byte	0x2
	.byte	0xe
	.byte	0x35
	.uaword	0x19ac
	.uleb128 0x13
	.string	"data2"
	.byte	0xe
	.byte	0x36
	.uaword	0x1f8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Dem_Cfg_Dtc_16Type"
	.byte	0xe
	.byte	0x37
	.uaword	0x1993
	.uleb128 0x11
	.byte	0x4
	.byte	0xe
	.byte	0x39
	.uaword	0x19df
	.uleb128 0x13
	.string	"data1"
	.byte	0xe
	.byte	0x3a
	.uaword	0x234
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Dem_Cfg_Dtc_32Type"
	.byte	0xe
	.byte	0x3b
	.uaword	0x19c6
	.uleb128 0x3
	.string	"Dem_OperationCycleList"
	.byte	0xf
	.byte	0x1a
	.uaword	0x1cd
	.uleb128 0x11
	.byte	0x2
	.byte	0x10
	.byte	0xe
	.uaword	0x1a64
	.uleb128 0x13
	.string	"DependentCycleMask"
	.byte	0x10
	.byte	0xf
	.uaword	0x19f9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.string	"IsAllowedToBeStartedDirectly"
	.byte	0x10
	.byte	0x10
	.uaword	0x27f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x3
	.string	"Dem_Cfg_OperationCycleType"
	.byte	0x10
	.byte	0x11
	.uaword	0x1a17
	.uleb128 0x18
	.string	"NvM_Prv_GetBlockSize"
	.byte	0x2
	.byte	0x9a
	.byte	0x1
	.uaword	0x1f8
	.byte	0x3
	.uaword	0x1ac9
	.uleb128 0x19
	.uaword	.LASF2
	.byte	0x2
	.byte	0x9a
	.uaword	0x2fc
	.uleb128 0x1a
	.string	"BlockSize_u16"
	.byte	0x2
	.byte	0x9c
	.uaword	0x1f8
	.byte	0
	.uleb128 0x18
	.string	"NvM_Prv_Block_AppendWriteCounter"
	.byte	0x11
	.byte	0x2e
	.byte	0x1
	.uaword	0x1f8
	.byte	0x3
	.uaword	0x1b27
	.uleb128 0x19
	.uaword	.LASF2
	.byte	0x11
	.byte	0x2e
	.uaword	0x2fc
	.uleb128 0x19
	.uaword	.LASF0
	.byte	0x11
	.byte	0x2f
	.uaword	0x2de
	.uleb128 0x1a
	.string	"SizeWriteCntr_u16"
	.byte	0x11
	.byte	0x31
	.uaword	0x1f8
	.byte	0
	.uleb128 0x18
	.string	"NvM_Prv_IsBlockSelected"
	.byte	0x2
	.byte	0x4a
	.byte	0x1
	.uaword	0x27f
	.byte	0x3
	.uaword	0x1b70
	.uleb128 0x19
	.uaword	.LASF2
	.byte	0x2
	.byte	0x4a
	.uaword	0x2fc
	.uleb128 0x1b
	.string	"SelectionMask_en"
	.byte	0x2
	.byte	0x4b
	.uaword	0x14f0
	.byte	0
	.uleb128 0x1c
	.string	"NvM_Prv_JobWrite_AppendAdminData"
	.byte	0x1
	.uahalf	0x174
	.byte	0x1
	.byte	0x1
	.uaword	0x1bea
	.uleb128 0x1d
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x174
	.uaword	0x11cc
	.uleb128 0x1d
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x175
	.uaword	0x11d2
	.uleb128 0x1d
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x176
	.uaword	0x11d8
	.uleb128 0x1e
	.string	"UsedSize_u16"
	.byte	0x1
	.uahalf	0x17f
	.uaword	0x1f8
	.uleb128 0x1e
	.string	"CntrSize_u16"
	.byte	0x1
	.uahalf	0x180
	.uaword	0x1f8
	.byte	0
	.uleb128 0x1c
	.string	"NvM_Prv_JobWrite_DoMemIf"
	.byte	0x1
	.uahalf	0x1ec
	.byte	0x1
	.byte	0x1
	.uaword	0x1c32
	.uleb128 0x1d
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x1ec
	.uaword	0x11cc
	.uleb128 0x1d
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x1ed
	.uaword	0x11d2
	.uleb128 0x1d
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x1ee
	.uaword	0x11d8
	.byte	0
	.uleb128 0x1c
	.string	"NvM_Prv_JobWrite_CalcNvCrc"
	.byte	0x1
	.uahalf	0x1b3
	.byte	0x1
	.byte	0x1
	.uaword	0x1c7c
	.uleb128 0x1d
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x1b3
	.uaword	0x11cc
	.uleb128 0x1d
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x1b4
	.uaword	0x11d2
	.uleb128 0x1d
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x1b5
	.uaword	0x11d8
	.byte	0
	.uleb128 0x18
	.string	"NvM_Prv_Block_IsWriteRequired"
	.byte	0x3
	.byte	0x58
	.byte	0x1
	.uaword	0x27f
	.byte	0x3
	.uaword	0x1cb3
	.uleb128 0x19
	.uaword	.LASF2
	.byte	0x3
	.byte	0x58
	.uaword	0x2fc
	.byte	0
	.uleb128 0x1f
	.string	"NvM_Prv_JobWrite_RecalcUserDataCrc"
	.byte	0x1
	.byte	0xe6
	.byte	0x1
	.byte	0x1
	.uaword	0x1d45
	.uleb128 0x19
	.uaword	.LASF4
	.byte	0x1
	.byte	0xe6
	.uaword	0x11cc
	.uleb128 0x19
	.uaword	.LASF5
	.byte	0x1
	.byte	0xe7
	.uaword	0x11d2
	.uleb128 0x19
	.uaword	.LASF6
	.byte	0x1
	.byte	0xe8
	.uaword	0x11d8
	.uleb128 0x20
	.uleb128 0x1e
	.string	"isWriteReq_b"
	.byte	0x1
	.uahalf	0x101
	.uaword	0x27f
	.uleb128 0x1e
	.string	"isWriteReqDueToBackgroundCrcRecalc_b"
	.byte	0x1
	.uahalf	0x102
	.uaword	0x27f
	.byte	0
	.byte	0
	.uleb128 0x21
	.string	"NvM_Prv_GetCopyFctForWrite"
	.byte	0x2
	.uahalf	0x1d3
	.byte	0x1
	.uaword	0x11ee
	.byte	0x3
	.uaword	0x1d87
	.uleb128 0x1d
	.uaword	.LASF2
	.byte	0x2
	.uahalf	0x1d3
	.uaword	0x2fc
	.uleb128 0x22
	.uaword	.LASF3
	.byte	0x2
	.uahalf	0x1d5
	.uaword	0x11ee
	.byte	0
	.uleb128 0x23
	.string	"NvM_Prv_JobWrite_DoCrypto"
	.byte	0x1
	.uahalf	0x143
	.byte	0x1
	.uaword	.LFB187
	.uaword	.LFE187
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1e2e
	.uleb128 0x24
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x143
	.uaword	0x11cc
	.uaword	.LLST0
	.uleb128 0x24
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x144
	.uaword	0x11d2
	.uaword	.LLST1
	.uleb128 0x24
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x145
	.uaword	0x11d8
	.uaword	.LLST2
	.uleb128 0x25
	.uaword	0x1b27
	.uaword	.LBB48
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.uahalf	0x149
	.uaword	0x1e0b
	.uleb128 0x26
	.uaword	0x1b57
	.uahalf	0x8000
	.uleb128 0x27
	.uaword	0x1b4c
	.uaword	.LLST3
	.byte	0
	.uleb128 0x28
	.uaword	.LVL2
	.uaword	0x2641
	.uleb128 0x29
	.byte	0x1
	.byte	0x66
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.uleb128 0x29
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x29
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x29
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uaword	0x1bea
	.uaword	.LFB190
	.uaword	.LFE190
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1ee1
	.uleb128 0x27
	.uaword	0x1c0d
	.uaword	.LLST4
	.uleb128 0x27
	.uaword	0x1c19
	.uaword	.LLST5
	.uleb128 0x27
	.uaword	0x1c25
	.uaword	.LLST6
	.uleb128 0x2b
	.uaword	.LBB56
	.uaword	.LBE56
	.uaword	0x1ebf
	.uleb128 0x27
	.uaword	0x1c25
	.uaword	.LLST7
	.uleb128 0x27
	.uaword	0x1c19
	.uaword	.LLST8
	.uleb128 0x27
	.uaword	0x1c0d
	.uaword	.LLST9
	.uleb128 0x2c
	.uaword	0x1b27
	.uaword	.LBB58
	.uaword	.LBE58
	.byte	0x1
	.uahalf	0x1f9
	.uaword	0x1ead
	.uleb128 0x27
	.uaword	0x1b57
	.uaword	.LLST10
	.uleb128 0x27
	.uaword	0x1b4c
	.uaword	.LLST11
	.byte	0
	.uleb128 0x2d
	.uaword	.LVL7
	.byte	0x1
	.uaword	0x2683
	.uleb128 0x29
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 16
	.byte	0
	.byte	0
	.uleb128 0x28
	.uaword	.LVL4
	.uaword	0x2641
	.uleb128 0x29
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x29
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x29
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x29
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uaword	0x1c32
	.uaword	.LFB189
	.uaword	.LFE189
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1f8c
	.uleb128 0x27
	.uaword	0x1c57
	.uaword	.LLST12
	.uleb128 0x27
	.uaword	0x1c63
	.uaword	.LLST13
	.uleb128 0x27
	.uaword	0x1c6f
	.uaword	.LLST14
	.uleb128 0x25
	.uaword	0x1b27
	.uaword	.LBB66
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x1
	.uahalf	0x1b9
	.uaword	0x1f36
	.uleb128 0x26
	.uaword	0x1b57
	.uahalf	0x4000
	.uleb128 0x27
	.uaword	0x1b4c
	.uaword	.LLST15
	.byte	0
	.uleb128 0x2b
	.uaword	.LBB70
	.uaword	.LBE70
	.uaword	0x1f6a
	.uleb128 0x2e
	.uaword	0x1c6f
	.byte	0x1
	.byte	0x6c
	.uleb128 0x2e
	.uaword	0x1c63
	.byte	0x1
	.byte	0x6f
	.uleb128 0x2e
	.uaword	0x1c57
	.byte	0x1
	.byte	0x6d
	.uleb128 0x2d
	.uaword	.LVL14
	.byte	0x1
	.uaword	0x26b3
	.uleb128 0x29
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8f
	.sleb128 12
	.byte	0
	.byte	0
	.uleb128 0x28
	.uaword	.LVL11
	.uaword	0x2641
	.uleb128 0x29
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x29
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x29
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x29
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uaword	0x1cb3
	.uaword	.LFB186
	.uaword	.LFE186
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x2090
	.uleb128 0x27
	.uaword	0x1cdf
	.uaword	.LLST16
	.uleb128 0x27
	.uaword	0x1cea
	.uaword	.LLST17
	.uleb128 0x27
	.uaword	0x1cf5
	.uaword	.LLST18
	.uleb128 0x2f
	.uaword	0x1b27
	.uaword	.LBB83
	.uaword	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0xec
	.uaword	0x1fe0
	.uleb128 0x26
	.uaword	0x1b57
	.uahalf	0x2000
	.uleb128 0x27
	.uaword	0x1b4c
	.uaword	.LLST19
	.byte	0
	.uleb128 0x30
	.uaword	.Ldebug_ranges0+0x48
	.uaword	0x206e
	.uleb128 0x27
	.uaword	0x1cf5
	.uaword	.LLST20
	.uleb128 0x27
	.uaword	0x1cea
	.uaword	.LLST21
	.uleb128 0x27
	.uaword	0x1cdf
	.uaword	.LLST22
	.uleb128 0x31
	.uaword	.Ldebug_ranges0+0x48
	.uleb128 0x32
	.uaword	0x1d01
	.uaword	.LLST23
	.uleb128 0x33
	.uaword	0x1d16
	.uleb128 0x25
	.uaword	0x1c7c
	.uaword	.LBB89
	.uaword	.Ldebug_ranges0+0x60
	.byte	0x1
	.uahalf	0x102
	.uaword	0x2035
	.uleb128 0x27
	.uaword	0x1ca7
	.uaword	.LLST24
	.byte	0
	.uleb128 0x25
	.uaword	0x1b27
	.uaword	.LBB92
	.uaword	.Ldebug_ranges0+0x78
	.byte	0x1
	.uahalf	0x104
	.uaword	0x205c
	.uleb128 0x27
	.uaword	0x1b57
	.uaword	.LLST25
	.uleb128 0x27
	.uaword	0x1b4c
	.uaword	.LLST26
	.byte	0
	.uleb128 0x28
	.uaword	.LVL21
	.uaword	0x26e8
	.uleb128 0x29
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 12
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
	.uaword	.LVL17
	.uaword	0x2641
	.uleb128 0x29
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x29
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x29
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x29
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uaword	0x1b70
	.uaword	.LFB188
	.uaword	.LFE188
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x21bd
	.uleb128 0x2e
	.uaword	0x1b9b
	.byte	0x1
	.byte	0x64
	.uleb128 0x2e
	.uaword	0x1ba7
	.byte	0x1
	.byte	0x65
	.uleb128 0x2e
	.uaword	0x1bb3
	.byte	0x1
	.byte	0x66
	.uleb128 0x32
	.uaword	0x1bbf
	.uaword	.LLST27
	.uleb128 0x33
	.uaword	0x1bd4
	.uleb128 0x2c
	.uaword	0x1b27
	.uaword	.LBB113
	.uaword	.LBE113
	.byte	0x1
	.uahalf	0x18c
	.uaword	0x20ed
	.uleb128 0x26
	.uaword	0x1b57
	.uahalf	0x2000
	.uleb128 0x27
	.uaword	0x1b4c
	.uaword	.LLST28
	.byte	0
	.uleb128 0x31
	.uaword	.Ldebug_ranges0+0x90
	.uleb128 0x27
	.uaword	0x1b9b
	.uaword	.LLST29
	.uleb128 0x27
	.uaword	0x1bb3
	.uaword	.LLST30
	.uleb128 0x27
	.uaword	0x1ba7
	.uaword	.LLST31
	.uleb128 0x31
	.uaword	.Ldebug_ranges0+0x90
	.uleb128 0x33
	.uaword	0x1bbf
	.uleb128 0x33
	.uaword	0x1bd4
	.uleb128 0x2c
	.uaword	0x1a86
	.uaword	.LBB117
	.uaword	.LBE117
	.byte	0x1
	.uahalf	0x191
	.uaword	0x2173
	.uleb128 0x27
	.uaword	0x1aa8
	.uaword	.LLST32
	.uleb128 0x34
	.uaword	.LBB118
	.uaword	.LBE118
	.uleb128 0x32
	.uaword	0x1ab3
	.uaword	.LLST33
	.uleb128 0x34
	.uaword	.LBB119
	.uaword	.LBE119
	.uleb128 0x27
	.uaword	0x1aa8
	.uaword	.LLST34
	.uleb128 0x34
	.uaword	.LBB120
	.uaword	.LBE120
	.uleb128 0x32
	.uaword	0x1ab3
	.uaword	.LLST35
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x35
	.uaword	0x1a86
	.uaword	.LBB121
	.uaword	.Ldebug_ranges0+0xa8
	.byte	0x1
	.uahalf	0x193
	.uleb128 0x27
	.uaword	0x1aa8
	.uaword	.LLST36
	.uleb128 0x31
	.uaword	.Ldebug_ranges0+0xa8
	.uleb128 0x32
	.uaword	0x1ab3
	.uaword	.LLST37
	.uleb128 0x31
	.uaword	.Ldebug_ranges0+0xa8
	.uleb128 0x27
	.uaword	0x1aa8
	.uaword	.LLST36
	.uleb128 0x31
	.uaword	.Ldebug_ranges0+0xa8
	.uleb128 0x32
	.uaword	0x1ab3
	.uaword	.LLST39
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x36
	.string	"NvM_Prv_JobWrite_GetUserData"
	.byte	0x1
	.byte	0x89
	.byte	0x1
	.uaword	.LFB185
	.uaword	.LFE185
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x2337
	.uleb128 0x37
	.uaword	.LASF4
	.byte	0x1
	.byte	0x89
	.uaword	0x11cc
	.uaword	.LLST40
	.uleb128 0x37
	.uaword	.LASF5
	.byte	0x1
	.byte	0x8a
	.uaword	0x11d2
	.uaword	.LLST41
	.uleb128 0x37
	.uaword	.LASF6
	.byte	0x1
	.byte	0x8b
	.uaword	0x11d8
	.uaword	.LLST42
	.uleb128 0x38
	.uaword	.LASF1
	.byte	0x1
	.byte	0x8d
	.uaword	0x1f8
	.uaword	.LLST43
	.uleb128 0x39
	.string	"IntBuffer_pu8"
	.byte	0x1
	.byte	0x8e
	.uaword	0x2de
	.byte	0x1
	.byte	0x6d
	.uleb128 0x2f
	.uaword	0x1a86
	.uaword	.LBB143
	.uaword	.Ldebug_ranges0+0xc0
	.byte	0x1
	.byte	0x9d
	.uaword	0x228f
	.uleb128 0x27
	.uaword	0x1aa8
	.uaword	.LLST44
	.uleb128 0x31
	.uaword	.Ldebug_ranges0+0xc0
	.uleb128 0x32
	.uaword	0x1ab3
	.uaword	.LLST45
	.uleb128 0x34
	.uaword	.LBB145
	.uaword	.LBE145
	.uleb128 0x27
	.uaword	0x1aa8
	.uaword	.LLST46
	.uleb128 0x34
	.uaword	.LBB146
	.uaword	.LBE146
	.uleb128 0x33
	.uaword	0x1ab3
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uaword	0x1b27
	.uaword	.LBB149
	.uaword	.LBE149
	.byte	0x1
	.byte	0xa4
	.uaword	0x22b5
	.uleb128 0x27
	.uaword	0x1b57
	.uaword	.LLST47
	.uleb128 0x27
	.uaword	0x1b4c
	.uaword	.LLST48
	.byte	0
	.uleb128 0x3a
	.uaword	0x1a86
	.uaword	.LBB151
	.uaword	.LBE151
	.byte	0x1
	.byte	0xbd
	.uaword	0x2307
	.uleb128 0x27
	.uaword	0x1aa8
	.uaword	.LLST49
	.uleb128 0x34
	.uaword	.LBB152
	.uaword	.LBE152
	.uleb128 0x32
	.uaword	0x1ab3
	.uaword	.LLST50
	.uleb128 0x34
	.uaword	.LBB153
	.uaword	.LBE153
	.uleb128 0x27
	.uaword	0x1aa8
	.uaword	.LLST51
	.uleb128 0x34
	.uaword	.LBB154
	.uaword	.LBE154
	.uleb128 0x33
	.uaword	0x1ab3
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uaword	.LVL57
	.uaword	0x271e
	.uaword	0x2321
	.uleb128 0x29
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x29
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8f
	.sleb128 14
	.byte	0
	.uleb128 0x28
	.uaword	.LVL67
	.uaword	0x275f
	.uleb128 0x29
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x31
	.uleb128 0x29
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3c
	.byte	0x1
	.string	"NvM_Prv_JobWrite_GetStateFct"
	.byte	0x1
	.byte	0x48
	.byte	0x1
	.uaword	0x1190
	.uaword	.LFB184
	.uaword	.LFE184
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x239a
	.uleb128 0x3d
	.uaword	.LASF4
	.byte	0x1
	.byte	0x48
	.uaword	0x11cc
	.byte	0x1
	.byte	0x64
	.uleb128 0x3e
	.string	"JobWrite_State_pfct"
	.byte	0x1
	.byte	0x4a
	.uaword	0x1190
	.uaword	.LLST52
	.byte	0
	.uleb128 0x3f
	.string	"NvM_Prv_Common_cst"
	.byte	0xa
	.uahalf	0x16d
	.uaword	0x23b7
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.uaword	0x15d3
	.uleb128 0x40
	.uaword	0x17e1
	.uaword	0x23cc
	.uleb128 0x41
	.uaword	0x2c5
	.byte	0x3b
	.byte	0
	.uleb128 0x3f
	.string	"NvM_Prv_BlockDescriptors_acst"
	.byte	0xa
	.uahalf	0x172
	.uaword	0x23f4
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.uaword	0x23bc
	.uleb128 0x40
	.uaword	0x1842
	.uaword	0x2409
	.uleb128 0x41
	.uaword	0x2c5
	.byte	0x39
	.byte	0
	.uleb128 0x3f
	.string	"NvM_Prv_PersId_BlockId_acst"
	.byte	0xa
	.uahalf	0x176
	.uaword	0x242f
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.uaword	0x23f9
	.uleb128 0x40
	.uaword	0x1cd
	.uaword	0x2444
	.uleb128 0x41
	.uaword	0x2c5
	.byte	0x3b
	.byte	0
	.uleb128 0x42
	.string	"NvM_Prv_stBlock_au8"
	.byte	0x12
	.byte	0x54
	.uaword	0x2434
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.uaword	0x1f8
	.uaword	0x2471
	.uleb128 0x41
	.uaword	0x2c5
	.byte	0x3b
	.byte	0
	.uleb128 0x42
	.string	"NvM_Prv_stRequests_au16"
	.byte	0x12
	.byte	0x6b
	.uaword	0x2461
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.uaword	0x314
	.uaword	0x24a2
	.uleb128 0x41
	.uaword	0x2c5
	.byte	0x3b
	.byte	0
	.uleb128 0x42
	.string	"NvM_Prv_stRequestResult_au8"
	.byte	0x12
	.byte	0x74
	.uaword	0x2492
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"NvM_Prv_idxDataSet_au8"
	.byte	0x12
	.byte	0x78
	.uaword	0x2434
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"NvM_Prv_idConfigStored_u16"
	.byte	0x12
	.byte	0x81
	.uaword	0x1f8
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"Dem_OpMoState"
	.byte	0xd
	.byte	0x1f
	.uaword	0x1930
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"Dem_FimState"
	.byte	0xd
	.byte	0x20
	.uaword	0x1949
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"Dem_TestFailedStatusInitialized"
	.byte	0xd
	.byte	0x21
	.uaword	0x1917
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.uaword	0x197a
	.uaword	0x2572
	.uleb128 0x43
	.uaword	0x2c5
	.uahalf	0x1f4
	.byte	0
	.uleb128 0x42
	.string	"Dem_Cfg_Dtc_8"
	.byte	0xe
	.byte	0x3f
	.uaword	0x2589
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.uaword	0x2561
	.uleb128 0x40
	.uaword	0x19ac
	.uaword	0x259f
	.uleb128 0x43
	.uaword	0x2c5
	.uahalf	0x1f4
	.byte	0
	.uleb128 0x42
	.string	"Dem_Cfg_Dtc_16"
	.byte	0xe
	.byte	0x40
	.uaword	0x25b7
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.uaword	0x258e
	.uleb128 0x40
	.uaword	0x19df
	.uaword	0x25cd
	.uleb128 0x43
	.uaword	0x2c5
	.uahalf	0x1f4
	.byte	0
	.uleb128 0x42
	.string	"Dem_Cfg_Dtc_32"
	.byte	0xe
	.byte	0x41
	.uaword	0x25e5
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.uaword	0x25bc
	.uleb128 0x40
	.uaword	0x1a64
	.uaword	0x25fa
	.uleb128 0x41
	.uaword	0x2c5
	.byte	0x4
	.byte	0
	.uleb128 0x42
	.string	"Dem_Cfg_OperationCycle"
	.byte	0x10
	.byte	0x16
	.uaword	0x261a
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.uaword	0x25ea
	.uleb128 0x42
	.string	"Dem_OperationCycleStates"
	.byte	0x13
	.byte	0xd
	.uaword	0x19f9
	.byte	0x1
	.byte	0x1
	.uleb128 0x44
	.byte	0x1
	.string	"NvM_Prv_JobResource_DoStateMachine"
	.byte	0xb
	.byte	0x28
	.byte	0x1
	.byte	0x1
	.uaword	0x2683
	.uleb128 0xb
	.uaword	0x18f6
	.uleb128 0xb
	.uaword	0x11cc
	.uleb128 0xb
	.uaword	0x11d2
	.uleb128 0xb
	.uaword	0x11d8
	.byte	0
	.uleb128 0x44
	.byte	0x1
	.string	"NvM_Prv_Crc_SetRamBlockCrc"
	.byte	0x14
	.byte	0x19
	.byte	0x1
	.byte	0x1
	.uaword	0x26b3
	.uleb128 0xb
	.uaword	0x2fc
	.uleb128 0xb
	.uaword	0x11e3
	.byte	0
	.uleb128 0x44
	.byte	0x1
	.string	"NvM_Prv_Crc_AppendCrc"
	.byte	0x14
	.byte	0x1f
	.byte	0x1
	.byte	0x1
	.uaword	0x26e8
	.uleb128 0xb
	.uaword	0x2fc
	.uleb128 0xb
	.uaword	0x2de
	.uleb128 0xb
	.uaword	0x2ef
	.uleb128 0xb
	.uaword	0x11e3
	.byte	0
	.uleb128 0x45
	.byte	0x1
	.string	"NvM_Prv_Crc_CheckRamBlockCrc"
	.byte	0x14
	.byte	0x18
	.byte	0x1
	.uaword	0x27f
	.byte	0x1
	.uaword	0x271e
	.uleb128 0xb
	.uaword	0x2fc
	.uleb128 0xb
	.uaword	0x11e3
	.byte	0
	.uleb128 0x45
	.byte	0x1
	.string	"NvM_Prv_ExplicitSync_CopyData"
	.byte	0x15
	.byte	0x17
	.byte	0x1
	.uaword	0xea8
	.byte	0x1
	.uaword	0x275f
	.uleb128 0xb
	.uaword	0x11ee
	.uleb128 0xb
	.uaword	0x2fc
	.uleb128 0xb
	.uaword	0x2d3
	.uleb128 0xb
	.uaword	0x2de
	.byte	0
	.uleb128 0x46
	.byte	0x1
	.string	"NvM_Prv_InternalBuffer_CopyData"
	.byte	0x16
	.byte	0x47
	.byte	0x1
	.uaword	0xea8
	.byte	0x1
	.uleb128 0xb
	.uaword	0x2fc
	.uleb128 0xb
	.uaword	0x6cd
	.uleb128 0xb
	.uaword	0x2de
	.uleb128 0xb
	.uaword	0x27f
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x38
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x1
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x5
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0x37
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
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3b
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x40
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x41
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x42
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
	.uleb128 0x43
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x46
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
	.uaword	.LVL2-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL2-1
	.uaword	.LFE187
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL2-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL2-1
	.uaword	.LFE187
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL0
	.uaword	.LVL2-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL2-1
	.uaword	.LFE187
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL1
	.uaword	.LVL2-1
	.uahalf	0x2
	.byte	0x86
	.sleb128 6
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL3
	.uaword	.LVL4-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL4-1
	.uaword	.LFE190
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL3
	.uaword	.LVL4-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL4-1
	.uaword	.LFE190
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL3
	.uaword	.LVL4-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL4-1
	.uaword	.LFE190
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL5
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL8
	.uaword	.LFE190
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL5
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL8
	.uaword	.LFE190
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL5
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL8
	.uaword	.LFE190
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x2000
	.byte	0x9f
	.uaword	.LVL8
	.uaword	.LFE190
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x2000
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL6
	.uaword	.LVL7-1
	.uahalf	0x2
	.byte	0x8d
	.sleb128 6
	.uaword	.LVL8
	.uaword	.LFE190
	.uahalf	0x2
	.byte	0x8d
	.sleb128 6
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL9
	.uaword	.LVL11-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL11-1
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x63
	.uaword	.LVL13
	.uaword	.LFE189
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL9
	.uaword	.LVL11-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL11-1
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL13
	.uaword	.LFE189
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL9
	.uaword	.LVL11-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL11-1
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL13
	.uaword	.LFE189
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL10
	.uaword	.LVL11-1
	.uahalf	0x2
	.byte	0x86
	.sleb128 6
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x2
	.byte	0x86
	.sleb128 6
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL15
	.uaword	.LVL17-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL17-1
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x63
	.uaword	.LVL23
	.uaword	.LFE186
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL15
	.uaword	.LVL17-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL17-1
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL23
	.uaword	.LFE186
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL15
	.uaword	.LVL17-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL17-1
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL23
	.uaword	.LFE186
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL16
	.uaword	.LVL17-1
	.uahalf	0x2
	.byte	0x86
	.sleb128 6
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x2
	.byte	0x86
	.sleb128 6
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL18
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL24
	.uaword	.LFE186
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL18
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL24
	.uaword	.LFE186
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL18
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL24
	.uaword	.LFE186
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL18
	.uaword	.LVL21
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x7
	.byte	0x72
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x30
	.byte	0x29
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL19
	.uaword	.LVL21-1
	.uahalf	0x2
	.byte	0x8d
	.sleb128 6
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL20
	.uaword	.LVL22
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x1000
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LFE186
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x1000
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL20
	.uaword	.LVL21-1
	.uahalf	0x2
	.byte	0x8d
	.sleb128 6
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x3
	.byte	0x86
	.sleb128 24
	.byte	0x6
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL27
	.uaword	.LVL29
	.uahalf	0x2
	.byte	0x86
	.sleb128 6
	.uaword	.LVL38
	.uaword	.LVL39
	.uahalf	0x2
	.byte	0x86
	.sleb128 6
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL28
	.uaword	.LVL38
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL40
	.uaword	.LFE188
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL28
	.uaword	.LVL38
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL40
	.uaword	.LFE188
	.uahalf	0x1
	.byte	0x66
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL28
	.uaword	.LVL38
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL40
	.uaword	.LFE188
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL30
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL33
	.uaword	.LVL38
	.uahalf	0x2
	.byte	0x86
	.sleb128 6
	.uaword	.LVL40
	.uaword	.LVL41
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL41
	.uaword	.LFE188
	.uahalf	0x2
	.byte	0x86
	.sleb128 6
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL30
	.uaword	.LVL32
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL31
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL33
	.uaword	.LVL38
	.uahalf	0x2
	.byte	0x86
	.sleb128 6
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL32
	.uaword	.LVL36
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL36
	.uaword	.LVL37
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL34
	.uaword	.LVL38
	.uahalf	0x2
	.byte	0x86
	.sleb128 6
	.uaword	.LVL42
	.uaword	.LFE188
	.uahalf	0x2
	.byte	0x86
	.sleb128 6
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL34
	.uaword	.LVL35
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL35
	.uaword	.LVL36
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL36
	.uaword	.LVL37
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL42
	.uaword	.LVL43
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL43
	.uaword	.LFE188
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL35
	.uaword	.LVL36
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL36
	.uaword	.LVL37
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL44
	.uaword	.LVL54
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL54
	.uaword	.LVL65
	.uahalf	0x1
	.byte	0x6e
	.uaword	.LVL65
	.uaword	.LVL66
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL66
	.uaword	.LFE185
	.uahalf	0x1
	.byte	0x6e
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL44
	.uaword	.LVL55
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL55
	.uaword	.LVL65
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL65
	.uaword	.LVL67-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL67-1
	.uaword	.LFE185
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST42:
	.uaword	.LVL44
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL56
	.uaword	.LVL61
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL61
	.uaword	.LVL65
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.uaword	.LVL65
	.uaword	.LVL67-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL67-1
	.uaword	.LFE185
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST43:
	.uaword	.LVL44
	.uaword	.LVL46
	.uahalf	0x2
	.byte	0x86
	.sleb128 28
	.uaword	0
	.uaword	0
.LLST44:
	.uaword	.LVL47
	.uaword	.LVL50
	.uahalf	0x2
	.byte	0x86
	.sleb128 6
	.uaword	.LVL50
	.uaword	.LVL51
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST45:
	.uaword	.LVL47
	.uaword	.LVL49
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL49
	.uaword	.LVL57-1
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL65
	.uaword	.LVL67-1
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST46:
	.uaword	.LVL48
	.uaword	.LVL49
	.uahalf	0x2
	.byte	0x86
	.sleb128 6
	.uaword	0
	.uaword	0
.LLST47:
	.uaword	.LVL52
	.uaword	.LVL58
	.uahalf	0x3
	.byte	0x8
	.byte	0x80
	.byte	0x9f
	.uaword	.LVL65
	.uaword	.LFE185
	.uahalf	0x3
	.byte	0x8
	.byte	0x80
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST48:
	.uaword	.LVL52
	.uaword	.LVL56
	.uahalf	0x2
	.byte	0x86
	.sleb128 6
	.uaword	.LVL56
	.uaword	.LVL57-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 6
	.uaword	.LVL65
	.uaword	.LVL67-1
	.uahalf	0x2
	.byte	0x86
	.sleb128 6
	.uaword	0
	.uaword	0
.LLST49:
	.uaword	.LVL59
	.uaword	.LVL61
	.uahalf	0x2
	.byte	0x8f
	.sleb128 6
	.uaword	.LVL61
	.uaword	.LVL63
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL63
	.uaword	.LVL64
	.uahalf	0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x23
	.uleb128 0x6
	.uaword	0
	.uaword	0
.LLST50:
	.uaword	.LVL59
	.uaword	.LVL62
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL62
	.uaword	.LVL65
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST51:
	.uaword	.LVL60
	.uaword	.LVL61
	.uahalf	0x2
	.byte	0x8f
	.sleb128 6
	.uaword	.LVL61
	.uaword	.LVL62
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST52:
	.uaword	.LVL68
	.uaword	.LVL69
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL69
	.uaword	.LVL70
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL70
	.uaword	.LVL71
	.uahalf	0x6
	.byte	0x3
	.uaword	NvM_Prv_JobWrite_CalcNvCrc
	.byte	0x9f
	.uaword	.LVL71
	.uaword	.LVL72
	.uahalf	0x6
	.byte	0x3
	.uaword	NvM_Prv_JobWrite_AppendAdminData
	.byte	0x9f
	.uaword	.LVL72
	.uaword	.LVL73
	.uahalf	0x6
	.byte	0x3
	.uaword	NvM_Prv_JobWrite_GetUserData
	.byte	0x9f
	.uaword	.LVL73
	.uaword	.LVL74
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL74
	.uaword	.LFE184
	.uahalf	0x6
	.byte	0x3
	.uaword	NvM_Prv_JobWrite_DoMemIf
	.byte	0x9f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x4c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB187
	.uaword	.LFE187-.LFB187
	.uaword	.LFB190
	.uaword	.LFE190-.LFB190
	.uaword	.LFB189
	.uaword	.LFE189-.LFB189
	.uaword	.LFB186
	.uaword	.LFE186-.LFB186
	.uaword	.LFB188
	.uaword	.LFE188-.LFB188
	.uaword	.LFB185
	.uaword	.LFE185-.LFB185
	.uaword	.LFB184
	.uaword	.LFE184-.LFB184
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB48
	.uaword	.LBE48
	.uaword	.LBB51
	.uaword	.LBE51
	.uaword	0
	.uaword	0
	.uaword	.LBB66
	.uaword	.LBE66
	.uaword	.LBB69
	.uaword	.LBE69
	.uaword	0
	.uaword	0
	.uaword	.LBB83
	.uaword	.LBE83
	.uaword	.LBB86
	.uaword	.LBE86
	.uaword	0
	.uaword	0
	.uaword	.LBB87
	.uaword	.LBE87
	.uaword	.LBB98
	.uaword	.LBE98
	.uaword	0
	.uaword	0
	.uaword	.LBB89
	.uaword	.LBE89
	.uaword	.LBB95
	.uaword	.LBE95
	.uaword	0
	.uaword	0
	.uaword	.LBB92
	.uaword	.LBE92
	.uaword	.LBB96
	.uaword	.LBE96
	.uaword	0
	.uaword	0
	.uaword	.LBB115
	.uaword	.LBE115
	.uaword	.LBB130
	.uaword	.LBE130
	.uaword	0
	.uaword	0
	.uaword	.LBB121
	.uaword	.LBE121
	.uaword	.LBB128
	.uaword	.LBE128
	.uaword	0
	.uaword	0
	.uaword	.LBB143
	.uaword	.LBE143
	.uaword	.LBB148
	.uaword	.LBE148
	.uaword	0
	.uaword	0
	.uaword	.LFB187
	.uaword	.LFE187
	.uaword	.LFB190
	.uaword	.LFE190
	.uaword	.LFB189
	.uaword	.LFE189
	.uaword	.LFB186
	.uaword	.LFE186
	.uaword	.LFB188
	.uaword	.LFE188
	.uaword	.LFB185
	.uaword	.LFE185
	.uaword	.LFB184
	.uaword	.LFE184
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"Buffer_pu8"
.LASF6:
	.string	"JobData_pcst"
.LASF4:
	.string	"stJob_pen"
.LASF5:
	.string	"JobResult_pst"
.LASF1:
	.string	"OffsetPlainData_u16"
.LASF2:
	.string	"idBlock_uo"
.LASF3:
	.string	"WriteRamBlockToNvm_pfct"
	.extern	NvM_Prv_InternalBuffer_CopyData,STT_FUNC,0
	.extern	NvM_Prv_ExplicitSync_CopyData,STT_FUNC,0
	.extern	NvM_Prv_Crc_CheckRamBlockCrc,STT_FUNC,0
	.extern	NvM_Prv_stBlock_au8,STT_OBJECT,60
	.extern	NvM_Prv_Crc_AppendCrc,STT_FUNC,0
	.extern	NvM_Prv_Crc_SetRamBlockCrc,STT_FUNC,0
	.extern	NvM_Prv_JobResource_DoStateMachine,STT_FUNC,0
	.extern	NvM_Prv_BlockDescriptors_acst,STT_OBJECT,3120
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
