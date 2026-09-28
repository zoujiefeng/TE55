	.file	"CanSM_TransceiverModeIndication.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.CanSM_TransceiverModeIndication,"ax",@progbits
	.align 1
	.global	CanSM_TransceiverModeIndication
	.type	CanSM_TransceiverModeIndication, @function
CanSM_TransceiverModeIndication:
.LFB76:
	.file 1 "bsw\\CanSM\\src\\CanSM_TransceiverModeIndication.c"
	.loc 1 34 0
.LVL0:
	.loc 1 62 0
	movh.a	%a15, hi:CanSM_Init_ab
	ld.bu	%d15, [%a15] lo:CanSM_Init_ab
	jz	%d15, .L2
.LVL1:
	.loc 1 68 0 discriminator 1
	movh.a	%a15, hi:CanSM_ConfigSet_pcst
	ld.a	%a15, [%a15] lo:CanSM_ConfigSet_pcst
	ld.bu	%d15, [%a15] 11
	jz	%d15, .L3
	.loc 1 71 0
	movh.a	%a15, hi:CanSM_Network_pcst
	ld.a	%a2, [%a15] lo:CanSM_Network_pcst
	ld.bu	%d2, [%a2] 12
	jeq	%d2, %d4, .L30
	mov.a	%a15, %d15
	lea	%a2, [%a2] 20
	mov	%d2, 0
	add.a	%a15, -1
.LVL2:
.L6:
	.loc 1 68 0 discriminator 2
	add	%d2, 1
.LVL3:
	loop	%a15, .L9
.LVL4:
.L3:
	.loc 1 122 0
	mov	%e4, 140
.LVL5:
	mov	%d6, 9
	mov	%d7, 5
	j	Det_ReportError
.LVL6:
.L9:
	.loc 1 71 0
	ld.bu	%d15, [%a2] 12
	lea	%a2, [%a2] 20
	jne	%d15, %d4, .L6
.LVL7:
.L4:
	.loc 1 75 0
	movh.a	%a15, hi:CanSM_CurrNw_Mode_en
	lea	%a15, [%a15] lo:CanSM_CurrNw_Mode_en
	addsc.a	%a15, %a15, %d2, 0
	.loc 1 79 0
	ld.bu	%d15, [%a15]0
	jeq	%d15, 3, .L2
	.loc 1 86 0
	mov	%d15, 1
	.loc 1 84 0
	jz	%d5, .L7
	.loc 1 90 0
	mov	%d15, 2
	.loc 1 88 0
	jeq	%d5, 1, .L7
	.loc 1 94 0
	ne	%d5, %d5, 2
.LVL8:
	mov	%d15, 0
	sel	%d15, %d5, %d15, 3
.L7:
.LVL9:
	.loc 1 102 0
	movh.a	%a15, hi:CanSM_ReqMode_a
	lea	%a15, [%a15] lo:CanSM_ReqMode_a
	addsc.a	%a15, %a15, %d2, 0
	ld.bu	%d3, [%a15]0
	jeq	%d3, %d15, .L31
.LVL10:
.L1:
	ret
.LVL11:
.L2:
	.loc 1 62 0 discriminator 1
	mov	%e4, 140
.LVL12:
	mov	%d6, 9
	mov	%d7, 1
	j	Det_ReportError
.LVL13:
.L31:
	.loc 1 102 0 discriminator 1
	movh.a	%a15, hi:CanSM_ModeChangeReq_flag
	lea	%a15, [%a15] lo:CanSM_ModeChangeReq_flag
	addsc.a	%a15, %a15, %d2, 0
	ld.bu	%d15, [%a15]0
.LVL14:
	jne	%d15, 1, .L1
	.loc 1 105 0
	movh.a	%a2, hi:CanSM_Trcv_ModeInd_ab
	lea	%a2, [%a2] lo:CanSM_Trcv_ModeInd_ab
	addsc.a	%a2, %a2, %d2, 0
	st.b	[%a2]0, %d15
	.loc 1 106 0
	mov	%d15, 0
	st.b	[%a15]0, %d15
	ret
