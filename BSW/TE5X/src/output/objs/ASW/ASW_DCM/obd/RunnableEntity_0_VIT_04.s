	.file	"RunnableEntity_0_VIT_04.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.RunnableEntity_0_VIT_04,"ax",@progbits
	.align 1
	.global	RunnableEntity_0_VIT_04
	.type	RunnableEntity_0_VIT_04, @function
RunnableEntity_0_VIT_04:
.LFB19:
	.file 1 "ASW\\ASW_DCM\\obd\\RunnableEntity_0_VIT_04.c"
	.loc 1 52 0
.LVL0:
	sub.a	%SP, 16
.LCFI0:
	.loc 1 65 0
	mov.aa	%a3, %SP
	mov	%e2, 0
	st.d	[%a3+]8, %e2
	st.d	[%a3+]8, %e2
	movh.a	%a3, hi:UDS_au8CalibSoftId
	lea	%a15, [%a3] lo:UDS_au8CalibSoftId
	mov.d	%d2, %a15
	and	%d15, %d2, 3
	jnz	%d15, .L2
.LVL1:
	.loc 1 68 0
	ld.bu	%d3, [%a15] 1
	ld.bu	%d2, [%a3] lo:UDS_au8CalibSoftId
	sh	%d15, %d3, 8
	or	%d3, %d15, %d2
	ld.bu	%d15, [%a15] 2
	sh	%d15, %d15, 16
	or	%d2, %d15, %d3
	ld.bu	%d15, [%a15] 3
	ld.bu	%d3, [%a15] 5
	sh	%d15, %d15, 24
	or	%d15, %d2
	ld.bu	%d2, [%a15] 4
	st.w	[%SP]0, %d15
	sh	%d15, %d3, 8
	or	%d3, %d15, %d2
	ld.bu	%d15, [%a15] 6
	sh	%d15, %d15, 16
	or	%d2, %d15, %d3
	ld.bu	%d15, [%a15] 7
	ld.bu	%d3, [%a15] 9
	sh	%d15, %d15, 24
	or	%d15, %d2
	ld.bu	%d2, [%a15] 8
	st.w	[%SP] 4, %d15
	sh	%d15, %d3, 8
	or	%d3, %d15, %d2
	ld.bu	%d15, [%a15] 10
	sh	%d15, %d15, 16
	or	%d2, %d15, %d3
	ld.bu	%d15, [%a15] 11
	ld.bu	%d3, [%a15] 13
	sh	%d15, %d15, 24
	or	%d15, %d2
	ld.bu	%d2, [%a15] 12
	st.w	[%SP] 8, %d15
	sh	%d15, %d3, 8
	or	%d3, %d15, %d2
	ld.bu	%d15, [%a15] 14
	sh	%d15, %d15, 16
	or	%d2, %d15, %d3
	ld.bu	%d15, [%a15] 15
	sh	%d15, %d15, 24
	or	%d15, %d2
	st.w	[%SP] 12, %d15
	.loc 1 71 0
	mov	%d15, 16
	st.b	[%a5]0, %d15
	.loc 1 72 0
	mov	%d4, %d15
.LVL2:
	mov.aa	%a5, %SP
.LVL3:
	call	Rte_memcpy
.LVL4:
	.loc 1 99 0
	mov	%d2, 0
	ret
.LVL5:
.L2:
	.loc 1 68 0
	ld.bu	%d15, [%a3] lo:UDS_au8CalibSoftId
	st.b	[%SP]0, %d15
.LVL6:
	ld.bu	%d15, [%a15] 1
	st.b	[%SP] 1, %d15
.LVL7:
	ld.bu	%d15, [%a15] 2
	st.b	[%SP] 2, %d15
.LVL8:
	ld.bu	%d15, [%a15] 3
	st.b	[%SP] 3, %d15
.LVL9:
	ld.bu	%d15, [%a15] 4
	st.b	[%SP] 4, %d15
.LVL10:
	ld.bu	%d15, [%a15] 5
	st.b	[%SP] 5, %d15
.LVL11:
	ld.bu	%d15, [%a15] 6
	st.b	[%SP] 6, %d15
.LVL12:
	ld.bu	%d15, [%a15] 7
	st.b	[%SP] 7, %d15
.LVL13:
	ld.bu	%d15, [%a15] 8
	st.b	[%SP] 8, %d15
.LVL14:
	ld.bu	%d15, [%a15] 9
	st.b	[%SP] 9, %d15
.LVL15:
	ld.bu	%d15, [%a15] 10
	st.b	[%SP] 10, %d15
.LVL16:
	ld.bu	%d15, [%a15] 11
	st.b	[%SP] 11, %d15
.LVL17:
	ld.bu	%d15, [%a15] 12
	st.b	[%SP] 12, %d15
.LVL18:
	ld.bu	%d15, [%a15] 13
	st.b	[%SP] 13, %d15
.LVL19:
	ld.bu	%d15, [%a15] 14
	st.b	[%SP] 14, %d15
