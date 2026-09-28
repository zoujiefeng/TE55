	.file	"Com_SwitchIpduTxMode.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Com_SwitchIpduTxMode,"ax",@progbits
	.align 1
	.global	Com_SwitchIpduTxMode
	.type	Com_SwitchIpduTxMode, @function
Com_SwitchIpduTxMode:
.LFB162:
	.file 1 "bsw\\Com\\src\\Com_SwitchIpduTxMode.c"
	.loc 1 57 0
.LVL0:
	.loc 1 60 0
	movh.a	%a15, hi:Com_InitStatus_en
	ld.bu	%d15, [%a15] lo:Com_InitStatus_en
	jz	%d15, .L16
.LVL1:
	.loc 1 64 0
	lt.u	%d15, %d4, 140
	jz	%d15, .L17
.LVL2:
.LBB30:
.LBB31:
	.file 2 "bsw\\Com\\src\\Com_Prv_Inl.h"
	.loc 2 995 0
	movh.a	%a2, hi:Com_TxIpduRam_ast
	lea	%a4, [%a2] lo:Com_TxIpduRam_ast
	sh	%d3, %d4, 4
	addsc.a	%a15, %a4, %d3, 0
.LBB32:
.LBB33:
	.file 3 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
	.loc 3 467 0
	ld.h	%d15, [%a15] 10
.LBE33:
.LBE32:
.LBE31:
.LBE30:
	.loc 1 76 0
	jz.t	%d15, 0, .L1
.LBB34:
	.loc 1 81 0
	movh.a	%a2, hi:Com_Prv_xTxIpduCfg_acst
	mov.d	%d2, %a2
	addi	%d15, %d2, lo:Com_Prv_xTxIpduCfg_acst
	madd	%d2, %d15, %d4, 28
	mov.a	%a2, %d2
.LVL3:
	.loc 1 90 0
	ld.bu	%d2, [%a15] 13
.LVL4:
	extr.u	%d15, %d2, 2, 1
	jeq	%d5, %d15, .L1
.LBB35:
.LBB36:
.LBB37:
	.loc 3 698 0
	seln	%d6, %d5, %d5, 4
	andn	%d2, %d2, ~(-5)
	or	%d2, %d6
	st.b	[%a15] 13, %d2
.LVL5:
.LBE37:
.LBE36:
.LBB38:
.LBB39:
.LBB40:
.LBB41:
	.loc 3 555 0
	ld.hu	%d2, [%a2] 22
.LBE41:
.LBE40:
.LBE39:
.LBE38:
	.loc 1 93 0
	mov	%d15, 0
.LVL6:
	ld.w	%d6, [%a2] 4
.LVL7:
.LBB46:
.LBB44:
.LBB43:
.LBB42:
	.loc 3 555 0
	extr.u	%d2, %d2, 1, 2
.LBE42:
.LBE43:
	.loc 2 261 0
	jnz	%d5, .L5
	.loc 2 263 0
	jeq	%d2, 1, .L13
	.loc 2 268 0
	jnz	%d2, .L14
	.loc 2 271 0
	addi	%d6, %d6, 8
.L14:
	st.w	[%a15]0, %d6
.LVL8:
.L7:
.LBE44:
.LBE46:
.LBB47:
.LBB48:
	.loc 3 802 0
	addsc.a	%a2, %a4, %d3, 0
.LVL9:
.LBE48:
.LBE47:
	.loc 1 114 0
	insert	%d15, %d15, 1, 0, 1
.LVL10:
.LBB54:
.LBB49:
	.loc 3 802 0
	lea	%a15, [%a2] 12
.LVL11:
.LBE49:
.LBE54:
	.loc 1 102 0
	ld.a	%a2, [%a2]0
.LBB55:
.LBB50:
	.loc 3 802 0
	ld.bu	%d3, [%a15] 1
.LVL12:
.LBE50:
.LBE55:
	.loc 1 116 0
	insert	%d15, %d15, 1, 1, 1
.LBB56:
.LBB51:
	.loc 3 803 0
	ld.bu	%d2, [%a2] 7
.LBE51:
.LBE56:
	.loc 1 118 0
	insert	%d15, %d15, 1, 5, 1
.LBB57:
.LBB52:
	.loc 3 802 0
	insert	%d2, %d3, %d2, 0, 2
.LBE52:
.LBE57:
	.loc 1 129 0
	mov	%d5, %d15
