	.file	"TLE9180_HAL.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	TLE9180_bHalBatIsNormal
	.type	TLE9180_bHalBatIsNormal, @function
TLE9180_bHalBatIsNormal:
.LFB4:
	.file 1 "bswcdd\\PreDriver\\TLE9180\\TLE9180_HAL.c"
	.loc 1 42 0
.LVL0:
	.loc 1 48 0
	movh	%d15, 15881
	movh	%d2, 15435
	addi	%d15, %d15, -12688
	mov	%d3, 0
	addi	%d2, %d2, 10591
	madd.f	%d2, %d15, %d3, %d2
	movh.a	%a15, hi:TLE9180_f32BatteryVoltage
	st.w	[%a15] lo:TLE9180_f32BatteryVoltage, %d2
.LVL1:
	.loc 1 50 0
	movh.a	%a15, hi:TLE9180_kf32BatteryVolValidThrdC
	ld.w	%d15, [%a15] lo:TLE9180_kf32BatteryVolValidThrdC
	cmp.f	%d2, %d2, %d15
.LVL2:
	.loc 1 56 0
	or.t	%d2, %d2,2, %d2,1
	ret
.LFE4:
	.size	TLE9180_bHalBatIsNormal, .-TLE9180_bHalBatIsNormal
	.align 1
	.global	TLE9180_bHalSysIsReady
	.type	TLE9180_bHalSysIsReady, @function
TLE9180_bHalSysIsReady:
.LFB5:
	.loc 1 59 0
	.loc 1 62 0
	j	BSW_bGetBswReadySts
.LVL3:
.LFE5:
	.size	TLE9180_bHalSysIsReady, .-TLE9180_bHalSysIsReady
	.align 1
	.global	TLE9180_bHalPwmIsReady
	.type	TLE9180_bHalPwmIsReady, @function
TLE9180_bHalPwmIsReady:
.LFB6:
	.loc 1 68 0
	.loc 1 71 0
	j	BLDC_bPwmIsReady
.LVL4:
.LFE6:
	.size	TLE9180_bHalPwmIsReady, .-TLE9180_bHalPwmIsReady
	.align 1
	.global	TLE9180_bHalICIsNormal
	.type	TLE9180_bHalICIsNormal, @function
TLE9180_bHalICIsNormal:
.LFB7:
	.loc 1 77 0
	.loc 1 85 0
	mov	%d2, 0
	ret
.LFE7:
	.size	TLE9180_bHalICIsNormal, .-TLE9180_bHalICIsNormal
	.align 1
	.global	TLE9180_vidHalWriteEnaPin
	.type	TLE9180_vidHalWriteEnaPin, @function
TLE9180_vidHalWriteEnaPin:
.LFB8:
	.loc 1 88 0
.LVL5:
	ret
.LFE8:
	.size	TLE9180_vidHalWriteEnaPin, .-TLE9180_vidHalWriteEnaPin
	.align 1
	.global	TLE9180_vidHalWriteSoffPin
	.type	TLE9180_vidHalWriteSoffPin, @function
TLE9180_vidHalWriteSoffPin:
.LFB9:
	.loc 1 93 0
.LVL6:
	ret
.LFE9:
	.size	TLE9180_vidHalWriteSoffPin, .-TLE9180_vidHalWriteSoffPin
	.align 1
	.global	TLE9180_vidHalWriteInhPin
	.type	TLE9180_vidHalWriteInhPin, @function
TLE9180_vidHalWriteInhPin:
.LFB10:
	.loc 1 98 0
.LVL7:
	ret
.LFE10:
	.size	TLE9180_vidHalWriteInhPin, .-TLE9180_vidHalWriteInhPin
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
	.uaword	.LFB4
	.uaword	.LFE4-.LFB4
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB5
	.uaword	.LFE5-.LFB5
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB6
	.uaword	.LFE6-.LFB6
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB7
	.uaword	.LFE7-.LFB7
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB8
	.uaword	.LFE8-.LFB8
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB9
	.uaword	.LFE9-.LFB9
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB10
	.uaword	.LFE10-.LFB10
	.align 2
