	.file	"Com_SendIpdu.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Com_Prv_SendIpdu,"ax",@progbits
	.align 1
	.global	Com_Prv_SendIpdu
	.type	Com_Prv_SendIpdu, @function
Com_Prv_SendIpdu:
.LFB188:
	.file 1 "bsw\\Com\\src\\Com_SendIpdu.c"
	.loc 1 86 0
.LVL0:
	.loc 1 114 0
	and	%d5, %d5, 255
.LVL1:
	.loc 1 86 0
	sub.a	%SP, 16
.LCFI0:
	.loc 1 86 0
	mov	%d15, %d4
	.loc 1 114 0
	jz.t	%d5, 0, .L2
.LBB62:
	.loc 1 121 0
	movh.a	%a12, hi:Com_TxIpduRam_ast
	lea	%a12, [%a12] lo:Com_TxIpduRam_ast
	sh	%d15, 4
	addsc.a	%a15, %a12, %d15, 0
	mov	%d2, 0
	st.h	[%a15] 8, %d2
	.loc 1 124 0
	jnz.t	%d5, 1, .L30
.L3:
.LVL2:
.LBB63:
.LBB64:
	.loc 1 442 0
	mov	%d3, 0
	.loc 1 426 0
	jnz.t	%d5, 4, .L20
	.loc 1 433 0
	addsc.a	%a15, %a12, %d15, 0
	ld.a	%a15, [%a15]0
	ld.bu	%d3, [%a15] 6
.L20:
	addsc.a	%a15, %a12, %d15, 0
	.loc 1 468 0
	ld.hu	%d2, [%a15] 4
	st.b	[%a15] 12, %d3
	jnz	%d2, .L10
	.loc 1 469 0
	ld.hu	%d2, [%a15] 10
.LVL3:
	.loc 1 468 0
	jnz.t	%d2, 3, .L11
	.loc 1 473 0
	jnz	%d3, .L12
.LVL4:
.LBB65:
.LBB66:
	.file 2 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
	.loc 2 646 0
	or	%d2, %d2, 16
.LBE66:
.LBE65:
	.loc 1 509 0
	mov	%d15, 1
.LBB68:
.LBB67:
	.loc 2 646 0
	st.h	[%a15] 10, %d2
.LVL5:
.LBE67:
.LBE68:
	.loc 1 509 0
	st.h	[%a15] 8, %d15
	ret
.LVL6:
.L2:
.LBE64:
.LBE63:
.LBE62:
.LBB83:
.LBB84:
	.loc 2 646 0
	movh.a	%a12, hi:Com_TxIpduRam_ast
	lea	%a12, [%a12] lo:Com_TxIpduRam_ast
	sh	%d15, %d4, 4
	addsc.a	%a15, %a12, %d15, 0
.LBE84:
.LBE83:
.LBB88:
	.loc 1 193 0
	mul	%d8, %d4, 28
.LBE88:
.LBB95:
.LBB85:
	.loc 2 646 0
	ld.h	%d3, [%a15] 10
.LBE85:
.LBE95:
.LBB96:
	.loc 1 193 0
	movh.a	%a13, hi:Com_Prv_xTxIpduCfg_acst
.LBE96:
.LBB97:
.LBB86:
	.loc 2 646 0
	andn	%d3, %d3, ~(-17)
.LBE86:
.LBE97:
.LBB98:
	.loc 1 193 0
	lea	%a13, [%a13] lo:Com_Prv_xTxIpduCfg_acst
.LBE98:
.LBB99:
.LBB87:
	.loc 2 646 0
	st.h	[%a15] 10, %d3
.LVL7:
.LBE87:
.LBE99:
.LBB100:
	.loc 1 193 0
	addsc.a	%a15, %a13, %d8, 0
	ld.w	%d2, [%a15]0
	.loc 1 230 0
	ld.a	%a2, [%a15] 8
	ld.h	%d3, [%a15] 22
	.loc 1 193 0
	st.w	[%SP] 4, %d2
