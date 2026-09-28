	.file	"MAIN_ErrCodePolling.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.MAIN_ECP_vidSetEventNormalStatus,"ax",@progbits
	.align 1
	.type	MAIN_ECP_vidSetEventNormalStatus, @function
MAIN_ECP_vidSetEventNormalStatus:
.LFB74:
	.file 1 "main\\_MainModule\\ErrCodePolling\\MAIN_ErrCodePolling.c"
	.loc 1 212 0
.LVL0:
	.loc 1 213 0
	mov.u	%d15, 65535
	jeq	%d4, %d15, .L1
	.loc 1 215 0
	mov	%d5, 0
	j	Dem_SetEventStatus
.LVL1:
.L1:
	ret
.LFE74:
	.size	MAIN_ECP_vidSetEventNormalStatus, .-MAIN_ECP_vidSetEventNormalStatus
.section .text.MAIN_ECP_vidModuleInit,"ax",@progbits
	.align 1
	.global	MAIN_ECP_vidModuleInit
	.type	MAIN_ECP_vidModuleInit, @function
MAIN_ECP_vidModuleInit:
.LFB70:
	.loc 1 89 0
.LVL2:
	movh	%d8, hi:MAIN_katECPEcuCfg
	.loc 1 89 0
	mov	%d15, 0
	addi	%d8, %d8, lo:MAIN_katECPEcuCfg
.LVL3:
.L6:
	.loc 1 95 0
	madd	%d2, %d8, %d15, 20
	mov.a	%a15, %d2
	ld.a	%a15, [%a15] 16
	jz.a	%a15, .L5
	.loc 1 97 0
	ld.a	%a15, [%a15] 28
	jz.a	%a15, .L5
	.loc 1 99 0
	calli	%a15
.LVL4:
.L5:
	add	%d15, 1
.LVL5:
	.loc 1 93 0 discriminator 2
	jne	%d15, 5, .L6
	.loc 1 104 0
	ret
.LFE70:
	.size	MAIN_ECP_vidModuleInit, .-MAIN_ECP_vidModuleInit
.section .text.MAIN_ECP_vidPollingFault,"ax",@progbits
	.align 1
	.global	MAIN_ECP_vidPollingFault
	.type	MAIN_ECP_vidPollingFault, @function
MAIN_ECP_vidPollingFault:
.LFB71:
	.loc 1 107 0
.LVL6:
	.loc 1 113 0
	mul	%d4, %d4, 20
.LVL7:
	movh.a	%a15, hi:MAIN_katECPEcuCfg
	lea	%a15, [%a15] lo:MAIN_katECPEcuCfg
	addsc.a	%a15, %a15, %d4, 0
	.loc 1 107 0
	sub.a	%SP, 8
.LCFI0:
	.loc 1 114 0
	ld.a	%a14, [%a15] 8
	.loc 1 113 0
	st.w	[%SP] 4, %d4
	.loc 1 117 0
	mov	%d4, 0
	.loc 1 107 0
	mov.aa	%a12, %a4
	.loc 1 113 0
	st.a	[%SP]0, %a15
.LVL8:
	.loc 1 117 0
	call	rba_BswSrv_MemSet
.LVL9:
	.loc 1 120 0
	ld.a	%a13, [%a15] 4
	mov	%d13, 0
.LBB24:
.LBB25:
.LBB26:
.LBB27:
	.loc 1 213 0
	mov.u	%d14, 65535
.LBE27:
.LBE26:
.LBE25:
.LBE24:
	.loc 1 120 0
	ld.hu	%d15, [%a13]0
	jz	%d15, .L26
.LVL10:
.L34:
	.loc 1 123 0
	mov.d	%d3, %a14
	mov	%d8, 0
	madd	%d10, %d3, %d13, 24
.LVL11:
	mov	%d15, 0
	mov	%d11, 0
	j	.L19
.LVL12:
.L18:
.LBB34:
.LBB35:
	.loc 1 162 0
	ld.bu	%d2, [%a15] 14
	add	%d12, 1
	and	%d12, %d12, 255
.LVL13:
	add	%d8, 1
	jne	%d2, 2, .L42
.LVL14:
.L19:
	and	%d2, %d8, 255
	.loc 1 156 0
	madd	%d3, %d10, %d2, 24
	.loc 1 154 0
	mov	%d9, 1
	sh	%d9, %d9, %d2
	.loc 1 156 0
	mov.a	%a15, %d3
	.loc 1 154 0
	extr.u	%d9, %d9, 0, 16
	.loc 1 156 0
	ld.a	%a2, [%a15] 16
	and	%d12, %d8, 255
.LVL15:
	.loc 1 154 0
	or	%d15, %d9
.LVL16:
	.loc 1 156 0
	calli	%a2
.LVL17:
	jz	%d2, .L18
	.loc 1 160 0
	ld.a	%a2, [%a15] 20
	mov.aa	%a4, %a15
	mov.aa	%a5, %a12
	calli	%a2
.LVL18:
	.loc 1 162 0
	ld.bu	%d2, [%a15] 14
	add	%d12, 1
	.loc 1 159 0
	or	%d11, %d9
