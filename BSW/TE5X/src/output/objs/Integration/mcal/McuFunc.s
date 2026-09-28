	.file	"McuFunc.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.McuFunc_InitializeClock,"ax",@progbits
	.align 1
	.global	McuFunc_InitializeClock
	.type	McuFunc_InitializeClock, @function
McuFunc_InitializeClock:
.LFB478:
	.file 1 "Integration\\mcal\\McuFunc.c"
	.loc 1 43 0
	.loc 1 46 0
	mov	%d4, 0
	call	Mcu_InitClock
.LVL0:
.L2:
	.loc 1 48 0 discriminator 1
	call	Mcu_GetPllStatus
.LVL1:
	jeq	%d2, 1, .L2
	.loc 1 53 0
	j	Mcu_DistributePllClock
.LVL2:
.LFE478:
	.size	McuFunc_InitializeClock, .-McuFunc_InitializeClock
.section .text.McuFunc_vidCddModuleInitCore0,"ax",@progbits
	.align 1
	.global	McuFunc_vidCddModuleInitCore0
	.type	McuFunc_vidCddModuleInitCore0, @function
McuFunc_vidCddModuleInitCore0:
.LFB479:
	.loc 1 57 0
	.loc 1 58 0
	call	CCU6_Init
.LVL3:
	.loc 1 59 0
	call	GCCU6_Init
.LVL4:
	.loc 1 60 0
	call	SBC_vidInit
.LVL5:
	.loc 1 61 0
	call	MCS_vidVsiGtmMcs0Init
.LVL6:
	.loc 1 62 0
	call	RESBSL_vidInit
.LVL7:
	.loc 1 63 0
	call	HARD_vidInit
.LVL8:
	.loc 1 64 0
	movh.a	%a15, hi:ESM_EcuState
	mov	%d15, 1
	st.b	[%a15] lo:ESM_EcuState, %d15
	movh.a	%a15, hi:ESM_bfOutEventCarrier
	ld.hu	%d4, [%a15] lo:ESM_bfOutEventCarrier
	jnz	%d4, .L23
.L7:
	.loc 1 64 0 is_stmt 0 discriminator 3
	call	ESM_vidEntryESM_ST0
.LVL9:
	.loc 1 65 0 is_stmt 1 discriminator 3
	movh.a	%a15, hi:GESM_EcuState
	mov	%d15, 1
	st.b	[%a15] lo:GESM_EcuState, %d15
	movh.a	%a15, hi:GESM_bfOutEventCarrier
	ld.hu	%d4, [%a15] lo:GESM_bfOutEventCarrier
	jnz	%d4, .L24
.L8:
	call	GESM_vidEntryGESM_ST0
.LVL10:
	.loc 1 66 0 discriminator 3
	movh.a	%a15, hi:AESM_EcuState
	mov	%d15, 1
	st.b	[%a15] lo:AESM_EcuState, %d15
	movh.a	%a15, hi:AESM_bfOutEventCarrier
	ld.hu	%d4, [%a15] lo:AESM_bfOutEventCarrier
	jnz	%d4, .L25
.L9:
	call	AESM_vidEntryAESM_ST0
.LVL11:
	.loc 1 67 0 discriminator 3
	movh.a	%a15, hi:OESM_EcuState
	mov	%d15, 1
	st.b	[%a15] lo:OESM_EcuState, %d15
	movh.a	%a15, hi:OESM_bfOutEventCarrier
	ld.hu	%d4, [%a15] lo:OESM_bfOutEventCarrier
	jz	%d4, .L10
	.loc 1 67 0 is_stmt 0 discriminator 1
	call	OESM_vidExecOutEvent
.LVL12:
.L10:
	.loc 1 67 0 discriminator 3
	call	OESM_vidEntryOESM_ST0
.LVL13:
	.loc 1 68 0 is_stmt 1 discriminator 3
	call	Overlay_Init
