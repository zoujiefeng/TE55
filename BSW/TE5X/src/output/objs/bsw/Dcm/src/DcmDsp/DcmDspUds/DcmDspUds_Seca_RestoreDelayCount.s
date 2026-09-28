	.file	"DcmDspUds_Seca_RestoreDelayCount.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Dcm_Dsp_RestoreDelayCount,"ax",@progbits
	.align 1
	.global	Dcm_Dsp_RestoreDelayCount
	.type	Dcm_Dsp_RestoreDelayCount, @function
Dcm_Dsp_RestoreDelayCount:
.LFB47:
	.file 1 "bsw\\Dcm\\src\\DcmDsp\\DcmDspUds\\DcmDspUds_Seca_RestoreDelayCount.c"
	.loc 1 221 0
	.loc 1 222 0
	movh	%d8, hi:dataRetValue_u8
	mov.a	%a2, %d8
	.loc 1 223 0
	movh	%d13, hi:waitRequested_b
	.loc 1 226 0
	movh	%d12, hi:Dcm_GetattemptCounterWaitCycle_u8
	.loc 1 222 0
	mov	%d15, 1
	.loc 1 223 0
	mov.a	%a3, %d13
	.loc 1 226 0
	mov.a	%a15, %d12
	.loc 1 222 0
	st.b	[%a2] lo:dataRetValue_u8, %d15
	.loc 1 223 0
	mov	%d15, 0
	st.b	[%a3] lo:waitRequested_b, %d15
	.loc 1 226 0
	ld.bu	%d15, [%a15] lo:Dcm_GetattemptCounterWaitCycle_u8
	ge.u	%d15, %d15, 100
	jz	%d15, .L29
.LVL0:
.LBB8:
.LBB9:
	.loc 1 69 0
	movh.a	%a2, hi:Dcm_Dsp_Security
	lea	%a2, [%a2] lo:Dcm_Dsp_Security
	ld.a	%a15, [%a2] 16
	jz.a	%a15, .L16
	.loc 1 70 0
	movh.a	%a3, hi:waitRequestedIdx_qu8
	.loc 1 69 0
	ld.bu	%d15, [%a3] lo:waitRequestedIdx_qu8
	jnz	%d15, .L30
.L16:
.LVL1:
.LBE9:
.LBE8:
	.loc 1 239 0
	call	Dcm_Dsp_SecaPowerOnDelayIni
.LVL2:
.L26:
	.loc 1 241 0
	mov.a	%a3, %d12
	ld.bu	%d15, [%a3] lo:Dcm_GetattemptCounterWaitCycle_u8
	add	%d15, 1
	st.b	[%a3] lo:Dcm_GetattemptCounterWaitCycle_u8, %d15
	ret
.L29:
	movh	%d14, hi:Dcm_Dsp_Security
	addi	%d14, %d14, lo:Dcm_Dsp_Security
.LBB11:
.LBB12:
	.loc 1 102 0
	mov.a	%a2, %d14
	.loc 1 100 0
	movh.a	%a15, hi:idxSeca_qu8.7383
	.loc 1 102 0
	ld.a	%a12, [%a2] 16
	movh.a	%a14, hi:waitRequestedIdx_qu8
	.loc 1 203 0
	movh	%d9, hi:Dcm_Dsp_Seca
	.loc 1 150 0
	movh.a	%a13, hi:attemptCounter_u8
	.loc 1 100 0
	st.w	[%a15] lo:idxSeca_qu8.7383, %d15
	lea	%a14, [%a14] lo:waitRequestedIdx_qu8
	lea	%a15, [%a15] lo:idxSeca_qu8.7383
	.loc 1 203 0
	addi	%d9, %d9, lo:Dcm_Dsp_Seca
	.loc 1 181 0
	mov	%d11, 0
	.loc 1 150 0
	lea	%a13, [%a13] lo:attemptCounter_u8
.L13:
	.loc 1 102 0
	jz.a	%a12, .L3
	.loc 1 140 0
	ld.bu	%d15, [%a14]0
	.loc 1 143 0
	mov.d	%d10, %a13
	.loc 1 140 0
	jz	%d15, .L4
	.loc 1 143 0
	mov	%d4, 1
	mov.aa	%a4, %a13
	calli	%a12
.LVL3:
	mov.a	%a3, %d8
	st.b	[%a3] lo:dataRetValue_u8, %d2
	.loc 1 154 0
	jeq	%d2, 1, .L7
.L32:
	jz	%d2, .L8
	eq	%d15, %d2, 10
	jz	%d15, .L31
	.loc 1 168 0
	mov.a	%a2, %d13
	.loc 1 171 0
	ld.w	%d15, [%a15]0
	.loc 1 168 0
	mov	%d2, 1
	st.b	[%a2] lo:waitRequested_b, %d2
	.loc 1 171 0
	addsc.a	%a2, %a14, %d15, 0
	st.b	[%a2]0, %d2
