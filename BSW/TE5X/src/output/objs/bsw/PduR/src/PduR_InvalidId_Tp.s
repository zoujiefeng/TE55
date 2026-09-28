	.file	"PduR_InvalidId_Tp.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.PduR_invId_TpCopyRxData,"ax",@progbits
	.align 1
	.global	PduR_invId_TpCopyRxData
	.type	PduR_invId_TpCopyRxData, @function
PduR_invId_TpCopyRxData:
.LFB96:
	.file 1 "bsw\\PduR\\src\\PduR_InvalidId_Tp.c"
	.loc 1 35 0
.LVL0:
	.loc 1 44 0
	mov	%d2, 1
	ret
.LFE96:
	.size	PduR_invId_TpCopyRxData, .-PduR_invId_TpCopyRxData
.section .text.PduR_invId_TpStartOfReception,"ax",@progbits
	.align 1
	.global	PduR_invId_TpStartOfReception
	.type	PduR_invId_TpStartOfReception, @function
PduR_invId_TpStartOfReception:
.LFB97:
	.loc 1 77 0
.LVL1:
	.loc 1 86 0
	mov	%d2, 1
	ret
.LFE97:
	.size	PduR_invId_TpStartOfReception, .-PduR_invId_TpStartOfReception
.section .text.PduR_invId_TpRxIndication,"ax",@progbits
	.align 1
	.global	PduR_invId_TpRxIndication
	.type	PduR_invId_TpRxIndication, @function
PduR_invId_TpRxIndication:
.LFB98:
	.loc 1 114 0
.LVL2:
	ret
.LFE98:
	.size	PduR_invId_TpRxIndication, .-PduR_invId_TpRxIndication
.section .text.PduR_invId_TpCopyTxData,"ax",@progbits
	.align 1
	.global	PduR_invId_TpCopyTxData
	.type	PduR_invId_TpCopyTxData, @function
PduR_invId_TpCopyTxData:
.LFB99:
	.loc 1 178 0
.LVL3:
	.loc 1 189 0
	mov	%d2, 1
	ret
.LFE99:
	.size	PduR_invId_TpCopyTxData, .-PduR_invId_TpCopyTxData
.section .text.PduR_invId_TpTxConfirmation,"ax",@progbits
	.align 1
	.global	PduR_invId_TpTxConfirmation
	.type	PduR_invId_TpTxConfirmation, @function
PduR_invId_TpTxConfirmation:
.LFB100:
	.loc 1 217 0
.LVL4:
	ret
.LFE100:
	.size	PduR_invId_TpTxConfirmation, .-PduR_invId_TpTxConfirmation
.section .text.PduR_invId_UpCancelReceive,"ax",@progbits
	.align 1
	.global	PduR_invId_UpCancelReceive
	.type	PduR_invId_UpCancelReceive, @function
PduR_invId_UpCancelReceive:
.LFB101:
	.loc 1 240 0
.LVL5:
	.loc 1 245 0
	mov	%d2, 1
	ret
