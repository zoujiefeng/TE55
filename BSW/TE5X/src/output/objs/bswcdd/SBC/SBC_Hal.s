	.file	"SBC_Hal.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	SBCHal_u16GetAdVal_P5VCom
	.type	SBCHal_u16GetAdVal_P5VCom, @function
SBCHal_u16GetAdVal_P5VCom:
.LFB0:
	.file 1 "bswcdd\\SBC\\SBC_Hal.c"
	.loc 1 26 0
	.loc 1 27 0
	mov	%d4, 210
	j	PMux_u16GetInputVal
.LVL0:
.LFE0:
	.size	SBCHal_u16GetAdVal_P5VCom, .-SBCHal_u16GetAdVal_P5VCom
	.align 1
	.global	SBCHal_u16GetAdVal_P5VGateway
	.type	SBCHal_u16GetAdVal_P5VGateway, @function
SBCHal_u16GetAdVal_P5VGateway:
.LFB1:
	.loc 1 31 0
	.loc 1 32 0
	mov	%d4, 209
	j	PMux_u16GetInputVal
.LVL1:
.LFE1:
	.size	SBCHal_u16GetAdVal_P5VGateway, .-SBCHal_u16GetAdVal_P5VGateway
	.align 1
	.global	SBCHal_u16GetAdVal_P5VBt
	.type	SBCHal_u16GetAdVal_P5VBt, @function
SBCHal_u16GetAdVal_P5VBt:
.LFB2:
	.loc 1 36 0
	.loc 1 37 0
	mov	%d4, 211
	j	PMux_u16GetInputVal
.LVL2:
.LFE2:
	.size	SBCHal_u16GetAdVal_P5VBt, .-SBCHal_u16GetAdVal_P5VBt
	.align 1
	.global	SBCHal_u16GetAdVal_P5VRef
	.type	SBCHal_u16GetAdVal_P5VRef, @function
SBCHal_u16GetAdVal_P5VRef:
.LFB3:
	.loc 1 41 0
	.loc 1 42 0
	j	IOHAL_u16Read_CH_ADC_IN_AN_P5V_REF
.LVL3:
.LFE3:
	.size	SBCHal_u16GetAdVal_P5VRef, .-SBCHal_u16GetAdVal_P5VRef
	.align 1
	.global	SBCHal_u16GetAdVal_P5VAD2S
	.type	SBCHal_u16GetAdVal_P5VAD2S, @function
SBCHal_u16GetAdVal_P5VAD2S:
.LFB4:
	.loc 1 46 0
	.loc 1 47 0
	j	IOHAL_u16Read_CH_ADC_IN_AN_P5V_AD2S
.LVL4:
.LFE4:
	.size	SBCHal_u16GetAdVal_P5VAD2S, .-SBCHal_u16GetAdVal_P5VAD2S
	.align 1
	.global	SBCHal_f32GetBatteryVol
	.type	SBCHal_f32GetBatteryVol, @function
SBCHal_f32GetBatteryVol:
.LFB5:
	.loc 1 51 0
.LVL5:
	.loc 1 55 0
	call	IOHAL_u16Read_CH_ADC_IN_LV_VOL_SAMPLE
.LVL6:
	.loc 1 58 0
	movh	%d3, 15490
	.loc 1 56 0
	utof	%d15, %d2
	.loc 1 58 0
	movh	%d2, 15173
.LVL7:
	addi	%d3, %d3, 16568
	addi	%d2, %d2, -25690
	madd.f	%d2, %d2, %d15, %d3
	movh.a	%a15, hi:SBC_f32BatteryVoltage
	st.w	[%a15] lo:SBC_f32BatteryVoltage, %d2
	.loc 1 61 0
	ret
.LFE5:
	.size	SBCHal_f32GetBatteryVol, .-SBCHal_f32GetBatteryVol
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
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB4
	.uaword	.LFE4-.LFB4
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB5
	.uaword	.LFE5-.LFB5
	.align 2
