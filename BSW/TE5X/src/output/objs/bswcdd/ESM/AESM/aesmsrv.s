	.file	"aesmsrv.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.AESMSRV_vidSetCmdReq,"ax",@progbits
	.align 1
	.global	AESMSRV_vidSetCmdReq
	.type	AESMSRV_vidSetCmdReq, @function
AESMSRV_vidSetCmdReq:
.LFB0:
	.file 1 "bswcdd\\ESM\\AESM\\aesmsrv.c"
	.loc 1 76 0
.LVL0:
	.loc 1 79 0
	movh.a	%a15, hi:AESM_u16CmdReqNm1
	.loc 1 77 0
	jz	%d5, .L2
	.loc 1 79 0
	ld.hu	%d15, [%a15] lo:AESM_u16CmdReqNm1
	and	%d2, %d4, %d15
	jnz	%d2, .L1
	.loc 1 81 0
	movh.a	%a2, hi:AESM_u16CmdReq
	ld.h	%d2, [%a2] lo:AESM_u16CmdReq
	or	%d2, %d4
	st.h	[%a2] lo:AESM_u16CmdReq, %d2
	.loc 1 82 0
	movh.a	%a2, hi:AESM_u16CmdRes
	ld.h	%d2, [%a2] lo:AESM_u16CmdRes
	andn	%d2, %d2, %d4
	.loc 1 83 0
	or	%d4, %d15
.LVL1:
	.loc 1 82 0
	st.h	[%a2] lo:AESM_u16CmdRes, %d2
	.loc 1 83 0
	st.h	[%a15] lo:AESM_u16CmdReqNm1, %d4
	ret
.LVL2:
.L2:
	.loc 1 88 0
	ld.h	%d15, [%a15] lo:AESM_u16CmdReqNm1
	andn	%d4, %d15, %d4
.LVL3:
	st.h	[%a15] lo:AESM_u16CmdReqNm1, %d4
.L1:
	ret
.LFE0:
	.size	AESMSRV_vidSetCmdReq, .-AESMSRV_vidSetCmdReq
.section .text.AESMSRV_vidSetCmdRes,"ax",@progbits
	.align 1
	.global	AESMSRV_vidSetCmdRes
	.type	AESMSRV_vidSetCmdRes, @function
AESMSRV_vidSetCmdRes:
.LFB1:
	.loc 1 102 0
.LVL4:
	.loc 1 103 0
	movh.a	%a15, hi:AESM_u16CmdRes
	ld.h	%d15, [%a15] lo:AESM_u16CmdRes
	or	%d4, %d15
.LVL5:
	st.h	[%a15] lo:AESM_u16CmdRes, %d4
	ret
.LFE1:
	.size	AESMSRV_vidSetCmdRes, .-AESMSRV_vidSetCmdRes
.section .text.AESMSRV_bGetCmdReq,"ax",@progbits
	.align 1
	.global	AESMSRV_bGetCmdReq
	.type	AESMSRV_bGetCmdReq, @function
AESMSRV_bGetCmdReq:
.LFB2:
	.loc 1 119 0
.LVL6:
	.loc 1 122 0
	movh.a	%a15, hi:AESM_u16CmdReq
	ld.hu	%d15, [%a15] lo:AESM_u16CmdReq
	.loc 1 129 0
	mov	%d2, 0
	.loc 1 122 0
	and	%d3, %d4, %d15
	jeq	%d3, %d4, .L9
.LVL7:
	.loc 1 132 0
	ret
.LVL8:
.L9:
	.loc 1 125 0
	andn	%d15, %d15, %d3
	st.h	[%a15] lo:AESM_u16CmdReq, %d15
	.loc 1 124 0
	mov	%d2, 1
.LVL9:
	.loc 1 132 0
	ret
.LFE2:
	.size	AESMSRV_bGetCmdReq, .-AESMSRV_bGetCmdReq
.section .text.AESMSRV_bGetCmdReqNm1,"ax",@progbits
	.align 1
	.global	AESMSRV_bGetCmdReqNm1
	.type	AESMSRV_bGetCmdReqNm1, @function
AESMSRV_bGetCmdReqNm1:
.LFB3:
	.loc 1 144 0
