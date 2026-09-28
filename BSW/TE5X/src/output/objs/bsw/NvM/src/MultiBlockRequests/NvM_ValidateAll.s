	.file	"NvM_ValidateAll.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.NvM_Prv_ValidateAll_IsBlockParticipating,"ax",@progbits
	.align 1
	.type	NvM_Prv_ValidateAll_IsBlockParticipating, @function
NvM_Prv_ValidateAll_IsBlockParticipating:
.LFB113:
	.file 1 "bsw\\NvM\\src\\MultiBlockRequests\\NvM_ValidateAll.c"
	.loc 1 101 0
.LVL0:
.LBB22:
.LBB23:
	.file 2 ".\\output\\inc/..\\..\\bsw\\NvM\\src\\Internal\\BlockData\\NvM_Prv_BlockData_Inl.h"
	.loc 2 106 0
	movh.a	%a15, hi:NvM_Prv_stBlock_au8
	lea	%a15, [%a15] lo:NvM_Prv_stBlock_au8
	addsc.a	%a15, %a15, %d4, 0
.LBE23:
.LBE22:
.LBB25:
.LBB26:
	.file 3 ".\\output\\inc/..\\..\\bsw\\NvM\\src\\Internal\\BlockData\\NvM_Prv_BlockDescriptor_Inl.h"
	.loc 3 77 0
	ge.u	%d15, %d4, 60
.LBE26:
.LBE25:
.LBB28:
.LBB24:
	.loc 2 106 0
	ld.bu	%d3, [%a15]0
.LVL1:
.LBE24:
.LBE28:
.LBB29:
.LBB27:
	.loc 3 77 0
	mov	%d2, 0
	jnz	%d15, .L2
	.loc 3 78 0
	movh.a	%a15, hi:NvM_Prv_BlockDescriptors_acst
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:NvM_Prv_BlockDescriptors_acst
	madd	%d2, %d15, %d4, 52
	mov.a	%a15, %d2
	.loc 3 77 0
	ld.w	%d2, [%a15] 48
	and.t	%d2, %d2,8, %d3,0
.L2:
.LBE27:
.LBE29:
	.loc 1 110 0
	ret
.LFE113:
	.size	NvM_Prv_ValidateAll_IsBlockParticipating, .-NvM_Prv_ValidateAll_IsBlockParticipating
.section .text.NvM_Prv_ValidateAll_Finalize,"ax",@progbits
	.align 1
	.type	NvM_Prv_ValidateAll_Finalize, @function
NvM_Prv_ValidateAll_Finalize:
.LFB115:
	.loc 1 134 0
.LVL2:
	movh	%d3, hi:NvM_Prv_BlockDescriptors_acst
.LBB44:
.LBB45:
.LBB46:
.LBB47:
.LBB48:
.LBB49:
	.loc 2 106 0
	movh.a	%a6, hi:NvM_Prv_stBlock_au8
.LBE49:
.LBE48:
.LBE47:
.LBE46:
.LBB62:
.LBB63:
	.loc 2 383 0
	movh.a	%a5, hi:NvM_Prv_stRequestResult_au8
.LBE63:
.LBE62:
.LBB66:
.LBB67:
	.loc 2 400 0
	movh.a	%a4, hi:NvM_Prv_stRequests_au16
.LBE67:
.LBE66:
.LBE45:
.LBE44:
	.loc 1 134 0
	mov	%d15, 2
	addi	%d3, %d3, lo:NvM_Prv_BlockDescriptors_acst
.LBB79:
.LBB78:
.LBB70:
.LBB60:
.LBB53:
.LBB50:
	.loc 2 106 0
	lea	%a6, [%a6] lo:NvM_Prv_stBlock_au8
.LBE50:
.LBE53:
.LBE60:
.LBE70:
.LBB71:
.LBB64:
	.loc 2 383 0
	lea	%a5, [%a5] lo:NvM_Prv_stRequestResult_au8
	mov	%d4, 2
.LBE64:
.LBE71:
.LBB72:
.LBB68:
	.loc 2 400 0
	lea	%a4, [%a4] lo:NvM_Prv_stRequests_au16
	lea	%a15, 57
