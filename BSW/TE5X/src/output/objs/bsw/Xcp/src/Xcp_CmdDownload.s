	.file	"Xcp_CmdDownload.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Xcp_CmdDownload,"ax",@progbits
	.align 1
	.global	Xcp_CmdDownload
	.type	Xcp_CmdDownload, @function
Xcp_CmdDownload:
.LFB49:
	.file 1 "bsw\\Xcp\\src\\Xcp_CmdDownload.c"
	.loc 1 31 0
.LVL0:
	.loc 1 46 0
	mov	%d8, 340
	mul	%d8, %d4
	movh	%d9, hi:Xcp_Cleared
	addi	%d9, %d9, lo:Xcp_Cleared
	mov.a	%a2, %d9
	.loc 1 50 0
	movh.a	%a13, hi:Xcp_NoInit
	.loc 1 46 0
	addsc.a	%a14, %a2, %d8, 0
	.loc 1 50 0
	mov.d	%d3, %a13
	.loc 1 46 0
	mov	%d2, 0
	lea	%a15, [%a14] 52
	.loc 1 39 0
	ld.a	%a12, [%a4]0
.LVL1:
	.loc 1 46 0
	st.b	[%a15] 1, %d2
	.loc 1 50 0
	addi	%d2, %d3, lo:Xcp_NoInit
	madd	%d3, %d2, %d4, 76
	ld.bu	%d2, [%a12] 1
	.loc 1 31 0
	mov	%d15, %d4
	.loc 1 50 0
	mov.a	%a13, %d3
	ld.bu	%d3, [%a13] 16
	addi	%d4, %d3, -1
.LVL2:
	jlt	%d2, %d4, .L2
	.loc 1 55 0
	ld.hu	%d2, [%a4] 8
	.loc 1 71 0
	mov	%d4, 33
	.loc 1 55 0
	jge.u	%d2, %d3, .L13
.LVL3:
.L6:
.LBB17:
.LBB18:
.LBB19:
.LBB20:
	.loc 1 122 0
	mov	%d8, 340
	madd	%d9, %d9, %d15, %d8
	mov	%d2, 0
.LBE20:
.LBE19:
	.loc 1 178 0
	mov	%d5, %d15
.LBB22:
.LBB21:
	.loc 1 122 0
	mov.a	%a2, %d9
	lea	%a15, [%a2] 52
	st.b	[%a15] 2, %d2
	.loc 1 125 0
	st.b	[%a15] 1, %d2
	.loc 1 126 0
	st.b	[%a15] 3, %d2
.LBE21:
.LBE22:
	.loc 1 178 0
	j	Xcp_SendErrRes
.LVL4:
.L2:
.LBE18:
.LBE17:
	.loc 1 81 0
	jz	%d2, .L8
	.loc 1 81 0 is_stmt 0 discriminator 1
	ld.hu	%d3, [%a4] 8
	.loc 1 71 0 is_stmt 1 discriminator 1
	mov	%d4, 33
	.loc 1 81 0 discriminator 1
	add	%d3, -2
	jlt.u	%d3, %d2, .L6
	.loc 1 84 0
	mov	%e4, %d15, %d2
	lea	%a4, [%a12] 2
.LVL5:
	call	Xcp_MemWrite
.LVL6:
.LBB28:
.LBB25:
	.loc 1 143 0
	ne	%d3, %d2, 255
.LBE25:
.LBE28:
	.loc 1 84 0
	mov	%d4, %d2
.LVL7:
.LBB29:
.LBB26:
	.loc 1 143 0
	jnz	%d3, .L4
	.loc 1 146 0
	mov	%d4, %d15
	j	Xcp_SendPosRes
.LVL8:
.L8:
.LBE26:
.LBE29:
	.loc 1 71 0
	mov	%d4, 33
	j	.L6
.L13:
	.loc 1 59 0
	mov.a	%a2, %d8
	lea	%a5, [%a12] 2
	lea	%a4, [%a2] 56
.LVL9:
	addsc.a	%a4, %a4, %d9, 0
	addi	%d4, %d3, -2
	call	rba_BswSrv_MemCopy
.LVL10:
	ld.bu	%d2, [%a12] 1
	.loc 1 62 0
	ld.bu	%d15, [%a13] 16
	add	%d2, 2
	sub	%d2, %d15
	.loc 1 63 0
	add	%d15, -2
	.loc 1 62 0
	st.b	[%a15] 1, %d2
	.loc 1 63 0
	st.b	[%a15] 3, %d15
.LVL11:
	ret
.LVL12:
.L4:
.LBB30:
.LBB27:
	.loc 1 148 0
	eq	%d3, %d2, 254
	jnz	%d3, .L1
	.loc 1 154 0
	ne	%d3, %d2, 41
	jnz	%d3, .L6
.LVL13:
.LBB23:
.LBB24:
	.loc 1 160 0
	mov.a	%a2, %d8
	.loc 1 163 0
	mov	%d3, 3
	.loc 1 160 0
	add.a	%a2, 4
	addsc.a	%a2, %a2, %d9, 0
