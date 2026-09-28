	.file	"NvM_WriteBlock.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.NvM_Prv_Write_CheckBlockData,"ax",@progbits
	.align 1
	.type	NvM_Prv_Write_CheckBlockData, @function
NvM_Prv_Write_CheckBlockData:
.LFB113:
	.file 1 "bsw\\NvM\\src\\SingleBlockRequests\\Asynchronous\\NvM_WriteBlock.c"
	.loc 1 397 0
.LVL0:
	.loc 1 408 0
	ld.hu	%d15, [%a4] 2
.LVL1:
.LBB38:
.LBB39:
	.file 2 ".\\output\\inc/..\\..\\bsw\\NvM\\src\\Internal\\BlockData\\NvM_Prv_BlockData_Inl.h"
	.loc 2 273 0
	movh.a	%a15, hi:NvM_Prv_idxDataSet_au8
	lea	%a15, [%a15] lo:NvM_Prv_idxDataSet_au8
	addsc.a	%a15, %a15, %d15, 0
.LBE39:
.LBE38:
.LBB41:
.LBB42:
.LBB43:
.LBB44:
.LBB45:
.LBB46:
	.file 3 ".\\output\\inc/..\\..\\bsw\\NvM\\src\\Internal\\BlockData\\NvM_Prv_BlockDescriptor_Inl.h"
	.loc 3 206 0
	ge.u	%d2, %d15, 60
.LBE46:
.LBE45:
.LBE44:
.LBE43:
.LBE42:
.LBE41:
.LBB59:
.LBB40:
	.loc 2 273 0
	ld.bu	%d3, [%a15]0
.LVL2:
.LBE40:
.LBE59:
.LBB60:
.LBB57:
.LBB51:
.LBB49:
.LBB48:
.LBB47:
	.loc 3 206 0
	jnz	%d2, .L2
.LVL3:
	.loc 3 208 0
	movh.a	%a15, hi:NvM_Prv_BlockDescriptors_acst
.LVL4:
	mov.d	%d4, %a15
	addi	%d2, %d4, lo:NvM_Prv_BlockDescriptors_acst
	madd	%d4, %d2, %d15, 52
	mov.a	%a15, %d4
.LBE47:
.LBE48:
	.loc 2 185 0
	ld.bu	%d2, [%a15] 44
	jeq	%d2, 2, .L8
.LVL5:
.L2:
.LBE49:
.LBE51:
.LBB52:
.LBB53:
	.loc 2 202 0
	movh.a	%a15, hi:NvM_Prv_stBlock_au8
	lea	%a15, [%a15] lo:NvM_Prv_stBlock_au8
	addsc.a	%a15, %a15, %d15, 0
.LBE53:
.LBE52:
	.loc 2 246 0
	mov	%d2, 1
.LBB55:
.LBB54:
	.loc 2 202 0
	ld.bu	%d15, [%a15]0
.LVL6:
.LBE54:
.LBE55:
	.loc 2 246 0
	jz.t	%d15, 3, .L4
.LVL7:
.L3:
	.loc 2 248 0
	ld.bu	%d15, [%a5]0
	mov	%d2, 0
	or	%d15, %d15, 1
	st.b	[%a5]0, %d15
.LVL8:
.L4:
.LBE57:
.LBE60:
	.loc 1 411 0
	ret
.LVL9:
.L8:
.LBB61:
.LBB58:
.LBB56:
.LBB50:
	.loc 2 185 0
	ld.bu	%d2, [%a15] 11
	jlt.u	%d3, %d2, .L2
	j	.L3
.LBE50:
.LBE56:
.LBE58:
.LBE61:
.LFE113:
	.size	NvM_Prv_Write_CheckBlockData, .-NvM_Prv_Write_CheckBlockData
.section .text.NvM_Prv_Write_SetBlockData,"ax",@progbits
	.align 1
	.type	NvM_Prv_Write_SetBlockData, @function
NvM_Prv_Write_SetBlockData:
.LFB114:
	.loc 1 438 0
.LVL10:
	.loc 1 439 0
	ld.hu	%d15, [%a4] 2
.LVL11:
	.loc 1 440 0
	ld.bu	%d3, [%a4] 14
.LVL12:
.LBB62:
.LBB63:
	.loc 3 270 0
	lt.u	%d4, %d15, 60
.LBE63:
.LBE62:
	.loc 1 441 0
	ld.bu	%d6, [%a4] 15
.LVL13:
	.loc 1 443 0
	ld.w	%d7, [%a4] 8
.LVL14:
.LBB66:
.LBB64:
	.loc 3 270 0
	jnz	%d4, .L10
	.loc 3 269 0
	mov	%d4, 0
.LVL15:
.L11:
.LBE64:
.LBE66:
	mov	%d5, 1
	mov	%d2, -2
	.loc 1 443 0
	jeq	%d7, %d4, .L12
	nor	%d2, %d3, 0
	and	%d3, %d6
	extr	%d2, %d2, 0, 8
	extr	%d5, %d3, 0, 8
.L12:
.LVL16:
.LBB67:
.LBB68:
	.loc 2 438 0
	movh.a	%a15, hi:NvM_Prv_stBlock_au8
	lea	%a15, [%a15] lo:NvM_Prv_stBlock_au8
	addsc.a	%a15, %a15, %d15, 0
	ld.bu	%d3, [%a15]0
	and	%d2, %d3
	or	%d5, %d2
	st.b	[%a15]0, %d5
.LBE68:
.LBE67:
.LBB69:
.LBB70:
	.loc 2 383 0
	movh.a	%a15, hi:NvM_Prv_stRequestResult_au8
	lea	%a15, [%a15] lo:NvM_Prv_stRequestResult_au8
.LBE70:
.LBE69:
	.loc 1 453 0
	ld.bu	%d2, [%a4] 12
.LVL17:
.LBB72:
.LBB71:
	.loc 2 383 0
	addsc.a	%a15, %a15, %d15, 0
	st.b	[%a15]0, %d2
.LVL18:
.LBE71:
.LBE72:
.LBB73:
.LBB74:
	.loc 2 400 0
	movh.a	%a15, hi:NvM_Prv_stRequests_au16
	lea	%a15, [%a15] lo:NvM_Prv_stRequests_au16
	addsc.a	%a15, %a15, %d15, 1
	ld.hu	%d2, [%a4] 4
