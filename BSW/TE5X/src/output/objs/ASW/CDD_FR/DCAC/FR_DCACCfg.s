	.file	"FR_DCACCfg.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.FR_vidGetUserHeadInfoCallout,"ax",@progbits
	.align 1
	.type	FR_vidGetUserHeadInfoCallout, @function
FR_vidGetUserHeadInfoCallout:
.LFB250:
	.file 1 "ASW\\CDD_FR\\DCAC\\FR_DCACCallout.h"
	.loc 1 88 0
.LVL0:
.LBB18:
.LBB19:
	.file 2 "ASW\\CDD_FR\\DCAC\\FR_DCACCfg.c"
	.loc 2 130 0
	movh.a	%a2, hi:FR_atBufIndex
	mov	%d15, 0
	movh.a	%a4, hi:MAIN_u8UdsSwVerSup
.LVL1:
	st.w	[%a2] lo:FR_atBufIndex, %d15
.LVL2:
	lea	%a15, [%a2] lo:FR_atBufIndex
	lea	%a2, [%a4] lo:MAIN_u8UdsSwVerSup
	.loc 2 134 0
	mov	%d15, 8748
	mov.d	%d2, %a2
	st.w	[%a15] 16, %d15
	.loc 2 137 0
	mov	%d15, 11664
	st.w	[%a15] 32, %d15
.LVL3:
	and	%d15, %d2, 3
	jnz	%d15, .L4
.LVL4:
.LBE19:
.LBE18:
	.loc 1 97 0
	ld.bu	%d3, [%a2] 1
	ld.bu	%d2, [%a4] lo:MAIN_u8UdsSwVerSup
	sh	%d15, %d3, 8
	or	%d3, %d15, %d2
	ld.bu	%d15, [%a2] 2
	movh.a	%a3, hi:FR_xUserHeadRamBlock
	sh	%d15, %d15, 16
	or	%d2, %d15, %d3
	ld.bu	%d15, [%a2] 3
	ld.bu	%d3, [%a2] 5
	sh	%d15, %d15, 24
	or	%d15, %d2
	ld.bu	%d2, [%a2] 4
	st.w	[%a3] lo:FR_xUserHeadRamBlock, %d15
	sh	%d15, %d3, 8
	or	%d3, %d15, %d2
	ld.bu	%d15, [%a2] 6
	lea	%a15, [%a3] lo:FR_xUserHeadRamBlock
	sh	%d15, %d15, 16
	or	%d2, %d15, %d3
	ld.bu	%d15, [%a2] 7
	ld.bu	%d3, [%a2] 9
	sh	%d15, %d15, 24
	or	%d15, %d2
	ld.bu	%d2, [%a2] 8
	st.w	[%a15] 4, %d15
	sh	%d15, %d3, 8
	or	%d3, %d15, %d2
	ld.bu	%d15, [%a2] 10
	sh	%d15, %d15, 16
	or	%d2, %d15, %d3
	ld.bu	%d15, [%a2] 11
	ld.bu	%d3, [%a2] 13
	sh	%d15, %d15, 24
	or	%d15, %d2
	ld.bu	%d2, [%a2] 12
	st.w	[%a15] 8, %d15
	sh	%d15, %d3, 8
	or	%d3, %d15, %d2
	ld.bu	%d15, [%a2] 14
	sh	%d15, %d15, 16
	or	%d2, %d15, %d3
	ld.bu	%d15, [%a2] 15
	ld.bu	%d3, [%a2] 17
	sh	%d15, %d15, 24
	or	%d15, %d2
	ld.bu	%d2, [%a2] 16
	st.w	[%a15] 12, %d15
	sh	%d15, %d3, 8
	or	%d3, %d15, %d2
	ld.bu	%d15, [%a2] 18
	sh	%d15, %d15, 16
	or	%d2, %d15, %d3
	ld.bu	%d15, [%a2] 19
	sh	%d15, %d15, 24
	or	%d15, %d2
	st.w	[%a15] 16, %d15
.LVL5:
	ld.bu	%d15, [%a2] 20
	st.b	[%a15] 20, %d15
.LVL6:
.L3:
	.loc 1 102 0
	movh.a	%a3, hi:AMAIN_u8DEV_Fault
	ld.bu	%d15, [%a3] lo:AMAIN_u8DEV_Fault
	lea	%a2, [%a3] lo:AMAIN_u8DEV_Fault
	st.b	[%a15] 21, %d15
.LVL7:
	ld.bu	%d15, [%a2] 1
	.loc 1 107 0
	movh.a	%a3, hi:OMAIN_u8DEV_Fault
	.loc 1 102 0
	st.b	[%a15] 22, %d15
.LVL8:
	ld.bu	%d15, [%a2] 2
	st.b	[%a15] 23, %d15
.LVL9:
	ld.bu	%d15, [%a2] 3
	st.b	[%a15] 24, %d15
.LVL10:
	ld.bu	%d15, [%a2] 4
	st.b	[%a15] 25, %d15
.LVL11:
	ld.bu	%d15, [%a2] 5
	st.b	[%a15] 26, %d15
.LVL12:
	ld.bu	%d15, [%a2] 6
	st.b	[%a15] 27, %d15
.LVL13:
	ld.bu	%d15, [%a2] 7
	st.b	[%a15] 28, %d15
.LVL14:
	ld.bu	%d15, [%a2] 8
	st.b	[%a15] 29, %d15
.LVL15:
	ld.bu	%d15, [%a2] 9
	st.b	[%a15] 30, %d15
.LVL16:
	ld.bu	%d15, [%a2] 10
	st.b	[%a15] 31, %d15
.LVL17:
	ld.bu	%d15, [%a2] 11
	st.b	[%a15] 32, %d15
.LVL18:
	ld.bu	%d15, [%a2] 12
	st.b	[%a15] 33, %d15
.LVL19:
	ld.bu	%d15, [%a2] 13
	st.b	[%a15] 34, %d15
.LVL20:
	ld.bu	%d15, [%a2] 14
	st.b	[%a15] 35, %d15
.LVL21:
	ld.bu	%d15, [%a2] 15
	.loc 1 107 0
	lea	%a2, [%a3] lo:OMAIN_u8DEV_Fault
	.loc 1 102 0
	st.b	[%a15] 36, %d15
.LVL22:
	.loc 1 107 0
	ld.bu	%d15, [%a3] lo:OMAIN_u8DEV_Fault
	st.b	[%a15] 37, %d15
.LVL23:
	ld.bu	%d15, [%a2] 1
	st.b	[%a15] 38, %d15
.LVL24:
	ld.bu	%d15, [%a2] 2
	st.b	[%a15] 39, %d15
.LVL25:
	ld.bu	%d15, [%a2] 3
	st.b	[%a15] 40, %d15
.LVL26:
	ld.bu	%d15, [%a2] 4
	st.b	[%a15] 41, %d15
.LVL27:
	ld.bu	%d15, [%a2] 5
	st.b	[%a15] 42, %d15
.LVL28:
	ld.bu	%d15, [%a2] 6
	st.b	[%a15] 43, %d15
.LVL29:
	ld.bu	%d15, [%a2] 7
	st.b	[%a15] 44, %d15
.LVL30:
	ld.bu	%d15, [%a2] 8
	st.b	[%a15] 45, %d15
.LVL31:
	ld.bu	%d15, [%a2] 9
	st.b	[%a15] 46, %d15
.LVL32:
	ld.bu	%d15, [%a2] 10
	st.b	[%a15] 47, %d15
.LVL33:
	ld.bu	%d15, [%a2] 11
	st.b	[%a15] 48, %d15
.LVL34:
	ld.bu	%d15, [%a2] 12
	st.b	[%a15] 49, %d15
.LVL35:
	ld.bu	%d15, [%a2] 13
	st.b	[%a15] 50, %d15
.LVL36:
	ld.bu	%d15, [%a2] 14
	st.b	[%a15] 51, %d15
.LVL37:
	ld.bu	%d15, [%a2] 15
	st.b	[%a15] 52, %d15
.LVL38:
	ret
.LVL39:
.L4:
	movh.a	%a3, hi:FR_xUserHeadRamBlock
	lea	%a15, [%a3] lo:FR_xUserHeadRamBlock
.LBB21:
.LBB20:
	.loc 2 137 0
	mov	%d15, 0
	lea	%a3, 20
.LVL40:
.L2:
.LBE20:
.LBE21:
	.loc 1 97 0
	addsc.a	%a4, %a2, %d15, 0
	addsc.a	%a5, %a15, %d15, 0
	ld.bu	%d2, [%a4]0
	add	%d15, 1
.LVL41:
	st.b	[%a5]0, %d2
.LVL42:
	.loc 1 95 0
	loop	%a3, .L2
	j	.L3
.LFE250:
	.size	FR_vidGetUserHeadInfoCallout, .-FR_vidGetUserHeadInfoCallout
