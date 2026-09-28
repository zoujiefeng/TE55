	.file	"CanSM_GetCurrentComMode.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.CanSM_GetCurrentComMode,"ax",@progbits
	.align 1
	.global	CanSM_GetCurrentComMode
	.type	CanSM_GetCurrentComMode, @function
CanSM_GetCurrentComMode:
.LFB76:
	.file 1 "bsw\\CanSM\\src\\CanSM_GetCurrentComMode.c"
	.loc 1 35 0
.LVL0:
	.loc 1 42 0
	movh.a	%a12, hi:CanSM_Init_ab
	ld.bu	%d15, [%a12] lo:CanSM_Init_ab
	.loc 1 35 0
	mov.aa	%a15, %a4
	.loc 1 42 0
	jz	%d15, .L9
	.loc 1 47 0
	call	CanSM_GetHandle
.LVL1:
	.loc 1 50 0
	movh.a	%a2, hi:CanSM_ConfigSet_pcst
	ld.a	%a2, [%a2] lo:CanSM_ConfigSet_pcst
	.loc 1 47 0
	mov	%d15, %d2
.LVL2:
	.loc 1 50 0
	ld.bu	%d2, [%a2] 11
.LVL3:
	jge.u	%d15, %d2, .L10
	.loc 1 55 0
	jz.a	%a15, .L11
.LVL4:
	.loc 1 60 0
	movh.a	%a2, hi:CanSM_Network_Init_ab
	lea	%a2, [%a2] lo:CanSM_Network_Init_ab
	addsc.a	%a2, %a2, %d15, 0
	.loc 1 63 0
	ld.bu	%d4, [%a12] lo:CanSM_Init_ab
	ld.bu	%d2, [%a2]0
	eq	%d3, %d4, 1
	and.ne	%d3, %d2, 0
	.loc 1 39 0
	mov	%d2, 1
	.loc 1 63 0
	jz	%d3, .L3
	.loc 1 66 0
	movh.a	%a2, hi:CanSM_BusSMMode_au8
	lea	%a2, [%a2] lo:CanSM_BusSMMode_au8
	addsc.a	%a2, %a2, %d15, 0
	.loc 1 69 0
	mov	%d2, 0
	.loc 1 66 0
	ld.bu	%d15, [%a2]0
.LVL5:
	st.b	[%a15]0, %d15
.LVL6:
.L3:
	.loc 1 73 0
	ret
.LVL7:
.L9:
	.loc 1 42 0 discriminator 1
	mov	%e4, 140
.LVL8:
	mov	%d6, 3
	mov	%d7, 1
	call	Det_ReportError
.LVL9:
	mov	%d2, 1
	ret
.LVL10:
.L10:
	.loc 1 50 0 discriminator 1
	mov	%e4, 140
	mov	%d6, 3
	mov	%d7, 3
	call	Det_ReportError
.LVL11:
	mov	%d2, 1
	ret
.L11:
	.loc 1 55 0 discriminator 1
	mov	%e4, 140
	mov	%d6, 3
	mov	%d7, 2
	call	Det_ReportError
.LVL12:
	mov	%d2, 1
	ret
.LFE76:
	.size	CanSM_GetCurrentComMode, .-CanSM_GetCurrentComMode
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
	.uaword	.LFB76
	.uaword	.LFE76-.LFB76
	.align 2
