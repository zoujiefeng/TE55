	.file	"SchM_HtxIntSafeWdg.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.SchM_Enter_HtxIntSafeWdgWdtscon0,"ax",@progbits
	.align 1
	.global	SchM_Enter_HtxIntSafeWdgWdtscon0
	.type	SchM_Enter_HtxIntSafeWdgWdtscon0, @function
SchM_Enter_HtxIntSafeWdgWdtscon0:
.LFB19:
	.file 1 "bswcdd\\SafeTPack\\Stp_Basic\\BaseSw\\Integration\\SchM_HtxIntSafeWdg.c"
	.loc 1 68 0
	.loc 1 69 0
	j	SuspendAllInterrupts
.LVL0:
.LFE19:
	.size	SchM_Enter_HtxIntSafeWdgWdtscon0, .-SchM_Enter_HtxIntSafeWdgWdtscon0
.section .text.SchM_Exit_HtxIntSafeWdgWdtscon0,"ax",@progbits
	.align 1
	.global	SchM_Exit_HtxIntSafeWdgWdtscon0
	.type	SchM_Exit_HtxIntSafeWdgWdtscon0, @function
SchM_Exit_HtxIntSafeWdgWdtscon0:
.LFB20:
	.loc 1 92 0
	.loc 1 93 0
	j	ResumeAllInterrupts
.LVL1:
.LFE20:
	.size	SchM_Exit_HtxIntSafeWdgWdtscon0, .-SchM_Exit_HtxIntSafeWdgWdtscon0
.section .text.SchM_Enter_HtxIntSafeWdgWdtscon1,"ax",@progbits
	.align 1
	.global	SchM_Enter_HtxIntSafeWdgWdtscon1
	.type	SchM_Enter_HtxIntSafeWdgWdtscon1, @function
SchM_Enter_HtxIntSafeWdgWdtscon1:
.LFB21:
	.loc 1 116 0
	.loc 1 117 0
	j	SuspendAllInterrupts
.LVL2:
.LFE21:
	.size	SchM_Enter_HtxIntSafeWdgWdtscon1, .-SchM_Enter_HtxIntSafeWdgWdtscon1
.section .text.SchM_Exit_HtxIntSafeWdgWdtscon1,"ax",@progbits
	.align 1
	.global	SchM_Exit_HtxIntSafeWdgWdtscon1
	.type	SchM_Exit_HtxIntSafeWdgWdtscon1, @function
SchM_Exit_HtxIntSafeWdgWdtscon1:
.LFB22:
	.loc 1 140 0
	.loc 1 141 0
	j	ResumeAllInterrupts
.LVL3:
.LFE22:
	.size	SchM_Exit_HtxIntSafeWdgWdtscon1, .-SchM_Exit_HtxIntSafeWdgWdtscon1
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
	.uaword	.LFB19
	.uaword	.LFE19-.LFB19
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB20
	.uaword	.LFE20-.LFB20
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB21
	.uaword	.LFE21-.LFB21
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB22
	.uaword	.LFE22-.LFB22
	.align 2
.LEFDE6:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\Integration\\TC38x\\IFX_Os.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x3be
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\SafeTPack\\Stp_Basic\\BaseSw\\Integration\\SchM_HtxIntSafeWdg.c"
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
	.byte	0x1
	.string	"SchM_Enter_HtxIntSafeWdgWdtscon0"
	.byte	0x1
	.byte	0x43
	.byte	0x1
	.uaword	.LFB19
	.uaword	.LFE19
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x2cb
	.uleb128 0x4
	.uaword	.LVL0
	.byte	0x1
	.uaword	0x38c
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.string	"SchM_Exit_HtxIntSafeWdgWdtscon0"
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.uaword	.LFB20
	.uaword	.LFE20
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x30b
	.uleb128 0x4
	.uaword	.LVL1
	.byte	0x1
	.uaword	0x3a7
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.string	"SchM_Enter_HtxIntSafeWdgWdtscon1"
	.byte	0x1
	.byte	0x73
	.byte	0x1
	.uaword	.LFB21
	.uaword	.LFE21
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x34c
	.uleb128 0x4
	.uaword	.LVL2
	.byte	0x1
	.uaword	0x38c
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.string	"SchM_Exit_HtxIntSafeWdgWdtscon1"
	.byte	0x1
	.byte	0x8b
	.byte	0x1
	.uaword	.LFB22
	.uaword	.LFE22
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x38c
	.uleb128 0x4
	.uaword	.LVL3
	.byte	0x1
	.uaword	0x3a7
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.string	"SuspendAllInterrupts"
	.byte	0x2
	.byte	0x31
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.byte	0x1
	.string	"ResumeAllInterrupts"
	.byte	0x2
	.byte	0x32
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
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uaword	0x34
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB19
	.uaword	.LFE19-.LFB19
	.uaword	.LFB20
	.uaword	.LFE20-.LFB20
	.uaword	.LFB21
	.uaword	.LFE21-.LFB21
	.uaword	.LFB22
	.uaword	.LFE22-.LFB22
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB19
	.uaword	.LFE19
	.uaword	.LFB20
	.uaword	.LFE20
	.uaword	.LFB21
	.uaword	.LFE21
	.uaword	.LFB22
	.uaword	.LFE22
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.extern	ResumeAllInterrupts,STT_FUNC,0
	.extern	SuspendAllInterrupts,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
