	.file	"NvM_ProcessMultiBlock.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.NvM_Prv_FinishMulti,"ax",@progbits
	.align 1
	.type	NvM_Prv_FinishMulti, @function
NvM_Prv_FinishMulti:
.LFB121:
	.file 1 "bsw\\NvM\\src\\Internal\\ProcessMultiBlock\\NvM_ProcessMultiBlock.c"
	.loc 1 307 0
.LVL0:
	.loc 1 311 0
	ld.bu	%d15, [%a4]0
	.loc 1 307 0
	mov.aa	%a15, %a4
	.loc 1 311 0
	eq	%d15, %d15, 254
	.loc 1 313 0
	mov	%d8, 34
	.loc 1 311 0
	jnz	%d15, .L2
	.loc 1 318 0
	ld.hu	%d2, [%a4] 4
	mov	%d15, 1
	sh	%d15, %d15, %d2
	extr.u	%d8, %d15, 0, 16
.LVL1:
.L2:
	.loc 1 321 0
	call	NvM_Prv_JobQueue_IsEmpty
.LVL2:
	.loc 1 339 0
	mov	%d15, 14
	.loc 1 321 0
	jnz	%d2, .L17
.LVL3:
.L12:
	.loc 1 343 0
	mov	%d2, %d15
	ret
.LVL4:
.L17:
.LBB76:
.LBB77:
	.file 2 ".\\output\\inc/..\\..\\bsw\\NvM\\src\\Internal\\BlockData\\NvM_Prv_BlockData_Inl.h"
	.loc 2 416 0
	movh.a	%a12, hi:NvM_Prv_stRequests_au16
	ld.h	%d15, [%a12] lo:NvM_Prv_stRequests_au16
	andn	%d15, %d15, %d8
	extr.u	%d15, %d15, 0, 16
	st.h	[%a12] lo:NvM_Prv_stRequests_au16, %d15
.LBE77:
.LBE76:
	.loc 1 325 0
	ld.bu	%d4, [%a15]0
.LVL5:
.LBB78:
.LBB79:
.LBB80:
	.loc 1 406 0
	ne	%d2, %d4, 13
	jz	%d2, .L18
.LVL6:
.LBE80:
.LBE79:
.LBB82:
	.loc 1 366 0
	ne	%d15, %d4, 249
	.loc 1 370 0
	sel	%d4, %d15, %d4, 13
.LVL7:
.L7:
	.loc 1 373 0
	movh.a	%a2, hi:NvM_Prv_Multi_Result_uo
	ld.bu	%d5, [%a2] lo:NvM_Prv_Multi_Result_uo
.LVL8:
.LBB83:
.LBB84:
	.loc 2 383 0
	movh.a	%a2, hi:NvM_Prv_stRequestResult_au8
	st.b	[%a2] lo:NvM_Prv_stRequestResult_au8, %d5
.LVL9:
.LBE84:
.LBE83:
	.loc 1 381 0
	call	BswM_NvM_CurrentJobMode
.LVL10:
.LBE82:
.LBE78:
.LBB86:
.LBB87:
	.loc 1 439 0
	ld.bu	%d15, [%a15]0
	ne	%d15, %d15, 13
	jz	%d15, .L19
.L6:
.LVL11:
.LBE87:
.LBE86:
	.loc 1 334 0
	mov	%d15, 0
	movh.a	%a15, hi:NvM_Prv_ProcessMulti_pfct
.LVL12:
	st.w	[%a15] lo:NvM_Prv_ProcessMulti_pfct, %d15
.LVL13:
	.loc 1 343 0
	mov	%d2, %d15
	ret
.LVL14:
.L18:
.LBB100:
.LBB85:
.LBB81:
	.loc 1 406 0
	jz.t	%d15, 4, .L7
.LVL15:
.L5:
.LBE81:
.LBE85:
.LBE100:
.LBB101:
.LBB96:
.LBB88:
.LBB89:
	.loc 1 595 0
	mov	%d15, -7
	st.b	[%a15]0, %d15
	.loc 1 597 0
	mov	%d15, 2
	st.h	[%a15] 2, %d15
	.loc 1 598 0
	mov	%d15, 4
	st.h	[%a15] 4, %d15
	.loc 1 599 0
	mov	%d15, 0
	st.w	[%a15] 8, %d15
.LBE89:
.LBE88:
.LBE96:
.LBE101:
	.loc 1 329 0
	movh	%d15, hi:NvM_Prv_ProcessUserBlocks
	addi	%d15, %d15, lo:NvM_Prv_ProcessUserBlocks
.LBB102:
.LBB97:
.LBB93:
.LBB90:
	.loc 1 601 0
	mov	%e4, 249
.LBE90:
.LBE93:
.LBE97:
.LBE102:
	.loc 1 329 0
	movh.a	%a15, hi:NvM_Prv_ProcessMulti_pfct
.LVL16:
.LBB103:
.LBB98:
.LBB94:
.LBB91:
	.loc 1 601 0
	call	NvM_Prv_UpdateActiveServiceData
.LVL17:
.LBE91:
.LBE94:
.LBE98:
.LBE103:
	.loc 1 329 0
	st.w	[%a15] lo:NvM_Prv_ProcessMulti_pfct, %d15
	.loc 1 309 0
	mov	%d15, 0
	j	.L12
.LVL18:
.L19:
	ld.h	%d15, [%a12] lo:NvM_Prv_stRequests_au16
.LBB104:
.LBB99:
.LBB95:
.LBB92:
	.loc 1 590 0
	jz.t	%d15, 4, .L6
	j	.L5
.LBE92:
.LBE95:
.LBE99:
.LBE104:
.LFE121:
	.size	NvM_Prv_FinishMulti, .-NvM_Prv_FinishMulti
.section .text.NvM_Prv_ProcessCancel,"ax",@progbits
	.align 1
	.type	NvM_Prv_ProcessCancel, @function
NvM_Prv_ProcessCancel:
.LFB120:
	.loc 1 250 0
.LVL19:
	.loc 1 254 0
	ld.bu	%d15, [%a4]0
	.loc 1 250 0
	mov.aa	%a15, %a4
	.loc 1 254 0
	ne	%d15, %d15, 13
	jz	%d15, .L29
	.loc 1 260 0
	call	NvM_Prv_JobQueue_IsEmpty
.LVL20:
	.loc 1 273 0
	mov	%d15, 14
	.loc 1 260 0
	jnz	%d2, .L30
.L22:
.LVL21:
	.loc 1 277 0
	mov	%d2, %d15
	ret
.LVL22:
.L29:
.LBB111:
.LBB112:
	.loc 2 416 0
	movh.a	%a2, hi:NvM_Prv_stRequests_au16
	ld.h	%d15, [%a2] lo:NvM_Prv_stRequests_au16
	andn	%d15, %d15, ~(-17)
	st.h	[%a2] lo:NvM_Prv_stRequests_au16, %d15
.LBE112:
.LBE111:
	.loc 1 260 0
	call	NvM_Prv_JobQueue_IsEmpty
.LVL23:
	.loc 1 273 0
	mov	%d15, 14
	.loc 1 260 0
	jz	%d2, .L22
.LVL24:
.L30:
.LBB113:
.LBB114:
	.loc 1 262 0
	movh.a	%a12, hi:NvM_Prv_Multi_Cancel_pfct
	ld.a	%a2, [%a12] lo:NvM_Prv_Multi_Cancel_pfct
	calli	%a2
.LVL25:
	jz	%d2, .L23
	.loc 1 264 0
	mov	%d15, 6
	movh.a	%a2, hi:NvM_Prv_Multi_Result_uo
	st.b	[%a2] lo:NvM_Prv_Multi_Result_uo, %d15
.L23:
	.loc 1 267 0
	mov	%d15, 60
	st.h	[%a15] 2, %d15
	.loc 1 268 0
	mov	%d15, 0
	st.w	[%a12] lo:NvM_Prv_Multi_Cancel_pfct, %d15
	.loc 1 269 0
	movh	%d15, hi:NvM_Prv_FinishMulti
	addi	%d15, %d15, lo:NvM_Prv_FinishMulti
	movh.a	%a15, hi:NvM_Prv_ProcessMulti_pfct
.LVL26:
	st.w	[%a15] lo:NvM_Prv_ProcessMulti_pfct, %d15
.LVL27:
	mov	%d15, 0
.LVL28:
.LBE114:
.LBE113:
	.loc 1 277 0
	mov	%d2, %d15
	ret
.LFE120:
	.size	NvM_Prv_ProcessCancel, .-NvM_Prv_ProcessCancel
.section .text.NvM_Prv_ProcessUserBlocks,"ax",@progbits
	.align 1
	.type	NvM_Prv_ProcessUserBlocks, @function
NvM_Prv_ProcessUserBlocks:
.LFB119:
	.loc 1 206 0
.LVL29:
	.loc 1 209 0
	ld.hu	%d15, [%a4] 2
	ld.hu	%d4, [%a4] 4
.LVL30:
.LBB137:
.LBB138:
	.loc 1 475 0
	mov	%d5, 1
	sh	%d5, %d5, %d4
	.loc 1 478 0
	ge.u	%d2, %d15, 60
.LBE138:
.LBE137:
	.loc 1 206 0
	sub.a	%SP, 8
.LCFI0:
.LBB145:
.LBB143:
	.loc 1 475 0
	extr.u	%d5, %d5, 0, 16
.LVL31:
	.loc 1 478 0
	jnz	%d2, .L32
.LVL32:
.LBB139:
.LBB140:
	.loc 2 308 0
	movh.a	%a3, hi:NvM_Prv_stRequests_au16
	lea	%a3, [%a3] lo:NvM_Prv_stRequests_au16
	addsc.a	%a15, %a3, %d15, 1
	mov	%d3, %d15
	ld.h	%d2, [%a15]0
.LBE140:
.LBE139:
	.loc 1 478 0
	and	%d2, %d5
	jnz	%d2, .L33
	add	%d15, 1
.LVL33:
	extr.u	%d7, %d15, 0, 16
	mov	%d6, 0
	rsub	%d15, %d7, 60
	extr.u	%d15, %d15, 0, 16
	mov.a	%a15, %d15
	extr	%d15, %d7, 0, 16
	mov.d	%d2, %a15
	ge.u	%d15, %d15, 61
	cmov	%d2, %d15, 0
	mov.a	%a15, %d2
.LVL34:
.L34:
	add	%d15, %d7, %d6
	extr.u	%d15, %d15, 0, 16
.LVL35:
	loop	%a15, .L54
.LVL36:
.L32:
.LBE143:
.LBE145:
	.loc 1 209 0
	st.h	[%a4] 2, %d15
.LVL37:
.LBB146:
.LBB147:
	.loc 1 231 0
	call	NvM_Prv_JobQueue_IsEmpty
.LVL38:
	jnz	%d2, .L42
	.loc 1 241 0
	mov	%d2, 14