.LVL3:
.L8:
.LBE68:
.LBE72:
.LBB73:
.LBB74:
	.loc 3 159 0
	madd	%d2, %d3, %d15, 52
	mov.a	%a3, %d2
	ld.a	%a2, [%a3] 4
	.loc 3 158 0
	jz.a	%a2, .L6
.LVL4:
.LBE74:
.LBE73:
	.loc 1 120 0
	ld.hu	%d2, [%a2]0
	jz	%d2, .L6
.LVL5:
.LBB75:
.LBB61:
.LBB54:
.LBB51:
	.loc 2 106 0
	addsc.a	%a2, %a6, %d15, 0
.LVL6:
.LBE51:
.LBE54:
.LBB55:
.LBB56:
	.loc 3 78 0
	ld.w	%d5, [%a3] 48
.LBE56:
.LBE55:
.LBB58:
.LBB52:
	.loc 2 106 0
	ld.bu	%d2, [%a2]0
	and	%d2, %d2, 1
.LVL7:
.LBE52:
.LBE58:
.LBB59:
.LBB57:
	.loc 3 77 0
	jz.t	%d5, 8, .L6
.LBE57:
.LBE59:
	.loc 1 107 0
	jz	%d2, .L6
.LVL8:
.LBE61:
.LBE75:
.LBB76:
.LBB65:
	.loc 2 383 0
	addsc.a	%a2, %a5, %d15, 0
	st.b	[%a2]0, %d4
.LVL9:
.LBE65:
.LBE76:
.LBB77:
.LBB69:
	.loc 2 400 0
	addsc.a	%a2, %a4, %d15, 1
	ld.h	%d2, [%a2]0
	or	%d2, %d2, 64
	st.h	[%a2]0, %d2
.LVL10:
.L6:
	add	%d15, 1
.LVL11:
.LBE69:
.LBE77:
	.loc 1 117 0
	loop	%a15, .L8
.LBE78:
.LBE79:
	.loc 1 136 0
	mov.a	%a4, 0
	j	NvM_Prv_Block_SetIsNvmEnqueuingForMulti
.LVL12:
.LFE115:
	.size	NvM_Prv_ValidateAll_Finalize, .-NvM_Prv_ValidateAll_Finalize
.section .text.NvM_Prv_ValidateAll_UpdateBlockData,"ax",@progbits
	.align 1
	.type	NvM_Prv_ValidateAll_UpdateBlockData, @function
NvM_Prv_ValidateAll_UpdateBlockData:
.LFB112:
	.loc 1 87 0
.LVL13:
.LBB80:
.LBB81:
	.loc 2 383 0
	mov	%d15, 2
	movh.a	%a15, hi:NvM_Prv_stRequestResult_au8
	st.b	[%a15] lo:NvM_Prv_stRequestResult_au8, %d15
.LVL14:
.LBE81:
.LBE80:
.LBB82:
.LBB83:
	.loc 2 400 0
	movh.a	%a15, hi:NvM_Prv_stRequests_au16
	ld.h	%d15, [%a15] lo:NvM_Prv_stRequests_au16
.LBE83:
.LBE82:
	.loc 1 97 0
	movh.a	%a4, hi:NvM_Prv_ValidateAll_IsBlockParticipating
.LBB86:
.LBB84:
	.loc 2 400 0
	or	%d15, %d15, 64
.LBE84:
.LBE86:
	.loc 1 97 0
	lea	%a4, [%a4] lo:NvM_Prv_ValidateAll_IsBlockParticipating
.LBB87:
.LBB85:
	.loc 2 400 0
	st.h	[%a15] lo:NvM_Prv_stRequests_au16, %d15
.LBE85:
.LBE87:
	.loc 1 97 0
	j	NvM_Prv_Block_SetIsNvmEnqueuingForMulti
.LVL15:
.LFE112:
	.size	NvM_Prv_ValidateAll_UpdateBlockData, .-NvM_Prv_ValidateAll_UpdateBlockData
.section .text.NvM_ValidateAll,"ax",@progbits
	.align 1
	.global	NvM_ValidateAll
	.type	NvM_ValidateAll, @function
NvM_ValidateAll:
.LFB111:
	.loc 1 67 0
	sub.a	%SP, 24
