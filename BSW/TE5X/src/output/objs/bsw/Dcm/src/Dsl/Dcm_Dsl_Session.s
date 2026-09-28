	.file	"Dcm_Dsl_Session.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Dcm_Prv_SetSesCtrlType,"ax",@progbits
	.align 1
	.global	Dcm_Prv_SetSesCtrlType
	.type	Dcm_Prv_SetSesCtrlType, @function
Dcm_Prv_SetSesCtrlType:
.LFB101:
	.file 1 "bsw\\Dcm\\src\\Dsl\\Dcm_Dsl_Session.c"
	.loc 1 247 0
.LVL0:
	.loc 1 250 0
	movh.a	%a3, hi:Dcm_isSessionStored_b
	ld.bu	%d2, [%a3] lo:Dcm_isSessionStored_b
	.loc 1 252 0
	movh.a	%a15, hi:Dcm_DsldSessionTable_pcu8
	movh.a	%a2, hi:Dcm_DsldGlobal_st
	.loc 1 247 0
	mov	%d15, %d4
	.loc 1 252 0
	ld.a	%a15, [%a15] lo:Dcm_DsldSessionTable_pcu8
	lea	%a2, [%a2] lo:Dcm_DsldGlobal_st
	.loc 1 250 0
	jz	%d2, .L2
	.loc 1 252 0
	ld.bu	%d2, [%a2] 44
	addsc.a	%a4, %a15, %d2, 0
	.loc 1 253 0
	mov	%d2, 0
	.loc 1 252 0
	ld.bu	%d9, [%a4]0
.LVL1:
	.loc 1 253 0
	st.b	[%a3] lo:Dcm_isSessionStored_b, %d2
.LVL2:
	.loc 1 260 0
	ld.bu	%d8, [%a15]0
	jeq	%d8, %d15, .L4
.LVL3:
.L14:
.LBB23:
.LBB24:
	.loc 1 114 0
	ld.bu	%d2, [%a15] 1
	jeq	%d2, %d15, .L8
.LVL4:
	ld.bu	%d2, [%a15] 2
	jeq	%d2, %d15, .L13
.LVL5:
	.loc 1 156 0
	mov	%e4, 53
.LVL6:
	mov	%d6, 167
	mov	%d7, 19
	call	Det_ReportError
.LVL7:
.LBE24:
.LBE23:
	.loc 1 270 0
	mov	%d8, %d9
.LVL8:
.L7:
	.loc 1 275 0
	call	Dcm_Dsp_SecaSessIni
.LVL9:
	.loc 1 279 0
	call	Dcm_ControlDtcSettingExit
.LVL10:
.LBB26:
.LBB27:
	.file 2 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\DcmCore\\DcmCoreLib\\DcmCore_DslDsd_Inl.h"
	.loc 2 163 0
	mov	%e4, %d8, %d9
	j	DcmAppl_DcmSesCtrlChangeIndication
.LVL11:
.L2:
.LBE27:
.LBE26:
	.loc 1 257 0
	ld.bu	%d2, [%a2] 3
	.loc 1 260 0
	ld.bu	%d8, [%a15]0
	.loc 1 257 0
	addsc.a	%a3, %a15, %d2, 0
	ld.bu	%d9, [%a3]0
.LVL12:
	.loc 1 260 0
	jne	%d8, %d15, .L14
.LVL13:
.L4:
.LBB29:
.LBB30:
	.loc 1 199 0
	movh.a	%a15, hi:Dcm_DsldTimer_st
	lea	%a3, [%a15] lo:Dcm_DsldTimer_st
	mov.u	%d2, 50000
	st.w	[%a3] 4, %d2
	.loc 1 200 0
	movh	%d2, 76
	addi	%d2, %d2, 19264
	.loc 1 212 0
	mov	%d5, 1
	mov	%d6, 1
	.loc 1 200 0
	st.w	[%a15] lo:Dcm_DsldTimer_st, %d2
	.loc 1 212 0
	mov	%d4, 1
.LVL14:
	.loc 1 205 0
	mov	%d2, 0
	st.b	[%a2] 12, %d2
	.loc 1 207 0
	st.b	[%a2] 3, %d2
	.loc 1 212 0
	call	Dcm_ResetActiveIoCtrl
.LVL15:
	.loc 1 218 0
	mov	%d4, %d15
	call	Dcm_RoutineSetSesCtrlType
.LVL16:
.LBE30:
.LBE29:
	.loc 1 275 0
	call	Dcm_Dsp_SecaSessIni
.LVL17:
	.loc 1 279 0
	call	Dcm_ControlDtcSettingExit
.LVL18:
.LBB31:
.LBB28:
	.loc 2 163 0
	mov	%e4, %d8, %d9
	j	DcmAppl_DcmSesCtrlChangeIndication
.LVL19:
.L8:
.LBE28:
.LBE31:
.LBB32:
.LBB25:
	.loc 1 114 0
	mov	%d2, 1
.LVL20:
.L5:
	.loc 1 125 0
	st.b	[%a2] 3, %d2
.LVL21:
	.loc 1 134 0
	mov	%d4, %d15
.LVL22:
	.loc 1 130 0
	mov	%d2, 0
	st.b	[%a2] 12, %d2
	.loc 1 134 0
	call	Dcm_RoutineSetSesCtrlType
.LVL23:
	.loc 1 141 0
	call	Dcm_DsldGetActiveSessionMask_u32
.LVL24:
	.loc 1 145 0
	mov	%d5, 1
	mov	%d4, %d2
	mov	%d6, 1
	call	Dcm_ResetActiveIoCtrl
.LVL25:
	mov	%d8, %d15
	j	.L7
.LVL26:
.L13:
	.loc 1 112 0
	mov	%d2, 2
	j	.L5
.LBE25:
.LBE32:
.LFE101:
	.size	Dcm_Prv_SetSesCtrlType, .-Dcm_Prv_SetSesCtrlType
.section .text.Dcm_GetSesCtrlType,"ax",@progbits
	.align 1
	.global	Dcm_GetSesCtrlType
	.type	Dcm_GetSesCtrlType, @function
Dcm_GetSesCtrlType:
.LFB102:
	.loc 1 303 0
.LVL27:
	.loc 1 304 0
	jz.a	%a4, .L16
	.loc 1 307 0
	movh.a	%a15, hi:Dcm_isSessionStored_b
	ld.bu	%d15, [%a15] lo:Dcm_isSessionStored_b
	.loc 1 309 0
	movh.a	%a15, hi:Dcm_DsldGlobal_st
	lea	%a15, [%a15] lo:Dcm_DsldGlobal_st
	.loc 1 307 0
	jnz	%d15, .L20
	.loc 1 313 0
	ld.bu	%d15, [%a15] 3
.L19:
	movh.a	%a2, hi:Dcm_DsldSessionTable_pcu8
	ld.a	%a15, [%a2] lo:Dcm_DsldSessionTable_pcu8
	addsc.a	%a15, %a15, %d15, 0
	ld.bu	%d15, [%a15]0
	st.b	[%a4]0, %d15
