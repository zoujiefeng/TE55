	.file	"EcuM_ShutdownServices.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.EcuM_SelectShutdownCause,"ax",@progbits
	.align 1
	.global	EcuM_SelectShutdownCause
	.type	EcuM_SelectShutdownCause, @function
EcuM_SelectShutdownCause:
.LFB71:
	.file 1 "bsw\\EcuM\\src\\EcuM_ShutdownServices.c"
	.loc 1 56 0
.LVL0:
	.loc 1 63 0
	movh.a	%a15, hi:EcuM_Prv_flgIsModuleInitialised_b
	ld.bu	%d15, [%a15] lo:EcuM_Prv_flgIsModuleInitialised_b
	jeq	%d15, 1, .L7
	.loc 1 121 0
	mov	%e4, 10
.LVL1:
	mov	%d6, 27
	mov	%d7, 16
	call	Det_ReportError
.LVL2:
	.loc 1 59 0
	mov	%d2, 1
.LVL3:
	.loc 1 128 0
	ret
.LVL4:
.L7:
	.loc 1 69 0
	movh.a	%a15, hi:EcuM_Prv_flgShutdownInfoDoNotUpdate_b
	ld.bu	%d15, [%a15] lo:EcuM_Prv_flgShutdownInfoDoNotUpdate_b
	jnz	%d15, .L3
	.loc 1 73 0
	jge.u	%d4, 4, .L4
	.loc 1 78 0
	movh.a	%a15, hi:EcuM_Prv_dataSelectedShutdownCause_u8
	st.b	[%a15] lo:EcuM_Prv_dataSelectedShutdownCause_u8, %d4
	.loc 1 82 0
	movh.a	%a15, hi:EcuM_Rb_dataShutdownInfo_st
	lea	%a15, [%a15] lo:EcuM_Rb_dataShutdownInfo_st
	st.b	[%a15] 1, %d4
	.loc 1 89 0
	mov	%d5, 1
	mov	%d4, 38
.LVL5:
	call	NvM_SetRamBlockStatus
.LVL6:
	.loc 1 94 0
	mov	%d2, 0
	ret
.LVL7:
.L4:
	.loc 1 101 0
	mov	%e4, 10
.LVL8:
	mov	%d6, 27
	mov	%d7, 19
	call	Det_ReportError
.LVL9:
	.loc 1 59 0
	mov	%d2, 1
	ret
.LVL10:
.L3:
	.loc 1 111 0
	mov	%e4, 10
.LVL11:
	mov	%d6, 27
	mov	%d7, 254
	call	Det_ReportError
.LVL12:
	.loc 1 59 0
	mov	%d2, 1
	ret
.LFE71:
	.size	EcuM_SelectShutdownCause, .-EcuM_SelectShutdownCause
.section .text.EcuM_GetShutdownCause,"ax",@progbits
	.align 1
	.global	EcuM_GetShutdownCause
	.type	EcuM_GetShutdownCause, @function
EcuM_GetShutdownCause:
.LFB72:
	.loc 1 143 0
.LVL13:
	.loc 1 152 0
	movh.a	%a15, hi:EcuM_Prv_flgIsModuleInitialised_b
	ld.bu	%d15, [%a15] lo:EcuM_Prv_flgIsModuleInitialised_b
	jz	%d15, .L12
	.loc 1 161 0
	jz.a	%a4, .L13
	.loc 1 170 0
	movh.a	%a15, hi:EcuM_Prv_dataSelectedShutdownCause_u8
	ld.bu	%d15, [%a15] lo:EcuM_Prv_dataSelectedShutdownCause_u8
	.loc 1 173 0
	mov	%d2, 0
	.loc 1 170 0
	st.b	[%a4]0, %d15
.LVL14:
	.loc 1 178 0
	ret
.LVL15:
.L12:
	.loc 1 155 0
	mov	%e4, 10
	mov	%d6, 28
	mov	%d7, 16
	call	Det_ReportError
.LVL16:
	.loc 1 151 0
	mov	%d2, 1
	ret
.LVL17:
.L13:
	.loc 1 164 0
	mov	%e4, 10
	mov	%d6, 28
	mov	%d7, 18
	call	Det_ReportError
.LVL18:
	.loc 1 151 0
	mov	%d2, 1
	ret
