	.file	"Xcp_DaqEvent.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Xcp_DaqEvent,"ax",@progbits
	.align 1
	.global	Xcp_DaqEvent
	.type	Xcp_DaqEvent, @function
Xcp_DaqEvent:
.LFB49:
	.file 1 "bsw\\Xcp\\src\\Xcp_DaqEvent.c"
	.loc 1 195 0
.LVL0:
	.loc 1 225 0
	mul	%d3, %d5, 76
	movh.a	%a2, hi:Xcp_NoInit
	lea	%a2, [%a2] lo:Xcp_NoInit
	addsc.a	%a15, %a2, %d3, 0
	.loc 1 195 0
	sub.a	%SP, 40
.LCFI0:
	.loc 1 227 0
	ld.w	%d15, [%a15] 20
	.loc 1 225 0
	st.w	[%SP] 28, %d3
	.loc 1 227 0
	madd	%d6, %d15, %d4, 24
	.loc 1 225 0
	ld.hu	%d3, [%a15] 14
	.loc 1 227 0
	mov.a	%a12, %d6
	.loc 1 225 0
	st.w	[%SP] 32, %d3
.LVL1:
	.loc 1 245 0
	ld.bu	%d15, [%a12] 19
	ld.bu	%d2, [%a12] 18
	jeq	%d2, %d15, .L46
	.loc 1 436 0
	add	%d15, 1
	st.b	[%a12] 19, %d15
	.loc 1 220 0
	mov	%d2, 1
	ret
.L46:
	.loc 1 252 0
	ld.hu	%d13, [%a12] 12
	.loc 1 268 0
	ld.bu	%d2, [%a12] 16
	.loc 1 248 0
	mov	%d15, 1
	mov	%d11, %d4
	st.b	[%a12] 19, %d15
.LVL2:
	.loc 1 268 0
	add	%d4, %d2, %d13
.LVL3:
	mov.a	%a14, %d5
	.loc 1 259 0
	ld.hu	%d12, [%a12] 4
.LVL4:
	.loc 1 268 0
	jge	%d13, %d4, .L3
	ld.bu	%d15, [%a12] 22
	jz.t	%d15, 6, .L3
	.loc 1 284 0
	ld.hu	%d2, [%a12] 10
	addi	%d14, %d12, 1
	div	%e2, %d14, %d2
	ld.hu	%d15, [%a12] 6
	jeq	%d3, %d15, .L4
	add	%d15, %d13, 1
	mov.a	%a4, %d11
	mov.a	%a7, %d5
	mov.a	%a14, %d13
	mov	%d8, -1
	mov	%d10, -1
	st.w	[%SP] 36, %d15
.LBB14:
.LBB15:
	.loc 1 883 0
	mov.aa	%a13, %a15
.LBE15:
.LBE14:
.LBB17:
.LBB18:
.LBB19:
	.loc 1 593 0
	lea	%a6, [%a15] 24
	lea	%a5, [%a15] 28
	mov	%d13, 0
	mov	%d5, %d4
.LVL5:
.L5:
	extr.u	%d3, %d13, 0, 16
.LBE19:
.LBE18:
.LBE17:
	.loc 1 287 0
	ld.w	%d9, [%a12]0
.LBB24:
.LBB25:
	.loc 1 809 0
	ld.w	%d15, [%SP] 32
	mov.d	%d6, %a14
	madd	%d9, %d9, %d12, %d15
	mov	%d2, %d3
	add	%d2, %d6
	extr.u	%d11, %d2, 0, 16
.LVL6:
	mov.d	%d2, %a14
.LVL7:
	mov.a	%a2, %d9
	add	%d2, %d13
	st.w	[%SP] 24, %d3
	st.b	[%a2+]1, %d2
	add	%d9, 1
.LVL8:
.LBE25:
.LBE24:
	.loc 1 302 0
	jeq	%d6, %d11, .L47
.LVL9:
.L6:
.LBB26:
.LBB22:
.LBB20:
	.loc 1 593 0
	ld.w	%d15, [%a6]0
	ld.a	%a3, [%a5]0
	madd	%d2, %d15, %d11, 6
	.loc 1 600 0
	mov	%d4, %d8
	.loc 1 593 0
	mov.d	%d6, %a3
	mov.a	%a15, %d2
	.loc 1 594 0
	ld.a	%a3, [%a13] 32
	.loc 1 593 0
	ld.hu	%d15, [%a15]0
	.loc 1 597 0
	ld.bu	%d2, [%a15] 4
	.loc 1 593 0
	madd	%d3, %d6, %d15, 4
.LVL10:
	.loc 1 594 0
	addsc.a	%a2, %a3, %d15, 0
.LVL11:
	.loc 1 600 0
	jz	%d2, .L9
.LVL12:
	mov.d	%d6, %a2
	addsc.a	%a15, %a2, %d2, 0
	not	%d6
	addsc.a	%a15, %a15, %d6, 0
	mov.a	%a3, %d3
	mov.d	%d15, %a4
.LVL13:
.L14:
	.loc 1 607 0
	ld.w	%d4, [%a3]0
.LVL14:
	.loc 1 608 0
	ld.bu	%d2, [%a2]0
.LVL15:
	.loc 1 610 0
	andn	%d1, %d4, ~(-4)
	mov.d	%d3, %a15
	mov.a	%a4, %d15
	jeq	%d1, %d8, .L15
.LVL16:
	.loc 1 614 0
	mov.a	%a4, %d1
	mov.d	%d3, %a15
	ld.w	%d10, [%a4]0
.LVL17:
	mov.a	%a4, %d15
.LVL18:
.L15:
	.loc 1 641 0
	and	%d15, %d4, 3
	sh	%d7, %d15, 3
.LVL19:
	.loc 1 642 0
	jz	%d2, .L32
.LVL20:
.L48:
	and	%d6, %d9, 255
	add	%d2, %d6
	and	%d0, %d2, 255
	mov	%d8, %d3
.L12:
.LVL21:
	sub	%d15, %d9, %d6
	madd	%d15, %d7, %d15, 8
	.loc 1 646 0
	mov.a	%a15, %d9
	add	%d9, 1
.LVL22:
	extr	%d15, %d15, 0, 8
	rsub	%d2, %d15, 0
	sh	%d2, %d10, %d2
	and	%d15, %d9, 255
	st.b	[%a15+]1, %d2
.LVL23:
	sub	%d2, %d0, %d15
	sub	%d15, %d6
	madd	%d15, %d7, %d15, 8
	and	%d2, %d2, 255
