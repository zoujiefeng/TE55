	.file	"Core0_BSW_OsTask_SwcRequest.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Os_Entry_Core0_BSW_OsTask_SwcRequest,"ax",@progbits
	.align 1
	.global	Os_Entry_Core0_BSW_OsTask_SwcRequest
	.type	Os_Entry_Core0_BSW_OsTask_SwcRequest, @function
Os_Entry_Core0_BSW_OsTask_SwcRequest:
.LFB19:
	.file 1 "rte\\Core0_BSW_OsTask_SwcRequest.c"
	.loc 1 57 0
	.loc 1 63 0
	movh.a	%a15, hi:Rte_ActCount_CPT_BswM_DRE_BswM_Cfg_DfrdSwcReqst_BswM_MRP_SWC_Network
	ld.bu	%d15, [%a15] lo:Rte_ActCount_CPT_BswM_DRE_BswM_Cfg_DfrdSwcReqst_BswM_MRP_SWC_Network
	jnz	%d15, .L11
.L2:
	.loc 1 70 0
	movh.a	%a15, hi:Rte_ActCount_CPT_BswM_DRE_BswM_Cfg_DfrdSwcReqst_BswMSwcModeRequest
	ld.bu	%d15, [%a15] lo:Rte_ActCount_CPT_BswM_DRE_BswM_Cfg_DfrdSwcReqst_BswMSwcModeRequest
	jnz	%d15, .L12
	.loc 1 78 0
	j	Os_TerminateTask
.LVL0:
.L12:
	.loc 1 72 0
	mov	%d15, 0
	st.b	[%a15] lo:Rte_ActCount_CPT_BswM_DRE_BswM_Cfg_DfrdSwcReqst_BswMSwcModeRequest, %d15
	.loc 1 73 0
	call	BswM_Cfg_DfrdSwcReqst_BswMSwcModeRequest
.LVL1:
	.loc 1 78 0
	j	Os_TerminateTask
.LVL2:
.L11:
	.loc 1 65 0
	mov	%d15, 0
	st.b	[%a15] lo:Rte_ActCount_CPT_BswM_DRE_BswM_Cfg_DfrdSwcReqst_BswM_MRP_SWC_Network, %d15
	.loc 1 66 0
	call	BswM_Cfg_DfrdSwcReqst_BswM_MRP_SWC_Network
.LVL3:
	j	.L2
.LFE19:
	.size	Os_Entry_Core0_BSW_OsTask_SwcRequest, .-Os_Entry_Core0_BSW_OsTask_SwcRequest
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
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 4 "rte\\Rte_Intl.h"
	.file 5 ".\\output\\inc/..\\..\\os\\Os.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x425
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"rte\\Core0_BSW_OsTask_SwcRequest.c"
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
	.uaword	0x1cc
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
	.byte	0x3
	.byte	0x48
	.uaword	0x1cc
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x4
	.string	"Rte_REActCounterType"
	.byte	0x4
	.uahalf	0x128
	.uaword	0x1bf
	.uleb128 0x5
	.byte	0x1
	.string	"Os_Entry_Core0_BSW_OsTask_SwcRequest"
	.byte	0x1
	.byte	0x38
	.byte	0x1
	.uaword	.LFB19
	.uaword	.LFE19
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x312
	.uleb128 0x6
	.uaword	.LVL0
	.byte	0x1
	.uaword	0x3ac
	.uleb128 0x7
	.uaword	.LVL1
	.uaword	0x3c8
	.uleb128 0x6
	.uaword	.LVL2
	.byte	0x1
	.uaword	0x3ac
	.uleb128 0x7
	.uaword	.LVL3
	.uaword	0x3f7
	.byte	0
	.uleb128 0x8
	.string	"Rte_ActCount_CPT_BswM_DRE_BswM_Cfg_DfrdSwcReqst_BswMSwcModeRequest"
	.byte	0x1
	.byte	0x22
	.uaword	0x294
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.string	"Rte_ActCount_CPT_BswM_DRE_BswM_Cfg_DfrdSwcReqst_BswM_MRP_SWC_Network"
	.byte	0x1
	.byte	0x29
	.uaword	0x294
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.byte	0x1
	.string	"Os_TerminateTask"
	.byte	0x5
	.uahalf	0x41b
	.byte	0x1
	.uaword	0x276
	.byte	0x1
	.uleb128 0xa
	.byte	0x1
	.string	"BswM_Cfg_DfrdSwcReqst_BswMSwcModeRequest"
	.byte	0x1
	.byte	0x31
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.byte	0x1
	.string	"BswM_Cfg_DfrdSwcReqst_BswM_MRP_SWC_Network"
	.byte	0x1
	.byte	0x32
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.extern	BswM_Cfg_DfrdSwcReqst_BswM_MRP_SWC_Network,STT_FUNC,0
	.extern	BswM_Cfg_DfrdSwcReqst_BswMSwcModeRequest,STT_FUNC,0
	.extern	Os_TerminateTask,STT_FUNC,0
	.extern	Rte_ActCount_CPT_BswM_DRE_BswM_Cfg_DfrdSwcReqst_BswMSwcModeRequest,STT_OBJECT,1
	.extern	Rte_ActCount_CPT_BswM_DRE_BswM_Cfg_DfrdSwcReqst_BswM_MRP_SWC_Network,STT_OBJECT,1
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
