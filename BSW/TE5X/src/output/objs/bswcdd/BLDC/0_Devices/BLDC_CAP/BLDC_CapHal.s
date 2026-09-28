	.file	"BLDC_CapHal.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.BLDCUHAL_u16ReadHallUndefineState,"ax",@progbits
	.align 1
	.type	BLDCUHAL_u16ReadHallUndefineState, @function
BLDCUHAL_u16ReadHallUndefineState:
.LFB20:
	.file 1 "bswcdd\\BLDC\\0_Devices\\BLDC_CAP\\BLDC_CapHal.c"
	.loc 1 88 0
	.loc 1 89 0
	ret
.LFE20:
	.size	BLDCUHAL_u16ReadHallUndefineState, .-BLDCUHAL_u16ReadHallUndefineState
.section .text.BLDCUHAL_u16ReadSupplyLowState,"ax",@progbits
	.align 1
	.type	BLDCUHAL_u16ReadSupplyLowState, @function
BLDCUHAL_u16ReadSupplyLowState:
.LFB21:
	.loc 1 92 0
	.loc 1 93 0
	ret
.LFE21:
	.size	BLDCUHAL_u16ReadSupplyLowState, .-BLDCUHAL_u16ReadSupplyLowState
.section .text.BLDCUHAL_vidSetHallInvalidState,"ax",@progbits
	.align 1
	.type	BLDCUHAL_vidSetHallInvalidState, @function
BLDCUHAL_vidSetHallInvalidState:
.LFB22:
	.loc 1 97 0
.LVL0:
	ret
.LFE22:
	.size	BLDCUHAL_vidSetHallInvalidState, .-BLDCUHAL_vidSetHallInvalidState
.section .text.BLDCUHAL_vidSetHallUndefinedState,"ax",@progbits
	.align 1
	.type	BLDCUHAL_vidSetHallUndefinedState, @function
BLDCUHAL_vidSetHallUndefinedState:
.LFB23:
	.loc 1 101 0
.LVL1:
	ret
.LFE23:
	.size	BLDCUHAL_vidSetHallUndefinedState, .-BLDCUHAL_vidSetHallUndefinedState
.section .text.BLDCUHAL_vidSetHallSupplyLowState,"ax",@progbits
	.align 1
	.type	BLDCUHAL_vidSetHallSupplyLowState, @function
BLDCUHAL_vidSetHallSupplyLowState:
.LFB24:
	.loc 1 105 0
.LVL2:
	ret
.LFE24:
	.size	BLDCUHAL_vidSetHallSupplyLowState, .-BLDCUHAL_vidSetHallSupplyLowState
.section .text.BLDCUHAL_vidSetPhaseShortGndState,"ax",@progbits
	.align 1
	.type	BLDCUHAL_vidSetPhaseShortGndState, @function
BLDCUHAL_vidSetPhaseShortGndState:
.LFB25:
	.loc 1 109 0
.LVL3:
	ret
.LFE25:
	.size	BLDCUHAL_vidSetPhaseShortGndState, .-BLDCUHAL_vidSetPhaseShortGndState
.section .text.BLDCUHAL_vidSetPhaseShortVccState,"ax",@progbits
	.align 1
	.type	BLDCUHAL_vidSetPhaseShortVccState, @function
BLDCUHAL_vidSetPhaseShortVccState:
.LFB26:
	.loc 1 114 0
.LVL4:
	ret
.LFE26:
	.size	BLDCUHAL_vidSetPhaseShortVccState, .-BLDCUHAL_vidSetPhaseShortVccState
.section .text.BLDCUHAL_vidStartDutySample,"ax",@progbits
	.align 1
	.type	BLDCUHAL_vidStartDutySample, @function
BLDCUHAL_vidStartDutySample:
.LFB27:
	.loc 1 119 0
	ret
.LFE27:
	.size	BLDCUHAL_vidStartDutySample, .-BLDCUHAL_vidStartDutySample
.section .text.BLDCUHAL_vidBusKeyConfig,"ax",@progbits
	.align 1
	.type	BLDCUHAL_vidBusKeyConfig, @function
