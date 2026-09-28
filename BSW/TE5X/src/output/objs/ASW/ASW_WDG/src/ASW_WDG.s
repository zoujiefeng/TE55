	.file	"ASW_WDG.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.RE_ASW_WDG_Alive_Supervision_Entity1_func,"ax",@progbits
	.align 1
	.global	RE_ASW_WDG_Alive_Supervision_Entity1_func
	.type	RE_ASW_WDG_Alive_Supervision_Entity1_func, @function
RE_ASW_WDG_Alive_Supervision_Entity1_func:
.LFB19:
	.file 1 "ASW\\ASW_WDG\\src\\ASW_WDG.c"
	.loc 1 57 0
	.loc 1 59 0
	movh.a	%a15, hi:Wdg_TestCase_Local
	ld.bu	%d15, [%a15] lo:Wdg_TestCase_Local
	add	%d15, -1
	jlt.u	%d15, 6, .L15
	.loc 1 107 0
	mov	%e4, 3
	j	WdgM_CheckpointReached
.LVL0:
.L15:
	.loc 1 59 0
	movh.a	%a2, hi:.L4
	lea	%a2, [%a2] lo:.L4
	addsc.a	%a2, %a2, %d15, 2
	ji	%a2
	.align 2
	.align 2
.L4:
	.code32
	j	.L13
	.code32
	j	.L5
	.code32
	j	.L6
	.code32
	j	.L7
	.code32
	j	.L9
	.code32
	j	.L9
.L9:
	.loc 1 103 0
	mov	%d15, 0
	.loc 1 104 0
	mov	%e4, 3
	.loc 1 103 0
	st.b	[%a15] lo:Wdg_TestCase_Local, %d15
	.loc 1 104 0
	j	WdgM_CheckpointReached
.LVL1:
.L7:
	.loc 1 91 0
	mov	%e4, 3
	call	WdgM_CheckpointReached
.LVL2:
	.loc 1 93 0
	mov	%e4, 3
	call	WdgM_CheckpointReached
.LVL3:
.L13:
	.loc 1 94 0
	mov	%d15, 0
	st.b	[%a15] lo:Wdg_TestCase_Local, %d15
	.loc 1 95 0
	ret
.L5:
	.loc 1 67 0
	movh.a	%a2, hi:Entity1_Count.4830
	ld.hu	%d15, [%a2] lo:Entity1_Count.4830
	jnz	%d15, .L12
	.loc 1 74 0
	mov	%d15, 1
	st.h	[%a2] lo:Entity1_Count.4830, %d15
	ret
.L6:
	.loc 1 79 0
	movh.a	%a2, hi:Entity1_Count.4830
	ld.hu	%d15, [%a2] lo:Entity1_Count.4830
	jlt.u	%d15, 2, .L16
.L12:
	.loc 1 69 0
	mov	%d15, 0
	st.b	[%a15] lo:Wdg_TestCase_Local, %d15
	.loc 1 70 0
	mov	%d15, 0
	st.h	[%a2] lo:Entity1_Count.4830, %d15
	ret
.L16:
	.loc 1 86 0
	add	%d15, 1
	st.h	[%a2] lo:Entity1_Count.4830, %d15
	ret
.LFE19:
	.size	RE_ASW_WDG_Alive_Supervision_Entity1_func, .-RE_ASW_WDG_Alive_Supervision_Entity1_func
.section .text.ASW_WDG_vidAliveSE_CPU1,"ax",@progbits
	.align 1
	.global	ASW_WDG_vidAliveSE_CPU1
	.type	ASW_WDG_vidAliveSE_CPU1, @function
ASW_WDG_vidAliveSE_CPU1:
.LFB20:
	.loc 1 113 0
	.loc 1 114 0
	mov	%e4, 0
	j	WdgM_CheckpointReached
.LVL4:
.LFE20:
	.size	ASW_WDG_vidAliveSE_CPU1, .-ASW_WDG_vidAliveSE_CPU1