.LVL39:
	ret
.LVL40:
.L54:
.LBE147:
.LBE146:
.LBB149:
.LBB144:
.LBB142:
.LBB141:
	.loc 2 308 0
	addsc.a	%a2, %a3, %d15, 1
	mov	%d3, %d15
	ld.h	%d2, [%a2]0
	add	%d6, 1
.LVL41:
.LBE141:
.LBE142:
	.loc 1 478 0
	and	%d2, %d5
	jz	%d2, .L34
.LVL42:
.L33:
.LBE144:
.LBE149:
.LBB150:
.LBB151:
	.loc 1 492 0
	ld.bu	%d2, [%a4]0
.LBE151:
.LBE150:
	.loc 1 209 0
	st.h	[%a4] 2, %d15
.LVL43:
.LBB165:
.LBB162:
	.loc 1 492 0
	eq	%d5, %d2, 12
.LVL44:
	jnz	%d5, .L35
	eq	%d2, %d2, 251
	jz	%d2, .L63
.LVL45:
.LBB152:
.LBB153:
.LBB154:
.LBB155:
	.file 3 ".\\output\\inc/..\\..\\bsw\\NvM\\src\\Internal\\BlockData\\NvM_Prv_BlockDescriptor_Inl.h"
	.loc 3 208 0
	mul	%d3, %d3, 52
.LVL46:
	movh.a	%a15, hi:NvM_Prv_BlockDescriptors_acst
	lea	%a15, [%a15] lo:NvM_Prv_BlockDescriptors_acst
	addsc.a	%a2, %a15, %d3, 0
.LBE155:
.LBE154:
	.loc 1 515 0
	mov	%d2, 9
	.loc 1 508 0
	ld.bu	%d4, [%a2] 44
.LVL47:
	jne	%d4, 2, .L64
.LVL48:
.L43:
.LBE153:
.LBE152:
.LBE162:
.LBE165:
.LBB166:
.LBB167:
	.loc 3 271 0
	addsc.a	%a15, %a15, %d3, 0
	.loc 3 269 0
	mov	%d4, 0
	.loc 3 271 0
	ld.a	%a15, [%a15] 16
	.loc 3 270 0
	jz.a	%a15, .L40
	.loc 3 273 0
	ld.w	%d4, [%a15]0
.LVL49:
.LBE167:
.LBE166:
	.loc 1 226 0
	st.w	[%a4] 8, %d4
	ret
.LVL50:
.L42:
.LBB169:
.LBB148:
	.loc 1 236 0
	movh	%d15, hi:NvM_Prv_FinishMulti
	addi	%d15, %d15, lo:NvM_Prv_FinishMulti
	movh.a	%a15, hi:NvM_Prv_ProcessMulti_pfct
	st.w	[%a15] lo:NvM_Prv_ProcessMulti_pfct, %d15
	.loc 1 207 0
	mov	%d2, 0
	ret
.LVL51:
.L63:
.LBE148:
.LBE169:
.LBB170:
.LBB163:
	.loc 1 538 0
	st.a	[%SP] 4, %a4
.LVL52:
	call	NvM_Prv_GetJobId
.LVL53:
	ld.a	%a4, [%SP] 4
.LBE163:
.LBE170:
.LBB171:
.LBB168:
	.loc 3 269 0
	mov	%d4, 0
	ld.hu	%d15, [%a4] 2
.LVL54:
	.loc 3 270 0
	ge.u	%d3, %d15, 60
	jz	%d3, .L65
.LVL55:
.L40:
.LBE168:
.LBE171:
	.loc 1 226 0
	st.w	[%a4] 8, %d4
	ret
.LVL56:
.L35:
	movh.a	%a15, hi:NvM_Prv_BlockDescriptors_acst
.LBB172:
.LBB164:
	.loc 1 498 0
	mov	%d2, 8
	lea	%a15, [%a15] lo:NvM_Prv_BlockDescriptors_acst
	mul	%d3, %d3, 52
	.loc 1 496 0
	jeq	%d15, 1, .L43
	.loc 1 502 0
	mov	%d2, 1
.LVL57:
	mul	%d3, %d15, 52
	j	.L43
.LVL58:
.L64:
.LBB161:
.LBB160:
.LBB156:
.LBB157:
	.loc 3 94 0
	ld.w	%d4, [%a2] 20
.LBE157:
.LBE156:
	.loc 1 511 0
	mov	%d2, 4
.LBB159:
.LBB158:
	.loc 3 94 0
	jnz	%d4, .L43
	.loc 3 95 0
	ld.w	%d4, [%a2] 32
	jnz	%d4, .L43
.LBE158:
.LBE159:
	.loc 1 515 0
	mov	%d2, 9
.LVL59:
	mul	%d3, %d15, 52
	j	.L43
.LVL60:
.L65:
	movh.a	%a15, hi:NvM_Prv_BlockDescriptors_acst
	lea	%a15, [%a15] lo:NvM_Prv_BlockDescriptors_acst
.LVL61:
	mul	%d3, %d15, 52
	j	.L43
.LBE160:
.LBE161:
.LBE164:
.LBE172:
.LFE119:
	.size	NvM_Prv_ProcessUserBlocks, .-NvM_Prv_ProcessUserBlocks
.section .text.NvM_Prv_ProcessConfigId,"ax",@progbits
	.align 1
	.type	NvM_Prv_ProcessConfigId, @function
NvM_Prv_ProcessConfigId:
.LFB118:
	.loc 1 179 0
.LVL62:
	sub.a	%SP, 8
.LCFI1:
	.loc 1 179 0
	mov.aa	%a15, %a4
	.loc 1 182 0
	call	NvM_Prv_JobQueue_IsEmpty
.LVL63:
	.loc 1 198 0
	mov	%d5, 14
	.loc 1 182 0
	jnz	%d2, .L85
.L67:
.LVL64:
	.loc 1 202 0
	mov	%d2, %d5
	ret
.LVL65:
.L85:
.LBB187:
.LBB188:
.LBB189:
.LBB190:
	.loc 2 308 0
	movh.a	%a2, hi:NvM_Prv_stRequests_au16
.LBE190:
.LBE189:
	.loc 1 184 0
	ld.hu	%d4, [%a15] 4
.LVL66:
.LBB194:
.LBB191:
	.loc 2 308 0
	lea	%a2, [%a2] lo:NvM_Prv_stRequests_au16
.LBE191:
.LBE194:
	.loc 1 184 0
	mov	%d2, 1
.LBB195:
.LBB192:
	.loc 2 308 0
	ld.h	%d15, [%a2] 2
.LBE192:
.LBE195:
	.loc 1 184 0
	sh	%d2, %d2, %d4
.LBB196:
.LBB193:
	.loc 2 308 0
	and	%d15, %d2
.LBE193:
.LBE196:
	.loc 1 184 0
	extr.u	%d15, %d15, 0, 16
	jnz	%d15, .L86
	.loc 1 193 0
	movh	%d15, hi:NvM_Prv_ProcessUserBlocks
	addi	%d15, %d15, lo:NvM_Prv_ProcessUserBlocks
	movh.a	%a15, hi:NvM_Prv_ProcessMulti_pfct
.LVL67:
	.loc 1 180 0
	mov	%d5, 0
.LVL68:
	.loc 1 193 0
	st.w	[%a15] lo:NvM_Prv_ProcessMulti_pfct, %d15
.LBE188:
.LBE187:
	.loc 1 202 0
	mov	%d2, %d5
	ret
.LVL69:
.L86:
.LBB212:
.LBB211:
.LBB197:
.LBB198:
	.loc 1 492 0
	ld.bu	%d2, [%a15]0
	.loc 1 498 0
	mov	%d5, 8
	.loc 1 492 0
	eq	%d3, %d2, 12
	jnz	%d3, .L70
	eq	%d2, %d2, 251
	jz	%d2, .L84
.LVL70:
.LBB199:
.LBB200:
.LBB201:
.LBB202:
	.loc 3 208 0
	movh.a	%a2, hi:NvM_Prv_BlockDescriptors_acst
	lea	%a2, [%a2] lo:NvM_Prv_BlockDescriptors_acst
.LBE202:
.LBE201:
	.loc 1 508 0
	ld.bu	%d2, [%a2] 96
	.loc 1 515 0
	mov	%d5, 9
	.loc 1 508 0
	jeq	%d2, 2, .L70
.LVL71:
.LBB203:
.LBB204:
	.loc 3 94 0
	ld.w	%d2, [%a2] 72
.LBE204:
.LBE203:
	.loc 1 511 0
	mov	%d5, 4
.LBB206:
.LBB205:
	.loc 3 94 0
	jnz	%d2, .L70
	.loc 3 95 0
	ld.w	%d15, [%a2] 84
.LBE205:
.LBE206:
	.loc 1 511 0
	mov	%d5, 9
	cmov	%d5, %d15, 4
.LVL72:
.L70:
.LBE200:
.LBE199:
.LBE198:
.LBE197:
	.loc 1 189 0
	ld.hu	%d2, [%a15] 2
.LVL73:
.LBB208:
.LBB209:
	.loc 3 269 0
	mov	%d4, 0
	.loc 3 270 0
	ge.u	%d3, %d2, 60
	jnz	%d3, .L72
	.loc 3 271 0
	movh.a	%a2, hi:NvM_Prv_BlockDescriptors_acst
	mov.d	%d15, %a2
	addi	%d3, %d15, lo:NvM_Prv_BlockDescriptors_acst
	madd	%d15, %d3, %d2, 52
	mov.a	%a2, %d15
	ld.a	%a2, [%a2] 16
	.loc 3 270 0
	jz.a	%a2, .L72
	.loc 3 273 0
	ld.w	%d4, [%a2]0
.LVL74:
.L72:
.LBE209:
.LBE208:
	.loc 1 189 0
	st.w	[%a15] 8, %d4
	j	.L67
.LVL75:
.L84:
.LBB210:
.LBB207:
	.loc 1 538 0
	call	NvM_Prv_GetJobId
.LVL76:
	mov	%d5, %d2
.LVL77:
	j	.L70
.LBE207:
.LBE210:
.LBE211:
.LBE212:
.LFE118:
	.size	NvM_Prv_ProcessConfigId, .-NvM_Prv_ProcessConfigId
.section .text.NvM_Prv_Multi_Initialize,"ax",@progbits
	.align 1
	.global	NvM_Prv_Multi_Initialize
	.type	NvM_Prv_Multi_Initialize, @function
NvM_Prv_Multi_Initialize:
.LFB111:
	.loc 1 94 0
	.loc 1 95 0
	mov	%d15, 0
	movh.a	%a15, hi:NvM_Prv_ProcessMulti_pfct
	st.w	[%a15] lo:NvM_Prv_ProcessMulti_pfct, %d15
	.loc 1 96 0
	movh.a	%a15, hi:NvM_Prv_Multi_Cancel_pfct
	st.w	[%a15] lo:NvM_Prv_Multi_Cancel_pfct, %d15
	.loc 1 97 0
	movh.a	%a15, hi:NvM_Prv_Multi_Result_uo
	st.b	[%a15] lo:NvM_Prv_Multi_Result_uo, %d15
	ret
