	.file	"WdgM_Prv.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.WdgM_Prv_SetTriggerCondition,"ax",@progbits
	.align 1
	.global	WdgM_Prv_SetTriggerCondition
	.type	WdgM_Prv_SetTriggerCondition, @function
WdgM_Prv_SetTriggerCondition:
.LFB25:
	.file 1 "bsw\\WdgM\\src\\WdgM_Prv.c"
	.loc 1 121 0
.LVL0:
	.loc 1 124 0
	movh.a	%a4, hi:WdgM_Mode
	movh.a	%a3, hi:WdgM_ConfigSetPtr
	ld.bu	%d2, [%a4] lo:WdgM_Mode
	ld.a	%a15, [%a3] lo:WdgM_ConfigSetPtr
	ld.a	%a2, [%a15] 16
	mul	%d2, %d2, 40
	addsc.a	%a15, %a2, %d2, 0
	ld.bu	%d15, [%a15] 14
	jz	%d15, .L27
	jeq	%d4, 4, .L5
	jeq	%d4, 3, .L6
	mov	%d4, %d15
.LVL1:
	lea	%a12, [%a3] lo:WdgM_ConfigSetPtr
	mov	%d15, 0
	lea	%a13, [%a4] lo:WdgM_Mode
	j	.L9
.LVL2:
.L7:
	.loc 1 143 0
	ld.hu	%d4, [%a15]0
	call	Wdg_SetTriggerCondition
.LVL3:
	ld.bu	%d2, [%a13]0
	ld.a	%a15, [%a12]0
	ld.a	%a2, [%a15] 16
	mul	%d2, %d2, 40
	addi	%d3, %d8, 1
	.loc 1 124 0
	and	%d3, %d3, 255
	addsc.a	%a15, %a2, %d2, 0
	add	%d15, 1
.LVL4:
	ld.bu	%d4, [%a15] 14
.LVL5:
	jge.u	%d3, %d4, .L28
.LVL6:
.L9:
	.loc 1 126 0
	ld.a	%a15, [%a15] 28
	and	%d3, %d15, 255
	and	%d8, %d15, 255
.LVL7:
	addsc.a	%a15, %a15, %d3, 2
	ld.bu	%d3, [%a15] 3
	jnz	%d3, .L7
	addi	%d3, %d8, 1
	.loc 1 124 0
	and	%d3, %d3, 255
	addsc.a	%a15, %a2, %d2, 0
.LVL8:
	add	%d15, 1
	jlt.u	%d3, %d4, .L9
.LVL9:
.L28:
	ret
.LVL10:
.L5:
	mov.d	%d3, %a4
	movh.a	%a13, hi:WdgM_Prv_FirstDeactivation_b
	mov	%d4, %d15
.LVL11:
	.loc 1 135 0
	lea	%a12, [%a13] lo:WdgM_Prv_FirstDeactivation_b
	.loc 1 124 0
	mov	%d15, 0
	lea	%a14, [%a3] lo:WdgM_ConfigSetPtr
	addi	%d9, %d3, lo:WdgM_Mode
.LVL12:
.L17:
	.loc 1 126 0
	ld.a	%a15, [%a15] 28
	and	%d3, %d15, 255
	and	%d8, %d15, 255
.LVL13:
	addsc.a	%a15, %a15, %d3, 2
	ld.bu	%d3, [%a15] 3
	addsc.a	%a15, %a2, %d2, 0
	jz	%d3, .L16
	.loc 1 135 0
	ld.bu	%d3, [%a12]0
	jeq	%d3, 1, .L29
.L16:
.LVL14:
	addi	%d3, %d8, 1
	.loc 1 124 0
	and	%d3, %d3, 255
	add	%d15, 1
	jlt.u	%d3, %d4, .L17
.LVL15:
.L3:
	.loc 1 151 0
	mov	%d15, 0
	st.b	[%a13] lo:WdgM_Prv_FirstDeactivation_b, %d15
	ret
.LVL16:
.L29:
	.loc 1 137 0
	mov	%d4, 0
	call	Wdg_SetTriggerCondition
.LVL17:
	ld.a	%a15, [%a14]0
	ld.a	%a2, [%a15] 16
	mov.a	%a15, %d9
	ld.bu	%d2, [%a15]0
	mul	%d2, %d2, 40
	addsc.a	%a15, %a2, %d2, 0
	ld.bu	%d4, [%a15] 14
	j	.L16
.LVL18:
.L27:
	movh.a	%a13, hi:WdgM_Prv_FirstDeactivation_b
	.loc 1 149 0
	jeq	%d4, 4, .L3
	ret
.L6:
	.loc 1 124 0
	mov	%d4, %d15
.LVL19:
	mov	%d8, 0
	lea	%a12, [%a3] lo:WdgM_ConfigSetPtr
	lea	%a13, [%a4] lo:WdgM_Mode
.LVL20:
.L13:
	.loc 1 126 0
	ld.a	%a15, [%a15] 28
	and	%d3, %d8, 255
	and	%d15, %d8, 255
.LVL21:
	addsc.a	%a15, %a15, %d3, 2
	ld.bu	%d3, [%a15] 3
	addsc.a	%a15, %a2, %d2, 0
	jz	%d3, .L12
	.loc 1 130 0
	mov	%d4, 0
	call	Wdg_SetTriggerCondition
.LVL22:
	ld.bu	%d2, [%a13]0
	ld.a	%a15, [%a12]0
	ld.a	%a2, [%a15] 16
	mul	%d2, %d2, 40
	addsc.a	%a15, %a2, %d2, 0
	ld.bu	%d4, [%a15] 14
