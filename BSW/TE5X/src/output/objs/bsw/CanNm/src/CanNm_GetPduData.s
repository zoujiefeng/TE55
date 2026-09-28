	.file	"CanNm_GetPduData.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.CanNm_GetPduData,"ax",@progbits
	.align 1
	.global	CanNm_GetPduData
	.type	CanNm_GetPduData, @function
CanNm_GetPduData:
.LFB107:
	.file 1 "bsw\\CanNm\\src\\CanNm_GetPduData.c"
	.loc 1 36 0
.LVL0:
	.loc 1 36 0
	mov	%d5, %d4
	.loc 1 55 0
	jlt.u	%d4, 2, .L26
.L2:
	.loc 1 60 0 discriminator 1
	mov	%d4, 31
.LVL1:
	mov	%d6, 10
	mov	%d7, 2
	call	Det_ReportError
.LVL2:
	mov	%d2, 1
	ret
.LVL3:
.L26:
	.loc 1 55 0 discriminator 1
	movh.a	%a15, hi:CanNm_HandleTable
	lea	%a15, [%a15] lo:CanNm_HandleTable
	addsc.a	%a15, %a15, %d4, 0
	.loc 1 60 0 discriminator 1
	ld.bu	%d15, [%a15]0
	jnz	%d15, .L2
	.loc 1 64 0
	movh.a	%a15, hi:CanNm_RamData_s
	lea	%a15, [%a15] lo:CanNm_RamData_s
	ld.bu	%d15, [%a15] 60
	jz	%d15, .L27
	.loc 1 68 0
	jz.a	%a4, .L28
.LVL4:
	.loc 1 80 0
	ld.bu	%d15, [%a15] 79
	.loc 1 77 0
	mov	%d2, 1
	.loc 1 80 0
	jz	%d15, .L4
.LVL5:
	.loc 1 85 0
	movh.a	%a2, hi:CanNm_ChannelConfigData_cs
	lea	%a2, [%a2] lo:CanNm_ChannelConfigData_cs
	ld.bu	%d15, [%a2] 39
	jz	%d15, .L4
.LVL6:
	mov.d	%d2, %a15
	movh.a	%a2, hi:CanNm_RamData_s+48
	mov.d	%d4, %a4
.LVL7:
	lea	%a2, [%a2] lo:CanNm_RamData_s+48
	addi	%d3, %d2, 44
	add	%d4, 4
	ge.a	%d2, %a4, %a2
	mov.d	%d5, %a4
.LVL8:
	or.ge.u	%d2, %d3, %d4
	ge.u	%d4, %d15, 9
	and	%d4, %d2
	and	%d2, %d5, 3
	eq	%d2, %d2, 0
	and	%d2, %d4
	jz	%d2, .L16
.LVL9:
	add	%d2, %d15, -4
	sh	%d2, -2
	addi	%d4, %d2, 1
	add	%d5, %d15, -1
.LVL10:
	sh	%d4, 2
	jlt.u	%d5, 3, .L17
	ne	%d6, %d2, -1
	mov.aa	%a2, %a4
.LBB8:
.LBB9:
	.file 2 ".\\output\\inc/..\\..\\bsw\\CanNm\\api\\CanNm_Inl.h"
	.loc 2 1299 0
	mov	%d5, 0
	sel	%d2, %d6, %d2, 0
.LVL11:
.L9:
	.loc 2 1301 0
	addsc.a	%a3, %a15, %d5, 2
	add	%d5, 1
	ld.w	%d6, [%a3] 44
	st.w	[%a2+]4, %d6
	jned	%d2, 0, .L9
	mov.a	%a2, %d3
	addsc.a	%a15, %a2, %d4, 0
	addsc.a	%a4, %a4, %d4, 0
.LVL12:
	jeq	%d15, %d4, .L13
.L8:
.LVL13:
	ld.bu	%d2, [%a15]0
	st.b	[%a4]0, %d2
