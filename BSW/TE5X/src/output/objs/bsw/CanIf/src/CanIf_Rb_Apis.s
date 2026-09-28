	.file	"CanIf_Rb_Apis.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.CanIf_ControllerErrorPassive,"ax",@progbits
	.align 1
	.global	CanIf_ControllerErrorPassive
	.type	CanIf_ControllerErrorPassive, @function
CanIf_ControllerErrorPassive:
.LFB86:
	.file 1 "bsw\\CanIf\\src\\CanIf_Rb_Apis.c"
	.loc 1 199 0
.LVL0:
	ret
.LFE86:
	.size	CanIf_ControllerErrorPassive, .-CanIf_ControllerErrorPassive
.section .text.CanIf_ResetDynamicTxId,"ax",@progbits
	.align 1
	.global	CanIf_ResetDynamicTxId
	.type	CanIf_ResetDynamicTxId, @function
CanIf_ResetDynamicTxId:
.LFB87:
	.loc 1 250 0
.LVL1:
	.loc 1 260 0
	movh.a	%a15, hi:CanIf_Prv_InitStatus_b
	ld.bu	%d2, [%a15] lo:CanIf_Prv_InitStatus_b
	.loc 1 250 0
	mov	%d15, %d4
	.loc 1 260 0
	jz	%d2, .L10
	.loc 1 263 0
	lt.u	%d2, %d15, 152
	jz	%d2, .L11
.LVL2:
.L4:
	.loc 1 267 0
	movh.a	%a12, hi:CanIf_Prv_ConfigSet_tpst
	ld.a	%a2, [%a12] lo:CanIf_Prv_ConfigSet_tpst
	ld.a	%a15, [%a2] 52
	.loc 1 270 0
	mov.u	%d2, 65535
	.loc 1 267 0
	addsc.a	%a15, %a15, %d15, 1
	ld.hu	%d15, [%a15]0
.LVL3:
	.loc 1 270 0
	jeq	%d15, %d2, .L12
.LVL4:
.L5:
	.loc 1 273 0
	ld.w	%d2, [%a2] 32
	.loc 1 276 0
	mov.u	%d8, 65535
	.loc 1 273 0
	madd	%d3, %d2, %d15, 24
	mov.a	%a15, %d3
.LVL5:
	.loc 1 276 0
	ld.hu	%d15, [%a15] 8
.LVL6:
	jeq	%d15, %d8, .L13
.LVL7:
.L6:
	.loc 1 292 0
	movh.a	%a2, hi:CanIf_DynTxPduCanId_au32
	lea	%a2, [%a2] lo:CanIf_DynTxPduCanId_au32
	.loc 1 287 0
	ld.w	%d2, [%a15] 16
.LVL8:
	.loc 1 292 0
	addsc.a	%a2, %a2, %d15, 2
	.loc 1 289 0
	ld.bu	%d15, [%a15] 10
	insert	%d15, %d2, %d15, 30, 32-30
	.loc 1 292 0
	st.w	[%a2]0, %d15
.LVL9:
	ret
.LVL10:
.L10:
	.loc 1 260 0 discriminator 1
	mov	%e4, 60
.LVL11:
	mov	%d6, 35
	mov	%d7, 30
	call	Det_ReportError
.LVL12:
	.loc 1 263 0 discriminator 1
	lt.u	%d2, %d15, 152
	jnz	%d2, .L4
.L11:
	mov	%e4, 60
	mov	%d6, 35
	mov	%d7, 13
	call	Det_ReportError
.LVL13:
	j	.L4
.LVL14:
.L13:
	.loc 1 276 0 discriminator 1
	mov	%e4, 60
	mov	%d6, 35
	mov	%d7, 13
	call	Det_ReportError
.LVL15:
	.loc 1 282 0 discriminator 1
	ld.hu	%d15, [%a15] 8
	jne	%d15, %d8, .L6
	ret
.LVL16:
.L12:
	.loc 1 270 0 discriminator 1
	mov	%e4, 60
	mov	%d6, 35
	mov	%d7, 13
	call	Det_ReportError
.LVL17:
	ld.a	%a2, [%a12] lo:CanIf_Prv_ConfigSet_tpst
	j	.L5
.LFE87:
	.size	CanIf_ResetDynamicTxId, .-CanIf_ResetDynamicTxId
.section .text.CanIf_Rb_ReadTxPduCanId,"ax",@progbits
	.align 1
	.global	CanIf_Rb_ReadTxPduCanId
	.type	CanIf_Rb_ReadTxPduCanId, @function
CanIf_Rb_ReadTxPduCanId:
.LFB88:
	.loc 1 318 0
.LVL18:
	.loc 1 332 0
	movh.a	%a15, hi:CanIf_Prv_InitStatus_b
	ld.bu	%d15, [%a15] lo:CanIf_Prv_InitStatus_b
	jz	%d15, .L24
	.loc 1 335 0
	lt.u	%d15, %d4, 152
	jz	%d15, .L18
	.loc 1 338 0
	movh.a	%a15, hi:CanIf_Prv_ConfigSet_tpst
	ld.a	%a2, [%a15] lo:CanIf_Prv_ConfigSet_tpst
	ld.a	%a15, [%a2] 52
	.loc 1 341 0
	mov.u	%d2, 65535
	.loc 1 338 0
	addsc.a	%a15, %a15, %d4, 1
	ld.hu	%d15, [%a15]0
.LVL19:
	.loc 1 341 0
	jeq	%d15, %d2, .L18
	.loc 1 345 0
	ld.w	%d3, [%a2] 32
	madd	%d4, %d3, %d15, 24
.LVL20:
	mov.a	%a15, %d4
.LVL21:
	.loc 1 348 0
	ld.hu	%d15, [%a15] 8
.LVL22:
	jeq	%d15, %d2, .L19
.LVL23:
	.loc 1 354 0
	movh.a	%a15, hi:CanIf_DynTxPduCanId_au32
	lea	%a15, [%a15] lo:CanIf_DynTxPduCanId_au32
	addsc.a	%a15, %a15, %d15, 2
	ld.w	%d15, [%a15]0
.LVL24:
.L20:
	.loc 1 379 0
	st.w	[%a4]0, %d15
	mov	%d2, 0
.LVL25:
.L22:
	.loc 1 383 0
	ret
.LVL26:
.L18:
	.loc 1 335 0 discriminator 1
	mov	%e4, 60
.LVL27:
	mov	%d6, 48
	mov	%d7, 50
	call	Det_ReportError
.LVL28:
	mov	%d2, 1
	ret
.LVL29:
.L24:
	.loc 1 332 0 discriminator 1
	mov	%e4, 60
