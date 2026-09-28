	.file	"EcuM_MainFunction.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.EcuM_MainFunction,"ax",@progbits
	.align 1
	.global	EcuM_MainFunction
	.type	EcuM_MainFunction, @function
EcuM_MainFunction:
.LFB71:
	.file 1 "bsw\\EcuM\\src\\EcuM_MainFunction.c"
	.loc 1 107 0
	.loc 1 109 0
	movh.a	%a15, hi:EcuM_Prv_flgIsModuleInitialised_b
	ld.bu	%d15, [%a15] lo:EcuM_Prv_flgIsModuleInitialised_b
	jz	%d15, .L87
.LVL0:
.LBB13:
.LBB14:
	.loc 1 897 0
	movh.a	%a15, hi:EcuM_Prv_flgGoDown_b
	ld.bu	%d15, [%a15] lo:EcuM_Prv_flgGoDown_b
	jnz	%d15, .L88
.LBE14:
.LBE13:
	.loc 1 123 0
	mov	%d15, 3
	movh.a	%a15, hi:EcuM_Prv_dataPresentPhase_u8
	st.b	[%a15] lo:EcuM_Prv_dataPresentPhase_u8, %d15
.LBB25:
	.loc 1 130 0
#APP
	# 130 "bsw\EcuM\src\EcuM_MainFunction.c" 1
	mfcr %d15,0xfe1c
	# 0 "" 2
.LVL1:
#NO_APP
.LBE25:
	extr.u	%d15, %d15, 0, 16
.LVL2:
	jz	%d15, .L30
.L1:
	ret
.L88:
.LBB26:
.LBB22:
.LBB15:
.LBB16:
	.loc 1 492 0
	mov	%d15, 0
	movh.a	%a12, hi:EcuM_Prv_ShutDownflgCoresStopped
	.loc 1 493 0
	movh.a	%a13, hi:EcuM_Prv_ShutDownflgCoresTimeout
	.loc 1 492 0
	st.b	[%a12] lo:EcuM_Prv_ShutDownflgCoresStopped, %d15
	.loc 1 493 0
	st.b	[%a13] lo:EcuM_Prv_ShutDownflgCoresTimeout, %d15
.LBB17:
	.loc 1 495 0
#APP
	# 495 "bsw\EcuM\src\EcuM_MainFunction.c" 1
	mfcr %d15,0xfe1c
	# 0 "" 2
.LVL3:
#NO_APP
.LBE17:
	.loc 1 497 0
	extr.u	%d2, %d15, 0, 16
	jnz	%d2, .L4
	.loc 1 501 0
	movh.a	%a2, hi:EcuM_Prv_SlaveCoreTimeoutCtr_u8
	ld.bu	%d15, [%a2] lo:EcuM_Prv_SlaveCoreTimeoutCtr_u8
.LVL4:
	.loc 1 504 0
	movh.a	%a3, hi:EcuM_Prv_flgCoreReady_ab
	.loc 1 501 0
	add	%d15, 1
	and	%d15, 255
	st.b	[%a2] lo:EcuM_Prv_SlaveCoreTimeoutCtr_u8, %d15
	.loc 1 504 0
	lea	%a2, [%a3] lo:EcuM_Prv_flgCoreReady_ab
	mov	%d2, 1
	.loc 1 510 0
	ld.bu	%d3, [%a2] 1
	.loc 1 504 0
	st.b	[%a3] lo:EcuM_Prv_flgCoreReady_ab, %d2
.LVL5:
	.loc 1 510 0
	jz	%d3, .L5
.LVL6:
	ld.bu	%d3, [%a2] 2
	jz	%d3, .L5
.LVL7:
	ld.bu	%d3, [%a2] 3
	jz	%d3, .L5
.LVL8:
	st.b	[%a12] lo:EcuM_Prv_ShutDownflgCoresStopped, %d2
	.loc 1 523 0
	jge.u	%d15, 11, .L7
.LVL9:
.L8:
	.loc 1 539 0
	call	EcuM_OnGoOffOne
.LVL10:
	.loc 1 542 0
	call	BswM_Deinit
.LVL11:
	.loc 1 545 0
	call	SchM_Deinit
.LVL12:
	.loc 1 548 0
	mov	%d15, 0
	.loc 1 554 0
	mov	%d4, 24
	.loc 1 548 0
	st.b	[%a15] lo:EcuM_Prv_flgGoDown_b, %d15
	.loc 1 554 0
	j	Os_ShutdownAllCores