.LVL24:
	.loc 1 642 0
	ne	%d3, %d2, 0
	extr	%d15, %d15, 0, 8
	and.lt	%d3, %d15, 25
	jnz	%d3, .L12
	mov	%d3, %d8
	.loc 1 658 0
	jz	%d2, .L32
	.loc 1 668 0
	andn	%d15, %d4, ~(-4)
	.loc 1 670 0
	mov.a	%a15, %d15
	.loc 1 668 0
	add	%d4, %d15, 4
.LVL25:
	.loc 1 641 0
	and	%d15, %d4, 3
	.loc 1 670 0
	ld.w	%d10, [%a15] 4
.LVL26:
	.loc 1 641 0
	sh	%d7, %d15, 3
.LVL27:
	.loc 1 642 0
	jnz	%d2, .L48
.LVL28:
.L32:
	mov.a	%a15, %d3
	mov.d	%d15, %a4
	.loc 1 661 0
	add.a	%a3, 4
.LVL29:
	.loc 1 662 0
	add.a	%a2, 1
.LVL30:
	.loc 1 610 0
	mov	%d8, %d1
	loop	%a15, .L14
.LVL31:
.L9:
.LBE20:
.LBE22:
.LBE26:
	.loc 1 347 0
	ld.hu	%d2, [%a12] 10
	.loc 1 355 0
	extr.u	%d14, %d14, 0, 16
	.loc 1 347 0
	addi	%d3, %d2, -1
	.loc 1 355 0
	ne	%d3, %d12, %d3
	sel	%d12, %d3, %d14, 0
	ld.w	%d15, [%SP] 24
	ld.w	%d3, [%SP] 36
.LBB27:
.LBB23:
.LBB21:
	.loc 1 679 0
	andn	%d8, %d4, ~(-4)
.LVL32:
	add	%d15, %d3
.LBE21:
.LBE23:
.LBE27:
	.loc 1 268 0
	extr.u	%d15, %d15, 0, 16
	jge	%d15, %d5, .L44
	.loc 1 268 0 is_stmt 0 discriminator 3
	ld.bu	%d15, [%a12] 22
	jz.t	%d15, 6, .L44
	.loc 1 284 0 is_stmt 1
	addi	%d14, %d12, 1
	div	%e2, %d14, %d2
	ld.hu	%d15, [%a12] 6
	add	%d13, 1
	jne	%d3, %d15, .L5
	mov.aa	%a14, %a7
.LVL33:
.L4:
	.loc 1 372 0
	ld.bu	%d15, [%a12] 22
	jz.t	%d15, 6, .L22
	.loc 1 400 0
	ld.w	%d6, [%SP] 28
	movh.a	%a2, hi:Xcp_NoInit
	lea	%a2, [%a2] lo:Xcp_NoInit
	addsc.a	%a15, %a2, %d6, 0
	mov	%d15, 1
	st.b	[%a15] 72, %d15
	.loc 1 402 0
	ld.bu	%d15, [%a15] 1
	movh.a	%a15, hi:Xcp_PlCfgConst
	mov.d	%d3, %a15
	addi	%d2, %d3, lo:Xcp_PlCfgConst
	madd	%d6, %d2, %d15, 44
	mov.a	%a15, %d6
	ld.bu	%d15, [%a15] 30
	jeq	%d15, 2, .L20
.L22:
	.loc 1 362 0
	mov	%d2, 3
.LVL34:
	ret
.LVL35:
.L47:
	.loc 1 302 0 discriminator 1
	ld.bu	%d2, [%a12] 22
	jz.t	%d2, 4, .L6
.LVL36:
.LBB28:
.LBB16:
	.loc 1 877 0
	st.w	[%SP] 20, %d5
	st.a	[%SP] 8, %a4
	st.a	[%SP] 12, %a5
	st.a	[%SP] 16, %a6
	st.a	[%SP] 4, %a7
	call	XcpAppl_GetTimestamp
.LVL37:
	.loc 1 883 0
	movh.a	%a2, hi:Xcp_PlCfgConst
	lea	%a2, [%a2] lo:Xcp_PlCfgConst
	ld.bu	%d3, [%a13] 1
	mov.d	%d6, %a2
	ld.w	%d5, [%SP] 20
	madd	%d6, %d6, %d3, 44
	ld.a	%a4, [%SP] 8
	ld.a	%a5, [%SP] 12
	mov.a	%a15, %d6
	ld.a	%a6, [%SP] 16
	ld.bu	%d3, [%a15] 28
	ld.a	%a7, [%SP] 4
	jz	%d3, .L6
	mov.a	%a2, %d9
	mov	%d15, 0
.LVL38:
.L8:
	and	%d4, %d15, 255
	.loc 1 887 0
	sh	%d4, 3
	rsub	%d3, %d4, 0
	sh	%d3, %d2, %d3
	.loc 1 883 0
	movh.a	%a3, hi:Xcp_PlCfgConst
	.loc 1 887 0
	st.b	[%a2+]1, %d3
.LVL39:
	.loc 1 883 0
	lea	%a3, [%a3] lo:Xcp_PlCfgConst
	ld.bu	%d4, [%a13] 1
	mov.d	%d6, %a3
	add	%d15, 1
.LVL40:
	madd	%d6, %d6, %d4, 44
	extr	%d3, %d15, 0, 8
	mov.a	%a15, %d6
	ld.bu	%d4, [%a15] 28
	jlt	%d3, %d4, .L8
	mov.d	%d9, %a2
.LVL41:
	j	.L6
.LVL42:
.L44:
	mov.d	%d11, %a4
.LVL43:
	mov.aa	%a14, %a7
.LVL44:
.L3:
.LBE16:
.LBE28:
	.loc 1 372 0
	ld.bu	%d15, [%a12] 22
	jz.t	%d15, 6, .L49
	.loc 1 393 0
	mov.d	%d5, %a14
	.loc 1 378 0
	st.h	[%a12] 4, %d12
	.loc 1 393 0
	mov	%d4, %d11
	call	Xcp_SendDaq
.LVL45:
	mov	%d2, 1
	ret
.LVL46:
.L20:
	.loc 1 420 0
	mov.d	%d5, %a14
	mov	%d4, 6
	call	Xcp_SendEv_Code
.LVL47:
	.loc 1 362 0
	mov	%d2, 3
	ret
.LVL48:
.L49:
	.loc 1 372 0
	mov	%d2, 1
	ret