.LVL30:
	mov	%d6, 48
	mov	%d7, 30
	call	Det_ReportError
.LVL31:
	mov	%d2, 1
	ret
.LVL32:
.L19:
	.loc 1 362 0
	ld.w	%d15, [%a15] 16
	mov	%d2, 1
	jeq	%d15, -1, .L22
.LVL33:
	.loc 1 373 0
	ld.bu	%d2, [%a15] 10
	insert	%d15, %d15, %d2, 30, 32-30
.LVL34:
	j	.L20
.LFE88:
	.size	CanIf_Rb_ReadTxPduCanId, .-CanIf_Rb_ReadTxPduCanId
.section .text.CanIf_Rb_ReadRxPduCanId,"ax",@progbits
	.align 1
	.global	CanIf_Rb_ReadRxPduCanId
	.type	CanIf_Rb_ReadRxPduCanId, @function
CanIf_Rb_ReadRxPduCanId:
.LFB89:
	.loc 1 406 0
.LVL35:
	.loc 1 426 0
	movh.a	%a15, hi:CanIf_Prv_InitStatus_b
	ld.bu	%d15, [%a15] lo:CanIf_Prv_InitStatus_b
	jz	%d15, .L33
	.loc 1 429 0
	movh.a	%a15, hi:CanIf_Prv_ConfigSet_tpst
	ld.a	%a15, [%a15] lo:CanIf_Prv_ConfigSet_tpst
	ld.hu	%d15, [%a15] 8
	jge.u	%d4, %d15, .L29
	.loc 1 432 0
	ld.a	%a2, [%a15] 20
	mov.u	%d2, 65535
	addsc.a	%a2, %a2, %d4, 1
	ld.hu	%d15, [%a2]0
	jeq	%d15, %d2, .L29
	.loc 1 436 0
	ld.w	%d2, [%a15] 4
	madd	%d3, %d2, %d15, 20
	.loc 1 443 0
	ld.w	%d2, [%a15]0
	.loc 1 436 0
	mov.a	%a2, %d3
.LVL36:
	.loc 1 440 0
	ld.hu	%d15, [%a2] 16
	.loc 1 443 0
	madd	%d3, %d2, %d15, 12
.LVL37:
	mov.a	%a15, %d3
	ld.bu	%d15, [%a15]0
	jeq	%d15, 1, .L29
	.loc 1 472 0
	ld.w	%d15, [%a2] 12
	.loc 1 476 0
	mov	%d2, 0
.LVL38:
	.loc 1 472 0
	st.w	[%a4]0, %d15
.LVL39:
	.loc 1 477 0
	ret
.LVL40:
.L29:
	.loc 1 429 0 discriminator 1
	mov	%e4, 60
.LVL41:
	mov	%d6, 47
	mov	%d7, %d4
	call	Det_ReportError
.LVL42:
	mov	%d2, 1
	ret
.LVL43:
.L33:
	.loc 1 426 0 discriminator 1
	mov	%e4, 60
.LVL44:
	mov	%d6, 49
	mov	%d7, 30
	call	Det_ReportError
.LVL45:
	mov	%d2, 1
	ret
.LFE89:
	.size	CanIf_Rb_ReadRxPduCanId, .-CanIf_Rb_ReadRxPduCanId
.section .text.CanIf_ReturnTxPduId,"ax",@progbits
	.align 1
	.global	CanIf_ReturnTxPduId
	.type	CanIf_ReturnTxPduId, @function
CanIf_ReturnTxPduId:
.LFB90:
	.loc 1 502 0
.LVL46:
	.loc 1 510 0
	movh.a	%a15, hi:CanIf_Prv_InitStatus_b
	ld.bu	%d15, [%a15] lo:CanIf_Prv_InitStatus_b
	jz	%d15, .L43
	.loc 1 513 0
	jz.a	%a4, .L44
	.loc 1 516 0
	movh.a	%a15, hi:CanIf_Prv_ConfigSet_tpst
	ld.a	%a15, [%a15] lo:CanIf_Prv_ConfigSet_tpst
	.loc 1 505 0
	mov	%d2, 1
	.loc 1 516 0
	ld.w	%d3, [%a15] 44
.LVL47:
	.loc 1 517 0
	ld.w	%d5, [%a15] 32
.LVL48:
	.loc 1 520 0
	jz	%d3, .L36
	mov	%d2, 0
	mov	%d15, 0
	j	.L39
.LVL49:
.L38:
	add	%d2, 1
.LVL50:
	.loc 1 520 0 is_stmt 0 discriminator 2
	extr.u	%d15, %d2, 0, 16
	jge.u	%d15, %d3, .L45
.LVL51:
.L39:
	.loc 1 522 0 is_stmt 1
	madd	%d6, %d5, %d15, 24
	mov.a	%a15, %d6
	ld.hu	%d15, [%a15] 6
	jne	%d15, %d4, .L38
	.loc 1 522 0 is_stmt 0 discriminator 1
	ld.bu	%d15, [%a15] 11
	ne	%d15, %d15, 9
	jnz	%d15, .L38
	.loc 1 525 0 is_stmt 1
	ld.hu	%d15, [%a15] 4
	.loc 1 526 0
	mov	%d2, 0
.LVL52:
	.loc 1 525 0
	st.h	[%a4]0, %d15
.LVL53:
	.loc 1 527 0
	ret
.LVL54:
.L45:
	.loc 1 505 0
	mov	%d2, 1
.LVL55:
.L36:
	.loc 1 532 0
	ret
.LVL56:
.L43:
	.loc 1 510 0 discriminator 1
	mov	%e4, 60
.LVL57:
	mov	%d6, 28
	mov	%d7, 30
	call	Det_ReportError
.LVL58:
	mov	%d2, 1
	ret
.LVL59:
.L44:
	.loc 1 513 0 discriminator 1
	mov	%e4, 60
.LVL60:
	mov	%d6, 28
	mov	%d7, 20
	call	Det_ReportError
.LVL61:
	mov	%d2, 1
	ret
.LFE90:
	.size	CanIf_ReturnTxPduId, .-CanIf_ReturnTxPduId
.section .text.CanIf_ReturnRxPduId,"ax",@progbits
	.align 1
	.global	CanIf_ReturnRxPduId
	.type	CanIf_ReturnRxPduId, @function
CanIf_ReturnRxPduId:
.LFB91:
	.loc 1 557 0
