	.file	"RSID.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Runnable_0203_RequestRoutineResults,"ax",@progbits
	.align 1
	.global	Runnable_0203_RequestRoutineResults
	.type	Runnable_0203_RequestRoutineResults, @function
Runnable_0203_RequestRoutineResults:
.LFB19:
	.file 1 "ASW\\RSID\\RSID.c"
	.loc 1 16 0
.LVL0:
	.loc 1 19 0
	mov	%d15, 0
	st.b	[%a5]0, %d15
	.loc 1 22 0
	mov	%d2, 0
	ret
.LFE19:
	.size	Runnable_0203_RequestRoutineResults, .-Runnable_0203_RequestRoutineResults
.section .text.Runnable_0203_Start,"ax",@progbits
	.align 1
	.global	Runnable_0203_Start
	.type	Runnable_0203_Start, @function
Runnable_0203_Start:
.LFB20:
	.loc 1 31 0
.LVL1:
	.loc 1 35 0
	mov	%d15, 0
	st.b	[%a5]0, %d15
	.loc 1 31 0
	mov.aa	%a15, %a5
	.loc 1 37 0
	call	MAIN_vidGetProgCondition
.LVL2:
	mov	%d15, %d2
.LVL3:
	.loc 1 38 0
	call	GMAIN_vidGetProgCondition
.LVL4:
	.loc 1 39 0
	and	%d2, %d2, 255
	eq	%d3, %d2, 0
	or.eq	%d3, %d15, 0
	.loc 1 32 0
	mov	%d2, 0
.LVL5:
	.loc 1 39 0
	jz	%d3, .L3
	.loc 1 41 0
	mov	%d15, 34
.LVL6:
	st.b	[%a15]0, %d15
.LVL7:
	.loc 1 42 0
	mov	%d2, 1
.LVL8:
.L3:
	.loc 1 46 0
	ret
.LFE20:
	.size	Runnable_0203_Start, .-Runnable_0203_Start
.section .text.Runnable_RSID_100ms,"ax",@progbits
	.align 1
	.global	Runnable_RSID_100ms
	.type	Runnable_RSID_100ms, @function
Runnable_RSID_100ms:
.LFB21:
	.loc 1 52 0
	ret
