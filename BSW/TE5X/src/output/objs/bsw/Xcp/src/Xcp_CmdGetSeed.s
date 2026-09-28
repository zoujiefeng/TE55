	.file	"Xcp_CmdGetSeed.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Xcp_CmdGetSeed,"ax",@progbits
	.align 1
	.global	Xcp_CmdGetSeed
	.type	Xcp_CmdGetSeed, @function
Xcp_CmdGetSeed:
.LFB49:
	.file 1 "bsw\\Xcp\\src\\Xcp_CmdGetSeed.c"
	.loc 1 32 0
.LVL0:
	.loc 1 40 0
	ld.a	%a15, [%a4]0
.LVL1:
	.loc 1 49 0
	mov	%d2, 0
	.loc 1 32 0
	sub.a	%SP, 8
.LCFI0:
	.loc 1 49 0
	st.w	[%SP] 4, %d2
	.loc 1 55 0
	ld.bu	%d2, [%a15] 1
	.loc 1 32 0
	mov	%d15, %d4
.LVL2:
	.loc 1 55 0
	jnz	%d2, .L2
	.loc 1 58 0
	ld.bu	%d2, [%a15] 2
	eq	%d3, %d2, 16
	.loc 1 59 0
	addi	%d4, %d2, -4
.LVL3:
	and	%d4, %d4, 251
	or.eq	%d3, %d2, 1
	.loc 1 61 0
	or.eq	%d3, %d4, 0
	.loc 1 80 0
	mov	%d4, 34
	.loc 1 61 0
	jnz	%d3, .L14
.LVL4:
.L3:
	.loc 1 147 0
	mov	%d5, %d15
	j	Xcp_SendErrRes
.LVL5:
.L2:
	.loc 1 103 0
	mov	%d4, 33
.LVL6:
	.loc 1 84 0
	jne	%d2, 1, .L3
	.loc 1 87 0
	movh	%d9, hi:Xcp_Cleared
	mov	%d2, 340
	addi	%d9, %d9, lo:Xcp_Cleared
	madd	%d3, %d9, %d15, %d2
	mov.a	%a15, %d3
.LVL7:
	ld.bu	%d2, [%a15] 313
	jz	%d2, .L11
	.loc 1 91 0
	mul	%d10, %d15, 76
	movh.a	%a12, hi:Xcp_NoInit
	lea	%a12, [%a12] lo:Xcp_NoInit
	addsc.a	%a15, %a12, %d10, 0
	ld.a	%a5, [%a15] 4
	st.a	[%SP] 4, %a5
	j	.L5
.LVL8:
.L14:
	.loc 1 64 0
	mul	%d10, %d15, 76
	movh.a	%a12, hi:Xcp_NoInit
	lea	%a12, [%a12] lo:Xcp_NoInit
	addsc.a	%a15, %a12, %d10, 0
.LVL9:
	ld.bu	%d3, [%a15] 2
	and	%d3, %d2
	jnz	%d3, .L15
	.loc 1 72 0
	movh	%d9, hi:Xcp_Cleared
	addi	%d9, %d9, lo:Xcp_Cleared
	mov	%d2, 340
	madd	%d4, %d9, %d15, %d2
	mov.a	%a5, 0
	mov.a	%a15, %d4
	st.b	[%a15] 313, %d3
.LVL10:
.L5:
	.loc 1 44 0
	mov	%d3, 340
	mul	%d3, %d15
	.loc 1 111 0
	mov.a	%a15, %d9
	.loc 1 110 0
	mov	%d2, -1
	.loc 1 44 0
	mov.a	%a4, %d3
	.loc 1 111 0
	addsc.a	%a13, %a15, %d3, 0
	.loc 1 44 0
	add.a	%a4, 4
	addsc.a	%a4, %a4, %d9, 0
	.loc 1 114 0
	addsc.a	%a2, %a12, %d10, 0
	.loc 1 110 0
	st.b	[%a4]0, %d2
	.loc 1 111 0
	ld.bu	%d2, [%a13] 313
	.loc 1 114 0
	ld.bu	%d8, [%a2] 16
	.loc 1 111 0
	st.b	[%a4] 1, %d2
	.loc 1 114 0
	ld.bu	%d2, [%a13] 313
	add	%d8, -2
	min	%d8, %d8, %d2
	and	%d11, %d8, 255
.LVL11:
	and	%d8, %d8, 255
.LVL12:
	.loc 1 118 0
	add.a	%a4, 2
	mov	%d4, %d8
	call	rba_BswSrv_MemCopy
