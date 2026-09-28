	.file	"MAIN_EPSErrProtect.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.TPPC_vidEPSASCStateMng,"ax",@progbits
	.align 1
	.global	TPPC_vidEPSASCStateMng
	.type	TPPC_vidEPSASCStateMng, @function
TPPC_vidEPSASCStateMng:
.LFB370:
	.file 1 "main\\_MainModule\\AOCUErrProtect\\MAIN_EPSErrProtect.c"
	.loc 1 49 0
	.loc 1 52 0
	movh.a	%a15, hi:TPPC_u8EPSASCStep
	ld.bu	%d15, [%a15] lo:TPPC_u8EPSASCStep
	.loc 1 49 0
	sub.a	%SP, 8
.LCFI0:
	.loc 1 52 0
	jeq	%d15, 2, .L3
	jeq	%d15, 3, .L4
	jz	%d15, .L15
.L1:
	ret
.L15:
.LBB7:
	.loc 1 56 0
	call	IOHAL_u16Read_CH_DIO_IN_M_FAULT_EPS_HS_N
.LVL0:
	movh.a	%a2, hi:bLocEPSASCState.23081
	and	%d2, %d2, 255
	st.b	[%a2] lo:bLocEPSASCState.23081, %d2
	.loc 1 58 0
	jnz	%d2, .L6
	.loc 1 60 0
	movh.a	%a2, hi:AMAIN_u16EPSASCStartupChkFaultHighCnt
	st.h	[%a2] lo:AMAIN_u16EPSASCStartupChkFaultHighCnt, %d2
	.loc 1 61 0
	movh.a	%a2, hi:AMAIN_u16EPSASCStartupChkFaultLowCnt
	ld.h	%d15, [%a2] lo:AMAIN_u16EPSASCStartupChkFaultLowCnt
	add	%d15, 1
	extr.u	%d15, %d15, 0, 16
	st.h	[%a2] lo:AMAIN_u16EPSASCStartupChkFaultLowCnt, %d15
	.loc 1 62 0
	ge.u	%d15, %d15, 200
	jz	%d15, .L1
	.loc 1 64 0
	mov	%d15, 2
	st.b	[%a15] lo:TPPC_u8EPSASCStep, %d15
.LBB8:
.LBB9:
	.file 2 ".\\output\\inc/..\\..\\ASW\\CDD_TPPC\\CDD_TPPC.h"
	.loc 2 170 0
	mov	%d4, 1
.LBE9:
.LBE8:
	.loc 1 65 0
	mov	%d15, 1
	movh.a	%a15, hi:TPPC_bEPSASCEnableState
	st.b	[%a15] lo:TPPC_bEPSASCEnableState, %d15
.LBB11:
.LBB10:
	.loc 2 170 0
	call	TPPCDev_vidAscEntry
.LVL1:
.LBE10:
.LBE11:
	.loc 1 68 0
	call	GtmM_vid_Disable_GTMTIM3SR6_ISR
.LVL2:
.LBE7:
	.loc 1 141 0
.LBB12:
	.loc 1 69 0
	mov	%d4, 18
.LBE12:
	.loc 1 141 0
	lea	%SP, [%SP] 8
.LBB13:
	.loc 1 69 0
	j	Icu_17_TimerIp_EnableNotification
.LVL3:
.L4:
.LBE13:
.LBB14:
	.loc 1 119 0
	call	IOHAL_u16Read_CH_DIO_IN_M_FAULT_EPS_HS_N
.LVL4:
	movh.a	%a2, hi:bLocEPSASCState.23081
	and	%d2, %d2, 255
	st.b	[%a2] lo:bLocEPSASCState.23081, %d2
	.loc 1 121 0
	jz	%d2, .L1
	.loc 1 121 0 is_stmt 0 discriminator 1
	mov	%d4, 1
	call	TPPCDev_bGetAscisClose
