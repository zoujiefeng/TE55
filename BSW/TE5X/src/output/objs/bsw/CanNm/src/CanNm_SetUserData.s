	.file	"CanNm_SetUserData.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.CanNm_SetUserData,"ax",@progbits
	.align 1
	.global	CanNm_SetUserData
	.type	CanNm_SetUserData, @function
CanNm_SetUserData:
.LFB107:
	.file 1 "bsw\\CanNm\\src\\CanNm_SetUserData.c"
	.loc 1 38 0
.LVL0:
	.loc 1 38 0
	mov	%d5, %d4
	.loc 1 54 0
	jlt.u	%d4, 2, .L27
.L2:
.LVL1:
	.loc 1 62 0 discriminator 1
	mov	%d4, 31
.LVL2:
	mov	%d6, 4
	mov	%d7, 2
	call	Det_ReportError
.LVL3:
	mov	%d2, 1
	ret
.LVL4:
.L27:
	.loc 1 54 0 discriminator 1
	movh.a	%a15, hi:CanNm_HandleTable
	lea	%a15, [%a15] lo:CanNm_HandleTable
	addsc.a	%a15, %a15, %d4, 0
	ld.bu	%d15, [%a15]0
	eq	%d2, %d15, 255
	jnz	%d2, .L2
.LVL5:
	.loc 1 62 0 discriminator 6
	jnz	%d15, .L2
	.loc 1 66 0
	movh.a	%a15, hi:CanNm_RamData_s
.LVL6:
	lea	%a15, [%a15] lo:CanNm_RamData_s
	ld.bu	%d15, [%a15] 60
.LVL7:
	jz	%d15, .L28
	.loc 1 70 0
	jz.a	%a4, .L29
	.loc 1 76 0
	movh.a	%a2, hi:CanNm_ChannelConfigData_cs
	lea	%a2, [%a2] lo:CanNm_ChannelConfigData_cs
	ld.bu	%d15, [%a2] 46
.LVL8:
	.loc 1 79 0
	lea	%a15, [%a15] 62
.LVL9:
.LBB8:
.LBB9:
	.file 2 ".\\output\\inc/..\\..\\bsw\\CanNm\\api\\CanNm_Inl.h"
	.loc 2 1299 0
	jz	%d15, .L14
	movh.a	%a2, hi:CanNm_RamData_s+66
.LVL10:
	mov.d	%d3, %a4
	mov.d	%d4, %a15
.LVL11:
	lea	%a2, [%a2] lo:CanNm_RamData_s+66
	add	%d3, 4
	ge.a	%d2, %a4, %a2
	or.ge.u	%d2, %d4, %d3
	ge.u	%d3, %d15, 10
	and	%d3, %d2
	mov.d	%d4, %a4
	mov.d	%d2, %a15
	or	%d2, %d4
	and	%d2, %d2, 3
	eq	%d2, %d2, 0
	and	%d2, %d3
	jz	%d2, .L8
.LVL12:
	add	%d2, %d15, -4
	sh	%d2, -2
	addi	%d3, %d2, 1
	add	%d4, %d15, -1
.LVL13:
	sh	%d3, 2
	jlt.u	%d4, 3, .L17
	ne	%d4, %d2, -1
	mov.aa	%a3, %a4
	mov.aa	%a2, %a15
	sel	%d2, %d4, %d2, 0
.LVL14:
.L10:
	.loc 2 1301 0
	ld.w	%d4, [%a3+]4
	st.w	[%a2+]4, %d4
	jned	%d2, 0, .L10
	addsc.a	%a4, %a4, %d3, 0
.LVL15:
	addsc.a	%a15, %a15, %d3, 0
.LVL16:
	jeq	%d15, %d3, .L14
.L9:
.LVL17:
	ld.bu	%d2, [%a4]0
	st.b	[%a15]0, %d2
.LVL18:
	.loc 2 1299 0
	addi	%d2, %d3, 1
	jge.u	%d2, %d15, .L14
	.loc 2 1301 0
	ld.bu	%d2, [%a4] 1
	.loc 2 1299 0
	add	%d3, 2
	.loc 2 1301 0
	st.b	[%a15] 1, %d2
.LVL19:
	.loc 2 1299 0
	jge.u	%d3, %d15, .L14
	.loc 2 1301 0
	ld.bu	%d15, [%a4] 2
	st.b	[%a15] 2, %d15
.LVL20:
.L14:
.LBE9:
.LBE8:
	.loc 1 92 0
	mov	%d2, 0
	ret
.LVL21:
.L28:
	.loc 1 66 0 discriminator 1
	mov	%d4, 31
.LVL22:
	mov	%d6, 4
	mov	%d7, 1
	call	Det_ReportError
.LVL23:
	mov	%d2, 1
	ret
.LVL24:
.L17:
.LBB11:
.LBB10:
	.loc 2 1299 0
	mov	%d3, 0
	j	.L9
.LVL25:
.L8:
	mov.d	%d2, %a4
	addsc.a	%a2, %a4, %d15, 0
	not	%d2
	addsc.a	%a2, %a2, %d2, 0
.LVL26:
.L15:
	.loc 2 1301 0
	ld.bu	%d15, [%a4+]1
.LVL27:
	st.b	[%a15+]1, %d15
.LVL28:
	.loc 2 1303 0
	loop	%a2, .L15
.LBE10:
.LBE11:
	.loc 1 92 0
	mov	%d2, 0
	ret