.LVL10:
	.loc 1 147 0
	movh.a	%a15, hi:AESM_u16CmdReqNm1
	ld.h	%d2, [%a15] lo:AESM_u16CmdReqNm1
	and	%d2, %d4
	.loc 1 156 0
	eq	%d2, %d2, %d4
	ret
.LFE3:
	.size	AESMSRV_bGetCmdReqNm1, .-AESMSRV_bGetCmdReqNm1
.section .text.AESMSRV_bGetCmdRes,"ax",@progbits
	.align 1
	.global	AESMSRV_bGetCmdRes
	.type	AESMSRV_bGetCmdRes, @function
AESMSRV_bGetCmdRes:
.LFB4:
	.loc 1 168 0
.LVL11:
	.loc 1 171 0
	movh.a	%a15, hi:AESM_u16CmdRes
	ld.h	%d2, [%a15] lo:AESM_u16CmdRes
	and	%d2, %d4
	.loc 1 180 0
	eq	%d2, %d2, %d4
	ret
.LFE4:
	.size	AESMSRV_bGetCmdRes, .-AESMSRV_bGetCmdRes
.section .text.AESMSRV_u8GetCallAppli,"ax",@progbits
	.align 1
	.global	AESMSRV_u8GetCallAppli
	.type	AESMSRV_u8GetCallAppli, @function
AESMSRV_u8GetCallAppli:
.LFB5:
	.loc 1 195 0
	.loc 1 198 0
	movh.a	%a15, hi:AESM_bCallAppliOn
	ld.bu	%d15, [%a15] lo:AESM_bCallAppliOn
	.loc 1 204 0
	mov	%d2, 0
	.loc 1 198 0
	jz	%d15, .L13
	.loc 1 200 0
	movh.a	%a15, hi:AESM_EsmMode
	ld.bu	%d2, [%a15] lo:AESM_EsmMode
.LVL12:
.L13:
	.loc 1 207 0
	ret
.LFE5:
	.size	AESMSRV_u8GetCallAppli, .-AESMSRV_u8GetCallAppli
.section .text.AESMSRV_u8GetAEsmMode,"ax",@progbits
	.align 1
	.global	AESMSRV_u8GetAEsmMode
	.type	AESMSRV_u8GetAEsmMode, @function
AESMSRV_u8GetAEsmMode:
.LFB6:
	.loc 1 219 0
.LVL13:
	.loc 1 224 0
	movh.a	%a15, hi:AESM_EsmMode
	ld.bu	%d2, [%a15] lo:AESM_EsmMode
	ret
.LFE6:
	.size	AESMSRV_u8GetAEsmMode, .-AESMSRV_u8GetAEsmMode
.section .text.AESMSRV_u8GetAEsmEcuState,"ax",@progbits
	.align 1
	.global	AESMSRV_u8GetAEsmEcuState
	.type	AESMSRV_u8GetAEsmEcuState, @function
AESMSRV_u8GetAEsmEcuState:
.LFB7:
	.loc 1 236 0
.LVL14:
	.loc 1 241 0
	movh.a	%a15, hi:AESM_EcuState
	ld.bu	%d2, [%a15] lo:AESM_EcuState
	ret
.LFE7:
	.size	AESMSRV_u8GetAEsmEcuState, .-AESMSRV_u8GetAEsmEcuState
.section .text.AESMSRV_vidVSIInit,"ax",@progbits
	.align 1
	.global	AESMSRV_vidVSIInit
	.type	AESMSRV_vidVSIInit, @function
AESMSRV_vidVSIInit:
.LFB8:
	.loc 1 256 0
	ret
.LFE8:
	.size	AESMSRV_vidVSIInit, .-AESMSRV_vidVSIInit
.section .text.AESMSRV_bGetPoDnReadyFlg,"ax",@progbits
	.align 1
	.global	AESMSRV_bGetPoDnReadyFlg
	.type	AESMSRV_bGetPoDnReadyFlg, @function
AESMSRV_bGetPoDnReadyFlg:
.LFB9:
	.loc 1 269 0
	.loc 1 271 0
	movh.a	%a15, hi:AESM_bPwrDnReadyFlg
	ld.bu	%d2, [%a15] lo:AESM_bPwrDnReadyFlg
	ret
