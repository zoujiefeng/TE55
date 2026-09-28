	.file	"NvM_Queue.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.NvM_Prv_Queue_Initialize,"ax",@progbits
	.align 1
	.global	NvM_Prv_Queue_Initialize
	.type	NvM_Prv_Queue_Initialize, @function
NvM_Prv_Queue_Initialize:
.LFB59:
	.file 1 "bsw\\NvM\\src\\Internal\\QueueHandling\\NvM_Queue.c"
	.loc 1 29 0
.LVL0:
	.loc 1 30 0
	mov	%d15, 0
	st.h	[%a4]0, %d15
	.loc 1 31 0
	ld.h	%d15, [%a4] 4
	st.h	[%a4] 2, %d15
	ret
.LFE59:
	.size	NvM_Prv_Queue_Initialize, .-NvM_Prv_Queue_Initialize
.section .text.NvM_Prv_Queue_IsEmpty,"ax",@progbits
	.align 1
	.global	NvM_Prv_Queue_IsEmpty
	.type	NvM_Prv_Queue_IsEmpty, @function
NvM_Prv_Queue_IsEmpty:
.LFB60:
	.loc 1 46 0
.LVL1:
	.loc 1 47 0
	ld.hu	%d2, [%a4] 4
	ld.hu	%d15, [%a4] 2
	.loc 1 48 0
	eq	%d2, %d2, %d15
	ret
.LFE60:
	.size	NvM_Prv_Queue_IsEmpty, .-NvM_Prv_Queue_IsEmpty
.section .text.NvM_Prv_Queue_IsFull,"ax",@progbits
	.align 1
	.global	NvM_Prv_Queue_IsFull
	.type	NvM_Prv_Queue_IsFull, @function
NvM_Prv_Queue_IsFull:
.LFB61:
	.loc 1 62 0
.LVL2:
	.loc 1 63 0
	ld.hu	%d2, [%a4] 2
	.loc 1 64 0
	eq	%d2, %d2, 0
	ret
.LFE61:
	.size	NvM_Prv_Queue_IsFull, .-NvM_Prv_Queue_IsFull
.section .text.NvM_Prv_Queue_GetFreeEntries,"ax",@progbits
	.align 1
	.global	NvM_Prv_Queue_GetFreeEntries
	.type	NvM_Prv_Queue_GetFreeEntries, @function
NvM_Prv_Queue_GetFreeEntries:
.LFB62:
	.loc 1 77 0
.LVL3:
	.loc 1 79 0
	ld.hu	%d2, [%a4] 2
	ret
.LFE62:
	.size	NvM_Prv_Queue_GetFreeEntries, .-NvM_Prv_Queue_GetFreeEntries
.section .text.NvM_Prv_Queue_GetEntries,"ax",@progbits
	.align 1
	.global	NvM_Prv_Queue_GetEntries
	.type	NvM_Prv_Queue_GetEntries, @function
NvM_Prv_Queue_GetEntries:
.LFB63:
	.loc 1 92 0
.LVL4:
	.loc 1 93 0
	ld.h	%d2, [%a4] 4
	ld.h	%d15, [%a4] 2
	sub	%d2, %d15
	.loc 1 94 0
	extr.u	%d2, %d2, 0, 16
	ret
.LFE63:
	.size	NvM_Prv_Queue_GetEntries, .-NvM_Prv_Queue_GetEntries
.section .text.NvM_Prv_Queue_Enqueue,"ax",@progbits
	.align 1
	.global	NvM_Prv_Queue_Enqueue
	.type	NvM_Prv_Queue_Enqueue, @function
NvM_Prv_Queue_Enqueue:
.LFB64:
	.loc 1 116 0
.LVL5:
	.loc 1 117 0
	ld.hu	%d15, [%a4] 4
.LVL6:
	ld.h	%d2, [%a4] 2
	.loc 1 118 0
	ld.hu	%d8, [%a4]0
	.loc 1 117 0
	sub	%d2, %d15, %d2
	.loc 1 118 0
	extr.u	%d2, %d2, 0, 16
	.loc 1 116 0
	mov.aa	%a15, %a4
	.loc 1 118 0
	add	%d8, %d2
	div	%e8, %d8, %d15
.LVL7:
.LBB4:
.LBB5:
	.file 2 ".\\output\\inc/..\\..\\bsw\\Rba_MemLib\\src\\rba_MemLib_Inl.h"
	.loc 2 141 0
	mov.aa	%a4, %a6
.LVL8:
	insert	%d15, %d9, 0, 16, 16
.LVL9:
	mul	%d2, %d15, %d4
	addsc.a	%a5, %a5, %d2, 0
.LVL10:
	call	rba_MemLib_MemCopy_Provided
.LVL11:
.LBE5:
.LBE4:
	.loc 1 124 0
	ld.h	%d15, [%a15] 2
	.loc 1 127 0
	extr.u	%d2, %d9, 0, 16
	.loc 1 124 0
	add	%d15, -1
	st.h	[%a15] 2, %d15
	.loc 1 127 0
	ret
.LFE64:
	.size	NvM_Prv_Queue_Enqueue, .-NvM_Prv_Queue_Enqueue
