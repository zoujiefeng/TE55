	.file	"NvM_MainFunctionArbitrate.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.NvM_Prv_MainFunctionArbitrate,"ax",@progbits
	.align 1
	.global	NvM_Prv_MainFunctionArbitrate
	.type	NvM_Prv_MainFunctionArbitrate, @function
NvM_Prv_MainFunctionArbitrate:
.LFB112:
	.file 1 "bsw\\NvM\\src\\ScheduledFunctions\\NvM_MainFunctionArbitrate.c"
	.loc 1 48 0
.LVL0:
	sub.a	%SP, 8
.LCFI0:
	.loc 1 48 0
	mov.aa	%a15, %a4
	.loc 1 49 0
	call	NvM_Prv_JobQueue_IsFull
.LVL1:
	jz	%d2, .L33
.L2:
	.loc 1 84 0
	call	NvM_Prv_JobQueue_IsEmpty
.LVL2:
	eq	%d2, %d2, 0
	ret
.L33:
.LBB14:
	.loc 1 51 0
	lea	%a4, [%SP] 8
	st.w	[+%a4]-4, %d2
	.loc 1 53 0
	call	NvM_Prv_RequestQueue_GetEntryToProcess
.LVL3:
	.loc 1 55 0
	ld.a	%a12, [%SP] 4
	.loc 1 53 0
	mov	%d15, %d2
.LVL4:
	.loc 1 55 0
	jz.a	%a12, .L3
	.loc 1 57 0
	mov	%d2, 2
.LVL5:
	st.b	[%a15]0, %d2
.LVL6:
.LBB15:
.LBB16:
	.loc 1 107 0
	ld.bu	%d9, [%a15] 1
.LVL7:
	.loc 1 110 0
	eq	%d8, %d15, 0
.LVL8:
	.loc 1 112 0
	call	NvM_Prv_JobQueue_IsEmpty
.LVL9:
	.loc 1 113 0
	jnz	%d2, .L4
	.loc 1 108 0
	eq	%d2, %d9, 0
	and.lt.u	%d2, %d9, %d15
	.loc 1 110 0
	ne	%d9, %d9, 0
.LVL10:
	and	%d9, %d8
	.loc 1 113 0
	or	%d9, %d2
	jnz	%d9, .L2
	.loc 1 115 0
	ld.bu	%d2, [%a15]0
	jeq	%d2, 3, .L2
.L4:
.LBB17:
	.loc 1 123 0
	ld.bu	%d2, [%a15] 2
	jnz	%d2, .L16
	.loc 1 125 0
	ld.bu	%d2, [%a12]0
	.loc 1 126 0
	st.b	[%a15] 1, %d15
	.loc 1 125 0
	st.b	[%a15] 2, %d2
.L16:
.LVL11:
.LBB18:
.LBB19:
	.loc 1 172 0
	jnz	%d8, .L34
.LVL12:
	.loc 1 182 0
	mov	%d4, 14
	ld.hu	%d5, [%a12] 2
	ld.hu	%d6, [%a12] 4
	call	NvM_Prv_ErrorDetection_IsServiceBitValid
.LVL13:
	jnz	%d2, .L35
.LVL14:
.L10:
.LBE19:
.LBE18:
	.loc 1 139 0
	mov	%d2, 0
	st.b	[%a15] 2, %d2
	.loc 1 140 0
	mov	%d2, 2
	st.b	[%a15] 1, %d2
.L11:
	.loc 1 144 0
	or.ne	%d8, %d15, 0
	jz	%d8, .L2
	.loc 1 148 0
	mov	%d4, %d15
	call	NvM_Prv_RequestQueue_Dequeue
.LVL15:
	j	.L2
.LVL16:
.L34:
.LBB22:
.LBB20:
	.loc 1 175 0
	mov.aa	%a4, %a12
	call	NvM_Prv_Multi_Process