.L12:
.LVL23:
	add	%d3, %d15, 1
	.loc 1 124 0
	and	%d3, %d3, 255
	add	%d8, 1
	jlt.u	%d3, %d4, .L13
	ret
.LFE25:
	.size	WdgM_Prv_SetTriggerCondition, .-WdgM_Prv_SetTriggerCondition
.section .text.WdgM_Prv_LocalStatusMainFunction,"ax",@progbits
	.align 1
	.global	WdgM_Prv_LocalStatusMainFunction
	.type	WdgM_Prv_LocalStatusMainFunction, @function
WdgM_Prv_LocalStatusMainFunction:
.LFB26:
	.loc 1 163 0
.LVL24:
	movh.a	%a12, hi:Rte_Inst_WdgM
	movh	%d9, hi:WdgM_SupervisedEntityDyn
	.loc 1 199 0
	movh	%d11, hi:.L38
	.loc 1 181 0
	movh.a	%a14, hi:WdgM_FirstExpiredSupervisedEntityId
	movh.a	%a13, hi:WdgM_FirstExpiredSupervisedEntityId_Comp
	lea	%a12, [%a12] lo:Rte_Inst_WdgM
	.loc 1 163 0
	mov	%d8, 0
	addi	%d9, %d9, lo:WdgM_SupervisedEntityDyn
	.loc 1 199 0
	addi	%d11, %d11, lo:.L38
	.loc 1 179 0
	mov	%d10, 2
	.loc 1 181 0
	lea	%a14, [%a14] lo:WdgM_FirstExpiredSupervisedEntityId
	lea	%a13, [%a13] lo:WdgM_FirstExpiredSupervisedEntityId_Comp
.LVL25:
.L42:
	.loc 1 176 0
	madd	%d15, %d9, %d8, 12
	and	%d3, %d8, 255
.LVL26:
	mov.a	%a2, %d15
	lea	%a15, [%a2] 8
	ld.bu	%d15, [%a15] 2
	jz.t	%d15, 1, .L31
	.loc 1 181 0
	ld.bu	%d2, [%a14]0
	ld.bu	%d15, [%a13]0
	.loc 1 179 0
	st.b	[%a15] 2, %d10
	.loc 1 181 0
	jeq	%d2, %d15, .L46
.LVL27:
	.loc 1 193 0
	ld.bu	%d15, [%a15] 3
	jeq	%d15, 2, .L36
.LVL28:
.L33:
	.loc 1 196 0
	st.b	[%a15] 3, %d10
.LVL29:
.L40:
	.loc 1 215 0
	ld.a	%a15, [%a12] 4
	mov	%d4, 2
	add	%d8, 1
.LVL30:
	calli	%a15
.LVL31:
	lea	%a12, [%a12] 8
	.loc 1 170 0
	jne	%d8, 5, .L42
	ret
.LVL32:
.L31:
	.loc 1 193 0
	ld.bu	%d2, [%a15] 3
	jeq	%d2, %d15, .L36
	.loc 1 196 0
	st.b	[%a15] 3, %d15
.LVL33:
	.loc 1 199 0
	jge.u	%d15, 5, .L36
	mov.a	%a2, %d11
	addsc.a	%a15, %a2, %d15, 2
	ji	%a15
	.align 2
	.align 2
.L38:
	.code32
	j	.L37
	.code32
	j	.L39
	.code32
	j	.L40
	.code32
	j	.L36
	.code32
	j	.L41
.L41:
	.loc 1 218 0
	ld.a	%a15, [%a12] 4
	mov	%d4, 4
	calli	%a15
.LVL34:
.L36:
	add	%d8, 1
.LVL35:
	lea	%a12, [%a12] 8
	.loc 1 170 0 discriminator 2
	jne	%d8, 5, .L42
	ret
.LVL36:
.L37:
	.loc 1 202 0
	ld.a	%a15, [%a12] 4
	mov	%d4, 0
	calli	%a15
.LVL37:
	.loc 1 203 0
	j	.L36
.L39:
	.loc 1 206 0
	ld.a	%a15, [%a12] 4
	mov	%d4, 1
	calli	%a15
.LVL38:
	.loc 1 213 0
	j	.L36
.LVL39:
.L46:
	.loc 1 183 0
	st.b	[%a14]0, %d3
.LVL40:
	.loc 1 193 0
	ld.bu	%d15, [%a15] 3
	not	%d3
.LVL41:
	.loc 1 184 0
	st.b	[%a13]0, %d3
.LVL42:
	.loc 1 193 0
	jne	%d15, 2, .L33
	j	.L36
.LFE26:
	.size	WdgM_Prv_LocalStatusMainFunction, .-WdgM_Prv_LocalStatusMainFunction
	.global	WdgM_Prv_Rte_Switch_globalMode_Status
.section .bss.a1.WdgM_Prv_Rte_Switch_globalMode_Status,"aw",@nobits
	.type	WdgM_Prv_Rte_Switch_globalMode_Status, @object
	.size	WdgM_Prv_Rte_Switch_globalMode_Status, 1
WdgM_Prv_Rte_Switch_globalMode_Status:
	.zero	1
	.global	WdgM_FirstExpiredSupervisedEntityId_Comp
.section .bss.a1.WdgM_FirstExpiredSupervisedEntityId_Comp,"aw",@nobits
	.type	WdgM_FirstExpiredSupervisedEntityId_Comp, @object
	.size	WdgM_FirstExpiredSupervisedEntityId_Comp, 1
WdgM_FirstExpiredSupervisedEntityId_Comp:
	.zero	1
	.global	WdgM_FirstExpiredSupervisedEntityId
