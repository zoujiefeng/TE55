	.file	"PduR_dLoIfTT.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.PduR_CanNmRxIndication,"ax",@progbits
	.align 1
	.global	PduR_CanNmRxIndication
	.type	PduR_CanNmRxIndication, @function
PduR_CanNmRxIndication:
.LFB96:
	.file 1 "bsw\\PduR\\PduR_dLoIfTT.c"
	.loc 1 39 0
.LVL0:
.LBB4:
.LBB5:
	.loc 1 139 0
	movh.a	%a2, hi:PduR_State
	ld.bu	%d15, [%a2] lo:PduR_State
	jz	%d15, .L7
	.loc 1 141 0
	jz.a	%a4, .L8
	.loc 1 144 0
	movh.a	%a15, hi:PduR_Base
	ld.a	%a15, [%a15] lo:PduR_Base
	ld.a	%a15, [%a15] 12
	ld.hu	%d15, [%a15] 16
	jge.u	%d4, %d15, .L4
	.loc 1 145 0
	ld.a	%a2, [%a15] 12
	mov.u	%d2, 65535
	addsc.a	%a2, %a2, %d4, 1
	ld.hu	%d15, [%a2]0
	jeq	%d15, %d2, .L4
	.loc 1 146 0
	ld.a	%a15, [%a15]0
	movh.a	%a2, hi:PduR_upIfRxIndicationTable
	lea	%a2, [%a2] lo:PduR_upIfRxIndicationTable
	addsc.a	%a15, %a15, %d15, 2
	ld.bu	%d15, [%a15] 2
	addsc.a	%a2, %a2, %d15, 2
	ld.a	%a2, [%a2]0
	jz.a	%a2, .L4
	.loc 1 152 0
	ld.hu	%d4, [%a15]0
.LVL1:
	ji	%a2
.LVL2:
.L4:
	.loc 1 147 0
	mov	%e4, 51
.LVL3:
	mov	%d6, 11
	mov	%d7, 2
	j	Det_ReportError
.LVL4:
.L7:
	.loc 1 139 0
	mov	%e4, 51
.LVL5:
	mov	%d6, 11
	mov	%d7, 1
	j	Det_ReportError
.LVL6:
.L8:
	.loc 1 141 0
	mov	%e4, 51
.LVL7:
	mov	%d6, 11
	mov	%d7, 9
	j	Det_ReportError
.LVL8:
.LBE5:
.LBE4:
.LFE96:
	.size	PduR_CanNmRxIndication, .-PduR_CanNmRxIndication
.section .text.PduR_CanNmTxConfirmation,"ax",@progbits
	.align 1
	.global	PduR_CanNmTxConfirmation
	.type	PduR_CanNmTxConfirmation, @function
PduR_CanNmTxConfirmation:
.LFB97:
	.loc 1 71 0
.LVL9:
.LBB10:
.LBB11:
	.loc 1 235 0
	movh.a	%a15, hi:PduR_State
	ld.bu	%d15, [%a15] lo:PduR_State
	jz	%d15, .L13
	.loc 1 240 0
	movh.a	%a15, hi:PduR_Base
	ld.a	%a15, [%a15] lo:PduR_Base
	ld.a	%a15, [%a15] 12
	ld.hu	%d15, [%a15] 18
	jge.u	%d4, %d15, .L11
	.loc 1 241 0
	ld.a	%a2, [%a15] 8
	mov.u	%d2, 65535
	addsc.a	%a2, %a2, %d4, 1
	ld.hu	%d15, [%a2]0
	jeq	%d15, %d2, .L11
	.loc 1 242 0
	ld.a	%a15, [%a15] 4
	movh.a	%a2, hi:PduR_upIfTxConfirmationTable
	lea	%a2, [%a2] lo:PduR_upIfTxConfirmationTable
	addsc.a	%a15, %a15, %d15, 2
	ld.bu	%d15, [%a15] 3
	addsc.a	%a2, %a2, %d15, 2
	ld.a	%a2, [%a2]0
	jz.a	%a2, .L11
	.loc 1 249 0
	ld.hu	%d4, [%a15]0
.LVL10:
	ji	%a2
.LVL11:
.L11:
	.loc 1 243 0
	mov	%e4, 51
.LVL12:
	mov	%d6, 13
	mov	%d7, 2
	j	Det_ReportError
.LVL13:
.L13:
.LBB12:
.LBB13:
	.loc 1 235 0
	mov	%e4, 51
.LVL14:
	mov	%d6, 13
	mov	%d7, 1
	j	Det_ReportError
.LVL15:
.LBE13:
.LBE12:
.LBE11:
.LBE10:
.LFE97:
	.size	PduR_CanNmTxConfirmation, .-PduR_CanNmTxConfirmation
.section .text.PduR_CanNmTriggerTransmit,"ax",@progbits
	.align 1
	.global	PduR_CanNmTriggerTransmit
	.type	PduR_CanNmTriggerTransmit, @function
PduR_CanNmTriggerTransmit:
.LFB98:
	.loc 1 107 0
.LVL16:
.LBB16:
.LBB17:
	.loc 1 188 0
	movh.a	%a2, hi:PduR_State
	ld.bu	%d15, [%a2] lo:PduR_State
	jz	%d15, .L20
	.loc 1 190 0
	jz.a	%a4, .L21
	.loc 1 193 0
	movh.a	%a15, hi:PduR_Base
	ld.a	%a15, [%a15] lo:PduR_Base
	ld.a	%a15, [%a15] 12
	ld.hu	%d15, [%a15] 18
	jge.u	%d4, %d15, .L18
	.loc 1 194 0
	ld.a	%a2, [%a15] 8
	mov.u	%d2, 65535
	addsc.a	%a2, %a2, %d4, 1
	ld.hu	%d15, [%a2]0
	jeq	%d15, %d2, .L18
	.loc 1 195 0
	ld.a	%a15, [%a15] 4
	movh.a	%a2, hi:PduR_upIfTriggerTxTable
	lea	%a2, [%a2] lo:PduR_upIfTriggerTxTable
	addsc.a	%a15, %a15, %d15, 2
	ld.bu	%d15, [%a15] 2
	addsc.a	%a2, %a2, %d15, 2
	ld.a	%a2, [%a2]0
	jz.a	%a2, .L18
	.loc 1 201 0
	ld.hu	%d4, [%a15]0
.LVL17:
	ji	%a2
.LVL18:
.L18:
	.loc 1 196 0
	mov	%e4, 51
.LVL19:
	mov	%d6, 11
	mov	%d7, 2
	call	Det_ReportError
.LVL20:
.L16:
.LBE17:
.LBE16:
	.loc 1 109 0
	mov	%d2, 0
	ret
.LVL21:
.L20:
.LBB20:
.LBB18:
	.loc 1 188 0
	mov	%e4, 51
.LVL22:
	mov	%d6, 11
	mov	%d7, 1
	call	Det_ReportError
.LVL23:
.LBE18:
.LBE20:
	.loc 1 109 0
	mov	%d2, 0
	ret