.LVL14:
	.loc 1 69 0 discriminator 3
	mov.a	%a4, 0
	call	CCP_vidIni
.LVL15:
	.loc 1 70 0 discriminator 3
	call	SPY_vidInit
.LVL16:
	.loc 1 71 0 discriminator 3
	call	CalUsr_vidInit
.LVL17:
	.loc 1 72 0 discriminator 3
	call	FaultCounterInit
.LVL18:
	.loc 1 73 0 discriminator 3
	call	FAIL_vidInit
.LVL19:
	.loc 1 74 0 discriminator 3
	call	MAIN_TaskInit
.LVL20:
	.loc 1 75 0 discriminator 3
	call	GMAIN_TaskInit
.LVL21:
	.loc 1 76 0 discriminator 3
	call	MAIN_MFC_vidModuleInit
.LVL22:
	.loc 1 77 0 discriminator 3
	call	MAIN_ECP_vidModuleInit
.LVL23:
	.loc 1 78 0 discriminator 3
	call	GtmM_vid_ACM_Icu_Mode_Cfg
.LVL24:
	.loc 1 79 0 discriminator 3
	j	GtmM_vid_EPS_Icu_Mode_Cfg
.LVL25:
.L25:
	.loc 1 66 0 discriminator 1
	call	AESM_vidExecOutEvent
.LVL26:
	j	.L9
.L24:
	.loc 1 65 0 discriminator 1
	call	GESM_vidExecOutEvent
.LVL27:
	j	.L8
.L23:
	.loc 1 64 0 discriminator 1
	call	ESM_vidExecOutEvent
.LVL28:
	j	.L7
.LFE479:
	.size	McuFunc_vidCddModuleInitCore0, .-McuFunc_vidCddModuleInitCore0
.section .text.McuFunc_vidCddModuleInitCore1,"ax",@progbits
	.align 1
	.global	McuFunc_vidCddModuleInitCore1
	.type	McuFunc_vidCddModuleInitCore1, @function
McuFunc_vidCddModuleInitCore1:
.LFB480:
	.loc 1 87 0
	ret
.LFE480:
	.size	McuFunc_vidCddModuleInitCore1, .-McuFunc_vidCddModuleInitCore1
.section .text.McuFunc_vidCddModuleInitCore2,"ax",@progbits
	.align 1
	.global	McuFunc_vidCddModuleInitCore2
	.type	McuFunc_vidCddModuleInitCore2, @function
McuFunc_vidCddModuleInitCore2:
.LFB481:
	.loc 1 96 0
	.loc 1 97 0
	j	VADC_vidMainFunction
.LVL29:
.LFE481:
	.size	McuFunc_vidCddModuleInitCore2, .-McuFunc_vidCddModuleInitCore2
.section .text.McuFunc_vidCddModuleInitCore3,"ax",@progbits
	.align 1
	.global	McuFunc_vidCddModuleInitCore3
	.type	McuFunc_vidCddModuleInitCore3, @function
McuFunc_vidCddModuleInitCore3:
.LFB482:
	.loc 1 105 0
	.loc 1 106 0
	call	CDD_TPPC_vidInit
.LVL30:
	.loc 1 107 0
	j	VADC_vidMainFunction
.LVL31:
.LFE482:
	.size	McuFunc_vidCddModuleInitCore3, .-McuFunc_vidCddModuleInitCore3
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
	.uaword	.LFB478
	.uaword	.LFE478-.LFB478
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB479
	.uaword	.LFE479-.LFB479
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB480
	.uaword	.LFE480-.LFB480
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB481
	.uaword	.LFE481-.LFB481
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB482
	.uaword	.LFE482-.LFB482
	.align 2