.LFE111:
	.size	NvM_Prv_Multi_Initialize, .-NvM_Prv_Multi_Initialize
.section .text.NvM_Prv_Multi_IsInProgress,"ax",@progbits
	.align 1
	.global	NvM_Prv_Multi_IsInProgress
	.type	NvM_Prv_Multi_IsInProgress, @function
NvM_Prv_Multi_IsInProgress:
.LFB112:
	.loc 1 101 0
	.loc 1 102 0
	movh.a	%a15, hi:NvM_Prv_ProcessMulti_pfct
	ld.w	%d2, [%a15] lo:NvM_Prv_ProcessMulti_pfct
	.loc 1 103 0
	ne	%d2, %d2, 0
	ret
.LFE112:
	.size	NvM_Prv_Multi_IsInProgress, .-NvM_Prv_Multi_IsInProgress
.section .text.NvM_Prv_Multi_SetResult,"ax",@progbits
	.align 1
	.global	NvM_Prv_Multi_SetResult
	.type	NvM_Prv_Multi_SetResult, @function
NvM_Prv_Multi_SetResult:
.LFB113:
	.loc 1 106 0
.LVL78:
	.loc 1 107 0
	movh.a	%a15, hi:NvM_Prv_Multi_Result_uo
	st.b	[%a15] lo:NvM_Prv_Multi_Result_uo, %d4
	ret
.LFE113:
	.size	NvM_Prv_Multi_SetResult, .-NvM_Prv_Multi_SetResult
.section .text.NvM_Prv_Multi_GetResult,"ax",@progbits
	.align 1
	.global	NvM_Prv_Multi_GetResult
	.type	NvM_Prv_Multi_GetResult, @function
NvM_Prv_Multi_GetResult:
.LFB114:
	.loc 1 111 0
	.loc 1 113 0
	movh.a	%a15, hi:NvM_Prv_Multi_Result_uo
	ld.bu	%d2, [%a15] lo:NvM_Prv_Multi_Result_uo
	ret
.LFE114:
	.size	NvM_Prv_Multi_GetResult, .-NvM_Prv_Multi_GetResult
.section .text.NvM_Prv_Multi_Cancel,"ax",@progbits
	.align 1
	.global	NvM_Prv_Multi_Cancel
	.type	NvM_Prv_Multi_Cancel, @function
NvM_Prv_Multi_Cancel:
.LFB115:
	.loc 1 116 0
.LVL79:
	.loc 1 118 0
	movh.a	%a15, hi:NvM_Prv_Multi_Cancel_pfct
	ld.w	%d15, [%a15] lo:NvM_Prv_Multi_Cancel_pfct
	jz	%d15, .L93
	ret
.L93:
	.loc 1 120 0
	st.a	[%a15] lo:NvM_Prv_Multi_Cancel_pfct, %a4
	ret
.LFE115:
	.size	NvM_Prv_Multi_Cancel, .-NvM_Prv_Multi_Cancel
.section .text.NvM_Prv_Multi_GoToNextBlock,"ax",@progbits
	.align 1
	.global	NvM_Prv_Multi_GoToNextBlock
	.type	NvM_Prv_Multi_GoToNextBlock, @function
NvM_Prv_Multi_GoToNextBlock:
.LFB116:
	.loc 1 125 0
.LVL80:
	.loc 1 126 0
	ld.h	%d15, [%a4] 2
	add	%d15, 1
	st.h	[%a4] 2, %d15
	ret
.LFE116:
	.size	NvM_Prv_Multi_GoToNextBlock, .-NvM_Prv_Multi_GoToNextBlock
.section .text.NvM_Prv_Multi_Process,"ax",@progbits
	.align 1
	.global	NvM_Prv_Multi_Process
	.type	NvM_Prv_Multi_Process, @function
NvM_Prv_Multi_Process:
.LFB117:
	.loc 1 130 0
.LVL81:
	.loc 1 134 0
	movh.a	%a2, hi:NvM_Prv_ProcessMulti_pfct
	ld.w	%d15, [%a2] lo:NvM_Prv_ProcessMulti_pfct
	.loc 1 130 0
	mov.aa	%a15, %a4
	.loc 1 134 0
	jz	%d15, .L108
.L107:
.LVL82:
	.loc 1 154 0
	movh.a	%a3, hi:NvM_Prv_Multi_Cancel_pfct
	ld.w	%d2, [%a3] lo:NvM_Prv_Multi_Cancel_pfct
	jz	%d2, .L101
	.loc 1 156 0
	movh	%d15, hi:NvM_Prv_ProcessCancel
	addi	%d15, %d15, lo:NvM_Prv_ProcessCancel
	st.w	[%a2] lo:NvM_Prv_ProcessMulti_pfct, %d15
.L101:
	movh.a	%a12, hi:NvM_Prv_ProcessMulti_pfct
	lea	%a12, [%a12] lo:NvM_Prv_ProcessMulti_pfct
.LVL83:
.L99:
	.loc 1 162 0
	mov.a	%a2, %d15
	mov.aa	%a4, %a15
	calli	%a2
.LVL84:
	.loc 1 160 0
	ld.w	%d15, [%a12]0
	ne	%d3, %d15, 0
	and.eq	%d3, %d2, 0
	jnz	%d3, .L99
	ret
.LVL85:
.L108:
	.loc 1 136 0
	ld.hu	%d2, [%a4] 2
	.loc 1 138 0
	movh	%d15, hi:NvM_Prv_ProcessConfigId
	addi	%d15, %d15, lo:NvM_Prv_ProcessConfigId
	.loc 1 136 0
	jeq	%d2, 1, .L97
	.loc 1 142 0
	movh	%d15, hi:NvM_Prv_ProcessUserBlocks
	addi	%d15, %d15, lo:NvM_Prv_ProcessUserBlocks
.L97:
	.loc 1 146 0
	mov	%d2, 0
	movh.a	%a3, hi:NvM_Prv_Multi_Result_uo
	st.w	[%a2] lo:NvM_Prv_ProcessMulti_pfct, %d15
	st.b	[%a3] lo:NvM_Prv_Multi_Result_uo, %d2
	j	.L107
.LFE117:
	.size	NvM_Prv_Multi_Process, .-NvM_Prv_Multi_Process
.section .bss.a1.NvM_Prv_Multi_Result_uo,"aw",@nobits
	.type	NvM_Prv_Multi_Result_uo, @object
	.size	NvM_Prv_Multi_Result_uo, 1
NvM_Prv_Multi_Result_uo:
	.zero	1
.section .bss.a4.NvM_Prv_Multi_Cancel_pfct,"aw",@nobits
	.align 2
	.type	NvM_Prv_Multi_Cancel_pfct, @object
	.size	NvM_Prv_Multi_Cancel_pfct, 4
NvM_Prv_Multi_Cancel_pfct:
	.zero	4
.section .bss.a4.NvM_Prv_ProcessMulti_pfct,"aw",@nobits
	.align 2
	.type	NvM_Prv_ProcessMulti_pfct, @object
	.size	NvM_Prv_ProcessMulti_pfct, 4
NvM_Prv_ProcessMulti_pfct:
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
	.uaword	.LFB121
	.uaword	.LFE121-.LFB121
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB120
	.uaword	.LFE120-.LFB120
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB119
	.uaword	.LFE119-.LFB119
	.byte	0x4
	.uaword	.LCFI0-.LFB119
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB118
	.uaword	.LFE118-.LFB118
	.byte	0x4
	.uaword	.LCFI1-.LFB118
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB111
	.uaword	.LFE111-.LFB111
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB112
	.uaword	.LFE112-.LFB112
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB113
	.uaword	.LFE113-.LFB113
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB114
	.uaword	.LFE114-.LFB114
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB115
	.uaword	.LFE115-.LFB115
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB116
	.uaword	.LFE116-.LFB116
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB117
	.uaword	.LFE117-.LFB117
	.align 2
