	.file	"Dcm_ExternalServiceProcessing.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Dcm_Confirmation,"ax",@progbits
	.align 1
	.global	Dcm_Confirmation
	.type	Dcm_Confirmation, @function
Dcm_Confirmation:
.LFB20:
	.file 1 "ASW\\ASW_DCM\\src\\Dcm_ExternalServiceProcessing.c"
	.loc 1 67 0
.LVL0:
	ret
.LFE20:
	.size	Dcm_Confirmation, .-Dcm_Confirmation
.section .text.Dcm_ExternalService_CommunicationControl,"ax",@progbits
	.align 1
	.global	Dcm_ExternalService_CommunicationControl
	.type	Dcm_ExternalService_CommunicationControl, @function
Dcm_ExternalService_CommunicationControl:
.LFB21:
	.loc 1 82 0
.LVL1:
	.loc 1 88 0
	ld.w	%d15, [%a4] 16
	.loc 1 82 0
	mov.aa	%a15, %a4
	.loc 1 88 0
	jeq	%d15, 2, .L14
	.loc 1 121 0
	mov	%d4, 19
.LVL2:
	call	Dcm_SetNegResponse
.LVL3:
	.loc 1 125 0
	mov	%d2, 0
	ret
.LVL4:
.L14:
	.loc 1 89 0
	ld.a	%a2, [%a4] 4
	ld.bu	%d15, [%a2]0
.LVL5:
	.loc 1 90 0
	eq	%d2, %d15, 3
	or.eq	%d2, %d15, 0
	jz	%d2, .L4
	.loc 1 91 0
	ld.bu	%d3, [%a2] 1
.LVL6:
	.loc 1 92 0
	sh	%d2, %d3, -4
.LVL7:
	.loc 1 93 0
	and	%d3, %d3, 3
.LVL8:
	jz	%d3, .L5
	.loc 1 93 0 is_stmt 0 discriminator 1
	lt.u	%d3, %d2, 2
	or.eq	%d3, %d2, 15
	jnz	%d3, .L15
.L5:
	.loc 1 112 0 is_stmt 1
	mov.aa	%a4, %a15
.LVL9:
	mov	%d4, 49
.LVL10:
	call	Dcm_SetNegResponse
.LVL11:
	.loc 1 125 0
	mov	%d2, 0
	ret
.LVL12:
.L15:
	.loc 1 107 0
	ld.a	%a2, [%a4]0
.LVL13:
	.loc 1 125 0
	mov	%d2, 0
.LVL14:
	.loc 1 107 0
	st.b	[%a2]0, %d15
.LVL15:
	.loc 1 108 0
	mov	%d15, 1
.LVL16:
	st.w	[%a4] 12, %d15
	.loc 1 125 0
	ret
.LVL17:
.L4:
	.loc 1 117 0
	mov	%d4, 18
.LVL18:
	call	Dcm_SetNegResponse
.LVL19:
	.loc 1 125 0
	mov	%d2, 0
	ret
.LFE21:
	.size	Dcm_ExternalService_CommunicationControl, .-Dcm_ExternalService_CommunicationControl
.section .text.MCU_vSetResetCmd,"ax",@progbits
	.align 1
	.global	MCU_vSetResetCmd
	.type	MCU_vSetResetCmd, @function
MCU_vSetResetCmd:
.LFB22:
	.loc 1 128 0
	.loc 1 129 0
	mov	%d15, -86
	movh.a	%a15, hi:MCU_ResetFlag
	st.b	[%a15] lo:MCU_ResetFlag, %d15
	ret
.LFE22:
	.size	MCU_vSetResetCmd, .-MCU_vSetResetCmd
.section .text.MCU_u8GetResetCmd,"ax",@progbits
	.align 1
	.global	MCU_u8GetResetCmd
	.type	MCU_u8GetResetCmd, @function
MCU_u8GetResetCmd:
.LFB23:
	.loc 1 133 0
	.loc 1 135 0
	movh.a	%a15, hi:MCU_ResetFlag
	ld.bu	%d2, [%a15] lo:MCU_ResetFlag
	ret
.LFE23:
	.size	MCU_u8GetResetCmd, .-MCU_u8GetResetCmd
.section .text.Dcm_ResetServiceProccessing,"ax",@progbits
	.align 1
	.global	Dcm_ResetServiceProccessing
	.type	Dcm_ResetServiceProccessing, @function
