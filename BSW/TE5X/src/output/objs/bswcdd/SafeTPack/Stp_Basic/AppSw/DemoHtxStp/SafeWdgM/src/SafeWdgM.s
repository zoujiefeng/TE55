	.file	"SafeWdgM.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.SafeWdgM_Init,"ax",@progbits
	.align 1
	.global	SafeWdgM_Init
	.type	SafeWdgM_Init, @function
SafeWdgM_Init:
.LFB19:
	.file 1 "bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\SafeWdgM\\src\\SafeWdgM.c"
	.loc 1 116 0
.LVL0:
	.loc 1 121 0
	jz	%d4, .L2
.LVL1:
.L3:
	.loc 1 130 0
	mov	%d4, 3
	j	AppCbk_ErrorHandler
.LVL2:
.L2:
	.loc 1 124 0
	movh.a	%a4, hi:HtxWdgIf_ConfigRoot
	lea	%a4, [%a4] lo:HtxWdgIf_ConfigRoot
	call	HtxWdgIf_Init
.LVL3:
	.loc 1 128 0
	ne	%d15, %d2, 13
	and.ne	%d15, %d2, 1
	jnz	%d15, .L3
	.loc 1 133 0
	ret
.LFE19:
	.size	SafeWdgM_Init, .-SafeWdgM_Init
.section .text.SafeWdgM_DeInit,"ax",@progbits
	.align 1
	.global	SafeWdgM_DeInit
	.type	SafeWdgM_DeInit, @function
SafeWdgM_DeInit:
.LFB20:
	.loc 1 167 0
	.loc 1 171 0
	call	HtxWdgIf_DeInit
.LVL4:
	.loc 1 174 0
	ne	%d15, %d2, 13
	and.ne	%d15, %d2, 1
	jnz	%d15, .L7
	ret
.L7:
	.loc 1 176 0
	mov	%d4, 4
	j	AppCbk_ErrorHandler
.LVL5:
.LFE20:
	.size	SafeWdgM_DeInit, .-SafeWdgM_DeInit
.section .text.SafeWdgM_Activate,"ax",@progbits
	.align 1
	.global	SafeWdgM_Activate
	.type	SafeWdgM_Activate, @function
SafeWdgM_Activate:
.LFB21:
	.loc 1 213 0
	.loc 1 216 0
	call	HtxWdgIf_Activate
.LVL6:
	.loc 1 219 0
	ne	%d15, %d2, 13
	and.ne	%d15, %d2, 1
	jnz	%d15, .L10
	ret
.L10:
	.loc 1 221 0
	mov	%d4, 5
	j	AppCbk_ErrorHandler
.LVL7:
.LFE21:
	.size	SafeWdgM_Activate, .-SafeWdgM_Activate
.section .text.SafeWdgM_GetSeed,"ax",@progbits
	.align 1
	.global	SafeWdgM_GetSeed
	.type	SafeWdgM_GetSeed, @function
SafeWdgM_GetSeed:
.LFB22:
	.loc 1 258 0
.LVL8:
	sub.a	%SP, 8
.LCFI0:
	.loc 1 258 0
	mov.aa	%a15, %a4
	.loc 1 262 0
	mov	%d15, -1
	lea	%a4, [%SP] 8
.LVL9:
	st.b	[+%a4]-1, %d15
	.loc 1 264 0
	call	HtxWdgIf_GetSeed
.LVL10:
	.loc 1 267 0
	eq	%d2, %d2, 13
.LVL11:
	jz	%d2, .L17
	.loc 1 274 0
	ld.bu	%d15, [%SP] 7
	eq	%d2, %d15, 255
	jnz	%d2, .L11
	.loc 1 276 0
	st.b	[%a15]0, %d15
.L11:
	ret
.L17:
	.loc 1 269 0
	mov	%d4, 6
	j	AppCbk_ErrorHandler
.LVL12:
.LFE22:
	.size	SafeWdgM_GetSeed, .-SafeWdgM_GetSeed