.LVL5:
	jne	%d2, 1, .L1
	.loc 1 123 0 is_stmt 1
	movh.a	%a4, 61456
	lea	%a4, [%a4] 11052
	st.w	[%SP] 4, %d2
	call	GtmM_vidClearPendingInterrupts
.LVL6:
	.loc 1 124 0
	call	GtmM_vid_Enable_GTMTIM3SR6_ISR
.LVL7:
	.loc 1 125 0
	ld.w	%d2, [%SP] 4
	st.b	[%a15] lo:TPPC_u8EPSASCStep, %d2
	ret
.L3:
.LBE14:
.LBB15:
	.loc 1 90 0
	call	IOHAL_u16Read_CH_DIO_IN_M_FAULT_EPS_HS_N
.LVL8:
	movh.a	%a2, hi:bLocEPSASCState.23081
	and	%d2, %d2, 255
	st.b	[%a2] lo:bLocEPSASCState.23081, %d2
	.loc 1 92 0
	jz	%d2, .L9
	.loc 1 94 0
	movh.a	%a2, hi:AMAIN_u16EPSASCRecoverCnt
	ld.h	%d15, [%a2] lo:AMAIN_u16EPSASCRecoverCnt
	.loc 1 95 0
	mov	%d2, 5000
	.loc 1 94 0
	add	%d15, 1
	extr.u	%d15, %d15, 0, 16
	st.h	[%a2] lo:AMAIN_u16EPSASCRecoverCnt, %d15
	.loc 1 95 0
	jlt.u	%d15, %d2, .L1
	.loc 1 97 0
	movh.a	%a3, hi:AMAIN_u8EPSASCRecoverTimes
	ld.bu	%d15, [%a3] lo:AMAIN_u8EPSASCRecoverTimes
	jlt.u	%d15, 5, .L10
	.loc 1 99 0
	mov	%d15, 4
	st.b	[%a15] lo:TPPC_u8EPSASCStep, %d15
	ret
.L6:
.LBE15:
.LBB16:
	.loc 1 74 0
	movh.a	%a2, hi:AMAIN_u16EPSASCStartupChkFaultLowCnt
	st.h	[%a2] lo:AMAIN_u16EPSASCStartupChkFaultLowCnt, %d15
	.loc 1 75 0
	movh.a	%a2, hi:AMAIN_u16EPSASCStartupChkFaultHighCnt
	ld.h	%d15, [%a2] lo:AMAIN_u16EPSASCStartupChkFaultHighCnt
	add	%d15, 1
	extr.u	%d15, %d15, 0, 16
	st.h	[%a2] lo:AMAIN_u16EPSASCStartupChkFaultHighCnt, %d15
	.loc 1 76 0
	lt.u	%d15, %d15, 200
	jnz	%d15, .L1
	.loc 1 78 0
	mov	%d4, 18
	call	Icu_17_TimerIp_EnableNotification
.LVL9:
	.loc 1 79 0
	movh.a	%a2, hi:TPPC_bEPSASCEnableState
	st.b	[%a2] lo:TPPC_bEPSASCEnableState, %d15
	.loc 1 80 0
	mov	%d15, 1
	st.b	[%a15] lo:TPPC_u8EPSASCStep, %d15
	ret
.L9:
.LBE16:
.LBB17:
	.loc 1 112 0
	movh.a	%a15, hi:AMAIN_u16EPSASCRecoverCnt
	st.h	[%a15] lo:AMAIN_u16EPSASCRecoverCnt, %d2
	ret
.L10:
	.loc 1 103 0
	mov	%d2, 3
	.loc 1 105 0
	add	%d15, 1
	.loc 1 103 0
	st.b	[%a15] lo:TPPC_u8EPSASCStep, %d2
	.loc 1 105 0
	st.b	[%a3] lo:AMAIN_u8EPSASCRecoverTimes, %d15
	.loc 1 104 0
	mov	%d2, 0
	movh.a	%a15, hi:TPPC_bEPSASCEnableState
	.loc 1 106 0
	mov	%d15, 0
	.loc 1 104 0
	st.b	[%a15] lo:TPPC_bEPSASCEnableState, %d2
	.loc 1 106 0
	st.h	[%a2] lo:AMAIN_u16EPSASCRecoverCnt, %d15
	ret
