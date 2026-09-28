	.file	"NvM_ReadBlock.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.NvM_Prv_Read_SetBlockData,"ax",@progbits
	.align 1
	.type	NvM_Prv_Read_SetBlockData, @function
NvM_Prv_Read_SetBlockData:
.LFB113:
	.file 1 "bsw\\NvM\\src\\SingleBlockRequests\\Asynchronous\\NvM_ReadBlock.c"
	.loc 1 385 0
.LVL0:
	.loc 1 386 0
	ld.hu	%d15, [%a4] 2
.LVL1:
	.loc 1 387 0
	ld.bu	%d3, [%a4] 14
.LVL2:
.LBB24:
.LBB25:
	.file 2 ".\\output\\inc/..\\..\\bsw\\NvM\\src\\Internal\\BlockData\\NvM_Prv_BlockDescriptor_Inl.h"
	.loc 2 270 0
	lt.u	%d4, %d15, 60
.LBE25:
.LBE24:
	.loc 1 388 0
	ld.bu	%d6, [%a4] 15
.LVL3:
	.loc 1 390 0
	ld.w	%d7, [%a4] 8
.LVL4:
.LBB28:
.LBB26:
	.loc 2 270 0
	jnz	%d4, .L2
	.loc 2 269 0
	mov	%d4, 0
.LVL5:
.L3:
.LBE26:
.LBE28:
	mov	%d5, 0
	mov	%d2, -2
	.loc 1 390 0
	jeq	%d7, %d4, .L4
	nor	%d2, %d3, 0
	and	%d3, %d6
	extr	%d2, %d2, 0, 8
	extr	%d5, %d3, 0, 8
.L4:
.LVL6:
.LBB29:
.LBB30:
	.file 3 ".\\output\\inc/..\\..\\bsw\\NvM\\src\\Internal\\BlockData\\NvM_Prv_BlockData_Inl.h"
	.loc 3 438 0
	movh.a	%a15, hi:NvM_Prv_stBlock_au8
	lea	%a15, [%a15] lo:NvM_Prv_stBlock_au8
	addsc.a	%a15, %a15, %d15, 0
	ld.bu	%d3, [%a15]0
	and	%d2, %d3
	or	%d5, %d2
	st.b	[%a15]0, %d5
.LBE30:
.LBE29:
.LBB31:
.LBB32:
	.loc 3 383 0
	movh.a	%a15, hi:NvM_Prv_stRequestResult_au8
	lea	%a15, [%a15] lo:NvM_Prv_stRequestResult_au8
.LBE32:
.LBE31:
	.loc 1 406 0
	ld.bu	%d2, [%a4] 12
.LVL7:
.LBB34:
.LBB33:
	.loc 3 383 0
	addsc.a	%a15, %a15, %d15, 0
	st.b	[%a15]0, %d2
.LVL8:
.LBE33:
.LBE34:
.LBB35:
.LBB36:
	.loc 3 400 0
	movh.a	%a15, hi:NvM_Prv_stRequests_au16
	lea	%a15, [%a15] lo:NvM_Prv_stRequests_au16
	addsc.a	%a15, %a15, %d15, 1
	ld.hu	%d2, [%a4] 4
.LVL9:
	ld.h	%d15, [%a15]0
.LVL10:
	insert	%d15, %d15, 1, %d2, 1
	st.h	[%a15]0, %d15
.LVL11:
	ret
.LVL12:
.L2:
.LBE36:
.LBE35:
.LBB37:
.LBB27:
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
	jz.a	%a15, .L3
	.loc 2 273 0
	ld.w	%d4, [%a15]0
.LVL13:
	j	.L3
.LBE27:
.LBE37:
.LFE113:
	.size	NvM_Prv_Read_SetBlockData, .-NvM_Prv_Read_SetBlockData
.section .text.NvM_Prv_Read_CheckParameter,"ax",@progbits
	.align 1
	.type	NvM_Prv_Read_CheckParameter, @function
NvM_Prv_Read_CheckParameter:
.LFB112:
	.loc 1 348 0
.LVL14:
	.loc 1 355 0
	ld.bu	%d4, [%a4]0
	ld.hu	%d5, [%a4] 2
	ld.a	%a4, [%a4] 8
.LVL15:
	j	NvM_Prv_ErrorDetection_IsRamBlockAddressValid
.LVL16:
.LFE112:
	.size	NvM_Prv_Read_CheckParameter, .-NvM_Prv_Read_CheckParameter
.section .text.NvM_ReadBlock,"ax",@progbits
	.align 1
	.global	NvM_ReadBlock
	.type	NvM_ReadBlock, @function
NvM_ReadBlock:
.LFB109:
	.loc 1 104 0
.LVL17:
.LBB50:
.LBB51:
.LBB52:
.LBB53:
	.loc 3 273 0
	movh.a	%a15, hi:NvM_Prv_idxDataSet_au8
.LBE53:
.LBE52:
.LBE51:
.LBE50:
	.loc 1 104 0
	sub.a	%SP, 32
.LCFI0:
.LBB75:
.LBB74:
	.loc 1 275 0
	mov	%d15, 6
.LBB57:
.LBB54:
	.loc 3 273 0
	lea	%a15, [%a15] lo:NvM_Prv_idxDataSet_au8
.LBE54:
.LBE57:
	.loc 1 275 0
	st.b	[%SP] 16, %d15
.LBB58:
.LBB55:
	.loc 3 273 0
	addsc.a	%a15, %a15, %d4, 0
.LBE55:
.LBE58:
	.loc 1 276 0
	mov	%d15, 8
	st.h	[%SP] 20, %d15
.LVL18:
	.loc 1 272 0
	st.h	[%SP] 18, %d4
	.loc 1 273 0
	st.a	[%SP] 24, %a4
.LBB59:
.LBB60:
.LBB61:
.LBB62:
	.loc 2 206 0
	ge.u	%d15, %d4, 60
.LBE62:
.LBE61:
.LBE60:
.LBE59:
.LBB67:
.LBB56:
	.loc 3 273 0
	ld.bu	%d2, [%a15]0
