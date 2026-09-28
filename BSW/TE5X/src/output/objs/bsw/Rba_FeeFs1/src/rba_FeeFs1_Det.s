	.file	"rba_FeeFs1_Det.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Fee_CheckModuleSt,"ax",@progbits
	.align 1
	.global	Fee_CheckModuleSt
	.type	Fee_CheckModuleSt, @function
Fee_CheckModuleSt:
.LFB24:
	.file 1 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_Det.c"
	.loc 1 60 0
.LVL0:
	.loc 1 69 0
	movh.a	%a15, hi:Fee_GlobModuleState_st
	.loc 1 60 0
	mov	%d8, %d4
	.loc 1 69 0
	ld.bu	%d15, [%a15] lo:Fee_GlobModuleState_st
	.loc 1 61 0
	mov	%d2, 0
	.loc 1 66 0
	jeq	%d4, 1, .L8
.LVL1:
.L3:
	.loc 1 100 0
	jz	%d15, .L9
.LVL2:
.L5:
	.loc 1 117 0
	ret
.LVL3:
.L9:
	.loc 1 105 0
	mov	%e4, 21
	mov	%d6, %d8
	mov	%d7, 1
	call	Det_ReportError
.LVL4:
	.loc 1 111 0
	mov	%d2, 1
.LVL5:
	.loc 1 117 0
	ret
.LVL6:
.L8:
	.loc 1 69 0
	jeq	%d15, 2, .L10
.LVL7:
	.loc 1 84 0
	jne	%d15, 3, .L3
.LVL8:
.L11:
	.loc 1 89 0
	mov	%e4, 21
	mov	%d6, 1
	mov	%d7, 7
	call	Det_ReportError
.LVL9:
	ld.bu	%d15, [%a15] lo:Fee_GlobModuleState_st
	.loc 1 95 0
	mov	%d2, 1
.LVL10:
	.loc 1 100 0
	jnz	%d15, .L5
	j	.L9
.LVL11:
.L10:
	.loc 1 74 0
	mov	%e4, 21
.LVL12:
	mov	%d6, 1
	mov	%d7, 6
	call	Det_ReportError
.LVL13:
	ld.bu	%d15, [%a15] lo:Fee_GlobModuleState_st
	.loc 1 80 0
	mov	%d2, 1
.LVL14:
	.loc 1 84 0
	jne	%d15, 3, .L3
	j	.L11
.LFE24:
	.size	Fee_CheckModuleSt, .-Fee_CheckModuleSt
.section .text.Fee_CheckBlockCfg,"ax",@progbits
	.align 1
	.global	Fee_CheckBlockCfg
	.type	Fee_CheckBlockCfg, @function
Fee_CheckBlockCfg:
.LFB25:
	.loc 1 137 0
.LVL15:
	.loc 1 141 0
	lt.u	%d5, %d5, 58
.LVL16:
	.loc 1 138 0
	mov	%d2, 0
	.loc 1 141 0
	jz	%d5, .L15
.LVL17:
	.loc 1 157 0
	ret
.LVL18:
.L15:
	mov	%d6, %d4
	.loc 1 146 0
	mov	%d7, 2
	mov	%d4, 21
.LVL19:
	call	Det_ReportError
.LVL20:
	.loc 1 152 0
	mov	%d2, 1
.LVL21:
	.loc 1 157 0
	ret
.LFE25:
	.size	Fee_CheckBlockCfg, .-Fee_CheckBlockCfg
.section .text.Fee_CheckAdrPtr,"ax",@progbits
	.align 1
	.global	Fee_CheckAdrPtr
	.type	Fee_CheckAdrPtr, @function
Fee_CheckAdrPtr:
.LFB26:
	.loc 1 174 0
.LVL22:
	.loc 1 175 0
	mov	%d2, 0
	.loc 1 178 0
	jz.a	%a4, .L19
.LVL23:
	.loc 1 194 0
	ret
.LVL24:
.L19:
	mov	%d6, %d4
	.loc 1 183 0
	mov	%d7, 4
	mov	%e4, 21
.LVL25:
	call	Det_ReportError
.LVL26:
	.loc 1 189 0
	mov	%d2, 1
.LVL27:
	.loc 1 194 0
	ret
.LFE26:
	.size	Fee_CheckAdrPtr, .-Fee_CheckAdrPtr
.section .text.Fee_CheckBlkOfs,"ax",@progbits
	.align 1
	.global	Fee_CheckBlkOfs
	.type	Fee_CheckBlkOfs, @function
Fee_CheckBlkOfs:
.LFB27:
	.loc 1 212 0