.L12:
	.loc 1 100 0
	add	%d15, 1
	st.w	[%a15]0, %d15
	jz	%d15, .L13
.LBE12:
.LBE11:
.LBB14:
.LBB15:
	.loc 1 40 0
	mov.a	%a2, %d13
	ld.bu	%d15, [%a2] lo:waitRequested_b
	jnz	%d15, .L26
	.loc 1 50 0
	mov.a	%a15, %d12
	mov	%d15, 101
	.loc 1 47 0
	call	Dcm_Dsp_SecaPowerOnDelayIni
.LVL4:
	.loc 1 50 0
	st.b	[%a15] lo:Dcm_GetattemptCounterWaitCycle_u8, %d15
	ret
.L4:
.LBE15:
.LBE14:
.LBB16:
.LBB13:
	.loc 1 150 0
	mov	%d4, 0
	mov.aa	%a4, %a13
	calli	%a12
.LVL5:
	mov.a	%a2, %d8
	st.b	[%a2] lo:dataRetValue_u8, %d2
	.loc 1 154 0
	jne	%d2, 1, .L32
.L7:
	.loc 1 178 0
	ld.w	%d15, [%a15]0
	mov.a	%a2, %d9
	madd	%d2, %d14, %d15, 48
	addsc.a	%a3, %a2, %d15, 3
	mov.a	%a2, %d2
	ld.bu	%d2, [%a2] 36
	.loc 1 181 0
	addsc.a	%a2, %a14, %d15, 0
	.loc 1 178 0
	st.b	[%a3] 4, %d2
	.loc 1 181 0
	st.b	[%a2]0, %d11
	j	.L12
.L8:
	.loc 1 159 0
	ld.w	%d15, [%a15]0
	mov.a	%a3, %d9
	addsc.a	%a2, %a3, %d15, 3
	mov.a	%a3, %d10
	ld.bu	%d3, [%a3]0
	st.b	[%a2] 4, %d3
	.loc 1 162 0
	addsc.a	%a2, %a14, %d15, 0
	st.b	[%a2]0, %d2
	j	.L12
.L31:
	.loc 1 195 0
	ld.w	%d15, [%a15]0
	.loc 1 189 0
	jlt.u	%d2, 2, .L12
	.loc 1 195 0
	mov.a	%a3, %d9
	addsc.a	%a2, %a3, %d15, 3
	st.b	[%a2] 4, %d11
	.loc 1 196 0
	addsc.a	%a2, %a14, %d15, 0
	st.b	[%a2]0, %d11
	j	.L12
.L3:
	.loc 1 203 0
	movh.a	%a2, hi:Dcm_Dsp_Security
	lea	%a2, [%a2] lo:Dcm_Dsp_Security
	ld.bu	%d15, [%a2] 36
	mov.a	%a3, %d9
	.loc 1 206 0
	mov.d	%d2, %a12
	.loc 1 203 0
	st.b	[%a3] 4, %d15
	.loc 1 206 0
	st.b	[%a14]0, %d2
	ld.w	%d15, [%a15]0
	j	.L12
.LVL6:
.L30:
.LBE13:
.LBE16:
.LBB17:
.LBB10:
	.loc 1 72 0
	ld.bu	%d15, [%a2] 36
	movh.a	%a2, hi:Dcm_Dsp_Seca
	lea	%a2, [%a2] lo:Dcm_Dsp_Seca
	.loc 1 81 0
	movh.a	%a4, hi:attemptCounter_u8
	.loc 1 72 0
	st.b	[%a2] 4, %d15
	.loc 1 81 0
	mov	%d4, 2
	lea	%a4, [%a4] lo:attemptCounter_u8
	calli	%a15
.LVL7:
	mov.a	%a2, %d8
	st.b	[%a2] lo:dataRetValue_u8, %d2
	j	.L16
.LBE10:
.LBE17:
.LFE47:
	.size	Dcm_Dsp_RestoreDelayCount, .-Dcm_Dsp_RestoreDelayCount
.section .bss.a4.idxSeca_qu8.7383,"aw",@nobits
	.align 2
	.type	idxSeca_qu8.7383, @object
	.size	idxSeca_qu8.7383, 4
idxSeca_qu8.7383:
	.zero	4
.section .bss.a1.attemptCounter_u8,"aw",@nobits
	.type	attemptCounter_u8, @object
	.size	attemptCounter_u8, 1
attemptCounter_u8:
	.zero	1
