	.file	"Com_TriggerTransmit.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Com_TriggerTransmit,"ax",@progbits
	.align 1
	.global	Com_TriggerTransmit
	.type	Com_TriggerTransmit, @function
Com_TriggerTransmit:
.LFB162:
	.file 1 "bsw\\Com\\src\\Com_TriggerTransmit.c"
	.loc 1 61 0
.LVL0:
	.loc 1 79 0
	movh.a	%a2, hi:Com_InitStatus_en
	ld.bu	%d2, [%a2] lo:Com_InitStatus_en
	.loc 1 61 0
	mov	%d15, %d4
	mov.aa	%a15, %a4
	.loc 1 79 0
	jz	%d2, .L13
	.loc 1 83 0
	jz.a	%a4, .L14
.LVL1:
	.loc 1 87 0
	lt.u	%d2, %d4, 140
	jz	%d2, .L15
.LVL2:
	.loc 1 108 0
	movh.a	%a12, hi:Com_Prv_xTxIpduCfg_acst
	mov.d	%d3, %a12
.LBB16:
.LBB17:
	.file 2 "bsw\\Com\\src\\Com_Prv_Inl.h"
	.loc 2 995 0
	movh.a	%a2, hi:Com_TxIpduRam_ast
.LBE17:
.LBE16:
	.loc 1 108 0
	addi	%d2, %d3, lo:Com_Prv_xTxIpduCfg_acst
	madd	%d3, %d2, %d4, 28
	mov.a	%a12, %d3
.LBB23:
.LBB20:
	.loc 2 995 0
	mov.d	%d3, %a2
.LBE20:
.LBE23:
	.loc 1 108 0
	ld.hu	%d9, [%a12] 22
.LVL3:
.LBB24:
.LBB21:
	.loc 2 995 0
	addi	%d2, %d3, lo:Com_TxIpduRam_ast
	madd	%d3, %d2, %d4, 16
.LBE21:
.LBE24:
	.loc 1 112 0
	ld.hu	%d8, [%a12] 12
.LVL4:
.LBB25:
.LBB22:
	.loc 2 995 0
	mov.a	%a2, %d3
.LBB18:
.LBB19:
	.file 3 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
	.loc 3 467 0
	ld.h	%d2, [%a2] 10
.LBE19:
.LBE18:
.LBE22:
.LBE25:
	.loc 1 115 0
	jz.t	%d2, 0, .L16
.LVL5:
	.loc 1 142 0
	ld.a	%a4, [%a4]0
.LVL6:
	ld.a	%a5, [%a12]0
	mov	%d4, %d8
.LVL7:
	call	Com_ByteCopy
.LVL8:
	.loc 1 144 0
	st.h	[%a15] 8, %d8
.LVL9:
	.loc 1 170 0
	jnz.t	%d9, 9, .L8
	mov	%d2, 0
	.loc 1 180 0
	ret
.LVL10:
.L16:
	.loc 1 142 0
	ld.a	%a4, [%a4]0
.LVL11:
	ld.a	%a5, [%a12]0
	mov	%d4, %d8
.LVL12:
	call	Com_ByteCopy
.LVL13:
	.loc 1 144 0
	st.h	[%a15] 8, %d8
	mov	%d2, 1
	ret
.LVL14:
.L13:
	.loc 1 81 0
	mov	%e4, 50
.LVL15:
	mov	%d6, 65
	mov	%d7, 2
	call	Det_ReportError
.LVL16:
	.loc 1 76 0
	mov	%d2, 1
	ret
.LVL17:
.L8:
	.loc 1 174 0
	ld.a	%a2, [%a12] 8
	mov	%d4, %d15
	mov.aa	%a4, %a15
	calli	%a2
.LVL18:
	mov	%d2, 0
	ret
.LVL19:
.L15:
	.loc 1 89 0
	mov	%e4, 50
.LVL20:
	mov	%d6, 65
	mov	%d7, 1
	call	Det_ReportError
.LVL21:
	.loc 1 76 0
	mov	%d2, 1
	ret
.LVL22:
.L14:
	.loc 1 85 0
	mov	%e4, 50
.LVL23:
	mov	%d6, 65
	mov	%d7, 3
	call	Det_ReportError
