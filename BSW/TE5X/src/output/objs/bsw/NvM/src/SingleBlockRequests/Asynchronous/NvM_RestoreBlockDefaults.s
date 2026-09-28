	.file	"NvM_RestoreBlockDefaults.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.NvM_Prv_Restore_CheckBlockData,"ax",@progbits
	.align 1
	.type	NvM_Prv_Restore_CheckBlockData, @function
NvM_Prv_Restore_CheckBlockData:
.LFB113:
	.file 1 "bsw\\NvM\\src\\SingleBlockRequests\\Asynchronous\\NvM_RestoreBlockDefaults.c"
	.loc 1 386 0
.LVL0:
	.loc 1 396 0
	ld.hu	%d15, [%a4] 2
.LVL1:
.LBB26:
.LBB27:
.LBB28:
.LBB29:
	.file 2 ".\\output\\inc/..\\..\\bsw\\NvM\\src\\Internal\\BlockData\\NvM_Prv_BlockDescriptor_Inl.h"
	.loc 2 295 0
	mov	%d2, 1
	ge.u	%d3, %d15, 60
	jnz	%d3, .L2
.LVL2:
	.loc 2 297 0
	movh.a	%a15, hi:NvM_Prv_BlockDescriptors_acst
	mov.d	%d4, %a15
	addi	%d3, %d4, lo:NvM_Prv_BlockDescriptors_acst
	madd	%d4, %d3, %d15, 52
	mov.a	%a15, %d4
.LBE29:
.LBE28:
	.file 3 ".\\output\\inc/..\\..\\bsw\\NvM\\src\\Internal\\BlockData\\NvM_Prv_BlockData_Inl.h"
	.loc 3 166 0
	ld.w	%d3, [%a15] 20
	jz	%d3, .L2
.LVL3:
	.loc 3 165 0
	ld.bu	%d3, [%a15] 44
	jeq	%d3, 2, .L8
.LVL4:
.L2:
.LBE27:
.LBE26:
	.loc 1 397 0
	ret
.LVL5:
.L8:
.LBB31:
.LBB30:
	.loc 3 167 0
	movh.a	%a2, hi:NvM_Prv_idxDataSet_au8
	lea	%a2, [%a2] lo:NvM_Prv_idxDataSet_au8
	addsc.a	%a2, %a2, %d15, 0
	.loc 3 166 0
	ld.bu	%d15, [%a15] 11
.LVL6:
	ld.bu	%d2, [%a2]0
	ge.u	%d2, %d2, %d15
.LBE30:
.LBE31:
	.loc 1 397 0
	ret
.LFE113:
	.size	NvM_Prv_Restore_CheckBlockData, .-NvM_Prv_Restore_CheckBlockData
.section .text.NvM_Prv_Restore_SetBlockData,"ax",@progbits
	.align 1
	.type	NvM_Prv_Restore_SetBlockData, @function
NvM_Prv_Restore_SetBlockData:
.LFB114:
	.loc 1 424 0
.LVL7:
	.loc 1 425 0
	ld.hu	%d15, [%a4] 2
.LVL8:
	.loc 1 426 0
	ld.bu	%d3, [%a4] 14
.LVL9:
.LBB32:
.LBB33:
	.loc 2 270 0
	lt.u	%d4, %d15, 60
.LBE33:
.LBE32:
	.loc 1 427 0
	ld.bu	%d6, [%a4] 15
.LVL10:
	.loc 1 429 0
	ld.w	%d7, [%a4] 8
.LVL11:
.LBB36:
.LBB34:
	.loc 2 270 0
	jnz	%d4, .L10
	.loc 2 269 0
	mov	%d4, 0
.LVL12:
.L11:
.LBE34:
.LBE36:
	mov	%d5, 0
	mov	%d2, -2
	.loc 1 429 0
	jeq	%d7, %d4, .L12
	nor	%d2, %d3, 0
	and	%d3, %d6
	extr	%d2, %d2, 0, 8
	extr	%d5, %d3, 0, 8
.L12:
.LVL13:
.LBB37:
.LBB38:
	.loc 3 438 0
	movh.a	%a15, hi:NvM_Prv_stBlock_au8
	lea	%a15, [%a15] lo:NvM_Prv_stBlock_au8
	addsc.a	%a15, %a15, %d15, 0
	ld.bu	%d3, [%a15]0
	and	%d2, %d3
	or	%d5, %d2
	st.b	[%a15]0, %d5
.LBE38:
.LBE37:
.LBB39:
.LBB40:
	.loc 3 383 0
	movh.a	%a15, hi:NvM_Prv_stRequestResult_au8
	lea	%a15, [%a15] lo:NvM_Prv_stRequestResult_au8
.LBE40:
.LBE39:
	.loc 1 439 0
	ld.bu	%d2, [%a4] 12
.LVL14:
.LBB42:
.LBB41:
	.loc 3 383 0
	addsc.a	%a15, %a15, %d15, 0
	st.b	[%a15]0, %d2
.LVL15:
.LBE41:
.LBE42:
.LBB43:
.LBB44:
	.loc 3 400 0
	movh.a	%a15, hi:NvM_Prv_stRequests_au16
	lea	%a15, [%a15] lo:NvM_Prv_stRequests_au16
	addsc.a	%a15, %a15, %d15, 1
	ld.hu	%d2, [%a4] 4
.LVL16:
	ld.h	%d15, [%a15]0
.LVL17:
	insert	%d15, %d15, 1, %d2, 1
	st.h	[%a15]0, %d15
.LVL18:
	ret
.LVL19:
.L10:
.LBE44:
.LBE43:
.LBB45:
.LBB35:
	.loc 2 271 0
	movh.a	%a15, hi:NvM_Prv_BlockDescriptors_acst
	mov.d	%d4, %a15
	addi	%d2, %d4, lo:NvM_Prv_BlockDescriptors_acst
	madd	%d4, %d2, %d15, 52
	mov.a	%a15, %d4
	.loc 2 269 0
	mov	%d4, 0
	.loc 2 271 0
	ld.a	%a15, [%a15] 16
	.loc 2 270 0
	jz.a	%a15, .L11
	.loc 2 273 0
	ld.w	%d4, [%a15]0
.LVL20:
	j	.L11
.LBE35:
.LBE45:
.LFE114:
	.size	NvM_Prv_Restore_SetBlockData, .-NvM_Prv_Restore_SetBlockData
