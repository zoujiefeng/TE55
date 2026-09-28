	.file	"DcmDspUds_Seca_SecurityIni.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Dcm_Dsp_SecaIni,"ax",@progbits
	.align 1
	.global	Dcm_Dsp_SecaIni
	.type	Dcm_Dsp_SecaIni, @function
Dcm_Dsp_SecaIni:
.LFB44:
	.file 1 "bsw\\Dcm\\src\\DcmDsp\\DcmDspUds\\DcmDspUds_Seca_SecurityIni.c"
	.loc 1 129 0
	.loc 1 141 0
	mov	%d15, 0
	.loc 1 129 0
	sub.a	%SP, 8
.LCFI0:
	.loc 1 145 0
	movh.a	%a13, hi:Dcm_DspSecaOpStatus_u8
	.loc 1 141 0
	st.b	[%SP] 7, %d15
	.loc 1 145 0
	ld.bu	%d15, [%a13] lo:Dcm_DspSecaOpStatus_u8
	.loc 1 148 0
	movh.a	%a12, hi:Dcm_DspSecTabIdx_u8
	movh.a	%a15, hi:Dcm_SrvOpstatus_u8
	movh.a	%a14, hi:Dcm_DspSecAccType_u8
	.loc 1 145 0
	jeq	%d15, 1, .L9
.L3:
	.loc 1 241 0
	mov	%d15, 0
	.loc 1 243 0
	movh.a	%a2, hi:CompareKey_StateMachine_u8
.LBB4:
.LBB5:
	.loc 1 317 0
	st.b	[%a15] lo:Dcm_SrvOpstatus_u8, %d15
	.loc 1 320 0
	movh.a	%a15, hi:Dcm_DspChgSecLevel_b
.LBE5:
.LBE4:
	.loc 1 241 0
	st.b	[%a13] lo:Dcm_DspSecaOpStatus_u8, %d15
	.loc 1 243 0
	st.b	[%a2] lo:CompareKey_StateMachine_u8, %d15
.LBB7:
.LBB6:
	.loc 1 320 0
	st.b	[%a15] lo:Dcm_DspChgSecLevel_b, %d15
	.loc 1 322 0
	st.b	[%a14] lo:Dcm_DspSecAccType_u8, %d15
	.loc 1 324 0
	st.b	[%a12] lo:Dcm_DspSecTabIdx_u8, %d15
	ret
.L9:
.LBE6:
.LBE7:
	.loc 1 158 0
	movh.a	%a15, hi:Dcm_SrvOpstatus_u8
	ld.bu	%d15, [%a15] lo:Dcm_SrvOpstatus_u8
	.loc 1 148 0
	ld.bu	%d8, [%a12] lo:Dcm_DspSecTabIdx_u8
.LVL0:
	movh.a	%a14, hi:Dcm_DspSecAccType_u8
	.loc 1 158 0
	jeq	%d15, 4, .L10
	.loc 1 207 0
	jne	%d15, 5, .L3
.L11:
	.loc 1 226 0
	movh.a	%a2, hi:Dcm_Dsp_Security
	mov.d	%d2, %a2
	addi	%d15, %d2, lo:Dcm_Dsp_Security
	madd	%d2, %d15, %d8, 48
	mov.a	%a2, %d2
	ld.bu	%d15, [%a2] 44
	jne	%d15, 1, .L3
	.loc 1 228 0
	ld.a	%a3, [%a2] 12
	ld.w	%d4, [%a2] 32
	mov.a	%a4, 0
	mov	%d5, 2
	lea	%a5, [%SP] 7
	calli	%a3
.LVL1:
	j	.L3
.L10:
	.loc 1 194 0
	movh.a	%a2, hi:Dcm_Dsp_Security
	mov.d	%d2, %a2
	addi	%d15, %d2, lo:Dcm_Dsp_Security
	madd	%d2, %d15, %d8, 48
	mov.a	%a2, %d2
	ld.bu	%d15, [%a2] 44
	jne	%d15, 1, .L3
.LVL2:
	.loc 1 197 0
	ld.bu	%d4, [%a14] lo:Dcm_DspSecAccType_u8
	.loc 1 198 0
	ld.a	%a3, [%a2] 8
	.loc 1 197 0
	add	%d4, 1
	.loc 1 198 0
	extr.u	%d4, %d4, 1, 8
	ld.w	%d5, [%a2] 28
	ld.w	%d6, [%a2] 40
	mov.a	%a4, 0
	mov.a	%a5, 0
	mov	%d7, 2
	lea	%a6, [%SP] 7
	calli	%a3
.LVL3:
	ld.bu	%d15, [%a15] lo:Dcm_SrvOpstatus_u8
	.loc 1 207 0
	jne	%d15, 5, .L3
	j	.L11
.LFE44:
	.size	Dcm_Dsp_SecaIni, .-Dcm_Dsp_SecaIni
