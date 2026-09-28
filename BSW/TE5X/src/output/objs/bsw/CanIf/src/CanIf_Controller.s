	.file	"CanIf_Controller.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.CanIf_SetControllerMode,"ax",@progbits
	.align 1
	.global	CanIf_SetControllerMode
	.type	CanIf_SetControllerMode, @function
CanIf_SetControllerMode:
.LFB86:
	.file 1 "bsw\\CanIf\\src\\CanIf_Controller.c"
	.loc 1 48 0
.LVL0:
	.loc 1 73 0
	movh.a	%a15, hi:CanIf_Prv_InitStatus_b
	ld.bu	%d15, [%a15] lo:CanIf_Prv_InitStatus_b
	jz	%d15, .L22
	.loc 1 76 0
	jge.u	%d4, 4, .L5
	.loc 1 79 0
	movh.a	%a15, hi:CanIf_Prv_ConfigSet_tpst
	ld.a	%a15, [%a15] lo:CanIf_Prv_ConfigSet_tpst
	ld.a	%a3, [%a15] 56
	addsc.a	%a2, %a3, %d4, 0
	ld.bu	%d15, [%a2]0
.LVL1:
	.loc 1 82 0
	eq	%d2, %d15, 255
	jnz	%d2, .L5
	.loc 1 85 0
	addi	%d2, %d5, -1
	jge.u	%d2, 3, .L23
	.loc 1 92 0
	ld.w	%d2, [%a15] 40
	.loc 1 89 0
	movh.a	%a12, hi:CanIf_Prv_ControllerState_ast
	.loc 1 92 0
	madd	%d3, %d2, %d15, 20
	.loc 1 89 0
	lea	%a12, [%a12] lo:CanIf_Prv_ControllerState_ast
	addsc.a	%a12, %a12, %d4, 0
.LVL2:
	.loc 1 92 0
	mov.a	%a15, %d3
.LVL3:
	.loc 1 100 0
	jeq	%d5, 2, .L8
	jeq	%d5, 3, .L9
	.loc 1 110 0
	ld.bu	%d4, [%a15] 17
.LVL4:
	mov	%d5, 2
.LVL5:
	call	CanIf_SetControllerMode_Integration
.LVL6:
	.loc 1 113 0
	jeq	%d2, 1, .L12
.LVL7:
	.loc 1 118 0
	ld.bu	%d2, [%a12]0
.LVL8:
	andn	%d2, %d2, ~(-16)
.L20:
	.loc 1 205 0
	st.b	[%a12]0, %d2
.LBB18:
.LBB19:
	.file 2 ".\\output\\inc/..\\..\\bsw\\CanIf\\integration\\CanIf_Cfg_SchM.h"
	.loc 2 74 0
	call	Os_SuspendAllInterrupts
.LVL9:
.LBE19:
.LBE18:
	.loc 1 212 0
	mov	%d4, %d15
	call	CanIf_Prv_ClearTxChannelBuffer
.LVL10:
.LBB20:
.LBB21:
	.loc 2 84 0
	call	Os_ResumeAllInterrupts
.LVL11:
.LBE21:
.LBE20:
	.loc 1 202 0
	mov	%d2, 0
	.loc 1 233 0
	ret
.LVL12:
.L5:
	.loc 1 76 0 discriminator 1
	mov	%e4, 60
.LVL13:
	mov	%d6, 3
	mov	%d7, 15
	call	Det_ReportError
.LVL14:
	mov	%d2, 1
	ret
.LVL15:
.L22:
	.loc 1 73 0 discriminator 1
	mov	%e4, 60
.LVL16:
	mov	%d6, 3
	mov	%d7, 30
	call	Det_ReportError
.LVL17:
	mov	%d2, 1
	ret
.LVL18:
.L9:
	.loc 1 185 0
	ld.bu	%d2, [%a12]0
	.loc 1 198 0
	ld.bu	%d4, [%a15] 17
.LVL19:
	.loc 1 185 0
	sh	%d2, -4
	.loc 1 192 0
	eq	%d2, %d2, 1
.LVL20:
	.loc 1 198 0
	sel	%d5, %d2, %d5, 1
.LVL21:
	call	CanIf_SetControllerMode_Integration
.LVL22:
	.loc 1 200 0
	jeq	%d2, 1, .L12
.LVL23:
	.loc 1 205 0
	ld.bu	%d2, [%a12]0
.LVL24:
	insert	%d2, %d2, 1, 0, 4
	j	.L20
.LVL25:
.L23:
	.loc 1 85 0 discriminator 1
	mov	%e4, 60
.LVL26:
	mov	%d6, 3
	mov	%d7, 21
	call	Det_ReportError
.LVL27:
	mov	%d2, 1
	ret
.LVL28:
.L8:
	.loc 1 168 0
	ld.bu	%d4, [%a15] 17
.LVL29:
	mov	%d5, 0
.LVL30:
	call	CanIf_SetControllerMode_Integration
.LVL31:
	.loc 1 73 0
	eq	%d2, %d2, 1
.LVL32:
	ret
.LVL33:
.L12:
	.loc 1 54 0
	mov	%d2, 1
.LVL34:
	ret
.LFE86:
	.size	CanIf_SetControllerMode, .-CanIf_SetControllerMode
.section .text.CanIf_GetControllerMode,"ax",@progbits
	.align 1
	.global	CanIf_GetControllerMode
	.type	CanIf_GetControllerMode, @function
CanIf_GetControllerMode:
.LFB87:
	.loc 1 259 0
.LVL35:
	.loc 1 267 0
	movh.a	%a15, hi:CanIf_Prv_InitStatus_b
	ld.bu	%d15, [%a15] lo:CanIf_Prv_InitStatus_b
	jz	%d15, .L33
	.loc 1 270 0
	jge.u	%d4, 4, .L28
.LVL36:
	.loc 1 273 0
	movh.a	%a15, hi:CanIf_Prv_ConfigSet_tpst
	ld.a	%a15, [%a15] lo:CanIf_Prv_ConfigSet_tpst
	ld.a	%a15, [%a15] 56
	addsc.a	%a15, %a15, %d4, 0
	.loc 1 276 0
	ld.bu	%d15, [%a15]0
	eq	%d15, %d15, 255
	jnz	%d15, .L28
	.loc 1 280 0
	jz.a	%a4, .L34
.LVL37:
	.loc 1 288 0
	movh.a	%a15, hi:CanIf_Prv_ControllerState_ast
	lea	%a15, [%a15] lo:CanIf_Prv_ControllerState_ast
	addsc.a	%a15, %a15, %d4, 0
	.loc 1 291 0
	mov	%d2, 0
	.loc 1 288 0
	ld.bu	%d15, [%a15]0
	sh	%d15, -4
	st.b	[%a4]0, %d15
.LVL38:
	.loc 1 292 0
	ret
.LVL39:
.L28:
	.loc 1 270 0 discriminator 1
	mov	%e4, 60
.LVL40:
	mov	%d6, 4
	mov	%d7, 15
	call	Det_ReportError
.LVL41:
	mov	%d2, 1
	ret
.LVL42:
.L33:
	.loc 1 267 0 discriminator 1
	mov	%e4, 60
.LVL43:
	mov	%d6, 4
	mov	%d7, 30
	call	Det_ReportError
.LVL44:
	mov	%d2, 1
	ret
.LVL45:
.L34:
	.loc 1 280 0 discriminator 1
	mov	%e4, 60
.LVL46:
	mov	%d6, 4
	mov	%d7, 20
	call	Det_ReportError
