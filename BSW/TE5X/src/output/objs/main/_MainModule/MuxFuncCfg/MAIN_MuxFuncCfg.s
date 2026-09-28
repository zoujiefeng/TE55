	.file	"MAIN_MuxFuncCfg.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.MAIN_MFC_vidModuleInit,"ax",@progbits
	.align 1
	.global	MAIN_MFC_vidModuleInit
	.type	MAIN_MFC_vidModuleInit, @function
MAIN_MFC_vidModuleInit:
.LFB0:
	.file 1 "main\\_MainModule\\MuxFuncCfg\\MAIN_MuxFuncCfg.c"
	.loc 1 92 0
.LBB4:
.LBB5:
	.loc 1 120 0
	movh.a	%a15, hi:MAIN_MFC_u8TempSensorCfgC_ACM
	ld.bu	%d2, [%a15] lo:MAIN_MFC_u8TempSensorCfgC_ACM
	movh.a	%a15, hi:MAIN_MFC_au8CfgMap
	ld.bu	%d15, [%a15] lo:MAIN_MFC_au8CfgMap
	.loc 1 122 0
	movh.a	%a2, hi:MAIN_MFC_u8TempSensorCfgC_EPS
	.loc 1 120 0
	ins.t	%d15, %d15,6, %d2,0
	.loc 1 121 0
	ins.t	%d15, %d15,7, %d2,1
	.loc 1 122 0
	ld.bu	%d2, [%a2] lo:MAIN_MFC_u8TempSensorCfgC_EPS
	.loc 1 124 0
	movh.a	%a2, hi:MAIN_MFC_u8TempSensorCfgC_MCU1
	.loc 1 122 0
	ins.t	%d15, %d15,4, %d2,0
	.loc 1 123 0
	ins.t	%d15, %d15,5, %d2,1
	.loc 1 124 0
	ld.bu	%d2, [%a2] lo:MAIN_MFC_u8TempSensorCfgC_MCU1
	.loc 1 126 0
	movh.a	%a2, hi:MAIN_MFC_u8TempSensorCfgC_MCU2
	.loc 1 124 0
	ins.t	%d15, %d15,0, %d2,0
	.loc 1 125 0
	ins.t	%d15, %d15,1, %d2,1
	.loc 1 126 0
	ld.bu	%d2, [%a2] lo:MAIN_MFC_u8TempSensorCfgC_MCU2
	.loc 1 120 0
	lea	%a4, [%a15] lo:MAIN_MFC_au8CfgMap
	.loc 1 126 0
	ins.t	%d15, %d15,2, %d2,0
	.loc 1 127 0
	ins.t	%d15, %d15,3, %d2,1
	st.b	[%a15] lo:MAIN_MFC_au8CfgMap, %d15
	.loc 1 129 0
	movh.a	%a15, hi:MAIN_MFC_bCanAEnaC
	ld.bu	%d15, [%a15] lo:MAIN_MFC_bCanAEnaC
	.loc 1 130 0
	movh.a	%a15, hi:MAIN_MFC_bCanBEnaC
	.loc 1 129 0
	eq	%d2, %d15, 0
	ld.bu	%d15, [%a4] 1
.LBE5:
.LBE4:
	.loc 1 94 0
	mov	%e4, 2
.LBB7:
.LBB6:
	.loc 1 129 0
	ins.t	%d15, %d15,5, %d2,0
	.loc 1 130 0
	ld.bu	%d2, [%a15] lo:MAIN_MFC_bCanBEnaC
	.loc 1 131 0
	movh.a	%a15, hi:MAIN_MFC_bCanCEnaC
	.loc 1 130 0
	eq	%d2, %d2, 0
	ins.t	%d15, %d15,0, %d2,0
	.loc 1 131 0
	ld.bu	%d2, [%a15] lo:MAIN_MFC_bCanCEnaC
	.loc 1 132 0
	movh.a	%a15, hi:MAIN_MFC_bCanDEnaC
	.loc 1 131 0
	eq	%d2, %d2, 0
	ins.t	%d15, %d15,1, %d2,0
	.loc 1 132 0
	ld.bu	%d2, [%a15] lo:MAIN_MFC_bCanDEnaC
	.loc 1 133 0
	movh.a	%a15, hi:MAIN_MFC_bCanEEnaC
	.loc 1 132 0
	eq	%d2, %d2, 0
	ins.t	%d15, %d15,2, %d2,0
	.loc 1 133 0
	ld.bu	%d2, [%a15] lo:MAIN_MFC_bCanEEnaC
	.loc 1 134 0
	movh.a	%a15, hi:MAIN_MFC_bCanFEnaC
	.loc 1 133 0
	eq	%d2, %d2, 0
	ins.t	%d15, %d15,4, %d2,0
	.loc 1 134 0
	ld.bu	%d2, [%a15] lo:MAIN_MFC_bCanFEnaC
	.loc 1 135 0
	movh.a	%a15, hi:MAIN_MFC_bDcAcEnaC
	.loc 1 134 0
	eq	%d2, %d2, 0
	ins.t	%d15, %d15,3, %d2,0
	.loc 1 135 0
	ld.bu	%d2, [%a15] lo:MAIN_MFC_bDcAcEnaC
	eq	%d2, %d2, 0
	ins.t	%d15, %d15,6, %d2,0
	st.b	[%a4] 1, %d15