.LVL19:
.LBE56:
.LBE67:
.LBB68:
.LBB65:
.LBB64:
.LBB63:
	.loc 2 206 0
	jnz	%d15, .L11
.LVL20:
	.loc 2 208 0
	mul	%d4, %d4, 52
.LVL21:
	movh.a	%a2, hi:NvM_Prv_BlockDescriptors_acst
	lea	%a2, [%a2] lo:NvM_Prv_BlockDescriptors_acst
	addsc.a	%a15, %a2, %d4, 0
.LVL22:
.LBE63:
.LBE64:
	.loc 3 185 0
	ld.bu	%d15, [%a15] 44
	jeq	%d15, 2, .L31
.L12:
.LBE65:
.LBE68:
	.loc 1 290 0
	mov	%d15, 2
	st.w	[%SP] 28, %d15
	.loc 1 296 0
	jz.a	%a4, .L13
.LVL23:
.L14:
	.loc 1 302 0
	mov	%d15, 1
	st.b	[%SP]0, %d15
	.loc 1 303 0
	movh	%d15, hi:NvM_Prv_Read_CheckParameter
	addi	%d15, %d15, lo:NvM_Prv_Read_CheckParameter
	st.w	[%SP] 4, %d15
	.loc 1 305 0
	mov	%d15, 0
	st.w	[%SP] 8, %d15
	.loc 1 306 0
	movh	%d15, hi:NvM_Prv_Read_SetBlockData
	addi	%d15, %d15, lo:NvM_Prv_Read_SetBlockData
	.loc 1 315 0
	mov	%d4, 1
	lea	%a4, [%SP] 16
.LVL24:
	mov.aa	%a5, %SP
	.loc 1 306 0
	st.w	[%SP] 12, %d15
	j	NvM_Prv_Service_Initiate
.LVL25:
.L11:
	.loc 1 290 0
	mov	%d15, 2
	st.w	[%SP] 28, %d15
	.loc 1 296 0
	jnz.a	%a4, .L14
.LVL26:
.L16:
.LBB69:
.LBB70:
	.loc 2 269 0
	mov	%d15, 0
.LVL27:
.LBE70:
.LBE69:
	.loc 1 299 0
	st.w	[%SP] 24, %d15
	j	.L14
.LVL28:
.L31:
.LBB72:
.LBB66:
	.loc 3 185 0
	ld.bu	%d3, [%a15] 11
	jlt.u	%d2, %d3, .L12
.LBE66:
.LBE72:
	.loc 1 287 0
	mov	%d2, 12
.LVL29:
	st.h	[%SP] 20, %d2
	.loc 1 290 0
	st.w	[%SP] 28, %d15
	.loc 1 296 0
	jnz.a	%a4, .L14
.L13:
.LVL30:
.LBB73:
.LBB71:
	.loc 2 271 0
	addsc.a	%a2, %a2, %d4, 0
	ld.a	%a15, [%a2] 16
	.loc 2 270 0
	jz.a	%a15, .L16
	.loc 2 273 0
	ld.w	%d15, [%a15]0
.LVL31:
.LBE71:
.LBE73:
	.loc 1 299 0
	st.w	[%SP] 24, %d15
	j	.L14
.LBE74:
.LBE75:
.LFE109:
	.size	NvM_ReadBlock, .-NvM_ReadBlock
.section .text.NvM_ReadPRAMBlock,"ax",@progbits
	.align 1
	.global	NvM_ReadPRAMBlock
	.type	NvM_ReadPRAMBlock, @function
NvM_ReadPRAMBlock:
.LFB110:
	.loc 1 196 0
.LVL32:
	sub.a	%SP, 32
.LCFI1:
.LBB88:
.LBB89:
	.loc 1 273 0
	mov	%d15, 0
.LBB90:
.LBB91:
	.loc 3 273 0
	movh.a	%a15, hi:NvM_Prv_idxDataSet_au8
.LBE91:
.LBE90:
	.loc 1 273 0
	st.w	[%SP] 24, %d15
.LBB95:
.LBB92:
	.loc 3 273 0
	lea	%a15, [%a15] lo:NvM_Prv_idxDataSet_au8
.LBE92:
.LBE95:
	.loc 1 275 0
	mov	%d15, 22
	st.b	[%SP] 16, %d15
.LBB96:
.LBB93:
	.loc 3 273 0
	addsc.a	%a15, %a15, %d4, 0
.LBE93:
.LBE96:
	.loc 1 276 0
	mov	%d15, 8
	st.h	[%SP] 20, %d15
.LVL33:
	.loc 1 272 0
	st.h	[%SP] 18, %d4
.LBB97:
.LBB98:
.LBB99:
.LBB100:
	.loc 2 206 0
	ge.u	%d15, %d4, 60
.LBE100:
.LBE99:
.LBE98:
.LBE97:
.LBB105:
.LBB94:
	.loc 3 273 0
	ld.bu	%d2, [%a15]0
.LVL34:
.LBE94:
.LBE105:
.LBB106:
.LBB103:
.LBB102:
.LBB101:
	.loc 2 206 0
	jnz	%d15, .L33
.LVL35:
	.loc 2 208 0
	mul	%d4, %d4, 52
.LVL36:
	movh.a	%a15, hi:NvM_Prv_BlockDescriptors_acst
.LVL37:
	lea	%a2, [%a15] lo:NvM_Prv_BlockDescriptors_acst
	addsc.a	%a15, %a2, %d4, 0
.LBE101:
.LBE102:
	.loc 3 185 0
	ld.bu	%d15, [%a15] 44
	jeq	%d15, 2, .L42
.L34:
.LBE103:
.LBE106:
	.loc 1 290 0
	mov	%d15, 2
	st.w	[%SP] 28, %d15
.LVL38:
.L35:
.LBB107:
.LBB108:
	.loc 2 271 0
	addsc.a	%a15, %a2, %d4, 0
	ld.a	%a15, [%a15] 16
	.loc 2 270 0
	jz.a	%a15, .L37
	.loc 2 273 0
	ld.w	%d15, [%a15]0