.LCFI0:
	.loc 1 74 0
	mov	%d15, 25
	st.b	[%SP] 12, %d15
	.loc 1 75 0
	mov	%d15, 2
	st.h	[%SP] 14, %d15
	.loc 1 76 0
	mov	%d15, 6
	st.h	[%SP] 16, %d15
	.loc 1 77 0
	mov	%d15, 0
	st.w	[%SP] 20, %d15
	.loc 1 80 0
	movh	%d15, hi:NvM_Prv_ValidateAll_UpdateBlockData
	addi	%d15, %d15, lo:NvM_Prv_ValidateAll_UpdateBlockData
	st.w	[%SP] 4, %d15
	.loc 1 81 0
	movh	%d15, hi:NvM_Prv_ValidateAll_Finalize
	addi	%d15, %d15, lo:NvM_Prv_ValidateAll_Finalize
	.loc 1 83 0
	mov	%d4, 0
	lea	%a4, [%SP] 12
	lea	%a5, [%SP] 4
	.loc 1 81 0
	st.w	[%SP] 8, %d15
	.loc 1 83 0
	j	NvM_Prv_Service_InitiateMulti
.LVL16:
.LFE111:
	.size	NvM_ValidateAll, .-NvM_ValidateAll
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
	.uaword	.LFB115
	.uaword	.LFE115-.LFB115
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
	.uaword	.LFB111
	.uaword	.LFE111-.LFB111
	.byte	0x4
	.uaword	.LCFI0-.LFB111
	.byte	0xe
	.uleb128 0x18
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
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x1582
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\NvM\\src\\MultiBlockRequests\\NvM_ValidateAll.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x108
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
	.uaword	0x1db
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
	.uaword	0x207
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
	.uaword	0x243
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
	.uaword	0x1db
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
	.uaword	0x1ce
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x4
	.byte	0x4
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2da
	.uleb128 0x6
	.byte	0x1
	.uleb128 0x5
	.byte	0x4
	.uaword	0x1ce
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2e8
	.uleb128 0x7
	.uaword	0x1f9
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2f3
	.uleb128 0x8
	.uleb128 0x9
	.string	"NvM_BlockIdType"
	.byte	0x6
	.uahalf	0x1ca
	.uaword	0x1f9
	.uleb128 0x9
	.string	"NvM_RequestResultType"
	.byte	0x6
	.uahalf	0x1d4
	.uaword	0x1ce
	.uleb128 0x5
	.byte	0x4
	.uaword	0x330
	.uleb128 0xa
	.byte	0x1
	.uaword	0x2b0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x33c
	.uleb128 0xb
	.byte	0x1
	.uaword	0x2b0
	.uaword	0x34c
	.uleb128 0xc
	.uaword	0x1ce
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.byte	0x7
	.byte	0xa2
	.uaword	0x392
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
	.uaword	0x34c
	.uleb128 0xf
	.byte	0x1
	.byte	0x7
	.uahalf	0x13e
	.uaword	0x60d
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
	.uaword	0x1f9
	.uleb128 0x9
	.string	"NvM_Prv_idService_tuo"
	.byte	0x7
	.uahalf	0x14c
	.uaword	0x1ce
	.uleb128 0xf
	.byte	0x1
	.byte	0x7
	.uahalf	0x159
	.uaword	0x6a8
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
	.uaword	0x1ce
	.uleb128 0x10
	.byte	0x4
	.byte	0x7
	.uahalf	0x180
	.uaword	0x6fd
	.uleb128 0x11
	.string	"ptrRamBlock_pv"
	.byte	0x7
	.uahalf	0x182
	.uaword	0x2d2
	.uleb128 0x11
	.string	"ptrRamBlock_pu8"
	.byte	0x7
	.uahalf	0x183
	.uaword	0x2dc
	.byte	0
	.uleb128 0x9
	.string	"NvM_Prv_ptrRamBlock_tun"
	.byte	0x7
	.uahalf	0x185
	.uaword	0x6c4
	.uleb128 0x12
	.byte	0xc
	.byte	0x7
	.uahalf	0x191
	.uaword	0x775
	.uleb128 0x13
	.string	"idService_uo"
	.byte	0x7
	.uahalf	0x194
	.uaword	0x62c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x197
	.uaword	0x2f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x14
	.uaword	.LASF1
	.byte	0x7
	.uahalf	0x19a
	.uaword	0x60d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.string	"BlockData_un"
	.byte	0x7
	.uahalf	0x19e
	.uaword	0x6fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x9
	.string	"NvM_Prv_QueueEntry_tst"
	.byte	0x7
	.uahalf	0x1a0
	.uaword	0x71d
	.uleb128 0x5
	.byte	0x4
	.uaword	0x79a
	.uleb128 0xb
	.byte	0x1
	.uaword	0x2b0
	.uaword	0x7aa
	.uleb128 0xc
	.uaword	0x2d2
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.byte	0x8
	.byte	0x2d
	.uaword	0xa6f
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
	.uaword	0x7aa
	.uleb128 0x15
	.byte	0xc
	.byte	0x8
	.byte	0x77
	.uaword	0xb09
	.uleb128 0x16
	.string	"MultiBlockCallback_pfct"
	.byte	0x8
	.byte	0x7f
	.uaword	0xb1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x16
	.string	"RbMultiBlockStartCallback_pfct"
	.byte	0x8
	.byte	0x84
	.uaword	0xb2c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.string	"ObserverCallback_pfct"
	.byte	0x8
	.byte	0x8a
	.uaword	0xb4c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.uaword	0xb1a
	.uleb128 0xc
	.uaword	0x1ce
	.uleb128 0xc
	.uaword	0x30c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0xb09
	.uleb128 0x17
	.byte	0x1
	.uaword	0xb2c
	.uleb128 0xc
	.uaword	0x1ce
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0xb20
	.uleb128 0xb
	.byte	0x1
	.uaword	0x2b0
	.uaword	0xb4c
	.uleb128 0xc
	.uaword	0x2f4
	.uleb128 0xc
	.uaword	0x1ce
	.uleb128 0xc
	.uaword	0x30c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0xb32
	.uleb128 0x3
	.string	"NvM_Prv_Common_tst"
	.byte	0x8
	.byte	0x8d
	.uaword	0xa95
	.uleb128 0x15
	.byte	0x34
	.byte	0x8
	.byte	0x95
	.uaword	0xd4e
	.uleb128 0x16
	.string	"idBlockMemIf_u16"
	.byte	0x8
	.byte	0x9b
	.uaword	0x1f9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x16
	.string	"nrBlockBytes_pu16"
	.byte	0x8
	.byte	0xa9
	.uaword	0x2e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.string	"nrBlockBytesStored_u16"
	.byte	0x8
	.byte	0xb5
	.uaword	0x1f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.string	"idxDevice_u8"
	.byte	0x8
	.byte	0xbb
	.uaword	0x1ce
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x16
	.string	"nrNvBlocks_u8"
	.byte	0x8
	.byte	0xc0
	.uaword	0x1ce
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0x16
	.string	"nrRomBlocks_u8"
	.byte	0x8
	.byte	0xc5
	.uaword	0x1ce
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x16
	.string	"adrRamBlock_ppv"
	.byte	0x8
	.byte	0xd6
	.uaword	0xd4e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x16
	.string	"adrRomBlock_pcv"
	.byte	0x8
	.byte	0xde
	.uaword	0x2ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x16
	.string	"SingleBlockCallback_pfct"
	.byte	0x8
	.byte	0xe8
	.uaword	0xd6e
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x16
	.string	"SingleBlockStartCallback_pfct"
	.byte	0x8
	.byte	0xf0
	.uaword	0x336
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x16
	.string	"InitBlockCallback_pfct"
	.byte	0x8
	.byte	0xf9
	.uaword	0x32a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x13
	.string	"ReadRamBlockFromNvm_pfct"
	.byte	0x8
	.uahalf	0x102
	.uaword	0x794
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x13
	.string	"WriteRamBlockToNvm_pfct"
	.byte	0x8
	.uahalf	0x10b
	.uaword	0x794
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x13
	.string	"BlockManagementType_en"
	.byte	0x8
	.uahalf	0x110
	.uaword	0x392
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x13
	.string	"JobPriority_u8"
	.byte	0x8
	.uahalf	0x115
	.uaword	0x1ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x2d
	.uleb128 0x13
	.string	"stFlags_uo"
	.byte	0x8
	.uahalf	0x13e
	.uaword	0x235
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0xd54
	.uleb128 0x7
	.uaword	0x2d2
	.uleb128 0xb
	.byte	0x1
	.uaword	0x2b0
	.uaword	0xd6e
	.uleb128 0xc
	.uaword	0x1ce
	.uleb128 0xc
	.uaword	0x30c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0xd59
	.uleb128 0x9
	.string	"NvM_Prv_BlockDescriptor_tst"
	.byte	0x8
	.uahalf	0x153
	.uaword	0xb6c
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x158
	.uaword	0xdd5
	.uleb128 0x13
	.string	"PersistentId_u16"
	.byte	0x8
	.uahalf	0x15a
	.uaword	0x1f9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.string	"BlockId_u16"
	.byte	0x8
	.uahalf	0x15b
	.uaword	0x2f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x9
	.string	"NvM_Prv_PersId_BlockId_tst"
	.byte	0x8
	.uahalf	0x15c
	.uaword	0xd98
	.uleb128 0x3
	.string	"NvM_Prv_Block_IsNvmEnqueuingForMulti_tpfct"
	.byte	0x9
	.byte	0x3e
	.uaword	0xe2a
	.uleb128 0x5
	.byte	0x4
	.uaword	0xe30
	.uleb128 0xb
	.byte	0x1
	.uaword	0x280
	.uaword	0xe40
	.uleb128 0xc
	.uaword	0x2f4
	.byte	0
	.uleb128 0x3
	.string	"NvM_Prv_Service_UpdateBlockDataMulti_tpfct"
	.byte	0xa
	.byte	0x6a
	.uaword	0x2d4
	.uleb128 0x3
	.string	"NvM_Prv_Service_FinalizeMulti_tpfct"
	.byte	0xa
	.byte	0x71
	.uaword	0x2d4
	.uleb128 0x15
	.byte	0x8
	.byte	0xa
	.byte	0x76
	.uaword	0xeea
	.uleb128 0x16
	.string	"UpdateBlockDataForMulti_pfct"
	.byte	0xa
	.byte	0x84
	.uaword	0xe40
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x16
	.string	"FinalizeMulti_pfct"
	.byte	0xa
	.byte	0x91
	.uaword	0xe72
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"NvM_Prv_Service_ConfigurationMulti_tst"
	.byte	0xa
	.byte	0x93
	.uaword	0xe9d
	.uleb128 0x18
	.string	"NvM_Prv_Block_IsPRamBlockValid"
	.byte	0x2
	.byte	0x68
	.byte	0x1
	.uaword	0x280
	.byte	0x3
	.uaword	0xf50
	.uleb128 0x19
	.uaword	.LASF0
	.byte	0x2
	.byte	0x68
	.uaword	0x2f4
	.byte	0
	.uleb128 0x18
	.string	"NvM_Prv_IsBlockSelected"
	.byte	0x3
	.byte	0x4a
	.byte	0x1
	.uaword	0x280
	.byte	0x3
	.uaword	0xf99
	.uleb128 0x19
	.uaword	.LASF0
	.byte	0x3
	.byte	0x4a
	.uaword	0x2f4
	.uleb128 0x1a
	.string	"SelectionMask_en"
	.byte	0x3
	.byte	0x4b
	.uaword	0xa6f
	.byte	0
	.uleb128 0x18
	.string	"NvM_Prv_GetBlockSize"
	.byte	0x3
	.byte	0x9a
	.byte	0x1
	.uaword	0x1f9
	.byte	0x3
	.uaword	0xfdc
	.uleb128 0x19
	.uaword	.LASF0
	.byte	0x3
	.byte	0x9a
	.uaword	0x2f4
	.uleb128 0x1b
	.string	"BlockSize_u16"
	.byte	0x3
	.byte	0x9c
	.uaword	0x1f9
	.byte	0
	.uleb128 0x18
	.string	"NvM_Prv_ValidateAll_IsBlockParticipating"
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.uaword	0x280
	.byte	0x1
	.uaword	0x1034
	.uleb128 0x19
	.uaword	.LASF0
	.byte	0x1
	.byte	0x64
	.uaword	0x2f4
	.uleb128 0x1b
	.string	"IsBlockValid_b"
	.byte	0x1
	.byte	0x66
	.uaword	0x280
	.byte	0
	.uleb128 0x1c
	.string	"NvM_Prv_Block_SetRequestResult"
	.byte	0x2
	.uahalf	0x17d
	.byte	0x1
	.byte	0x3
	.uaword	0x107c
	.uleb128 0x1d
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x17d
	.uaword	0x2f4
	.uleb128 0x1e
	.string	"Result_uo"
	.byte	0x2
	.uahalf	0x17d
	.uaword	0x30c
	.byte	0
	.uleb128 0x1c
	.string	"NvM_Prv_Block_SetRequest"
	.byte	0x2
	.uahalf	0x18e
	.byte	0x1
	.byte	0x3
	.uaword	0x10b8
	.uleb128 0x1d
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x18e
	.uaword	0x2f4
	.uleb128 0x1d
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x18e
	.uaword	0x60d
	.byte	0
	.uleb128 0x1f
	.uaword	0xfdc
	.uaword	.LFB113
	.uaword	.LFE113
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1113
	.uleb128 0x20
	.uaword	0x1012
	.byte	0x1
	.byte	0x54
	.uleb128 0x21
	.uaword	0x101d
	.uleb128 0x22
	.uaword	0xf18
	.uaword	.LBB22
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x66
	.uaword	0x10f4
	.uleb128 0x20
	.uaword	0xf44
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x23
	.uaword	0xf50
	.uaword	.LBB25
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x6b
	.uleb128 0x24
	.uaword	0xf80
	.uahalf	0x100
	.uleb128 0x20
	.uaword	0xf75
	.byte	0x1
	.byte	0x54
	.byte	0
	.byte	0
	.uleb128 0x25
	.string	"NvM_Prv_ValidateAll_FindBlocks"
	.byte	0x1
	.byte	0x70
	.byte	0x1
	.byte	0x1
	.uaword	0x1147
	.uleb128 0x26
	.uaword	.LASF0
	.byte	0x1
	.byte	0x72
	.uaword	0x2f4
	.byte	0
	.uleb128 0x27
	.string	"NvM_Prv_ValidateAll_Finalize"
	.byte	0x1
	.byte	0x85
	.byte	0x1
	.uaword	.LFB115
	.uaword	.LFE115
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x128b
	.uleb128 0x22
	.uaword	0x1113
	.uaword	.LBB44
	.uaword	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0x87
	.uaword	0x127a
	.uleb128 0x28
	.uaword	.Ldebug_ranges0+0x30
	.uleb128 0x29
	.uaword	0x113b
	.uaword	.LLST0
	.uleb128 0x22
	.uaword	0xfdc
	.uaword	.LBB46
	.uaword	.Ldebug_ranges0+0x48
	.byte	0x1
	.byte	0x7a
	.uaword	0x1200
	.uleb128 0x2a
	.uaword	0x1012
	.uaword	.LLST1
	.uleb128 0x28
	.uaword	.Ldebug_ranges0+0x48
	.uleb128 0x21
	.uaword	0x101d
	.uleb128 0x22
	.uaword	0xf18
	.uaword	.LBB48
	.uaword	.Ldebug_ranges0+0x68
	.byte	0x1
	.byte	0x66
	.uaword	0x11dc
	.uleb128 0x2a
	.uaword	0xf44
	.uaword	.LLST1
	.byte	0
	.uleb128 0x23
	.uaword	0xf50
	.uaword	.LBB55
	.uaword	.Ldebug_ranges0+0x90
	.byte	0x1
	.byte	0x6b
	.uleb128 0x2a
	.uaword	0xf80
	.uaword	.LLST3
	.uleb128 0x2a
	.uaword	0xf75
	.uaword	.LLST4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.uaword	0x1034
	.uaword	.LBB62
	.uaword	.Ldebug_ranges0+0xa8
	.byte	0x1
	.byte	0x7d
	.uaword	0x1226
	.uleb128 0x2a
	.uaword	0x1069
	.uaword	.LLST5
	.uleb128 0x2a
	.uaword	0x105d
	.uaword	.LLST6
	.byte	0
	.uleb128 0x22
	.uaword	0x107c
	.uaword	.LBB66
	.uaword	.Ldebug_ranges0+0xc8
	.byte	0x1
	.byte	0x7f
	.uaword	0x124c
	.uleb128 0x2a
	.uaword	0x10ab
	.uaword	.LLST7
	.uleb128 0x2a
	.uaword	0x109f
	.uaword	.LLST8
	.byte	0
	.uleb128 0x2b
	.uaword	0xf99
	.uaword	.LBB73
	.uaword	.LBE73
	.byte	0x1
	.byte	0x78
	.uleb128 0x2a
	.uaword	0xfbb
	.uaword	.LLST9
	.uleb128 0x2c
	.uaword	.LBB74
	.uaword	.LBE74
	.uleb128 0x29
	.uaword	0xfc6
	.uaword	.LLST10
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uaword	.LVL12
	.byte	0x1
	.uaword	0x14ff
	.uleb128 0x2e
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x27
	.string	"NvM_Prv_ValidateAll_UpdateBlockData"
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.uaword	.LFB112
	.uaword	.LFE112
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1318
	.uleb128 0x2f
	.uaword	0x1034
	.uaword	.LBB80
	.uaword	.LBE80
	.byte	0x1
	.byte	0x5a
	.uaword	0x12e3
	.uleb128 0x30
	.uaword	0x1069
	.byte	0x2
	.uleb128 0x30
	.uaword	0x105d
	.byte	0
	.byte	0
	.uleb128 0x22
	.uaword	0x107c
	.uaword	.LBB82
	.uaword	.Ldebug_ranges0+0xe8
	.byte	0x1
	.byte	0x5f
	.uaword	0x1303
	.uleb128 0x30
	.uaword	0x10ab
	.byte	0x6
	.uleb128 0x30
	.uaword	0x109f
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uaword	.LVL15
	.byte	0x1
	.uaword	0x14ff
	.uleb128 0x2e
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	NvM_Prv_ValidateAll_IsBlockParticipating
	.byte	0
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"NvM_ValidateAll"
	.byte	0x1
	.byte	0x41
	.byte	0x1
	.uaword	.LFB111
	.uaword	.LFE111
	.uaword	.LLST11
	.byte	0x1
	.uaword	0x138e
	.uleb128 0x32
	.string	"QueueEntry_st"
	.byte	0x1
	.byte	0x46
	.uaword	0x775
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x32
	.string	"Configuration_st"
	.byte	0x1
	.byte	0x47
	.uaword	0xeea
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2d
	.uaword	.LVL16
	.byte	0x1
	.uaword	0x1537
	.uleb128 0x2e
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2e
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x2e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x33
	.string	"NvM_Prv_Common_cst"
	.byte	0x8
	.uahalf	0x16d
	.uaword	0x13ab
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.uaword	0xb52
	.uleb128 0x34
	.uaword	0xd74
	.uaword	0x13c0
	.uleb128 0x35
	.uaword	0x2c6
	.byte	0x3b
	.byte	0
	.uleb128 0x33
	.string	"NvM_Prv_BlockDescriptors_acst"
	.byte	0x8
	.uahalf	0x172
	.uaword	0x13e8
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.uaword	0x13b0
	.uleb128 0x34
	.uaword	0xdd5
	.uaword	0x13fd
	.uleb128 0x35
	.uaword	0x2c6
	.byte	0x39
	.byte	0
	.uleb128 0x33
	.string	"NvM_Prv_PersId_BlockId_acst"
	.byte	0x8
	.uahalf	0x176
	.uaword	0x1423
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.uaword	0x13ed
	.uleb128 0x34
	.uaword	0x1ce
	.uaword	0x1438
	.uleb128 0x35
	.uaword	0x2c6
	.byte	0x3b
	.byte	0
	.uleb128 0x36
	.string	"NvM_Prv_stBlock_au8"
	.byte	0x9
	.byte	0x54
	.uaword	0x1428
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.uaword	0x1f9
	.uaword	0x1465
	.uleb128 0x35
	.uaword	0x2c6
	.byte	0x3b
	.byte	0
	.uleb128 0x36
	.string	"NvM_Prv_stRequests_au16"
	.byte	0x9
	.byte	0x6b
	.uaword	0x1455
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.uaword	0x30c
	.uaword	0x1496
	.uleb128 0x35
	.uaword	0x2c6
	.byte	0x3b
	.byte	0
	.uleb128 0x36
	.string	"NvM_Prv_stRequestResult_au8"
	.byte	0x9
	.byte	0x74
	.uaword	0x1486
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.string	"NvM_Prv_idxDataSet_au8"
	.byte	0x9
	.byte	0x78
	.uaword	0x1428
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.string	"NvM_Prv_idConfigStored_u16"
	.byte	0x9
	.byte	0x81
	.uaword	0x1f9
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.byte	0x1
	.string	"NvM_Prv_Block_SetIsNvmEnqueuingForMulti"
	.byte	0x9
	.byte	0x92
	.byte	0x1
	.byte	0x1
	.uaword	0x1537
	.uleb128 0xc
	.uaword	0xdf8
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.string	"NvM_Prv_Service_InitiateMulti"
	.byte	0xa
	.byte	0xad
	.byte	0x1
	.byte	0x1
	.uaword	0x156f
	.uleb128 0xc
	.uaword	0x6a8
	.uleb128 0xc
	.uaword	0x156f
	.uleb128 0xc
	.uaword	0x157a
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x1575
	.uleb128 0x7
	.uaword	0x775
	.uleb128 0x5
	.byte	0x4
	.uaword	0x1580
	.uleb128 0x7
	.uaword	0xeea
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
	.uleb128 0x20
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x5
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
	.uleb128 0x2c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL3
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
	.uaword	.LFE115
	.uahalf	0x3
	.byte	0x7f
	.sleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL5
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL7
	.uaword	.LVL10
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x100
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL7
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL8
	.uaword	.LVL10
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL8
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL3
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL11
	.uaword	.LFE115
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LVL6
	.uahalf	0x2
	.byte	0x82
	.sleb128 0
	.uaword	.LVL6
	.uaword	.LVL9
	.uahalf	0x3
	.byte	0x83
	.sleb128 4
	.byte	0x6
	.uaword	0
	.uaword	0
