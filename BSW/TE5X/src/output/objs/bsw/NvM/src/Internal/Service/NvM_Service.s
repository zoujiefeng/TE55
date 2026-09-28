	.file	"NvM_Service.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.NvM_Prv_Service_InitiateMulti,"ax",@progbits
	.align 1
	.global	NvM_Prv_Service_InitiateMulti
	.type	NvM_Prv_Service_InitiateMulti, @function
NvM_Prv_Service_InitiateMulti:
.LFB111:
	.file 1 "bsw\\NvM\\src\\Internal\\Service\\NvM_Service.c"
	.loc 1 74 0
.LVL0:
	.loc 1 74 0
	mov	%d15, %d4
	.loc 1 75 0
	mov	%d5, 0
	ld.bu	%d4, [%a4]0
.LVL1:
	.loc 1 74 0
	mov.aa	%a15, %a4
	mov.aa	%a12, %a5
	.loc 1 75 0
	call	NvM_Prv_ErrorDetection_IsNvmInitialized
.LVL2:
	jz	%d2, .L1
.LVL3:
.LBB15:
	mov	%d2, 0
	.loc 1 77 0
	mov	%d8, 0
	.loc 1 81 0
	jz	%d15, .L13
.LVL4:
	.loc 1 86 0
	or.eq	%d2, %d15, 2
.LVL5:
	jnz	%d2, .L14
.LVL6:
.L5:
	.loc 1 94 0
	or	%d15, %d8
	and	%d15, 255
	jz	%d15, .L15
.L1:
	ret
.L14:
	.loc 1 88 0
	ld.a	%a2, [%a12]0
	.loc 1 94 0
	or	%d15, %d8
	and	%d15, 255
	.loc 1 88 0
	calli	%a2
.LVL7:
	.loc 1 94 0
	jz	%d15, .L6
.L9:
	.loc 1 104 0
	ld.a	%a15, [%a12] 4
.LVL8:
	ji	%a15
.LVL9:
.L13:
	.loc 1 83 0
	mov	%d4, 0
	mov.aa	%a4, %a15
	call	NvM_Prv_RequestQueue_Enqueue
.LVL10:
	mov	%d8, %d2
.LVL11:
	ne	%d2, %d2, 0
.LVL12:
	.loc 1 86 0
	or.eq	%d2, %d15, 2
	jz	%d2, .L5
	j	.L14
.LVL13:
.L15:
.LBB16:
	.loc 1 97 0
	ld.bu	%d4, [%a15]0
	ld.hu	%d5, [%a15] 2
	mov	%d6, 4
	j	NvM_Prv_ErrorDetection_ReportServiceInitiationErrors
.LVL14:
.L6:
	ld.bu	%d4, [%a15]0
	ld.hu	%d5, [%a15] 2
	mov	%d6, 4
	call	NvM_Prv_ErrorDetection_ReportServiceInitiationErrors
.LVL15:
	j	.L9
.LBE16:
.LBE15:
.LFE111:
	.size	NvM_Prv_Service_InitiateMulti, .-NvM_Prv_Service_InitiateMulti
.section .text.NvM_Prv_Service_Initiate,"ax",@progbits
	.align 1
	.global	NvM_Prv_Service_Initiate
	.type	NvM_Prv_Service_Initiate, @function
NvM_Prv_Service_Initiate:
.LFB112:
	.loc 1 112 0
.LVL16:
	.loc 1 116 0
	mov.d	%d2, %a5
	mov.d	%d3, %a4
	ne	%d15, %d2, 0
	and.ne	%d15, %d3, 0
	.loc 1 112 0
	sub.a	%SP, 16
.LCFI0:
	.loc 1 116 0
	jnz	%d15, .L54
.LVL17:
.L19:
	.loc 1 113 0
	mov	%d2, 1
.LVL18:
	ret
.LVL19:
.L54:
	.loc 1 119 0
	ld.hu	%d15, [%a4] 2
	ld.bu	%d8, [%a4]0
	mov	%d9, %d4
.LVL20:
.LBB29:
.LBB30:
	.loc 1 155 0
	mov	%e4, %d15, %d8
.LVL21:
	mov.aa	%a12, %a5
	mov.aa	%a15, %a4
	call	NvM_Prv_ErrorDetection_IsNvmInitialized
.LVL22:
	jz	%d2, .L19
	.loc 1 157 0
	mov	%e4, %d15, %d8
	mov	%d6, 0
	call	NvM_Prv_ErrorDetection_IsBlockIdValid
.LVL23:
	jz	%d2, .L19
	.loc 1 159 0
	jlt.u	%d9, 2, .L55
.L20:
.LVL24:
.LBE30:
.LBE29:
.LBB35:
	.loc 1 125 0
	ld.a	%a2, [%a12] 4
	jz.a	%a2, .L32
	.loc 1 127 0
	mov.aa	%a4, %a15
	calli	%a2
.LVL25:
	.loc 1 130 0
	jz	%d2, .L19
.LVL26:
.L32:
.LBB36:
.LBB37:
	.loc 1 203 0
	ld.a	%a2, [%a12] 8
	.loc 1 190 0
	mov	%d15, 0
.LVL27:
	st.b	[%SP] 15, %d15
.LVL28:
	.loc 1 193 0
	ld.hu	%d8, [%a15] 2
.LVL29:
	.loc 1 203 0
	jz.a	%a2, .L26
	.loc 1 205 0
	mov.aa	%a4, %a15
	lea	%a5, [%SP] 15
	calli	%a2
.LVL30:
	.loc 1 208 0
	jnz	%d2, .L26
	ld.bu	%d6, [%SP] 15
	.loc 1 187 0
	mov	%d2, 1
