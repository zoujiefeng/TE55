	.file	"Xcp_QueHandling.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Xcp_CreateQue,"ax",@progbits
	.align 1
	.global	Xcp_CreateQue
	.type	Xcp_CreateQue, @function
Xcp_CreateQue:
.LFB49:
	.file 1 "bsw\\Xcp\\src\\Xcp_QueHandling.c"
	.loc 1 33 0
.LVL0:
	.loc 1 38 0
	ld.h	%d15, [%a4] 12
	.loc 1 40 0
	st.h	[%a4] 10, %d4
	.loc 1 38 0
	st.h	[%a4] 8, %d15
	.loc 1 40 0
	ret
.LFE49:
	.size	Xcp_CreateQue, .-Xcp_CreateQue
.section .text.Xcp_InitDaqQueue,"ax",@progbits
	.align 1
	.global	Xcp_InitDaqQueue
	.type	Xcp_InitDaqQueue, @function
Xcp_InitDaqQueue:
.LFB50:
	.loc 1 55 0
.LVL1:
	.loc 1 62 0
	movh.a	%a15, hi:Xcp_NoInit
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:Xcp_NoInit
	madd	%d2, %d15, %d5, 76
	mov.a	%a15, %d2
	ld.w	%d15, [%a15] 20
	madd	%d2, %d15, %d4, 24
	.loc 1 64 0
	mov	%d15, 0
	.loc 1 62 0
	mov.a	%a15, %d2
.LVL2:
	.loc 1 64 0
	st.h	[%a15] 6, %d15
	.loc 1 65 0
	st.h	[%a15] 4, %d15
	.loc 1 66 0
	ld.h	%d15, [%a15] 12
	st.h	[%a15] 8, %d15
	ret
.LFE50:
	.size	Xcp_InitDaqQueue, .-Xcp_InitDaqQueue
.section .text.Xcp_QueClearAll,"ax",@progbits
	.align 1
	.global	Xcp_QueClearAll
	.type	Xcp_QueClearAll, @function
Xcp_QueClearAll:
.LFB51:
	.loc 1 96 0
.LVL3:
.LBB13:
	.loc 1 110 0
	movh.a	%a15, hi:Xcp_NoInit
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:Xcp_NoInit
	madd	%d3, %d15, %d4, 76
	mov.a	%a15, %d3
	ld.hu	%d5, [%a15] 44
	jz	%d5, .L6
	ld.a	%a15, [%a15] 20
	mov	%d15, 0
.LBB14:
.LBB15:
	.loc 1 64 0
	mov	%d2, 0
.LVL4:
.L5:
	.loc 1 66 0
	ld.h	%d3, [%a15] 12
	add	%d15, 1
.LVL5:
	st.h	[%a15] 8, %d3
.LVL6:
.LBE15:
.LBE14:
	.loc 1 110 0
	extr.u	%d3, %d15, 0, 16
.LBB17:
.LBB16:
	.loc 1 64 0
	st.h	[%a15] 6, %d2
	.loc 1 65 0
	st.h	[%a15] 4, %d2
	lea	%a15, [%a15] 24
.LVL7:
.LBE16:
.LBE17:
	.loc 1 110 0
	jlt.u	%d3, %d5, .L5
.LVL8:
.L6:
.LBE13:
	.loc 1 117 0
	movh.a	%a15, hi:Xcp_Cleared
	mov.d	%d3, %a15
	mov	%d15, 340
	addi	%d2, %d3, lo:Xcp_Cleared
	madd	%d3, %d2, %d4, %d15
	mov	%d15, 0
	mov.a	%a15, %d3
	st.w	[%a15] 12, %d15
	.loc 1 119 0
	st.w	[%a15] 24, %d15
	.loc 1 121 0
	st.w	[%a15] 48, %d15
	ret
.LFE51:
	.size	Xcp_QueClearAll, .-Xcp_QueClearAll
.section .text.Xcp_QueReadNext,"ax",@progbits
	.align 1
	.global	Xcp_QueReadNext
	.type	Xcp_QueReadNext, @function
Xcp_QueReadNext:
.LFB52:
	.loc 1 150 0
.LVL9:
	.loc 1 161 0
	ld.hu	%d3, [%a4] 10
	ld.hu	%d15, [%a4] 6
	add	%d3, -1
	.loc 1 164 0
	mov	%d2, 0
	.loc 1 161 0
	jeq	%d15, %d3, .L11
	.loc 1 169 0
	add	%d15, 1
	extr.u	%d2, %d15, 0, 16