BLDCUHAL_vidBusKeyConfig:
.LFB28:
	.loc 1 124 0
.LVL5:
	ret
.LFE28:
	.size	BLDCUHAL_vidBusKeyConfig, .-BLDCUHAL_vidBusKeyConfig
.section .text.BLDCUHAL_bGetMotPosDuty,"ax",@progbits
	.align 1
	.type	BLDCUHAL_bGetMotPosDuty, @function
BLDCUHAL_bGetMotPosDuty:
.LFB30:
	.loc 1 143 0
.LVL6:
	.loc 1 145 0
	mov	%d2, 0
	ret
.LFE30:
	.size	BLDCUHAL_bGetMotPosDuty, .-BLDCUHAL_bGetMotPosDuty
.section .text.BLDCUHAL_bGetReadyState,"ax",@progbits
	.align 1
	.type	BLDCUHAL_bGetReadyState, @function
BLDCUHAL_bGetReadyState:
.LFB19:
	.loc 1 83 0
	.loc 1 84 0
	j	BSW_bGetBswReadySts
.LVL7:
.LFE19:
	.size	BLDCUHAL_bGetReadyState, .-BLDCUHAL_bGetReadyState
.section .text.BLDC_f32GetPfbPwmDuty,"ax",@progbits
	.align 1
	.global	BLDC_f32GetPfbPwmDuty
	.type	BLDC_f32GetPfbPwmDuty, @function
BLDC_f32GetPfbPwmDuty:
.LFB29:
	.loc 1 138 0
.LVL8:
	.loc 1 140 0
	mov	%d2, 0
	ret
.LFE29:
	.size	BLDC_f32GetPfbPwmDuty, .-BLDC_f32GetPfbPwmDuty
	.global	BLDC_CapHalModule
.section .rodata.a4.BLDC_CapHalModule,"a",@progbits
	.align 2
	.type	BLDC_CapHalModule, @object
	.size	BLDC_CapHalModule, 16
BLDC_CapHalModule:
	.word	BLDCUHAL_HalModuleApi
	.word	0
	.word	0
	.word	0
.section .rodata.a4.BLDCUHAL_HalModuleApi,"a",@progbits
	.align 2
	.type	BLDCUHAL_HalModuleApi, @object
	.size	BLDCUHAL_HalModuleApi, 60
BLDCUHAL_HalModuleApi:
	.word	0
	.word	0
	.word	0
	.word	0
	.word	BLDCUHAL_vidStartDutySample
	.word	BLDCUHAL_vidBusKeyConfig
	.word	BLDCUHAL_bGetMotPosDuty
	.word	BLDCUHAL_vidSetHallInvalidState
	.word	BLDCUHAL_vidSetHallUndefinedState
	.word	BLDCUHAL_vidSetHallSupplyLowState
	.word	BLDCUHAL_vidSetPhaseShortGndState
	.word	BLDCUHAL_vidSetPhaseShortVccState
	.word	BLDCUHAL_u16ReadHallUndefineState
	.word	BLDCUHAL_u16ReadSupplyLowState
	.word	BLDCUHAL_bGetReadyState
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
	.uaword	.LFB20
	.uaword	.LFE20-.LFB20
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB21
	.uaword	.LFE21-.LFB21
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB22
	.uaword	.LFE22-.LFB22
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB23
	.uaword	.LFE23-.LFB23
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB24
	.uaword	.LFE24-.LFB24
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB25
	.uaword	.LFE25-.LFB25
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB26
	.uaword	.LFE26-.LFB26
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB27
	.uaword	.LFE27-.LFB27
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB28
	.uaword	.LFE28-.LFB28
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB30
	.uaword	.LFE30-.LFB30
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB19
	.uaword	.LFE19-.LFB19
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB29
	.uaword	.LFE29-.LFB29
	.align 2
