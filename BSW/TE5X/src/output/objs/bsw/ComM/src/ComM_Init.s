	.file	"ComM_Init.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.ComM_Init,"ax",@progbits
	.align 1
	.global	ComM_Init
	.type	ComM_Init, @function
ComM_Init:
.LFB131:
	.file 1 "bsw\\ComM\\src\\ComM_Init.c"
	.loc 1 55 0
.LVL0:
	.loc 1 126 0
	movh.a	%a12, hi:ComM_GlobalStruct
	lea	%a15, [%a12] lo:ComM_GlobalStruct
	mov	%d15, 0
	.loc 1 172 0
	movh.a	%a2, hi:ComM_EcuGroupClassification_Init
	.loc 1 126 0
	st.b	[%a15] 5, %d15
	.loc 1 172 0
	ld.bu	%d15, [%a2] lo:ComM_EcuGroupClassification_Init
	.loc 1 178 0
	movh.a	%a2, hi:ComM_ChanelList_acst
	lea	%a2, [%a2] lo:ComM_ChanelList_acst
	.loc 1 172 0
	st.b	[%a15] 4, %d15
	.loc 1 178 0
	ld.bu	%d3, [%a2] 44
	.loc 1 173 0
	mov	%d15, 0
	.loc 1 178 0
	movh.a	%a4, hi:ComM_ChannelStruct
.LVL1:
	.loc 1 173 0
	st.h	[%a15] 2, %d15
.LVL2:
	.loc 1 178 0
	lea	%a15, [%a4] lo:ComM_ChannelStruct
	st.b	[%a15] 40, %d3
	ld.bu	%d3, [%a2] 68
	.loc 1 198 0
	movh.a	%a3, hi:ComM_UserList_acst
	.loc 1 178 0
	st.b	[%a15] 64, %d3
	ld.bu	%d3, [%a2] 92
	.loc 1 198 0
	lea	%a3, [%a3] lo:ComM_UserList_acst
	.loc 1 178 0
	ld.bu	%d2, [%a2] 20
	st.b	[%a15] 88, %d3
	.loc 1 195 0
	movh.a	%a5, hi:ComM_UserStruct
	.loc 1 198 0
	ld.bu	%d3, [%a3] 5
	.loc 1 195 0
	lea	%a2, [%a5] lo:ComM_UserStruct
	.loc 1 178 0
	st.b	[%a15] 16, %d2
.LVL3:
	.loc 1 198 0
	st.b	[%a2] 8, %d3
	.loc 1 195 0
	st.b	[%a2] 4, %d15
	.loc 1 198 0
	ld.bu	%d3, [%a3] 13
	.loc 1 196 0
	st.b	[%a2] 6, %d15
	.loc 1 197 0
	st.b	[%a2] 7, %d15
	.loc 1 201 0
	st.h	[%a2] 2, %d15
	.loc 1 202 0
	st.h	[%a5] lo:ComM_UserStruct, %d15
	.loc 1 198 0
	st.b	[%a2] 18, %d3
	ld.bu	%d3, [%a3] 21
	.loc 1 204 0
	st.b	[%a2] 5, %d15
.LVL4:
	.loc 1 198 0
	st.b	[%a2] 28, %d3
	.loc 1 195 0
	st.b	[%a2] 14, %d15
	.loc 1 196 0
	st.b	[%a2] 16, %d15
	.loc 1 197 0
	st.b	[%a2] 17, %d15
	.loc 1 201 0
	st.h	[%a2] 12, %d15
	.loc 1 202 0
	st.h	[%a2] 10, %d15
	.loc 1 204 0
	st.b	[%a2] 15, %d15
.LVL5:
	.loc 1 195 0
	st.b	[%a2] 24, %d15
	.loc 1 196 0
	st.b	[%a2] 26, %d15
	.loc 1 197 0
	st.b	[%a2] 27, %d15
	.loc 1 201 0
	st.h	[%a2] 22, %d15
	.loc 1 198 0
	ld.bu	%d3, [%a3] 29
	.loc 1 202 0
	st.h	[%a2] 20, %d15
	.loc 1 204 0
	st.b	[%a2] 25, %d15
