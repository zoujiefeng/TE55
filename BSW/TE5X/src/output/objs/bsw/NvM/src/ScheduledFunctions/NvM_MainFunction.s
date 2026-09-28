	.file	"NvM_MainFunction.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.NvM_Prv_InitializeMainStates,"ax",@progbits
	.align 1
	.global	NvM_Prv_InitializeMainStates
	.type	NvM_Prv_InitializeMainStates, @function
NvM_Prv_InitializeMainStates:
.LFB336:
	.file 1 "bsw\\NvM\\src\\ScheduledFunctions\\NvM_MainFunction.c"
	.loc 1 104 0
	.loc 1 106 0
	movh.a	%a2, hi:NvM_Prv_Main_st
	mov	%d15, 1
	lea	%a15, [%a2] lo:NvM_Prv_Main_st
	st.b	[%a2] lo:NvM_Prv_Main_st, %d15
	.loc 1 108 0
	mov	%d15, 2
	st.b	[%a15] 1, %d15
	.loc 1 110 0
	mov	%d15, 0
	st.b	[%a15] 2, %d15
	ret
.LFE336:
	.size	NvM_Prv_InitializeMainStates, .-NvM_Prv_InitializeMainStates
.section .text.NvM_Prv_UninitializeMainStates,"ax",@progbits
	.align 1
	.global	NvM_Prv_UninitializeMainStates
	.type	NvM_Prv_UninitializeMainStates, @function
NvM_Prv_UninitializeMainStates:
.LFB337:
	.loc 1 114 0
	.loc 1 116 0
	movh.a	%a2, hi:NvM_Prv_Main_st
	lea	%a15, [%a2] lo:NvM_Prv_Main_st
	mov	%d15, 0
	.loc 1 118 0
	mov	%d2, 2
	.loc 1 116 0
	st.b	[%a2] lo:NvM_Prv_Main_st, %d15
	.loc 1 118 0
	st.b	[%a15] 1, %d2
	.loc 1 120 0
	st.b	[%a15] 2, %d15
	ret
.LFE337:
	.size	NvM_Prv_UninitializeMainStates, .-NvM_Prv_UninitializeMainStates
.section .text.NvM_Prv_IsNvmInitialized,"ax",@progbits
	.align 1
	.global	NvM_Prv_IsNvmInitialized
	.type	NvM_Prv_IsNvmInitialized, @function
NvM_Prv_IsNvmInitialized:
.LFB338:
	.loc 1 124 0
	.loc 1 125 0
	movh.a	%a15, hi:NvM_Prv_Main_st
	ld.bu	%d2, [%a15] lo:NvM_Prv_Main_st
	.loc 1 126 0
	ne	%d2, %d2, 0
	ret
.LFE338:
	.size	NvM_Prv_IsNvmInitialized, .-NvM_Prv_IsNvmInitialized
.section .text.NvM_Prv_IsNvmIdle,"ax",@progbits
	.align 1
	.global	NvM_Prv_IsNvmIdle
	.type	NvM_Prv_IsNvmIdle, @function
NvM_Prv_IsNvmIdle:
.LFB339:
	.loc 1 141 0
	.loc 1 142 0
	movh.a	%a15, hi:NvM_Prv_Main_st
	ld.bu	%d2, [%a15] lo:NvM_Prv_Main_st
	.loc 1 143 0
	eq	%d2, %d2, 1
	ret
.LFE339:
	.size	NvM_Prv_IsNvmIdle, .-NvM_Prv_IsNvmIdle
.section .text.NvM_Prv_IsCrcRecalcActive,"ax",@progbits
	.align 1
	.global	NvM_Prv_IsCrcRecalcActive
	.type	NvM_Prv_IsCrcRecalcActive, @function
NvM_Prv_IsCrcRecalcActive:
.LFB340:
	.loc 1 154 0
	.loc 1 155 0
	movh.a	%a15, hi:NvM_Prv_Main_st
	ld.bu	%d2, [%a15] lo:NvM_Prv_Main_st
	.loc 1 156 0
	eq	%d2, %d2, 3
	ret
.LFE340:
	.size	NvM_Prv_IsCrcRecalcActive, .-NvM_Prv_IsCrcRecalcActive
.section .text.NvM_Prv_IsMultiActive,"ax",@progbits
	.align 1
	.global	NvM_Prv_IsMultiActive
	.type	NvM_Prv_IsMultiActive, @function
NvM_Prv_IsMultiActive:
.LFB341:
	.loc 1 159 0
	.loc 1 160 0
	movh.a	%a15, hi:NvM_Prv_Main_st
	lea	%a15, [%a15] lo:NvM_Prv_Main_st
	ld.bu	%d2, [%a15] 1
	.loc 1 161 0
	eq	%d2, %d2, 0
	ret
.LFE341:
	.size	NvM_Prv_IsMultiActive, .-NvM_Prv_IsMultiActive
.section .text.NvM_Prv_GetActiveService,"ax",@progbits
	.align 1
	.global	NvM_Prv_GetActiveService
	.type	NvM_Prv_GetActiveService, @function
