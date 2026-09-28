	.file	"ESM_TRA.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.ESM_vidFromESM_ST0OnESM_EV0,"ax",@progbits
	.align 1
	.global	ESM_vidFromESM_ST0OnESM_EV0
	.type	ESM_vidFromESM_ST0OnESM_EV0, @function
ESM_vidFromESM_ST0OnESM_EV0:
.LFB0:
	.file 1 "bswcdd\\ESM\\ESM\\ESM_TRA.c"
	.loc 1 50 0
	.loc 1 51 0
	movh.a	%a15, hi:ESM_StpIState
	ld.hu	%d15, [%a15] lo:ESM_StpIState
	mov	%d2, 16384
	jeq	%d15, %d2, .L4
	ret
.L4:
	.loc 1 53 0
	movh.a	%a15, hi:ESM_bfOutEventCarrier
	ld.h	%d4, [%a15] lo:ESM_bfOutEventCarrier
	.loc 1 54 0
	mov	%d15, 2
	.loc 1 53 0
	or	%d4, %d4, 2
	extr.u	%d4, %d4, 0, 16
	st.h	[%a15] lo:ESM_bfOutEventCarrier, %d4
	.loc 1 54 0
	movh.a	%a15, hi:ESM_EcuState
	st.b	[%a15] lo:ESM_EcuState, %d15
	call	ESM_vidExecOutEvent
.LVL0:
	j	ESM_vidEntryESM_ST1
.LVL1:
.LFE0:
	.size	ESM_vidFromESM_ST0OnESM_EV0, .-ESM_vidFromESM_ST0OnESM_EV0
.section .text.ESM_vidFromESM_ST1OnESM_EV0,"ax",@progbits
	.align 1
	.global	ESM_vidFromESM_ST1OnESM_EV0
	.type	ESM_vidFromESM_ST1OnESM_EV0, @function
ESM_vidFromESM_ST1OnESM_EV0:
.LFB1:
	.loc 1 61 0
	.loc 1 62 0
	movh.a	%a15, hi:ESM_StpIINfState
	ld.hu	%d2, [%a15] lo:ESM_StpIINfState
	mov	%d15, 16384
	jeq	%d2, %d15, .L6
	.loc 1 62 0 is_stmt 0 discriminator 1
	movh.a	%a15, hi:ESM_StpIIFtState
	ld.hu	%d2, [%a15] lo:ESM_StpIIFtState
	jeq	%d2, %d15, .L6
	ret
.L6:
	.loc 1 64 0 is_stmt 1
	movh.a	%a15, hi:ESM_bfOutEventCarrier
	ld.h	%d4, [%a15] lo:ESM_bfOutEventCarrier
	.loc 1 65 0
	mov	%d15, 4
	.loc 1 64 0
	or	%d4, %d4, 4
	extr.u	%d4, %d4, 0, 16
	st.h	[%a15] lo:ESM_bfOutEventCarrier, %d4
	.loc 1 65 0
	movh.a	%a15, hi:ESM_EcuState
	st.b	[%a15] lo:ESM_EcuState, %d15
	call	ESM_vidExecOutEvent
.LVL2:
	j	ESM_vidEntryESM_ST2
.LVL3:
.LFE1:
	.size	ESM_vidFromESM_ST1OnESM_EV0, .-ESM_vidFromESM_ST1OnESM_EV0
.section .text.ESM_vidFromESM_ST2OnESM_EV0,"ax",@progbits
	.align 1
	.global	ESM_vidFromESM_ST2OnESM_EV0
	.type	ESM_vidFromESM_ST2OnESM_EV0, @function
ESM_vidFromESM_ST2OnESM_EV0:
.LFB2:
	.loc 1 72 0
	.loc 1 73 0
	movh.a	%a15, hi:ESM_OpNfState
	ld.hu	%d15, [%a15] lo:ESM_OpNfState
	mov	%d2, 8192
	jeq	%d15, %d2, .L9
	.loc 1 73 0 is_stmt 0 discriminator 1
	movh.a	%a15, hi:ESM_PwrLFtState
	ld.hu	%d3, [%a15] lo:ESM_PwrLFtState
	mov	%d2, 16384
	jeq	%d3, %d2, .L9
	.loc 1 80 0 is_stmt 1
	jeq	%d15, %d2, .L12
	ret
