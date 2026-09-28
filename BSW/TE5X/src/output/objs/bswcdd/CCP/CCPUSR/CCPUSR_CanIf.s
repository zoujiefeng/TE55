	.file	"CCPUSR_CanIf.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	CCP_vidUsrTxCmdResp
	.type	CCP_vidUsrTxCmdResp, @function
CCP_vidUsrTxCmdResp:
.LFB32:
	.file 1 "bswcdd\\CCP\\CCPUSR\\CCPUSR_CanIf.c"
	.loc 1 77 0
.LVL0:
	sub.a	%SP, 16
.LCFI0:
	.loc 1 78 0
	movh.a	%a15, hi:CCPUSR_kaudtDtoMsgID
.LBB6:
.LBB7:
	.loc 1 68 0
	st.a	[%SP] 4, %a4
	.loc 1 69 0
	mov	%d15, 8
.LBE7:
.LBE6:
	.loc 1 78 0
	ld.hu	%d4, [%a15] lo:CCPUSR_kaudtDtoMsgID
.LVL1:
.LBB9:
.LBB8:
	.loc 1 70 0
	lea	%a4, [%SP] 4
.LVL2:
	.loc 1 69 0
	st.h	[%SP] 12, %d15
	.loc 1 70 0
	j	CanIf_Transmit
.LVL3:
.LBE8:
.LBE9:
.LFE32:
	.size	CCP_vidUsrTxCmdResp, .-CCP_vidUsrTxCmdResp
	.align 1
	.global	CCPUSR_vidSendDaqMessage
	.type	CCPUSR_vidSendDaqMessage, @function
CCPUSR_vidSendDaqMessage:
.LFB33:
	.loc 1 86 0
.LVL4:
	.loc 1 87 0
	movh.a	%a15, hi:CCPUSR_kaudtDaqMsgID
	lea	%a15, [%a15] lo:CCPUSR_kaudtDaqMsgID
	addsc.a	%a15, %a15, %d4, 1
	.loc 1 86 0
	sub.a	%SP, 16
.LCFI1:
.LBB10:
.LBB11:
	.loc 1 68 0
	st.a	[%SP] 4, %a4
	.loc 1 69 0
	mov	%d15, 8
.LBE11:
.LBE10:
	.loc 1 87 0
	ld.hu	%d4, [%a15]0
.LVL5:
.LBB13:
.LBB12:
	.loc 1 70 0
	lea	%a4, [%SP] 4
.LVL6:
	.loc 1 69 0
	st.h	[%SP] 12, %d15
	.loc 1 70 0
	j	CanIf_Transmit
.LVL7:
.LBE12:
.LBE13:
.LFE33:
	.size	CCPUSR_vidSendDaqMessage, .-CCPUSR_vidSendDaqMessage
	.align 1
	.global	CCP_vidUsrRxCmd
	.type	CCP_vidUsrRxCmd, @function
CCP_vidUsrRxCmd:
.LFB34:
	.loc 1 95 0
.LVL8:
	movh.a	%a2, hi:CCPUSR_au8RxMessageData
	lea	%a15, [%a2] lo:CCPUSR_au8RxMessageData
	mov.d	%d2, %a15
	mov.d	%d15, %a4
	mov.d	%d3, %a4
	or	%d15, %d2
	movh.a	%a3, hi:CCPUSR_au8RxMessageData+4
	and	%d15, %d15, 3
	lea	%a3, [%a3] lo:CCPUSR_au8RxMessageData+4
	mov.d	%d4, %a15
	eq	%d2, %d15, 0
	add	%d3, 4
	ge.a	%d15, %a4, %a3
	or.ge.u	%d15, %d4, %d3
	and	%d15, %d2
	jz	%d15, .L4
.LVL9:
	.loc 1 101 0
	ld.bu	%d3, [%a15] 1
	ld.bu	%d2, [%a2] lo:CCPUSR_au8RxMessageData
	sh	%d15, %d3, 8
	or	%d3, %d15, %d2
	ld.bu	%d15, [%a15] 2
	sh	%d15, %d15, 16
	or	%d2, %d15, %d3
	ld.bu	%d15, [%a15] 3
	sh	%d15, %d15, 24
	or	%d15, %d2
	st.w	[%a4]0, %d15
	ld.bu	%d3, [%a15] 5
	ld.bu	%d2, [%a15] 4
	sh	%d15, %d3, 8
	or	%d3, %d15, %d2
	ld.bu	%d15, [%a15] 6
	sh	%d15, %d15, 16
	or	%d2, %d15, %d3
	ld.bu	%d15, [%a15] 7
	sh	%d15, %d15, 24
	or	%d15, %d2
	st.w	[%a4] 4, %d15
	ret
