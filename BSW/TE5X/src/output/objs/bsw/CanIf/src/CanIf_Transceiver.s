	.file	"CanIf_Transceiver.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.CanIf_SetTrcvMode,"ax",@progbits
	.align 1
	.global	CanIf_SetTrcvMode
	.type	CanIf_SetTrcvMode, @function
CanIf_SetTrcvMode:
.LFB86:
	.file 1 "bsw\\CanIf\\src\\CanIf_Transceiver.c"
	.loc 1 34 0
.LVL0:
	.loc 1 39 0
	movh.a	%a15, hi:CanIf_Prv_InitStatus_b
	ld.bu	%d3, [%a15] lo:CanIf_Prv_InitStatus_b
	jz	%d3, .L7
	.loc 1 42 0
	jnz	%d4, .L8
	.loc 1 45 0
	jge.u	%d5, 3, .L9
	.loc 1 48 0
	j	CanTrcv_SetOpMode
.LVL1:
.L9:
	.loc 1 45 0 discriminator 1
	mov	%e4, 60
.LVL2:
	mov	%d6, 13
	mov	%d7, 18
	call	Det_ReportError
.LVL3:
	.loc 1 53 0 discriminator 1
	mov	%d2, 1
	ret
.LVL4:
.L7:
	.loc 1 39 0 discriminator 1
	mov	%e4, 60
.LVL5:
	mov	%d6, 13
	mov	%d7, 30
	call	Det_ReportError
.LVL6:
	.loc 1 53 0 discriminator 1
	mov	%d2, 1
	ret
.LVL7:
.L8:
	.loc 1 42 0 discriminator 1
	mov	%e4, 60
.LVL8:
	mov	%d6, 13
	mov	%d7, 17
	call	Det_ReportError
.LVL9:
	.loc 1 53 0 discriminator 1
	mov	%d2, 1
	ret
.LFE86:
	.size	CanIf_SetTrcvMode, .-CanIf_SetTrcvMode
.section .text.CanIf_GetTrcvMode,"ax",@progbits
	.align 1
	.global	CanIf_GetTrcvMode
	.type	CanIf_GetTrcvMode, @function
CanIf_GetTrcvMode:
.LFB87:
	.loc 1 79 0
.LVL10:
	.loc 1 84 0
	movh.a	%a2, hi:CanIf_Prv_InitStatus_b
	ld.bu	%d2, [%a2] lo:CanIf_Prv_InitStatus_b
	jz	%d2, .L15
	.loc 1 87 0
	jnz	%d4, .L16
	.loc 1 90 0
	jz.a	%a4, .L17
	.loc 1 93 0
	j	CanTrcv_GetOpMode
.LVL11:
.L15:
	.loc 1 84 0 discriminator 1
	mov	%e4, 60
.LVL12:
	mov	%d6, 14
	mov	%d7, 30
	call	Det_ReportError
.LVL13:
.L12:
	.loc 1 98 0
	mov	%d2, 1
	ret
.LVL14:
.L16:
	.loc 1 87 0 discriminator 1
	mov	%e4, 60
.LVL15:
	mov	%d6, 14
	mov	%d7, 17
	call	Det_ReportError
.LVL16:
	.loc 1 98 0 discriminator 1
	mov	%d2, 1
	ret
.LVL17:
.L17:
	.loc 1 90 0 discriminator 1
	mov	%e4, 60
.LVL18:
	mov	%d6, 14
	mov	%d7, 20
	call	Det_ReportError
.LVL19:
	j	.L12
.LFE87:
	.size	CanIf_GetTrcvMode, .-CanIf_GetTrcvMode
.section .text.CanIf_GetTrcvWakeupReason,"ax",@progbits
	.align 1
	.global	CanIf_GetTrcvWakeupReason
	.type	CanIf_GetTrcvWakeupReason, @function
CanIf_GetTrcvWakeupReason:
.LFB88:
	.loc 1 124 0
