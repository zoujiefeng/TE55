	.file	"TPPC.c"
.section .text,"ax",@progbits
.Ltext0:
.section .cpu3_psram,"awxc3",@progbits
	.align 1
	.global	TPPCDev_vidInit
	.type	TPPCDev_vidInit, @function
TPPCDev_vidInit:
.LFB0:
	.file 1 "bswcdd\\TPPC\\TPPC.c"
	.loc 1 50 0
.LVL0:
	.loc 1 51 0
	movh.a	%a15, hi:TPPC_axDeviceSet
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:TPPC_axDeviceSet
	madd	%d2, %d15, %d4, 36
	mov.a	%a15, %d2
	mov.a	%a4, %d2
	ld.a	%a2, [%a15] 4
	ld.a	%a2, [%a2]0
	calli	%a2
.LVL1:
	.loc 1 52 0
	ld.a	%a2, [%a15] 16
	mov.aa	%a4, %a15
	ji	%a2
.LVL2:
.LFE0:
	.size	TPPCDev_vidInit, .-TPPCDev_vidInit
	.align 1
	.global	TPPCDev_vidAscEntry
	.type	TPPCDev_vidAscEntry, @function
TPPCDev_vidAscEntry:
.LFB1:
	.loc 1 56 0
.LVL3:
	.loc 1 57 0
	movh.a	%a4, hi:TPPC_axDeviceSet
	mov.d	%d2, %a4
	addi	%d15, %d2, lo:TPPC_axDeviceSet
	madd	%d2, %d15, %d4, 36
	mov.a	%a4, %d2
	ld.a	%a15, [%a4] 4
	ld.a	%a15, [%a15] 4
	ji	%a15
.LVL4:
.LFE1:
	.size	TPPCDev_vidAscEntry, .-TPPCDev_vidAscEntry
	.align 1
	.global	TPPCDev_vidStartTimer
	.type	TPPCDev_vidStartTimer, @function
TPPCDev_vidStartTimer:
.LFB2:
	.loc 1 61 0
.LVL5:
	.loc 1 62 0
	movh.a	%a4, hi:TPPC_axDeviceSet
	mov.d	%d2, %a4
	addi	%d15, %d2, lo:TPPC_axDeviceSet
	madd	%d2, %d15, %d4, 36
	mov	%d4, 1
.LVL6:
	mov.a	%a4, %d2
	ld.a	%a15, [%a4] 24
	ji	%a15
.LVL7:
.LFE2:
	.size	TPPCDev_vidStartTimer, .-TPPCDev_vidStartTimer
	.align 1
	.global	TPPCDev_vidStopPwmOutput
	.type	TPPCDev_vidStopPwmOutput, @function
TPPCDev_vidStopPwmOutput:
.LFB3:
	.loc 1 66 0
.LVL8:
	.loc 1 67 0
	movh.a	%a4, hi:TPPC_axDeviceSet
	mov.d	%d2, %a4
	addi	%d15, %d2, lo:TPPC_axDeviceSet
	madd	%d2, %d15, %d4, 36
	mov	%d4, 0
.LVL9:
	mov.a	%a4, %d2
	ld.a	%a15, [%a4] 20
	ji	%a15
.LVL10:
.LFE3:
	.size	TPPCDev_vidStopPwmOutput, .-TPPCDev_vidStopPwmOutput
	.align 1
	.global	TPPCDev_vidMotorStateMng
	.type	TPPCDev_vidMotorStateMng, @function
TPPCDev_vidMotorStateMng:
.LFB4:
	.loc 1 71 0
.LVL11:
	.loc 1 72 0
	movh.a	%a4, hi:TPPC_axDeviceSet
	mov.d	%d2, %a4
	addi	%d15, %d2, lo:TPPC_axDeviceSet
	madd	%d2, %d15, %d4, 36
	mov.a	%a4, %d2
	ld.a	%a15, [%a4] 4
	ld.a	%a15, [%a15] 8
	ji	%a15
.LVL12:
.LFE4:
	.size	TPPCDev_vidMotorStateMng, .-TPPCDev_vidMotorStateMng
	.align 1
	.global	TPPCDev_vidSetPwmModReq
	.type	TPPCDev_vidSetPwmModReq, @function
TPPCDev_vidSetPwmModReq:
.LFB5:
	.loc 1 76 0
.LVL13:
	.loc 1 77 0
	movh.a	%a15, hi:TPPC_axDeviceSet
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:TPPC_axDeviceSet
	madd	%d2, %d15, %d4, 36
	mov	%d4, %d5
