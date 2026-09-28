	.file	"CanIf_Init.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.CanIf_Init,"ax",@progbits
	.align 1
	.global	CanIf_Init
	.type	CanIf_Init, @function
CanIf_Init:
.LFB86:
	.file 1 "bsw\\CanIf\\src\\CanIf_Init.c"
	.loc 1 26 0
.LVL0:
	.loc 1 86 0
	movh.a	%a2, hi:CanIf_Config
	lea	%a2, [%a2] lo:CanIf_Config
	movh.a	%a12, hi:CanIf_Prv_ConfigSet_tpst
	.loc 1 106 0
	ld.w	%d3, [%a2] 44
	.loc 1 86 0
	st.a	[%a12] lo:CanIf_Prv_ConfigSet_tpst, %a2
	.loc 1 97 0
	ld.bu	%d2, [%a2] 10
.LVL1:
	.loc 1 106 0
	jz	%d3, .L16
	movh.a	%a3, hi:CanIf_Prv_TxNotification_aen
	lea	%a15, [%a3] lo:CanIf_Prv_TxNotification_aen
	mov.d	%d15, %a15
	rsub	%d15
	and	%d15, %d15, 3
	min.u	%d15, %d3, %d15
	jge.u	%d3, 7, .L88
	mov	%d15, %d3
.L5:
	.loc 1 108 0
	mov	%d4, 0
	st.b	[%a3] lo:CanIf_Prv_TxNotification_aen, %d4
.LVL2:
	.loc 1 106 0
	mov	%d5, 1
	jeq	%d15, 1, .L7
	.loc 1 108 0
	st.b	[%a15] 1, %d4
.LVL3:
	.loc 1 106 0
	mov	%d5, 2
	jeq	%d15, 2, .L7
	.loc 1 108 0
	st.b	[%a15] 2, %d4
.LVL4:
	.loc 1 106 0
	mov	%d5, 3
	jeq	%d15, 3, .L7
	.loc 1 108 0
	st.b	[%a15] 3, %d4
.LVL5:
	.loc 1 106 0
	mov	%d5, 4
	jeq	%d15, 4, .L7
	.loc 1 108 0
	st.b	[%a15] 4, %d4
.LVL6:
	.loc 1 106 0
	mov	%d5, 5
	jne	%d15, 6, .L7
	.loc 1 108 0
	st.b	[%a15] 5, %d4
.LVL7:
	.loc 1 106 0
	mov	%d5, 6
.LVL8:
.L7:
	jeq	%d3, %d15, .L8
.L6:
	sub	%d0, %d3, %d15
	addi	%d4, %d0, -4
	sh	%d4, -2
	addi	%d7, %d3, -1
	addi	%d6, %d4, 1
	sub	%d7, %d15
	sh	%d6, 2
	jlt.u	%d7, 3, .L9
	ne	%d7, %d4, -1
	addsc.a	%a3, %a15, %d15, 0
	sel	%d4, %d7, %d4, 0
	.loc 1 108 0
	mov	%d15, 0
.L10:
	.loc 1 108 0 is_stmt 0 discriminator 3
	st.w	[%a3+]4, %d15
	jned	%d4, 0, .L10
	add	%d5, %d6
	jeq	%d0, %d6, .L8
.L9:
.LVL9:
	.loc 1 108 0
	addsc.a	%a3, %a15, %d5, 0
	mov	%d15, 0
	st.b	[%a3]0, %d15
	.loc 1 106 0 is_stmt 1
	addi	%d4, %d5, 1
.LVL10:
	jge.u	%d4, %d3, .L8
	.loc 1 108 0
	addsc.a	%a3, %a15, %d4, 0
	.loc 1 106 0
	add	%d5, 2
	.loc 1 108 0
	st.b	[%a3]0, %d15
.LVL11:
	.loc 1 106 0
	jge.u	%d5, %d3, .L8
	.loc 1 108 0
	addsc.a	%a15, %a15, %d5, 0
	st.b	[%a15]0, %d15
.L8:
.LVL12:
	ld.a	%a15, [%a2] 32
	.loc 1 135 0
	mov.a	%a2, %d3
.LVL13:
	movh.a	%a4, hi:CanIf_DynTxPduCanId_au32
.LVL14:
	.loc 1 130 0
	mov.u	%d4, 65535
	.loc 1 135 0
	lea	%a4, [%a4] lo:CanIf_DynTxPduCanId_au32
	add.a	%a2, -1
.LVL15:
.L15:
	.loc 1 130 0
	ld.hu	%d15, [%a15] 8
	jeq	%d15, %d4, .L14
	.loc 1 132 0
	ld.w	%d3, [%a15] 16
