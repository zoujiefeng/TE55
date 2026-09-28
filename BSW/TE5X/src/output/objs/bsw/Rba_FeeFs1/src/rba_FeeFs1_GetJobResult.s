	.file	"rba_FeeFs1_GetJobResult.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Fee_GetJobResult,"ax",@progbits
	.align 1
	.global	Fee_GetJobResult
	.type	Fee_GetJobResult, @function
Fee_GetJobResult:
.LFB24:
	.file 1 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_GetJobResult.c"
	.loc 1 61 0
	.loc 1 62 0
	movh.a	%a15, hi:Fee_JobResult
	lea	%a15, [%a15] lo:Fee_JobResult
	ld.bu	%d2, [%a15] 1
.LVL0:
	.loc 1 65 0
	movh.a	%a15, hi:Fee_GlobModuleState_st
.LVL1:
	ld.bu	%d15, [%a15] lo:Fee_GlobModuleState_st
	jz	%d15, .L4
	.loc 1 78 0
	ret
.L4:
	.loc 1 70 0
	mov	%e4, 21
	mov	%d6, 6
	mov	%d7, 1
	call	Det_ReportError
.LVL2:
	.loc 1 74 0
	mov	%d2, 1
.LVL3:
	.loc 1 78 0
	ret
.LFE24:
	.size	Fee_GetJobResult, .-Fee_GetJobResult
.section .text.Fee_Rb_GetAdapterJobResult,"ax",@progbits
	.align 1
	.global	Fee_Rb_GetAdapterJobResult
	.type	Fee_Rb_GetAdapterJobResult, @function
Fee_Rb_GetAdapterJobResult:
.LFB25:
	.loc 1 103 0
	.loc 1 104 0
	movh.a	%a15, hi:Fee_JobResult
	lea	%a15, [%a15] lo:Fee_JobResult
	ld.bu	%d2, [%a15] 2
.LVL4:
	.loc 1 108 0
	movh.a	%a15, hi:Fee_GlobModuleState_st
.LVL5:
	ld.bu	%d15, [%a15] lo:Fee_GlobModuleState_st
	jz	%d15, .L7
	.loc 1 121 0
	ret
.L7:
	.loc 1 113 0
	mov	%e4, 21
	mov	%d6, 252
	mov	%d7, 1
	call	Det_ReportError
.LVL6:
	.loc 1 117 0
	mov	%d2, 1
.LVL7:
	.loc 1 121 0
	ret
.LFE25:
	.size	Fee_Rb_GetAdapterJobResult, .-Fee_Rb_GetAdapterJobResult
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
	.uaword	.LFB24
	.uaword	.LFE24-.LFB24
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB25
	.uaword	.LFE25-.LFB25
	.align 2