.LVL19:
	ld.h	%d15, [%a15]0
.LVL20:
	insert	%d15, %d15, 1, %d2, 1
	st.h	[%a15]0, %d15
.LVL21:
	ret
.LVL22:
.L10:
.LBE74:
.LBE73:
.LBB75:
.LBB65:
	.loc 3 271 0
	movh.a	%a15, hi:NvM_Prv_BlockDescriptors_acst
	mov.d	%d4, %a15
	addi	%d2, %d4, lo:NvM_Prv_BlockDescriptors_acst
	madd	%d4, %d2, %d15, 52
	mov.a	%a15, %d4
	.loc 3 269 0
	mov	%d4, 0
	.loc 3 271 0
	ld.a	%a15, [%a15] 16
	.loc 3 270 0
	jz.a	%a15, .L11
	.loc 3 273 0
	ld.w	%d4, [%a15]0
.LVL23:
	j	.L11
.LBE65:
.LBE75:
.LFE114:
	.size	NvM_Prv_Write_SetBlockData, .-NvM_Prv_Write_SetBlockData
.section .text.NvM_Prv_Write_CheckParameter,"ax",@progbits
	.align 1
	.type	NvM_Prv_Write_CheckParameter, @function
NvM_Prv_Write_CheckParameter:
.LFB112:
	.loc 1 352 0
.LVL24:
	.loc 1 359 0
	ld.bu	%d4, [%a4]0
	ld.hu	%d5, [%a4] 2
	ld.a	%a4, [%a4] 8
.LVL25:
	j	NvM_Prv_ErrorDetection_IsRamBlockAddressValid
.LVL26:
.LFE112:
	.size	NvM_Prv_Write_CheckParameter, .-NvM_Prv_Write_CheckParameter
.section .text.NvM_WriteBlock,"ax",@progbits
	.align 1
	.global	NvM_WriteBlock
	.type	NvM_WriteBlock, @function
NvM_WriteBlock:
.LFB109:
	.loc 1 101 0
.LVL27:
	sub.a	%SP, 32
.LCFI0:
.LBB80:
.LBB81:
	.loc 1 282 0
	mov	%d15, 7
	st.b	[%SP] 16, %d15
	.loc 1 283 0
	mov	%d15, 9
	st.h	[%SP] 20, %d15
	.loc 1 284 0
	mov	%d15, 2
	st.b	[%SP] 28, %d15
	.loc 1 285 0
	mov	%d15, 0
	.loc 1 280 0
	st.h	[%SP] 18, %d4
	.loc 1 281 0
	st.a	[%SP] 24, %a4
	.loc 1 285 0
	st.b	[%SP] 29, %d15
	.loc 1 286 0
	st.b	[%SP] 30, %d15
	.loc 1 287 0
	st.b	[%SP] 31, %d15
	.loc 1 290 0
	jz.a	%a4, .L23
.L18:
.LVL28:
	.loc 1 307 0
	mov	%d15, 1
	st.b	[%SP]0, %d15
	.loc 1 308 0
	movh	%d15, hi:NvM_Prv_Write_CheckParameter
	addi	%d15, %d15, lo:NvM_Prv_Write_CheckParameter
	st.w	[%SP] 4, %d15
	.loc 1 309 0
	movh	%d15, hi:NvM_Prv_Write_CheckBlockData
	addi	%d15, %d15, lo:NvM_Prv_Write_CheckBlockData
	st.w	[%SP] 8, %d15
	.loc 1 310 0
	movh	%d15, hi:NvM_Prv_Write_SetBlockData
	addi	%d15, %d15, lo:NvM_Prv_Write_SetBlockData
	.loc 1 318 0
	mov	%d4, 1
.LVL29:
	lea	%a4, [%SP] 16
.LVL30:
	mov.aa	%a5, %SP
	.loc 1 310 0
	st.w	[%SP] 12, %d15
.LBE81:
.LBE80:
	.loc 1 110 0
	j	NvM_Prv_Service_Initiate
.LVL31:
.L23:
.LBB85:
.LBB84:
.LBB82:
.LBB83:
	.loc 3 270 0
	ge.u	%d15, %d4, 60
	.loc 3 269 0
	mov	%d2, 0
	.loc 3 270 0
	jnz	%d15, .L19
	.loc 3 271 0
	movh.a	%a15, hi:NvM_Prv_BlockDescriptors_acst
	mov.d	%d3, %a15
	addi	%d15, %d3, lo:NvM_Prv_BlockDescriptors_acst
	madd	%d3, %d15, %d4, 52
	mov.a	%a15, %d3
	ld.a	%a15, [%a15] 16
	.loc 3 270 0
	jz.a	%a15, .L19
	.loc 3 273 0
	ld.w	%d2, [%a15]0
.LVL32:
.L19:
.LBE83:
.LBE82:
	.loc 1 293 0
	st.w	[%SP] 24, %d2
	j	.L18
.LBE84:
.LBE85:
.LFE109:
	.size	NvM_WriteBlock, .-NvM_WriteBlock
.section .text.NvM_WritePRAMBlock,"ax",@progbits
	.align 1
	.global	NvM_WritePRAMBlock
	.type	NvM_WritePRAMBlock, @function
NvM_WritePRAMBlock:
.LFB110:
	.loc 1 191 0
.LVL33:
	sub.a	%SP, 32
.LCFI1:
.LBB90:
.LBB91:
	.loc 1 282 0
	mov	%d2, 23
	st.b	[%SP] 16, %d2
	.loc 1 283 0
	mov	%d2, 9
	.loc 1 281 0
	mov	%d15, 0
	.loc 1 283 0
	st.h	[%SP] 20, %d2
	.loc 1 284 0
	mov	%d2, 2
	.loc 1 281 0
	st.w	[%SP] 24, %d15
	.loc 1 284 0
	st.b	[%SP] 28, %d2
	.loc 1 285 0
	st.b	[%SP] 29, %d15
	.loc 1 286 0
	st.b	[%SP] 30, %d15
	.loc 1 287 0
	st.b	[%SP] 31, %d15
.LVL34:
	.loc 1 280 0
	st.h	[%SP] 18, %d4
