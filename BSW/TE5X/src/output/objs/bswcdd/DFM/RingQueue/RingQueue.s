	.file	"RingQueue.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.RingQueue_bPutData,"ax",@progbits
	.align 1
	.global	RingQueue_bPutData
	.type	RingQueue_bPutData, @function
RingQueue_bPutData:
.LFB251:
	.file 1 "bswcdd\\DFM\\RingQueue\\RingQueue.c"
	.loc 1 70 0
.LVL0:
	.loc 1 74 0
	mov.d	%d2, %a5
	mov.d	%d3, %a4
	ne	%d15, %d2, 0
	and.ne	%d15, %d3, 0
	.loc 1 70 0
	sub.a	%SP, 8
.LCFI0:
	.loc 1 74 0
	jnz	%d15, .L2
.LVL1:
.L4:
	.loc 1 71 0
	mov	%d15, 0
.LVL2:
	.loc 1 92 0
	mov	%d2, %d15
	ret
.LVL3:
.L2:
	.loc 1 77 0
	lea	%a12, [%a4] 4
	mov.aa	%a15, %a4
	mov.aa	%a4, %a12
	mov.aa	%a13, %a5
	call	IfxCpu_acquireMutex
.LVL4:
	.loc 1 78 0
	jne	%d2, 1, .L4
	.loc 1 80 0
	ld.bu	%d3, [%a15] 2
	ld.bu	%d15, [%a15] 1
	and	%d15, %d3
	ld.w	%d3, [%a15] 8
	madd	%d4, %d3, %d15, 34
	.loc 1 71 0
	mov	%d15, 0
	.loc 1 80 0
	mov.a	%a4, %d4
	ld.bu	%d3, [%a4]0
	jz	%d3, .L8
.LVL5:
.L5:
	.loc 1 87 0
	mov.aa	%a4, %a12
	call	IfxCpu_releaseMutex
.LVL6:
	.loc 1 92 0
	mov	%d2, %d15
	ret
.LVL7:
.L8:
	.loc 1 82 0
	ld.bu	%d4, [%a15] 3
	add.a	%a4, 1
	mov.aa	%a5, %a13
	st.w	[%SP] 4, %d2
	call	rba_BswSrv_MemCopy
.LVL8:
	.loc 1 83 0
	ld.bu	%d15, [%a15] 1
	ld.bu	%d3, [%a15] 2
	ld.w	%d2, [%SP] 4
	and	%d15, %d3
	ld.w	%d3, [%a15] 8
	madd	%d4, %d3, %d15, 34
	mov.a	%a2, %d4
	st.b	[%a2]0, %d2
	.loc 1 84 0
	ld.bu	%d15, [%a15] 1
	add	%d15, 1
	st.b	[%a15] 1, %d15
.LVL9:
	.loc 1 85 0
	mov	%d15, 1
	j	.L5
.LFE251:
	.size	RingQueue_bPutData, .-RingQueue_bPutData
.section .text.RingQueue_bGetData,"ax",@progbits
	.align 1
	.global	RingQueue_bGetData
	.type	RingQueue_bGetData, @function
RingQueue_bGetData:
.LFB252:
	.loc 1 105 0
.LVL10:
	.loc 1 108 0
	mov.d	%d2, %a5
	mov.d	%d3, %a4
	ne	%d15, %d2, 0
	and.ne	%d15, %d3, 0
	.loc 1 105 0
	sub.a	%SP, 8
.LCFI1:
	.loc 1 106 0
	mov	%d2, 0
	.loc 1 108 0
	jz	%d15, .L10
	.loc 1 111 0
	ld.bu	%d3, [%a4] 2
	ld.bu	%d15, [%a4]0
	and	%d15, %d3
	ld.w	%d3, [%a4] 8
	madd	%d4, %d3, %d15, 34
	mov.a	%a2, %d4
	ld.bu	%d15, [%a2]0
	jeq	%d15, 1, .L14
.L10:
.LVL11:
	.loc 1 121 0
	ret
.LVL12:
.L14:
	mov.aa	%a15, %a4
	.loc 1 113 0
	ld.bu	%d4, [%a15] 3
	mov.aa	%a4, %a5
.LVL13:
	lea	%a5, [%a2] 1
.LVL14:
	st.w	[%SP] 4, %d2
	call	rba_BswSrv_MemCopy
.LVL15:
	.loc 1 114 0
	ld.bu	%d15, [%a15]0
	ld.bu	%d3, [%a15] 2
	ld.w	%d2, [%SP] 4
	and	%d15, %d3
	ld.w	%d3, [%a15] 8
	madd	%d4, %d3, %d15, 34
	mov.a	%a2, %d4
	st.b	[%a2]0, %d2
	.loc 1 115 0
	ld.bu	%d15, [%a15]0
	.loc 1 116 0
	mov	%d2, 1
	.loc 1 115 0
	add	%d15, 1
	st.b	[%a15]0, %d15
