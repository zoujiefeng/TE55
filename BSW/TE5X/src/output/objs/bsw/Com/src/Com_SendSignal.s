	.file	"Com_SendSignal.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Com_Prv_InternalSendSignal,"ax",@progbits
	.align 1
	.global	Com_Prv_InternalSendSignal
	.type	Com_Prv_InternalSendSignal, @function
Com_Prv_InternalSendSignal:
.LFB163:
	.file 1 "bsw\\Com\\src\\Com_SendSignal.c"
	.loc 1 143 0
.LVL0:
	.loc 1 164 0
	mul	%d3, %d4, 12
	movh.a	%a3, hi:Com_Prv_xTxSigCfg_acst
	lea	%a3, [%a3] lo:Com_Prv_xTxSigCfg_acst
	addsc.a	%a15, %a3, %d3, 0
	.loc 1 143 0
	mov.aa	%a5, %a4
.LBB42:
.LBB43:
	.loc 1 316 0
	ld.bu	%d2, [%a15] 10
.LBE43:
.LBE42:
	.loc 1 164 0
	ld.hu	%d8, [%a15] 8
.LVL1:
.LBB54:
.LBB50:
.LBB44:
.LBB45:
	.file 2 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
	.loc 2 599 0
	and	%d15, %d2, 31
.LBE45:
.LBE44:
	.loc 1 322 0
	eq	%d4, %d15, 8
.LVL2:
.LBE50:
.LBE54:
	.loc 1 167 0
	lea	%a2, [%a15] 4
	ld.hu	%d9, [%a15] 4
.LVL3:
.LBB55:
.LBB51:
	.loc 1 322 0
	jnz	%d4, .L2
.LVL4:
.LBB46:
	.loc 1 326 0
	extr.u	%d4, %d2, 5, 1
.LVL5:
.LBE46:
	.loc 1 320 0
	mov	%d7, 0
.LBB47:
	.loc 1 330 0
	jlt.u	%d15, 7, .L19
.LVL6:
.L3:
	.loc 1 401 0
	movh.a	%a2, hi:Com_Prv_xTxIpduCfg_acst
	mov.d	%d2, %a2
	addsc.a	%a15, %a3, %d3, 0
.LVL7:
	addi	%d15, %d2, lo:Com_Prv_xTxIpduCfg_acst
	madd	%d2, %d15, %d8, 28
	ld.bu	%d5, [%a15] 6
	ld.bu	%d6, [%a15] 7
	mov.a	%a2, %d2
	ld.a	%a4, [%a2]0
.LVL8:
	call	Com_Prv_PackSignal
.LVL9:
.L9:
.LBE47:
.LBE51:
.LBE55:
.LBB56:
.LBB57:
	.file 3 "bsw\\Com\\src\\Com_Prv_Inl.h"
	.loc 3 995 0
	movh.a	%a15, hi:Com_TxIpduRam_ast
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:Com_TxIpduRam_ast
	madd	%d2, %d15, %d8, 16
	mov.a	%a15, %d2
.LBE57:
.LBE56:
	.loc 1 285 0
	mov	%d2, 128
.LBB61:
.LBB60:
.LBB58:
.LBB59:
	.loc 2 467 0
	ld.h	%d15, [%a15] 10
.LBE59:
.LBE58:
.LBE60:
.LBE61:
	.loc 1 239 0
	jnz.t	%d15, 0, .L20
.LVL10:
	.loc 1 290 0
	ret
.LVL11:
.L19:
.LBB62:
.LBB52:
.LBB48:
	.loc 1 330 0
	movh.a	%a2, hi:.L5
	lea	%a2, [%a2] lo:.L5
	addsc.a	%a2, %a2, %d15, 2
	ji	%a2
	.align 2
	.align 2
.L5:
	.code32
	j	.L4
	.code32
	j	.L4
	.code32
	j	.L6
	.code32
	j	.L6
	.code32
	j	.L7
	.code32
	j	.L7
	.code32
	j	.L8
.LVL12:
.L20:
.LBE48:
.LBE52:
.LBE62:
	.loc 1 205 0
	and	%d9, %d9, 7
.LVL13:
	ge.u	%d9, %d9, 3
.LBB63:
	.loc 1 242 0
	mov	%d5, 0
.LVL14:
	ins.t	%d5, %d5,2, %d9,0
.LVL15:
.LBB64:
.LBB65:
	.loc 3 1159 0
	andn	%d5, %d5, ~(-2)
.LVL16:
	ins.t	%d5, %d5,2, %d9,0
.LVL17:
	jz.t	%d5, 2, .L11
.LVL18:
.LBB66:
.LBB67:
	.loc 2 599 0
	ld.bu	%d15, [%a15] 13
.LBE67:
.LBE66:
	.loc 3 1159 0
	and	%d15, %d15, 3
	jlt.u	%d15, 2, .L21
.LVL19:
.L11:
.LBE65:
.LBE64:
.LBE63:
	.loc 1 160 0
	mov	%d2, 0
.LVL20:
.L22:
	.loc 1 290 0
	ret
.LVL21:
.L7:
.LBB70:
.LBB53:
.LBB49:
	.loc 1 349 0
	ld.w	%d7, [%a4]0
.LVL22:
	j	.L3
.LVL23:
.L6:
	.loc 1 340 0
	ld.hu	%d7, [%a4]0
.LVL24:
	j	.L3
.LVL25:
.L4:
	.loc 1 335 0
	ld.bu	%d7, [%a4]0