.LVL20:
	ld.bu	%d15, [%a15] 15
	st.b	[%SP] 15, %d15
.LVL21:
	.loc 1 71 0
	mov	%d15, 16
	st.b	[%a5]0, %d15
	.loc 1 72 0
	mov	%d4, %d15
.LVL22:
	mov.aa	%a5, %SP
.LVL23:
	call	Rte_memcpy
.LVL24:
	.loc 1 99 0
	mov	%d2, 0
	ret
.LFE19:
	.size	RunnableEntity_0_VIT_04, .-RunnableEntity_0_VIT_04
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
	.byte	0x4
	.uaword	.LCFI0-.LFB19
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE0:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 4 ".\\output\\inc/..\\..\\rte\\Rte_Type.h"
	.file 5 ".\\output\\inc/..\\..\\main\\McuMain\\MAIN_L.h"
	.file 6 ".\\output\\inc/..\\..\\rte\\Rte.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x40b
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"ASW\\ASW_DCM\\obd\\RunnableEntity_0_VIT_04.c"
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
	.uaword	0x1b8
	.uleb128 0x3
	.string	"uint16"
	.byte	0x2
	.byte	0x5b
	.uaword	0x1c9
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
	.string	"Std_ReturnType"
	.byte	0x3
	.byte	0x60
	.uaword	0x21e
	.uleb128 0x4
	.byte	0x4
	.uaword	0x21e
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2bc
	.uleb128 0x6
	.uleb128 0x7
	.uaword	0x21e
	.uaword	0x2cd
	.uleb128 0x8
	.uaword	0x212
	.byte	0xf
	.byte	0
	.uleb128 0x9
	.string	"Dcm_OpStatusType"
	.byte	0x4
	.uahalf	0x11a
	.uaword	0x21e
	.uleb128 0xa
	.byte	0x1
	.string	"RunnableEntity_0_VIT_04"
	.byte	0x1
	.byte	0x2e
	.byte	0x1
	.uaword	0x298
	.uaword	.LFB19
	.uaword	.LFE19
	.uaword	.LLST0
	.byte	0x1
	.uaword	0x3d1
	.uleb128 0xb
	.string	"OpStatus"
	.byte	0x1
	.byte	0x30
	.uaword	0x2cd
	.uaword	.LLST1
	.uleb128 0xb
	.string	"DataValueBuffer"
	.byte	0x1
	.byte	0x31
	.uaword	0x2ae
	.uaword	.LLST2
	.uleb128 0xb
	.string	"DataValueBufferSize"
	.byte	0x1
	.byte	0x32
	.uaword	0x2ae
	.uaword	.LLST3
	.uleb128 0xc
	.string	"retValue"
	.byte	0x1
	.byte	0x3f
	.uaword	0x298
	.byte	0
	.uleb128 0xd
	.string	"u8Index"
	.byte	0x1
	.byte	0x40
	.uaword	0x21e
	.uaword	.LLST4
	.uleb128 0xe
	.string	"data"
	.byte	0x1
	.byte	0x41
	.uaword	0x2bd
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0xf
	.uaword	.LVL4
	.uaword	0x3ed
	.uaword	0x3ba
	.uleb128 0x10
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x10
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x10
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.uleb128 0x11
	.uaword	.LVL24
	.uaword	0x3ed
	.uleb128 0x10
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x10
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"UDS_au8CalibSoftId"
	.byte	0x5
	.byte	0xa4
	.uaword	0x2bd
	.byte	0x1
	.byte	0x1
	.uleb128 0x13
	.byte	0x1
	.string	"Rte_memcpy"
	.byte	0x6
	.byte	0x9e
	.byte	0x1
	.byte	0x1
	.uleb128 0x14
	.uaword	0x2b4
	.uleb128 0x14
	.uaword	0x2b6
	.uleb128 0x14
	.uaword	0x22b
	.byte	0
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LFB19
	.uaword	.LCFI0
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0
	.uaword	.LFE19
	.uahalf	0x2
	.byte	0x8a
	.sleb128 16
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL2
	.uaword	.LVL5
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL22
	.uaword	.LFE19
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL0
	.uaword	.LVL4-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL4-1
	.uaword	.LVL5
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL24-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL24-1
	.uaword	.LFE19
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL0
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL3
	.uaword	.LVL5
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL23
	.uaword	.LFE19
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x2
	.byte	0x37
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x2
	.byte	0x39
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x2
	.byte	0x3a
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x2
	.byte	0x3b
	.byte	0x9f
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x2
	.byte	0x3c
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x2
	.byte	0x3d
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x2
	.byte	0x3e
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x2
	.byte	0x3f
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LFE19
	.uahalf	0x2
	.byte	0x40
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
	.uaword	.LFB19
	.uaword	.LFE19-.LFB19
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB19
	.uaword	.LFE19
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.extern	Rte_memcpy,STT_FUNC,0
	.extern	UDS_au8CalibSoftId,STT_OBJECT,16
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
