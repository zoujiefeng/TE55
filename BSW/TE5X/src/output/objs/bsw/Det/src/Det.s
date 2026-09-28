	.file	"Det.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Det_Init,"ax",@progbits
	.align 1
	.global	Det_Init
	.type	Det_Init, @function
Det_Init:
.LFB35:
	.file 1 "bsw\\Det\\src\\Det.c"
	.loc 1 150 0
.LVL0:
	.loc 1 150 0
	mov.aa	%a15, %a4
	.loc 1 151 0
	jz.a	%a4, .L4
	ret
.L4:
	.loc 1 157 0
	call	Os_SuspendAllInterrupts
.LVL1:
.LBB4:
.LBB5:
	.file 2 ".\\output\\inc/..\\..\\bsw\\Rba_DiagLib\\src\\rba_DiagLib_MemUtils.h"
	.loc 2 29 0
	movh.a	%a4, hi:Det_ErrorEntryBuffer
	lea	%a4, [%a4] lo:Det_ErrorEntryBuffer
	mov	%d4, 0
	mov	%d5, 60
	call	rba_BswSrv_MemSet
.LVL2:
.LBE5:
.LBE4:
	.loc 1 162 0
	mov.d	%d15, %a15
	movh.a	%a2, hi:Det_BufferIndex_u16
	st.h	[%a2] lo:Det_BufferIndex_u16, %d15
	.loc 1 164 0
	movh.a	%a15, hi:Det_Initialized_b
.LVL3:
	mov	%d15, 1
	st.b	[%a15] lo:Det_Initialized_b, %d15
	.loc 1 167 0
	j	Os_ResumeAllInterrupts
.LVL4:
.LFE35:
	.size	Det_Init, .-Det_Init
.section .text.Det_Start,"ax",@progbits
	.align 1
	.global	Det_Start
	.type	Det_Start, @function
Det_Start:
.LFB36:
	.loc 1 178 0
	.loc 1 181 0
	call	Os_SuspendAllInterrupts
.LVL5:
	.loc 1 183 0
	mov	%d15, 0
	movh.a	%a15, hi:Det_BufferIndex_u16
	st.h	[%a15] lo:Det_BufferIndex_u16, %d15
	.loc 1 186 0
	j	Os_ResumeAllInterrupts
.LVL6:
.LFE36:
	.size	Det_Start, .-Det_Start
.section .text.Det_ReportError,"ax",@progbits
	.align 1
	.global	Det_ReportError
	.type	Det_ReportError, @function
Det_ReportError:
.LFB37:
	.loc 1 222 0
.LVL7:
	.loc 1 224 0
	movh.a	%a15, hi:Det_Initialized_b
	ld.bu	%d15, [%a15] lo:Det_Initialized_b
	.loc 1 222 0
	mov	%e10, %d4, %d5
	mov	%e8, %d6, %d7
	.loc 1 224 0
	jz	%d15, .L7
	.loc 1 240 0
	movh.a	%a15, hi:Det_BufferIndex_u16
	ld.hu	%d15, [%a15] lo:Det_BufferIndex_u16
	jlt.u	%d15, 10, .L12
.L7:
	.loc 1 273 0
	mov	%d2, 0
	ret
.L12:
.LVL8:
.LBB8:
.LBB9:
	.loc 1 85 0
	call	Os_SuspendAllInterrupts
.LVL9:
	.loc 1 88 0
	ld.hu	%d15, [%a15] lo:Det_BufferIndex_u16
	jge.u	%d15, 10, .L8
	.loc 1 90 0
	movh.a	%a2, hi:Det_ErrorEntryBuffer
	mov.d	%d3, %a2
	addi	%d2, %d3, lo:Det_ErrorEntryBuffer
	madd	%d3, %d2, %d15, 6
	.loc 1 94 0
	add	%d15, 1
	st.h	[%a15] lo:Det_BufferIndex_u16, %d15
	.loc 1 90 0
	mov.a	%a2, %d3
	st.h	[%a2]0, %d11
	.loc 1 91 0
	st.b	[%a2] 2, %d10
	.loc 1 92 0
	st.b	[%a2] 3, %d9
	.loc 1 93 0
	st.b	[%a2] 4, %d8
.L8:
	.loc 1 98 0
	call	Os_ResumeAllInterrupts
.LVL10:
.LBE9:
.LBE8:
	.loc 1 273 0
	mov	%d2, 0
	ret
.LFE37:
	.size	Det_ReportError, .-Det_ReportError