.LVL24:
	.loc 1 76 0
	mov	%d2, 1
	ret
.LFE162:
	.size	Com_TriggerTransmit, .-Com_TriggerTransmit
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
	.uaword	0xc34
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Com\\src\\Com_TriggerTransmit.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x28
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
	.byte	0x4
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
	.uleb128 0x3
	.string	"uint32"
	.byte	0x4
	.byte	0x6a
	.uaword	0x234
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
	.byte	0x5
	.byte	0x60
	.uaword	0x1bf
	.uleb128 0x3
	.string	"PduIdType"
	.byte	0x6
	.byte	0x2c
	.uaword	0x1ea
	.uleb128 0x3
	.string	"PduLengthType"
	.byte	0x6
	.byte	0x30
	.uaword	0x1ea
	.uleb128 0x4
	.byte	0xc
	.byte	0x6
	.byte	0x39
	.uaword	0x325
	.uleb128 0x5
	.string	"SduDataPtr"
	.byte	0x6
	.byte	0x3b
	.uaword	0x325
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"MetaDataPtr"
	.byte	0x6
	.byte	0x3c
	.uaword	0x325
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"SduLength"
	.byte	0x6
	.byte	0x3d
	.uaword	0x2c8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x1bf
	.uleb128 0x3
	.string	"PduInfoType"
	.byte	0x6
	.byte	0x3e
	.uaword	0x2dd
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x7
	.byte	0x1
	.byte	0x7
	.byte	0x7d
	.uaword	0x36b
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
	.uaword	0x34a
	.uleb128 0x9
	.string	"Com_TxIntSignalId_tuo"
	.byte	0x8
	.uahalf	0x1c1
	.uaword	0x1bf
	.uleb128 0x9
	.string	"Com_MainFunc_tuo"
	.byte	0x8
	.uahalf	0x23e
	.uaword	0x1bf
	.uleb128 0xa
	.uaword	0x1bf
	.uleb128 0x6
	.byte	0x4
	.uaword	0x1ea
	.uleb128 0x6
	.byte	0x4
	.uaword	0x3b8
	.uleb128 0x6
	.byte	0x4
	.uaword	0x226
	.uleb128 0x4
	.byte	0x8
	.byte	0x9
	.byte	0x4b
	.uaword	0x459
	.uleb128 0x5
	.string	"timePeriod_u16"
	.byte	0x9
	.byte	0x4d
	.uaword	0x1ea
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"timeOffset_u16"
	.byte	0x9
	.byte	0x4e
	.uaword	0x1ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x5
	.string	"repetitionPeriod_u16"
	.byte	0x9
	.byte	0x4f
	.uaword	0x1ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"numOfRepetitions_u8"
	.byte	0x9
	.byte	0x50
	.uaword	0x1bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x5
	.string	"mode_u8"
	.byte	0x9
	.byte	0x57
	.uaword	0x1bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.byte	0
	.uleb128 0x3
	.string	"Com_TransModeInfo_tst"
	.byte	0x9
	.byte	0x5b
	.uaword	0x3cf
	.uleb128 0x3
	.string	"Com_TMConstPtr_tpcst"
	.byte	0x9
	.byte	0x65
	.uaword	0x492
	.uleb128 0x6
	.byte	0x4
	.uaword	0x498
	.uleb128 0xa
	.uaword	0x459
	.uleb128 0xb
	.byte	0x1c
	.byte	0x9
	.uahalf	0x322
	.uaword	0x5b8
	.uleb128 0xc
	.string	"buffPtr_pu8"
	.byte	0x9
	.uahalf	0x324
	.uaword	0x325
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"tMConstPtr_pcst"
	.byte	0x9
	.uahalf	0x326
	.uaword	0x492
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"callOut_pfct"
	.byte	0x9
	.uahalf	0x329
	.uaword	0x5d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.string	"size_uo"
	.byte	0x9
	.uahalf	0x342
	.uaword	0x2c8
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.string	"minDelayTime_u16"
	.byte	0x9
	.uahalf	0x34d
	.uaword	0x1ea
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xc
	.string	"numOfSig_u16"
	.byte	0x9
	.uahalf	0x34f
	.uaword	0x1ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.string	"idPduRSrcPdu_uo"
	.byte	0x9
	.uahalf	0x354
	.uaword	0x2b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0xc
	.string	"idTxSig_uo"
	.byte	0x9
	.uahalf	0x356
	.uaword	0x381
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xc
	.string	"txIPduFields_u16"
	.byte	0x9
	.uahalf	0x375
	.uaword	0x1ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0xc
	.string	"idMainFunc_uo"
	.byte	0x9
	.uahalf	0x379
	.uaword	0x39f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xc
	.string	"paddingByte_u8"
	.byte	0x9
	.uahalf	0x37a
	.uaword	0x1bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x19
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.uaword	0x271
	.uaword	0x5cd
	.uleb128 0xe
	.uaword	0x2b7
	.uleb128 0xe
	.uaword	0x5cd
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x32b
	.uleb128 0x6
	.byte	0x4
	.uaword	0x5b8
	.uleb128 0x9
	.string	"Com_Prv_xTxIpduInfoCfg_tst"
	.byte	0x9
	.uahalf	0x37c
	.uaword	0x49d
	.uleb128 0x9
	.string	"Com_TxIpduCfg_tpcst"
	.byte	0x9
	.uahalf	0x385
	.uaword	0x618
	.uleb128 0x6
	.byte	0x4
	.uaword	0x61e
	.uleb128 0xa
	.uaword	0x5d9
	.uleb128 0xb
	.byte	0x10
	.byte	0x9
	.uahalf	0x524
	.uaword	0x6f6
	.uleb128 0xc
	.string	"currentTxModePtr_pcst"
	.byte	0x9
	.uahalf	0x526
	.uaword	0x476
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"cntrMinDelayTime_u16"
	.byte	0x9
	.uahalf	0x52d
	.uaword	0x1ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"cntrTimePeriod_u16"
	.byte	0x9
	.uahalf	0x52e
	.uaword	0x1ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xc
	.string	"cntrRepPeriod_u16"
	.byte	0x9
	.uahalf	0x532
	.uaword	0x1ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.string	"txFlags_u16"
	.byte	0x9
	.uahalf	0x555
	.uaword	0x1ea
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xc
	.string	"cntrRepetitions_u8"
	.byte	0x9
	.uahalf	0x556
	.uaword	0x1bf
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.string	"transMode_u8"
	.byte	0x9
	.uahalf	0x562
	.uaword	0x1bf
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.byte	0
	.uleb128 0x9
	.string	"Com_TxIpduRamData_tst"
	.byte	0x9
	.uahalf	0x564
	.uaword	0x623
	.uleb128 0xb
	.byte	0x6
	.byte	0x9
	.uahalf	0x584
	.uaword	0x76c
	.uleb128 0xc
	.string	"rxIPduLength_uo"
	.byte	0x9
	.uahalf	0x586
	.uaword	0x2c8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"cntrRxTimeout_u16"
	.byte	0x9
	.uahalf	0x58b
	.uaword	0x1ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xc
	.string	"rxFlags_u8"
	.byte	0x9
	.uahalf	0x5a6
	.uaword	0x1bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x9
	.string	"Com_RxIpduRamData_tst"
	.byte	0x9
	.uahalf	0x5a8
	.uaword	0x714
	.uleb128 0xb
	.byte	0xc
	.byte	0x9
	.uahalf	0x5f5
	.uaword	0x7de
	.uleb128 0xc
	.string	"sigType_pau8"
	.byte	0x9
	.uahalf	0x5f7
	.uaword	0x325
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"sigType_pau16"
	.byte	0x9
	.uahalf	0x5fd
	.uaword	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"sigType_pau32"
	.byte	0x9
	.uahalf	0x5ff
	.uaword	0x3c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x9
	.string	"Com_Prv_xRxRamBuf_tst"
	.byte	0x9
	.uahalf	0x634
	.uaword	0x78a
	.uleb128 0xf
	.string	"Bfx_Prv_GetBit_u16u8_u8_Inl"
	.byte	0x3
	.uahalf	0x1d1
	.byte	0x1
	.uaword	0x271
	.byte	0x3
	.uaword	0x842
	.uleb128 0x10
	.string	"Data"
	.byte	0x3
	.uahalf	0x1d1
	.uaword	0x1ea
	.uleb128 0x10
	.string	"BitPn"
	.byte	0x3
	.uahalf	0x1d1
	.uaword	0x1bf
	.byte	0
	.uleb128 0xf
	.string	"Com_Prv_IsValidTxIpduId"
	.byte	0x2
	.uahalf	0x5b4
	.byte	0x1
	.uaword	0x271
	.byte	0x3
	.uaword	0x87a
	.uleb128 0x10
	.string	"idPdu_uo"
	.byte	0x2
	.uahalf	0x5b4
	.uaword	0x2b7
	.byte	0
	.uleb128 0xf
	.string	"Com_Prv_CheckTxIPduStatus"
	.byte	0x2
	.uahalf	0x3df
	.byte	0x1
	.uaword	0x271
	.byte	0x3
	.uaword	0x8cc
	.uleb128 0x10
	.string	"idIpdu_uo"
	.byte	0x2
	.uahalf	0x3df
	.uaword	0x2b7
	.uleb128 0x11
	.string	"txIPduStatus_b"
	.byte	0x2
	.uahalf	0x3e1
	.uaword	0x271
	.byte	0
	.uleb128 0x12
	.string	"SchM_Enter_Com_TxIpduProtArea_TRIGGERTRANSMIT"
	.byte	0xa
	.uahalf	0x1c3
	.byte	0x1
	.byte	0x3
	.uleb128 0x12
	.string	"SchM_Exit_Com_TxIpduProtArea_TRIGGERTRANSMIT"
	.byte	0xa
	.uahalf	0x1c7
	.byte	0x1
	.byte	0x3
	.uleb128 0x13
	.byte	0x1
	.string	"Com_TriggerTransmit"
	.byte	0x1
	.byte	0x3c
	.byte	0x1
	.uaword	0x2a1
	.uaword	.LFB162
	.uaword	.LFE162
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xaf1
	.uleb128 0x14
	.string	"idTxPdu_uo"
	.byte	0x1
	.byte	0x3c
	.uaword	0x2b7
	.uaword	.LLST0
	.uleb128 0x14
	.string	"pduInfoPtr_pst"
	.byte	0x1
	.byte	0x3c
	.uaword	0x5cd
	.uaword	.LLST1
	.uleb128 0x15
	.string	"txIpduConstPtr_pcst"
	.byte	0x1
	.byte	0x3f
	.uaword	0x5fc
	.uleb128 0x16
	.string	"size_uo"
	.byte	0x1
	.byte	0x43
	.uaword	0x2c8
	.uaword	.LLST2
	.uleb128 0x16
	.string	"constByteValue_u16"
	.byte	0x1
	.byte	0x47
	.uaword	0x1ea
	.uaword	.LLST3
	.uleb128 0x16
	.string	"status_u8"
	.byte	0x1
	.byte	0x49
	.uaword	0x2a1
	.uaword	.LLST4
	.uleb128 0x17
	.uaword	0x87a
	.uaword	.LBB16
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x73
	.uaword	0xa38
	.uleb128 0x18
	.uaword	0x8a2
	.uaword	.LLST5
	.uleb128 0x19
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x1a
	.uaword	0x8b4
	.uleb128 0x1b
	.uaword	0x7fc
	.uaword	.LBB18
	.uaword	.LBE18
	.byte	0x2
	.uahalf	0x3e3
	.uleb128 0x18
	.uaword	0x833
	.uaword	.LLST6
	.uleb128 0x1c
	.uaword	0x826
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL8
	.uaword	0xbe0
	.uaword	0xa53
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x1e
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0x8c
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL13
	.uaword	0xbe0
	.uaword	0xa6e
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x1e
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0x8c
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL16
	.uaword	0xc08
	.uaword	0xa92
	.uleb128 0x1e
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x32
	.uleb128 0x1e
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x8
	.byte	0x41
	.uleb128 0x1e
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x32
	.byte	0
	.uleb128 0x1f
	.uaword	.LVL18
	.byte	0x3
	.byte	0x8c
	.sleb128 8
	.byte	0x6
	.uaword	0xaac
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL21
	.uaword	0xc08
	.uaword	0xad0
	.uleb128 0x1e
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x31
	.uleb128 0x1e
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x8
	.byte	0x41
	.uleb128 0x1e
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x32
	.byte	0
	.uleb128 0x20
	.uaword	.LVL24
	.uaword	0xc08
	.uleb128 0x1e
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x33
	.uleb128 0x1e
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x8
	.byte	0x41
	.uleb128 0x1e
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x21
	.uaword	0x76c
	.uaword	0xafc
	.uleb128 0x22
	.byte	0
	.uleb128 0x23
	.string	"Com_RxIpduRam_ast"
	.byte	0xb
	.byte	0x6b
	.uaword	0xaf1
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.uaword	0x6f6
	.uaword	0xb22
	.uleb128 0x22
	.byte	0
	.uleb128 0x23
	.string	"Com_TxIpduRam_ast"
	.byte	0xb
	.byte	0x6e
	.uaword	0xb17
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.uaword	0x7de
	.uaword	0xb48
	.uleb128 0x22
	.byte	0
	.uleb128 0x24
	.string	"Com_Prv_xRxRamBuf_acst"
	.byte	0xb
	.uahalf	0x9f4
	.uaword	0xb69
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.uaword	0xb3d
	.uleb128 0x21
	.uaword	0x5d9
	.uaword	0xb79
	.uleb128 0x22
	.byte	0
	.uleb128 0x23
	.string	"Com_Prv_xTxIpduCfg_acst"
	.byte	0xc
	.byte	0x6d
	.uaword	0xb9a
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.uaword	0xb6e
	.uleb128 0x24
	.string	"Com_InitStatus_en"
	.byte	0xd
	.uahalf	0xec7
	.uaword	0x36b
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.string	"Com_NONE_TransModeInfo_cst"
	.byte	0xd
	.uahalf	0xf12
	.uaword	0x498
	.byte	0x1
	.byte	0x1
	.uleb128 0x25
	.byte	0x1
	.string	"Com_ByteCopy"
	.byte	0xd
	.uahalf	0xcd7
	.byte	0x1
	.byte	0x1
	.uaword	0xc08
	.uleb128 0xe
	.uaword	0x325
	.uleb128 0xe
	.uaword	0x3c3
	.uleb128 0xe
	.uaword	0x226
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.string	"Det_ReportError"
	.byte	0xe
	.byte	0x70
	.byte	0x1
	.uaword	0x2a1
	.byte	0x1
	.uleb128 0xe
	.uaword	0x1ea
	.uleb128 0xe
	.uaword	0x1bf
	.uleb128 0xe
	.uaword	0x1bf
	.uleb128 0xe
	.uaword	0x1bf
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
	.uleb128 0x12
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
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL7
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL10
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL12
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x5f
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
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL20
	.uaword	.LVL22
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL23
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
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL6
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL11
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL14
	.uaword	.LVL16-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL16-1
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL19
	.uaword	.LVL21-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL21-1
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL22
	.uaword	.LVL24-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL24-1
	.uaword	.LFE162
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL4
	.uaword	.LVL14
	.uahalf	0x2
	.byte	0x8c
	.sleb128 12
	.uaword	.LVL17
	.uaword	.LVL19
	.uahalf	0x2
	.byte	0x8c
	.sleb128 12
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL3
	.uaword	.LVL14
	.uahalf	0x2
	.byte	0x8c
	.sleb128 22
	.uaword	.LVL17
	.uaword	.LVL19
	.uahalf	0x2
	.byte	0x8c
	.sleb128 22
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL0
	.uaword	.LVL5
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL10
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LVL17
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL17
	.uaword	.LVL19
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LFE162
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL4
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL7
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL10
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL12
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL17
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL4
	.uaword	.LVL14
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL17
	.uaword	.LVL19
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
	.uaword	.LBB16
	.uaword	.LBE16
	.uaword	.LBB23
	.uaword	.LBE23
	.uaword	.LBB24
	.uaword	.LBE24
	.uaword	.LBB25
	.uaword	.LBE25
	.uaword	0
	.uaword	0
	.uaword	.LFB162
	.uaword	.LFE162
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.extern	Det_ReportError,STT_FUNC,0
	.extern	Com_ByteCopy,STT_FUNC,0
	.extern	Com_TxIpduRam_ast,STT_OBJECT,-1
	.extern	Com_Prv_xTxIpduCfg_acst,STT_OBJECT,-1
	.extern	Com_InitStatus_en,STT_OBJECT,1
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
