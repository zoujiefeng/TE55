	.file	"CanSM_StartWakeupSource.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.CanSM_StartWakeupSource,"ax",@progbits
	.align 1
	.global	CanSM_StartWakeupSource
	.type	CanSM_StartWakeupSource, @function
CanSM_StartWakeupSource:
.LFB76:
	.file 1 "bsw\\CanSM\\src\\CanSM_StartWakeupSource.c"
	.loc 1 35 0
.LVL0:
	.loc 1 47 0
	movh.a	%a15, hi:CanSM_Init_ab
	ld.bu	%d15, [%a15] lo:CanSM_Init_ab
	jz	%d15, .L7
	.loc 1 52 0
	call	CanSM_GetHandle
.LVL1:
	.loc 1 56 0
	movh.a	%a15, hi:CanSM_ConfigSet_pcst
	ld.a	%a15, [%a15] lo:CanSM_ConfigSet_pcst
	.loc 1 52 0
	mov	%d15, %d2
.LVL2:
	.loc 1 56 0
	ld.bu	%d2, [%a15] 11
.LVL3:
	jge.u	%d15, %d2, .L8
	.loc 1 62 0
	movh.a	%a2, hi:CanSM_currBOR_State_en
	lea	%a2, [%a2] lo:CanSM_currBOR_State_en
	addsc.a	%a2, %a2, %d15, 0
	.loc 1 61 0
	movh.a	%a15, hi:CanSM_CurrNw_Mode_en
	.loc 1 62 0
	ld.bu	%d4, [%a2]0
	.loc 1 64 0
	movh.a	%a2, hi:CanSM_Network_Init_ab
	lea	%a2, [%a2] lo:CanSM_Network_Init_ab
	addsc.a	%a2, %a2, %d15, 0
	.loc 1 61 0
	lea	%a15, [%a15] lo:CanSM_CurrNw_Mode_en
	addsc.a	%a15, %a15, %d15, 0
	.loc 1 64 0
	ld.bu	%d2, [%a2]0
	.loc 1 61 0
	ld.bu	%d3, [%a15]0
.LVL4:
	.loc 1 64 0
	jeq	%d2, 1, .L9
	.loc 1 43 0
	mov	%d2, 1
.L3:
	.loc 1 79 0
	ret
.LVL5:
.L7:
	.loc 1 47 0 discriminator 1
	mov	%e4, 140
.LVL6:
	mov	%d6, 17
	mov	%d7, 1
	call	Det_ReportError
.LVL7:
	mov	%d2, 1
	ret
.LVL8:
.L8:
	.loc 1 56 0 discriminator 1
	mov	%e4, 140
	mov	%d6, 17
	mov	%d7, 3
	call	Det_ReportError
.LVL9:
	mov	%d2, 1
	ret
.LVL10:
.L9:
	.loc 1 64 0 discriminator 1
	and	%d3, %d3, 251
	jnz	%d3, .L3
	.loc 1 64 0 is_stmt 0 discriminator 2
	and	%d4, %d4, 253
	jnz	%d4, .L3
	.loc 1 70 0 is_stmt 1
	mov	%d3, 5
	st.b	[%a15]0, %d3
.LVL11:
	.loc 1 67 0
	movh.a	%a2, hi:CanSM_Wuvalidation_Start_ab
	.loc 1 73 0
	movh.a	%a15, hi:CanSM_WakeUpValidation_Substates_en
	.loc 1 67 0
	lea	%a2, [%a2] lo:CanSM_Wuvalidation_Start_ab
	.loc 1 73 0
	lea	%a15, [%a15] lo:CanSM_WakeUpValidation_Substates_en
	.loc 1 67 0
	addsc.a	%a2, %a2, %d15, 0
	.loc 1 73 0
	addsc.a	%a15, %a15, %d15, 0
	.loc 1 67 0
	st.b	[%a2]0, %d2
	.loc 1 73 0
	st.b	[%a15]0, %d2
.LVL12:
	.loc 1 75 0
	mov	%d2, 0
	ret
