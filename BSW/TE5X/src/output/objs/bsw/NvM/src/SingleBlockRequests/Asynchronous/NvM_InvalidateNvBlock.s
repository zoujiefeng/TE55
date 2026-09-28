	.file	"NvM_InvalidateNvBlock.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.NvM_Prv_Invalidate_CheckBlockData,"ax",@progbits
	.align 1
	.type	NvM_Prv_Invalidate_CheckBlockData, @function
NvM_Prv_Invalidate_CheckBlockData:
.LFB110:
	.file 1 "bsw\\NvM\\src\\SingleBlockRequests\\Asynchronous\\NvM_InvalidateNvBlock.c"
	.loc 1 93 0
.LVL0:
	.loc 1 101 0
	ld.hu	%d15, [%a4] 2
.LVL1:
.LBB32:
.LBB33:
	.file 2 ".\\output\\inc/..\\..\\bsw\\NvM\\src\\Internal\\BlockData\\NvM_Prv_BlockData_Inl.h"
	.loc 2 273 0
	movh.a	%a15, hi:NvM_Prv_idxDataSet_au8
	lea	%a15, [%a15] lo:NvM_Prv_idxDataSet_au8
	addsc.a	%a15, %a15, %d15, 0
.LBE33:
.LBE32:
.LBB35:
.LBB36:
.LBB37:
.LBB38:
.LBB39:
.LBB40:
	.file 3 ".\\output\\inc/..\\..\\bsw\\NvM\\src\\Internal\\BlockData\\NvM_Prv_BlockDescriptor_Inl.h"
	.loc 3 206 0
	ge.u	%d2, %d15, 60
.LBE40:
.LBE39:
.LBE38:
.LBE37:
.LBE36:
.LBE35:
.LBB53:
.LBB34:
	.loc 2 273 0
	ld.bu	%d3, [%a15]0
.LVL2:
.LBE34:
.LBE53:
.LBB54:
.LBB51:
.LBB45:
.LBB43:
.LBB42:
.LBB41:
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
.LBE41:
.LBE42:
	.loc 2 185 0
	ld.bu	%d2, [%a15] 44
	jeq	%d2, 2, .L8
.LVL5:
.L2:
.LBE43:
.LBE45:
.LBB46:
.LBB47:
	.loc 2 202 0
	movh.a	%a15, hi:NvM_Prv_stBlock_au8
	lea	%a15, [%a15] lo:NvM_Prv_stBlock_au8
	addsc.a	%a15, %a15, %d15, 0
.LBE47:
.LBE46:
	.loc 2 246 0
	mov	%d2, 1
.LBB49:
.LBB48:
	.loc 2 202 0
	ld.bu	%d15, [%a15]0
.LVL6:
.LBE48:
.LBE49:
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
.LBE51:
.LBE54:
	.loc 1 104 0
	ret
.LVL9:
.L8:
.LBB55:
.LBB52:
.LBB50:
.LBB44:
	.loc 2 185 0
	ld.bu	%d2, [%a15] 11
	jlt.u	%d3, %d2, .L2
	j	.L3
.LBE44:
.LBE50:
.LBE52:
.LBE55:
.LFE110:
	.size	NvM_Prv_Invalidate_CheckBlockData, .-NvM_Prv_Invalidate_CheckBlockData
.section .text.NvM_Prv_Invalidate_SetBlockData,"ax",@progbits
	.align 1
	.type	NvM_Prv_Invalidate_SetBlockData, @function
NvM_Prv_Invalidate_SetBlockData:
.LFB111:
	.loc 1 107 0
.LVL10:
.LBB56:
.LBB57:
	.loc 2 383 0
	ld.hu	%d2, [%a4] 2
	movh.a	%a15, hi:NvM_Prv_stRequestResult_au8
	lea	%a15, [%a15] lo:NvM_Prv_stRequestResult_au8
.LBE57:
.LBE56:
	.loc 1 108 0
	ld.bu	%d15, [%a4] 12
.LVL11:
.LBB59:
.LBB58:
	.loc 2 383 0
	addsc.a	%a15, %a15, %d2, 0
	st.b	[%a15]0, %d15