.section .text.ASW_WDG_vidAliveSE_CPU2,"ax",@progbits
	.align 1
	.global	ASW_WDG_vidAliveSE_CPU2
	.type	ASW_WDG_vidAliveSE_CPU2, @function
ASW_WDG_vidAliveSE_CPU2:
.LFB21:
	.loc 1 117 0
	.loc 1 118 0
	mov	%e4, 1
	j	WdgM_CheckpointReached
.LVL5:
.LFE21:
	.size	ASW_WDG_vidAliveSE_CPU2, .-ASW_WDG_vidAliveSE_CPU2
.section .text.ASW_WDG_vidAliveSE_CPU3,"ax",@progbits
	.align 1
	.global	ASW_WDG_vidAliveSE_CPU3
	.type	ASW_WDG_vidAliveSE_CPU3, @function
ASW_WDG_vidAliveSE_CPU3:
.LFB22:
	.loc 1 121 0
	.loc 1 122 0
	mov	%e4, 2
	j	WdgM_CheckpointReached
.LVL6:
.LFE22:
	.size	ASW_WDG_vidAliveSE_CPU3, .-ASW_WDG_vidAliveSE_CPU3
.section .text.WdgTest_GetTime,"ax",@progbits
	.align 1
	.global	WdgTest_GetTime
	.type	WdgTest_GetTime, @function
WdgTest_GetTime:
.LFB23:
	.loc 1 140 0
.LVL7:
	.loc 1 144 0
	movh.a	%a15, hi:OS_Counter_1ms
	ld.w	%d15, [%a15] lo:OS_Counter_1ms
.LVL8:
	.loc 1 146 0
	jlt.u	%d4, %d15, .L24
	.loc 1 142 0
	mov	%d2, 0
	.loc 1 150 0
	jge.u	%d15, %d4, .L22
	.loc 1 152 0
	sub	%d4, %d15, %d4
.LVL9:
	addi	%d2, %d4, -1
.LVL10:
.L22:
	.loc 1 155 0
	ret
.LVL11:
.L24:
	.loc 1 148 0
	sub	%d2, %d15, %d4
.LVL12:
	ret
.LFE23:
	.size	WdgTest_GetTime, .-WdgTest_GetTime
.section .text.WdgTest_SetBaseTime,"ax",@progbits
	.align 1
	.global	WdgTest_SetBaseTime
	.type	WdgTest_SetBaseTime, @function
WdgTest_SetBaseTime:
.LFB24:
	.loc 1 172 0
.LVL13:
	.loc 1 173 0
	movh.a	%a15, hi:OS_Counter_1ms
	ld.w	%d15, [%a15] lo:OS_Counter_1ms
	st.w	[%a4]0, %d15
	ret
.LFE24:
	.size	WdgTest_SetBaseTime, .-WdgTest_SetBaseTime
.section .bss.a2.Entity1_Count.4830,"aw",@nobits
	.align 1
	.type	Entity1_Count.4830, @object
	.size	Entity1_Count.4830, 2
Entity1_Count.4830:
	.zero	2
	.global	WdgDeadlineTimeBase
.section .bss.a4.WdgDeadlineTimeBase,"aw",@nobits
	.align 2
	.type	WdgDeadlineTimeBase, @object
	.size	WdgDeadlineTimeBase, 4
WdgDeadlineTimeBase:
	.zero	4
	.global	Logic_Index
.section .bss.a1.Logic_Index,"aw",@nobits
	.type	Logic_Index, @object
	.size	Logic_Index, 1
Logic_Index:
	.zero	1
	.global	start_LogicTest
.section .bss.a1.start_LogicTest,"aw",@nobits
	.type	start_LogicTest, @object
	.size	start_LogicTest, 1
start_LogicTest:
	.zero	1
	.global	wait10ms
.section .bss.a1.wait10ms,"aw",@nobits
	.type	wait10ms, @object
	.size	wait10ms, 1
wait10ms:
	.zero	1
	.global	start_Deadline
.section .bss.a1.start_Deadline,"aw",@nobits
	.type	start_Deadline, @object
	.size	start_Deadline, 1