.LBE6:
.LBE7:
	.loc 1 94 0
	j	PMux_vidShiftOutMultiBytes
.LVL0:
.LFE0:
	.size	MAIN_MFC_vidModuleInit, .-MAIN_MFC_vidModuleInit
.section .text.MAIN_MFC_vidModuleReinit,"ax",@progbits
	.align 1
	.global	MAIN_MFC_vidModuleReinit
	.type	MAIN_MFC_vidModuleReinit, @function
MAIN_MFC_vidModuleReinit:
.LFB1:
	.loc 1 98 0
	.loc 1 101 0
	movh.a	%a15, hi:MAIN_MFC_bTestEnaC
	ld.bu	%d15, [%a15] lo:MAIN_MFC_bTestEnaC
	jeq	%d15, 1, .L6
	.loc 1 111 0
	mov	%d15, 0
	movh.a	%a15, hi:bReinitDone.1225
	st.b	[%a15] lo:bReinitDone.1225, %d15
.L2:
	ret
.L6:
	.loc 1 103 0
	movh.a	%a15, hi:bReinitDone.1225
	ld.bu	%d2, [%a15] lo:bReinitDone.1225
	jnz	%d2, .L2
	.loc 1 105 0
	st.b	[%a15] lo:bReinitDone.1225, %d15
	.loc 1 106 0
	j	MAIN_MFC_vidModuleInit
.LVL1:
.LFE1:
	.size	MAIN_MFC_vidModuleReinit, .-MAIN_MFC_vidModuleReinit
.section .bss.a1.bReinitDone.1225,"aw",@nobits
	.type	bReinitDone.1225, @object
	.size	bReinitDone.1225, 1
bReinitDone.1225:
	.zero	1
.section .bss.a1.MAIN_MFC_au8CfgMap,"aw",@nobits
	.type	MAIN_MFC_au8CfgMap, @object
	.size	MAIN_MFC_au8CfgMap, 2
MAIN_MFC_au8CfgMap:
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
	.uaword	.LFB0
	.uaword	.LFE0-.LFB0
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB1
	.uaword	.LFE1-.LFB1
	.align 2