.section .text.SafeWdgM_Service,"ax",@progbits
	.align 1
	.global	SafeWdgM_Service
	.type	SafeWdgM_Service, @function
SafeWdgM_Service:
.LFB23:
	.loc 1 315 0
	.loc 1 322 0
	call	TstM_GetConsolidatedSignature
.LVL13:
	mov	%d4, %d2
	call	HtxWdgIf_Service
.LVL14:
	movh.a	%a15, hi:ServiceResult
	.loc 1 326 0
	ne	%d15, %d2, 13
	.loc 1 322 0
	st.b	[%a15] lo:ServiceResult, %d2
	.loc 1 326 0
	and.ne	%d15, %d2, 1
	jz	%d15, .L19
	.loc 1 328 0
	mov	%d4, 10
	call	AppCbk_ErrorHandler
.LVL15:
.L19:
	.loc 1 332 0
	call	TstM_InvalidateSeed
.LVL16:
	.loc 1 333 0
	mov	%d4, 255
	call	BSW_vidSetProgFlowSeed
.LVL17:
	.loc 1 334 0
	j	TstM_InvalidateRunTimeTestData
.LVL18:
.LFE23:
	.size	SafeWdgM_Service, .-SafeWdgM_Service
.section .text.SafeWdgM_UserRequest,"ax",@progbits
	.align 1
	.global	SafeWdgM_UserRequest
	.type	SafeWdgM_UserRequest, @function
SafeWdgM_UserRequest:
.LFB24:
	.loc 1 371 0
.LVL19:
	.loc 1 375 0
	call	HtxWdgIf_UserRequest
.LVL20:
	.loc 1 378 0
	jeq	%d2, 1, .L23
	.loc 1 380 0
	mov	%d4, 7
	j	AppCbk_ErrorHandler
.LVL21:
.L23:
	ret
.LFE24:
	.size	SafeWdgM_UserRequest, .-SafeWdgM_UserRequest
.section .text.SafeWdgM_GetJobResult,"ax",@progbits
	.align 1
	.global	SafeWdgM_GetJobResult
	.type	SafeWdgM_GetJobResult, @function
SafeWdgM_GetJobResult:
.LFB25:
	.loc 1 420 0
	.loc 1 424 0
	j	HtxWdgIf_GetJobResult
.LVL22:
.LFE25:
	.size	SafeWdgM_GetJobResult, .-SafeWdgM_GetJobResult
.section .text.SafeWdgM_GetErrCntr,"ax",@progbits
	.align 1
	.global	SafeWdgM_GetErrCntr
	.type	SafeWdgM_GetErrCntr, @function
SafeWdgM_GetErrCntr:
.LFB26:
	.loc 1 465 0
.LVL23:
	sub.a	%SP, 8
.LCFI1:
	.loc 1 465 0
	mov.aa	%a15, %a4
	.loc 1 469 0
	mov	%d15, 0
	lea	%a4, [%SP] 8
.LVL24:
	st.b	[+%a4]-1, %d15
	.loc 1 472 0
	call	HtxWdgIf_GetErrCntr
.LVL25:
	.loc 1 475 0
	eq	%d2, %d2, 13
.LVL26:
	jz	%d2, .L29
	.loc 1 482 0
	ld.bu	%d15, [%SP] 7
	st.b	[%a15]0, %d15
	ret
.L29:
	.loc 1 477 0
	mov	%d4, 8
	j	AppCbk_ErrorHandler
.LVL27:
.LFE26:
	.size	SafeWdgM_GetErrCntr, .-SafeWdgM_GetErrCntr
.section .text.SafeWdgM_GetWdgInfo,"ax",@progbits
	.align 1
	.global	SafeWdgM_GetWdgInfo
	.type	SafeWdgM_GetWdgInfo, @function
SafeWdgM_GetWdgInfo:
.LFB27:
	.loc 1 522 0
	.loc 1 526 0
	call	HtxWdgIf_GetWdgInfo