.LEFDE10:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bswcdd\\IOHAL\\IOHAL_Cfg_I.h"
	.file 4 ".\\output\\inc/..\\..\\bswcdd\\PortMux\\PortMux.h"
	.file 5 "bswcdd\\SBC\\SBC.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x5d6
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\SBC\\SBC_Hal.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ltext0
	.uaword	.Letext0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x2
	.byte	0x51
	.uaword	0x1da
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
	.uaword	0x1a8
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
	.uleb128 0x3
	.string	"float32"
	.byte	0x2
	.byte	0x75
	.uaword	0x19f
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
	.byte	0x1
	.byte	0x4
	.byte	0xb5
	.uaword	0x346
	.uleb128 0x5
	.string	"ePMUX_AN0_MUX11"
	.sleb128 208
	.uleb128 0x5
	.string	"ePMUX_AN1_MUX11"
	.sleb128 209
	.uleb128 0x5
	.string	"ePMUX_AN2_MUX11"
	.sleb128 210
	.uleb128 0x5
	.string	"ePMUX_AN3_MUX11"
	.sleb128 211
	.uleb128 0x5
	.string	"ePMUX_AN4_MUX11"
	.sleb128 212
	.uleb128 0x5
	.string	"ePMUX_AN5_MUX11"
	.sleb128 213
	.uleb128 0x5
	.string	"ePMUX_AN6_MUX11"
	.sleb128 214
	.uleb128 0x5
	.string	"ePMUX_AN7_MUX11"
	.sleb128 215
	.uleb128 0x5
	.string	"ePMux_ANInputMux11MaxChannelNum"
	.sleb128 216
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.string	"SBCHal_u16GetAdVal_P5VCom"
	.byte	0x1
	.byte	0x19
	.byte	0x1
	.uaword	0x1f8
	.uaword	.LFB0
	.uaword	.LFE0
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x38b
	.uleb128 0x7
	.uaword	.LVL0
	.byte	0x1
	.uaword	0x521
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x9
	.byte	0xd2
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.string	"SBCHal_u16GetAdVal_P5VGateway"
	.byte	0x1
	.byte	0x1e
	.byte	0x1
	.uaword	0x1f8
	.uaword	.LFB1
	.uaword	.LFE1
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x3d4
	.uleb128 0x7
	.uaword	.LVL1
	.byte	0x1
	.uaword	0x521
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x9
	.byte	0xd1
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.string	"SBCHal_u16GetAdVal_P5VBt"
	.byte	0x1
	.byte	0x23
	.byte	0x1
	.uaword	0x1f8
	.uaword	.LFB2
	.uaword	.LFE2
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x418
	.uleb128 0x7
	.uaword	.LVL2
	.byte	0x1
	.uaword	0x521
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x9
	.byte	0xd3
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.string	"SBCHal_u16GetAdVal_P5VRef"
	.byte	0x1
	.byte	0x28
	.byte	0x1
	.uaword	0x1f8
	.uaword	.LFB3
	.uaword	.LFE3
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x456
	.uleb128 0x9
	.uaword	.LVL3
	.byte	0x1
	.uaword	0x54e
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.string	"SBCHal_u16GetAdVal_P5VAD2S"
	.byte	0x1
	.byte	0x2d
	.byte	0x1
	.uaword	0x1f8
	.uaword	.LFB4
	.uaword	.LFE4
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x495
	.uleb128 0x9
	.uaword	.LVL4
	.byte	0x1
	.uaword	0x57b
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.string	"SBCHal_f32GetBatteryVol"
	.byte	0x1
	.byte	0x32
	.byte	0x1
	.uaword	0x248
	.uaword	.LFB5
	.uaword	.LFE5
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x502
	.uleb128 0xa
	.string	"u16LocAdcRaw"
	.byte	0x1
	.byte	0x34
	.uaword	0x1f8
	.uaword	.LLST0
	.uleb128 0xa
	.string	"f32LocBatValAd"
	.byte	0x1
	.byte	0x35
	.uaword	0x248
	.uaword	.LLST1
	.uleb128 0xb
	.uaword	.LVL6
	.uaword	0x5a9
	.byte	0
	.uleb128 0xc
	.string	"SBC_f32BatteryVoltage"
	.byte	0x5
	.byte	0x5b
	.uaword	0x248
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.byte	0x1
	.string	"PMux_u16GetInputVal"
	.byte	0x4
	.byte	0xd7
	.byte	0x1
	.uaword	0x1f8
	.byte	0x1
	.uaword	0x549
	.uleb128 0xe
	.uaword	0x549
	.byte	0
	.uleb128 0xf
	.uaword	0x1cd
	.uleb128 0x10
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_AN_P5V_REF"
	.byte	0x3
	.byte	0xa5
	.byte	0x1
	.uaword	0x1f8
	.byte	0x1
	.uleb128 0x10
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_AN_P5V_AD2S"
	.byte	0x3
	.byte	0x9f
	.byte	0x1
	.uaword	0x1f8
	.byte	0x1
	.uleb128 0x10
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_LV_VOL_SAMPLE"
	.byte	0x3
	.byte	0xc6
	.byte	0x1
	.uaword	0x1f8
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
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
	.uaword	.LVL5-.text
	.uaword	.LVL6-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL6-.text
	.uaword	.LVL7-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL5-.text
	.uaword	.LVL6-.text
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL6-.text
	.uaword	.LVL7-.text
	.uahalf	0x9
	.byte	0x72
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1a8
	.byte	0xf7
	.uleb128 0x19f
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
	.extern	SBC_f32BatteryVoltage,STT_OBJECT,4
	.extern	IOHAL_u16Read_CH_ADC_IN_LV_VOL_SAMPLE,STT_FUNC,0
	.extern	IOHAL_u16Read_CH_ADC_IN_AN_P5V_AD2S,STT_FUNC,0
	.extern	IOHAL_u16Read_CH_ADC_IN_AN_P5V_REF,STT_FUNC,0
	.extern	PMux_u16GetInputVal,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
