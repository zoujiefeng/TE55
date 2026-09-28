	.file	"NvM_ReadAll.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.NvM_Prv_ReadAll_IsBlockParticipating,"ax",@progbits
	.align 1
	.type	NvM_Prv_ReadAll_IsBlockParticipating, @function
NvM_Prv_ReadAll_IsBlockParticipating:
.LFB113:
	.file 1 "bsw\\NvM\\src\\MultiBlockRequests\\NvM_ReadAll.c"
	.loc 1 122 0
.LVL0:
.LBB22:
.LBB23:
	.file 2 ".\\output\\inc/..\\..\\bsw\\NvM\\src\\Internal\\BlockData\\NvM_Prv_BlockDescriptor_Inl.h"
	.loc 2 77 0
	ge.u	%d15, %d4, 60
	mov	%d2, 0
	jnz	%d15, .L2
	.loc 2 78 0
	movh.a	%a15, hi:NvM_Prv_BlockDescriptors_acst
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:NvM_Prv_BlockDescriptors_acst
	madd	%d2, %d15, %d4, 52
	mov.a	%a15, %d2
	.loc 2 77 0
	ld.w	%d2, [%a15] 48
	and	%d2, %d2, 1
.L2:
.LBE23:
.LBE22:
	.loc 1 130 0
	ret
.LFE113:
	.size	NvM_Prv_ReadAll_IsBlockParticipating, .-NvM_Prv_ReadAll_IsBlockParticipating
.section .text.NvM_Prv_ReadAll_UpdateBlockData,"ax",@progbits
	.align 1
	.type	NvM_Prv_ReadAll_UpdateBlockData, @function
NvM_Prv_ReadAll_UpdateBlockData:
.LFB112:
	.loc 1 103 0
.LVL1:
.LBB24:
.LBB25:
	.file 3 ".\\output\\inc/..\\..\\bsw\\NvM\\src\\Internal\\BlockData\\NvM_Prv_BlockData_Inl.h"
	.loc 3 383 0
	mov	%d15, 2
	movh.a	%a15, hi:NvM_Prv_stRequestResult_au8
	st.b	[%a15] lo:NvM_Prv_stRequestResult_au8, %d15
.LVL2:
.LBE25:
.LBE24:
.LBB26:
.LBB27:
	.loc 3 400 0
	movh.a	%a15, hi:NvM_Prv_stRequests_au16
	ld.h	%d15, [%a15] lo:NvM_Prv_stRequests_au16
.LBE27:
.LBE26:
	.loc 1 111 0
	movh.a	%a4, hi:NvM_Prv_ReadAll_IsBlockParticipating
.LBB30:
.LBB28:
	.loc 3 400 0
	or	%d15, %d15, 1
.LBE28:
.LBE30:
	.loc 1 111 0
	lea	%a4, [%a4] lo:NvM_Prv_ReadAll_IsBlockParticipating
.LBB31:
.LBB29:
	.loc 3 400 0
	st.h	[%a15] lo:NvM_Prv_stRequests_au16, %d15
.LBE29:
.LBE31:
	.loc 1 111 0
	j	NvM_Prv_Block_SetIsNvmEnqueuingForMulti
.LVL3:
.LFE112:
	.size	NvM_Prv_ReadAll_UpdateBlockData, .-NvM_Prv_ReadAll_UpdateBlockData
.section .text.NvM_Prv_ReadAll_Finalize,"ax",@progbits
	.align 1
	.type	NvM_Prv_ReadAll_Finalize, @function
NvM_Prv_ReadAll_Finalize:
.LFB115:
	.loc 1 175 0
.LVL4:
	movh	%d3, hi:NvM_Prv_BlockDescriptors_acst
.LBB47:
.LBB48:
.LBB49:
.LBB50:
	.loc 3 290 0
	movh.a	%a5, hi:NvM_Prv_stRequestResult_au8
.LBE50:
.LBE49:
.LBB53:
.LBB54:
	.loc 3 400 0
	movh.a	%a4, hi:NvM_Prv_stRequests_au16
.LBE54:
.LBE53:
.LBE48:
.LBE47:
	.loc 1 175 0
	mov	%d15, 2
	addi	%d3, %d3, lo:NvM_Prv_BlockDescriptors_acst
.LBB76:
.LBB74:
.LBB57:
.LBB51:
	.loc 3 290 0
	lea	%a5, [%a5] lo:NvM_Prv_stRequestResult_au8
.LBE51:
.LBE57:
.LBB58:
.LBB59:
	.loc 3 383 0
	mov	%d5, 4
.LBE59:
.LBE58:
.LBB61:
.LBB62:
	mov	%d4, 2
.LBE62:
.LBE61:
.LBB64:
.LBB55:
	.loc 3 400 0
	lea	%a4, [%a4] lo:NvM_Prv_stRequests_au16
	lea	%a15, 57
.LVL5:
.L10:
.LBE55:
.LBE64:
.LBB65:
.LBB66:
	.loc 2 159 0
	madd	%d2, %d3, %d15, 52
	mov.a	%a2, %d2
	ld.a	%a3, [%a2] 4
	.loc 2 158 0
	jz.a	%a3, .L7
