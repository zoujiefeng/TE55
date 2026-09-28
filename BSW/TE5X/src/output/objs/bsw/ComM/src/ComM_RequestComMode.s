	.file	"ComM_RequestComMode.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.ComM_RequestComMode,"ax",@progbits
	.align 1
	.global	ComM_RequestComMode
	.type	ComM_RequestComMode, @function
ComM_RequestComMode:
.LFB131:
	.file 1 "bsw\\ComM\\src\\ComM_RequestComMode.c"
	.loc 1 47 0
.LVL0:
	.loc 1 75 0
	movh.a	%a13, hi:ComM_GlobalStruct
	ld.bu	%d2, [%a13] lo:ComM_GlobalStruct
	.loc 1 47 0
	mov	%d9, %d4
	mov	%d15, %d5
	.loc 1 75 0
	jeq	%d2, 1, .L2
	.loc 1 78 0
	mov	%e4, 12
.LVL1:
	mov	%d6, 5
	mov	%d7, 1
	call	Det_ReportError
.LVL2:
	.loc 1 79 0
	mov	%d8, 3
.L22:
	.loc 1 209 0
	mov	%d2, %d8
	ret
.LVL3:
.L2:
	.loc 1 82 0
	and	%d8, %d5, 253
	jnz	%d8, .L5
	.loc 1 90 0
	call	ComM_Prv_ValidateUserId
.LVL4:
	jz	%d2, .L5
.LVL5:
	.loc 1 103 0
	movh.a	%a15, hi:ComM_UserId_MappingTable_acst
	lea	%a15, [%a15] lo:ComM_UserId_MappingTable_acst
	addsc.a	%a15, %a15, %d9, 0
	.loc 1 106 0
	movh.a	%a14, hi:ComM_UserStruct
	.loc 1 104 0
	ld.bu	%d11, [%a15]0
.LVL6:
	.loc 1 106 0
	lea	%a14, [%a14] lo:ComM_UserStruct
	mul	%d12, %d11, 10
	addsc.a	%a15, %a14, %d12, 0
	ld.bu	%d2, [%a15] 4
.LVL7:
	.loc 1 107 0
	st.b	[%a15] 4, %d15
.LVL8:
	.loc 1 110 0
	jeq	%d15, %d2, .L9
.LBB10:
	.loc 1 123 0
	movh.a	%a15, hi:ComM_UserList_acst
	lea	%a15, [%a15] lo:ComM_UserList_acst
	addsc.a	%a15, %a15, %d11, 3
	ld.bu	%d9, [%a15] 4
.LVL9:
	.loc 1 127 0
	jz	%d9, .L9
	ld.a	%a12, [%a15]0
	jeq	%d15, 2, .L10
	jnz	%d15, .L11
	movh	%d10, hi:ComM_ChannelStruct
	mov.aa	%a15, %a12
.LVL10:
	addi	%d10, %d10, lo:ComM_ChannelStruct
	j	.L14
.LVL11:
.L12:
.LBB11:
.LBB12:
	.loc 1 240 0
	add	%d2, -1
	st.h	[%a2] 2, %d2
.LVL12:
.L13:
	add.a	%a15, 1
.LVL13:
	sub.a	%a2, %a15, %a12
	mov.d	%d2, %a2
.LBE12:
.LBE11:
	.loc 1 127 0
	and	%d2, %d2, 255
	jge.u	%d2, %d9, .L11
.LVL14:
.L14:
	.loc 1 130 0
	ld.bu	%d2, [%a15]0
.LVL15:
.LBB15:
.LBB13:
	.loc 1 238 0
	madd	%d2, %d10, %d2, 24
.LVL16:
	mov.a	%a3, %d2
	lea	%a2, [%a3] 8
	ld.hu	%d2, [%a2] 2
	jnz	%d2, .L12
	.loc 1 246 0
	mov	%e4, 12
	mov	%d6, 5
	mov	%d7, 4
	call	Det_ReportError
.LVL17:
	j	.L13