.L9:
	.loc 1 75 0
	movh.a	%a15, hi:ESM_bfOutEventCarrier
	ld.h	%d4, [%a15] lo:ESM_bfOutEventCarrier
	.loc 1 76 0
	mov	%d15, 2
	.loc 1 75 0
	or	%d4, %d4, 2
	extr.u	%d4, %d4, 0, 16
	st.h	[%a15] lo:ESM_bfOutEventCarrier, %d4
	.loc 1 76 0
	movh.a	%a15, hi:ESM_EcuState
	st.b	[%a15] lo:ESM_EcuState, %d15
	call	ESM_vidExecOutEvent
.LVL4:
	j	ESM_vidEntryESM_ST1
.LVL5:
.L12:
	.loc 1 82 0
	movh.a	%a15, hi:ESM_bfOutEventCarrier
	ld.h	%d4, [%a15] lo:ESM_bfOutEventCarrier
	.loc 1 83 0
	mov	%d15, 8
	.loc 1 82 0
	or	%d4, %d4, 8
	extr.u	%d4, %d4, 0, 16
	st.h	[%a15] lo:ESM_bfOutEventCarrier, %d4
	.loc 1 83 0
	movh.a	%a15, hi:ESM_EcuState
	st.b	[%a15] lo:ESM_EcuState, %d15
	call	ESM_vidExecOutEvent
.LVL6:
	j	ESM_vidEntryESM_ST3
.LVL7:
.LFE2:
	.size	ESM_vidFromESM_ST2OnESM_EV0, .-ESM_vidFromESM_ST2OnESM_EV0
.section .text.ESM_vidFromESM_ST3OnESM_EV0,"ax",@progbits
	.align 1
	.global	ESM_vidFromESM_ST3OnESM_EV0
	.type	ESM_vidFromESM_ST3OnESM_EV0, @function
ESM_vidFromESM_ST3OnESM_EV0:
.LFB3:
	.loc 1 91 0
	.loc 1 92 0
	movh.a	%a15, hi:ESM_PwrLNfState
	ld.hu	%d15, [%a15] lo:ESM_PwrLNfState
	mov	%d2, 16384
	jeq	%d15, %d2, .L16
	.loc 1 99 0
	mov	%d2, 8192
	jeq	%d15, %d2, .L17
.L13:
	ret
.L17:
	.loc 1 101 0
	movh.a	%a15, hi:ESM_bfOutEventCarrier
	ld.h	%d4, [%a15] lo:ESM_bfOutEventCarrier
	.loc 1 102 0
	mov	%d15, 2
	.loc 1 101 0
	or	%d4, %d4, 2
	extr.u	%d4, %d4, 0, 16
	st.h	[%a15] lo:ESM_bfOutEventCarrier, %d4
	.loc 1 102 0
	movh.a	%a15, hi:ESM_EcuState
	st.b	[%a15] lo:ESM_EcuState, %d15
	call	ESM_vidExecOutEvent
.LVL8:
	j	ESM_vidEntryESM_ST1
.LVL9:
.L16:
	.loc 1 92 0 discriminator 1
	movh.a	%a15, hi:ESM_bPowerOffModeInhC
	ld.bu	%d15, [%a15] lo:ESM_bPowerOffModeInhC
	jnz	%d15, .L13
	.loc 1 94 0
	movh.a	%a15, hi:ESM_bfOutEventCarrier
	ld.h	%d4, [%a15] lo:ESM_bfOutEventCarrier
	.loc 1 95 0
	mov	%d15, 16
	.loc 1 94 0
	or	%d4, %d4, 16
	extr.u	%d4, %d4, 0, 16
	st.h	[%a15] lo:ESM_bfOutEventCarrier, %d4
	.loc 1 95 0
	movh.a	%a15, hi:ESM_EcuState
	st.b	[%a15] lo:ESM_EcuState, %d15
	call	ESM_vidExecOutEvent
.LVL10:
	j	ESM_vidEntryESM_ST4
.LVL11:
.LFE3:
	.size	ESM_vidFromESM_ST3OnESM_EV0, .-ESM_vidFromESM_ST3OnESM_EV0
.section .text.ESM_vidFromESM_ST1OnESM_EV1,"ax",@progbits
	.align 1
	.global	ESM_vidFromESM_ST1OnESM_EV1
	.type	ESM_vidFromESM_ST1OnESM_EV1, @function