.LVL39:
	j	.L36
.LVL40:
.L33:
.LBE108:
.LBE107:
	.loc 1 290 0
	mov	%d15, 2
	st.w	[%SP] 28, %d15
.LVL41:
.L37:
.LBB110:
.LBB109:
	.loc 2 269 0
	mov	%d15, 0
.LVL42:
.L36:
.LBE109:
.LBE110:
	.loc 1 299 0
	st.w	[%SP] 24, %d15
	.loc 1 302 0
	mov	%d15, 1
.LVL43:
	st.b	[%SP]0, %d15
	.loc 1 303 0
	movh	%d15, hi:NvM_Prv_Read_CheckParameter
	addi	%d15, %d15, lo:NvM_Prv_Read_CheckParameter
	st.w	[%SP] 4, %d15
	.loc 1 305 0
	mov	%d15, 0
	st.w	[%SP] 8, %d15
	.loc 1 306 0
	movh	%d15, hi:NvM_Prv_Read_SetBlockData
	addi	%d15, %d15, lo:NvM_Prv_Read_SetBlockData
	.loc 1 315 0
	mov	%d4, 1
	lea	%a4, [%SP] 16
	mov.aa	%a5, %SP
	.loc 1 306 0
	st.w	[%SP] 12, %d15
	j	NvM_Prv_Service_Initiate
.LVL44:
.L42:
.LBB111:
.LBB104:
	.loc 3 185 0
	ld.bu	%d3, [%a15] 11
	jlt.u	%d2, %d3, .L34
.LBE104:
.LBE111:
	.loc 1 287 0
	mov	%d2, 12
.LVL45:
	st.h	[%SP] 20, %d2
	.loc 1 290 0
	st.w	[%SP] 28, %d15
.LVL46:
	j	.L35
.LBE89:
.LBE88:
.LFE110:
	.size	NvM_ReadPRAMBlock, .-NvM_ReadPRAMBlock
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
	.uaword	.LFB112
	.uaword	.LFE112-.LFB112
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB109
	.uaword	.LFE109-.LFB109
	.byte	0x4
	.uaword	.LCFI0-.LFB109
	.byte	0xe
	.uleb128 0x20
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB110
	.uaword	.LFE110-.LFB110
	.byte	0x4
	.uaword	.LCFI1-.LFB110
	.byte	0xe
	.uleb128 0x20
	.align 2
