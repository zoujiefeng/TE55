	.file	"TPPC_GeneFunc.c"
.section .text,"ax",@progbits
.Ltext0:
.section .cpu3_psram,"awxc3",@progbits
	.align 1
	.global	TPPC_vidModuleInit
	.type	TPPC_vidModuleInit, @function
TPPC_vidModuleInit:
.LFB0:
	.file 1 "bswcdd\\TPPC\\TPPC_GeneFunc.c"
	.loc 1 57 0
.LVL0:
	mov.aa	%a14, %SP
.LCFI0:
	sub.a	%SP, 16
	st.a	[%a14] -12, %a4
	.loc 1 60 0
	ld.w	%d15, [%a14] -12
	jz	%d15, .L2
	.loc 1 62 0
	ld.w	%d15, [%a14] -12
	mov.a	%a15, %d15
	ld.b	%d15, [%a15]0
	st.b	[%a14] -1, %d15
.LVL1:
	j	.L1
.LVL2:
.L2:
	.loc 1 66 0
	ld.w	%d15, [%a14] -12
.LVL3:
	mov.a	%a15, %d15
	ld.w	%d15, [%a15] 12
	mov.a	%a15, %d15
	calli	%a15
.LVL4:
.L1:
	.loc 1 68 0
	ret
.LFE0:
	.size	TPPC_vidModuleInit, .-TPPC_vidModuleInit
	.align 1
	.global	TPPC_u16GetPwmDeadTime
	.type	TPPC_u16GetPwmDeadTime, @function
TPPC_u16GetPwmDeadTime:
.LFB1:
	.loc 1 80 0
.LVL5:
	.loc 1 86 0
	mov	%d2, 0
	ret
.LFE1:
	.size	TPPC_u16GetPwmDeadTime, .-TPPC_u16GetPwmDeadTime
	.align 1
	.global	TPPC_vidStartPwmOutput
	.type	TPPC_vidStartPwmOutput, @function
TPPC_vidStartPwmOutput:
.LFB2:
	.loc 1 99 0
.LVL6:
	.loc 1 102 0
	ld.a	%a4, [%a4] 8
.LVL7:
	.loc 1 100 0
	jeq	%d4, 1, .L8
	.loc 1 106 0
	ld.a	%a15, [%a4] 32
	ji	%a15
.LVL8:
.L8:
	.loc 1 102 0
	ld.a	%a15, [%a4] 28
	ji	%a15
.LVL9:
.LFE2:
	.size	TPPC_vidStartPwmOutput, .-TPPC_vidStartPwmOutput
	.align 1
	.global	TPPC_vidStartTimer
	.type	TPPC_vidStartTimer, @function
TPPC_vidStartTimer:
.LFB3:
	.loc 1 121 0
.LVL10:
	.loc 1 122 0
	ld.a	%a4, [%a4] 8
.LVL11:
	ld.a	%a15, [%a4] 16
	ji	%a15
.LVL12:
.LFE3:
	.size	TPPC_vidStartTimer, .-TPPC_vidStartTimer
	.align 1
	.global	TPPC_vidSetPwmBcDuty
	.type	TPPC_vidSetPwmBcDuty, @function
TPPC_vidSetPwmBcDuty:
.LFB4:
	.loc 1 138 0
.LVL13:
	.loc 1 142 0
	mov	%d15, 0
	cmp.f	%d2, %d4, %d15
	.loc 1 138 0
	sub.a	%SP, 16
.LCFI1:
	.loc 1 142 0
	jnz.t	%d2, 0, .L14
	.loc 1 142 0 is_stmt 0 discriminator 2
	movh	%d15, 17096
	cmp.f	%d2, %d4, %d15
	jnz.t	%d2, 2, .L15
.LVL14:
.L11:
	.loc 1 143 0 is_stmt 1 discriminator 8
	mov	%d15, 0
	cmp.f	%d2, %d5, %d15
	jnz.t	%d2, 0, .L16
.L21:
	.loc 1 143 0 is_stmt 0 discriminator 2
	movh	%d15, 17096
	cmp.f	%d2, %d5, %d15
	jnz.t	%d2, 2, .L17
.LVL15:
.L12:
	.loc 1 144 0 is_stmt 1 discriminator 8
	mov	%d15, 0
	cmp.f	%d2, %d6, %d15
	jnz.t	%d2, 0, .L18