ESM_vidFromESM_ST1OnESM_EV1:
.LFB4:
	.loc 1 113 0
	.loc 1 114 0
	movh.a	%a15, hi:ESM_bfOutEventCarrier
	ld.h	%d4, [%a15] lo:ESM_bfOutEventCarrier
	.loc 1 115 0
	mov	%d15, 1
	.loc 1 114 0
	or	%d4, %d4, 1
	extr.u	%d4, %d4, 0, 16
	st.h	[%a15] lo:ESM_bfOutEventCarrier, %d4
	.loc 1 115 0
	movh.a	%a15, hi:ESM_EcuState
	st.b	[%a15] lo:ESM_EcuState, %d15
	call	ESM_vidExecOutEvent
.LVL12:
	j	ESM_vidEntryESM_ST0
.LVL13:
.LFE4:
	.size	ESM_vidFromESM_ST1OnESM_EV1, .-ESM_vidFromESM_ST1OnESM_EV1
.section .text.ESM_vidFromESM_ST2OnESM_EV1,"ax",@progbits
	.align 1
	.global	ESM_vidFromESM_ST2OnESM_EV1
	.type	ESM_vidFromESM_ST2OnESM_EV1, @function
ESM_vidFromESM_ST2OnESM_EV1:
.LFB5:
	.loc 1 121 0
	.loc 1 122 0
	movh.a	%a15, hi:ESM_bfOutEventCarrier
	ld.h	%d4, [%a15] lo:ESM_bfOutEventCarrier
	.loc 1 123 0
	mov	%d15, 1
	.loc 1 122 0
	or	%d4, %d4, 1
	extr.u	%d4, %d4, 0, 16
	st.h	[%a15] lo:ESM_bfOutEventCarrier, %d4
	.loc 1 123 0
	movh.a	%a15, hi:ESM_EcuState
	st.b	[%a15] lo:ESM_EcuState, %d15
	call	ESM_vidExecOutEvent
.LVL14:
	j	ESM_vidEntryESM_ST0
.LVL15:
.LFE5:
	.size	ESM_vidFromESM_ST2OnESM_EV1, .-ESM_vidFromESM_ST2OnESM_EV1
.section .text.ESM_vidFromESM_ST3OnESM_EV1,"ax",@progbits
	.align 1
	.global	ESM_vidFromESM_ST3OnESM_EV1
	.type	ESM_vidFromESM_ST3OnESM_EV1, @function
ESM_vidFromESM_ST3OnESM_EV1:
.LFB6:
	.loc 1 129 0
	.loc 1 130 0
	movh.a	%a15, hi:ESM_bfOutEventCarrier
	ld.h	%d4, [%a15] lo:ESM_bfOutEventCarrier
	.loc 1 131 0
	mov	%d15, 1
	.loc 1 130 0
	or	%d4, %d4, 1
	extr.u	%d4, %d4, 0, 16
	st.h	[%a15] lo:ESM_bfOutEventCarrier, %d4
	.loc 1 131 0
	movh.a	%a15, hi:ESM_EcuState
	st.b	[%a15] lo:ESM_EcuState, %d15
	call	ESM_vidExecOutEvent
.LVL16:
	j	ESM_vidEntryESM_ST0
.LVL17:
.LFE6:
	.size	ESM_vidFromESM_ST3OnESM_EV1, .-ESM_vidFromESM_ST3OnESM_EV1
.section .text.ESM_vidFromESM_ST4OnESM_EV1,"ax",@progbits
	.align 1
	.global	ESM_vidFromESM_ST4OnESM_EV1
	.type	ESM_vidFromESM_ST4OnESM_EV1, @function
ESM_vidFromESM_ST4OnESM_EV1:
.LFB7:
	.loc 1 137 0
	.loc 1 138 0
	movh.a	%a15, hi:ESM_bfOutEventCarrier
	ld.h	%d4, [%a15] lo:ESM_bfOutEventCarrier
	.loc 1 139 0
	mov	%d15, 1
	.loc 1 138 0
	or	%d4, %d4, 1
	extr.u	%d4, %d4, 0, 16
	st.h	[%a15] lo:ESM_bfOutEventCarrier, %d4
	.loc 1 139 0
	movh.a	%a15, hi:ESM_EcuState
	st.b	[%a15] lo:ESM_EcuState, %d15
	call	ESM_vidExecOutEvent
.LVL18:
	j	ESM_vidEntryESM_ST0
