	.file	"RES_DEF.c"
.section .text,"ax",@progbits
.Ltext0:
	.global	RES_u16VSICkreqPeriodDefC
.section .rodata.Calib_16.RES_u16VSICkreqPeriodDefC,"a",@progbits
	.align 1
	.type	RES_u16VSICkreqPeriodDefC, @object
	.size	RES_u16VSICkreqPeriodDefC, 2
RES_u16VSICkreqPeriodDefC:
	.short	1000
	.global	RES_u16SyncDelay2C
.section .rodata.Calib_16.RES_u16SyncDelay2C,"a",@progbits
	.align 1
	.type	RES_u16SyncDelay2C, @object
	.size	RES_u16SyncDelay2C, 2
RES_u16SyncDelay2C:
	.short	960
	.global	RES_u16SyncDelayC
.section .rodata.Calib_16.RES_u16SyncDelayC,"a",@progbits
	.align 1
	.type	RES_u16SyncDelayC, @object
	.size	RES_u16SyncDelayC, 2
RES_u16SyncDelayC:
	.short	450
	.global	RES_u16ExcitDelayC
.section .rodata.Calib_16.RES_u16ExcitDelayC,"a",@progbits
	.align 1
	.type	RES_u16ExcitDelayC, @object
	.size	RES_u16ExcitDelayC, 2
RES_u16ExcitDelayC:
	.short	150
	.global	RES_u8SyncDutyPercent2C
.section .rodata.Calib_8.RES_u8SyncDutyPercent2C,"a",@progbits
	.type	RES_u8SyncDutyPercent2C, @object
	.size	RES_u8SyncDutyPercent2C, 1
RES_u8SyncDutyPercent2C:
	.byte	5
	.global	RES_u8SyncDutyPercentC
.section .rodata.Calib_8.RES_u8SyncDutyPercentC,"a",@progbits
	.type	RES_u8SyncDutyPercentC, @object
	.size	RES_u8SyncDutyPercentC, 1
RES_u8SyncDutyPercentC:
	.byte	5
	.global	RES_u8ExcitDutyPercentC
.section .rodata.Calib_8.RES_u8ExcitDutyPercentC,"a",@progbits
	.type	RES_u8ExcitDutyPercentC, @object
	.size	RES_u8ExcitDutyPercentC, 1
RES_u8ExcitDutyPercentC:
	.byte	50
	.global	RES_bGenerateSyncPosC
.section .rodata.Calib_bool.RES_bGenerateSyncPosC,"a",@progbits
	.type	RES_bGenerateSyncPosC, @object
	.size	RES_bGenerateSyncPosC, 1
RES_bGenerateSyncPosC:
	.byte	1
.section .text,"ax",@progbits
.Letext0:
	.file 1 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 2 "bswcdd\\RES\\RES_DEF.c"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x3a5
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\RES\\RES_DEF.c"
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
	.uaword	0x1b3
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x4
	.string	"RES_bGenerateSyncPosC"
	.byte	0x2
	.byte	0x29
	.uaword	0x29e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	RES_bGenerateSyncPosC
	.uleb128 0x5
	.uaword	0x24a
	.uleb128 0x4
	.string	"RES_u8ExcitDutyPercentC"
	.byte	0x2
	.byte	0x2f
	.uaword	0x2c9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	RES_u8ExcitDutyPercentC
	.uleb128 0x5
	.uaword	0x1a6
	.uleb128 0x4
	.string	"RES_u8SyncDutyPercentC"
	.byte	0x2
	.byte	0x30
	.uaword	0x2c9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	RES_u8SyncDutyPercentC
	.uleb128 0x4
	.string	"RES_u8SyncDutyPercent2C"
	.byte	0x2
	.byte	0x31
	.uaword	0x2c9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	RES_u8SyncDutyPercent2C
	.uleb128 0x4
	.string	"RES_u16ExcitDelayC"
	.byte	0x2
	.byte	0x38
	.uaword	0x33a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	RES_u16ExcitDelayC
	.uleb128 0x5
	.uaword	0x1d1
	.uleb128 0x4
	.string	"RES_u16SyncDelayC"
	.byte	0x2
	.byte	0x39
	.uaword	0x33a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	RES_u16SyncDelayC
	.uleb128 0x4
	.string	"RES_u16SyncDelay2C"
	.byte	0x2
	.byte	0x3a
	.uaword	0x33a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	RES_u16SyncDelay2C
	.uleb128 0x4
	.string	"RES_u16VSICkreqPeriodDefC"
	.byte	0x2
	.byte	0x3b
	.uaword	0x33a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	RES_u16VSICkreqPeriodDefC
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
