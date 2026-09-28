	.file	"CanSM_ControllerModeIndication.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.CanSM_ControllerModeIndication,"ax",@progbits
	.align 1
	.global	CanSM_ControllerModeIndication
	.type	CanSM_ControllerModeIndication, @function
CanSM_ControllerModeIndication:
.LFB76:
	.file 1 "bsw\\CanSM\\src\\CanSM_ControllerModeIndication.c"
	.loc 1 34 0
.LVL0:
	.loc 1 55 0
	jge.u	%d4, 4, .L25
	.loc 1 60 0
	movh.a	%a15, hi:CanSM_Init_ab
	ld.bu	%d15, [%a15] lo:CanSM_Init_ab
	jz	%d15, .L5
	.loc 1 66 0
	movh.a	%a15, hi:CanSM_ConfigSet_pcst
	ld.a	%a15, [%a15] lo:CanSM_ConfigSet_pcst
	ld.a	%a15, [%a15] 4
	addsc.a	%a15, %a15, %d4, 0
	ld.bu	%d6, [%a15]0
.LVL1:
	.loc 1 69 0
	ne	%d15, %d6, 255
	jz	%d15, .L26
	.loc 1 73 0
	movh.a	%a15, hi:CanSM_Network_pcst
.LVL2:
	ld.w	%d15, [%a15] lo:CanSM_Network_pcst
	.loc 1 77 0
	movh.a	%a15, hi:CanSM_CurrNw_Mode_en
	lea	%a15, [%a15] lo:CanSM_CurrNw_Mode_en
	addsc.a	%a15, %a15, %d6, 0
	.loc 1 73 0
	madd	%d2, %d15, %d6, 20
	.loc 1 81 0
	ld.bu	%d15, [%a15]0
	.loc 1 73 0
	mov.a	%a5, %d2
.LVL3:
	.loc 1 81 0
	jeq	%d15, 3, .L5
	.loc 1 87 0
	movh.a	%a4, hi:CanSM_ControllerIndications_ab
	lea	%a4, [%a4] lo:CanSM_ControllerIndications_ab
	addsc.a	%a15, %a4, %d4, 0
	mov	%d15, 1
	st.b	[%a15]0, %d15
.LVL4:
	.loc 1 93 0
	jeq	%d5, 3, .L27
	.loc 1 100 0
	jeq	%d5, 2, .L28
	.loc 1 107 0
	jne	%d5, 1, .L7
	.loc 1 110 0
	movh.a	%a15, hi:CanSM_ControllerState_en
	lea	%a15, [%a15] lo:CanSM_ControllerState_en
	addsc.a	%a15, %a15, %d4, 0
	mov	%d15, 3
	st.b	[%a15]0, %d15
.L7:
	.loc 1 113 0
	ld.bu	%d5, [%a5] 13
.LVL5:
	jlt.u	%d5, 2, .L29
.L14:
.LVL6:
	ld.a	%a2, [%a5]0
	.loc 1 116 0
	mov	%d15, 0
	mov.d	%d2, %a2
.LVL7:
	addsc.a	%a15, %a2, %d5, 0
	not	%d2
	addsc.a	%a15, %a15, %d2, 0
.LVL8:
.L9:
	.loc 1 119 0
	ld.bu	%d2, [%a2+]1
	.loc 1 123 0
	add	%d3, %d15, 1
	.loc 1 121 0
	addsc.a	%a3, %a4, %d2, 0
	.loc 1 123 0
	and	%d3, %d3, 255
	ld.bu	%d2, [%a3]0
	eq	%d2, %d2, 1
	seln	%d15, %d2, %d15, %d3
.LVL9:
	loop	%a15, .L9
	.loc 1 126 0
	jeq	%d15, %d5, .L30
	ret
.LVL10:
.L5:
	.loc 1 60 0 discriminator 1
	mov	%e4, 140
.LVL11:
	mov	%d6, 7
	mov	%d7, 1
	j	Det_ReportError
.LVL12:
.L25:
	.loc 1 55 0 discriminator 1
	mov	%e4, 140
.LVL13:
	mov	%d6, 7
	mov	%d7, 4
	j	Det_ReportError
.LVL14:
.L27:
	.loc 1 96 0
	movh.a	%a15, hi:CanSM_ControllerState_en
	lea	%a15, [%a15] lo:CanSM_ControllerState_en
	addsc.a	%a15, %a15, %d4, 0
	.loc 1 113 0
	ld.bu	%d5, [%a5] 13
.LVL15:
	.loc 1 96 0
	st.b	[%a15]0, %d15
	.loc 1 113 0
	jge.u	%d5, 2, .L14