.LVL13:
.L87:
.LBE16:
.LBE15:
.LBE22:
.LBE26:
	.loc 1 113 0
	mov	%e4, 10
	mov	%d6, 24
	mov	%d7, 16
	j	Det_ReportError
.LVL14:
.L30:
.LBB27:
.LBB28:
	.loc 1 615 0
	movh.a	%a14, hi:EcuM_Prv_dataPendingWakeupEvents_u32
	ld.w	%d8, [%a14] lo:EcuM_Prv_dataPendingWakeupEvents_u32
.LVL15:
	.loc 1 617 0
	movh.a	%a15, hi:EcuM_Prv_WkpSrcValidationTimeoutCtr_u16
	.loc 1 620 0
	mov	%d4, %d8
	.loc 1 617 0
	ld.hu	%d9, [%a15] lo:EcuM_Prv_WkpSrcValidationTimeoutCtr_u16
.LVL16:
	.loc 1 620 0
	call	EcuM_Prv_WakeupIndication
.LVL17:
	.loc 1 622 0
	movh.a	%a15, hi:EcuM_Prv_dataOldPendingWakeupEvents_u32
	ld.w	%d2, [%a15] lo:EcuM_Prv_dataOldPendingWakeupEvents_u32
	jz	%d2, .L13
.LVL18:
	.loc 1 627 0
	movh.a	%a13, hi:EcuM_Cfg_idxWakeupSourcesPC_au32
	lea	%a13, [%a13] lo:EcuM_Cfg_idxWakeupSourcesPC_au32
	ld.w	%d15, [%a13] 8
	and	%d2, %d15
	jnz	%d2, .L89
.L14:
	.loc 1 636 0
	movh.a	%a12, hi:EcuM_Prv_dataValidatedWakeupEvents_u32
	ld.w	%d2, [%a12] lo:EcuM_Prv_dataValidatedWakeupEvents_u32
	and	%d15, %d2
	jz	%d15, .L15
	.loc 1 640 0
	ld.w	%d15, [%a14] lo:EcuM_Prv_dataPendingWakeupEvents_u32
	st.w	[%a15] lo:EcuM_Prv_dataOldPendingWakeupEvents_u32, %d15
.L15:
.LVL19:
	.loc 1 627 0
	ld.w	%d10, [%a13] 24
	ld.w	%d15, [%a15] lo:EcuM_Prv_dataOldPendingWakeupEvents_u32
	and	%d15, %d10
	jnz	%d15, .L90
.L16:
	.loc 1 636 0
	ld.w	%d4, [%a12] lo:EcuM_Prv_dataValidatedWakeupEvents_u32
	and	%d4, %d10
	jz	%d4, .L17
	.loc 1 640 0
	ld.w	%d15, [%a14] lo:EcuM_Prv_dataPendingWakeupEvents_u32
	st.w	[%a15] lo:EcuM_Prv_dataOldPendingWakeupEvents_u32, %d15
.L17:
.LVL20:
	.loc 1 627 0
	ld.w	%d10, [%a13] 40
	ld.w	%d15, [%a15] lo:EcuM_Prv_dataOldPendingWakeupEvents_u32
	and	%d15, %d10
	jnz	%d15, .L91
.L18:
	.loc 1 636 0
	ld.w	%d4, [%a12] lo:EcuM_Prv_dataValidatedWakeupEvents_u32
	and	%d4, %d10
	jz	%d4, .L19
	.loc 1 640 0
	ld.w	%d15, [%a14] lo:EcuM_Prv_dataPendingWakeupEvents_u32
	st.w	[%a15] lo:EcuM_Prv_dataOldPendingWakeupEvents_u32, %d15
.L19:
.LVL21:
	.loc 1 627 0
	ld.w	%d10, [%a13] 56
	ld.w	%d15, [%a15] lo:EcuM_Prv_dataOldPendingWakeupEvents_u32
	and	%d15, %d10
	jnz	%d15, .L92
.L20:
	.loc 1 636 0
	ld.w	%d4, [%a12] lo:EcuM_Prv_dataValidatedWakeupEvents_u32
	and	%d4, %d10
	jz	%d4, .L21
	.loc 1 640 0
	ld.w	%d15, [%a14] lo:EcuM_Prv_dataPendingWakeupEvents_u32
	st.w	[%a15] lo:EcuM_Prv_dataOldPendingWakeupEvents_u32, %d15
.L21:
.LVL22:
	.loc 1 627 0
	ld.w	%d10, [%a13] 72
	ld.w	%d15, [%a15] lo:EcuM_Prv_dataOldPendingWakeupEvents_u32
	and	%d15, %d10
	jnz	%d15, .L93