.LFE76:
	.size	CanSM_StartWakeupSource, .-CanSM_StartWakeupSource
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
	.uaword	0xb28
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\CanSM\\src\\CanSM_StartWakeupSource.c"
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
	.uaword	0x1d2
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
	.uaword	0x1fe
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
	.uaword	0x1d2
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
	.uaword	0x1c5
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x3
	.string	"NetworkHandleType"
	.byte	0x4
	.byte	0x4f
	.uaword	0x1c5
	.uleb128 0x4
	.uaword	0x269
	.uaword	0x2e4
	.uleb128 0x5
	.uaword	0x2af
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.uaword	0x1c5
	.uleb128 0x7
	.string	"Dem_EventIdType"
	.byte	0x5
	.uahalf	0x143
	.uaword	0x1f0
	.uleb128 0x8
	.byte	0x4
	.uaword	0x2e4
	.uleb128 0x6
	.uaword	0x1f0
	.uleb128 0x9
	.byte	0x14
	.byte	0x6
	.byte	0x92
	.uaword	0x43d
	.uleb128 0xa
	.string	"Cntrl_startidx_pu8"
	.byte	0x6
	.byte	0x94
	.uaword	0x301
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"BorTimeL1_u16"
	.byte	0x6
	.byte	0x99
	.uaword	0x1f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.string	"BorTimeL2_u16"
	.byte	0x6
	.byte	0x9a
	.uaword	0x1f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xa
	.string	"BorTimeTxEnsured_u16"
	.byte	0x6
	.byte	0x9c
	.uaword	0x1f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.string	"BusOffEventId_uo"
	.byte	0x6
	.byte	0x9d
	.uaword	0x2e9
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xa
	.string	"Trcv_hndle_u8"
	.byte	0x6
	.byte	0x9e
	.uaword	0x1c5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.string	"SizeofController_u8"
	.byte	0x6
	.byte	0x9f
	.uaword	0x1c5
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xa
	.string	"BorCntL1L2_u8"
	.byte	0x6
	.byte	0xa0
	.uaword	0x1c5
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xa
	.string	"ComM_channelId_uo"
	.byte	0x6
	.byte	0xa1
	.uaword	0x2bb
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0xa
	.string	"BusOffDelayConfig_b"
	.byte	0x6
	.byte	0xa5
	.uaword	0x269
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.string	"TrcvPnConfig_b"
	.byte	0x6
	.byte	0xa6
	.uaword	0x269
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.byte	0
	.uleb128 0x3
	.string	"CanSM_NetworkConf_tst"
	.byte	0x6
	.byte	0xa7
	.uaword	0x30c
	.uleb128 0xb
	.byte	0x1
	.byte	0x6
	.byte	0xab
	.uaword	0x568
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
	.uaword	0x45a
	.uleb128 0xb
	.byte	0x1
	.byte	0x6
	.byte	0xba
	.uaword	0x640
	.uleb128 0xc
	.string	"CANSM_BOR_IDLE"
	.sleb128 0
	.uleb128 0xc
	.string	"CANSM_S_BUS_OFF_CHECK"
	.sleb128 1
	.uleb128 0xc
	.string	"CANSM_S_NO_BUS_OFF"
	.sleb128 2
	.uleb128 0xc
	.string	"CANSM_S_BUS_OFF_RECOVERY_L1"
	.sleb128 3
	.uleb128 0xc
	.string	"CANSM_S_RESTART_CC"
	.sleb128 4
	.uleb128 0xc
	.string	"CANSM_S_RESTART_CC_WAIT"
	.sleb128 5
	.uleb128 0xc
	.string	"CANSM_S_BUS_OFF_RECOVERY_L2"
	.sleb128 6
	.byte	0
	.uleb128 0x3
	.string	"CanSM_BusOffRecoveryStateType_ten"
	.byte	0x6
	.byte	0xc2
	.uaword	0x58e
	.uleb128 0x9
	.byte	0x10
	.byte	0x6
	.byte	0xcf
	.uaword	0x75c
	.uleb128 0xa
	.string	"CanSM_NetworkConf_pcst"
	.byte	0x6
	.byte	0xd1
	.uaword	0x75c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"CanSM_NetworktoCtrlConf_pcu8"
	.byte	0x6
	.byte	0xd2
	.uaword	0x301
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.string	"CanSMModeRequestRepetitionTime_u16"
	.byte	0x6
	.byte	0xd6
	.uaword	0x307
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.string	"CanSMModeRequestRepetitionMax_u8"
	.byte	0x6
	.byte	0xd7
	.uaword	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xa
	.string	"CanSM_SizeOfCanSMNetworks_u8"
	.byte	0x6
	.byte	0xd8
	.uaword	0x1c5
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0xa
	.string	"CanSM_ActiveConfigset_u8"
	.byte	0x6
	.byte	0xd9
	.uaword	0x1c5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0x762
	.uleb128 0x6
	.uaword	0x43d
	.uleb128 0x3
	.string	"CanSM_ConfigType"
	.byte	0x6
	.byte	0xdb
	.uaword	0x669
	.uleb128 0xb
	.byte	0x1
	.byte	0x7
	.byte	0xbf
	.uaword	0x8a5
	.uleb128 0xc
	.string	"CANSM_WAKEUP_VALIDATION_DEFAULT"
	.sleb128 0
	.uleb128 0xc
	.string	"CANSM_WAKEUP_VALIDATION_S_TRCV_NORMAL"
	.sleb128 1
	.uleb128 0xc
	.string	"CANSM_WAKEUP_VALIDATION_S_TRCV_NORMAL_WAIT"
	.sleb128 2
	.uleb128 0xc
	.string	"CANSM_WAKEUP_VALIDATION_S_CC_STOPPED"
	.sleb128 3
	.uleb128 0xc
	.string	"CANSM_WAKEUP_VALIDATION_S_CC_STOPPED_WAIT"
	.sleb128 4
	.uleb128 0xc
	.string	"CANSM_WAKEUP_VALIDATION_S_CC_STARTED"
	.sleb128 5
	.uleb128 0xc
	.string	"CANSM_WAKEUP_VALIDATION_S_CC_STARTED_WAIT"
	.sleb128 6
	.byte	0
	.uleb128 0x3
	.string	"CanSM_WakeUpValidation_Substates_ten"
	.byte	0x7
	.byte	0xc8
	.uaword	0x77f
	.uleb128 0xd
	.byte	0x1
	.string	"CanSM_StartWakeupSource"
	.byte	0x1
	.byte	0x22
	.byte	0x1
	.uaword	0x299
	.uaword	.LFB76
	.uaword	.LFE76
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x9b1
	.uleb128 0xe
	.string	"network"
	.byte	0x1
	.byte	0x22
	.uaword	0x2bb
	.uaword	.LLST0
	.uleb128 0xf
	.string	"stFuncVal"
	.byte	0x1
	.byte	0x25
	.uaword	0x299
	.uaword	.LLST1
	.uleb128 0xf
	.string	"CanSM_CurrNwMode_en"
	.byte	0x1
	.byte	0x27
	.uaword	0x568
	.uaword	.LLST2
	.uleb128 0x10
	.string	"CanSM_CurrBORMode_en"
	.byte	0x1
	.byte	0x29
	.uaword	0x640
	.uleb128 0x11
	.uaword	.LVL1
	.uaword	0xad7
	.uleb128 0x12
	.uaword	.LVL7
	.uaword	0xafc
	.uaword	0x991
	.uleb128 0x13
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x31
	.uleb128 0x13
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x41
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
	.uaword	.LVL9
	.uaword	0xafc
	.uleb128 0x13
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x33
	.uleb128 0x13
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x41
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
	.uaword	0x9d0
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.byte	0x4
	.uaword	0x9d6
	.uleb128 0x6
	.uaword	0x767
	.uleb128 0x15
	.string	"CanSM_Init_ab"
	.byte	0x7
	.uahalf	0x13b
	.uaword	0x269
	.byte	0x1
	.byte	0x1
	.uleb128 0x4
	.uaword	0x568
	.uaword	0xa03
	.uleb128 0x5
	.uaword	0x2af
	.byte	0x3
	.byte	0
	.uleb128 0x15
	.string	"CanSM_CurrNw_Mode_en"
	.byte	0x7
	.uahalf	0x142
	.uaword	0x9f3
	.byte	0x1
	.byte	0x1
	.uleb128 0x4
	.uaword	0x640
	.uaword	0xa32
	.uleb128 0x5
	.uaword	0x2af
	.byte	0x3
	.byte	0
	.uleb128 0x15
	.string	"CanSM_currBOR_State_en"
	.byte	0x7
	.uahalf	0x149
	.uaword	0xa22
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.string	"CanSM_Wuvalidation_Start_ab"
	.byte	0x7
	.uahalf	0x175
	.uaword	0x2d4
	.byte	0x1
	.byte	0x1
	.uleb128 0x4
	.uaword	0x8a5
	.uaword	0xa89
	.uleb128 0x5
	.uaword	0x2af
	.byte	0x3
	.byte	0
	.uleb128 0x15
	.string	"CanSM_WakeUpValidation_Substates_en"
	.byte	0x7
	.uahalf	0x1dd
	.uaword	0xa79
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.string	"CanSM_Network_Init_ab"
	.byte	0x7
	.uahalf	0x1ff
	.uaword	0x2d4
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.byte	0x1
	.string	"CanSM_GetHandle"
	.byte	0x7
	.uahalf	0x249
	.byte	0x1
	.uaword	0x2bb
	.byte	0x1
	.uaword	0xafc
	.uleb128 0x17
	.uaword	0x2bb
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"Det_ReportError"
	.byte	0x8
	.byte	0x70
	.byte	0x1
	.uaword	0x299
	.byte	0x1
	.uleb128 0x17
	.uaword	0x1f0
	.uleb128 0x17
	.uaword	0x1c5
	.uleb128 0x17
	.uaword	0x1c5
	.uleb128 0x17
	.uaword	0x1c5
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
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL5
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
	.uaword	.LFE76
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL12
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LFE76
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
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
	.extern	CanSM_WakeUpValidation_Substates_en,STT_OBJECT,4
	.extern	CanSM_Wuvalidation_Start_ab,STT_OBJECT,4
	.extern	Det_ReportError,STT_FUNC,0
	.extern	CanSM_Network_Init_ab,STT_OBJECT,4
	.extern	CanSM_CurrNw_Mode_en,STT_OBJECT,4
	.extern	CanSM_currBOR_State_en,STT_OBJECT,4
	.extern	CanSM_ConfigSet_pcst,STT_OBJECT,4
	.extern	CanSM_GetHandle,STT_FUNC,0
	.extern	CanSM_Init_ab,STT_OBJECT,1
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
