	.file	"InvtAssert.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.InvtAssert_vidFailed,"ax",@progbits
	.align 1
	.global	InvtAssert_vidFailed
	.type	InvtAssert_vidFailed, @function
InvtAssert_vidFailed:
.LFB163:
	.file 1 "main\\_MainModule\\Assert\\InvtAssert.c"
	.loc 1 13 0
.LVL0:
	.loc 1 14 0
	movh.a	%a2, hi:InvtAssert_LastAssert
	lea	%a15, [%a2] lo:InvtAssert_LastAssert
	st.a	[%a2] lo:InvtAssert_LastAssert, %a4
	.loc 1 15 0
	st.w	[%a15] 4, %d4
	.loc 1 16 0
	st.a	[%a15] 8, %a5
.LBB4:
.LBB5:
	.file 2 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\Cpu\\Std\\IfxCpu_IntrinsicsGnuc.h"
	.loc 2 1423 0
#APP
	# 1423 ".\output\inc/..\..\Integration\Infineon\iLLD\TC38A\Tricore\Cpu\Std\IfxCpu_IntrinsicsGnuc.h" 1
	debug
	# 0 "" 2
#NO_APP
.L2:
.LBE5:
.LBE4:
	.loc 1 19 0 discriminator 1
	j	.L2
.LFE163:
	.size	InvtAssert_vidFailed, .-InvtAssert_vidFailed
	.global	InvtAssert_LastAssert
.section .bss.a4.InvtAssert_LastAssert,"aw",@nobits
	.align 2
	.type	InvtAssert_LastAssert, @object
	.size	InvtAssert_LastAssert, 12
InvtAssert_LastAssert:
	.zero	12
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
	.uaword	.LFB163
	.uaword	.LFE163-.LFB163
	.align 2
.LEFDE0:
.section .text,"ax",@progbits
.Letext0:
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x368
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"main\\_MainModule\\Assert\\InvtAssert.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
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
	.byte	0x4
	.string	"float"
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"double"
	.uleb128 0x3
	.byte	0x4
	.uaword	0x27a
	.uleb128 0x4
	.uaword	0x216
	.uleb128 0x5
	.byte	0xc
	.byte	0x1
	.byte	0x4
	.uaword	0x2b5
	.uleb128 0x6
	.string	"file"
	.byte	0x1
	.byte	0x5
	.uaword	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"line"
	.byte	0x1
	.byte	0x6
	.uaword	0x1ff
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"expr"
	.byte	0x1
	.byte	0x7
	.uaword	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x7
	.string	"InvtAssertInfo_t"
	.byte	0x1
	.byte	0x8
	.uaword	0x27f
	.uleb128 0x8
	.string	"Ifx__debug"
	.byte	0x2
	.uahalf	0x58d
	.byte	0x1
	.byte	0x3
	.uleb128 0x9
	.byte	0x1
	.string	"InvtAssert_vidFailed"
	.byte	0x1
	.byte	0xc
	.byte	0x1
	.uaword	.LFB163
	.uaword	.LFE163
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x342
	.uleb128 0xa
	.string	"file"
	.byte	0x1
	.byte	0xc
	.uaword	0x274
	.byte	0x1
	.byte	0x64
	.uleb128 0xa
	.string	"line"
	.byte	0x1
	.byte	0xc
	.uaword	0x1ff
	.byte	0x1
	.byte	0x54
	.uleb128 0xa
	.string	"expr"
	.byte	0x1
	.byte	0xc
	.uaword	0x274
	.byte	0x1
	.byte	0x65
	.uleb128 0xb
	.uaword	0x2cd
	.uaword	.LBB4
	.uaword	.LBE4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xc
	.string	"InvtAssert_LastAssert"
	.byte	0x1
	.byte	0xa
	.uaword	0x366
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	InvtAssert_LastAssert
	.uleb128 0xd
	.uaword	0x2b5
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0xb
	.uleb128 0x1d
	.byte	0
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
	.uleb128 0x35
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
	.uaword	.LFB163
	.uaword	.LFE163-.LFB163
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB163
	.uaword	.LFE163
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