Dcm_ResetServiceProccessing:
.LFB24:
	.loc 1 138 0
	.loc 1 141 0
	movh.a	%a15, hi:MCU_ResetFlag
	ld.bu	%d15, [%a15] lo:MCU_ResetFlag
	ne	%d2, %d15, 170
	jz	%d2, .L23
	.loc 1 147 0
	eq	%d15, %d15, 85
	jnz	%d15, .L24
.L18:
	ret
.L24:
	.loc 1 149 0
	movh.a	%a15, hi:ResetDelay.5585
	ld.hu	%d15, [%a15] lo:ResetDelay.5585
	add	%d15, 1
	extr.u	%d15, %d15, 0, 16
	st.h	[%a15] lo:ResetDelay.5585, %d15
	.loc 1 150 0
	ld.hu	%d15, [%a15] lo:ResetDelay.5585
	jlt.u	%d15, 2, .L18
	.loc 1 152 0
	j	Mcu_PerformReset
.LVL20:
.L23:
	.loc 1 144 0
	mov	%d15, 85
	.loc 1 143 0
	mov	%d4, 1
	call	SBC_vidSetDeinitWdgCmd
.LVL21:
	.loc 1 144 0
	st.b	[%a15] lo:MCU_ResetFlag, %d15
	.loc 1 145 0
	mov	%d15, 0
	movh.a	%a15, hi:ResetDelay.5585
	st.h	[%a15] lo:ResetDelay.5585, %d15
	ret
.LFE24:
	.size	Dcm_ResetServiceProccessing, .-Dcm_ResetServiceProccessing
.section .text.Dcm_ExternalServiceProccessing_MainFunction,"ax",@progbits
	.align 1
	.global	Dcm_ExternalServiceProccessing_MainFunction
	.type	Dcm_ExternalServiceProccessing_MainFunction, @function
Dcm_ExternalServiceProccessing_MainFunction:
.LFB25:
	.loc 1 162 0
	.loc 1 168 0
	movh.a	%a15, hi:CommunicationControlActive
	ld.bu	%d15, [%a15] lo:CommunicationControlActive
	.loc 1 162 0
	sub.a	%SP, 8
.LCFI0:
	.loc 1 168 0
	jnz	%d15, .L29
.L25:
	ret
.L29:
	.loc 1 170 0
	lea	%a4, [%SP] 6
	call	Dcm_GetSesCtrlType
.LVL22:
	jnz	%d2, .L25
	.loc 1 170 0 is_stmt 0 discriminator 1
	lea	%a4, [%SP] 7
	call	Dcm_GetSecurityLevel
.LVL23:
	ret
.LFE25:
	.size	Dcm_ExternalServiceProccessing_MainFunction, .-Dcm_ExternalServiceProccessing_MainFunction
.section .text.Dcm_ExternalServiceProccessing_Init,"ax",@progbits
	.align 1
	.global	Dcm_ExternalServiceProccessing_Init
	.type	Dcm_ExternalServiceProccessing_Init, @function
Dcm_ExternalServiceProccessing_Init:
.LFB26:
	.loc 1 191 0 is_stmt 1
	ret
.LFE26:
	.size	Dcm_ExternalServiceProccessing_Init, .-Dcm_ExternalServiceProccessing_Init
.section .bss.a2.ResetDelay.5585,"aw",@nobits
	.align 1
	.type	ResetDelay.5585, @object
	.size	ResetDelay.5585, 2
ResetDelay.5585:
	.zero	2
	.global	MCU_ResetFlag
.section .bss.a1.MCU_ResetFlag,"aw",@nobits
	.type	MCU_ResetFlag, @object
	.size	MCU_ResetFlag, 1
MCU_ResetFlag:
	.zero	1
	.global	CommunicationControlActive
.section .bss.a1.CommunicationControlActive,"aw",@nobits
	.type	CommunicationControlActive, @object
	.size	CommunicationControlActive, 1
CommunicationControlActive:
	.zero	1
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
	.uaword	.LFB20
	.uaword	.LFE20-.LFB20
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB21
	.uaword	.LFE21-.LFB21
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB22
	.uaword	.LFE22-.LFB22
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB23
	.uaword	.LFE23-.LFB23
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB24
	.uaword	.LFE24-.LFB24
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB25
	.uaword	.LFE25-.LFB25
	.byte	0x4
	.uaword	.LCFI0-.LFB25
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB26
	.uaword	.LFE26-.LFB26
	.align 2
