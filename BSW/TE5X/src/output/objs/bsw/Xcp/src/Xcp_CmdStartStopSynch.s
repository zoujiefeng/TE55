	.file	"Xcp_CmdStartStopSynch.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Xcp_CmdStartStopSynch,"ax",@progbits
	.align 1
	.global	Xcp_CmdStartStopSynch
	.type	Xcp_CmdStartStopSynch, @function
Xcp_CmdStartStopSynch:
.LFB49:
	.file 1 "bsw\\Xcp\\src\\Xcp_CmdStartStopSynch.c"
	.loc 1 32 0
.LVL0:
	.loc 1 40 0
	ld.a	%a12, [%a4]0
.LVL1:
	.loc 1 32 0
	mov.aa	%a15, %a4
	mov	%d15, %d4
	.loc 1 46 0
	call	Xcp_DaqTriggerStateStartStop
.LVL2:
	.loc 1 53 0
	ld.bu	%d3, [%a12] 1
	jge.u	%d3, 3, .L11
	.loc 1 59 0
	ne	%d4, %d2, 255
	jz	%d4, .L13
.LVL3:
.L7:
	.loc 1 108 0
	eq	%d3, %d2, 254
	jnz	%d3, .L1
	.loc 1 112 0
	ne	%d3, %d2, 252
	jz	%d3, .L14
	.loc 1 117 0
	ne	%d3, %d2, 36
	jz	%d3, .L15
	.loc 1 125 0
	mov	%e4, %d15, %d2
	j	Xcp_SendErrRes
.LVL4:
.L11:
	.loc 1 57 0
	mov	%d2, 39
.LVL5:
	.loc 1 125 0
	mov	%e4, %d15, %d2
	j	Xcp_SendErrRes
.LVL6:
.L13:
	.loc 1 66 0
	mov	%d4, %d15
	.loc 1 64 0
	jz	%d3, .L16
	.loc 1 71 0
	jeq	%d3, 1, .L17
	.loc 1 95 0
	call	Xcp_DaqListStopSelected
.LVL7:
.L4:
	.loc 1 103 0
	ne	%d3, %d2, 255
	jnz	%d3, .L7
.LVL8:
.L6:
	.loc 1 106 0
	mov	%d4, %d15
	j	Xcp_SendPosRes
.LVL9:
.L1:
	ret
.L15:
	.loc 1 120 0
	mov	%d4, 42
	mov	%d5, %d15
	j	Xcp_SendErrRes
.LVL10:
.L14:
	.loc 1 115 0
	mov.aa	%a4, %a15
	mov	%d4, %d15
	j	Xcp_StoreCommand
.LVL11:
.L16:
	.loc 1 66 0
	call	Xcp_DaqListStopAll
.LVL12:
	j	.L4
.L17:
	.loc 1 73 0
	call	Xcp_DaqListStartSelected
.LVL13:
	j	.L6
.LFE49:
	.size	Xcp_CmdStartStopSynch, .-Xcp_CmdStartStopSynch
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
	.uaword	.LFB49
	.uaword	.LFE49-.LFB49
	.align 2
