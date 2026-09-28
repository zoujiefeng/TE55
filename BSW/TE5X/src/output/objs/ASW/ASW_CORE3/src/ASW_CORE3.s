	.file	"ASW_CORE3.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.RE_CORE3_SWC_func,"ax",@progbits
	.align 1
	.global	RE_CORE3_SWC_func
	.type	RE_CORE3_SWC_func, @function
RE_CORE3_SWC_func:
.LFB260:
	.file 1 "ASW\\ASW_CORE3\\src\\ASW_CORE3.c"
	.loc 1 54 0
.LVL0:
	.loc 1 56 0
	movh.a	%a15, hi:CPU3_PercentUtilization
	movh.a	%a5, hi:CPU3_StatusUtiliazation
	lea	%a4, [%a15] lo:CPU3_PercentUtilization
	mov	%d4, 1000
	lea	%a5, [%a5] lo:CPU3_StatusUtiliazation
	call	CPUUtilizationCore3_func
.LVL1:
	.loc 1 57 0
	ld.w	%d15, [%a15] lo:CPU3_PercentUtilization
	movh.a	%a15, hi:CPU3_MaximumUtilization
	ld.w	%d2, [%a15] lo:CPU3_MaximumUtilization
	cmp.f	%d2, %d15, %d2
	jz.t	%d2, 2, .L2
	.loc 1 59 0
	st.w	[%a15] lo:CPU3_MaximumUtilization, %d15
.L2:
	.loc 1 62 0
	movh.a	%a4, hi:CORE3_MaxUserStackUtilization
	lea	%a4, [%a4] lo:CORE3_MaxUserStackUtilization
	j	GetMaxUserStackUtilization_Core3_func
.LVL2:
.LFE260:
	.size	RE_CORE3_SWC_func, .-RE_CORE3_SWC_func
.section .text.I2C_vidDeadLockCheck,"ax",@progbits
	.align 1
	.global	I2C_vidDeadLockCheck
	.type	I2C_vidDeadLockCheck, @function
I2C_vidDeadLockCheck:
.LFB261:
	.loc 1 67 0
.LVL3:
	.loc 1 71 0
	movh.a	%a12, hi:MAIN_u16ADS1115Result
	movh.a	%a15, hi:MAIN_u16ADS1115LastResult
	ld.hu	%d15, [%a12] lo:MAIN_u16ADS1115Result
	ld.hu	%d2, [%a15] lo:MAIN_u16ADS1115LastResult
	jeq	%d2, %d15, .L11
	.loc 1 86 0
	mov	%d2, 0
	movh.a	%a2, hi:MAIN_u16DeadLockCheckCnt
	st.h	[%a2] lo:MAIN_u16DeadLockCheckCnt, %d2
	.loc 1 101 0
	st.h	[%a15] lo:MAIN_u16ADS1115LastResult, %d15
	ret
.L11:
	.loc 1 74 0
	movh.a	%a2, hi:MAIN_u16DeadLockCheckCnt
	ld.hu	%d2, [%a2] lo:MAIN_u16DeadLockCheckCnt
	ge.u	%d3, %d2, 100
	jnz	%d3, .L8
	.loc 1 76 0
	add	%d2, 1
	st.h	[%a2] lo:MAIN_u16DeadLockCheckCnt, %d2
	.loc 1 101 0
	st.h	[%a15] lo:MAIN_u16ADS1115LastResult, %d15
	ret
.L8:
.LVL4:
	.loc 1 81 0
	mov	%d15, 0
	st.h	[%a2] lo:MAIN_u16DeadLockCheckCnt, %d15
	.loc 1 91 0
	movh.a	%a2, hi:MAIN_u16DeadLockCnt
	ld.h	%d2, [%a2] lo:MAIN_u16DeadLockCnt
	add	%d2, 1
	st.h	[%a2] lo:MAIN_u16DeadLockCnt, %d2
	.loc 1 94 0
	call	I2c_DeInit
.LVL5:
	.loc 1 95 0
	movh.a	%a4, hi:I2c_Config
	lea	%a4, [%a4] lo:I2c_Config
	call	I2c_Init
.LVL6:
	.loc 1 98 0
	movh.a	%a2, hi:ADS1115_InitConfigSuccess
	st.b	[%a2] lo:ADS1115_InitConfigSuccess, %d15
	ld.hu	%d15, [%a12] lo:MAIN_u16ADS1115Result
	.loc 1 101 0
	st.h	[%a15] lo:MAIN_u16ADS1115LastResult, %d15
	ret
.LFE261:
	.size	I2C_vidDeadLockCheck, .-I2C_vidDeadLockCheck
.section .text.RE_CORE3_SWC_1ms_func,"ax",@progbits
	.align 1
	.global	RE_CORE3_SWC_1ms_func
	.type	RE_CORE3_SWC_1ms_func, @function
RE_CORE3_SWC_1ms_func:
.LFB262:
	.loc 1 106 0
