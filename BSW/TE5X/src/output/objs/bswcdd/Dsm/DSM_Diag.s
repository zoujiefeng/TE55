	.file	"DSM_Diag.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.FaultDisableAllDTCs,"ax",@progbits
	.align 1
	.global	FaultDisableAllDTCs
	.type	FaultDisableAllDTCs, @function
FaultDisableAllDTCs:
.LFB0:
	.file 1 "bswcdd\\Dsm\\DSM_Diag.c"
	.loc 1 50 0
.LVL0:
	movh.a	%a4, hi:FaultFunctionTypeAuthorizedArray
	movh.a	%a5, hi:FaultFunctionTypeLockedArray
	lea	%a4, [%a4] lo:FaultFunctionTypeAuthorizedArray
	lea	%a5, [%a5] lo:FaultFunctionTypeLockedArray
	mov.d	%d15, %a4
	mov.d	%d2, %a5
	or	%d15, %d2
	and	%d15, %d15, 3
	jnz	%d15, .L5
	mov.aa	%a15, %a4
	mov.aa	%a3, %a5
	lea	%a2, 43
.LVL1:
.L3:
	.loc 1 57 0
	ld.w	%d2, [%a15]0
	ld.w	%d15, [%a3+]4
	and	%d15, %d2
	st.w	[%a15+]4, %d15
	loop	%a2, .L3
.LVL2:
	ld.h	%d15, [%a4] 176
	ld.h	%d2, [%a5] 176
	and	%d15, %d2
	st.h	[%a4] 176, %d15
.LVL3:
	ret
.LVL4:
.L5:
	.loc 1 50 0
	mov	%d15, 0
	lea	%a15, 88
.LVL5:
.L2:
	.loc 1 57 0
	mov.a	%a2, %d15
	add	%d15, 1
.LVL6:
	add.a	%a3, %a2, %a2
	add.a	%a2, %a4, %a3
.LVL7:
	add.a	%a3, %a5
	ld.h	%d2, [%a2]0
	ld.h	%d3, [%a3]0
	and	%d2, %d3
	st.h	[%a2]0, %d2
.LVL8:
	.loc 1 53 0
	loop	%a15, .L2
	ret
.LFE0:
	.size	FaultDisableAllDTCs, .-FaultDisableAllDTCs
.section .text.FaultEnableAllDTCs,"ax",@progbits
	.align 1
	.global	FaultEnableAllDTCs
	.type	FaultEnableAllDTCs, @function
FaultEnableAllDTCs:
.LFB1:
	.loc 1 71 0
.LVL9:
	movh.a	%a4, hi:FaultFunctionTypeAuthorizedArray
	movh.a	%a5, hi:FaultFunctionTypeLockedArray
	lea	%a4, [%a4] lo:FaultFunctionTypeAuthorizedArray
	lea	%a5, [%a5] lo:FaultFunctionTypeLockedArray
	mov.d	%d15, %a4
	mov.d	%d2, %a5
	or	%d15, %d2
	and	%d15, %d15, 3
	jnz	%d15, .L13
	mov.aa	%a15, %a4
	mov.aa	%a3, %a5
	lea	%a2, 43
.LVL10:
.L11:
	.loc 1 78 0
	ld.w	%d15, [%a3+]4
	ld.w	%d2, [%a15]0
	orn	%d15, %d2, %d15
	st.w	[%a15+]4, %d15
	loop	%a2, .L11
.LVL11:
	ld.h	%d15, [%a4] 176
	ld.h	%d2, [%a5] 176
	orn	%d15, %d15, %d2
	st.h	[%a4] 176, %d15
.LVL12:
	ret
.LVL13:
.L13:
	.loc 1 71 0
	mov	%d15, 0
	lea	%a15, 88
.LVL14:
.L10:
	.loc 1 78 0
	mov.a	%a2, %d15
	add	%d15, 1
.LVL15:
	add.a	%a3, %a2, %a2
	add.a	%a2, %a4, %a3
.LVL16:
	add.a	%a3, %a5
	ld.h	%d2, [%a2]0
	ld.h	%d3, [%a3]0
	orn	%d2, %d2, %d3
	st.h	[%a2]0, %d2
.LVL17:
	.loc 1 74 0
	loop	%a15, .L10
	ret
.LFE1:
	.size	FaultEnableAllDTCs, .-FaultEnableAllDTCs
.section .text,"ax",@progbits
	.align 1
	.global	DSM_bDtcSupported
	.type	DSM_bDtcSupported, @function
