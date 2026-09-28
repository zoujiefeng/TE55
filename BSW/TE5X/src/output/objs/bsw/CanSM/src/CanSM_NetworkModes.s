	.file	"CanSM_NetworkModes.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.CanSM_NetworkModeTrans,"ax",@progbits
	.align 1
	.global	CanSM_NetworkModeTrans
	.type	CanSM_NetworkModeTrans, @function
CanSM_NetworkModeTrans:
.LFB76:
	.file 1 "bsw\\CanSM\\src\\CanSM_NetworkModes.c"
	.loc 1 33 0
.LVL0:
	.loc 1 41 0
	movh.a	%a15, hi:CanSM_CurrNw_Mode_en
	lea	%a15, [%a15] lo:CanSM_CurrNw_Mode_en
	addsc.a	%a15, %a15, %d4, 0
	.loc 1 33 0
	mov	%d2, %d4
	.loc 1 41 0
	ld.bu	%d15, [%a15]0
.LVL1:
	.loc 1 44 0
	eq	%d6, %d5, 2
	eq	%d3, %d15, 6
	and.eq	%d3, %d5, 2
	jz	%d3, .L2
	.loc 1 46 0
	movh.a	%a15, hi:CanSM_PreFullCom_Substates_en
.LVL2:
	lea	%a15, [%a15] lo:CanSM_PreFullCom_Substates_en
	addsc.a	%a15, %a15, %d4, 0
	ld.bu	%d15, [%a15]0
	jnz	%d15, .L3
	.loc 1 48 0
	mov	%d15, 1
	st.b	[%a15]0, %d15
.L3:
	.loc 1 50 0
	mov	%d4, %d2
.LVL3:
	j	CanSM_NO2FULL_COM
.LVL4:
.L2:
	.loc 1 52 0
	eq	%d3, %d5, 1
	and.eq	%d3, %d15, 2
	eq	%d7, %d15, 2
	jnz	%d3, .L26
	.loc 1 59 0
	eq	%d4, %d15, 1
.LVL5:
	and	%d3, %d4, %d6
	jz	%d3, .L5
	.loc 1 61 0
	movh.a	%a15, hi:CanSM_PreFullCom_Substates_en
.LVL6:
	lea	%a15, [%a15] lo:CanSM_PreFullCom_Substates_en
	addsc.a	%a15, %a15, %d2, 0
	ld.bu	%d15, [%a15]0
	jnz	%d15, .L6
	.loc 1 63 0
	mov	%d15, 1
	st.b	[%a15]0, %d15
.L6:
	.loc 1 66 0
	mov	%d4, %d2
	j	CanSM_SILENT2FULL_COM
.LVL7:
.L5:
	.loc 1 69 0
	eq	%d5, %d5, 0
.LVL8:
	mov	%d8, %d2
	and	%d2, %d7, %d5
	jnz	%d2, .L23
	.loc 1 116 0
	and	%d4, %d5
	jnz	%d4, .L23
	.loc 1 163 0 discriminator 1
	eq	%d15, %d15, 4
	and	%d5, %d15
	jz	%d5, .L27
.LVL9:
.L24:
	.loc 1 98 0
	movh.a	%a15, hi:CanSM_PreNoCom_Substates_en
	lea	%a15, [%a15] lo:CanSM_PreNoCom_Substates_en
	addsc.a	%a15, %a15, %d8, 0
	ld.bu	%d15, [%a15]0
	jnz	%d15, .L10
	.loc 1 100 0
	mov	%d15, 1
	st.b	[%a15]0, %d15
.L10:
	.loc 1 102 0
	mov	%d4, %d8
	j	CanSM_DeInitPnNotSupported
.LVL10:
.L26:
	.loc 1 55 0
	j	CanSM_FULL2SILENT_COM
.LVL11:
.L27:
	ret
.L23:
	.loc 1 71 0
	mov	%d15, 4
	st.b	[%a15]0, %d15
.LVL12:
	.loc 1 76 0
	movh.a	%a15, hi:CanSM_Network_pcst
	mul	%d15, %d8, 20
	ld.a	%a15, [%a15] lo:CanSM_Network_pcst
	mov	%d5, 0
	addsc.a	%a15, %a15, %d15, 0
	ld.bu	%d4, [%a15] 15
	call	BswM_CanSM_CurrentState
.LVL13:
	j	.L24
.LFE76:
	.size	CanSM_NetworkModeTrans, .-CanSM_NetworkModeTrans