.LVL15:
.L30:
	.loc 1 71 0
	mov	%d2, 0
	j	.L4
.LFE76:
	.size	CanSM_TransceiverModeIndication, .-CanSM_TransceiverModeIndication
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
	.uaword	.LFB76
	.uaword	.LFE76-.LFB76
	.align 2
.LEFDE0:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 4 ".\\output\\inc/..\\..\\bsw\\ComStack\\api\\ComStack_Types.h"
	.file 5 ".\\output\\inc/..\\..\\bsw\\CanIf\\integration\\Can_GeneralTypes.h"
	.file 6 ".\\output\\inc/..\\..\\rte\\Rte_Type.h"
	.file 7 ".\\output\\inc/..\\..\\bsw\\CanSM\\api\\CanSM.h"
	.file 8 "bsw\\CanSM\\src\\CanSM_Prv.h"
	.file 9 ".\\output\\inc/..\\..\\bsw\\Det\\api\\Det.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x9fd
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\CanSM\\src\\CanSM_TransceiverModeIndication.c"
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
	.uaword	0x1da
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
	.uaword	0x206
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
	.uaword	0x1da
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x3
	.string	"uint8_least"
	.byte	0x2
	.byte	0x8a
	.uaword	0x29f
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x3
	.string	"Std_ReturnType"
	.byte	0x3
	.byte	0x60
	.uaword	0x1cd
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x3
	.string	"NetworkHandleType"
	.byte	0x4
	.byte	0x4f
	.uaword	0x1cd
	.uleb128 0x4
	.byte	0x1
	.byte	0x5
	.byte	0x84
	.uaword	0x346
	.uleb128 0x5
	.string	"CANTRCV_TRCVMODE_NORMAL"
	.sleb128 0
	.uleb128 0x5
	.string	"CANTRCV_TRCVMODE_SLEEP"
	.sleb128 1
	.uleb128 0x5
	.string	"CANTRCV_TRCVMODE_STANDBY"
	.sleb128 2
	.byte	0
	.uleb128 0x3
	.string	"CanTrcv_TrcvModeType"
	.byte	0x5
	.byte	0x89
	.uaword	0x2ef
	.uleb128 0x6
	.uaword	0x271
	.uaword	0x372
	.uleb128 0x7
	.uaword	0x2ca
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.uaword	0x1cd
	.uleb128 0x9
	.string	"Dem_EventIdType"
	.byte	0x6
	.uahalf	0x143
	.uaword	0x1f8
	.uleb128 0xa
	.byte	0x4
	.uaword	0x372
	.uleb128 0x8
	.uaword	0x1f8
	.uleb128 0xb
	.byte	0x14
	.byte	0x7
	.byte	0x92
	.uaword	0x4cb
	.uleb128 0xc
	.string	"Cntrl_startidx_pu8"
	.byte	0x7
	.byte	0x94
	.uaword	0x38f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"BorTimeL1_u16"
	.byte	0x7
	.byte	0x99
	.uaword	0x1f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"BorTimeL2_u16"
	.byte	0x7
	.byte	0x9a
	.uaword	0x1f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xc
	.string	"BorTimeTxEnsured_u16"
	.byte	0x7
	.byte	0x9c
	.uaword	0x1f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.string	"BusOffEventId_uo"
	.byte	0x7
	.byte	0x9d
	.uaword	0x377
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xc
	.string	"Trcv_hndle_u8"
	.byte	0x7
	.byte	0x9e
	.uaword	0x1cd
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.string	"SizeofController_u8"
	.byte	0x7
	.byte	0x9f
	.uaword	0x1cd
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xc
	.string	"BorCntL1L2_u8"
	.byte	0x7
	.byte	0xa0
	.uaword	0x1cd
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xc
	.string	"ComM_channelId_uo"
	.byte	0x7
	.byte	0xa1
	.uaword	0x2d6
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0xc
	.string	"BusOffDelayConfig_b"
	.byte	0x7
	.byte	0xa5
	.uaword	0x271
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.string	"TrcvPnConfig_b"
	.byte	0x7
	.byte	0xa6
	.uaword	0x271
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.byte	0
	.uleb128 0x3
	.string	"CanSM_NetworkConf_tst"
	.byte	0x7
	.byte	0xa7
	.uaword	0x39a
	.uleb128 0x4
	.byte	0x1
	.byte	0x7
	.byte	0xab
	.uaword	0x5f6
	.uleb128 0x5
	.string	"CANSM_BSM_S_NOCOM"
	.sleb128 0
	.uleb128 0x5
	.string	"CANSM_BSM_S_SILENTCOM"
	.sleb128 1
	.uleb128 0x5
	.string	"CANSM_BSM_S_FULLCOM"
	.sleb128 2
	.uleb128 0x5
	.string	"CANSM_BSM_S_NOT_INITIALIZED"
	.sleb128 3
	.uleb128 0x5
	.string	"CANSM_BSM_S_PRE_NOCOM"
	.sleb128 4
	.uleb128 0x5
	.string	"CANSM_BSM_WUVALIDATION"
	.sleb128 5
	.uleb128 0x5
	.string	"CANSM_BSM_S_PRE_FULLCOM"
	.sleb128 6
	.uleb128 0x5
	.string	"CANSM_BSM_S_SET_BAUDRATE"
	.sleb128 7
	.uleb128 0x5
	.string	"CANSM_BSM_S_SILENTCOM_BOR"
	.sleb128 8
	.uleb128 0x5
	.string	"CANSM_BSM_S_TX_TIMEOUT_EXCEPTION"
	.sleb128 9
	.byte	0
	.uleb128 0x3
	.string	"CanSM_NetworkModeStateType_ten"
	.byte	0x7
	.byte	0xb6
	.uaword	0x4e8
	.uleb128 0x4
	.byte	0x1
	.byte	0x7
	.byte	0xc7
	.uaword	0x682
	.uleb128 0x5
	.string	"CANSM_CANTRCV_DEFAULT"
	.sleb128 0
	.uleb128 0x5
	.string	"CANSM_CANTRCV_NORMAL"
	.sleb128 1
	.uleb128 0x5
	.string	"CANSM_CANTRCV_SLEEP"
	.sleb128 2
	.uleb128 0x5
	.string	"CANSM_CANTRCV_STANDBY"
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.string	"CanSM_ReqCanTrcv_States"
	.byte	0x7
	.byte	0xcc
	.uaword	0x61c
	.uleb128 0xb
	.byte	0x10
	.byte	0x7
	.byte	0xcf
	.uaword	0x794
	.uleb128 0xc
	.string	"CanSM_NetworkConf_pcst"
	.byte	0x7
	.byte	0xd1
	.uaword	0x794
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"CanSM_NetworktoCtrlConf_pcu8"
	.byte	0x7
	.byte	0xd2
	.uaword	0x38f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"CanSMModeRequestRepetitionTime_u16"
	.byte	0x7
	.byte	0xd6
	.uaword	0x395
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.string	"CanSMModeRequestRepetitionMax_u8"
	.byte	0x7
	.byte	0xd7
	.uaword	0x372
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xc
	.string	"CanSM_SizeOfCanSMNetworks_u8"
	.byte	0x7
	.byte	0xd8
	.uaword	0x1cd
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0xc
	.string	"CanSM_ActiveConfigset_u8"
	.byte	0x7
	.byte	0xd9
	.uaword	0x1cd
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.uaword	0x79a
	.uleb128 0x8
	.uaword	0x4cb
	.uleb128 0x3
	.string	"CanSM_ConfigType"
	.byte	0x7
	.byte	0xdb
	.uaword	0x6a1
	.uleb128 0xd
	.byte	0x1
	.string	"CanSM_TransceiverModeIndication"
	.byte	0x1
	.byte	0x21
	.byte	0x1
	.uaword	.LFB76
	.uaword	.LFE76
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x8d6
	.uleb128 0xe
	.string	"TransceiverId"
	.byte	0x1
	.byte	0x21
	.uaword	0x1cd
	.uaword	.LLST0
	.uleb128 0xe
	.string	"TransceiverMode"
	.byte	0x1
	.byte	0x21
	.uaword	0x346
	.uaword	.LLST1
	.uleb128 0xf
	.string	"network_indx_uo"
	.byte	0x1
	.byte	0x25
	.uaword	0x28c
	.uaword	.LLST2
	.uleb128 0x10
	.string	"CanSM_TrcvConfigd_b"
	.byte	0x1
	.byte	0x28
	.uaword	0x271
	.byte	0
	.uleb128 0x11
	.string	"CurNwMode_Temp_uo"
	.byte	0x1
	.byte	0x2c
	.uaword	0x5f6
	.uleb128 0xf
	.string	"CanSM_CanTrcvState_en"
	.byte	0x1
	.byte	0x30
	.uaword	0x682
	.uaword	.LLST3
	.uleb128 0x12
	.uaword	.LVL6
	.byte	0x1
	.uaword	0x9d1
	.uaword	0x8b5
	.uleb128 0x13
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x35
	.uleb128 0x13
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x39
	.uleb128 0x13
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x13
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x8c
	.byte	0
	.uleb128 0x14
	.uaword	.LVL13
	.byte	0x1
	.uaword	0x9d1
	.uleb128 0x13
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x31
	.uleb128 0x13
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x39
	.uleb128 0x13
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x13
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x8c
	.byte	0
	.byte	0
	.uleb128 0x15
	.string	"CanSM_ConfigSet_pcst"
	.byte	0x8
	.uahalf	0x125
	.uaword	0x8f5
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.byte	0x4
	.uaword	0x8fb
	.uleb128 0x8
	.uaword	0x79f
	.uleb128 0x15
	.string	"CanSM_Network_pcst"
	.byte	0x8
	.uahalf	0x12d
	.uaword	0x794
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.string	"CanSM_Init_ab"
	.byte	0x8
	.uahalf	0x13b
	.uaword	0x271
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.uaword	0x5f6
	.uaword	0x945
	.uleb128 0x7
	.uaword	0x2ca
	.byte	0x3
	.byte	0
	.uleb128 0x15
	.string	"CanSM_CurrNw_Mode_en"
	.byte	0x8
	.uahalf	0x142
	.uaword	0x935
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.string	"CanSM_Trcv_ModeInd_ab"
	.byte	0x8
	.uahalf	0x19f
	.uaword	0x362
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.string	"CanSM_ModeChangeReq_flag"
	.byte	0x8
	.uahalf	0x1ae
	.uaword	0x362
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.uaword	0x682
	.uaword	0x9b7
	.uleb128 0x7
	.uaword	0x2ca
	.byte	0x3
	.byte	0
	.uleb128 0x15
	.string	"CanSM_ReqMode_a"
	.byte	0x8
	.uahalf	0x1b5
	.uaword	0x9a7
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.byte	0x1
	.string	"Det_ReportError"
	.byte	0x9
	.byte	0x70
	.byte	0x1
	.uaword	0x2b4
	.byte	0x1
	.uleb128 0x17
	.uaword	0x1f8
	.uleb128 0x17
	.uaword	0x1cd
	.uleb128 0x17
	.uaword	0x1cd
	.uleb128 0x17
	.uaword	0x1cd
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LFE76
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL8
	.uaword	.LVL11
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL12
	.uaword	.LVL15
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LFE76
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL2
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL15
	.uaword	.LFE76
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL0
	.uaword	.LVL9
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL11
	.uaword	.LVL13
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL15
	.uaword	.LFE76
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
	.uaword	.LFB76
	.uaword	.LFE76-.LFB76
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB76
	.uaword	.LFE76
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.extern	CanSM_Trcv_ModeInd_ab,STT_OBJECT,4
	.extern	CanSM_ModeChangeReq_flag,STT_OBJECT,4
	.extern	CanSM_ReqMode_a,STT_OBJECT,4
	.extern	CanSM_CurrNw_Mode_en,STT_OBJECT,4
	.extern	Det_ReportError,STT_FUNC,0
	.extern	CanSM_Network_pcst,STT_OBJECT,4
	.extern	CanSM_ConfigSet_pcst,STT_OBJECT,4
	.extern	CanSM_Init_ab,STT_OBJECT,1
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