.LVL14:
	mov.a	%a15, %d2
	ld.a	%a15, [%a15] 4
	ld.a	%a15, [%a15] 12
	ji	%a15
.LVL15:
.LFE5:
	.size	TPPCDev_vidSetPwmModReq, .-TPPCDev_vidSetPwmModReq
	.align 1
	.global	TPPCDev_vidSetClrFaultReq
	.type	TPPCDev_vidSetClrFaultReq, @function
TPPCDev_vidSetClrFaultReq:
.LFB6:
	.loc 1 81 0
.LVL16:
	.loc 1 82 0
	movh.a	%a15, hi:TPPC_axDeviceSet
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:TPPC_axDeviceSet
	madd	%d2, %d15, %d4, 36
	mov	%d4, %d5
.LVL17:
	mov.a	%a15, %d2
	ld.a	%a15, [%a15] 4
	ld.a	%a15, [%a15] 16
	ji	%a15
.LVL18:
.LFE6:
	.size	TPPCDev_vidSetClrFaultReq, .-TPPCDev_vidSetClrFaultReq
	.align 1
	.global	TPPCDev_vidSetMotorSpdRdyFlg
	.type	TPPCDev_vidSetMotorSpdRdyFlg, @function
TPPCDev_vidSetMotorSpdRdyFlg:
.LFB7:
	.loc 1 86 0
.LVL19:
	.loc 1 87 0
	movh.a	%a15, hi:TPPC_axDeviceSet
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:TPPC_axDeviceSet
	madd	%d2, %d15, %d4, 36
	mov	%d4, %d5
.LVL20:
	mov.a	%a15, %d2
	ld.a	%a15, [%a15] 4
	ld.a	%a15, [%a15] 20
	ji	%a15
.LVL21:
.LFE7:
	.size	TPPCDev_vidSetMotorSpdRdyFlg, .-TPPCDev_vidSetMotorSpdRdyFlg
	.align 1
	.global	TPPCDev_u8GetPwmState
	.type	TPPCDev_u8GetPwmState, @function
TPPCDev_u8GetPwmState:
.LFB8:
	.loc 1 91 0
.LVL22:
	.loc 1 92 0
	movh.a	%a15, hi:TPPC_axDeviceSet
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:TPPC_axDeviceSet
	madd	%d2, %d15, %d4, 36
	mov.a	%a15, %d2
	ld.a	%a15, [%a15] 4
	ld.a	%a15, [%a15] 24
	ji	%a15
.LVL23:
.LFE8:
	.size	TPPCDev_u8GetPwmState, .-TPPCDev_u8GetPwmState
	.align 1
	.global	TPPCDev_bGetPwmRunFlag
	.type	TPPCDev_bGetPwmRunFlag, @function
TPPCDev_bGetPwmRunFlag:
.LFB9:
	.loc 1 96 0
.LVL24:
	.loc 1 97 0
	movh.a	%a15, hi:TPPC_axDeviceSet
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:TPPC_axDeviceSet
	madd	%d2, %d15, %d4, 36
	mov.a	%a15, %d2
	ld.a	%a15, [%a15] 4
	ld.a	%a15, [%a15] 28
	ji	%a15
.LVL25:
.LFE9:
	.size	TPPCDev_bGetPwmRunFlag, .-TPPCDev_bGetPwmRunFlag
	.align 1
	.global	TPPCDev_bGetHwFaultIgbt
	.type	TPPCDev_bGetHwFaultIgbt, @function
TPPCDev_bGetHwFaultIgbt:
.LFB10:
	.loc 1 101 0
.LVL26:
	.loc 1 102 0
	movh.a	%a15, hi:TPPC_axDeviceSet
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:TPPC_axDeviceSet
	madd	%d2, %d15, %d4, 36
	mov.a	%a15, %d2
	ld.a	%a15, [%a15] 4
	ld.a	%a15, [%a15] 32
	ji	%a15
.LVL27:
.LFE10:
	.size	TPPCDev_bGetHwFaultIgbt, .-TPPCDev_bGetHwFaultIgbt
	.align 1
	.global	TPPCDev_bGetHwFaultIgbtL
	.type	TPPCDev_bGetHwFaultIgbtL, @function
TPPCDev_bGetHwFaultIgbtL:
.LFB11:
	.loc 1 106 0
.LVL28:
	.loc 1 107 0
	movh.a	%a15, hi:TPPC_axDeviceSet
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:TPPC_axDeviceSet
	madd	%d2, %d15, %d4, 36
	mov.a	%a15, %d2
	ld.a	%a15, [%a15] 4
	ld.a	%a15, [%a15] 36
	ji	%a15
