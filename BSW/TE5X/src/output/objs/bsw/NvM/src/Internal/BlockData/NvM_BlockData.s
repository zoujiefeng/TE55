	.file	"NvM_BlockData.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.NvM_Prv_Block_InitializeData,"ax",@progbits
	.align 1
	.global	NvM_Prv_Block_InitializeData
	.type	NvM_Prv_Block_InitializeData, @function
NvM_Prv_Block_InitializeData:
.LFB109:
	.file 1 "bsw\\NvM\\src\\Internal\\BlockData\\NvM_BlockData.c"
	.loc 1 264 0
.LVL0:
	movh	%d7, hi:NvM_Prv_BlockDescriptors_acst
	movh.a	%a4, hi:NvM_Prv_stBlock_au8
	movh.a	%a3, hi:NvM_Prv_stRequests_au16
	movh.a	%a6, hi:NvM_Prv_stRequestResult_au8
	movh.a	%a5, hi:NvM_Prv_idxDataSet_au8
	.loc 1 264 0
	mov	%d15, 0
	addi	%d7, %d7, lo:NvM_Prv_BlockDescriptors_acst
	lea	%a4, [%a4] lo:NvM_Prv_stBlock_au8
	lea	%a3, [%a3] lo:NvM_Prv_stRequests_au16
	lea	%a6, [%a6] lo:NvM_Prv_stRequestResult_au8
	lea	%a5, [%a5] lo:NvM_Prv_idxDataSet_au8
.LBB17:
	.loc 1 281 0
	ne	%d1, %d4, 0
	.loc 1 283 0
	mov	%d0, 0
	.loc 1 300 0
	mov	%d2, 0
	lea	%a15, 59
.LVL1:
.L5:
.LBB18:
.LBB19:
	.file 2 "bsw\\NvM\\src\\Internal\\BlockData\\NvM_Prv_BlockDescriptor_Inl.h"
	.loc 2 78 0
	madd	%d3, %d7, %d15, 52
.LBE19:
.LBE18:
.LBB21:
.LBB22:
	.loc 2 77 0
	mov	%d6, 1
.LBE22:
.LBE21:
.LBB25:
.LBB20:
	.loc 2 78 0
	mov.a	%a2, %d3
	ld.w	%d3, [%a2] 48
.LVL2:
.LBE20:
.LBE25:
.LBB26:
.LBB23:
	.loc 2 77 0
	jnz.t	%d3, 11, .L6
.LBE23:
.LBE26:
	.loc 1 276 0
	addsc.a	%a2, %a4, %d15, 0
	nand.t	%d6, %d3,13, %d3,13
	ld.bu	%d5, [%a2]0
	.loc 1 281 0
	and	%d6, %d1
	.loc 1 276 0
	and	%d5, %d5, 159
	st.b	[%a2]0, %d5
	.loc 1 281 0
	jz	%d6, .L3
.LBB27:
.LBB24:
	.loc 2 77 0
	mov	%d6, 0
.L6:
.LBE24:
.LBE27:
	.loc 1 283 0
	addsc.a	%a2, %a4, %d15, 0
	mov	%d5, 0
	st.b	[%a2]0, %d0
.L3:
	.loc 1 290 0
	or	%d6, %d4
	jz	%d6, .L8
.LVL3:
.LBB28:
.LBB29:
	.loc 2 77 0
	jz.t	%d3, 4, .L8
.LBE29:
.LBE28:
	.loc 1 295 0
	addsc.a	%a2, %a4, %d15, 0
	or	%d5, %d5, 8
	st.b	[%a2]0, %d5
.LVL4:
.L8:
	.loc 1 300 0 discriminator 2
	addsc.a	%a2, %a3, %d15, 1
	st.h	[%a2]0, %d2
	.loc 1 302 0 discriminator 2
	addsc.a	%a2, %a6, %d15, 0
	st.b	[%a2]0, %d2
	.loc 1 304 0 discriminator 2
	addsc.a	%a2, %a5, %d15, 0
	add	%d15, 1
.LVL5:
	st.b	[%a2]0, %d2
.LVL6:
.LBE17:
	.loc 1 268 0 discriminator 2
	loop	%a15, .L5
	.loc 1 307 0
	mov	%d15, 0
.LVL7:
	movh.a	%a15, hi:NvM_Prv_Block_IsNvmEnqueuingForMulti_pfct
	st.w	[%a15] lo:NvM_Prv_Block_IsNvmEnqueuingForMulti_pfct, %d15
	ret
.LFE109:
	.size	NvM_Prv_Block_InitializeData, .-NvM_Prv_Block_InitializeData
.section .text.NvM_Prv_Block_SetIsNvmEnqueuingForMulti,"ax",@progbits
	.align 1
	.global	NvM_Prv_Block_SetIsNvmEnqueuingForMulti
	.type	NvM_Prv_Block_SetIsNvmEnqueuingForMulti, @function
NvM_Prv_Block_SetIsNvmEnqueuingForMulti:
.LFB110:
	.loc 1 337 0