.LVL62:
	.loc 1 567 0
	movh.a	%a15, hi:CanIf_Prv_InitStatus_b
	ld.bu	%d15, [%a15] lo:CanIf_Prv_InitStatus_b
	jz	%d15, .L55
	.loc 1 570 0
	jz.a	%a4, .L56
	.loc 1 572 0
	movh.a	%a15, hi:CanIf_Prv_ConfigSet_tpst
	ld.a	%a2, [%a15] lo:CanIf_Prv_ConfigSet_tpst
	ld.a	%a15, [%a2] 4
.LVL63:
	.loc 1 561 0
	mov	%d2, 1
	.loc 1 575 0
	ld.hu	%d5, [%a2] 8
	jz	%d5, .L48
	mov	%d2, 0
	mov	%d15, 0
	j	.L51
.LVL64:
.L50:
	add	%d2, 1
.LVL65:
	.loc 1 575 0 is_stmt 0 discriminator 2
	extr.u	%d15, %d2, 0, 16
	lea	%a15, [%a15] 20
	jge.u	%d15, %d5, .L57
.LVL66:
.L51:
	.loc 1 577 0 is_stmt 1
	ld.hu	%d3, [%a15] 18
	jne	%d3, %d4, .L50
	.loc 1 578 0 discriminator 1
	ld.hu	%d3, [%a2] 12
	.loc 1 577 0 discriminator 1
	ld.w	%d6, [%a15] 4
	.loc 1 578 0 discriminator 1
	add	%d3, 7
	.loc 1 577 0 discriminator 1
	jge.u	%d3, %d6, .L50
	.loc 1 581 0
	st.h	[%a4]0, %d15
.LVL67:
	.loc 1 582 0
	mov	%d2, 0
	.loc 1 583 0
	ret
.LVL68:
.L57:
	.loc 1 561 0
	mov	%d2, 1
.LVL69:
.L48:
	.loc 1 587 0
	ret
.LVL70:
.L55:
	.loc 1 567 0 discriminator 1
	mov	%e4, 60
.LVL71:
	mov	%d6, 45
	mov	%d7, 30
	call	Det_ReportError
.LVL72:
	mov	%d2, 1
	ret
.LVL73:
.L56:
	.loc 1 570 0 discriminator 1
	mov	%e4, 60
.LVL74:
	mov	%d6, 45
	mov	%d7, 20
	call	Det_ReportError
.LVL75:
	mov	%d2, 1
	ret
.LFE91:
	.size	CanIf_ReturnRxPduId, .-CanIf_ReturnRxPduId
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
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB91
	.uaword	.LFE91-.LFB91
	.align 2