.LFE72:
	.size	EcuM_GetShutdownCause, .-EcuM_GetShutdownCause
.section .text.EcuM_SelectShutdownTarget,"ax",@progbits
	.align 1
	.global	EcuM_SelectShutdownTarget
	.type	EcuM_SelectShutdownTarget, @function
EcuM_SelectShutdownTarget:
.LFB73:
	.loc 1 195 0
.LVL19:
	.loc 1 203 0
	movh.a	%a15, hi:EcuM_Prv_flgIsModuleInitialised_b
	ld.bu	%d15, [%a15] lo:EcuM_Prv_flgIsModuleInitialised_b
	jeq	%d15, 1, .L22
	.loc 1 285 0
	mov	%e4, 10
.LVL20:
	mov	%d6, 6
	mov	%d7, 16
	call	Det_ReportError
.LVL21:
	.loc 1 197 0
	mov	%d2, 1
.LVL22:
	ret
.LVL23:
.L22:
	.loc 1 206 0
	movh.a	%a15, hi:EcuM_Prv_flgShutdownInfoDoNotUpdate_b
	ld.bu	%d15, [%a15] lo:EcuM_Prv_flgShutdownInfoDoNotUpdate_b
	jnz	%d15, .L16
	.loc 1 218 0
	lt.u	%d15, %d5, 3
	and.eq	%d15, %d4, 1
	or.eq	%d15, %d4, 2
	jnz	%d15, .L17
	.loc 1 227 0
	mov	%e4, 10
.LVL24:
	mov	%d6, 6
	mov	%d7, 22
	call	Det_ReportError
.LVL25:
	mov	%d2, 1
	ret
.LVL26:
.L17:
	.loc 1 237 0
	movh.a	%a15, hi:EcuM_Prv_dataSelectedShutdownTarget_st
	st.b	[%a15] lo:EcuM_Prv_dataSelectedShutdownTarget_st, %d4
	lea	%a2, [%a15] lo:EcuM_Prv_dataSelectedShutdownTarget_st
	.loc 1 238 0
	jlt.u	%d4, 2, .L19
	ld.hu	%d5, [%a2] 2
.LVL27:
.L20:
	.loc 1 245 0
	movh.a	%a2, hi:EcuM_Rb_dataShutdownInfo_st
	lea	%a15, [%a2] lo:EcuM_Rb_dataShutdownInfo_st
	st.b	[%a2] lo:EcuM_Rb_dataShutdownInfo_st, %d4
	.loc 1 246 0
	st.h	[%a15] 2, %d5
	.loc 1 255 0
	mov	%d4, 38
.LVL28:
	mov	%d5, 1
	call	NvM_SetRamBlockStatus
.LVL29:
	mov	%d2, 0
	ret
.LVL30:
.L19:
	.loc 1 241 0
	st.h	[%a2] 2, %d5
	j	.L20
.LVL31:
.L16:
	.loc 1 271 0
	mov	%e4, 10
.LVL32:
	mov	%d6, 6
	mov	%d7, 254
	call	Det_ReportError
.LVL33:
	.loc 1 197 0
	mov	%d2, 1
	ret
.LFE73:
	.size	EcuM_SelectShutdownTarget, .-EcuM_SelectShutdownTarget
.section .text.EcuM_GetShutdownTarget,"ax",@progbits
	.align 1
	.global	EcuM_GetShutdownTarget
	.type	EcuM_GetShutdownTarget, @function
EcuM_GetShutdownTarget:
.LFB74:
	.loc 1 308 0
.LVL34:
	.loc 1 316 0
	movh.a	%a15, hi:EcuM_Prv_flgIsModuleInitialised_b
	ld.bu	%d15, [%a15] lo:EcuM_Prv_flgIsModuleInitialised_b
	jz	%d15, .L29
	.loc 1 326 0
	jz.a	%a4, .L30
	.loc 1 336 0
	movh.a	%a2, hi:EcuM_Prv_dataSelectedShutdownTarget_st
	ld.bu	%d15, [%a2] lo:EcuM_Prv_dataSelectedShutdownTarget_st
.LVL35:
	lea	%a15, [%a2] lo:EcuM_Prv_dataSelectedShutdownTarget_st
.LVL36:
	.loc 1 337 0
	ld.hu	%d3, [%a15] 2
