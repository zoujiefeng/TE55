	.file	"ComHal.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.ComHal_pu8GetElementAddr,"ax",@progbits
	.align 1
	.type	ComHal_pu8GetElementAddr, @function
ComHal_pu8GetElementAddr:
.LFB256:
	.file 1 "bswcdd\\ComHal\\ComHal.c"
	.loc 1 135 0
.LVL0:
	.loc 1 137 0
	mul	%d15, %d4, 20
	movh.a	%a2, hi:ComHal_atElementSet
	lea	%a2, [%a2] lo:ComHal_atElementSet
	addsc.a	%a2, %a2, %d15, 0
	ret
.LFE256:
	.size	ComHal_pu8GetElementAddr, .-ComHal_pu8GetElementAddr
.section .text.ComHal_eGetElementStatus,"ax",@progbits
	.align 1
	.type	ComHal_eGetElementStatus, @function
ComHal_eGetElementStatus:
.LFB257:
	.loc 1 140 0
.LVL1:
	.loc 1 141 0
	movh.a	%a15, hi:ComHal_atElementSet
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:ComHal_atElementSet
	madd	%d2, %d15, %d4, 20
	mov.a	%a15, %d2
	.loc 1 142 0
	ld.bu	%d2, [%a15] 16
	ret
.LFE257:
	.size	ComHal_eGetElementStatus, .-ComHal_eGetElementStatus
.section .text.ComHal_vidSetElementStatus,"ax",@progbits
	.align 1
	.type	ComHal_vidSetElementStatus, @function
ComHal_vidSetElementStatus:
.LFB258:
	.loc 1 145 0
.LVL2:
	.loc 1 146 0
	movh.a	%a15, hi:ComHal_atElementSet
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:ComHal_atElementSet
	madd	%d2, %d15, %d4, 20
	mov.a	%a15, %d2
	st.b	[%a15] 16, %d5
	ret
.LFE258:
	.size	ComHal_vidSetElementStatus, .-ComHal_vidSetElementStatus
.section .text.ComHal_vidSendMessage,"ax",@progbits
	.align 1
	.global	ComHal_vidSendMessage
	.type	ComHal_vidSendMessage, @function
ComHal_vidSendMessage:
.LFB254:
	.loc 1 92 0
.LVL3:
	.loc 1 99 0
	movh.a	%a15, hi:ComHal_kau16TxPduIdSet
	lea	%a15, [%a15] lo:ComHal_kau16TxPduIdSet
	.loc 1 92 0
	sub.a	%SP, 16
.LCFI0:
	.loc 1 97 0
	mov	%d15, 0
	.loc 1 99 0
	addsc.a	%a15, %a15, %d4, 1
	.loc 1 97 0
	st.w	[%SP] 4, %d15
	.loc 1 98 0
	mov	%d15, 8
	st.h	[%SP] 8, %d15
	.loc 1 99 0
	ld.h	%d15, [%a15]0
	.loc 1 96 0
	st.a	[%SP]0, %a4
	.loc 1 99 0
	st.h	[%SP] 12, %d15
	.loc 1 101 0
	call	Mcal_GetCpuIndex
.LVL4:
	.loc 1 103 0
	and	%d2, %d2, 255
	jz	%d2, .L12
.LVL5:
.L9:
	.loc 1 111 0 discriminator 1
	mov	%d4, 0
	mov.aa	%a4, %SP
	call	RingQ_bPutData
.LVL6:
	.loc 1 112 0 discriminator 1
	jz	%d2, .L9
	ret
.LVL7:
.L12:
.LBB6:
.LBB7:
	.loc 1 151 0
	ld.hu	%d4, [%SP] 12
	mov.aa	%a4, %SP
	j	CanIf_Transmit
.LVL8:
.LBE7:
.LBE6:
.LFE254:
	.size	ComHal_vidSendMessage, .-ComHal_vidSendMessage