.section .bss.a1.WdgM_FirstExpiredSupervisedEntityId,"aw",@nobits
	.type	WdgM_FirstExpiredSupervisedEntityId, @object
	.size	WdgM_FirstExpiredSupervisedEntityId, 1
WdgM_FirstExpiredSupervisedEntityId:
	.zero	1
	.global	WdgM_Prv_FirstDeactivation_b
.section .data.a1.WdgM_Prv_FirstDeactivation_b,"aw",@progbits
	.type	WdgM_Prv_FirstDeactivation_b, @object
	.size	WdgM_Prv_FirstDeactivation_b, 1
WdgM_Prv_FirstDeactivation_b:
	.byte	1
	.global	WdgM_MainFunction_Cnt_u32
.section .bss.a4.WdgM_MainFunction_Cnt_u32,"aw",@nobits
	.align 2
	.type	WdgM_MainFunction_Cnt_u32, @object
	.size	WdgM_MainFunction_Cnt_u32, 4
WdgM_MainFunction_Cnt_u32:
	.zero	4
	.global	WdgM_ExpiredSupervisionCycleCtr
.section .bss.a2.WdgM_ExpiredSupervisionCycleCtr,"aw",@nobits
	.align 1
	.type	WdgM_ExpiredSupervisionCycleCtr, @object
	.size	WdgM_ExpiredSupervisionCycleCtr, 2
WdgM_ExpiredSupervisionCycleCtr:
	.zero	2
	.global	WdgM_Mode
.section .bss.a1.WdgM_Mode,"aw",@nobits
	.type	WdgM_Mode, @object
	.size	WdgM_Mode, 1
WdgM_Mode:
	.zero	1
	.global	WdgM_AliveSupervisionActive
.section .bss.a1.WdgM_AliveSupervisionActive,"aw",@nobits
	.type	WdgM_AliveSupervisionActive, @object
	.size	WdgM_AliveSupervisionActive, 1
WdgM_AliveSupervisionActive:
	.zero	1
	.global	WdgM_ConfigSetPtr
.section .bss.a4.WdgM_ConfigSetPtr,"aw",@nobits
	.align 2
	.type	WdgM_ConfigSetPtr, @object
	.size	WdgM_ConfigSetPtr, 4
WdgM_ConfigSetPtr:
	.zero	4
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
	.uaword	.LFB25
	.uaword	.LFE25-.LFB25
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB26
	.uaword	.LFE26-.LFB26
	.align 2