.section .text.NvM_Prv_Restore_CheckParameter,"ax",@progbits
	.align 1
	.type	NvM_Prv_Restore_CheckParameter, @function
NvM_Prv_Restore_CheckParameter:
.LFB112:
	.loc 1 330 0
.LVL21:
	.loc 1 338 0
	ld.bu	%d4, [%a4]0
	ld.hu	%d5, [%a4] 2
	.loc 1 330 0
	mov.aa	%a15, %a4
	.loc 1 338 0
	ld.a	%a4, [%a4] 8
.LVL22:
	.loc 1 331 0
	mov	%d15, 0
	.loc 1 338 0
	call	NvM_Prv_ErrorDetection_IsRamBlockAddressValid
.LVL23:
	jz	%d2, .L17
.LVL24:
.LBB48:
.LBB49:
	.loc 1 347 0
	ld.bu	%d4, [%a15]0
	ld.hu	%d5, [%a15] 2
	call	NvM_Prv_ErrorDetection_IsDefaultDataAvailable
.LVL25:
.LBE49:
.LBE48:
	.loc 1 331 0
	ne	%d15, %d2, 0
.LVL26:
.L17:
	.loc 1 354 0
	mov	%d2, %d15
	ret
.LFE112:
	.size	NvM_Prv_Restore_CheckParameter, .-NvM_Prv_Restore_CheckParameter
.section .text.NvM_RestoreBlockDefaults,"ax",@progbits
	.align 1
	.global	NvM_RestoreBlockDefaults
	.type	NvM_RestoreBlockDefaults, @function
NvM_RestoreBlockDefaults:
.LFB109:
	.loc 1 99 0
.LVL27:
	sub.a	%SP, 32
.LCFI0:
.LBB54:
.LBB55:
	.loc 1 270 0
	mov	%d15, 8
	st.b	[%SP] 16, %d15
	.loc 1 271 0
	mov	%d15, 12
	st.h	[%SP] 20, %d15
	.loc 1 272 0
	mov	%d15, 2
	st.b	[%SP] 28, %d15
	.loc 1 273 0
	mov	%d15, 0
	.loc 1 268 0
	st.h	[%SP] 18, %d4
	.loc 1 269 0
	st.a	[%SP] 24, %a4
	.loc 1 273 0
	st.b	[%SP] 29, %d15
	.loc 1 274 0
	st.b	[%SP] 30, %d15
	.loc 1 275 0
	st.b	[%SP] 31, %d15
	.loc 1 278 0
	jz.a	%a4, .L26
.L21:
	.loc 1 284 0
	mov	%d15, 1
	st.b	[%SP]0, %d15
	.loc 1 285 0
	movh	%d15, hi:NvM_Prv_Restore_CheckParameter
	addi	%d15, %d15, lo:NvM_Prv_Restore_CheckParameter
	st.w	[%SP] 4, %d15
	.loc 1 286 0
	movh	%d15, hi:NvM_Prv_Restore_CheckBlockData
	addi	%d15, %d15, lo:NvM_Prv_Restore_CheckBlockData
	st.w	[%SP] 8, %d15
	.loc 1 287 0
	movh	%d15, hi:NvM_Prv_Restore_SetBlockData
	addi	%d15, %d15, lo:NvM_Prv_Restore_SetBlockData
	.loc 1 294 0
	mov	%d4, 1
.LVL28:
	lea	%a4, [%SP] 16
.LVL29:
	mov.aa	%a5, %SP
	.loc 1 287 0
	st.w	[%SP] 12, %d15
.LBE55:
.LBE54:
	.loc 1 110 0
	j	NvM_Prv_Service_Initiate
.LVL30:
.L26:
.LBB59:
.LBB58:
.LBB56:
.LBB57:
	.loc 2 270 0
	ge.u	%d15, %d4, 60
	.loc 2 269 0
	mov	%d2, 0
	.loc 2 270 0
	jnz	%d15, .L22
	.loc 2 271 0
	movh.a	%a15, hi:NvM_Prv_BlockDescriptors_acst
	mov.d	%d3, %a15
	addi	%d15, %d3, lo:NvM_Prv_BlockDescriptors_acst
	madd	%d3, %d15, %d4, 52
	mov.a	%a15, %d3
	ld.a	%a15, [%a15] 16
	.loc 2 270 0
	jz.a	%a15, .L22
	.loc 2 273 0
	ld.w	%d2, [%a15]0
.LVL31:
.L22:
.LBE57:
.LBE56:
	.loc 1 281 0
	st.w	[%SP] 24, %d2
	j	.L21
.LBE58:
.LBE59:
.LFE109:
	.size	NvM_RestoreBlockDefaults, .-NvM_RestoreBlockDefaults
.section .text.NvM_RestorePRAMBlockDefaults,"ax",@progbits
	.align 1
	.global	NvM_RestorePRAMBlockDefaults
	.type	NvM_RestorePRAMBlockDefaults, @function
NvM_RestorePRAMBlockDefaults:
.LFB110:
	.loc 1 190 0
.LVL32:
	sub.a	%SP, 32
.LCFI1:
.LBB64:
.LBB65:
	.loc 1 270 0
	mov	%d2, 24
	st.b	[%SP] 16, %d2
	.loc 1 271 0
	mov	%d2, 12
	.loc 1 269 0
	mov	%d15, 0
	.loc 1 271 0
	st.h	[%SP] 20, %d2
	.loc 1 272 0
	mov	%d2, 2
	.loc 1 269 0
	st.w	[%SP] 24, %d15
	.loc 1 272 0
	st.b	[%SP] 28, %d2
	.loc 1 273 0
	st.b	[%SP] 29, %d15
	.loc 1 274 0
	st.b	[%SP] 30, %d15
	.loc 1 275 0
	st.b	[%SP] 31, %d15
.LVL33:
	.loc 1 268 0
	st.h	[%SP] 18, %d4
.LBB66:
.LBB67:
	.loc 2 270 0
	ge.u	%d15, %d4, 60
	.loc 2 269 0
	mov	%d2, 0
	.loc 2 270 0
	jnz	%d15, .L28
	.loc 2 271 0
	movh.a	%a15, hi:NvM_Prv_BlockDescriptors_acst
	mov.d	%d3, %a15
	addi	%d15, %d3, lo:NvM_Prv_BlockDescriptors_acst
	madd	%d3, %d15, %d4, 52
	mov.a	%a15, %d3
	ld.a	%a15, [%a15] 16
	.loc 2 270 0
	jz.a	%a15, .L28
	.loc 2 273 0
	ld.w	%d2, [%a15]0
