	.file	"ASW_DEM.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.ASW_DEM_DataServices_CS_ExtendedDataRecord_Aged_counter_ReadData_func,"ax",@progbits
	.align 1
	.global	ASW_DEM_DataServices_CS_ExtendedDataRecord_Aged_counter_ReadData_func
	.type	ASW_DEM_DataServices_CS_ExtendedDataRecord_Aged_counter_ReadData_func, @function
ASW_DEM_DataServices_CS_ExtendedDataRecord_Aged_counter_ReadData_func:
.LFB260:
	.file 1 "ASW\\ASW_DEM\\src\\ASW_DEM.c"
	.loc 1 66 0
.LVL0:
	.loc 1 95 0
	mov	%d15, 2
	st.b	[%a4]0, %d15
	.loc 1 101 0
	mov	%d2, 0
	ret
.LFE260:
	.size	ASW_DEM_DataServices_CS_ExtendedDataRecord_Aged_counter_ReadData_func, .-ASW_DEM_DataServices_CS_ExtendedDataRecord_Aged_counter_ReadData_func
.section .text.ASW_DEM_DataServices_CS_ExtendedDataRecord_Fault_pending_counter_ReadData_func,"ax",@progbits
	.align 1
	.global	ASW_DEM_DataServices_CS_ExtendedDataRecord_Fault_pending_counter_ReadData_func
	.type	ASW_DEM_DataServices_CS_ExtendedDataRecord_Fault_pending_counter_ReadData_func, @function
ASW_DEM_DataServices_CS_ExtendedDataRecord_Fault_pending_counter_ReadData_func:
.LFB261:
	.loc 1 110 0
.LVL1:
	.loc 1 139 0
	mov	%d15, 21
	st.b	[%a4]0, %d15
	.loc 1 145 0
	mov	%d2, 0
	ret
.LFE261:
	.size	ASW_DEM_DataServices_CS_ExtendedDataRecord_Fault_pending_counter_ReadData_func, .-ASW_DEM_DataServices_CS_ExtendedDataRecord_Fault_pending_counter_ReadData_func
.section .text.ASW_DEM_bGetOBDFaultInfoClrCmd,"ax",@progbits
	.align 1
	.global	ASW_DEM_bGetOBDFaultInfoClrCmd
	.type	ASW_DEM_bGetOBDFaultInfoClrCmd, @function
ASW_DEM_bGetOBDFaultInfoClrCmd:
.LFB262:
	.loc 1 155 0
	.loc 1 157 0
	mov	%d2, 0
	ret
.LFE262:
	.size	ASW_DEM_bGetOBDFaultInfoClrCmd, .-ASW_DEM_bGetOBDFaultInfoClrCmd
.section .text.ASW_DEM_bGetOBDPDTCClrInhiCmd,"ax",@progbits
	.align 1
	.global	ASW_DEM_bGetOBDPDTCClrInhiCmd
	.type	ASW_DEM_bGetOBDPDTCClrInhiCmd, @function
ASW_DEM_bGetOBDPDTCClrInhiCmd:
.LFB263:
	.loc 1 160 0
	.loc 1 162 0
	mov	%d2, 0
	ret
.LFE263:
	.size	ASW_DEM_bGetOBDPDTCClrInhiCmd, .-ASW_DEM_bGetOBDPDTCClrInhiCmd
.section .text.ASW_DEM_bGetOBDPDTCClrCmd,"ax",@progbits
	.align 1
	.global	ASW_DEM_bGetOBDPDTCClrCmd
	.type	ASW_DEM_bGetOBDPDTCClrCmd, @function
ASW_DEM_bGetOBDPDTCClrCmd:
.LFB264:
	.loc 1 165 0
	.loc 1 167 0
	mov	%d2, 0
	ret
.LFE264:
	.size	ASW_DEM_bGetOBDPDTCClrCmd, .-ASW_DEM_bGetOBDPDTCClrCmd
.section .text.ASW_DEM_PeriodicRunnable_10ms_func,"ax",@progbits
	.align 1
	.global	ASW_DEM_PeriodicRunnable_10ms_func
	.type	ASW_DEM_PeriodicRunnable_10ms_func, @function
ASW_DEM_PeriodicRunnable_10ms_func:
.LFB265:
	.loc 1 173 0
	.loc 1 188 0
	movh.a	%a15, hi:Dem_ClrPDTCReq.18191
	.loc 1 173 0
	sub.a	%SP, 8