.LVL29:
.LFE11:
	.size	TPPCDev_bGetHwFaultIgbtL, .-TPPCDev_bGetHwFaultIgbtL
	.align 1
	.global	TPPCDev_bGetHwFaultIgbtH
	.type	TPPCDev_bGetHwFaultIgbtH, @function
TPPCDev_bGetHwFaultIgbtH:
.LFB12:
	.loc 1 111 0
.LVL30:
	.loc 1 112 0
	movh.a	%a15, hi:TPPC_axDeviceSet
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:TPPC_axDeviceSet
	madd	%d2, %d15, %d4, 36
	mov.a	%a15, %d2
	ld.a	%a15, [%a15] 4
	ld.a	%a15, [%a15] 40
	ji	%a15
.LVL31:
.LFE12:
	.size	TPPCDev_bGetHwFaultIgbtH, .-TPPCDev_bGetHwFaultIgbtH
	.align 1
	.global	TPPCDev_bGetAscisClose
	.type	TPPCDev_bGetAscisClose, @function
TPPCDev_bGetAscisClose:
.LFB13:
	.loc 1 116 0
.LVL32:
	.loc 1 117 0
	movh.a	%a15, hi:TPPC_axDeviceSet
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:TPPC_axDeviceSet
	madd	%d2, %d15, %d4, 36
	mov.a	%a15, %d2
	ld.a	%a15, [%a15] 4
	ld.a	%a15, [%a15] 44
	ji	%a15
.LVL33:
.LFE13:
	.size	TPPCDev_bGetAscisClose, .-TPPCDev_bGetAscisClose
	.align 1
	.global	TPPCDev_vidSetPwmBcDuty
	.type	TPPCDev_vidSetPwmBcDuty, @function
TPPCDev_vidSetPwmBcDuty:
.LFB14:
	.loc 1 130 0
.LVL34:
	.loc 1 131 0
	movh.a	%a4, hi:TPPC_axDeviceSet
	mov.d	%d2, %a4
	addi	%d15, %d2, lo:TPPC_axDeviceSet
	madd	%d2, %d15, %d4, 36
	mov	%e4, %d6, %d5
.LVL35:
	mov	%d6, %d7
.LVL36:
	mov.a	%a4, %d2
	ld.a	%a15, [%a4] 28
	ji	%a15
.LVL37:
.LFE14:
	.size	TPPCDev_vidSetPwmBcDuty, .-TPPCDev_vidSetPwmBcDuty
	.align 1
	.global	TPPCDev_vidSetPwmFreq
	.type	TPPCDev_vidSetPwmFreq, @function
TPPCDev_vidSetPwmFreq:
.LFB15:
	.loc 1 144 0
.LVL38:
	.loc 1 145 0
	movh.a	%a4, hi:TPPC_axDeviceSet
	mov.d	%d2, %a4
	addi	%d15, %d2, lo:TPPC_axDeviceSet
	madd	%d2, %d15, %d4, 36
	mov	%d4, %d5
.LVL39:
	mov.a	%a4, %d2
	ld.a	%a15, [%a4] 32
	ji	%a15
.LVL40:
.LFE15:
	.size	TPPCDev_vidSetPwmFreq, .-TPPCDev_vidSetPwmFreq
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
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB6
	.uaword	.LFE6-.LFB6
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB7
	.uaword	.LFE7-.LFB7
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB8
	.uaword	.LFE8-.LFB8
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB9
	.uaword	.LFE9-.LFB9
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB10
	.uaword	.LFE10-.LFB10
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB11
	.uaword	.LFE11-.LFB11
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB12
	.uaword	.LFE12-.LFB12
	.align 2
.LEFDE24:
.LSFDE26:
	.uaword	.LEFDE26-.LASFDE26
.LASFDE26:
	.uaword	.Lframe0
	.uaword	.LFB13
	.uaword	.LFE13-.LFB13
	.align 2
.LEFDE26:
.LSFDE28:
	.uaword	.LEFDE28-.LASFDE28
.LASFDE28:
	.uaword	.Lframe0
	.uaword	.LFB14
	.uaword	.LFE14-.LFB14
	.align 2
.LEFDE28:
.LSFDE30:
	.uaword	.LEFDE30-.LASFDE30
.LASFDE30:
	.uaword	.Lframe0
	.uaword	.LFB15
	.uaword	.LFE15-.LFB15
	.align 2