.LVL10:
.L4:
	ld.bu	%d15, [%a2] lo:CCPUSR_au8RxMessageData
	st.b	[%a4]0, %d15
.LVL11:
	ld.bu	%d15, [%a15] 1
	st.b	[%a4] 1, %d15
.LVL12:
	ld.bu	%d15, [%a15] 2
	st.b	[%a4] 2, %d15
.LVL13:
	ld.bu	%d15, [%a15] 3
	st.b	[%a4] 3, %d15
.LVL14:
	ld.bu	%d15, [%a15] 4
	st.b	[%a4] 4, %d15
.LVL15:
	ld.bu	%d15, [%a15] 5
	st.b	[%a4] 5, %d15
.LVL16:
	ld.bu	%d15, [%a15] 6
	st.b	[%a4] 6, %d15
.LVL17:
	ld.bu	%d15, [%a15] 7
	st.b	[%a4] 7, %d15
.LVL18:
	ret
.LFE34:
	.size	CCP_vidUsrRxCmd, .-CCP_vidUsrRxCmd
	.align 1
	.global	CCPUSR_vidRxIndication_CRO
	.type	CCPUSR_vidRxIndication_CRO, @function
CCPUSR_vidRxIndication_CRO:
.LFB35:
	.loc 1 109 0
.LVL19:
	ld.a	%a2, [%a4]0
	movh.a	%a3, hi:CCPUSR_au8RxMessageData
	lea	%a15, [%a3] lo:CCPUSR_au8RxMessageData
	mov.d	%d2, %a15
	mov.d	%d15, %a2
	mov.d	%d3, %a2
	or	%d15, %d2
	movh.a	%a4, hi:CCPUSR_au8RxMessageData+4
.LVL20:
	and	%d15, %d15, 3
	lea	%a4, [%a4] lo:CCPUSR_au8RxMessageData+4
	mov.d	%d4, %a15
.LVL21:
	eq	%d2, %d15, 0
	add	%d3, 4
	ge.a	%d15, %a2, %a4
	or.ge.u	%d15, %d4, %d3
	and	%d15, %d2
	jz	%d15, .L8
.LVL22:
	.loc 1 120 0
	ld.w	%d15, [%a2]0
	extr.u	%d2, %d15, 8, 8
	st.b	[%a3] lo:CCPUSR_au8RxMessageData, %d15
	st.b	[%a15] 1, %d2
	extr.u	%d2, %d15, 16, 8
	sh	%d15, %d15, -24
	st.b	[%a15] 2, %d2
	st.b	[%a15] 3, %d15
	ld.w	%d15, [%a2] 4
	extr.u	%d2, %d15, 8, 8
	st.b	[%a15] 4, %d15
	st.b	[%a15] 5, %d2
	extr.u	%d2, %d15, 16, 8
	sh	%d15, %d15, -24
	st.b	[%a15] 6, %d2
	st.b	[%a15] 7, %d15
	.loc 1 123 0
	j	CCP_vidMonr
.LVL23:
.L8:
	.loc 1 120 0
	ld.bu	%d15, [%a2]0
	st.b	[%a3] lo:CCPUSR_au8RxMessageData, %d15
.LVL24:
	ld.bu	%d15, [%a2] 1
	st.b	[%a15] 1, %d15
.LVL25:
	ld.bu	%d15, [%a2] 2
	st.b	[%a15] 2, %d15
.LVL26:
	ld.bu	%d15, [%a2] 3
	st.b	[%a15] 3, %d15
.LVL27:
	ld.bu	%d15, [%a2] 4
	st.b	[%a15] 4, %d15
.LVL28:
	ld.bu	%d15, [%a2] 5
	st.b	[%a15] 5, %d15
.LVL29:
	ld.bu	%d15, [%a2] 6
	st.b	[%a15] 6, %d15
.LVL30:
	ld.bu	%d15, [%a2] 7
	st.b	[%a15] 7, %d15
.LVL31:
	.loc 1 123 0
	j	CCP_vidMonr
.LVL32:
.LFE35:
	.size	CCPUSR_vidRxIndication_CRO, .-CCPUSR_vidRxIndication_CRO
	.align 1
	.global	CCPUSR_vidTxConfirmation_DTO
	.type	CCPUSR_vidTxConfirmation_DTO, @function