.LVL16:
	.loc 1 135 0
	addsc.a	%a3, %a4, %d15, 2
	.loc 1 134 0
	ld.bu	%d15, [%a15] 10
	insert	%d15, %d3, %d15, 30, 32-30
	.loc 1 135 0
	st.w	[%a3]0, %d15
.LVL17:
.L14:
	lea	%a15, [%a15] 24
	loop	%a2, .L15
.LVL18:
.L16:
	.loc 1 169 0
	jz	%d2, .L4
	movh.a	%a2, hi:CanIf_Prv_ControllerState_ast
	lea	%a15, [%a2] lo:CanIf_Prv_ControllerState_ast
	mov.d	%d15, %a15
	rsub	%d15
	and	%d15, %d15, 3
	min.u	%d15, %d2, %d15
	jge.u	%d2, 7, .L89
	mov	%d15, %d2
.L19:
	.loc 1 174 0
	mov	%d3, 48
	st.b	[%a2] lo:CanIf_Prv_ControllerState_ast, %d3
.LVL19:
	.loc 1 169 0
	mov	%d4, 1
	jeq	%d15, 1, .L21
	.loc 1 174 0
	st.b	[%a15] 1, %d3
.LVL20:
	.loc 1 169 0
	mov	%d4, 2
	jeq	%d15, 2, .L21
	.loc 1 174 0
	st.b	[%a15] 2, %d3
.LVL21:
	.loc 1 169 0
	mov	%d4, 3
	jeq	%d15, 3, .L21
	.loc 1 174 0
	st.b	[%a15] 3, %d3
.LVL22:
	.loc 1 169 0
	mov	%d4, 4
	jeq	%d15, 4, .L21
	.loc 1 174 0
	st.b	[%a15] 4, %d3
.LVL23:
	.loc 1 169 0
	mov	%d4, 5
	jne	%d15, 6, .L21
	.loc 1 174 0
	st.b	[%a15] 5, %d3
.LVL24:
	.loc 1 169 0
	mov	%d4, 6
.LVL25:
.L21:
	jeq	%d2, %d15, .L4
.L20:
	sub	%d7, %d2, %d15
	addi	%d3, %d7, -4
	sh	%d3, -2
	addi	%d6, %d2, -1
	addi	%d5, %d3, 1
	sub	%d6, %d15
	sh	%d5, 2
	jlt.u	%d6, 3, .L23
	addsc.a	%a2, %a15, %d15, 0
	ne	%d6, %d3, -1
	.loc 1 174 0
	movh	%d15, 12336
	addi	%d15, %d15, 12336
	sel	%d3, %d6, %d3, 0
.L24:
	.loc 1 174 0 is_stmt 0 discriminator 3
	st.w	[%a2+]4, %d15
	jned	%d3, 0, .L24
	add	%d4, %d5
	jeq	%d7, %d5, .L4
.L23:
.LVL26:
	.loc 1 174 0
	addsc.a	%a2, %a15, %d4, 0
	mov	%d15, 48
	st.b	[%a2]0, %d15
	.loc 1 169 0 is_stmt 1
	addi	%d3, %d4, 1
.LVL27:
	jge.u	%d3, %d2, .L4
	.loc 1 174 0
	addsc.a	%a2, %a15, %d3, 0
	.loc 1 169 0
	add	%d4, 2
	.loc 1 174 0
	st.b	[%a2]0, %d15
.LVL28:
	.loc 1 169 0
	jge.u	%d4, %d2, .L4
	.loc 1 174 0
	addsc.a	%a15, %a15, %d4, 0
	st.b	[%a15]0, %d15
.L4:
	.loc 1 225 0
	call	CanIf_Prv_BufferInit
.LVL29:
	.loc 1 240 0
	ld.a	%a15, [%a12] lo:CanIf_Prv_ConfigSet_tpst
	ld.hu	%d2, [%a15] 8
	jz	%d2, .L18
	movh.a	%a2, hi:CanIf_Prv_RxNotification_taen
	lea	%a15, [%a2] lo:CanIf_Prv_RxNotification_taen
	mov.d	%d15, %a15
	rsub	%d15
	and	%d15, %d15, 3
	min.u	%d15, %d2, %d15
	jge.u	%d2, 7, .L90
	mov	%d15, %d2
.L37:
	.loc 1 242 0
	mov	%d3, 0
	st.b	[%a2] lo:CanIf_Prv_RxNotification_taen, %d3
.LVL30:
	.loc 1 240 0
	mov	%d4, 1
	jeq	%d15, 1, .L30
	.loc 1 242 0
	st.b	[%a15] 1, %d3
