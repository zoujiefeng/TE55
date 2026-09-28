	.file	"CALUSR_DEF.c"
.section .text,"ax",@progbits
.Ltext0:
	.global	CalUsr_u32PODataCRC
.section .bss.a4.CalUsr_u32PODataCRC,"aw",@nobits
	.align 2
	.type	CalUsr_u32PODataCRC, @object
	.size	CalUsr_u32PODataCRC, 4
CalUsr_u32PODataCRC:
	.zero	4
	.global	CalUsr_u32POCalibDnEnaMskB
.section .bss.a4.CalUsr_u32POCalibDnEnaMskB,"aw",@nobits
	.align 2
	.type	CalUsr_u32POCalibDnEnaMskB, @object
	.size	CalUsr_u32POCalibDnEnaMskB, 4
CalUsr_u32POCalibDnEnaMskB:
	.zero	4
	.global	CalUsr_u32POCalibDnEnaMskA
.section .bss.a4.CalUsr_u32POCalibDnEnaMskA,"aw",@nobits
	.align 2
	.type	CalUsr_u32POCalibDnEnaMskA, @object
	.size	CalUsr_u32POCalibDnEnaMskA, 4
CalUsr_u32POCalibDnEnaMskA:
	.zero	4
	.global	CalUsr_u32ChkDataCrc
.section .bss.a4.CalUsr_u32ChkDataCrc,"aw",@nobits
	.align 2
	.type	CalUsr_u32ChkDataCrc, @object
	.size	CalUsr_u32ChkDataCrc, 4
CalUsr_u32ChkDataCrc:
	.zero	4
	.global	CalUsr_bIsCalibUpdEna
.section .bss.a1.CalUsr_bIsCalibUpdEna,"aw",@nobits
	.type	CalUsr_bIsCalibUpdEna, @object
	.size	CalUsr_bIsCalibUpdEna, 1
CalUsr_bIsCalibUpdEna:
	.zero	1
	.global	CalUsr_ku32CalibUpdEnaMskB
.section .rodata.Calib_unspec.CalUsr_ku32CalibUpdEnaMskB,"a",@progbits
	.align 2
	.type	CalUsr_ku32CalibUpdEnaMskB, @object
	.size	CalUsr_ku32CalibUpdEnaMskB, 4
CalUsr_ku32CalibUpdEnaMskB:
	.word	-1145324613
	.global	CalUsr_ku32CalibUpdEnaMskA
.section .rodata.Calib_unspec.CalUsr_ku32CalibUpdEnaMskA,"a",@progbits
	.align 2
	.type	CalUsr_ku32CalibUpdEnaMskA, @object
	.size	CalUsr_ku32CalibUpdEnaMskA, 4
CalUsr_ku32CalibUpdEnaMskA:
	.word	-1431655766
.section .text,"ax",@progbits
.Letext0:
	.file 1 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 2 "bswcdd\\CCP\\CAL\\CALUSR_DEF.c"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x383
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\CCP\\CAL\\CALUSR_DEF.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
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
	.uaword	0x207
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
	.uaword	0x1ad
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x4
	.string	"CalUsr_ku32CalibUpdEnaMskA"
	.byte	0x2
	.byte	0x29
	.uaword	0x29d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CalUsr_ku32CalibUpdEnaMskA
	.uleb128 0x5
	.uaword	0x1f9
	.uleb128 0x4
	.string	"CalUsr_ku32CalibUpdEnaMskB"
	.byte	0x2
	.byte	0x2a
	.uaword	0x29d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CalUsr_ku32CalibUpdEnaMskB
	.uleb128 0x4
	.string	"CalUsr_bIsCalibUpdEna"
	.byte	0x2
	.byte	0x34
	.uaword	0x244
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CalUsr_bIsCalibUpdEna
	.uleb128 0x4
	.string	"CalUsr_u32PODataCRC"
	.byte	0x2
	.byte	0x38
	.uaword	0x1f9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CalUsr_u32PODataCRC
	.uleb128 0x4
	.string	"CalUsr_u32ChkDataCrc"
	.byte	0x2
	.byte	0x35
	.uaword	0x1f9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CalUsr_u32ChkDataCrc
	.uleb128 0x4
	.string	"CalUsr_u32POCalibDnEnaMskA"
	.byte	0x2
	.byte	0x36
	.uaword	0x1f9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CalUsr_u32POCalibDnEnaMskA
	.uleb128 0x4
	.string	"CalUsr_u32POCalibDnEnaMskB"
	.byte	0x2
	.byte	0x37
	.uaword	0x1f9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CalUsr_u32POCalibDnEnaMskB
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