.LVL14:
	.loc 2 1299 0
	addi	%d2, %d4, 1
	jge.u	%d2, %d15, .L13
	.loc 2 1301 0
	ld.bu	%d2, [%a15] 1
	.loc 2 1299 0
	add	%d4, 2
	.loc 2 1301 0
	st.b	[%a4] 1, %d2
.LVL15:
	.loc 2 1299 0
	jge.u	%d4, %d15, .L13
	.loc 2 1301 0
	ld.bu	%d15, [%a15] 2
	st.b	[%a4] 2, %d15
.LVL16:
.L13:
.LBE9:
.LBE8:
	.loc 1 106 0
	mov	%d2, 0
	ret
.LVL17:
.L4:
	.loc 1 115 0
	ret
.LVL18:
.L27:
	.loc 1 64 0 discriminator 1
	mov	%d4, 31
.LVL19:
	mov	%d6, 10
	mov	%d7, 1
	call	Det_ReportError
.LVL20:
	mov	%d2, 1
	ret
.LVL21:
.L17:
.LBB11:
.LBB10:
	.loc 2 1299 0
	mov	%d4, 0
	mov.a	%a15, %d3
	j	.L8
.LVL22:
.L16:
	mov.a	%a15, %d15
	mov.a	%a2, 0
	add.a	%a15, -1
.LVL23:
.L7:
	.loc 2 1301 0
	addsc.a	%a3, %a2, %d3, 0
	ld.bu	%d15, [%a3]0
	add.a	%a3, %a4, %a2
.LVL24:
	st.b	[%a3]0, %d15
.LVL25:
	.loc 2 1299 0
	add.a	%a2, 1
.LVL26:
	loop	%a15, .L7
	j	.L13
.LVL27:
.L28:
.LBE10:
.LBE11:
	.loc 1 68 0 discriminator 1
	mov	%d4, 31
.LVL28:
	mov	%d6, 10
	mov	%d7, 18
	call	Det_ReportError
.LVL29:
	mov	%d2, 1
	ret
.LFE107:
	.size	CanNm_GetPduData, .-CanNm_GetPduData
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
	.uaword	.LFB107
	.uaword	.LFE107-.LFB107
	.align 2