CCPUSR_vidTxConfirmation_DTO:
.LFB36:
	.loc 1 130 0
.LVL33:
	.loc 1 135 0
	movh.a	%a15, hi:CCPUSR_enuCalStoreStatus
	ld.bu	%d15, [%a15] lo:CCPUSR_enuCalStoreStatus
	jeq	%d15, 2, .L12
	ret
.L12:
	.loc 1 137 0
	mov	%d15, 4
	st.b	[%a15] lo:CCPUSR_enuCalStoreStatus, %d15
	ret
.LFE36:
	.size	CCPUSR_vidTxConfirmation_DTO, .-CCPUSR_vidTxConfirmation_DTO
	.global	CCPUSR_au8RxMessageData
.section .data_cpu0.CCPUSR_au8RxMessageData,"aw",@progbits
	.type	CCPUSR_au8RxMessageData, @object
	.size	CCPUSR_au8RxMessageData, 8
CCPUSR_au8RxMessageData:
	.zero	8
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
	.uaword	.LFB32
	.uaword	.LFE32-.LFB32
	.byte	0x4
	.uaword	.LCFI0-.LFB32
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB33
	.uaword	.LFE33-.LFB33
	.byte	0x4
	.uaword	.LCFI1-.LFB33
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB34
	.uaword	.LFE34-.LFB34
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB35
	.uaword	.LFE35-.LFB35
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB36
	.uaword	.LFE36-.LFB36
	.align 2