.LCFI0:
	.loc 1 176 0
	mov	%d15, 0
	.loc 1 188 0
	ld.bu	%d2, [%a15] lo:Dem_ClrPDTCReq.18191
	.loc 1 176 0
	st.b	[%SP] 7, %d15
	.loc 1 188 0
	jz	%d2, .L7
	.loc 1 190 0
	st.b	[%a15] lo:Dem_ClrPDTCReq.18191, %d15
.L7:
	.loc 1 197 0
	movh.a	%a15, hi:Dem_ClrFaultReq.18192
	ld.bu	%d15, [%a15] lo:Dem_ClrFaultReq.18192
	jz	%d15, .L8
	.loc 1 199 0
	mov	%d15, 0
	st.b	[%a15] lo:Dem_ClrFaultReq.18192, %d15
.L8:
	.loc 1 207 0
	movh.a	%a15, hi:Dem_OBD_IndicatorStatus.18190
	mov	%d4, 2
	lea	%a4, [%a15] lo:Dem_OBD_IndicatorStatus.18190
	call	Dem_GetIndicatorStatus
.LVL2:
	.loc 1 208 0
	ld.bu	%d15, [%a15] lo:Dem_OBD_IndicatorStatus.18190
	jz	%d15, .L10
	jeq	%d15, 1, .L11
.L10:
	.loc 1 214 0
	lea	%a4, [%SP] 7
	call	Dem_DcmReadCntSetDataOfPID21_User
.LVL3:
	.loc 1 215 0
	ld.bu	%d15, [%SP] 7
	jeq	%d15, 1, .L32
.L13:
	.loc 1 265 0
	movh.a	%a15, hi:OperationSettedFlag.18186
	ld.hu	%d15, [%a15] lo:OperationSettedFlag.18186
	jz	%d15, .L33
.L15:
	.loc 1 271 0
	call	IOHAL_u16Read_CH_DIO_IN_M_KEY_ON
.LVL4:
	.loc 1 275 0
	movh.a	%a15, hi:LastDrivingCycleStatus.18187
	.loc 1 273 0
	ne	%d2, %d2, 0
.LVL5:
	.loc 1 275 0
	extr.u	%d15, %d2, 0, 16
	ld.hu	%d3, [%a15] lo:LastDrivingCycleStatus.18187
	jeq	%d3, %d15, .L6
	.loc 1 277 0
	st.h	[%a15] lo:LastDrivingCycleStatus.18187, %d15
	.loc 1 281 0
	mov	%d4, 3
	.loc 1 279 0
	jnz	%d2, .L34
	.loc 1 285 0
	mov	%d5, 1
	call	Dem_SetOperationCycleState
.LVL6:
.L6:
	ret
.L11:
	.loc 1 225 0
	mov	%d4, 2
	call	Dem_GetTcuIndicatorStatus
.LVL7:
	.loc 1 230 0
	movh.a	%a15, hi:Dem_PID21SetFlag.18189
	ld.hu	%d2, [%a15] lo:Dem_PID21SetFlag.18189
	jnz	%d2, .L13
	.loc 1 233 0
	movh.a	%a4, hi:pid21CntSet_b.18193
	lea	%a4, [%a4] lo:pid21CntSet_b.18193
	.loc 1 232 0
	st.h	[%a15] lo:Dem_PID21SetFlag.18189, %d15
	.loc 1 233 0
	call	Dem_DcmReadCntSetDataOfPID21_User
.LVL8:
	j	.L13
.LVL9:
.L34:
	.loc 1 281 0
	mov	%d5, 0
	j	Dem_SetOperationCycleState
.LVL10:
.L33:
	.loc 1 267 0
	mov	%e4, 4
	.loc 1 268 0
	mov	%d15, -23206
	.loc 1 267 0
	call	Dem_SetOperationCycleState
.LVL11:
	.loc 1 268 0
	st.h	[%a15] lo:OperationSettedFlag.18186, %d15
	j	.L15
.L32:
	.loc 1 217 0
	mov	%e4, 0
	.loc 1 218 0
	mov	%d15, 0
	movh.a	%a15, hi:Dem_PID21SetFlag.18189
	.loc 1 217 0
	call	Dem_SetDataOfPID21_User
