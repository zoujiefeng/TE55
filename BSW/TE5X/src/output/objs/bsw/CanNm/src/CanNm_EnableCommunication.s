	.file	"CanNm_EnableCommunication.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.CanNm_EnableCommunication,"ax",@progbits
	.align 1
	.global	CanNm_EnableCommunication
	.type	CanNm_EnableCommunication, @function
CanNm_EnableCommunication:
.LFB76:
	.file 1 "bsw\\CanNm\\src\\CanNm_EnableCommunication.c"
	.loc 1 32 0
.LVL0:
	sub.a	%SP, 8
.LCFI0:
	.loc 1 32 0
	mov	%d5, %d4
	.loc 1 45 0
	jlt.u	%d4, 2, .L12
.L2:
	.loc 1 50 0 discriminator 1
	mov	%d4, 31
.LVL1:
	mov	%d6, 13
	mov	%d7, 2
	call	Det_ReportError
.LVL2:
	mov	%d2, 1
	ret
.LVL3:
.L12:
	.loc 1 45 0 discriminator 1
	movh.a	%a15, hi:CanNm_HandleTable
	lea	%a15, [%a15] lo:CanNm_HandleTable
	addsc.a	%a15, %a15, %d4, 0
	.loc 1 50 0 discriminator 1
	ld.bu	%d15, [%a15]0
	jnz	%d15, .L2
	.loc 1 55 0
	movh.a	%a15, hi:CanNm_RamData_s
	lea	%a15, [%a15] lo:CanNm_RamData_s
	ld.bu	%d15, [%a15] 60
	jz	%d15, .L13
.LVL4:
	.loc 1 68 0
	ld.bu	%d2, [%a15] 80
	jnz	%d2, .L7
	.loc 1 68 0 is_stmt 0 discriminator 1
	ld.bu	%d3, [%a15] 70
	jeq	%d3, 3, .L14
.L7:
	.loc 1 64 0 is_stmt 1
	mov	%d2, 1
.L4:
	.loc 1 100 0
	ret
.L14:
	.loc 1 74 0
	mov	%d3, 1
	st.b	[%a15] 80, %d3
	.loc 1 77 0
	ld.w	%d3, [%a15] 12
	st.w	[%a15] 32, %d3
	.loc 1 86 0
	jeq	%d15, 3, .L4
	.loc 1 88 0
	mov	%d4, 0
.LVL5:
	st.w	[%SP] 4, %d2
	call	CanNm_StartTransmission
.LVL6:
	ld.w	%d2, [%SP] 4
	ret
.LVL7:
.L13:
	.loc 1 55 0 discriminator 1
	mov	%d4, 31
.LVL8:
	mov	%d6, 13
	mov	%d7, 1
	call	Det_ReportError
.LVL9:
	mov	%d2, 1
	ret