.LVL6:
	.loc 1 195 0
	st.b	[%a2] 34, %d15
	.loc 1 196 0
	st.b	[%a2] 36, %d15
	.loc 1 197 0
	st.b	[%a2] 37, %d15
	.loc 1 198 0
	st.b	[%a2] 38, %d3
	.loc 1 201 0
	st.h	[%a2] 32, %d15
	.loc 1 202 0
	st.h	[%a2] 30, %d15
	.loc 1 204 0
	st.b	[%a2] 35, %d15
.LVL7:
	.loc 1 242 0
	st.b	[%a15] 19, %d15
	.loc 1 243 0
	st.b	[%a4] lo:ComM_ChannelStruct, %d15
	.loc 1 244 0
	st.b	[%a15] 12, %d15
	.loc 1 245 0
	st.b	[%a15] 13, %d15
	.loc 1 246 0
	st.b	[%a15] 14, %d15
	.loc 1 247 0
	st.h	[%a15] 10, %d15
	.loc 1 248 0
	st.b	[%a15] 15, %d15
.LVL8:
	.loc 1 250 0
	jnz.t	%d2, 1, .L19
.LVL9:
.L2:
	.loc 1 261 0
	mov	%d15, 0
	st.b	[%a15] 20, %d15
	.loc 1 262 0
	st.b	[%a15] 21, %d15
	.loc 1 263 0
	st.b	[%a15] 18, %d15
	.loc 1 264 0
	st.b	[%a15] 22, %d15
	.loc 1 265 0
	st.b	[%a15] 17, %d15
	.loc 1 266 0
	mov	%d15, 0
	st.h	[%a15] 8, %d15
.LVL10:
	.loc 1 242 0
	st.b	[%a15] 43, %d15
	.loc 1 243 0
	st.b	[%a15] 24, %d15
	.loc 1 244 0
	st.b	[%a15] 36, %d15
	.loc 1 245 0
	st.b	[%a15] 37, %d15
	.loc 1 246 0
	st.b	[%a15] 38, %d15
	.loc 1 247 0
	st.h	[%a15] 34, %d15
	.loc 1 248 0
	st.b	[%a15] 39, %d15
.LVL11:
.LBB4:
.LBB5:
	.file 2 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
	.loc 2 511 0
	ld.bu	%d15, [%a15] 40
.LBE5:
.LBE4:
	.loc 1 250 0
	jnz.t	%d15, 1, .L20
.LVL12:
.L3:
	.loc 1 261 0
	mov	%d15, 0
	st.b	[%a15] 44, %d15
	.loc 1 262 0
	st.b	[%a15] 45, %d15
	.loc 1 263 0
	st.b	[%a15] 42, %d15
	.loc 1 264 0
	st.b	[%a15] 46, %d15
	.loc 1 265 0
	st.b	[%a15] 41, %d15
	.loc 1 266 0
	mov	%d15, 0
	st.h	[%a15] 32, %d15
.LVL13:
	.loc 1 242 0
	st.b	[%a15] 67, %d15
	.loc 1 243 0
	st.b	[%a15] 48, %d15
	.loc 1 244 0
	st.b	[%a15] 60, %d15
	.loc 1 245 0
	st.b	[%a15] 61, %d15
	.loc 1 246 0
	st.b	[%a15] 62, %d15
	.loc 1 247 0
	st.h	[%a15] 58, %d15
	.loc 1 248 0
	st.b	[%a15] 63, %d15
.LVL14:
.LBB8:
.LBB6:
	.loc 2 511 0
	ld.bu	%d15, [%a15] 64
.LBE6:
.LBE8:
	.loc 1 250 0
	jnz.t	%d15, 1, .L21
.LVL15:
.L4:
	.loc 1 261 0
	mov	%d15, 0
	st.b	[%a15] 68, %d15
	.loc 1 262 0
	st.b	[%a15] 69, %d15
	.loc 1 263 0
	st.b	[%a15] 66, %d15
	.loc 1 264 0
	st.b	[%a15] 70, %d15
	.loc 1 265 0
	st.b	[%a15] 65, %d15
	.loc 1 266 0
	mov	%d15, 0
	st.h	[%a15] 56, %d15