.LBB92:
.LBB93:
	.loc 3 270 0
	ge.u	%d15, %d4, 60
	.loc 3 269 0
	mov	%d2, 0
	.loc 3 270 0
	jnz	%d15, .L25
	.loc 3 271 0
	movh.a	%a15, hi:NvM_Prv_BlockDescriptors_acst
	mov.d	%d3, %a15
	addi	%d15, %d3, lo:NvM_Prv_BlockDescriptors_acst
	madd	%d3, %d15, %d4, 52
	mov.a	%a15, %d3
	ld.a	%a15, [%a15] 16
	.loc 3 270 0
	jz.a	%a15, .L25
	.loc 3 273 0
	ld.w	%d2, [%a15]0
.LVL35:
.L25:
.LBE93:
.LBE92:
	.loc 1 307 0
	mov	%d15, 1
	st.b	[%SP]0, %d15
	.loc 1 308 0
	movh	%d15, hi:NvM_Prv_Write_CheckParameter
	addi	%d15, %d15, lo:NvM_Prv_Write_CheckParameter
	st.w	[%SP] 4, %d15
	.loc 1 309 0
	movh	%d15, hi:NvM_Prv_Write_CheckBlockData
	addi	%d15, %d15, lo:NvM_Prv_Write_CheckBlockData
	st.w	[%SP] 8, %d15
	.loc 1 310 0
	movh	%d15, hi:NvM_Prv_Write_SetBlockData
	addi	%d15, %d15, lo:NvM_Prv_Write_SetBlockData
	.loc 1 318 0
	mov	%d4, 1
.LVL36:
	lea	%a4, [%SP] 16
	mov.aa	%a5, %SP
	.loc 1 293 0
	st.w	[%SP] 24, %d2
.LVL37:
	.loc 1 310 0
	st.w	[%SP] 12, %d15
.LBE91:
.LBE90:
	.loc 1 203 0
	j	NvM_Prv_Service_Initiate