.LVL14:
	.loc 1 163 0
	st.w	[%a14] 12, %d3
	.loc 1 164 0
	mov	%d3, -2
	st.b	[%a2]0, %d3
	.loc 1 165 0
	st.b	[%a2] 1, %d2
	.loc 1 166 0
	ld.bu	%d2, [%a15] 1
.LVL15:
	.loc 1 169 0
	mov	%d4, %d15
.LVL16:
	.loc 1 166 0
	st.b	[%a2] 2, %d2
	.loc 1 169 0
	j	Xcp_SendRes
.LVL17:
.L1:
	ret
.LBE24:
.LBE23:
.LBE27:
.LBE30:
.LFE49:
	.size	Xcp_CmdDownload, .-Xcp_CmdDownload
.section .text.Xcp_InitDownload,"ax",@progbits
	.align 1
	.global	Xcp_InitDownload
	.type	Xcp_InitDownload, @function
Xcp_InitDownload:
.LFB50:
	.loc 1 119 0
.LVL18:
	.loc 1 122 0
	movh	%d2, hi:Xcp_Cleared
	mov	%d15, 340
	addi	%d2, %d2, lo:Xcp_Cleared
	madd	%d4, %d2, %d4, %d15
.LVL19:
	mov	%d15, 0
	mov.a	%a2, %d4
	st.b	[%a2] 54, %d15
	.loc 1 125 0
	st.b	[%a2] 53, %d15
	.loc 1 126 0
	st.b	[%a2] 55, %d15
	ret
.LFE50:
	.size	Xcp_InitDownload, .-Xcp_InitDownload
.section .text.Xcp_DownloadRes,"ax",@progbits
	.align 1
	.global	Xcp_DownloadRes
	.type	Xcp_DownloadRes, @function
Xcp_DownloadRes:
.LFB51:
	.loc 1 141 0
.LVL20:
	.loc 1 143 0
	ne	%d3, %d4, 255
	.loc 1 141 0
	mov	%d15, %d4
	.loc 1 143 0
	jz	%d3, .L19
	.loc 1 148 0
	eq	%d3, %d4, 254
	jnz	%d3, .L15
	.loc 1 154 0
	ne	%d3, %d4, 41
	jz	%d3, .L20
.LVL21:
.LBB38:
.LBB39:
	.loc 1 122 0
	movh	%d3, hi:Xcp_Cleared
	mov	%d15, 340
	addi	%d3, %d3, lo:Xcp_Cleared
	madd	%d2, %d3, %d5, %d15
	mov	%d15, 0
	mov.a	%a2, %d2
	st.b	[%a2] 54, %d15
	.loc 1 125 0
	st.b	[%a2] 53, %d15
	.loc 1 126 0
	st.b	[%a2] 55, %d15
.LBE39:
.LBE38:
	.loc 1 178 0
	j	Xcp_SendErrRes
.LVL22:
.L15:
	ret
.L20:
.LVL23:
.LBB40:
.LBB41:
	.loc 1 160 0
	mov	%d3, 340
	mul	%d3, %d5
	movh.a	%a2, hi:Xcp_Cleared
	lea	%a2, [%a2] lo:Xcp_Cleared
	addi	%d4, %d3, 4
.LVL24:
	addsc.a	%a15, %a2, %d4, 0
.LVL25:
	.loc 1 163 0
	addsc.a	%a2, %a2, %d3, 0
	mov	%d3, 3
	st.w	[%a2] 12, %d3
	.loc 1 164 0
	mov	%d3, -2
	st.b	[%a15]0, %d3
	.loc 1 165 0
	st.b	[%a15] 1, %d15
	.loc 1 166 0
	ld.bu	%d15, [%a2] 53
	.loc 1 169 0
	mov	%d4, %d5
	.loc 1 166 0
	st.b	[%a15] 2, %d15
	.loc 1 169 0
	j	Xcp_SendRes
.LVL26:
.L19:
.LBE41:
.LBE40:
	.loc 1 146 0
	mov	%d4, %d5
.LVL27:
	j	Xcp_SendPosRes
.LVL28:
.LFE51:
	.size	Xcp_DownloadRes, .-Xcp_DownloadRes
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
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB50
	.uaword	.LFE50-.LFB50
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB51
	.uaword	.LFE51-.LFB51
	.align 2
