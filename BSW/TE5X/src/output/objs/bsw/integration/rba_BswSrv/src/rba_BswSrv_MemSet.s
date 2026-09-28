	.file	"rba_BswSrv_MemSet.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.rba_BswSrv_MemSet,"ax",@progbits
	.align 1
	.global	rba_BswSrv_MemSet
	.type	rba_BswSrv_MemSet, @function
rba_BswSrv_MemSet:
.LFB12:
	.file 1 "bsw\\integration\\rba_BswSrv\\src\\rba_BswSrv_MemSet.c"
	.loc 1 42 0
.LVL0:
	and	%d4, %d4, 255
.LVL1:
	.loc 1 61 0
	sh	%d15, %d4, 8
	add	%d4, %d15
	.loc 1 62 0
	sh	%d15, %d4, 16
	.loc 1 42 0
	mov.aa	%a2, %a4
	.loc 1 51 0
	mov.d	%d2, %a4
.LVL2:
	.loc 1 62 0
	add	%d15, %d4
.LVL3:
	.loc 1 69 0
	jz	%d5, .L2
	.loc 1 69 0 is_stmt 0 discriminator 1
	jnz.t	%d2, 0, .L24
.LVL4:
.L3:
	.loc 1 81 0 is_stmt 1
	jlt.u	%d5, 2, .L2
	.loc 1 81 0 is_stmt 0 discriminator 1
	jnz.t	%d2, 1, .L25
	.loc 1 132 0 is_stmt 1
	mov.a	%a3, %d2
.LVL5:
	mov.a	%a5, %d2
	.loc 1 137 0
	jlt.u	%d5, 4, .L10
.L9:
	.loc 1 139 0
	sh	%d2, %d5, -2
	addsc.a	%a5, %a3, %d2, 2
	and	%d5, %d5, 3
.LVL6:
	sub.a	%a15, %a5, %a3
	mov.d	%d2, %a15
	add	%d2, -4
	sh	%d2, -2
	mov.a	%a15, %d2
.L6:
.LVL7:
	.loc 1 143 0 discriminator 1
	st.w	[%a3+]4, %d15
.LVL8:
	.loc 1 144 0 discriminator 1
	loop	%a15, .L6
.L5:
.LVL9:
	.loc 1 153 0
	jlt.u	%d5, 2, .L7
.LVL10:
.L10:
	.loc 1 155 0
	add	%d5, -2
.LVL11:
	.loc 1 156 0
	st.h	[%a5+]2, %d15
.LVL12:
.L7:
	.loc 1 164 0
	jz	%d5, .L15
.L26:
	.loc 1 166 0
	st.b	[%a5]0, %d15
	ret
.LVL13:
.L2:
	.loc 1 132 0
	mov.a	%a5, %d2
.LVL14:
	.loc 1 164 0
	jnz	%d5, .L26
.LVL15:
.L15:
	.loc 1 169 0
	ret
.LVL16:
.L25:
	.loc 1 88 0
	mov.a	%a3, %d2
	.loc 1 87 0
	add	%d5, -2
.LVL17:
	.loc 1 88 0
	st.h	[%a3+]2, %d15
.LVL18:
	.loc 1 132 0
	mov.aa	%a5, %a3
	.loc 1 137 0
	jge.u	%d5, 4, .L9
	j	.L5
.LVL19:
.L24:
	.loc 1 76 0
	mov.aa	%a15, %a4
	.loc 1 75 0
	add	%d5, -1
.LVL20:
	.loc 1 76 0
	add	%d2, 1
.LVL21:
	st.b	[%a15+]1, %d15
.LVL22:
	j	.L3
.LFE12:
	.size	rba_BswSrv_MemSet, .-rba_BswSrv_MemSet
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
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x3b3
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\integration\\rba_BswSrv\\src\\rba_BswSrv_MemSet.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x2
	.byte	0x51
	.uaword	0x1dd
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
	.uaword	0x209
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"sint32"
	.byte	0x2
	.byte	0x60
	.uaword	0x22d
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
	.uaword	0x253
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
	.uleb128 0x4
	.byte	0x1
	.string	"rba_BswSrv_MemSet"
	.byte	0x1
	.byte	0x29
	.byte	0x1
	.uaword	0x3a2
	.uaword	.LFB12
	.uaword	.LFE12
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x3a2
	.uleb128 0x5
	.string	"xDest_pv"
	.byte	0x1
	.byte	0x29
	.uaword	0x3a2
	.uaword	.LLST0
	.uleb128 0x5
	.string	"xPattern_s32"
	.byte	0x1
	.byte	0x29
	.uaword	0x21f
	.uaword	.LLST1
	.uleb128 0x5
	.string	"numBytes_u32"
	.byte	0x1
	.byte	0x29
	.uaword	0x245
	.uaword	.LLST2
	.uleb128 0x6
	.string	"adDest_uo"
	.byte	0x1
	.byte	0x33
	.uaword	0x245
	.uaword	.LLST3
	.uleb128 0x6
	.string	"xPattern_uo"
	.byte	0x1
	.byte	0x34
	.uaword	0x245
	.uaword	.LLST4
	.uleb128 0x6
	.string	"xDest_pu32"
	.byte	0x1
	.byte	0x37
	.uaword	0x3a4
	.uaword	.LLST5
	.uleb128 0x6
	.string	"xDest_pu16"
	.byte	0x1
	.byte	0x38
	.uaword	0x3aa
	.uaword	.LLST6
	.uleb128 0x6
	.string	"xDest_pu8"
	.byte	0x1
	.byte	0x39
	.uaword	0x3b0
	.uaword	.LLST7
	.uleb128 0x7
	.string	"ctLoop_u32"
	.byte	0x1
	.byte	0x3a
	.uaword	0x245
	.byte	0x1
	.byte	0x52
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uleb128 0x9
	.byte	0x4
	.uaword	0x245
	.uleb128 0x9
	.byte	0x4
	.uaword	0x1fb
	.uleb128 0x9
	.byte	0x4
	.uaword	0x1d0
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
	.uleb128 0x6
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
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL4
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL19
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL21
	.uaword	.LFE12
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL1
	.uaword	.LFE12
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL0
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL9
	.uaword	.LFE12
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL2
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL19
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL22
	.uaword	.LFE12
	.uahalf	0x3
	.byte	0x82
	.sleb128 1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL3
	.uaword	.LFE12
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL7
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x63
	.uaword	.LVL9
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x63
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL9
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL19
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL22
	.uaword	.LFE12
	.uahalf	0x1
	.byte	0x62
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
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