.LFE9:
	.size	AESMSRV_bGetPoDnReadyFlg, .-AESMSRV_bGetPoDnReadyFlg
.section .text.AESMSRV_bGetPwrLNfClrFltFinsh,"ax",@progbits
	.align 1
	.global	AESMSRV_bGetPwrLNfClrFltFinsh
	.type	AESMSRV_bGetPwrLNfClrFltFinsh, @function
AESMSRV_bGetPwrLNfClrFltFinsh:
.LFB10:
	.loc 1 283 0
	.loc 1 285 0
	movh.a	%a15, hi:AESM_bPwrLNfClrFltFinsh
	ld.bu	%d2, [%a15] lo:AESM_bPwrLNfClrFltFinsh
	ret
.LFE10:
	.size	AESMSRV_bGetPwrLNfClrFltFinsh, .-AESMSRV_bGetPwrLNfClrFltFinsh
.section .text.AESMSRV_vidSetMcuEnaReq,"ax",@progbits
	.align 1
	.global	AESMSRV_vidSetMcuEnaReq
	.type	AESMSRV_vidSetMcuEnaReq, @function
AESMSRV_vidSetMcuEnaReq:
.LFB11:
	.loc 1 295 0
.LVL15:
	.loc 1 296 0
	ne	%d4, %d4, 0
.LVL16:
	movh.a	%a15, hi:AESM_bMcuEnaReq
	st.b	[%a15] lo:AESM_bMcuEnaReq, %d4
	ret
.LFE11:
	.size	AESMSRV_vidSetMcuEnaReq, .-AESMSRV_vidSetMcuEnaReq
.section .text.AESMSRV_vidSetAfterrunReq,"ax",@progbits
	.align 1
	.global	AESMSRV_vidSetAfterrunReq
	.type	AESMSRV_vidSetAfterrunReq, @function
AESMSRV_vidSetAfterrunReq:
.LFB12:
	.loc 1 307 0
.LVL17:
	.loc 1 308 0
	ne	%d4, %d4, 0
.LVL18:
	movh.a	%a15, hi:AESM_bAfterrunReq
	st.b	[%a15] lo:AESM_bAfterrunReq, %d4
	ret
.LFE12:
	.size	AESMSRV_vidSetAfterrunReq, .-AESMSRV_vidSetAfterrunReq
.section .text.AESMSRV_vidSetAfterrunFin,"ax",@progbits
	.align 1
	.global	AESMSRV_vidSetAfterrunFin
	.type	AESMSRV_vidSetAfterrunFin, @function
AESMSRV_vidSetAfterrunFin:
.LFB13:
	.loc 1 319 0
.LVL19:
	.loc 1 320 0
	ne	%d4, %d4, 0
.LVL20:
	movh.a	%a15, hi:AESM_bAfterrunFin
	st.b	[%a15] lo:AESM_bAfterrunFin, %d4
	ret
.LFE13:
	.size	AESMSRV_vidSetAfterrunFin, .-AESMSRV_vidSetAfterrunFin
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
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB8
	.uaword	.LFE8-.LFB8
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB9
	.uaword	.LFE9-.LFB9
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB10
	.uaword	.LFE10-.LFB10
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB11
	.uaword	.LFE11-.LFB11
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB12
	.uaword	.LFE12-.LFB12
	.align 2
.LEFDE24:
.LSFDE26:
	.uaword	.LEFDE26-.LASFDE26
.LASFDE26:
	.uaword	.Lframe0
	.uaword	.LFB13
	.uaword	.LFE13-.LFB13
	.align 2
