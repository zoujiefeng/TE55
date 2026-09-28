	.file	"RingQ.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.RingQ_bIsFull,"ax",@progbits
	.align 1
	.global	RingQ_bIsFull
	.type	RingQ_bIsFull, @function
RingQ_bIsFull:
.LFB249:
	.file 1 "bswcdd\\RingQ\\RingQ.c"
	.loc 1 32 0
.LVL0:
	.loc 1 37 0
	movh.a	%a15, hi:RingQ_kakptObjSet
	lea	%a15, [%a15] lo:RingQ_kakptObjSet
	addsc.a	%a15, %a15, %d4, 2
	.loc 1 35 0
	mov	%d2, 0
	.loc 1 37 0
	ld.a	%a2, [%a15]0
.LVL1:
	.loc 1 38 0
	ld.a	%a15, [%a2] 4
.LVL2:
	.loc 1 40 0
	jz.a	%a15, .L2
	.loc 1 42 0
	ld.bu	%d2, [%a2]0
	ld.bu	%d3, [%a15] 1
.LVL3:
	.loc 1 43 0
	ld.bu	%d15, [%a15]0
.LVL4:
	.loc 1 45 0
	and	%d5, %d2, %d3
	and	%d4, %d15, %d2
.LVL5:
	.loc 1 35 0
	ne	%d2, %d3, %d15
.LVL6:
	and.eq	%d2, %d5, %d4
.LVL7:
.L2:
	.loc 1 53 0
	ret
.LFE249:
	.size	RingQ_bIsFull, .-RingQ_bIsFull
.section .text.RingQ_bIsEmpty,"ax",@progbits
	.align 1
	.global	RingQ_bIsEmpty
	.type	RingQ_bIsEmpty, @function
RingQ_bIsEmpty:
.LFB250:
	.loc 1 67 0
.LVL8:
	.loc 1 72 0
	movh.a	%a15, hi:RingQ_kakptObjSet
	lea	%a15, [%a15] lo:RingQ_kakptObjSet
	addsc.a	%a15, %a15, %d4, 2
	.loc 1 70 0
	mov	%d2, 0
	.loc 1 72 0
	ld.a	%a2, [%a15]0
.LVL9:
	.loc 1 73 0
	ld.a	%a15, [%a2] 4
.LVL10:
	.loc 1 75 0
	jz.a	%a15, .L7
	.loc 1 77 0
	ld.bu	%d2, [%a2]0
	ld.bu	%d3, [%a15] 1
.LVL11:
	.loc 1 78 0
	ld.bu	%d15, [%a15]0
.LVL12:
	.loc 1 80 0
	and	%d5, %d2, %d3
	and	%d4, %d15, %d2
.LVL13:
	.loc 1 70 0
	eq	%d2, %d3, %d15
.LVL14:
	and.eq	%d2, %d5, %d4
.LVL15:
.L7:
	.loc 1 88 0
	ret
.LFE250:
	.size	RingQ_bIsEmpty, .-RingQ_bIsEmpty
.section .text.RingQ_bPutData,"ax",@progbits
	.align 1
	.global	RingQ_bPutData
	.type	RingQ_bPutData, @function
RingQ_bPutData:
.LFB251:
	.loc 1 102 0
.LVL16:
	.loc 1 109 0
	movh.a	%a15, hi:RingQ_kakptObjSet
	lea	%a15, [%a15] lo:RingQ_kakptObjSet
	addsc.a	%a15, %a15, %d4, 2
	.loc 1 112 0
	mov.d	%d2, %a4
	.loc 1 109 0
	ld.a	%a15, [%a15]0
.LVL17:
	.loc 1 110 0
	ld.w	%d8, [%a15] 4
.LVL18:
	.loc 1 112 0
	ne	%d15, %d8, 0
	and.ne	%d15, %d2, 0
	jnz	%d15, .L11
.LVL19:
.L13:
	.loc 1 106 0
	mov	%d15, 0
.LVL20:
.L12:
	.loc 1 136 0
	mov	%d2, %d15
	ret