.section .text.ComHal_vidMsgMainfunction,"ax",@progbits
	.align 1
	.global	ComHal_vidMsgMainfunction
	.type	ComHal_vidMsgMainfunction, @function
ComHal_vidMsgMainfunction:
.LFB255:
	.loc 1 117 0
	sub.a	%SP, 16
.LCFI1:
.L15:
	.loc 1 122 0
	mov	%d4, 0
	mov.aa	%a4, %SP
	call	RingQ_bGetData
.LVL9:
	.loc 1 124 0
	jeq	%d2, 1, .L16
	ret
.L16:
.LVL10:
.LBB8:
.LBB9:
	.loc 1 151 0
	ld.hu	%d4, [%SP] 12
	mov.aa	%a4, %SP
	call	CanIf_Transmit
.LVL11:
	j	.L15
.LBE9:
.LBE8:
.LFE255:
	.size	ComHal_vidMsgMainfunction, .-ComHal_vidMsgMainfunction
.section .rodata.a2.ComHal_kau16TxPduIdSet,"a",@progbits
	.align 1
	.type	ComHal_kau16TxPduIdSet, @object
	.size	ComHal_kau16TxPduIdSet, 30
ComHal_kau16TxPduIdSet:
	.short	8
	.short	9
	.short	10
	.short	11
	.short	12
	.short	13
	.short	14
	.short	15
	.short	16
	.short	17
	.short	18
	.short	19
	.short	20
	.short	21
	.short	22
	.global	ComHal_ktRingQObj
.section .rodata.a4.ComHal_ktRingQObj,"a",@progbits
	.align 2
	.type	ComHal_ktRingQObj, @object
	.size	ComHal_ktRingQObj, 24
ComHal_ktRingQObj:
	.byte	15
	.byte	16
	.zero	2
	.word	ComHal_tRamBlock
	.word	ComHal_atElementSet
	.word	ComHal_pu8GetElementAddr
	.word	ComHal_eGetElementStatus
	.word	ComHal_vidSetElementStatus
.section .bss.a4.ComHal_atElementSet,"aw",@nobits
	.align 2
	.type	ComHal_atElementSet, @object
	.size	ComHal_atElementSet, 320
ComHal_atElementSet:
	.zero	320
.section .bss.a4.ComHal_tRamBlock,"aw",@nobits
	.align 2
	.type	ComHal_tRamBlock, @object
	.size	ComHal_tRamBlock, 8