.section .text.Dcm_Dsp_SecaPowerOnDelayIni,"ax",@progbits
	.align 1
	.global	Dcm_Dsp_SecaPowerOnDelayIni
	.type	Dcm_Dsp_SecaPowerOnDelayIni, @function
Dcm_Dsp_SecaPowerOnDelayIni:
.LFB45:
	.loc 1 260 0
.LVL4:
	.loc 1 266 0
	movh.a	%a12, hi:Dcm_Dsp_Seca
	lea	%a15, [%a12] lo:Dcm_Dsp_Seca
	movh.a	%a2, hi:Dcm_Dsp_Security
	ld.bu	%d5, [%a15] 4
	lea	%a15, [%a2] lo:Dcm_Dsp_Security
	ld.bu	%d15, [%a15] 36
	jlt.u	%d5, %d15, .L13
	.loc 1 268 0
	ld.w	%d6, [%a15] 4
	ld.w	%d15, [%a2] lo:Dcm_Dsp_Security
	max.u	%d6, %d6, %d15
.LVL5:
	.loc 1 271 0
	jnz	%d6, .L22
.LVL6:
.L14:
	.loc 1 284 0
	mov	%d15, 0
	st.w	[%a12] lo:Dcm_Dsp_Seca, %d15
	ret
.L13:
	.loc 1 289 0
	ld.w	%d6, [%a2] lo:Dcm_Dsp_Security
	jz	%d6, .L14
	.loc 1 291 0
	ld.bu	%d4, [%a15] 24
	call	DcmAppl_DcmGetUpdatedDelayForPowerOn
.LVL7:
	.loc 1 295 0
	st.w	[%a12] lo:Dcm_Dsp_Seca, %d2
.LVL8:
	ret
.LVL9:
.L22:
	.loc 1 275 0
	ld.bu	%d4, [%a15] 24
	call	DcmAppl_DcmGetUpdatedDelayTime
.LVL10:
	.loc 1 279 0
	movh.a	%a15, hi:Dcm_Dsp_SecaGlobaltimer_u32
	ld.w	%d15, [%a15] lo:Dcm_Dsp_SecaGlobaltimer_u32
	add	%d2, %d15
.LVL11:
	.loc 1 278 0
	st.w	[%a12] lo:Dcm_Dsp_Seca, %d2
	ret
.LFE45:
	.size	Dcm_Dsp_SecaPowerOnDelayIni, .-Dcm_Dsp_SecaPowerOnDelayIni
.section .text.Dcm_Dsp_SecaSessIni,"ax",@progbits
	.align 1
	.global	Dcm_Dsp_SecaSessIni
	.type	Dcm_Dsp_SecaSessIni, @function
Dcm_Dsp_SecaSessIni:
.LFB46:
	.loc 1 315 0
	.loc 1 317 0
	mov	%d15, 0
	movh.a	%a15, hi:Dcm_SrvOpstatus_u8
	st.b	[%a15] lo:Dcm_SrvOpstatus_u8, %d15
	.loc 1 320 0
	movh.a	%a15, hi:Dcm_DspChgSecLevel_b
	st.b	[%a15] lo:Dcm_DspChgSecLevel_b, %d15
	.loc 1 322 0
	movh.a	%a15, hi:Dcm_DspSecAccType_u8
	st.b	[%a15] lo:Dcm_DspSecAccType_u8, %d15
	.loc 1 324 0
	movh.a	%a15, hi:Dcm_DspSecTabIdx_u8
	st.b	[%a15] lo:Dcm_DspSecTabIdx_u8, %d15
	ret
.LFE46:
	.size	Dcm_Dsp_SecaSessIni, .-Dcm_Dsp_SecaSessIni
	.global	Dcm_DspSecaOpStatus_u8
.section .bss.a1.Dcm_DspSecaOpStatus_u8,"aw",@nobits
	.type	Dcm_DspSecaOpStatus_u8, @object
	.size	Dcm_DspSecaOpStatus_u8, 1
Dcm_DspSecaOpStatus_u8:
	.zero	1
	.global	Dcm_DspChgSecLevel_b
.section .bss.a1.Dcm_DspChgSecLevel_b,"aw",@nobits
	.type	Dcm_DspChgSecLevel_b, @object
	.size	Dcm_DspChgSecLevel_b, 1
Dcm_DspChgSecLevel_b:
	.zero	1
	.global	Dcm_Dsp_Seca
.section .bss.a4.Dcm_Dsp_Seca,"aw",@nobits
	.align 2
	.type	Dcm_Dsp_Seca, @object
	.size	Dcm_Dsp_Seca, 8
Dcm_Dsp_Seca:
	.zero	8
.section .bss.a1.CompareKey_StateMachine_u8,"aw",@nobits
	.type	CompareKey_StateMachine_u8, @object
	.size	CompareKey_StateMachine_u8, 1
CompareKey_StateMachine_u8:
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
	.uaword	.LFB44
	.uaword	.LFE44-.LFB44
	.byte	0x4
	.uaword	.LCFI0-.LFB44
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB45
	.uaword	.LFE45-.LFB45
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB46
	.uaword	.LFE46-.LFB46
	.align 2
