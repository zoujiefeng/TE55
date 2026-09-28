	.file	"MAIN_OcuDEF.c"
.section .text,"ax",@progbits
.Ltext0:
	.global	OMAIN_u8StopCacheFreezeFrameCnt
.section .bss.a1.OMAIN_u8StopCacheFreezeFrameCnt,"aw",@nobits
	.type	OMAIN_u8StopCacheFreezeFrameCnt, @object
	.size	OMAIN_u8StopCacheFreezeFrameCnt, 1
OMAIN_u8StopCacheFreezeFrameCnt:
	.zero	1
	.global	OMAIN_VSIBenchOnWriteDataC
.section .rodata.Calib_bool.OMAIN_VSIBenchOnWriteDataC,"a",@progbits
	.type	OMAIN_VSIBenchOnWriteDataC, @object
	.size	OMAIN_VSIBenchOnWriteDataC, 1
OMAIN_VSIBenchOnWriteDataC:
	.zero	1
	.global	OMAIN_HARDBenchOnC
.section .rodata.Calib_bool.OMAIN_HARDBenchOnC,"a",@progbits
	.type	OMAIN_HARDBenchOnC, @object
	.size	OMAIN_HARDBenchOnC, 1
OMAIN_HARDBenchOnC:
	.zero	1
	.global	OMAIN_f32OverBhvThdC
.section .rodata.Calib_32.OMAIN_f32OverBhvThdC,"a",@progbits
	.align 2
	.type	OMAIN_f32OverBhvThdC, @object
	.size	OMAIN_f32OverBhvThdC, 4
OMAIN_f32OverBhvThdC:
	.word	1042469093
	.global	OMAIN_u32VSICntCkreqVSIStartedC
.section .rodata.Calib_32.OMAIN_u32VSICntCkreqVSIStartedC,"a",@progbits
	.align 2
	.type	OMAIN_u32VSICntCkreqVSIStartedC, @object
	.size	OMAIN_u32VSICntCkreqVSIStartedC, 4
OMAIN_u32VSICntCkreqVSIStartedC:
	.word	100
	.global	OMAIN_u32VSICntCkreqESMStartedC
.section .rodata.Calib_32.OMAIN_u32VSICntCkreqESMStartedC,"a",@progbits
	.align 2
	.type	OMAIN_u32VSICntCkreqESMStartedC, @object
	.size	OMAIN_u32VSICntCkreqESMStartedC, 4
OMAIN_u32VSICntCkreqESMStartedC:
	.word	4900
	.global	OMAIN_f32UvwOvCurrThdC
.section .rodata.Calib_32.OMAIN_f32UvwOvCurrThdC,"a",@progbits
	.align 2
	.type	OMAIN_f32UvwOvCurrThdC, @object
	.size	OMAIN_f32UvwOvCurrThdC, 4
OMAIN_f32UvwOvCurrThdC:
	.word	1117126656
	.global	OMAIN_f32CanSpeedTgtSetC
.section .rodata.Calib_32.OMAIN_f32CanSpeedTgtSetC,"a",@progbits
	.align 2
	.type	OMAIN_f32CanSpeedTgtSetC, @object
	.size	OMAIN_f32CanSpeedTgtSetC, 4
OMAIN_f32CanSpeedTgtSetC:
	.word	1153138688
	.global	OMAIN_u8IgbtFltConfirmCntC
.section .rodata.Calib_8.OMAIN_u8IgbtFltConfirmCntC,"a",@progbits
	.type	OMAIN_u8IgbtFltConfirmCntC, @object
	.size	OMAIN_u8IgbtFltConfirmCntC, 1
OMAIN_u8IgbtFltConfirmCntC:
	.byte	2
.section .text,"ax",@progbits
.Letext0:
	.file 1 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 2 "main\\OcuMain\\MAIN_OcuDEF.c"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x411
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"main\\OcuMain\\MAIN_OcuDEF.c"
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
	.uaword	0x213
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x3
	.string	"float32"
	.byte	0x1
	.byte	0x75
	.uaword	0x24c
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
	.uaword	0x1b9
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x4
	.string	"OMAIN_HARDBenchOnC"
	.byte	0x2
	.byte	0x34
	.uaword	0x2b0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	OMAIN_HARDBenchOnC
	.uleb128 0x5
	.uaword	0x25f
	.uleb128 0x4
	.string	"OMAIN_VSIBenchOnWriteDataC"
	.byte	0x2
	.byte	0x35
	.uaword	0x2b0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	OMAIN_VSIBenchOnWriteDataC
	.uleb128 0x4
	.string	"OMAIN_f32CanSpeedTgtSetC"
	.byte	0x2
	.byte	0x29
	.uaword	0x305
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	OMAIN_f32CanSpeedTgtSetC
	.uleb128 0x5
	.uaword	0x23d
	.uleb128 0x4
	.string	"OMAIN_f32UvwOvCurrThdC"
	.byte	0x2
	.byte	0x2a
	.uaword	0x305
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	OMAIN_f32UvwOvCurrThdC
	.uleb128 0x4
	.string	"OMAIN_u32VSICntCkreqESMStartedC"
	.byte	0x2
	.byte	0x2b
	.uaword	0x35d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	OMAIN_u32VSICntCkreqESMStartedC
	.uleb128 0x5
	.uaword	0x205
	.uleb128 0x4
	.string	"OMAIN_u32VSICntCkreqVSIStartedC"
	.byte	0x2
	.byte	0x2c
	.uaword	0x35d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	OMAIN_u32VSICntCkreqVSIStartedC
	.uleb128 0x4
	.string	"OMAIN_f32OverBhvThdC"
	.byte	0x2
	.byte	0x2d
	.uaword	0x305
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	OMAIN_f32OverBhvThdC
	.uleb128 0x4
	.string	"OMAIN_u8IgbtFltConfirmCntC"
	.byte	0x2
	.byte	0x3c
	.uaword	0x3dc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	OMAIN_u8IgbtFltConfirmCntC
	.uleb128 0x5
	.uaword	0x1ac
	.uleb128 0x4
	.string	"OMAIN_u8StopCacheFreezeFrameCnt"
	.byte	0x2
	.byte	0x4c
	.uaword	0x40f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	OMAIN_u8StopCacheFreezeFrameCnt
	.uleb128 0x6
	.uaword	0x1ac
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
	.uleb128 0x6
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