NvM_Prv_GetActiveService:
.LFB342:
	.loc 1 164 0
	.loc 1 166 0
	movh.a	%a15, hi:NvM_Prv_Main_st
	lea	%a15, [%a15] lo:NvM_Prv_Main_st
	ld.bu	%d2, [%a15] 2
	ret
.LFE342:
	.size	NvM_Prv_GetActiveService, .-NvM_Prv_GetActiveService
.section .text.NvM_Prv_GetActiveQueue,"ax",@progbits
	.align 1
	.global	NvM_Prv_GetActiveQueue
	.type	NvM_Prv_GetActiveQueue, @function
NvM_Prv_GetActiveQueue:
.LFB343:
	.loc 1 169 0
	.loc 1 171 0
	movh.a	%a15, hi:NvM_Prv_Main_st
	lea	%a15, [%a15] lo:NvM_Prv_Main_st
	ld.bu	%d2, [%a15] 1
	ret
.LFE343:
	.size	NvM_Prv_GetActiveQueue, .-NvM_Prv_GetActiveQueue
.section .text.NvM_Prv_UpdateActiveServiceData,"ax",@progbits
	.align 1
	.global	NvM_Prv_UpdateActiveServiceData
	.type	NvM_Prv_UpdateActiveServiceData, @function
NvM_Prv_UpdateActiveServiceData:
.LFB344:
	.loc 1 174 0
.LVL0:
	.loc 1 175 0
	movh.a	%a15, hi:NvM_Prv_Main_st
	lea	%a15, [%a15] lo:NvM_Prv_Main_st
	st.b	[%a15] 2, %d4
	.loc 1 176 0
	st.b	[%a15] 1, %d5
	ret
.LFE344:
	.size	NvM_Prv_UpdateActiveServiceData, .-NvM_Prv_UpdateActiveServiceData
.section .text.NvM_Prv_GetJobId,"ax",@progbits
	.align 1
	.global	NvM_Prv_GetJobId
	.type	NvM_Prv_GetJobId, @function
NvM_Prv_GetJobId:
.LFB345:
	.loc 1 180 0
.LVL1:
	.loc 1 186 0
	movh.a	%a15, hi:NvM_Prv_MapServiceBitToIdJob_caen
	min.u	%d4, %d4, 16
.LVL2:
	lea	%a15, [%a15] lo:NvM_Prv_MapServiceBitToIdJob_caen
	addsc.a	%a15, %a15, %d4, 0
	.loc 1 187 0
	ld.bu	%d2, [%a15]0
	ret
.LFE345:
	.size	NvM_Prv_GetJobId, .-NvM_Prv_GetJobId
.section .text.NvM_MainFunction,"ax",@progbits
	.align 1
	.global	NvM_MainFunction
	.type	NvM_MainFunction, @function
NvM_MainFunction:
.LFB349:
	.loc 1 283 0
.LVL3:
	.loc 1 287 0
	mov	%e4, 1
	call	Mutex_bGrabSpecifiedLock
.LVL4:
	jeq	%d2, 1, .L22
.LVL5:
.L12:
	.loc 1 302 0
	mov	%d4, 1
	mov	%d5, 1
	j	Mutex_bGrabSpecifiedLock
.LVL6:
.L22:
.LBB14:
.LBB15:
	.loc 1 241 0
	movh.a	%a15, hi:NvM_Prv_flgUsedSema_b
	ld.bu	%d15, [%a15] lo:NvM_Prv_flgUsedSema_b
	jnz	%d15, .L13
.LBE15:
.LBE14:
.LBB18:
.LBB19:
	.loc 1 202 0
	movh.a	%a12, hi:NvM_Prv_Main_st
.LBE19:
.LBE18:
.LBB22:
.LBB16:
	.loc 1 243 0
	st.b	[%a15] lo:NvM_Prv_flgUsedSema_b, %d2
.LVL7:
.LBE16:
.LBE22:
.LBB23:
.LBB20:
	.loc 1 202 0
	ld.bu	%d2, [%a12] lo:NvM_Prv_Main_st
	jlt.u	%d2, 4, .L14
	.loc 1 208 0
	st.b	[%a12] lo:NvM_Prv_Main_st, %d15
.L14:
	.loc 1 213 0
	mov	%e4, 14
	call	NvM_Prv_ErrorDetection_IsNvmInitialized
.LVL8:
	jnz	%d2, .L23
.L16:
.LBE20:
.LBE23:
.LBB24:
.LBB25:
	.loc 1 273 0
	mov	%d15, 0
	st.b	[%a15] lo:NvM_Prv_flgUsedSema_b, %d15
	j	.L12
.LVL9:
.L13:
.LBE25:
.LBE24:
.LBB26:
.LBB17:
	.loc 1 255 0
	mov	%d4, 14
	call	NvM_Prv_ErrorDetection_ReportReentrantError
.LVL10:
	j	.L12
.LVL11:
.L23:
.LBE17:
.LBE26:
.LBB27:
.LBB21:
	.loc 1 215 0
	lea	%a12, [%a12] lo:NvM_Prv_Main_st
	mov.aa	%a4, %a12
	call	NvM_Prv_MainFunctionArbitrate
.LVL12:
	jz	%d2, .L16
	.loc 1 217 0
	call	NvM_Prv_MainFunctionJobStart
