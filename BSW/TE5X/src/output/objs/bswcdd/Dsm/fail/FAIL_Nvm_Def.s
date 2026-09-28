	.file	"FAIL_Nvm_Def.c"
.section .text,"ax",@progbits
.Ltext0:
	.global	FAIL_u16TimestampIgnNvm
.section .bss.a2.FAIL_u16TimestampIgnNvm,"aw",@nobits
	.align 1
	.type	FAIL_u16TimestampIgnNvm, @object
	.size	FAIL_u16TimestampIgnNvm, 2
FAIL_u16TimestampIgnNvm:
	.zero	2
	.global	FAIL_u32TimestampLifeNvm
.section .bss.a4.FAIL_u32TimestampLifeNvm,"aw",@nobits
	.align 2
	.type	FAIL_u32TimestampLifeNvm, @object
	.size	FAIL_u32TimestampLifeNvm, 4
FAIL_u32TimestampLifeNvm:
	.zero	4
	.global	FAIL_au8DummySpace01
.section .bss.a1.FAIL_au8DummySpace01,"aw",@nobits
	.type	FAIL_au8DummySpace01, @object
	.size	FAIL_au8DummySpace01, 8
FAIL_au8DummySpace01:
	.zero	8
	.global	FAIL_bRstHotFlagNvm
.section .bss.a1.FAIL_bRstHotFlagNvm,"aw",@nobits
	.type	FAIL_bRstHotFlagNvm, @object
	.size	FAIL_bRstHotFlagNvm, 1
FAIL_bRstHotFlagNvm:
	.zero	1
	.global	FAIL_u16RstHotCntNvm
.section .bss.a2.FAIL_u16RstHotCntNvm,"aw",@nobits
	.align 1
	.type	FAIL_u16RstHotCntNvm, @object
	.size	FAIL_u16RstHotCntNvm, 2
FAIL_u16RstHotCntNvm:
	.zero	2
	.global	FAIL_u16RstStartUpCntNvm
.section .bss.a2.FAIL_u16RstStartUpCntNvm,"aw",@nobits
	.align 1
	.type	FAIL_u16RstStartUpCntNvm, @object
	.size	FAIL_u16RstStartUpCntNvm, 2
FAIL_u16RstStartUpCntNvm:
	.zero	2
	.global	FAIL_au8DummySpace02
.section .bss.a1.FAIL_au8DummySpace02,"aw",@nobits
	.type	FAIL_au8DummySpace02, @object
	.size	FAIL_au8DummySpace02, 8
FAIL_au8DummySpace02:
	.zero	8
.section .text,"ax",@progbits
.Letext0:
	.file 1 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 2 "bswcdd\\Dsm\\fail\\FAIL_Nvm_Def.c"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x3aa
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\Dsm\\fail\\FAIL_Nvm_Def.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x1
	.byte	0x51
	.uaword	0x1bd
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
	.byte	0x1
	.byte	0x5b
	.uaword	0x1e9
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
	.byte	0x1
	.byte	0x6a
	.uaword	0x225
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
	.byte	0x1
	.byte	0x80
	.uaword	0x1bd
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x4
	.string	"FAIL_u16RstStartUpCntNvm"
	.byte	0x2
	.byte	0x2d
	.uaword	0x1db
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	FAIL_u16RstStartUpCntNvm
	.uleb128 0x4
	.string	"FAIL_u16RstHotCntNvm"
	.byte	0x2
	.byte	0x2e
	.uaword	0x1db
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	FAIL_u16RstHotCntNvm
	.uleb128 0x4
	.string	"FAIL_bRstHotFlagNvm"
	.byte	0x2
	.byte	0x2f
	.uaword	0x262
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	FAIL_bRstHotFlagNvm
	.uleb128 0x4
	.string	"FAIL_u32TimestampLifeNvm"
	.byte	0x2
	.byte	0x36
	.uaword	0x217
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	FAIL_u32TimestampLifeNvm
	.uleb128 0x4
	.string	"FAIL_u16TimestampIgnNvm"
	.byte	0x2
	.byte	0x37
	.uaword	0x1db
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	FAIL_u16TimestampIgnNvm
	.uleb128 0x5
	.uaword	0x1b0
	.uaword	0x35b
	.uleb128 0x6
	.uaword	0x35b
	.byte	0x7
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x4
	.string	"FAIL_au8DummySpace02"
	.byte	0x2
	.byte	0x2c
	.uaword	0x34b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	FAIL_au8DummySpace02
	.uleb128 0x4
	.string	"FAIL_au8DummySpace01"
	.byte	0x2
	.byte	0x35
	.uaword	0x34b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	FAIL_au8DummySpace01
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
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
.section .debug_aranges,"",@progbits
	.uaword	0x14
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
