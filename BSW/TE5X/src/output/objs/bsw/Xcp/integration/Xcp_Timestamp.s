	.file	"Xcp_Timestamp.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.XcpAppl_GetTimestamp,"ax",@progbits
	.align 1
	.global	XcpAppl_GetTimestamp
	.type	XcpAppl_GetTimestamp, @function
XcpAppl_GetTimestamp:
.LFB12:
	.file 1 "bsw\\Xcp\\integration\\Xcp_Timestamp.c"
	.loc 1 32 0
	.loc 1 49 0
	movh.a	%a2, hi:XcpAppl_Timestamp_u32.2110
	.loc 1 46 0
	movh.a	%a15, hi:OS_Counter_1ms
	ld.w	%d15, [%a15] lo:OS_Counter_1ms
.LVL0:
	ld.w	%d2, [%a2] lo:XcpAppl_Timestamp_u32.2110
	.loc 1 49 0
	movh.a	%a15, hi:XcpAppl_PreviousTime_u32.2111
	ld.w	%d3, [%a15] lo:XcpAppl_PreviousTime_u32.2111
	add	%d2, %d15
	sub	%d2, %d3
	st.w	[%a2] lo:XcpAppl_Timestamp_u32.2110, %d2
	.loc 1 52 0
	st.w	[%a15] lo:XcpAppl_PreviousTime_u32.2111, %d15
	.loc 1 58 0
	ret
.LFE12:
	.size	XcpAppl_GetTimestamp, .-XcpAppl_GetTimestamp
.section .bss.a4.XcpAppl_Timestamp_u32.2110,"aw",@nobits
	.align 2
	.type	XcpAppl_Timestamp_u32.2110, @object
	.size	XcpAppl_Timestamp_u32.2110, 4
XcpAppl_Timestamp_u32.2110:
	.zero	4
.section .bss.a4.XcpAppl_PreviousTime_u32.2111,"aw",@nobits
	.align 2
	.type	XcpAppl_PreviousTime_u32.2111, @object
	.size	XcpAppl_PreviousTime_u32.2111, 4
XcpAppl_PreviousTime_u32.2111:
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
	.uaword	.LFB12
	.uaword	.LFE12-.LFB12
	.align 2
.LEFDE0:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\Integration\\mcal\\main.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x33b
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Xcp\\integration\\Xcp_Timestamp.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0
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
	.uaword	0x21b
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
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x4
	.byte	0x1
	.string	"XcpAppl_GetTimestamp"
	.byte	0x1
	.byte	0x1f
	.byte	0x1
	.uaword	0x20d
	.uaword	.LFB12
	.uaword	.LFE12
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x326
	.uleb128 0x5
	.string	"XcpAppl_Timestamp_u32"
	.byte	0x1
	.byte	0x26
	.uaword	0x20d
	.byte	0x5
	.byte	0x3
	.uaword	XcpAppl_Timestamp_u32.2110
	.uleb128 0x5
	.string	"XcpAppl_PreviousTime_u32"
	.byte	0x1
	.byte	0x27
	.uaword	0x20d
	.byte	0x5
	.byte	0x3
	.uaword	XcpAppl_PreviousTime_u32.2111
	.uleb128 0x5
	.string	"XcpAppl_CurrentTime_u32"
	.byte	0x1
	.byte	0x28
	.uaword	0x20d
	.byte	0x1
	.byte	0x5f
	.byte	0
	.uleb128 0x6
	.string	"OS_Counter_1ms"
	.byte	0x3
	.byte	0xd
	.uaword	0x20d
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.byte	0
.section .debug_aranges,"",@progbits
	.uaword	0x1c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB12
	.uaword	.LFE12-.LFB12
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB12
	.uaword	.LFE12
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.extern	OS_Counter_1ms,STT_OBJECT,4
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