.LVL8:
	.loc 1 338 0
	movh.a	%a15, hi:NvM_Prv_Block_IsNvmEnqueuingForMulti_pfct
	st.a	[%a15] lo:NvM_Prv_Block_IsNvmEnqueuingForMulti_pfct, %a4
	ret
.LFE110:
	.size	NvM_Prv_Block_SetIsNvmEnqueuingForMulti, .-NvM_Prv_Block_SetIsNvmEnqueuingForMulti
.section .text.NvM_Prv_Block_IsNvmEnqueuingForMulti,"ax",@progbits
	.align 1
	.global	NvM_Prv_Block_IsNvmEnqueuingForMulti
	.type	NvM_Prv_Block_IsNvmEnqueuingForMulti, @function
NvM_Prv_Block_IsNvmEnqueuingForMulti:
.LFB111:
	.loc 1 353 0
.LVL9:
	.loc 1 357 0
	ge.u	%d15, %d4, 60
	jnz	%d15, .L16
	.loc 1 357 0 is_stmt 0 discriminator 1
	movh.a	%a15, hi:NvM_Prv_Block_IsNvmEnqueuingForMulti_pfct
	ld.a	%a15, [%a15] lo:NvM_Prv_Block_IsNvmEnqueuingForMulti_pfct
	jz.a	%a15, .L16
	.loc 1 359 0 is_stmt 1
	ji	%a15
.LVL10:
.L16:
	.loc 1 363 0
	mov	%d2, 0
	ret
.LFE111:
	.size	NvM_Prv_Block_IsNvmEnqueuingForMulti, .-NvM_Prv_Block_IsNvmEnqueuingForMulti
.section .text.NvM_Rb_GetBlockType,"ax",@progbits
	.align 1
	.global	NvM_Rb_GetBlockType
	.type	NvM_Rb_GetBlockType, @function
NvM_Rb_GetBlockType:
.LFB112:
	.loc 1 380 0
.LVL11:
	.loc 1 383 0
	add	%d15, %d4, -2
	ge.u	%d15, %d15, 58
	.loc 1 381 0
	mov	%d2, 0
	.loc 1 383 0
	jnz	%d15, .L21
.LVL12:
.LBB30:
.LBB31:
	.loc 2 208 0
	movh.a	%a15, hi:NvM_Prv_BlockDescriptors_acst
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:NvM_Prv_BlockDescriptors_acst
	madd	%d2, %d15, %d4, 52
	mov.a	%a15, %d2
	ld.bu	%d2, [%a15] 44
.LVL13:
.L21:
.LBE31:
.LBE30:
	.loc 1 389 0
	ret
.LFE112:
	.size	NvM_Rb_GetBlockType, .-NvM_Rb_GetBlockType
.section .text.NvM_Rb_IsInitAtLayoutChangeEnqueued,"ax",@progbits
	.align 1
	.global	NvM_Rb_IsInitAtLayoutChangeEnqueued
	.type	NvM_Rb_IsInitAtLayoutChangeEnqueued, @function
NvM_Rb_IsInitAtLayoutChangeEnqueued:
.LFB113:
	.loc 1 406 0
	.loc 1 407 0
	call	NvM_Prv_GetActiveService
.LVL14:
.LBB32:
.LBB33:
	.file 3 "bsw\\NvM\\src\\Internal\\BlockData\\NvM_Prv_BlockData_Inl.h"
	.loc 3 308 0
	movh.a	%a15, hi:NvM_Prv_stRequests_au16
.LBE33:
.LBE32:
	.loc 1 409 0
	ld.h	%d15, [%a15] lo:NvM_Prv_stRequests_au16
	ne	%d2, %d2, 254
.LVL15:
	extr.u	%d15, %d15, 5, 1
	.loc 1 411 0
	and	%d2, %d15
	ret
.LFE113:
	.size	NvM_Rb_IsInitAtLayoutChangeEnqueued, .-NvM_Rb_IsInitAtLayoutChangeEnqueued
.section .text.NvM_Rb_IsBlockSelectedForInitAtLayoutChange,"ax",@progbits
	.align 1
	.global	NvM_Rb_IsBlockSelectedForInitAtLayoutChange
	.type	NvM_Rb_IsBlockSelectedForInitAtLayoutChange, @function
NvM_Rb_IsBlockSelectedForInitAtLayoutChange:
.LFB114:
	.loc 1 430 0
.LVL16:
	.loc 1 433 0
	add	%d15, %d4, -2
	ge.u	%d15, %d15, 58
	.loc 1 431 0
	mov	%d2, 0
	.loc 1 433 0
	jnz	%d15, .L25
.LVL17:
.LBB34:
.LBB35:
	.loc 2 78 0
	movh.a	%a15, hi:NvM_Prv_BlockDescriptors_acst
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:NvM_Prv_BlockDescriptors_acst
	madd	%d2, %d15, %d4, 52
	mov.a	%a15, %d2
	.loc 2 77 0
	ld.w	%d2, [%a15] 48
	extr.u	%d2, %d2, 3, 1
.LVL18:
.L25:
.LBE35:
.LBE34:
	.loc 1 438 0
	ret