.LVL47:
	mov	%d2, 1
	ret
.LFE87:
	.size	CanIf_GetControllerMode, .-CanIf_GetControllerMode
.section .text.CanIf_ControllerBusOff,"ax",@progbits
	.align 1
	.global	CanIf_ControllerBusOff
	.type	CanIf_ControllerBusOff, @function
CanIf_ControllerBusOff:
.LFB88:
	.loc 1 312 0
.LVL48:
	.loc 1 324 0
	movh.a	%a15, hi:CanIf_Prv_InitStatus_b
	ld.bu	%d15, [%a15] lo:CanIf_Prv_InitStatus_b
	jz	%d15, .L43
	.loc 1 327 0
	jge.u	%d4, 4, .L38
	.loc 1 330 0
	movh.a	%a15, hi:CanIf_Prv_ConfigSet_tpst
	ld.a	%a15, [%a15] lo:CanIf_Prv_ConfigSet_tpst
	ld.a	%a15, [%a15] 56
	addsc.a	%a15, %a15, %d4, 0
	ld.bu	%d15, [%a15]0
.LVL49:
	.loc 1 333 0
	eq	%d2, %d15, 255
	jnz	%d2, .L38
	.loc 1 338 0
	movh.a	%a15, hi:CanIf_Prv_ControllerState_ast
.LVL50:
	lea	%a15, [%a15] lo:CanIf_Prv_ControllerState_ast
	addsc.a	%a15, %a15, %d4, 0
.LVL51:
	mov	%d8, %d4
	.loc 1 354 0
	ld.bu	%d2, [%a15]0
	insert	%d2, %d2, 1, 0, 4
	st.b	[%a15]0, %d2
.LVL52:
.LBB22:
.LBB23:
	.loc 2 74 0
	call	Os_SuspendAllInterrupts
.LVL53:
.LBE23:
.LBE22:
	.loc 1 378 0
	movh.a	%a15, hi:CanIf_Callback
.LVL54:
	.loc 1 364 0
	mov	%d4, %d15
	.loc 1 378 0
	lea	%a15, [%a15] lo:CanIf_Callback
	.loc 1 364 0
	call	CanIf_Prv_ClearTxChannelBuffer
.LVL55:
.LBB24:
.LBB25:
	.loc 2 84 0
	call	Os_ResumeAllInterrupts
.LVL56:
.LBE25:
.LBE24:
	.loc 1 378 0
	ld.a	%a15, [%a15] 4
	jz.a	%a15, .L35
	.loc 1 381 0
	mov	%d4, %d8
	ji	%a15
.LVL57:
.L38:
	.loc 1 327 0 discriminator 1
	mov	%e4, 60
.LVL58:
	mov	%d6, 22
	mov	%d7, 14
	j	Det_ReportError
.LVL59:
.L43:
	.loc 1 324 0 discriminator 1
	mov	%e4, 60
.LVL60:
	mov	%d6, 22
	mov	%d7, 30
	j	Det_ReportError
.LVL61:
.L35:
	ret
.LFE88:
	.size	CanIf_ControllerBusOff, .-CanIf_ControllerBusOff
.section .text.CanIf_ControllerModeIndication_Internal,"ax",@progbits
	.align 1
	.global	CanIf_ControllerModeIndication_Internal
	.type	CanIf_ControllerModeIndication_Internal, @function
CanIf_ControllerModeIndication_Internal:
.LFB89:
	.loc 1 406 0
.LVL62:
	.loc 1 416 0
	movh.a	%a15, hi:CanIf_Prv_InitStatus_b
	ld.bu	%d15, [%a15] lo:CanIf_Prv_InitStatus_b
	jz	%d15, .L56
	.loc 1 419 0
	jge.u	%d4, 4, .L47
.LVL63:
	.loc 1 422 0
	movh.a	%a15, hi:CanIf_Prv_ConfigSet_tpst
	ld.a	%a15, [%a15] lo:CanIf_Prv_ConfigSet_tpst
	ld.a	%a15, [%a15] 56
	addsc.a	%a15, %a15, %d4, 0
	.loc 1 425 0
	ld.bu	%d15, [%a15]0
	eq	%d15, %d15, 255
	jnz	%d15, .L47
.LVL64:
	.loc 1 433 0
	jz	%d5, .L48
	.loc 1 428 0
	movh.a	%a15, hi:CanIf_Prv_ControllerState_ast
	lea	%a15, [%a15] lo:CanIf_Prv_ControllerState_ast
	addsc.a	%a15, %a15, %d4, 0
	.loc 1 436 0
	ld.bu	%d15, [%a15]0
	insert	%d15, %d15, %d5, 4, 32-4
	st.b	[%a15]0, %d15
.LVL65:
.L48:
	.loc 1 442 0
	movh.a	%a15, hi:CanIf_Callback
	lea	%a15, [%a15] lo:CanIf_Callback
	ld.a	%a15, [%a15] 8
	jz.a	%a15, .L44
	.loc 1 445 0
	ji	%a15
.LVL66:
.L47:
	.loc 1 419 0 discriminator 1
	mov	%e4, 60
.LVL67:
	mov	%d6, 23
	mov	%d7, 14
	j	Det_ReportError
.LVL68:
.L56:
	.loc 1 416 0 discriminator 1
	mov	%e4, 60
.LVL69:
	mov	%d6, 23
	mov	%d7, 30
	j	Det_ReportError
.LVL70:
.L44:
	ret
.LFE89:
	.size	CanIf_ControllerModeIndication_Internal, .-CanIf_ControllerModeIndication_Internal
	.global	CanIf_Prv_ConfigSet_tpst
.section .bss.a4.CanIf_Prv_ConfigSet_tpst,"aw",@nobits
	.align 2
	.type	CanIf_Prv_ConfigSet_tpst, @object
	.size	CanIf_Prv_ConfigSet_tpst, 4
