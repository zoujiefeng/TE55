	.file	"Core0_OsTask_BSW_10ms.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Os_Entry_Core0_OsTask_BSW_10ms,"ax",@progbits
	.align 1
	.global	Os_Entry_Core0_OsTask_BSW_10ms
	.type	Os_Entry_Core0_OsTask_BSW_10ms, @function
Os_Entry_Core0_OsTask_BSW_10ms:
.LFB19:
	.file 1 "rte\\Core0_OsTask_BSW_10ms.c"
	.loc 1 66 0
	.loc 1 73 0
	call	EcuM_MainFunction
.LVL0:
	.loc 1 78 0
	call	BswM_MainFunction
.LVL1:
	.loc 1 83 0
	call	ComM_MainFunction_Can_Network_CanNodeNum_01
.LVL2:
	.loc 1 88 0
	call	ComM_MainFunction_Can_Network_CanNodeNum_02
.LVL3:
	.loc 1 93 0
	call	ComM_MainFunction_Can_Network_CanNodeNum_03
.LVL4:
	.loc 1 98 0
	call	ComM_MainFunction_Can_Network_CanNodeNum_00
.LVL5:
	.loc 1 103 0
	call	CanSM_MainFunction
.LVL6:
	.loc 1 108 0
	call	Xcp_EventChannel_10ms
.LVL7:
	.loc 1 113 0
	call	Xcp_MainFunction
.LVL8:
	.loc 1 118 0
	j	Os_TerminateTask
.LVL9:
.LFE19:
	.size	Os_Entry_Core0_OsTask_BSW_10ms, .-Os_Entry_Core0_OsTask_BSW_10ms
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
	.uaword	0x46e
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"rte\\Core0_OsTask_BSW_10ms.c"
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
	.string	"Os_Entry_Core0_OsTask_BSW_10ms"
	.byte	0x1
	.byte	0x41
	.byte	0x1
	.uaword	.LFB19
	.uaword	.LFE19
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x311
	.uleb128 0x5
	.uaword	.LVL0
	.uaword	0x311
	.uleb128 0x5
	.uaword	.LVL1
	.uaword	0x329
	.uleb128 0x5
	.uaword	.LVL2
	.uaword	0x341
	.uleb128 0x5
	.uaword	.LVL3
	.uaword	0x373
	.uleb128 0x5
	.uaword	.LVL4
	.uaword	0x3a5
	.uleb128 0x5
	.uaword	.LVL5
	.uaword	0x3d7
	.uleb128 0x5
	.uaword	.LVL6
	.uaword	0x409
	.uleb128 0x5
	.uaword	.LVL7
	.uaword	0x422
	.uleb128 0x5
	.uaword	.LVL8
	.uaword	0x43e
	.uleb128 0x6
	.uaword	.LVL9
	.byte	0x1
	.uaword	0x455
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.string	"EcuM_MainFunction"
	.byte	0x1
	.byte	0x35
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.byte	0x1
	.string	"BswM_MainFunction"
	.byte	0x1
	.byte	0x23
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.byte	0x1
	.string	"ComM_MainFunction_Can_Network_CanNodeNum_01"
	.byte	0x1
	.byte	0x2e
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.byte	0x1
	.string	"ComM_MainFunction_Can_Network_CanNodeNum_02"
	.byte	0x1
	.byte	0x2f
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.byte	0x1
	.string	"ComM_MainFunction_Can_Network_CanNodeNum_03"
	.byte	0x1
	.byte	0x30
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.byte	0x1
	.string	"ComM_MainFunction_Can_Network_CanNodeNum_00"
	.byte	0x1
	.byte	0x2d
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.byte	0x1
	.string	"CanSM_MainFunction"
	.byte	0x1
	.byte	0x28
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.byte	0x1
	.string	"Xcp_EventChannel_10ms"
	.byte	0x1
	.byte	0x3a
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.byte	0x1
	.string	"Xcp_MainFunction"
	.byte	0x1
	.byte	0x3b
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
	.extern	Xcp_MainFunction,STT_FUNC,0
	.extern	Xcp_EventChannel_10ms,STT_FUNC,0
	.extern	CanSM_MainFunction,STT_FUNC,0
	.extern	ComM_MainFunction_Can_Network_CanNodeNum_00,STT_FUNC,0
	.extern	ComM_MainFunction_Can_Network_CanNodeNum_03,STT_FUNC,0
	.extern	ComM_MainFunction_Can_Network_CanNodeNum_02,STT_FUNC,0
	.extern	ComM_MainFunction_Can_Network_CanNodeNum_01,STT_FUNC,0
	.extern	BswM_MainFunction,STT_FUNC,0
	.extern	EcuM_MainFunction,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