.LEFDE26:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 "bswcdd\\ESM\\AESM\\AESM.h"
	.file 4 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\ASTFSRV\\ASTFSRV.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x72a
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\ESM\\AESM\\aesmsrv.c"
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
	.uaword	0x1c4
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
	.uaword	0x1f0
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
	.uaword	0x1c4
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
	.string	"AESMSRV_vidSetCmdReq"
	.byte	0x1
	.byte	0x4b
	.byte	0x1
	.uaword	.LFB0
	.uaword	.LFE0
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x2d5
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x1
	.byte	0x4b
	.uaword	0x1e2
	.uaword	.LLST0
	.uleb128 0x6
	.string	"CmdReq"
	.byte	0x1
	.byte	0x4b
	.uaword	0x25b
	.byte	0x1
	.byte	0x55
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.string	"AESMSRV_vidSetCmdRes"
	.byte	0x1
	.byte	0x65
	.byte	0x1
	.uaword	.LFB1
	.uaword	.LFE1
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x30f
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x1
	.byte	0x65
	.uaword	0x1e2
	.uaword	.LLST1
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.string	"AESMSRV_bGetCmdReq"
	.byte	0x1
	.byte	0x76
	.byte	0x1
	.uaword	0x25b
	.uaword	.LFB2
	.uaword	.LFE2
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x358
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x1
	.byte	0x76
	.uaword	0x1e2
	.byte	0x1
	.byte	0x54
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x1
	.byte	0x78
	.uaword	0x25b
	.uaword	.LLST2
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.string	"AESMSRV_bGetCmdReqNm1"
	.byte	0x1
	.byte	0x8f
	.byte	0x1
	.uaword	0x25b
	.uaword	.LFB3
	.uaword	.LFE3
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x3a0
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x1
	.byte	0x8f
	.uaword	0x1e2
	.byte	0x1
	.byte	0x54
	.uleb128 0xa
	.uaword	.LASF1
	.byte	0x1
	.byte	0x91
	.uaword	0x25b
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.string	"AESMSRV_bGetCmdRes"
	.byte	0x1
	.byte	0xa7
	.byte	0x1
	.uaword	0x25b
	.uaword	.LFB4
	.uaword	.LFE4
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x3e5
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x1
	.byte	0xa7
	.uaword	0x1e2
	.byte	0x1
	.byte	0x54
	.uleb128 0xa
	.uaword	.LASF1
	.byte	0x1
	.byte	0xa9
	.uaword	0x25b
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.string	"AESMSRV_u8GetCallAppli"
	.byte	0x1
	.byte	0xc2
	.byte	0x1
	.uaword	0x1b7
	.uaword	.LFB5
	.uaword	.LFE5
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x423
	.uleb128 0xb
	.uaword	.LASF2
	.byte	0x1
	.byte	0xc4
	.uaword	0x1b7
	.byte	0x1
	.byte	0x52
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.string	"AESMSRV_u8GetAEsmMode"
	.byte	0x1
	.byte	0xda
	.byte	0x1
	.uaword	0x1b7
	.uaword	.LFB6
	.uaword	.LFE6
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x45e
	.uleb128 0xa
	.uaword	.LASF2
	.byte	0x1
	.byte	0xdc
	.uaword	0x1b7
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.string	"AESMSRV_u8GetAEsmEcuState"
	.byte	0x1
	.byte	0xeb
	.byte	0x1
	.uaword	0x1b7
	.uaword	.LFB7
	.uaword	.LFE7
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x4a6
	.uleb128 0xc
	.string	"u8LocalState"
	.byte	0x1
	.byte	0xed
	.uaword	0x1b7
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.string	"AESMSRV_vidVSIInit"
	.byte	0x1
	.byte	0xff
	.byte	0x1
	.uaword	.LFB8
	.uaword	.LFE8
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.string	"AESMSRV_bGetPoDnReadyFlg"
	.byte	0x1
	.uahalf	0x10c
	.byte	0x1
	.uaword	0x25b
	.uaword	.LFB9
	.uaword	.LFE9
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.string	"AESMSRV_bGetPwrLNfClrFltFinsh"
	.byte	0x1
	.uahalf	0x11a
	.byte	0x1
	.uaword	0x25b
	.uaword	.LFB10
	.uaword	.LFE10
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xf
	.byte	0x1
	.string	"AESMSRV_vidSetMcuEnaReq"
	.byte	0x1
	.uahalf	0x126
	.byte	0x1
	.uaword	.LFB11
	.uaword	.LFE11
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x574
	.uleb128 0x10
	.string	"u8McuEnaReq"
	.byte	0x1
	.uahalf	0x126
	.uaword	0x574
	.uaword	.LLST3
	.byte	0
	.uleb128 0x11
	.uaword	0x1b7
	.uleb128 0xf
	.byte	0x1
	.string	"AESMSRV_vidSetAfterrunReq"
	.byte	0x1
	.uahalf	0x132
	.byte	0x1
	.uaword	.LFB12
	.uaword	.LFE12
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x5c3
	.uleb128 0x10
	.string	"bAfterrunReq"
	.byte	0x1
	.uahalf	0x132
	.uaword	0x25b
	.uaword	.LLST4
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.string	"AESMSRV_vidSetAfterrunFin"
	.byte	0x1
	.uahalf	0x13e
	.byte	0x1
	.uaword	.LFB13
	.uaword	.LFE13
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x60d
	.uleb128 0x10
	.string	"bAfterrunFin"
	.byte	0x1
	.uahalf	0x13e
	.uaword	0x25b
	.uaword	.LLST5
	.byte	0
	.uleb128 0x12
	.string	"AESM_EcuState"
	.byte	0x3
	.byte	0x3b
	.uaword	0x1b7
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.string	"AESM_EsmMode"
	.byte	0x4
	.byte	0x57
	.uaword	0x1e2
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.string	"AESM_bAfterrunFin"
	.byte	0x4
	.byte	0x58
	.uaword	0x25b
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.string	"AESM_bAfterrunReq"
	.byte	0x4
	.byte	0x59
	.uaword	0x25b
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.string	"AESM_bCallAppliOn"
	.byte	0x4
	.byte	0x5a
	.uaword	0x25b
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.string	"AESM_bMcuEnaReq"
	.byte	0x4
	.byte	0x5b
	.uaword	0x25b
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.string	"AESM_bPwrDnReadyFlg"
	.byte	0x4
	.byte	0x5c
	.uaword	0x25b
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.string	"AESM_bPwrLNfClrFltFinsh"
	.byte	0x4
	.byte	0x5d
	.uaword	0x25b
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.string	"AESM_u16CmdReq"
	.byte	0x4
	.byte	0x68
	.uaword	0x1e2
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.string	"AESM_u16CmdReqNm1"
	.byte	0x4
	.byte	0x69
	.uaword	0x1e2
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.string	"AESM_u16CmdRes"
	.byte	0x4
	.byte	0x6a
	.uaword	0x1e2
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL3
	.uaword	.LFE0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL5
	.uaword	.LFE1
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LFE2
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL16
	.uaword	.LFE11
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL18
	.uaword	.LFE12
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL20
	.uaword	.LFE13
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x84
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
	.uaword	.LFB8
	.uaword	.LFE8-.LFB8
	.uaword	.LFB9
	.uaword	.LFE9-.LFB9
	.uaword	.LFB10
	.uaword	.LFE10-.LFB10
	.uaword	.LFB11
	.uaword	.LFE11-.LFB11
	.uaword	.LFB12
	.uaword	.LFE12-.LFB12
	.uaword	.LFB13
	.uaword	.LFE13-.LFB13
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
	.uaword	.LFB8
	.uaword	.LFE8
	.uaword	.LFB9
	.uaword	.LFE9
	.uaword	.LFB10
	.uaword	.LFE10
	.uaword	.LFB11
	.uaword	.LFE11
	.uaword	.LFB12
	.uaword	.LFE12
	.uaword	.LFB13
	.uaword	.LFE13
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"CmdMask"
.LASF2:
	.string	"u8LocalMode"
.LASF1:
	.string	"bLocalValue"
	.extern	AESM_bAfterrunFin,STT_OBJECT,1
	.extern	AESM_bAfterrunReq,STT_OBJECT,1
	.extern	AESM_bMcuEnaReq,STT_OBJECT,1
	.extern	AESM_bPwrLNfClrFltFinsh,STT_OBJECT,1
	.extern	AESM_bPwrDnReadyFlg,STT_OBJECT,1
	.extern	AESM_EcuState,STT_OBJECT,1
	.extern	AESM_EsmMode,STT_OBJECT,2
	.extern	AESM_bCallAppliOn,STT_OBJECT,1
	.extern	AESM_u16CmdRes,STT_OBJECT,2
	.extern	AESM_u16CmdReq,STT_OBJECT,2
	.extern	AESM_u16CmdReqNm1,STT_OBJECT,2
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