CanIf_Prv_ConfigSet_tpst:
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
.section .text,"ax",@progbits
.Letext0:
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 4 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 5 ".\\output\\inc/..\\..\\bsw\\ComStack\\ComStack_Cfg.h"
	.file 6 ".\\output\\inc/..\\..\\bsw\\CanIf\\integration\\Can_GeneralTypes.h"
	.file 7 ".\\output\\inc/..\\..\\bsw\\CanIf\\api\\CanIf_Types.h"
	.file 8 ".\\output\\inc/..\\..\\bsw\\CanIf\\CanIf_Cfg.h"
	.file 9 "bsw\\CanIf\\src\\CanIf_Prv.h"
	.file 10 ".\\output\\inc/..\\..\\bsw\\Det\\api\\Det.h"
	.file 11 ".\\output\\inc/..\\..\\bsw\\CanIf\\integration\\CanIf_Integration.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x29bc
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\CanIf\\src\\CanIf_Controller.c"
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
	.byte	0x3
	.byte	0x51
	.uaword	0x1cb
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
	.byte	0x3
	.byte	0x5b
	.uaword	0x1f7
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
	.uleb128 0x3
	.string	"uint32"
	.byte	0x3
	.byte	0x6a
	.uaword	0x233
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
	.byte	0x3
	.byte	0x80
	.uaword	0x1cb
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x3
	.string	"uint8_least"
	.byte	0x3
	.byte	0x8a
	.uaword	0x29e
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x3
	.string	"Std_ReturnType"
	.byte	0x4
	.byte	0x60
	.uaword	0x1be
	.uleb128 0x3
	.string	"PduIdType"
	.byte	0x5
	.byte	0x2c
	.uaword	0x1e9
	.uleb128 0x3
	.string	"PduLengthType"
	.byte	0x5
	.byte	0x30
	.uaword	0x1e9
	.uleb128 0x4
	.byte	0xc
	.byte	0x5
	.byte	0x39
	.uaword	0x331
	.uleb128 0x5
	.string	"SduDataPtr"
	.byte	0x5
	.byte	0x3b
	.uaword	0x331
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"MetaDataPtr"
	.byte	0x5
	.byte	0x3c
	.uaword	0x331
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.uaword	.LASF0
	.byte	0x5
	.byte	0x3d
	.uaword	0x2da
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.uaword	0x1be
	.uleb128 0x3
	.string	"PduInfoType"
	.byte	0x5
	.byte	0x3e
	.uaword	0x2ef
	.uleb128 0x3
	.string	"Can_IdType"
	.byte	0x6
	.byte	0x15
	.uaword	0x225
	.uleb128 0x3
	.string	"Can_HwHandleType"
	.byte	0x6
	.byte	0x1e
	.uaword	0x1e9
	.uleb128 0x8
	.byte	0x1
	.byte	0x6
	.byte	0x54
	.uaword	0x3cb
	.uleb128 0x9
	.string	"CAN_T_START"
	.sleb128 0
	.uleb128 0x9
	.string	"CAN_T_STOP"
	.sleb128 1
	.uleb128 0x9
	.string	"CAN_T_SLEEP"
	.sleb128 2
	.uleb128 0x9
	.string	"CAN_T_WAKEUP"
	.sleb128 3
	.uleb128 0x9
	.string	"CAN_T_MAXTRANSITION"
	.sleb128 4
	.byte	0
	.uleb128 0x3
	.string	"Can_StateTransitionType"
	.byte	0x6
	.byte	0x5b
	.uaword	0x374
	.uleb128 0x8
	.byte	0x1
	.byte	0x6
	.byte	0x69
	.uaword	0x414
	.uleb128 0x9
	.string	"CAN_OK"
	.sleb128 0
	.uleb128 0x9
	.string	"CAN_NOT_OK"
	.sleb128 1
	.uleb128 0x9
	.string	"CAN_BUSY"
	.sleb128 2
	.byte	0
	.uleb128 0x3
	.string	"Can_ReturnType"
	.byte	0x6
	.byte	0x6e
	.uaword	0x3ea
	.uleb128 0x8
	.byte	0x1
	.byte	0x6
	.byte	0x84
	.uaword	0x481
	.uleb128 0x9
	.string	"CANTRCV_TRCVMODE_NORMAL"
	.sleb128 0
	.uleb128 0x9
	.string	"CANTRCV_TRCVMODE_SLEEP"
	.sleb128 1
	.uleb128 0x9
	.string	"CANTRCV_TRCVMODE_STANDBY"
	.sleb128 2
	.byte	0
	.uleb128 0x3
	.string	"CanTrcv_TrcvModeType"
	.byte	0x6
	.byte	0x89
	.uaword	0x42a
	.uleb128 0x8
	.byte	0x1
	.byte	0x7
	.byte	0x1f
	.uaword	0x521
	.uleb128 0x9
	.string	"CANIF_OFFLINE"
	.sleb128 0
	.uleb128 0x9
	.string	"CANIF_TX_OFFLINE"
	.sleb128 1
	.uleb128 0x9
	.string	"CANIF_TX_OFFLINE_ACTIVE"
	.sleb128 2
	.uleb128 0x9
	.string	"CANIF_ONLINE"
	.sleb128 3
	.uleb128 0x9
	.string	"CANIF_TX_TP_ONLINE"
	.sleb128 4
	.uleb128 0x9
	.string	"CANIF_TX_USER_TP_ONLINE"
	.sleb128 5
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.byte	0x7
	.byte	0x49
	.uaword	0x573
	.uleb128 0x9
	.string	"CANIF_CS_UNINIT"
	.sleb128 0
	.uleb128 0x9
	.string	"CANIF_CS_SLEEP"
	.sleb128 1
	.uleb128 0x9
	.string	"CANIF_CS_STARTED"
	.sleb128 2
	.uleb128 0x9
	.string	"CANIF_CS_STOPPED"
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.string	"CanIf_ControllerModeType"
	.byte	0x7
	.byte	0x5b
	.uaword	0x521
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x7
	.byte	0x4
	.uaword	0x5a5
	.uleb128 0xa
	.uaword	0x1be
	.uleb128 0x7
	.byte	0x4
	.uaword	0x5b0
	.uleb128 0xa
	.uaword	0x1e9
	.uleb128 0x7
	.byte	0x4
	.uaword	0x225
	.uleb128 0xb
	.byte	0x8
	.byte	0x8
	.uahalf	0x39a
	.uaword	0x613
	.uleb128 0xc
	.string	"CanId"
	.byte	0x8
	.uahalf	0x39c
	.uaword	0x34a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"swPduHandle"
	.byte	0x8
	.uahalf	0x39d
	.uaword	0x2c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.uaword	.LASF0
	.byte	0x8
	.uahalf	0x39e
	.uaword	0x1be
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xc
	.string	"BufferIndex"
	.byte	0x8
	.uahalf	0x39f
	.uaword	0x1be
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.byte	0
	.uleb128 0xe
	.string	"CanIf_Cfg_CanIdBuffer_tst"
	.byte	0x8
	.uahalf	0x3a1
	.uaword	0x5bb
	.uleb128 0xf
	.byte	0x1
	.byte	0x8
	.uahalf	0x3a4
	.uaword	0x681
	.uleb128 0x9
	.string	"STANDARD_CAN"
	.sleb128 0
	.uleb128 0x9
	.string	"STANDARD_FD_CAN"
	.sleb128 1
	.uleb128 0x9
	.string	"EXTENDED_CAN"
	.sleb128 2
	.uleb128 0x9
	.string	"EXTENDED_FD_CAN"
	.sleb128 3
	.byte	0
	.uleb128 0xe
	.string	"CanIf_Cfg_TxPduCanIdType_ten"
	.byte	0x8
	.uahalf	0x3a9
	.uaword	0x635
	.uleb128 0xf
	.byte	0x1
	.byte	0x8
	.uahalf	0x3ad
	.uaword	0x1890
	.uleb128 0x9
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_00_Tx_A_e"
	.sleb128 0
	.uleb128 0x9
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_00_Tx_B_e"
	.sleb128 1
	.uleb128 0x9
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_00_Tx_C_e"
	.sleb128 2
	.uleb128 0x9
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_00_Tx_D_e"
	.sleb128 3
	.uleb128 0x9
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_00_Tx_E_e"
	.sleb128 4
	.uleb128 0x9
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_00_Tx_F_e"
	.sleb128 5
	.uleb128 0x9
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_00_Tx_G_e"
	.sleb128 6
	.uleb128 0x9
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_00_Tx_H_e"
	.sleb128 7
	.uleb128 0x9
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_01_e"
	.sleb128 8
	.uleb128 0x9
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_02_e"
	.sleb128 9
	.uleb128 0x9
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_03_e"
	.sleb128 10
	.uleb128 0x9
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_04_e"
	.sleb128 11
	.uleb128 0x9
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_05_e"
	.sleb128 12
	.uleb128 0x9
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_06_e"
	.sleb128 13
	.uleb128 0x9
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_07_e"
	.sleb128 14
	.uleb128 0x9
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_08_e"
	.sleb128 15
	.uleb128 0x9
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_09_e"
	.sleb128 16
	.uleb128 0x9
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_10_e"
	.sleb128 17
	.uleb128 0x9
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_11_e"
	.sleb128 18
	.uleb128 0x9
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_12_e"
	.sleb128 19
	.uleb128 0x9
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_13_e"
	.sleb128 20
	.uleb128 0x9
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_14_e"
	.sleb128 21
	.uleb128 0x9
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_15_e"
	.sleb128 22
	.uleb128 0x9
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_16_e"
	.sleb128 23
	.uleb128 0x9
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_17_e"
	.sleb128 24
	.uleb128 0x9
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_18_e"
	.sleb128 25
	.uleb128 0x9
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_19_e"
	.sleb128 26
	.uleb128 0x9
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_20_e"
	.sleb128 27
	.uleb128 0x9
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_21_e"
	.sleb128 28
	.uleb128 0x9
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_22_e"
	.sleb128 29
	.uleb128 0x9
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_23_e"
	.sleb128 30
	.uleb128 0x9
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_24_e"
	.sleb128 31
	.uleb128 0x9
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_25_e"
	.sleb128 32
	.uleb128 0x9
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_26_e"
	.sleb128 33
	.uleb128 0x9
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_A_e"
	.sleb128 34
	.uleb128 0x9
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_B_e"
	.sleb128 35
	.uleb128 0x9
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_Basic_e"
	.sleb128 36
	.uleb128 0x9
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_01_e"
	.sleb128 37
	.uleb128 0x9
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_02_e"
	.sleb128 38
	.uleb128 0x9
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_03_e"
	.sleb128 39
	.uleb128 0x9
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_04_e"
	.sleb128 40
	.uleb128 0x9
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_05_e"
	.sleb128 41
	.uleb128 0x9
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_06_e"
	.sleb128 42
	.uleb128 0x9
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_07_e"
	.sleb128 43
	.uleb128 0x9
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_08_e"
	.sleb128 44
	.uleb128 0x9
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_09_e"
	.sleb128 45
	.uleb128 0x9
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_10_e"
	.sleb128 46
	.uleb128 0x9
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_11_e"
	.sleb128 47
	.uleb128 0x9
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_12_e"
	.sleb128 48
	.uleb128 0x9
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_13_e"
	.sleb128 49
	.uleb128 0x9
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_14_e"
	.sleb128 50
	.uleb128 0x9
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_15_e"
	.sleb128 51
	.uleb128 0x9
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_16_e"
	.sleb128 52
	.uleb128 0x9
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_17_e"
	.sleb128 53
	.uleb128 0x9
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_18_e"
	.sleb128 54
	.uleb128 0x9
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_19_e"
	.sleb128 55
	.uleb128 0x9
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_20_e"
	.sleb128 56
	.uleb128 0x9
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_21_e"
	.sleb128 57
	.uleb128 0x9
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_22_e"
	.sleb128 58
	.uleb128 0x9
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_23_e"
	.sleb128 59
	.uleb128 0x9
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_24_e"
	.sleb128 60
	.uleb128 0x9
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_25_e"
	.sleb128 61
	.uleb128 0x9
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_26_e"
	.sleb128 62
	.uleb128 0x9
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_Basic_e"
	.sleb128 63
	.uleb128 0x9
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_01_e"
	.sleb128 64
	.uleb128 0x9
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_02_e"
	.sleb128 65
	.uleb128 0x9
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_03_e"
	.sleb128 66
	.uleb128 0x9
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_04_e"
	.sleb128 67
	.uleb128 0x9
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_05_e"
	.sleb128 68
	.uleb128 0x9
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_06_e"
	.sleb128 69
	.uleb128 0x9
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_07_e"
	.sleb128 70
	.uleb128 0x9
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_08_e"
	.sleb128 71
	.uleb128 0x9
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_09_e"
	.sleb128 72
	.uleb128 0x9
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_10_e"
	.sleb128 73
	.uleb128 0x9
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_11_e"
	.sleb128 74
	.uleb128 0x9
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_12_e"
	.sleb128 75
	.uleb128 0x9
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_13_e"
	.sleb128 76
	.uleb128 0x9
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_14_e"
	.sleb128 77
	.uleb128 0x9
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_15_e"
	.sleb128 78
	.uleb128 0x9
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_16_e"
	.sleb128 79
	.uleb128 0x9
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_17_e"
	.sleb128 80
	.uleb128 0x9
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_18_e"
	.sleb128 81
	.uleb128 0x9
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_19_e"
	.sleb128 82
	.uleb128 0x9
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_20_e"
	.sleb128 83
	.uleb128 0x9
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_21_e"
	.sleb128 84
	.uleb128 0x9
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_22_e"
	.sleb128 85
	.uleb128 0x9
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_23_e"
	.sleb128 86
	.uleb128 0x9
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_24_e"
	.sleb128 87
	.uleb128 0x9
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_25_e"
	.sleb128 88
	.uleb128 0x9
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_26_e"
	.sleb128 89
	.uleb128 0x9
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_Basic_e"
	.sleb128 90
	.byte	0
	.uleb128 0xe
	.string	"CanIf_BufferIdx"
	.byte	0x8
	.uahalf	0x464
	.uaword	0x6a6
	.uleb128 0xf
	.byte	0x1
	.byte	0x8
	.uahalf	0x469
	.uaword	0x191b
	.uleb128 0x9
	.string	"CANIF_NO_UL"
	.sleb128 0
	.uleb128 0x9
	.string	"CAN_NM"
	.sleb128 1
	.uleb128 0x9
	.string	"CAN_TP"
	.sleb128 2
	.uleb128 0x9
	.string	"CAN_TSYN"
	.sleb128 3
	.uleb128 0x9
	.string	"J1939NM"
	.sleb128 4
	.uleb128 0x9
	.string	"J1939TP"
	.sleb128 5
	.uleb128 0x9
	.string	"PDUR"
	.sleb128 6
	.uleb128 0x9
	.string	"XCP"
	.sleb128 7
	.uleb128 0x9
	.string	"CDD"
	.sleb128 8
	.uleb128 0x9
	.string	"USER"
	.sleb128 9
	.uleb128 0x9
	.string	"MAX_USER_TYPE"
	.sleb128 10
	.byte	0
	.uleb128 0xe
	.string	"CanIf_Cfg_UserType_ten"
	.byte	0x8
	.uahalf	0x476
	.uaword	0x18a8
	.uleb128 0xf
	.byte	0x1
	.byte	0x8
	.uahalf	0x47a
	.uaword	0x195f
	.uleb128 0x9
	.string	"CANIF_BASIC"
	.sleb128 0
	.uleb128 0x9
	.string	"CANIF_FULL"
	.sleb128 1
	.byte	0
	.uleb128 0xe
	.string	"CanIf_Cfg_CanHandleType_ten"
	.byte	0x8
	.uahalf	0x47e
	.uaword	0x193a
	.uleb128 0xf
	.byte	0x1
	.byte	0x8
	.uahalf	0x484
	.uaword	0x19d3
	.uleb128 0x9
	.string	"CANIF_PRV_FULL_E"
	.sleb128 0
	.uleb128 0x9
	.string	"CANIF_PRV_BASIC_RANGE_E"
	.sleb128 1
	.uleb128 0x9
	.string	"CANIF_PRV_BASIC_LIST_E"
	.sleb128 2
	.byte	0
	.uleb128 0xe
	.string	"CanIf_Prv_HrhType_ten"
	.byte	0x8
	.uahalf	0x48a
	.uaword	0x1983
	.uleb128 0xb
	.byte	0xc
	.byte	0x8
	.uahalf	0x495
	.uaword	0x1a6f
	.uleb128 0xc
	.string	"User_TransceiverModeIndication"
	.byte	0x8
	.uahalf	0x499
	.uaword	0x1a80
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"User_ControllerBusOff"
	.byte	0x8
	.uahalf	0x4a7
	.uaword	0x1a92
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"User_ControllerModeIndication"
	.byte	0x8
	.uahalf	0x4a9
	.uaword	0x1aa9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.uaword	0x1a80
	.uleb128 0x11
	.uaword	0x1be
	.uleb128 0x11
	.uaword	0x481
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.uaword	0x1a6f
	.uleb128 0x10
	.byte	0x1
	.uaword	0x1a92
	.uleb128 0x11
	.uaword	0x1be
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.uaword	0x1a86
	.uleb128 0x10
	.byte	0x1
	.uaword	0x1aa9
	.uleb128 0x11
	.uaword	0x1be
	.uleb128 0x11
	.uaword	0x573
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.uaword	0x1a98
	.uleb128 0xe
	.string	"CanIf_CallbackFuncType"
	.byte	0x8
	.uahalf	0x4b7
	.uaword	0x19f1
	.uleb128 0xb
	.byte	0xc
	.byte	0x8
	.uahalf	0x4cb
	.uaword	0x1b4a
	.uleb128 0xc
	.string	"HrhInfo_e"
	.byte	0x8
	.uahalf	0x4d1
	.uaword	0x19d3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.uaword	.LASF1
	.byte	0x8
	.uahalf	0x4d7
	.uaword	0x2c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xc
	.string	"NumRxPdus_u32"
	.byte	0x8
	.uahalf	0x4da
	.uaword	0x225
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"HrhRangeMask_b"
	.byte	0x8
	.uahalf	0x4dd
	.uaword	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.string	"ControllerId_u8"
	.byte	0x8
	.uahalf	0x4e8
	.uaword	0x1be
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.byte	0
	.uleb128 0xe
	.string	"CanIf_Cfg_Hrhtype_tst"
	.byte	0x8
	.uahalf	0x4f6
	.uaword	0x1ace
	.uleb128 0xb
	.byte	0x14
	.byte	0x8
	.uahalf	0x4fa
	.uaword	0x1c2b
	.uleb128 0xc
	.string	"RxPduReadNotifyReadDataStatus_u8"
	.byte	0x8
	.uahalf	0x503
	.uaword	0x1be
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"IndexForUL_u8"
	.byte	0x8
	.uahalf	0x521
	.uaword	0x28b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"CanIdtype_u8"
	.byte	0x8
	.uahalf	0x530
	.uaword	0x1be
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.string	"RxPduDlc_u8"
	.byte	0x8
	.uahalf	0x533
	.uaword	0x1be
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xc
	.string	"RxPduCanId"
	.byte	0x8
	.uahalf	0x544
	.uaword	0x34a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.string	"Hrhref_t"
	.byte	0x8
	.uahalf	0x54e
	.uaword	0x2c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.string	"RxPduTargetId_t"
	.byte	0x8
	.uahalf	0x551
	.uaword	0x2c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0
	.uleb128 0xe
	.string	"CanIf_Cfg_RxPduType_tst"
	.byte	0x8
	.uahalf	0x55a
	.uaword	0x1b68
	.uleb128 0xb
	.byte	0x4
	.byte	0x8
	.uahalf	0x55e
	.uaword	0x1c79
	.uleb128 0xc
	.string	"CanIfRxPduIndicationName"
	.byte	0x8
	.uahalf	0x560
	.uaword	0x1c95
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.uaword	0x1c8a
	.uleb128 0x11
	.uaword	0x2c9
	.uleb128 0x11
	.uaword	0x1c8a
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.uaword	0x1c90
	.uleb128 0xa
	.uaword	0x337
	.uleb128 0x7
	.byte	0x4
	.uaword	0x1c79
	.uleb128 0xe
	.string	"CanIf_RxCbk_Prototype"
	.byte	0x8
	.uahalf	0x561
	.uaword	0x1c4b
	.uleb128 0xb
	.byte	0xc
	.byte	0x8
	.uahalf	0x56b
	.uaword	0x1d02
	.uleb128 0xc
	.string	"LowerCanId_t"
	.byte	0x8
	.uahalf	0x572
	.uaword	0x34a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"UpperCanId_t"
	.byte	0x8
	.uahalf	0x573
	.uaword	0x34a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.uaword	.LASF1
	.byte	0x8
	.uahalf	0x575
	.uaword	0x2c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0xe
	.string	"CanIf_RxPduRangeConfigType_tst"
	.byte	0x8
	.uahalf	0x577
	.uaword	0x1cb9
	.uleb128 0x10
	.byte	0x1
	.uaword	0x1d35
	.uleb128 0x11
	.uaword	0x2c9
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.uaword	0x1d29
	.uleb128 0xb
	.byte	0x14
	.byte	0x8
	.uahalf	0x5ae
	.uaword	0x1df2
	.uleb128 0xc
	.string	"BufferIdPtr"
	.byte	0x8
	.uahalf	0x5b1
	.uaword	0x5b5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"TotalBufferCount"
	.byte	0x8
	.uahalf	0x5b2
	.uaword	0x225
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"TxPduIdPtr"
	.byte	0x8
	.uahalf	0x5b3
	.uaword	0x5b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.string	"TotalTxPduCount"
	.byte	0x8
	.uahalf	0x5b4
	.uaword	0x225
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.string	"CtrlId"
	.byte	0x8
	.uahalf	0x5b6
	.uaword	0x1be
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.string	"CtrlCanCtrlRef"
	.byte	0x8
	.uahalf	0x5b7
	.uaword	0x1be
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0xc
	.string	"CtrlWakeupSupport"
	.byte	0x8
	.uahalf	0x5b8
	.uaword	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0
	.uleb128 0xe
	.string	"CanIf_Cfg_CtrlConfig_tst"
	.byte	0x8
	.uahalf	0x5c1
	.uaword	0x1d3b
	.uleb128 0xb
	.byte	0x8
	.byte	0x8
	.uahalf	0x5c4
	.uaword	0x1e5c
	.uleb128 0xd
	.uaword	.LASF2
	.byte	0x8
	.uahalf	0x5c6
	.uaword	0x1e5c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"CanObjectId"
	.byte	0x8
	.uahalf	0x5c7
	.uaword	0x35c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"CanHandleType"
	.byte	0x8
	.uahalf	0x5c9
	.uaword	0x195f
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.uaword	0x1e62
	.uleb128 0xa
	.uaword	0x1df2
	.uleb128 0xe
	.string	"CanIf_Cfg_HthConfig_tst"
	.byte	0x8
	.uahalf	0x5cc
	.uaword	0x1e13
	.uleb128 0xb
	.byte	0x10
	.byte	0x8
	.uahalf	0x5cf
	.uaword	0x1f2e
	.uleb128 0xc
	.string	"CanIf_HthConfigPtr"
	.byte	0x8
	.uahalf	0x5d0
	.uaword	0x1f2e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"DataBuf"
	.byte	0x8
	.uahalf	0x5d3
	.uaword	0x331
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"CanIdBuf"
	.byte	0x8
	.uahalf	0x5d4
	.uaword	0x1f39
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.string	"CanIfBufferId"
	.byte	0x8
	.uahalf	0x5d5
	.uaword	0x1890
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.string	"CanIfBufferSize"
	.byte	0x8
	.uahalf	0x5d6
	.uaword	0x1be
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xc
	.string	"CanIfBufferMaxDataLength"
	.byte	0x8
	.uahalf	0x5d7
	.uaword	0x1be
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.uaword	0x1f34
	.uleb128 0xa
	.uaword	0x1e67
	.uleb128 0x7
	.byte	0x4
	.uaword	0x613
	.uleb128 0xe
	.string	"CanIf_Cfg_TxBufferConfig_tst"
	.byte	0x8
	.uahalf	0x5da
	.uaword	0x1e87
	.uleb128 0xb
	.byte	0x18
	.byte	0x8
	.uahalf	0x5dc
	.uaword	0x207f
	.uleb128 0xd
	.uaword	.LASF3
	.byte	0x8
	.uahalf	0x5dd
	.uaword	0x207f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"TxPduId"
	.byte	0x8
	.uahalf	0x5e4
	.uaword	0x2c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"TxPduTargetPduId"
	.byte	0x8
	.uahalf	0x5e5
	.uaword	0x2c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xc
	.string	"TxPduType"
	.byte	0x8
	.uahalf	0x5e6
	.uaword	0x2c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.string	"TxPduCanIdType"
	.byte	0x8
	.uahalf	0x5e7
	.uaword	0x681
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xc
	.string	"TxPduTxUserUL"
	.byte	0x8
	.uahalf	0x5e8
	.uaword	0x191b
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0xc
	.string	"UserTxConfirmation"
	.byte	0x8
	.uahalf	0x5e9
	.uaword	0x1d35
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.string	"TxPduCanId"
	.byte	0x8
	.uahalf	0x5ea
	.uaword	0x34a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.string	"TxPduReadNotifyStatus"
	.byte	0x8
	.uahalf	0x5f0
	.uaword	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xc
	.string	"TxTruncEnabled_b"
	.byte	0x8
	.uahalf	0x5f9
	.uaword	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.uleb128 0xc
	.string	"TxPduLength_u8"
	.byte	0x8
	.uahalf	0x5fb
	.uaword	0x1be
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.uaword	0x2085
	.uleb128 0xa
	.uaword	0x1f3f
	.uleb128 0xe
	.string	"CanIf_Cfg_TxPduConfig_tst"
	.byte	0x8
	.uahalf	0x5fc
	.uaword	0x1f64
	.uleb128 0xb
	.byte	0x44
	.byte	0x8
	.uahalf	0x623
	.uaword	0x227c
	.uleb128 0xc
	.string	"HrhConfig_pcst"
	.byte	0x8
	.uahalf	0x628
	.uaword	0x227c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"RxPduConfig_pcst"
	.byte	0x8
	.uahalf	0x62b
	.uaword	0x2287
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"NumCanRxPduId_t"
	.byte	0x8
	.uahalf	0x62e
	.uaword	0x2c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.string	"NumCanCtrl_u8"
	.byte	0x8
	.uahalf	0x631
	.uaword	0x1be
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xc
	.string	"NumCddRxPdus_t"
	.byte	0x8
	.uahalf	0x635
	.uaword	0x2c9
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.string	"RangeCfg_tpst"
	.byte	0x8
	.uahalf	0x639
	.uaword	0x2292
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.string	"RxPduIdTable_Ptr"
	.byte	0x8
	.uahalf	0x63f
	.uaword	0x5aa
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xc
	.string	"HrhPduIdTable_Ptr"
	.byte	0x8
	.uahalf	0x640
	.uaword	0x5aa
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xc
	.string	"CfgSetIndex_u8"
	.byte	0x8
	.uahalf	0x643
	.uaword	0x1be
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xc
	.string	"CanIf_TxPduConfigPtr"
	.byte	0x8
	.uahalf	0x645
	.uaword	0x229d
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.uaword	.LASF3
	.byte	0x8
	.uahalf	0x646
	.uaword	0x207f
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.uaword	.LASF2
	.byte	0x8
	.uahalf	0x648
	.uaword	0x1e5c
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xc
	.string	"NumOfTxPdus"
	.byte	0x8
	.uahalf	0x649
	.uaword	0x225
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xc
	.string	"NumOfTxBuffers"
	.byte	0x8
	.uahalf	0x64a
	.uaword	0x225
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xc
	.string	"TxPduIdTable_Ptr"
	.byte	0x8
	.uahalf	0x64b
	.uaword	0x5aa
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xc
	.string	"CtrlIdTable_Ptr"
	.byte	0x8
	.uahalf	0x64c
	.uaword	0x59f
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xc
	.string	"RxAutosarUL_Ptr"
	.byte	0x8
	.uahalf	0x651
	.uaword	0x22a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xc
	.string	"NmtxIdPtr"
	.byte	0x8
	.uahalf	0x654
	.uaword	0x22b3
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.uaword	0x2282
	.uleb128 0xa
	.uaword	0x1b4a
	.uleb128 0x7
	.byte	0x4
	.uaword	0x228d
	.uleb128 0xa
	.uaword	0x1c2b
	.uleb128 0x7
	.byte	0x4
	.uaword	0x2298
	.uleb128 0xa
	.uaword	0x1d02
	.uleb128 0x7
	.byte	0x4
	.uaword	0x22a3
	.uleb128 0xa
	.uaword	0x208a
	.uleb128 0x7
	.byte	0x4
	.uaword	0x22ae
	.uleb128 0xa
	.uaword	0x1c9b
	.uleb128 0x7
	.byte	0x4
	.uaword	0x22b9
	.uleb128 0xa
	.uaword	0x34a
	.uleb128 0xe
	.string	"CanIf_ConfigType"
	.byte	0x8
	.uahalf	0x65e
	.uaword	0x20ac
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x4
	.byte	0x1
	.byte	0x9
	.byte	0xff
	.uaword	0x2301
	.uleb128 0xc
	.string	"Ctrl_Pdu_mode"
	.byte	0x9
	.uahalf	0x102
	.uaword	0x1be
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"CanIf_ControllerStateType"
	.byte	0x9
	.uahalf	0x112
	.uaword	0x22df
	.uleb128 0x12
	.string	"SchM_Enter_CanIf_TxBufAccessNoNest"
	.byte	0x2
	.byte	0x45
	.byte	0x1
	.byte	0x3
	.uleb128 0x12
	.string	"SchM_Exit_CanIf_TxBufAccessNoNest"
	.byte	0x2
	.byte	0x4e
	.byte	0x1
	.byte	0x3
	.uleb128 0x12
	.string	"SchM_Enter_CanIf_ControllerState"
	.byte	0x2
	.byte	0x6e
	.byte	0x1
	.byte	0x3
	.uleb128 0x12
	.string	"SchM_Exit_CanIf_ControllerState"
	.byte	0x2
	.byte	0x78
	.byte	0x1
	.byte	0x3
	.uleb128 0x13
	.byte	0x1
	.string	"CanIf_SetControllerMode"
	.byte	0x1
	.byte	0x2f
	.byte	0x1
	.uaword	0x2b3
	.uaword	.LFB86
	.uaword	.LFE86
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x256b
	.uleb128 0x14
	.uaword	.LASF4
	.byte	0x1
	.byte	0x2f
	.uaword	0x1be
	.uaword	.LLST0
	.uleb128 0x14
	.uaword	.LASF5
	.byte	0x1
	.byte	0x2f
	.uaword	0x573
	.uaword	.LLST1
	.uleb128 0x15
	.uaword	.LASF6
	.byte	0x1
	.byte	0x33
	.uaword	0x256b
	.uaword	.LLST2
	.uleb128 0x16
	.string	"lCanStatus_en"
	.byte	0x1
	.byte	0x35
	.uaword	0x414
	.uaword	.LLST3
	.uleb128 0x16
	.string	"lRetVal_en"
	.byte	0x1
	.byte	0x36
	.uaword	0x2b3
	.uaword	.LLST4
	.uleb128 0x16
	.string	"lCanMode"
	.byte	0x1
	.byte	0x3a
	.uaword	0x3cb
	.uaword	.LLST5
	.uleb128 0x16
	.string	"lCtrlConfig_pst"
	.byte	0x1
	.byte	0x3d
	.uaword	0x1e5c
	.uaword	.LLST6
	.uleb128 0x15
	.uaword	.LASF7
	.byte	0x1
	.byte	0x45
	.uaword	0x1be
	.uaword	.LLST7
	.uleb128 0x17
	.uaword	0x2323
	.uaword	.LBB18
	.uaword	.LBE18
	.byte	0x1
	.byte	0xd1
	.uaword	0x24a5
	.uleb128 0x18
	.uaword	.LVL9
	.uaword	0x28e8
	.byte	0
	.uleb128 0x17
	.uaword	0x234b
	.uaword	.LBB20
	.uaword	.LBE20
	.byte	0x1
	.byte	0xd7
	.uaword	0x24c2
	.uleb128 0x18
	.uaword	.LVL11
	.uaword	0x2906
	.byte	0
	.uleb128 0x19
	.uaword	.LVL6
	.uaword	0x2923
	.uaword	0x24d5
	.uleb128 0x1a
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x19
	.uaword	.LVL10
	.uaword	0x2960
	.uaword	0x24e9
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.uaword	.LVL14
	.uaword	0x2990
	.uaword	0x250c
	.uleb128 0x1a
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x3f
	.uleb128 0x1a
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x33
	.uleb128 0x1a
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x3c
	.byte	0
	.uleb128 0x19
	.uaword	.LVL17
	.uaword	0x2990
	.uaword	0x252f
	.uleb128 0x1a
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x4e
	.uleb128 0x1a
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x33
	.uleb128 0x1a
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x3c
	.byte	0
	.uleb128 0x18
	.uaword	.LVL22
	.uaword	0x2923
	.uleb128 0x19
	.uaword	.LVL27
	.uaword	0x2990
	.uaword	0x255b
	.uleb128 0x1a
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x45
	.uleb128 0x1a
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x33
	.uleb128 0x1a
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x3c
	.byte	0
	.uleb128 0x1b
	.uaword	.LVL31
	.uaword	0x2923
	.uleb128 0x1a
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.uaword	0x2301
	.uleb128 0x13
	.byte	0x1
	.string	"CanIf_GetControllerMode"
	.byte	0x1
	.byte	0xff
	.byte	0x1
	.uaword	0x2b3
	.uaword	.LFB87
	.uaword	.LFE87
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x2652
	.uleb128 0x1c
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x100
	.uaword	0x1be
	.uaword	.LLST8
	.uleb128 0x1d
	.string	"ControllerModePtr"
	.byte	0x1
	.uahalf	0x101
	.uaword	0x2652
	.uaword	.LLST9
	.uleb128 0x1e
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x106
	.uaword	0x256b
	.uleb128 0x1f
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x108
	.uaword	0x1be
	.uaword	.LLST10
	.uleb128 0x19
	.uaword	.LVL41
	.uaword	0x2990
	.uaword	0x260f
	.uleb128 0x1a
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x3f
	.uleb128 0x1a
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x34
	.uleb128 0x1a
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x3c
	.byte	0
	.uleb128 0x19
	.uaword	.LVL44
	.uaword	0x2990
	.uaword	0x2632
	.uleb128 0x1a
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x4e
	.uleb128 0x1a
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x34
	.uleb128 0x1a
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x3c
	.byte	0
	.uleb128 0x1b
	.uaword	.LVL47
	.uaword	0x2990
	.uleb128 0x1a
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x44
	.uleb128 0x1a
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x34
	.uleb128 0x1a
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x3c
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.uaword	0x573
	.uleb128 0x20
	.byte	0x1
	.string	"CanIf_ControllerBusOff"
	.byte	0x1
	.uahalf	0x137
	.byte	0x1
	.uaword	.LFB88
	.uaword	.LFE88
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x276a
	.uleb128 0x1c
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x137
	.uaword	0x1be
	.uaword	.LLST11
	.uleb128 0x1f
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x13b
	.uaword	0x256b
	.uaword	.LLST12
	.uleb128 0x1f
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x13d
	.uaword	0x1be
	.uaword	.LLST13
	.uleb128 0x1e
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x140
	.uaword	0x276a
	.uleb128 0x21
	.uaword	0x2323
	.uaword	.LBB22
	.uaword	.LBE22
	.byte	0x1
	.uahalf	0x169
	.uaword	0x26df
	.uleb128 0x18
	.uaword	.LVL53
	.uaword	0x28e8
	.byte	0
	.uleb128 0x21
	.uaword	0x234b
	.uaword	.LBB24
	.uaword	.LBE24
	.byte	0x1
	.uahalf	0x16f
	.uaword	0x26fd
	.uleb128 0x18
	.uaword	.LVL56
	.uaword	0x2906
	.byte	0
	.uleb128 0x19
	.uaword	.LVL55
	.uaword	0x2960
	.uaword	0x2711
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.uaword	.LVL57
	.byte	0x1
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	0x2725
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.uaword	.LVL59
	.byte	0x1
	.uaword	0x2990
	.uaword	0x2749
	.uleb128 0x1a
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x3e
	.uleb128 0x1a
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x46
	.uleb128 0x1a
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x3c
	.byte	0
	.uleb128 0x24
	.uaword	.LVL61
	.byte	0x1
	.uaword	0x2990
	.uleb128 0x1a
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x4e
	.uleb128 0x1a
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x46
	.uleb128 0x1a
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x3c
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.uaword	0x2770
	.uleb128 0xa
	.uaword	0x1aaf
	.uleb128 0x20
	.byte	0x1
	.string	"CanIf_ControllerModeIndication_Internal"
	.byte	0x1
	.uahalf	0x194
	.byte	0x1
	.uaword	.LFB89
	.uaword	.LFE89
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x2849
	.uleb128 0x1c
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x194
	.uaword	0x1be
	.uaword	.LLST14
	.uleb128 0x1c
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x195
	.uaword	0x573
	.uaword	.LLST15
	.uleb128 0x1e
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x198
	.uaword	0x256b
	.uleb128 0x1e
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x19a
	.uaword	0x276a
	.uleb128 0x1f
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x19c
	.uaword	0x1be
	.uaword	.LLST16
	.uleb128 0x25
	.uaword	.LVL66
	.byte	0x1
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x23
	.uaword	.LVL68
	.byte	0x1
	.uaword	0x2990
	.uaword	0x2828
	.uleb128 0x1a
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x3e
	.uleb128 0x1a
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x47
	.uleb128 0x1a
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x3c
	.byte	0
	.uleb128 0x24
	.uaword	.LVL70
	.byte	0x1
	.uaword	0x2990
	.uleb128 0x1a
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x4e
	.uleb128 0x1a
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x47
	.uleb128 0x1a
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x3c
	.byte	0
	.byte	0
	.uleb128 0x26
	.string	"CanIf_Prv_ConfigSet_tpst"
	.byte	0x1
	.byte	0xf
	.uaword	0x2870
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CanIf_Prv_ConfigSet_tpst
	.uleb128 0x7
	.byte	0x4
	.uaword	0x2876
	.uleb128 0xa
	.uaword	0x22be
	.uleb128 0x27
	.uaword	0x2301
	.uaword	0x2886
	.uleb128 0x28
	.byte	0
	.uleb128 0x29
	.string	"CanIf_Prv_ControllerState_ast"
	.byte	0x9
	.uahalf	0x19c
	.uaword	0x287b
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.string	"CanIf_Prv_InitStatus_b"
	.byte	0x9
	.uahalf	0x1c2
	.uaword	0x270
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.string	"CanIf_Callback"
	.byte	0x9
	.uahalf	0x1db
	.uaword	0x2770
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.byte	0x1
	.string	"Os_SuspendAllInterrupts"
	.byte	0x2
	.byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.byte	0x1
	.string	"Os_ResumeAllInterrupts"
	.byte	0x2
	.byte	0x42
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.byte	0x1
	.string	"CanIf_SetControllerMode_Integration"
	.byte	0xb
	.byte	0x35
	.byte	0x1
	.uaword	0x414
	.byte	0x1
	.uaword	0x2960
	.uleb128 0x11
	.uaword	0x1be
	.uleb128 0x11
	.uaword	0x3cb
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.string	"CanIf_Prv_ClearTxChannelBuffer"
	.byte	0x9
	.uahalf	0x48a
	.byte	0x1
	.byte	0x1
	.uaword	0x2990
	.uleb128 0x11
	.uaword	0x1be
	.byte	0
	.uleb128 0x2d
	.byte	0x1
	.string	"Det_ReportError"
	.byte	0xa
	.byte	0x70
	.byte	0x1
	.uaword	0x2b3
	.byte	0x1
	.uleb128 0x11
	.uaword	0x1e9
	.uleb128 0x11
	.uaword	0x1be
	.uleb128 0x11
	.uaword	0x1be
	.uleb128 0x11
	.uaword	0x1be
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x5
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
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x2113
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL4
	.uaword	.LVL12
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL13
	.uaword	.LVL15
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL16
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
	.uaword	.LVL25
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL26
	.uaword	.LVL28
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL28
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL29
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
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL5
	.uaword	.LVL12
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL13
	.uaword	.LVL15
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL16
	.uaword	.LVL18
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL21
	.uaword	.LVL25
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL26
	.uaword	.LVL28
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL28
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL30
	.uaword	.LFE86
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL2
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL18
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL28
	.uaword	.LFE86
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL0
	.uaword	.LVL6
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL12
	.uaword	.LVL22
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL22
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL25
	.uaword	.LVL31
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL31
	.uaword	.LVL32
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL33
	.uaword	.LVL34
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL0
	.uaword	.LVL7
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL7
	.uaword	.LVL12
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LVL23
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL23
	.uaword	.LVL25
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LFE86
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0xd
	.byte	0x75
	.sleb128 0
	.byte	0x31
	.byte	0x72
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x28
	.uahalf	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL3
	.uaword	.LVL6-1
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL6-1
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL18
	.uaword	.LVL22-1
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL22-1
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL28
	.uaword	.LVL31-1
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL31-1
	.uaword	.LFE86
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL1
	.uaword	.LVL6-1
	.uahalf	0x2
	.byte	0x82
	.sleb128 0
	.uaword	.LVL6-1
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL18
	.uaword	.LVL22-1
	.uahalf	0x2
	.byte	0x82
	.sleb128 0
	.uaword	.LVL22-1
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL25
	.uaword	.LVL27-1
	.uahalf	0x2
	.byte	0x82
	.sleb128 0
	.uaword	.LVL27-1
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL28
	.uaword	.LVL31-1
	.uahalf	0x2
	.byte	0x82
	.sleb128 0
	.uaword	.LVL31-1
	.uaword	.LFE86
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL35
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL40
	.uaword	.LVL42
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL42
	.uaword	.LVL43
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL43
	.uaword	.LVL45
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL45
	.uaword	.LVL46
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL46
	.uaword	.LFE87
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL35
	.uaword	.LVL41-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL41-1
	.uaword	.LVL42
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL42
	.uaword	.LVL44-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL44-1
	.uaword	.LVL45
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL45
	.uaword	.LVL47-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL47-1
	.uaword	.LFE87
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL36
	.uaword	.LVL38
	.uahalf	0xc
	.byte	0x3
	.uaword	CanIf_Prv_ConfigSet_tpst
	.byte	0x6
	.byte	0x23
	.uleb128 0x38
	.byte	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.uaword	.LVL45
	.uaword	.LVL46
	.uahalf	0xc
	.byte	0x3
	.uaword	CanIf_Prv_ConfigSet_tpst
	.byte	0x6
	.byte	0x23
	.uleb128 0x38
	.byte	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL48
	.uaword	.LVL53-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL53-1
	.uaword	.LVL57
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL57
	.uaword	.LVL58
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL58
	.uaword	.LVL59
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL59
	.uaword	.LVL60
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL60
	.uaword	.LFE88
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL51
	.uaword	.LVL54
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL49
	.uaword	.LVL50
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL50
	.uaword	.LVL52
	.uahalf	0xc
	.byte	0x3
	.uaword	CanIf_Prv_ConfigSet_tpst
	.byte	0x6
	.byte	0x23
	.uleb128 0x38
	.byte	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.uaword	.LVL52
	.uaword	.LVL57
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL61
	.uaword	.LFE88
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL62
	.uaword	.LVL66-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL66-1
	.uaword	.LVL66
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL66
	.uaword	.LVL67
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL67
	.uaword	.LVL68
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL68
	.uaword	.LVL69
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL69
	.uaword	.LVL70
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL70
	.uaword	.LFE89
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL62
	.uaword	.LVL66-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL66-1
	.uaword	.LVL66
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL66
	.uaword	.LVL67
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL67
	.uaword	.LVL68
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL68
	.uaword	.LVL69
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL69
	.uaword	.LVL70
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL70
	.uaword	.LFE89
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL63
	.uaword	.LVL65
	.uahalf	0xc
	.byte	0x3
	.uaword	CanIf_Prv_ConfigSet_tpst
	.byte	0x6
	.byte	0x23
	.uleb128 0x38
	.byte	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x34
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
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF8:
	.string	"lCallBackPtr_p"
.LASF7:
	.string	"lCtrlCustId_u8"
.LASF1:
	.string	"PduIdx_t"
.LASF0:
	.string	"SduLength"
.LASF2:
	.string	"CanIf_CtrlConfigPtr"
.LASF4:
	.string	"ControllerId"
.LASF5:
	.string	"ControllerMode"
.LASF6:
	.string	"lControllerState_p"
.LASF3:
	.string	"CanIf_TxBufferConfigPtr"
	.extern	CanIf_Callback,STT_OBJECT,12
	.extern	Det_ReportError,STT_FUNC,0
	.extern	Os_ResumeAllInterrupts,STT_FUNC,0
	.extern	CanIf_Prv_ClearTxChannelBuffer,STT_FUNC,0
	.extern	Os_SuspendAllInterrupts,STT_FUNC,0
	.extern	CanIf_SetControllerMode_Integration,STT_FUNC,0
	.extern	CanIf_Prv_ControllerState_ast,STT_OBJECT,-1
	.extern	CanIf_Prv_InitStatus_b,STT_OBJECT,1
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