.L22:
	.loc 1 636 0
	ld.w	%d4, [%a12] lo:EcuM_Prv_dataValidatedWakeupEvents_u32
	and	%d4, %d10
	jz	%d4, .L23
	.loc 1 640 0
	ld.w	%d15, [%a14] lo:EcuM_Prv_dataPendingWakeupEvents_u32
	st.w	[%a15] lo:EcuM_Prv_dataOldPendingWakeupEvents_u32, %d15
.L23:
.LVL23:
	.loc 1 627 0
	ld.w	%d10, [%a13] 88
	ld.w	%d15, [%a15] lo:EcuM_Prv_dataOldPendingWakeupEvents_u32
	and	%d15, %d10
	jnz	%d15, .L94
.L24:
	.loc 1 636 0
	ld.w	%d4, [%a12] lo:EcuM_Prv_dataValidatedWakeupEvents_u32
	and	%d4, %d10
	jz	%d4, .L25
	.loc 1 640 0
	ld.w	%d15, [%a14] lo:EcuM_Prv_dataPendingWakeupEvents_u32
	st.w	[%a15] lo:EcuM_Prv_dataOldPendingWakeupEvents_u32, %d15
.L25:
.LVL24:
	.loc 1 627 0
	ld.w	%d10, [%a13] 104
	ld.w	%d15, [%a15] lo:EcuM_Prv_dataOldPendingWakeupEvents_u32
	and	%d15, %d10
	jnz	%d15, .L95
.L26:
	.loc 1 636 0
	ld.w	%d4, [%a12] lo:EcuM_Prv_dataValidatedWakeupEvents_u32
	and	%d4, %d10
	jz	%d4, .L27
	.loc 1 640 0
	ld.w	%d15, [%a14] lo:EcuM_Prv_dataPendingWakeupEvents_u32
	st.w	[%a15] lo:EcuM_Prv_dataOldPendingWakeupEvents_u32, %d15
.L27:
.LVL25:
	.loc 1 649 0
	jnz	%d9, .L13
	.loc 1 650 0
	ld.w	%d15, [%a15] lo:EcuM_Prv_dataOldPendingWakeupEvents_u32
	and	%d8, %d15
.LVL26:
	.loc 1 649 0
	jnz	%d8, .L96
.LVL27:
.L13:
	.loc 1 668 0
	j	EcuM_Prv_DecValidationCtr
.LVL28:
.L4:
	insert	%d15, %d15, 0, 16, 16
.LVL29:
.LBE28:
.LBE27:
.LBB30:
.LBB23:
.LBB20:
.LBB18:
	.loc 1 562 0
	movh.a	%a12, hi:EcuM_Prv_flgCoreReady_ab
	lea	%a12, [%a12] lo:EcuM_Prv_flgCoreReady_ab
	addsc.a	%a12, %a12, %d15, 0
	ld.bu	%d15, [%a12]0
	jnz	%d15, .L1
	ld.bu	%d15, [%a15] lo:EcuM_Prv_flgGoDown_b
	jne	%d15, 1, .L1
	.loc 1 565 0
	call	EcuM_OnGoOffOne
.LVL30:
	.loc 1 568 0
	call	SchM_Deinit
.LVL31:
	.loc 1 571 0
	st.b	[%a12]0, %d15
	ret
.LVL32:
.L96:
.LBE18:
.LBE20:
.LBE23:
.LBE30:
.LBB31:
.LBB29:
	.loc 1 654 0
	movh.a	%a15, hi:EcuM_Prv_dataExpiredWakeupEvents_u32
	ld.w	%d4, [%a15] lo:EcuM_Prv_dataExpiredWakeupEvents_u32
	.loc 1 655 0
	ld.w	%d2, [%a14] lo:EcuM_Prv_dataPendingWakeupEvents_u32
	.loc 1 654 0
	xor	%d4, %d15
	.loc 1 658 0
	movh.a	%a2, hi:EcuM_Prv_dataOldPendingWakeupEvents_u32
	.loc 1 655 0
	xor	%d15, %d2
	.loc 1 662 0
	mov	%d5, 3
	.loc 1 654 0
	st.w	[%a15] lo:EcuM_Prv_dataExpiredWakeupEvents_u32, %d4
	.loc 1 655 0
	st.w	[%a14] lo:EcuM_Prv_dataPendingWakeupEvents_u32, %d15
	.loc 1 658 0
	st.w	[%a2] lo:EcuM_Prv_dataOldPendingWakeupEvents_u32, %d9
	.loc 1 662 0
	call	BswM_EcuM_CurrentWakeup