.LVL29:
.L29:
	.loc 1 70 0 discriminator 1
	mov	%d4, 31
.LVL30:
	mov	%d6, 4
	mov	%d7, 18
	call	Det_ReportError
.LVL31:
	mov	%d2, 1
	ret
.LFE107:
	.size	CanNm_SetUserData, .-CanNm_SetUserData
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
	.uaword	0xd88
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\CanNm\\src\\CanNm_SetUserData.c"
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
	.string	"SchM_Enter_CanNm_SetUserDataNoNest"
	.byte	0xa
	.byte	0x77
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
	.string	"SchM_Exit_CanNm_SetUserDataNoNest"
	.byte	0xa
	.byte	0x7c
	.byte	0x1
	.byte	0x3
	.uleb128 0x10
	.byte	0x1
	.string	"CanNm_SetUserData"
	.byte	0x1
	.byte	0x22
	.byte	0x1
	.uaword	0x2b4
	.uaword	.LFB107
	.uaword	.LFE107
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xccb
	.uleb128 0x11
	.string	"nmChannelHandle"
	.byte	0x1
	.byte	0x23
	.uaword	0x351
	.uaword	.LLST0
	.uleb128 0x11
	.string	"nmUserDataPtr"
	.byte	0x1
	.byte	0x24
	.uaword	0x781
	.uaword	.LLST1
	.uleb128 0x12
	.string	"UserDataLen"
	.byte	0x1
	.byte	0x28
	.uaword	0x1bf
	.uaword	.LLST2
	.uleb128 0x12
	.string	"BufferPtr"
	.byte	0x1
	.byte	0x2b
	.uaword	0x338
	.uaword	.LLST3
	.uleb128 0x12
	.string	"CanNm_NetworkHandle"
	.byte	0x1
	.byte	0x2e
	.uaword	0x351
	.uaword	.LLST4
	.uleb128 0x13
	.string	"ConfigPtr_pcs"
	.byte	0x1
	.byte	0x31
	.uaword	0xccb
	.uleb128 0x14
	.uaword	0xaff
	.uaword	.LBB8
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x56
	.uaword	0xc77
	.uleb128 0x15
	.uaword	0xb39
	.uleb128 0x16
	.uaword	0xb29
	.uaword	.LLST5
	.uleb128 0x16
	.uaword	0xb1a
	.uaword	.LLST6
	.uleb128 0x17
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x18
	.uaword	0xb45
	.uaword	.LLST7
	.byte	0
	.byte	0
	.uleb128 0x19
	.uaword	.LVL3
	.uaword	0xd5c
	.uaword	0xc94
	.uleb128 0x1a
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x32
	.uleb128 0x1a
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x34
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x4f
	.byte	0
	.uleb128 0x19
	.uaword	.LVL23
	.uaword	0xd5c
	.uaword	0xcb1
	.uleb128 0x1a
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x31
	.uleb128 0x1a
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x34
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x4f
	.byte	0
	.uleb128 0x1b
	.uaword	.LVL31
	.uaword	0xd5c
	.uleb128 0x1a
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x42
	.uleb128 0x1a
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x34
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x4f
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0xcd1
	.uleb128 0x9
	.uaword	0x605
	.uleb128 0xa
	.uaword	0x605
	.uaword	0xce1
	.uleb128 0x1c
	.byte	0
	.uleb128 0x1d
	.string	"CanNm_ChannelConfigData_cs"
	.byte	0x9
	.uahalf	0x10a
	.uaword	0xd06
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.uaword	0xcd6
	.uleb128 0xa
	.uaword	0xac2
	.uaword	0xd16
	.uleb128 0x1c
	.byte	0
	.uleb128 0x1d
	.string	"CanNm_RamData_s"
	.byte	0x9
	.uahalf	0x124
	.uaword	0xd0b
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.uaword	0x351
	.uaword	0xd3b
	.uleb128 0x1c
	.byte	0
	.uleb128 0x1d
	.string	"CanNm_HandleTable"
	.byte	0x9
	.uahalf	0x12c
	.uaword	0xd57
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.uaword	0xd30
	.uleb128 0x1e
	.byte	0x1
	.string	"Det_ReportError"
	.byte	0xb
	.byte	0x70
	.byte	0x1
	.uaword	0x2b4
	.byte	0x1
	.uleb128 0x1f
	.uaword	0x1ea
	.uleb128 0x1f
	.uaword	0x1bf
	.uleb128 0x1f
	.uaword	0x1bf
	.uleb128 0x1f
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
	.uleb128 0x2
	.uleb128 0x6
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
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL11
	.uaword	.LVL21
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL22
	.uaword	.LVL29
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL29
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL30
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
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL13
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL15
	.uaword	.LVL21
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL23-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL23-1
	.uaword	.LVL24
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL25
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL29
	.uaword	.LVL31-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL31-1
	.uaword	.LFE107
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL8
	.uaword	.LVL10
	.uahalf	0x2
	.byte	0x82
	.sleb128 46
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL9
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL24
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL9
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x3
	.byte	0x8f
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x3
	.byte	0x8f
	.sleb128 2
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL9
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x3
	.byte	0x84
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x3
	.byte	0x84
	.sleb128 2
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL26
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL27
	.uaword	.LVL28
	.uahalf	0x3
	.byte	0x84
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL28
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL9
	.uaword	.LVL14
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LVL29
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
