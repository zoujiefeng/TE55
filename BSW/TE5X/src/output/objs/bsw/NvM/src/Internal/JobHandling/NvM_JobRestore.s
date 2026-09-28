	.file	"NvM_JobRestore.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.NvM_Prv_JobRestore_ExplicitSync,"ax",@progbits
	.align 1
	.type	NvM_Prv_JobRestore_ExplicitSync, @function
NvM_Prv_JobRestore_ExplicitSync:
.LFB187:
	.file 1 "bsw\\NvM\\src\\Internal\\JobHandling\\NvM_JobRestore.c"
	.loc 1 176 0
.LVL0:
	.loc 1 178 0
	ld.hu	%d4, [%a6] 6
.LVL1:
	.loc 1 176 0
	mov.aa	%a12, %a4
.LBB29:
.LBB30:
	.file 2 ".\\output\\inc/..\\..\\bsw\\NvM\\src\\Internal\\BlockData\\NvM_Prv_BlockDescriptor_Inl.h"
	.loc 2 449 0
	ge.u	%d15, %d4, 60
.LBE30:
.LBE29:
	.loc 1 176 0
	mov.aa	%a15, %a5
.LBB32:
.LBB31:
	.loc 2 448 0
	mov.a	%a4, 0
.LVL2:
	.loc 2 449 0
	jnz	%d15, .L2
	.loc 2 451 0
	movh.a	%a2, hi:NvM_Prv_BlockDescriptors_acst
	mov.d	%d2, %a2
	addi	%d15, %d2, lo:NvM_Prv_BlockDescriptors_acst
	madd	%d2, %d15, %d4, 52
	mov.a	%a2, %d2
	ld.a	%a4, [%a2] 36
.LVL3:
.L2:
.LBE31:
.LBE32:
	.loc 1 178 0
	lea	%a5, [%a6] 14
.LVL4:
	ld.a	%a6, [%a6] 20
.LVL5:
	call	NvM_Prv_ExplicitSync_CopyData
.LVL6:
	st.b	[%a15]0, %d2
	.loc 1 183 0
	jz	%d2, .L7
	.loc 1 190 0
	jeq	%d2, 2, .L8
	ret
.L8:
	.loc 1 194 0
	mov	%d15, 5
	st.b	[%a12]0, %d15
	ret
.L7:
	.loc 1 188 0
	mov	%d15, 33
	st.b	[%a12]0, %d15
	ret
.LFE187:
	.size	NvM_Prv_JobRestore_ExplicitSync, .-NvM_Prv_JobRestore_ExplicitSync
.section .text.NvM_Prv_JobRestore_InitCallback,"ax",@progbits
	.align 1
	.type	NvM_Prv_JobRestore_InitCallback, @function
NvM_Prv_JobRestore_InitCallback:
.LFB188:
	.loc 1 206 0
.LVL7:
	.loc 1 209 0
	mov	%d15, 0
	st.b	[%a5]0, %d15
	.loc 1 211 0
	ld.hu	%d15, [%a6] 6
.LVL8:
.LBB44:
.LBB45:
	.loc 2 77 0
	ge.u	%d2, %d15, 60
	jnz	%d2, .L10
	.loc 2 78 0
	movh	%d2, hi:NvM_Prv_BlockDescriptors_acst
	addi	%d2, %d2, lo:NvM_Prv_BlockDescriptors_acst
	madd	%d3, %d2, %d15, 52
	mov.a	%a15, %d3
	ld.w	%d3, [%a15] 48
	.loc 2 77 0
	jnz.t	%d3, 13, .L11
.L10:
.LBE45:
.LBE44:
	.loc 1 235 0
	mov	%d2, 35
	st.b	[%a4]0, %d2
.LVL9:
.L19:
	.loc 1 239 0
	ld.bu	%d2, [%a6] 10
	jnz	%d2, .L9
.LVL10:
.LBB46:
.LBB47:
.LBB48:
	.loc 2 494 0
	ge.u	%d2, %d15, 60
	jnz	%d2, .L9
	movh	%d2, hi:NvM_Prv_BlockDescriptors_acst
	addi	%d2, %d2, lo:NvM_Prv_BlockDescriptors_acst
.LVL11:
.L15:
	.loc 2 495 0
	madd	%d3, %d2, %d15, 52
	mov.a	%a15, %d3
	ld.a	%a15, [%a15] 32
	.loc 2 494 0
	jz.a	%a15, .L9
	mov.aa	%a12, %a5
	mov.aa	%a13, %a4
	.loc 2 497 0
	calli	%a15
.LVL12:
.LBE48:
.LBE47:
	.loc 1 243 0
	jz	%d2, .L9
	.loc 1 246 0
	mov	%d15, 5
.LVL13:
	st.b	[%a13]0, %d15
	.loc 1 247 0
	mov	%d15, 2
	st.b	[%a12]0, %d15
	ret
.LVL14:
.L9:
	ret
.LVL15:
.L11:
.LBE46:
	.loc 1 215 0
	mov	%d15, 34
	st.b	[%a4]0, %d15
	.loc 1 218 0
	mov	%d15, 1
	st.b	[%a5] 4, %d15
.LVL16:
	.loc 1 219 0
	ld.hu	%d15, [%a6] 6
.LVL17:
.LBB49:
.LBB50:
	.loc 2 158 0
	lt.u	%d3, %d15, 60
	jz	%d3, .L32
.LVL18:
.LBB51:
.LBB52:
	.loc 2 159 0
	madd	%d3, %d2, %d15, 52
	.loc 2 156 0
	mov	%d15, 0
	.loc 2 159 0
	mov.a	%a15, %d3
	ld.a	%a15, [%a15] 4
	.loc 2 158 0
	jz.a	%a15, .L12
	.loc 2 161 0
	ld.hu	%d15, [%a15]0
.LVL19:
.L12:
.LBE52:
.LBE51:
.LBE50:
.LBE49:
	.loc 1 219 0
	st.h	[%a5] 6, %d15
	.loc 1 220 0
	mov	%d15, 0
.LVL20:
	st.w	[%a5] 12, %d15
.LVL21:
	.loc 1 222 0
	ld.hu	%d15, [%a6] 6
.LVL22:
.LBB56:
.LBB57:
	.loc 2 77 0
	ge.u	%d3, %d15, 60
	jnz	%d3, .L13
	.loc 2 78 0
	madd	%d3, %d2, %d15, 52
	mov.a	%a15, %d3
	ld.w	%d3, [%a15] 48
	.loc 2 77 0
	jz.t	%d3, 7, .L13
.LBE57:
.LBE56:
	.loc 1 223 0
	ld.bu	%d3, [%a6] 11
	jz	%d3, .L13
	.loc 1 225 0
	ld.w	%d3, [%a6] 20
	st.w	[%a5] 8, %d3
	.loc 1 239 0
	ld.bu	%d3, [%a6] 10
	jz	%d3, .L15
	ret
.L13:
	.loc 1 229 0
	ld.w	%d2, [%a6] 16
	st.w	[%a5] 8, %d2
	j	.L19
.LVL23:
.L32:
.LBB58:
.LBB55:
.LBB54:
.LBB53:
	.loc 2 156 0
	mov	%d15, 0
	j	.L12
.LBE53:
.LBE54:
.LBE55:
.LBE58:
.LFE188:
	.size	NvM_Prv_JobRestore_InitCallback, .-NvM_Prv_JobRestore_InitCallback
.section .text.NvM_Prv_JobRestore_StartWrite,"ax",@progbits
	.align 1
	.type	NvM_Prv_JobRestore_StartWrite, @function
NvM_Prv_JobRestore_StartWrite:
.LFB190:
	.loc 1 281 0
.LVL24:
	.loc 1 282 0
	mov	%d15, 0
	st.b	[%a5]0, %d15
	.loc 1 293 0
	ld.bu	%d15, [%a6] 2
	ne	%d15, %d15, 251
	jz	%d15, .L35
	.loc 1 308 0
	mov	%d15, 5
	st.b	[%a4]0, %d15
	ret
.L35:
.LVL25:
.LBB61:
.LBB62:
	.loc 1 298 0
	mov	%d4, 2
	ld.bu	%d5, [%a6] 8
	j	NvM_Prv_Job_Start
.LVL26:
.LBE62:
.LBE61:
.LFE190:
	.size	NvM_Prv_JobRestore_StartWrite, .-NvM_Prv_JobRestore_StartWrite
.section .text.NvM_Prv_JobRestore_Crc,"ax",@progbits
	.align 1
	.type	NvM_Prv_JobRestore_Crc, @function
NvM_Prv_JobRestore_Crc:
.LFB189:
	.loc 1 256 0
.LVL27:
	.loc 1 257 0
	mov	%d15, 0
	.loc 1 256 0
	mov.aa	%a12, %a4
	mov.aa	%a15, %a5
	.loc 1 257 0
	st.b	[%a5]0, %d15
	.loc 1 259 0
	mov	%d4, 2
	.loc 1 260 0
	mov	%d15, 34
	.loc 1 256 0
	mov.aa	%a13, %a6
	.loc 1 259 0
	call	NvM_Prv_JobResource_DoStateMachine
.LVL28:
	.loc 1 260 0
	st.b	[%a12]0, %d15
	.loc 1 262 0
	ld.bu	%d15, [%a15]0
	jnz	%d15, .L36
