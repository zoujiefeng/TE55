	.file	"ASW_BASE.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.RE_BASE_SWC_func,"ax",@progbits
	.align 1
	.global	RE_BASE_SWC_func
	.type	RE_BASE_SWC_func, @function
RE_BASE_SWC_func:
.LFB70:
	.file 1 "ASW\\ASW_BASE\\src\\ASW_BASE.c"
	.loc 1 57 0
	.loc 1 66 0
	movh.a	%a15, hi:LedConter
	ld.w	%d15, [%a15] lo:LedConter
	movh	%d2, 52429
	addi	%d2, %d2, -13107
	mul.u	%e2, %d15, %d2
	sh	%d2, %d3, -3
	madd	%d2, %d15, %d2, -10
	jnz	%d2, .L2
	.loc 1 68 0
	movh.a	%a12, hi:LedStatus
	mov	%d4, 534
	ld.bu	%d5, [%a12] lo:LedStatus
	call	Dio_WriteChannel
.LVL0:
	.loc 1 69 0
	ld.bu	%d15, [%a12] lo:LedStatus
	xor	%d15, %d15, 1
	st.b	[%a12] lo:LedStatus, %d15
	ld.w	%d15, [%a15] lo:LedConter
.L2:
	.loc 1 71 0
	add	%d15, 1
	st.w	[%a15] lo:LedConter, %d15
	ret
.LFE70:
	.size	RE_BASE_SWC_func, .-RE_BASE_SWC_func
.section .text.CallTestStack_func,"ax",@progbits
	.align 1
	.global	CallTestStack_func
	.type	CallTestStack_func, @function
CallTestStack_func:
.LFB71:
	.loc 1 83 0
	ret
.LFE71:
	.size	CallTestStack_func, .-CallTestStack_func
.section .text.CallTestStack_func1,"ax",@progbits
	.align 1
	.global	CallTestStack_func1
	.type	CallTestStack_func1, @function
CallTestStack_func1:
.LFB72:
	.loc 1 99 0
	.loc 1 100 0
	call	Os_GetStackUsage
.LVL1:
	movh.a	%a15, hi:Stack_OsTask_ASW_100ms
	lea	%a15, [%a15] lo:Stack_OsTask_ASW_100ms
	st.d	[%a15]0, %e2
	ret
.LFE72:
	.size	CallTestStack_func1, .-CallTestStack_func1
	.global	LedStatus
.section .bss.a1.LedStatus,"aw",@nobits
	.type	LedStatus, @object
	.size	LedStatus, 1
LedStatus:
	.zero	1
	.global	LedConter
.section .bss.a4.LedConter,"aw",@nobits
	.align 2
	.type	LedConter, @object
	.size	LedConter, 4
LedConter:
	.zero	4
	.global	Stack_OsTask_ASW_100ms
.section .bss.a4.Stack_OsTask_ASW_100ms,"aw",@nobits
	.align 2
	.type	Stack_OsTask_ASW_100ms, @object
	.size	Stack_OsTask_ASW_100ms, 8
Stack_OsTask_ASW_100ms:
	.zero	8
	.global	shutdown_b
.section .bss.a1.shutdown_b,"aw",@nobits
	.type	shutdown_b, @object
	.size	shutdown_b, 1
shutdown_b:
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
	.uaword	.LFB70
	.uaword	.LFE70-.LFB70
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB71
	.uaword	.LFE71-.LFB71
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB72
	.uaword	.LFE72-.LFB72
	.align 2
.LEFDE4:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\os\\Os.h"
	.file 4 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Dio\\inc\\Dio.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x479
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"ASW\\ASW_BASE\\src\\ASW_BASE.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x2
	.byte	0x51
	.uaword	0x1aa
	.uleb128 0x3
	.string	"uint16"
	.byte	0x2
	.byte	0x5b
	.uaword	0x1bb
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x3
	.string	"uint32"
	.byte	0x2
	.byte	0x6a
	.uaword	0x1d1
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
	.string	"Os_StackTraceType"
	.byte	0x3
	.byte	0xdb
	.uaword	0x1d1
	.uleb128 0x4
	.byte	0x8
	.byte	0x3
	.byte	0xdc
	.uaword	0x2d5
	.uleb128 0x5
	.string	"sp"
	.byte	0x3
	.byte	0xdc
	.uaword	0x298
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"ctx"
	.byte	0x3
	.byte	0xdc
	.uaword	0x298
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"Os_StackValueType"
	.byte	0x3
	.byte	0xdc
	.uaword	0x2b1
	.uleb128 0x3
	.string	"Os_StackSizeType"
	.byte	0x3
	.byte	0xdd
	.uaword	0x2d5
	.uleb128 0x3
	.string	"Dio_ChannelType"
	.byte	0x4
	.byte	0x75
	.uaword	0x21d
	.uleb128 0x3
	.string	"Dio_LevelType"
	.byte	0x4
	.byte	0x7b
	.uaword	0x210
	.uleb128 0x6
	.byte	0x1
	.string	"RE_BASE_SWC_func"
	.byte	0x1
	.byte	0x35
	.byte	0x1
	.uaword	.LFB70
	.uaword	.LFE70
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x36a
	.uleb128 0x7
	.uaword	.LVL0
	.uaword	0x42f
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x216
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.string	"CallTestStack_func"
	.byte	0x1
	.byte	0x52
	.byte	0x1
	.uaword	.LFB71
	.uaword	.LFE71
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.string	"CallTestStack_func1"
	.byte	0x1
	.byte	0x62
	.byte	0x1
	.uaword	.LFB72
	.uaword	.LFE72
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x3c1
	.uleb128 0xa
	.uaword	.LVL1
	.uaword	0x460
	.byte	0
	.uleb128 0xb
	.string	"shutdown_b"
	.byte	0x1
	.byte	0x22
	.uaword	0x210
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	shutdown_b
	.uleb128 0xb
	.string	"Stack_OsTask_ASW_100ms"
	.byte	0x1
	.byte	0x2b
	.uaword	0x2ee
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Stack_OsTask_ASW_100ms
	.uleb128 0xb
	.string	"LedConter"
	.byte	0x1
	.byte	0x2c
	.uaword	0x23c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	LedConter
	.uleb128 0xb
	.string	"LedStatus"
	.byte	0x1
	.byte	0x2d
	.uaword	0x31d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	LedStatus
	.uleb128 0xc
	.byte	0x1
	.string	"Dio_WriteChannel"
	.byte	0x4
	.uahalf	0x105
	.byte	0x1
	.byte	0x1
	.uaword	0x456
	.uleb128 0xd
	.uaword	0x456
	.uleb128 0xd
	.uaword	0x45b
	.byte	0
	.uleb128 0xe
	.uaword	0x306
	.uleb128 0xe
	.uaword	0x31d
	.uleb128 0xf
	.byte	0x1
	.string	"Os_GetStackUsage"
	.byte	0x3
	.uahalf	0x3fe
	.byte	0x1
	.uaword	0x2ee
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
	.uleb128 0x7
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
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
	.uleb128 0xa
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.byte	0
.section .debug_aranges,"",@progbits
	.uaword	0x2c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB70
	.uaword	.LFE70-.LFB70
	.uaword	.LFB71
	.uaword	.LFE71-.LFB71
	.uaword	.LFB72
	.uaword	.LFE72-.LFB72
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB70
	.uaword	.LFE70
	.uaword	.LFB71
	.uaword	.LFE71
	.uaword	.LFB72
	.uaword	.LFE72
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.extern	Os_GetStackUsage,STT_FUNC,0
	.extern	Dio_WriteChannel,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
