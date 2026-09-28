	.file	"Xcp_CmdBuildChecksum.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Xcp_CmdBuildChecksum,"ax",@progbits
	.align 1
	.global	Xcp_CmdBuildChecksum
	.type	Xcp_CmdBuildChecksum, @function
Xcp_CmdBuildChecksum:
.LFB49:
	.file 1 "bsw\\Xcp\\src\\Xcp_CmdBuildChecksum.c"
	.loc 1 33 0
.LVL0:
	.loc 1 52 0
	mul	%d2, %d4, 76
	movh.a	%a15, hi:Xcp_NoInit
	lea	%a3, [%a15] lo:Xcp_NoInit
	addsc.a	%a2, %a3, %d2, 0
	.loc 1 55 0
	movh	%d8, hi:Xcp_Cleared
	.loc 1 52 0
	add	%d2, 4
	addsc.a	%a15, %a3, %d2, 0
	.loc 1 55 0
	addi	%d8, %d8, lo:Xcp_Cleared
	mov	%d2, 340
	.loc 1 33 0
	mov	%d15, %d4
	.loc 1 55 0
	madd	%d4, %d8, %d4, %d2
.LVL1:
	.loc 1 52 0
	ld.w	%d6, [%a15]0
	ld.bu	%d3, [%a15] 4
	.loc 1 55 0
	mov.a	%a15, %d4
	.loc 1 41 0
	ld.a	%a12, [%a4]0
.LVL2:
	.loc 1 55 0
	ld.bu	%d2, [%a15] 2
	.loc 1 52 0
	ld.w	%d5, [%a2] 8
.LVL3:
	.loc 1 55 0
	jnz	%d2, .L6
	.loc 1 61 0
	jz	%d3, .L14
	.loc 1 63 0
	mov	%d4, 34
.LVL4:
.L11:
	.loc 1 45 0
	mov	%d2, 340
	mul	%d2, %d15
	.loc 1 154 0
	mov.a	%a3, %d8
	.loc 1 45 0
	mov.a	%a15, %d2
	.loc 1 154 0
	addsc.a	%a2, %a3, %d2, 0
	.loc 1 45 0
	add.a	%a15, 4
	addsc.a	%a15, %a15, %d8, 0
	.loc 1 154 0
	mov	%d2, 8
	st.w	[%a2] 12, %d2
	.loc 1 155 0
	mov	%d2, -2
	st.b	[%a15]0, %d2
	.loc 1 157 0
	mov	%d2, 1
	st.h	[%a15] 2, %d2
	.loc 1 158 0
	mov	%d2, -1
	.loc 1 156 0
	st.b	[%a15] 1, %d4
	.loc 1 158 0
	st.w	[%a15] 4, %d2
	.loc 1 161 0
	mov	%d4, %d15
	j	Xcp_SendRes
.LVL5:
.L6:
	.loc 1 57 0
	mov	%d4, 16
.L5:
	.loc 1 166 0
	mov	%d5, %d15
	j	Xcp_SendErrRes
.LVL6:
.L14:
	.loc 1 123 0
	mov	%d4, 36
	.loc 1 92 0
	jz	%d6, .L5
	.loc 1 118 0
	mov	%d4, %d6
.LVL7:
	andn	%d5, %d5, ~(-256)
	ld.w	%d6, [%a12] 4
.LVL8:
	mov	%d7, %d15
	call	XcpAppl_BuildChecksumTrigger
.LVL9:
	mov	%d4, %d2
.LVL10:
	.loc 1 133 0
	ne	%d2, %d2, 255
.LVL11:
	jnz	%d2, .L3
	.loc 1 136 0
	ld.w	%d15, [%a12] 4
	st.w	[%a15] 316, %d15
	.loc 1 140 0
	mov	%d15, 1
	st.b	[%a15] 2, %d15
	.loc 1 143 0
	mov	%d15, 1
	st.h	[%a15] 320, %d15
	ret
.L3:
	.loc 1 151 0
	ne	%d2, %d4, 34
	jz	%d2, .L11
	.loc 1 166 0
	mov	%d5, %d15
	j	Xcp_SendErrRes
.LVL12:
.LFE49:
	.size	Xcp_CmdBuildChecksum, .-Xcp_CmdBuildChecksum
.section .text.Xcp_InitChecksum,"ax",@progbits
	.align 1
	.global	Xcp_InitChecksum
	.type	Xcp_InitChecksum, @function
Xcp_InitChecksum:
.LFB50:
	.loc 1 182 0
