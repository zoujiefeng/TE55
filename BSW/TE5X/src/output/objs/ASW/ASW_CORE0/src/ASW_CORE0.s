	.file	"ASW_CORE0.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.RE_CORE0_SWC_100ms_func,"ax",@progbits
	.align 1
	.global	RE_CORE0_SWC_100ms_func
	.type	RE_CORE0_SWC_100ms_func, @function
RE_CORE0_SWC_100ms_func:
.LFB19:
	.file 1 "ASW\\ASW_CORE0\\src\\ASW_CORE0.c"
	.loc 1 71 0
.LVL0:
	.loc 1 77 0
	movh.a	%a15, hi:CPU0_PercentUtilization
	movh.a	%a5, hi:CPU0_StatusUtiliazation
	lea	%a4, [%a15] lo:CPU0_PercentUtilization
	mov	%d4, 1000
	lea	%a5, [%a5] lo:CPU0_StatusUtiliazation
	call	CPUUtilizationCore0_func
.LVL1:
	.loc 1 78 0
	ld.w	%d15, [%a15] lo:CPU0_PercentUtilization
	movh.a	%a15, hi:CPU0_MaximumUtilization
	ld.w	%d2, [%a15] lo:CPU0_MaximumUtilization
	cmp.f	%d2, %d15, %d2
	jz.t	%d2, 2, .L11
	.loc 1 80 0
	st.w	[%a15] lo:CPU0_MaximumUtilization, %d15
.L11:
	.loc 1 83 0
	movh.a	%a4, hi:Core0_MaxUserStackUtilization
	lea	%a4, [%a4] lo:Core0_MaxUserStackUtilization
	.loc 1 86 0
	movh.a	%a12, hi:SWC_Sent100Byte2ASWCore1
	.loc 1 83 0
	call	GetMaxUserStackUtilization_Core0_func
.LVL2:
	.loc 1 86 0
	ld.bu	%d15, [%a12] lo:SWC_Sent100Byte2ASWCore1
	jz	%d15, .L5
	movh.a	%a4, hi:SWC_DataTranferTest
	.loc 1 90 0
	movh	%d4, 257
	lea	%a4, [%a4] lo:SWC_DataTranferTest
	movh	%d5, 32639
	addi	%d4, %d4, 257
	mov.aa	%a15, %a4
	addi	%d5, %d5, 32639
	sh	%d3, %d4, 7
	lea	%a2, 24
.L6:
	.loc 1 90 0 is_stmt 0 discriminator 3
	ld.w	%d2, [%a15]0
	and	%d15, %d2, %d5
	addi	%d15, %d15, 257
	xor	%d2, %d4
	addih	%d15, %d15, 257
	and	%d2, %d3
	xor	%d15, %d2
	st.w	[%a15+]4, %d15
	loop	%a2, .L6
	mov	%d15, 100
	movh.a	%a15, hi:SWC_cnt_temp
	st.b	[%a15] lo:SWC_cnt_temp, %d15
	.loc 1 93 0 is_stmt 1
	mov	%d15, 0
	.loc 1 92 0
	call	Rte_Write_ASW_CORE0_PPort_TransmitData2Core1_Data_ptr
.LVL3:
	.loc 1 93 0
	st.b	[%a12] lo:SWC_Sent100Byte2ASWCore1, %d15
.L5:
	.loc 1 96 0
	movh.a	%a4, hi:SWC_DataReceiveTest
	lea	%a4, [%a4] lo:SWC_DataReceiveTest
	call	Rte_Read_ASW_CORE0_RPort_ReceiveDatafromCore1_Data_ptr
.LVL4:
	.loc 1 98 0
	movh.a	%a15, hi:Data2Core0
	movh.a	%a4, hi:CoreStatusCore0
	movh.a	%a5, hi:DataOfCore0
	lea	%a4, [%a4] lo:CoreStatusCore0
	ld.hu	%d4, [%a15] lo:Data2Core0
	lea	%a5, [%a5] lo:DataOfCore0
	call	RE_CORE0_SERVER_func