.L11:
	.loc 1 173 0
	ld.hu	%d15, [%a4] 12
	ld.bu	%d3, [%a4] 16
	st.h	[%a4] 6, %d2
	add	%d3, %d15
	ld.hu	%d2, [%a4] 8
	add	%d3, -1
	jeq	%d2, %d3, .L12
	.loc 1 181 0
	add	%d15, %d2, 1
	extr.u	%d15, %d15, 0, 16
.L12:
	st.h	[%a4] 8, %d15
	ret
.LFE52:
	.size	Xcp_QueReadNext, .-Xcp_QueReadNext
.section .text.Xcp_QueSetBack,"ax",@progbits
	.align 1
	.global	Xcp_QueSetBack
	.type	Xcp_QueSetBack, @function
Xcp_QueSetBack:
.LFB53:
	.loc 1 202 0
.LVL10:
	.loc 1 213 0
	ld.hu	%d15, [%a4] 6
	jnz	%d15, .L19
	.loc 1 221 0
	ld.h	%d15, [%a4] 10
.L19:
	add	%d15, -1
	extr.u	%d15, %d15, 0, 16
	.loc 1 225 0
	ld.hu	%d3, [%a4] 12
	st.h	[%a4] 6, %d15
	ld.hu	%d15, [%a4] 8
	.loc 1 233 0
	add	%d4, %d15, -1
	extr.u	%d2, %d4, 0, 16
	.loc 1 225 0
	jeq	%d3, %d15, .L20
	st.h	[%a4] 8, %d2
	ret
.L20:
	.loc 1 228 0
	ld.bu	%d2, [%a4] 16
	add	%d2, %d4
	extr.u	%d2, %d2, 0, 16
	st.h	[%a4] 8, %d2
	ret
.LFE53:
	.size	Xcp_QueSetBack, .-Xcp_QueSetBack
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
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB52
	.uaword	.LFE52-.LFB52
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB53
	.uaword	.LFE53-.LFB53
	.align 2