.LEFDE2:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bswcdd\\PortMux\\PortMux.h"
	.file 4 "main\\_MainModule\\MuxFuncCfg\\MAIN_MFC_Calib.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x9c2
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"main\\_MainModule\\MuxFuncCfg\\MAIN_MuxFuncCfg.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x18
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
	.uaword	0x1d8
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
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
	.uaword	0x1d8
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
	.byte	0x3
	.byte	0x6
	.uaword	0x3e3
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
	.uleb128 0x4
	.byte	0x1
	.byte	0x3
	.byte	0xcd
	.uaword	0x441
	.uleb128 0x5
	.string	"ePMUX_SHIFT_REG_1"
	.sleb128 0
	.uleb128 0x5
	.string	"ePMUX_SHIFT_REG_2"
	.sleb128 1
	.uleb128 0x5
	.string	"ePMUX_SHIFT_REG_3"
	.sleb128 2
	.uleb128 0x5
	.string	"ePMUX_SHIFT_REG_MAX_NO"
	.sleb128 3
	.byte	0
	.uleb128 0x6
	.uaword	.LASF0
	.byte	0x1
	.byte	0x1
	.byte	0x14
	.uaword	0x54a
	.uleb128 0x7
	.string	"bMotMcu_1_PT100Ena"
	.byte	0x1
	.byte	0x15
	.uaword	0x1cb
	.byte	0x1
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"bMotMcu_1_PT1000Ena"
	.byte	0x1
	.byte	0x16
	.uaword	0x1cb
	.byte	0x1
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"bMotMcu_2_PT100Ena"
	.byte	0x1
	.byte	0x17
	.uaword	0x1cb
	.byte	0x1
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"bMotMcu_2_PT1000Ena"
	.byte	0x1
	.byte	0x18
	.uaword	0x1cb
	.byte	0x1
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"bMotEPS_PT100Ena"
	.byte	0x1
	.byte	0x19
	.uaword	0x1cb
	.byte	0x1
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"bMotEPS_PT1000Ena"
	.byte	0x1
	.byte	0x1a
	.uaword	0x1cb
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"bMotACM_PT100Ena"
	.byte	0x1
	.byte	0x1b
	.uaword	0x1cb
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"bMotACM_PT1000Ena"
	.byte	0x1
	.byte	0x1c
	.uaword	0x1cb
	.byte	0x1
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x1
	.byte	0x1d
	.uaword	0x441
	.uleb128 0x6
	.uaword	.LASF1
	.byte	0x1
	.byte	0x1
	.byte	0x1f
	.uaword	0x613
	.uleb128 0x7
	.string	"bCanBEna"
	.byte	0x1
	.byte	0x20
	.uaword	0x1cb
	.byte	0x1
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"bCanCEna"
	.byte	0x1
	.byte	0x21
	.uaword	0x1cb
	.byte	0x1
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"bCanDEna"
	.byte	0x1
	.byte	0x22
	.uaword	0x1cb
	.byte	0x1
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"bCanFEna"
	.byte	0x1
	.byte	0x23
	.uaword	0x1cb
	.byte	0x1
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"bCanEEna"
	.byte	0x1
	.byte	0x24
	.uaword	0x1cb
	.byte	0x1
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"bCanAEna"
	.byte	0x1
	.byte	0x25
	.uaword	0x1cb
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"bDcAcEna"
	.byte	0x1
	.byte	0x26
	.uaword	0x1cb
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"bReserved"
	.byte	0x1
	.byte	0x27
	.uaword	0x1cb
	.byte	0x1
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x1
	.byte	0x28
	.uaword	0x555
	.uleb128 0x9
	.uaword	.LASF2
	.byte	0x1
	.byte	0x1
	.byte	0x2a
	.uaword	0x658
	.uleb128 0xa
	.string	"U"
	.byte	0x1
	.byte	0x2c
	.uaword	0x1cb
	.uleb128 0xa
	.string	"u8CfgByte0"
	.byte	0x1
	.byte	0x2d
	.uaword	0x54a
	.uleb128 0xa
	.string	"u8CfgByte1"
	.byte	0x1
	.byte	0x2e
	.uaword	0x613
	.byte	0
	.uleb128 0x8
	.uaword	.LASF2
	.byte	0x1
	.byte	0x2f
	.uaword	0x61e
	.uleb128 0x4
	.byte	0x1
	.byte	0x1
	.byte	0x31
	.uaword	0x6b1
	.uleb128 0x5
	.string	"eMAIN_MFC_CFG_BYTE_0"
	.sleb128 0
	.uleb128 0x5
	.string	"eMAIN_MFC_CFG_BYTE_1"
	.sleb128 1
	.uleb128 0x5
	.string	"eMAIN_MFC_MAX_CFG_NO"
	.sleb128 2
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.byte	0x1
	.byte	0x38
	.uaword	0x6f7
	.uleb128 0x5
	.string	"eMAIN_MFC_CFG_PT100_ENA_BIT"
	.sleb128 0
	.uleb128 0x5
	.string	"eMAIN_MFC_CFG_PT1000_ENA_BIT"
	.sleb128 1
	.byte	0
	.uleb128 0xb
	.string	"MAIN_MFC_vidFunctionCfgReload"
	.byte	0x1
	.byte	0x76
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.byte	0x1
	.string	"MAIN_MFC_vidModuleInit"
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.uaword	.LFB0
	.uaword	.LFE0
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x774
	.uleb128 0xd
	.uaword	0x6f7
	.uaword	.LBB4
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x5d
	.uleb128 0xe
	.uaword	.LVL0
	.byte	0x1
	.uaword	0x98a
	.uleb128 0xf
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.uleb128 0xf
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_MFC_au8CfgMap
	.byte	0
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.string	"MAIN_MFC_vidModuleReinit"
	.byte	0x1
	.byte	0x61
	.byte	0x1
	.uaword	.LFB1
	.uaword	.LFE1
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x7c6
	.uleb128 0x10
	.string	"bReinitDone"
	.byte	0x1
	.byte	0x63
	.uaword	0x261
	.byte	0x5
	.byte	0x3
	.uaword	bReinitDone.1225
	.uleb128 0x11
	.uaword	.LVL1
	.byte	0x1
	.uaword	0x71a
	.byte	0
	.uleb128 0x12
	.uaword	0x658
	.uaword	0x7d6
	.uleb128 0x13
	.uaword	0x7d6
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x10
	.string	"MAIN_MFC_au8CfgMap"
	.byte	0x1
	.byte	0x51
	.uaword	0x7c6
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_MFC_au8CfgMap
	.uleb128 0x14
	.string	"MAIN_MFC_bCanBEnaC"
	.byte	0x4
	.byte	0x26
	.uaword	0x81e
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.uaword	0x261
	.uleb128 0x14
	.string	"MAIN_MFC_bCanCEnaC"
	.byte	0x4
	.byte	0x27
	.uaword	0x81e
	.byte	0x1
	.byte	0x1
	.uleb128 0x14
	.string	"MAIN_MFC_bCanDEnaC"
	.byte	0x4
	.byte	0x28
	.uaword	0x81e
	.byte	0x1
	.byte	0x1
	.uleb128 0x14
	.string	"MAIN_MFC_bCanFEnaC"
	.byte	0x4
	.byte	0x29
	.uaword	0x81e
	.byte	0x1
	.byte	0x1
	.uleb128 0x14
	.string	"MAIN_MFC_bCanEEnaC"
	.byte	0x4
	.byte	0x2a
	.uaword	0x81e
	.byte	0x1
	.byte	0x1
	.uleb128 0x14
	.string	"MAIN_MFC_bCanAEnaC"
	.byte	0x4
	.byte	0x2b
	.uaword	0x81e
	.byte	0x1
	.byte	0x1
	.uleb128 0x14
	.string	"MAIN_MFC_bDcAcEnaC"
	.byte	0x4
	.byte	0x2c
	.uaword	0x81e
	.byte	0x1
	.byte	0x1
	.uleb128 0x14
	.string	"MAIN_MFC_bTestEnaC"
	.byte	0x4
	.byte	0x2d
	.uaword	0x81e
	.byte	0x1
	.byte	0x1
	.uleb128 0x14
	.string	"MAIN_MFC_u8TempSensorCfgC_MCU1"
	.byte	0x4
	.byte	0x33
	.uaword	0x90f
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.uaword	0x1cb
	.uleb128 0x14
	.string	"MAIN_MFC_u8TempSensorCfgC_MCU2"
	.byte	0x4
	.byte	0x34
	.uaword	0x90f
	.byte	0x1
	.byte	0x1
	.uleb128 0x14
	.string	"MAIN_MFC_u8TempSensorCfgC_ACM"
	.byte	0x4
	.byte	0x35
	.uaword	0x90f
	.byte	0x1
	.byte	0x1
	.uleb128 0x14
	.string	"MAIN_MFC_u8TempSensorCfgC_EPS"
	.byte	0x4
	.byte	0x36
	.uaword	0x90f
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.byte	0x1
	.string	"PMux_vidShiftOutMultiBytes"
	.byte	0x3
	.byte	0xd8
	.byte	0x1
	.byte	0x1
	.uaword	0x9bf
	.uleb128 0x17
	.uaword	0x9bf
	.uleb128 0x17
	.uaword	0x90f
	.uleb128 0x17
	.uaword	0x90f
	.byte	0
	.uleb128 0x18
	.byte	0x4
	.uaword	0x90f
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
.section .debug_aranges,"",@progbits
	.uaword	0x24
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB0
	.uaword	.LFE0-.LFB0
	.uaword	.LFB1
	.uaword	.LFE1-.LFB1
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB4
	.uaword	.LBE4
	.uaword	.LBB7
	.uaword	.LBE7
	.uaword	0
	.uaword	0
	.uaword	.LFB0
	.uaword	.LFE0
	.uaword	.LFB1
	.uaword	.LFE1
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF1:
	.string	"MAIN_MFC_CfgByte1"