.LEFDE2:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 4 ".\\output\\inc/..\\..\\rte\\Rte_Type.h"
	.file 5 ".\\output\\inc/..\\..\\rte\\SchM_WdgM_Type.h"
	.file 6 ".\\output\\inc/..\\..\\os\\Os.h"
	.file 7 ".\\output\\inc/..\\..\\rte\\Rte_WdgM.h"
	.file 8 ".\\output\\inc/..\\..\\bsw\\WdgIf\\api\\WdgIf_Types.h"
	.file 9 ".\\output\\inc/..\\..\\bsw\\WdgM\\WdgM_Cfg.h"
	.file 10 ".\\output\\inc/..\\..\\Integration\\mcal\\Wdg.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x16f7
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\WdgM\\src\\WdgM_Prv.c"
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
	.uaword	0x1a6
	.uleb128 0x3
	.string	"uint16"
	.byte	0x2
	.byte	0x5b
	.uaword	0x1b7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x3
	.string	"uint32"
	.byte	0x2
	.byte	0x6a
	.uaword	0x1cd
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
	.uaword	0x1a6
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
	.uaword	0x1a6
	.uleb128 0x3
	.string	"Std_ReturnType"
	.byte	0x3
	.byte	0x60
	.uaword	0x20c
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2d1
	.uleb128 0x5
	.uleb128 0x6
	.string	"WdgM_CheckpointIdType"
	.byte	0x4
	.uahalf	0x1fa
	.uaword	0x20c
	.uleb128 0x6
	.string	"WdgM_SupervisedEntityIdType"
	.byte	0x4
	.uahalf	0x1fc
	.uaword	0x20c
	.uleb128 0x6
	.string	"WdgM_ModeType"
	.byte	0x4
	.uahalf	0x200
	.uaword	0x20c
	.uleb128 0x6
	.string	"WdgM_GlobalStatusType"
	.byte	0x4
	.uahalf	0x210
	.uaword	0x20c
	.uleb128 0x6
	.string	"WdgM_LocalStatusType"
	.byte	0x4
	.uahalf	0x212
	.uaword	0x20c
	.uleb128 0x4
	.byte	0x4
	.uaword	0x219
	.uleb128 0x4
	.byte	0x4
	.uaword	0x371
	.uleb128 0x7
	.byte	0x1
	.uaword	0x2b5
	.uleb128 0x4
	.byte	0x4
	.uaword	0x37d
	.uleb128 0x8
	.byte	0x1
	.uaword	0x2b5
	.uaword	0x38d
	.uleb128 0x9
	.uaword	0x20c
	.byte	0
	.uleb128 0xa
	.uaword	0x392
	.uleb128 0xb
	.string	"Rte_CDS_WdgM"
	.byte	0x28
	.byte	0x7
	.byte	0x51
	.uaword	0x3e3
	.uleb128 0xc
	.string	"mode_WdgMSupervisedEntity_Alive_Supervision_CPU1"
	.byte	0x7
	.byte	0x53
	.uaword	0x1205
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.string	"Rte_SwitchAckFP_WdgM_WdgM_LocalMode_currentMode"
	.byte	0x4
	.uahalf	0x2d5
	.uaword	0x36b
	.uleb128 0x6
	.string	"Rte_SwitchFP_WdgM_WdgM_LocalMode_currentMode"
	.byte	0x4
	.uahalf	0x2e3
	.uaword	0x377
	.uleb128 0x3
	.string	"Rte_ModeType_WdgMSupervisionCycle"
	.byte	0x5
	.byte	0x1a
	.uaword	0x20c
	.uleb128 0x3
	.string	"ApplicationType"
	.byte	0x6
	.byte	0xee
	.uaword	0x1a6
	.uleb128 0xa
	.uaword	0x365
	.uleb128 0x6
	.string	"TickType"
	.byte	0x6
	.uahalf	0x10b
	.uaword	0x1cd
	.uleb128 0x4
	.byte	0x4
	.uaword	0x495
	.uleb128 0xd
	.byte	0xc
	.byte	0x6
	.uahalf	0x1f1
	.uaword	0x4fd
	.uleb128 0xe
	.string	"maxallowedvalue"
	.byte	0x6
	.uahalf	0x1f2
	.uaword	0x495
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"ticksperbase"
	.byte	0x6
	.uahalf	0x1f3
	.uaword	0x495
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"mincycle"
	.byte	0x6
	.uahalf	0x1f4
	.uaword	0x495
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x6
	.string	"AlarmBaseType"
	.byte	0x6
	.uahalf	0x1f5
	.uaword	0x4ac
	.uleb128 0x6
	.string	"Os_CounterIncrAdvType"
	.byte	0x6
	.uahalf	0x215
	.uaword	0x531
	.uleb128 0x4
	.byte	0x4
	.uaword	0x537
	.uleb128 0x7
	.byte	0x1
	.uaword	0x2a3
	.uleb128 0xf
	.string	"s_swd"
	.byte	0x4
	.byte	0x6
	.uahalf	0x21a
	.uaword	0x55e
	.uleb128 0xe
	.string	"count"
	.byte	0x6
	.uahalf	0x21b
	.uaword	0x495
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.byte	0x6
	.uahalf	0x219
	.uaword	0x573
	.uleb128 0x11
	.string	"sw"
	.byte	0x6
	.uahalf	0x21c
	.uaword	0x53d
	.byte	0
	.uleb128 0xf
	.string	"Os_CounterDynType_s"
	.byte	0x4
	.byte	0x6
	.uahalf	0x218
	.uaword	0x5ab
	.uleb128 0xe
	.string	"type_dependent"
	.byte	0x6
	.uahalf	0x21d
	.uaword	0x55e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.string	"Os_CounterDynType"
	.byte	0x6
	.uahalf	0x21e
	.uaword	0x573
	.uleb128 0xf
	.string	"Os_CounterType_s"
	.byte	0x1c
	.byte	0x6
	.uahalf	0x21f
	.uaword	0x64f
	.uleb128 0xe
	.string	"dynamic"
	.byte	0x6
	.uahalf	0x220
	.uaword	0x64f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"advincr"
	.byte	0x6
	.uahalf	0x221
	.uaword	0x513
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"base"
	.byte	0x6
	.uahalf	0x222
	.uaword	0x4fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"core"
	.byte	0x6
	.uahalf	0x223
	.uaword	0x2cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"access"
	.byte	0x6
	.uahalf	0x224
	.uaword	0x20c
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"application"
	.byte	0x6
	.uahalf	0x225
	.uaword	0x479
	.byte	0x2
	.byte	0x23
	.uleb128 0x19
	.byte	0
	.uleb128 0xa
	.uaword	0x654
	.uleb128 0x4
	.byte	0x4
	.uaword	0x5ab
	.uleb128 0x6
	.string	"Os_CounterType"
	.byte	0x6
	.uahalf	0x226
	.uaword	0x5c5
	.uleb128 0x6
	.string	"CounterType"
	.byte	0x6
	.uahalf	0x227
	.uaword	0x685
	.uleb128 0x4
	.byte	0x4
	.uaword	0x68b
	.uleb128 0xa
	.uaword	0x65a
	.uleb128 0x12
	.byte	0x1
	.byte	0x8
	.byte	0x22
	.uaword	0x6ce
	.uleb128 0x13
	.string	"WDGIF_OFF_MODE"
	.sleb128 0
	.uleb128 0x13
	.string	"WDGIF_SLOW_MODE"
	.sleb128 1
	.uleb128 0x13
	.string	"WDGIF_FAST_MODE"
	.sleb128 2
	.byte	0
	.uleb128 0x3
	.string	"WdgIf_ModeType"
	.byte	0x8
	.byte	0x26
	.uaword	0x690
	.uleb128 0x14
	.byte	0x8
	.byte	0x9
	.byte	0x9b
	.uaword	0x709
	.uleb128 0x15
	.uaword	.LASF0
	.byte	0x9
	.byte	0x9d
	.uaword	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.uaword	.LASF1
	.byte	0x9
	.byte	0x9e
	.uaword	0x365
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"WdgM_CheckpointDynType"
	.byte	0x9
	.byte	0x9f
	.uaword	0x6e4
	.uleb128 0x14
	.byte	0x4
	.byte	0x9
	.byte	0xa1
	.uaword	0x74d
	.uleb128 0xc
	.string	"PtrToCheckpointDyn"
	.byte	0x9
	.byte	0xa3
	.uaword	0x74d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.uaword	0x752
	.uleb128 0x4
	.byte	0x4
	.uaword	0x709
	.uleb128 0x3
	.string	"WdgM_CheckpointType"
	.byte	0x9
	.byte	0xa4
	.uaword	0x727
	.uleb128 0x14
	.byte	0xc
	.byte	0x9
	.byte	0xa6
	.uaword	0x851
	.uleb128 0xc
	.string	"FailedAliveSupervisionRefCycleCtr"
	.byte	0x9
	.byte	0xa8
	.uaword	0x20c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.uaword	.LASF2
	.byte	0x9
	.byte	0xa9
	.uaword	0x20c
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xc
	.string	"IndividualSupervisionCycleCtr"
	.byte	0x9
	.byte	0xaa
	.uaword	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xc
	.string	"IndividualAliveUpdateCtr"
	.byte	0x9
	.byte	0xab
	.uaword	0x238
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"AliveSupervisionIdx"
	.byte	0x9
	.byte	0xac
	.uaword	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.string	"NewLocalStatus"
	.byte	0x9
	.byte	0xad
	.uaword	0x348
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xc
	.string	"OldLocalStatus"
	.byte	0x9
	.byte	0xae
	.uaword	0x348
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.byte	0
	.uleb128 0x3
	.string	"WdgM_SupervisedEntityDynType"
	.byte	0x9
	.byte	0xaf
	.uaword	0x773
	.uleb128 0x14
	.byte	0x18
	.byte	0x9
	.byte	0xb1
	.uaword	0x959
	.uleb128 0xc
	.string	"NoOfCheckpoint"
	.byte	0x9
	.byte	0xb3
	.uaword	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"PartionEnabled"
	.byte	0x9
	.byte	0xb4
	.uaword	0x273
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xc
	.string	"TimerId"
	.byte	0x9
	.byte	0xb5
	.uaword	0x671
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"OsApplicationId"
	.byte	0x9
	.byte	0xb6
	.uaword	0x479
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.string	"PtrToCheckpoint"
	.byte	0x9
	.byte	0xb7
	.uaword	0x959
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.string	"PtrToSupervisedEntityDyn"
	.byte	0x9
	.byte	0xb8
	.uaword	0x964
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.string	"hasInternalGraph"
	.byte	0x9
	.byte	0xba
	.uaword	0x273
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xc
	.string	"idxInternalGraphCPProperty"
	.byte	0x9
	.byte	0xbb
	.uaword	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x95f
	.uleb128 0xa
	.uaword	0x758
	.uleb128 0xa
	.uaword	0x969
	.uleb128 0x4
	.byte	0x4
	.uaword	0x851
	.uleb128 0x3
	.string	"WdgM_SupervisedEntityType"
	.byte	0x9
	.byte	0xbd
	.uaword	0x875
	.uleb128 0x14
	.byte	0xa
	.byte	0x9
	.byte	0xc0
	.uaword	0xa3d
	.uleb128 0xc
	.string	"MinMargin"
	.byte	0x9
	.byte	0xc2
	.uaword	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"MaxMargin"
	.byte	0x9
	.byte	0xc3
	.uaword	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xc
	.string	"AliveSupervisionCheckpointId"
	.byte	0x9
	.byte	0xc4
	.uaword	0x2d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.uaword	.LASF3
	.byte	0x9
	.byte	0xc5
	.uaword	0x2f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0xc
	.string	"ExpectedAliveIndications"
	.byte	0x9
	.byte	0xc6
	.uaword	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xc
	.string	"SupervisionReferenceCycle"
	.byte	0x9
	.byte	0xc7
	.uaword	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x3
	.string	"WdgM_AliveSupervisionType"
	.byte	0x9
	.byte	0xc8
	.uaword	0x990
	.uleb128 0x14
	.byte	0xc
	.byte	0x9
	.byte	0xcb
	.uaword	0xad8
	.uleb128 0xc
	.string	"StartCheckpointId"
	.byte	0x9
	.byte	0xcd
	.uaword	0x2d2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"StopCheckpointId"
	.byte	0x9
	.byte	0xce
	.uaword	0x2d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x15
	.uaword	.LASF3
	.byte	0x9
	.byte	0xcf
	.uaword	0x2f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xc
	.string	"DeadlineMin"
	.byte	0x9
	.byte	0xd0
	.uaword	0x495
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"DeadlineMax"
	.byte	0x9
	.byte	0xd1
	.uaword	0x495
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x3
	.string	"WdgM_DeadlineSupervisionType"
	.byte	0x9
	.byte	0xd2
	.uaword	0xa5e
	.uleb128 0x14
	.byte	0x2
	.byte	0x9
	.byte	0xd4
	.uaword	0xb21
	.uleb128 0x15
	.uaword	.LASF2
	.byte	0x9
	.byte	0xd6
	.uaword	0x20c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.uaword	.LASF3
	.byte	0x9
	.byte	0xd7
	.uaword	0x2f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x3
	.string	"WdgM_LocalStatusParamsType"
	.byte	0x9
	.byte	0xd8
	.uaword	0xafc
	.uleb128 0x14
	.byte	0x4
	.byte	0x9
	.byte	0xda
	.uaword	0xb92
	.uleb128 0xc
	.string	"TriggerConditionValue"
	.byte	0x9
	.byte	0xdc
	.uaword	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"DeviceIdx"
	.byte	0x9
	.byte	0xdd
	.uaword	0x20c
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xc
	.string	"WdgMode"
	.byte	0x9
	.byte	0xde
	.uaword	0x6ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0x3
	.string	"WdgM_TriggerType"
	.byte	0x9
	.byte	0xdf
	.uaword	0xb43
	.uleb128 0x12
	.byte	0x1
	.byte	0x9
	.byte	0xe2
	.uaword	0xc1f
	.uleb128 0x13
	.string	"WDGM_EXTERNALPOSNGRAPH_INITIAL_E"
	.sleb128 1
	.uleb128 0x13
	.string	"WDGM_EXTERNALPOSNGRAPH_FINAL_E"
	.sleb128 2
	.uleb128 0x13
	.string	"WDGM_EXTERNALPOSNGRAPH_INTERMEDIATE_E"
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.string	"WdgM_ExternalPositionInGraph_ten"
	.byte	0x9
	.byte	0xe6
	.uaword	0xbaa
	.uleb128 0x14
	.byte	0x8
	.byte	0x9
	.byte	0xe8
	.uaword	0xcf6
	.uleb128 0xc
	.string	"SourcePosnInGraph_en"
	.byte	0x9
	.byte	0xea
	.uaword	0xc1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"SourceSEId"
	.byte	0x9
	.byte	0xeb
	.uaword	0x2f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xc
	.string	"SourceCPId"
	.byte	0x9
	.byte	0xec
	.uaword	0x2d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xc
	.string	"DestSEId"
	.byte	0x9
	.byte	0xed
	.uaword	0x2f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xc
	.string	"DestCPId"
	.byte	0x9
	.byte	0xee
	.uaword	0x2d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"DestPosnInGraph_en"
	.byte	0x9
	.byte	0xef
	.uaword	0xc1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0xc
	.string	"ExternalGraphId"
	.byte	0x9
	.byte	0xf0
	.uaword	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0
	.uleb128 0x3
	.string	"WdgM_ExternalGraphType"
	.byte	0x9
	.byte	0xf1
	.uaword	0xc47
	.uleb128 0x14
	.byte	0x28
	.byte	0x9
	.byte	0xfc
	.uaword	0xead
	.uleb128 0xc
	.string	"ExpiredSupervisionCycleTol"
	.byte	0x9
	.byte	0xfe
	.uaword	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"SchMWdgMSupervisionCycle"
	.byte	0x9
	.byte	0xff
	.uaword	0x450
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xe
	.string	"SupervisionCycle"
	.byte	0x9
	.uahalf	0x100
	.uaword	0x238
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"NoOfAliveSupervision"
	.byte	0x9
	.uahalf	0x101
	.uaword	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.uaword	.LASF0
	.byte	0x9
	.uahalf	0x102
	.uaword	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xe
	.string	"NoOfLocalStatusParams"
	.byte	0x9
	.uahalf	0x103
	.uaword	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"NoOfTrigger"
	.byte	0x9
	.uahalf	0x104
	.uaword	0x20c
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xe
	.string	"PtrToAliveSupervision"
	.byte	0x9
	.uahalf	0x105
	.uaword	0xead
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"PtrToDeadlineSupervision"
	.byte	0x9
	.uahalf	0x106
	.uaword	0xeb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"PtrToLocalStatusParams"
	.byte	0x9
	.uahalf	0x107
	.uaword	0xec3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"PtrToTrigger"
	.byte	0x9
	.uahalf	0x108
	.uaword	0xece
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"NoOfExternalGraphTransitions"
	.byte	0x9
	.uahalf	0x109
	.uaword	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.string	"PtrToExternalGraph"
	.byte	0x9
	.uahalf	0x10a
	.uaword	0xed9
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0xeb3
	.uleb128 0xa
	.uaword	0xa3d
	.uleb128 0x4
	.byte	0x4
	.uaword	0xebe
	.uleb128 0xa
	.uaword	0xad8
	.uleb128 0x4
	.byte	0x4
	.uaword	0xec9
	.uleb128 0xa
	.uaword	0xb21
	.uleb128 0x4
	.byte	0x4
	.uaword	0xed4
	.uleb128 0xa
	.uaword	0xb92
	.uleb128 0x4
	.byte	0x4
	.uaword	0xedf
	.uleb128 0xa
	.uaword	0xcf6
	.uleb128 0x6
	.string	"WdgM_PrvModeType"
	.byte	0x9
	.uahalf	0x10b
	.uaword	0xd14
	.uleb128 0xd
	.byte	0x18
	.byte	0x9
	.uahalf	0x10e
	.uaword	0xfd4
	.uleb128 0xe
	.string	"InitialMode"
	.byte	0x9
	.uahalf	0x110
	.uaword	0x314
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"NoOfMode"
	.byte	0x9
	.uahalf	0x111
	.uaword	0x20c
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xe
	.string	"ErrorSupervision"
	.byte	0x9
	.uahalf	0x116
	.uaword	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xe
	.string	"ErrorSetMode"
	.byte	0x9
	.uahalf	0x117
	.uaword	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"PtrToRunningCounterValue"
	.byte	0x9
	.uahalf	0x119
	.uaword	0xfd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.uaword	.LASF1
	.byte	0x9
	.uahalf	0x11a
	.uaword	0x490
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"PtrToMode"
	.byte	0x9
	.uahalf	0x11b
	.uaword	0xfd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"PtrToExternalGraphsIndices"
	.byte	0x9
	.uahalf	0x11c
	.uaword	0x490
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0
	.uleb128 0xa
	.uaword	0x4a6
	.uleb128 0x4
	.byte	0x4
	.uaword	0xfdf
	.uleb128 0xa
	.uaword	0xee4
	.uleb128 0x6
	.string	"WdgM_ConfigType"
	.byte	0x9
	.uahalf	0x11d
	.uaword	0xefd
	.uleb128 0x17
	.byte	0x1
	.byte	0x9
	.uahalf	0x122
	.uaword	0x1072
	.uleb128 0x13
	.string	"WDGM_POSNGRAPH_NONE_E"
	.sleb128 0
	.uleb128 0x13
	.string	"WDGM_POSNGRAPH_INITIAL_E"
	.sleb128 1
	.uleb128 0x13
	.string	"WDGM_POSNGRAPH_FINAL_E"
	.sleb128 2
	.uleb128 0x13
	.string	"WDGM_POSNGRAPH_INTERMEDIATE_E"
	.sleb128 3
	.byte	0
	.uleb128 0x6
	.string	"WdgM_PositionInGraph_ten"
	.byte	0x9
	.uahalf	0x127
	.uaword	0xffc
	.uleb128 0xd
	.byte	0x8
	.byte	0x9
	.uahalf	0x129
	.uaword	0x110d
	.uleb128 0xe
	.string	"posnInGraph_en"
	.byte	0x9
	.uahalf	0x12b
	.uaword	0x1072
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"nrDestCheckpoints"
	.byte	0x9
	.uahalf	0x12c
	.uaword	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xe
	.string	"idxDestCheckpoints"
	.byte	0x9
	.uahalf	0x12d
	.uaword	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"InternalGraphId"
	.byte	0x9
	.uahalf	0x12e
	.uaword	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0
	.uleb128 0x6
	.string	"WdgM_InternalGraph_CPPropertyType"
	.byte	0x9
	.uahalf	0x12f
	.uaword	0x1093
	.uleb128 0xd
	.byte	0x2
	.byte	0x9
	.uahalf	0x131
	.uaword	0x117b
	.uleb128 0xe
	.string	"flgActivity"
	.byte	0x9
	.uahalf	0x133
	.uaword	0x273
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"idLastReachedCheckpoint"
	.byte	0x9
	.uahalf	0x134
	.uaword	0x2d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x6
	.string	"WdgM_InternalGraph_StatusType"
	.byte	0x9
	.uahalf	0x135
	.uaword	0x1137
	.uleb128 0xb
	.string	"Rte_PDS_WdgM_WdgM_LocalMode_P"
	.byte	0x8
	.byte	0x7
	.byte	0x4b
	.uaword	0x1205
	.uleb128 0xc
	.string	"SwitchAck_currentMode"
	.byte	0x7
	.byte	0x4c
	.uaword	0x3e3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"Switch_currentMode"
	.byte	0x7
	.byte	0x4d
	.uaword	0x41b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"Rte_PDS_WdgM_WdgM_LocalMode_PA"
	.byte	0x7
	.byte	0x50
	.uaword	0x122b
	.uleb128 0x18
	.uaword	0x11a1
	.uaword	0x123b
	.uleb128 0x19
	.uaword	0x200
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"Rte_PortHandle_WdgM_LocalMode_P"
	.byte	0x7
	.byte	0x60
	.uaword	0x1262
	.uleb128 0x4
	.byte	0x4
	.uaword	0x1268
	.uleb128 0xa
	.uaword	0x11a1
	.uleb128 0x1a
	.string	"WdgM_Prv_ComplementSeId_to_Inl"
	.byte	0x9
	.uahalf	0x17a
	.byte	0x1
	.uaword	0x2f0
	.byte	0x3
	.uaword	0x12a8
	.uleb128 0x1b
	.string	"SEID"
	.byte	0x9
	.uahalf	0x17a
	.uaword	0x2f0
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.string	"WdgM_Prv_SetTriggerCondition"
	.byte	0x1
	.byte	0x78
	.byte	0x1
	.uaword	.LFB25
	.uaword	.LFE25
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x133b
	.uleb128 0x1d
	.string	"globalStatus_tu8"
	.byte	0x1
	.byte	0x78
	.uaword	0x32a
	.uaword	.LLST0
	.uleb128 0x1e
	.string	"triggerIdx_u8"
	.byte	0x1
	.byte	0x7a
	.uaword	0x20c
	.uaword	.LLST1
	.uleb128 0x1f
	.uaword	.LVL3
	.uaword	0x16d6
	.uleb128 0x20
	.uaword	.LVL17
	.uaword	0x16d6
	.uaword	0x132b
	.uleb128 0x21
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x22
	.uaword	.LVL22
	.uaword	0x16d6
	.uleb128 0x21
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.string	"WdgM_Prv_LocalStatusMainFunction"
	.byte	0x1
	.byte	0xa2
	.byte	0x1
	.uaword	.LFB26
	.uaword	.LFE26
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1416
	.uleb128 0x1e
	.string	"SEID"
	.byte	0x1
	.byte	0xa4
	.uaword	0x2f0
	.uaword	.LLST2
	.uleb128 0x23
	.string	"PortHandle"
	.byte	0x1
	.byte	0xa6
	.uaword	0x123b
	.uleb128 0x1e
	.string	"NewLocalStatusCache"
	.byte	0x1
	.byte	0xa8
	.uaword	0x348
	.uaword	.LLST3
	.uleb128 0x1e
	.string	"OldLocalStatusCache"
	.byte	0x1
	.byte	0xa9
	.uaword	0x348
	.uaword	.LLST4
	.uleb128 0x24
	.uaword	.LVL31
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	0x13e3
	.uleb128 0x21
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x24
	.uaword	.LVL34
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	0x13f5
	.uleb128 0x21
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x34
	.byte	0
	.uleb128 0x24
	.uaword	.LVL37
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	0x1407
	.uleb128 0x21
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x25
	.uaword	.LVL38
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x18
	.uaword	0x96f
	.uaword	0x1426
	.uleb128 0x19
	.uaword	0x200
	.byte	0x4
	.byte	0
	.uleb128 0x26
	.string	"WdgM_SupervisedEntity"
	.byte	0x9
	.uahalf	0x143
	.uaword	0x1446
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.uaword	0x1416
	.uleb128 0x18
	.uaword	0x2d2
	.uaword	0x145b
	.uleb128 0x19
	.uaword	0x200
	.byte	0x3
	.byte	0
	.uleb128 0x26
	.string	"WdgM_InternalGraph_DestCheckpoints"
	.byte	0x9
	.uahalf	0x145
	.uaword	0x1488
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.uaword	0x144b
	.uleb128 0x18
	.uaword	0x110d
	.uaword	0x149d
	.uleb128 0x19
	.uaword	0x200
	.byte	0x4
	.byte	0
	.uleb128 0x26
	.string	"WdgM_InternalGraph_CPProperty"
	.byte	0x9
	.uahalf	0x146
	.uaword	0x14c5
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.uaword	0x148d
	.uleb128 0x18
	.uaword	0x851
	.uaword	0x14da
	.uleb128 0x19
	.uaword	0x200
	.byte	0x4
	.byte	0
	.uleb128 0x26
	.string	"WdgM_SupervisedEntityDyn"
	.byte	0x9
	.uahalf	0x16a
	.uaword	0x14ca
	.byte	0x1
	.byte	0x1
	.uleb128 0x18
	.uaword	0x117b
	.uaword	0x150d
	.uleb128 0x19
	.uaword	0x200
	.byte	0
	.byte	0
	.uleb128 0x26
	.string	"WdgM_InternalGraph_StatusDyn"
	.byte	0x9
	.uahalf	0x16b
	.uaword	0x14fd
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.string	"Rte_Inst_WdgM"
	.byte	0x7
	.byte	0x6d
	.uaword	0x38d
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.string	"WdgM_ConfigSetPtr"
	.byte	0x1
	.byte	0x14
	.uaword	0x156b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	WdgM_ConfigSetPtr
	.uleb128 0x4
	.byte	0x4
	.uaword	0x1571
	.uleb128 0xa
	.uaword	0xfe4
	.uleb128 0x28
	.string	"WdgM_AliveSupervisionActive"
	.byte	0x1
	.byte	0x1c
	.uaword	0x273
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	WdgM_AliveSupervisionActive
	.uleb128 0x28
	.string	"WdgM_Mode"
	.byte	0x1
	.byte	0x24
	.uaword	0x20c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	WdgM_Mode
	.uleb128 0x28
	.string	"WdgM_ExpiredSupervisionCycleCtr"
	.byte	0x1
	.byte	0x2c
	.uaword	0x219
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	WdgM_ExpiredSupervisionCycleCtr
	.uleb128 0x28
	.string	"WdgM_MainFunction_Cnt_u32"
	.byte	0x1
	.byte	0x35
	.uaword	0x238
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	WdgM_MainFunction_Cnt_u32
	.uleb128 0x28
	.string	"WdgM_Prv_FirstDeactivation_b"
	.byte	0x1
	.byte	0x3e
	.uaword	0x273
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	WdgM_Prv_FirstDeactivation_b
	.uleb128 0x28
	.string	"WdgM_FirstExpiredSupervisedEntityId"
	.byte	0x1
	.byte	0x51
	.uaword	0x2f0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	WdgM_FirstExpiredSupervisedEntityId
	.uleb128 0x28
	.string	"WdgM_FirstExpiredSupervisedEntityId_Comp"
	.byte	0x1
	.byte	0x52
	.uaword	0x2f0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	WdgM_FirstExpiredSupervisedEntityId_Comp
	.uleb128 0x28
	.string	"WdgM_Prv_Rte_Switch_globalMode_Status"
	.byte	0x1
	.byte	0x65
	.uaword	0x2b5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	WdgM_Prv_Rte_Switch_globalMode_Status
	.uleb128 0x29
	.byte	0x1
	.string	"Wdg_SetTriggerCondition"
	.byte	0xa
	.byte	0x3b
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.uaword	0x219
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x13
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL1
	.uaword	.LVL10
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL11
	.uaword	.LVL18
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL19
	.uaword	.LFE25
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL2
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL2
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LVL12
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL18
	.uaword	.LVL20
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL23
	.uaword	.LFE25
	.uahalf	0x3
	.byte	0x7f
	.sleb128 1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL26
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL32
	.uaword	.LVL34
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL34
	.uaword	.LVL35
	.uahalf	0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL35
	.uaword	.LVL36
	.uahalf	0x3
	.byte	0x78
	.sleb128 0
	.byte	0x9f
	.uaword	.LVL36
	.uaword	.LFE26
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL27
	.uaword	.LVL29
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL32
	.uaword	.LVL34
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL36
	.uaword	.LVL39
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL42
	.uaword	.LFE26
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
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
	.uaword	.LFB25
	.uaword	.LFE25-.LFB25
	.uaword	.LFB26
	.uaword	.LFE26-.LFB26
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB25
	.uaword	.LFE25
	.uaword	.LFB26
	.uaword	.LFE26
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"NoOfDeadlineSupervision"
.LASF3:
	.string	"SupervisedEntityId"
.LASF2:
	.string	"FailedAliveSupervisionRefCycleTol"
.LASF1:
	.string	"PtrToDeadlineIndices"
	.extern	WdgM_SupervisedEntityDyn,STT_OBJECT,60
	.extern	Rte_Inst_WdgM,STT_OBJECT,40
	.extern	Wdg_SetTriggerCondition,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
