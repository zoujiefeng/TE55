	.file	"CanNm_GetUserData.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.CanNm_GetUserData,"ax",@progbits
	.align 1
	.global	CanNm_GetUserData
	.type	CanNm_GetUserData, @function
CanNm_GetUserData:
.LFB107:
	.file 1 "bsw\\CanNm\\src\\CanNm_GetUserData.c"
	.loc 1 36 0
.LVL0:
	.loc 1 36 0
	mov	%d5, %d4
	.loc 1 55 0
	jlt.u	%d4, 2, .L26
.L2:
.LVL1:
	.loc 1 63 0 discriminator 1
	mov	%d4, 31
.LVL2:
	mov	%d6, 5
	mov	%d7, 2
	call	Det_ReportError
.LVL3:
	mov	%d2, 1
	ret
.LVL4:
.L26:
	.loc 1 55 0 discriminator 1
	movh.a	%a15, hi:CanNm_HandleTable
	lea	%a15, [%a15] lo:CanNm_HandleTable
	addsc.a	%a15, %a15, %d4, 0
	.loc 1 63 0 discriminator 1
	ld.bu	%d15, [%a15]0
	jnz	%d15, .L2
	.loc 1 67 0
	movh.a	%a2, hi:CanNm_RamData_s
	lea	%a2, [%a2] lo:CanNm_RamData_s
	ld.bu	%d15, [%a2] 60
	jz	%d15, .L27
	.loc 1 71 0
	jz.a	%a4, .L28
.LVL5:
	.loc 1 83 0
	ld.bu	%d15, [%a2] 79
	.loc 1 58 0
	mov	%d2, 1
	.loc 1 83 0
	jz	%d15, .L4
	.loc 1 86 0
	movh.a	%a15, hi:CanNm_ChannelConfigData_cs
	lea	%a15, [%a15] lo:CanNm_ChannelConfigData_cs
	ld.bu	%d15, [%a15] 46
	ld.bu	%d4, [%a15] 39
.LVL6:
	sub	%d4, %d15
	mov.a	%a3, %d4
	lea	%a15, [%a3] 44
	add.a	%a15, %a2
.LVL7:
.LBB8:
.LBB9:
	.file 2 ".\\output\\inc/..\\..\\bsw\\CanNm\\api\\CanNm_Inl.h"
	.loc 2 1299 0
	jz	%d15, .L14
	mov.d	%d3, %a4
	mov.d	%d2, %a2
	mov.d	%d5, %a15
.LVL8:
	add	%d3, 4
	mov.d	%d6, %a4
	addi	%d4, %d4, 48
	add	%d4, %d2
	ge.u	%d2, %d5, %d3
	or.ge.u	%d2, %d6, %d4
	ge.u	%d3, %d15, 10
	and	%d3, %d2
	mov.d	%d2, %a15
	or	%d2, %d6
	and	%d2, %d2, 3
	eq	%d2, %d2, 0
	and	%d2, %d3
	jz	%d2, .L8
.LVL9:
	add	%d2, %d15, -4
	sh	%d2, -2
	addi	%d3, %d2, 1
	add	%d4, %d15, -1
	sh	%d3, 2
	jlt.u	%d4, 3, .L18
	ne	%d4, %d2, -1
	mov.aa	%a3, %a15
	mov.aa	%a2, %a4
	sel	%d2, %d4, %d2, 0
.LVL10:
.L10:
	.loc 2 1301 0
	ld.w	%d4, [%a3+]4
	st.w	[%a2+]4, %d4
	jned	%d2, 0, .L10
	addsc.a	%a15, %a15, %d3, 0
	addsc.a	%a4, %a4, %d3, 0
	jeq	%d15, %d3, .L14
.L9:
.LVL11:
	ld.bu	%d2, [%a15]0
	st.b	[%a4]0, %d2
.LVL12:
	.loc 2 1299 0
	addi	%d2, %d3, 1
	jge.u	%d2, %d15, .L14
	.loc 2 1301 0
	ld.bu	%d2, [%a15] 1
	.loc 2 1299 0
	add	%d3, 2
	.loc 2 1301 0
	st.b	[%a4] 1, %d2
.LVL13:
	.loc 2 1299 0
	jge.u	%d3, %d15, .L14
	.loc 2 1301 0
	ld.bu	%d15, [%a15] 2
	st.b	[%a4] 2, %d15
.LVL14:
.L14:
.LBE9:
.LBE8:
	.loc 1 99 0
	mov	%d2, 0
	ret