.LEFDE8:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 4 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu.h"
	.file 5 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\Cpu\\Std\\Ifx_Types.h"
	.file 6 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_Typ.h"
	.file 7 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\_Impl\\IfxGtm_cfg.h"
	.file 8 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\_Impl\\IfxCpu_cfg.h"
	.file 9 ".\\output\\inc/..\\..\\bswcdd\\ESM\\ESM\\ESM.h"
	.file 10 ".\\output\\inc/..\\..\\bswcdd\\ESM\\ESM\\ESM_DAT.h"
	.file 11 ".\\output\\inc/..\\..\\bswcdd\\ESM\\GESM\\GESM.h"
	.file 12 ".\\output\\inc/..\\..\\bswcdd\\ESM\\GESM\\GESM_DAT.h"
	.file 13 ".\\output\\inc/..\\..\\bswcdd\\ESM\\AESM\\AESM.h"
	.file 14 ".\\output\\inc/..\\..\\bswcdd\\ESM\\AESM\\AESM_DAT.h"
	.file 15 ".\\output\\inc/..\\..\\bswcdd\\ESM\\OESM\\OESM.h"
	.file 16 ".\\output\\inc/..\\..\\bswcdd\\ESM\\OESM\\OESM_DAT.h"
	.file 17 ".\\output\\inc/..\\..\\bswcdd\\CCU6\\CCU6.h"
	.file 18 ".\\output\\inc/..\\..\\bswcdd\\SBC\\SBC.h"
	.file 19 ".\\output\\inc/..\\..\\bswcdd\\MCS\\MCS.h"
	.file 20 ".\\output\\inc/..\\..\\bswcdd\\RES\\RESBSL.h"
	.file 21 ".\\output\\inc/..\\..\\bswcdd\\HARD\\HARD.h"
	.file 22 "Integration\\mcal\\OverlayManager.h"
	.file 23 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP.h"
	.file 24 ".\\output\\inc/..\\..\\bswcdd\\CCP\\SPY\\SPY.h"
	.file 25 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CAL\\CALUSR.h"
	.file 26 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\DSM.h"
	.file 27 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fail\\FAIL.h"
	.file 28 ".\\output\\inc/..\\..\\main\\McuMain\\MAIN_tsk.h"
	.file 29 ".\\output\\inc/..\\..\\main\\GcuMain\\GMAIN_tsk.h"
	.file 30 ".\\output\\inc/..\\..\\main\\_MainModule\\MuxFuncCfg\\MAIN_MuxFuncCfg.h"
	.file 31 ".\\output\\inc/..\\..\\bswcdd\\GtmM\\GtmM.h"
	.file 32 ".\\output\\inc/..\\..\\bswcdd\\VADC\\VADC.h"
	.file 33 ".\\output\\inc/..\\..\\ASW\\CDD_TPPC\\CDD_TPPC.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xb21
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"Integration\\mcal\\McuFunc.c"
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
	.uaword	0x1c5
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
	.uaword	0x1f1
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"sint32"
	.byte	0x2
	.byte	0x60
	.uaword	0x215
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
	.uaword	0x23b
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
	.uaword	0x1b8
	.uleb128 0x3
	.string	"Mcu_ClockType"
	.byte	0x4
	.byte	0xd7
	.uaword	0x22d
	.uleb128 0x4
	.byte	0x1
	.byte	0x4
	.byte	0xfa
	.uaword	0x30c
	.uleb128 0x5
	.string	"MCU_PLL_LOCKED"
	.sleb128 0
	.uleb128 0x5
	.string	"MCU_PLL_UNLOCKED"
	.sleb128 1
	.uleb128 0x5
	.string	"MCU_PLL_STATUS_UNDEFINED"
	.sleb128 2
	.byte	0
	.uleb128 0x3
	.string	"Mcu_PllStatusType"
	.byte	0x4
	.byte	0xfe
	.uaword	0x2c4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x6
	.byte	0x4
	.uaword	0x33f
	.uleb128 0x7
	.uleb128 0x8
	.byte	0x8
	.byte	0x5
	.byte	0x8c
	.uaword	0x36a
	.uleb128 0x9
	.string	"module"
	.byte	0x5
	.byte	0x8e
	.uaword	0x339
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"index"
	.byte	0x5
	.byte	0x8f
	.uaword	0x207
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"IfxModule_IndexMap"
	.byte	0x5
	.byte	0x90
	.uaword	0x340
	.uleb128 0x8
	.byte	0x2
	.byte	0x6
	.byte	0x7c
	.uaword	0x3a0
	.uleb128 0x9
	.string	"u16Dummy"
	.byte	0x6
	.byte	0x7f
	.uaword	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"CCP_tstrIniPrms"
	.byte	0x6
	.byte	0x81
	.uaword	0x384
	.uleb128 0xa
	.byte	0x1
	.byte	0x7
	.uahalf	0x114
	.uaword	0x444
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
	.uleb128 0xb
	.string	"IfxGtm_Cdtm"
	.byte	0x7
	.uahalf	0x11d
	.uaword	0x3b7
	.uleb128 0xc
	.byte	0x1
	.string	"McuFunc_InitializeClock"
	.byte	0x1
	.byte	0x2a
	.byte	0x1
	.uaword	.LFB478
	.uaword	.LFE478
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x4ac
	.uleb128 0xd
	.uaword	.LVL0
	.uaword	0x7ed
	.uaword	0x498
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0xf
	.uaword	.LVL1
	.uaword	0x815
	.uleb128 0x10
	.uaword	.LVL2
	.byte	0x1
	.uaword	0x831
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.string	"McuFunc_vidCddModuleInitCore0"
	.byte	0x1
	.byte	0x38
	.byte	0x1
	.uaword	.LFB479
	.uaword	.LFE479
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x5fb
	.uleb128 0x11
	.byte	0x1
	.uaword	.LASF0
	.byte	0x1
	.byte	0x3b
	.uaword	0x215
	.byte	0x1
	.uaword	0x4f2
	.uleb128 0x12
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.uaword	.LASF1
	.byte	0x1
	.byte	0x4d
	.uaword	0x215
	.byte	0x1
	.uaword	0x505
	.uleb128 0x12
	.byte	0
	.uleb128 0xf
	.uaword	.LVL3
	.uaword	0x853
	.uleb128 0xf
	.uaword	.LVL4
	.uaword	0x863
	.uleb128 0xf
	.uaword	.LVL5
	.uaword	0x876
	.uleb128 0xf
	.uaword	.LVL6
	.uaword	0x888
	.uleb128 0xf
	.uaword	.LVL7
	.uaword	0x8a4
	.uleb128 0xf
	.uaword	.LVL8
	.uaword	0x8ba
	.uleb128 0xf
	.uaword	.LVL9
	.uaword	0x8ce
	.uleb128 0xf
	.uaword	.LVL10
	.uaword	0x8e8
	.uleb128 0xf
	.uaword	.LVL11
	.uaword	0x904
	.uleb128 0xf
	.uaword	.LVL12
	.uaword	0x920
	.uleb128 0xf
	.uaword	.LVL13
	.uaword	0x945
	.uleb128 0xf
	.uaword	.LVL14
	.uaword	0x961
	.uleb128 0xd
	.uaword	.LVL15
	.uaword	0x974
	.uaword	0x584
	.uleb128 0xe
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0xf
	.uaword	.LVL16
	.uaword	0x99a
	.uleb128 0xf
	.uaword	.LVL17
	.uaword	0x9ac
	.uleb128 0xf
	.uaword	.LVL18
	.uaword	0x9c1
	.uleb128 0xf
	.uaword	.LVL19
	.uaword	0x9d8
	.uleb128 0xf
	.uaword	.LVL20
	.uaword	0x9eb
	.uleb128 0xf
	.uaword	.LVL21
	.uaword	0x9ff
	.uleb128 0xf
	.uaword	.LVL22
	.uaword	0xa14
	.uleb128 0xf
	.uaword	.LVL23
	.uaword	0xa31
	.uleb128 0xf
	.uaword	.LVL24
	.uaword	0xa44
	.uleb128 0x10
	.uaword	.LVL25
	.byte	0x1
	.uaword	0xa64
	.uleb128 0xf
	.uaword	.LVL26
	.uaword	0xa84
	.uleb128 0xf
	.uaword	.LVL27
	.uaword	0xaa9
	.uleb128 0xf
	.uaword	.LVL28
	.uaword	0xace
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"McuFunc_vidCddModuleInitCore1"
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.uaword	.LFB480
	.uaword	.LFE480
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xc
	.byte	0x1
	.string	"McuFunc_vidCddModuleInitCore2"
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.uaword	.LFB481
	.uaword	.LFE481
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x668
	.uleb128 0x10
	.uaword	.LVL29
	.byte	0x1
	.uaword	0xaf2
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.string	"McuFunc_vidCddModuleInitCore3"
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.uaword	.LFB482
	.uaword	.LFE482
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x6af
	.uleb128 0xf
	.uaword	.LVL30
	.uaword	0xb0d
	.uleb128 0x10
	.uaword	.LVL31
	.byte	0x1
	.uaword	0xaf2
	.byte	0
	.uleb128 0x14
	.uaword	0x36a
	.uaword	0x6bf
	.uleb128 0x15
	.uaword	0x325
	.byte	0x3
	.byte	0
	.uleb128 0x16
	.string	"IfxCpu_cfg_indexMap"
	.byte	0x8
	.byte	0xaa
	.uaword	0x6dc
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.uaword	0x6af
	.uleb128 0x16
	.string	"ESM_EcuState"
	.byte	0x9
	.byte	0x3b
	.uaword	0x1b8
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.string	"ESM_bfOutEventCarrier"
	.byte	0xa
	.byte	0xf3
	.uaword	0x1e3
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.string	"GESM_EcuState"
	.byte	0xb
	.byte	0x3b
	.uaword	0x1b8
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.string	"GESM_bfOutEventCarrier"
	.byte	0xc
	.byte	0xf3
	.uaword	0x1e3
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.string	"AESM_EcuState"
	.byte	0xd
	.byte	0x3b
	.uaword	0x1b8
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.string	"AESM_bfOutEventCarrier"
	.byte	0xe
	.byte	0xf3
	.uaword	0x1e3
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.string	"OESM_EcuState"
	.byte	0xf
	.byte	0x3b
	.uaword	0x1b8
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.string	"OESM_bfOutEventCarrier"
	.byte	0x10
	.byte	0xf3
	.uaword	0x1e3
	.byte	0x1
	.byte	0x1
	.uleb128 0x14
	.uaword	0x444
	.uaword	0x7cb
	.uleb128 0x15
	.uaword	0x325
	.byte	0x8
	.byte	0
	.uleb128 0x18
	.string	"IfxGtm_dtmAtom_map"
	.byte	0x7
	.uahalf	0x1fb
	.uaword	0x7e8
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.uaword	0x7bb
	.uleb128 0x19
	.byte	0x1
	.string	"Mcu_InitClock"
	.byte	0x4
	.uahalf	0x321
	.byte	0x1
	.uaword	0x299
	.byte	0x1
	.uaword	0x810
	.uleb128 0x1a
	.uaword	0x810
	.byte	0
	.uleb128 0x17
	.uaword	0x2af
	.uleb128 0x1b
	.byte	0x1
	.string	"Mcu_GetPllStatus"
	.byte	0x4
	.uahalf	0x359
	.byte	0x1
	.uaword	0x30c
	.byte	0x1
	.uleb128 0x1b
	.byte	0x1
	.string	"Mcu_DistributePllClock"
	.byte	0x4
	.uahalf	0x33e
	.byte	0x1
	.uaword	0x299
	.byte	0x1
	.uleb128 0x1c
	.byte	0x1
	.string	"CCU6_Init"
	.byte	0x11
	.byte	0x61
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.byte	0x1
	.uaword	.LASF0
	.byte	0x1
	.byte	0x3b
	.uaword	0x215
	.byte	0x1
	.uaword	0x876
	.uleb128 0x12
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.string	"SBC_vidInit"
	.byte	0x12
	.byte	0x67
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.byte	0x1
	.string	"MCS_vidVsiGtmMcs0Init"
	.byte	0x13
	.byte	0x9f
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.byte	0x1
	.string	"RESBSL_vidInit"
	.byte	0x14
	.uahalf	0x128
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.byte	0x1
	.string	"HARD_vidInit"
	.byte	0x15
	.uahalf	0x17c
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.byte	0x1
	.string	"ESM_vidEntryESM_ST0"
	.byte	0xa
	.byte	0xc9
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.byte	0x1
	.string	"GESM_vidEntryGESM_ST0"
	.byte	0xc
	.byte	0xc9
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.byte	0x1
	.string	"AESM_vidEntryAESM_ST0"
	.byte	0xe
	.byte	0xc9
	.byte	0x1
	.byte	0x1
	.uleb128 0x1e
	.byte	0x1
	.string	"OESM_vidExecOutEvent"
	.byte	0x10
	.byte	0xc5
	.byte	0x1
	.byte	0x1
	.uaword	0x945
	.uleb128 0x1a
	.uaword	0x1e3
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.string	"OESM_vidEntryOESM_ST0"
	.byte	0x10
	.byte	0xc9
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.byte	0x1
	.string	"Overlay_Init"
	.byte	0x16
	.byte	0x67
	.byte	0x1
	.byte	0x1
	.uleb128 0x1e
	.byte	0x1
	.string	"CCP_vidIni"
	.byte	0x17
	.byte	0x5d
	.byte	0x1
	.byte	0x1
	.uaword	0x98f
	.uleb128 0x1a
	.uaword	0x98f
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x995
	.uleb128 0x17
	.uaword	0x3a0
	.uleb128 0x1c
	.byte	0x1
	.string	"SPY_vidInit"
	.byte	0x18
	.byte	0x42
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.byte	0x1
	.string	"CalUsr_vidInit"
	.byte	0x19
	.byte	0x4e
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.byte	0x1
	.string	"FaultCounterInit"
	.byte	0x1a
	.byte	0x61
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.byte	0x1
	.string	"FAIL_vidInit"
	.byte	0x1b
	.byte	0x54
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.byte	0x1
	.string	"MAIN_TaskInit"
	.byte	0x1c
	.byte	0x81
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.byte	0x1
	.string	"GMAIN_TaskInit"
	.byte	0x1d
	.byte	0x58
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.byte	0x1
	.string	"MAIN_MFC_vidModuleInit"
	.byte	0x1e
	.byte	0x29
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.byte	0x1
	.uaword	.LASF1
	.byte	0x1
	.byte	0x4d
	.uaword	0x215
	.byte	0x1
	.uaword	0xa44
	.uleb128 0x12
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.string	"GtmM_vid_ACM_Icu_Mode_Cfg"
	.byte	0x1f
	.byte	0x46
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.byte	0x1
	.string	"GtmM_vid_EPS_Icu_Mode_Cfg"
	.byte	0x1f
	.byte	0x47
	.byte	0x1
	.byte	0x1
	.uleb128 0x1e
	.byte	0x1
	.string	"AESM_vidExecOutEvent"
	.byte	0xe
	.byte	0xc5
	.byte	0x1
	.byte	0x1
	.uaword	0xaa9
	.uleb128 0x1a
	.uaword	0x1e3
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.string	"GESM_vidExecOutEvent"
	.byte	0xc
	.byte	0xc5
	.byte	0x1
	.byte	0x1
	.uaword	0xace
	.uleb128 0x1a
	.uaword	0x1e3
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.string	"ESM_vidExecOutEvent"
	.byte	0xa
	.byte	0xc5
	.byte	0x1
	.byte	0x1
	.uaword	0xaf2
	.uleb128 0x1a
	.uaword	0x1e3
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.string	"VADC_vidMainFunction"
	.byte	0x20
	.byte	0x12
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.byte	0x1
	.string	"CDD_TPPC_vidInit"
	.byte	0x21
	.byte	0x3b
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x35
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0x5
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
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
.section .debug_aranges,"",@progbits
	.uaword	0x3c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB478
	.uaword	.LFE478-.LFB478
	.uaword	.LFB479
	.uaword	.LFE479-.LFB479
	.uaword	.LFB480
	.uaword	.LFE480-.LFB480
	.uaword	.LFB481
	.uaword	.LFE481-.LFB481
	.uaword	.LFB482
	.uaword	.LFE482-.LFB482
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB478
	.uaword	.LFE478
	.uaword	.LFB479
	.uaword	.LFE479
	.uaword	.LFB480
	.uaword	.LFE480
	.uaword	.LFB481
	.uaword	.LFE481
	.uaword	.LFB482
	.uaword	.LFE482
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF1:
	.string	"MAIN_ECP_vidModuleInit"