.LVL24:
.L21:
.LBB21:
.LBB19:
	.loc 1 190 0
	mov	%e4, 51
.LVL25:
	mov	%d6, 11
	mov	%d7, 9
	call	Det_ReportError
.LVL26:
	j	.L16
.LBE19:
.LBE21:
.LFE98:
	.size	PduR_CanNmTriggerTransmit, .-PduR_CanNmTriggerTransmit
.section .text.PduR_dCanNmRxIndication,"ax",@progbits
	.align 1
	.global	PduR_dCanNmRxIndication
	.type	PduR_dCanNmRxIndication, @function
PduR_dCanNmRxIndication:
.LFB99:
	.loc 1 137 0
.LVL27:
	.loc 1 139 0
	movh.a	%a2, hi:PduR_State
	ld.bu	%d15, [%a2] lo:PduR_State
	jz	%d15, .L27
	.loc 1 141 0
	jz.a	%a4, .L28
	.loc 1 144 0
	movh.a	%a15, hi:PduR_Base
	ld.a	%a15, [%a15] lo:PduR_Base
	ld.a	%a15, [%a15] 12
	ld.hu	%d15, [%a15] 16
	jge.u	%d4, %d15, .L25
	.loc 1 145 0
	ld.a	%a2, [%a15] 12
	mov.u	%d2, 65535
	addsc.a	%a2, %a2, %d4, 1
	ld.hu	%d15, [%a2]0
	jeq	%d15, %d2, .L25
	.loc 1 146 0
	ld.a	%a15, [%a15]0
	movh.a	%a2, hi:PduR_upIfRxIndicationTable
	lea	%a2, [%a2] lo:PduR_upIfRxIndicationTable
	addsc.a	%a15, %a15, %d15, 2
	ld.bu	%d15, [%a15] 2
	addsc.a	%a2, %a2, %d15, 2
	ld.a	%a2, [%a2]0
	jz.a	%a2, .L25
	.loc 1 152 0
	ld.hu	%d4, [%a15]0
.LVL28:
	ji	%a2
.LVL29:
.L25:
	.loc 1 147 0
	mov	%e4, 51
.LVL30:
	mov	%d6, 11
	mov	%d7, 2
	j	Det_ReportError
.LVL31:
.L27:
	.loc 1 139 0 discriminator 1
	mov	%e4, 51
.LVL32:
	mov	%d6, 11
	mov	%d7, 1
	j	Det_ReportError
.LVL33:
.L28:
	.loc 1 141 0 discriminator 1
	mov	%e4, 51
.LVL34:
	mov	%d6, 11
	mov	%d7, 9
	j	Det_ReportError
.LVL35:
.LFE99:
	.size	PduR_dCanNmRxIndication, .-PduR_dCanNmRxIndication
.section .text.PduR_dCanNmTriggerTransmit,"ax",@progbits
	.align 1
	.global	PduR_dCanNmTriggerTransmit
	.type	PduR_dCanNmTriggerTransmit, @function
PduR_dCanNmTriggerTransmit:
.LFB100:
	.loc 1 186 0
.LVL36:
	.loc 1 188 0
	movh.a	%a2, hi:PduR_State
	ld.bu	%d15, [%a2] lo:PduR_State
	jz	%d15, .L35
	.loc 1 190 0
	jz.a	%a4, .L36
	.loc 1 193 0
	movh.a	%a15, hi:PduR_Base
	ld.a	%a15, [%a15] lo:PduR_Base
	ld.a	%a15, [%a15] 12
	ld.hu	%d15, [%a15] 18
	jge.u	%d4, %d15, .L33
	.loc 1 194 0
	ld.a	%a2, [%a15] 8
	mov.u	%d2, 65535
	addsc.a	%a2, %a2, %d4, 1
	ld.hu	%d15, [%a2]0
	jeq	%d15, %d2, .L33
	.loc 1 195 0
	ld.a	%a15, [%a15] 4
	movh.a	%a2, hi:PduR_upIfTriggerTxTable
	lea	%a2, [%a2] lo:PduR_upIfTriggerTxTable
	addsc.a	%a15, %a15, %d15, 2
	ld.bu	%d15, [%a15] 2
	addsc.a	%a2, %a2, %d15, 2
	ld.a	%a2, [%a2]0
	jz.a	%a2, .L33
	.loc 1 201 0
	ld.hu	%d4, [%a15]0
.LVL37:
	ji	%a2
.LVL38:
.L33:
	.loc 1 196 0
	mov	%e4, 51
.LVL39:
	mov	%d6, 11
	mov	%d7, 2
	call	Det_ReportError
.LVL40:
.L31:
	.loc 1 203 0
	mov	%d2, 0
	ret
.LVL41:
.L35:
	.loc 1 188 0 discriminator 1
	mov	%e4, 51
.LVL42:
	mov	%d6, 11
	mov	%d7, 1
	call	Det_ReportError
.LVL43:
	.loc 1 203 0 discriminator 1
	mov	%d2, 0
	ret
.LVL44:
.L36:
	.loc 1 190 0 discriminator 1
	mov	%e4, 51
.LVL45:
	mov	%d6, 11
	mov	%d7, 9
	call	Det_ReportError
.LVL46:
	j	.L31
.LFE100:
	.size	PduR_dCanNmTriggerTransmit, .-PduR_dCanNmTriggerTransmit
.section .text.PduR_dCanNmTxConfirmation,"ax",@progbits
	.align 1
	.global	PduR_dCanNmTxConfirmation
	.type	PduR_dCanNmTxConfirmation, @function
PduR_dCanNmTxConfirmation:
.LFB101:
	.loc 1 233 0
.LVL47:
	.loc 1 235 0
	movh.a	%a15, hi:PduR_State
	ld.bu	%d15, [%a15] lo:PduR_State
	jz	%d15, .L41
	.loc 1 240 0
	movh.a	%a15, hi:PduR_Base
	ld.a	%a15, [%a15] lo:PduR_Base
	ld.a	%a15, [%a15] 12
	ld.hu	%d15, [%a15] 18
	jge.u	%d4, %d15, .L39
	.loc 1 241 0
	ld.a	%a2, [%a15] 8
	mov.u	%d2, 65535
	addsc.a	%a2, %a2, %d4, 1
	ld.hu	%d15, [%a2]0
	jeq	%d15, %d2, .L39
	.loc 1 242 0
	ld.a	%a15, [%a15] 4
	movh.a	%a2, hi:PduR_upIfTxConfirmationTable
	lea	%a2, [%a2] lo:PduR_upIfTxConfirmationTable
	addsc.a	%a15, %a15, %d15, 2
	ld.bu	%d15, [%a15] 3
	addsc.a	%a2, %a2, %d15, 2
	ld.a	%a2, [%a2]0
	jz.a	%a2, .L39
	.loc 1 249 0
	ld.hu	%d4, [%a15]0
.LVL48:
	ji	%a2
.LVL49:
.L39:
	.loc 1 243 0
	mov	%e4, 51
.LVL50:
	mov	%d6, 13
	mov	%d7, 2
	j	Det_ReportError