.LVL6:
.LBE66:
.LBE65:
	.loc 1 145 0
	ld.hu	%d2, [%a3]0
	jz	%d2, .L7
.LVL7:
.LBB67:
.LBB68:
.LBB69:
	.loc 2 78 0
	ld.w	%d2, [%a2] 48
	.loc 2 77 0
	jz.t	%d2, 0, .L21
.LVL8:
.LBE69:
.LBE68:
.LBE67:
.LBB70:
.LBB63:
	.loc 3 383 0
	addsc.a	%a2, %a5, %d15, 0
	st.b	[%a2]0, %d4
.LVL9:
.LBE63:
.LBE70:
.LBB71:
.LBB56:
	.loc 3 400 0
	addsc.a	%a2, %a4, %d15, 1
	ld.h	%d2, [%a2]0
	or	%d2, %d2, 1
	st.h	[%a2]0, %d2
.LVL10:
.L7:
	add	%d15, 1
.LVL11:
.LBE56:
.LBE71:
	.loc 1 142 0
	loop	%a15, .L10
.LBE74:
.LBE76:
	.loc 1 177 0
	mov.a	%a4, 0
	call	NvM_Prv_Block_SetIsNvmEnqueuingForMulti
.LVL12:
	.loc 1 183 0
	mov	%d4, 12
	mov	%d5, 2
	j	BswM_NvM_CurrentJobMode
.LVL13:
.L21:
.LBB77:
.LBB75:
.LBB72:
.LBB52:
	.loc 3 290 0
	addsc.a	%a2, %a5, %d15, 0
.LBE52:
.LBE72:
	.loc 1 165 0
	ld.bu	%d2, [%a2]0
	jeq	%d2, 2, .L7
.LVL14:
.LBB73:
.LBB60:
	.loc 3 383 0
	st.b	[%a2]0, %d5
.LVL15:
	j	.L7
.LBE60:
.LBE73:
.LBE75:
.LBE77:
.LFE115:
	.size	NvM_Prv_ReadAll_Finalize, .-NvM_Prv_ReadAll_Finalize
.section .text.NvM_ReadAll,"ax",@progbits
	.align 1
	.global	NvM_ReadAll
	.type	NvM_ReadAll, @function
NvM_ReadAll:
.LFB111:
	.loc 1 81 0
	sub.a	%SP, 24
.LCFI0:
	.loc 1 89 0
	mov	%d15, 12
	st.b	[%SP] 12, %d15
	.loc 1 90 0
	mov	%d15, 2
	st.h	[%SP] 14, %d15
	.loc 1 91 0
	mov	%d15, 0
	st.h	[%SP] 16, %d15
	.loc 1 92 0
	mov	%d15, 0
	st.w	[%SP] 20, %d15
	.loc 1 95 0
	movh	%d15, hi:NvM_Prv_ReadAll_UpdateBlockData
	addi	%d15, %d15, lo:NvM_Prv_ReadAll_UpdateBlockData
	st.w	[%SP] 4, %d15
	.loc 1 96 0
	movh	%d15, hi:NvM_Prv_ReadAll_Finalize
	addi	%d15, %d15, lo:NvM_Prv_ReadAll_Finalize
	.loc 1 99 0
	mov	%d4, 0
	lea	%a4, [%SP] 12
	lea	%a5, [%SP] 4
	.loc 1 96 0
	st.w	[%SP] 8, %d15
	.loc 1 99 0
	j	NvM_Prv_Service_InitiateMulti
.LVL16:
.LFE111:
	.size	NvM_ReadAll, .-NvM_ReadAll
.section .text.NvM_Prv_IsSanitizedByReadAll,"ax",@progbits
	.align 1
	.global	NvM_Prv_IsSanitizedByReadAll
	.type	NvM_Prv_IsSanitizedByReadAll, @function
NvM_Prv_IsSanitizedByReadAll:
.LFB116:
	.loc 1 213 0
.LVL17:
	.loc 1 234 0
	mov	%d2, 1
	ret
