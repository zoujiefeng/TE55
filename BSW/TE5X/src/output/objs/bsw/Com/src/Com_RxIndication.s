	.file	"Com_RxIndication.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Com_RxIndication,"ax",@progbits
	.align 1
	.global	Com_RxIndication
	.type	Com_RxIndication, @function
Com_RxIndication:
.LFB162:
	.file 1 "bsw\\Com\\src\\Com_RxIndication.c"
	.loc 1 60 0
.LVL0:
	.loc 1 65 0
	movh.a	%a2, hi:Com_InitStatus_en
	ld.bu	%d2, [%a2] lo:Com_InitStatus_en
	.loc 1 60 0
	mov	%d15, %d4
	mov.aa	%a15, %a4
	.loc 1 65 0
	jz	%d2, .L17
	.loc 1 69 0
	jz.a	%a4, .L18
.LVL1:
	.loc 1 73 0
	lt.u	%d2, %d4, 120
	jz	%d2, .L19
.LVL2:
.LBB38:
.LBB39:
	.file 2 "bsw\\Com\\src\\Com_Prv_Inl.h"
	.loc 2 1023 0
	movh.a	%a2, hi:Com_RxIpduRam_ast
	mov.d	%d3, %a2
	addi	%d2, %d3, lo:Com_RxIpduRam_ast
	madd	%d3, %d2, %d4, 6
	mov.a	%a2, %d3
	ld.bu	%d2, [%a2] 4
.LVL3:
.LBE39:
.LBE38:
	.loc 1 89 0
	jz.t	%d2, 0, .L1
.LVL4:
.LBB40:
	.loc 1 93 0
	mul	%d8, %d4, 28
	movh.a	%a12, hi:Com_Prv_xRxIpduCfg_acst
	lea	%a12, [%a12] lo:Com_Prv_xRxIpduCfg_acst
	addsc.a	%a3, %a12, %d8, 0
	.loc 1 103 0
	ld.hu	%d5, [%a4] 8
	ld.hu	%d6, [%a3] 16
.LBB41:
.LBB42:
	.file 3 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
	.loc 3 698 0
	andn	%d2, %d2, ~(-5)
.LBE42:
.LBE41:
	.loc 1 103 0
	min.u	%d5, %d6, %d5
.LBB45:
.LBB43:
	.loc 3 698 0
	or	%d2, %d2, 4
.LBE43:
.LBE45:
.LBB46:
.LBB47:
	.loc 3 511 0
	ld.bu	%d3, [%a3] 26
.LVL5:
.LBE47:
.LBE46:
	.loc 1 102 0
	st.h	[%a2]0, %d5
.LVL6:
.LBB48:
.LBB44:
	.loc 3 698 0
	st.b	[%a2] 4, %d2
.LVL7:
.LBE44:
.LBE48:
	.loc 1 123 0
	jnz.t	%d3, 0, .L1
.LVL8:
.LBB49:
.LBB50:
	.loc 1 294 0
	ld.a	%a2, [%a3] 4
	.loc 1 290 0
	jz.a	%a2, .L11
	.loc 1 297 0
	calli	%a2
.LVL9:
.LBE50:
.LBE49:
	.loc 1 128 0
	jnz	%d2, .L11
.LVL10:
.L1:
	ret
.LVL11:
.L17:
.LBE40:
	.loc 1 67 0
	mov	%e4, 50
.LVL12:
	mov	%d6, 66
	mov	%d7, 2
	j	Det_ReportError
.LVL13:
.L11:
.LBB57:
.LBB51:
.LBB52:
	.loc 1 182 0
	addsc.a	%a2, %a12, %d8, 0
	ld.hu	%d2, [%a2] 22
	jnz	%d2, .L20
.L10:
.LVL14:
.LBB53:
.LBB54:
	.loc 1 476 0
	addsc.a	%a12, %a12, %d8, 0
	ld.a	%a15, [%a12] 12
.LVL15:
	jz.a	%a15, .L1
	.loc 1 478 0
	ji	%a15
.LVL16:
.L19:
.LBE54:
.LBE53:
.LBE52:
.LBE51:
.LBE57:
	.loc 1 75 0
	mov	%e4, 50
.LVL17:
	mov	%d6, 66
	mov	%d7, 1
	j	Det_ReportError