.LVL18:
.L5:
.LBE13:
.LBE15:
.LBE10:
	.loc 1 85 0
	mov	%e4, 12
	mov	%d6, 5
	mov	%d7, 2
	call	Det_ReportError
.LVL19:
	.loc 1 86 0
	mov	%d8, 1
	.loc 1 209 0
	mov	%d2, %d8
	ret
.LVL20:
.L11:
	.loc 1 184 0
	addsc.a	%a15, %a14, %d12, 0
	ld.hu	%d2, [%a15] 2
	jnz	%d2, .L22
.LVL21:
.L8:
	.loc 1 185 0 discriminator 1
	addsc.a	%a14, %a14, %d12, 0
	.loc 1 184 0 discriminator 1
	ld.hu	%d2, [%a14]0
	jz	%d2, .L22
	.loc 1 185 0
	movh.a	%a15, hi:ComM_UserList_acst
	lea	%a15, [%a15] lo:ComM_UserList_acst
	addsc.a	%a15, %a15, %d11, 3
	ld.bu	%d3, [%a14] 6
	ld.bu	%d2, [%a15] 5
	jeq	%d3, %d2, .L22
	.loc 1 187 0
	jne	%d15, 2, .L22
.L17:
	.loc 1 189 0
	lea	%a13, [%a13] lo:ComM_GlobalStruct
	ld.hu	%d15, [%a13] 2
.LVL22:
	mov.u	%d2, 65535
	.loc 1 194 0
	mov	%d8, 2
	.loc 1 189 0
	jeq	%d15, %d2, .L22
	.loc 1 191 0
	add	%d15, 1
	st.h	[%a13] 2, %d15
	j	.L22
.LVL23:
.L9:
	.loc 1 184 0
	addsc.a	%a15, %a14, %d12, 0
	ld.hu	%d2, [%a15] 2
.LVL24:
	jz	%d2, .L8
	.loc 1 187 0
	jne	%d15, 2, .L22
	j	.L17
.LVL25:
.L10:
	movh	%d10, hi:ComM_ChannelStruct
.LBB17:
	.loc 1 127 0
	mov.aa	%a15, %a12
.LVL26:
	addi	%d10, %d10, lo:ComM_ChannelStruct
.LVL27:
.L15:
	.loc 1 130 0 discriminator 3
	ld.bu	%d2, [%a15+]1
.LVL28:
	sub.a	%a2, %a15, %a12
.LBB16:
.LBB14:
	.loc 1 234 0 discriminator 3
	madd	%d2, %d10, %d2, 24
.LVL29:
	mov.a	%a3, %d2
	ld.h	%d2, [%a3] 10
	add	%d2, 1
	st.h	[%a3] 10, %d2
.LVL30:
	mov.d	%d2, %a2
.LBE14:
.LBE16:
	.loc 1 127 0 discriminator 3
	and	%d2, %d2, 255
	jlt.u	%d2, %d9, .L15
.LVL31:
.LBE17:
	.loc 1 184 0
	addsc.a	%a15, %a14, %d12, 0
.LVL32:
	ld.hu	%d2, [%a15] 2
	jnz	%d2, .L17
	j	.L8
.LFE131:
	.size	ComM_RequestComMode, .-ComM_RequestComMode
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
	.uaword	.LFB131
	.uaword	.LFE131-.LFB131
	.align 2