.section .text.CanSM_GetNetworkMode_Substate,"ax",@progbits
	.align 1
	.global	CanSM_GetNetworkMode_Substate
	.type	CanSM_GetNetworkMode_Substate, @function
CanSM_GetNetworkMode_Substate:
.LFB77:
	.loc 1 237 0
.LVL14:
	.loc 1 237 0
	mov.aa	%a15, %a4
	.loc 1 242 0
	call	CanSM_GetHandle
.LVL15:
	.loc 1 245 0
	movh.a	%a2, hi:CanSM_Init_ab
	ld.bu	%d15, [%a2] lo:CanSM_Init_ab
	jz	%d15, .L33
	.loc 1 250 0
	jge.u	%d2, 4, .L34
	.loc 1 255 0
	jz.a	%a15, .L35
	.loc 1 259 0
	movh.a	%a2, hi:CanSM_CurrNw_Mode_en
	lea	%a2, [%a2] lo:CanSM_CurrNw_Mode_en
	addsc.a	%a2, %a2, %d2, 0
	.loc 1 263 0
	mov	%d2, 0
.LVL16:
	.loc 1 259 0
	ld.bu	%d15, [%a2]0
	st.b	[%a15]0, %d15
.LVL17:
	.loc 1 264 0
	ret
.LVL18:
.L33:
	.loc 1 245 0 discriminator 1
	mov	%e4, 140
	mov	%d6, 130
	mov	%d7, 1
	call	Det_ReportError
.LVL19:
	mov	%d2, 1
	ret
.LVL20:
.L34:
	.loc 1 250 0 discriminator 1
	mov	%e4, 140
	mov	%d6, 130
	mov	%d7, 3
	call	Det_ReportError
.LVL21:
	mov	%d2, 1
	ret
.LVL22:
.L35:
	.loc 1 255 0 discriminator 1
	mov	%e4, 140
	mov	%d6, 130
	mov	%d7, 2
	call	Det_ReportError
.LVL23:
	mov	%d2, 1
	ret
.LFE77:
	.size	CanSM_GetNetworkMode_Substate, .-CanSM_GetNetworkMode_Substate
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
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB77
	.uaword	.LFE77-.LFB77
	.align 2