.LEFDE0:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\ComStack\\ComStack_Cfg.h"
	.file 4 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Types.h"
	.file 5 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Commands.h"
	.file 6 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Priv.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x807
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Xcp\\src\\Xcp_CmdStartStopSynch.c"
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
	.uaword	0x1ce
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
	.uaword	0x1fa
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
	.string	"PduLengthType"
	.byte	0x3
	.byte	0x30
	.uaword	0x1ec
	.uleb128 0x4
	.byte	0xc
	.byte	0x3
	.byte	0x39
	.uaword	0x2e3
	.uleb128 0x5
	.string	"SduDataPtr"
	.byte	0x3
	.byte	0x3b
	.uaword	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"MetaDataPtr"
	.byte	0x3
	.byte	0x3c
	.uaword	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"SduLength"
	.byte	0x3
	.byte	0x3d
	.uaword	0x286
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x1c1
	.uleb128 0x3
	.string	"PduInfoType"
	.byte	0x3
	.byte	0x3e
	.uaword	0x29b
	.uleb128 0x7
	.byte	0x1
	.byte	0x4
	.uahalf	0x1cb
	.uaword	0x51c
	.uleb128 0x8
	.string	"XCP_ERR_CMD_SYNCH"
	.sleb128 0
	.uleb128 0x8
	.string	"XCP_ERR_CMD_BUSY"
	.sleb128 16
	.uleb128 0x8
	.string	"XCP_ERR_DAQ_ACTIVE"
	.sleb128 17
	.uleb128 0x8
	.string	"XCP_ERR_PGM_ACTIVE"
	.sleb128 18
	.uleb128 0x8
	.string	"XCP_ERR_CMD_UNKNOWN"
	.sleb128 32
	.uleb128 0x8
	.string	"XCP_ERR_CMD_SYNTAX"
	.sleb128 33
	.uleb128 0x8
	.string	"XCP_ERR_OUT_OF_RANGE"
	.sleb128 34
	.uleb128 0x8
	.string	"XCP_ERR_WRITE_PROTECTED"
	.sleb128 35
	.uleb128 0x8
	.string	"XCP_ERR_ACCESS_DENIED"
	.sleb128 36
	.uleb128 0x8
	.string	"XCP_ERR_ACCESS_LOCKED"
	.sleb128 37
	.uleb128 0x8
	.string	"XCP_ERR_PAGE_NOT_VALID"
	.sleb128 38
	.uleb128 0x8
	.string	"XCP_ERR_MODE_NOT_VALID"
	.sleb128 39
	.uleb128 0x8
	.string	"XCP_ERR_SEGMENT_NOT_VALID"
	.sleb128 40
	.uleb128 0x8
	.string	"XCP_ERR_SEQUENCE"
	.sleb128 41
	.uleb128 0x8
	.string	"XCP_ERR_DAQ_CONFIG"
	.sleb128 42
	.uleb128 0x8
	.string	"XCP_ERR_MEMORY_OVERFLOW"
	.sleb128 48
	.uleb128 0x8
	.string	"XCP_ERR_GENERIC"
	.sleb128 49
	.uleb128 0x8
	.string	"XCP_ERR_VERIFY"
	.sleb128 50
	.uleb128 0x8
	.string	"XCP_ERR_RES_TEMP_NOT_ACCESS"
	.sleb128 51
	.uleb128 0x8
	.string	"XCP_ERR_SUBCMD_UNKNOWN"
	.sleb128 52
	.uleb128 0x8
	.string	"XCP_REPEAT_COMMAND"
	.sleb128 252
	.uleb128 0x8
	.string	"XCP_NO_ACCESS_HIDE"
	.sleb128 253
	.uleb128 0x8
	.string	"XCP_NO_RESPONSE"
	.sleb128 254
	.uleb128 0x8
	.string	"XCP_NO_ERROR"
	.sleb128 255
	.byte	0
	.uleb128 0x9
	.string	"Xcp_ErrorCode"
	.byte	0x4
	.uahalf	0x1e5
	.uaword	0x2fc
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x6
	.byte	0x4
	.uaword	0x544
	.uleb128 0xa
	.uaword	0x2e9
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0xb
	.byte	0x2
	.byte	0x5
	.uahalf	0x415
	.uaword	0x588
	.uleb128 0xc
	.string	"CommandCode_u8"
	.byte	0x5
	.uahalf	0x416
	.uaword	0x1c1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"Mode_u8"
	.byte	0x5
	.uahalf	0x417
	.uaword	0x1c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x9
	.string	"Xcp_CmdStartStopSynch_t"
	.byte	0x5
	.uahalf	0x418
	.uaword	0x551
	.uleb128 0xd
	.byte	0x1
	.string	"Xcp_CmdStartStopSynch"
	.byte	0x1
	.byte	0x1f
	.byte	0x1
	.uaword	.LFB49
	.uaword	.LFE49
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x6dc
	.uleb128 0xe
	.string	"XcpPacket"
	.byte	0x1
	.byte	0x1f
	.uaword	0x53e
	.uaword	.LLST0
	.uleb128 0xe
	.string	"protLayerId"
	.byte	0x1
	.byte	0x1f
	.uaword	0x1c1
	.uaword	.LLST1
	.uleb128 0xf
	.string	"CmdPtr"
	.byte	0x1
	.byte	0x28
	.uaword	0x6dc
	.byte	0x1
	.byte	0x6c
	.uleb128 0x10
	.string	"Error"
	.byte	0x1
	.byte	0x2b
	.uaword	0x51c
	.uaword	.LLST2
	.uleb128 0x11
	.uaword	.LVL2
	.uaword	0x6ec
	.uaword	0x63a
	.uleb128 0x12
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x12
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.uaword	.LVL4
	.byte	0x1
	.uaword	0x723
	.uaword	0x64f
	.uleb128 0x12
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.uaword	.LVL6
	.byte	0x1
	.uaword	0x723
	.uaword	0x66a
	.uleb128 0x12
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x12
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x27
	.byte	0
	.uleb128 0x11
	.uaword	.LVL7
	.uaword	0x748
	.uaword	0x67e
	.uleb128 0x12
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.uaword	.LVL9
	.byte	0x1
	.uaword	0x775
	.uaword	0x693
	.uleb128 0x12
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.uaword	.LVL10
	.byte	0x1
	.uaword	0x723
	.uaword	0x6ae
	.uleb128 0x12
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x12
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x2a
	.byte	0
	.uleb128 0x13
	.uaword	.LVL11
	.byte	0x1
	.uaword	0x795
	.uaword	0x6c9
	.uleb128 0x12
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x12
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.uaword	.LVL12
	.uaword	0x7bc
	.uleb128 0x14
	.uaword	.LVL13
	.uaword	0x7e4
	.byte	0
	.uleb128 0xa
	.uaword	0x6e1
	.uleb128 0x6
	.byte	0x4
	.uaword	0x6e7
	.uleb128 0xa
	.uaword	0x588
	.uleb128 0x15
	.byte	0x1
	.string	"Xcp_DaqTriggerStateStartStop"
	.byte	0x6
	.uahalf	0x270
	.byte	0x1
	.uaword	0x51c
	.byte	0x1
	.uaword	0x723
	.uleb128 0x16
	.uaword	0x53e
	.uleb128 0x16
	.uaword	0x1c1
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"Xcp_SendErrRes"
	.byte	0x6
	.uahalf	0x25d
	.byte	0x1
	.byte	0x1
	.uaword	0x748
	.uleb128 0x16
	.uaword	0x51c
	.uleb128 0x16
	.uaword	0x1c1
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.string	"Xcp_DaqListStopSelected"
	.byte	0x6
	.uahalf	0x26f
	.byte	0x1
	.uaword	0x51c
	.byte	0x1
	.uaword	0x775
	.uleb128 0x16
	.uaword	0x1c1
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"Xcp_SendPosRes"
	.byte	0x6
	.uahalf	0x25c
	.byte	0x1
	.byte	0x1
	.uaword	0x795
	.uleb128 0x16
	.uaword	0x1c1
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"Xcp_StoreCommand"
	.byte	0x6
	.uahalf	0x26c
	.byte	0x1
	.byte	0x1
	.uaword	0x7bc
	.uleb128 0x16
	.uaword	0x53e
	.uleb128 0x16
	.uaword	0x1c1
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.string	"Xcp_DaqListStopAll"
	.byte	0x6
	.uahalf	0x26d
	.byte	0x1
	.uaword	0x51c
	.byte	0x1
	.uaword	0x7e4
	.uleb128 0x16
	.uaword	0x1c1
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"Xcp_DaqListStartSelected"
	.byte	0x6
	.uahalf	0x269
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.uaword	0x1c1
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
	.uleb128 0x5
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
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
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL2-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL2-1
	.uaword	.LFE49
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL2-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL2-1
	.uaword	.LFE49
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL2
	.uaword	.LVL4-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x3
	.byte	0x8
	.byte	0x27
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL7-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL9
	.uaword	.LVL10-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL10
	.uaword	.LVL11-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL11
	.uaword	.LVL12-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL12
	.uaword	.LVL13-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL13
	.uaword	.LFE49
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
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
	.uaword	.LFB49
	.uaword	.LFE49-.LFB49
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB49
	.uaword	.LFE49
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.extern	Xcp_DaqListStartSelected,STT_FUNC,0
	.extern	Xcp_DaqListStopAll,STT_FUNC,0
	.extern	Xcp_StoreCommand,STT_FUNC,0
	.extern	Xcp_SendPosRes,STT_FUNC,0
	.extern	Xcp_DaqListStopSelected,STT_FUNC,0
	.extern	Xcp_SendErrRes,STT_FUNC,0
	.extern	Xcp_DaqTriggerStateStartStop,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