.LFE76:
	.size	CanNm_EnableCommunication, .-CanNm_EnableCommunication
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
	.byte	0x4
	.uaword	.LCFI0-.LFB76
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE0:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 4 ".\\output\\inc/..\\..\\bsw\\ComStack\\ComStack_Cfg.h"
	.file 5 ".\\output\\inc/..\\..\\bsw\\ComStack\\api\\ComStack_Types.h"
	.file 6 ".\\output\\inc/..\\..\\bsw\\CanNm_PreCompile_and_PB_Variant\\CanNm_Cfg.h"
	.file 7 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\NmStack_Types.h"
	.file 8 "bsw\\CanNm\\src\\CanNm_Prv.h"
	.file 9 ".\\output\\inc/..\\..\\bsw\\CanNm\\integration\\CanNm_Cfg_SchM.h"
	.file 10 ".\\output\\inc/..\\..\\bsw\\Det\\api\\Det.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x9fb
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\CanNm\\src\\CanNm_EnableCommunication.c"
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
	.uaword	0x1d4
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
	.uaword	0x200
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
	.uaword	0x23c
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
	.uaword	0x1d4
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
	.uaword	0x1c7
	.uleb128 0x3
	.string	"PduLengthType"
	.byte	0x4
	.byte	0x30
	.uaword	0x1f2
	.uleb128 0x4
	.byte	0xc
	.byte	0x4
	.byte	0x39
	.uaword	0x31c
	.uleb128 0x5
	.string	"SduDataPtr"
	.byte	0x4
	.byte	0x3b
	.uaword	0x31c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"MetaDataPtr"
	.byte	0x4
	.byte	0x3c
	.uaword	0x31c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"SduLength"
	.byte	0x4
	.byte	0x3d
	.uaword	0x2bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x1c7
	.uleb128 0x3
	.string	"PduInfoType"
	.byte	0x4
	.byte	0x3e
	.uaword	0x2d4
	.uleb128 0x3
	.string	"NetworkHandleType"
	.byte	0x5
	.byte	0x4f
	.uaword	0x1c7
	.uleb128 0x3
	.string	"CanNm_TimerType"
	.byte	0x6
	.byte	0x42
	.uaword	0x22e
	.uleb128 0x7
	.byte	0x1
	.byte	0x7
	.byte	0x2c
	.uaword	0x3c6
	.uleb128 0x8
	.string	"NM_MODE_BUS_SLEEP"
	.sleb128 0
	.uleb128 0x8
	.string	"NM_MODE_PREPARE_BUS_SLEEP"
	.sleb128 1
	.uleb128 0x8
	.string	"NM_MODE_SYNCHRONIZE"
	.sleb128 2
	.uleb128 0x8
	.string	"NM_MODE_NETWORK"
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.string	"Nm_ModeType"
	.byte	0x7
	.byte	0x31
	.uaword	0x365
	.uleb128 0x7
	.byte	0x1
	.byte	0x7
	.byte	0x44
	.uaword	0x49d
	.uleb128 0x8
	.string	"NM_STATE_UNINIT"
	.sleb128 0
	.uleb128 0x8
	.string	"NM_STATE_BUS_SLEEP"
	.sleb128 1
	.uleb128 0x8
	.string	"NM_STATE_PREPARE_BUS_SLEEP"
	.sleb128 2
	.uleb128 0x8
	.string	"NM_STATE_READY_SLEEP"
	.sleb128 3
	.uleb128 0x8
	.string	"NM_STATE_NORMAL_OPERATION"
	.sleb128 4
	.uleb128 0x8
	.string	"NM_STATE_REPEAT_MESSAGE"
	.sleb128 5
	.uleb128 0x8
	.string	"NM_STATE_SYNCHRONIZE"
	.sleb128 6
	.uleb128 0x8
	.string	"NM_STATE_OFFLINE"
	.sleb128 7
	.byte	0
	.uleb128 0x3
	.string	"Nm_StateType"
	.byte	0x7
	.byte	0x4d
	.uaword	0x3d9
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x7
	.byte	0x1
	.byte	0x8
	.byte	0xc8
	.uaword	0x4fd
	.uleb128 0x8
	.string	"CANNM_NETWORK_RELEASED_E"
	.sleb128 0
	.uleb128 0x8
	.string	"CANNM_NETWORK_REQUESTED_E"
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.string	"CanNm_NetworkStateType"
	.byte	0x8
	.byte	0xcc
	.uaword	0x4bd
	.uleb128 0x4
	.byte	0x54
	.byte	0x8
	.byte	0xce
	.uaword	0x7e8
	.uleb128 0x5
	.string	"Pdu_s"
	.byte	0x8
	.byte	0xd0
	.uaword	0x322
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"ctSwFrTimer"
	.byte	0x8
	.byte	0xd1
	.uaword	0x34e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"MsgCyclePeriod"
	.byte	0x8
	.byte	0xd2
	.uaword	0x34e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x5
	.string	"PrevMsgCycleTimestamp"
	.byte	0x8
	.byte	0xd3
	.uaword	0x34e
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x5
	.string	"PrevMsgTimeoutTimestamp"
	.byte	0x8
	.byte	0xd4
	.uaword	0x34e
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x5
	.string	"ctRepeatMessageTimer"
	.byte	0x8
	.byte	0xd5
	.uaword	0x34e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x5
	.string	"ctNMTimeoutTimer"
	.byte	0x8
	.byte	0xd6
	.uaword	0x34e
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x5
	.string	"ctWaitBusSleepTimer"
	.byte	0x8
	.byte	0xd7
	.uaword	0x34e
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x5
	.string	"ctRemoteSleepIndTimer"
	.byte	0x8
	.byte	0xd8
	.uaword	0x34e
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x5
	.string	"RxBuffer_au8"
	.byte	0x8
	.byte	0xd9
	.uaword	0x7e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x5
	.string	"TxBuffer_au8"
	.byte	0x8
	.byte	0xda
	.uaword	0x7e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x5
	.string	"State_en"
	.byte	0x8
	.byte	0xdb
	.uaword	0x49d
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x5
	.string	"NetworkReqState_en"
	.byte	0x8
	.byte	0xdc
	.uaword	0x4fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x3d
	.uleb128 0x5
	.string	"UserDataBuffer_au8"
	.byte	0x8
	.byte	0xdd
	.uaword	0x7e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x3e
	.uleb128 0x5
	.string	"Mode_en"
	.byte	0x8
	.byte	0xde
	.uaword	0x3c6
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0x5
	.string	"RxNodeId_u8"
	.byte	0x8
	.byte	0xdf
	.uaword	0x1c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0x5
	.string	"RxCtrlBitVector_u8"
	.byte	0x8
	.byte	0xe0
	.uaword	0x1c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x5
	.string	"TxCtrlBitVector_u8"
	.byte	0x8
	.byte	0xe1
	.uaword	0x1c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x49
	.uleb128 0x5
	.string	"ImmediateNmTx_u8"
	.byte	0x8
	.byte	0xe2
	.uaword	0x1c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4a
	.uleb128 0x5
	.string	"MsgTxStatus_b"
	.byte	0x8
	.byte	0xea
	.uaword	0x279
	.byte	0x2
	.byte	0x23
	.uleb128 0x4b
	.uleb128 0x5
	.string	"TxRptMsgStatus_b"
	.byte	0x8
	.byte	0xec
	.uaword	0x279
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x5
	.string	"RxIndication_b"
	.byte	0x8
	.byte	0xee
	.uaword	0x279
	.byte	0x2
	.byte	0x23
	.uleb128 0x4d
	.uleb128 0x5
	.string	"TxConfirmation_b"
	.byte	0x8
	.byte	0xef
	.uaword	0x279
	.byte	0x2
	.byte	0x23
	.uleb128 0x4e
	.uleb128 0x5
	.string	"RxStatus_b"
	.byte	0x8
	.byte	0xf0
	.uaword	0x279
	.byte	0x2
	.byte	0x23
	.uleb128 0x4f
	.uleb128 0x5
	.string	"stCanNmComm"
	.byte	0x8
	.byte	0xf1
	.uaword	0x279
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x5
	.string	"stRemoteSleepInd"
	.byte	0x8
	.byte	0xf2
	.uaword	0x279
	.byte	0x2
	.byte	0x23
	.uleb128 0x51
	.uleb128 0x5
	.string	"TxTimeoutMonitoringActive_b"
	.byte	0x8
	.byte	0xf3
	.uaword	0x279
	.byte	0x2
	.byte	0x23
	.uleb128 0x52
	.byte	0
	.uleb128 0x9
	.uaword	0x1c7
	.uaword	0x7f8
	.uleb128 0xa
	.uaword	0x4b1
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.string	"CanNm_RamType"
	.byte	0x8
	.byte	0xfb
	.uaword	0x51b
	.uleb128 0xb
	.string	"SchM_Enter_CanNm_EnableCommunicationNoNest"
	.byte	0x9
	.byte	0xb7
	.byte	0x1
	.byte	0x3
	.uleb128 0xb
	.string	"SchM_Exit_CanNm_EnableCommunicationNoNest"
	.byte	0x9
	.byte	0xbc
	.byte	0x1
	.byte	0x3
	.uleb128 0xc
	.byte	0x1
	.string	"CanNm_EnableCommunication"
	.byte	0x1
	.byte	0x1d
	.byte	0x1
	.uaword	0x2a9
	.uaword	.LFB76
	.uaword	.LFE76
	.uaword	.LLST0
	.byte	0x1
	.uaword	0x946
	.uleb128 0xd
	.string	"nmChannelHandle"
	.byte	0x1
	.byte	0x1e
	.uaword	0x335
	.uaword	.LLST1
	.uleb128 0xe
	.string	"RamPtr_ps"
	.byte	0x1
	.byte	0x22
	.uaword	0x946
	.uleb128 0xf
	.string	"RetVal_en"
	.byte	0x1
	.byte	0x25
	.uaword	0x2a9
	.uaword	.LLST2
	.uleb128 0xe
	.string	"CanNm_NetworkHandle"
	.byte	0x1
	.byte	0x28
	.uaword	0x335
	.uleb128 0x10
	.uaword	.LVL2
	.uaword	0x99d
	.uaword	0x919
	.uleb128 0x11
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x32
	.uleb128 0x11
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x3d
	.uleb128 0x11
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x4f
	.byte	0
	.uleb128 0x10
	.uaword	.LVL6
	.uaword	0x9d0
	.uaword	0x92c
	.uleb128 0x11
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x12
	.uaword	.LVL9
	.uaword	0x99d
	.uleb128 0x11
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x31
	.uleb128 0x11
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x3d
	.uleb128 0x11
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x4f
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x7f8
	.uleb128 0x9
	.uaword	0x7f8
	.uaword	0x957
	.uleb128 0x13
	.byte	0
	.uleb128 0x14
	.string	"CanNm_RamData_s"
	.byte	0x8
	.uahalf	0x124
	.uaword	0x94c
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.uaword	0x335
	.uaword	0x97c
	.uleb128 0x13
	.byte	0
	.uleb128 0x14
	.string	"CanNm_HandleTable"
	.byte	0x8
	.uahalf	0x12c
	.uaword	0x998
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.uaword	0x971
	.uleb128 0x16
	.byte	0x1
	.string	"Det_ReportError"
	.byte	0xa
	.byte	0x70
	.byte	0x1
	.uaword	0x2a9
	.byte	0x1
	.uaword	0x9d0
	.uleb128 0x17
	.uaword	0x1f2
	.uleb128 0x17
	.uaword	0x1c7
	.uleb128 0x17
	.uaword	0x1c7
	.uleb128 0x17
	.uaword	0x1c7
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"CanNm_StartTransmission"
	.byte	0x8
	.uahalf	0x15b
	.byte	0x1
	.byte	0x1
	.uaword	0x9f9
	.uleb128 0x17
	.uaword	0x9f9
	.byte	0
	.uleb128 0x15
	.uaword	0x335
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
	.uleb128 0x5
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
	.uleb128 0x8
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0x21
	.byte	0
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LFB76
	.uaword	.LCFI0
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0
	.uaword	.LFE76
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL1
	.uaword	.LVL3
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL5
	.uaword	.LVL7
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL8
	.uaword	.LFE76
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL4
	.uaword	.LVL7
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
	.extern	CanNm_StartTransmission,STT_FUNC,0
	.extern	CanNm_RamData_s,STT_OBJECT,-1
	.extern	CanNm_HandleTable,STT_OBJECT,-1
	.extern	Det_ReportError,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