.LVL37:
	.loc 1 341 0
	st.b	[%a4]0, %d15
.LVL38:
	.loc 1 346 0
	jz.a	%a5, .L31
	.loc 1 364 0
	mov	%d2, 0
	.loc 1 353 0
	jlt.u	%d15, 2, .L32
.LVL39:
	.loc 1 369 0
	ret
.LVL40:
.L32:
	.loc 1 357 0
	st.h	[%a5]0, %d3
.LVL41:
	.loc 1 369 0
	ret
.LVL42:
.L29:
	.loc 1 319 0
	mov	%e4, 10
	mov	%d6, 9
	mov	%d7, 16
	call	Det_ReportError
.LVL43:
	.loc 1 313 0
	mov	%d2, 1
	ret
.LVL44:
.L30:
	.loc 1 329 0
	mov	%e4, 10
	mov	%d6, 9
	mov	%d7, 18
	call	Det_ReportError
.LVL45:
	.loc 1 313 0
	mov	%d2, 1
	ret
.LVL46:
.L31:
	.loc 1 349 0
	mov	%e4, 10
	mov	%d6, 9
	mov	%d7, 27
	call	Det_ReportError
.LVL47:
	.loc 1 364 0
	mov	%d2, 0
	ret
.LFE74:
	.size	EcuM_GetShutdownTarget, .-EcuM_GetShutdownTarget
.section .text.EcuM_GetLastShutdownTarget,"ax",@progbits
	.align 1
	.global	EcuM_GetLastShutdownTarget
	.type	EcuM_GetLastShutdownTarget, @function
EcuM_GetLastShutdownTarget:
.LFB75:
	.loc 1 387 0
.LVL48:
	.loc 1 394 0
	movh.a	%a15, hi:EcuM_Prv_flgIsModuleInitialised_b
	ld.bu	%d15, [%a15] lo:EcuM_Prv_flgIsModuleInitialised_b
	jz	%d15, .L45
	.loc 1 402 0
	jz.a	%a4, .L46
.LVL49:
	.loc 1 417 0
	movh.a	%a15, hi:EcuM_Prv_flgNvMReadStatus_b
	ld.bu	%d15, [%a15] lo:EcuM_Prv_flgNvMReadStatus_b
	jz	%d15, .L47
	.loc 1 420 0
	movh.a	%a15, hi:EcuM_Prv_dataShutdownInfo_st
	ld.bu	%d15, [%a15] lo:EcuM_Prv_dataShutdownInfo_st
	lea	%a2, [%a15] lo:EcuM_Prv_dataShutdownInfo_st
	st.b	[%a4]0, %d15
	.loc 1 426 0
	jz.a	%a5, .L48
	.loc 1 433 0
	ld.bu	%d15, [%a15] lo:EcuM_Prv_dataShutdownInfo_st
	mov	%d2, 0
	jlt.u	%d15, 2, .L49
	.loc 1 472 0
	ret
.LVL50:
.L45:
	.loc 1 398 0
	mov	%e4, 10
	mov	%d6, 8
	mov	%d7, 16
	call	Det_ReportError
.LVL51:
	.loc 1 387 0
	mov	%d2, 1
.LVL52:
.L50:
	.loc 1 472 0
	ret
.LVL53:
.L47:
	.loc 1 449 0
	mov	%e4, 10
	mov	%d6, 8
	mov	%d7, 26
	call	Det_ReportError
.LVL54:
	.loc 1 451 0
	mov	%d2, 1
	ret
.LVL55:
.L49:
	.loc 1 437 0
	ld.hu	%d15, [%a2] 2
	st.h	[%a5]0, %d15
	ret
.LVL56:
.L46:
	.loc 1 406 0
	mov	%e4, 10
	mov	%d6, 8
	mov	%d7, 27
	call	Det_ReportError
.LVL57:
	.loc 1 387 0
	mov	%d2, 1
.LVL58:
	j	.L50
.LVL59:
.L48:
	.loc 1 429 0
	mov	%e4, 10
	mov	%d6, 8
	mov	%d7, 27
	call	Det_ReportError
.LVL60:
	mov	%d2, 0
	ret
.LFE75:
	.size	EcuM_GetLastShutdownTarget, .-EcuM_GetLastShutdownTarget