.LVL31:
	.loc 1 240 0
	mov	%d4, 2
	jeq	%d15, 2, .L30
	.loc 1 242 0
	st.b	[%a15] 2, %d3
.LVL32:
	.loc 1 240 0
	mov	%d4, 3
	jeq	%d15, 3, .L30
	.loc 1 242 0
	st.b	[%a15] 3, %d3
.LVL33:
	.loc 1 240 0
	mov	%d4, 4
	jeq	%d15, 4, .L30
	.loc 1 242 0
	st.b	[%a15] 4, %d3
.LVL34:
	.loc 1 240 0
	mov	%d4, 5
	jne	%d15, 6, .L30
	.loc 1 242 0
	st.b	[%a15] 5, %d3
.LVL35:
	.loc 1 240 0
	mov	%d4, 6
.LVL36:
.L30:
	jeq	%d15, %d2, .L18
.L29:
	sub	%d7, %d2, %d15
	addi	%d3, %d7, -4
	sh	%d3, -2
	addi	%d6, %d2, -1
	addi	%d5, %d3, 1
	sub	%d6, %d15
	sh	%d5, 2
	jlt.u	%d6, 3, .L32
	ne	%d6, %d3, -1
	addsc.a	%a2, %a15, %d15, 0
	sel	%d3, %d6, %d3, 0
	.loc 1 242 0
	mov	%d15, 0
.L33:
	.loc 1 242 0 is_stmt 0 discriminator 3
	st.w	[%a2+]4, %d15
	jned	%d3, 0, .L33
	add	%d4, %d5
	jeq	%d7, %d5, .L18
.L32:
.LVL37:
	.loc 1 242 0
	addsc.a	%a2, %a15, %d4, 0
	mov	%d15, 0
	st.b	[%a2]0, %d15
	.loc 1 240 0 is_stmt 1
	addi	%d3, %d4, 1
.LVL38:
	jge.u	%d3, %d2, .L18
	.loc 1 242 0
	addsc.a	%a2, %a15, %d3, 0
	.loc 1 240 0
	add	%d4, 2
	.loc 1 242 0
	st.b	[%a2]0, %d15
.LVL39:
	.loc 1 240 0
	jge.u	%d4, %d2, .L18
	.loc 1 242 0
	addsc.a	%a15, %a15, %d4, 0
	st.b	[%a15]0, %d15
.L18:
	.loc 1 253 0
	mov	%d15, 1
	movh.a	%a15, hi:CanIf_Prv_InitStatus_b
	st.b	[%a15] lo:CanIf_Prv_InitStatus_b, %d15
	ret
.LVL40:
.L88:
	.loc 1 106 0
	mov	%d5, 0
	jz	%d15, .L6
	j	.L5
.LVL41:
.L90:
	.loc 1 240 0
	mov	%d4, 0
	jz	%d15, .L29
	j	.L37
.LVL42:
.L89:
	.loc 1 169 0
	mov	%d4, 0
	jz	%d15, .L20
	j	.L19
.LFE86:
	.size	CanIf_Init, .-CanIf_Init
.section .text.CanIf_DeInit,"ax",@progbits
	.align 1
	.global	CanIf_DeInit
	.type	CanIf_DeInit, @function
CanIf_DeInit:
.LFB87:
	.loc 1 274 0
.LVL43:
	ret