.LVL17:
.L9:
.LBE20:
.LBE22:
	.loc 1 131 0
	eq	%d3, %d2, 14
	mov	%d8, 0
	jnz	%d3, .L11
	.loc 1 133 0
	ne	%d3, %d2, 0
	and.ne	%d3, %d2, 15
	jz	%d3, .L36
	.loc 1 135 0
	mov	%d4, %d2
	mov.aa	%a4, %a12
	mov	%d5, %d15
	call	NvM_Prv_Job_Prepare
.LVL18:
	j	.L11
.LVL19:
.L3:
.LBE17:
.LBE16:
.LBE15:
	.loc 1 62 0
	call	NvM_Prv_JobQueue_IsEmpty
.LVL20:
	jz	%d2, .L2
.LBB26:
	.loc 1 67 0
	mov.d	%d15, %a12
.LVL21:
	.loc 1 71 0
	lea	%a4, [%SP] 2
	.loc 1 67 0
	st.b	[%a15] 2, %d15
	.loc 1 68 0
	mov	%d15, 2
	st.b	[%a15] 1, %d15
	.loc 1 71 0
	call	NvM_Prv_Crc_IsRamBlockCrcRecalcRequired
.LVL22:
	jnz	%d2, .L37
	.loc 1 78 0
	mov	%d15, 1
	st.b	[%a15]0, %d15
	j	.L2
.LVL23:
.L35:
.LBE26:
.LBB27:
.LBB25:
.LBB24:
.LBB23:
.LBB21:
	.loc 1 187 0
	ld.hu	%d4, [%a12] 4
	call	NvM_Prv_GetJobId
.LVL24:
	j	.L9
.LVL25:
.L37:
.LBE21:
.LBE23:
.LBE24:
.LBE25:
.LBE27:
.LBB28:
	.loc 1 73 0
	mov	%d15, 3
	st.b	[%a15]0, %d15
	.loc 1 74 0
	ld.hu	%d4, [%SP] 2
	call	NvM_Prv_Job_StartRecalcRamBlkCrc
.LVL26:
	j	.L2
.LVL27:
.L36:
	eq	%d8, %d2, 0
	j	.L10