.LEFDE0:
.section .text,"ax",@progbits
.Letext0:
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 4 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 5 ".\\output\\inc/..\\..\\bsw\\ComStack\\ComStack_Cfg.h"
	.file 6 ".\\output\\inc/..\\..\\bsw\\ComStack\\api\\ComStack_Types.h"
	.file 7 ".\\output\\inc/..\\..\\bsw\\CanNm_PreCompile_and_PB_Variant\\CanNm_Cfg.h"
	.file 8 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\NmStack_Types.h"
	.file 9 ".\\output\\inc/..\\..\\bsw\\CanNm\\src\\CanNm_Prv.h"
	.file 10 ".\\output\\inc/..\\..\\bsw\\CanNm\\integration\\CanNm_Cfg_SchM.h"
	.file 11 ".\\output\\inc/..\\..\\bsw\\Det\\api\\Det.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xd92
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\CanNm\\src\\CanNm_GetPduData.c"
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
	.byte	0x3
	.byte	0x51
	.uaword	0x1cb
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
	.byte	0x3
	.byte	0x5b
	.uaword	0x1f7
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
	.byte	0x3
	.byte	0x6a
	.uaword	0x233
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
	.byte	0x3
	.byte	0x80
	.uaword	0x1cb
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x3
	.string	"uint8_least"
	.byte	0x3
	.byte	0x8a
	.uaword	0x29e
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x3
	.string	"Std_ReturnType"
	.byte	0x4
	.byte	0x60
	.uaword	0x1be
	.uleb128 0x3
	.string	"PduIdType"
	.byte	0x5
	.byte	0x2c
	.uaword	0x1e9
	.uleb128 0x3
	.string	"PduLengthType"
	.byte	0x5
	.byte	0x30
	.uaword	0x1e9
	.uleb128 0x4
	.byte	0xc
	.byte	0x5
	.byte	0x39
	.uaword	0x337
	.uleb128 0x5
	.string	"SduDataPtr"
	.byte	0x5
	.byte	0x3b
	.uaword	0x337
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"MetaDataPtr"
	.byte	0x5
	.byte	0x3c
	.uaword	0x337
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"SduLength"
	.byte	0x5
	.byte	0x3d
	.uaword	0x2da
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x1be
	.uleb128 0x3
	.string	"PduInfoType"
	.byte	0x5
	.byte	0x3e
	.uaword	0x2ef
	.uleb128 0x3
	.string	"NetworkHandleType"
	.byte	0x6
	.byte	0x4f
	.uaword	0x1be
	.uleb128 0x3
	.string	"CanNm_TimerType"
	.byte	0x7
	.byte	0x42
	.uaword	0x225
	.uleb128 0x4
	.byte	0x34
	.byte	0x7
	.byte	0x4a
	.uaword	0x604
	.uleb128 0x5
	.string	"MsgCycleTime"
	.byte	0x7
	.byte	0x4b
	.uaword	0x369
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"MsgCycleOffset"
	.byte	0x7
	.byte	0x4c
	.uaword	0x369
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"MsgTimeoutTime"
	.byte	0x7
	.byte	0x4d
	.uaword	0x369
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"MsgReducedTime"
	.byte	0x7
	.byte	0x4e
	.uaword	0x369
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"ImmediateNmCycleTime"
	.byte	0x7
	.byte	0x4f
	.uaword	0x369
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x5
	.string	"NMTimeoutTime"
	.byte	0x7
	.byte	0x50
	.uaword	0x369
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x5
	.string	"RepeatMessageTime"
	.byte	0x7
	.byte	0x51
	.uaword	0x369
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x5
	.string	"RemoteSleepIndTime"
	.byte	0x7
	.byte	0x52
	.uaword	0x369
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x5
	.string	"WaitBusSleepTime"
	.byte	0x7
	.byte	0x53
	.uaword	0x369
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x5
	.string	"TxPduId"
	.byte	0x7
	.byte	0x54
	.uaword	0x2c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x5
	.string	"NetworkHandle"
	.byte	0x7
	.byte	0x58
	.uaword	0x350
	.byte	0x2
	.byte	0x23
	.uleb128 0x26
	.uleb128 0x5
	.string	"PduLength_u8"
	.byte	0x7
	.byte	0x59
	.uaword	0x1be
	.byte	0x2
	.byte	0x23
	.uleb128 0x27
	.uleb128 0x5
	.string	"NodeIdPos_u8"
	.byte	0x7
	.byte	0x5a
	.uaword	0x1be
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x5
	.string	"ControlBitVectorPos_u8"
	.byte	0x7
	.byte	0x5b
	.uaword	0x1be
	.byte	0x2
	.byte	0x23
	.uleb128 0x29
	.uleb128 0x5
	.string	"NodeDetectionEnabled_b"
	.byte	0x7
	.byte	0x5c
	.uaword	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x2a
	.uleb128 0x5
	.string	"NodeIdEnabled_b"
	.byte	0x7
	.byte	0x5d
	.uaword	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x2b
	.uleb128 0x5
	.string	"RepeatMsgIndEnabled_b"
	.byte	0x7
	.byte	0x5e
	.uaword	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x5
	.string	"NodeId_u8"
	.byte	0x7
	.byte	0x5f
	.uaword	0x1be
	.byte	0x2
	.byte	0x23
	.uleb128 0x2d
	.uleb128 0x5
	.string	"UserDataLength_u8"
	.byte	0x7
	.byte	0x60
	.uaword	0x1be
	.byte	0x2
	.byte	0x23
	.uleb128 0x2e
	.uleb128 0x5
	.string	"ImmediateNmTransmissions_u8"
	.byte	0x7
	.byte	0x61
	.uaword	0x1be
	.byte	0x2
	.byte	0x23
	.uleb128 0x2f
	.uleb128 0x5
	.string	"stChannelActive_b"
	.byte	0x7
	.byte	0x68
	.uaword	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x5
	.string	"stBusLoadReductionActive_b"
	.byte	0x7
	.byte	0x69
	.uaword	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x31
	.uleb128 0x5
	.string	"ActiveWakeupBitEnabled_b"
	.byte	0x7
	.byte	0x7c
	.uaword	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x32
	.byte	0
	.uleb128 0x3
	.string	"CanNm_ChannelConfigType"
	.byte	0x7
	.byte	0x7d
	.uaword	0x380
	.uleb128 0x7
	.byte	0x1
	.byte	0x8
	.byte	0x2c
	.uaword	0x684
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
	.byte	0x8
	.byte	0x31
	.uaword	0x623
	.uleb128 0x7
	.byte	0x1
	.byte	0x8
	.byte	0x44
	.uaword	0x75b
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
	.byte	0x8
	.byte	0x4d
	.uaword	0x697
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x9
	.uaword	0x1be
	.uleb128 0x6
	.byte	0x4
	.uaword	0x77b
	.uleb128 0x7
	.byte	0x1
	.byte	0x9
	.byte	0xc8
	.uaword	0x7c6
	.uleb128 0x8
	.string	"CANNM_NETWORK_RELEASED_E"
	.sleb128 0
	.uleb128 0x8
	.string	"CANNM_NETWORK_REQUESTED_E"
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.string	"CanNm_NetworkStateType"
	.byte	0x9
	.byte	0xcc
	.uaword	0x786
	.uleb128 0x4
	.byte	0x54
	.byte	0x9
	.byte	0xce
	.uaword	0xab1
	.uleb128 0x5
	.string	"Pdu_s"
	.byte	0x9
	.byte	0xd0
	.uaword	0x33d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"ctSwFrTimer"
	.byte	0x9
	.byte	0xd1
	.uaword	0x369
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"MsgCyclePeriod"
	.byte	0x9
	.byte	0xd2
	.uaword	0x369
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x5
	.string	"PrevMsgCycleTimestamp"
	.byte	0x9
	.byte	0xd3
	.uaword	0x369
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x5
	.string	"PrevMsgTimeoutTimestamp"
	.byte	0x9
	.byte	0xd4
	.uaword	0x369
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x5
	.string	"ctRepeatMessageTimer"
	.byte	0x9
	.byte	0xd5
	.uaword	0x369
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x5
	.string	"ctNMTimeoutTimer"
	.byte	0x9
	.byte	0xd6
	.uaword	0x369
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x5
	.string	"ctWaitBusSleepTimer"
	.byte	0x9
	.byte	0xd7
	.uaword	0x369
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x5
	.string	"ctRemoteSleepIndTimer"
	.byte	0x9
	.byte	0xd8
	.uaword	0x369
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x5
	.string	"RxBuffer_au8"
	.byte	0x9
	.byte	0xd9
	.uaword	0xab1
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x5
	.string	"TxBuffer_au8"
	.byte	0x9
	.byte	0xda
	.uaword	0xab1
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x5
	.string	"State_en"
	.byte	0x9
	.byte	0xdb
	.uaword	0x75b
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x5
	.string	"NetworkReqState_en"
	.byte	0x9
	.byte	0xdc
	.uaword	0x7c6
	.byte	0x2
	.byte	0x23
	.uleb128 0x3d
	.uleb128 0x5
	.string	"UserDataBuffer_au8"
	.byte	0x9
	.byte	0xdd
	.uaword	0xab1
	.byte	0x2
	.byte	0x23
	.uleb128 0x3e
	.uleb128 0x5
	.string	"Mode_en"
	.byte	0x9
	.byte	0xde
	.uaword	0x684
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0x5
	.string	"RxNodeId_u8"
	.byte	0x9
	.byte	0xdf
	.uaword	0x1be
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0x5
	.string	"RxCtrlBitVector_u8"
	.byte	0x9
	.byte	0xe0
	.uaword	0x1be
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x5
	.string	"TxCtrlBitVector_u8"
	.byte	0x9
	.byte	0xe1
	.uaword	0x1be
	.byte	0x2
	.byte	0x23
	.uleb128 0x49
	.uleb128 0x5
	.string	"ImmediateNmTx_u8"
	.byte	0x9
	.byte	0xe2
	.uaword	0x1be
	.byte	0x2
	.byte	0x23
	.uleb128 0x4a
	.uleb128 0x5
	.string	"MsgTxStatus_b"
	.byte	0x9
	.byte	0xea
	.uaword	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x4b
	.uleb128 0x5
	.string	"TxRptMsgStatus_b"
	.byte	0x9
	.byte	0xec
	.uaword	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x5
	.string	"RxIndication_b"
	.byte	0x9
	.byte	0xee
	.uaword	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x4d
	.uleb128 0x5
	.string	"TxConfirmation_b"
	.byte	0x9
	.byte	0xef
	.uaword	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x4e
	.uleb128 0x5
	.string	"RxStatus_b"
	.byte	0x9
	.byte	0xf0
	.uaword	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x4f
	.uleb128 0x5
	.string	"stCanNmComm"
	.byte	0x9
	.byte	0xf1
	.uaword	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x5
	.string	"stRemoteSleepInd"
	.byte	0x9
	.byte	0xf2
	.uaword	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x51
	.uleb128 0x5
	.string	"TxTimeoutMonitoringActive_b"
	.byte	0x9
	.byte	0xf3
	.uaword	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x52
	.byte	0
	.uleb128 0xa
	.uaword	0x1be
	.uaword	0xac1
	.uleb128 0xb
	.uaword	0x76f
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.string	"CanNm_RamType"
	.byte	0x9
	.byte	0xfb
	.uaword	0x7e4
	.uleb128 0xc
	.string	"SchM_Enter_CanNm_GetPduDataNoNest"
	.byte	0xa
	.byte	0x47
	.byte	0x1
	.byte	0x3
	.uleb128 0xd
	.string	"CanNm_CopyBuffer"
	.byte	0x2
	.uahalf	0x50b
	.byte	0x1
	.byte	0x3
	.uaword	0xb55
	.uleb128 0xe
	.string	"SrcPtr"
	.byte	0x2
	.uahalf	0x50c
	.uaword	0x780
	.uleb128 0xe
	.string	"DestPtr"
	.byte	0x2
	.uahalf	0x50d
	.uaword	0x337
	.uleb128 0xe
	.string	"Len"
	.byte	0x2
	.uahalf	0x50e
	.uaword	0x1be
	.uleb128 0xf
	.string	"Index_ui"
	.byte	0x2
	.uahalf	0x511
	.uaword	0x28b
	.byte	0
	.uleb128 0xc
	.string	"SchM_Exit_CanNm_GetPduDataNoNest"
	.byte	0xa
	.byte	0x4c
	.byte	0x1
	.byte	0x3
	.uleb128 0x10
	.byte	0x1
	.string	"CanNm_GetPduData"
	.byte	0x1
	.byte	0x20
	.byte	0x1
	.uaword	0x2b3
	.uaword	.LFB107
	.uaword	.LFE107
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xccf
	.uleb128 0x11
	.string	"nmChannelHandle"
	.byte	0x1
	.byte	0x21
	.uaword	0x350
	.uaword	.LLST0
	.uleb128 0x11
	.string	"nmPduDataPtr"
	.byte	0x1
	.byte	0x22
	.uaword	0x337
	.uaword	.LLST1
	.uleb128 0x12
	.string	"RamPtr_ps"
	.byte	0x1
	.byte	0x26
	.uaword	0xccf
	.uleb128 0x12
	.string	"ConfigPtr_pcs"
	.byte	0x1
	.byte	0x29
	.uaword	0xcd5
	.uleb128 0x13
	.string	"BufferPtr"
	.byte	0x1
	.byte	0x2c
	.uaword	0x337
	.byte	0x1
	.byte	0x6f
	.uleb128 0x14
	.string	"RetVal_en"
	.byte	0x1
	.byte	0x2f
	.uaword	0x2b3
	.uaword	.LLST2
	.uleb128 0x12
	.string	"CanNm_NetworkHandle"
	.byte	0x1
	.byte	0x32
	.uaword	0x350
	.uleb128 0x15
	.uaword	0xafd
	.uaword	.LBB8
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x64
	.uaword	0xc7b
	.uleb128 0x16
	.uaword	0xb37
	.uleb128 0x17
	.uaword	0xb27
	.uaword	.LLST3
	.uleb128 0x17
	.uaword	0xb18
	.uaword	.LLST4
	.uleb128 0x18
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x19
	.uaword	0xb43
	.uaword	.LLST5
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL2
	.uaword	0xd66
	.uaword	0xc98
	.uleb128 0x1b
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x32
	.uleb128 0x1b
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x3a
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x4f
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL20
	.uaword	0xd66
	.uaword	0xcb5
	.uleb128 0x1b
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x31
	.uleb128 0x1b
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x3a
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x4f
	.byte	0
	.uleb128 0x1c
	.uaword	.LVL29
	.uaword	0xd66
	.uleb128 0x1b
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x42
	.uleb128 0x1b
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x3a
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x4f
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0xac1
	.uleb128 0x6
	.byte	0x4
	.uaword	0xcdb
	.uleb128 0x9
	.uaword	0x604
	.uleb128 0xa
	.uaword	0x604
	.uaword	0xceb
	.uleb128 0x1d
	.byte	0
	.uleb128 0x1e
	.string	"CanNm_ChannelConfigData_cs"
	.byte	0x9
	.uahalf	0x10a
	.uaword	0xd10
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.uaword	0xce0
	.uleb128 0xa
	.uaword	0xac1
	.uaword	0xd20
	.uleb128 0x1d
	.byte	0
	.uleb128 0x1e
	.string	"CanNm_RamData_s"
	.byte	0x9
	.uahalf	0x124
	.uaword	0xd15
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.uaword	0x350
	.uaword	0xd45
	.uleb128 0x1d
	.byte	0
	.uleb128 0x1e
	.string	"CanNm_HandleTable"
	.byte	0x9
	.uahalf	0x12c
	.uaword	0xd61
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.uaword	0xd3a
	.uleb128 0x1f
	.byte	0x1
	.string	"Det_ReportError"
	.byte	0xb
	.byte	0x70
	.byte	0x1
	.uaword	0x2b3
	.byte	0x1
	.uleb128 0x20
	.uaword	0x1e9
	.uleb128 0x20
	.uaword	0x1be
	.uleb128 0x20
	.uaword	0x1be
	.uleb128 0x20
	.uaword	0x1be
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x21
	.byte	0
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL7
	.uaword	.LVL17
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL17
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL19
	.uaword	.LVL27
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL27
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL28
	.uaword	.LFE107
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL2-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL2-1
	.uaword	.LVL3
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL10
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL12
	.uaword	.LVL17
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL17
	.uaword	.LVL20-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL20-1
	.uaword	.LVL21
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL22
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL27
	.uaword	.LVL29-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL29-1
	.uaword	.LFE107
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL4
	.uaword	.LVL18
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL27
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL6
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x3
	.byte	0x84
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x3
	.byte	0x84
	.sleb128 2
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x82
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x63
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x8
	.byte	0x75
	.sleb128 0
	.byte	0x82
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	.LVL26
	.uaword	.LVL27
	.uahalf	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x82
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x3
	.byte	0x8f
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x3
	.byte	0x8f
	.sleb128 2
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL6
	.uaword	.LVL11
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL23
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL23
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x62
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
	.uaword	.LFB107
	.uaword	.LFE107-.LFB107
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB8
	.uaword	.LBE8
	.uaword	.LBB11
	.uaword	.LBE11
	.uaword	0
	.uaword	0
	.uaword	.LFB107
	.uaword	.LFE107
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.extern	CanNm_ChannelConfigData_cs,STT_OBJECT,-1
	.extern	CanNm_RamData_s,STT_OBJECT,-1
	.extern	CanNm_HandleTable,STT_OBJECT,-1
	.extern	Det_ReportError,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