.section .text.NvM_Prv_Queue_Dequeue,"ax",@progbits
	.align 1
	.global	NvM_Prv_Queue_Dequeue
	.type	NvM_Prv_Queue_Dequeue, @function
NvM_Prv_Queue_Dequeue:
.LFB65:
	.loc 1 140 0
.LVL12:
	.loc 1 141 0
	ld.hu	%d2, [%a4]0
	ld.hu	%d15, [%a4] 4
	add	%d2, 1
	div.u	%e2, %d2, %d15
	.loc 1 142 0
	ld.h	%d15, [%a4] 2
	add	%d15, 1
	.loc 1 141 0
	st.h	[%a4]0, %d3
	.loc 1 142 0
	st.h	[%a4] 2, %d15
	ret
.LFE65:
	.size	NvM_Prv_Queue_Dequeue, .-NvM_Prv_Queue_Dequeue
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
	.uaword	.LFB59
	.uaword	.LFE59-.LFB59
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB60
	.uaword	.LFE60-.LFB60
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB61
	.uaword	.LFE61-.LFB61
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB62
	.uaword	.LFE62-.LFB62
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB63
	.uaword	.LFE63-.LFB63
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB64
	.uaword	.LFE64-.LFB64
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB65
	.uaword	.LFE65-.LFB65
	.align 2