.LEFDE30:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bswcdd\\TPPC\\0_Devices\\TPPC_DeviceType.h"
	.file 4 ".\\output\\inc/..\\..\\bswcdd\\TPPC\\0_Devices\\TPPC_Device.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xd79
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\TPPC\\TPPC.c"
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
	.uaword	0x1c6
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
	.uaword	0x1f2
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
	.uaword	0x1a1
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"double"
	.uleb128 0x3
	.string	"boolean"
	.byte	0x2
	.byte	0x80
	.uaword	0x1c6
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
	.uaword	0x29e
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0xc
	.byte	0x3
	.byte	0x17
	.uaword	0x2e4
	.uleb128 0x6
	.string	"f32Duty1"
	.byte	0x3
	.byte	0x18
	.uaword	0x24a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"f32Duty2"
	.byte	0x3
	.byte	0x19
	.uaword	0x24a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"f32Duty3"
	.byte	0x3
	.byte	0x1a
	.uaword	0x24a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x4
	.uaword	.LASF1
	.byte	0x3
	.byte	0x11
	.uaword	0x2ef
	.uleb128 0x5
	.uaword	.LASF1
	.byte	0x24
	.byte	0x3
	.byte	0x3f
	.uaword	0x3b9
	.uleb128 0x6
	.string	"u8DeviceID"
	.byte	0x3
	.byte	0x40
	.uaword	0x1b9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"pktAppFunc"
	.byte	0x3
	.byte	0x42
	.uaword	0x784
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"pktTimerDrv"
	.byte	0x3
	.byte	0x43
	.uaword	0x683
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"vidDebug"
	.byte	0x3
	.byte	0x45
	.uaword	0x791
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"vidModuleInit"
	.byte	0x3
	.byte	0x46
	.uaword	0x73d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"vidStartPwmOutput"
	.byte	0x3
	.byte	0x47
	.uaword	0x7a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.uaword	.LASF2
	.byte	0x3
	.byte	0x48
	.uaword	0x7a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"vidSetPwmBcDuty"
	.byte	0x3
	.byte	0x49
	.uaword	0x7c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.uaword	.LASF3
	.byte	0x3
	.byte	0x4a
	.uaword	0x7e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0
	.uleb128 0x4
	.uaword	.LASF4
	.byte	0x3
	.byte	0x12
	.uaword	0x3c4
	.uleb128 0x5
	.uaword	.LASF4
	.byte	0x30
	.byte	0x3
	.byte	0x30
	.uaword	0x503
	.uleb128 0x6
	.string	"vidInit"
	.byte	0x3
	.byte	0x31
	.uaword	0x73d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"vidAscEntry"
	.byte	0x3
	.byte	0x32
	.uaword	0x73d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"vidMotorStateMng"
	.byte	0x3
	.byte	0x33
	.uaword	0x73d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"vidSetPwmModReq"
	.byte	0x3
	.byte	0x34
	.uaword	0x754
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"vidSetClrFaultReq"
	.byte	0x3
	.byte	0x35
	.uaword	0x766
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"vidSetMotorSpdRdyFlg"
	.byte	0x3
	.byte	0x36
	.uaword	0x766
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"u8GetPwmState"
	.byte	0x3
	.byte	0x37
	.uaword	0x772
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"bGetPwmRunFlag"
	.byte	0x3
	.byte	0x38
	.uaword	0x77e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"bGetHwFaultIgbt"
	.byte	0x3
	.byte	0x39
	.uaword	0x77e
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"bGetHwFaultIgbtL"
	.byte	0x3
	.byte	0x3a
	.uaword	0x77e
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"bGetHwFaultIgbtH"
	.byte	0x3
	.byte	0x3b
	.uaword	0x77e
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"bGetAscisClose"
	.byte	0x3
	.byte	0x3c
	.uaword	0x77e
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.byte	0
	.uleb128 0x4
	.uaword	.LASF5
	.byte	0x3
	.byte	0x15
	.uaword	0x50e
	.uleb128 0x5
	.uaword	.LASF5
	.byte	0x38
	.byte	0x3
	.byte	0x1d
	.uaword	0x669
	.uleb128 0x6
	.string	"pvCommDrv"
	.byte	0x3
	.byte	0x1e
	.uaword	0x669
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"pkvCfgHandle"
	.byte	0x3
	.byte	0x1f
	.uaword	0x66b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"vidIntHwInit"
	.byte	0x3
	.byte	0x21
	.uaword	0x68e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"vidIntTrigEnable"
	.byte	0x3
	.byte	0x22
	.uaword	0x6a5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.uaword	.LASF2
	.byte	0x3
	.byte	0x23
	.uaword	0x6a5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"vidTrigLowAsc"
	.byte	0x3
	.byte	0x25
	.uaword	0x68e
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"vidTrigHighAsc"
	.byte	0x3
	.byte	0x26
	.uaword	0x68e
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"vidPwmEnable"
	.byte	0x3
	.byte	0x27
	.uaword	0x68e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"vidPwmDisable"
	.byte	0x3
	.byte	0x28
	.uaword	0x68e
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"vidPwmDisableImmediately"
	.byte	0x3
	.byte	0x29
	.uaword	0x68e
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"vidSetPwmOutState"
	.byte	0x3
	.byte	0x2a
	.uaword	0x6c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"vidSetPwmDuty"
	.byte	0x3
	.byte	0x2b
	.uaword	0x6e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.uaword	.LASF3
	.byte	0x3
	.byte	0x2c
	.uaword	0x6ff
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"vidSetSingleChPhase"
	.byte	0x3
	.byte	0x2d
	.uaword	0x71b
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uleb128 0x9
	.byte	0x4
	.uaword	0x671
	.uleb128 0xa
	.uleb128 0xb
	.byte	0x1
	.uaword	0x67e
	.uleb128 0xc
	.uaword	0x67e
	.byte	0
	.uleb128 0xd
	.uaword	0x683
	.uleb128 0x9
	.byte	0x4
	.uaword	0x689
	.uleb128 0xd
	.uaword	0x503
	.uleb128 0x9
	.byte	0x4
	.uaword	0x672
	.uleb128 0xb
	.byte	0x1
	.uaword	0x6a5
	.uleb128 0xc
	.uaword	0x67e
	.uleb128 0xc
	.uaword	0x263
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.uaword	0x694
	.uleb128 0xb
	.byte	0x1
	.uaword	0x6c1
	.uleb128 0xc
	.uaword	0x67e
	.uleb128 0xc
	.uaword	0x1b9
	.uleb128 0xc
	.uaword	0x1b9
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.uaword	0x6ab
	.uleb128 0xb
	.byte	0x1
	.uaword	0x6d8
	.uleb128 0xc
	.uaword	0x67e
	.uleb128 0xc
	.uaword	0x6d8
	.byte	0
	.uleb128 0xd
	.uaword	0x6dd
	.uleb128 0x9
	.byte	0x4
	.uaword	0x6e3
	.uleb128 0xd
	.uaword	0x293
	.uleb128 0x9
	.byte	0x4
	.uaword	0x6c7
	.uleb128 0xb
	.byte	0x1
	.uaword	0x6ff
	.uleb128 0xc
	.uaword	0x67e
	.uleb128 0xc
	.uaword	0x24a
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.uaword	0x6ee
	.uleb128 0xb
	.byte	0x1
	.uaword	0x71b
	.uleb128 0xc
	.uaword	0x67e
	.uleb128 0xc
	.uaword	0x24a
	.uleb128 0xc
	.uaword	0x1b9
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.uaword	0x705
	.uleb128 0xb
	.byte	0x1
	.uaword	0x72d
	.uleb128 0xc
	.uaword	0x72d
	.byte	0
	.uleb128 0xd
	.uaword	0x732
	.uleb128 0x9
	.byte	0x4
	.uaword	0x738
	.uleb128 0xd
	.uaword	0x2e4
	.uleb128 0x9
	.byte	0x4
	.uaword	0x721
	.uleb128 0xb
	.byte	0x1
	.uaword	0x74f
	.uleb128 0xc
	.uaword	0x74f
	.byte	0
	.uleb128 0xd
	.uaword	0x1e4
	.uleb128 0x9
	.byte	0x4
	.uaword	0x743
	.uleb128 0xb
	.byte	0x1
	.uaword	0x766
	.uleb128 0xc
	.uaword	0x263
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.uaword	0x75a
	.uleb128 0xe
	.byte	0x1
	.uaword	0x1b9
	.uleb128 0x9
	.byte	0x4
	.uaword	0x76c
	.uleb128 0xe
	.byte	0x1
	.uaword	0x263
	.uleb128 0x9
	.byte	0x4
	.uaword	0x778
	.uleb128 0x9
	.byte	0x4
	.uaword	0x78a
	.uleb128 0xd
	.uaword	0x3b9
	.uleb128 0xf
	.byte	0x1
	.uleb128 0x9
	.byte	0x4
	.uaword	0x78f
	.uleb128 0xb
	.byte	0x1
	.uaword	0x7a8
	.uleb128 0xc
	.uaword	0x72d
	.uleb128 0xc
	.uaword	0x263
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.uaword	0x797
	.uleb128 0xb
	.byte	0x1
	.uaword	0x7c9
	.uleb128 0xc
	.uaword	0x72d
	.uleb128 0xc
	.uaword	0x24a
	.uleb128 0xc
	.uaword	0x24a
	.uleb128 0xc
	.uaword	0x24a
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.uaword	0x7ae
	.uleb128 0xb
	.byte	0x1
	.uaword	0x7e0
	.uleb128 0xc
	.uaword	0x72d
	.uleb128 0xc
	.uaword	0x24a
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.uaword	0x7cf
	.uleb128 0x10
	.byte	0x1
	.string	"TPPCDev_vidInit"
	.byte	0x1
	.byte	0x31
	.byte	0x1
	.uaword	.LFB0
	.uaword	.LFE0
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x83c
	.uleb128 0x11
	.uaword	.LASF6
	.byte	0x1
	.byte	0x31
	.uaword	0x83c
	.uaword	.LLST0
	.uleb128 0x12
	.uaword	.LVL1
	.uaword	0x82a
	.uleb128 0x13
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.uaword	.LVL2
	.byte	0x1
	.byte	0x3
	.byte	0x8f
	.sleb128 16
	.byte	0x6
	.uleb128 0x13
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xd
	.uaword	0x1b9
	.uleb128 0x10
	.byte	0x1
	.string	"TPPCDev_vidAscEntry"
	.byte	0x1
	.byte	0x37
	.byte	0x1
	.uaword	.LFB1
	.uaword	.LFE1
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x883
	.uleb128 0x11
	.uaword	.LASF6
	.byte	0x1
	.byte	0x37
	.uaword	0x83c
	.uaword	.LLST1
	.uleb128 0x15
	.uaword	.LVL4
	.byte	0x1
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.string	"TPPCDev_vidStartTimer"
	.byte	0x1
	.byte	0x3c
	.byte	0x1
	.uaword	.LFB2
	.uaword	.LFE2
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x8cd
	.uleb128 0x11
	.uaword	.LASF6
	.byte	0x1
	.byte	0x3c
	.uaword	0x83c
	.uaword	.LLST2
	.uleb128 0x14
	.uaword	.LVL7
	.byte	0x1
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x13
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.string	"TPPCDev_vidStopPwmOutput"
	.byte	0x1
	.byte	0x41
	.byte	0x1
	.uaword	.LFB3
	.uaword	.LFE3
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x91a
	.uleb128 0x11
	.uaword	.LASF6
	.byte	0x1
	.byte	0x41
	.uaword	0x83c
	.uaword	.LLST3
	.uleb128 0x14
	.uaword	.LVL10
	.byte	0x1
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x13
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.string	"TPPCDev_vidMotorStateMng"
	.byte	0x1
	.byte	0x46
	.byte	0x1
	.uaword	.LFB4
	.uaword	.LFE4
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x961
	.uleb128 0x11
	.uaword	.LASF6
	.byte	0x1
	.byte	0x46
	.uaword	0x83c
	.uaword	.LLST4
	.uleb128 0x15
	.uaword	.LVL12
	.byte	0x1
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.string	"TPPCDev_vidSetPwmModReq"
	.byte	0x1
	.byte	0x4b
	.byte	0x1
	.uaword	.LFB5
	.uaword	.LFE5
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x9bc
	.uleb128 0x11
	.uaword	.LASF6
	.byte	0x1
	.byte	0x4b
	.uaword	0x83c
	.uaword	.LLST5
	.uleb128 0x16
	.string	"u16PwmMod"
	.byte	0x1
	.byte	0x4b
	.uaword	0x74f
	.uaword	.LLST6
	.uleb128 0x15
	.uaword	.LVL15
	.byte	0x1
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.string	"TPPCDev_vidSetClrFaultReq"
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.uaword	.LFB6
	.uaword	.LFE6
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xa1c
	.uleb128 0x11
	.uaword	.LASF6
	.byte	0x1
	.byte	0x50
	.uaword	0x83c
	.uaword	.LLST7
	.uleb128 0x16
	.string	"bClrFaultReq"
	.byte	0x1
	.byte	0x50
	.uaword	0xa1c
	.uaword	.LLST8
	.uleb128 0x15
	.uaword	.LVL18
	.byte	0x1
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0xd
	.uaword	0x263
	.uleb128 0x10
	.byte	0x1
	.string	"TPPCDev_vidSetMotorSpdRdyFlg"
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.uaword	.LFB7
	.uaword	.LFE7
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xa84
	.uleb128 0x11
	.uaword	.LASF6
	.byte	0x1
	.byte	0x55
	.uaword	0x83c
	.uaword	.LLST9
	.uleb128 0x16
	.string	"bMotorSpdRdy"
	.byte	0x1
	.byte	0x55
	.uaword	0xa1c
	.uaword	.LLST10
	.uleb128 0x15
	.uaword	.LVL21
	.byte	0x1
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"TPPCDev_u8GetPwmState"
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.uaword	0x1b9
	.uaword	.LFB8
	.uaword	.LFE8
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xacc
	.uleb128 0x11
	.uaword	.LASF6
	.byte	0x1
	.byte	0x5a
	.uaword	0x83c
	.uaword	.LLST11
	.uleb128 0x15
	.uaword	.LVL23
	.byte	0x1
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"TPPCDev_bGetPwmRunFlag"
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.uaword	0x263
	.uaword	.LFB9
	.uaword	.LFE9
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xb15
	.uleb128 0x11
	.uaword	.LASF6
	.byte	0x1
	.byte	0x5f
	.uaword	0x83c
	.uaword	.LLST12
	.uleb128 0x15
	.uaword	.LVL25
	.byte	0x1
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"TPPCDev_bGetHwFaultIgbt"
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.uaword	0x263
	.uaword	.LFB10
	.uaword	.LFE10
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xb5f
	.uleb128 0x11
	.uaword	.LASF6
	.byte	0x1
	.byte	0x64
	.uaword	0x83c
	.uaword	.LLST13
	.uleb128 0x15
	.uaword	.LVL27
	.byte	0x1
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"TPPCDev_bGetHwFaultIgbtL"
	.byte	0x1
	.byte	0x69
	.byte	0x1
	.uaword	0x263
	.uaword	.LFB11
	.uaword	.LFE11
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xbaa
	.uleb128 0x11
	.uaword	.LASF6
	.byte	0x1
	.byte	0x69
	.uaword	0x83c
	.uaword	.LLST14
	.uleb128 0x15
	.uaword	.LVL29
	.byte	0x1
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"TPPCDev_bGetHwFaultIgbtH"
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.uaword	0x263
	.uaword	.LFB12
	.uaword	.LFE12
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xbf5
	.uleb128 0x11
	.uaword	.LASF6
	.byte	0x1
	.byte	0x6e
	.uaword	0x83c
	.uaword	.LLST15
	.uleb128 0x15
	.uaword	.LVL31
	.byte	0x1
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"TPPCDev_bGetAscisClose"
	.byte	0x1
	.byte	0x73
	.byte	0x1
	.uaword	0x263
	.uaword	.LFB13
	.uaword	.LFE13
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xc3e
	.uleb128 0x11
	.uaword	.LASF6
	.byte	0x1
	.byte	0x73
	.uaword	0x83c
	.uaword	.LLST16
	.uleb128 0x15
	.uaword	.LVL33
	.byte	0x1
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.string	"TPPCDev_vidSetPwmBcDuty"
	.byte	0x1
	.byte	0x81
	.byte	0x1
	.uaword	.LFB14
	.uaword	.LFE14
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xcdf
	.uleb128 0x11
	.uaword	.LASF6
	.byte	0x1
	.byte	0x81
	.uaword	0x83c
	.uaword	.LLST17
	.uleb128 0x16
	.string	"f32DutyU"
	.byte	0x1
	.byte	0x81
	.uaword	0x24a
	.uaword	.LLST18
	.uleb128 0x16
	.string	"f32DutyV"
	.byte	0x1
	.byte	0x81
	.uaword	0x24a
	.uaword	.LLST19
	.uleb128 0x16
	.string	"f32DutyW"
	.byte	0x1
	.byte	0x81
	.uaword	0x24a
	.uaword	.LLST20
	.uleb128 0x14
	.uaword	.LVL37
	.byte	0x1
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x13
	.byte	0x1
	.byte	0x56
	.byte	0x6
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x7
	.uleb128 0x1a1
	.uleb128 0x13
	.byte	0x1
	.byte	0x55
	.byte	0x6
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x6
	.uleb128 0x1a1
	.uleb128 0x13
	.byte	0x1
	.byte	0x54
	.byte	0x6
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x5
	.uleb128 0x1a1
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.string	"TPPCDev_vidSetPwmFreq"
	.byte	0x1
	.byte	0x8f
	.byte	0x1
	.uaword	.LFB15
	.uaword	.LFE15
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xd41
	.uleb128 0x11
	.uaword	.LASF6
	.byte	0x1
	.byte	0x8f
	.uaword	0x83c
	.uaword	.LLST21
	.uleb128 0x16
	.string	"f32Freq"
	.byte	0x1
	.byte	0x8f
	.uaword	0x24a
	.uaword	.LLST22
	.uleb128 0x14
	.uaword	.LVL40
	.byte	0x1
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x13
	.byte	0x1
	.byte	0x54
	.byte	0x6
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x5
	.uleb128 0x1a1
	.byte	0
	.byte	0
	.uleb128 0x18
	.uaword	0x2e4
	.uaword	0xd51
	.uleb128 0x19
	.uaword	0xd51
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x1a
	.string	"TPPC_axDeviceSet"
	.byte	0x4
	.byte	0x1d
	.uaword	0xd77
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.uaword	0xd41
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL1-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL1-1
	.uaword	.LFE0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL3
	.uaword	.LVL4-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL4-1
	.uaword	.LFE1
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL6
	.uaword	.LFE2
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL9
	.uaword	.LFE3
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL11
	.uaword	.LVL12-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL12-1
	.uaword	.LFE4
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL14
	.uaword	.LFE5
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL13
	.uaword	.LVL15-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL15-1
	.uaword	.LFE5
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL17
	.uaword	.LFE6
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL16
	.uaword	.LVL18-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL18-1
	.uaword	.LFE6
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL20
	.uaword	.LFE7
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL19
	.uaword	.LVL21-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL21-1
	.uaword	.LFE7
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL22
	.uaword	.LVL23-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL23-1
	.uaword	.LFE8
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL24
	.uaword	.LVL25-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL25-1
	.uaword	.LFE9
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL26
	.uaword	.LVL27-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL27-1
	.uaword	.LFE10
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL28
	.uaword	.LVL29-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL29-1
	.uaword	.LFE11
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL30
	.uaword	.LVL31-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL31-1
	.uaword	.LFE12
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL32
	.uaword	.LVL33-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL33-1
	.uaword	.LFE13
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL34
	.uaword	.LVL35
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL35
	.uaword	.LFE14
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL34
	.uaword	.LVL35
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL35
	.uaword	.LVL37-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL37-1
	.uaword	.LFE14
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x5
	.uleb128 0x1a1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL34
	.uaword	.LVL36
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL36
	.uaword	.LVL37-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL37-1
	.uaword	.LFE14
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x6
	.uleb128 0x1a1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL34
	.uaword	.LVL37-1
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL37-1
	.uaword	.LFE14
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x7
	.uleb128 0x1a1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL38
	.uaword	.LVL39
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL39
	.uaword	.LFE15
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL38
	.uaword	.LVL40-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL40-1
	.uaword	.LFE15
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x5
	.uleb128 0x1a1
	.byte	0x9f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x94
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
	.uaword	.LFB7
	.uaword	.LFE7-.LFB7
	.uaword	.LFB8
	.uaword	.LFE8-.LFB8
	.uaword	.LFB9
	.uaword	.LFE9-.LFB9
	.uaword	.LFB10
	.uaword	.LFE10-.LFB10
	.uaword	.LFB11
	.uaword	.LFE11-.LFB11
	.uaword	.LFB12
	.uaword	.LFE12-.LFB12
	.uaword	.LFB13
	.uaword	.LFE13-.LFB13
	.uaword	.LFB14
	.uaword	.LFE14-.LFB14
	.uaword	.LFB15
	.uaword	.LFE15-.LFB15
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
	.uaword	.LFB7
	.uaword	.LFE7
	.uaword	.LFB8
	.uaword	.LFE8
	.uaword	.LFB9
	.uaword	.LFE9
	.uaword	.LFB10
	.uaword	.LFE10
	.uaword	.LFB11
	.uaword	.LFE11
	.uaword	.LFB12
	.uaword	.LFE12
	.uaword	.LFB13
	.uaword	.LFE13
	.uaword	.LFB14
	.uaword	.LFE14
	.uaword	.LFB15
	.uaword	.LFE15
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
.LASF3:
	.string	"vidSetPwmFreq"
.LASF6:
	.string	"ku8DevID"
.LASF5:
	.string	"TPPC_TimerDriver"
.LASF1:
	.string	"TPPC_Device"
	.extern	TPPC_axDeviceSet,STT_OBJECT,72
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
