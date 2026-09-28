	.file	"rba_FeeFs1_GetStatus.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Fee_GetStatus,"ax",@progbits
	.align 1
	.global	Fee_GetStatus
	.type	Fee_GetStatus, @function
Fee_GetStatus:
.LFB24:
	.file 1 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_GetStatus.c"
	.loc 1 46 0
	.loc 1 49 0
	movh.a	%a15, hi:Fee_GlobModuleState_st
	ld.bu	%d2, [%a15] lo:Fee_GlobModuleState_st
	ret
.LFE24:
	.size	Fee_GetStatus, .-Fee_GetStatus
.section .text.Fee_UpdateStatus,"ax",@progbits
	.align 1
	.global	Fee_UpdateStatus
	.type	Fee_UpdateStatus, @function
Fee_UpdateStatus:
.LFB25:
	.loc 1 76 0
	.loc 1 78 0
	movh.a	%a15, hi:Fee_GlobModuleState_st
	ld.bu	%d15, [%a15] lo:Fee_GlobModuleState_st
	jz	%d15, .L2
	.loc 1 79 0
	movh.a	%a2, hi:Fee_Rb_WorkingState_en
	ld.bu	%d15, [%a2] lo:Fee_Rb_WorkingState_en
	and	%d3, %d15, 247
	eq	%d2, %d3, 0
	or.eq	%d2, %d15, 5
	jnz	%d2, .L14
	.loc 1 90 0
	movh.a	%a2, hi:Fee_idxActQueue_u8
	ld.bu	%d15, [%a2] lo:Fee_idxActQueue_u8
	jeq	%d15, 1, .L5
	.loc 1 94 0
	movh.a	%a2, hi:Fee_idxActQueueBackUp
	ld.bu	%d15, [%a2] lo:Fee_idxActQueueBackUp
	jeq	%d15, 1, .L5
	.loc 1 99 0
	mov	%d15, 3
	st.b	[%a15] lo:Fee_GlobModuleState_st, %d15
.L2:
	ret
.L14:
	.loc 1 81 0
	mov	%d15, 1
	st.b	[%a15] lo:Fee_GlobModuleState_st, %d15
	ret
.L5:
	.loc 1 97 0
	mov	%d15, 2
	st.b	[%a15] lo:Fee_GlobModuleState_st, %d15
	ret
.LFE25:
	.size	Fee_UpdateStatus, .-Fee_UpdateStatus
.section .text.Fee_Rb_GetMigrationResult,"ax",@progbits
	.align 1
	.global	Fee_Rb_GetMigrationResult
	.type	Fee_Rb_GetMigrationResult, @function
Fee_Rb_GetMigrationResult:
.LFB26:
	.loc 1 130 0
.LVL0:
	.loc 1 136 0
	mov	%d2, 0
	ret
.LFE26:
	.size	Fee_Rb_GetMigrationResult, .-Fee_Rb_GetMigrationResult
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
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB26
	.uaword	.LFE26-.LFB26
	.align 2