DSM_bDtcSupported:
.LFB2:
	.loc 1 93 0
.LVL18:
	movh.a	%a2, hi:FaultFunctionTypeDtcNbTable
	.loc 1 93 0
	mov	%d15, 0
	lea	%a2, [%a2] lo:FaultFunctionTypeDtcNbTable
.LVL19:
.L17:
	insert	%d2, %d15, 0, 16, 16
	extr.u	%d3, %d15, 0, 16
.LVL20:
	.loc 1 103 0
	addsc.a	%a15, %a2, %d2, 2
	add	%d3, 1
	.loc 1 105 0
	ld.w	%d2, [%a15]0
	.loc 1 101 0
	extr.u	%d3, %d3, 0, 16
	.loc 1 105 0
	eq	%d2, %d2, %d4
.LVL21:
	.loc 1 101 0
	lt.u	%d3, %d3, 290
	add	%d15, 1
.LVL22:
	jlt.u	%d2, %d3, .L17
	.loc 1 112 0
	ret
.LFE2:
	.size	DSM_bDtcSupported, .-DSM_bDtcSupported
	.align 1
	.global	DSM_bDtcLogged
	.type	DSM_bDtcLogged, @function
DSM_bDtcLogged:
.LFB3:
	.loc 1 125 0
.LVL23:
	movh	%d6, hi:DSM_DtcSavedFreezeFrameNvm
	.loc 1 125 0
	mov	%d15, 0
	addi	%d6, %d6, lo:DSM_DtcSavedFreezeFrameNvm
.LVL24:
.L20:
	and	%d2, %d15, 255
	.loc 1 136 0
	madd	%d3, %d6, %d2, 228
	and	%d7, %d15, 255
.LVL25:
	addi	%d5, %d7, 1
	mov.a	%a15, %d3
	and	%d5, %d5, 255
	ld.w	%d2, [%a15]0
	.loc 1 134 0
	lt.u	%d3, %d5, 10
	.loc 1 136 0
	eq	%d2, %d2, %d4
.LVL26:
	add	%d15, 1
	.loc 1 134 0
	jlt.u	%d2, %d3, .L20
	.loc 1 142 0
	jz	%d5, .L21
	.loc 1 144 0
	st.b	[%a4]0, %d7
.L21:
	.loc 1 147 0
	ret
.LFE3:
	.size	DSM_bDtcLogged, .-DSM_bDtcLogged
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
	.uaword	.LFB0
	.uaword	.LFE0-.LFB0
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB1
	.uaword	.LFE1-.LFB1
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB2
	.uaword	.LFE2-.LFB2
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB3
	.uaword	.LFE3-.LFB3
	.align 2
