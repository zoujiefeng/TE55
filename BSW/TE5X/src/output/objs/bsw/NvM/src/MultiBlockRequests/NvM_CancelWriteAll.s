	.file	"NvM_CancelWriteAll.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.NvM_Prv_CancelWriteAll,"ax",@progbits
	.align 1
	.type	NvM_Prv_CancelWriteAll, @function
NvM_Prv_CancelWriteAll:
.LFB112:
	.file 1 "bsw\\NvM\\src\\MultiBlockRequests\\NvM_CancelWriteAll.c"
	.loc 1 92 0
.LVL0:
	movh	%d6, hi:NvM_Prv_stRequests_au16
.LBB24:
.LBB25:
.LBB26:
	.file 2 ".\\output\\inc/..\\..\\bsw\\NvM\\src\\Internal\\BlockData\\NvM_Prv_BlockData_Inl.h"
	.loc 2 383 0
	movh	%d0, hi:NvM_Prv_stRequestResult_au8
.LBE26:
.LBE25:
.LBE24:
	.loc 1 92 0
	mov	%d3, 2
	.loc 1 99 0
	mov	%d2, 0
	addi	%d6, %d6, lo:NvM_Prv_stRequests_au16
.LBB39:
.LBB29:
.LBB27:
	.loc 2 383 0
	addi	%d0, %d0, lo:NvM_Prv_stRequestResult_au8
	mov	%d7, 6
	lea	%a15, 57
.LVL1:
.L4:
.LBE27:
.LBE29:
.LBE39:
.LBB40:
.LBB41:
	.loc 2 308 0
	sh	%d4, %d3, 1
	mov.a	%a3, %d6
	addsc.a	%a2, %a3, %d4, 0
	ld.hu	%d15, [%a2]0
.LBE41:
.LBE40:
	.loc 1 108 0
	jz.t	%d15, 2, .L2
.LVL2:
.LBB42:
.LBB30:
.LBB31:
	.loc 2 416 0
	andn	%d15, %d15, ~(-5)
	extr.u	%d15, %d15, 0, 16
.LBE31:
.LBE30:
.LBB33:
.LBB34:
	.loc 2 308 0
	mov	%d5, 7936
.LBE34:
.LBE33:
.LBB36:
.LBB32:
	.loc 2 416 0
	st.h	[%a2]0, %d15
.LVL3:
.LBE32:
.LBE36:
.LBB37:
.LBB35:
	.loc 2 308 0
	and	%d5, %d15
.LBE35:
.LBE37:
	mov	%d2, 1
	.loc 1 147 0
	jnz	%d5, .L2
.LVL4:
.LBB38:
.LBB28:
	.loc 2 383 0
	mov.a	%a3, %d0
	addsc.a	%a2, %a3, %d3, 0
	st.b	[%a2]0, %d7
.LVL5:
.L2:
.LBE28:
.LBE38:
.LBE42:
	.loc 1 155 0
	jz.t	%d15, 4, .L3
.LVL6:
.LBB43:
.LBB44:
	.loc 2 416 0
	mov.a	%a3, %d6
	addsc.a	%a2, %a3, %d4, 0
	andn	%d15, %d15, ~(-17)
	st.h	[%a2]0, %d15
.LVL7:
.L3:
	add	%d3, 1
.LVL8:
.LBE44:
.LBE43:
	.loc 1 105 0 discriminator 2
	loop	%a15, .L4
	.loc 1 167 0
	ret
.LFE112:
	.size	NvM_Prv_CancelWriteAll, .-NvM_Prv_CancelWriteAll
.section .text.NvM_CancelWriteAll,"ax",@progbits
	.align 1
	.global	NvM_CancelWriteAll
	.type	NvM_CancelWriteAll, @function
NvM_CancelWriteAll:
.LFB111:
	.loc 1 60 0
	.loc 1 65 0
	mov	%e4, 10
	call	NvM_Prv_ErrorDetection_IsNvmInitialized
.LVL9:
	jnz	%d2, .L19
.L14:
	ret