.LEFDE0:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 4 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM_Types.h"
	.file 5 ".\\output\\inc/..\\..\\rte\\Rte_Type.h"
	.file 6 ".\\output\\inc/..\\..\\bsw\\ComM\\ComM_Cfg_Internal.h"
	.file 7 "bsw\\ComM\\src\\ComM_Priv.h"
	.file 8 ".\\output\\inc/..\\..\\bsw\\ComM\\integration\\ComM_Cfg_SchM.h"
	.file 9 ".\\output\\inc/..\\..\\bsw\\Det\\api\\Det.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xc53
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\ComM\\src\\ComM_RequestComMode.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x38
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
	.uleb128 0x3
	.string	"uint32"
	.byte	0x2
	.byte	0x6a
	.uaword	0x235
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
	.uleb128 0x4
	.byte	0x1
	.byte	0x4
	.byte	0x4a
	.uaword	0x2db
	.uleb128 0x5
	.string	"COMM_UNINIT"
	.sleb128 0
	.uleb128 0x5
	.string	"COMM_INIT"
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.string	"ComM_InitStatusType"
	.byte	0x4
	.byte	0x4d
	.uaword	0x2b8
	.uleb128 0x4
	.byte	0x1
	.byte	0x4
	.byte	0x89
	.uaword	0x38e
	.uleb128 0x5
	.string	"COMM_NO_COM_NO_PENDING_REQUEST"
	.sleb128 0
	.uleb128 0x5
	.string	"COMM_NO_COM_REQUEST_PENDING"
	.sleb128 1
	.uleb128 0x5
	.string	"COMM_FULL_COM_NETWORK_REQUESTED"
	.sleb128 2
	.uleb128 0x5
	.string	"COMM_FULL_COM_READY_SLEEP"
	.sleb128 3
	.uleb128 0x5
	.string	"COMM_SILENT_COM"
	.sleb128 4
	.byte	0
	.uleb128 0x3
	.string	"ComM_StateType"
	.byte	0x4
	.byte	0x8f
	.uaword	0x2f6
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x6
	.uaword	0x1c0
	.uleb128 0x3
	.string	"ComM_InhibitionStatusType"
	.byte	0x5
	.byte	0xde
	.uaword	0x1c0
	.uleb128 0x3
	.string	"ComM_ModeType"
	.byte	0x5
	.byte	0xe0
	.uaword	0x1c0
	.uleb128 0x3
	.string	"ComM_UserHandleType"
	.byte	0x5
	.byte	0xe2
	.uaword	0x1c0
	.uleb128 0x7
	.byte	0x4
	.uaword	0x1eb
	.uleb128 0x7
	.byte	0x4
	.uaword	0x3b0
	.uleb128 0x8
	.byte	0x8
	.byte	0x6
	.byte	0x8d
	.uaword	0x474
	.uleb128 0x9
	.string	"DirectChannels_pcu8"
	.byte	0x6
	.byte	0x8f
	.uaword	0x40c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"NumDirectChannels_u8"
	.byte	0x6
	.byte	0x93
	.uaword	0x1c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"NumAllChannels_u8"
	.byte	0x6
	.byte	0x94
	.uaword	0x1c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.string	"ComM_UsersType_tst"
	.byte	0x6
	.byte	0x98
	.uaword	0x412
	.uleb128 0x3
	.string	"ComM_DiagnosticType"
	.byte	0x7
	.byte	0xf3
	.uaword	0x272
	.uleb128 0xa
	.byte	0x6
	.byte	0x7
	.uahalf	0x109
	.uaword	0x540
	.uleb128 0xb
	.string	"ComM_InitStatus_en"
	.byte	0x7
	.uahalf	0x10b
	.uaword	0x2db
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"ComM_InhibitCounter_u16"
	.byte	0x7
	.uahalf	0x10d
	.uaword	0x1eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.string	"ComM_EcuGroupClassification_u8"
	.byte	0x7
	.uahalf	0x10e
	.uaword	0x3b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"ComM_LimitECUToNoCom_b"
	.byte	0x7
	.uahalf	0x111
	.uaword	0x272
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0xc
	.string	"ComM_GlobalVarType_tst"
	.byte	0x7
	.uahalf	0x113
	.uaword	0x4a9
	.uleb128 0xa
	.byte	0x18
	.byte	0x7
	.uahalf	0x132
	.uaword	0x758
	.uleb128 0xb
	.string	"ChannelState_e"
	.byte	0x7
	.uahalf	0x134
	.uaword	0x38e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"LightTimeoutCtr_u32"
	.byte	0x7
	.uahalf	0x135
	.uaword	0x227
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"MinFullComTimeoutCtr_u16"
	.byte	0x7
	.uahalf	0x136
	.uaword	0x1eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"UserRequestCtr_u16"
	.byte	0x7
	.uahalf	0x137
	.uaword	0x1eb
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xb
	.string	"ChannelMode_u8"
	.byte	0x7
	.uahalf	0x138
	.uaword	0x3d6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.string	"BusSmMode_u8"
	.byte	0x7
	.uahalf	0x139
	.uaword	0x3d6
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xb
	.string	"PassiveRequestState_u8"
	.byte	0x7
	.uahalf	0x13d
	.uaword	0x1c0
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xb
	.string	"PncRequestCtr_u8"
	.byte	0x7
	.uahalf	0x13e
	.uaword	0x1c0
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0xb
	.string	"InhibitionReqStatus_u8"
	.byte	0x7
	.uahalf	0x13f
	.uaword	0x3b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"NmNetworkRequestStatus_b"
	.byte	0x7
	.uahalf	0x140
	.uaword	0x272
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0xb
	.string	"DiagnosticRequestState_b"
	.byte	0x7
	.uahalf	0x141
	.uaword	0x48e
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0xb
	.string	"CommunicationAllowed_b"
	.byte	0x7
	.uahalf	0x142
	.uaword	0x272
	.byte	0x2
	.byte	0x23
	.uleb128 0x13
	.uleb128 0xb
	.string	"NmBusSleepIndicationStatus_b"
	.byte	0x7
	.uahalf	0x143
	.uaword	0x272
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.string	"NmPrepareBusSleepIndicationStatus_b"
	.byte	0x7
	.uahalf	0x144
	.uaword	0x272
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.uleb128 0xb
	.string	"NmNetworkModeStatus_b"
	.byte	0x7
	.uahalf	0x145
	.uaword	0x272
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.byte	0
	.uleb128 0xc
	.string	"ComM_ChannelVarType_tst"
	.byte	0x7
	.uahalf	0x149
	.uaword	0x55f
	.uleb128 0xa
	.byte	0xa
	.byte	0x7
	.uahalf	0x15c
	.uaword	0x86d
	.uleb128 0xb
	.string	"WakeUpInhibitionCtr_u16"
	.byte	0x7
	.uahalf	0x15e
	.uaword	0x1eb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"LimitToNoComCtr_u16"
	.byte	0x7
	.uahalf	0x15f
	.uaword	0x1eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.string	"RequestedUserMode_u8"
	.byte	0x7
	.uahalf	0x160
	.uaword	0x3d6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"IndicatedUserMode_u8"
	.byte	0x7
	.uahalf	0x161
	.uaword	0x3d6
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0xb
	.string	"numChannelsInFullCom_u8"
	.byte	0x7
	.uahalf	0x162
	.uaword	0x1c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xb
	.string	"numChannelsInSilentCom_u8"
	.byte	0x7
	.uahalf	0x163
	.uaword	0x1c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xb
	.string	"numChannelsInNoCom_u8"
	.byte	0x7
	.uahalf	0x164
	.uaword	0x1c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0xc
	.string	"ComM_UserVarType_tst"
	.byte	0x7
	.uahalf	0x165
	.uaword	0x778
	.uleb128 0xd
	.string	"SchM_Enter_ComM_UserNoNest"
	.byte	0x8
	.byte	0x88
	.byte	0x1
	.byte	0x3
	.uleb128 0xd
	.string	"SchM_Exit_ComM_UserNoNest"
	.byte	0x8
	.byte	0x95
	.byte	0x1
	.byte	0x3
	.uleb128 0xe
	.string	"ComM_Prv_UpdateUserRequest"
	.byte	0x1
	.byte	0xe2
	.byte	0x1
	.byte	0x3
	.uaword	0x923
	.uleb128 0xf
	.string	"RequestCounter_pu16"
	.byte	0x1
	.byte	0xe2
	.uaword	0x406
	.uleb128 0xf
	.string	"CurrentComMode_tu8"
	.byte	0x1
	.byte	0xe2
	.uaword	0x3d6
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.string	"ComM_RequestComMode"
	.byte	0x1
	.byte	0x2e
	.byte	0x1
	.uaword	0x2a2
	.uaword	.LFB131
	.uaword	.LFE131
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xb0f
	.uleb128 0x11
	.string	"User"
	.byte	0x1
	.byte	0x2e
	.uaword	0x3eb
	.uaword	.LLST0
	.uleb128 0x11
	.string	"ComMode"
	.byte	0x1
	.byte	0x2e
	.uaword	0x3d6
	.uaword	.LLST1
	.uleb128 0x12
	.string	"channelRamPtr_pst"
	.byte	0x1
	.byte	0x31
	.uaword	0xb0f
	.uleb128 0x12
	.string	"userRamPtr_pst"
	.byte	0x1
	.byte	0x32
	.uaword	0xb15
	.uleb128 0x12
	.string	"userConfigPtr_pcst"
	.byte	0x1
	.byte	0x33
	.uaword	0xb1b
	.uleb128 0x13
	.string	"previousUserRequest_tu8"
	.byte	0x1
	.byte	0x34
	.uaword	0x3d6
	.uaword	.LLST2
	.uleb128 0x13
	.string	"currentUserRequest_tu8"
	.byte	0x1
	.byte	0x35
	.uaword	0x3d6
	.uaword	.LLST3
	.uleb128 0x12
	.string	"userId_internal_u8"
	.byte	0x1
	.byte	0x36
	.uaword	0x1c0
	.uleb128 0x12
	.string	"globalRamPtr_pst"
	.byte	0x1
	.byte	0x43
	.uaword	0xb26
	.uleb128 0x14
	.uaword	.Ldebug_ranges0+0
	.uaword	0xac5
	.uleb128 0x13
	.string	"loopCounter_u8"
	.byte	0x1
	.byte	0x70
	.uaword	0x1c0
	.uaword	.LLST4
	.uleb128 0x13
	.string	"channelId_u8"
	.byte	0x1
	.byte	0x71
	.uaword	0x1c0
	.uaword	.LLST5
	.uleb128 0x13
	.string	"numChannels_u8"
	.byte	0x1
	.byte	0x72
	.uaword	0x1c0
	.uaword	.LLST6
	.uleb128 0x15
	.uaword	0x8c9
	.uaword	.LBB11
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x91
	.uleb128 0x16
	.uaword	0x908
	.uaword	.LLST7
	.uleb128 0x17
	.uaword	0x8ed
	.uleb128 0x18
	.uaword	.LVL17
	.uaword	0xbfa
	.uleb128 0x19
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x34
	.uleb128 0x19
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x35
	.uleb128 0x19
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL2
	.uaword	0xbfa
	.uaword	0xae7
	.uleb128 0x19
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x31
	.uleb128 0x19
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x35
	.uleb128 0x19
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3c
	.byte	0
	.uleb128 0x1b
	.uaword	.LVL4
	.uaword	0xc2d
	.uleb128 0x18
	.uaword	.LVL19
	.uaword	0xbfa
	.uleb128 0x19
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x32
	.uleb128 0x19
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x35
	.uleb128 0x19
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.uaword	0x758
	.uleb128 0x7
	.byte	0x4
	.uaword	0x86d
	.uleb128 0x7
	.byte	0x4
	.uaword	0xb21
	.uleb128 0x6
	.uaword	0x474
	.uleb128 0x7
	.byte	0x4
	.uaword	0x540
	.uleb128 0x1c
	.uaword	0x3eb
	.uaword	0xb37
	.uleb128 0x1d
	.byte	0
	.uleb128 0x1e
	.string	"ComM_UserId_MappingTable_acst"
	.byte	0x6
	.uahalf	0x10f
	.uaword	0xb5f
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.uaword	0xb2c
	.uleb128 0x1c
	.uaword	0x474
	.uaword	0xb6f
	.uleb128 0x1d
	.byte	0
	.uleb128 0x1e
	.string	"ComM_UserList_acst"
	.byte	0x6
	.uahalf	0x128
	.uaword	0xb8c
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.uaword	0xb64
	.uleb128 0x1e
	.string	"ComM_GlobalStruct"
	.byte	0x7
	.uahalf	0x1d2
	.uaword	0x540
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.uaword	0x758
	.uaword	0xbb8
	.uleb128 0x1d
	.byte	0
	.uleb128 0x1e
	.string	"ComM_ChannelStruct"
	.byte	0x7
	.uahalf	0x1d5
	.uaword	0xbad
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.uaword	0x86d
	.uaword	0xbe0
	.uleb128 0x1d
	.byte	0
	.uleb128 0x1e
	.string	"ComM_UserStruct"
	.byte	0x7
	.uahalf	0x1db
	.uaword	0xbd5
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.byte	0x1
	.string	"Det_ReportError"
	.byte	0x9
	.byte	0x70
	.byte	0x1
	.uaword	0x2a2
	.byte	0x1
	.uaword	0xc2d
	.uleb128 0x20
	.uaword	0x1eb
	.uleb128 0x20
	.uaword	0x1c0
	.uleb128 0x20
	.uaword	0x1c0
	.uleb128 0x20
	.uaword	0x1c0
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"ComM_Prv_ValidateUserId"
	.byte	0x7
	.uahalf	0x221
	.byte	0x1
	.uaword	0x272
	.byte	0x1
	.uleb128 0x20
	.uaword	0x3eb
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uaword	.LVL4-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL4-1
	.uaword	.LFE131
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL1
	.uaword	.LVL3
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LVL4-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL4-1
	.uaword	.LFE131
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x2
	.byte	0x8f
	.sleb128 4
	.uaword	.LVL8
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL25
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL8
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL20
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL23
	.uaword	.LFE131
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL9
	.uaword	.LVL11
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x6
	.byte	0x8f
	.sleb128 0
	.byte	0x8c
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x8
	.byte	0x8f
	.sleb128 0
	.byte	0x8c
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x8
	.byte	0x8f
	.sleb128 -1
	.byte	0x8c
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	.LVL14
	.uaword	.LVL18
	.uahalf	0x6
	.byte	0x8f
	.sleb128 0
	.byte	0x8c
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LVL27
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL27
	.uaword	.LVL28
	.uahalf	0x6
	.byte	0x8f
	.sleb128 0
	.byte	0x8c
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL28
	.uaword	.LVL30
	.uahalf	0x6
	.byte	0x8f
	.sleb128 -1
	.byte	0x8c
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL30
	.uaword	.LVL32
	.uahalf	0x8
	.byte	0x8f
	.sleb128 0
	.byte	0x8c
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL14
	.uaword	.LVL17-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL27
	.uaword	.LVL28
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL28
	.uaword	.LVL30
	.uahalf	0x2
	.byte	0x8f
	.sleb128 -1
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x2
	.byte	0x8f
	.sleb128 4
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x2
	.byte	0x8f
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL11
	.uaword	.LVL14
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL18
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL28
	.uaword	.LFE131
	.uahalf	0x2
	.byte	0x32
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
	.uaword	.LFB131
	.uaword	.LFE131-.LFB131
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB10
	.uaword	.LBE10
	.uaword	.LBB17
	.uaword	.LBE17
	.uaword	0
	.uaword	0
	.uaword	.LBB11
	.uaword	.LBE11
	.uaword	.LBB15
	.uaword	.LBE15
	.uaword	.LBB16
	.uaword	.LBE16
	.uaword	0
	.uaword	0
	.uaword	.LFB131
	.uaword	.LFE131
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.extern	ComM_ChannelStruct,STT_OBJECT,-1
	.extern	ComM_UserList_acst,STT_OBJECT,-1
	.extern	ComM_UserStruct,STT_OBJECT,-1
	.extern	ComM_UserId_MappingTable_acst,STT_OBJECT,-1
	.extern	ComM_Prv_ValidateUserId,STT_FUNC,0
	.extern	Det_ReportError,STT_FUNC,0
	.extern	ComM_GlobalStruct,STT_OBJECT,6
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