.LVL19:
.LFE7:
	.size	ESM_vidFromESM_ST4OnESM_EV1, .-ESM_vidFromESM_ST4OnESM_EV1
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
	.uaword	.LFB0
	.uaword	.LFE0-.LFB0
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB1
	.uaword	.LFE1-.LFB1
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB2
	.uaword	.LFE2-.LFB2
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB3
	.uaword	.LFE3-.LFB3
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB4
	.uaword	.LFE4-.LFB4
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB5
	.uaword	.LFE5-.LFB5
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB6
	.uaword	.LFE6-.LFB6
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB7
	.uaword	.LFE7-.LFB7
	.align 2
.LEFDE14:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\STFSRV\\STFSRV.h"
	.file 4 ".\\output\\inc/..\\..\\bswcdd\\ESM\\ESM\\ESM.h"
	.file 5 "bswcdd\\ESM\\ESM\\esm_dat.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x668
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\ESM\\ESM\\ESM_TRA.c"
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
	.uleb128 0x3
	.string	"boolean"
	.byte	0x2
	.byte	0x80
	.uaword	0x1c3
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x4
	.byte	0x1
	.string	"ESM_vidFromESM_ST0OnESM_EV0"
	.byte	0x1
	.byte	0x31
	.byte	0x1
	.uaword	.LFB0
	.uaword	.LFE0
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x2cf
	.uleb128 0x5
	.uaword	.LVL0
	.uaword	0x5c5
	.uleb128 0x6
	.uaword	.LVL1
	.byte	0x1
	.uaword	0x5e9
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.string	"ESM_vidFromESM_ST1OnESM_EV0"
	.byte	0x1
	.byte	0x3c
	.byte	0x1
	.uaword	.LFB1
	.uaword	.LFE1
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x314
	.uleb128 0x5
	.uaword	.LVL2
	.uaword	0x5c5
	.uleb128 0x6
	.uaword	.LVL3
	.byte	0x1
	.uaword	0x603
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.string	"ESM_vidFromESM_ST2OnESM_EV0"
	.byte	0x1
	.byte	0x47
	.byte	0x1
	.uaword	.LFB2
	.uaword	.LFE2
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x36c
	.uleb128 0x5
	.uaword	.LVL4
	.uaword	0x5c5
	.uleb128 0x6
	.uaword	.LVL5
	.byte	0x1
	.uaword	0x5e9
	.uleb128 0x5
	.uaword	.LVL6
	.uaword	0x5c5
	.uleb128 0x6
	.uaword	.LVL7
	.byte	0x1
	.uaword	0x61d
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.string	"ESM_vidFromESM_ST3OnESM_EV0"
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.uaword	.LFB3
	.uaword	.LFE3
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x3c4
	.uleb128 0x5
	.uaword	.LVL8
	.uaword	0x5c5
	.uleb128 0x6
	.uaword	.LVL9
	.byte	0x1
	.uaword	0x5e9
	.uleb128 0x5
	.uaword	.LVL10
	.uaword	0x5c5
	.uleb128 0x6
	.uaword	.LVL11
	.byte	0x1
	.uaword	0x637
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.string	"ESM_vidFromESM_ST1OnESM_EV1"
	.byte	0x1
	.byte	0x70
	.byte	0x1
	.uaword	.LFB4
	.uaword	.LFE4
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x409
	.uleb128 0x5
	.uaword	.LVL12
	.uaword	0x5c5
	.uleb128 0x6
	.uaword	.LVL13
	.byte	0x1
	.uaword	0x651
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.string	"ESM_vidFromESM_ST2OnESM_EV1"
	.byte	0x1
	.byte	0x78
	.byte	0x1
	.uaword	.LFB5
	.uaword	.LFE5
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x44e
	.uleb128 0x5
	.uaword	.LVL14
	.uaword	0x5c5
	.uleb128 0x6
	.uaword	.LVL15
	.byte	0x1
	.uaword	0x651
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.string	"ESM_vidFromESM_ST3OnESM_EV1"
	.byte	0x1
	.byte	0x80
	.byte	0x1
	.uaword	.LFB6
	.uaword	.LFE6
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x493
	.uleb128 0x5
	.uaword	.LVL16
	.uaword	0x5c5
	.uleb128 0x6
	.uaword	.LVL17
	.byte	0x1
	.uaword	0x651
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.string	"ESM_vidFromESM_ST4OnESM_EV1"
	.byte	0x1
	.byte	0x88
	.byte	0x1
	.uaword	.LFB7
	.uaword	.LFE7
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x4d8
	.uleb128 0x5
	.uaword	.LVL18
	.uaword	0x5c5
	.uleb128 0x6
	.uaword	.LVL19
	.byte	0x1
	.uaword	0x651
	.byte	0
	.uleb128 0x7
	.string	"ESM_bPowerOffModeInhC"
	.byte	0x3
	.byte	0x4d
	.uaword	0x4f7
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.uaword	0x25a
	.uleb128 0x7
	.string	"ESM_OpNfState"
	.byte	0x3
	.byte	0x5f
	.uaword	0x1e1
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.string	"ESM_PwrLFtState"
	.byte	0x3
	.byte	0x60
	.uaword	0x1e1
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.string	"ESM_PwrLNfState"
	.byte	0x3
	.byte	0x61
	.uaword	0x1e1
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.string	"ESM_StpIIFtState"
	.byte	0x3
	.byte	0x64
	.uaword	0x1e1
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.string	"ESM_StpIINfState"
	.byte	0x3
	.byte	0x65
	.uaword	0x1e1
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.string	"ESM_StpIState"
	.byte	0x3
	.byte	0x66
	.uaword	0x1e1
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.string	"ESM_EcuState"
	.byte	0x4
	.byte	0x3b
	.uaword	0x1b6
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.string	"ESM_bfOutEventCarrier"
	.byte	0x5
	.byte	0xf3
	.uaword	0x1e1
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.byte	0x1
	.string	"ESM_vidExecOutEvent"
	.byte	0x5
	.byte	0xc5
	.byte	0x1
	.byte	0x1
	.uaword	0x5e9
	.uleb128 0xa
	.uaword	0x1e1
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"ESM_vidEntryESM_ST1"
	.byte	0x5
	.byte	0xca
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.byte	0x1
	.string	"ESM_vidEntryESM_ST2"
	.byte	0x5
	.byte	0xcb
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.byte	0x1
	.string	"ESM_vidEntryESM_ST3"
	.byte	0x5
	.byte	0xcc
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.byte	0x1
	.string	"ESM_vidEntryESM_ST4"
	.byte	0x5
	.byte	0xcd
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.byte	0x1
	.string	"ESM_vidEntryESM_ST0"
	.byte	0x5
	.byte	0xc9
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
	.uleb128 0x5
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x2e
	.byte	0
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
.section .debug_aranges,"",@progbits
	.uaword	0x54
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB0
	.uaword	.LFE0-.LFB0
	.uaword	.LFB1
	.uaword	.LFE1-.LFB1
	.uaword	.LFB2
	.uaword	.LFE2-.LFB2
	.uaword	.LFB3
	.uaword	.LFE3-.LFB3
	.uaword	.LFB4
	.uaword	.LFE4-.LFB4
	.uaword	.LFB5
	.uaword	.LFE5-.LFB5
	.uaword	.LFB6
	.uaword	.LFE6-.LFB6
	.uaword	.LFB7
	.uaword	.LFE7-.LFB7
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB0
	.uaword	.LFE0
	.uaword	.LFB1
	.uaword	.LFE1
	.uaword	.LFB2
	.uaword	.LFE2
	.uaword	.LFB3
	.uaword	.LFE3
	.uaword	.LFB4
	.uaword	.LFE4
	.uaword	.LFB5
	.uaword	.LFE5
	.uaword	.LFB6
	.uaword	.LFE6
	.uaword	.LFB7
	.uaword	.LFE7
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.extern	ESM_vidEntryESM_ST0,STT_FUNC,0
	.extern	ESM_vidEntryESM_ST4,STT_FUNC,0
	.extern	ESM_bPowerOffModeInhC,STT_OBJECT,1
	.extern	ESM_PwrLNfState,STT_OBJECT,2
	.extern	ESM_vidEntryESM_ST3,STT_FUNC,0
	.extern	ESM_PwrLFtState,STT_OBJECT,2
	.extern	ESM_OpNfState,STT_OBJECT,2
	.extern	ESM_vidEntryESM_ST2,STT_FUNC,0
	.extern	ESM_StpIIFtState,STT_OBJECT,2
	.extern	ESM_StpIINfState,STT_OBJECT,2
	.extern	ESM_vidEntryESM_ST1,STT_FUNC,0
	.extern	ESM_vidExecOutEvent,STT_FUNC,0
	.extern	ESM_EcuState,STT_OBJECT,1
	.extern	ESM_bfOutEventCarrier,STT_OBJECT,2
	.extern	ESM_StpIState,STT_OBJECT,2
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