.LEFDE20:
.section .text,"ax",@progbits
.Letext0:
	.file 4 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 5 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 6 ".\\output\\inc/..\\..\\main\\_MainModule\\CalibData\\MAIN_CalibData.h"
	.file 7 ".\\output\\inc/..\\..\\rte\\Rte_Type.h"
	.file 8 ".\\output\\inc/..\\..\\bsw\\NvM\\api\\NvM_Types.h"
	.file 9 ".\\output\\inc/..\\..\\bsw\\NvM\\src\\Internal\\BlockData\\NvM_Prv_BlockDescriptor.h"
	.file 10 "bsw\\NvM\\src\\Internal\\ProcessMultiBlock\\NvM_Prv_ProcessMultiBlock.h"
	.file 11 ".\\output\\inc/..\\..\\bsw\\NvM\\src\\Internal\\BlockData\\NvM_Prv_BlockData.h"
	.file 12 ".\\output\\inc/..\\..\\bsw\\BswM\\api\\BswM_NvM.h"
	.file 13 ".\\output\\inc/..\\..\\bsw\\NvM\\src\\NvM_Prv.h"
	.file 14 ".\\output\\inc/..\\..\\bsw\\NvM\\src\\Internal\\QueueHandling\\NvM_Prv_JobQueue.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x1ed1
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\NvM\\src\\Internal\\ProcessMultiBlock\\NvM_ProcessMultiBlock.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x190
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
	.uaword	0x1e9
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
	.uaword	0x215
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
	.uaword	0x251
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
	.uaword	0x1e9
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
	.uaword	0x1dc
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x4
	.string	"eCalibIndex"
	.byte	0x1
	.byte	0x6
	.byte	0x15
	.uaword	0x39b
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_UI_INDEX"
	.sleb128 0
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_VI_INDEX"
	.sleb128 1
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_WI_INDEX"
	.sleb128 2
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_VO_INDEX"
	.sleb128 3
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_VALID_PARAM_NO"
	.sleb128 4
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_MAX_NO"
	.sleb128 16
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.byte	0x1f
	.uaword	0x413
	.uleb128 0x5
	.string	"eMAIN_CALIB_IDX_MCU1"
	.sleb128 0
	.uleb128 0x5
	.string	"eMAIN_CALIB_IDX_MCU2"
	.sleb128 1
	.uleb128 0x5
	.string	"eMAIN_CALIB_IDX_ACM"
	.sleb128 2
	.uleb128 0x5
	.string	"eMAIN_CALIB_IDX_EPS"
	.sleb128 3
	.uleb128 0x5
	.string	"eMAIN_CALIB_ECU_NO"
	.sleb128 4
	.byte	0
	.uleb128 0x4
	.string	"eRcGainIndex"
	.byte	0x1
	.byte	0x6
	.byte	0x27
	.uaword	0x650
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_RC00_INDEX"
	.sleb128 0
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_RC01_INDEX"
	.sleb128 1
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_RC02_INDEX"
	.sleb128 2
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_RC03_INDEX"
	.sleb128 3
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_RC04_INDEX"
	.sleb128 4
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_RC05_INDEX"
	.sleb128 5
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_RC06_INDEX"
	.sleb128 6
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_RC07_INDEX"
	.sleb128 7
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_RC08_INDEX"
	.sleb128 8
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_RC09_INDEX"
	.sleb128 9
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_RC10_INDEX"
	.sleb128 10
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_RC11_INDEX"
	.sleb128 11
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_RC12_INDEX"
	.sleb128 12
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_RC13_INDEX"
	.sleb128 13
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_RC14_INDEX"
	.sleb128 14
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_RC15_INDEX"
	.sleb128 15
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_RC16_INDEX"
	.sleb128 16
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_VALID_RC_NO"
	.sleb128 17
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_MAX_RC_NO"
	.sleb128 25
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.uleb128 0x8
	.byte	0x4
	.uaword	0x1dc
	.uleb128 0x8
	.byte	0x4
	.uaword	0x65e
	.uleb128 0x9
	.uaword	0x207
	.uleb128 0x8
	.byte	0x4
	.uaword	0x669
	.uleb128 0xa
	.uleb128 0xb
	.string	"NvM_BlockIdType"
	.byte	0x7
	.uahalf	0x1ca
	.uaword	0x207
	.uleb128 0xb
	.string	"NvM_RequestResultType"
	.byte	0x7
	.uahalf	0x1d4
	.uaword	0x1dc
	.uleb128 0x8
	.byte	0x4
	.uaword	0x6a6
	.uleb128 0xc
	.byte	0x1
	.uaword	0x2be
	.uleb128 0x8
	.byte	0x4
	.uaword	0x6b2
	.uleb128 0xd
	.byte	0x1
	.uaword	0x2be
	.uaword	0x6c2
	.uleb128 0xe
	.uaword	0x1dc
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0x6c8
	.uleb128 0xc
	.byte	0x1
	.uaword	0x28e
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.byte	0xa2
	.uaword	0x714
	.uleb128 0x5
	.string	"NVM_BLOCK_NATIVE"
	.sleb128 0
	.uleb128 0x5
	.string	"NVM_BLOCK_REDUNDANT"
	.sleb128 1
	.uleb128 0x5
	.string	"NVM_BLOCK_DATASET"
	.sleb128 2
	.byte	0
	.uleb128 0x3
	.string	"NvM_BlockManagementType"
	.byte	0x8
	.byte	0xa6
	.uaword	0x6ce
	.uleb128 0xf
	.byte	0x1
	.byte	0x8
	.uahalf	0x106
	.uaword	0x945
	.uleb128 0x5
	.string	"NvM_Prv_idJob_Idle_e"
	.sleb128 0
	.uleb128 0x5
	.string	"NvM_Prv_idJob_Read_e"
	.sleb128 1
	.uleb128 0x5
	.string	"NvM_Prv_idJob_Write_e"
	.sleb128 2
	.uleb128 0x5
	.string	"NvM_Prv_idJob_Erase_e"
	.sleb128 3
	.uleb128 0x5
	.string	"NvM_Prv_idJob_Restore_e"
	.sleb128 4
	.uleb128 0x5
	.string	"NvM_Prv_idJob_Maintain_e"
	.sleb128 5
	.uleb128 0x5
	.string	"NvM_Prv_idJob_Validate_e"
	.sleb128 6
	.uleb128 0x5
	.string	"NvM_Prv_idJob_Invalidate_e"
	.sleb128 7
	.uleb128 0x5
	.string	"NvM_Prv_idJob_ReadIdConfigForReadAll_e"
	.sleb128 8
	.uleb128 0x5
	.string	"NvM_Prv_idJob_InvalidateForFirstInitAll_e"
	.sleb128 9
	.uleb128 0x5
	.string	"NvM_Prv_idJob_RestoreForImplicitRecovery_e"
	.sleb128 10
	.uleb128 0x5
	.string	"NvM_Prv_idJob_InvalidateForRemoveNonResistant_e"
	.sleb128 11
	.uleb128 0x5
	.string	"NvM_Prv_idJob_RecalcRamBlkCrc_e"
	.sleb128 12
	.uleb128 0x5
	.string	"NvM_Prv_idJob_WriteAll_e"
	.sleb128 13
	.uleb128 0x5
	.string	"NvM_Prv_idJob_Suspend_e"
	.sleb128 14
	.uleb128 0x5
	.string	"NvM_Prv_idJob_Invalid_e"
	.sleb128 15
	.uleb128 0x5
	.string	"NvM_Prv_idJob_Count_e"
	.sleb128 16
	.byte	0
	.uleb128 0xb
	.string	"NvM_Prv_idJob_ten"
	.byte	0x8
	.uahalf	0x111
	.uaword	0x733
	.uleb128 0xf
	.byte	0x1
	.byte	0x8
	.uahalf	0x13e
	.uaword	0xbbb
	.uleb128 0x5
	.string	"NvM_Prv_ServiceBit_ReadAll_e"
	.sleb128 0
	.uleb128 0x5
	.string	"NvM_Prv_ServiceBit_RemoveNonResistant_e"
	.sleb128 1
	.uleb128 0x5
	.string	"NvM_Prv_ServiceBit_WriteAll_e"
	.sleb128 2
	.uleb128 0x5
	.string	"NvM_Prv_ServiceBit_FirstInitAll_e"
	.sleb128 3
	.uleb128 0x5
	.string	"NvM_Prv_ServiceBit_Maintain_e"
	.sleb128 4
	.uleb128 0x5
	.string	"NvM_Prv_ServiceBit_InitAtLayoutChange_e"
	.sleb128 5
	.uleb128 0x5
	.string	"NvM_Prv_ServiceBit_ValidateAll_e"
	.sleb128 6
	.uleb128 0x5
	.string	"NvM_Prv_ServiceBit_NotUsed_0_e"
	.sleb128 7
	.uleb128 0x5
	.string	"NvM_Prv_ServiceBit_Read_e"
	.sleb128 8
	.uleb128 0x5
	.string	"NvM_Prv_ServiceBit_Write_e"
	.sleb128 9
	.uleb128 0x5
	.string	"NvM_Prv_ServiceBit_Invalidate_e"
	.sleb128 10
	.uleb128 0x5
	.string	"NvM_Prv_ServiceBit_Erase_e"
	.sleb128 11
	.uleb128 0x5
	.string	"NvM_Prv_ServiceBit_Restore_e"
	.sleb128 12
	.uleb128 0x5
	.string	"NvM_Prv_ServiceBit_NotUsed_1_e"
	.sleb128 13
	.uleb128 0x5
	.string	"NvM_Prv_ServiceBit_NotUsed_2_e"
	.sleb128 14
	.uleb128 0x5
	.string	"NvM_Prv_ServiceBit_NotUsed_3_e"
	.sleb128 15
	.uleb128 0x5
	.string	"NvM_Prv_ServiceBit_Unspecified_e"
	.sleb128 16
	.uleb128 0x5
	.string	"NvM_Prv_ServiceBit_nr_e"
	.sleb128 17
	.byte	0
	.uleb128 0xb
	.string	"NvM_Prv_ServiceBit_tuo"
	.byte	0x8
	.uahalf	0x147
	.uaword	0x207
	.uleb128 0xb
	.string	"NvM_Prv_idService_tuo"
	.byte	0x8
	.uahalf	0x14c
	.uaword	0x1dc
	.uleb128 0xf
	.byte	0x1
	.byte	0x8
	.uahalf	0x159
	.uaword	0xc56
	.uleb128 0x5
	.string	"NvM_Prv_idQueue_Multi_e"
	.sleb128 0
	.uleb128 0x5
	.string	"NvM_Prv_idQueue_Standard_e"
	.sleb128 1
	.uleb128 0x5
	.string	"NvM_Prv_idQueue_nrQueues_e"
	.sleb128 2
	.byte	0
	.uleb128 0xb
	.string	"NvM_Prv_idQueue_tuo"
	.byte	0x8
	.uahalf	0x174
	.uaword	0x1dc
	.uleb128 0x10
	.byte	0x4
	.byte	0x8
	.uahalf	0x180
	.uaword	0xcab
	.uleb128 0x11
	.string	"ptrRamBlock_pv"
	.byte	0x8
	.uahalf	0x182
	.uaword	0x650
	.uleb128 0x11
	.string	"ptrRamBlock_pu8"
	.byte	0x8
	.uahalf	0x183
	.uaword	0x652
	.byte	0
	.uleb128 0xb
	.string	"NvM_Prv_ptrRamBlock_tun"
	.byte	0x8
	.uahalf	0x185
	.uaword	0xc72
	.uleb128 0x12
	.byte	0xc
	.byte	0x8
	.uahalf	0x191
	.uaword	0xd1a
	.uleb128 0x13
	.uaword	.LASF0
	.byte	0x8
	.uahalf	0x194
	.uaword	0xbda
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.uaword	.LASF1
	.byte	0x8
	.uahalf	0x197
	.uaword	0x66a
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x13
	.uaword	.LASF2
	.byte	0x8
	.uahalf	0x19a
	.uaword	0xbbb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x14
	.string	"BlockData_un"
	.byte	0x8
	.uahalf	0x19e
	.uaword	0xcab
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0xb
	.string	"NvM_Prv_QueueEntry_tst"
	.byte	0x8
	.uahalf	0x1a0
	.uaword	0xccb
	.uleb128 0x8
	.byte	0x4
	.uaword	0xd3f
	.uleb128 0xd
	.byte	0x1
	.uaword	0x2be
	.uaword	0xd4f
	.uleb128 0xe
	.uaword	0x650
	.byte	0
	.uleb128 0x15
	.byte	0xc
	.byte	0x9
	.byte	0x77
	.uaword	0xdc3
	.uleb128 0x16
	.string	"MultiBlockCallback_pfct"
	.byte	0x9
	.byte	0x7f
	.uaword	0xdd4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x16
	.string	"RbMultiBlockStartCallback_pfct"
	.byte	0x9
	.byte	0x84
	.uaword	0xde6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.string	"ObserverCallback_pfct"
	.byte	0x9
	.byte	0x8a
	.uaword	0xe06
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.uaword	0xdd4
	.uleb128 0xe
	.uaword	0x1dc
	.uleb128 0xe
	.uaword	0x682
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0xdc3
	.uleb128 0x17
	.byte	0x1
	.uaword	0xde6
	.uleb128 0xe
	.uaword	0x1dc
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0xdda
	.uleb128 0xd
	.byte	0x1
	.uaword	0x2be
	.uaword	0xe06
	.uleb128 0xe
	.uaword	0x66a
	.uleb128 0xe
	.uaword	0x1dc
	.uleb128 0xe
	.uaword	0x682
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0xdec
	.uleb128 0x3
	.string	"NvM_Prv_Common_tst"
	.byte	0x9
	.byte	0x8d
	.uaword	0xd4f
	.uleb128 0x15
	.byte	0x34
	.byte	0x9
	.byte	0x95
	.uaword	0x1008
	.uleb128 0x16
	.string	"idBlockMemIf_u16"
	.byte	0x9
	.byte	0x9b
	.uaword	0x207
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x16
	.string	"nrBlockBytes_pu16"
	.byte	0x9
	.byte	0xa9
	.uaword	0x658
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.string	"nrBlockBytesStored_u16"
	.byte	0x9
	.byte	0xb5
	.uaword	0x207
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.string	"idxDevice_u8"
	.byte	0x9
	.byte	0xbb
	.uaword	0x1dc
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x16
	.string	"nrNvBlocks_u8"
	.byte	0x9
	.byte	0xc0
	.uaword	0x1dc
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0x16
	.string	"nrRomBlocks_u8"
	.byte	0x9
	.byte	0xc5
	.uaword	0x1dc
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x16
	.string	"adrRamBlock_ppv"
	.byte	0x9
	.byte	0xd6
	.uaword	0x1008
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x16
	.string	"adrRomBlock_pcv"
	.byte	0x9
	.byte	0xde
	.uaword	0x663
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x16
	.string	"SingleBlockCallback_pfct"
	.byte	0x9
	.byte	0xe8
	.uaword	0x1028
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x16
	.string	"SingleBlockStartCallback_pfct"
	.byte	0x9
	.byte	0xf0
	.uaword	0x6ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x16
	.string	"InitBlockCallback_pfct"
	.byte	0x9
	.byte	0xf9
	.uaword	0x6a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x14
	.string	"ReadRamBlockFromNvm_pfct"
	.byte	0x9
	.uahalf	0x102
	.uaword	0xd39
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x14
	.string	"WriteRamBlockToNvm_pfct"
	.byte	0x9
	.uahalf	0x10b
	.uaword	0xd39
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x14
	.string	"BlockManagementType_en"
	.byte	0x9
	.uahalf	0x110
	.uaword	0x714
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x14
	.string	"JobPriority_u8"
	.byte	0x9
	.uahalf	0x115
	.uaword	0x1dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x2d
	.uleb128 0x14
	.string	"stFlags_uo"
	.byte	0x9
	.uahalf	0x13e
	.uaword	0x243
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0x100e
	.uleb128 0x9
	.uaword	0x650
	.uleb128 0xd
	.byte	0x1
	.uaword	0x2be
	.uaword	0x1028
	.uleb128 0xe
	.uaword	0x1dc
	.uleb128 0xe
	.uaword	0x682
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0x1013
	.uleb128 0xb
	.string	"NvM_Prv_BlockDescriptor_tst"
	.byte	0x9
	.uahalf	0x153
	.uaword	0xe26
	.uleb128 0x12
	.byte	0x4
	.byte	0x9
	.uahalf	0x158
	.uaword	0x108f
	.uleb128 0x14
	.string	"PersistentId_u16"
	.byte	0x9
	.uahalf	0x15a
	.uaword	0x207
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"BlockId_u16"
	.byte	0x9
	.uahalf	0x15b
	.uaword	0x66a
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0xb
	.string	"NvM_Prv_PersId_BlockId_tst"
	.byte	0x9
	.uahalf	0x15c
	.uaword	0x1052
	.uleb128 0x3
	.string	"NvM_Prv_Multi_Cancel_tpfct"
	.byte	0xa
	.byte	0xa
	.uaword	0x6c2
	.uleb128 0x3
	.string	"NvM_Prv_ProcessMulti_tpfct"
	.byte	0x1
	.byte	0x1c
	.uaword	0x10f6
	.uleb128 0x8
	.byte	0x4
	.uaword	0x10fc
	.uleb128 0xd
	.byte	0x1
	.uaword	0x945
	.uaword	0x110c
	.uleb128 0xe
	.uaword	0x110c
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0xd1a
	.uleb128 0x18
	.string	"NvM_Prv_NotifyMultiStart"
	.byte	0x1
	.uahalf	0x15a
	.byte	0x1
	.byte	0x3
	.uaword	0x1142
	.uleb128 0x19
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x15a
	.uaword	0xbda
	.byte	0
	.uleb128 0x1a
	.string	"NvM_Prv_Block_IsRequestPending"
	.byte	0x2
	.uahalf	0x132
	.byte	0x1
	.uaword	0x28e
	.byte	0x3
	.uaword	0x1194
	.uleb128 0x19
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x132
	.uaword	0x66a
	.uleb128 0x1b
	.string	"maskService_u16"
	.byte	0x2
	.uahalf	0x132
	.uaword	0x207
	.byte	0
	.uleb128 0x1a
	.string	"NvM_Prv_FindNextBlock"
	.byte	0x1
	.uahalf	0x1ca
	.byte	0x1
	.uaword	0x66a
	.byte	0x3
	.uaword	0x11f5
	.uleb128 0x19
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x1ca
	.uaword	0x66a
	.uleb128 0x19
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x1cb
	.uaword	0xbda
	.uleb128 0x19
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x1cc
	.uaword	0xbbb
	.uleb128 0x1c
	.string	"RequestMask_u16"
	.byte	0x1
	.uahalf	0x1ce
	.uaword	0x207
	.byte	0
	.uleb128 0x18
	.string	"NvM_Prv_Block_ClearRequests"
	.byte	0x2
	.uahalf	0x19e
	.byte	0x1
	.byte	0x3
	.uaword	0x1241
	.uleb128 0x19
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x19e
	.uaword	0x66a
	.uleb128 0x1b
	.string	"maskRequests_u16"
	.byte	0x2
	.uahalf	0x19e
	.uaword	0x207
	.byte	0
	.uleb128 0x1d
	.string	"NvM_Prv_ProcessCancel"
	.byte	0x1
	.byte	0xf9
	.byte	0x1
	.uaword	0x945
	.byte	0x3
	.uaword	0x127b
	.uleb128 0x1e
	.uaword	.LASF3
	.byte	0x1
	.byte	0xf9
	.uaword	0x110c
	.uleb128 0x1f
	.uaword	.LASF4
	.byte	0x1
	.byte	0xfb
	.uaword	0x945
	.byte	0
	.uleb128 0x1a
	.string	"NvM_Prv_CheckIsFinalCallbackRequired"
	.byte	0x1
	.uahalf	0x188
	.byte	0x1
	.uaword	0x28e
	.byte	0x3
	.uaword	0x12dd
	.uleb128 0x19
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x188
	.uaword	0xbda
	.uleb128 0x1c
	.string	"isFinalCallbackRequired_b"
	.byte	0x1
	.uahalf	0x18a
	.uaword	0x28e
	.byte	0
	.uleb128 0x18
	.string	"NvM_Prv_Block_SetRequestResult"
	.byte	0x2
	.uahalf	0x17d
	.byte	0x1
	.byte	0x3
	.uaword	0x131f
	.uleb128 0x19
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x17d
	.uaword	0x66a
	.uleb128 0x19
	.uaword	.LASF5
	.byte	0x2
	.uahalf	0x17d
	.uaword	0x682
	.byte	0
	.uleb128 0x1a
	.string	"NvM_Prv_StartSecondaryMulti"
	.byte	0x1
	.uahalf	0x1aa
	.byte	0x1
	.uaword	0x28e
	.byte	0x3
	.uaword	0x1379
	.uleb128 0x19
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x1aa
	.uaword	0x110c
	.uleb128 0x1c
	.string	"isSecondaryMultiReqStarted"
	.byte	0x1
	.uahalf	0x1ac
	.uaword	0x28e
	.byte	0
	.uleb128 0x1d
	.string	"NvM_Prv_GetBlockType"
	.byte	0x3
	.byte	0xcb
	.byte	0x1
	.uaword	0x714
	.byte	0x3
	.uaword	0x13b8
	.uleb128 0x1e
	.uaword	.LASF1
	.byte	0x3
	.byte	0xcb
	.uaword	0x66a
	.uleb128 0x20
	.string	"BlockType"
	.byte	0x3
	.byte	0xcd
	.uaword	0x714
	.byte	0
	.uleb128 0x1d
	.string	"NvM_Prv_IsDefaultDataAvailable"
	.byte	0x3
	.byte	0x5c
	.byte	0x1
	.uaword	0x28e
	.byte	0x3
	.uaword	0x13f0
	.uleb128 0x1e
	.uaword	.LASF1
	.byte	0x3
	.byte	0x5c
	.uaword	0x66a
	.byte	0
	.uleb128 0x1a
	.string	"NvM_Prv_GetJobIdForMulti"
	.byte	0x1
	.uahalf	0x1e7
	.byte	0x1
	.uaword	0x945
	.byte	0x3
	.uaword	0x1448
	.uleb128 0x19
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x1e7
	.uaword	0xbda
	.uleb128 0x19
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x1e8
	.uaword	0xbbb
	.uleb128 0x19
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x1e9
	.uaword	0x66a
	.uleb128 0x21
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x1eb
	.uaword	0x945
	.byte	0
	.uleb128 0x1a
	.string	"NvM_Prv_GetPRamBlockAddress"
	.byte	0x3
	.uahalf	0x10b
	.byte	0x1
	.uaword	0x650
	.byte	0x3
	.uaword	0x149b
	.uleb128 0x19
	.uaword	.LASF1
	.byte	0x3
	.uahalf	0x10b
	.uaword	0x66a
	.uleb128 0x1c
	.string	"PRamBlockAddress_pv"
	.byte	0x3
	.uahalf	0x10d
	.uaword	0x650
	.byte	0
	.uleb128 0x1d
	.string	"NvM_Prv_ProcessUserBlocks"
	.byte	0x1
	.byte	0xcd
	.byte	0x1
	.uaword	0x945
	.byte	0x3
	.uaword	0x14d9
	.uleb128 0x1e
	.uaword	.LASF3
	.byte	0x1
	.byte	0xcd
	.uaword	0x110c
	.uleb128 0x1f
	.uaword	.LASF4
	.byte	0x1
	.byte	0xcf
	.uaword	0x945
	.byte	0
	.uleb128 0x1d
	.string	"NvM_Prv_ProcessConfigId"
	.byte	0x1
	.byte	0xb2
	.byte	0x1
	.uaword	0x945
	.byte	0x3
	.uaword	0x1515
	.uleb128 0x1e
	.uaword	.LASF3
	.byte	0x1
	.byte	0xb2
	.uaword	0x110c
	.uleb128 0x1f
	.uaword	.LASF4
	.byte	0x1
	.byte	0xb4
	.uaword	0x945
	.byte	0
	.uleb128 0x18
	.string	"NvM_Prv_NotifyMultiEnd"
	.byte	0x1
	.uahalf	0x166
	.byte	0x1
	.byte	0x3
	.uaword	0x1560
	.uleb128 0x19
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x166
	.uaword	0xbda
	.uleb128 0x22
	.uleb128 0x1c
	.string	"idActiveService_uo"
	.byte	0x1
	.uahalf	0x16b
	.uaword	0x1dc
	.byte	0
	.byte	0
	.uleb128 0x1a
	.string	"NvM_Prv_InitiateMaintenance"
	.byte	0x1
	.uahalf	0x249
	.byte	0x1
	.uaword	0x28e
	.byte	0x3
	.uaword	0x15b4
	.uleb128 0x19
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x249
	.uaword	0x110c
	.uleb128 0x1c
	.string	"isMaintenanceStarted"
	.byte	0x1
	.uahalf	0x24b
	.uaword	0x28e
	.byte	0
	.uleb128 0x23
	.string	"NvM_Prv_FinishMulti"
	.byte	0x1
	.uahalf	0x132
	.byte	0x1
	.uaword	0x945
	.uaword	.LFB121
	.uaword	.LFE121
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x173f
	.uleb128 0x24
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x132
	.uaword	0x110c
	.uaword	.LLST0
	.uleb128 0x25
	.string	"ServiceBitMask_uo"
	.byte	0x1
	.uahalf	0x134
	.uaword	0x207
	.byte	0x1
	.byte	0x58
	.uleb128 0x26
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x135
	.uaword	0x945
	.uaword	.LLST1
	.uleb128 0x27
	.uaword	0x11f5
	.uaword	.LBB76
	.uaword	.LBE76
	.byte	0x1
	.uahalf	0x143
	.uaword	0x163f
	.uleb128 0x28
	.uaword	0x1227
	.byte	0x1
	.byte	0x58
	.uleb128 0x29
	.uaword	0x121b
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uaword	0x1515
	.uaword	.LBB78
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.uahalf	0x145
	.uaword	0x16ca
	.uleb128 0x2b
	.uaword	0x1536
	.uaword	.LLST2
	.uleb128 0x2a
	.uaword	0x127b
	.uaword	.LBB79
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x1
	.uahalf	0x168
	.uaword	0x1686
	.uleb128 0x2b
	.uaword	0x12ae
	.uaword	.LLST2
	.uleb128 0x2c
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0x2d
	.uaword	0x12ba
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uaword	.LBB82
	.uaword	.LBE82
	.uleb128 0x2f
	.uaword	0x1543
	.uaword	.LLST4
	.uleb128 0x27
	.uaword	0x12dd
	.uaword	.LBB83
	.uaword	.LBE83
	.byte	0x1
	.uahalf	0x175
	.uaword	0x16bf
	.uleb128 0x2b
	.uaword	0x1312
	.uaword	.LLST5
	.uleb128 0x2b
	.uaword	0x1306
	.uaword	.LLST6
	.byte	0
	.uleb128 0x30
	.uaword	.LVL10
	.uaword	0x1e2e
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uaword	0x131f
	.uaword	.LBB86
	.uaword	.Ldebug_ranges0+0x30
	.byte	0x1
	.uahalf	0x147
	.uaword	0x1735
	.uleb128 0x2b
	.uaword	0x1349
	.uaword	.LLST7
	.uleb128 0x2c
	.uaword	.Ldebug_ranges0+0x30
	.uleb128 0x2f
	.uaword	0x1355
	.uaword	.LLST8
	.uleb128 0x31
	.uaword	0x1560
	.uaword	.LBB88
	.uaword	.Ldebug_ranges0+0x38
	.byte	0x1
	.uahalf	0x1b9
	.uleb128 0x2b
	.uaword	0x158a
	.uaword	.LLST9
	.uleb128 0x2c
	.uaword	.Ldebug_ranges0+0x38
	.uleb128 0x2f
	.uaword	0x1596
	.uaword	.LLST10
	.uleb128 0x32
	.uaword	.LVL17
	.uaword	0x1e5b
	.uleb128 0x33
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x33
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x9
	.byte	0xf9
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.uaword	.LVL2
	.uaword	0x1e90
	.byte	0
	.uleb128 0x34
	.uaword	0x1241
	.uaword	.LFB120
	.uaword	.LFE120
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x17c7
	.uleb128 0x2b
	.uaword	0x1264
	.uaword	.LLST11
	.uleb128 0x2f
	.uaword	0x126f
	.uaword	.LLST12
	.uleb128 0x27
	.uaword	0x11f5
	.uaword	.LBB111
	.uaword	.LBE111
	.byte	0x1
	.uahalf	0x100
	.uaword	0x178d
	.uleb128 0x2b
	.uaword	0x1227
	.uaword	.LLST13
	.uleb128 0x2b
	.uaword	0x121b
	.uaword	.LLST14
	.byte	0
	.uleb128 0x35
	.uaword	.LBB113
	.uaword	.LBE113
	.uaword	0x17b4
	.uleb128 0x2b
	.uaword	0x1264
	.uaword	.LLST15
	.uleb128 0x2e
	.uaword	.LBB114
	.uaword	.LBE114
	.uleb128 0x2d
	.uaword	0x126f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.uaword	.LVL20
	.uaword	0x1e90
	.uleb128 0x30
	.uaword	.LVL23
	.uaword	0x1e90
	.byte	0
	.uleb128 0x36
	.uaword	0x149b
	.uaword	.LFB119
	.uaword	.LFE119
	.uaword	.LLST16
	.byte	0x1
	.uaword	0x194e
	.uleb128 0x2b
	.uaword	0x14c2
	.uaword	.LLST17
	.uleb128 0x2f
	.uaword	0x14cd
	.uaword	.LLST18
	.uleb128 0x37
	.uaword	0x1194
	.uaword	.LBB137
	.uaword	.Ldebug_ranges0+0x60
	.byte	0x1
	.byte	0xd1
	.uaword	0x1850
	.uleb128 0x2b
	.uaword	0x11c4
	.uaword	.LLST19
	.uleb128 0x2b
	.uaword	0x11d0
	.uaword	.LLST20
	.uleb128 0x2b
	.uaword	0x11b8
	.uaword	.LLST21
	.uleb128 0x2c
	.uaword	.Ldebug_ranges0+0x60
	.uleb128 0x2f
	.uaword	0x11dc
	.uaword	.LLST22
	.uleb128 0x31
	.uaword	0x1142
	.uaword	.LBB139
	.uaword	.Ldebug_ranges0+0x80
	.byte	0x1
	.uahalf	0x1df
	.uleb128 0x2b
	.uaword	0x117b
	.uaword	.LLST23
	.uleb128 0x2b
	.uaword	0x116f
	.uaword	.LLST24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x38
	.uaword	.Ldebug_ranges0+0x98
	.uaword	0x1877
	.uleb128 0x2b
	.uaword	0x14c2
	.uaword	.LLST25
	.uleb128 0x2c
	.uaword	.Ldebug_ranges0+0x98
	.uleb128 0x39
	.uaword	0x14cd
	.uleb128 0x30
	.uaword	.LVL38
	.uaword	0x1e90
	.byte	0
	.byte	0
	.uleb128 0x37
	.uaword	0x13f0
	.uaword	.LBB150
	.uaword	.Ldebug_ranges0+0xb0
	.byte	0x1
	.byte	0xdf
	.uaword	0x1925
	.uleb128 0x3a
	.uaword	0x142f
	.uleb128 0x2b
	.uaword	0x1423
	.uaword	.LLST26
	.uleb128 0x2b
	.uaword	0x1417
	.uaword	.LLST27
	.uleb128 0x2c
	.uaword	.Ldebug_ranges0+0xb0
	.uleb128 0x2f
	.uaword	0x143b
	.uaword	.LLST28
	.uleb128 0x38
	.uaword	.Ldebug_ranges0+0xd8
	.uaword	0x191a
	.uleb128 0x2b
	.uaword	0x1417
	.uaword	.LLST29
	.uleb128 0x2b
	.uaword	0x1423
	.uaword	.LLST30
	.uleb128 0x3a
	.uaword	0x142f
	.uleb128 0x2c
	.uaword	.Ldebug_ranges0+0xd8
	.uleb128 0x39
	.uaword	0x143b
	.uleb128 0x27
	.uaword	0x1379
	.uaword	.LBB154
	.uaword	.LBE154
	.byte	0x1
	.uahalf	0x1fc
	.uaword	0x1902
	.uleb128 0x3a
	.uaword	0x139b
	.uleb128 0x2e
	.uaword	.LBB155
	.uaword	.LBE155
	.uleb128 0x39
	.uaword	0x13a6
	.byte	0
	.byte	0
	.uleb128 0x31
	.uaword	0x13b8
	.uaword	.LBB156
	.uaword	.Ldebug_ranges0+0xf0
	.byte	0x1
	.uahalf	0x1fd
	.uleb128 0x3a
	.uaword	0x13e4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.uaword	.LVL53
	.uaword	0x1eb3
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uaword	0x1448
	.uaword	.LBB166
	.uaword	.Ldebug_ranges0+0x108
	.byte	0x1
	.byte	0xe2
	.uleb128 0x2b
	.uaword	0x1472
	.uaword	.LLST31
	.uleb128 0x2c
	.uaword	.Ldebug_ranges0+0x108
	.uleb128 0x2f
	.uaword	0x147e
	.uaword	.LLST32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x36
	.uaword	0x14d9
	.uaword	.LFB118
	.uaword	.LFE118
	.uaword	.LLST33
	.byte	0x1
	.uaword	0x1aac
	.uleb128 0x2b
	.uaword	0x14fe
	.uaword	.LLST34
	.uleb128 0x2f
	.uaword	0x1509
	.uaword	.LLST35
	.uleb128 0x38
	.uaword	.Ldebug_ranges0+0x120
	.uaword	0x1aa2
	.uleb128 0x2b
	.uaword	0x14fe
	.uaword	.LLST36
	.uleb128 0x2c
	.uaword	.Ldebug_ranges0+0x120
	.uleb128 0x39
	.uaword	0x1509
	.uleb128 0x37
	.uaword	0x1142
	.uaword	.LBB189
	.uaword	.Ldebug_ranges0+0x138
	.byte	0x1
	.byte	0xb8
	.uaword	0x19b1
	.uleb128 0x3a
	.uaword	0x117b
	.uleb128 0x29
	.uaword	0x116f
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.uaword	0x13f0
	.uaword	.LBB197
	.uaword	.Ldebug_ranges0+0x160
	.byte	0x1
	.byte	0xba
	.uaword	0x1a74
	.uleb128 0x29
	.uaword	0x142f
	.byte	0x1
	.uleb128 0x2b
	.uaword	0x1423
	.uaword	.LLST37
	.uleb128 0x2b
	.uaword	0x1417
	.uaword	.LLST38
	.uleb128 0x2c
	.uaword	.Ldebug_ranges0+0x160
	.uleb128 0x2f
	.uaword	0x143b
	.uaword	.LLST39
	.uleb128 0x35
	.uaword	.LBB199
	.uaword	.LBE199
	.uaword	0x1a69
	.uleb128 0x2b
	.uaword	0x142f
	.uaword	.LLST40
	.uleb128 0x2b
	.uaword	0x1417
	.uaword	.LLST41
	.uleb128 0x2b
	.uaword	0x1423
	.uaword	.LLST42
	.uleb128 0x2e
	.uaword	.LBB200
	.uaword	.LBE200
	.uleb128 0x39
	.uaword	0x143b
	.uleb128 0x27
	.uaword	0x1379
	.uaword	.LBB201
	.uaword	.LBE201
	.byte	0x1
	.uahalf	0x1fc
	.uaword	0x1a4d
	.uleb128 0x2b
	.uaword	0x139b
	.uaword	.LLST40
	.uleb128 0x2e
	.uaword	.LBB202
	.uaword	.LBE202
	.uleb128 0x39
	.uaword	0x13a6
	.byte	0
	.byte	0
	.uleb128 0x31
	.uaword	0x13b8
	.uaword	.LBB203
	.uaword	.Ldebug_ranges0+0x178
	.byte	0x1
	.uahalf	0x1fd
	.uleb128 0x2b
	.uaword	0x13e4
	.uaword	.LLST44
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.uaword	.LVL76
	.uaword	0x1eb3
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uaword	0x1448
	.uaword	.LBB208
	.uaword	.LBE208
	.byte	0x1
	.byte	0xbd
	.uleb128 0x2b
	.uaword	0x1472
	.uaword	.LLST45
	.uleb128 0x2e
	.uaword	.LBB209
	.uaword	.LBE209
	.uleb128 0x2f
	.uaword	0x147e
	.uaword	.LLST46
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.uaword	.LVL63
	.uaword	0x1e90
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.string	"NvM_Prv_Multi_Initialize"
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.uaword	.LFB111
	.uaword	.LFE111
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x3e
	.byte	0x1
	.string	"NvM_Prv_Multi_IsInProgress"
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.uaword	0x28e
	.uaword	.LFB112
	.uaword	.LFE112
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x3f
	.byte	0x1
	.string	"NvM_Prv_Multi_SetResult"
	.byte	0x1
	.byte	0x69
	.byte	0x1
	.uaword	.LFB113
	.uaword	.LFE113
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1b41
	.uleb128 0x40
	.uaword	.LASF5
	.byte	0x1
	.byte	0x69
	.uaword	0x682
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.string	"NvM_Prv_Multi_GetResult"
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.uaword	0x682
	.uaword	.LFB114
	.uaword	.LFE114
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x3f
	.byte	0x1
	.string	"NvM_Prv_Multi_Cancel"
	.byte	0x1
	.byte	0x73
	.byte	0x1
	.uaword	.LFB115
	.uaword	.LFE115
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1bae
	.uleb128 0x41
	.string	"Cancel_pfct"
	.byte	0x1
	.byte	0x73
	.uaword	0x10b2
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.string	"NvM_Prv_Multi_GoToNextBlock"
	.byte	0x1
	.byte	0x7c
	.byte	0x1
	.uaword	.LFB116
	.uaword	.LFE116
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1bed
	.uleb128 0x40
	.uaword	.LASF3
	.byte	0x1
	.byte	0x7c
	.uaword	0x110c
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.string	"NvM_Prv_Multi_Process"
	.byte	0x1
	.byte	0x81
	.byte	0x1
	.uaword	0x945
	.uaword	.LFB117
	.uaword	.LFE117
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1c4a
	.uleb128 0x43
	.uaword	.LASF3
	.byte	0x1
	.byte	0x81
	.uaword	0x110c
	.uaword	.LLST47
	.uleb128 0x44
	.uaword	.LASF4
	.byte	0x1
	.byte	0x83
	.uaword	0x945
	.uaword	.LLST48
	.uleb128 0x45
	.uaword	.LVL84
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x33
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x46
	.string	"NvM_Prv_ProcessMulti_pfct"
	.byte	0x1
	.byte	0x2c
	.uaword	0x10d4
	.byte	0x5
	.byte	0x3
	.uaword	NvM_Prv_ProcessMulti_pfct
	.uleb128 0x46
	.string	"NvM_Prv_Multi_Cancel_pfct"
	.byte	0x1
	.byte	0x2d
	.uaword	0x10b2
	.byte	0x5
	.byte	0x3
	.uaword	NvM_Prv_Multi_Cancel_pfct
	.uleb128 0x46
	.string	"NvM_Prv_Multi_Result_uo"
	.byte	0x1
	.byte	0x2f
	.uaword	0x682
	.byte	0x5
	.byte	0x3
	.uaword	NvM_Prv_Multi_Result_uo
	.uleb128 0x47
	.string	"NvM_Prv_Common_cst"
	.byte	0x9
	.uahalf	0x16d
	.uaword	0x1cda
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.uaword	0xe0c
	.uleb128 0x48
	.uaword	0x102e
	.uaword	0x1cef
	.uleb128 0x49
	.uaword	0x2d4
	.byte	0x3b
	.byte	0
	.uleb128 0x47
	.string	"NvM_Prv_BlockDescriptors_acst"
	.byte	0x9
	.uahalf	0x172
	.uaword	0x1d17
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.uaword	0x1cdf
	.uleb128 0x48
	.uaword	0x108f
	.uaword	0x1d2c
	.uleb128 0x49
	.uaword	0x2d4
	.byte	0x39
	.byte	0
	.uleb128 0x47
	.string	"NvM_Prv_PersId_BlockId_acst"
	.byte	0x9
	.uahalf	0x176
	.uaword	0x1d52
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.uaword	0x1d1c
	.uleb128 0x48
	.uaword	0x1dc
	.uaword	0x1d67
	.uleb128 0x49
	.uaword	0x2d4
	.byte	0x3b
	.byte	0
	.uleb128 0x4a
	.string	"NvM_Prv_stBlock_au8"
	.byte	0xb
	.byte	0x54
	.uaword	0x1d57
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.uaword	0x207
	.uaword	0x1d94
	.uleb128 0x49
	.uaword	0x2d4
	.byte	0x3b
	.byte	0
	.uleb128 0x4a
	.string	"NvM_Prv_stRequests_au16"
	.byte	0xb
	.byte	0x6b
	.uaword	0x1d84
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.uaword	0x682
	.uaword	0x1dc5
	.uleb128 0x49
	.uaword	0x2d4
	.byte	0x3b
	.byte	0
	.uleb128 0x4a
	.string	"NvM_Prv_stRequestResult_au8"
	.byte	0xb
	.byte	0x74
	.uaword	0x1db5
	.byte	0x1
	.byte	0x1
	.uleb128 0x4a
	.string	"NvM_Prv_idxDataSet_au8"
	.byte	0xb
	.byte	0x78
	.uaword	0x1d57
	.byte	0x1
	.byte	0x1
	.uleb128 0x4a
	.string	"NvM_Prv_idConfigStored_u16"
	.byte	0xb
	.byte	0x81
	.uaword	0x207
	.byte	0x1
	.byte	0x1
	.uleb128 0x4b
	.byte	0x1
	.string	"BswM_NvM_CurrentJobMode"
	.byte	0xc
	.byte	0x21
	.byte	0x1
	.byte	0x1
	.uaword	0x1e5b
	.uleb128 0xe
	.uaword	0x1dc
	.uleb128 0xe
	.uaword	0x682
	.byte	0
	.uleb128 0x4b
	.byte	0x1
	.string	"NvM_Prv_UpdateActiveServiceData"
	.byte	0xd
	.byte	0x6d
	.byte	0x1
	.byte	0x1
	.uaword	0x1e90
	.uleb128 0xe
	.uaword	0xbda
	.uleb128 0xe
	.uaword	0xc56
	.byte	0
	.uleb128 0x4c
	.byte	0x1
	.string	"NvM_Prv_JobQueue_IsEmpty"
	.byte	0xe
	.byte	0x1b
	.byte	0x1
	.uaword	0x28e
	.byte	0x1
	.uleb128 0x4d
	.byte	0x1
	.string	"NvM_Prv_GetJobId"
	.byte	0xd
	.byte	0x6f
	.byte	0x1
	.uaword	0x945
	.byte	0x1
	.uleb128 0xe
	.uaword	0xbbb
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
	.uleb128 0x4
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x13
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
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
	.uleb128 0x1a
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0xb
	.byte	0x1
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0x5
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
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x36
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
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
	.uleb128 0x37
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x3c
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
	.byte	0
	.byte	0
	.uleb128 0x3d
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
	.byte	0
	.byte	0
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x43
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
	.uleb128 0x44
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
	.uleb128 0x45
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x48
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x49
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x4a
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
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4c
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
	.uleb128 0x4d
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
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL12
	.uaword	.LVL14
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL14
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL16
	.uaword	.LVL18
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LFE121
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL13
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL14
	.uaword	.LFE121
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL5
	.uaword	.LVL9
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL7
	.uaword	.LVL10-1
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL8
	.uaword	.LVL10-1
	.uahalf	0x5
	.byte	0x3
	.uaword	NvM_Prv_Multi_Result_uo
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL8
	.uaword	.LVL14
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LFE121
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL10
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL12
	.uaword	.LVL14
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL16
	.uaword	.LVL18
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LFE121
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL11
	.uaword	.LVL14
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL16
	.uaword	.LVL18
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LFE121
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL15
	.uaword	.LVL17
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LFE121
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL19
	.uaword	.LVL20-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL20-1
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL22
	.uaword	.LVL23-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL23-1
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL26
	.uaword	.LFE120
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL19
	.uaword	.LVL21
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL22
	.uaword	.LVL28
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL28
	.uaword	.LFE120
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL22
	.uaword	.LVL24
	.uahalf	0x2
	.byte	0x40
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL22
	.uaword	.LVL24
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL24
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL26
	.uaword	.LFE120
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LFB119
	.uaword	.LCFI0
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0
	.uaword	.LFE119
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL29
	.uaword	.LVL38-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL38-1
	.uaword	.LVL40
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL40
	.uaword	.LVL48
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL48
	.uaword	.LVL51
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL51
	.uaword	.LVL53-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL53-1
	.uaword	.LVL56
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL56
	.uaword	.LVL60
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL60
	.uaword	.LFE119
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL29
	.uaword	.LVL39
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL39
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL40
	.uaword	.LVL48
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL50
	.uaword	.LVL54
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL56
	.uaword	.LVL57
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL58
	.uaword	.LVL59
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL30
	.uaword	.LVL38-1
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL40
	.uaword	.LVL48
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL51
	.uaword	.LVL52
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL56
	.uaword	.LVL60
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL30
	.uaword	.LVL38-1
	.uahalf	0x2
	.byte	0x84
	.sleb128 4
	.uaword	.LVL40
	.uaword	.LVL48
	.uahalf	0x2
	.byte	0x84
	.sleb128 4
	.uaword	.LVL51
	.uaword	.LVL53-1
	.uahalf	0x2
	.byte	0x84
	.sleb128 4
	.uaword	.LVL56
	.uaword	.LVL60
	.uahalf	0x2
	.byte	0x84
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL30
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL33
	.uaword	.LVL34
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL34
	.uaword	.LVL35
	.uahalf	0x8
	.byte	0x76
	.sleb128 0
	.byte	0x84
	.sleb128 2
	.byte	0x94
	.byte	0x2
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL35
	.uaword	.LVL36
	.uahalf	0x6
	.byte	0x77
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL40
	.uaword	.LVL41
	.uahalf	0x6
	.byte	0x77
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL41
	.uaword	.LVL42
	.uahalf	0x8
	.byte	0x76
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL31
	.uaword	.LVL38-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL40
	.uaword	.LVL44
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL44
	.uaword	.LVL47
	.uahalf	0x5
	.byte	0x31
	.byte	0x74
	.sleb128 0
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL47
	.uaword	.LVL48
	.uahalf	0xb
	.byte	0x31
	.byte	0x84
	.sleb128 4
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL51
	.uaword	.LVL53-1
	.uahalf	0x5
	.byte	0x31
	.byte	0x74
	.sleb128 0
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL56
	.uaword	.LVL57
	.uahalf	0x5
	.byte	0x31
	.byte	0x74
	.sleb128 0
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL57
	.uaword	.LVL58
	.uahalf	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL58
	.uaword	.LVL60
	.uahalf	0xb
	.byte	0x31
	.byte	0x84
	.sleb128 4
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x24
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL32
	.uaword	.LVL34
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL40
	.uaword	.LVL42
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL33
	.uaword	.LVL34
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL34
	.uaword	.LVL36
	.uahalf	0x8
	.byte	0x76
	.sleb128 0
	.byte	0x84
	.sleb128 2
	.byte	0x94
	.byte	0x2
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL40
	.uaword	.LVL41
	.uahalf	0x6
	.byte	0x77
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL41
	.uaword	.LVL42
	.uahalf	0x8
	.byte	0x76
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL37
	.uaword	.LVL38-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL38-1
	.uaword	.LVL40
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL50
	.uaword	.LVL51
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL43
	.uaword	.LVL48
	.uahalf	0x2
	.byte	0x84
	.sleb128 4
	.uaword	.LVL51
	.uaword	.LVL53-1
	.uahalf	0x2
	.byte	0x84
	.sleb128 4
	.uaword	.LVL56
	.uaword	.LVL60
	.uahalf	0x2
	.byte	0x84
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL43
	.uaword	.LVL48
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL51
	.uaword	.LVL52
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL56
	.uaword	.LVL60
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL43
	.uaword	.LVL48
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL48
	.uaword	.LVL50
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL51
	.uaword	.LVL53
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL53
	.uaword	.LVL55
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL56
	.uaword	.LVL57
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL57
	.uaword	.LVL58
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL58
	.uaword	.LVL59
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL59
	.uaword	.LFE119
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL45
	.uaword	.LVL48
	.uahalf	0x3
	.byte	0x9
	.byte	0xfb
	.byte	0x9f
	.uaword	.LVL58
	.uaword	.LVL60
	.uahalf	0x3
	.byte	0x9
	.byte	0xfb
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL45
	.uaword	.LVL48
	.uahalf	0x2
	.byte	0x84
	.sleb128 4
	.uaword	.LVL58
	.uaword	.LVL60
	.uahalf	0x2
	.byte	0x84
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL54
	.uaword	.LVL55
	.uahalf	0x2
	.byte	0x84
	.sleb128 2
	.uaword	.LVL57
	.uaword	.LVL58
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL59
	.uaword	.LVL60
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL60
	.uaword	.LVL61
	.uahalf	0x2
	.byte	0x84
	.sleb128 2
	.uaword	.LVL61
	.uaword	.LFE119
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL48
	.uaword	.LVL49
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL49
	.uaword	.LVL50
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL54
	.uaword	.LVL55
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL55
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL57
	.uaword	.LVL58
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL59
	.uaword	.LFE119
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LFB118
	.uaword	.LCFI1
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI1
	.uaword	.LFE118
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL62
	.uaword	.LVL63-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL63-1
	.uaword	.LVL67
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL67
	.uaword	.LVL69
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL69
	.uaword	.LFE118
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL62
	.uaword	.LVL64
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL64
	.uaword	.LVL65
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL65
	.uaword	.LVL68
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL68
	.uaword	.LVL69
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL69
	.uaword	.LFE118
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL65
	.uaword	.LVL67
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL67
	.uaword	.LVL69
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL69
	.uaword	.LFE118
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL69
	.uaword	.LVL72
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL75
	.uaword	.LVL76-1
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL69
	.uaword	.LVL72
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL75
	.uaword	.LVL76-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL69
	.uaword	.LVL72
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL72
	.uaword	.LVL75
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL75
	.uaword	.LVL77
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL77
	.uaword	.LFE118
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL70
	.uaword	.LVL72
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL70
	.uaword	.LVL72
	.uahalf	0x3
	.byte	0x9
	.byte	0xfb
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST42:
	.uaword	.LVL70
	.uaword	.LVL72
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST44:
	.uaword	.LVL71
	.uaword	.LVL72
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST45:
	.uaword	.LVL73
	.uaword	.LVL75
	.uahalf	0x2
	.byte	0x8f
	.sleb128 2
	.uaword	0
	.uaword	0