.LVL26:
	j	.L3
.LVL27:
.L8:
	.loc 1 344 0
	ld.bu	%d7, [%a4]0
	ne	%d7, %d7, 0
	j	.L3
.LVL28:
.L2:
.LBE49:
	.loc 1 441 0
	movh.a	%a15, hi:Com_Prv_xTxIpduCfg_acst
.LVL29:
	mov.d	%d2, %a15
	ld.bu	%d4, [%a2] 3
	addi	%d15, %d2, lo:Com_Prv_xTxIpduCfg_acst
	madd	%d2, %d15, %d8, 28
	.loc 1 412 0
	ld.bu	%d15, [%a2] 2
	.loc 1 441 0
	mov.a	%a15, %d2
	sh	%d15, -3
	ld.a	%a4, [%a15]0
.LVL30:
	addsc.a	%a4, %a4, %d15, 0
	call	Com_ByteCopy
.LVL31:
	j	.L9
.LVL32:
.L21:
.LBE53:
.LBE70:
.LBB71:
.LBB69:
.LBB68:
	.loc 3 1170 0
	insert	%d5, %d5, 1, 0, 1
.LVL33:
	mov	%d4, %d8
	call	Com_Prv_SendIpdu
.LVL34:
.LBE68:
.LBE69:
.LBE71:
	.loc 1 160 0
	mov	%d2, 0
	j	.L22
.LFE163:
	.size	Com_Prv_InternalSendSignal, .-Com_Prv_InternalSendSignal
.section .text.Com_SendSignal,"ax",@progbits
	.align 1
	.global	Com_SendSignal
	.type	Com_SendSignal, @function
Com_SendSignal:
.LFB162:
	.loc 1 60 0
.LVL35:
	.loc 1 69 0
	movh.a	%a2, hi:Com_InitStatus_en
	ld.bu	%d2, [%a2] lo:Com_InitStatus_en
	jz	%d2, .L28
	.loc 1 73 0
	jz.a	%a4, .L29
.LVL36:
	.loc 1 79 0
	ge.u	%d15, %d4, 140
	jz	%d15, .L30
	.loc 1 118 0
	mov	%e4, 50
.LVL37:
	mov	%d6, 10
	mov	%d7, 1
	call	Det_ReportError
.LVL38:
.L25:
	.loc 1 123 0
	mov	%d2, 128
	ret
.LVL39:
.L28:
	.loc 1 71 0
	mov	%e4, 50
.LVL40:
	mov	%d6, 10
	mov	%d7, 2
	call	Det_ReportError
.LVL41:
	.loc 1 123 0
	mov	%d2, 128
	ret
.LVL42:
.L29:
	.loc 1 75 0
	mov	%e4, 50
.LVL43:
	mov	%d6, 10
	mov	%d7, 3
	call	Det_ReportError
.LVL44:
	j	.L25
.LVL45:
.L30:
	.loc 1 100 0
	j	Com_Prv_InternalSendSignal
