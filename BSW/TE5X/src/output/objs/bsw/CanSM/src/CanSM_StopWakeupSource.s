	.file	"CanSM_StopWakeupSource.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.CanSM_StopWakeupSource,"ax",@progbits
	.align 1
	.global	CanSM_StopWakeupSource
	.type	CanSM_StopWakeupSource, @function
CanSM_StopWakeupSource:
.LFB76:
	.file 1 "bsw\\CanSM\\src\\CanSM_StopWakeupSource.c"
	.loc 1 36 0
.LVL0:
	.loc 1 46 0
	movh.a	%a15, hi:CanSM_Init_ab
	ld.bu	%d15, [%a15] lo:CanSM_Init_ab
	jz	%d15, .L9
	.loc 1 51 0
	call	CanSM_GetHandle
.LVL1:
	.loc 1 55 0
	movh.a	%a15, hi:CanSM_ConfigSet_pcst
	ld.a	%a15, [%a15] lo:CanSM_ConfigSet_pcst
	.loc 1 51 0
	mov	%d15, %d2
.LVL2:
	.loc 1 55 0
	ld.bu	%d2, [%a15] 11
.LVL3:
	jge.u	%d15, %d2, .L10
.LVL4:
	.loc 1 59 0
	movh.a	%a2, hi:CanSM_CurrNw_Mode_en
	lea	%a2, [%a2] lo:CanSM_CurrNw_Mode_en
	addsc.a	%a2, %a2, %d15, 0
	.loc 1 42 0
	mov	%d2, 1
	.loc 1 62 0
	ld.bu	%d3, [%a2]0
	jeq	%d3, 5, .L11
.LVL5:
.L3:
	.loc 1 97 0
	ret
.LVL6:
.L9:
	.loc 1 46 0 discriminator 1
	mov	%e4, 140
.LVL7:
	mov	%d6, 18
	mov	%d7, 1
	call	Det_ReportError
.LVL8:
	mov	%d2, 1
	ret
.LVL9:
.L11:
	.loc 1 62 0 discriminator 1
	movh.a	%a3, hi:CanSM_Network_Init_ab
	lea	%a3, [%a3] lo:CanSM_Network_Init_ab
	addsc.a	%a3, %a3, %d15, 0
	ld.bu	%d3, [%a3]0
	jne	%d3, 1, .L3
.LVL10:
	.loc 1 66 0
	mov	%d3, 4
	st.b	[%a2]0, %d3
.LVL11:
	.loc 1 68 0
	movh.a	%a2, hi:CanSM_ReqComM_Mode_en
	lea	%a2, [%a2] lo:CanSM_ReqComM_Mode_en
	addsc.a	%a2, %a2, %d15, 0
	mov	%d3, 0
	st.b	[%a2]0, %d3
	.loc 1 71 0
	ld.w	%d3, [%a15]0
	madd	%d4, %d3, %d15, 20
	mov.a	%a15, %d4
	ld.bu	%d3, [%a15] 12
	.loc 1 86 0
	movh.a	%a15, hi:CanSM_PreNoCom_Substates_en
	lea	%a15, [%a15] lo:CanSM_PreNoCom_Substates_en
	addsc.a	%a15, %a15, %d15, 0
	.loc 1 71 0
	eq	%d3, %d3, 255
	.loc 1 86 0
	st.b	[%a15]0, %d2
	.loc 1 64 0
	mov	%d2, 0
	.loc 1 71 0
	jnz	%d3, .L3
	ret
.LVL12:
.L10:
	.loc 1 55 0 discriminator 1
	mov	%e4, 140
	mov	%d6, 18
	mov	%d7, 3
	call	Det_ReportError
.LVL13:
	mov	%d2, 1
	ret