.LEFDE12:
.section .text,"ax",@progbits
.Letext0:
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 4 "bsw\\NvM\\src\\Internal\\QueueHandling\\NvM_Prv_Queue_Types.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x650
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\NvM\\src\\Internal\\QueueHandling\\NvM_Queue.c"
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
	.uaword	0x1d9
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
	.uaword	0x205
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
	.uleb128 0x3
	.string	"uint32"
	.byte	0x3
	.byte	0x6a
	.uaword	0x241
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
	.uaword	0x1d9
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
	.byte	0x4
	.uaword	0x2c0
	.uleb128 0x5
	.uaword	0x1cc
	.uleb128 0x4
	.byte	0x4
	.uaword	0x1cc
	.uleb128 0x5
	.uaword	0x1f7
	.uleb128 0x6
	.byte	0x6
	.byte	0x4
	.byte	0x16
	.uaword	0x321
	.uleb128 0x7
	.string	"idxHead_u16"
	.byte	0x4
	.byte	0x1a
	.uaword	0x1f7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"cntrFreeEntries_u16"
	.byte	0x4
	.byte	0x1c
	.uaword	0x1f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x7
	.string	"size_cu16"
	.byte	0x4
	.byte	0x1e
	.uaword	0x2cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"NvM_Prv_Queue_tst"
	.byte	0x4
	.byte	0x20
	.uaword	0x2d0
	.uleb128 0x8
	.string	"rba_MemLib_MemCopy"
	.byte	0x2
	.byte	0x8a
	.byte	0x1
	.byte	0x3
	.uaword	0x388
	.uleb128 0x9
	.string	"src_pcu8"
	.byte	0x2
	.byte	0x8a
	.uaword	0x2ba
	.uleb128 0x9
	.string	"dst_pu8"
	.byte	0x2
	.byte	0x8a
	.uaword	0x2c5
	.uleb128 0x9
	.string	"length_u32"
	.byte	0x2
	.byte	0x8a
	.uaword	0x233
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.string	"NvM_Prv_Queue_Initialize"
	.byte	0x1
	.byte	0x1c
	.byte	0x1
	.uaword	.LFB59
	.uaword	.LFE59
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x3c4
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0x1
	.byte	0x1c
	.uaword	0x3c4
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x321
	.uleb128 0xc
	.byte	0x1
	.string	"NvM_Prv_Queue_IsEmpty"
	.byte	0x1
	.byte	0x2d
	.byte	0x1
	.uaword	0x27e
	.uaword	.LFB60
	.uaword	.LFE60
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x407
	.uleb128 0xb
	.uaword	.LASF1
	.byte	0x1
	.byte	0x2d
	.uaword	0x407
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x40d
	.uleb128 0x5
	.uaword	0x321
	.uleb128 0xc
	.byte	0x1
	.string	"NvM_Prv_Queue_IsFull"
	.byte	0x1
	.byte	0x3d
	.byte	0x1
	.uaword	0x27e
	.uaword	.LFB61
	.uaword	.LFE61
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x44e
	.uleb128 0xb
	.uaword	.LASF1
	.byte	0x1
	.byte	0x3d
	.uaword	0x407
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.string	"NvM_Prv_Queue_GetFreeEntries"
	.byte	0x1
	.byte	0x4c
	.byte	0x1
	.uaword	0x1f7
	.uaword	.LFB62
	.uaword	.LFE62
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x492
	.uleb128 0xb
	.uaword	.LASF1
	.byte	0x1
	.byte	0x4c
	.uaword	0x407
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.string	"NvM_Prv_Queue_GetEntries"
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.uaword	0x1f7
	.uaword	.LFB63
	.uaword	.LFE63
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x4d2
	.uleb128 0xb
	.uaword	.LASF1
	.byte	0x1
	.byte	0x5b
	.uaword	0x407
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.string	"NvM_Prv_Queue_Enqueue"
	.byte	0x1
	.byte	0x70
	.byte	0x1
	.uaword	0x1f7
	.uaword	.LFB64
	.uaword	.LFE64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x5e8
	.uleb128 0xd
	.uaword	.LASF0
	.byte	0x1
	.byte	0x70
	.uaword	0x3c4
	.uaword	.LLST0
	.uleb128 0xe
	.string	"QueueBuffer_pu8"
	.byte	0x1
	.byte	0x71
	.uaword	0x2c5
	.uaword	.LLST1
	.uleb128 0xe
	.string	"ElementToEnqueue_pcu8"
	.byte	0x1
	.byte	0x72
	.uaword	0x2ba
	.uaword	.LLST2
	.uleb128 0xe
	.string	"ElementSize_u32"
	.byte	0x1
	.byte	0x73
	.uaword	0x233
	.uaword	.LLST3
	.uleb128 0xf
	.string	"cntrEntries_u16"
	.byte	0x1
	.byte	0x75
	.uaword	0x1f7
	.uaword	.LLST4
	.uleb128 0x10
	.string	"idxEnd_u16"
	.byte	0x1
	.byte	0x76
	.uaword	0x1f7
	.byte	0x1
	.byte	0x59
	.uleb128 0x11
	.uaword	0x33a
	.uaword	.LBB4
	.uaword	.LBE4
	.byte	0x1
	.byte	0x78
	.uleb128 0x12
	.uaword	0x375
	.uaword	.LLST5
	.uleb128 0x12
	.uaword	0x366
	.uaword	.LLST6
	.uleb128 0x12
	.uaword	0x356
	.uaword	.LLST7
	.uleb128 0x13
	.uaword	.LVL11
	.uaword	0x621
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x14
	.byte	0x1
	.byte	0x65
	.byte	0xa
	.byte	0x7f
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x1e
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x22
	.uleb128 0x14
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.string	"NvM_Prv_Queue_Dequeue"
	.byte	0x1
	.byte	0x8b
	.byte	0x1
	.uaword	.LFB65
	.uaword	.LFE65
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x621
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0x1
	.byte	0x8b
	.uaword	0x3c4
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.string	"rba_MemLib_MemCopy_Provided"
	.byte	0x2
	.byte	0x13
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.uaword	0x2ba
	.uleb128 0x16
	.uaword	0x2c5
	.uleb128 0x16
	.uaword	0x233
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x9
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
	.uleb128 0xb
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
	.uleb128 0xe
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x16
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
	.uaword	.LVL5
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL8
	.uaword	.LFE64
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL5
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL10
	.uaword	.LFE64
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL5
	.uaword	.LVL11-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL11-1
	.uaword	.LFE64
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL5
	.uaword	.LVL11-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL11-1
	.uaword	.LFE64
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL6
	.uaword	.LVL8
	.uahalf	0x8
	.byte	0x7f
	.sleb128 0
	.byte	0x84
	.sleb128 2
	.byte	0x94
	.byte	0x2
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x8
	.byte	0x7f
	.sleb128 0
	.byte	0x8f
	.sleb128 2
	.byte	0x94
	.byte	0x2
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LVL11-1
	.uahalf	0xa
	.byte	0x8f
	.sleb128 4
	.byte	0x94
	.byte	0x2
	.byte	0x8f
	.sleb128 2
	.byte	0x94
	.byte	0x2
	.byte	0x1c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL7
	.uaword	.LVL11-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL11-1
	.uaword	.LFE64
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL7
	.uaword	.LVL10
	.uahalf	0xd
	.byte	0x79
	.sleb128 0
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x74
	.sleb128 0
	.byte	0x1e
	.byte	0x85
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LVL11-1
	.uahalf	0xe
	.byte	0x79
	.sleb128 0
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x74
	.sleb128 0
	.byte	0x1e
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL11-1
	.uaword	.LFE64
	.uahalf	0xf
	.byte	0x79
	.sleb128 0
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x1e
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL7
	.uaword	.LVL11-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL11-1
	.uaword	.LFE64
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x4c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB59
	.uaword	.LFE59-.LFB59
	.uaword	.LFB60
	.uaword	.LFE60-.LFB60
	.uaword	.LFB61
	.uaword	.LFE61-.LFB61
	.uaword	.LFB62
	.uaword	.LFE62-.LFB62
	.uaword	.LFB63
	.uaword	.LFE63-.LFB63
	.uaword	.LFB64
	.uaword	.LFE64-.LFB64
	.uaword	.LFB65
	.uaword	.LFE65-.LFB65
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB59
	.uaword	.LFE59
	.uaword	.LFB60
	.uaword	.LFE60
	.uaword	.LFB61
	.uaword	.LFE61
	.uaword	.LFB62
	.uaword	.LFE62
	.uaword	.LFB63
	.uaword	.LFE63
	.uaword	.LFB64
	.uaword	.LFE64
	.uaword	.LFB65
	.uaword	.LFE65
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"Queue_pst"
.LASF1:
	.string	"Queue_pcst"
	.extern	rba_MemLib_MemCopy_Provided,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
