	.file	"NvM_Rb_GetBlockId.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.NvM_Rb_GetBlockId,"ax",@progbits
	.align 1
	.global	NvM_Rb_GetBlockId
	.type	NvM_Rb_GetBlockId, @function
NvM_Rb_GetBlockId:
.LFB109:
	.file 1 "bsw\\NvM\\src\\SingleBlockRequests\\Synchronous\\NvM_Rb_GetBlockId.c"
	.loc 1 21 0
.LVL0:
	sub.a	%SP, 8
.LCFI0:
	.loc 1 21 0
	mov.aa	%a12, %a4
	.loc 1 26 0
	lea	%a4, [%SP] 8
.LVL1:
	.loc 1 21 0
	mov	%d8, %d4
	.loc 1 26 0
	st.a	[+%a4]-4, %a12
	.loc 1 27 0
	mov	%e4, 250
.LVL2:
	mov	%d6, 14
	call	NvM_Prv_ErrorDetection_IsPtrValid
.LVL3:
	.loc 1 23 0
	mov	%d15, 1
	.loc 1 27 0
	jz	%d2, .L2
.LBB9:
.LBB10:
.LBB11:
	.file 2 ".\\output\\inc/..\\..\\bsw\\NvM\\src\\Internal\\BlockData\\NvM_Prv_BlockDescriptor_Inl.h"
	.loc 2 410 0
	movh.a	%a2, hi:NvM_Prv_PersId_BlockId_acst
.LBE11:
.LBE10:
.LBE9:
	mov	%d15, 0
	mov	%d5, 57
	mov	%d3, 0
.LBB22:
.LBB15:
.LBB12:
	lea	%a2, [%a2] lo:NvM_Prv_PersId_BlockId_acst
.L9:
.LVL4:
.LBE12:
.LBE15:
	.loc 1 35 0
	insert	%d2, %d5, 0, 16, 16
.LBB16:
.LBB13:
	.loc 2 407 0
	mov	%d4, 0
.LBE13:
.LBE16:
	.loc 1 35 0
	sub	%d15, %d2, %d15
	sh	%d2, %d15, -31
	add	%d15, %d2
	sha	%d15, -1
	add	%d15, %d3
	extr.u	%d15, %d15, 0, 16
.LVL5:
.LBB17:
.LBB14:
	.loc 2 408 0
	ge.u	%d2, %d15, 58
	jnz	%d2, .L3
	.loc 2 410 0
	addsc.a	%a15, %a2, %d15, 2
	ld.hu	%d4, [%a15]0
.LVL6:
.L3:
.LBE14:
.LBE17:
	.loc 1 37 0
	jeq	%d8, %d4, .L17
.LVL7:
.LBB18:
.LBB19:
	.loc 2 407 0
	mov	%d4, 0
.LVL8:
	.loc 2 408 0
	jnz	%d2, .L6
	.loc 2 410 0
	addsc.a	%a15, %a2, %d15, 2
	ld.hu	%d4, [%a15]0
.LVL9:
.L6:
.LBE19:
.LBE18:
	.loc 1 43 0
	jge.u	%d4, %d8, .L7
	.loc 1 45 0
	add	%d15, 1
.LVL10:
	extr.u	%d3, %d15, 0, 16
.LVL11:
.L8:
	.loc 1 33 0
	mov	%d15, %d3
	jge	%d5, %d3, .L9
.LBE22:
	.loc 1 23 0
	mov	%d15, 1
.LVL12:
.L2:
	.loc 1 57 0
	mov	%d2, %d15
	ret
.LVL13:
.L7:
.LBB23:
	.loc 1 49 0
	add	%d5, %d15, -1
.LVL14:
	j	.L8
.LVL15:
.L17:
.LBB20:
.LBB21:
	.loc 2 427 0
	mov	%d3, 0
.LVL16:
	.loc 2 428 0
	jnz	%d2, .L5
	.loc 2 430 0
	movh.a	%a15, hi:NvM_Prv_PersId_BlockId_acst
	lea	%a15, [%a15] lo:NvM_Prv_PersId_BlockId_acst
	addsc.a	%a15, %a15, %d15, 2
	ld.hu	%d3, [%a15] 2
.LVL17:
.L5:
.LBE21:
.LBE20:
	.loc 1 40 0
	mov	%d15, 0