.LVL19:
	and	%d12, %d12, 255
.LVL20:
	add	%d8, 1
	.loc 1 162 0
	jeq	%d2, 2, .L19
.LVL21:
.L42:
.LBE35:
.LBE34:
.LBB36:
.LBB32:
	.loc 1 171 0
	jz	%d11, .L20
	.loc 1 174 0
	jeq	%d11, %d15, .L21
	.loc 1 175 0
	mov.a	%a2, %d10
	ld.bu	%d15, [%a2] 13
.LVL22:
	jeq	%d15, 1, .L41
.L21:
	.loc 1 190 0
	mov.a	%a15, %d10
	ld.hu	%d4, [%a15] 8
.LVL23:
.LBB29:
.LBB30:
	.loc 1 221 0
	jeq	%d4, %d14, .L24
.LVL24:
	.loc 1 223 0
	mov	%d5, 1
	call	Dem_SetEventStatus
.LVL25:
.L24:
.LBE30:
.LBE29:
	.loc 1 193 0
	ld.a	%a15, [%SP]0
	ld.a	%a4, [%a15] 16
	jz.a	%a4, .L23
	.loc 1 195 0
	mov.a	%a5, %d10
	call	J1939_vidSPNHandler
.LVL26:
.L23:
.LBE32:
.LBE36:
	.loc 1 127 0
	add	%d12, %d13
	extr.u	%d13, %d12, 0, 16
.LVL27:
	.loc 1 120 0
	ld.hu	%d15, [%a13]0
	jlt.u	%d13, %d15, .L34
.LVL28:
.L26:
	.loc 1 131 0
	movh.a	%a2, hi:MAIN_katECPEcuCfg
	ld.w	%d3, [%SP] 4
	lea	%a2, [%a2] lo:MAIN_katECPEcuCfg
	addsc.a	%a15, %a2, %d3, 0
	ld.a	%a4, [%a15] 16
	jz.a	%a4, .L17
	.loc 1 133 0
	call	J1939_vidMainFunction
.LVL29:
.L17:
	.loc 1 137 0
	movh.a	%a2, hi:MAIN_katECPEcuCfg
	ld.w	%d3, [%SP] 4
	lea	%a2, [%a2] lo:MAIN_katECPEcuCfg
	addsc.a	%a15, %a2, %d3, 0
	ld.a	%a15, [%a15] 12
	jz.a	%a15, .L14
	.loc 1 139 0
	movh.a	%a4, hi:MAIN_ECP_vidSetEventNormalStatus
	.loc 1 141 0
	.loc 1 139 0
	lea	%a4, [%a4] lo:MAIN_ECP_vidSetEventNormalStatus
	.loc 1 141 0
	lea	%SP, [%SP] 8
.LVL30:
	.loc 1 139 0
	ji	%a15
.LVL31:
.L20:
.LBB37:
.LBB33:
	.loc 1 203 0
	mov.a	%a2, %d10
.LVL32:
.L41:
	ld.hu	%d4, [%a2] 8
.LVL33:
.LBB31:
.LBB28:
	.loc 1 213 0
	jeq	%d4, %d14, .L23
	.loc 1 215 0
	mov	%d5, 0
	call	Dem_SetEventStatus
.LVL34:
	j	.L23
.LVL35:
.L14:
	ret
.LBE28:
.LBE31:
.LBE33:
.LBE37:
.LFE71:
	.size	MAIN_ECP_vidPollingFault, .-MAIN_ECP_vidPollingFault
.section .rodata.a4.MAIN_katECPEcuCfg,"a",@progbits
	.align 2
	.type	MAIN_katECPEcuCfg, @object
	.size	MAIN_katECPEcuCfg, 100