.LVL21:
.L11:
	.loc 1 115 0
	mov.a	%a12, %d8
	mov.aa	%a13, %a4
	add.a	%a12, 4
	mov.aa	%a4, %a12
	call	IfxCpu_acquireMutex
.LVL22:
	.loc 1 116 0
	jne	%d2, 1, .L13
	.loc 1 118 0
	mov.a	%a2, %d8
	ld.bu	%d9, [%a15]0
	ld.bu	%d15, [%a2] 1
	.loc 1 119 0
	ld.a	%a2, [%a15] 16
	.loc 1 118 0
	and	%d9, %d15
.LVL23:
	.loc 1 119 0
	mov	%d4, %d9
	calli	%a2
.LVL24:
	.loc 1 106 0
	mov	%d15, 0
	.loc 1 121 0
	jz	%d2, .L16
.LVL25:
.L14:
	.loc 1 131 0
	mov.aa	%a4, %a12
	call	IfxCpu_releaseMutex
.LVL26:
	j	.L12
.LVL27:
.L16:
	.loc 1 123 0
	ld.a	%a2, [%a15] 12
	mov	%d4, %d9
	calli	%a2
.LVL28:
	.loc 1 125 0
	ld.bu	%d4, [%a15] 1
	mov.aa	%a4, %a2
	mov.aa	%a5, %a13
	call	rba_BswSrv_MemCopy
.LVL29:
	.loc 1 126 0
	ld.a	%a15, [%a15] 20
.LVL30:
	mov	%d4, %d9
	mov	%d5, 1
	calli	%a15
.LVL31:
	.loc 1 127 0
	mov.a	%a15, %d8
	ld.bu	%d15, [%a15] 1
	add	%d15, 1
	st.b	[%a15] 1, %d15
.LVL32:
	.loc 1 129 0
	mov	%d15, 1
	j	.L14
.LFE251:
	.size	RingQ_bPutData, .-RingQ_bPutData
.section .text.RingQ_bGetData,"ax",@progbits
	.align 1
	.global	RingQ_bGetData
	.type	RingQ_bGetData, @function
RingQ_bGetData:
.LFB252:
	.loc 1 149 0
.LVL33:
	.loc 1 155 0
	movh.a	%a15, hi:RingQ_kakptObjSet
	lea	%a15, [%a15] lo:RingQ_kakptObjSet
	addsc.a	%a15, %a15, %d4, 2
	.loc 1 158 0
	mov.d	%d3, %a4
	.loc 1 155 0
	ld.a	%a15, [%a15]0
.LVL34:
	.loc 1 156 0
	ld.w	%d15, [%a15] 4
.LVL35:
	.loc 1 158 0
	ne	%d2, %d15, 0
	and.ne	%d2, %d3, 0
	jnz	%d2, .L18
.LVL36:
.L20:
	.loc 1 152 0
	mov	%d2, 0
	ret
.LVL37:
.L18:
	.loc 1 161 0
	mov.a	%a2, %d15
	ld.bu	%d8, [%a15]0
	ld.bu	%d2, [%a2]0
	.loc 1 162 0
	ld.a	%a2, [%a15] 16
	.loc 1 161 0
	and	%d8, %d2
.LVL38:
	.loc 1 162 0
	mov	%d4, %d8
.LVL39:
	mov.aa	%a12, %a4
	calli	%a2
.LVL40:
	.loc 1 164 0
	jne	%d2, 1, .L20
	.loc 1 166 0
	ld.a	%a2, [%a15] 12
	mov	%d4, %d8
	calli	%a2
.LVL41:
	.loc 1 168 0
	mov.aa	%a4, %a12
	mov.aa	%a5, %a2
	ld.bu	%d4, [%a15] 1
	call	rba_BswSrv_MemCopy
.LVL42:
	.loc 1 169 0
	ld.a	%a15, [%a15] 20
.LVL43:
	mov	%d4, %d8
	mov	%d5, 0
	calli	%a15