.LFE21:
	.size	Runnable_RSID_100ms, .-Runnable_RSID_100ms
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
	.file 4 ".\\output\\inc/..\\..\\rte\\Rte_Type.h"
	.file 5 ".\\output\\inc/..\\..\\main\\McuMain\\MAIN_tsk.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x61f
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"ASW\\RSID\\RSID.c"
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
	.uaword	0x19e
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
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
	.uaword	0x19e
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
	.uaword	0x204
	.uleb128 0x4
	.string	"Dcm_NegativeResponseCodeType"
	.byte	0x4
	.uahalf	0x118
	.uaword	0x204
	.uleb128 0x4
	.string	"Dcm_OpStatusType"
	.byte	0x4
	.uahalf	0x11a
	.uaword	0x204
	.uleb128 0x4
	.string	"Dcm_RequestDataOut_DcmDspRoutine_0203_DcmDspRequestRoutineResultsOutSignal_0PrimitivType"
	.byte	0x4
	.uahalf	0x11e
	.uaword	0x204
	.uleb128 0x4
	.string	"Dcm_RequestDataOut_DcmDspRoutine_0203_DcmDspRequestRoutineResultsOutSignal_0Type"
	.byte	0x4
	.uahalf	0x120
	.uaword	0x2d3
	.uleb128 0x4
	.string	"Dcm_StartDataOut_DcmDspRoutine_0203_DcmDspStartRoutineOutSignalPrimitivType"
	.byte	0x4
	.uahalf	0x126
	.uaword	0x204
	.uleb128 0x4
	.string	"Dcm_StartDataOut_DcmDspRoutine_0203_DcmDspStartRoutineOutSignalType"
	.byte	0x4
	.uahalf	0x128
	.uaword	0x38d
	.uleb128 0x5
	.byte	0x4
	.uaword	0x334
	.uleb128 0x5
	.byte	0x4
	.uaword	0x295
	.uleb128 0x5
	.byte	0x4
	.uaword	0x3e1
	.uleb128 0x6
	.byte	0x1
	.string	"Runnable_0203_RequestRoutineResults"
	.byte	0x1
	.byte	0xd
	.byte	0x1
	.uaword	0x27f
	.uaword	.LFB19
	.uaword	.LFE19
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x4db
	.uleb128 0x7
	.uaword	.LASF0
	.byte	0x1
	.byte	0xd
	.uaword	0x2ba
	.byte	0x1
	.byte	0x54
	.uleb128 0x8
	.string	"DataOut_DcmDspRequestRoutineResultsOutSignal_0"
	.byte	0x1
	.byte	0xe
	.uaword	0x4db
	.byte	0x1
	.byte	0x64
	.uleb128 0x7
	.uaword	.LASF1
	.byte	0x1
	.byte	0xf
	.uaword	0x4e0
	.byte	0x1
	.byte	0x65
	.uleb128 0x9
	.uaword	.LASF2
	.byte	0x1
	.byte	0x11
	.uaword	0x27f
	.byte	0
	.byte	0
	.uleb128 0xa
	.uaword	0x42d
	.uleb128 0xa
	.uaword	0x433
	.uleb128 0x6
	.byte	0x1
	.string	"Runnable_0203_Start"
	.byte	0x1
	.byte	0x1c
	.byte	0x1
	.uaword	0x27f
	.uaword	.LFB20
	.uaword	.LFE20
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x5c6
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0x1
	.byte	0x1c
	.uaword	0x2ba
	.uaword	.LLST0
	.uleb128 0xc
	.string	"DataOut_DcmDspStartRoutineOutSignal"
	.byte	0x1
	.byte	0x1d
	.uaword	0x5c6
	.uaword	.LLST1
	.uleb128 0xb
	.uaword	.LASF1
	.byte	0x1
	.byte	0x1e
	.uaword	0x4e0
	.uaword	.LLST2
	.uleb128 0xd
	.uaword	.LASF2
	.byte	0x1
	.byte	0x20
	.uaword	0x27f
	.uaword	.LLST3
	.uleb128 0xe
	.string	"bLocProgCond1"
	.byte	0x1
	.byte	0x21
	.uaword	0x24f
	.uaword	.LLST4
	.uleb128 0xe
	.string	"bLocProgCond2"
	.byte	0x1
	.byte	0x22
	.uaword	0x24f
	.uaword	.LLST5
	.uleb128 0xf
	.byte	0x1
	.uaword	.LASF3
	.byte	0x1
	.byte	0x26
	.uaword	0x1f1
	.byte	0x1
	.uaword	0x5b3
	.uleb128 0x10
	.byte	0
	.uleb128 0x11
	.uaword	.LVL2
	.uaword	0x5f0
	.uleb128 0x11
	.uaword	.LVL4
	.uaword	0x613
	.byte	0
	.uleb128 0xa
	.uaword	0x439
	.uleb128 0x12
	.byte	0x1
	.string	"Runnable_RSID_100ms"
	.byte	0x1
	.byte	0x33
	.byte	0x1
	.uaword	.LFB21
	.uaword	.LFE21
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x13
	.byte	0x1
	.string	"MAIN_vidGetProgCondition"
	.byte	0x5
	.byte	0x89
	.byte	0x1
	.uaword	0x24f
	.byte	0x1
	.uleb128 0x14
	.byte	0x1
	.uaword	.LASF3
	.byte	0x1
	.byte	0x26
	.uaword	0x1f1
	.byte	0x1
	.uleb128 0x10
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
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL1
	.uaword	.LVL2-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL2-1
	.uaword	.LFE20
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL1
	.uaword	.LVL2-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL2-1
	.uaword	.LFE20
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL1
	.uaword	.LVL2-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL2-1
	.uaword	.LFE20
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL1
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
	.uaword	.LFE20
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL1
	.uaword	.LVL3
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LVL4-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL4-1
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL1
	.uaword	.LVL4
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x52
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
	.string	"OpStatus"
.LASF1:
	.string	"ErrorCode"
.LASF3:
	.string	"GMAIN_vidGetProgCondition"
.LASF2:
	.string	"retValue"
	.extern	GMAIN_vidGetProgCondition,STT_FUNC,0
	.extern	MAIN_vidGetProgCondition,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