.section .text.FR_bExtStoreCondIsMetCallout,"ax",@progbits
	.align 1
	.type	FR_bExtStoreCondIsMetCallout, @function
FR_bExtStoreCondIsMetCallout:
.LFB253:
	.loc 1 144 0
.LVL43:
	.loc 1 155 0
	mov	%d2, 1
	ret
.LFE253:
	.size	FR_bExtStoreCondIsMetCallout, .-FR_bExtStoreCondIsMetCallout
.section .text.FR_vidGetCustomEvent_1,"ax",@progbits
	.align 1
	.type	FR_vidGetCustomEvent_1, @function
FR_vidGetCustomEvent_1:
.LFB257:
	.loc 2 45 0
.LVL44:
.LBB22:
.LBB23:
	.loc 2 175 0
	movh.a	%a15, hi:FR_au32BufCtr
	ld.w	%d15, [%a15] lo:FR_au32BufCtr
	lea	%a2, [%a15] lo:FR_au32BufCtr
	add	%d15, 1
	st.w	[%a15] lo:FR_au32BufCtr, %d15
	.loc 2 178 0
	ld.w	%d15, [%a2] 4
	add	%d15, 1
	st.w	[%a2] 4, %d15
.LVL45:
	ret
.LBE23:
.LBE22:
.LFE257:
	.size	FR_vidGetCustomEvent_1, .-FR_vidGetCustomEvent_1
.section .text.FR_vidGetCustomEvent_2,"ax",@progbits
	.align 1
	.type	FR_vidGetCustomEvent_2, @function
FR_vidGetCustomEvent_2:
.LFB258:
	.loc 2 48 0
.LVL46:
.LBB24:
.LBB25:
	.loc 2 194 0
	mov	%d15, 0
	movh.a	%a15, hi:FR_au32BufCtr
	st.w	[%a15] lo:FR_au32BufCtr, %d15
.LVL47:
	ret
.LBE25:
.LBE24:
.LFE258:
	.size	FR_vidGetCustomEvent_2, .-FR_vidGetCustomEvent_2
.section .text.FR_vidGetCustomEvent_3,"ax",@progbits
	.align 1
	.type	FR_vidGetCustomEvent_3, @function
FR_vidGetCustomEvent_3:
.LFB259:
	.loc 2 51 0
.LVL48:
.LBB26:
.LBB27:
	.loc 2 201 0
	movh.a	%a15, hi:FR_au32BufCtr
	mov	%d15, 0
	lea	%a15, [%a15] lo:FR_au32BufCtr
	st.w	[%a15] 4, %d15
.LVL49:
	ret
.LBE27:
.LBE26:
.LFE259:
	.size	FR_vidGetCustomEvent_3, .-FR_vidGetCustomEvent_3
.section .text.FR_bUpdateReqIsAllowedCallout,"ax",@progbits
	.align 1
	.type	FR_bUpdateReqIsAllowedCallout, @function
FR_bUpdateReqIsAllowedCallout:
.LFB251:
	.loc 1 113 0
.LVL50:
	.loc 1 116 0
	j	BSW_bGetBswReadySts
.LVL51:
.LFE251:
	.size	FR_bUpdateReqIsAllowedCallout, .-FR_bUpdateReqIsAllowedCallout
.section .text.FR_vidGetExtDataOfFixHead,"ax",@progbits
	.align 1
	.type	FR_vidGetExtDataOfFixHead, @function
FR_vidGetExtDataOfFixHead:
.LFB249:
	.loc 1 70 0
.LVL52:
.LBB28:
.LBB29:
	.loc 2 153 0
	movh.a	%a15, hi:FR_atBufIndex
	.loc 2 156 0
	movh.a	%a3, hi:FR_au32BufCtr
	.loc 2 153 0
	lea	%a15, [%a15] lo:FR_atBufIndex
	mov	%d15, 0
	st.w	[%a15] 12, %d15
	.loc 2 156 0
	ld.w	%d15, [%a3] lo:FR_au32BufCtr
	lea	%a2, [%a3] lo:FR_au32BufCtr
	st.w	[%a15] 28, %d15
	.loc 2 159 0
	ld.w	%d15, [%a2] 4
.LBE29:
.LBE28:
	.loc 1 70 0
	mov.aa	%a12, %a4
.LBB31:
.LBB30:
	.loc 2 159 0
	st.w	[%a15] 44, %d15
.LBE30:
.LBE31:
	.loc 1 82 0
	call	MAIN_u32GetRunTime_ms
.LVL53:
	st.w	[%a12] 8, %d2
	.loc 1 83 0
	call	MAIN_u32GetFactoryRunTime_s
.LVL54:
	st.w	[%a12] 12, %d2
	ret
.LFE249:
	.size	FR_vidGetExtDataOfFixHead, .-FR_vidGetExtDataOfFixHead
.section .text.FR_bFaultIsOccurredCallout,"ax",@progbits
	.align 1
	.type	FR_bFaultIsOccurredCallout, @function
FR_bFaultIsOccurredCallout:
.LFB252:
	.loc 1 122 0
.LVL55:
	.loc 1 126 0
	mov	%d4, 2
	call	DSM_u8GetUnitFaultLevel
.LVL56:
	.loc 1 128 0
	mov	%d15, 1
	.loc 1 126 0
	jge.u	%d2, 4, .L14
.LBB34:
.LBB35:
	.loc 1 130 0
	mov	%d4, 3
	call	DSM_u8GetUnitFaultLevel
.LVL57:
.LBE35:
.LBE34:
	.loc 1 128 0
	ge.u	%d15, %d2, 4
.L14:
.LVL58:
	.loc 1 141 0
	mov	%d2, %d15
	ret
.LFE252:
	.size	FR_bFaultIsOccurredCallout, .-FR_bFaultIsOccurredCallout
	.global	FR_ktDCACBankUserCfg
.section FRConst.FixCfg.FR_ktDCACBankUserCfg,"a",@progbits
	.align 2
	.type	FR_ktDCACBankUserCfg, @object
	.size	FR_ktDCACBankUserCfg, 28
FR_ktDCACBankUserCfg:
	.byte	3
	.zero	1
	.short	12096
	.word	1024416809
	.word	FR_tInputBuf_DCAC
	.word	FR_atBufIndex
	.word	FR_aktBufCfgGroup
	.word	FR_ktUserIf
	.word	FR_ktUserHeadCfg
.section .rodata.a4.FR_ktUserIf,"a",@progbits
	.align 2
	.type	FR_ktUserIf, @object
	.size	FR_ktUserIf, 20
FR_ktUserIf:
	.word	FR_vidGetUserHeadInfoCallout
	.word	FR_vidGetExtDataOfFixHead
	.word	FR_bFaultIsOccurredCallout
	.word	FR_bExtStoreCondIsMetCallout
	.word	FR_bUpdateReqIsAllowedCallout
.section .rodata.a4.FR_ktUserHeadCfg,"a",@progbits
	.align 2
	.type	FR_ktUserHeadCfg, @object
	.size	FR_ktUserHeadCfg, 8
FR_ktUserHeadCfg:
	.word	FR_xUserHeadRamBlock
	.short	64
	.short	192
.section .rodata.a4.FR_aktBufCfgGroup,"a",@progbits
	.align 2
	.type	FR_aktBufCfgGroup, @object
	.size	FR_aktBufCfgGroup, 48
FR_aktBufCfgGroup:
	.byte	0
	.zero	1
	.short	6024
	.short	486
	.short	18
	.short	166
	.zero	2
	.word	FR_vidGetCustomEvent_1
	.byte	1
	.zero	1
	.short	1000
	.short	81
	.short	36
	.short	1000
	.zero	2
	.word	FR_vidGetCustomEvent_2
	.byte	2
	.zero	1
	.short	100
	.short	8
	.short	54
	.short	10000
	.zero	2
	.word	FR_vidGetCustomEvent_3
.section .rodata.a1.FR_InputEventSize3,"a",@progbits
	.type	FR_InputEventSize3, @object
	.size	FR_InputEventSize3, 1
FR_InputEventSize3:
	.byte	54
.section .rodata.a1.FR_InputEventSize2,"a",@progbits
	.type	FR_InputEventSize2, @object
	.size	FR_InputEventSize2, 1
FR_InputEventSize2:
	.byte	36
.section .rodata.a1.FR_InputEventSize1,"a",@progbits
	.type	FR_InputEventSize1, @object
	.size	FR_InputEventSize1, 1
FR_InputEventSize1:
	.byte	18
	.global	OMAIN_u8IgbtFltConfirmCntC
.section .rodata.Calib_8.OMAIN_u8IgbtFltConfirmCntC,"a",@progbits
	.type	OMAIN_u8IgbtFltConfirmCntC, @object
	.size	OMAIN_u8IgbtFltConfirmCntC, 1