.LVL28:
.L18:
	.loc 1 323 0
	mov	%d2, 0
	ret
.LVL29:
.L20:
	.loc 1 309 0
	ld.bu	%d15, [%a15] 44
	j	.L19
.L16:
	.loc 1 319 0
	mov	%e4, 53
	mov	%d6, 149
	mov	%d7, 7
	call	Det_ReportError
.LVL30:
	j	.L18
.LFE102:
	.size	Dcm_GetSesCtrlType, .-Dcm_GetSesCtrlType
.section .text.Dcm_ResetToDefaultSession,"ax",@progbits
	.align 1
	.global	Dcm_ResetToDefaultSession
	.type	Dcm_ResetToDefaultSession, @function
Dcm_ResetToDefaultSession:
.LFB103:
	.loc 1 337 0
	.loc 1 340 0
	mov	%d15, 1
	movh.a	%a15, hi:Dcm_isResetToDefaultRequested_b
	st.b	[%a15] lo:Dcm_isResetToDefaultRequested_b, %d15
	.loc 1 342 0
	mov	%d2, 0
	ret
.LFE103:
	.size	Dcm_ResetToDefaultSession, .-Dcm_ResetToDefaultSession
.section .text.Dcm_Prv_ProcessResetToDefaultSession,"ax",@progbits
	.align 1
	.global	Dcm_Prv_ProcessResetToDefaultSession
	.type	Dcm_Prv_ProcessResetToDefaultSession, @function
Dcm_Prv_ProcessResetToDefaultSession:
.LFB104:
	.loc 1 356 0
	.loc 1 357 0
	movh.a	%a15, hi:Dcm_isResetToDefaultRequested_b
	ld.bu	%d15, [%a15] lo:Dcm_isResetToDefaultRequested_b
	jz	%d15, .L22
.LVL31:
.LBB33:
	.loc 1 362 0
	movh.a	%a2, hi:Dcm_DslState_u8
	.loc 1 365 0
	ld.bu	%d2, [%a2] lo:Dcm_DslState_u8
.LBB34:
.LBB35:
	.file 3 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\Dsd\\Dcm_Dsd.h"
	.loc 3 76 0
	movh.a	%a2, hi:stDsdState_en
.LBE35:
.LBE34:
	.loc 1 365 0
	ld.bu	%d3, [%a2] lo:stDsdState_en
	eq	%d15, %d3, 0
	and.eq	%d15, %d2, 0
	jnz	%d15, .L30
.LVL32:
.L22:
	ret
.LVL33:
.L30:
	.loc 1 367 0
	movh.a	%a2, hi:Dcm_DsldGlobal_st
	lea	%a2, [%a2] lo:Dcm_DsldGlobal_st
	ld.bu	%d15, [%a2] 2
	movh.a	%a2, hi:Dcm_DsldConnTable_pcst
	ld.w	%d2, [%a2] lo:Dcm_DsldConnTable_pcst
	.loc 1 368 0
	movh.a	%a12, hi:Dcm_DsldSessionTable_pcu8
	.loc 1 367 0
	madd	%d3, %d2, %d15, 14
	mov.a	%a2, %d3
	ld.bu	%d15, [%a2] 10
	movh.a	%a2, hi:Dcm_active_commode_e
	lea	%a2, [%a2] lo:Dcm_active_commode_e
	addsc.a	%a2, %a2, %d15, 1
	.loc 1 380 0
	mov	%d15, 0
	.loc 1 367 0
	ld.bu	%d4, [%a2]0
	call	ComM_DCM_InactiveDiagnostic
.LVL34:
	.loc 1 368 0
	ld.a	%a2, [%a12] lo:Dcm_DsldSessionTable_pcu8
	ld.bu	%d4, [%a2]0
	call	Dcm_Prv_SetSesCtrlType
.LVL35:
	.loc 1 377 0
	ld.a	%a2, [%a12] lo:Dcm_DsldSessionTable_pcu8
	ld.bu	%d4, [%a2]0
	call	DcmAppl_Switch_DcmDiagnosticSessionControl
.LVL36:
	.loc 1 380 0
	st.b	[%a15] lo:Dcm_isResetToDefaultRequested_b, %d15
	ret
.LBE33:
.LFE104:
	.size	Dcm_Prv_ProcessResetToDefaultSession, .-Dcm_Prv_ProcessResetToDefaultSession
.section .text.Dcm_Prv_ResetDefaultSessionRequestFlag,"ax",@progbits
	.align 1
	.global	Dcm_Prv_ResetDefaultSessionRequestFlag
	.type	Dcm_Prv_ResetDefaultSessionRequestFlag, @function
Dcm_Prv_ResetDefaultSessionRequestFlag:
.LFB105:
	.loc 1 396 0
	.loc 1 397 0
	mov	%d15, 0
	movh.a	%a15, hi:Dcm_isResetToDefaultRequested_b
	st.b	[%a15] lo:Dcm_isResetToDefaultRequested_b, %d15
	ret
.LFE105:
	.size	Dcm_Prv_ResetDefaultSessionRequestFlag, .-Dcm_Prv_ResetDefaultSessionRequestFlag
.section .bss.a1.Dcm_isResetToDefaultRequested_b,"aw",@nobits
	.type	Dcm_isResetToDefaultRequested_b, @object
	.size	Dcm_isResetToDefaultRequested_b, 1
Dcm_isResetToDefaultRequested_b:
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
	.uaword	.LFB101
	.uaword	.LFE101-.LFB101
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB102
	.uaword	.LFE102-.LFB102
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB103
	.uaword	.LFE103-.LFB103
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB104
	.uaword	.LFE104-.LFB104
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB105
	.uaword	.LFE105-.LFB105
	.align 2