.LEFDE8:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Types.h"
	.file 4 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Priv.h"
	.file 5 ".\\output\\inc/..\\..\\bsw\\Xcp\\integration\\Xcp_Cfg_SchM.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x1491
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Xcp\\src\\Xcp_QueHandling.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x18
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
	.uleb128 0x4
	.byte	0x4
	.uaword	0x1bb
	.uleb128 0x5
	.byte	0x1
	.byte	0x3
	.byte	0xf9
	.uaword	0x31e
	.uleb128 0x6
	.string	"XCP_STATE_DISCONNECTED"
	.sleb128 0
	.uleb128 0x6
	.string	"XCP_STATE_DISCONNECTING"
	.sleb128 1
	.uleb128 0x6
	.string	"XCP_STATE_CONNECTED"
	.sleb128 2
	.uleb128 0x6
	.string	"XCP_STATE_RESUME"
	.sleb128 3
	.uleb128 0x6
	.string	"XCP_STATE_DISABLED"
	.sleb128 240
	.byte	0
	.uleb128 0x3
	.string	"Xcp_State_t"
	.byte	0x3
	.byte	0xff
	.uaword	0x2a3
	.uleb128 0x7
	.string	"Xcp_AddrValue"
	.byte	0x3
	.uahalf	0x1be
	.uaword	0x222
	.uleb128 0x8
	.byte	0x8
	.byte	0x3
	.uahalf	0x1c1
	.uaword	0x37b
	.uleb128 0x9
	.string	"AddrValue"
	.byte	0x3
	.uahalf	0x1c3
	.uaword	0x331
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"Extension"
	.byte	0x3
	.uahalf	0x1c4
	.uaword	0x1bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x7
	.string	"Xcp_AddrType_t"
	.byte	0x3
	.uahalf	0x1c5
	.uaword	0x347
	.uleb128 0x7
	.string	"Xcp_PduIdType"
	.byte	0x3
	.uahalf	0x1c7
	.uaword	0x1bb
	.uleb128 0xa
	.byte	0x1
	.byte	0x3
	.uahalf	0x1cb
	.uaword	0x5c8
	.uleb128 0x6
	.string	"XCP_ERR_CMD_SYNCH"
	.sleb128 0
	.uleb128 0x6
	.string	"XCP_ERR_CMD_BUSY"
	.sleb128 16
	.uleb128 0x6
	.string	"XCP_ERR_DAQ_ACTIVE"
	.sleb128 17
	.uleb128 0x6
	.string	"XCP_ERR_PGM_ACTIVE"
	.sleb128 18
	.uleb128 0x6
	.string	"XCP_ERR_CMD_UNKNOWN"
	.sleb128 32
	.uleb128 0x6
	.string	"XCP_ERR_CMD_SYNTAX"
	.sleb128 33
	.uleb128 0x6
	.string	"XCP_ERR_OUT_OF_RANGE"
	.sleb128 34
	.uleb128 0x6
	.string	"XCP_ERR_WRITE_PROTECTED"
	.sleb128 35
	.uleb128 0x6
	.string	"XCP_ERR_ACCESS_DENIED"
	.sleb128 36
	.uleb128 0x6
	.string	"XCP_ERR_ACCESS_LOCKED"
	.sleb128 37
	.uleb128 0x6
	.string	"XCP_ERR_PAGE_NOT_VALID"
	.sleb128 38
	.uleb128 0x6
	.string	"XCP_ERR_MODE_NOT_VALID"
	.sleb128 39
	.uleb128 0x6
	.string	"XCP_ERR_SEGMENT_NOT_VALID"
	.sleb128 40
	.uleb128 0x6
	.string	"XCP_ERR_SEQUENCE"
	.sleb128 41
	.uleb128 0x6
	.string	"XCP_ERR_DAQ_CONFIG"
	.sleb128 42
	.uleb128 0x6
	.string	"XCP_ERR_MEMORY_OVERFLOW"
	.sleb128 48
	.uleb128 0x6
	.string	"XCP_ERR_GENERIC"
	.sleb128 49
	.uleb128 0x6
	.string	"XCP_ERR_VERIFY"
	.sleb128 50
	.uleb128 0x6
	.string	"XCP_ERR_RES_TEMP_NOT_ACCESS"
	.sleb128 51
	.uleb128 0x6
	.string	"XCP_ERR_SUBCMD_UNKNOWN"
	.sleb128 52
	.uleb128 0x6
	.string	"XCP_REPEAT_COMMAND"
	.sleb128 252
	.uleb128 0x6
	.string	"XCP_NO_ACCESS_HIDE"
	.sleb128 253
	.uleb128 0x6
	.string	"XCP_NO_RESPONSE"
	.sleb128 254
	.uleb128 0x6
	.string	"XCP_NO_ERROR"
	.sleb128 255
	.byte	0
	.uleb128 0x7
	.string	"Xcp_ErrorCode"
	.byte	0x3
	.uahalf	0x1e5
	.uaword	0x3a8
	.uleb128 0xa
	.byte	0x1
	.byte	0x3
	.uahalf	0x1e9
	.uaword	0x711
	.uleb128 0x6
	.string	"XCP_DAQ_STATE_NO_DAQ"
	.sleb128 0
	.uleb128 0x6
	.string	"XCP_DAQ_STATE_FREE_DAQ"
	.sleb128 1
	.uleb128 0x6
	.string	"XCP_DAQ_STATE_ALLOC_DAQ"
	.sleb128 2
	.uleb128 0x6
	.string	"XCP_DAQ_STATE_ALLOC_ODT"
	.sleb128 3
	.uleb128 0x6
	.string	"XCP_DAQ_STATE_ALLOC_ODT_ENTRY"
	.sleb128 4
	.uleb128 0x6
	.string	"XCP_DAQ_STATE_WRITE_DAQ"
	.sleb128 5
	.uleb128 0x6
	.string	"XCP_DAQ_STATE_PREPARE_START"
	.sleb128 6
	.uleb128 0x6
	.string	"XCP_DAQ_STATE_SHIFTING"
	.sleb128 7
	.uleb128 0x6
	.string	"XCP_DAQ_STATE_STOP_REQUESTED"
	.sleb128 8
	.uleb128 0x6
	.string	"XCP_DAQ_STATE_READY_TO_RUN"
	.sleb128 9
	.uleb128 0x6
	.string	"XCP_DAQ_STATE_RUNNING"
	.sleb128 10
	.byte	0
	.uleb128 0x7
	.string	"Xcp_DaqState_t"
	.byte	0x3
	.uahalf	0x1f5
	.uaword	0x5de
	.uleb128 0x8
	.byte	0xc
	.byte	0x3
	.uahalf	0x254
	.uaword	0x750
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0x3
	.uahalf	0x256
	.uaword	0x750
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.uaword	.LASF1
	.byte	0x3
	.uahalf	0x257
	.uaword	0x222
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0xc
	.uaword	0x1bb
	.uaword	0x760
	.uleb128 0xd
	.uaword	0x760
	.byte	0x7
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x7
	.string	"Xcp_Cto8_t"
	.byte	0x3
	.uahalf	0x258
	.uaword	0x728
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x4
	.byte	0x4
	.uaword	0x1e6
	.uleb128 0x5
	.byte	0x1
	.byte	0x4
	.byte	0xf5
	.uaword	0x806
	.uleb128 0x6
	.string	"XCP_BG_IDLE"
	.sleb128 0
	.uleb128 0x6
	.string	"XCP_BG_CHKSUM"
	.sleb128 1
	.uleb128 0x6
	.string	"XCP_BG_MEM_WRITE"
	.sleb128 2
	.uleb128 0x6
	.string	"XCP_BG_REPEAT_CMD"
	.sleb128 3
	.uleb128 0x6
	.string	"XCP_BG_DO_DISCONNECT"
	.sleb128 4
	.uleb128 0x6
	.string	"XCP_BG_CANCEL_REQ"
	.sleb128 5
	.byte	0
	.uleb128 0x3
	.string	"Xcp_BgActivity_t"
	.byte	0x4
	.byte	0xfc
	.uaword	0x78d
	.uleb128 0x8
	.byte	0x8
	.byte	0x4
	.uahalf	0x10d
	.uaword	0x88c
	.uleb128 0x9
	.string	"WritePos_u16"
	.byte	0x4
	.uahalf	0x10f
	.uaword	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"ReadPos_u16"
	.byte	0x4
	.uahalf	0x110
	.uaword	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x9
	.string	"ReadPos_OdtNum_u16"
	.byte	0x4
	.uahalf	0x111
	.uaword	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"QueSize_u16"
	.byte	0x4
	.uahalf	0x112
	.uaword	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0
	.uleb128 0x7
	.string	"Xcp_Que_t"
	.byte	0x4
	.uahalf	0x113
	.uaword	0x81e
	.uleb128 0x8
	.byte	0x14
	.byte	0x4
	.uahalf	0x116
	.uaword	0x953
	.uleb128 0x9
	.string	"XcpState_en"
	.byte	0x4
	.uahalf	0x118
	.uaword	0x31e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"ConnectedTlId_u8"
	.byte	0x4
	.uahalf	0x119
	.uaword	0x1bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x9
	.string	"ResourceProtStatus_u8"
	.byte	0x4
	.uahalf	0x11a
	.uaword	0x1bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x9
	.string	"Mta"
	.byte	0x4
	.uahalf	0x11b
	.uaword	0x37b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"MaxDto_u16"
	.byte	0x4
	.uahalf	0x11c
	.uaword	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.string	"MaxDtoAligned_u16"
	.byte	0x4
	.uahalf	0x11d
	.uaword	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x9
	.string	"MaxCto_u8"
	.byte	0x4
	.uahalf	0x11e
	.uaword	0x1bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x7
	.string	"Xcp_Session_t"
	.byte	0x4
	.uahalf	0x126
	.uaword	0x89e
	.uleb128 0x8
	.byte	0xc
	.byte	0x4
	.uahalf	0x131
	.uaword	0x991
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0x4
	.uahalf	0x133
	.uaword	0x750
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.uaword	.LASF1
	.byte	0x4
	.uahalf	0x134
	.uaword	0x222
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x7
	.string	"Xcp_CtoMax_t"
	.byte	0x4
	.uahalf	0x135
	.uaword	0x969
	.uleb128 0xe
	.uahalf	0x104
	.byte	0x4
	.uahalf	0x139
	.uaword	0xa3c
	.uleb128 0x9
	.string	"UploadRunning_b"
	.byte	0x4
	.uahalf	0x13c
	.uaword	0x26d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"RemainingSize_u8"
	.byte	0x4
	.uahalf	0x13f
	.uaword	0x1bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x9
	.string	"DownloadSize_u8"
	.byte	0x4
	.uahalf	0x143
	.uaword	0x1bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x9
	.string	"ReceivedSize_u8"
	.byte	0x4
	.uahalf	0x146
	.uaword	0x1bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x9
	.string	"DownloadBuffer_au8"
	.byte	0x4
	.uahalf	0x147
	.uaword	0xa3c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xc
	.uaword	0x1bb
	.uaword	0xa4c
	.uleb128 0xd
	.uaword	0x760
	.byte	0xfe
	.byte	0
	.uleb128 0x7
	.string	"Xcp_Mem_t"
	.byte	0x4
	.uahalf	0x14e
	.uaword	0x9a6
	.uleb128 0x8
	.byte	0x2
	.byte	0x4
	.uahalf	0x153
	.uaword	0xaa2
	.uleb128 0x9
	.string	"SeedWaitingKey_b"
	.byte	0x4
	.uahalf	0x155
	.uaword	0x26d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"SeedRemaingSize_u8"
	.byte	0x4
	.uahalf	0x156
	.uaword	0x1bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x7
	.string	"Xcp_SeedAndKey_t"
	.byte	0x4
	.uahalf	0x157
	.uaword	0xa5e
	.uleb128 0x8
	.byte	0x4
	.byte	0x4
	.uahalf	0x15c
	.uaword	0xade
	.uleb128 0x9
	.string	"BlockSize_u32"
	.byte	0x4
	.uahalf	0x15e
	.uaword	0x222
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x7
	.string	"Xcp_Checksum_t"
	.byte	0x4
	.uahalf	0x162
	.uaword	0xabb
	.uleb128 0x8
	.byte	0x12
	.byte	0x4
	.uahalf	0x167
	.uaword	0xc5b
	.uleb128 0x9
	.string	"Xcp_Debug_TransmitOkCtr_u16"
	.byte	0x4
	.uahalf	0x169
	.uaword	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"Xcp_Debug_TransmitNotOkCtr_u16"
	.byte	0x4
	.uahalf	0x16a
	.uaword	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x9
	.string	"Xcp_Debug_SendResTxConfCtr_u16"
	.byte	0x4
	.uahalf	0x16b
	.uaword	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"Xcp_Debug_SendResCtr_u16"
	.byte	0x4
	.uahalf	0x16c
	.uaword	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x9
	.string	"Xcp_Debug_SendEvTxConfCtr_u16"
	.byte	0x4
	.uahalf	0x16d
	.uaword	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.string	"Xcp_Debug_SendEvCtr_u16"
	.byte	0x4
	.uahalf	0x16e
	.uaword	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x9
	.string	"Xcp_Debug_SendDaqTxConfCtr_u16"
	.byte	0x4
	.uahalf	0x170
	.uaword	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.string	"Xcp_Debug_SendDaqCtr_u16"
	.byte	0x4
	.uahalf	0x171
	.uaword	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x9
	.string	"Xcp_Debug_TxConfCtr_u16"
	.byte	0x4
	.uahalf	0x173
	.uaword	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x7
	.string	"Xcp_Debug_t"
	.byte	0x4
	.uahalf	0x174
	.uaword	0xaf5
	.uleb128 0x8
	.byte	0x8
	.byte	0x4
	.uahalf	0x17d
	.uaword	0xce2
	.uleb128 0x9
	.string	"OdtEntryPos_u16"
	.byte	0x4
	.uahalf	0x17f
	.uaword	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"OdtEntryMax_u16"
	.byte	0x4
	.uahalf	0x180
	.uaword	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x9
	.string	"DaqListNum_u16"
	.byte	0x4
	.uahalf	0x181
	.uaword	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"AbsOdtNum_u16"
	.byte	0x4
	.uahalf	0x182
	.uaword	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0
	.uleb128 0x7
	.string	"Xcp_SelectedOdtEntry_t"
	.byte	0x4
	.uahalf	0x183
	.uaword	0xc6f
	.uleb128 0x8
	.byte	0x6
	.byte	0x4
	.uahalf	0x186
	.uaword	0xd72
	.uleb128 0x9
	.string	"OdtEntryFirst_u16"
	.byte	0x4
	.uahalf	0x18b
	.uaword	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"Length_u16"
	.byte	0x4
	.uahalf	0x18c
	.uaword	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x9
	.string	"OdtEntryCnt_u8"
	.byte	0x4
	.uahalf	0x18d
	.uaword	0x1bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"CopyRoutine_u8"
	.byte	0x4
	.uahalf	0x18e
	.uaword	0x1bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x7
	.string	"Xcp_Odt_t"
	.byte	0x4
	.uahalf	0x18f
	.uaword	0xd01
	.uleb128 0x8
	.byte	0x18
	.byte	0x4
	.uahalf	0x19d
	.uaword	0xea2
	.uleb128 0x9
	.string	"DaqListQue_p"
	.byte	0x4
	.uahalf	0x19f
	.uaword	0x29d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.uaword	.LASF2
	.byte	0x4
	.uahalf	0x1a0
	.uaword	0x88c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"OdtFirst_u16"
	.byte	0x4
	.uahalf	0x1a1
	.uaword	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.string	"EventChannelNum_u16"
	.byte	0x4
	.uahalf	0x1a2
	.uaword	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x9
	.string	"OdtCnt_u8"
	.byte	0x4
	.uahalf	0x1a3
	.uaword	0x1bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.string	"XcpTxPduId"
	.byte	0x4
	.uahalf	0x1a7
	.uaword	0x392
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0x9
	.string	"Prescaler_u8"
	.byte	0x4
	.uahalf	0x1a8
	.uaword	0x1bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0x9
	.string	"CycleCnt_u8"
	.byte	0x4
	.uahalf	0x1a9
	.uaword	0x1bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x13
	.uleb128 0x9
	.string	"Priority_u8"
	.byte	0x4
	.uahalf	0x1aa
	.uaword	0x1bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.string	"Flags_u8"
	.byte	0x4
	.uahalf	0x1ab
	.uaword	0x1bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.uleb128 0x9
	.string	"Mode_u8"
	.byte	0x4
	.uahalf	0x1ac
	.uaword	0xea2
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0x9
	.string	"CurrentlyRunning_b"
	.byte	0x4
	.uahalf	0x1ad
	.uaword	0xea7
	.byte	0x2
	.byte	0x23
	.uleb128 0x17
	.byte	0
	.uleb128 0xf
	.uaword	0x1bb
	.uleb128 0xf
	.uaword	0x26d
	.uleb128 0x7
	.string	"Xcp_DaqList_t"
	.byte	0x4
	.uahalf	0x1b4
	.uaword	0xd84
	.uleb128 0x8
	.byte	0x38
	.byte	0x4
	.uahalf	0x1b7
	.uaword	0x1065
	.uleb128 0x9
	.string	"DaqList_p"
	.byte	0x4
	.uahalf	0x1ba
	.uaword	0x1065
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"Odt_p"
	.byte	0x4
	.uahalf	0x1bb
	.uaword	0x106b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"OdtEntryAddress_p"
	.byte	0x4
	.uahalf	0x1bc
	.uaword	0x1071
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.string	"OdtEntrySize_p"
	.byte	0x4
	.uahalf	0x1c0
	.uaword	0x29d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.string	"PriorityList_p"
	.byte	0x4
	.uahalf	0x1c1
	.uaword	0x787
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.string	"DaqQue_p"
	.byte	0x4
	.uahalf	0x1c2
	.uaword	0x29d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.string	"DaqListCnt_u16"
	.byte	0x4
	.uahalf	0x1c5
	.uaword	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.string	"OdtCnt_u16"
	.byte	0x4
	.uahalf	0x1c6
	.uaword	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0x9
	.string	"OdtEntryCnt_u16"
	.byte	0x4
	.uahalf	0x1c7
	.uaword	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.string	"SelectedOdtEntry"
	.byte	0x4
	.uahalf	0x1cc
	.uaword	0xce2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1e
	.uleb128 0x9
	.string	"DaqRamPtr_pu8"
	.byte	0x4
	.uahalf	0x1cf
	.uaword	0x29d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.string	"DaqRamSize_u32"
	.byte	0x4
	.uahalf	0x1d0
	.uaword	0x222
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.string	"DaqListSendingCnt_u16"
	.byte	0x4
	.uahalf	0x1d3
	.uaword	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.string	"DaqListSending_u16"
	.byte	0x4
	.uahalf	0x1d4
	.uaword	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x32
	.uleb128 0x9
	.string	"OverloadOccurred_b"
	.byte	0x4
	.uahalf	0x1d6
	.uaword	0x26d
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.string	"DaqState_en"
	.byte	0x4
	.uahalf	0x1d8
	.uaword	0x711
	.byte	0x2
	.byte	0x23
	.uleb128 0x35
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0xeac
	.uleb128 0x4
	.byte	0x4
	.uaword	0xd72
	.uleb128 0x4
	.byte	0x4
	.uaword	0x331
	.uleb128 0x7
	.string	"Xcp_DaqConfig_t"
	.byte	0x4
	.uahalf	0x1d9
	.uaword	0xec2
	.uleb128 0x8
	.byte	0x4c
	.byte	0x4
	.uahalf	0x206
	.uaword	0x10c1
	.uleb128 0x9
	.string	"Session"
	.byte	0x4
	.uahalf	0x208
	.uaword	0x953
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"DaqConfig"
	.byte	0x4
	.uahalf	0x20d
	.uaword	0x1077
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0
	.uleb128 0x7
	.string	"Xcp_NoInit_t"
	.byte	0x4
	.uahalf	0x20f
	.uaword	0x108f
	.uleb128 0xe
	.uahalf	0x154
	.byte	0x4
	.uahalf	0x227
	.uaword	0x11fb
	.uleb128 0x9
	.string	"Wait4TxConfCtr_u8"
	.byte	0x4
	.uahalf	0x229
	.uaword	0x1bb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"BgDoDisconnect_Response"
	.byte	0x4
	.uahalf	0x22a
	.uaword	0x5c8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x9
	.string	"BgActivityState"
	.byte	0x4
	.uahalf	0x22b
	.uaword	0x806
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x9
	.string	"ResBuffer"
	.byte	0x4
	.uahalf	0x22c
	.uaword	0x991
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"EvBuffer"
	.byte	0x4
	.uahalf	0x22d
	.uaword	0x76c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.string	"CmdBuffer"
	.byte	0x4
	.uahalf	0x22e
	.uaword	0x76c
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.string	"ServBuffer"
	.byte	0x4
	.uahalf	0x22f
	.uaword	0x991
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.string	"Mem"
	.byte	0x4
	.uahalf	0x231
	.uaword	0xa4c
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.string	"SeedAndKey"
	.byte	0x4
	.uahalf	0x234
	.uaword	0xaa2
	.byte	0x3
	.byte	0x23
	.uleb128 0x138
	.uleb128 0x9
	.string	"Checksum"
	.byte	0x4
	.uahalf	0x237
	.uaword	0xade
	.byte	0x3
	.byte	0x23
	.uleb128 0x13c
	.uleb128 0x9
	.string	"ReqTimeoutCnt_u16"
	.byte	0x4
	.uahalf	0x238
	.uaword	0x1e6
	.byte	0x3
	.byte	0x23
	.uleb128 0x140
	.uleb128 0x9
	.string	"Debug"
	.byte	0x4
	.uahalf	0x23b
	.uaword	0xc5b
	.byte	0x3
	.byte	0x23
	.uleb128 0x142
	.byte	0
	.uleb128 0x7
	.string	"Xcp_Cleared_t"
	.byte	0x4
	.uahalf	0x23d
	.uaword	0x10d6
	.uleb128 0x10
	.string	"SchM_Enter_Xcp_SendingLong"
	.byte	0x5
	.byte	0x35
	.byte	0x1
	.byte	0x3
	.uleb128 0x10
	.string	"SchM_Enter_Xcp_SendingShort"
	.byte	0x5
	.byte	0x27
	.byte	0x1
	.byte	0x3
	.uleb128 0x11
	.byte	0x1
	.string	"Xcp_InitDaqQueue"
	.byte	0x1
	.byte	0x36
	.byte	0x1
	.byte	0x1
	.uaword	0x1296
	.uleb128 0x12
	.uaword	.LASF3
	.byte	0x1
	.byte	0x36
	.uaword	0x1e6
	.uleb128 0x12
	.uaword	.LASF4
	.byte	0x1
	.byte	0x36
	.uaword	0x1bb
	.uleb128 0x13
	.string	"daqListPtr"
	.byte	0x1
	.byte	0x3c
	.uaword	0x1065
	.byte	0
	.uleb128 0x10
	.string	"SchM_Exit_Xcp_SendingShort"
	.byte	0x5
	.byte	0x2e
	.byte	0x1
	.byte	0x3
	.uleb128 0x10
	.string	"SchM_Exit_Xcp_SendingLong"
	.byte	0x5
	.byte	0x3c
	.byte	0x1
	.byte	0x3
	.uleb128 0x14
	.byte	0x1
	.string	"Xcp_CreateQue"
	.byte	0x1
	.byte	0x20
	.byte	0x1
	.uaword	.LFB49
	.uaword	.LFE49
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1318
	.uleb128 0x15
	.uaword	.LASF5
	.byte	0x1
	.byte	0x20
	.uaword	0x1065
	.byte	0x1
	.byte	0x64
	.uleb128 0x16
	.string	"Size_u16"
	.byte	0x1
	.byte	0x20
	.uaword	0x1e6
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x17
	.uaword	0x1252
	.uaword	.LFB50
	.uaword	.LFE50
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1343
	.uleb128 0x18
	.uaword	0x126d
	.byte	0x1
	.byte	0x54
	.uleb128 0x18
	.uaword	0x1278
	.byte	0x1
	.byte	0x55
	.uleb128 0x19
	.uaword	0x1283
	.byte	0x1
	.byte	0x52
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.string	"Xcp_QueClearAll"
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.uaword	.LFB51
	.uaword	.LFE51
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x13c0
	.uleb128 0x15
	.uaword	.LASF4
	.byte	0x1
	.byte	0x5f
	.uaword	0x1bb
	.byte	0x1
	.byte	0x54
	.uleb128 0x1a
	.uaword	.LBB13
	.uaword	.LBE13
	.uleb128 0x1b
	.uaword	.LASF3
	.byte	0x1
	.byte	0x6b
	.uaword	0x1e6
	.uaword	.LLST0
	.uleb128 0x1c
	.uaword	0x1252
	.uaword	.LBB14
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x70
	.uleb128 0x1d
	.uaword	0x1278
	.uaword	.LLST1
	.uleb128 0x1d
	.uaword	0x126d
	.uaword	.LLST2
	.uleb128 0x1e
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x1f
	.uaword	0x1283
	.uaword	.LLST3
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.string	"Xcp_QueReadNext"
	.byte	0x1
	.byte	0x95
	.byte	0x1
	.uaword	.LFB52
	.uaword	.LFE52
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1402
	.uleb128 0x15
	.uaword	.LASF5
	.byte	0x1
	.byte	0x95
	.uaword	0x1065
	.byte	0x1
	.byte	0x64
	.uleb128 0x20
	.uaword	.LASF2
	.byte	0x1
	.byte	0x9b
	.uaword	0x1402
	.byte	0x3
	.byte	0x84
	.sleb128 4
	.byte	0x9f
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x88c
	.uleb128 0x14
	.byte	0x1
	.string	"Xcp_QueSetBack"
	.byte	0x1
	.byte	0xc9
	.byte	0x1
	.uaword	.LFB53
	.uaword	.LFE53
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1449
	.uleb128 0x15
	.uaword	.LASF5
	.byte	0x1
	.byte	0xc9
	.uaword	0x1065
	.byte	0x1
	.byte	0x64
	.uleb128 0x20
	.uaword	.LASF2
	.byte	0x1
	.byte	0xcf
	.uaword	0x1402
	.byte	0x3
	.byte	0x84
	.sleb128 4
	.byte	0x9f
	.byte	0
	.uleb128 0xc
	.uaword	0x10c1
	.uaword	0x1459
	.uleb128 0xd
	.uaword	0x760
	.byte	0
	.byte	0
	.uleb128 0x21
	.string	"Xcp_NoInit"
	.byte	0x4
	.uahalf	0x245
	.uaword	0x1449
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.uaword	0x11fb
	.uaword	0x147e
	.uleb128 0xd
	.uaword	0x760
	.byte	0
	.byte	0
	.uleb128 0x21
	.string	"Xcp_Cleared"
	.byte	0x4
	.uahalf	0x24c
	.uaword	0x146e
	.byte	0x1
	.byte	0x1
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0xa
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
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
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL4
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL5
	.uaword	.LVL8
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL4
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x3
	.byte	0x8f
	.sleb128 -24
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
	.uaword	.LFB49
	.uaword	.LFE49-.LFB49
	.uaword	.LFB50
	.uaword	.LFE50-.LFB50
	.uaword	.LFB51
	.uaword	.LFE51-.LFB51
	.uaword	.LFB52
	.uaword	.LFE52-.LFB52
	.uaword	.LFB53
	.uaword	.LFE53-.LFB53
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB14
	.uaword	.LBE14
	.uaword	.LBB17
	.uaword	.LBE17
	.uaword	0
	.uaword	0
	.uaword	.LFB49
	.uaword	.LFE49
	.uaword	.LFB50
	.uaword	.LFE50
	.uaword	.LFB51
	.uaword	.LFE51
	.uaword	.LFB52
	.uaword	.LFE52
	.uaword	.LFB53
	.uaword	.LFE53
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF3:
	.string	"daqListNo_u16"
.LASF0:
	.string	"Buffer_au8"
.LASF1:
	.string	"Length_u32"
.LASF2:
	.string	"DaqListQuePos"
.LASF5:
	.string	"DaqListPtr"
.LASF4:
	.string	"protLayerId"
	.extern	Xcp_Cleared,STT_OBJECT,340
	.extern	Xcp_NoInit,STT_OBJECT,76
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
