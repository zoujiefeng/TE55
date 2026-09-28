	.file	"MAIN_MSG_period_Can03.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.MainMsg_Can03_Below100ms_Func,"ax",@progbits
	.align 1
	.global	MainMsg_Can03_Below100ms_Func
	.type	MainMsg_Can03_Below100ms_Func, @function
MainMsg_Can03_Below100ms_Func:
.LFB25:
	.file 1 "main\\AutoMSG\\MAIN_MSG_period_Can03.c"
	.loc 1 2948 0
.LBB14:
.LBB15:
	.loc 1 29 0
	movh.a	%a15, hi:MAIN_MSGRxBenchOnC
	ld.bu	%d15, [%a15] lo:MAIN_MSGRxBenchOnC
	jnz	%d15, .L3
	movh.a	%a15, hi:BSW_bMsgValidState_Can03_Rx01
	ld.bu	%d15, [%a15] lo:BSW_bMsgValidState_Can03_Rx01
	jeq	%d15, 1, .L14
.L4:
	.loc 1 41 0
	movh.a	%a15, hi:BSW_bMsgValidState_Can03_Rx02
	ld.bu	%d15, [%a15] lo:BSW_bMsgValidState_Can03_Rx02
	jeq	%d15, 1, .L7
.L5:
	.loc 1 53 0
	movh.a	%a15, hi:BSW_bMsgValidState_Can03_Rx03
	ld.bu	%d15, [%a15] lo:BSW_bMsgValidState_Can03_Rx03
	jeq	%d15, 1, .L8
.L6:
	.loc 1 65 0
	movh.a	%a15, hi:BSW_bMsgValidState_Can03_Rx04
	ld.bu	%d15, [%a15] lo:BSW_bMsgValidState_Can03_Rx04
	jeq	%d15, 1, .L15
.L3:
.LBE15:
.LBE14:
	.loc 1 2952 0
	movh.a	%a15, hi:Runtime_Can03_Below100
	ld.w	%d15, [%a15] lo:Runtime_Can03_Below100
	add	%d15, 1
	st.w	[%a15] lo:Runtime_Can03_Below100, %d15
	ret
.L15:
	movh.a	%a15, hi:Runtime_Can03_Below100
.LBB18:
.LBB16:
	.loc 1 67 0
	call	DEMO_Function_CAN03_0x04
.LVL0:
.LBE16:
.LBE18:
	.loc 1 2952 0
	ld.w	%d15, [%a15] lo:Runtime_Can03_Below100
	add	%d15, 1
	st.w	[%a15] lo:Runtime_Can03_Below100, %d15
	ret
.L14:
.LBB19:
.LBB17:
	.loc 1 31 0
	call	DEMO_Function_CAN03_0x01
.LVL1:
	j	.L4
.L7:
	.loc 1 43 0
	call	DEMO_Function_CAN03_0x02
.LVL2:
	j	.L5
.L8:
	.loc 1 55 0
	call	DEMO_Function_CAN03_0x03
.LVL3:
	j	.L6
.LBE17:
.LBE19:
.LFE25:
	.size	MainMsg_Can03_Below100ms_Func, .-MainMsg_Can03_Below100ms_Func
.section .text.MainMsg_Can03_Above100ms_Func,"ax",@progbits
	.align 1
	.global	MainMsg_Can03_Above100ms_Func
	.type	MainMsg_Can03_Above100ms_Func, @function
MainMsg_Can03_Above100ms_Func:
.LFB26:
	.loc 1 2965 0
	.loc 1 2969 0
	movh.a	%a15, hi:Runtime_Can03_Above100
	ld.w	%d15, [%a15] lo:Runtime_Can03_Above100
	add	%d15, 1
	st.w	[%a15] lo:Runtime_Can03_Above100, %d15
	ret
.LFE26:
	.size	MainMsg_Can03_Above100ms_Func, .-MainMsg_Can03_Above100ms_Func
.section .text.MainMsg_Can03_SpecialPeriod_Func,"ax",@progbits
	.align 1
	.global	MainMsg_Can03_SpecialPeriod_Func
	.type	MainMsg_Can03_SpecialPeriod_Func, @function
MainMsg_Can03_SpecialPeriod_Func:
.LFB27:
	.loc 1 2982 0
	.loc 1 2986 0
	movh.a	%a15, hi:Runtime_Can03_Special
	ld.w	%d15, [%a15] lo:Runtime_Can03_Special
	add	%d15, 1
	st.w	[%a15] lo:Runtime_Can03_Special, %d15
	ret
.LFE27:
	.size	MainMsg_Can03_SpecialPeriod_Func, .-MainMsg_Can03_SpecialPeriod_Func
	.global	Runtime_Can03_Special
.section .bss.a4.Runtime_Can03_Special,"aw",@nobits
	.align 2
	.type	Runtime_Can03_Special, @object
	.size	Runtime_Can03_Special, 4
Runtime_Can03_Special:
	.zero	4
	.global	Runtime_Can03_Above100
.section .bss.a4.Runtime_Can03_Above100,"aw",@nobits
	.align 2
	.type	Runtime_Can03_Above100, @object
	.size	Runtime_Can03_Above100, 4
Runtime_Can03_Above100:
	.zero	4
	.global	Runtime_Can03_Below100
.section .bss.a4.Runtime_Can03_Below100,"aw",@nobits
	.align 2
	.type	Runtime_Can03_Below100, @object
	.size	Runtime_Can03_Below100, 4
Runtime_Can03_Below100:
	.zero	4
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
	.uaword	.LFB25
	.uaword	.LFE25-.LFB25
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB26
	.uaword	.LFE26-.LFB26
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB27
	.uaword	.LFE27-.LFB27
	.align 2