.LVL13:
	.loc 1 218 0
	mov.aa	%a4, %a12
	call	NvM_Prv_MainFunctionResultEval
.LVL14:
	j	.L16
.LBE21:
.LBE27:
.LFE349:
	.size	NvM_MainFunction, .-NvM_MainFunction
	.global	NvM_Prv_Main_st
.section .bss.a2.NvM_Prv_Main_st,"aw",@nobits
	.align 1
	.type	NvM_Prv_Main_st, @object
	.size	NvM_Prv_Main_st, 4
NvM_Prv_Main_st:
	.zero	4
.section .bss.a1.NvM_Prv_flgUsedSema_b,"aw",@nobits
	.type	NvM_Prv_flgUsedSema_b, @object
	.size	NvM_Prv_flgUsedSema_b, 1
NvM_Prv_flgUsedSema_b:
	.zero	1
.section .rodata.a1.NvM_Prv_MapServiceBitToIdJob_caen,"a",@progbits
	.type	NvM_Prv_MapServiceBitToIdJob_caen, @object
	.size	NvM_Prv_MapServiceBitToIdJob_caen, 17
NvM_Prv_MapServiceBitToIdJob_caen:
	.byte	1
	.byte	11
	.byte	13
	.byte	0
	.byte	5
	.byte	2
	.byte	6
	.byte	15
	.byte	1
	.byte	2
	.byte	7
	.byte	3
	.byte	4
	.byte	15
	.byte	15
	.byte	15
	.byte	15
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
	.uaword	.LFB336
	.uaword	.LFE336-.LFB336
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB337
	.uaword	.LFE337-.LFB337
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB338
	.uaword	.LFE338-.LFB338
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB339
	.uaword	.LFE339-.LFB339
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB340
	.uaword	.LFE340-.LFB340
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB341
	.uaword	.LFE341-.LFB341
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB342
	.uaword	.LFE342-.LFB342
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB343
	.uaword	.LFE343-.LFB343
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB344
	.uaword	.LFE344-.LFB344
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB345
	.uaword	.LFE345-.LFB345
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB349
	.uaword	.LFE349-.LFB349
	.align 2
