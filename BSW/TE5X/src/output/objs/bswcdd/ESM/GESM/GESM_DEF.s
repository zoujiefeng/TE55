	.file	"GESM_DEF.c"
.section .text,"ax",@progbits
.Ltext0:
	.global	GESM_u16PowerLatchTempo
.section .bss.a2.GESM_u16PowerLatchTempo,"aw",@nobits
	.align 1
	.type	GESM_u16PowerLatchTempo, @object
	.size	GESM_u16PowerLatchTempo, 2
GESM_u16PowerLatchTempo:
	.zero	2
	.global	GESM_EcuState
.section .bss.a1.GESM_EcuState,"aw",@nobits
	.type	GESM_EcuState, @object
	.size	GESM_EcuState, 1
GESM_EcuState:
	.zero	1
	.global	GESM_u8RestartDelayCntC
.section .rodata.a1.GESM_u8RestartDelayCntC,"a",@progbits
	.type	GESM_u8RestartDelayCntC, @object
	.size	GESM_u8RestartDelayCntC, 1
GESM_u8RestartDelayCntC:
	.byte	50
	.global	GESM_u16PowerLatchTempoC
.section .rodata.a2.GESM_u16PowerLatchTempoC,"a",@progbits
	.align 1
	.type	GESM_u16PowerLatchTempoC, @object
	.size	GESM_u16PowerLatchTempoC, 2
GESM_u16PowerLatchTempoC:
	.short	2000
.section .text,"ax",@progbits
.Letext0:
	.file 1 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 2 "bswcdd\\ESM\\GESM\\GESM_DEF.c"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x307
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\ESM\\GESM\\GESM_DEF.c"
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
	.uaword	0x1b9
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
	.uaword	0x1e5
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
	.uleb128 0x4
	.string	"GESM_EcuState"
	.byte	0x2
	.byte	0x34
	.uaword	0x1ac
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	GESM_EcuState
	.uleb128 0x4
	.string	"GESM_u16PowerLatchTempoC"
	.byte	0x2
	.byte	0x29
	.uaword	0x2b4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	GESM_u16PowerLatchTempoC
	.uleb128 0x5
	.uaword	0x1d7
	.uleb128 0x4
	.string	"GESM_u8RestartDelayCntC"
	.byte	0x2
	.byte	0x2a
	.uaword	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	GESM_u8RestartDelayCntC
	.uleb128 0x5
	.uaword	0x1ac
	.uleb128 0x4
	.string	"GESM_u16PowerLatchTempo"
	.byte	0x2
	.byte	0x35
	.uaword	0x1d7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	GESM_u16PowerLatchTempo
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
