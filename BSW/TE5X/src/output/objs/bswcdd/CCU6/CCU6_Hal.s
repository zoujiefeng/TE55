	.file	"CCU6_Hal.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.CCU6_vidDisableTrap,"ax",@progbits
	.align 1
	.global	CCU6_vidDisableTrap
	.type	CCU6_vidDisableTrap, @function
CCU6_vidDisableTrap:
.LFB0:
	.file 1 "bswcdd\\CCU6\\CCU6_Hal.c"
	.loc 1 7 0
	.loc 1 8 0
	movh.a	%a15, 61444
	mov	%d15, 34
	lea	%a15, [%a15] -32056
	st.w	[%a15]0, %d15
	ret
.LFE0:
	.size	CCU6_vidDisableTrap, .-CCU6_vidDisableTrap
.section .text.CCU6_vidEnableTrap,"ax",@progbits
	.align 1
	.global	CCU6_vidEnableTrap
	.type	CCU6_vidEnableTrap, @function
CCU6_vidEnableTrap:
.LFB1:
	.loc 1 12 0
	.loc 1 13 0
	movh.a	%a15, 61444
	mov	%d15, 1058
	lea	%a15, [%a15] -32056
	st.w	[%a15]0, %d15
	ret
.LFE1:
	.size	CCU6_vidEnableTrap, .-CCU6_vidEnableTrap
.section .text.GCCU6_vidDisableTrap,"ax",@progbits
	.align 1
	.global	GCCU6_vidDisableTrap
	.type	GCCU6_vidDisableTrap, @function
GCCU6_vidDisableTrap:
.LFB2:
	.loc 1 17 0
	.loc 1 18 0
	movh.a	%a15, 61444
	mov	%d15, 6177
	lea	%a15, [%a15] -32040
	st.w	[%a15]0, %d15
	ret
.LFE2:
	.size	GCCU6_vidDisableTrap, .-GCCU6_vidDisableTrap
.section .text.GCCU6_vidEnableTrap,"ax",@progbits
	.align 1
	.global	GCCU6_vidEnableTrap
	.type	GCCU6_vidEnableTrap, @function
GCCU6_vidEnableTrap:
.LFB3:
	.loc 1 22 0
	.loc 1 23 0
	movh.a	%a15, 61444
	mov	%d15, 7201
	lea	%a15, [%a15] -32040
	st.w	[%a15]0, %d15
	ret
.LFE3:
	.size	GCCU6_vidEnableTrap, .-GCCU6_vidEnableTrap
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
	.uaword	.LFB0
	.uaword	.LFE0-.LFB0
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB1
	.uaword	.LFE1-.LFB1
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB2
	.uaword	.LFE2-.LFB2
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB3
	.uaword	.LFE3-.LFB3
	.align 2
.LEFDE6:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\os\\Os_DisableInterrupts.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x410
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\CCU6\\CCU6_Hal.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.string	"signed_sfr_access_type"
	.byte	0x2
	.byte	0x1d
	.uaword	0x1c3
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.string	"unsigned_sfr_access_type"
	.byte	0x2
	.byte	0x1e
	.uaword	0x1ea
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x2
	.string	"sfr_bitfield"
	.byte	0x2
	.byte	0x22
	.uaword	0x1ea
	.uleb128 0x4
	.byte	0x4
	.byte	0x2
	.uahalf	0x5cc
	.uaword	0x33a
	.uleb128 0x5
	.string	"SRPN"
	.byte	0x2
	.uahalf	0x5ce
	.uaword	0x1fa
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"resv8"
	.byte	0x2
	.uahalf	0x5cf
	.uaword	0x1fa
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"SRE"
	.byte	0x2
	.uahalf	0x5d0
	.uaword	0x1fa
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"TOS"
	.byte	0x2
	.uahalf	0x5d1
	.uaword	0x1fa
	.byte	0x4
	.byte	0x3
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"resv14"
	.byte	0x2
	.uahalf	0x5d2
	.uaword	0x1fa
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"ECC"
	.byte	0x2
	.uahalf	0x5d3
	.uaword	0x1fa
	.byte	0x4
	.byte	0x5
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"resv21"
	.byte	0x2
	.uahalf	0x5d4
	.uaword	0x1fa
	.byte	0x4
	.byte	0x3
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"SRR"
	.byte	0x2
	.uahalf	0x5d5
	.uaword	0x1fa
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"CLRR"
	.byte	0x2
	.uahalf	0x5d6
	.uaword	0x1fa
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"SETR"
	.byte	0x2
	.uahalf	0x5d7
	.uaword	0x1fa
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"IOV"
	.byte	0x2
	.uahalf	0x5d8
	.uaword	0x1fa
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"IOVCLR"
	.byte	0x2
	.uahalf	0x5d9
	.uaword	0x1fa
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"SWS"
	.byte	0x2
	.uahalf	0x5da
	.uaword	0x1fa
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"SWSCLR"
	.byte	0x2
	.uahalf	0x5db
	.uaword	0x1fa
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"resv31"
	.byte	0x2
	.uahalf	0x5dc
	.uaword	0x1fa
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.byte	0x2
	.uahalf	0x5ca
	.uaword	0x362
	.uleb128 0x7
	.string	"B"
	.byte	0x2
	.uahalf	0x5dd
	.uaword	0x20e
	.uleb128 0x7
	.string	"I"
	.byte	0x2
	.uahalf	0x5de
	.uaword	0x1a5
	.uleb128 0x7
	.string	"U"
	.byte	0x2
	.uahalf	0x5df
	.uaword	0x1ca
	.byte	0
	.uleb128 0x8
	.string	"SRC_CPU0SB_type"
	.byte	0x2
	.uahalf	0x5e0
	.uaword	0x37a
	.uleb128 0x9
	.uaword	0x33a
	.uleb128 0xa
	.byte	0x1
	.string	"CCU6_vidDisableTrap"
	.byte	0x1
	.byte	0x6
	.byte	0x1
	.uaword	.LFB0
	.uaword	.LFE0
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xa
	.byte	0x1
	.string	"CCU6_vidEnableTrap"
	.byte	0x1
	.byte	0xb
	.byte	0x1
	.uaword	.LFB1
	.uaword	.LFE1
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xa
	.byte	0x1
	.string	"GCCU6_vidDisableTrap"
	.byte	0x1
	.byte	0x10
	.byte	0x1
	.uaword	.LFB2
	.uaword	.LFE2
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xa
	.byte	0x1
	.string	"GCCU6_vidEnableTrap"
	.byte	0x1
	.byte	0x15
	.byte	0x1
	.uaword	.LFB3
	.uaword	.LFE3
	.byte	0x2
	.byte	0x8a
	.sleb128 0
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
	.uleb128 0x3
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
	.uleb128 0x4
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x17
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
	.uleb128 0x7
	.uleb128 0xd
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
	.uleb128 0x9
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.byte	0
.section .debug_aranges,"",@progbits
	.uaword	0x34
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB0
	.uaword	.LFE0-.LFB0
	.uaword	.LFB1
	.uaword	.LFE1-.LFB1
	.uaword	.LFB2
	.uaword	.LFE2-.LFB2
	.uaword	.LFB3
	.uaword	.LFE3-.LFB3
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB0
	.uaword	.LFE0
	.uaword	.LFB1
	.uaword	.LFE1
	.uaword	.LFB2
	.uaword	.LFE2
	.uaword	.LFB3
	.uaword	.LFE3
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