.LVL29:
.LBB65:
.LBB66:
	.loc 1 265 0
	ld.w	%d15, [%a15] 12
	st.w	[%a15] 16, %d15
	.loc 1 267 0
	ld.bu	%d15, [%a13] 11
	jnz	%d15, .L42
	.loc 1 274 0
	mov	%d15, 35
	st.b	[%a12]0, %d15
.LVL30:
.L36:
	ret
.LVL31:
.L42:
	.loc 1 270 0
	ld.hu	%d4, [%a13] 6
	lea	%a4, [%a15] 12
	.loc 1 274 0
	mov	%d15, 35
	.loc 1 270 0
	call	NvM_Prv_Crc_SetRamBlockCrc
.LVL32:
	.loc 1 274 0
	st.b	[%a12]0, %d15
	j	.L36
.LBE66:
.LBE65:
.LFE189:
	.size	NvM_Prv_JobRestore_Crc, .-NvM_Prv_JobRestore_Crc
.section .text.NvM_Prv_JobRestore_Start,"ax",@progbits
	.align 1
	.type	NvM_Prv_JobRestore_Start, @function
NvM_Prv_JobRestore_Start:
.LFB185:
	.loc 1 105 0
.LVL33:
	.loc 1 109 0
	ld.hu	%d15, [%a6] 6
.LVL34:
	ld.a	%a15, [%a6] 24
.LBB73:
.LBB74:
	.loc 2 158 0
	ge.u	%d2, %d15, 60
	.loc 2 156 0
	mov	%d3, 0
	.loc 2 158 0
	jnz	%d2, .L44
.LVL35:
.LBB75:
.LBB76:
	.loc 2 159 0
	movh.a	%a2, hi:NvM_Prv_BlockDescriptors_acst
	mov.d	%d4, %a2
	addi	%d2, %d4, lo:NvM_Prv_BlockDescriptors_acst
	madd	%d4, %d2, %d15, 52
	mov.a	%a2, %d4
	ld.a	%a2, [%a2] 4
	.loc 2 158 0
	jz.a	%a2, .L44
	.loc 2 161 0
	ld.hu	%d3, [%a2]0
.LVL36:
.L44:
.LBE76:
.LBE75:
.LBE74:
.LBE73:
	.loc 1 109 0
	st.h	[%a15]0, %d3
.LVL37:
	.loc 1 114 0
	ld.hu	%d2, [%a6] 6
.LVL38:
	.loc 1 124 0
	mov	%d15, 33
.LVL39:
.LBB77:
.LBB78:
	.loc 2 295 0
	ge.u	%d3, %d2, 60
.LVL40:
	jnz	%d3, .L45
.LVL41:
	.loc 2 297 0
	movh.a	%a15, hi:NvM_Prv_BlockDescriptors_acst
	mov.d	%d4, %a15
	addi	%d3, %d4, lo:NvM_Prv_BlockDescriptors_acst
	madd	%d4, %d3, %d2, 52
	mov.a	%a15, %d4
.LBE78:
.LBE77:
	.loc 1 114 0
	ld.w	%d2, [%a15] 20
	.loc 1 119 0
	seln	%d15, %d2, %d15, 31
.LVL42:
.L45:
	st.b	[%a4]0, %d15
	.loc 1 126 0
	mov	%d15, 0
	st.b	[%a5]0, %d15
	ret
.LFE185:
	.size	NvM_Prv_JobRestore_Start, .-NvM_Prv_JobRestore_Start
.section .text.NvM_Prv_JobRestore_CopyFromRom,"ax",@progbits
	.align 1
	.type	NvM_Prv_JobRestore_CopyFromRom, @function
NvM_Prv_JobRestore_CopyFromRom:
.LFB186:
	.loc 1 132 0
.LVL43:
	.loc 1 137 0
	ld.hu	%d15, [%a6] 6
.LVL44:
	.loc 1 132 0
	mov.aa	%a12, %a5
.LBB93:
.LBB94:
	.loc 2 158 0
	ge.u	%d2, %d15, 60
	jnz	%d2, .L59
.LVL45:
.LBB95:
.LBB96:
	.loc 2 159 0
	mul	%d15, %d15, 52
.LVL46:
	movh.a	%a3, hi:NvM_Prv_BlockDescriptors_acst
	lea	%a3, [%a3] lo:NvM_Prv_BlockDescriptors_acst
	addsc.a	%a15, %a3, %d15, 0
	.loc 2 158 0
	mov	%d4, 0
	.loc 2 159 0
	ld.a	%a15, [%a15] 4
	.loc 2 158 0
	jz.a	%a15, .L53
.LVL47:
	ld.hu	%d4, [%a15]0
.LVL48:
.L53:
.LBE96:
.LBE95:
.LBE94:
.LBE93:
.LBB97:
.LBB98:
	.loc 2 228 0
	addsc.a	%a2, %a3, %d15, 0
.LBE98:
.LBE97:
	.loc 1 144 0
	ld.bu	%d2, [%a2] 44
.LBB100:
.LBB99:
	.loc 2 228 0
	ld.bu	%d3, [%a2] 11
.LVL49:
.LBE99:
.LBE100:
.LBB101:
.LBB102:
	.loc 2 297 0
	ld.a	%a15, [%a2] 20
.LVL50:
.LBE102:
.LBE101:
	.loc 1 144 0
	jne	%d2, 2, .L54
	.loc 1 149 0
	ld.bu	%d2, [%a6] 8
	sub	%d3, %d2, %d3
	mul	%d2, %d4, %d3
	addsc.a	%a15, %a15, %d2, 0
.LVL51:
.L54:
.LBB104:
.LBB105:
	.loc 2 78 0
	addsc.a	%a3, %a3, %d15, 0
	ld.w	%d15, [%a3] 48
	.loc 2 77 0
	jnz.t	%d15, 7, .L58
.LVL52:
.L52:
.LBE105:
.LBE104:
	.loc 1 161 0
	ld.a	%a5, [%a6] 16
.LVL53:
	.loc 1 163 0
	mov	%d15, 33
	st.b	[%a4]0, %d15
.LVL54:
.LBB106:
.LBB107:
	.file 3 ".\\output\\inc/..\\..\\bsw\\Rba_MemLib\\src\\rba_MemLib_Inl.h"
	.loc 3 141 0
	mov.aa	%a4, %a15
.LVL55:
.LBE107:
.LBE106:
	.loc 1 170 0
	mov	%d15, 0
.LBB111:
.LBB108:
	.loc 3 141 0
	call	rba_MemLib_MemCopy_Provided
.LVL56:
.LBE108:
.LBE111:
	.loc 1 170 0
	st.b	[%a12]0, %d15
	ret
.LVL57:
.L59:
	.loc 1 137 0
	mov	%d4, 0
.LBB112:
.LBB103:
	.loc 2 294 0
	mov.a	%a15, 0
	j	.L52
.LVL58:
.L58:
.LBE103:
.LBE112:
	.loc 1 153 0
	ld.bu	%d15, [%a6] 11
	jz	%d15, .L52
	.loc 1 155 0
	ld.a	%a5, [%a6] 20
.LVL59:
	.loc 1 157 0
	mov	%d15, 32
	st.b	[%a4]0, %d15
.LVL60:
.LBB113:
.LBB109:
	.loc 3 141 0
	mov.aa	%a4, %a15
.LVL61:
.LBE109:
.LBE113:
	.loc 1 170 0
	mov	%d15, 0
.LBB114:
.LBB110:
	.loc 3 141 0
	call	rba_MemLib_MemCopy_Provided
.LVL62:
.LBE110:
.LBE114:
	.loc 1 170 0
	st.b	[%a12]0, %d15
	ret
.LFE186:
	.size	NvM_Prv_JobRestore_CopyFromRom, .-NvM_Prv_JobRestore_CopyFromRom
.section .text.NvM_Prv_JobRestore_GetStateFct,"ax",@progbits
	.align 1
	.global	NvM_Prv_JobRestore_GetStateFct
	.type	NvM_Prv_JobRestore_GetStateFct, @function
NvM_Prv_JobRestore_GetStateFct:
.LFB184:
	.loc 1 63 0
.LVL63:
	.loc 1 66 0
	ld.bu	%d2, [%a4]0
	ge.u	%d15, %d2, 36
	jz	%d15, .L74
.L65:
	.loc 1 96 0
	mov.a	%a2, 0
	.loc 1 97 0
	ret
.L74:
	.loc 1 66 0
	movh.a	%a15, hi:.L67
	lea	%a15, [%a15] lo:.L67
	addsc.a	%a15, %a15, %d2, 2
	ji	%a15
	.align 2
	.align 2