.LVL13:
	.loc 1 184 0
	movh.a	%a15, hi:Xcp_Cleared
	mov.d	%d3, %a15
	mov	%d15, 340
	addi	%d2, %d3, lo:Xcp_Cleared
	madd	%d3, %d2, %d4, %d15
	mov	%d15, 0
	mov.a	%a15, %d3
	st.w	[%a15] 316, %d15
	ret
.LFE50:
	.size	Xcp_InitChecksum, .-Xcp_InitChecksum
.section .text.Xcp_BuildChecksumMainFunction,"ax",@progbits
	.align 1
	.global	Xcp_BuildChecksumMainFunction
	.type	Xcp_BuildChecksumMainFunction, @function
Xcp_BuildChecksumMainFunction:
.LFB51:
	.loc 1 197 0
.LVL14:
	.loc 1 202 0
	mov	%d8, 340
	mul	%d8, %d4
	movh.a	%a15, hi:Xcp_Cleared
	lea	%a12, [%a15] lo:Xcp_Cleared
	addi	%d2, %d8, 4
	addsc.a	%a15, %a12, %d2, 0
.LVL15:
	.loc 1 197 0
	mov	%d15, %d4
	.loc 1 208 0
	lea	%a4, [%a15] 4
	lea	%a5, [%a15] 1
	call	XcpAppl_BuildChecksumMainFunction
.LVL16:
	.loc 1 225 0
	ne	%d3, %d2, 255
	jz	%d3, .L23
	.loc 1 246 0
	ne	%d3, %d2, 254
	.loc 1 249 0
	addsc.a	%a15, %a12, %d8, 0
.LVL17:
	.loc 1 246 0
	jz	%d3, .L24
	.loc 1 263 0
	mov	%d3, 0
	st.b	[%a15] 2, %d3
	.loc 1 266 0
	mov	%e4, %d15, %d2
	j	Xcp_SendErrRes
.LVL18:
.L24:
	.loc 1 249 0
	ld.hu	%d2, [%a15] 320
.LVL19:
	jz	%d2, .L16
	.loc 1 251 0
	add	%d2, 1
	extr.u	%d2, %d2, 0, 16
	.loc 1 253 0
	ge.u	%d3, %d2, 198
	jnz	%d3, .L21
	.loc 1 251 0
	st.h	[%a15] 320, %d2
	ret
.L16:
	ret
.L21:
	.loc 1 255 0
	mov	%d2, 1
	st.h	[%a15] 320, %d2
	.loc 1 256 0
	mov	%d4, 5
	mov	%d5, %d15
	j	Xcp_SendEv_Code
.LVL20:
.L23:
	.loc 1 228 0
	movh.a	%a2, hi:Xcp_NoInit
	mov.d	%d3, %a2
	addsc.a	%a12, %a12, %d8, 0
	addi	%d2, %d3, lo:Xcp_NoInit
.LVL21:
	madd	%d3, %d2, %d15, 76
	ld.w	%d2, [%a12] 316
	.loc 1 234 0
	mov	%d8, 0
	.loc 1 228 0
	mov.a	%a2, %d3
	.loc 1 241 0
	mov	%d4, %d15
	.loc 1 228 0
	ld.w	%d3, [%a2] 4
	add	%d2, %d3
	st.w	[%a2] 4, %d2
	.loc 1 231 0
	mov	%d2, 8
	st.w	[%a12] 12, %d2
	.loc 1 232 0
	mov	%d2, -1
	st.b	[%a15]0, %d2
	.loc 1 234 0
	st.h	[%a15] 2, %d8
	.loc 1 238 0
	st.b	[%a12] 2, %d8
	.loc 1 241 0
	call	Xcp_SendRes
.LVL22:
	.loc 1 244 0
	st.h	[%a12] 320, %d8
	ret