MAIN_katECPEcuCfg:
	.byte	0
	.zero	3
	.word	MAIN_ku16FaultNum_MCU1
	.word	MAIN_katFaultCfgSet_MCU1
	.word	MAIN_ECP_vidInvalidEventHandler_MCU1
	.word	MAIN_ktJ1939EcuCfg_MCU1
	.byte	1
	.zero	3
	.word	MAIN_ku16FaultNum_MCU2
	.word	MAIN_katFaultCfgSet_MCU2
	.word	MAIN_ECP_vidInvalidEventHandler_MCU2
	.word	MAIN_ktJ1939EcuCfg_MCU2
	.byte	2
	.zero	3
	.word	MAIN_ku16FaultNum_ACM
	.word	MAIN_katFaultCfgSet_ACM
	.word	MAIN_ECP_vidInvalidEventHandler_ACM
	.word	MAIN_ktJ1939EcuCfg_ACM
	.byte	3
	.zero	3
	.word	MAIN_ku16FaultNum_EPS
	.word	MAIN_katFaultCfgSet_EPS
	.word	MAIN_ECP_vidInvalidEventHandler_EPS
	.word	MAIN_ktJ1939EcuCfg_EPS
	.byte	4
	.zero	3
	.word	MAIN_ku16FaultNum_PDU
	.word	MAIN_katFaultCfgSet_PDU
	.word	MAIN_ECP_vidInvalidEventHandler_PDU
	.word	MAIN_ktJ1939EcuCfg_PDU
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
	.uaword	.LFB74
	.uaword	.LFE74-.LFB74
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB70
	.uaword	.LFE70-.LFB70
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB71
	.uaword	.LFE71-.LFB71
	.byte	0x4
	.uaword	.LCFI0-.LFB71
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE4:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 4 ".\\output\\inc/..\\..\\rte\\Rte_Type.h"
	.file 5 ".\\output\\inc/..\\..\\main\\_MainModule\\RollErrCode\\MAIN_RollErrCode.h"
	.file 6 ".\\output\\inc/..\\..\\bswcdd\\J1939\\J1939TP.h"
	.file 7 "main\\_MainModule\\ErrCodePolling\\MAIN_ErrCodePolling.h"
	.file 8 ".\\output\\inc/..\\..\\bsw\\Dem\\api\\Dem.h"
	.file 9 ".\\output\\inc/..\\..\\bsw\\integration\\rba_BswSrv\\api\\rba_BswSrv.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xfff
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"main\\_MainModule\\ErrCodePolling\\MAIN_ErrCodePolling.c"
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
	.uaword	0x1e0
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
	.uaword	0x20c
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"sint32"
	.byte	0x2
	.byte	0x60
	.uaword	0x230
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
	.uaword	0x256
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x3
	.string	"Std_ReturnType"
	.byte	0x3
	.byte	0x60
	.uaword	0x1d3
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x4
	.byte	0x4
	.uaword	0x1d3
	.uleb128 0x5
	.uaword	0x1d3
	.uleb128 0x6
	.byte	0x4
	.uleb128 0x7
	.string	"Dem_EventIdType"
	.byte	0x4
	.uahalf	0x143
	.uaword	0x1fe
	.uleb128 0x7
	.string	"Dem_EventStatusType"
	.byte	0x4
	.uahalf	0x145
	.uaword	0x1d3
	.uleb128 0x8
	.byte	0x1
	.byte	0x5
	.byte	0xc
	.uaword	0x3ae
	.uleb128 0x9
	.string	"eMAIN_REC_BUF_IDX_MCU1"
	.sleb128 0
	.uleb128 0x9
	.string	"eMAIN_REC_BUF_IDX_MCU2"
	.sleb128 1
	.uleb128 0x9
	.string	"eMAIN_REC_BUF_IDX_ACM"
	.sleb128 2
	.uleb128 0x9
	.string	"eMAIN_REC_BUF_IDX_EPS"
	.sleb128 3
	.uleb128 0x9
	.string	"eMAIN_REC_BUF_IDX_PDU"
	.sleb128 4
	.uleb128 0x9
	.string	"eMAIN_REC_BUF_NUM"
	.sleb128 5
	.byte	0
	.uleb128 0x3
	.string	"MAIN_REC_BUF_INDEX"
	.byte	0x5
	.byte	0x13
	.uaword	0x317
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x8
	.byte	0x6
	.byte	0x17
	.uaword	0x40b
	.uleb128 0xb
	.string	"u16FMI"
	.byte	0x6
	.byte	0x18
	.uaword	0x1fe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"u16SPNIdx"
	.byte	0x6
	.byte	0x19
	.uaword	0x1fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.string	"u32SPN"
	.byte	0x6
	.byte	0x1a
	.uaword	0x248
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x6
	.byte	0x1b
	.uaword	0x3c8
	.uleb128 0xa
	.uaword	.LASF1
	.byte	0x8
	.byte	0x6
	.byte	0x1d
	.uaword	0x4b2
	.uleb128 0xb
	.string	"u8TxFrameCnt"
	.byte	0x6
	.byte	0x1e
	.uaword	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"u8PackFrameNum"
	.byte	0x6
	.byte	0x1f
	.uaword	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xb
	.string	"u8TgtMainState"
	.byte	0x6
	.byte	0x20
	.uaword	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.string	"u8CurMainState"
	.byte	0x6
	.byte	0x21
	.uaword	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xb
	.string	"u8CurFaultNum"
	.byte	0x6
	.byte	0x22
	.uaword	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"u16TaskCnt"
	.byte	0x6
	.byte	0x23
	.uaword	0x1fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0
	.uleb128 0xc
	.uaword	.LASF1
	.byte	0x6
	.byte	0x24
	.uaword	0x416
	.uleb128 0xa
	.uaword	.LASF2
	.byte	0x2c
	.byte	0x6
	.byte	0x26
	.uaword	0x5d1
	.uleb128 0xb
	.string	"u16SPNNum"
	.byte	0x6
	.byte	0x28
	.uaword	0x1fe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"u8FillByte"
	.byte	0x6
	.byte	0x29
	.uaword	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.string	"pau8SPNBuf"
	.byte	0x6
	.byte	0x2b
	.uaword	0x2d6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"pau32StateBuf"
	.byte	0x6
	.byte	0x2c
	.uaword	0x5d1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"pau8DM1TxBuf"
	.byte	0x6
	.byte	0x2e
	.uaword	0x2d6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.string	"pau8BAMTxBuf"
	.byte	0x6
	.byte	0x2f
	.uaword	0x2d6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"pau8TPDTTxBuf"
	.byte	0x6
	.byte	0x30
	.uaword	0x2d6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.string	"ptVarSet"
	.byte	0x6
	.byte	0x32
	.uaword	0x5d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.string	"vidSPNBufInit"
	.byte	0x6
	.byte	0x34
	.uaword	0x5df
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.string	"vidSendDM1"
	.byte	0x6
	.byte	0x35
	.uaword	0x5df
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.string	"vidSendBAM"
	.byte	0x6
	.byte	0x36
	.uaword	0x5df
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.string	"vidSendTPDT"
	.byte	0x6
	.byte	0x37
	.uaword	0x5df
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x248
	.uleb128 0x4
	.byte	0x4
	.uaword	0x4b2
	.uleb128 0xd
	.byte	0x1
	.uleb128 0x4
	.byte	0x4
	.uaword	0x5dd
	.uleb128 0xc
	.uaword	.LASF2
	.byte	0x6
	.byte	0x38
	.uaword	0x4bd
	.uleb128 0xc
	.uaword	.LASF3
	.byte	0x7
	.byte	0x26
	.uaword	0x5fb
	.uleb128 0xe
	.uaword	.LASF3
	.byte	0x1
	.uleb128 0xc
	.uaword	.LASF4
	.byte	0x7
	.byte	0x27
	.uaword	0x60c
	.uleb128 0xa
	.uaword	.LASF4
	.byte	0x18
	.byte	0x7
	.byte	0x53
	.uaword	0x6fb
	.uleb128 0xb
	.string	"tJ1939FaultCfg"
	.byte	0x7
	.byte	0x55
	.uaword	0x40b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"u16DTCEventId"
	.byte	0x7
	.byte	0x57
	.uaword	0x1fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"u8RollErrCode"
	.byte	0x7
	.byte	0x59
	.uaword	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xb
	.string	"u8InvtFaultByteIdx"
	.byte	0x7
	.byte	0x5a
	.uaword	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0xb
	.string	"u8InvtFaultBitMask"
	.byte	0x7
	.byte	0x5b
	.uaword	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.string	"eTableLogic"
	.byte	0x7
	.byte	0x5d
	.uaword	0x81c
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xb
	.string	"eCfgTableEnd"
	.byte	0x7
	.byte	0x5e
	.uaword	0x7a3
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xb
	.string	"u16FaultLogged"
	.byte	0x7
	.byte	0x60
	.uaword	0x82d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"vidUserCallout"
	.byte	0x7
	.byte	0x61
	.uaword	0x85f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0
	.uleb128 0x3
	.string	"tSetEventStateFuncPtr"
	.byte	0x7
	.byte	0x29
	.uaword	0x718
	.uleb128 0xf
	.byte	0x1
	.uaword	0x724
	.uleb128 0x10
	.uaword	0x724
	.byte	0
	.uleb128 0x5
	.uaword	0x1fe
	.uleb128 0x11
	.uaword	.LASF5
	.byte	0x1
	.byte	0x7
	.byte	0x47
	.uaword	0x7a3
	.uleb128 0x9
	.string	"eMAIN_ECP_FAULT_CFG_TABLE_UNDEF"
	.sleb128 0
	.uleb128 0x9
	.string	"eMAIN_ECP_FAULT_CFG_TABLE_IS_END"
	.sleb128 1
	.uleb128 0x9
	.string	"eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE"
	.sleb128 2
	.byte	0
	.uleb128 0xc
	.uaword	.LASF5
	.byte	0x7
	.byte	0x4b
	.uaword	0x729
	.uleb128 0x11
	.uaword	.LASF6
	.byte	0x1
	.byte	0x7
	.byte	0x4d
	.uaword	0x81c
	.uleb128 0x9
	.string	"eMAIN_ECP_CFG_TABLE_LOGIC_UNDEF"
	.sleb128 0
	.uleb128 0x9
	.string	"eMAIN_ECP_CFG_TABLE_LOGIC_AND"
	.sleb128 1
	.uleb128 0x9
	.string	"eMAIN_ECP_CFG_TABLE_LOGIC_OR"
	.sleb128 2
	.byte	0
	.uleb128 0xc
	.uaword	.LASF6
	.byte	0x7
	.byte	0x51
	.uaword	0x7ae
	.uleb128 0x12
	.byte	0x1
	.uaword	0x1fe
	.uleb128 0x4
	.byte	0x4
	.uaword	0x827
	.uleb128 0xf
	.byte	0x1
	.uaword	0x844
	.uleb128 0x10
	.uaword	0x844
	.uleb128 0x10
	.uaword	0x854
	.byte	0
	.uleb128 0x5
	.uaword	0x849
	.uleb128 0x4
	.byte	0x4
	.uaword	0x84f
	.uleb128 0x5
	.uaword	0x601
	.uleb128 0x5
	.uaword	0x859
	.uleb128 0x4
	.byte	0x4
	.uaword	0x5f0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x833
	.uleb128 0xa
	.uaword	.LASF7
	.byte	0x14
	.byte	0x7
	.byte	0x64
	.uaword	0x8ef
	.uleb128 0xb
	.string	"eRecBufIdx"
	.byte	0x7
	.byte	0x65
	.uaword	0x3ae
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"pku16FaultNum"
	.byte	0x7
	.byte	0x67
	.uaword	0x8ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"pktFaultCfg"
	.byte	0x7
	.byte	0x68
	.uaword	0x849
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"vidInvalidEventHandler"
	.byte	0x7
	.byte	0x69
	.uaword	0x907
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.string	"pktJ1939EcuCfg"
	.byte	0x7
	.byte	0x6c
	.uaword	0x90d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x724
	.uleb128 0xf
	.byte	0x1
	.uaword	0x901
	.uleb128 0x10
	.uaword	0x901
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x6fb
	.uleb128 0x4
	.byte	0x4
	.uaword	0x8f5
	.uleb128 0x4
	.byte	0x4
	.uaword	0x913
	.uleb128 0x5
	.uaword	0x5e5
	.uleb128 0xc
	.uaword	.LASF7
	.byte	0x7
	.byte	0x6e
	.uaword	0x865
	.uleb128 0xa
	.uaword	.LASF8
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.uaword	0x960
	.uleb128 0xb
	.string	"u16ActualVal"
	.byte	0x1
	.byte	0x10
	.uaword	0x1fe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"u16ExpectedVal"
	.byte	0x1
	.byte	0x11
	.uaword	0x1fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0xc
	.uaword	.LASF8
	.byte	0x1
	.byte	0x12
	.uaword	0x923
	.uleb128 0x13
	.string	"MAIN_ECP_vidSetEventNormalStatus"
	.byte	0x1
	.byte	0xd3
	.byte	0x1
	.byte	0x3
	.uaword	0x9a1
	.uleb128 0x14
	.uaword	.LASF9
	.byte	0x1
	.byte	0xd3
	.uaword	0x724
	.byte	0
	.uleb128 0x13
	.string	"MAIN_ECP_vidSetEventErrorStatus"
	.byte	0x1
	.byte	0xdb
	.byte	0x1
	.byte	0x3
	.uaword	0x9d6
	.uleb128 0x14
	.uaword	.LASF9
	.byte	0x1
	.byte	0xdb
	.uaword	0x724
	.byte	0
	.uleb128 0x13
	.string	"MAIN_ECP_vidDTCHandler"
	.byte	0x1
	.byte	0xa7
	.byte	0x1
	.byte	0x3
	.uaword	0xa1f
	.uleb128 0x15
	.string	"kpktEcuCfg"
	.byte	0x1
	.byte	0xa7
	.uaword	0xa1f
	.uleb128 0x14
	.uaword	.LASF10
	.byte	0x1
	.byte	0xa8
	.uaword	0x844
	.uleb128 0x14
	.uaword	.LASF11
	.byte	0x1
	.byte	0xa9
	.uaword	0xa2f
	.byte	0
	.uleb128 0x5
	.uaword	0xa24
	.uleb128 0x4
	.byte	0x4
	.uaword	0xa2a
	.uleb128 0x5
	.uaword	0x918
	.uleb128 0x5
	.uaword	0xa34
	.uleb128 0x4
	.byte	0x4
	.uaword	0x960
	.uleb128 0x16
	.uaword	0x96b
	.uaword	.LFB74
	.uaword	.LFE74
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xa69
	.uleb128 0x17
	.uaword	0x995
	.uaword	.LLST0
	.uleb128 0x18
	.uaword	.LVL1
	.byte	0x1
	.uaword	0xf45
	.uleb128 0x19
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.string	"MAIN_ECP_vidModuleInit"
	.byte	0x1
	.byte	0x58
	.byte	0x1
	.uaword	.LFB70
	.uaword	.LFE70
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xab1
	.uleb128 0x1b
	.string	"u8Index"
	.byte	0x1
	.byte	0x5b
	.uaword	0x1d3
	.uaword	.LLST1
	.uleb128 0x1c
	.uaword	.LVL4
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.string	"MAIN_ECP_u8CfgTabHandler"
	.byte	0x1
	.byte	0x92
	.byte	0x1
	.uaword	0x1d3
	.byte	0x3
	.uaword	0xb09
	.uleb128 0x14
	.uaword	.LASF10
	.byte	0x1
	.byte	0x92
	.uaword	0x844
	.uleb128 0x14
	.uaword	.LASF12
	.byte	0x1
	.byte	0x93
	.uaword	0x854
	.uleb128 0x14
	.uaword	.LASF11
	.byte	0x1
	.byte	0x94
	.uaword	0xa2f
	.uleb128 0x1e
	.string	"u8TabIdx"
	.byte	0x1
	.byte	0x96
	.uaword	0x1d3
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"MAIN_ECP_vidPollingFault"
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.uaword	.LFB71
	.uaword	.LFE71
	.uaword	.LLST2
	.byte	0x1
	.uaword	0xd02
	.uleb128 0x20
	.string	"ku8EcuId"
	.byte	0x1
	.byte	0x6a
	.uaword	0x2dc
	.uaword	.LLST3
	.uleb128 0x21
	.uaword	.LASF12
	.byte	0x1
	.byte	0x6a
	.uaword	0x854
	.uaword	.LLST4
	.uleb128 0x20
	.string	"ku32ParamSize"
	.byte	0x1
	.byte	0x6a
	.uaword	0xd02
	.uaword	.LLST5
	.uleb128 0x1e
	.string	"u8TabSize"
	.byte	0x1
	.byte	0x6c
	.uaword	0x1d3
	.uleb128 0x1b
	.string	"u16Index"
	.byte	0x1
	.byte	0x6d
	.uaword	0x1fe
	.uaword	.LLST6
	.uleb128 0x1b
	.string	"tTabParam"
	.byte	0x1
	.byte	0x6f
	.uaword	0x960
	.uaword	.LLST7
	.uleb128 0x1b
	.string	"pktEcuCfg"
	.byte	0x1
	.byte	0x71
	.uaword	0xa24
	.uaword	.LLST8
	.uleb128 0x22
	.string	"pktFltCfg"
	.byte	0x1
	.byte	0x72
	.uaword	0x849
	.byte	0x1
	.byte	0x6e
	.uleb128 0x23
	.uaword	0x9d6
	.uaword	.LBB24
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x7d
	.uaword	0xc69
	.uleb128 0x24
	.uaword	0x9f6
	.uleb128 0x17
	.uaword	0xa13
	.uaword	.LLST9
	.uleb128 0x17
	.uaword	0xa08
	.uaword	.LLST10
	.uleb128 0x23
	.uaword	0x96b
	.uaword	.LBB26
	.uaword	.Ldebug_ranges0+0x20
	.byte	0x1
	.byte	0xcb
	.uaword	0xc2c
	.uleb128 0x17
	.uaword	0x995
	.uaword	.LLST11
	.uleb128 0x25
	.uaword	.LVL34
	.uaword	0xf45
	.uleb128 0x19
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x26
	.uaword	0x9a1
	.uaword	.LBB29
	.uaword	.LBE29
	.byte	0x1
	.byte	0xbe
	.uaword	0xc58
	.uleb128 0x17
	.uaword	0x9ca
	.uaword	.LLST12
	.uleb128 0x25
	.uaword	.LVL25
	.uaword	0xf45
	.uleb128 0x19
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x25
	.uaword	.LVL26
	.uaword	0xf72
	.uleb128 0x19
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x26
	.uaword	0xab1
	.uaword	.LBB34
	.uaword	.LBE34
	.byte	0x1
	.byte	0x7b
	.uaword	0xcb9
	.uleb128 0x17
	.uaword	0xaed
	.uaword	.LLST13
	.uleb128 0x24
	.uaword	0xae2
	.uleb128 0x17
	.uaword	0xad7
	.uaword	.LLST14
	.uleb128 0x27
	.uaword	.LBB35
	.uaword	.LBE35
	.uleb128 0x28
	.uaword	0xaf8
	.uaword	.LLST15
	.uleb128 0x29
	.uaword	.LVL18
	.uleb128 0x19
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uaword	.LVL9
	.uaword	0xfb0
	.uaword	0xcd9
	.uleb128 0x19
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.uaword	.LVL29
	.uaword	0xfe0
	.uaword	0xcee
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x8f
	.sleb128 16
	.byte	0x6
	.byte	0
	.uleb128 0x2b
	.uaword	.LVL31
	.byte	0x1
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_ECP_vidSetEventNormalStatus
	.byte	0
	.byte	0
	.uleb128 0x5
	.uaword	0x248
	.uleb128 0x2c
	.uaword	0x918
	.uaword	0xd17
	.uleb128 0x2d
	.uaword	0x2ca
	.byte	0x4
	.byte	0
	.uleb128 0x22
	.string	"MAIN_katECPEcuCfg"
	.byte	0x1
	.byte	0x45
	.uaword	0xd36
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_katECPEcuCfg
	.uleb128 0x5
	.uaword	0xd07
	.uleb128 0x2e
	.string	"MAIN_ku16FaultNum_MCU1"
	.byte	0x1
	.byte	0x31
	.uaword	0x724
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.string	"MAIN_ku16FaultNum_MCU2"
	.byte	0x1
	.byte	0x32
	.uaword	0x724
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.string	"MAIN_ku16FaultNum_ACM"
	.byte	0x1
	.byte	0x33
	.uaword	0x724
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.string	"MAIN_ku16FaultNum_EPS"
	.byte	0x1
	.byte	0x34
	.uaword	0x724
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.string	"MAIN_ku16FaultNum_PDU"
	.byte	0x1
	.byte	0x35
	.uaword	0x724
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.uaword	0x601
	.uaword	0xde3
	.uleb128 0x2f
	.byte	0
	.uleb128 0x2e
	.string	"MAIN_katFaultCfgSet_MCU1"
	.byte	0x1
	.byte	0x37
	.uaword	0xe05
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.uaword	0xdd8
	.uleb128 0x2e
	.string	"MAIN_katFaultCfgSet_MCU2"
	.byte	0x1
	.byte	0x38
	.uaword	0xe2c
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.uaword	0xdd8
	.uleb128 0x2e
	.string	"MAIN_katFaultCfgSet_ACM"
	.byte	0x1
	.byte	0x39
	.uaword	0xe52
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.uaword	0xdd8
	.uleb128 0x2e
	.string	"MAIN_katFaultCfgSet_EPS"
	.byte	0x1
	.byte	0x3a
	.uaword	0xe78
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.uaword	0xdd8
	.uleb128 0x2e
	.string	"MAIN_katFaultCfgSet_PDU"
	.byte	0x1
	.byte	0x3b
	.uaword	0xe9e
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.uaword	0xdd8
	.uleb128 0x2e
	.string	"MAIN_ktJ1939EcuCfg_MCU1"
	.byte	0x1
	.byte	0x3e
	.uaword	0x913
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.string	"MAIN_ktJ1939EcuCfg_MCU2"
	.byte	0x1
	.byte	0x3f
	.uaword	0x913
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.string	"MAIN_ktJ1939EcuCfg_ACM"
	.byte	0x1
	.byte	0x40
	.uaword	0x913
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.string	"MAIN_ktJ1939EcuCfg_EPS"
	.byte	0x1
	.byte	0x41
	.uaword	0x913
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.string	"MAIN_ktJ1939EcuCfg_PDU"
	.byte	0x1
	.byte	0x42
	.uaword	0x913
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.byte	0x1
	.string	"Dem_SetEventStatus"
	.byte	0x8
	.uahalf	0x115
	.byte	0x1
	.uaword	0x2b4
	.byte	0x1
	.uaword	0xf72
	.uleb128 0x10
	.uaword	0x2e3
	.uleb128 0x10
	.uaword	0x2fb
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"J1939_vidSPNHandler"
	.byte	0x6
	.byte	0x3d
	.byte	0x1
	.byte	0x1
	.uaword	0xf9b
	.uleb128 0x10
	.uaword	0xf9b
	.uleb128 0x10
	.uaword	0xfa0
	.byte	0
	.uleb128 0x5
	.uaword	0x90d
	.uleb128 0x5
	.uaword	0xfa5
	.uleb128 0x4
	.byte	0x4
	.uaword	0xfab
	.uleb128 0x5
	.uaword	0x40b
	.uleb128 0x32
	.byte	0x1
	.string	"rba_BswSrv_MemSet"
	.byte	0x9
	.byte	0x47
	.byte	0x1
	.uaword	0x2e1
	.byte	0x1
	.uaword	0xfe0
	.uleb128 0x10
	.uaword	0x2e1
	.uleb128 0x10
	.uaword	0x222
	.uleb128 0x10
	.uaword	0x248
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.string	"J1939_vidMainFunction"
	.byte	0x6
	.byte	0x3e
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.uaword	0xf9b
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
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
	.uleb128 0x12
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
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
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x49
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
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x2113
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL1-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL1-1
	.uaword	.LVL1
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL1
	.uaword	.LFE74
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x3
	.byte	0x7f
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LFE70
	.uahalf	0x3
	.byte	0x7f
	.sleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LFB71
	.uaword	.LCFI0
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0
	.uaword	.LFE71
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL7
	.uaword	.LFE71
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL6
	.uaword	.LVL9-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL9-1
	.uaword	.LFE71
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL6
	.uaword	.LVL9-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL9-1
	.uaword	.LFE71
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x5d
	.uaword	.LVL27
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x5c
	.uaword	.LVL31
	.uaword	.LVL35
	.uahalf	0x1
	.byte	0x5d
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL10
	.uaword	.LVL12
	.uahalf	0x8
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x2
	.uaword	.LVL12
	.uaword	.LVL14
	.uahalf	0x6
	.byte	0x5b
	.byte	0x93
	.uleb128 0x2
	.byte	0x5f
	.byte	0x93
	.uleb128 0x2
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x6
	.byte	0x5b
	.byte	0x93
	.uleb128 0x2
	.byte	0x5f
	.byte	0x93
	.uleb128 0x2
	.uaword	.LVL16
	.uaword	.LVL19
	.uahalf	0x6
	.byte	0x5b
	.byte	0x93
	.uleb128 0x2
	.byte	0x5f
	.byte	0x93
	.uleb128 0x2
	.uaword	.LVL19
	.uaword	.LVL21
	.uahalf	0x6
	.byte	0x5b
	.byte	0x93
	.uleb128 0x2
	.byte	0x5f
	.byte	0x93
	.uleb128 0x2
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x5
	.byte	0x93
	.uleb128 0x2
	.byte	0x5f
	.byte	0x93
	.uleb128 0x2
	.uaword	.LVL26
	.uaword	.LVL28
	.uahalf	0x8
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x2
	.uaword	.LVL31
	.uaword	.LVL32
	.uahalf	0x5
	.byte	0x93
	.uleb128 0x2
	.byte	0x5f
	.byte	0x93
	.uleb128 0x2
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL8
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL10
	.uaword	.LVL30
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x2
	.byte	0x8a
	.sleb128 -8
	.uaword	.LVL31
	.uaword	.LFE71
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL21
	.uaword	.LVL28
	.uahalf	0x6
	.byte	0xf2
	.uaword	.Ldebug_info0+2969
	.sleb128 0
	.uaword	.LVL31
	.uaword	.LVL35
	.uahalf	0x6
	.byte	0xf2
	.uaword	.Ldebug_info0+2969
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL21
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL31
	.uaword	.LVL35
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL33
	.uaword	.LVL34-1
	.uahalf	0x2
	.byte	0x7a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x2
	.byte	0x8f
	.sleb128 8
	.uaword	.LVL24
	.uaword	.LVL25-1
	.uahalf	0x2
	.byte	0x7a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL11
	.uaword	.LVL28
	.uahalf	0x6
	.byte	0xf2
	.uaword	.Ldebug_info0+2969
	.sleb128 0
	.uaword	.LVL31
	.uaword	.LVL35
	.uahalf	0x6
	.byte	0xf2
	.uaword	.Ldebug_info0+2969
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL11
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL31
	.uaword	.LVL35
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x5c
	.uaword	.LVL15
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x5c
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x2c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB74
	.uaword	.LFE74-.LFB74
	.uaword	.LFB70
	.uaword	.LFE70-.LFB70
	.uaword	.LFB71
	.uaword	.LFE71-.LFB71
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB24
	.uaword	.LBE24
	.uaword	.LBB36
	.uaword	.LBE36
	.uaword	.LBB37
	.uaword	.LBE37
	.uaword	0
	.uaword	0
	.uaword	.LBB26
	.uaword	.LBE26
	.uaword	.LBB31
	.uaword	.LBE31
	.uaword	0
	.uaword	0
	.uaword	.LFB74
	.uaword	.LFE74
	.uaword	.LFB70
	.uaword	.LFE70
	.uaword	.LFB71
	.uaword	.LFE71
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF1:
	.string	"J1939_EcuVarSet"
