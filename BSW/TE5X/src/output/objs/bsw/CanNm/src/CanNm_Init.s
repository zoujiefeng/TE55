	.file	"CanNm_Init.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.CanNm_Init,"ax",@progbits
	.align 1
	.global	CanNm_Init
	.type	CanNm_Init, @function
CanNm_Init:
.LFB107:
	.file 1 "bsw\\CanNm\\src\\CanNm_Init.c"
	.loc 1 44 0
.LVL0:
	.loc 1 122 0
	movh.a	%a2, hi:CanNm_ChannelConfigData_cs
	lea	%a2, [%a2] lo:CanNm_ChannelConfigData_cs
	ld.bu	%d15, [%a2] 48
	jz	%d15, .L1
.LVL1:
	.loc 1 128 0
	movh.a	%a4, hi:CanNm_RamData_s
.LVL2:
	lea	%a15, [%a4] lo:CanNm_RamData_s
	mov	%d15, 0
	.loc 1 129 0
	mov	%d2, 1
	.loc 1 128 0
	st.b	[%a15] 70, %d15
	.loc 1 132 0
	st.b	[%a15] 61, %d15
	.loc 1 133 0
	st.b	[%a15] 72, %d15
	.loc 1 134 0
	st.b	[%a15] 73, %d15
	.loc 1 135 0
	st.b	[%a15] 74, %d15
	.loc 1 152 0
	st.b	[%a15] 76, %d15
	.loc 1 155 0
	st.b	[%a15] 77, %d15
	.loc 1 156 0
	st.b	[%a15] 78, %d15
	.loc 1 159 0
	st.b	[%a15] 81, %d15
	.loc 1 162 0
	st.b	[%a15] 82, %d15
	.loc 1 165 0
	mov	%d15, 0
	.loc 1 129 0
	st.b	[%a15] 60, %d2
	.loc 1 158 0
	st.b	[%a15] 80, %d2
	.loc 1 165 0
	st.w	[%a15] 12, %d15
	.loc 1 168 0
	lea	%a3, [%a15] 52
	.loc 1 169 0
	ld.bu	%d2, [%a2] 39
	.loc 1 172 0
	ld.bu	%d15, [%a2] 40
	.loc 1 168 0
	st.a	[%a4] lo:CanNm_RamData_s, %a3
	.loc 1 169 0
	st.h	[%a15] 8, %d2
	.loc 1 172 0
	eq	%d3, %d15, 255
	jnz	%d3, .L3
	.loc 1 174 0
	addsc.a	%a3, %a15, %d15, 0
	ld.bu	%d15, [%a2] 45
	st.b	[%a3] 52, %d15
.L3:
	.loc 1 178 0
	ld.bu	%d15, [%a2] 41
	eq	%d3, %d15, 255
	jnz	%d3, .L4
	.loc 1 180 0
	addsc.a	%a3, %a15, %d15, 0
	mov	%d15, 0
	st.b	[%a3] 52, %d15
.L4:
	.loc 1 184 0
	ld.bu	%d3, [%a2] 46
	jz	%d3, .L6
	.loc 1 187 0
	sub	%d2, %d3
	mov.a	%a2, %d2
	.loc 1 191 0
	mov	%d15, -1
	.loc 1 187 0
	lea	%a4, [%a2] 52
	.loc 1 191 0
	mov.a	%a2, %d3
	.loc 1 187 0
	add.a	%a4, %a15
.LVL3:
	.loc 1 189 0
	mov	%d2, 0
	.loc 1 191 0
	add.a	%a2, -1
.LVL4:
.L5:
	.loc 1 191 0 is_stmt 0 discriminator 3
	addsc.a	%a3, %a4, %d2, 0
.LVL5:
	st.b	[%a3]0, %d15
.LVL6:
	.loc 1 193 0 is_stmt 1 discriminator 3
	addsc.a	%a3, %a15, %d2, 0
	.loc 1 189 0 discriminator 3
	add	%d2, 1
.LVL7:
	.loc 1 193 0 discriminator 3
	st.b	[%a3] 62, %d15
	.loc 1 189 0 discriminator 3
	loop	%a2, .L5