.LVL20:
	.loc 1 129 0
	movh.a	%a2, hi:CanIf_Prv_InitStatus_b
	ld.bu	%d2, [%a2] lo:CanIf_Prv_InitStatus_b
	jz	%d2, .L23
	.loc 1 132 0
	jnz	%d4, .L24
	.loc 1 135 0
	jz.a	%a4, .L25
	.loc 1 138 0
	j	CanTrcv_GetBusWuReason
.LVL21:
.L23:
	.loc 1 129 0 discriminator 1
	mov	%e4, 60
.LVL22:
	mov	%d6, 15
	mov	%d7, 30
	call	Det_ReportError
.LVL23:
.L20:
	.loc 1 143 0
	mov	%d2, 1
	ret
.LVL24:
.L24:
	.loc 1 132 0 discriminator 1
	mov	%e4, 60
.LVL25:
	mov	%d6, 15
	mov	%d7, 17
	call	Det_ReportError
.LVL26:
	.loc 1 143 0 discriminator 1
	mov	%d2, 1
	ret
.LVL27:
.L25:
	.loc 1 135 0 discriminator 1
	mov	%e4, 60
.LVL28:
	mov	%d6, 15
	mov	%d7, 20
	call	Det_ReportError
.LVL29:
	j	.L20
.LFE88:
	.size	CanIf_GetTrcvWakeupReason, .-CanIf_GetTrcvWakeupReason
.section .text.CanIf_SetTrcvWakeupMode,"ax",@progbits
	.align 1
	.global	CanIf_SetTrcvWakeupMode
	.type	CanIf_SetTrcvWakeupMode, @function
CanIf_SetTrcvWakeupMode:
.LFB89:
	.loc 1 167 0
.LVL30:
	.loc 1 172 0
	movh.a	%a15, hi:CanIf_Prv_InitStatus_b
	ld.bu	%d3, [%a15] lo:CanIf_Prv_InitStatus_b
	jz	%d3, .L31
	.loc 1 175 0
	jnz	%d4, .L32
	.loc 1 178 0
	jge.u	%d5, 3, .L33
	.loc 1 181 0
	j	CanTrcv_SetWakeupMode
.LVL31:
.L33:
	.loc 1 178 0 discriminator 1
	mov	%e4, 60
.LVL32:
	mov	%d6, 16
	mov	%d7, 19
	call	Det_ReportError
.LVL33:
	.loc 1 185 0 discriminator 1
	mov	%d2, 1
	ret
.LVL34:
.L31:
	.loc 1 172 0 discriminator 1
	mov	%e4, 60
.LVL35:
	mov	%d6, 16
	mov	%d7, 30
	call	Det_ReportError
.LVL36:
	.loc 1 185 0 discriminator 1
	mov	%d2, 1
	ret
.LVL37:
.L32:
	.loc 1 175 0 discriminator 1
	mov	%e4, 60
.LVL38:
	mov	%d6, 16
	mov	%d7, 17
	call	Det_ReportError
.LVL39:
	.loc 1 185 0 discriminator 1
	mov	%d2, 1
	ret
.LFE89:
	.size	CanIf_SetTrcvWakeupMode, .-CanIf_SetTrcvWakeupMode
.section .text.CanIf_TrcvModeIndication,"ax",@progbits
	.align 1
	.global	CanIf_TrcvModeIndication
	.type	CanIf_TrcvModeIndication, @function
CanIf_TrcvModeIndication:
.LFB90:
	.loc 1 253 0
.LVL40:
	.loc 1 261 0
	movh.a	%a15, hi:CanIf_Prv_InitStatus_b
	ld.bu	%d2, [%a15] lo:CanIf_Prv_InitStatus_b
	jz	%d2, .L38
	.loc 1 264 0
	jnz	%d4, .L39
	.loc 1 267 0
	movh.a	%a15, hi:CanIf_Callback
	ld.a	%a15, [%a15] lo:CanIf_Callback
	jz.a	%a15, .L34
	.loc 1 269 0
	ji	%a15