.LVL13:
	.loc 1 121 0
	ld.w	%d2, [%SP] 4
	.loc 1 127 0
	ne	%d3, %d11, 0
	.loc 1 121 0
	add	%d2, %d8
	st.w	[%SP] 4, %d2
	.loc 1 124 0
	ld.bu	%d2, [%a13] 313
	sub	%d2, %d11
	and	%d2, %d2, 255
	st.b	[%a13] 313, %d2
	.loc 1 127 0
	and.eq	%d3, %d2, 0
	jz	%d3, .L8
	.loc 1 130 0
	mov	%d2, 1
	st.b	[%a13] 312, %d2
.L8:
	.loc 1 134 0
	mov	%d2, 340
	madd	%d4, %d9, %d15, %d2
	add	%d8, 2
	.loc 1 141 0
	addsc.a	%a12, %a12, %d10, 0
	.loc 1 134 0
	mov.a	%a15, %d4
	.loc 1 137 0
	mov	%d4, %d15
	.loc 1 134 0
	st.w	[%a15] 12, %d8
	.loc 1 137 0
	call	Xcp_SendRes
.LVL14:
	.loc 1 141 0
	ld.w	%d15, [%SP] 4
.LVL15:
	st.w	[%a12] 4, %d15
	.loc 1 142 0
	mov	%d15, 0
	st.b	[%a12] 8, %d15
	ret
.LVL16:
.L15:
	.loc 1 67 0
	mov	%e4, %d15, %d2
	lea	%a4, [%SP] 4
.LVL17:
	call	XcpAppl_GetSeed
.LVL18:
	movh	%d9, hi:Xcp_Cleared
	addi	%d9, %d9, lo:Xcp_Cleared
	mov	%d3, 340
	madd	%d4, %d9, %d15, %d3
	ld.a	%a5, [%SP] 4
	mov.a	%a15, %d4
	st.b	[%a15] 313, %d2
	j	.L5
.LVL19:
.L11:
	.loc 1 96 0
	mov	%d4, 41
	j	.L3
.LFE49:
	.size	Xcp_CmdGetSeed, .-Xcp_CmdGetSeed
.section .text.Xcp_InitSeedKey,"ax",@progbits
	.align 1
	.global	Xcp_InitSeedKey
	.type	Xcp_InitSeedKey, @function
Xcp_InitSeedKey:
.LFB50:
	.loc 1 173 0
.LVL20:
	.loc 1 175 0
	movh.a	%a15, hi:Xcp_NoInit
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:Xcp_NoInit
	madd	%d3, %d15, %d4, 76
	mov	%d15, 29
	mov.a	%a15, %d3
	st.b	[%a15] 2, %d15
	.loc 1 178 0
	movh.a	%a15, hi:Xcp_Cleared
	mov.d	%d3, %a15
	mov	%d15, 340
	addi	%d2, %d3, lo:Xcp_Cleared
	madd	%d3, %d2, %d4, %d15
	mov	%d15, 0
	mov.a	%a15, %d3
	st.b	[%a15] 312, %d15
	.loc 1 179 0
	st.b	[%a15] 313, %d15
	ret
.LFE50:
	.size	Xcp_InitSeedKey, .-Xcp_InitSeedKey
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
	.byte	0x4
	.uaword	.LCFI0-.LFB49
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB50
	.uaword	.LFE50-.LFB50
	.align 2
