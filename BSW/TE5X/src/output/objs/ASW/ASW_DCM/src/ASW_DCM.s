	.file	"ASW_DCM.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.ASW_DCM_PeriodicRunnable_10ms_func,"ax",@progbits
	.align 1
	.global	ASW_DCM_PeriodicRunnable_10ms_func
	.type	ASW_DCM_PeriodicRunnable_10ms_func, @function
ASW_DCM_PeriodicRunnable_10ms_func:
.LFB71:
	.file 1 "ASW\\ASW_DCM\\src\\ASW_DCM.c"
	.loc 1 52 0
	.loc 1 55 0
	call	Dcm_ExternalServiceProccessing_MainFunction
.LVL0:
	.loc 1 56 0
	j	Dcm_ResetServiceProccessing
.LVL1:
.LFE71:
	.size	ASW_DCM_PeriodicRunnable_10ms_func, .-ASW_DCM_PeriodicRunnable_10ms_func
.section .text.DCM_GetComControlState,"ax",@progbits
	.align 1
	.global	DCM_GetComControlState
	.type	DCM_GetComControlState, @function
DCM_GetComControlState:
.LFB72:
	.loc 1 97 0
	.loc 1 100 0
	movh.a	%a15, hi:BswM_Cfg_DcmComModeRequestModeInfo_ast
	lea	%a15, [%a15] lo:BswM_Cfg_DcmComModeRequestModeInfo_ast
	ld.bu	%d15, [%a15] 1
.LVL2:
	.loc 1 102 0
	ne	%d2, %d15, 8
	jz	%d2, .L7
	.loc 1 107 0
	eq	%d15, %d15, 11
	jnz	%d15, .L5
	movh.a	%a15, hi:MAIN_bComDisableFlg
.LVL3:
	ld.bu	%d2, [%a15] lo:MAIN_bComDisableFlg
	ret
.LVL4:
.L5:
	.loc 1 109 0
	mov	%d15, 1
	movh.a	%a15, hi:MAIN_bComDisableFlg
.LVL5:
	st.b	[%a15] lo:MAIN_bComDisableFlg, %d15
	mov	%d2, 1
	.loc 1 117 0
	ret
.LVL6:
.L7:
	.loc 1 104 0
	mov	%d15, 0
	movh.a	%a15, hi:MAIN_bComDisableFlg
.LVL7:
	st.b	[%a15] lo:MAIN_bComDisableFlg, %d15
	mov	%d2, 0
	ret
.LFE72:
	.size	DCM_GetComControlState, .-DCM_GetComControlState
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
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmCore_DslDsd_Pub.h"
	.file 4 ".\\output\\inc/..\\..\\bsw\\BswM_PreCompile_and_PB_Variant\\BswM_Cfg_MRP.h"
	.file 5 ".\\output\\inc/..\\..\\main\\McuMain\\MAIN_tsk.h"
	.file 6 "ASW\\ASW_DCM\\src\\Dcm_ExternalServiceProcessing.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x46a
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"ASW\\ASW_DCM\\src\\ASW_DCM.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x2
	.byte	0x51
	.uaword	0x1a8
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
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
	.uaword	0x1a8
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x4
	.string	"Dcm_CommunicationModeType"
	.byte	0x3
	.uahalf	0x21a
	.uaword	0x20e
	.uleb128 0x5
	.byte	0x2
	.byte	0x4
	.byte	0xc2
	.uaword	0x2e9
	.uleb128 0x6
	.string	"isValidModePresent_b"
	.byte	0x4
	.byte	0xc3
	.uaword	0x259
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"dataMode_u8"
	.byte	0x4
	.byte	0xc4
	.uaword	0x289
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x3
	.string	"BswM_Cfg_MRP_PC_DcmComModeRequestType_tst"
	.byte	0x4
	.byte	0xc5
	.uaword	0x2ab
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x7
	.byte	0x1
	.string	"ASW_DCM_PeriodicRunnable_10ms_func"
	.byte	0x1
	.byte	0x30
	.byte	0x1
	.uaword	.LFB71
	.uaword	.LFE71
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x36e
	.uleb128 0x8
	.uaword	.LVL0
	.uaword	0x419
	.uleb128 0x9
	.uaword	.LVL1
	.byte	0x1
	.uaword	0x44b
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.string	"DCM_GetComControlState"
	.byte	0x1
	.byte	0x60
	.byte	0x1
	.uaword	0x259
	.uaword	.LFB72
	.uaword	.LFE72
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x3bc
	.uleb128 0xb
	.string	"DCM_u8LocComState"
	.byte	0x1
	.byte	0x62
	.uaword	0x20e
	.uaword	.LLST0
	.byte	0
	.uleb128 0xc
	.string	"MAIN_bComDisableFlg"
	.byte	0x5
	.byte	0x44
	.uaword	0x259
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.uaword	0x2e9
	.uaword	0x3e9
	.uleb128 0xe
	.uaword	0x202
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"BswM_Cfg_DcmComModeRequestModeInfo_ast"
	.byte	0x4
	.byte	0xed
	.uaword	0x3d9
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.byte	0x1
	.string	"Dcm_ExternalServiceProccessing_MainFunction"
	.byte	0x6
	.byte	0x8
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.byte	0x1
	.string	"Dcm_ResetServiceProccessing"
	.byte	0x6
	.byte	0xa
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
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
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x2
	.byte	0x8f
	.sleb128 1
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x2
	.byte	0x8f
	.sleb128 1
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x2
	.byte	0x8f
	.sleb128 1
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
	.uaword	.LFB71
	.uaword	.LFE71-.LFB71
	.uaword	.LFB72
	.uaword	.LFE72-.LFB72
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB71
	.uaword	.LFE71
	.uaword	.LFB72
	.uaword	.LFE72
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.extern	MAIN_bComDisableFlg,STT_OBJECT,1
	.extern	BswM_Cfg_DcmComModeRequestModeInfo_ast,STT_OBJECT,2
	.extern	Dcm_ResetServiceProccessing,STT_FUNC,0
	.extern	Dcm_ExternalServiceProccessing_MainFunction,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
