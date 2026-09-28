	.file	"Ccp_Cbk.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Ccp_RxIndication_CRO,"ax",@progbits
	.align 1
	.global	Ccp_RxIndication_CRO
	.type	Ccp_RxIndication_CRO, @function
Ccp_RxIndication_CRO:
.LFB31:
	.file 1 "bswcdd\\CCP\\CCP\\Ccp_Cbk.c"
	.loc 1 36 0
.LVL0:
	.loc 1 37 0
	j	CCPUSR_vidRxIndication_CRO
.LVL1:
.LFE31:
	.size	Ccp_RxIndication_CRO, .-Ccp_RxIndication_CRO
.section .text.Ccp_TxConfirmation_100us,"ax",@progbits
	.align 1
	.global	Ccp_TxConfirmation_100us
	.type	Ccp_TxConfirmation_100us, @function
Ccp_TxConfirmation_100us:
.LFB32:
	.loc 1 47 0
.LVL2:
	.loc 1 48 0
	j	CCPUSR_vidTxConfirmation_DAQ_SPY
.LVL3:
.LFE32:
	.size	Ccp_TxConfirmation_100us, .-Ccp_TxConfirmation_100us
.section .text.Ccp_TxConfirmation_1ms,"ax",@progbits
	.align 1
	.global	Ccp_TxConfirmation_1ms
	.type	Ccp_TxConfirmation_1ms, @function
Ccp_TxConfirmation_1ms:
.LFB33:
	.loc 1 52 0
.LVL4:
	.loc 1 53 0
	j	CCPUSR_vidTxConfirmation_DAQ_BASE_FAST
.LVL5:
.LFE33:
	.size	Ccp_TxConfirmation_1ms, .-Ccp_TxConfirmation_1ms
.section .text.Ccp_TxConfirmation_10ms,"ax",@progbits
	.align 1
	.global	Ccp_TxConfirmation_10ms
	.type	Ccp_TxConfirmation_10ms, @function
Ccp_TxConfirmation_10ms:
.LFB34:
	.loc 1 57 0
.LVL6:
	.loc 1 58 0
	j	CCPUSR_vidTxConfirmation_DAQ_SLOW
.LVL7:
.LFE34:
	.size	Ccp_TxConfirmation_10ms, .-Ccp_TxConfirmation_10ms
.section .text.Ccp_TxConfirmation_DTO,"ax",@progbits
	.align 1
	.global	Ccp_TxConfirmation_DTO
	.type	Ccp_TxConfirmation_DTO, @function
Ccp_TxConfirmation_DTO:
.LFB35:
	.loc 1 62 0
.LVL8:
	.loc 1 63 0
	j	CCPUSR_vidTxConfirmation_DTO
.LVL9:
.LFE35:
	.size	Ccp_TxConfirmation_DTO, .-Ccp_TxConfirmation_DTO
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
	.uaword	.LFB31
	.uaword	.LFE31-.LFB31
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB32
	.uaword	.LFE32-.LFB32
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB33
	.uaword	.LFE33-.LFB33
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB34
	.uaword	.LFE34-.LFB34
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB35
	.uaword	.LFE35-.LFB35
	.align 2