.LVL7:
	.loc 1 111 0
	call	VADC_vidTreatment
.LVL8:
	.loc 1 113 0
	mov	%d4, 1
	mov	%d5, 1000
	call	FR_vidEcuMainHandler
.LVL9:
	.loc 1 117 0
	movh.a	%a15, hi:u8Div2Cnt.15268
	.loc 1 115 0
	call	CDD_TPPC_vidCORE3_1ms_func
.LVL10:
	.loc 1 117 0
	ld.bu	%d15, [%a15] lo:u8Div2Cnt.15268
	jz.t	%d15, 0, .L13
	add	%d15, 1
	and	%d15, 255
.L14:
	.loc 1 122 0
	st.b	[%a15] lo:u8Div2Cnt.15268, %d15
	.loc 1 124 0
	call	MAIN_MFC_vidModuleReinit
.LVL11:
	.loc 1 126 0
	movh.a	%a12, hi:MAIN_u16ADS1115Result
	lea	%a4, [%a12] lo:MAIN_u16ADS1115Result
	call	ADS1115_ContinuousRead
.LVL12:
.LBB5:
.LBB6:
	.loc 1 71 0
	movh.a	%a15, hi:MAIN_u16ADS1115LastResult
	ld.hu	%d15, [%a12] lo:MAIN_u16ADS1115Result
	ld.hu	%d2, [%a15] lo:MAIN_u16ADS1115LastResult
	jeq	%d2, %d15, .L19
	.loc 1 86 0
	mov	%d2, 0
	movh.a	%a2, hi:MAIN_u16DeadLockCheckCnt
	st.h	[%a2] lo:MAIN_u16DeadLockCheckCnt, %d2
	.loc 1 101 0
	st.h	[%a15] lo:MAIN_u16ADS1115LastResult, %d15
	ret
.LVL13:
.L13:
.LBE6:
.LBE5:
.LBB8:
	.loc 1 119 0
	call	CDD_TPPC_vidCORE3_2ms_func
.LVL14:
	mov	%d15, 1
	j	.L14
.LVL15:
.L19:
.LBE8:
.LBB9:
.LBB7:
	.loc 1 74 0
	movh.a	%a2, hi:MAIN_u16DeadLockCheckCnt
	ld.hu	%d2, [%a2] lo:MAIN_u16DeadLockCheckCnt
	ge.u	%d3, %d2, 100
	jnz	%d3, .L16
	.loc 1 76 0
	add	%d2, 1
	st.h	[%a2] lo:MAIN_u16DeadLockCheckCnt, %d2
	.loc 1 101 0
	st.h	[%a15] lo:MAIN_u16ADS1115LastResult, %d15
	ret
.L16:
.LVL16:
	.loc 1 81 0
	mov	%d15, 0
	st.h	[%a2] lo:MAIN_u16DeadLockCheckCnt, %d15
	.loc 1 91 0
	movh.a	%a2, hi:MAIN_u16DeadLockCnt
	ld.h	%d2, [%a2] lo:MAIN_u16DeadLockCnt
	add	%d2, 1
	st.h	[%a2] lo:MAIN_u16DeadLockCnt, %d2
	.loc 1 94 0
	call	I2c_DeInit
.LVL17:
	.loc 1 95 0
	movh.a	%a4, hi:I2c_Config
	lea	%a4, [%a4] lo:I2c_Config
	call	I2c_Init
.LVL18:
	.loc 1 98 0
	movh.a	%a2, hi:ADS1115_InitConfigSuccess
	st.b	[%a2] lo:ADS1115_InitConfigSuccess, %d15
	ld.hu	%d15, [%a12] lo:MAIN_u16ADS1115Result
	.loc 1 101 0
	st.h	[%a15] lo:MAIN_u16ADS1115LastResult, %d15
	ret
.LBE7:
.LBE9:
.LFE262:
	.size	RE_CORE3_SWC_1ms_func, .-RE_CORE3_SWC_1ms_func
.section .text.RE_CORE3FaultReaction,"ax",@progbits
	.align 1
	.global	RE_CORE3FaultReaction
	.type	RE_CORE3FaultReaction, @function
RE_CORE3FaultReaction:
.LFB263:
	.loc 1 140 0
.LVL19:
	ret
.LFE263:
	.size	RE_CORE3FaultReaction, .-RE_CORE3FaultReaction
.section .bss.a1.u8Div2Cnt.15268,"aw",@nobits
	.type	u8Div2Cnt.15268, @object
	.size	u8Div2Cnt.15268, 1
u8Div2Cnt.15268:
	.zero	1
	.global	MAIN_u16DeadLockCnt
.section .bss.a2.MAIN_u16DeadLockCnt,"aw",@nobits
	.align 1
	.type	MAIN_u16DeadLockCnt, @object
	.size	MAIN_u16DeadLockCnt, 2
MAIN_u16DeadLockCnt:
	.zero	2
	.global	MAIN_u16DeadLockCheckCnt