.LVL13:
.LBB58:
.LBB53:
	.loc 3 802 0
	st.b	[%a15] 1, %d2
.LVL14:
.LBE53:
.LBE58:
	.loc 1 129 0
	call	Com_Prv_SendIpdu
.LVL15:
.L1:
	ret
.LVL16:
.L16:
.LBE35:
.LBE34:
	.loc 1 62 0
	mov	%e4, 50
.LVL17:
	mov	%d6, 39
	mov	%d7, 2
	j	Det_ReportError
.LVL18:
.L5:
.LBB61:
.LBB60:
.LBB59:
.LBB45:
	.loc 2 281 0
	jne	%d2, 2, .L14
.L13:
	.loc 2 283 0
	movh	%d2, hi:Com_NONE_TransModeInfo_cst
	addi	%d2, %d2, lo:Com_NONE_TransModeInfo_cst
	st.w	[%a15]0, %d2
.LVL19:
	j	.L7
.LVL20:
.L17:
.LBE45:
.LBE59:
.LBE60:
.LBE61:
	.loc 1 66 0
	mov	%e4, 50
.LVL21:
	mov	%d6, 39
	mov	%d7, 1
	j	Det_ReportError
.LVL22:
.LFE162:
	.size	Com_SwitchIpduTxMode, .-Com_SwitchIpduTxMode
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
	.uaword	0xf30
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Com\\src\\Com_SwitchIpduTxMode.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0xa0
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
	.uaword	0x1cd
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
	.uaword	0x1f9
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
	.uaword	0x235
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
	.uaword	0x1cd
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
	.uaword	0x1c0
	.uleb128 0x3
	.string	"PduIdType"
	.byte	0x6
	.byte	0x2c
	.uaword	0x1eb
	.uleb128 0x3
	.string	"PduLengthType"
	.byte	0x6
	.byte	0x30
	.uaword	0x1eb
	.uleb128 0x4
	.byte	0xc
	.byte	0x6
	.byte	0x39
	.uaword	0x326
	.uleb128 0x5
	.string	"SduDataPtr"
	.byte	0x6
	.byte	0x3b
	.uaword	0x326
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"MetaDataPtr"
	.byte	0x6
	.byte	0x3c
	.uaword	0x326
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"SduLength"
	.byte	0x6
	.byte	0x3d
	.uaword	0x2c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x1c0
	.uleb128 0x3
	.string	"PduInfoType"
	.byte	0x6
	.byte	0x3e
	.uaword	0x2de
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x7
	.byte	0x1
	.byte	0x7
	.byte	0x7d
	.uaword	0x36c
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
	.uaword	0x34b
	.uleb128 0x9
	.string	"Com_TxIntSignalId_tuo"
	.byte	0x8
	.uahalf	0x1c1
	.uaword	0x1c0
	.uleb128 0x9
	.string	"Com_MainFunc_tuo"
	.byte	0x8
	.uahalf	0x23e
	.uaword	0x1c0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x1eb
	.uleb128 0x6
	.byte	0x4
	.uaword	0x227
	.uleb128 0x4
	.byte	0x1
	.byte	0x9
	.byte	0x32
	.uaword	0x485
	.uleb128 0xa
	.string	"isEventTrig_u1"
	.byte	0x9
	.byte	0x34
	.uaword	0x235
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"isModeChangd_u1"
	.byte	0x9
	.byte	0x35
	.uaword	0x235
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"isSigTriggered_u1"
	.byte	0x9
	.byte	0x36
	.uaword	0x235
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"isTimeoutReq_u1"
	.byte	0x9
	.byte	0x37
	.uaword	0x235
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"ignoreRepetitions_u1"
	.byte	0x9
	.byte	0x38
	.uaword	0x235
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"isSwtIpduTxMode_u1"
	.byte	0x9
	.byte	0x39
	.uaword	0x235
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Com_SendIpduInfo_tst"
	.byte	0x9
	.byte	0x3a
	.uaword	0x3c5
	.uleb128 0x4
	.byte	0x8
	.byte	0x9
	.byte	0x4b
	.uaword	0x52b
	.uleb128 0x5
	.string	"timePeriod_u16"
	.byte	0x9
	.byte	0x4d
	.uaword	0x1eb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"timeOffset_u16"
	.byte	0x9
	.byte	0x4e
	.uaword	0x1eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x5
	.string	"repetitionPeriod_u16"
	.byte	0x9
	.byte	0x4f
	.uaword	0x1eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"numOfRepetitions_u8"
	.byte	0x9
	.byte	0x50
	.uaword	0x1c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x5
	.string	"mode_u8"
	.byte	0x9
	.byte	0x57
	.uaword	0x1c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.byte	0
	.uleb128 0x3
	.string	"Com_TransModeInfo_tst"
	.byte	0x9
	.byte	0x5b
	.uaword	0x4a1
	.uleb128 0x3
	.string	"Com_TMConstPtr_tpcst"
	.byte	0x9
	.byte	0x65
	.uaword	0x564
	.uleb128 0x6
	.byte	0x4
	.uaword	0x56a
	.uleb128 0xb
	.uaword	0x52b
	.uleb128 0xc
	.byte	0x1c
	.byte	0x9
	.uahalf	0x322
	.uaword	0x68a
	.uleb128 0xd
	.string	"buffPtr_pu8"
	.byte	0x9
	.uahalf	0x324
	.uaword	0x326
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"tMConstPtr_pcst"
	.byte	0x9
	.uahalf	0x326
	.uaword	0x564
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"callOut_pfct"
	.byte	0x9
	.uahalf	0x329
	.uaword	0x6a5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"size_uo"
	.byte	0x9
	.uahalf	0x342
	.uaword	0x2c9
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"minDelayTime_u16"
	.byte	0x9
	.uahalf	0x34d
	.uaword	0x1eb
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xd
	.string	"numOfSig_u16"
	.byte	0x9
	.uahalf	0x34f
	.uaword	0x1eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"idPduRSrcPdu_uo"
	.byte	0x9
	.uahalf	0x354
	.uaword	0x2b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0xd
	.string	"idTxSig_uo"
	.byte	0x9
	.uahalf	0x356
	.uaword	0x382
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"txIPduFields_u16"
	.byte	0x9
	.uahalf	0x375
	.uaword	0x1eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0xd
	.string	"idMainFunc_uo"
	.byte	0x9
	.uahalf	0x379
	.uaword	0x3a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"paddingByte_u8"
	.byte	0x9
	.uahalf	0x37a
	.uaword	0x1c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x19
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.uaword	0x272
	.uaword	0x69f
	.uleb128 0xf
	.uaword	0x2b8
	.uleb128 0xf
	.uaword	0x69f
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x32c
	.uleb128 0x6
	.byte	0x4
	.uaword	0x68a
	.uleb128 0x9
	.string	"Com_Prv_xTxIpduInfoCfg_tst"
	.byte	0x9
	.uahalf	0x37c
	.uaword	0x56f
	.uleb128 0x9
	.string	"Com_TxIpduCfg_tpcst"
	.byte	0x9
	.uahalf	0x385
	.uaword	0x6ea
	.uleb128 0x6
	.byte	0x4
	.uaword	0x6f0
	.uleb128 0xb
	.uaword	0x6ab
	.uleb128 0xc
	.byte	0x10
	.byte	0x9
	.uahalf	0x524
	.uaword	0x7c8
	.uleb128 0xd
	.string	"currentTxModePtr_pcst"
	.byte	0x9
	.uahalf	0x526
	.uaword	0x548
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"cntrMinDelayTime_u16"
	.byte	0x9
	.uahalf	0x52d
	.uaword	0x1eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"cntrTimePeriod_u16"
	.byte	0x9
	.uahalf	0x52e
	.uaword	0x1eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xd
	.string	"cntrRepPeriod_u16"
	.byte	0x9
	.uahalf	0x532
	.uaword	0x1eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"txFlags_u16"
	.byte	0x9
	.uahalf	0x555
	.uaword	0x1eb
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xd
	.string	"cntrRepetitions_u8"
	.byte	0x9
	.uahalf	0x556
	.uaword	0x1c0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"transMode_u8"
	.byte	0x9
	.uahalf	0x562
	.uaword	0x1c0
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.byte	0
	.uleb128 0x9
	.string	"Com_TxIpduRamData_tst"
	.byte	0x9
	.uahalf	0x564
	.uaword	0x6f5
	.uleb128 0x9
	.string	"Com_TxIpduRam_tpst"
	.byte	0x9
	.uahalf	0x56d
	.uaword	0x801
	.uleb128 0x6
	.byte	0x4
	.uaword	0x7c8
	.uleb128 0xc
	.byte	0x6
	.byte	0x9
	.uahalf	0x584
	.uaword	0x85f
	.uleb128 0xd
	.string	"rxIPduLength_uo"
	.byte	0x9
	.uahalf	0x586
	.uaword	0x2c9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"cntrRxTimeout_u16"
	.byte	0x9
	.uahalf	0x58b
	.uaword	0x1eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xd
	.string	"rxFlags_u8"
	.byte	0x9
	.uahalf	0x5a6
	.uaword	0x1c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x9
	.string	"Com_RxIpduRamData_tst"
	.byte	0x9
	.uahalf	0x5a8
	.uaword	0x807
	.uleb128 0xc
	.byte	0xc
	.byte	0x9
	.uahalf	0x5f5
	.uaword	0x8d1
	.uleb128 0xd
	.string	"sigType_pau8"
	.byte	0x9
	.uahalf	0x5f7
	.uaword	0x326
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"sigType_pau16"
	.byte	0x9
	.uahalf	0x5fd
	.uaword	0x3b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"sigType_pau32"
	.byte	0x9
	.uahalf	0x5ff
	.uaword	0x3bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x9
	.string	"Com_Prv_xRxRamBuf_tst"
	.byte	0x9
	.uahalf	0x634
	.uaword	0x87d
	.uleb128 0x10
	.string	"Bfx_Prv_GetBits_u16u8u8_u16_Inl"
	.byte	0x3
	.uahalf	0x229
	.byte	0x1
	.uaword	0x1eb
	.byte	0x3
	.uaword	0x945
	.uleb128 0x11
	.string	"Data"
	.byte	0x3
	.uahalf	0x229
	.uaword	0x1eb
	.uleb128 0x12
	.uaword	.LASF0
	.byte	0x3
	.uahalf	0x229
	.uaword	0x1c0
	.uleb128 0x11
	.string	"BitLn"
	.byte	0x3
	.uahalf	0x229
	.uaword	0x1c0
	.byte	0
	.uleb128 0x13
	.string	"Com_Prv_SetCurrentTxModePtr"
	.byte	0x2
	.byte	0xf8
	.byte	0x1
	.byte	0x3
	.uaword	0x9ad
	.uleb128 0x14
	.uaword	.LASF1
	.byte	0x2
	.byte	0xf9
	.uaword	0x7e6
	.uleb128 0x14
	.uaword	.LASF2
	.byte	0x2
	.byte	0xfa
	.uaword	0x6ce
	.uleb128 0x15
	.string	"modeRequested_b"
	.byte	0x2
	.byte	0xfb
	.uaword	0x272
	.uleb128 0x16
	.string	"tmsStatus_u16"
	.byte	0x2
	.byte	0xfe
	.uaword	0x1eb
	.byte	0
	.uleb128 0x10
	.string	"Bfx_Prv_GetBit_u16u8_u8_Inl"
	.byte	0x3
	.uahalf	0x1d1
	.byte	0x1
	.uaword	0x272
	.byte	0x3
	.uaword	0x9f3
	.uleb128 0x11
	.string	"Data"
	.byte	0x3
	.uahalf	0x1d1
	.uaword	0x1eb
	.uleb128 0x11
	.string	"BitPn"
	.byte	0x3
	.uahalf	0x1d1
	.uaword	0x1c0
	.byte	0
	.uleb128 0x10
	.string	"Com_Prv_IsValidTxIpduId"
	.byte	0x2
	.uahalf	0x5b4
	.byte	0x1
	.uaword	0x272
	.byte	0x3
	.uaword	0xa26
	.uleb128 0x12
	.uaword	.LASF3
	.byte	0x2
	.uahalf	0x5b4
	.uaword	0x2b8
	.byte	0
	.uleb128 0x10
	.string	"Com_Prv_CheckTxIPduStatus"
	.byte	0x2
	.uahalf	0x3df
	.byte	0x1
	.uaword	0x272
	.byte	0x3
	.uaword	0xa78
	.uleb128 0x11
	.string	"idIpdu_uo"
	.byte	0x2
	.uahalf	0x3df
	.uaword	0x2b8
	.uleb128 0x17
	.string	"txIPduStatus_b"
	.byte	0x2
	.uahalf	0x3e1
	.uaword	0x272
	.byte	0
	.uleb128 0x10
	.string	"Bfx_Prv_GetBit_u8u8_u8_Inl"
	.byte	0x3
	.uahalf	0x1fd
	.byte	0x1
	.uaword	0x272
	.byte	0x3
	.uaword	0xabd
	.uleb128 0x11
	.string	"Data"
	.byte	0x3
	.uahalf	0x1fd
	.uaword	0x1c0
	.uleb128 0x11
	.string	"BitPn"
	.byte	0x3
	.uahalf	0x1fd
	.uaword	0x1c0
	.byte	0
	.uleb128 0x18
	.string	"SchM_Enter_Com_TxIpduProtArea_SWITCHTXIPDU"
	.byte	0xa
	.uahalf	0x27e
	.byte	0x1
	.byte	0x3
	.uleb128 0x19
	.string	"Bfx_Prv_PutBit_u8u8u8_Inl"
	.byte	0x3
	.uahalf	0x2b5
	.byte	0x1
	.byte	0x3
	.uaword	0xb4c
	.uleb128 0x11
	.string	"Data"
	.byte	0x3
	.uahalf	0x2b5
	.uaword	0x326
	.uleb128 0x11
	.string	"BitPn"
	.byte	0x3
	.uahalf	0x2b5
	.uaword	0x1c0
	.uleb128 0x11
	.string	"Status"
	.byte	0x3
	.uahalf	0x2b5
	.uaword	0x272
	.uleb128 0x17
	.string	"tmp_u8"
	.byte	0x3
	.uahalf	0x2b7
	.uaword	0x1c0
	.byte	0
	.uleb128 0x19
	.string	"Bfx_Prv_PutBits_u8u8u8u8_Inl"
	.byte	0x3
	.uahalf	0x31f
	.byte	0x1
	.byte	0x3
	.uaword	0xbab
	.uleb128 0x11
	.string	"Data"
	.byte	0x3
	.uahalf	0x31f
	.uaword	0x326
	.uleb128 0x12
	.uaword	.LASF0
	.byte	0x3
	.uahalf	0x31f
	.uaword	0x1c0
	.uleb128 0x11
	.string	"BitLn"
	.byte	0x3
	.uahalf	0x31f
	.uaword	0x1c0
	.uleb128 0x11
	.string	"Pattern"
	.byte	0x3
	.uahalf	0x31f
	.uaword	0x1c0
	.byte	0
	.uleb128 0x18
	.string	"SchM_Exit_Com_TxIpduProtArea_SWITCHTXIPDU"
	.byte	0xa
	.uahalf	0x282
	.byte	0x1
	.byte	0x3
	.uleb128 0x1a
	.byte	0x1
	.string	"Com_SwitchIpduTxMode"
	.byte	0x1
	.byte	0x38
	.byte	0x1
	.uaword	.LFB162
	.uaword	.LFE162
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xdee
	.uleb128 0x1b
	.uaword	.LASF3
	.byte	0x1
	.byte	0x38
	.uaword	0x2b8
	.uaword	.LLST0
	.uleb128 0x1c
	.string	"mode_b"
	.byte	0x1
	.byte	0x38
	.uaword	0x272
	.uaword	.LLST1
	.uleb128 0x1d
	.uaword	0xa26
	.uaword	.LBB30
	.uaword	.LBE30
	.byte	0x1
	.byte	0x4c
	.uaword	0xc71
	.uleb128 0x1e
	.uaword	0xa4e
	.uaword	.LLST2
	.uleb128 0x1f
	.uaword	.LBB31
	.uaword	.LBE31
	.uleb128 0x20
	.uaword	0xa60
	.uleb128 0x21
	.uaword	0x9ad
	.uaword	.LBB32
	.uaword	.LBE32
	.byte	0x2
	.uahalf	0x3e3
	.uleb128 0x1e
	.uaword	0x9e4
	.uaword	.LLST3
	.uleb128 0x22
	.uaword	0x9d7
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.uaword	.Ldebug_ranges0+0
	.uaword	0xda7
	.uleb128 0x24
	.uaword	.LASF2
	.byte	0x1
	.byte	0x4e
	.uaword	0x6ce
	.uaword	.LLST4
	.uleb128 0x24
	.uaword	.LASF1
	.byte	0x1
	.byte	0x4f
	.uaword	0x7e6
	.uaword	.LLST5
	.uleb128 0x25
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0x26
	.string	"sendIpduFlag_st"
	.byte	0x1
	.byte	0x5d
	.uaword	0x485
	.uaword	.LLST6
	.uleb128 0x1d
	.uaword	0xaee
	.uaword	.LBB36
	.uaword	.LBE36
	.byte	0x1
	.byte	0x62
	.uaword	0xcf6
	.uleb128 0x1e
	.uaword	0xb2d
	.uaword	.LLST7
	.uleb128 0x1e
	.uaword	0xb1f
	.uaword	.LLST8
	.uleb128 0x22
	.uaword	0xb12
	.uleb128 0x1f
	.uaword	.LBB37
	.uaword	.LBE37
	.uleb128 0x27
	.uaword	0xb3c
	.uaword	.LLST9
	.byte	0
	.byte	0
	.uleb128 0x28
	.uaword	0x945
	.uaword	.LBB38
	.uaword	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0x64
	.uaword	0xd65
	.uleb128 0x1e
	.uaword	0x96a
	.uaword	.LLST10
	.uleb128 0x1e
	.uaword	0x975
	.uaword	.LLST11
	.uleb128 0x1e
	.uaword	0x975
	.uaword	.LLST11
	.uleb128 0x1e
	.uaword	0x980
	.uaword	.LLST13
	.uleb128 0x25
	.uaword	.Ldebug_ranges0+0x30
	.uleb128 0x20
	.uaword	0x997
	.uleb128 0x29
	.uaword	0x8ef
	.uaword	.LBB40
	.uaword	.Ldebug_ranges0+0x50
	.byte	0x2
	.uahalf	0x100
	.uleb128 0x1e
	.uaword	0x936
	.uaword	.LLST14
	.uleb128 0x1e
	.uaword	0x92a
	.uaword	.LLST15
	.uleb128 0x1e
	.uaword	0x91d
	.uaword	.LLST16
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
	.uaword	0xb4c
	.uaword	.LBB47
	.uaword	.Ldebug_ranges0+0x68
	.byte	0x1
	.byte	0x66
	.uaword	0xd95
	.uleb128 0x22
	.uaword	0xb9a
	.uleb128 0x1e
	.uaword	0xb8c
	.uaword	.LLST17
	.uleb128 0x1e
	.uaword	0xb80
	.uaword	.LLST18
	.uleb128 0x22
	.uaword	0xb73
	.byte	0
	.uleb128 0x2a
	.uaword	.LVL15
	.uaword	0xedd
	.uleb128 0x2b
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uaword	.LVL18
	.byte	0x1
	.uaword	0xf04
	.uaword	0xdcc
	.uleb128 0x2b
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x32
	.uleb128 0x2b
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x8
	.byte	0x27
	.uleb128 0x2b
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x2b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x32
	.byte	0
	.uleb128 0x2d
	.uaword	.LVL22
	.byte	0x1
	.uaword	0xf04
	.uleb128 0x2b
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x31
	.uleb128 0x2b
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x8
	.byte	0x27
	.uleb128 0x2b
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x2b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uaword	0x85f
	.uaword	0xdf9
	.uleb128 0x2f
	.byte	0
	.uleb128 0x30
	.string	"Com_RxIpduRam_ast"
	.byte	0xb
	.byte	0x6b
	.uaword	0xdee
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.uaword	0x7c8
	.uaword	0xe1f
	.uleb128 0x2f
	.byte	0
	.uleb128 0x30
	.string	"Com_TxIpduRam_ast"
	.byte	0xb
	.byte	0x6e
	.uaword	0xe14
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.uaword	0x8d1
	.uaword	0xe45
	.uleb128 0x2f
	.byte	0
	.uleb128 0x31
	.string	"Com_Prv_xRxRamBuf_acst"
	.byte	0xb
	.uahalf	0x9f4
	.uaword	0xe66
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.uaword	0xe3a
	.uleb128 0x2e
	.uaword	0x6ab
	.uaword	0xe76
	.uleb128 0x2f
	.byte	0
	.uleb128 0x30
	.string	"Com_Prv_xTxIpduCfg_acst"
	.byte	0xc
	.byte	0x6d
	.uaword	0xe97
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.uaword	0xe6b
	.uleb128 0x31
	.string	"Com_InitStatus_en"
	.byte	0xd
	.uahalf	0xec7
	.uaword	0x36c
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.string	"Com_NONE_TransModeInfo_cst"
	.byte	0xd
	.uahalf	0xf12
	.uaword	0x56a
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.byte	0x1
	.string	"Com_Prv_SendIpdu"
	.byte	0xd
	.uahalf	0xd86
	.byte	0x1
	.byte	0x1
	.uaword	0xf04
	.uleb128 0xf
	.uaword	0x2b8
	.uleb128 0xf
	.uaword	0x485
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.string	"Det_ReportError"
	.byte	0xe
	.byte	0x70
	.byte	0x1
	.uaword	0x2a2
	.byte	0x1
	.uleb128 0xf
	.uaword	0x1eb
	.uleb128 0xf
	.uaword	0x1c0
	.uleb128 0xf
	.uaword	0x1c0
	.uleb128 0xf
	.uaword	0x1c0
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xa
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
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
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
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x5
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
	.uleb128 0x25
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
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
	.uleb128 0x2
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
	.uleb128 0x29
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uaword	.LVL15-1
	.uahalf	0x1
	.byte	0x54
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
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL21
	.uaword	.LFE162
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL13
	.uaword	.LVL16
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL17
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
	.uaword	.LFE162
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL2
	.uaword	.LVL15-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL18
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL2
	.uaword	.LVL16
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LVL20
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL4
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL18
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL3
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x6
	.byte	0x84
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LVL15-1
	.uahalf	0x8
	.byte	0x74
	.sleb128 0
	.byte	0x34
	.byte	0x24
	.byte	0x84
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL10
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL6
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL18
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL6
	.uaword	.LVL15
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LVL20
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL6
	.uaword	.LVL13
	.uahalf	0x7
	.byte	0x75
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LVL20
	.uahalf	0x7
	.byte	0x75
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL7
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x6
	.byte	0x84
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LVL15-1
	.uahalf	0x8
	.byte	0x74
	.sleb128 0
	.byte	0x34
	.byte	0x24
	.byte	0x84
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL7
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL18
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL7
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL18
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL7
	.uaword	.LVL15
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LVL20
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL7
	.uaword	.LVL15
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LVL20
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL7
	.uaword	.LVL9
	.uahalf	0x2
	.byte	0x82
	.sleb128 22
	.uaword	.LVL18
	.uaword	.LVL20
	.uahalf	0x2
	.byte	0x82
	.sleb128 22
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL8
	.uaword	.LVL15
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL8
	.uaword	.LVL15
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x1c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB162
	.uaword	.LFE162-.LFB162
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB34
	.uaword	.LBE34
	.uaword	.LBB61
	.uaword	.LBE61
	.uaword	0
	.uaword	0
	.uaword	.LBB35
	.uaword	.LBE35
	.uaword	.LBB60
	.uaword	.LBE60
	.uaword	0
	.uaword	0
	.uaword	.LBB38
	.uaword	.LBE38
	.uaword	.LBB46
	.uaword	.LBE46
	.uaword	.LBB59
	.uaword	.LBE59
	.uaword	0
	.uaword	0
	.uaword	.LBB40
	.uaword	.LBE40
	.uaword	.LBB43
	.uaword	.LBE43
	.uaword	0
	.uaword	0
	.uaword	.LBB47
	.uaword	.LBE47
	.uaword	.LBB54
	.uaword	.LBE54
	.uaword	.LBB55
	.uaword	.LBE55
	.uaword	.LBB56
	.uaword	.LBE56
	.uaword	.LBB57
	.uaword	.LBE57
	.uaword	.LBB58
	.uaword	.LBE58
	.uaword	0
	.uaword	0
	.uaword	.LFB162
	.uaword	.LFE162
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF1:
	.string	"txIpduRamPtr_pst"
.LASF3:
	.string	"idPdu_uo"
.LASF0:
	.string	"BitStartPn"
.LASF2:
	.string	"txIpduConstPtr_pcst"
	.extern	Com_NONE_TransModeInfo_cst,STT_OBJECT,8
	.extern	Det_ReportError,STT_FUNC,0
	.extern	Com_Prv_SendIpdu,STT_FUNC,0
	.extern	Com_Prv_xTxIpduCfg_acst,STT_OBJECT,-1
	.extern	Com_TxIpduRam_ast,STT_OBJECT,-1
	.extern	Com_InitStatus_en,STT_OBJECT,1
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