.LFE114:
	.size	NvM_Rb_IsBlockSelectedForInitAtLayoutChange, .-NvM_Rb_IsBlockSelectedForInitAtLayoutChange
.section .text.NvM_Rb_IsBlockSelectedForFirstInitAll,"ax",@progbits
	.align 1
	.global	NvM_Rb_IsBlockSelectedForFirstInitAll
	.type	NvM_Rb_IsBlockSelectedForFirstInitAll, @function
NvM_Rb_IsBlockSelectedForFirstInitAll:
.LFB115:
	.loc 1 457 0
.LVL19:
	.loc 1 460 0
	add	%d15, %d4, -2
	ge.u	%d15, %d15, 58
	.loc 1 458 0
	mov	%d2, 0
	.loc 1 460 0
	jnz	%d15, .L28
.LVL20:
.LBB36:
.LBB37:
	.loc 2 78 0
	movh.a	%a15, hi:NvM_Prv_BlockDescriptors_acst
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:NvM_Prv_BlockDescriptors_acst
	madd	%d2, %d15, %d4, 52
	mov.a	%a15, %d2
	.loc 2 77 0
	ld.w	%d2, [%a15] 48
	extr.u	%d2, %d2, 2, 1
.LVL21:
.L28:
.LBE37:
.LBE36:
	.loc 1 465 0
	ret
.LFE115:
	.size	NvM_Rb_IsBlockSelectedForFirstInitAll, .-NvM_Rb_IsBlockSelectedForFirstInitAll
.section .bss.a4.NvM_Prv_Block_IsNvmEnqueuingForMulti_pfct,"aw",@nobits
	.align 2
	.type	NvM_Prv_Block_IsNvmEnqueuingForMulti_pfct, @object
	.size	NvM_Prv_Block_IsNvmEnqueuingForMulti_pfct, 4
NvM_Prv_Block_IsNvmEnqueuingForMulti_pfct:
	.zero	4
	.global	NvM_Prv_idConfigStored_u16
.section .bss.a2.NvM_Prv_idConfigStored_u16,"aw",@nobits
	.align 1
	.type	NvM_Prv_idConfigStored_u16, @object
	.size	NvM_Prv_idConfigStored_u16, 2
NvM_Prv_idConfigStored_u16:
	.zero	2
	.global	NvM_Prv_idxDataSet_au8
.section .bss.a1.NvM_Prv_idxDataSet_au8,"aw",@nobits
	.type	NvM_Prv_idxDataSet_au8, @object
	.size	NvM_Prv_idxDataSet_au8, 60
NvM_Prv_idxDataSet_au8:
	.zero	60
	.global	NvM_Prv_stRequestResult_au8
.section .bss.a1.NvM_Prv_stRequestResult_au8,"aw",@nobits
	.type	NvM_Prv_stRequestResult_au8, @object
	.size	NvM_Prv_stRequestResult_au8, 60
NvM_Prv_stRequestResult_au8:
	.zero	60
	.global	NvM_Prv_stRequests_au16
.section .bss.a2.NvM_Prv_stRequests_au16,"aw",@nobits
	.align 1
	.type	NvM_Prv_stRequests_au16, @object
	.size	NvM_Prv_stRequests_au16, 120
NvM_Prv_stRequests_au16:
	.zero	120
	.global	NvM_Prv_stBlock_au8
.section .bss.a1.NvM_Prv_stBlock_au8,"aw",@nobits
	.type	NvM_Prv_stBlock_au8, @object
	.size	NvM_Prv_stBlock_au8, 60
NvM_Prv_stBlock_au8:
	.zero	60
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
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB110
	.uaword	.LFE110-.LFB110
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB111
	.uaword	.LFE111-.LFB111
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB112
	.uaword	.LFE112-.LFB112
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB113
	.uaword	.LFE113-.LFB113
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB114
	.uaword	.LFE114-.LFB114
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB115
	.uaword	.LFE115-.LFB115
	.align 2