.LFE49:
	.size	Xcp_DaqEvent, .-Xcp_DaqEvent
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
	.uleb128 0x28
	.align 2
.LEFDE0:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 4 ".\\output\\inc/..\\..\\bsw\\ComStack\\ComStack_Cfg.h"
	.file 5 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Types.h"
	.file 6 ".\\output\\inc/..\\..\\bsw\\Xcp\\Xcp_Cfg.h"
	.file 7 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Priv.h"
	.file 8 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Cbk.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x18e5
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Xcp\\src\\Xcp_DaqEvent.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x38
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.string	"sint8"
	.byte	0x2
	.byte	0x4c
	.uaword	0x1b6
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x2
	.string	"uint8"
	.byte	0x2
	.byte	0x51
	.uaword	0x1d2
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x2
	.string	"uint16"
	.byte	0x2
	.byte	0x5b
	.uaword	0x1fe
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x2
	.string	"uint32"
	.byte	0x2
	.byte	0x6a
	.uaword	0x23a
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.string	"double"
	.uleb128 0x2
	.string	"boolean"
	.byte	0x2
	.byte	0x80
	.uaword	0x1d2
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.string	"uint8_least"
	.byte	0x2
	.byte	0x8a
	.uaword	0x2a5
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x2
	.string	"Std_ReturnType"
	.byte	0x3
	.byte	0x60
	.uaword	0x1c5
	.uleb128 0x2
	.string	"PduLengthType"
	.byte	0x4
	.byte	0x30
	.uaword	0x1f0
	.uleb128 0x4
	.byte	0xc
	.byte	0x4
	.byte	0x39
	.uaword	0x32d
	.uleb128 0x5
	.string	"SduDataPtr"
	.byte	0x4
	.byte	0x3b
	.uaword	0x32d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"MetaDataPtr"
	.byte	0x4
	.byte	0x3c
	.uaword	0x32d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"SduLength"
	.byte	0x4
	.byte	0x3d
	.uaword	0x2d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x1c5
	.uleb128 0x2
	.string	"PduInfoType"
	.byte	0x4
	.byte	0x3e
	.uaword	0x2e5
	.uleb128 0x7
	.byte	0x1
	.byte	0x5
	.byte	0xf9
	.uaword	0x3c1
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
	.uleb128 0x2
	.string	"Xcp_State_t"
	.byte	0x5
	.byte	0xff
	.uaword	0x346
	.uleb128 0x9
	.string	"Xcp_AddrValue"
	.byte	0x5
	.uahalf	0x1be
	.uaword	0x22c
	.uleb128 0xa
	.byte	0x8
	.byte	0x5
	.uahalf	0x1c1
	.uaword	0x41e
	.uleb128 0xb
	.string	"AddrValue"
	.byte	0x5
	.uahalf	0x1c3
	.uaword	0x3d4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"Extension"
	.byte	0x5
	.uahalf	0x1c4
	.uaword	0x1c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x9
	.string	"Xcp_AddrType_t"
	.byte	0x5
	.uahalf	0x1c5
	.uaword	0x3ea
	.uleb128 0x9
	.string	"Xcp_PduIdType"
	.byte	0x5
	.uahalf	0x1c7
	.uaword	0x1c5
	.uleb128 0xc
	.byte	0x1
	.byte	0x5
	.uahalf	0x1e9
	.uaword	0x57e
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
	.byte	0x5
	.uahalf	0x1f5
	.uaword	0x44b
	.uleb128 0xc
	.byte	0x1
	.byte	0x5
	.uahalf	0x1f9
	.uaword	0x606
	.uleb128 0x8
	.string	"XCP_DAQ_NO_OVERLOAD_INDICATION"
	.sleb128 0
	.uleb128 0x8
	.string	"XCP_DAQ_OVERLOAD_INDICATION_PID"
	.sleb128 1
	.uleb128 0x8
	.string	"XCP_DAQ_OVERLOAD_INDICATION_EVENT"
	.sleb128 2
	.byte	0
	.uleb128 0x9
	.string	"Xcp_Overload_t"
	.byte	0x5
	.uahalf	0x1fd
	.uaword	0x595
	.uleb128 0xc
	.byte	0x1
	.byte	0x5
	.uahalf	0x203
	.uaword	0x6e2
	.uleb128 0x8
	.string	"XCP_IDENTIFICATION_FIELD_TYPE_ABSOLUTE"
	.sleb128 1
	.uleb128 0x8
	.string	"XCP_IDENTIFICATION_FIELD_TYPE_RELATIVE_BYTE"
	.sleb128 2
	.uleb128 0x8
	.string	"XCP_IDENTIFICATION_FIELD_TYPE_RELATIVE_WORD"
	.sleb128 3
	.uleb128 0x8
	.string	"XCP_IDENTIFICATION_FIELD_TYPE_RELATIVE_WORD_ALIGNED"
	.sleb128 4
	.byte	0
	.uleb128 0x9
	.string	"Xcp_IdField_t"
	.byte	0x5
	.uahalf	0x208
	.uaword	0x61d
	.uleb128 0xc
	.byte	0x1
	.byte	0x5
	.uahalf	0x20c
	.uaword	0x7ec
	.uleb128 0x8
	.string	"XCP_ODT_OPTIMIZATION_OM_DEFAULT"
	.sleb128 0
	.uleb128 0x8
	.string	"XCP_ODT_OPTIMIZATION_OM_ODT_TYPE_16"
	.sleb128 1
	.uleb128 0x8
	.string	"XCP_ODT_OPTIMIZATION_OM_ODT_TYPE_32"
	.sleb128 2
	.uleb128 0x8
	.string	"XCP_ODT_OPTIMIZATION_OM_ODT_TYPE_64"
	.sleb128 3
	.uleb128 0x8
	.string	"XCP_ODT_OPTIMIZATION_OM_ODT_TYPE_ALIGNMENT"
	.sleb128 4
	.uleb128 0x8
	.string	"XCP_ODT_OPTIMIZATION_OM_MAX_ENTRY_SIZE"
	.sleb128 5
	.byte	0
	.uleb128 0x9
	.string	"Xcp_OdtOptimizationType_t"
	.byte	0x5
	.uahalf	0x213
	.uaword	0x6f8
	.uleb128 0xc
	.byte	0x1
	.byte	0x5
	.uahalf	0x217
	.uaword	0x873
	.uleb128 0x8
	.string	"XCP_CONSISTENCY_ODT"
	.sleb128 0
	.uleb128 0x8
	.string	"XCP_CONSISTENCY_DAQ"
	.sleb128 1
	.uleb128 0x8
	.string	"XCP_CONSISTENCY_EVENT"
	.sleb128 2
	.uleb128 0x8
	.string	"XCP_CONSISTENCY_NONE"
	.sleb128 3
	.byte	0
	.uleb128 0x9
	.string	"Xcp_Consistency_t"
	.byte	0x5
	.uahalf	0x21c
	.uaword	0x80e
	.uleb128 0xc
	.byte	0x1
	.byte	0x5
	.uahalf	0x220
	.uaword	0x915
	.uleb128 0x8
	.string	"XCP_TIMESTAMP_TYPE_NO_TIME_STAMP"
	.sleb128 0
	.uleb128 0x8
	.string	"XCP_TIMESTAMP_TYPE_ONE_BYTE"
	.sleb128 1
	.uleb128 0x8
	.string	"XCP_TIMESTAMP_TYPE_TWO_BYTE"
	.sleb128 2
	.uleb128 0x8
	.string	"XCP_TIMESTAMP_TYPE_FOUR_BYTE"
	.sleb128 4
	.byte	0
	.uleb128 0x9
	.string	"Xcp_Timestamp_t"
	.byte	0x5
	.uahalf	0x225
	.uaword	0x88d
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x4
	.byte	0x2c
	.byte	0x6
	.byte	0xaa
	.uaword	0xab2
	.uleb128 0x5
	.string	"TLTransmit_pfct"
	.byte	0x6
	.byte	0xac
	.uaword	0xad7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"TLInit_pfct"
	.byte	0x6
	.byte	0xad
	.uaword	0xaee
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"TLConnect_pfct"
	.byte	0x6
	.byte	0xae
	.uaword	0xb00
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"TLDisconnect_pfct"
	.byte	0x6
	.byte	0xaf
	.uaword	0xb16
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"TLTransportLayerCmd_pfct"
	.byte	0x6
	.byte	0xb0
	.uaword	0xb38
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x5
	.string	"TLGetTxPduId_pfct"
	.byte	0x6
	.byte	0xb1
	.uaword	0xb58
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.uaword	.LASF0
	.byte	0x6
	.byte	0xb5
	.uaword	0x1c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.uaword	.LASF1
	.byte	0x6
	.byte	0xb6
	.uaword	0x1f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0x5
	.string	"TimestampType_en"
	.byte	0x6
	.byte	0xb7
	.uaword	0x915
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x5
	.string	"IdFieldType_en"
	.byte	0x6
	.byte	0xb8
	.uaword	0x6e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1d
	.uleb128 0x5
	.string	"OverloadType_en"
	.byte	0x6
	.byte	0xb9
	.uaword	0x606
	.byte	0x2
	.byte	0x23
	.uleb128 0x1e
	.uleb128 0x5
	.string	"OdtOptimizationType_en"
	.byte	0x6
	.byte	0xba
	.uaword	0x7ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x1f
	.uleb128 0x5
	.string	"Consistency_en"
	.byte	0x6
	.byte	0xbb
	.uaword	0x873
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x5
	.string	"PdRam_u32"
	.byte	0x6
	.byte	0xbc
	.uaword	0x22c
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x5
	.string	"EdRam_u32"
	.byte	0x6
	.byte	0xbd
	.uaword	0x22c
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.uaword	0x2ba
	.uaword	0xacc
	.uleb128 0xf
	.uaword	0xacc
	.uleb128 0xf
	.uaword	0x1c5
	.uleb128 0xf
	.uaword	0x435
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0xad2
	.uleb128 0x10
	.uaword	0x333
	.uleb128 0x6
	.byte	0x4
	.uaword	0xab2
	.uleb128 0x11
	.byte	0x1
	.uaword	0xaee
	.uleb128 0xf
	.uaword	0x1c5
	.uleb128 0xf
	.uaword	0x1c5
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0xadd
	.uleb128 0x11
	.byte	0x1
	.uaword	0xb00
	.uleb128 0xf
	.uaword	0x1c5
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0xaf4
	.uleb128 0xe
	.byte	0x1
	.uaword	0x2ba
	.uaword	0xb16
	.uleb128 0xf
	.uaword	0x1c5
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0xb06
	.uleb128 0x11
	.byte	0x1
	.uaword	0xb32
	.uleb128 0xf
	.uaword	0xacc
	.uleb128 0xf
	.uaword	0xb32
	.uleb128 0xf
	.uaword	0x1c5
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x333
	.uleb128 0x6
	.byte	0x4
	.uaword	0xb1c
	.uleb128 0xe
	.byte	0x1
	.uaword	0x435
	.uaword	0xb58
	.uleb128 0xf
	.uaword	0x1c5
	.uleb128 0xf
	.uaword	0x1f0
	.uleb128 0xf
	.uaword	0x1c5
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0xb3e
	.uleb128 0x2
	.string	"Xcp_PL_TL_Cfg_t"
	.byte	0x6
	.byte	0xbe
	.uaword	0x939
	.uleb128 0x7
	.byte	0x1
	.byte	0x6
	.byte	0xc3
	.uaword	0xbbf
	.uleb128 0x8
	.string	"XCP_RAMSECTION_INVALID"
	.sleb128 0
	.uleb128 0x8
	.string	"XCP_RAMSECTION_PD"
	.sleb128 1
	.uleb128 0x8
	.string	"XCP_RAMSECTION_ED"
	.sleb128 2
	.byte	0
	.uleb128 0x2
	.string	"Xcp_RamSectionType_t"
	.byte	0x6
	.byte	0xc7
	.uaword	0xb75
	.uleb128 0x4
	.byte	0xc
	.byte	0x6
	.byte	0xc9
	.uaword	0xc2c
	.uleb128 0xd
	.uaword	.LASF2
	.byte	0x6
	.byte	0xcb
	.uaword	0x32d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"DaqRamTotalSize_u32"
	.byte	0x6
	.byte	0xcc
	.uaword	0x22c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"RamSectionType_en"
	.byte	0x6
	.byte	0xcd
	.uaword	0xbbf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x2
	.string	"Xcp_DaqRamSection_Cfg_t"
	.byte	0x6
	.byte	0xce
	.uaword	0xbdb
	.uleb128 0x4
	.byte	0x10
	.byte	0x6
	.byte	0xec
	.uaword	0xd3b
	.uleb128 0x5
	.string	"EventChannelDirection_u8"
	.byte	0x6
	.byte	0xef
	.uaword	0x1c5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EventChannelNameLength_u8"
	.byte	0x6
	.byte	0xf0
	.uaword	0x1c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x5
	.string	"EventChannelTimeCycle_u8"
	.byte	0x6
	.byte	0xf1
	.uaword	0x1c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x5
	.string	"EventChannelTimeUnit_u8"
	.byte	0x6
	.byte	0xf2
	.uaword	0x1c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x5
	.string	"EventChannelPriority_u8"
	.byte	0x6
	.byte	0xf3
	.uaword	0x1c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"EventChannelName"
	.byte	0x6
	.byte	0xf4
	.uaword	0xd3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"ScheduleCallFlag_u8"
	.byte	0x6
	.byte	0xf6
	.uaword	0x1c5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0xd41
	.uleb128 0x10
	.uaword	0xd46
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x2
	.string	"Xcp_EventChannel_Cfg_t"
	.byte	0x6
	.byte	0xf7
	.uaword	0xc4b
	.uleb128 0x4
	.byte	0x68
	.byte	0x6
	.byte	0xfb
	.uaword	0xdb6
	.uleb128 0xb
	.string	"TlCfg"
	.byte	0x6
	.uahalf	0x100
	.uaword	0xdb6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"DaqRamCfg"
	.byte	0x6
	.uahalf	0x104
	.uaword	0xdc6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xb
	.string	"EventChannelCfg"
	.byte	0x6
	.uahalf	0x10b
	.uaword	0xdd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0
	.uleb128 0x12
	.uaword	0xb5e
	.uaword	0xdc6
	.uleb128 0x13
	.uaword	0x92d
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0xc2c
	.uaword	0xdd6
	.uleb128 0x13
	.uaword	0x92d
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0xd4e
	.uaword	0xde6
	.uleb128 0x13
	.uaword	0x92d
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.string	"Xcp_PlCfgConst_t"
	.byte	0x6
	.uahalf	0x10c
	.uaword	0xd6c
	.uleb128 0x10
	.uaword	0x1c5
	.uleb128 0x6
	.byte	0x4
	.uaword	0x1f0
	.uleb128 0x6
	.byte	0x4
	.uaword	0xdff
	.uleb128 0xa
	.byte	0x8
	.byte	0x7
	.uahalf	0x10d
	.uaword	0xe75
	.uleb128 0x14
	.uaword	.LASF3
	.byte	0x7
	.uahalf	0x10f
	.uaword	0x1f0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"ReadPos_u16"
	.byte	0x7
	.uahalf	0x110
	.uaword	0x1f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.string	"ReadPos_OdtNum_u16"
	.byte	0x7
	.uahalf	0x111
	.uaword	0x1f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"QueSize_u16"
	.byte	0x7
	.uahalf	0x112
	.uaword	0x1f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0
	.uleb128 0x9
	.string	"Xcp_Que_t"
	.byte	0x7
	.uahalf	0x113
	.uaword	0xe10
	.uleb128 0xa
	.byte	0x14
	.byte	0x7
	.uahalf	0x116
	.uaword	0xf2f
	.uleb128 0xb
	.string	"XcpState_en"
	.byte	0x7
	.uahalf	0x118
	.uaword	0x3c1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"ConnectedTlId_u8"
	.byte	0x7
	.uahalf	0x119
	.uaword	0x1c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xb
	.string	"ResourceProtStatus_u8"
	.byte	0x7
	.uahalf	0x11a
	.uaword	0x1c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.string	"Mta"
	.byte	0x7
	.uahalf	0x11b
	.uaword	0x41e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x14
	.uaword	.LASF1
	.byte	0x7
	.uahalf	0x11c
	.uaword	0x1f0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.string	"MaxDtoAligned_u16"
	.byte	0x7
	.uahalf	0x11d
	.uaword	0x1f0
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x14
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x11e
	.uaword	0x1c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x9
	.string	"Xcp_Session_t"
	.byte	0x7
	.uahalf	0x126
	.uaword	0xe87
	.uleb128 0xa
	.byte	0x8
	.byte	0x7
	.uahalf	0x17d
	.uaword	0xfb8
	.uleb128 0xb
	.string	"OdtEntryPos_u16"
	.byte	0x7
	.uahalf	0x17f
	.uaword	0x1f0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"OdtEntryMax_u16"
	.byte	0x7
	.uahalf	0x180
	.uaword	0x1f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.string	"DaqListNum_u16"
	.byte	0x7
	.uahalf	0x181
	.uaword	0x1f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"AbsOdtNum_u16"
	.byte	0x7
	.uahalf	0x182
	.uaword	0x1f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0
	.uleb128 0x9
	.string	"Xcp_SelectedOdtEntry_t"
	.byte	0x7
	.uahalf	0x183
	.uaword	0xf45
	.uleb128 0xa
	.byte	0x6
	.byte	0x7
	.uahalf	0x186
	.uaword	0x1048
	.uleb128 0xb
	.string	"OdtEntryFirst_u16"
	.byte	0x7
	.uahalf	0x18b
	.uaword	0x1f0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"Length_u16"
	.byte	0x7
	.uahalf	0x18c
	.uaword	0x1f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.string	"OdtEntryCnt_u8"
	.byte	0x7
	.uahalf	0x18d
	.uaword	0x1c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"CopyRoutine_u8"
	.byte	0x7
	.uahalf	0x18e
	.uaword	0x1c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x9
	.string	"Xcp_Odt_t"
	.byte	0x7
	.uahalf	0x18f
	.uaword	0xfd7
	.uleb128 0xa
	.byte	0x18
	.byte	0x7
	.uahalf	0x19d
	.uaword	0x1173
	.uleb128 0xb
	.string	"DaqListQue_p"
	.byte	0x7
	.uahalf	0x19f
	.uaword	0x32d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"DaqListQuePos"
	.byte	0x7
	.uahalf	0x1a0
	.uaword	0xe75
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x14
	.uaword	.LASF4
	.byte	0x7
	.uahalf	0x1a1
	.uaword	0x1f0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.string	"EventChannelNum_u16"
	.byte	0x7
	.uahalf	0x1a2
	.uaword	0x1f0
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x14
	.uaword	.LASF5
	.byte	0x7
	.uahalf	0x1a3
	.uaword	0x1c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"XcpTxPduId"
	.byte	0x7
	.uahalf	0x1a7
	.uaword	0x435
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0xb
	.string	"Prescaler_u8"
	.byte	0x7
	.uahalf	0x1a8
	.uaword	0x1c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0xb
	.string	"CycleCnt_u8"
	.byte	0x7
	.uahalf	0x1a9
	.uaword	0x1c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x13
	.uleb128 0xb
	.string	"Priority_u8"
	.byte	0x7
	.uahalf	0x1aa
	.uaword	0x1c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.string	"Flags_u8"
	.byte	0x7
	.uahalf	0x1ab
	.uaword	0x1c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.uleb128 0xb
	.string	"Mode_u8"
	.byte	0x7
	.uahalf	0x1ac
	.uaword	0x1173
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0xb
	.string	"CurrentlyRunning_b"
	.byte	0x7
	.uahalf	0x1ad
	.uaword	0x1178
	.byte	0x2
	.byte	0x23
	.uleb128 0x17
	.byte	0
	.uleb128 0x15
	.uaword	0x1c5
	.uleb128 0x15
	.uaword	0x277
	.uleb128 0x9
	.string	"Xcp_DaqList_t"
	.byte	0x7
	.uahalf	0x1b4
	.uaword	0x105a
	.uleb128 0xa
	.byte	0x38
	.byte	0x7
	.uahalf	0x1b7
	.uaword	0x132c
	.uleb128 0xb
	.string	"DaqList_p"
	.byte	0x7
	.uahalf	0x1ba
	.uaword	0x132c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"Odt_p"
	.byte	0x7
	.uahalf	0x1bb
	.uaword	0x1332
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"OdtEntryAddress_p"
	.byte	0x7
	.uahalf	0x1bc
	.uaword	0x1338
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"OdtEntrySize_p"
	.byte	0x7
	.uahalf	0x1c0
	.uaword	0x32d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.string	"PriorityList_p"
	.byte	0x7
	.uahalf	0x1c1
	.uaword	0xe04
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"DaqQue_p"
	.byte	0x7
	.uahalf	0x1c2
	.uaword	0x32d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.string	"DaqListCnt_u16"
	.byte	0x7
	.uahalf	0x1c5
	.uaword	0x1f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.string	"OdtCnt_u16"
	.byte	0x7
	.uahalf	0x1c6
	.uaword	0x1f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0xb
	.string	"OdtEntryCnt_u16"
	.byte	0x7
	.uahalf	0x1c7
	.uaword	0x1f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.string	"SelectedOdtEntry"
	.byte	0x7
	.uahalf	0x1cc
	.uaword	0xfb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1e
	.uleb128 0x14
	.uaword	.LASF2
	.byte	0x7
	.uahalf	0x1cf
	.uaword	0x32d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.string	"DaqRamSize_u32"
	.byte	0x7
	.uahalf	0x1d0
	.uaword	0x22c
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xb
	.string	"DaqListSendingCnt_u16"
	.byte	0x7
	.uahalf	0x1d3
	.uaword	0x1f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.string	"DaqListSending_u16"
	.byte	0x7
	.uahalf	0x1d4
	.uaword	0x1f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x32
	.uleb128 0xb
	.string	"OverloadOccurred_b"
	.byte	0x7
	.uahalf	0x1d6
	.uaword	0x277
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.string	"DaqState_en"
	.byte	0x7
	.uahalf	0x1d8
	.uaword	0x57e
	.byte	0x2
	.byte	0x23
	.uleb128 0x35
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x117d
	.uleb128 0x6
	.byte	0x4
	.uaword	0x1048
	.uleb128 0x6
	.byte	0x4
	.uaword	0x3d4
	.uleb128 0x9
	.string	"Xcp_DaqConfig_t"
	.byte	0x7
	.uahalf	0x1d9
	.uaword	0x1193
	.uleb128 0xa
	.byte	0x4c
	.byte	0x7
	.uahalf	0x206
	.uaword	0x1388
	.uleb128 0xb
	.string	"Session"
	.byte	0x7
	.uahalf	0x208
	.uaword	0xf2f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"DaqConfig"
	.byte	0x7
	.uahalf	0x20d
	.uaword	0x133e
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0
	.uleb128 0x9
	.string	"Xcp_NoInit_t"
	.byte	0x7
	.uahalf	0x20f
	.uaword	0x1356
	.uleb128 0x16
	.string	"Xcp_PutIdField"
	.byte	0x1
	.uahalf	0x31d
	.byte	0x1
	.uaword	0x32d
	.byte	0x3
	.uaword	0x13f1
	.uleb128 0x17
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x31d
	.uaword	0x32d
	.uleb128 0x17
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x31d
	.uaword	0x1f0
	.uleb128 0x18
	.string	"daqListNo"
	.byte	0x1
	.uahalf	0x31d
	.uaword	0x1f0
	.uleb128 0x17
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x31d
	.uaword	0x1c5
	.byte	0
	.uleb128 0x16
	.string	"Xcp_CopyOdt"
	.byte	0x1
	.uahalf	0x1c8
	.byte	0x1
	.uaword	0x32d
	.byte	0x3
	.uaword	0x1448
	.uleb128 0x17
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x1c8
	.uaword	0x32d
	.uleb128 0x17
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x1c8
	.uaword	0x1f0
	.uleb128 0x17
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x1c8
	.uaword	0x1448
	.uleb128 0x17
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x1c8
	.uaword	0x1448
	.uleb128 0x17
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x1c8
	.uaword	0x1c5
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x22c
	.uleb128 0x16
	.string	"Xcp_PutTimestamp"
	.byte	0x1
	.uahalf	0x367
	.byte	0x1
	.uaword	0x32d
	.byte	0x3
	.uaword	0x14a2
	.uleb128 0x17
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x367
	.uaword	0x32d
	.uleb128 0x17
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x367
	.uaword	0x1c5
	.uleb128 0x19
	.string	"timestamp"
	.byte	0x1
	.uahalf	0x36a
	.uaword	0x22c
	.uleb128 0x19
	.string	"i"
	.byte	0x1
	.uahalf	0x36b
	.uaword	0x1a9
	.byte	0
	.uleb128 0x16
	.string	"Xcp_CopyOdtEntries_Safe"
	.byte	0x1
	.uahalf	0x23f
	.byte	0x1
	.uaword	0x32d
	.byte	0x3
	.uaword	0x15b4
	.uleb128 0x17
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x23f
	.uaword	0x32d
	.uleb128 0x17
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x23f
	.uaword	0x1f0
	.uleb128 0x17
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x23f
	.uaword	0x1448
	.uleb128 0x17
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x23f
	.uaword	0x1448
	.uleb128 0x17
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x23f
	.uaword	0x1c5
	.uleb128 0x19
	.string	"lastReadAddress"
	.byte	0x1
	.uahalf	0x242
	.uaword	0x22c
	.uleb128 0x19
	.string	"lastReadValue"
	.byte	0x1
	.uahalf	0x243
	.uaword	0x22c
	.uleb128 0x19
	.string	"OdtEntryAdrPtr"
	.byte	0x1
	.uahalf	0x244
	.uaword	0x15b4
	.uleb128 0x19
	.string	"OdtEntrySizePtr"
	.byte	0x1
	.uahalf	0x245
	.uaword	0xe0a
	.uleb128 0x19
	.string	"OdtEntryCnt"
	.byte	0x1
	.uahalf	0x246
	.uaword	0x292
	.uleb128 0x19
	.string	"address"
	.byte	0x1
	.uahalf	0x247
	.uaword	0x3d4
	.uleb128 0x19
	.string	"numBytesToReadAtAddress"
	.byte	0x1
	.uahalf	0x248
	.uaword	0x1c5
	.uleb128 0x19
	.string	"index"
	.byte	0x1
	.uahalf	0x249
	.uaword	0x1a9
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x15ba
	.uleb128 0x10
	.uaword	0x3d4
	.uleb128 0x1a
	.byte	0x1
	.string	"Xcp_DaqEvent"
	.byte	0x1
	.byte	0xc2
	.byte	0x1
	.uaword	0x1c5
	.uaword	.LFB49
	.uaword	.LFE49
	.uaword	.LLST0
	.byte	0x1
	.uaword	0x1841
	.uleb128 0x1b
	.string	"daqListNo_u16"
	.byte	0x1
	.byte	0xc2
	.uaword	0x1f0
	.uaword	.LLST1
	.uleb128 0x1c
	.uaword	.LASF8
	.byte	0x1
	.byte	0xc2
	.uaword	0x1c5
	.uaword	.LLST2
	.uleb128 0x1d
	.string	"daqListPtr"
	.byte	0x1
	.byte	0xc8
	.uaword	0x132c
	.uaword	.LLST3
	.uleb128 0x1e
	.uaword	.LASF6
	.byte	0x1
	.byte	0xc9
	.uaword	0x32d
	.uaword	.LLST4
	.uleb128 0x1d
	.string	"lastAddress"
	.byte	0x1
	.byte	0xca
	.uaword	0x22c
	.uaword	.LLST5
	.uleb128 0x1d
	.string	"lastValue"
	.byte	0x1
	.byte	0xcb
	.uaword	0x22c
	.uaword	.LLST6
	.uleb128 0x1e
	.uaword	.LASF3
	.byte	0x1
	.byte	0xcc
	.uaword	0x1f0
	.uaword	.LLST7
	.uleb128 0x1f
	.string	"maxDtoAligned"
	.byte	0x1
	.byte	0xcd
	.uaword	0x1f0
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x1d
	.string	"AbsODTNo_u16"
	.byte	0x1
	.byte	0xce
	.uaword	0x1f0
	.uaword	.LLST8
	.uleb128 0x1e
	.uaword	.LASF4
	.byte	0x1
	.byte	0xcf
	.uaword	0x1f0
	.uaword	.LLST9
	.uleb128 0x1e
	.uaword	.LASF5
	.byte	0x1
	.byte	0xd0
	.uaword	0x1c5
	.uaword	.LLST10
	.uleb128 0x1d
	.string	"retval"
	.byte	0x1
	.byte	0xd1
	.uaword	0x1c5
	.uaword	.LLST11
	.uleb128 0x20
	.uaword	0x144e
	.uaword	.LBB14
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.uahalf	0x130
	.uaword	0x1712
	.uleb128 0x21
	.uaword	0x1479
	.uleb128 0x22
	.uaword	0x146d
	.uaword	.LLST12
	.uleb128 0x23
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x24
	.uaword	0x1485
	.uaword	.LLST13
	.uleb128 0x24
	.uaword	0x1497
	.uaword	.LLST14
	.uleb128 0x25
	.uaword	.LVL37
	.uaword	0x1884
	.byte	0
	.byte	0
	.uleb128 0x20
	.uaword	0x13f1
	.uaword	.LBB17
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x1
	.uahalf	0x137
	.uaword	0x17d8
	.uleb128 0x21
	.uaword	0x143b
	.uleb128 0x22
	.uaword	0x142f
	.uaword	.LLST15
	.uleb128 0x22
	.uaword	0x1423
	.uaword	.LLST16
	.uleb128 0x22
	.uaword	0x1417
	.uaword	.LLST17
	.uleb128 0x22
	.uaword	0x140b
	.uaword	.LLST4
	.uleb128 0x26
	.uaword	0x14a2
	.uaword	.LBB18
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x1
	.uahalf	0x1ed
	.uleb128 0x21
	.uaword	0x14f8
	.uleb128 0x22
	.uaword	0x14ec
	.uaword	.LLST15
	.uleb128 0x22
	.uaword	0x14e0
	.uaword	.LLST16
	.uleb128 0x22
	.uaword	0x14d4
	.uaword	.LLST17
	.uleb128 0x22
	.uaword	0x14c8
	.uaword	.LLST22
	.uleb128 0x23
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0x24
	.uaword	0x1504
	.uaword	.LLST23
	.uleb128 0x24
	.uaword	0x151c
	.uaword	.LLST24
	.uleb128 0x24
	.uaword	0x1532
	.uaword	.LLST25
	.uleb128 0x24
	.uaword	0x1549
	.uaword	.LLST26
	.uleb128 0x24
	.uaword	0x1561
	.uaword	.LLST27
	.uleb128 0x24
	.uaword	0x1575
	.uaword	.LLST28
	.uleb128 0x24
	.uaword	0x1585
	.uaword	.LLST29
	.uleb128 0x24
	.uaword	0x15a5
	.uaword	.LLST30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.uaword	0x139d
	.uaword	.LBB24
	.uaword	.LBE24
	.byte	0x1
	.uahalf	0x127
	.uaword	0x1811
	.uleb128 0x22
	.uaword	0x13d2
	.uaword	.LLST31
	.uleb128 0x22
	.uaword	0x13e4
	.uaword	.LLST31
	.uleb128 0x22
	.uaword	0x13c6
	.uaword	.LLST33
	.uleb128 0x22
	.uaword	0x13ba
	.uaword	.LLST34
	.byte	0
	.uleb128 0x28
	.uaword	.LVL45
	.uaword	0x18a4
	.uaword	0x182b
	.uleb128 0x29
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.uleb128 0x29
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7b
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.uaword	.LVL47
	.uaword	0x18c6
	.uleb128 0x29
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.uleb128 0x29
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x36
	.byte	0
	.byte	0
	.uleb128 0x2b
	.string	"Xcp_PlCfgConst"
	.byte	0x6
	.uahalf	0x115
	.uaword	0x185a
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.uaword	0xde6
	.uleb128 0x12
	.uaword	0x1388
	.uaword	0x186f
	.uleb128 0x13
	.uaword	0x92d
	.byte	0
	.byte	0
	.uleb128 0x2b
	.string	"Xcp_NoInit"
	.byte	0x7
	.uahalf	0x245
	.uaword	0x185f
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.byte	0x1
	.string	"XcpAppl_GetTimestamp"
	.byte	0x8
	.uahalf	0x19b
	.byte	0x1
	.uaword	0x22c
	.byte	0x1
	.uleb128 0x2d
	.byte	0x1
	.string	"Xcp_SendDaq"
	.byte	0x7
	.uahalf	0x2d8
	.byte	0x1
	.byte	0x1
	.uaword	0x18c6
	.uleb128 0xf
	.uaword	0x1f0
	.uleb128 0xf
	.uaword	0x1c5
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.string	"Xcp_SendEv_Code"
	.byte	0x7
	.uahalf	0x25f
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.uaword	0x1c5
	.uleb128 0xf
	.uaword	0x1c5
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
	.uleb128 0x3
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x29
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0x2e
	.byte	0
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
	.uaword	.LFB49
	.uaword	.LCFI0
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0
	.uaword	.LFE49
	.uahalf	0x2
	.byte	0x8a
	.sleb128 40
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL3
	.uaword	.LFE49
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL0
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL5
	.uaword	.LFE49
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL1
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL5
	.uaword	.LFE49
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL9
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL2
	.uaword	.LVL5
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL35
	.uaword	.LVL44
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL2
	.uaword	.LVL5
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL35
	.uaword	.LVL44
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x2
	.byte	0x76
	.sleb128 4
	.uaword	.LVL6
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x5c
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x5c
	.uaword	.LVL35
	.uaword	.LVL44
	.uahalf	0x1
	.byte	0x5c
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x2
	.byte	0x76
	.sleb128 12
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL7
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x5b
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL2
	.uaword	.LVL5
	.uahalf	0x2
	.byte	0x76
	.sleb128 12
	.uaword	.LVL5
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x6e
	.uaword	.LVL35
	.uaword	.LVL37-1
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL37-1
	.uaword	.LVL44
	.uahalf	0x1
	.byte	0x6e
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL2
	.uaword	.LVL5
	.uahalf	0x2
	.byte	0x76
	.sleb128 16
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL0
	.uaword	.LVL33
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL33
	.uaword	.LVL34
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL34
	.uaword	.LVL35
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL35
	.uaword	.LVL46
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL46
	.uaword	.LVL48
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL48
	.uaword	.LFE49
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL36
	.uaword	.LVL38
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL38
	.uaword	.LVL42
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL37
	.uaword	.LVL42
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL37
	.uaword	.LVL38
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL38
	.uaword	.LVL39
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL39
	.uaword	.LVL40
	.uahalf	0x3
	.byte	0x7f
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL40
	.uaword	.LVL42
	.uahalf	0x3
	.byte	0x7f
	.sleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL9
	.uaword	.LVL33
	.uahalf	0x6
	.byte	0xf2
	.uaword	.Ldebug_info0+5706
	.sleb128 0
	.uaword	.LVL42
	.uaword	.LVL44
	.uahalf	0x6
	.byte	0xf2
	.uaword	.Ldebug_info0+5706
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL9
	.uaword	.LVL33
	.uahalf	0x6
	.byte	0xf2
	.uaword	.Ldebug_info0+5683
	.sleb128 0
	.uaword	.LVL42
	.uaword	.LVL44
	.uahalf	0x6
	.byte	0xf2
	.uaword	.Ldebug_info0+5683
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL9
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL42
	.uaword	.LVL43
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL43
	.uaword	.LVL44
	.uahalf	0x7
	.byte	0x91
	.sleb128 -16
	.byte	0x6
	.byte	0x8e
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL9
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL23
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL42
	.uaword	.LVL44
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL9
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL13
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL16
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x51
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x51
	.uaword	.LVL31
	.uaword	.LVL32
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL9
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL42
	.uaword	.LVL44
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL10
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL13
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x63
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL11
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL42
	.uaword	.LVL44
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL11
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL9
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL14
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL15
	.uaword	.LVL18
	.uahalf	0x2
	.byte	0x82
	.sleb128 0
	.uaword	.LVL18
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL24
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0xb
	.byte	0x79
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x33
	.byte	0x24
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0xb
	.byte	0x8f
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x33
	.byte	0x24
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0xb
	.byte	0x79
	.sleb128 -1
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x33
	.byte	0x24
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL26
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL6
	.uaword	.LVL33
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL35
	.uaword	.LVL44
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL7
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x5b
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL35
	.uaword	.LVL41
	.uahalf	0x1
	.byte	0x59
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
	.uaword	.LBB14
	.uaword	.LBE14
	.uaword	.LBB28
	.uaword	.LBE28
	.uaword	0
	.uaword	0
	.uaword	.LBB17
	.uaword	.LBE17
	.uaword	.LBB26
	.uaword	.LBE26
	.uaword	.LBB27
	.uaword	.LBE27
	.uaword	0
	.uaword	0
	.uaword	.LFB49
	.uaword	.LFE49
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF7:
	.string	"AbsOdtNum"
.LASF0:
	.string	"MaxCto_u8"
.LASF5:
	.string	"OdtCnt_u8"
.LASF2:
	.string	"DaqRamPtr_pu8"
.LASF4:
	.string	"OdtFirst_u16"
.LASF9:
	.string	"lastAddressPtr"
.LASF10:
	.string	"lastValuePtr"
.LASF3:
	.string	"WritePos_u16"
.LASF8:
	.string	"protLayerId"
.LASF6:
	.string	"dest_pu8"
.LASF1:
	.string	"MaxDto_u16"
	.extern	Xcp_SendEv_Code,STT_FUNC,0
	.extern	Xcp_SendDaq,STT_FUNC,0
	.extern	XcpAppl_GetTimestamp,STT_FUNC,0
	.extern	Xcp_PlCfgConst,STT_OBJECT,104
	.extern	Xcp_NoInit,STT_OBJECT,76
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