.LEFDE6:
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
	.uaword	0x15a0
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\NvM\\src\\SingleBlockRequests\\Asynchronous\\NvM_ReadBlock.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x140
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
	.uaword	0x1e7
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
	.uaword	0x213
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
	.uaword	0x24f
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
	.uaword	0x1e7
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
	.uaword	0x1da
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x4
	.byte	0x4
	.uleb128 0x5
	.byte	0x4
	.uaword	0x1da
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2ec
	.uleb128 0x6
	.uaword	0x205
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2f7
	.uleb128 0x7
	.uleb128 0x8
	.string	"NvM_BlockIdType"
	.byte	0x6
	.uahalf	0x1ca
	.uaword	0x205
	.uleb128 0x8
	.string	"NvM_Rb_VoidPtr"
	.byte	0x6
	.uahalf	0x1d3
	.uaword	0x2de
	.uleb128 0x8
	.string	"NvM_RequestResultType"
	.byte	0x6
	.uahalf	0x1d4
	.uaword	0x1da
	.uleb128 0x5
	.byte	0x4
	.uaword	0x34b
	.uleb128 0x9
	.byte	0x1
	.uaword	0x2bc
	.uleb128 0x5
	.byte	0x4
	.uaword	0x357
	.uleb128 0xa
	.byte	0x1
	.uaword	0x2bc
	.uaword	0x367
	.uleb128 0xb
	.uaword	0x1da
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.byte	0x7
	.byte	0xa2
	.uaword	0x3ad
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
	.uaword	0x367
	.uleb128 0xe
	.byte	0x1
	.byte	0x7
	.uahalf	0x13e
	.uaword	0x628
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
	.uaword	0x205
	.uleb128 0x8
	.string	"NvM_Prv_idService_tuo"
	.byte	0x7
	.uahalf	0x14c
	.uaword	0x1da
	.uleb128 0xe
	.byte	0x1
	.byte	0x7
	.uahalf	0x159
	.uaword	0x6c3
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
	.uaword	0x1da
	.uleb128 0xf
	.byte	0x4
	.byte	0x7
	.uahalf	0x180
	.uaword	0x718
	.uleb128 0x10
	.string	"ptrRamBlock_pv"
	.byte	0x7
	.uahalf	0x182
	.uaword	0x2de
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
	.uaword	0x6df
	.uleb128 0x11
	.byte	0xc
	.byte	0x7
	.uahalf	0x191
	.uaword	0x787
	.uleb128 0x12
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x194
	.uaword	0x647
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF1
	.byte	0x7
	.uahalf	0x197
	.uaword	0x2f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x12
	.uaword	.LASF2
	.byte	0x7
	.uahalf	0x19a
	.uaword	0x628
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.string	"BlockData_un"
	.byte	0x7
	.uahalf	0x19e
	.uaword	0x718
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x8
	.string	"NvM_Prv_QueueEntry_tst"
	.byte	0x7
	.uahalf	0x1a0
	.uaword	0x738
	.uleb128 0x5
	.byte	0x4
	.uaword	0x7ac
	.uleb128 0xa
	.byte	0x1
	.uaword	0x2bc
	.uaword	0x7bc
	.uleb128 0xb
	.uaword	0x2de
	.byte	0
	.uleb128 0x14
	.byte	0xc
	.byte	0x8
	.byte	0x77
	.uaword	0x830
	.uleb128 0x15
	.string	"MultiBlockCallback_pfct"
	.byte	0x8
	.byte	0x7f
	.uaword	0x841
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"RbMultiBlockStartCallback_pfct"
	.byte	0x8
	.byte	0x84
	.uaword	0x853
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.string	"ObserverCallback_pfct"
	.byte	0x8
	.byte	0x8a
	.uaword	0x873
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.uaword	0x841
	.uleb128 0xb
	.uaword	0x1da
	.uleb128 0xb
	.uaword	0x327
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x830
	.uleb128 0x16
	.byte	0x1
	.uaword	0x853
	.uleb128 0xb
	.uaword	0x1da
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x847
	.uleb128 0xa
	.byte	0x1
	.uaword	0x2bc
	.uaword	0x873
	.uleb128 0xb
	.uaword	0x2f8
	.uleb128 0xb
	.uaword	0x1da
	.uleb128 0xb
	.uaword	0x327
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x859
	.uleb128 0x3
	.string	"NvM_Prv_Common_tst"
	.byte	0x8
	.byte	0x8d
	.uaword	0x7bc
	.uleb128 0x14
	.byte	0x34
	.byte	0x8
	.byte	0x95
	.uaword	0xa6b
	.uleb128 0x15
	.string	"idBlockMemIf_u16"
	.byte	0x8
	.byte	0x9b
	.uaword	0x205
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"nrBlockBytes_pu16"
	.byte	0x8
	.byte	0xa9
	.uaword	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.string	"nrBlockBytesStored_u16"
	.byte	0x8
	.byte	0xb5
	.uaword	0x205
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x15
	.string	"idxDevice_u8"
	.byte	0x8
	.byte	0xbb
	.uaword	0x1da
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x17
	.uaword	.LASF3
	.byte	0x8
	.byte	0xc0
	.uaword	0x1da
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0x15
	.string	"nrRomBlocks_u8"
	.byte	0x8
	.byte	0xc5
	.uaword	0x1da
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x15
	.string	"adrRamBlock_ppv"
	.byte	0x8
	.byte	0xd6
	.uaword	0xa6b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x15
	.string	"adrRomBlock_pcv"
	.byte	0x8
	.byte	0xde
	.uaword	0x2f1
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x15
	.string	"SingleBlockCallback_pfct"
	.byte	0x8
	.byte	0xe8
	.uaword	0xa8b
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x15
	.string	"SingleBlockStartCallback_pfct"
	.byte	0x8
	.byte	0xf0
	.uaword	0x351
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x15
	.string	"InitBlockCallback_pfct"
	.byte	0x8
	.byte	0xf9
	.uaword	0x345
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x13
	.string	"ReadRamBlockFromNvm_pfct"
	.byte	0x8
	.uahalf	0x102
	.uaword	0x7a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x13
	.string	"WriteRamBlockToNvm_pfct"
	.byte	0x8
	.uahalf	0x10b
	.uaword	0x7a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x13
	.string	"BlockManagementType_en"
	.byte	0x8
	.uahalf	0x110
	.uaword	0x3ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x13
	.string	"JobPriority_u8"
	.byte	0x8
	.uahalf	0x115
	.uaword	0x1da
	.byte	0x2
	.byte	0x23
	.uleb128 0x2d
	.uleb128 0x13
	.string	"stFlags_uo"
	.byte	0x8
	.uahalf	0x13e
	.uaword	0x241
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0xa71
	.uleb128 0x6
	.uaword	0x2de
	.uleb128 0xa
	.byte	0x1
	.uaword	0x2bc
	.uaword	0xa8b
	.uleb128 0xb
	.uaword	0x1da
	.uleb128 0xb
	.uaword	0x327
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0xa76
	.uleb128 0x8
	.string	"NvM_Prv_BlockDescriptor_tst"
	.byte	0x8
	.uahalf	0x153
	.uaword	0x893
	.uleb128 0x11
	.byte	0x4
	.byte	0x8
	.uahalf	0x158
	.uaword	0xaf2
	.uleb128 0x13
	.string	"PersistentId_u16"
	.byte	0x8
	.uahalf	0x15a
	.uaword	0x205
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.string	"BlockId_u16"
	.byte	0x8
	.uahalf	0x15b
	.uaword	0x2f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x8
	.string	"NvM_Prv_PersId_BlockId_tst"
	.byte	0x8
	.uahalf	0x15c
	.uaword	0xab5
	.uleb128 0x3
	.string	"NvM_Prv_BlockErrors_tuo"
	.byte	0x9
	.byte	0x3f
	.uaword	0x1da
	.uleb128 0x14
	.byte	0x10
	.byte	0xa
	.byte	0x1a
	.uaword	0xb8d
	.uleb128 0x15
	.string	"QueueEntry_st"
	.byte	0xa
	.byte	0x1c
	.uaword	0x787
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x17
	.uaword	.LASF4
	.byte	0xa
	.byte	0x1f
	.uaword	0x327
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x17
	.uaword	.LASF5
	.byte	0xa
	.byte	0x21
	.uaword	0x1da
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0x17
	.uaword	.LASF6
	.byte	0xa
	.byte	0x24
	.uaword	0x1da
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x17
	.uaword	.LASF7
	.byte	0xa
	.byte	0x25
	.uaword	0x1da
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.byte	0
	.uleb128 0x3
	.string	"NvM_Prv_BlockData_tst"
	.byte	0xa
	.byte	0x27
	.uaword	0xb34
	.uleb128 0x3
	.string	"NvM_Prv_Service_CheckParameter_tpfct"
	.byte	0xa
	.byte	0x2f
	.uaword	0xbd6
	.uleb128 0x5
	.byte	0x4
	.uaword	0xbdc
	.uleb128 0xa
	.byte	0x1
	.uaword	0x28c
	.uaword	0xbec
	.uleb128 0xb
	.uaword	0xbec
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0xbf2
	.uleb128 0x6
	.uaword	0xb8d
	.uleb128 0x3
	.string	"NvM_Prv_Service_CheckBlockData_tpfct"
	.byte	0xa
	.byte	0x36
	.uaword	0xc23
	.uleb128 0x5
	.byte	0x4
	.uaword	0xc29
	.uleb128 0xa
	.byte	0x1
	.uaword	0x28c
	.uaword	0xc3e
	.uleb128 0xb
	.uaword	0xbec
	.uleb128 0xb
	.uaword	0xc3e
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0xb15
	.uleb128 0x3
	.string	"NvM_Prv_Service_SetBlockData_tpfct"
	.byte	0xa
	.byte	0x3e
	.uaword	0xc6e
	.uleb128 0x5
	.byte	0x4
	.uaword	0xc74
	.uleb128 0x16
	.byte	0x1
	.uaword	0xc80
	.uleb128 0xb
	.uaword	0xbec
	.byte	0
	.uleb128 0x14
	.byte	0x10
	.byte	0xa
	.byte	0x43
	.uaword	0xcff
	.uleb128 0x15
	.string	"CheckPendingBlock_b"
	.byte	0xa
	.byte	0x4b
	.uaword	0x28c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CheckParameter_pfct"
	.byte	0xa
	.byte	0x52
	.uaword	0xbaa
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.string	"CheckBlockData_pfct"
	.byte	0xa
	.byte	0x59
	.uaword	0xbf7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x15
	.string	"SetBlockData_pfct"
	.byte	0xa
	.byte	0x5f
	.uaword	0xc44
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x3
	.string	"NvM_Prv_Service_Configuration_tst"
	.byte	0xa
	.byte	0x61
	.uaword	0xc80
	.uleb128 0x18
	.string	"NvM_Prv_GetBlockType"
	.byte	0x2
	.byte	0xcb
	.byte	0x1
	.uaword	0x3ad
	.byte	0x3
	.uaword	0xd67
	.uleb128 0x19
	.uaword	.LASF1
	.byte	0x2
	.byte	0xcb
	.uaword	0x2f8
	.uleb128 0x1a
	.string	"BlockType"
	.byte	0x2
	.byte	0xcd
	.uaword	0x3ad
	.byte	0
	.uleb128 0x18
	.string	"NvM_Prv_GetNrNonVolatileBlocks"
	.byte	0x2
	.byte	0xdf
	.byte	0x1
	.uaword	0x1da
	.byte	0x3
	.uaword	0xdaa
	.uleb128 0x19
	.uaword	.LASF1
	.byte	0x2
	.byte	0xdf
	.uaword	0x2f8
	.uleb128 0x1b
	.uaword	.LASF3
	.byte	0x2
	.byte	0xe1
	.uaword	0x1da
	.byte	0
	.uleb128 0x1c
	.string	"NvM_Prv_GetPRamBlockAddress"
	.byte	0x2
	.uahalf	0x10b
	.byte	0x1
	.uaword	0x2de
	.byte	0x3
	.uaword	0xdfd
	.uleb128 0x1d
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x10b
	.uaword	0x2f8
	.uleb128 0x1e
	.string	"PRamBlockAddress_pv"
	.byte	0x2
	.uahalf	0x10d
	.uaword	0x2de
	.byte	0
	.uleb128 0x1f
	.string	"NvM_Prv_Block_SetState"
	.byte	0x3
	.uahalf	0x1b2
	.byte	0x1
	.byte	0x3
	.uaword	0xe43
	.uleb128 0x1d
	.uaword	.LASF1
	.byte	0x3
	.uahalf	0x1b2
	.uaword	0x2f8
	.uleb128 0x1d
	.uaword	.LASF6
	.byte	0x3
	.uahalf	0x1b3
	.uaword	0x1da
	.uleb128 0x1d
	.uaword	.LASF7
	.byte	0x3
	.uahalf	0x1b4
	.uaword	0x1da
	.byte	0
	.uleb128 0x1f
	.string	"NvM_Prv_Block_SetRequestResult"
	.byte	0x3
	.uahalf	0x17d
	.byte	0x1
	.byte	0x3
	.uaword	0xe85
	.uleb128 0x1d
	.uaword	.LASF1
	.byte	0x3
	.uahalf	0x17d
	.uaword	0x2f8
	.uleb128 0x1d
	.uaword	.LASF4
	.byte	0x3
	.uahalf	0x17d
	.uaword	0x327
	.byte	0
	.uleb128 0x1f
	.string	"NvM_Prv_Block_SetRequest"
	.byte	0x3
	.uahalf	0x18e
	.byte	0x1
	.byte	0x3
	.uaword	0xec1
	.uleb128 0x1d
	.uaword	.LASF1
	.byte	0x3
	.uahalf	0x18e
	.uaword	0x2f8
	.uleb128 0x1d
	.uaword	.LASF2
	.byte	0x3
	.uahalf	0x18e
	.uaword	0x628
	.byte	0
	.uleb128 0x1c
	.string	"NvM_Prv_Block_GetIdxDataset"
	.byte	0x3
	.uahalf	0x10f
	.byte	0x1
	.uaword	0x1da
	.byte	0x3
	.uaword	0xef8
	.uleb128 0x1d
	.uaword	.LASF1
	.byte	0x3
	.uahalf	0x10f
	.uaword	0x2f8
	.byte	0
	.uleb128 0x18
	.string	"NvM_Prv_Block_IsInRom"
	.byte	0x3
	.byte	0xb7
	.byte	0x1
	.uaword	0x28c
	.byte	0x3
	.uaword	0xf32
	.uleb128 0x19
	.uaword	.LASF1
	.byte	0x3
	.byte	0xb7
	.uaword	0x2f8
	.uleb128 0x19
	.uaword	.LASF5
	.byte	0x3
	.byte	0xb7
	.uaword	0x1da
	.byte	0
	.uleb128 0x20
	.string	"NvM_Prv_Read_SetBlockData"
	.byte	0x1
	.uahalf	0x180
	.byte	0x1
	.uaword	.LFB113
	.uaword	.LFE113
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x103f
	.uleb128 0x21
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x180
	.uaword	0xbec
	.byte	0x1
	.byte	0x64
	.uleb128 0x22
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x182
	.uaword	0x2f8
	.uaword	.LLST0
	.uleb128 0x22
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x183
	.uaword	0x1da
	.uaword	.LLST1
	.uleb128 0x22
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x184
	.uaword	0x1da
	.uaword	.LLST2
	.uleb128 0x23
	.uaword	0xdaa
	.uaword	.LBB24
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.uahalf	0x186
	.uaword	0xfcc
	.uleb128 0x24
	.uaword	0xdd4
	.uaword	.LLST3
	.uleb128 0x25
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x26
	.uaword	0xde0
	.uaword	.LLST4
	.byte	0
	.byte	0
	.uleb128 0x27
	.uaword	0xdfd
	.uaword	.LBB29
	.uaword	.LBE29
	.byte	0x1
	.uahalf	0x193
	.uaword	0xff4
	.uleb128 0x28
	.uaword	0xe36
	.uleb128 0x28
	.uaword	0xe2a
	.uleb128 0x24
	.uaword	0xe1e
	.uaword	.LLST5
	.byte	0
	.uleb128 0x23
	.uaword	0xe43
	.uaword	.LBB31
	.uaword	.Ldebug_ranges0+0x20
	.byte	0x1
	.uahalf	0x196
	.uaword	0x101b
	.uleb128 0x24
	.uaword	0xe78
	.uaword	.LLST6
	.uleb128 0x24
	.uaword	0xe6c
	.uaword	.LLST7
	.byte	0
	.uleb128 0x29
	.uaword	0xe85
	.uaword	.LBB35
	.uaword	.LBE35
	.byte	0x1
	.uahalf	0x197
	.uleb128 0x24
	.uaword	0xeb4
	.uaword	.LLST8
	.uleb128 0x24
	.uaword	0xea8
	.uaword	.LLST9
	.byte	0
	.byte	0
	.uleb128 0x2a
	.string	"NvM_Prv_Read_CheckParameter"
	.byte	0x1
	.uahalf	0x15b
	.byte	0x1
	.uaword	0x28c
	.uaword	.LFB112
	.uaword	.LFE112
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x108f
	.uleb128 0x2b
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x15b
	.uaword	0xbec
	.uaword	.LLST10
	.uleb128 0x2c
	.uaword	.LVL16
	.byte	0x1
	.uaword	0x1515
	.byte	0
	.uleb128 0x1c
	.string	"NvM_Prv_ReadBlock"
	.byte	0x1
	.uahalf	0x107
	.byte	0x1
	.uaword	0x2bc
	.byte	0x1
	.uaword	0x1125
	.uleb128 0x1d
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x107
	.uaword	0x647
	.uleb128 0x1d
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x108
	.uaword	0x2f8
	.uleb128 0x2d
	.string	"RamBlock_po"
	.byte	0x1
	.uahalf	0x109
	.uaword	0x310
	.uleb128 0x1e
	.string	"stReturn_uo"
	.byte	0x1
	.uahalf	0x10b
	.uaword	0x2bc
	.uleb128 0x1e
	.string	"ServiceConfiguration_st"
	.byte	0x1
	.uahalf	0x10c
	.uaword	0xcff
	.uleb128 0x1e
	.string	"BlockData_st"
	.byte	0x1
	.uahalf	0x10d
	.uaword	0xb8d
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.string	"NvM_ReadBlock"
	.byte	0x1
	.byte	0x67
	.byte	0x1
	.uaword	0x2bc
	.uaword	.LFB109
	.uaword	.LFE109
	.uaword	.LLST11
	.byte	0x1
	.uaword	0x126d
	.uleb128 0x2f
	.string	"BlockId"
	.byte	0x1
	.byte	0x67
	.uaword	0x2f8
	.uaword	.LLST12
	.uleb128 0x2f
	.string	"NvM_DstPtr"
	.byte	0x1
	.byte	0x67
	.uaword	0x310
	.uaword	.LLST13
	.uleb128 0x30
	.uaword	0x108f
	.uaword	.LBB50
	.uaword	.Ldebug_ranges0+0x38
	.byte	0x1
	.byte	0x6f
	.uaword	0x1250
	.uleb128 0x24
	.uaword	0x10c7
	.uaword	.LLST13
	.uleb128 0x24
	.uaword	0x10bb
	.uaword	.LLST15
	.uleb128 0x31
	.uaword	0x10af
	.byte	0x6
	.uleb128 0x25
	.uaword	.Ldebug_ranges0+0x38
	.uleb128 0x32
	.uaword	0x10db
	.byte	0x1
	.uleb128 0x33
	.uaword	0x10ef
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.uaword	0x110f
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x23
	.uaword	0xec1
	.uaword	.LBB52
	.uaword	.Ldebug_ranges0+0x50
	.byte	0x1
	.uahalf	0x117
	.uaword	0x11da
	.uleb128 0x24
	.uaword	0xeeb
	.uaword	.LLST16
	.byte	0
	.uleb128 0x23
	.uaword	0xef8
	.uaword	.LBB59
	.uaword	.Ldebug_ranges0+0x78
	.byte	0x1
	.uahalf	0x117
	.uaword	0x1229
	.uleb128 0x24
	.uaword	0xf26
	.uaword	.LLST17
	.uleb128 0x24
	.uaword	0xf1b
	.uaword	.LLST18
	.uleb128 0x34
	.uaword	0xd28
	.uaword	.LBB61
	.uaword	.Ldebug_ranges0+0x98
	.byte	0x3
	.byte	0xb9
	.uleb128 0x24
	.uaword	0xd4a
	.uaword	.LLST18
	.uleb128 0x25
	.uaword	.Ldebug_ranges0+0x98
	.uleb128 0x26
	.uaword	0xd55
	.uaword	.LLST20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x35
	.uaword	0xdaa
	.uaword	.LBB69
	.uaword	.Ldebug_ranges0+0xb0
	.byte	0x1
	.uahalf	0x12b
	.uleb128 0x28
	.uaword	0xdd4
	.uleb128 0x25
	.uaword	.Ldebug_ranges0+0xb0
	.uleb128 0x26
	.uaword	0xde0
	.uaword	.LLST21
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x36
	.uaword	.LVL25
	.byte	0x1
	.uaword	0x1561
	.uleb128 0x37
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x37
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x37
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.string	"NvM_ReadPRAMBlock"
	.byte	0x1
	.byte	0xc3
	.byte	0x1
	.uaword	0x2bc
	.uaword	.LFB110
	.uaword	.LFE110
	.uaword	.LLST22
	.byte	0x1
	.uaword	0x13a4
	.uleb128 0x2f
	.string	"BlockId"
	.byte	0x1
	.byte	0xc3
	.uaword	0x2f8
	.uaword	.LLST23
	.uleb128 0x38
	.uaword	0x108f
	.uaword	.LBB88
	.uaword	.LBE88
	.byte	0x1
	.byte	0xcc
	.uaword	0x1387
	.uleb128 0x31
	.uaword	0x10c7
	.byte	0
	.uleb128 0x24
	.uaword	0x10bb
	.uaword	.LLST24
	.uleb128 0x31
	.uaword	0x10af
	.byte	0x16
	.uleb128 0x39
	.uaword	.LBB89
	.uaword	.LBE89
	.uleb128 0x32
	.uaword	0x10db
	.byte	0x1
	.uleb128 0x33
	.uaword	0x10ef
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.uaword	0x110f
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x23
	.uaword	0xec1
	.uaword	.LBB90
	.uaword	.Ldebug_ranges0+0xc8
	.byte	0x1
	.uahalf	0x117
	.uaword	0x1311
	.uleb128 0x24
	.uaword	0xeeb
	.uaword	.LLST25
	.byte	0
	.uleb128 0x23
	.uaword	0xef8
	.uaword	.LBB97
	.uaword	.Ldebug_ranges0+0xf0
	.byte	0x1
	.uahalf	0x117
	.uaword	0x1360
	.uleb128 0x24
	.uaword	0xf26
	.uaword	.LLST26
	.uleb128 0x24
	.uaword	0xf1b
	.uaword	.LLST27
	.uleb128 0x34
	.uaword	0xd28
	.uaword	.LBB99
	.uaword	.Ldebug_ranges0+0x110
	.byte	0x3
	.byte	0xb9
	.uleb128 0x24
	.uaword	0xd4a
	.uaword	.LLST27
	.uleb128 0x25
	.uaword	.Ldebug_ranges0+0x110
	.uleb128 0x26
	.uaword	0xd55
	.uaword	.LLST29
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x35
	.uaword	0xdaa
	.uaword	.LBB107
	.uaword	.Ldebug_ranges0+0x128
	.byte	0x1
	.uahalf	0x12b
	.uleb128 0x28
	.uaword	0xdd4
	.uleb128 0x25
	.uaword	.Ldebug_ranges0+0x128
	.uleb128 0x26
	.uaword	0xde0
	.uaword	.LLST30
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x36
	.uaword	.LVL44
	.byte	0x1
	.uaword	0x1561
	.uleb128 0x37
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x37
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x37
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x3a
	.string	"NvM_Prv_Common_cst"
	.byte	0x8
	.uahalf	0x16d
	.uaword	0x13c1
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.uaword	0x879
	.uleb128 0x3b
	.uaword	0xa91
	.uaword	0x13d6
	.uleb128 0x3c
	.uaword	0x2d2
	.byte	0x3b
	.byte	0
	.uleb128 0x3a
	.string	"NvM_Prv_BlockDescriptors_acst"
	.byte	0x8
	.uahalf	0x172
	.uaword	0x13fe
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.uaword	0x13c6
	.uleb128 0x3b
	.uaword	0xaf2
	.uaword	0x1413
	.uleb128 0x3c
	.uaword	0x2d2
	.byte	0x39
	.byte	0
	.uleb128 0x3a
	.string	"NvM_Prv_PersId_BlockId_acst"
	.byte	0x8
	.uahalf	0x176
	.uaword	0x1439
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.uaword	0x1403
	.uleb128 0x3b
	.uaword	0x1da
	.uaword	0x144e
	.uleb128 0x3c
	.uaword	0x2d2
	.byte	0x3b
	.byte	0
	.uleb128 0x3d
	.string	"NvM_Prv_stBlock_au8"
	.byte	0x9
	.byte	0x54
	.uaword	0x143e
	.byte	0x1
	.byte	0x1
	.uleb128 0x3b
	.uaword	0x205
	.uaword	0x147b
	.uleb128 0x3c
	.uaword	0x2d2
	.byte	0x3b
	.byte	0
	.uleb128 0x3d
	.string	"NvM_Prv_stRequests_au16"
	.byte	0x9
	.byte	0x6b
	.uaword	0x146b
	.byte	0x1
	.byte	0x1
	.uleb128 0x3b
	.uaword	0x327
	.uaword	0x14ac
	.uleb128 0x3c
	.uaword	0x2d2
	.byte	0x3b
	.byte	0
	.uleb128 0x3d
	.string	"NvM_Prv_stRequestResult_au8"
	.byte	0x9
	.byte	0x74
	.uaword	0x149c
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.string	"NvM_Prv_idxDataSet_au8"
	.byte	0x9
	.byte	0x78
	.uaword	0x143e
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.string	"NvM_Prv_idConfigStored_u16"
	.byte	0x9
	.byte	0x81
	.uaword	0x205
	.byte	0x1
	.byte	0x1
	.uleb128 0x3e
	.byte	0x1
	.string	"NvM_Prv_ErrorDetection_IsRamBlockAddressValid"
	.byte	0xb
	.byte	0x61
	.byte	0x1
	.uaword	0x28c
	.byte	0x1
	.uaword	0x1561
	.uleb128 0xb
	.uaword	0x647
	.uleb128 0xb
	.uaword	0x2f8
	.uleb128 0xb
	.uaword	0x2f1
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.string	"NvM_Prv_Service_Initiate"
	.byte	0xa
	.byte	0xa9
	.byte	0x1
	.uaword	0x2bc
	.byte	0x1
	.uaword	0x1598
	.uleb128 0xb
	.uaword	0x6c3
	.uleb128 0xb
	.uaword	0xbec
	.uleb128 0xb
	.uaword	0x1598
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x159e
	.uleb128 0x6
	.uaword	0xcff
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
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
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x37
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uleb128 0x39
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x3a
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
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x3e
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
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL12
	.uaword	.LFE113
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL2
	.uaword	.LVL6
	.uahalf	0x2
	.byte	0x84
	.sleb128 14
	.uaword	.LVL12
	.uaword	.LFE113
	.uahalf	0x2
	.byte	0x84
	.sleb128 14
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL3
	.uaword	.LVL6
	.uahalf	0x2
	.byte	0x84
	.sleb128 15
	.uaword	.LVL12
	.uaword	.LFE113
	.uahalf	0x2
	.byte	0x84
	.sleb128 15
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL4
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL12
	.uaword	.LFE113
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LFE113
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL6
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x2
	.byte	0x84
	.sleb128 12
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL7
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL8
	.uaword	.LVL11
	.uahalf	0x2
	.byte	0x84
	.sleb128 4
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL8
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL15
	.uaword	.LFE112
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
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
.LLST12:
	.uaword	.LVL17
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL21
	.uaword	.LVL25-1
	.uahalf	0x2
	.byte	0x91
	.sleb128 -14
	.uaword	.LVL25-1
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
	.uaword	.LFE109
	.uahalf	0x2
	.byte	0x91
	.sleb128 -14
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL17
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LFE109
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL17
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL18
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL19
	.uaword	.LVL22
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL28
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL19
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL27
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL31
	.uaword	.LFE109
	.uahalf	0x1
	.byte	0x5f
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
	.uaword	.LVL36
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL36
	.uaword	.LVL40
	.uahalf	0x2
	.byte	0x91
	.sleb128 -14
	.uaword	.LVL40
	.uaword	.LVL41
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL41
	.uaword	.LVL44-1
	.uahalf	0x2
	.byte	0x91
	.sleb128 -14
	.uaword	.LVL44-1
	.uaword	.LVL44
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL44
	.uaword	.LFE110
	.uahalf	0x2
	.byte	0x91
	.sleb128 -14
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL32
	.uaword	.LVL36
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL40
	.uaword	.LVL41
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL33
	.uaword	.LVL36
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL40
	.uaword	.LVL41
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL34
	.uaword	.LVL37
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL37
	.uaword	.LVL38
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL40
	.uaword	.LVL41
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL44
	.uaword	.LVL45
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL34
	.uaword	.LVL36
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL40
	.uaword	.LVL41
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL34
	.uaword	.LVL35
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL40
	.uaword	.LVL41
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL38
	.uaword	.LVL39
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL39
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL41
	.uaword	.LVL42
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL42
	.uaword	.LVL43
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL43
	.uaword	.LVL44-1
	.uahalf	0x2
	.byte	0x91
	.sleb128 -8
	.uaword	.LVL46
	.uaword	.LFE110
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x34
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB113
	.uaword	.LFE113-.LFB113
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
	.uaword	.LBB24
	.uaword	.LBE24
	.uaword	.LBB28
	.uaword	.LBE28
	.uaword	.LBB37
	.uaword	.LBE37
	.uaword	0
	.uaword	0
	.uaword	.LBB31
	.uaword	.LBE31
	.uaword	.LBB34
	.uaword	.LBE34
	.uaword	0
	.uaword	0
	.uaword	.LBB50
	.uaword	.LBE50
	.uaword	.LBB75
	.uaword	.LBE75
	.uaword	0
	.uaword	0
	.uaword	.LBB52
	.uaword	.LBE52
	.uaword	.LBB57
	.uaword	.LBE57
	.uaword	.LBB58
	.uaword	.LBE58
	.uaword	.LBB67
	.uaword	.LBE67
	.uaword	0
	.uaword	0
	.uaword	.LBB59
	.uaword	.LBE59
	.uaword	.LBB68
	.uaword	.LBE68
	.uaword	.LBB72
	.uaword	.LBE72
	.uaword	0
	.uaword	0
	.uaword	.LBB61
	.uaword	.LBE61
	.uaword	.LBB64
	.uaword	.LBE64
	.uaword	0
	.uaword	0
	.uaword	.LBB69
	.uaword	.LBE69
	.uaword	.LBB73
	.uaword	.LBE73
	.uaword	0
	.uaword	0
	.uaword	.LBB90
	.uaword	.LBE90
	.uaword	.LBB95
	.uaword	.LBE95
	.uaword	.LBB96
	.uaword	.LBE96
	.uaword	.LBB105
	.uaword	.LBE105
	.uaword	0
	.uaword	0
	.uaword	.LBB97
	.uaword	.LBE97
	.uaword	.LBB106
	.uaword	.LBE106
	.uaword	.LBB111
	.uaword	.LBE111
	.uaword	0
	.uaword	0
	.uaword	.LBB99
	.uaword	.LBE99
	.uaword	.LBB102
	.uaword	.LBE102
	.uaword	0
	.uaword	0
	.uaword	.LBB107
	.uaword	.LBE107
	.uaword	.LBB110
	.uaword	.LBE110
	.uaword	0
	.uaword	0
	.uaword	.LFB113
	.uaword	.LFE113
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
.LASF3:
	.string	"nrNvBlocks_u8"
.LASF4:
	.string	"Result_uo"
.LASF5:
	.string	"idxDataset_u8"
.LASF2:
	.string	"ServiceBit_uo"
.LASF7:
	.string	"maskBitsNewValue_u8"
.LASF6:
	.string	"maskBitsToChange_u8"
.LASF8:
	.string	"BlockData_pcst"
.LASF1:
	.string	"idBlock_uo"
	.extern	NvM_Prv_Service_Initiate,STT_FUNC,0
	.extern	NvM_Prv_idxDataSet_au8,STT_OBJECT,60
	.extern	NvM_Prv_ErrorDetection_IsRamBlockAddressValid,STT_FUNC,0
	.extern	NvM_Prv_BlockDescriptors_acst,STT_OBJECT,3120
	.extern	NvM_Prv_stRequests_au16,STT_OBJECT,120
	.extern	NvM_Prv_stRequestResult_au8,STT_OBJECT,60
	.extern	NvM_Prv_stBlock_au8,STT_OBJECT,60
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