.LEFDE2:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 4 ".\\output\\inc/..\\..\\bsw\\MemIf\\api\\MemIf_Types.h"
	.file 5 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_Prv.h"
	.file 6 ".\\output\\inc/..\\..\\bsw\\Det\\api\\Det.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x634
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_GetJobResult.c"
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
	.uaword	0x1d7
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
	.uaword	0x203
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
	.uaword	0x1ca
	.uleb128 0x4
	.byte	0x1
	.byte	0x4
	.byte	0x18
	.uaword	0x2ed
	.uleb128 0x5
	.string	"MEMIF_UNINIT"
	.sleb128 0
	.uleb128 0x5
	.string	"MEMIF_IDLE"
	.sleb128 1
	.uleb128 0x5
	.string	"MEMIF_BUSY"
	.sleb128 2
	.uleb128 0x5
	.string	"MEMIF_BUSY_INTERNAL"
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.string	"MemIf_StatusType"
	.byte	0x4
	.byte	0x1d
	.uaword	0x2a5
	.uleb128 0x4
	.byte	0x1
	.byte	0x4
	.byte	0x20
	.uaword	0x38a
	.uleb128 0x5
	.string	"MEMIF_JOB_OK"
	.sleb128 0
	.uleb128 0x5
	.string	"MEMIF_JOB_FAILED"
	.sleb128 1
	.uleb128 0x5
	.string	"MEMIF_JOB_PENDING"
	.sleb128 2
	.uleb128 0x5
	.string	"MEMIF_JOB_CANCELED"
	.sleb128 3
	.uleb128 0x5
	.string	"MEMIF_BLOCK_INCONSISTENT"
	.sleb128 4
	.uleb128 0x5
	.string	"MEMIF_BLOCK_INVALID"
	.sleb128 5
	.byte	0
	.uleb128 0x3
	.string	"MemIf_JobResultType"
	.byte	0x4
	.byte	0x27
	.uaword	0x305
	.uleb128 0x6
	.byte	0x4
	.uaword	0x3ab
	.uleb128 0x7
	.byte	0x1
	.uleb128 0x4
	.byte	0x1
	.byte	0x5
	.byte	0xa9
	.uaword	0x3fa
	.uleb128 0x5
	.string	"FEE_INTERNAL_JOB"
	.sleb128 0
	.uleb128 0x5
	.string	"FEE_NVM_JOB"
	.sleb128 1
	.uleb128 0x5
	.string	"FEE_ADAPTER_JOB"
	.sleb128 2
	.uleb128 0x5
	.string	"FEE_QUEUE_SIZE"
	.sleb128 3
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x8
	.byte	0x10
	.byte	0x5
	.uahalf	0x14c
	.uaword	0x4a2
	.uleb128 0x9
	.string	"BlockPersistentId_u16"
	.byte	0x5
	.uahalf	0x14e
	.uaword	0x1f5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"Flags_u16"
	.byte	0x5
	.uahalf	0x14f
	.uaword	0x1f5
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x9
	.string	"Length_u16"
	.byte	0x5
	.uahalf	0x150
	.uaword	0x1f5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"JobEndNotification_pfn"
	.byte	0x5
	.uahalf	0x151
	.uaword	0x4a2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.string	"JobErrorNotification_pfn"
	.byte	0x5
	.uahalf	0x152
	.uaword	0x4a2
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0xa
	.uaword	0x3a5
	.uleb128 0xb
	.string	"Fee_BlockPropertiesType_tst"
	.byte	0x5
	.uahalf	0x153
	.uaword	0x406
	.uleb128 0xc
	.byte	0x1
	.string	"Fee_GetJobResult"
	.byte	0x1
	.byte	0x3c
	.byte	0x1
	.uaword	0x38a
	.uaword	.LFB24
	.uaword	.LFE24
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x527
	.uleb128 0xd
	.string	"xRetVal"
	.byte	0x1
	.byte	0x3e
	.uaword	0x38a
	.uaword	.LLST0
	.uleb128 0xe
	.uaword	.LVL2
	.uaword	0x608
	.uleb128 0xf
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x31
	.uleb128 0xf
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x36
	.uleb128 0xf
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x45
	.byte	0
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.string	"Fee_Rb_GetAdapterJobResult"
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.uaword	0x38a
	.uaword	.LFB25
	.uaword	.LFE25
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x58e
	.uleb128 0xd
	.string	"xRetVal"
	.byte	0x1
	.byte	0x68
	.uaword	0x38a
	.uaword	.LLST1
	.uleb128 0xe
	.uaword	.LVL6
	.uaword	0x608
	.uleb128 0xf
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x31
	.uleb128 0xf
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x9
	.byte	0xfc
	.uleb128 0xf
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x45
	.byte	0
	.byte	0
	.uleb128 0x10
	.uaword	0x38a
	.uaword	0x59e
	.uleb128 0x11
	.uaword	0x3fa
	.byte	0x2
	.byte	0
	.uleb128 0x12
	.string	"Fee_JobResult"
	.byte	0x5
	.uahalf	0x40d
	.uaword	0x58e
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.string	"Fee_GlobModuleState_st"
	.byte	0x5
	.uahalf	0x42f
	.uaword	0x2ed
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.uaword	0x4a7
	.uaword	0x5e7
	.uleb128 0x11
	.uaword	0x3fa
	.byte	0x39
	.byte	0
	.uleb128 0x12
	.string	"Fee_BlockProperties_st"
	.byte	0x5
	.uahalf	0x464
	.uaword	0x5d7
	.byte	0x1
	.byte	0x1
	.uleb128 0x13
	.byte	0x1
	.string	"Det_ReportError"
	.byte	0x6
	.byte	0x70
	.byte	0x1
	.uaword	0x28f
	.byte	0x1
	.uleb128 0x14
	.uaword	0x1f5
	.uleb128 0x14
	.uaword	0x1ca
	.uleb128 0x14
	.uaword	0x1ca
	.uleb128 0x14
	.uaword	0x1ca
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
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
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 1
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LFE24
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x2
	.byte	0x8f
	.sleb128 2
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL7
	.uaword	.LFE25
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x24
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB24
	.uaword	.LFE24-.LFB24
	.uaword	.LFB25
	.uaword	.LFE25-.LFB25
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB24
	.uaword	.LFE24
	.uaword	.LFB25
	.uaword	.LFE25
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.extern	Det_ReportError,STT_FUNC,0
	.extern	Fee_GlobModuleState_st,STT_OBJECT,1
	.extern	Fee_JobResult,STT_OBJECT,3
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