.LVL28:
	.loc 1 216 0
	ge.u	%d15, %d5, 58
	.loc 1 219 0
	mov	%d2, 1
	.loc 1 216 0
	jnz	%d15, .L21
	.loc 1 224 0
	movh.a	%a15, hi:Fee_BlockProperties_st
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:Fee_BlockProperties_st
	madd	%d2, %d15, %d5, 16
	mov.a	%a15, %d2
	.loc 1 213 0
	mov	%d2, 0
	.loc 1 224 0
	ld.hu	%d15, [%a15] 4
	jge.u	%d6, %d15, .L24
.L21:
.LVL29:
	.loc 1 241 0
	ret
.LVL30:
.L24:
	mov	%d6, %d4
.LVL31:
	.loc 1 229 0
	mov	%d7, 3
	mov	%e4, 21
.LVL32:
	call	Det_ReportError
.LVL33:
	.loc 1 235 0
	mov	%d2, 1
.LVL34:
	.loc 1 241 0
	ret
.LFE27:
	.size	Fee_CheckBlkOfs, .-Fee_CheckBlkOfs
.section .text.Fee_CheckBlkLen,"ax",@progbits
	.align 1
	.global	Fee_CheckBlkLen
	.type	Fee_CheckBlkLen, @function
Fee_CheckBlkLen:
.LFB28:
	.loc 1 260 0
.LVL35:
	.loc 1 264 0
	ge.u	%d15, %d5, 58
	.loc 1 267 0
	mov	%d2, 1
	.loc 1 264 0
	jnz	%d15, .L26
	.loc 1 272 0
	movh.a	%a15, hi:Fee_BlockProperties_st
	mov.d	%d2, %a15
	add	%d6, %d7
.LVL36:
	addi	%d15, %d2, lo:Fee_BlockProperties_st
	madd	%d2, %d15, %d5, 16
	mov.a	%a15, %d2
	.loc 1 261 0
	mov	%d2, 0
	.loc 1 272 0
	ld.hu	%d15, [%a15] 4
	jlt	%d15, %d6, .L29
.L26:
.LVL37:
	.loc 1 289 0
	ret
.LVL38:
.L29:
	mov	%d6, %d4
	.loc 1 277 0
	mov	%d7, 5
.LVL39:
	mov	%e4, 21
.LVL40:
	call	Det_ReportError
.LVL41:
	.loc 1 283 0
	mov	%d2, 1
.LVL42:
	.loc 1 289 0
	ret
.LFE28:
	.size	Fee_CheckBlkLen, .-Fee_CheckBlkLen
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
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB26
	.uaword	.LFE26-.LFB26
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB27
	.uaword	.LFE27-.LFB27
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB28
	.uaword	.LFE28-.LFB28
	.align 2