ComHal_tRamBlock:
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
	.uaword	.LFB256
	.uaword	.LFE256-.LFB256
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB257
	.uaword	.LFE257-.LFB257
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB258
	.uaword	.LFE258-.LFB258
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB254
	.uaword	.LFE254-.LFB254
	.byte	0x4
	.uaword	.LCFI0-.LFB254
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB255
	.uaword	.LFE255-.LFB255
	.byte	0x4
	.uaword	.LCFI1-.LFB255
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE8:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 4 ".\\output\\inc/..\\..\\bsw\\ComStack\\ComStack_Cfg.h"
	.file 5 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\Cpu\\Std\\Ifx_Types.h"
	.file 6 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\_Impl\\IfxCpu_cfg.h"
	.file 7 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\Scu\\Std\\IfxScuCcu.h"
	.file 8 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\Cpu\\Std\\IfxCpu.h"
	.file 9 ".\\output\\inc/..\\..\\bswcdd\\RingQ\\RingQ.h"
	.file 10 "bswcdd\\ComHal\\ComHal.h"
	.file 11 ".\\output\\inc/..\\..\\bsw\\CanIf\\api\\CanIf.h"
	.file 12 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xdc7
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\ComHal\\ComHal.c"
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
	.uaword	0x1c1
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
	.uaword	0x1ed
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"sint32"
	.byte	0x2
	.byte	0x60
	.uaword	0x211
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
	.uaword	0x237
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
	.uaword	0x1c1
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
	.uaword	0x1b4
	.uleb128 0x3
	.string	"PduIdType"
	.byte	0x4
	.byte	0x2c
	.uaword	0x1df
	.uleb128 0x3
	.string	"PduLengthType"
	.byte	0x4
	.byte	0x30
	.uaword	0x1df
	.uleb128 0x4
	.byte	0xc
	.byte	0x4
	.byte	0x39
	.uaword	0x328
	.uleb128 0x5
	.string	"SduDataPtr"
	.byte	0x4
	.byte	0x3b
	.uaword	0x328
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"MetaDataPtr"
	.byte	0x4
	.byte	0x3c
	.uaword	0x328
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"SduLength"
	.byte	0x4
	.byte	0x3d
	.uaword	0x2cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x1b4
	.uleb128 0x3
	.string	"PduInfoType"
	.byte	0x4
	.byte	0x3e
	.uaword	0x2e0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x6
	.byte	0x4
	.uaword	0x353
	.uleb128 0x7
	.uaword	0x1b4
	.uleb128 0x6
	.byte	0x4
	.uaword	0x35e
	.uleb128 0x7
	.uaword	0x32e
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x6
	.byte	0x4
	.uaword	0x371
	.uleb128 0x8
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.byte	0x8c
	.uaword	0x39c
	.uleb128 0x5
	.string	"module"
	.byte	0x5
	.byte	0x8e
	.uaword	0x36b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"index"
	.byte	0x5
	.byte	0x8f
	.uaword	0x203
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"IfxModule_IndexMap"
	.byte	0x5
	.byte	0x90
	.uaword	0x372
	.uleb128 0x9
	.byte	0x1
	.byte	0x6
	.byte	0x88
	.uaword	0x417
	.uleb128 0xa
	.string	"IfxCpu_Index_0"
	.sleb128 0
	.uleb128 0xa
	.string	"IfxCpu_Index_1"
	.sleb128 1
	.uleb128 0xa
	.string	"IfxCpu_Index_2"
	.sleb128 2
	.uleb128 0xa
	.string	"IfxCpu_Index_3"
	.sleb128 3
	.uleb128 0xa
	.string	"IfxCpu_Index_none"
	.sleb128 4
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.byte	0x7
	.uahalf	0x160
	.uaword	0x520
	.uleb128 0xa
	.string	"IfxScuCcu_ModulationAmplitude_0p5"
	.sleb128 0
	.uleb128 0xa
	.string	"IfxScuCcu_ModulationAmplitude_1p0"
	.sleb128 1
	.uleb128 0xa
	.string	"IfxScuCcu_ModulationAmplitude_1p25"
	.sleb128 2
	.uleb128 0xa
	.string	"IfxScuCcu_ModulationAmplitude_1p5"
	.sleb128 3
	.uleb128 0xa
	.string	"IfxScuCcu_ModulationAmplitude_2p0"
	.sleb128 4
	.uleb128 0xa
	.string	"IfxScuCcu_ModulationAmplitude_2p5"
	.sleb128 5
	.uleb128 0xa
	.string	"IfxScuCcu_ModulationAmplitude_count"
	.sleb128 6
	.byte	0
	.uleb128 0x3
	.string	"IfxCpu_mutexLock"
	.byte	0x8
	.byte	0x75
	.uaword	0x237
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x9
	.byte	0x1d
	.uaword	0x543
	.uleb128 0xd
	.uaword	.LASF0
	.byte	0x14
	.byte	0x1
	.byte	0x15
	.uaword	0x57c
	.uleb128 0x5
	.string	"xElement"
	.byte	0x1
	.byte	0x17
	.uaword	0x9c7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"eElementStatus"
	.byte	0x1
	.byte	0x18
	.uaword	0x6db
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0xc
	.uaword	.LASF1
	.byte	0x9
	.byte	0x1e
	.uaword	0x587
	.uleb128 0xd
	.uaword	.LASF1
	.byte	0x18
	.byte	0x9
	.byte	0x2c
	.uaword	0x649
	.uleb128 0x5
	.string	"u8QueueMask"
	.byte	0x9
	.byte	0x2d
	.uaword	0x1b4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"u8ElementLength"
	.byte	0x9
	.byte	0x2e
	.uaword	0x1b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x5
	.string	"pxRamBlock"
	.byte	0x9
	.byte	0x30
	.uaword	0x6e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"pxElementSetPtr"
	.byte	0x9
	.byte	0x31
	.uaword	0x6ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"pu8GetElementAddr"
	.byte	0x9
	.byte	0x33
	.uaword	0x702
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"eGetElementStatus"
	.byte	0x9
	.byte	0x34
	.uaword	0x718
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x5
	.string	"vidSetElementStatus"
	.byte	0x9
	.byte	0x35
	.uaword	0x72f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0
	.uleb128 0xc
	.uaword	.LASF2
	.byte	0x9
	.byte	0x1f
	.uaword	0x654
	.uleb128 0xd
	.uaword	.LASF2
	.byte	0x8
	.byte	0x9
	.byte	0x26
	.uaword	0x69b
	.uleb128 0x5
	.string	"u8HeadIdx"
	.byte	0x9
	.byte	0x27
	.uaword	0x1b4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"u8TailIdx"
	.byte	0x9
	.byte	0x28
	.uaword	0x1b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x5
	.string	"u32Lock"
	.byte	0x9
	.byte	0x29
	.uaword	0x520
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xe
	.uaword	.LASF3
	.byte	0x1
	.byte	0x9
	.byte	0x21
	.uaword	0x6db
	.uleb128 0xa
	.string	"RINGQUEUE_STATUS_IDLE"
	.sleb128 0
	.uleb128 0xa
	.string	"RINGQUEUE_STATUS_PENDING"
	.sleb128 1
	.byte	0
	.uleb128 0xc
	.uaword	.LASF3
	.byte	0x9
	.byte	0x24
	.uaword	0x69b
	.uleb128 0x6
	.byte	0x4
	.uaword	0x649
	.uleb128 0x6
	.byte	0x4
	.uaword	0x538
	.uleb128 0xf
	.byte	0x1
	.uaword	0x328
	.uaword	0x702
	.uleb128 0x10
	.uaword	0x353
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x6f2
	.uleb128 0xf
	.byte	0x1
	.uaword	0x6db
	.uaword	0x718
	.uleb128 0x10
	.uaword	0x353
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x708
	.uleb128 0x11
	.byte	0x1
	.uaword	0x72f
	.uleb128 0x10
	.uaword	0x353
	.uleb128 0x10
	.uaword	0x6db
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x71e
	.uleb128 0x12
	.string	"RingQ_QIdx"
	.byte	0x1
	.byte	0x9
	.byte	0x3b
	.uaword	0x777
	.uleb128 0xa
	.string	"eRingQ_COMHAL_Q_INDEX"
	.sleb128 0
	.uleb128 0xa
	.string	"eRingQ_Q_SET_MAX_NO"
	.sleb128 1
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.byte	0xa
	.byte	0x11
	.uaword	0x992
	.uleb128 0xa
	.string	"eCOMHAL_TX_PDUID_J1939_DM1_MCU1"
	.sleb128 0
	.uleb128 0xa
	.string	"eCOMHAL_TX_PDUID_J1939_BAM_MCU1"
	.sleb128 1
	.uleb128 0xa
	.string	"eCOMHAL_TX_PDUID_J1939_TPDT_MCU1"
	.sleb128 2
	.uleb128 0xa
	.string	"eCOMHAL_TX_PDUID_J1939_DM1_MCU2"
	.sleb128 3
	.uleb128 0xa
	.string	"eCOMHAL_TX_PDUID_J1939_BAM_MCU2"
	.sleb128 4
	.uleb128 0xa
	.string	"eCOMHAL_TX_PDUID_J1939_TPDT_MCU2"
	.sleb128 5
	.uleb128 0xa
	.string	"eCOMHAL_TX_PDUID_J1939_DM1_ACM"
	.sleb128 6
	.uleb128 0xa
	.string	"eCOMHAL_TX_PDUID_J1939_BAM_ACM"
	.sleb128 7
	.uleb128 0xa
	.string	"eCOMHAL_TX_PDUID_J1939_TPDT_ACM"
	.sleb128 8
	.uleb128 0xa
	.string	"eCOMHAL_TX_PDUID_J1939_DM1_EPS"
	.sleb128 9
	.uleb128 0xa
	.string	"eCOMHAL_TX_PDUID_J1939_BAM_EPS"
	.sleb128 10
	.uleb128 0xa
	.string	"eCOMHAL_TX_PDUID_J1939_TPDT_EPS"
	.sleb128 11
	.uleb128 0xa
	.string	"eCOMHAL_TX_PDUID_J1939_DM1_PDU"
	.sleb128 12
	.uleb128 0xa
	.string	"eCOMHAL_TX_PDUID_J1939_BAM_PDU"
	.sleb128 13
	.uleb128 0xa
	.string	"eCOMHAL_TX_PDUID_J1939_TPDT_PDU"
	.sleb128 14
	.uleb128 0xa
	.string	"eCOMHAL_MAX_TX_PDU_NO"
	.sleb128 15
	.byte	0
	.uleb128 0xd
	.uaword	.LASF4
	.byte	0x10
	.byte	0x1
	.byte	0x10
	.uaword	0x9c7
	.uleb128 0x5
	.string	"tPduInfo"
	.byte	0x1
	.byte	0x11
	.uaword	0x32e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"u16TxPduId"
	.byte	0x1
	.byte	0x12
	.uaword	0x1df
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0xc
	.uaword	.LASF4
	.byte	0x1
	.byte	0x13
	.uaword	0x992
	.uleb128 0x13
	.string	"ComHal_vidSendCanMsg"
	.byte	0x1
	.byte	0x95
	.byte	0x1
	.byte	0x3
	.uaword	0xa11
	.uleb128 0x14
	.string	"TxPduId"
	.byte	0x1
	.byte	0x95
	.uaword	0x1df
	.uleb128 0x14
	.string	"ptPduInfo"
	.byte	0x1
	.byte	0x95
	.uaword	0x358
	.byte	0
	.uleb128 0x15
	.string	"ComHal_pu8GetElementAddr"
	.byte	0x1
	.byte	0x86
	.byte	0x1
	.uaword	0x328
	.uaword	.LFB256
	.uaword	.LFE256
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xa50
	.uleb128 0x16
	.uaword	.LASF5
	.byte	0x1
	.byte	0x86
	.uaword	0x353
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x15
	.string	"ComHal_eGetElementStatus"
	.byte	0x1
	.byte	0x8b
	.byte	0x1
	.uaword	0x6db
	.uaword	.LFB257
	.uaword	.LFE257
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xa8f
	.uleb128 0x16
	.uaword	.LASF5
	.byte	0x1
	.byte	0x8b
	.uaword	0x353
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x17
	.string	"ComHal_vidSetElementStatus"
	.byte	0x1
	.byte	0x90
	.byte	0x1
	.uaword	.LFB258
	.uaword	.LFE258
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xadd
	.uleb128 0x16
	.uaword	.LASF5
	.byte	0x1
	.byte	0x90
	.uaword	0x353
	.byte	0x1
	.byte	0x54
	.uleb128 0x18
	.string	"eStatus"
	.byte	0x1
	.byte	0x90
	.uaword	0x6db
	.byte	0x1
	.byte	0x55
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.string	"ComHal_vidSendMessage"
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.uaword	.LFB254
	.uaword	.LFE254
	.uaword	.LLST0
	.byte	0x1
	.uaword	0xbc1
	.uleb128 0x1a
	.string	"TxPduId"
	.byte	0x1
	.byte	0x5b
	.uaword	0x1df
	.uaword	.LLST1
	.uleb128 0x1a
	.string	"pu8DataToSend"
	.byte	0x1
	.byte	0x5b
	.uaword	0x34d
	.uaword	.LLST2
	.uleb128 0x1b
	.string	"bOpRes"
	.byte	0x1
	.byte	0x5d
	.uaword	0x274
	.uaword	.LLST3
	.uleb128 0x1c
	.uaword	.LASF6
	.byte	0x1
	.byte	0x5e
	.uaword	0x9c7
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1b
	.string	"u8CoreId"
	.byte	0x1
	.byte	0x65
	.uaword	0x1b4
	.uaword	.LLST4
	.uleb128 0x1d
	.uaword	0x9d2
	.uaword	.LBB6
	.uaword	.LBE6
	.byte	0x1
	.byte	0x6a
	.uaword	0xb8d
	.uleb128 0x1e
	.uaword	0x9ff
	.byte	0x1
	.byte	0x6a
	.uleb128 0x1f
	.uaword	0x9f0
	.uaword	.LLST5
	.byte	0
	.uleb128 0x20
	.uaword	.LVL4
	.uaword	0xd3a
	.uleb128 0x21
	.uaword	.LVL6
	.uaword	0xd56
	.uaword	0xbaf
	.uleb128 0x22
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x22
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x23
	.uaword	.LVL8
	.byte	0x1
	.uaword	0xd7e
	.uleb128 0x22
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.string	"ComHal_vidMsgMainfunction"
	.byte	0x1
	.byte	0x74
	.byte	0x1
	.uaword	.LFB255
	.uaword	.LFE255
	.uaword	.LLST6
	.byte	0x1
	.uaword	0xc5b
	.uleb128 0x1b
	.string	"bOpRes"
	.byte	0x1
	.byte	0x76
	.uaword	0x274
	.uaword	.LLST7
	.uleb128 0x1c
	.uaword	.LASF6
	.byte	0x1
	.byte	0x77
	.uaword	0x9c7
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1d
	.uaword	0x9d2
	.uaword	.LBB8
	.uaword	.LBE8
	.byte	0x1
	.byte	0x7e
	.uaword	0xc45
	.uleb128 0x1e
	.uaword	0x9ff
	.byte	0x1
	.byte	0x6a
	.uleb128 0x1f
	.uaword	0x9f0
	.uaword	.LLST8
	.uleb128 0x24
	.uaword	.LVL11
	.uaword	0xd7e
	.uleb128 0x22
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x24
	.uaword	.LVL9
	.uaword	0xda6
	.uleb128 0x22
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x22
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x25
	.string	"ComHal_tRamBlock"
	.byte	0x1
	.byte	0x2f
	.uaword	0x649
	.byte	0x5
	.byte	0x3
	.uaword	ComHal_tRamBlock
	.uleb128 0x26
	.uaword	0x543
	.uaword	0xc89
	.uleb128 0x27
	.uaword	0x341
	.byte	0xf
	.byte	0
	.uleb128 0x25
	.string	"ComHal_atElementSet"
	.byte	0x1
	.byte	0x30
	.uaword	0xc79
	.byte	0x5
	.byte	0x3
	.uaword	ComHal_atElementSet
	.uleb128 0x26
	.uaword	0x1df
	.uaword	0xcba
	.uleb128 0x27
	.uaword	0x341
	.byte	0xe
	.byte	0
	.uleb128 0x25
	.string	"ComHal_kau16TxPduIdSet"
	.byte	0x1
	.byte	0x41
	.uaword	0xcde
	.byte	0x5
	.byte	0x3
	.uaword	ComHal_kau16TxPduIdSet
	.uleb128 0x7
	.uaword	0xcaa
	.uleb128 0x26
	.uaword	0x39c
	.uaword	0xcf3
	.uleb128 0x27
	.uaword	0x341
	.byte	0x3
	.byte	0
	.uleb128 0x28
	.string	"IfxCpu_cfg_indexMap"
	.byte	0x6
	.byte	0xaa
	.uaword	0xd10
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.uaword	0xce3
	.uleb128 0x29
	.string	"ComHal_ktRingQObj"
	.byte	0x1
	.byte	0x35
	.uaword	0xd35
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	ComHal_ktRingQObj
	.uleb128 0x7
	.uaword	0x57c
	.uleb128 0x2a
	.byte	0x1
	.string	"Mcal_GetCpuIndex"
	.byte	0xc
	.uahalf	0x335
	.byte	0x1
	.uaword	0x229
	.byte	0x1
	.uleb128 0x2b
	.byte	0x1
	.string	"RingQ_bPutData"
	.byte	0x9
	.byte	0x46
	.byte	0x1
	.uaword	0x274
	.byte	0x1
	.uaword	0xd7e
	.uleb128 0x10
	.uaword	0x353
	.uleb128 0x10
	.uaword	0x34d
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"CanIf_Transmit"
	.byte	0xb
	.byte	0x5b
	.byte	0x1
	.uaword	0x2a4
	.byte	0x1
	.uaword	0xda6
	.uleb128 0x10
	.uaword	0x2ba
	.uleb128 0x10
	.uaword	0x358
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.string	"RingQ_bGetData"
	.byte	0x9
	.byte	0x47
	.byte	0x1
	.uaword	0x274
	.byte	0x1
	.uleb128 0x10
	.uaword	0x353
	.uleb128 0x10
	.uaword	0x328
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x35
	.byte	0
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
	.uleb128 0x4
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
	.uleb128 0xc
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0xe
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x4
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
	.uleb128 0x13
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
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x34
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
	.uleb128 0x1d
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LFB254
	.uaword	.LCFI0
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0
	.uaword	.LFE254
	.uahalf	0x2
	.byte	0x8a
	.sleb128 16
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL3
	.uaword	.LVL4-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL4-1
	.uaword	.LFE254
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL3
	.uaword	.LVL4-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL4-1
	.uaword	.LFE254
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL7
	.uaword	.LVL8-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL7
	.uaword	.LVL8-1
	.uahalf	0x2
	.byte	0x91
	.sleb128 -4
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LFB255
	.uaword	.LCFI1
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI1
	.uaword	.LFE255
	.uahalf	0x2
	.byte	0x8a
	.sleb128 16
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL9
	.uaword	.LVL11-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL10
	.uaword	.LVL11-1
	.uahalf	0x2
	.byte	0x91
	.sleb128 -4
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x3c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB256
	.uaword	.LFE256-.LFB256
	.uaword	.LFB257
	.uaword	.LFE257-.LFB257
	.uaword	.LFB258
	.uaword	.LFE258-.LFB258
	.uaword	.LFB254
	.uaword	.LFE254-.LFB254
	.uaword	.LFB255
	.uaword	.LFE255-.LFB255
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB256
	.uaword	.LFE256
	.uaword	.LFB257
	.uaword	.LFE257
	.uaword	.LFB258
	.uaword	.LFE258
	.uaword	.LFB254
	.uaword	.LFE254
	.uaword	.LFB255
	.uaword	.LFE255
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF3:
	.string	"RingQ_Enum"
.LASF1:
	.string	"RingQ_ObjType"
.LASF5:
	.string	"ku8ElementIdx"
.LASF2:
	.string	"RingQ_RamBlock"
.LASF0:
	.string	"RingQ_ElementType"
.LASF6:
	.string	"tElement"
.LASF4:
	.string	"ComHal_tElement"
	.extern	RingQ_bGetData,STT_FUNC,0
	.extern	CanIf_Transmit,STT_FUNC,0
	.extern	RingQ_bPutData,STT_FUNC,0
	.extern	Mcal_GetCpuIndex,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
