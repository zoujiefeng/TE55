	.file	"rba_FeeFs1_Read.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Fee_Read,"ax",@progbits
	.align 1
	.global	Fee_Read
	.type	Fee_Read, @function
Fee_Read:
.LFB24:
	.file 1 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_Read.c"
	.loc 1 52 0
.LVL0:
	.loc 1 52 0
	mov	%d15, %d4
	.loc 1 57 0
	mov	%d4, 2
.LVL1:
	.loc 1 52 0
	mov	%d8, %d5
	mov	%d9, %d6
	mov.aa	%a15, %a4
	.loc 1 57 0
	call	Fee_CheckModuleSt
.LVL2:
	.loc 1 58 0
	mov.aa	%a4, %a15
	mov	%d4, 2
	.loc 1 57 0
	mov	%d12, %d2
.LVL3:
	.loc 1 58 0
	call	Fee_CheckAdrPtr
.LVL4:
	.loc 1 59 0
	mov	%d4, 2
	mov	%d5, %d15
	.loc 1 58 0
	mov	%d13, %d2
.LVL5:
	.loc 1 59 0
	call	Fee_CheckBlockCfg
.LVL6:
	.loc 1 60 0
	mov	%d4, 2
	mov	%d5, %d15
	mov	%d6, %d8
	.loc 1 59 0
	mov	%d11, %d2
.LVL7:
	.loc 1 60 0
	call	Fee_CheckBlkOfs
.LVL8:
	.loc 1 61 0
	mov	%d4, 2
	mov	%d5, %d15
	mov	%e6, %d9, %d8
	.loc 1 60 0
	mov	%d10, %d2
.LVL9:
	.loc 1 61 0
	call	Fee_CheckBlkLen
.LVL10:
	.loc 1 66 0
	or	%d12, %d13
.LVL11:
	or	%d11, %d12
.LVL12:
	or	%d10, %d11
.LVL13:
	or	%d2, %d10
.LVL14:
	.loc 1 63 0
	and	%d10, %d2, 255
	jz	%d10, .L4
	.loc 1 85 0
	mov	%d2, 1
	ret
.L4:
	.loc 1 82 0
	mov	%e4, %d8, %d15
	mov.aa	%a4, %a15
	mov	%d6, %d9
	mov	%d7, 1
	j	Fee_HLPlaceOrder
.LVL15:
.LFE24:
	.size	Fee_Read, .-Fee_Read
.section .text.Fee_Rb_VarLenRead,"ax",@progbits
	.align 1
	.global	Fee_Rb_VarLenRead
	.type	Fee_Rb_VarLenRead, @function
Fee_Rb_VarLenRead:
.LFB25:
	.loc 1 109 0
.LVL16:
	.loc 1 118 0
	mov	%d2, 1
	ret
.LFE25:
	.size	Fee_Rb_VarLenRead, .-Fee_Rb_VarLenRead
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
	.uaword	.LFB24
	.uaword	.LFE24-.LFB24
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB25
	.uaword	.LFE25-.LFB25
	.align 2