.LVL5:
	.loc 1 101 0
	movh.a	%a4, hi:IRV_Read_1
	lea	%a4, [%a4] lo:IRV_Read_1
	j	Rte_IrvRead_ASW_CORE0_RE_CORE0_SWC_100ms_Explicit_IRV_1
.LVL6:
.LFE19:
	.size	RE_CORE0_SWC_100ms_func, .-RE_CORE0_SWC_100ms_func
.section .text.RE_CORE0_SWC_10ms_func,"ax",@progbits
	.align 1
	.global	RE_CORE0_SWC_10ms_func
	.type	RE_CORE0_SWC_10ms_func, @function
RE_CORE0_SWC_10ms_func:
.LFB20:
	.loc 1 117 0
	.loc 1 131 0
	movh.a	%a4, hi:IRV_Write_1
	lea	%a4, [%a4] lo:IRV_Write_1
	j	Rte_IrvWrite_ASW_CORE0_RE_CORE0_SWC_10ms_Explicit_IRV_1
.LVL7:
.LFE20:
	.size	RE_CORE0_SWC_10ms_func, .-RE_CORE0_SWC_10ms_func
.section .text.RE_Core0FaultReaction,"ax",@progbits
	.align 1
	.global	RE_Core0FaultReaction
	.type	RE_Core0FaultReaction, @function
RE_Core0FaultReaction:
.LFB21:
	.loc 1 151 0
.LVL8:
	.loc 1 152 0
	jeq	%d4, 4, .L17
	eq	%d4, %d4, 13
.LVL9:
	jz	%d4, .L19
.L17:
	.loc 1 158 0
	mov	%d4, 16
	j	Rte_Write_ASW_CORE0_PPort_SwcModeRequest_AppMode
.LVL10:
.L19:
	ret
.LFE21:
	.size	RE_Core0FaultReaction, .-RE_Core0FaultReaction
	.global	Core0_MaxUserStackUtilization
.section .bss.a4.Core0_MaxUserStackUtilization,"aw",@nobits
	.align 2
	.type	Core0_MaxUserStackUtilization, @object
	.size	Core0_MaxUserStackUtilization, 4
Core0_MaxUserStackUtilization:
	.zero	4
	.global	CPU0_MaximumUtilization
.section .bss.a4.CPU0_MaximumUtilization,"aw",@nobits
	.align 2
	.type	CPU0_MaximumUtilization, @object
	.size	CPU0_MaximumUtilization, 4
CPU0_MaximumUtilization:
	.zero	4
	.global	CPU0_PercentUtilization
.section .bss.a4.CPU0_PercentUtilization,"aw",@nobits
	.align 2
	.type	CPU0_PercentUtilization, @object
	.size	CPU0_PercentUtilization, 4
CPU0_PercentUtilization:
	.zero	4
	.global	DataOfCore0
.section .bss.a2.DataOfCore0,"aw",@nobits
	.align 1
	.type	DataOfCore0, @object
	.size	DataOfCore0, 2
DataOfCore0:
	.zero	2
	.global	Data2Core0
.section .bss.a2.Data2Core0,"aw",@nobits
	.align 1
	.type	Data2Core0, @object
	.size	Data2Core0, 2
Data2Core0:
	.zero	2
	.global	CoreStatusCore0
.section .bss.a2.CoreStatusCore0,"aw",@nobits
	.align 1
	.type	CoreStatusCore0, @object
	.size	CoreStatusCore0, 2
CoreStatusCore0:
	.zero	2
	.global	Test_ErrorHook
.section .bss.a1.Test_ErrorHook,"aw",@nobits
	.type	Test_ErrorHook, @object
	.size	Test_ErrorHook, 1
Test_ErrorHook:
	.zero	1
	.global	IRV_Write_1
.section .bss.a1.IRV_Write_1,"aw",@nobits
	.type	IRV_Write_1, @object
	.size	IRV_Write_1, 100
IRV_Write_1:
	.zero	100
	.global	IRV_Read_1
.section .bss.a1.IRV_Read_1,"aw",@nobits
	.type	IRV_Read_1, @object
	.size	IRV_Read_1, 100
