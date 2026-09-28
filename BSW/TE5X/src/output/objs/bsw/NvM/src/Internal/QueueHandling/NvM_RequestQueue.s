	.file	"NvM_RequestQueue.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.NvM_Prv_RequestQueue_Initialize,"ax",@progbits
	.align 1
	.global	NvM_Prv_RequestQueue_Initialize
	.type	NvM_Prv_RequestQueue_Initialize, @function
NvM_Prv_RequestQueue_Initialize:
.LFB31:
	.file 1 "bsw\\NvM\\src\\Internal\\QueueHandling\\NvM_RequestQueue.c"
	.loc 1 222 0
.LVL0:
	.loc 1 227 0
	movh.a	%a15, hi:NvM_Prv_RequestQueues_ast
	lea	%a15, [%a15] lo:NvM_Prv_RequestQueues_ast
	.loc 1 222 0
	mov	%d15, %d4
	.loc 1 227 0
	mov.aa	%a4, %a15
	call	NvM_Prv_Queue_Initialize
.LVL1:
	.loc 1 229 0
	jz	%d15, .L2
	ld.a	%a2, [%a15] 12
	jz.a	%a2, .L3
	.loc 1 232 0
	ld.h	%d15, [%a15] 4
	st.b	[%a2]0, %d15
.L3:
.LVL2:
	.loc 1 227 0
	movh.a	%a4, hi:NvM_Prv_RequestQueues_ast+16
	lea	%a4, [%a4] lo:NvM_Prv_RequestQueues_ast+16
	call	NvM_Prv_Queue_Initialize
.LVL3:
	.loc 1 229 0
	ld.a	%a2, [%a15] 28
	jz.a	%a2, .L10
	.loc 1 232 0
	ld.h	%d15, [%a15] 20
	st.b	[%a2]0, %d15
.LVL4:
	ret
.LVL5:
.L10:
	ret
.LVL6:
.L2:
	.loc 1 227 0
	lea	%a4, [%a15] 16
	j	NvM_Prv_Queue_Initialize
.LVL7:
.LFE31:
	.size	NvM_Prv_RequestQueue_Initialize, .-NvM_Prv_RequestQueue_Initialize
.section .text.NvM_Prv_RequestQueue_Enqueue,"ax",@progbits
	.align 1
	.global	NvM_Prv_RequestQueue_Enqueue
	.type	NvM_Prv_RequestQueue_Enqueue, @function
NvM_Prv_RequestQueue_Enqueue:
.LFB32:
	.loc 1 252 0
.LVL8:
	.loc 1 258 0
	movh.a	%a15, hi:NvM_Prv_RequestQueues_ast
	mov.d	%d2, %a15
	.loc 1 252 0
	mov.aa	%a12, %a4
	.loc 1 258 0
	addi	%d15, %d2, lo:NvM_Prv_RequestQueues_ast
	madd	%d2, %d15, %d4, 16
	.loc 1 253 0
	mov	%d15, 0
	.loc 1 258 0
	mov.a	%a15, %d2
	.loc 1 262 0
	mov.a	%a4, %d2
.LVL9:
	.loc 1 258 0
	ld.a	%a14, [%a15] 8
.LVL10:
	.loc 1 262 0
	call	NvM_Prv_Queue_IsFull
.LVL11:
	jz	%d2, .L17
.L12:
.LVL12:
	.loc 1 285 0
	mov	%d2, %d15
	ret
.LVL13:
.L17:
.LBB2:
	.loc 1 264 0
	ld.a	%a13, [%a15] 12
.LVL14:
	.loc 1 266 0
	mov.aa	%a4, %a15
	mov.aa	%a5, %a14
	mov.aa	%a6, %a12
	mov	%d4, 12
	call	NvM_Prv_Queue_Enqueue
.LVL15:
	.loc 1 281 0
	mov	%d15, 1
	.loc 1 275 0
	jz.a	%a13, .L12
	.loc 1 276 0 discriminator 1
	ld.hu	%d2, [%a15] 2
	.loc 1 275 0 discriminator 1
	ld.bu	%d3, [%a13]0
	jge.u	%d2, %d3, .L12
	.loc 1 278 0
	st.b	[%a13]0, %d2
.LVL16:
.LBE2:
	.loc 1 285 0
	mov	%d2, %d15
	ret