start_Deadline:
	.zero	1
	.global	Wdg_TestCase_Local
.section .bss.a1.Wdg_TestCase_Local,"aw",@nobits
	.type	Wdg_TestCase_Local, @object
	.size	Wdg_TestCase_Local, 1
Wdg_TestCase_Local:
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
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB22
	.uaword	.LFE22-.LFB22
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB23
	.uaword	.LFE23-.LFB23
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB24
	.uaword	.LFE24-.LFB24
	.align 2
.LEFDE10:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 4 ".\\output\\inc/..\\..\\rte\\Rte_Type.h"
	.file 5 ".\\output\\inc/..\\..\\ASW\\ASW_WDG\\api\\ASW_WDG.h"
	.file 6 ".\\output\\inc/..\\..\\rte\\Rte_ASW_WDG.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x75d
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"ASW\\ASW_WDG\\src\\ASW_WDG.c"
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
	.uaword	0x23a
	.uleb128 0x5
	.string	"WdgM_CheckpointIdType"
	.byte	0x4
	.uahalf	0x1fa
	.uaword	0x20e
	.uleb128 0x5
	.string	"WdgM_SupervisedEntityIdType"
	.byte	0x4
	.uahalf	0x1fc
	.uaword	0x20e
	.uleb128 0x6
	.uaword	.LASF0
	.byte	0x1
	.byte	0x5
	.byte	0x1e
	.uaword	0x447
	.uleb128 0x7
	.string	"WDG_NONE"
	.sleb128 0
	.uleb128 0x7
	.string	"ALIVE_OK_LACKOF_ONE_CP_ALIVE_SUPERVISION_ENTITY1"
	.sleb128 1
	.uleb128 0x7
	.string	"ALIVE_OK_LACKOF_TWO_ALIVE_SUPERVISION_ENTITY1"
	.sleb128 2
	.uleb128 0x7
	.string	"ALIVE_NOTOK_LACKOF_THREE_ALIVE_SUPERVISION_ENTITY1"
	.sleb128 3
	.uleb128 0x7
	.string	"ALIVE_NOTOK_ADDMORE_ALIVE_SUPERVISION_ENTITY1"
	.sleb128 4
	.uleb128 0x7
	.string	"FAST_MODE"
	.sleb128 5
	.uleb128 0x7
	.string	"SLOW_MODE"
	.sleb128 6
	.uleb128 0x7
	.string	"DEADLINE_OK_ONTIME_CP_WDG_DEADLINE_ENTITY1"
	.sleb128 7
	.uleb128 0x7
	.string	"DEADLINE_NOTOK_LATE_CP_WDG_DEADLINE_ENTITY1"
	.sleb128 8
	.byte	0
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x5
	.byte	0x28
	.uaword	0x2f4
	.uleb128 0x9
	.byte	0x1
	.string	"RE_ASW_WDG_Alive_Supervision_Entity1_func"
	.byte	0x1
	.byte	0x35
	.byte	0x1
	.uaword	.LFB19
	.uaword	.LFE19
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x50b
	.uleb128 0xa
	.string	"Entity1_Count"
	.byte	0x1
	.byte	0x3a
	.uaword	0x21b
	.byte	0x5
	.byte	0x3
	.uaword	Entity1_Count.4830
	.uleb128 0xb
	.uaword	.LVL0
	.byte	0x1
	.uaword	0x734
	.uaword	0x4c5
	.uleb128 0xc
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0xc
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.uleb128 0xb
	.uaword	.LVL1
	.byte	0x1
	.uaword	0x734
	.uaword	0x4de
	.uleb128 0xc
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0xc
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.uleb128 0xd
	.uaword	.LVL2
	.uaword	0x734
	.uaword	0x4f6
	.uleb128 0xc
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0xc
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.uleb128 0xe
	.uaword	.LVL3
	.uaword	0x734
	.uleb128 0xc
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0xc
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.string	"ASW_WDG_vidAliveSE_CPU1"
	.byte	0x1
	.byte	0x70
	.byte	0x1
	.uaword	.LFB20
	.uaword	.LFE20
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x54e
	.uleb128 0xf
	.uaword	.LVL4
	.byte	0x1
	.uaword	0x734
	.uleb128 0xc
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0xc
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.string	"ASW_WDG_vidAliveSE_CPU2"
	.byte	0x1
	.byte	0x74
	.byte	0x1
	.uaword	.LFB21
	.uaword	.LFE21
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x591
	.uleb128 0xf
	.uaword	.LVL5
	.byte	0x1
	.uaword	0x734
	.uleb128 0xc
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0xc
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.string	"ASW_WDG_vidAliveSE_CPU3"
	.byte	0x1
	.byte	0x78
	.byte	0x1
	.uaword	.LFB22
	.uaword	.LFE22
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x5d4
	.uleb128 0xf
	.uaword	.LVL6
	.byte	0x1
	.uaword	0x734
	.uleb128 0xc
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0xc
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.string	"WdgTest_GetTime"
	.byte	0x1
	.byte	0x8b
	.byte	0x1
	.uaword	0x23a
	.uaword	.LFB23
	.uaword	.LFE23
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x636
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x1
	.byte	0x8b
	.uaword	0x23a
	.uaword	.LLST0
	.uleb128 0xa
	.string	"CurrentStmValue"
	.byte	0x1
	.byte	0x8d
	.uaword	0x23a
	.byte	0x1
	.byte	0x5f
	.uleb128 0x12
	.string	"time"
	.byte	0x1
	.byte	0x8e
	.uaword	0x23a
	.uaword	.LLST1
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.string	"WdgTest_SetBaseTime"
	.byte	0x1
	.byte	0xab
	.byte	0x1
	.uaword	.LFB24
	.uaword	.LFE24
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x66d
	.uleb128 0x13
	.uaword	.LASF1
	.byte	0x1
	.byte	0xab
	.uaword	0x2ac
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x14
	.string	"OS_Counter_1ms"
	.byte	0x5
	.byte	0x2a
	.uaword	0x23a
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.string	"Wdg_TestCase_Local"
	.byte	0x1
	.byte	0x20
	.uaword	0x447
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Wdg_TestCase_Local
	.uleb128 0x15
	.string	"start_Deadline"
	.byte	0x1
	.byte	0x26
	.uaword	0x20e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	start_Deadline
	.uleb128 0x15
	.string	"wait10ms"
	.byte	0x1
	.byte	0x27
	.uaword	0x20e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	wait10ms
	.uleb128 0x15
	.string	"start_LogicTest"
	.byte	0x1
	.byte	0x28
	.uaword	0x20e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	start_LogicTest
	.uleb128 0x15
	.string	"Logic_Index"
	.byte	0x1
	.byte	0x29
	.uaword	0x20e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Logic_Index
	.uleb128 0x15
	.string	"WdgDeadlineTimeBase"
	.byte	0x1
	.byte	0x2f
	.uaword	0x23a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	WdgDeadlineTimeBase
	.uleb128 0x16
	.byte	0x1
	.string	"WdgM_CheckpointReached"
	.byte	0x6
	.byte	0x70
	.byte	0x1
	.uaword	0x296
	.byte	0x1
	.uleb128 0x17
	.uaword	0x2d0
	.uleb128 0x17
	.uaword	0x2b2
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uaword	.LVL7
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL9
	.uaword	.LVL11
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LFE23
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL7
	.uaword	.LVL10
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LFE23
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x44
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
	.uaword	.LFB22
	.uaword	.LFE22-.LFB22
	.uaword	.LFB23
	.uaword	.LFE23-.LFB23
	.uaword	.LFB24
	.uaword	.LFE24-.LFB24
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
	.uaword	.LFB22
	.uaword	.LFE22
	.uaword	.LFB23
	.uaword	.LFE23
	.uaword	.LFB24
	.uaword	.LFE24
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF1:
	.string	"baseTime"
.LASF0:
	.string	"Wdg_Test_t"
	.extern	OS_Counter_1ms,STT_OBJECT,4
	.extern	WdgM_CheckpointReached,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