.L20:
	.loc 1 144 0 is_stmt 0 discriminator 2
	movh	%d15, 17096
	cmp.f	%d2, %d6, %d15
	jz.t	%d2, 2, .L13
	.loc 1 144 0
	movh	%d6, 17096
.LVL16:
.L13:
	.loc 1 149 0 is_stmt 1 discriminator 8
	ld.a	%a4, [%a4] 8
.LVL17:
	ld.a	%a15, [%a4] 44
	.loc 1 146 0 discriminator 8
	st.w	[%SP] 4, %d4
	.loc 1 147 0 discriminator 8
	st.w	[%SP] 8, %d5
	.loc 1 148 0 discriminator 8
	st.w	[%SP] 12, %d6
	.loc 1 149 0 discriminator 8
	lea	%a5, [%SP] 4
	ji	%a15
.LVL18:
.L17:
	.loc 1 144 0
	mov	%d15, 0
	cmp.f	%d2, %d6, %d15
	.loc 1 143 0
	movh	%d5, 17096
.LVL19:
	.loc 1 144 0
	jz.t	%d2, 0, .L20
.L18:
	mov	%d6, 0
.LVL20:
	j	.L13
.LVL21:
.L15:
	.loc 1 143 0
	mov	%d15, 0
	cmp.f	%d2, %d5, %d15
	.loc 1 142 0
	movh	%d4, 17096
.LVL22:
	.loc 1 143 0
	jz.t	%d2, 0, .L21
.L16:
	mov	%d5, 0
.LVL23:
	j	.L12
.LVL24:
.L14:
	.loc 1 142 0
	mov	%d4, 0
.LVL25:
	j	.L11
.LFE4:
	.size	TPPC_vidSetPwmBcDuty, .-TPPC_vidSetPwmBcDuty
	.align 1
	.global	TPPC_vidSetPwmFreq
	.type	TPPC_vidSetPwmFreq, @function
TPPC_vidSetPwmFreq:
.LFB5:
	.loc 1 162 0
.LVL26:
	.loc 1 163 0
	ld.a	%a4, [%a4] 8
.LVL27:
	ld.a	%a15, [%a4] 48
	ji	%a15
.LVL28:
.LFE5:
	.size	TPPC_vidSetPwmFreq, .-TPPC_vidSetPwmFreq
	.align 1
	.global	TPPC_vidSwitchPwmUpdEvent
	.type	TPPC_vidSwitchPwmUpdEvent, @function
TPPC_vidSwitchPwmUpdEvent:
.LFB6:
	.loc 1 178 0
.LVL29:
	ret
.LFE6:
	.size	TPPC_vidSwitchPwmUpdEvent, .-TPPC_vidSwitchPwmUpdEvent
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
	.byte	0x4
	.uaword	.LCFI0-.LFB0
	.byte	0xd
	.uleb128 0x1e
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
	.byte	0x4
	.uaword	.LCFI1-.LFB4
	.byte	0xe
	.uleb128 0x10
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
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB6
	.uaword	.LFE6-.LFB6
	.align 2