.LVL34:
.L28:
.LBE67:
.LBE66:
	.loc 1 284 0
	mov	%d15, 1
	st.b	[%SP]0, %d15
	.loc 1 285 0
	movh	%d15, hi:NvM_Prv_Restore_CheckParameter
	addi	%d15, %d15, lo:NvM_Prv_Restore_CheckParameter
	st.w	[%SP] 4, %d15
	.loc 1 286 0
	movh	%d15, hi:NvM_Prv_Restore_CheckBlockData
	addi	%d15, %d15, lo:NvM_Prv_Restore_CheckBlockData
	st.w	[%SP] 8, %d15
	.loc 1 287 0
	movh	%d15, hi:NvM_Prv_Restore_SetBlockData
	addi	%d15, %d15, lo:NvM_Prv_Restore_SetBlockData
	.loc 1 294 0
	mov	%d4, 1
.LVL35:
	lea	%a4, [%SP] 16
	mov.aa	%a5, %SP
	.loc 1 281 0
	st.w	[%SP] 24, %d2
	.loc 1 287 0
	st.w	[%SP] 12, %d15
.LBE65:
.LBE64:
	.loc 1 200 0
	j	NvM_Prv_Service_Initiate
.LVL36:
.LFE110:
	.size	NvM_RestorePRAMBlockDefaults, .-NvM_RestorePRAMBlockDefaults
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
	.uaword	.LFB113
	.uaword	.LFE113-.LFB113
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB114
	.uaword	.LFE114-.LFB114
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB112
	.uaword	.LFE112-.LFB112
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB109
	.uaword	.LFE109-.LFB109
	.byte	0x4
	.uaword	.LCFI0-.LFB109
	.byte	0xe
	.uleb128 0x20
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB110
	.uaword	.LFE110-.LFB110
	.byte	0x4
	.uaword	.LCFI1-.LFB110
	.byte	0xe
	.uleb128 0x20
	.align 2