.L67:
	.code32
	j	.L66
	.code32
	j	.L65
	.code32
	j	.L65
	.code32
	j	.L65
	.code32
	j	.L65
	.code32
	j	.L65
	.code32
	j	.L65
	.code32
	j	.L65
	.code32
	j	.L65
	.code32
	j	.L65
	.code32
	j	.L65
	.code32
	j	.L65
	.code32
	j	.L65
	.code32
	j	.L65
	.code32
	j	.L65
	.code32
	j	.L65
	.code32
	j	.L65
	.code32
	j	.L65
	.code32
	j	.L65
	.code32
	j	.L65
	.code32
	j	.L65
	.code32
	j	.L65
	.code32
	j	.L65
	.code32
	j	.L65
	.code32
	j	.L65
	.code32
	j	.L65
	.code32
	j	.L65
	.code32
	j	.L65
	.code32
	j	.L65
	.code32
	j	.L65
	.code32
	j	.L66
	.code32
	j	.L73
	.code32
	j	.L69
	.code32
	j	.L70
	.code32
	j	.L71
	.code32
	j	.L72
.L73:
	.loc 1 76 0
	movh.a	%a2, hi:NvM_Prv_JobRestore_CopyFromRom
	lea	%a2, [%a2] lo:NvM_Prv_JobRestore_CopyFromRom
.LVL64:
	.loc 1 100 0
	ret
.LVL65:
.L69:
	.loc 1 80 0
	movh.a	%a2, hi:NvM_Prv_JobRestore_ExplicitSync
	lea	%a2, [%a2] lo:NvM_Prv_JobRestore_ExplicitSync
	ret
.L70:
.LVL66:
	.loc 1 84 0
	movh.a	%a2, hi:NvM_Prv_JobRestore_InitCallback
	lea	%a2, [%a2] lo:NvM_Prv_JobRestore_InitCallback
	.loc 1 85 0
	ret
.LVL67:
.L71:
	.loc 1 88 0
	movh.a	%a2, hi:NvM_Prv_JobRestore_Crc
	lea	%a2, [%a2] lo:NvM_Prv_JobRestore_Crc
	.loc 1 89 0
	ret
.LVL68:
.L72:
	.loc 1 92 0
	movh.a	%a2, hi:NvM_Prv_JobRestore_StartWrite
	lea	%a2, [%a2] lo:NvM_Prv_JobRestore_StartWrite
	.loc 1 93 0
	ret
.LVL69:
.L66:
	.loc 1 72 0
	mov	%d15, 30
	.loc 1 70 0
	movh.a	%a2, hi:NvM_Prv_JobRestore_Start
	.loc 1 72 0
	st.b	[%a4]0, %d15
	.loc 1 70 0
	lea	%a2, [%a2] lo:NvM_Prv_JobRestore_Start
	.loc 1 73 0
	ret