.LEFDE2:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 4 ".\\output\\inc/..\\..\\bsw\\ComStack\\api\\ComStack_Types.h"
	.file 5 ".\\output\\inc/..\\..\\rte\\Rte_Type.h"
	.file 6 ".\\output\\inc/..\\..\\bsw\\CanSM\\api\\CanSM.h"
	.file 7 ".\\output\\inc/..\\..\\bsw\\CanSM\\api\\CanSM_BswM.h"
	.file 8 "bsw\\CanSM\\src\\CanSM_Prv.h"
	.file 9 ".\\output\\inc/..\\..\\bsw\\BswM\\api\\BswM_CanSM.h"
	.file 10 ".\\output\\inc/..\\..\\bsw\\Det\\api\\Det.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xf0a
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\CanSM\\src\\CanSM_NetworkModes.c"
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
	.uaword	0x1cd
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
	.uaword	0x1f9
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
	.uaword	0x1cd
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
	.uaword	0x1c0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x3
	.string	"NetworkHandleType"
	.byte	0x4
	.byte	0x4f
	.uaword	0x1c0
	.uleb128 0x4
	.uaword	0x1c0
	.uleb128 0x3
	.string	"ComM_ModeType"
	.byte	0x5
	.byte	0xe0
	.uaword	0x1c0
	.uleb128 0x5
	.string	"Dem_EventIdType"
	.byte	0x5
	.uahalf	0x143
	.uaword	0x1eb
	.uleb128 0x6
	.byte	0x4
	.uaword	0x2cf
	.uleb128 0x4
	.uaword	0x1eb
	.uleb128 0x7
	.byte	0x14
	.byte	0x6
	.byte	0x92
	.uaword	0x43d
	.uleb128 0x8
	.string	"Cntrl_startidx_pu8"
	.byte	0x6
	.byte	0x94
	.uaword	0x301
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"BorTimeL1_u16"
	.byte	0x6
	.byte	0x99
	.uaword	0x1eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"BorTimeL2_u16"
	.byte	0x6
	.byte	0x9a
	.uaword	0x1eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x8
	.string	"BorTimeTxEnsured_u16"
	.byte	0x6
	.byte	0x9c
	.uaword	0x1eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.string	"BusOffEventId_uo"
	.byte	0x6
	.byte	0x9d
	.uaword	0x2e9
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x8
	.string	"Trcv_hndle_u8"
	.byte	0x6
	.byte	0x9e
	.uaword	0x1c0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.string	"SizeofController_u8"
	.byte	0x6
	.byte	0x9f
	.uaword	0x1c0
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0x8
	.string	"BorCntL1L2_u8"
	.byte	0x6
	.byte	0xa0
	.uaword	0x1c0
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x8
	.string	"ComM_channelId_uo"
	.byte	0x6
	.byte	0xa1
	.uaword	0x2b6
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0x8
	.string	"BusOffDelayConfig_b"
	.byte	0x6
	.byte	0xa5
	.uaword	0x264
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.string	"TrcvPnConfig_b"
	.byte	0x6
	.byte	0xa6
	.uaword	0x264
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.byte	0
	.uleb128 0x3
	.string	"CanSM_NetworkConf_tst"
	.byte	0x6
	.byte	0xa7
	.uaword	0x30c
	.uleb128 0x9
	.byte	0x1
	.byte	0x6
	.byte	0xab
	.uaword	0x568
	.uleb128 0xa
	.string	"CANSM_BSM_S_NOCOM"
	.sleb128 0
	.uleb128 0xa
	.string	"CANSM_BSM_S_SILENTCOM"
	.sleb128 1
	.uleb128 0xa
	.string	"CANSM_BSM_S_FULLCOM"
	.sleb128 2
	.uleb128 0xa
	.string	"CANSM_BSM_S_NOT_INITIALIZED"
	.sleb128 3
	.uleb128 0xa
	.string	"CANSM_BSM_S_PRE_NOCOM"
	.sleb128 4
	.uleb128 0xa
	.string	"CANSM_BSM_WUVALIDATION"
	.sleb128 5
	.uleb128 0xa
	.string	"CANSM_BSM_S_PRE_FULLCOM"
	.sleb128 6
	.uleb128 0xa
	.string	"CANSM_BSM_S_SET_BAUDRATE"
	.sleb128 7
	.uleb128 0xa
	.string	"CANSM_BSM_S_SILENTCOM_BOR"
	.sleb128 8
	.uleb128 0xa
	.string	"CANSM_BSM_S_TX_TIMEOUT_EXCEPTION"
	.sleb128 9
	.byte	0
	.uleb128 0x3
	.string	"CanSM_NetworkModeStateType_ten"
	.byte	0x6
	.byte	0xb6
	.uaword	0x45a
	.uleb128 0x7
	.byte	0x10
	.byte	0x6
	.byte	0xcf
	.uaword	0x681
	.uleb128 0x8
	.string	"CanSM_NetworkConf_pcst"
	.byte	0x6
	.byte	0xd1
	.uaword	0x681
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"CanSM_NetworktoCtrlConf_pcu8"
	.byte	0x6
	.byte	0xd2
	.uaword	0x301
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"CanSMModeRequestRepetitionTime_u16"
	.byte	0x6
	.byte	0xd6
	.uaword	0x307
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.string	"CanSMModeRequestRepetitionMax_u8"
	.byte	0x6
	.byte	0xd7
	.uaword	0x2cf
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x8
	.string	"CanSM_SizeOfCanSMNetworks_u8"
	.byte	0x6
	.byte	0xd8
	.uaword	0x1c0
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0x8
	.string	"CanSM_ActiveConfigset_u8"
	.byte	0x6
	.byte	0xd9
	.uaword	0x1c0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x687
	.uleb128 0x4
	.uaword	0x43d
	.uleb128 0x3
	.string	"CanSM_ConfigType"
	.byte	0x6
	.byte	0xdb
	.uaword	0x58e
	.uleb128 0x9
	.byte	0x1
	.byte	0x7
	.byte	0x14
	.uaword	0x73f
	.uleb128 0xa
	.string	"CANSM_BSWM_NO_COMMUNICATION"
	.sleb128 0
	.uleb128 0xa
	.string	"CANSM_BSWM_SILENT_COMMUNICATION"
	.sleb128 1
	.uleb128 0xa
	.string	"CANSM_BSWM_FULL_COMMUNICATION"
	.sleb128 2
	.uleb128 0xa
	.string	"CANSM_BSWM_BUS_OFF"
	.sleb128 3
	.uleb128 0xa
	.string	"CANSM_BSWM_CHANGE_BAUDRATE"
	.sleb128 4
	.byte	0
	.uleb128 0x3
	.string	"CanSM_BswMCurrentStateType"
	.byte	0x7
	.byte	0x1b
	.uaword	0x6a4
	.uleb128 0x9
	.byte	0x1
	.byte	0x8
	.byte	0x8e
	.uaword	0x9db
	.uleb128 0xa
	.string	"CANSM_DEFAULT"
	.sleb128 0
	.uleb128 0xa
	.string	"CANSM_S_CC_STOPPED"
	.sleb128 1
	.uleb128 0xa
	.string	"CANSM_S_PN_CC_STOPPED"
	.sleb128 2
	.uleb128 0xa
	.string	"CANSM_S_CC_STOPPED_WAIT"
	.sleb128 3
	.uleb128 0xa
	.string	"CANSM_S_PN_CC_STOPPED_WAIT"
	.sleb128 4
	.uleb128 0xa
	.string	"CANSM_S_CC_SLEEP"
	.sleb128 5
	.uleb128 0xa
	.string	"CANSM_S_PN_CC_SLEEP"
	.sleb128 6
	.uleb128 0xa
	.string	"CANSM_S_CC_SLEEP_WAIT"
	.sleb128 7
	.uleb128 0xa
	.string	"CANSM_S_PN_CC_SLEEP_WAIT"
	.sleb128 8
	.uleb128 0xa
	.string	"CANSM_S_TRCV_NORMAL"
	.sleb128 9
	.uleb128 0xa
	.string	"CANSM_S_PN_TRCV_NORMAL"
	.sleb128 10
	.uleb128 0xa
	.string	"CANSM_S_TRCV_NORMAL_WAIT"
	.sleb128 11
	.uleb128 0xa
	.string	"CANSM_S_PN_TRCV_NORMAL_WAIT"
	.sleb128 12
	.uleb128 0xa
	.string	"CANSM_S_TRCV_STANDBY"
	.sleb128 13
	.uleb128 0xa
	.string	"CANSM_S_PN_TRCV_STANDBY"
	.sleb128 14
	.uleb128 0xa
	.string	"CANSM_S_TRCV_STANDBY_WAIT"
	.sleb128 15
	.uleb128 0xa
	.string	"CANSM_S_PN_TRCV_STANDBY_WAIT"
	.sleb128 16
	.uleb128 0xa
	.string	"CANSM_S_PN_CLEAR_WUF"
	.sleb128 17
	.uleb128 0xa
	.string	"CANSM_S_PN_CLEAR_WUF_WAIT"
	.sleb128 18
	.uleb128 0xa
	.string	"CANSM_S_CHECK_WFLAG_IN_CC_SLEEP"
	.sleb128 19
	.uleb128 0xa
	.string	"CANSM_S_CHECK_WFLAG_IN_CC_SLEEP_WAIT"
	.sleb128 20
	.uleb128 0xa
	.string	"CANSM_S_CHECK_WFLAG_IN_NOT_CC_SLEEP"
	.sleb128 21
	.uleb128 0xa
	.string	"CANSM_S_CHECK_WFLAG_IN_NOT_CC_SLEEP_WAIT"
	.sleb128 22
	.byte	0
	.uleb128 0x3
	.string	"CanSM_PreNoCom_Substates_ten"
	.byte	0x8
	.byte	0xa6
	.uaword	0x761
	.uleb128 0x9
	.byte	0x1
	.byte	0x8
	.byte	0xb2
	.uaword	0xafb
	.uleb128 0xa
	.string	"CANSM_PRE_FULLCOM_DEFAULT"
	.sleb128 0
	.uleb128 0xa
	.string	"CANSM_PRE_FULLCOM_S_TRCV_NORMAL"
	.sleb128 1
	.uleb128 0xa
	.string	"CANSM_PRE_FULLCOM_S_TRCV_NORMAL_WAIT"
	.sleb128 2
	.uleb128 0xa
	.string	"CANSM_PRE_FULLCOM_S_CC_STOPPED"
	.sleb128 3
	.uleb128 0xa
	.string	"CANSM_PRE_FULLCOM_S_CC_STOPPED_WAIT"
	.sleb128 4
	.uleb128 0xa
	.string	"CANSM_PRE_FULLCOM_S_CC_STARTED"
	.sleb128 5
	.uleb128 0xa
	.string	"CANSM_PRE_FULLCOM_S_CC_STARTED_WAIT"
	.sleb128 6
	.byte	0
	.uleb128 0x3
	.string	"CanSM_PreFullCom_Substates_ten"
	.byte	0x8
	.byte	0xbb
	.uaword	0x9ff
	.uleb128 0xb
	.byte	0x1
	.string	"CanSM_NetworkModeTrans"
	.byte	0x1
	.byte	0x20
	.byte	0x1
	.uaword	.LFB76
	.uaword	.LFE76
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xbf2
	.uleb128 0xc
	.string	"network"
	.byte	0x1
	.byte	0x20
	.uaword	0x2b6
	.uaword	.LLST0
	.uleb128 0xc
	.string	"ComM_Mode"
	.byte	0x1
	.byte	0x20
	.uaword	0x2d4
	.uaword	.LLST1
	.uleb128 0xd
	.string	"CanSM_BswM_Mode_en"
	.byte	0x1
	.byte	0x24
	.uaword	0x73f
	.byte	0
	.uleb128 0xe
	.string	"CanSM_CurrNwMode_en"
	.byte	0x1
	.byte	0x26
	.uaword	0x568
	.uaword	.LLST2
	.uleb128 0xf
	.uaword	.LVL4
	.byte	0x1
	.uaword	0xdef
	.uleb128 0xf
	.uaword	.LVL7
	.byte	0x1
	.uaword	0xe12
	.uleb128 0x10
	.uaword	.LVL10
	.byte	0x1
	.uaword	0xe39
	.uaword	0xbd8
	.uleb128 0x11
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.uaword	.LVL11
	.byte	0x1
	.uaword	0xe65
	.uleb128 0x12
	.uaword	.LVL13
	.uaword	0xe8c
	.uleb128 0x11
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"CanSM_GetNetworkMode_Substate"
	.byte	0x1
	.byte	0xea
	.byte	0x1
	.uaword	0x294
	.uaword	.LFB77
	.uaword	.LFE77
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xced
	.uleb128 0xc
	.string	"network"
	.byte	0x1
	.byte	0xea
	.uaword	0x2b6
	.uaword	.LLST3
	.uleb128 0xc
	.string	"NetworkMode_SubstatePtr"
	.byte	0x1
	.byte	0xeb
	.uaword	0xced
	.uaword	.LLST4
	.uleb128 0xe
	.string	"CanSM_FuncVal_uo"
	.byte	0x1
	.byte	0xef
	.uaword	0x294
	.uaword	.LLST5
	.uleb128 0x14
	.uaword	.LVL15
	.uaword	0xeb9
	.uleb128 0x15
	.uaword	.LVL19
	.uaword	0xede
	.uaword	0xca8
	.uleb128 0x11
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x31
	.uleb128 0x11
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x9
	.byte	0x82
	.uleb128 0x11
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x11
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x8c
	.byte	0
	.uleb128 0x15
	.uaword	.LVL21
	.uaword	0xede
	.uaword	0xccc
	.uleb128 0x11
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x33
	.uleb128 0x11
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x9
	.byte	0x82
	.uleb128 0x11
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x11
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x8c
	.byte	0
	.uleb128 0x12
	.uaword	.LVL23
	.uaword	0xede
	.uleb128 0x11
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x32
	.uleb128 0x11
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x9
	.byte	0x82
	.uleb128 0x11
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x11
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x8c
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x568
	.uleb128 0x16
	.string	"CanSM_ConfigSet_pcst"
	.byte	0x8
	.uahalf	0x125
	.uaword	0xd12
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.byte	0x4
	.uaword	0xd18
	.uleb128 0x4
	.uaword	0x68c
	.uleb128 0x16
	.string	"CanSM_Network_pcst"
	.byte	0x8
	.uahalf	0x12d
	.uaword	0x681
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.string	"CanSM_Init_ab"
	.byte	0x8
	.uahalf	0x13b
	.uaword	0x264
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.uaword	0x568
	.uaword	0xd62
	.uleb128 0x18
	.uaword	0x2aa
	.byte	0x3
	.byte	0
	.uleb128 0x16
	.string	"CanSM_CurrNw_Mode_en"
	.byte	0x8
	.uahalf	0x142
	.uaword	0xd52
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.uaword	0x9db
	.uaword	0xd91
	.uleb128 0x18
	.uaword	0x2aa
	.byte	0x3
	.byte	0
	.uleb128 0x16
	.string	"CanSM_PreNoCom_Substates_en"
	.byte	0x8
	.uahalf	0x1bf
	.uaword	0xd81
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.uaword	0xafb
	.uaword	0xdc7
	.uleb128 0x18
	.uaword	0x2aa
	.byte	0x3
	.byte	0
	.uleb128 0x16
	.string	"CanSM_PreFullCom_Substates_en"
	.byte	0x8
	.uahalf	0x1d6
	.uaword	0xdb7
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.byte	0x1
	.string	"CanSM_NO2FULL_COM"
	.byte	0x8
	.uahalf	0x241
	.byte	0x1
	.byte	0x1
	.uaword	0xe12
	.uleb128 0x1a
	.uaword	0x2b6
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.string	"CanSM_SILENT2FULL_COM"
	.byte	0x8
	.uahalf	0x243
	.byte	0x1
	.byte	0x1
	.uaword	0xe39
	.uleb128 0x1a
	.uaword	0x2b6
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.string	"CanSM_DeInitPnNotSupported"
	.byte	0x8
	.uahalf	0x239
	.byte	0x1
	.byte	0x1
	.uaword	0xe65
	.uleb128 0x1a
	.uaword	0x2b6
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.string	"CanSM_FULL2SILENT_COM"
	.byte	0x8
	.uahalf	0x242
	.byte	0x1
	.byte	0x1
	.uaword	0xe8c
	.uleb128 0x1a
	.uaword	0x2b6
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.string	"BswM_CanSM_CurrentState"
	.byte	0x9
	.byte	0x21
	.byte	0x1
	.byte	0x1
	.uaword	0xeb9
	.uleb128 0x1a
	.uaword	0x2b6
	.uleb128 0x1a
	.uaword	0x73f
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.string	"CanSM_GetHandle"
	.byte	0x8
	.uahalf	0x249
	.byte	0x1
	.uaword	0x2b6
	.byte	0x1
	.uaword	0xede
	.uleb128 0x1a
	.uaword	0x2b6
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.string	"Det_ReportError"
	.byte	0xa
	.byte	0x70
	.byte	0x1
	.uaword	0x294
	.byte	0x1
	.uleb128 0x1a
	.uaword	0x1eb
	.uleb128 0x1a
	.uaword	0x1c0
	.uleb128 0x1a
	.uaword	0x1c0
	.uleb128 0x1a
	.uaword	0x1c0
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
	.uleb128 0xa
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0x14
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
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
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL3
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
	.uaword	.LVL5
	.uaword	.LVL10
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LVL11-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL11-1
	.uaword	.LFE76
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL4-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL4-1
	.uaword	.LVL4
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LVL7-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL7-1
	.uaword	.LVL7
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL8
	.uaword	.LVL10
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LVL11-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL11-1
	.uaword	.LFE76
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL4
	.uaword	.LVL6
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL7
	.uaword	.LVL9
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL10
	.uaword	.LVL11-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL11-1
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL14
	.uaword	.LVL15-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL15-1
	.uaword	.LVL15
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL18
	.uaword	.LVL19-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL20
	.uaword	.LVL21-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL22
	.uaword	.LVL23-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL14
	.uaword	.LVL15-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL15-1
	.uaword	.LFE77
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
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
	.uaword	.LFB76
	.uaword	.LFE76-.LFB76
	.uaword	.LFB77
	.uaword	.LFE77-.LFB77
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB76
	.uaword	.LFE76
	.uaword	.LFB77
	.uaword	.LFE77
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.extern	Det_ReportError,STT_FUNC,0
	.extern	CanSM_Init_ab,STT_OBJECT,1
	.extern	CanSM_GetHandle,STT_FUNC,0
	.extern	BswM_CanSM_CurrentState,STT_FUNC,0
	.extern	CanSM_Network_pcst,STT_OBJECT,4
	.extern	CanSM_FULL2SILENT_COM,STT_FUNC,0
	.extern	CanSM_DeInitPnNotSupported,STT_FUNC,0
	.extern	CanSM_PreNoCom_Substates_en,STT_OBJECT,4
	.extern	CanSM_SILENT2FULL_COM,STT_FUNC,0
	.extern	CanSM_NO2FULL_COM,STT_FUNC,0
	.extern	CanSM_PreFullCom_Substates_en,STT_OBJECT,4
	.extern	CanSM_CurrNw_Mode_en,STT_OBJECT,4
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