.LVL16:
	.loc 1 242 0
	st.b	[%a15] 91, %d15
	.loc 1 243 0
	st.b	[%a15] 72, %d15
	.loc 1 244 0
	st.b	[%a15] 84, %d15
	.loc 1 245 0
	st.b	[%a15] 85, %d15
	.loc 1 246 0
	st.b	[%a15] 86, %d15
	.loc 1 247 0
	st.h	[%a15] 82, %d15
	.loc 1 248 0
	st.b	[%a15] 87, %d15
.LVL17:
.LBB9:
.LBB7:
	.loc 2 511 0
	ld.bu	%d15, [%a15] 88
.LBE7:
.LBE9:
	.loc 1 250 0
	jnz.t	%d15, 1, .L22
.LVL18:
.L5:
	.loc 1 261 0 discriminator 2
	mov	%d15, 0
	st.b	[%a15] 92, %d15
	.loc 1 262 0 discriminator 2
	st.b	[%a15] 93, %d15
	.loc 1 263 0 discriminator 2
	st.b	[%a15] 90, %d15
	.loc 1 264 0 discriminator 2
	st.b	[%a15] 94, %d15
	.loc 1 265 0 discriminator 2
	st.b	[%a15] 89, %d15
	.loc 1 266 0 discriminator 2
	mov	%d15, 0
	st.h	[%a15] 80, %d15
.LVL19:
	.loc 1 277 0 discriminator 2
	mov	%d15, 1
	st.b	[%a12] lo:ComM_GlobalStruct, %d15
	ret
.LVL20:
.L19:
	.loc 1 252 0
	mov	%d4, 0
	mov	%d5, 1
	mov	%d6, 1
	call	ComM_Prv_TranslateInhibitionStatus
.LVL21:
	j	.L2
.LVL22:
.L22:
	mov	%d4, 3
	mov	%d5, 1
	mov	%d6, 1
	call	ComM_Prv_TranslateInhibitionStatus
.LVL23:
	j	.L5
.LVL24:
.L21:
	mov	%d4, 2
	mov	%d5, 1
	mov	%d6, 1
	call	ComM_Prv_TranslateInhibitionStatus
.LVL25:
	j	.L4
.LVL26:
.L20:
	mov	%d4, 1
	mov	%d5, 1
	mov	%d6, 1
	call	ComM_Prv_TranslateInhibitionStatus
.LVL27:
	j	.L3