.LLST46:
	.uaword	.LVL73
	.uaword	.LVL74
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL74
	.uaword	.LVL75
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST47:
	.uaword	.LVL81
	.uaword	.LVL83
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL83
	.uaword	.LVL85
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL85
	.uaword	.LFE117
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST48:
	.uaword	.LVL81
	.uaword	.LVL84
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL84
	.uaword	.LVL85
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL85
	.uaword	.LFE117
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x6c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB121
	.uaword	.LFE121-.LFB121
	.uaword	.LFB120
	.uaword	.LFE120-.LFB120
	.uaword	.LFB119
	.uaword	.LFE119-.LFB119
	.uaword	.LFB118
	.uaword	.LFE118-.LFB118
	.uaword	.LFB111
	.uaword	.LFE111-.LFB111
	.uaword	.LFB112
	.uaword	.LFE112-.LFB112
	.uaword	.LFB113
	.uaword	.LFE113-.LFB113
	.uaword	.LFB114
	.uaword	.LFE114-.LFB114
	.uaword	.LFB115
	.uaword	.LFE115-.LFB115
	.uaword	.LFB116
	.uaword	.LFE116-.LFB116
	.uaword	.LFB117
	.uaword	.LFE117-.LFB117
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB78
	.uaword	.LBE78
	.uaword	.LBB100
	.uaword	.LBE100
	.uaword	0
	.uaword	0
	.uaword	.LBB79
	.uaword	.LBE79
	.uaword	.LBB85
	.uaword	.LBE85
	.uaword	0
	.uaword	0
	.uaword	.LBB86
	.uaword	.LBE86
	.uaword	.LBB101
	.uaword	.LBE101
	.uaword	.LBB102
	.uaword	.LBE102
	.uaword	.LBB103
	.uaword	.LBE103
	.uaword	.LBB104
	.uaword	.LBE104
	.uaword	0
	.uaword	0
	.uaword	.LBB137
	.uaword	.LBE137
	.uaword	.LBB145
	.uaword	.LBE145
	.uaword	.LBB149
	.uaword	.LBE149
	.uaword	0
	.uaword	0
	.uaword	.LBB139
	.uaword	.LBE139
	.uaword	.LBB142
	.uaword	.LBE142
	.uaword	0
	.uaword	0
	.uaword	.LBB146
	.uaword	.LBE146
	.uaword	.LBB169
	.uaword	.LBE169
	.uaword	0
	.uaword	0
	.uaword	.LBB150
	.uaword	.LBE150
	.uaword	.LBB165
	.uaword	.LBE165
	.uaword	.LBB170
	.uaword	.LBE170
	.uaword	.LBB172
	.uaword	.LBE172
	.uaword	0
	.uaword	0
	.uaword	.LBB152
	.uaword	.LBE152
	.uaword	.LBB161
	.uaword	.LBE161
	.uaword	0
	.uaword	0
	.uaword	.LBB156
	.uaword	.LBE156
	.uaword	.LBB159
	.uaword	.LBE159
	.uaword	0
	.uaword	0
	.uaword	.LBB166
	.uaword	.LBE166
	.uaword	.LBB171
	.uaword	.LBE171
	.uaword	0
	.uaword	0
	.uaword	.LBB187
	.uaword	.LBE187
	.uaword	.LBB212
	.uaword	.LBE212
	.uaword	0
	.uaword	0
	.uaword	.LBB189
	.uaword	.LBE189
	.uaword	.LBB194
	.uaword	.LBE194
	.uaword	.LBB195
	.uaword	.LBE195
	.uaword	.LBB196
	.uaword	.LBE196
	.uaword	0
	.uaword	0
	.uaword	.LBB197
	.uaword	.LBE197
	.uaword	.LBB210
	.uaword	.LBE210
	.uaword	0
	.uaword	0
	.uaword	.LBB203
	.uaword	.LBE203
	.uaword	.LBB206
	.uaword	.LBE206
	.uaword	0
	.uaword	0
	.uaword	.LFB121
	.uaword	.LFE121
	.uaword	.LFB120
	.uaword	.LFE120
	.uaword	.LFB119
	.uaword	.LFE119
	.uaword	.LFB118
	.uaword	.LFE118
	.uaword	.LFB111
	.uaword	.LFE111
	.uaword	.LFB112
	.uaword	.LFE112
	.uaword	.LFB113
	.uaword	.LFE113
	.uaword	.LFB114
	.uaword	.LFE114
	.uaword	.LFB115
	.uaword	.LFE115
	.uaword	.LFB116
	.uaword	.LFE116
	.uaword	.LFB117
	.uaword	.LFE117
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"idService_uo"
.LASF4:
	.string	"idJob_en"
.LASF3:
	.string	"QueueEntry_pst"
.LASF2:
	.string	"ServiceBit_uo"
.LASF5:
	.string	"Result_uo"
.LASF1:
	.string	"idBlock_uo"
	.extern	NvM_Prv_GetJobId,STT_FUNC,0
	.extern	NvM_Prv_BlockDescriptors_acst,STT_OBJECT,3120
	.extern	NvM_Prv_UpdateActiveServiceData,STT_FUNC,0
	.extern	BswM_NvM_CurrentJobMode,STT_FUNC,0
	.extern	NvM_Prv_stRequestResult_au8,STT_OBJECT,60
	.extern	NvM_Prv_stRequests_au16,STT_OBJECT,120
	.extern	NvM_Prv_JobQueue_IsEmpty,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