IRV_Read_1:
	.zero	100
	.global	Test_CallCore0Server
.section .bss.a1.Test_CallCore0Server,"aw",@nobits
	.type	Test_CallCore0Server, @object
	.size	Test_CallCore0Server, 1
Test_CallCore0Server:
	.zero	1
	.global	CPU0_StatusUtiliazation
.section .bss.a1.CPU0_StatusUtiliazation,"aw",@nobits
	.type	CPU0_StatusUtiliazation, @object
	.size	CPU0_StatusUtiliazation, 1
CPU0_StatusUtiliazation:
	.zero	1
	.global	SWC_Sent100Byte2ASWCore1
.section .bss.a1.SWC_Sent100Byte2ASWCore1,"aw",@nobits
	.type	SWC_Sent100Byte2ASWCore1, @object
	.size	SWC_Sent100Byte2ASWCore1, 1
SWC_Sent100Byte2ASWCore1:
	.zero	1
	.global	SWC_cnt_temp
.section .bss.a1.SWC_cnt_temp,"aw",@nobits
	.type	SWC_cnt_temp, @object
	.size	SWC_cnt_temp, 1
SWC_cnt_temp:
	.zero	1
	.global	SWC_DataReceiveTest
.section .bss.a1.SWC_DataReceiveTest,"aw",@nobits
	.type	SWC_DataReceiveTest, @object
	.size	SWC_DataReceiveTest, 100
SWC_DataReceiveTest:
	.zero	100
	.global	SWC_DataTranferTest
.section .bss.a4.SWC_DataTranferTest,"aw",@nobits
	.align 2
	.type	SWC_DataTranferTest, @object
	.size	SWC_DataTranferTest, 100
SWC_DataTranferTest:
	.zero	100
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
	.uaword	.LFB19
	.uaword	.LFE19-.LFB19
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB20
	.uaword	.LFE20-.LFB20
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB21
	.uaword	.LFE21-.LFB21
	.align 2