.LFE76:
	.size	CanSM_StopWakeupSource, .-CanSM_StopWakeupSource
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
	.file 5 ".\\output\\inc/..\\..\\rte\\Rte_Type.h"
	.file 6 ".\\output\\inc/..\\..\\bsw\\CanSM\\api\\CanSM.h"
	.file 7 "bsw\\CanSM\\src\\CanSM_Prv.h"
	.file 8 ".\\output\\inc/..\\..\\bsw\\Det\\api\\Det.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xb5d
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\CanSM\\src\\CanSM_StopWakeupSource.c"
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
	.uaword	0x1d1
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
	.uaword	0x1fd
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
	.uaword	0x1d1
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
	.uaword	0x1c4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x3
	.string	"NetworkHandleType"
	.byte	0x4
	.byte	0x4f
	.uaword	0x1c4
	.uleb128 0x4
	.uaword	0x268
	.uaword	0x2e3
	.uleb128 0x5
	.uaword	0x2ae
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.uaword	0x1c4
	.uleb128 0x3
	.string	"ComM_ModeType"
	.byte	0x5
	.byte	0xe0
	.uaword	0x1c4
	.uleb128 0x7
	.string	"Dem_EventIdType"
	.byte	0x5
	.uahalf	0x143
	.uaword	0x1ef
	.uleb128 0x8
	.byte	0x4
	.uaword	0x2e3
	.uleb128 0x6
	.uaword	0x1ef
	.uleb128 0x9
	.byte	0x14
	.byte	0x6
	.byte	0x92
	.uaword	0x451
	.uleb128 0xa
	.string	"Cntrl_startidx_pu8"
	.byte	0x6
	.byte	0x94
	.uaword	0x315
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"BorTimeL1_u16"
	.byte	0x6
	.byte	0x99
	.uaword	0x1ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.string	"BorTimeL2_u16"
	.byte	0x6
	.byte	0x9a
	.uaword	0x1ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xa
	.string	"BorTimeTxEnsured_u16"
	.byte	0x6
	.byte	0x9c
	.uaword	0x1ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.string	"BusOffEventId_uo"
	.byte	0x6
	.byte	0x9d
	.uaword	0x2fd
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xa
	.string	"Trcv_hndle_u8"
	.byte	0x6
	.byte	0x9e
	.uaword	0x1c4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.string	"SizeofController_u8"
	.byte	0x6
	.byte	0x9f
	.uaword	0x1c4
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xa
	.string	"BorCntL1L2_u8"
	.byte	0x6
	.byte	0xa0
	.uaword	0x1c4
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xa
	.string	"ComM_channelId_uo"
	.byte	0x6
	.byte	0xa1
	.uaword	0x2ba
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0xa
	.string	"BusOffDelayConfig_b"
	.byte	0x6
	.byte	0xa5
	.uaword	0x268
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.string	"TrcvPnConfig_b"
	.byte	0x6
	.byte	0xa6
	.uaword	0x268
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.byte	0
	.uleb128 0x3
	.string	"CanSM_NetworkConf_tst"
	.byte	0x6
	.byte	0xa7
	.uaword	0x320
	.uleb128 0xb
	.byte	0x1
	.byte	0x6
	.byte	0xab
	.uaword	0x57c
	.uleb128 0xc
	.string	"CANSM_BSM_S_NOCOM"
	.sleb128 0
	.uleb128 0xc
	.string	"CANSM_BSM_S_SILENTCOM"
	.sleb128 1
	.uleb128 0xc
	.string	"CANSM_BSM_S_FULLCOM"
	.sleb128 2
	.uleb128 0xc
	.string	"CANSM_BSM_S_NOT_INITIALIZED"
	.sleb128 3
	.uleb128 0xc
	.string	"CANSM_BSM_S_PRE_NOCOM"
	.sleb128 4
	.uleb128 0xc
	.string	"CANSM_BSM_WUVALIDATION"
	.sleb128 5
	.uleb128 0xc
	.string	"CANSM_BSM_S_PRE_FULLCOM"
	.sleb128 6
	.uleb128 0xc
	.string	"CANSM_BSM_S_SET_BAUDRATE"
	.sleb128 7
	.uleb128 0xc
	.string	"CANSM_BSM_S_SILENTCOM_BOR"
	.sleb128 8
	.uleb128 0xc
	.string	"CANSM_BSM_S_TX_TIMEOUT_EXCEPTION"
	.sleb128 9
	.byte	0
	.uleb128 0x3
	.string	"CanSM_NetworkModeStateType_ten"
	.byte	0x6
	.byte	0xb6
	.uaword	0x46e
	.uleb128 0x9
	.byte	0x10
	.byte	0x6
	.byte	0xcf
	.uaword	0x695
	.uleb128 0xa
	.string	"CanSM_NetworkConf_pcst"
	.byte	0x6
	.byte	0xd1
	.uaword	0x695
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"CanSM_NetworktoCtrlConf_pcu8"
	.byte	0x6
	.byte	0xd2
	.uaword	0x315
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.string	"CanSMModeRequestRepetitionTime_u16"
	.byte	0x6
	.byte	0xd6
	.uaword	0x31b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.string	"CanSMModeRequestRepetitionMax_u8"
	.byte	0x6
	.byte	0xd7
	.uaword	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xa
	.string	"CanSM_SizeOfCanSMNetworks_u8"
	.byte	0x6
	.byte	0xd8
	.uaword	0x1c4
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0xa
	.string	"CanSM_ActiveConfigset_u8"
	.byte	0x6
	.byte	0xd9
	.uaword	0x1c4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0x69b
	.uleb128 0x6
	.uaword	0x451
	.uleb128 0x3
	.string	"CanSM_ConfigType"
	.byte	0x6
	.byte	0xdb
	.uaword	0x5a2
	.uleb128 0xb
	.byte	0x1
	.byte	0x7
	.byte	0x8e
	.uaword	0x932
	.uleb128 0xc
	.string	"CANSM_DEFAULT"
	.sleb128 0
	.uleb128 0xc
	.string	"CANSM_S_CC_STOPPED"
	.sleb128 1
	.uleb128 0xc
	.string	"CANSM_S_PN_CC_STOPPED"
	.sleb128 2
	.uleb128 0xc
	.string	"CANSM_S_CC_STOPPED_WAIT"
	.sleb128 3
	.uleb128 0xc
	.string	"CANSM_S_PN_CC_STOPPED_WAIT"
	.sleb128 4
	.uleb128 0xc
	.string	"CANSM_S_CC_SLEEP"
	.sleb128 5
	.uleb128 0xc
	.string	"CANSM_S_PN_CC_SLEEP"
	.sleb128 6
	.uleb128 0xc
	.string	"CANSM_S_CC_SLEEP_WAIT"
	.sleb128 7
	.uleb128 0xc
	.string	"CANSM_S_PN_CC_SLEEP_WAIT"
	.sleb128 8
	.uleb128 0xc
	.string	"CANSM_S_TRCV_NORMAL"
	.sleb128 9
	.uleb128 0xc
	.string	"CANSM_S_PN_TRCV_NORMAL"
	.sleb128 10
	.uleb128 0xc
	.string	"CANSM_S_TRCV_NORMAL_WAIT"
	.sleb128 11
	.uleb128 0xc
	.string	"CANSM_S_PN_TRCV_NORMAL_WAIT"
	.sleb128 12
	.uleb128 0xc
	.string	"CANSM_S_TRCV_STANDBY"
	.sleb128 13
	.uleb128 0xc
	.string	"CANSM_S_PN_TRCV_STANDBY"
	.sleb128 14
	.uleb128 0xc
	.string	"CANSM_S_TRCV_STANDBY_WAIT"
	.sleb128 15
	.uleb128 0xc
	.string	"CANSM_S_PN_TRCV_STANDBY_WAIT"
	.sleb128 16
	.uleb128 0xc
	.string	"CANSM_S_PN_CLEAR_WUF"
	.sleb128 17
	.uleb128 0xc
	.string	"CANSM_S_PN_CLEAR_WUF_WAIT"
	.sleb128 18
	.uleb128 0xc
	.string	"CANSM_S_CHECK_WFLAG_IN_CC_SLEEP"
	.sleb128 19
	.uleb128 0xc
	.string	"CANSM_S_CHECK_WFLAG_IN_CC_SLEEP_WAIT"
	.sleb128 20
	.uleb128 0xc
	.string	"CANSM_S_CHECK_WFLAG_IN_NOT_CC_SLEEP"
	.sleb128 21
	.uleb128 0xc
	.string	"CANSM_S_CHECK_WFLAG_IN_NOT_CC_SLEEP_WAIT"
	.sleb128 22
	.byte	0
	.uleb128 0x3
	.string	"CanSM_PreNoCom_Substates_ten"
	.byte	0x7
	.byte	0xa6
	.uaword	0x6b8
	.uleb128 0xd
	.byte	0x1
	.string	"CanSM_StopWakeupSource"
	.byte	0x1
	.byte	0x23
	.byte	0x1
	.uaword	0x298
	.uaword	.LFB76
	.uaword	.LFE76
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xa15
	.uleb128 0xe
	.string	"network"
	.byte	0x1
	.byte	0x23
	.uaword	0x2ba
	.uaword	.LLST0
	.uleb128 0xf
	.string	"stFuncVal"
	.byte	0x1
	.byte	0x26
	.uaword	0x298
	.uaword	.LLST1
	.uleb128 0x10
	.string	"CanSM_CurrNwMode_en"
	.byte	0x1
	.byte	0x28
	.uaword	0x57c
	.uleb128 0x11
	.uaword	.LVL1
	.uaword	0xb0c
	.uleb128 0x12
	.uaword	.LVL8
	.uaword	0xb31
	.uaword	0x9f5
	.uleb128 0x13
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x31
	.uleb128 0x13
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x42
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
	.uaword	0xb31
	.uleb128 0x13
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x33
	.uleb128 0x13
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x42
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
	.byte	0x7
	.uahalf	0x125
	.uaword	0xa34
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.byte	0x4
	.uaword	0xa3a
	.uleb128 0x6
	.uaword	0x6a0
	.uleb128 0x15
	.string	"CanSM_Init_ab"
	.byte	0x7
	.uahalf	0x13b
	.uaword	0x268
	.byte	0x1
	.byte	0x1
	.uleb128 0x4
	.uaword	0x57c
	.uaword	0xa67
	.uleb128 0x5
	.uaword	0x2ae
	.byte	0x3
	.byte	0
	.uleb128 0x15
	.string	"CanSM_CurrNw_Mode_en"
	.byte	0x7
	.uahalf	0x142
	.uaword	0xa57
	.byte	0x1
	.byte	0x1
	.uleb128 0x4
	.uaword	0x2e8
	.uaword	0xa96
	.uleb128 0x5
	.uaword	0x2ae
	.byte	0x3
	.byte	0
	.uleb128 0x15
	.string	"CanSM_ReqComM_Mode_en"
	.byte	0x7
	.uahalf	0x16e
	.uaword	0xa86
	.byte	0x1
	.byte	0x1
	.uleb128 0x4
	.uaword	0x932
	.uaword	0xac6
	.uleb128 0x5
	.uaword	0x2ae
	.byte	0x3
	.byte	0
	.uleb128 0x15
	.string	"CanSM_PreNoCom_Substates_en"
	.byte	0x7
	.uahalf	0x1bf
	.uaword	0xab6
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.string	"CanSM_Network_Init_ab"
	.byte	0x7
	.uahalf	0x1ff
	.uaword	0x2d3
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.byte	0x1
	.string	"CanSM_GetHandle"
	.byte	0x7
	.uahalf	0x249
	.byte	0x1
	.uaword	0x2ba
	.byte	0x1
	.uaword	0xb31
	.uleb128 0x17
	.uaword	0x2ba
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"Det_ReportError"
	.byte	0x8
	.byte	0x70
	.byte	0x1
	.uaword	0x298
	.byte	0x1
	.uleb128 0x17
	.uaword	0x1ef
	.uleb128 0x17
	.uaword	0x1c4
	.uleb128 0x17
	.uaword	0x1c4
	.uleb128 0x17
	.uaword	0x1c4
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0xb
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
	.uaword	.LVL1-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL1-1
	.uaword	.LVL2
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL3
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL7
	.uaword	.LVL9
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LFE76
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL5
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL10
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LVL12
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LFE76
	.uahalf	0x2
	.byte	0x31
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
	.extern	CanSM_PreNoCom_Substates_en,STT_OBJECT,4
	.extern	CanSM_ReqComM_Mode_en,STT_OBJECT,4
	.extern	CanSM_Network_Init_ab,STT_OBJECT,4
	.extern	Det_ReportError,STT_FUNC,0
	.extern	CanSM_CurrNw_Mode_en,STT_OBJECT,4
	.extern	CanSM_ConfigSet_pcst,STT_OBJECT,4
	.extern	CanSM_GetHandle,STT_FUNC,0
	.extern	CanSM_Init_ab,STT_OBJECT,1
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