.LFE116:
	.size	NvM_Prv_IsSanitizedByReadAll, .-NvM_Prv_IsSanitizedByReadAll
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
	.uaword	.LFB115
	.uaword	.LFE115-.LFB115
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB111
	.uaword	.LFE111-.LFB111
	.byte	0x4
	.uaword	.LCFI0-.LFB111
	.byte	0xe
	.uleb128 0x18
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB116
	.uaword	.LFE116-.LFB116
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
	.file 11 ".\\output\\inc/..\\..\\bsw\\BswM\\api\\BswM_NvM.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x15ef
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\NvM\\src\\MultiBlockRequests\\NvM_ReadAll.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0xb0
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
	.uaword	0x1d7
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
	.uaword	0x203
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
	.uaword	0x23f
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
	.uaword	0x1d7
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
	.uaword	0x1ca
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x4
	.byte	0x4
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2d6
	.uleb128 0x6
	.byte	0x1
	.uleb128 0x5
	.byte	0x4
	.uaword	0x1ca
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2e4
	.uleb128 0x7
	.uaword	0x1f5
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2ef
	.uleb128 0x8
	.uleb128 0x9
	.string	"NvM_BlockIdType"
	.byte	0x6
	.uahalf	0x1ca
	.uaword	0x1f5
	.uleb128 0x9
	.string	"NvM_RequestResultType"
	.byte	0x6
	.uahalf	0x1d4
	.uaword	0x1ca
	.uleb128 0x5
	.byte	0x4
	.uaword	0x32c
	.uleb128 0xa
	.byte	0x1
	.uaword	0x2ac
	.uleb128 0x5
	.byte	0x4
	.uaword	0x338
	.uleb128 0xb
	.byte	0x1
	.uaword	0x2ac
	.uaword	0x348
	.uleb128 0xc
	.uaword	0x1ca
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.byte	0x7
	.byte	0xa2
	.uaword	0x38e
	.uleb128 0xe
	.string	"NVM_BLOCK_NATIVE"
	.sleb128 0
	.uleb128 0xe
	.string	"NVM_BLOCK_REDUNDANT"
	.sleb128 1
	.uleb128 0xe
	.string	"NVM_BLOCK_DATASET"
	.sleb128 2
	.byte	0
	.uleb128 0x3
	.string	"NvM_BlockManagementType"
	.byte	0x7
	.byte	0xa6
	.uaword	0x348
	.uleb128 0xf
	.byte	0x1
	.byte	0x7
	.uahalf	0x13e
	.uaword	0x609
	.uleb128 0xe
	.string	"NvM_Prv_ServiceBit_ReadAll_e"
	.sleb128 0
	.uleb128 0xe
	.string	"NvM_Prv_ServiceBit_RemoveNonResistant_e"
	.sleb128 1
	.uleb128 0xe
	.string	"NvM_Prv_ServiceBit_WriteAll_e"
	.sleb128 2
	.uleb128 0xe
	.string	"NvM_Prv_ServiceBit_FirstInitAll_e"
	.sleb128 3
	.uleb128 0xe
	.string	"NvM_Prv_ServiceBit_Maintain_e"
	.sleb128 4
	.uleb128 0xe
	.string	"NvM_Prv_ServiceBit_InitAtLayoutChange_e"
	.sleb128 5
	.uleb128 0xe
	.string	"NvM_Prv_ServiceBit_ValidateAll_e"
	.sleb128 6
	.uleb128 0xe
	.string	"NvM_Prv_ServiceBit_NotUsed_0_e"
	.sleb128 7
	.uleb128 0xe
	.string	"NvM_Prv_ServiceBit_Read_e"
	.sleb128 8
	.uleb128 0xe
	.string	"NvM_Prv_ServiceBit_Write_e"
	.sleb128 9
	.uleb128 0xe
	.string	"NvM_Prv_ServiceBit_Invalidate_e"
	.sleb128 10
	.uleb128 0xe
	.string	"NvM_Prv_ServiceBit_Erase_e"
	.sleb128 11
	.uleb128 0xe
	.string	"NvM_Prv_ServiceBit_Restore_e"
	.sleb128 12
	.uleb128 0xe
	.string	"NvM_Prv_ServiceBit_NotUsed_1_e"
	.sleb128 13
	.uleb128 0xe
	.string	"NvM_Prv_ServiceBit_NotUsed_2_e"
	.sleb128 14
	.uleb128 0xe
	.string	"NvM_Prv_ServiceBit_NotUsed_3_e"
	.sleb128 15
	.uleb128 0xe
	.string	"NvM_Prv_ServiceBit_Unspecified_e"
	.sleb128 16
	.uleb128 0xe
	.string	"NvM_Prv_ServiceBit_nr_e"
	.sleb128 17
	.byte	0
	.uleb128 0x9
	.string	"NvM_Prv_ServiceBit_tuo"
	.byte	0x7
	.uahalf	0x147
	.uaword	0x1f5
	.uleb128 0x9
	.string	"NvM_Prv_idService_tuo"
	.byte	0x7
	.uahalf	0x14c
	.uaword	0x1ca
	.uleb128 0xf
	.byte	0x1
	.byte	0x7
	.uahalf	0x159
	.uaword	0x6a4
	.uleb128 0xe
	.string	"NvM_Prv_idQueue_Multi_e"
	.sleb128 0
	.uleb128 0xe
	.string	"NvM_Prv_idQueue_Standard_e"
	.sleb128 1
	.uleb128 0xe
	.string	"NvM_Prv_idQueue_nrQueues_e"
	.sleb128 2
	.byte	0
	.uleb128 0x9
	.string	"NvM_Prv_idQueue_tuo"
	.byte	0x7
	.uahalf	0x174
	.uaword	0x1ca
	.uleb128 0x10
	.byte	0x4
	.byte	0x7
	.uahalf	0x180
	.uaword	0x6f9
	.uleb128 0x11
	.string	"ptrRamBlock_pv"
	.byte	0x7
	.uahalf	0x182
	.uaword	0x2ce
	.uleb128 0x11
	.string	"ptrRamBlock_pu8"
	.byte	0x7
	.uahalf	0x183
	.uaword	0x2d8
	.byte	0
	.uleb128 0x9
	.string	"NvM_Prv_ptrRamBlock_tun"
	.byte	0x7
	.uahalf	0x185
	.uaword	0x6c0
	.uleb128 0x12
	.byte	0xc
	.byte	0x7
	.uahalf	0x191
	.uaword	0x771
	.uleb128 0x13
	.string	"idService_uo"
	.byte	0x7
	.uahalf	0x194
	.uaword	0x628
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x197
	.uaword	0x2f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x14
	.uaword	.LASF1
	.byte	0x7
	.uahalf	0x19a
	.uaword	0x609
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.string	"BlockData_un"
	.byte	0x7
	.uahalf	0x19e
	.uaword	0x6f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x9
	.string	"NvM_Prv_QueueEntry_tst"
	.byte	0x7
	.uahalf	0x1a0
	.uaword	0x719
	.uleb128 0x5
	.byte	0x4
	.uaword	0x796
	.uleb128 0xb
	.byte	0x1
	.uaword	0x2ac
	.uaword	0x7a6
	.uleb128 0xc
	.uaword	0x2ce
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.byte	0x8
	.byte	0x2d
	.uaword	0xa6b
	.uleb128 0xe
	.string	"NVM_PRV_BLOCK_FLAG_SELECT_FOR_READ_ALL"
	.sleb128 1
	.uleb128 0xe
	.string	"NVM_PRV_BLOCK_FLAG_SELECT_FOR_WRITE_ALL"
	.sleb128 2
	.uleb128 0xe
	.string	"NVM_PRV_BLOCK_FLAG_SELECT_FOR_FIRST_INIT_ALL"
	.sleb128 4
	.uleb128 0xe
	.string	"NVM_PRV_BLOCK_FLAG_SELECT_FOR_INIT_AT_LAYOUT_CHANGE"
	.sleb128 8
	.uleb128 0xe
	.string	"NVM_PRV_BLOCK_FLAG_WRITE_PROTECTED"
	.sleb128 16
	.uleb128 0xe
	.string	"NVM_PRV_BLOCK_FLAG_WRITE_ONCE"
	.sleb128 32
	.uleb128 0xe
	.string	"NVM_PRV_BLOCK_FLAG_RESISTANT_TO_CHANGED_SW"
	.sleb128 64
	.uleb128 0xe
	.string	"NVM_PRV_BLOCK_FLAG_USE_SYNC_MECHANISM"
	.sleb128 128
	.uleb128 0xe
	.string	"NVM_PRV_BLOCK_FLAG_USE_AUTO_VALIDATION"
	.sleb128 256
	.uleb128 0xe
	.string	"NVM_PRV_BLOCK_FLAG_USE_VARIABLE_BLOCK_LENGTH"
	.sleb128 512
	.uleb128 0xe
	.string	"NVM_PRV_BLOCK_FLAG_SELECT_FOR_MIGRATION"
	.sleb128 1024
	.uleb128 0xe
	.string	"NVM_PRV_BLOCK_FLAG_RAM_INIT_UNCONDITIONAL"
	.sleb128 2048
	.uleb128 0xe
	.string	"NVM_PRV_BLOCK_FLAG_USE_CRC_COMP_MECHANISM"
	.sleb128 4096
	.uleb128 0xe
	.string	"NVM_PRV_BLOCK_FLAG_USE_RAM_CRC"
	.sleb128 8192
	.uleb128 0xe
	.string	"NVM_PRV_BLOCK_FLAG_USE_NV_CRC"
	.sleb128 16384
	.uleb128 0xe
	.string	"NVM_PRV_BLOCK_FLAG_USE_CRYPTO"
	.sleb128 32768
	.uleb128 0xe
	.string	"NVM_PRV_BLOCK_FLAG_CNTR_WRITE"
	.sleb128 65536
	.byte	0
	.uleb128 0x3
	.string	"NvM_Prv_BlockConfiguration_ten"
	.byte	0x8
	.byte	0x71
	.uaword	0x7a6
	.uleb128 0x15
	.byte	0xc
	.byte	0x8
	.byte	0x77
	.uaword	0xb05
	.uleb128 0x16
	.string	"MultiBlockCallback_pfct"
	.byte	0x8
	.byte	0x7f
	.uaword	0xb16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x16
	.string	"RbMultiBlockStartCallback_pfct"
	.byte	0x8
	.byte	0x84
	.uaword	0xb28
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.string	"ObserverCallback_pfct"
	.byte	0x8
	.byte	0x8a
	.uaword	0xb48
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.uaword	0xb16
	.uleb128 0xc
	.uaword	0x1ca
	.uleb128 0xc
	.uaword	0x308
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0xb05
	.uleb128 0x17
	.byte	0x1
	.uaword	0xb28
	.uleb128 0xc
	.uaword	0x1ca
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0xb1c
	.uleb128 0xb
	.byte	0x1
	.uaword	0x2ac
	.uaword	0xb48
	.uleb128 0xc
	.uaword	0x2f0
	.uleb128 0xc
	.uaword	0x1ca
	.uleb128 0xc
	.uaword	0x308
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0xb2e
	.uleb128 0x3
	.string	"NvM_Prv_Common_tst"
	.byte	0x8
	.byte	0x8d
	.uaword	0xa91
	.uleb128 0x15
	.byte	0x34
	.byte	0x8
	.byte	0x95
	.uaword	0xd4a
	.uleb128 0x16
	.string	"idBlockMemIf_u16"
	.byte	0x8
	.byte	0x9b
	.uaword	0x1f5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x16
	.string	"nrBlockBytes_pu16"
	.byte	0x8
	.byte	0xa9
	.uaword	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.string	"nrBlockBytesStored_u16"
	.byte	0x8
	.byte	0xb5
	.uaword	0x1f5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.string	"idxDevice_u8"
	.byte	0x8
	.byte	0xbb
	.uaword	0x1ca
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x16
	.string	"nrNvBlocks_u8"
	.byte	0x8
	.byte	0xc0
	.uaword	0x1ca
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0x16
	.string	"nrRomBlocks_u8"
	.byte	0x8
	.byte	0xc5
	.uaword	0x1ca
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x16
	.string	"adrRamBlock_ppv"
	.byte	0x8
	.byte	0xd6
	.uaword	0xd4a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x16
	.string	"adrRomBlock_pcv"
	.byte	0x8
	.byte	0xde
	.uaword	0x2e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x16
	.string	"SingleBlockCallback_pfct"
	.byte	0x8
	.byte	0xe8
	.uaword	0xd6a
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x16
	.string	"SingleBlockStartCallback_pfct"
	.byte	0x8
	.byte	0xf0
	.uaword	0x332
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x16
	.string	"InitBlockCallback_pfct"
	.byte	0x8
	.byte	0xf9
	.uaword	0x326
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x13
	.string	"ReadRamBlockFromNvm_pfct"
	.byte	0x8
	.uahalf	0x102
	.uaword	0x790
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x13
	.string	"WriteRamBlockToNvm_pfct"
	.byte	0x8
	.uahalf	0x10b
	.uaword	0x790
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x13
	.string	"BlockManagementType_en"
	.byte	0x8
	.uahalf	0x110
	.uaword	0x38e
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x13
	.string	"JobPriority_u8"
	.byte	0x8
	.uahalf	0x115
	.uaword	0x1ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x2d
	.uleb128 0x13
	.string	"stFlags_uo"
	.byte	0x8
	.uahalf	0x13e
	.uaword	0x231
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0xd50
	.uleb128 0x7
	.uaword	0x2ce
	.uleb128 0xb
	.byte	0x1
	.uaword	0x2ac
	.uaword	0xd6a
	.uleb128 0xc
	.uaword	0x1ca
	.uleb128 0xc
	.uaword	0x308
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0xd55
	.uleb128 0x9
	.string	"NvM_Prv_BlockDescriptor_tst"
	.byte	0x8
	.uahalf	0x153
	.uaword	0xb68
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x158
	.uaword	0xdd1
	.uleb128 0x13
	.string	"PersistentId_u16"
	.byte	0x8
	.uahalf	0x15a
	.uaword	0x1f5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.string	"BlockId_u16"
	.byte	0x8
	.uahalf	0x15b
	.uaword	0x2f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x9
	.string	"NvM_Prv_PersId_BlockId_tst"
	.byte	0x8
	.uahalf	0x15c
	.uaword	0xd94
	.uleb128 0x3
	.string	"NvM_Prv_Block_IsNvmEnqueuingForMulti_tpfct"
	.byte	0x9
	.byte	0x3e
	.uaword	0xe26
	.uleb128 0x5
	.byte	0x4
	.uaword	0xe2c
	.uleb128 0xb
	.byte	0x1
	.uaword	0x27c
	.uaword	0xe3c
	.uleb128 0xc
	.uaword	0x2f0
	.byte	0
	.uleb128 0x3
	.string	"NvM_Prv_Service_UpdateBlockDataMulti_tpfct"
	.byte	0xa
	.byte	0x6a
	.uaword	0x2d0
	.uleb128 0x3
	.string	"NvM_Prv_Service_FinalizeMulti_tpfct"
	.byte	0xa
	.byte	0x71
	.uaword	0x2d0
	.uleb128 0x15
	.byte	0x8
	.byte	0xa
	.byte	0x76
	.uaword	0xee6
	.uleb128 0x16
	.string	"UpdateBlockDataForMulti_pfct"
	.byte	0xa
	.byte	0x84
	.uaword	0xe3c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x16
	.string	"FinalizeMulti_pfct"
	.byte	0xa
	.byte	0x91
	.uaword	0xe6e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"NvM_Prv_Service_ConfigurationMulti_tst"
	.byte	0xa
	.byte	0x93
	.uaword	0xe99
	.uleb128 0x18
	.string	"NvM_Prv_IsBlockSelected"
	.byte	0x2
	.byte	0x4a
	.byte	0x1
	.uaword	0x27c
	.byte	0x3
	.uaword	0xf5d
	.uleb128 0x19
	.uaword	.LASF0
	.byte	0x2
	.byte	0x4a
	.uaword	0x2f0
	.uleb128 0x1a
	.string	"SelectionMask_en"
	.byte	0x2
	.byte	0x4b
	.uaword	0xa6b
	.byte	0
	.uleb128 0x18
	.string	"NvM_Prv_GetBlockSize"
	.byte	0x2
	.byte	0x9a
	.byte	0x1
	.uaword	0x1f5
	.byte	0x3
	.uaword	0xfa0
	.uleb128 0x19
	.uaword	.LASF0
	.byte	0x2
	.byte	0x9a
	.uaword	0x2f0
	.uleb128 0x1b
	.string	"BlockSize_u16"
	.byte	0x2
	.byte	0x9c
	.uaword	0x1f5
	.byte	0
	.uleb128 0x18
	.string	"NvM_Prv_ReadAll_IsBlockParticipating"
	.byte	0x1
	.byte	0x79
	.byte	0x1
	.uaword	0x27c
	.byte	0x1
	.uaword	0xfde
	.uleb128 0x19
	.uaword	.LASF0
	.byte	0x1
	.byte	0x79
	.uaword	0x2f0
	.byte	0
	.uleb128 0x1c
	.string	"NvM_Prv_Block_SetRequestResult"
	.byte	0x3
	.uahalf	0x17d
	.byte	0x1
	.byte	0x3
	.uaword	0x1026
	.uleb128 0x1d
	.uaword	.LASF0
	.byte	0x3
	.uahalf	0x17d
	.uaword	0x2f0
	.uleb128 0x1e
	.string	"Result_uo"
	.byte	0x3
	.uahalf	0x17d
	.uaword	0x308
	.byte	0
	.uleb128 0x1c
	.string	"NvM_Prv_Block_SetRequest"
	.byte	0x3
	.uahalf	0x18e
	.byte	0x1
	.byte	0x3
	.uaword	0x1062
	.uleb128 0x1d
	.uaword	.LASF0
	.byte	0x3
	.uahalf	0x18e
	.uaword	0x2f0
	.uleb128 0x1d
	.uaword	.LASF1
	.byte	0x3
	.uahalf	0x18e
	.uaword	0x609
	.byte	0
	.uleb128 0x1f
	.string	"NvM_Prv_Block_GetRequestResult"
	.byte	0x3
	.uahalf	0x120
	.byte	0x1
	.uaword	0x308
	.byte	0x3
	.uaword	0x109c
	.uleb128 0x1d
	.uaword	.LASF0
	.byte	0x3
	.uahalf	0x120
	.uaword	0x2f0
	.byte	0
	.uleb128 0x20
	.uaword	0xfa0
	.uaword	.LFB113
	.uaword	.LFE113
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x10d6
	.uleb128 0x21
	.uaword	0xfd2
	.byte	0x1
	.byte	0x54
	.uleb128 0x22
	.uaword	0xf14
	.uaword	.LBB22
	.uaword	.LBE22
	.byte	0x1
	.byte	0x7c
	.uleb128 0x23
	.uaword	0xf44
	.byte	0x1
	.uleb128 0x21
	.uaword	0xf39
	.byte	0x1
	.byte	0x54
	.byte	0
	.byte	0
	.uleb128 0x24
	.string	"NvM_Prv_ReadAll_UpdateBlockData"
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.uaword	.LFB112
	.uaword	.LFE112
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x115f
	.uleb128 0x25
	.uaword	0xfde
	.uaword	.LBB24
	.uaword	.LBE24
	.byte	0x1
	.byte	0x6a
	.uaword	0x112a
	.uleb128 0x23
	.uaword	0x1013
	.byte	0x2
	.uleb128 0x23
	.uaword	0x1007
	.byte	0
	.byte	0
	.uleb128 0x26
	.uaword	0x1026
	.uaword	.LBB26
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x6d
	.uaword	0x114a
	.uleb128 0x23
	.uaword	0x1055
	.byte	0
	.uleb128 0x23
	.uaword	0x1049
	.byte	0
	.byte	0
	.uleb128 0x27
	.uaword	.LVL3
	.byte	0x1
	.uaword	0x153f
	.uleb128 0x28
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	NvM_Prv_ReadAll_IsBlockParticipating
	.byte	0
	.byte	0
	.uleb128 0x29
	.string	"NvM_Prv_ReadAll_FindBlocks"
	.byte	0x1
	.byte	0x84
	.byte	0x1
	.byte	0x1
	.uaword	0x118f
	.uleb128 0x2a
	.uaword	.LASF0
	.byte	0x1
	.byte	0x86
	.uaword	0x2f0
	.byte	0
	.uleb128 0x24
	.string	"NvM_Prv_ReadAll_Finalize"
	.byte	0x1
	.byte	0xae
	.byte	0x1
	.uaword	.LFB115
	.uaword	.LFE115
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x12fb
	.uleb128 0x26
	.uaword	0x115f
	.uaword	.LBB47
	.uaword	.Ldebug_ranges0+0x20
	.byte	0x1
	.byte	0xb0
	.uaword	0x12d2
	.uleb128 0x2b
	.uaword	.Ldebug_ranges0+0x20
	.uleb128 0x2c
	.uaword	0x1183
	.uaword	.LLST0
	.uleb128 0x26
	.uaword	0x1062
	.uaword	.LBB49
	.uaword	.Ldebug_ranges0+0x40
	.byte	0x1
	.byte	0xa5
	.uaword	0x11f8
	.uleb128 0x21
	.uaword	0x108f
	.byte	0x1
	.byte	0x5f
	.byte	0
	.uleb128 0x26
	.uaword	0x1026
	.uaword	.LBB53
	.uaword	.Ldebug_ranges0+0x60
	.byte	0x1
	.byte	0x9c
	.uaword	0x121e
	.uleb128 0x2d
	.uaword	0x1055
	.uaword	.LLST1
	.uleb128 0x2d
	.uaword	0x1049
	.uaword	.LLST2
	.byte	0
	.uleb128 0x26
	.uaword	0xfde
	.uaword	.LBB58
	.uaword	.Ldebug_ranges0+0x80
	.byte	0x1
	.byte	0xa7
	.uaword	0x123f
	.uleb128 0x23
	.uaword	0x1013
	.byte	0x4
	.uleb128 0x21
	.uaword	0x1007
	.byte	0x1
	.byte	0x5f
	.byte	0
	.uleb128 0x26
	.uaword	0xfde
	.uaword	.LBB61
	.uaword	.Ldebug_ranges0+0x98
	.byte	0x1
	.byte	0x99
	.uaword	0x1265
	.uleb128 0x2d
	.uaword	0x1013
	.uaword	.LLST3
	.uleb128 0x2d
	.uaword	0x1007
	.uaword	.LLST4
	.byte	0
	.uleb128 0x25
	.uaword	0xf5d
	.uaword	.LBB65
	.uaword	.LBE65
	.byte	0x1
	.byte	0x91
	.uaword	0x1295
	.uleb128 0x2d
	.uaword	0xf7f
	.uaword	.LLST5
	.uleb128 0x2e
	.uaword	.LBB66
	.uaword	.LBE66
	.uleb128 0x2c
	.uaword	0xf8a
	.uaword	.LLST6
	.byte	0
	.byte	0
	.uleb128 0x22
	.uaword	0xfa0
	.uaword	.LBB67
	.uaword	.LBE67
	.byte	0x1
	.byte	0x93
	.uleb128 0x2d
	.uaword	0xfd2
	.uaword	.LLST7
	.uleb128 0x22
	.uaword	0xf14
	.uaword	.LBB68
	.uaword	.LBE68
	.byte	0x1
	.byte	0x7c
	.uleb128 0x2d
	.uaword	0xf44
	.uaword	.LLST8
	.uleb128 0x2d
	.uaword	0xf39
	.uaword	.LLST7
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uaword	.LVL12
	.uaword	0x153f
	.uaword	0x12e5
	.uleb128 0x28
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x27
	.uaword	.LVL13
	.byte	0x1
	.uaword	0x1577
	.uleb128 0x28
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x32
	.uleb128 0x28
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.string	"NvM_ReadAll"
	.byte	0x1
	.byte	0x4e
	.byte	0x1
	.uaword	.LFB111
	.uaword	.LFE111
	.uaword	.LLST10
	.byte	0x1
	.uaword	0x136d
	.uleb128 0x31
	.string	"QueueEntry_st"
	.byte	0x1
	.byte	0x55
	.uaword	0x771
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x31
	.string	"Configuration_st"
	.byte	0x1
	.byte	0x56
	.uaword	0xee6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x27
	.uaword	.LVL16
	.byte	0x1
	.uaword	0x15a4
	.uleb128 0x28
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x28
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x28
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.string	"NvM_Prv_IsSanitizedByReadAll"
	.byte	0x1
	.byte	0xd4
	.byte	0x1
	.uaword	0x27c
	.uaword	.LFB116
	.uaword	.LFE116
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x13ce
	.uleb128 0x33
	.uaword	.LASF0
	.byte	0x1
	.byte	0xd4
	.uaword	0x2f0
	.byte	0x1
	.byte	0x54
	.uleb128 0x34
	.string	"isReadAllInitiated_b"
	.byte	0x1
	.byte	0xd8
	.uaword	0x27c
	.byte	0x1
	.byte	0
	.uleb128 0x35
	.string	"NvM_Prv_Common_cst"
	.byte	0x8
	.uahalf	0x16d
	.uaword	0x13eb
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.uaword	0xb4e
	.uleb128 0x36
	.uaword	0xd70
	.uaword	0x1400
	.uleb128 0x37
	.uaword	0x2c2
	.byte	0x3b
	.byte	0
	.uleb128 0x35
	.string	"NvM_Prv_BlockDescriptors_acst"
	.byte	0x8
	.uahalf	0x172
	.uaword	0x1428
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.uaword	0x13f0
	.uleb128 0x36
	.uaword	0xdd1
	.uaword	0x143d
	.uleb128 0x37
	.uaword	0x2c2
	.byte	0x39
	.byte	0
	.uleb128 0x35
	.string	"NvM_Prv_PersId_BlockId_acst"
	.byte	0x8
	.uahalf	0x176
	.uaword	0x1463
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.uaword	0x142d
	.uleb128 0x36
	.uaword	0x1ca
	.uaword	0x1478
	.uleb128 0x37
	.uaword	0x2c2
	.byte	0x3b
	.byte	0
	.uleb128 0x38
	.string	"NvM_Prv_stBlock_au8"
	.byte	0x9
	.byte	0x54
	.uaword	0x1468
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.uaword	0x1f5
	.uaword	0x14a5
	.uleb128 0x37
	.uaword	0x2c2
	.byte	0x3b
	.byte	0
	.uleb128 0x38
	.string	"NvM_Prv_stRequests_au16"
	.byte	0x9
	.byte	0x6b
	.uaword	0x1495
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.uaword	0x308
	.uaword	0x14d6
	.uleb128 0x37
	.uaword	0x2c2
	.byte	0x3b
	.byte	0
	.uleb128 0x38
	.string	"NvM_Prv_stRequestResult_au8"
	.byte	0x9
	.byte	0x74
	.uaword	0x14c6
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.string	"NvM_Prv_idxDataSet_au8"
	.byte	0x9
	.byte	0x78
	.uaword	0x1468
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.string	"NvM_Prv_idConfigStored_u16"
	.byte	0x9
	.byte	0x81
	.uaword	0x1f5
	.byte	0x1
	.byte	0x1
	.uleb128 0x39
	.byte	0x1
	.string	"NvM_Prv_Block_SetIsNvmEnqueuingForMulti"
	.byte	0x9
	.byte	0x92
	.byte	0x1
	.byte	0x1
	.uaword	0x1577
	.uleb128 0xc
	.uaword	0xdf4
	.byte	0
	.uleb128 0x39
	.byte	0x1
	.string	"BswM_NvM_CurrentJobMode"
	.byte	0xb
	.byte	0x21
	.byte	0x1
	.byte	0x1
	.uaword	0x15a4
	.uleb128 0xc
	.uaword	0x1ca
	.uleb128 0xc
	.uaword	0x308
	.byte	0
	.uleb128 0x39
	.byte	0x1
	.string	"NvM_Prv_Service_InitiateMulti"
	.byte	0xa
	.byte	0xad
	.byte	0x1
	.byte	0x1
	.uaword	0x15dc
	.uleb128 0xc
	.uaword	0x6a4
	.uleb128 0xc
	.uaword	0x15dc
	.uleb128 0xc
	.uaword	0x15e7
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x15e2
	.uleb128 0x7
	.uaword	0x771
	.uleb128 0x5
	.byte	0x4
	.uaword	0x15ed
	.uleb128 0x7
	.uaword	0xee6
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
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
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x30
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
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x34
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x3
	.byte	0x7f
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LVL13
	.uahalf	0x3
	.byte	0x7f
	.sleb128 0
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LFE115
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL8
	.uaword	.LVL10
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL8
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL5
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL11
	.uaword	.LVL13
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LFE115
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL9
	.uahalf	0x2
	.byte	0x83
	.sleb128 0
	.uaword	.LVL13
	.uaword	.LVL15
	.uahalf	0x2
	.byte	0x83
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL7
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL13
	.uaword	.LFE115
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL7
	.uaword	.LVL10
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LFE115
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LFB111
	.uaword	.LCFI0
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0
	.uaword	.LFE111
	.uahalf	0x2
	.byte	0x8a
	.sleb128 24
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
	.uaword	.LFB112
	.uaword	.LFE112-.LFB112
	.uaword	.LFB115
	.uaword	.LFE115-.LFB115
	.uaword	.LFB111
	.uaword	.LFE111-.LFB111
	.uaword	.LFB116
	.uaword	.LFE116-.LFB116
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB26
	.uaword	.LBE26
	.uaword	.LBB30
	.uaword	.LBE30
	.uaword	.LBB31
	.uaword	.LBE31
	.uaword	0
	.uaword	0
	.uaword	.LBB47
	.uaword	.LBE47
	.uaword	.LBB76
	.uaword	.LBE76
	.uaword	.LBB77
	.uaword	.LBE77
	.uaword	0
	.uaword	0
	.uaword	.LBB49
	.uaword	.LBE49
	.uaword	.LBB57
	.uaword	.LBE57
	.uaword	.LBB72
	.uaword	.LBE72
	.uaword	0
	.uaword	0
	.uaword	.LBB53
	.uaword	.LBE53
	.uaword	.LBB64
	.uaword	.LBE64
	.uaword	.LBB71
	.uaword	.LBE71
	.uaword	0
	.uaword	0
	.uaword	.LBB58
	.uaword	.LBE58
	.uaword	.LBB73
	.uaword	.LBE73
	.uaword	0
	.uaword	0
	.uaword	.LBB61
	.uaword	.LBE61
	.uaword	.LBB70
	.uaword	.LBE70
	.uaword	0
	.uaword	0
	.uaword	.LFB113
	.uaword	.LFE113
	.uaword	.LFB112
	.uaword	.LFE112
	.uaword	.LFB115
	.uaword	.LFE115
	.uaword	.LFB111
	.uaword	.LFE111
	.uaword	.LFB116
	.uaword	.LFE116
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"idBlock_uo"
.LASF1:
	.string	"ServiceBit_uo"
	.extern	NvM_Prv_Service_InitiateMulti,STT_FUNC,0
	.extern	BswM_NvM_CurrentJobMode,STT_FUNC,0
	.extern	NvM_Prv_Block_SetIsNvmEnqueuingForMulti,STT_FUNC,0
	.extern	NvM_Prv_stRequests_au16,STT_OBJECT,120
	.extern	NvM_Prv_stRequestResult_au8,STT_OBJECT,60
	.extern	NvM_Prv_BlockDescriptors_acst,STT_OBJECT,3120
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
