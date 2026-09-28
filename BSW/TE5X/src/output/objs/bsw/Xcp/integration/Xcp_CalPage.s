	.file	"Xcp_CalPage.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.XcpAppl_SetCalPage,"ax",@progbits
	.align 1
	.global	XcpAppl_SetCalPage
	.type	XcpAppl_SetCalPage, @function
XcpAppl_SetCalPage:
.LFB249:
	.file 1 "bsw\\Xcp\\integration\\Xcp_CalPage.c"
	.loc 1 41 0
.LVL0:
	.loc 1 59 0
	jeq	%d6, 1, .L5
	.loc 1 66 0
	call	Overlay_Disable
.LVL1:
	.loc 1 67 0
	mov	%d15, 1
	movh.a	%a15, hi:XCP_bReferPageOn
	st.b	[%a15] lo:XCP_bReferPageOn, %d15
	.loc 1 72 0
	mov	%d2, 255
	ret
.LVL2:
.L5:
	.loc 1 61 0
	call	Overlay_Enable
.LVL3:
	.loc 1 62 0
	mov	%d15, 0
	movh.a	%a15, hi:XCP_bReferPageOn
	st.b	[%a15] lo:XCP_bReferPageOn, %d15
	.loc 1 72 0
	mov	%d2, 255
	ret
.LFE249:
	.size	XcpAppl_SetCalPage, .-XcpAppl_SetCalPage
.section .text.XcpAppl_GetCalPage,"ax",@progbits
	.align 1
	.global	XcpAppl_GetCalPage
	.type	XcpAppl_GetCalPage, @function
XcpAppl_GetCalPage:
.LFB250:
	.loc 1 88 0
.LVL4:
	sub.a	%SP, 8
.LCFI0:
	.loc 1 88 0
	mov.aa	%a15, %a4
	.loc 1 107 0
	lea	%a4, [%SP] 7
.LVL5:
	call	Overlay_CheckEnabled
.LVL6:
	.loc 1 109 0
	ld.bu	%d15, [%SP] 7
	.loc 1 120 0
	mov	%d2, 255
	.loc 1 109 0
	eq	%d15, %d15, 1
	st.b	[%a15]0, %d15
	.loc 1 120 0
	ret
.LFE250:
	.size	XcpAppl_GetCalPage, .-XcpAppl_GetCalPage
.section .text.XcpAppl_CopyCalPage,"ax",@progbits
	.align 1
	.global	XcpAppl_CopyCalPage
	.type	XcpAppl_CopyCalPage, @function
XcpAppl_CopyCalPage:
.LFB251:
	.loc 1 138 0
.LVL7:
	.loc 1 157 0
	eq	%d15, %d7, 1
	and.eq	%d15, %d5, 0
	.loc 1 163 0
	mov	%d2, 35
	.loc 1 157 0
	jnz	%d15, .L11
.LVL8:
	.loc 1 168 0
	ret
.LVL9:
.L11:
	.loc 1 159 0
	call	Overlay_Sync
.LVL10:
	.loc 1 154 0
	mov	%d2, 255
.LVL11:
	.loc 1 168 0
	ret
.LFE251:
	.size	XcpAppl_CopyCalPage, .-XcpAppl_CopyCalPage
	.global	XCP_bReferPageOn
.section .bss.a1.XCP_bReferPageOn,"aw",@nobits
	.type	XCP_bReferPageOn, @object
	.size	XCP_bReferPageOn, 1
XCP_bReferPageOn:
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
	.uaword	.LFB249
	.uaword	.LFE249-.LFB249
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB250
	.uaword	.LFE250-.LFB250
	.byte	0x4
	.uaword	.LCFI0-.LFB250
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB251
	.uaword	.LFE251-.LFB251
	.align 2