.LVL18:
.L18:
	.loc 1 71 0
	mov	%e4, 50
.LVL19:
	mov	%d6, 66
	mov	%d7, 3
	j	Det_ReportError
.LVL20:
.L20:
.LBB58:
.LBB56:
.LBB55:
	.loc 1 184 0
	mov	%d4, %d15
	mov.aa	%a4, %a15
	call	Com_Prv_ProcessSignal
.LVL21:
	j	.L10
.LBE55:
.LBE56:
.LBE58:
.LFE162:
	.size	Com_RxIndication, .-Com_RxIndication
.section .text.Com_Prv_ProcessRxIPdu,"ax",@progbits
	.align 1
	.global	Com_Prv_ProcessRxIPdu
	.type	Com_Prv_ProcessRxIPdu, @function
Com_Prv_ProcessRxIPdu:
.LFB163:
	.loc 1 153 0
.LVL22:
	.loc 1 182 0
	mul	%d8, %d4, 28
	movh.a	%a15, hi:Com_Prv_xRxIpduCfg_acst
	lea	%a15, [%a15] lo:Com_Prv_xRxIpduCfg_acst
	addsc.a	%a2, %a15, %d8, 0
	ld.hu	%d15, [%a2] 22
	jnz	%d15, .L27
.LVL23:
.LBB59:
.LBB60:
	.loc 1 476 0
	addsc.a	%a15, %a15, %d8, 0
	ld.a	%a15, [%a15] 12
	jz.a	%a15, .L21
.LVL24:
.L28:
	.loc 1 478 0
	ji	%a15
.LVL25:
.L27:
	.loc 1 476 0
	addsc.a	%a15, %a15, %d8, 0
.LBE60:
.LBE59:
	.loc 1 184 0
	call	Com_Prv_ProcessSignal
.LVL26:
.LBB62:
.LBB61:
	.loc 1 476 0
	ld.a	%a15, [%a15] 12
	jnz.a	%a15, .L28
.L21:
	ret
.LBE61:
.LBE62:
.LFE163:
	.size	Com_Prv_ProcessRxIPdu, .-Com_Prv_ProcessRxIPdu
.section .text.Com_Prv_IsValidRxIpdu,"ax",@progbits
	.align 1
	.global	Com_Prv_IsValidRxIpdu
	.type	Com_Prv_IsValidRxIpdu, @function
Com_Prv_IsValidRxIpdu:
.LFB164:
	.loc 1 263 0
.LVL27:
	.loc 1 294 0
	movh.a	%a15, hi:Com_Prv_xRxIpduCfg_acst
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:Com_Prv_xRxIpduCfg_acst
	madd	%d2, %d15, %d4, 28
	mov.a	%a15, %d2
	ld.a	%a15, [%a15] 4
	.loc 1 290 0
	jz.a	%a15, .L30
	.loc 1 297 0
	ji	%a15
.LVL28:
.L30:
	.loc 1 307 0
	mov	%d2, 1
	ret
.LFE164:
	.size	Com_Prv_IsValidRxIpdu, .-Com_Prv_IsValidRxIpdu
.section .text.Com_Prv_InvokeRxNotifications,"ax",@progbits
	.align 1
	.global	Com_Prv_InvokeRxNotifications
	.type	Com_Prv_InvokeRxNotifications, @function
Com_Prv_InvokeRxNotifications:
.LFB165:
	.loc 1 457 0
.LVL29:
	.loc 1 476 0
	movh.a	%a15, hi:Com_Prv_xRxIpduCfg_acst
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:Com_Prv_xRxIpduCfg_acst
	madd	%d2, %d15, %d4, 28
	mov.a	%a15, %d2
	ld.a	%a15, [%a15] 12
	jz.a	%a15, .L31
	.loc 1 478 0
	ji	%a15
.LVL30:
.L31:
	ret
.LFE165:
	.size	Com_Prv_InvokeRxNotifications, .-Com_Prv_InvokeRxNotifications
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
	.uaword	.LFB162
	.uaword	.LFE162-.LFB162
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB163
	.uaword	.LFE163-.LFB163
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB164
	.uaword	.LFE164-.LFB164
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB165
	.uaword	.LFE165-.LFB165
	.align 2