.LVL31:
.L27:
	.loc 1 232 0
	ld.bu	%d4, [%a15]0
	ld.hu	%d5, [%a15] 2
	st.w	[%SP] 4, %d2
	call	NvM_Prv_ErrorDetection_ReportServiceInitiationErrors
.LVL32:
	ld.w	%d2, [%SP] 4
	ret
.LVL33:
.L26:
	.loc 1 215 0
	ld.bu	%d15, [%a12]0
	jnz	%d15, .L56
.L25:
	.loc 1 222 0
	ld.a	%a12, [%a12] 12
.LVL34:
.LBB38:
.LBB39:
	.loc 1 248 0
	jlt.u	%d9, 2, .L57
.LVL35:
.L34:
	.loc 1 256 0
	jz.a	%a12, .L51
	.loc 1 258 0
	mov.aa	%a4, %a15
	calli	%a12
.LVL36:
.L51:
	ld.bu	%d6, [%SP] 15
	.loc 1 260 0
	mov	%d2, 0
	j	.L27
.LVL37:
.L57:
	.loc 1 251 0
	mov	%d4, %d9
	mov.aa	%a4, %a15
	call	NvM_Prv_RequestQueue_Enqueue
.LVL38:
	.loc 1 254 0
	jnz	%d2, .L34
	.loc 1 264 0
	ld.bu	%d6, [%SP] 15
	.loc 1 244 0
	mov	%d2, 1
.LVL39:
	.loc 1 264 0
	or	%d6, %d6, 4
	and	%d6, %d6, 255
	st.b	[%SP] 15, %d6
	j	.L27
.LVL40:
.L55:
.LBE39:
.LBE38:
.LBE37:
.LBE36:
.LBE35:
.LBB46:
.LBB34:
.LBB31:
.LBB32:
.LBB33:
	.file 2 ".\\output\\inc/..\\..\\bsw\\NvM\\src\\Internal\\BlockData\\NvM_Prv_BlockDescriptor_Inl.h"
	.loc 2 113 0
	ge.u	%d2, %d15, 60
	jnz	%d2, .L21
	movh.a	%a2, hi:NvM_Prv_BlockDescriptors_acst
	mov.d	%d3, %a2
	addi	%d2, %d3, lo:NvM_Prv_BlockDescriptors_acst
	madd	%d3, %d2, %d15, 52
	mov.a	%a2, %d3
	ld.a	%a2, [%a2] 4
	.loc 2 112 0
	jz.a	%a2, .L21
	.loc 2 113 0
	ld.hu	%d2, [%a2]0
	jz	%d2, .L21
.LBE33:
.LBE32:
	.loc 1 167 0
	mov	%d4, %d15
	call	NvM_Prv_IsSanitizedByReadAll
.LVL41:
	.loc 1 169 0
	jnz	%d2, .L20
	j	.L19
.LVL42:
.L21:
	.loc 1 167 0
	mov	%d4, %d15
	call	NvM_Prv_IsSanitizedByReadAll
.LVL43:
.LBE31:
.LBE34:
.LBE46:
	.loc 1 113 0
	mov	%d2, 1
.LBB47:
	ret
.LVL44:
.L56:
.LBB45:
.LBB44:
.LBB40:
.LBB41:
	.file 3 ".\\output\\inc/..\\..\\bsw\\NvM\\src\\Internal\\BlockData\\NvM_Prv_BlockData_Inl.h"
	.loc 3 338 0
	mov	%d4, %d8
	call	NvM_Prv_Block_IsNvmEnqueuingForMulti
.LVL45:
	jnz	%d2, .L28
	.loc 3 339 0
	movh.a	%a2, hi:NvM_Prv_stRequests_au16
	lea	%a2, [%a2] lo:NvM_Prv_stRequests_au16
	addsc.a	%a2, %a2, %d8, 1
	.loc 3 341 0
	ld.h	%d15, [%a2]0
	andn	%d15, %d15, ~(-17)
	.loc 3 338 0
	extr.u	%d15, %d15, 0, 16
	jz	%d15, .L25
.L28:
.LVL46:
	.loc 3 346 0
	ld.bu	%d6, [%SP] 15
.LBE41:
.LBE40:
	.loc 1 187 0
	mov	%d2, 1
.LBB43:
.LBB42:
	.loc 3 346 0
	or	%d6, %d6, 8
	and	%d6, %d6, 255
	st.b	[%SP] 15, %d6
.LVL47:
	j	.L27