.section .text.EcuM_Rb_GetLastShutdownInfo,"ax",@progbits
	.align 1
	.global	EcuM_Rb_GetLastShutdownInfo
	.type	EcuM_Rb_GetLastShutdownInfo, @function
EcuM_Rb_GetLastShutdownInfo:
.LFB76:
	.loc 1 487 0
.LVL61:
	.loc 1 493 0
	movh.a	%a15, hi:EcuM_Prv_flgIsModuleInitialised_b
	ld.bu	%d15, [%a15] lo:EcuM_Prv_flgIsModuleInitialised_b
	jz	%d15, .L61
	.loc 1 501 0
	jz.a	%a4, .L62
.LVL62:
	.loc 1 516 0
	movh.a	%a15, hi:EcuM_Prv_flgNvMReadStatus_b
	ld.bu	%d15, [%a15] lo:EcuM_Prv_flgNvMReadStatus_b
	jz	%d15, .L63
	.loc 1 519 0
	movh.a	%a15, hi:EcuM_Prv_dataShutdownInfo_st
	lea	%a15, [%a15] lo:EcuM_Prv_dataShutdownInfo_st
	ld.bu	%d15, [%a15] 1
	mov	%d2, 0
	st.b	[%a4]0, %d15
	ret
.L63:
	.loc 1 529 0
	mov	%e4, 10
	mov	%d6, 48
	mov	%d7, 26
	call	Det_ReportError
.LVL63:
	.loc 1 531 0
	mov	%d2, 1
	ret
.LVL64:
.L61:
	.loc 1 497 0
	mov	%e4, 10
	mov	%d6, 48
	mov	%d7, 16
	call	Det_ReportError
.LVL65:
.L53:
	.loc 1 487 0
	mov	%d2, 1
.LVL66:
	.loc 1 535 0
	ret
.LVL67:
.L62:
	.loc 1 505 0
	mov	%e4, 10
	mov	%d6, 48
	mov	%d7, 27
	call	Det_ReportError
.LVL68:
	j	.L53
.LFE76:
	.size	EcuM_Rb_GetLastShutdownInfo, .-EcuM_Rb_GetLastShutdownInfo
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
	.uaword	.LFB71
	.uaword	.LFE71-.LFB71
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB72
	.uaword	.LFE72-.LFB72
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB73
	.uaword	.LFE73-.LFB73
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB74
	.uaword	.LFE74-.LFB74
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB75
	.uaword	.LFE75-.LFB75
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB76
	.uaword	.LFE76-.LFB76
	.align 2