.LEFDE8:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\ComStack\\ComStack_Cfg.h"
	.file 4 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCPUSR\\CCPUSR_CanIf.h"
	.file 5 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCPUSR\\CCPUSR_Cfg.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x58a
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\CCP\\CCP\\Ccp_Cbk.c"
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
	.uaword	0x1c3
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
	.uaword	0x1ef
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
	.string	"PduIdType"
	.byte	0x3
	.byte	0x2c
	.uaword	0x1e1
	.uleb128 0x3
	.string	"PduLengthType"
	.byte	0x3
	.byte	0x30
	.uaword	0x1e1
	.uleb128 0x4
	.byte	0xc
	.byte	0x3
	.byte	0x39
	.uaword	0x2e9
	.uleb128 0x5
	.string	"SduDataPtr"
	.byte	0x3
	.byte	0x3b
	.uaword	0x2e9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"MetaDataPtr"
	.byte	0x3
	.byte	0x3c
	.uaword	0x2e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"SduLength"
	.byte	0x3
	.byte	0x3d
	.uaword	0x28c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x1b6
	.uleb128 0x3
	.string	"PduInfoType"
	.byte	0x3
	.byte	0x3e
	.uaword	0x2a1
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x6
	.byte	0x4
	.uaword	0x314
	.uleb128 0x7
	.uaword	0x2ef
	.uleb128 0x8
	.byte	0x1
	.string	"Ccp_RxIndication_CRO"
	.byte	0x1
	.byte	0x22
	.byte	0x1
	.uaword	.LFB31
	.uaword	.LFE31
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x37f
	.uleb128 0x9
	.string	"RxPduId"
	.byte	0x1
	.byte	0x22
	.uaword	0x27b
	.uaword	.LLST0
	.uleb128 0x9
	.string	"PduInfoPtr"
	.byte	0x1
	.byte	0x23
	.uaword	0x30e
	.uaword	.LLST1
	.uleb128 0xa
	.uaword	.LVL1
	.byte	0x1
	.uaword	0x49a
	.uleb128 0xb
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.string	"Ccp_TxConfirmation_100us"
	.byte	0x1
	.byte	0x2e
	.byte	0x1
	.uaword	.LFB32
	.uaword	.LFE32
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x3c7
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x1
	.byte	0x2e
	.uaword	0x27b
	.uaword	.LLST2
	.uleb128 0xd
	.uaword	.LVL3
	.byte	0x1
	.uaword	0x4ca
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.string	"Ccp_TxConfirmation_1ms"
	.byte	0x1
	.byte	0x33
	.byte	0x1
	.uaword	.LFB33
	.uaword	.LFE33
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x40d
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x1
	.byte	0x33
	.uaword	0x27b
	.uaword	.LLST3
	.uleb128 0xd
	.uaword	.LVL5
	.byte	0x1
	.uaword	0x4fb
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.string	"Ccp_TxConfirmation_10ms"
	.byte	0x1
	.byte	0x38
	.byte	0x1
	.uaword	.LFB34
	.uaword	.LFE34
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x454
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x1
	.byte	0x38
	.uaword	0x27b
	.uaword	.LLST4
	.uleb128 0xd
	.uaword	.LVL7
	.byte	0x1
	.uaword	0x532
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.string	"Ccp_TxConfirmation_DTO"
	.byte	0x1
	.byte	0x3d
	.byte	0x1
	.uaword	.LFB35
	.uaword	.LFE35
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x49a
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x1
	.byte	0x3d
	.uaword	0x27b
	.uaword	.LLST5
	.uleb128 0xd
	.uaword	.LVL9
	.byte	0x1
	.uaword	0x564
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.string	"CCPUSR_vidRxIndication_CRO"
	.byte	0x4
	.byte	0x24
	.byte	0x1
	.byte	0x1
	.uaword	0x4ca
	.uleb128 0xf
	.uaword	0x27b
	.uleb128 0xf
	.uaword	0x30e
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.string	"CCPUSR_vidTxConfirmation_DAQ_SPY"
	.byte	0x5
	.byte	0x62
	.byte	0x1
	.byte	0x1
	.uaword	0x4fb
	.uleb128 0xf
	.uaword	0x27b
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.string	"CCPUSR_vidTxConfirmation_DAQ_BASE_FAST"
	.byte	0x5
	.byte	0x61
	.byte	0x1
	.byte	0x1
	.uaword	0x532
	.uleb128 0xf
	.uaword	0x27b
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.string	"CCPUSR_vidTxConfirmation_DAQ_SLOW"
	.byte	0x5
	.byte	0x63
	.byte	0x1
	.byte	0x1
	.uaword	0x564
	.uleb128 0xf
	.uaword	0x27b
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.string	"CCPUSR_vidTxConfirmation_DTO"
	.byte	0x4
	.byte	0x23
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.uaword	0x27b
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL1-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL1-1
	.uaword	.LFE31
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL1-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL1-1
	.uaword	.LFE31
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL2
	.uaword	.LVL3-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL3-1
	.uaword	.LFE32
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL4
	.uaword	.LVL5-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL5-1
	.uaword	.LFE33
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL6
	.uaword	.LVL7-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL7-1
	.uaword	.LFE34
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL8
	.uaword	.LVL9-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL9-1
	.uaword	.LFE35
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x3c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB31
	.uaword	.LFE31-.LFB31
	.uaword	.LFB32
	.uaword	.LFE32-.LFB32
	.uaword	.LFB33
	.uaword	.LFE33-.LFB33
	.uaword	.LFB34
	.uaword	.LFE34-.LFB34
	.uaword	.LFB35
	.uaword	.LFE35-.LFB35
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB31
	.uaword	.LFE31
	.uaword	.LFB32
	.uaword	.LFE32
	.uaword	.LFB33
	.uaword	.LFE33
	.uaword	.LFB34
	.uaword	.LFE34
	.uaword	.LFB35
	.uaword	.LFE35
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"TxPduId"
	.extern	CCPUSR_vidTxConfirmation_DTO,STT_FUNC,0
	.extern	CCPUSR_vidTxConfirmation_DAQ_SLOW,STT_FUNC,0
	.extern	CCPUSR_vidTxConfirmation_DAQ_BASE_FAST,STT_FUNC,0
	.extern	CCPUSR_vidTxConfirmation_DAQ_SPY,STT_FUNC,0
	.extern	CCPUSR_vidRxIndication_CRO,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