.LEFDE20:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 4 ".\\output\\inc/..\\..\\main\\_MainModule\\CalibData\\MAIN_CalibData.h"
	.file 5 ".\\output\\inc/..\\..\\rte\\Rte_Type.h"
	.file 6 ".\\output\\inc/..\\..\\bsw\\NvM\\api\\NvM_Types.h"
	.file 7 ".\\output\\inc/..\\..\\bsw\\NvM\\src\\Internal\\BlockData\\NvM_Prv_BlockDescriptor.h"
	.file 8 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\Cpu\\Std\\Ifx_Types.h"
	.file 9 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\_Impl\\IfxCpu_cfg.h"
	.file 10 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\Scu\\Std\\IfxScuCcu.h"
	.file 11 ".\\output\\inc/..\\..\\bswcdd\\DFM\\MutexDef.h"
	.file 12 ".\\output\\inc/..\\..\\bsw\\NvM\\integration\\NvM_Cfg_SchM.h"
	.file 13 ".\\output\\inc/..\\..\\bsw\\NvM\\src\\Internal\\BlockData\\NvM_Prv_BlockData.h"
	.file 14 ".\\output\\inc/..\\..\\bsw\\NvM\\src\\Internal\\ErrorDetection\\NvM_Prv_ErrorDetection.h"
	.file 15 ".\\output\\inc/..\\..\\bsw\\NvM\\src\\NvM_Prv.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x1aab
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\NvM\\src\\ScheduledFunctions\\NvM_MainFunction.c"
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
	.uaword	0x1dc
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
	.uaword	0x208
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"sint32"
	.byte	0x2
	.byte	0x60
	.uaword	0x22c
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
	.uaword	0x252
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
	.uaword	0x1dc
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
	.uaword	0x1cf
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x4
	.string	"eCalibIndex"
	.byte	0x1
	.byte	0x4
	.byte	0x15
	.uaword	0x39c
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
	.uaword	0x414
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
	.uaword	0x651
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
	.uaword	0x659
	.uleb128 0x9
	.uaword	0x1fa
	.uleb128 0x8
	.byte	0x4
	.uaword	0x664
	.uleb128 0xa
	.uleb128 0xb
	.string	"NvM_BlockIdType"
	.byte	0x5
	.uahalf	0x1ca
	.uaword	0x1fa
	.uleb128 0xb
	.string	"NvM_RequestResultType"
	.byte	0x5
	.uahalf	0x1d4
	.uaword	0x1cf
	.uleb128 0x8
	.byte	0x4
	.uaword	0x6a1
	.uleb128 0xc
	.byte	0x1
	.uaword	0x2bf
	.uleb128 0x8
	.byte	0x4
	.uaword	0x6ad
	.uleb128 0xd
	.byte	0x1
	.uaword	0x2bf
	.uaword	0x6bd
	.uleb128 0xe
	.uaword	0x1cf
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.byte	0xa2
	.uaword	0x703
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
	.byte	0x6
	.byte	0xa6
	.uaword	0x6bd
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.byte	0xab
	.uaword	0x798
	.uleb128 0x5
	.string	"NVM_PRV_ACTIVITY_NOT_INIT"
	.sleb128 0
	.uleb128 0x5
	.string	"NVM_PRV_ACTIVITY_IDLE"
	.sleb128 1
	.uleb128 0x5
	.string	"NVM_PRV_ACTIVITY_BUSY"
	.sleb128 2
	.uleb128 0x5
	.string	"NVM_PRV_ACTIVITY_RAM_BLOCK_CRC"
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.string	"NvM_Prv_Activities_ten"
	.byte	0x6
	.byte	0xb0
	.uaword	0x722
	.uleb128 0xf
	.byte	0x1
	.byte	0x6
	.uahalf	0x106
	.uaword	0x9c8
	.uleb128 0x5
	.string	"NvM_Prv_idJob_Idle_e"
	.sleb128 0
	.uleb128 0x5
	.string	"NvM_Prv_idJob_Read_e"
	.sleb128 1
	.uleb128 0x5
	.string	"NvM_Prv_idJob_Write_e"
	.sleb128 2
	.uleb128 0x5
	.string	"NvM_Prv_idJob_Erase_e"
	.sleb128 3
	.uleb128 0x5
	.string	"NvM_Prv_idJob_Restore_e"
	.sleb128 4
	.uleb128 0x5
	.string	"NvM_Prv_idJob_Maintain_e"
	.sleb128 5
	.uleb128 0x5
	.string	"NvM_Prv_idJob_Validate_e"
	.sleb128 6
	.uleb128 0x5
	.string	"NvM_Prv_idJob_Invalidate_e"
	.sleb128 7
	.uleb128 0x5
	.string	"NvM_Prv_idJob_ReadIdConfigForReadAll_e"
	.sleb128 8
	.uleb128 0x5
	.string	"NvM_Prv_idJob_InvalidateForFirstInitAll_e"
	.sleb128 9
	.uleb128 0x5
	.string	"NvM_Prv_idJob_RestoreForImplicitRecovery_e"
	.sleb128 10
	.uleb128 0x5
	.string	"NvM_Prv_idJob_InvalidateForRemoveNonResistant_e"
	.sleb128 11
	.uleb128 0x5
	.string	"NvM_Prv_idJob_RecalcRamBlkCrc_e"
	.sleb128 12
	.uleb128 0x5
	.string	"NvM_Prv_idJob_WriteAll_e"
	.sleb128 13
	.uleb128 0x5
	.string	"NvM_Prv_idJob_Suspend_e"
	.sleb128 14
	.uleb128 0x5
	.string	"NvM_Prv_idJob_Invalid_e"
	.sleb128 15
	.uleb128 0x5
	.string	"NvM_Prv_idJob_Count_e"
	.sleb128 16
	.byte	0
	.uleb128 0xb
	.string	"NvM_Prv_idJob_ten"
	.byte	0x6
	.uahalf	0x111
	.uaword	0x7b6
	.uleb128 0xf
	.byte	0x1
	.byte	0x6
	.uahalf	0x13e
	.uaword	0xc3e
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
	.string	"NvM_Prv_ServiceBit_tuo"
	.byte	0x6
	.uahalf	0x147
	.uaword	0x1fa
	.uleb128 0xb
	.string	"NvM_Prv_idService_tuo"
	.byte	0x6
	.uahalf	0x14c
	.uaword	0x1cf
	.uleb128 0xf
	.byte	0x1
	.byte	0x6
	.uahalf	0x159
	.uaword	0xcd9
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
	.uleb128 0xb
	.string	"NvM_Prv_idQueue_tuo"
	.byte	0x6
	.uahalf	0x174
	.uaword	0x1cf
	.uleb128 0x10
	.byte	0x4
	.byte	0x6
	.uahalf	0x1a5
	.uaword	0xd56
	.uleb128 0x11
	.string	"Activity_rAMwM_en"
	.byte	0x6
	.uahalf	0x1aa
	.uaword	0x798
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"idQueueActive_uo"
	.byte	0x6
	.uahalf	0x1ac
	.uaword	0xcd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x11
	.string	"idServiceActive_uo"
	.byte	0x6
	.uahalf	0x1ae
	.uaword	0xc5d
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0xb
	.string	"NvM_Prv_MainStates_tst"
	.byte	0x6
	.uahalf	0x1b0
	.uaword	0xcf5
	.uleb128 0x8
	.byte	0x4
	.uaword	0xd7b
	.uleb128 0xd
	.byte	0x1
	.uaword	0x2bf
	.uaword	0xd8b
	.uleb128 0xe
	.uaword	0x651
	.byte	0
	.uleb128 0x12
	.byte	0xc
	.byte	0x7
	.byte	0x77
	.uaword	0xdff
	.uleb128 0x13
	.string	"MultiBlockCallback_pfct"
	.byte	0x7
	.byte	0x7f
	.uaword	0xe10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.string	"RbMultiBlockStartCallback_pfct"
	.byte	0x7
	.byte	0x84
	.uaword	0xe22
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.string	"ObserverCallback_pfct"
	.byte	0x7
	.byte	0x8a
	.uaword	0xe42
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.uaword	0xe10
	.uleb128 0xe
	.uaword	0x1cf
	.uleb128 0xe
	.uaword	0x67d
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0xdff
	.uleb128 0x14
	.byte	0x1
	.uaword	0xe22
	.uleb128 0xe
	.uaword	0x1cf
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0xe16
	.uleb128 0xd
	.byte	0x1
	.uaword	0x2bf
	.uaword	0xe42
	.uleb128 0xe
	.uaword	0x665
	.uleb128 0xe
	.uaword	0x1cf
	.uleb128 0xe
	.uaword	0x67d
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0xe28
	.uleb128 0x3
	.string	"NvM_Prv_Common_tst"
	.byte	0x7
	.byte	0x8d
	.uaword	0xd8b
	.uleb128 0x12
	.byte	0x34
	.byte	0x7
	.byte	0x95
	.uaword	0x1044
	.uleb128 0x13
	.string	"idBlockMemIf_u16"
	.byte	0x7
	.byte	0x9b
	.uaword	0x1fa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.string	"nrBlockBytes_pu16"
	.byte	0x7
	.byte	0xa9
	.uaword	0x653
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.string	"nrBlockBytesStored_u16"
	.byte	0x7
	.byte	0xb5
	.uaword	0x1fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x13
	.string	"idxDevice_u8"
	.byte	0x7
	.byte	0xbb
	.uaword	0x1cf
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x13
	.string	"nrNvBlocks_u8"
	.byte	0x7
	.byte	0xc0
	.uaword	0x1cf
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0x13
	.string	"nrRomBlocks_u8"
	.byte	0x7
	.byte	0xc5
	.uaword	0x1cf
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x13
	.string	"adrRamBlock_ppv"
	.byte	0x7
	.byte	0xd6
	.uaword	0x1044
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x13
	.string	"adrRomBlock_pcv"
	.byte	0x7
	.byte	0xde
	.uaword	0x65e
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x13
	.string	"SingleBlockCallback_pfct"
	.byte	0x7
	.byte	0xe8
	.uaword	0x1064
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x13
	.string	"SingleBlockStartCallback_pfct"
	.byte	0x7
	.byte	0xf0
	.uaword	0x6a7
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x13
	.string	"InitBlockCallback_pfct"
	.byte	0x7
	.byte	0xf9
	.uaword	0x69b
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x11
	.string	"ReadRamBlockFromNvm_pfct"
	.byte	0x7
	.uahalf	0x102
	.uaword	0xd75
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x11
	.string	"WriteRamBlockToNvm_pfct"
	.byte	0x7
	.uahalf	0x10b
	.uaword	0xd75
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x11
	.string	"BlockManagementType_en"
	.byte	0x7
	.uahalf	0x110
	.uaword	0x703
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x11
	.string	"JobPriority_u8"
	.byte	0x7
	.uahalf	0x115
	.uaword	0x1cf
	.byte	0x2
	.byte	0x23
	.uleb128 0x2d
	.uleb128 0x11
	.string	"stFlags_uo"
	.byte	0x7
	.uahalf	0x13e
	.uaword	0x244
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0x104a
	.uleb128 0x9
	.uaword	0x651
	.uleb128 0xd
	.byte	0x1
	.uaword	0x2bf
	.uaword	0x1064
	.uleb128 0xe
	.uaword	0x1cf
	.uleb128 0xe
	.uaword	0x67d
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0x104f
	.uleb128 0xb
	.string	"NvM_Prv_BlockDescriptor_tst"
	.byte	0x7
	.uahalf	0x153
	.uaword	0xe62
	.uleb128 0x10
	.byte	0x4
	.byte	0x7
	.uahalf	0x158
	.uaword	0x10cb
	.uleb128 0x11
	.string	"PersistentId_u16"
	.byte	0x7
	.uahalf	0x15a
	.uaword	0x1fa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"BlockId_u16"
	.byte	0x7
	.uahalf	0x15b
	.uaword	0x665
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0xb
	.string	"NvM_Prv_PersId_BlockId_tst"
	.byte	0x7
	.uahalf	0x15c
	.uaword	0x108e
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x8
	.byte	0x4
	.uaword	0x10fc
	.uleb128 0x15
	.uleb128 0x12
	.byte	0x8
	.byte	0x8
	.byte	0x8c
	.uaword	0x1127
	.uleb128 0x13
	.string	"module"
	.byte	0x8
	.byte	0x8e
	.uaword	0x10f6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.string	"index"
	.byte	0x8
	.byte	0x8f
	.uaword	0x21e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"IfxModule_IndexMap"
	.byte	0x8
	.byte	0x90
	.uaword	0x10fd
	.uleb128 0x6
	.byte	0x1
	.byte	0x9
	.byte	0x88
	.uaword	0x11a2
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
	.uleb128 0xf
	.byte	0x1
	.byte	0xa
	.uahalf	0x160
	.uaword	0x12ab
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
	.uleb128 0x16
	.uaword	.LASF0
	.byte	0x1
	.byte	0xb
	.byte	0x1c
	.uaword	0x12de
	.uleb128 0x5
	.string	"MUTEX_GET_LOCK"
	.sleb128 0
	.uleb128 0x5
	.string	"MUTEX_RELEASE_LOCK"
	.sleb128 1
	.byte	0
	.uleb128 0x17
	.uaword	.LASF0
	.byte	0xb
	.byte	0x1f
	.uaword	0x12ab
	.uleb128 0x16
	.uaword	.LASF1
	.byte	0x1
	.byte	0xb
	.byte	0x21
	.uaword	0x1384
	.uleb128 0x5
	.string	"MUTEX_ESM_AND_DFLASH_INDEX"
	.sleb128 0
	.uleb128 0x5
	.string	"MUTEX_NVM_AND_DFLASH_INDEX"
	.sleb128 1
	.uleb128 0x5
	.string	"MUTEX_MEMIF_AND_DFLASH_INDEX"
	.sleb128 2
	.uleb128 0x5
	.string	"MUTEX_DFLASH_MULTI_CORE_INDEX"
	.sleb128 3
	.uleb128 0x5
	.string	"MUTEX_MAX_LOCK_NUM"
	.sleb128 4
	.byte	0
	.uleb128 0x17
	.uaword	.LASF1
	.byte	0xb
	.byte	0x27
	.uaword	0x12e9
	.uleb128 0x18
	.string	"SchM_Enter_NvM_Main"
	.byte	0xc
	.byte	0x20
	.byte	0x1
	.byte	0x3
	.uleb128 0x18
	.string	"SchM_Exit_NvM_Main"
	.byte	0xc
	.byte	0x25
	.byte	0x1
	.byte	0x3
	.uleb128 0x19
	.string	"NvM_Prv_ReleaseLock"
	.byte	0x1
	.uahalf	0x10e
	.byte	0x1
	.byte	0x3
	.uleb128 0x1a
	.byte	0x1
	.string	"NvM_Prv_InitializeMainStates"
	.byte	0x1
	.byte	0x67
	.byte	0x1
	.uaword	.LFB336
	.uaword	.LFE336
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x1a
	.byte	0x1
	.string	"NvM_Prv_UninitializeMainStates"
	.byte	0x1
	.byte	0x71
	.byte	0x1
	.uaword	.LFB337
	.uaword	.LFE337
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x1b
	.byte	0x1
	.string	"NvM_Prv_IsNvmInitialized"
	.byte	0x1
	.byte	0x7b
	.byte	0x1
	.uaword	0x28f
	.uaword	.LFB338
	.uaword	.LFE338
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x1b
	.byte	0x1
	.string	"NvM_Prv_IsNvmIdle"
	.byte	0x1
	.byte	0x8c
	.byte	0x1
	.uaword	0x28f
	.uaword	.LFB339
	.uaword	.LFE339
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x1b
	.byte	0x1
	.string	"NvM_Prv_IsCrcRecalcActive"
	.byte	0x1
	.byte	0x99
	.byte	0x1
	.uaword	0x28f
	.uaword	.LFB340
	.uaword	.LFE340
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x1b
	.byte	0x1
	.string	"NvM_Prv_IsMultiActive"
	.byte	0x1
	.byte	0x9e
	.byte	0x1
	.uaword	0x28f
	.uaword	.LFB341
	.uaword	.LFE341
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x1b
	.byte	0x1
	.string	"NvM_Prv_GetActiveService"
	.byte	0x1
	.byte	0xa3
	.byte	0x1
	.uaword	0xc5d
	.uaword	.LFB342
	.uaword	.LFE342
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x1b
	.byte	0x1
	.string	"NvM_Prv_GetActiveQueue"
	.byte	0x1
	.byte	0xa8
	.byte	0x1
	.uaword	0xcd9
	.uaword	.LFB343
	.uaword	.LFE343
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x1c
	.byte	0x1
	.string	"NvM_Prv_UpdateActiveServiceData"
	.byte	0x1
	.byte	0xad
	.byte	0x1
	.uaword	.LFB344
	.uaword	.LFE344
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x15a4
	.uleb128 0x1d
	.string	"idService_uo"
	.byte	0x1
	.byte	0xad
	.uaword	0xc5d
	.byte	0x1
	.byte	0x54
	.uleb128 0x1d
	.string	"idReqQueue_uo"
	.byte	0x1
	.byte	0xad
	.uaword	0xcd9
	.byte	0x1
	.byte	0x55
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.string	"NvM_Prv_GetJobId"
	.byte	0x1
	.byte	0xb3
	.byte	0x1
	.uaword	0x9c8
	.uaword	.LFB345
	.uaword	.LFE345
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x15e8
	.uleb128 0x1f
	.string	"ServiceBit_uo"
	.byte	0x1
	.byte	0xb3
	.uaword	0xc3e
	.uaword	.LLST0
	.byte	0
	.uleb128 0x20
	.string	"NvM_Prv_TryToGetLock"
	.byte	0x1
	.byte	0xe7
	.byte	0x1
	.uaword	0x28f
	.byte	0x3
	.uaword	0x1624
	.uleb128 0x21
	.string	"isLockAvailable_b"
	.byte	0x1
	.byte	0xe9
	.uaword	0x28f
	.byte	0
	.uleb128 0x18
	.string	"NvM_Prv_MainFunctionIntern"
	.byte	0x1
	.byte	0xc2
	.byte	0x1
	.byte	0x3
	.uleb128 0x22
	.byte	0x1
	.string	"NvM_MainFunction"
	.byte	0x1
	.uahalf	0x11a
	.byte	0x1
	.uaword	.LFB349
	.uaword	.LFE349
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x174c
	.uleb128 0x23
	.string	"flgUsed_b"
	.byte	0x1
	.uahalf	0x11d
	.uaword	0x28f
	.uaword	.LLST1
	.uleb128 0x24
	.uaword	0x15e8
	.uaword	.LBB14
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.uahalf	0x123
	.uaword	0x16b4
	.uleb128 0x25
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x26
	.uaword	0x160a
	.uaword	.LLST2
	.uleb128 0x27
	.uaword	.LVL10
	.uaword	0x1979
	.uleb128 0x28
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.uaword	0x1624
	.uaword	.LBB18
	.uaword	.Ldebug_ranges0+0x20
	.byte	0x1
	.uahalf	0x128
	.uaword	0x170e
	.uleb128 0x29
	.uaword	.LVL8
	.uaword	0x19b5
	.uaword	0x16e0
	.uleb128 0x28
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x28
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3e
	.byte	0
	.uleb128 0x29
	.uaword	.LVL12
	.uaword	0x19f6
	.uaword	0x16f4
	.uleb128 0x28
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.uaword	.LVL13
	.uaword	0x1a2e
	.uleb128 0x27
	.uaword	.LVL14
	.uaword	0x1a51
	.uleb128 0x28
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0x13c0
	.uaword	.LBB24
	.uaword	.LBE24
	.byte	0x1
	.uahalf	0x12b
	.uleb128 0x29
	.uaword	.LVL4
	.uaword	0x1a80
	.uaword	0x1736
	.uleb128 0x28
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x28
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2c
	.uaword	.LVL6
	.byte	0x1
	.uaword	0x1a80
	.uleb128 0x28
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0x28
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uaword	0x9c8
	.uaword	0x175c
	.uleb128 0x2e
	.uaword	0x2d5
	.byte	0x10
	.byte	0
	.uleb128 0x2f
	.string	"NvM_Prv_MapServiceBitToIdJob_caen"
	.byte	0x1
	.byte	0x32
	.uaword	0x178b
	.byte	0x5
	.byte	0x3
	.uaword	NvM_Prv_MapServiceBitToIdJob_caen
	.uleb128 0x9
	.uaword	0x174c
	.uleb128 0x2f
	.string	"NvM_Prv_flgUsedSema_b"
	.byte	0x1
	.byte	0x46
	.uaword	0x17b3
	.byte	0x5
	.byte	0x3
	.uaword	NvM_Prv_flgUsedSema_b
	.uleb128 0x30
	.uaword	0x28f
	.uleb128 0x31
	.string	"NvM_Prv_Main_st"
	.byte	0x1
	.byte	0x51
	.uaword	0xd56
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	NvM_Prv_Main_st
	.uleb128 0x32
	.string	"NvM_Prv_Common_cst"
	.byte	0x7
	.uahalf	0x16d
	.uaword	0x17f3
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.uaword	0xe48
	.uleb128 0x2d
	.uaword	0x106a
	.uaword	0x1808
	.uleb128 0x2e
	.uaword	0x2d5
	.byte	0x3b
	.byte	0
	.uleb128 0x32
	.string	"NvM_Prv_BlockDescriptors_acst"
	.byte	0x7
	.uahalf	0x172
	.uaword	0x1830
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.uaword	0x17f8
	.uleb128 0x2d
	.uaword	0x10cb
	.uaword	0x1845
	.uleb128 0x2e
	.uaword	0x2d5
	.byte	0x39
	.byte	0
	.uleb128 0x32
	.string	"NvM_Prv_PersId_BlockId_acst"
	.byte	0x7
	.uahalf	0x176
	.uaword	0x186b
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.uaword	0x1835
	.uleb128 0x2d
	.uaword	0x1cf
	.uaword	0x1880
	.uleb128 0x2e
	.uaword	0x2d5
	.byte	0x3b
	.byte	0
	.uleb128 0x33
	.string	"NvM_Prv_stBlock_au8"
	.byte	0xd
	.byte	0x54
	.uaword	0x1870
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.uaword	0x1fa
	.uaword	0x18ad
	.uleb128 0x2e
	.uaword	0x2d5
	.byte	0x3b
	.byte	0
	.uleb128 0x33
	.string	"NvM_Prv_stRequests_au16"
	.byte	0xd
	.byte	0x6b
	.uaword	0x189d
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.uaword	0x67d
	.uaword	0x18de
	.uleb128 0x2e
	.uaword	0x2d5
	.byte	0x3b
	.byte	0
	.uleb128 0x33
	.string	"NvM_Prv_stRequestResult_au8"
	.byte	0xd
	.byte	0x74
	.uaword	0x18ce
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.string	"NvM_Prv_idxDataSet_au8"
	.byte	0xd
	.byte	0x78
	.uaword	0x1870
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.string	"NvM_Prv_idConfigStored_u16"
	.byte	0xd
	.byte	0x81
	.uaword	0x1fa
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.uaword	0x1127
	.uaword	0x1957
	.uleb128 0x2e
	.uaword	0x2d5
	.byte	0x3
	.byte	0
	.uleb128 0x33
	.string	"IfxCpu_cfg_indexMap"
	.byte	0x9
	.byte	0xaa
	.uaword	0x1974
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.uaword	0x1947
	.uleb128 0x34
	.byte	0x1
	.string	"NvM_Prv_ErrorDetection_ReportReentrantError"
	.byte	0xe
	.byte	0x6d
	.byte	0x1
	.byte	0x1
	.uaword	0x19b5
	.uleb128 0xe
	.uaword	0xc5d
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.string	"NvM_Prv_ErrorDetection_IsNvmInitialized"
	.byte	0xe
	.byte	0x5a
	.byte	0x1
	.uaword	0x28f
	.byte	0x1
	.uaword	0x19f6
	.uleb128 0xe
	.uaword	0xc5d
	.uleb128 0xe
	.uaword	0x665
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.string	"NvM_Prv_MainFunctionArbitrate"
	.byte	0xf
	.byte	0x71
	.byte	0x1
	.uaword	0x28f
	.byte	0x1
	.uaword	0x1a28
	.uleb128 0xe
	.uaword	0x1a28
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0xd56
	.uleb128 0x36
	.byte	0x1
	.string	"NvM_Prv_MainFunctionJobStart"
	.byte	0xf
	.byte	0x72
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.byte	0x1
	.string	"NvM_Prv_MainFunctionResultEval"
	.byte	0xf
	.byte	0x73
	.byte	0x1
	.byte	0x1
	.uaword	0x1a80
	.uleb128 0xe
	.uaword	0x1a28
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.string	"Mutex_bGrabSpecifiedLock"
	.byte	0xb
	.byte	0x42
	.byte	0x1
	.uaword	0x28f
	.byte	0x1
	.uleb128 0xe
	.uaword	0x1384
	.uleb128 0xe
	.uaword	0x12de
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
	.uleb128 0x38
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x35
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x4
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0xa
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
	.uleb128 0x20
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uaword	.LVL1
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x15
	.byte	0x74
	.sleb128 0
	.byte	0x12
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x40
	.byte	0x16
	.byte	0x14
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x2d
	.byte	0x28
	.uahalf	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.uaword	.LVL2
	.uaword	.LFE345
	.uahalf	0x16
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x12
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x40
	.byte	0x16
	.byte	0x14
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x2d
	.byte	0x28
	.uahalf	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL3
	.uaword	.LVL5
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL7
	.uaword	.LVL9
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LVL11
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LFE349
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x6c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB336
	.uaword	.LFE336-.LFB336
	.uaword	.LFB337
	.uaword	.LFE337-.LFB337
	.uaword	.LFB338
	.uaword	.LFE338-.LFB338
	.uaword	.LFB339
	.uaword	.LFE339-.LFB339
	.uaword	.LFB340
	.uaword	.LFE340-.LFB340
	.uaword	.LFB341
	.uaword	.LFE341-.LFB341
	.uaword	.LFB342
	.uaword	.LFE342-.LFB342
	.uaword	.LFB343
	.uaword	.LFE343-.LFB343
	.uaword	.LFB344
	.uaword	.LFE344-.LFB344
	.uaword	.LFB345
	.uaword	.LFE345-.LFB345
	.uaword	.LFB349
	.uaword	.LFE349-.LFB349
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB14
	.uaword	.LBE14
	.uaword	.LBB22
	.uaword	.LBE22
	.uaword	.LBB26
	.uaword	.LBE26
	.uaword	0
	.uaword	0
	.uaword	.LBB18
	.uaword	.LBE18
	.uaword	.LBB23
	.uaword	.LBE23
	.uaword	.LBB27
	.uaword	.LBE27
	.uaword	0
	.uaword	0
	.uaword	.LFB336
	.uaword	.LFE336
	.uaword	.LFB337
	.uaword	.LFE337
	.uaword	.LFB338
	.uaword	.LFE338
	.uaword	.LFB339
	.uaword	.LFE339
	.uaword	.LFB340
	.uaword	.LFE340
	.uaword	.LFB341
	.uaword	.LFE341
	.uaword	.LFB342
	.uaword	.LFE342
	.uaword	.LFB343
	.uaword	.LFE343
	.uaword	.LFB344
	.uaword	.LFE344
	.uaword	.LFB345
	.uaword	.LFE345
	.uaword	.LFB349
	.uaword	.LFE349
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF1:
	.string	"MUTEX_LOCK_INDEX"
.LASF0:
	.string	"MUTEX_LOCK_OPERATION_TYPE"
	.extern	NvM_Prv_MainFunctionResultEval,STT_FUNC,0
	.extern	NvM_Prv_MainFunctionJobStart,STT_FUNC,0
	.extern	NvM_Prv_MainFunctionArbitrate,STT_FUNC,0
	.extern	NvM_Prv_ErrorDetection_ReportReentrantError,STT_FUNC,0
	.extern	NvM_Prv_ErrorDetection_IsNvmInitialized,STT_FUNC,0
	.extern	Mutex_bGrabSpecifiedLock,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
