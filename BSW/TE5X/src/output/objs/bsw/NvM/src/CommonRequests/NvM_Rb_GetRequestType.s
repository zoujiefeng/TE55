	.file	"NvM_Rb_GetRequestType.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.NvM_Rb_GetRequestType,"ax",@progbits
	.align 1
	.global	NvM_Rb_GetRequestType
	.type	NvM_Rb_GetRequestType, @function
NvM_Rb_GetRequestType:
.LFB31:
	.file 1 "bsw\\NvM\\src\\CommonRequests\\NvM_Rb_GetRequestType.c"
	.loc 1 29 0
.LVL0:
	.loc 1 32 0
	call	NvM_Prv_IsNvmIdle
.LVL1:
	mov	%d8, %d2
.LVL2:
	.loc 1 33 0
	call	NvM_Prv_IsCrcRecalcActive
.LVL3:
	mov	%d9, %d2
.LVL4:
	.loc 1 37 0
	call	NvM_Prv_IsMultiActive
.LVL5:
	.loc 1 40 0
	mov	%d15, 1
	.loc 1 37 0
	jnz	%d2, .L2
	.loc 1 43 0
	or	%d8, %d9
.LVL6:
	and	%d8, %d8, 255
	.loc 1 51 0
	mov	%d2, 2
	seln	%d15, %d8, %d2, 0
.L2:
.LVL7:
	.loc 1 55 0
	mov	%d2, %d15
	ret
.LFE31:
	.size	NvM_Rb_GetRequestType, .-NvM_Rb_GetRequestType
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
	.file 3 ".\\output\\inc/..\\..\\bsw\\NvM\\api\\NvM_Types.h"
	.file 4 ".\\output\\inc/..\\..\\bsw\\NvM\\src\\NvM_Prv.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x409
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\NvM\\src\\CommonRequests\\NvM_Rb_GetRequestType.c"
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
	.uleb128 0x3
	.string	"boolean"
	.byte	0x2
	.byte	0x80
	.uaword	0x1d0
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
	.byte	0xb7
	.uaword	0x2f3
	.uleb128 0x5
	.string	"NvM_Rb_RequestType_NA_e"
	.sleb128 0
	.uleb128 0x5
	.string	"NvM_Rb_RequestType_Multi_e"
	.sleb128 1
	.uleb128 0x5
	.string	"NvM_Rb_RequestType_Single_e"
	.sleb128 2
	.byte	0
	.uleb128 0x3
	.string	"NvM_Rb_RequestType_ten"
	.byte	0x3
	.byte	0xbf
	.uaword	0x295
	.uleb128 0x6
	.byte	0x1
	.string	"NvM_Rb_GetRequestType"
	.byte	0x1
	.byte	0x1c
	.byte	0x1
	.uaword	0x2f3
	.uaword	.LFB31
	.uaword	.LFE31
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x3ac
	.uleb128 0x7
	.string	"requestType_en"
	.byte	0x1
	.byte	0x1f
	.uaword	0x2f3
	.uaword	.LLST0
	.uleb128 0x7
	.string	"isNvmIdle_b"
	.byte	0x1
	.byte	0x20
	.uaword	0x259
	.uaword	.LLST1
	.uleb128 0x7
	.string	"isCrcRecalcActive_b"
	.byte	0x1
	.byte	0x21
	.uaword	0x259
	.uaword	.LLST2
	.uleb128 0x8
	.uaword	.LVL1
	.uaword	0x3ac
	.uleb128 0x8
	.uaword	.LVL3
	.uaword	0x3c8
	.uleb128 0x8
	.uaword	.LVL5
	.uaword	0x3ec
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.string	"NvM_Prv_IsNvmIdle"
	.byte	0x4
	.byte	0x68
	.byte	0x1
	.uaword	0x259
	.byte	0x1
	.uleb128 0x9
	.byte	0x1
	.string	"NvM_Prv_IsCrcRecalcActive"
	.byte	0x4
	.byte	0x69
	.byte	0x1
	.uaword	0x259
	.byte	0x1
	.uleb128 0x9
	.byte	0x1
	.string	"NvM_Prv_IsMultiActive"
	.byte	0x4
	.byte	0x6a
	.byte	0x1
	.uaword	0x259
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
	.uleb128 0x2
	.uleb128 0x6
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
	.uaword	.LVL7
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL7
	.uaword	.LFE31
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL2
	.uaword	.LVL3-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL3-1
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL4
	.uaword	.LVL5-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL5-1
	.uaword	.LFE31
	.uahalf	0x1
	.byte	0x59
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
	.uaword	.LFB31
	.uaword	.LFE31-.LFB31
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB31
	.uaword	.LFE31
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.extern	NvM_Prv_IsMultiActive,STT_FUNC,0
	.extern	NvM_Prv_IsCrcRecalcActive,STT_FUNC,0
	.extern	NvM_Prv_IsNvmIdle,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