.LVL33:
	.loc 1 665 0
	ld.w	%d4, [%a15] lo:EcuM_Prv_dataExpiredWakeupEvents_u32
	call	EcuM_StopWakeupSources
.LVL34:
	.loc 1 668 0
	j	EcuM_Prv_DecValidationCtr
.LVL35:
.L91:
	.loc 1 631 0
	mov	%d4, %d10
	call	EcuM_CheckValidation
.LVL36:
	j	.L18
.LVL37:
.L90:
	mov	%d4, %d10
	call	EcuM_CheckValidation
.LVL38:
	j	.L16
.LVL39:
.L89:
	mov	%d4, %d15
	call	EcuM_CheckValidation
.LVL40:
	j	.L14
.LVL41:
.L95:
	mov	%d4, %d10
	call	EcuM_CheckValidation
.LVL42:
	j	.L26
.LVL43:
.L94:
	mov	%d4, %d10
	call	EcuM_CheckValidation
.LVL44:
	j	.L24
.LVL45:
.L93:
	mov	%d4, %d10
	call	EcuM_CheckValidation
.LVL46:
	j	.L22
.LVL47:
.L92:
	mov	%d4, %d10
	call	EcuM_CheckValidation
.LVL48:
	j	.L20
.LVL49:
.L5:
.LBE29:
.LBE31:
.LBB32:
.LBB24:
.LBB21:
.LBB19:
	.loc 1 513 0
	mov	%d2, 0
	st.b	[%a12] lo:EcuM_Prv_ShutDownflgCoresStopped, %d2
	.loc 1 523 0
	jlt.u	%d15, 11, .L10
.L7:
	.loc 1 525 0
	mov	%d15, 1
	.loc 1 530 0
	mov	%e4, 10
	mov	%d6, 24
	mov	%d7, 4
	.loc 1 525 0
	st.b	[%a13] lo:EcuM_Prv_ShutDownflgCoresTimeout, %d15
	.loc 1 530 0
	call	Det_ReportError
.LVL50:
	.loc 1 537 0
	ld.bu	%d15, [%a12] lo:EcuM_Prv_ShutDownflgCoresStopped
	jeq	%d15, 1, .L8
.L10:
	ld.bu	%d15, [%a13] lo:EcuM_Prv_ShutDownflgCoresTimeout
	jeq	%d15, 1, .L8
	ret
.LBE19:
.LBE21:
.LBE24:
.LBE32:
.LFE71:
	.size	EcuM_MainFunction, .-EcuM_MainFunction
.section .bss.a1.EcuM_Prv_ShutDownflgCoresTimeout,"aw",@nobits
	.type	EcuM_Prv_ShutDownflgCoresTimeout, @object
	.size	EcuM_Prv_ShutDownflgCoresTimeout, 1
EcuM_Prv_ShutDownflgCoresTimeout:
	.zero	1
.section .bss.a1.EcuM_Prv_ShutDownflgCoresStopped,"aw",@nobits
	.type	EcuM_Prv_ShutDownflgCoresStopped, @object
	.size	EcuM_Prv_ShutDownflgCoresStopped, 1
EcuM_Prv_ShutDownflgCoresStopped:
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
	.uaword	.LFB71
	.uaword	.LFE71-.LFB71
	.align 2