.LEFDE8:
.section .text,"ax",@progbits
.Letext0:
	.file 4 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 5 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 6 ".\\output\\inc/..\\..\\bsw\\ComStack\\ComStack_Cfg.h"
	.file 7 ".\\output\\inc/..\\..\\bsw\\ComStack\\api\\ComStack_Types.h"
	.file 8 ".\\output\\inc/..\\..\\rte\\Rte_Type.h"
	.file 9 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmCore_DslDsd_Pub.h"
	.file 10 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspUds_Seca_Pub.h"
	.file 11 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\DcmCore\\DcmCoreDslDsd\\DcmCore_DslDsd_Prot.h"
	.file 12 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\Dcm_Cfg_SchM.h"
	.file 13 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\DcmDsp\\DcmDspUds\\DcmDspUds_Seca_Prv.h"
	.file 14 ".\\output\\inc/..\\..\\bsw\\Dcm\\Dcm_Cfg_DslDsd.h"
	.file 15 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\Dsl\\Dcm_Dsl_Priv.h"
	.file 16 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\DcmDsp\\DcmDspUds\\DcmDspUds_Rc_Prot.h"
	.file 17 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\DcmDsp\\DcmDspUds\\DcmDspUds_Iocbi_Prot.h"
	.file 18 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\DcmAppl.h"
	.file 19 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\DcmDsp\\DcmDspUds\\DcmDspUds_Uds_Prot.h"
	.file 20 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM_Dcm.h"
	.file 21 ".\\output\\inc/..\\..\\bsw\\Det\\api\\Det.h"
	.file 22 ".\\output\\inc/..\\..\\bsw\\Dcm\\Dcm_Lcfg_DslDsd.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x1ccf
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Dcm\\src\\Dsl\\Dcm_Dsl_Session.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x30
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x4
	.byte	0x51
	.uaword	0x1cc
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
	.byte	0x4
	.byte	0x5b
	.uaword	0x1f8
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
	.byte	0x4
	.byte	0x6a
	.uaword	0x234
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
	.byte	0x4
	.byte	0x80
	.uaword	0x1cc
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x3
	.string	"StatusType"
	.byte	0x5
	.byte	0x48
	.uaword	0x1cc
	.uleb128 0x3
	.string	"Std_ReturnType"
	.byte	0x5
	.byte	0x60
	.uaword	0x1bf
	.uleb128 0x3
	.string	"PduIdType"
	.byte	0x6
	.byte	0x2c
	.uaword	0x1ea
	.uleb128 0x3
	.string	"PduLengthType"
	.byte	0x6
	.byte	0x30
	.uaword	0x1ea
	.uleb128 0x3
	.string	"NetworkHandleType"
	.byte	0x7
	.byte	0x4f
	.uaword	0x1bf
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x4
	.uaword	0x1bf
	.uleb128 0x5
	.string	"Dcm_ConfirmationStatusType"
	.byte	0x8
	.uahalf	0x107
	.uaword	0x1bf
	.uleb128 0x5
	.string	"Dcm_NegativeResponseCodeType"
	.byte	0x8
	.uahalf	0x118
	.uaword	0x1bf
	.uleb128 0x5
	.string	"Dcm_OpStatusType"
	.byte	0x8
	.uahalf	0x11a
	.uaword	0x1bf
	.uleb128 0x5
	.string	"Dcm_SecLevelType"
	.byte	0x8
	.uahalf	0x122
	.uaword	0x1bf
	.uleb128 0x5
	.string	"Dcm_SesCtrlType"
	.byte	0x8
	.uahalf	0x124
	.uaword	0x1bf
	.uleb128 0x6
	.byte	0x4
	.uaword	0x33c
	.uleb128 0x6
	.byte	0x4
	.uaword	0x314
	.uleb128 0x3
	.string	"Dcm_SrvOpStatusType"
	.byte	0x9
	.byte	0x3e
	.uaword	0x1bf
	.uleb128 0x5
	.string	"Dcm_MsgItemType"
	.byte	0x9
	.uahalf	0x102
	.uaword	0x1bf
	.uleb128 0x5
	.string	"Dcm_MsgType"
	.byte	0x9
	.uahalf	0x108
	.uaword	0x3fe
	.uleb128 0x6
	.byte	0x4
	.uaword	0x3d2
	.uleb128 0x5
	.string	"Dcm_MsgLenType"
	.byte	0x9
	.uahalf	0x111
	.uaword	0x226
	.uleb128 0x7
	.byte	0x4
	.byte	0x9
	.uahalf	0x11a
	.uaword	0x472
	.uleb128 0x8
	.string	"reqType"
	.byte	0x9
	.uahalf	0x11e
	.uaword	0x1bf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"suppressPosResponse"
	.byte	0x9
	.uahalf	0x122
	.uaword	0x271
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x8
	.string	"sourceofRequest"
	.byte	0x9
	.uahalf	0x126
	.uaword	0x1bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x5
	.string	"Dcm_MsgAddInfoType"
	.byte	0x9
	.uahalf	0x127
	.uaword	0x41b
	.uleb128 0x5
	.string	"Dcm_IdContextType"
	.byte	0x9
	.uahalf	0x12d
	.uaword	0x1bf
	.uleb128 0x7
	.byte	0x1c
	.byte	0x9
	.uahalf	0x13c
	.uaword	0x55d
	.uleb128 0x8
	.string	"resData"
	.byte	0x9
	.uahalf	0x143
	.uaword	0x3ea
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"reqData"
	.byte	0x9
	.uahalf	0x149
	.uaword	0x3ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"msgAddInfo"
	.byte	0x9
	.uahalf	0x14f
	.uaword	0x472
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.string	"resDataLen"
	.byte	0x9
	.uahalf	0x155
	.uaword	0x404
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.string	"reqDataLen"
	.byte	0x9
	.uahalf	0x15a
	.uaword	0x404
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.string	"resMaxDataLen"
	.byte	0x9
	.uahalf	0x16c
	.uaword	0x404
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.string	"idContext"
	.byte	0x9
	.uahalf	0x177
	.uaword	0x48d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.string	"dcmRxPduId"
	.byte	0x9
	.uahalf	0x186
	.uaword	0x2c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.byte	0
	.uleb128 0x5
	.string	"Dcm_MsgContextType"
	.byte	0x9
	.uahalf	0x188
	.uaword	0x4a7
	.uleb128 0x7
	.byte	0x24
	.byte	0x9
	.uahalf	0x2bd
	.uaword	0x705
	.uleb128 0x8
	.string	"tx_buffer_pa"
	.byte	0x9
	.uahalf	0x2bf
	.uaword	0x3ea
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"rx_mainBuffer_pa"
	.byte	0x9
	.uahalf	0x2c0
	.uaword	0x3ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"tx_buffer_size_u32"
	.byte	0x9
	.uahalf	0x2ca
	.uaword	0x404
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.string	"rx_buffer_size_u32"
	.byte	0x9
	.uahalf	0x2cb
	.uaword	0x404
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.string	"maxResponseLength_u32"
	.byte	0x9
	.uahalf	0x2cd
	.uaword	0x404
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.string	"dataP2TmrAdjust"
	.byte	0x9
	.uahalf	0x2cf
	.uaword	0x226
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.string	"dataP2StarTmrAdjust"
	.byte	0x9
	.uahalf	0x2d0
	.uaword	0x226
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.string	"protocolid_u8"
	.byte	0x9
	.uahalf	0x2d1
	.uaword	0x1bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x8
	.string	"sid_tableid_u8"
	.byte	0x9
	.uahalf	0x2d2
	.uaword	0x1bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x1d
	.uleb128 0x8
	.string	"premption_level_u8"
	.byte	0x9
	.uahalf	0x2d3
	.uaword	0x1bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x1e
	.uleb128 0x8
	.string	"pduinfo_idx_u8"
	.byte	0x9
	.uahalf	0x2d4
	.uaword	0x1bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x1f
	.uleb128 0x8
	.string	"demclientid"
	.byte	0x9
	.uahalf	0x2dc
	.uaword	0x1bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.string	"nrc21_b"
	.byte	0x9
	.uahalf	0x2dd
	.uaword	0x271
	.byte	0x2
	.byte	0x23
	.uleb128 0x21
	.uleb128 0x8
	.string	"sendRespPendTransToBoot"
	.byte	0x9
	.uahalf	0x2de
	.uaword	0x271
	.byte	0x2
	.byte	0x23
	.uleb128 0x22
	.byte	0
	.uleb128 0x5
	.string	"Dcm_Dsld_protocol_tableType"
	.byte	0x9
	.uahalf	0x2df
	.uaword	0x578
	.uleb128 0x5
	.string	"Dcm_ConfirmationApiType"
	.byte	0x9
	.uahalf	0x2e1
	.uaword	0x749
	.uleb128 0x6
	.byte	0x4
	.uaword	0x74f
	.uleb128 0x9
	.byte	0x1
	.uaword	0x76a
	.uleb128 0xa
	.uaword	0x48d
	.uleb128 0xa
	.uaword	0x2c9
	.uleb128 0xa
	.uaword	0x1ea
	.uleb128 0xa
	.uaword	0x319
	.byte	0
	.uleb128 0x7
	.byte	0x14
	.byte	0x9
	.uahalf	0x2ee
	.uaword	0x80b
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0x9
	.uahalf	0x2f0
	.uaword	0x226
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.uaword	.LASF1
	.byte	0x9
	.uahalf	0x2f1
	.uaword	0x226
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"adrUserSubServiceModeRule_pfct"
	.byte	0x9
	.uahalf	0x2f5
	.uaword	0x825
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.string	"SubFunc_fp"
	.byte	0x9
	.uahalf	0x2f6
	.uaword	0x84b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.string	"subservice_id_u8"
	.byte	0x9
	.uahalf	0x2f7
	.uaword	0x1bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.string	"isDspRDTCSubFnc_b"
	.byte	0x9
	.uahalf	0x2f8
	.uaword	0x271
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.uaword	0x2b3
	.uaword	0x825
	.uleb128 0xa
	.uaword	0x3ab
	.uleb128 0xa
	.uaword	0x1bf
	.uleb128 0xa
	.uaword	0x1bf
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x80b
	.uleb128 0xc
	.byte	0x1
	.uaword	0x2b3
	.uaword	0x845
	.uleb128 0xa
	.uaword	0x3b7
	.uleb128 0xa
	.uaword	0x845
	.uleb128 0xa
	.uaword	0x3ab
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x55d
	.uleb128 0x6
	.byte	0x4
	.uaword	0x82b
	.uleb128 0x5
	.string	"Dcm_Dsld_SubServiceType"
	.byte	0x9
	.uahalf	0x2f9
	.uaword	0x76a
	.uleb128 0x7
	.byte	0x24
	.byte	0x9
	.uahalf	0x30a
	.uaword	0x9a2
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0x9
	.uahalf	0x30c
	.uaword	0x226
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.uaword	.LASF1
	.byte	0x9
	.uahalf	0x30d
	.uaword	0x226
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"service_handler_fp"
	.byte	0x9
	.uahalf	0x312
	.uaword	0x84b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.string	"Service_init_fp"
	.byte	0x9
	.uahalf	0x313
	.uaword	0x9a4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.string	"sid_u8"
	.byte	0x9
	.uahalf	0x314
	.uaword	0x1bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.string	"subfunction_exist_b"
	.byte	0x9
	.uahalf	0x315
	.uaword	0x271
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0x8
	.string	"servicelocator_b"
	.byte	0x9
	.uahalf	0x316
	.uaword	0x271
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0x8
	.string	"ptr_subservice_table_pcs"
	.byte	0x9
	.uahalf	0x317
	.uaword	0x9aa
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.string	"num_sf_u8"
	.byte	0x9
	.uahalf	0x318
	.uaword	0x1bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.string	"adrUserServiceModeRule_pfct"
	.byte	0x9
	.uahalf	0x319
	.uaword	0x9ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x8
	.string	"Dcm_ConfirmationService"
	.byte	0x9
	.uahalf	0x31b
	.uaword	0x729
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.uleb128 0x6
	.byte	0x4
	.uaword	0x9a2
	.uleb128 0x6
	.byte	0x4
	.uaword	0x9b0
	.uleb128 0x4
	.uaword	0x851
	.uleb128 0xc
	.byte	0x1
	.uaword	0x2b3
	.uaword	0x9ca
	.uleb128 0xa
	.uaword	0x3ab
	.uleb128 0xa
	.uaword	0x1bf
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x9b5
	.uleb128 0x5
	.string	"Dcm_Dsld_ServiceType"
	.byte	0x9
	.uahalf	0x31c
	.uaword	0x871
	.uleb128 0x7
	.byte	0x8
	.byte	0x9
	.uahalf	0x32a
	.uaword	0xa70
	.uleb128 0x8
	.string	"ptr_service_table_pcs"
	.byte	0x9
	.uahalf	0x32c
	.uaword	0xa70
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"num_services_u8"
	.byte	0x9
	.uahalf	0x32d
	.uaword	0x1bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"nrc_sessnot_supported_u8"
	.byte	0x9
	.uahalf	0x32e
	.uaword	0x1bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x8
	.string	"cdtc_index_u8"
	.byte	0x9
	.uahalf	0x32f
	.uaword	0x1bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0xa76
	.uleb128 0x4
	.uaword	0x9d0
	.uleb128 0x5
	.string	"Dcm_Dsld_sid_tableType"
	.byte	0x9
	.uahalf	0x330
	.uaword	0x9ed
	.uleb128 0x7
	.byte	0xe
	.byte	0x9
	.uahalf	0x33e
	.uaword	0xb80
	.uleb128 0x8
	.string	"protocol_num_u8"
	.byte	0x9
	.uahalf	0x340
	.uaword	0x1bf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"txpduid_num_u8"
	.byte	0x9
	.uahalf	0x341
	.uaword	0x2c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x8
	.string	"roetype2_txpdu_u8"
	.byte	0x9
	.uahalf	0x342
	.uaword	0x2c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"rdpitype2_txpdu_u8"
	.byte	0x9
	.uahalf	0x343
	.uaword	0x2c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x8
	.string	"testaddr_u16"
	.byte	0x9
	.uahalf	0x344
	.uaword	0x1ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.string	"channel_idx_u8"
	.byte	0x9
	.uahalf	0x345
	.uaword	0x1bf
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x8
	.string	"ConnectionIndex_u8"
	.byte	0x9
	.uahalf	0x346
	.uaword	0x1bf
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0x8
	.string	"NumberOfTxpdu_u8"
	.byte	0x9
	.uahalf	0x347
	.uaword	0x1bf
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x5
	.string	"Dcm_Dsld_connType"
	.byte	0x9
	.uahalf	0x348
	.uaword	0xa9a
	.uleb128 0xe
	.byte	0x1
	.byte	0x9
	.uahalf	0x363
	.uaword	0xbef
	.uleb128 0xf
	.string	"DCM_DSLD_NO_COM_MODE"
	.sleb128 0
	.uleb128 0xf
	.string	"DCM_DSLD_SILENT_COM_MODE"
	.sleb128 1
	.uleb128 0xf
	.string	"DCM_DSLD_FULL_COM_MODE"
	.sleb128 2
	.byte	0
	.uleb128 0x5
	.string	"Dcm_Dsld_commodeType"
	.byte	0x9
	.uahalf	0x367
	.uaword	0xb9a
	.uleb128 0x7
	.byte	0x2
	.byte	0x9
	.uahalf	0x38e
	.uaword	0xc44
	.uleb128 0x8
	.string	"ComMChannelId"
	.byte	0x9
	.uahalf	0x390
	.uaword	0x1bf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"ComMState"
	.byte	0x9
	.uahalf	0x391
	.uaword	0xbef
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x5
	.string	"Dcm_Dsld_ComMChannel"
	.byte	0x9
	.uahalf	0x395
	.uaword	0xc0c
	.uleb128 0x7
	.byte	0x1c
	.byte	0x9
	.uahalf	0x3bc
	.uaword	0xd42
	.uleb128 0x8
	.string	"ptr_rxtable_pca"
	.byte	0x9
	.uahalf	0x3bf
	.uaword	0x3b1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"ptr_txtable_pca"
	.byte	0x9
	.uahalf	0x3c1
	.uaword	0xd42
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"ptr_conntable_pcs"
	.byte	0x9
	.uahalf	0x3c3
	.uaword	0xd4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.string	"protocol_table_pcs"
	.byte	0x9
	.uahalf	0x3c5
	.uaword	0xd58
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.string	"sid_table_pcs"
	.byte	0x9
	.uahalf	0x3c7
	.uaword	0xd63
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.string	"session_lookup_table_pcau8"
	.byte	0x9
	.uahalf	0x3c9
	.uaword	0x3b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.string	"security_lookup_table_pcau8"
	.byte	0x9
	.uahalf	0x3cb
	.uaword	0x3b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0xd48
	.uleb128 0x4
	.uaword	0x2c9
	.uleb128 0x6
	.byte	0x4
	.uaword	0xd53
	.uleb128 0x4
	.uaword	0xb80
	.uleb128 0x6
	.byte	0x4
	.uaword	0xd5e
	.uleb128 0x4
	.uaword	0x705
	.uleb128 0x6
	.byte	0x4
	.uaword	0xd69
	.uleb128 0x4
	.uaword	0xa7b
	.uleb128 0x5
	.string	"Dcm_Dsld_confType"
	.byte	0x9
	.uahalf	0x3cc
	.uaword	0xc61
	.uleb128 0x10
	.byte	0x8
	.byte	0xa
	.byte	0x2e
	.uaword	0xdc9
	.uleb128 0x11
	.string	"Residual_delay_u32"
	.byte	0xa
	.byte	0x33
	.uaword	0x226
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"FailedAtm_cnt_u8"
	.byte	0xa
	.byte	0x34
	.uaword	0x1bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"Dcm_Dsp_SecaType"
	.byte	0xa
	.byte	0x35
	.uaword	0xd88
	.uleb128 0x12
	.byte	0x1
	.byte	0x3
	.byte	0x16
	.uaword	0xe4f
	.uleb128 0xf
	.string	"DSD_IDLE"
	.sleb128 0
	.uleb128 0xf
	.string	"DSD_VERIFY_DIAGNOSTIC_DATA"
	.sleb128 1
	.uleb128 0xf
	.string	"DSD_CALL_SERVICE"
	.sleb128 2
	.uleb128 0xf
	.string	"DSD_WAITFORTXCONF"
	.sleb128 3
	.uleb128 0xf
	.string	"DSD_SENDTXCONF_APPL"
	.sleb128 4
	.byte	0
	.uleb128 0x3
	.string	"Dcm_DsdStatesType_ten"
	.byte	0x3
	.byte	0x1c
	.uaword	0xde1
	.uleb128 0xe
	.byte	0x1
	.byte	0xb
	.uahalf	0x17f
	.uaword	0xea6
	.uleb128 0xf
	.string	"DCM_DSLD_POS_RESPONSE"
	.sleb128 0
	.uleb128 0xf
	.string	"DCM_DSLD_NEG_RESPONSE"
	.sleb128 1
	.byte	0
	.uleb128 0x5
	.string	"Dcm_DsldResponseType_ten"
	.byte	0xb
	.uahalf	0x182
	.uaword	0xe6c
	.uleb128 0x7
	.byte	0x30
	.byte	0xb
	.uahalf	0x18c
	.uaword	0x11e2
	.uleb128 0x8
	.string	"dataActiveRxPduId_u8"
	.byte	0xb
	.uahalf	0x191
	.uaword	0x2c9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"nrActiveConn_u8"
	.byte	0xb
	.uahalf	0x192
	.uaword	0x1bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x8
	.string	"idxActiveSession_u8"
	.byte	0xb
	.uahalf	0x193
	.uaword	0x1bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x8
	.string	"flgMonitorP3timer_b"
	.byte	0xb
	.uahalf	0x194
	.uaword	0x271
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"idxCurrentProtocol_u8"
	.byte	0xb
	.uahalf	0x195
	.uaword	0x1bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x8
	.string	"dataActiveTxPduId_u8"
	.byte	0xb
	.uahalf	0x196
	.uaword	0x2c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x8
	.string	"datActiveSrvtable_u8"
	.byte	0xb
	.uahalf	0x197
	.uaword	0x1bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.string	"flgCommActive_b"
	.byte	0xb
	.uahalf	0x198
	.uaword	0x271
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x8
	.string	"cntrWaitpendCounter_u8"
	.byte	0xb
	.uahalf	0x199
	.uaword	0x1bf
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x8
	.string	"stResponseType_en"
	.byte	0xb
	.uahalf	0x19a
	.uaword	0xea6
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0x8
	.string	"idxActiveSecurity_u8"
	.byte	0xb
	.uahalf	0x19b
	.uaword	0x1bf
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.string	"dataResult_u8"
	.byte	0xb
	.uahalf	0x19c
	.uaword	0x2b3
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0x8
	.string	"idxService_u8"
	.byte	0xb
	.uahalf	0x19d
	.uaword	0x1bf
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x8
	.string	"dataResponseByDsd_b"
	.byte	0xb
	.uahalf	0x19e
	.uaword	0x271
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0x8
	.string	"dataSid_u8"
	.byte	0xb
	.uahalf	0x19f
	.uaword	0x1bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.string	"flgPagedBufferTxOn_b"
	.byte	0xb
	.uahalf	0x1a4
	.uaword	0x271
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0x8
	.string	"dataNewRxPduId_u8"
	.byte	0xb
	.uahalf	0x1a7
	.uaword	0x2c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0x8
	.string	"dataRequestLength_u16"
	.byte	0xb
	.uahalf	0x1ac
	.uaword	0x2da
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.string	"dataOldtxPduId_u8"
	.byte	0xb
	.uahalf	0x1ad
	.uaword	0x2c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0x8
	.string	"dataCurrentPageRespLength_u32"
	.byte	0xb
	.uahalf	0x1af
	.uaword	0x404
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.string	"dataNewdataRequestLength_u16"
	.byte	0xb
	.uahalf	0x1b2
	.uaword	0x2da
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x8
	.string	"adrActiveTxBuffer_tpu8"
	.byte	0xb
	.uahalf	0x1ba
	.uaword	0x3ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.string	"dataTimeoutMonitor_u32"
	.byte	0xb
	.uahalf	0x1bb
	.uaword	0x226
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x8
	.string	"dataPagedBufferTimeout_u32"
	.byte	0xb
	.uahalf	0x1c0
	.uaword	0x226
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.string	"PreviousSessionIndex"
	.byte	0xb
	.uahalf	0x1c2
	.uaword	0x1bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.byte	0
	.uleb128 0x5
	.string	"Dcm_DsldInternalStructureType_tst"
	.byte	0xb
	.uahalf	0x1c4
	.uaword	0xec7
	.uleb128 0x7
	.byte	0x8
	.byte	0xb
	.uahalf	0x208
	.uaword	0x1259
	.uleb128 0x8
	.string	"dataTimeoutP2StrMax_u32"
	.byte	0xb
	.uahalf	0x20a
	.uaword	0x226
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"dataTimeoutP2max_u32"
	.byte	0xb
	.uahalf	0x20b
	.uaword	0x226
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x5
	.string	"Dcm_DsldTimingsType_tst"
	.byte	0xb
	.uahalf	0x20f
	.uaword	0x120c
	.uleb128 0x7
	.byte	0xc
	.byte	0xb
	.uahalf	0x211
	.uaword	0x12e6
	.uleb128 0x8
	.string	"TxBuffer_tpu8"
	.byte	0xb
	.uahalf	0x213
	.uaword	0x3ea
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"TxResponseLength_u32"
	.byte	0xb
	.uahalf	0x214
	.uaword	0x404
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"isForceResponsePendRequested_b"
	.byte	0xb
	.uahalf	0x215
	.uaword	0x271
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x5
	.string	"Dcm_DslTxType_tst"
	.byte	0xb
	.uahalf	0x216
	.uaword	0x1279
	.uleb128 0x13
	.string	"SchM_Enter_Dcm_DsldTimer_NoNest"
	.byte	0xc
	.byte	0x53
	.byte	0x1
	.byte	0x3
	.uleb128 0x13
	.string	"SchM_Exit_Dcm_DsldTimer_NoNest"
	.byte	0xc
	.byte	0x6f
	.byte	0x1
	.byte	0x3
	.uleb128 0x14
	.string	"Dcm_Prv_SetDefaultSesCtrlType"
	.byte	0x1
	.byte	0xae
	.byte	0x1
	.byte	0x1
	.uaword	0x1395
	.uleb128 0x15
	.string	"CurrentSession_u8"
	.byte	0x1
	.byte	0xae
	.uaword	0x393
	.uleb128 0x16
	.uaword	.LASF2
	.byte	0x1
	.byte	0xaf
	.uaword	0x393
	.byte	0
	.uleb128 0x17
	.string	"DCM_IS_KWPPROT_ACTIVE"
	.byte	0xb
	.uahalf	0x41b
	.byte	0x1
	.uaword	0x271
	.byte	0x3
	.uaword	0x13cb
	.uleb128 0x18
	.string	"retval_b"
	.byte	0xb
	.uahalf	0x41d
	.uaword	0x271
	.byte	0
	.uleb128 0x19
	.string	"Dcm_SesCtrlChangeIndication"
	.byte	0x2
	.byte	0x9c
	.byte	0x1
	.uaword	0x2b3
	.byte	0x3
	.uaword	0x142f
	.uleb128 0x15
	.string	"dataSesCtrlTypeOld_u8"
	.byte	0x2
	.byte	0x9d
	.uaword	0x393
	.uleb128 0x15
	.string	"dataSesCtrlTypeNew_u8"
	.byte	0x2
	.byte	0x9e
	.uaword	0x393
	.byte	0
	.uleb128 0x13
	.string	"SchM_Enter_Dcm_Global_NoNest"
	.byte	0xc
	.byte	0x1d
	.byte	0x1
	.byte	0x3
	.uleb128 0x1a
	.string	"Dcm_Prv_GetDsdState"
	.byte	0x3
	.byte	0x4a
	.byte	0x1
	.uaword	0xe4f
	.byte	0x3
	.uleb128 0x13
	.string	"SchM_Exit_Dcm_Global_NoNest"
	.byte	0xc
	.byte	0x37
	.byte	0x1
	.byte	0x3
	.uleb128 0x19
	.string	"Dcm_Prv_SetNonDefaultSesCtrlType"
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.uaword	0x271
	.byte	0x1
	.uaword	0x1522
	.uleb128 0x16
	.uaword	.LASF2
	.byte	0x1
	.byte	0x57
	.uaword	0x393
	.uleb128 0x1b
	.string	"isSessionAvailable"
	.byte	0x1
	.byte	0x59
	.uaword	0x271
	.uleb128 0x1b
	.string	"sessionMask_u32"
	.byte	0x1
	.byte	0x5b
	.uaword	0x226
	.uleb128 0x1b
	.string	"nrSessions_u8"
	.byte	0x1
	.byte	0x5e
	.uaword	0x1bf
	.uleb128 0x1b
	.string	"idxIndex_u8"
	.byte	0x1
	.byte	0x5f
	.uaword	0x1bf
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.string	"Dcm_Prv_SetSesCtrlType"
	.byte	0x1
	.byte	0xf6
	.byte	0x1
	.uaword	.LFB101
	.uaword	.LFE101
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x16dd
	.uleb128 0x1d
	.uaword	.LASF2
	.byte	0x1
	.byte	0xf6
	.uaword	0x393
	.uaword	.LLST0
	.uleb128 0x1e
	.string	"currentSession_u8"
	.byte	0x1
	.byte	0xf8
	.uaword	0x393
	.uaword	.LLST1
	.uleb128 0x1f
	.uaword	0x148f
	.uaword	.LBB23
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.uahalf	0x10a
	.uaword	0x160f
	.uleb128 0x20
	.uaword	0x14bd
	.uleb128 0x21
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x22
	.uaword	0x14c8
	.uaword	.LLST2
	.uleb128 0x22
	.uaword	0x14e2
	.uaword	.LLST3
	.uleb128 0x23
	.uaword	0x14f9
	.uleb128 0x22
	.uaword	0x150e
	.uaword	.LLST4
	.uleb128 0x24
	.uaword	.LVL7
	.uaword	0x1b45
	.uaword	0x15dc
	.uleb128 0x25
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x43
	.uleb128 0x25
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x9
	.byte	0xa7
	.uleb128 0x25
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x25
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x35
	.byte	0
	.uleb128 0x24
	.uaword	.LVL23
	.uaword	0x1b78
	.uaword	0x15f0
	.uleb128 0x25
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.uaword	.LVL24
	.uaword	0x1ba2
	.uleb128 0x27
	.uaword	.LVL25
	.uaword	0x1bcd
	.uleb128 0x25
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x31
	.uleb128 0x25
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uaword	0x13cb
	.uaword	.LBB26
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x1
	.uahalf	0x11f
	.uaword	0x1668
	.uleb128 0x28
	.uaword	0x1411
	.uaword	.LLST5
	.uleb128 0x28
	.uaword	0x13f4
	.uaword	.LLST6
	.uleb128 0x29
	.uaword	.LVL11
	.byte	0x1
	.uaword	0x1bfd
	.uaword	0x1650
	.uleb128 0x25
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x25
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.uaword	.LVL19
	.byte	0x1
	.uaword	0x1bfd
	.uleb128 0x25
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x25
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0x1349
	.uaword	.LBB29
	.uaword	.LBE29
	.byte	0x1
	.uahalf	0x106
	.uaword	0x16b8
	.uleb128 0x20
	.uaword	0x1370
	.uleb128 0x28
	.uaword	0x1389
	.uaword	.LLST7
	.uleb128 0x24
	.uaword	.LVL15
	.uaword	0x1bcd
	.uaword	0x16a7
	.uleb128 0x25
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x31
	.uleb128 0x25
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0x25
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x27
	.uaword	.LVL16
	.uaword	0x1b78
	.uleb128 0x25
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x26
	.uaword	.LVL9
	.uaword	0x1c35
	.uleb128 0x26
	.uaword	.LVL10
	.uaword	0x1c4f
	.uleb128 0x26
	.uaword	.LVL17
	.uaword	0x1c35
	.uleb128 0x26
	.uaword	.LVL18
	.uaword	0x1c4f
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.string	"Dcm_GetSesCtrlType"
	.byte	0x1
	.uahalf	0x12e
	.byte	0x1
	.uaword	0x2b3
	.uaword	.LFB102
	.uaword	.LFE102
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1743
	.uleb128 0x2d
	.string	"SesCtrlType"
	.byte	0x1
	.uahalf	0x12e
	.uaword	0x1743
	.uaword	.LLST8
	.uleb128 0x27
	.uaword	.LVL30
	.uaword	0x1b45
	.uleb128 0x25
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x37
	.uleb128 0x25
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x9
	.byte	0x95
	.uleb128 0x25
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x25
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x35
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x393
	.uleb128 0x2e
	.byte	0x1
	.string	"Dcm_ResetToDefaultSession"
	.byte	0x1
	.uahalf	0x150
	.byte	0x1
	.uaword	0x2b3
	.uaword	.LFB103
	.uaword	.LFE103
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x2f
	.byte	0x1
	.string	"Dcm_Prv_ProcessResetToDefaultSession"
	.byte	0x1
	.uahalf	0x163
	.byte	0x1
	.uaword	.LFB104
	.uaword	.LFE104
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x180c
	.uleb128 0x30
	.uaword	.LBB33
	.uaword	.LBE33
	.uleb128 0x18
	.string	"dslState"
	.byte	0x1
	.uahalf	0x167
	.uaword	0x1bf
	.uleb128 0x18
	.string	"dsdState"
	.byte	0x1
	.uahalf	0x168
	.uaword	0xe4f
	.uleb128 0x31
	.uaword	0x1451
	.uaword	.LBB34
	.uaword	.LBE34
	.byte	0x1
	.uahalf	0x16b
	.uleb128 0x26
	.uaword	.LVL34
	.uaword	0x1c6f
	.uleb128 0x26
	.uaword	.LVL35
	.uaword	0x1522
	.uleb128 0x26
	.uaword	.LVL36
	.uaword	0x1c9b
	.byte	0
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.string	"Dcm_Prv_ResetDefaultSessionRequestFlag"
	.byte	0x1
	.uahalf	0x18b
	.byte	0x1
	.uaword	.LFB105
	.uaword	.LFE105
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x1b
	.string	"s_CompareKeyStatus_u8"
	.byte	0xd
	.byte	0x15
	.uaword	0x2b3
	.uleb128 0x1b
	.string	"CompareKey_StateMachine_u8"
	.byte	0xd
	.byte	0x16
	.uaword	0x1bf
	.uleb128 0x33
	.string	"Dcm_isResetToDefaultRequested_b"
	.byte	0x1
	.byte	0x14
	.uaword	0x271
	.byte	0x5
	.byte	0x3
	.uaword	Dcm_isResetToDefaultRequested_b
	.uleb128 0x34
	.uaword	0x1bf
	.uaword	0x18bc
	.uleb128 0x35
	.byte	0
	.uleb128 0x36
	.string	"Dcm_InParameterBuf_au8"
	.byte	0xe
	.byte	0x8a
	.uaword	0x18b1
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.string	"Dcm_Dsld_Conf_cs"
	.byte	0x9
	.uahalf	0x411
	.uaword	0x18f7
	.byte	0x1
	.byte	0x1
	.uleb128 0x4
	.uaword	0xd6e
	.uleb128 0x34
	.uaword	0xc44
	.uaword	0x190c
	.uleb128 0x38
	.uaword	0x308
	.byte	0
	.byte	0
	.uleb128 0x37
	.string	"Dcm_active_commode_e"
	.byte	0x9
	.uahalf	0x576
	.uaword	0x18fc
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.uaword	0xdc9
	.uaword	0x193b
	.uleb128 0x38
	.uaword	0x308
	.byte	0
	.byte	0
	.uleb128 0x36
	.string	"Dcm_Dsp_Seca"
	.byte	0xa
	.byte	0xfa
	.uaword	0x192b
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.string	"stDsdState_en"
	.byte	0x3
	.byte	0x25
	.uaword	0xe4f
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.string	"Dcm_DsldConnTable_pcst"
	.byte	0xb
	.uahalf	0x282
	.uaword	0xd4d
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.string	"Dcm_DsldGlobal_st"
	.byte	0xb
	.uahalf	0x287
	.uaword	0x11e2
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.string	"Dcm_DsldTimer_st"
	.byte	0xb
	.uahalf	0x292
	.uaword	0x1259
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.string	"Dcm_isSessionStored_b"
	.byte	0xb
	.uahalf	0x29b
	.uaword	0x271
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.string	"Dcm_DslTransmit_st"
	.byte	0xb
	.uahalf	0x2a8
	.uaword	0x12e6
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.string	"Dcm_DsldSrvTable_pcst"
	.byte	0xb
	.uahalf	0x2ad
	.uaword	0xa70
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.string	"Dcm_DsldSessionTable_pcu8"
	.byte	0xb
	.uahalf	0x2bd
	.uaword	0x3b1
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.string	"Dcm_P2OrS3TimerStatus_uchr"
	.byte	0xb
	.uahalf	0x30c
	.uaword	0x2a1
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.string	"Dcm_DslState_u8"
	.byte	0xf
	.byte	0x27
	.uaword	0x1bf
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.string	"Dcm_DslPreemptionState_u8"
	.byte	0xf
	.byte	0x2c
	.uaword	0x1bf
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.string	"Dcm_GetattemptCounterWaitCycle_u8"
	.byte	0xd
	.byte	0x28
	.uaword	0x1bf
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.string	"Dcm_DspSecTabIdx_u8"
	.byte	0xd
	.byte	0x2a
	.uaword	0x1bf
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.string	"Dcm_dataSecLevel_u8"
	.byte	0xd
	.byte	0x2b
	.uaword	0x37a
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.string	"Dcm_DspSecAccType_u8"
	.byte	0xd
	.byte	0x2c
	.uaword	0x1bf
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.string	"Dcm_DspSecaOpStatus_u8"
	.byte	0xd
	.byte	0x2d
	.uaword	0x361
	.byte	0x1
	.byte	0x1
	.uleb128 0x39
	.byte	0x1
	.string	"Det_ReportError"
	.byte	0x15
	.byte	0x70
	.byte	0x1
	.uaword	0x2b3
	.byte	0x1
	.uaword	0x1b78
	.uleb128 0xa
	.uaword	0x1ea
	.uleb128 0xa
	.uaword	0x1bf
	.uleb128 0xa
	.uaword	0x1bf
	.uleb128 0xa
	.uaword	0x1bf
	.byte	0
	.uleb128 0x3a
	.byte	0x1
	.string	"Dcm_RoutineSetSesCtrlType"
	.byte	0x10
	.byte	0xb0
	.byte	0x1
	.byte	0x1
	.uaword	0x1ba2
	.uleb128 0xa
	.uaword	0x393
	.byte	0
	.uleb128 0x3b
	.byte	0x1
	.string	"Dcm_DsldGetActiveSessionMask_u32"
	.byte	0xb
	.byte	0xcb
	.byte	0x1
	.uaword	0x226
	.byte	0x1
	.uleb128 0x3a
	.byte	0x1
	.string	"Dcm_ResetActiveIoCtrl"
	.byte	0x11
	.byte	0x31
	.byte	0x1
	.byte	0x1
	.uaword	0x1bfd
	.uleb128 0xa
	.uaword	0x226
	.uleb128 0xa
	.uaword	0x226
	.uleb128 0xa
	.uaword	0x271
	.byte	0
	.uleb128 0x3a
	.byte	0x1
	.string	"DcmAppl_DcmSesCtrlChangeIndication"
	.byte	0x12
	.byte	0x6c
	.byte	0x1
	.byte	0x1
	.uaword	0x1c35
	.uleb128 0xa
	.uaword	0x393
	.uleb128 0xa
	.uaword	0x393
	.byte	0
	.uleb128 0x3c
	.byte	0x1
	.string	"Dcm_Dsp_SecaSessIni"
	.byte	0xa
	.byte	0xe4
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.byte	0x1
	.string	"Dcm_ControlDtcSettingExit"
	.byte	0x13
	.byte	0xd
	.byte	0x1
	.byte	0x1
	.uleb128 0x3a
	.byte	0x1
	.string	"ComM_DCM_InactiveDiagnostic"
	.byte	0x14
	.byte	0x32
	.byte	0x1
	.byte	0x1
	.uaword	0x1c9b
	.uleb128 0xa
	.uaword	0x2ef
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.string	"DcmAppl_Switch_DcmDiagnosticSessionControl"
	.byte	0x16
	.byte	0x35
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.uaword	0x393
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
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
	.uleb128 0xd
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x15
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x6
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x30
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x1d
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL6
	.uaword	.LVL8
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL8
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL11
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL14
	.uaword	.LVL16
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL19
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL22
	.uaword	.LVL26
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL26
	.uaword	.LFE101
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x2
	.byte	0x83
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LVL26
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL24
	.uaword	.LVL25-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL8
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL26
	.uaword	.LFE101
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL14
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL27
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL28
	.uaword	.LVL29
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL29
	.uaword	.LVL30-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL30-1
	.uaword	.LFE102
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
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
	.uaword	.LFB101
	.uaword	.LFE101-.LFB101
	.uaword	.LFB102
	.uaword	.LFE102-.LFB102
	.uaword	.LFB103
	.uaword	.LFE103-.LFB103
	.uaword	.LFB104
	.uaword	.LFE104-.LFB104
	.uaword	.LFB105
	.uaword	.LFE105-.LFB105
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB23
	.uaword	.LBE23
	.uaword	.LBB32
	.uaword	.LBE32
	.uaword	0
	.uaword	0
	.uaword	.LBB26
	.uaword	.LBE26
	.uaword	.LBB31
	.uaword	.LBE31
	.uaword	0
	.uaword	0
	.uaword	.LFB101
	.uaword	.LFE101
	.uaword	.LFB102
	.uaword	.LFE102
	.uaword	.LFB103
	.uaword	.LFE103
	.uaword	.LFB104
	.uaword	.LFE104
	.uaword	.LFB105
	.uaword	.LFE105
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF2:
	.string	"SesCtrlType_u8"