.LVL51:
.L41:
.LBB24:
.LBB25:
	.loc 1 235 0
	mov	%e4, 51
.LVL52:
	mov	%d6, 13
	mov	%d7, 1
	j	Det_ReportError
.LVL53:
.LBE25:
.LBE24:
.LFE101:
	.size	PduR_dCanNmTxConfirmation, .-PduR_dCanNmTxConfirmation
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
	.uaword	.LFB96
	.uaword	.LFE96-.LFB96
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB97
	.uaword	.LFE97-.LFB97
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB98
	.uaword	.LFE98-.LFB98
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB99
	.uaword	.LFE99-.LFB99
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB100
	.uaword	.LFE100-.LFB100
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB101
	.uaword	.LFE101-.LFB101
	.align 2
.LEFDE10:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 4 ".\\output\\inc/..\\..\\bsw\\ComStack\\ComStack_Cfg.h"
	.file 5 ".\\output\\inc/..\\..\\bsw\\PduR\\api\\PduR.h"
	.file 6 ".\\output\\inc/..\\..\\bsw\\PduR\\api\\PduR_Types.h"
	.file 7 ".\\output\\inc/..\\..\\bsw\\PduR\\api\\PduR_Prv.h"
	.file 8 ".\\output\\inc/..\\..\\bsw\\Det\\api\\Det.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x188d
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\PduR\\PduR_dLoIfTT.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x20
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
	.uaword	0x1c2
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
	.uaword	0x1ee
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
	.uaword	0x1c2
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
	.uaword	0x1b5
	.uleb128 0x3
	.string	"PduIdType"
	.byte	0x4
	.byte	0x2c
	.uaword	0x1e0
	.uleb128 0x3
	.string	"PduLengthType"
	.byte	0x4
	.byte	0x30
	.uaword	0x1e0
	.uleb128 0x4
	.byte	0xc
	.byte	0x4
	.byte	0x39
	.uaword	0x30d
	.uleb128 0x5
	.string	"SduDataPtr"
	.byte	0x4
	.byte	0x3b
	.uaword	0x30d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"MetaDataPtr"
	.byte	0x4
	.byte	0x3c
	.uaword	0x30d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"SduLength"
	.byte	0x4
	.byte	0x3d
	.uaword	0x2b0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x1b5
	.uleb128 0x3
	.string	"PduInfoType"
	.byte	0x4
	.byte	0x3e
	.uaword	0x2c5
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x7
	.byte	0x4
	.uleb128 0x3
	.string	"PduR_RoutingPathGroupIdType"
	.byte	0x5
	.byte	0x98
	.uaword	0x1e0
	.uleb128 0x8
	.byte	0x1
	.byte	0x6
	.byte	0x1f
	.uaword	0x38b
	.uleb128 0x9
	.string	"PDUR_UNINIT"
	.sleb128 0
	.uleb128 0x9
	.string	"PDUR_REDUCED"
	.sleb128 1
	.uleb128 0x9
	.string	"PDUR_ONLINE"
	.sleb128 2
	.byte	0
	.uleb128 0x3
	.string	"PduR_StateType"
	.byte	0x6
	.byte	0x23
	.uaword	0x357
	.uleb128 0x6
	.byte	0x4
	.uaword	0x3a7
	.uleb128 0xa
	.uaword	0x313
	.uleb128 0x4
	.byte	0x4
	.byte	0x6
	.byte	0xfc
	.uaword	0x3d9
	.uleb128 0x5
	.string	"PduR_upIfRxIndicationFunc"
	.byte	0x6
	.byte	0xfe
	.uaword	0x3ea
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.uaword	0x3ea
	.uleb128 0xc
	.uaword	0x29f
	.uleb128 0xc
	.uaword	0x3a1
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x3d9
	.uleb128 0x3
	.string	"PduR_upIfRxIndicationFuncType"
	.byte	0x6
	.byte	0xff
	.uaword	0x3ac
	.uleb128 0xd
	.byte	0x4
	.byte	0x6
	.uahalf	0x125
	.uaword	0x446
	.uleb128 0xe
	.string	"PduR_upIfTxConfirmationFunc"
	.byte	0x6
	.uahalf	0x128
	.uaword	0x452
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.uaword	0x452
	.uleb128 0xc
	.uaword	0x29f
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x446
	.uleb128 0xf
	.string	"PduR_upIfTxConfirmationFuncType"
	.byte	0x6
	.uahalf	0x12d
	.uaword	0x415
	.uleb128 0xd
	.byte	0x4
	.byte	0x6
	.uahalf	0x149
	.uaword	0x4ac
	.uleb128 0xe
	.string	"PduR_upIfTriggerTxFunc"
	.byte	0x6
	.uahalf	0x14b
	.uaword	0x4c7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.uaword	0x289
	.uaword	0x4c1
	.uleb128 0xc
	.uaword	0x29f
	.uleb128 0xc
	.uaword	0x4c1
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x313
	.uleb128 0x6
	.byte	0x4
	.uaword	0x4ac
	.uleb128 0xf
	.string	"PduR_upIfTriggerTxFuncType"
	.byte	0x6
	.uahalf	0x14c
	.uaword	0x480
	.uleb128 0xf
	.string	"PduR_loTransmitFP"
	.byte	0x6
	.uahalf	0x1ef
	.uaword	0x1b5
	.uleb128 0xf
	.string	"PduR_loCancelTransmitFP"
	.byte	0x6
	.uahalf	0x1f5
	.uaword	0x1b5
	.uleb128 0xf
	.string	"PduR_upIfRxIndicationFP"
	.byte	0x6
	.uahalf	0x1fb
	.uaword	0x1b5
	.uleb128 0xf
	.string	"PduR_upIfTxConfirmationFP"
	.byte	0x6
	.uahalf	0x201
	.uaword	0x1b5
	.uleb128 0xf
	.string	"PduR_upIfTriggerTxFP"
	.byte	0x6
	.uahalf	0x207
	.uaword	0x1b5
	.uleb128 0xf
	.string	"PduR_upTpStartOfReceptionFP"
	.byte	0x6
	.uahalf	0x20d
	.uaword	0x1b5
	.uleb128 0xf
	.string	"PduR_upTpProvideRxBufFP"
	.byte	0x6
	.uahalf	0x213
	.uaword	0x1b5
	.uleb128 0xf
	.string	"PduR_upTpRxIndicationFP"
	.byte	0x6
	.uahalf	0x219
	.uaword	0x1b5
	.uleb128 0xf
	.string	"PduR_upTpProvideTxBufFP"
	.byte	0x6
	.uahalf	0x21f
	.uaword	0x1b5
	.uleb128 0xf
	.string	"PduR_upTpTxConfirmationFP"
	.byte	0x6
	.uahalf	0x225
	.uaword	0x1b5
	.uleb128 0xd
	.byte	0x4
	.byte	0x6
	.uahalf	0x232
	.uaword	0x676
	.uleb128 0xe
	.string	"loId"
	.byte	0x6
	.uahalf	0x234
	.uaword	0x29f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.uaword	.LASF0
	.byte	0x6
	.uahalf	0x235
	.uaword	0x4f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xe
	.string	"loCancelTransmitID"
	.byte	0x6
	.uahalf	0x236
	.uaword	0x50a
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0xf
	.string	"PduR_RT_UpToLo"
	.byte	0x6
	.uahalf	0x237
	.uaword	0x62f
	.uleb128 0xd
	.byte	0x4
	.byte	0x6
	.uahalf	0x242
	.uaword	0x6b5
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x6
	.uahalf	0x244
	.uaword	0x29f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.uaword	.LASF2
	.byte	0x6
	.uahalf	0x245
	.uaword	0x52a
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0xf
	.string	"PduR_RT_LoIfRxToUp"
	.byte	0x6
	.uahalf	0x246
	.uaword	0x68d
	.uleb128 0xd
	.byte	0x4
	.byte	0x6
	.uahalf	0x251
	.uaword	0x6f8
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x6
	.uahalf	0x253
	.uaword	0x29f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.uaword	.LASF3
	.byte	0x6
	.uahalf	0x254
	.uaword	0x54a
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0xf
	.string	"PduR_RT_LoIfTxToUp"
	.byte	0x6
	.uahalf	0x255
	.uaword	0x6d0
	.uleb128 0xd
	.byte	0x4
	.byte	0x6
	.uahalf	0x261
	.uaword	0x754
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x6
	.uahalf	0x263
	.uaword	0x29f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"upTriggerTxID"
	.byte	0x6
	.uahalf	0x264
	.uaword	0x56c
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x11
	.uaword	.LASF3
	.byte	0x6
	.uahalf	0x265
	.uaword	0x54a
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0xf
	.string	"PduR_RT_LoTtIfTxToUp"
	.byte	0x6
	.uahalf	0x266
	.uaword	0x713
	.uleb128 0xd
	.byte	0x6
	.byte	0x6
	.uahalf	0x273
	.uaword	0x7d5
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x6
	.uahalf	0x275
	.uaword	0x29f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"upStartOfReceptionID"
	.byte	0x6
	.uahalf	0x276
	.uaword	0x589
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xe
	.string	"upProvideRxBufID"
	.byte	0x6
	.uahalf	0x277
	.uaword	0x5ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x11
	.uaword	.LASF2
	.byte	0x6
	.uahalf	0x278
	.uaword	0x5cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xf
	.string	"PduR_RT_LoTpRxToUp"
	.byte	0x6
	.uahalf	0x279
	.uaword	0x771
	.uleb128 0xd
	.byte	0x4
	.byte	0x6
	.uahalf	0x285
	.uaword	0x834
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x6
	.uahalf	0x287
	.uaword	0x29f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"upProvideTxBufID"
	.byte	0x6
	.uahalf	0x288
	.uaword	0x5ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x11
	.uaword	.LASF3
	.byte	0x6
	.uahalf	0x289
	.uaword	0x60d
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0xf
	.string	"PduR_RT_LoTpTxToUp"
	.byte	0x6
	.uahalf	0x28a
	.uaword	0x7f0
	.uleb128 0xd
	.byte	0xc
	.byte	0x6
	.uahalf	0x29a
	.uaword	0x8c4
	.uleb128 0xe
	.string	"upToLo"
	.byte	0x6
	.uahalf	0x29c
	.uaword	0x676
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"isTpModule"
	.byte	0x6
	.uahalf	0x2a1
	.uaword	0x259
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x6
	.uahalf	0x2a2
	.uaword	0x29f
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xe
	.string	"upLayerSymName"
	.byte	0x6
	.uahalf	0x2a3
	.uaword	0x29f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"upSrcLayerName"
	.byte	0x6
	.uahalf	0x2a4
	.uaword	0x1b5
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0
	.uleb128 0xf
	.string	"PduR_MT_UpToLo"
	.byte	0x6
	.uahalf	0x2a5
	.uaword	0x84f
	.uleb128 0xd
	.byte	0x6
	.byte	0x6
	.uahalf	0x2b3
	.uaword	0x916
	.uleb128 0xe
	.string	"length"
	.byte	0x6
	.uahalf	0x2b5
	.uaword	0x2b0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"loId"
	.byte	0x6
	.uahalf	0x2b6
	.uaword	0x29f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x11
	.uaword	.LASF4
	.byte	0x6
	.uahalf	0x2b7
	.uaword	0x4f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xf
	.string	"PduR_GT_IfTx"
	.byte	0x6
	.uahalf	0x2b8
	.uaword	0x8db
	.uleb128 0xd
	.byte	0x8
	.byte	0x6
	.uahalf	0x2c7
	.uaword	0x97c
	.uleb128 0xe
	.string	"buffer"
	.byte	0x6
	.uahalf	0x2c9
	.uaword	0x332
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"loId"
	.byte	0x6
	.uahalf	0x2ca
	.uaword	0x29f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.uaword	.LASF4
	.byte	0x6
	.uahalf	0x2cb
	.uaword	0x4f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xe
	.string	"isFifoType"
	.byte	0x6
	.uahalf	0x2cc
	.uaword	0x259
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.byte	0
	.uleb128 0xf
	.string	"PduR_GT_If"
	.byte	0x6
	.uahalf	0x2cd
	.uaword	0x92b
	.uleb128 0xd
	.byte	0x1c
	.byte	0x6
	.uahalf	0x2ed
	.uaword	0xabf
	.uleb128 0xe
	.string	"bufferPtr"
	.byte	0x6
	.uahalf	0x2ef
	.uaword	0x30d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"readPtr"
	.byte	0x6
	.uahalf	0x2f0
	.uaword	0x30d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"writePtr"
	.byte	0x6
	.uahalf	0x2f1
	.uaword	0x30d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"numRxLength_auo"
	.byte	0x6
	.uahalf	0x2f5
	.uaword	0xabf
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"numTxLength"
	.byte	0x6
	.uahalf	0x2f6
	.uaword	0x2b0
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xe
	.string	"SduLength_auo"
	.byte	0x6
	.uahalf	0x2f7
	.uaword	0xabf
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"bufferLength"
	.byte	0x6
	.uahalf	0x2f8
	.uaword	0x2b0
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0xe
	.string	"Rx_Status"
	.byte	0x6
	.uahalf	0x2fe
	.uaword	0x1b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"Tx_Status"
	.byte	0x6
	.uahalf	0x2ff
	.uaword	0x1b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.uleb128 0xe
	.string	"Tx_E_OK_Count"
	.byte	0x6
	.uahalf	0x300
	.uaword	0x1b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0xe
	.string	"Rx_FifoInstanceUsed_u8"
	.byte	0x6
	.uahalf	0x301
	.uaword	0x1b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x17
	.uleb128 0xe
	.string	"Tx_FifoInstanceUsed_u8"
	.byte	0x6
	.uahalf	0x302
	.uaword	0x1b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x12
	.uaword	0x2b0
	.uaword	0xacf
	.uleb128 0x13
	.uaword	0x326
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"PduR_TpSession_Dynamic"
	.byte	0x6
	.uahalf	0x304
	.uaword	0x98f
	.uleb128 0x6
	.byte	0x4
	.uaword	0xacf
	.uleb128 0xd
	.byte	0x4
	.byte	0x6
	.uahalf	0x335
	.uaword	0xb18
	.uleb128 0xe
	.string	"primarySession"
	.byte	0x6
	.uahalf	0x337
	.uaword	0xaee
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xf
	.string	"PduR_TpConnection_Dynamic"
	.byte	0x6
	.uahalf	0x33e
	.uaword	0xaf4
	.uleb128 0x6
	.byte	0x4
	.uaword	0xb18
	.uleb128 0xd
	.byte	0xc
	.byte	0x6
	.uahalf	0x34d
	.uaword	0xb9f
	.uleb128 0xe
	.string	"begin"
	.byte	0x6
	.uahalf	0x34f
	.uaword	0x30d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"connectionTable"
	.byte	0x6
	.uahalf	0x350
	.uaword	0xb3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"eltSize"
	.byte	0x6
	.uahalf	0x351
	.uaword	0x2b0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"buffPoolId"
	.byte	0x6
	.uahalf	0x352
	.uaword	0x1e0
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0
	.uleb128 0xf
	.string	"PduR_FIFO_Tp_fixed"
	.byte	0x6
	.uahalf	0x353
	.uaword	0xb40
	.uleb128 0xd
	.byte	0x10
	.byte	0x6
	.uahalf	0x367
	.uaword	0xc50
	.uleb128 0xe
	.string	"buffer"
	.byte	0x6
	.uahalf	0x369
	.uaword	0xc50
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"numOfLowerLayers"
	.byte	0x6
	.uahalf	0x36a
	.uaword	0x2b0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"TpGwQueueSize"
	.byte	0x6
	.uahalf	0x36c
	.uaword	0x2b0
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xe
	.string	"loId"
	.byte	0x6
	.uahalf	0x36e
	.uaword	0x29f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x6
	.uahalf	0x36f
	.uaword	0x29f
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xe
	.string	"TpThreshold"
	.byte	0x6
	.uahalf	0x370
	.uaword	0x1e0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x11
	.uaword	.LASF0
	.byte	0x6
	.uahalf	0x371
	.uaword	0x4f0
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0xc56
	.uleb128 0xa
	.uaword	0xb9f
	.uleb128 0xf
	.string	"PduR_GT_Tp"
	.byte	0x6
	.uahalf	0x375
	.uaword	0xbba
	.uleb128 0x6
	.byte	0x4
	.uaword	0xc74
	.uleb128 0xa
	.uaword	0xc5b
	.uleb128 0xd
	.byte	0x8
	.byte	0x6
	.uahalf	0x387
	.uaword	0xcb5
	.uleb128 0xe
	.string	"loTpRxToUp"
	.byte	0x6
	.uahalf	0x389
	.uaword	0x7d5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"routingCntrl_Idx"
	.byte	0x6
	.uahalf	0x38a
	.uaword	0x334
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0
	.uleb128 0xf
	.string	"PduR_RPG_LoTpRxToUp"
	.byte	0x6
	.uahalf	0x38b
	.uaword	0xc79
	.uleb128 0x6
	.byte	0x4
	.uaword	0xcd7
	.uleb128 0xa
	.uaword	0xcb5
	.uleb128 0xf
	.string	"PduR_loCancelReceiveFP"
	.byte	0x6
	.uahalf	0x39b
	.uaword	0x1b5
	.uleb128 0xd
	.byte	0x4
	.byte	0x6
	.uahalf	0x3a6
	.uaword	0xd2f
	.uleb128 0xe
	.string	"LoTpRxId"
	.byte	0x6
	.uahalf	0x3a8
	.uaword	0x29f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"CancelRxFP"
	.byte	0x6
	.uahalf	0x3ac
	.uaword	0xcdc
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0xf
	.string	"PduR_RT_UpTpRxToLoTp"
	.byte	0x6
	.uahalf	0x3ad
	.uaword	0xcfb
	.uleb128 0xd
	.byte	0xc
	.byte	0x6
	.uahalf	0x3b8
	.uaword	0xdaa
	.uleb128 0xe
	.string	"UpTpToLoTp"
	.byte	0x6
	.uahalf	0x3ba
	.uaword	0xdaa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"UpTpToLoTpMapTable"
	.byte	0x6
	.uahalf	0x3bb
	.uaword	0xdb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"UpTpToLoTp_NrEntries"
	.byte	0x6
	.uahalf	0x3bc
	.uaword	0x29f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0xdb0
	.uleb128 0xa
	.uaword	0xd2f
	.uleb128 0x6
	.byte	0x4
	.uaword	0xdbb
	.uleb128 0xa
	.uaword	0x29f
	.uleb128 0xf
	.string	"PduR_UpTpToLoTpRxConfig"
	.byte	0x6
	.uahalf	0x3bd
	.uaword	0xd4c
	.uleb128 0xd
	.byte	0x10
	.byte	0x6
	.uahalf	0x44d
	.uaword	0xe4a
	.uleb128 0xe
	.string	"CddToLo"
	.byte	0x6
	.uahalf	0x44f
	.uaword	0xe4a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"CddToLoMc"
	.byte	0x6
	.uahalf	0x450
	.uaword	0xe55
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"CddToLoMapTable"
	.byte	0x6
	.uahalf	0x451
	.uaword	0xdb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"CddToLo_NrEntries"
	.byte	0x6
	.uahalf	0x452
	.uaword	0x29f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0xe50
	.uleb128 0xa
	.uaword	0x676
	.uleb128 0x6
	.byte	0x4
	.uaword	0xe5b
	.uleb128 0xa
	.uaword	0x8c4
	.uleb128 0xf
	.string	"PduR_CddConfig"
	.byte	0x6
	.uahalf	0x453
	.uaword	0xde0
	.uleb128 0xd
	.byte	0x14
	.byte	0x6
	.uahalf	0x460
	.uaword	0xf29
	.uleb128 0xe
	.string	"LoTpRxToUp"
	.byte	0x6
	.uahalf	0x462
	.uaword	0xf29
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"LoTpTxToUp"
	.byte	0x6
	.uahalf	0x463
	.uaword	0xf34
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"LoTpTxToUpMapTable"
	.byte	0x6
	.uahalf	0x464
	.uaword	0xdb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"LoTpRxToUpMapTable"
	.byte	0x6
	.uahalf	0x465
	.uaword	0xdb5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"LoTpRxToUp_NrEntries"
	.byte	0x6
	.uahalf	0x466
	.uaword	0x29f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"LoTpTxToUp_NrEntries"
	.byte	0x6
	.uahalf	0x467
	.uaword	0x29f
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0xf2f
	.uleb128 0xa
	.uaword	0x7d5
	.uleb128 0x6
	.byte	0x4
	.uaword	0xf3a
	.uleb128 0xa
	.uaword	0x834
	.uleb128 0xf
	.string	"PduR_LoTpConfig"
	.byte	0x6
	.uahalf	0x468
	.uaword	0xe77
	.uleb128 0xd
	.byte	0x10
	.byte	0x6
	.uahalf	0x474
	.uaword	0xfbd
	.uleb128 0xe
	.string	"UpToLoMc"
	.byte	0x6
	.uahalf	0x476
	.uaword	0xe55
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"UpToLo"
	.byte	0x6
	.uahalf	0x477
	.uaword	0xe4a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"UpToLoMapTable"
	.byte	0x6
	.uahalf	0x478
	.uaword	0xdb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"UpToLo_NrEntries"
	.byte	0x6
	.uahalf	0x479
	.uaword	0x29f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0xf
	.string	"PduR_UpConfig"
	.byte	0x6
	.uahalf	0x47a
	.uaword	0xf57
	.uleb128 0xd
	.byte	0x14
	.byte	0x6
	.uahalf	0x487
	.uaword	0x1037
	.uleb128 0x11
	.uaword	.LASF5
	.byte	0x6
	.uahalf	0x489
	.uaword	0x1037
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.uaword	.LASF6
	.byte	0x6
	.uahalf	0x48a
	.uaword	0x1042
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.uaword	.LASF7
	.byte	0x6
	.uahalf	0x48b
	.uaword	0xdb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.uaword	.LASF8
	.byte	0x6
	.uahalf	0x48c
	.uaword	0xdb5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x11
	.uaword	.LASF9
	.byte	0x6
	.uahalf	0x48d
	.uaword	0x29f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x11
	.uaword	.LASF10
	.byte	0x6
	.uahalf	0x48e
	.uaword	0x29f
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x103d
	.uleb128 0xa
	.uaword	0x6b5
	.uleb128 0x6
	.byte	0x4
	.uaword	0x1048
	.uleb128 0xa
	.uaword	0x6f8
	.uleb128 0xf
	.string	"PduR_LoIfDConfig"
	.byte	0x6
	.uahalf	0x48f
	.uaword	0xfd3
	.uleb128 0xd
	.byte	0x14
	.byte	0x6
	.uahalf	0x49b
	.uaword	0x10ca
	.uleb128 0x11
	.uaword	.LASF5
	.byte	0x6
	.uahalf	0x49d
	.uaword	0x1037
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.uaword	.LASF6
	.byte	0x6
	.uahalf	0x49e
	.uaword	0x10ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.uaword	.LASF7
	.byte	0x6
	.uahalf	0x49f
	.uaword	0xdb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.uaword	.LASF8
	.byte	0x6
	.uahalf	0x4a0
	.uaword	0xdb5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x11
	.uaword	.LASF9
	.byte	0x6
	.uahalf	0x4a1
	.uaword	0x29f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x11
	.uaword	.LASF10
	.byte	0x6
	.uahalf	0x4a2
	.uaword	0x29f
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x10d0
	.uleb128 0xa
	.uaword	0x754
	.uleb128 0xf
	.string	"PduR_LoIfTTConfig"
	.byte	0x6
	.uahalf	0x4a3
	.uaword	0x1066
	.uleb128 0xd
	.byte	0x38
	.byte	0x6
	.uahalf	0x502
	.uaword	0x1238
	.uleb128 0xe
	.string	"cddConf"
	.byte	0x6
	.uahalf	0x504
	.uaword	0x1238
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"LoTpConf"
	.byte	0x6
	.uahalf	0x505
	.uaword	0x1243
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"LoIfDConf"
	.byte	0x6
	.uahalf	0x506
	.uaword	0x124e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"LoIfTTConf"
	.byte	0x6
	.uahalf	0x507
	.uaword	0x1259
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"UpIfConf"
	.byte	0x6
	.uahalf	0x508
	.uaword	0x1264
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"UpTpConf"
	.byte	0x6
	.uahalf	0x509
	.uaword	0x1264
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"gwToLoMc"
	.byte	0x6
	.uahalf	0x50a
	.uaword	0xe55
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"gwIfTx"
	.byte	0x6
	.uahalf	0x50c
	.uaword	0x126f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"gwIf"
	.byte	0x6
	.uahalf	0x50d
	.uaword	0x127a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.string	"gwTp"
	.byte	0x6
	.uahalf	0x50e
	.uaword	0xc6e
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xe
	.string	"rpgRxTp"
	.byte	0x6
	.uahalf	0x50f
	.uaword	0xcd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xe
	.string	"PduR_UpTpToLoTpRxCfg"
	.byte	0x6
	.uahalf	0x51d
	.uaword	0x1285
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xe
	.string	"configId"
	.byte	0x6
	.uahalf	0x51e
	.uaword	0x1e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"totalNoOfGwTpRps"
	.byte	0x6
	.uahalf	0x51f
	.uaword	0x1e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x32
	.uleb128 0xe
	.string	"totalNoOfGwIfRps"
	.byte	0x6
	.uahalf	0x520
	.uaword	0x1e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x123e
	.uleb128 0xa
	.uaword	0xe60
	.uleb128 0x6
	.byte	0x4
	.uaword	0x1249
	.uleb128 0xa
	.uaword	0xf3f
	.uleb128 0x6
	.byte	0x4
	.uaword	0x1254
	.uleb128 0xa
	.uaword	0x104d
	.uleb128 0x6
	.byte	0x4
	.uaword	0x125f
	.uleb128 0xa
	.uaword	0x10d5
	.uleb128 0x6
	.byte	0x4
	.uaword	0x126a
	.uleb128 0xa
	.uaword	0xfbd
	.uleb128 0x6
	.byte	0x4
	.uaword	0x1275
	.uleb128 0xa
	.uaword	0x916
	.uleb128 0x6
	.byte	0x4
	.uaword	0x1280
	.uleb128 0xa
	.uaword	0x97c
	.uleb128 0x6
	.byte	0x4
	.uaword	0x128b
	.uleb128 0xa
	.uaword	0xdc0
	.uleb128 0xf
	.string	"PduR_PBConfigType"
	.byte	0x6
	.uahalf	0x521
	.uaword	0x10ef
	.uleb128 0x14
	.byte	0x1
	.string	"PduR_dCanNmTxConfirmation"
	.byte	0x1
	.byte	0xe9
	.byte	0x1
	.byte	0x1
	.uaword	0x12d9
	.uleb128 0x15
	.string	"id"
	.byte	0x1
	.byte	0xe9
	.uaword	0x29f
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.string	"PduR_dCanNmRxIndication"
	.byte	0x1
	.byte	0x89
	.byte	0x1
	.byte	0x1
	.uaword	0x1311
	.uleb128 0x15
	.string	"id"
	.byte	0x1
	.byte	0x89
	.uaword	0x29f
	.uleb128 0x15
	.string	"ptr"
	.byte	0x1
	.byte	0x89
	.uaword	0x3a1
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.string	"PduR_CanNmRxIndication"
	.byte	0x1
	.byte	0x27
	.byte	0x1
	.uaword	.LFB96
	.uaword	.LFE96
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x13f7
	.uleb128 0x17
	.string	"id"
	.byte	0x1
	.byte	0x27
	.uaword	0x29f
	.uaword	.LLST0
	.uleb128 0x17
	.string	"ptr"
	.byte	0x1
	.byte	0x27
	.uaword	0x3a1
	.uaword	.LLST1
	.uleb128 0x18
	.uaword	0x12d9
	.uaword	.LBB4
	.uaword	.LBE4
	.byte	0x1
	.byte	0x28
	.uleb128 0x19
	.uaword	0x1305
	.uaword	.LLST1
	.uleb128 0x19
	.uaword	0x12fb
	.uaword	.LLST3
	.uleb128 0x1a
	.uaword	.LVL2
	.byte	0x1
	.uaword	0x138d
	.uleb128 0x1b
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.uleb128 0x1c
	.uaword	.LVL4
	.byte	0x1
	.uaword	0x1861
	.uaword	0x13b1
	.uleb128 0x1b
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x32
	.uleb128 0x1b
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x3b
	.uleb128 0x1b
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x33
	.byte	0
	.uleb128 0x1c
	.uaword	.LVL6
	.byte	0x1
	.uaword	0x1861
	.uaword	0x13d5
	.uleb128 0x1b
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x31
	.uleb128 0x1b
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x3b
	.uleb128 0x1b
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x33
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL8
	.byte	0x1
	.uaword	0x1861
	.uleb128 0x1b
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x39
	.uleb128 0x1b
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x3b
	.uleb128 0x1b
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.string	"PduR_CanNmTxConfirmation"
	.byte	0x1
	.byte	0x47
	.byte	0x1
	.uaword	.LFB97
	.uaword	.LFE97
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x14aa
	.uleb128 0x17
	.string	"id"
	.byte	0x1
	.byte	0x47
	.uaword	0x29f
	.uaword	.LLST4
	.uleb128 0x18
	.uaword	0x12aa
	.uaword	.LBB10
	.uaword	.LBE10
	.byte	0x1
	.byte	0x48
	.uleb128 0x19
	.uaword	0x12ce
	.uaword	.LLST5
	.uleb128 0x1e
	.uaword	.LBB12
	.uaword	.LBE12
	.uaword	0x1482
	.uleb128 0x19
	.uaword	0x12ce
	.uaword	.LLST6
	.uleb128 0x1d
	.uaword	.LVL15
	.byte	0x1
	.uaword	0x1861
	.uleb128 0x1b
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x31
	.uleb128 0x1b
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x3d
	.uleb128 0x1b
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x33
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uaword	.LVL11
	.byte	0x1
	.uleb128 0x1d
	.uaword	.LVL13
	.byte	0x1
	.uaword	0x1861
	.uleb128 0x1b
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x32
	.uleb128 0x1b
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x3d
	.uleb128 0x1b
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.string	"PduR_dCanNmTriggerTransmit"
	.byte	0x1
	.byte	0xba
	.byte	0x1
	.uaword	0x289
	.byte	0x1
	.uaword	0x14e9
	.uleb128 0x15
	.string	"id"
	.byte	0x1
	.byte	0xba
	.uaword	0x29f
	.uleb128 0x15
	.string	"ptr"
	.byte	0x1
	.byte	0xba
	.uaword	0x4c1
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"PduR_CanNmTriggerTransmit"
	.byte	0x1
	.byte	0x6b
	.byte	0x1
	.uaword	0x289
	.uaword	.LFB98
	.uaword	.LFE98
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x15d3
	.uleb128 0x17
	.string	"id"
	.byte	0x1
	.byte	0x6b
	.uaword	0x29f
	.uaword	.LLST7
	.uleb128 0x17
	.string	"ptr"
	.byte	0x1
	.byte	0x6b
	.uaword	0x4c1
	.uaword	.LLST8
	.uleb128 0x22
	.uaword	0x14aa
	.uaword	.LBB16
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x6c
	.uleb128 0x19
	.uaword	0x14dd
	.uaword	.LLST8
	.uleb128 0x19
	.uaword	0x14d3
	.uaword	.LLST10
	.uleb128 0x1a
	.uaword	.LVL18
	.byte	0x1
	.uaword	0x156c
	.uleb128 0x1b
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.uleb128 0x23
	.uaword	.LVL20
	.uaword	0x1861
	.uaword	0x158f
	.uleb128 0x1b
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x32
	.uleb128 0x1b
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x3b
	.uleb128 0x1b
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x33
	.byte	0
	.uleb128 0x23
	.uaword	.LVL23
	.uaword	0x1861
	.uaword	0x15b2
	.uleb128 0x1b
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x31
	.uleb128 0x1b
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x3b
	.uleb128 0x1b
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x33
	.byte	0
	.uleb128 0x24
	.uaword	.LVL26
	.uaword	0x1861
	.uleb128 0x1b
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x39
	.uleb128 0x1b
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x3b
	.uleb128 0x1b
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.uaword	0x12d9
	.uaword	.LFB99
	.uaword	.LFE99
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1675
	.uleb128 0x19
	.uaword	0x12fb
	.uaword	.LLST11
	.uleb128 0x19
	.uaword	0x1305
	.uaword	.LLST12
	.uleb128 0x1a
	.uaword	.LVL29
	.byte	0x1
	.uaword	0x160c
	.uleb128 0x1b
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.uleb128 0x1c
	.uaword	.LVL31
	.byte	0x1
	.uaword	0x1861
	.uaword	0x1630
	.uleb128 0x1b
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x32
	.uleb128 0x1b
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x3b
	.uleb128 0x1b
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x33
	.byte	0
	.uleb128 0x1c
	.uaword	.LVL33
	.byte	0x1
	.uaword	0x1861
	.uaword	0x1654
	.uleb128 0x1b
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x31
	.uleb128 0x1b
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x3b
	.uleb128 0x1b
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x33
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL35
	.byte	0x1
	.uaword	0x1861
	.uleb128 0x1b
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x39
	.uleb128 0x1b
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x3b
	.uleb128 0x1b
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x33
	.byte	0
	.byte	0
	.uleb128 0x25
	.uaword	0x14aa
	.uaword	.LFB100
	.uaword	.LFE100
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1714
	.uleb128 0x19
	.uaword	0x14d3
	.uaword	.LLST13
	.uleb128 0x19
	.uaword	0x14dd
	.uaword	.LLST14
	.uleb128 0x1a
	.uaword	.LVL38
	.byte	0x1
	.uaword	0x16ae
	.uleb128 0x1b
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.uleb128 0x23
	.uaword	.LVL40
	.uaword	0x1861
	.uaword	0x16d1
	.uleb128 0x1b
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x32
	.uleb128 0x1b
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x3b
	.uleb128 0x1b
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x33
	.byte	0
	.uleb128 0x23
	.uaword	.LVL43
	.uaword	0x1861
	.uaword	0x16f4
	.uleb128 0x1b
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x31
	.uleb128 0x1b
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x3b
	.uleb128 0x1b
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x33
	.byte	0
	.uleb128 0x24
	.uaword	.LVL46
	.uaword	0x1861
	.uleb128 0x1b
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x39
	.uleb128 0x1b
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x3b
	.uleb128 0x1b
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x33
	.byte	0
	.byte	0
	.uleb128 0x25
	.uaword	0x12aa
	.uaword	.LFB101
	.uaword	.LFE101
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1790
	.uleb128 0x19
	.uaword	0x12ce
	.uaword	.LLST15
	.uleb128 0x1e
	.uaword	.LBB24
	.uaword	.LBE24
	.uaword	0x1769
	.uleb128 0x19
	.uaword	0x12ce
	.uaword	.LLST16
	.uleb128 0x1d
	.uaword	.LVL53
	.byte	0x1
	.uaword	0x1861
	.uleb128 0x1b
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x31
	.uleb128 0x1b
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x3d
	.uleb128 0x1b
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x33
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uaword	.LVL49
	.byte	0x1
	.uleb128 0x1d
	.uaword	.LVL51
	.byte	0x1
	.uaword	0x1861
	.uleb128 0x1b
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x32
	.uleb128 0x1b
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x3d
	.uleb128 0x1b
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x33
	.byte	0
	.byte	0
	.uleb128 0x26
	.string	"PduR_Base"
	.byte	0x7
	.byte	0x7b
	.uaword	0x17a3
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.byte	0x4
	.uaword	0x17a9
	.uleb128 0xa
	.uaword	0x1290
	.uleb128 0x27
	.string	"PduR_State"
	.byte	0x7
	.uahalf	0x140
	.uaword	0x38b
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.uaword	0x3f0
	.uaword	0x17ce
	.uleb128 0x28
	.byte	0
	.uleb128 0x27
	.string	"PduR_upIfRxIndicationTable"
	.byte	0x7
	.uahalf	0x28a
	.uaword	0x17f3
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.uaword	0x17c3
	.uleb128 0x12
	.uaword	0x458
	.uaword	0x1803
	.uleb128 0x28
	.byte	0
	.uleb128 0x27
	.string	"PduR_upIfTxConfirmationTable"
	.byte	0x7
	.uahalf	0x28f
	.uaword	0x182a
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.uaword	0x17f8
	.uleb128 0x12
	.uaword	0x4cd
	.uaword	0x183a
	.uleb128 0x28
	.byte	0
	.uleb128 0x27
	.string	"PduR_upIfTriggerTxTable"
	.byte	0x7
	.uahalf	0x2ae
	.uaword	0x185c
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.uaword	0x182f
	.uleb128 0x29
	.byte	0x1
	.string	"Det_ReportError"
	.byte	0x8
	.byte	0x70
	.byte	0x1
	.uaword	0x289
	.byte	0x1
	.uleb128 0xc
	.uaword	0x1e0
	.uleb128 0xc
	.uaword	0x1b5
	.uleb128 0xc
	.uaword	0x1b5
	.uleb128 0xc
	.uaword	0x1b5
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x14
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
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
	.uleb128 0xb
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x21
	.byte	0
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
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL3
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
	.uaword	.LVL6
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL7
	.uaword	.LFE96
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL2-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL2-1
	.uaword	.LVL2
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL2
	.uaword	.LVL4-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL4-1
	.uaword	.LVL4
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LVL6-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL6-1
	.uaword	.LVL6
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL8-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL8-1
	.uaword	.LFE96
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL10
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
	.uaword	.LVL13
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL14
	.uaword	.LFE97
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL17
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
	.uaword	.LFE98
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL16
	.uaword	.LVL18-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL18-1
	.uaword	.LVL18
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LVL20-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL20-1
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
	.uaword	.LFE98
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL27
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL28
	.uaword	.LVL29
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL29
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL30
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
	.uaword	.LVL33
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL33
	.uaword	.LVL34
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL34
	.uaword	.LFE99
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL27
	.uaword	.LVL29-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL29-1
	.uaword	.LVL29
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL29
	.uaword	.LVL31-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL31-1
	.uaword	.LVL31
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL31
	.uaword	.LVL33-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL33-1
	.uaword	.LVL33
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL33
	.uaword	.LVL35-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL35-1
	.uaword	.LFE99
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL36
	.uaword	.LVL37
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL37
	.uaword	.LVL38
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL38
	.uaword	.LVL39
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL39
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
	.uaword	.LVL44
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL44
	.uaword	.LVL45
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL45
	.uaword	.LFE100
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL36
	.uaword	.LVL38-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL38-1
	.uaword	.LVL38
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL38
	.uaword	.LVL40-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL40-1
	.uaword	.LVL41
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL41
	.uaword	.LVL43-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL43-1
	.uaword	.LVL44
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL44
	.uaword	.LVL46-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL46-1
	.uaword	.LFE100
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL47
	.uaword	.LVL48
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL48
	.uaword	.LVL49
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL49
	.uaword	.LVL50
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL50
	.uaword	.LVL51
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL51
	.uaword	.LVL52
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL52
	.uaword	.LFE101
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL51
	.uaword	.LVL52
	.uahalf	0x1
	.byte	0x54
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
	.uaword	.LFB96
	.uaword	.LFE96-.LFB96
	.uaword	.LFB97
	.uaword	.LFE97-.LFB97
	.uaword	.LFB98
	.uaword	.LFE98-.LFB98
	.uaword	.LFB99
	.uaword	.LFE99-.LFB99
	.uaword	.LFB100
	.uaword	.LFE100-.LFB100
	.uaword	.LFB101
	.uaword	.LFE101-.LFB101
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB16
	.uaword	.LBE16
	.uaword	.LBB20
	.uaword	.LBE20
	.uaword	.LBB21
	.uaword	.LBE21
	.uaword	0
	.uaword	0
	.uaword	.LFB96
	.uaword	.LFE96
	.uaword	.LFB97
	.uaword	.LFE97
	.uaword	.LFB98
	.uaword	.LFE98
	.uaword	.LFB99
	.uaword	.LFE99
	.uaword	.LFB100
	.uaword	.LFE100
	.uaword	.LFB101
	.uaword	.LFE101
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF9:
	.string	"LoIfRxToUp_NrEntries"
.LASF7:
	.string	"LoIfTxToUpMapTable"
.LASF4:
	.string	"transmitID"
.LASF6:
	.string	"LoIfTxToUp"
.LASF0:
	.string	"loTransmitID"
.LASF8:
	.string	"LoIfRxToUpMapTable"
.LASF1:
	.string	"upId"
.LASF10:
	.string	"LoIfTxToUp_NrEntries"
.LASF3:
	.string	"upTxConfirmationID"
.LASF5:
	.string	"LoIfRxToUp"
.LASF2:
	.string	"upRxIndicationID"
	.extern	PduR_upIfTriggerTxTable,STT_OBJECT,-1
	.extern	PduR_upIfTxConfirmationTable,STT_OBJECT,-1
	.extern	Det_ReportError,STT_FUNC,0
	.extern	PduR_upIfRxIndicationTable,STT_OBJECT,-1
	.extern	PduR_Base,STT_OBJECT,4
	.extern	PduR_State,STT_OBJECT,1
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