.LEFDE4:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Types.h"
	.file 4 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\Cpu\\Std\\Ifx_Types.h"
	.file 5 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\_Impl\\IfxCpu_cfg.h"
	.file 6 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\Scu\\Std\\IfxScuCcu.h"
	.file 7 ".\\output\\inc/..\\..\\Integration\\mcal\\OverlayManager.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x95d
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Xcp\\integration\\Xcp_CalPage.c"
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
	.uaword	0x1cc
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
	.uleb128 0x3
	.string	"sint32"
	.byte	0x2
	.byte	0x60
	.uaword	0x20e
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
	.uaword	0x1cc
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x4
	.byte	0x4
	.uaword	0x1bf
	.uleb128 0x5
	.byte	0x1
	.byte	0x3
	.uahalf	0x1cb
	.uaword	0x4b9
	.uleb128 0x6
	.string	"XCP_ERR_CMD_SYNCH"
	.sleb128 0
	.uleb128 0x6
	.string	"XCP_ERR_CMD_BUSY"
	.sleb128 16
	.uleb128 0x6
	.string	"XCP_ERR_DAQ_ACTIVE"
	.sleb128 17
	.uleb128 0x6
	.string	"XCP_ERR_PGM_ACTIVE"
	.sleb128 18
	.uleb128 0x6
	.string	"XCP_ERR_CMD_UNKNOWN"
	.sleb128 32
	.uleb128 0x6
	.string	"XCP_ERR_CMD_SYNTAX"
	.sleb128 33
	.uleb128 0x6
	.string	"XCP_ERR_OUT_OF_RANGE"
	.sleb128 34
	.uleb128 0x6
	.string	"XCP_ERR_WRITE_PROTECTED"
	.sleb128 35
	.uleb128 0x6
	.string	"XCP_ERR_ACCESS_DENIED"
	.sleb128 36
	.uleb128 0x6
	.string	"XCP_ERR_ACCESS_LOCKED"
	.sleb128 37
	.uleb128 0x6
	.string	"XCP_ERR_PAGE_NOT_VALID"
	.sleb128 38
	.uleb128 0x6
	.string	"XCP_ERR_MODE_NOT_VALID"
	.sleb128 39
	.uleb128 0x6
	.string	"XCP_ERR_SEGMENT_NOT_VALID"
	.sleb128 40
	.uleb128 0x6
	.string	"XCP_ERR_SEQUENCE"
	.sleb128 41
	.uleb128 0x6
	.string	"XCP_ERR_DAQ_CONFIG"
	.sleb128 42
	.uleb128 0x6
	.string	"XCP_ERR_MEMORY_OVERFLOW"
	.sleb128 48
	.uleb128 0x6
	.string	"XCP_ERR_GENERIC"
	.sleb128 49
	.uleb128 0x6
	.string	"XCP_ERR_VERIFY"
	.sleb128 50
	.uleb128 0x6
	.string	"XCP_ERR_RES_TEMP_NOT_ACCESS"
	.sleb128 51
	.uleb128 0x6
	.string	"XCP_ERR_SUBCMD_UNKNOWN"
	.sleb128 52
	.uleb128 0x6
	.string	"XCP_REPEAT_COMMAND"
	.sleb128 252
	.uleb128 0x6
	.string	"XCP_NO_ACCESS_HIDE"
	.sleb128 253
	.uleb128 0x6
	.string	"XCP_NO_RESPONSE"
	.sleb128 254
	.uleb128 0x6
	.string	"XCP_NO_ERROR"
	.sleb128 255
	.byte	0
	.uleb128 0x7
	.string	"Xcp_ErrorCode"
	.byte	0x3
	.uahalf	0x1e5
	.uaword	0x299
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x4
	.byte	0x4
	.uaword	0x4e9
	.uleb128 0x8
	.uleb128 0x9
	.byte	0x8
	.byte	0x4
	.byte	0x8c
	.uaword	0x514
	.uleb128 0xa
	.string	"module"
	.byte	0x4
	.byte	0x8e
	.uaword	0x4e3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"index"
	.byte	0x4
	.byte	0x8f
	.uaword	0x200
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"IfxModule_IndexMap"
	.byte	0x4
	.byte	0x90
	.uaword	0x4ea
	.uleb128 0xb
	.byte	0x1
	.byte	0x5
	.byte	0x88
	.uaword	0x58f
	.uleb128 0x6
	.string	"IfxCpu_Index_0"
	.sleb128 0
	.uleb128 0x6
	.string	"IfxCpu_Index_1"
	.sleb128 1
	.uleb128 0x6
	.string	"IfxCpu_Index_2"
	.sleb128 2
	.uleb128 0x6
	.string	"IfxCpu_Index_3"
	.sleb128 3
	.uleb128 0x6
	.string	"IfxCpu_Index_none"
	.sleb128 4
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.uahalf	0x160
	.uaword	0x698
	.uleb128 0x6
	.string	"IfxScuCcu_ModulationAmplitude_0p5"
	.sleb128 0
	.uleb128 0x6
	.string	"IfxScuCcu_ModulationAmplitude_1p0"
	.sleb128 1
	.uleb128 0x6
	.string	"IfxScuCcu_ModulationAmplitude_1p25"
	.sleb128 2
	.uleb128 0x6
	.string	"IfxScuCcu_ModulationAmplitude_1p5"
	.sleb128 3
	.uleb128 0x6
	.string	"IfxScuCcu_ModulationAmplitude_2p0"
	.sleb128 4
	.uleb128 0x6
	.string	"IfxScuCcu_ModulationAmplitude_2p5"
	.sleb128 5
	.uleb128 0x6
	.string	"IfxScuCcu_ModulationAmplitude_count"
	.sleb128 6
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.byte	0x1
	.byte	0x8
	.uaword	0x6c7
	.uleb128 0x6
	.string	"CalPage_Reference"
	.sleb128 0
	.uleb128 0x6
	.string	"CalPage_Working"
	.sleb128 1
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.string	"XcpAppl_SetCalPage"
	.byte	0x1
	.byte	0x28
	.byte	0x1
	.uaword	0x4b9
	.uaword	.LFB249
	.uaword	.LFE249
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x758
	.uleb128 0xd
	.string	"Mode"
	.byte	0x1
	.byte	0x28
	.uaword	0x1bf
	.uaword	.LLST0
	.uleb128 0xd
	.string	"SegNum"
	.byte	0x1
	.byte	0x28
	.uaword	0x1bf
	.uaword	.LLST1
	.uleb128 0xd
	.string	"PageNum"
	.byte	0x1
	.byte	0x28
	.uaword	0x1bf
	.uaword	.LLST2
	.uleb128 0xe
	.uaword	.LASF0
	.byte	0x1
	.byte	0x28
	.uaword	0x1bf
	.uaword	.LLST3
	.uleb128 0xf
	.string	"Error"
	.byte	0x1
	.byte	0x2f
	.uaword	0x4b9
	.sleb128 -1
	.uleb128 0x10
	.uaword	.LVL1
	.uaword	0x8f7
	.uleb128 0x10
	.uaword	.LVL3
	.uaword	0x90d
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"XcpAppl_GetCalPage"
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.uaword	0x4b9
	.uaword	.LFB250
	.uaword	.LFE250
	.uaword	.LLST4
	.byte	0x1
	.uaword	0x7fa
	.uleb128 0xd
	.string	"Mode"
	.byte	0x1
	.byte	0x57
	.uaword	0x1bf
	.uaword	.LLST5
	.uleb128 0xd
	.string	"SegNum"
	.byte	0x1
	.byte	0x57
	.uaword	0x1bf
	.uaword	.LLST6
	.uleb128 0xd
	.string	"PageNum"
	.byte	0x1
	.byte	0x57
	.uaword	0x293
	.uaword	.LLST7
	.uleb128 0xe
	.uaword	.LASF0
	.byte	0x1
	.byte	0x57
	.uaword	0x1bf
	.uaword	.LLST8
	.uleb128 0xf
	.string	"Error"
	.byte	0x1
	.byte	0x5e
	.uaword	0x4b9
	.sleb128 -1
	.uleb128 0x12
	.string	"enabled"
	.byte	0x1
	.byte	0x5f
	.uaword	0x263
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x13
	.uaword	.LVL6
	.uaword	0x922
	.uleb128 0x14
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.byte	0
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.string	"XcpAppl_CopyCalPage"
	.byte	0x1
	.byte	0x89
	.byte	0x1
	.uaword	0x4b9
	.uaword	.LFB251
	.uaword	.LFE251
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x8a6
	.uleb128 0xd
	.string	"SegNumSrc"
	.byte	0x1
	.byte	0x89
	.uaword	0x1bf
	.uaword	.LLST9
	.uleb128 0xd
	.string	"PageNumSrc"
	.byte	0x1
	.byte	0x89
	.uaword	0x1bf
	.uaword	.LLST10
	.uleb128 0xd
	.string	"SegNumDst"
	.byte	0x1
	.byte	0x89
	.uaword	0x1bf
	.uaword	.LLST11
	.uleb128 0xd
	.string	"PageNumDst"
	.byte	0x1
	.byte	0x89
	.uaword	0x1bf
	.uaword	.LLST12
	.uleb128 0x15
	.uaword	.LASF0
	.byte	0x1
	.byte	0x89
	.uaword	0x1bf
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x16
	.string	"Error"
	.byte	0x1
	.byte	0x90
	.uaword	0x4b9
	.uaword	.LLST13
	.uleb128 0x10
	.uaword	.LVL10
	.uaword	0x94d
	.byte	0
	.uleb128 0x17
	.uaword	0x514
	.uaword	0x8b6
	.uleb128 0x18
	.uaword	0x4cf
	.byte	0x3
	.byte	0
	.uleb128 0x19
	.string	"IfxCpu_cfg_indexMap"
	.byte	0x5
	.byte	0xaa
	.uaword	0x8d3
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.uaword	0x8a6
	.uleb128 0x1b
	.string	"XCP_bReferPageOn"
	.byte	0x1
	.byte	0x10
	.uaword	0x263
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	XCP_bReferPageOn
	.uleb128 0x1c
	.byte	0x1
	.string	"Overlay_Disable"
	.byte	0x7
	.byte	0x69
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.byte	0x1
	.string	"Overlay_Enable"
	.byte	0x7
	.byte	0x68
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.byte	0x1
	.string	"Overlay_CheckEnabled"
	.byte	0x7
	.byte	0x6a
	.byte	0x1
	.byte	0x1
	.uaword	0x947
	.uleb128 0x1e
	.uaword	0x947
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x263
	.uleb128 0x1c
	.byte	0x1
	.string	"Overlay_Sync"
	.byte	0x7
	.byte	0x6b
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x4
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
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x35
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uaword	.LVL0
	.uaword	.LVL1-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL1-1
	.uaword	.LVL2
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL2
	.uaword	.LVL3-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL3-1
	.uaword	.LFE249
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL1-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL1-1
	.uaword	.LVL2
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL2
	.uaword	.LVL3-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL3-1
	.uaword	.LFE249
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL0
	.uaword	.LVL1-1
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL1-1
	.uaword	.LVL2
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	.LVL2
	.uaword	.LVL3-1
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL3-1
	.uaword	.LFE249
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL0
	.uaword	.LVL1-1
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL1-1
	.uaword	.LVL2
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.uaword	.LVL2
	.uaword	.LVL3-1
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL3-1
	.uaword	.LFE249
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LFB250
	.uaword	.LCFI0
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0
	.uaword	.LFE250
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL4
	.uaword	.LVL6-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL6-1
	.uaword	.LFE250
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL4
	.uaword	.LVL6-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL6-1
	.uaword	.LFE250
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL5
	.uaword	.LFE250
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL4
	.uaword	.LVL6-1
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL6-1
	.uaword	.LFE250
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL7
	.uaword	.LVL10-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL10-1
	.uaword	.LFE251
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL7
	.uaword	.LVL10-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL10-1
	.uaword	.LFE251
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL7
	.uaword	.LVL10-1
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL10-1
	.uaword	.LFE251
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL7
	.uaword	.LVL10-1
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL10-1
	.uaword	.LFE251
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL9
	.uaword	.LVL11
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LFE251
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x2c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB249
	.uaword	.LFE249-.LFB249
	.uaword	.LFB250
	.uaword	.LFE250-.LFB250
	.uaword	.LFB251
	.uaword	.LFE251-.LFB251
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB249
	.uaword	.LFE249
	.uaword	.LFB250
	.uaword	.LFE250
	.uaword	.LFB251
	.uaword	.LFE251
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"ProtocolLayerId"
	.extern	Overlay_Sync,STT_FUNC,0
	.extern	Overlay_CheckEnabled,STT_FUNC,0
	.extern	Overlay_Enable,STT_FUNC,0
	.extern	Overlay_Disable,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