.LASF0:
	.string	"GCCU6_Init"
	.extern	CDD_TPPC_vidInit,STT_FUNC,0
	.extern	VADC_vidMainFunction,STT_FUNC,0
	.extern	ESM_vidExecOutEvent,STT_FUNC,0
	.extern	GESM_vidExecOutEvent,STT_FUNC,0
	.extern	AESM_vidExecOutEvent,STT_FUNC,0
	.extern	GtmM_vid_EPS_Icu_Mode_Cfg,STT_FUNC,0
	.extern	GtmM_vid_ACM_Icu_Mode_Cfg,STT_FUNC,0
	.extern	MAIN_ECP_vidModuleInit,STT_FUNC,0
	.extern	MAIN_MFC_vidModuleInit,STT_FUNC,0
	.extern	GMAIN_TaskInit,STT_FUNC,0
	.extern	MAIN_TaskInit,STT_FUNC,0
	.extern	FAIL_vidInit,STT_FUNC,0
	.extern	FaultCounterInit,STT_FUNC,0
	.extern	CalUsr_vidInit,STT_FUNC,0
	.extern	SPY_vidInit,STT_FUNC,0
	.extern	CCP_vidIni,STT_FUNC,0
	.extern	Overlay_Init,STT_FUNC,0
	.extern	OESM_vidEntryOESM_ST0,STT_FUNC,0
	.extern	OESM_vidExecOutEvent,STT_FUNC,0
	.extern	OESM_bfOutEventCarrier,STT_OBJECT,2
	.extern	OESM_EcuState,STT_OBJECT,1
	.extern	AESM_vidEntryAESM_ST0,STT_FUNC,0
	.extern	AESM_bfOutEventCarrier,STT_OBJECT,2
	.extern	AESM_EcuState,STT_OBJECT,1
	.extern	GESM_vidEntryGESM_ST0,STT_FUNC,0
	.extern	GESM_bfOutEventCarrier,STT_OBJECT,2
	.extern	GESM_EcuState,STT_OBJECT,1
	.extern	ESM_vidEntryESM_ST0,STT_FUNC,0
	.extern	ESM_bfOutEventCarrier,STT_OBJECT,2
	.extern	ESM_EcuState,STT_OBJECT,1
	.extern	HARD_vidInit,STT_FUNC,0
	.extern	RESBSL_vidInit,STT_FUNC,0
	.extern	MCS_vidVsiGtmMcs0Init,STT_FUNC,0
	.extern	SBC_vidInit,STT_FUNC,0
	.extern	GCCU6_Init,STT_FUNC,0
	.extern	CCU6_Init,STT_FUNC,0
	.extern	Mcu_DistributePllClock,STT_FUNC,0
	.extern	Mcu_GetPllStatus,STT_FUNC,0
	.extern	Mcu_InitClock,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
