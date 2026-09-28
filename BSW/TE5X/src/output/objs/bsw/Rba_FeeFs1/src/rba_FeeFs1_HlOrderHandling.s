	.file	"rba_FeeFs1_HlOrderHandling.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Fee_HLPlaceOrder,"ax",@progbits
	.align 1
	.global	Fee_HLPlaceOrder
	.type	Fee_HLPlaceOrder, @function
Fee_HLPlaceOrder:
.LFB26:
	.file 1 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_HlOrderHandling.c"
	.loc 1 52 0
.LVL0:
	.loc 1 59 0
	lt.u	%d2, %d4, 58
	.loc 1 52 0
	mov	%d15, %d4
	mov	%d10, %d5
	mov.aa	%a12, %a4
	mov	%d11, %d6
	mov	%d9, %d7
	.loc 1 59 0
	jnz	%d2, .L2
.LVL1:
.L4:
	.loc 1 53 0
	mov	%d2, 1
	ret
.LVL2:
.L2:
	.loc 1 65 0
	movh.a	%a15, hi:Fee_BlockProperties_st
	mov.d	%d3, %a15
	addi	%d2, %d3, lo:Fee_BlockProperties_st
	madd	%d3, %d2, %d4, 16
	mov.a	%a15, %d3
	ld.h	%d8, [%a15] 2
	extr.u	%d8, %d8, 8, 2
	extr.u	%d12, %d8, 0, 16
.LVL3:
	.loc 1 69 0
	mov	%d4, %d12
.LVL4:
	call	Fee_SrvGetFifoMode
.LVL5:
	jnz	%d2, .L4
	.loc 1 73 0
	movh.a	%a2, hi:Fee_JobResult
	lea	%a2, [%a2] lo:Fee_JobResult
	addsc.a	%a2, %a2, %d8, 0
	mov	%d2, 2
	st.b	[%a2]0, %d2
	.loc 1 80 0
	movh.a	%a4, hi:Fee_OrderFifo_st
	.loc 1 76 0
	ld.hu	%d2, [%a15] 2
.LVL6:
	.loc 1 80 0
	lea	%a4, [%a4] lo:Fee_OrderFifo_st
	sh	%d8, 4
.LVL7:
	addsc.a	%a2, %a4, %d8, 0
	.loc 1 76 0
	extr.u	%d3, %d2, 10, 1
	.loc 1 85 0
	and	%d2, %d2, 1
.LVL8:
	add	%d2, 1
	.loc 1 89 0
	st.b	[%a2] 14, %d2
	.loc 1 92 0
	ld.h	%d2, [%a15]0
	.loc 1 80 0
	st.b	[%a2] 13, %d3
	.loc 1 92 0
	st.h	[%a2] 4, %d2
	.loc 1 93 0
	st.h	[%a2] 6, %d15
	.loc 1 96 0
	st.a	[%a2]0, %a12
	.loc 1 99 0
	jeq	%d9, 1, .L5
	.loc 1 108 0
	ld.hu	%d11, [%a15] 4
.L5:
	addsc.a	%a15, %a4, %d8, 0
.LVL9:
	.loc 1 114 0
	mov	%e4, %d12, %d9
	st.h	[%a15] 10, %d11
	.loc 1 113 0
	st.h	[%a15] 8, %d10
	.loc 1 114 0
	call	Fee_SrvSetFifoMode
.LVL10:
	.loc 1 117 0
	mov	%d2, 0
.LVL11:
	.loc 1 130 0
	ret
.LFE26:
	.size	Fee_HLPlaceOrder, .-Fee_HLPlaceOrder
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
	.uaword	.LFB26
	.uaword	.LFE26-.LFB26
	.align 2