.LEFDE10:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 4 ".\\output\\inc/..\\..\\rte\\Rte_Type.h"
	.file 5 ".\\output\\inc/..\\..\\bsw\\EcuM\\api\\EcuM_Types.h"
	.file 6 ".\\output\\inc/..\\..\\bsw\\EcuM\\api\\EcuM.h"
	.file 7 "bsw\\EcuM\\src\\EcuM_Prv.h"
	.file 8 ".\\output\\inc/..\\..\\bsw\\Det\\api\\Det.h"
	.file 9 ".\\output\\inc/..\\..\\bsw\\NvM\\api\\NvM.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xa57
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\EcuM\\src\\EcuM_ShutdownServices.c"
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
	.uaword	0x1cf
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
	.uaword	0x1fb
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
	.uaword	0x1cf
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x3
	.string	"Std_ReturnType"
	.byte	0x3
	.byte	0x60
	.uaword	0x1c2
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x4
	.string	"EcuM_ShutdownCauseType"
	.byte	0x4
	.uahalf	0x1b0
	.uaword	0x1c2
	.uleb128 0x4
	.string	"EcuM_ShutdownModeType"
	.byte	0x4
	.uahalf	0x1b4
	.uaword	0x1ed
	.uleb128 0x4
	.string	"EcuM_ShutdownTargetType"
	.byte	0x4
	.uahalf	0x1b6
	.uaword	0x1c2
	.uleb128 0x4
	.string	"NvM_BlockIdType"
	.byte	0x4
	.uahalf	0x1ca
	.uaword	0x1ed
	.uleb128 0x5
	.byte	0x1
	.byte	0x5
	.byte	0x58
	.uaword	0x344
	.uleb128 0x6
	.uaword	.LASF0
	.byte	0x5
	.byte	0x5a
	.uaword	0x2b8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"EcuM_ShutdownInfoType"
	.byte	0x5
	.byte	0x5e
	.uaword	0x32d
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.byte	0x60
	.uaword	0x3a0
	.uleb128 0x7
	.string	"ShutdownTarget"
	.byte	0x5
	.byte	0x62
	.uaword	0x2f5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF0
	.byte	0x5
	.byte	0x63
	.uaword	0x2b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x7
	.string	"mode"
	.byte	0x5
	.byte	0x64
	.uaword	0x2d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x3
	.string	"EcuM_ShutdownTargetInfoType"
	.byte	0x5
	.byte	0x69
	.uaword	0x361
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x8
	.byte	0x1
	.string	"EcuM_SelectShutdownCause"
	.byte	0x1
	.byte	0x37
	.byte	0x1
	.uaword	0x296
	.uaword	.LFB71
	.uaword	.LFE71
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x498
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x1
	.byte	0x37
	.uaword	0x2b8
	.uaword	.LLST0
	.uleb128 0xa
	.uaword	.LASF2
	.byte	0x1
	.byte	0x3b
	.uaword	0x296
	.uaword	.LLST1
	.uleb128 0xb
	.uaword	.LVL2
	.uaword	0x9fb
	.uaword	0x43d
	.uleb128 0xc
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x40
	.uleb128 0xc
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x4b
	.uleb128 0xc
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0xc
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3a
	.byte	0
	.uleb128 0xb
	.uaword	.LVL6
	.uaword	0xa2e
	.uaword	0x456
	.uleb128 0xc
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0xc
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x26
	.byte	0
	.uleb128 0xb
	.uaword	.LVL9
	.uaword	0x9fb
	.uaword	0x478
	.uleb128 0xc
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x43
	.uleb128 0xc
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x4b
	.uleb128 0xc
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0xc
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3a
	.byte	0
	.uleb128 0xd
	.uaword	.LVL12
	.uaword	0x9fb
	.uleb128 0xc
	.byte	0x1
	.byte	0x57
	.byte	0x2
	.byte	0x9
	.byte	0xfe
	.uleb128 0xc
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x4b
	.uleb128 0xc
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0xc
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.string	"EcuM_GetShutdownCause"
	.byte	0x1
	.byte	0x8d
	.byte	0x1
	.uaword	0x296
	.uaword	.LFB72
	.uaword	.LFE72
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x526
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x1
	.byte	0x8e
	.uaword	0x526
	.uaword	.LLST2
	.uleb128 0xa
	.uaword	.LASF3
	.byte	0x1
	.byte	0x97
	.uaword	0x296
	.uaword	.LLST3
	.uleb128 0xb
	.uaword	.LVL16
	.uaword	0x9fb
	.uaword	0x507
	.uleb128 0xc
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x40
	.uleb128 0xc
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x4c
	.uleb128 0xc
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0xc
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3a
	.byte	0
	.uleb128 0xd
	.uaword	.LVL18
	.uaword	0x9fb
	.uleb128 0xc
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x42
	.uleb128 0xc
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x4c
	.uleb128 0xc
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0xc
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.uaword	0x2b8
	.uleb128 0x8
	.byte	0x1
	.string	"EcuM_SelectShutdownTarget"
	.byte	0x1
	.byte	0xc0
	.byte	0x1
	.uaword	0x296
	.uaword	.LFB73
	.uaword	.LFE73
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x609
	.uleb128 0x9
	.uaword	.LASF4
	.byte	0x1
	.byte	0xc1
	.uaword	0x2f5
	.uaword	.LLST4
	.uleb128 0x9
	.uaword	.LASF5
	.byte	0x1
	.byte	0xc2
	.uaword	0x2d7
	.uaword	.LLST5
	.uleb128 0xa
	.uaword	.LASF2
	.byte	0x1
	.byte	0xc5
	.uaword	0x296
	.uaword	.LLST6
	.uleb128 0xb
	.uaword	.LVL21
	.uaword	0x9fb
	.uaword	0x5ae
	.uleb128 0xc
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x40
	.uleb128 0xc
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x36
	.uleb128 0xc
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0xc
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3a
	.byte	0
	.uleb128 0xb
	.uaword	.LVL25
	.uaword	0x9fb
	.uaword	0x5d0
	.uleb128 0xc
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x46
	.uleb128 0xc
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x36
	.uleb128 0xc
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0xc
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3a
	.byte	0
	.uleb128 0xb
	.uaword	.LVL29
	.uaword	0xa2e
	.uaword	0x5e9
	.uleb128 0xc
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0xc
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x26
	.byte	0
	.uleb128 0xd
	.uaword	.LVL33
	.uaword	0x9fb
	.uleb128 0xc
	.byte	0x1
	.byte	0x57
	.byte	0x2
	.byte	0x9
	.byte	0xfe
	.uleb128 0xc
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x36
	.uleb128 0xc
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0xc
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.string	"EcuM_GetShutdownTarget"
	.byte	0x1
	.uahalf	0x131
	.byte	0x1
	.uaword	0x296
	.uaword	.LFB74
	.uaword	.LFE74
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x708
	.uleb128 0x10
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x132
	.uaword	0x708
	.uaword	.LLST7
	.uleb128 0x10
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x133
	.uaword	0x70e
	.uaword	.LLST8
	.uleb128 0x11
	.string	"dataShutdownTarget_u8"
	.byte	0x1
	.uahalf	0x136
	.uaword	0x2f5
	.uaword	.LLST9
	.uleb128 0x11
	.string	"dataMode_u16"
	.byte	0x1
	.uahalf	0x137
	.uaword	0x2d7
	.uaword	.LLST10
	.uleb128 0x12
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x139
	.uaword	0x296
	.uaword	.LLST11
	.uleb128 0xb
	.uaword	.LVL43
	.uaword	0x9fb
	.uaword	0x6c7
	.uleb128 0xc
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x40
	.uleb128 0xc
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x39
	.uleb128 0xc
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0xc
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3a
	.byte	0
	.uleb128 0xb
	.uaword	.LVL45
	.uaword	0x9fb
	.uaword	0x6e9
	.uleb128 0xc
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x42
	.uleb128 0xc
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x39
	.uleb128 0xc
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0xc
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3a
	.byte	0
	.uleb128 0xd
	.uaword	.LVL47
	.uaword	0x9fb
	.uleb128 0xc
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x4b
	.uleb128 0xc
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x39
	.uleb128 0xc
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0xc
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.uaword	0x2f5
	.uleb128 0xe
	.byte	0x4
	.uaword	0x2d7
	.uleb128 0xf
	.byte	0x1
	.string	"EcuM_GetLastShutdownTarget"
	.byte	0x1
	.uahalf	0x180
	.byte	0x1
	.uaword	0x296
	.uaword	.LFB75
	.uaword	.LFE75
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x7fe
	.uleb128 0x10
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x181
	.uaword	0x708
	.uaword	.LLST12
	.uleb128 0x10
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x182
	.uaword	0x70e
	.uaword	.LLST13
	.uleb128 0x12
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x185
	.uaword	0x296
	.uaword	.LLST14
	.uleb128 0xb
	.uaword	.LVL51
	.uaword	0x9fb
	.uaword	0x79b
	.uleb128 0xc
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x40
	.uleb128 0xc
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x38
	.uleb128 0xc
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0xc
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3a
	.byte	0
	.uleb128 0xb
	.uaword	.LVL54
	.uaword	0x9fb
	.uaword	0x7bd
	.uleb128 0xc
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x4a
	.uleb128 0xc
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x38
	.uleb128 0xc
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0xc
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3a
	.byte	0
	.uleb128 0xb
	.uaword	.LVL57
	.uaword	0x9fb
	.uaword	0x7df
	.uleb128 0xc
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x4b
	.uleb128 0xc
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x38
	.uleb128 0xc
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0xc
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3a
	.byte	0
	.uleb128 0xd
	.uaword	.LVL60
	.uaword	0x9fb
	.uleb128 0xc
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x4b
	.uleb128 0xc
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x38
	.uleb128 0xc
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0xc
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.string	"EcuM_Rb_GetLastShutdownInfo"
	.byte	0x1
	.uahalf	0x1e5
	.byte	0x1
	.uaword	0x296
	.uaword	.LFB76
	.uaword	.LFE76
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x8c8
	.uleb128 0x13
	.string	"shutdownCauseInfo"
	.byte	0x1
	.uahalf	0x1e6
	.uaword	0x8c8
	.uaword	.LLST15
	.uleb128 0x12
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x1e9
	.uaword	0x296
	.uaword	.LLST16
	.uleb128 0xb
	.uaword	.LVL63
	.uaword	0x9fb
	.uaword	0x885
	.uleb128 0xc
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x4a
	.uleb128 0xc
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x8
	.byte	0x30
	.uleb128 0xc
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0xc
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3a
	.byte	0
	.uleb128 0xb
	.uaword	.LVL65
	.uaword	0x9fb
	.uaword	0x8a8
	.uleb128 0xc
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x40
	.uleb128 0xc
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x8
	.byte	0x30
	.uleb128 0xc
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0xc
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3a
	.byte	0
	.uleb128 0xd
	.uaword	.LVL68
	.uaword	0x9fb
	.uleb128 0xc
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x4b
	.uleb128 0xc
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x8
	.byte	0x30
	.uleb128 0xc
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0xc
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.uaword	0x344
	.uleb128 0x14
	.string	"EcuM_Rb_dataShutdownInfo_st"
	.byte	0x6
	.byte	0x5b
	.uaword	0x3a0
	.byte	0x1
	.byte	0x1
	.uleb128 0x14
	.string	"EcuM_Prv_dataSelectedShutdownCause_u8"
	.byte	0x7
	.byte	0xbb
	.uaword	0x2b8
	.byte	0x1
	.byte	0x1
	.uleb128 0x14
	.string	"EcuM_Prv_dataSelectedShutdownTarget_st"
	.byte	0x7
	.byte	0xd1
	.uaword	0x3a0
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.string	"EcuM_Prv_flgIsModuleInitialised_b"
	.byte	0x7
	.uahalf	0x102
	.uaword	0x266
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.string	"EcuM_Prv_flgShutdownInfoDoNotUpdate_b"
	.byte	0x7
	.uahalf	0x10a
	.uaword	0x266
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.string	"EcuM_Prv_flgNvMReadStatus_b"
	.byte	0x7
	.uahalf	0x11f
	.uaword	0x266
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.string	"EcuM_Prv_dataShutdownInfo_st"
	.byte	0x7
	.uahalf	0x13e
	.uaword	0x3a0
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.byte	0x1
	.string	"Det_ReportError"
	.byte	0x8
	.byte	0x70
	.byte	0x1
	.uaword	0x296
	.byte	0x1
	.uaword	0xa2e
	.uleb128 0x17
	.uaword	0x1ed
	.uleb128 0x17
	.uaword	0x1c2
	.uleb128 0x17
	.uaword	0x1c2
	.uleb128 0x17
	.uaword	0x1c2
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"NvM_SetRamBlockStatus"
	.byte	0x9
	.uahalf	0x198
	.byte	0x1
	.uaword	0x296
	.byte	0x1
	.uleb128 0x17
	.uaword	0x315
	.uleb128 0x17
	.uaword	0x266
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x9
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x10
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
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
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL1
	.uaword	.LVL4
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL6-1
	.uaword	.LVL7
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL8
	.uaword	.LVL10
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL11
	.uaword	.LFE71
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL3
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL4
	.uaword	.LVL6
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL7
	.uaword	.LFE71
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL13
	.uaword	.LVL16-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL16-1
	.uaword	.LVL17
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL17
	.uaword	.LVL18-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL18-1
	.uaword	.LFE72
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL15
	.uaword	.LFE72
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL20
	.uaword	.LVL23
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL23
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
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL29-1
	.uaword	.LVL30
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL30
	.uaword	.LVL32
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL32
	.uaword	.LFE73
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
	.byte	0x55
	.uaword	.LVL20
	.uaword	.LVL23
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL24
	.uaword	.LVL26
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL26
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL27
	.uaword	.LVL30
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL30
	.uaword	.LVL32
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL32
	.uaword	.LFE73
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL19
	.uaword	.LVL22
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL23
	.uaword	.LVL26
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL26
	.uaword	.LVL31
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL31
	.uaword	.LFE73
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL34
	.uaword	.LVL43-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL43-1
	.uaword	.LVL44
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL44
	.uaword	.LVL45-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL45-1
	.uaword	.LVL46
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL46
	.uaword	.LVL47-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL47-1
	.uaword	.LFE74
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL34
	.uaword	.LVL43-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL43-1
	.uaword	.LVL44
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL44
	.uaword	.LVL45-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL45-1
	.uaword	.LVL46
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL46
	.uaword	.LVL47-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL47-1
	.uaword	.LFE74
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL36
	.uaword	.LVL38
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL38
	.uaword	.LVL42
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL46
	.uaword	.LFE74
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL37
	.uaword	.LVL38
	.uahalf	0x2
	.byte	0x8f
	.sleb128 2
	.uaword	.LVL38
	.uaword	.LVL42
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL46
	.uaword	.LVL47-1
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL34
	.uaword	.LVL39
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL39
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL40
	.uaword	.LVL41
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL41
	.uaword	.LVL42
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL42
	.uaword	.LFE74
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL48
	.uaword	.LVL51-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL51-1
	.uaword	.LVL53
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL53
	.uaword	.LVL54-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL54-1
	.uaword	.LVL55
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL55
	.uaword	.LVL57-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL57-1
	.uaword	.LVL59
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL59
	.uaword	.LVL60-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL60-1
	.uaword	.LFE75
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL48
	.uaword	.LVL51-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL51-1
	.uaword	.LVL53
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL53
	.uaword	.LVL54-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL54-1
	.uaword	.LVL55
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL55
	.uaword	.LVL57-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL57-1
	.uaword	.LVL59
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL59
	.uaword	.LVL60-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL60-1
	.uaword	.LFE75
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL48
	.uaword	.LVL49
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL49
	.uaword	.LVL50
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL50
	.uaword	.LVL52
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL53
	.uaword	.LVL54
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL54
	.uaword	.LVL55
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL55
	.uaword	.LVL56
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL56
	.uaword	.LVL58
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL58
	.uaword	.LVL59
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL59
	.uaword	.LFE75
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL61
	.uaword	.LVL63-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL63-1
	.uaword	.LVL64
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL64
	.uaword	.LVL65-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL65-1
	.uaword	.LVL67
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL67
	.uaword	.LVL68-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL68-1
	.uaword	.LFE76
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL61
	.uaword	.LVL62
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL62
	.uaword	.LVL63
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL63
	.uaword	.LVL66
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL66
	.uaword	.LVL67
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL67
	.uaword	.LFE76
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x44
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB71
	.uaword	.LFE71-.LFB71
	.uaword	.LFB72
	.uaword	.LFE72-.LFB72
	.uaword	.LFB73
	.uaword	.LFE73-.LFB73
	.uaword	.LFB74
	.uaword	.LFE74-.LFB74
	.uaword	.LFB75
	.uaword	.LFE75-.LFB75
	.uaword	.LFB76
	.uaword	.LFE76-.LFB76
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB71
	.uaword	.LFE71
	.uaword	.LFB72
	.uaword	.LFE72
	.uaword	.LFB73
	.uaword	.LFE73
	.uaword	.LFB74
	.uaword	.LFE74
	.uaword	.LFB75
	.uaword	.LFE75
	.uaword	.LFB76
	.uaword	.LFE76
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF2:
	.string	"returnvalue_u8"
.LASF3:
	.string	"return_value_u8"
.LASF5:
	.string	"shutdownMode"
.LASF0:
	.string	"ShutdownCause"
.LASF1:
	.string	"shutdownCause"
.LASF4:
	.string	"shutdownTarget"
	.extern	EcuM_Prv_dataShutdownInfo_st,STT_OBJECT,4
	.extern	EcuM_Prv_flgNvMReadStatus_b,STT_OBJECT,1
	.extern	EcuM_Prv_dataSelectedShutdownTarget_st,STT_OBJECT,4
	.extern	NvM_SetRamBlockStatus,STT_FUNC,0
	.extern	EcuM_Rb_dataShutdownInfo_st,STT_OBJECT,4
	.extern	EcuM_Prv_dataSelectedShutdownCause_u8,STT_OBJECT,1
	.extern	EcuM_Prv_flgShutdownInfoDoNotUpdate_b,STT_OBJECT,1
	.extern	Det_ReportError,STT_FUNC,0
	.extern	EcuM_Prv_flgIsModuleInitialised_b,STT_OBJECT,1
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