.LEFDE2:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\ComStack\\ComStack_Cfg.h"
	.file 4 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Types.h"
	.file 5 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Commands.h"
	.file 6 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Priv.h"
	.file 7 ".\\output\\inc/..\\..\\bsw\\integration\\rba_BswSrv\\api\\rba_BswSrv.h"
	.file 8 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Cbk.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x15bc
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Xcp\\src\\Xcp_CmdGetSeed.c"
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
	.byte	0x2
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
	.byte	0x2
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
	.byte	0x2
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
	.string	"PduLengthType"
	.byte	0x3
	.byte	0x30
	.uaword	0x1e5
	.uleb128 0x4
	.byte	0xc
	.byte	0x3
	.byte	0x39
	.uaword	0x2f9
	.uleb128 0x5
	.string	"SduDataPtr"
	.byte	0x3
	.byte	0x3b
	.uaword	0x2f9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"MetaDataPtr"
	.byte	0x3
	.byte	0x3c
	.uaword	0x2f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"SduLength"
	.byte	0x3
	.byte	0x3d
	.uaword	0x29c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x1ba
	.uleb128 0x3
	.string	"PduInfoType"
	.byte	0x3
	.byte	0x3e
	.uaword	0x2b1
	.uleb128 0x7
	.byte	0x1
	.byte	0x4
	.byte	0xf9
	.uaword	0x38d
	.uleb128 0x8
	.string	"XCP_STATE_DISCONNECTED"
	.sleb128 0
	.uleb128 0x8
	.string	"XCP_STATE_DISCONNECTING"
	.sleb128 1
	.uleb128 0x8
	.string	"XCP_STATE_CONNECTED"
	.sleb128 2
	.uleb128 0x8
	.string	"XCP_STATE_RESUME"
	.sleb128 3
	.uleb128 0x8
	.string	"XCP_STATE_DISABLED"
	.sleb128 240
	.byte	0
	.uleb128 0x3
	.string	"Xcp_State_t"
	.byte	0x4
	.byte	0xff
	.uaword	0x312
	.uleb128 0x9
	.string	"Xcp_AddrValue"
	.byte	0x4
	.uahalf	0x1be
	.uaword	0x221
	.uleb128 0xa
	.byte	0x8
	.byte	0x4
	.uahalf	0x1c1
	.uaword	0x3ea
	.uleb128 0xb
	.string	"AddrValue"
	.byte	0x4
	.uahalf	0x1c3
	.uaword	0x3a0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"Extension"
	.byte	0x4
	.uahalf	0x1c4
	.uaword	0x1ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x9
	.string	"Xcp_AddrType_t"
	.byte	0x4
	.uahalf	0x1c5
	.uaword	0x3b6
	.uleb128 0x9
	.string	"Xcp_PduIdType"
	.byte	0x4
	.uahalf	0x1c7
	.uaword	0x1ba
	.uleb128 0xc
	.byte	0x1
	.byte	0x4
	.uahalf	0x1cb
	.uaword	0x637
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
	.uaword	0x417
	.uleb128 0xc
	.byte	0x1
	.byte	0x4
	.uahalf	0x1e9
	.uaword	0x780
	.uleb128 0x8
	.string	"XCP_DAQ_STATE_NO_DAQ"
	.sleb128 0
	.uleb128 0x8
	.string	"XCP_DAQ_STATE_FREE_DAQ"
	.sleb128 1
	.uleb128 0x8
	.string	"XCP_DAQ_STATE_ALLOC_DAQ"
	.sleb128 2
	.uleb128 0x8
	.string	"XCP_DAQ_STATE_ALLOC_ODT"
	.sleb128 3
	.uleb128 0x8
	.string	"XCP_DAQ_STATE_ALLOC_ODT_ENTRY"
	.sleb128 4
	.uleb128 0x8
	.string	"XCP_DAQ_STATE_WRITE_DAQ"
	.sleb128 5
	.uleb128 0x8
	.string	"XCP_DAQ_STATE_PREPARE_START"
	.sleb128 6
	.uleb128 0x8
	.string	"XCP_DAQ_STATE_SHIFTING"
	.sleb128 7
	.uleb128 0x8
	.string	"XCP_DAQ_STATE_STOP_REQUESTED"
	.sleb128 8
	.uleb128 0x8
	.string	"XCP_DAQ_STATE_READY_TO_RUN"
	.sleb128 9
	.uleb128 0x8
	.string	"XCP_DAQ_STATE_RUNNING"
	.sleb128 10
	.byte	0
	.uleb128 0x9
	.string	"Xcp_DaqState_t"
	.byte	0x4
	.uahalf	0x1f5
	.uaword	0x64d
	.uleb128 0xa
	.byte	0xc
	.byte	0x4
	.uahalf	0x254
	.uaword	0x7bf
	.uleb128 0xd
	.uaword	.LASF0
	.byte	0x4
	.uahalf	0x256
	.uaword	0x7bf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.uaword	.LASF1
	.byte	0x4
	.uahalf	0x257
	.uaword	0x221
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0xe
	.uaword	0x1ba
	.uaword	0x7cf
	.uleb128 0xf
	.uaword	0x7cf
	.byte	0x7
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x9
	.string	"Xcp_Cto8_t"
	.byte	0x4
	.uahalf	0x258
	.uaword	0x797
	.uleb128 0x6
	.byte	0x4
	.uaword	0x7f4
	.uleb128 0x10
	.uaword	0x2ff
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.byte	0xeb
	.uaword	0x84b
	.uleb128 0x5
	.string	"CommandCode_u8"
	.byte	0x5
	.byte	0xec
	.uaword	0x1ba
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"Mode_u8"
	.byte	0x5
	.byte	0xed
	.uaword	0x1ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x5
	.string	"Resource_u8"
	.byte	0x5
	.byte	0xee
	.uaword	0x1ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x3
	.string	"Xcp_CmdGetSeed_t"
	.byte	0x5
	.byte	0xef
	.uaword	0x801
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.byte	0xf2
	.uaword	0x8af
	.uleb128 0x5
	.string	"PacketId_u8"
	.byte	0x5
	.byte	0xf3
	.uaword	0x1ba
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"LengthOfSeed_u8"
	.byte	0x5
	.byte	0xf4
	.uaword	0x1ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x5
	.string	"Seed_au8"
	.byte	0x5
	.byte	0xf5
	.uaword	0x8af
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0xe
	.uaword	0x1ba
	.uaword	0x8bf
	.uleb128 0xf
	.uaword	0x7cf
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.string	"Xcp_ResGetSeed_t"
	.byte	0x5
	.byte	0xf6
	.uaword	0x863
	.uleb128 0x11
	.byte	0x4
	.uleb128 0x6
	.byte	0x4
	.uaword	0x8df
	.uleb128 0x12
	.uleb128 0x6
	.byte	0x4
	.uaword	0x1e5
	.uleb128 0x7
	.byte	0x1
	.byte	0x6
	.byte	0xf5
	.uaword	0x95f
	.uleb128 0x8
	.string	"XCP_BG_IDLE"
	.sleb128 0
	.uleb128 0x8
	.string	"XCP_BG_CHKSUM"
	.sleb128 1
	.uleb128 0x8
	.string	"XCP_BG_MEM_WRITE"
	.sleb128 2
	.uleb128 0x8
	.string	"XCP_BG_REPEAT_CMD"
	.sleb128 3
	.uleb128 0x8
	.string	"XCP_BG_DO_DISCONNECT"
	.sleb128 4
	.uleb128 0x8
	.string	"XCP_BG_CANCEL_REQ"
	.sleb128 5
	.byte	0
	.uleb128 0x3
	.string	"Xcp_BgActivity_t"
	.byte	0x6
	.byte	0xfc
	.uaword	0x8e6
	.uleb128 0xa
	.byte	0x8
	.byte	0x6
	.uahalf	0x10d
	.uaword	0x9e5
	.uleb128 0xb
	.string	"WritePos_u16"
	.byte	0x6
	.uahalf	0x10f
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"ReadPos_u16"
	.byte	0x6
	.uahalf	0x110
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.string	"ReadPos_OdtNum_u16"
	.byte	0x6
	.uahalf	0x111
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"QueSize_u16"
	.byte	0x6
	.uahalf	0x112
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0
	.uleb128 0x9
	.string	"Xcp_Que_t"
	.byte	0x6
	.uahalf	0x113
	.uaword	0x977
	.uleb128 0xa
	.byte	0x14
	.byte	0x6
	.uahalf	0x116
	.uaword	0xaac
	.uleb128 0xb
	.string	"XcpState_en"
	.byte	0x6
	.uahalf	0x118
	.uaword	0x38d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"ConnectedTlId_u8"
	.byte	0x6
	.uahalf	0x119
	.uaword	0x1ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xb
	.string	"ResourceProtStatus_u8"
	.byte	0x6
	.uahalf	0x11a
	.uaword	0x1ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.string	"Mta"
	.byte	0x6
	.uahalf	0x11b
	.uaword	0x3ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"MaxDto_u16"
	.byte	0x6
	.uahalf	0x11c
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.string	"MaxDtoAligned_u16"
	.byte	0x6
	.uahalf	0x11d
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xb
	.string	"MaxCto_u8"
	.byte	0x6
	.uahalf	0x11e
	.uaword	0x1ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x9
	.string	"Xcp_Session_t"
	.byte	0x6
	.uahalf	0x126
	.uaword	0x9f7
	.uleb128 0xa
	.byte	0xc
	.byte	0x6
	.uahalf	0x131
	.uaword	0xaea
	.uleb128 0xd
	.uaword	.LASF0
	.byte	0x6
	.uahalf	0x133
	.uaword	0x7bf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.uaword	.LASF1
	.byte	0x6
	.uahalf	0x134
	.uaword	0x221
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x9
	.string	"Xcp_CtoMax_t"
	.byte	0x6
	.uahalf	0x135
	.uaword	0xac2
	.uleb128 0x13
	.uahalf	0x104
	.byte	0x6
	.uahalf	0x139
	.uaword	0xb95
	.uleb128 0xb
	.string	"UploadRunning_b"
	.byte	0x6
	.uahalf	0x13c
	.uaword	0x26c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"RemainingSize_u8"
	.byte	0x6
	.uahalf	0x13f
	.uaword	0x1ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xb
	.string	"DownloadSize_u8"
	.byte	0x6
	.uahalf	0x143
	.uaword	0x1ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.string	"ReceivedSize_u8"
	.byte	0x6
	.uahalf	0x146
	.uaword	0x1ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xb
	.string	"DownloadBuffer_au8"
	.byte	0x6
	.uahalf	0x147
	.uaword	0xb95
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xe
	.uaword	0x1ba
	.uaword	0xba5
	.uleb128 0xf
	.uaword	0x7cf
	.byte	0xfe
	.byte	0
	.uleb128 0x9
	.string	"Xcp_Mem_t"
	.byte	0x6
	.uahalf	0x14e
	.uaword	0xaff
	.uleb128 0xa
	.byte	0x2
	.byte	0x6
	.uahalf	0x153
	.uaword	0xbfb
	.uleb128 0xb
	.string	"SeedWaitingKey_b"
	.byte	0x6
	.uahalf	0x155
	.uaword	0x26c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"SeedRemaingSize_u8"
	.byte	0x6
	.uahalf	0x156
	.uaword	0x1ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x9
	.string	"Xcp_SeedAndKey_t"
	.byte	0x6
	.uahalf	0x157
	.uaword	0xbb7
	.uleb128 0xa
	.byte	0x4
	.byte	0x6
	.uahalf	0x15c
	.uaword	0xc37
	.uleb128 0xb
	.string	"BlockSize_u32"
	.byte	0x6
	.uahalf	0x15e
	.uaword	0x221
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x9
	.string	"Xcp_Checksum_t"
	.byte	0x6
	.uahalf	0x162
	.uaword	0xc14
	.uleb128 0xa
	.byte	0x12
	.byte	0x6
	.uahalf	0x167
	.uaword	0xdb4
	.uleb128 0xb
	.string	"Xcp_Debug_TransmitOkCtr_u16"
	.byte	0x6
	.uahalf	0x169
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"Xcp_Debug_TransmitNotOkCtr_u16"
	.byte	0x6
	.uahalf	0x16a
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.string	"Xcp_Debug_SendResTxConfCtr_u16"
	.byte	0x6
	.uahalf	0x16b
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"Xcp_Debug_SendResCtr_u16"
	.byte	0x6
	.uahalf	0x16c
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xb
	.string	"Xcp_Debug_SendEvTxConfCtr_u16"
	.byte	0x6
	.uahalf	0x16d
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"Xcp_Debug_SendEvCtr_u16"
	.byte	0x6
	.uahalf	0x16e
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xb
	.string	"Xcp_Debug_SendDaqTxConfCtr_u16"
	.byte	0x6
	.uahalf	0x170
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.string	"Xcp_Debug_SendDaqCtr_u16"
	.byte	0x6
	.uahalf	0x171
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xb
	.string	"Xcp_Debug_TxConfCtr_u16"
	.byte	0x6
	.uahalf	0x173
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x9
	.string	"Xcp_Debug_t"
	.byte	0x6
	.uahalf	0x174
	.uaword	0xc4e
	.uleb128 0xa
	.byte	0x8
	.byte	0x6
	.uahalf	0x17d
	.uaword	0xe3b
	.uleb128 0xb
	.string	"OdtEntryPos_u16"
	.byte	0x6
	.uahalf	0x17f
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"OdtEntryMax_u16"
	.byte	0x6
	.uahalf	0x180
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.string	"DaqListNum_u16"
	.byte	0x6
	.uahalf	0x181
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"AbsOdtNum_u16"
	.byte	0x6
	.uahalf	0x182
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0
	.uleb128 0x9
	.string	"Xcp_SelectedOdtEntry_t"
	.byte	0x6
	.uahalf	0x183
	.uaword	0xdc8
	.uleb128 0xa
	.byte	0x6
	.byte	0x6
	.uahalf	0x186
	.uaword	0xecb
	.uleb128 0xb
	.string	"OdtEntryFirst_u16"
	.byte	0x6
	.uahalf	0x18b
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"Length_u16"
	.byte	0x6
	.uahalf	0x18c
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.string	"OdtEntryCnt_u8"
	.byte	0x6
	.uahalf	0x18d
	.uaword	0x1ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"CopyRoutine_u8"
	.byte	0x6
	.uahalf	0x18e
	.uaword	0x1ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x9
	.string	"Xcp_Odt_t"
	.byte	0x6
	.uahalf	0x18f
	.uaword	0xe5a
	.uleb128 0xa
	.byte	0x18
	.byte	0x6
	.uahalf	0x19d
	.uaword	0x1005
	.uleb128 0xb
	.string	"DaqListQue_p"
	.byte	0x6
	.uahalf	0x19f
	.uaword	0x2f9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"DaqListQuePos"
	.byte	0x6
	.uahalf	0x1a0
	.uaword	0x9e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"OdtFirst_u16"
	.byte	0x6
	.uahalf	0x1a1
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.string	"EventChannelNum_u16"
	.byte	0x6
	.uahalf	0x1a2
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xb
	.string	"OdtCnt_u8"
	.byte	0x6
	.uahalf	0x1a3
	.uaword	0x1ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"XcpTxPduId"
	.byte	0x6
	.uahalf	0x1a7
	.uaword	0x401
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0xb
	.string	"Prescaler_u8"
	.byte	0x6
	.uahalf	0x1a8
	.uaword	0x1ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0xb
	.string	"CycleCnt_u8"
	.byte	0x6
	.uahalf	0x1a9
	.uaword	0x1ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x13
	.uleb128 0xb
	.string	"Priority_u8"
	.byte	0x6
	.uahalf	0x1aa
	.uaword	0x1ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.string	"Flags_u8"
	.byte	0x6
	.uahalf	0x1ab
	.uaword	0x1ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.uleb128 0xb
	.string	"Mode_u8"
	.byte	0x6
	.uahalf	0x1ac
	.uaword	0x1005
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0xb
	.string	"CurrentlyRunning_b"
	.byte	0x6
	.uahalf	0x1ad
	.uaword	0x100a
	.byte	0x2
	.byte	0x23
	.uleb128 0x17
	.byte	0
	.uleb128 0x14
	.uaword	0x1ba
	.uleb128 0x14
	.uaword	0x26c
	.uleb128 0x9
	.string	"Xcp_DaqList_t"
	.byte	0x6
	.uahalf	0x1b4
	.uaword	0xedd
	.uleb128 0xa
	.byte	0x38
	.byte	0x6
	.uahalf	0x1b7
	.uaword	0x11c8
	.uleb128 0xb
	.string	"DaqList_p"
	.byte	0x6
	.uahalf	0x1ba
	.uaword	0x11c8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"Odt_p"
	.byte	0x6
	.uahalf	0x1bb
	.uaword	0x11ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"OdtEntryAddress_p"
	.byte	0x6
	.uahalf	0x1bc
	.uaword	0x11d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"OdtEntrySize_p"
	.byte	0x6
	.uahalf	0x1c0
	.uaword	0x2f9
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.string	"PriorityList_p"
	.byte	0x6
	.uahalf	0x1c1
	.uaword	0x8e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"DaqQue_p"
	.byte	0x6
	.uahalf	0x1c2
	.uaword	0x2f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.string	"DaqListCnt_u16"
	.byte	0x6
	.uahalf	0x1c5
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.string	"OdtCnt_u16"
	.byte	0x6
	.uahalf	0x1c6
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0xb
	.string	"OdtEntryCnt_u16"
	.byte	0x6
	.uahalf	0x1c7
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.string	"SelectedOdtEntry"
	.byte	0x6
	.uahalf	0x1cc
	.uaword	0xe3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1e
	.uleb128 0xb
	.string	"DaqRamPtr_pu8"
	.byte	0x6
	.uahalf	0x1cf
	.uaword	0x2f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.string	"DaqRamSize_u32"
	.byte	0x6
	.uahalf	0x1d0
	.uaword	0x221
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xb
	.string	"DaqListSendingCnt_u16"
	.byte	0x6
	.uahalf	0x1d3
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.string	"DaqListSending_u16"
	.byte	0x6
	.uahalf	0x1d4
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x32
	.uleb128 0xb
	.string	"OverloadOccurred_b"
	.byte	0x6
	.uahalf	0x1d6
	.uaword	0x26c
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.string	"DaqState_en"
	.byte	0x6
	.uahalf	0x1d8
	.uaword	0x780
	.byte	0x2
	.byte	0x23
	.uleb128 0x35
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x100f
	.uleb128 0x6
	.byte	0x4
	.uaword	0xecb
	.uleb128 0x6
	.byte	0x4
	.uaword	0x3a0
	.uleb128 0x9
	.string	"Xcp_DaqConfig_t"
	.byte	0x6
	.uahalf	0x1d9
	.uaword	0x1025
	.uleb128 0xa
	.byte	0x4c
	.byte	0x6
	.uahalf	0x206
	.uaword	0x1224
	.uleb128 0xb
	.string	"Session"
	.byte	0x6
	.uahalf	0x208
	.uaword	0xaac
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"DaqConfig"
	.byte	0x6
	.uahalf	0x20d
	.uaword	0x11da
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0
	.uleb128 0x9
	.string	"Xcp_NoInit_t"
	.byte	0x6
	.uahalf	0x20f
	.uaword	0x11f2
	.uleb128 0x13
	.uahalf	0x154
	.byte	0x6
	.uahalf	0x227
	.uaword	0x135e
	.uleb128 0xb
	.string	"Wait4TxConfCtr_u8"
	.byte	0x6
	.uahalf	0x229
	.uaword	0x1ba
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"BgDoDisconnect_Response"
	.byte	0x6
	.uahalf	0x22a
	.uaword	0x637
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xb
	.string	"BgActivityState"
	.byte	0x6
	.uahalf	0x22b
	.uaword	0x95f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.string	"ResBuffer"
	.byte	0x6
	.uahalf	0x22c
	.uaword	0xaea
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"EvBuffer"
	.byte	0x6
	.uahalf	0x22d
	.uaword	0x7db
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"CmdBuffer"
	.byte	0x6
	.uahalf	0x22e
	.uaword	0x7db
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.string	"ServBuffer"
	.byte	0x6
	.uahalf	0x22f
	.uaword	0xaea
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.string	"Mem"
	.byte	0x6
	.uahalf	0x231
	.uaword	0xba5
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.string	"SeedAndKey"
	.byte	0x6
	.uahalf	0x234
	.uaword	0xbfb
	.byte	0x3
	.byte	0x23
	.uleb128 0x138
	.uleb128 0xb
	.string	"Checksum"
	.byte	0x6
	.uahalf	0x237
	.uaword	0xc37
	.byte	0x3
	.byte	0x23
	.uleb128 0x13c
	.uleb128 0xb
	.string	"ReqTimeoutCnt_u16"
	.byte	0x6
	.uahalf	0x238
	.uaword	0x1e5
	.byte	0x3
	.byte	0x23
	.uleb128 0x140
	.uleb128 0xb
	.string	"Debug"
	.byte	0x6
	.uahalf	0x23b
	.uaword	0xdb4
	.byte	0x3
	.byte	0x23
	.uleb128 0x142
	.byte	0
	.uleb128 0x9
	.string	"Xcp_Cleared_t"
	.byte	0x6
	.uahalf	0x23d
	.uaword	0x1239
	.uleb128 0x15
	.byte	0x1
	.string	"Xcp_CmdGetSeed"
	.byte	0x1
	.byte	0x1f
	.byte	0x1
	.uaword	.LFB49
	.uaword	.LFE49
	.uaword	.LLST0
	.byte	0x1
	.uaword	0x1483
	.uleb128 0x16
	.string	"XcpPacket"
	.byte	0x1
	.byte	0x1f
	.uaword	0x7ee
	.uaword	.LLST1
	.uleb128 0x17
	.uaword	.LASF2
	.byte	0x1
	.byte	0x1f
	.uaword	0x1ba
	.uaword	.LLST2
	.uleb128 0x18
	.string	"CmdPtr"
	.byte	0x1
	.byte	0x28
	.uaword	0x1483
	.uaword	.LLST3
	.uleb128 0x19
	.string	"ResPtr"
	.byte	0x1
	.byte	0x2c
	.uaword	0x1493
	.uleb128 0x18
	.string	"SeedLengthToTransmit"
	.byte	0x1
	.byte	0x2f
	.uaword	0x1ba
	.uaword	.LLST4
	.uleb128 0x18
	.string	"Error"
	.byte	0x1
	.byte	0x30
	.uaword	0x637
	.uaword	.LLST5
	.uleb128 0x1a
	.string	"SeedPtr"
	.byte	0x1
	.byte	0x31
	.uaword	0x2f9
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x1b
	.uaword	.LVL5
	.byte	0x1
	.uaword	0x1517
	.uaword	0x1435
	.uleb128 0x1c
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL13
	.uaword	0x153c
	.uaword	0x1458
	.uleb128 0x1c
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x1c
	.byte	0x1
	.byte	0x64
	.byte	0xb
	.byte	0x7f
	.sleb128 0
	.byte	0xa
	.uahalf	0x154
	.byte	0x1e
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x6
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL14
	.uaword	0x156d
	.uaword	0x146c
	.uleb128 0x1c
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.uaword	.LVL18
	.uaword	0x158a
	.uleb128 0x1c
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x1c
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.byte	0
	.byte	0
	.uleb128 0x10
	.uaword	0x1488
	.uleb128 0x6
	.byte	0x4
	.uaword	0x148e
	.uleb128 0x10
	.uaword	0x84b
	.uleb128 0x6
	.byte	0x4
	.uaword	0x8bf
	.uleb128 0x1f
	.byte	0x1
	.string	"Xcp_InitSeedKey"
	.byte	0x1
	.byte	0xac
	.byte	0x1
	.uaword	.LFB50
	.uaword	.LFE50
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x14cc
	.uleb128 0x20
	.uaword	.LASF2
	.byte	0x1
	.byte	0xac
	.uaword	0x1ba
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0xe
	.uaword	0x1224
	.uaword	0x14dc
	.uleb128 0xf
	.uaword	0x7cf
	.byte	0
	.byte	0
	.uleb128 0x21
	.string	"Xcp_NoInit"
	.byte	0x6
	.uahalf	0x245
	.uaword	0x14cc
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.uaword	0x135e
	.uaword	0x1501
	.uleb128 0xf
	.uaword	0x7cf
	.byte	0
	.byte	0
	.uleb128 0x21
	.string	"Xcp_Cleared"
	.byte	0x6
	.uahalf	0x24c
	.uaword	0x14f1
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.byte	0x1
	.string	"Xcp_SendErrRes"
	.byte	0x6
	.uahalf	0x25d
	.byte	0x1
	.byte	0x1
	.uaword	0x153c
	.uleb128 0x23
	.uaword	0x637
	.uleb128 0x23
	.uaword	0x1ba
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.string	"rba_BswSrv_MemCopy"
	.byte	0x7
	.byte	0x46
	.byte	0x1
	.uaword	0x8d7
	.byte	0x1
	.uaword	0x156d
	.uleb128 0x23
	.uaword	0x8d7
	.uleb128 0x23
	.uaword	0x8d9
	.uleb128 0x23
	.uaword	0x221
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.string	"Xcp_SendRes"
	.byte	0x6
	.uahalf	0x259
	.byte	0x1
	.byte	0x1
	.uaword	0x158a
	.uleb128 0x23
	.uaword	0x1ba
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.string	"XcpAppl_GetSeed"
	.byte	0x8
	.uahalf	0x178
	.byte	0x1
	.uaword	0x1ba
	.byte	0x1
	.uaword	0x15b9
	.uleb128 0x23
	.uaword	0x15b9
	.uleb128 0x23
	.uaword	0x1ba
	.uleb128 0x23
	.uaword	0x1ba
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x2f9
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
	.uleb128 0xd
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x35
	.byte	0
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LFB49
	.uaword	.LCFI0
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0
	.uaword	.LFE49
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL5-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL5-1
	.uaword	.LVL5
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL10
	.uaword	.LVL16
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL17
	.uaword	.LVL19
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LFE49
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL0
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL3
	.uaword	.LVL5
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL6
	.uaword	.LFE49
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL1
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL4
	.uaword	.LVL5-1
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL5
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL17
	.uaword	.LVL18-1
	.uahalf	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.uaword	.LVL19
	.uaword	.LFE49
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL12
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x5b
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL2
	.uaword	.LVL4
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LVL5-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL5
	.uaword	.LFE49
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
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
	.uaword	.LFB49
	.uaword	.LFE49-.LFB49
	.uaword	.LFB50
	.uaword	.LFE50-.LFB50
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB49
	.uaword	.LFE49
	.uaword	.LFB50
	.uaword	.LFE50
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF1:
	.string	"Length_u32"
.LASF0:
	.string	"Buffer_au8"
.LASF2:
	.string	"protLayerId"
	.extern	XcpAppl_GetSeed,STT_FUNC,0
	.extern	Xcp_SendRes,STT_FUNC,0
	.extern	rba_BswSrv_MemCopy,STT_FUNC,0
	.extern	Xcp_NoInit,STT_OBJECT,76
	.extern	Xcp_Cleared,STT_OBJECT,340
	.extern	Xcp_SendErrRes,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
