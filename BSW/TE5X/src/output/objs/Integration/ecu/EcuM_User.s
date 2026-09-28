	.file	"EcuM_User.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.EcuM_User_CheckWKSourceAll,"ax",@progbits
	.align 1
	.global	EcuM_User_CheckWKSourceAll
	.type	EcuM_User_CheckWKSourceAll, @function
EcuM_User_CheckWKSourceAll:
.LFB31:
	.file 1 "Integration\\ecu\\EcuM_User.c"
	.loc 1 52 0
.LBB4:
.LBB5:
	.loc 1 82 0
	call	IOHAL_u16Read_CH_DIO_IN_M_KEY_ON
.LVL0:
	.loc 1 84 0
	movh.a	%a15, hi:wakeup_src.13873
	.loc 1 82 0
	jnz	%d2, .L2
	.loc 1 84 0
	mov	%d15, 2
	st.b	[%a15] lo:wakeup_src.13873, %d15
	.loc 1 92 0
	ld.bu	%d15, [%a15] lo:wakeup_src.13873
.LBE5:
.LBE4:
	.loc 1 55 0
	jeq	%d15, 1, .L5
.L10:
	jne	%d15, 2, .L9
	.loc 1 61 0
	mov	%d4, 32
	j	EcuM_SetWakeupEvent
.LVL1:
.L2:
.LBB7:
.LBB6:
	.loc 1 88 0
	mov	%d15, 1
	st.b	[%a15] lo:wakeup_src.13873, %d15
	.loc 1 92 0
	ld.bu	%d15, [%a15] lo:wakeup_src.13873
.LBE6:
.LBE7:
	.loc 1 55 0
	jne	%d15, 1, .L10
.L5:
	.loc 1 58 0
	mov	%d4, 64
	j	EcuM_SetWakeupEvent
.LVL2:
.L9:
	ret
.LFE31:
	.size	EcuM_User_CheckWKSourceAll, .-EcuM_User_CheckWKSourceAll
.section .bss.a1.wakeup_src.13873,"aw",@nobits
	.type	wakeup_src.13873, @object
	.size	wakeup_src.13873, 1
wakeup_src.13873:
	.zero	1
	.global	WakeUpreason
.section .bss.a1.WakeUpreason,"aw",@nobits
	.type	WakeUpreason, @object
	.size	WakeUpreason, 1
WakeUpreason:
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
	.uaword	.LFB31
	.uaword	.LFE31-.LFB31
	.align 2
.LEFDE0:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\CanIf\\integration\\Can_GeneralTypes.h"
	.file 4 ".\\output\\inc/..\\..\\bsw\\EcuM\\api\\EcuM_Types.h"
	.file 5 "Integration\\ecu\\EcuM_User.h"
	.file 6 ".\\output\\inc/..\\..\\bswcdd\\IOHAL\\IOHAL_Cfg_I.h"
	.file 7 ".\\output\\inc/..\\..\\bsw\\EcuM\\api\\EcuM_Cbk.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x4e7
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"Integration\\ecu\\EcuM_User.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x18
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
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
	.uaword	0x1e5
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
	.uaword	0x221
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x4
	.byte	0x1
	.byte	0x3
	.byte	0xa5
	.uaword	0x32b
	.uleb128 0x5
	.string	"CANTRCV_WU_ERROR"
	.sleb128 0
	.uleb128 0x5
	.string	"CANTRCV_WU_NOT_SUPPORTED"
	.sleb128 1
	.uleb128 0x5
	.string	"CANTRCV_WU_BY_BUS"
	.sleb128 2
	.uleb128 0x5
	.string	"CANTRCV_WU_INTERNALLY"
	.sleb128 3
	.uleb128 0x5
	.string	"CANTRCV_WU_RESET"
	.sleb128 4
	.uleb128 0x5
	.string	"CANTRCV_WU_POWER_ON"
	.sleb128 5
	.uleb128 0x5
	.string	"CANTRCV_WU_BY_PIN"
	.sleb128 6
	.byte	0
	.uleb128 0x3
	.string	"CanTrcv_TrcvWakeupReasonType"
	.byte	0x3
	.byte	0xaf
	.uaword	0x28b
	.uleb128 0x3
	.string	"EcuM_WakeupSourceType"
	.byte	0x4
	.byte	0x4e
	.uaword	0x213
	.uleb128 0x4
	.byte	0x1
	.byte	0x5
	.byte	0x14
	.uaword	0x3a5
	.uleb128 0x5
	.string	"NO_REASON_WU"
	.sleb128 0
	.uleb128 0x5
	.string	"KL15_WU"
	.sleb128 1
	.uleb128 0x5
	.string	"CANMSG_WU"
	.sleb128 2
	.uleb128 0x5
	.string	"RESERVED"
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.string	"wakeup_src_t"
	.byte	0x5
	.byte	0x19
	.uaword	0x36c
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x6
	.string	"CDD_Check_Wakeup_Src"
	.byte	0x1
	.byte	0x4e
	.byte	0x1
	.uaword	0x3a5
	.byte	0x1
	.uaword	0x3ef
	.uleb128 0x7
	.uaword	.LASF0
	.byte	0x1
	.byte	0x51
	.uaword	0x3ef
	.byte	0
	.uleb128 0x8
	.uaword	0x3a5
	.uleb128 0x9
	.byte	0x1
	.string	"EcuM_User_CheckWKSourceAll"
	.byte	0x1
	.byte	0x33
	.byte	0x1
	.uaword	.LFB31
	.uaword	.LFE31
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x484
	.uleb128 0x7
	.uaword	.LASF0
	.byte	0x1
	.byte	0x35
	.uaword	0x3a5
	.uleb128 0xa
	.uaword	0x3c1
	.uaword	.LBB4
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x36
	.uaword	0x45d
	.uleb128 0xb
	.uaword	.Ldebug_ranges0+0
	.uleb128 0xc
	.uaword	0x3e3
	.byte	0x5
	.byte	0x3
	.uaword	wakeup_src.13873
	.uleb128 0xd
	.uaword	.LVL0
	.uaword	0x49f
	.byte	0
	.byte	0
	.uleb128 0xe
	.uaword	.LVL1
	.byte	0x1
	.uaword	0x4ca
	.uaword	0x472
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x10
	.uaword	.LVL2
	.byte	0x1
	.uaword	0x4ca
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"WakeUpreason"
	.byte	0x1
	.byte	0x44
	.uaword	0x32b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	WakeUpreason
	.uleb128 0x12
	.byte	0x1
	.string	"IOHAL_u16Read_CH_DIO_IN_M_KEY_ON"
	.byte	0x6
	.byte	0x7d
	.byte	0x1
	.uaword	0x1d7
	.byte	0x1
	.uleb128 0x13
	.byte	0x1
	.string	"EcuM_SetWakeupEvent"
	.byte	0x7
	.byte	0x1f
	.byte	0x1
	.byte	0x1
	.uleb128 0x14
	.uaword	0x34f
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
	.uleb128 0x7
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
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
.section .debug_aranges,"",@progbits
	.uaword	0x1c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB31
	.uaword	.LFE31-.LFB31
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB4
	.uaword	.LBE4
	.uaword	.LBB7
	.uaword	.LBE7
	.uaword	0
	.uaword	0
	.uaword	.LFB31
	.uaword	.LFE31
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"wakeup_src"
	.extern	EcuM_SetWakeupEvent,STT_FUNC,0
	.extern	IOHAL_u16Read_CH_DIO_IN_M_KEY_ON,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