OMAIN_u8IgbtFltConfirmCntC:
	.zero	1
	.global	AMAIN_u8IgbtFltConfirmCntC
.section .rodata.Calib_8.AMAIN_u8IgbtFltConfirmCntC,"a",@progbits
	.type	AMAIN_u8IgbtFltConfirmCntC, @object
	.size	AMAIN_u8IgbtFltConfirmCntC, 1
AMAIN_u8IgbtFltConfirmCntC:
	.zero	1
.section .bss.a1.FR_u8OverflowProtectBuf2,"aw",@nobits
	.type	FR_u8OverflowProtectBuf2, @object
	.size	FR_u8OverflowProtectBuf2, 100
FR_u8OverflowProtectBuf2:
	.zero	100
.section .bss.a2.FR_tInputBuf_DCAC,"aw",@nobits
	.align 1
	.type	FR_tInputBuf_DCAC, @object
	.size	FR_tInputBuf_DCAC, 12096
FR_tInputBuf_DCAC:
	.zero	12096
.section .bss.a1.FR_u8OverflowProtectBuf1,"aw",@nobits
	.type	FR_u8OverflowProtectBuf1, @object
	.size	FR_u8OverflowProtectBuf1, 100
FR_u8OverflowProtectBuf1:
	.zero	100
.section .bss.a4.FR_atBufIndex,"aw",@nobits
	.align 2
	.type	FR_atBufIndex, @object
	.size	FR_atBufIndex, 96
FR_atBufIndex:
	.zero	96
.section .bss.a4.FR_xUserHeadRamBlock,"aw",@nobits
	.align 2
	.type	FR_xUserHeadRamBlock, @object
	.size	FR_xUserHeadRamBlock, 64
FR_xUserHeadRamBlock:
	.zero	64
.section .bss.a4.FR_au32BufCtr,"aw",@nobits
	.align 2
	.type	FR_au32BufCtr, @object
	.size	FR_au32BufCtr, 8
FR_au32BufCtr:
	.zero	8
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
	.uaword	.LFB250
	.uaword	.LFE250-.LFB250
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB253
	.uaword	.LFE253-.LFB253
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB257
	.uaword	.LFE257-.LFB257
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB258
	.uaword	.LFE258-.LFB258
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB259
	.uaword	.LFE259-.LFB259
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB251
	.uaword	.LFE251-.LFB251
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB249
	.uaword	.LFE249-.LFB249
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB252
	.uaword	.LFE252-.LFB252
	.align 2