.LEFDE4:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\ComStack\\ComStack_Cfg.h"
	.file 4 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Types.h"
	.file 5 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Commands.h"
	.file 6 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Priv.h"
	.file 7 ".\\output\\inc/..\\..\\bsw\\integration\\rba_BswSrv\\api\\rba_BswSrv.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x170e
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Xcp\\src\\Xcp_CmdDownload.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x40
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
	.uaword	0x1c8
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
	.uaword	0x1f4
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
	.uaword	0x230
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
	.uaword	0x1c8
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
	.uaword	0x1e6
	.uleb128 0x4
	.byte	0xc
	.byte	0x3
	.byte	0x39
	.uaword	0x2fa
	.uleb128 0x5
	.string	"SduDataPtr"
	.byte	0x3
	.byte	0x3b
	.uaword	0x2fa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"MetaDataPtr"
	.byte	0x3
	.byte	0x3c
	.uaword	0x2fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"SduLength"
	.byte	0x3
	.byte	0x3d
	.uaword	0x29d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x1bb
	.uleb128 0x3
	.string	"PduInfoType"
	.byte	0x3
	.byte	0x3e
	.uaword	0x2b2
	.uleb128 0x7
	.byte	0x1
	.byte	0x4
	.byte	0xf9
	.uaword	0x38e
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
	.uaword	0x313
	.uleb128 0x9
	.string	"Xcp_AddrValue"
	.byte	0x4
	.uahalf	0x1be
	.uaword	0x222
	.uleb128 0xa
	.byte	0x8
	.byte	0x4
	.uahalf	0x1c1
	.uaword	0x3eb
	.uleb128 0xb
	.string	"AddrValue"
	.byte	0x4
	.uahalf	0x1c3
	.uaword	0x3a1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"Extension"
	.byte	0x4
	.uahalf	0x1c4
	.uaword	0x1bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x9
	.string	"Xcp_AddrType_t"
	.byte	0x4
	.uahalf	0x1c5
	.uaword	0x3b7
	.uleb128 0x9
	.string	"Xcp_PduIdType"
	.byte	0x4
	.uahalf	0x1c7
	.uaword	0x1bb
	.uleb128 0xc
	.byte	0x1
	.byte	0x4
	.uahalf	0x1cb
	.uaword	0x638
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
	.uaword	0x418
	.uleb128 0xc
	.byte	0x1
	.byte	0x4
	.uahalf	0x1e9
	.uaword	0x781
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
	.uaword	0x64e
	.uleb128 0xa
	.byte	0xc
	.byte	0x4
	.uahalf	0x254
	.uaword	0x7c0
	.uleb128 0xd
	.uaword	.LASF0
	.byte	0x4
	.uahalf	0x256
	.uaword	0x7c0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.uaword	.LASF1
	.byte	0x4
	.uahalf	0x257
	.uaword	0x222
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0xe
	.uaword	0x1bb
	.uaword	0x7d0
	.uleb128 0xf
	.uaword	0x7d0
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
	.uaword	0x798
	.uleb128 0x6
	.byte	0x4
	.uaword	0x7f5
	.uleb128 0x10
	.uaword	0x300
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0xe
	.uaword	0x1bb
	.uaword	0x812
	.uleb128 0xf
	.uaword	0x7d0
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.byte	0x5
	.uahalf	0x1de
	.uaword	0x860
	.uleb128 0xb
	.string	"CommandCode_u8"
	.byte	0x5
	.uahalf	0x1df
	.uaword	0x1bb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.uaword	.LASF2
	.byte	0x5
	.uahalf	0x1e0
	.uaword	0x1bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xb
	.string	"DataElement_au8"
	.byte	0x5
	.uahalf	0x1e1
	.uaword	0x802
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x9
	.string	"Xcp_CmdDownload_t"
	.byte	0x5
	.uahalf	0x1e2
	.uaword	0x812
	.uleb128 0xa
	.byte	0x4
	.byte	0x5
	.uahalf	0x209
	.uaword	0x8c0
	.uleb128 0xb
	.string	"PacketId_u8"
	.byte	0x5
	.uahalf	0x20a
	.uaword	0x1bb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"ErrCode_u8"
	.byte	0x5
	.uahalf	0x20b
	.uaword	0x1bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xd
	.uaword	.LASF2
	.byte	0x5
	.uahalf	0x20c
	.uaword	0x1bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x9
	.string	"Xcp_ErrResDownloadNext_t"
	.byte	0x5
	.uahalf	0x20d
	.uaword	0x87a
	.uleb128 0x10
	.uaword	0x1bb
	.uleb128 0x11
	.byte	0x4
	.uleb128 0x6
	.byte	0x4
	.uaword	0x8ee
	.uleb128 0x12
	.uleb128 0x6
	.byte	0x4
	.uaword	0x1e6
	.uleb128 0x6
	.byte	0x4
	.uaword	0x8e1
	.uleb128 0x7
	.byte	0x1
	.byte	0x6
	.byte	0xf5
	.uaword	0x974
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
	.uaword	0x8fb
	.uleb128 0xa
	.byte	0x8
	.byte	0x6
	.uahalf	0x10d
	.uaword	0x9fa
	.uleb128 0xb
	.string	"WritePos_u16"
	.byte	0x6
	.uahalf	0x10f
	.uaword	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"ReadPos_u16"
	.byte	0x6
	.uahalf	0x110
	.uaword	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.string	"ReadPos_OdtNum_u16"
	.byte	0x6
	.uahalf	0x111
	.uaword	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"QueSize_u16"
	.byte	0x6
	.uahalf	0x112
	.uaword	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0
	.uleb128 0x9
	.string	"Xcp_Que_t"
	.byte	0x6
	.uahalf	0x113
	.uaword	0x98c
	.uleb128 0xa
	.byte	0x14
	.byte	0x6
	.uahalf	0x116
	.uaword	0xac1
	.uleb128 0xb
	.string	"XcpState_en"
	.byte	0x6
	.uahalf	0x118
	.uaword	0x38e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"ConnectedTlId_u8"
	.byte	0x6
	.uahalf	0x119
	.uaword	0x1bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xb
	.string	"ResourceProtStatus_u8"
	.byte	0x6
	.uahalf	0x11a
	.uaword	0x1bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.string	"Mta"
	.byte	0x6
	.uahalf	0x11b
	.uaword	0x3eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"MaxDto_u16"
	.byte	0x6
	.uahalf	0x11c
	.uaword	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.string	"MaxDtoAligned_u16"
	.byte	0x6
	.uahalf	0x11d
	.uaword	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xb
	.string	"MaxCto_u8"
	.byte	0x6
	.uahalf	0x11e
	.uaword	0x1bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x9
	.string	"Xcp_Session_t"
	.byte	0x6
	.uahalf	0x126
	.uaword	0xa0c
	.uleb128 0xa
	.byte	0xc
	.byte	0x6
	.uahalf	0x131
	.uaword	0xaff
	.uleb128 0xd
	.uaword	.LASF0
	.byte	0x6
	.uahalf	0x133
	.uaword	0x7c0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.uaword	.LASF1
	.byte	0x6
	.uahalf	0x134
	.uaword	0x222
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x9
	.string	"Xcp_CtoMax_t"
	.byte	0x6
	.uahalf	0x135
	.uaword	0xad7
	.uleb128 0x13
	.uahalf	0x104
	.byte	0x6
	.uahalf	0x139
	.uaword	0xbaa
	.uleb128 0xb
	.string	"UploadRunning_b"
	.byte	0x6
	.uahalf	0x13c
	.uaword	0x26d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"RemainingSize_u8"
	.byte	0x6
	.uahalf	0x13f
	.uaword	0x1bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xb
	.string	"DownloadSize_u8"
	.byte	0x6
	.uahalf	0x143
	.uaword	0x1bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.string	"ReceivedSize_u8"
	.byte	0x6
	.uahalf	0x146
	.uaword	0x1bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xb
	.string	"DownloadBuffer_au8"
	.byte	0x6
	.uahalf	0x147
	.uaword	0xbaa
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xe
	.uaword	0x1bb
	.uaword	0xbba
	.uleb128 0xf
	.uaword	0x7d0
	.byte	0xfe
	.byte	0
	.uleb128 0x9
	.string	"Xcp_Mem_t"
	.byte	0x6
	.uahalf	0x14e
	.uaword	0xb14
	.uleb128 0xa
	.byte	0x2
	.byte	0x6
	.uahalf	0x153
	.uaword	0xc10
	.uleb128 0xb
	.string	"SeedWaitingKey_b"
	.byte	0x6
	.uahalf	0x155
	.uaword	0x26d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"SeedRemaingSize_u8"
	.byte	0x6
	.uahalf	0x156
	.uaword	0x1bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x9
	.string	"Xcp_SeedAndKey_t"
	.byte	0x6
	.uahalf	0x157
	.uaword	0xbcc
	.uleb128 0xa
	.byte	0x4
	.byte	0x6
	.uahalf	0x15c
	.uaword	0xc4c
	.uleb128 0xb
	.string	"BlockSize_u32"
	.byte	0x6
	.uahalf	0x15e
	.uaword	0x222
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x9
	.string	"Xcp_Checksum_t"
	.byte	0x6
	.uahalf	0x162
	.uaword	0xc29
	.uleb128 0xa
	.byte	0x12
	.byte	0x6
	.uahalf	0x167
	.uaword	0xdc9
	.uleb128 0xb
	.string	"Xcp_Debug_TransmitOkCtr_u16"
	.byte	0x6
	.uahalf	0x169
	.uaword	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"Xcp_Debug_TransmitNotOkCtr_u16"
	.byte	0x6
	.uahalf	0x16a
	.uaword	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.string	"Xcp_Debug_SendResTxConfCtr_u16"
	.byte	0x6
	.uahalf	0x16b
	.uaword	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"Xcp_Debug_SendResCtr_u16"
	.byte	0x6
	.uahalf	0x16c
	.uaword	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xb
	.string	"Xcp_Debug_SendEvTxConfCtr_u16"
	.byte	0x6
	.uahalf	0x16d
	.uaword	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"Xcp_Debug_SendEvCtr_u16"
	.byte	0x6
	.uahalf	0x16e
	.uaword	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xb
	.string	"Xcp_Debug_SendDaqTxConfCtr_u16"
	.byte	0x6
	.uahalf	0x170
	.uaword	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.string	"Xcp_Debug_SendDaqCtr_u16"
	.byte	0x6
	.uahalf	0x171
	.uaword	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xb
	.string	"Xcp_Debug_TxConfCtr_u16"
	.byte	0x6
	.uahalf	0x173
	.uaword	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x9
	.string	"Xcp_Debug_t"
	.byte	0x6
	.uahalf	0x174
	.uaword	0xc63
	.uleb128 0xa
	.byte	0x8
	.byte	0x6
	.uahalf	0x17d
	.uaword	0xe50
	.uleb128 0xb
	.string	"OdtEntryPos_u16"
	.byte	0x6
	.uahalf	0x17f
	.uaword	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"OdtEntryMax_u16"
	.byte	0x6
	.uahalf	0x180
	.uaword	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.string	"DaqListNum_u16"
	.byte	0x6
	.uahalf	0x181
	.uaword	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"AbsOdtNum_u16"
	.byte	0x6
	.uahalf	0x182
	.uaword	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0
	.uleb128 0x9
	.string	"Xcp_SelectedOdtEntry_t"
	.byte	0x6
	.uahalf	0x183
	.uaword	0xddd
	.uleb128 0xa
	.byte	0x6
	.byte	0x6
	.uahalf	0x186
	.uaword	0xee0
	.uleb128 0xb
	.string	"OdtEntryFirst_u16"
	.byte	0x6
	.uahalf	0x18b
	.uaword	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"Length_u16"
	.byte	0x6
	.uahalf	0x18c
	.uaword	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.string	"OdtEntryCnt_u8"
	.byte	0x6
	.uahalf	0x18d
	.uaword	0x1bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"CopyRoutine_u8"
	.byte	0x6
	.uahalf	0x18e
	.uaword	0x1bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x9
	.string	"Xcp_Odt_t"
	.byte	0x6
	.uahalf	0x18f
	.uaword	0xe6f
	.uleb128 0xa
	.byte	0x18
	.byte	0x6
	.uahalf	0x19d
	.uaword	0x101a
	.uleb128 0xb
	.string	"DaqListQue_p"
	.byte	0x6
	.uahalf	0x19f
	.uaword	0x2fa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"DaqListQuePos"
	.byte	0x6
	.uahalf	0x1a0
	.uaword	0x9fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"OdtFirst_u16"
	.byte	0x6
	.uahalf	0x1a1
	.uaword	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.string	"EventChannelNum_u16"
	.byte	0x6
	.uahalf	0x1a2
	.uaword	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xb
	.string	"OdtCnt_u8"
	.byte	0x6
	.uahalf	0x1a3
	.uaword	0x1bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"XcpTxPduId"
	.byte	0x6
	.uahalf	0x1a7
	.uaword	0x402
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0xb
	.string	"Prescaler_u8"
	.byte	0x6
	.uahalf	0x1a8
	.uaword	0x1bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0xb
	.string	"CycleCnt_u8"
	.byte	0x6
	.uahalf	0x1a9
	.uaword	0x1bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x13
	.uleb128 0xb
	.string	"Priority_u8"
	.byte	0x6
	.uahalf	0x1aa
	.uaword	0x1bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.string	"Flags_u8"
	.byte	0x6
	.uahalf	0x1ab
	.uaword	0x1bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.uleb128 0xb
	.string	"Mode_u8"
	.byte	0x6
	.uahalf	0x1ac
	.uaword	0x101a
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0xb
	.string	"CurrentlyRunning_b"
	.byte	0x6
	.uahalf	0x1ad
	.uaword	0x101f
	.byte	0x2
	.byte	0x23
	.uleb128 0x17
	.byte	0
	.uleb128 0x14
	.uaword	0x1bb
	.uleb128 0x14
	.uaword	0x26d
	.uleb128 0x9
	.string	"Xcp_DaqList_t"
	.byte	0x6
	.uahalf	0x1b4
	.uaword	0xef2
	.uleb128 0xa
	.byte	0x38
	.byte	0x6
	.uahalf	0x1b7
	.uaword	0x11dd
	.uleb128 0xb
	.string	"DaqList_p"
	.byte	0x6
	.uahalf	0x1ba
	.uaword	0x11dd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"Odt_p"
	.byte	0x6
	.uahalf	0x1bb
	.uaword	0x11e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"OdtEntryAddress_p"
	.byte	0x6
	.uahalf	0x1bc
	.uaword	0x11e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"OdtEntrySize_p"
	.byte	0x6
	.uahalf	0x1c0
	.uaword	0x2fa
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.string	"PriorityList_p"
	.byte	0x6
	.uahalf	0x1c1
	.uaword	0x8ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"DaqQue_p"
	.byte	0x6
	.uahalf	0x1c2
	.uaword	0x2fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.string	"DaqListCnt_u16"
	.byte	0x6
	.uahalf	0x1c5
	.uaword	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.string	"OdtCnt_u16"
	.byte	0x6
	.uahalf	0x1c6
	.uaword	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0xb
	.string	"OdtEntryCnt_u16"
	.byte	0x6
	.uahalf	0x1c7
	.uaword	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.string	"SelectedOdtEntry"
	.byte	0x6
	.uahalf	0x1cc
	.uaword	0xe50
	.byte	0x2
	.byte	0x23
	.uleb128 0x1e
	.uleb128 0xb
	.string	"DaqRamPtr_pu8"
	.byte	0x6
	.uahalf	0x1cf
	.uaword	0x2fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.string	"DaqRamSize_u32"
	.byte	0x6
	.uahalf	0x1d0
	.uaword	0x222
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xb
	.string	"DaqListSendingCnt_u16"
	.byte	0x6
	.uahalf	0x1d3
	.uaword	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.string	"DaqListSending_u16"
	.byte	0x6
	.uahalf	0x1d4
	.uaword	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x32
	.uleb128 0xb
	.string	"OverloadOccurred_b"
	.byte	0x6
	.uahalf	0x1d6
	.uaword	0x26d
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.string	"DaqState_en"
	.byte	0x6
	.uahalf	0x1d8
	.uaword	0x781
	.byte	0x2
	.byte	0x23
	.uleb128 0x35
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x1024
	.uleb128 0x6
	.byte	0x4
	.uaword	0xee0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x3a1
	.uleb128 0x9
	.string	"Xcp_DaqConfig_t"
	.byte	0x6
	.uahalf	0x1d9
	.uaword	0x103a
	.uleb128 0xa
	.byte	0x4c
	.byte	0x6
	.uahalf	0x206
	.uaword	0x1239
	.uleb128 0xb
	.string	"Session"
	.byte	0x6
	.uahalf	0x208
	.uaword	0xac1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"DaqConfig"
	.byte	0x6
	.uahalf	0x20d
	.uaword	0x11ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0
	.uleb128 0x9
	.string	"Xcp_NoInit_t"
	.byte	0x6
	.uahalf	0x20f
	.uaword	0x1207
	.uleb128 0x13
	.uahalf	0x154
	.byte	0x6
	.uahalf	0x227
	.uaword	0x1373
	.uleb128 0xb
	.string	"Wait4TxConfCtr_u8"
	.byte	0x6
	.uahalf	0x229
	.uaword	0x1bb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"BgDoDisconnect_Response"
	.byte	0x6
	.uahalf	0x22a
	.uaword	0x638
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xb
	.string	"BgActivityState"
	.byte	0x6
	.uahalf	0x22b
	.uaword	0x974
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.string	"ResBuffer"
	.byte	0x6
	.uahalf	0x22c
	.uaword	0xaff
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"EvBuffer"
	.byte	0x6
	.uahalf	0x22d
	.uaword	0x7dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"CmdBuffer"
	.byte	0x6
	.uahalf	0x22e
	.uaword	0x7dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.string	"ServBuffer"
	.byte	0x6
	.uahalf	0x22f
	.uaword	0xaff
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.string	"Mem"
	.byte	0x6
	.uahalf	0x231
	.uaword	0xbba
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.string	"SeedAndKey"
	.byte	0x6
	.uahalf	0x234
	.uaword	0xc10
	.byte	0x3
	.byte	0x23
	.uleb128 0x138
	.uleb128 0xb
	.string	"Checksum"
	.byte	0x6
	.uahalf	0x237
	.uaword	0xc4c
	.byte	0x3
	.byte	0x23
	.uleb128 0x13c
	.uleb128 0xb
	.string	"ReqTimeoutCnt_u16"
	.byte	0x6
	.uahalf	0x238
	.uaword	0x1e6
	.byte	0x3
	.byte	0x23
	.uleb128 0x140
	.uleb128 0xb
	.string	"Debug"
	.byte	0x6
	.uahalf	0x23b
	.uaword	0xdc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x142
	.byte	0
	.uleb128 0x9
	.string	"Xcp_Cleared_t"
	.byte	0x6
	.uahalf	0x23d
	.uaword	0x124e
	.uleb128 0x15
	.byte	0x1
	.string	"Xcp_InitDownload"
	.byte	0x1
	.byte	0x76
	.byte	0x1
	.byte	0x1
	.uaword	0x13b0
	.uleb128 0x16
	.uaword	.LASF3
	.byte	0x1
	.byte	0x76
	.uaword	0x1bb
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.string	"Xcp_DownloadRes"
	.byte	0x1
	.byte	0x8c
	.byte	0x1
	.byte	0x1
	.uaword	0x13f3
	.uleb128 0x17
	.string	"Error"
	.byte	0x1
	.byte	0x8c
	.uaword	0x638
	.uleb128 0x16
	.uaword	.LASF3
	.byte	0x1
	.byte	0x8c
	.uaword	0x1bb
	.uleb128 0x18
	.uleb128 0x19
	.string	"ResPtr"
	.byte	0x1
	.byte	0xa0
	.uaword	0x13f3
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x8c0
	.uleb128 0x1a
	.byte	0x1
	.string	"Xcp_CmdDownload"
	.byte	0x1
	.byte	0x1e
	.byte	0x1
	.uaword	.LFB49
	.uaword	.LFE49
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1546
	.uleb128 0x1b
	.string	"XcpPacket"
	.byte	0x1
	.byte	0x1e
	.uaword	0x7ef
	.uaword	.LLST0
	.uleb128 0x1c
	.uaword	.LASF3
	.byte	0x1
	.byte	0x1e
	.uaword	0x1bb
	.uaword	.LLST1
	.uleb128 0x1d
	.string	"CmdPtr"
	.byte	0x1
	.byte	0x27
	.uaword	0x1546
	.byte	0x1
	.byte	0x6c
	.uleb128 0x1e
	.string	"Error"
	.byte	0x1
	.byte	0x2a
	.uaword	0x638
	.uaword	.LLST2
	.uleb128 0x1f
	.uaword	0x13b0
	.uaword	.LBB17
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x5e
	.uaword	0x1510
	.uleb128 0x20
	.uaword	0x13d7
	.uaword	.LLST3
	.uleb128 0x20
	.uaword	0x13ca
	.uaword	.LLST4
	.uleb128 0x1f
	.uaword	0x1389
	.uaword	.LBB19
	.uaword	.Ldebug_ranges0+0x28
	.byte	0x1
	.byte	0xaf
	.uaword	0x14a5
	.uleb128 0x20
	.uaword	0x13a4
	.uaword	.LLST5
	.byte	0
	.uleb128 0x21
	.uaword	.LBB23
	.uaword	.LBE23
	.uaword	0x14e9
	.uleb128 0x20
	.uaword	0x13d7
	.uaword	.LLST6
	.uleb128 0x20
	.uaword	0x13ca
	.uaword	.LLST7
	.uleb128 0x22
	.uaword	.LBB24
	.uaword	.LBE24
	.uleb128 0x23
	.uaword	0x13e3
	.uaword	.LLST8
	.uleb128 0x24
	.uaword	.LVL17
	.byte	0x1
	.uaword	0x1656
	.uleb128 0x25
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.uaword	.LVL4
	.byte	0x1
	.uaword	0x1673
	.uaword	0x14fe
	.uleb128 0x25
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.uaword	.LVL8
	.byte	0x1
	.uaword	0x1698
	.uleb128 0x25
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x27
	.uaword	.LVL6
	.uaword	0x16b8
	.uaword	0x152a
	.uleb128 0x25
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x25
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 2
	.byte	0
	.uleb128 0x28
	.uaword	.LVL10
	.uaword	0x16e4
	.uleb128 0x25
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8c
	.sleb128 2
	.uleb128 0x25
	.byte	0x1
	.byte	0x64
	.byte	0x7
	.byte	0x79
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x38
	.byte	0
	.byte	0
	.uleb128 0x10
	.uaword	0x154b
	.uleb128 0x6
	.byte	0x4
	.uaword	0x1551
	.uleb128 0x10
	.uaword	0x860
	.uleb128 0x29
	.uaword	0x1389
	.uaword	.LFB50
	.uaword	.LFE50
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1575
	.uleb128 0x20
	.uaword	0x13a4
	.uaword	.LLST9
	.byte	0
	.uleb128 0x29
	.uaword	0x13b0
	.uaword	.LFB51
	.uaword	.LFE51
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x160b
	.uleb128 0x20
	.uaword	0x13ca
	.uaword	.LLST10
	.uleb128 0x20
	.uaword	0x13d7
	.uaword	.LLST11
	.uleb128 0x2a
	.uaword	0x1389
	.uaword	.LBB38
	.uaword	.LBE38
	.byte	0x1
	.byte	0xaf
	.uaword	0x15b9
	.uleb128 0x20
	.uaword	0x13a4
	.uaword	.LLST12
	.byte	0
	.uleb128 0x21
	.uaword	.LBB40
	.uaword	.LBE40
	.uaword	0x15f6
	.uleb128 0x20
	.uaword	0x13d7
	.uaword	.LLST13
	.uleb128 0x20
	.uaword	0x13ca
	.uaword	.LLST14
	.uleb128 0x22
	.uaword	.LBB41
	.uaword	.LBE41
	.uleb128 0x23
	.uaword	0x13e3
	.uaword	.LLST15
	.uleb128 0x2b
	.uaword	.LVL26
	.byte	0x1
	.uaword	0x1656
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	.LVL22
	.byte	0x1
	.uaword	0x1673
	.uleb128 0x2b
	.uaword	.LVL28
	.byte	0x1
	.uaword	0x1698
	.byte	0
	.uleb128 0xe
	.uaword	0x1239
	.uaword	0x161b
	.uleb128 0xf
	.uaword	0x7d0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.string	"Xcp_NoInit"
	.byte	0x6
	.uahalf	0x245
	.uaword	0x160b
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.uaword	0x1373
	.uaword	0x1640
	.uleb128 0xf
	.uaword	0x7d0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.string	"Xcp_Cleared"
	.byte	0x6
	.uahalf	0x24c
	.uaword	0x1630
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.byte	0x1
	.string	"Xcp_SendRes"
	.byte	0x6
	.uahalf	0x259
	.byte	0x1
	.byte	0x1
	.uaword	0x1673
	.uleb128 0x2e
	.uaword	0x1bb
	.byte	0
	.uleb128 0x2d
	.byte	0x1
	.string	"Xcp_SendErrRes"
	.byte	0x6
	.uahalf	0x25d
	.byte	0x1
	.byte	0x1
	.uaword	0x1698
	.uleb128 0x2e
	.uaword	0x638
	.uleb128 0x2e
	.uaword	0x1bb
	.byte	0
	.uleb128 0x2d
	.byte	0x1
	.string	"Xcp_SendPosRes"
	.byte	0x6
	.uahalf	0x25c
	.byte	0x1
	.byte	0x1
	.uaword	0x16b8
	.uleb128 0x2e
	.uaword	0x1bb
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.string	"Xcp_MemWrite"
	.byte	0x6
	.uahalf	0x2b9
	.byte	0x1
	.uaword	0x638
	.byte	0x1
	.uaword	0x16e4
	.uleb128 0x2e
	.uaword	0x8f5
	.uleb128 0x2e
	.uaword	0x1bb
	.uleb128 0x2e
	.uaword	0x1bb
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.string	"rba_BswSrv_MemCopy"
	.byte	0x7
	.byte	0x46
	.byte	0x1
	.uaword	0x8e6
	.byte	0x1
	.uleb128 0x2e
	.uaword	0x8e6
	.uleb128 0x2e
	.uaword	0x8e8
	.uleb128 0x2e
	.uaword	0x222
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
	.uleb128 0x20
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0xb
	.byte	0x1
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
	.uleb128 0x1c
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x30
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
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL5
	.uaword	.LVL8
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL9
	.uaword	.LFE49
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL2
	.uaword	.LFE49
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL7
	.uaword	.LVL8-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x3
	.byte	0x9
	.byte	0xfe
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL17
	.uaword	.LFE49
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL12
	.uaword	.LFE49
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL7
	.uaword	.LVL8-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL12
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL17
	.uaword	.LFE49
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL13
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL13
	.uaword	.LVL17
	.uahalf	0x3
	.byte	0x8
	.byte	0x29
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL14
	.uaword	.LVL17-1
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL17-1
	.uaword	.LVL17
	.uahalf	0x8
	.byte	0x79
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x4
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL19
	.uaword	.LFE50
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL20
	.uaword	.LVL22-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL22-1
	.uaword	.LVL22
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL22
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL24
	.uaword	.LVL26
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL26
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL27
	.uaword	.LFE51
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL20
	.uaword	.LVL22-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL22-1
	.uaword	.LVL22
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL22
	.uaword	.LVL26-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL26-1
	.uaword	.LVL26
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL26
	.uaword	.LVL28-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL28-1
	.uaword	.LFE51
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL21
	.uaword	.LVL22-1
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL23
	.uaword	.LVL26-1
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL23
	.uaword	.LVL26
	.uahalf	0x3
	.byte	0x8
	.byte	0x29
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x2c
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
	.uaword	.LFB51
	.uaword	.LFE51-.LFB51
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB17
	.uaword	.LBE17
	.uaword	.LBB28
	.uaword	.LBE28
	.uaword	.LBB29
	.uaword	.LBE29
	.uaword	.LBB30
	.uaword	.LBE30
	.uaword	0
	.uaword	0
	.uaword	.LBB19
	.uaword	.LBE19
	.uaword	.LBB22
	.uaword	.LBE22
	.uaword	0
	.uaword	0
	.uaword	.LFB49
	.uaword	.LFE49
	.uaword	.LFB50
	.uaword	.LFE50
	.uaword	.LFB51
	.uaword	.LFE51
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF1:
	.string	"Length_u32"
.LASF0:
	.string	"Buffer_au8"
.LASF3:
	.string	"protLayerId"
.LASF2:
	.string	"NumOfDataElements_u8"
	.extern	Xcp_SendRes,STT_FUNC,0
	.extern	rba_BswSrv_MemCopy,STT_FUNC,0
	.extern	Xcp_SendPosRes,STT_FUNC,0
	.extern	Xcp_MemWrite,STT_FUNC,0
	.extern	Xcp_SendErrRes,STT_FUNC,0
	.extern	Xcp_NoInit,STT_OBJECT,76
	.extern	Xcp_Cleared,STT_OBJECT,340
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