.LVL12:
.LBE58:
.LBE59:
.LBB60:
.LBB61:
	.loc 2 400 0
	ld.hu	%d15, [%a4] 2
.LVL13:
	movh.a	%a15, hi:NvM_Prv_stRequests_au16
	lea	%a15, [%a15] lo:NvM_Prv_stRequests_au16
	addsc.a	%a15, %a15, %d15, 1
	ld.hu	%d2, [%a4] 4
.LVL14:
	ld.h	%d15, [%a15]0
	insert	%d15, %d15, 1, %d2, 1
	st.h	[%a15]0, %d15
.LVL15:
	ret
.LBE61:
.LBE60:
.LFE111:
	.size	NvM_Prv_Invalidate_SetBlockData, .-NvM_Prv_Invalidate_SetBlockData
.section .text.NvM_InvalidateNvBlock,"ax",@progbits
	.align 1
	.global	NvM_InvalidateNvBlock
	.type	NvM_InvalidateNvBlock, @function
NvM_InvalidateNvBlock:
.LFB109:
	.loc 1 57 0
.LVL16:
	sub.a	%SP, 32
.LCFI0:
	.loc 1 66 0
	mov	%d15, 0
	.loc 1 67 0
	mov	%d2, 11
	.loc 1 66 0
	st.w	[%SP] 24, %d15
	.loc 1 71 0
	st.b	[%SP] 29, %d15
	.loc 1 72 0
	st.b	[%SP] 30, %d15
	.loc 1 73 0
	st.b	[%SP] 31, %d15
	.loc 1 77 0
	st.w	[%SP] 4, %d15
	.loc 1 78 0
	movh	%d15, hi:NvM_Prv_Invalidate_CheckBlockData
	addi	%d15, %d15, lo:NvM_Prv_Invalidate_CheckBlockData
	.loc 1 67 0
	st.b	[%SP] 16, %d2
	.loc 1 68 0
	mov	%d2, 10
	st.h	[%SP] 20, %d2
	.loc 1 78 0
	st.w	[%SP] 8, %d15
	.loc 1 70 0
	mov	%d2, 2
	.loc 1 79 0
	movh	%d15, hi:NvM_Prv_Invalidate_SetBlockData
	.loc 1 65 0
	st.h	[%SP] 18, %d4
	.loc 1 70 0
	st.b	[%SP] 28, %d2
	.loc 1 79 0
	addi	%d15, %d15, lo:NvM_Prv_Invalidate_SetBlockData
	.loc 1 75 0
	mov	%d2, 1
	.loc 1 83 0
	mov	%d4, 1
.LVL17:
	lea	%a4, [%SP] 16
	mov.aa	%a5, %SP
	.loc 1 75 0
	st.b	[%SP]0, %d2
	.loc 1 79 0
	st.w	[%SP] 12, %d15
	.loc 1 89 0
	j	NvM_Prv_Service_Initiate