.LEFDE14:
.section .text,"ax",@progbits
.Letext0:
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 4 ".\\output\\inc/..\\..\\main\\_MainModule\\CalibData\\MAIN_CalibData.h"
	.file 5 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\Cpu\\Std\\Ifx_Types.h"
	.file 6 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\_Impl\\IfxCpu_cfg.h"
	.file 7 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\Scu\\Std\\IfxScuCcu.h"
	.file 8 ".\\output\\inc/..\\..\\bswcdd\\FR\\FR_PublicTypes.h"
	.file 9 "ASW\\CDD_FR\\DCAC\\FR_DCACCfg.h"
	.file 10 ".\\output\\inc/..\\..\\bswcdd\\FR\\FR_MacroDef.h"
	.file 11 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\DSM.h"
	.file 12 ".\\output\\inc/..\\..\\bswcdd\\PortMux\\PortMux.h"
	.file 13 ".\\output\\inc/..\\..\\main\\McuMain\\MAIN_L.h"
	.file 14 ".\\output\\inc/..\\..\\main\\AcuMain\\MAIN_AcuL.h"
	.file 15 ".\\output\\inc/..\\..\\main\\OcuMain\\MAIN_OcuL.h"
	.file 16 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSW.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x2185
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"ASW\\CDD_FR\\DCAC\\FR_DCACCfg.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x30
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
	.uaword	0x1c7
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
	.uaword	0x1f3
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"sint32"
	.byte	0x3
	.byte	0x60
	.uaword	0x217
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
	.uaword	0x23d
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x3
	.string	"float32"
	.byte	0x3
	.byte	0x75
	.uaword	0x276
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
	.uaword	0x1c7
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x4
	.string	"eCalibIndex"
	.byte	0x1
	.byte	0x4
	.byte	0x15
	.uaword	0x374
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
	.byte	0x4
	.byte	0x1f
	.uaword	0x3ec
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
	.byte	0x4
	.byte	0x27
	.uaword	0x629
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
	.uleb128 0x7
	.byte	0x4
	.uleb128 0x8
	.byte	0x4
	.uaword	0x639
	.uleb128 0x9
	.uleb128 0xa
	.byte	0x8
	.byte	0x5
	.byte	0x8c
	.uaword	0x664
	.uleb128 0xb
	.string	"module"
	.byte	0x5
	.byte	0x8e
	.uaword	0x633
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"index"
	.byte	0x5
	.byte	0x8f
	.uaword	0x209
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"IfxModule_IndexMap"
	.byte	0x5
	.byte	0x90
	.uaword	0x63a
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.byte	0x88
	.uaword	0x6eb
	.uleb128 0x5
	.string	"IfxCpu_Index_0"
	.sleb128 0
	.uleb128 0x5
	.string	"IfxCpu_Index_1"
	.sleb128 1
	.uleb128 0x5
	.string	"IfxCpu_Index_2"
	.sleb128 2
	.uleb128 0x5
	.string	"IfxCpu_Index_3"
	.sleb128 3
	.uleb128 0x5
	.string	"IfxCpu_Index_none"
	.sleb128 4
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.byte	0x7
	.uahalf	0x160
	.uaword	0x7f4
	.uleb128 0x5
	.string	"IfxScuCcu_ModulationAmplitude_0p5"
	.sleb128 0
	.uleb128 0x5
	.string	"IfxScuCcu_ModulationAmplitude_1p0"
	.sleb128 1
	.uleb128 0x5
	.string	"IfxScuCcu_ModulationAmplitude_1p25"
	.sleb128 2
	.uleb128 0x5
	.string	"IfxScuCcu_ModulationAmplitude_1p5"
	.sleb128 3
	.uleb128 0x5
	.string	"IfxScuCcu_ModulationAmplitude_2p0"
	.sleb128 4
	.uleb128 0x5
	.string	"IfxScuCcu_ModulationAmplitude_2p5"
	.sleb128 5
	.uleb128 0x5
	.string	"IfxScuCcu_ModulationAmplitude_count"
	.sleb128 6
	.byte	0
	.uleb128 0xd
	.uaword	0x1ba
	.uleb128 0xe
	.uaword	.LASF0
	.byte	0x8
	.byte	0x8
	.byte	0x14
	.uaword	0x871
	.uleb128 0xb
	.string	"u16Year"
	.byte	0x8
	.byte	0x15
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"u8Month"
	.byte	0x8
	.byte	0x16
	.uaword	0x1ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.string	"u8Day"
	.byte	0x8
	.byte	0x17
	.uaword	0x1ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xb
	.string	"u8Hour"
	.byte	0x8
	.byte	0x18
	.uaword	0x1ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"u8Minute"
	.byte	0x8
	.byte	0x19
	.uaword	0x1ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0xb
	.string	"u8Second"
	.byte	0x8
	.byte	0x1a
	.uaword	0x1ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0
	.uleb128 0xf
	.uaword	.LASF0
	.byte	0x8
	.byte	0x1b
	.uaword	0x7f9
	.uleb128 0xe
	.uaword	.LASF1
	.byte	0x10
	.byte	0x8
	.byte	0x1d
	.uaword	0x8d5
	.uleb128 0xb
	.string	"tTime"
	.byte	0x8
	.byte	0x1e
	.uaword	0x871
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"u32Start2ErrTime_ms"
	.byte	0x8
	.byte	0x1f
	.uaword	0x22f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"u32FactoryRunTime_s"
	.byte	0x8
	.byte	0x20
	.uaword	0x22f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0xf
	.uaword	.LASF1
	.byte	0x8
	.byte	0x21
	.uaword	0x87c
	.uleb128 0xe
	.uaword	.LASF2
	.byte	0x10
	.byte	0x8
	.byte	0x23
	.uaword	0x934
	.uleb128 0xb
	.string	"u32BufAddr"
	.byte	0x8
	.byte	0x24
	.uaword	0x934
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"u32W"
	.byte	0x8
	.byte	0x25
	.uaword	0x934
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"u32R"
	.byte	0x8
	.byte	0x26
	.uaword	0x934
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"u32BufCtr"
	.byte	0x8
	.byte	0x27
	.uaword	0x22f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x10
	.uaword	0x22f
	.uleb128 0xf
	.uaword	.LASF2
	.byte	0x8
	.byte	0x28
	.uaword	0x8e0
	.uleb128 0xe
	.uaword	.LASF3
	.byte	0x10
	.byte	0x8
	.byte	0x2a
	.uaword	0x9ce
	.uleb128 0xb
	.string	"u8BufId"
	.byte	0x8
	.byte	0x2b
	.uaword	0x1ba
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"u16FPS"
	.byte	0x8
	.byte	0x2c
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.string	"u16EventNum"
	.byte	0x8
	.byte	0x2d
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"u16EventSize"
	.byte	0x8
	.byte	0x2e
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xb
	.string	"u16Period_us"
	.byte	0x8
	.byte	0x2f
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"vidGetEvent"
	.byte	0x8
	.byte	0x31
	.uaword	0x9df
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.uaword	0x9da
	.uleb128 0x12
	.uaword	0x9da
	.byte	0
	.uleb128 0xd
	.uaword	0x22f
	.uleb128 0x8
	.byte	0x4
	.uaword	0x9ce
	.uleb128 0xf
	.uaword	.LASF3
	.byte	0x8
	.byte	0x32
	.uaword	0x944
	.uleb128 0xe
	.uaword	.LASF4
	.byte	0x8
	.byte	0x8
	.byte	0x34
	.uaword	0xa50
	.uleb128 0xb
	.string	"pvUserBlockHandle"
	.byte	0x8
	.byte	0x35
	.uaword	0x631
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"u16UserBlockSizeByByte"
	.byte	0x8
	.byte	0x36
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"u16HeadSize"
	.byte	0x8
	.byte	0x37
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0
	.uleb128 0xf
	.uaword	.LASF4
	.byte	0x8
	.byte	0x38
	.uaword	0x9f0
	.uleb128 0xe
	.uaword	.LASF5
	.byte	0x14
	.byte	0x8
	.byte	0x3a
	.uaword	0xaef
	.uleb128 0xb
	.string	"vidGetUserHeadInfo"
	.byte	0x8
	.byte	0x3b
	.uaword	0xb0b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"vidGetExtDataOfFixHead"
	.byte	0x8
	.byte	0x3c
	.uaword	0xb28
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.uaword	.LASF6
	.byte	0x8
	.byte	0x3d
	.uaword	0xb34
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"bExtStoreCondIsMet"
	.byte	0x8
	.byte	0x3e
	.uaword	0xb55
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.string	"bUpdateReqIsAllowed"
	.byte	0x8
	.byte	0x3f
	.uaword	0xb34
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.uaword	0xafb
	.uleb128 0x12
	.uaword	0xafb
	.byte	0
	.uleb128 0xd
	.uaword	0xb00
	.uleb128 0x8
	.byte	0x4
	.uaword	0xb06
	.uleb128 0xd
	.uaword	0xa50
	.uleb128 0x8
	.byte	0x4
	.uaword	0xaef
	.uleb128 0x11
	.byte	0x1
	.uaword	0xb1d
	.uleb128 0x12
	.uaword	0xb1d
	.byte	0
	.uleb128 0xd
	.uaword	0xb22
	.uleb128 0x8
	.byte	0x4
	.uaword	0x8d5
	.uleb128 0x8
	.byte	0x4
	.uaword	0xb11
	.uleb128 0x14
	.byte	0x1
	.uaword	0x289
	.uleb128 0x8
	.byte	0x4
	.uaword	0xb2e
	.uleb128 0x15
	.byte	0x1
	.uaword	0x289
	.uaword	0xb4a
	.uleb128 0x12
	.uaword	0xb4a
	.byte	0
	.uleb128 0xd
	.uaword	0xb4f
	.uleb128 0x8
	.byte	0x4
	.uaword	0x289
	.uleb128 0x8
	.byte	0x4
	.uaword	0xb3a
	.uleb128 0xf
	.uaword	.LASF5
	.byte	0x8
	.byte	0x40
	.uaword	0xa5b
	.uleb128 0xe
	.uaword	.LASF7
	.byte	0x1c
	.byte	0x8
	.byte	0x42
	.uaword	0xc35
	.uleb128 0xb
	.string	"u8BufNum"
	.byte	0x8
	.byte	0x43
	.uaword	0x1ba
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"u16BufTotalSize"
	.byte	0x8
	.byte	0x44
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.string	"f32RunTimeBeforeFault_S"
	.byte	0x8
	.byte	0x45
	.uaword	0x267
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"pvInputBuf"
	.byte	0x8
	.byte	0x47
	.uaword	0x631
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"patIndexSet"
	.byte	0x8
	.byte	0x48
	.uaword	0xc35
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.string	"pktBufCfgSet"
	.byte	0x8
	.byte	0x4a
	.uaword	0xc3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"pktBankUserIf"
	.byte	0x8
	.byte	0x4b
	.uaword	0xc46
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.string	"pktUserHeadCfg"
	.byte	0x8
	.byte	0x4c
	.uaword	0xb00
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0x939
	.uleb128 0x8
	.byte	0x4
	.uaword	0xc41
	.uleb128 0xd
	.uaword	0x9e5
	.uleb128 0x8
	.byte	0x4
	.uaword	0xc4c
	.uleb128 0xd
	.uaword	0xb5b
	.uleb128 0xf
	.uaword	.LASF7
	.byte	0x8
	.byte	0x4d
	.uaword	0xb66
	.uleb128 0xa
	.byte	0x36
	.byte	0x9
	.byte	0x2a
	.uaword	0xcb3
	.uleb128 0xb
	.string	"au8AppSwVersion"
	.byte	0x9
	.byte	0x2b
	.uaword	0xcb3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"au8ACUFaultCode"
	.byte	0x9
	.byte	0x2c
	.uaword	0xcc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.uleb128 0xb
	.string	"au8OCUFaultCode"
	.byte	0x9
	.byte	0x2d
	.uaword	0xcc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x25
	.byte	0
	.uleb128 0x16
	.uaword	0x1ba
	.uaword	0xcc3
	.uleb128 0x17
	.uaword	0x67e
	.byte	0x14
	.byte	0
	.uleb128 0x16
	.uaword	0x1ba
	.uaword	0xcd3
	.uleb128 0x17
	.uaword	0x67e
	.byte	0xf
	.byte	0
	.uleb128 0x18
	.uaword	.LASF8
	.byte	0x40
	.byte	0x9
	.byte	0x28
	.uaword	0xcfc
	.uleb128 0x19
	.string	"au8Data"
	.byte	0x9
	.byte	0x29
	.uaword	0xcfc
	.uleb128 0x19
	.string	"xHead"
	.byte	0x9
	.byte	0x2e
	.uaword	0xc5c
	.byte	0
	.uleb128 0x16
	.uaword	0x1ba
	.uaword	0xd0c
	.uleb128 0x17
	.uaword	0x67e
	.byte	0x3f
	.byte	0
	.uleb128 0xf
	.uaword	.LASF8
	.byte	0x9
	.byte	0x2f
	.uaword	0xcd3
	.uleb128 0xa
	.byte	0x12
	.byte	0x9
	.byte	0x32
	.uaword	0x1016
	.uleb128 0x1a
	.string	"AFTMTLCS_Iu"
	.byte	0x9
	.byte	0x33
	.uaword	0x1e5
	.byte	0x2
	.byte	0xc
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x1a
	.string	"AFTMTLCS_Iv"
	.byte	0x9
	.byte	0x34
	.uaword	0x1e5
	.byte	0x2
	.byte	0xc
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x1b
	.string	"AFTMTLCS_Iw"
	.byte	0x9
	.byte	0x35
	.uaword	0x1e5
	.byte	0x2
	.byte	0xc
	.sleb128 -4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x1a
	.string	"OFTMTLCS_Iu"
	.byte	0x9
	.byte	0x36
	.uaword	0x1e5
	.byte	0x2
	.byte	0xc
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1a
	.string	"OFTMTLCS_Iv"
	.byte	0x9
	.byte	0x37
	.uaword	0x1e5
	.byte	0x2
	.byte	0xc
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x1a
	.string	"OFTMTLCS_Iw"
	.byte	0x9
	.byte	0x39
	.uaword	0x1e5
	.byte	0x2
	.byte	0xc
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xb
	.string	"AFTCIVDC_DutyCycleU"
	.byte	0x9
	.byte	0x3a
	.uaword	0x1ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xb
	.string	"AFTCIVDC_DutyCycleV"
	.byte	0x9
	.byte	0x3b
	.uaword	0x1ba
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xb
	.string	"AFTCIVDC_DutyCycleW"
	.byte	0x9
	.byte	0x3c
	.uaword	0x1ba
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0xb
	.string	"OFTCIVDC_DutyCycleU"
	.byte	0x9
	.byte	0x3d
	.uaword	0x1ba
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.string	"OFTCIVDC_DutyCycleV"
	.byte	0x9
	.byte	0x3e
	.uaword	0x1ba
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xb
	.string	"OFTCIVDC_DutyCycleW"
	.byte	0x9
	.byte	0x3f
	.uaword	0x1ba
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x1a
	.string	"AMAIN_bSoftOvCurrPhsUFlg"
	.byte	0x9
	.byte	0x41
	.uaword	0x1ba
	.byte	0x1
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0x1a
	.string	"AMAIN_bSoftOvCurrPhsVFlg"
	.byte	0x9
	.byte	0x42
	.uaword	0x1ba
	.byte	0x1
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0x1a
	.string	"AMAIN_bSoftOvCurrPhsWFlg"
	.byte	0x9
	.byte	0x43
	.uaword	0x1ba
	.byte	0x1
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0x1a
	.string	"AMAIN_bSoftOvBhvFlg"
	.byte	0x9
	.byte	0x44
	.uaword	0x1ba
	.byte	0x1
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0x1a
	.string	"AMAIN_bIgbtLowIsFlt"
	.byte	0x9
	.byte	0x45
	.uaword	0x1ba
	.byte	0x1
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0x1a
	.string	"AMAIN_bIgbtHighIsFlt"
	.byte	0x9
	.byte	0x46
	.uaword	0x1ba
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0x1a
	.string	"OMAIN_bSoftOvCurrPhsUFlg"
	.byte	0x9
	.byte	0x47
	.uaword	0x1ba
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0x1a
	.string	"OMAIN_bSoftOvCurrPhsVFlg"
	.byte	0x9
	.byte	0x48
	.uaword	0x1ba
	.byte	0x1
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0x1a
	.string	"OMAIN_bSoftOvCurrPhsWFlg"
	.byte	0x9
	.byte	0x49
	.uaword	0x1ba
	.byte	0x1
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1a
	.string	"OMAIN_bSoftOvBhvFlg"
	.byte	0x9
	.byte	0x4a
	.uaword	0x1ba
	.byte	0x1
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1a
	.string	"OMAIN_bIgbtLowIsFlt"
	.byte	0x9
	.byte	0x4b
	.uaword	0x1ba
	.byte	0x1
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1a
	.string	"OMAIN_bIgbtHighIsFlt"
	.byte	0x9
	.byte	0x4c
	.uaword	0x1ba
	.byte	0x1
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x3
	.string	"FR_InputEvent1"
	.byte	0x9
	.byte	0x4d
	.uaword	0xd17
	.uleb128 0xa
	.byte	0x24
	.byte	0x9
	.byte	0x52
	.uaword	0x1253
	.uleb128 0xb
	.string	"AFTCMTCS_i0dqTgt3_1"
	.byte	0x9
	.byte	0x53
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"AFTCMTCS_i0dqTgt3_2"
	.byte	0x9
	.byte	0x54
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.string	"AFTCMRPC_I0dq3_1"
	.byte	0x9
	.byte	0x55
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"AFTCMRPC_I0dq3_2"
	.byte	0x9
	.byte	0x56
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xb
	.string	"AFTCMCCS_UdqNorm"
	.byte	0x9
	.byte	0x58
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"AFTCMTCS_idCorTgt"
	.byte	0x9
	.byte	0x59
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xb
	.string	"AFSEVBHV_Voltage"
	.byte	0x9
	.byte	0x5a
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.string	"AFTSLOBS_ActEleThetaRd"
	.byte	0x9
	.byte	0x5b
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xb
	.string	"OFTCMTCS_i0dqTgt3_1"
	.byte	0x9
	.byte	0x5d
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"OFTCMTCS_i0dqTgt3_2"
	.byte	0x9
	.byte	0x5e
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0xb
	.string	"OFTCMRPC_I0dq3_1"
	.byte	0x9
	.byte	0x5f
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.string	"OFTCMRPC_I0dq3_2"
	.byte	0x9
	.byte	0x60
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0xb
	.string	"OFTCMCCS_UdqNorm"
	.byte	0x9
	.byte	0x62
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.string	"OFTCMTCS_idCorTgt"
	.byte	0x9
	.byte	0x63
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0xb
	.string	"OFSEVBHV_Voltage"
	.byte	0x9
	.byte	0x64
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.string	"OFTSLOBS_ActEleThetaRd"
	.byte	0x9
	.byte	0x65
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x1e
	.uleb128 0xb
	.string	"AFSSMACS_AclState"
	.byte	0x9
	.byte	0x67
	.uaword	0x1ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.string	"AFTSMACS_AclState"
	.byte	0x9
	.byte	0x68
	.uaword	0x1ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x21
	.uleb128 0x13
	.uaword	.LASF9
	.byte	0x9
	.byte	0x69
	.uaword	0x1ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x22
	.uleb128 0x13
	.uaword	.LASF10
	.byte	0x9
	.byte	0x6a
	.uaword	0x1ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x23
	.byte	0
	.uleb128 0x3
	.string	"FR_InputEvent2"
	.byte	0x9
	.byte	0x6b
	.uaword	0x102c
	.uleb128 0xa
	.byte	0x36
	.byte	0x9
	.byte	0x70
	.uaword	0x1732
	.uleb128 0x1a
	.string	"BSW_u16RawVolt15VRdc"
	.byte	0x9
	.byte	0x71
	.uaword	0x1e5
	.byte	0x2
	.byte	0xc
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x1a
	.string	"BSW_u16RawVoltDclinkFIL"
	.byte	0x9
	.byte	0x72
	.uaword	0x1e5
	.byte	0x2
	.byte	0xc
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x1b
	.string	"BSW_u16RawVolP5VHS"
	.byte	0x9
	.byte	0x73
	.uaword	0x1e5
	.byte	0x2
	.byte	0xc
	.sleb128 -4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x1a
	.string	"BSW_u16RawVolP5VLS"
	.byte	0x9
	.byte	0x74
	.uaword	0x1e5
	.byte	0x2
	.byte	0xc
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1a
	.string	"BSW_u16RawVolP9VMulti"
	.byte	0x9
	.byte	0x75
	.uaword	0x1e5
	.byte	0x2
	.byte	0xc
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x1a
	.string	"BSW_u16RawVolP5VREF"
	.byte	0x9
	.byte	0x77
	.uaword	0x1e5
	.byte	0x2
	.byte	0xc
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0x1b
	.string	"BSW_u16RawVolSnsSup1"
	.byte	0x9
	.byte	0x78
	.uaword	0x1e5
	.byte	0x2
	.byte	0xc
	.sleb128 -4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1a
	.string	"BSW_u16RawVolSnsSup2"
	.byte	0x9
	.byte	0x79
	.uaword	0x1e5
	.byte	0x2
	.byte	0xc
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x1a
	.string	"BSW_u16RawVolP5VBT"
	.byte	0x9
	.byte	0x7a
	.uaword	0x1e5
	.byte	0x2
	.byte	0xc
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1a
	.string	"BSW_u16RawVolP5VRefProt"
	.byte	0x9
	.byte	0x7b
	.uaword	0x1e5
	.byte	0x2
	.byte	0xc
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xb
	.string	"AFaultFailureLevel"
	.byte	0x9
	.byte	0x7d
	.uaword	0x1ba
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0xb
	.string	"FSEVBLV_Voltage"
	.byte	0x9
	.byte	0x7e
	.uaword	0x1ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"AFSMTMTA_TempWindingMax"
	.byte	0x9
	.byte	0x7f
	.uaword	0x1ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0xb
	.string	"AFSEVETA_TempIgbt"
	.byte	0x9
	.byte	0x80
	.uaword	0x1ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0xb
	.string	"AFTCMTCS_ParkVoltageTgt"
	.byte	0x9
	.byte	0x81
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.string	"AFTMTSEP_MecaSpeedRpm"
	.byte	0x9
	.byte	0x82
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0xb
	.string	"AFS_SpdSet_F32"
	.byte	0x9
	.byte	0x84
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.string	"OFS_SpdSet_F32"
	.byte	0x9
	.byte	0x85
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0x13
	.uaword	.LASF9
	.byte	0x9
	.byte	0x86
	.uaword	0x1ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x13
	.uaword	.LASF10
	.byte	0x9
	.byte	0x87
	.uaword	0x1ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x1d
	.uleb128 0xb
	.string	"OFSMTMTA_TempWindingMax"
	.byte	0x9
	.byte	0x88
	.uaword	0x1ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x1e
	.uleb128 0xb
	.string	"OFSEVETA_TempIgbt"
	.byte	0x9
	.byte	0x89
	.uaword	0x1ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x1f
	.uleb128 0xb
	.string	"OFTCMTCS_ParkVoltageTgt"
	.byte	0x9
	.byte	0x8b
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.string	"OFTMTSEP_MecaSpeedRpm"
	.byte	0x9
	.byte	0x8c
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x22
	.uleb128 0xb
	.string	"OFaultFailureLevel"
	.byte	0x9
	.byte	0x8d
	.uaword	0x1ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.string	"RCEVHCM_KM1VoltageFild"
	.byte	0x9
	.byte	0x8e
	.uaword	0x1ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x25
	.uleb128 0xb
	.string	"RCEVHCM_KM2VoltageFild"
	.byte	0x9
	.byte	0x8f
	.uaword	0x1ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x26
	.uleb128 0xb
	.string	"RCEVHCM_KM3VoltageFild"
	.byte	0x9
	.byte	0x90
	.uaword	0x1ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x27
	.uleb128 0xb
	.string	"RCEVHCM_KM4VoltageFild"
	.byte	0x9
	.byte	0x92
	.uaword	0x1ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.string	"RCEVHCM_KM5VoltageFild"
	.byte	0x9
	.byte	0x93
	.uaword	0x1ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x29
	.uleb128 0xb
	.string	"RCEVHCM_KM6VoltageFild"
	.byte	0x9
	.byte	0x94
	.uaword	0x1ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x2a
	.uleb128 0xb
	.string	"RCEVHCM_KM14VoltageFild"
	.byte	0x9
	.byte	0x95
	.uaword	0x1ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x2b
	.uleb128 0xb
	.string	"RCEVHCM_KM7VoltageFild"
	.byte	0x9
	.byte	0x96
	.uaword	0x1ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xb
	.string	"RCEVHCM_KM16VoltageFild"
	.byte	0x9
	.byte	0x97
	.uaword	0x1ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x2d
	.uleb128 0xb
	.string	"RCEVHCM_KM8VoltageFild"
	.byte	0x9
	.byte	0x98
	.uaword	0x1ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x2e
	.uleb128 0xb
	.string	"RCEVHCM_KM9VoltageFild"
	.byte	0x9
	.byte	0x99
	.uaword	0x1ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x2f
	.uleb128 0xb
	.string	"MAIN_f32CpuLoadCore2"
	.byte	0x9
	.byte	0x9b
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.string	"MAIN_f32CpuLoadCore1"
	.byte	0x9
	.byte	0x9c
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x32
	.uleb128 0xb
	.string	"MAIN_f32CpuLoadCore0"
	.byte	0x9
	.byte	0x9d
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.string	"FR_InputEvent3"
	.byte	0x9
	.byte	0x9e
	.uaword	0x1269
	.uleb128 0x1c
	.uahalf	0x2f40
	.byte	0xa
	.byte	0xcf
	.uaword	0x1787
	.uleb128 0xb
	.string	"atBuf1"
	.byte	0xa
	.byte	0xd1
	.uaword	0x1787
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"atBuf2"
	.byte	0xa
	.byte	0xd4
	.uaword	0x1798
	.byte	0x3
	.byte	0x23
	.uleb128 0x222c
	.uleb128 0xb
	.string	"atBuf3"
	.byte	0xa
	.byte	0xd7
	.uaword	0x17a8
	.byte	0x3
	.byte	0x23
	.uleb128 0x2d90
	.byte	0
	.uleb128 0x16
	.uaword	0x1016
	.uaword	0x1798
	.uleb128 0x1d
	.uaword	0x67e
	.uahalf	0x1e5
	.byte	0
	.uleb128 0x16
	.uaword	0x1253
	.uaword	0x17a8
	.uleb128 0x17
	.uaword	0x67e
	.byte	0x50
	.byte	0
	.uleb128 0x16
	.uaword	0x1732
	.uaword	0x17b8
	.uleb128 0x17
	.uaword	0x67e
	.byte	0x7
	.byte	0
	.uleb128 0x1e
	.uaword	.LASF11
	.uahalf	0x2f40
	.byte	0xa
	.byte	0xcd
	.uaword	0x17e1
	.uleb128 0x19
	.string	"au8Data"
	.byte	0xa
	.byte	0xce
	.uaword	0x17e1
	.uleb128 0x19
	.string	"tSet"
	.byte	0xa
	.byte	0xe2
	.uaword	0x1748
	.byte	0
	.uleb128 0x16
	.uaword	0x1ba
	.uaword	0x17f2
	.uleb128 0x1d
	.uaword	0x67e
	.uahalf	0x2f3f
	.byte	0
	.uleb128 0xf
	.uaword	.LASF11
	.byte	0xa
	.byte	0xe3
	.uaword	0x17b8
	.uleb128 0x6
	.byte	0x1
	.byte	0xa
	.byte	0xe5
	.uaword	0x184a
	.uleb128 0x5
	.string	"FR_CFG_INDEX_1"
	.sleb128 0
	.uleb128 0x5
	.string	"FR_CFG_INDEX_2"
	.sleb128 1
	.uleb128 0x5
	.string	"FR_CFG_INDEX_3"
	.sleb128 2
	.uleb128 0x5
	.string	"FR_CFG_MAX_NUM"
	.sleb128 3
	.byte	0
	.uleb128 0x4
	.string	"DSM_CONTROL_UNIT_INDEX"
	.byte	0x1
	.byte	0xb
	.byte	0x2b
	.uaword	0x18be
	.uleb128 0x5
	.string	"DSM_UNIT_0"
	.sleb128 0
	.uleb128 0x5
	.string	"DSM_UNIT_1"
	.sleb128 1
	.uleb128 0x5
	.string	"DSM_UNIT_2"
	.sleb128 2
	.uleb128 0x5
	.string	"DSM_UNIT_3"
	.sleb128 3
	.uleb128 0x5
	.string	"DSM_UNIT_4"
	.sleb128 4
	.uleb128 0x5
	.string	"DSM_UNIT_MAX_NUM"
	.sleb128 5
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.byte	0xc
	.byte	0x6
	.uaword	0x1a10
	.uleb128 0x5
	.string	"ePMux_DIOInputMux1"
	.sleb128 0
	.uleb128 0x5
	.string	"ePMux_DIOInputMux2"
	.sleb128 1
	.uleb128 0x5
	.string	"ePMux_DIOInputMux3"
	.sleb128 2
	.uleb128 0x5
	.string	"ePMUX_ANInputMux1"
	.sleb128 3
	.uleb128 0x5
	.string	"ePMUX_ANInputMux2"
	.sleb128 4
	.uleb128 0x5
	.string	"ePMUX_ANInputMux3"
	.sleb128 5
	.uleb128 0x5
	.string	"ePMUX_ANInputMux4"
	.sleb128 6
	.uleb128 0x5
	.string	"ePMUX_ANInputMux5"
	.sleb128 7
	.uleb128 0x5
	.string	"ePMUX_ANInputMux6"
	.sleb128 8
	.uleb128 0x5
	.string	"ePMUX_ANInputMux7"
	.sleb128 9
	.uleb128 0x5
	.string	"ePMUX_ANInputMux8"
	.sleb128 10
	.uleb128 0x5
	.string	"ePMUX_ANInputMux9"
	.sleb128 11
	.uleb128 0x5
	.string	"ePMUX_ANInputMux10"
	.sleb128 12
	.uleb128 0x5
	.string	"ePMUX_ANInputMux11"
	.sleb128 13
	.uleb128 0x5
	.string	"ePMUX_ANInputMux12"
	.sleb128 14
	.uleb128 0x5
	.string	"ePMUX_InputMuxMaxNum"
	.sleb128 15
	.byte	0
	.uleb128 0x1f
	.string	"FR_vidGetEventCallout_1"
	.byte	0x1
	.byte	0x9e
	.byte	0x1
	.byte	0x3
	.uaword	0x1a3d
	.uleb128 0x20
	.uaword	.LASF12
	.byte	0x1
	.byte	0x9e
	.uaword	0x9da
	.byte	0
	.uleb128 0x1f
	.string	"FR_vidGetEventCallout_2"
	.byte	0x1
	.byte	0xc2
	.byte	0x1
	.byte	0x3
	.uaword	0x1a6a
	.uleb128 0x20
	.uaword	.LASF12
	.byte	0x1
	.byte	0xc2
	.uaword	0x9da
	.byte	0
	.uleb128 0x1f
	.string	"FR_vidGetEventCallout_3"
	.byte	0x1
	.byte	0xe4
	.byte	0x1
	.byte	0x3
	.uaword	0x1a97
	.uleb128 0x20
	.uaword	.LASF12
	.byte	0x1
	.byte	0xe4
	.uaword	0x9da
	.byte	0
	.uleb128 0x1f
	.string	"FR_vidUpdateBufAddr"
	.byte	0x2
	.byte	0x7e
	.byte	0x1
	.byte	0x3
	.uaword	0x1ac8
	.uleb128 0x21
	.string	"u32TempAddr"
	.byte	0x2
	.byte	0x80
	.uaword	0x22f
	.byte	0
	.uleb128 0x22
	.string	"FR_vidUpdateBufCtr_1_"
	.byte	0x2
	.byte	0xac
	.byte	0x1
	.byte	0x3
	.uleb128 0x22
	.string	"FR_vidUpdateBufCtr_2_"
	.byte	0x2
	.byte	0xbf
	.byte	0x1
	.byte	0x3
	.uleb128 0x22
	.string	"FR_vidUpdateBufCtr_3_"
	.byte	0x2
	.byte	0xc6
	.byte	0x1
	.byte	0x3
	.uleb128 0x23
	.string	"FR_bFaultIsOccurredCallout"
	.byte	0x1
	.byte	0x79
	.byte	0x1
	.uaword	0x289
	.byte	0x1
	.uaword	0x1b4d
	.uleb128 0x24
	.uaword	.LASF6
	.byte	0x1
	.byte	0x7b
	.uaword	0x289
	.byte	0
	.uleb128 0x22
	.string	"FR_vidUpdateBufCtr"
	.byte	0x2
	.byte	0x96
	.byte	0x1
	.byte	0x3
	.uleb128 0x25
	.string	"FR_vidGetUserHeadInfoCallout"
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.uaword	.LFB250
	.uaword	.LFE250
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1bdc
	.uleb128 0x26
	.string	"kpktCfg"
	.byte	0x1
	.byte	0x57
	.uaword	0xafb
	.uaword	.LLST0
	.uleb128 0x27
	.string	"u8Index"
	.byte	0x1
	.byte	0x5d
	.uaword	0x1ba
	.uaword	.LLST1
	.uleb128 0x28
	.uaword	0x1a97
	.uaword	.LBB18
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x5a
	.uleb128 0x29
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x2a
	.uaword	0x1ab4
	.uaword	.LLST2
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.string	"FR_bExtStoreCondIsMetCallout"
	.byte	0x1
	.byte	0x8f
	.byte	0x1
	.uaword	0x289
	.uaword	.LFB253
	.uaword	.LFE253
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1c44
	.uleb128 0x2c
	.string	"kpbBufRefreshCmd"
	.byte	0x1
	.byte	0x8f
	.uaword	0xb4a
	.byte	0x1
	.byte	0x64
	.uleb128 0x2d
	.string	"bConditionIsMet"
	.byte	0x1
	.byte	0x91
	.uaword	0x289
	.byte	0x1
	.byte	0
	.uleb128 0x25
	.string	"FR_vidGetCustomEvent_1"
	.byte	0x2
	.byte	0x2d
	.byte	0x1
	.uaword	.LFB257
	.uaword	.LFE257
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1c8c
	.uleb128 0x2e
	.uaword	.LASF12
	.byte	0x2
	.byte	0x2d
	.uaword	0x9da
	.byte	0x1
	.byte	0x54
	.uleb128 0x2f
	.uaword	0x1ac8
	.uaword	.LBB22
	.uaword	.LBE22
	.byte	0x2
	.byte	0x2d
	.byte	0
	.uleb128 0x25
	.string	"FR_vidGetCustomEvent_2"
	.byte	0x2
	.byte	0x30
	.byte	0x1
	.uaword	.LFB258
	.uaword	.LFE258
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1cd4
	.uleb128 0x2e
	.uaword	.LASF12
	.byte	0x2
	.byte	0x30
	.uaword	0x9da
	.byte	0x1
	.byte	0x54
	.uleb128 0x2f
	.uaword	0x1ae3
	.uaword	.LBB24
	.uaword	.LBE24
	.byte	0x2
	.byte	0x30
	.byte	0
	.uleb128 0x25
	.string	"FR_vidGetCustomEvent_3"
	.byte	0x2
	.byte	0x33
	.byte	0x1
	.uaword	.LFB259
	.uaword	.LFE259
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1d1c
	.uleb128 0x2e
	.uaword	.LASF12
	.byte	0x2
	.byte	0x33
	.uaword	0x9da
	.byte	0x1
	.byte	0x54
	.uleb128 0x2f
	.uaword	0x1afe
	.uaword	.LBB26
	.uaword	.LBE26
	.byte	0x2
	.byte	0x33
	.byte	0
	.uleb128 0x2b
	.string	"FR_bUpdateReqIsAllowedCallout"
	.byte	0x1
	.byte	0x70
	.byte	0x1
	.uaword	0x289
	.uaword	.LFB251
	.uaword	.LFE251
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1d73
	.uleb128 0x2d
	.string	"bReqIsAllowed"
	.byte	0x1
	.byte	0x72
	.uaword	0x289
	.byte	0x1
	.uleb128 0x30
	.uaword	.LVL51
	.byte	0x1
	.uaword	0x211c
	.byte	0
	.uleb128 0x25
	.string	"FR_vidGetExtDataOfFixHead"
	.byte	0x1
	.byte	0x45
	.byte	0x1
	.uaword	.LFB249
	.uaword	.LFE249
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1dfc
	.uleb128 0x26
	.string	"kptData"
	.byte	0x1
	.byte	0x45
	.uaword	0xb1d
	.uaword	.LLST3
	.uleb128 0x31
	.byte	0x1
	.uaword	.LASF13
	.byte	0x1
	.byte	0x52
	.uaword	0x217
	.byte	0x1
	.uaword	0x1dc7
	.uleb128 0x32
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.uaword	.LASF14
	.byte	0x1
	.byte	0x53
	.uaword	0x217
	.byte	0x1
	.uaword	0x1dda
	.uleb128 0x32
	.byte	0
	.uleb128 0x33
	.uaword	0x1b4d
	.uaword	.LBB28
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x48
	.uleb128 0x34
	.uaword	.LVL53
	.uaword	0x213a
	.uleb128 0x34
	.uaword	.LVL54
	.uaword	0x214d
	.byte	0
	.uleb128 0x35
	.uaword	0x1b19
	.uaword	.LFB252
	.uaword	.LFE252
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1e4c
	.uleb128 0x2a
	.uaword	0x1b41
	.uaword	.LLST4
	.uleb128 0x36
	.uaword	.LBB35
	.uaword	.LBE35
	.uaword	0x1e3c
	.uleb128 0x37
	.uaword	0x1b41
	.uleb128 0x38
	.uaword	.LVL57
	.uaword	0x2160
	.uleb128 0x39
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.uleb128 0x38
	.uaword	.LVL56
	.uaword	0x2160
	.uleb128 0x39
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x16
	.uaword	0x22f
	.uaword	0x1e5c
	.uleb128 0x17
	.uaword	0x67e
	.byte	0x1
	.byte	0
	.uleb128 0x3a
	.string	"FR_au32BufCtr"
	.byte	0x2
	.byte	0x15
	.uaword	0x1e4c
	.byte	0x5
	.byte	0x3
	.uaword	FR_au32BufCtr
	.uleb128 0x3a
	.string	"FR_xUserHeadRamBlock"
	.byte	0x2
	.byte	0x16
	.uaword	0xd0c
	.byte	0x5
	.byte	0x3
	.uaword	FR_xUserHeadRamBlock
	.uleb128 0x16
	.uaword	0x939
	.uaword	0x1ea9
	.uleb128 0x17
	.uaword	0x67e
	.byte	0x5
	.byte	0
	.uleb128 0x3a
	.string	"FR_atBufIndex"
	.byte	0x2
	.byte	0x17
	.uaword	0x1e99
	.byte	0x5
	.byte	0x3
	.uaword	FR_atBufIndex
	.uleb128 0x16
	.uaword	0x1ba
	.uaword	0x1ed4
	.uleb128 0x17
	.uaword	0x67e
	.byte	0x63
	.byte	0
	.uleb128 0x3a
	.string	"FR_u8OverflowProtectBuf1"
	.byte	0x2
	.byte	0x19
	.uaword	0x1efa
	.byte	0x5
	.byte	0x3
	.uaword	FR_u8OverflowProtectBuf1
	.uleb128 0x10
	.uaword	0x1ec4
	.uleb128 0x3a
	.string	"FR_tInputBuf_DCAC"
	.byte	0x2
	.byte	0x1a
	.uaword	0x17f2
	.byte	0x5
	.byte	0x3
	.uaword	FR_tInputBuf_DCAC
	.uleb128 0x3a
	.string	"FR_u8OverflowProtectBuf2"
	.byte	0x2
	.byte	0x1b
	.uaword	0x1f44
	.byte	0x5
	.byte	0x3
	.uaword	FR_u8OverflowProtectBuf2
	.uleb128 0x10
	.uaword	0x1ec4
	.uleb128 0x3a
	.string	"FR_InputEventSize1"
	.byte	0x2
	.byte	0x25
	.uaword	0x1f69
	.byte	0x5
	.byte	0x3
	.uaword	FR_InputEventSize1
	.uleb128 0xd
	.uaword	0x1f6e
	.uleb128 0x10
	.uaword	0x1ba
	.uleb128 0x3a
	.string	"FR_InputEventSize2"
	.byte	0x2
	.byte	0x26
	.uaword	0x1f69
	.byte	0x5
	.byte	0x3
	.uaword	FR_InputEventSize2
	.uleb128 0x3a
	.string	"FR_InputEventSize3"
	.byte	0x2
	.byte	0x27
	.uaword	0x1f69
	.byte	0x5
	.byte	0x3
	.uaword	FR_InputEventSize3
	.uleb128 0x16
	.uaword	0x9e5
	.uaword	0x1fc3
	.uleb128 0x17
	.uaword	0x67e
	.byte	0x2
	.byte	0
	.uleb128 0x3a
	.string	"FR_aktBufCfgGroup"
	.byte	0x2
	.byte	0x46
	.uaword	0x1fe2
	.byte	0x5
	.byte	0x3
	.uaword	FR_aktBufCfgGroup
	.uleb128 0xd
	.uaword	0x1fb3
	.uleb128 0x3a
	.string	"FR_ktUserHeadCfg"
	.byte	0x2
	.byte	0x5b
	.uaword	0xb06
	.byte	0x5
	.byte	0x3
	.uaword	FR_ktUserHeadCfg
	.uleb128 0x3a
	.string	"FR_ktUserIf"
	.byte	0x2
	.byte	0x61
	.uaword	0xc4c
	.byte	0x5
	.byte	0x3
	.uaword	FR_ktUserIf
	.uleb128 0x16
	.uaword	0x664
	.uaword	0x202e
	.uleb128 0x17
	.uaword	0x67e
	.byte	0x3
	.byte	0
	.uleb128 0x3b
	.string	"IfxCpu_cfg_indexMap"
	.byte	0x6
	.byte	0xaa
	.uaword	0x204b
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.uaword	0x201e
	.uleb128 0x3b
	.string	"MAIN_u8UdsSwVerSup"
	.byte	0xd
	.byte	0xa6
	.uaword	0xcb3
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.string	"AMAIN_u8IgbtFltConfirmCntC"
	.byte	0xe
	.byte	0x49
	.uaword	0x7f4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	AMAIN_u8IgbtFltConfirmCntC
	.uleb128 0x3b
	.string	"AMAIN_u8DEV_Fault"
	.byte	0xe
	.byte	0x58
	.uaword	0xcc3
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.string	"OMAIN_u8IgbtFltConfirmCntC"
	.byte	0xf
	.byte	0x48
	.uaword	0x7f4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	OMAIN_u8IgbtFltConfirmCntC
	.uleb128 0x3b
	.string	"OMAIN_u8DEV_Fault"
	.byte	0xf
	.byte	0x57
	.uaword	0xcc3
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.string	"FR_ktDCACBankUserCfg"
	.byte	0x2
	.byte	0x6c
	.uaword	0x2117
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	FR_ktDCACBankUserCfg
	.uleb128 0xd
	.uaword	0xc51
	.uleb128 0x3d
	.byte	0x1
	.string	"BSW_bGetBswReadySts"
	.byte	0x10
	.byte	0x73
	.byte	0x1
	.uaword	0x289
	.byte	0x1
	.uleb128 0x31
	.byte	0x1
	.uaword	.LASF13
	.byte	0x1
	.byte	0x52
	.uaword	0x217
	.byte	0x1
	.uaword	0x214d
	.uleb128 0x32
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.uaword	.LASF14
	.byte	0x1
	.byte	0x53
	.uaword	0x217
	.byte	0x1
	.uaword	0x2160
	.uleb128 0x32
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.string	"DSM_u8GetUnitFaultLevel"
	.byte	0xb
	.byte	0x5f
	.byte	0x1
	.uaword	0x1ba
	.byte	0x1
	.uleb128 0x12
	.uaword	0x1ba
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
	.uleb128 0x35
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x16
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
	.uleb128 0x10
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x17
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xd
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x17
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
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
	.uleb128 0x20
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
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
	.uleb128 0x2c
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
	.uleb128 0xa
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0x1d
	.byte	0
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
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x1d
	.byte	0
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
	.uleb128 0x34
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.byte	0x64
	.uaword	.LVL1
	.uaword	.LFE250
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x2
	.byte	0x44
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x2
	.byte	0x37
	.byte	0x9f
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x2
	.byte	0x39
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x2
	.byte	0x3a
	.byte	0x9f
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x2
	.byte	0x3b
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x2
	.byte	0x3c
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x2
	.byte	0x3d
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x2
	.byte	0x3e
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x2
	.byte	0x3f
	.byte	0x9f
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL26
	.uaword	.LVL27
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL27
	.uaword	.LVL28
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL28
	.uaword	.LVL29
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	.LVL29
	.uaword	.LVL30
	.uahalf	0x2
	.byte	0x37
	.byte	0x9f
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	.LVL31
	.uaword	.LVL32
	.uahalf	0x2
	.byte	0x39
	.byte	0x9f
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x2
	.byte	0x3a
	.byte	0x9f
	.uaword	.LVL33
	.uaword	.LVL34
	.uahalf	0x2
	.byte	0x3b
	.byte	0x9f
	.uaword	.LVL34
	.uaword	.LVL35
	.uahalf	0x2
	.byte	0x3c
	.byte	0x9f
	.uaword	.LVL35
	.uaword	.LVL36
	.uahalf	0x2
	.byte	0x3d
	.byte	0x9f
	.uaword	.LVL36
	.uaword	.LVL37
	.uahalf	0x2
	.byte	0x3e
	.byte	0x9f
	.uaword	.LVL37
	.uaword	.LVL38
	.uahalf	0x2
	.byte	0x3f
	.byte	0x9f
	.uaword	.LVL38
	.uaword	.LVL39
	.uahalf	0x2
	.byte	0x40
	.byte	0x9f
	.uaword	.LVL39
	.uaword	.LVL40
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL40
	.uaword	.LVL41
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL41
	.uaword	.LVL42
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL0
	.uaword	.LVL2
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL2
	.uaword	.LFE250
	.uahalf	0x6
	.byte	0x3
	.uaword	FR_tInputBuf_DCAC
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL52
	.uaword	.LVL53-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL53-1
	.uaword	.LFE249
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL55
	.uaword	.LVL58
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL58
	.uaword	.LFE252
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x54
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB250
	.uaword	.LFE250-.LFB250
	.uaword	.LFB253
	.uaword	.LFE253-.LFB253
	.uaword	.LFB257
	.uaword	.LFE257-.LFB257
	.uaword	.LFB258
	.uaword	.LFE258-.LFB258
	.uaword	.LFB259
	.uaword	.LFE259-.LFB259
	.uaword	.LFB251
	.uaword	.LFE251-.LFB251
	.uaword	.LFB249
	.uaword	.LFE249-.LFB249
	.uaword	.LFB252
	.uaword	.LFE252-.LFB252
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB18
	.uaword	.LBE18
	.uaword	.LBB21
	.uaword	.LBE21
	.uaword	0
	.uaword	0
	.uaword	.LBB28
	.uaword	.LBE28
	.uaword	.LBB31
	.uaword	.LBE31
	.uaword	0
	.uaword	0
	.uaword	.LFB250
	.uaword	.LFE250
	.uaword	.LFB253
	.uaword	.LFE253
	.uaword	.LFB257
	.uaword	.LFE257
	.uaword	.LFB258
	.uaword	.LFE258
	.uaword	.LFB259
	.uaword	.LFE259
	.uaword	.LFB251
	.uaword	.LFE251
	.uaword	.LFB249
	.uaword	.LFE249
	.uaword	.LFB252
	.uaword	.LFE252
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF12:
	.string	"ku32IndexInBuf"