.LEFDE8:
.section .text,"ax",@progbits
.Letext0:
	.file 4 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 5 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 6 ".\\output\\inc/..\\..\\rte\\Rte_Type.h"
	.file 7 ".\\output\\inc/..\\..\\bsw\\NvM\\api\\NvM_Types.h"
	.file 8 ".\\output\\inc/..\\..\\bsw\\NvM\\src\\Internal\\BlockData\\NvM_Prv_BlockDescriptor.h"
	.file 9 ".\\output\\inc/..\\..\\bsw\\NvM\\src\\Internal\\BlockData\\NvM_Prv_BlockData.h"
	.file 10 ".\\output\\inc/..\\..\\bsw\\NvM\\src\\Internal\\Service\\NvM_Prv_Service.h"
	.file 11 ".\\output\\inc/..\\..\\bsw\\NvM\\src\\Internal\\ErrorDetection\\NvM_Prv_ErrorDetection.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x165a
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\NvM\\src\\SingleBlockRequests\\Asynchronous\\NvM_RestoreBlockDefaults.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x68
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
	.uaword	0x1f2
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
	.uaword	0x21e
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
	.uaword	0x25a
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
	.uaword	0x1f2
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
	.uaword	0x1e5
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x4
	.byte	0x4
	.uleb128 0x5
	.byte	0x4
	.uaword	0x1e5
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2f7
	.uleb128 0x6
	.uaword	0x210
	.uleb128 0x5
	.byte	0x4
	.uaword	0x302
	.uleb128 0x7
	.uleb128 0x8
	.string	"NvM_BlockIdType"
	.byte	0x6
	.uahalf	0x1ca
	.uaword	0x210
	.uleb128 0x8
	.string	"NvM_Rb_VoidPtr"
	.byte	0x6
	.uahalf	0x1d3
	.uaword	0x2e9
	.uleb128 0x8
	.string	"NvM_RequestResultType"
	.byte	0x6
	.uahalf	0x1d4
	.uaword	0x1e5
	.uleb128 0x5
	.byte	0x4
	.uaword	0x356
	.uleb128 0x9
	.byte	0x1
	.uaword	0x2c7
	.uleb128 0x5
	.byte	0x4
	.uaword	0x362
	.uleb128 0xa
	.byte	0x1
	.uaword	0x2c7
	.uaword	0x372
	.uleb128 0xb
	.uaword	0x1e5
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.byte	0x7
	.byte	0xa2
	.uaword	0x3b8
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
	.uaword	0x372
	.uleb128 0xe
	.byte	0x1
	.byte	0x7
	.uahalf	0x13e
	.uaword	0x633
	.uleb128 0xd
	.string	"NvM_Prv_ServiceBit_ReadAll_e"
	.sleb128 0
	.uleb128 0xd
	.string	"NvM_Prv_ServiceBit_RemoveNonResistant_e"
	.sleb128 1
	.uleb128 0xd
	.string	"NvM_Prv_ServiceBit_WriteAll_e"
	.sleb128 2
	.uleb128 0xd
	.string	"NvM_Prv_ServiceBit_FirstInitAll_e"
	.sleb128 3
	.uleb128 0xd
	.string	"NvM_Prv_ServiceBit_Maintain_e"
	.sleb128 4
	.uleb128 0xd
	.string	"NvM_Prv_ServiceBit_InitAtLayoutChange_e"
	.sleb128 5
	.uleb128 0xd
	.string	"NvM_Prv_ServiceBit_ValidateAll_e"
	.sleb128 6
	.uleb128 0xd
	.string	"NvM_Prv_ServiceBit_NotUsed_0_e"
	.sleb128 7
	.uleb128 0xd
	.string	"NvM_Prv_ServiceBit_Read_e"
	.sleb128 8
	.uleb128 0xd
	.string	"NvM_Prv_ServiceBit_Write_e"
	.sleb128 9
	.uleb128 0xd
	.string	"NvM_Prv_ServiceBit_Invalidate_e"
	.sleb128 10
	.uleb128 0xd
	.string	"NvM_Prv_ServiceBit_Erase_e"
	.sleb128 11
	.uleb128 0xd
	.string	"NvM_Prv_ServiceBit_Restore_e"
	.sleb128 12
	.uleb128 0xd
	.string	"NvM_Prv_ServiceBit_NotUsed_1_e"
	.sleb128 13
	.uleb128 0xd
	.string	"NvM_Prv_ServiceBit_NotUsed_2_e"
	.sleb128 14
	.uleb128 0xd
	.string	"NvM_Prv_ServiceBit_NotUsed_3_e"
	.sleb128 15
	.uleb128 0xd
	.string	"NvM_Prv_ServiceBit_Unspecified_e"
	.sleb128 16
	.uleb128 0xd
	.string	"NvM_Prv_ServiceBit_nr_e"
	.sleb128 17
	.byte	0
	.uleb128 0x8
	.string	"NvM_Prv_ServiceBit_tuo"
	.byte	0x7
	.uahalf	0x147
	.uaword	0x210
	.uleb128 0x8
	.string	"NvM_Prv_idService_tuo"
	.byte	0x7
	.uahalf	0x14c
	.uaword	0x1e5
	.uleb128 0xe
	.byte	0x1
	.byte	0x7
	.uahalf	0x159
	.uaword	0x6ce
	.uleb128 0xd
	.string	"NvM_Prv_idQueue_Multi_e"
	.sleb128 0
	.uleb128 0xd
	.string	"NvM_Prv_idQueue_Standard_e"
	.sleb128 1
	.uleb128 0xd
	.string	"NvM_Prv_idQueue_nrQueues_e"
	.sleb128 2
	.byte	0
	.uleb128 0x8
	.string	"NvM_Prv_idQueue_tuo"
	.byte	0x7
	.uahalf	0x174
	.uaword	0x1e5
	.uleb128 0xf
	.byte	0x4
	.byte	0x7
	.uahalf	0x180
	.uaword	0x723
	.uleb128 0x10
	.string	"ptrRamBlock_pv"
	.byte	0x7
	.uahalf	0x182
	.uaword	0x2e9
	.uleb128 0x10
	.string	"ptrRamBlock_pu8"
	.byte	0x7
	.uahalf	0x183
	.uaword	0x2eb
	.byte	0
	.uleb128 0x8
	.string	"NvM_Prv_ptrRamBlock_tun"
	.byte	0x7
	.uahalf	0x185
	.uaword	0x6ea
	.uleb128 0x11
	.byte	0xc
	.byte	0x7
	.uahalf	0x191
	.uaword	0x792
	.uleb128 0x12
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x194
	.uaword	0x652
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF1
	.byte	0x7
	.uahalf	0x197
	.uaword	0x303
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x12
	.uaword	.LASF2
	.byte	0x7
	.uahalf	0x19a
	.uaword	0x633
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.string	"BlockData_un"
	.byte	0x7
	.uahalf	0x19e
	.uaword	0x723
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x8
	.string	"NvM_Prv_QueueEntry_tst"
	.byte	0x7
	.uahalf	0x1a0
	.uaword	0x743
	.uleb128 0x5
	.byte	0x4
	.uaword	0x7b7
	.uleb128 0xa
	.byte	0x1
	.uaword	0x2c7
	.uaword	0x7c7
	.uleb128 0xb
	.uaword	0x2e9
	.byte	0
	.uleb128 0x14
	.byte	0xc
	.byte	0x8
	.byte	0x77
	.uaword	0x83b
	.uleb128 0x15
	.string	"MultiBlockCallback_pfct"
	.byte	0x8
	.byte	0x7f
	.uaword	0x84c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"RbMultiBlockStartCallback_pfct"
	.byte	0x8
	.byte	0x84
	.uaword	0x85e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.string	"ObserverCallback_pfct"
	.byte	0x8
	.byte	0x8a
	.uaword	0x87e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.uaword	0x84c
	.uleb128 0xb
	.uaword	0x1e5
	.uleb128 0xb
	.uaword	0x332
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x83b
	.uleb128 0x16
	.byte	0x1
	.uaword	0x85e
	.uleb128 0xb
	.uaword	0x1e5
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x852
	.uleb128 0xa
	.byte	0x1
	.uaword	0x2c7
	.uaword	0x87e
	.uleb128 0xb
	.uaword	0x303
	.uleb128 0xb
	.uaword	0x1e5
	.uleb128 0xb
	.uaword	0x332
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x864
	.uleb128 0x3
	.string	"NvM_Prv_Common_tst"
	.byte	0x8
	.byte	0x8d
	.uaword	0x7c7
	.uleb128 0x14
	.byte	0x34
	.byte	0x8
	.byte	0x95
	.uaword	0xa6a
	.uleb128 0x15
	.string	"idBlockMemIf_u16"
	.byte	0x8
	.byte	0x9b
	.uaword	0x210
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"nrBlockBytes_pu16"
	.byte	0x8
	.byte	0xa9
	.uaword	0x2f1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.string	"nrBlockBytesStored_u16"
	.byte	0x8
	.byte	0xb5
	.uaword	0x210
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x15
	.string	"idxDevice_u8"
	.byte	0x8
	.byte	0xbb
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x17
	.uaword	.LASF3
	.byte	0x8
	.byte	0xc0
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0x15
	.string	"nrRomBlocks_u8"
	.byte	0x8
	.byte	0xc5
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x15
	.string	"adrRamBlock_ppv"
	.byte	0x8
	.byte	0xd6
	.uaword	0xa6a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x17
	.uaword	.LASF4
	.byte	0x8
	.byte	0xde
	.uaword	0x2fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x15
	.string	"SingleBlockCallback_pfct"
	.byte	0x8
	.byte	0xe8
	.uaword	0xa8a
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x15
	.string	"SingleBlockStartCallback_pfct"
	.byte	0x8
	.byte	0xf0
	.uaword	0x35c
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x15
	.string	"InitBlockCallback_pfct"
	.byte	0x8
	.byte	0xf9
	.uaword	0x350
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x13
	.string	"ReadRamBlockFromNvm_pfct"
	.byte	0x8
	.uahalf	0x102
	.uaword	0x7b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x13
	.string	"WriteRamBlockToNvm_pfct"
	.byte	0x8
	.uahalf	0x10b
	.uaword	0x7b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x13
	.string	"BlockManagementType_en"
	.byte	0x8
	.uahalf	0x110
	.uaword	0x3b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x13
	.string	"JobPriority_u8"
	.byte	0x8
	.uahalf	0x115
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x2d
	.uleb128 0x13
	.string	"stFlags_uo"
	.byte	0x8
	.uahalf	0x13e
	.uaword	0x24c
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0xa70
	.uleb128 0x6
	.uaword	0x2e9
	.uleb128 0xa
	.byte	0x1
	.uaword	0x2c7
	.uaword	0xa8a
	.uleb128 0xb
	.uaword	0x1e5
	.uleb128 0xb
	.uaword	0x332
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0xa75
	.uleb128 0x8
	.string	"NvM_Prv_BlockDescriptor_tst"
	.byte	0x8
	.uahalf	0x153
	.uaword	0x89e
	.uleb128 0x11
	.byte	0x4
	.byte	0x8
	.uahalf	0x158
	.uaword	0xaf1
	.uleb128 0x13
	.string	"PersistentId_u16"
	.byte	0x8
	.uahalf	0x15a
	.uaword	0x210
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.string	"BlockId_u16"
	.byte	0x8
	.uahalf	0x15b
	.uaword	0x303
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x8
	.string	"NvM_Prv_PersId_BlockId_tst"
	.byte	0x8
	.uahalf	0x15c
	.uaword	0xab4
	.uleb128 0x3
	.string	"NvM_Prv_BlockErrors_tuo"
	.byte	0x9
	.byte	0x3f
	.uaword	0x1e5
	.uleb128 0x14
	.byte	0x10
	.byte	0xa
	.byte	0x1a
	.uaword	0xb96
	.uleb128 0x15
	.string	"QueueEntry_st"
	.byte	0xa
	.byte	0x1c
	.uaword	0x792
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x17
	.uaword	.LASF5
	.byte	0xa
	.byte	0x1f
	.uaword	0x332
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x15
	.string	"idxDataset_u8"
	.byte	0xa
	.byte	0x21
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0x17
	.uaword	.LASF6
	.byte	0xa
	.byte	0x24
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x17
	.uaword	.LASF7
	.byte	0xa
	.byte	0x25
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.byte	0
	.uleb128 0x3
	.string	"NvM_Prv_BlockData_tst"
	.byte	0xa
	.byte	0x27
	.uaword	0xb33
	.uleb128 0x3
	.string	"NvM_Prv_Service_CheckParameter_tpfct"
	.byte	0xa
	.byte	0x2f
	.uaword	0xbdf
	.uleb128 0x5
	.byte	0x4
	.uaword	0xbe5
	.uleb128 0xa
	.byte	0x1
	.uaword	0x297
	.uaword	0xbf5
	.uleb128 0xb
	.uaword	0xbf5
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0xbfb
	.uleb128 0x6
	.uaword	0xb96
	.uleb128 0x3
	.string	"NvM_Prv_Service_CheckBlockData_tpfct"
	.byte	0xa
	.byte	0x36
	.uaword	0xc2c
	.uleb128 0x5
	.byte	0x4
	.uaword	0xc32
	.uleb128 0xa
	.byte	0x1
	.uaword	0x297
	.uaword	0xc47
	.uleb128 0xb
	.uaword	0xbf5
	.uleb128 0xb
	.uaword	0xc47
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0xb14
	.uleb128 0x3
	.string	"NvM_Prv_Service_SetBlockData_tpfct"
	.byte	0xa
	.byte	0x3e
	.uaword	0xc77
	.uleb128 0x5
	.byte	0x4
	.uaword	0xc7d
	.uleb128 0x16
	.byte	0x1
	.uaword	0xc89
	.uleb128 0xb
	.uaword	0xbf5
	.byte	0
	.uleb128 0x14
	.byte	0x10
	.byte	0xa
	.byte	0x43
	.uaword	0xd08
	.uleb128 0x15
	.string	"CheckPendingBlock_b"
	.byte	0xa
	.byte	0x4b
	.uaword	0x297
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CheckParameter_pfct"
	.byte	0xa
	.byte	0x52
	.uaword	0xbb3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.string	"CheckBlockData_pfct"
	.byte	0xa
	.byte	0x59
	.uaword	0xc00
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x15
	.string	"SetBlockData_pfct"
	.byte	0xa
	.byte	0x5f
	.uaword	0xc4d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x3
	.string	"NvM_Prv_Service_Configuration_tst"
	.byte	0xa
	.byte	0x61
	.uaword	0xc89
	.uleb128 0x18
	.string	"NvM_Prv_GetRomBlockAddress"
	.byte	0x2
	.uahalf	0x124
	.byte	0x1
	.uaword	0x2fc
	.byte	0x3
	.uaword	0xd73
	.uleb128 0x19
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x124
	.uaword	0x303
	.uleb128 0x1a
	.uaword	.LASF4
	.byte	0x2
	.uahalf	0x126
	.uaword	0x2fc
	.byte	0
	.uleb128 0x1b
	.string	"NvM_Prv_GetBlockType"
	.byte	0x2
	.byte	0xcb
	.byte	0x1
	.uaword	0x3b8
	.byte	0x3
	.uaword	0xdb2
	.uleb128 0x1c
	.uaword	.LASF1
	.byte	0x2
	.byte	0xcb
	.uaword	0x303
	.uleb128 0x1d
	.string	"BlockType"
	.byte	0x2
	.byte	0xcd
	.uaword	0x3b8
	.byte	0
	.uleb128 0x1b
	.string	"NvM_Prv_GetNrNonVolatileBlocks"
	.byte	0x2
	.byte	0xdf
	.byte	0x1
	.uaword	0x1e5
	.byte	0x3
	.uaword	0xdf5
	.uleb128 0x1c
	.uaword	.LASF1
	.byte	0x2
	.byte	0xdf
	.uaword	0x303
	.uleb128 0x1e
	.uaword	.LASF3
	.byte	0x2
	.byte	0xe1
	.uaword	0x1e5
	.byte	0
	.uleb128 0x18
	.string	"NvM_Prv_GetPRamBlockAddress"
	.byte	0x2
	.uahalf	0x10b
	.byte	0x1
	.uaword	0x2e9
	.byte	0x3
	.uaword	0xe48
	.uleb128 0x19
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x10b
	.uaword	0x303
	.uleb128 0x1f
	.string	"PRamBlockAddress_pv"
	.byte	0x2
	.uahalf	0x10d
	.uaword	0x2e9
	.byte	0
	.uleb128 0x20
	.string	"NvM_Prv_Block_SetState"
	.byte	0x3
	.uahalf	0x1b2
	.byte	0x1
	.byte	0x3
	.uaword	0xe8e
	.uleb128 0x19
	.uaword	.LASF1
	.byte	0x3
	.uahalf	0x1b2
	.uaword	0x303
	.uleb128 0x19
	.uaword	.LASF6
	.byte	0x3
	.uahalf	0x1b3
	.uaword	0x1e5
	.uleb128 0x19
	.uaword	.LASF7
	.byte	0x3
	.uahalf	0x1b4
	.uaword	0x1e5
	.byte	0
	.uleb128 0x20
	.string	"NvM_Prv_Block_SetRequestResult"
	.byte	0x3
	.uahalf	0x17d
	.byte	0x1
	.byte	0x3
	.uaword	0xed0
	.uleb128 0x19
	.uaword	.LASF1
	.byte	0x3
	.uahalf	0x17d
	.uaword	0x303
	.uleb128 0x19
	.uaword	.LASF5
	.byte	0x3
	.uahalf	0x17d
	.uaword	0x332
	.byte	0
	.uleb128 0x20
	.string	"NvM_Prv_Block_SetRequest"
	.byte	0x3
	.uahalf	0x18e
	.byte	0x1
	.byte	0x3
	.uaword	0xf0c
	.uleb128 0x19
	.uaword	.LASF1
	.byte	0x3
	.uahalf	0x18e
	.uaword	0x303
	.uleb128 0x19
	.uaword	.LASF2
	.byte	0x3
	.uahalf	0x18e
	.uaword	0x633
	.byte	0
	.uleb128 0x18
	.string	"NvM_Prv_Restore_CheckParameter"
	.byte	0x1
	.uahalf	0x149
	.byte	0x1
	.uaword	0x297
	.byte	0x1
	.uaword	0xf61
	.uleb128 0x19
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x149
	.uaword	0xbf5
	.uleb128 0x1f
	.string	"isParameterValid_b"
	.byte	0x1
	.uahalf	0x14b
	.uaword	0x297
	.byte	0
	.uleb128 0x1b
	.string	"NvM_Prv_Block_IsRomDataAmbiguous"
	.byte	0x3
	.byte	0xa3
	.byte	0x1
	.uaword	0x297
	.byte	0x3
	.uaword	0xf9b
	.uleb128 0x1c
	.uaword	.LASF1
	.byte	0x3
	.byte	0xa3
	.uaword	0x303
	.byte	0
	.uleb128 0x21
	.string	"NvM_Prv_Restore_CheckBlockData"
	.byte	0x1
	.uahalf	0x180
	.byte	0x1
	.uaword	0x297
	.uaword	.LFB113
	.uaword	.LFE113
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x103d
	.uleb128 0x22
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x180
	.uaword	0xbf5
	.byte	0x1
	.byte	0x64
	.uleb128 0x23
	.string	"Errors_puo"
	.byte	0x1
	.uahalf	0x181
	.uaword	0xc47
	.byte	0x1
	.byte	0x65
	.uleb128 0x24
	.uaword	0xf61
	.uaword	.LBB26
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.uahalf	0x18c
	.uleb128 0x25
	.uaword	0xf8f
	.uaword	.LLST0
	.uleb128 0x26
	.uaword	0xd31
	.uaword	.LBB28
	.uaword	.LBE28
	.byte	0x3
	.byte	0xa5
	.uleb128 0x25
	.uaword	0xd5a
	.uaword	.LLST0
	.uleb128 0x27
	.uaword	.LBB29
	.uaword	.LBE29
	.uleb128 0x28
	.uaword	0xd66
	.uaword	.LLST2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.string	"NvM_Prv_Restore_SetBlockData"
	.byte	0x1
	.uahalf	0x1a7
	.byte	0x1
	.uaword	.LFB114
	.uaword	.LFE114
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x114d
	.uleb128 0x22
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x1a7
	.uaword	0xbf5
	.byte	0x1
	.byte	0x64
	.uleb128 0x2a
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x1a9
	.uaword	0x303
	.uaword	.LLST3
	.uleb128 0x2a
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x1aa
	.uaword	0x1e5
	.uaword	.LLST4
	.uleb128 0x2a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x1ab
	.uaword	0x1e5
	.uaword	.LLST5
	.uleb128 0x2b
	.uaword	0xdf5
	.uaword	.LBB32
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x1
	.uahalf	0x1ad
	.uaword	0x10da
	.uleb128 0x25
	.uaword	0xe1f
	.uaword	.LLST6
	.uleb128 0x2c
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0x28
	.uaword	0xe2b
	.uaword	.LLST7
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uaword	0xe48
	.uaword	.LBB37
	.uaword	.LBE37
	.byte	0x1
	.uahalf	0x1b4
	.uaword	0x1102
	.uleb128 0x2e
	.uaword	0xe81
	.uleb128 0x2e
	.uaword	0xe75
	.uleb128 0x25
	.uaword	0xe69
	.uaword	.LLST8
	.byte	0
	.uleb128 0x2b
	.uaword	0xe8e
	.uaword	.LBB39
	.uaword	.Ldebug_ranges0+0x38
	.byte	0x1
	.uahalf	0x1b7
	.uaword	0x1129
	.uleb128 0x25
	.uaword	0xec3
	.uaword	.LLST9
	.uleb128 0x25
	.uaword	0xeb7
	.uaword	.LLST10
	.byte	0
	.uleb128 0x2f
	.uaword	0xed0
	.uaword	.LBB43
	.uaword	.LBE43
	.byte	0x1
	.uahalf	0x1b8
	.uleb128 0x25
	.uaword	0xeff
	.uaword	.LLST11
	.uleb128 0x25
	.uaword	0xef3
	.uaword	.LLST12
	.byte	0
	.byte	0
	.uleb128 0x30
	.uaword	0xf0c
	.uaword	.LFB112
	.uaword	.LFE112
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x11ad
	.uleb128 0x25
	.uaword	0xf39
	.uaword	.LLST13
	.uleb128 0x28
	.uaword	0xf45
	.uaword	.LLST14
	.uleb128 0x31
	.uaword	.LBB48
	.uaword	.LBE48
	.uaword	0x11a3
	.uleb128 0x25
	.uaword	0xf39
	.uaword	.LLST15
	.uleb128 0x27
	.uaword	.LBB49
	.uaword	.LBE49
	.uleb128 0x32
	.uaword	0xf45
	.uleb128 0x33
	.uaword	.LVL25
	.uaword	0x1588
	.byte	0
	.byte	0
	.uleb128 0x33
	.uaword	.LVL23
	.uaword	0x15cf
	.byte	0
	.uleb128 0x18
	.string	"NvM_Prv_RestoreBlockDefaults"
	.byte	0x1
	.uahalf	0x102
	.byte	0x1
	.uaword	0x2c7
	.byte	0x1
	.uaword	0x124e
	.uleb128 0x19
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x102
	.uaword	0x652
	.uleb128 0x19
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x103
	.uaword	0x303
	.uleb128 0x34
	.string	"RamBlock_po"
	.byte	0x1
	.uahalf	0x104
	.uaword	0x31b
	.uleb128 0x1f
	.string	"stReturn_uo"
	.byte	0x1
	.uahalf	0x107
	.uaword	0x2c7
	.uleb128 0x1f
	.string	"ServiceConfiguration_st"
	.byte	0x1
	.uahalf	0x108
	.uaword	0xd08
	.uleb128 0x1f
	.string	"BlockData_st"
	.byte	0x1
	.uahalf	0x109
	.uaword	0xb96
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.string	"NvM_RestoreBlockDefaults"
	.byte	0x1
	.byte	0x62
	.byte	0x1
	.uaword	0x2c7
	.uaword	.LFB109
	.uaword	.LFE109
	.uaword	.LLST16
	.byte	0x1
	.uaword	0x133a
	.uleb128 0x36
	.string	"BlockId"
	.byte	0x1
	.byte	0x62
	.uaword	0x303
	.uaword	.LLST17
	.uleb128 0x36
	.string	"NvM_DstPtr"
	.byte	0x1
	.byte	0x62
	.uaword	0x31b
	.uaword	.LLST18
	.uleb128 0x37
	.uaword	0x11ad
	.uaword	.LBB54
	.uaword	.Ldebug_ranges0+0x50
	.byte	0x1
	.byte	0x6c
	.uaword	0x131d
	.uleb128 0x25
	.uaword	0x11f0
	.uaword	.LLST18
	.uleb128 0x25
	.uaword	0x11e4
	.uaword	.LLST20
	.uleb128 0x38
	.uaword	0x11d8
	.byte	0x8
	.uleb128 0x2c
	.uaword	.Ldebug_ranges0+0x50
	.uleb128 0x39
	.uaword	0x1204
	.byte	0x1
	.uleb128 0x3a
	.uaword	0x1218
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3a
	.uaword	0x1238
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2f
	.uaword	0xdf5
	.uaword	.LBB56
	.uaword	.LBE56
	.byte	0x1
	.uahalf	0x119
	.uleb128 0x3b
	.uaword	0xe1f
	.byte	0x1
	.byte	0x54
	.uleb128 0x27
	.uaword	.LBB57
	.uaword	.LBE57
	.uleb128 0x28
	.uaword	0xe2b
	.uaword	.LLST21
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uaword	.LVL30
	.byte	0x1
	.uaword	0x161b
	.uleb128 0x3d
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x3d
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x3d
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.string	"NvM_RestorePRAMBlockDefaults"
	.byte	0x1
	.byte	0xbd
	.byte	0x1
	.uaword	0x2c7
	.uaword	.LFB110
	.uaword	.LFE110
	.uaword	.LLST22
	.byte	0x1
	.uaword	0x1417
	.uleb128 0x36
	.string	"BlockId"
	.byte	0x1
	.byte	0xbd
	.uaword	0x303
	.uaword	.LLST23
	.uleb128 0x3e
	.uaword	0x11ad
	.uaword	.LBB64
	.uaword	.LBE64
	.byte	0x1
	.byte	0xc6
	.uaword	0x13fa
	.uleb128 0x38
	.uaword	0x11f0
	.byte	0
	.uleb128 0x25
	.uaword	0x11e4
	.uaword	.LLST24
	.uleb128 0x38
	.uaword	0x11d8
	.byte	0x18
	.uleb128 0x27
	.uaword	.LBB65
	.uaword	.LBE65
	.uleb128 0x39
	.uaword	0x1204
	.byte	0x1
	.uleb128 0x3a
	.uaword	0x1218
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3a
	.uaword	0x1238
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2f
	.uaword	0xdf5
	.uaword	.LBB66
	.uaword	.LBE66
	.byte	0x1
	.uahalf	0x119
	.uleb128 0x25
	.uaword	0xe1f
	.uaword	.LLST25
	.uleb128 0x27
	.uaword	.LBB67
	.uaword	.LBE67
	.uleb128 0x28
	.uaword	0xe2b
	.uaword	.LLST26
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uaword	.LVL36
	.byte	0x1
	.uaword	0x161b
	.uleb128 0x3d
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x3d
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x3d
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x3f
	.string	"NvM_Prv_Common_cst"
	.byte	0x8
	.uahalf	0x16d
	.uaword	0x1434
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.uaword	0x884
	.uleb128 0x40
	.uaword	0xa90
	.uaword	0x1449
	.uleb128 0x41
	.uaword	0x2dd
	.byte	0x3b
	.byte	0
	.uleb128 0x3f
	.string	"NvM_Prv_BlockDescriptors_acst"
	.byte	0x8
	.uahalf	0x172
	.uaword	0x1471
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.uaword	0x1439
	.uleb128 0x40
	.uaword	0xaf1
	.uaword	0x1486
	.uleb128 0x41
	.uaword	0x2dd
	.byte	0x39
	.byte	0
	.uleb128 0x3f
	.string	"NvM_Prv_PersId_BlockId_acst"
	.byte	0x8
	.uahalf	0x176
	.uaword	0x14ac
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.uaword	0x1476
	.uleb128 0x40
	.uaword	0x1e5
	.uaword	0x14c1
	.uleb128 0x41
	.uaword	0x2dd
	.byte	0x3b
	.byte	0
	.uleb128 0x42
	.string	"NvM_Prv_stBlock_au8"
	.byte	0x9
	.byte	0x54
	.uaword	0x14b1
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.uaword	0x210
	.uaword	0x14ee
	.uleb128 0x41
	.uaword	0x2dd
	.byte	0x3b
	.byte	0
	.uleb128 0x42
	.string	"NvM_Prv_stRequests_au16"
	.byte	0x9
	.byte	0x6b
	.uaword	0x14de
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.uaword	0x332
	.uaword	0x151f
	.uleb128 0x41
	.uaword	0x2dd
	.byte	0x3b
	.byte	0
	.uleb128 0x42
	.string	"NvM_Prv_stRequestResult_au8"
	.byte	0x9
	.byte	0x74
	.uaword	0x150f
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"NvM_Prv_idxDataSet_au8"
	.byte	0x9
	.byte	0x78
	.uaword	0x14b1
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"NvM_Prv_idConfigStored_u16"
	.byte	0x9
	.byte	0x81
	.uaword	0x210
	.byte	0x1
	.byte	0x1
	.uleb128 0x43
	.byte	0x1
	.string	"NvM_Prv_ErrorDetection_IsDefaultDataAvailable"
	.byte	0xb
	.byte	0x5f
	.byte	0x1
	.uaword	0x297
	.byte	0x1
	.uaword	0x15cf
	.uleb128 0xb
	.uaword	0x652
	.uleb128 0xb
	.uaword	0x303
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.string	"NvM_Prv_ErrorDetection_IsRamBlockAddressValid"
	.byte	0xb
	.byte	0x61
	.byte	0x1
	.uaword	0x297
	.byte	0x1
	.uaword	0x161b
	.uleb128 0xb
	.uaword	0x652
	.uleb128 0xb
	.uaword	0x303
	.uleb128 0xb
	.uaword	0x2fc
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.string	"NvM_Prv_Service_Initiate"
	.byte	0xa
	.byte	0xa9
	.byte	0x1
	.uaword	0x2c7
	.byte	0x1
	.uaword	0x1652
	.uleb128 0xb
	.uaword	0x6ce
	.uleb128 0xb
	.uaword	0xbf5
	.uleb128 0xb
	.uaword	0x1652
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x1658
	.uleb128 0x6
	.uaword	0xd08
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
	.uleb128 0x5
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
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
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
	.uleb128 0x16
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x22
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x27
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0x2a
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
	.uleb128 0x2e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x35
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x3c
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
	.uleb128 0x3d
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x3e
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
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL1
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL6
	.uaword	.LFE113
	.uahalf	0x2
	.byte	0x84
	.sleb128 2
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL8
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL19
	.uaword	.LFE114
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL9
	.uaword	.LVL13
	.uahalf	0x2
	.byte	0x84
	.sleb128 14
	.uaword	.LVL19
	.uaword	.LFE114
	.uahalf	0x2
	.byte	0x84
	.sleb128 14
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL10
	.uaword	.LVL13
	.uahalf	0x2
	.byte	0x84
	.sleb128 15
	.uaword	.LVL19
	.uaword	.LFE114
	.uahalf	0x2
	.byte	0x84
	.sleb128 15
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL11
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL19
	.uaword	.LFE114
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LFE114
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL13
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x2
	.byte	0x84
	.sleb128 12
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL14
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL15
	.uaword	.LVL18
	.uahalf	0x2
	.byte	0x84
	.sleb128 4
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL15
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL22
	.uaword	.LFE112
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL21
	.uaword	.LVL26
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL26
	.uaword	.LFE112
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL24
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LFB109
	.uaword	.LCFI0
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0
	.uaword	.LFE109
	.uahalf	0x2
	.byte	0x8a
	.sleb128 32
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL27
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL28
	.uaword	.LVL30-1
	.uahalf	0x2
	.byte	0x91
	.sleb128 -14
	.uaword	.LVL30-1
	.uaword	.LVL30
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL30
	.uaword	.LFE109
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL27
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL29
	.uaword	.LVL30
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL30
	.uaword	.LFE109
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL27
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL30
	.uaword	.LFE109
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL31
	.uaword	.LFE109
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LFB110
	.uaword	.LCFI1
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI1
	.uaword	.LFE110
	.uahalf	0x2
	.byte	0x8a
	.sleb128 32
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL32
	.uaword	.LVL35
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL35
	.uaword	.LVL36-1
	.uahalf	0x2
	.byte	0x91
	.sleb128 -14
	.uaword	.LVL36-1
	.uaword	.LFE110
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL32
	.uaword	.LVL35
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL33
	.uaword	.LVL35
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL33
	.uaword	.LVL34
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL34
	.uaword	.LVL36-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x3c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB113
	.uaword	.LFE113-.LFB113
	.uaword	.LFB114
	.uaword	.LFE114-.LFB114
	.uaword	.LFB112
	.uaword	.LFE112-.LFB112
	.uaword	.LFB109
	.uaword	.LFE109-.LFB109
	.uaword	.LFB110
	.uaword	.LFE110-.LFB110
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB26
	.uaword	.LBE26
	.uaword	.LBB31
	.uaword	.LBE31
	.uaword	0
	.uaword	0
	.uaword	.LBB32
	.uaword	.LBE32
	.uaword	.LBB36
	.uaword	.LBE36
	.uaword	.LBB45
	.uaword	.LBE45
	.uaword	0
	.uaword	0
	.uaword	.LBB39
	.uaword	.LBE39
	.uaword	.LBB42
	.uaword	.LBE42
	.uaword	0
	.uaword	0
	.uaword	.LBB54
	.uaword	.LBE54
	.uaword	.LBB59
	.uaword	.LBE59
	.uaword	0
	.uaword	0
	.uaword	.LFB113
	.uaword	.LFE113
	.uaword	.LFB114
	.uaword	.LFE114
	.uaword	.LFB112
	.uaword	.LFE112
	.uaword	.LFB109
	.uaword	.LFE109
	.uaword	.LFB110
	.uaword	.LFE110
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"idService_uo"
.LASF4:
	.string	"adrRomBlock_pcv"
.LASF5:
	.string	"Result_uo"
.LASF2:
	.string	"ServiceBit_uo"
.LASF7:
	.string	"maskBitsNewValue_u8"
.LASF6:
	.string	"maskBitsToChange_u8"
.LASF3:
	.string	"nrNvBlocks_u8"
.LASF8:
	.string	"BlockData_pcst"
.LASF1:
	.string	"idBlock_uo"
	.extern	NvM_Prv_Service_Initiate,STT_FUNC,0
	.extern	NvM_Prv_ErrorDetection_IsDefaultDataAvailable,STT_FUNC,0
	.extern	NvM_Prv_ErrorDetection_IsRamBlockAddressValid,STT_FUNC,0
	.extern	NvM_Prv_stRequests_au16,STT_OBJECT,120
	.extern	NvM_Prv_stRequestResult_au8,STT_OBJECT,60
	.extern	NvM_Prv_stBlock_au8,STT_OBJECT,60
	.extern	NvM_Prv_idxDataSet_au8,STT_OBJECT,60
	.extern	NvM_Prv_BlockDescriptors_acst,STT_OBJECT,3120
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