.LEFDE22:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\inc\\Icu_17_TimerIp.h"
	.file 4 ".\\output\\inc/..\\..\\bswcdd\\BLDC\\0_Devices\\BLDC_DeviceType.h"
	.file 5 "bswcdd\\BLDC\\0_Devices\\BLDC_CAP\\BLDC_CapDataType.h"
	.file 6 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\DSM.h"
	.file 7 ".\\output\\inc/..\\..\\bswcdd\\BLDC\\0_Devices\\BLDC_DeviceCfg.h"
	.file 8 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSW.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xa42
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\BLDC\\0_Devices\\BLDC_CAP\\BLDC_CapHal.c"
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
	.uaword	0x1d7
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
	.uaword	0x203
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
	.uaword	0x23f
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
	.byte	0x2
	.byte	0x75
	.uaword	0x278
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
	.uaword	0x1d7
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2cd
	.uleb128 0x5
	.byte	0x1
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2d5
	.uleb128 0x6
	.uleb128 0x7
	.string	"Icu_17_TimerIp_ChannelType"
	.byte	0x3
	.uahalf	0x12a
	.uaword	0x1ca
	.uleb128 0x8
	.string	"DSM_CONTROL_UNIT_INDEX"
	.byte	0x1
	.byte	0x6
	.byte	0x2b
	.uaword	0x36d
	.uleb128 0x9
	.string	"DSM_UNIT_0"
	.sleb128 0
	.uleb128 0x9
	.string	"DSM_UNIT_1"
	.sleb128 1
	.uleb128 0x9
	.string	"DSM_UNIT_2"
	.sleb128 2
	.uleb128 0x9
	.string	"DSM_UNIT_3"
	.sleb128 3
	.uleb128 0x9
	.string	"DSM_UNIT_4"
	.sleb128 4
	.uleb128 0x9
	.string	"DSM_UNIT_MAX_NUM"
	.sleb128 5
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.byte	0x7
	.byte	0xf
	.uaword	0x3fc
	.uleb128 0x9
	.string	"eBLDC_DEV_GTM_START_INDEX"
	.sleb128 0
	.uleb128 0x9
	.string	"eBLDC_DEV_GTM_DRV8340_INDEX"
	.sleb128 0
	.uleb128 0x9
	.string	"eBLDC_DEV_GTM_TLE9180_INDEX"
	.sleb128 1
	.uleb128 0x9
	.string	"eBLDC_DEV_GTM_END_INDEX"
	.sleb128 2
	.uleb128 0x9
	.string	"eBLDC_DEV_MAX_NUM"
	.sleb128 2
	.byte	0
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0x10
	.byte	0x4
	.byte	0x23
	.uaword	0x467
	.uleb128 0xc
	.string	"pvApi"
	.byte	0x4
	.byte	0x24
	.uaword	0x2cf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"u16IOReadHall_1"
	.byte	0x4
	.byte	0x25
	.uaword	0x46d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"u16IOReadHall_2"
	.byte	0x4
	.byte	0x26
	.uaword	0x46d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.string	"u16IOReadHall_3"
	.byte	0x4
	.byte	0x27
	.uaword	0x46d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.uaword	0x1f5
	.uleb128 0x4
	.byte	0x4
	.uaword	0x467
	.uleb128 0xe
	.uaword	.LASF0
	.byte	0x4
	.byte	0x28
	.uaword	0x3fc
	.uleb128 0x4
	.byte	0x4
	.uaword	0x231
	.uleb128 0x4
	.byte	0x4
	.uaword	0x269
	.uleb128 0xd
	.byte	0x1
	.uaword	0x28b
	.uleb128 0x4
	.byte	0x4
	.uaword	0x48a
	.uleb128 0xf
	.uaword	0x473
	.uleb128 0xb
	.uaword	.LASF1
	.byte	0x3c
	.byte	0x5
	.byte	0x73
	.uaword	0x67b
	.uleb128 0xc
	.string	"u16ADReadOilPressure"
	.byte	0x5
	.byte	0x75
	.uaword	0x46d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"u16ADRead12VBattery"
	.byte	0x5
	.byte	0x76
	.uaword	0x46d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"u16ADRead12VBackup"
	.byte	0x5
	.byte	0x77
	.uaword	0x46d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.string	"u16ADReadP5VAD2S"
	.byte	0x5
	.byte	0x78
	.uaword	0x46d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.string	"vidStartPosSample"
	.byte	0x5
	.byte	0x7a
	.uaword	0x2c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.string	"vidBusKeyConfig"
	.byte	0x5
	.byte	0x7b
	.uaword	0x687
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xc
	.string	"bGetMotPosDuty"
	.byte	0x5
	.byte	0x7c
	.uaword	0x6a7
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xc
	.string	"vidSetHallInvalidState"
	.byte	0x5
	.byte	0x80
	.uaword	0x6b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xc
	.string	"vidSetHallUndefinedState"
	.byte	0x5
	.byte	0x81
	.uaword	0x6b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xc
	.string	"vidSetHallSupplyLowState"
	.byte	0x5
	.byte	0x82
	.uaword	0x6b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xc
	.string	"vidSetPhaseShortGndState"
	.byte	0x5
	.byte	0x83
	.uaword	0x6b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xc
	.string	"vidSetPhaseShortVccState"
	.byte	0x5
	.byte	0x84
	.uaword	0x6b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xc
	.string	"u16ReadHallUndefineLogged"
	.byte	0x5
	.byte	0x86
	.uaword	0x46d
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xc
	.string	"u16ReadHallSupplyLowLogged"
	.byte	0x5
	.byte	0x87
	.uaword	0x46d
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xc
	.string	"bGetReadyState"
	.byte	0x5
	.byte	0x89
	.uaword	0x490
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.uaword	0x687
	.uleb128 0x11
	.uaword	0x269
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x67b
	.uleb128 0x12
	.byte	0x1
	.uaword	0x28b
	.uaword	0x6a7
	.uleb128 0x11
	.uaword	0x484
	.uleb128 0x11
	.uaword	0x47e
	.uleb128 0x11
	.uaword	0x47e
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x68d
	.uleb128 0x10
	.byte	0x1
	.uaword	0x6b9
	.uleb128 0x11
	.uaword	0x28b
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x6ad
	.uleb128 0xe
	.uaword	.LASF1
	.byte	0x5
	.byte	0x8a
	.uaword	0x49b
	.uleb128 0x13
	.string	"BLDCUHAL_u16ReadHallUndefineState"
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.uaword	0x1f5
	.uaword	.LFB20
	.uaword	.LFE20
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x13
	.string	"BLDCUHAL_u16ReadSupplyLowState"
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.uaword	0x1f5
	.uaword	.LFB21
	.uaword	.LFE21
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x14
	.string	"BLDCUHAL_vidSetHallInvalidState"
	.byte	0x1
	.byte	0x60
	.byte	0x1
	.uaword	.LFB22
	.uaword	.LFE22
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x775
	.uleb128 0x15
	.uaword	.LASF2
	.byte	0x1
	.byte	0x60
	.uaword	0x28b
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x14
	.string	"BLDCUHAL_vidSetHallUndefinedState"
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.uaword	.LFB23
	.uaword	.LFE23
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x7b9
	.uleb128 0x15
	.uaword	.LASF2
	.byte	0x1
	.byte	0x64
	.uaword	0x28b
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x14
	.string	"BLDCUHAL_vidSetHallSupplyLowState"
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.uaword	.LFB24
	.uaword	.LFE24
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x7fd
	.uleb128 0x15
	.uaword	.LASF2
	.byte	0x1
	.byte	0x68
	.uaword	0x28b
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x14
	.string	"BLDCUHAL_vidSetPhaseShortGndState"
	.byte	0x1
	.byte	0x6c
	.byte	0x1
	.uaword	.LFB25
	.uaword	.LFE25
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x841
	.uleb128 0x15
	.uaword	.LASF2
	.byte	0x1
	.byte	0x6c
	.uaword	0x28b
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x14
	.string	"BLDCUHAL_vidSetPhaseShortVccState"
	.byte	0x1
	.byte	0x71
	.byte	0x1
	.uaword	.LFB26
	.uaword	.LFE26
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x885
	.uleb128 0x15
	.uaword	.LASF2
	.byte	0x1
	.byte	0x71
	.uaword	0x28b
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x16
	.string	"BLDCUHAL_vidStartDutySample"
	.byte	0x1
	.byte	0x76
	.byte	0x1
	.uaword	.LFB27
	.uaword	.LFE27
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x14
	.string	"BLDCUHAL_vidBusKeyConfig"
	.byte	0x1
	.byte	0x7b
	.byte	0x1
	.uaword	.LFB28
	.uaword	.LFE28
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x8f3
	.uleb128 0x17
	.string	"f32Percent"
	.byte	0x1
	.byte	0x7b
	.uaword	0x269
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x18
	.string	"BLDCUHAL_bGetMotPosDuty"
	.byte	0x1
	.byte	0x8e
	.byte	0x1
	.uaword	0x28b
	.uaword	.LFB30
	.uaword	.LFE30
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x960
	.uleb128 0x17
	.string	"pf32Duty"
	.byte	0x1
	.byte	0x8e
	.uaword	0x484
	.byte	0x1
	.byte	0x64
	.uleb128 0x17
	.string	"pu32PeriodT"
	.byte	0x1
	.byte	0x8e
	.uaword	0x47e
	.byte	0x1
	.byte	0x65
	.uleb128 0x17
	.string	"pu32ActiveT"
	.byte	0x1
	.byte	0x8e
	.uaword	0x47e
	.byte	0x1
	.byte	0x66
	.byte	0
	.uleb128 0x18
	.string	"BLDCUHAL_bGetReadyState"
	.byte	0x1
	.byte	0x52
	.byte	0x1
	.uaword	0x28b
	.uaword	.LFB19
	.uaword	.LFE19
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x99b
	.uleb128 0x19
	.uaword	.LVL7
	.byte	0x1
	.uaword	0xa27
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.string	"BLDC_f32GetPfbPwmDuty"
	.byte	0x1
	.byte	0x89
	.byte	0x1
	.uaword	0x269
	.uaword	.LFB29
	.uaword	.LFE29
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x9df
	.uleb128 0x17
	.string	"icuChannel"
	.byte	0x1
	.byte	0x89
	.uaword	0x2d6
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x1b
	.string	"BLDCUHAL_HalModuleApi"
	.byte	0x1
	.byte	0x2b
	.uaword	0xa02
	.byte	0x5
	.byte	0x3
	.uaword	BLDCUHAL_HalModuleApi
	.uleb128 0xf
	.uaword	0x6bf
	.uleb128 0x1c
	.string	"BLDC_CapHalModule"
	.byte	0x1
	.byte	0x44
	.uaword	0x496
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BLDC_CapHalModule
	.uleb128 0x1d
	.byte	0x1
	.string	"BSW_bGetBswReadySts"
	.byte	0x8
	.byte	0x73
	.byte	0x1
	.uaword	0x28b
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
.section .debug_aranges,"",@progbits
	.uaword	0x74
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB20
	.uaword	.LFE20-.LFB20
	.uaword	.LFB21
	.uaword	.LFE21-.LFB21
	.uaword	.LFB22
	.uaword	.LFE22-.LFB22
	.uaword	.LFB23
	.uaword	.LFE23-.LFB23
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
	.uaword	.LFB30
	.uaword	.LFE30-.LFB30
	.uaword	.LFB19
	.uaword	.LFE19-.LFB19
	.uaword	.LFB29
	.uaword	.LFE29-.LFB29
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB20
	.uaword	.LFE20
	.uaword	.LFB21
	.uaword	.LFE21
	.uaword	.LFB22
	.uaword	.LFE22
	.uaword	.LFB23
	.uaword	.LFE23
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
	.uaword	.LFB30
	.uaword	.LFE30
	.uaword	.LFB19
	.uaword	.LFE19
	.uaword	.LFB29
	.uaword	.LFE29
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF2:
	.string	"bStatus"
.LASF0:
	.string	"BLDC_HalModule"
.LASF1:
	.string	"BLDC_HalApi"
	.extern	BSW_bGetBswReadySts,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