.LEFDE12:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 4 ".\\output\\inc/..\\..\\bsw\\ComStack\\ComStack_Cfg.h"
	.file 5 ".\\output\\inc/..\\..\\rte\\Rte_Type.h"
	.file 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmCore_DslDsd_Pub.h"
	.file 7 ".\\output\\inc/..\\..\\bswcdd\\SBC\\SBC.h"
	.file 8 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x931
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"ASW\\ASW_DCM\\src\\Dcm_ExternalServiceProcessing.c"
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
	.uaword	0x1da
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
	.uaword	0x206
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
	.uaword	0x242
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
	.uaword	0x1da
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
	.uaword	0x1cd
	.uleb128 0x3
	.string	"PduIdType"
	.byte	0x4
	.byte	0x2c
	.uaword	0x1f8
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x4
	.string	"Dcm_ConfirmationStatusType"
	.byte	0x5
	.uahalf	0x107
	.uaword	0x1cd
	.uleb128 0x4
	.string	"Dcm_NegativeResponseCodeType"
	.byte	0x5
	.uahalf	0x118
	.uaword	0x1cd
	.uleb128 0x4
	.string	"Dcm_SecLevelType"
	.byte	0x5
	.uahalf	0x122
	.uaword	0x1cd
	.uleb128 0x4
	.string	"Dcm_SesCtrlType"
	.byte	0x5
	.uahalf	0x124
	.uaword	0x1cd
	.uleb128 0x5
	.byte	0x4
	.uaword	0x305
	.uleb128 0x3
	.string	"Dcm_SrvOpStatusType"
	.byte	0x6
	.byte	0x3e
	.uaword	0x1cd
	.uleb128 0x4
	.string	"Dcm_MsgItemType"
	.byte	0x6
	.uahalf	0x102
	.uaword	0x1cd
	.uleb128 0x4
	.string	"Dcm_MsgType"
	.byte	0x6
	.uahalf	0x108
	.uaword	0x3a8
	.uleb128 0x5
	.byte	0x4
	.uaword	0x37c
	.uleb128 0x4
	.string	"Dcm_MsgLenType"
	.byte	0x6
	.uahalf	0x111
	.uaword	0x234
	.uleb128 0x6
	.byte	0x4
	.byte	0x6
	.uahalf	0x11a
	.uaword	0x41c
	.uleb128 0x7
	.string	"reqType"
	.byte	0x6
	.uahalf	0x11e
	.uaword	0x1cd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"suppressPosResponse"
	.byte	0x6
	.uahalf	0x122
	.uaword	0x27f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x7
	.string	"sourceofRequest"
	.byte	0x6
	.uahalf	0x126
	.uaword	0x1cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x4
	.string	"Dcm_MsgAddInfoType"
	.byte	0x6
	.uahalf	0x127
	.uaword	0x3c5
	.uleb128 0x4
	.string	"Dcm_IdContextType"
	.byte	0x6
	.uahalf	0x12d
	.uaword	0x1cd
	.uleb128 0x6
	.byte	0x1c
	.byte	0x6
	.uahalf	0x13c
	.uaword	0x4fa
	.uleb128 0x7
	.string	"resData"
	.byte	0x6
	.uahalf	0x143
	.uaword	0x394
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"reqData"
	.byte	0x6
	.uahalf	0x149
	.uaword	0x394
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"msgAddInfo"
	.byte	0x6
	.uahalf	0x14f
	.uaword	0x41c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"resDataLen"
	.byte	0x6
	.uahalf	0x155
	.uaword	0x3ae
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"reqDataLen"
	.byte	0x6
	.uahalf	0x15a
	.uaword	0x3ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"resMaxDataLen"
	.byte	0x6
	.uahalf	0x16c
	.uaword	0x3ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x6
	.uahalf	0x177
	.uaword	0x437
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x6
	.uahalf	0x186
	.uaword	0x2c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.byte	0
	.uleb128 0x4
	.string	"Dcm_MsgContextType"
	.byte	0x6
	.uahalf	0x188
	.uaword	0x451
	.uleb128 0x5
	.byte	0x4
	.uaword	0x4fa
	.uleb128 0x9
	.string	"ResetCommunicationControl"
	.byte	0x1
	.byte	0x34
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.byte	0x1
	.string	"Dcm_Confirmation"
	.byte	0x1
	.byte	0x42
	.byte	0x1
	.uaword	.LFB20
	.uaword	.LFE20
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x58b
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0x1
	.byte	0x42
	.uaword	0x437
	.byte	0x1
	.byte	0x54
	.uleb128 0xb
	.uaword	.LASF1
	.byte	0x1
	.byte	0x42
	.uaword	0x2c5
	.byte	0x1
	.byte	0x55
	.uleb128 0xc
	.string	"status"
	.byte	0x1
	.byte	0x42
	.uaword	0x2e2
	.byte	0x1
	.byte	0x56
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.string	"Dcm_ExternalService_CommunicationControl"
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.uaword	0x2af
	.uaword	.LFB21
	.uaword	.LFE21
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x699
	.uleb128 0xe
	.string	"OpStatus"
	.byte	0x1
	.byte	0x51
	.uaword	0x361
	.uaword	.LLST0
	.uleb128 0xe
	.string	"pMsgContext"
	.byte	0x1
	.byte	0x51
	.uaword	0x515
	.uaword	.LLST1
	.uleb128 0xe
	.string	"dataNegRespCode_u8"
	.byte	0x1
	.byte	0x51
	.uaword	0x35b
	.uaword	.LLST2
	.uleb128 0xf
	.string	"subFunction"
	.byte	0x1
	.byte	0x54
	.uaword	0x1cd
	.uaword	.LLST3
	.uleb128 0xf
	.string	"affectedCom"
	.byte	0x1
	.byte	0x55
	.uaword	0x1cd
	.uaword	.LLST4
	.uleb128 0xf
	.string	"subnet"
	.byte	0x1
	.byte	0x56
	.uaword	0x1cd
	.uaword	.LLST5
	.uleb128 0x10
	.uaword	.LVL3
	.uaword	0x85e
	.uaword	0x66f
	.uleb128 0x11
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x43
	.uleb128 0x11
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.uaword	.LVL11
	.uaword	0x85e
	.uaword	0x689
	.uleb128 0x11
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x31
	.uleb128 0x11
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.uaword	.LVL19
	.uaword	0x85e
	.uleb128 0x11
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x42
	.byte	0
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"MCU_vSetResetCmd"
	.byte	0x1
	.byte	0x7f
	.byte	0x1
	.uaword	.LFB22
	.uaword	.LFE22
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x14
	.byte	0x1
	.string	"MCU_u8GetResetCmd"
	.byte	0x1
	.byte	0x84
	.byte	0x1
	.uaword	0x1cd
	.uaword	.LFB23
	.uaword	.LFE23
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xa
	.byte	0x1
	.string	"Dcm_ResetServiceProccessing"
	.byte	0x1
	.byte	0x89
	.byte	0x1
	.uaword	.LFB24
	.uaword	.LFE24
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x745
	.uleb128 0x15
	.string	"ResetDelay"
	.byte	0x1
	.byte	0x8b
	.uaword	0x745
	.byte	0x5
	.byte	0x3
	.uaword	ResetDelay.5585
	.uleb128 0x16
	.uaword	.LVL20
	.byte	0x1
	.uaword	0x892
	.uleb128 0x12
	.uaword	.LVL21
	.uaword	0x8aa
	.uleb128 0x11
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x17
	.uaword	0x1f8
	.uleb128 0x18
	.byte	0x1
	.string	"Dcm_ExternalServiceProccessing_MainFunction"
	.byte	0x1
	.byte	0xa1
	.byte	0x1
	.uaword	.LFB25
	.uaword	.LFE25
	.uaword	.LLST6
	.byte	0x1
	.uaword	0x7e4
	.uleb128 0x15
	.string	"currentSession"
	.byte	0x1
	.byte	0xa3
	.uaword	0x343
	.byte	0x2
	.byte	0x91
	.sleb128 -2
	.uleb128 0x15
	.string	"currentSecLevel"
	.byte	0x1
	.byte	0xa4
	.uaword	0x32a
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x10
	.uaword	.LVL22
	.uaword	0x8d6
	.uaword	0x7d3
	.uleb128 0x11
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -2
	.byte	0
	.uleb128 0x12
	.uaword	.LVL23
	.uaword	0x904
	.uleb128 0x11
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.byte	0
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"Dcm_ExternalServiceProccessing_Init"
	.byte	0x1
	.byte	0xbe
	.byte	0x1
	.uaword	.LFB26
	.uaword	.LFE26
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x19
	.string	"CommunicationControlActive"
	.byte	0x1
	.byte	0x29
	.uaword	0x27f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CommunicationControlActive
	.uleb128 0x19
	.string	"MCU_ResetFlag"
	.byte	0x1
	.byte	0x2c
	.uaword	0x1cd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MCU_ResetFlag
	.uleb128 0x1a
	.byte	0x1
	.string	"Dcm_SetNegResponse"
	.byte	0x6
	.uahalf	0x462
	.byte	0x1
	.byte	0x1
	.uaword	0x887
	.uleb128 0x1b
	.uaword	0x887
	.uleb128 0x1b
	.uaword	0x305
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x88d
	.uleb128 0x1c
	.uaword	0x4fa
	.uleb128 0x1d
	.byte	0x1
	.string	"Mcu_PerformReset"
	.byte	0x8
	.uahalf	0x3a2
	.byte	0x1
	.byte	0x1
	.uleb128 0x1e
	.byte	0x1
	.string	"SBC_vidSetDeinitWdgCmd"
	.byte	0x7
	.byte	0x68
	.byte	0x1
	.byte	0x1
	.uaword	0x8d1
	.uleb128 0x1b
	.uaword	0x8d1
	.byte	0
	.uleb128 0x1c
	.uaword	0x27f
	.uleb128 0x1f
	.byte	0x1
	.string	"Dcm_GetSesCtrlType"
	.byte	0x6
	.uahalf	0x557
	.byte	0x1
	.uaword	0x2af
	.byte	0x1
	.uaword	0x8fe
	.uleb128 0x1b
	.uaword	0x8fe
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x343
	.uleb128 0x1f
	.byte	0x1
	.string	"Dcm_GetSecurityLevel"
	.byte	0x6
	.uahalf	0x55e
	.byte	0x1
	.uaword	0x2af
	.byte	0x1
	.uaword	0x92e
	.uleb128 0x1b
	.uaword	0x92e
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x32a
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
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0xa
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
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x35
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
	.uleb128 0x19
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
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
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL1
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
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL10
	.uaword	.LVL12
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL18
	.uaword	.LFE21
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL1
	.uaword	.LVL3-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL3-1
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL4
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL9
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL12
	.uaword	.LVL19-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL19-1
	.uaword	.LFE21
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL1
	.uaword	.LVL3-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL3-1
	.uaword	.LVL4
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LVL11-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL11-1
	.uaword	.LVL12
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LVL19-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL19-1
	.uaword	.LFE21
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL5
	.uaword	.LVL11-1
	.uahalf	0x2
	.byte	0x82
	.sleb128 0
	.uaword	.LVL11-1
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x2
	.byte	0x82
	.sleb128 0
	.uaword	.LVL13
	.uaword	.LVL15
	.uahalf	0x3
	.byte	0x84
	.sleb128 4
	.byte	0x6
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL17
	.uaword	.LVL19-1
	.uahalf	0x2
	.byte	0x82
	.sleb128 0
	.uaword	.LVL19-1
	.uaword	.LFE21
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL6
	.uaword	.LVL8
	.uahalf	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x33
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL8
	.uaword	.LVL11-1
	.uahalf	0x7
	.byte	0x82
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x33
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x7
	.byte	0x82
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x33
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LVL15
	.uahalf	0xa
	.byte	0x84
	.sleb128 4
	.byte	0x6
	.byte	0x23
	.uleb128 0x1
	.byte	0x94
	.byte	0x1
	.byte	0x33
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL7
	.uaword	.LVL11-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL12
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0xa
	.byte	0x84
	.sleb128 4
	.byte	0x6
	.byte	0x23
	.uleb128 0x1
	.byte	0x94
	.byte	0x1
	.byte	0x34
	.byte	0x25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LFB25
	.uaword	.LCFI0
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0
	.uaword	.LFE25
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x4c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB20
	.uaword	.LFE20-.LFB20
	.uaword	.LFB21
	.uaword	.LFE21-.LFB21
	.uaword	.LFB22
	.uaword	.LFE22-.LFB22
	.uaword	.LFB23
	.uaword	.LFE23-.LFB23
	.uaword	.LFB24
	.uaword	.LFE24-.LFB24
	.uaword	.LFB25
	.uaword	.LFE25-.LFB25
	.uaword	.LFB26
	.uaword	.LFE26-.LFB26
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB20
	.uaword	.LFE20
	.uaword	.LFB21
	.uaword	.LFE21
	.uaword	.LFB22
	.uaword	.LFE22
	.uaword	.LFB23
	.uaword	.LFE23
	.uaword	.LFB24
	.uaword	.LFE24
	.uaword	.LFB25
	.uaword	.LFE25
	.uaword	.LFB26
	.uaword	.LFE26
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF1:
	.string	"dcmRxPduId"
.LASF0:
	.string	"idContext"
	.extern	Dcm_GetSecurityLevel,STT_FUNC,0
	.extern	Dcm_GetSesCtrlType,STT_FUNC,0
	.extern	SBC_vidSetDeinitWdgCmd,STT_FUNC,0
	.extern	Mcu_PerformReset,STT_FUNC,0
	.extern	Dcm_SetNegResponse,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