.LBE28:
.LBE14:
.LFE112:
	.size	NvM_Prv_MainFunctionArbitrate, .-NvM_Prv_MainFunctionArbitrate
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
	.byte	0x4
	.uaword	.LCFI0-.LFB112
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE0:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 4 ".\\output\\inc/..\\..\\rte\\Rte_Type.h"
	.file 5 ".\\output\\inc/..\\..\\bsw\\NvM\\api\\NvM_Types.h"
	.file 6 ".\\output\\inc/..\\..\\bsw\\NvM\\src\\Internal\\BlockData\\NvM_Prv_BlockDescriptor.h"
	.file 7 ".\\output\\inc/..\\..\\bsw\\NvM\\integration\\NvM_Cfg_SchM.h"
	.file 8 ".\\output\\inc/..\\..\\bsw\\NvM\\src\\Internal\\BlockData\\NvM_Prv_BlockData.h"
	.file 9 ".\\output\\inc/..\\..\\bsw\\NvM\\src\\Internal\\ErrorDetection\\NvM_Prv_ErrorDetection.h"
	.file 10 ".\\output\\inc/..\\..\\bsw\\NvM\\src\\Internal\\ProcessMultiBlock\\NvM_Prv_ProcessMultiBlock.h"
	.file 11 ".\\output\\inc/..\\..\\bsw\\NvM\\src\\NvM_Prv.h"
	.file 12 ".\\output\\inc/..\\..\\bsw\\NvM\\src\\Internal\\QueueHandling\\NvM_Prv_RequestQueue.h"
	.file 13 ".\\output\\inc/..\\..\\bsw\\NvM\\src\\Internal\\JobHandling\\NvM_Prv_Job.h"
	.file 14 ".\\output\\inc/..\\..\\bsw\\NvM\\src\\Internal\\Crc\\NvM_Prv_Crc.h"
	.file 15 ".\\output\\inc/..\\..\\bsw\\NvM\\src\\Internal\\QueueHandling\\NvM_Prv_JobQueue.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x1264
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\NvM\\src\\ScheduledFunctions\\NvM_MainFunctionArbitrate.c"
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
	.byte	0x2
	.byte	0x51
	.uaword	0x1e5
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
	.byte	0x2
	.byte	0x5b
	.uaword	0x211
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
	.byte	0x2
	.byte	0x6a
	.uaword	0x24d
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
	.byte	0x2
	.byte	0x80
	.uaword	0x1e5
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
	.byte	0x3
	.byte	0x60
	.uaword	0x1d8
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x4
	.byte	0x4
	.uleb128 0x5
	.byte	0x4
	.uaword	0x1d8
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2ea
	.uleb128 0x6
	.uaword	0x203
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2f5
	.uleb128 0x7
	.uleb128 0x8
	.string	"NvM_BlockIdType"
	.byte	0x4
	.uahalf	0x1ca
	.uaword	0x203
	.uleb128 0x8
	.string	"NvM_RequestResultType"
	.byte	0x4
	.uahalf	0x1d4
	.uaword	0x1d8
	.uleb128 0x5
	.byte	0x4
	.uaword	0x332
	.uleb128 0x9
	.byte	0x1
	.uaword	0x2ba
	.uleb128 0x5
	.byte	0x4
	.uaword	0x33e
	.uleb128 0xa
	.byte	0x1
	.uaword	0x2ba
	.uaword	0x34e
	.uleb128 0xb
	.uaword	0x1d8
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.byte	0x5
	.byte	0xa2
	.uaword	0x394
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
	.byte	0x5
	.byte	0xa6
	.uaword	0x34e
	.uleb128 0xc
	.byte	0x1
	.byte	0x5
	.byte	0xab
	.uaword	0x429
	.uleb128 0xd
	.string	"NVM_PRV_ACTIVITY_NOT_INIT"
	.sleb128 0
	.uleb128 0xd
	.string	"NVM_PRV_ACTIVITY_IDLE"
	.sleb128 1
	.uleb128 0xd
	.string	"NVM_PRV_ACTIVITY_BUSY"
	.sleb128 2
	.uleb128 0xd
	.string	"NVM_PRV_ACTIVITY_RAM_BLOCK_CRC"
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.string	"NvM_Prv_Activities_ten"
	.byte	0x5
	.byte	0xb0
	.uaword	0x3b3
	.uleb128 0xe
	.byte	0x1
	.byte	0x5
	.uahalf	0x106
	.uaword	0x659
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
	.byte	0x5
	.uahalf	0x111
	.uaword	0x447
	.uleb128 0x8
	.string	"NvM_Prv_ServiceBit_tuo"
	.byte	0x5
	.uahalf	0x147
	.uaword	0x203
	.uleb128 0x8
	.string	"NvM_Prv_idService_tuo"
	.byte	0x5
	.uahalf	0x14c
	.uaword	0x1d8
	.uleb128 0xe
	.byte	0x1
	.byte	0x5
	.uahalf	0x159
	.uaword	0x70e
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
	.byte	0x5
	.uahalf	0x174
	.uaword	0x1d8
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.uahalf	0x180
	.uaword	0x763
	.uleb128 0x10
	.string	"ptrRamBlock_pv"
	.byte	0x5
	.uahalf	0x182
	.uaword	0x2dc
	.uleb128 0x10
	.string	"ptrRamBlock_pu8"
	.byte	0x5
	.uahalf	0x183
	.uaword	0x2de
	.byte	0
	.uleb128 0x8
	.string	"NvM_Prv_ptrRamBlock_tun"
	.byte	0x5
	.uahalf	0x185
	.uaword	0x72a
	.uleb128 0x11
	.byte	0xc
	.byte	0x5
	.uahalf	0x191
	.uaword	0x7e5
	.uleb128 0x12
	.string	"idService_uo"
	.byte	0x5
	.uahalf	0x194
	.uaword	0x692
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.uaword	.LASF0
	.byte	0x5
	.uahalf	0x197
	.uaword	0x2f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x12
	.string	"ServiceBit_uo"
	.byte	0x5
	.uahalf	0x19a
	.uaword	0x673
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.string	"BlockData_un"
	.byte	0x5
	.uahalf	0x19e
	.uaword	0x763
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x8
	.string	"NvM_Prv_QueueEntry_tst"
	.byte	0x5
	.uahalf	0x1a0
	.uaword	0x783
	.uleb128 0x11
	.byte	0x4
	.byte	0x5
	.uahalf	0x1a5
	.uaword	0x865
	.uleb128 0x12
	.string	"Activity_rAMwM_en"
	.byte	0x5
	.uahalf	0x1aa
	.uaword	0x429
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.string	"idQueueActive_uo"
	.byte	0x5
	.uahalf	0x1ac
	.uaword	0x70e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x12
	.string	"idServiceActive_uo"
	.byte	0x5
	.uahalf	0x1ae
	.uaword	0x692
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x8
	.string	"NvM_Prv_MainStates_tst"
	.byte	0x5
	.uahalf	0x1b0
	.uaword	0x804
	.uleb128 0x5
	.byte	0x4
	.uaword	0x88a
	.uleb128 0xa
	.byte	0x1
	.uaword	0x2ba
	.uaword	0x89a
	.uleb128 0xb
	.uaword	0x2dc
	.byte	0
	.uleb128 0x14
	.byte	0xc
	.byte	0x6
	.byte	0x77
	.uaword	0x90e
	.uleb128 0x15
	.string	"MultiBlockCallback_pfct"
	.byte	0x6
	.byte	0x7f
	.uaword	0x91f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"RbMultiBlockStartCallback_pfct"
	.byte	0x6
	.byte	0x84
	.uaword	0x931
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.string	"ObserverCallback_pfct"
	.byte	0x6
	.byte	0x8a
	.uaword	0x951
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.uaword	0x91f
	.uleb128 0xb
	.uaword	0x1d8
	.uleb128 0xb
	.uaword	0x30e
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x90e
	.uleb128 0x16
	.byte	0x1
	.uaword	0x931
	.uleb128 0xb
	.uaword	0x1d8
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x925
	.uleb128 0xa
	.byte	0x1
	.uaword	0x2ba
	.uaword	0x951
	.uleb128 0xb
	.uaword	0x2f6
	.uleb128 0xb
	.uaword	0x1d8
	.uleb128 0xb
	.uaword	0x30e
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x937
	.uleb128 0x3
	.string	"NvM_Prv_Common_tst"
	.byte	0x6
	.byte	0x8d
	.uaword	0x89a
	.uleb128 0x14
	.byte	0x34
	.byte	0x6
	.byte	0x95
	.uaword	0xb53
	.uleb128 0x15
	.string	"idBlockMemIf_u16"
	.byte	0x6
	.byte	0x9b
	.uaword	0x203
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"nrBlockBytes_pu16"
	.byte	0x6
	.byte	0xa9
	.uaword	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.string	"nrBlockBytesStored_u16"
	.byte	0x6
	.byte	0xb5
	.uaword	0x203
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x15
	.string	"idxDevice_u8"
	.byte	0x6
	.byte	0xbb
	.uaword	0x1d8
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x15
	.string	"nrNvBlocks_u8"
	.byte	0x6
	.byte	0xc0
	.uaword	0x1d8
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0x15
	.string	"nrRomBlocks_u8"
	.byte	0x6
	.byte	0xc5
	.uaword	0x1d8
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x15
	.string	"adrRamBlock_ppv"
	.byte	0x6
	.byte	0xd6
	.uaword	0xb53
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x15
	.string	"adrRomBlock_pcv"
	.byte	0x6
	.byte	0xde
	.uaword	0x2ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x15
	.string	"SingleBlockCallback_pfct"
	.byte	0x6
	.byte	0xe8
	.uaword	0xb73
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x15
	.string	"SingleBlockStartCallback_pfct"
	.byte	0x6
	.byte	0xf0
	.uaword	0x338
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x15
	.string	"InitBlockCallback_pfct"
	.byte	0x6
	.byte	0xf9
	.uaword	0x32c
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x12
	.string	"ReadRamBlockFromNvm_pfct"
	.byte	0x6
	.uahalf	0x102
	.uaword	0x884
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x12
	.string	"WriteRamBlockToNvm_pfct"
	.byte	0x6
	.uahalf	0x10b
	.uaword	0x884
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x12
	.string	"BlockManagementType_en"
	.byte	0x6
	.uahalf	0x110
	.uaword	0x394
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x12
	.string	"JobPriority_u8"
	.byte	0x6
	.uahalf	0x115
	.uaword	0x1d8
	.byte	0x2
	.byte	0x23
	.uleb128 0x2d
	.uleb128 0x12
	.string	"stFlags_uo"
	.byte	0x6
	.uahalf	0x13e
	.uaword	0x23f
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0xb59
	.uleb128 0x6
	.uaword	0x2dc
	.uleb128 0xa
	.byte	0x1
	.uaword	0x2ba
	.uaword	0xb73
	.uleb128 0xb
	.uaword	0x1d8
	.uleb128 0xb
	.uaword	0x30e
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0xb5e
	.uleb128 0x8
	.string	"NvM_Prv_BlockDescriptor_tst"
	.byte	0x6
	.uahalf	0x153
	.uaword	0x971
	.uleb128 0x11
	.byte	0x4
	.byte	0x6
	.uahalf	0x158
	.uaword	0xbda
	.uleb128 0x12
	.string	"PersistentId_u16"
	.byte	0x6
	.uahalf	0x15a
	.uaword	0x203
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.string	"BlockId_u16"
	.byte	0x6
	.uahalf	0x15b
	.uaword	0x2f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x8
	.string	"NvM_Prv_PersId_BlockId_tst"
	.byte	0x6
	.uahalf	0x15c
	.uaword	0xb9d
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2f6
	.uleb128 0x17
	.string	"SchM_Enter_NvM_Main"
	.byte	0x7
	.byte	0x20
	.byte	0x1
	.byte	0x3
	.uleb128 0x17
	.string	"SchM_Exit_NvM_Main"
	.byte	0x7
	.byte	0x25
	.byte	0x1
	.byte	0x3
	.uleb128 0x18
	.string	"NvM_Prv_GetNextRequest"
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.byte	0x3
	.uaword	0xce0
	.uleb128 0x19
	.uaword	.LASF1
	.byte	0x1
	.byte	0x5f
	.uaword	0x70e
	.uleb128 0x19
	.uaword	.LASF2
	.byte	0x1
	.byte	0x60
	.uaword	0xce0
	.uleb128 0x19
	.uaword	.LASF3
	.byte	0x1
	.byte	0x61
	.uaword	0xce6
	.uleb128 0x1a
	.string	"isRequestToDefer_b"
	.byte	0x1
	.byte	0x63
	.uaword	0x28a
	.uleb128 0x1a
	.string	"hasNextReqHigherPrio_b"
	.byte	0x1
	.byte	0x6b
	.uaword	0x28a
	.uleb128 0x1a
	.string	"isNextMultiReqPossible_b"
	.byte	0x1
	.byte	0x6d
	.uaword	0x28a
	.uleb128 0x1b
	.uleb128 0x1a
	.string	"idJob_en"
	.byte	0x1
	.byte	0x79
	.uaword	0x659
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x7e5
	.uleb128 0x5
	.byte	0x4
	.uaword	0x865
	.uleb128 0x1c
	.string	"NvM_Prv_GetNextJob"
	.byte	0x1
	.byte	0xa7
	.byte	0x1
	.uaword	0x659
	.byte	0x3
	.uaword	0xd42
	.uleb128 0x19
	.uaword	.LASF1
	.byte	0x1
	.byte	0xa7
	.uaword	0x70e
	.uleb128 0x1d
	.string	"QueueEntry_pst"
	.byte	0x1
	.byte	0xa8
	.uaword	0xce0
	.uleb128 0x1a
	.string	"idJobNext_en"
	.byte	0x1
	.byte	0xaa
	.uaword	0x659
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.string	"NvM_Prv_MainFunctionArbitrate"
	.byte	0x1
	.byte	0x2f
	.byte	0x1
	.uaword	0x28a
	.uaword	.LFB112
	.uaword	.LFE112
	.uaword	.LLST0
	.byte	0x1
	.uaword	0xf12
	.uleb128 0x1f
	.uaword	.LASF3
	.byte	0x1
	.byte	0x2f
	.uaword	0xce6
	.uaword	.LLST1
	.uleb128 0x20
	.uaword	.LBB14
	.uaword	.LBE14
	.uaword	0xeff
	.uleb128 0x21
	.uaword	.LASF2
	.byte	0x1
	.byte	0x33
	.uaword	0xce0
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x22
	.uaword	.LASF1
	.byte	0x1
	.byte	0x35
	.uaword	0x70e
	.uaword	.LLST2
	.uleb128 0x23
	.uaword	0xc34
	.uaword	.LBB15
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x3a
	.uaword	0xeac
	.uleb128 0x24
	.uaword	0xc6a
	.uaword	.LLST3
	.uleb128 0x24
	.uaword	0xc5f
	.uaword	.LLST4
	.uleb128 0x24
	.uaword	0xc54
	.uaword	.LLST5
	.uleb128 0x25
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x26
	.uaword	0xc75
	.uaword	.LLST6
	.uleb128 0x26
	.uaword	0xc8f
	.uaword	.LLST7
	.uleb128 0x26
	.uaword	0xcad
	.uaword	.LLST8
	.uleb128 0x27
	.uaword	.Ldebug_ranges0+0x18
	.uaword	0xea1
	.uleb128 0x28
	.uaword	0xcce
	.byte	0x1
	.byte	0x52
	.uleb128 0x23
	.uaword	0xcec
	.uaword	.LBB18
	.uaword	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0x81
	.uaword	0xe76
	.uleb128 0x24
	.uaword	0xd17
	.uaword	.LLST9
	.uleb128 0x24
	.uaword	0xd0c
	.uaword	.LLST10
	.uleb128 0x25
	.uaword	.Ldebug_ranges0+0x30
	.uleb128 0x26
	.uaword	0xd2d
	.uaword	.LLST11
	.uleb128 0x29
	.uaword	.LVL13
	.uaword	0x1083
	.uaword	0xe57
	.uleb128 0x2a
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3e
	.byte	0
	.uleb128 0x29
	.uaword	.LVL17
	.uaword	0x10ca
	.uaword	0xe6b
	.uleb128 0x2a
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.uaword	.LVL24
	.uaword	0x10f4
	.byte	0
	.byte	0
	.uleb128 0x29
	.uaword	.LVL15
	.uaword	0x1119
	.uaword	0xe8a
	.uleb128 0x2a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x2c
	.uaword	.LVL18
	.uaword	0x1146
	.uleb128 0x2a
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x2a
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	.LVL9
	.uaword	0x1174
	.byte	0
	.byte	0
	.uleb128 0x27
	.uaword	.Ldebug_ranges0+0x50
	.uaword	0xee1
	.uleb128 0x21
	.uaword	.LASF0
	.byte	0x1
	.byte	0x41
	.uaword	0x2f6
	.byte	0x2
	.byte	0x91
	.sleb128 -6
	.uleb128 0x29
	.uaword	.LVL22
	.uaword	0x1197
	.uaword	0xed7
	.uleb128 0x2a
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -6
	.byte	0
	.uleb128 0x2b
	.uaword	.LVL26
	.uaword	0x11d3
	.byte	0
	.uleb128 0x29
	.uaword	.LVL3
	.uaword	0x1204
	.uaword	0xef5
	.uleb128 0x2a
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.byte	0
	.uleb128 0x2b
	.uaword	.LVL20
	.uaword	0x1174
	.byte	0
	.uleb128 0x2b
	.uaword	.LVL1
	.uaword	0x1245
	.uleb128 0x2b
	.uaword	.LVL2
	.uaword	0x1174
	.byte	0
	.uleb128 0x2d
	.string	"NvM_Prv_Common_cst"
	.byte	0x6
	.uahalf	0x16d
	.uaword	0xf2f
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.uaword	0x957
	.uleb128 0x2e
	.uaword	0xb79
	.uaword	0xf44
	.uleb128 0x2f
	.uaword	0x2d0
	.byte	0x3b
	.byte	0
	.uleb128 0x2d
	.string	"NvM_Prv_BlockDescriptors_acst"
	.byte	0x6
	.uahalf	0x172
	.uaword	0xf6c
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.uaword	0xf34
	.uleb128 0x2e
	.uaword	0xbda
	.uaword	0xf81
	.uleb128 0x2f
	.uaword	0x2d0
	.byte	0x39
	.byte	0
	.uleb128 0x2d
	.string	"NvM_Prv_PersId_BlockId_acst"
	.byte	0x6
	.uahalf	0x176
	.uaword	0xfa7
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.uaword	0xf71
	.uleb128 0x2e
	.uaword	0x1d8
	.uaword	0xfbc
	.uleb128 0x2f
	.uaword	0x2d0
	.byte	0x3b
	.byte	0
	.uleb128 0x30
	.string	"NvM_Prv_stBlock_au8"
	.byte	0x8
	.byte	0x54
	.uaword	0xfac
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.uaword	0x203
	.uaword	0xfe9
	.uleb128 0x2f
	.uaword	0x2d0
	.byte	0x3b
	.byte	0
	.uleb128 0x30
	.string	"NvM_Prv_stRequests_au16"
	.byte	0x8
	.byte	0x6b
	.uaword	0xfd9
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.uaword	0x30e
	.uaword	0x101a
	.uleb128 0x2f
	.uaword	0x2d0
	.byte	0x3b
	.byte	0
	.uleb128 0x30
	.string	"NvM_Prv_stRequestResult_au8"
	.byte	0x8
	.byte	0x74
	.uaword	0x100a
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.string	"NvM_Prv_idxDataSet_au8"
	.byte	0x8
	.byte	0x78
	.uaword	0xfac
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.string	"NvM_Prv_idConfigStored_u16"
	.byte	0x8
	.byte	0x81
	.uaword	0x203
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.byte	0x1
	.string	"NvM_Prv_ErrorDetection_IsServiceBitValid"
	.byte	0x9
	.byte	0x4a
	.byte	0x1
	.uaword	0x28a
	.byte	0x1
	.uaword	0x10ca
	.uleb128 0xb
	.uaword	0x692
	.uleb128 0xb
	.uaword	0x2f6
	.uleb128 0xb
	.uaword	0x673
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"NvM_Prv_Multi_Process"
	.byte	0xa
	.byte	0x1a
	.byte	0x1
	.uaword	0x659
	.byte	0x1
	.uaword	0x10f4
	.uleb128 0xb
	.uaword	0xce0
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"NvM_Prv_GetJobId"
	.byte	0xb
	.byte	0x6f
	.byte	0x1
	.uaword	0x659
	.byte	0x1
	.uaword	0x1119
	.uleb128 0xb
	.uaword	0x673
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.string	"NvM_Prv_RequestQueue_Dequeue"
	.byte	0xc
	.byte	0x17
	.byte	0x1
	.byte	0x1
	.uaword	0x1146
	.uleb128 0xb
	.uaword	0x70e
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.string	"NvM_Prv_Job_Prepare"
	.byte	0xd
	.byte	0x14
	.byte	0x1
	.byte	0x1
	.uaword	0x1174
	.uleb128 0xb
	.uaword	0x659
	.uleb128 0xb
	.uaword	0xce0
	.uleb128 0xb
	.uaword	0x70e
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.string	"NvM_Prv_JobQueue_IsEmpty"
	.byte	0xf
	.byte	0x1b
	.byte	0x1
	.uaword	0x28a
	.byte	0x1
	.uleb128 0x31
	.byte	0x1
	.string	"NvM_Prv_Crc_IsRamBlockCrcRecalcRequired"
	.byte	0xe
	.byte	0x1a
	.byte	0x1
	.uaword	0x28a
	.byte	0x1
	.uaword	0x11d3
	.uleb128 0xb
	.uaword	0xbfd
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.string	"NvM_Prv_Job_StartRecalcRamBlkCrc"
	.byte	0xd
	.byte	0x12
	.byte	0x1
	.byte	0x1
	.uaword	0x1204
	.uleb128 0xb
	.uaword	0x2f6
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"NvM_Prv_RequestQueue_GetEntryToProcess"
	.byte	0xc
	.byte	0x19
	.byte	0x1
	.uaword	0x70e
	.byte	0x1
	.uaword	0x123f
	.uleb128 0xb
	.uaword	0x123f
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0xce0
	.uleb128 0x33
	.byte	0x1
	.string	"NvM_Prv_JobQueue_IsFull"
	.byte	0xf
	.byte	0x19
	.byte	0x1
	.uaword	0x28a
	.byte	0x1
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
	.uleb128 0xb
	.byte	0x1
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0xb
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
	.uleb128 0xb
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LFB112
	.uaword	.LCFI0
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0
	.uaword	.LFE112
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL1-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL1-1
	.uaword	.LFE112
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL5
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL19
	.uaword	.LVL20-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL20-1
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL23
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL27
	.uaword	.LFE112
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL6
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL23
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL27
	.uaword	.LFE112
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL6
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL23
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL27
	.uaword	.LFE112
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL6
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL23
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL27
	.uaword	.LFE112
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL6
	.uaword	.LVL19
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL23
	.uaword	.LVL25
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL27
	.uaword	.LFE112
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL7
	.uaword	.LVL10
	.uahalf	0x13
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x79
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x2b
	.byte	0x79
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x30
	.byte	0x29
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL8
	.uaword	.LVL10
	.uahalf	0xa
	.byte	0x79
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x30
	.byte	0x2e
	.byte	0x78
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL11
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL23
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL27
	.uaword	.LFE112
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL11
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL23
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL27
	.uaword	.LFE112
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LVL14
	.uahalf	0x2
	.byte	0x3f
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL17
	.uaword	.LVL18-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x2
	.byte	0x3f
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL27
	.uaword	.LFE112
	.uahalf	0x1
	.byte	0x52
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
	.uaword	.LFB112
	.uaword	.LFE112-.LFB112
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB15
	.uaword	.LBE15
	.uaword	.LBB27
	.uaword	.LBE27
	.uaword	0
	.uaword	0
	.uaword	.LBB17
	.uaword	.LBE17
	.uaword	.LBB24
	.uaword	.LBE24
	.uaword	0
	.uaword	0
	.uaword	.LBB18
	.uaword	.LBE18
	.uaword	.LBB22
	.uaword	.LBE22
	.uaword	.LBB23
	.uaword	.LBE23
	.uaword	0
	.uaword	0
	.uaword	.LBB26
	.uaword	.LBE26
	.uaword	.LBB28
	.uaword	.LBE28
	.uaword	0
	.uaword	0
	.uaword	.LFB112
	.uaword	.LFE112
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF1:
	.string	"idReqQueue_uo"
.LASF2:
	.string	"Request_pst"
.LASF3:
	.string	"MainStates_pst"
.LASF0:
	.string	"idBlock_uo"
	.extern	NvM_Prv_Job_StartRecalcRamBlkCrc,STT_FUNC,0
	.extern	NvM_Prv_GetJobId,STT_FUNC,0
	.extern	NvM_Prv_Crc_IsRamBlockCrcRecalcRequired,STT_FUNC,0
	.extern	NvM_Prv_Job_Prepare,STT_FUNC,0
	.extern	NvM_Prv_Multi_Process,STT_FUNC,0
	.extern	NvM_Prv_RequestQueue_Dequeue,STT_FUNC,0
	.extern	NvM_Prv_ErrorDetection_IsServiceBitValid,STT_FUNC,0
	.extern	NvM_Prv_RequestQueue_GetEntryToProcess,STT_FUNC,0
	.extern	NvM_Prv_JobQueue_IsEmpty,STT_FUNC,0
	.extern	NvM_Prv_JobQueue_IsFull,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