.L19:
.LVL10:
.LBB45:
	.loc 1 76 0
	mov	%d4, 249
	call	NvM_Prv_RequestQueue_IsMultiEnqueued
.LVL11:
	.loc 1 77 0
	mov	%d4, 13
	.loc 1 76 0
	mov	%d15, %d2
.LVL12:
	.loc 1 77 0
	call	NvM_Prv_RequestQueue_IsMultiEnqueued
.LVL13:
	ne	%d3, %d2, 0
	or.ne	%d3, %d15, 0
	jz	%d3, .L14
.LVL14:
	.loc 1 82 0
	movh.a	%a4, hi:NvM_Prv_CancelWriteAll
	lea	%a4, [%a4] lo:NvM_Prv_CancelWriteAll
	j	NvM_Prv_Multi_Cancel
.LVL15:
.LBE45:
.LFE111:
	.size	NvM_CancelWriteAll, .-NvM_CancelWriteAll
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
	.uaword	.LFB112
	.uaword	.LFE112-.LFB112
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
.section .text,"ax",@progbits
.Letext0:
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 4 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 5 ".\\output\\inc/..\\..\\rte\\Rte_Type.h"
	.file 6 ".\\output\\inc/..\\..\\bsw\\NvM\\api\\NvM_Types.h"
	.file 7 ".\\output\\inc/..\\..\\bsw\\NvM\\src\\Internal\\BlockData\\NvM_Prv_BlockDescriptor.h"
	.file 8 ".\\output\\inc/..\\..\\bsw\\NvM\\src\\Internal\\ProcessMultiBlock\\NvM_Prv_ProcessMultiBlock.h"
	.file 9 ".\\output\\inc/..\\..\\bsw\\NvM\\integration\\NvM_Cfg_SchM.h"
	.file 10 ".\\output\\inc/..\\..\\bsw\\NvM\\src\\Internal\\BlockData\\NvM_Prv_BlockData.h"
	.file 11 ".\\output\\inc/..\\..\\bsw\\NvM\\src\\Internal\\ErrorDetection\\NvM_Prv_ErrorDetection.h"
	.file 12 ".\\output\\inc/..\\..\\bsw\\NvM\\src\\Internal\\QueueHandling\\NvM_Prv_RequestQueue.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xf0c
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\NvM\\src\\MultiBlockRequests\\NvM_CancelWriteAll.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x70
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x3
	.byte	0x51
	.uaword	0x1de
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
	.byte	0x3
	.byte	0x5b
	.uaword	0x20a
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
	.byte	0x3
	.byte	0x6a
	.uaword	0x246
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
	.byte	0x3
	.byte	0x80
	.uaword	0x1de
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
	.byte	0x4
	.byte	0x60
	.uaword	0x1d1
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x4
	.byte	0x4
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2dd
	.uleb128 0x6
	.uaword	0x1fc
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2e8
	.uleb128 0x7
	.uleb128 0x8
	.string	"NvM_BlockIdType"
	.byte	0x5
	.uahalf	0x1ca
	.uaword	0x1fc
	.uleb128 0x8
	.string	"NvM_RequestResultType"
	.byte	0x5
	.uahalf	0x1d4
	.uaword	0x1d1
	.uleb128 0x5
	.byte	0x4
	.uaword	0x325
	.uleb128 0x9
	.byte	0x1
	.uaword	0x2b3
	.uleb128 0x5
	.byte	0x4
	.uaword	0x331
	.uleb128 0xa
	.byte	0x1
	.uaword	0x2b3
	.uaword	0x341
	.uleb128 0xb
	.uaword	0x1d1
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x347
	.uleb128 0x9
	.byte	0x1
	.uaword	0x283
	.uleb128 0xc
	.byte	0x1
	.byte	0x6
	.byte	0xa2
	.uaword	0x393
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
	.byte	0x6
	.byte	0xa6
	.uaword	0x34d
	.uleb128 0xe
	.byte	0x1
	.byte	0x6
	.uahalf	0x13e
	.uaword	0x60e
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
	.string	"NvM_Prv_idService_tuo"
	.byte	0x6
	.uahalf	0x14c
	.uaword	0x1d1
	.uleb128 0x5
	.byte	0x4
	.uaword	0x632
	.uleb128 0xa
	.byte	0x1
	.uaword	0x2b3
	.uaword	0x642
	.uleb128 0xb
	.uaword	0x2d5
	.byte	0
	.uleb128 0xf
	.byte	0xc
	.byte	0x7
	.byte	0x77
	.uaword	0x6b6
	.uleb128 0x10
	.string	"MultiBlockCallback_pfct"
	.byte	0x7
	.byte	0x7f
	.uaword	0x6c7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"RbMultiBlockStartCallback_pfct"
	.byte	0x7
	.byte	0x84
	.uaword	0x6d9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.string	"ObserverCallback_pfct"
	.byte	0x7
	.byte	0x8a
	.uaword	0x6f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.uaword	0x6c7
	.uleb128 0xb
	.uaword	0x1d1
	.uleb128 0xb
	.uaword	0x301
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x6b6
	.uleb128 0x11
	.byte	0x1
	.uaword	0x6d9
	.uleb128 0xb
	.uaword	0x1d1
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x6cd
	.uleb128 0xa
	.byte	0x1
	.uaword	0x2b3
	.uaword	0x6f9
	.uleb128 0xb
	.uaword	0x2e9
	.uleb128 0xb
	.uaword	0x1d1
	.uleb128 0xb
	.uaword	0x301
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x6df
	.uleb128 0x3
	.string	"NvM_Prv_Common_tst"
	.byte	0x7
	.byte	0x8d
	.uaword	0x642
	.uleb128 0xf
	.byte	0x34
	.byte	0x7
	.byte	0x95
	.uaword	0x8fb
	.uleb128 0x10
	.string	"idBlockMemIf_u16"
	.byte	0x7
	.byte	0x9b
	.uaword	0x1fc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"nrBlockBytes_pu16"
	.byte	0x7
	.byte	0xa9
	.uaword	0x2d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.string	"nrBlockBytesStored_u16"
	.byte	0x7
	.byte	0xb5
	.uaword	0x1fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.string	"idxDevice_u8"
	.byte	0x7
	.byte	0xbb
	.uaword	0x1d1
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x10
	.string	"nrNvBlocks_u8"
	.byte	0x7
	.byte	0xc0
	.uaword	0x1d1
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0x10
	.string	"nrRomBlocks_u8"
	.byte	0x7
	.byte	0xc5
	.uaword	0x1d1
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x10
	.string	"adrRamBlock_ppv"
	.byte	0x7
	.byte	0xd6
	.uaword	0x8fb
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.string	"adrRomBlock_pcv"
	.byte	0x7
	.byte	0xde
	.uaword	0x2e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x10
	.string	"SingleBlockCallback_pfct"
	.byte	0x7
	.byte	0xe8
	.uaword	0x91b
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x10
	.string	"SingleBlockStartCallback_pfct"
	.byte	0x7
	.byte	0xf0
	.uaword	0x32b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x10
	.string	"InitBlockCallback_pfct"
	.byte	0x7
	.byte	0xf9
	.uaword	0x31f
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x12
	.string	"ReadRamBlockFromNvm_pfct"
	.byte	0x7
	.uahalf	0x102
	.uaword	0x62c
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x12
	.string	"WriteRamBlockToNvm_pfct"
	.byte	0x7
	.uahalf	0x10b
	.uaword	0x62c
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x12
	.string	"BlockManagementType_en"
	.byte	0x7
	.uahalf	0x110
	.uaword	0x393
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x12
	.string	"JobPriority_u8"
	.byte	0x7
	.uahalf	0x115
	.uaword	0x1d1
	.byte	0x2
	.byte	0x23
	.uleb128 0x2d
	.uleb128 0x12
	.string	"stFlags_uo"
	.byte	0x7
	.uahalf	0x13e
	.uaword	0x238
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x901
	.uleb128 0x6
	.uaword	0x2d5
	.uleb128 0xa
	.byte	0x1
	.uaword	0x2b3
	.uaword	0x91b
	.uleb128 0xb
	.uaword	0x1d1
	.uleb128 0xb
	.uaword	0x301
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x906
	.uleb128 0x8
	.string	"NvM_Prv_BlockDescriptor_tst"
	.byte	0x7
	.uahalf	0x153
	.uaword	0x719
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.uahalf	0x158
	.uaword	0x982
	.uleb128 0x12
	.string	"PersistentId_u16"
	.byte	0x7
	.uahalf	0x15a
	.uaword	0x1fc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.string	"BlockId_u16"
	.byte	0x7
	.uahalf	0x15b
	.uaword	0x2e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x8
	.string	"NvM_Prv_PersId_BlockId_tst"
	.byte	0x7
	.uahalf	0x15c
	.uaword	0x945
	.uleb128 0x3
	.string	"NvM_Prv_Multi_Cancel_tpfct"
	.byte	0x8
	.byte	0xa
	.uaword	0x341
	.uleb128 0x14
	.string	"SchM_Enter_NvM_Main"
	.byte	0x9
	.byte	0x20
	.byte	0x1
	.byte	0x3
	.uleb128 0x15
	.string	"NvM_Prv_Block_IsRequestPending"
	.byte	0x2
	.uahalf	0x132
	.byte	0x1
	.uaword	0x283
	.byte	0x3
	.uaword	0xa32
	.uleb128 0x16
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x132
	.uaword	0x2e9
	.uleb128 0x17
	.string	"maskService_u16"
	.byte	0x2
	.uahalf	0x132
	.uaword	0x1fc
	.byte	0
	.uleb128 0x18
	.string	"NvM_Prv_Block_ClearRequests"
	.byte	0x2
	.uahalf	0x19e
	.byte	0x1
	.byte	0x3
	.uaword	0xa7e
	.uleb128 0x16
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x19e
	.uaword	0x2e9
	.uleb128 0x17
	.string	"maskRequests_u16"
	.byte	0x2
	.uahalf	0x19e
	.uaword	0x1fc
	.byte	0
	.uleb128 0x18
	.string	"NvM_Prv_Block_SetRequestResult"
	.byte	0x2
	.uahalf	0x17d
	.byte	0x1
	.byte	0x3
	.uaword	0xac6
	.uleb128 0x16
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x17d
	.uaword	0x2e9
	.uleb128 0x17
	.string	"Result_uo"
	.byte	0x2
	.uahalf	0x17d
	.uaword	0x301
	.byte	0
	.uleb128 0x14
	.string	"SchM_Exit_NvM_Main"
	.byte	0x9
	.byte	0x25
	.byte	0x1
	.byte	0x3
	.uleb128 0x19
	.string	"NvM_Prv_CancelWriteAll"
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.uaword	0x283
	.uaword	.LFB112
	.uaword	.LFE112
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xc34
	.uleb128 0x1a
	.string	"isWriteAllCanceled_b"
	.byte	0x1
	.byte	0x63
	.uaword	0x283
	.uaword	.LLST0
	.uleb128 0x1b
	.uaword	.LASF0
	.byte	0x1
	.byte	0x64
	.uaword	0x2e9
	.uaword	.LLST1
	.uleb128 0x1c
	.uaword	.Ldebug_ranges0+0
	.uaword	0xbee
	.uleb128 0x1a
	.string	"maskAnySingle_u16"
	.byte	0x1
	.byte	0x6f
	.uaword	0x1fc
	.uaword	.LLST2
	.uleb128 0x1a
	.string	"isBlockInternal_b"
	.byte	0x1
	.byte	0x78
	.uaword	0x283
	.uaword	.LLST3
	.uleb128 0x1d
	.uaword	0xa7e
	.uaword	.LBB25
	.uaword	.Ldebug_ranges0+0x20
	.byte	0x1
	.byte	0x96
	.uaword	0xba5
	.uleb128 0x1e
	.uaword	0xab3
	.uaword	.LLST4
	.uleb128 0x1e
	.uaword	0xaa7
	.uaword	.LLST5
	.byte	0
	.uleb128 0x1d
	.uaword	0xa32
	.uaword	.LBB30
	.uaword	.Ldebug_ranges0+0x40
	.byte	0x1
	.byte	0x86
	.uaword	0xbcb
	.uleb128 0x1e
	.uaword	0xa64
	.uaword	.LLST6
	.uleb128 0x1e
	.uaword	0xa58
	.uaword	.LLST7
	.byte	0
	.uleb128 0x1f
	.uaword	0x9e0
	.uaword	.LBB33
	.uaword	.Ldebug_ranges0+0x58
	.byte	0x1
	.byte	0x93
	.uleb128 0x1e
	.uaword	0xa19
	.uaword	.LLST8
	.uleb128 0x1e
	.uaword	0xa0d
	.uaword	.LLST9
	.byte	0
	.byte	0
	.uleb128 0x20
	.uaword	0x9e0
	.uaword	.LBB40
	.uaword	.LBE40
	.byte	0x1
	.byte	0x6c
	.uaword	0xc11
	.uleb128 0x21
	.uaword	0xa19
	.byte	0x4
	.uleb128 0x1e
	.uaword	0xa0d
	.uaword	.LLST10
	.byte	0
	.uleb128 0x22
	.uaword	0xa32
	.uaword	.LBB43
	.uaword	.LBE43
	.byte	0x1
	.byte	0x9f
	.uleb128 0x1e
	.uaword	0xa64
	.uaword	.LLST11
	.uleb128 0x1e
	.uaword	0xa58
	.uaword	.LLST12
	.byte	0
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.string	"NvM_CancelWriteAll"
	.byte	0x1
	.byte	0x3a
	.byte	0x1
	.uaword	.LFB111
	.uaword	.LFE111
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xd03
	.uleb128 0x24
	.uaword	.LBB45
	.uaword	.LBE45
	.uaword	0xcee
	.uleb128 0x1a
	.string	"isWriteAllEnqueued_b"
	.byte	0x1
	.byte	0x43
	.uaword	0x283
	.uaword	.LLST13
	.uleb128 0x1a
	.string	"isBlockMaintainanceEnqueued_b"
	.byte	0x1
	.byte	0x44
	.uaword	0x283
	.uaword	.LLST14
	.uleb128 0x25
	.uaword	.LVL11
	.uaword	0xe74
	.uaword	0xcc6
	.uleb128 0x26
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x9
	.byte	0xf9
	.byte	0
	.uleb128 0x25
	.uaword	.LVL13
	.uaword	0xe74
	.uaword	0xcd9
	.uleb128 0x26
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3d
	.byte	0
	.uleb128 0x27
	.uaword	.LVL15
	.byte	0x1
	.uaword	0xead
	.uleb128 0x26
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	NvM_Prv_CancelWriteAll
	.byte	0
	.byte	0
	.uleb128 0x28
	.uaword	.LVL9
	.uaword	0xed2
	.uleb128 0x26
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x26
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x29
	.string	"NvM_Prv_Common_cst"
	.byte	0x7
	.uahalf	0x16d
	.uaword	0xd20
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.uaword	0x6ff
	.uleb128 0x2a
	.uaword	0x921
	.uaword	0xd35
	.uleb128 0x2b
	.uaword	0x2c9
	.byte	0x3b
	.byte	0
	.uleb128 0x29
	.string	"NvM_Prv_BlockDescriptors_acst"
	.byte	0x7
	.uahalf	0x172
	.uaword	0xd5d
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.uaword	0xd25
	.uleb128 0x2a
	.uaword	0x982
	.uaword	0xd72
	.uleb128 0x2b
	.uaword	0x2c9
	.byte	0x39
	.byte	0
	.uleb128 0x29
	.string	"NvM_Prv_PersId_BlockId_acst"
	.byte	0x7
	.uahalf	0x176
	.uaword	0xd98
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.uaword	0xd62
	.uleb128 0x2a
	.uaword	0x1d1
	.uaword	0xdad
	.uleb128 0x2b
	.uaword	0x2c9
	.byte	0x3b
	.byte	0
	.uleb128 0x2c
	.string	"NvM_Prv_stBlock_au8"
	.byte	0xa
	.byte	0x54
	.uaword	0xd9d
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.uaword	0x1fc
	.uaword	0xdda
	.uleb128 0x2b
	.uaword	0x2c9
	.byte	0x3b
	.byte	0
	.uleb128 0x2c
	.string	"NvM_Prv_stRequests_au16"
	.byte	0xa
	.byte	0x6b
	.uaword	0xdca
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.uaword	0x301
	.uaword	0xe0b
	.uleb128 0x2b
	.uaword	0x2c9
	.byte	0x3b
	.byte	0
	.uleb128 0x2c
	.string	"NvM_Prv_stRequestResult_au8"
	.byte	0xa
	.byte	0x74
	.uaword	0xdfb
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.string	"NvM_Prv_idxDataSet_au8"
	.byte	0xa
	.byte	0x78
	.uaword	0xd9d
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.string	"NvM_Prv_idConfigStored_u16"
	.byte	0xa
	.byte	0x81
	.uaword	0x1fc
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.byte	0x1
	.string	"NvM_Prv_RequestQueue_IsMultiEnqueued"
	.byte	0xc
	.byte	0x1b
	.byte	0x1
	.uaword	0x283
	.byte	0x1
	.uaword	0xead
	.uleb128 0xb
	.uaword	0x60e
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.string	"NvM_Prv_Multi_Cancel"
	.byte	0x8
	.byte	0x18
	.byte	0x1
	.byte	0x1
	.uaword	0xed2
	.uleb128 0xb
	.uaword	0x9a5
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.string	"NvM_Prv_ErrorDetection_IsNvmInitialized"
	.byte	0xb
	.byte	0x5a
	.byte	0x1
	.uaword	0x283
	.byte	0x1
	.uleb128 0xb
	.uaword	0x60e
	.uleb128 0xb
	.uaword	0x2e9
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
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
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uaword	.LVL1
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL2
	.uaword	.LVL5
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL1
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL8
	.uaword	.LFE112
	.uahalf	0x3
	.byte	0x73
	.sleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL2
	.uaword	.LVL5
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x1f00
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL2
	.uaword	.LVL5
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL2
	.uaword	.LVL5
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL2
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL3
	.uaword	.LVL5
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x1f00
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL3
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL1
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL8
	.uaword	.LFE112
	.uahalf	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x2
	.byte	0x40
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL10
	.uaword	.LVL14
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL14
	.uaword	.LFE111
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL10
	.uaword	.LVL12
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LVL13-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL13-1
	.uaword	.LFE111
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x24
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB112
	.uaword	.LFE112-.LFB112
	.uaword	.LFB111
	.uaword	.LFE111-.LFB111
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB24
	.uaword	.LBE24
	.uaword	.LBB39
	.uaword	.LBE39
	.uaword	.LBB42
	.uaword	.LBE42
	.uaword	0
	.uaword	0
	.uaword	.LBB25
	.uaword	.LBE25
	.uaword	.LBB29
	.uaword	.LBE29
	.uaword	.LBB38
	.uaword	.LBE38
	.uaword	0
	.uaword	0
	.uaword	.LBB30
	.uaword	.LBE30
	.uaword	.LBB36
	.uaword	.LBE36
	.uaword	0
	.uaword	0
	.uaword	.LBB33
	.uaword	.LBE33
	.uaword	.LBB37
	.uaword	.LBE37
	.uaword	0
	.uaword	0
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
	.extern	NvM_Prv_Multi_Cancel,STT_FUNC,0
	.extern	NvM_Prv_RequestQueue_IsMultiEnqueued,STT_FUNC,0
	.extern	NvM_Prv_ErrorDetection_IsNvmInitialized,STT_FUNC,0
	.extern	NvM_Prv_stRequestResult_au8,STT_OBJECT,60
	.extern	NvM_Prv_stRequests_au16,STT_OBJECT,120
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
