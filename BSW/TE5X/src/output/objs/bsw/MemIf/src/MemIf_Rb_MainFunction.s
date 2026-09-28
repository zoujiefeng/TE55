	.file	"MemIf_Rb_MainFunction.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.MemIf_Rb_MainFunction,"ax",@progbits
	.align 1
	.global	MemIf_Rb_MainFunction
	.type	MemIf_Rb_MainFunction, @function
MemIf_Rb_MainFunction:
.LFB23:
	.file 1 "bsw\\MemIf\\src\\MemIf_Rb_MainFunction.c"
	.loc 1 158 0
.LVL0:
.LBB12:
.LBB13:
	.loc 1 96 0
	movh.a	%a15, hi:MemIf_Prv_flgUsedSema_b
	ld.bu	%d15, [%a15] lo:MemIf_Prv_flgUsedSema_b
	jnz	%d15, .L2
	.loc 1 98 0
	mov	%d2, 1
	st.b	[%a15] lo:MemIf_Prv_flgUsedSema_b, %d2
.LVL1:
.LBE13:
.LBE12:
	.loc 1 169 0
	call	Fee_MainFunction
.LVL2:
	.loc 1 170 0
	call	Fls_17_Dmu_MainFunction
.LVL3:
.LBB15:
.LBB16:
	.loc 1 139 0
	st.b	[%a15] lo:MemIf_Prv_flgUsedSema_b, %d15
	ret
.LVL4:
.L2:
.LBE16:
.LBE15:
.LBB17:
.LBB14:
	.loc 1 110 0
	mov	%d15, 1
	movh.a	%a15, hi:MemIf_Prv_dbgReentrantMainFunction_b
	.loc 1 114 0
	mov	%e4, 22
	mov	%d6, 255
	mov	%d7, 16
	.loc 1 110 0
	st.b	[%a15] lo:MemIf_Prv_dbgReentrantMainFunction_b, %d15
	.loc 1 114 0
	j	Det_ReportError
.LVL5:
.LBE14:
.LBE17:
.LFE23:
	.size	MemIf_Rb_MainFunction, .-MemIf_Rb_MainFunction
.section .bss.a1.MemIf_Prv_dbgReentrantMainFunction_b,"aw",@nobits
	.type	MemIf_Prv_dbgReentrantMainFunction_b, @object
	.size	MemIf_Prv_dbgReentrantMainFunction_b, 1
MemIf_Prv_dbgReentrantMainFunction_b:
	.zero	1
.section .bss.a1.MemIf_Prv_flgUsedSema_b,"aw",@nobits
	.type	MemIf_Prv_flgUsedSema_b, @object
	.size	MemIf_Prv_flgUsedSema_b, 1
MemIf_Prv_flgUsedSema_b:
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
	.uaword	.LFB23
	.uaword	.LFE23-.LFB23
	.align 2
.LEFDE0:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 4 ".\\output\\inc/..\\..\\bsw\\MemIf\\integration\\MemIf_Cfg_SchM.h"
	.file 5 ".\\output\\inc/..\\..\\bsw\\Fee\\api\\Fee.h"
	.file 6 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\inc\\Fls_17_Dmu.h"
	.file 7 ".\\output\\inc/..\\..\\bsw\\Det\\api\\Det.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x4ae
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\MemIf\\src\\MemIf_Rb_MainFunction.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x18
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
	.uaword	0x1d0
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
	.uaword	0x1fc
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
	.uleb128 0x3
	.string	"boolean"
	.byte	0x2
	.byte	0x80
	.uaword	0x1d0
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
	.uaword	0x1c3
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x4
	.string	"SchM_Enter_MemIf_Main"
	.byte	0x4
	.byte	0x2c
	.byte	0x1
	.byte	0x3
	.uleb128 0x4
	.string	"SchM_Exit_MemIf_Main"
	.byte	0x4
	.byte	0x31
	.byte	0x1
	.byte	0x3
	.uleb128 0x4
	.string	"MemIf_Prv_ReleaseLock"
	.byte	0x1
	.byte	0x88
	.byte	0x1
	.byte	0x3
	.uleb128 0x5
	.string	"MemIf_Prv_TryToGetLock"
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.uaword	0x267
	.byte	0x3
	.uaword	0x347
	.uleb128 0x6
	.string	"isLockAvailable_b"
	.byte	0x1
	.byte	0x58
	.uaword	0x267
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.string	"MemIf_Rb_MainFunction"
	.byte	0x1
	.byte	0x9d
	.byte	0x1
	.uaword	.LFB23
	.uaword	.LFE23
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x3ec
	.uleb128 0x8
	.string	"flgUsed_b"
	.byte	0x1
	.byte	0xa0
	.uaword	0x267
	.uaword	.LLST0
	.uleb128 0x9
	.uaword	0x309
	.uaword	.LBB12
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xa3
	.uaword	0x3ca
	.uleb128 0xa
	.uaword	.Ldebug_ranges0+0
	.uleb128 0xb
	.uaword	0x32d
	.uaword	.LLST1
	.uleb128 0xc
	.uaword	.LVL5
	.byte	0x1
	.uaword	0x448
	.uleb128 0xd
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x40
	.uleb128 0xd
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0xd
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0xd
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x46
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.uaword	0x2ee
	.uaword	.LBB15
	.uaword	.LBE15
	.byte	0x1
	.byte	0xb3
	.uleb128 0xf
	.uaword	.LVL2
	.uaword	0x47b
	.uleb128 0xf
	.uaword	.LVL3
	.uaword	0x492
	.byte	0
	.uleb128 0x10
	.string	"MemIf_Prv_flgUsedSema_b"
	.byte	0x1
	.byte	0x34
	.uaword	0x411
	.byte	0x5
	.byte	0x3
	.uaword	MemIf_Prv_flgUsedSema_b
	.uleb128 0x11
	.uaword	0x267
	.uleb128 0x10
	.string	"MemIf_Prv_dbgReentrantMainFunction_b"
	.byte	0x1
	.byte	0x37
	.uaword	0x411
	.byte	0x5
	.byte	0x3
	.uaword	MemIf_Prv_dbgReentrantMainFunction_b
	.uleb128 0x12
	.byte	0x1
	.string	"Det_ReportError"
	.byte	0x7
	.byte	0x70
	.byte	0x1
	.uaword	0x297
	.byte	0x1
	.uaword	0x47b
	.uleb128 0x13
	.uaword	0x1ee
	.uleb128 0x13
	.uaword	0x1c3
	.uleb128 0x13
	.uaword	0x1c3
	.uleb128 0x13
	.uaword	0x1c3
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.string	"Fee_MainFunction"
	.byte	0x5
	.byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.string	"Fls_17_Dmu_MainFunction"
	.byte	0x6
	.uahalf	0xc2d
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
	.uleb128 0x5
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x1d
	.byte	0
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
	.uleb128 0xf
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x35
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uaword	.LVL1
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LFE23
	.uahalf	0x2
	.byte	0x30
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
	.uaword	.LVL4
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LFE23
	.uahalf	0x2
	.byte	0x30
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
	.uaword	.LFB23
	.uaword	.LFE23-.LFB23
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB12
	.uaword	.LBE12
	.uaword	.LBB17
	.uaword	.LBE17
	.uaword	0
	.uaword	0
	.uaword	.LFB23
	.uaword	.LFE23
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.extern	Det_ReportError,STT_FUNC,0
	.extern	Fls_17_Dmu_MainFunction,STT_FUNC,0
	.extern	Fee_MainFunction,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