.LEFDE0:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 4 ".\\output\\inc/..\\..\\bsw\\MemIf\\api\\MemIf_Types.h"
	.file 5 ".\\output\\inc/..\\..\\bsw\\Fee\\api\\Fee_Rb_Types.h"
	.file 6 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_Prv.h"
	.file 7 ".\\output\\inc/..\\..\\bsw\\Fee\\integration\\Fee_Cfg_SchM.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x7c2
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_HlOrderHandling.c"
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
	.uaword	0x1da
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
	.uaword	0x206
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
	.string	"Std_ReturnType"
	.byte	0x3
	.byte	0x60
	.uaword	0x1cd
	.uleb128 0x4
	.byte	0x1
	.byte	0x4
	.byte	0x20
	.uaword	0x32d
	.uleb128 0x5
	.string	"MEMIF_JOB_OK"
	.sleb128 0
	.uleb128 0x5
	.string	"MEMIF_JOB_FAILED"
	.sleb128 1
	.uleb128 0x5
	.string	"MEMIF_JOB_PENDING"
	.sleb128 2
	.uleb128 0x5
	.string	"MEMIF_JOB_CANCELED"
	.sleb128 3
	.uleb128 0x5
	.string	"MEMIF_BLOCK_INCONSISTENT"
	.sleb128 4
	.uleb128 0x5
	.string	"MEMIF_BLOCK_INVALID"
	.sleb128 5
	.byte	0
	.uleb128 0x3
	.string	"MemIf_JobResultType"
	.byte	0x4
	.byte	0x27
	.uaword	0x2a8
	.uleb128 0x4
	.byte	0x1
	.byte	0x5
	.byte	0x52
	.uaword	0x3c7
	.uleb128 0x5
	.string	"FEE_NO_ORDER"
	.sleb128 0
	.uleb128 0x5
	.string	"FEE_READ_ORDER"
	.sleb128 1
	.uleb128 0x5
	.string	"FEE_WRITE_ORDER"
	.sleb128 2
	.uleb128 0x5
	.string	"FEE_INVALIDATE_ORDER"
	.sleb128 3
	.uleb128 0x5
	.string	"FEE_MAINTAIN_ORDER"
	.sleb128 4
	.uleb128 0x5
	.string	"FEE_FORCED_READ_ORDER"
	.sleb128 5
	.byte	0
	.uleb128 0x3
	.string	"Fee_HlMode_ten"
	.byte	0x5
	.byte	0x59
	.uaword	0x348
	.uleb128 0x6
	.byte	0x4
	.uaword	0x1cd
	.uleb128 0x6
	.byte	0x4
	.uaword	0x3e9
	.uleb128 0x7
	.byte	0x1
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.byte	0x9f
	.uaword	0x41a
	.uleb128 0x5
	.string	"FEE_NORMAL_PRIO_E"
	.sleb128 0
	.uleb128 0x5
	.string	"FEE_HIGH_PRIO_E"
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.string	"Fee_HlPriority_ten"
	.byte	0x6
	.byte	0xa2
	.uaword	0x3eb
	.uleb128 0x8
	.byte	0x10
	.byte	0x6
	.byte	0xb0
	.uaword	0x4d1
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x6
	.byte	0xb2
	.uaword	0x3dd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"FeeIdx_u16"
	.byte	0x6
	.byte	0xb3
	.uaword	0x1f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.string	"BlockPropIdx_u16"
	.byte	0x6
	.byte	0xb4
	.uaword	0x1f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x6
	.byte	0xb5
	.uaword	0x1f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.uaword	.LASF2
	.byte	0x6
	.byte	0xb6
	.uaword	0x1f8
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xa
	.string	"Mode_en"
	.byte	0x6
	.byte	0xb7
	.uaword	0x3c7
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.string	"Prio_en"
	.byte	0x6
	.byte	0xb8
	.uaword	0x41a
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xa
	.string	"SecLevel_u8"
	.byte	0x6
	.byte	0xb9
	.uaword	0x1cd
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.byte	0
	.uleb128 0x3
	.string	"Fee_OrderFifo_tst"
	.byte	0x6
	.byte	0xba
	.uaword	0x434
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0xb
	.byte	0x10
	.byte	0x6
	.uahalf	0x14c
	.uaword	0x58b
	.uleb128 0xc
	.string	"BlockPersistentId_u16"
	.byte	0x6
	.uahalf	0x14e
	.uaword	0x1f8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"Flags_u16"
	.byte	0x6
	.uahalf	0x14f
	.uaword	0x1f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xd
	.uaword	.LASF2
	.byte	0x6
	.uahalf	0x150
	.uaword	0x1f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"JobEndNotification_pfn"
	.byte	0x6
	.uahalf	0x151
	.uaword	0x58b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.string	"JobErrorNotification_pfn"
	.byte	0x6
	.uahalf	0x152
	.uaword	0x58b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0xe
	.uaword	0x3e3
	.uleb128 0xf
	.string	"Fee_BlockPropertiesType_tst"
	.byte	0x6
	.uahalf	0x153
	.uaword	0x4f6
	.uleb128 0x10
	.string	"SchM_Enter_Fee_Order"
	.byte	0x7
	.byte	0x27
	.byte	0x1
	.byte	0x3
	.uleb128 0x10
	.string	"SchM_Exit_Fee_Order"
	.byte	0x7
	.byte	0x2c
	.byte	0x1
	.byte	0x3
	.uleb128 0x11
	.byte	0x1
	.string	"Fee_HLPlaceOrder"
	.byte	0x1
	.byte	0x33
	.byte	0x1
	.uaword	0x292
	.uaword	.LFB26
	.uaword	.LFE26
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x6f4
	.uleb128 0x12
	.string	"Blocknumber_u16"
	.byte	0x1
	.byte	0x33
	.uaword	0x1f8
	.uaword	.LLST0
	.uleb128 0x13
	.uaword	.LASF1
	.byte	0x1
	.byte	0x33
	.uaword	0x1f8
	.uaword	.LLST1
	.uleb128 0x13
	.uaword	.LASF0
	.byte	0x1
	.byte	0x33
	.uaword	0x3dd
	.uaword	.LLST2
	.uleb128 0x12
	.string	"Length_16"
	.byte	0x1
	.byte	0x33
	.uaword	0x1f8
	.uaword	.LLST3
	.uleb128 0x12
	.string	"Mode_en"
	.byte	0x1
	.byte	0x33
	.uaword	0x3c7
	.uaword	.LLST4
	.uleb128 0x14
	.string	"xRetVal"
	.byte	0x1
	.byte	0x35
	.uaword	0x292
	.uaword	.LLST5
	.uleb128 0x14
	.string	"xJobType_u16"
	.byte	0x1
	.byte	0x36
	.uaword	0x1f8
	.uaword	.LLST6
	.uleb128 0x14
	.string	"xJobPrio_u16"
	.byte	0x1
	.byte	0x37
	.uaword	0x1f8
	.uaword	.LLST7
	.uleb128 0x15
	.string	"xSecLevel_u8"
	.byte	0x1
	.byte	0x38
	.uaword	0x1cd
	.uleb128 0x16
	.uaword	.LVL5
	.uaword	0x778
	.uaword	0x6dd
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.uaword	.LVL10
	.uaword	0x7a0
	.uleb128 0x17
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x19
	.uaword	0x4d1
	.uaword	0x704
	.uleb128 0x1a
	.uaword	0x4ea
	.byte	0x2
	.byte	0
	.uleb128 0x1b
	.string	"Fee_OrderFifo_st"
	.byte	0x6
	.uahalf	0x409
	.uaword	0x6f4
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.uaword	0x32d
	.uaword	0x72f
	.uleb128 0x1a
	.uaword	0x4ea
	.byte	0x2
	.byte	0
	.uleb128 0x1b
	.string	"Fee_JobResult"
	.byte	0x6
	.uahalf	0x40d
	.uaword	0x71f
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.uaword	0x590
	.uaword	0x757
	.uleb128 0x1a
	.uaword	0x4ea
	.byte	0x39
	.byte	0
	.uleb128 0x1b
	.string	"Fee_BlockProperties_st"
	.byte	0x6
	.uahalf	0x464
	.uaword	0x747
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.byte	0x1
	.string	"Fee_SrvGetFifoMode"
	.byte	0x6
	.uahalf	0x53a
	.byte	0x1
	.uaword	0x3c7
	.byte	0x1
	.uaword	0x7a0
	.uleb128 0x1d
	.uaword	0x1f8
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.string	"Fee_SrvSetFifoMode"
	.byte	0x6
	.uahalf	0x539
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.uaword	0x3c7
	.uleb128 0x1d
	.uaword	0x1f8
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0x13
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
	.uleb128 0xc
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL2
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL4
	.uaword	.LFE26
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL2
	.uaword	.LVL5-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL5-1
	.uaword	.LFE26
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL2
	.uaword	.LVL5-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL5-1
	.uaword	.LFE26
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	.LVL2
	.uaword	.LVL5-1
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL5-1
	.uaword	.LFE26
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.uaword	.LVL2
	.uaword	.LVL5-1
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL5-1
	.uaword	.LFE26
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL0
	.uaword	.LVL10
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LFE26
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL3
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL7
	.uaword	.LFE26
	.uahalf	0x1
	.byte	0x5c
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL6
	.uaword	.LVL8
	.uahalf	0x9
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.uahalf	0x400
	.byte	0x1a
	.byte	0x3a
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0xb
	.byte	0x8f
	.sleb128 2
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.uahalf	0x400
	.byte	0x1a
	.byte	0x3a
	.byte	0x25
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
	.uaword	.LFB26
	.uaword	.LFE26-.LFB26
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB26
	.uaword	.LFE26
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"DataBufferPtr_pu8"
.LASF2:
	.string	"Length_u16"
.LASF1:
	.string	"Offset_u16"
	.extern	Fee_SrvSetFifoMode,STT_FUNC,0
	.extern	Fee_OrderFifo_st,STT_OBJECT,48
	.extern	Fee_JobResult,STT_OBJECT,3
	.extern	Fee_SrvGetFifoMode,STT_FUNC,0
	.extern	Fee_BlockProperties_st,STT_OBJECT,928
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