.LFE101:
	.size	PduR_invId_UpCancelReceive, .-PduR_invId_UpCancelReceive
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
	.file 5 ".\\output\\inc/..\\..\\bsw\\ComStack\\api\\ComStack_Types.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x643
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\PduR\\src\\PduR_InvalidId_Tp.c"
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
	.byte	0x2
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
	.uaword	0x1be
	.uleb128 0x3
	.string	"PduIdType"
	.byte	0x4
	.byte	0x2c
	.uaword	0x1e9
	.uleb128 0x3
	.string	"PduLengthType"
	.byte	0x4
	.byte	0x30
	.uaword	0x1e9
	.uleb128 0x4
	.byte	0xc
	.byte	0x4
	.byte	0x39
	.uaword	0x307
	.uleb128 0x5
	.string	"SduDataPtr"
	.byte	0x4
	.byte	0x3b
	.uaword	0x307
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"MetaDataPtr"
	.byte	0x4
	.byte	0x3c
	.uaword	0x307
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"SduLength"
	.byte	0x4
	.byte	0x3d
	.uaword	0x2aa
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x1be
	.uleb128 0x3
	.string	"PduInfoType"
	.byte	0x4
	.byte	0x3e
	.uaword	0x2bf
	.uleb128 0x7
	.byte	0x1
	.byte	0x5
	.byte	0x38
	.uaword	0x367
	.uleb128 0x8
	.string	"BUFREQ_OK"
	.sleb128 0
	.uleb128 0x8
	.string	"BUFREQ_E_NOT_OK"
	.sleb128 1
	.uleb128 0x8
	.string	"BUFREQ_E_BUSY"
	.sleb128 2
	.uleb128 0x8
	.string	"BUFREQ_E_OVFL"
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.string	"BufReq_ReturnType"
	.byte	0x5
	.byte	0x3d
	.uaword	0x320
	.uleb128 0x7
	.byte	0x1
	.byte	0x5
	.byte	0x41
	.uaword	0x3b7
	.uleb128 0x8
	.string	"TP_DATACONF"
	.sleb128 0
	.uleb128 0x8
	.string	"TP_DATARETRY"
	.sleb128 1
	.uleb128 0x8
	.string	"TP_CONFPENDING"
	.sleb128 2
	.byte	0
	.uleb128 0x3
	.string	"TpDataStateType"
	.byte	0x5
	.byte	0x45
	.uaword	0x380
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.byte	0x48
	.uaword	0x403
	.uleb128 0x5
	.string	"TpDataState"
	.byte	0x5
	.byte	0x4a
	.uaword	0x3b7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"TxTpDataCnt"
	.byte	0x5
	.byte	0x4b
	.uaword	0x2aa
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x3
	.string	"RetryInfoType"
	.byte	0x5
	.byte	0x4c
	.uaword	0x3ce
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x6
	.byte	0x4
	.uaword	0x42a
	.uleb128 0x9
	.uaword	0x30d
	.uleb128 0x6
	.byte	0x4
	.uaword	0x2aa
	.uleb128 0x6
	.byte	0x4
	.uaword	0x403
	.uleb128 0xa
	.byte	0x1
	.string	"PduR_invId_TpCopyRxData"
	.byte	0x1
	.byte	0x20
	.byte	0x1
	.uaword	0x367
	.uaword	.LFB96
	.uaword	.LFE96
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x494
	.uleb128 0xb
	.string	"id"
	.byte	0x1
	.byte	0x20
	.uaword	0x299
	.byte	0x1
	.byte	0x54
	.uleb128 0xb
	.string	"info"
	.byte	0x1
	.byte	0x21
	.uaword	0x424
	.byte	0x1
	.byte	0x64
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x1
	.byte	0x22
	.uaword	0x42f
	.byte	0x1
	.byte	0x65
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.string	"PduR_invId_TpStartOfReception"
	.byte	0x1
	.byte	0x4a
	.byte	0x1
	.uaword	0x367
	.uaword	.LFB97
	.uaword	.LFE97
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x4fa
	.uleb128 0xb
	.string	"id"
	.byte	0x1
	.byte	0x4a
	.uaword	0x299
	.byte	0x1
	.byte	0x54
	.uleb128 0xb
	.string	"TpSduLength"
	.byte	0x1
	.byte	0x4b
	.uaword	0x2aa
	.byte	0x1
	.byte	0x55
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x1
	.byte	0x4c
	.uaword	0x42f
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.string	"PduR_invId_TpRxIndication"
	.byte	0x1
	.byte	0x70
	.byte	0x1
	.uaword	.LFB98
	.uaword	.LFE98
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x546
	.uleb128 0xb
	.string	"id"
	.byte	0x1
	.byte	0x70
	.uaword	0x299
	.byte	0x1
	.byte	0x54
	.uleb128 0xb
	.string	"result"
	.byte	0x1
	.byte	0x71
	.uaword	0x283
	.byte	0x1
	.byte	0x55
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.string	"PduR_invId_TpCopyTxData"
	.byte	0x1
	.byte	0xae
	.byte	0x1
	.uaword	0x367
	.uaword	.LFB99
	.uaword	.LFE99
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x5bb
	.uleb128 0xb
	.string	"id"
	.byte	0x1
	.byte	0xae
	.uaword	0x299
	.byte	0x1
	.byte	0x54
	.uleb128 0xb
	.string	"info"
	.byte	0x1
	.byte	0xaf
	.uaword	0x424
	.byte	0x1
	.byte	0x64
	.uleb128 0xb
	.string	"retry"
	.byte	0x1
	.byte	0xb0
	.uaword	0x435
	.byte	0x1
	.byte	0x65
	.uleb128 0xb
	.string	"availableDataPtr"
	.byte	0x1
	.byte	0xb1
	.uaword	0x42f
	.byte	0x1
	.byte	0x66
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.string	"PduR_invId_TpTxConfirmation"
	.byte	0x1
	.byte	0xd7
	.byte	0x1
	.uaword	.LFB100
	.uaword	.LFE100
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x609
	.uleb128 0xb
	.string	"id"
	.byte	0x1
	.byte	0xd7
	.uaword	0x299
	.byte	0x1
	.byte	0x54
	.uleb128 0xb
	.string	"result"
	.byte	0x1
	.byte	0xd8
	.uaword	0x283
	.byte	0x1
	.byte	0x55
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.string	"PduR_invId_UpCancelReceive"
	.byte	0x1
	.byte	0xef
	.byte	0x1
	.uaword	0x283
	.uaword	.LFB101
	.uaword	.LFE101
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xb
	.string	"id"
	.byte	0x1
	.byte	0xef
	.uaword	0x299
	.byte	0x1
	.byte	0x54
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.byte	0
	.byte	0
	.byte	0
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
.LASF0:
	.string	"bufferSizePtr"
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