.LVL8:
.L6:
	.loc 1 198 0
	mov	%d15, 0
	st.b	[%a15] 75, %d15
	ret
.LVL9:
.L1:
	ret
.LFE107:
	.size	CanNm_Init, .-CanNm_Init
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
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 4 ".\\output\\inc/..\\..\\bsw\\ComStack\\ComStack_Cfg.h"
	.file 5 ".\\output\\inc/..\\..\\bsw\\ComStack\\api\\ComStack_Types.h"
	.file 6 ".\\output\\inc/..\\..\\bsw\\CanNm_PreCompile_and_PB_Variant\\CanNm_Cfg.h"
	.file 7 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\NmStack_Types.h"
	.file 8 ".\\output\\inc/..\\..\\bsw\\CanNm\\src\\CanNm_Prv.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xcbd
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\CanNm\\src\\CanNm_Init.c"
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
	.uaword	0x1c5
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
	.uaword	0x1f1
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
	.uaword	0x22d
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
	.uaword	0x1c5
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x3
	.string	"uint8_least"
	.byte	0x2
	.byte	0x8a
	.uaword	0x298
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x4
	.byte	0x8
	.byte	0x3
	.byte	0x64
	.uaword	0x32d
	.uleb128 0x5
	.string	"vendorID"
	.byte	0x3
	.byte	0x66
	.uaword	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"moduleID"
	.byte	0x3
	.byte	0x67
	.uaword	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x5
	.string	"sw_major_version"
	.byte	0x3
	.byte	0x68
	.uaword	0x1b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"sw_minor_version"
	.byte	0x3
	.byte	0x69
	.uaword	0x1b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x5
	.string	"sw_patch_version"
	.byte	0x3
	.byte	0x6a
	.uaword	0x1b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0
	.uleb128 0x3
	.string	"Std_VersionInfoType"
	.byte	0x3
	.byte	0x6b
	.uaword	0x2ad
	.uleb128 0x3
	.string	"PduIdType"
	.byte	0x4
	.byte	0x2c
	.uaword	0x1e3
	.uleb128 0x3
	.string	"PduLengthType"
	.byte	0x4
	.byte	0x30
	.uaword	0x1e3
	.uleb128 0x4
	.byte	0xc
	.byte	0x4
	.byte	0x39
	.uaword	0x3b6
	.uleb128 0x5
	.string	"SduDataPtr"
	.byte	0x4
	.byte	0x3b
	.uaword	0x3b6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"MetaDataPtr"
	.byte	0x4
	.byte	0x3c
	.uaword	0x3b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"SduLength"
	.byte	0x4
	.byte	0x3d
	.uaword	0x359
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x1b8
	.uleb128 0x3
	.string	"PduInfoType"
	.byte	0x4
	.byte	0x3e
	.uaword	0x36e
	.uleb128 0x3
	.string	"NetworkHandleType"
	.byte	0x5
	.byte	0x4f
	.uaword	0x1b8
	.uleb128 0x3
	.string	"CanNm_TimerType"
	.byte	0x6
	.byte	0x42
	.uaword	0x21f
	.uleb128 0x4
	.byte	0x34
	.byte	0x6
	.byte	0x4a
	.uaword	0x683
	.uleb128 0x5
	.string	"MsgCycleTime"
	.byte	0x6
	.byte	0x4b
	.uaword	0x3e8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"MsgCycleOffset"
	.byte	0x6
	.byte	0x4c
	.uaword	0x3e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"MsgTimeoutTime"
	.byte	0x6
	.byte	0x4d
	.uaword	0x3e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"MsgReducedTime"
	.byte	0x6
	.byte	0x4e
	.uaword	0x3e8
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"ImmediateNmCycleTime"
	.byte	0x6
	.byte	0x4f
	.uaword	0x3e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x5
	.string	"NMTimeoutTime"
	.byte	0x6
	.byte	0x50
	.uaword	0x3e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x5
	.string	"RepeatMessageTime"
	.byte	0x6
	.byte	0x51
	.uaword	0x3e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x5
	.string	"RemoteSleepIndTime"
	.byte	0x6
	.byte	0x52
	.uaword	0x3e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x5
	.string	"WaitBusSleepTime"
	.byte	0x6
	.byte	0x53
	.uaword	0x3e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x5
	.string	"TxPduId"
	.byte	0x6
	.byte	0x54
	.uaword	0x348
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x5
	.string	"NetworkHandle"
	.byte	0x6
	.byte	0x58
	.uaword	0x3cf
	.byte	0x2
	.byte	0x23
	.uleb128 0x26
	.uleb128 0x5
	.string	"PduLength_u8"
	.byte	0x6
	.byte	0x59
	.uaword	0x1b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x27
	.uleb128 0x5
	.string	"NodeIdPos_u8"
	.byte	0x6
	.byte	0x5a
	.uaword	0x1b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x5
	.string	"ControlBitVectorPos_u8"
	.byte	0x6
	.byte	0x5b
	.uaword	0x1b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x29
	.uleb128 0x5
	.string	"NodeDetectionEnabled_b"
	.byte	0x6
	.byte	0x5c
	.uaword	0x26a
	.byte	0x2
	.byte	0x23
	.uleb128 0x2a
	.uleb128 0x5
	.string	"NodeIdEnabled_b"
	.byte	0x6
	.byte	0x5d
	.uaword	0x26a
	.byte	0x2
	.byte	0x23
	.uleb128 0x2b
	.uleb128 0x5
	.string	"RepeatMsgIndEnabled_b"
	.byte	0x6
	.byte	0x5e
	.uaword	0x26a
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x5
	.string	"NodeId_u8"
	.byte	0x6
	.byte	0x5f
	.uaword	0x1b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x2d
	.uleb128 0x5
	.string	"UserDataLength_u8"
	.byte	0x6
	.byte	0x60
	.uaword	0x1b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x2e
	.uleb128 0x5
	.string	"ImmediateNmTransmissions_u8"
	.byte	0x6
	.byte	0x61
	.uaword	0x1b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x2f
	.uleb128 0x5
	.string	"stChannelActive_b"
	.byte	0x6
	.byte	0x68
	.uaword	0x26a
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x5
	.string	"stBusLoadReductionActive_b"
	.byte	0x6
	.byte	0x69
	.uaword	0x26a
	.byte	0x2
	.byte	0x23
	.uleb128 0x31
	.uleb128 0x5
	.string	"ActiveWakeupBitEnabled_b"
	.byte	0x6
	.byte	0x7c
	.uaword	0x26a
	.byte	0x2
	.byte	0x23
	.uleb128 0x32
	.byte	0
	.uleb128 0x3
	.string	"CanNm_ChannelConfigType"
	.byte	0x6
	.byte	0x7d
	.uaword	0x3ff
	.uleb128 0x4
	.byte	0x8
	.byte	0x6
	.byte	0xa2
	.uaword	0x6dc
	.uleb128 0x5
	.string	"CanNm_ConfigData"
	.byte	0x6
	.byte	0xa3
	.uaword	0x6dc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"versionInfo"
	.byte	0x6
	.byte	0xa5
	.uaword	0x6e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x6e2
	.uleb128 0x7
	.uleb128 0x6
	.byte	0x4
	.uaword	0x6e9
	.uleb128 0x8
	.uaword	0x32d
	.uleb128 0x3
	.string	"CanNm_ConfigType"
	.byte	0x6
	.byte	0xa6
	.uaword	0x6a2
	.uleb128 0x9
	.byte	0x1
	.byte	0x7
	.byte	0x2c
	.uaword	0x767
	.uleb128 0xa
	.string	"NM_MODE_BUS_SLEEP"
	.sleb128 0
	.uleb128 0xa
	.string	"NM_MODE_PREPARE_BUS_SLEEP"
	.sleb128 1
	.uleb128 0xa
	.string	"NM_MODE_SYNCHRONIZE"
	.sleb128 2
	.uleb128 0xa
	.string	"NM_MODE_NETWORK"
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.string	"Nm_ModeType"
	.byte	0x7
	.byte	0x31
	.uaword	0x706
	.uleb128 0x9
	.byte	0x1
	.byte	0x7
	.byte	0x44
	.uaword	0x83e
	.uleb128 0xa
	.string	"NM_STATE_UNINIT"
	.sleb128 0
	.uleb128 0xa
	.string	"NM_STATE_BUS_SLEEP"
	.sleb128 1
	.uleb128 0xa
	.string	"NM_STATE_PREPARE_BUS_SLEEP"
	.sleb128 2
	.uleb128 0xa
	.string	"NM_STATE_READY_SLEEP"
	.sleb128 3
	.uleb128 0xa
	.string	"NM_STATE_NORMAL_OPERATION"
	.sleb128 4
	.uleb128 0xa
	.string	"NM_STATE_REPEAT_MESSAGE"
	.sleb128 5
	.uleb128 0xa
	.string	"NM_STATE_SYNCHRONIZE"
	.sleb128 6
	.uleb128 0xa
	.string	"NM_STATE_OFFLINE"
	.sleb128 7
	.byte	0
	.uleb128 0x3
	.string	"Nm_StateType"
	.byte	0x7
	.byte	0x4d
	.uaword	0x77a
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x9
	.byte	0x1
	.byte	0x8
	.byte	0xc8
	.uaword	0x89e
	.uleb128 0xa
	.string	"CANNM_NETWORK_RELEASED_E"
	.sleb128 0
	.uleb128 0xa
	.string	"CANNM_NETWORK_REQUESTED_E"
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.string	"CanNm_NetworkStateType"
	.byte	0x8
	.byte	0xcc
	.uaword	0x85e
	.uleb128 0x4
	.byte	0x54
	.byte	0x8
	.byte	0xce
	.uaword	0xb89
	.uleb128 0x5
	.string	"Pdu_s"
	.byte	0x8
	.byte	0xd0
	.uaword	0x3bc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"ctSwFrTimer"
	.byte	0x8
	.byte	0xd1
	.uaword	0x3e8
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"MsgCyclePeriod"
	.byte	0x8
	.byte	0xd2
	.uaword	0x3e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x5
	.string	"PrevMsgCycleTimestamp"
	.byte	0x8
	.byte	0xd3
	.uaword	0x3e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x5
	.string	"PrevMsgTimeoutTimestamp"
	.byte	0x8
	.byte	0xd4
	.uaword	0x3e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x5
	.string	"ctRepeatMessageTimer"
	.byte	0x8
	.byte	0xd5
	.uaword	0x3e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x5
	.string	"ctNMTimeoutTimer"
	.byte	0x8
	.byte	0xd6
	.uaword	0x3e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x5
	.string	"ctWaitBusSleepTimer"
	.byte	0x8
	.byte	0xd7
	.uaword	0x3e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x5
	.string	"ctRemoteSleepIndTimer"
	.byte	0x8
	.byte	0xd8
	.uaword	0x3e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x5
	.string	"RxBuffer_au8"
	.byte	0x8
	.byte	0xd9
	.uaword	0xb89
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x5
	.string	"TxBuffer_au8"
	.byte	0x8
	.byte	0xda
	.uaword	0xb89
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x5
	.string	"State_en"
	.byte	0x8
	.byte	0xdb
	.uaword	0x83e
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x5
	.string	"NetworkReqState_en"
	.byte	0x8
	.byte	0xdc
	.uaword	0x89e
	.byte	0x2
	.byte	0x23
	.uleb128 0x3d
	.uleb128 0x5
	.string	"UserDataBuffer_au8"
	.byte	0x8
	.byte	0xdd
	.uaword	0xb89
	.byte	0x2
	.byte	0x23
	.uleb128 0x3e
	.uleb128 0x5
	.string	"Mode_en"
	.byte	0x8
	.byte	0xde
	.uaword	0x767
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0x5
	.string	"RxNodeId_u8"
	.byte	0x8
	.byte	0xdf
	.uaword	0x1b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0x5
	.string	"RxCtrlBitVector_u8"
	.byte	0x8
	.byte	0xe0
	.uaword	0x1b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x5
	.string	"TxCtrlBitVector_u8"
	.byte	0x8
	.byte	0xe1
	.uaword	0x1b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x49
	.uleb128 0x5
	.string	"ImmediateNmTx_u8"
	.byte	0x8
	.byte	0xe2
	.uaword	0x1b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4a
	.uleb128 0x5
	.string	"MsgTxStatus_b"
	.byte	0x8
	.byte	0xea
	.uaword	0x26a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4b
	.uleb128 0x5
	.string	"TxRptMsgStatus_b"
	.byte	0x8
	.byte	0xec
	.uaword	0x26a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x5
	.string	"RxIndication_b"
	.byte	0x8
	.byte	0xee
	.uaword	0x26a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4d
	.uleb128 0x5
	.string	"TxConfirmation_b"
	.byte	0x8
	.byte	0xef
	.uaword	0x26a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4e
	.uleb128 0x5
	.string	"RxStatus_b"
	.byte	0x8
	.byte	0xf0
	.uaword	0x26a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4f
	.uleb128 0x5
	.string	"stCanNmComm"
	.byte	0x8
	.byte	0xf1
	.uaword	0x26a
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x5
	.string	"stRemoteSleepInd"
	.byte	0x8
	.byte	0xf2
	.uaword	0x26a
	.byte	0x2
	.byte	0x23
	.uleb128 0x51
	.uleb128 0x5
	.string	"TxTimeoutMonitoringActive_b"
	.byte	0x8
	.byte	0xf3
	.uaword	0x26a
	.byte	0x2
	.byte	0x23
	.uleb128 0x52
	.byte	0
	.uleb128 0xb
	.uaword	0x1b8
	.uaword	0xb99
	.uleb128 0xc
	.uaword	0x852
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.string	"CanNm_RamType"
	.byte	0x8
	.byte	0xfb
	.uaword	0x8bc
	.uleb128 0xd
	.byte	0x1
	.string	"CanNm_Init"
	.byte	0x1
	.byte	0x2b
	.byte	0x1
	.uaword	.LFB107
	.uaword	.LFE107
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xc4a
	.uleb128 0xe
	.string	"cannmConfigPtr"
	.byte	0x1
	.byte	0x2b
	.uaword	0xc4a
	.uaword	.LLST0
	.uleb128 0xf
	.string	"ConfigPtr_pcs"
	.byte	0x1
	.byte	0x2f
	.uaword	0xc55
	.uleb128 0xf
	.string	"RamPtr_ps"
	.byte	0x1
	.byte	0x32
	.uaword	0xc60
	.uleb128 0x10
	.string	"IndexPtr"
	.byte	0x1
	.byte	0x35
	.uaword	0x3b6
	.uaword	.LLST1
	.uleb128 0x11
	.string	"Channel_ui"
	.byte	0x1
	.byte	0x38
	.uaword	0x285
	.byte	0
	.uleb128 0x10
	.string	"Index_ui"
	.byte	0x1
	.byte	0x3b
	.uaword	0x285
	.uaword	.LLST2
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0xc50
	.uleb128 0x8
	.uaword	0x6ee
	.uleb128 0x6
	.byte	0x4
	.uaword	0xc5b
	.uleb128 0x8
	.uaword	0x683
	.uleb128 0x6
	.byte	0x4
	.uaword	0xb99
	.uleb128 0xb
	.uaword	0x683
	.uaword	0xc71
	.uleb128 0x12
	.byte	0
	.uleb128 0x13
	.string	"CanNm_ChannelConfigData_cs"
	.byte	0x8
	.uahalf	0x10a
	.uaword	0xc96
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.uaword	0xc66
	.uleb128 0xb
	.uaword	0xb99
	.uaword	0xca6
	.uleb128 0x12
	.byte	0
	.uleb128 0x13
	.string	"CanNm_RamData_s"
	.byte	0x8
	.uahalf	0x124
	.uaword	0xc9b
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
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x21
	.byte	0
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
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
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL2
	.uaword	.LVL9
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LFE107
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x6
	.byte	0x84
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x63
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x8
	.byte	0x84
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x6
	.byte	0x84
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x52
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
	.uaword	.LFB107
	.uaword	.LFE107
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.extern	CanNm_RamData_s,STT_OBJECT,-1
	.extern	CanNm_ChannelConfigData_cs,STT_OBJECT,-1
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