.LLST11:
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
	.uaword	0x34
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB113
	.uaword	.LFE113-.LFB113
	.uaword	.LFB115
	.uaword	.LFE115-.LFB115
	.uaword	.LFB112
	.uaword	.LFE112-.LFB112
	.uaword	.LFB111
	.uaword	.LFE111-.LFB111
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB22
	.uaword	.LBE22
	.uaword	.LBB28
	.uaword	.LBE28
	.uaword	0
	.uaword	0
	.uaword	.LBB25
	.uaword	.LBE25
	.uaword	.LBB29
	.uaword	.LBE29
	.uaword	0
	.uaword	0
	.uaword	.LBB44
	.uaword	.LBE44
	.uaword	.LBB79
	.uaword	.LBE79
	.uaword	0
	.uaword	0
	.uaword	.LBB46
	.uaword	.LBE46
	.uaword	.LBB70
	.uaword	.LBE70
	.uaword	.LBB75
	.uaword	.LBE75
	.uaword	0
	.uaword	0
	.uaword	.LBB48
	.uaword	.LBE48
	.uaword	.LBB53
	.uaword	.LBE53
	.uaword	.LBB54
	.uaword	.LBE54
	.uaword	.LBB58
	.uaword	.LBE58
	.uaword	0
	.uaword	0
	.uaword	.LBB55
	.uaword	.LBE55
	.uaword	.LBB59
	.uaword	.LBE59
	.uaword	0
	.uaword	0
	.uaword	.LBB62
	.uaword	.LBE62
	.uaword	.LBB71
	.uaword	.LBE71
	.uaword	.LBB76
	.uaword	.LBE76
	.uaword	0
	.uaword	0
	.uaword	.LBB66
	.uaword	.LBE66
	.uaword	.LBB72
	.uaword	.LBE72
	.uaword	.LBB77
	.uaword	.LBE77
	.uaword	0
	.uaword	0
	.uaword	.LBB82
	.uaword	.LBE82
	.uaword	.LBB86
	.uaword	.LBE86
	.uaword	.LBB87
	.uaword	.LBE87
	.uaword	0
	.uaword	0
	.uaword	.LFB113
	.uaword	.LFE113
	.uaword	.LFB115
	.uaword	.LFE115
	.uaword	.LFB112
	.uaword	.LFE112
	.uaword	.LFB111
	.uaword	.LFE111
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
	.extern	NvM_Prv_Block_SetIsNvmEnqueuingForMulti,STT_FUNC,0
	.extern	NvM_Prv_stRequests_au16,STT_OBJECT,120
	.extern	NvM_Prv_stRequestResult_au8,STT_OBJECT,60
	.extern	NvM_Prv_BlockDescriptors_acst,STT_OBJECT,3120
	.extern	NvM_Prv_stBlock_au8,STT_OBJECT,60
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