.LBE17:
.LFE370:
	.size	TPPC_vidEPSASCStateMng, .-TPPC_vidEPSASCStateMng
.section .text.MAIN_bGetEPSASCEnableState,"ax",@progbits
	.align 1
	.global	MAIN_bGetEPSASCEnableState
	.type	MAIN_bGetEPSASCEnableState, @function
MAIN_bGetEPSASCEnableState:
.LFB371:
	.loc 1 144 0
	.loc 1 146 0
	movh.a	%a15, hi:TPPC_bEPSASCEnableState
	ld.bu	%d2, [%a15] lo:TPPC_bEPSASCEnableState
	ret
.LFE371:
	.size	MAIN_bGetEPSASCEnableState, .-MAIN_bGetEPSASCEnableState
.section .text.MAIN_bSetEPSASCEnableState,"ax",@progbits
	.align 1
	.global	MAIN_bSetEPSASCEnableState
	.type	MAIN_bSetEPSASCEnableState, @function
MAIN_bSetEPSASCEnableState:
.LFB372:
	.loc 1 149 0
.LVL10:
	.loc 1 150 0
	movh.a	%a15, hi:TPPC_bEPSASCEnableState
	st.b	[%a15] lo:TPPC_bEPSASCEnableState, %d4
	ret
.LFE372:
	.size	MAIN_bSetEPSASCEnableState, .-MAIN_bSetEPSASCEnableState
.section .text.MAIN_u8GetEPSASCStep,"ax",@progbits
	.align 1
	.global	MAIN_u8GetEPSASCStep
	.type	MAIN_u8GetEPSASCStep, @function
MAIN_u8GetEPSASCStep:
.LFB373:
	.loc 1 154 0
	.loc 1 156 0
	movh.a	%a15, hi:TPPC_u8EPSASCStep
	ld.bu	%d2, [%a15] lo:TPPC_u8EPSASCStep
	ret
.LFE373:
	.size	MAIN_u8GetEPSASCStep, .-MAIN_u8GetEPSASCStep
.section .text.EPS_CallBack,"ax",@progbits
	.align 1
	.global	EPS_CallBack
	.type	EPS_CallBack, @function
EPS_CallBack:
.LFB374:
	.loc 1 159 0
	.loc 1 161 0
	mov	%d15, 1
	movh.a	%a15, hi:TPPC_bEPSASCEnableState
	.loc 1 160 0
	call	GtmM_vid_Disable_GTMTIM3SR6_ISR
.LVL11:
	.loc 1 161 0
	st.b	[%a15] lo:TPPC_bEPSASCEnableState, %d15
	.loc 1 162 0
	mov	%d15, 2
	movh.a	%a15, hi:TPPC_u8EPSASCStep
	st.b	[%a15] lo:TPPC_u8EPSASCStep, %d15
	ret
.LFE374:
	.size	EPS_CallBack, .-EPS_CallBack
.section .data.a1.bLocEPSASCState.23081,"aw",@progbits
	.type	bLocEPSASCState.23081, @object
	.size	bLocEPSASCState.23081, 1
bLocEPSASCState.23081:
	.byte	1
.section .bss.a1.TPPC_bEPSASCEnableState,"aw",@nobits
	.type	TPPC_bEPSASCEnableState, @object
	.size	TPPC_bEPSASCEnableState, 1
TPPC_bEPSASCEnableState:
	.zero	1
.section .bss.a1.TPPC_u8EPSASCStep,"aw",@nobits
	.type	TPPC_u8EPSASCStep, @object
	.size	TPPC_u8EPSASCStep, 1