.LFE32:
	.size	NvM_Prv_RequestQueue_Enqueue, .-NvM_Prv_RequestQueue_Enqueue
.section .text.NvM_Prv_RequestQueue_Dequeue,"ax",@progbits
	.align 1
	.global	NvM_Prv_RequestQueue_Dequeue
	.type	NvM_Prv_RequestQueue_Dequeue, @function
NvM_Prv_RequestQueue_Dequeue:
.LFB33:
	.loc 1 295 0
.LVL17:
	.loc 1 296 0
	movh.a	%a4, hi:NvM_Prv_RequestQueues_ast
	lea	%a4, [%a4] lo:NvM_Prv_RequestQueues_ast
	addsc.a	%a4, %a4, %d4, 3
	addsc.a	%a4, %a4, %d4, 3
	j	NvM_Prv_Queue_Dequeue
.LVL18:
.LFE33:
	.size	NvM_Prv_RequestQueue_Dequeue, .-NvM_Prv_RequestQueue_Dequeue
.section .text.NvM_Prv_RequestQueue_GetEntryToProcess,"ax",@progbits
	.align 1
	.global	NvM_Prv_RequestQueue_GetEntryToProcess
	.type	NvM_Prv_RequestQueue_GetEntryToProcess, @function
NvM_Prv_RequestQueue_GetEntryToProcess:
.LFB34:
	.loc 1 317 0
.LVL19:
	.loc 1 320 0
	mov	%d15, 0
	movh	%d9, hi:NvM_Prv_RequestQueues_ast
	.loc 1 317 0
	mov.aa	%a12, %a4
	.loc 1 320 0
	st.w	[%a4]0, %d15
	.loc 1 318 0
	mov	%d10, 2
	addi	%d9, %d9, lo:NvM_Prv_RequestQueues_ast
.LVL20:
.L24:
	.loc 1 325 0
	call	NvM_Prv_Multi_IsInProgress
.LVL21:
	mov	%d15, 0
	.loc 1 327 0
	mov	%d8, 0
	.loc 1 325 0
	jnz	%d2, .L20
	.loc 1 323 0
	addi	%d8, %d10, -1
	and	%d8, %d8, 255
	mov	%d15, %d8
.L20:
.LVL22:
	.loc 1 330 0
	madd	%d2, %d9, %d15, 16
	mov.a	%a4, %d2
	mov.a	%a15, %d2
	call	NvM_Prv_Queue_IsEmpty
.LVL23:
	jz	%d2, .L21
	ld.w	%d15, [%a12]0
.L22:
	.loc 1 321 0
	jnz	%d15, .L23
	mov	%d10, 1
	.loc 1 321 0 is_stmt 0 discriminator 1
	jnz	%d8, .L24
	.loc 1 338 0 is_stmt 1
	mov	%d8, 2
.LVL24:
.L23:
	.loc 1 342 0
	mov	%d2, %d8
	ret
.L21:
.LBB3:
	.loc 1 333 0
	ld.hu	%d15, [%a15]0
	ld.w	%d2, [%a15] 8
	madd	%d15, %d2, %d15, 12
	st.w	[%a12]0, %d15
	j	.L22
.LBE3:
.LFE34:
	.size	NvM_Prv_RequestQueue_GetEntryToProcess, .-NvM_Prv_RequestQueue_GetEntryToProcess
.section .text.NvM_Prv_RequestQueue_IsMultiEnqueued,"ax",@progbits
	.align 1
	.global	NvM_Prv_RequestQueue_IsMultiEnqueued
	.type	NvM_Prv_RequestQueue_IsMultiEnqueued, @function
NvM_Prv_RequestQueue_IsMultiEnqueued:
.LFB35:
	.loc 1 356 0
.LVL25:
	.loc 1 358 0
	movh.a	%a12, hi:NvM_Prv_RequestQueues_ast
	lea	%a15, [%a12] lo:NvM_Prv_RequestQueues_ast
	mov.aa	%a4, %a15
	.loc 1 356 0
	mov	%d8, %d4
	.loc 1 358 0
	call	NvM_Prv_Queue_IsEmpty
.LVL26:
	.loc 1 357 0
	mov	%d15, 0
	.loc 1 358 0
	jnz	%d2, .L28