.LVL41:
.L38:
	.loc 1 261 0 discriminator 1
	mov	%e4, 60
.LVL42:
	mov	%d6, 24
	mov	%d7, 30
	j	Det_ReportError
.LVL43:
.L34:
	ret
.L39:
	.loc 1 264 0 discriminator 1
	mov	%e4, 60
.LVL44:
	mov	%d6, 24
	mov	%d7, 17
	j	Det_ReportError
.LVL45:
.LFE90:
	.size	CanIf_TrcvModeIndication, .-CanIf_TrcvModeIndication
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
	.uaword	.LFB86
	.uaword	.LFE86-.LFB86
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB87
	.uaword	.LFE87-.LFB87
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB88
	.uaword	.LFE88-.LFB88
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB89
	.uaword	.LFE89-.LFB89
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB90
	.uaword	.LFE90-.LFB90
	.align 2
.LEFDE8:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 4 ".\\output\\inc/..\\..\\bsw\\CanIf\\integration\\Can_GeneralTypes.h"
	.file 5 ".\\output\\inc/..\\..\\bsw\\CanIf\\api\\CanIf_Types.h"
	.file 6 ".\\output\\inc/..\\..\\bsw\\CanIf\\CanIf_Cfg.h"
	.file 7 "bsw\\CanIf\\src\\CanIf_Prv.h"
	.file 8 ".\\output\\inc/..\\..\\bsw\\CanTrcv\\api\\CanTrcv.h"
	.file 9 ".\\output\\inc/..\\..\\bsw\\Det\\api\\Det.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xafa
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\CanIf\\src\\CanIf_Transceiver.c"
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
	.uleb128 0x3
	.string	"uint16"
	.byte	0x2
	.byte	0x5b
	.uaword	0x1f8
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
	.uleb128 0x3
	.string	"boolean"
	.byte	0x2
	.byte	0x80
	.uaword	0x1cc
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
	.uaword	0x1bf
	.uleb128 0x4
	.byte	0x1
	.byte	0x4
	.byte	0x84
	.uaword	0x300
	.uleb128 0x5
	.string	"CANTRCV_TRCVMODE_NORMAL"
	.sleb128 0
	.uleb128 0x5
	.string	"CANTRCV_TRCVMODE_SLEEP"
	.sleb128 1
	.uleb128 0x5
	.string	"CANTRCV_TRCVMODE_STANDBY"
	.sleb128 2
	.byte	0
	.uleb128 0x3
	.string	"CanTrcv_TrcvModeType"
	.byte	0x4
	.byte	0x89
	.uaword	0x2a9
	.uleb128 0x4
	.byte	0x1
	.byte	0x4
	.byte	0x8d
	.uaword	0x36d
	.uleb128 0x5
	.string	"CANTRCV_WUMODE_ENABLE"
	.sleb128 0
	.uleb128 0x5
	.string	"CANTRCV_WUMODE_DISABLE"
	.sleb128 1
	.uleb128 0x5
	.string	"CANTRCV_WUMODE_CLEAR"
	.sleb128 2
	.byte	0
	.uleb128 0x3
	.string	"CanTrcv_TrcvWakeupModeType"
	.byte	0x4
	.byte	0x92
	.uaword	0x31c
	.uleb128 0x4
	.byte	0x1
	.byte	0x4
	.byte	0xa5
	.uaword	0x42f
	.uleb128 0x5
	.string	"CANTRCV_WU_ERROR"
	.sleb128 0
	.uleb128 0x5
	.string	"CANTRCV_WU_NOT_SUPPORTED"
	.sleb128 1
	.uleb128 0x5
	.string	"CANTRCV_WU_BY_BUS"
	.sleb128 2
	.uleb128 0x5
	.string	"CANTRCV_WU_INTERNALLY"
	.sleb128 3
	.uleb128 0x5
	.string	"CANTRCV_WU_RESET"
	.sleb128 4
	.uleb128 0x5
	.string	"CANTRCV_WU_POWER_ON"
	.sleb128 5
	.uleb128 0x5
	.string	"CANTRCV_WU_BY_PIN"
	.sleb128 6
	.byte	0
	.uleb128 0x3
	.string	"CanTrcv_TrcvWakeupReasonType"
	.byte	0x4
	.byte	0xaf
	.uaword	0x38f
	.uleb128 0x4
	.byte	0x1
	.byte	0x5
	.byte	0x49
	.uaword	0x4a5
	.uleb128 0x5
	.string	"CANIF_CS_UNINIT"
	.sleb128 0
	.uleb128 0x5
	.string	"CANIF_CS_SLEEP"
	.sleb128 1
	.uleb128 0x5
	.string	"CANIF_CS_STARTED"
	.sleb128 2
	.uleb128 0x5
	.string	"CANIF_CS_STOPPED"
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.string	"CanIf_ControllerModeType"
	.byte	0x5
	.byte	0x5b
	.uaword	0x453
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x6
	.byte	0xc
	.byte	0x6
	.uahalf	0x495
	.uaword	0x54f
	.uleb128 0x7
	.string	"User_TransceiverModeIndication"
	.byte	0x6
	.uahalf	0x499
	.uaword	0x560
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"User_ControllerBusOff"
	.byte	0x6
	.uahalf	0x4a7
	.uaword	0x572
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"User_ControllerModeIndication"
	.byte	0x6
	.uahalf	0x4a9
	.uaword	0x589
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.uaword	0x560
	.uleb128 0x9
	.uaword	0x1bf
	.uleb128 0x9
	.uaword	0x300
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.uaword	0x54f
	.uleb128 0x8
	.byte	0x1
	.uaword	0x572
	.uleb128 0x9
	.uaword	0x1bf
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.uaword	0x566
	.uleb128 0x8
	.byte	0x1
	.uaword	0x589
	.uleb128 0x9
	.uaword	0x1bf
	.uleb128 0x9
	.uaword	0x4a5
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.uaword	0x578
	.uleb128 0xb
	.string	"CanIf_CallbackFuncType"
	.byte	0x6
	.uahalf	0x4b7
	.uaword	0x4d1
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0xa
	.byte	0x4
	.uaword	0x300
	.uleb128 0xa
	.byte	0x4
	.uaword	0x42f
	.uleb128 0xc
	.byte	0x1
	.string	"CanIf_SetTrcvMode"
	.byte	0x1
	.byte	0x20
	.byte	0x1
	.uaword	0x293
	.uaword	.LFB86
	.uaword	.LFE86
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x686
	.uleb128 0xd
	.uaword	.LASF0
	.byte	0x1
	.byte	0x20
	.uaword	0x1bf
	.uaword	.LLST0
	.uleb128 0xd
	.uaword	.LASF1
	.byte	0x1
	.byte	0x21
	.uaword	0x300
	.uaword	.LLST1
	.uleb128 0xe
	.uaword	.LASF2
	.byte	0x1
	.byte	0x24
	.uaword	0x293
	.uleb128 0xf
	.uaword	.LVL1
	.byte	0x1
	.uaword	0xa15
	.uleb128 0x10
	.uaword	.LVL3
	.uaword	0xa41
	.uaword	0x643
	.uleb128 0x11
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x42
	.uleb128 0x11
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x3d
	.uleb128 0x11
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x11
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x3c
	.byte	0
	.uleb128 0x10
	.uaword	.LVL6
	.uaword	0xa41
	.uaword	0x666
	.uleb128 0x11
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x4e
	.uleb128 0x11
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x3d
	.uleb128 0x11
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x11
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x3c
	.byte	0
	.uleb128 0x12
	.uaword	.LVL9
	.uaword	0xa41
	.uleb128 0x11
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x41
	.uleb128 0x11
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x3d
	.uleb128 0x11
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x11
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x3c
	.byte	0
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.string	"CanIf_GetTrcvMode"
	.byte	0x1
	.byte	0x4c
	.byte	0x1
	.uaword	0x293
	.uaword	.LFB87
	.uaword	.LFE87
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x765
	.uleb128 0x13
	.string	"TransceiverModePtr"
	.byte	0x1
	.byte	0x4c
	.uaword	0x5b6
	.uaword	.LLST2
	.uleb128 0xd
	.uaword	.LASF0
	.byte	0x1
	.byte	0x4d
	.uaword	0x1bf
	.uaword	.LLST3
	.uleb128 0xe
	.uaword	.LASF2
	.byte	0x1
	.byte	0x51
	.uaword	0x293
	.uleb128 0x14
	.uaword	.LVL11
	.byte	0x1
	.uaword	0xa74
	.uaword	0x6ff
	.uleb128 0x11
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.uleb128 0x10
	.uaword	.LVL13
	.uaword	0xa41
	.uaword	0x722
	.uleb128 0x11
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x4e
	.uleb128 0x11
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x3e
	.uleb128 0x11
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x11
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x3c
	.byte	0
	.uleb128 0x10
	.uaword	.LVL16
	.uaword	0xa41
	.uaword	0x745
	.uleb128 0x11
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x41
	.uleb128 0x11
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x3e
	.uleb128 0x11
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x11
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x3c
	.byte	0
	.uleb128 0x12
	.uaword	.LVL19
	.uaword	0xa41
	.uleb128 0x11
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x44
	.uleb128 0x11
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x3e
	.uleb128 0x11
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x11
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x3c
	.byte	0
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.string	"CanIf_GetTrcvWakeupReason"
	.byte	0x1
	.byte	0x7a
	.byte	0x1
	.uaword	0x293
	.uaword	.LFB88
	.uaword	.LFE88
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x849
	.uleb128 0xd
	.uaword	.LASF0
	.byte	0x1
	.byte	0x7a
	.uaword	0x1bf
	.uaword	.LLST4
	.uleb128 0x13
	.string	"TrcvWuReasonPtr"
	.byte	0x1
	.byte	0x7b
	.uaword	0x5bc
	.uaword	.LLST5
	.uleb128 0xe
	.uaword	.LASF2
	.byte	0x1
	.byte	0x7e
	.uaword	0x293
	.uleb128 0x14
	.uaword	.LVL21
	.byte	0x1
	.uaword	0xaa0
	.uaword	0x7e3
	.uleb128 0x11
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.uleb128 0x10
	.uaword	.LVL23
	.uaword	0xa41
	.uaword	0x806
	.uleb128 0x11
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x4e
	.uleb128 0x11
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x3f
	.uleb128 0x11
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x11
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x3c
	.byte	0
	.uleb128 0x10
	.uaword	.LVL26
	.uaword	0xa41
	.uaword	0x829
	.uleb128 0x11
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x41
	.uleb128 0x11
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x3f
	.uleb128 0x11
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x11
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x3c
	.byte	0
	.uleb128 0x12
	.uaword	.LVL29
	.uaword	0xa41
	.uleb128 0x11
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x44
	.uleb128 0x11
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x3f
	.uleb128 0x11
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x11
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x3c
	.byte	0
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.string	"CanIf_SetTrcvWakeupMode"
	.byte	0x1
	.byte	0xa5
	.byte	0x1
	.uaword	0x293
	.uaword	.LFB89
	.uaword	.LFE89
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x91e
	.uleb128 0xd
	.uaword	.LASF0
	.byte	0x1
	.byte	0xa5
	.uaword	0x1bf
	.uaword	.LLST6
	.uleb128 0x13
	.string	"TrcvWakeupMode"
	.byte	0x1
	.byte	0xa6
	.uaword	0x36d
	.uaword	.LLST7
	.uleb128 0xe
	.uaword	.LASF2
	.byte	0x1
	.byte	0xa9
	.uaword	0x293
	.uleb128 0xf
	.uaword	.LVL31
	.byte	0x1
	.uaword	0xad1
	.uleb128 0x10
	.uaword	.LVL33
	.uaword	0xa41
	.uaword	0x8db
	.uleb128 0x11
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x43
	.uleb128 0x11
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x40
	.uleb128 0x11
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x11
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x3c
	.byte	0
	.uleb128 0x10
	.uaword	.LVL36
	.uaword	0xa41
	.uaword	0x8fe
	.uleb128 0x11
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x4e
	.uleb128 0x11
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x40
	.uleb128 0x11
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x11
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x3c
	.byte	0
	.uleb128 0x12
	.uaword	.LVL39
	.uaword	0xa41
	.uleb128 0x11
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x41
	.uleb128 0x11
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x40
	.uleb128 0x11
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x11
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x3c
	.byte	0
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.string	"CanIf_TrcvModeIndication"
	.byte	0x1
	.byte	0xfb
	.byte	0x1
	.uaword	.LFB90
	.uaword	.LFE90
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x9d0
	.uleb128 0xd
	.uaword	.LASF0
	.byte	0x1
	.byte	0xfb
	.uaword	0x1bf
	.uaword	.LLST8
	.uleb128 0xd
	.uaword	.LASF1
	.byte	0x1
	.byte	0xfc
	.uaword	0x300
	.uaword	.LLST9
	.uleb128 0x16
	.string	"CallBackPtr_Temp"
	.byte	0x1
	.byte	0xff
	.uaword	0x9d0
	.uleb128 0x17
	.uaword	.LVL41
	.byte	0x1
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x14
	.uaword	.LVL43
	.byte	0x1
	.uaword	0xa41
	.uaword	0x9af
	.uleb128 0x11
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x4e
	.uleb128 0x11
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x48
	.uleb128 0x11
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x11
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x3c
	.byte	0
	.uleb128 0x18
	.uaword	.LVL45
	.byte	0x1
	.uaword	0xa41
	.uleb128 0x11
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x41
	.uleb128 0x11
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x48
	.uleb128 0x11
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x11
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x3c
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.uaword	0x9d6
	.uleb128 0x19
	.uaword	0x58f
	.uleb128 0x1a
	.string	"CanIf_Prv_InitStatus_b"
	.byte	0x7
	.uahalf	0x1c2
	.uaword	0x263
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.string	"CanIf_Callback"
	.byte	0x7
	.uahalf	0x1db
	.uaword	0x9d6
	.byte	0x1
	.byte	0x1
	.uleb128 0x1b
	.byte	0x1
	.string	"CanTrcv_SetOpMode"
	.byte	0x8
	.uahalf	0x165
	.byte	0x1
	.uaword	0x293
	.byte	0x1
	.uaword	0xa41
	.uleb128 0x9
	.uaword	0x1bf
	.uleb128 0x9
	.uaword	0x300
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.string	"Det_ReportError"
	.byte	0x9
	.byte	0x70
	.byte	0x1
	.uaword	0x293
	.byte	0x1
	.uaword	0xa74
	.uleb128 0x9
	.uaword	0x1ea
	.uleb128 0x9
	.uaword	0x1bf
	.uleb128 0x9
	.uaword	0x1bf
	.uleb128 0x9
	.uaword	0x1bf
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.string	"CanTrcv_GetOpMode"
	.byte	0x8
	.uahalf	0x167
	.byte	0x1
	.uaword	0x293
	.byte	0x1
	.uaword	0xaa0
	.uleb128 0x9
	.uaword	0x1bf
	.uleb128 0x9
	.uaword	0x5b6
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.string	"CanTrcv_GetBusWuReason"
	.byte	0x8
	.uahalf	0x169
	.byte	0x1
	.uaword	0x293
	.byte	0x1
	.uaword	0xad1
	.uleb128 0x9
	.uaword	0x1bf
	.uleb128 0x9
	.uaword	0x5bc
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.string	"CanTrcv_SetWakeupMode"
	.byte	0x8
	.uahalf	0x16f
	.byte	0x1
	.uaword	0x293
	.byte	0x1
	.uleb128 0x9
	.uaword	0x1bf
	.uleb128 0x9
	.uaword	0x36d
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0xe
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
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x2113
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0x5
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
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
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL1-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL1-1
	.uaword	.LVL1
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL2
	.uaword	.LVL4
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL5
	.uaword	.LVL7
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL8
	.uaword	.LFE86
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL1-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL1-1
	.uaword	.LVL1
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL2
	.uaword	.LVL4
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL5
	.uaword	.LVL7
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL8
	.uaword	.LFE86
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL10
	.uaword	.LVL11-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL11-1
	.uaword	.LVL11
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LVL13-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL13-1
	.uaword	.LVL14
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL14
	.uaword	.LVL16-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL16-1
	.uaword	.LVL17
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL17
	.uaword	.LVL19-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL19-1
	.uaword	.LFE87
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL10
	.uaword	.LVL11-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL11-1
	.uaword	.LVL11
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL12
	.uaword	.LVL14
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL15
	.uaword	.LVL17
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL18
	.uaword	.LFE87
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL20
	.uaword	.LVL21-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL21-1
	.uaword	.LVL21
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL22
	.uaword	.LVL24
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL25
	.uaword	.LVL27
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL27
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL28
	.uaword	.LFE88
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL20
	.uaword	.LVL21-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL21-1
	.uaword	.LVL21
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL23-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL23-1
	.uaword	.LVL24
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LVL26-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL26-1
	.uaword	.LVL27
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL27
	.uaword	.LVL29-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL29-1
	.uaword	.LFE88
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL30
	.uaword	.LVL31-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL31-1
	.uaword	.LVL31
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL31
	.uaword	.LVL32
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL32
	.uaword	.LVL34
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL34
	.uaword	.LVL35
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL35
	.uaword	.LVL37
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL37
	.uaword	.LVL38
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL38
	.uaword	.LFE89
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL30
	.uaword	.LVL31-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL31-1
	.uaword	.LVL31
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL31
	.uaword	.LVL32
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL32
	.uaword	.LVL34
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL34
	.uaword	.LVL35
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL35
	.uaword	.LVL37
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL37
	.uaword	.LVL38
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL38
	.uaword	.LFE89
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL40
	.uaword	.LVL41-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL41-1
	.uaword	.LVL41
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL41
	.uaword	.LVL42
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL42
	.uaword	.LVL43
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL43
	.uaword	.LVL44
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL44
	.uaword	.LFE90
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL40
	.uaword	.LVL41-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL41-1
	.uaword	.LVL41
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL41
	.uaword	.LVL42
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL42
	.uaword	.LVL43
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL43
	.uaword	.LVL44
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL44
	.uaword	.LFE90
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x3c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB86
	.uaword	.LFE86-.LFB86
	.uaword	.LFB87
	.uaword	.LFE87-.LFB87
	.uaword	.LFB88
	.uaword	.LFE88-.LFB88
	.uaword	.LFB89
	.uaword	.LFE89-.LFB89
	.uaword	.LFB90
	.uaword	.LFE90-.LFB90
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB86
	.uaword	.LFE86
	.uaword	.LFB87
	.uaword	.LFE87
	.uaword	.LFB88
	.uaword	.LFE88
	.uaword	.LFB89
	.uaword	.LFE89
	.uaword	.LFB90
	.uaword	.LFE90
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"TransceiverId"
.LASF2:
	.string	"Status_t"
.LASF1:
	.string	"TransceiverMode"
	.extern	CanIf_Callback,STT_OBJECT,12
	.extern	CanTrcv_SetWakeupMode,STT_FUNC,0
	.extern	CanTrcv_GetBusWuReason,STT_FUNC,0
	.extern	CanTrcv_GetOpMode,STT_FUNC,0
	.extern	Det_ReportError,STT_FUNC,0
	.extern	CanTrcv_SetOpMode,STT_FUNC,0
	.extern	CanIf_Prv_InitStatus_b,STT_OBJECT,1
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