.LVL16:
	.loc 1 121 0
	ret
.LFE252:
	.size	RingQueue_bGetData, .-RingQueue_bGetData
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
	.uaword	.LFB251
	.uaword	.LFE251-.LFB251
	.byte	0x4
	.uaword	.LCFI0-.LFB251
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB252
	.uaword	.LFE252-.LFB252
	.byte	0x4
	.uaword	.LCFI1-.LFB252
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE2:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\Cpu\\Std\\Ifx_Types.h"
	.file 4 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\Cpu\\Std\\IfxCpu.h"
	.file 5 "bswcdd\\DFM\\RingQueue\\RingQueue.h"
	.file 6 ".\\output\\inc/..\\..\\bsw\\integration\\rba_BswSrv\\api\\rba_BswSrv.h"
	.file 7 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\_Impl\\IfxCpu_cfg.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x6fe
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\DFM\\RingQueue\\RingQueue.c"
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
	.uaword	0x1cb
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
	.uaword	0x20d
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
	.uaword	0x233
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
	.uaword	0x1cb
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x4
	.byte	0x4
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2b0
	.uleb128 0x6
	.uleb128 0x7
	.byte	0x8
	.byte	0x3
	.byte	0x8c
	.uaword	0x2db
	.uleb128 0x8
	.string	"module"
	.byte	0x3
	.byte	0x8e
	.uaword	0x2aa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"index"
	.byte	0x3
	.byte	0x8f
	.uaword	0x1ff
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"IfxModule_IndexMap"
	.byte	0x3
	.byte	0x90
	.uaword	0x2b1
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x3
	.string	"IfxCpu_mutexLock"
	.byte	0x4
	.byte	0x75
	.uaword	0x233
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x1
	.byte	0x5
	.byte	0xd
	.uaword	0x359
	.uleb128 0xa
	.string	"RINGQUEUE_STATUS_IDLE"
	.sleb128 0
	.uleb128 0xa
	.string	"RINGQUEUE_STATUS_PENDING"
	.sleb128 1
	.byte	0
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0x5
	.byte	0x11
	.uaword	0x319
	.uleb128 0xc
	.string	"RingQueue_ElementType"
	.byte	0x22
	.byte	0x5
	.byte	0x13
	.uaword	0x3b3
	.uleb128 0x8
	.string	"eElementStatus"
	.byte	0x5
	.byte	0x15
	.uaword	0x359
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"u8ElementBuf"
	.byte	0x5
	.byte	0x16
	.uaword	0x3b3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0xd
	.uaword	0x1be
	.uaword	0x3c3
	.uleb128 0xe
	.uaword	0x2f5
	.byte	0x1f
	.byte	0
	.uleb128 0x3
	.string	"PRingQueue_ElementType"
	.byte	0x5
	.byte	0x17
	.uaword	0x3e1
	.uleb128 0x5
	.byte	0x4
	.uaword	0x364
	.uleb128 0xc
	.string	"RingQueue_ObjectType"
	.byte	0x14
	.byte	0x5
	.byte	0x19
	.uaword	0x4af
	.uleb128 0x8
	.string	"u8HeadIdx"
	.byte	0x5
	.byte	0x1b
	.uaword	0x1be
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"u8TailIdx"
	.byte	0x5
	.byte	0x1c
	.uaword	0x1be
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x8
	.string	"u8QueueMask"
	.byte	0x5
	.byte	0x1d
	.uaword	0x1be
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x8
	.string	"u8ElementLength"
	.byte	0x5
	.byte	0x1e
	.uaword	0x1be
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x8
	.string	"u32Lock"
	.byte	0x5
	.byte	0x1f
	.uaword	0x301
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"pxElementSetPtr"
	.byte	0x5
	.byte	0x20
	.uaword	0x3c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.string	"bPutData"
	.byte	0x5
	.byte	0x21
	.uaword	0x4d5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.string	"bGetData"
	.byte	0x5
	.byte	0x22
	.uaword	0x4f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.uaword	0x270
	.uaword	0x4c4
	.uleb128 0x10
	.uaword	0x4c4
	.uleb128 0x10
	.uaword	0x4ca
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x3e7
	.uleb128 0x5
	.byte	0x4
	.uaword	0x4d0
	.uleb128 0x11
	.uaword	0x1be
	.uleb128 0x5
	.byte	0x4
	.uaword	0x4af
	.uleb128 0xf
	.byte	0x1
	.uaword	0x270
	.uaword	0x4f0
	.uleb128 0x10
	.uaword	0x4c4
	.uleb128 0x10
	.uaword	0x4f0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x1be
	.uleb128 0x5
	.byte	0x4
	.uaword	0x4db
	.uleb128 0x3
	.string	"PRingQueue_ObjectType"
	.byte	0x5
	.byte	0x23
	.uaword	0x4c4
	.uleb128 0x12
	.byte	0x1
	.string	"RingQueue_bPutData"
	.byte	0x1
	.byte	0x45
	.byte	0x1
	.uaword	0x270
	.uaword	.LFB251
	.uaword	.LFE251
	.uaword	.LLST0
	.byte	0x1
	.uaword	0x5cd
	.uleb128 0x13
	.string	"pxQObj"
	.byte	0x1
	.byte	0x45
	.uaword	0x4fc
	.uaword	.LLST1
	.uleb128 0x13
	.string	"pu8SrcBuf"
	.byte	0x1
	.byte	0x45
	.uaword	0x4ca
	.uaword	.LLST2
	.uleb128 0x14
	.uaword	.LASF1
	.byte	0x1
	.byte	0x47
	.uaword	0x270
	.uaword	.LLST3
	.uleb128 0x15
	.string	"bSpinLockVal"
	.byte	0x1
	.byte	0x48
	.uaword	0x270
	.uaword	.LLST4
	.uleb128 0x16
	.uaword	.LVL4
	.uaword	0x675
	.uaword	0x5a8
	.uleb128 0x17
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.uaword	.LVL6
	.uaword	0x6a4
	.uaword	0x5bc
	.uleb128 0x17
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.uaword	.LVL8
	.uaword	0x6c9
	.uleb128 0x17
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.string	"RingQueue_bGetData"
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.uaword	0x270
	.uaword	.LFB252
	.uaword	.LFE252
	.uaword	.LLST5
	.byte	0x1
	.uaword	0x643
	.uleb128 0x13
	.string	"pxQObj"
	.byte	0x1
	.byte	0x68
	.uaword	0x4fc
	.uaword	.LLST6
	.uleb128 0x13
	.string	"pu8DestBuf"
	.byte	0x1
	.byte	0x68
	.uaword	0x4f0
	.uaword	.LLST7
	.uleb128 0x14
	.uaword	.LASF1
	.byte	0x1
	.byte	0x6a
	.uaword	0x270
	.uaword	.LLST8
	.uleb128 0x18
	.uaword	.LVL15
	.uaword	0x6c9
	.uleb128 0x17
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0
	.byte	0
	.uleb128 0xd
	.uaword	0x2db
	.uaword	0x653
	.uleb128 0xe
	.uaword	0x2f5
	.byte	0x3
	.byte	0
	.uleb128 0x19
	.string	"IfxCpu_cfg_indexMap"
	.byte	0x7
	.byte	0xaa
	.uaword	0x670
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.uaword	0x643
	.uleb128 0x1a
	.byte	0x1
	.string	"IfxCpu_acquireMutex"
	.byte	0x4
	.uahalf	0x238
	.byte	0x1
	.uaword	0x270
	.byte	0x1
	.uaword	0x69e
	.uleb128 0x10
	.uaword	0x69e
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x301
	.uleb128 0x1b
	.byte	0x1
	.string	"IfxCpu_releaseMutex"
	.byte	0x4
	.uahalf	0x24a
	.byte	0x1
	.byte	0x1
	.uaword	0x6c9
	.uleb128 0x10
	.uaword	0x69e
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.string	"rba_BswSrv_MemCopy"
	.byte	0x6
	.byte	0x46
	.byte	0x1
	.uaword	0x2a8
	.byte	0x1
	.uaword	0x6fa
	.uleb128 0x10
	.uaword	0x2a8
	.uleb128 0x10
	.uaword	0x6fa
	.uleb128 0x10
	.uaword	0x225
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x700
	.uleb128 0x1d
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
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x35
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x16
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
	.uleb128 0xc
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x34
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LFB251
	.uaword	.LCFI0
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0
	.uaword	.LFE251
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL1
	.uaword	.LVL3
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LVL4-1
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL4-1
	.uaword	.LFE251
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL1
	.uaword	.LVL3
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LVL4-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL4-1
	.uaword	.LFE251
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL0
	.uaword	.LVL2
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL3
	.uaword	.LVL5
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL7
	.uaword	.LVL9
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LFE251
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL7
	.uaword	.LVL8-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LFB252
	.uaword	.LCFI1
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI1
	.uaword	.LFE252
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL10
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL13
	.uaword	.LFE252
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL10
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL14
	.uaword	.LVL15-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL15-1
	.uaword	.LFE252
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL12
	.uaword	.LVL16
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LFE252
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x24
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB251
	.uaword	.LFE251-.LFB251
	.uaword	.LFB252
	.uaword	.LFE252-.LFB252
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB251
	.uaword	.LFE251
	.uaword	.LFB252
	.uaword	.LFE252
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"RingQueue_Enum"
.LASF1:
	.string	"bReturnVal"
	.extern	rba_BswSrv_MemCopy,STT_FUNC,0
	.extern	IfxCpu_releaseMutex,STT_FUNC,0
	.extern	IfxCpu_acquireMutex,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