.LEFDE4:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bswcdd\\BSW\\CAN03\\CAN03_DEF.h"
	.file 4 ".\\output\\inc/..\\..\\main\\McuMain\\MAIN_L.h"
	.file 5 "main\\AutoMSG\\MAIN_MSG_Auto_Can03.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x5d7
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"main\\AutoMSG\\MAIN_MSG_period_Can03.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x20
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
	.uaword	0x21c
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
	.uaword	0x1c2
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
	.string	"MainMsg_Below100ms_Can03_Tx"
	.byte	0x1
	.uahalf	0x1fc
	.byte	0x1
	.byte	0x1
	.uleb128 0x4
	.string	"MainMsg_Above100ms_Can03_Tx"
	.byte	0x1
	.uahalf	0x4d6
	.byte	0x1
	.byte	0x1
	.uleb128 0x4
	.string	"MainMsg_Above100ms_Can03_Rx"
	.byte	0x1
	.uahalf	0x2ee
	.byte	0x1
	.byte	0x1
	.uleb128 0x4
	.string	"MainMsg_SpecialPeriod_Can03_Tx"
	.byte	0x1
	.uahalf	0x918
	.byte	0x1
	.byte	0x1
	.uleb128 0x4
	.string	"MainMsg_SpecialPeriod_Can03_Rx"
	.byte	0x1
	.uahalf	0x5c8
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.string	"MainMsg_Below100ms_Can03_Rx"
	.byte	0x1
	.byte	0x14
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.string	"MainMsg_Can03_Below100ms_Func"
	.byte	0x1
	.uahalf	0xb83
	.byte	0x1
	.uaword	.LFB25
	.uaword	.LFE25
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x3d0
	.uleb128 0x7
	.uaword	0x345
	.uaword	.LBB14
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.uahalf	0xb86
	.uleb128 0x8
	.uaword	.LVL0
	.uaword	0x55e
	.uleb128 0x8
	.uaword	.LVL1
	.uaword	0x57d
	.uleb128 0x8
	.uaword	.LVL2
	.uaword	0x59c
	.uleb128 0x8
	.uaword	.LVL3
	.uaword	0x5bb
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.string	"MainMsg_Can03_Above100ms_Func"
	.byte	0x1
	.uahalf	0xb94
	.byte	0x1
	.uaword	.LFB26
	.uaword	.LFE26
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x9
	.byte	0x1
	.string	"MainMsg_Can03_SpecialPeriod_Func"
	.byte	0x1
	.uahalf	0xba5
	.byte	0x1
	.uaword	.LFB27
	.uaword	.LFE27
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xa
	.string	"BSW_bMsgValidState_Can03_Rx01"
	.byte	0x3
	.byte	0x3b
	.uaword	0x259
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.string	"BSW_bMsgValidState_Can03_Rx02"
	.byte	0x3
	.byte	0x3c
	.uaword	0x259
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.string	"BSW_bMsgValidState_Can03_Rx03"
	.byte	0x3
	.byte	0x3d
	.uaword	0x259
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.string	"BSW_bMsgValidState_Can03_Rx04"
	.byte	0x3
	.byte	0x3e
	.uaword	0x259
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.string	"MAIN_MSGRxBenchOnC"
	.byte	0x4
	.byte	0x39
	.uaword	0x4eb
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.uaword	0x259
	.uleb128 0xc
	.string	"Runtime_Can03_Below100"
	.byte	0x1
	.byte	0xf
	.uaword	0x20e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Runtime_Can03_Below100
	.uleb128 0xc
	.string	"Runtime_Can03_Above100"
	.byte	0x1
	.byte	0x10
	.uaword	0x20e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Runtime_Can03_Above100
	.uleb128 0xc
	.string	"Runtime_Can03_Special"
	.byte	0x1
	.byte	0x11
	.uaword	0x20e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Runtime_Can03_Special
	.uleb128 0xd
	.byte	0x1
	.string	"DEMO_Function_CAN03_0x04"
	.byte	0x5
	.byte	0x25
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.byte	0x1
	.string	"DEMO_Function_CAN03_0x01"
	.byte	0x5
	.byte	0x22
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.byte	0x1
	.string	"DEMO_Function_CAN03_0x02"
	.byte	0x5
	.byte	0x23
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.byte	0x1
	.string	"DEMO_Function_CAN03_0x03"
	.byte	0x5
	.byte	0x24
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
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
.section .debug_aranges,"",@progbits
	.uaword	0x2c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB25
	.uaword	.LFE25-.LFB25
	.uaword	.LFB26
	.uaword	.LFE26-.LFB26
	.uaword	.LFB27
	.uaword	.LFE27-.LFB27
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB14
	.uaword	.LBE14
	.uaword	.LBB18
	.uaword	.LBE18
	.uaword	.LBB19
	.uaword	.LBE19
	.uaword	0
	.uaword	0
	.uaword	.LFB25
	.uaword	.LFE25
	.uaword	.LFB26
	.uaword	.LFE26
	.uaword	.LFB27
	.uaword	.LFE27
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.extern	DEMO_Function_CAN03_0x03,STT_FUNC,0
	.extern	DEMO_Function_CAN03_0x02,STT_FUNC,0
	.extern	DEMO_Function_CAN03_0x01,STT_FUNC,0
	.extern	DEMO_Function_CAN03_0x04,STT_FUNC,0
	.extern	BSW_bMsgValidState_Can03_Rx04,STT_OBJECT,1
	.extern	BSW_bMsgValidState_Can03_Rx03,STT_OBJECT,1
	.extern	BSW_bMsgValidState_Can03_Rx02,STT_OBJECT,1
	.extern	BSW_bMsgValidState_Can03_Rx01,STT_OBJECT,1
	.extern	MAIN_MSGRxBenchOnC,STT_OBJECT,1
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
