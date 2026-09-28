	.file	"FR_PDUCfg.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.FR_vidGetUserHeadInfoCallout,"ax",@progbits
	.align 1
	.type	FR_vidGetUserHeadInfoCallout, @function
FR_vidGetUserHeadInfoCallout:
.LFB250:
	.file 1 "ASW\\CDD_FR\\PDU\\FR_PDUCallout.h"
	.loc 1 82 0
.LVL0:
.LBB10:
.LBB11:
	.file 2 "ASW\\CDD_FR\\PDU\\FR_PDUCfg.c"
	.loc 2 129 0
	mov	%d15, 0
	movh.a	%a15, hi:FR_atBufIndex
	movh.a	%a4, hi:MAIN_u8UdsSwVerSup
.LVL1:
	st.w	[%a15] lo:FR_atBufIndex, %d15
.LVL2:
	lea	%a15, [%a4] lo:MAIN_u8UdsSwVerSup
	mov.d	%d2, %a15
	and	%d15, %d2, 3
	jnz	%d15, .L4
.LVL3:
.LBE11:
.LBE10:
	.loc 1 90 0
	ld.bu	%d3, [%a15] 1
	ld.bu	%d2, [%a4] lo:MAIN_u8UdsSwVerSup
	sh	%d15, %d3, 8
	or	%d3, %d15, %d2
	ld.bu	%d15, [%a15] 2
	movh.a	%a3, hi:FR_xUserHeadRamBlock
	sh	%d15, %d15, 16
	or	%d2, %d15, %d3
	ld.bu	%d15, [%a15] 3
	ld.bu	%d3, [%a15] 5
	sh	%d15, %d15, 24
	or	%d15, %d2
	ld.bu	%d2, [%a15] 4
	st.w	[%a3] lo:FR_xUserHeadRamBlock, %d15
	sh	%d15, %d3, 8
	or	%d3, %d15, %d2
	ld.bu	%d15, [%a15] 6
	lea	%a2, [%a3] lo:FR_xUserHeadRamBlock
	sh	%d15, %d15, 16
	or	%d2, %d15, %d3
	ld.bu	%d15, [%a15] 7
	ld.bu	%d3, [%a15] 9
	sh	%d15, %d15, 24
	or	%d15, %d2
	ld.bu	%d2, [%a15] 8
	st.w	[%a2] 4, %d15
	sh	%d15, %d3, 8
	or	%d3, %d15, %d2
	ld.bu	%d15, [%a15] 10
	sh	%d15, %d15, 16
	or	%d2, %d15, %d3
	ld.bu	%d15, [%a15] 11
	ld.bu	%d3, [%a15] 13
	sh	%d15, %d15, 24
	or	%d15, %d2
	ld.bu	%d2, [%a15] 12
	st.w	[%a2] 8, %d15
	sh	%d15, %d3, 8
	or	%d3, %d15, %d2
	ld.bu	%d15, [%a15] 14
	sh	%d15, %d15, 16
	or	%d2, %d15, %d3
	ld.bu	%d15, [%a15] 15
	ld.bu	%d3, [%a15] 17
	sh	%d15, %d15, 24
	or	%d15, %d2
	ld.bu	%d2, [%a15] 16
	st.w	[%a2] 12, %d15
	sh	%d15, %d3, 8
	or	%d3, %d15, %d2
	ld.bu	%d15, [%a15] 18
	sh	%d15, %d15, 16
	or	%d2, %d15, %d3
	ld.bu	%d15, [%a15] 19
	sh	%d15, %d15, 24
	or	%d15, %d2
	st.w	[%a2] 16, %d15
.LVL4:
	ld.bu	%d15, [%a15] 20
	st.b	[%a2] 20, %d15
.LVL5:
.L3:
	.loc 1 94 0
	movh.a	%a3, hi:MAIN_u8DEV_Fault
	ld.bu	%d15, [%a3] lo:MAIN_u8DEV_Fault
	lea	%a15, [%a3] lo:MAIN_u8DEV_Fault
	st.b	[%a2] 21, %d15
.LVL6:
	ld.bu	%d15, [%a15] 1
	st.b	[%a2] 22, %d15
.LVL7:
	ld.bu	%d15, [%a15] 2
	st.b	[%a2] 23, %d15
.LVL8:
	ld.bu	%d15, [%a15] 3
	st.b	[%a2] 24, %d15
.LVL9:
	ld.bu	%d15, [%a15] 4
	st.b	[%a2] 25, %d15
.LVL10:
	ld.bu	%d15, [%a15] 5
	st.b	[%a2] 26, %d15
.LVL11:
	ld.bu	%d15, [%a15] 6
	st.b	[%a2] 27, %d15
.LVL12:
	ld.bu	%d15, [%a15] 7
	st.b	[%a2] 28, %d15
.LVL13:
	ld.bu	%d15, [%a15] 8
	st.b	[%a2] 29, %d15
.LVL14:
	ld.bu	%d15, [%a15] 9
	st.b	[%a2] 30, %d15
.LVL15:
	ld.bu	%d15, [%a15] 10
	st.b	[%a2] 31, %d15
.LVL16:
	ld.bu	%d15, [%a15] 11
	st.b	[%a2] 32, %d15
.LVL17:
	ld.bu	%d15, [%a15] 12
	st.b	[%a2] 33, %d15
.LVL18:
	ld.bu	%d15, [%a15] 13
	st.b	[%a2] 34, %d15
.LVL19:
	ld.bu	%d15, [%a15] 14
	st.b	[%a2] 35, %d15
.LVL20:
	ld.bu	%d15, [%a15] 15
	st.b	[%a2] 36, %d15
.LVL21:
	ret
