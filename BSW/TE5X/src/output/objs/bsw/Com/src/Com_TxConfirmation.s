	.file	"Com_TxConfirmation.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Com_TxConfirmation,"ax",@progbits
	.align 1
	.global	Com_TxConfirmation
	.type	Com_TxConfirmation, @function
Com_TxConfirmation:
.LFB162:
	.file 1 "bsw\\Com\\src\\Com_TxConfirmation.c"
	.loc 1 61 0
.LVL0:
	.loc 1 63 0
	movh.a	%a15, hi:Com_InitStatus_en
	ld.bu	%d15, [%a15] lo:Com_InitStatus_en
	jz	%d15, .L17
.LVL1:
	.loc 1 67 0
	lt.u	%d15, %d4, 140
	jz	%d15, .L18
.LVL2:
.LBB24:
.LBB25:
	.file 2 "bsw\\Com\\src\\Com_Prv_Inl.h"
	.loc 2 995 0
	movh.a	%a2, hi:Com_TxIpduRam_ast
	lea	%a2, [%a2] lo:Com_TxIpduRam_ast
	sh	%d2, %d4, 4
	addsc.a	%a15, %a2, %d2, 0
	ld.hu	%d15, [%a15] 10
.LVL3:
.LBE25:
.LBE24:
	.loc 1 80 0
	jnz.t	%d15, 0, .L19
.LVL4:
.L1:
	ret
.LVL5:
.L19:
.LBB26:
.LBB27:
	.loc 1 133 0
	ld.hu	%d3, [%a15] 4
	jz	%d3, .L6
	.loc 1 138 0
	movh.a	%a3, hi:Com_Prv_xTxIpduCfg_acst
	mov.d	%d5, %a3
	addi	%d3, %d5, lo:Com_Prv_xTxIpduCfg_acst
	madd	%d5, %d3, %d4, 28
	mov.a	%a3, %d5
	ld.h	%d3, [%a3] 14
	st.h	[%a15] 4, %d3
.L6:
	.loc 1 152 0
	addsc.a	%a15, %a2, %d2, 0
.LVL6:
	ld.bu	%d3, [%a15] 12
	jz	%d3, .L8
	.loc 1 154 0
	add	%d3, -1
	and	%d3, %d3, 255
	st.b	[%a15] 12, %d3
	.loc 1 156 0
	jnz	%d3, .L1
.L8:
.LVL7:
.LBB28:
.LBB29:
	.file 3 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
	.loc 3 646 0
	addsc.a	%a2, %a2, %d2, 0
.LVL8:
	or	%d15, %d15, 2
	st.h	[%a2] 10, %d15
.LVL9:
	ret
.LVL10:
.L17:
.LBE29:
.LBE28:
.LBE27:
.LBE26:
	.loc 1 65 0
	mov	%e4, 50
.LVL11:
	mov	%d6, 64
	mov	%d7, 2
	j	Det_ReportError
.LVL12:
.L18:
	.loc 1 69 0
	mov	%e4, 50
.LVL13:
	mov	%d6, 64
	mov	%d7, 1
	j	Det_ReportError
.LVL14:
.LFE162:
	.size	Com_TxConfirmation, .-Com_TxConfirmation
.section .text.Com_Prv_InternalTxConfirmation,"ax",@progbits
	.align 1
	.global	Com_Prv_InternalTxConfirmation
	.type	Com_Prv_InternalTxConfirmation, @function
Com_Prv_InternalTxConfirmation:
.LFB163:
	.loc 1 105 0
.LVL15:
	.loc 1 133 0
	movh.a	%a2, hi:Com_TxIpduRam_ast
	lea	%a2, [%a2] lo:Com_TxIpduRam_ast
	sh	%d15, %d4, 4
	addsc.a	%a15, %a2, %d15, 0
	ld.hu	%d2, [%a15] 4
	jz	%d2, .L21
	.loc 1 138 0
	movh.a	%a3, hi:Com_Prv_xTxIpduCfg_acst
	mov.d	%d3, %a3
	addi	%d2, %d3, lo:Com_Prv_xTxIpduCfg_acst
	madd	%d3, %d2, %d4, 28
	mov.a	%a3, %d3
	ld.h	%d2, [%a3] 14
	st.h	[%a15] 4, %d2