TPPC_u8EPSASCStep:
	.zero	1
.section .bss.a2.AMAIN_u16EPSASCRecoverCnt,"aw",@nobits
	.align 1
	.type	AMAIN_u16EPSASCRecoverCnt, @object
	.size	AMAIN_u16EPSASCRecoverCnt, 2
AMAIN_u16EPSASCRecoverCnt:
	.zero	2
.section .bss.a1.AMAIN_u8EPSASCRecoverTimes,"aw",@nobits
	.type	AMAIN_u8EPSASCRecoverTimes, @object
	.size	AMAIN_u8EPSASCRecoverTimes, 1
AMAIN_u8EPSASCRecoverTimes:
	.zero	1
.section .bss.a2.AMAIN_u16EPSASCStartupChkFaultHighCnt,"aw",@nobits
	.align 1
	.type	AMAIN_u16EPSASCStartupChkFaultHighCnt, @object
	.size	AMAIN_u16EPSASCStartupChkFaultHighCnt, 2
AMAIN_u16EPSASCStartupChkFaultHighCnt:
	.zero	2
.section .bss.a2.AMAIN_u16EPSASCStartupChkFaultLowCnt,"aw",@nobits
	.align 1
	.type	AMAIN_u16EPSASCStartupChkFaultLowCnt, @object
	.size	AMAIN_u16EPSASCStartupChkFaultLowCnt, 2
AMAIN_u16EPSASCStartupChkFaultLowCnt:
	.zero	2
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
	.uaword	.LFB370
	.uaword	.LFE370-.LFB370
	.byte	0x4
	.uaword	.LCFI0-.LFB370
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB371
	.uaword	.LFE371-.LFB371
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB372
	.uaword	.LFE372-.LFB372
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB373
	.uaword	.LFE373-.LFB373
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB374
	.uaword	.LFE374-.LFB374
	.align 2