.LFE131:
	.size	ComM_Init, .-ComM_Init
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
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 4 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 5 ".\\output\\inc/..\\..\\bsw\\ComStack\\api\\ComStack_Types.h"
	.file 6 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM_Types.h"
	.file 7 ".\\output\\inc/..\\..\\rte\\Rte_Type.h"
	.file 8 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM.h"
	.file 9 ".\\output\\inc/..\\..\\bsw\\ComM\\ComM_Cfg_Internal.h"
	.file 10 "bsw\\ComM\\src\\ComM_Priv.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xf42
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\ComM\\src\\ComM_Init.c"
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
	.uaword	0x1c3
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
	.uaword	0x1ef
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
	.uaword	0x22b
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
	.uaword	0x1c3
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x4
	.byte	0x8
	.byte	0x4
	.byte	0x64
	.uaword	0x318
	.uleb128 0x5
	.string	"vendorID"
	.byte	0x4
	.byte	0x66
	.uaword	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"moduleID"
	.byte	0x4
	.byte	0x67
	.uaword	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x5
	.string	"sw_major_version"
	.byte	0x4
	.byte	0x68
	.uaword	0x1b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"sw_minor_version"
	.byte	0x4
	.byte	0x69
	.uaword	0x1b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x5
	.string	"sw_patch_version"
	.byte	0x4
	.byte	0x6a
	.uaword	0x1b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0
	.uleb128 0x3
	.string	"Std_VersionInfoType"
	.byte	0x4
	.byte	0x6b
	.uaword	0x298
	.uleb128 0x3
	.string	"NetworkHandleType"
	.byte	0x5
	.byte	0x4f
	.uaword	0x1b6
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.byte	0x4a
	.uaword	0x36f
	.uleb128 0x7
	.string	"COMM_UNINIT"
	.sleb128 0
	.uleb128 0x7
	.string	"COMM_INIT"
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.string	"ComM_InitStatusType"
	.byte	0x6
	.byte	0x4d
	.uaword	0x34c
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.byte	0x5d
	.uaword	0x3fb
	.uleb128 0x7
	.string	"COMM_BUS_TYPE_CAN"
	.sleb128 0
	.uleb128 0x7
	.string	"COMM_BUS_TYPE_ETH"
	.sleb128 1
	.uleb128 0x7
	.string	"COMM_BUS_TYPE_FR"
	.sleb128 2
	.uleb128 0x7
	.string	"COMM_BUS_TYPE_INTERNAL"
	.sleb128 3
	.uleb128 0x7
	.string	"COMM_BUS_TYPE_LIN"
	.sleb128 4
	.byte	0
	.uleb128 0x3
	.string	"ComM_BusType_ten"
	.byte	0x6
	.byte	0x63
	.uaword	0x38a
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.byte	0x72
	.uaword	0x43c
	.uleb128 0x7
	.string	"FULL"
	.sleb128 0
	.uleb128 0x7
	.string	"LIGHT"
	.sleb128 1
	.uleb128 0x7
	.string	"NONE"
	.sleb128 2
	.uleb128 0x7
	.string	"PASSIVE"
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.string	"ComM_NMVariantType_ten"
	.byte	0x6
	.byte	0x77
	.uaword	0x413
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.byte	0x89
	.uaword	0x4f2
	.uleb128 0x7
	.string	"COMM_NO_COM_NO_PENDING_REQUEST"
	.sleb128 0
	.uleb128 0x7
	.string	"COMM_NO_COM_REQUEST_PENDING"
	.sleb128 1
	.uleb128 0x7
	.string	"COMM_FULL_COM_NETWORK_REQUESTED"
	.sleb128 2
	.uleb128 0x7
	.string	"COMM_FULL_COM_READY_SLEEP"
	.sleb128 3
	.uleb128 0x7
	.string	"COMM_SILENT_COM"
	.sleb128 4
	.byte	0
	.uleb128 0x3
	.string	"ComM_StateType"
	.byte	0x6
	.byte	0x8f
	.uaword	0x45a
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x8
	.uaword	0x1b6
	.uleb128 0x9
	.byte	0x4
	.uaword	0x51f
	.uleb128 0xa
	.uleb128 0x3
	.string	"ComM_InhibitionStatusType"
	.byte	0x7
	.byte	0xde
	.uaword	0x1b6
	.uleb128 0x3
	.string	"ComM_ModeType"
	.byte	0x7
	.byte	0xe0
	.uaword	0x1b6
	.uleb128 0x3
	.string	"ComM_UserHandleType"
	.byte	0x7
	.byte	0xe2
	.uaword	0x1b6
	.uleb128 0x9
	.byte	0x4
	.uaword	0x514
	.uleb128 0x4
	.byte	0x8
	.byte	0x8
	.byte	0x1c
	.uaword	0x5ba
	.uleb128 0x5
	.string	"ComM_GlobalConfigData_pcs"
	.byte	0x8
	.byte	0x1e
	.uaword	0x519
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"versionInfo"
	.byte	0x8
	.byte	0x1f
	.uaword	0x5ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.uaword	0x5c0
	.uleb128 0x8
	.uaword	0x318
	.uleb128 0x3
	.string	"ComM_ConfigType"
	.byte	0x8
	.byte	0x20
	.uaword	0x577
	.uleb128 0x4
	.byte	0x8
	.byte	0x9
	.byte	0x8d
	.uaword	0x63e
	.uleb128 0x5
	.string	"DirectChannels_pcu8"
	.byte	0x9
	.byte	0x8f
	.uaword	0x571
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"NumDirectChannels_u8"
	.byte	0x9
	.byte	0x93
	.uaword	0x1b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"NumAllChannels_u8"
	.byte	0x9
	.byte	0x94
	.uaword	0x1b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.string	"ComM_UsersType_tst"
	.byte	0x9
	.byte	0x98
	.uaword	0x5dc
	.uleb128 0xb
	.string	"ComM_ChannelTypeStruct"
	.byte	0x18
	.byte	0x9
	.byte	0x9b
	.uaword	0x7c2
	.uleb128 0x5
	.string	"DirectUsers_pcu8"
	.byte	0x9
	.byte	0xa1
	.uaword	0x571
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"AllUsers_pcu8"
	.byte	0x9
	.byte	0xa3
	.uaword	0x571
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"BusType_en"
	.byte	0x9
	.byte	0xa4
	.uaword	0x3fb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"ComMNmVariant_en"
	.byte	0x9
	.byte	0xa5
	.uaword	0x43c
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x5
	.string	"NmLightTimeout_u32"
	.byte	0x9
	.byte	0xa9
	.uaword	0x21d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"TMinFullComModeDuration_u16"
	.byte	0x9
	.byte	0xaa
	.uaword	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x5
	.string	"ComMChannelId_u8"
	.byte	0x9
	.byte	0xae
	.uaword	0x333
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0x5
	.string	"numDirectUsers_u8"
	.byte	0x9
	.byte	0xb3
	.uaword	0x1b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x13
	.uleb128 0x5
	.string	"InhibitionInitValue_u8"
	.byte	0x9
	.byte	0xb4
	.uaword	0x1b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x5
	.string	"numAllUsers_u8"
	.byte	0x9
	.byte	0xb6
	.uaword	0x1b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.uleb128 0x5
	.string	"ComMFullCommRequestNotificationEnabled_b"
	.byte	0x9
	.byte	0xc3
	.uaword	0x268
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.string	"ComM_ChannelType_tst"
	.byte	0x9
	.byte	0xc4
	.uaword	0x658
	.uleb128 0x3
	.string	"ComM_DiagnosticType"
	.byte	0xa
	.byte	0xf3
	.uaword	0x268
	.uleb128 0x6
	.byte	0x1
	.byte	0xa
	.byte	0xf7
	.uaword	0x82b
	.uleb128 0x7
	.string	"COMM_PREVENTWAKEUP"
	.sleb128 0
	.uleb128 0x7
	.string	"COMM_LIMITTONOCOM"
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.string	"ComM_InhibitionType_ten"
	.byte	0xa
	.byte	0xfa
	.uaword	0x7f9
	.uleb128 0xc
	.byte	0x6
	.byte	0xa
	.uahalf	0x109
	.uaword	0x8e1
	.uleb128 0xd
	.string	"ComM_InitStatus_en"
	.byte	0xa
	.uahalf	0x10b
	.uaword	0x36f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"ComM_InhibitCounter_u16"
	.byte	0xa
	.uahalf	0x10d
	.uaword	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xd
	.string	"ComM_EcuGroupClassification_u8"
	.byte	0xa
	.uahalf	0x10e
	.uaword	0x520
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"ComM_LimitECUToNoCom_b"
	.byte	0xa
	.uahalf	0x111
	.uaword	0x268
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0xe
	.string	"ComM_GlobalVarType_tst"
	.byte	0xa
	.uahalf	0x113
	.uaword	0x84a
	.uleb128 0xc
	.byte	0x18
	.byte	0xa
	.uahalf	0x132
	.uaword	0xaf9
	.uleb128 0xd
	.string	"ChannelState_e"
	.byte	0xa
	.uahalf	0x134
	.uaword	0x4f2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"LightTimeoutCtr_u32"
	.byte	0xa
	.uahalf	0x135
	.uaword	0x21d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"MinFullComTimeoutCtr_u16"
	.byte	0xa
	.uahalf	0x136
	.uaword	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"UserRequestCtr_u16"
	.byte	0xa
	.uahalf	0x137
	.uaword	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xd
	.string	"ChannelMode_u8"
	.byte	0xa
	.uahalf	0x138
	.uaword	0x541
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"BusSmMode_u8"
	.byte	0xa
	.uahalf	0x139
	.uaword	0x541
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xd
	.string	"PassiveRequestState_u8"
	.byte	0xa
	.uahalf	0x13d
	.uaword	0x1b6
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xd
	.string	"PncRequestCtr_u8"
	.byte	0xa
	.uahalf	0x13e
	.uaword	0x1b6
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0xd
	.string	"InhibitionReqStatus_u8"
	.byte	0xa
	.uahalf	0x13f
	.uaword	0x520
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"NmNetworkRequestStatus_b"
	.byte	0xa
	.uahalf	0x140
	.uaword	0x268
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0xd
	.string	"DiagnosticRequestState_b"
	.byte	0xa
	.uahalf	0x141
	.uaword	0x7de
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0xd
	.string	"CommunicationAllowed_b"
	.byte	0xa
	.uahalf	0x142
	.uaword	0x268
	.byte	0x2
	.byte	0x23
	.uleb128 0x13
	.uleb128 0xd
	.string	"NmBusSleepIndicationStatus_b"
	.byte	0xa
	.uahalf	0x143
	.uaword	0x268
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"NmPrepareBusSleepIndicationStatus_b"
	.byte	0xa
	.uahalf	0x144
	.uaword	0x268
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.uleb128 0xd
	.string	"NmNetworkModeStatus_b"
	.byte	0xa
	.uahalf	0x145
	.uaword	0x268
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.byte	0
	.uleb128 0xe
	.string	"ComM_ChannelVarType_tst"
	.byte	0xa
	.uahalf	0x149
	.uaword	0x900
	.uleb128 0xc
	.byte	0xa
	.byte	0xa
	.uahalf	0x15c
	.uaword	0xc0e
	.uleb128 0xd
	.string	"WakeUpInhibitionCtr_u16"
	.byte	0xa
	.uahalf	0x15e
	.uaword	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"LimitToNoComCtr_u16"
	.byte	0xa
	.uahalf	0x15f
	.uaword	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xd
	.string	"RequestedUserMode_u8"
	.byte	0xa
	.uahalf	0x160
	.uaword	0x541
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"IndicatedUserMode_u8"
	.byte	0xa
	.uahalf	0x161
	.uaword	0x541
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0xd
	.string	"numChannelsInFullCom_u8"
	.byte	0xa
	.uahalf	0x162
	.uaword	0x1b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xd
	.string	"numChannelsInSilentCom_u8"
	.byte	0xa
	.uahalf	0x163
	.uaword	0x1b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xd
	.string	"numChannelsInNoCom_u8"
	.byte	0xa
	.uahalf	0x164
	.uaword	0x1b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0xe
	.string	"ComM_UserVarType_tst"
	.byte	0xa
	.uahalf	0x165
	.uaword	0xb19
	.uleb128 0xf
	.string	"Bfx_Prv_GetBit_u8u8_u8_Inl"
	.byte	0x2
	.uahalf	0x1fd
	.byte	0x1
	.uaword	0x268
	.byte	0x3
	.uaword	0xc70
	.uleb128 0x10
	.string	"Data"
	.byte	0x2
	.uahalf	0x1fd
	.uaword	0x1b6
	.uleb128 0x10
	.string	"BitPn"
	.byte	0x2
	.uahalf	0x1fd
	.uaword	0x1b6
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"ComM_Init"
	.byte	0x1
	.byte	0x35
	.byte	0x1
	.uaword	.LFB131
	.uaword	.LFE131
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xde3
	.uleb128 0x12
	.string	"config"
	.byte	0x1
	.byte	0x35
	.uaword	0xde3
	.uaword	.LLST0
	.uleb128 0x13
	.string	"ChannelIndex_u8"
	.byte	0x1
	.byte	0x39
	.uaword	0x1b6
	.uaword	.LLST1
	.uleb128 0x13
	.string	"UserIndex_tu8"
	.byte	0x1
	.byte	0x3a
	.uaword	0x556
	.uaword	.LLST2
	.uleb128 0x14
	.string	"channelRamPtr_pst"
	.byte	0x1
	.byte	0x3b
	.uaword	0xdee
	.uleb128 0x14
	.string	"userRamPtr_pst"
	.byte	0x1
	.byte	0x3c
	.uaword	0xdf4
	.uleb128 0x14
	.string	"globalRamPtr_pst"
	.byte	0x1
	.byte	0x48
	.uaword	0xdfa
	.uleb128 0x14
	.string	"userConfigPtr_pcst"
	.byte	0x1
	.byte	0x49
	.uaword	0xe00
	.uleb128 0x14
	.string	"channelConfigPtr_pcst"
	.byte	0x1
	.byte	0x4b
	.uaword	0xe0b
	.uleb128 0x15
	.uaword	0xc2b
	.uaword	.LBB4
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xfa
	.uaword	0xd72
	.uleb128 0x16
	.uaword	0xc61
	.byte	0x1
	.uleb128 0x17
	.uaword	0xc54
	.byte	0
	.uleb128 0x18
	.uaword	.LVL21
	.uaword	0xf0b
	.uaword	0xd8f
	.uleb128 0x19
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x31
	.uleb128 0x19
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x18
	.uaword	.LVL23
	.uaword	0xf0b
	.uaword	0xdac
	.uleb128 0x19
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x31
	.uleb128 0x19
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.uleb128 0x18
	.uaword	.LVL25
	.uaword	0xf0b
	.uaword	0xdc9
	.uleb128 0x19
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x31
	.uleb128 0x19
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL27
	.uaword	0xf0b
	.uleb128 0x19
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x31
	.uleb128 0x19
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.uaword	0xde9
	.uleb128 0x8
	.uaword	0x5c5
	.uleb128 0x9
	.byte	0x4
	.uaword	0xaf9
	.uleb128 0x9
	.byte	0x4
	.uaword	0xc0e
	.uleb128 0x9
	.byte	0x4
	.uaword	0x8e1
	.uleb128 0x9
	.byte	0x4
	.uaword	0xe06
	.uleb128 0x8
	.uaword	0x63e
	.uleb128 0x9
	.byte	0x4
	.uaword	0xe11
	.uleb128 0x8
	.uaword	0x7c2
	.uleb128 0x1b
	.string	"ComM_EcuGroupClassification_Init"
	.byte	0x9
	.uahalf	0x118
	.uaword	0xe41
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.uaword	0x520
	.uleb128 0x1c
	.uaword	0x7c2
	.uaword	0xe51
	.uleb128 0x1d
	.byte	0
	.uleb128 0x1b
	.string	"ComM_ChanelList_acst"
	.byte	0x9
	.uahalf	0x127
	.uaword	0xe70
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.uaword	0xe46
	.uleb128 0x1c
	.uaword	0x63e
	.uaword	0xe80
	.uleb128 0x1d
	.byte	0
	.uleb128 0x1b
	.string	"ComM_UserList_acst"
	.byte	0x9
	.uahalf	0x128
	.uaword	0xe9d
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.uaword	0xe75
	.uleb128 0x1b
	.string	"ComM_GlobalStruct"
	.byte	0xa
	.uahalf	0x1d2
	.uaword	0x8e1
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.uaword	0xaf9
	.uaword	0xec9
	.uleb128 0x1d
	.byte	0
	.uleb128 0x1b
	.string	"ComM_ChannelStruct"
	.byte	0xa
	.uahalf	0x1d5
	.uaword	0xebe
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.uaword	0xc0e
	.uaword	0xef1
	.uleb128 0x1d
	.byte	0
	.uleb128 0x1b
	.string	"ComM_UserStruct"
	.byte	0xa
	.uahalf	0x1db
	.uaword	0xee6
	.byte	0x1
	.byte	0x1
	.uleb128 0x1e
	.byte	0x1
	.string	"ComM_Prv_TranslateInhibitionStatus"
	.byte	0xa
	.uahalf	0x1fe
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.uaword	0x333
	.uleb128 0x1f
	.uaword	0x82b
	.uleb128 0x1f
	.uaword	0x268
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
	.uleb128 0x7
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x1
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
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL1
	.uaword	.LFE131
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LVL7
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL7
	.uaword	.LVL10
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LVL13
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LVL16
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LVL19
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LVL22
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL22
	.uaword	.LVL24
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LVL26
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL26
	.uaword	.LFE131
	.uahalf	0x2
	.byte	0x31
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
	.uaword	.LVL5
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL7
	.uaword	.LFE131
	.uahalf	0x2
	.byte	0x34
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
	.uaword	.LBB4
	.uaword	.LBE4
	.uaword	.LBB8
	.uaword	.LBE8
	.uaword	.LBB9
	.uaword	.LBE9
	.uaword	0
	.uaword	0
	.uaword	.LFB131
	.uaword	.LFE131
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.extern	ComM_Prv_TranslateInhibitionStatus,STT_FUNC,0
	.extern	ComM_UserStruct,STT_OBJECT,-1
	.extern	ComM_UserList_acst,STT_OBJECT,-1
	.extern	ComM_ChannelStruct,STT_OBJECT,-1
	.extern	ComM_ChanelList_acst,STT_OBJECT,-1
	.extern	ComM_EcuGroupClassification_Init,STT_OBJECT,1
	.extern	ComM_GlobalStruct,STT_OBJECT,6
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