.LVL27:
.LBB4:
	.loc 1 362 0
	ld.hu	%d15, [%a12] lo:NvM_Prv_RequestQueues_ast
	.loc 1 361 0
	ld.w	%d2, [%a15] 8
	madd	%d3, %d2, %d15, 12
	mov.a	%a15, %d3
	.loc 1 363 0
	ld.bu	%d15, [%a15]0
.LBE4:
	.loc 1 357 0
	eq	%d15, %d15, %d8
.LVL28:
.L28:
	.loc 1 369 0
	mov	%d2, %d15
	ret
.LFE35:
	.size	NvM_Prv_RequestQueue_IsMultiEnqueued, .-NvM_Prv_RequestQueue_IsMultiEnqueued
.section .data.a4.NvM_Prv_RequestQueues_ast,"aw",@progbits
	.align 2
	.type	NvM_Prv_RequestQueues_ast, @object
	.size	NvM_Prv_RequestQueues_ast, 32
NvM_Prv_RequestQueues_ast:
	.short	0
	.short	1
	.short	1
	.zero	2
	.word	NvM_Prv_RequestQueueEntries_ast
	.word	0
	.short	0
	.short	20
	.short	20
	.zero	2
	.word	NvM_Prv_RequestQueueEntries_ast+12
	.word	NvM_Rb_minNrFreeStdQueueEntries_u8
.section .bss.a4.NvM_Prv_RequestQueueEntries_ast,"aw",@nobits
	.align 2
	.type	NvM_Prv_RequestQueueEntries_ast, @object
	.size	NvM_Prv_RequestQueueEntries_ast, 252
NvM_Prv_RequestQueueEntries_ast:
	.zero	252
	.global	NvM_Rb_minNrFreeStdQueueEntries_u8
.section .bss.a1.NvM_Rb_minNrFreeStdQueueEntries_u8,"aw",@nobits
	.type	NvM_Rb_minNrFreeStdQueueEntries_u8, @object
	.size	NvM_Rb_minNrFreeStdQueueEntries_u8, 1
NvM_Rb_minNrFreeStdQueueEntries_u8:
	.zero	1
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
	.uaword	.LFB31
	.uaword	.LFE31-.LFB31
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB32
	.uaword	.LFE32-.LFB32
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB33
	.uaword	.LFE33-.LFB33
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB34
	.uaword	.LFE34-.LFB34
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB35
	.uaword	.LFE35-.LFB35
	.align 2