.LEFDE12:
.section .text,"ax",@progbits
.Letext0:
	.file 4 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 5 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 6 ".\\output\\inc/..\\..\\main\\_MainModule\\CalibData\\MAIN_CalibData.h"
	.file 7 ".\\output\\inc/..\\..\\rte\\Rte_Type.h"
	.file 8 ".\\output\\inc/..\\..\\bsw\\NvM\\api\\NvM_Types.h"
	.file 9 "bsw\\NvM\\src\\Internal\\BlockData\\NvM_Prv_BlockDescriptor.h"
	.file 10 "bsw\\NvM\\src\\Internal\\BlockData\\NvM_Prv_BlockData.h"
	.file 11 ".\\output\\inc/..\\..\\bsw\\NvM\\src\\NvM_Prv.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x1706
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\NvM\\src\\Internal\\BlockData\\NvM_BlockData.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x38
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
	.uaword	0x1d9
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
	.uaword	0x205
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
	.uaword	0x241
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
	.uaword	0x1d9
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
	.uaword	0x1cc
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x4
	.string	"eCalibIndex"
	.byte	0x1
	.byte	0x6
	.byte	0x15
	.uaword	0x38b
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
	.byte	0x6
	.byte	0x1f
	.uaword	0x403
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
	.byte	0x6
	.byte	0x27
	.uaword	0x640
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
	.uaword	0x648
	.uleb128 0x9
	.uaword	0x1f7
	.uleb128 0x8
	.byte	0x4
	.uaword	0x653
	.uleb128 0xa
	.uleb128 0xb
	.string	"NvM_BlockIdType"
	.byte	0x7
	.uahalf	0x1ca
	.uaword	0x1f7
	.uleb128 0xb
	.string	"NvM_RequestResultType"
	.byte	0x7
	.uahalf	0x1d4
	.uaword	0x1cc
	.uleb128 0x8
	.byte	0x4
	.uaword	0x690
	.uleb128 0xc
	.byte	0x1
	.uaword	0x2ae
	.uleb128 0x8
	.byte	0x4
	.uaword	0x69c
	.uleb128 0xd
	.byte	0x1
	.uaword	0x2ae
	.uaword	0x6ac
	.uleb128 0xe
	.uaword	0x1cc
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.byte	0xa2
	.uaword	0x6f2
	.uleb128 0x5
	.string	"NVM_BLOCK_NATIVE"
	.sleb128 0
	.uleb128 0x5
	.string	"NVM_BLOCK_REDUNDANT"
	.sleb128 1
	.uleb128 0x5
	.string	"NVM_BLOCK_DATASET"
	.sleb128 2
	.byte	0
	.uleb128 0x3
	.string	"NvM_BlockManagementType"
	.byte	0x8
	.byte	0xa6
	.uaword	0x6ac
	.uleb128 0xf
	.byte	0x1
	.byte	0x8
	.uahalf	0x13e
	.uaword	0x96d
	.uleb128 0x5
	.string	"NvM_Prv_ServiceBit_ReadAll_e"
	.sleb128 0
	.uleb128 0x5
	.string	"NvM_Prv_ServiceBit_RemoveNonResistant_e"
	.sleb128 1
	.uleb128 0x5
	.string	"NvM_Prv_ServiceBit_WriteAll_e"
	.sleb128 2
	.uleb128 0x5
	.string	"NvM_Prv_ServiceBit_FirstInitAll_e"
	.sleb128 3
	.uleb128 0x5
	.string	"NvM_Prv_ServiceBit_Maintain_e"
	.sleb128 4
	.uleb128 0x5
	.string	"NvM_Prv_ServiceBit_InitAtLayoutChange_e"
	.sleb128 5
	.uleb128 0x5
	.string	"NvM_Prv_ServiceBit_ValidateAll_e"
	.sleb128 6
	.uleb128 0x5
	.string	"NvM_Prv_ServiceBit_NotUsed_0_e"
	.sleb128 7
	.uleb128 0x5
	.string	"NvM_Prv_ServiceBit_Read_e"
	.sleb128 8
	.uleb128 0x5
	.string	"NvM_Prv_ServiceBit_Write_e"
	.sleb128 9
	.uleb128 0x5
	.string	"NvM_Prv_ServiceBit_Invalidate_e"
	.sleb128 10
	.uleb128 0x5
	.string	"NvM_Prv_ServiceBit_Erase_e"
	.sleb128 11
	.uleb128 0x5
	.string	"NvM_Prv_ServiceBit_Restore_e"
	.sleb128 12
	.uleb128 0x5
	.string	"NvM_Prv_ServiceBit_NotUsed_1_e"
	.sleb128 13
	.uleb128 0x5
	.string	"NvM_Prv_ServiceBit_NotUsed_2_e"
	.sleb128 14
	.uleb128 0x5
	.string	"NvM_Prv_ServiceBit_NotUsed_3_e"
	.sleb128 15
	.uleb128 0x5
	.string	"NvM_Prv_ServiceBit_Unspecified_e"
	.sleb128 16
	.uleb128 0x5
	.string	"NvM_Prv_ServiceBit_nr_e"
	.sleb128 17
	.byte	0
	.uleb128 0xb
	.string	"NvM_Prv_idService_tuo"
	.byte	0x8
	.uahalf	0x14c
	.uaword	0x1cc
	.uleb128 0x8
	.byte	0x4
	.uaword	0x991
	.uleb128 0xd
	.byte	0x1
	.uaword	0x2ae
	.uaword	0x9a1
	.uleb128 0xe
	.uaword	0x640
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.byte	0x9
	.byte	0x2d
	.uaword	0xc66
	.uleb128 0x5
	.string	"NVM_PRV_BLOCK_FLAG_SELECT_FOR_READ_ALL"
	.sleb128 1
	.uleb128 0x5
	.string	"NVM_PRV_BLOCK_FLAG_SELECT_FOR_WRITE_ALL"
	.sleb128 2
	.uleb128 0x5
	.string	"NVM_PRV_BLOCK_FLAG_SELECT_FOR_FIRST_INIT_ALL"
	.sleb128 4
	.uleb128 0x5
	.string	"NVM_PRV_BLOCK_FLAG_SELECT_FOR_INIT_AT_LAYOUT_CHANGE"
	.sleb128 8
	.uleb128 0x5
	.string	"NVM_PRV_BLOCK_FLAG_WRITE_PROTECTED"
	.sleb128 16
	.uleb128 0x5
	.string	"NVM_PRV_BLOCK_FLAG_WRITE_ONCE"
	.sleb128 32
	.uleb128 0x5
	.string	"NVM_PRV_BLOCK_FLAG_RESISTANT_TO_CHANGED_SW"
	.sleb128 64
	.uleb128 0x5
	.string	"NVM_PRV_BLOCK_FLAG_USE_SYNC_MECHANISM"
	.sleb128 128
	.uleb128 0x5
	.string	"NVM_PRV_BLOCK_FLAG_USE_AUTO_VALIDATION"
	.sleb128 256
	.uleb128 0x5
	.string	"NVM_PRV_BLOCK_FLAG_USE_VARIABLE_BLOCK_LENGTH"
	.sleb128 512
	.uleb128 0x5
	.string	"NVM_PRV_BLOCK_FLAG_SELECT_FOR_MIGRATION"
	.sleb128 1024
	.uleb128 0x5
	.string	"NVM_PRV_BLOCK_FLAG_RAM_INIT_UNCONDITIONAL"
	.sleb128 2048
	.uleb128 0x5
	.string	"NVM_PRV_BLOCK_FLAG_USE_CRC_COMP_MECHANISM"
	.sleb128 4096
	.uleb128 0x5
	.string	"NVM_PRV_BLOCK_FLAG_USE_RAM_CRC"
	.sleb128 8192
	.uleb128 0x5
	.string	"NVM_PRV_BLOCK_FLAG_USE_NV_CRC"
	.sleb128 16384
	.uleb128 0x5
	.string	"NVM_PRV_BLOCK_FLAG_USE_CRYPTO"
	.sleb128 32768
	.uleb128 0x5
	.string	"NVM_PRV_BLOCK_FLAG_CNTR_WRITE"
	.sleb128 65536
	.byte	0
	.uleb128 0x3
	.string	"NvM_Prv_BlockConfiguration_ten"
	.byte	0x9
	.byte	0x71
	.uaword	0x9a1
	.uleb128 0x10
	.byte	0xc
	.byte	0x9
	.byte	0x77
	.uaword	0xd00
	.uleb128 0x11
	.string	"MultiBlockCallback_pfct"
	.byte	0x9
	.byte	0x7f
	.uaword	0xd11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"RbMultiBlockStartCallback_pfct"
	.byte	0x9
	.byte	0x84
	.uaword	0xd23
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.string	"ObserverCallback_pfct"
	.byte	0x9
	.byte	0x8a
	.uaword	0xd43
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.uaword	0xd11
	.uleb128 0xe
	.uaword	0x1cc
	.uleb128 0xe
	.uaword	0x66c
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0xd00
	.uleb128 0x12
	.byte	0x1
	.uaword	0xd23
	.uleb128 0xe
	.uaword	0x1cc
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0xd17
	.uleb128 0xd
	.byte	0x1
	.uaword	0x2ae
	.uaword	0xd43
	.uleb128 0xe
	.uaword	0x654
	.uleb128 0xe
	.uaword	0x1cc
	.uleb128 0xe
	.uaword	0x66c
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0xd29
	.uleb128 0x3
	.string	"NvM_Prv_Common_tst"
	.byte	0x9
	.byte	0x8d
	.uaword	0xc8c
	.uleb128 0x10
	.byte	0x34
	.byte	0x9
	.byte	0x95
	.uaword	0xf45
	.uleb128 0x11
	.string	"idBlockMemIf_u16"
	.byte	0x9
	.byte	0x9b
	.uaword	0x1f7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"nrBlockBytes_pu16"
	.byte	0x9
	.byte	0xa9
	.uaword	0x642
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.string	"nrBlockBytesStored_u16"
	.byte	0x9
	.byte	0xb5
	.uaword	0x1f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.string	"idxDevice_u8"
	.byte	0x9
	.byte	0xbb
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x11
	.string	"nrNvBlocks_u8"
	.byte	0x9
	.byte	0xc0
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0x11
	.string	"nrRomBlocks_u8"
	.byte	0x9
	.byte	0xc5
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x11
	.string	"adrRamBlock_ppv"
	.byte	0x9
	.byte	0xd6
	.uaword	0xf45
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x11
	.string	"adrRomBlock_pcv"
	.byte	0x9
	.byte	0xde
	.uaword	0x64d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x11
	.string	"SingleBlockCallback_pfct"
	.byte	0x9
	.byte	0xe8
	.uaword	0xf65
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x11
	.string	"SingleBlockStartCallback_pfct"
	.byte	0x9
	.byte	0xf0
	.uaword	0x696
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x11
	.string	"InitBlockCallback_pfct"
	.byte	0x9
	.byte	0xf9
	.uaword	0x68a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x13
	.string	"ReadRamBlockFromNvm_pfct"
	.byte	0x9
	.uahalf	0x102
	.uaword	0x98b
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x13
	.string	"WriteRamBlockToNvm_pfct"
	.byte	0x9
	.uahalf	0x10b
	.uaword	0x98b
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x13
	.string	"BlockManagementType_en"
	.byte	0x9
	.uahalf	0x110
	.uaword	0x6f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x13
	.string	"JobPriority_u8"
	.byte	0x9
	.uahalf	0x115
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x2d
	.uleb128 0x13
	.string	"stFlags_uo"
	.byte	0x9
	.uahalf	0x13e
	.uaword	0x233
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0xf4b
	.uleb128 0x9
	.uaword	0x640
	.uleb128 0xd
	.byte	0x1
	.uaword	0x2ae
	.uaword	0xf65
	.uleb128 0xe
	.uaword	0x1cc
	.uleb128 0xe
	.uaword	0x66c
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0xf50
	.uleb128 0xb
	.string	"NvM_Prv_BlockDescriptor_tst"
	.byte	0x9
	.uahalf	0x153
	.uaword	0xd63
	.uleb128 0x14
	.byte	0x4
	.byte	0x9
	.uahalf	0x158
	.uaword	0xfcc
	.uleb128 0x13
	.string	"PersistentId_u16"
	.byte	0x9
	.uahalf	0x15a
	.uaword	0x1f7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.string	"BlockId_u16"
	.byte	0x9
	.uahalf	0x15b
	.uaword	0x654
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0xb
	.string	"NvM_Prv_PersId_BlockId_tst"
	.byte	0x9
	.uahalf	0x15c
	.uaword	0xf8f
	.uleb128 0x3
	.string	"NvM_Prv_Block_IsNvmEnqueuingForMulti_tpfct"
	.byte	0xa
	.byte	0x3e
	.uaword	0x1021
	.uleb128 0x8
	.byte	0x4
	.uaword	0x1027
	.uleb128 0xd
	.byte	0x1
	.uaword	0x27e
	.uaword	0x1037
	.uleb128 0xe
	.uaword	0x654
	.byte	0
	.uleb128 0x15
	.string	"NvM_Prv_IsBlockSelected"
	.byte	0x2
	.byte	0x4a
	.byte	0x1
	.uaword	0x27e
	.byte	0x3
	.uaword	0x1080
	.uleb128 0x16
	.uaword	.LASF0
	.byte	0x2
	.byte	0x4a
	.uaword	0x654
	.uleb128 0x17
	.string	"SelectionMask_en"
	.byte	0x2
	.byte	0x4b
	.uaword	0xc66
	.byte	0
	.uleb128 0x15
	.string	"NvM_Prv_GetBlockType"
	.byte	0x2
	.byte	0xcb
	.byte	0x1
	.uaword	0x6f2
	.byte	0x3
	.uaword	0x10bf
	.uleb128 0x16
	.uaword	.LASF0
	.byte	0x2
	.byte	0xcb
	.uaword	0x654
	.uleb128 0x18
	.string	"BlockType"
	.byte	0x2
	.byte	0xcd
	.uaword	0x6f2
	.byte	0
	.uleb128 0x19
	.string	"NvM_Prv_Block_IsRequestPending"
	.byte	0x3
	.uahalf	0x132
	.byte	0x1
	.uaword	0x27e
	.byte	0x3
	.uaword	0x1111
	.uleb128 0x1a
	.uaword	.LASF0
	.byte	0x3
	.uahalf	0x132
	.uaword	0x654
	.uleb128 0x1b
	.string	"maskService_u16"
	.byte	0x3
	.uahalf	0x132
	.uaword	0x1f7
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.string	"NvM_Prv_Block_InitializeData"
	.byte	0x1
	.uahalf	0x107
	.byte	0x1
	.uaword	.LFB109
	.uaword	.LFE109
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1231
	.uleb128 0x1d
	.string	"isSavedZoneDataLost_b"
	.byte	0x1
	.uahalf	0x107
	.uaword	0x27e
	.byte	0x1
	.byte	0x54
	.uleb128 0x1e
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x109
	.uaword	0x654
	.uaword	.LLST0
	.uleb128 0x1f
	.uaword	.LBB17
	.uaword	.LBE17
	.uleb128 0x20
	.string	"isRamBlockCrcEnabled_b"
	.byte	0x1
	.uahalf	0x10e
	.uaword	0x27e
	.uleb128 0x20
	.string	"isUnconditionalInitRequired_b"
	.byte	0x1
	.uahalf	0x10f
	.uaword	0x27e
	.uleb128 0x21
	.uaword	0x1037
	.uaword	.LBB18
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.uahalf	0x10e
	.uaword	0x11e7
	.uleb128 0x22
	.uaword	0x1067
	.uahalf	0x2000
	.uleb128 0x23
	.uaword	0x105c
	.uaword	.LLST1
	.byte	0
	.uleb128 0x21
	.uaword	0x1037
	.uaword	.LBB21
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x1
	.uahalf	0x10f
	.uaword	0x120c
	.uleb128 0x22
	.uaword	0x1067
	.uahalf	0x800
	.uleb128 0x23
	.uaword	0x105c
	.uaword	.LLST2
	.byte	0
	.uleb128 0x24
	.uaword	0x1037
	.uaword	.LBB28
	.uaword	.LBE28
	.byte	0x1
	.uahalf	0x125
	.uleb128 0x23
	.uaword	0x1067
	.uaword	.LLST3
	.uleb128 0x23
	.uaword	0x105c
	.uaword	.LLST4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.string	"NvM_Prv_Block_SetIsNvmEnqueuingForMulti"
	.byte	0x1
	.uahalf	0x150
	.byte	0x1
	.uaword	.LFB110
	.uaword	.LFE110
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1296
	.uleb128 0x1d
	.string	"IsNvmEnqueuingForMulti_pfct"
	.byte	0x1
	.uahalf	0x150
	.uaword	0xfef
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.string	"NvM_Prv_Block_IsNvmEnqueuingForMulti"
	.byte	0x1
	.uahalf	0x160
	.byte	0x1
	.uaword	0x27e
	.uaword	.LFB111
	.uaword	.LFE111
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1310
	.uleb128 0x26
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x160
	.uaword	0x654
	.uaword	.LLST5
	.uleb128 0x27
	.string	"IsBlockPartOfMulti_b"
	.byte	0x1
	.uahalf	0x162
	.uaword	0x27e
	.uaword	.LLST6
	.uleb128 0x28
	.uaword	.LVL10
	.byte	0x1
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.string	"NvM_Rb_GetBlockType"
	.byte	0x1
	.uahalf	0x17b
	.byte	0x1
	.uaword	0x6f2
	.uaword	.LFB112
	.uaword	.LFE112
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1393
	.uleb128 0x29
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x17b
	.uaword	0x654
	.byte	0x1
	.byte	0x54
	.uleb128 0x27
	.string	"BlockType_uo"
	.byte	0x1
	.uahalf	0x17d
	.uaword	0x6f2
	.uaword	.LLST7
	.uleb128 0x24
	.uaword	0x1080
	.uaword	.LBB30
	.uaword	.LBE30
	.byte	0x1
	.uahalf	0x181
	.uleb128 0x23
	.uaword	0x10a2
	.uaword	.LLST8
	.uleb128 0x1f
	.uaword	.LBB31
	.uaword	.LBE31
	.uleb128 0x2a
	.uaword	0x10ad
	.uaword	.LLST9
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.string	"NvM_Rb_IsInitAtLayoutChangeEnqueued"
	.byte	0x1
	.uahalf	0x195
	.byte	0x1
	.uaword	0x27e
	.uaword	.LFB113
	.uaword	.LFE113
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x141b
	.uleb128 0x27
	.string	"idServiceActive_uo"
	.byte	0x1
	.uahalf	0x197
	.uaword	0x96d
	.uaword	.LLST10
	.uleb128 0x2b
	.uaword	0x10bf
	.uaword	.LBB32
	.uaword	.LBE32
	.byte	0x1
	.uahalf	0x199
	.uaword	0x1411
	.uleb128 0x2c
	.uaword	0x10f8
	.byte	0x20
	.uleb128 0x2c
	.uaword	0x10ec
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uaword	.LVL14
	.uaword	0x16e6
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.string	"NvM_Rb_IsBlockSelectedForInitAtLayoutChange"
	.byte	0x1
	.uahalf	0x1ad
	.byte	0x1
	.uaword	0x27e
	.uaword	.LFB114
	.uaword	.LFE114
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x14a3
	.uleb128 0x29
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x1ad
	.uaword	0x654
	.byte	0x1
	.byte	0x54
	.uleb128 0x1e
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x1af
	.uaword	0x27e
	.uaword	.LLST11
	.uleb128 0x24
	.uaword	0x1037
	.uaword	.LBB34
	.uaword	.LBE34
	.byte	0x1
	.uahalf	0x1b3
	.uleb128 0x23
	.uaword	0x1067
	.uaword	.LLST12
	.uleb128 0x23
	.uaword	0x105c
	.uaword	.LLST13
	.byte	0
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.string	"NvM_Rb_IsBlockSelectedForFirstInitAll"
	.byte	0x1
	.uahalf	0x1c8
	.byte	0x1
	.uaword	0x27e
	.uaword	.LFB115
	.uaword	.LFE115
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1525
	.uleb128 0x29
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x1c8
	.uaword	0x654
	.byte	0x1
	.byte	0x54
	.uleb128 0x1e
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x1ca
	.uaword	0x27e
	.uaword	.LLST14
	.uleb128 0x24
	.uaword	0x1037
	.uaword	.LBB36
	.uaword	.LBE36
	.byte	0x1
	.uahalf	0x1ce
	.uleb128 0x23
	.uaword	0x1067
	.uaword	.LLST15
	.uleb128 0x23
	.uaword	0x105c
	.uaword	.LLST16
	.byte	0
	.byte	0
	.uleb128 0x2e
	.string	"NvM_Prv_Block_IsNvmEnqueuingForMulti_pfct"
	.byte	0x1
	.byte	0xc2
	.uaword	0xfef
	.byte	0x5
	.byte	0x3
	.uaword	NvM_Prv_Block_IsNvmEnqueuingForMulti_pfct
	.uleb128 0x2f
	.string	"NvM_Prv_Common_cst"
	.byte	0x9
	.uahalf	0x16d
	.uaword	0x1579
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.uaword	0xd49
	.uleb128 0x30
	.uaword	0xf6b
	.uaword	0x158e
	.uleb128 0x31
	.uaword	0x2c4
	.byte	0x3b
	.byte	0
	.uleb128 0x2f
	.string	"NvM_Prv_BlockDescriptors_acst"
	.byte	0x9
	.uahalf	0x172
	.uaword	0x15b6
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.uaword	0x157e
	.uleb128 0x30
	.uaword	0xfcc
	.uaword	0x15cb
	.uleb128 0x31
	.uaword	0x2c4
	.byte	0x39
	.byte	0
	.uleb128 0x2f
	.string	"NvM_Prv_PersId_BlockId_acst"
	.byte	0x9
	.uahalf	0x176
	.uaword	0x15f1
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.uaword	0x15bb
	.uleb128 0x30
	.uaword	0x1cc
	.uaword	0x1606
	.uleb128 0x31
	.uaword	0x2c4
	.byte	0x3b
	.byte	0
	.uleb128 0x32
	.string	"NvM_Prv_stBlock_au8"
	.byte	0x1
	.byte	0x3d
	.uaword	0x15f6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	NvM_Prv_stBlock_au8
	.uleb128 0x30
	.uaword	0x1f7
	.uaword	0x1638
	.uleb128 0x31
	.uaword	0x2c4
	.byte	0x3b
	.byte	0
	.uleb128 0x32
	.string	"NvM_Prv_stRequests_au16"
	.byte	0x1
	.byte	0x7b
	.uaword	0x1628
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	NvM_Prv_stRequests_au16
	.uleb128 0x30
	.uaword	0x66c
	.uaword	0x166e
	.uleb128 0x31
	.uaword	0x2c4
	.byte	0x3b
	.byte	0
	.uleb128 0x32
	.string	"NvM_Prv_stRequestResult_au8"
	.byte	0x1
	.byte	0x93
	.uaword	0x165e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	NvM_Prv_stRequestResult_au8
	.uleb128 0x32
	.string	"NvM_Prv_idxDataSet_au8"
	.byte	0x1
	.byte	0x9c
	.uaword	0x15f6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	NvM_Prv_idxDataSet_au8
	.uleb128 0x32
	.string	"NvM_Prv_idConfigStored_u16"
	.byte	0x1
	.byte	0xa6
	.uaword	0x1f7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	NvM_Prv_idConfigStored_u16
	.uleb128 0x33
	.byte	0x1
	.string	"NvM_Prv_GetActiveService"
	.byte	0xb
	.byte	0x6b
	.byte	0x1
	.uaword	0x96d
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
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1d
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x5
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x34
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
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
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL1
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL1
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL5
	.uaword	.LVL7
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL2
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL5
	.uaword	.LVL7
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x2
	.byte	0x40
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL9
	.uaword	.LVL10-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL10-1
	.uaword	.LVL10
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LFE111
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL11
	.uaword	.LVL13
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LFE112
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL16
	.uaword	.LVL18
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LFE114
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL19
	.uaword	.LVL21
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LFE115
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x4c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB109
	.uaword	.LFE109-.LFB109
	.uaword	.LFB110
	.uaword	.LFE110-.LFB110
	.uaword	.LFB111
	.uaword	.LFE111-.LFB111
	.uaword	.LFB112
	.uaword	.LFE112-.LFB112
	.uaword	.LFB113
	.uaword	.LFE113-.LFB113
	.uaword	.LFB114
	.uaword	.LFE114-.LFB114
	.uaword	.LFB115
	.uaword	.LFE115-.LFB115
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB18
	.uaword	.LBE18
	.uaword	.LBB25
	.uaword	.LBE25
	.uaword	0
	.uaword	0
	.uaword	.LBB21
	.uaword	.LBE21
	.uaword	.LBB26
	.uaword	.LBE26
	.uaword	.LBB27
	.uaword	.LBE27
	.uaword	0
	.uaword	0
	.uaword	.LFB109
	.uaword	.LFE109
	.uaword	.LFB110
	.uaword	.LFE110
	.uaword	.LFB111
	.uaword	.LFE111
	.uaword	.LFB112
	.uaword	.LFE112
	.uaword	.LFB113
	.uaword	.LFE113
	.uaword	.LFB114
	.uaword	.LFE114
	.uaword	.LFB115
	.uaword	.LFE115
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"idBlock_uo"
.LASF1:
	.string	"BlockId"
.LASF2:
	.string	"isBlockSelected_b"
	.extern	NvM_Prv_GetActiveService,STT_FUNC,0
	.extern	NvM_Prv_BlockDescriptors_acst,STT_OBJECT,3120
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