.LVL38:
.LFE110:
	.size	NvM_WritePRAMBlock, .-NvM_WritePRAMBlock
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
	.uaword	0x1720
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\NvM\\src\\SingleBlockRequests\\Asynchronous\\NvM_WriteBlock.c"
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
	.uaword	0x1e8
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
	.uaword	0x214
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
	.uaword	0x250
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
	.uaword	0x1e8
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
	.uaword	0x1db
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x4
	.byte	0x4
	.uleb128 0x5
	.byte	0x4
	.uaword	0x1db
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2ed
	.uleb128 0x6
	.uaword	0x206
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2f8
	.uleb128 0x7
	.uleb128 0x8
	.string	"NvM_BlockIdType"
	.byte	0x6
	.uahalf	0x1ca
	.uaword	0x206
	.uleb128 0x8
	.string	"NvM_Rb_ConstVoidPtr"
	.byte	0x6
	.uahalf	0x1cc
	.uaword	0x2f2
	.uleb128 0x8
	.string	"NvM_RequestResultType"
	.byte	0x6
	.uahalf	0x1d4
	.uaword	0x1db
	.uleb128 0x5
	.byte	0x4
	.uaword	0x351
	.uleb128 0x9
	.byte	0x1
	.uaword	0x2bd
	.uleb128 0x5
	.byte	0x4
	.uaword	0x35d
	.uleb128 0xa
	.byte	0x1
	.uaword	0x2bd
	.uaword	0x36d
	.uleb128 0xb
	.uaword	0x1db
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.byte	0x7
	.byte	0xa2
	.uaword	0x3b3
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
	.uaword	0x36d
	.uleb128 0xe
	.byte	0x1
	.byte	0x7
	.uahalf	0x13e
	.uaword	0x62e
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
	.uaword	0x206
	.uleb128 0x8
	.string	"NvM_Prv_idService_tuo"
	.byte	0x7
	.uahalf	0x14c
	.uaword	0x1db
	.uleb128 0xe
	.byte	0x1
	.byte	0x7
	.uahalf	0x159
	.uaword	0x6c9
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
	.uaword	0x1db
	.uleb128 0xf
	.byte	0x4
	.byte	0x7
	.uahalf	0x180
	.uaword	0x71e
	.uleb128 0x10
	.string	"ptrRamBlock_pv"
	.byte	0x7
	.uahalf	0x182
	.uaword	0x2df
	.uleb128 0x10
	.string	"ptrRamBlock_pu8"
	.byte	0x7
	.uahalf	0x183
	.uaword	0x2e1
	.byte	0
	.uleb128 0x8
	.string	"NvM_Prv_ptrRamBlock_tun"
	.byte	0x7
	.uahalf	0x185
	.uaword	0x6e5
	.uleb128 0x11
	.byte	0xc
	.byte	0x7
	.uahalf	0x191
	.uaword	0x78d
	.uleb128 0x12
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x194
	.uaword	0x64d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF1
	.byte	0x7
	.uahalf	0x197
	.uaword	0x2f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x12
	.uaword	.LASF2
	.byte	0x7
	.uahalf	0x19a
	.uaword	0x62e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.string	"BlockData_un"
	.byte	0x7
	.uahalf	0x19e
	.uaword	0x71e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x8
	.string	"NvM_Prv_QueueEntry_tst"
	.byte	0x7
	.uahalf	0x1a0
	.uaword	0x73e
	.uleb128 0x5
	.byte	0x4
	.uaword	0x7b2
	.uleb128 0xa
	.byte	0x1
	.uaword	0x2bd
	.uaword	0x7c2
	.uleb128 0xb
	.uaword	0x2df
	.byte	0
	.uleb128 0x14
	.byte	0xc
	.byte	0x8
	.byte	0x77
	.uaword	0x836
	.uleb128 0x15
	.string	"MultiBlockCallback_pfct"
	.byte	0x8
	.byte	0x7f
	.uaword	0x847
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"RbMultiBlockStartCallback_pfct"
	.byte	0x8
	.byte	0x84
	.uaword	0x859
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.string	"ObserverCallback_pfct"
	.byte	0x8
	.byte	0x8a
	.uaword	0x879
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.uaword	0x847
	.uleb128 0xb
	.uaword	0x1db
	.uleb128 0xb
	.uaword	0x32d
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x836
	.uleb128 0x16
	.byte	0x1
	.uaword	0x859
	.uleb128 0xb
	.uaword	0x1db
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x84d
	.uleb128 0xa
	.byte	0x1
	.uaword	0x2bd
	.uaword	0x879
	.uleb128 0xb
	.uaword	0x2f9
	.uleb128 0xb
	.uaword	0x1db
	.uleb128 0xb
	.uaword	0x32d
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x85f
	.uleb128 0x3
	.string	"NvM_Prv_Common_tst"
	.byte	0x8
	.byte	0x8d
	.uaword	0x7c2
	.uleb128 0x14
	.byte	0x34
	.byte	0x8
	.byte	0x95
	.uaword	0xa71
	.uleb128 0x15
	.string	"idBlockMemIf_u16"
	.byte	0x8
	.byte	0x9b
	.uaword	0x206
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"nrBlockBytes_pu16"
	.byte	0x8
	.byte	0xa9
	.uaword	0x2e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.string	"nrBlockBytesStored_u16"
	.byte	0x8
	.byte	0xb5
	.uaword	0x206
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x15
	.string	"idxDevice_u8"
	.byte	0x8
	.byte	0xbb
	.uaword	0x1db
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x17
	.uaword	.LASF3
	.byte	0x8
	.byte	0xc0
	.uaword	0x1db
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0x15
	.string	"nrRomBlocks_u8"
	.byte	0x8
	.byte	0xc5
	.uaword	0x1db
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x15
	.string	"adrRamBlock_ppv"
	.byte	0x8
	.byte	0xd6
	.uaword	0xa71
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x15
	.string	"adrRomBlock_pcv"
	.byte	0x8
	.byte	0xde
	.uaword	0x2f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x15
	.string	"SingleBlockCallback_pfct"
	.byte	0x8
	.byte	0xe8
	.uaword	0xa91
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x15
	.string	"SingleBlockStartCallback_pfct"
	.byte	0x8
	.byte	0xf0
	.uaword	0x357
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x15
	.string	"InitBlockCallback_pfct"
	.byte	0x8
	.byte	0xf9
	.uaword	0x34b
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x13
	.string	"ReadRamBlockFromNvm_pfct"
	.byte	0x8
	.uahalf	0x102
	.uaword	0x7ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x13
	.string	"WriteRamBlockToNvm_pfct"
	.byte	0x8
	.uahalf	0x10b
	.uaword	0x7ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x13
	.string	"BlockManagementType_en"
	.byte	0x8
	.uahalf	0x110
	.uaword	0x3b3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x13
	.string	"JobPriority_u8"
	.byte	0x8
	.uahalf	0x115
	.uaword	0x1db
	.byte	0x2
	.byte	0x23
	.uleb128 0x2d
	.uleb128 0x13
	.string	"stFlags_uo"
	.byte	0x8
	.uahalf	0x13e
	.uaword	0x242
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0xa77
	.uleb128 0x6
	.uaword	0x2df
	.uleb128 0xa
	.byte	0x1
	.uaword	0x2bd
	.uaword	0xa91
	.uleb128 0xb
	.uaword	0x1db
	.uleb128 0xb
	.uaword	0x32d
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0xa7c
	.uleb128 0x8
	.string	"NvM_Prv_BlockDescriptor_tst"
	.byte	0x8
	.uahalf	0x153
	.uaword	0x899
	.uleb128 0x11
	.byte	0x4
	.byte	0x8
	.uahalf	0x158
	.uaword	0xaf8
	.uleb128 0x13
	.string	"PersistentId_u16"
	.byte	0x8
	.uahalf	0x15a
	.uaword	0x206
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.string	"BlockId_u16"
	.byte	0x8
	.uahalf	0x15b
	.uaword	0x2f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x8
	.string	"NvM_Prv_PersId_BlockId_tst"
	.byte	0x8
	.uahalf	0x15c
	.uaword	0xabb
	.uleb128 0x3
	.string	"NvM_Prv_BlockErrors_tuo"
	.byte	0x9
	.byte	0x3f
	.uaword	0x1db
	.uleb128 0x14
	.byte	0x10
	.byte	0xa
	.byte	0x1a
	.uaword	0xb93
	.uleb128 0x15
	.string	"QueueEntry_st"
	.byte	0xa
	.byte	0x1c
	.uaword	0x78d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x17
	.uaword	.LASF4
	.byte	0xa
	.byte	0x1f
	.uaword	0x32d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x17
	.uaword	.LASF5
	.byte	0xa
	.byte	0x21
	.uaword	0x1db
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0x17
	.uaword	.LASF6
	.byte	0xa
	.byte	0x24
	.uaword	0x1db
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x17
	.uaword	.LASF7
	.byte	0xa
	.byte	0x25
	.uaword	0x1db
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.byte	0
	.uleb128 0x3
	.string	"NvM_Prv_BlockData_tst"
	.byte	0xa
	.byte	0x27
	.uaword	0xb3a
	.uleb128 0x3
	.string	"NvM_Prv_Service_CheckParameter_tpfct"
	.byte	0xa
	.byte	0x2f
	.uaword	0xbdc
	.uleb128 0x5
	.byte	0x4
	.uaword	0xbe2
	.uleb128 0xa
	.byte	0x1
	.uaword	0x28d
	.uaword	0xbf2
	.uleb128 0xb
	.uaword	0xbf2
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0xbf8
	.uleb128 0x6
	.uaword	0xb93
	.uleb128 0x3
	.string	"NvM_Prv_Service_CheckBlockData_tpfct"
	.byte	0xa
	.byte	0x36
	.uaword	0xc29
	.uleb128 0x5
	.byte	0x4
	.uaword	0xc2f
	.uleb128 0xa
	.byte	0x1
	.uaword	0x28d
	.uaword	0xc44
	.uleb128 0xb
	.uaword	0xbf2
	.uleb128 0xb
	.uaword	0xc44
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0xb1b
	.uleb128 0x3
	.string	"NvM_Prv_Service_SetBlockData_tpfct"
	.byte	0xa
	.byte	0x3e
	.uaword	0xc74
	.uleb128 0x5
	.byte	0x4
	.uaword	0xc7a
	.uleb128 0x16
	.byte	0x1
	.uaword	0xc86
	.uleb128 0xb
	.uaword	0xbf2
	.byte	0
	.uleb128 0x14
	.byte	0x10
	.byte	0xa
	.byte	0x43
	.uaword	0xd05
	.uleb128 0x15
	.string	"CheckPendingBlock_b"
	.byte	0xa
	.byte	0x4b
	.uaword	0x28d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CheckParameter_pfct"
	.byte	0xa
	.byte	0x52
	.uaword	0xbb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.string	"CheckBlockData_pfct"
	.byte	0xa
	.byte	0x59
	.uaword	0xbfd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x15
	.string	"SetBlockData_pfct"
	.byte	0xa
	.byte	0x5f
	.uaword	0xc4a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x3
	.string	"NvM_Prv_Service_Configuration_tst"
	.byte	0xa
	.byte	0x61
	.uaword	0xc86
	.uleb128 0x18
	.string	"NvM_Prv_GetBlockType"
	.byte	0x3
	.byte	0xcb
	.byte	0x1
	.uaword	0x3b3
	.byte	0x3
	.uaword	0xd6d
	.uleb128 0x19
	.uaword	.LASF1
	.byte	0x3
	.byte	0xcb
	.uaword	0x2f9
	.uleb128 0x1a
	.string	"BlockType"
	.byte	0x3
	.byte	0xcd
	.uaword	0x3b3
	.byte	0
	.uleb128 0x18
	.string	"NvM_Prv_GetNrNonVolatileBlocks"
	.byte	0x3
	.byte	0xdf
	.byte	0x1
	.uaword	0x1db
	.byte	0x3
	.uaword	0xdb0
	.uleb128 0x19
	.uaword	.LASF1
	.byte	0x3
	.byte	0xdf
	.uaword	0x2f9
	.uleb128 0x1b
	.uaword	.LASF3
	.byte	0x3
	.byte	0xe1
	.uaword	0x1db
	.byte	0
	.uleb128 0x18
	.string	"NvM_Prv_Block_IsInRom"
	.byte	0x2
	.byte	0xb7
	.byte	0x1
	.uaword	0x28d
	.byte	0x3
	.uaword	0xdea
	.uleb128 0x19
	.uaword	.LASF1
	.byte	0x2
	.byte	0xb7
	.uaword	0x2f9
	.uleb128 0x19
	.uaword	.LASF5
	.byte	0x2
	.byte	0xb7
	.uaword	0x1db
	.byte	0
	.uleb128 0x18
	.string	"NvM_Prv_Block_IsWriteProtected"
	.byte	0x2
	.byte	0xc8
	.byte	0x1
	.uaword	0x28d
	.byte	0x3
	.uaword	0xe22
	.uleb128 0x19
	.uaword	.LASF1
	.byte	0x2
	.byte	0xc8
	.uaword	0x2f9
	.byte	0
	.uleb128 0x1c
	.string	"NvM_Prv_Block_GetIdxDataset"
	.byte	0x2
	.uahalf	0x10f
	.byte	0x1
	.uaword	0x1db
	.byte	0x3
	.uaword	0xe59
	.uleb128 0x1d
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x10f
	.uaword	0x2f9
	.byte	0
	.uleb128 0x1c
	.string	"NvM_Prv_GetPRamBlockAddress"
	.byte	0x3
	.uahalf	0x10b
	.byte	0x1
	.uaword	0x2df
	.byte	0x3
	.uaword	0xeac
	.uleb128 0x1d
	.uaword	.LASF1
	.byte	0x3
	.uahalf	0x10b
	.uaword	0x2f9
	.uleb128 0x1e
	.string	"PRamBlockAddress_pv"
	.byte	0x3
	.uahalf	0x10d
	.uaword	0x2df
	.byte	0
	.uleb128 0x1f
	.string	"NvM_Prv_Block_SetState"
	.byte	0x2
	.uahalf	0x1b2
	.byte	0x1
	.byte	0x3
	.uaword	0xef2
	.uleb128 0x1d
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x1b2
	.uaword	0x2f9
	.uleb128 0x1d
	.uaword	.LASF6
	.byte	0x2
	.uahalf	0x1b3
	.uaword	0x1db
	.uleb128 0x1d
	.uaword	.LASF7
	.byte	0x2
	.uahalf	0x1b4
	.uaword	0x1db
	.byte	0
	.uleb128 0x1f
	.string	"NvM_Prv_Block_SetRequestResult"
	.byte	0x2
	.uahalf	0x17d
	.byte	0x1
	.byte	0x3
	.uaword	0xf34
	.uleb128 0x1d
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x17d
	.uaword	0x2f9
	.uleb128 0x1d
	.uaword	.LASF4
	.byte	0x2
	.uahalf	0x17d
	.uaword	0x32d
	.byte	0
	.uleb128 0x1f
	.string	"NvM_Prv_Block_SetRequest"
	.byte	0x2
	.uahalf	0x18e
	.byte	0x1
	.byte	0x3
	.uaword	0xf70
	.uleb128 0x1d
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x18e
	.uaword	0x2f9
	.uleb128 0x1d
	.uaword	.LASF2
	.byte	0x2
	.uahalf	0x18e
	.uaword	0x62e
	.byte	0
	.uleb128 0x18
	.string	"NvM_Prv_Block_IsWriteable"
	.byte	0x2
	.byte	0xef
	.byte	0x1
	.uaword	0x28d
	.byte	0x3
	.uaword	0x1011
	.uleb128 0x19
	.uaword	.LASF1
	.byte	0x2
	.byte	0xef
	.uaword	0x2f9
	.uleb128 0x19
	.uaword	.LASF5
	.byte	0x2
	.byte	0xf0
	.uaword	0x1db
	.uleb128 0x19
	.uaword	.LASF8
	.byte	0x2
	.byte	0xf1
	.uaword	0xc44
	.uleb128 0x1a
	.string	"IsBlockInRom_b"
	.byte	0x2
	.byte	0xf3
	.uaword	0x28d
	.uleb128 0x1a
	.string	"isWriteOnceBlockWriteable_b"
	.byte	0x2
	.byte	0xf4
	.uaword	0x28d
	.uleb128 0x1a
	.string	"isBlockWriteProtected_b"
	.byte	0x2
	.byte	0xf5
	.uaword	0x28d
	.byte	0
	.uleb128 0x20
	.string	"NvM_Prv_Write_CheckBlockData"
	.byte	0x1
	.uahalf	0x18b
	.byte	0x1
	.uaword	0x28d
	.uaword	.LFB113
	.uaword	.LFE113
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x112c
	.uleb128 0x21
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x18b
	.uaword	0xbf2
	.byte	0x1
	.byte	0x64
	.uleb128 0x21
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x18c
	.uaword	0xc44
	.byte	0x1
	.byte	0x65
	.uleb128 0x22
	.uaword	0xe22
	.uaword	.LBB38
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.uahalf	0x198
	.uaword	0x1081
	.uleb128 0x23
	.uaword	0xe4c
	.uaword	.LLST0
	.byte	0
	.uleb128 0x24
	.uaword	0xf70
	.uaword	.LBB41
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x1
	.uahalf	0x198
	.uleb128 0x25
	.uaword	0xfad
	.byte	0x1
	.byte	0x65
	.uleb128 0x23
	.uaword	0xfa2
	.uaword	.LLST1
	.uleb128 0x23
	.uaword	0xf97
	.uaword	.LLST2
	.uleb128 0x26
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0x27
	.uaword	0xfb8
	.uleb128 0x28
	.uaword	0xfce
	.uaword	.LLST3
	.uleb128 0x27
	.uaword	0xff1
	.uleb128 0x29
	.uaword	0xdb0
	.uaword	.LBB43
	.uaword	.Ldebug_ranges0+0x38
	.byte	0x2
	.byte	0xf3
	.uaword	0x1110
	.uleb128 0x23
	.uaword	0xdde
	.uaword	.LLST1
	.uleb128 0x23
	.uaword	0xdd3
	.uaword	.LLST2
	.uleb128 0x2a
	.uaword	0xd2e
	.uaword	.LBB45
	.uaword	.Ldebug_ranges0+0x58
	.byte	0x2
	.byte	0xb9
	.uleb128 0x23
	.uaword	0xd50
	.uaword	.LLST2
	.uleb128 0x26
	.uaword	.Ldebug_ranges0+0x58
	.uleb128 0x28
	.uaword	0xd5b
	.uaword	.LLST7
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uaword	0xdea
	.uaword	.LBB52
	.uaword	.Ldebug_ranges0+0x70
	.byte	0x2
	.byte	0xf5
	.uleb128 0x23
	.uaword	0xe16
	.uaword	.LLST8
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.string	"NvM_Prv_Write_SetBlockData"
	.byte	0x1
	.uahalf	0x1b5
	.byte	0x1
	.uaword	.LFB114
	.uaword	.LFE114
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x123a
	.uleb128 0x21
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x1b5
	.uaword	0xbf2
	.byte	0x1
	.byte	0x64
	.uleb128 0x2c
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x1b7
	.uaword	0x2f9
	.uaword	.LLST9
	.uleb128 0x2c
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x1b8
	.uaword	0x1db
	.uaword	.LLST10
	.uleb128 0x2c
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x1b9
	.uaword	0x1db
	.uaword	.LLST11
	.uleb128 0x22
	.uaword	0xe59
	.uaword	.LBB62
	.uaword	.Ldebug_ranges0+0x88
	.byte	0x1
	.uahalf	0x1bb
	.uaword	0x11c7
	.uleb128 0x23
	.uaword	0xe83
	.uaword	.LLST12
	.uleb128 0x26
	.uaword	.Ldebug_ranges0+0x88
	.uleb128 0x28
	.uaword	0xe8f
	.uaword	.LLST13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uaword	0xeac
	.uaword	.LBB67
	.uaword	.LBE67
	.byte	0x1
	.uahalf	0x1c2
	.uaword	0x11ef
	.uleb128 0x2e
	.uaword	0xee5
	.uleb128 0x2e
	.uaword	0xed9
	.uleb128 0x23
	.uaword	0xecd
	.uaword	.LLST14
	.byte	0
	.uleb128 0x22
	.uaword	0xef2
	.uaword	.LBB69
	.uaword	.Ldebug_ranges0+0xa8
	.byte	0x1
	.uahalf	0x1c5
	.uaword	0x1216
	.uleb128 0x23
	.uaword	0xf27
	.uaword	.LLST15
	.uleb128 0x23
	.uaword	0xf1b
	.uaword	.LLST16
	.byte	0
	.uleb128 0x2f
	.uaword	0xf34
	.uaword	.LBB73
	.uaword	.LBE73
	.byte	0x1
	.uahalf	0x1c6
	.uleb128 0x23
	.uaword	0xf63
	.uaword	.LLST17
	.uleb128 0x23
	.uaword	0xf57
	.uaword	.LLST18
	.byte	0
	.byte	0
	.uleb128 0x20
	.string	"NvM_Prv_Write_CheckParameter"
	.byte	0x1
	.uahalf	0x15f
	.byte	0x1
	.uaword	0x28d
	.uaword	.LFB112
	.uaword	.LFE112
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x128b
	.uleb128 0x30
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x15f
	.uaword	0xbf2
	.uaword	.LLST19
	.uleb128 0x31
	.uaword	.LVL26
	.byte	0x1
	.uaword	0x1695
	.byte	0
	.uleb128 0x1c
	.string	"NvM_Prv_WriteBlock"
	.byte	0x1
	.uahalf	0x105
	.byte	0x1
	.uaword	0x2bd
	.byte	0x1
	.uaword	0x1365
	.uleb128 0x1d
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x105
	.uaword	0x64d
	.uleb128 0x1d
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x106
	.uaword	0x2f9
	.uleb128 0x1d
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x107
	.uaword	0x311
	.uleb128 0x1e
	.string	"stReturn_uo"
	.byte	0x1
	.uahalf	0x109
	.uaword	0x2bd
	.uleb128 0x1e
	.string	"idQueue_uo"
	.byte	0x1
	.uahalf	0x10a
	.uaword	0x6c9
	.uleb128 0x1e
	.string	"ServiceConfiguration_st"
	.byte	0x1
	.uahalf	0x10b
	.uaword	0xd05
	.uleb128 0x1e
	.string	"BlockData_st"
	.byte	0x1
	.uahalf	0x10c
	.uaword	0xb93
	.uleb128 0xf
	.byte	0x4
	.byte	0x1
	.uahalf	0x110
	.uaword	0x134d
	.uleb128 0x10
	.string	"pcv"
	.byte	0x1
	.uahalf	0x112
	.uaword	0x2f2
	.uleb128 0x10
	.string	"pv"
	.byte	0x1
	.uahalf	0x113
	.uaword	0x2df
	.byte	0
	.uleb128 0x1e
	.string	"adrRamBlock_un"
	.byte	0x1
	.uahalf	0x114
	.uaword	0x132c
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.string	"NvM_WriteBlock"
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.uaword	0x2bd
	.uaword	.LFB109
	.uaword	.LFE109
	.uaword	.LLST20
	.byte	0x1
	.uaword	0x144a
	.uleb128 0x33
	.uaword	.LASF10
	.byte	0x1
	.byte	0x64
	.uaword	0x2f9
	.uaword	.LLST21
	.uleb128 0x33
	.uaword	.LASF11
	.byte	0x1
	.byte	0x64
	.uaword	0x311
	.uaword	.LLST22
	.uleb128 0x29
	.uaword	0x128b
	.uaword	.LBB80
	.uaword	.Ldebug_ranges0+0xc0
	.byte	0x1
	.byte	0x6c
	.uaword	0x142d
	.uleb128 0x23
	.uaword	0x12c4
	.uaword	.LLST22
	.uleb128 0x23
	.uaword	0x12b8
	.uaword	.LLST24
	.uleb128 0x34
	.uaword	0x12ac
	.byte	0x7
	.uleb128 0x26
	.uaword	.Ldebug_ranges0+0xc0
	.uleb128 0x35
	.uaword	0x12d0
	.byte	0x1
	.uleb128 0x28
	.uaword	0x12e4
	.uaword	.LLST25
	.uleb128 0x36
	.uaword	0x12f7
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x36
	.uaword	0x1317
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x27
	.uaword	0x134d
	.uleb128 0x2f
	.uaword	0xe59
	.uaword	.LBB82
	.uaword	.LBE82
	.byte	0x1
	.uahalf	0x125
	.uleb128 0x25
	.uaword	0xe83
	.byte	0x1
	.byte	0x54
	.uleb128 0x37
	.uaword	.LBB83
	.uaword	.LBE83
	.uleb128 0x28
	.uaword	0xe8f
	.uaword	.LLST26
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x38
	.uaword	.LVL31
	.byte	0x1
	.uaword	0x16e1
	.uleb128 0x39
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x39
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x39
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.string	"NvM_WritePRAMBlock"
	.byte	0x1
	.byte	0xbe
	.byte	0x1
	.uaword	0x2bd
	.uaword	.LFB110
	.uaword	.LFE110
	.uaword	.LLST27
	.byte	0x1
	.uaword	0x1524
	.uleb128 0x33
	.uaword	.LASF10
	.byte	0x1
	.byte	0xbe
	.uaword	0x2f9
	.uaword	.LLST28
	.uleb128 0x3a
	.uaword	0x128b
	.uaword	.LBB90
	.uaword	.LBE90
	.byte	0x1
	.byte	0xc9
	.uaword	0x1507
	.uleb128 0x34
	.uaword	0x12c4
	.byte	0
	.uleb128 0x23
	.uaword	0x12b8
	.uaword	.LLST29
	.uleb128 0x34
	.uaword	0x12ac
	.byte	0x17
	.uleb128 0x37
	.uaword	.LBB91
	.uaword	.LBE91
	.uleb128 0x35
	.uaword	0x12d0
	.byte	0x1
	.uleb128 0x35
	.uaword	0x12e4
	.byte	0x1
	.uleb128 0x36
	.uaword	0x12f7
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x36
	.uaword	0x1317
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x27
	.uaword	0x134d
	.uleb128 0x2f
	.uaword	0xe59
	.uaword	.LBB92
	.uaword	.LBE92
	.byte	0x1
	.uahalf	0x125
	.uleb128 0x23
	.uaword	0xe83
	.uaword	.LLST30
	.uleb128 0x37
	.uaword	.LBB93
	.uaword	.LBE93
	.uleb128 0x28
	.uaword	0xe8f
	.uaword	.LLST31
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x38
	.uaword	.LVL38
	.byte	0x1
	.uaword	0x16e1
	.uleb128 0x39
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x39
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x39
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x3b
	.string	"NvM_Prv_Common_cst"
	.byte	0x8
	.uahalf	0x16d
	.uaword	0x1541
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.uaword	0x87f
	.uleb128 0x3c
	.uaword	0xa97
	.uaword	0x1556
	.uleb128 0x3d
	.uaword	0x2d3
	.byte	0x3b
	.byte	0
	.uleb128 0x3b
	.string	"NvM_Prv_BlockDescriptors_acst"
	.byte	0x8
	.uahalf	0x172
	.uaword	0x157e
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.uaword	0x1546
	.uleb128 0x3c
	.uaword	0xaf8
	.uaword	0x1593
	.uleb128 0x3d
	.uaword	0x2d3
	.byte	0x39
	.byte	0
	.uleb128 0x3b
	.string	"NvM_Prv_PersId_BlockId_acst"
	.byte	0x8
	.uahalf	0x176
	.uaword	0x15b9
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.uaword	0x1583
	.uleb128 0x3c
	.uaword	0x1db
	.uaword	0x15ce
	.uleb128 0x3d
	.uaword	0x2d3
	.byte	0x3b
	.byte	0
	.uleb128 0x3e
	.string	"NvM_Prv_stBlock_au8"
	.byte	0x9
	.byte	0x54
	.uaword	0x15be
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.uaword	0x206
	.uaword	0x15fb
	.uleb128 0x3d
	.uaword	0x2d3
	.byte	0x3b
	.byte	0
	.uleb128 0x3e
	.string	"NvM_Prv_stRequests_au16"
	.byte	0x9
	.byte	0x6b
	.uaword	0x15eb
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.uaword	0x32d
	.uaword	0x162c
	.uleb128 0x3d
	.uaword	0x2d3
	.byte	0x3b
	.byte	0
	.uleb128 0x3e
	.string	"NvM_Prv_stRequestResult_au8"
	.byte	0x9
	.byte	0x74
	.uaword	0x161c
	.byte	0x1
	.byte	0x1
	.uleb128 0x3e
	.string	"NvM_Prv_idxDataSet_au8"
	.byte	0x9
	.byte	0x78
	.uaword	0x15be
	.byte	0x1
	.byte	0x1
	.uleb128 0x3e
	.string	"NvM_Prv_idConfigStored_u16"
	.byte	0x9
	.byte	0x81
	.uaword	0x206
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.byte	0x1
	.string	"NvM_Prv_ErrorDetection_IsRamBlockAddressValid"
	.byte	0xb
	.byte	0x61
	.byte	0x1
	.uaword	0x28d
	.byte	0x1
	.uaword	0x16e1
	.uleb128 0xb
	.uaword	0x64d
	.uleb128 0xb
	.uaword	0x2f9
	.uleb128 0xb
	.uaword	0x2f2
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.string	"NvM_Prv_Service_Initiate"
	.byte	0xa
	.byte	0xa9
	.byte	0x1
	.uaword	0x2bd
	.byte	0x1
	.uaword	0x1718
	.uleb128 0xb
	.uaword	0x6c9
	.uleb128 0xb
	.uaword	0xbf2
	.uleb128 0xb
	.uaword	0x1718
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x171e
	.uleb128 0x6
	.uaword	0xd05
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
	.uleb128 0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uleb128 0x39
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
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
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
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
	.uaword	.LVL8
	.uahalf	0x2
	.byte	0x84
	.sleb128 2
	.uaword	.LVL9
	.uaword	.LFE113
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL2
	.uaword	.LVL4
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL2
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL6
	.uaword	.LVL8
	.uahalf	0x2
	.byte	0x84
	.sleb128 2
	.uaword	.LVL9
	.uaword	.LFE113
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL5
	.uaword	.LVL9
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL6
	.uaword	.LVL8
	.uahalf	0x2
	.byte	0x84
	.sleb128 2
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL11
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL22
	.uaword	.LFE114
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL12
	.uaword	.LVL16
	.uahalf	0x2
	.byte	0x84
	.sleb128 14
	.uaword	.LVL22
	.uaword	.LFE114
	.uahalf	0x2
	.byte	0x84
	.sleb128 14
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL13
	.uaword	.LVL16
	.uahalf	0x2
	.byte	0x84
	.sleb128 15
	.uaword	.LVL22
	.uaword	.LFE114
	.uahalf	0x2
	.byte	0x84
	.sleb128 15
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL14
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL22
	.uaword	.LFE114
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL23
	.uaword	.LFE114
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL16
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x2
	.byte	0x84
	.sleb128 12
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL17
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL18
	.uaword	.LVL21
	.uahalf	0x2
	.byte	0x84
	.sleb128 4
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL18
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL25
	.uaword	.LFE112
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST20:
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
.LLST21:
	.uaword	.LVL27
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL29
	.uaword	.LVL31-1
	.uahalf	0x2
	.byte	0x91
	.sleb128 -14
	.uaword	.LVL31-1
	.uaword	.LVL31
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL31
	.uaword	.LFE109
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL27
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL31
	.uaword	.LFE109
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL27
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL31
	.uaword	.LFE109
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL28
	.uaword	.LVL31
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL31
	.uaword	.LVL32
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL32
	.uaword	.LFE109
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST27:
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
.LLST28:
	.uaword	.LVL33
	.uaword	.LVL36
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL36
	.uaword	.LVL38-1
	.uahalf	0x2
	.byte	0x91
	.sleb128 -14
	.uaword	.LVL38-1
	.uaword	.LFE110
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL33
	.uaword	.LVL36
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL34
	.uaword	.LVL36
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL34
	.uaword	.LVL35
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL35
	.uaword	.LVL38-1
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
	.uaword	.LBB38
	.uaword	.LBE38
	.uaword	.LBB59
	.uaword	.LBE59
	.uaword	0
	.uaword	0
	.uaword	.LBB41
	.uaword	.LBE41
	.uaword	.LBB60
	.uaword	.LBE60
	.uaword	.LBB61
	.uaword	.LBE61
	.uaword	0
	.uaword	0
	.uaword	.LBB43
	.uaword	.LBE43
	.uaword	.LBB51
	.uaword	.LBE51
	.uaword	.LBB56
	.uaword	.LBE56
	.uaword	0
	.uaword	0
	.uaword	.LBB45
	.uaword	.LBE45
	.uaword	.LBB48
	.uaword	.LBE48
	.uaword	0
	.uaword	0
	.uaword	.LBB52
	.uaword	.LBE52
	.uaword	.LBB55
	.uaword	.LBE55
	.uaword	0
	.uaword	0
	.uaword	.LBB62
	.uaword	.LBE62
	.uaword	.LBB66
	.uaword	.LBE66
	.uaword	.LBB75
	.uaword	.LBE75
	.uaword	0
	.uaword	0
	.uaword	.LBB69
	.uaword	.LBE69
	.uaword	.LBB72
	.uaword	.LBE72
	.uaword	0
	.uaword	0
	.uaword	.LBB80
	.uaword	.LBE80
	.uaword	.LBB85
	.uaword	.LBE85
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
	.string	"Errors_puo"
.LASF9:
	.string	"BlockData_pcst"
.LASF1:
	.string	"idBlock_uo"
.LASF11:
	.string	"NvM_SrcPtr"
.LASF10:
	.string	"BlockId"
	.extern	NvM_Prv_Service_Initiate,STT_FUNC,0
	.extern	NvM_Prv_ErrorDetection_IsRamBlockAddressValid,STT_FUNC,0
	.extern	NvM_Prv_stRequests_au16,STT_OBJECT,120
	.extern	NvM_Prv_stRequestResult_au8,STT_OBJECT,60
	.extern	NvM_Prv_stBlock_au8,STT_OBJECT,60
	.extern	NvM_Prv_BlockDescriptors_acst,STT_OBJECT,3120
	.extern	NvM_Prv_idxDataSet_au8,STT_OBJECT,60
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