.LFE184:
	.size	NvM_Prv_JobRestore_GetStateFct, .-NvM_Prv_JobRestore_GetStateFct
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
	.uaword	.LFB188
	.uaword	.LFE188-.LFB188
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB190
	.uaword	.LFE190-.LFB190
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB189
	.uaword	.LFE189-.LFB189
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB185
	.uaword	.LFE185-.LFB185
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB186
	.uaword	.LFE186-.LFB186
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
	.file 17 ".\\output\\inc/..\\..\\bsw\\NvM\\src\\Internal\\BlockData\\NvM_Prv_BlockData.h"
	.file 18 ".\\output\\inc/..\\..\\bsw\\Dem\\src\\main\\Dem_OperationCycle.h"
	.file 19 "bsw\\NvM\\src\\Internal\\JobHandling\\NvM_Prv_Job.h"
	.file 20 ".\\output\\inc/..\\..\\bsw\\NvM\\src\\Internal\\Crc\\NvM_Prv_Crc.h"
	.file 21 ".\\output\\inc/..\\..\\bsw\\NvM\\src\\Internal\\ExplicitSynchronization\\NvM_Prv_ExplicitSynchronization.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x277d
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\NvM\\src\\Internal\\JobHandling\\NvM_JobRestore.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0xa0
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
	.uaword	0x1dc
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
	.uaword	0x208
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
	.uaword	0x244
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
	.uaword	0x1dc
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
	.uaword	0x1cf
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x4
	.byte	0x4
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2db
	.uleb128 0x6
	.uaword	0x1cf
	.uleb128 0x5
	.byte	0x4
	.uaword	0x1cf
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2ec
	.uleb128 0x6
	.uaword	0x1fa
	.uleb128 0x5
	.byte	0x4
	.uaword	0x1fa
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2fd
	.uleb128 0x7
	.uleb128 0x8
	.string	"NvM_BlockIdType"
	.byte	0x6
	.uahalf	0x1ca
	.uaword	0x1fa
	.uleb128 0x8
	.string	"NvM_RequestResultType"
	.byte	0x6
	.uahalf	0x1d4
	.uaword	0x1cf
	.uleb128 0x5
	.byte	0x4
	.uaword	0x33a
	.uleb128 0x9
	.byte	0x1
	.uaword	0x2b1
	.uleb128 0x5
	.byte	0x4
	.uaword	0x346
	.uleb128 0xa
	.byte	0x1
	.uaword	0x2b1
	.uaword	0x356
	.uleb128 0xb
	.uaword	0x1cf
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.byte	0x7
	.byte	0xa2
	.uaword	0x39c
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
	.uaword	0x356
	.uleb128 0xe
	.byte	0x1
	.byte	0x7
	.uahalf	0x106
	.uaword	0x5cd
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
	.uaword	0x3bb
	.uleb128 0x8
	.string	"NvM_Prv_ServiceBit_tuo"
	.byte	0x7
	.uahalf	0x147
	.uaword	0x1fa
	.uleb128 0x8
	.string	"NvM_Prv_idService_tuo"
	.byte	0x7
	.uahalf	0x14c
	.uaword	0x1cf
	.uleb128 0x8
	.string	"NvM_Prv_idQueue_tuo"
	.byte	0x7
	.uahalf	0x174
	.uaword	0x1cf
	.uleb128 0xf
	.byte	0x4
	.byte	0x7
	.uahalf	0x178
	.uaword	0x67e
	.uleb128 0x10
	.string	"Crc8_u8"
	.byte	0x7
	.uahalf	0x17a
	.uaword	0x1cf
	.uleb128 0x10
	.string	"Crc16_u16"
	.byte	0x7
	.uahalf	0x17b
	.uaword	0x1fa
	.uleb128 0x10
	.string	"Crc32_u32"
	.byte	0x7
	.uahalf	0x17c
	.uaword	0x236
	.byte	0
	.uleb128 0x8
	.string	"NvM_Prv_Crc_tun"
	.byte	0x7
	.uahalf	0x17e
	.uaword	0x640
	.uleb128 0xf
	.byte	0x4
	.byte	0x7
	.uahalf	0x180
	.uaword	0x6cf
	.uleb128 0x10
	.string	"ptrRamBlock_pv"
	.byte	0x7
	.uahalf	0x182
	.uaword	0x2d3
	.uleb128 0x10
	.string	"ptrRamBlock_pu8"
	.byte	0x7
	.uahalf	0x183
	.uaword	0x2e0
	.byte	0
	.uleb128 0x8
	.string	"NvM_Prv_ptrRamBlock_tun"
	.byte	0x7
	.uahalf	0x185
	.uaword	0x696
	.uleb128 0xf
	.byte	0x4
	.byte	0x7
	.uahalf	0x187
	.uaword	0x72a
	.uleb128 0x10
	.string	"ptrRomBlock_pcv"
	.byte	0x7
	.uahalf	0x189
	.uaword	0x2f7
	.uleb128 0x10
	.string	"ptrRomBlock_pcu8"
	.byte	0x7
	.uahalf	0x18a
	.uaword	0x2d5
	.byte	0
	.uleb128 0x8
	.string	"NvM_Prv_ptrRomBlock_tun"
	.byte	0x7
	.uahalf	0x18c
	.uaword	0x6ef
	.uleb128 0x11
	.byte	0xc
	.byte	0x8
	.byte	0x9
	.uaword	0x79e
	.uleb128 0x12
	.uaword	.LASF0
	.byte	0x8
	.byte	0xc
	.uaword	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.string	"UsedSizeInBytes_pu16"
	.byte	0x8
	.byte	0xe
	.uaword	0x2f1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.string	"OffsetPlainData_u16"
	.byte	0x8
	.byte	0x13
	.uaword	0x1fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x3
	.string	"NvM_Prv_InternalBuffer_st"
	.byte	0x8
	.byte	0x15
	.uaword	0x74a
	.uleb128 0xc
	.byte	0x1
	.byte	0x9
	.byte	0x20
	.uaword	0xdfe
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
	.uaword	0x7bf
	.uleb128 0xc
	.byte	0x1
	.byte	0x9
	.byte	0xa5
	.uaword	0xf15
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
	.uaword	0xe17
	.uleb128 0x11
	.byte	0xc
	.byte	0x9
	.byte	0xb7
	.uaword	0xf87
	.uleb128 0x13
	.string	"isFirstCall_b"
	.byte	0x9
	.byte	0xbb
	.uaword	0x281
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.string	"Length_u16"
	.byte	0x9
	.byte	0xbd
	.uaword	0x1fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x12
	.uaword	.LASF0
	.byte	0x9
	.byte	0xbf
	.uaword	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.string	"Crc_un"
	.byte	0x9
	.byte	0xc1
	.uaword	0x67e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x3
	.string	"NvM_Prv_Job_CrcCalculation_tst"
	.byte	0x9
	.byte	0xc3
	.uaword	0xf32
	.uleb128 0x11
	.byte	0x10
	.byte	0x9
	.byte	0xc5
	.uaword	0xfe6
	.uleb128 0x13
	.string	"Calculation_st"
	.byte	0x9
	.byte	0xc7
	.uaword	0xf87
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.string	"CrcRamBlk_un"
	.byte	0x9
	.byte	0xcb
	.uaword	0x67e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x3
	.string	"NvM_Prv_Job_CrcData_tst"
	.byte	0x9
	.byte	0xcd
	.uaword	0xfad
	.uleb128 0x11
	.byte	0x20
	.byte	0x9
	.byte	0xcf
	.uaword	0x1174
	.uleb128 0x13
	.string	"idJob_en"
	.byte	0x9
	.byte	0xd2
	.uaword	0x5cd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.string	"idQueue_uo"
	.byte	0x9
	.byte	0xd4
	.uaword	0x624
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x13
	.string	"idService_uo"
	.byte	0x9
	.byte	0xd6
	.uaword	0x606
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x13
	.string	"ServiceBit_uo"
	.byte	0x9
	.byte	0xd8
	.uaword	0x5e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.uaword	.LASF1
	.byte	0x9
	.byte	0xda
	.uaword	0x2fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x13
	.string	"idxDataset_u8"
	.byte	0x9
	.byte	0xdc
	.uaword	0x1cf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x13
	.string	"isMultiServiceActive_b"
	.byte	0x9
	.byte	0xdf
	.uaword	0x281
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x13
	.string	"isAuxServiceActive_b"
	.byte	0x9
	.byte	0xe1
	.uaword	0x281
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x13
	.string	"isPRamBlockUsed_b"
	.byte	0x9
	.byte	0xe3
	.uaword	0x281
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0x13
	.string	"isIntBufferToUse_b"
	.byte	0x9
	.byte	0xe5
	.uaword	0x281
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x13
	.string	"isEncryptionEnabled_b"
	.byte	0x9
	.byte	0xe7
	.uaword	0x281
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0x13
	.string	"cntrExpSyncOperations_u8"
	.byte	0x9
	.byte	0xea
	.uaword	0x1cf
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x13
	.string	"UserData_un"
	.byte	0x9
	.byte	0xf3
	.uaword	0x6cf
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x13
	.string	"IntBuffer_st"
	.byte	0x9
	.byte	0xf6
	.uaword	0x79e
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0
	.uleb128 0x3
	.string	"NvM_Prv_JobData_tst"
	.byte	0x9
	.byte	0xf8
	.uaword	0x1005
	.uleb128 0x11
	.byte	0x14
	.byte	0x9
	.byte	0xfa
	.uaword	0x11df
	.uleb128 0x13
	.string	"Result_en"
	.byte	0x9
	.byte	0xfd
	.uaword	0xf15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.string	"ProductionError_u8"
	.byte	0x9
	.byte	0xff
	.uaword	0x1cf
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x14
	.string	"CrcData_st"
	.byte	0x9
	.uahalf	0x102
	.uaword	0xfe6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x8
	.string	"NvM_Prv_JobResult_tst"
	.byte	0x9
	.uahalf	0x109
	.uaword	0x118f
	.uleb128 0x8
	.string	"NvM_Prv_Job_State_tpfct"
	.byte	0x9
	.uahalf	0x115
	.uaword	0x121d
	.uleb128 0x5
	.byte	0x4
	.uaword	0x1223
	.uleb128 0x15
	.byte	0x1
	.uaword	0x1239
	.uleb128 0xb
	.uaword	0x1239
	.uleb128 0xb
	.uaword	0x123f
	.uleb128 0xb
	.uaword	0x1245
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0xdfe
	.uleb128 0x5
	.byte	0x4
	.uaword	0x11df
	.uleb128 0x5
	.byte	0x4
	.uaword	0x124b
	.uleb128 0x6
	.uaword	0x1174
	.uleb128 0x5
	.byte	0x4
	.uaword	0x1256
	.uleb128 0x6
	.uaword	0x67e
	.uleb128 0x3
	.string	"NvM_Prv_ExplicitSync_Copy_tpfct"
	.byte	0xa
	.byte	0x27
	.uaword	0x1282
	.uleb128 0x5
	.byte	0x4
	.uaword	0x1288
	.uleb128 0xa
	.byte	0x1
	.uaword	0x2b1
	.uaword	0x1298
	.uleb128 0xb
	.uaword	0x2d3
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.byte	0xa
	.byte	0x2d
	.uaword	0x155d
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
	.uaword	0x1298
	.uleb128 0x11
	.byte	0xc
	.byte	0xa
	.byte	0x77
	.uaword	0x15f7
	.uleb128 0x13
	.string	"MultiBlockCallback_pfct"
	.byte	0xa
	.byte	0x7f
	.uaword	0x1608
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.string	"RbMultiBlockStartCallback_pfct"
	.byte	0xa
	.byte	0x84
	.uaword	0x161a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.string	"ObserverCallback_pfct"
	.byte	0xa
	.byte	0x8a
	.uaword	0x163a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.uaword	0x1608
	.uleb128 0xb
	.uaword	0x1cf
	.uleb128 0xb
	.uaword	0x316
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x15f7
	.uleb128 0x15
	.byte	0x1
	.uaword	0x161a
	.uleb128 0xb
	.uaword	0x1cf
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x160e
	.uleb128 0xa
	.byte	0x1
	.uaword	0x2b1
	.uaword	0x163a
	.uleb128 0xb
	.uaword	0x2fe
	.uleb128 0xb
	.uaword	0x1cf
	.uleb128 0xb
	.uaword	0x316
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x1620
	.uleb128 0x3
	.string	"NvM_Prv_Common_tst"
	.byte	0xa
	.byte	0x8d
	.uaword	0x1583
	.uleb128 0x11
	.byte	0x34
	.byte	0xa
	.byte	0x95
	.uaword	0x1811
	.uleb128 0x13
	.string	"idBlockMemIf_u16"
	.byte	0xa
	.byte	0x9b
	.uaword	0x1fa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.string	"nrBlockBytes_pu16"
	.byte	0xa
	.byte	0xa9
	.uaword	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.string	"nrBlockBytesStored_u16"
	.byte	0xa
	.byte	0xb5
	.uaword	0x1fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x13
	.string	"idxDevice_u8"
	.byte	0xa
	.byte	0xbb
	.uaword	0x1cf
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x12
	.uaword	.LASF2
	.byte	0xa
	.byte	0xc0
	.uaword	0x1cf
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0x13
	.string	"nrRomBlocks_u8"
	.byte	0xa
	.byte	0xc5
	.uaword	0x1cf
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x13
	.string	"adrRamBlock_ppv"
	.byte	0xa
	.byte	0xd6
	.uaword	0x1811
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x12
	.uaword	.LASF3
	.byte	0xa
	.byte	0xde
	.uaword	0x2f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x13
	.string	"SingleBlockCallback_pfct"
	.byte	0xa
	.byte	0xe8
	.uaword	0x1831
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x13
	.string	"SingleBlockStartCallback_pfct"
	.byte	0xa
	.byte	0xf0
	.uaword	0x340
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x13
	.string	"InitBlockCallback_pfct"
	.byte	0xa
	.byte	0xf9
	.uaword	0x334
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x16
	.uaword	.LASF4
	.byte	0xa
	.uahalf	0x102
	.uaword	0x1282
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x14
	.string	"WriteRamBlockToNvm_pfct"
	.byte	0xa
	.uahalf	0x10b
	.uaword	0x1282
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x14
	.string	"BlockManagementType_en"
	.byte	0xa
	.uahalf	0x110
	.uaword	0x39c
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x14
	.string	"JobPriority_u8"
	.byte	0xa
	.uahalf	0x115
	.uaword	0x1cf
	.byte	0x2
	.byte	0x23
	.uleb128 0x2d
	.uleb128 0x14
	.string	"stFlags_uo"
	.byte	0xa
	.uahalf	0x13e
	.uaword	0x236
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x1817
	.uleb128 0x6
	.uaword	0x2d3
	.uleb128 0xa
	.byte	0x1
	.uaword	0x2b1
	.uaword	0x1831
	.uleb128 0xb
	.uaword	0x1cf
	.uleb128 0xb
	.uaword	0x316
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x181c
	.uleb128 0x8
	.string	"NvM_Prv_BlockDescriptor_tst"
	.byte	0xa
	.uahalf	0x153
	.uaword	0x165a
	.uleb128 0x17
	.byte	0x4
	.byte	0xa
	.uahalf	0x158
	.uaword	0x1898
	.uleb128 0x14
	.string	"PersistentId_u16"
	.byte	0xa
	.uahalf	0x15a
	.uaword	0x1fa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"BlockId_u16"
	.byte	0xa
	.uahalf	0x15b
	.uaword	0x2fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x8
	.string	"NvM_Prv_PersId_BlockId_tst"
	.byte	0xa
	.uahalf	0x15c
	.uaword	0x185b
	.uleb128 0xc
	.byte	0x1
	.byte	0xb
	.byte	0x11
	.uaword	0x194c
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
	.uaword	0x1cf
	.uleb128 0x3
	.string	"Dem_boolean_least"
	.byte	0xc
	.byte	0x35
	.uaword	0x281
	.uleb128 0x3
	.string	"Dem_OpMoStateType"
	.byte	0xd
	.byte	0xd
	.uaword	0x1cf
	.uleb128 0x3
	.string	"Dem_FimStateType"
	.byte	0xd
	.byte	0x17
	.uaword	0x1cf
	.uleb128 0x11
	.byte	0x1
	.byte	0xe
	.byte	0x31
	.uaword	0x19d0
	.uleb128 0x13
	.string	"data3"
	.byte	0xe
	.byte	0x32
	.uaword	0x1cf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Dem_Cfg_Dtc_8Type"
	.byte	0xe
	.byte	0x33
	.uaword	0x19b7
	.uleb128 0x11
	.byte	0x2
	.byte	0xe
	.byte	0x35
	.uaword	0x1a02
	.uleb128 0x13
	.string	"data2"
	.byte	0xe
	.byte	0x36
	.uaword	0x1fa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Dem_Cfg_Dtc_16Type"
	.byte	0xe
	.byte	0x37
	.uaword	0x19e9
	.uleb128 0x11
	.byte	0x4
	.byte	0xe
	.byte	0x39
	.uaword	0x1a35
	.uleb128 0x13
	.string	"data1"
	.byte	0xe
	.byte	0x3a
	.uaword	0x236
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Dem_Cfg_Dtc_32Type"
	.byte	0xe
	.byte	0x3b
	.uaword	0x1a1c
	.uleb128 0x3
	.string	"Dem_OperationCycleList"
	.byte	0xf
	.byte	0x1a
	.uaword	0x1cf
	.uleb128 0x11
	.byte	0x2
	.byte	0x10
	.byte	0xe
	.uaword	0x1aba
	.uleb128 0x13
	.string	"DependentCycleMask"
	.byte	0x10
	.byte	0xf
	.uaword	0x1a4f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.string	"IsAllowedToBeStartedDirectly"
	.byte	0x10
	.byte	0x10
	.uaword	0x281
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x3
	.string	"Dem_Cfg_OperationCycleType"
	.byte	0x10
	.byte	0x11
	.uaword	0x1a6d
	.uleb128 0x18
	.string	"NvM_Prv_GetBlockSize"
	.byte	0x2
	.byte	0x9a
	.byte	0x1
	.uaword	0x1fa
	.byte	0x3
	.uaword	0x1b1f
	.uleb128 0x19
	.uaword	.LASF1
	.byte	0x2
	.byte	0x9a
	.uaword	0x2fe
	.uleb128 0x1a
	.string	"BlockSize_u16"
	.byte	0x2
	.byte	0x9c
	.uaword	0x1fa
	.byte	0
	.uleb128 0x1b
	.string	"NvM_Prv_GetRomBlockAddress"
	.byte	0x2
	.uahalf	0x124
	.byte	0x1
	.uaword	0x2f7
	.byte	0x3
	.uaword	0x1b61
	.uleb128 0x1c
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x124
	.uaword	0x2fe
	.uleb128 0x1d
	.uaword	.LASF3
	.byte	0x2
	.uahalf	0x126
	.uaword	0x2f7
	.byte	0
	.uleb128 0x18
	.string	"NvM_Prv_IsBlockSelected"
	.byte	0x2
	.byte	0x4a
	.byte	0x1
	.uaword	0x281
	.byte	0x3
	.uaword	0x1baa
	.uleb128 0x19
	.uaword	.LASF1
	.byte	0x2
	.byte	0x4a
	.uaword	0x2fe
	.uleb128 0x1e
	.string	"SelectionMask_en"
	.byte	0x2
	.byte	0x4b
	.uaword	0x155d
	.byte	0
	.uleb128 0x1b
	.string	"NvM_Prv_InvokeInitBlockCallback"
	.byte	0x2
	.uahalf	0x1eb
	.byte	0x1
	.uaword	0x2b1
	.byte	0x3
	.uaword	0x1bf6
	.uleb128 0x1c
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x1eb
	.uaword	0x2fe
	.uleb128 0x1f
	.string	"RetValue"
	.byte	0x2
	.uahalf	0x1ed
	.uaword	0x2b1
	.byte	0
	.uleb128 0x20
	.string	"NvM_Prv_JobRestore_StartWrite"
	.byte	0x1
	.uahalf	0x116
	.byte	0x1
	.byte	0x1
	.uaword	0x1c43
	.uleb128 0x1c
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x116
	.uaword	0x1239
	.uleb128 0x1c
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x117
	.uaword	0x123f
	.uleb128 0x1c
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x118
	.uaword	0x1245
	.byte	0
	.uleb128 0x21
	.string	"NvM_Prv_JobRestore_Crc"
	.byte	0x1
	.byte	0xfd
	.byte	0x1
	.byte	0x1
	.uaword	0x1c85
	.uleb128 0x19
	.uaword	.LASF5
	.byte	0x1
	.byte	0xfd
	.uaword	0x1239
	.uleb128 0x19
	.uaword	.LASF6
	.byte	0x1
	.byte	0xfe
	.uaword	0x123f
	.uleb128 0x19
	.uaword	.LASF7
	.byte	0x1
	.byte	0xff
	.uaword	0x1245
	.byte	0
	.uleb128 0x1b
	.string	"NvM_Prv_GetCopyFctForRead"
	.byte	0x2
	.uahalf	0x1be
	.byte	0x1
	.uaword	0x125b
	.byte	0x3
	.uaword	0x1cc6
	.uleb128 0x1c
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x1be
	.uaword	0x2fe
	.uleb128 0x1d
	.uaword	.LASF4
	.byte	0x2
	.uahalf	0x1c0
	.uaword	0x125b
	.byte	0
	.uleb128 0x18
	.string	"NvM_Prv_GetNrNonVolatileBlocks"
	.byte	0x2
	.byte	0xdf
	.byte	0x1
	.uaword	0x1cf
	.byte	0x3
	.uaword	0x1d09
	.uleb128 0x19
	.uaword	.LASF1
	.byte	0x2
	.byte	0xdf
	.uaword	0x2fe
	.uleb128 0x22
	.uaword	.LASF2
	.byte	0x2
	.byte	0xe1
	.uaword	0x1cf
	.byte	0
	.uleb128 0x18
	.string	"NvM_Prv_GetBlockType"
	.byte	0x2
	.byte	0xcb
	.byte	0x1
	.uaword	0x39c
	.byte	0x3
	.uaword	0x1d48
	.uleb128 0x19
	.uaword	.LASF1
	.byte	0x2
	.byte	0xcb
	.uaword	0x2fe
	.uleb128 0x1a
	.string	"BlockType"
	.byte	0x2
	.byte	0xcd
	.uaword	0x39c
	.byte	0
	.uleb128 0x21
	.string	"rba_MemLib_MemCopy"
	.byte	0x3
	.byte	0x8a
	.byte	0x1
	.byte	0x3
	.uaword	0x1d96
	.uleb128 0x1e
	.string	"src_pcu8"
	.byte	0x3
	.byte	0x8a
	.uaword	0x2d5
	.uleb128 0x1e
	.string	"dst_pu8"
	.byte	0x3
	.byte	0x8a
	.uaword	0x2e0
	.uleb128 0x1e
	.string	"length_u32"
	.byte	0x3
	.byte	0x8a
	.uaword	0x236
	.byte	0
	.uleb128 0x23
	.string	"NvM_Prv_JobRestore_ExplicitSync"
	.byte	0x1
	.byte	0xad
	.byte	0x1
	.uaword	.LFB187
	.uaword	.LFE187
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1e37
	.uleb128 0x24
	.uaword	.LASF5
	.byte	0x1
	.byte	0xad
	.uaword	0x1239
	.uaword	.LLST0
	.uleb128 0x24
	.uaword	.LASF6
	.byte	0x1
	.byte	0xae
	.uaword	0x123f
	.uaword	.LLST1
	.uleb128 0x24
	.uaword	.LASF7
	.byte	0x1
	.byte	0xaf
	.uaword	0x1245
	.uaword	.LLST2
	.uleb128 0x25
	.uaword	0x1c85
	.uaword	.LBB29
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xb2
	.uaword	0x1e23
	.uleb128 0x26
	.uaword	0x1cad
	.uaword	.LLST3
	.uleb128 0x27
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x28
	.uaword	0x1cb9
	.uaword	.LLST4
	.byte	0
	.byte	0
	.uleb128 0x29
	.uaword	.LVL6
	.uaword	0x265f
	.uleb128 0x2a
	.byte	0x1
	.byte	0x65
	.byte	0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x23
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x23
	.string	"NvM_Prv_JobRestore_InitCallback"
	.byte	0x1
	.byte	0xcb
	.byte	0x1
	.uaword	.LFB188
	.uaword	.LFE188
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1f80
	.uleb128 0x24
	.uaword	.LASF5
	.byte	0x1
	.byte	0xcb
	.uaword	0x1239
	.uaword	.LLST5
	.uleb128 0x24
	.uaword	.LASF6
	.byte	0x1
	.byte	0xcc
	.uaword	0x123f
	.uaword	.LLST6
	.uleb128 0x24
	.uaword	.LASF7
	.byte	0x1
	.byte	0xcd
	.uaword	0x1245
	.uaword	.LLST7
	.uleb128 0x2b
	.uaword	0x1b61
	.uaword	.LBB44
	.uaword	.LBE44
	.byte	0x1
	.byte	0xd3
	.uaword	0x1ebc
	.uleb128 0x2c
	.uaword	0x1b91
	.uahalf	0x2000
	.uleb128 0x26
	.uaword	0x1b86
	.uaword	.LLST8
	.byte	0
	.uleb128 0x2d
	.uaword	.LBB46
	.uaword	.LBE46
	.uaword	0x1f17
	.uleb128 0x1a
	.string	"stInitCallback_uo"
	.byte	0x1
	.byte	0xf2
	.uaword	0x2b1
	.uleb128 0x2e
	.uaword	0x1baa
	.uaword	.LBB47
	.uaword	.LBE47
	.byte	0x1
	.byte	0xf2
	.uleb128 0x26
	.uaword	0x1bd8
	.uaword	.LLST9
	.uleb128 0x2f
	.uaword	.LBB48
	.uaword	.LBE48
	.uleb128 0x28
	.uaword	0x1be4
	.uaword	.LLST10
	.uleb128 0x30
	.uaword	.LVL12
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.uaword	0x1adc
	.uaword	.LBB49
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0xdb
	.uaword	0x1f5d
	.uleb128 0x26
	.uaword	0x1afe
	.uaword	.LLST11
	.uleb128 0x27
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0x28
	.uaword	0x1b09
	.uaword	.LLST12
	.uleb128 0x27
	.uaword	.Ldebug_ranges0+0x30
	.uleb128 0x26
	.uaword	0x1afe
	.uaword	.LLST13
	.uleb128 0x27
	.uaword	.Ldebug_ranges0+0x30
	.uleb128 0x31
	.uaword	0x1b09
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uaword	0x1b61
	.uaword	.LBB56
	.uaword	.LBE56
	.byte	0x1
	.byte	0xde
	.uleb128 0x26
	.uaword	0x1b91
	.uaword	.LLST14
	.uleb128 0x26
	.uaword	0x1b86
	.uaword	.LLST15
	.byte	0
	.byte	0
	.uleb128 0x32
	.uaword	0x1bf6
	.uaword	.LFB190
	.uaword	.LFE190
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1fe5
	.uleb128 0x26
	.uaword	0x1c1e
	.uaword	.LLST16
	.uleb128 0x26
	.uaword	0x1c2a
	.uaword	.LLST17
	.uleb128 0x26
	.uaword	0x1c36
	.uaword	.LLST18
	.uleb128 0x2f
	.uaword	.LBB61
	.uaword	.LBE61
	.uleb128 0x26
	.uaword	0x1c36
	.uaword	.LLST19
	.uleb128 0x33
	.uaword	0x1c2a
	.uleb128 0x33
	.uaword	0x1c1e
	.uleb128 0x34
	.uaword	.LVL26
	.byte	0x1
	.uaword	0x26a0
	.uleb128 0x2a
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.uleb128 0x2a
	.byte	0x1
	.byte	0x66
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
	.uaword	0x1c43
	.uaword	.LFB189
	.uaword	.LFE189
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x2070
	.uleb128 0x26
	.uaword	0x1c63
	.uaword	.LLST20
	.uleb128 0x26
	.uaword	0x1c6e
	.uaword	.LLST21
	.uleb128 0x26
	.uaword	0x1c79
	.uaword	.LLST22
	.uleb128 0x2d
	.uaword	.LBB65
	.uaword	.LBE65
	.uaword	0x204e
	.uleb128 0x26
	.uaword	0x1c79
	.uaword	.LLST23
	.uleb128 0x26
	.uaword	0x1c6e
	.uaword	.LLST24
	.uleb128 0x26
	.uaword	0x1c63
	.uaword	.LLST25
	.uleb128 0x29
	.uaword	.LVL32
	.uaword	0x26dc
	.uleb128 0x2a
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 12
	.byte	0
	.byte	0
	.uleb128 0x29
	.uaword	.LVL28
	.uaword	0x270c
	.uleb128 0x2a
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x2a
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x2a
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x2a
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x23
	.string	"NvM_Prv_JobRestore_Start"
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.uaword	.LFB185
	.uaword	.LFE185
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x2142
	.uleb128 0x35
	.uaword	.LASF5
	.byte	0x1
	.byte	0x66
	.uaword	0x1239
	.byte	0x1
	.byte	0x64
	.uleb128 0x35
	.uaword	.LASF6
	.byte	0x1
	.byte	0x67
	.uaword	0x123f
	.byte	0x1
	.byte	0x65
	.uleb128 0x35
	.uaword	.LASF7
	.byte	0x1
	.byte	0x68
	.uaword	0x1245
	.byte	0x1
	.byte	0x66
	.uleb128 0x2b
	.uaword	0x1adc
	.uaword	.LBB73
	.uaword	.LBE73
	.byte	0x1
	.byte	0x6d
	.uaword	0x2116
	.uleb128 0x26
	.uaword	0x1afe
	.uaword	.LLST26
	.uleb128 0x2f
	.uaword	.LBB74
	.uaword	.LBE74
	.uleb128 0x28
	.uaword	0x1b09
	.uaword	.LLST27
	.uleb128 0x2f
	.uaword	.LBB75
	.uaword	.LBE75
	.uleb128 0x26
	.uaword	0x1afe
	.uaword	.LLST28
	.uleb128 0x2f
	.uaword	.LBB76
	.uaword	.LBE76
	.uleb128 0x31
	.uaword	0x1b09
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uaword	0x1b1f
	.uaword	.LBB77
	.uaword	.LBE77
	.byte	0x1
	.byte	0x72
	.uleb128 0x36
	.uaword	0x1b48
	.byte	0x2
	.byte	0x86
	.sleb128 6
	.uleb128 0x2f
	.uaword	.LBB78
	.uaword	.LBE78
	.uleb128 0x28
	.uaword	0x1b54
	.uaword	.LLST29
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.string	"NvM_Prv_JobRestore_CopyFromRom"
	.byte	0x1
	.byte	0x81
	.byte	0x1
	.uaword	.LFB186
	.uaword	.LFE186
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x2351
	.uleb128 0x24
	.uaword	.LASF5
	.byte	0x1
	.byte	0x81
	.uaword	0x1239
	.uaword	.LLST30
	.uleb128 0x24
	.uaword	.LASF6
	.byte	0x1
	.byte	0x82
	.uaword	0x123f
	.uaword	.LLST31
	.uleb128 0x24
	.uaword	.LASF7
	.byte	0x1
	.byte	0x83
	.uaword	0x1245
	.uaword	.LLST32
	.uleb128 0x37
	.string	"adrDestination_pu8"
	.byte	0x1
	.byte	0x88
	.uaword	0x2e0
	.uaword	.LLST33
	.uleb128 0x37
	.string	"BlockSize_u32"
	.byte	0x1
	.byte	0x89
	.uaword	0x236
	.uaword	.LLST34
	.uleb128 0x38
	.string	"nrNonVolatileBlocks_u8"
	.byte	0x1
	.byte	0x8a
	.uaword	0x1cf
	.byte	0x1
	.byte	0x53
	.uleb128 0x37
	.string	"adrSource_pcu8"
	.byte	0x1
	.byte	0x8b
	.uaword	0x2d5
	.uaword	.LLST35
	.uleb128 0x37
	.string	"ptrRomBlock_un"
	.byte	0x1
	.byte	0x8c
	.uaword	0x72a
	.uaword	.LLST36
	.uleb128 0x2b
	.uaword	0x1adc
	.uaword	.LBB93
	.uaword	.LBE93
	.byte	0x1
	.byte	0x89
	.uaword	0x2283
	.uleb128 0x26
	.uaword	0x1afe
	.uaword	.LLST37
	.uleb128 0x2f
	.uaword	.LBB94
	.uaword	.LBE94
	.uleb128 0x28
	.uaword	0x1b09
	.uaword	.LLST38
	.uleb128 0x2f
	.uaword	.LBB95
	.uaword	.LBE95
	.uleb128 0x26
	.uaword	0x1afe
	.uaword	.LLST39
	.uleb128 0x2f
	.uaword	.LBB96
	.uaword	.LBE96
	.uleb128 0x28
	.uaword	0x1b09
	.uaword	.LLST40
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.uaword	0x1cc6
	.uaword	.LBB97
	.uaword	.Ldebug_ranges0+0x48
	.byte	0x1
	.byte	0x8a
	.uaword	0x22af
	.uleb128 0x26
	.uaword	0x1cf2
	.uaword	.LLST41
	.uleb128 0x27
	.uaword	.Ldebug_ranges0+0x48
	.uleb128 0x28
	.uaword	0x1cfd
	.uaword	.LLST42
	.byte	0
	.byte	0
	.uleb128 0x25
	.uaword	0x1b1f
	.uaword	.LBB101
	.uaword	.Ldebug_ranges0+0x60
	.byte	0x1
	.byte	0x8d
	.uaword	0x22db
	.uleb128 0x26
	.uaword	0x1b48
	.uaword	.LLST43
	.uleb128 0x27
	.uaword	.Ldebug_ranges0+0x60
	.uleb128 0x28
	.uaword	0x1b54
	.uaword	.LLST44
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0x1b61
	.uaword	.LBB104
	.uaword	.LBE104
	.byte	0x1
	.byte	0x98
	.uaword	0x2301
	.uleb128 0x26
	.uaword	0x1b91
	.uaword	.LLST45
	.uleb128 0x26
	.uaword	0x1b86
	.uaword	.LLST46
	.byte	0
	.uleb128 0x39
	.uaword	0x1d48
	.uaword	.LBB106
	.uaword	.Ldebug_ranges0+0x78
	.byte	0x1
	.byte	0xa7
	.uleb128 0x26
	.uaword	0x1d83
	.uaword	.LLST47
	.uleb128 0x26
	.uaword	0x1d74
	.uaword	.LLST48
	.uleb128 0x26
	.uaword	0x1d64
	.uaword	.LLST49
	.uleb128 0x3a
	.uaword	.LVL56
	.uaword	0x274e
	.uaword	0x233f
	.uleb128 0x2a
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.uaword	.LVL62
	.uaword	0x274e
	.uleb128 0x2a
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3b
	.byte	0x1
	.string	"NvM_Prv_JobRestore_GetStateFct"
	.byte	0x1
	.byte	0x3e
	.byte	0x1
	.uaword	0x11fd
	.uaword	.LFB184
	.uaword	.LFE184
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x23b8
	.uleb128 0x35
	.uaword	.LASF5
	.byte	0x1
	.byte	0x3e
	.uaword	0x1239
	.byte	0x1
	.byte	0x64
	.uleb128 0x37
	.string	"JobRestore_State_pfct"
	.byte	0x1
	.byte	0x40
	.uaword	0x11fd
	.uaword	.LLST50
	.byte	0
	.uleb128 0x3c
	.string	"NvM_Prv_Common_cst"
	.byte	0xa
	.uahalf	0x16d
	.uaword	0x23d5
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.uaword	0x1640
	.uleb128 0x3d
	.uaword	0x1837
	.uaword	0x23ea
	.uleb128 0x3e
	.uaword	0x2c7
	.byte	0x3b
	.byte	0
	.uleb128 0x3c
	.string	"NvM_Prv_BlockDescriptors_acst"
	.byte	0xa
	.uahalf	0x172
	.uaword	0x2412
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.uaword	0x23da
	.uleb128 0x3d
	.uaword	0x1898
	.uaword	0x2427
	.uleb128 0x3e
	.uaword	0x2c7
	.byte	0x39
	.byte	0
	.uleb128 0x3c
	.string	"NvM_Prv_PersId_BlockId_acst"
	.byte	0xa
	.uahalf	0x176
	.uaword	0x244d
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.uaword	0x2417
	.uleb128 0x3d
	.uaword	0x1cf
	.uaword	0x2462
	.uleb128 0x3e
	.uaword	0x2c7
	.byte	0x3b
	.byte	0
	.uleb128 0x3f
	.string	"NvM_Prv_stBlock_au8"
	.byte	0x11
	.byte	0x54
	.uaword	0x2452
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.uaword	0x1fa
	.uaword	0x248f
	.uleb128 0x3e
	.uaword	0x2c7
	.byte	0x3b
	.byte	0
	.uleb128 0x3f
	.string	"NvM_Prv_stRequests_au16"
	.byte	0x11
	.byte	0x6b
	.uaword	0x247f
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.uaword	0x316
	.uaword	0x24c0
	.uleb128 0x3e
	.uaword	0x2c7
	.byte	0x3b
	.byte	0
	.uleb128 0x3f
	.string	"NvM_Prv_stRequestResult_au8"
	.byte	0x11
	.byte	0x74
	.uaword	0x24b0
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"NvM_Prv_idxDataSet_au8"
	.byte	0x11
	.byte	0x78
	.uaword	0x2452
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"NvM_Prv_idConfigStored_u16"
	.byte	0x11
	.byte	0x81
	.uaword	0x1fa
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"Dem_OpMoState"
	.byte	0xd
	.byte	0x1f
	.uaword	0x1986
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"Dem_FimState"
	.byte	0xd
	.byte	0x20
	.uaword	0x199f
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"Dem_TestFailedStatusInitialized"
	.byte	0xd
	.byte	0x21
	.uaword	0x196d
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.uaword	0x19d0
	.uaword	0x2590
	.uleb128 0x40
	.uaword	0x2c7
	.uahalf	0x1f4
	.byte	0
	.uleb128 0x3f
	.string	"Dem_Cfg_Dtc_8"
	.byte	0xe
	.byte	0x3f
	.uaword	0x25a7
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.uaword	0x257f
	.uleb128 0x3d
	.uaword	0x1a02
	.uaword	0x25bd
	.uleb128 0x40
	.uaword	0x2c7
	.uahalf	0x1f4
	.byte	0
	.uleb128 0x3f
	.string	"Dem_Cfg_Dtc_16"
	.byte	0xe
	.byte	0x40
	.uaword	0x25d5
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.uaword	0x25ac
	.uleb128 0x3d
	.uaword	0x1a35
	.uaword	0x25eb
	.uleb128 0x40
	.uaword	0x2c7
	.uahalf	0x1f4
	.byte	0
	.uleb128 0x3f
	.string	"Dem_Cfg_Dtc_32"
	.byte	0xe
	.byte	0x41
	.uaword	0x2603
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.uaword	0x25da
	.uleb128 0x3d
	.uaword	0x1aba
	.uaword	0x2618
	.uleb128 0x3e
	.uaword	0x2c7
	.byte	0x4
	.byte	0
	.uleb128 0x3f
	.string	"Dem_Cfg_OperationCycle"
	.byte	0x10
	.byte	0x16
	.uaword	0x2638
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.uaword	0x2608
	.uleb128 0x3f
	.string	"Dem_OperationCycleStates"
	.byte	0x12
	.byte	0xd
	.uaword	0x1a4f
	.byte	0x1
	.byte	0x1
	.uleb128 0x41
	.byte	0x1
	.string	"NvM_Prv_ExplicitSync_CopyData"
	.byte	0x15
	.byte	0x17
	.byte	0x1
	.uaword	0xf15
	.byte	0x1
	.uaword	0x26a0
	.uleb128 0xb
	.uaword	0x125b
	.uleb128 0xb
	.uaword	0x2fe
	.uleb128 0xb
	.uaword	0x2d5
	.uleb128 0xb
	.uaword	0x2e0
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.string	"NvM_Prv_Job_Start"
	.byte	0x13
	.byte	0x18
	.byte	0x1
	.byte	0x1
	.uaword	0x26d6
	.uleb128 0xb
	.uaword	0x1239
	.uleb128 0xb
	.uaword	0x26d6
	.uleb128 0xb
	.uaword	0x1245
	.uleb128 0xb
	.uaword	0x5cd
	.uleb128 0xb
	.uaword	0x1cf
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0xf15
	.uleb128 0x42
	.byte	0x1
	.string	"NvM_Prv_Crc_SetRamBlockCrc"
	.byte	0x14
	.byte	0x19
	.byte	0x1
	.byte	0x1
	.uaword	0x270c
	.uleb128 0xb
	.uaword	0x2fe
	.uleb128 0xb
	.uaword	0x1250
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.string	"NvM_Prv_JobResource_DoStateMachine"
	.byte	0xb
	.byte	0x28
	.byte	0x1
	.byte	0x1
	.uaword	0x274e
	.uleb128 0xb
	.uaword	0x194c
	.uleb128 0xb
	.uaword	0x1239
	.uleb128 0xb
	.uaword	0x123f
	.uleb128 0xb
	.uaword	0x1245
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.string	"rba_MemLib_MemCopy_Provided"
	.byte	0x3
	.byte	0x13
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.uaword	0x2d5
	.uleb128 0xb
	.uaword	0x2e0
	.uleb128 0xb
	.uaword	0x236
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
	.uleb128 0x1e
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x2c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0xa
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
	.uleb128 0x33
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0xa
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
	.uleb128 0x3d
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
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
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
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
	.byte	0x64
	.uaword	.LVL2
	.uaword	.LFE187
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL4
	.uaword	.LFE187
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL0
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL5
	.uaword	.LVL6-1
	.uahalf	0x3
	.byte	0x85
	.sleb128 -14
	.byte	0x9f
	.uaword	.LVL6-1
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
	.uaword	.LVL5
	.uahalf	0x2
	.byte	0x86
	.sleb128 6
	.uaword	.LVL5
	.uaword	.LVL6-1
	.uahalf	0x2
	.byte	0x85
	.sleb128 -8
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL1
	.uaword	.LVL3
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LVL6-1
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL7
	.uaword	.LVL12-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL12-1
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LFE188
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL7
	.uaword	.LVL12-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL12-1
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LFE188
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL7
	.uaword	.LVL12-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL12-1
	.uaword	.LVL15
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LFE188
	.uahalf	0x1
	.byte	0x66
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x2
	.byte	0x86
	.sleb128 6
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x2
	.byte	0x86
	.sleb128 6
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL10
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL10
	.uaword	.LVL12
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL17
	.uaword	.LVL21
	.uahalf	0x2
	.byte	0x86
	.sleb128 6
	.uaword	.LVL23
	.uaword	.LFE188
	.uahalf	0x2
	.byte	0x86
	.sleb128 6
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL17
	.uaword	.LVL19
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL23
	.uaword	.LFE188
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x2
	.byte	0x86
	.sleb128 6
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x3
	.byte	0x8
	.byte	0x80
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x2
	.byte	0x86
	.sleb128 6
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL24
	.uaword	.LVL26-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL26-1
	.uaword	.LFE190
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL24
	.uaword	.LVL26-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL26-1
	.uaword	.LFE190
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL24
	.uaword	.LVL26-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL26-1
	.uaword	.LFE190
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL25
	.uaword	.LVL26-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL26-1
	.uaword	.LFE190
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL27
	.uaword	.LVL28-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL28-1
	.uaword	.LFE189
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL27
	.uaword	.LVL28-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL28-1
	.uaword	.LFE189
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL27
	.uaword	.LVL28-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL28-1
	.uaword	.LFE189
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL29
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL31
	.uaword	.LFE189
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL29
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL31
	.uaword	.LFE189
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL29
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL31
	.uaword	.LFE189
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL34
	.uaword	.LVL37
	.uahalf	0x2
	.byte	0x86
	.sleb128 6
	.uaword	.LVL37
	.uaword	.LVL39
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL34
	.uaword	.LVL36
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL36
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL35
	.uaword	.LVL36
	.uahalf	0x2
	.byte	0x86
	.sleb128 6
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL38
	.uaword	.LVL41
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL43
	.uaword	.LVL55
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL55
	.uaword	.LVL57
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL57
	.uaword	.LVL61
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL61
	.uaword	.LFE186
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL43
	.uaword	.LVL53
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL53
	.uaword	.LVL57
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL57
	.uaword	.LVL59
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL59
	.uaword	.LFE186
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL43
	.uaword	.LVL56-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL56-1
	.uaword	.LVL57
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.uaword	.LVL57
	.uaword	.LVL62-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL62-1
	.uaword	.LFE186
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL53
	.uaword	.LVL56-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL59
	.uaword	.LVL62-1
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL48
	.uaword	.LVL52
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL58
	.uaword	.LVL62-1
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL50
	.uaword	.LVL52
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL58
	.uaword	.LFE186
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL50
	.uaword	.LVL51
	.uahalf	0x3
	.byte	0x6f
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL51
	.uaword	.LVL52
	.uahalf	0x4
	.byte	0x82
	.sleb128 20
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL58
	.uaword	.LVL62-1
	.uahalf	0x4
	.byte	0x82
	.sleb128 20
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL44
	.uaword	.LVL46
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL46
	.uaword	.LVL56-1
	.uahalf	0x2
	.byte	0x86
	.sleb128 6
	.uaword	.LVL57
	.uaword	.LVL58
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL58
	.uaword	.LVL62-1
	.uahalf	0x2
	.byte	0x86
	.sleb128 6
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL44
	.uaword	.LVL48
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL57
	.uaword	.LVL58
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL45
	.uaword	.LVL46
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL46
	.uaword	.LVL52
	.uahalf	0x2
	.byte	0x86
	.sleb128 6
	.uaword	.LVL58
	.uaword	.LVL62-1
	.uahalf	0x2
	.byte	0x86
	.sleb128 6
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL47
	.uaword	.LVL48
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL48
	.uaword	.LVL52
	.uahalf	0x2
	.byte	0x86
	.sleb128 6
	.uaword	.LVL58
	.uaword	.LVL62-1
	.uahalf	0x2
	.byte	0x86
	.sleb128 6
	.uaword	0
	.uaword	0
