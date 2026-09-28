	.file	"GESM_DAT.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.GESM_vidNoAction,"ax",@progbits
	.align 1
	.global	GESM_vidNoAction
	.type	GESM_vidNoAction, @function
GESM_vidNoAction:
.LFB0:
	.file 1 "bswcdd\\ESM\\GESM\\GESM_DAT.c"
	.loc 1 75 0
	ret
.LFE0:
	.size	GESM_vidNoAction, .-GESM_vidNoAction
	.global	GESM_bfOutEventCarrier
.section .bss.a2.GESM_bfOutEventCarrier,"aw",@nobits
	.align 1
	.type	GESM_bfOutEventCarrier, @object
	.size	GESM_bfOutEventCarrier, 2
GESM_bfOutEventCarrier:
	.zero	2
	.global	GESM_pfDuringGESM_STF0OnGESM_EV1Ptr
.section .bss.a4.GESM_pfDuringGESM_STF0OnGESM_EV1Ptr,"aw",@nobits
	.align 2
	.type	GESM_pfDuringGESM_STF0OnGESM_EV1Ptr, @object
	.size	GESM_pfDuringGESM_STF0OnGESM_EV1Ptr, 4
GESM_pfDuringGESM_STF0OnGESM_EV1Ptr:
	.zero	4
	.global	GESM_pfDuringGESM_STF0OnGESM_EV0Ptr
.section .bss.a4.GESM_pfDuringGESM_STF0OnGESM_EV0Ptr,"aw",@nobits
	.align 2
	.type	GESM_pfDuringGESM_STF0OnGESM_EV0Ptr, @object
	.size	GESM_pfDuringGESM_STF0OnGESM_EV0Ptr, 4
GESM_pfDuringGESM_STF0OnGESM_EV0Ptr:
	.zero	4
	.global	GESM_pfTransGESM_STF0OnGESM_EV1Ptr
.section .bss.a4.GESM_pfTransGESM_STF0OnGESM_EV1Ptr,"aw",@nobits
	.align 2
	.type	GESM_pfTransGESM_STF0OnGESM_EV1Ptr, @object
	.size	GESM_pfTransGESM_STF0OnGESM_EV1Ptr, 4
GESM_pfTransGESM_STF0OnGESM_EV1Ptr:
	.zero	4
	.global	GESM_pfTransGESM_STF0OnGESM_EV0Ptr
.section .bss.a4.GESM_pfTransGESM_STF0OnGESM_EV0Ptr,"aw",@nobits
	.align 2
	.type	GESM_pfTransGESM_STF0OnGESM_EV0Ptr, @object
	.size	GESM_pfTransGESM_STF0OnGESM_EV0Ptr, 4
GESM_pfTransGESM_STF0OnGESM_EV0Ptr:
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
	.uaword	.LFB0
	.uaword	.LFE0-.LFB0
	.align 2
.LEFDE0:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\GSTFSRV\\gstfsrv_types.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x3a8
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\ESM\\GESM\\GESM_DAT.c"
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
	.uleb128 0x3
	.string	"uint16"
	.byte	0x2
	.byte	0x5b
	.uaword	0x1e4
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
	.string	"GSTFSRV_tpfFunctionPointerType"
	.byte	0x3
	.byte	0x20
	.uaword	0x296
	.uleb128 0x4
	.byte	0x4
	.uaword	0x29c
	.uleb128 0x5
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.string	"GESM_vidNoAction"
	.byte	0x1
	.byte	0x4b
	.byte	0x1
	.uaword	.LFB0
	.uaword	.LFE0
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x7
	.string	"GESM_bfOutEventCarrier"
	.byte	0x1
	.byte	0x3a
	.uaword	0x1d6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	GESM_bfOutEventCarrier
	.uleb128 0x7
	.string	"GESM_pfTransGESM_STF0OnGESM_EV0Ptr"
	.byte	0x1
	.byte	0x2e
	.uaword	0x270
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	GESM_pfTransGESM_STF0OnGESM_EV0Ptr
	.uleb128 0x7
	.string	"GESM_pfTransGESM_STF0OnGESM_EV1Ptr"
	.byte	0x1
	.byte	0x2f
	.uaword	0x270
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	GESM_pfTransGESM_STF0OnGESM_EV1Ptr
	.uleb128 0x7
	.string	"GESM_pfDuringGESM_STF0OnGESM_EV0Ptr"
	.byte	0x1
	.byte	0x30
	.uaword	0x270
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	GESM_pfDuringGESM_STF0OnGESM_EV0Ptr
	.uleb128 0x7
	.string	"GESM_pfDuringGESM_STF0OnGESM_EV1Ptr"
	.byte	0x1
	.byte	0x31
	.uaword	0x270
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	GESM_pfDuringGESM_STF0OnGESM_EV1Ptr
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.byte	0
.section .debug_aranges,"",@progbits
	.uaword	0x1c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB0
	.uaword	.LFE0-.LFB0
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB0
	.uaword	.LFE0
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