.section .bss.a2.MAIN_u16DeadLockCheckCnt,"aw",@nobits
	.align 1
	.type	MAIN_u16DeadLockCheckCnt, @object
	.size	MAIN_u16DeadLockCheckCnt, 2
MAIN_u16DeadLockCheckCnt:
	.zero	2
	.global	MAIN_u16ADS1115LastResult
.section .bss.a2.MAIN_u16ADS1115LastResult,"aw",@nobits
	.align 1
	.type	MAIN_u16ADS1115LastResult, @object
	.size	MAIN_u16ADS1115LastResult, 2
MAIN_u16ADS1115LastResult:
	.zero	2
	.global	MAIN_u16ADS1115Result
.section .bss.a2.MAIN_u16ADS1115Result,"aw",@nobits
	.align 1
	.type	MAIN_u16ADS1115Result, @object
	.size	MAIN_u16ADS1115Result, 2
MAIN_u16ADS1115Result:
	.zero	2
	.global	CORE3_MaxUserStackUtilization
.section .bss.a4.CORE3_MaxUserStackUtilization,"aw",@nobits
	.align 2
	.type	CORE3_MaxUserStackUtilization, @object
	.size	CORE3_MaxUserStackUtilization, 4
CORE3_MaxUserStackUtilization:
	.zero	4
	.global	CPU3_MaximumUtilization
.section .bss.a4.CPU3_MaximumUtilization,"aw",@nobits
	.align 2
	.type	CPU3_MaximumUtilization, @object
	.size	CPU3_MaximumUtilization, 4
CPU3_MaximumUtilization:
	.zero	4
	.global	CPU3_PercentUtilization
.section .bss.a4.CPU3_PercentUtilization,"aw",@nobits
	.align 2
	.type	CPU3_PercentUtilization, @object
	.size	CPU3_PercentUtilization, 4
CPU3_PercentUtilization:
	.zero	4
	.global	CPU3_StatusUtiliazation
.section .bss.a1.CPU3_StatusUtiliazation,"aw",@nobits
	.type	CPU3_StatusUtiliazation, @object
	.size	CPU3_StatusUtiliazation, 1
CPU3_StatusUtiliazation:
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
	.uaword	.LFB260
	.uaword	.LFE260-.LFB260
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB261
	.uaword	.LFE261-.LFB261
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB262
	.uaword	.LFE262-.LFB262
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB263
	.uaword	.LFE263-.LFB263
	.align 2