.section .text.Det_ReportRuntimeError,"ax",@progbits
	.align 1
	.global	Det_ReportRuntimeError
	.type	Det_ReportRuntimeError, @function
Det_ReportRuntimeError:
.LFB38:
	.loc 1 283 0
.LVL11:
	.loc 1 303 0
	mov	%d2, 0
	ret
.LFE38:
	.size	Det_ReportRuntimeError, .-Det_ReportRuntimeError
.section .text.Det_ReportTransientFault,"ax",@progbits
	.align 1
	.global	Det_ReportTransientFault
	.type	Det_ReportTransientFault, @function
Det_ReportTransientFault:
.LFB39:
	.loc 1 314 0
.LVL12:
	.loc 1 335 0
	mov	%d2, 0
	ret
.LFE39:
	.size	Det_ReportTransientFault, .-Det_ReportTransientFault
	.global	Det_ErrorEntryBuffer
.section .bss.a2.Det_ErrorEntryBuffer,"aw",@nobits
	.align 1
	.type	Det_ErrorEntryBuffer, @object
	.size	Det_ErrorEntryBuffer, 60
Det_ErrorEntryBuffer:
	.zero	60
.section .bss.a2.Det_BufferIndex_u16,"aw",@nobits
	.align 1
	.type	Det_BufferIndex_u16, @object
	.size	Det_BufferIndex_u16, 2
Det_BufferIndex_u16:
	.zero	2
	.global	Det_Initialized_b
.section .bss.a1.Det_Initialized_b,"aw",@nobits
	.type	Det_Initialized_b, @object
	.size	Det_Initialized_b, 1
Det_Initialized_b:
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
	.uaword	.LFB35
	.uaword	.LFE35-.LFB35
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB36
	.uaword	.LFE36-.LFB36
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB37
	.uaword	.LFE37-.LFB37
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB38
	.uaword	.LFE38-.LFB38
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB39
	.uaword	.LFE39-.LFB39
	.align 2