.LVL22:
.L4:
	movh.a	%a3, hi:FR_xUserHeadRamBlock
	lea	%a2, [%a3] lo:FR_xUserHeadRamBlock
.LBB13:
.LBB12:
	.loc 2 129 0
	mov	%d15, 0
	lea	%a3, 20
.LVL23:
.L2:
.LBE12:
.LBE13:
	.loc 1 90 0
	addsc.a	%a4, %a15, %d15, 0
	addsc.a	%a5, %a2, %d15, 0
	ld.bu	%d2, [%a4]0
	add	%d15, 1
.LVL24:
	st.b	[%a5]0, %d2
.LVL25:
	.loc 1 88 0
	loop	%a3, .L2
	j	.L3
.LFE250:
	.size	FR_vidGetUserHeadInfoCallout, .-FR_vidGetUserHeadInfoCallout
.section .text.FR_bExtStoreCondIsMetCallout,"ax",@progbits
	.align 1
	.type	FR_bExtStoreCondIsMetCallout, @function
FR_bExtStoreCondIsMetCallout:
.LFB253:
	.loc 1 126 0
.LVL26:
	.loc 1 137 0
	mov	%d2, 1
	ret
.LFE253:
	.size	FR_bExtStoreCondIsMetCallout, .-FR_bExtStoreCondIsMetCallout
.section .text.FR_vidGetCustomEvent_1,"ax",@progbits
	.align 1
	.type	FR_vidGetCustomEvent_1, @function
FR_vidGetCustomEvent_1:
.LFB255:
	.loc 2 44 0
.LVL27:
	ret
.LFE255:
	.size	FR_vidGetCustomEvent_1, .-FR_vidGetCustomEvent_1
.section .text.FR_bUpdateReqIsAllowedCallout,"ax",@progbits
	.align 1
	.type	FR_bUpdateReqIsAllowedCallout, @function
FR_bUpdateReqIsAllowedCallout:
.LFB251:
	.loc 1 100 0
.LVL28:
	.loc 1 103 0
	j	BSW_bGetBswReadySts
.LVL29:
.LFE251:
	.size	FR_bUpdateReqIsAllowedCallout, .-FR_bUpdateReqIsAllowedCallout
.section .text.FR_bFaultIsOccurredCallout,"ax",@progbits
	.align 1
	.type	FR_bFaultIsOccurredCallout, @function
FR_bFaultIsOccurredCallout:
.LFB252:
	.loc 1 109 0
.LVL30:
	.loc 1 113 0
	mov	%d4, 4
	call	DSM_u8GetUnitFaultLevel
.LVL31:
	.loc 1 123 0
	ge.u	%d2, %d2, 3
.LVL32:
	ret
.LFE252:
	.size	FR_bFaultIsOccurredCallout, .-FR_bFaultIsOccurredCallout
.section .text.FR_vidGetExtDataOfFixHead,"ax",@progbits
	.align 1
	.type	FR_vidGetExtDataOfFixHead, @function
FR_vidGetExtDataOfFixHead:
.LFB249:
	.loc 1 70 0
.LVL33:
.LBB14:
.LBB15:
	.loc 2 152 0
	movh.a	%a2, hi:FR_atBufIndex
	lea	%a2, [%a2] lo:FR_atBufIndex
	mov	%d15, 0
.LBE15:
.LBE14:
	.loc 1 70 0
	mov.aa	%a15, %a4
.LBB17:
.LBB16:
	.loc 2 152 0
	st.w	[%a2] 12, %d15
.LBE16:
.LBE17:
	.loc 1 76 0
	call	MAIN_u32GetRunTime_ms
.LVL34:
	st.w	[%a15] 8, %d2
	.loc 1 77 0
	call	MAIN_u32GetFactoryRunTime_s
.LVL35:
	st.w	[%a15] 12, %d2
	ret
.LFE249:
	.size	FR_vidGetExtDataOfFixHead, .-FR_vidGetExtDataOfFixHead
	.global	FR_ktPDUBankUserCfg
.section FRConst.FixCfg.FR_ktPDUBankUserCfg,"a",@progbits
	.align 2
	.type	FR_ktPDUBankUserCfg, @object
	.size	FR_ktPDUBankUserCfg, 28
FR_ktPDUBankUserCfg:
	.byte	1
	.zero	1
	.short	3904
	.word	1045220557
	.word	FR_tInputBuf_PDU
	.word	FR_atBufIndex
	.word	FR_aktBufCfgGroup
	.word	FR_ktUserIf
	.word	FR_ktUserHeadCfg
.section .rodata.a4.FR_ktUserIf,"a",@progbits
	.align 2
	.type	FR_ktUserIf, @object
	.size	FR_ktUserIf, 20
FR_ktUserIf:
	.word	FR_vidGetUserHeadInfoCallout
	.word	FR_vidGetExtDataOfFixHead
	.word	FR_bFaultIsOccurredCallout
	.word	FR_bExtStoreCondIsMetCallout
	.word	FR_bUpdateReqIsAllowedCallout
.section .rodata.a4.FR_ktUserHeadCfg,"a",@progbits
	.align 2
	.type	FR_ktUserHeadCfg, @object
	.size	FR_ktUserHeadCfg, 8
FR_ktUserHeadCfg:
	.word	FR_xUserHeadRamBlock
	.short	64
	.short	192
.section .rodata.a4.FR_aktBufCfgGroup,"a",@progbits
	.align 2
	.type	FR_aktBufCfgGroup, @object
	.size	FR_aktBufCfgGroup, 16
FR_aktBufCfgGroup:
	.byte	0
	.zero	1
	.short	100
	.short	108
	.short	36
	.short	10000
	.zero	2
	.word	FR_vidGetCustomEvent_1