.section .bss.a1.dataRetValue_u8,"aw",@nobits
	.type	dataRetValue_u8, @object
	.size	dataRetValue_u8, 1
dataRetValue_u8:
	.zero	1
.section .bss.a1.waitRequestedIdx_qu8,"aw",@nobits
	.type	waitRequestedIdx_qu8, @object
	.size	waitRequestedIdx_qu8, 1
waitRequestedIdx_qu8:
	.zero	1
.section .bss.a1.waitRequested_b,"aw",@nobits
	.type	waitRequested_b, @object
	.size	waitRequested_b, 1
waitRequested_b:
	.zero	1
	.global	Dcm_GetattemptCounterWaitCycle_u8
.section .bss.a1.Dcm_GetattemptCounterWaitCycle_u8,"aw",@nobits
	.type	Dcm_GetattemptCounterWaitCycle_u8, @object
	.size	Dcm_GetattemptCounterWaitCycle_u8, 1
Dcm_GetattemptCounterWaitCycle_u8:
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
	.uaword	.LFB47
	.uaword	.LFE47-.LFB47
	.align 2
.LEFDE0:
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
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x147b
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Dcm\\src\\DcmDsp\\DcmDspUds\\DcmDspUds_Seca_RestoreDelayCount.c"
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
	.byte	0x2
	.byte	0x51
	.uaword	0x1ea
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
	.uaword	0x216
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
	.uaword	0x252
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
	.uaword	0x1ea
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x3
	.string	"uint8_least"
	.byte	0x2
	.byte	0x8a
	.uaword	0x2bd
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x3
	.string	"Std_ReturnType"
	.byte	0x3
	.byte	0x60
	.uaword	0x1dd
	.uleb128 0x3
	.string	"PduIdType"
	.byte	0x4
	.byte	0x2c
	.uaword	0x208
	.uleb128 0x3
	.string	"PduLengthType"
	.byte	0x4
	.byte	0x30
	.uaword	0x208
	.uleb128 0x4
	.byte	0x4
	.uaword	0x1dd
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x5
	.uaword	0x1dd
	.uleb128 0x6
	.string	"Dcm_ConfirmationStatusType"
	.byte	0x5
	.uahalf	0x107
	.uaword	0x1dd
	.uleb128 0x7
	.uaword	0x1dd
	.uaword	0x358
	.uleb128 0x8
	.uaword	0x314
	.byte	0
	.byte	0
	.uleb128 0x6
	.string	"Dcm_NegativeResponseCodeType"
	.byte	0x5
	.uahalf	0x118
	.uaword	0x1dd
	.uleb128 0x6
	.string	"Dcm_OpStatusType"
	.byte	0x5
	.uahalf	0x11a
	.uaword	0x1dd
	.uleb128 0x6
	.string	"Dcm_SecLevelType"
	.byte	0x5
	.uahalf	0x122
	.uaword	0x1dd
	.uleb128 0x4
	.byte	0x4
	.uaword	0x358
	.uleb128 0x4
	.byte	0x4
	.uaword	0x320
	.uleb128 0x3
	.string	"Dcm_SrvOpStatusType"
	.byte	0x6
	.byte	0x3e
	.uaword	0x1dd
	.uleb128 0x6
	.string	"Dcm_MsgItemType"
	.byte	0x6
	.uahalf	0x102
	.uaword	0x1dd
	.uleb128 0x6
	.string	"Dcm_MsgType"
	.byte	0x6
	.uahalf	0x108
	.uaword	0x402
	.uleb128 0x4
	.byte	0x4
	.uaword	0x3d6
	.uleb128 0x6
	.string	"Dcm_MsgLenType"
	.byte	0x6
	.uahalf	0x111
	.uaword	0x244
	.uleb128 0x9
	.byte	0x4
	.byte	0x6
	.uahalf	0x11a
	.uaword	0x476
	.uleb128 0xa
	.string	"reqType"
	.byte	0x6
	.uahalf	0x11e
	.uaword	0x1dd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"suppressPosResponse"
	.byte	0x6
	.uahalf	0x122
	.uaword	0x28f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.string	"sourceofRequest"
	.byte	0x6
	.uahalf	0x126
	.uaword	0x1dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x6
	.string	"Dcm_MsgAddInfoType"
	.byte	0x6
	.uahalf	0x127
	.uaword	0x41f
	.uleb128 0x6
	.string	"Dcm_IdContextType"
	.byte	0x6
	.uahalf	0x12d
	.uaword	0x1dd
	.uleb128 0x9
	.byte	0x1c
	.byte	0x6
	.uahalf	0x13c
	.uaword	0x561
	.uleb128 0xa
	.string	"resData"
	.byte	0x6
	.uahalf	0x143
	.uaword	0x3ee
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"reqData"
	.byte	0x6
	.uahalf	0x149
	.uaword	0x3ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.string	"msgAddInfo"
	.byte	0x6
	.uahalf	0x14f
	.uaword	0x476
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.string	"resDataLen"
	.byte	0x6
	.uahalf	0x155
	.uaword	0x408
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.string	"reqDataLen"
	.byte	0x6
	.uahalf	0x15a
	.uaword	0x408
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.string	"resMaxDataLen"
	.byte	0x6
	.uahalf	0x16c
	.uaword	0x408
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.string	"idContext"
	.byte	0x6
	.uahalf	0x177
	.uaword	0x491
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.string	"dcmRxPduId"
	.byte	0x6
	.uahalf	0x186
	.uaword	0x2e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.byte	0
	.uleb128 0x6
	.string	"Dcm_MsgContextType"
	.byte	0x6
	.uahalf	0x188
	.uaword	0x4ab
	.uleb128 0x6
	.string	"Dcm_ConfirmationApiType"
	.byte	0x6
	.uahalf	0x2e1
	.uaword	0x59c
	.uleb128 0x4
	.byte	0x4
	.uaword	0x5a2
	.uleb128 0xb
	.byte	0x1
	.uaword	0x5bd
	.uleb128 0xc
	.uaword	0x491
	.uleb128 0xc
	.uaword	0x2e8
	.uleb128 0xc
	.uaword	0x208
	.uleb128 0xc
	.uaword	0x325
	.byte	0
	.uleb128 0x9
	.byte	0x14
	.byte	0x6
	.uahalf	0x2ee
	.uaword	0x65e
	.uleb128 0xd
	.uaword	.LASF0
	.byte	0x6
	.uahalf	0x2f0
	.uaword	0x244
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.uaword	.LASF1
	.byte	0x6
	.uahalf	0x2f1
	.uaword	0x244
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.string	"adrUserSubServiceModeRule_pfct"
	.byte	0x6
	.uahalf	0x2f5
	.uaword	0x678
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.string	"SubFunc_fp"
	.byte	0x6
	.uahalf	0x2f6
	.uaword	0x69e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.string	"subservice_id_u8"
	.byte	0x6
	.uahalf	0x2f7
	.uaword	0x1dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.string	"isDspRDTCSubFnc_b"
	.byte	0x6
	.uahalf	0x2f8
	.uaword	0x28f
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.uaword	0x2d2
	.uaword	0x678
	.uleb128 0xc
	.uaword	0x3af
	.uleb128 0xc
	.uaword	0x1dd
	.uleb128 0xc
	.uaword	0x1dd
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x65e
	.uleb128 0xe
	.byte	0x1
	.uaword	0x2d2
	.uaword	0x698
	.uleb128 0xc
	.uaword	0x3bb
	.uleb128 0xc
	.uaword	0x698
	.uleb128 0xc
	.uaword	0x3af
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x561
	.uleb128 0x4
	.byte	0x4
	.uaword	0x67e
	.uleb128 0x6
	.string	"Dcm_Dsld_SubServiceType"
	.byte	0x6
	.uahalf	0x2f9
	.uaword	0x5bd
	.uleb128 0x9
	.byte	0x24
	.byte	0x6
	.uahalf	0x30a
	.uaword	0x7f5
	.uleb128 0xd
	.uaword	.LASF0
	.byte	0x6
	.uahalf	0x30c
	.uaword	0x244
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.uaword	.LASF1
	.byte	0x6
	.uahalf	0x30d
	.uaword	0x244
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.string	"service_handler_fp"
	.byte	0x6
	.uahalf	0x312
	.uaword	0x69e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.string	"Service_init_fp"
	.byte	0x6
	.uahalf	0x313
	.uaword	0x7f7
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.string	"sid_u8"
	.byte	0x6
	.uahalf	0x314
	.uaword	0x1dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.string	"subfunction_exist_b"
	.byte	0x6
	.uahalf	0x315
	.uaword	0x28f
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0xa
	.string	"servicelocator_b"
	.byte	0x6
	.uahalf	0x316
	.uaword	0x28f
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0xa
	.string	"ptr_subservice_table_pcs"
	.byte	0x6
	.uahalf	0x317
	.uaword	0x7fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.string	"num_sf_u8"
	.byte	0x6
	.uahalf	0x318
	.uaword	0x1dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.string	"adrUserServiceModeRule_pfct"
	.byte	0x6
	.uahalf	0x319
	.uaword	0x81d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.string	"Dcm_ConfirmationService"
	.byte	0x6
	.uahalf	0x31b
	.uaword	0x57c
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.uleb128 0x4
	.byte	0x4
	.uaword	0x7f5
	.uleb128 0x4
	.byte	0x4
	.uaword	0x803
	.uleb128 0x5
	.uaword	0x6a4
	.uleb128 0xe
	.byte	0x1
	.uaword	0x2d2
	.uaword	0x81d
	.uleb128 0xc
	.uaword	0x3af
	.uleb128 0xc
	.uaword	0x1dd
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x808
	.uleb128 0x6
	.string	"Dcm_Dsld_ServiceType"
	.byte	0x6
	.uahalf	0x31c
	.uaword	0x6c4
	.uleb128 0x4
	.byte	0x4
	.uaword	0x846
	.uleb128 0x5
	.uaword	0x823
	.uleb128 0x10
	.byte	0x8
	.byte	0x7
	.byte	0x2e
	.uaword	0x88c
	.uleb128 0x11
	.string	"Residual_delay_u32"
	.byte	0x7
	.byte	0x33
	.uaword	0x244
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"FailedAtm_cnt_u8"
	.byte	0x7
	.byte	0x34
	.uaword	0x1dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"Dcm_Dsp_SecaType"
	.byte	0x7
	.byte	0x35
	.uaword	0x84b
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.byte	0x3c
	.uaword	0x8d7
	.uleb128 0x13
	.string	"Dcm_GetSecurityAttemptCounter_pfct"
	.byte	0x7
	.byte	0x3e
	.uaword	0x8ec
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.uaword	0x2d2
	.uaword	0x8ec
	.uleb128 0xc
	.uaword	0x37d
	.uleb128 0xc
	.uaword	0x30e
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x8d7
	.uleb128 0x3
	.string	"un_GetSecurityAttempt"
	.byte	0x7
	.byte	0x44
	.uaword	0x8a4
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.byte	0x4a
	.uaword	0x942
	.uleb128 0x13
	.string	"Dcm_SetSecurityAttemptCounter_pfct"
	.byte	0x7
	.byte	0x4c
	.uaword	0x957
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.uaword	0x2d2
	.uaword	0x957
	.uleb128 0xc
	.uaword	0x37d
	.uleb128 0xc
	.uaword	0x1dd
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x942
	.uleb128 0x3
	.string	"un_SetSecurityAttempt"
	.byte	0x7
	.byte	0x51
	.uaword	0x90f
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.byte	0x59
	.uaword	0x9b3
	.uleb128 0x13
	.string	"Dcm_GetSeed_ptr4"
	.byte	0x7
	.byte	0x61
	.uaword	0x9e1
	.uleb128 0x13
	.string	"Dcm_GetSeed_ptr8"
	.byte	0x7
	.byte	0x6a
	.uaword	0xa1b
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.uaword	0x2d2
	.uaword	0x9e1
	.uleb128 0xc
	.uaword	0x396
	.uleb128 0xc
	.uaword	0x244
	.uleb128 0xc
	.uaword	0x244
	.uleb128 0xc
	.uaword	0x30e
	.uleb128 0xc
	.uaword	0x30e
	.uleb128 0xc
	.uaword	0x37d
	.uleb128 0xc
	.uaword	0x3af
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x9b3
	.uleb128 0xe
	.byte	0x1
	.uaword	0x2d2
	.uaword	0xa15
	.uleb128 0xc
	.uaword	0x396
	.uleb128 0xc
	.uaword	0xa15
	.uleb128 0xc
	.uaword	0x244
	.uleb128 0xc
	.uaword	0x30e
	.uleb128 0xc
	.uaword	0x30e
	.uleb128 0xc
	.uaword	0x37d
	.uleb128 0xc
	.uaword	0x3af
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x244
	.uleb128 0x4
	.byte	0x4
	.uaword	0x9e7
	.uleb128 0x3
	.string	"un_GetSeed"
	.byte	0x7
	.byte	0x74
	.uaword	0x97a
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.byte	0x7a
	.uaword	0xa57
	.uleb128 0x13
	.string	"Dcm_CompareKey_ptr3"
	.byte	0x7
	.byte	0x7e
	.uaword	0xa76
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.uaword	0x2d2
	.uaword	0xa76
	.uleb128 0xc
	.uaword	0x244
	.uleb128 0xc
	.uaword	0x3b5
	.uleb128 0xc
	.uaword	0x37d
	.uleb128 0xc
	.uaword	0x3af
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0xa57
	.uleb128 0x3
	.string	"un_CompareKey"
	.byte	0x7
	.byte	0x85
	.uaword	0xa33
	.uleb128 0x14
	.byte	0x1
	.byte	0x7
	.byte	0x8f
	.uaword	0xac6
	.uleb128 0x15
	.string	"USE_ASYNCH_CLIENT_SERVER"
	.sleb128 0
	.uleb128 0x15
	.string	"USE_ASYNCH_FNC"
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.string	"DcmDspSecurityUsePort"
	.byte	0x7
	.byte	0x92
	.uaword	0xa91
	.uleb128 0x10
	.byte	0x30
	.byte	0x7
	.byte	0xa5
	.uaword	0xc5f
	.uleb128 0x11
	.string	"PowerOnDelay_u32"
	.byte	0x7
	.byte	0xa7
	.uaword	0x244
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"DelayTime_u32"
	.byte	0x7
	.byte	0xa8
	.uaword	0x244
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.string	"Dsp_GetSeed_fp"
	.byte	0x7
	.byte	0xaa
	.uaword	0xa21
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.string	"Dsp_CompareKey_fp"
	.byte	0x7
	.byte	0xac
	.uaword	0xa7c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x11
	.string	"Dsp_GetAttempCounter_fp"
	.byte	0x7
	.byte	0xae
	.uaword	0x8f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x11
	.string	"Dsp_SetAttempCounter_fp"
	.byte	0x7
	.byte	0xaf
	.uaword	0x95d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x11
	.string	"Security_level_u8"
	.byte	0x7
	.byte	0xb9
	.uaword	0x396
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x11
	.string	"Seed_size_u32"
	.byte	0x7
	.byte	0xba
	.uaword	0x244
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x11
	.string	"Key_size_u32"
	.byte	0x7
	.byte	0xbb
	.uaword	0x244
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x11
	.string	"NumAttDelay_u8"
	.byte	0x7
	.byte	0xbc
	.uaword	0x1dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x11
	.string	"NumAttLock_u8"
	.byte	0x7
	.byte	0xbd
	.uaword	0x1dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x25
	.uleb128 0x11
	.string	"AccDataRecsize_u32"
	.byte	0x7
	.byte	0xbe
	.uaword	0x244
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x11
	.string	"usePort"
	.byte	0x7
	.byte	0xbf
	.uaword	0xac6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x11
	.string	"UseFlexibleLength"
	.byte	0x7
	.byte	0xc4
	.uaword	0x28f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2d
	.byte	0
	.uleb128 0x3
	.string	"Dcm_Dsp_Security_t"
	.byte	0x7
	.byte	0xc5
	.uaword	0xae3
	.uleb128 0x14
	.byte	0x1
	.byte	0x8
	.byte	0x16
	.uaword	0xce7
	.uleb128 0x15
	.string	"DSD_IDLE"
	.sleb128 0
	.uleb128 0x15
	.string	"DSD_VERIFY_DIAGNOSTIC_DATA"
	.sleb128 1
	.uleb128 0x15
	.string	"DSD_CALL_SERVICE"
	.sleb128 2
	.uleb128 0x15
	.string	"DSD_WAITFORTXCONF"
	.sleb128 3
	.uleb128 0x15
	.string	"DSD_SENDTXCONF_APPL"
	.sleb128 4
	.byte	0
	.uleb128 0x3
	.string	"Dcm_DsdStatesType_ten"
	.byte	0x8
	.byte	0x1c
	.uaword	0xc79
	.uleb128 0x16
	.byte	0x1
	.byte	0x9
	.uahalf	0x17f
	.uaword	0xd3e
	.uleb128 0x15
	.string	"DCM_DSLD_POS_RESPONSE"
	.sleb128 0
	.uleb128 0x15
	.string	"DCM_DSLD_NEG_RESPONSE"
	.sleb128 1
	.byte	0
	.uleb128 0x6
	.string	"Dcm_DsldResponseType_ten"
	.byte	0x9
	.uahalf	0x182
	.uaword	0xd04
	.uleb128 0x9
	.byte	0x30
	.byte	0x9
	.uahalf	0x18c
	.uaword	0x107a
	.uleb128 0xa
	.string	"dataActiveRxPduId_u8"
	.byte	0x9
	.uahalf	0x191
	.uaword	0x2e8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"nrActiveConn_u8"
	.byte	0x9
	.uahalf	0x192
	.uaword	0x1dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.string	"idxActiveSession_u8"
	.byte	0x9
	.uahalf	0x193
	.uaword	0x1dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xa
	.string	"flgMonitorP3timer_b"
	.byte	0x9
	.uahalf	0x194
	.uaword	0x28f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.string	"idxCurrentProtocol_u8"
	.byte	0x9
	.uahalf	0x195
	.uaword	0x1dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0xa
	.string	"dataActiveTxPduId_u8"
	.byte	0x9
	.uahalf	0x196
	.uaword	0x2e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xa
	.string	"datActiveSrvtable_u8"
	.byte	0x9
	.uahalf	0x197
	.uaword	0x1dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.string	"flgCommActive_b"
	.byte	0x9
	.uahalf	0x198
	.uaword	0x28f
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xa
	.string	"cntrWaitpendCounter_u8"
	.byte	0x9
	.uahalf	0x199
	.uaword	0x1dd
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xa
	.string	"stResponseType_en"
	.byte	0x9
	.uahalf	0x19a
	.uaword	0xd3e
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0xa
	.string	"idxActiveSecurity_u8"
	.byte	0x9
	.uahalf	0x19b
	.uaword	0x1dd
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.string	"dataResult_u8"
	.byte	0x9
	.uahalf	0x19c
	.uaword	0x2d2
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xa
	.string	"idxService_u8"
	.byte	0x9
	.uahalf	0x19d
	.uaword	0x1dd
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xa
	.string	"dataResponseByDsd_b"
	.byte	0x9
	.uahalf	0x19e
	.uaword	0x28f
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0xa
	.string	"dataSid_u8"
	.byte	0x9
	.uahalf	0x19f
	.uaword	0x1dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.string	"flgPagedBufferTxOn_b"
	.byte	0x9
	.uahalf	0x1a4
	.uaword	0x28f
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0xa
	.string	"dataNewRxPduId_u8"
	.byte	0x9
	.uahalf	0x1a7
	.uaword	0x2e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0xa
	.string	"dataRequestLength_u16"
	.byte	0x9
	.uahalf	0x1ac
	.uaword	0x2f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.string	"dataOldtxPduId_u8"
	.byte	0x9
	.uahalf	0x1ad
	.uaword	0x2e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0xa
	.string	"dataCurrentPageRespLength_u32"
	.byte	0x9
	.uahalf	0x1af
	.uaword	0x408
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.string	"dataNewdataRequestLength_u16"
	.byte	0x9
	.uahalf	0x1b2
	.uaword	0x2f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.string	"adrActiveTxBuffer_tpu8"
	.byte	0x9
	.uahalf	0x1ba
	.uaword	0x3ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.string	"dataTimeoutMonitor_u32"
	.byte	0x9
	.uahalf	0x1bb
	.uaword	0x244
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.string	"dataPagedBufferTimeout_u32"
	.byte	0x9
	.uahalf	0x1c0
	.uaword	0x244
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.string	"PreviousSessionIndex"
	.byte	0x9
	.uahalf	0x1c2
	.uaword	0x1dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.byte	0
	.uleb128 0x6
	.string	"Dcm_DsldInternalStructureType_tst"
	.byte	0x9
	.uahalf	0x1c4
	.uaword	0xd5f
	.uleb128 0x17
	.string	"Dcm_Prv_SecaDelayCountRead"
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.byte	0x1
	.uaword	0x10dc
	.uleb128 0x18
	.string	"idxSeca_qu8"
	.byte	0x1
	.byte	0x61
	.uaword	0x2aa
	.byte	0
	.uleb128 0x19
	.string	"Dcm_Prv_SecaGetattemptCounterCheck"
	.byte	0x1
	.byte	0x25
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.string	"Dcm_Prv_GetattemptCounterWaitCycleExhaused"
	.byte	0x1
	.byte	0x3f
	.byte	0x1
	.byte	0x1
	.uaword	0x114e
	.uleb128 0x18
	.string	"l_idxSeca_qu8"
	.byte	0x1
	.byte	0x41
	.uaword	0x2aa
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.string	"Dcm_Dsp_RestoreDelayCount"
	.byte	0x1
	.byte	0xdc
	.byte	0x1
	.uaword	.LFB47
	.uaword	.LFE47
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1226
	.uleb128 0x1b
	.uaword	0x1104
	.uaword	.LBB8
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xed
	.uaword	0x11b4
	.uleb128 0x1c
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x1d
	.uaword	0x1138
	.uaword	.LLST0
	.uleb128 0x1e
	.uaword	.LVL7
	.uleb128 0x1f
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	attemptCounter_u8
	.uleb128 0x1f
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uaword	0x10a4
	.uaword	.LBB11
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0xe5
	.uaword	0x11ff
	.uleb128 0x1c
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0x20
	.uaword	0x10c8
	.byte	0x5
	.byte	0x3
	.uaword	idxSeca_qu8.7383
	.uleb128 0x21
	.uaword	.LVL3
	.uaword	0x11ec
	.uleb128 0x1f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x1f
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1e
	.uaword	.LVL5
	.uleb128 0x1f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x1f
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.uaword	0x10dc
	.uaword	.LBB14
	.uaword	.LBE14
	.byte	0x1
	.byte	0xe7
	.uaword	0x121c
	.uleb128 0x23
	.uaword	.LVL4
	.uaword	0x145c
	.byte	0
	.uleb128 0x23
	.uaword	.LVL2
	.uaword	0x145c
	.byte	0
	.uleb128 0x18
	.string	"s_CompareKeyStatus_u8"
	.byte	0xa
	.byte	0x15
	.uaword	0x2d2
	.uleb128 0x18
	.string	"CompareKey_StateMachine_u8"
	.byte	0xa
	.byte	0x16
	.uaword	0x1dd
	.uleb128 0x24
	.string	"waitRequested_b"
	.byte	0x1
	.byte	0x14
	.uaword	0x28f
	.byte	0x5
	.byte	0x3
	.uaword	waitRequested_b
	.uleb128 0x24
	.string	"waitRequestedIdx_qu8"
	.byte	0x1
	.byte	0x16
	.uaword	0x348
	.byte	0x5
	.byte	0x3
	.uaword	waitRequestedIdx_qu8
	.uleb128 0x24
	.string	"dataRetValue_u8"
	.byte	0x1
	.byte	0x17
	.uaword	0x2d2
	.byte	0x5
	.byte	0x3
	.uaword	dataRetValue_u8
	.uleb128 0x24
	.string	"attemptCounter_u8"
	.byte	0x1
	.byte	0x18
	.uaword	0x1dd
	.byte	0x5
	.byte	0x3
	.uaword	attemptCounter_u8
	.uleb128 0x7
	.uaword	0x1dd
	.uaword	0x12eb
	.uleb128 0x25
	.byte	0
	.uleb128 0x26
	.string	"Dcm_InParameterBuf_au8"
	.byte	0xb
	.byte	0x8a
	.uaword	0x12e0
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.uaword	0x88c
	.uaword	0x131b
	.uleb128 0x8
	.uaword	0x314
	.byte	0
	.byte	0
	.uleb128 0x26
	.string	"Dcm_Dsp_Seca"
	.byte	0x7
	.byte	0xfa
	.uaword	0x130b
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.uaword	0xc5f
	.uaword	0x1341
	.uleb128 0x8
	.uaword	0x314
	.byte	0
	.byte	0
	.uleb128 0x27
	.string	"Dcm_Dsp_Security"
	.byte	0x7
	.uahalf	0x105
	.uaword	0x135c
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.uaword	0x1331
	.uleb128 0x26
	.string	"stDsdState_en"
	.byte	0x8
	.byte	0x25
	.uaword	0xce7
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.string	"Dcm_DsldGlobal_st"
	.byte	0x9
	.uahalf	0x287
	.uaword	0x107a
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.string	"Dcm_DsldSrvTable_pcst"
	.byte	0x9
	.uahalf	0x2ad
	.uaword	0x840
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.string	"Dcm_GetattemptCounterWaitCycle_u8"
	.byte	0x1
	.byte	0xc
	.uaword	0x1dd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Dcm_GetattemptCounterWaitCycle_u8
	.uleb128 0x26
	.string	"Dcm_DspSecTabIdx_u8"
	.byte	0xa
	.byte	0x2a
	.uaword	0x1dd
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.string	"Dcm_dataSecLevel_u8"
	.byte	0xa
	.byte	0x2b
	.uaword	0x396
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.string	"Dcm_DspSecAccType_u8"
	.byte	0xa
	.byte	0x2c
	.uaword	0x1dd
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.string	"Dcm_DspSecaOpStatus_u8"
	.byte	0xa
	.byte	0x2d
	.uaword	0x37d
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.byte	0x1
	.string	"Dcm_Dsp_SecaPowerOnDelayIni"
	.byte	0x7
	.byte	0xdd
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1b
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x21
	.byte	0
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
	.uleb128 0x3c
	.uleb128 0xc
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
	.uaword	.LVL1
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LFE47
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
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
	.uaword	.LFB47
	.uaword	.LFE47-.LFB47
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB8
	.uaword	.LBE8
	.uaword	.LBB17
	.uaword	.LBE17
	.uaword	0
	.uaword	0
	.uaword	.LBB11
	.uaword	.LBE11
	.uaword	.LBB16
	.uaword	.LBE16
	.uaword	0
	.uaword	0
	.uaword	.LFB47
	.uaword	.LFE47
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF1:
	.string	"allowed_security_b32"
.LASF0:
	.string	"allowed_session_b32"
	.extern	Dcm_Dsp_Seca,STT_OBJECT,8
	.extern	Dcm_Dsp_SecaPowerOnDelayIni,STT_FUNC,0
	.extern	Dcm_Dsp_Security,STT_OBJECT,48
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