.LEFDE2:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 4 ".\\output\\inc/..\\..\\bsw\\Fee\\api\\Fee_Rb_Types.h"
	.file 5 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_Prv.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x763
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_Read.c"
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
	.uaword	0x1cf
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
	.uaword	0x1fb
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
	.uaword	0x1c2
	.uleb128 0x4
	.byte	0x1
	.byte	0x4
	.byte	0x52
	.uaword	0x31c
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
	.byte	0x4
	.byte	0x59
	.uaword	0x29d
	.uleb128 0x6
	.byte	0x4
	.uaword	0x1c2
	.uleb128 0x6
	.byte	0x4
	.uaword	0x33e
	.uleb128 0x7
	.uaword	0x1c2
	.uleb128 0x6
	.byte	0x4
	.uaword	0x349
	.uleb128 0x8
	.byte	0x1
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x9
	.byte	0x10
	.byte	0x5
	.uahalf	0x14c
	.uaword	0x3f3
	.uleb128 0xa
	.string	"BlockPersistentId_u16"
	.byte	0x5
	.uahalf	0x14e
	.uaword	0x1ed
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"Flags_u16"
	.byte	0x5
	.uahalf	0x14f
	.uaword	0x1ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.string	"Length_u16"
	.byte	0x5
	.uahalf	0x150
	.uaword	0x1ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.string	"JobEndNotification_pfn"
	.byte	0x5
	.uahalf	0x151
	.uaword	0x3f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.string	"JobErrorNotification_pfn"
	.byte	0x5
	.uahalf	0x152
	.uaword	0x3f3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x7
	.uaword	0x343
	.uleb128 0xb
	.string	"Fee_BlockPropertiesType_tst"
	.byte	0x5
	.uahalf	0x153
	.uaword	0x357
	.uleb128 0xc
	.byte	0x1
	.string	"Fee_Read"
	.byte	0x1
	.byte	0x33
	.byte	0x1
	.uaword	0x287
	.uaword	.LFB24
	.uaword	.LFE24
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x5bc
	.uleb128 0xd
	.uaword	.LASF0
	.byte	0x1
	.byte	0x33
	.uaword	0x1ed
	.uaword	.LLST0
	.uleb128 0xd
	.uaword	.LASF1
	.byte	0x1
	.byte	0x33
	.uaword	0x1ed
	.uaword	.LLST1
	.uleb128 0xd
	.uaword	.LASF2
	.byte	0x1
	.byte	0x33
	.uaword	0x332
	.uaword	.LLST2
	.uleb128 0xe
	.string	"Length"
	.byte	0x1
	.byte	0x33
	.uaword	0x1ed
	.uaword	.LLST3
	.uleb128 0xf
	.string	"xRetVal"
	.byte	0x1
	.byte	0x35
	.uaword	0x287
	.byte	0x1
	.uleb128 0x10
	.string	"retModuleState_u8"
	.byte	0x1
	.byte	0x36
	.uaword	0x287
	.uaword	.LLST4
	.uleb128 0x10
	.string	"retAdrPtr_u8"
	.byte	0x1
	.byte	0x36
	.uaword	0x287
	.uaword	.LLST5
	.uleb128 0x10
	.string	"retBlkCfg_u8"
	.byte	0x1
	.byte	0x36
	.uaword	0x287
	.uaword	.LLST6
	.uleb128 0x10
	.string	"retBlkOfs_u8"
	.byte	0x1
	.byte	0x36
	.uaword	0x287
	.uaword	.LLST7
	.uleb128 0x10
	.string	"retBlkLen_u8"
	.byte	0x1
	.byte	0x36
	.uaword	0x287
	.uaword	.LLST8
	.uleb128 0x11
	.uaword	.LVL2
	.uaword	0x650
	.uaword	0x51d
	.uleb128 0x12
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x11
	.uaword	.LVL4
	.uaword	0x677
	.uaword	0x536
	.uleb128 0x12
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x12
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x11
	.uaword	.LVL6
	.uaword	0x6a1
	.uaword	0x54f
	.uleb128 0x12
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x12
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x11
	.uaword	.LVL8
	.uaword	0x6cd
	.uaword	0x56e
	.uleb128 0x12
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x12
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x12
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x11
	.uaword	.LVL10
	.uaword	0x6fc
	.uaword	0x593
	.uleb128 0x12
	.byte	0x1
	.byte	0x57
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x12
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x12
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x12
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x13
	.uaword	.LVL15
	.byte	0x1
	.uaword	0x730
	.uleb128 0x12
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x31
	.uleb128 0x12
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x12
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x12
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x12
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.string	"Fee_Rb_VarLenRead"
	.byte	0x1
	.byte	0x6c
	.byte	0x1
	.uaword	0x287
	.uaword	.LFB25
	.uaword	.LFE25
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x61f
	.uleb128 0x14
	.uaword	.LASF0
	.byte	0x1
	.byte	0x6c
	.uaword	0x1ed
	.byte	0x1
	.byte	0x54
	.uleb128 0x14
	.uaword	.LASF1
	.byte	0x1
	.byte	0x6c
	.uaword	0x1ed
	.byte	0x1
	.byte	0x55
	.uleb128 0x14
	.uaword	.LASF2
	.byte	0x1
	.byte	0x6c
	.uaword	0x332
	.byte	0x1
	.byte	0x64
	.uleb128 0x15
	.string	"Length"
	.byte	0x1
	.byte	0x6c
	.uaword	0x1ed
	.byte	0x1
	.byte	0x56
	.byte	0
	.uleb128 0x16
	.uaword	0x3f8
	.uaword	0x62f
	.uleb128 0x17
	.uaword	0x34b
	.byte	0x39
	.byte	0
	.uleb128 0x18
	.string	"Fee_BlockProperties_st"
	.byte	0x5
	.uahalf	0x464
	.uaword	0x61f
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.byte	0x1
	.string	"Fee_CheckModuleSt"
	.byte	0x5
	.uahalf	0x541
	.byte	0x1
	.uaword	0x287
	.byte	0x1
	.uaword	0x677
	.uleb128 0x1a
	.uaword	0x1c2
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.string	"Fee_CheckAdrPtr"
	.byte	0x5
	.uahalf	0x542
	.byte	0x1
	.uaword	0x287
	.byte	0x1
	.uaword	0x6a1
	.uleb128 0x1a
	.uaword	0x1c2
	.uleb128 0x1a
	.uaword	0x338
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.string	"Fee_CheckBlockCfg"
	.byte	0x5
	.uahalf	0x540
	.byte	0x1
	.uaword	0x287
	.byte	0x1
	.uaword	0x6cd
	.uleb128 0x1a
	.uaword	0x1c2
	.uleb128 0x1a
	.uaword	0x1ed
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.string	"Fee_CheckBlkOfs"
	.byte	0x5
	.uahalf	0x543
	.byte	0x1
	.uaword	0x287
	.byte	0x1
	.uaword	0x6fc
	.uleb128 0x1a
	.uaword	0x1c2
	.uleb128 0x1a
	.uaword	0x1ed
	.uleb128 0x1a
	.uaword	0x1ed
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.string	"Fee_CheckBlkLen"
	.byte	0x5
	.uahalf	0x544
	.byte	0x1
	.uaword	0x287
	.byte	0x1
	.uaword	0x730
	.uleb128 0x1a
	.uaword	0x1c2
	.uleb128 0x1a
	.uaword	0x1ed
	.uleb128 0x1a
	.uaword	0x1ed
	.uleb128 0x1a
	.uaword	0x1ed
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.string	"Fee_HLPlaceOrder"
	.byte	0x5
	.uahalf	0x518
	.byte	0x1
	.uaword	0x287
	.byte	0x1
	.uleb128 0x1a
	.uaword	0x1ed
	.uleb128 0x1a
	.uaword	0x1ed
	.uleb128 0x1a
	.uaword	0x332
	.uleb128 0x1a
	.uaword	0x1ed
	.uleb128 0x1a
	.uaword	0x31c
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
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
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
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
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL1
	.uaword	.LFE24
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL2-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL2-1
	.uaword	.LFE24
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL0
	.uaword	.LVL2-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL2-1
	.uaword	.LFE24
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL0
	.uaword	.LVL2-1
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL2-1
	.uaword	.LFE24
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL3
	.uaword	.LVL4-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL4-1
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x5c
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL5
	.uaword	.LVL6-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL6-1
	.uaword	.LFE24
	.uahalf	0x1
	.byte	0x5d
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL7
	.uaword	.LVL8-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL8-1
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x5b
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL9
	.uaword	.LVL10-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL10-1
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL10
	.uaword	.LVL14
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
	.uaword	.LFB24
	.uaword	.LFE24-.LFB24
	.uaword	.LFB25
	.uaword	.LFE25-.LFB25
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB24
	.uaword	.LFE24
	.uaword	.LFB25
	.uaword	.LFE25
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"Blocknumber"
.LASF2:
	.string	"DataBufferPtr"
.LASF1:
	.string	"BlockOffset"
	.extern	Fee_HLPlaceOrder,STT_FUNC,0
	.extern	Fee_CheckBlkLen,STT_FUNC,0
	.extern	Fee_CheckBlkOfs,STT_FUNC,0
	.extern	Fee_CheckBlockCfg,STT_FUNC,0
	.extern	Fee_CheckAdrPtr,STT_FUNC,0
	.extern	Fee_CheckModuleSt,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