.LBE42:
.LBE43:
.LBE44:
.LBE45:
.LBE47:
.LFE112:
	.size	NvM_Prv_Service_Initiate, .-NvM_Prv_Service_Initiate
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
	.uaword	.LFB111
	.uaword	.LFE111-.LFB111
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB112
	.uaword	.LFE112-.LFB112
	.byte	0x4
	.uaword	.LCFI0-.LFB112
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE2:
.section .text,"ax",@progbits
.Letext0:
	.file 4 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 5 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 6 ".\\output\\inc/..\\..\\rte\\Rte_Type.h"
	.file 7 ".\\output\\inc/..\\..\\bsw\\NvM\\api\\NvM_Types.h"
	.file 8 ".\\output\\inc/..\\..\\bsw\\NvM\\src\\Internal\\BlockData\\NvM_Prv_BlockDescriptor.h"
	.file 9 ".\\output\\inc/..\\..\\bsw\\NvM\\src\\Internal\\BlockData\\NvM_Prv_BlockData.h"
	.file 10 "bsw\\NvM\\src\\Internal\\Service\\NvM_Prv_Service.h"
	.file 11 ".\\output\\inc/..\\..\\bsw\\NvM\\integration\\NvM_Cfg_SchM.h"
	.file 12 ".\\output\\inc/..\\..\\bsw\\NvM\\src\\Internal\\QueueHandling\\NvM_Prv_RequestQueue.h"
	.file 13 ".\\output\\inc/..\\..\\bsw\\NvM\\src\\Internal\\ErrorDetection\\NvM_Prv_ErrorDetection.h"
	.file 14 ".\\output\\inc/..\\..\\bsw\\NvM\\src\\NvM_Prv.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x177d
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\NvM\\src\\Internal\\Service\\NvM_Service.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x60
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
	.uaword	0x1d5
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
	.uaword	0x201
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
	.uaword	0x23d
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
	.uaword	0x1d5
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
	.uaword	0x1c8
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x4
	.byte	0x4
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2d4
	.uleb128 0x6
	.byte	0x1
	.uleb128 0x5
	.byte	0x4
	.uaword	0x1c8
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2e2
	.uleb128 0x7
	.uaword	0x1f3
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2ed
	.uleb128 0x8
	.uleb128 0x9
	.string	"NvM_BlockIdType"
	.byte	0x6
	.uahalf	0x1ca
	.uaword	0x1f3
	.uleb128 0x9
	.string	"NvM_RequestResultType"
	.byte	0x6
	.uahalf	0x1d4
	.uaword	0x1c8
	.uleb128 0x5
	.byte	0x4
	.uaword	0x32a
	.uleb128 0xa
	.byte	0x1
	.uaword	0x2aa
	.uleb128 0x5
	.byte	0x4
	.uaword	0x336
	.uleb128 0xb
	.byte	0x1
	.uaword	0x2aa
	.uaword	0x346
	.uleb128 0xc
	.uaword	0x1c8
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.byte	0x7
	.byte	0xa2
	.uaword	0x38c
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
	.uaword	0x346
	.uleb128 0xf
	.byte	0x1
	.byte	0x7
	.uahalf	0x13e
	.uaword	0x607
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
	.uaword	0x1f3
	.uleb128 0x9
	.string	"NvM_Prv_idService_tuo"
	.byte	0x7
	.uahalf	0x14c
	.uaword	0x1c8
	.uleb128 0xf
	.byte	0x1
	.byte	0x7
	.uahalf	0x159
	.uaword	0x6a2
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
	.uaword	0x1c8
	.uleb128 0x10
	.byte	0x4
	.byte	0x7
	.uahalf	0x180
	.uaword	0x6f7
	.uleb128 0x11
	.string	"ptrRamBlock_pv"
	.byte	0x7
	.uahalf	0x182
	.uaword	0x2cc
	.uleb128 0x11
	.string	"ptrRamBlock_pu8"
	.byte	0x7
	.uahalf	0x183
	.uaword	0x2d6
	.byte	0
	.uleb128 0x9
	.string	"NvM_Prv_ptrRamBlock_tun"
	.byte	0x7
	.uahalf	0x185
	.uaword	0x6be
	.uleb128 0x12
	.byte	0xc
	.byte	0x7
	.uahalf	0x191
	.uaword	0x770
	.uleb128 0x13
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x194
	.uaword	0x626
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.uaword	.LASF1
	.byte	0x7
	.uahalf	0x197
	.uaword	0x2ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x14
	.string	"ServiceBit_uo"
	.byte	0x7
	.uahalf	0x19a
	.uaword	0x607
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x14
	.string	"BlockData_un"
	.byte	0x7
	.uahalf	0x19e
	.uaword	0x6f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x9
	.string	"NvM_Prv_QueueEntry_tst"
	.byte	0x7
	.uahalf	0x1a0
	.uaword	0x717
	.uleb128 0x5
	.byte	0x4
	.uaword	0x795
	.uleb128 0xb
	.byte	0x1
	.uaword	0x2aa
	.uaword	0x7a5
	.uleb128 0xc
	.uaword	0x2cc
	.byte	0
	.uleb128 0x15
	.byte	0xc
	.byte	0x8
	.byte	0x77
	.uaword	0x819
	.uleb128 0x16
	.string	"MultiBlockCallback_pfct"
	.byte	0x8
	.byte	0x7f
	.uaword	0x82a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x16
	.string	"RbMultiBlockStartCallback_pfct"
	.byte	0x8
	.byte	0x84
	.uaword	0x83c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.string	"ObserverCallback_pfct"
	.byte	0x8
	.byte	0x8a
	.uaword	0x85c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.uaword	0x82a
	.uleb128 0xc
	.uaword	0x1c8
	.uleb128 0xc
	.uaword	0x306
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x819
	.uleb128 0x17
	.byte	0x1
	.uaword	0x83c
	.uleb128 0xc
	.uaword	0x1c8
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x830
	.uleb128 0xb
	.byte	0x1
	.uaword	0x2aa
	.uaword	0x85c
	.uleb128 0xc
	.uaword	0x2ee
	.uleb128 0xc
	.uaword	0x1c8
	.uleb128 0xc
	.uaword	0x306
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x842
	.uleb128 0x3
	.string	"NvM_Prv_Common_tst"
	.byte	0x8
	.byte	0x8d
	.uaword	0x7a5
	.uleb128 0x15
	.byte	0x34
	.byte	0x8
	.byte	0x95
	.uaword	0xa5e
	.uleb128 0x16
	.string	"idBlockMemIf_u16"
	.byte	0x8
	.byte	0x9b
	.uaword	0x1f3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x16
	.string	"nrBlockBytes_pu16"
	.byte	0x8
	.byte	0xa9
	.uaword	0x2dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.string	"nrBlockBytesStored_u16"
	.byte	0x8
	.byte	0xb5
	.uaword	0x1f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.string	"idxDevice_u8"
	.byte	0x8
	.byte	0xbb
	.uaword	0x1c8
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x16
	.string	"nrNvBlocks_u8"
	.byte	0x8
	.byte	0xc0
	.uaword	0x1c8
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0x16
	.string	"nrRomBlocks_u8"
	.byte	0x8
	.byte	0xc5
	.uaword	0x1c8
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x16
	.string	"adrRamBlock_ppv"
	.byte	0x8
	.byte	0xd6
	.uaword	0xa5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x16
	.string	"adrRomBlock_pcv"
	.byte	0x8
	.byte	0xde
	.uaword	0x2e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x16
	.string	"SingleBlockCallback_pfct"
	.byte	0x8
	.byte	0xe8
	.uaword	0xa7e
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x16
	.string	"SingleBlockStartCallback_pfct"
	.byte	0x8
	.byte	0xf0
	.uaword	0x330
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x16
	.string	"InitBlockCallback_pfct"
	.byte	0x8
	.byte	0xf9
	.uaword	0x324
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x14
	.string	"ReadRamBlockFromNvm_pfct"
	.byte	0x8
	.uahalf	0x102
	.uaword	0x78f
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x14
	.string	"WriteRamBlockToNvm_pfct"
	.byte	0x8
	.uahalf	0x10b
	.uaword	0x78f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x14
	.string	"BlockManagementType_en"
	.byte	0x8
	.uahalf	0x110
	.uaword	0x38c
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x14
	.string	"JobPriority_u8"
	.byte	0x8
	.uahalf	0x115
	.uaword	0x1c8
	.byte	0x2
	.byte	0x23
	.uleb128 0x2d
	.uleb128 0x14
	.string	"stFlags_uo"
	.byte	0x8
	.uahalf	0x13e
	.uaword	0x22f
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0xa64
	.uleb128 0x7
	.uaword	0x2cc
	.uleb128 0xb
	.byte	0x1
	.uaword	0x2aa
	.uaword	0xa7e
	.uleb128 0xc
	.uaword	0x1c8
	.uleb128 0xc
	.uaword	0x306
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0xa69
	.uleb128 0x9
	.string	"NvM_Prv_BlockDescriptor_tst"
	.byte	0x8
	.uahalf	0x153
	.uaword	0x87c
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x158
	.uaword	0xae5
	.uleb128 0x14
	.string	"PersistentId_u16"
	.byte	0x8
	.uahalf	0x15a
	.uaword	0x1f3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"BlockId_u16"
	.byte	0x8
	.uahalf	0x15b
	.uaword	0x2ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x9
	.string	"NvM_Prv_PersId_BlockId_tst"
	.byte	0x8
	.uahalf	0x15c
	.uaword	0xaa8
	.uleb128 0x3
	.string	"NvM_Prv_BlockErrors_tuo"
	.byte	0x9
	.byte	0x3f
	.uaword	0x1c8
	.uleb128 0x15
	.byte	0x10
	.byte	0xa
	.byte	0x1a
	.uaword	0xbb0
	.uleb128 0x16
	.string	"QueueEntry_st"
	.byte	0xa
	.byte	0x1c
	.uaword	0x770
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x16
	.string	"Result_uo"
	.byte	0xa
	.byte	0x1f
	.uaword	0x306
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x16
	.string	"idxDataset_u8"
	.byte	0xa
	.byte	0x21
	.uaword	0x1c8
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0x16
	.string	"maskBitsToChange_u8"
	.byte	0xa
	.byte	0x24
	.uaword	0x1c8
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x16
	.string	"maskBitsNewValue_u8"
	.byte	0xa
	.byte	0x25
	.uaword	0x1c8
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.byte	0
	.uleb128 0x3
	.string	"NvM_Prv_BlockData_tst"
	.byte	0xa
	.byte	0x27
	.uaword	0xb27
	.uleb128 0x3
	.string	"NvM_Prv_Service_CheckParameter_tpfct"
	.byte	0xa
	.byte	0x2f
	.uaword	0xbf9
	.uleb128 0x5
	.byte	0x4
	.uaword	0xbff
	.uleb128 0xb
	.byte	0x1
	.uaword	0x27a
	.uaword	0xc0f
	.uleb128 0xc
	.uaword	0xc0f
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0xc15
	.uleb128 0x7
	.uaword	0xbb0
	.uleb128 0x3
	.string	"NvM_Prv_Service_CheckBlockData_tpfct"
	.byte	0xa
	.byte	0x36
	.uaword	0xc46
	.uleb128 0x5
	.byte	0x4
	.uaword	0xc4c
	.uleb128 0xb
	.byte	0x1
	.uaword	0x27a
	.uaword	0xc61
	.uleb128 0xc
	.uaword	0xc0f
	.uleb128 0xc
	.uaword	0xc61
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0xb08
	.uleb128 0x3
	.string	"NvM_Prv_Service_SetBlockData_tpfct"
	.byte	0xa
	.byte	0x3e
	.uaword	0xc91
	.uleb128 0x5
	.byte	0x4
	.uaword	0xc97
	.uleb128 0x17
	.byte	0x1
	.uaword	0xca3
	.uleb128 0xc
	.uaword	0xc0f
	.byte	0
	.uleb128 0x15
	.byte	0x10
	.byte	0xa
	.byte	0x43
	.uaword	0xd14
	.uleb128 0x16
	.string	"CheckPendingBlock_b"
	.byte	0xa
	.byte	0x4b
	.uaword	0x27a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x16
	.string	"CheckParameter_pfct"
	.byte	0xa
	.byte	0x52
	.uaword	0xbcd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.string	"CheckBlockData_pfct"
	.byte	0xa
	.byte	0x59
	.uaword	0xc1a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x18
	.uaword	.LASF2
	.byte	0xa
	.byte	0x5f
	.uaword	0xc67
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x3
	.string	"NvM_Prv_Service_Configuration_tst"
	.byte	0xa
	.byte	0x61
	.uaword	0xca3
	.uleb128 0x3
	.string	"NvM_Prv_Service_UpdateBlockDataMulti_tpfct"
	.byte	0xa
	.byte	0x6a
	.uaword	0x2ce
	.uleb128 0x3
	.string	"NvM_Prv_Service_FinalizeMulti_tpfct"
	.byte	0xa
	.byte	0x71
	.uaword	0x2ce
	.uleb128 0x15
	.byte	0x8
	.byte	0xa
	.byte	0x76
	.uaword	0xde7
	.uleb128 0x16
	.string	"UpdateBlockDataForMulti_pfct"
	.byte	0xa
	.byte	0x84
	.uaword	0xd3d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x16
	.string	"FinalizeMulti_pfct"
	.byte	0xa
	.byte	0x91
	.uaword	0xd6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"NvM_Prv_Service_ConfigurationMulti_tst"
	.byte	0xa
	.byte	0x93
	.uaword	0xd9a
	.uleb128 0x19
	.string	"NvM_Prv_IsBlockLengthValid"
	.byte	0x2
	.byte	0x6e
	.byte	0x1
	.uaword	0x27a
	.byte	0x3
	.uaword	0xe49
	.uleb128 0x1a
	.uaword	.LASF1
	.byte	0x2
	.byte	0x6e
	.uaword	0x2ee
	.byte	0
	.uleb128 0x1b
	.string	"SchM_Enter_NvM_Main"
	.byte	0xb
	.byte	0x20
	.byte	0x1
	.byte	0x3
	.uleb128 0x1b
	.string	"SchM_Exit_NvM_Main"
	.byte	0xb
	.byte	0x25
	.byte	0x1
	.byte	0x3
	.uleb128 0x1c
	.byte	0x1
	.string	"NvM_Prv_Service_InitiateMulti"
	.byte	0x1
	.byte	0x47
	.byte	0x1
	.uaword	.LFB111
	.uaword	.LFE111
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xf93
	.uleb128 0x1d
	.uaword	.LASF3
	.byte	0x1
	.byte	0x47
	.uaword	0x6a2
	.uaword	.LLST0
	.uleb128 0x1e
	.string	"QueueEntry_pcst"
	.byte	0x1
	.byte	0x48
	.uaword	0xf93
	.uaword	.LLST1
	.uleb128 0x1e
	.string	"ConfigurationMulti_pcst"
	.byte	0x1
	.byte	0x49
	.uaword	0xf9e
	.uaword	.LLST2
	.uleb128 0x1f
	.uaword	.LBB15
	.uaword	.LBE15
	.uaword	0xf83
	.uleb128 0x20
	.string	"isRequestEnqueued_b"
	.byte	0x1
	.byte	0x4d
	.uaword	0x27a
	.uaword	.LLST3
	.uleb128 0x1f
	.uaword	.LBB16
	.uaword	.LBE16
	.uaword	0xf63
	.uleb128 0x21
	.uaword	.LASF4
	.byte	0x1
	.byte	0x60
	.uaword	0xb08
	.byte	0x4
	.uleb128 0x22
	.uaword	.LVL14
	.byte	0x1
	.uaword	0x1610
	.uaword	0xf53
	.uleb128 0x23
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x34
	.byte	0
	.uleb128 0x24
	.uaword	.LVL15
	.uaword	0x1610
	.uleb128 0x23
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0x25
	.uaword	.LVL9
	.byte	0x1
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x24
	.uaword	.LVL10
	.uaword	0x165f
	.uleb128 0x23
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x23
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x24
	.uaword	.LVL2
	.uaword	0x1695
	.uleb128 0x23
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0xf99
	.uleb128 0x7
	.uaword	0x770
	.uleb128 0x5
	.byte	0x4
	.uaword	0xfa4
	.uleb128 0x7
	.uaword	0xde7
	.uleb128 0x19
	.string	"NvM_Prv_Service_CheckPreconditions"
	.byte	0x1
	.byte	0x96
	.byte	0x1
	.uaword	0x27a
	.byte	0x3
	.uaword	0x1049
	.uleb128 0x1a
	.uaword	.LASF3
	.byte	0x1
	.byte	0x96
	.uaword	0x6a2
	.uleb128 0x1a
	.uaword	.LASF1
	.byte	0x1
	.byte	0x97
	.uaword	0x2ee
	.uleb128 0x1a
	.uaword	.LASF0
	.byte	0x1
	.byte	0x98
	.uaword	0x626
	.uleb128 0x26
	.string	"stReturn_b"
	.byte	0x1
	.byte	0x9a
	.uaword	0x27a
	.uleb128 0x27
	.uleb128 0x26
	.string	"isBlockLengthValid_b"
	.byte	0x1
	.byte	0xa2
	.uaword	0x27a
	.uleb128 0x26
	.string	"isSanitizedByReadAll_b"
	.byte	0x1
	.byte	0xa7
	.uaword	0x27a
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"NvM_Prv_Service_CheckBlockData"
	.byte	0x1
	.byte	0xb7
	.byte	0x1
	.uaword	0x2aa
	.byte	0x3
	.uaword	0x110a
	.uleb128 0x1a
	.uaword	.LASF3
	.byte	0x1
	.byte	0xb7
	.uaword	0x6a2
	.uleb128 0x1a
	.uaword	.LASF5
	.byte	0x1
	.byte	0xb8
	.uaword	0xc0f
	.uleb128 0x1a
	.uaword	.LASF6
	.byte	0x1
	.byte	0xb9
	.uaword	0x110a
	.uleb128 0x28
	.uaword	.LASF7
	.byte	0x1
	.byte	0xbb
	.uaword	0x2aa
	.uleb128 0x26
	.string	"isCheckBlockDataSuccessful_b"
	.byte	0x1
	.byte	0xbc
	.uaword	0x27a
	.uleb128 0x28
	.uaword	.LASF4
	.byte	0x1
	.byte	0xbe
	.uaword	0xb08
	.uleb128 0x26
	.string	"isBlockPending_b"
	.byte	0x1
	.byte	0xbf
	.uaword	0x27a
	.uleb128 0x26
	.string	"idBlockForPendingCheck_uo"
	.byte	0x1
	.byte	0xc1
	.uaword	0x2ee
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x1110
	.uleb128 0x7
	.uaword	0xd14
	.uleb128 0x29
	.string	"NvM_Prv_Block_IsPending"
	.byte	0x3
	.uahalf	0x150
	.byte	0x1
	.uaword	0x27a
	.byte	0x3
	.uaword	0x116a
	.uleb128 0x2a
	.uaword	.LASF1
	.byte	0x3
	.uahalf	0x150
	.uaword	0x2ee
	.uleb128 0x2a
	.uaword	.LASF8
	.byte	0x3
	.uahalf	0x150
	.uaword	0xc61
	.uleb128 0x2b
	.string	"returnValue_b"
	.byte	0x3
	.uahalf	0x152
	.uaword	0x27a
	.byte	0
	.uleb128 0x19
	.string	"NvM_Prv_Service_SetBlockData"
	.byte	0x1
	.byte	0xef
	.byte	0x1
	.uaword	0x2aa
	.byte	0x3
	.uaword	0x11e3
	.uleb128 0x1a
	.uaword	.LASF3
	.byte	0x1
	.byte	0xef
	.uaword	0x6a2
	.uleb128 0x1a
	.uaword	.LASF5
	.byte	0x1
	.byte	0xf0
	.uaword	0xc0f
	.uleb128 0x1a
	.uaword	.LASF2
	.byte	0x1
	.byte	0xf1
	.uaword	0xc67
	.uleb128 0x1a
	.uaword	.LASF8
	.byte	0x1
	.byte	0xf2
	.uaword	0xc61
	.uleb128 0x28
	.uaword	.LASF7
	.byte	0x1
	.byte	0xf4
	.uaword	0x2aa
	.uleb128 0x26
	.string	"isReqEnqueued_b"
	.byte	0x1
	.byte	0xf5
	.uaword	0x27a
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.string	"NvM_Prv_Service_Initiate"
	.byte	0x1
	.byte	0x6d
	.byte	0x1
	.uaword	0x2aa
	.uaword	.LFB112
	.uaword	.LFE112
	.uaword	.LLST4
	.byte	0x1
	.uaword	0x149f
	.uleb128 0x1d
	.uaword	.LASF3
	.byte	0x1
	.byte	0x6d
	.uaword	0x6a2
	.uaword	.LLST5
	.uleb128 0x1d
	.uaword	.LASF5
	.byte	0x1
	.byte	0x6e
	.uaword	0xc0f
	.uaword	.LLST6
	.uleb128 0x1d
	.uaword	.LASF6
	.byte	0x1
	.byte	0x6f
	.uaword	0x110a
	.uaword	.LLST7
	.uleb128 0x20
	.string	"stReturn_uo"
	.byte	0x1
	.byte	0x71
	.uaword	0x2aa
	.uaword	.LLST8
	.uleb128 0x2d
	.uaword	0xfa9
	.uaword	.LBB29
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x77
	.uaword	0x132a
	.uleb128 0x2e
	.uaword	0xfef
	.uaword	.LLST9
	.uleb128 0x2e
	.uaword	0xfe4
	.uaword	.LLST10
	.uleb128 0x2e
	.uaword	0xfd9
	.uaword	.LLST11
	.uleb128 0x2f
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x30
	.uaword	0xffa
	.uaword	.LLST12
	.uleb128 0x1f
	.uaword	.LBB31
	.uaword	.LBE31
	.uaword	0x12f3
	.uleb128 0x31
	.uaword	0x100d
	.uleb128 0x30
	.uaword	0x1029
	.uaword	.LLST13
	.uleb128 0x32
	.uaword	0xe15
	.uaword	.LBB32
	.uaword	.LBE32
	.byte	0x1
	.byte	0xa2
	.uaword	0x12ce
	.uleb128 0x2e
	.uaword	0xe3d
	.uaword	.LLST14
	.byte	0
	.uleb128 0x33
	.uaword	.LVL41
	.uaword	0x16d6
	.uaword	0x12e2
	.uleb128 0x23
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.uaword	.LVL43
	.uaword	0x16d6
	.uleb128 0x23
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x33
	.uaword	.LVL22
	.uaword	0x1695
	.uaword	0x130d
	.uleb128 0x23
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x23
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.uaword	.LVL23
	.uaword	0x1707
	.uleb128 0x23
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x30
	.uleb128 0x23
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x23
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0x20
	.string	"isCheckParameterSuccessful_b"
	.byte	0x1
	.byte	0x7b
	.uaword	0x27a
	.uaword	.LLST15
	.uleb128 0x2d
	.uaword	0x1049
	.uaword	.LBB36
	.uaword	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0x84
	.uaword	0x1491
	.uleb128 0x2e
	.uaword	0x108b
	.uaword	.LLST16
	.uleb128 0x2e
	.uaword	0x1080
	.uaword	.LLST17
	.uleb128 0x2e
	.uaword	0x1075
	.uaword	.LLST18
	.uleb128 0x2f
	.uaword	.Ldebug_ranges0+0x30
	.uleb128 0x30
	.uaword	0x1096
	.uaword	.LLST19
	.uleb128 0x30
	.uaword	0x10a1
	.uaword	.LLST20
	.uleb128 0x34
	.uaword	0x10c5
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x30
	.uaword	0x10d0
	.uaword	.LLST21
	.uleb128 0x30
	.uaword	0x10e8
	.uaword	.LLST22
	.uleb128 0x32
	.uaword	0x116a
	.uaword	.LBB38
	.uaword	.LBE38
	.byte	0x1
	.byte	0xde
	.uaword	0x1430
	.uleb128 0x2e
	.uaword	0x11b5
	.uaword	.LLST23
	.uleb128 0x2e
	.uaword	0x11aa
	.uaword	.LLST24
	.uleb128 0x2e
	.uaword	0x119f
	.uaword	.LLST25
	.uleb128 0x2e
	.uaword	0x1194
	.uaword	.LLST26
	.uleb128 0x35
	.uaword	.LBB39
	.uaword	.LBE39
	.uleb128 0x30
	.uaword	0x11c0
	.uaword	.LLST27
	.uleb128 0x30
	.uaword	0x11cb
	.uaword	.LLST28
	.uleb128 0x36
	.uaword	.LVL36
	.uaword	0x1418
	.uleb128 0x23
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.uaword	.LVL38
	.uaword	0x165f
	.uleb128 0x23
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x23
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uaword	0x1115
	.uaword	.LBB40
	.uaword	.Ldebug_ranges0+0x48
	.byte	0x1
	.byte	0xd9
	.uaword	0x1470
	.uleb128 0x37
	.uaword	0x1147
	.byte	0x3
	.byte	0x91
	.sleb128 -1
	.byte	0x9f
	.uleb128 0x37
	.uaword	0x113b
	.byte	0x1
	.byte	0x58
	.uleb128 0x2f
	.uaword	.Ldebug_ranges0+0x48
	.uleb128 0x38
	.uaword	0x1153
	.byte	0x1
	.uleb128 0x24
	.uaword	.LVL45
	.uaword	0x174b
	.uleb128 0x23
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x36
	.uaword	.LVL30
	.uaword	0x1486
	.uleb128 0x23
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x23
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.uaword	.LVL32
	.uaword	0x1610
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uaword	.LVL25
	.uleb128 0x23
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3b
	.string	"NvM_Prv_Common_cst"
	.byte	0x8
	.uahalf	0x16d
	.uaword	0x14bc
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.uaword	0x862
	.uleb128 0x3c
	.uaword	0xa84
	.uaword	0x14d1
	.uleb128 0x3d
	.uaword	0x2c0
	.byte	0x3b
	.byte	0
	.uleb128 0x3b
	.string	"NvM_Prv_BlockDescriptors_acst"
	.byte	0x8
	.uahalf	0x172
	.uaword	0x14f9
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.uaword	0x14c1
	.uleb128 0x3c
	.uaword	0xae5
	.uaword	0x150e
	.uleb128 0x3d
	.uaword	0x2c0
	.byte	0x39
	.byte	0
	.uleb128 0x3b
	.string	"NvM_Prv_PersId_BlockId_acst"
	.byte	0x8
	.uahalf	0x176
	.uaword	0x1534
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.uaword	0x14fe
	.uleb128 0x3c
	.uaword	0x1c8
	.uaword	0x1549
	.uleb128 0x3d
	.uaword	0x2c0
	.byte	0x3b
	.byte	0
	.uleb128 0x3e
	.string	"NvM_Prv_stBlock_au8"
	.byte	0x9
	.byte	0x54
	.uaword	0x1539
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.uaword	0x1f3
	.uaword	0x1576
	.uleb128 0x3d
	.uaword	0x2c0
	.byte	0x3b
	.byte	0
	.uleb128 0x3e
	.string	"NvM_Prv_stRequests_au16"
	.byte	0x9
	.byte	0x6b
	.uaword	0x1566
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.uaword	0x306
	.uaword	0x15a7
	.uleb128 0x3d
	.uaword	0x2c0
	.byte	0x3b
	.byte	0
	.uleb128 0x3e
	.string	"NvM_Prv_stRequestResult_au8"
	.byte	0x9
	.byte	0x74
	.uaword	0x1597
	.byte	0x1
	.byte	0x1
	.uleb128 0x3e
	.string	"NvM_Prv_idxDataSet_au8"
	.byte	0x9
	.byte	0x78
	.uaword	0x1539
	.byte	0x1
	.byte	0x1
	.uleb128 0x3e
	.string	"NvM_Prv_idConfigStored_u16"
	.byte	0x9
	.byte	0x81
	.uaword	0x1f3
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.byte	0x1
	.string	"NvM_Prv_ErrorDetection_ReportServiceInitiationErrors"
	.byte	0xd
	.byte	0x6f
	.byte	0x1
	.byte	0x1
	.uaword	0x165f
	.uleb128 0xc
	.uaword	0x626
	.uleb128 0xc
	.uaword	0x2ee
	.uleb128 0xc
	.uaword	0xb08
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.string	"NvM_Prv_RequestQueue_Enqueue"
	.byte	0xc
	.byte	0x14
	.byte	0x1
	.uaword	0x27a
	.byte	0x1
	.uaword	0x1695
	.uleb128 0xc
	.uaword	0x6a2
	.uleb128 0xc
	.uaword	0xf93
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.string	"NvM_Prv_ErrorDetection_IsNvmInitialized"
	.byte	0xd
	.byte	0x5a
	.byte	0x1
	.uaword	0x27a
	.byte	0x1
	.uaword	0x16d6
	.uleb128 0xc
	.uaword	0x626
	.uleb128 0xc
	.uaword	0x2ee
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.string	"NvM_Prv_IsSanitizedByReadAll"
	.byte	0xe
	.byte	0x5b
	.byte	0x1
	.uaword	0x27a
	.byte	0x1
	.uaword	0x1707
	.uleb128 0xc
	.uaword	0x2ee
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.string	"NvM_Prv_ErrorDetection_IsBlockIdValid"
	.byte	0xd
	.byte	0x5c
	.byte	0x1
	.uaword	0x27a
	.byte	0x1
	.uaword	0x174b
	.uleb128 0xc
	.uaword	0x626
	.uleb128 0xc
	.uaword	0x2ee
	.uleb128 0xc
	.uaword	0x27a
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.string	"NvM_Prv_Block_IsNvmEnqueuingForMulti"
	.byte	0x9
	.byte	0x93
	.byte	0x1
	.uaword	0x27a
	.byte	0x1
	.uleb128 0xc
	.uaword	0x2ee
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x2116
	.uleb128 0xc
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x2113
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x33
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
	.uleb128 0x34
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x40
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
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL1
	.uaword	.LFE111
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL2-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL2-1
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LFE111
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL0
	.uaword	.LVL2-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL2-1
	.uaword	.LFE111
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL9
	.uaword	.LVL11
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LFB112
	.uaword	.LCFI0
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0
	.uaword	.LFE112
	.uahalf	0x2
	.byte	0x8a
	.sleb128 16
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL17
	.uaword	.LVL19
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL21
	.uaword	.LFE112
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL17
	.uaword	.LVL19
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LVL22-1
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL22-1
	.uaword	.LFE112
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL17
	.uaword	.LVL19
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LVL22-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL22-1
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL31
	.uaword	.LVL33
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL33
	.uaword	.LVL34
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL34
	.uaword	.LVL40
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL40
	.uaword	.LFE112
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL16
	.uaword	.LVL18
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL19
	.uaword	.LVL32
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL33
	.uaword	.LFE112
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL20
	.uaword	.LVL22-1
	.uahalf	0x2
	.byte	0x73
	.sleb128 0
	.uaword	.LVL22-1
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL40
	.uaword	.LVL44
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL20
	.uaword	.LVL22-1
	.uahalf	0x2
	.byte	0x73
	.sleb128 2
	.uaword	.LVL22-1
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL40
	.uaword	.LVL44
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL21
	.uaword	.LFE112
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL17
	.uaword	.LVL19
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LVL24
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL40
	.uaword	.LVL44
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL41
	.uaword	.LVL42
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL40
	.uaword	.LVL44
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL26
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL31
	.uaword	.LVL33
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL33
	.uaword	.LVL34
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL34
	.uaword	.LVL40
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL44
	.uaword	.LFE112
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL26
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL44
	.uaword	.LFE112
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL26
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL44
	.uaword	.LFE112
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL26
	.uaword	.LVL31
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL31
	.uaword	.LVL32-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL33
	.uaword	.LVL40
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL44
	.uaword	.LFE112
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL26
	.uaword	.LVL30
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL28
	.uaword	.LVL31
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL33
	.uaword	.LVL40
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL44
	.uaword	.LVL47
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL47
	.uaword	.LFE112
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL29
	.uaword	.LVL30-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 2
	.uaword	.LVL30-1
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL44
	.uaword	.LFE112
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL34
	.uaword	.LVL40
	.uahalf	0x3
	.byte	0x91
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL34
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL34
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL34
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL34
	.uaword	.LVL40
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL34
	.uaword	.LVL35
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL37
	.uaword	.LVL38
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL38
	.uaword	.LVL39
	.uahalf	0x1
	.byte	0x52
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
	.uaword	.LFB111
	.uaword	.LFE111-.LFB111
	.uaword	.LFB112
	.uaword	.LFE112-.LFB112
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB29
	.uaword	.LBE29
	.uaword	.LBB46
	.uaword	.LBE46
	.uaword	0
	.uaword	0
	.uaword	.LBB35
	.uaword	.LBE35
	.uaword	.LBB47
	.uaword	.LBE47
	.uaword	0
	.uaword	0
	.uaword	.LBB36
	.uaword	.LBE36
	.uaword	.LBB45
	.uaword	.LBE45
	.uaword	0
	.uaword	0
	.uaword	.LBB40
	.uaword	.LBE40
	.uaword	.LBB43
	.uaword	.LBE43
	.uaword	0
	.uaword	0
	.uaword	.LFB111
	.uaword	.LFE111
	.uaword	.LFB112
	.uaword	.LFE112
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"idService_uo"
.LASF7:
	.string	"stBlockData_uo"
.LASF8:
	.string	"Errors_puo"
.LASF4:
	.string	"errors_uo"
.LASF6:
	.string	"ServiceConfiguration_pcst"
.LASF5:
	.string	"BlockData_pcst"
.LASF1:
	.string	"idBlock_uo"
.LASF3:
	.string	"idQueue_uo"
.LASF2:
	.string	"SetBlockData_pfct"
	.extern	NvM_Prv_stRequests_au16,STT_OBJECT,120
	.extern	NvM_Prv_Block_IsNvmEnqueuingForMulti,STT_FUNC,0
	.extern	NvM_Prv_IsSanitizedByReadAll,STT_FUNC,0
	.extern	NvM_Prv_BlockDescriptors_acst,STT_OBJECT,3120
	.extern	NvM_Prv_ErrorDetection_IsBlockIdValid,STT_FUNC,0
	.extern	NvM_Prv_ErrorDetection_ReportServiceInitiationErrors,STT_FUNC,0
	.extern	NvM_Prv_RequestQueue_Enqueue,STT_FUNC,0
	.extern	NvM_Prv_ErrorDetection_IsNvmInitialized,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