.LEFDE6:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\DSM_Typ.h"
	.file 4 "bswcdd\\Dsm\\DSM_Nvm.h"
	.file 5 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\fault\\FAULT_Data.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x583
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\Dsm\\DSM_Diag.c"
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
	.uaword	0x1c0
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
	.uaword	0x1ec
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
	.byte	0x2
	.byte	0x6a
	.uaword	0x228
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
	.uaword	0x1c0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x3
	.string	"FaultFunctionType"
	.byte	0x3
	.byte	0x25
	.uaword	0x1b3
	.uleb128 0x3
	.string	"FaultBitFieldType"
	.byte	0x3
	.byte	0x27
	.uaword	0x1de
	.uleb128 0x3
	.string	"FaultDtcNbType"
	.byte	0x3
	.byte	0x30
	.uaword	0x21a
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x4
	.byte	0xe4
	.byte	0x4
	.byte	0x44
	.uaword	0x319
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x4
	.byte	0x46
	.uaword	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"DtcFreezeFrame"
	.byte	0x4
	.byte	0x47
	.uaword	0x319
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x7
	.uaword	0x1b3
	.uaword	0x329
	.uleb128 0x8
	.uaword	0x2dd
	.byte	0xdf
	.byte	0
	.uleb128 0x3
	.string	"DSM_DtcSavedContextType"
	.byte	0x4
	.byte	0x48
	.uaword	0x2e9
	.uleb128 0x9
	.byte	0x1
	.string	"FaultDisableAllDTCs"
	.byte	0x1
	.byte	0x31
	.byte	0x1
	.uaword	.LFB0
	.uaword	.LFE0
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x381
	.uleb128 0xa
	.uaword	.LASF1
	.byte	0x1
	.byte	0x33
	.uaword	0x295
	.uaword	.LLST0
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.string	"FaultEnableAllDTCs"
	.byte	0x1
	.byte	0x46
	.byte	0x1
	.uaword	.LFB1
	.uaword	.LFE1
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x3b9
	.uleb128 0xa
	.uaword	.LASF1
	.byte	0x1
	.byte	0x48
	.uaword	0x295
	.uaword	.LLST1
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"DSM_bDtcSupported"
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.uaword	0x265
	.uaword	.LFB2
	.uaword	.LFE2
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x439
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x1
	.byte	0x5c
	.uaword	0x21a
	.byte	0x1
	.byte	0x54
	.uleb128 0xd
	.string	"u32LocalDtcNumber"
	.byte	0x1
	.byte	0x5e
	.uaword	0x21a
	.uleb128 0xe
	.string	"u16LocalFaultOffset"
	.byte	0x1
	.byte	0x5f
	.uaword	0x1de
	.uaword	.LLST2
	.uleb128 0xa
	.uaword	.LASF2
	.byte	0x1
	.byte	0x60
	.uaword	0x265
	.uaword	.LLST3
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"DSM_bDtcLogged"
	.byte	0x1
	.byte	0x7c
	.byte	0x1
	.uaword	0x265
	.uaword	.LFB3
	.uaword	.LFE3
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x4ac
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x1
	.byte	0x7c
	.uaword	0x21a
	.byte	0x1
	.byte	0x54
	.uleb128 0xf
	.string	"NvmFaultId"
	.byte	0x1
	.byte	0x7c
	.uaword	0x4ac
	.byte	0x1
	.byte	0x64
	.uleb128 0xe
	.string	"u8LocalFaultId"
	.byte	0x1
	.byte	0x7e
	.uaword	0x1b3
	.uaword	.LLST4
	.uleb128 0xa
	.uaword	.LASF2
	.byte	0x1
	.byte	0x7f
	.uaword	0x265
	.uaword	.LLST5
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.uaword	0x1b3
	.uleb128 0x7
	.uaword	0x2ae
	.uaword	0x4c2
	.uleb128 0x8
	.uaword	0x2dd
	.byte	0x58
	.byte	0
	.uleb128 0x11
	.string	"FaultFunctionTypeAuthorizedArray"
	.byte	0x5
	.byte	0x31
	.uaword	0x4b2
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.string	"FaultFunctionTypeLockedArray"
	.byte	0x5
	.byte	0x42
	.uaword	0x512
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.uaword	0x4b2
	.uleb128 0x7
	.uaword	0x2c7
	.uaword	0x528
	.uleb128 0x13
	.uaword	0x2dd
	.uahalf	0x121
	.byte	0
	.uleb128 0x11
	.string	"FaultFunctionTypeDtcNbTable"
	.byte	0x5
	.byte	0x4f
	.uaword	0x54d
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.uaword	0x517
	.uleb128 0x7
	.uaword	0x329
	.uaword	0x562
	.uleb128 0x8
	.uaword	0x2dd
	.byte	0x9
	.byte	0
	.uleb128 0x11
	.string	"DSM_DtcSavedFreezeFrameNvm"
	.byte	0x4
	.byte	0x54
	.uaword	0x552
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0xa
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
	.uleb128 0xc
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x3
	.byte	0x8
	.byte	0x58
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x3
	.byte	0x8
	.byte	0x59
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x3
	.byte	0x8
	.byte	0x58
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x3
	.byte	0x8
	.byte	0x59
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x3
	.byte	0x7f
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL22
	.uaword	.LFE2
	.uahalf	0x3
	.byte	0x7f
	.sleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LFE2
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL26
	.uaword	.LFE3
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL26
	.uaword	.LFE3
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
	.uaword	.Ltext0
	.uaword	.Letext0-.Ltext0
	.uaword	.LFB0
	.uaword	.LFE0-.LFB0
	.uaword	.LFB1
	.uaword	.LFE1-.LFB1
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.Ltext0
	.uaword	.Letext0
	.uaword	.LFB0
	.uaword	.LFE0
	.uaword	.LFB1
	.uaword	.LFE1
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF1:
	.string	"localFaultGroupIdx"
.LASF2:
	.string	"bLocalDtcFound"
.LASF0:
	.string	"DtcNumber"
	.extern	DSM_DtcSavedFreezeFrameNvm,STT_OBJECT,2280
	.extern	FaultFunctionTypeDtcNbTable,STT_OBJECT,1160
	.extern	FaultFunctionTypeLockedArray,STT_OBJECT,178
	.extern	FaultFunctionTypeAuthorizedArray,STT_OBJECT,178
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