.LVL18:
	.loc 1 39 0
	st.h	[%a12]0, %d3
.LVL19:
.LBE23:
	.loc 1 57 0
	mov	%d2, %d15
	ret
.LFE109:
	.size	NvM_Rb_GetBlockId, .-NvM_Rb_GetBlockId
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
	.uaword	.LFB109
	.uaword	.LFE109-.LFB109
	.byte	0x4
	.uaword	.LCFI0-.LFB109
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE0:
.section .text,"ax",@progbits
.Letext0:
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 4 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 5 ".\\output\\inc/..\\..\\rte\\Rte_Type.h"
	.file 6 ".\\output\\inc/..\\..\\bsw\\NvM\\api\\NvM_Types.h"
	.file 7 ".\\output\\inc/..\\..\\bsw\\NvM\\src\\Internal\\BlockData\\NvM_Prv_BlockDescriptor.h"
	.file 8 ".\\output\\inc/..\\..\\bsw\\NvM\\src\\Internal\\ErrorDetection\\NvM_Prv_ErrorDetection.h"
	.file 9 ".\\output\\inc/..\\..\\bsw\\NvM\\src\\Internal\\BlockData\\NvM_Prv_BlockData.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xe87
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\NvM\\src\\SingleBlockRequests\\Synchronous\\NvM_Rb_GetBlockId.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x48
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
	.uaword	0x1ea
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
	.uaword	0x216
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"sint32"
	.byte	0x3
	.byte	0x60
	.uaword	0x23a
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
	.uaword	0x260
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
	.uaword	0x1ea
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
	.uaword	0x1dd
	.uleb128 0x4
	.byte	0x8
	.byte	0x4
	.byte	0x64
	.uaword	0x363
	.uleb128 0x5
	.string	"vendorID"
	.byte	0x4
	.byte	0x66
	.uaword	0x208
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"moduleID"
	.byte	0x4
	.byte	0x67
	.uaword	0x208
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x5
	.string	"sw_major_version"
	.byte	0x4
	.byte	0x68
	.uaword	0x1dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"sw_minor_version"
	.byte	0x4
	.byte	0x69
	.uaword	0x1dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x5
	.string	"sw_patch_version"
	.byte	0x4
	.byte	0x6a
	.uaword	0x1dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0
	.uleb128 0x3
	.string	"Std_VersionInfoType"
	.byte	0x4
	.byte	0x6b
	.uaword	0x2e3
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x6
	.byte	0x4
	.uleb128 0x7
	.byte	0x4
	.uaword	0x363
	.uleb128 0x7
	.byte	0x4
	.uaword	0x1dd
	.uleb128 0x7
	.byte	0x4
	.uaword	0x39e
	.uleb128 0x8
	.uaword	0x208
	.uleb128 0x7
	.byte	0x4
	.uaword	0x208
	.uleb128 0x7
	.byte	0x4
	.uaword	0x252
	.uleb128 0x7
	.byte	0x4
	.uaword	0x3b5
	.uleb128 0x9
	.uleb128 0xa
	.string	"NvM_BlockIdType"
	.byte	0x5
	.uahalf	0x1ca
	.uaword	0x208
	.uleb128 0xa
	.string	"NvM_RequestResultType"
	.byte	0x5
	.uahalf	0x1d4
	.uaword	0x1dd
	.uleb128 0x7
	.byte	0x4
	.uaword	0x3f2
	.uleb128 0xb
	.byte	0x1
	.uaword	0x2cd
	.uleb128 0x7
	.byte	0x4
	.uaword	0x3ce
	.uleb128 0x7
	.byte	0x4
	.uaword	0x404
	.uleb128 0xc
	.byte	0x1
	.uaword	0x2cd
	.uaword	0x414
	.uleb128 0xd
	.uaword	0x1dd
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.byte	0x6
	.byte	0x8f
	.uaword	0x50c
	.uleb128 0xf
	.string	"NVM_RB_MIGRATION_RESULT_INIT_E"
	.sleb128 0
	.uleb128 0xf
	.string	"NVM_RB_MIGRATION_RESULT_NOT_NECESSARY_E"
	.sleb128 1
	.uleb128 0xf
	.string	"NVM_RB_MIGRATION_RESULT_TO_SMALLER_SIZE_E"
	.sleb128 2
	.uleb128 0xf
	.string	"NVM_RB_MIGRATION_RESULT_TO_BIGGER_SIZE_E"
	.sleb128 3
	.uleb128 0xf
	.string	"NVM_RB_MIGRATION_RESULT_NOT_DONE_E"
	.sleb128 4
	.uleb128 0xf
	.string	"NVM_RB_MIGRATION_RESULT_DEACTIVATED_E"
	.sleb128 5
	.byte	0
	.uleb128 0x3
	.string	"NvM_Rb_MigrationResult_ten"
	.byte	0x6
	.byte	0x96
	.uaword	0x414
	.uleb128 0xe
	.byte	0x1
	.byte	0x6
	.byte	0x9a
	.uaword	0x578
	.uleb128 0xf
	.string	"NVM_RB_STATUS_UNINIT"
	.sleb128 0
	.uleb128 0xf
	.string	"NVM_RB_STATUS_IDLE"
	.sleb128 1
	.uleb128 0xf
	.string	"NVM_RB_STATUS_BUSY"
	.sleb128 2
	.byte	0
	.uleb128 0x3
	.string	"NvM_Rb_StatusType"
	.byte	0x6
	.byte	0x9e
	.uaword	0x52e
	.uleb128 0xe
	.byte	0x1
	.byte	0x6
	.byte	0xa2
	.uaword	0x5d7
	.uleb128 0xf
	.string	"NVM_BLOCK_NATIVE"
	.sleb128 0
	.uleb128 0xf
	.string	"NVM_BLOCK_REDUNDANT"
	.sleb128 1
	.uleb128 0xf
	.string	"NVM_BLOCK_DATASET"
	.sleb128 2
	.byte	0
	.uleb128 0x3
	.string	"NvM_BlockManagementType"
	.byte	0x6
	.byte	0xa6
	.uaword	0x591
	.uleb128 0xa
	.string	"NvM_Prv_idService_tuo"
	.byte	0x6
	.uahalf	0x14c
	.uaword	0x1dd
	.uleb128 0xa
	.string	"NvM_Prv_idDetError_tuo"
	.byte	0x6
	.uahalf	0x150
	.uaword	0x1dd
	.uleb128 0x7
	.byte	0x4
	.uaword	0x639
	.uleb128 0xc
	.byte	0x1
	.uaword	0x2cd
	.uaword	0x649
	.uleb128 0xd
	.uaword	0x38a
	.byte	0
	.uleb128 0x4
	.byte	0xc
	.byte	0x7
	.byte	0x77
	.uaword	0x6bd
	.uleb128 0x5
	.string	"MultiBlockCallback_pfct"
	.byte	0x7
	.byte	0x7f
	.uaword	0x6ce
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"RbMultiBlockStartCallback_pfct"
	.byte	0x7
	.byte	0x84
	.uaword	0x6e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"ObserverCallback_pfct"
	.byte	0x7
	.byte	0x8a
	.uaword	0x700
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.uaword	0x6ce
	.uleb128 0xd
	.uaword	0x1dd
	.uleb128 0xd
	.uaword	0x3ce
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.uaword	0x6bd
	.uleb128 0x10
	.byte	0x1
	.uaword	0x6e0
	.uleb128 0xd
	.uaword	0x1dd
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.uaword	0x6d4
	.uleb128 0xc
	.byte	0x1
	.uaword	0x2cd
	.uaword	0x700
	.uleb128 0xd
	.uaword	0x3b6
	.uleb128 0xd
	.uaword	0x1dd
	.uleb128 0xd
	.uaword	0x3ce
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.uaword	0x6e6
	.uleb128 0x3
	.string	"NvM_Prv_Common_tst"
	.byte	0x7
	.byte	0x8d
	.uaword	0x649
	.uleb128 0x4
	.byte	0x34
	.byte	0x7
	.byte	0x95
	.uaword	0x902
	.uleb128 0x5
	.string	"idBlockMemIf_u16"
	.byte	0x7
	.byte	0x9b
	.uaword	0x208
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"nrBlockBytes_pu16"
	.byte	0x7
	.byte	0xa9
	.uaword	0x398
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"nrBlockBytesStored_u16"
	.byte	0x7
	.byte	0xb5
	.uaword	0x208
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"idxDevice_u8"
	.byte	0x7
	.byte	0xbb
	.uaword	0x1dd
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x5
	.string	"nrNvBlocks_u8"
	.byte	0x7
	.byte	0xc0
	.uaword	0x1dd
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0x5
	.string	"nrRomBlocks_u8"
	.byte	0x7
	.byte	0xc5
	.uaword	0x1dd
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"adrRamBlock_ppv"
	.byte	0x7
	.byte	0xd6
	.uaword	0x902
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x5
	.string	"adrRomBlock_pcv"
	.byte	0x7
	.byte	0xde
	.uaword	0x3af
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x5
	.string	"SingleBlockCallback_pfct"
	.byte	0x7
	.byte	0xe8
	.uaword	0x922
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x5
	.string	"SingleBlockStartCallback_pfct"
	.byte	0x7
	.byte	0xf0
	.uaword	0x3fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x5
	.string	"InitBlockCallback_pfct"
	.byte	0x7
	.byte	0xf9
	.uaword	0x3ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x11
	.string	"ReadRamBlockFromNvm_pfct"
	.byte	0x7
	.uahalf	0x102
	.uaword	0x633
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x11
	.string	"WriteRamBlockToNvm_pfct"
	.byte	0x7
	.uahalf	0x10b
	.uaword	0x633
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x11
	.string	"BlockManagementType_en"
	.byte	0x7
	.uahalf	0x110
	.uaword	0x5d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x11
	.string	"JobPriority_u8"
	.byte	0x7
	.uahalf	0x115
	.uaword	0x1dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x2d
	.uleb128 0x11
	.string	"stFlags_uo"
	.byte	0x7
	.uahalf	0x13e
	.uaword	0x252
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.uaword	0x908
	.uleb128 0x8
	.uaword	0x38a
	.uleb128 0xc
	.byte	0x1
	.uaword	0x2cd
	.uaword	0x922
	.uleb128 0xd
	.uaword	0x1dd
	.uleb128 0xd
	.uaword	0x3ce
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.uaword	0x90d
	.uleb128 0xa
	.string	"NvM_Prv_BlockDescriptor_tst"
	.byte	0x7
	.uahalf	0x153
	.uaword	0x720
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x158
	.uaword	0x974
	.uleb128 0x13
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x15a
	.uaword	0x208
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.uaword	.LASF1
	.byte	0x7
	.uahalf	0x15b
	.uaword	0x3b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0xa
	.string	"NvM_Prv_PersId_BlockId_tst"
	.byte	0x7
	.uahalf	0x15c
	.uaword	0x94c
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.byte	0x1d
	.uaword	0xa9e
	.uleb128 0x15
	.string	"ptrToCheck_pv"
	.byte	0x8
	.byte	0x1f
	.uaword	0x38a
	.uleb128 0x15
	.string	"ptrDataIdx_pu8"
	.byte	0x8
	.byte	0x20
	.uaword	0x392
	.uleb128 0x15
	.string	"ptrRequestResult_puo"
	.byte	0x8
	.byte	0x21
	.uaword	0x3f8
	.uleb128 0x15
	.string	"ptrMigrationResult_pen"
	.byte	0x8
	.byte	0x22
	.uaword	0xa9e
	.uleb128 0x15
	.string	"ptrStatusType_pen"
	.byte	0x8
	.byte	0x23
	.uaword	0xaa4
	.uleb128 0x15
	.string	"ptrBlockLength_pu16"
	.byte	0x8
	.byte	0x24
	.uaword	0x3a3
	.uleb128 0x15
	.string	"ptrIdService_puo"
	.byte	0x8
	.byte	0x25
	.uaword	0xaaa
	.uleb128 0x15
	.string	"ptrIdBlock_puo"
	.byte	0x8
	.byte	0x26
	.uaword	0xab0
	.uleb128 0x15
	.string	"ptrVersionInfo_pst"
	.byte	0x8
	.byte	0x27
	.uaword	0x38c
	.uleb128 0x15
	.string	"ptrCntrWriteBlock_puo"
	.byte	0x8
	.byte	0x28
	.uaword	0x3a9
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.uaword	0x50c
	.uleb128 0x7
	.byte	0x4
	.uaword	0x578
	.uleb128 0x7
	.byte	0x4
	.uaword	0x5f6
	.uleb128 0x7
	.byte	0x4
	.uaword	0x3b6
	.uleb128 0x3
	.string	"NvM_Prv_ErrorDetection_Ptr_tun"
	.byte	0x8
	.byte	0x2a
	.uaword	0x997
	.uleb128 0x16
	.string	"NvM_Prv_GetIdPersistent"
	.byte	0x2
	.uahalf	0x195
	.byte	0x1
	.uaword	0x208
	.byte	0x3
	.uaword	0xb1b
	.uleb128 0x17
	.uaword	.LASF2
	.byte	0x2
	.uahalf	0x195
	.uaword	0x208
	.uleb128 0x18
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x197
	.uaword	0x208
	.byte	0
	.uleb128 0x16
	.string	"NvM_Prv_GetIdBlock"
	.byte	0x2
	.uahalf	0x1a9
	.byte	0x1
	.uaword	0x3b6
	.byte	0x3
	.uaword	0xb55
	.uleb128 0x17
	.uaword	.LASF2
	.byte	0x2
	.uahalf	0x1a9
	.uaword	0x208
	.uleb128 0x18
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x1ab
	.uaword	0x208
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.string	"NvM_Rb_GetBlockId"
	.byte	0x1
	.byte	0x14
	.byte	0x1
	.uaword	0x2cd
	.uaword	.LFB109
	.uaword	.LFE109
	.uaword	.LLST0
	.byte	0x1
	.uaword	0xcc9
	.uleb128 0x1a
	.string	"PersistentId"
	.byte	0x1
	.byte	0x14
	.uaword	0x208
	.uaword	.LLST1
	.uleb128 0x1a
	.string	"BlockIdPtr"
	.byte	0x1
	.byte	0x14
	.uaword	0xab0
	.uaword	.LLST2
	.uleb128 0x1b
	.string	"stReturn_u8"
	.byte	0x1
	.byte	0x17
	.uaword	0x2cd
	.uaword	.LLST3
	.uleb128 0x1c
	.string	"ptr_un"
	.byte	0x1
	.byte	0x19
	.uaword	0xab6
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x1d
	.uaword	.Ldebug_ranges0+0
	.uaword	0xca8
	.uleb128 0x1b
	.string	"left_u16"
	.byte	0x1
	.byte	0x1d
	.uaword	0x208
	.uaword	.LLST4
	.uleb128 0x1b
	.string	"right_s32"
	.byte	0x1
	.byte	0x1e
	.uaword	0x22c
	.uaword	.LLST5
	.uleb128 0x1b
	.string	"middle_u16"
	.byte	0x1
	.byte	0x1f
	.uaword	0x208
	.uaword	.LLST6
	.uleb128 0x1e
	.uaword	0xadc
	.uaword	.LBB10
	.uaword	.Ldebug_ranges0+0x20
	.byte	0x1
	.byte	0x25
	.uaword	0xc4b
	.uleb128 0x1f
	.uaword	0xb02
	.uaword	.LLST6
	.uleb128 0x20
	.uaword	.Ldebug_ranges0+0x20
	.uleb128 0x21
	.uaword	0xb0e
	.uaword	.LLST8
	.byte	0
	.byte	0
	.uleb128 0x22
	.uaword	0xadc
	.uaword	.LBB18
	.uaword	.LBE18
	.byte	0x1
	.byte	0x2b
	.uaword	0xc7b
	.uleb128 0x1f
	.uaword	0xb02
	.uaword	.LLST9
	.uleb128 0x23
	.uaword	.LBB19
	.uaword	.LBE19
	.uleb128 0x21
	.uaword	0xb0e
	.uaword	.LLST10
	.byte	0
	.byte	0
	.uleb128 0x24
	.uaword	0xb1b
	.uaword	.LBB20
	.uaword	.LBE20
	.byte	0x1
	.byte	0x27
	.uleb128 0x1f
	.uaword	0xb3c
	.uaword	.LLST11
	.uleb128 0x23
	.uaword	.LBB21
	.uaword	.LBE21
	.uleb128 0x21
	.uaword	0xb48
	.uaword	.LLST12
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.uaword	.LVL3
	.uaword	0xe3a
	.uleb128 0x26
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x26
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x3e
	.uleb128 0x26
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x26
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x9
	.byte	0xfa
	.byte	0
	.byte	0
	.uleb128 0x27
	.string	"NvM_Prv_Common_cst"
	.byte	0x7
	.uahalf	0x16d
	.uaword	0xce6
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.uaword	0x706
	.uleb128 0x28
	.uaword	0x928
	.uaword	0xcfb
	.uleb128 0x29
	.uaword	0x37e
	.byte	0x3b
	.byte	0
	.uleb128 0x27
	.string	"NvM_Prv_BlockDescriptors_acst"
	.byte	0x7
	.uahalf	0x172
	.uaword	0xd23
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.uaword	0xceb
	.uleb128 0x28
	.uaword	0x974
	.uaword	0xd38
	.uleb128 0x29
	.uaword	0x37e
	.byte	0x39
	.byte	0
	.uleb128 0x27
	.string	"NvM_Prv_PersId_BlockId_acst"
	.byte	0x7
	.uahalf	0x176
	.uaword	0xd5e
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.uaword	0xd28
	.uleb128 0x28
	.uaword	0x1dd
	.uaword	0xd73
	.uleb128 0x29
	.uaword	0x37e
	.byte	0x3b
	.byte	0
	.uleb128 0x2a
	.string	"NvM_Prv_stBlock_au8"
	.byte	0x9
	.byte	0x54
	.uaword	0xd63
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.uaword	0x208
	.uaword	0xda0
	.uleb128 0x29
	.uaword	0x37e
	.byte	0x3b
	.byte	0
	.uleb128 0x2a
	.string	"NvM_Prv_stRequests_au16"
	.byte	0x9
	.byte	0x6b
	.uaword	0xd90
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.uaword	0x3ce
	.uaword	0xdd1
	.uleb128 0x29
	.uaword	0x37e
	.byte	0x3b
	.byte	0
	.uleb128 0x2a
	.string	"NvM_Prv_stRequestResult_au8"
	.byte	0x9
	.byte	0x74
	.uaword	0xdc1
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.string	"NvM_Prv_idxDataSet_au8"
	.byte	0x9
	.byte	0x78
	.uaword	0xd63
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.string	"NvM_Prv_idConfigStored_u16"
	.byte	0x9
	.byte	0x81
	.uaword	0x208
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.byte	0x1
	.string	"NvM_Prv_ErrorDetection_IsPtrValid"
	.byte	0x8
	.byte	0x56
	.byte	0x1
	.uaword	0x29d
	.byte	0x1
	.uaword	0xe7f
	.uleb128 0xd
	.uaword	0x5f6
	.uleb128 0xd
	.uaword	0x3b6
	.uleb128 0xd
	.uaword	0x614
	.uleb128 0xd
	.uaword	0xe7f
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.uaword	0xe85
	.uleb128 0x8
	.uaword	0xab6
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
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
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
	.uleb128 0x38
	.uleb128 0xa
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
	.uleb128 0x17
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
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uaword	.LFB109
	.uaword	.LCFI0
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0
	.uaword	.LFE109
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL2
	.uaword	.LFE109
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL1
	.uaword	.LFE109
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL0
	.uaword	.LVL12
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL13
	.uaword	.LVL19
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LFE109
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL4
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL13
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL4
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL13
	.uaword	.LFE109
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL15
	.uaword	.LFE109
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL7
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL7
	.uaword	.LVL9
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL13
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL15
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL15
	.uaword	.LVL17
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL17
	.uaword	.LFE109
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x1c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB109
	.uaword	.LFE109-.LFB109
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB9
	.uaword	.LBE9
	.uaword	.LBB22
	.uaword	.LBE22
	.uaword	.LBB23
	.uaword	.LBE23
	.uaword	0
	.uaword	0
	.uaword	.LBB10
	.uaword	.LBE10
	.uaword	.LBB15
	.uaword	.LBE15
	.uaword	.LBB16
	.uaword	.LBE16
	.uaword	.LBB17
	.uaword	.LBE17
	.uaword	0
	.uaword	0
	.uaword	.LFB109
	.uaword	.LFE109
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF1:
	.string	"BlockId_u16"
.LASF0:
	.string	"PersistentId_u16"
.LASF2:
	.string	"idxPersistentId_u16"
	.extern	NvM_Prv_PersId_BlockId_acst,STT_OBJECT,232
	.extern	NvM_Prv_ErrorDetection_IsPtrValid,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