.LEFDE4:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\MemIf\\api\\MemIf_Types.h"
	.file 4 ".\\output\\inc/..\\..\\bsw\\Fee\\api\\Fee_Rb_Types.h"
	.file 5 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_Prv.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x785
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_GetStatus.c"
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
	.uaword	0x1d4
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
	.uaword	0x200
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
	.uleb128 0x4
	.byte	0x1
	.byte	0x3
	.byte	0x18
	.uaword	0x2d4
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
	.byte	0x3
	.byte	0x1d
	.uaword	0x28c
	.uleb128 0x4
	.byte	0x1
	.byte	0x3
	.byte	0x30
	.uaword	0x3f0
	.uleb128 0x5
	.string	"MEMIF_RB_MIGRATION_RESULT_INIT_E"
	.sleb128 0
	.uleb128 0x5
	.string	"MEMIF_RB_MIGRATION_RESULT_NOT_NECESSARY_E"
	.sleb128 1
	.uleb128 0x5
	.string	"MEMIF_RB_MIGRATION_RESULT_TO_SMALLER_SIZE_E"
	.sleb128 2
	.uleb128 0x5
	.string	"MEMIF_RB_MIGRATION_RESULT_TO_BIGGER_SIZE_E"
	.sleb128 3
	.uleb128 0x5
	.string	"MEMIF_RB_MIGRATION_RESULT_NOT_DONE_E"
	.sleb128 4
	.uleb128 0x5
	.string	"MEMIF_RB_MIGRATION_RESULT_DEACTIVATED_E"
	.sleb128 5
	.byte	0
	.uleb128 0x3
	.string	"MemIf_Rb_MigrationResult_ten"
	.byte	0x3
	.byte	0x37
	.uaword	0x2ec
	.uleb128 0x4
	.byte	0x1
	.byte	0x4
	.byte	0x43
	.uaword	0x4fc
	.uleb128 0x5
	.string	"FEE_RB_IDLE_E"
	.sleb128 0
	.uleb128 0x5
	.string	"FEE_RB_WRITE_MODE_E"
	.sleb128 1
	.uleb128 0x5
	.string	"FEE_RB_READ_MODE_E"
	.sleb128 2
	.uleb128 0x5
	.string	"FEE_RB_INVALIDATE_MODE_E"
	.sleb128 3
	.uleb128 0x5
	.string	"FEE_RB_MAINTAIN_MODE_E"
	.sleb128 4
	.uleb128 0x5
	.string	"FEE_RB_SOFT_SECTOR_REORG_MODE_E"
	.sleb128 5
	.uleb128 0x5
	.string	"FEE_RB_HARD_SECTOR_REORG_MODE_E"
	.sleb128 6
	.uleb128 0x5
	.string	"FEE_RB_SECTOR_ERASE_E"
	.sleb128 7
	.uleb128 0x5
	.string	"FEE_RB_STOPMODE_E"
	.sleb128 8
	.byte	0
	.uleb128 0x3
	.string	"Fee_Rb_WorkingStateType_ten"
	.byte	0x4
	.byte	0x4d
	.uaword	0x414
	.uleb128 0x6
	.byte	0x4
	.uaword	0x525
	.uleb128 0x7
	.byte	0x1
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x8
	.byte	0x10
	.byte	0x5
	.uahalf	0x14c
	.uaword	0x5cf
	.uleb128 0x9
	.string	"BlockPersistentId_u16"
	.byte	0x5
	.uahalf	0x14e
	.uaword	0x1f2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"Flags_u16"
	.byte	0x5
	.uahalf	0x14f
	.uaword	0x1f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x9
	.string	"Length_u16"
	.byte	0x5
	.uahalf	0x150
	.uaword	0x1f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"JobEndNotification_pfn"
	.byte	0x5
	.uahalf	0x151
	.uaword	0x5cf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.string	"JobErrorNotification_pfn"
	.byte	0x5
	.uahalf	0x152
	.uaword	0x5cf
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0xa
	.uaword	0x51f
	.uleb128 0xb
	.string	"Fee_BlockPropertiesType_tst"
	.byte	0x5
	.uahalf	0x153
	.uaword	0x533
	.uleb128 0xc
	.byte	0x1
	.byte	0x5
	.uahalf	0x157
	.uaword	0x64a
	.uleb128 0x5
	.string	"FEE_JOB_TYPE_INTERNAL_E"
	.sleb128 0
	.uleb128 0x5
	.string	"FEE_JOB_TYPE_NVM_E"
	.sleb128 1
	.uleb128 0x5
	.string	"FEE_JOB_TYPE_ADAPTER_E"
	.sleb128 2
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.string	"Fee_GetStatus"
	.byte	0x1
	.byte	0x2d
	.byte	0x1
	.uaword	0x2d4
	.uaword	.LFB24
	.uaword	.LFE24
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.string	"Fee_UpdateStatus"
	.byte	0x1
	.byte	0x4b
	.byte	0x1
	.uaword	.LFB25
	.uaword	.LFE25
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xf
	.byte	0x1
	.string	"Fee_Rb_GetMigrationResult"
	.byte	0x1
	.byte	0x81
	.byte	0x1
	.uaword	0x3f0
	.uaword	.LFB26
	.uaword	.LFE26
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x6d8
	.uleb128 0x10
	.string	"Blocknumber"
	.byte	0x1
	.byte	0x81
	.uaword	0x1f2
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x11
	.string	"Fee_idxActQueueBackUp"
	.byte	0x5
	.uahalf	0x41d
	.uaword	0x1c7
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.string	"Fee_GlobModuleState_st"
	.byte	0x5
	.uahalf	0x42f
	.uaword	0x2d4
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.string	"Fee_idxActQueue_u8"
	.byte	0x5
	.uahalf	0x438
	.uaword	0x1c7
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.uaword	0x5d4
	.uaword	0x746
	.uleb128 0x13
	.uaword	0x527
	.byte	0x39
	.byte	0
	.uleb128 0x11
	.string	"Fee_BlockProperties_st"
	.byte	0x5
	.uahalf	0x464
	.uaword	0x736
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.string	"Fee_Rb_WorkingState_en"
	.byte	0x5
	.uahalf	0x497
	.uaword	0x4fc
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
	.uleb128 0xd
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
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
.section .debug_aranges,"",@progbits
	.uaword	0x2c
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
	.uaword	.LFB26
	.uaword	.LFE26-.LFB26
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB24
	.uaword	.LFE24
	.uaword	.LFB25
	.uaword	.LFE25
	.uaword	.LFB26
	.uaword	.LFE26
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.extern	Fee_idxActQueueBackUp,STT_OBJECT,1
	.extern	Fee_idxActQueue_u8,STT_OBJECT,1
	.extern	Fee_Rb_WorkingState_en,STT_OBJECT,1
	.extern	Fee_GlobModuleState_st,STT_OBJECT,1
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