.LEFDE12:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bswcdd\\TPPC\\0_Devices\\TPPC_DeviceType.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xbc7
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\TPPC\\TPPC_GeneFunc.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x2
	.byte	0x51
	.uaword	0x1cf
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
	.uaword	0x1fb
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
	.uleb128 0x3
	.string	"float32"
	.byte	0x2
	.byte	0x75
	.uaword	0x1aa
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"double"
	.uleb128 0x3
	.string	"boolean"
	.byte	0x2
	.byte	0x80
	.uaword	0x1cf
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x4
	.uaword	.LASF0
	.byte	0x3
	.byte	0x10
	.uaword	0x2a7
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0xc
	.byte	0x3
	.byte	0x17
	.uaword	0x2ed
	.uleb128 0x6
	.string	"f32Duty1"
	.byte	0x3
	.byte	0x18
	.uaword	0x253
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"f32Duty2"
	.byte	0x3
	.byte	0x19
	.uaword	0x253
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"f32Duty3"
	.byte	0x3
	.byte	0x1a
	.uaword	0x253
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x4
	.uaword	.LASF1
	.byte	0x3
	.byte	0x11
	.uaword	0x2f8
	.uleb128 0x5
	.uaword	.LASF1
	.byte	0x24
	.byte	0x3
	.byte	0x3f
	.uaword	0x3c2
	.uleb128 0x6
	.string	"u8DeviceID"
	.byte	0x3
	.byte	0x40
	.uaword	0x1c2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"pktAppFunc"
	.byte	0x3
	.byte	0x42
	.uaword	0x8a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"pktTimerDrv"
	.byte	0x3
	.byte	0x43
	.uaword	0x7a7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"vidDebug"
	.byte	0x3
	.byte	0x45
	.uaword	0x8b5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"vidModuleInit"
	.byte	0x3
	.byte	0x46
	.uaword	0x861
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"vidStartPwmOutput"
	.byte	0x3
	.byte	0x47
	.uaword	0x8cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.uaword	.LASF2
	.byte	0x3
	.byte	0x48
	.uaword	0x8cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"vidSetPwmBcDuty"
	.byte	0x3
	.byte	0x49
	.uaword	0x8ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.uaword	.LASF3
	.byte	0x3
	.byte	0x4a
	.uaword	0x904
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0
	.uleb128 0x4
	.uaword	.LASF4
	.byte	0x3
	.byte	0x12
	.uaword	0x3cd
	.uleb128 0x5
	.uaword	.LASF4
	.byte	0x30
	.byte	0x3
	.byte	0x30
	.uaword	0x50c
	.uleb128 0x6
	.string	"vidInit"
	.byte	0x3
	.byte	0x31
	.uaword	0x861
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"vidAscEntry"
	.byte	0x3
	.byte	0x32
	.uaword	0x861
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"vidMotorStateMng"
	.byte	0x3
	.byte	0x33
	.uaword	0x861
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"vidSetPwmModReq"
	.byte	0x3
	.byte	0x34
	.uaword	0x878
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"vidSetClrFaultReq"
	.byte	0x3
	.byte	0x35
	.uaword	0x88a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"vidSetMotorSpdRdyFlg"
	.byte	0x3
	.byte	0x36
	.uaword	0x88a
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"u8GetPwmState"
	.byte	0x3
	.byte	0x37
	.uaword	0x896
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"bGetPwmRunFlag"
	.byte	0x3
	.byte	0x38
	.uaword	0x8a2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"bGetHwFaultIgbt"
	.byte	0x3
	.byte	0x39
	.uaword	0x8a2
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"bGetHwFaultIgbtL"
	.byte	0x3
	.byte	0x3a
	.uaword	0x8a2
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"bGetHwFaultIgbtH"
	.byte	0x3
	.byte	0x3b
	.uaword	0x8a2
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"bGetAscisClose"
	.byte	0x3
	.byte	0x3c
	.uaword	0x8a2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.byte	0
	.uleb128 0x8
	.string	"TPPC_GeneVarSet"
	.byte	0x18
	.byte	0x1
	.byte	0x15
	.uaword	0x627
	.uleb128 0x6
	.string	"TPPC_u16DutyDelayCnt"
	.byte	0x1
	.byte	0x16
	.uaword	0x1ed
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"TPPC_u8PrevDirSts"
	.byte	0x1
	.byte	0x17
	.uaword	0x1c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x6
	.string	"TPPC_u8CurDirSts"
	.byte	0x1
	.byte	0x18
	.uaword	0x1c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x6
	.string	"TPPC_u8DutyModeStt"
	.byte	0x1
	.byte	0x19
	.uaword	0x1c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"TPPC_u8DutyHoldTicks"
	.byte	0x1
	.byte	0x1a
	.uaword	0x1c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x6
	.string	"TPPC_f32CurCycleDuty"
	.byte	0x1
	.byte	0x1b
	.uaword	0x253
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"f32PwmDutyPhysUZ"
	.byte	0x1
	.byte	0x1d
	.uaword	0x253
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"f32PwmDutyPhysVZ"
	.byte	0x1
	.byte	0x1e
	.uaword	0x253
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"f32PwmDutyPhysWZ"
	.byte	0x1
	.byte	0x1f
	.uaword	0x253
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0
	.uleb128 0x4
	.uaword	.LASF5
	.byte	0x3
	.byte	0x15
	.uaword	0x632
	.uleb128 0x5
	.uaword	.LASF5
	.byte	0x38
	.byte	0x3
	.byte	0x1d
	.uaword	0x78d
	.uleb128 0x6
	.string	"pvCommDrv"
	.byte	0x3
	.byte	0x1e
	.uaword	0x78d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"pkvCfgHandle"
	.byte	0x3
	.byte	0x1f
	.uaword	0x78f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"vidIntHwInit"
	.byte	0x3
	.byte	0x21
	.uaword	0x7b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"vidIntTrigEnable"
	.byte	0x3
	.byte	0x22
	.uaword	0x7c9
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.uaword	.LASF2
	.byte	0x3
	.byte	0x23
	.uaword	0x7c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"vidTrigLowAsc"
	.byte	0x3
	.byte	0x25
	.uaword	0x7b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"vidTrigHighAsc"
	.byte	0x3
	.byte	0x26
	.uaword	0x7b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"vidPwmEnable"
	.byte	0x3
	.byte	0x27
	.uaword	0x7b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"vidPwmDisable"
	.byte	0x3
	.byte	0x28
	.uaword	0x7b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"vidPwmDisableImmediately"
	.byte	0x3
	.byte	0x29
	.uaword	0x7b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"vidSetPwmOutState"
	.byte	0x3
	.byte	0x2a
	.uaword	0x7e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"vidSetPwmDuty"
	.byte	0x3
	.byte	0x2b
	.uaword	0x80c
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.uaword	.LASF3
	.byte	0x3
	.byte	0x2c
	.uaword	0x823
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"vidSetSingleChPhase"
	.byte	0x3
	.byte	0x2d
	.uaword	0x83f
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.uleb128 0xa
	.byte	0x4
	.uaword	0x795
	.uleb128 0xb
	.uleb128 0xc
	.byte	0x1
	.uaword	0x7a2
	.uleb128 0xd
	.uaword	0x7a2
	.byte	0
	.uleb128 0xe
	.uaword	0x7a7
	.uleb128 0xa
	.byte	0x4
	.uaword	0x7ad
	.uleb128 0xe
	.uaword	0x627
	.uleb128 0xa
	.byte	0x4
	.uaword	0x796
	.uleb128 0xc
	.byte	0x1
	.uaword	0x7c9
	.uleb128 0xd
	.uaword	0x7a2
	.uleb128 0xd
	.uaword	0x26c
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.uaword	0x7b8
	.uleb128 0xc
	.byte	0x1
	.uaword	0x7e5
	.uleb128 0xd
	.uaword	0x7a2
	.uleb128 0xd
	.uaword	0x1c2
	.uleb128 0xd
	.uaword	0x1c2
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.uaword	0x7cf
	.uleb128 0xc
	.byte	0x1
	.uaword	0x7fc
	.uleb128 0xd
	.uaword	0x7a2
	.uleb128 0xd
	.uaword	0x7fc
	.byte	0
	.uleb128 0xe
	.uaword	0x801
	.uleb128 0xa
	.byte	0x4
	.uaword	0x807
	.uleb128 0xe
	.uaword	0x29c
	.uleb128 0xa
	.byte	0x4
	.uaword	0x7eb
	.uleb128 0xc
	.byte	0x1
	.uaword	0x823
	.uleb128 0xd
	.uaword	0x7a2
	.uleb128 0xd
	.uaword	0x253
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.uaword	0x812
	.uleb128 0xc
	.byte	0x1
	.uaword	0x83f
	.uleb128 0xd
	.uaword	0x7a2
	.uleb128 0xd
	.uaword	0x253
	.uleb128 0xd
	.uaword	0x1c2
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.uaword	0x829
	.uleb128 0xc
	.byte	0x1
	.uaword	0x851
	.uleb128 0xd
	.uaword	0x851
	.byte	0
	.uleb128 0xe
	.uaword	0x856
	.uleb128 0xa
	.byte	0x4
	.uaword	0x85c
	.uleb128 0xe
	.uaword	0x2ed
	.uleb128 0xa
	.byte	0x4
	.uaword	0x845
	.uleb128 0xc
	.byte	0x1
	.uaword	0x873
	.uleb128 0xd
	.uaword	0x873
	.byte	0
	.uleb128 0xe
	.uaword	0x1ed
	.uleb128 0xa
	.byte	0x4
	.uaword	0x867
	.uleb128 0xc
	.byte	0x1
	.uaword	0x88a
	.uleb128 0xd
	.uaword	0x26c
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.uaword	0x87e
	.uleb128 0xf
	.byte	0x1
	.uaword	0x1c2
	.uleb128 0xa
	.byte	0x4
	.uaword	0x890
	.uleb128 0xf
	.byte	0x1
	.uaword	0x26c
	.uleb128 0xa
	.byte	0x4
	.uaword	0x89c
	.uleb128 0xa
	.byte	0x4
	.uaword	0x8ae
	.uleb128 0xe
	.uaword	0x3c2
	.uleb128 0x10
	.byte	0x1
	.uleb128 0xa
	.byte	0x4
	.uaword	0x8b3
	.uleb128 0xc
	.byte	0x1
	.uaword	0x8cc
	.uleb128 0xd
	.uaword	0x851
	.uleb128 0xd
	.uaword	0x26c
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.uaword	0x8bb
	.uleb128 0xc
	.byte	0x1
	.uaword	0x8ed
	.uleb128 0xd
	.uaword	0x851
	.uleb128 0xd
	.uaword	0x253
	.uleb128 0xd
	.uaword	0x253
	.uleb128 0xd
	.uaword	0x253
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.uaword	0x8d2
	.uleb128 0xc
	.byte	0x1
	.uaword	0x904
	.uleb128 0xd
	.uaword	0x851
	.uleb128 0xd
	.uaword	0x253
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.uaword	0x8f3
	.uleb128 0x11
	.byte	0x1
	.string	"TPPC_vidModuleInit"
	.byte	0x1
	.byte	0x38
	.byte	0x1
	.uaword	.LFB0
	.uaword	.LFE0
	.uaword	.LLST0
	.byte	0x1
	.uaword	0x95e
	.uleb128 0x12
	.uaword	.LASF6
	.byte	0x1
	.byte	0x38
	.uaword	0x851
	.uaword	.LLST1
	.uleb128 0x13
	.string	"u8DevID"
	.byte	0x1
	.byte	0x3a
	.uaword	0x1c2
	.uaword	.LLST2
	.uleb128 0x14
	.uaword	.LVL4
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.string	"TPPC_u16GetPwmDeadTime"
	.byte	0x1
	.byte	0x4f
	.byte	0x1
	.uaword	0x1ed
	.uaword	.LFB1
	.uaword	.LFE1
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x9b6
	.uleb128 0x16
	.uaword	.LASF6
	.byte	0x1
	.byte	0x4f
	.uaword	0x851
	.byte	0x1
	.byte	0x64
	.uleb128 0x17
	.string	"u16LocPwmDeadTime"
	.byte	0x1
	.byte	0x51
	.uaword	0x1ed
	.byte	0
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"TPPC_vidStartPwmOutput"
	.byte	0x1
	.byte	0x62
	.byte	0x1
	.uaword	.LFB2
	.uaword	.LFE2
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xa13
	.uleb128 0x12
	.uaword	.LASF6
	.byte	0x1
	.byte	0x62
	.uaword	0x851
	.uaword	.LLST3
	.uleb128 0x12
	.uaword	.LASF7
	.byte	0x1
	.byte	0x62
	.uaword	0x26c
	.uaword	.LLST4
	.uleb128 0x19
	.uaword	.LVL8
	.byte	0x1
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x19
	.uaword	.LVL9
	.byte	0x1
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"TPPC_vidStartTimer"
	.byte	0x1
	.byte	0x78
	.byte	0x1
	.uaword	.LFB3
	.uaword	.LFE3
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xa63
	.uleb128 0x12
	.uaword	.LASF6
	.byte	0x1
	.byte	0x78
	.uaword	0x851
	.uaword	.LLST5
	.uleb128 0x12
	.uaword	.LASF7
	.byte	0x1
	.byte	0x78
	.uaword	0x26c
	.uaword	.LLST6
	.uleb128 0x19
	.uaword	.LVL12
	.byte	0x1
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"TPPC_vidSetPwmBcDuty"
	.byte	0x1
	.byte	0x86
	.byte	0x1
	.uaword	.LFB4
	.uaword	.LFE4
	.uaword	.LLST7
	.byte	0x1
	.uaword	0xafa
	.uleb128 0x12
	.uaword	.LASF6
	.byte	0x1
	.byte	0x86
	.uaword	0x851
	.uaword	.LLST8
	.uleb128 0x1a
	.string	"f32DutyU"
	.byte	0x1
	.byte	0x87
	.uaword	0x253
	.uaword	.LLST9
	.uleb128 0x1a
	.string	"f32DutyV"
	.byte	0x1
	.byte	0x88
	.uaword	0x253
	.uaword	.LLST10
	.uleb128 0x1a
	.string	"f32DutyW"
	.byte	0x1
	.byte	0x89
	.uaword	0x253
	.uaword	.LLST11
	.uleb128 0x1b
	.string	"tDuty"
	.byte	0x1
	.byte	0x8b
	.uaword	0x29c
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1c
	.uaword	.LVL18
	.byte	0x1
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x1d
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"TPPC_vidSetPwmFreq"
	.byte	0x1
	.byte	0xa1
	.byte	0x1
	.uaword	.LFB5
	.uaword	.LFE5
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xb59
	.uleb128 0x12
	.uaword	.LASF6
	.byte	0x1
	.byte	0xa1
	.uaword	0x851
	.uaword	.LLST12
	.uleb128 0x1a
	.string	"f32Freq"
	.byte	0x1
	.byte	0xa1
	.uaword	0x253
	.uaword	.LLST13
	.uleb128 0x1c
	.uaword	.LVL28
	.byte	0x1
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x1d
	.byte	0x1
	.byte	0x54
	.byte	0x6
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1aa
	.byte	0
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"TPPC_vidSwitchPwmUpdEvent"
	.byte	0x1
	.byte	0xb1
	.byte	0x1
	.uaword	.LFB6
	.uaword	.LFE6
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xb96
	.uleb128 0x16
	.uaword	.LASF6
	.byte	0x1
	.byte	0xb1
	.uaword	0x851
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x1e
	.uaword	0x50c
	.uaword	0xba6
	.uleb128 0x1f
	.uaword	0xba6
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x20
	.string	"TPPC_xGeneVarSet"
	.byte	0x1
	.byte	0x2d
	.uaword	0xb96
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x8
	.uleb128 0x13
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x2113
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x6
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x2113
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LFB0
	.uaword	.LCFI0
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0
	.uaword	.LFE0
	.uahalf	0x2
	.byte	0x8e
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL3
	.uaword	.LVL4-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL4-1
	.uaword	.LFE0
	.uahalf	0x2
	.byte	0x8e
	.sleb128 -12
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL7
	.uaword	.LFE2
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL6
	.uaword	.LVL8-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL8-1
	.uaword	.LVL8
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL8
	.uaword	.LVL9-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL9-1
	.uaword	.LFE2
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL11
	.uaword	.LFE3
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL10
	.uaword	.LVL12-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL12-1
	.uaword	.LFE3
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LFB4
	.uaword	.LCFI1
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI1
	.uaword	.LFE4
	.uahalf	0x2
	.byte	0x8a
	.sleb128 16
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL13
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LFE4
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL14
	.uaword	.LVL18-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL18
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL25
	.uaword	.LFE4
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1aa
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL13
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL15
	.uaword	.LVL18-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL18
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x5
	.uleb128 0x1aa
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LFE4
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL13
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL16
	.uaword	.LVL18-1
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL18
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x6
	.uleb128 0x1aa
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LFE4
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL26
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL27
	.uaword	.LFE5
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL26
	.uaword	.LVL28-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL28-1
	.uaword	.LFE5
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1aa
	.byte	0x9f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x4c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB0
	.uaword	.LFE0-.LFB0
	.uaword	.LFB1
	.uaword	.LFE1-.LFB1
	.uaword	.LFB2
	.uaword	.LFE2-.LFB2
	.uaword	.LFB3
	.uaword	.LFE3-.LFB3
	.uaword	.LFB4
	.uaword	.LFE4-.LFB4
	.uaword	.LFB5
	.uaword	.LFE5-.LFB5
	.uaword	.LFB6
	.uaword	.LFE6-.LFB6
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB0
	.uaword	.LFE0
	.uaword	.LFB1
	.uaword	.LFE1
	.uaword	.LFB2
	.uaword	.LFE2
	.uaword	.LFB3
	.uaword	.LFE3
	.uaword	.LFB4
	.uaword	.LFE4
	.uaword	.LFB5
	.uaword	.LFE5
	.uaword	.LFB6
	.uaword	.LFE6
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"TPPC_Duty"
.LASF2:
	.string	"vidStartTimer"
.LASF4:
	.string	"TPPC_AppFunc"
.LASF6:
	.string	"kpktDev"
.LASF3:
	.string	"vidSetPwmFreq"
.LASF7:
	.string	"bStartCmd"
.LASF5:
	.string	"TPPC_TimerDriver"
.LASF1:
	.string	"TPPC_Device"
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
