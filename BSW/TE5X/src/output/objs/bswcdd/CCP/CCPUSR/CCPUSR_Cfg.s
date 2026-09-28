	.file	"CCPUSR_Cfg.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	CCPUSR_vidTxConfirmation_DAQ_BASE_FAST
	.type	CCPUSR_vidTxConfirmation_DAQ_BASE_FAST, @function
CCPUSR_vidTxConfirmation_DAQ_BASE_FAST:
.LFB31:
	.file 1 "bswcdd\\CCP\\CCPUSR\\CCPUSR_Cfg.c"
	.loc 1 96 0
.LVL0:
	.loc 1 101 0
	mov	%d4, 0
.LVL1:
	j	CCP_vidDaqListTxMgr
.LVL2:
.LFE31:
	.size	CCPUSR_vidTxConfirmation_DAQ_BASE_FAST, .-CCPUSR_vidTxConfirmation_DAQ_BASE_FAST
	.align 1
	.global	CCPUSR_vidTxConfirmation_DAQ_SPY
	.type	CCPUSR_vidTxConfirmation_DAQ_SPY, @function
CCPUSR_vidTxConfirmation_DAQ_SPY:
.LFB32:
	.loc 1 105 0
.LVL3:
	.loc 1 110 0
	mov	%d4, 1
.LVL4:
	j	CCP_vidDaqListTxMgr
.LVL5:
.LFE32:
	.size	CCPUSR_vidTxConfirmation_DAQ_SPY, .-CCPUSR_vidTxConfirmation_DAQ_SPY
	.align 1
	.global	CCPUSR_vidTxConfirmation_DAQ_SLOW
	.type	CCPUSR_vidTxConfirmation_DAQ_SLOW, @function
CCPUSR_vidTxConfirmation_DAQ_SLOW:
.LFB33:
	.loc 1 114 0
.LVL6:
	.loc 1 119 0
	mov	%d4, 2
.LVL7:
	j	CCP_vidDaqListTxMgr
.LVL8:
.LFE33:
	.size	CCPUSR_vidTxConfirmation_DAQ_SLOW, .-CCPUSR_vidTxConfirmation_DAQ_SLOW
	.global	CCPUSR_kau32ReadOnlyMemoryZone
.section .const.CCPUSR_kau32ReadOnlyMemoryZone,"a",@progbits
	.align 2
	.type	CCPUSR_kau32ReadOnlyMemoryZone, @object
	.size	CCPUSR_kau32ReadOnlyMemoryZone, 16
CCPUSR_kau32ReadOnlyMemoryZone:
	.word	-2147123200
	.word	-2147057665
	.word	-1358954496
	.word	-1358626817
	.global	CCPUSR_kau32WritableMemoryZone
.section .const.CCPUSR_kau32WritableMemoryZone,"a",@progbits
	.align 2
	.type	CCPUSR_kau32WritableMemoryZone, @object
	.size	CCPUSR_kau32WritableMemoryZone, 56
CCPUSR_kau32WritableMemoryZone:
	.word	1073741824
	.word	1073840127
	.word	1342177280
	.word	1342275583
	.word	1610612736
	.word	1610858495
	.word	1879048192
	.word	1879293951
	.word	-1342177280
	.word	-1342144512
	.word	-2147090432
	.word	-2147057665
	.word	-2147123200
	.word	-2147090433
	.global	CCPUSR_kaudtDaqMsgID
.section .const.CCPUSR_kaudtDaqMsgID,"a",@progbits
	.align 1
	.type	CCPUSR_kaudtDaqMsgID, @object
	.size	CCPUSR_kaudtDaqMsgID, 6
CCPUSR_kaudtDaqMsgID:
	.short	143
	.short	144
	.short	145
	.global	CCPUSR_kaudtDtoMsgID
.section .const.CCPUSR_kaudtDtoMsgID,"a",@progbits
	.align 1
	.type	CCPUSR_kaudtDtoMsgID, @object
	.size	CCPUSR_kaudtDtoMsgID, 2