.LVL15:
.L4:
	.loc 1 105 0
	ret
.LVL16:
.L18:
.LBB12:
.LBB10:
	.loc 2 1299 0
	mov	%d3, 0
	j	.L9
.LVL17:
.L27:
.LBE10:
.LBE12:
	.loc 1 67 0 discriminator 1
	mov	%d4, 31
.LVL18:
	mov	%d6, 5
	mov	%d7, 1
	call	Det_ReportError
.LVL19:
	mov	%d2, 1
	ret
.LVL20:
.L8:
	mov.d	%d2, %a15
	addsc.a	%a2, %a15, %d15, 0
	not	%d2
	addsc.a	%a2, %a2, %d2, 0
.LVL21:
.L15:
.LBB13:
.LBB11:
	.loc 2 1301 0
	ld.bu	%d15, [%a15+]1
.LVL22:
	st.b	[%a4+]1, %d15
.LVL23:
	.loc 2 1303 0
	loop	%a2, .L15
	j	.L14
.LVL24:
.L28:
.LBE11:
.LBE13:
	.loc 1 71 0 discriminator 1
	mov	%d4, 31
.LVL25:
	mov	%d6, 5
	mov	%d7, 18
	call	Det_ReportError
.LVL26:
	mov	%d2, 1
	ret