.LASF2:
	.string	"MAIN_MFC_CfgMap"
.LASF0:
	.string	"MAIN_MFC_CfgByte0"
	.extern	MAIN_MFC_bTestEnaC,STT_OBJECT,1
	.extern	PMux_vidShiftOutMultiBytes,STT_FUNC,0
	.extern	MAIN_MFC_bDcAcEnaC,STT_OBJECT,1
	.extern	MAIN_MFC_bCanFEnaC,STT_OBJECT,1
	.extern	MAIN_MFC_bCanEEnaC,STT_OBJECT,1
	.extern	MAIN_MFC_bCanDEnaC,STT_OBJECT,1
	.extern	MAIN_MFC_bCanCEnaC,STT_OBJECT,1
	.extern	MAIN_MFC_bCanBEnaC,STT_OBJECT,1
	.extern	MAIN_MFC_bCanAEnaC,STT_OBJECT,1
	.extern	MAIN_MFC_u8TempSensorCfgC_MCU2,STT_OBJECT,1
	.extern	MAIN_MFC_u8TempSensorCfgC_MCU1,STT_OBJECT,1
	.extern	MAIN_MFC_u8TempSensorCfgC_EPS,STT_OBJECT,1
	.extern	MAIN_MFC_u8TempSensorCfgC_ACM,STT_OBJECT,1
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