.LEFDE10:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 4 ".\\output\\inc/..\\..\\bsw\\ComStack\\ComStack_Cfg.h"
	.file 5 ".\\output\\inc/..\\..\\bsw\\CanIf\\integration\\Can_GeneralTypes.h"
	.file 6 ".\\output\\inc/..\\..\\bsw\\CanIf\\CanIf_Cfg.h"
	.file 7 ".\\output\\inc/..\\..\\bsw\\CanIf\\api\\CanIf.h"
	.file 8 "bsw\\CanIf\\src\\CanIf_Prv.h"
	.file 9 ".\\output\\inc/..\\..\\bsw\\Det\\api\\Det.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x259f
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\CanIf\\src\\CanIf_Rb_Apis.c"
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
	.uaword	0x1c8
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
	.uaword	0x1f4
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
	.byte	0x2
	.byte	0x6a
	.uaword	0x230
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
	.uaword	0x1c8
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x3
	.string	"uint8_least"
	.byte	0x2
	.byte	0x8a
	.uaword	0x29b
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x3
	.string	"uint16_least"
	.byte	0x2
	.byte	0x94
	.uaword	0x29b
	.uleb128 0x3
	.string	"Std_ReturnType"
	.byte	0x3
	.byte	0x60
	.uaword	0x1bb
	.uleb128 0x3
	.string	"PduIdType"
	.byte	0x4
	.byte	0x2c
	.uaword	0x1e6
	.uleb128 0x3
	.string	"PduLengthType"
	.byte	0x4
	.byte	0x30
	.uaword	0x1e6
	.uleb128 0x4
	.byte	0xc
	.byte	0x4
	.byte	0x39
	.uaword	0x342
	.uleb128 0x5
	.string	"SduDataPtr"
	.byte	0x4
	.byte	0x3b
	.uaword	0x342
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"MetaDataPtr"
	.byte	0x4
	.byte	0x3c
	.uaword	0x342
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.uaword	.LASF0
	.byte	0x4
	.byte	0x3d
	.uaword	0x2eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.uaword	0x1bb
	.uleb128 0x3
	.string	"PduInfoType"
	.byte	0x4
	.byte	0x3e
	.uaword	0x300
	.uleb128 0x3
	.string	"Can_IdType"
	.byte	0x5
	.byte	0x15
	.uaword	0x222
	.uleb128 0x3
	.string	"Can_HwHandleType"
	.byte	0x5
	.byte	0x1e
	.uaword	0x1e6
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x7
	.byte	0x4
	.uaword	0x397
	.uleb128 0x8
	.uaword	0x1bb
	.uleb128 0x7
	.byte	0x4
	.uaword	0x3a2
	.uleb128 0x8
	.uaword	0x1e6
	.uleb128 0x7
	.byte	0x4
	.uaword	0x222
	.uleb128 0x9
	.byte	0x8
	.byte	0x6
	.uahalf	0x39a
	.uaword	0x405
	.uleb128 0xa
	.string	"CanId"
	.byte	0x6
	.uahalf	0x39c
	.uaword	0x35b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"swPduHandle"
	.byte	0x6
	.uahalf	0x39d
	.uaword	0x2da
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0x6
	.uahalf	0x39e
	.uaword	0x1bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xa
	.string	"BufferIndex"
	.byte	0x6
	.uahalf	0x39f
	.uaword	0x1bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.byte	0
	.uleb128 0xc
	.string	"CanIf_Cfg_CanIdBuffer_tst"
	.byte	0x6
	.uahalf	0x3a1
	.uaword	0x3ad
	.uleb128 0xd
	.byte	0x1
	.byte	0x6
	.uahalf	0x3a4
	.uaword	0x473
	.uleb128 0xe
	.string	"STANDARD_CAN"
	.sleb128 0
	.uleb128 0xe
	.string	"STANDARD_FD_CAN"
	.sleb128 1
	.uleb128 0xe
	.string	"EXTENDED_CAN"
	.sleb128 2
	.uleb128 0xe
	.string	"EXTENDED_FD_CAN"
	.sleb128 3
	.byte	0
	.uleb128 0xc
	.string	"CanIf_Cfg_TxPduCanIdType_ten"
	.byte	0x6
	.uahalf	0x3a9
	.uaword	0x427
	.uleb128 0xd
	.byte	0x1
	.byte	0x6
	.uahalf	0x3ad
	.uaword	0x1682
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_00_Tx_A_e"
	.sleb128 0
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_00_Tx_B_e"
	.sleb128 1
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_00_Tx_C_e"
	.sleb128 2
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_00_Tx_D_e"
	.sleb128 3
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_00_Tx_E_e"
	.sleb128 4
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_00_Tx_F_e"
	.sleb128 5
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_00_Tx_G_e"
	.sleb128 6
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_00_Tx_H_e"
	.sleb128 7
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_01_e"
	.sleb128 8
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_02_e"
	.sleb128 9
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_03_e"
	.sleb128 10
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_04_e"
	.sleb128 11
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_05_e"
	.sleb128 12
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_06_e"
	.sleb128 13
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_07_e"
	.sleb128 14
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_08_e"
	.sleb128 15
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_09_e"
	.sleb128 16
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_10_e"
	.sleb128 17
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_11_e"
	.sleb128 18
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_12_e"
	.sleb128 19
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_13_e"
	.sleb128 20
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_14_e"
	.sleb128 21
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_15_e"
	.sleb128 22
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_16_e"
	.sleb128 23
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_17_e"
	.sleb128 24
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_18_e"
	.sleb128 25
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_19_e"
	.sleb128 26
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_20_e"
	.sleb128 27
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_21_e"
	.sleb128 28
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_22_e"
	.sleb128 29
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_23_e"
	.sleb128 30
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_24_e"
	.sleb128 31
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_25_e"
	.sleb128 32
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_26_e"
	.sleb128 33
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_A_e"
	.sleb128 34
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_B_e"
	.sleb128 35
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_01_Tx_Basic_e"
	.sleb128 36
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_01_e"
	.sleb128 37
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_02_e"
	.sleb128 38
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_03_e"
	.sleb128 39
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_04_e"
	.sleb128 40
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_05_e"
	.sleb128 41
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_06_e"
	.sleb128 42
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_07_e"
	.sleb128 43
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_08_e"
	.sleb128 44
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_09_e"
	.sleb128 45
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_10_e"
	.sleb128 46
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_11_e"
	.sleb128 47
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_12_e"
	.sleb128 48
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_13_e"
	.sleb128 49
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_14_e"
	.sleb128 50
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_15_e"
	.sleb128 51
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_16_e"
	.sleb128 52
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_17_e"
	.sleb128 53
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_18_e"
	.sleb128 54
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_19_e"
	.sleb128 55
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_20_e"
	.sleb128 56
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_21_e"
	.sleb128 57
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_22_e"
	.sleb128 58
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_23_e"
	.sleb128 59
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_24_e"
	.sleb128 60
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_25_e"
	.sleb128 61
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_26_e"
	.sleb128 62
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_02_Tx_Basic_e"
	.sleb128 63
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_01_e"
	.sleb128 64
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_02_e"
	.sleb128 65
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_03_e"
	.sleb128 66
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_04_e"
	.sleb128 67
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_05_e"
	.sleb128 68
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_06_e"
	.sleb128 69
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_07_e"
	.sleb128 70
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_08_e"
	.sleb128 71
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_09_e"
	.sleb128 72
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_10_e"
	.sleb128 73
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_11_e"
	.sleb128 74
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_12_e"
	.sleb128 75
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_13_e"
	.sleb128 76
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_14_e"
	.sleb128 77
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_15_e"
	.sleb128 78
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_16_e"
	.sleb128 79
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_17_e"
	.sleb128 80
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_18_e"
	.sleb128 81
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_19_e"
	.sleb128 82
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_20_e"
	.sleb128 83
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_21_e"
	.sleb128 84
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_22_e"
	.sleb128 85
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_23_e"
	.sleb128 86
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_24_e"
	.sleb128 87
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_25_e"
	.sleb128 88
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_26_e"
	.sleb128 89
	.uleb128 0xe
	.string	"CanIf_Buffer_CanIf_Buffer_CanNodeNum_03_Tx_Basic_e"
	.sleb128 90
	.byte	0
	.uleb128 0xc
	.string	"CanIf_BufferIdx"
	.byte	0x6
	.uahalf	0x464
	.uaword	0x498
	.uleb128 0xd
	.byte	0x1
	.byte	0x6
	.uahalf	0x469
	.uaword	0x170d
	.uleb128 0xe
	.string	"CANIF_NO_UL"
	.sleb128 0
	.uleb128 0xe
	.string	"CAN_NM"
	.sleb128 1
	.uleb128 0xe
	.string	"CAN_TP"
	.sleb128 2
	.uleb128 0xe
	.string	"CAN_TSYN"
	.sleb128 3
	.uleb128 0xe
	.string	"J1939NM"
	.sleb128 4
	.uleb128 0xe
	.string	"J1939TP"
	.sleb128 5
	.uleb128 0xe
	.string	"PDUR"
	.sleb128 6
	.uleb128 0xe
	.string	"XCP"
	.sleb128 7
	.uleb128 0xe
	.string	"CDD"
	.sleb128 8
	.uleb128 0xe
	.string	"USER"
	.sleb128 9
	.uleb128 0xe
	.string	"MAX_USER_TYPE"
	.sleb128 10
	.byte	0
	.uleb128 0xc
	.string	"CanIf_Cfg_UserType_ten"
	.byte	0x6
	.uahalf	0x476
	.uaword	0x169a
	.uleb128 0xd
	.byte	0x1
	.byte	0x6
	.uahalf	0x47a
	.uaword	0x1751
	.uleb128 0xe
	.string	"CANIF_BASIC"
	.sleb128 0
	.uleb128 0xe
	.string	"CANIF_FULL"
	.sleb128 1
	.byte	0
	.uleb128 0xc
	.string	"CanIf_Cfg_CanHandleType_ten"
	.byte	0x6
	.uahalf	0x47e
	.uaword	0x172c
	.uleb128 0xd
	.byte	0x1
	.byte	0x6
	.uahalf	0x484
	.uaword	0x17c5
	.uleb128 0xe
	.string	"CANIF_PRV_FULL_E"
	.sleb128 0
	.uleb128 0xe
	.string	"CANIF_PRV_BASIC_RANGE_E"
	.sleb128 1
	.uleb128 0xe
	.string	"CANIF_PRV_BASIC_LIST_E"
	.sleb128 2
	.byte	0
	.uleb128 0xc
	.string	"CanIf_Prv_HrhType_ten"
	.byte	0x6
	.uahalf	0x48a
	.uaword	0x1775
	.uleb128 0x9
	.byte	0xc
	.byte	0x6
	.uahalf	0x4cb
	.uaword	0x185f
	.uleb128 0xa
	.string	"HrhInfo_e"
	.byte	0x6
	.uahalf	0x4d1
	.uaword	0x17c5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.uaword	.LASF1
	.byte	0x6
	.uahalf	0x4d7
	.uaword	0x2da
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.string	"NumRxPdus_u32"
	.byte	0x6
	.uahalf	0x4da
	.uaword	0x222
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.string	"HrhRangeMask_b"
	.byte	0x6
	.uahalf	0x4dd
	.uaword	0x26d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.string	"ControllerId_u8"
	.byte	0x6
	.uahalf	0x4e8
	.uaword	0x1bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.byte	0
	.uleb128 0xc
	.string	"CanIf_Cfg_Hrhtype_tst"
	.byte	0x6
	.uahalf	0x4f6
	.uaword	0x17e3
	.uleb128 0x9
	.byte	0x14
	.byte	0x6
	.uahalf	0x4fa
	.uaword	0x1939
	.uleb128 0xa
	.string	"RxPduReadNotifyReadDataStatus_u8"
	.byte	0x6
	.uahalf	0x503
	.uaword	0x1bb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"IndexForUL_u8"
	.byte	0x6
	.uahalf	0x521
	.uaword	0x288
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.string	"CanIdtype_u8"
	.byte	0x6
	.uahalf	0x530
	.uaword	0x1bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.string	"RxPduDlc_u8"
	.byte	0x6
	.uahalf	0x533
	.uaword	0x1bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xb
	.uaword	.LASF2
	.byte	0x6
	.uahalf	0x544
	.uaword	0x35b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.string	"Hrhref_t"
	.byte	0x6
	.uahalf	0x54e
	.uaword	0x2da
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.string	"RxPduTargetId_t"
	.byte	0x6
	.uahalf	0x551
	.uaword	0x2da
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0
	.uleb128 0xc
	.string	"CanIf_Cfg_RxPduType_tst"
	.byte	0x6
	.uahalf	0x55a
	.uaword	0x187d
	.uleb128 0x9
	.byte	0x4
	.byte	0x6
	.uahalf	0x55e
	.uaword	0x1987
	.uleb128 0xa
	.string	"CanIfRxPduIndicationName"
	.byte	0x6
	.uahalf	0x560
	.uaword	0x19a3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.uaword	0x1998
	.uleb128 0x10
	.uaword	0x2da
	.uleb128 0x10
	.uaword	0x1998
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.uaword	0x199e
	.uleb128 0x8
	.uaword	0x348
	.uleb128 0x7
	.byte	0x4
	.uaword	0x1987
	.uleb128 0xc
	.string	"CanIf_RxCbk_Prototype"
	.byte	0x6
	.uahalf	0x561
	.uaword	0x1959
	.uleb128 0x9
	.byte	0xc
	.byte	0x6
	.uahalf	0x56b
	.uaword	0x1a10
	.uleb128 0xa
	.string	"LowerCanId_t"
	.byte	0x6
	.uahalf	0x572
	.uaword	0x35b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"UpperCanId_t"
	.byte	0x6
	.uahalf	0x573
	.uaword	0x35b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.uaword	.LASF1
	.byte	0x6
	.uahalf	0x575
	.uaword	0x2da
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0xc
	.string	"CanIf_RxPduRangeConfigType_tst"
	.byte	0x6
	.uahalf	0x577
	.uaword	0x19c7
	.uleb128 0xf
	.byte	0x1
	.uaword	0x1a43
	.uleb128 0x10
	.uaword	0x2da
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.uaword	0x1a37
	.uleb128 0x9
	.byte	0x14
	.byte	0x6
	.uahalf	0x5ae
	.uaword	0x1b00
	.uleb128 0xa
	.string	"BufferIdPtr"
	.byte	0x6
	.uahalf	0x5b1
	.uaword	0x3a7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"TotalBufferCount"
	.byte	0x6
	.uahalf	0x5b2
	.uaword	0x222
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.string	"TxPduIdPtr"
	.byte	0x6
	.uahalf	0x5b3
	.uaword	0x3a7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.string	"TotalTxPduCount"
	.byte	0x6
	.uahalf	0x5b4
	.uaword	0x222
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.string	"CtrlId"
	.byte	0x6
	.uahalf	0x5b6
	.uaword	0x1bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.string	"CtrlCanCtrlRef"
	.byte	0x6
	.uahalf	0x5b7
	.uaword	0x1bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0xa
	.string	"CtrlWakeupSupport"
	.byte	0x6
	.uahalf	0x5b8
	.uaword	0x26d
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0
	.uleb128 0xc
	.string	"CanIf_Cfg_CtrlConfig_tst"
	.byte	0x6
	.uahalf	0x5c1
	.uaword	0x1a49
	.uleb128 0x9
	.byte	0x8
	.byte	0x6
	.uahalf	0x5c4
	.uaword	0x1b6a
	.uleb128 0xb
	.uaword	.LASF3
	.byte	0x6
	.uahalf	0x5c6
	.uaword	0x1b6a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"CanObjectId"
	.byte	0x6
	.uahalf	0x5c7
	.uaword	0x36d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.string	"CanHandleType"
	.byte	0x6
	.uahalf	0x5c9
	.uaword	0x1751
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.uaword	0x1b70
	.uleb128 0x8
	.uaword	0x1b00
	.uleb128 0xc
	.string	"CanIf_Cfg_HthConfig_tst"
	.byte	0x6
	.uahalf	0x5cc
	.uaword	0x1b21
	.uleb128 0x9
	.byte	0x10
	.byte	0x6
	.uahalf	0x5cf
	.uaword	0x1c3c
	.uleb128 0xa
	.string	"CanIf_HthConfigPtr"
	.byte	0x6
	.uahalf	0x5d0
	.uaword	0x1c3c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"DataBuf"
	.byte	0x6
	.uahalf	0x5d3
	.uaword	0x342
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.string	"CanIdBuf"
	.byte	0x6
	.uahalf	0x5d4
	.uaword	0x1c47
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.string	"CanIfBufferId"
	.byte	0x6
	.uahalf	0x5d5
	.uaword	0x1682
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.string	"CanIfBufferSize"
	.byte	0x6
	.uahalf	0x5d6
	.uaword	0x1bb
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xa
	.string	"CanIfBufferMaxDataLength"
	.byte	0x6
	.uahalf	0x5d7
	.uaword	0x1bb
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.uaword	0x1c42
	.uleb128 0x8
	.uaword	0x1b75
	.uleb128 0x7
	.byte	0x4
	.uaword	0x405
	.uleb128 0xc
	.string	"CanIf_Cfg_TxBufferConfig_tst"
	.byte	0x6
	.uahalf	0x5da
	.uaword	0x1b95
	.uleb128 0x9
	.byte	0x18
	.byte	0x6
	.uahalf	0x5dc
	.uaword	0x1d86
	.uleb128 0xb
	.uaword	.LASF4
	.byte	0x6
	.uahalf	0x5dd
	.uaword	0x1d86
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"TxPduId"
	.byte	0x6
	.uahalf	0x5e4
	.uaword	0x2da
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.string	"TxPduTargetPduId"
	.byte	0x6
	.uahalf	0x5e5
	.uaword	0x2da
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xa
	.string	"TxPduType"
	.byte	0x6
	.uahalf	0x5e6
	.uaword	0x2da
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.string	"TxPduCanIdType"
	.byte	0x6
	.uahalf	0x5e7
	.uaword	0x473
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xa
	.string	"TxPduTxUserUL"
	.byte	0x6
	.uahalf	0x5e8
	.uaword	0x170d
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0xa
	.string	"UserTxConfirmation"
	.byte	0x6
	.uahalf	0x5e9
	.uaword	0x1a43
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.uaword	.LASF5
	.byte	0x6
	.uahalf	0x5ea
	.uaword	0x35b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.string	"TxPduReadNotifyStatus"
	.byte	0x6
	.uahalf	0x5f0
	.uaword	0x26d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.string	"TxTruncEnabled_b"
	.byte	0x6
	.uahalf	0x5f9
	.uaword	0x26d
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.uleb128 0xa
	.string	"TxPduLength_u8"
	.byte	0x6
	.uahalf	0x5fb
	.uaword	0x1bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.uaword	0x1d8c
	.uleb128 0x8
	.uaword	0x1c4d
	.uleb128 0xc
	.string	"CanIf_Cfg_TxPduConfig_tst"
	.byte	0x6
	.uahalf	0x5fc
	.uaword	0x1c72
	.uleb128 0x9
	.byte	0x44
	.byte	0x6
	.uahalf	0x623
	.uaword	0x1f83
	.uleb128 0xa
	.string	"HrhConfig_pcst"
	.byte	0x6
	.uahalf	0x628
	.uaword	0x1f83
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"RxPduConfig_pcst"
	.byte	0x6
	.uahalf	0x62b
	.uaword	0x1f8e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.string	"NumCanRxPduId_t"
	.byte	0x6
	.uahalf	0x62e
	.uaword	0x2da
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.string	"NumCanCtrl_u8"
	.byte	0x6
	.uahalf	0x631
	.uaword	0x1bb
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xa
	.string	"NumCddRxPdus_t"
	.byte	0x6
	.uahalf	0x635
	.uaword	0x2da
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.string	"RangeCfg_tpst"
	.byte	0x6
	.uahalf	0x639
	.uaword	0x1f99
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.string	"RxPduIdTable_Ptr"
	.byte	0x6
	.uahalf	0x63f
	.uaword	0x39c
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.string	"HrhPduIdTable_Ptr"
	.byte	0x6
	.uahalf	0x640
	.uaword	0x39c
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.string	"CfgSetIndex_u8"
	.byte	0x6
	.uahalf	0x643
	.uaword	0x1bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.string	"CanIf_TxPduConfigPtr"
	.byte	0x6
	.uahalf	0x645
	.uaword	0x1fa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.uaword	.LASF4
	.byte	0x6
	.uahalf	0x646
	.uaword	0x1d86
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.uaword	.LASF3
	.byte	0x6
	.uahalf	0x648
	.uaword	0x1b6a
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.string	"NumOfTxPdus"
	.byte	0x6
	.uahalf	0x649
	.uaword	0x222
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xa
	.string	"NumOfTxBuffers"
	.byte	0x6
	.uahalf	0x64a
	.uaword	0x222
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xa
	.string	"TxPduIdTable_Ptr"
	.byte	0x6
	.uahalf	0x64b
	.uaword	0x39c
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xa
	.string	"CtrlIdTable_Ptr"
	.byte	0x6
	.uahalf	0x64c
	.uaword	0x391
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xa
	.string	"RxAutosarUL_Ptr"
	.byte	0x6
	.uahalf	0x651
	.uaword	0x1faf
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xa
	.string	"NmtxIdPtr"
	.byte	0x6
	.uahalf	0x654
	.uaword	0x1fba
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.uaword	0x1f89
	.uleb128 0x8
	.uaword	0x185f
	.uleb128 0x7
	.byte	0x4
	.uaword	0x1f94
	.uleb128 0x8
	.uaword	0x1939
	.uleb128 0x7
	.byte	0x4
	.uaword	0x1f9f
	.uleb128 0x8
	.uaword	0x1a10
	.uleb128 0x7
	.byte	0x4
	.uaword	0x1faa
	.uleb128 0x8
	.uaword	0x1d91
	.uleb128 0x7
	.byte	0x4
	.uaword	0x1fb5
	.uleb128 0x8
	.uaword	0x19a9
	.uleb128 0x7
	.byte	0x4
	.uaword	0x1fc0
	.uleb128 0x8
	.uaword	0x35b
	.uleb128 0xc
	.string	"CanIf_ConfigType"
	.byte	0x6
	.uahalf	0x65e
	.uaword	0x1db3
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x11
	.byte	0x1
	.string	"CanIf_ControllerErrorPassive"
	.byte	0x1
	.byte	0xc6
	.byte	0x1
	.uaword	.LFB86
	.uaword	.LFE86
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x202f
	.uleb128 0x12
	.string	"ControllerId"
	.byte	0x1
	.byte	0xc6
	.uaword	0x1bb
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"CanIf_ResetDynamicTxId"
	.byte	0x1
	.byte	0xf9
	.byte	0x1
	.uaword	.LFB87
	.uaword	.LFE87
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x213f
	.uleb128 0x13
	.string	"CanTxPduId"
	.byte	0x1
	.byte	0xf9
	.uaword	0x2da
	.uaword	.LLST0
	.uleb128 0x14
	.uaword	.LASF6
	.byte	0x1
	.byte	0xfc
	.uaword	0x1fa4
	.uaword	.LLST1
	.uleb128 0x14
	.uaword	.LASF7
	.byte	0x1
	.byte	0xfd
	.uaword	0x1e6
	.uaword	.LLST2
	.uleb128 0x15
	.string	"LdCanIdType"
	.byte	0x1
	.byte	0xfe
	.uaword	0x35b
	.uaword	.LLST3
	.uleb128 0x16
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x100
	.uaword	0x3a7
	.uleb128 0x17
	.uaword	.LVL12
	.uaword	0x2573
	.uaword	0x20d6
	.uleb128 0x18
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x4e
	.uleb128 0x18
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x8
	.byte	0x23
	.uleb128 0x18
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x3c
	.byte	0
	.uleb128 0x17
	.uaword	.LVL13
	.uaword	0x2573
	.uaword	0x20fa
	.uleb128 0x18
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x3d
	.uleb128 0x18
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x8
	.byte	0x23
	.uleb128 0x18
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x3c
	.byte	0
	.uleb128 0x17
	.uaword	.LVL15
	.uaword	0x2573
	.uaword	0x211e
	.uleb128 0x18
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x3d
	.uleb128 0x18
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x8
	.byte	0x23
	.uleb128 0x18
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x3c
	.byte	0
	.uleb128 0x19
	.uaword	.LVL17
	.uaword	0x2573
	.uleb128 0x18
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x3d
	.uleb128 0x18
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x8
	.byte	0x23
	.uleb128 0x18
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x3c
	.byte	0
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.string	"CanIf_Rb_ReadTxPduCanId"
	.byte	0x1
	.uahalf	0x13b
	.byte	0x1
	.uaword	0x2c4
	.uaword	.LFB88
	.uaword	.LFE88
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x2236
	.uleb128 0x1b
	.string	"CanIfTxPduId"
	.byte	0x1
	.uahalf	0x13c
	.uaword	0x2da
	.uaword	.LLST4
	.uleb128 0x1c
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x13d
	.uaword	0x3a7
	.uaword	.LLST5
	.uleb128 0x1d
	.string	"RetVal"
	.byte	0x1
	.uahalf	0x140
	.uaword	0x2c4
	.uaword	.LLST6
	.uleb128 0x1e
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x142
	.uaword	0x1fa4
	.uaword	.LLST7
	.uleb128 0x16
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x144
	.uaword	0x3a7
	.uleb128 0x1d
	.string	"lCanId_u32"
	.byte	0x1
	.uahalf	0x146
	.uaword	0x222
	.uaword	.LLST8
	.uleb128 0x1e
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x147
	.uaword	0x1e6
	.uaword	.LLST9
	.uleb128 0x17
	.uaword	.LVL28
	.uaword	0x2573
	.uaword	0x2215
	.uleb128 0x18
	.byte	0x1
	.byte	0x57
	.byte	0x2
	.byte	0x8
	.byte	0x32
	.uleb128 0x18
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x8
	.byte	0x30
	.uleb128 0x18
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x3c
	.byte	0
	.uleb128 0x19
	.uaword	.LVL31
	.uaword	0x2573
	.uleb128 0x18
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x4e
	.uleb128 0x18
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x8
	.byte	0x30
	.uleb128 0x18
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x3c
	.byte	0
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.string	"CanIf_Rb_ReadRxPduCanId"
	.byte	0x1
	.uahalf	0x194
	.byte	0x1
	.uaword	0x2c4
	.uaword	.LFB89
	.uaword	.LFE89
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x230c
	.uleb128 0x1b
	.string	"CanIfRxPduId"
	.byte	0x1
	.uahalf	0x194
	.uaword	0x2da
	.uaword	.LLST10
	.uleb128 0x1c
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x195
	.uaword	0x3a7
	.uaword	.LLST11
	.uleb128 0x1f
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x198
	.uaword	0x2c4
	.byte	0
	.uleb128 0x1e
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x19b
	.uaword	0x1f8e
	.uaword	.LLST12
	.uleb128 0x1d
	.string	"HrhCfg_pcst"
	.byte	0x1
	.uahalf	0x19f
	.uaword	0x1f83
	.uaword	.LLST13
	.uleb128 0x17
	.uaword	.LVL42
	.uaword	0x2573
	.uaword	0x22eb
	.uleb128 0x18
	.byte	0x1
	.byte	0x57
	.byte	0x2
	.byte	0x8
	.byte	0x3c
	.uleb128 0x18
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x8
	.byte	0x2f
	.uleb128 0x18
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x3c
	.byte	0
	.uleb128 0x19
	.uaword	.LVL45
	.uaword	0x2573
	.uleb128 0x18
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x4e
	.uleb128 0x18
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x8
	.byte	0x31
	.uleb128 0x18
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x3c
	.byte	0
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.string	"CanIf_ReturnTxPduId"
	.byte	0x1
	.uahalf	0x1f2
	.byte	0x1
	.uaword	0x2c4
	.uaword	.LFB90
	.uaword	.LFE90
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x2413
	.uleb128 0x1b
	.string	"CanIfTxTargetPduId"
	.byte	0x1
	.uahalf	0x1f3
	.uaword	0x2da
	.uaword	.LLST14
	.uleb128 0x1b
	.string	"CanIfTxPduIdPtr"
	.byte	0x1
	.uahalf	0x1f4
	.uaword	0x2413
	.uaword	.LLST15
	.uleb128 0x1d
	.string	"CanIf_TotalTxPduId"
	.byte	0x1
	.uahalf	0x1f7
	.uaword	0x2b0
	.uaword	.LLST16
	.uleb128 0x1d
	.string	"PduIdx_Temp"
	.byte	0x1
	.uahalf	0x1f8
	.uaword	0x2da
	.uaword	.LLST17
	.uleb128 0x1d
	.string	"Ret_Val"
	.byte	0x1
	.uahalf	0x1f9
	.uaword	0x2c4
	.uaword	.LLST18
	.uleb128 0x1e
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x1fb
	.uaword	0x1fa4
	.uaword	.LLST19
	.uleb128 0x17
	.uaword	.LVL58
	.uaword	0x2573
	.uaword	0x23f3
	.uleb128 0x18
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x4e
	.uleb128 0x18
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x4c
	.uleb128 0x18
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x3c
	.byte	0
	.uleb128 0x19
	.uaword	.LVL61
	.uaword	0x2573
	.uleb128 0x18
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x44
	.uleb128 0x18
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x4c
	.uleb128 0x18
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x3c
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.uaword	0x2da
	.uleb128 0x1a
	.byte	0x1
	.string	"CanIf_ReturnRxPduId"
	.byte	0x1
	.uahalf	0x22b
	.byte	0x1
	.uaword	0x2c4
	.uaword	.LFB91
	.uaword	.LFE91
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x24f7
	.uleb128 0x1b
	.string	"CanIfRxTargetPduId"
	.byte	0x1
	.uahalf	0x22b
	.uaword	0x2da
	.uaword	.LLST20
	.uleb128 0x1b
	.string	"CanIfRxPduIdPtr"
	.byte	0x1
	.uahalf	0x22c
	.uaword	0x2413
	.uaword	.LLST21
	.uleb128 0x1e
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x22e
	.uaword	0x2da
	.uaword	.LLST22
	.uleb128 0x1e
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x231
	.uaword	0x2c4
	.uaword	.LLST23
	.uleb128 0x1e
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x234
	.uaword	0x1f8e
	.uaword	.LLST24
	.uleb128 0x17
	.uaword	.LVL72
	.uaword	0x2573
	.uaword	0x24d6
	.uleb128 0x18
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x4e
	.uleb128 0x18
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x8
	.byte	0x2d
	.uleb128 0x18
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x3c
	.byte	0
	.uleb128 0x19
	.uaword	.LVL75
	.uaword	0x2573
	.uleb128 0x18
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x44
	.uleb128 0x18
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x8
	.byte	0x2d
	.uleb128 0x18
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x3c
	.byte	0
	.byte	0
	.uleb128 0x20
	.string	"CanIf_Prv_ConfigSet_tpst"
	.byte	0x7
	.byte	0x37
	.uaword	0x2519
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.byte	0x4
	.uaword	0x251f
	.uleb128 0x8
	.uaword	0x1fc5
	.uleb128 0x21
	.uaword	0x222
	.uaword	0x252f
	.uleb128 0x22
	.byte	0
	.uleb128 0x23
	.string	"CanIf_DynTxPduCanId_au32"
	.byte	0x8
	.uahalf	0x185
	.uaword	0x2524
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.string	"CanIf_Prv_InitStatus_b"
	.byte	0x8
	.uahalf	0x1c2
	.uaword	0x26d
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.byte	0x1
	.string	"Det_ReportError"
	.byte	0x9
	.byte	0x70
	.byte	0x1
	.uaword	0x2c4
	.byte	0x1
	.uleb128 0x10
	.uaword	0x1e6
	.uleb128 0x10
	.uaword	0x1bb
	.uleb128 0x10
	.uaword	0x1bb
	.uleb128 0x10
	.uaword	0x1bb
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x21
	.byte	0
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL2
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
	.uaword	.LFE87
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL5
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL7
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL14
	.uaword	.LVL15-1
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL15-1
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL4
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL16
	.uaword	.LVL17-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL17-1
	.uaword	.LFE87
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x13
	.byte	0x72
	.sleb128 0
	.byte	0xc
	.uaword	0x3fffffff
	.byte	0x1a
	.byte	0x8f
	.sleb128 10
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x4e
	.byte	0x24
	.byte	0x21
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL18
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL20
	.uaword	.LVL26
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL26
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL27
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
	.uaword	.LFE88
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL18
	.uaword	.LVL28-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL28-1
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
	.uaword	.LVL32
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL32
	.uaword	.LFE88
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL18
	.uaword	.LVL24
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL26
	.uaword	.LVL34
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL34
	.uaword	.LFE88
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL21
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL32
	.uaword	.LFE88
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL18
	.uaword	.LVL24
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL26
	.uaword	.LVL33
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL33
	.uaword	.LVL34
	.uahalf	0x9
	.byte	0x7f
	.sleb128 0
	.byte	0xc
	.uaword	0x3fffffff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL34
	.uaword	.LFE88
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL19
	.uaword	.LVL21
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL35
	.uaword	.LVL41
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL41
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
	.uaword	.LFE89
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL35
	.uaword	.LVL42-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL42-1
	.uaword	.LVL43
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL43
	.uaword	.LVL45-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL45-1
	.uaword	.LFE89
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL36
	.uaword	.LVL37
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL37
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL36
	.uaword	.LVL37
	.uahalf	0xe
	.byte	0x73
	.sleb128 16
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x3c
	.byte	0x1e
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL37
	.uaword	.LVL38
	.uahalf	0xe
	.byte	0x82
	.sleb128 16
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x3c
	.byte	0x1e
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL46
	.uaword	.LVL57
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL57
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
	.uaword	.LFE90
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL46
	.uaword	.LVL58-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL58-1
	.uaword	.LVL59
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL59
	.uaword	.LVL61-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL61-1
	.uaword	.LFE90
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL47
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL48
	.uaword	.LVL49
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL49
	.uaword	.LVL50
	.uahalf	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL50
	.uaword	.LVL51
	.uahalf	0x3
	.byte	0x72
	.sleb128 0
	.byte	0x9f
	.uaword	.LVL51
	.uaword	.LVL52
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL54
	.uaword	.LVL55
	.uahalf	0x3
	.byte	0x72
	.sleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL46
	.uaword	.LVL53
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL53
	.uaword	.LVL54
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL54
	.uaword	.LFE90
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL48
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL62
	.uaword	.LVL71
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL71
	.uaword	.LVL73
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL73
	.uaword	.LVL74
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL74
	.uaword	.LFE91
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL62
	.uaword	.LVL72-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL72-1
	.uaword	.LVL73
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL73
	.uaword	.LVL75-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL75-1
	.uaword	.LFE91
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL63
	.uaword	.LVL64
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL64
	.uaword	.LVL65
	.uahalf	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL65
	.uaword	.LVL66
	.uahalf	0x3
	.byte	0x72
	.sleb128 0
	.byte	0x9f
	.uaword	.LVL68
	.uaword	.LVL69
	.uahalf	0x3
	.byte	0x72
	.sleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL62
	.uaword	.LVL67
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL67
	.uaword	.LVL68
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL68
	.uaword	.LFE91
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL63
	.uaword	.LVL64
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL64
	.uaword	.LVL70
	.uahalf	0x2
	.byte	0x82
	.sleb128 4
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
	.uaword	.LFB91
	.uaword	.LFE91-.LFB91
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
	.uaword	.LFB91
	.uaword	.LFE91
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF6:
	.string	"lTxPduConfig_pst"
.LASF2:
	.string	"RxPduCanId"
.LASF7:
	.string	"ltxPduCustId_t"
.LASF1:
	.string	"PduIdx_t"
.LASF8:
	.string	"lDynId_p"
.LASF0:
	.string	"SduLength"
.LASF3:
	.string	"CanIf_CtrlConfigPtr"
.LASF5:
	.string	"TxPduCanId"
.LASF10:
	.string	"RxPduCfg_pcst"
.LASF9:
	.string	"Status_t"
.LASF4:
	.string	"CanIf_TxBufferConfigPtr"
	.extern	Det_ReportError,STT_FUNC,0
	.extern	CanIf_DynTxPduCanId_au32,STT_OBJECT,-1
	.extern	CanIf_Prv_ConfigSet_tpst,STT_OBJECT,4
	.extern	CanIf_Prv_InitStatus_b,STT_OBJECT,1
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