.LVL8:
	.loc 1 194 0
	ld.h	%d2, [%a15] 12
	.loc 1 230 0
	nand.t	%d3, %d3,9, %d3,9
	nez.a	%d5, %a2
	.loc 1 194 0
	st.h	[%SP] 12, %d2
.LVL9:
	.loc 1 230 0
	and	%d3, %d5
	.loc 1 233 0
	lea	%a15, [%SP] 4
	.loc 1 230 0
	jnz	%d3, .L14
.LVL10:
.L17:
	.loc 1 264 0
	addsc.a	%a13, %a13, %d8, 0
	mov.aa	%a4, %a15
	ld.hu	%d4, [%a13] 18
	call	PduR_ComTransmit
.LVL11:
	ld.hu	%d2, [%a13] 14
.LVL12:
.LBB89:
.LBB90:
.LBB91:
.LBB92:
	.loc 1 745 0
	jz	%d2, .L31
.LBE92:
.LBE91:
	.loc 1 657 0
	addsc.a	%a12, %a12, %d15, 0
.LBB94:
.LBB93:
	.loc 1 745 0
	ld.hu	%d3, [%a12] 4
	jnz	%d3, .L1
	.loc 1 757 0
	st.h	[%a12] 4, %d2
	ret
.L31:
	ret
.LVL13:
.L14:
.LBE93:
.LBE94:
.LBE90:
.LBE89:
	.loc 1 233 0
	mov.aa	%a4, %a15
	calli	%a2
.LVL14:
	.loc 1 241 0
	jnz	%d2, .L17
.LVL15:
.L1:
	ret
.LVL16:
.L30:
.LBE100:
.LBB101:
.LBB73:
.LBB74:
	.loc 1 311 0
	st.b	[%a15] 12, %d2
.LVL17:
.LBB75:
.LBB76:
	.loc 2 599 0
	ld.bu	%d2, [%a15] 13
.LBE76:
.LBE75:
	.loc 1 314 0
	and	%d2, %d2, 3
	jeq	%d2, 1, .L5
	jz	%d2, .L3
	jne	%d2, 3, .L1
	.loc 1 318 0
	jnz.t	%d5, 5, .L9
	.loc 1 322 0
	mov	%d15, 1
	st.h	[%a15] 6, %d15
	ret
.LVL18:
.L10:
	ld.hu	%d2, [%a15] 10
.L11:
.LVL19:
.LBE74:
.LBE73:
.LBB79:
.LBB71:
.LBB69:
.LBB70:
	.loc 2 646 0
	addsc.a	%a12, %a12, %d15, 0
	or	%d2, %d2, 8
	st.h	[%a12] 10, %d2
	ret
.LVL20:
.L5:
.LBE70:
.LBE69:
.LBE71:
.LBE79:
.LBB80:
.LBB77:
	.loc 1 350 0
	jnz.t	%d5, 2, .L8
	.loc 1 352 0
	jnz.t	%d5, 5, .L9
	.loc 1 356 0
	st.h	[%a15] 6, %d2
	ret
.L9:
	.loc 1 362 0
	ld.a	%a2, [%a15+]4
	ld.hu	%d15, [%a2] 2
	st.h	[%a15] 2, %d15
	ret
.LVL21:
.L12:
.LBE77:
.LBE80:
.LBB81:
.LBB72:
	.loc 1 531 0
	mov	%d15, 1
	st.h	[%a15] 8, %d15
	ret
.LVL22:
.L8:
.LBE72:
.LBE81:
.LBB82:
.LBB78:
	.loc 1 368 0
	ld.a	%a2, [%a15]0
	.loc 1 375 0
	ld.h	%d2, [%a2]0
	add	%d2, 1
	st.h	[%a15] 6, %d2
.LVL23:
	j	.L3