.section .rodata.a1.FR_PDUInputEventSize1,"a",@progbits
	.type	FR_PDUInputEventSize1, @object
	.size	FR_PDUInputEventSize1, 1
FR_PDUInputEventSize1:
	.byte	36
.section .bss.a1.FR_u8OverflowProtectBuf2,"aw",@nobits
	.type	FR_u8OverflowProtectBuf2, @object
	.size	FR_u8OverflowProtectBuf2, 100
FR_u8OverflowProtectBuf2:
	.zero	100
.section .bss.a2.FR_tInputBuf_PDU,"aw",@nobits
	.align 1
	.type	FR_tInputBuf_PDU, @object
	.size	FR_tInputBuf_PDU, 3904
FR_tInputBuf_PDU:
	.zero	3904
.section .bss.a1.FR_u8OverflowProtectBuf1,"aw",@nobits
	.type	FR_u8OverflowProtectBuf1, @object
	.size	FR_u8OverflowProtectBuf1, 100
FR_u8OverflowProtectBuf1:
	.zero	100
.section .bss.a4.FR_atBufIndex,"aw",@nobits
	.align 2
	.type	FR_atBufIndex, @object
	.size	FR_atBufIndex, 96
FR_atBufIndex:
	.zero	96
.section .bss.a4.FR_xUserHeadRamBlock,"aw",@nobits
	.align 2
	.type	FR_xUserHeadRamBlock, @object
	.size	FR_xUserHeadRamBlock, 64
FR_xUserHeadRamBlock:
	.zero	64
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
	.uaword	.LFB250
	.uaword	.LFE250-.LFB250
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB253
	.uaword	.LFE253-.LFB253
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB255
	.uaword	.LFE255-.LFB255
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB251
	.uaword	.LFE251-.LFB251
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB252
	.uaword	.LFE252-.LFB252
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB249
	.uaword	.LFE249-.LFB249
	.align 2