.LVL18:
.LFE109:
	.size	NvM_InvalidateNvBlock, .-NvM_InvalidateNvBlock
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
	.uaword	.LFB110
	.uaword	.LFE110-.LFB110
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB111
	.uaword	.LFE111-.LFB111
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
	.uaword	0x138e
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\NvM\\src\\SingleBlockRequests\\Asynchronous\\NvM_InvalidateNvBlock.c"
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
	.uaword	0x1ef
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
	.uaword	0x21b
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
	.uaword	0x257
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
	.uaword	0x1ef
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
	.uaword	0x1e2
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x4
	.byte	0x4
	.uleb128 0x5
	.byte	0x4
	.uaword	0x1e2
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2f4
	.uleb128 0x6
	.uaword	0x20d
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2ff
	.uleb128 0x7
	.uleb128 0x8
	.string	"NvM_BlockIdType"
	.byte	0x6
	.uahalf	0x1ca
	.uaword	0x20d
	.uleb128 0x8
	.string	"NvM_RequestResultType"
	.byte	0x6
	.uahalf	0x1d4
	.uaword	0x1e2
	.uleb128 0x5
	.byte	0x4
	.uaword	0x33c
	.uleb128 0x9
	.byte	0x1
	.uaword	0x2c4
	.uleb128 0x5
	.byte	0x4
	.uaword	0x348
	.uleb128 0xa
	.byte	0x1
	.uaword	0x2c4
	.uaword	0x358
	.uleb128 0xb
	.uaword	0x1e2
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.byte	0x7
	.byte	0xa2
	.uaword	0x39e
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
	.uaword	0x358
	.uleb128 0xe
	.byte	0x1
	.byte	0x7
	.uahalf	0x13e
	.uaword	0x619
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
	.uaword	0x20d
	.uleb128 0x8
	.string	"NvM_Prv_idService_tuo"
	.byte	0x7
	.uahalf	0x14c
	.uaword	0x1e2
	.uleb128 0xe
	.byte	0x1
	.byte	0x7
	.uahalf	0x159
	.uaword	0x6b4
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
	.uaword	0x1e2
	.uleb128 0xf
	.byte	0x4
	.byte	0x7
	.uahalf	0x180
	.uaword	0x709
	.uleb128 0x10
	.string	"ptrRamBlock_pv"
	.byte	0x7
	.uahalf	0x182
	.uaword	0x2e6
	.uleb128 0x10
	.string	"ptrRamBlock_pu8"
	.byte	0x7
	.uahalf	0x183
	.uaword	0x2e8
	.byte	0
	.uleb128 0x8
	.string	"NvM_Prv_ptrRamBlock_tun"
	.byte	0x7
	.uahalf	0x185
	.uaword	0x6d0
	.uleb128 0x11
	.byte	0xc
	.byte	0x7
	.uahalf	0x191
	.uaword	0x781
	.uleb128 0x12
	.string	"idService_uo"
	.byte	0x7
	.uahalf	0x194
	.uaword	0x638
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x197
	.uaword	0x300
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x13
	.uaword	.LASF1
	.byte	0x7
	.uahalf	0x19a
	.uaword	0x619
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.string	"BlockData_un"
	.byte	0x7
	.uahalf	0x19e
	.uaword	0x709
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x8
	.string	"NvM_Prv_QueueEntry_tst"
	.byte	0x7
	.uahalf	0x1a0
	.uaword	0x729
	.uleb128 0x5
	.byte	0x4
	.uaword	0x7a6
	.uleb128 0xa
	.byte	0x1
	.uaword	0x2c4
	.uaword	0x7b6
	.uleb128 0xb
	.uaword	0x2e6
	.byte	0
	.uleb128 0x14
	.byte	0xc
	.byte	0x8
	.byte	0x77
	.uaword	0x82a
	.uleb128 0x15
	.string	"MultiBlockCallback_pfct"
	.byte	0x8
	.byte	0x7f
	.uaword	0x83b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"RbMultiBlockStartCallback_pfct"
	.byte	0x8
	.byte	0x84
	.uaword	0x84d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.string	"ObserverCallback_pfct"
	.byte	0x8
	.byte	0x8a
	.uaword	0x86d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.uaword	0x83b
	.uleb128 0xb
	.uaword	0x1e2
	.uleb128 0xb
	.uaword	0x318
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x82a
	.uleb128 0x16
	.byte	0x1
	.uaword	0x84d
	.uleb128 0xb
	.uaword	0x1e2
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x841
	.uleb128 0xa
	.byte	0x1
	.uaword	0x2c4
	.uaword	0x86d
	.uleb128 0xb
	.uaword	0x300
	.uleb128 0xb
	.uaword	0x1e2
	.uleb128 0xb
	.uaword	0x318
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x853
	.uleb128 0x3
	.string	"NvM_Prv_Common_tst"
	.byte	0x8
	.byte	0x8d
	.uaword	0x7b6
	.uleb128 0x14
	.byte	0x34
	.byte	0x8
	.byte	0x95
	.uaword	0xa65
	.uleb128 0x15
	.string	"idBlockMemIf_u16"
	.byte	0x8
	.byte	0x9b
	.uaword	0x20d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"nrBlockBytes_pu16"
	.byte	0x8
	.byte	0xa9
	.uaword	0x2ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.string	"nrBlockBytesStored_u16"
	.byte	0x8
	.byte	0xb5
	.uaword	0x20d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x15
	.string	"idxDevice_u8"
	.byte	0x8
	.byte	0xbb
	.uaword	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x17
	.uaword	.LASF2
	.byte	0x8
	.byte	0xc0
	.uaword	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0x15
	.string	"nrRomBlocks_u8"
	.byte	0x8
	.byte	0xc5
	.uaword	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x15
	.string	"adrRamBlock_ppv"
	.byte	0x8
	.byte	0xd6
	.uaword	0xa65
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x15
	.string	"adrRomBlock_pcv"
	.byte	0x8
	.byte	0xde
	.uaword	0x2f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x15
	.string	"SingleBlockCallback_pfct"
	.byte	0x8
	.byte	0xe8
	.uaword	0xa85
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x15
	.string	"SingleBlockStartCallback_pfct"
	.byte	0x8
	.byte	0xf0
	.uaword	0x342
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x15
	.string	"InitBlockCallback_pfct"
	.byte	0x8
	.byte	0xf9
	.uaword	0x336
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x12
	.string	"ReadRamBlockFromNvm_pfct"
	.byte	0x8
	.uahalf	0x102
	.uaword	0x7a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x12
	.string	"WriteRamBlockToNvm_pfct"
	.byte	0x8
	.uahalf	0x10b
	.uaword	0x7a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x12
	.string	"BlockManagementType_en"
	.byte	0x8
	.uahalf	0x110
	.uaword	0x39e
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x12
	.string	"JobPriority_u8"
	.byte	0x8
	.uahalf	0x115
	.uaword	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2d
	.uleb128 0x12
	.string	"stFlags_uo"
	.byte	0x8
	.uahalf	0x13e
	.uaword	0x249
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0xa6b
	.uleb128 0x6
	.uaword	0x2e6
	.uleb128 0xa
	.byte	0x1
	.uaword	0x2c4
	.uaword	0xa85
	.uleb128 0xb
	.uaword	0x1e2
	.uleb128 0xb
	.uaword	0x318
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0xa70
	.uleb128 0x8
	.string	"NvM_Prv_BlockDescriptor_tst"
	.byte	0x8
	.uahalf	0x153
	.uaword	0x88d
	.uleb128 0x11
	.byte	0x4
	.byte	0x8
	.uahalf	0x158
	.uaword	0xaec
	.uleb128 0x12
	.string	"PersistentId_u16"
	.byte	0x8
	.uahalf	0x15a
	.uaword	0x20d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.string	"BlockId_u16"
	.byte	0x8
	.uahalf	0x15b
	.uaword	0x300
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x8
	.string	"NvM_Prv_PersId_BlockId_tst"
	.byte	0x8
	.uahalf	0x15c
	.uaword	0xaaf
	.uleb128 0x3
	.string	"NvM_Prv_BlockErrors_tuo"
	.byte	0x9
	.byte	0x3f
	.uaword	0x1e2
	.uleb128 0x14
	.byte	0x10
	.byte	0xa
	.byte	0x1a
	.uaword	0xba7
	.uleb128 0x15
	.string	"QueueEntry_st"
	.byte	0xa
	.byte	0x1c
	.uaword	0x781
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x17
	.uaword	.LASF3
	.byte	0xa
	.byte	0x1f
	.uaword	0x318
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x17
	.uaword	.LASF4
	.byte	0xa
	.byte	0x21
	.uaword	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0x15
	.string	"maskBitsToChange_u8"
	.byte	0xa
	.byte	0x24
	.uaword	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x15
	.string	"maskBitsNewValue_u8"
	.byte	0xa
	.byte	0x25
	.uaword	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.byte	0
	.uleb128 0x3
	.string	"NvM_Prv_BlockData_tst"
	.byte	0xa
	.byte	0x27
	.uaword	0xb2e
	.uleb128 0x3
	.string	"NvM_Prv_Service_CheckParameter_tpfct"
	.byte	0xa
	.byte	0x2f
	.uaword	0xbf0
	.uleb128 0x5
	.byte	0x4
	.uaword	0xbf6
	.uleb128 0xa
	.byte	0x1
	.uaword	0x294
	.uaword	0xc06
	.uleb128 0xb
	.uaword	0xc06
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0xc0c
	.uleb128 0x6
	.uaword	0xba7
	.uleb128 0x3
	.string	"NvM_Prv_Service_CheckBlockData_tpfct"
	.byte	0xa
	.byte	0x36
	.uaword	0xc3d
	.uleb128 0x5
	.byte	0x4
	.uaword	0xc43
	.uleb128 0xa
	.byte	0x1
	.uaword	0x294
	.uaword	0xc58
	.uleb128 0xb
	.uaword	0xc06
	.uleb128 0xb
	.uaword	0xc58
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0xb0f
	.uleb128 0x3
	.string	"NvM_Prv_Service_SetBlockData_tpfct"
	.byte	0xa
	.byte	0x3e
	.uaword	0xc88
	.uleb128 0x5
	.byte	0x4
	.uaword	0xc8e
	.uleb128 0x16
	.byte	0x1
	.uaword	0xc9a
	.uleb128 0xb
	.uaword	0xc06
	.byte	0
	.uleb128 0x14
	.byte	0x10
	.byte	0xa
	.byte	0x43
	.uaword	0xd19
	.uleb128 0x15
	.string	"CheckPendingBlock_b"
	.byte	0xa
	.byte	0x4b
	.uaword	0x294
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CheckParameter_pfct"
	.byte	0xa
	.byte	0x52
	.uaword	0xbc4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.string	"CheckBlockData_pfct"
	.byte	0xa
	.byte	0x59
	.uaword	0xc11
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x15
	.string	"SetBlockData_pfct"
	.byte	0xa
	.byte	0x5f
	.uaword	0xc5e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x3
	.string	"NvM_Prv_Service_Configuration_tst"
	.byte	0xa
	.byte	0x61
	.uaword	0xc9a
	.uleb128 0x18
	.string	"NvM_Prv_GetBlockType"
	.byte	0x3
	.byte	0xcb
	.byte	0x1
	.uaword	0x39e
	.byte	0x3
	.uaword	0xd81
	.uleb128 0x19
	.uaword	.LASF0
	.byte	0x3
	.byte	0xcb
	.uaword	0x300
	.uleb128 0x1a
	.string	"BlockType"
	.byte	0x3
	.byte	0xcd
	.uaword	0x39e
	.byte	0
	.uleb128 0x18
	.string	"NvM_Prv_GetNrNonVolatileBlocks"
	.byte	0x3
	.byte	0xdf
	.byte	0x1
	.uaword	0x1e2
	.byte	0x3
	.uaword	0xdc4
	.uleb128 0x19
	.uaword	.LASF0
	.byte	0x3
	.byte	0xdf
	.uaword	0x300
	.uleb128 0x1b
	.uaword	.LASF2
	.byte	0x3
	.byte	0xe1
	.uaword	0x1e2
	.byte	0
	.uleb128 0x18
	.string	"NvM_Prv_Block_IsInRom"
	.byte	0x2
	.byte	0xb7
	.byte	0x1
	.uaword	0x294
	.byte	0x3
	.uaword	0xdfe
	.uleb128 0x19
	.uaword	.LASF0
	.byte	0x2
	.byte	0xb7
	.uaword	0x300
	.uleb128 0x19
	.uaword	.LASF4
	.byte	0x2
	.byte	0xb7
	.uaword	0x1e2
	.byte	0
	.uleb128 0x18
	.string	"NvM_Prv_Block_IsWriteProtected"
	.byte	0x2
	.byte	0xc8
	.byte	0x1
	.uaword	0x294
	.byte	0x3
	.uaword	0xe36
	.uleb128 0x19
	.uaword	.LASF0
	.byte	0x2
	.byte	0xc8
	.uaword	0x300
	.byte	0
	.uleb128 0x1c
	.string	"NvM_Prv_Block_GetIdxDataset"
	.byte	0x2
	.uahalf	0x10f
	.byte	0x1
	.uaword	0x1e2
	.byte	0x3
	.uaword	0xe6d
	.uleb128 0x1d
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x10f
	.uaword	0x300
	.byte	0
	.uleb128 0x1e
	.string	"NvM_Prv_Block_SetRequestResult"
	.byte	0x2
	.uahalf	0x17d
	.byte	0x1
	.byte	0x3
	.uaword	0xeaf
	.uleb128 0x1d
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x17d
	.uaword	0x300
	.uleb128 0x1d
	.uaword	.LASF3
	.byte	0x2
	.uahalf	0x17d
	.uaword	0x318
	.byte	0
	.uleb128 0x1e
	.string	"NvM_Prv_Block_SetRequest"
	.byte	0x2
	.uahalf	0x18e
	.byte	0x1
	.byte	0x3
	.uaword	0xeeb
	.uleb128 0x1d
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x18e
	.uaword	0x300
	.uleb128 0x1d
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x18e
	.uaword	0x619
	.byte	0
	.uleb128 0x18
	.string	"NvM_Prv_Block_IsWriteable"
	.byte	0x2
	.byte	0xef
	.byte	0x1
	.uaword	0x294
	.byte	0x3
	.uaword	0xf8c
	.uleb128 0x19
	.uaword	.LASF0
	.byte	0x2
	.byte	0xef
	.uaword	0x300
	.uleb128 0x19
	.uaword	.LASF4
	.byte	0x2
	.byte	0xf0
	.uaword	0x1e2
	.uleb128 0x19
	.uaword	.LASF5
	.byte	0x2
	.byte	0xf1
	.uaword	0xc58
	.uleb128 0x1a
	.string	"IsBlockInRom_b"
	.byte	0x2
	.byte	0xf3
	.uaword	0x294
	.uleb128 0x1a
	.string	"isWriteOnceBlockWriteable_b"
	.byte	0x2
	.byte	0xf4
	.uaword	0x294
	.uleb128 0x1a
	.string	"isBlockWriteProtected_b"
	.byte	0x2
	.byte	0xf5
	.uaword	0x294
	.byte	0
	.uleb128 0x1f
	.string	"NvM_Prv_Invalidate_CheckBlockData"
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.uaword	0x294
	.uaword	.LFB110
	.uaword	.LFE110
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x10a7
	.uleb128 0x20
	.uaword	.LASF6
	.byte	0x1
	.byte	0x5b
	.uaword	0xc06
	.byte	0x1
	.byte	0x64
	.uleb128 0x20
	.uaword	.LASF5
	.byte	0x1
	.byte	0x5c
	.uaword	0xc58
	.byte	0x1
	.byte	0x65
	.uleb128 0x21
	.uaword	0xe36
	.uaword	.LBB32
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x65
	.uaword	0xffd
	.uleb128 0x22
	.uaword	0xe60
	.uaword	.LLST0
	.byte	0
	.uleb128 0x23
	.uaword	0xeeb
	.uaword	.LBB35
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x65
	.uleb128 0x24
	.uaword	0xf28
	.byte	0x1
	.byte	0x65
	.uleb128 0x22
	.uaword	0xf1d
	.uaword	.LLST1
	.uleb128 0x22
	.uaword	0xf12
	.uaword	.LLST2
	.uleb128 0x25
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0x26
	.uaword	0xf33
	.uleb128 0x27
	.uaword	0xf49
	.uaword	.LLST3
	.uleb128 0x26
	.uaword	0xf6c
	.uleb128 0x21
	.uaword	0xdc4
	.uaword	.LBB37
	.uaword	.Ldebug_ranges0+0x38
	.byte	0x2
	.byte	0xf3
	.uaword	0x108b
	.uleb128 0x22
	.uaword	0xdf2
	.uaword	.LLST1
	.uleb128 0x22
	.uaword	0xde7
	.uaword	.LLST2
	.uleb128 0x23
	.uaword	0xd42
	.uaword	.LBB39
	.uaword	.Ldebug_ranges0+0x58
	.byte	0x2
	.byte	0xb9
	.uleb128 0x22
	.uaword	0xd64
	.uaword	.LLST2
	.uleb128 0x25
	.uaword	.Ldebug_ranges0+0x58
	.uleb128 0x27
	.uaword	0xd6f
	.uaword	.LLST7
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.uaword	0xdfe
	.uaword	.LBB46
	.uaword	.Ldebug_ranges0+0x70
	.byte	0x2
	.byte	0xf5
	.uleb128 0x22
	.uaword	0xe2a
	.uaword	.LLST8
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
	.string	"NvM_Prv_Invalidate_SetBlockData"
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.uaword	.LFB111
	.uaword	.LFE111
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1131
	.uleb128 0x20
	.uaword	.LASF6
	.byte	0x1
	.byte	0x6a
	.uaword	0xc06
	.byte	0x1
	.byte	0x64
	.uleb128 0x21
	.uaword	0xe6d
	.uaword	.LBB56
	.uaword	.Ldebug_ranges0+0x88
	.byte	0x1
	.byte	0x6c
	.uaword	0x110e
	.uleb128 0x22
	.uaword	0xea2
	.uaword	.LLST9
	.uleb128 0x22
	.uaword	0xe96
	.uaword	.LLST10
	.byte	0
	.uleb128 0x29
	.uaword	0xeaf
	.uaword	.LBB60
	.uaword	.LBE60
	.byte	0x1
	.byte	0x6d
	.uleb128 0x22
	.uaword	0xede
	.uaword	.LLST11
	.uleb128 0x22
	.uaword	0xed2
	.uaword	.LLST12
	.byte	0
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.string	"NvM_InvalidateNvBlock"
	.byte	0x1
	.byte	0x36
	.byte	0x1
	.uaword	0x2c4
	.uaword	.LFB109
	.uaword	.LFE109
	.uaword	.LLST13
	.byte	0x1
	.uaword	0x11de
	.uleb128 0x2b
	.string	"BlockId"
	.byte	0x1
	.byte	0x36
	.uaword	0x300
	.uaword	.LLST14
	.uleb128 0x2c
	.string	"stReturn_uo"
	.byte	0x1
	.byte	0x3c
	.uaword	0x2c4
	.byte	0x1
	.uleb128 0x2d
	.string	"ServiceConfiguration_st"
	.byte	0x1
	.byte	0x3d
	.uaword	0xd19
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.string	"BlockData_st"
	.byte	0x1
	.byte	0x3e
	.uaword	0xba7
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2e
	.uaword	.LVL18
	.byte	0x1
	.uaword	0x134f
	.uleb128 0x2f
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2f
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x30
	.string	"NvM_Prv_Common_cst"
	.byte	0x8
	.uahalf	0x16d
	.uaword	0x11fb
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.uaword	0x873
	.uleb128 0x31
	.uaword	0xa8b
	.uaword	0x1210
	.uleb128 0x32
	.uaword	0x2da
	.byte	0x3b
	.byte	0
	.uleb128 0x30
	.string	"NvM_Prv_BlockDescriptors_acst"
	.byte	0x8
	.uahalf	0x172
	.uaword	0x1238
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.uaword	0x1200
	.uleb128 0x31
	.uaword	0xaec
	.uaword	0x124d
	.uleb128 0x32
	.uaword	0x2da
	.byte	0x39
	.byte	0
	.uleb128 0x30
	.string	"NvM_Prv_PersId_BlockId_acst"
	.byte	0x8
	.uahalf	0x176
	.uaword	0x1273
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.uaword	0x123d
	.uleb128 0x31
	.uaword	0x1e2
	.uaword	0x1288
	.uleb128 0x32
	.uaword	0x2da
	.byte	0x3b
	.byte	0
	.uleb128 0x33
	.string	"NvM_Prv_stBlock_au8"
	.byte	0x9
	.byte	0x54
	.uaword	0x1278
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.uaword	0x20d
	.uaword	0x12b5
	.uleb128 0x32
	.uaword	0x2da
	.byte	0x3b
	.byte	0
	.uleb128 0x33
	.string	"NvM_Prv_stRequests_au16"
	.byte	0x9
	.byte	0x6b
	.uaword	0x12a5
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.uaword	0x318
	.uaword	0x12e6
	.uleb128 0x32
	.uaword	0x2da
	.byte	0x3b
	.byte	0
	.uleb128 0x33
	.string	"NvM_Prv_stRequestResult_au8"
	.byte	0x9
	.byte	0x74
	.uaword	0x12d6
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.string	"NvM_Prv_idxDataSet_au8"
	.byte	0x9
	.byte	0x78
	.uaword	0x1278
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.string	"NvM_Prv_idConfigStored_u16"
	.byte	0x9
	.byte	0x81
	.uaword	0x20d
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.byte	0x1
	.string	"NvM_Prv_Service_Initiate"
	.byte	0xa
	.byte	0xa9
	.byte	0x1
	.uaword	0x2c4
	.byte	0x1
	.uaword	0x1386
	.uleb128 0xb
	.uaword	0x6b4
	.uleb128 0xb
	.uaword	0xc06
	.uleb128 0xb
	.uaword	0x1386
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x138c
	.uleb128 0x6
	.uaword	0xd19
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
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
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uaword	.LFE110
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
	.uaword	.LFE110
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
	.uaword	.LVL12
	.uahalf	0x2
	.byte	0x84
	.sleb128 12
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x2
	.byte	0x84
	.sleb128 2
	.uaword	.LVL12
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL12
	.uaword	.LVL15
	.uahalf	0x2
	.byte	0x84
	.sleb128 4
	.uaword	.LVL15
	.uaword	.LFE111
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL12
	.uaword	.LVL15
	.uahalf	0x2
	.byte	0x84
	.sleb128 2
	.uaword	0
	.uaword	0