.LVL28:
	.loc 1 529 0
	jeq	%d2, 1, .L30
	.loc 1 531 0
	mov	%d4, 9
	j	AppCbk_ErrorHandler
.LVL29:
.L30:
	ret
.LFE27:
	.size	SafeWdgM_GetWdgInfo, .-SafeWdgM_GetWdgInfo
.section .text.SafeWdgM_GetState,"ax",@progbits
	.align 1
	.global	SafeWdgM_GetState
	.type	SafeWdgM_GetState, @function
SafeWdgM_GetState:
.LFB28:
	.loc 1 570 0
	sub.a	%SP, 8
.LCFI2:
	.loc 1 574 0
	call	HtxWdgIf_GetState
.LVL30:
	.loc 1 578 0
	extr.u	%d2, %d2, 0, 16
	ret
.LFE28:
	.size	SafeWdgM_GetState, .-SafeWdgM_GetState
	.global	ServiceResult
.section .bss.a1.ServiceResult,"aw",@nobits
	.type	ServiceResult, @object
	.size	ServiceResult, 1
ServiceResult:
	.zero	1
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
	.uaword	.LFB19
	.uaword	.LFE19-.LFB19
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB20
	.uaword	.LFE20-.LFB20
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB21
	.uaword	.LFE21-.LFB21
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB22
	.uaword	.LFE22-.LFB22
	.byte	0x4
	.uaword	.LCFI0-.LFB22
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB23
	.uaword	.LFE23-.LFB23
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB24
	.uaword	.LFE24-.LFB24
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB25
	.uaword	.LFE25-.LFB25
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB26
	.uaword	.LFE26-.LFB26
	.byte	0x4
	.uaword	.LCFI1-.LFB26
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB27
	.uaword	.LFE27-.LFB27
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB28
	.uaword	.LFE28-.LFB28
	.byte	0x4
	.uaword	.LCFI2-.LFB28
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE18:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\inc\\AppCbk.h"
	.file 4 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\inc\\HtxWdgIf_Types.h"
	.file 5 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\inc\\HtxWdgIf.h"
	.file 6 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\TstM\\inc\\TstM.h"
	.file 7 ".\\output\\inc/..\\..\\bswcdd\\BSW\\bswsrv.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xd13
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\SafeWdgM\\src\\SafeWdgM.c"
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
	.uaword	0x1ee
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
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
	.uaword	0x248
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x3
	.string	"AppCbk_ErrorIdType"
	.byte	0x3
	.byte	0x48
	.uaword	0x23a
	.uleb128 0x4
	.uaword	.LASF0
	.byte	0x1
	.byte	0x4
	.byte	0x47
	.uaword	0x421
	.uleb128 0x5
	.string	"HTXWDGIF_JOB_ACCEPTED"
	.sleb128 1
	.uleb128 0x5
	.string	"HTXWDGIF_JOB_FAILED"
	.sleb128 2
	.uleb128 0x5
	.string	"HTXWDGIF_JOB_FAILED_CRC"
	.sleb128 3
	.uleb128 0x5
	.string	"HTXWDGIF_JOB_INV_PARAM"
	.sleb128 4
	.uleb128 0x5
	.string	"HTXWDGIF_JOB_COM_ERR"
	.sleb128 5
	.uleb128 0x5
	.string	"HTXWDGIF_JOB_BUSY"
	.sleb128 6
	.uleb128 0x5
	.string	"HTXWDGIF_JOB_INV_STATE"
	.sleb128 7
	.uleb128 0x5
	.string	"HTXWDGIF_JOB_READBACK_FAIL"
	.sleb128 8
	.uleb128 0x5
	.string	"HTXWDGIF_JOB_INIT_FAIL"
	.sleb128 9
	.uleb128 0x5
	.string	"HTXWDGIF_JOB_RD_DATA_FAIL"
	.sleb128 10
	.uleb128 0x5
	.string	"HTXWDGIF_JOB_FAILED_SERVICE"
	.sleb128 11
	.uleb128 0x5
	.string	"HTXWDGIF_JOB_INVALID_SEED"
	.sleb128 12
	.uleb128 0x5
	.string	"HTXWDGIF_JOB_SUCCESS"
	.sleb128 13
	.byte	0
	.uleb128 0x6
	.uaword	.LASF0
	.byte	0x4
	.byte	0x56
	.uaword	0x2cc
	.uleb128 0x4
	.uaword	.LASF1
	.byte	0x1
	.byte	0x4
	.byte	0x59
	.uaword	0x4a2
	.uleb128 0x5
	.string	"HTXWDGIF_INT_SWDG_UNKNOWN"
	.sleb128 1
	.uleb128 0x5
	.string	"HTXWDGIF_INT_SWDG_INIT"
	.sleb128 2
	.uleb128 0x5
	.string	"HTXWDGIF_INT_SWDG_ACTIVE"
	.sleb128 3
	.uleb128 0x5
	.string	"HTXWDGIF_INT_SWDG_FAIL"
	.sleb128 4
	.byte	0
	.uleb128 0x6
	.uaword	.LASF1
	.byte	0x4
	.byte	0x60
	.uaword	0x42c
	.uleb128 0x4
	.uaword	.LASF2
	.byte	0x1
	.byte	0x4
	.byte	0x62
	.uaword	0x58c
	.uleb128 0x5
	.string	"HTXWDGIF_EXT_TLF_NONE"
	.sleb128 0
	.uleb128 0x5
	.string	"HTXWDGIF_EXT_TLF_INIT"
	.sleb128 1
	.uleb128 0x5
	.string	"HTXWDGIF_EXT_TLF_NORMAL"
	.sleb128 2
	.uleb128 0x5
	.string	"HTXWDGIF_EXT_TLF_SLEEP"
	.sleb128 3
	.uleb128 0x5
	.string	"HTXWDGIF_EXT_TLF_STANDBY"
	.sleb128 4
	.uleb128 0x5
	.string	"HTXWDGIF_EXT_TLF_WAKE"
	.sleb128 5
	.uleb128 0x5
	.string	"HTXWDGIF_EXT_TLF_UNDEFINED1"
	.sleb128 6
	.uleb128 0x5
	.string	"HTXWDGIF_EXT_TLF_UNDEFINED2"
	.sleb128 7
	.byte	0
	.uleb128 0x6
	.uaword	.LASF2
	.byte	0x4
	.byte	0x6d
	.uaword	0x4ad
	.uleb128 0x7
	.uaword	.LASF3
	.byte	0x2
	.byte	0x4
	.byte	0x73
	.uaword	0x5c8
	.uleb128 0x8
	.string	"ReqCmd"
	.byte	0x4
	.byte	0x75
	.uaword	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"UserData"
	.byte	0x4
	.byte	0x76
	.uaword	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x6
	.uaword	.LASF3
	.byte	0x4
	.byte	0x77
	.uaword	0x597
	.uleb128 0x7
	.uaword	.LASF4
	.byte	0x8
	.byte	0x4
	.byte	0x7a
	.uaword	0x61a
	.uleb128 0x8
	.string	"DriverIntConfigPtr"
	.byte	0x4
	.byte	0x7c
	.uaword	0x61a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"DriverExtConfigPtr"
	.byte	0x4
	.byte	0x7d
	.uaword	0x61a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x9
	.uaword	0x61f
	.uleb128 0xa
	.byte	0x4
	.uaword	0x625
	.uleb128 0xb
	.uleb128 0x6
	.uaword	.LASF4
	.byte	0x4
	.byte	0x7e
	.uaword	0x5d3
	.uleb128 0x7
	.uaword	.LASF5
	.byte	0x2
	.byte	0x4
	.byte	0x80
	.uaword	0x66a
	.uleb128 0x8
	.string	"IntWdgState"
	.byte	0x4
	.byte	0x82
	.uaword	0x4a2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"ExtWdgState"
	.byte	0x4
	.byte	0x83
	.uaword	0x58c
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x6
	.uaword	.LASF5
	.byte	0x4
	.byte	0x84
	.uaword	0x631
	.uleb128 0x9
	.uaword	0x1e1
	.uleb128 0xa
	.byte	0x4
	.uaword	0x1e1
	.uleb128 0xc
	.byte	0x1
	.string	"SafeWdgM_Init"
	.byte	0x1
	.byte	0x73
	.byte	0x1
	.uaword	.LFB19
	.uaword	.LFE19
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x6ec
	.uleb128 0xd
	.string	"ConfigIdx"
	.byte	0x1
	.byte	0x73
	.uaword	0x1e1
	.uaword	.LLST0
	.uleb128 0xe
	.string	"InitResult"
	.byte	0x1
	.byte	0x75
	.uaword	0x421
	.uaword	.LLST1
	.uleb128 0xf
	.uaword	.LVL2
	.byte	0x1
	.uaword	0xaf0
	.uaword	0x6e2
	.uleb128 0x10
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.uleb128 0x11
	.uaword	.LVL3
	.uaword	0xb14
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.string	"SafeWdgM_DeInit"
	.byte	0x1
	.byte	0xa6
	.byte	0x1
	.uaword	.LFB20
	.uaword	.LFE20
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x743
	.uleb128 0xe
	.string	"DeInitResult"
	.byte	0x1
	.byte	0xa8
	.uaword	0x421
	.uaword	.LLST2
	.uleb128 0x11
	.uaword	.LVL4
	.uaword	0xb46
	.uleb128 0x12
	.uaword	.LVL5
	.byte	0x1
	.uaword	0xaf0
	.uleb128 0x10
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.string	"SafeWdgM_Activate"
	.byte	0x1
	.byte	0xd4
	.byte	0x1
	.uaword	.LFB21
	.uaword	.LFE21
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x79e
	.uleb128 0xe
	.string	"ActivateResult"
	.byte	0x1
	.byte	0xd6
	.uaword	0x421
	.uaword	.LLST3
	.uleb128 0x11
	.uaword	.LVL6
	.uaword	0xb60
	.uleb128 0x12
	.uaword	.LVL7
	.byte	0x1
	.uaword	0xaf0
	.uleb128 0x10
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x35
	.byte	0
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"SafeWdgM_GetSeed"
	.byte	0x1
	.uahalf	0x101
	.byte	0x1
	.uaword	.LFB22
	.uaword	.LFE22
	.uaword	.LLST4
	.byte	0x1
	.uaword	0x82d
	.uleb128 0x14
	.string	"TestSeed"
	.byte	0x1
	.uahalf	0x101
	.uaword	0x67a
	.uaword	.LLST5
	.uleb128 0x15
	.string	"ResultGetSeed"
	.byte	0x1
	.uahalf	0x103
	.uaword	0x421
	.uaword	.LLST6
	.uleb128 0x16
	.string	"NewSeed"
	.byte	0x1
	.uahalf	0x104
	.uaword	0x1e1
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x17
	.uaword	.LVL10
	.uaword	0xb7c
	.uaword	0x81c
	.uleb128 0x10
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.byte	0
	.uleb128 0x12
	.uaword	.LVL12
	.byte	0x1
	.uaword	0xaf0
	.uleb128 0x10
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x36
	.byte	0
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"SafeWdgM_Service"
	.byte	0x1
	.uahalf	0x13a
	.byte	0x1
	.uaword	.LFB23
	.uaword	.LFE23
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x8a1
	.uleb128 0x11
	.uaword	.LVL13
	.uaword	0xba2
	.uleb128 0x11
	.uaword	.LVL14
	.uaword	0xbcb
	.uleb128 0x17
	.uaword	.LVL15
	.uaword	0xaf0
	.uaword	0x879
	.uleb128 0x10
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x11
	.uaword	.LVL16
	.uaword	0xbf5
	.uleb128 0x17
	.uaword	.LVL17
	.uaword	0xc0f
	.uaword	0x896
	.uleb128 0x10
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x19
	.uaword	.LVL18
	.byte	0x1
	.uaword	0xc36
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"SafeWdgM_UserRequest"
	.byte	0x1
	.uahalf	0x172
	.byte	0x1
	.uaword	.LFB24
	.uaword	.LFE24
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x927
	.uleb128 0x14
	.string	"UserCmd"
	.byte	0x1
	.uahalf	0x172
	.uaword	0x927
	.uaword	.LLST7
	.uleb128 0x14
	.string	"Size"
	.byte	0x1
	.uahalf	0x172
	.uaword	0x1e1
	.uaword	.LLST8
	.uleb128 0x1a
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x174
	.uaword	0x421
	.uaword	.LLST9
	.uleb128 0x17
	.uaword	.LVL20
	.uaword	0xc5c
	.uaword	0x916
	.uleb128 0x10
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.uleb128 0x12
	.uaword	.LVL21
	.byte	0x1
	.uaword	0xaf0
	.uleb128 0x10
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x37
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.uaword	0x5c8
	.uleb128 0x1b
	.byte	0x1
	.string	"SafeWdgM_GetJobResult"
	.byte	0x1
	.uahalf	0x1a3
	.byte	0x1
	.uaword	0x421
	.uaword	.LFB25
	.uaword	.LFE25
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x977
	.uleb128 0x1c
	.string	"RetVal"
	.byte	0x1
	.uahalf	0x1a5
	.uaword	0x421
	.uleb128 0x19
	.uaword	.LVL22
	.byte	0x1
	.uaword	0xc90
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"SafeWdgM_GetErrCntr"
	.byte	0x1
	.uahalf	0x1d0
	.byte	0x1
	.uaword	.LFB26
	.uaword	.LFE26
	.uaword	.LLST10
	.byte	0x1
	.uaword	0x9ff
	.uleb128 0x14
	.string	"ErrCtr"
	.byte	0x1
	.uahalf	0x1d0
	.uaword	0x9ff
	.uaword	.LLST11
	.uleb128 0x1a
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x1d2
	.uaword	0x421
	.uaword	.LLST12
	.uleb128 0x16
	.string	"NewErrCtr"
	.byte	0x1
	.uahalf	0x1d3
	.uaword	0x1e1
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x17
	.uaword	.LVL25
	.uaword	0xcb1
	.uaword	0x9ee
	.uleb128 0x10
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.byte	0
	.uleb128 0x12
	.uaword	.LVL27
	.byte	0x1
	.uaword	0xaf0
	.uleb128 0x10
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x38
	.byte	0
	.byte	0
	.uleb128 0x9
	.uaword	0x67a
	.uleb128 0x18
	.byte	0x1
	.string	"SafeWdgM_GetWdgInfo"
	.byte	0x1
	.uahalf	0x209
	.byte	0x1
	.uaword	.LFB27
	.uaword	.LFE27
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xa58
	.uleb128 0x1a
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x20b
	.uaword	0x421
	.uaword	.LLST13
	.uleb128 0x11
	.uaword	.LVL28
	.uaword	0xcda
	.uleb128 0x12
	.uaword	.LVL29
	.byte	0x1
	.uaword	0xaf0
	.uleb128 0x10
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x39
	.byte	0
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.string	"SafeWdgM_GetState"
	.byte	0x1
	.uahalf	0x239
	.byte	0x1
	.uaword	0x66a
	.uaword	.LFB28
	.uaword	.LFE28
	.uaword	.LLST14
	.byte	0x1
	.uaword	0xaa1
	.uleb128 0x16
	.string	"RetVal"
	.byte	0x1
	.uahalf	0x23b
	.uaword	0x66a
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x11
	.uaword	.LVL30
	.uaword	0xcf9
	.byte	0
	.uleb128 0x1e
	.uaword	0x626
	.uaword	0xab1
	.uleb128 0x1f
	.uaword	0x2a6
	.byte	0
	.byte	0
	.uleb128 0x20
	.string	"HtxWdgIf_ConfigRoot"
	.byte	0x5
	.byte	0x42
	.uaword	0xace
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.uaword	0xaa1
	.uleb128 0x21
	.string	"ServiceResult"
	.byte	0x1
	.uahalf	0x139
	.uaword	0x421
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	ServiceResult
	.uleb128 0x22
	.byte	0x1
	.string	"AppCbk_ErrorHandler"
	.byte	0x3
	.byte	0x75
	.byte	0x1
	.byte	0x1
	.uaword	0xb14
	.uleb128 0x23
	.uaword	0x2b2
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.string	"HtxWdgIf_Init"
	.byte	0x5
	.byte	0x7b
	.byte	0x1
	.uaword	0x421
	.byte	0x1
	.uaword	0xb36
	.uleb128 0x23
	.uaword	0xb36
	.byte	0
	.uleb128 0x9
	.uaword	0xb3b
	.uleb128 0xa
	.byte	0x4
	.uaword	0xb41
	.uleb128 0x9
	.uaword	0x626
	.uleb128 0x25
	.byte	0x1
	.string	"HtxWdgIf_DeInit"
	.byte	0x5
	.byte	0x9f
	.byte	0x1
	.uaword	0x421
	.byte	0x1
	.uleb128 0x25
	.byte	0x1
	.string	"HtxWdgIf_Activate"
	.byte	0x5
	.byte	0xc8
	.byte	0x1
	.uaword	0x421
	.byte	0x1
	.uleb128 0x26
	.byte	0x1
	.string	"HtxWdgIf_GetSeed"
	.byte	0x5
	.uahalf	0x119
	.byte	0x1
	.uaword	0x421
	.byte	0x1
	.uaword	0xba2
	.uleb128 0x23
	.uaword	0x9ff
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.string	"TstM_GetConsolidatedSignature"
	.byte	0x6
	.uahalf	0x12f
	.byte	0x1
	.uaword	0x23a
	.byte	0x1
	.uleb128 0x24
	.byte	0x1
	.string	"HtxWdgIf_Service"
	.byte	0x5
	.byte	0xf2
	.byte	0x1
	.uaword	0x421
	.byte	0x1
	.uaword	0xbf0
	.uleb128 0x23
	.uaword	0xbf0
	.byte	0
	.uleb128 0x9
	.uaword	0x23a
	.uleb128 0x28
	.byte	0x1
	.string	"TstM_InvalidateSeed"
	.byte	0x6
	.byte	0xed
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.byte	0x1
	.string	"BSW_vidSetProgFlowSeed"
	.byte	0x7
	.byte	0x40
	.byte	0x1
	.byte	0x1
	.uaword	0xc36
	.uleb128 0x23
	.uaword	0x675
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.string	"TstM_InvalidateRunTimeTestData"
	.byte	0x6
	.uahalf	0x10e
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.byte	0x1
	.string	"HtxWdgIf_UserRequest"
	.byte	0x5
	.uahalf	0x1e3
	.byte	0x1
	.uaword	0x421
	.byte	0x1
	.uaword	0xc8b
	.uleb128 0x23
	.uaword	0xc8b
	.uleb128 0x23
	.uaword	0x1e1
	.byte	0
	.uleb128 0x9
	.uaword	0x927
	.uleb128 0x27
	.byte	0x1
	.string	"HtxWdgIf_GetJobResult"
	.byte	0x5
	.uahalf	0x224
	.byte	0x1
	.uaword	0x421
	.byte	0x1
	.uleb128 0x26
	.byte	0x1
	.string	"HtxWdgIf_GetErrCntr"
	.byte	0x5
	.uahalf	0x1b2
	.byte	0x1
	.uaword	0x421
	.byte	0x1
	.uaword	0xcda
	.uleb128 0x23
	.uaword	0x9ff
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.string	"HtxWdgIf_GetWdgInfo"
	.byte	0x5
	.uahalf	0x164
	.byte	0x1
	.uaword	0x421
	.byte	0x1
	.uleb128 0x27
	.byte	0x1
	.string	"HtxWdgIf_GetState"
	.byte	0x5
	.uahalf	0x13d
	.byte	0x1
	.uaword	0x66a
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
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x16
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
	.uleb128 0x7
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x9
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x26
	.byte	0
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x5
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
	.uleb128 0x14
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uaword	.LVL3-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL3-1
	.uaword	.LFE19
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LFE19
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL4
	.uaword	.LVL5-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL6
	.uaword	.LVL7-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LFB22
	.uaword	.LCFI0
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0
	.uaword	.LFE22
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL9
	.uaword	.LFE22
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL19
	.uaword	.LVL20-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL20-1
	.uaword	.LFE24
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL19
	.uaword	.LVL20-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL20-1
	.uaword	.LFE24
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LVL21-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL21
	.uaword	.LFE24
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LFB26
	.uaword	.LCFI1
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI1
	.uaword	.LFE26
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL24
	.uaword	.LFE26
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL28
	.uaword	.LVL29-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL29
	.uaword	.LFE27
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LFB28
	.uaword	.LCFI2
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI2
	.uaword	.LFE28
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x64
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB19
	.uaword	.LFE19-.LFB19
	.uaword	.LFB20
	.uaword	.LFE20-.LFB20
	.uaword	.LFB21
	.uaword	.LFE21-.LFB21
	.uaword	.LFB22
	.uaword	.LFE22-.LFB22
	.uaword	.LFB23
	.uaword	.LFE23-.LFB23
	.uaword	.LFB24
	.uaword	.LFE24-.LFB24
	.uaword	.LFB25
	.uaword	.LFE25-.LFB25
	.uaword	.LFB26
	.uaword	.LFE26-.LFB26
	.uaword	.LFB27
	.uaword	.LFE27-.LFB27
	.uaword	.LFB28
	.uaword	.LFE28-.LFB28
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB19
	.uaword	.LFE19
	.uaword	.LFB20
	.uaword	.LFE20
	.uaword	.LFB21
	.uaword	.LFE21
	.uaword	.LFB22
	.uaword	.LFE22
	.uaword	.LFB23
	.uaword	.LFE23
	.uaword	.LFB24
	.uaword	.LFE24
	.uaword	.LFB25
	.uaword	.LFE25
	.uaword	.LFB26
	.uaword	.LFE26
	.uaword	.LFB27
	.uaword	.LFE27
	.uaword	.LFB28
	.uaword	.LFE28
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF4:
	.string	"HtxWdgIf_ConfigType"