.LEFDE0:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 4 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu.h"
	.file 5 ".\\output\\inc/..\\..\\os\\Os.h"
	.file 6 ".\\output\\inc/..\\..\\bsw\\EcuM\\EcuM_Cfg.h"
	.file 7 ".\\output\\inc/..\\..\\rte\\Rte_Type.h"
	.file 8 ".\\output\\inc/..\\..\\bsw\\EcuM\\api\\EcuM_Types.h"
	.file 9 ".\\output\\inc/..\\..\\main\\_MainModule\\CalibData\\MAIN_CalibData.h"
	.file 10 "bsw\\EcuM\\src\\EcuM_Prv.h"
	.file 11 ".\\output\\inc/..\\..\\bsw\\EcuM\\api\\EcuM_Callout.h"
	.file 12 ".\\output\\inc/..\\..\\bsw\\BswM\\api\\BswM.h"
	.file 13 ".\\output\\inc/..\\..\\rte\\Rte_Main.h"
	.file 14 ".\\output\\inc/..\\..\\bsw\\BswM\\api\\BswM_EcuM.h"
	.file 15 ".\\output\\inc/..\\..\\bsw\\Det\\api\\Det.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x103d
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\EcuM\\src\\EcuM_MainFunction.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x40
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
	.uaword	0x1cb
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
	.uaword	0x1f7
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
	.uaword	0x233
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
	.uaword	0x1cb
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x3
	.string	"StatusType"
	.byte	0x3
	.byte	0x48
	.uaword	0x1cb
	.uleb128 0x3
	.string	"Std_ReturnType"
	.byte	0x3
	.byte	0x60
	.uaword	0x1be
	.uleb128 0x4
	.byte	0x1
	.byte	0x4
	.uahalf	0x104
	.uaword	0x44a
	.uleb128 0x5
	.string	"MCU_ESR0_RESET"
	.sleb128 0
	.uleb128 0x5
	.string	"MCU_ESR1_RESET"
	.sleb128 1
	.uleb128 0x5
	.string	"MCU_SMU_RESET"
	.sleb128 2
	.uleb128 0x5
	.string	"MCU_SW_RESET"
	.sleb128 3
	.uleb128 0x5
	.string	"MCU_STM0_RESET"
	.sleb128 4
	.uleb128 0x5
	.string	"MCU_STM1_RESET"
	.sleb128 5
	.uleb128 0x5
	.string	"MCU_STM2_RESET"
	.sleb128 6
	.uleb128 0x5
	.string	"MCU_STM3_RESET"
	.sleb128 7
	.uleb128 0x5
	.string	"MCU_STM4_RESET"
	.sleb128 8
	.uleb128 0x5
	.string	"MCU_STM5_RESET"
	.sleb128 9
	.uleb128 0x5
	.string	"MCU_POWER_ON_RESET"
	.sleb128 10
	.uleb128 0x5
	.string	"MCU_CB0_RESET"
	.sleb128 11
	.uleb128 0x5
	.string	"MCU_CB1_RESET"
	.sleb128 12
	.uleb128 0x5
	.string	"MCU_CB3_RESET"
	.sleb128 13
	.uleb128 0x5
	.string	"MCU_EVRC_RESET"
	.sleb128 14
	.uleb128 0x5
	.string	"MCU_EVR33_RESET"
	.sleb128 15
	.uleb128 0x5
	.string	"MCU_SUPPLY_WDOG_RESET"
	.sleb128 16
	.uleb128 0x5
	.string	"MCU_STBYR_RESET"
	.sleb128 17
	.uleb128 0x5
	.string	"MCU_LBIST_RESET"
	.sleb128 18
	.uleb128 0x5
	.string	"MCU_RESET_MULTIPLE"
	.sleb128 254
	.uleb128 0x5
	.string	"MCU_RESET_UNDEFINED"
	.sleb128 255
	.byte	0
	.uleb128 0x6
	.string	"Mcu_ResetType"
	.byte	0x4
	.uahalf	0x11a
	.uaword	0x2c8
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x6
	.string	"CoreIdType"
	.byte	0x5
	.uahalf	0x11b
	.uaword	0x1e9
	.uleb128 0x7
	.byte	0x10
	.byte	0x6
	.byte	0x52
	.uaword	0x54c
	.uleb128 0x8
	.string	"IsComChannelPresent"
	.byte	0x6
	.byte	0x53
	.uaword	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"ComChannelReferance"
	.byte	0x6
	.byte	0x54
	.uaword	0x1be
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x8
	.string	"ResetReason"
	.byte	0x6
	.byte	0x55
	.uaword	0x44a
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x8
	.string	"ValidationTimeout"
	.byte	0x6
	.byte	0x56
	.uaword	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"IsWakeupSourcePolling"
	.byte	0x6
	.byte	0x57
	.uaword	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x8
	.string	"WakeupSourceId"
	.byte	0x6
	.byte	0x58
	.uaword	0x225
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.string	"CheckWakeupTimeout"
	.byte	0x6
	.byte	0x59
	.uaword	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x3
	.string	"EcuM_Cfg_dataWkupSrcStruct_tst"
	.byte	0x6
	.byte	0x5a
	.uaword	0x47f
	.uleb128 0x9
	.uaword	0x270
	.uaword	0x582
	.uleb128 0xa
	.uaword	0x460
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.string	"ComM_ModeType"
	.byte	0x7
	.byte	0xe0
	.uaword	0x1be
	.uleb128 0x3
	.string	"EcuM_WakeupSourceType"
	.byte	0x8
	.byte	0x4e
	.uaword	0x225
	.uleb128 0x3
	.string	"EcuM_WakeupStatusType"
	.byte	0x8
	.byte	0x52
	.uaword	0x1be
	.uleb128 0xb
	.string	"eCalibIndex"
	.byte	0x1
	.byte	0x9
	.byte	0x15
	.uaword	0x68c
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
	.uleb128 0xc
	.byte	0x1
	.byte	0x9
	.byte	0x1f
	.uaword	0x704
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
	.uleb128 0xb
	.string	"eRcGainIndex"
	.byte	0x1
	.byte	0x9
	.byte	0x27
	.uaword	0x941
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
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0xd
	.string	"EcuM_Prv_ShutdownSynchronization"
	.byte	0x1
	.uahalf	0x33f
	.byte	0x1
	.uaword	0x2b2
	.byte	0x1
	.uaword	0x98e
	.uleb128 0xe
	.string	"return_value"
	.byte	0x1
	.uahalf	0x342
	.uaword	0x2b2
	.byte	0
	.uleb128 0xf
	.string	"EcuM_Prv_ProceedShutdown"
	.byte	0x1
	.uahalf	0x1e3
	.byte	0x1
	.byte	0x1
	.uaword	0x9f5
	.uleb128 0xe
	.string	"cntrLoopOsCore_u16"
	.byte	0x1
	.uahalf	0x1e9
	.uaword	0x1e9
	.uleb128 0xe
	.string	"EcuM_activeCoreid"
	.byte	0x1
	.uahalf	0x1ea
	.uaword	0x46c
	.uleb128 0x10
	.uleb128 0xe
	.string	"res"
	.byte	0x1
	.uahalf	0x1ef
	.uaword	0x233
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"EcuM_Prv_WakeupValidation"
	.byte	0x1
	.uahalf	0x25e
	.byte	0x1
	.byte	0x1
	.uaword	0xa80
	.uleb128 0xe
	.string	"cntrLoopCtr_u8"
	.byte	0x1
	.uahalf	0x261
	.uaword	0x1be
	.uleb128 0xe
	.string	"dataPendingWakeupEvents_u32"
	.byte	0x1
	.uahalf	0x262
	.uaword	0x597
	.uleb128 0xe
	.string	"datawkpSrcValidationTimeoutCtr_u16"
	.byte	0x1
	.uahalf	0x263
	.uaword	0x1e9
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"EcuM_MainFunction"
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.uaword	.LFB71
	.uaword	.LFE71
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xca7
	.uleb128 0x12
	.uaword	0x949
	.uaword	.LBB13
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x74
	.uaword	0xb69
	.uleb128 0x13
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x14
	.uaword	0x978
	.uaword	.LLST0
	.uleb128 0x15
	.uaword	0x98e
	.uaword	.LBB15
	.uaword	.Ldebug_ranges0+0x8
	.byte	0x1
	.uahalf	0x384
	.uleb128 0x13
	.uaword	.Ldebug_ranges0+0x8
	.uleb128 0x14
	.uaword	0x9b1
	.uaword	.LLST1
	.uleb128 0x14
	.uaword	0x9cc
	.uaword	.LLST2
	.uleb128 0x16
	.uaword	.LBB17
	.uaword	.LBE17
	.uaword	0xb06
	.uleb128 0x14
	.uaword	0x9e7
	.uaword	.LLST2
	.byte	0
	.uleb128 0x17
	.uaword	.LVL10
	.uaword	0xeed
	.uleb128 0x17
	.uaword	.LVL11
	.uaword	0xf03
	.uleb128 0x17
	.uaword	.LVL12
	.uaword	0xf15
	.uleb128 0x18
	.uaword	.LVL13
	.byte	0x1
	.uaword	0xf27
	.uaword	0xb35
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x48
	.byte	0
	.uleb128 0x17
	.uaword	.LVL30
	.uaword	0xeed
	.uleb128 0x17
	.uaword	.LVL31
	.uaword	0xf15
	.uleb128 0x1a
	.uaword	.LVL50
	.uaword	0xf4c
	.uleb128 0x19
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x34
	.uleb128 0x19
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x48
	.uleb128 0x19
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
	.uaword	.LBB25
	.uaword	.LBE25
	.uaword	0xb86
	.uleb128 0x1b
	.string	"res"
	.byte	0x1
	.byte	0x82
	.uaword	0x233
	.uaword	.LLST4
	.byte	0
	.uleb128 0x12
	.uaword	0x9f5
	.uaword	.LBB27
	.uaword	.Ldebug_ranges0+0x28
	.byte	0x1
	.byte	0x8b
	.uaword	0xc87
	.uleb128 0x13
	.uaword	.Ldebug_ranges0+0x28
	.uleb128 0x14
	.uaword	0xa19
	.uaword	.LLST5
	.uleb128 0x14
	.uaword	0xa30
	.uaword	.LLST6
	.uleb128 0x14
	.uaword	0xa54
	.uaword	.LLST7
	.uleb128 0x1c
	.uaword	.LVL17
	.uaword	0xf7f
	.uaword	0xbcd
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL28
	.byte	0x1
	.uaword	0xfaa
	.uleb128 0x1c
	.uaword	.LVL33
	.uaword	0xfcb
	.uaword	0xbea
	.uleb128 0x19
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x33
	.byte	0
	.uleb128 0x17
	.uaword	.LVL34
	.uaword	0xff8
	.uleb128 0x1d
	.uaword	.LVL35
	.byte	0x1
	.uaword	0xfaa
	.uleb128 0x1c
	.uaword	.LVL36
	.uaword	0x101f
	.uaword	0xc11
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.uaword	.LVL38
	.uaword	0x101f
	.uaword	0xc25
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.uaword	.LVL40
	.uaword	0x101f
	.uaword	0xc39
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.uaword	.LVL42
	.uaword	0x101f
	.uaword	0xc4d
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.uaword	.LVL44
	.uaword	0x101f
	.uaword	0xc61
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.uaword	.LVL46
	.uaword	0x101f
	.uaword	0xc75
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL48
	.uaword	0x101f
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uaword	.LVL14
	.byte	0x1
	.uaword	0xf4c
	.uleb128 0x19
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x40
	.uleb128 0x19
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x48
	.uleb128 0x19
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x1f
	.string	"EcuM_Prv_ShutDownflgCoresStopped"
	.byte	0x1
	.byte	0x3e
	.uaword	0x270
	.byte	0x5
	.byte	0x3
	.uaword	EcuM_Prv_ShutDownflgCoresStopped
	.uleb128 0x1f
	.string	"EcuM_Prv_ShutDownflgCoresTimeout"
	.byte	0x1
	.byte	0x3f
	.uaword	0x270
	.byte	0x5
	.byte	0x3
	.uaword	EcuM_Prv_ShutDownflgCoresTimeout
	.uleb128 0x9
	.uaword	0x54c
	.uaword	0xd13
	.uleb128 0xa
	.uaword	0x460
	.byte	0x6
	.byte	0
	.uleb128 0x20
	.string	"EcuM_Cfg_idxWakeupSourcesPC_au32"
	.byte	0x6
	.byte	0x7f
	.uaword	0xd3d
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.uaword	0xd03
	.uleb128 0x20
	.string	"EcuM_Prv_dataPresentPhase_u8"
	.byte	0xa
	.byte	0xb8
	.uaword	0x1be
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.string	"EcuM_Prv_SlaveCoreTimeoutCtr_u8"
	.byte	0xa
	.byte	0xb9
	.uaword	0x1be
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.string	"EcuM_Prv_dataPendingWakeupEvents_u32"
	.byte	0xa
	.byte	0xde
	.uaword	0x597
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.string	"EcuM_Prv_dataOldPendingWakeupEvents_u32"
	.byte	0xa
	.byte	0xe0
	.uaword	0x597
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.string	"EcuM_Prv_dataValidatedWakeupEvents_u32"
	.byte	0xa
	.byte	0xe2
	.uaword	0x597
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.string	"EcuM_Prv_dataExpiredWakeupEvents_u32"
	.byte	0xa
	.byte	0xe4
	.uaword	0x597
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.string	"EcuM_Prv_WkpSrcValidationTimeoutCtr_u16"
	.byte	0xa
	.byte	0xf4
	.uaword	0x1e9
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.string	"EcuM_Prv_flgIsModuleInitialised_b"
	.byte	0xa
	.uahalf	0x102
	.uaword	0x270
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.string	"EcuM_Prv_flgCoreReady_ab"
	.byte	0xa
	.uahalf	0x104
	.uaword	0x572
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.string	"EcuM_Prv_flgGoDown_b"
	.byte	0xa
	.uahalf	0x10c
	.uaword	0x270
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.byte	0x1
	.string	"EcuM_OnGoOffOne"
	.byte	0xb
	.byte	0x2d
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.byte	0x1
	.string	"BswM_Deinit"
	.byte	0xc
	.byte	0x3b
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.byte	0x1
	.string	"SchM_Deinit"
	.byte	0xd
	.byte	0x26
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.byte	0x1
	.string	"Os_ShutdownAllCores"
	.byte	0x5
	.uahalf	0x43b
	.byte	0x1
	.byte	0x1
	.uaword	0xf4c
	.uleb128 0x25
	.uaword	0x2a0
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.string	"Det_ReportError"
	.byte	0xf
	.byte	0x70
	.byte	0x1
	.uaword	0x2b2
	.byte	0x1
	.uaword	0xf7f
	.uleb128 0x25
	.uaword	0x1e9
	.uleb128 0x25
	.uaword	0x1be
	.uleb128 0x25
	.uaword	0x1be
	.uleb128 0x25
	.uaword	0x1be
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.string	"EcuM_Prv_WakeupIndication"
	.byte	0xa
	.uahalf	0x148
	.byte	0x1
	.byte	0x1
	.uaword	0xfaa
	.uleb128 0x25
	.uaword	0x597
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.string	"EcuM_Prv_DecValidationCtr"
	.byte	0xa
	.uahalf	0x14a
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.byte	0x1
	.string	"BswM_EcuM_CurrentWakeup"
	.byte	0xe
	.byte	0x20
	.byte	0x1
	.byte	0x1
	.uaword	0xff8
	.uleb128 0x25
	.uaword	0x597
	.uleb128 0x25
	.uaword	0x5b4
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.string	"EcuM_StopWakeupSources"
	.byte	0xb
	.byte	0x37
	.byte	0x1
	.byte	0x1
	.uaword	0x101f
	.uleb128 0x25
	.uaword	0x597
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.string	"EcuM_CheckValidation"
	.byte	0xb
	.byte	0x39
	.byte	0x1
	.byte	0x1
	.uleb128 0x25
	.uaword	0x597
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x27
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL13
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL14
	.uaword	.LFE71
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL28
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LVL27
	.uahalf	0x2
	.byte	0x37
	.byte	0x9f
	.uaword	.LVL32
	.uaword	.LVL35
	.uahalf	0x2
	.byte	0x37
	.byte	0x9f
	.uaword	.LVL35
	.uaword	.LVL37
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL37
	.uaword	.LVL39
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL39
	.uaword	.LVL41
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL41
	.uaword	.LVL43
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	.LVL43
	.uaword	.LVL45
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL45
	.uaword	.LVL47
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL47
	.uaword	.LVL49
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL15
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL35
	.uaword	.LVL49
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL17-1
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL32
	.uaword	.LVL49
	.uahalf	0x1
	.byte	0x59
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
	.uaword	.LFB71
	.uaword	.LFE71-.LFB71
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB13
	.uaword	.LBE13
	.uaword	.LBB26
	.uaword	.LBE26
	.uaword	.LBB30
	.uaword	.LBE30
	.uaword	.LBB32
	.uaword	.LBE32
	.uaword	0
	.uaword	0
	.uaword	.LBB27
	.uaword	.LBE27
	.uaword	.LBB31
	.uaword	.LBE31
	.uaword	0
	.uaword	0
	.uaword	.LFB71
	.uaword	.LFE71
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.extern	EcuM_CheckValidation,STT_FUNC,0
	.extern	EcuM_StopWakeupSources,STT_FUNC,0
	.extern	BswM_EcuM_CurrentWakeup,STT_FUNC,0
	.extern	EcuM_Prv_dataExpiredWakeupEvents_u32,STT_OBJECT,4
	.extern	EcuM_Prv_DecValidationCtr,STT_FUNC,0
	.extern	EcuM_Prv_dataValidatedWakeupEvents_u32,STT_OBJECT,4
	.extern	EcuM_Cfg_idxWakeupSourcesPC_au32,STT_OBJECT,112
	.extern	EcuM_Prv_dataOldPendingWakeupEvents_u32,STT_OBJECT,4
	.extern	EcuM_Prv_WakeupIndication,STT_FUNC,0
	.extern	EcuM_Prv_WkpSrcValidationTimeoutCtr_u16,STT_OBJECT,2
	.extern	EcuM_Prv_dataPendingWakeupEvents_u32,STT_OBJECT,4
	.extern	Det_ReportError,STT_FUNC,0
	.extern	Os_ShutdownAllCores,STT_FUNC,0
	.extern	SchM_Deinit,STT_FUNC,0
	.extern	BswM_Deinit,STT_FUNC,0
	.extern	EcuM_OnGoOffOne,STT_FUNC,0
	.extern	EcuM_Prv_flgCoreReady_ab,STT_OBJECT,4
	.extern	EcuM_Prv_SlaveCoreTimeoutCtr_u8,STT_OBJECT,1
	.extern	EcuM_Prv_dataPresentPhase_u8,STT_OBJECT,1
	.extern	EcuM_Prv_flgGoDown_b,STT_OBJECT,1
	.extern	EcuM_Prv_flgIsModuleInitialised_b,STT_OBJECT,1
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
