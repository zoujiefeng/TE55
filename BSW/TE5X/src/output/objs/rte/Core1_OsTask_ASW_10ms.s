	.file	"Core1_OsTask_ASW_10ms.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Os_Entry_Core1_OsTask_ASW_10ms,"ax",@progbits
	.align 1
	.global	Os_Entry_Core1_OsTask_ASW_10ms
	.type	Os_Entry_Core1_OsTask_ASW_10ms, @function
Os_Entry_Core1_OsTask_ASW_10ms:
.LFB19:
	.file 1 "rte\\Core1_OsTask_ASW_10ms.c"
	.loc 1 57 0
	.loc 1 61 0
	call	ASW_WDG_vidAliveSE_CPU1
.LVL0:
	.loc 1 66 0
	call	CDD_CORE1_func
.LVL1:
	.loc 1 71 0
	call	RE_CORE1_SWC_func
.LVL2:
	.loc 1 76 0
	call	MAIN_CORE1_10ms_func
.LVL3:
	.loc 1 81 0
	call	MainMsg_Can01_Below100ms_Func
.LVL4:
	.loc 1 86 0
	call	MainMsg_Can02_Below100ms_Func
.LVL5:
	.loc 1 91 0
	call	MainMsg_Can03_Below100ms_Func
.LVL6:
	.loc 1 96 0
	j	Os_TerminateTask
.LVL7:
.LFE19:
	.size	Os_Entry_Core1_OsTask_ASW_10ms, .-Os_Entry_Core1_OsTask_ASW_10ms
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
	.uaword	0x3ea
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"rte\\Core1_OsTask_ASW_10ms.c"
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
	.uaword	0x1b9
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x4
	.byte	0x1
	.string	"Os_Entry_Core1_OsTask_ASW_10ms"
	.byte	0x1
	.byte	0x38
	.byte	0x1
	.uaword	.LFB19
	.uaword	.LFE19
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x2ff
	.uleb128 0x5
	.uaword	.LVL0
	.uaword	0x2ff
	.uleb128 0x5
	.uaword	.LVL1
	.uaword	0x31d
	.uleb128 0x5
	.uaword	.LVL2
	.uaword	0x332
	.uleb128 0x5
	.uaword	.LVL3
	.uaword	0x34a
	.uleb128 0x5
	.uaword	.LVL4
	.uaword	0x365
	.uleb128 0x5
	.uaword	.LVL5
	.uaword	0x389
	.uleb128 0x5
	.uaword	.LVL6
	.uaword	0x3ad
	.uleb128 0x6
	.uaword	.LVL7
	.byte	0x1
	.uaword	0x3d1
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.string	"ASW_WDG_vidAliveSE_CPU1"
	.byte	0x1
	.byte	0x34
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.byte	0x1
	.string	"CDD_CORE1_func"
	.byte	0x1
	.byte	0x30
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.byte	0x1
	.string	"RE_CORE1_SWC_func"
	.byte	0x1
	.byte	0x2b
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.byte	0x1
	.string	"MAIN_CORE1_10ms_func"
	.byte	0x1
	.byte	0x2a
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.byte	0x1
	.string	"MainMsg_Can01_Below100ms_Func"
	.byte	0x1
	.byte	0x23
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.byte	0x1
	.string	"MainMsg_Can02_Below100ms_Func"
	.byte	0x1
	.byte	0x24
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.byte	0x1
	.string	"MainMsg_Can03_Below100ms_Func"
	.byte	0x1
	.byte	0x25
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.byte	0x1
	.string	"Os_TerminateTask"
	.byte	0x3
	.uahalf	0x41b
	.byte	0x1
	.uaword	0x263
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
	.extern	MainMsg_Can03_Below100ms_Func,STT_FUNC,0
	.extern	MainMsg_Can02_Below100ms_Func,STT_FUNC,0
	.extern	MainMsg_Can01_Below100ms_Func,STT_FUNC,0
	.extern	MAIN_CORE1_10ms_func,STT_FUNC,0
	.extern	RE_CORE1_SWC_func,STT_FUNC,0
	.extern	CDD_CORE1_func,STT_FUNC,0
	.extern	ASW_WDG_vidAliveSE_CPU1,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