.LASF6:
	.string	"Result"
.LASF5:
	.string	"HtxWdgIf_StateType"
.LASF2:
	.string	"HtxWdgIf_ExtWdgStateType"
.LASF0:
	.string	"HtxWdgIf_ResultType"
.LASF1:
	.string	"HtxWdgIf_IntWdgStateType"
.LASF3:
	.string	"HtxWdgIf_CmdType"
	.extern	HtxWdgIf_GetState,STT_FUNC,0
	.extern	HtxWdgIf_GetWdgInfo,STT_FUNC,0
	.extern	HtxWdgIf_GetErrCntr,STT_FUNC,0
	.extern	HtxWdgIf_GetJobResult,STT_FUNC,0
	.extern	HtxWdgIf_UserRequest,STT_FUNC,0
	.extern	TstM_InvalidateRunTimeTestData,STT_FUNC,0
	.extern	BSW_vidSetProgFlowSeed,STT_FUNC,0
	.extern	TstM_InvalidateSeed,STT_FUNC,0
	.extern	HtxWdgIf_Service,STT_FUNC,0
	.extern	TstM_GetConsolidatedSignature,STT_FUNC,0
	.extern	HtxWdgIf_GetSeed,STT_FUNC,0
	.extern	HtxWdgIf_Activate,STT_FUNC,0
	.extern	HtxWdgIf_DeInit,STT_FUNC,0
	.extern	HtxWdgIf_Init,STT_FUNC,0
	.extern	HtxWdgIf_ConfigRoot,STT_OBJECT,8
	.extern	AppCbk_ErrorHandler,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