CCPUSR_kaudtDtoMsgID:
	.short	146
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
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\ComStack\\ComStack_Cfg.h"
	.file 4 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x4c8
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\CCP\\CCPUSR\\CCPUSR_Cfg.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ltext0
	.uaword	.Letext0
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
	.uaword	0x1e3
	.uleb128 0x4
	.uaword	0x21f
	.uaword	0x2ac
	.uleb128 0x5
	.uaword	0x2ac
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x6
	.byte	0x1
	.string	"CCPUSR_vidTxConfirmation_DAQ_BASE_FAST"
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.uaword	.LFB31
	.uaword	.LFE31
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x314
	.uleb128 0x7
	.uaword	.LASF0
	.byte	0x1
	.byte	0x5f
	.uaword	0x28b
	.uaword	.LLST0
	.uleb128 0x8
	.uaword	.LVL2
	.byte	0x1
	.uaword	0x4ab
	.uleb128 0x9
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.string	"CCPUSR_vidTxConfirmation_DAQ_SPY"
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.uaword	.LFB32
	.uaword	.LFE32
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x36a
	.uleb128 0x7
	.uaword	.LASF0
	.byte	0x1
	.byte	0x68
	.uaword	0x28b
	.uaword	.LLST1
	.uleb128 0x8
	.uaword	.LVL5
	.byte	0x1
	.uaword	0x4ab
	.uleb128 0x9
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.string	"CCPUSR_vidTxConfirmation_DAQ_SLOW"
	.byte	0x1
	.byte	0x71
	.byte	0x1
	.uaword	.LFB33
	.uaword	.LFE33
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x3c1
	.uleb128 0x7
	.uaword	.LASF0
	.byte	0x1
	.byte	0x71
	.uaword	0x28b
	.uaword	.LLST2
	.uleb128 0x8
	.uaword	.LVL8
	.byte	0x1
	.uaword	0x4ab
	.uleb128 0x9
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x4
	.uaword	0x28b
	.uaword	0x3d1
	.uleb128 0x5
	.uaword	0x2ac
	.byte	0
	.byte	0
	.uleb128 0xa
	.string	"CCPUSR_kaudtDtoMsgID"
	.byte	0x1
	.byte	0x27
	.uaword	0x3f4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CCPUSR_kaudtDtoMsgID
	.uleb128 0xb
	.uaword	0x3c1
	.uleb128 0x4
	.uaword	0x28b
	.uaword	0x40f
	.uleb128 0x5
	.uaword	0x2ac
	.byte	0
	.uleb128 0x5
	.uaword	0x2ac
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.string	"CCPUSR_kaudtDaqMsgID"
	.byte	0x1
	.byte	0x2d
	.uaword	0x432
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CCPUSR_kaudtDaqMsgID
	.uleb128 0xb
	.uaword	0x3f9
	.uleb128 0x4
	.uaword	0x21f
	.uaword	0x447
	.uleb128 0x5
	.uaword	0x2ac
	.byte	0xd
	.byte	0
	.uleb128 0xa
	.string	"CCPUSR_kau32WritableMemoryZone"
	.byte	0x1
	.byte	0x36
	.uaword	0x474
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CCPUSR_kau32WritableMemoryZone
	.uleb128 0xb
	.uaword	0x437
	.uleb128 0xa
	.string	"CCPUSR_kau32ReadOnlyMemoryZone"
	.byte	0x1
	.byte	0x43
	.uaword	0x4a6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CCPUSR_kau32ReadOnlyMemoryZone
	.uleb128 0xb
	.uaword	0x29c
	.uleb128 0xc
	.byte	0x1
	.string	"CCP_vidDaqListTxMgr"
	.byte	0x4
	.byte	0xc2
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.uaword	0x1b8
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0x2
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
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0-.text
	.uaword	.LVL1-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL1-.text
	.uaword	.LFE31-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL3-.text
	.uaword	.LVL4-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL4-.text
	.uaword	.LFE32-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL6-.text
	.uaword	.LVL7-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL7-.text
	.uaword	.LFE33-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
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
	.uaword	.Ltext0
	.uaword	.Letext0-.Ltext0
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"TxPduId"
	.extern	CCP_vidDaqListTxMgr,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