.LFE51:
	.size	Xcp_BuildChecksumMainFunction, .-Xcp_BuildChecksumMainFunction
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
	.file 7 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Cbk.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x16ad
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Xcp\\src\\Xcp_CmdBuildChecksum.c"
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
	.byte	0x2
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
	.byte	0x2
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
	.byte	0x2
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
	.string	"PduLengthType"
	.byte	0x3
	.byte	0x30
	.uaword	0x1eb
	.uleb128 0x4
	.byte	0xc
	.byte	0x3
	.byte	0x39
	.uaword	0x2ff
	.uleb128 0x5
	.string	"SduDataPtr"
	.byte	0x3
	.byte	0x3b
	.uaword	0x2ff
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"MetaDataPtr"
	.byte	0x3
	.byte	0x3c
	.uaword	0x2ff
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"SduLength"
	.byte	0x3
	.byte	0x3d
	.uaword	0x2a2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x1c0
	.uleb128 0x3
	.string	"PduInfoType"
	.byte	0x3
	.byte	0x3e
	.uaword	0x2b7
	.uleb128 0x7
	.byte	0x1
	.byte	0x4
	.byte	0xf9
	.uaword	0x393
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
	.uaword	0x318
	.uleb128 0x9
	.string	"Xcp_AddrValue"
	.byte	0x4
	.uahalf	0x1be
	.uaword	0x227
	.uleb128 0xa
	.byte	0x8
	.byte	0x4
	.uahalf	0x1c1
	.uaword	0x3f0
	.uleb128 0xb
	.string	"AddrValue"
	.byte	0x4
	.uahalf	0x1c3
	.uaword	0x3a6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"Extension"
	.byte	0x4
	.uahalf	0x1c4
	.uaword	0x1c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x9
	.string	"Xcp_AddrType_t"
	.byte	0x4
	.uahalf	0x1c5
	.uaword	0x3bc
	.uleb128 0x9
	.string	"Xcp_PduIdType"
	.byte	0x4
	.uahalf	0x1c7
	.uaword	0x1c0
	.uleb128 0xc
	.byte	0x1
	.byte	0x4
	.uahalf	0x1cb
	.uaword	0x63d
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
	.uaword	0x41d
	.uleb128 0xc
	.byte	0x1
	.byte	0x4
	.uahalf	0x1e9
	.uaword	0x786
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
	.uaword	0x653
	.uleb128 0xa
	.byte	0xc
	.byte	0x4
	.uahalf	0x254
	.uaword	0x7c5
	.uleb128 0xd
	.uaword	.LASF0
	.byte	0x4
	.uahalf	0x256
	.uaword	0x7c5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.uaword	.LASF1
	.byte	0x4
	.uahalf	0x257
	.uaword	0x227
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0xe
	.uaword	0x1c0
	.uaword	0x7d5
	.uleb128 0xf
	.uaword	0x7d5
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
	.uaword	0x79d
	.uleb128 0x6
	.byte	0x4
	.uaword	0x7fa
	.uleb128 0x10
	.uaword	0x305
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0xa
	.byte	0x8
	.byte	0x5
	.uahalf	0x17d
	.uaword	0x860
	.uleb128 0xb
	.string	"CommandCode_u8"
	.byte	0x5
	.uahalf	0x17e
	.uaword	0x1c0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"Reserved_u8"
	.byte	0x5
	.uahalf	0x17f
	.uaword	0x1c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xd
	.uaword	.LASF2
	.byte	0x5
	.uahalf	0x180
	.uaword	0x1eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xd
	.uaword	.LASF3
	.byte	0x5
	.uahalf	0x181
	.uaword	0x227
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x9
	.string	"Xcp_CmdBuildChecksum_t"
	.byte	0x5
	.uahalf	0x182
	.uaword	0x807
	.uleb128 0xa
	.byte	0x8
	.byte	0x5
	.uahalf	0x185
	.uaword	0x8e2
	.uleb128 0xb
	.string	"PacketId_u8"
	.byte	0x5
	.uahalf	0x186
	.uaword	0x1c0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"ChecksumType_u8"
	.byte	0x5
	.uahalf	0x187
	.uaword	0x1c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xd
	.uaword	.LASF2
	.byte	0x5
	.uahalf	0x188
	.uaword	0x1eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.string	"Checksum_u32"
	.byte	0x5
	.uahalf	0x189
	.uaword	0x227
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x9
	.string	"Xcp_ResBuildChecksum_t"
	.byte	0x5
	.uahalf	0x18a
	.uaword	0x87f
	.uleb128 0x6
	.byte	0x4
	.uaword	0x1eb
	.uleb128 0x7
	.byte	0x1
	.byte	0x6
	.byte	0xf5
	.uaword	0x980
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
	.uaword	0x907
	.uleb128 0xa
	.byte	0x8
	.byte	0x6
	.uahalf	0x10d
	.uaword	0xa06
	.uleb128 0xb
	.string	"WritePos_u16"
	.byte	0x6
	.uahalf	0x10f
	.uaword	0x1eb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"ReadPos_u16"
	.byte	0x6
	.uahalf	0x110
	.uaword	0x1eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.string	"ReadPos_OdtNum_u16"
	.byte	0x6
	.uahalf	0x111
	.uaword	0x1eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"QueSize_u16"
	.byte	0x6
	.uahalf	0x112
	.uaword	0x1eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0
	.uleb128 0x9
	.string	"Xcp_Que_t"
	.byte	0x6
	.uahalf	0x113
	.uaword	0x998
	.uleb128 0xa
	.byte	0x14
	.byte	0x6
	.uahalf	0x116
	.uaword	0xacd
	.uleb128 0xb
	.string	"XcpState_en"
	.byte	0x6
	.uahalf	0x118
	.uaword	0x393
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"ConnectedTlId_u8"
	.byte	0x6
	.uahalf	0x119
	.uaword	0x1c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xb
	.string	"ResourceProtStatus_u8"
	.byte	0x6
	.uahalf	0x11a
	.uaword	0x1c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.string	"Mta"
	.byte	0x6
	.uahalf	0x11b
	.uaword	0x3f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"MaxDto_u16"
	.byte	0x6
	.uahalf	0x11c
	.uaword	0x1eb
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.string	"MaxDtoAligned_u16"
	.byte	0x6
	.uahalf	0x11d
	.uaword	0x1eb
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xb
	.string	"MaxCto_u8"
	.byte	0x6
	.uahalf	0x11e
	.uaword	0x1c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x9
	.string	"Xcp_Session_t"
	.byte	0x6
	.uahalf	0x126
	.uaword	0xa18
	.uleb128 0xa
	.byte	0xc
	.byte	0x6
	.uahalf	0x131
	.uaword	0xb0b
	.uleb128 0xd
	.uaword	.LASF0
	.byte	0x6
	.uahalf	0x133
	.uaword	0x7c5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.uaword	.LASF1
	.byte	0x6
	.uahalf	0x134
	.uaword	0x227
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x9
	.string	"Xcp_CtoMax_t"
	.byte	0x6
	.uahalf	0x135
	.uaword	0xae3
	.uleb128 0x11
	.uahalf	0x104
	.byte	0x6
	.uahalf	0x139
	.uaword	0xbb6
	.uleb128 0xb
	.string	"UploadRunning_b"
	.byte	0x6
	.uahalf	0x13c
	.uaword	0x272
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"RemainingSize_u8"
	.byte	0x6
	.uahalf	0x13f
	.uaword	0x1c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xb
	.string	"DownloadSize_u8"
	.byte	0x6
	.uahalf	0x143
	.uaword	0x1c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.string	"ReceivedSize_u8"
	.byte	0x6
	.uahalf	0x146
	.uaword	0x1c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xb
	.string	"DownloadBuffer_au8"
	.byte	0x6
	.uahalf	0x147
	.uaword	0xbb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xe
	.uaword	0x1c0
	.uaword	0xbc6
	.uleb128 0xf
	.uaword	0x7d5
	.byte	0xfe
	.byte	0
	.uleb128 0x9
	.string	"Xcp_Mem_t"
	.byte	0x6
	.uahalf	0x14e
	.uaword	0xb20
	.uleb128 0xa
	.byte	0x2
	.byte	0x6
	.uahalf	0x153
	.uaword	0xc1c
	.uleb128 0xb
	.string	"SeedWaitingKey_b"
	.byte	0x6
	.uahalf	0x155
	.uaword	0x272
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"SeedRemaingSize_u8"
	.byte	0x6
	.uahalf	0x156
	.uaword	0x1c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x9
	.string	"Xcp_SeedAndKey_t"
	.byte	0x6
	.uahalf	0x157
	.uaword	0xbd8
	.uleb128 0xa
	.byte	0x4
	.byte	0x6
	.uahalf	0x15c
	.uaword	0xc4e
	.uleb128 0xd
	.uaword	.LASF3
	.byte	0x6
	.uahalf	0x15e
	.uaword	0x227
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x9
	.string	"Xcp_Checksum_t"
	.byte	0x6
	.uahalf	0x162
	.uaword	0xc35
	.uleb128 0xa
	.byte	0x12
	.byte	0x6
	.uahalf	0x167
	.uaword	0xdcb
	.uleb128 0xb
	.string	"Xcp_Debug_TransmitOkCtr_u16"
	.byte	0x6
	.uahalf	0x169
	.uaword	0x1eb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"Xcp_Debug_TransmitNotOkCtr_u16"
	.byte	0x6
	.uahalf	0x16a
	.uaword	0x1eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.string	"Xcp_Debug_SendResTxConfCtr_u16"
	.byte	0x6
	.uahalf	0x16b
	.uaword	0x1eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"Xcp_Debug_SendResCtr_u16"
	.byte	0x6
	.uahalf	0x16c
	.uaword	0x1eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xb
	.string	"Xcp_Debug_SendEvTxConfCtr_u16"
	.byte	0x6
	.uahalf	0x16d
	.uaword	0x1eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"Xcp_Debug_SendEvCtr_u16"
	.byte	0x6
	.uahalf	0x16e
	.uaword	0x1eb
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xb
	.string	"Xcp_Debug_SendDaqTxConfCtr_u16"
	.byte	0x6
	.uahalf	0x170
	.uaword	0x1eb
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.string	"Xcp_Debug_SendDaqCtr_u16"
	.byte	0x6
	.uahalf	0x171
	.uaword	0x1eb
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xb
	.string	"Xcp_Debug_TxConfCtr_u16"
	.byte	0x6
	.uahalf	0x173
	.uaword	0x1eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x9
	.string	"Xcp_Debug_t"
	.byte	0x6
	.uahalf	0x174
	.uaword	0xc65
	.uleb128 0xa
	.byte	0x8
	.byte	0x6
	.uahalf	0x17d
	.uaword	0xe52
	.uleb128 0xb
	.string	"OdtEntryPos_u16"
	.byte	0x6
	.uahalf	0x17f
	.uaword	0x1eb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"OdtEntryMax_u16"
	.byte	0x6
	.uahalf	0x180
	.uaword	0x1eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.string	"DaqListNum_u16"
	.byte	0x6
	.uahalf	0x181
	.uaword	0x1eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"AbsOdtNum_u16"
	.byte	0x6
	.uahalf	0x182
	.uaword	0x1eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0
	.uleb128 0x9
	.string	"Xcp_SelectedOdtEntry_t"
	.byte	0x6
	.uahalf	0x183
	.uaword	0xddf
	.uleb128 0xa
	.byte	0x6
	.byte	0x6
	.uahalf	0x186
	.uaword	0xee2
	.uleb128 0xb
	.string	"OdtEntryFirst_u16"
	.byte	0x6
	.uahalf	0x18b
	.uaword	0x1eb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"Length_u16"
	.byte	0x6
	.uahalf	0x18c
	.uaword	0x1eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.string	"OdtEntryCnt_u8"
	.byte	0x6
	.uahalf	0x18d
	.uaword	0x1c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"CopyRoutine_u8"
	.byte	0x6
	.uahalf	0x18e
	.uaword	0x1c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x9
	.string	"Xcp_Odt_t"
	.byte	0x6
	.uahalf	0x18f
	.uaword	0xe71
	.uleb128 0xa
	.byte	0x18
	.byte	0x6
	.uahalf	0x19d
	.uaword	0x101c
	.uleb128 0xb
	.string	"DaqListQue_p"
	.byte	0x6
	.uahalf	0x19f
	.uaword	0x2ff
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"DaqListQuePos"
	.byte	0x6
	.uahalf	0x1a0
	.uaword	0xa06
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"OdtFirst_u16"
	.byte	0x6
	.uahalf	0x1a1
	.uaword	0x1eb
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.string	"EventChannelNum_u16"
	.byte	0x6
	.uahalf	0x1a2
	.uaword	0x1eb
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xb
	.string	"OdtCnt_u8"
	.byte	0x6
	.uahalf	0x1a3
	.uaword	0x1c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"XcpTxPduId"
	.byte	0x6
	.uahalf	0x1a7
	.uaword	0x407
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0xb
	.string	"Prescaler_u8"
	.byte	0x6
	.uahalf	0x1a8
	.uaword	0x1c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0xb
	.string	"CycleCnt_u8"
	.byte	0x6
	.uahalf	0x1a9
	.uaword	0x1c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x13
	.uleb128 0xb
	.string	"Priority_u8"
	.byte	0x6
	.uahalf	0x1aa
	.uaword	0x1c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.string	"Flags_u8"
	.byte	0x6
	.uahalf	0x1ab
	.uaword	0x1c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.uleb128 0xb
	.string	"Mode_u8"
	.byte	0x6
	.uahalf	0x1ac
	.uaword	0x101c
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0xb
	.string	"CurrentlyRunning_b"
	.byte	0x6
	.uahalf	0x1ad
	.uaword	0x1021
	.byte	0x2
	.byte	0x23
	.uleb128 0x17
	.byte	0
	.uleb128 0x12
	.uaword	0x1c0
	.uleb128 0x12
	.uaword	0x272
	.uleb128 0x9
	.string	"Xcp_DaqList_t"
	.byte	0x6
	.uahalf	0x1b4
	.uaword	0xef4
	.uleb128 0xa
	.byte	0x38
	.byte	0x6
	.uahalf	0x1b7
	.uaword	0x11df
	.uleb128 0xb
	.string	"DaqList_p"
	.byte	0x6
	.uahalf	0x1ba
	.uaword	0x11df
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"Odt_p"
	.byte	0x6
	.uahalf	0x1bb
	.uaword	0x11e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"OdtEntryAddress_p"
	.byte	0x6
	.uahalf	0x1bc
	.uaword	0x11eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"OdtEntrySize_p"
	.byte	0x6
	.uahalf	0x1c0
	.uaword	0x2ff
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.string	"PriorityList_p"
	.byte	0x6
	.uahalf	0x1c1
	.uaword	0x901
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"DaqQue_p"
	.byte	0x6
	.uahalf	0x1c2
	.uaword	0x2ff
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.string	"DaqListCnt_u16"
	.byte	0x6
	.uahalf	0x1c5
	.uaword	0x1eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.string	"OdtCnt_u16"
	.byte	0x6
	.uahalf	0x1c6
	.uaword	0x1eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0xb
	.string	"OdtEntryCnt_u16"
	.byte	0x6
	.uahalf	0x1c7
	.uaword	0x1eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.string	"SelectedOdtEntry"
	.byte	0x6
	.uahalf	0x1cc
	.uaword	0xe52
	.byte	0x2
	.byte	0x23
	.uleb128 0x1e
	.uleb128 0xb
	.string	"DaqRamPtr_pu8"
	.byte	0x6
	.uahalf	0x1cf
	.uaword	0x2ff
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.string	"DaqRamSize_u32"
	.byte	0x6
	.uahalf	0x1d0
	.uaword	0x227
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xb
	.string	"DaqListSendingCnt_u16"
	.byte	0x6
	.uahalf	0x1d3
	.uaword	0x1eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.string	"DaqListSending_u16"
	.byte	0x6
	.uahalf	0x1d4
	.uaword	0x1eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x32
	.uleb128 0xb
	.string	"OverloadOccurred_b"
	.byte	0x6
	.uahalf	0x1d6
	.uaword	0x272
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.string	"DaqState_en"
	.byte	0x6
	.uahalf	0x1d8
	.uaword	0x786
	.byte	0x2
	.byte	0x23
	.uleb128 0x35
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x1026
	.uleb128 0x6
	.byte	0x4
	.uaword	0xee2
	.uleb128 0x6
	.byte	0x4
	.uaword	0x3a6
	.uleb128 0x9
	.string	"Xcp_DaqConfig_t"
	.byte	0x6
	.uahalf	0x1d9
	.uaword	0x103c
	.uleb128 0xa
	.byte	0x4c
	.byte	0x6
	.uahalf	0x206
	.uaword	0x123b
	.uleb128 0xb
	.string	"Session"
	.byte	0x6
	.uahalf	0x208
	.uaword	0xacd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"DaqConfig"
	.byte	0x6
	.uahalf	0x20d
	.uaword	0x11f1
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0
	.uleb128 0x9
	.string	"Xcp_NoInit_t"
	.byte	0x6
	.uahalf	0x20f
	.uaword	0x1209
	.uleb128 0x11
	.uahalf	0x154
	.byte	0x6
	.uahalf	0x227
	.uaword	0x1375
	.uleb128 0xb
	.string	"Wait4TxConfCtr_u8"
	.byte	0x6
	.uahalf	0x229
	.uaword	0x1c0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"BgDoDisconnect_Response"
	.byte	0x6
	.uahalf	0x22a
	.uaword	0x63d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xb
	.string	"BgActivityState"
	.byte	0x6
	.uahalf	0x22b
	.uaword	0x980
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.string	"ResBuffer"
	.byte	0x6
	.uahalf	0x22c
	.uaword	0xb0b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"EvBuffer"
	.byte	0x6
	.uahalf	0x22d
	.uaword	0x7e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"CmdBuffer"
	.byte	0x6
	.uahalf	0x22e
	.uaword	0x7e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.string	"ServBuffer"
	.byte	0x6
	.uahalf	0x22f
	.uaword	0xb0b
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.string	"Mem"
	.byte	0x6
	.uahalf	0x231
	.uaword	0xbc6
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.string	"SeedAndKey"
	.byte	0x6
	.uahalf	0x234
	.uaword	0xc1c
	.byte	0x3
	.byte	0x23
	.uleb128 0x138
	.uleb128 0xb
	.string	"Checksum"
	.byte	0x6
	.uahalf	0x237
	.uaword	0xc4e
	.byte	0x3
	.byte	0x23
	.uleb128 0x13c
	.uleb128 0xb
	.string	"ReqTimeoutCnt_u16"
	.byte	0x6
	.uahalf	0x238
	.uaword	0x1eb
	.byte	0x3
	.byte	0x23
	.uleb128 0x140
	.uleb128 0xb
	.string	"Debug"
	.byte	0x6
	.uahalf	0x23b
	.uaword	0xdcb
	.byte	0x3
	.byte	0x23
	.uleb128 0x142
	.byte	0
	.uleb128 0x9
	.string	"Xcp_Cleared_t"
	.byte	0x6
	.uahalf	0x23d
	.uaword	0x1250
	.uleb128 0x13
	.byte	0x1
	.string	"Xcp_CmdBuildChecksum"
	.byte	0x1
	.byte	0x20
	.byte	0x1
	.uaword	.LFB49
	.uaword	.LFE49
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x146c
	.uleb128 0x14
	.string	"XcpPacket"
	.byte	0x1
	.byte	0x20
	.uaword	0x7f4
	.uaword	.LLST0
	.uleb128 0x15
	.uaword	.LASF4
	.byte	0x1
	.byte	0x20
	.uaword	0x1c0
	.uaword	.LLST1
	.uleb128 0x16
	.string	"CmdPtr"
	.byte	0x1
	.byte	0x29
	.uaword	0x146c
	.byte	0x1
	.byte	0x6c
	.uleb128 0x17
	.string	"ResPtr"
	.byte	0x1
	.byte	0x2d
	.uaword	0x147c
	.uleb128 0x18
	.string	"Error"
	.byte	0x1
	.byte	0x30
	.uaword	0x63d
	.uaword	.LLST2
	.uleb128 0x18
	.string	"LocalMta"
	.byte	0x1
	.byte	0x31
	.uaword	0x3f0
	.uaword	.LLST3
	.uleb128 0x19
	.uaword	.LVL5
	.byte	0x1
	.uaword	0x15c6
	.uaword	0x1431
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.uaword	.LVL6
	.byte	0x1
	.uaword	0x15e3
	.uaword	0x1446
	.uleb128 0x1a
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.uaword	.LVL9
	.uaword	0x1608
	.uaword	0x145a
	.uleb128 0x1a
	.byte	0x1
	.byte	0x57
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.uaword	.LVL12
	.byte	0x1
	.uaword	0x15e3
	.uleb128 0x1a
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x10
	.uaword	0x1471
	.uleb128 0x6
	.byte	0x4
	.uaword	0x1477
	.uleb128 0x10
	.uaword	0x860
	.uleb128 0x6
	.byte	0x4
	.uaword	0x8e2
	.uleb128 0x13
	.byte	0x1
	.string	"Xcp_InitChecksum"
	.byte	0x1
	.byte	0xb5
	.byte	0x1
	.uaword	.LFB50
	.uaword	.LFE50
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x14b6
	.uleb128 0x1d
	.uaword	.LASF4
	.byte	0x1
	.byte	0xb5
	.uaword	0x1c0
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"Xcp_BuildChecksumMainFunction"
	.byte	0x1
	.byte	0xc4
	.byte	0x1
	.uaword	.LFB51
	.uaword	.LFE51
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x157b
	.uleb128 0x15
	.uaword	.LASF4
	.byte	0x1
	.byte	0xc4
	.uaword	0x1c0
	.uaword	.LLST4
	.uleb128 0x18
	.string	"ResPtr"
	.byte	0x1
	.byte	0xca
	.uaword	0x147c
	.uaword	.LLST5
	.uleb128 0x18
	.string	"Error"
	.byte	0x1
	.byte	0xcd
	.uaword	0x63d
	.uaword	.LLST6
	.uleb128 0x1b
	.uaword	.LVL16
	.uaword	0x1648
	.uaword	0x153b
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8f
	.sleb128 1
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 4
	.byte	0
	.uleb128 0x19
	.uaword	.LVL18
	.byte	0x1
	.uaword	0x15e3
	.uaword	0x1550
	.uleb128 0x1a
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.uaword	.LVL20
	.byte	0x1
	.uaword	0x168e
	.uaword	0x156a
	.uleb128 0x1a
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x35
	.byte	0
	.uleb128 0x1e
	.uaword	.LVL22
	.uaword	0x15c6
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xe
	.uaword	0x123b
	.uaword	0x158b
	.uleb128 0xf
	.uaword	0x7d5
	.byte	0
	.byte	0
	.uleb128 0x1f
	.string	"Xcp_NoInit"
	.byte	0x6
	.uahalf	0x245
	.uaword	0x157b
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.uaword	0x1375
	.uaword	0x15b0
	.uleb128 0xf
	.uaword	0x7d5
	.byte	0
	.byte	0
	.uleb128 0x1f
	.string	"Xcp_Cleared"
	.byte	0x6
	.uahalf	0x24c
	.uaword	0x15a0
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.byte	0x1
	.string	"Xcp_SendRes"
	.byte	0x6
	.uahalf	0x259
	.byte	0x1
	.byte	0x1
	.uaword	0x15e3
	.uleb128 0x21
	.uaword	0x1c0
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.string	"Xcp_SendErrRes"
	.byte	0x6
	.uahalf	0x25d
	.byte	0x1
	.byte	0x1
	.uaword	0x1608
	.uleb128 0x21
	.uaword	0x63d
	.uleb128 0x21
	.uaword	0x1c0
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.string	"XcpAppl_BuildChecksumTrigger"
	.byte	0x7
	.byte	0x2d
	.byte	0x1
	.uaword	0x63d
	.byte	0x1
	.uaword	0x1643
	.uleb128 0x21
	.uaword	0x1643
	.uleb128 0x21
	.uaword	0x227
	.uleb128 0x21
	.uaword	0x1c0
	.byte	0
	.uleb128 0x10
	.uaword	0x3f0
	.uleb128 0x22
	.byte	0x1
	.string	"XcpAppl_BuildChecksumMainFunction"
	.byte	0x7
	.byte	0x3b
	.byte	0x1
	.uaword	0x63d
	.byte	0x1
	.uaword	0x1688
	.uleb128 0x21
	.uaword	0x1688
	.uleb128 0x21
	.uaword	0x2ff
	.uleb128 0x21
	.uaword	0x1c0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x227
	.uleb128 0x23
	.byte	0x1
	.string	"Xcp_SendEv_Code"
	.byte	0x6
	.uahalf	0x25f
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.uaword	0x1c0
	.uleb128 0x21
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
	.uleb128 0x12
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x1a
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x23
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
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL6-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL6-1
	.uaword	.LVL6
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL9-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL9-1
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
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL1
	.uaword	.LFE49
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL11
	.uaword	.LVL12-1
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x11
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0x4c
	.byte	0x1e
	.byte	0x83
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x8
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.uaword	.LVL5
	.uaword	.LVL6-1
	.uahalf	0x11
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0x4c
	.byte	0x1e
	.byte	0x83
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x8
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x11
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0x4c
	.byte	0x1e
	.byte	0x83
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x8
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.uaword	.LVL8
	.uaword	.LVL9-1
	.uahalf	0xe
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0x4c
	.byte	0x1e
	.byte	0x83
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL14
	.uaword	.LVL16-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL16-1
	.uaword	.LFE51
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL15
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL17
	.uaword	.LVL20
	.uahalf	0x8
	.byte	0x8c
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x4
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LFE51
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL16
	.uaword	.LVL18-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x52
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
.LASF0:
	.string	"Buffer_au8"
.LASF3:
	.string	"BlockSize_u32"
.LASF4:
	.string	"protLayerId"
.LASF1:
	.string	"Length_u32"
.LASF2:
	.string	"Reserved_u16"
	.extern	Xcp_SendEv_Code,STT_FUNC,0
	.extern	XcpAppl_BuildChecksumMainFunction,STT_FUNC,0
	.extern	XcpAppl_BuildChecksumTrigger,STT_FUNC,0
	.extern	Xcp_SendErrRes,STT_FUNC,0
	.extern	Xcp_SendRes,STT_FUNC,0
	.extern	Xcp_Cleared,STT_OBJECT,340
	.extern	Xcp_NoInit,STT_OBJECT,76
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