.LEFDE8:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 4 ".\\output\\inc/..\\..\\bsw\\ComStack\\ComStack_Cfg.h"
	.file 5 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_Cfg.h"
	.file 6 "bswcdd\\CCP\\CCPUSR\\CCPUSR_Cfg.h"
	.file 7 "bswcdd\\CCP\\CCPUSR\\CCPUSR.h"
	.file 8 ".\\output\\inc/..\\..\\bsw\\CanIf\\api\\CanIf.h"
	.file 9 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x701
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\CCP\\CCPUSR\\CCPUSR_CanIf.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ltext0
	.uaword	.Letext0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x2
	.byte	0x51
	.uaword	0x1c7
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
	.uaword	0x1f3
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x3
	.string	"uint8_least"
	.byte	0x2
	.byte	0x8a
	.uaword	0x27d
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x3
	.string	"Std_ReturnType"
	.byte	0x3
	.byte	0x60
	.uaword	0x1ba
	.uleb128 0x3
	.string	"PduIdType"
	.byte	0x4
	.byte	0x2c
	.uaword	0x1e5
	.uleb128 0x3
	.string	"PduLengthType"
	.byte	0x4
	.byte	0x30
	.uaword	0x1e5
	.uleb128 0x4
	.byte	0xc
	.byte	0x4
	.byte	0x39
	.uaword	0x316
	.uleb128 0x5
	.string	"SduDataPtr"
	.byte	0x4
	.byte	0x3b
	.uaword	0x316
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"MetaDataPtr"
	.byte	0x4
	.byte	0x3c
	.uaword	0x316
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"SduLength"
	.byte	0x4
	.byte	0x3d
	.uaword	0x2b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x1ba
	.uleb128 0x3
	.string	"PduInfoType"
	.byte	0x4
	.byte	0x3e
	.uaword	0x2ce
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x6
	.byte	0x4
	.uaword	0x341
	.uleb128 0x7
	.uaword	0x1ba
	.uleb128 0x6
	.byte	0x4
	.uaword	0x34c
	.uleb128 0x7
	.uaword	0x31c
	.uleb128 0x8
	.string	"CCPUSR_vidSendMessage"
	.byte	0x1
	.byte	0x3f
	.byte	0x1
	.byte	0x3
	.uaword	0x3ad
	.uleb128 0x9
	.string	"CanTxPduId"
	.byte	0x1
	.byte	0x3f
	.uaword	0x2a8
	.uleb128 0x9
	.string	"pu8DataToSend"
	.byte	0x1
	.byte	0x3f
	.uaword	0x33b
	.uleb128 0xa
	.string	"strLocPduInfo"
	.byte	0x1
	.byte	0x41
	.uaword	0x31c
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"CCP_vidUsrTxCmdResp"
	.byte	0x1
	.byte	0x4c
	.byte	0x1
	.uaword	.LFB32
	.uaword	.LFE32
	.uaword	.LLST0
	.byte	0x1
	.uaword	0x424
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x1
	.byte	0x4c
	.uaword	0x33b
	.uaword	.LLST1
	.uleb128 0xd
	.uaword	0x351
	.uaword	.LBB6
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x4e
	.uleb128 0xe
	.uaword	0x382
	.uaword	.LLST2
	.uleb128 0xf
	.uaword	0x370
	.uleb128 0x10
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x11
	.uaword	0x397
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x12
	.uaword	.LVL3
	.byte	0x1
	.uaword	0x6ca
	.uleb128 0x13
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"CCPUSR_vidSendDaqMessage"
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.uaword	.LFB33
	.uaword	.LFE33
	.uaword	.LLST3
	.byte	0x1
	.uaword	0x4be
	.uleb128 0x14
	.string	"u8DaqId"
	.byte	0x1
	.byte	0x55
	.uaword	0x1ba
	.uaword	.LLST4
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x1
	.byte	0x55
	.uaword	0x33b
	.uaword	.LLST5
	.uleb128 0xd
	.uaword	0x351
	.uaword	.LBB10
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x57
	.uleb128 0xe
	.uaword	0x382
	.uaword	.LLST6
	.uleb128 0x15
	.uaword	0x370
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x10
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0x11
	.uaword	0x397
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x12
	.uaword	.LVL7
	.byte	0x1
	.uaword	0x6ca
	.uleb128 0x13
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x13
	.byte	0x1
	.byte	0x54
	.byte	0x4
	.byte	0x8f
	.sleb128 0
	.byte	0x94
	.byte	0x2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.string	"CCP_vidUsrRxCmd"
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.uaword	.LFB34
	.uaword	.LFE34
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x50f
	.uleb128 0x17
	.string	"au8Data"
	.byte	0x1
	.byte	0x5e
	.uaword	0x316
	.byte	0x1
	.byte	0x64
	.uleb128 0x18
	.string	"u8LocByteIndex"
	.byte	0x1
	.byte	0x60
	.uaword	0x26a
	.uaword	.LLST7
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.string	"CCPUSR_vidRxIndication_CRO"
	.byte	0x1
	.byte	0x6c
	.byte	0x1
	.uaword	.LFB35
	.uaword	.LFE35
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x595
	.uleb128 0x14
	.string	"RxPduId"
	.byte	0x1
	.byte	0x6c
	.uaword	0x2a8
	.uaword	.LLST8
	.uleb128 0x14
	.string	"PduInfoPtr"
	.byte	0x1
	.byte	0x6c
	.uaword	0x346
	.uaword	.LLST9
	.uleb128 0x18
	.string	"u8LocCounter"
	.byte	0x1
	.byte	0x6e
	.uaword	0x26a
	.uaword	.LLST10
	.uleb128 0x19
	.uaword	.LVL23
	.byte	0x1
	.uaword	0x6f2
	.uleb128 0x19
	.uaword	.LVL32
	.byte	0x1
	.uaword	0x6f2
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.string	"CCPUSR_vidTxConfirmation_DTO"
	.byte	0x1
	.byte	0x81
	.byte	0x1
	.uaword	.LFB36
	.uaword	.LFE36
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x5d9
	.uleb128 0x17
	.string	"TxPduId"
	.byte	0x1
	.byte	0x81
	.uaword	0x2a8
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x1a
	.uaword	0x1ba
	.uaword	0x5e9
	.uleb128 0x1b
	.uaword	0x32f
	.byte	0xb
	.byte	0
	.uleb128 0x1c
	.string	"CCP_kaudtDevId"
	.byte	0x5
	.byte	0x81
	.uaword	0x601
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.uaword	0x5d9
	.uleb128 0x1a
	.uaword	0x2a8
	.uaword	0x616
	.uleb128 0x1b
	.uaword	0x32f
	.byte	0
	.byte	0
	.uleb128 0x1c
	.string	"CCPUSR_kaudtDtoMsgID"
	.byte	0x6
	.byte	0x47
	.uaword	0x634
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.uaword	0x606
	.uleb128 0x1a
	.uaword	0x2a8
	.uaword	0x64f
	.uleb128 0x1b
	.uaword	0x32f
	.byte	0
	.uleb128 0x1b
	.uaword	0x32f
	.byte	0x2
	.byte	0
	.uleb128 0x1c
	.string	"CCPUSR_kaudtDaqMsgID"
	.byte	0x6
	.byte	0x4a
	.uaword	0x66d
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.uaword	0x639
	.uleb128 0x1c
	.string	"CCPUSR_enuCalStoreStatus"
	.byte	0x7
	.byte	0x2d
	.uaword	0x1ba
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.uaword	0x1ba
	.uaword	0x6a4
	.uleb128 0x1b
	.uaword	0x32f
	.byte	0x7
	.byte	0
	.uleb128 0x1d
	.string	"CCPUSR_au8RxMessageData"
	.byte	0x1
	.byte	0x30
	.uaword	0x694
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CCPUSR_au8RxMessageData
	.uleb128 0x1e
	.byte	0x1
	.string	"CanIf_Transmit"
	.byte	0x8
	.byte	0x5b
	.byte	0x1
	.uaword	0x292
	.byte	0x1
	.uaword	0x6f2
	.uleb128 0x1f
	.uaword	0x2a8
	.uleb128 0x1f
	.uaword	0x346
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.string	"CCP_vidMonr"
	.byte	0x9
	.byte	0x73
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LFB32-.text
	.uaword	.LCFI0-.text
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0-.text
	.uaword	.LFE32-.text
	.uahalf	0x2
	.byte	0x8a
	.sleb128 16
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0-.text
	.uaword	.LVL2-.text
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL2-.text
	.uaword	.LVL3-1-.text
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL3-1-.text
	.uaword	.LFE32-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL1-.text
	.uaword	.LVL2-.text
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL2-.text
	.uaword	.LVL3-1-.text
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL3-1-.text
	.uaword	.LFE32-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LFB33-.text
	.uaword	.LCFI1-.text
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI1-.text
	.uaword	.LFE33-.text
	.uahalf	0x2
	.byte	0x8a
	.sleb128 16
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL4-.text
	.uaword	.LVL5-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL5-.text
	.uaword	.LFE33-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL4-.text
	.uaword	.LVL6-.text
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL6-.text
	.uaword	.LVL7-1-.text
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL7-1-.text
	.uaword	.LFE33-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL5-.text
	.uaword	.LVL6-.text
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL6-.text
	.uaword	.LVL7-1-.text
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL7-1-.text
	.uaword	.LFE33-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL8-.text
	.uaword	.LVL9-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL10-.text
	.uaword	.LVL11-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL11-.text
	.uaword	.LVL12-.text
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL12-.text
	.uaword	.LVL13-.text
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL13-.text
	.uaword	.LVL14-.text
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL14-.text
	.uaword	.LVL15-.text
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL15-.text
	.uaword	.LVL16-.text
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL16-.text
	.uaword	.LVL17-.text
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	.LVL17-.text
	.uaword	.LVL18-.text
	.uahalf	0x2
	.byte	0x37
	.byte	0x9f
	.uaword	.LVL18-.text
	.uaword	.LFE34-.text
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL19-.text
	.uaword	.LVL21-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL21-.text
	.uaword	.LFE35-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL19-.text
	.uaword	.LVL20-.text
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL20-.text
	.uaword	.LFE35-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL19-.text
	.uaword	.LVL22-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL23-.text
	.uaword	.LVL24-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL24-.text
	.uaword	.LVL25-.text
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL25-.text
	.uaword	.LVL26-.text
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL26-.text
	.uaword	.LVL27-.text
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL27-.text
	.uaword	.LVL28-.text
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL28-.text
	.uaword	.LVL29-.text
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL29-.text
	.uaword	.LVL30-.text
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	.LVL30-.text
	.uaword	.LVL31-.text
	.uahalf	0x2
	.byte	0x37
	.byte	0x9f
	.uaword	.LVL31-.text
	.uaword	.LFE35-.text
	.uahalf	0x2
	.byte	0x38
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
	.uaword	.Ltext0
	.uaword	.Letext0-.Ltext0
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB6-.Ltext0
	.uaword	.LBE6-.Ltext0
	.uaword	.LBB9-.Ltext0
	.uaword	.LBE9-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB10-.Ltext0
	.uaword	.LBE10-.Ltext0
	.uaword	.LBB13-.Ltext0
	.uaword	.LBE13-.Ltext0
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"aku8Data"
	.extern	CCPUSR_enuCalStoreStatus,STT_OBJECT,1
	.extern	CCP_vidMonr,STT_FUNC,0
	.extern	CCPUSR_kaudtDaqMsgID,STT_OBJECT,6
	.extern	CanIf_Transmit,STT_FUNC,0
	.extern	CCPUSR_kaudtDtoMsgID,STT_OBJECT,2
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
