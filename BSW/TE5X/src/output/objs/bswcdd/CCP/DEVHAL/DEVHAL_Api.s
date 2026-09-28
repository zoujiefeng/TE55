	.file	"DEVHAL_Api.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	DEVHAL_bCheckEmulCard
	.type	DEVHAL_bCheckEmulCard, @function
DEVHAL_bCheckEmulCard:
.LFB19:
	.file 1 "bswcdd\\CCP\\DEVHAL\\DEVHAL_Api.c"
	.loc 1 46 0
	.loc 1 62 0
	mov	%d2, 1
	ret
.LFE19:
	.size	DEVHAL_bCheckEmulCard, .-DEVHAL_bCheckEmulCard
	.align 1
	.global	DEVHAL_udtCheckEngineState
	.type	DEVHAL_udtCheckEngineState, @function
DEVHAL_udtCheckEngineState:
.LFB20:
	.loc 1 71 0
	.loc 1 77 0
	call	DEVHAL_bCheckReprogCond
.LVL0:
	.loc 1 78 0
	jnz	%d2, .L7
	.loc 1 94 0
	movh.a	%a15, hi:DEVHAL_u8CheckEngineState
	st.b	[%a15] lo:DEVHAL_u8CheckEngineState, %d2
.LVL1:
	.loc 1 95 0
	mov	%d2, 1
.LVL2:
	.loc 1 98 0
	ret
.LVL3:
.L7:
	.loc 1 80 0
	call	DEVHAL_bWaitProtectionCond
.LVL4:
	.loc 1 81 0
	jnz	%d2, .L4
	.loc 1 83 0
	mov	%d15, 2
	movh.a	%a15, hi:DEVHAL_u8CheckEngineState
	st.b	[%a15] lo:DEVHAL_u8CheckEngineState, %d15
.LVL5:
	.loc 1 84 0
	mov	%d2, 1
.LVL6:
	ret
.LVL7:
.L4:
	.loc 1 88 0
	mov	%d15, 1
	movh.a	%a15, hi:DEVHAL_u8CheckEngineState
	st.b	[%a15] lo:DEVHAL_u8CheckEngineState, %d15
.LVL8:
	.loc 1 89 0
	mov	%d2, 0
.LVL9:
	ret
.LFE20:
	.size	DEVHAL_udtCheckEngineState, .-DEVHAL_udtCheckEngineState
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
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 4 "bswcdd\\CCP\\DEVHAL\\DEVHAL_Cfg.h"
	.file 5 "bswcdd\\CCP\\DEVHAL\\DEVHAL_Def.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x3d5
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\CCP\\DEVHAL\\DEVHAL_Api.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ltext0
	.uaword	.Letext0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x2
	.byte	0x51
	.uaword	0x1c5
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
	.uaword	0x1c5
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
	.uaword	0x1b8
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x4
	.byte	0x1
	.string	"DEVHAL_bCheckEmulCard"
	.byte	0x1
	.byte	0x2d
	.byte	0x1
	.uaword	0x24e
	.uaword	.LFB19
	.uaword	.LFE19
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x5
	.byte	0x1
	.string	"DEVHAL_udtCheckEngineState"
	.byte	0x1
	.byte	0x46
	.byte	0x1
	.uaword	0x27e
	.uaword	.LFB20
	.uaword	.LFE20
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x36e
	.uleb128 0x6
	.string	"bLocalReprogCondOk"
	.byte	0x1
	.byte	0x48
	.uaword	0x24e
	.uaword	.LLST0
	.uleb128 0x6
	.string	"bLocalProtectionCondOk"
	.byte	0x1
	.byte	0x49
	.uaword	0x24e
	.uaword	.LLST1
	.uleb128 0x6
	.string	"udtLocalRetValue"
	.byte	0x1
	.byte	0x4a
	.uaword	0x27e
	.uaword	.LLST2
	.uleb128 0x7
	.uaword	.LVL0
	.uaword	0x391
	.uleb128 0x7
	.uaword	.LVL4
	.uaword	0x3b3
	.byte	0
	.uleb128 0x8
	.string	"DEVHAL_u8CheckEngineState"
	.byte	0x5
	.byte	0x28
	.uaword	0x1b8
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.byte	0x1
	.string	"DEVHAL_bCheckReprogCond"
	.byte	0x4
	.byte	0x62
	.byte	0x1
	.uaword	0x24e
	.byte	0x1
	.uleb128 0x9
	.byte	0x1
	.string	"DEVHAL_bWaitProtectionCond"
	.byte	0x4
	.byte	0x65
	.byte	0x1
	.uaword	0x24e
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
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
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uaword	.LVL0-.text
	.uaword	.LVL2-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL3-.text
	.uaword	.LVL4-1-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL4-.text
	.uaword	.LVL6-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL7-.text
	.uaword	.LVL9-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL1-.text
	.uaword	.LVL2-.text
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL2-.text
	.uaword	.LVL3-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL5-.text
	.uaword	.LVL7-.text
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL8-.text
	.uaword	.LFE20-.text
	.uahalf	0x2
	.byte	0x30
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
	.uaword	.Ltext0
	.uaword	.Letext0-.Ltext0
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.extern	DEVHAL_bWaitProtectionCond,STT_FUNC,0
	.extern	DEVHAL_u8CheckEngineState,STT_OBJECT,1
	.extern	DEVHAL_bCheckReprogCond,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