.LVL12:
	.loc 1 218 0
	st.h	[%a15] lo:Dem_PID21SetFlag.18189, %d15
	j	.L13
.LFE265:
	.size	ASW_DEM_PeriodicRunnable_10ms_func, .-ASW_DEM_PeriodicRunnable_10ms_func
.section .text.Dcm_DsmClearDiagnosticInformation,"ax",@progbits
	.align 1
	.global	Dcm_DsmClearDiagnosticInformation
	.type	Dcm_DsmClearDiagnosticInformation, @function
Dcm_DsmClearDiagnosticInformation:
.LFB266:
	.loc 1 313 0
.LVL13:
	.loc 1 315 0
	mov	%d15, 0
	st.b	[%a4]0, %d15
	.loc 1 317 0
	movh.a	%a15, hi:FaultEraseRequest
	mov	%d15, 21930
	st.h	[%a15] lo:FaultEraseRequest, %d15
	.loc 1 319 0
	call	CCP_vidGetFaultRecordReadFlag
.LVL14:
	jeq	%d2, 1, .L37
	.loc 1 325 0
	mov	%d2, 0
	ret
.L37:
	.loc 1 321 0
	call	FR_vidTrigClearNvm
.LVL15:
	.loc 1 325 0
	mov	%d2, 0
	ret
.LFE266:
	.size	Dcm_DsmClearDiagnosticInformation, .-Dcm_DsmClearDiagnosticInformation
.section .bss.a2.LastDrivingCycleStatus.18187,"aw",@nobits
	.align 1
	.type	LastDrivingCycleStatus.18187, @object
	.size	LastDrivingCycleStatus.18187, 2
LastDrivingCycleStatus.18187:
	.zero	2
.section .bss.a2.OperationSettedFlag.18186,"aw",@nobits
	.align 1
	.type	OperationSettedFlag.18186, @object
	.size	OperationSettedFlag.18186, 2
OperationSettedFlag.18186:
	.zero	2
.section .bss.a1.pid21CntSet_b.18193,"aw",@nobits
	.type	pid21CntSet_b.18193, @object
	.size	pid21CntSet_b.18193, 1
pid21CntSet_b.18193:
	.zero	1
.section .bss.a2.Dem_PID21SetFlag.18189,"aw",@nobits
	.align 1
	.type	Dem_PID21SetFlag.18189, @object
	.size	Dem_PID21SetFlag.18189, 2
Dem_PID21SetFlag.18189:
	.zero	2
.section .bss.a1.Dem_OBD_IndicatorStatus.18190,"aw",@nobits
	.type	Dem_OBD_IndicatorStatus.18190, @object
	.size	Dem_OBD_IndicatorStatus.18190, 1
Dem_OBD_IndicatorStatus.18190:
	.zero	1
.section .bss.a1.Dem_ClrFaultReq.18192,"aw",@nobits
	.type	Dem_ClrFaultReq.18192, @object
	.size	Dem_ClrFaultReq.18192, 1
Dem_ClrFaultReq.18192:
	.zero	1
.section .bss.a1.Dem_ClrPDTCReq.18191,"aw",@nobits
	.type	Dem_ClrPDTCReq.18191, @object
	.size	Dem_ClrPDTCReq.18191, 1
Dem_ClrPDTCReq.18191:
	.zero	1
	.global	AswDem_ShutdownTest
.section .bss.a1.AswDem_ShutdownTest,"aw",@nobits
	.type	AswDem_ShutdownTest, @object
	.size	AswDem_ShutdownTest, 1
AswDem_ShutdownTest:
	.zero	1
	.global	AswDem_Indicator
.section .bss.a1.AswDem_Indicator,"aw",@nobits
	.type	AswDem_Indicator, @object
	.size	AswDem_Indicator, 1
AswDem_Indicator:
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
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB264
	.uaword	.LFE264-.LFB264
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB265
	.uaword	.LFE265-.LFB265
	.byte	0x4
	.uaword	.LCFI0-.LFB265
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB266
	.uaword	.LFE266-.LFB266
	.align 2