.LEFDE8:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 4 ".\\output\\inc/..\\..\\bsw\\MemIf\\api\\MemIf_Types.h"
	.file 5 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_Prv.h"
	.file 6 ".\\output\\inc/..\\..\\bsw\\Det\\api\\Det.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x713
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_Det.c"
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
	.uaword	0x1ce
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
	.uaword	0x1fa
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
	.uaword	0x1c1
	.uleb128 0x4
	.byte	0x1
	.byte	0x4
	.byte	0x18
	.uaword	0x2e4
	.uleb128 0x5
	.string	"MEMIF_UNINIT"
	.sleb128 0
	.uleb128 0x5
	.string	"MEMIF_IDLE"
	.sleb128 1
	.uleb128 0x5
	.string	"MEMIF_BUSY"
	.sleb128 2
	.uleb128 0x5
	.string	"MEMIF_BUSY_INTERNAL"
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.string	"MemIf_StatusType"
	.byte	0x4
	.byte	0x1d
	.uaword	0x29c
	.uleb128 0x6
	.byte	0x4
	.uaword	0x302
	.uleb128 0x7
	.uaword	0x1c1
	.uleb128 0x6
	.byte	0x4
	.uaword	0x30d
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
	.uaword	0x3b7
	.uleb128 0xa
	.string	"BlockPersistentId_u16"
	.byte	0x5
	.uahalf	0x14e
	.uaword	0x1ec
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"Flags_u16"
	.byte	0x5
	.uahalf	0x14f
	.uaword	0x1ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.string	"Length_u16"
	.byte	0x5
	.uahalf	0x150
	.uaword	0x1ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.string	"JobEndNotification_pfn"
	.byte	0x5
	.uahalf	0x151
	.uaword	0x3b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.string	"JobErrorNotification_pfn"
	.byte	0x5
	.uahalf	0x152
	.uaword	0x3b7
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x7
	.uaword	0x307
	.uleb128 0xb
	.string	"Fee_BlockPropertiesType_tst"
	.byte	0x5
	.uahalf	0x153
	.uaword	0x31b
	.uleb128 0xc
	.byte	0x1
	.string	"Fee_CheckModuleSt"
	.byte	0x1
	.byte	0x3b
	.byte	0x1
	.uaword	0x286
	.uaword	.LFB24
	.uaword	.LFE24
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x48d
	.uleb128 0xd
	.uaword	.LASF0
	.byte	0x1
	.byte	0x3b
	.uaword	0x1c1
	.uaword	.LLST0
	.uleb128 0xe
	.uaword	.LASF2
	.byte	0x1
	.byte	0x3d
	.uaword	0x286
	.uaword	.LLST1
	.uleb128 0xf
	.uaword	.LVL4
	.uaword	0x6e7
	.uaword	0x44c
	.uleb128 0x10
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x31
	.uleb128 0x10
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x10
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x10
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x45
	.byte	0
	.uleb128 0xf
	.uaword	.LVL9
	.uaword	0x6e7
	.uaword	0x46e
	.uleb128 0x10
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x37
	.uleb128 0x10
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x31
	.uleb128 0x10
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x10
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x45
	.byte	0
	.uleb128 0x11
	.uaword	.LVL13
	.uaword	0x6e7
	.uleb128 0x10
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x36
	.uleb128 0x10
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x31
	.uleb128 0x10
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x10
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x45
	.byte	0
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.string	"Fee_CheckBlockCfg"
	.byte	0x1
	.byte	0x88
	.byte	0x1
	.uaword	0x286
	.uaword	.LFB25
	.uaword	.LFE25
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x4fa
	.uleb128 0xd
	.uaword	.LASF0
	.byte	0x1
	.byte	0x88
	.uaword	0x1c1
	.uaword	.LLST2
	.uleb128 0xd
	.uaword	.LASF1
	.byte	0x1
	.byte	0x88
	.uaword	0x1ec
	.uaword	.LLST3
	.uleb128 0xe
	.uaword	.LASF2
	.byte	0x1
	.byte	0x8a
	.uaword	0x286
	.uaword	.LLST4
	.uleb128 0x11
	.uaword	.LVL20
	.uaword	0x6e7
	.uleb128 0x10
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x32
	.uleb128 0x10
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x45
	.byte	0
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.string	"Fee_CheckAdrPtr"
	.byte	0x1
	.byte	0xad
	.byte	0x1
	.uaword	0x286
	.uaword	.LFB26
	.uaword	.LFE26
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x579
	.uleb128 0xd
	.uaword	.LASF0
	.byte	0x1
	.byte	0xad
	.uaword	0x1c1
	.uaword	.LLST5
	.uleb128 0x12
	.string	"DataBufferPtr_pcu8"
	.byte	0x1
	.byte	0xad
	.uaword	0x2fc
	.uaword	.LLST6
	.uleb128 0xe
	.uaword	.LASF2
	.byte	0x1
	.byte	0xaf
	.uaword	0x286
	.uaword	.LLST7
	.uleb128 0x11
	.uaword	.LVL26
	.uaword	0x6e7
	.uleb128 0x10
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x34
	.uleb128 0x10
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x10
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x45
	.byte	0
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.string	"Fee_CheckBlkOfs"
	.byte	0x1
	.byte	0xd3
	.byte	0x1
	.uaword	0x286
	.uaword	.LFB27
	.uaword	.LFE27
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x5f8
	.uleb128 0xd
	.uaword	.LASF0
	.byte	0x1
	.byte	0xd3
	.uaword	0x1c1
	.uaword	.LLST8
	.uleb128 0xd
	.uaword	.LASF1
	.byte	0x1
	.byte	0xd3
	.uaword	0x1ec
	.uaword	.LLST9
	.uleb128 0xd
	.uaword	.LASF3
	.byte	0x1
	.byte	0xd3
	.uaword	0x1ec
	.uaword	.LLST10
	.uleb128 0xe
	.uaword	.LASF2
	.byte	0x1
	.byte	0xd5
	.uaword	0x286
	.uaword	.LLST11
	.uleb128 0x11
	.uaword	.LVL33
	.uaword	0x6e7
	.uleb128 0x10
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x33
	.uleb128 0x10
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x10
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x45
	.byte	0
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"Fee_CheckBlkLen"
	.byte	0x1
	.uahalf	0x103
	.byte	0x1
	.uaword	0x286
	.uaword	.LFB28
	.uaword	.LFE28
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x695
	.uleb128 0x14
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x103
	.uaword	0x1c1
	.uaword	.LLST12
	.uleb128 0x14
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x103
	.uaword	0x1ec
	.uaword	.LLST13
	.uleb128 0x14
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x103
	.uaword	0x1ec
	.uaword	.LLST14
	.uleb128 0x15
	.string	"BlockLen_u16"
	.byte	0x1
	.uahalf	0x103
	.uaword	0x1ec
	.uaword	.LLST15
	.uleb128 0x16
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x105
	.uaword	0x286
	.uaword	.LLST16
	.uleb128 0x11
	.uaword	.LVL41
	.uaword	0x6e7
	.uleb128 0x10
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x35
	.uleb128 0x10
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x10
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x45
	.byte	0
	.byte	0
	.uleb128 0x17
	.string	"Fee_GlobModuleState_st"
	.byte	0x5
	.uahalf	0x42f
	.uaword	0x2e4
	.byte	0x1
	.byte	0x1
	.uleb128 0x18
	.uaword	0x3bc
	.uaword	0x6c6
	.uleb128 0x19
	.uaword	0x30f
	.byte	0x39
	.byte	0
	.uleb128 0x17
	.string	"Fee_BlockProperties_st"
	.byte	0x5
	.uahalf	0x464
	.uaword	0x6b6
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.byte	0x1
	.string	"Det_ReportError"
	.byte	0x6
	.byte	0x70
	.byte	0x1
	.uaword	0x286
	.byte	0x1
	.uleb128 0x1b
	.uaword	0x1ec
	.uleb128 0x1b
	.uaword	0x1c1
	.uleb128 0x1b
	.uaword	0x1c1
	.uleb128 0x1b
	.uaword	0x1c1
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
	.uleb128 0x14
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
	.uleb128 0x6
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x34
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL1
	.uaword	.LVL6
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL8
	.uaword	.LVL11
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL12
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
	.uaword	.LVL1
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL1
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL11
	.uaword	.LVL13
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL14
	.uaword	.LFE24
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL15
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL19
	.uaword	.LFE25
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL16
	.uaword	.LFE25
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL15
	.uaword	.LVL17
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL18
	.uaword	.LVL20
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LFE25
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL22
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL25
	.uaword	.LFE26
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL22
	.uaword	.LVL26-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL26-1
	.uaword	.LFE26
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL24
	.uaword	.LVL26
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL26
	.uaword	.LVL27
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL27
	.uaword	.LFE26
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL28
	.uaword	.LVL32
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL32
	.uaword	.LFE27
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL28
	.uaword	.LVL32
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL32
	.uaword	.LFE27
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL28
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL31
	.uaword	.LFE27
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL28
	.uaword	.LVL29
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL29
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL30
	.uaword	.LVL33
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL33
	.uaword	.LVL34
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL34
	.uaword	.LFE27
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL35
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL40
	.uaword	.LFE28
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL35
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL40
	.uaword	.LFE28
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL35
	.uaword	.LVL36
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL36
	.uaword	.LFE28
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL35
	.uaword	.LVL39
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL39
	.uaword	.LFE28
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL35
	.uaword	.LVL37
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL37
	.uaword	.LVL38
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL38
	.uaword	.LVL41
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL41
	.uaword	.LVL42
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL42
	.uaword	.LFE28
	.uahalf	0x1
	.byte	0x52
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
	.uaword	.LFB24
	.uaword	.LFE24-.LFB24
	.uaword	.LFB25
	.uaword	.LFE25-.LFB25
	.uaword	.LFB26
	.uaword	.LFE26-.LFB26
	.uaword	.LFB27
	.uaword	.LFE27-.LFB27
	.uaword	.LFB28
	.uaword	.LFE28-.LFB28
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB24
	.uaword	.LFE24
	.uaword	.LFB25
	.uaword	.LFE25
	.uaword	.LFB26
	.uaword	.LFE26
	.uaword	.LFB27
	.uaword	.LFE27
	.uaword	.LFB28
	.uaword	.LFE28
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF1:
	.string	"BlockNum_u16"
.LASF2:
	.string	"xRetVal"
.LASF3:
	.string	"BlockOfs_u16"
.LASF0:
	.string	"ApiId_u8"
	.extern	Fee_BlockProperties_st,STT_OBJECT,928
	.extern	Det_ReportError,STT_FUNC,0
	.extern	Fee_GlobModuleState_st,STT_OBJECT,1
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