.LLST42:
	.uaword	.LVL48
	.uaword	.LVL49
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL49
	.uaword	.LVL52
	.uahalf	0x2
	.byte	0x82
	.sleb128 11
	.uaword	.LVL58
	.uaword	.LVL62-1
	.uahalf	0x2
	.byte	0x82
	.sleb128 11
	.uaword	0
	.uaword	0
.LLST43:
	.uaword	.LVL49
	.uaword	.LVL52
	.uahalf	0x2
	.byte	0x86
	.sleb128 6
	.uaword	.LVL58
	.uaword	.LVL62-1
	.uahalf	0x2
	.byte	0x86
	.sleb128 6
	.uaword	0
	.uaword	0
.LLST44:
	.uaword	.LVL49
	.uaword	.LVL50
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL50
	.uaword	.LVL51
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL51
	.uaword	.LVL52
	.uahalf	0x2
	.byte	0x82
	.sleb128 20
	.uaword	.LVL58
	.uaword	.LVL62-1
	.uahalf	0x2
	.byte	0x82
	.sleb128 20
	.uaword	0
	.uaword	0
.LLST45:
	.uaword	.LVL51
	.uaword	.LVL52
	.uahalf	0x3
	.byte	0x8
	.byte	0x80
	.byte	0x9f
	.uaword	.LVL58
	.uaword	.LFE186
	.uahalf	0x3
	.byte	0x8
	.byte	0x80
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST46:
	.uaword	.LVL51
	.uaword	.LVL52
	.uahalf	0x2
	.byte	0x86
	.sleb128 6
	.uaword	.LVL58
	.uaword	.LVL62-1
	.uahalf	0x2
	.byte	0x86
	.sleb128 6
	.uaword	0
	.uaword	0