.LBE78:
.LBE82:
.LBE101:
.LFE188:
	.size	Com_Prv_SendIpdu, .-Com_Prv_SendIpdu
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
	.uaword	.LFB188
	.uaword	.LFE188-.LFB188
	.byte	0x4
	.uaword	.LCFI0-.LFB188
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE0:
.section .text,"ax",@progbits
.Letext0:
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 4 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 5 ".\\output\\inc/..\\..\\bsw\\ComStack\\ComStack_Cfg.h"
	.file 6 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cfg_Internal.h"
	.file 7 "bsw\\Com\\src\\Com_Prv_Types.h"
	.file 8 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_Cfg_SchM.h"
	.file 9 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h"
	.file 10 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Variant.h"
	.file 11 ".\\output\\inc/..\\..\\bsw\\PduR\\PduR_Com.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xe48
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Com\\src\\Com_SendIpdu.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0xd8
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
	.byte	0x3
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
	.uaword	0x1c5
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
	.byte	0x4
	.byte	0x60
	.uaword	0x1b8
	.uleb128 0x3
	.string	"PduIdType"
	.byte	0x5
	.byte	0x2c
	.uaword	0x1e3
	.uleb128 0x3
	.string	"PduLengthType"
	.byte	0x5
	.byte	0x30
	.uaword	0x1e3
	.uleb128 0x4
	.byte	0xc
	.byte	0x5
	.byte	0x39
	.uaword	0x310
	.uleb128 0x5
	.string	"SduDataPtr"
	.byte	0x5
	.byte	0x3b
	.uaword	0x310
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"MetaDataPtr"
	.byte	0x5
	.byte	0x3c
	.uaword	0x310
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"SduLength"
	.byte	0x5
	.byte	0x3d
	.uaword	0x2b3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x1b8
	.uleb128 0x3
	.string	"PduInfoType"
	.byte	0x5
	.byte	0x3e
	.uaword	0x2c8
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x7
	.string	"Com_TxIntSignalId_tuo"
	.byte	0x6
	.uahalf	0x1c1
	.uaword	0x1b8
	.uleb128 0x7
	.string	"Com_MainFunc_tuo"
	.byte	0x6
	.uahalf	0x23e
	.uaword	0x1b8
	.uleb128 0x6
	.byte	0x4
	.uaword	0x1e3
	.uleb128 0x4
	.byte	0x1
	.byte	0x7
	.byte	0x32
	.uaword	0x432
	.uleb128 0x8
	.string	"isEventTrig_u1"
	.byte	0x7
	.byte	0x34
	.uaword	0x21f
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"isModeChangd_u1"
	.byte	0x7
	.byte	0x35
	.uaword	0x21f
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"isSigTriggered_u1"
	.byte	0x7
	.byte	0x36
	.uaword	0x21f
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"isTimeoutReq_u1"
	.byte	0x7
	.byte	0x37
	.uaword	0x21f
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"ignoreRepetitions_u1"
	.byte	0x7
	.byte	0x38
	.uaword	0x21f
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"isSwtIpduTxMode_u1"
	.byte	0x7
	.byte	0x39
	.uaword	0x21f
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Com_SendIpduInfo_tst"
	.byte	0x7
	.byte	0x3a
	.uaword	0x372
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.byte	0x4b
	.uaword	0x4d8
	.uleb128 0x5
	.string	"timePeriod_u16"
	.byte	0x7
	.byte	0x4d
	.uaword	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"timeOffset_u16"
	.byte	0x7
	.byte	0x4e
	.uaword	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x5
	.string	"repetitionPeriod_u16"
	.byte	0x7
	.byte	0x4f
	.uaword	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"numOfRepetitions_u8"
	.byte	0x7
	.byte	0x50
	.uaword	0x1b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x5
	.string	"mode_u8"
	.byte	0x7
	.byte	0x57
	.uaword	0x1b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.byte	0
	.uleb128 0x3
	.string	"Com_TransModeInfo_tst"
	.byte	0x7
	.byte	0x5b
	.uaword	0x44e
	.uleb128 0x3
	.string	"Com_TMConstPtr_tpcst"
	.byte	0x7
	.byte	0x65
	.uaword	0x511
	.uleb128 0x6
	.byte	0x4
	.uaword	0x517
	.uleb128 0x9
	.uaword	0x4d8
	.uleb128 0xa
	.byte	0x1c
	.byte	0x7
	.uahalf	0x322
	.uaword	0x637
	.uleb128 0xb
	.string	"buffPtr_pu8"
	.byte	0x7
	.uahalf	0x324
	.uaword	0x310
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"tMConstPtr_pcst"
	.byte	0x7
	.uahalf	0x326
	.uaword	0x511
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"callOut_pfct"
	.byte	0x7
	.uahalf	0x329
	.uaword	0x652
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"size_uo"
	.byte	0x7
	.uahalf	0x342
	.uaword	0x2b3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.string	"minDelayTime_u16"
	.byte	0x7
	.uahalf	0x34d
	.uaword	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xb
	.string	"numOfSig_u16"
	.byte	0x7
	.uahalf	0x34f
	.uaword	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"idPduRSrcPdu_uo"
	.byte	0x7
	.uahalf	0x354
	.uaword	0x2a2
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0xb
	.string	"idTxSig_uo"
	.byte	0x7
	.uahalf	0x356
	.uaword	0x335
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.string	"txIPduFields_u16"
	.byte	0x7
	.uahalf	0x375
	.uaword	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0xb
	.string	"idMainFunc_uo"
	.byte	0x7
	.uahalf	0x379
	.uaword	0x353
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.string	"paddingByte_u8"
	.byte	0x7
	.uahalf	0x37a
	.uaword	0x1b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x19
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.uaword	0x25c
	.uaword	0x64c
	.uleb128 0xd
	.uaword	0x2a2
	.uleb128 0xd
	.uaword	0x64c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x316
	.uleb128 0x6
	.byte	0x4
	.uaword	0x637
	.uleb128 0x7
	.string	"Com_Prv_xTxIpduInfoCfg_tst"
	.byte	0x7
	.uahalf	0x37c
	.uaword	0x51c
	.uleb128 0x7
	.string	"Com_TxIpduCfg_tpcst"
	.byte	0x7
	.uahalf	0x385
	.uaword	0x697
	.uleb128 0x6
	.byte	0x4
	.uaword	0x69d
	.uleb128 0x9
	.uaword	0x658
	.uleb128 0x6
	.byte	0x4
	.uaword	0x6a8
	.uleb128 0x9
	.uaword	0x316
	.uleb128 0xa
	.byte	0x10
	.byte	0x7
	.uahalf	0x524
	.uaword	0x780
	.uleb128 0xb
	.string	"currentTxModePtr_pcst"
	.byte	0x7
	.uahalf	0x526
	.uaword	0x4f5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"cntrMinDelayTime_u16"
	.byte	0x7
	.uahalf	0x52d
	.uaword	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"cntrTimePeriod_u16"
	.byte	0x7
	.uahalf	0x52e
	.uaword	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xb
	.string	"cntrRepPeriod_u16"
	.byte	0x7
	.uahalf	0x532
	.uaword	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"txFlags_u16"
	.byte	0x7
	.uahalf	0x555
	.uaword	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xb
	.string	"cntrRepetitions_u8"
	.byte	0x7
	.uahalf	0x556
	.uaword	0x1b8
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.string	"transMode_u8"
	.byte	0x7
	.uahalf	0x562
	.uaword	0x1b8
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.byte	0
	.uleb128 0x7
	.string	"Com_TxIpduRamData_tst"
	.byte	0x7
	.uahalf	0x564
	.uaword	0x6ad
	.uleb128 0x7
	.string	"Com_TxIpduRam_tpst"
	.byte	0x7
	.uahalf	0x56d
	.uaword	0x7b9
	.uleb128 0x6
	.byte	0x4
	.uaword	0x780
	.uleb128 0xe
	.string	"Bfx_Prv_GetBits_u8u8u8_u8_Inl"
	.byte	0x2
	.uahalf	0x255
	.byte	0x1
	.uaword	0x1b8
	.byte	0x3
	.uaword	0x81a
	.uleb128 0xf
	.string	"Data"
	.byte	0x2
	.uahalf	0x255
	.uaword	0x1b8
	.uleb128 0xf
	.string	"BitStartPn"
	.byte	0x2
	.uahalf	0x255
	.uaword	0x1b8
	.uleb128 0xf
	.string	"BitLn"
	.byte	0x2
	.uahalf	0x255
	.uaword	0x1b8
	.byte	0
	.uleb128 0xe
	.string	"Bfx_Prv_GetBit_u16u8_u8_Inl"
	.byte	0x2
	.uahalf	0x1d1
	.byte	0x1
	.uaword	0x25c
	.byte	0x3
	.uaword	0x860
	.uleb128 0xf
	.string	"Data"
	.byte	0x2
	.uahalf	0x1d1
	.uaword	0x1e3
	.uleb128 0xf
	.string	"BitPn"
	.byte	0x2
	.uahalf	0x1d1
	.uaword	0x1b8
	.byte	0
	.uleb128 0x10
	.string	"Bfx_Prv_PutBit_u16u8u8_Inl"
	.byte	0x2
	.uahalf	0x281
	.byte	0x1
	.byte	0x3
	.uaword	0x8bf
	.uleb128 0xf
	.string	"Data"
	.byte	0x2
	.uahalf	0x281
	.uaword	0x36c
	.uleb128 0xf
	.string	"BitPn"
	.byte	0x2
	.uahalf	0x281
	.uaword	0x1b8
	.uleb128 0xf
	.string	"Status"
	.byte	0x2
	.uahalf	0x281
	.uaword	0x25c
	.uleb128 0x11
	.string	"tmp_u8"
	.byte	0x2
	.uahalf	0x283
	.uaword	0x1b8
	.byte	0
	.uleb128 0x10
	.string	"Com_Prv_LoadMinimumDelayTime"
	.byte	0x1
	.uahalf	0x2e1
	.byte	0x1
	.byte	0x3
	.uaword	0x8ff
	.uleb128 0x12
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x2e1
	.uaword	0x79e
	.uleb128 0x12
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x2e1
	.uaword	0x67b
	.byte	0
	.uleb128 0x13
	.string	"SchM_Enter_Com_TxIpduProtArea_SENDIPDU_TXFLAGS"
	.byte	0x8
	.uahalf	0x15d
	.byte	0x1
	.byte	0x3
	.uleb128 0x13
	.string	"SchM_Exit_Com_TxIpduProtArea_SENDIPDU_TXFLAGS"
	.byte	0x8
	.uahalf	0x161
	.byte	0x1
	.byte	0x3
	.uleb128 0x10
	.string	"Com_Prv_ProcessTxReqStatus"
	.byte	0x1
	.uahalf	0x28b
	.byte	0x1
	.byte	0x3
	.uaword	0x9be
	.uleb128 0x12
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x28b
	.uaword	0x2a2
	.uleb128 0x12
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x28b
	.uaword	0x28c
	.uleb128 0x14
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x28d
	.uaword	0x67b
	.uleb128 0x14
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x28e
	.uaword	0x79e
	.byte	0
	.uleb128 0xe
	.string	"Com_Prv_CalculateTxPduLength"
	.byte	0x1
	.uahalf	0x238
	.byte	0x1
	.uaword	0x2b3
	.byte	0x3
	.uaword	0xa19
	.uleb128 0x12
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x238
	.uaword	0x2a2
	.uleb128 0x14
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x23a
	.uaword	0x67b
	.uleb128 0x11
	.string	"txPduLength_uo"
	.byte	0x1
	.uahalf	0x23e
	.uaword	0x2b3
	.byte	0
	.uleb128 0x13
	.string	"SchM_Enter_Com_TxIpduProtArea_SENDIPDU_DATA"
	.byte	0x8
	.uahalf	0x146
	.byte	0x1
	.byte	0x3
	.uleb128 0x13
	.string	"SchM_Exit_Com_TxIpduProtArea_SENDIPDU_DATA"
	.byte	0x8
	.uahalf	0x14a
	.byte	0x1
	.byte	0x3
	.uleb128 0xe
	.string	"Com_Prv_LoadPeriodicModeInfo"
	.byte	0x1
	.uahalf	0x12b
	.byte	0x1
	.uaword	0x25c
	.byte	0x3
	.uaword	0xad8
	.uleb128 0x12
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x12b
	.uaword	0x2a2
	.uleb128 0x12
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x12b
	.uaword	0x432
	.uleb128 0x14
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x12d
	.uaword	0x79e
	.uleb128 0x14
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x12e
	.uaword	0x25c
	.byte	0
	.uleb128 0xe
	.string	"Com_Prv_LoadEventModeInfo"
	.byte	0x1
	.uahalf	0x19a
	.byte	0x1
	.uaword	0x25c
	.byte	0x3
	.uaword	0xb31
	.uleb128 0x12
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x19a
	.uaword	0x2a2
	.uleb128 0x12
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x19a
	.uaword	0x432
	.uleb128 0x14
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x19f
	.uaword	0x79e
	.uleb128 0x14
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x1a0
	.uaword	0x25c
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.string	"Com_Prv_SendIpdu"
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.uaword	.LFB188
	.uaword	.LFE188
	.uaword	.LLST0
	.byte	0x1
	.uaword	0xdce
	.uleb128 0x16
	.uaword	.LASF2
	.byte	0x1
	.byte	0x55
	.uaword	0x2a2
	.uaword	.LLST1
	.uleb128 0x16
	.uaword	.LASF4
	.byte	0x1
	.byte	0x55
	.uaword	0x432
	.uaword	.LLST2
	.uleb128 0x17
	.uaword	.LASF1
	.byte	0x1
	.byte	0x57
	.uaword	0x67b
	.uleb128 0x17
	.uaword	.LASF0
	.byte	0x1
	.byte	0x58
	.uaword	0x79e
	.uleb128 0x18
	.uaword	.LASF6
	.byte	0x1
	.byte	0x59
	.uaword	0x25c
	.uaword	.LLST3
	.uleb128 0x19
	.uaword	.Ldebug_ranges0+0
	.uaword	0xcba
	.uleb128 0x18
	.uaword	.LASF5
	.byte	0x1
	.byte	0x74
	.uaword	0x25c
	.uaword	.LLST4
	.uleb128 0x1a
	.uaword	0xad8
	.uaword	.LBB63
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x92
	.uaword	0xc5f
	.uleb128 0x1b
	.uaword	0xb0c
	.uleb128 0x1c
	.uaword	0xb00
	.uaword	.LLST5
	.uleb128 0x1d
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0x1e
	.uaword	0xb18
	.uleb128 0x1f
	.uaword	0xb24
	.uaword	.LLST6
	.uleb128 0x20
	.uaword	0x860
	.uaword	.LBB65
	.uaword	.Ldebug_ranges0+0x38
	.byte	0x1
	.uahalf	0x1f0
	.uaword	0xc22
	.uleb128 0x1c
	.uaword	0x8a0
	.uaword	.LLST7
	.uleb128 0x1c
	.uaword	0x892
	.uaword	.LLST8
	.uleb128 0x1b
	.uaword	0x885
	.uleb128 0x1d
	.uaword	.Ldebug_ranges0+0x38
	.uleb128 0x1f
	.uaword	0x8af
	.uaword	.LLST7
	.byte	0
	.byte	0
	.uleb128 0x21
	.uaword	0x860
	.uaword	.LBB69
	.uaword	.LBE69
	.byte	0x1
	.uahalf	0x21a
	.uleb128 0x1c
	.uaword	0x8a0
	.uaword	.LLST10
	.uleb128 0x1c
	.uaword	0x892
	.uaword	.LLST11
	.uleb128 0x1b
	.uaword	0x885
	.uleb128 0x22
	.uaword	.LBB70
	.uaword	.LBE70
	.uleb128 0x1f
	.uaword	0x8af
	.uaword	.LLST10
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.uaword	0xa7c
	.uaword	.LBB73
	.uaword	.Ldebug_ranges0+0x50
	.byte	0x1
	.byte	0x7f
	.uleb128 0x1b
	.uaword	0xab3
	.uleb128 0x1c
	.uaword	0xaa7
	.uaword	.LLST13
	.uleb128 0x1d
	.uaword	.Ldebug_ranges0+0x50
	.uleb128 0x1e
	.uaword	0xabf
	.uleb128 0x1f
	.uaword	0xacb
	.uaword	.LLST14
	.uleb128 0x21
	.uaword	0x7bf
	.uaword	.LBB75
	.uaword	.LBE75
	.byte	0x1
	.uahalf	0x13a
	.uleb128 0x1c
	.uaword	0x80b
	.uaword	.LLST15
	.uleb128 0x1c
	.uaword	0x7f8
	.uaword	.LLST16
	.uleb128 0x1b
	.uaword	0x7eb
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uaword	0x860
	.uaword	.LBB83
	.uaword	.Ldebug_ranges0+0x70
	.byte	0x1
	.byte	0x9c
	.uaword	0xcf4
	.uleb128 0x1c
	.uaword	0x8a0
	.uaword	.LLST17
	.uleb128 0x1c
	.uaword	0x892
	.uaword	.LLST18
	.uleb128 0x1b
	.uaword	0x885
	.uleb128 0x1d
	.uaword	.Ldebug_ranges0+0x70
	.uleb128 0x1f
	.uaword	0x8af
	.uaword	.LLST17
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	.Ldebug_ranges0+0x98
	.uleb128 0x24
	.string	"txIPduInfo_st"
	.byte	0x1
	.byte	0xb7
	.uaword	0x316
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x17
	.uaword	.LASF3
	.byte	0x1
	.byte	0xb8
	.uaword	0x28c
	.uleb128 0x25
	.string	"isTransmitCallout_b"
	.byte	0x1
	.byte	0xba
	.uaword	0x25c
	.uleb128 0x26
	.string	"ipduCalloutStatus_b"
	.byte	0x1
	.byte	0xbb
	.uaword	0x25c
	.uaword	.LLST20
	.uleb128 0x27
	.uaword	0x968
	.uaword	.LBB89
	.uaword	.LBE89
	.byte	0x1
	.uahalf	0x110
	.uaword	0xda4
	.uleb128 0x1b
	.uaword	0x999
	.uleb128 0x1b
	.uaword	0x98d
	.uleb128 0x22
	.uaword	.LBB90
	.uaword	.LBE90
	.uleb128 0x1e
	.uaword	0x9a5
	.uleb128 0x1e
	.uaword	0x9b1
	.uleb128 0x28
	.uaword	0x8bf
	.uaword	.LBB91
	.uaword	.Ldebug_ranges0+0xc0
	.byte	0x1
	.uahalf	0x299
	.uleb128 0x1b
	.uaword	0x8e6
	.uleb128 0x1b
	.uaword	0x8f2
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.uaword	.LVL11
	.uaword	0xe25
	.uaword	0xdc0
	.uleb128 0x2a
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x2a
	.byte	0x1
	.byte	0x54
	.byte	0x4
	.byte	0x8d
	.sleb128 18
	.byte	0x94
	.byte	0x2
	.byte	0
	.uleb128 0x2b
	.uaword	.LVL14
	.uleb128 0x2a
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uaword	0x780
	.uaword	0xdd9
	.uleb128 0x2d
	.byte	0
	.uleb128 0x2e
	.string	"Com_TxIpduRam_ast"
	.byte	0x9
	.byte	0x6e
	.uaword	0xdce
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.uaword	0x658
	.uaword	0xdff
	.uleb128 0x2d
	.byte	0
	.uleb128 0x2e
	.string	"Com_Prv_xTxIpduCfg_acst"
	.byte	0xa
	.byte	0x6d
	.uaword	0xe20
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.uaword	0xdf4
	.uleb128 0x2f
	.byte	0x1
	.string	"PduR_ComTransmit"
	.byte	0xb
	.byte	0x5d
	.byte	0x1
	.uaword	0x28c
	.byte	0x1
	.uleb128 0xd
	.uaword	0x2a2
	.uleb128 0xd
	.uaword	0x6a2
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
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
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x34
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
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uaword	.LFB188
	.uaword	.LCFI0
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0
	.uaword	.LFE188
	.uahalf	0x2
	.byte	0x8a
	.sleb128 16
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL10
	.uaword	.LVL13
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LVL14-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL14-1
	.uaword	.LVL16
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LFE188
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL0
	.uaword	.LVL6
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LFE188
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL2
	.uaword	.LVL6
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LVL20
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL2
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL18
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL2
	.uaword	.LVL6
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LVL20
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL4
	.uaword	.LVL6
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL4
	.uaword	.LVL6
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL16
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL22
	.uaword	.LFE188
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL16
	.uaword	.LVL18
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL23
	.uaword	.LFE188
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL22
	.uaword	.LFE188
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL22
	.uaword	.LFE188
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL6
	.uaword	.LVL15
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL6
	.uaword	.LVL15
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x52
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
	.uaword	.LFB188
	.uaword	.LFE188-.LFB188
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB62
	.uaword	.LBE62
	.uaword	.LBB101
	.uaword	.LBE101
	.uaword	0
	.uaword	0
	.uaword	.LBB63
	.uaword	.LBE63
	.uaword	.LBB79
	.uaword	.LBE79
	.uaword	.LBB81
	.uaword	.LBE81
	.uaword	0
	.uaword	0
	.uaword	.LBB65
	.uaword	.LBE65
	.uaword	.LBB68
	.uaword	.LBE68
	.uaword	0
	.uaword	0
	.uaword	.LBB73
	.uaword	.LBE73
	.uaword	.LBB80
	.uaword	.LBE80
	.uaword	.LBB82
	.uaword	.LBE82
	.uaword	0
	.uaword	0
	.uaword	.LBB83
	.uaword	.LBE83
	.uaword	.LBB95
	.uaword	.LBE95
	.uaword	.LBB97
	.uaword	.LBE97
	.uaword	.LBB99
	.uaword	.LBE99
	.uaword	0
	.uaword	0
	.uaword	.LBB88
	.uaword	.LBE88
	.uaword	.LBB96
	.uaword	.LBE96
	.uaword	.LBB98
	.uaword	.LBE98
	.uaword	.LBB100
	.uaword	.LBE100
	.uaword	0
	.uaword	0
	.uaword	.LBB91
	.uaword	.LBE91
	.uaword	.LBB94
	.uaword	.LBE94
	.uaword	0
	.uaword	0
	.uaword	.LFB188
	.uaword	.LFE188
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"txIpduRamPtr_pst"
.LASF1:
	.string	"txIpduConstPtr_pcst"
.LASF6:
	.string	"sendIpdu_b"
.LASF3:
	.string	"ipduTransStatus_u8"
.LASF2:
	.string	"idTxPdu_uo"
.LASF4:
	.string	"sendIpduFlag_st"
.LASF5:
	.string	"isEventMode_b"
	.extern	PduR_ComTransmit,STT_FUNC,0
	.extern	Com_Prv_xTxIpduCfg_acst,STT_OBJECT,-1
	.extern	Com_TxIpduRam_ast,STT_OBJECT,-1
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