.LASF2:
	.string	"FR_BufIndex"
.LASF1:
	.string	"FR_tExtDataOfFixHead"
.LASF10:
	.string	"OFTSMACS_AclState"
.LASF11:
	.string	"FR_InputBuf"
.LASF6:
	.string	"bFaultIsOccurred"
.LASF3:
	.string	"FR_BufCfg"
.LASF9:
	.string	"OFSSMACS_AclState"
.LASF5:
	.string	"FR_BankUserIf"
.LASF14:
	.string	"MAIN_u32GetFactoryRunTime_s"
.LASF7:
	.string	"FR_BankUserCfg"
.LASF0:
	.string	"FR_tTimestamp"
.LASF13:
	.string	"MAIN_u32GetRunTime_ms"
.LASF8:
	.string	"FR_UserHead"
.LASF4:
	.string	"FR_UserHeadCfg"
	.extern	DSM_u8GetUnitFaultLevel,STT_FUNC,0
	.extern	MAIN_u32GetFactoryRunTime_s,STT_FUNC,0
	.extern	MAIN_u32GetRunTime_ms,STT_FUNC,0
	.extern	BSW_bGetBswReadySts,STT_FUNC,0
	.extern	OMAIN_u8DEV_Fault,STT_OBJECT,16
	.extern	AMAIN_u8DEV_Fault,STT_OBJECT,16
	.extern	MAIN_u8UdsSwVerSup,STT_OBJECT,21
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