.LEFDE6:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 4 ".\\output\\inc/..\\..\\bswcdd\\PortMux\\PortMux.h"
	.file 5 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\I2c\\inc\\I2c.h"
	.file 6 ".\\output\\inc/..\\..\\main\\_MainModule\\CalibData\\MAIN_CalibData.h"
	.file 7 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\Cpu\\Std\\Ifx_Types.h"
	.file 8 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\_Impl\\IfxCpu_cfg.h"
	.file 9 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\Scu\\Std\\IfxScuCcu.h"
	.file 10 ".\\output\\inc/..\\..\\bswcdd\\FR\\FR_EcuSetCfg.h"
	.file 11 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Gen\\inc\\I2c_PBcfg.h"
	.file 12 ".\\output\\inc/..\\..\\rte\\Rte_ASW_CORE3.h"
	.file 13 ".\\output\\inc/..\\..\\bswcdd\\VADC\\VADC.h"
	.file 14 ".\\output\\inc/..\\..\\main\\_MainModule\\MuxFuncCfg\\MAIN_MuxFuncCfg.h"
	.file 15 ".\\output\\inc/..\\..\\bswcdd\\ADS1115\\ADS1115.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x12b9
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"ASW\\ASW_CORE3\\src\\ASW_CORE3.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x18
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x2
	.byte	0x51
	.uaword	0x1ac
	.uleb128 0x3
	.string	"uint16"
	.byte	0x2
	.byte	0x5b
	.uaword	0x1bd
	.uleb128 0x3
	.string	"sint32"
	.byte	0x2
	.byte	0x60
	.uaword	0x1ff
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x3
	.string	"uint32"
	.byte	0x2
	.byte	0x6a
	.uaword	0x1d3
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x3
	.string	"float64"
	.byte	0x2
	.byte	0x78
	.uaword	0x28c
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"double"
	.uleb128 0x3
	.string	"boolean"
	.byte	0x2
	.byte	0x80
	.uaword	0x1ac
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
	.uaword	0x1ac
	.uleb128 0x3
	.string	"Std_ReturnType"
	.byte	0x3
	.byte	0x60
	.uaword	0x212
	.uleb128 0x4
	.byte	0x4
	.uaword	0x212
	.uleb128 0x5
	.uaword	0x212
	.uleb128 0x4
	.byte	0x4
	.uaword	0x21f
	.uleb128 0x5
	.uaword	0x24c
	.uleb128 0x4
	.byte	0x4
	.uaword	0x27d
	.uleb128 0x6
	.byte	0x1
	.byte	0x4
	.byte	0x6
	.uaword	0x45c
	.uleb128 0x7
	.string	"ePMux_DIOInputMux1"
	.sleb128 0
	.uleb128 0x7
	.string	"ePMux_DIOInputMux2"
	.sleb128 1
	.uleb128 0x7
	.string	"ePMux_DIOInputMux3"
	.sleb128 2
	.uleb128 0x7
	.string	"ePMUX_ANInputMux1"
	.sleb128 3
	.uleb128 0x7
	.string	"ePMUX_ANInputMux2"
	.sleb128 4
	.uleb128 0x7
	.string	"ePMUX_ANInputMux3"
	.sleb128 5
	.uleb128 0x7
	.string	"ePMUX_ANInputMux4"
	.sleb128 6
	.uleb128 0x7
	.string	"ePMUX_ANInputMux5"
	.sleb128 7
	.uleb128 0x7
	.string	"ePMUX_ANInputMux6"
	.sleb128 8
	.uleb128 0x7
	.string	"ePMUX_ANInputMux7"
	.sleb128 9
	.uleb128 0x7
	.string	"ePMUX_ANInputMux8"
	.sleb128 10
	.uleb128 0x7
	.string	"ePMUX_ANInputMux9"
	.sleb128 11
	.uleb128 0x7
	.string	"ePMUX_ANInputMux10"
	.sleb128 12
	.uleb128 0x7
	.string	"ePMUX_ANInputMux11"
	.sleb128 13
	.uleb128 0x7
	.string	"ePMUX_ANInputMux12"
	.sleb128 14
	.uleb128 0x7
	.string	"ePMUX_InputMuxMaxNum"
	.sleb128 15
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.byte	0x5
	.byte	0x9a
	.uaword	0x55c
	.uleb128 0x7
	.string	"I2C_NO_ERR"
	.sleb128 0
	.uleb128 0x7
	.string	"I2C_TX_UNDERFLOW"
	.sleb128 1
	.uleb128 0x7
	.string	"I2C_TX_OVERFLOW"
	.sleb128 2
	.uleb128 0x7
	.string	"I2C_RX_UNDERFLOW"
	.sleb128 3
	.uleb128 0x7
	.string	"I2C_RX_OVERFLOW"
	.sleb128 4
	.uleb128 0x7
	.string	"I2C_NO_ACK"
	.sleb128 5
	.uleb128 0x7
	.string	"I2C_ARBITRATION_LOST"
	.sleb128 6
	.uleb128 0x7
	.string	"I2C_INVALID_CHANNEL"
	.sleb128 7
	.uleb128 0x7
	.string	"I2C_INVALID_SIZE"
	.sleb128 8
	.uleb128 0x7
	.string	"I2C_INVALID_ADDRESS"
	.sleb128 9
	.uleb128 0x7
	.string	"I2C_NULL_PTR"
	.sleb128 10
	.uleb128 0x7
	.string	"I2C_IS_UNINIT"
	.sleb128 11
	.uleb128 0x7
	.string	"I2C_IS_BUSY"
	.sleb128 12
	.uleb128 0x7
	.string	"I2C_ERR_OTHER"
	.sleb128 13
	.byte	0
	.uleb128 0x3
	.string	"I2c_ErrorType"
	.byte	0x5
	.byte	0xa9
	.uaword	0x45c
	.uleb128 0x6
	.byte	0x1
	.byte	0x5
	.byte	0xac
	.uaword	0x5a9
	.uleb128 0x7
	.string	"I2C_7_BIT_ADDRESSING"
	.sleb128 0
	.uleb128 0x7
	.string	"I2C_10_BIT_ADDRESSING"
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.string	"I2c_AddressingModeType"
	.byte	0x5
	.byte	0xaf
	.uaword	0x571
	.uleb128 0x3
	.string	"I2c_NotifFunctionPtrType"
	.byte	0x5
	.byte	0xb1
	.uaword	0x5e7
	.uleb128 0x4
	.byte	0x4
	.uaword	0x5ed
	.uleb128 0x8
	.byte	0x1
	.uaword	0x5f9
	.uleb128 0x9
	.uaword	0x55c
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.byte	0x5
	.byte	0xb3
	.uaword	0x621
	.uleb128 0xb
	.string	"I2c_NotifFunctionPtr"
	.byte	0x5
	.byte	0xb5
	.uaword	0x5c7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"I2c_NotifType"
	.byte	0x5
	.byte	0xb6
	.uaword	0x5f9
	.uleb128 0xa
	.byte	0x30
	.byte	0x5
	.byte	0xb8
	.uaword	0x76b
	.uleb128 0xb
	.string	"HwUnit"
	.byte	0x5
	.byte	0xba
	.uaword	0x2f4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"AdddressCfgValue"
	.byte	0x5
	.byte	0xbc
	.uaword	0x2ff
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"FracDividerCfgValue"
	.byte	0x5
	.byte	0xbe
	.uaword	0x2ff
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"FracDividerHighCfgValue"
	.byte	0x5
	.byte	0xc0
	.uaword	0x2ff
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.string	"TimingCfgvalue"
	.byte	0x5
	.byte	0xc2
	.uaword	0x2ff
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"FIFOCfgValue"
	.byte	0x5
	.byte	0xc4
	.uaword	0x2ff
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.string	"PortPinCfgvalue"
	.byte	0x5
	.byte	0xc6
	.uaword	0x2f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.string	"HWClkSetting"
	.byte	0x5
	.byte	0xc8
	.uaword	0x2ff
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.string	"AddressingMode"
	.byte	0x5
	.byte	0xca
	.uaword	0x76b
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.string	"I2c_Notif"
	.byte	0x5
	.byte	0xcc
	.uaword	0x621
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.string	"TxTimeOutCount"
	.byte	0x5
	.byte	0xce
	.uaword	0x2ff
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.string	"RxTimeOutCount"
	.byte	0x5
	.byte	0xcf
	.uaword	0x2ff
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.byte	0
	.uleb128 0x5
	.uaword	0x5a9
	.uleb128 0x3
	.string	"I2c_ChannelConfigType"
	.byte	0x5
	.byte	0xd1
	.uaword	0x636
	.uleb128 0xa
	.byte	0x8
	.byte	0x5
	.byte	0xd4
	.uaword	0x7cf
	.uleb128 0xb
	.string	"I2c_ChannelConfigPtr"
	.byte	0x5
	.byte	0xd6
	.uaword	0x7cf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"I2c_MaxChannels"
	.byte	0x5
	.byte	0xd7
	.uaword	0x2f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x7d5
	.uleb128 0x5
	.uaword	0x770
	.uleb128 0x3
	.string	"I2c_ConfigType"
	.byte	0x5
	.byte	0xd9
	.uaword	0x78d
	.uleb128 0xc
	.string	"eCalibIndex"
	.byte	0x1
	.byte	0x6
	.byte	0x15
	.uaword	0x8ab
	.uleb128 0x7
	.string	"eMAIN_CALIB_BUF_UI_INDEX"
	.sleb128 0
	.uleb128 0x7
	.string	"eMAIN_CALIB_BUF_VI_INDEX"
	.sleb128 1
	.uleb128 0x7
	.string	"eMAIN_CALIB_BUF_WI_INDEX"
	.sleb128 2
	.uleb128 0x7
	.string	"eMAIN_CALIB_BUF_VO_INDEX"
	.sleb128 3
	.uleb128 0x7
	.string	"eMAIN_CALIB_BUF_VALID_PARAM_NO"
	.sleb128 4
	.uleb128 0x7
	.string	"eMAIN_CALIB_BUF_MAX_NO"
	.sleb128 16
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.byte	0x1f
	.uaword	0x923
	.uleb128 0x7
	.string	"eMAIN_CALIB_IDX_MCU1"
	.sleb128 0
	.uleb128 0x7
	.string	"eMAIN_CALIB_IDX_MCU2"
	.sleb128 1
	.uleb128 0x7
	.string	"eMAIN_CALIB_IDX_ACM"
	.sleb128 2
	.uleb128 0x7
	.string	"eMAIN_CALIB_IDX_EPS"
	.sleb128 3
	.uleb128 0x7
	.string	"eMAIN_CALIB_ECU_NO"
	.sleb128 4
	.byte	0
	.uleb128 0xc
	.string	"eRcGainIndex"
	.byte	0x1
	.byte	0x6
	.byte	0x27
	.uaword	0xb60
	.uleb128 0x7
	.string	"eMAIN_CALIB_BUF_RC00_INDEX"
	.sleb128 0
	.uleb128 0x7
	.string	"eMAIN_CALIB_BUF_RC01_INDEX"
	.sleb128 1
	.uleb128 0x7
	.string	"eMAIN_CALIB_BUF_RC02_INDEX"
	.sleb128 2
	.uleb128 0x7
	.string	"eMAIN_CALIB_BUF_RC03_INDEX"
	.sleb128 3
	.uleb128 0x7
	.string	"eMAIN_CALIB_BUF_RC04_INDEX"
	.sleb128 4
	.uleb128 0x7
	.string	"eMAIN_CALIB_BUF_RC05_INDEX"
	.sleb128 5
	.uleb128 0x7
	.string	"eMAIN_CALIB_BUF_RC06_INDEX"
	.sleb128 6
	.uleb128 0x7
	.string	"eMAIN_CALIB_BUF_RC07_INDEX"
	.sleb128 7
	.uleb128 0x7
	.string	"eMAIN_CALIB_BUF_RC08_INDEX"
	.sleb128 8
	.uleb128 0x7
	.string	"eMAIN_CALIB_BUF_RC09_INDEX"
	.sleb128 9
	.uleb128 0x7
	.string	"eMAIN_CALIB_BUF_RC10_INDEX"
	.sleb128 10
	.uleb128 0x7
	.string	"eMAIN_CALIB_BUF_RC11_INDEX"
	.sleb128 11
	.uleb128 0x7
	.string	"eMAIN_CALIB_BUF_RC12_INDEX"
	.sleb128 12
	.uleb128 0x7
	.string	"eMAIN_CALIB_BUF_RC13_INDEX"
	.sleb128 13
	.uleb128 0x7
	.string	"eMAIN_CALIB_BUF_RC14_INDEX"
	.sleb128 14
	.uleb128 0x7
	.string	"eMAIN_CALIB_BUF_RC15_INDEX"
	.sleb128 15
	.uleb128 0x7
	.string	"eMAIN_CALIB_BUF_RC16_INDEX"
	.sleb128 16
	.uleb128 0x7
	.string	"eMAIN_CALIB_BUF_VALID_RC_NO"
	.sleb128 17
	.uleb128 0x7
	.string	"eMAIN_CALIB_BUF_MAX_RC_NO"
	.sleb128 25
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x4
	.byte	0x4
	.uaword	0xb6e
	.uleb128 0xd
	.uleb128 0xa
	.byte	0x8
	.byte	0x7
	.byte	0x8c
	.uaword	0xb99
	.uleb128 0xb
	.string	"module"
	.byte	0x7
	.byte	0x8e
	.uaword	0xb68
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"index"
	.byte	0x7
	.byte	0x8f
	.uaword	0x22d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"IfxModule_IndexMap"
	.byte	0x7
	.byte	0x90
	.uaword	0xb6f
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.byte	0x88
	.uaword	0xc14
	.uleb128 0x7
	.string	"IfxCpu_Index_0"
	.sleb128 0
	.uleb128 0x7
	.string	"IfxCpu_Index_1"
	.sleb128 1
	.uleb128 0x7
	.string	"IfxCpu_Index_2"
	.sleb128 2
	.uleb128 0x7
	.string	"IfxCpu_Index_3"
	.sleb128 3
	.uleb128 0x7
	.string	"IfxCpu_Index_none"
	.sleb128 4
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.byte	0x9
	.uahalf	0x160
	.uaword	0xd1d
	.uleb128 0x7
	.string	"IfxScuCcu_ModulationAmplitude_0p5"
	.sleb128 0
	.uleb128 0x7
	.string	"IfxScuCcu_ModulationAmplitude_1p0"
	.sleb128 1
	.uleb128 0x7
	.string	"IfxScuCcu_ModulationAmplitude_1p25"
	.sleb128 2
	.uleb128 0x7
	.string	"IfxScuCcu_ModulationAmplitude_1p5"
	.sleb128 3
	.uleb128 0x7
	.string	"IfxScuCcu_ModulationAmplitude_2p0"
	.sleb128 4
	.uleb128 0x7
	.string	"IfxScuCcu_ModulationAmplitude_2p5"
	.sleb128 5
	.uleb128 0x7
	.string	"IfxScuCcu_ModulationAmplitude_count"
	.sleb128 6
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.byte	0xa
	.byte	0x17
	.uaword	0xd6b
	.uleb128 0x7
	.string	"eFR_MGTCU_INDEX"
	.sleb128 0
	.uleb128 0x7
	.string	"eFR_DCAC_INDEX"
	.sleb128 1
	.uleb128 0x7
	.string	"eFR_PDU_INDEX"
	.sleb128 2
	.uleb128 0x7
	.string	"eFR_ECU_MAX_NUM"
	.sleb128 3
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.string	"RE_CORE3_SWC_func"
	.byte	0x1
	.byte	0x32
	.byte	0x1
	.uaword	.LFB260
	.uaword	.LFE260
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xddf
	.uleb128 0x10
	.string	"retValue"
	.byte	0x1
	.byte	0x37
	.uaword	0x2d8
	.byte	0
	.uleb128 0x11
	.uaword	.LVL1
	.uaword	0x1167
	.uaword	0xdca
	.uleb128 0x12
	.byte	0x1
	.byte	0x65
	.byte	0x5
	.byte	0x3
	.uaword	CPU3_StatusUtiliazation
	.uleb128 0x12
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	CPU3_PercentUtilization
	.uleb128 0x12
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x3e8
	.byte	0
	.uleb128 0x13
	.uaword	.LVL2
	.byte	0x1
	.uaword	0x119a
	.uleb128 0x12
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	CORE3_MaxUserStackUtilization
	.byte	0
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.string	"I2C_vidDeadLockCheck"
	.byte	0x1
	.byte	0x42
	.byte	0x1
	.byte	0x1
	.uaword	0xe2b
	.uleb128 0x15
	.string	"u16ADS11115Cnt"
	.byte	0x1
	.byte	0x44
	.uaword	0x21f
	.uleb128 0x15
	.string	"bI2cIsDeadLock"
	.byte	0x1
	.byte	0x45
	.uaword	0x296
	.byte	0
	.uleb128 0x16
	.uaword	0xddf
	.uaword	.LFB261
	.uaword	.LFE261
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xe62
	.uleb128 0x17
	.uaword	0xdfe
	.byte	0
	.uleb128 0x18
	.uaword	0xe14
	.uaword	.LLST0
	.uleb128 0x19
	.uaword	.LVL5
	.uaword	0x11d4
	.uleb128 0x19
	.uaword	.LVL6
	.uaword	0x11ea
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.string	"RE_CORE3_SWC_1ms_func"
	.byte	0x1
	.byte	0x69
	.byte	0x1
	.uaword	.LFB262
	.uaword	.LFE262
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xf8b
	.uleb128 0x15
	.string	"I2Cerror"
	.byte	0x1
	.byte	0x6b
	.uaword	0x55c
	.uleb128 0x10
	.string	"I2C_Avaliable"
	.byte	0x1
	.byte	0x6c
	.uaword	0x296
	.byte	0
	.uleb128 0x1a
	.string	"u8Div2Cnt"
	.byte	0x1
	.byte	0x6d
	.uaword	0x212
	.byte	0x5
	.byte	0x3
	.uaword	u8Div2Cnt.15268
	.uleb128 0x1b
	.byte	0x1
	.uaword	.LASF0
	.byte	0x1
	.byte	0x73
	.uaword	0x1ff
	.byte	0x1
	.uaword	0xedd
	.uleb128 0x1c
	.byte	0
	.uleb128 0x1d
	.uaword	0xddf
	.uaword	.LBB5
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x7f
	.uaword	0xf18
	.uleb128 0x1e
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x18
	.uaword	0xe14
	.uaword	.LLST1
	.uleb128 0x17
	.uaword	0xdfe
	.byte	0
	.uleb128 0x19
	.uaword	.LVL17
	.uaword	0x11d4
	.uleb128 0x19
	.uaword	.LVL18
	.uaword	0x11ea
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uaword	.LBB8
	.uaword	.LBE8
	.uaword	0xf42
	.uleb128 0x1b
	.byte	0x1
	.uaword	.LASF1
	.byte	0x1
	.byte	0x77
	.uaword	0x1ff
	.byte	0x1
	.uaword	0xf38
	.uleb128 0x1c
	.byte	0
	.uleb128 0x19
	.uaword	.LVL14
	.uaword	0x120e
	.byte	0
	.uleb128 0x19
	.uaword	.LVL8
	.uaword	0x1221
	.uleb128 0x11
	.uaword	.LVL9
	.uaword	0x1239
	.uaword	0xf65
	.uleb128 0x12
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xa
	.uahalf	0x3e8
	.uleb128 0x12
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x19
	.uaword	.LVL10
	.uaword	0x1263
	.uleb128 0x19
	.uaword	.LVL11
	.uaword	0x1276
	.uleb128 0x20
	.uaword	.LVL12
	.uaword	0x1295
	.uleb128 0x12
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_u16ADS1115Result
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.string	"RE_CORE3FaultReaction"
	.byte	0x1
	.byte	0x8b
	.byte	0x1
	.uaword	.LFB263
	.uaword	.LFE263
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xfc6
	.uleb128 0x21
	.string	"Error"
	.byte	0x1
	.byte	0x8b
	.uaword	0x2c6
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x22
	.string	"I2c_Config"
	.byte	0xb
	.byte	0x3b
	.uaword	0xfda
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.uaword	0x7da
	.uleb128 0x23
	.uaword	0xb99
	.uaword	0xfef
	.uleb128 0x24
	.uaword	0x206
	.byte	0x3
	.byte	0
	.uleb128 0x22
	.string	"IfxCpu_cfg_indexMap"
	.byte	0x8
	.byte	0xaa
	.uaword	0x100c
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.uaword	0xfdf
	.uleb128 0x25
	.string	"CPU3_StatusUtiliazation"
	.byte	0x1
	.byte	0x1f
	.uaword	0x212
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CPU3_StatusUtiliazation
	.uleb128 0x25
	.string	"CPU3_PercentUtilization"
	.byte	0x1
	.byte	0x25
	.uaword	0x27d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CPU3_PercentUtilization
	.uleb128 0x25
	.string	"CPU3_MaximumUtilization"
	.byte	0x1
	.byte	0x26
	.uaword	0x27d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CPU3_MaximumUtilization
	.uleb128 0x25
	.string	"CORE3_MaxUserStackUtilization"
	.byte	0x1
	.byte	0x27
	.uaword	0x27d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CORE3_MaxUserStackUtilization
	.uleb128 0x25
	.string	"MAIN_u16ADS1115Result"
	.byte	0x1
	.byte	0x2b
	.uaword	0x21f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_u16ADS1115Result
	.uleb128 0x25
	.string	"MAIN_u16ADS1115LastResult"
	.byte	0x1
	.byte	0x2c
	.uaword	0x21f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_u16ADS1115LastResult
	.uleb128 0x25
	.string	"MAIN_u16DeadLockCheckCnt"
	.byte	0x1
	.byte	0x2d
	.uaword	0x21f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_u16DeadLockCheckCnt
	.uleb128 0x25
	.string	"MAIN_u16DeadLockCnt"
	.byte	0x1
	.byte	0x2e
	.uaword	0x21f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_u16DeadLockCnt
	.uleb128 0x22
	.string	"ADS1115_InitConfigSuccess"
	.byte	0x1
	.byte	0x41
	.uaword	0x212
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.byte	0x1
	.string	"CPUUtilizationCore3_func"
	.byte	0xc
	.byte	0x71
	.byte	0x1
	.byte	0x1
	.uaword	0x119a
	.uleb128 0x9
	.uaword	0x24c
	.uleb128 0x9
	.uaword	0x304
	.uleb128 0x9
	.uaword	0x2ee
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.string	"GetMaxUserStackUtilization_Core3_func"
	.byte	0xc
	.byte	0x6f
	.byte	0x1
	.uaword	0x2d8
	.byte	0x1
	.uaword	0x11d4
	.uleb128 0x9
	.uaword	0x304
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.string	"I2c_DeInit"
	.byte	0x5
	.uahalf	0x115
	.byte	0x1
	.uaword	0x2d8
	.byte	0x1
	.uleb128 0x26
	.byte	0x1
	.string	"I2c_Init"
	.byte	0x5
	.byte	0xff
	.byte	0x1
	.byte	0x1
	.uaword	0x1203
	.uleb128 0x9
	.uaword	0x1203
	.byte	0
	.uleb128 0x5
	.uaword	0x1208
	.uleb128 0x4
	.byte	0x4
	.uaword	0xfda
	.uleb128 0x1b
	.byte	0x1
	.uaword	.LASF1
	.byte	0x1
	.byte	0x77
	.uaword	0x1ff
	.byte	0x1
	.uaword	0x1221
	.uleb128 0x1c
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.string	"VADC_vidTreatment"
	.byte	0xd
	.byte	0x11
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.byte	0x1
	.string	"FR_vidEcuMainHandler"
	.byte	0xa
	.byte	0x22
	.byte	0x1
	.byte	0x1
	.uaword	0x1263
	.uleb128 0x9
	.uaword	0x2f4
	.uleb128 0x9
	.uaword	0x2ff
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.uaword	.LASF0
	.byte	0x1
	.byte	0x73
	.uaword	0x1ff
	.byte	0x1
	.uaword	0x1276
	.uleb128 0x1c
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.string	"MAIN_MFC_vidModuleReinit"
	.byte	0xe
	.byte	0x2a
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.byte	0x1
	.string	"ADS1115_ContinuousRead"
	.byte	0xf
	.byte	0x9b
	.byte	0x1
	.uaword	0x55c
	.byte	0x1
	.uleb128 0x9
	.uaword	0x2f9
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xd
	.uleb128 0x35
	.byte	0
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LFE261
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LFE262
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x34
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB260
	.uaword	.LFE260-.LFB260
	.uaword	.LFB261
	.uaword	.LFE261-.LFB261
	.uaword	.LFB262
	.uaword	.LFE262-.LFB262
	.uaword	.LFB263
	.uaword	.LFE263-.LFB263
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB5
	.uaword	.LBE5
	.uaword	.LBB9
	.uaword	.LBE9
	.uaword	0
	.uaword	0
	.uaword	.LFB260
	.uaword	.LFE260
	.uaword	.LFB261
	.uaword	.LFE261
	.uaword	.LFB262
	.uaword	.LFE262
	.uaword	.LFB263
	.uaword	.LFE263
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF1:
	.string	"CDD_TPPC_vidCORE3_2ms_func"
.LASF0:
	.string	"CDD_TPPC_vidCORE3_1ms_func"
	.extern	CDD_TPPC_vidCORE3_2ms_func,STT_FUNC,0
	.extern	ADS1115_ContinuousRead,STT_FUNC,0
	.extern	MAIN_MFC_vidModuleReinit,STT_FUNC,0
	.extern	CDD_TPPC_vidCORE3_1ms_func,STT_FUNC,0
	.extern	FR_vidEcuMainHandler,STT_FUNC,0
	.extern	VADC_vidTreatment,STT_FUNC,0
	.extern	ADS1115_InitConfigSuccess,STT_OBJECT,1
	.extern	I2c_Init,STT_FUNC,0
	.extern	I2c_Config,STT_OBJECT,8
	.extern	I2c_DeInit,STT_FUNC,0
	.extern	GetMaxUserStackUtilization_Core3_func,STT_FUNC,0
	.extern	CPUUtilizationCore3_func,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