.LEFDE8:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\main\\_MainModule\\CalibData\\MAIN_CalibData.h"
	.file 4 ".\\output\\inc/..\\..\\rte\\Rte_Type.h"
	.file 5 ".\\output\\inc/..\\..\\bsw\\NvM\\api\\NvM_Types.h"
	.file 6 "bsw\\NvM\\src\\Internal\\QueueHandling\\NvM_Prv_Queue_Types.h"
	.file 7 "bsw\\NvM\\src\\Internal\\QueueHandling\\NvM_Prv_Queue.h"
	.file 8 ".\\output\\inc/..\\..\\bsw\\NvM\\src\\Internal\\ProcessMultiBlock\\NvM_Prv_ProcessMultiBlock.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xe75
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\NvM\\src\\Internal\\QueueHandling\\NvM_RequestQueue.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0
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
	.uaword	0x1e0
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
	.uaword	0x20c
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
	.uaword	0x248
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
	.uaword	0x1e0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x4
	.string	"eCalibIndex"
	.byte	0x1
	.byte	0x3
	.byte	0x15
	.uaword	0x37c
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_UI_INDEX"
	.sleb128 0
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_VI_INDEX"
	.sleb128 1
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_WI_INDEX"
	.sleb128 2
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_VO_INDEX"
	.sleb128 3
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_VALID_PARAM_NO"
	.sleb128 4
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_MAX_NO"
	.sleb128 16
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.byte	0x3
	.byte	0x1f
	.uaword	0x3f4
	.uleb128 0x5
	.string	"eMAIN_CALIB_IDX_MCU1"
	.sleb128 0
	.uleb128 0x5
	.string	"eMAIN_CALIB_IDX_MCU2"
	.sleb128 1
	.uleb128 0x5
	.string	"eMAIN_CALIB_IDX_ACM"
	.sleb128 2
	.uleb128 0x5
	.string	"eMAIN_CALIB_IDX_EPS"
	.sleb128 3
	.uleb128 0x5
	.string	"eMAIN_CALIB_ECU_NO"
	.sleb128 4
	.byte	0
	.uleb128 0x4
	.string	"eRcGainIndex"
	.byte	0x1
	.byte	0x3
	.byte	0x27
	.uaword	0x631
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_RC00_INDEX"
	.sleb128 0
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_RC01_INDEX"
	.sleb128 1
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_RC02_INDEX"
	.sleb128 2
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_RC03_INDEX"
	.sleb128 3
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_RC04_INDEX"
	.sleb128 4
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_RC05_INDEX"
	.sleb128 5
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_RC06_INDEX"
	.sleb128 6
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_RC07_INDEX"
	.sleb128 7
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_RC08_INDEX"
	.sleb128 8
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_RC09_INDEX"
	.sleb128 9
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_RC10_INDEX"
	.sleb128 10
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_RC11_INDEX"
	.sleb128 11
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_RC12_INDEX"
	.sleb128 12
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_RC13_INDEX"
	.sleb128 13
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_RC14_INDEX"
	.sleb128 14
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_RC15_INDEX"
	.sleb128 15
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_RC16_INDEX"
	.sleb128 16
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_VALID_RC_NO"
	.sleb128 17
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_MAX_RC_NO"
	.sleb128 25
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.uleb128 0x8
	.byte	0x4
	.uaword	0x639
	.uleb128 0x9
	.uaword	0x1d3
	.uleb128 0x9
	.uaword	0x643
	.uleb128 0x8
	.byte	0x4
	.uaword	0x1d3
	.uleb128 0x9
	.uaword	0x1fe
	.uleb128 0xa
	.string	"NvM_BlockIdType"
	.byte	0x4
	.uahalf	0x1ca
	.uaword	0x1fe
	.uleb128 0xa
	.string	"NvM_Prv_ServiceBit_tuo"
	.byte	0x5
	.uahalf	0x147
	.uaword	0x1fe
	.uleb128 0xa
	.string	"NvM_Prv_idService_tuo"
	.byte	0x5
	.uahalf	0x14c
	.uaword	0x1d3
	.uleb128 0xb
	.byte	0x1
	.byte	0x5
	.uahalf	0x159
	.uaword	0x701
	.uleb128 0x5
	.string	"NvM_Prv_idQueue_Multi_e"
	.sleb128 0
	.uleb128 0x5
	.string	"NvM_Prv_idQueue_Standard_e"
	.sleb128 1
	.uleb128 0x5
	.string	"NvM_Prv_idQueue_nrQueues_e"
	.sleb128 2
	.byte	0
	.uleb128 0xa
	.string	"NvM_Prv_idQueue_tuo"
	.byte	0x5
	.uahalf	0x174
	.uaword	0x1d3
	.uleb128 0xc
	.byte	0x4
	.byte	0x5
	.uahalf	0x180
	.uaword	0x756
	.uleb128 0xd
	.string	"ptrRamBlock_pv"
	.byte	0x5
	.uahalf	0x182
	.uaword	0x631
	.uleb128 0xd
	.string	"ptrRamBlock_pu8"
	.byte	0x5
	.uahalf	0x183
	.uaword	0x643
	.byte	0
	.uleb128 0xa
	.string	"NvM_Prv_ptrRamBlock_tun"
	.byte	0x5
	.uahalf	0x185
	.uaword	0x71d
	.uleb128 0xe
	.byte	0xc
	.byte	0x5
	.uahalf	0x191
	.uaword	0x7d6
	.uleb128 0xf
	.uaword	.LASF0
	.byte	0x5
	.uahalf	0x194
	.uaword	0x685
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"idBlock_uo"
	.byte	0x5
	.uahalf	0x197
	.uaword	0x64e
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x10
	.string	"ServiceBit_uo"
	.byte	0x5
	.uahalf	0x19a
	.uaword	0x666
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.string	"BlockData_un"
	.byte	0x5
	.uahalf	0x19e
	.uaword	0x756
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0xa
	.string	"NvM_Prv_QueueEntry_tst"
	.byte	0x5
	.uahalf	0x1a0
	.uaword	0x776
	.uleb128 0x11
	.byte	0x6
	.byte	0x6
	.byte	0x16
	.uaword	0x83e
	.uleb128 0x12
	.uaword	.LASF1
	.byte	0x6
	.byte	0x1a
	.uaword	0x1fe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.string	"cntrFreeEntries_u16"
	.byte	0x6
	.byte	0x1c
	.uaword	0x1fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x13
	.string	"size_cu16"
	.byte	0x6
	.byte	0x1e
	.uaword	0x649
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"NvM_Prv_Queue_tst"
	.byte	0x6
	.byte	0x20
	.uaword	0x7f5
	.uleb128 0x14
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.uaword	0x8be
	.uleb128 0x15
	.string	"RequestData_pu8"
	.byte	0x1
	.byte	0x1b
	.uaword	0x643
	.uleb128 0x15
	.string	"RequestData_pcu8"
	.byte	0x1
	.byte	0x1d
	.uaword	0x633
	.uleb128 0x15
	.string	"RequestData_pst"
	.byte	0x1
	.byte	0x1f
	.uaword	0x8be
	.uleb128 0x15
	.string	"RequestData_pcst"
	.byte	0x1
	.byte	0x21
	.uaword	0x8c4
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0x7d6
	.uleb128 0x8
	.byte	0x4
	.uaword	0x8ca
	.uleb128 0x9
	.uaword	0x7d6
	.uleb128 0x3
	.string	"NvM_Prv_Request_Data_tun"
	.byte	0x1
	.byte	0x23
	.uaword	0x857
	.uleb128 0x11
	.byte	0x10
	.byte	0x1
	.byte	0x2e
	.uaword	0x939
	.uleb128 0x13
	.string	"Queue_st"
	.byte	0x1
	.byte	0x31
	.uaword	0x83e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF2
	.byte	0x1
	.byte	0x33
	.uaword	0x939
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x13
	.string	"minNrFreeEntries_cpu8"
	.byte	0x1
	.byte	0x35
	.uaword	0x63e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x9
	.uaword	0x8be
	.uleb128 0x3
	.string	"NvM_Prv_Request_Queue_tst"
	.byte	0x1
	.byte	0x37
	.uaword	0x8ef
	.uleb128 0x16
	.byte	0x1
	.string	"NvM_Prv_RequestQueue_Initialize"
	.byte	0x1
	.byte	0xdd
	.byte	0x1
	.uaword	.LFB31
	.uaword	.LFE31
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xa01
	.uleb128 0x17
	.string	"isSavedZoneDataLost_b"
	.byte	0x1
	.byte	0xdd
	.uaword	0x285
	.uaword	.LLST0
	.uleb128 0x18
	.uaword	.LASF3
	.byte	0x1
	.byte	0xdf
	.uaword	0x701
	.uaword	.LLST1
	.uleb128 0x19
	.uaword	.LVL1
	.uaword	0xd6b
	.uaword	0x9d8
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.uaword	.LVL3
	.uaword	0xd6b
	.uaword	0x9ef
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	NvM_Prv_RequestQueues_ast+16
	.byte	0
	.uleb128 0x1b
	.uaword	.LVL7
	.byte	0x1
	.uaword	0xd6b
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 16
	.byte	0
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.string	"NvM_Prv_RequestQueue_Enqueue"
	.byte	0x1
	.byte	0xfa
	.byte	0x1
	.uaword	0x285
	.uaword	.LFB32
	.uaword	.LFE32
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xb14
	.uleb128 0x1d
	.uaword	.LASF3
	.byte	0x1
	.byte	0xfa
	.uaword	0x701
	.uaword	.LLST2
	.uleb128 0x17
	.string	"QueueEntry_pcst"
	.byte	0x1
	.byte	0xfb
	.uaword	0x8c4
	.uaword	.LLST3
	.uleb128 0x1e
	.string	"isRequestEnqueued_b"
	.byte	0x1
	.byte	0xfd
	.uaword	0x285
	.uaword	.LLST4
	.uleb128 0x1f
	.string	"QueueBuffer_un"
	.byte	0x1
	.byte	0xff
	.uaword	0x8cf
	.byte	0x3
	.byte	0x6e
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x20
	.string	"RequestData_un"
	.byte	0x1
	.uahalf	0x100
	.uaword	0x8cf
	.byte	0x3
	.byte	0x6c
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x21
	.uaword	.LBB2
	.uaword	.LBE2
	.uaword	0xb03
	.uleb128 0x20
	.string	"minNrFreeEntries_pu8"
	.byte	0x1
	.uahalf	0x108
	.uaword	0x643
	.byte	0x1
	.byte	0x6d
	.uleb128 0x22
	.uaword	.LVL15
	.uaword	0xd9a
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3c
	.uleb128 0x1a
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x22
	.uaword	.LVL11
	.uaword	0xdd3
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.string	"NvM_Prv_RequestQueue_Dequeue"
	.byte	0x1
	.uahalf	0x126
	.byte	0x1
	.uaword	.LFB33
	.uaword	.LFE33
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xb62
	.uleb128 0x24
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x126
	.uaword	0x701
	.uaword	.LLST5
	.uleb128 0x25
	.uaword	.LVL18
	.byte	0x1
	.uaword	0xe07
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.string	"NvM_Prv_RequestQueue_GetEntryToProcess"
	.byte	0x1
	.uahalf	0x13c
	.byte	0x1
	.uaword	0x701
	.uaword	.LFB34
	.uaword	.LFE34
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xc03
	.uleb128 0x27
	.string	"QueueEntry_ppst"
	.byte	0x1
	.uahalf	0x13c
	.uaword	0xc03
	.uaword	.LLST6
	.uleb128 0x28
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x13e
	.uaword	0x701
	.uaword	.LLST7
	.uleb128 0x21
	.uaword	.LBB3
	.uaword	.LBE3
	.uaword	0xbe9
	.uleb128 0x29
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x14c
	.uaword	0x8be
	.byte	0
	.uleb128 0x2a
	.uaword	.LVL21
	.uaword	0xe2d
	.uleb128 0x22
	.uaword	.LVL23
	.uaword	0xe52
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0x8be
	.uleb128 0x26
	.byte	0x1
	.string	"NvM_Prv_RequestQueue_IsMultiEnqueued"
	.byte	0x1
	.uahalf	0x163
	.byte	0x1
	.uaword	0x285
	.uaword	.LFB35
	.uaword	.LFE35
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xcc6
	.uleb128 0x24
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x163
	.uaword	0x685
	.uaword	.LLST8
	.uleb128 0x2b
	.string	"IsEnqueuedMulti_b"
	.byte	0x1
	.uahalf	0x165
	.uaword	0x285
	.uaword	.LLST9
	.uleb128 0x21
	.uaword	.LBB4
	.uaword	.LBE4
	.uaword	0xcb5
	.uleb128 0x28
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x168
	.uaword	0x1fe
	.uaword	.LLST10
	.uleb128 0x2b
	.string	"idServiceEnqueued_uo"
	.byte	0x1
	.uahalf	0x169
	.uaword	0x685
	.uaword	.LLST11
	.byte	0
	.uleb128 0x22
	.uaword	.LVL26
	.uaword	0xe52
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uaword	0x7d6
	.uaword	0xcd6
	.uleb128 0x2d
	.uaword	0x2b5
	.byte	0x14
	.byte	0
	.uleb128 0x1f
	.string	"NvM_Prv_RequestQueueEntries_ast"
	.byte	0x1
	.byte	0x85
	.uaword	0xcc6
	.byte	0x5
	.byte	0x3
	.uaword	NvM_Prv_RequestQueueEntries_ast
	.uleb128 0x2c
	.uaword	0x93e
	.uaword	0xd13
	.uleb128 0x2d
	.uaword	0x2b5
	.byte	0x1
	.byte	0
	.uleb128 0x1f
	.string	"NvM_Prv_RequestQueues_ast"
	.byte	0x1
	.byte	0x8e
	.uaword	0xd03
	.byte	0x5
	.byte	0x3
	.uaword	NvM_Prv_RequestQueues_ast
	.uleb128 0x2e
	.string	"NvM_Rb_minNrFreeStdQueueEntries_u8"
	.byte	0x1
	.byte	0x76
	.uaword	0x1d3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	NvM_Rb_minNrFreeStdQueueEntries_u8
	.uleb128 0x2f
	.byte	0x1
	.string	"NvM_Prv_Queue_Initialize"
	.byte	0x7
	.byte	0x13
	.byte	0x1
	.byte	0x1
	.uaword	0xd94
	.uleb128 0x30
	.uaword	0xd94
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0x83e
	.uleb128 0x31
	.byte	0x1
	.string	"NvM_Prv_Queue_Enqueue"
	.byte	0x7
	.byte	0x1d
	.byte	0x1
	.uaword	0x1fe
	.byte	0x1
	.uaword	0xdd3
	.uleb128 0x30
	.uaword	0xd94
	.uleb128 0x30
	.uaword	0x643
	.uleb128 0x30
	.uaword	0x633
	.uleb128 0x30
	.uaword	0x23a
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"NvM_Prv_Queue_IsFull"
	.byte	0x7
	.byte	0x17
	.byte	0x1
	.uaword	0x285
	.byte	0x1
	.uaword	0xdfc
	.uleb128 0x30
	.uaword	0xdfc
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0xe02
	.uleb128 0x9
	.uaword	0x83e
	.uleb128 0x2f
	.byte	0x1
	.string	"NvM_Prv_Queue_Dequeue"
	.byte	0x7
	.byte	0x22
	.byte	0x1
	.byte	0x1
	.uaword	0xe2d
	.uleb128 0x30
	.uaword	0xd94
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.string	"NvM_Prv_Multi_IsInProgress"
	.byte	0x8
	.byte	0x15
	.byte	0x1
	.uaword	0x285
	.byte	0x1
	.uleb128 0x33
	.byte	0x1
	.string	"NvM_Prv_Queue_IsEmpty"
	.byte	0x7
	.byte	0x15
	.byte	0x1
	.uaword	0x285
	.byte	0x1
	.uleb128 0x30
	.uaword	0xdfc
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
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x38
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xb
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
	.uleb128 0xb
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
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
	.uleb128 0x27
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
	.uleb128 0x6
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x33
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
	.uaword	.LVL1-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL1-1
	.uaword	.LFE31
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL2
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL2
	.uaword	.LVL4
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LFE31
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL8
	.uaword	.LVL11-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL11-1
	.uaword	.LFE32
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL9
	.uaword	.LFE32
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL8
	.uaword	.LVL12
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL13
	.uaword	.LVL16
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LFE32
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL17
	.uaword	.LVL18-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL18-1
	.uaword	.LFE33
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL20
	.uaword	.LFE34
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LVL22
	.uahalf	0x3
	.byte	0x7a
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL22
	.uaword	.LFE34
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL25
	.uaword	.LVL26-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL26-1
	.uaword	.LFE35
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL25
	.uaword	.LVL28
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL28
	.uaword	.LFE35
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL27
	.uaword	.LVL28
	.uahalf	0x5
	.byte	0x3
	.uaword	NvM_Prv_RequestQueues_ast
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL27
	.uaword	.LVL28
	.uahalf	0x14
	.byte	0x3
	.uaword	NvM_Prv_RequestQueues_ast
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x3c
	.byte	0x1e
	.byte	0x3
	.uaword	NvM_Prv_RequestQueues_ast+8
	.byte	0x6
	.byte	0x22
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
	.uaword	.LFB31
	.uaword	.LFE31-.LFB31
	.uaword	.LFB32
	.uaword	.LFE32-.LFB32
	.uaword	.LFB33
	.uaword	.LFE33-.LFB33
	.uaword	.LFB34
	.uaword	.LFE34-.LFB34
	.uaword	.LFB35
	.uaword	.LFE35-.LFB35
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB31
	.uaword	.LFE31
	.uaword	.LFB32
	.uaword	.LFE32
	.uaword	.LFB33
	.uaword	.LFE33
	.uaword	.LFB34
	.uaword	.LFE34
	.uaword	.LFB35
	.uaword	.LFE35
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF1:
	.string	"idxHead_u16"
.LASF0:
	.string	"idService_uo"
.LASF2:
	.string	"data_cpo"
.LASF3:
	.string	"idQueue_uo"
	.extern	NvM_Prv_Queue_IsEmpty,STT_FUNC,0
	.extern	NvM_Prv_Multi_IsInProgress,STT_FUNC,0
	.extern	NvM_Prv_Queue_Dequeue,STT_FUNC,0
	.extern	NvM_Prv_Queue_Enqueue,STT_FUNC,0
	.extern	NvM_Prv_Queue_IsFull,STT_FUNC,0
	.extern	NvM_Prv_Queue_Initialize,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
