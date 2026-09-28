	.file	"DSM_DEF.c"
.section .text,"ax",@progbits
.Ltext0:
	.global	FaultEraseRequest
.section .bss.a2.FaultEraseRequest,"aw",@nobits
	.align 1
	.type	FaultEraseRequest, @object
	.size	FaultEraseRequest, 2
FaultEraseRequest:
	.zero	2
	.global	DSM_FaultFailureLevel
.section .bss.a1.DSM_FaultFailureLevel,"aw",@nobits
	.type	DSM_FaultFailureLevel, @object
	.size	DSM_FaultFailureLevel, 6
DSM_FaultFailureLevel:
	.zero	6
	.global	FaultFailureLevel
.section .bss.a1.FaultFailureLevel,"aw",@nobits
	.type	FaultFailureLevel, @object
	.size	FaultFailureLevel, 1
FaultFailureLevel:
	.zero	1
	.global	DSM_DtcNumber
.section .bss.a4.DSM_DtcNumber,"aw",@nobits
	.align 2
	.type	DSM_DtcNumber, @object
	.size	DSM_DtcNumber, 40
DSM_DtcNumber:
	.zero	40
	.global	FaultEraseRequestC
.section .rodata.Calib_16.FaultEraseRequestC,"a",@progbits
	.align 1
	.type	FaultEraseRequestC, @object
	.size	FaultEraseRequestC, 2
FaultEraseRequestC:
	.zero	2
.section .text,"ax",@progbits
.Letext0:
	.file 1 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 2 "bswcdd\\Dsm\\DSM_DEF.c"
	.file 3 "bswcdd\\Dsm\\DSM.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x3c6
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\Dsm\\DSM_DEF.c"
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
	.uaword	0x1b3
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
	.uaword	0x1df
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
	.uaword	0x21b
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
	.string	"DSM_CONTROL_UNIT_INDEX"
	.byte	0x1
	.byte	0x3
	.byte	0x2b
	.uaword	0x2ed
	.uleb128 0x5
	.string	"DSM_UNIT_0"
	.sleb128 0
	.uleb128 0x5
	.string	"DSM_UNIT_1"
	.sleb128 1
	.uleb128 0x5
	.string	"DSM_UNIT_2"
	.sleb128 2
	.uleb128 0x5
	.string	"DSM_UNIT_3"
	.sleb128 3
	.uleb128 0x5
	.string	"DSM_UNIT_4"
	.sleb128 4
	.uleb128 0x5
	.string	"DSM_UNIT_MAX_NUM"
	.sleb128 5
	.byte	0
	.uleb128 0x6
	.string	"FaultEraseRequestC"
	.byte	0x2
	.byte	0x29
	.uaword	0x30e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	FaultEraseRequestC
	.uleb128 0x7
	.uaword	0x1d1
	.uleb128 0x8
	.uaword	0x20d
	.uaword	0x323
	.uleb128 0x9
	.uaword	0x323
	.byte	0x9
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x6
	.string	"DSM_DtcNumber"
	.byte	0x2
	.byte	0x33
	.uaword	0x313
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	DSM_DtcNumber
	.uleb128 0x6
	.string	"FaultFailureLevel"
	.byte	0x2
	.byte	0x34
	.uaword	0x36b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	FaultFailureLevel
	.uleb128 0xa
	.uaword	0x1a6
	.uleb128 0x8
	.uaword	0x1a6
	.uaword	0x380
	.uleb128 0x9
	.uaword	0x323
	.byte	0x5
	.byte	0
	.uleb128 0x6
	.string	"DSM_FaultFailureLevel"
	.byte	0x2
	.byte	0x35
	.uaword	0x3a4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	DSM_FaultFailureLevel
	.uleb128 0xa
	.uaword	0x370
	.uleb128 0x6
	.string	"FaultEraseRequest"
	.byte	0x2
	.byte	0x36
	.uaword	0x1d1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	FaultEraseRequest
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
	.uleb128 0x4
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
	.uleb128 0x7
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x35
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