.LFE87:
	.size	CanIf_DeInit, .-CanIf_DeInit
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
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\ComStack\\ComStack_Cfg.h"
	.file 4 ".\\output\\inc/..\\..\\bsw\\CanIf\\integration\\Can_GeneralTypes.h"
	.file 5 ".\\output\\inc/..\\..\\bsw\\CanIf\\api\\CanIf_Types.h"
	.file 6 ".\\output\\inc/..\\..\\bsw\\CanIf\\CanIf_Cfg.h"
	.file 7 "bsw\\CanIf\\src\\CanIf_Prv.h"
	.file 8 ".\\output\\inc/..\\..\\bsw\\CanIf\\api\\CanIf.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x23aa
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\CanIf\\src\\CanIf_Init.c"
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
	.uaword	0x1c5
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
	.uaword	0x1f1
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
	.uaword	0x22d
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
	.uaword	0x1c5
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x3
	.string	"uint8_least"
	.byte	0x2
	.byte	0x8a
	.uaword	0x298
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x3
	.string	"PduIdType"
	.byte	0x3
	.byte	0x2c
	.uaword	0x1e3
	.uleb128 0x3
	.string	"PduLengthType"
	.byte	0x3
	.byte	0x30
	.uaword	0x1e3
	.uleb128 0x4
	.byte	0xc
	.byte	0x3
	.byte	0x39
	.uaword	0x315
	.uleb128 0x5
	.string	"SduDataPtr"
	.byte	0x3
	.byte	0x3b
	.uaword	0x315
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"MetaDataPtr"
	.byte	0x3
	.byte	0x3c
	.uaword	0x315
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.uaword	.LASF0
	.byte	0x3
	.byte	0x3d
	.uaword	0x2be
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.uaword	0x1b8
	.uleb128 0x3
	.string	"PduInfoType"
	.byte	0x3
	.byte	0x3e
	.uaword	0x2d3
	.uleb128 0x3
	.string	"Can_IdType"
	.byte	0x4
	.byte	0x15
	.uaword	0x21f
	.uleb128 0x3
	.string	"Can_HwHandleType"
	.byte	0x4
	.byte	0x1e
	.uaword	0x1e3
	.uleb128 0x8
	.byte	0x1
	.byte	0x5
	.byte	0x1f
	.uaword	0x3dc
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
	.byte	0x5
	.byte	0x49
	.uaword	0x42e
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
	.uleb128 0x8
	.byte	0x1
	.byte	0x5
	.byte	0x62
	.uaword	0x46a
	.uleb128 0x9
	.string	"CANIF_NO_NOTIFICATION"
	.sleb128 0
	.uleb128 0x9
	.string	"CANIF_TX_RX_NOTIFICATION"
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.string	"CanIf_NotifStatusType"
	.byte	0x5
	.byte	0x6c
	.uaword	0x42e
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x7
	.byte	0x4
	.uaword	0x499
	.uleb128 0xa
	.uaword	0x1b8
	.uleb128 0x7
	.byte	0x4
	.uaword	0x4a4
	.uleb128 0xa
	.uaword	0x1e3
	.uleb128 0x7
	.byte	0x4
	.uaword	0x21f
	.uleb128 0xb
	.byte	0x8
	.byte	0x6
	.uahalf	0x39a
	.uaword	0x507
	.uleb128 0xc
	.string	"CanId"
	.byte	0x6
	.uahalf	0x39c
	.uaword	0x32e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"swPduHandle"
	.byte	0x6
	.uahalf	0x39d
	.uaword	0x2ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.uaword	.LASF0
	.byte	0x6
	.uahalf	0x39e
	.uaword	0x1b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xc
	.string	"BufferIndex"
	.byte	0x6
	.uahalf	0x39f
	.uaword	0x1b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.byte	0
	.uleb128 0xe
	.string	"CanIf_Cfg_CanIdBuffer_tst"
	.byte	0x6
	.uahalf	0x3a1
	.uaword	0x4af
	.uleb128 0xf
	.byte	0x1
	.byte	0x6
	.uahalf	0x3a4
	.uaword	0x575
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
	.byte	0x6
	.uahalf	0x3a9
	.uaword	0x529
	.uleb128 0xf
	.byte	0x1
	.byte	0x6
	.uahalf	0x3ad
	.uaword	0x1784
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
	.byte	0x6
	.uahalf	0x464
	.uaword	0x59a
	.uleb128 0xf
	.byte	0x1
	.byte	0x6
	.uahalf	0x469
	.uaword	0x180f
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
	.byte	0x6
	.uahalf	0x476
	.uaword	0x179c
	.uleb128 0xf
	.byte	0x1
	.byte	0x6
	.uahalf	0x47a
	.uaword	0x1853
	.uleb128 0x9
	.string	"CANIF_BASIC"
	.sleb128 0
	.uleb128 0x9
	.string	"CANIF_FULL"
	.sleb128 1
	.byte	0
	.uleb128 0xe
	.string	"CanIf_Cfg_CanHandleType_ten"
	.byte	0x6
	.uahalf	0x47e
	.uaword	0x182e
	.uleb128 0xf
	.byte	0x1
	.byte	0x6
	.uahalf	0x484
	.uaword	0x18c7
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
	.byte	0x6
	.uahalf	0x48a
	.uaword	0x1877
	.uleb128 0xb
	.byte	0xc
	.byte	0x6
	.uahalf	0x4cb
	.uaword	0x1961
	.uleb128 0xc
	.string	"HrhInfo_e"
	.byte	0x6
	.uahalf	0x4d1
	.uaword	0x18c7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.uaword	.LASF1
	.byte	0x6
	.uahalf	0x4d7
	.uaword	0x2ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xc
	.string	"NumRxPdus_u32"
	.byte	0x6
	.uahalf	0x4da
	.uaword	0x21f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"HrhRangeMask_b"
	.byte	0x6
	.uahalf	0x4dd
	.uaword	0x26a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.string	"ControllerId_u8"
	.byte	0x6
	.uahalf	0x4e8
	.uaword	0x1b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.byte	0
	.uleb128 0xe
	.string	"CanIf_Cfg_Hrhtype_tst"
	.byte	0x6
	.uahalf	0x4f6
	.uaword	0x18e5
	.uleb128 0xb
	.byte	0x14
	.byte	0x6
	.uahalf	0x4fa
	.uaword	0x1a42
	.uleb128 0xc
	.string	"RxPduReadNotifyReadDataStatus_u8"
	.byte	0x6
	.uahalf	0x503
	.uaword	0x1b8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"IndexForUL_u8"
	.byte	0x6
	.uahalf	0x521
	.uaword	0x285
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"CanIdtype_u8"
	.byte	0x6
	.uahalf	0x530
	.uaword	0x1b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.string	"RxPduDlc_u8"
	.byte	0x6
	.uahalf	0x533
	.uaword	0x1b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xc
	.string	"RxPduCanId"
	.byte	0x6
	.uahalf	0x544
	.uaword	0x32e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.string	"Hrhref_t"
	.byte	0x6
	.uahalf	0x54e
	.uaword	0x2ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.string	"RxPduTargetId_t"
	.byte	0x6
	.uahalf	0x551
	.uaword	0x2ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0
	.uleb128 0xe
	.string	"CanIf_Cfg_RxPduType_tst"
	.byte	0x6
	.uahalf	0x55a
	.uaword	0x197f
	.uleb128 0xb
	.byte	0x4
	.byte	0x6
	.uahalf	0x55e
	.uaword	0x1a90
	.uleb128 0xc
	.string	"CanIfRxPduIndicationName"
	.byte	0x6
	.uahalf	0x560
	.uaword	0x1aac
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.uaword	0x1aa1
	.uleb128 0x11
	.uaword	0x2ad
	.uleb128 0x11
	.uaword	0x1aa1
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.uaword	0x1aa7
	.uleb128 0xa
	.uaword	0x31b
	.uleb128 0x7
	.byte	0x4
	.uaword	0x1a90
	.uleb128 0xe
	.string	"CanIf_RxCbk_Prototype"
	.byte	0x6
	.uahalf	0x561
	.uaword	0x1a62
	.uleb128 0xb
	.byte	0xc
	.byte	0x6
	.uahalf	0x56b
	.uaword	0x1b19
	.uleb128 0xc
	.string	"LowerCanId_t"
	.byte	0x6
	.uahalf	0x572
	.uaword	0x32e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"UpperCanId_t"
	.byte	0x6
	.uahalf	0x573
	.uaword	0x32e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.uaword	.LASF1
	.byte	0x6
	.uahalf	0x575
	.uaword	0x2ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0xe
	.string	"CanIf_RxPduRangeConfigType_tst"
	.byte	0x6
	.uahalf	0x577
	.uaword	0x1ad0
	.uleb128 0x10
	.byte	0x1
	.uaword	0x1b4c
	.uleb128 0x11
	.uaword	0x2ad
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.uaword	0x1b40
	.uleb128 0xb
	.byte	0x14
	.byte	0x6
	.uahalf	0x5ae
	.uaword	0x1c09
	.uleb128 0xc
	.string	"BufferIdPtr"
	.byte	0x6
	.uahalf	0x5b1
	.uaword	0x4a9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"TotalBufferCount"
	.byte	0x6
	.uahalf	0x5b2
	.uaword	0x21f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"TxPduIdPtr"
	.byte	0x6
	.uahalf	0x5b3
	.uaword	0x4a9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.string	"TotalTxPduCount"
	.byte	0x6
	.uahalf	0x5b4
	.uaword	0x21f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.string	"CtrlId"
	.byte	0x6
	.uahalf	0x5b6
	.uaword	0x1b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.string	"CtrlCanCtrlRef"
	.byte	0x6
	.uahalf	0x5b7
	.uaword	0x1b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0xc
	.string	"CtrlWakeupSupport"
	.byte	0x6
	.uahalf	0x5b8
	.uaword	0x26a
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0
	.uleb128 0xe
	.string	"CanIf_Cfg_CtrlConfig_tst"
	.byte	0x6
	.uahalf	0x5c1
	.uaword	0x1b52
	.uleb128 0xb
	.byte	0x8
	.byte	0x6
	.uahalf	0x5c4
	.uaword	0x1c73
	.uleb128 0xd
	.uaword	.LASF2
	.byte	0x6
	.uahalf	0x5c6
	.uaword	0x1c73
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"CanObjectId"
	.byte	0x6
	.uahalf	0x5c7
	.uaword	0x340
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"CanHandleType"
	.byte	0x6
	.uahalf	0x5c9
	.uaword	0x1853
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.uaword	0x1c79
	.uleb128 0xa
	.uaword	0x1c09
	.uleb128 0xe
	.string	"CanIf_Cfg_HthConfig_tst"
	.byte	0x6
	.uahalf	0x5cc
	.uaword	0x1c2a
	.uleb128 0xb
	.byte	0x10
	.byte	0x6
	.uahalf	0x5cf
	.uaword	0x1d45
	.uleb128 0xc
	.string	"CanIf_HthConfigPtr"
	.byte	0x6
	.uahalf	0x5d0
	.uaword	0x1d45
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"DataBuf"
	.byte	0x6
	.uahalf	0x5d3
	.uaword	0x315
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"CanIdBuf"
	.byte	0x6
	.uahalf	0x5d4
	.uaword	0x1d50
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.string	"CanIfBufferId"
	.byte	0x6
	.uahalf	0x5d5
	.uaword	0x1784
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.string	"CanIfBufferSize"
	.byte	0x6
	.uahalf	0x5d6
	.uaword	0x1b8
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xc
	.string	"CanIfBufferMaxDataLength"
	.byte	0x6
	.uahalf	0x5d7
	.uaword	0x1b8
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.uaword	0x1d4b
	.uleb128 0xa
	.uaword	0x1c7e
	.uleb128 0x7
	.byte	0x4
	.uaword	0x507
	.uleb128 0xe
	.string	"CanIf_Cfg_TxBufferConfig_tst"
	.byte	0x6
	.uahalf	0x5da
	.uaword	0x1c9e
	.uleb128 0xb
	.byte	0x18
	.byte	0x6
	.uahalf	0x5dc
	.uaword	0x1e96
	.uleb128 0xd
	.uaword	.LASF3
	.byte	0x6
	.uahalf	0x5dd
	.uaword	0x1e96
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"TxPduId"
	.byte	0x6
	.uahalf	0x5e4
	.uaword	0x2ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"TxPduTargetPduId"
	.byte	0x6
	.uahalf	0x5e5
	.uaword	0x2ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xc
	.string	"TxPduType"
	.byte	0x6
	.uahalf	0x5e6
	.uaword	0x2ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.string	"TxPduCanIdType"
	.byte	0x6
	.uahalf	0x5e7
	.uaword	0x575
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xc
	.string	"TxPduTxUserUL"
	.byte	0x6
	.uahalf	0x5e8
	.uaword	0x180f
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0xc
	.string	"UserTxConfirmation"
	.byte	0x6
	.uahalf	0x5e9
	.uaword	0x1b4c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.string	"TxPduCanId"
	.byte	0x6
	.uahalf	0x5ea
	.uaword	0x32e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.string	"TxPduReadNotifyStatus"
	.byte	0x6
	.uahalf	0x5f0
	.uaword	0x26a
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xc
	.string	"TxTruncEnabled_b"
	.byte	0x6
	.uahalf	0x5f9
	.uaword	0x26a
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.uleb128 0xc
	.string	"TxPduLength_u8"
	.byte	0x6
	.uahalf	0x5fb
	.uaword	0x1b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.uaword	0x1e9c
	.uleb128 0xa
	.uaword	0x1d56
	.uleb128 0xe
	.string	"CanIf_Cfg_TxPduConfig_tst"
	.byte	0x6
	.uahalf	0x5fc
	.uaword	0x1d7b
	.uleb128 0xb
	.byte	0x44
	.byte	0x6
	.uahalf	0x623
	.uaword	0x2093
	.uleb128 0xc
	.string	"HrhConfig_pcst"
	.byte	0x6
	.uahalf	0x628
	.uaword	0x2093
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"RxPduConfig_pcst"
	.byte	0x6
	.uahalf	0x62b
	.uaword	0x209e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"NumCanRxPduId_t"
	.byte	0x6
	.uahalf	0x62e
	.uaword	0x2ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.string	"NumCanCtrl_u8"
	.byte	0x6
	.uahalf	0x631
	.uaword	0x1b8
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xc
	.string	"NumCddRxPdus_t"
	.byte	0x6
	.uahalf	0x635
	.uaword	0x2ad
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.string	"RangeCfg_tpst"
	.byte	0x6
	.uahalf	0x639
	.uaword	0x20a9
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.string	"RxPduIdTable_Ptr"
	.byte	0x6
	.uahalf	0x63f
	.uaword	0x49e
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xc
	.string	"HrhPduIdTable_Ptr"
	.byte	0x6
	.uahalf	0x640
	.uaword	0x49e
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xc
	.string	"CfgSetIndex_u8"
	.byte	0x6
	.uahalf	0x643
	.uaword	0x1b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xc
	.string	"CanIf_TxPduConfigPtr"
	.byte	0x6
	.uahalf	0x645
	.uaword	0x20b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.uaword	.LASF3
	.byte	0x6
	.uahalf	0x646
	.uaword	0x1e96
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.uaword	.LASF2
	.byte	0x6
	.uahalf	0x648
	.uaword	0x1c73
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xc
	.string	"NumOfTxPdus"
	.byte	0x6
	.uahalf	0x649
	.uaword	0x21f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xc
	.string	"NumOfTxBuffers"
	.byte	0x6
	.uahalf	0x64a
	.uaword	0x21f
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xc
	.string	"TxPduIdTable_Ptr"
	.byte	0x6
	.uahalf	0x64b
	.uaword	0x49e
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xc
	.string	"CtrlIdTable_Ptr"
	.byte	0x6
	.uahalf	0x64c
	.uaword	0x493
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xc
	.string	"RxAutosarUL_Ptr"
	.byte	0x6
	.uahalf	0x651
	.uaword	0x20bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xc
	.string	"NmtxIdPtr"
	.byte	0x6
	.uahalf	0x654
	.uaword	0x20ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.uaword	0x2099
	.uleb128 0xa
	.uaword	0x1961
	.uleb128 0x7
	.byte	0x4
	.uaword	0x20a4
	.uleb128 0xa
	.uaword	0x1a42
	.uleb128 0x7
	.byte	0x4
	.uaword	0x20af
	.uleb128 0xa
	.uaword	0x1b19
	.uleb128 0x7
	.byte	0x4
	.uaword	0x20ba
	.uleb128 0xa
	.uaword	0x1ea1
	.uleb128 0x7
	.byte	0x4
	.uaword	0x20c5
	.uleb128 0xa
	.uaword	0x1ab2
	.uleb128 0x7
	.byte	0x4
	.uaword	0x20d0
	.uleb128 0xa
	.uaword	0x32e
	.uleb128 0xe
	.string	"CanIf_ConfigType"
	.byte	0x6
	.uahalf	0x65e
	.uaword	0x1ec3
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x4
	.byte	0x1
	.byte	0x7
	.byte	0xff
	.uaword	0x2118
	.uleb128 0xc
	.string	"Ctrl_Pdu_mode"
	.byte	0x7
	.uahalf	0x102
	.uaword	0x1b8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.string	"CanIf_ControllerStateType"
	.byte	0x7
	.uahalf	0x112
	.uaword	0x20f6
	.uleb128 0x12
	.byte	0x1
	.string	"CanIf_Init"
	.byte	0x1
	.byte	0x19
	.byte	0x1
	.uaword	.LFB86
	.uaword	.LFE86
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x2229
	.uleb128 0x13
	.uaword	.LASF4
	.byte	0x1
	.byte	0x19
	.uaword	0x2229
	.uaword	.LLST0
	.uleb128 0x14
	.string	"controllerState_pst"
	.byte	0x1
	.byte	0x1e
	.uaword	0x2234
	.uleb128 0x15
	.string	"index_u32"
	.byte	0x1
	.byte	0x21
	.uaword	0x21f
	.uaword	.LLST1
	.uleb128 0x15
	.string	"pdu_uo"
	.byte	0x1
	.byte	0x26
	.uaword	0x285
	.uaword	.LLST2
	.uleb128 0x15
	.string	"numControllers_u8"
	.byte	0x1
	.byte	0x2a
	.uaword	0x1b8
	.uaword	.LLST3
	.uleb128 0x14
	.string	"dynId_pu32"
	.byte	0x1
	.byte	0x2f
	.uaword	0x4a9
	.uleb128 0x15
	.string	"canId_t"
	.byte	0x1
	.byte	0x31
	.uaword	0x32e
	.uaword	.LLST4
	.uleb128 0x15
	.string	"numTxPduId_u32"
	.byte	0x1
	.byte	0x33
	.uaword	0x21f
	.uaword	.LLST5
	.uleb128 0x14
	.string	"txPduConfig_pcst"
	.byte	0x1
	.byte	0x36
	.uaword	0x20b4
	.uleb128 0x16
	.uaword	.LVL29
	.uaword	0x2391
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.uaword	0x222f
	.uleb128 0xa
	.uaword	0x20d5
	.uleb128 0x7
	.byte	0x4
	.uaword	0x2118
	.uleb128 0x17
	.byte	0x1
	.string	"CanIf_DeInit"
	.byte	0x1
	.uahalf	0x111
	.byte	0x1
	.uaword	.LFB87
	.uaword	.LFE87
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x226c
	.uleb128 0x18
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x111
	.uaword	0x2229
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x19
	.string	"CanIf_Config"
	.byte	0x6
	.uahalf	0x665
	.uaword	0x222f
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.string	"CanIf_Prv_ConfigSet_tpst"
	.byte	0x8
	.byte	0x37
	.uaword	0x2229
	.byte	0x1
	.byte	0x1
	.uleb128 0x1b
	.uaword	0x21f
	.uaword	0x22b0
	.uleb128 0x1c
	.byte	0
	.uleb128 0x19
	.string	"CanIf_DynTxPduCanId_au32"
	.byte	0x7
	.uahalf	0x185
	.uaword	0x22a5
	.byte	0x1
	.byte	0x1
	.uleb128 0x1b
	.uaword	0x2118
	.uaword	0x22de
	.uleb128 0x1c
	.byte	0
	.uleb128 0x19
	.string	"CanIf_Prv_ControllerState_ast"
	.byte	0x7
	.uahalf	0x19c
	.uaword	0x22d3
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.string	"CanIf_Prv_InitStatus_b"
	.byte	0x7
	.uahalf	0x1c2
	.uaword	0x26a
	.byte	0x1
	.byte	0x1
	.uleb128 0x1b
	.uaword	0x46a
	.uaword	0x2332
	.uleb128 0x1c
	.byte	0
	.uleb128 0x19
	.string	"CanIf_Prv_TxNotification_aen"
	.byte	0x7
	.uahalf	0x1e6
	.uaword	0x2327
	.byte	0x1
	.byte	0x1
	.uleb128 0x1b
	.uaword	0x46a
	.uaword	0x2369
	.uleb128 0x1d
	.uaword	0x487
	.byte	0x7d
	.byte	0
	.uleb128 0x19
	.string	"CanIf_Prv_RxNotification_taen"
	.byte	0x7
	.uahalf	0x1f1
	.uaword	0x2359
	.byte	0x1
	.byte	0x1
	.uleb128 0x1e
	.byte	0x1
	.string	"CanIf_Prv_BufferInit"
	.byte	0x7
	.uahalf	0x474
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
	.uleb128 0x6
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL14
	.uaword	.LVL40
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL40
	.uaword	.LVL41
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL41
	.uaword	.LFE86
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL12
	.uaword	.LVL15
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	.LVL26
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL27
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL42
	.uaword	.LFE86
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL29
	.uaword	.LVL30
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL31
	.uaword	.LVL32
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL33
	.uaword	.LVL34
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL34
	.uaword	.LVL35
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL35
	.uaword	.LVL36
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	.LVL37
	.uaword	.LVL38
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL38
	.uaword	.LVL39
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL40
	.uaword	.LVL42
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL1
	.uaword	.LVL13
	.uahalf	0x2
	.byte	0x82
	.sleb128 10
	.uaword	.LVL40
	.uaword	.LVL41
	.uahalf	0x2
	.byte	0x82
	.sleb128 10
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x13
	.byte	0x73
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
.LLST5:
	.uaword	.LVL12
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x53
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
	.uaword	.LFB86
	.uaword	.LFE86-.LFB86
	.uaword	.LFB87
	.uaword	.LFE87-.LFB87
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB86
	.uaword	.LFE86
	.uaword	.LFB87
	.uaword	.LFE87
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF1:
	.string	"PduIdx_t"
.LASF0:
	.string	"SduLength"
.LASF3:
	.string	"CanIf_TxBufferConfigPtr"
.LASF4:
	.string	"ConfigPtr"
.LASF2:
	.string	"CanIf_CtrlConfigPtr"
	.extern	CanIf_Prv_InitStatus_b,STT_OBJECT,1
	.extern	CanIf_Prv_RxNotification_taen,STT_OBJECT,126
	.extern	CanIf_Prv_BufferInit,STT_FUNC,0
	.extern	CanIf_Prv_ControllerState_ast,STT_OBJECT,-1
	.extern	CanIf_DynTxPduCanId_au32,STT_OBJECT,-1
	.extern	CanIf_Prv_TxNotification_aen,STT_OBJECT,-1
	.extern	CanIf_Prv_ConfigSet_tpst,STT_OBJECT,4
	.extern	CanIf_Config,STT_OBJECT,68
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