.LEFDE8:
.section .text,"ax",@progbits
.Letext0:
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 4 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 5 ".\\output\\inc/..\\..\\bsw\\Det\\api\\Det_Types.h"
	.file 6 ".\\output\\inc/..\\..\\os\\Os.h"
	.file 7 ".\\output\\inc/..\\..\\bsw\\integration\\rba_BswSrv\\api\\rba_BswSrv.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x74d
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Det\\src\\Det.c"
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
	.byte	0x3
	.byte	0x51
	.uaword	0x1bc
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
	.byte	0x3
	.byte	0x5b
	.uaword	0x1e8
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"sint32"
	.byte	0x3
	.byte	0x60
	.uaword	0x20c
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
	.byte	0x3
	.byte	0x6a
	.uaword	0x232
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
	.byte	0x3
	.byte	0x80
	.uaword	0x1bc
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
	.byte	0x4
	.byte	0x60
	.uaword	0x1af
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x4
	.byte	0x4
	.uaword	0x1af
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x6
	.byte	0x1
	.byte	0x5
	.byte	0x48
	.uaword	0x2e2
	.uleb128 0x7
	.string	"Dummy"
	.byte	0x5
	.byte	0x4a
	.uaword	0x1af
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Det_ConfigType"
	.byte	0x5
	.byte	0x4b
	.uaword	0x2c9
	.uleb128 0x6
	.byte	0x6
	.byte	0x5
	.byte	0x51
	.uaword	0x339
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x5
	.byte	0x53
	.uaword	0x1da
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x5
	.byte	0x54
	.uaword	0x1af
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x8
	.uaword	.LASF2
	.byte	0x5
	.byte	0x55
	.uaword	0x1af
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x8
	.uaword	.LASF3
	.byte	0x5
	.byte	0x56
	.uaword	0x1af
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"Det_ErrorEntryBufferType"
	.byte	0x5
	.byte	0x57
	.uaword	0x2f8
	.uleb128 0x9
	.string	"rba_DiagLib_MemUtils_MemSet"
	.byte	0x2
	.byte	0x1a
	.byte	0x1
	.byte	0x3
	.uaword	0x3b7
	.uleb128 0xa
	.string	"xDest_pv"
	.byte	0x2
	.byte	0x1a
	.uaword	0x2c1
	.uleb128 0xa
	.string	"xPattern_u32"
	.byte	0x2
	.byte	0x1a
	.uaword	0x1fe
	.uleb128 0xa
	.string	"numBytes_s32"
	.byte	0x2
	.byte	0x1a
	.uaword	0x224
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"Det_Init"
	.byte	0x1
	.byte	0x95
	.byte	0x1
	.uaword	.LFB35
	.uaword	.LFE35
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x448
	.uleb128 0xc
	.string	"ConfigPtr"
	.byte	0x1
	.byte	0x95
	.uaword	0x448
	.uaword	.LLST0
	.uleb128 0xd
	.uaword	0x359
	.uaword	.LBB4
	.uaword	.LBE4
	.byte	0x1
	.byte	0xa1
	.uaword	0x434
	.uleb128 0xe
	.uaword	0x3a2
	.byte	0x3c
	.uleb128 0xe
	.uaword	0x38e
	.byte	0
	.uleb128 0xf
	.uaword	0x37e
	.byte	0x6
	.byte	0x3
	.uaword	Det_ErrorEntryBuffer
	.byte	0x9f
	.uleb128 0x10
	.uaword	.LVL2
	.uaword	0x6e3
	.uleb128 0x11
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x8
	.byte	0x3c
	.uleb128 0x11
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.uleb128 0x11
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	Det_ErrorEntryBuffer
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	.LVL1
	.uaword	0x713
	.uleb128 0x13
	.uaword	.LVL4
	.byte	0x1
	.uaword	0x732
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x44e
	.uleb128 0x14
	.uaword	0x2e2
	.uleb128 0xb
	.byte	0x1
	.string	"Det_Start"
	.byte	0x1
	.byte	0xb1
	.byte	0x1
	.uaword	.LFB36
	.uaword	.LFE36
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x486
	.uleb128 0x12
	.uaword	.LVL5
	.uaword	0x713
	.uleb128 0x13
	.uaword	.LVL6
	.byte	0x1
	.uaword	0x732
	.byte	0
	.uleb128 0x9
	.string	"Det_StoreErrorEntryInBuffer"
	.byte	0x1
	.byte	0x52
	.byte	0x1
	.byte	0x1
	.uaword	0x4d8
	.uleb128 0x15
	.uaword	.LASF0
	.byte	0x1
	.byte	0x52
	.uaword	0x1da
	.uleb128 0x15
	.uaword	.LASF1
	.byte	0x1
	.byte	0x52
	.uaword	0x1af
	.uleb128 0x15
	.uaword	.LASF2
	.byte	0x1
	.byte	0x52
	.uaword	0x1af
	.uleb128 0x15
	.uaword	.LASF3
	.byte	0x1
	.byte	0x52
	.uaword	0x1af
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.string	"Det_ReportError"
	.byte	0x1
	.byte	0xdd
	.byte	0x1
	.uaword	0x29f
	.uaword	.LFB37
	.uaword	.LFE37
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x585
	.uleb128 0x17
	.uaword	.LASF0
	.byte	0x1
	.byte	0xdd
	.uaword	0x1da
	.uaword	.LLST1
	.uleb128 0x17
	.uaword	.LASF1
	.byte	0x1
	.byte	0xdd
	.uaword	0x1af
	.uaword	.LLST2
	.uleb128 0x17
	.uaword	.LASF2
	.byte	0x1
	.byte	0xdd
	.uaword	0x1af
	.uaword	.LLST3
	.uleb128 0x17
	.uaword	.LASF3
	.byte	0x1
	.byte	0xdd
	.uaword	0x1af
	.uaword	.LLST4
	.uleb128 0x18
	.uaword	0x486
	.uaword	.LBB8
	.uaword	.LBE8
	.byte	0x1
	.uahalf	0x105
	.uleb128 0x19
	.uaword	0x4cc
	.uaword	.LLST5
	.uleb128 0x19
	.uaword	0x4c1
	.uaword	.LLST6
	.uleb128 0x19
	.uaword	0x4b6
	.uaword	.LLST7
	.uleb128 0x19
	.uaword	0x4ab
	.uaword	.LLST8
	.uleb128 0x12
	.uaword	.LVL9
	.uaword	0x713
	.uleb128 0x12
	.uaword	.LVL10
	.uaword	0x732
	.byte	0
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.string	"Det_ReportRuntimeError"
	.byte	0x1
	.uahalf	0x11a
	.byte	0x1
	.uaword	0x29f
	.uaword	.LFB38
	.uaword	.LFE38
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x5ef
	.uleb128 0x1b
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x11a
	.uaword	0x1da
	.byte	0x1
	.byte	0x54
	.uleb128 0x1b
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x11a
	.uaword	0x1af
	.byte	0x1
	.byte	0x55
	.uleb128 0x1b
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x11a
	.uaword	0x1af
	.byte	0x1
	.byte	0x56
	.uleb128 0x1b
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x11a
	.uaword	0x1af
	.byte	0x1
	.byte	0x57
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.string	"Det_ReportTransientFault"
	.byte	0x1
	.uahalf	0x139
	.byte	0x1
	.uaword	0x29f
	.uaword	.LFB39
	.uaword	.LFE39
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x66f
	.uleb128 0x1b
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x139
	.uaword	0x1da
	.byte	0x1
	.byte	0x54
	.uleb128 0x1b
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x139
	.uaword	0x1af
	.byte	0x1
	.byte	0x55
	.uleb128 0x1b
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x139
	.uaword	0x1af
	.byte	0x1
	.byte	0x56
	.uleb128 0x1c
	.string	"FaultId"
	.byte	0x1
	.uahalf	0x139
	.uaword	0x1af
	.byte	0x1
	.byte	0x57
	.uleb128 0x1d
	.string	"retval"
	.byte	0x1
	.uahalf	0x13b
	.uaword	0x29f
	.byte	0
	.byte	0
	.uleb128 0x1e
	.string	"Det_BufferIndex_u16"
	.byte	0x1
	.byte	0x1d
	.uaword	0x1da
	.byte	0x5
	.byte	0x3
	.uaword	Det_BufferIndex_u16
	.uleb128 0x1f
	.string	"Det_Initialized_b"
	.byte	0x1
	.byte	0x1a
	.uaword	0x26f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Det_Initialized_b
	.uleb128 0x20
	.uaword	0x339
	.uaword	0x6c0
	.uleb128 0x21
	.uaword	0x2b5
	.byte	0x9
	.byte	0
	.uleb128 0x1f
	.string	"Det_ErrorEntryBuffer"
	.byte	0x1
	.byte	0x1e
	.uaword	0x6b0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Det_ErrorEntryBuffer
	.uleb128 0x22
	.byte	0x1
	.string	"rba_BswSrv_MemSet"
	.byte	0x7
	.byte	0x47
	.byte	0x1
	.uaword	0x2c7
	.byte	0x1
	.uaword	0x713
	.uleb128 0x23
	.uaword	0x2c7
	.uleb128 0x23
	.uaword	0x1fe
	.uleb128 0x23
	.uaword	0x224
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.string	"Os_SuspendAllInterrupts"
	.byte	0x6
	.uahalf	0x411
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.byte	0x1
	.string	"Os_ResumeAllInterrupts"
	.byte	0x6
	.uahalf	0x412
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x9
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x1d
	.byte	0x1
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL1-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL1-1
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL3
	.uaword	.LFE35
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL7
	.uaword	.LVL9-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL9-1
	.uaword	.LFE37
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL7
	.uaword	.LVL9-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL9-1
	.uaword	.LFE37
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL7
	.uaword	.LVL9-1
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL9-1
	.uaword	.LFE37
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL7
	.uaword	.LVL9-1
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL9-1
	.uaword	.LFE37
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL8
	.uaword	.LVL9-1
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL9-1
	.uaword	.LFE37
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL8
	.uaword	.LVL9-1
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL9-1
	.uaword	.LFE37
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL8
	.uaword	.LVL9-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL9-1
	.uaword	.LFE37
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL8
	.uaword	.LVL9-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL9-1
	.uaword	.LFE37
	.uahalf	0x1
	.byte	0x5b
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x3c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB35
	.uaword	.LFE35-.LFB35
	.uaword	.LFB36
	.uaword	.LFE36-.LFB36
	.uaword	.LFB37
	.uaword	.LFE37-.LFB37
	.uaword	.LFB38
	.uaword	.LFE38-.LFB38
	.uaword	.LFB39
	.uaword	.LFE39-.LFB39
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB35
	.uaword	.LFE35
	.uaword	.LFB36
	.uaword	.LFE36
	.uaword	.LFB37
	.uaword	.LFE37
	.uaword	.LFB38
	.uaword	.LFE38
	.uaword	.LFB39
	.uaword	.LFE39
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF2:
	.string	"ApiId"
.LASF0:
	.string	"ModuleId"
.LASF1:
	.string	"InstanceId"
.LASF3:
	.string	"ErrorId"
	.extern	Os_ResumeAllInterrupts,STT_FUNC,0
	.extern	rba_BswSrv_MemSet,STT_FUNC,0
	.extern	Os_SuspendAllInterrupts,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