.LEFDE4:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 4 ".\\output\\inc/..\\..\\bsw\\ComStack\\ComStack_Cfg.h"
	.file 5 ".\\output\\inc/..\\..\\rte\\Rte_Type.h"
	.file 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmCore_DslDsd_Pub.h"
	.file 7 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspUds_Seca_Pub.h"
	.file 8 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\Dsd\\Dcm_Dsd.h"
	.file 9 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\DcmCore\\DcmCoreDslDsd\\DcmCore_DslDsd_Prot.h"
	.file 10 "bsw\\Dcm\\src\\DcmDsp\\DcmDspUds\\DcmDspUds_Seca_Prv.h"
	.file 11 ".\\output\\inc/..\\..\\bsw\\Dcm\\Dcm_Cfg_DslDsd.h"
	.file 12 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\DcmAppl.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x14d4
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Dcm\\src\\DcmDsp\\DcmDspUds\\DcmDspUds_Seca_SecurityIni.c"
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
	.uaword	0x1e4
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
	.uaword	0x210
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
	.uaword	0x24c
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
	.uaword	0x1e4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x3
	.string	"uint8_least"
	.byte	0x2
	.byte	0x8a
	.uaword	0x2b7
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x3
	.string	"Std_ReturnType"
	.byte	0x3
	.byte	0x60
	.uaword	0x1d7
	.uleb128 0x3
	.string	"PduIdType"
	.byte	0x4
	.byte	0x2c
	.uaword	0x202
	.uleb128 0x3
	.string	"PduLengthType"
	.byte	0x4
	.byte	0x30
	.uaword	0x202
	.uleb128 0x4
	.byte	0x4
	.uaword	0x1d7
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x5
	.uaword	0x1d7
	.uleb128 0x6
	.string	"Dcm_ConfirmationStatusType"
	.byte	0x5
	.uahalf	0x107
	.uaword	0x1d7
	.uleb128 0x6
	.string	"Dcm_NegativeResponseCodeType"
	.byte	0x5
	.uahalf	0x118
	.uaword	0x1d7
	.uleb128 0x6
	.string	"Dcm_OpStatusType"
	.byte	0x5
	.uahalf	0x11a
	.uaword	0x1d7
	.uleb128 0x6
	.string	"Dcm_SecLevelType"
	.byte	0x5
	.uahalf	0x122
	.uaword	0x1d7
	.uleb128 0x4
	.byte	0x4
	.uaword	0x342
	.uleb128 0x4
	.byte	0x4
	.uaword	0x31a
	.uleb128 0x3
	.string	"Dcm_SrvOpStatusType"
	.byte	0x6
	.byte	0x3e
	.uaword	0x1d7
	.uleb128 0x6
	.string	"Dcm_MsgItemType"
	.byte	0x6
	.uahalf	0x102
	.uaword	0x1d7
	.uleb128 0x6
	.string	"Dcm_MsgType"
	.byte	0x6
	.uahalf	0x108
	.uaword	0x3ec
	.uleb128 0x4
	.byte	0x4
	.uaword	0x3c0
	.uleb128 0x6
	.string	"Dcm_MsgLenType"
	.byte	0x6
	.uahalf	0x111
	.uaword	0x23e
	.uleb128 0x7
	.byte	0x4
	.byte	0x6
	.uahalf	0x11a
	.uaword	0x460
	.uleb128 0x8
	.string	"reqType"
	.byte	0x6
	.uahalf	0x11e
	.uaword	0x1d7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"suppressPosResponse"
	.byte	0x6
	.uahalf	0x122
	.uaword	0x289
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x8
	.string	"sourceofRequest"
	.byte	0x6
	.uahalf	0x126
	.uaword	0x1d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x6
	.string	"Dcm_MsgAddInfoType"
	.byte	0x6
	.uahalf	0x127
	.uaword	0x409
	.uleb128 0x6
	.string	"Dcm_IdContextType"
	.byte	0x6
	.uahalf	0x12d
	.uaword	0x1d7
	.uleb128 0x7
	.byte	0x1c
	.byte	0x6
	.uahalf	0x13c
	.uaword	0x54b
	.uleb128 0x8
	.string	"resData"
	.byte	0x6
	.uahalf	0x143
	.uaword	0x3d8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"reqData"
	.byte	0x6
	.uahalf	0x149
	.uaword	0x3d8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"msgAddInfo"
	.byte	0x6
	.uahalf	0x14f
	.uaword	0x460
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.string	"resDataLen"
	.byte	0x6
	.uahalf	0x155
	.uaword	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.string	"reqDataLen"
	.byte	0x6
	.uahalf	0x15a
	.uaword	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.string	"resMaxDataLen"
	.byte	0x6
	.uahalf	0x16c
	.uaword	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.string	"idContext"
	.byte	0x6
	.uahalf	0x177
	.uaword	0x47b
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.string	"dcmRxPduId"
	.byte	0x6
	.uahalf	0x186
	.uaword	0x2e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.byte	0
	.uleb128 0x6
	.string	"Dcm_MsgContextType"
	.byte	0x6
	.uahalf	0x188
	.uaword	0x495
	.uleb128 0x6
	.string	"Dcm_ConfirmationApiType"
	.byte	0x6
	.uahalf	0x2e1
	.uaword	0x586
	.uleb128 0x4
	.byte	0x4
	.uaword	0x58c
	.uleb128 0x9
	.byte	0x1
	.uaword	0x5a7
	.uleb128 0xa
	.uaword	0x47b
	.uleb128 0xa
	.uaword	0x2e2
	.uleb128 0xa
	.uaword	0x202
	.uleb128 0xa
	.uaword	0x31f
	.byte	0
	.uleb128 0x7
	.byte	0x14
	.byte	0x6
	.uahalf	0x2ee
	.uaword	0x648
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0x6
	.uahalf	0x2f0
	.uaword	0x23e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.uaword	.LASF1
	.byte	0x6
	.uahalf	0x2f1
	.uaword	0x23e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"adrUserSubServiceModeRule_pfct"
	.byte	0x6
	.uahalf	0x2f5
	.uaword	0x662
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.string	"SubFunc_fp"
	.byte	0x6
	.uahalf	0x2f6
	.uaword	0x688
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.string	"subservice_id_u8"
	.byte	0x6
	.uahalf	0x2f7
	.uaword	0x1d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.string	"isDspRDTCSubFnc_b"
	.byte	0x6
	.uahalf	0x2f8
	.uaword	0x289
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.uaword	0x2cc
	.uaword	0x662
	.uleb128 0xa
	.uaword	0x399
	.uleb128 0xa
	.uaword	0x1d7
	.uleb128 0xa
	.uaword	0x1d7
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x648
	.uleb128 0xc
	.byte	0x1
	.uaword	0x2cc
	.uaword	0x682
	.uleb128 0xa
	.uaword	0x3a5
	.uleb128 0xa
	.uaword	0x682
	.uleb128 0xa
	.uaword	0x399
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x54b
	.uleb128 0x4
	.byte	0x4
	.uaword	0x668
	.uleb128 0x6
	.string	"Dcm_Dsld_SubServiceType"
	.byte	0x6
	.uahalf	0x2f9
	.uaword	0x5a7
	.uleb128 0x7
	.byte	0x24
	.byte	0x6
	.uahalf	0x30a
	.uaword	0x7df
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0x6
	.uahalf	0x30c
	.uaword	0x23e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.uaword	.LASF1
	.byte	0x6
	.uahalf	0x30d
	.uaword	0x23e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"service_handler_fp"
	.byte	0x6
	.uahalf	0x312
	.uaword	0x688
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.string	"Service_init_fp"
	.byte	0x6
	.uahalf	0x313
	.uaword	0x7e1
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.string	"sid_u8"
	.byte	0x6
	.uahalf	0x314
	.uaword	0x1d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.string	"subfunction_exist_b"
	.byte	0x6
	.uahalf	0x315
	.uaword	0x289
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0x8
	.string	"servicelocator_b"
	.byte	0x6
	.uahalf	0x316
	.uaword	0x289
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0x8
	.string	"ptr_subservice_table_pcs"
	.byte	0x6
	.uahalf	0x317
	.uaword	0x7e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.string	"num_sf_u8"
	.byte	0x6
	.uahalf	0x318
	.uaword	0x1d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.string	"adrUserServiceModeRule_pfct"
	.byte	0x6
	.uahalf	0x319
	.uaword	0x807
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x8
	.string	"Dcm_ConfirmationService"
	.byte	0x6
	.uahalf	0x31b
	.uaword	0x566
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.uleb128 0x4
	.byte	0x4
	.uaword	0x7df
	.uleb128 0x4
	.byte	0x4
	.uaword	0x7ed
	.uleb128 0x5
	.uaword	0x68e
	.uleb128 0xc
	.byte	0x1
	.uaword	0x2cc
	.uaword	0x807
	.uleb128 0xa
	.uaword	0x399
	.uleb128 0xa
	.uaword	0x1d7
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x7f2
	.uleb128 0x6
	.string	"Dcm_Dsld_ServiceType"
	.byte	0x6
	.uahalf	0x31c
	.uaword	0x6ae
	.uleb128 0x4
	.byte	0x4
	.uaword	0x830
	.uleb128 0x5
	.uaword	0x80d
	.uleb128 0xe
	.byte	0x8
	.byte	0x7
	.byte	0x2e
	.uaword	0x876
	.uleb128 0xf
	.string	"Residual_delay_u32"
	.byte	0x7
	.byte	0x33
	.uaword	0x23e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"FailedAtm_cnt_u8"
	.byte	0x7
	.byte	0x34
	.uaword	0x1d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"Dcm_Dsp_SecaType"
	.byte	0x7
	.byte	0x35
	.uaword	0x835
	.uleb128 0x10
	.byte	0x4
	.byte	0x7
	.byte	0x3c
	.uaword	0x8c1
	.uleb128 0x11
	.string	"Dcm_GetSecurityAttemptCounter_pfct"
	.byte	0x7
	.byte	0x3e
	.uaword	0x8d6
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.uaword	0x2cc
	.uaword	0x8d6
	.uleb128 0xa
	.uaword	0x367
	.uleb128 0xa
	.uaword	0x308
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x8c1
	.uleb128 0x3
	.string	"un_GetSecurityAttempt"
	.byte	0x7
	.byte	0x44
	.uaword	0x88e
	.uleb128 0x10
	.byte	0x4
	.byte	0x7
	.byte	0x4a
	.uaword	0x92c
	.uleb128 0x11
	.string	"Dcm_SetSecurityAttemptCounter_pfct"
	.byte	0x7
	.byte	0x4c
	.uaword	0x941
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.uaword	0x2cc
	.uaword	0x941
	.uleb128 0xa
	.uaword	0x367
	.uleb128 0xa
	.uaword	0x1d7
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x92c
	.uleb128 0x3
	.string	"un_SetSecurityAttempt"
	.byte	0x7
	.byte	0x51
	.uaword	0x8f9
	.uleb128 0x10
	.byte	0x4
	.byte	0x7
	.byte	0x59
	.uaword	0x99d
	.uleb128 0x11
	.string	"Dcm_GetSeed_ptr4"
	.byte	0x7
	.byte	0x61
	.uaword	0x9cb
	.uleb128 0x11
	.string	"Dcm_GetSeed_ptr8"
	.byte	0x7
	.byte	0x6a
	.uaword	0xa05
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.uaword	0x2cc
	.uaword	0x9cb
	.uleb128 0xa
	.uaword	0x380
	.uleb128 0xa
	.uaword	0x23e
	.uleb128 0xa
	.uaword	0x23e
	.uleb128 0xa
	.uaword	0x308
	.uleb128 0xa
	.uaword	0x308
	.uleb128 0xa
	.uaword	0x367
	.uleb128 0xa
	.uaword	0x399
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x99d
	.uleb128 0xc
	.byte	0x1
	.uaword	0x2cc
	.uaword	0x9ff
	.uleb128 0xa
	.uaword	0x380
	.uleb128 0xa
	.uaword	0x9ff
	.uleb128 0xa
	.uaword	0x23e
	.uleb128 0xa
	.uaword	0x308
	.uleb128 0xa
	.uaword	0x308
	.uleb128 0xa
	.uaword	0x367
	.uleb128 0xa
	.uaword	0x399
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x23e
	.uleb128 0x4
	.byte	0x4
	.uaword	0x9d1
	.uleb128 0x3
	.string	"un_GetSeed"
	.byte	0x7
	.byte	0x74
	.uaword	0x964
	.uleb128 0x10
	.byte	0x4
	.byte	0x7
	.byte	0x7a
	.uaword	0xa41
	.uleb128 0x11
	.string	"Dcm_CompareKey_ptr3"
	.byte	0x7
	.byte	0x7e
	.uaword	0xa60
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.uaword	0x2cc
	.uaword	0xa60
	.uleb128 0xa
	.uaword	0x23e
	.uleb128 0xa
	.uaword	0x39f
	.uleb128 0xa
	.uaword	0x367
	.uleb128 0xa
	.uaword	0x399
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0xa41
	.uleb128 0x3
	.string	"un_CompareKey"
	.byte	0x7
	.byte	0x85
	.uaword	0xa1d
	.uleb128 0x12
	.byte	0x1
	.byte	0x7
	.byte	0x8f
	.uaword	0xab0
	.uleb128 0x13
	.string	"USE_ASYNCH_CLIENT_SERVER"
	.sleb128 0
	.uleb128 0x13
	.string	"USE_ASYNCH_FNC"
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.string	"DcmDspSecurityUsePort"
	.byte	0x7
	.byte	0x92
	.uaword	0xa7b
	.uleb128 0xe
	.byte	0x30
	.byte	0x7
	.byte	0xa5
	.uaword	0xc49
	.uleb128 0xf
	.string	"PowerOnDelay_u32"
	.byte	0x7
	.byte	0xa7
	.uaword	0x23e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"DelayTime_u32"
	.byte	0x7
	.byte	0xa8
	.uaword	0x23e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.string	"Dsp_GetSeed_fp"
	.byte	0x7
	.byte	0xaa
	.uaword	0xa0b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.string	"Dsp_CompareKey_fp"
	.byte	0x7
	.byte	0xac
	.uaword	0xa66
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xf
	.string	"Dsp_GetAttempCounter_fp"
	.byte	0x7
	.byte	0xae
	.uaword	0x8dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"Dsp_SetAttempCounter_fp"
	.byte	0x7
	.byte	0xaf
	.uaword	0x947
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xf
	.string	"Security_level_u8"
	.byte	0x7
	.byte	0xb9
	.uaword	0x380
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xf
	.string	"Seed_size_u32"
	.byte	0x7
	.byte	0xba
	.uaword	0x23e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xf
	.string	"Key_size_u32"
	.byte	0x7
	.byte	0xbb
	.uaword	0x23e
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xf
	.string	"NumAttDelay_u8"
	.byte	0x7
	.byte	0xbc
	.uaword	0x1d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xf
	.string	"NumAttLock_u8"
	.byte	0x7
	.byte	0xbd
	.uaword	0x1d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x25
	.uleb128 0xf
	.string	"AccDataRecsize_u32"
	.byte	0x7
	.byte	0xbe
	.uaword	0x23e
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xf
	.string	"usePort"
	.byte	0x7
	.byte	0xbf
	.uaword	0xab0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xf
	.string	"UseFlexibleLength"
	.byte	0x7
	.byte	0xc4
	.uaword	0x289
	.byte	0x2
	.byte	0x23
	.uleb128 0x2d
	.byte	0
	.uleb128 0x3
	.string	"Dcm_Dsp_Security_t"
	.byte	0x7
	.byte	0xc5
	.uaword	0xacd
	.uleb128 0x12
	.byte	0x1
	.byte	0x8
	.byte	0x16
	.uaword	0xcd1
	.uleb128 0x13
	.string	"DSD_IDLE"
	.sleb128 0
	.uleb128 0x13
	.string	"DSD_VERIFY_DIAGNOSTIC_DATA"
	.sleb128 1
	.uleb128 0x13
	.string	"DSD_CALL_SERVICE"
	.sleb128 2
	.uleb128 0x13
	.string	"DSD_WAITFORTXCONF"
	.sleb128 3
	.uleb128 0x13
	.string	"DSD_SENDTXCONF_APPL"
	.sleb128 4
	.byte	0
	.uleb128 0x3
	.string	"Dcm_DsdStatesType_ten"
	.byte	0x8
	.byte	0x1c
	.uaword	0xc63
	.uleb128 0x14
	.byte	0x1
	.byte	0x9
	.uahalf	0x17f
	.uaword	0xd28
	.uleb128 0x13
	.string	"DCM_DSLD_POS_RESPONSE"
	.sleb128 0
	.uleb128 0x13
	.string	"DCM_DSLD_NEG_RESPONSE"
	.sleb128 1
	.byte	0
	.uleb128 0x6
	.string	"Dcm_DsldResponseType_ten"
	.byte	0x9
	.uahalf	0x182
	.uaword	0xcee
	.uleb128 0x7
	.byte	0x30
	.byte	0x9
	.uahalf	0x18c
	.uaword	0x1064
	.uleb128 0x8
	.string	"dataActiveRxPduId_u8"
	.byte	0x9
	.uahalf	0x191
	.uaword	0x2e2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"nrActiveConn_u8"
	.byte	0x9
	.uahalf	0x192
	.uaword	0x1d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x8
	.string	"idxActiveSession_u8"
	.byte	0x9
	.uahalf	0x193
	.uaword	0x1d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x8
	.string	"flgMonitorP3timer_b"
	.byte	0x9
	.uahalf	0x194
	.uaword	0x289
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"idxCurrentProtocol_u8"
	.byte	0x9
	.uahalf	0x195
	.uaword	0x1d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x8
	.string	"dataActiveTxPduId_u8"
	.byte	0x9
	.uahalf	0x196
	.uaword	0x2e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x8
	.string	"datActiveSrvtable_u8"
	.byte	0x9
	.uahalf	0x197
	.uaword	0x1d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.string	"flgCommActive_b"
	.byte	0x9
	.uahalf	0x198
	.uaword	0x289
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x8
	.string	"cntrWaitpendCounter_u8"
	.byte	0x9
	.uahalf	0x199
	.uaword	0x1d7
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x8
	.string	"stResponseType_en"
	.byte	0x9
	.uahalf	0x19a
	.uaword	0xd28
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0x8
	.string	"idxActiveSecurity_u8"
	.byte	0x9
	.uahalf	0x19b
	.uaword	0x1d7
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.string	"dataResult_u8"
	.byte	0x9
	.uahalf	0x19c
	.uaword	0x2cc
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0x8
	.string	"idxService_u8"
	.byte	0x9
	.uahalf	0x19d
	.uaword	0x1d7
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x8
	.string	"dataResponseByDsd_b"
	.byte	0x9
	.uahalf	0x19e
	.uaword	0x289
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0x8
	.string	"dataSid_u8"
	.byte	0x9
	.uahalf	0x19f
	.uaword	0x1d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.string	"flgPagedBufferTxOn_b"
	.byte	0x9
	.uahalf	0x1a4
	.uaword	0x289
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0x8
	.string	"dataNewRxPduId_u8"
	.byte	0x9
	.uahalf	0x1a7
	.uaword	0x2e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0x8
	.string	"dataRequestLength_u16"
	.byte	0x9
	.uahalf	0x1ac
	.uaword	0x2f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.string	"dataOldtxPduId_u8"
	.byte	0x9
	.uahalf	0x1ad
	.uaword	0x2e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0x8
	.string	"dataCurrentPageRespLength_u32"
	.byte	0x9
	.uahalf	0x1af
	.uaword	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.string	"dataNewdataRequestLength_u16"
	.byte	0x9
	.uahalf	0x1b2
	.uaword	0x2f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x8
	.string	"adrActiveTxBuffer_tpu8"
	.byte	0x9
	.uahalf	0x1ba
	.uaword	0x3d8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.string	"dataTimeoutMonitor_u32"
	.byte	0x9
	.uahalf	0x1bb
	.uaword	0x23e
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x8
	.string	"dataPagedBufferTimeout_u32"
	.byte	0x9
	.uahalf	0x1c0
	.uaword	0x23e
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.string	"PreviousSessionIndex"
	.byte	0x9
	.uahalf	0x1c2
	.uaword	0x1d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.byte	0
	.uleb128 0x6
	.string	"Dcm_DsldInternalStructureType_tst"
	.byte	0x9
	.uahalf	0x1c4
	.uaword	0xd49
	.uleb128 0x15
	.byte	0x1
	.string	"Dcm_Dsp_SecaSessIni"
	.byte	0x1
	.uahalf	0x13a
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.byte	0x1
	.string	"Dcm_Dsp_SecaIni"
	.byte	0x1
	.byte	0x80
	.byte	0x1
	.uaword	.LFB44
	.uaword	.LFE44
	.uaword	.LLST0
	.byte	0x1
	.uaword	0x1161
	.uleb128 0x17
	.string	"dataSecLevel_u8"
	.byte	0x1
	.byte	0x85
	.uaword	0x380
	.uleb128 0x17
	.string	"ptrSecurityConfig"
	.byte	0x1
	.byte	0x87
	.uaword	0x1161
	.uleb128 0x18
	.string	"dataNegRespCode_u8"
	.byte	0x1
	.byte	0x88
	.uaword	0x342
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x19
	.uaword	0x108e
	.uaword	.LBB4
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xf5
	.uleb128 0x1a
	.uaword	.LVL1
	.uaword	0x1145
	.uleb128 0x1b
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x1b
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x32
	.uleb128 0x1b
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1c
	.uaword	.LVL3
	.uleb128 0x1b
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x1b
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x32
	.uleb128 0x1b
	.byte	0x1
	.byte	0x65
	.byte	0x1
	.byte	0x30
	.uleb128 0x1b
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x1167
	.uleb128 0x5
	.uaword	0xc49
	.uleb128 0x1d
	.byte	0x1
	.string	"Dcm_Dsp_SecaPowerOnDelayIni"
	.byte	0x1
	.uahalf	0x103
	.byte	0x1
	.uaword	.LFB45
	.uaword	.LFE45
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x121e
	.uleb128 0x1e
	.string	"idxSecTab_qu8"
	.byte	0x1
	.uahalf	0x105
	.uaword	0x2a4
	.uaword	.LLST1
	.uleb128 0x1e
	.string	"dataDelayOnPowerOn_u32"
	.byte	0x1
	.uahalf	0x106
	.uaword	0x23e
	.uaword	.LLST2
	.uleb128 0x1f
	.uaword	.LVL7
	.uaword	0x1459
	.uaword	0x11f1
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x4
	.byte	0x8f
	.sleb128 24
	.byte	0x94
	.byte	0x1
	.byte	0
	.uleb128 0x20
	.uaword	.LVL10
	.uaword	0x149d
	.uleb128 0x1b
	.byte	0x1
	.byte	0x56
	.byte	0x16
	.byte	0x8f
	.sleb128 4
	.byte	0x6
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x7f
	.sleb128 0
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2b
	.byte	0x28
	.uahalf	0x1
	.byte	0x16
	.byte	0x13
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x4
	.byte	0x8f
	.sleb128 24
	.byte	0x94
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x21
	.uaword	0x108e
	.uaword	.LFB46
	.uaword	.LFE46
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x17
	.string	"s_CompareKeyStatus_u8"
	.byte	0xa
	.byte	0x15
	.uaword	0x2cc
	.uleb128 0x18
	.string	"CompareKey_StateMachine_u8"
	.byte	0xa
	.byte	0x16
	.uaword	0x1d7
	.byte	0x5
	.byte	0x3
	.uaword	CompareKey_StateMachine_u8
	.uleb128 0x22
	.uaword	0x1d7
	.uaword	0x127f
	.uleb128 0x23
	.byte	0
	.uleb128 0x24
	.string	"Dcm_InParameterBuf_au8"
	.byte	0xb
	.byte	0x8a
	.uaword	0x1274
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.string	"Dcm_Dsp_SecaGlobaltimer_u32"
	.byte	0x7
	.byte	0xd9
	.uaword	0x23e
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.uaword	0x876
	.uaword	0x12d4
	.uleb128 0x25
	.uaword	0x30e
	.byte	0
	.byte	0
	.uleb128 0x26
	.string	"Dcm_Dsp_Seca"
	.byte	0x1
	.byte	0xd
	.uaword	0x12c4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Dcm_Dsp_Seca
	.uleb128 0x22
	.uaword	0xc49
	.uaword	0x12ff
	.uleb128 0x25
	.uaword	0x30e
	.byte	0
	.byte	0
	.uleb128 0x27
	.string	"Dcm_Dsp_Security"
	.byte	0x7
	.uahalf	0x105
	.uaword	0x131a
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.uaword	0x12ef
	.uleb128 0x24
	.string	"stDsdState_en"
	.byte	0x8
	.byte	0x25
	.uaword	0xcd1
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.string	"Dcm_SrvOpstatus_u8"
	.byte	0x9
	.byte	0xb0
	.uaword	0x3a5
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.string	"Dcm_DsldGlobal_st"
	.byte	0x9
	.uahalf	0x287
	.uaword	0x1064
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.string	"Dcm_DsldSrvTable_pcst"
	.byte	0x9
	.uahalf	0x2ad
	.uaword	0x82a
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.string	"Dcm_GetattemptCounterWaitCycle_u8"
	.byte	0xa
	.byte	0x28
	.uaword	0x1d7
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.string	"Dcm_DspSecTabIdx_u8"
	.byte	0xa
	.byte	0x2a
	.uaword	0x1d7
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.string	"Dcm_dataSecLevel_u8"
	.byte	0xa
	.byte	0x2b
	.uaword	0x380
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.string	"Dcm_DspSecAccType_u8"
	.byte	0xa
	.byte	0x2c
	.uaword	0x1d7
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.string	"Dcm_DspSecaOpStatus_u8"
	.byte	0x1
	.byte	0x17
	.uaword	0x367
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Dcm_DspSecaOpStatus_u8
	.uleb128 0x26
	.string	"Dcm_DspChgSecLevel_b"
	.byte	0x1
	.byte	0x12
	.uaword	0x289
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Dcm_DspChgSecLevel_b
	.uleb128 0x28
	.byte	0x1
	.string	"DcmAppl_DcmGetUpdatedDelayForPowerOn"
	.byte	0xc
	.uahalf	0x186
	.byte	0x1
	.uaword	0x23e
	.byte	0x1
	.uaword	0x149d
	.uleb128 0xa
	.uaword	0x1d7
	.uleb128 0xa
	.uaword	0x1d7
	.uleb128 0xa
	.uaword	0x23e
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.string	"DcmAppl_DcmGetUpdatedDelayTime"
	.byte	0xc
	.uahalf	0x17f
	.byte	0x1
	.uaword	0x23e
	.byte	0x1
	.uleb128 0xa
	.uaword	0x1d7
	.uleb128 0xa
	.uaword	0x1d7
	.uleb128 0xa
	.uaword	0x23e
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x17
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x1d
	.byte	0
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
	.uleb128 0x1a
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uaword	.LFB44
	.uaword	.LCFI0
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0
	.uaword	.LFE44
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL4
	.uaword	.LVL8
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LFE45
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL7
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL9
	.uaword	.LVL10-1
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL10-1
	.uaword	.LVL10
	.uahalf	0x17
	.byte	0x8f
	.sleb128 4
	.byte	0x6
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x7f
	.sleb128 0
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2b
	.byte	0x28
	.uahalf	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LVL11
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
	.uaword	.LFB44
	.uaword	.LFE44-.LFB44
	.uaword	.LFB45
	.uaword	.LFE45-.LFB45
	.uaword	.LFB46
	.uaword	.LFE46-.LFB46
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB4
	.uaword	.LBE4
	.uaword	.LBB7
	.uaword	.LBE7
	.uaword	0
	.uaword	0
	.uaword	.LFB44
	.uaword	.LFE44
	.uaword	.LFB45
	.uaword	.LFE45
	.uaword	.LFB46
	.uaword	.LFE46
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF1:
	.string	"allowed_security_b32"
.LASF0:
	.string	"allowed_session_b32"
	.extern	Dcm_Dsp_SecaGlobaltimer_u32,STT_OBJECT,4
	.extern	DcmAppl_DcmGetUpdatedDelayTime,STT_FUNC,0
	.extern	DcmAppl_DcmGetUpdatedDelayForPowerOn,STT_FUNC,0
	.extern	Dcm_Dsp_Security,STT_OBJECT,48
	.extern	Dcm_DspSecAccType_u8,STT_OBJECT,1
	.extern	Dcm_SrvOpstatus_u8,STT_OBJECT,1
	.extern	Dcm_DspSecTabIdx_u8,STT_OBJECT,1
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