.LEFDE0:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 4 ".\\output\\inc/..\\..\\bsw\\ComStack\\api\\ComStack_Types.h"
	.file 5 ".\\output\\inc/..\\..\\rte\\Rte_Type.h"
	.file 6 ".\\output\\inc/..\\..\\bsw\\CanSM\\api\\CanSM.h"
	.file 7 "bsw\\CanSM\\src\\CanSM_Prv.h"
	.file 8 ".\\output\\inc/..\\..\\bsw\\Det\\api\\Det.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x768
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\CanSM\\src\\CanSM_GetCurrentComMode.c"
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
	.uaword	0x1d2
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
	.uaword	0x1fe
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
	.uleb128 0x3
	.string	"boolean"
	.byte	0x2
	.byte	0x80
	.uaword	0x1d2
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
	.uaword	0x1c5
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x3
	.string	"NetworkHandleType"
	.byte	0x4
	.byte	0x4f
	.uaword	0x1c5
	.uleb128 0x4
	.uaword	0x269
	.uaword	0x2e4
	.uleb128 0x5
	.uaword	0x2af
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.uaword	0x1c5
	.uleb128 0x3
	.string	"ComM_ModeType"
	.byte	0x5
	.byte	0xe0
	.uaword	0x1c5
	.uleb128 0x7
	.string	"Dem_EventIdType"
	.byte	0x5
	.uahalf	0x143
	.uaword	0x1f0
	.uleb128 0x8
	.byte	0x4
	.uaword	0x2e9
	.uleb128 0x8
	.byte	0x4
	.uaword	0x2e4
	.uleb128 0x6
	.uaword	0x1f0
	.uleb128 0x9
	.byte	0x14
	.byte	0x6
	.byte	0x92
	.uaword	0x458
	.uleb128 0xa
	.string	"Cntrl_startidx_pu8"
	.byte	0x6
	.byte	0x94
	.uaword	0x31c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"BorTimeL1_u16"
	.byte	0x6
	.byte	0x99
	.uaword	0x1f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.string	"BorTimeL2_u16"
	.byte	0x6
	.byte	0x9a
	.uaword	0x1f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xa
	.string	"BorTimeTxEnsured_u16"
	.byte	0x6
	.byte	0x9c
	.uaword	0x1f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.string	"BusOffEventId_uo"
	.byte	0x6
	.byte	0x9d
	.uaword	0x2fe
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xa
	.string	"Trcv_hndle_u8"
	.byte	0x6
	.byte	0x9e
	.uaword	0x1c5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.string	"SizeofController_u8"
	.byte	0x6
	.byte	0x9f
	.uaword	0x1c5
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xa
	.string	"BorCntL1L2_u8"
	.byte	0x6
	.byte	0xa0
	.uaword	0x1c5
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xa
	.string	"ComM_channelId_uo"
	.byte	0x6
	.byte	0xa1
	.uaword	0x2bb
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0xa
	.string	"BusOffDelayConfig_b"
	.byte	0x6
	.byte	0xa5
	.uaword	0x269
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.string	"TrcvPnConfig_b"
	.byte	0x6
	.byte	0xa6
	.uaword	0x269
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.byte	0
	.uleb128 0x3
	.string	"CanSM_NetworkConf_tst"
	.byte	0x6
	.byte	0xa7
	.uaword	0x327
	.uleb128 0x9
	.byte	0x10
	.byte	0x6
	.byte	0xcf
	.uaword	0x568
	.uleb128 0xa
	.string	"CanSM_NetworkConf_pcst"
	.byte	0x6
	.byte	0xd1
	.uaword	0x568
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"CanSM_NetworktoCtrlConf_pcu8"
	.byte	0x6
	.byte	0xd2
	.uaword	0x31c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.string	"CanSMModeRequestRepetitionTime_u16"
	.byte	0x6
	.byte	0xd6
	.uaword	0x322
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.string	"CanSMModeRequestRepetitionMax_u8"
	.byte	0x6
	.byte	0xd7
	.uaword	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xa
	.string	"CanSM_SizeOfCanSMNetworks_u8"
	.byte	0x6
	.byte	0xd8
	.uaword	0x1c5
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0xa
	.string	"CanSM_ActiveConfigset_u8"
	.byte	0x6
	.byte	0xd9
	.uaword	0x1c5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0x56e
	.uleb128 0x6
	.uaword	0x458
	.uleb128 0x3
	.string	"CanSM_ConfigType"
	.byte	0x6
	.byte	0xdb
	.uaword	0x475
	.uleb128 0xb
	.byte	0x1
	.string	"CanSM_GetCurrentComMode"
	.byte	0x1
	.byte	0x22
	.byte	0x1
	.uaword	0x299
	.uaword	.LFB76
	.uaword	.LFE76
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x687
	.uleb128 0xc
	.string	"network"
	.byte	0x1
	.byte	0x22
	.uaword	0x2bb
	.uaword	.LLST0
	.uleb128 0xc
	.string	"ComM_ModePtr"
	.byte	0x1
	.byte	0x22
	.uaword	0x316
	.uaword	.LLST1
	.uleb128 0xd
	.string	"stFuncVal"
	.byte	0x1
	.byte	0x24
	.uaword	0x299
	.uaword	.LLST2
	.uleb128 0xe
	.string	"CanSM_NwInitStatus_b"
	.byte	0x1
	.byte	0x25
	.uaword	0x269
	.uleb128 0xf
	.uaword	.LVL1
	.uaword	0x717
	.uleb128 0x10
	.uaword	.LVL9
	.uaword	0x73c
	.uaword	0x644
	.uleb128 0x11
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x31
	.uleb128 0x11
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x33
	.uleb128 0x11
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x11
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x8c
	.byte	0
	.uleb128 0x10
	.uaword	.LVL11
	.uaword	0x73c
	.uaword	0x667
	.uleb128 0x11
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x33
	.uleb128 0x11
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x33
	.uleb128 0x11
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x11
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x8c
	.byte	0
	.uleb128 0x12
	.uaword	.LVL12
	.uaword	0x73c
	.uleb128 0x11
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x32
	.uleb128 0x11
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x33
	.uleb128 0x11
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x11
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x8c
	.byte	0
	.byte	0
	.uleb128 0x13
	.string	"CanSM_ConfigSet_pcst"
	.byte	0x7
	.uahalf	0x125
	.uaword	0x6a6
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.byte	0x4
	.uaword	0x6ac
	.uleb128 0x6
	.uaword	0x573
	.uleb128 0x13
	.string	"CanSM_Init_ab"
	.byte	0x7
	.uahalf	0x13b
	.uaword	0x269
	.byte	0x1
	.byte	0x1
	.uleb128 0x4
	.uaword	0x2e9
	.uaword	0x6d9
	.uleb128 0x5
	.uaword	0x2af
	.byte	0x3
	.byte	0
	.uleb128 0x13
	.string	"CanSM_BusSMMode_au8"
	.byte	0x7
	.uahalf	0x1cf
	.uaword	0x6c9
	.byte	0x1
	.byte	0x1
	.uleb128 0x13
	.string	"CanSM_Network_Init_ab"
	.byte	0x7
	.uahalf	0x1ff
	.uaword	0x2d4
	.byte	0x1
	.byte	0x1
	.uleb128 0x14
	.byte	0x1
	.string	"CanSM_GetHandle"
	.byte	0x7
	.uahalf	0x249
	.byte	0x1
	.uaword	0x2bb
	.byte	0x1
	.uaword	0x73c
	.uleb128 0x15
	.uaword	0x2bb
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.string	"Det_ReportError"
	.byte	0x8
	.byte	0x70
	.byte	0x1
	.uaword	0x299
	.byte	0x1
	.uleb128 0x15
	.uaword	0x1f0
	.uleb128 0x15
	.uaword	0x1c5
	.uleb128 0x15
	.uaword	0x1c5
	.uleb128 0x15
	.uaword	0x1c5
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uaword	.LVL1-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL1-1
	.uaword	.LVL2
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL3
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL8
	.uaword	.LVL10
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LFE76
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL1-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL1-1
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL7
	.uaword	.LVL9-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL9-1
	.uaword	.LFE76
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL0
	.uaword	.LVL6
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL7
	.uaword	.LFE76
	.uahalf	0x2
	.byte	0x31
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
	.uaword	.LFB76
	.uaword	.LFE76-.LFB76
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB76
	.uaword	.LFE76
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.extern	Det_ReportError,STT_FUNC,0
	.extern	CanSM_BusSMMode_au8,STT_OBJECT,4
	.extern	CanSM_Network_Init_ab,STT_OBJECT,4
	.extern	CanSM_ConfigSet_pcst,STT_OBJECT,4
	.extern	CanSM_GetHandle,STT_FUNC,0
	.extern	CanSM_Init_ab,STT_OBJECT,1
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