.LEFDE8:
.section .text,"ax",@progbits
.Letext0:
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 4 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\Ifx_TypesReg.h"
	.file 5 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
	.file 6 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\Cpu\\Std\\Ifx_Types.h"
	.file 7 "main\\_MainModule\\AOCUErrProtect\\MAIN_EPSErrProtect.h"
	.file 8 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\_Impl\\IfxGtm_cfg.h"
	.file 9 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\_Impl\\IfxCpu_cfg.h"
	.file 10 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\Scu\\Std\\IfxScuCcu.h"
	.file 11 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\inc\\Icu_17_TimerIp.h"
	.file 12 ".\\output\\inc/..\\..\\bswcdd\\TPPC\\0_Devices\\TPPC_DeviceCfg.h"
	.file 13 ".\\output\\inc/..\\..\\bswcdd\\TPPC\\TPPC.h"
	.file 14 ".\\output\\inc/..\\..\\bswcdd\\GtmM\\GtmM.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xc52
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"main\\_MainModule\\AOCUErrProtect\\MAIN_EPSErrProtect.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x58
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
	.uaword	0x1df
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
	.uaword	0x20b
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"sint32"
	.byte	0x3
	.byte	0x60
	.uaword	0x22f
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
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
	.uaword	0x1df
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x4
	.byte	0x1
	.byte	0x7
	.byte	0xe
	.uaword	0x330
	.uleb128 0x5
	.string	"EPS_ASC_TYPE_STARTUP_CHECK"
	.sleb128 0
	.uleb128 0x5
	.string	"EPS_ASC_TYPE_NORMAL"
	.sleb128 1
	.uleb128 0x5
	.string	"EPS_ASC_TYPE_FAULT"
	.sleb128 2
	.uleb128 0x5
	.string	"EPS_ASC_TYPE_RECOVER"
	.sleb128 3
	.uleb128 0x5
	.string	"EPS_ASC_TYPE_LOCK"
	.sleb128 4
	.byte	0
	.uleb128 0x3
	.string	"Ifx_UReg_32Bit"
	.byte	0x4
	.byte	0x62
	.uaword	0x247
	.uleb128 0x3
	.string	"Ifx_SReg_32Bit"
	.byte	0x4
	.byte	0x65
	.uaword	0x22f
	.uleb128 0x6
	.uaword	0x247
	.uleb128 0x7
	.string	"_Ifx_GTM_TIM_CH_IRQ_NOTIFY_Bits"
	.byte	0x4
	.byte	0x5
	.uahalf	0x1443
	.uaword	0x425
	.uleb128 0x8
	.string	"NEWVAL"
	.byte	0x5
	.uahalf	0x1445
	.uaword	0x35c
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"ECNTOFL"
	.byte	0x5
	.uahalf	0x1446
	.uaword	0x35c
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"CNTOFL"
	.byte	0x5
	.uahalf	0x1447
	.uaword	0x35c
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"GPROFL"
	.byte	0x5
	.uahalf	0x1448
	.uaword	0x35c
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TODET"
	.byte	0x5
	.uahalf	0x1449
	.uaword	0x35c
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"GLITCHDET"
	.byte	0x5
	.uahalf	0x144a
	.uaword	0x35c
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"reserved_6"
	.byte	0x5
	.uahalf	0x144b
	.uaword	0x35c
	.byte	0x4
	.byte	0x1a
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_GTM_TIM_CH_IRQ_NOTIFY_Bits"
	.byte	0x5
	.uahalf	0x144c
	.uaword	0x361
	.uleb128 0xa
	.byte	0x4
	.byte	0x5
	.uahalf	0x218f
	.uaword	0x474
	.uleb128 0xb
	.string	"U"
	.byte	0x5
	.uahalf	0x2191
	.uaword	0x330
	.uleb128 0xb
	.string	"I"
	.byte	0x5
	.uahalf	0x2192
	.uaword	0x346
	.uleb128 0xb
	.string	"B"
	.byte	0x5
	.uahalf	0x2193
	.uaword	0x425
	.byte	0
	.uleb128 0x9
	.string	"Ifx_GTM_TIM_CH_IRQ_NOTIFY"
	.byte	0x5
	.uahalf	0x2194
	.uaword	0x44c
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0xc
	.byte	0x4
	.uaword	0x4b0
	.uleb128 0xd
	.uleb128 0xe
	.byte	0x8
	.byte	0x6
	.byte	0x8c
	.uaword	0x4db
	.uleb128 0xf
	.string	"module"
	.byte	0x6
	.byte	0x8e
	.uaword	0x4aa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"index"
	.byte	0x6
	.byte	0x8f
	.uaword	0x221
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"IfxModule_IndexMap"
	.byte	0x6
	.byte	0x90
	.uaword	0x4b1
	.uleb128 0x10
	.byte	0x1
	.byte	0x8
	.uahalf	0x114
	.uaword	0x582
	.uleb128 0x5
	.string	"IfxGtm_Cdtm_none"
	.sleb128 -1
	.uleb128 0x5
	.string	"IfxGtm_Cdtm_0"
	.sleb128 0
	.uleb128 0x5
	.string	"IfxGtm_Cdtm_1"
	.sleb128 1
	.uleb128 0x5
	.string	"IfxGtm_Cdtm_2"
	.sleb128 2
	.uleb128 0x5
	.string	"IfxGtm_Cdtm_3"
	.sleb128 3
	.uleb128 0x5
	.string	"IfxGtm_Cdtm_4"
	.sleb128 4
	.uleb128 0x5
	.string	"IfxGtm_Cdtm_5"
	.sleb128 5
	.uleb128 0x5
	.string	"IfxGtm_Cdtm_6"
	.sleb128 6
	.byte	0
	.uleb128 0x9
	.string	"IfxGtm_Cdtm"
	.byte	0x8
	.uahalf	0x11d
	.uaword	0x4f5
	.uleb128 0x4
	.byte	0x1
	.byte	0x9
	.byte	0x88
	.uaword	0x5f7
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
	.uleb128 0x10
	.byte	0x1
	.byte	0xa
	.uahalf	0x160
	.uaword	0x700
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
	.uleb128 0x9
	.string	"Icu_17_TimerIp_ChannelType"
	.byte	0xb
	.uahalf	0x12a
	.uaword	0x1d2
	.uleb128 0x4
	.byte	0x1
	.byte	0xc
	.byte	0x24
	.uaword	0x7aa
	.uleb128 0x5
	.string	"eTPPC_DEV_GTM_START_INDEX"
	.sleb128 0
	.uleb128 0x5
	.string	"eTPPC_DEV_GTM_ACM_INDEX"
	.sleb128 0
	.uleb128 0x5
	.string	"eTPPC_DEV_GTM_EPS_INDEX"
	.sleb128 1
	.uleb128 0x5
	.string	"eTPPC_DEV_GTM_END_INDEX"
	.sleb128 2
	.uleb128 0x5
	.string	"eTPPC_DEV_MAX_NUM"
	.sleb128 2
	.byte	0
	.uleb128 0x11
	.string	"CDD_TPPC_vidEPSSoftTrapTrigger"
	.byte	0x2
	.byte	0xa8
	.byte	0x1
	.byte	0x3
	.uleb128 0x12
	.byte	0x1
	.string	"TPPC_vidEPSASCStateMng"
	.byte	0x1
	.byte	0x30
	.byte	0x1
	.uaword	.LFB370
	.uaword	.LFE370
	.uaword	.LLST0
	.byte	0x1
	.uaword	0x90e
	.uleb128 0x13
	.string	"bLocEPSASCState"
	.byte	0x1
	.byte	0x32
	.uaword	0x284
	.byte	0x5
	.byte	0x3
	.uaword	bLocEPSASCState.23081
	.uleb128 0x14
	.uaword	.Ldebug_ranges0+0
	.uaword	0x88d
	.uleb128 0x15
	.byte	0x1
	.uaword	.LASF0
	.byte	0x1
	.byte	0x38
	.uaword	0x22f
	.byte	0x1
	.uaword	0x834
	.uleb128 0x16
	.byte	0
	.uleb128 0x17
	.uaword	0x7aa
	.uaword	.LBB8
	.uaword	.Ldebug_ranges0+0x28
	.byte	0x1
	.byte	0x42
	.uaword	0x857
	.uleb128 0x18
	.uaword	.LVL1
	.uaword	0xb31
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL0
	.uaword	0xb5a
	.uleb128 0x1a
	.uaword	.LVL2
	.uaword	0xb6d
	.uleb128 0x1b
	.uaword	.LVL3
	.byte	0x1
	.uaword	0xb93
	.uaword	0x87d
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x42
	.byte	0
	.uleb128 0x18
	.uaword	.LVL9
	.uaword	0xb93
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x42
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uaword	.LBB14
	.uaword	.LBE14
	.uaword	0x8eb
	.uleb128 0x15
	.byte	0x1
	.uaword	.LASF0
	.byte	0x1
	.byte	0x38
	.uaword	0x22f
	.byte	0x1
	.uaword	0x8ad
	.uleb128 0x16
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL4
	.uaword	0xb5a
	.uleb128 0x1d
	.uaword	.LVL5
	.uaword	0xbcb
	.uaword	0x8c9
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL6
	.uaword	0xbf6
	.uaword	0x8e1
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x6
	.byte	0x11
	.sleb128 -267375828
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL7
	.uaword	0xc30
	.byte	0
	.uleb128 0x1e
	.uaword	.Ldebug_ranges0+0x40
	.uleb128 0x15
	.byte	0x1
	.uaword	.LASF0
	.byte	0x1
	.byte	0x38
	.uaword	0x22f
	.byte	0x1
	.uaword	0x903
	.uleb128 0x16
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL8
	.uaword	0xb5a
	.byte	0
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"MAIN_bGetEPSASCEnableState"
	.byte	0x1
	.byte	0x8f
	.byte	0x1
	.uaword	0x284
	.uaword	.LFB371
	.uaword	.LFE371
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x20
	.byte	0x1
	.string	"MAIN_bSetEPSASCEnableState"
	.byte	0x1
	.byte	0x94
	.byte	0x1
	.uaword	.LFB372
	.uaword	.LFE372
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x97f
	.uleb128 0x21
	.string	"bState"
	.byte	0x1
	.byte	0x94
	.uaword	0x284
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"MAIN_u8GetEPSASCStep"
	.byte	0x1
	.byte	0x99
	.byte	0x1
	.uaword	0x1d2
	.uaword	.LFB373
	.uaword	.LFE373
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x20
	.byte	0x1
	.string	"EPS_CallBack"
	.byte	0x1
	.byte	0x9e
	.byte	0x1
	.uaword	.LFB374
	.uaword	.LFE374
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x9d5
	.uleb128 0x1a
	.uaword	.LVL11
	.uaword	0xb6d
	.byte	0
	.uleb128 0x13
	.string	"AMAIN_u16EPSASCStartupChkFaultLowCnt"
	.byte	0x1
	.byte	0x19
	.uaword	0x1fd
	.byte	0x5
	.byte	0x3
	.uaword	AMAIN_u16EPSASCStartupChkFaultLowCnt
	.uleb128 0x13
	.string	"AMAIN_u16EPSASCStartupChkFaultHighCnt"
	.byte	0x1
	.byte	0x1a
	.uaword	0x1fd
	.byte	0x5
	.byte	0x3
	.uaword	AMAIN_u16EPSASCStartupChkFaultHighCnt
	.uleb128 0x13
	.string	"AMAIN_u8EPSASCRecoverTimes"
	.byte	0x1
	.byte	0x1b
	.uaword	0x1d2
	.byte	0x5
	.byte	0x3
	.uaword	AMAIN_u8EPSASCRecoverTimes
	.uleb128 0x13
	.string	"AMAIN_u16EPSASCRecoverCnt"
	.byte	0x1
	.byte	0x1c
	.uaword	0x1fd
	.byte	0x5
	.byte	0x3
	.uaword	AMAIN_u16EPSASCRecoverCnt
	.uleb128 0x13
	.string	"TPPC_u8EPSASCStep"
	.byte	0x1
	.byte	0x1d
	.uaword	0x1d2
	.byte	0x5
	.byte	0x3
	.uaword	TPPC_u8EPSASCStep
	.uleb128 0x13
	.string	"TPPC_bEPSASCEnableState"
	.byte	0x1
	.byte	0x1e
	.uaword	0x284
	.byte	0x5
	.byte	0x3
	.uaword	TPPC_bEPSASCEnableState
	.uleb128 0x22
	.uaword	0x582
	.uaword	0xadd
	.uleb128 0x23
	.uaword	0x496
	.byte	0x8
	.byte	0
	.uleb128 0x24
	.string	"IfxGtm_dtmAtom_map"
	.byte	0x8
	.uahalf	0x1fb
	.uaword	0xafa
	.byte	0x1
	.byte	0x1
	.uleb128 0x25
	.uaword	0xacd
	.uleb128 0x22
	.uaword	0x4db
	.uaword	0xb0f
	.uleb128 0x23
	.uaword	0x496
	.byte	0x3
	.byte	0
	.uleb128 0x26
	.string	"IfxCpu_cfg_indexMap"
	.byte	0x9
	.byte	0xaa
	.uaword	0xb2c
	.byte	0x1
	.byte	0x1
	.uleb128 0x25
	.uaword	0xaff
	.uleb128 0x27
	.byte	0x1
	.string	"TPPCDev_vidAscEntry"
	.byte	0xd
	.byte	0x3e
	.byte	0x1
	.byte	0x1
	.uaword	0xb55
	.uleb128 0x28
	.uaword	0xb55
	.byte	0
	.uleb128 0x25
	.uaword	0x1d2
	.uleb128 0x15
	.byte	0x1
	.uaword	.LASF0
	.byte	0x1
	.byte	0x38
	.uaword	0x22f
	.byte	0x1
	.uaword	0xb6d
	.uleb128 0x16
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.string	"GtmM_vid_Disable_GTMTIM3SR6_ISR"
	.byte	0xe
	.byte	0x43
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.byte	0x1
	.string	"Icu_17_TimerIp_EnableNotification"
	.byte	0xb
	.uahalf	0x3d4
	.byte	0x1
	.byte	0x1
	.uaword	0xbc6
	.uleb128 0x28
	.uaword	0xbc6
	.byte	0
	.uleb128 0x25
	.uaword	0x700
	.uleb128 0x2b
	.byte	0x1
	.string	"TPPCDev_bGetAscisClose"
	.byte	0xd
	.byte	0x4c
	.byte	0x1
	.uaword	0x284
	.byte	0x1
	.uaword	0xbf6
	.uleb128 0x28
	.uaword	0xb55
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.string	"GtmM_vidClearPendingInterrupts"
	.byte	0xe
	.byte	0x41
	.byte	0x1
	.byte	0x1
	.uaword	0xc25
	.uleb128 0x28
	.uaword	0xc25
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.uaword	0xc2b
	.uleb128 0x6
	.uaword	0x474
	.uleb128 0x29
	.byte	0x1
	.string	"GtmM_vid_Enable_GTMTIM3SR6_ISR"
	.byte	0xe
	.byte	0x45
	.byte	0x1
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
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x8
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x35
	.byte	0
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
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
	.uaword	.LFB370
	.uaword	.LCFI0
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0
	.uaword	.LFE370
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
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
	.uaword	.LFB370
	.uaword	.LFE370-.LFB370
	.uaword	.LFB371
	.uaword	.LFE371-.LFB371
	.uaword	.LFB372
	.uaword	.LFE372-.LFB372
	.uaword	.LFB373
	.uaword	.LFE373-.LFB373
	.uaword	.LFB374
	.uaword	.LFE374-.LFB374
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB7
	.uaword	.LBE7
	.uaword	.LBB12
	.uaword	.LBE12
	.uaword	.LBB13
	.uaword	.LBE13
	.uaword	.LBB16
	.uaword	.LBE16
	.uaword	0
	.uaword	0
	.uaword	.LBB8
	.uaword	.LBE8
	.uaword	.LBB11
	.uaword	.LBE11
	.uaword	0
	.uaword	0
	.uaword	.LBB15
	.uaword	.LBE15
	.uaword	.LBB17
	.uaword	.LBE17
	.uaword	0
	.uaword	0
	.uaword	.LFB370
	.uaword	.LFE370
	.uaword	.LFB371
	.uaword	.LFE371
	.uaword	.LFB372
	.uaword	.LFE372
	.uaword	.LFB373
	.uaword	.LFE373
	.uaword	.LFB374
	.uaword	.LFE374
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"IOHAL_u16Read_CH_DIO_IN_M_FAULT_EPS_HS_N"
	.extern	GtmM_vid_Enable_GTMTIM3SR6_ISR,STT_FUNC,0
	.extern	GtmM_vidClearPendingInterrupts,STT_FUNC,0
	.extern	TPPCDev_bGetAscisClose,STT_FUNC,0
	.extern	Icu_17_TimerIp_EnableNotification,STT_FUNC,0
	.extern	GtmM_vid_Disable_GTMTIM3SR6_ISR,STT_FUNC,0
	.extern	TPPCDev_vidAscEntry,STT_FUNC,0
	.extern	IOHAL_u16Read_CH_DIO_IN_M_FAULT_EPS_HS_N,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