.LVL46:
.LFE162:
	.size	Com_SendSignal, .-Com_SendSignal
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
	.uaword	.LFB163
	.uaword	.LFE163-.LFB163
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB162
	.uaword	.LFE162-.LFB162
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
	.uaword	0x129c
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Com\\src\\Com_SendSignal.c"
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
	.uaword	0x1c7
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
	.uaword	0x1f3
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
	.uaword	0x22f
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
	.uaword	0x1c7
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
	.uaword	0x1ba
	.uleb128 0x3
	.string	"PduIdType"
	.byte	0x6
	.byte	0x2c
	.uaword	0x1e5
	.uleb128 0x3
	.string	"PduLengthType"
	.byte	0x6
	.byte	0x30
	.uaword	0x1e5
	.uleb128 0x4
	.byte	0xc
	.byte	0x6
	.byte	0x39
	.uaword	0x320
	.uleb128 0x5
	.string	"SduDataPtr"
	.byte	0x6
	.byte	0x3b
	.uaword	0x320
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"MetaDataPtr"
	.byte	0x6
	.byte	0x3c
	.uaword	0x320
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"SduLength"
	.byte	0x6
	.byte	0x3d
	.uaword	0x2c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x1ba
	.uleb128 0x3
	.string	"PduInfoType"
	.byte	0x6
	.byte	0x3e
	.uaword	0x2d8
	.uleb128 0x3
	.string	"Com_SignalIdType"
	.byte	0x7
	.byte	0x71
	.uaword	0x1e5
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x7
	.byte	0x1
	.byte	0x7
	.byte	0x7d
	.uaword	0x37e
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
	.uaword	0x35d
	.uleb128 0x6
	.byte	0x4
	.uaword	0x39a
	.uleb128 0x9
	.uleb128 0xa
	.string	"Com_TxIntSignalId_tuo"
	.byte	0x8
	.uahalf	0x1c1
	.uaword	0x1ba
	.uleb128 0xa
	.string	"Com_IpduId_tuo"
	.byte	0x8
	.uahalf	0x1ce
	.uaword	0x1e5
	.uleb128 0xa
	.string	"Com_Bitsize_tuo"
	.byte	0x8
	.uahalf	0x1db
	.uaword	0x1ba
	.uleb128 0xa
	.string	"Com_Bitposition_tuo"
	.byte	0x8
	.uahalf	0x1dc
	.uaword	0x1ba
	.uleb128 0xa
	.string	"Com_SigMax_tuo"
	.byte	0x8
	.uahalf	0x206
	.uaword	0x221
	.uleb128 0xa
	.string	"Com_MainFunc_tuo"
	.byte	0x8
	.uahalf	0x23e
	.uaword	0x1ba
	.uleb128 0xb
	.uaword	0x1ba
	.uleb128 0x6
	.byte	0x4
	.uaword	0x1e5
	.uleb128 0x6
	.byte	0x4
	.uaword	0x434
	.uleb128 0x6
	.byte	0x4
	.uaword	0x221
	.uleb128 0x4
	.byte	0x1
	.byte	0x9
	.byte	0x32
	.uaword	0x50b
	.uleb128 0xc
	.string	"isEventTrig_u1"
	.byte	0x9
	.byte	0x34
	.uaword	0x22f
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"isModeChangd_u1"
	.byte	0x9
	.byte	0x35
	.uaword	0x22f
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"isSigTriggered_u1"
	.byte	0x9
	.byte	0x36
	.uaword	0x22f
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"isTimeoutReq_u1"
	.byte	0x9
	.byte	0x37
	.uaword	0x22f
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"ignoreRepetitions_u1"
	.byte	0x9
	.byte	0x38
	.uaword	0x22f
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"isSwtIpduTxMode_u1"
	.byte	0x9
	.byte	0x39
	.uaword	0x22f
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
	.uaword	0x44b
	.uleb128 0x4
	.byte	0x8
	.byte	0x9
	.byte	0x4b
	.uaword	0x5b1
	.uleb128 0x5
	.string	"timePeriod_u16"
	.byte	0x9
	.byte	0x4d
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"timeOffset_u16"
	.byte	0x9
	.byte	0x4e
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x5
	.string	"repetitionPeriod_u16"
	.byte	0x9
	.byte	0x4f
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"numOfRepetitions_u8"
	.byte	0x9
	.byte	0x50
	.uaword	0x1ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x5
	.string	"mode_u8"
	.byte	0x9
	.byte	0x57
	.uaword	0x1ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.byte	0
	.uleb128 0x3
	.string	"Com_TransModeInfo_tst"
	.byte	0x9
	.byte	0x5b
	.uaword	0x527
	.uleb128 0x3
	.string	"Com_TMConstPtr_tpcst"
	.byte	0x9
	.byte	0x65
	.uaword	0x5ea
	.uleb128 0x6
	.byte	0x4
	.uaword	0x5f0
	.uleb128 0xb
	.uaword	0x5b1
	.uleb128 0x4
	.byte	0xc
	.byte	0x9
	.byte	0x8b
	.uaword	0x686
	.uleb128 0x5
	.string	"initVal_u32"
	.byte	0x9
	.byte	0xa3
	.uaword	0x221
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"txSignalFields_u16"
	.byte	0x9
	.byte	0xaf
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"bitPos_uo"
	.byte	0x9
	.byte	0xb5
	.uaword	0x3e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x5
	.string	"bitSize_uo"
	.byte	0x9
	.byte	0xb7
	.uaword	0x3d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0x5
	.string	"idComIPdu_uo"
	.byte	0x9
	.byte	0xc1
	.uaword	0x3b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"general_u8"
	.byte	0x9
	.byte	0xce
	.uaword	0x1ba
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.string	"Com_Prv_xTxSigCfg_tst"
	.byte	0x9
	.byte	0xd0
	.uaword	0x5f5
	.uleb128 0x3
	.string	"Com_TxSigCfg_tpcst"
	.byte	0x9
	.byte	0xd8
	.uaword	0x6bd
	.uleb128 0x6
	.byte	0x4
	.uaword	0x6c3
	.uleb128 0xb
	.uaword	0x686
	.uleb128 0xd
	.byte	0x1c
	.byte	0x9
	.uahalf	0x322
	.uaword	0x7e3
	.uleb128 0xe
	.string	"buffPtr_pu8"
	.byte	0x9
	.uahalf	0x324
	.uaword	0x320
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"tMConstPtr_pcst"
	.byte	0x9
	.uahalf	0x326
	.uaword	0x5ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"callOut_pfct"
	.byte	0x9
	.uahalf	0x329
	.uaword	0x7fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"size_uo"
	.byte	0x9
	.uahalf	0x342
	.uaword	0x2c3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"minDelayTime_u16"
	.byte	0x9
	.uahalf	0x34d
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xe
	.string	"numOfSig_u16"
	.byte	0x9
	.uahalf	0x34f
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"idPduRSrcPdu_uo"
	.byte	0x9
	.uahalf	0x354
	.uaword	0x2b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0xe
	.string	"idTxSig_uo"
	.byte	0x9
	.uahalf	0x356
	.uaword	0x39b
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"txIPduFields_u16"
	.byte	0x9
	.uahalf	0x375
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0xe
	.string	"idMainFunc_uo"
	.byte	0x9
	.uahalf	0x379
	.uaword	0x41b
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"paddingByte_u8"
	.byte	0x9
	.uahalf	0x37a
	.uaword	0x1ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x19
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.uaword	0x26c
	.uaword	0x7f8
	.uleb128 0x10
	.uaword	0x2b2
	.uleb128 0x10
	.uaword	0x7f8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x326
	.uleb128 0x6
	.byte	0x4
	.uaword	0x7e3
	.uleb128 0xa
	.string	"Com_Prv_xTxIpduInfoCfg_tst"
	.byte	0x9
	.uahalf	0x37c
	.uaword	0x6c8
	.uleb128 0xa
	.string	"Com_TxIpduCfg_tpcst"
	.byte	0x9
	.uahalf	0x385
	.uaword	0x843
	.uleb128 0x6
	.byte	0x4
	.uaword	0x849
	.uleb128 0xb
	.uaword	0x804
	.uleb128 0xd
	.byte	0x10
	.byte	0x9
	.uahalf	0x524
	.uaword	0x921
	.uleb128 0xe
	.string	"currentTxModePtr_pcst"
	.byte	0x9
	.uahalf	0x526
	.uaword	0x5ce
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"cntrMinDelayTime_u16"
	.byte	0x9
	.uahalf	0x52d
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"cntrTimePeriod_u16"
	.byte	0x9
	.uahalf	0x52e
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xe
	.string	"cntrRepPeriod_u16"
	.byte	0x9
	.uahalf	0x532
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"txFlags_u16"
	.byte	0x9
	.uahalf	0x555
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xe
	.string	"cntrRepetitions_u8"
	.byte	0x9
	.uahalf	0x556
	.uaword	0x1ba
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"transMode_u8"
	.byte	0x9
	.uahalf	0x562
	.uaword	0x1ba
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.byte	0
	.uleb128 0xa
	.string	"Com_TxIpduRamData_tst"
	.byte	0x9
	.uahalf	0x564
	.uaword	0x84e
	.uleb128 0xa
	.string	"Com_TxIpduRam_tpst"
	.byte	0x9
	.uahalf	0x56d
	.uaword	0x95a
	.uleb128 0x6
	.byte	0x4
	.uaword	0x921
	.uleb128 0xd
	.byte	0x6
	.byte	0x9
	.uahalf	0x584
	.uaword	0x9b8
	.uleb128 0xe
	.string	"rxIPduLength_uo"
	.byte	0x9
	.uahalf	0x586
	.uaword	0x2c3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"cntrRxTimeout_u16"
	.byte	0x9
	.uahalf	0x58b
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xe
	.string	"rxFlags_u8"
	.byte	0x9
	.uahalf	0x5a6
	.uaword	0x1ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xa
	.string	"Com_RxIpduRamData_tst"
	.byte	0x9
	.uahalf	0x5a8
	.uaword	0x960
	.uleb128 0xd
	.byte	0xc
	.byte	0x9
	.uahalf	0x5f5
	.uaword	0xa2a
	.uleb128 0xe
	.string	"sigType_pau8"
	.byte	0x9
	.uahalf	0x5f7
	.uaword	0x320
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"sigType_pau16"
	.byte	0x9
	.uahalf	0x5fd
	.uaword	0x439
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"sigType_pau32"
	.byte	0x9
	.uahalf	0x5ff
	.uaword	0x445
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0xa
	.string	"Com_Prv_xRxRamBuf_tst"
	.byte	0x9
	.uahalf	0x634
	.uaword	0x9d6
	.uleb128 0x11
	.string	"Bfx_Prv_GetBit_u16u8_u8_Inl"
	.byte	0x2
	.uahalf	0x1d1
	.byte	0x1
	.uaword	0x26c
	.byte	0x3
	.uaword	0xa8e
	.uleb128 0x12
	.string	"Data"
	.byte	0x2
	.uahalf	0x1d1
	.uaword	0x1e5
	.uleb128 0x12
	.string	"BitPn"
	.byte	0x2
	.uahalf	0x1d1
	.uaword	0x1ba
	.byte	0
	.uleb128 0x11
	.string	"Bfx_Prv_GetBits_u8u8u8_u8_Inl"
	.byte	0x2
	.uahalf	0x255
	.byte	0x1
	.uaword	0x1ba
	.byte	0x3
	.uaword	0xae2
	.uleb128 0x12
	.string	"Data"
	.byte	0x2
	.uahalf	0x255
	.uaword	0x1ba
	.uleb128 0x13
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x255
	.uaword	0x1ba
	.uleb128 0x12
	.string	"BitLn"
	.byte	0x2
	.uahalf	0x255
	.uaword	0x1ba
	.byte	0
	.uleb128 0x11
	.string	"Bfx_Prv_GetBit_u8u8_u8_Inl"
	.byte	0x2
	.uahalf	0x1fd
	.byte	0x1
	.uaword	0x26c
	.byte	0x3
	.uaword	0xb27
	.uleb128 0x12
	.string	"Data"
	.byte	0x2
	.uahalf	0x1fd
	.uaword	0x1ba
	.uleb128 0x12
	.string	"BitPn"
	.byte	0x2
	.uahalf	0x1fd
	.uaword	0x1ba
	.byte	0
	.uleb128 0x11
	.string	"Bfx_Prv_GetBits_u16u8u8_u16_Inl"
	.byte	0x2
	.uahalf	0x229
	.byte	0x1
	.uaword	0x1e5
	.byte	0x3
	.uaword	0xb7d
	.uleb128 0x12
	.string	"Data"
	.byte	0x2
	.uahalf	0x229
	.uaword	0x1e5
	.uleb128 0x13
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x229
	.uaword	0x1ba
	.uleb128 0x12
	.string	"BitLn"
	.byte	0x2
	.uahalf	0x229
	.uaword	0x1ba
	.byte	0
	.uleb128 0x14
	.string	"SchM_Enter_Com_TxIpduProtArea_SENDSIGNAL"
	.byte	0xa
	.uahalf	0x17f
	.byte	0x1
	.byte	0x3
	.uleb128 0x14
	.string	"SchM_Exit_Com_TxIpduProtArea_SENDSIGNAL"
	.byte	0xa
	.uahalf	0x183
	.byte	0x1
	.byte	0x3
	.uleb128 0x11
	.string	"Com_Prv_CheckTxIPduStatus"
	.byte	0x3
	.uahalf	0x3df
	.byte	0x1
	.uaword	0x26c
	.byte	0x3
	.uaword	0xc26
	.uleb128 0x13
	.uaword	.LASF1
	.byte	0x3
	.uahalf	0x3df
	.uaword	0x2b2
	.uleb128 0x15
	.string	"txIPduStatus_b"
	.byte	0x3
	.uahalf	0x3e1
	.uaword	0x26c
	.byte	0
	.uleb128 0x11
	.string	"Com_Prv_IsValidTxSignalId"
	.byte	0x3
	.uahalf	0x5ca
	.byte	0x1
	.uaword	0x26c
	.byte	0x3
	.uaword	0xc5b
	.uleb128 0x13
	.uaword	.LASF2
	.byte	0x3
	.uahalf	0x5ca
	.uaword	0x339
	.byte	0
	.uleb128 0x11
	.string	"Com_Prv_SigBufftoIpduBuff"
	.byte	0x1
	.uahalf	0x130
	.byte	0x1
	.uaword	0x404
	.byte	0x3
	.uaword	0xd30
	.uleb128 0x13
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x130
	.uaword	0x339
	.uleb128 0x13
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x130
	.uaword	0x394
	.uleb128 0x15
	.string	"txIpduConstPtr_pcst"
	.byte	0x1
	.uahalf	0x132
	.uaword	0x827
	.uleb128 0x16
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x133
	.uaword	0x6a3
	.uleb128 0x16
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x134
	.uaword	0x2b2
	.uleb128 0x16
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x135
	.uaword	0x404
	.uleb128 0x15
	.string	"byteNo_uo"
	.byte	0x1
	.uahalf	0x136
	.uaword	0x2c3
	.uleb128 0x15
	.string	"type_u8"
	.byte	0x1
	.uahalf	0x137
	.uaword	0x1ba
	.uleb128 0x15
	.string	"constGeneral_u8"
	.byte	0x1
	.uahalf	0x138
	.uaword	0x1ba
	.uleb128 0x17
	.uleb128 0x15
	.string	"sigEndianess_u8"
	.byte	0x1
	.uahalf	0x144
	.uaword	0x1ba
	.byte	0
	.byte	0
	.uleb128 0x18
	.string	"Com_Prv_ProceedToSendIpdu"
	.byte	0x3
	.uahalf	0x447
	.byte	0x1
	.byte	0x3
	.uaword	0xd90
	.uleb128 0x12
	.string	"idComTxPdu_uo"
	.byte	0x3
	.uahalf	0x447
	.uaword	0x3b9
	.uleb128 0x13
	.uaword	.LASF6
	.byte	0x3
	.uahalf	0x447
	.uaword	0x50b
	.uleb128 0x15
	.string	"txIpduRamPtr_pst"
	.byte	0x3
	.uahalf	0x449
	.uaword	0x93f
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.string	"Com_Prv_InternalSendSignal"
	.byte	0x1
	.byte	0x8e
	.byte	0x1
	.uaword	0x1ba
	.uaword	.LFB163
	.uaword	.LFE163
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1001
	.uleb128 0x1a
	.uaword	.LASF2
	.byte	0x1
	.byte	0x8e
	.uaword	0x339
	.uaword	.LLST0
	.uleb128 0x1a
	.uaword	.LASF3
	.byte	0x1
	.byte	0x8e
	.uaword	0x394
	.uaword	.LLST1
	.uleb128 0x1b
	.uaword	.LASF4
	.byte	0x1
	.byte	0x93
	.uaword	0x6a3
	.uleb128 0x1b
	.uaword	.LASF5
	.byte	0x1
	.byte	0x94
	.uaword	0x404
	.uleb128 0x1c
	.uaword	.LASF1
	.byte	0x1
	.byte	0x95
	.uaword	0x2b2
	.uaword	.LLST2
	.uleb128 0x1d
	.string	"constTxSignalFields_u16"
	.byte	0x1
	.byte	0x98
	.uaword	0x1e5
	.uaword	.LLST3
	.uleb128 0x1d
	.string	"txSigTP_u8"
	.byte	0x1
	.byte	0x9b
	.uaword	0x1ba
	.uaword	.LLST4
	.uleb128 0x1d
	.string	"isSigTriggered_u8"
	.byte	0x1
	.byte	0x9d
	.uaword	0x1ba
	.uaword	.LLST5
	.uleb128 0x1c
	.uaword	.LASF7
	.byte	0x1
	.byte	0x9e
	.uaword	0x1ba
	.uaword	.LLST6
	.uleb128 0x1e
	.uaword	0xc5b
	.uaword	.LBB42
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xc3
	.uaword	0xf3a
	.uleb128 0x1f
	.uaword	0xc8f
	.uaword	.LLST7
	.uleb128 0x20
	.uaword	0xc83
	.uleb128 0x21
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x22
	.uaword	0xc9b
	.uleb128 0x22
	.uaword	0xcb7
	.uleb128 0x23
	.uaword	0xcc3
	.uaword	.LLST8
	.uleb128 0x23
	.uaword	0xccf
	.uaword	.LLST9
	.uleb128 0x22
	.uaword	0xcdb
	.uleb128 0x22
	.uaword	0xced
	.uleb128 0x23
	.uaword	0xcfd
	.uaword	.LLST10
	.uleb128 0x24
	.uaword	0xa8e
	.uaword	.LBB44
	.uaword	.LBE44
	.byte	0x1
	.uahalf	0x13f
	.uaword	0xeeb
	.uleb128 0x25
	.uaword	0xad3
	.byte	0x5
	.uleb128 0x25
	.uaword	0xac7
	.byte	0
	.uleb128 0x1f
	.uaword	0xaba
	.uaword	.LLST10
	.byte	0
	.uleb128 0x26
	.uaword	.Ldebug_ranges0+0x30
	.uaword	0xf24
	.uleb128 0x23
	.uaword	0xd16
	.uaword	.LLST12
	.uleb128 0x27
	.uaword	.LVL9
	.uaword	0x11e9
	.uleb128 0x28
	.byte	0x1
	.byte	0x64
	.byte	0x8
	.byte	0x78
	.sleb128 0
	.byte	0x4c
	.byte	0x1e
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.byte	0x6
	.uleb128 0x28
	.byte	0x1
	.byte	0x56
	.byte	0x4
	.byte	0x8f
	.sleb128 7
	.byte	0x94
	.byte	0x1
	.uleb128 0x28
	.byte	0x1
	.byte	0x55
	.byte	0x4
	.byte	0x8f
	.sleb128 6
	.byte	0x94
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x27
	.uaword	.LVL31
	.uaword	0x1221
	.uleb128 0x28
	.byte	0x1
	.byte	0x64
	.byte	0x6
	.byte	0x8f
	.sleb128 0
	.byte	0x6
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uaword	0xbda
	.uaword	.LBB56
	.uaword	.Ldebug_ranges0+0x58
	.byte	0x1
	.byte	0xef
	.uaword	0xf81
	.uleb128 0x1f
	.uaword	0xc02
	.uaword	.LLST13
	.uleb128 0x21
	.uaword	.Ldebug_ranges0+0x58
	.uleb128 0x22
	.uaword	0xc0e
	.uleb128 0x29
	.uaword	0xa48
	.uaword	.LBB58
	.uaword	.LBE58
	.byte	0x3
	.uahalf	0x3e3
	.uleb128 0x1f
	.uaword	0xa7f
	.uaword	.LLST14
	.uleb128 0x20
	.uaword	0xa72
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.uaword	.Ldebug_ranges0+0x70
	.uleb128 0x1c
	.uaword	.LASF6
	.byte	0x1
	.byte	0xf2
	.uaword	0x50b
	.uaword	.LLST15
	.uleb128 0x2a
	.uaword	0xd30
	.uaword	.LBB64
	.uaword	.Ldebug_ranges0+0x88
	.byte	0x1
	.uahalf	0x117
	.uleb128 0x1f
	.uaword	0xd6a
	.uaword	.LLST16
	.uleb128 0x1f
	.uaword	0xd54
	.uaword	.LLST17
	.uleb128 0x21
	.uaword	.Ldebug_ranges0+0x88
	.uleb128 0x22
	.uaword	0xd76
	.uleb128 0x24
	.uaword	0xa8e
	.uaword	.LBB66
	.uaword	.LBE66
	.byte	0x3
	.uahalf	0x488
	.uaword	0xfed
	.uleb128 0x1f
	.uaword	0xad3
	.uaword	.LLST18
	.uleb128 0x1f
	.uaword	0xac7
	.uaword	.LLST19
	.uleb128 0x20
	.uaword	0xaba
	.byte	0
	.uleb128 0x27
	.uaword	.LVL34
	.uaword	0x1249
	.uleb128 0x28
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.string	"Com_SendSignal"
	.byte	0x1
	.byte	0x3b
	.byte	0x1
	.uaword	0x1ba
	.uaword	.LFB162
	.uaword	.LFE162
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x10ca
	.uleb128 0x1a
	.uaword	.LASF2
	.byte	0x1
	.byte	0x3b
	.uaword	0x339
	.uaword	.LLST20
	.uleb128 0x1a
	.uaword	.LASF3
	.byte	0x1
	.byte	0x3b
	.uaword	0x394
	.uaword	.LLST21
	.uleb128 0x1c
	.uaword	.LASF7
	.byte	0x1
	.byte	0x40
	.uaword	0x1ba
	.uaword	.LLST22
	.uleb128 0x2b
	.uaword	.LVL38
	.uaword	0x1270
	.uaword	0x1079
	.uleb128 0x28
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x31
	.uleb128 0x28
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x3a
	.uleb128 0x28
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x28
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x32
	.byte	0
	.uleb128 0x2b
	.uaword	.LVL41
	.uaword	0x1270
	.uaword	0x109c
	.uleb128 0x28
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x32
	.uleb128 0x28
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x3a
	.uleb128 0x28
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x28
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x32
	.byte	0
	.uleb128 0x2b
	.uaword	.LVL44
	.uaword	0x1270
	.uaword	0x10bf
	.uleb128 0x28
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x33
	.uleb128 0x28
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x3a
	.uleb128 0x28
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x28
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x32
	.byte	0
	.uleb128 0x2c
	.uaword	.LVL46
	.byte	0x1
	.uaword	0xd90
	.byte	0
	.uleb128 0x2d
	.uaword	0x9b8
	.uaword	0x10d5
	.uleb128 0x2e
	.byte	0
	.uleb128 0x2f
	.string	"Com_RxIpduRam_ast"
	.byte	0xb
	.byte	0x6b
	.uaword	0x10ca
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.uaword	0x921
	.uaword	0x10fb
	.uleb128 0x2e
	.byte	0
	.uleb128 0x2f
	.string	"Com_TxIpduRam_ast"
	.byte	0xb
	.byte	0x6e
	.uaword	0x10f0
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.uaword	0xa2a
	.uaword	0x1121
	.uleb128 0x2e
	.byte	0
	.uleb128 0x30
	.string	"Com_Prv_xRxRamBuf_acst"
	.byte	0xb
	.uahalf	0x9f4
	.uaword	0x1142
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.uaword	0x1116
	.uleb128 0x2d
	.uaword	0x686
	.uaword	0x1152
	.uleb128 0x2e
	.byte	0
	.uleb128 0x2f
	.string	"Com_Prv_xTxSigCfg_acst"
	.byte	0xc
	.byte	0x67
	.uaword	0x1172
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.uaword	0x1147
	.uleb128 0x2d
	.uaword	0x804
	.uaword	0x1182
	.uleb128 0x2e
	.byte	0
	.uleb128 0x2f
	.string	"Com_Prv_xTxIpduCfg_acst"
	.byte	0xc
	.byte	0x6d
	.uaword	0x11a3
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.uaword	0x1177
	.uleb128 0x30
	.string	"Com_InitStatus_en"
	.byte	0xd
	.uahalf	0xec7
	.uaword	0x37e
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.string	"Com_NONE_TransModeInfo_cst"
	.byte	0xd
	.uahalf	0xf12
	.uaword	0x5f0
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.byte	0x1
	.string	"Com_Prv_PackSignal"
	.byte	0xd
	.uahalf	0xd25
	.byte	0x1
	.byte	0x1
	.uaword	0x1221
	.uleb128 0x10
	.uaword	0x1ba
	.uleb128 0x10
	.uaword	0x3e8
	.uleb128 0x10
	.uaword	0x3d0
	.uleb128 0x10
	.uaword	0x404
	.uleb128 0x10
	.uaword	0x320
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"Com_ByteCopy"
	.byte	0xd
	.uahalf	0xcd7
	.byte	0x1
	.byte	0x1
	.uaword	0x1249
	.uleb128 0x10
	.uaword	0x320
	.uleb128 0x10
	.uaword	0x43f
	.uleb128 0x10
	.uaword	0x221
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"Com_Prv_SendIpdu"
	.byte	0xd
	.uahalf	0xd86
	.byte	0x1
	.byte	0x1
	.uaword	0x1270
	.uleb128 0x10
	.uaword	0x2b2
	.uleb128 0x10
	.uaword	0x50b
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.string	"Det_ReportError"
	.byte	0xe
	.byte	0x70
	.byte	0x1
	.uaword	0x29c
	.byte	0x1
	.uleb128 0x10
	.uaword	0x1e5
	.uleb128 0x10
	.uaword	0x1ba
	.uleb128 0x10
	.uaword	0x1ba
	.uleb128 0x10
	.uaword	0x1ba
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
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x12
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
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL2
	.uaword	.LFE163
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL8
	.uaword	.LVL9-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL9-1
	.uaword	.LVL11
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL12
	.uaword	.LVL21
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL30
	.uaword	.LVL31-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL31-1
	.uaword	.LFE163
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL1
	.uaword	.LVL7
	.uahalf	0x2
	.byte	0x8f
	.sleb128 8
	.uaword	.LVL7
	.uaword	.LVL9-1
	.uahalf	0x7
	.byte	0x83
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x8
	.uaword	.LVL9-1
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x2
	.byte	0x8f
	.sleb128 8
	.uaword	.LVL12
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL21
	.uaword	.LVL29
	.uahalf	0x2
	.byte	0x8f
	.sleb128 8
	.uaword	.LVL29
	.uaword	.LVL31-1
	.uahalf	0x2
	.byte	0x82
	.sleb128 4
	.uaword	.LVL31-1
	.uaword	.LFE163
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL3
	.uaword	.LVL6
	.uahalf	0x2
	.byte	0x82
	.sleb128 0
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x2
	.byte	0x8f
	.sleb128 4
	.uaword	.LVL7
	.uaword	.LVL9-1
	.uahalf	0x7
	.byte	0x83
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x4
	.uaword	.LVL9-1
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL21
	.uaword	.LVL28
	.uahalf	0x2
	.byte	0x8f
	.sleb128 4
	.uaword	.LVL28
	.uaword	.LVL31-1
	.uahalf	0x2
	.byte	0x82
	.sleb128 0
	.uaword	.LVL31-1
	.uaword	.LVL32
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL3
	.uaword	.LVL13
	.uahalf	0x5
	.byte	0x79
	.sleb128 0
	.byte	0x37
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL32
	.uahalf	0x5
	.byte	0x79
	.sleb128 0
	.byte	0x37
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL0
	.uaword	.LVL9
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LVL11
	.uahalf	0xb
	.byte	0x79
	.sleb128 0
	.byte	0x37
	.byte	0x1a
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x32
	.byte	0x2b
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0xb
	.byte	0x79
	.sleb128 0
	.byte	0x37
	.byte	0x1a
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x32
	.byte	0x2b
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL32
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL0
	.uaword	.LVL10
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL11
	.uaword	.LVL20
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL21
	.uaword	.LFE163
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL3
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL8
	.uaword	.LVL9-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL9-1
	.uaword	.LVL11
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL12
	.uaword	.LVL21
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL30
	.uaword	.LVL31-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL31-1
	.uaword	.LFE163
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL3
	.uaword	.LVL7
	.uahalf	0x2
	.byte	0x8f
	.sleb128 8
	.uaword	.LVL7
	.uaword	.LVL9-1
	.uahalf	0x7
	.byte	0x83
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x8
	.uaword	.LVL9-1
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x2
	.byte	0x8f
	.sleb128 8
	.uaword	.LVL12
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL21
	.uaword	.LVL29
	.uahalf	0x2
	.byte	0x8f
	.sleb128 8
	.uaword	.LVL29
	.uaword	.LVL31-1
	.uahalf	0x2
	.byte	0x82
	.sleb128 4
	.uaword	.LVL31-1
	.uaword	.LFE163
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL3
	.uaword	.LVL6
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL9-1
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL26
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL27
	.uaword	.LVL32
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL3
	.uaword	.LVL7
	.uahalf	0x2
	.byte	0x8f
	.sleb128 10
	.uaword	.LVL7
	.uaword	.LVL9-1
	.uahalf	0x7
	.byte	0x83
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0xa
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x2
	.byte	0x8f
	.sleb128 10
	.uaword	.LVL21
	.uaword	.LVL29
	.uahalf	0x2
	.byte	0x8f
	.sleb128 10
	.uaword	.LVL29
	.uaword	.LVL31-1
	.uahalf	0x2
	.byte	0x82
	.sleb128 6
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL5
	.uaword	.LVL9-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL21
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL9
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL12
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL32
	.uaword	.LFE163
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL9
	.uaword	.LVL11
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LVL21
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL32
	.uaword	.LFE163
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x8
	.byte	0x30
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x1
	.uleb128 0
	.byte	0x9d
	.uleb128 0x7
	.uleb128 0
	.uaword	.LVL17
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x8
	.byte	0x31
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x1
	.uleb128 0
	.byte	0x9d
	.uleb128 0x7
	.uleb128 0
	.uaword	.LVL33
	.uaword	.LVL34-1
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL14
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL32
	.uaword	.LFE163
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL32
	.uaword	.LFE163
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL32
	.uaword	.LFE163
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL35
	.uaword	.LVL37
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL37
	.uaword	.LVL39
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL39
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
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL35
	.uaword	.LVL38-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL38-1
	.uaword	.LVL39
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL39
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
	.uaword	.LVL46-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL46-1
	.uaword	.LFE162
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL35
	.uaword	.LVL38
	.uahalf	0x3
	.byte	0x9
	.byte	0x80
	.byte	0x9f
	.uaword	.LVL39
	.uaword	.LVL41
	.uahalf	0x3
	.byte	0x9
	.byte	0x80
	.byte	0x9f
	.uaword	.LVL42
	.uaword	.LFE162
	.uahalf	0x3
	.byte	0x9
	.byte	0x80
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
	.uaword	.LFB163
	.uaword	.LFE163-.LFB163
	.uaword	.LFB162
	.uaword	.LFE162-.LFB162
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB42
	.uaword	.LBE42
	.uaword	.LBB54
	.uaword	.LBE54
	.uaword	.LBB55
	.uaword	.LBE55
	.uaword	.LBB62
	.uaword	.LBE62
	.uaword	.LBB70
	.uaword	.LBE70
	.uaword	0
	.uaword	0
	.uaword	.LBB46
	.uaword	.LBE46
	.uaword	.LBB47
	.uaword	.LBE47
	.uaword	.LBB48
	.uaword	.LBE48
	.uaword	.LBB49
	.uaword	.LBE49
	.uaword	0
	.uaword	0
	.uaword	.LBB56
	.uaword	.LBE56
	.uaword	.LBB61
	.uaword	.LBE61
	.uaword	0
	.uaword	0
	.uaword	.LBB63
	.uaword	.LBE63
	.uaword	.LBB71
	.uaword	.LBE71
	.uaword	0
	.uaword	0
	.uaword	.LBB64
	.uaword	.LBE64
	.uaword	.LBB69
	.uaword	.LBE69
	.uaword	0
	.uaword	0
	.uaword	.LFB163
	.uaword	.LFE163
	.uaword	.LFB162
	.uaword	.LFE162
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF1:
	.string	"idIpdu_uo"
.LASF3:
	.string	"signalDataPtr_pcv"
.LASF0:
	.string	"BitStartPn"
.LASF5:
	.string	"txSigNewVal_uo"
.LASF7:
	.string	"status_u8"
.LASF2:
	.string	"idSignal_u16"
.LASF4:
	.string	"txSigConstPtr_pcst"
.LASF6:
	.string	"sendIpduFlag_st"
	.extern	Det_ReportError,STT_FUNC,0
	.extern	Com_InitStatus_en,STT_OBJECT,1
	.extern	Com_Prv_SendIpdu,STT_FUNC,0
	.extern	Com_ByteCopy,STT_FUNC,0
	.extern	Com_TxIpduRam_ast,STT_OBJECT,-1
	.extern	Com_Prv_PackSignal,STT_FUNC,0
	.extern	Com_Prv_xTxIpduCfg_acst,STT_OBJECT,-1
	.extern	Com_Prv_xTxSigCfg_acst,STT_OBJECT,-1
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