.LEFDE10:
.section .text,"ax",@progbits
.Letext0:
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 4 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\Cpu\\Std\\Ifx_Types.h"
	.file 5 ".\\output\\inc/..\\..\\bswcdd\\FR\\FR_PublicTypes.h"
	.file 6 "ASW\\CDD_FR\\PDU\\FR_PDUCfg.h"
	.file 7 ".\\output\\inc/..\\..\\bswcdd\\FR\\FR_MacroDef.h"
	.file 8 ".\\output\\inc/..\\..\\bswcdd\\PortMux\\PortMux.h"
	.file 9 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\_Impl\\IfxCpu_cfg.h"
	.file 10 ".\\output\\inc/..\\..\\main\\McuMain\\MAIN_L.h"
	.file 11 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\DSM.h"
	.file 12 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSW.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x1382
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"ASW\\CDD_FR\\PDU\\FR_PDUCfg.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x30
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
	.byte	0x3
	.byte	0x5b
	.uaword	0x1f1
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"sint32"
	.byte	0x3
	.byte	0x60
	.uaword	0x215
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
	.uaword	0x23b
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x3
	.string	"float32"
	.byte	0x3
	.byte	0x75
	.uaword	0x274
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
	.uaword	0x1c5
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x4
	.byte	0x4
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2c7
	.uleb128 0x6
	.uleb128 0x7
	.byte	0x8
	.byte	0x4
	.byte	0x8c
	.uaword	0x2f2
	.uleb128 0x8
	.string	"module"
	.byte	0x4
	.byte	0x8e
	.uaword	0x2c1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"index"
	.byte	0x4
	.byte	0x8f
	.uaword	0x207
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"IfxModule_IndexMap"
	.byte	0x4
	.byte	0x90
	.uaword	0x2c8
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x8
	.byte	0x5
	.byte	0x14
	.uaword	0x390
	.uleb128 0x8
	.string	"u16Year"
	.byte	0x5
	.byte	0x15
	.uaword	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"u8Month"
	.byte	0x5
	.byte	0x16
	.uaword	0x1b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x8
	.string	"u8Day"
	.byte	0x5
	.byte	0x17
	.uaword	0x1b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x8
	.string	"u8Hour"
	.byte	0x5
	.byte	0x18
	.uaword	0x1b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"u8Minute"
	.byte	0x5
	.byte	0x19
	.uaword	0x1b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x8
	.string	"u8Second"
	.byte	0x5
	.byte	0x1a
	.uaword	0x1b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x5
	.byte	0x1b
	.uaword	0x318
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x10
	.byte	0x5
	.byte	0x1d
	.uaword	0x3f4
	.uleb128 0x8
	.string	"tTime"
	.byte	0x5
	.byte	0x1e
	.uaword	0x390
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"u32Start2ErrTime_ms"
	.byte	0x5
	.byte	0x1f
	.uaword	0x22d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.string	"u32FactoryRunTime_s"
	.byte	0x5
	.byte	0x20
	.uaword	0x22d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0xa
	.uaword	.LASF1
	.byte	0x5
	.byte	0x21
	.uaword	0x39b
	.uleb128 0x9
	.uaword	.LASF2
	.byte	0x10
	.byte	0x5
	.byte	0x23
	.uaword	0x453
	.uleb128 0x8
	.string	"u32BufAddr"
	.byte	0x5
	.byte	0x24
	.uaword	0x453
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"u32W"
	.byte	0x5
	.byte	0x25
	.uaword	0x453
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"u32R"
	.byte	0x5
	.byte	0x26
	.uaword	0x453
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.string	"u32BufCtr"
	.byte	0x5
	.byte	0x27
	.uaword	0x22d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0xb
	.uaword	0x22d
	.uleb128 0xa
	.uaword	.LASF2
	.byte	0x5
	.byte	0x28
	.uaword	0x3ff
	.uleb128 0x9
	.uaword	.LASF3
	.byte	0x10
	.byte	0x5
	.byte	0x2a
	.uaword	0x4ed
	.uleb128 0x8
	.string	"u8BufId"
	.byte	0x5
	.byte	0x2b
	.uaword	0x1b8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"u16FPS"
	.byte	0x5
	.byte	0x2c
	.uaword	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x8
	.string	"u16EventNum"
	.byte	0x5
	.byte	0x2d
	.uaword	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"u16EventSize"
	.byte	0x5
	.byte	0x2e
	.uaword	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x8
	.string	"u16Period_us"
	.byte	0x5
	.byte	0x2f
	.uaword	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.string	"vidGetEvent"
	.byte	0x5
	.byte	0x31
	.uaword	0x4fe
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.uaword	0x4f9
	.uleb128 0xd
	.uaword	0x4f9
	.byte	0
	.uleb128 0xe
	.uaword	0x22d
	.uleb128 0x5
	.byte	0x4
	.uaword	0x4ed
	.uleb128 0xa
	.uaword	.LASF3
	.byte	0x5
	.byte	0x32
	.uaword	0x463
	.uleb128 0x9
	.uaword	.LASF4
	.byte	0x8
	.byte	0x5
	.byte	0x34
	.uaword	0x56f
	.uleb128 0x8
	.string	"pvUserBlockHandle"
	.byte	0x5
	.byte	0x35
	.uaword	0x2bf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"u16UserBlockSizeByByte"
	.byte	0x5
	.byte	0x36
	.uaword	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"u16HeadSize"
	.byte	0x5
	.byte	0x37
	.uaword	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0
	.uleb128 0xa
	.uaword	.LASF4
	.byte	0x5
	.byte	0x38
	.uaword	0x50f
	.uleb128 0x9
	.uaword	.LASF5
	.byte	0x14
	.byte	0x5
	.byte	0x3a
	.uaword	0x60e
	.uleb128 0x8
	.string	"vidGetUserHeadInfo"
	.byte	0x5
	.byte	0x3b
	.uaword	0x62a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"vidGetExtDataOfFixHead"
	.byte	0x5
	.byte	0x3c
	.uaword	0x647
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.uaword	.LASF6
	.byte	0x5
	.byte	0x3d
	.uaword	0x653
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.string	"bExtStoreCondIsMet"
	.byte	0x5
	.byte	0x3e
	.uaword	0x674
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.string	"bUpdateReqIsAllowed"
	.byte	0x5
	.byte	0x3f
	.uaword	0x653
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.uaword	0x61a
	.uleb128 0xd
	.uaword	0x61a
	.byte	0
	.uleb128 0xe
	.uaword	0x61f
	.uleb128 0x5
	.byte	0x4
	.uaword	0x625
	.uleb128 0xe
	.uaword	0x56f
	.uleb128 0x5
	.byte	0x4
	.uaword	0x60e
	.uleb128 0xc
	.byte	0x1
	.uaword	0x63c
	.uleb128 0xd
	.uaword	0x63c
	.byte	0
	.uleb128 0xe
	.uaword	0x641
	.uleb128 0x5
	.byte	0x4
	.uaword	0x3f4
	.uleb128 0x5
	.byte	0x4
	.uaword	0x630
	.uleb128 0x10
	.byte	0x1
	.uaword	0x287
	.uleb128 0x5
	.byte	0x4
	.uaword	0x64d
	.uleb128 0x11
	.byte	0x1
	.uaword	0x287
	.uaword	0x669
	.uleb128 0xd
	.uaword	0x669
	.byte	0
	.uleb128 0xe
	.uaword	0x66e
	.uleb128 0x5
	.byte	0x4
	.uaword	0x287
	.uleb128 0x5
	.byte	0x4
	.uaword	0x659
	.uleb128 0xa
	.uaword	.LASF5
	.byte	0x5
	.byte	0x40
	.uaword	0x57a
	.uleb128 0x9
	.uaword	.LASF7
	.byte	0x1c
	.byte	0x5
	.byte	0x42
	.uaword	0x754
	.uleb128 0x8
	.string	"u8BufNum"
	.byte	0x5
	.byte	0x43
	.uaword	0x1b8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"u16BufTotalSize"
	.byte	0x5
	.byte	0x44
	.uaword	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x8
	.string	"f32RunTimeBeforeFault_S"
	.byte	0x5
	.byte	0x45
	.uaword	0x265
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"pvInputBuf"
	.byte	0x5
	.byte	0x47
	.uaword	0x2bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.string	"patIndexSet"
	.byte	0x5
	.byte	0x48
	.uaword	0x754
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.string	"pktBufCfgSet"
	.byte	0x5
	.byte	0x4a
	.uaword	0x75a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.string	"pktBankUserIf"
	.byte	0x5
	.byte	0x4b
	.uaword	0x765
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.string	"pktUserHeadCfg"
	.byte	0x5
	.byte	0x4c
	.uaword	0x61f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x458
	.uleb128 0x5
	.byte	0x4
	.uaword	0x760
	.uleb128 0xe
	.uaword	0x504
	.uleb128 0x5
	.byte	0x4
	.uaword	0x76b
	.uleb128 0xe
	.uaword	0x67a
	.uleb128 0xa
	.uaword	.LASF7
	.byte	0x5
	.byte	0x4d
	.uaword	0x685
	.uleb128 0x7
	.byte	0x26
	.byte	0x6
	.byte	0x2a
	.uaword	0x7b8
	.uleb128 0x8
	.string	"au8AppSwVersion"
	.byte	0x6
	.byte	0x2b
	.uaword	0x7b8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"au8PDUFaultCode"
	.byte	0x6
	.byte	0x2c
	.uaword	0x7c8
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.byte	0
	.uleb128 0x12
	.uaword	0x1b8
	.uaword	0x7c8
	.uleb128 0x13
	.uaword	0x30c
	.byte	0x14
	.byte	0
	.uleb128 0x12
	.uaword	0x1b8
	.uaword	0x7d8
	.uleb128 0x13
	.uaword	0x30c
	.byte	0xf
	.byte	0
	.uleb128 0x14
	.uaword	.LASF8
	.byte	0x40
	.byte	0x6
	.byte	0x28
	.uaword	0x801
	.uleb128 0x15
	.string	"au8Data"
	.byte	0x6
	.byte	0x29
	.uaword	0x801
	.uleb128 0x15
	.string	"xHead"
	.byte	0x6
	.byte	0x2d
	.uaword	0x77b
	.byte	0
	.uleb128 0x12
	.uaword	0x1b8
	.uaword	0x811
	.uleb128 0x13
	.uaword	0x30c
	.byte	0x3f
	.byte	0
	.uleb128 0xa
	.uaword	.LASF8
	.byte	0x6
	.byte	0x2e
	.uaword	0x7d8
	.uleb128 0x7
	.byte	0x24
	.byte	0x6
	.byte	0x31
	.uaword	0xbab
	.uleb128 0x8
	.string	"RCEVHCM_BatPos1VoltageFild"
	.byte	0x6
	.byte	0x32
	.uaword	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"RCEVHCM_MainPosVoltage"
	.byte	0x6
	.byte	0x33
	.uaword	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x8
	.string	"RCEVHCM_BatHeatVoltage"
	.byte	0x6
	.byte	0x34
	.uaword	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"RCEVHCM_SCUVoltage"
	.byte	0x6
	.byte	0x35
	.uaword	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x8
	.string	"RCEVHCM_HV1Voltage"
	.byte	0x6
	.byte	0x37
	.uaword	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.string	"RCEVHCM_HV2Voltage"
	.byte	0x6
	.byte	0x38
	.uaword	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x8
	.string	"RCEVHCM_AuxPosVoltage"
	.byte	0x6
	.byte	0x39
	.uaword	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.string	"RCSMACS_PollingPrechgAclState"
	.byte	0x6
	.byte	0x3a
	.uaword	0x1b8
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x8
	.string	"RCSMACS_MainPosAclState"
	.byte	0x6
	.byte	0x3b
	.uaword	0x1b8
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0x8
	.string	"RCSMACS_SCUAclState"
	.byte	0x6
	.byte	0x3d
	.uaword	0x1b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.string	"RCSMACS_BatHeatAclState"
	.byte	0x6
	.byte	0x3e
	.uaword	0x1b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0x8
	.string	"RCSMACS_EACAclState"
	.byte	0x6
	.byte	0x3f
	.uaword	0x1b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0x8
	.string	"RCSMACS_AuxPosAclState"
	.byte	0x6
	.byte	0x40
	.uaword	0x1b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x13
	.uleb128 0x8
	.string	"RCSMACS_ExtendedAclState"
	.byte	0x6
	.byte	0x41
	.uaword	0x1b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.string	"RCSMACS_HV2AclState"
	.byte	0x6
	.byte	0x42
	.uaword	0x1b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.uleb128 0x8
	.string	"RCSMACS_HV4AclState"
	.byte	0x6
	.byte	0x43
	.uaword	0x1b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0x8
	.string	"RCSMACS_HV1AclState"
	.byte	0x6
	.byte	0x44
	.uaword	0x1b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x17
	.uleb128 0x8
	.string	"RCSMACS_PreMainAclState"
	.byte	0x6
	.byte	0x46
	.uaword	0x1b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.string	"RCSMACS_MainPosFaultSts"
	.byte	0x6
	.byte	0x47
	.uaword	0x1b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x19
	.uleb128 0x8
	.string	"RCSMACS_SCUFaultSts"
	.byte	0x6
	.byte	0x48
	.uaword	0x1b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0x8
	.string	"RCSMACS_BatHeatFaultSts"
	.byte	0x6
	.byte	0x49
	.uaword	0x1b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1b
	.uleb128 0x8
	.string	"RCSMACS_EACFaultSts"
	.byte	0x6
	.byte	0x4a
	.uaword	0x1b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x8
	.string	"RCSMACS_AuxPosFaultSts"
	.byte	0x6
	.byte	0x4b
	.uaword	0x1b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1d
	.uleb128 0x8
	.string	"RCSMACS_ExtendedFaultSts"
	.byte	0x6
	.byte	0x4c
	.uaword	0x1b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1e
	.uleb128 0x8
	.string	"RCSMACS_HV2FaultSts"
	.byte	0x6
	.byte	0x4d
	.uaword	0x1b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1f
	.uleb128 0x8
	.string	"RCSMACS_HV4FaultSts"
	.byte	0x6
	.byte	0x4f
	.uaword	0x1b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.string	"RCSMACS_HV1FaultSts"
	.byte	0x6
	.byte	0x50
	.uaword	0x1b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x21
	.uleb128 0x8
	.string	"RCSMACS_PreMainFaultSts"
	.byte	0x6
	.byte	0x51
	.uaword	0x1b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x22
	.byte	0
	.uleb128 0x3
	.string	"FR_InputEvent1"
	.byte	0x6
	.byte	0x53
	.uaword	0x81c
	.uleb128 0x16
	.uahalf	0xf30
	.byte	0x7
	.byte	0xcf
	.uaword	0xbdc
	.uleb128 0x8
	.string	"atBuf1"
	.byte	0x7
	.byte	0xd1
	.uaword	0xbdc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x12
	.uaword	0xbab
	.uaword	0xbec
	.uleb128 0x13
	.uaword	0x30c
	.byte	0x6b
	.byte	0
	.uleb128 0x17
	.uaword	.LASF9
	.uahalf	0xf40
	.byte	0x7
	.byte	0xcd
	.uaword	0xc15
	.uleb128 0x15
	.string	"au8Data"
	.byte	0x7
	.byte	0xce
	.uaword	0xc15
	.uleb128 0x15
	.string	"tSet"
	.byte	0x7
	.byte	0xe2
	.uaword	0xbc1
	.byte	0
	.uleb128 0x12
	.uaword	0x1b8
	.uaword	0xc26
	.uleb128 0x18
	.uaword	0x30c
	.uahalf	0xf3f
	.byte	0
	.uleb128 0xa
	.uaword	.LASF9
	.byte	0x7
	.byte	0xe3
	.uaword	0xbec
	.uleb128 0x19
	.byte	0x1
	.byte	0x7
	.byte	0xe5
	.uaword	0xc5c
	.uleb128 0x1a
	.string	"FR_CFG_INDEX_1"
	.sleb128 0
	.uleb128 0x1a
	.string	"FR_CFG_MAX_NUM"
	.sleb128 1
	.byte	0
	.uleb128 0x1b
	.string	"DSM_CONTROL_UNIT_INDEX"
	.byte	0x1
	.byte	0xb
	.byte	0x2b
	.uaword	0xcd0
	.uleb128 0x1a
	.string	"DSM_UNIT_0"
	.sleb128 0
	.uleb128 0x1a
	.string	"DSM_UNIT_1"
	.sleb128 1
	.uleb128 0x1a
	.string	"DSM_UNIT_2"
	.sleb128 2
	.uleb128 0x1a
	.string	"DSM_UNIT_3"
	.sleb128 3
	.uleb128 0x1a
	.string	"DSM_UNIT_4"
	.sleb128 4
	.uleb128 0x1a
	.string	"DSM_UNIT_MAX_NUM"
	.sleb128 5
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.byte	0x8
	.byte	0x6
	.uaword	0xe22
	.uleb128 0x1a
	.string	"ePMux_DIOInputMux1"
	.sleb128 0
	.uleb128 0x1a
	.string	"ePMux_DIOInputMux2"
	.sleb128 1
	.uleb128 0x1a
	.string	"ePMux_DIOInputMux3"
	.sleb128 2
	.uleb128 0x1a
	.string	"ePMUX_ANInputMux1"
	.sleb128 3
	.uleb128 0x1a
	.string	"ePMUX_ANInputMux2"
	.sleb128 4
	.uleb128 0x1a
	.string	"ePMUX_ANInputMux3"
	.sleb128 5
	.uleb128 0x1a
	.string	"ePMUX_ANInputMux4"
	.sleb128 6
	.uleb128 0x1a
	.string	"ePMUX_ANInputMux5"
	.sleb128 7
	.uleb128 0x1a
	.string	"ePMUX_ANInputMux6"
	.sleb128 8
	.uleb128 0x1a
	.string	"ePMUX_ANInputMux7"
	.sleb128 9
	.uleb128 0x1a
	.string	"ePMUX_ANInputMux8"
	.sleb128 10
	.uleb128 0x1a
	.string	"ePMUX_ANInputMux9"
	.sleb128 11
	.uleb128 0x1a
	.string	"ePMUX_ANInputMux10"
	.sleb128 12
	.uleb128 0x1a
	.string	"ePMUX_ANInputMux11"
	.sleb128 13
	.uleb128 0x1a
	.string	"ePMUX_ANInputMux12"
	.sleb128 14
	.uleb128 0x1a
	.string	"ePMUX_InputMuxMaxNum"
	.sleb128 15
	.byte	0
	.uleb128 0x1c
	.string	"FR_vidGetEventCallout_1"
	.byte	0x1
	.byte	0x8d
	.byte	0x1
	.byte	0x3
	.uaword	0xe4f
	.uleb128 0x1d
	.uaword	.LASF10
	.byte	0x1
	.byte	0x8d
	.uaword	0x4f9
	.byte	0
	.uleb128 0x1c
	.string	"FR_vidUpdateBufAddr"
	.byte	0x2
	.byte	0x7d
	.byte	0x1
	.byte	0x3
	.uaword	0xe80
	.uleb128 0x1e
	.string	"u32TempAddr"
	.byte	0x2
	.byte	0x7f
	.uaword	0x22d
	.byte	0
	.uleb128 0x1f
	.string	"FR_vidUpdateBufCtr_1_"
	.byte	0x2
	.byte	0xab
	.byte	0x1
	.byte	0x3
	.uleb128 0x1f
	.string	"FR_vidUpdateBufCtr"
	.byte	0x2
	.byte	0x95
	.byte	0x1
	.byte	0x3
	.uleb128 0x20
	.string	"FR_vidGetUserHeadInfoCallout"
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.uaword	.LFB250
	.uaword	.LFE250
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xf2a
	.uleb128 0x21
	.string	"kpktCfg"
	.byte	0x1
	.byte	0x51
	.uaword	0x61a
	.uaword	.LLST0
	.uleb128 0x22
	.string	"u8Index"
	.byte	0x1
	.byte	0x57
	.uaword	0x1b8
	.uaword	.LLST1
	.uleb128 0x23
	.uaword	0xe4f
	.uaword	.LBB10
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x54
	.uleb128 0x24
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x25
	.uaword	0xe6c
	.uaword	.LLST2
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.string	"FR_bExtStoreCondIsMetCallout"
	.byte	0x1
	.byte	0x7d
	.byte	0x1
	.uaword	0x287
	.uaword	.LFB253
	.uaword	.LFE253
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xf92
	.uleb128 0x27
	.string	"kpbBufRefreshCmd"
	.byte	0x1
	.byte	0x7d
	.uaword	0x669
	.byte	0x1
	.byte	0x64
	.uleb128 0x28
	.string	"bConditionIsMet"
	.byte	0x1
	.byte	0x7f
	.uaword	0x287
	.byte	0x1
	.byte	0
	.uleb128 0x20
	.string	"FR_vidGetCustomEvent_1"
	.byte	0x2
	.byte	0x2c
	.byte	0x1
	.uaword	.LFB255
	.uaword	.LFE255
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xfcb
	.uleb128 0x29
	.uaword	.LASF10
	.byte	0x2
	.byte	0x2c
	.uaword	0x4f9
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x26
	.string	"FR_bUpdateReqIsAllowedCallout"
	.byte	0x1
	.byte	0x63
	.byte	0x1
	.uaword	0x287
	.uaword	.LFB251
	.uaword	.LFE251
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1022
	.uleb128 0x28
	.string	"bReqIsAllowed"
	.byte	0x1
	.byte	0x65
	.uaword	0x287
	.byte	0x1
	.uleb128 0x2a
	.uaword	.LVL29
	.byte	0x1
	.uaword	0x1319
	.byte	0
	.uleb128 0x26
	.string	"FR_bFaultIsOccurredCallout"
	.byte	0x1
	.byte	0x6c
	.byte	0x1
	.uaword	0x287
	.uaword	.LFB252
	.uaword	.LFE252
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1074
	.uleb128 0x2b
	.uaword	.LASF6
	.byte	0x1
	.byte	0x6e
	.uaword	0x287
	.uaword	.LLST3
	.uleb128 0x2c
	.uaword	.LVL31
	.uaword	0x1337
	.uleb128 0x2d
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0x20
	.string	"FR_vidGetExtDataOfFixHead"
	.byte	0x1
	.byte	0x45
	.byte	0x1
	.uaword	.LFB249
	.uaword	.LFE249
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x10fd
	.uleb128 0x21
	.string	"kptData"
	.byte	0x1
	.byte	0x45
	.uaword	0x63c
	.uaword	.LLST4
	.uleb128 0x2e
	.byte	0x1
	.uaword	.LASF11
	.byte	0x1
	.byte	0x4c
	.uaword	0x215
	.byte	0x1
	.uaword	0x10c8
	.uleb128 0x2f
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.uaword	.LASF12
	.byte	0x1
	.byte	0x4d
	.uaword	0x215
	.byte	0x1
	.uaword	0x10db
	.uleb128 0x2f
	.byte	0
	.uleb128 0x30
	.uaword	0xe9b
	.uaword	.LBB14
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x48
	.uleb128 0x31
	.uaword	.LVL34
	.uaword	0x1363
	.uleb128 0x31
	.uaword	.LVL35
	.uaword	0x1376
	.byte	0
	.uleb128 0x12
	.uaword	0x22d
	.uaword	0x110c
	.uleb128 0x32
	.uaword	0x30c
	.byte	0
	.uleb128 0x1e
	.string	"FR_au32BufCtr"
	.byte	0x2
	.byte	0x15
	.uaword	0x10fd
	.uleb128 0x33
	.string	"FR_xUserHeadRamBlock"
	.byte	0x2
	.byte	0x16
	.uaword	0x811
	.byte	0x5
	.byte	0x3
	.uaword	FR_xUserHeadRamBlock
	.uleb128 0x12
	.uaword	0x458
	.uaword	0x1153
	.uleb128 0x13
	.uaword	0x30c
	.byte	0x5
	.byte	0
	.uleb128 0x33
	.string	"FR_atBufIndex"
	.byte	0x2
	.byte	0x17
	.uaword	0x1143
	.byte	0x5
	.byte	0x3
	.uaword	FR_atBufIndex
	.uleb128 0x12
	.uaword	0x1b8
	.uaword	0x117e
	.uleb128 0x13
	.uaword	0x30c
	.byte	0x63
	.byte	0
	.uleb128 0x33
	.string	"FR_u8OverflowProtectBuf1"
	.byte	0x2
	.byte	0x19
	.uaword	0x11a4
	.byte	0x5
	.byte	0x3
	.uaword	FR_u8OverflowProtectBuf1
	.uleb128 0xb
	.uaword	0x116e
	.uleb128 0x33
	.string	"FR_tInputBuf_PDU"
	.byte	0x2
	.byte	0x1a
	.uaword	0xc26
	.byte	0x5
	.byte	0x3
	.uaword	FR_tInputBuf_PDU
	.uleb128 0x33
	.string	"FR_u8OverflowProtectBuf2"
	.byte	0x2
	.byte	0x1b
	.uaword	0x11ed
	.byte	0x5
	.byte	0x3
	.uaword	FR_u8OverflowProtectBuf2
	.uleb128 0xb
	.uaword	0x116e
	.uleb128 0x33
	.string	"FR_PDUInputEventSize1"
	.byte	0x2
	.byte	0x25
	.uaword	0x1215
	.byte	0x5
	.byte	0x3
	.uaword	FR_PDUInputEventSize1
	.uleb128 0xe
	.uaword	0x121a
	.uleb128 0xb
	.uaword	0x1b8
	.uleb128 0x12
	.uaword	0x504
	.uaword	0x122f
	.uleb128 0x13
	.uaword	0x30c
	.byte	0
	.byte	0
	.uleb128 0x33
	.string	"FR_aktBufCfgGroup"
	.byte	0x2
	.byte	0x45
	.uaword	0x124e
	.byte	0x5
	.byte	0x3
	.uaword	FR_aktBufCfgGroup
	.uleb128 0xe
	.uaword	0x121f
	.uleb128 0x33
	.string	"FR_ktUserHeadCfg"
	.byte	0x2
	.byte	0x5a
	.uaword	0x625
	.byte	0x5
	.byte	0x3
	.uaword	FR_ktUserHeadCfg
	.uleb128 0x33
	.string	"FR_ktUserIf"
	.byte	0x2
	.byte	0x60
	.uaword	0x76b
	.byte	0x5
	.byte	0x3
	.uaword	FR_ktUserIf
	.uleb128 0x12
	.uaword	0x2f2
	.uaword	0x129a
	.uleb128 0x13
	.uaword	0x30c
	.byte	0x3
	.byte	0
	.uleb128 0x34
	.string	"IfxCpu_cfg_indexMap"
	.byte	0x9
	.byte	0xaa
	.uaword	0x12b7
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.uaword	0x128a
	.uleb128 0x34
	.string	"MAIN_u8DEV_Fault"
	.byte	0xa
	.byte	0x86
	.uaword	0x7c8
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.string	"MAIN_u8UdsSwVerSup"
	.byte	0xa
	.byte	0xa6
	.uaword	0x7b8
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.string	"FR_ktPDUBankUserCfg"
	.byte	0x2
	.byte	0x6b
	.uaword	0x1314
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	FR_ktPDUBankUserCfg
	.uleb128 0xe
	.uaword	0x770
	.uleb128 0x36
	.byte	0x1
	.string	"BSW_bGetBswReadySts"
	.byte	0xc
	.byte	0x73
	.byte	0x1
	.uaword	0x287
	.byte	0x1
	.uleb128 0x37
	.byte	0x1
	.string	"DSM_u8GetUnitFaultLevel"
	.byte	0xb
	.byte	0x5f
	.byte	0x1
	.uaword	0x1b8
	.byte	0x1
	.uaword	0x1363
	.uleb128 0xd
	.uaword	0x1b8
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.uaword	.LASF11
	.byte	0x1
	.byte	0x4c
	.uaword	0x215
	.byte	0x1
	.uaword	0x1376
	.uleb128 0x2f
	.byte	0
	.uleb128 0x38
	.byte	0x1
	.uaword	.LASF12
	.byte	0x1
	.byte	0x4d
	.uaword	0x215
	.byte	0x1
	.uleb128 0x2f
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
	.uleb128 0x35
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x10
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x17
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
	.uleb128 0x15
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
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x17
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x6
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
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x1d
	.byte	0
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
	.uleb128 0x31
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
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
	.byte	0x64
	.uaword	.LVL1
	.uaword	.LFE250
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
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x2
	.byte	0x44
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x2
	.byte	0x37
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x2
	.byte	0x39
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x2
	.byte	0x3a
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x2
	.byte	0x3b
	.byte	0x9f
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x2
	.byte	0x3c
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x2
	.byte	0x3d
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x2
	.byte	0x3e
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x2
	.byte	0x3f
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x2
	.byte	0x40
	.byte	0x9f
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL0
	.uaword	.LVL2
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL2
	.uaword	.LFE250
	.uahalf	0x6
	.byte	0x3
	.uaword	FR_tInputBuf_PDU
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL31
	.uaword	.LVL32
	.uahalf	0x8
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x32
	.byte	0x2b
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL33
	.uaword	.LVL34-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL34-1
	.uaword	.LFE249
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x44
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB250
	.uaword	.LFE250-.LFB250
	.uaword	.LFB253
	.uaword	.LFE253-.LFB253
	.uaword	.LFB255
	.uaword	.LFE255-.LFB255
	.uaword	.LFB251
	.uaword	.LFE251-.LFB251
	.uaword	.LFB252
	.uaword	.LFE252-.LFB252
	.uaword	.LFB249
	.uaword	.LFE249-.LFB249
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB10
	.uaword	.LBE10
	.uaword	.LBB13
	.uaword	.LBE13
	.uaword	0
	.uaword	0
	.uaword	.LBB14
	.uaword	.LBE14
	.uaword	.LBB17
	.uaword	.LBE17
	.uaword	0
	.uaword	0
	.uaword	.LFB250
	.uaword	.LFE250
	.uaword	.LFB253
	.uaword	.LFE253
	.uaword	.LFB255
	.uaword	.LFE255
	.uaword	.LFB251
	.uaword	.LFE251
	.uaword	.LFB252
	.uaword	.LFE252
	.uaword	.LFB249
	.uaword	.LFE249
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF6:
	.string	"bFaultIsOccurred"
.LASF7:
	.string	"FR_BankUserCfg"
.LASF1:
	.string	"FR_tExtDataOfFixHead"
.LASF11:
	.string	"MAIN_u32GetRunTime_ms"
.LASF12:
	.string	"MAIN_u32GetFactoryRunTime_s"
.LASF3:
	.string	"FR_BufCfg"
.LASF2:
	.string	"FR_BufIndex"
.LASF9:
	.string	"FR_InputBuf"
.LASF0:
	.string	"FR_tTimestamp"
.LASF10:
	.string	"ku32IndexInBuf"
.LASF8:
	.string	"FR_UserHead"
.LASF5:
	.string	"FR_BankUserIf"
.LASF4:
	.string	"FR_UserHeadCfg"
	.extern	MAIN_u32GetFactoryRunTime_s,STT_FUNC,0
	.extern	MAIN_u32GetRunTime_ms,STT_FUNC,0
	.extern	DSM_u8GetUnitFaultLevel,STT_FUNC,0
	.extern	BSW_bGetBswReadySts,STT_FUNC,0
	.extern	MAIN_u8DEV_Fault,STT_OBJECT,16
	.extern	MAIN_u8UdsSwVerSup,STT_OBJECT,21
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