.LFE107:
	.size	CanNm_GetUserData, .-CanNm_GetUserData
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
	.uaword	0xd96
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\CanNm\\src\\CanNm_GetUserData.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x20
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
	.byte	0x80
	.uaword	0x1cc
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x3
	.string	"uint8_least"
	.byte	0x3
	.byte	0x8a
	.uaword	0x29f
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x3
	.string	"Std_ReturnType"
	.byte	0x4
	.byte	0x60
	.uaword	0x1bf
	.uleb128 0x3
	.string	"PduIdType"
	.byte	0x5
	.byte	0x2c
	.uaword	0x1ea
	.uleb128 0x3
	.string	"PduLengthType"
	.byte	0x5
	.byte	0x30
	.uaword	0x1ea
	.uleb128 0x4
	.byte	0xc
	.byte	0x5
	.byte	0x39
	.uaword	0x338
	.uleb128 0x5
	.string	"SduDataPtr"
	.byte	0x5
	.byte	0x3b
	.uaword	0x338
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"MetaDataPtr"
	.byte	0x5
	.byte	0x3c
	.uaword	0x338
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"SduLength"
	.byte	0x5
	.byte	0x3d
	.uaword	0x2db
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x1bf
	.uleb128 0x3
	.string	"PduInfoType"
	.byte	0x5
	.byte	0x3e
	.uaword	0x2f0
	.uleb128 0x3
	.string	"NetworkHandleType"
	.byte	0x6
	.byte	0x4f
	.uaword	0x1bf
	.uleb128 0x3
	.string	"CanNm_TimerType"
	.byte	0x7
	.byte	0x42
	.uaword	0x226
	.uleb128 0x4
	.byte	0x34
	.byte	0x7
	.byte	0x4a
	.uaword	0x605
	.uleb128 0x5
	.string	"MsgCycleTime"
	.byte	0x7
	.byte	0x4b
	.uaword	0x36a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"MsgCycleOffset"
	.byte	0x7
	.byte	0x4c
	.uaword	0x36a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"MsgTimeoutTime"
	.byte	0x7
	.byte	0x4d
	.uaword	0x36a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"MsgReducedTime"
	.byte	0x7
	.byte	0x4e
	.uaword	0x36a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"ImmediateNmCycleTime"
	.byte	0x7
	.byte	0x4f
	.uaword	0x36a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x5
	.string	"NMTimeoutTime"
	.byte	0x7
	.byte	0x50
	.uaword	0x36a
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x5
	.string	"RepeatMessageTime"
	.byte	0x7
	.byte	0x51
	.uaword	0x36a
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x5
	.string	"RemoteSleepIndTime"
	.byte	0x7
	.byte	0x52
	.uaword	0x36a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x5
	.string	"WaitBusSleepTime"
	.byte	0x7
	.byte	0x53
	.uaword	0x36a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x5
	.string	"TxPduId"
	.byte	0x7
	.byte	0x54
	.uaword	0x2ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x5
	.string	"NetworkHandle"
	.byte	0x7
	.byte	0x58
	.uaword	0x351
	.byte	0x2
	.byte	0x23
	.uleb128 0x26
	.uleb128 0x5
	.string	"PduLength_u8"
	.byte	0x7
	.byte	0x59
	.uaword	0x1bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x27
	.uleb128 0x5
	.string	"NodeIdPos_u8"
	.byte	0x7
	.byte	0x5a
	.uaword	0x1bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x5
	.string	"ControlBitVectorPos_u8"
	.byte	0x7
	.byte	0x5b
	.uaword	0x1bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x29
	.uleb128 0x5
	.string	"NodeDetectionEnabled_b"
	.byte	0x7
	.byte	0x5c
	.uaword	0x271
	.byte	0x2
	.byte	0x23
	.uleb128 0x2a
	.uleb128 0x5
	.string	"NodeIdEnabled_b"
	.byte	0x7
	.byte	0x5d
	.uaword	0x271
	.byte	0x2
	.byte	0x23
	.uleb128 0x2b
	.uleb128 0x5
	.string	"RepeatMsgIndEnabled_b"
	.byte	0x7
	.byte	0x5e
	.uaword	0x271
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x5
	.string	"NodeId_u8"
	.byte	0x7
	.byte	0x5f
	.uaword	0x1bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x2d
	.uleb128 0x5
	.string	"UserDataLength_u8"
	.byte	0x7
	.byte	0x60
	.uaword	0x1bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x2e
	.uleb128 0x5
	.string	"ImmediateNmTransmissions_u8"
	.byte	0x7
	.byte	0x61
	.uaword	0x1bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x2f
	.uleb128 0x5
	.string	"stChannelActive_b"
	.byte	0x7
	.byte	0x68
	.uaword	0x271
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x5
	.string	"stBusLoadReductionActive_b"
	.byte	0x7
	.byte	0x69
	.uaword	0x271
	.byte	0x2
	.byte	0x23
	.uleb128 0x31
	.uleb128 0x5
	.string	"ActiveWakeupBitEnabled_b"
	.byte	0x7
	.byte	0x7c
	.uaword	0x271
	.byte	0x2
	.byte	0x23
	.uleb128 0x32
	.byte	0
	.uleb128 0x3
	.string	"CanNm_ChannelConfigType"
	.byte	0x7
	.byte	0x7d
	.uaword	0x381
	.uleb128 0x7
	.byte	0x1
	.byte	0x8
	.byte	0x2c
	.uaword	0x685
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
	.uaword	0x624
	.uleb128 0x7
	.byte	0x1
	.byte	0x8
	.byte	0x44
	.uaword	0x75c
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
	.uaword	0x698
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x9
	.uaword	0x1bf
	.uleb128 0x6
	.byte	0x4
	.uaword	0x77c
	.uleb128 0x7
	.byte	0x1
	.byte	0x9
	.byte	0xc8
	.uaword	0x7c7
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
	.uaword	0x787
	.uleb128 0x4
	.byte	0x54
	.byte	0x9
	.byte	0xce
	.uaword	0xab2
	.uleb128 0x5
	.string	"Pdu_s"
	.byte	0x9
	.byte	0xd0
	.uaword	0x33e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"ctSwFrTimer"
	.byte	0x9
	.byte	0xd1
	.uaword	0x36a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"MsgCyclePeriod"
	.byte	0x9
	.byte	0xd2
	.uaword	0x36a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x5
	.string	"PrevMsgCycleTimestamp"
	.byte	0x9
	.byte	0xd3
	.uaword	0x36a
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x5
	.string	"PrevMsgTimeoutTimestamp"
	.byte	0x9
	.byte	0xd4
	.uaword	0x36a
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x5
	.string	"ctRepeatMessageTimer"
	.byte	0x9
	.byte	0xd5
	.uaword	0x36a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x5
	.string	"ctNMTimeoutTimer"
	.byte	0x9
	.byte	0xd6
	.uaword	0x36a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x5
	.string	"ctWaitBusSleepTimer"
	.byte	0x9
	.byte	0xd7
	.uaword	0x36a
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x5
	.string	"ctRemoteSleepIndTimer"
	.byte	0x9
	.byte	0xd8
	.uaword	0x36a
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x5
	.string	"RxBuffer_au8"
	.byte	0x9
	.byte	0xd9
	.uaword	0xab2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x5
	.string	"TxBuffer_au8"
	.byte	0x9
	.byte	0xda
	.uaword	0xab2
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x5
	.string	"State_en"
	.byte	0x9
	.byte	0xdb
	.uaword	0x75c
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x5
	.string	"NetworkReqState_en"
	.byte	0x9
	.byte	0xdc
	.uaword	0x7c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x3d
	.uleb128 0x5
	.string	"UserDataBuffer_au8"
	.byte	0x9
	.byte	0xdd
	.uaword	0xab2
	.byte	0x2
	.byte	0x23
	.uleb128 0x3e
	.uleb128 0x5
	.string	"Mode_en"
	.byte	0x9
	.byte	0xde
	.uaword	0x685
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0x5
	.string	"RxNodeId_u8"
	.byte	0x9
	.byte	0xdf
	.uaword	0x1bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0x5
	.string	"RxCtrlBitVector_u8"
	.byte	0x9
	.byte	0xe0
	.uaword	0x1bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x5
	.string	"TxCtrlBitVector_u8"
	.byte	0x9
	.byte	0xe1
	.uaword	0x1bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x49
	.uleb128 0x5
	.string	"ImmediateNmTx_u8"
	.byte	0x9
	.byte	0xe2
	.uaword	0x1bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x4a
	.uleb128 0x5
	.string	"MsgTxStatus_b"
	.byte	0x9
	.byte	0xea
	.uaword	0x271
	.byte	0x2
	.byte	0x23
	.uleb128 0x4b
	.uleb128 0x5
	.string	"TxRptMsgStatus_b"
	.byte	0x9
	.byte	0xec
	.uaword	0x271
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x5
	.string	"RxIndication_b"
	.byte	0x9
	.byte	0xee
	.uaword	0x271
	.byte	0x2
	.byte	0x23
	.uleb128 0x4d
	.uleb128 0x5
	.string	"TxConfirmation_b"
	.byte	0x9
	.byte	0xef
	.uaword	0x271
	.byte	0x2
	.byte	0x23
	.uleb128 0x4e
	.uleb128 0x5
	.string	"RxStatus_b"
	.byte	0x9
	.byte	0xf0
	.uaword	0x271
	.byte	0x2
	.byte	0x23
	.uleb128 0x4f
	.uleb128 0x5
	.string	"stCanNmComm"
	.byte	0x9
	.byte	0xf1
	.uaword	0x271
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x5
	.string	"stRemoteSleepInd"
	.byte	0x9
	.byte	0xf2
	.uaword	0x271
	.byte	0x2
	.byte	0x23
	.uleb128 0x51
	.uleb128 0x5
	.string	"TxTimeoutMonitoringActive_b"
	.byte	0x9
	.byte	0xf3
	.uaword	0x271
	.byte	0x2
	.byte	0x23
	.uleb128 0x52
	.byte	0
	.uleb128 0xa
	.uaword	0x1bf
	.uaword	0xac2
	.uleb128 0xb
	.uaword	0x770
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.string	"CanNm_RamType"
	.byte	0x9
	.byte	0xfb
	.uaword	0x7e5
	.uleb128 0xc
	.string	"SchM_Enter_CanNm_GetUserDataNoNest"
	.byte	0xa
	.byte	0x67
	.byte	0x1
	.byte	0x3
	.uleb128 0xd
	.string	"CanNm_CopyBuffer"
	.byte	0x2
	.uahalf	0x50b
	.byte	0x1
	.byte	0x3
	.uaword	0xb57
	.uleb128 0xe
	.string	"SrcPtr"
	.byte	0x2
	.uahalf	0x50c
	.uaword	0x781
	.uleb128 0xe
	.string	"DestPtr"
	.byte	0x2
	.uahalf	0x50d
	.uaword	0x338
	.uleb128 0xe
	.string	"Len"
	.byte	0x2
	.uahalf	0x50e
	.uaword	0x1bf
	.uleb128 0xf
	.string	"Index_ui"
	.byte	0x2
	.uahalf	0x511
	.uaword	0x28c
	.byte	0
	.uleb128 0xc
	.string	"SchM_Exit_CanNm_GetUserDataNoNest"
	.byte	0xa
	.byte	0x6c
	.byte	0x1
	.byte	0x3
	.uleb128 0x10
	.byte	0x1
	.string	"CanNm_GetUserData"
	.byte	0x1
	.byte	0x20
	.byte	0x1
	.uaword	0x2b4
	.uaword	.LFB107
	.uaword	.LFE107
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xcd3
	.uleb128 0x11
	.string	"nmChannelHandle"
	.byte	0x1
	.byte	0x21
	.uaword	0x351
	.uaword	.LLST0
	.uleb128 0x11
	.string	"nmUserDataPtr"
	.byte	0x1
	.byte	0x22
	.uaword	0x338
	.uaword	.LLST1
	.uleb128 0x12
	.string	"RamPtr_ps"
	.byte	0x1
	.byte	0x26
	.uaword	0xcd3
	.uleb128 0x12
	.string	"ConfigPtr_pcs"
	.byte	0x1
	.byte	0x29
	.uaword	0xcd9
	.uleb128 0x13
	.string	"BufferPtr"
	.byte	0x1
	.byte	0x2c
	.uaword	0x338
	.uaword	.LLST2
	.uleb128 0x14
	.string	"RetVal_en"
	.byte	0x1
	.byte	0x2f
	.uaword	0x2b4
	.byte	0x1
	.uleb128 0x12
	.string	"CanNm_NetworkHandle"
	.byte	0x1
	.byte	0x32
	.uaword	0x351
	.uleb128 0x15
	.uaword	0xaff
	.uaword	.LBB8
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x5d
	.uaword	0xc7f
	.uleb128 0x16
	.uaword	0xb39
	.uleb128 0x17
	.uaword	0xb29
	.uaword	.LLST3
	.uleb128 0x17
	.uaword	0xb1a
	.uaword	.LLST4
	.uleb128 0x18
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x19
	.uaword	0xb45
	.uaword	.LLST5
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL3
	.uaword	0xd6a
	.uaword	0xc9c
	.uleb128 0x1b
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x32
	.uleb128 0x1b
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x35
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x4f
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL19
	.uaword	0xd6a
	.uaword	0xcb9
	.uleb128 0x1b
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x31
	.uleb128 0x1b
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x35
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x4f
	.byte	0
	.uleb128 0x1c
	.uaword	.LVL26
	.uaword	0xd6a
	.uleb128 0x1b
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x42
	.uleb128 0x1b
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x35
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x4f
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0xac2
	.uleb128 0x6
	.byte	0x4
	.uaword	0xcdf
	.uleb128 0x9
	.uaword	0x605
	.uleb128 0xa
	.uaword	0x605
	.uaword	0xcef
	.uleb128 0x1d
	.byte	0
	.uleb128 0x1e
	.string	"CanNm_ChannelConfigData_cs"
	.byte	0x9
	.uahalf	0x10a
	.uaword	0xd14
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.uaword	0xce4
	.uleb128 0xa
	.uaword	0xac2
	.uaword	0xd24
	.uleb128 0x1d
	.byte	0
	.uleb128 0x1e
	.string	"CanNm_RamData_s"
	.byte	0x9
	.uahalf	0x124
	.uaword	0xd19
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.uaword	0x351
	.uaword	0xd49
	.uleb128 0x1d
	.byte	0
	.uleb128 0x1e
	.string	"CanNm_HandleTable"
	.byte	0x9
	.uahalf	0x12c
	.uaword	0xd65
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.uaword	0xd3e
	.uleb128 0x1f
	.byte	0x1
	.string	"Det_ReportError"
	.byte	0xb
	.byte	0x70
	.byte	0x1
	.uaword	0x2b4
	.byte	0x1
	.uleb128 0x20
	.uaword	0x1ea
	.uleb128 0x20
	.uaword	0x1bf
	.uleb128 0x20
	.uaword	0x1bf
	.uleb128 0x20
	.uaword	0x1bf
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
	.uleb128 0x6
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
	.uleb128 0x1c
	.uleb128 0xb
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
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL2
	.uaword	.LVL4
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL6
	.uaword	.LVL15
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL18
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
	.uaword	.LVL3-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL3-1
	.uaword	.LVL4
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL9
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL17
	.uaword	.LVL19-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL19-1
	.uaword	.LVL20
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL24
	.uaword	.LVL26-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL26-1
	.uaword	.LFE107
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL7
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL10
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL20
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL7
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x3
	.byte	0x84
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x3
	.byte	0x84
	.sleb128 2
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL21
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL7
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x3
	.byte	0x8f
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x3
	.byte	0x8f
	.sleb128 2
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x3
	.byte	0x8f
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL7
	.uaword	.LVL10
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LVL24
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
	.uaword	.LFB107
	.uaword	.LFE107-.LFB107
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB8
	.uaword	.LBE8
	.uaword	.LBB12
	.uaword	.LBE12
	.uaword	.LBB13
	.uaword	.LBE13
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
