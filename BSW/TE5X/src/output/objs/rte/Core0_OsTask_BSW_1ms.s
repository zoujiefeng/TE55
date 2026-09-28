	.file	"Core0_OsTask_BSW_1ms.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Os_Entry_Core0_OsTask_BSW_1ms,"ax",@progbits
	.align 1
	.global	Os_Entry_Core0_OsTask_BSW_1ms
	.type	Os_Entry_Core0_OsTask_BSW_1ms, @function
Os_Entry_Core0_OsTask_BSW_1ms:
.LFB19:
	.file 1 "rte\\Core0_OsTask_BSW_1ms.c"
	.loc 1 78 0
	.loc 1 85 0
	call	CanTrcv_MainFunction
.LVL0:
	.loc 1 90 0
	call	CanNm_MainFunction
.LVL1:
	.loc 1 95 0
	call	RE_OsShell_TriggerBg_func
.LVL2:
	.loc 1 100 0
	call	NvM_MainFunction
.LVL3:
	.loc 1 105 0
	call	CanTp_MainFunction
.LVL4:
	.loc 1 110 0
	call	Dcm_MainFunction
.LVL5:
	.loc 1 115 0
	call	Dem_MainFunction
.LVL6:
	.loc 1 120 0
	call	Com_MainFunctionTx
.LVL7:
	.loc 1 125 0
	call	Com_MainFunctionRx
.LVL8:
	.loc 1 130 0
	j	Os_TerminateTask
.LVL9:
.LFE19:
	.size	Os_Entry_Core0_OsTask_BSW_1ms, .-Os_Entry_Core0_OsTask_BSW_1ms
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
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 3 ".\\output\\inc/..\\..\\os\\Os.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x40c
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"rte\\Core0_OsTask_BSW_1ms.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
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
	.byte	0x2
	.byte	0x48
	.uaword	0x1b8
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x4
	.byte	0x1
	.string	"Os_Entry_Core0_OsTask_BSW_1ms"
	.byte	0x1
	.byte	0x4d
	.byte	0x1
	.uaword	.LFB19
	.uaword	.LFE19
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x30f
	.uleb128 0x5
	.uaword	.LVL0
	.uaword	0x30f
	.uleb128 0x5
	.uaword	.LVL1
	.uaword	0x32a
	.uleb128 0x5
	.uaword	.LVL2
	.uaword	0x343
	.uleb128 0x5
	.uaword	.LVL3
	.uaword	0x363
	.uleb128 0x5
	.uaword	.LVL4
	.uaword	0x37a
	.uleb128 0x5
	.uaword	.LVL5
	.uaword	0x393
	.uleb128 0x5
	.uaword	.LVL6
	.uaword	0x3aa
	.uleb128 0x5
	.uaword	.LVL7
	.uaword	0x3c1
	.uleb128 0x5
	.uaword	.LVL8
	.uaword	0x3da
	.uleb128 0x6
	.uaword	.LVL9
	.byte	0x1
	.uaword	0x3f3
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.string	"CanTrcv_MainFunction"
	.byte	0x1
	.byte	0x32
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.byte	0x1
	.string	"CanNm_MainFunction"
	.byte	0x1
	.byte	0x28
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.byte	0x1
	.string	"RE_OsShell_TriggerBg_func"
	.byte	0x1
	.byte	0x23
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.byte	0x1
	.string	"NvM_MainFunction"
	.byte	0x1
	.byte	0x47
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.byte	0x1
	.string	"CanTp_MainFunction"
	.byte	0x1
	.byte	0x2d
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.byte	0x1
	.string	"Dcm_MainFunction"
	.byte	0x1
	.byte	0x3d
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.byte	0x1
	.string	"Dem_MainFunction"
	.byte	0x1
	.byte	0x42
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.byte	0x1
	.string	"Com_MainFunctionTx"
	.byte	0x1
	.byte	0x38
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.byte	0x1
	.string	"Com_MainFunctionRx"
	.byte	0x1
	.byte	0x37
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.byte	0x1
	.string	"Os_TerminateTask"
	.byte	0x3
	.uahalf	0x41b
	.byte	0x1
	.uaword	0x262
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
	.uleb128 0x5
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.byte	0
.section .debug_aranges,"",@progbits
	.uaword	0x1c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB19
	.uaword	.LFE19-.LFB19
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB19
	.uaword	.LFE19
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.extern	Os_TerminateTask,STT_FUNC,0
	.extern	Com_MainFunctionRx,STT_FUNC,0
	.extern	Com_MainFunctionTx,STT_FUNC,0
	.extern	Dem_MainFunction,STT_FUNC,0
	.extern	Dcm_MainFunction,STT_FUNC,0
	.extern	CanTp_MainFunction,STT_FUNC,0
	.extern	NvM_MainFunction,STT_FUNC,0
	.extern	RE_OsShell_TriggerBg_func,STT_FUNC,0
	.extern	CanNm_MainFunction,STT_FUNC,0
	.extern	CanTrcv_MainFunction,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