.LEFDE12:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bswcdd\\CDD_Types.h"
	.file 4 "bswcdd\\PreDriver\\TLE9180\\TLE9180.h"
	.file 5 "bswcdd\\PreDriver\\TLE9180\\TLE9180_L.h"
	.file 6 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSW.h"
	.file 7 ".\\output\\inc/..\\..\\bswcdd\\BLDC\\BLDC.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x572
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\PreDriver\\TLE9180\\TLE9180_HAL.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ltext0
	.uaword	.Letext0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x3
	.string	"uint16"
	.byte	0x2
	.byte	0x5b
	.uaword	0x1c2
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x3
	.string	"float32"
	.byte	0x2
	.byte	0x75
	.uaword	0x25f
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
	.uaword	0x1b1
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x4
	.byte	0x1
	.byte	0x3
	.byte	0x19
	.uaword	0x2ca
	.uleb128 0x5
	.string	"eCDD_PIN_LOW"
	.sleb128 0
	.uleb128 0x5
	.string	"eCDD_PIN_HIGH"
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.string	"CDD_ePinLevel"
	.byte	0x3
	.byte	0x1c
	.uaword	0x2a2
	.uleb128 0x6
	.uaword	0x250
	.uleb128 0x7
	.byte	0x1
	.string	"TLE9180_bHalBatIsNormal"
	.byte	0x1
	.byte	0x29
	.byte	0x1
	.uaword	0x272
	.uaword	.LFB4
	.uaword	.LFE4
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x33b
	.uleb128 0x8
	.string	"u16AdVal"
	.byte	0x1
	.byte	0x2b
	.uaword	0x217
	.uleb128 0x9
	.string	"bIsNormal"
	.byte	0x1
	.byte	0x2c
	.uaword	0x272
	.uaword	.LLST0
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.string	"TLE9180_bHalSysIsReady"
	.byte	0x1
	.byte	0x3a
	.byte	0x1
	.uaword	0x272
	.uaword	.LFB5
	.uaword	.LFE5
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x38a
	.uleb128 0x8
	.string	"bTcuReadySts"
	.byte	0x1
	.byte	0x3c
	.uaword	0x272
	.uleb128 0xa
	.uaword	.LVL3
	.byte	0x1
	.uaword	0x53c
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.string	"TLE9180_bHalPwmIsReady"
	.byte	0x1
	.byte	0x43
	.byte	0x1
	.uaword	0x272
	.uaword	.LFB6
	.uaword	.LFE6
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x3d9
	.uleb128 0x8
	.string	"bPwmReadySts"
	.byte	0x1
	.byte	0x45
	.uaword	0x272
	.uleb128 0xa
	.uaword	.LVL4
	.byte	0x1
	.uaword	0x55a
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.string	"TLE9180_bHalICIsNormal"
	.byte	0x1
	.byte	0x4c
	.byte	0x1
	.uaword	0x272
	.uaword	.LFB7
	.uaword	.LFE7
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x432
	.uleb128 0x8
	.string	"bICIsNormal"
	.byte	0x1
	.byte	0x4e
	.uaword	0x272
	.uleb128 0x8
	.string	"u16LocTempVal"
	.byte	0x1
	.byte	0x4f
	.uaword	0x217
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"TLE9180_vidHalWriteEnaPin"
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.uaword	.LFB8
	.uaword	.LFE8
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x46f
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x1
	.byte	0x57
	.uaword	0x46f
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x6
	.uaword	0x2ca
	.uleb128 0xb
	.byte	0x1
	.string	"TLE9180_vidHalWriteSoffPin"
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.uaword	.LFB9
	.uaword	.LFE9
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x4b2
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x1
	.byte	0x5c
	.uaword	0x46f
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"TLE9180_vidHalWriteInhPin"
	.byte	0x1
	.byte	0x61
	.byte	0x1
	.uaword	.LFB10
	.uaword	.LFE10
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x4ef
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x1
	.byte	0x61
	.uaword	0x46f
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0xd
	.string	"TLE9180_f32BatteryVoltage"
	.byte	0x4
	.byte	0x58
	.uaword	0x250
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.string	"TLE9180_kf32BatteryVolValidThrdC"
	.byte	0x5
	.byte	0x55
	.uaword	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.string	"BSW_bGetBswReadySts"
	.byte	0x6
	.byte	0x73
	.byte	0x1
	.uaword	0x272
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.string	"BLDC_bPwmIsReady"
	.byte	0x7
	.byte	0x3f
	.byte	0x1
	.uaword	0x272
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
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
	.uleb128 0x26
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uaword	.LVL0-.text
	.uaword	.LVL1-.text
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
	.uaword	.Ltext0
	.uaword	.Letext0-.Ltext0
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"kePinLevel"
	.extern	BLDC_bPwmIsReady,STT_FUNC,0
	.extern	BSW_bGetBswReadySts,STT_FUNC,0
	.extern	TLE9180_kf32BatteryVolValidThrdC,STT_OBJECT,4
	.extern	TLE9180_f32BatteryVoltage,STT_OBJECT,4
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