.L21:
	.loc 1 152 0
	addsc.a	%a15, %a2, %d15, 0
	ld.bu	%d2, [%a15] 12
	jz	%d2, .L24
	.loc 1 154 0
	add	%d2, -1
	and	%d2, %d2, 255
	st.b	[%a15] 12, %d2
	.loc 1 156 0
	jz	%d2, .L24
	ret
.L24:
.LVL16:
.LBB30:
.LBB31:
	.loc 3 646 0
	addsc.a	%a2, %a2, %d15, 0
	ld.h	%d15, [%a2] 10
	or	%d15, %d15, 2
	st.h	[%a2] 10, %d15
	ret
.LBE31:
.LBE30:
.LFE163:
	.size	Com_Prv_InternalTxConfirmation, .-Com_Prv_InternalTxConfirmation
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
	.uaword	0xc95
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Com\\src\\Com_TxConfirmation.c"
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
	.byte	0x4
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
	.byte	0x4
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
	.byte	0x4
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
	.byte	0x4
	.byte	0x80
	.uaword	0x1cb
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
	.uaword	0x1be
	.uleb128 0x3
	.string	"PduIdType"
	.byte	0x6
	.byte	0x2c
	.uaword	0x1e9
	.uleb128 0x3
	.string	"PduLengthType"
	.byte	0x6
	.byte	0x30
	.uaword	0x1e9
	.uleb128 0x4
	.byte	0xc
	.byte	0x6
	.byte	0x39
	.uaword	0x324
	.uleb128 0x5
	.string	"SduDataPtr"
	.byte	0x6
	.byte	0x3b
	.uaword	0x324
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"MetaDataPtr"
	.byte	0x6
	.byte	0x3c
	.uaword	0x324
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"SduLength"
	.byte	0x6
	.byte	0x3d
	.uaword	0x2c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x1be
	.uleb128 0x3
	.string	"PduInfoType"
	.byte	0x6
	.byte	0x3e
	.uaword	0x2dc
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x7
	.byte	0x1
	.byte	0x7
	.byte	0x7d
	.uaword	0x36a
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
	.uaword	0x349
	.uleb128 0x9
	.string	"Com_TxIntSignalId_tuo"
	.byte	0x8
	.uahalf	0x1c1
	.uaword	0x1be
	.uleb128 0x9
	.string	"Com_MainFunc_tuo"
	.byte	0x8
	.uahalf	0x23e
	.uaword	0x1be
	.uleb128 0x6
	.byte	0x4
	.uaword	0x1e9
	.uleb128 0x6
	.byte	0x4
	.uaword	0x225
	.uleb128 0x4
	.byte	0x8
	.byte	0x9
	.byte	0x4b
	.uaword	0x44d
	.uleb128 0x5
	.string	"timePeriod_u16"
	.byte	0x9
	.byte	0x4d
	.uaword	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"timeOffset_u16"
	.byte	0x9
	.byte	0x4e
	.uaword	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x5
	.string	"repetitionPeriod_u16"
	.byte	0x9
	.byte	0x4f
	.uaword	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"numOfRepetitions_u8"
	.byte	0x9
	.byte	0x50
	.uaword	0x1be
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x5
	.string	"mode_u8"
	.byte	0x9
	.byte	0x57
	.uaword	0x1be
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.byte	0
	.uleb128 0x3
	.string	"Com_TransModeInfo_tst"
	.byte	0x9
	.byte	0x5b
	.uaword	0x3c3
	.uleb128 0x3
	.string	"Com_TMConstPtr_tpcst"
	.byte	0x9
	.byte	0x65
	.uaword	0x486
	.uleb128 0x6
	.byte	0x4
	.uaword	0x48c
	.uleb128 0xa
	.uaword	0x44d
	.uleb128 0xb
	.byte	0x1c
	.byte	0x9
	.uahalf	0x322
	.uaword	0x5ac
	.uleb128 0xc
	.string	"buffPtr_pu8"
	.byte	0x9
	.uahalf	0x324
	.uaword	0x324
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"tMConstPtr_pcst"
	.byte	0x9
	.uahalf	0x326
	.uaword	0x486
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"callOut_pfct"
	.byte	0x9
	.uahalf	0x329
	.uaword	0x5c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.string	"size_uo"
	.byte	0x9
	.uahalf	0x342
	.uaword	0x2c7
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.string	"minDelayTime_u16"
	.byte	0x9
	.uahalf	0x34d
	.uaword	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xc
	.string	"numOfSig_u16"
	.byte	0x9
	.uahalf	0x34f
	.uaword	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.string	"idPduRSrcPdu_uo"
	.byte	0x9
	.uahalf	0x354
	.uaword	0x2b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0xc
	.string	"idTxSig_uo"
	.byte	0x9
	.uahalf	0x356
	.uaword	0x380
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xc
	.string	"txIPduFields_u16"
	.byte	0x9
	.uahalf	0x375
	.uaword	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0xc
	.string	"idMainFunc_uo"
	.byte	0x9
	.uahalf	0x379
	.uaword	0x39e
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xc
	.string	"paddingByte_u8"
	.byte	0x9
	.uahalf	0x37a
	.uaword	0x1be
	.byte	0x2
	.byte	0x23
	.uleb128 0x19
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.uaword	0x270
	.uaword	0x5c1
	.uleb128 0xe
	.uaword	0x2b6
	.uleb128 0xe
	.uaword	0x5c1
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x32a
	.uleb128 0x6
	.byte	0x4
	.uaword	0x5ac
	.uleb128 0x9
	.string	"Com_Prv_xTxIpduInfoCfg_tst"
	.byte	0x9
	.uahalf	0x37c
	.uaword	0x491
	.uleb128 0x9
	.string	"Com_TxIpduCfg_tpcst"
	.byte	0x9
	.uahalf	0x385
	.uaword	0x60c
	.uleb128 0x6
	.byte	0x4
	.uaword	0x612
	.uleb128 0xa
	.uaword	0x5cd
	.uleb128 0xb
	.byte	0x10
	.byte	0x9
	.uahalf	0x524
	.uaword	0x6ea
	.uleb128 0xc
	.string	"currentTxModePtr_pcst"
	.byte	0x9
	.uahalf	0x526
	.uaword	0x46a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"cntrMinDelayTime_u16"
	.byte	0x9
	.uahalf	0x52d
	.uaword	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"cntrTimePeriod_u16"
	.byte	0x9
	.uahalf	0x52e
	.uaword	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xc
	.string	"cntrRepPeriod_u16"
	.byte	0x9
	.uahalf	0x532
	.uaword	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.string	"txFlags_u16"
	.byte	0x9
	.uahalf	0x555
	.uaword	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xc
	.string	"cntrRepetitions_u8"
	.byte	0x9
	.uahalf	0x556
	.uaword	0x1be
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.string	"transMode_u8"
	.byte	0x9
	.uahalf	0x562
	.uaword	0x1be
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.byte	0
	.uleb128 0x9
	.string	"Com_TxIpduRamData_tst"
	.byte	0x9
	.uahalf	0x564
	.uaword	0x617
	.uleb128 0x9
	.string	"Com_TxIpduRam_tpst"
	.byte	0x9
	.uahalf	0x56d
	.uaword	0x723
	.uleb128 0x6
	.byte	0x4
	.uaword	0x6ea
	.uleb128 0xb
	.byte	0x6
	.byte	0x9
	.uahalf	0x584
	.uaword	0x781
	.uleb128 0xc
	.string	"rxIPduLength_uo"
	.byte	0x9
	.uahalf	0x586
	.uaword	0x2c7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"cntrRxTimeout_u16"
	.byte	0x9
	.uahalf	0x58b
	.uaword	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xc
	.string	"rxFlags_u8"
	.byte	0x9
	.uahalf	0x5a6
	.uaword	0x1be
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x9
	.string	"Com_RxIpduRamData_tst"
	.byte	0x9
	.uahalf	0x5a8
	.uaword	0x729
	.uleb128 0xb
	.byte	0xc
	.byte	0x9
	.uahalf	0x5f5
	.uaword	0x7f3
	.uleb128 0xc
	.string	"sigType_pau8"
	.byte	0x9
	.uahalf	0x5f7
	.uaword	0x324
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"sigType_pau16"
	.byte	0x9
	.uahalf	0x5fd
	.uaword	0x3b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"sigType_pau32"
	.byte	0x9
	.uahalf	0x5ff
	.uaword	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x9
	.string	"Com_Prv_xRxRamBuf_tst"
	.byte	0x9
	.uahalf	0x634
	.uaword	0x79f
	.uleb128 0xf
	.string	"Bfx_Prv_GetBit_u16u8_u8_Inl"
	.byte	0x3
	.uahalf	0x1d1
	.byte	0x1
	.uaword	0x270
	.byte	0x3
	.uaword	0x857
	.uleb128 0x10
	.string	"Data"
	.byte	0x3
	.uahalf	0x1d1
	.uaword	0x1e9
	.uleb128 0x10
	.string	"BitPn"
	.byte	0x3
	.uahalf	0x1d1
	.uaword	0x1be
	.byte	0
	.uleb128 0x11
	.string	"SchM_Enter_Com_TxIpduProtArea_TXCONFIRMATION"
	.byte	0xa
	.uahalf	0x240
	.byte	0x1
	.byte	0x3
	.uleb128 0x12
	.string	"Bfx_Prv_PutBit_u16u8u8_Inl"
	.byte	0x3
	.uahalf	0x281
	.byte	0x1
	.byte	0x3
	.uaword	0x8e9
	.uleb128 0x10
	.string	"Data"
	.byte	0x3
	.uahalf	0x281
	.uaword	0x3b7
	.uleb128 0x10
	.string	"BitPn"
	.byte	0x3
	.uahalf	0x281
	.uaword	0x1be
	.uleb128 0x10
	.string	"Status"
	.byte	0x3
	.uahalf	0x281
	.uaword	0x270
	.uleb128 0x13
	.string	"tmp_u8"
	.byte	0x3
	.uahalf	0x283
	.uaword	0x1be
	.byte	0
	.uleb128 0x11
	.string	"SchM_Exit_Com_TxIpduProtArea_TXCONFIRMATION"
	.byte	0xa
	.uahalf	0x244
	.byte	0x1
	.byte	0x3
	.uleb128 0xf
	.string	"Com_Prv_IsValidTxIpduId"
	.byte	0x2
	.uahalf	0x5b4
	.byte	0x1
	.uaword	0x270
	.byte	0x3
	.uaword	0x953
	.uleb128 0x10
	.string	"idPdu_uo"
	.byte	0x2
	.uahalf	0x5b4
	.uaword	0x2b6
	.byte	0
	.uleb128 0xf
	.string	"Com_Prv_CheckTxIPduStatus"
	.byte	0x2
	.uahalf	0x3df
	.byte	0x1
	.uaword	0x270
	.byte	0x3
	.uaword	0x9a5
	.uleb128 0x10
	.string	"idIpdu_uo"
	.byte	0x2
	.uahalf	0x3df
	.uaword	0x2b6
	.uleb128 0x13
	.string	"txIPduStatus_b"
	.byte	0x2
	.uahalf	0x3e1
	.uaword	0x270
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.string	"Com_Prv_InternalTxConfirmation"
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x1
	.uaword	0xa0d
	.uleb128 0x15
	.uaword	.LASF0
	.byte	0x1
	.byte	0x68
	.uaword	0x2b6
	.uleb128 0x16
	.string	"txIpduRamPtr_pst"
	.byte	0x1
	.byte	0x6a
	.uaword	0x708
	.uleb128 0x16
	.string	"txIpduConstPtr_pcst"
	.byte	0x1
	.byte	0x6b
	.uaword	0x5f0
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"Com_TxConfirmation"
	.byte	0x1
	.byte	0x3b
	.byte	0x1
	.uaword	.LFB162
	.uaword	.LFE162
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xb22
	.uleb128 0x18
	.uaword	.LASF0
	.byte	0x1
	.byte	0x3b
	.uaword	0x2b6
	.uaword	.LLST0
	.uleb128 0x19
	.uaword	0x953
	.uaword	.LBB24
	.uaword	.LBE24
	.byte	0x1
	.byte	0x50
	.uaword	0xa70
	.uleb128 0x1a
	.uaword	0x97b
	.uaword	.LLST1
	.uleb128 0x1b
	.uaword	.LBB25
	.uaword	.LBE25
	.uleb128 0x1c
	.uaword	0x98d
	.byte	0
	.byte	0
	.uleb128 0x19
	.uaword	0x9a5
	.uaword	.LBB26
	.uaword	.LBE26
	.byte	0x1
	.byte	0x52
	.uaword	0xadb
	.uleb128 0x1a
	.uaword	0x9ce
	.uaword	.LLST2
	.uleb128 0x1b
	.uaword	.LBB27
	.uaword	.LBE27
	.uleb128 0x1c
	.uaword	0x9d9
	.uleb128 0x1c
	.uaword	0x9f1
	.uleb128 0x1d
	.uaword	0x88a
	.uaword	.LBB28
	.uaword	.LBE28
	.byte	0x1
	.byte	0x9e
	.uleb128 0x1a
	.uaword	0x8ca
	.uaword	.LLST3
	.uleb128 0x1a
	.uaword	0x8bc
	.uaword	.LLST3
	.uleb128 0x1e
	.uaword	0x8af
	.uleb128 0x1b
	.uaword	.LBB29
	.uaword	.LBE29
	.uleb128 0x1f
	.uaword	0x8d9
	.uaword	.LLST3
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.uaword	.LVL12
	.byte	0x1
	.uaword	0xc69
	.uaword	0xb00
	.uleb128 0x21
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x32
	.uleb128 0x21
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.uleb128 0x21
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x21
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x32
	.byte	0
	.uleb128 0x22
	.uaword	.LVL14
	.byte	0x1
	.uaword	0xc69
	.uleb128 0x21
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x31
	.uleb128 0x21
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.uleb128 0x21
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x21
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x23
	.uaword	0x9a5
	.uaword	.LFB163
	.uaword	.LFE163
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xb7a
	.uleb128 0x24
	.uaword	0x9ce
	.byte	0x1
	.byte	0x54
	.uleb128 0x1c
	.uaword	0x9d9
	.uleb128 0x1c
	.uaword	0x9f1
	.uleb128 0x1d
	.uaword	0x88a
	.uaword	.LBB30
	.uaword	.LBE30
	.byte	0x1
	.byte	0x9e
	.uleb128 0x25
	.uaword	0x8ca
	.byte	0x1
	.uleb128 0x25
	.uaword	0x8bc
	.byte	0x1
	.uleb128 0x1e
	.uaword	0x8af
	.uleb128 0x1b
	.uaword	.LBB31
	.uaword	.LBE31
	.uleb128 0x26
	.uaword	0x8d9
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.uaword	0x781
	.uaword	0xb85
	.uleb128 0x28
	.byte	0
	.uleb128 0x29
	.string	"Com_RxIpduRam_ast"
	.byte	0xb
	.byte	0x6b
	.uaword	0xb7a
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.uaword	0x6ea
	.uaword	0xbab
	.uleb128 0x28
	.byte	0
	.uleb128 0x29
	.string	"Com_TxIpduRam_ast"
	.byte	0xb
	.byte	0x6e
	.uaword	0xba0
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.uaword	0x7f3
	.uaword	0xbd1
	.uleb128 0x28
	.byte	0
	.uleb128 0x2a
	.string	"Com_Prv_xRxRamBuf_acst"
	.byte	0xb
	.uahalf	0x9f4
	.uaword	0xbf2
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.uaword	0xbc6
	.uleb128 0x27
	.uaword	0x5cd
	.uaword	0xc02
	.uleb128 0x28
	.byte	0
	.uleb128 0x29
	.string	"Com_Prv_xTxIpduCfg_acst"
	.byte	0xc
	.byte	0x6d
	.uaword	0xc23
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.uaword	0xbf7
	.uleb128 0x2a
	.string	"Com_InitStatus_en"
	.byte	0xd
	.uahalf	0xec7
	.uaword	0x36a
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.string	"Com_NONE_TransModeInfo_cst"
	.byte	0xd
	.uahalf	0xf12
	.uaword	0x48c
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.byte	0x1
	.string	"Det_ReportError"
	.byte	0xe
	.byte	0x70
	.byte	0x1
	.uaword	0x2a0
	.byte	0x1
	.uleb128 0xe
	.uaword	0x1e9
	.uleb128 0xe
	.uaword	0x1be
	.uleb128 0xe
	.uaword	0x1be
	.uleb128 0xe
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
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL11
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
	.uaword	.LFE162
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL2
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL5
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL7
	.uaword	.LVL10
	.uahalf	0x2
	.byte	0x31
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
	.uaword	.LFB162
	.uaword	.LFE162-.LFB162
	.uaword	.LFB163
	.uaword	.LFE163-.LFB163
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB162
	.uaword	.LFE162
	.uaword	.LFB163
	.uaword	.LFE163
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"idTxPdu_uo"
	.extern	Det_ReportError,STT_FUNC,0
	.extern	Com_Prv_xTxIpduCfg_acst,STT_OBJECT,-1
	.extern	Com_TxIpduRam_ast,STT_OBJECT,-1
	.extern	Com_InitStatus_en,STT_OBJECT,1
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