.LASF1:
	.string	"allowed_security_b32"
.LASF0:
	.string	"allowed_session_b32"
	.extern	DcmAppl_Switch_DcmDiagnosticSessionControl,STT_FUNC,0
	.extern	ComM_DCM_InactiveDiagnostic,STT_FUNC,0
	.extern	Dcm_active_commode_e,STT_OBJECT,2
	.extern	Dcm_DsldConnTable_pcst,STT_OBJECT,4
	.extern	stDsdState_en,STT_OBJECT,1
	.extern	Dcm_DslState_u8,STT_OBJECT,1
	.extern	Dcm_DsldGetActiveSessionMask_u32,STT_FUNC,0
	.extern	Dcm_RoutineSetSesCtrlType,STT_FUNC,0
	.extern	Dcm_ResetActiveIoCtrl,STT_FUNC,0
	.extern	Dcm_DsldTimer_st,STT_OBJECT,8
	.extern	DcmAppl_DcmSesCtrlChangeIndication,STT_FUNC,0
	.extern	Dcm_ControlDtcSettingExit,STT_FUNC,0
	.extern	Dcm_Dsp_SecaSessIni,STT_FUNC,0
	.extern	Det_ReportError,STT_FUNC,0
	.extern	Dcm_DsldGlobal_st,STT_OBJECT,48
	.extern	Dcm_DsldSessionTable_pcu8,STT_OBJECT,4
	.extern	Dcm_isSessionStored_b,STT_OBJECT,1
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