.LVL44:
	.loc 1 170 0
	mov.a	%a15, %d15
	ld.bu	%d2, [%a15]0
	add	%d2, 1
	st.b	[%a15]0, %d2
.LVL45:
	.loc 1 172 0
	mov	%d2, 1
.LVL46:
	.loc 1 177 0
	ret
.LFE252:
	.size	RingQ_bGetData, .-RingQ_bGetData
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
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB252
	.uaword	.LFE252-.LFB252
	.align 2
.LEFDE6:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\Cpu\\Std\\Ifx_Types.h"
	.file 4 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\Cpu\\Std\\IfxCpu.h"
	.file 5 "bswcdd\\RingQ\\RingQ.h"
	.file 6 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\_Impl\\IfxCpu_cfg.h"
	.file 7 ".\\output\\inc/..\\..\\bsw\\integration\\rba_BswSrv\\api\\rba_BswSrv.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x8fa
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\RingQ\\RingQ.c"
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
	.uaword	0x1bf
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
	.uaword	0x201
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
	.uaword	0x227
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
	.uaword	0x1bf
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
	.uaword	0x2a4
	.uleb128 0x6
	.uleb128 0x7
	.byte	0x8
	.byte	0x3
	.byte	0x8c
	.uaword	0x2cf
	.uleb128 0x8
	.string	"module"
	.byte	0x3
	.byte	0x8e
	.uaword	0x29e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"index"
	.byte	0x3
	.byte	0x8f
	.uaword	0x1f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"IfxModule_IndexMap"
	.byte	0x3
	.byte	0x90
	.uaword	0x2a5
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x3
	.string	"IfxCpu_mutexLock"
	.byte	0x4
	.byte	0x75
	.uaword	0x227
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x5
	.byte	0x1d
	.uaword	0x318
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x1
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x5
	.byte	0x1e
	.uaword	0x329
	.uleb128 0xb
	.uaword	.LASF1
	.byte	0x18
	.byte	0x5
	.byte	0x2c
	.uaword	0x3eb
	.uleb128 0x8
	.string	"u8QueueMask"
	.byte	0x5
	.byte	0x2d
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"u8ElementLength"
	.byte	0x5
	.byte	0x2e
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x8
	.string	"pxRamBlock"
	.byte	0x5
	.byte	0x30
	.uaword	0x488
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"pxElementSetPtr"
	.byte	0x5
	.byte	0x31
	.uaword	0x48e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.string	"pu8GetElementAddr"
	.byte	0x5
	.byte	0x33
	.uaword	0x4af
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.string	"eGetElementStatus"
	.byte	0x5
	.byte	0x34
	.uaword	0x4c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.string	"vidSetElementStatus"
	.byte	0x5
	.byte	0x35
	.uaword	0x4dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0
	.uleb128 0x9
	.uaword	.LASF2
	.byte	0x5
	.byte	0x1f
	.uaword	0x3f6
	.uleb128 0xb
	.uaword	.LASF2
	.byte	0x8
	.byte	0x5
	.byte	0x26
	.uaword	0x43d
	.uleb128 0x8
	.string	"u8HeadIdx"
	.byte	0x5
	.byte	0x27
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"u8TailIdx"
	.byte	0x5
	.byte	0x28
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x8
	.string	"u32Lock"
	.byte	0x5
	.byte	0x29
	.uaword	0x2f5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xc
	.uaword	.LASF3
	.byte	0x1
	.byte	0x5
	.byte	0x21
	.uaword	0x47d
	.uleb128 0xd
	.string	"RINGQUEUE_STATUS_IDLE"
	.sleb128 0
	.uleb128 0xd
	.string	"RINGQUEUE_STATUS_PENDING"
	.sleb128 1
	.byte	0
	.uleb128 0x9
	.uaword	.LASF3
	.byte	0x5
	.byte	0x24
	.uaword	0x43d
	.uleb128 0x5
	.byte	0x4
	.uaword	0x3eb
	.uleb128 0x5
	.byte	0x4
	.uaword	0x30d
	.uleb128 0xe
	.byte	0x1
	.uaword	0x4a4
	.uaword	0x4a4
	.uleb128 0xf
	.uaword	0x4aa
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x1b2
	.uleb128 0x10
	.uaword	0x1b2
	.uleb128 0x5
	.byte	0x4
	.uaword	0x494
	.uleb128 0xe
	.byte	0x1
	.uaword	0x47d
	.uaword	0x4c5
	.uleb128 0xf
	.uaword	0x4aa
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x4b5
	.uleb128 0x11
	.byte	0x1
	.uaword	0x4dc
	.uleb128 0xf
	.uaword	0x4aa
	.uleb128 0xf
	.uaword	0x47d
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x4cb
	.uleb128 0x12
	.byte	0x1
	.string	"RingQ_bIsFull"
	.byte	0x1
	.byte	0x1f
	.byte	0x1
	.uaword	0x264
	.uaword	.LFB249
	.uaword	.LFE249
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x560
	.uleb128 0x13
	.uaword	.LASF9
	.byte	0x1
	.byte	0x1f
	.uaword	0x4aa
	.uaword	.LLST0
	.uleb128 0x14
	.uaword	.LASF4
	.byte	0x1
	.byte	0x21
	.uaword	0x1b2
	.uaword	.LLST1
	.uleb128 0x14
	.uaword	.LASF5
	.byte	0x1
	.byte	0x22
	.uaword	0x1b2
	.uaword	.LLST2
	.uleb128 0x14
	.uaword	.LASF6
	.byte	0x1
	.byte	0x23
	.uaword	0x264
	.uaword	.LLST3
	.uleb128 0x15
	.uaword	.LASF7
	.byte	0x1
	.byte	0x25
	.uaword	0x560
	.byte	0x1
	.byte	0x62
	.uleb128 0x15
	.uaword	.LASF8
	.byte	0x1
	.byte	0x26
	.uaword	0x488
	.byte	0x1
	.byte	0x6f
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x566
	.uleb128 0x10
	.uaword	0x31e
	.uleb128 0x12
	.byte	0x1
	.string	"RingQ_bIsEmpty"
	.byte	0x1
	.byte	0x42
	.byte	0x1
	.uaword	0x264
	.uaword	.LFB250
	.uaword	.LFE250
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x5ea
	.uleb128 0x13
	.uaword	.LASF9
	.byte	0x1
	.byte	0x42
	.uaword	0x4aa
	.uaword	.LLST4
	.uleb128 0x14
	.uaword	.LASF4
	.byte	0x1
	.byte	0x44
	.uaword	0x1b2
	.uaword	.LLST5
	.uleb128 0x14
	.uaword	.LASF5
	.byte	0x1
	.byte	0x45
	.uaword	0x1b2
	.uaword	.LLST6
	.uleb128 0x14
	.uaword	.LASF6
	.byte	0x1
	.byte	0x46
	.uaword	0x264
	.uaword	.LLST7
	.uleb128 0x15
	.uaword	.LASF7
	.byte	0x1
	.byte	0x48
	.uaword	0x560
	.byte	0x1
	.byte	0x62
	.uleb128 0x15
	.uaword	.LASF8
	.byte	0x1
	.byte	0x49
	.uaword	0x488
	.byte	0x1
	.byte	0x6f
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.string	"RingQ_bPutData"
	.byte	0x1
	.byte	0x65
	.byte	0x1
	.uaword	0x264
	.uaword	.LFB251
	.uaword	.LFE251
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x719
	.uleb128 0x13
	.uaword	.LASF9
	.byte	0x1
	.byte	0x65
	.uaword	0x4aa
	.uaword	.LLST8
	.uleb128 0x16
	.string	"pu8SrcBuf"
	.byte	0x1
	.byte	0x65
	.uaword	0x719
	.uaword	.LLST9
	.uleb128 0x15
	.uaword	.LASF4
	.byte	0x1
	.byte	0x67
	.uaword	0x1b2
	.byte	0x1
	.byte	0x59
	.uleb128 0x14
	.uaword	.LASF10
	.byte	0x1
	.byte	0x68
	.uaword	0x4a4
	.uaword	.LLST10
	.uleb128 0x17
	.string	"bSpinLockVal"
	.byte	0x1
	.byte	0x69
	.uaword	0x264
	.uaword	.LLST11
	.uleb128 0x14
	.uaword	.LASF6
	.byte	0x1
	.byte	0x6a
	.uaword	0x264
	.uaword	.LLST12
	.uleb128 0x17
	.string	"eStatus"
	.byte	0x1
	.byte	0x6c
	.uaword	0x47d
	.uaword	.LLST13
	.uleb128 0x14
	.uaword	.LASF7
	.byte	0x1
	.byte	0x6d
	.uaword	0x560
	.uaword	.LLST14
	.uleb128 0x15
	.uaword	.LASF8
	.byte	0x1
	.byte	0x6e
	.uaword	0x488
	.byte	0x1
	.byte	0x58
	.uleb128 0x18
	.uaword	.LVL22
	.uaword	0x871
	.uaword	0x6bc
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL24
	.uaword	0x6cc
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.uaword	.LVL26
	.uaword	0x8a0
	.uaword	0x6e0
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL28
	.uaword	0x6f0
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.uaword	.LVL29
	.uaword	0x8c5
	.uaword	0x704
	.uleb128 0x19
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.uaword	.LVL31
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x19
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x4aa
	.uleb128 0x12
	.byte	0x1
	.string	"RingQ_bGetData"
	.byte	0x1
	.byte	0x94
	.byte	0x1
	.uaword	0x264
	.uaword	.LFB252
	.uaword	.LFE252
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x80f
	.uleb128 0x13
	.uaword	.LASF9
	.byte	0x1
	.byte	0x94
	.uaword	0x4aa
	.uaword	.LLST15
	.uleb128 0x16
	.string	"pu8DestBuf"
	.byte	0x1
	.byte	0x94
	.uaword	0x4a4
	.uaword	.LLST16
	.uleb128 0x15
	.uaword	.LASF5
	.byte	0x1
	.byte	0x96
	.uaword	0x1b2
	.byte	0x1
	.byte	0x58
	.uleb128 0x14
	.uaword	.LASF10
	.byte	0x1
	.byte	0x97
	.uaword	0x4a4
	.uaword	.LLST17
	.uleb128 0x14
	.uaword	.LASF6
	.byte	0x1
	.byte	0x98
	.uaword	0x264
	.uaword	.LLST18
	.uleb128 0x17
	.string	"eStatus"
	.byte	0x1
	.byte	0x9a
	.uaword	0x47d
	.uaword	.LLST19
	.uleb128 0x14
	.uaword	.LASF7
	.byte	0x1
	.byte	0x9b
	.uaword	0x560
	.uaword	.LLST20
	.uleb128 0x15
	.uaword	.LASF8
	.byte	0x1
	.byte	0x9c
	.uaword	0x488
	.byte	0x1
	.byte	0x5f
	.uleb128 0x1a
	.uaword	.LVL40
	.uaword	0x7d6
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL41
	.uaword	0x7e6
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.uaword	.LVL42
	.uaword	0x8c5
	.uaword	0x7fa
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.uaword	.LVL44
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x19
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uaword	0x2cf
	.uaword	0x81f
	.uleb128 0x1d
	.uaword	0x2e9
	.byte	0x3
	.byte	0
	.uleb128 0x1e
	.string	"IfxCpu_cfg_indexMap"
	.byte	0x6
	.byte	0xaa
	.uaword	0x83c
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.uaword	0x80f
	.uleb128 0x1c
	.uaword	0x560
	.uaword	0x851
	.uleb128 0x1d
	.uaword	0x2e9
	.byte	0
	.byte	0
	.uleb128 0x1e
	.string	"RingQ_kakptObjSet"
	.byte	0x1
	.byte	0xb
	.uaword	0x86c
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.uaword	0x841
	.uleb128 0x1f
	.byte	0x1
	.string	"IfxCpu_acquireMutex"
	.byte	0x4
	.uahalf	0x238
	.byte	0x1
	.uaword	0x264
	.byte	0x1
	.uaword	0x89a
	.uleb128 0xf
	.uaword	0x89a
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2f5
	.uleb128 0x20
	.byte	0x1
	.string	"IfxCpu_releaseMutex"
	.byte	0x4
	.uahalf	0x24a
	.byte	0x1
	.byte	0x1
	.uaword	0x8c5
	.uleb128 0xf
	.uaword	0x89a
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"rba_BswSrv_MemCopy"
	.byte	0x7
	.byte	0x46
	.byte	0x1
	.uaword	0x29c
	.byte	0x1
	.uaword	0x8f6
	.uleb128 0xf
	.uaword	0x29c
	.uleb128 0xf
	.uaword	0x8f6
	.uleb128 0xf
	.uaword	0x219
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x8fc
	.uleb128 0x22
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
	.uleb128 0xa
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x13
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
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
	.uleb128 0xa
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL5
	.uaword	.LFE249
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL3
	.uaword	.LVL6
	.uahalf	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x8
	.byte	0x82
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x73
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL4
	.uaword	.LVL6
	.uahalf	0x6
	.byte	0x7f
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x8
	.byte	0x7f
	.sleb128 0
	.byte	0x82
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL0
	.uaword	.LVL7
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL7
	.uaword	.LFE249
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL8
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL13
	.uaword	.LFE250
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL11
	.uaword	.LVL14
	.uahalf	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x8
	.byte	0x82
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x73
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL12
	.uaword	.LVL14
	.uahalf	0x6
	.byte	0x7f
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x8
	.byte	0x7f
	.sleb128 0
	.byte	0x82
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL8
	.uaword	.LVL15
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LFE250
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL16
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL19
	.uaword	.LVL21
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL22-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL22-1
	.uaword	.LFE251
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL16
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL19
	.uaword	.LVL21
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL22-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL22-1
	.uaword	.LFE251
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL28
	.uaword	.LVL29-1
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL22
	.uaword	.LVL24-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL16
	.uaword	.LVL20
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL21
	.uaword	.LVL25
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL27
	.uaword	.LVL32
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL32
	.uaword	.LFE251
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL27
	.uaword	.LVL28-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL17
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL21
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL27
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL33
	.uaword	.LVL36
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL36
	.uaword	.LVL37
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL37
	.uaword	.LVL39
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL39
	.uaword	.LFE252
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL33
	.uaword	.LVL36
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL36
	.uaword	.LVL37
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL37
	.uaword	.LVL40-1
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL40-1
	.uaword	.LFE252
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL41
	.uaword	.LVL42-1
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL33
	.uaword	.LVL45
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL45
	.uaword	.LVL46
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL46
	.uaword	.LFE252
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL40
	.uaword	.LVL41-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL34
	.uaword	.LVL43
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x34
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
	.uaword	.LFB252
	.uaword	.LFE252-.LFB252
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
	.uaword	.LFB252
	.uaword	.LFE252
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF3:
	.string	"RingQ_Enum"
.LASF1:
	.string	"RingQ_ObjType"
.LASF7:
	.string	"kptQObjPtr"
.LASF0:
	.string	"RingQ_ElementType"
.LASF4:
	.string	"u8TailIndex"
.LASF9:
	.string	"ku8QID"
.LASF6:
	.string	"bReturnVal"
.LASF2:
	.string	"RingQ_RamBlock"
.LASF8:
	.string	"ptVar"
.LASF10:
	.string	"pu8ElementAddr"
.LASF5:
	.string	"u8HeadIndex"
	.extern	rba_BswSrv_MemCopy,STT_FUNC,0
	.extern	IfxCpu_releaseMutex,STT_FUNC,0
	.extern	IfxCpu_acquireMutex,STT_FUNC,0
	.extern	RingQ_kakptObjSet,STT_OBJECT,4
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