.LEFDE12:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 4 ".\\output\\inc/..\\..\\rte\\Rte_Type.h"
	.file 5 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\DSM.h"
	.file 6 ".\\output\\inc/..\\..\\main\\_MainModule\\CalibData\\MAIN_CalibData.h"
	.file 7 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\Cpu\\Std\\Ifx_Types.h"
	.file 8 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\_Impl\\IfxCpu_cfg.h"
	.file 9 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\Scu\\Std\\IfxScuCcu.h"
	.file 10 ".\\output\\inc/..\\..\\bswcdd\\FR\\FR_EcuSetCfg.h"
	.file 11 ".\\output\\inc/..\\..\\rte\\Rte_ASW_DEM.h"
	.file 12 ".\\output\\inc/..\\..\\bswcdd\\IOHAL\\IOHAL_Cfg_I.h"
	.file 13 ".\\output\\inc/..\\..\\bswcdd\\FR\\FR_System.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xfae
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"ASW\\ASW_DEM\\src\\ASW_DEM.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0
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
	.uaword	0x1a8
	.uleb128 0x3
	.string	"uint16"
	.byte	0x2
	.byte	0x5b
	.uaword	0x1b9
	.uleb128 0x3
	.string	"sint32"
	.byte	0x2
	.byte	0x60
	.uaword	0x1fb
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x3
	.string	"uint32"
	.byte	0x2
	.byte	0x6a
	.uaword	0x1cf
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
	.uaword	0x1a8
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
	.uaword	0x20e
	.uleb128 0x4
	.byte	0x4
	.uaword	0x20e
	.uleb128 0x5
	.uaword	0x248
	.uleb128 0x6
	.string	"Dcm_NegativeResponseCodeType"
	.byte	0x4
	.uahalf	0x118
	.uaword	0x20e
	.uleb128 0x6
	.string	"Dem_IndicatorStatusType"
	.byte	0x4
	.uahalf	0x149
	.uaword	0x20e
	.uleb128 0x6
	.string	"Dem_OperationCycleIdType"
	.byte	0x4
	.uahalf	0x152
	.uaword	0x20e
	.uleb128 0x6
	.string	"Dem_OperationCycleStateType"
	.byte	0x4
	.uahalf	0x154
	.uaword	0x20e
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2f9
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2d4
	.uleb128 0x7
	.string	"DSM_CONTROL_UNIT_INDEX"
	.byte	0x1
	.byte	0x5
	.byte	0x2b
	.uaword	0x3de
	.uleb128 0x8
	.string	"DSM_UNIT_0"
	.sleb128 0
	.uleb128 0x8
	.string	"DSM_UNIT_1"
	.sleb128 1
	.uleb128 0x8
	.string	"DSM_UNIT_2"
	.sleb128 2
	.uleb128 0x8
	.string	"DSM_UNIT_3"
	.sleb128 3
	.uleb128 0x8
	.string	"DSM_UNIT_4"
	.sleb128 4
	.uleb128 0x8
	.string	"DSM_UNIT_MAX_NUM"
	.sleb128 5
	.byte	0
	.uleb128 0x7
	.string	"eCalibIndex"
	.byte	0x1
	.byte	0x6
	.byte	0x15
	.uaword	0x499
	.uleb128 0x8
	.string	"eMAIN_CALIB_BUF_UI_INDEX"
	.sleb128 0
	.uleb128 0x8
	.string	"eMAIN_CALIB_BUF_VI_INDEX"
	.sleb128 1
	.uleb128 0x8
	.string	"eMAIN_CALIB_BUF_WI_INDEX"
	.sleb128 2
	.uleb128 0x8
	.string	"eMAIN_CALIB_BUF_VO_INDEX"
	.sleb128 3
	.uleb128 0x8
	.string	"eMAIN_CALIB_BUF_VALID_PARAM_NO"
	.sleb128 4
	.uleb128 0x8
	.string	"eMAIN_CALIB_BUF_MAX_NO"
	.sleb128 16
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.byte	0x6
	.byte	0x1f
	.uaword	0x511
	.uleb128 0x8
	.string	"eMAIN_CALIB_IDX_MCU1"
	.sleb128 0
	.uleb128 0x8
	.string	"eMAIN_CALIB_IDX_MCU2"
	.sleb128 1
	.uleb128 0x8
	.string	"eMAIN_CALIB_IDX_ACM"
	.sleb128 2
	.uleb128 0x8
	.string	"eMAIN_CALIB_IDX_EPS"
	.sleb128 3
	.uleb128 0x8
	.string	"eMAIN_CALIB_ECU_NO"
	.sleb128 4
	.byte	0
	.uleb128 0x7
	.string	"eRcGainIndex"
	.byte	0x1
	.byte	0x6
	.byte	0x27
	.uaword	0x74e
	.uleb128 0x8
	.string	"eMAIN_CALIB_BUF_RC00_INDEX"
	.sleb128 0
	.uleb128 0x8
	.string	"eMAIN_CALIB_BUF_RC01_INDEX"
	.sleb128 1
	.uleb128 0x8
	.string	"eMAIN_CALIB_BUF_RC02_INDEX"
	.sleb128 2
	.uleb128 0x8
	.string	"eMAIN_CALIB_BUF_RC03_INDEX"
	.sleb128 3
	.uleb128 0x8
	.string	"eMAIN_CALIB_BUF_RC04_INDEX"
	.sleb128 4
	.uleb128 0x8
	.string	"eMAIN_CALIB_BUF_RC05_INDEX"
	.sleb128 5
	.uleb128 0x8
	.string	"eMAIN_CALIB_BUF_RC06_INDEX"
	.sleb128 6
	.uleb128 0x8
	.string	"eMAIN_CALIB_BUF_RC07_INDEX"
	.sleb128 7
	.uleb128 0x8
	.string	"eMAIN_CALIB_BUF_RC08_INDEX"
	.sleb128 8
	.uleb128 0x8
	.string	"eMAIN_CALIB_BUF_RC09_INDEX"
	.sleb128 9
	.uleb128 0x8
	.string	"eMAIN_CALIB_BUF_RC10_INDEX"
	.sleb128 10
	.uleb128 0x8
	.string	"eMAIN_CALIB_BUF_RC11_INDEX"
	.sleb128 11
	.uleb128 0x8
	.string	"eMAIN_CALIB_BUF_RC12_INDEX"
	.sleb128 12
	.uleb128 0x8
	.string	"eMAIN_CALIB_BUF_RC13_INDEX"
	.sleb128 13
	.uleb128 0x8
	.string	"eMAIN_CALIB_BUF_RC14_INDEX"
	.sleb128 14
	.uleb128 0x8
	.string	"eMAIN_CALIB_BUF_RC15_INDEX"
	.sleb128 15
	.uleb128 0x8
	.string	"eMAIN_CALIB_BUF_RC16_INDEX"
	.sleb128 16
	.uleb128 0x8
	.string	"eMAIN_CALIB_BUF_VALID_RC_NO"
	.sleb128 17
	.uleb128 0x8
	.string	"eMAIN_CALIB_BUF_MAX_RC_NO"
	.sleb128 25
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x4
	.byte	0x4
	.uaword	0x75c
	.uleb128 0xa
	.uleb128 0xb
	.byte	0x8
	.byte	0x7
	.byte	0x8c
	.uaword	0x787
	.uleb128 0xc
	.string	"module"
	.byte	0x7
	.byte	0x8e
	.uaword	0x756
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"index"
	.byte	0x7
	.byte	0x8f
	.uaword	0x229
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"IfxModule_IndexMap"
	.byte	0x7
	.byte	0x90
	.uaword	0x75d
	.uleb128 0x9
	.byte	0x1
	.byte	0x8
	.byte	0x88
	.uaword	0x802
	.uleb128 0x8
	.string	"IfxCpu_Index_0"
	.sleb128 0
	.uleb128 0x8
	.string	"IfxCpu_Index_1"
	.sleb128 1
	.uleb128 0x8
	.string	"IfxCpu_Index_2"
	.sleb128 2
	.uleb128 0x8
	.string	"IfxCpu_Index_3"
	.sleb128 3
	.uleb128 0x8
	.string	"IfxCpu_Index_none"
	.sleb128 4
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.byte	0x9
	.uahalf	0x160
	.uaword	0x90b
	.uleb128 0x8
	.string	"IfxScuCcu_ModulationAmplitude_0p5"
	.sleb128 0
	.uleb128 0x8
	.string	"IfxScuCcu_ModulationAmplitude_1p0"
	.sleb128 1
	.uleb128 0x8
	.string	"IfxScuCcu_ModulationAmplitude_1p25"
	.sleb128 2
	.uleb128 0x8
	.string	"IfxScuCcu_ModulationAmplitude_1p5"
	.sleb128 3
	.uleb128 0x8
	.string	"IfxScuCcu_ModulationAmplitude_2p0"
	.sleb128 4
	.uleb128 0x8
	.string	"IfxScuCcu_ModulationAmplitude_2p5"
	.sleb128 5
	.uleb128 0x8
	.string	"IfxScuCcu_ModulationAmplitude_count"
	.sleb128 6
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.byte	0xa
	.byte	0x17
	.uaword	0x959
	.uleb128 0x8
	.string	"eFR_MGTCU_INDEX"
	.sleb128 0
	.uleb128 0x8
	.string	"eFR_DCAC_INDEX"
	.sleb128 1
	.uleb128 0x8
	.string	"eFR_PDU_INDEX"
	.sleb128 2
	.uleb128 0x8
	.string	"eFR_ECU_MAX_NUM"
	.sleb128 3
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.string	"ASW_DEM_bGetOBDPDTCClrInhiCmd"
	.byte	0x1
	.byte	0x9f
	.byte	0x1
	.uaword	0x283
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.string	"ASW_DEM_bGetOBDPDTCClrCmd"
	.byte	0x1
	.byte	0xa4
	.byte	0x1
	.uaword	0x283
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.string	"ASW_DEM_bGetOBDFaultInfoClrCmd"
	.byte	0x1
	.byte	0x9a
	.byte	0x1
	.uaword	0x283
	.byte	0x1
	.uleb128 0xf
	.byte	0x1
	.string	"ASW_DEM_DataServices_CS_ExtendedDataRecord_Aged_counter_ReadData_func"
	.byte	0x1
	.byte	0x3e
	.byte	0x1
	.uaword	0x2b3
	.uaword	.LFB260
	.uaword	.LFE260
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xa48
	.uleb128 0x10
	.string	"Data"
	.byte	0x1
	.byte	0x40
	.uaword	0x2c9
	.byte	0x1
	.byte	0x64
	.uleb128 0x11
	.uaword	.LASF0
	.byte	0x1
	.byte	0x4a
	.uaword	0x2b3
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.string	"ASW_DEM_DataServices_CS_ExtendedDataRecord_Fault_pending_counter_ReadData_func"
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.uaword	0x2b3
	.uaword	.LFB261
	.uaword	.LFE261
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xacb
	.uleb128 0x10
	.string	"Data"
	.byte	0x1
	.byte	0x6c
	.uaword	0x2c9
	.byte	0x1
	.byte	0x64
	.uleb128 0x11
	.uaword	.LASF0
	.byte	0x1
	.byte	0x76
	.uaword	0x2b3
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x9a5
	.uaword	.LFB262
	.uaword	.LFE262
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x12
	.uaword	0x959
	.uaword	.LFB263
	.uaword	.LFE263
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x12
	.uaword	0x981
	.uaword	.LFB264
	.uaword	.LFE264
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x13
	.byte	0x1
	.string	"ASW_DEM_PeriodicRunnable_10ms_func"
	.byte	0x1
	.byte	0xa9
	.byte	0x1
	.uaword	.LFB265
	.uaword	.LFE265
	.uaword	.LLST0
	.byte	0x1
	.uaword	0xd36
	.uleb128 0x14
	.string	"u8TempCntSet"
	.byte	0x1
	.byte	0xb0
	.uaword	0x20e
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x14
	.string	"OperationSettedFlag"
	.byte	0x1
	.byte	0xb1
	.uaword	0x21b
	.byte	0x5
	.byte	0x3
	.uaword	OperationSettedFlag.18186
	.uleb128 0x14
	.string	"LastDrivingCycleStatus"
	.byte	0x1
	.byte	0xb2
	.uaword	0x21b
	.byte	0x5
	.byte	0x3
	.uaword	LastDrivingCycleStatus.18187
	.uleb128 0x15
	.string	"LastWarmUpCycleStatus"
	.byte	0x1
	.byte	0xb3
	.uaword	0x21b
	.byte	0
	.uleb128 0x14
	.string	"Dem_PID21SetFlag"
	.byte	0x1
	.byte	0xb4
	.uaword	0x21b
	.byte	0x5
	.byte	0x3
	.uaword	Dem_PID21SetFlag.18189
	.uleb128 0x14
	.string	"Dem_OBD_IndicatorStatus"
	.byte	0x1
	.byte	0xb5
	.uaword	0x2f9
	.byte	0x5
	.byte	0x3
	.uaword	Dem_OBD_IndicatorStatus.18190
	.uleb128 0x14
	.string	"Dem_ClrPDTCReq"
	.byte	0x1
	.byte	0xb6
	.uaword	0x283
	.byte	0x5
	.byte	0x3
	.uaword	Dem_ClrPDTCReq.18191
	.uleb128 0x14
	.string	"Dem_ClrFaultReq"
	.byte	0x1
	.byte	0xb7
	.uaword	0x283
	.byte	0x5
	.byte	0x3
	.uaword	Dem_ClrFaultReq.18192
	.uleb128 0x14
	.string	"pid21CntSet_b"
	.byte	0x1
	.byte	0xb8
	.uaword	0x20e
	.byte	0x5
	.byte	0x3
	.uaword	pid21CntSet_b.18193
	.uleb128 0x16
	.string	"u16KeyOnState"
	.byte	0x1
	.uahalf	0x10f
	.uaword	0x21b
	.uaword	.LLST1
	.uleb128 0x16
	.string	"bKeyOnState"
	.byte	0x1
	.uahalf	0x111
	.uaword	0x283
	.uaword	.LLST2
	.uleb128 0x17
	.uaword	.LVL2
	.uaword	0xe60
	.uaword	0xc96
	.uleb128 0x18
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	Dem_OBD_IndicatorStatus.18190
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x17
	.uaword	.LVL3
	.uaword	0xe90
	.uaword	0xcaa
	.uleb128 0x18
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.byte	0
	.uleb128 0x19
	.uaword	.LVL4
	.uaword	0xec6
	.uleb128 0x17
	.uaword	.LVL6
	.uaword	0xef1
	.uaword	0xccb
	.uleb128 0x18
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.uleb128 0x17
	.uaword	.LVL7
	.uaword	0xf25
	.uaword	0xcde
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x17
	.uaword	.LVL8
	.uaword	0xe90
	.uaword	0xcf5
	.uleb128 0x18
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	pid21CntSet_b.18193
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL10
	.byte	0x1
	.uaword	0xef1
	.uaword	0xd09
	.uleb128 0x18
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x17
	.uaword	.LVL11
	.uaword	0xef1
	.uaword	0xd21
	.uleb128 0x18
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x34
	.byte	0
	.uleb128 0x1b
	.uaword	.LVL12
	.uaword	0xf53
	.uleb128 0x18
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.string	"Dcm_DsmClearDiagnosticInformation"
	.byte	0x1
	.uahalf	0x138
	.byte	0x1
	.uaword	0x2b3
	.uaword	.LFB266
	.uaword	.LFE266
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xdd2
	.uleb128 0x1d
	.string	"Nrc_u8"
	.byte	0x1
	.uahalf	0x138
	.uaword	0x364
	.uaword	.LLST3
	.uleb128 0x1d
	.string	"Sid_u8"
	.byte	0x1
	.uahalf	0x138
	.uaword	0x20e
	.uaword	.LLST4
	.uleb128 0x1e
	.string	"retVal_u8"
	.byte	0x1
	.uahalf	0x13a
	.uaword	0x2b3
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x13f
	.uaword	0x1fb
	.byte	0x1
	.uaword	0xdbf
	.uleb128 0x20
	.byte	0
	.uleb128 0x19
	.uaword	.LVL14
	.uaword	0xf84
	.uleb128 0x19
	.uaword	.LVL15
	.uaword	0xf98
	.byte	0
	.uleb128 0x21
	.string	"FaultEraseRequest"
	.byte	0x5
	.byte	0x55
	.uaword	0x21b
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.uaword	0x787
	.uaword	0xdfd
	.uleb128 0x23
	.uaword	0x202
	.byte	0x3
	.byte	0
	.uleb128 0x21
	.string	"IfxCpu_cfg_indexMap"
	.byte	0x8
	.byte	0xaa
	.uaword	0xe1a
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.uaword	0xded
	.uleb128 0x24
	.string	"AswDem_Indicator"
	.byte	0x1
	.byte	0x95
	.uaword	0x20e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	AswDem_Indicator
	.uleb128 0x24
	.string	"AswDem_ShutdownTest"
	.byte	0x1
	.byte	0x96
	.uaword	0x20e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	AswDem_ShutdownTest
	.uleb128 0x25
	.byte	0x1
	.string	"Dem_GetIndicatorStatus"
	.byte	0xb
	.byte	0x77
	.byte	0x1
	.uaword	0x2b3
	.byte	0x1
	.uaword	0xe90
	.uleb128 0x26
	.uaword	0x20e
	.uleb128 0x26
	.uaword	0x35e
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.string	"Dem_DcmReadCntSetDataOfPID21_User"
	.byte	0x1
	.byte	0x2a
	.byte	0x1
	.uaword	0x2b3
	.byte	0x1
	.uaword	0xec6
	.uleb128 0x26
	.uaword	0x2c9
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.string	"IOHAL_u16Read_CH_DIO_IN_M_KEY_ON"
	.byte	0xc
	.byte	0x7d
	.byte	0x1
	.uaword	0x21b
	.byte	0x1
	.uleb128 0x25
	.byte	0x1
	.string	"Dem_SetOperationCycleState"
	.byte	0xb
	.byte	0x7f
	.byte	0x1
	.uaword	0x2b3
	.byte	0x1
	.uaword	0xf25
	.uleb128 0x26
	.uaword	0x319
	.uleb128 0x26
	.uaword	0x33a
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.string	"Dem_GetTcuIndicatorStatus"
	.byte	0x1
	.byte	0x2b
	.byte	0x1
	.uaword	0x2b3
	.byte	0x1
	.uaword	0xf53
	.uleb128 0x26
	.uaword	0x20e
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.string	"Dem_SetDataOfPID21_User"
	.byte	0x1
	.byte	0x29
	.byte	0x1
	.uaword	0x2b3
	.byte	0x1
	.uaword	0xf84
	.uleb128 0x26
	.uaword	0x2cf
	.uleb128 0x26
	.uaword	0x283
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x13f
	.uaword	0x1fb
	.byte	0x1
	.uaword	0xf98
	.uleb128 0x20
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.string	"FR_vidTrigClearNvm"
	.byte	0xd
	.byte	0x28
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
	.uleb128 0x8
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x35
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x1c
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
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
	.uleb128 0x1b
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x18
	.byte	0
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x26
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
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
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
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
	.uaword	.LFB265
	.uaword	.LCFI0
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0
	.uaword	.LFE265
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL5
	.uaword	.LVL6-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL9
	.uaword	.LVL10-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL13
	.uaword	.LVL14-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL14-1
	.uaword	.LFE266
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL13
	.uaword	.LVL14-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL14-1
	.uaword	.LFE266
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
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
	.uaword	.LFB260
	.uaword	.LFE260-.LFB260
	.uaword	.LFB261
	.uaword	.LFE261-.LFB261
	.uaword	.LFB262
	.uaword	.LFE262-.LFB262
	.uaword	.LFB263
	.uaword	.LFE263-.LFB263
	.uaword	.LFB264
	.uaword	.LFE264-.LFB264
	.uaword	.LFB265
	.uaword	.LFE265-.LFB265
	.uaword	.LFB266
	.uaword	.LFE266-.LFB266
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB260
	.uaword	.LFE260
	.uaword	.LFB261
	.uaword	.LFE261
	.uaword	.LFB262
	.uaword	.LFE262
	.uaword	.LFB263
	.uaword	.LFE263
	.uaword	.LFB264
	.uaword	.LFE264
	.uaword	.LFB265
	.uaword	.LFE265
	.uaword	.LFB266
	.uaword	.LFE266
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF1:
	.string	"CCP_vidGetFaultRecordReadFlag"
.LASF0:
	.string	"retValue"
	.extern	FR_vidTrigClearNvm,STT_FUNC,0
	.extern	CCP_vidGetFaultRecordReadFlag,STT_FUNC,0
	.extern	FaultEraseRequest,STT_OBJECT,2
	.extern	Dem_SetDataOfPID21_User,STT_FUNC,0
	.extern	Dem_GetTcuIndicatorStatus,STT_FUNC,0
	.extern	Dem_SetOperationCycleState,STT_FUNC,0
	.extern	IOHAL_u16Read_CH_DIO_IN_M_KEY_ON,STT_FUNC,0
	.extern	Dem_DcmReadCntSetDataOfPID21_User,STT_FUNC,0
	.extern	Dem_GetIndicatorStatus,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