.LASF5:
	.string	"MAIN_ECPCfgTabEndType"
.LASF2:
	.string	"J1939_EcuCfg"
.LASF0:
	.string	"J1939_FaultCfg"
.LASF8:
	.string	"MAIN_ECPTabCheckParam"
.LASF11:
	.string	"kptTabParam"
.LASF3:
	.string	"MAIN_ECPParam"
.LASF10:
	.string	"kpktFltCfg"
.LASF6:
	.string	"MAIN_ECPTabLogicType"
.LASF4:
	.string	"MAIN_ECPFaultCfg"
.LASF12:
	.string	"kptUserParam"
.LASF9:
	.string	"ku16EventId"
.LASF7:
	.string	"MAIN_ECPEcuCfg"
	.extern	MAIN_ktJ1939EcuCfg_PDU,STT_OBJECT,44
	.extern	MAIN_ECP_vidInvalidEventHandler_PDU,STT_FUNC,0
	.extern	MAIN_katFaultCfgSet_PDU,STT_OBJECT,-1
	.extern	MAIN_ku16FaultNum_PDU,STT_OBJECT,2
	.extern	MAIN_ktJ1939EcuCfg_EPS,STT_OBJECT,44
	.extern	MAIN_ECP_vidInvalidEventHandler_EPS,STT_FUNC,0
	.extern	MAIN_katFaultCfgSet_EPS,STT_OBJECT,-1
	.extern	MAIN_ku16FaultNum_EPS,STT_OBJECT,2
	.extern	MAIN_ktJ1939EcuCfg_ACM,STT_OBJECT,44
	.extern	MAIN_ECP_vidInvalidEventHandler_ACM,STT_FUNC,0
	.extern	MAIN_katFaultCfgSet_ACM,STT_OBJECT,-1
	.extern	MAIN_ku16FaultNum_ACM,STT_OBJECT,2
	.extern	MAIN_ktJ1939EcuCfg_MCU2,STT_OBJECT,44
	.extern	MAIN_ECP_vidInvalidEventHandler_MCU2,STT_FUNC,0
	.extern	MAIN_katFaultCfgSet_MCU2,STT_OBJECT,-1
	.extern	MAIN_ku16FaultNum_MCU2,STT_OBJECT,2
	.extern	MAIN_ktJ1939EcuCfg_MCU1,STT_OBJECT,44
	.extern	MAIN_ECP_vidInvalidEventHandler_MCU1,STT_FUNC,0
	.extern	MAIN_katFaultCfgSet_MCU1,STT_OBJECT,-1
	.extern	MAIN_ku16FaultNum_MCU1,STT_OBJECT,2
	.extern	J1939_vidMainFunction,STT_FUNC,0
	.extern	J1939_vidSPNHandler,STT_FUNC,0
	.extern	rba_BswSrv_MemSet,STT_FUNC,0
	.extern	Dem_SetEventStatus,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