.LEFDE4:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 4 ".\\output\\inc/..\\..\\os\\Os.h"
	.file 5 ".\\output\\inc/..\\..\\rte\\Rte_Type.h"
	.file 6 ".\\output\\inc/..\\..\\rte\\Rte_ASW_CORE0.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xd05
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"ASW\\ASW_CORE0\\src\\ASW_CORE0.c"
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
	.uaword	0x1ac
	.uleb128 0x3
	.string	"uint16"
	.byte	0x2
	.byte	0x5b
	.uaword	0x1bd
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
	.uaword	0x27e
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
	.uleb128 0x6
	.byte	0x44
	.byte	0x4
	.byte	0xc7
	.uaword	0x2f5
	.uleb128 0x7
	.string	"store"
	.byte	0x4
	.byte	0xc8
	.uaword	0x2f5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x8
	.uaword	0x23e
	.uaword	0x305
	.uleb128 0x9
	.uaword	0x206
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.string	"Os_JumpBufType"
	.byte	0x4
	.byte	0xc9
	.uaword	0x31b
	.uleb128 0x8
	.uaword	0x2dc
	.uaword	0x32b
	.uleb128 0x9
	.uaword	0x206
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Os_StackTraceType"
	.byte	0x4
	.byte	0xdb
	.uaword	0x1d3
	.uleb128 0x6
	.byte	0x8
	.byte	0x4
	.byte	0xdc
	.uaword	0x368
	.uleb128 0x7
	.string	"sp"
	.byte	0x4
	.byte	0xdc
	.uaword	0x32b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"ctx"
	.byte	0x4
	.byte	0xdc
	.uaword	0x32b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"Os_StackValueType"
	.byte	0x4
	.byte	0xdc
	.uaword	0x344
	.uleb128 0x3
	.string	"Os_StackSizeType"
	.byte	0x4
	.byte	0xdd
	.uaword	0x368
	.uleb128 0x3
	.string	"Os_VoidVoidFunctionType"
	.byte	0x4
	.byte	0xe0
	.uaword	0x3b8
	.uleb128 0x4
	.byte	0x4
	.uaword	0x3be
	.uleb128 0xa
	.byte	0x1
	.uleb128 0x3
	.string	"ApplicationType"
	.byte	0x4
	.byte	0xee
	.uaword	0x1ac
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2d7
	.uleb128 0x4
	.byte	0x4
	.uaword	0x21f
	.uleb128 0xb
	.string	"Os_StopwatchTickType"
	.byte	0x4
	.uahalf	0x10f
	.uaword	0x1d3
	.uleb128 0xb
	.string	"CoreIdType"
	.byte	0x4
	.uahalf	0x11b
	.uaword	0x21f
	.uleb128 0xc
	.string	"Os_MeterInfoType_s"
	.byte	0x30
	.byte	0x4
	.uahalf	0x172
	.uaword	0x4ca
	.uleb128 0xd
	.string	"elapsed"
	.byte	0x4
	.uahalf	0x173
	.uaword	0x3e3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"previous"
	.byte	0x4
	.uahalf	0x174
	.uaword	0x3e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"max"
	.byte	0x4
	.uahalf	0x175
	.uaword	0x3e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"cumulative"
	.byte	0x4
	.uahalf	0x176
	.uaword	0x3e3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"stackbase"
	.byte	0x4
	.uahalf	0x177
	.uaword	0x368
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"stackusage"
	.byte	0x4
	.uahalf	0x178
	.uaword	0x381
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"stackmax"
	.byte	0x4
	.uahalf	0x179
	.uaword	0x381
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.uaword	.LASF0
	.byte	0x4
	.uahalf	0x17a
	.uaword	0x381
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0
	.uleb128 0xb
	.string	"Os_MeterInfoType"
	.byte	0x4
	.uahalf	0x17b
	.uaword	0x413
	.uleb128 0xb
	.string	"Os_bitmask"
	.byte	0x4
	.uahalf	0x1a7
	.uaword	0x1d3
	.uleb128 0xb
	.string	"Os_pset0Type"
	.byte	0x4
	.uahalf	0x1a8
	.uaword	0x4e3
	.uleb128 0xb
	.string	"Os_pset1Type"
	.byte	0x4
	.uahalf	0x1a9
	.uaword	0x4e3
	.uleb128 0xb
	.string	"Os_pset2Type"
	.byte	0x4
	.uahalf	0x1aa
	.uaword	0x4e3
	.uleb128 0xb
	.string	"Os_pset3Type"
	.byte	0x4
	.uahalf	0x1ab
	.uaword	0x4e3
	.uleb128 0xf
	.byte	0x4
	.byte	0x4
	.uahalf	0x1ac
	.uaword	0x580
	.uleb128 0x10
	.string	"p0"
	.byte	0x4
	.uahalf	0x1ad
	.uaword	0x4f6
	.uleb128 0x10
	.string	"p1"
	.byte	0x4
	.uahalf	0x1ae
	.uaword	0x50b
	.uleb128 0x10
	.string	"p2"
	.byte	0x4
	.uahalf	0x1af
	.uaword	0x520
	.uleb128 0x10
	.string	"p3"
	.byte	0x4
	.uahalf	0x1b0
	.uaword	0x535
	.byte	0
	.uleb128 0xb
	.string	"Os_psetType"
	.byte	0x4
	.uahalf	0x1b1
	.uaword	0x54a
	.uleb128 0xf
	.byte	0x4
	.byte	0x4
	.uahalf	0x1b3
	.uaword	0x5ca
	.uleb128 0x10
	.string	"t0"
	.byte	0x4
	.uahalf	0x1b4
	.uaword	0x4e3
	.uleb128 0x10
	.string	"t1"
	.byte	0x4
	.uahalf	0x1b5
	.uaword	0x4e3
	.uleb128 0x10
	.string	"t2"
	.byte	0x4
	.uahalf	0x1b6
	.uaword	0x4e3
	.uleb128 0x10
	.string	"t3"
	.byte	0x4
	.uahalf	0x1b7
	.uaword	0x4e3
	.byte	0
	.uleb128 0xb
	.string	"Os_tpmaskType"
	.byte	0x4
	.uahalf	0x1b8
	.uaword	0x594
	.uleb128 0xc
	.string	"Os_TaskDynType_s"
	.byte	0x78
	.byte	0x4
	.uahalf	0x1ba
	.uaword	0x647
	.uleb128 0xd
	.string	"terminate_jump_buf"
	.byte	0x4
	.uahalf	0x1bb
	.uaword	0x305
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"meter"
	.byte	0x4
	.uahalf	0x1bc
	.uaword	0x4ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"termination_state"
	.byte	0x4
	.uahalf	0x1bd
	.uaword	0x23e
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.byte	0
	.uleb128 0xb
	.string	"Os_TaskDynType"
	.byte	0x4
	.uahalf	0x1be
	.uaword	0x5e0
	.uleb128 0xc
	.string	"Os_TaskType_s"
	.byte	0x28
	.byte	0x4
	.uahalf	0x1c0
	.uaword	0x738
	.uleb128 0xd
	.string	"dynamic"
	.byte	0x4
	.uahalf	0x1c1
	.uaword	0x738
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"entry_function"
	.byte	0x4
	.uahalf	0x1c2
	.uaword	0x399
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"pset"
	.byte	0x4
	.uahalf	0x1c3
	.uaword	0x580
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"base_tpmask"
	.byte	0x4
	.uahalf	0x1c4
	.uaword	0x5ca
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"tpmask"
	.byte	0x4
	.uahalf	0x1c5
	.uaword	0x5ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"core_id"
	.byte	0x4
	.uahalf	0x1c6
	.uaword	0x400
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"index"
	.byte	0x4
	.uahalf	0x1c7
	.uaword	0x23e
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.uaword	.LASF0
	.byte	0x4
	.uahalf	0x1c8
	.uaword	0x381
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"access"
	.byte	0x4
	.uahalf	0x1c9
	.uaword	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"application"
	.byte	0x4
	.uahalf	0x1ca
	.uaword	0x3c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x25
	.byte	0
	.uleb128 0x5
	.uaword	0x73d
	.uleb128 0x4
	.byte	0x4
	.uaword	0x647
	.uleb128 0xb
	.string	"Os_TaskType"
	.byte	0x4
	.uahalf	0x1cb
	.uaword	0x65e
	.uleb128 0xb
	.string	"Array100ByteDataElement"
	.byte	0x5
	.uahalf	0x214
	.uaword	0x777
	.uleb128 0x8
	.uaword	0x212
	.uaword	0x787
	.uleb128 0x9
	.uaword	0x206
	.byte	0x63
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x26f
	.uleb128 0x11
	.byte	0x1
	.string	"RE_CORE0_SWC_100ms_func"
	.byte	0x1
	.byte	0x43
	.byte	0x1
	.uaword	.LFB19
	.uaword	.LFE19
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x85e
	.uleb128 0x12
	.string	"retValue"
	.byte	0x1
	.byte	0x49
	.uaword	0x2bb
	.byte	0
	.uleb128 0x13
	.uaword	.LVL1
	.uaword	0xb06
	.uaword	0x7f2
	.uleb128 0x14
	.byte	0x1
	.byte	0x65
	.byte	0x5
	.byte	0x3
	.uaword	CPU0_StatusUtiliazation
	.uleb128 0x14
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	CPU0_PercentUtilization
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x3e8
	.byte	0
	.uleb128 0x13
	.uaword	.LVL2
	.uaword	0xb39
	.uaword	0x809
	.uleb128 0x14
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	Core0_MaxUserStackUtilization
	.byte	0
	.uleb128 0x15
	.uaword	.LVL3
	.uaword	0xb73
	.uleb128 0x13
	.uaword	.LVL4
	.uaword	0xbbd
	.uaword	0x829
	.uleb128 0x14
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	SWC_DataReceiveTest
	.byte	0
	.uleb128 0x13
	.uaword	.LVL5
	.uaword	0xc08
	.uaword	0x849
	.uleb128 0x14
	.byte	0x1
	.byte	0x65
	.byte	0x5
	.byte	0x3
	.uaword	DataOfCore0
	.uleb128 0x14
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	CoreStatusCore0
	.byte	0
	.uleb128 0x16
	.uaword	.LVL6
	.byte	0x1
	.uaword	0xc37
	.uleb128 0x14
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	IRV_Read_1
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"RE_CORE0_SWC_10ms_func"
	.byte	0x1
	.byte	0x71
	.byte	0x1
	.uaword	.LFB20
	.uaword	.LFE20
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x89f
	.uleb128 0x16
	.uaword	.LVL7
	.byte	0x1
	.uaword	0xc7f
	.uleb128 0x14
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	IRV_Write_1
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"RE_Core0FaultReaction"
	.byte	0x1
	.byte	0x96
	.byte	0x1
	.uaword	.LFB21
	.uaword	.LFE21
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x8ec
	.uleb128 0x17
	.string	"Error"
	.byte	0x1
	.byte	0x96
	.uaword	0x2a9
	.uaword	.LLST0
	.uleb128 0x16
	.uaword	.LVL10
	.byte	0x1
	.uaword	0xcc7
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0x8
	.uaword	0x743
	.uaword	0x8f7
	.uleb128 0x18
	.byte	0
	.uleb128 0x19
	.string	"Os_const_tasks0"
	.byte	0x4
	.uahalf	0x461
	.uaword	0x911
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.uaword	0x8ec
	.uleb128 0x1a
	.string	"SWC_DataTranferTest"
	.byte	0x1
	.byte	0x25
	.uaword	0x777
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	SWC_DataTranferTest
	.uleb128 0x1a
	.string	"SWC_DataReceiveTest"
	.byte	0x1
	.byte	0x26
	.uaword	0x777
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	SWC_DataReceiveTest
	.uleb128 0x1a
	.string	"SWC_cnt_temp"
	.byte	0x1
	.byte	0x27
	.uaword	0x212
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	SWC_cnt_temp
	.uleb128 0x1a
	.string	"SWC_Sent100Byte2ASWCore1"
	.byte	0x1
	.byte	0x28
	.uaword	0x212
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	SWC_Sent100Byte2ASWCore1
	.uleb128 0x1a
	.string	"CPU0_StatusUtiliazation"
	.byte	0x1
	.byte	0x29
	.uaword	0x212
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CPU0_StatusUtiliazation
	.uleb128 0x1a
	.string	"Test_CallCore0Server"
	.byte	0x1
	.byte	0x2a
	.uaword	0x212
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Test_CallCore0Server
	.uleb128 0x1a
	.string	"IRV_Read_1"
	.byte	0x1
	.byte	0x2b
	.uaword	0x757
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	IRV_Read_1
	.uleb128 0x1a
	.string	"IRV_Write_1"
	.byte	0x1
	.byte	0x2c
	.uaword	0x757
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	IRV_Write_1
	.uleb128 0x1a
	.string	"Test_ErrorHook"
	.byte	0x1
	.byte	0x2d
	.uaword	0xa35
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Test_ErrorHook
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x1a
	.string	"CoreStatusCore0"
	.byte	0x1
	.byte	0x33
	.uaword	0x21f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CoreStatusCore0
	.uleb128 0x1a
	.string	"Data2Core0"
	.byte	0x1
	.byte	0x34
	.uaword	0x21f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Data2Core0
	.uleb128 0x1a
	.string	"DataOfCore0"
	.byte	0x1
	.byte	0x35
	.uaword	0x21f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	DataOfCore0
	.uleb128 0x1a
	.string	"CPU0_PercentUtilization"
	.byte	0x1
	.byte	0x3b
	.uaword	0x26f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CPU0_PercentUtilization
	.uleb128 0x1a
	.string	"CPU0_MaximumUtilization"
	.byte	0x1
	.byte	0x3c
	.uaword	0x26f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CPU0_MaximumUtilization
	.uleb128 0x1a
	.string	"Core0_MaxUserStackUtilization"
	.byte	0x1
	.byte	0x3d
	.uaword	0x26f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Core0_MaxUserStackUtilization
	.uleb128 0x1b
	.byte	0x1
	.string	"CPUUtilizationCore0_func"
	.byte	0x6
	.byte	0x7c
	.byte	0x1
	.byte	0x1
	.uaword	0xb39
	.uleb128 0x1c
	.uaword	0x23e
	.uleb128 0x1c
	.uaword	0x787
	.uleb128 0x1c
	.uaword	0x2d1
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.string	"GetMaxUserStackUtilization_Core0_func"
	.byte	0x6
	.byte	0x7a
	.byte	0x1
	.uaword	0x2bb
	.byte	0x1
	.uaword	0xb73
	.uleb128 0x1c
	.uaword	0x787
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.string	"Rte_Write_ASW_CORE0_PPort_TransmitData2Core1_Data_ptr"
	.byte	0x6
	.byte	0x8f
	.byte	0x1
	.uaword	0x2bb
	.byte	0x1
	.uaword	0xbbd
	.uleb128 0x1c
	.uaword	0x3d7
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.string	"Rte_Read_ASW_CORE0_RPort_ReceiveDatafromCore1_Data_ptr"
	.byte	0x6
	.byte	0x8d
	.byte	0x1
	.uaword	0x2bb
	.byte	0x1
	.uaword	0xc08
	.uleb128 0x1c
	.uaword	0x2d1
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.string	"RE_CORE0_SERVER_func"
	.byte	0x6
	.byte	0x80
	.byte	0x1
	.byte	0x1
	.uaword	0xc37
	.uleb128 0x1c
	.uaword	0x3dd
	.uleb128 0x1c
	.uaword	0x21f
	.uleb128 0x1c
	.uaword	0x3dd
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.string	"Rte_IrvRead_ASW_CORE0_RE_CORE0_SWC_100ms_Explicit_IRV_1"
	.byte	0x6
	.byte	0xae
	.byte	0x1
	.byte	0x1
	.uaword	0xc7f
	.uleb128 0x1c
	.uaword	0x2d1
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.string	"Rte_IrvWrite_ASW_CORE0_RE_CORE0_SWC_10ms_Explicit_IRV_1"
	.byte	0x6
	.byte	0xb0
	.byte	0x1
	.byte	0x1
	.uaword	0xcc7
	.uleb128 0x1c
	.uaword	0x3d7
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.string	"Rte_Write_ASW_CORE0_PPort_SwcModeRequest_AppMode"
	.byte	0x6
	.byte	0x8e
	.byte	0x1
	.uaword	0x2bb
	.byte	0x1
	.uleb128 0x1c
	.uaword	0x212
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
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
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
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x3f
	.uleb128 0xc
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
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL9
	.uaword	.LFE21
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x2c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB19
	.uaword	.LFE19-.LFB19
	.uaword	.LFB20
	.uaword	.LFE20-.LFB20
	.uaword	.LFB21
	.uaword	.LFE21-.LFB21
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB19
	.uaword	.LFE19
	.uaword	.LFB20
	.uaword	.LFE20
	.uaword	.LFB21
	.uaword	.LFE21
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"stackbudget"
	.extern	Rte_Write_ASW_CORE0_PPort_SwcModeRequest_AppMode,STT_FUNC,0
	.extern	Rte_IrvWrite_ASW_CORE0_RE_CORE0_SWC_10ms_Explicit_IRV_1,STT_FUNC,0
	.extern	Rte_IrvRead_ASW_CORE0_RE_CORE0_SWC_100ms_Explicit_IRV_1,STT_FUNC,0
	.extern	RE_CORE0_SERVER_func,STT_FUNC,0
	.extern	Rte_Read_ASW_CORE0_RPort_ReceiveDatafromCore1_Data_ptr,STT_FUNC,0
	.extern	Rte_Write_ASW_CORE0_PPort_TransmitData2Core1_Data_ptr,STT_FUNC,0
	.extern	GetMaxUserStackUtilization_Core0_func,STT_FUNC,0
	.extern	CPUUtilizationCore0_func,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