.L29:
	.loc 1 145 0
	movh.a	%a15, hi:CanSM_Ctrl_ModeInd_ab
	lea	%a15, [%a15] lo:CanSM_Ctrl_ModeInd_ab
	addsc.a	%a15, %a15, %d6, 0
	mov	%d15, 1
	.loc 1 147 0
	addsc.a	%a4, %a4, %d4, 0
	.loc 1 145 0
	st.b	[%a15]0, %d15
	.loc 1 147 0
	mov	%d15, 0
	st.b	[%a4]0, %d15
	ret
.LVL16:
.L28:
	.loc 1 103 0
	movh.a	%a15, hi:CanSM_ControllerState_en
	lea	%a15, [%a15] lo:CanSM_ControllerState_en
	addsc.a	%a15, %a15, %d4, 0
	st.b	[%a15]0, %d5
	j	.L7
.LVL17:
.L30:
	.loc 1 129 0
	movh.a	%a15, hi:CanSM_Ctrl_ModeInd_ab
	lea	%a15, [%a15] lo:CanSM_Ctrl_ModeInd_ab
	addsc.a	%a15, %a15, %d6, 0
	mov	%d2, 1
	add	%d5, %d15, -1
	st.b	[%a15]0, %d2
.LVL18:
	cmovn	%d5, %d15, 0
	ld.w	%d4, [%a5]0
.LVL19:
	mov.a	%a15, %d5
	.loc 1 132 0
	mov	%d2, 0
	.loc 1 138 0
	mov	%d3, 0
.LVL20:
.L12:
	.loc 1 135 0 discriminator 3
	mov.a	%a3, %d4
	addsc.a	%a2, %a3, %d2, 0
.LVL21:
	.loc 1 132 0 discriminator 3
	add	%d2, 1
.LVL22:
	.loc 1 135 0 discriminator 3
	ld.bu	%d15, [%a2]0
.LVL23:
	.loc 1 138 0 discriminator 3
	addsc.a	%a2, %a4, %d15, 0
	st.b	[%a2]0, %d3
	.loc 1 132 0 discriminator 3
	loop	%a15, .L12
	ret
.LVL24:
.L26:
	.loc 1 69 0 discriminator 1
	mov	%e4, 140
.LVL25:
	mov	%d6, 7
	mov	%d7, 3
	j	Det_ReportError