.LEFDE6:
.section .text,"ax",@progbits
.Letext0:
	.file 4 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 5 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 6 ".\\output\\inc/..\\..\\bsw\\ComStack\\ComStack_Cfg.h"
	.file 7 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cfg.h"
	.file 8 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cfg_Internal.h"
	.file 9 "bsw\\Com\\src\\Com_Prv_Types.h"
	.file 10 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_Cfg_SchM.h"
	.file 11 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h"
	.file 12 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Variant.h"
	.file 13 "bsw\\Com\\src\\Com_Prv.h"
	.file 14 ".\\output\\inc/..\\..\\bsw\\Det\\api\\Det.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xed5
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Com\\src\\Com_RxIndication.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x58
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x4
	.byte	0x51
	.uaword	0x1c9
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
	.byte	0x4
	.byte	0x5b
	.uaword	0x1f5
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
	.byte	0x4
	.byte	0x6a
	.uaword	0x231
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
	.byte	0x4
	.byte	0x80
	.uaword	0x1c9
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
	.byte	0x5
	.byte	0x60
	.uaword	0x1bc
	.uleb128 0x3
	.string	"PduIdType"
	.byte	0x6
	.byte	0x2c
	.uaword	0x1e7
	.uleb128 0x3
	.string	"PduLengthType"
	.byte	0x6
	.byte	0x30
	.uaword	0x1e7
	.uleb128 0x4
	.byte	0xc
	.byte	0x6
	.byte	0x39
	.uaword	0x322
	.uleb128 0x5
	.string	"SduDataPtr"
	.byte	0x6
	.byte	0x3b
	.uaword	0x322
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"MetaDataPtr"
	.byte	0x6
	.byte	0x3c
	.uaword	0x322
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"SduLength"
	.byte	0x6
	.byte	0x3d
	.uaword	0x2c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x1bc
	.uleb128 0x3
	.string	"PduInfoType"
	.byte	0x6
	.byte	0x3e
	.uaword	0x2da
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x7
	.byte	0x1
	.byte	0x7
	.byte	0x7d
	.uaword	0x368
	.uleb128 0x8
	.string	"COM_UNINIT"
	.sleb128 0
	.uleb128 0x8
	.string	"COM_INIT"
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.string	"Com_StatusType"
	.byte	0x7
	.byte	0x80
	.uaword	0x347
	.uleb128 0x9
	.string	"Com_RxIntSignalId_tuo"
	.byte	0x8
	.uahalf	0x1c2
	.uaword	0x1bc
	.uleb128 0x9
	.string	"Com_MainFunc_tuo"
	.byte	0x8
	.uahalf	0x23e
	.uaword	0x1bc
	.uleb128 0x6
	.byte	0x4
	.uaword	0x1e7
	.uleb128 0x6
	.byte	0x4
	.uaword	0x3c1
	.uleb128 0xa
	.byte	0x1
	.uleb128 0x6
	.byte	0x4
	.uaword	0x223
	.uleb128 0x4
	.byte	0x8
	.byte	0x9
	.byte	0x4b
	.uaword	0x453
	.uleb128 0x5
	.string	"timePeriod_u16"
	.byte	0x9
	.byte	0x4d
	.uaword	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"timeOffset_u16"
	.byte	0x9
	.byte	0x4e
	.uaword	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x5
	.string	"repetitionPeriod_u16"
	.byte	0x9
	.byte	0x4f
	.uaword	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"numOfRepetitions_u8"
	.byte	0x9
	.byte	0x50
	.uaword	0x1bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x5
	.string	"mode_u8"
	.byte	0x9
	.byte	0x57
	.uaword	0x1bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.byte	0
	.uleb128 0x3
	.string	"Com_TransModeInfo_tst"
	.byte	0x9
	.byte	0x5b
	.uaword	0x3c9
	.uleb128 0x3
	.string	"Com_TMConstPtr_tpcst"
	.byte	0x9
	.byte	0x65
	.uaword	0x48c
	.uleb128 0x6
	.byte	0x4
	.uaword	0x492
	.uleb128 0xb
	.uaword	0x453
	.uleb128 0xc
	.byte	0x1c
	.byte	0x9
	.uahalf	0x410
	.uaword	0x5ba
	.uleb128 0xd
	.string	"buffPtr_pau8"
	.byte	0x9
	.uahalf	0x412
	.uaword	0x322
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"callOut_pfct"
	.byte	0x9
	.uahalf	0x41d
	.uaword	0x5da
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"timeoutNotification_pfct"
	.byte	0x9
	.uahalf	0x421
	.uaword	0x3bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"notification_pfct"
	.byte	0x9
	.uahalf	0x425
	.uaword	0x3bb
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"size_uo"
	.byte	0x9
	.uahalf	0x42c
	.uaword	0x2c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"firstTimeout_u16"
	.byte	0x9
	.uahalf	0x432
	.uaword	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0xd
	.string	"timeout_u16"
	.byte	0x9
	.uahalf	0x433
	.uaword	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"numOfSig_u16"
	.byte	0x9
	.uahalf	0x435
	.uaword	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0xd
	.string	"idRxSig_uo"
	.byte	0x9
	.uahalf	0x439
	.uaword	0x37e
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"idMainFunc_uo"
	.byte	0x9
	.uahalf	0x448
	.uaword	0x39c
	.byte	0x2
	.byte	0x23
	.uleb128 0x19
	.uleb128 0xd
	.string	"rxIPduFields_u8"
	.byte	0x9
	.uahalf	0x45a
	.uaword	0x1bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.uaword	0x26e
	.uaword	0x5cf
	.uleb128 0xf
	.uaword	0x2b4
	.uleb128 0xf
	.uaword	0x5cf
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x5d5
	.uleb128 0xb
	.uaword	0x328
	.uleb128 0x6
	.byte	0x4
	.uaword	0x5ba
	.uleb128 0x9
	.string	"Com_Prv_xRxIpduInfoCfg_tst"
	.byte	0x9
	.uahalf	0x45c
	.uaword	0x497
	.uleb128 0x9
	.string	"Com_RxIpduCfg_tpcst"
	.byte	0x9
	.uahalf	0x465
	.uaword	0x61f
	.uleb128 0x6
	.byte	0x4
	.uaword	0x625
	.uleb128 0xb
	.uaword	0x5e0
	.uleb128 0xc
	.byte	0x10
	.byte	0x9
	.uahalf	0x524
	.uaword	0x6fd
	.uleb128 0xd
	.string	"currentTxModePtr_pcst"
	.byte	0x9
	.uahalf	0x526
	.uaword	0x470
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"cntrMinDelayTime_u16"
	.byte	0x9
	.uahalf	0x52d
	.uaword	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"cntrTimePeriod_u16"
	.byte	0x9
	.uahalf	0x52e
	.uaword	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xd
	.string	"cntrRepPeriod_u16"
	.byte	0x9
	.uahalf	0x532
	.uaword	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"txFlags_u16"
	.byte	0x9
	.uahalf	0x555
	.uaword	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xd
	.string	"cntrRepetitions_u8"
	.byte	0x9
	.uahalf	0x556
	.uaword	0x1bc
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"transMode_u8"
	.byte	0x9
	.uahalf	0x562
	.uaword	0x1bc
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.byte	0
	.uleb128 0x9
	.string	"Com_TxIpduRamData_tst"
	.byte	0x9
	.uahalf	0x564
	.uaword	0x62a
	.uleb128 0xc
	.byte	0x6
	.byte	0x9
	.uahalf	0x584
	.uaword	0x773
	.uleb128 0xd
	.string	"rxIPduLength_uo"
	.byte	0x9
	.uahalf	0x586
	.uaword	0x2c5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"cntrRxTimeout_u16"
	.byte	0x9
	.uahalf	0x58b
	.uaword	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xd
	.string	"rxFlags_u8"
	.byte	0x9
	.uahalf	0x5a6
	.uaword	0x1bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x9
	.string	"Com_RxIpduRamData_tst"
	.byte	0x9
	.uahalf	0x5a8
	.uaword	0x71b
	.uleb128 0x9
	.string	"Com_RxIpduRam_tpst"
	.byte	0x9
	.uahalf	0x5b1
	.uaword	0x7ac
	.uleb128 0x6
	.byte	0x4
	.uaword	0x773
	.uleb128 0xc
	.byte	0xc
	.byte	0x9
	.uahalf	0x5f5
	.uaword	0x806
	.uleb128 0xd
	.string	"sigType_pau8"
	.byte	0x9
	.uahalf	0x5f7
	.uaword	0x322
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"sigType_pau16"
	.byte	0x9
	.uahalf	0x5fd
	.uaword	0x3b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"sigType_pau32"
	.byte	0x9
	.uahalf	0x5ff
	.uaword	0x3c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x9
	.string	"Com_Prv_xRxRamBuf_tst"
	.byte	0x9
	.uahalf	0x634
	.uaword	0x7b2
	.uleb128 0x10
	.string	"Bfx_Prv_GetBit_u8u8_u8_Inl"
	.byte	0x3
	.uahalf	0x1fd
	.byte	0x1
	.uaword	0x26e
	.byte	0x3
	.uaword	0x869
	.uleb128 0x11
	.string	"Data"
	.byte	0x3
	.uahalf	0x1fd
	.uaword	0x1bc
	.uleb128 0x11
	.string	"BitPn"
	.byte	0x3
	.uahalf	0x1fd
	.uaword	0x1bc
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.string	"Com_Prv_InvokeRxNotifications"
	.byte	0x1
	.uahalf	0x1c8
	.byte	0x1
	.byte	0x1
	.uaword	0x8ab
	.uleb128 0x13
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x1c8
	.uaword	0x2b4
	.uleb128 0x14
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x1ca
	.uaword	0x603
	.byte	0
	.uleb128 0x10
	.string	"Com_Prv_IsValidRxIpduId"
	.byte	0x2
	.uahalf	0x5a9
	.byte	0x1
	.uaword	0x26e
	.byte	0x3
	.uaword	0x8de
	.uleb128 0x13
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x5a9
	.uaword	0x2b4
	.byte	0
	.uleb128 0x10
	.string	"Com_Prv_CheckRxIPduStatus"
	.byte	0x2
	.uahalf	0x3fb
	.byte	0x1
	.uaword	0x26e
	.byte	0x3
	.uaword	0x930
	.uleb128 0x11
	.string	"idIpdu_uo"
	.byte	0x2
	.uahalf	0x3fb
	.uaword	0x2b4
	.uleb128 0x15
	.string	"rxIPduStatus_b"
	.byte	0x2
	.uahalf	0x3fd
	.uaword	0x26e
	.byte	0
	.uleb128 0x16
	.string	"SchM_Enter_Com_RxPduBuffer"
	.byte	0xa
	.uahalf	0x2c1
	.byte	0x1
	.byte	0x3
	.uleb128 0x17
	.string	"Bfx_Prv_PutBit_u8u8u8_Inl"
	.byte	0x3
	.uahalf	0x2b5
	.byte	0x1
	.byte	0x3
	.uaword	0x9af
	.uleb128 0x11
	.string	"Data"
	.byte	0x3
	.uahalf	0x2b5
	.uaword	0x322
	.uleb128 0x11
	.string	"BitPn"
	.byte	0x3
	.uahalf	0x2b5
	.uaword	0x1bc
	.uleb128 0x11
	.string	"Status"
	.byte	0x3
	.uahalf	0x2b5
	.uaword	0x26e
	.uleb128 0x15
	.string	"tmp_u8"
	.byte	0x3
	.uahalf	0x2b7
	.uaword	0x1bc
	.byte	0
	.uleb128 0x16
	.string	"SchM_Exit_Com_RxPduBuffer"
	.byte	0xa
	.uahalf	0x2c5
	.byte	0x1
	.byte	0x3
	.uleb128 0x18
	.byte	0x1
	.string	"Com_Prv_IsValidRxIpdu"
	.byte	0x1
	.uahalf	0x106
	.byte	0x1
	.uaword	0x26e
	.byte	0x1
	.uaword	0xa31
	.uleb128 0x13
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x106
	.uaword	0x2b4
	.uleb128 0x13
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x106
	.uaword	0x5cf
	.uleb128 0x14
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x108
	.uaword	0x603
	.uleb128 0x15
	.string	"isValidRxIpdu_b"
	.byte	0x1
	.uahalf	0x109
	.uaword	0x26e
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.string	"Com_Prv_ProcessRxIPdu"
	.byte	0x1
	.byte	0x98
	.byte	0x1
	.byte	0x1
	.uaword	0xa73
	.uleb128 0x1a
	.uaword	.LASF0
	.byte	0x1
	.byte	0x98
	.uaword	0x2b4
	.uleb128 0x1a
	.uaword	.LASF3
	.byte	0x1
	.byte	0x98
	.uaword	0x5cf
	.uleb128 0x1b
	.uaword	.LASF2
	.byte	0x1
	.byte	0x9a
	.uaword	0x603
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.string	"Com_RxIndication"
	.byte	0x1
	.byte	0x3b
	.byte	0x1
	.uaword	.LFB162
	.uaword	.LFE162
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xcc0
	.uleb128 0x1d
	.uaword	.LASF0
	.byte	0x1
	.byte	0x3b
	.uaword	0x2b4
	.uaword	.LLST0
	.uleb128 0x1d
	.uaword	.LASF3
	.byte	0x1
	.byte	0x3b
	.uaword	0x5cf
	.uaword	.LLST1
	.uleb128 0x1b
	.uaword	.LASF2
	.byte	0x1
	.byte	0x3d
	.uaword	0x603
	.uleb128 0x1e
	.string	"rxIpduRamPtr_pst"
	.byte	0x1
	.byte	0x3e
	.uaword	0x791
	.uleb128 0x1f
	.uaword	0x8de
	.uaword	.LBB38
	.uaword	.LBE38
	.byte	0x1
	.byte	0x59
	.uaword	0xb06
	.uleb128 0x20
	.uaword	0x906
	.uaword	.LLST2
	.uleb128 0x21
	.uaword	.LBB39
	.uaword	.LBE39
	.uleb128 0x22
	.uaword	0x918
	.byte	0
	.byte	0
	.uleb128 0x23
	.uaword	.Ldebug_ranges0+0
	.uaword	0xc54
	.uleb128 0x1e
	.string	"sigProcessing_b"
	.byte	0x1
	.byte	0x5b
	.uaword	0x26e
	.uleb128 0x24
	.uaword	0x951
	.uaword	.LBB41
	.uaword	.Ldebug_ranges0+0x20
	.byte	0x1
	.byte	0x75
	.uaword	0xb60
	.uleb128 0x20
	.uaword	0x990
	.uaword	.LLST3
	.uleb128 0x20
	.uaword	0x982
	.uaword	.LLST4
	.uleb128 0x25
	.uaword	0x975
	.uleb128 0x26
	.uaword	.Ldebug_ranges0+0x20
	.uleb128 0x27
	.uaword	0x99f
	.uaword	.LLST3
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uaword	0x824
	.uaword	.LBB46
	.uaword	.LBE46
	.byte	0x1
	.byte	0x5d
	.uaword	0xb82
	.uleb128 0x20
	.uaword	0x85a
	.uaword	.LLST6
	.uleb128 0x25
	.uaword	0x84d
	.byte	0
	.uleb128 0x1f
	.uaword	0x9cf
	.uaword	.LBB49
	.uaword	.LBE49
	.byte	0x1
	.byte	0x80
	.uaword	0xbdb
	.uleb128 0x20
	.uaword	0xa00
	.uaword	.LLST7
	.uleb128 0x20
	.uaword	0x9f4
	.uaword	.LLST8
	.uleb128 0x21
	.uaword	.LBB50
	.uaword	.LBE50
	.uleb128 0x22
	.uaword	0xa0c
	.uleb128 0x27
	.uaword	0xa18
	.uaword	.LLST9
	.uleb128 0x28
	.uaword	.LVL9
	.byte	0x8
	.byte	0x8c
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x4
	.byte	0x6
	.uleb128 0x29
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x29
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uaword	0xa31
	.uaword	.LBB51
	.uaword	.Ldebug_ranges0+0x8
	.byte	0x1
	.byte	0x83
	.uleb128 0x20
	.uaword	0xa5c
	.uaword	.LLST10
	.uleb128 0x20
	.uaword	0xa51
	.uaword	.LLST11
	.uleb128 0x26
	.uaword	.Ldebug_ranges0+0x8
	.uleb128 0x22
	.uaword	0xa67
	.uleb128 0x1f
	.uaword	0x869
	.uaword	.LBB53
	.uaword	.LBE53
	.byte	0x1
	.byte	0xf1
	.uaword	0xc3b
	.uleb128 0x20
	.uaword	0x892
	.uaword	.LLST12
	.uleb128 0x21
	.uaword	.LBB54
	.uaword	.LBE54
	.uleb128 0x22
	.uaword	0x89e
	.uleb128 0x2b
	.uaword	.LVL16
	.byte	0x1
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uaword	.LVL21
	.uaword	0xe7d
	.uleb128 0x29
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x29
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uaword	.LVL13
	.byte	0x1
	.uaword	0xea9
	.uaword	0xc79
	.uleb128 0x29
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x32
	.uleb128 0x29
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x8
	.byte	0x42
	.uleb128 0x29
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x29
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x32
	.byte	0
	.uleb128 0x2d
	.uaword	.LVL18
	.byte	0x1
	.uaword	0xea9
	.uaword	0xc9e
	.uleb128 0x29
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x31
	.uleb128 0x29
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x8
	.byte	0x42
	.uleb128 0x29
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x29
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x32
	.byte	0
	.uleb128 0x2e
	.uaword	.LVL20
	.byte	0x1
	.uaword	0xea9
	.uleb128 0x29
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x33
	.uleb128 0x29
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x8
	.byte	0x42
	.uleb128 0x29
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x29
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uaword	0xa31
	.uaword	.LFB163
	.uaword	.LFE163
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0xd1d
	.uleb128 0x20
	.uaword	0xa51
	.uaword	.LLST13
	.uleb128 0x20
	.uaword	0xa5c
	.uaword	.LLST14
	.uleb128 0x22
	.uaword	0xa67
	.uleb128 0x24
	.uaword	0x869
	.uaword	.LBB59
	.uaword	.Ldebug_ranges0+0x40
	.byte	0x1
	.byte	0xf1
	.uaword	0xd13
	.uleb128 0x20
	.uaword	0x892
	.uaword	.LLST15
	.uleb128 0x26
	.uaword	.Ldebug_ranges0+0x40
	.uleb128 0x22
	.uaword	0x89e
	.byte	0
	.byte	0
	.uleb128 0x30
	.uaword	.LVL26
	.uaword	0xe7d
	.byte	0
	.uleb128 0x31
	.uaword	0x9cf
	.uaword	.LFB164
	.uaword	.LFE164
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xd61
	.uleb128 0x20
	.uaword	0x9f4
	.uaword	.LLST16
	.uleb128 0x20
	.uaword	0xa00
	.uaword	.LLST17
	.uleb128 0x22
	.uaword	0xa0c
	.uleb128 0x32
	.uaword	0xa18
	.byte	0x1
	.uleb128 0x33
	.uaword	.LVL28
	.byte	0x1
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x29
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0x31
	.uaword	0x869
	.uaword	.LFB165
	.uaword	.LFE165
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xd8e
	.uleb128 0x20
	.uaword	0x892
	.uaword	.LLST18
	.uleb128 0x22
	.uaword	0x89e
	.uleb128 0x2b
	.uaword	.LVL30
	.byte	0x1
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x34
	.uaword	0x773
	.uaword	0xd99
	.uleb128 0x35
	.byte	0
	.uleb128 0x36
	.string	"Com_RxIpduRam_ast"
	.byte	0xb
	.byte	0x6b
	.uaword	0xd8e
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.uaword	0x6fd
	.uaword	0xdbf
	.uleb128 0x35
	.byte	0
	.uleb128 0x36
	.string	"Com_TxIpduRam_ast"
	.byte	0xb
	.byte	0x6e
	.uaword	0xdb4
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.uaword	0x806
	.uaword	0xde5
	.uleb128 0x35
	.byte	0
	.uleb128 0x37
	.string	"Com_Prv_xRxRamBuf_acst"
	.byte	0xb
	.uahalf	0x9f4
	.uaword	0xe06
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.uaword	0xdda
	.uleb128 0x34
	.uaword	0x5e0
	.uaword	0xe16
	.uleb128 0x35
	.byte	0
	.uleb128 0x36
	.string	"Com_Prv_xRxIpduCfg_acst"
	.byte	0xc
	.byte	0x70
	.uaword	0xe37
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.uaword	0xe0b
	.uleb128 0x37
	.string	"Com_InitStatus_en"
	.byte	0xd
	.uahalf	0xec7
	.uaword	0x368
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.string	"Com_NONE_TransModeInfo_cst"
	.byte	0xd
	.uahalf	0xf12
	.uaword	0x492
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.byte	0x1
	.string	"Com_Prv_ProcessSignal"
	.byte	0xd
	.uahalf	0xdc9
	.byte	0x1
	.byte	0x1
	.uaword	0xea9
	.uleb128 0xf
	.uaword	0x2b4
	.uleb128 0xf
	.uaword	0x5cf
	.byte	0
	.uleb128 0x39
	.byte	0x1
	.string	"Det_ReportError"
	.byte	0xe
	.byte	0x70
	.byte	0x1
	.uaword	0x29e
	.byte	0x1
	.uleb128 0xf
	.uaword	0x1e7
	.uleb128 0xf
	.uaword	0x1bc
	.uleb128 0xf
	.uaword	0x1bc
	.uleb128 0xf
	.uaword	0x1bc
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
	.uleb128 0x8
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x2113
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uaword	.LVL9-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL9-1
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x5f
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
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x5f
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
	.uaword	.LVL20
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LFE162
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL9-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL9-1
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL10
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
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LVL18-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL18-1
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL18
	.uaword	.LVL20-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL20-1
	.uaword	.LFE162
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL2
	.uaword	.LVL9-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL9-1
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL13
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL20
	.uaword	.LFE162
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL6
	.uaword	.LVL10
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LVL16
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LFE162
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL6
	.uaword	.LVL10
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LVL16
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LFE162
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL4
	.uaword	.LVL10
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LVL16
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LFE162
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL8
	.uaword	.LVL9-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL9-1
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL13
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LFE162
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL8
	.uaword	.LVL9-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL9-1
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL13
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL20
	.uaword	.LFE162
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL13
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LFE162
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL13
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL20
	.uaword	.LFE162
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL14
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL22
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LVL26-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL26-1
	.uaword	.LFE163
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL22
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LVL26-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL26-1
	.uaword	.LFE163
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL27
	.uaword	.LVL28-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL28-1
	.uaword	.LVL28
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL28
	.uaword	.LFE164
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL27
	.uaword	.LVL28-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL28-1
	.uaword	.LVL28
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL28
	.uaword	.LFE164
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL29
	.uaword	.LVL30-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL30-1
	.uaword	.LVL30
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL30
	.uaword	.LFE165
	.uahalf	0x1
	.byte	0x54
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
	.uaword	.LFB162
	.uaword	.LFE162-.LFB162
	.uaword	.LFB163
	.uaword	.LFE163-.LFB163
	.uaword	.LFB164
	.uaword	.LFE164-.LFB164
	.uaword	.LFB165
	.uaword	.LFE165-.LFB165
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB40
	.uaword	.LBE40
	.uaword	.LBB57
	.uaword	.LBE57
	.uaword	.LBB58
	.uaword	.LBE58
	.uaword	0
	.uaword	0
	.uaword	.LBB41
	.uaword	.LBE41
	.uaword	.LBB45
	.uaword	.LBE45
	.uaword	.LBB48
	.uaword	.LBE48
	.uaword	0
	.uaword	0
	.uaword	.LBB59
	.uaword	.LBE59
	.uaword	.LBB62
	.uaword	.LBE62
	.uaword	0
	.uaword	0
	.uaword	.LFB162
	.uaword	.LFE162
	.uaword	.LFB163
	.uaword	.LFE163
	.uaword	.LFB164
	.uaword	.LFE164
	.uaword	.LFB165
	.uaword	.LFE165
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF1:
	.string	"idPdu_uo"
.LASF0:
	.string	"idRxPdu_uo"
.LASF3:
	.string	"pduInfoPtr_pcst"
.LASF2:
	.string	"rxIpduConstPtr_pcst"
	.extern	Com_Prv_ProcessSignal,STT_FUNC,0
	.extern	Det_ReportError,STT_FUNC,0
	.extern	Com_Prv_xRxIpduCfg_acst,STT_OBJECT,-1
	.extern	Com_RxIpduRam_ast,STT_OBJECT,-1
	.extern	Com_InitStatus_en,STT_OBJECT,1
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