.LLST47:
	.uaword	.LVL54
	.uaword	.LVL56-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL60
	.uaword	.LVL62-1
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST48:
	.uaword	.LVL54
	.uaword	.LVL56-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL60
	.uaword	.LVL62-1
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST49:
	.uaword	.LVL54
	.uaword	.LVL57
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL60
	.uaword	.LFE186
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST50:
	.uaword	.LVL63
	.uaword	.LVL64
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL64
	.uaword	.LVL65
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL65
	.uaword	.LVL66
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL66
	.uaword	.LVL67
	.uahalf	0x6
	.byte	0x3
	.uaword	NvM_Prv_JobRestore_InitCallback
	.byte	0x9f
	.uaword	.LVL67
	.uaword	.LVL68
	.uahalf	0x6
	.byte	0x3
	.uaword	NvM_Prv_JobRestore_Crc
	.byte	0x9f
	.uaword	.LVL68
	.uaword	.LVL69
	.uahalf	0x6
	.byte	0x3
	.uaword	NvM_Prv_JobRestore_StartWrite
	.byte	0x9f
	.uaword	.LVL69
	.uaword	.LFE184
	.uahalf	0x6
	.byte	0x3
	.uaword	NvM_Prv_JobRestore_Start
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
	.uaword	.LFB188
	.uaword	.LFE188-.LFB188
	.uaword	.LFB190
	.uaword	.LFE190-.LFB190
	.uaword	.LFB189
	.uaword	.LFE189-.LFB189
	.uaword	.LFB185
	.uaword	.LFE185-.LFB185
	.uaword	.LFB186
	.uaword	.LFE186-.LFB186
	.uaword	.LFB184
	.uaword	.LFE184-.LFB184
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB29
	.uaword	.LBE29
	.uaword	.LBB32
	.uaword	.LBE32
	.uaword	0
	.uaword	0
	.uaword	.LBB49
	.uaword	.LBE49
	.uaword	.LBB58
	.uaword	.LBE58
	.uaword	0
	.uaword	0
	.uaword	.LBB51
	.uaword	.LBE51
	.uaword	.LBB54
	.uaword	.LBE54
	.uaword	0
	.uaword	0
	.uaword	.LBB97
	.uaword	.LBE97
	.uaword	.LBB100
	.uaword	.LBE100
	.uaword	0
	.uaword	0
	.uaword	.LBB101
	.uaword	.LBE101
	.uaword	.LBB112
	.uaword	.LBE112
	.uaword	0
	.uaword	0
	.uaword	.LBB106
	.uaword	.LBE106
	.uaword	.LBB111
	.uaword	.LBE111
	.uaword	.LBB113
	.uaword	.LBE113
	.uaword	.LBB114
	.uaword	.LBE114
	.uaword	0
	.uaword	0
	.uaword	.LFB187
	.uaword	.LFE187
	.uaword	.LFB188
	.uaword	.LFE188
	.uaword	.LFB190
	.uaword	.LFE190
	.uaword	.LFB189
	.uaword	.LFE189
	.uaword	.LFB185
	.uaword	.LFE185
	.uaword	.LFB186
	.uaword	.LFE186
	.uaword	.LFB184
	.uaword	.LFE184
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF3:
	.string	"adrRomBlock_pcv"
.LASF0:
	.string	"Buffer_pu8"
.LASF7:
	.string	"JobData_pcst"
.LASF2:
	.string	"nrNvBlocks_u8"
.LASF5:
	.string	"stJob_pen"
.LASF6:
	.string	"JobResult_pst"
.LASF1:
	.string	"idBlock_uo"
.LASF4:
	.string	"ReadRamBlockFromNvm_pfct"
	.extern	rba_MemLib_MemCopy_Provided,STT_FUNC,0
	.extern	NvM_Prv_Crc_SetRamBlockCrc,STT_FUNC,0
	.extern	NvM_Prv_JobResource_DoStateMachine,STT_FUNC,0
	.extern	NvM_Prv_Job_Start,STT_FUNC,0
	.extern	NvM_Prv_ExplicitSync_CopyData,STT_FUNC,0
	.extern	NvM_Prv_BlockDescriptors_acst,STT_OBJECT,3120
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