.LVL26:
.LFE76:
	.size	CanSM_ControllerModeIndication, .-CanSM_ControllerModeIndication
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
	.file 7 ".\\output\\inc/..\\..\\bsw\\CanIf\\api\\CanIf_Types.h"
	.file 8 "bsw\\CanSM\\src\\CanSM_Prv.h"
	.file 9 ".\\output\\inc/..\\..\\bsw\\Det\\api\\Det.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xa9e
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\CanSM\\src\\CanSM_ControllerModeIndication.c"
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
	.uaword	0x1d9
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
	.uaword	0x205
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
	.uaword	0x1d9
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x3
	.string	"uint8_least"
	.byte	0x2
	.byte	0x8a
	.uaword	0x29e
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x3
	.string	"Std_ReturnType"
	.byte	0x3
	.byte	0x60
	.uaword	0x1cc
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x3
	.string	"NetworkHandleType"
	.byte	0x4
	.byte	0x4f
	.uaword	0x1cc
	.uleb128 0x4
	.uaword	0x270
	.uaword	0x2fe
	.uleb128 0x5
	.uaword	0x2c9
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.uaword	0x1cc
	.uleb128 0x7
	.string	"Dem_EventIdType"
	.byte	0x5
	.uahalf	0x143
	.uaword	0x1f7
	.uleb128 0x8
	.byte	0x4
	.uaword	0x2fe
	.uleb128 0x6
	.uaword	0x1f7
	.uleb128 0x9
	.byte	0x14
	.byte	0x6
	.byte	0x92
	.uaword	0x457
	.uleb128 0xa
	.string	"Cntrl_startidx_pu8"
	.byte	0x6
	.byte	0x94
	.uaword	0x31b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"BorTimeL1_u16"
	.byte	0x6
	.byte	0x99
	.uaword	0x1f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.string	"BorTimeL2_u16"
	.byte	0x6
	.byte	0x9a
	.uaword	0x1f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xa
	.string	"BorTimeTxEnsured_u16"
	.byte	0x6
	.byte	0x9c
	.uaword	0x1f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.string	"BusOffEventId_uo"
	.byte	0x6
	.byte	0x9d
	.uaword	0x303
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xa
	.string	"Trcv_hndle_u8"
	.byte	0x6
	.byte	0x9e
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.string	"SizeofController_u8"
	.byte	0x6
	.byte	0x9f
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xa
	.string	"BorCntL1L2_u8"
	.byte	0x6
	.byte	0xa0
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xa
	.string	"ComM_channelId_uo"
	.byte	0x6
	.byte	0xa1
	.uaword	0x2d5
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0xa
	.string	"BusOffDelayConfig_b"
	.byte	0x6
	.byte	0xa5
	.uaword	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.string	"TrcvPnConfig_b"
	.byte	0x6
	.byte	0xa6
	.uaword	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.byte	0
	.uleb128 0x3
	.string	"CanSM_NetworkConf_tst"
	.byte	0x6
	.byte	0xa7
	.uaword	0x326
	.uleb128 0xb
	.byte	0x1
	.byte	0x6
	.byte	0xab
	.uaword	0x582
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
	.uaword	0x474
	.uleb128 0x9
	.byte	0x10
	.byte	0x6
	.byte	0xcf
	.uaword	0x69b
	.uleb128 0xa
	.string	"CanSM_NetworkConf_pcst"
	.byte	0x6
	.byte	0xd1
	.uaword	0x69b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"CanSM_NetworktoCtrlConf_pcu8"
	.byte	0x6
	.byte	0xd2
	.uaword	0x31b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.string	"CanSMModeRequestRepetitionTime_u16"
	.byte	0x6
	.byte	0xd6
	.uaword	0x321
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.string	"CanSMModeRequestRepetitionMax_u8"
	.byte	0x6
	.byte	0xd7
	.uaword	0x2fe
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xa
	.string	"CanSM_SizeOfCanSMNetworks_u8"
	.byte	0x6
	.byte	0xd8
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0xa
	.string	"CanSM_ActiveConfigset_u8"
	.byte	0x6
	.byte	0xd9
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0x6a1
	.uleb128 0x6
	.uaword	0x457
	.uleb128 0x3
	.string	"CanSM_ConfigType"
	.byte	0x6
	.byte	0xdb
	.uaword	0x5a8
	.uleb128 0xb
	.byte	0x1
	.byte	0x7
	.byte	0x49
	.uaword	0x710
	.uleb128 0xc
	.string	"CANIF_CS_UNINIT"
	.sleb128 0
	.uleb128 0xc
	.string	"CANIF_CS_SLEEP"
	.sleb128 1
	.uleb128 0xc
	.string	"CANIF_CS_STARTED"
	.sleb128 2
	.uleb128 0xc
	.string	"CANIF_CS_STOPPED"
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.string	"CanIf_ControllerModeType"
	.byte	0x7
	.byte	0x5b
	.uaword	0x6be
	.uleb128 0xb
	.byte	0x1
	.byte	0x8
	.byte	0xe4
	.uaword	0x7b6
	.uleb128 0xc
	.string	"CANSM_ControllerState_UNINIT"
	.sleb128 0
	.uleb128 0xc
	.string	"CANSM_ControllerState_STOPPED"
	.sleb128 1
	.uleb128 0xc
	.string	"CANSM_ControllerState_STARTED"
	.sleb128 2
	.uleb128 0xc
	.string	"CANSM_ControllerState_SLEEP"
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.string	"CanSM_CANControllerStateType_ten"
	.byte	0x8
	.byte	0xe9
	.uaword	0x730
	.uleb128 0xd
	.byte	0x1
	.string	"CanSM_ControllerModeIndication"
	.byte	0x1
	.byte	0x21
	.byte	0x1
	.uaword	.LFB76
	.uaword	.LFE76
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x968
	.uleb128 0xe
	.string	"ControllerId"
	.byte	0x1
	.byte	0x21
	.uaword	0x1cc
	.uaword	.LLST0
	.uleb128 0xe
	.string	"ControllerMode"
	.byte	0x1
	.byte	0x21
	.uaword	0x710
	.uaword	.LLST1
	.uleb128 0xf
	.string	"network_indx_u8"
	.byte	0x1
	.byte	0x24
	.uaword	0x1cc
	.uaword	.LLST2
	.uleb128 0xf
	.string	"CanSM_ControllerId_u8"
	.byte	0x1
	.byte	0x26
	.uaword	0x28b
	.uaword	.LLST3
	.uleb128 0xf
	.string	"CanSM_Ctrl_index_u8"
	.byte	0x1
	.byte	0x28
	.uaword	0x28b
	.uaword	.LLST4
	.uleb128 0xf
	.string	"CanSM_Controller_Counter_u8"
	.byte	0x1
	.byte	0x2a
	.uaword	0x1cc
	.uaword	.LLST5
	.uleb128 0xf
	.string	"CanSM_NetworkConf_ps"
	.byte	0x1
	.byte	0x2c
	.uaword	0x69b
	.uaword	.LLST6
	.uleb128 0x10
	.string	"CurNwMode_Temp_uo"
	.byte	0x1
	.byte	0x30
	.uaword	0x582
	.uleb128 0x11
	.uaword	.LVL12
	.byte	0x1
	.uaword	0xa72
	.uaword	0x923
	.uleb128 0x12
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x31
	.uleb128 0x12
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x37
	.uleb128 0x12
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x12
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x8c
	.byte	0
	.uleb128 0x11
	.uaword	.LVL14
	.byte	0x1
	.uaword	0xa72
	.uaword	0x947
	.uleb128 0x12
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x34
	.uleb128 0x12
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x37
	.uleb128 0x12
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x12
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x8c
	.byte	0
	.uleb128 0x13
	.uaword	.LVL26
	.byte	0x1
	.uaword	0xa72
	.uleb128 0x12
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x33
	.uleb128 0x12
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x37
	.uleb128 0x12
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x12
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x8c
	.byte	0
	.byte	0
	.uleb128 0x14
	.string	"CanSM_ConfigSet_pcst"
	.byte	0x8
	.uahalf	0x125
	.uaword	0x987
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.byte	0x4
	.uaword	0x98d
	.uleb128 0x6
	.uaword	0x6a6
	.uleb128 0x14
	.string	"CanSM_Network_pcst"
	.byte	0x8
	.uahalf	0x12d
	.uaword	0x69b
	.byte	0x1
	.byte	0x1
	.uleb128 0x14
	.string	"CanSM_Init_ab"
	.byte	0x8
	.uahalf	0x13b
	.uaword	0x270
	.byte	0x1
	.byte	0x1
	.uleb128 0x4
	.uaword	0x582
	.uaword	0x9d7
	.uleb128 0x5
	.uaword	0x2c9
	.byte	0x3
	.byte	0
	.uleb128 0x14
	.string	"CanSM_CurrNw_Mode_en"
	.byte	0x8
	.uahalf	0x142
	.uaword	0x9c7
	.byte	0x1
	.byte	0x1
	.uleb128 0x14
	.string	"CanSM_Ctrl_ModeInd_ab"
	.byte	0x8
	.uahalf	0x1a6
	.uaword	0x2ee
	.byte	0x1
	.byte	0x1
	.uleb128 0x4
	.uaword	0x7b6
	.uaword	0xa26
	.uleb128 0x5
	.uaword	0x2c9
	.byte	0x3
	.byte	0
	.uleb128 0x14
	.string	"CanSM_ControllerState_en"
	.byte	0x8
	.uahalf	0x1f8
	.uaword	0xa16
	.byte	0x1
	.byte	0x1
	.uleb128 0x14
	.string	"CanSM_ControllerIndications_ab"
	.byte	0x8
	.uahalf	0x206
	.uaword	0x2ee
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.string	"Det_ReportError"
	.byte	0x9
	.byte	0x70
	.byte	0x1
	.uaword	0x2b3
	.byte	0x1
	.uleb128 0x16
	.uaword	0x1f7
	.uleb128 0x16
	.uaword	0x1cc
	.uleb128 0x16
	.uaword	0x1cc
	.uleb128 0x16
	.uaword	0x1cc
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
	.uleb128 0x12
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL14
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL19
	.uaword	.LVL24
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL25
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
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL5
	.uaword	.LVL10
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL17
	.uaword	.LVL24
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL25
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
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL14
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL24
	.uaword	.LVL26-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL4
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL14
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0xb
	.byte	0x74
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL23
	.uahalf	0x8
	.byte	0x82
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL6
	.uaword	.LVL8
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x9
	.byte	0x82
	.sleb128 0
	.byte	0x85
	.sleb128 0
	.byte	0x6
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x9
	.byte	0x82
	.sleb128 0
	.byte	0x85
	.sleb128 0
	.byte	0x6
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LVL20
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL0
	.uaword	.LVL8
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL10
	.uaword	.LVL17
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL17
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL24
	.uaword	.LFE76
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL3
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL7
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL14
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL17
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x65
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
	.extern	CanSM_Ctrl_ModeInd_ab,STT_OBJECT,4
	.extern	Det_ReportError,STT_FUNC,0
	.extern	CanSM_ControllerState_en,STT_OBJECT,4
	.extern	CanSM_ControllerIndications_ab,STT_OBJECT,4
	.extern	CanSM_CurrNw_Mode_en,STT_OBJECT,4
	.extern	CanSM_Network_pcst,STT_OBJECT,4
	.extern	CanSM_ConfigSet_pcst,STT_OBJECT,4
	.extern	CanSM_Init_ab,STT_OBJECT,1
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