.LLST13:
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
.LLST14:
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL17
	.uaword	.LVL18-1
	.uahalf	0x2
	.byte	0x91
	.sleb128 -14
	.uaword	.LVL18-1
	.uaword	.LFE109
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x2c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB110
	.uaword	.LFE110-.LFB110
	.uaword	.LFB111
	.uaword	.LFE111-.LFB111
	.uaword	.LFB109
	.uaword	.LFE109-.LFB109
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB32
	.uaword	.LBE32
	.uaword	.LBB53
	.uaword	.LBE53
	.uaword	0
	.uaword	0
	.uaword	.LBB35
	.uaword	.LBE35
	.uaword	.LBB54
	.uaword	.LBE54
	.uaword	.LBB55
	.uaword	.LBE55
	.uaword	0
	.uaword	0
	.uaword	.LBB37
	.uaword	.LBE37
	.uaword	.LBB45
	.uaword	.LBE45
	.uaword	.LBB50
	.uaword	.LBE50
	.uaword	0
	.uaword	0
	.uaword	.LBB39
	.uaword	.LBE39
	.uaword	.LBB42
	.uaword	.LBE42
	.uaword	0
	.uaword	0
	.uaword	.LBB46
	.uaword	.LBE46
	.uaword	.LBB49
	.uaword	.LBE49
	.uaword	0
	.uaword	0
	.uaword	.LBB56
	.uaword	.LBE56
	.uaword	.LBB59
	.uaword	.LBE59
	.uaword	0
	.uaword	0
	.uaword	.LFB110
	.uaword	.LFE110
	.uaword	.LFB111
	.uaword	.LFE111
	.uaword	.LFB109
	.uaword	.LFE109
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF2:
	.string	"nrNvBlocks_u8"
.LASF3:
	.string	"Result_uo"
.LASF4:
	.string	"idxDataset_u8"
.LASF1:
	.string	"ServiceBit_uo"
.LASF5:
	.string	"Errors_puo"
.LASF6:
	.string	"BlockData_pcst"
.LASF0:
	.string	"idBlock_uo"
	.extern	NvM_Prv_Service_Initiate,STT_FUNC,0
	.extern	NvM_Prv_stRequests_au16,STT_OBJECT,120
	.extern	NvM_Prv_stRequestResult_au8,STT_OBJECT,60
	.extern	NvM_Prv_stBlock_au8,STT_OBJECT,60
	.extern	NvM_Prv_BlockDescriptors_acst,STT_OBJECT,3120
	.extern	NvM_Prv_idxDataSet_au8,STT_OBJECT,60
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
