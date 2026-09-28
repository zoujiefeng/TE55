	.file	"BLDC.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.BLDCDev_vidInit,"ax",@progbits
	.align 1
	.global	BLDCDev_vidInit
	.type	BLDCDev_vidInit, @function
BLDCDev_vidInit:
.LFB0:
	.file 1 "bswcdd\\BLDC\\BLDC.c"
	.loc 1 42 0
.LVL0:
	.loc 1 43 0
	movh.a	%a15, hi:BLDC_axDeviceSet
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:BLDC_axDeviceSet
	madd	%d2, %d15, %d4, 20
	mov.a	%a15, %d2
	ld.a	%a2, [%a15] 4
	ld.a	%a2, [%a2]0
	calli	%a2
.LVL1:
	.loc 1 44 0
	ld.a	%a2, [%a15] 16
	ld.a	%a2, [%a2] 12
	mov.aa	%a4, %a15
	ji	%a2
.LVL2:
.LFE0:
	.size	BLDCDev_vidInit, .-BLDCDev_vidInit
.section .text.BLDCDev_vidMotorStateMng,"ax",@progbits
	.align 1
	.global	BLDCDev_vidMotorStateMng
	.type	BLDCDev_vidMotorStateMng, @function
BLDCDev_vidMotorStateMng:
.LFB1:
	.loc 1 48 0
.LVL3:
	.loc 1 49 0
	movh.a	%a4, hi:BLDC_axDeviceSet
	mov.d	%d2, %a4
	addi	%d15, %d2, lo:BLDC_axDeviceSet
	madd	%d2, %d15, %d4, 20
	mov.a	%a4, %d2
	ld.a	%a15, [%a4] 4
	ld.a	%a15, [%a15] 8
	ji	%a15
.LVL4:
.LFE1:
	.size	BLDCDev_vidMotorStateMng, .-BLDCDev_vidMotorStateMng
.section .text.BLDCDev_vidMotPosPwmMng,"ax",@progbits
	.align 1
	.global	BLDCDev_vidMotPosPwmMng
	.type	BLDCDev_vidMotPosPwmMng, @function
BLDCDev_vidMotPosPwmMng:
.LFB2:
	.loc 1 53 0
.LVL5:
	.loc 1 54 0
	movh.a	%a4, hi:BLDC_axDeviceSet
	mov.d	%d2, %a4
	addi	%d15, %d2, lo:BLDC_axDeviceSet
	madd	%d2, %d15, %d4, 20
	mov.a	%a4, %d2
	ld.a	%a15, [%a4] 4
	ld.a	%a15, [%a15] 4
	ji	%a15
.LVL6:
.LFE2:
	.size	BLDCDev_vidMotPosPwmMng, .-BLDCDev_vidMotPosPwmMng
.section .text.BLDCDev_vidGetPosSigPerd,"ax",@progbits
	.align 1
	.global	BLDCDev_vidGetPosSigPerd
	.type	BLDCDev_vidGetPosSigPerd, @function
BLDCDev_vidGetPosSigPerd:
.LFB3:
	.loc 1 58 0
.LVL7:
	.loc 1 59 0
	movh.a	%a15, hi:BLDC_axDeviceSet
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:BLDC_axDeviceSet
	madd	%d2, %d15, %d4, 20
	mov.a	%a15, %d2
	ld.a	%a15, [%a15] 4
	ld.a	%a15, [%a15] 12
	ji	%a15
.LVL8:
.LFE3:
	.size	BLDCDev_vidGetPosSigPerd, .-BLDCDev_vidGetPosSigPerd
.section .text.BLDCDev_vidGetPositionDuty,"ax",@progbits
	.align 1
	.global	BLDCDev_vidGetPositionDuty
	.type	BLDCDev_vidGetPositionDuty, @function
BLDCDev_vidGetPositionDuty:
.LFB4:
	.loc 1 63 0
.LVL9:
	.loc 1 64 0
	movh.a	%a15, hi:BLDC_axDeviceSet
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:BLDC_axDeviceSet
	madd	%d2, %d15, %d4, 20
	mov.a	%a15, %d2
	ld.a	%a15, [%a15] 4
	ld.a	%a15, [%a15] 16
	ji	%a15
.LVL10:
.LFE4:
	.size	BLDCDev_vidGetPositionDuty, .-BLDCDev_vidGetPositionDuty
.section .text.BLDCDev_vidHallDiagMainfunction,"ax",@progbits
	.align 1
	.global	BLDCDev_vidHallDiagMainfunction
	.type	BLDCDev_vidHallDiagMainfunction, @function
BLDCDev_vidHallDiagMainfunction:
.LFB5:
	.loc 1 77 0
.LVL11:
	.loc 1 78 0
	movh.a	%a4, hi:BLDC_axDeviceSet
	mov.d	%d2, %a4
	addi	%d15, %d2, lo:BLDC_axDeviceSet
	madd	%d2, %d15, %d4, 20
	mov	%d4, %d5
.LVL12:
	mov.a	%a4, %d2
	ld.a	%a15, [%a4] 4
	ld.a	%a15, [%a15] 20
	ji	%a15
.LVL13:
.LFE5:
	.size	BLDCDev_vidHallDiagMainfunction, .-BLDCDev_vidHallDiagMainfunction
.section .text.BLDCDev_u8GetHallStt,"ax",@progbits
	.align 1
	.global	BLDCDev_u8GetHallStt
	.type	BLDCDev_u8GetHallStt, @function
BLDCDev_u8GetHallStt:
.LFB6:
	.loc 1 82 0
.LVL14:
	.loc 1 83 0
	movh.a	%a4, hi:BLDC_axDeviceSet
	mov.d	%d2, %a4
	addi	%d15, %d2, lo:BLDC_axDeviceSet
	madd	%d2, %d15, %d4, 20
	mov.a	%a4, %d2
	ld.a	%a15, [%a4] 16
	ld.a	%a15, [%a15] 16
	ji	%a15
.LVL15:
.LFE6:
	.size	BLDCDev_u8GetHallStt, .-BLDCDev_u8GetHallStt
.section .text.BLDCDev_vidChgHallPattern,"ax",@progbits
	.align 1
	.global	BLDCDev_vidChgHallPattern
	.type	BLDCDev_vidChgHallPattern, @function
BLDCDev_vidChgHallPattern:
.LFB7:
	.loc 1 87 0
.LVL16:
	.loc 1 88 0
	movh.a	%a4, hi:BLDC_axDeviceSet
	mov.d	%d2, %a4
	addi	%d15, %d2, lo:BLDC_axDeviceSet
	madd	%d2, %d15, %d4, 20
	mov.a	%a4, %d2
	ld.a	%a15, [%a4] 16
	ld.a	%a15, [%a15] 20
	ji	%a15
.LVL17:
.LFE7:
	.size	BLDCDev_vidChgHallPattern, .-BLDCDev_vidChgHallPattern
.section .text.BLDCDev_vidSetPwmBcDuty,"ax",@progbits
	.align 1
	.global	BLDCDev_vidSetPwmBcDuty
	.type	BLDCDev_vidSetPwmBcDuty, @function
BLDCDev_vidSetPwmBcDuty:
.LFB8:
	.loc 1 92 0
.LVL18:
	.loc 1 93 0
	movh.a	%a4, hi:BLDC_axDeviceSet
	mov.d	%d2, %a4
	addi	%d15, %d2, lo:BLDC_axDeviceSet
	madd	%d2, %d15, %d4, 20
	mov	%d4, %d5
.LVL19:
	mov.a	%a4, %d2
	ld.a	%a15, [%a4] 16
	ld.a	%a15, [%a15] 24
	ji	%a15
.LVL20:
.LFE8:
	.size	BLDCDev_vidSetPwmBcDuty, .-BLDCDev_vidSetPwmBcDuty
.section .text.BLDCDev_u8GetHallState,"ax",@progbits
	.align 1
	.global	BLDCDev_u8GetHallState
	.type	BLDCDev_u8GetHallState, @function
BLDCDev_u8GetHallState:
.LFB9:
	.loc 1 98 0
.LVL21:
	.loc 1 99 0
	movh.a	%a4, hi:BLDC_axDeviceSet
	mov.d	%d2, %a4
	addi	%d15, %d2, lo:BLDC_axDeviceSet
	madd	%d2, %d15, %d4, 20
	mov.a	%a4, %d2
	ld.a	%a15, [%a4] 16
	ld.a	%a15, [%a15] 32
	ji	%a15
.LVL22:
.LFE9:
	.size	BLDCDev_u8GetHallState, .-BLDCDev_u8GetHallState
.section .text.BLDCDev_u8GetCurDirSts,"ax",@progbits
	.align 1
	.global	BLDCDev_u8GetCurDirSts
	.type	BLDCDev_u8GetCurDirSts, @function
BLDCDev_u8GetCurDirSts:
.LFB10:
	.loc 1 103 0
.LVL23:
	.loc 1 104 0
	movh.a	%a4, hi:BLDC_axDeviceSet
	mov.d	%d2, %a4
	addi	%d15, %d2, lo:BLDC_axDeviceSet
	madd	%d2, %d15, %d4, 20
	mov.a	%a4, %d2
	ld.a	%a15, [%a4] 16
	ld.a	%a15, [%a15] 36
	ji	%a15
.LVL24:
.LFE10:
	.size	BLDCDev_u8GetCurDirSts, .-BLDCDev_u8GetCurDirSts
.section .text.BLDCDev_u8GetDutyModeStt,"ax",@progbits
	.align 1
	.global	BLDCDev_u8GetDutyModeStt
	.type	BLDCDev_u8GetDutyModeStt, @function
BLDCDev_u8GetDutyModeStt:
.LFB11:
	.loc 1 108 0
.LVL25:
	.loc 1 109 0
	movh.a	%a4, hi:BLDC_axDeviceSet
	mov.d	%d2, %a4
	addi	%d15, %d2, lo:BLDC_axDeviceSet
	madd	%d2, %d15, %d4, 20
	mov.a	%a4, %d2
	ld.a	%a15, [%a4] 16
	ld.a	%a15, [%a15] 40
	ji	%a15
.LVL26:
.LFE11:
	.size	BLDCDev_u8GetDutyModeStt, .-BLDCDev_u8GetDutyModeStt
.section .text.BLDCDev_bGetHallUndefFlt,"ax",@progbits
	.align 1
	.global	BLDCDev_bGetHallUndefFlt
	.type	BLDCDev_bGetHallUndefFlt, @function
BLDCDev_bGetHallUndefFlt:
.LFB12:
	.loc 1 113 0
.LVL27:
	.loc 1 114 0
	movh.a	%a15, hi:BLDC_axDeviceSet
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:BLDC_axDeviceSet
	madd	%d2, %d15, %d4, 20
	mov.a	%a15, %d2
	ld.a	%a15, [%a15] 4
	ld.a	%a15, [%a15] 24
	ji	%a15
.LVL28:
.LFE12:
	.size	BLDCDev_bGetHallUndefFlt, .-BLDCDev_bGetHallUndefFlt
.section .text.BLDCDev_bGetHallInvalidFlt,"ax",@progbits
	.align 1
	.global	BLDCDev_bGetHallInvalidFlt
	.type	BLDCDev_bGetHallInvalidFlt, @function
BLDCDev_bGetHallInvalidFlt:
.LFB13:
	.loc 1 118 0
.LVL29:
	.loc 1 119 0
	movh.a	%a15, hi:BLDC_axDeviceSet
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:BLDC_axDeviceSet
	madd	%d2, %d15, %d4, 20
	mov.a	%a15, %d2
	ld.a	%a15, [%a15] 4
	ld.a	%a15, [%a15] 28
	ji	%a15
.LVL30:
.LFE13:
	.size	BLDCDev_bGetHallInvalidFlt, .-BLDCDev_bGetHallInvalidFlt
.section .text.BLDCDev_bGetP5vAD2SOverVolFlt,"ax",@progbits
	.align 1
	.global	BLDCDev_bGetP5vAD2SOverVolFlt
	.type	BLDCDev_bGetP5vAD2SOverVolFlt, @function
BLDCDev_bGetP5vAD2SOverVolFlt:
.LFB14:
	.loc 1 123 0
.LVL31:
	.loc 1 124 0
	movh.a	%a15, hi:BLDC_axDeviceSet
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:BLDC_axDeviceSet
	madd	%d2, %d15, %d4, 20
	mov.a	%a15, %d2
	ld.a	%a15, [%a15] 4
	ld.a	%a15, [%a15] 32
	ji	%a15
.LVL32:
.LFE14:
	.size	BLDCDev_bGetP5vAD2SOverVolFlt, .-BLDCDev_bGetP5vAD2SOverVolFlt
.section .text.BLDCDev_bGetP5vAD2SUnderVolFlt,"ax",@progbits
	.align 1
	.global	BLDCDev_bGetP5vAD2SUnderVolFlt
	.type	BLDCDev_bGetP5vAD2SUnderVolFlt, @function
BLDCDev_bGetP5vAD2SUnderVolFlt:
.LFB15:
	.loc 1 128 0
.LVL33:
	.loc 1 129 0
	movh.a	%a15, hi:BLDC_axDeviceSet
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:BLDC_axDeviceSet
	madd	%d2, %d15, %d4, 20
	mov.a	%a15, %d2
	ld.a	%a15, [%a15] 4
	ld.a	%a15, [%a15] 36
	ji	%a15
.LVL34:
.LFE15:
	.size	BLDCDev_bGetP5vAD2SUnderVolFlt, .-BLDCDev_bGetP5vAD2SUnderVolFlt
.section .text.BLDCDev_bGetUvwShortGnd,"ax",@progbits
	.align 1
	.global	BLDCDev_bGetUvwShortGnd
	.type	BLDCDev_bGetUvwShortGnd, @function
BLDCDev_bGetUvwShortGnd:
.LFB16:
	.loc 1 133 0
.LVL35:
	.loc 1 134 0
	movh.a	%a15, hi:BLDC_axDeviceSet
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:BLDC_axDeviceSet
	madd	%d2, %d15, %d4, 20
	mov.a	%a15, %d2
	ld.a	%a15, [%a15] 4
	ld.a	%a15, [%a15] 40
	ji	%a15
.LVL36:
.LFE16:
	.size	BLDCDev_bGetUvwShortGnd, .-BLDCDev_bGetUvwShortGnd
.section .text.BLDCDev_bGetUvwShortVs,"ax",@progbits
	.align 1
	.global	BLDCDev_bGetUvwShortVs
	.type	BLDCDev_bGetUvwShortVs, @function
BLDCDev_bGetUvwShortVs:
.LFB17:
	.loc 1 138 0
.LVL37:
	.loc 1 139 0
	movh.a	%a15, hi:BLDC_axDeviceSet
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:BLDC_axDeviceSet
	madd	%d2, %d15, %d4, 20
	mov.a	%a15, %d2
	ld.a	%a15, [%a15] 4
	ld.a	%a15, [%a15] 44
	ji	%a15
.LVL38:
.LFE17:
	.size	BLDCDev_bGetUvwShortVs, .-BLDCDev_bGetUvwShortVs
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
.LSFDE32:
	.uaword	.LEFDE32-.LASFDE32
.LASFDE32:
	.uaword	.Lframe0
	.uaword	.LFB16
	.uaword	.LFE16-.LFB16
	.align 2
.LEFDE32:
.LSFDE34:
	.uaword	.LEFDE34-.LASFDE34
.LASFDE34:
	.uaword	.Lframe0
	.uaword	.LFB17
	.uaword	.LFE17-.LFB17
	.align 2
.LEFDE34:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bswcdd\\BLDC\\0_Devices\\BLDC_DeviceType.h"
	.file 4 ".\\output\\inc/..\\..\\bswcdd\\BLDC\\BLDC_GeneFunc.h"
	.file 5 ".\\output\\inc/..\\..\\bswcdd\\BLDC\\0_Devices\\BLDC_Device.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x1001
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\BLDC\\BLDC.c"
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
	.uleb128 0x3
	.string	"uint32"
	.byte	0x2
	.byte	0x6a
	.uaword	0x22e
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
	.byte	0x4
	.byte	0x18
	.uaword	0x2ac
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x14
	.byte	0x3
	.byte	0x3b
	.uaword	0x324
	.uleb128 0x6
	.string	"u8DeviceID"
	.byte	0x3
	.byte	0x3c
	.uaword	0x1b9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"ptAppFunc"
	.byte	0x3
	.byte	0x3e
	.uaword	0xa06
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"ptHalModule"
	.byte	0x3
	.byte	0x3f
	.uaword	0xa11
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"ptTimerDrv"
	.byte	0x3
	.byte	0x40
	.uaword	0x898
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"ptGeneModule"
	.byte	0x3
	.byte	0x41
	.uaword	0xa1c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x4
	.uaword	.LASF1
	.byte	0x4
	.byte	0x19
	.uaword	0x32f
	.uleb128 0x5
	.uaword	.LASF1
	.byte	0x2c
	.byte	0x4
	.byte	0x50
	.uaword	0x447
	.uleb128 0x6
	.string	"PwmCtrlVar"
	.byte	0x4
	.byte	0x51
	.uaword	0x59e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"HallCtrlVar"
	.byte	0x4
	.byte	0x52
	.uaword	0x5a4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"vidDebug"
	.byte	0x4
	.byte	0x54
	.uaword	0x5ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"vidModuleInit"
	.byte	0x4
	.byte	0x55
	.uaword	0x5ce
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"u8GetHallState"
	.byte	0x4
	.byte	0x56
	.uaword	0x5e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"vidChgHallPattern"
	.byte	0x4
	.byte	0x57
	.uaword	0x5ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"vidSetPwmBcDuty"
	.byte	0x4
	.byte	0x58
	.uaword	0x600
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"vidStartRotation"
	.byte	0x4
	.byte	0x59
	.uaword	0x61c
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"u8GetHallStt"
	.byte	0x4
	.byte	0x5c
	.uaword	0x5e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"u8GetCurDirSts"
	.byte	0x4
	.byte	0x5d
	.uaword	0x5e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"u8GetDutyModeStt"
	.byte	0x4
	.byte	0x5e
	.uaword	0x5e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0
	.uleb128 0x5
	.uaword	.LASF2
	.byte	0xc
	.byte	0x4
	.byte	0x3f
	.uaword	0x505
	.uleb128 0x6
	.string	"BLDC_u16DutyDelayCnt"
	.byte	0x4
	.byte	0x40
	.uaword	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"BLDC_u8PrevDirSts"
	.byte	0x4
	.byte	0x41
	.uaword	0x1b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x6
	.string	"BLDC_u8CurDirSts"
	.byte	0x4
	.byte	0x42
	.uaword	0x1b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x6
	.string	"BLDC_u8DutyModeStt"
	.byte	0x4
	.byte	0x43
	.uaword	0x1b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"BLDC_u8DutyHoldTicks"
	.byte	0x4
	.byte	0x44
	.uaword	0x1b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x6
	.string	"BLDC_f32CurCycleDuty"
	.byte	0x4
	.byte	0x45
	.uaword	0x258
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x4
	.uaword	.LASF2
	.byte	0x4
	.byte	0x46
	.uaword	0x447
	.uleb128 0x5
	.uaword	.LASF3
	.byte	0x4
	.byte	0x4
	.byte	0x49
	.uaword	0x593
	.uleb128 0x6
	.string	"BLDC_u8CurHallStt"
	.byte	0x4
	.byte	0x4a
	.uaword	0x1b9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"BLDC_u8ConfirmDirSts"
	.byte	0x4
	.byte	0x4b
	.uaword	0x1b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x6
	.string	"BLDC_u8WrCurHallStt"
	.byte	0x4
	.byte	0x4c
	.uaword	0x1b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x6
	.string	"BLDC_u8WrExpOutput"
	.byte	0x4
	.byte	0x4d
	.uaword	0x1b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0x4
	.uaword	.LASF3
	.byte	0x4
	.byte	0x4e
	.uaword	0x510
	.uleb128 0x7
	.byte	0x4
	.uaword	0x505
	.uleb128 0x7
	.byte	0x4
	.uaword	0x593
	.uleb128 0x8
	.byte	0x1
	.uleb128 0x7
	.byte	0x4
	.uaword	0x5aa
	.uleb128 0x9
	.byte	0x1
	.uaword	0x5be
	.uleb128 0xa
	.uaword	0x5be
	.byte	0
	.uleb128 0xb
	.uaword	0x5c3
	.uleb128 0x7
	.byte	0x4
	.uaword	0x5c9
	.uleb128 0xb
	.uaword	0x2a1
	.uleb128 0x7
	.byte	0x4
	.uaword	0x5b2
	.uleb128 0xc
	.byte	0x1
	.uaword	0x1b9
	.uaword	0x5e4
	.uleb128 0xa
	.uaword	0x5be
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.uaword	0x5d4
	.uleb128 0x9
	.byte	0x1
	.uaword	0x5fb
	.uleb128 0xa
	.uaword	0x5be
	.uleb128 0xa
	.uaword	0x5fb
	.byte	0
	.uleb128 0xb
	.uaword	0x258
	.uleb128 0x7
	.byte	0x4
	.uaword	0x5ea
	.uleb128 0x9
	.byte	0x1
	.uaword	0x617
	.uleb128 0xa
	.uaword	0x5be
	.uleb128 0xa
	.uaword	0x617
	.byte	0
	.uleb128 0xb
	.uaword	0x1b9
	.uleb128 0x7
	.byte	0x4
	.uaword	0x606
	.uleb128 0x4
	.uaword	.LASF4
	.byte	0x3
	.byte	0x11
	.uaword	0x62d
	.uleb128 0x5
	.uaword	.LASF4
	.byte	0x24
	.byte	0x3
	.byte	0x15
	.uaword	0x719
	.uleb128 0x6
	.string	"pvCommDrv"
	.byte	0x3
	.byte	0x16
	.uaword	0x87e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"pkvCfgHandle"
	.byte	0x3
	.byte	0x17
	.uaword	0x880
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"vidIntHwInit"
	.byte	0x3
	.byte	0x19
	.uaword	0x8a3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"vidIntTrigEnable"
	.byte	0x3
	.byte	0x1a
	.uaword	0x8ba
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"vidPwmDisable"
	.byte	0x3
	.byte	0x1c
	.uaword	0x8a3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"vidSetPwmOutState"
	.byte	0x3
	.byte	0x1d
	.uaword	0x8d6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"vidSetPwmDuty"
	.byte	0x3
	.byte	0x1e
	.uaword	0x8ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"vidSetPwmFreq"
	.byte	0x3
	.byte	0x1f
	.uaword	0x8ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"vidSetSingleChPhase"
	.byte	0x3
	.byte	0x20
	.uaword	0x909
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0
	.uleb128 0x4
	.uaword	.LASF5
	.byte	0x3
	.byte	0x12
	.uaword	0x724
	.uleb128 0x5
	.uaword	.LASF5
	.byte	0x30
	.byte	0x3
	.byte	0x2a
	.uaword	0x87e
	.uleb128 0x6
	.string	"vidInit"
	.byte	0x3
	.byte	0x2b
	.uaword	0x5ac
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"vidMotPosPwmMng"
	.byte	0x3
	.byte	0x2c
	.uaword	0x9ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"vidMotorStateMng"
	.byte	0x3
	.byte	0x2d
	.uaword	0x9ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"vidGetPosSigPerd"
	.byte	0x3
	.byte	0x2e
	.uaword	0x9c5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"vidGetPositionDuty"
	.byte	0x3
	.byte	0x2f
	.uaword	0x9dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"vidHallDiagMainfunction"
	.byte	0x3
	.byte	0x30
	.uaword	0x9f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"bGetHallUndefFlt"
	.byte	0x3
	.byte	0x33
	.uaword	0xa00
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"bGetHallInvalidFlt"
	.byte	0x3
	.byte	0x34
	.uaword	0xa00
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"bGetP5vAD2SOverVolFlt"
	.byte	0x3
	.byte	0x35
	.uaword	0xa00
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"bGetP5vAD2SUnderVolFlt"
	.byte	0x3
	.byte	0x36
	.uaword	0xa00
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"bGetUvwShortGnd"
	.byte	0x3
	.byte	0x37
	.uaword	0xa00
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"bGetUvwShortVs"
	.byte	0x3
	.byte	0x38
	.uaword	0xa00
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uleb128 0x7
	.byte	0x4
	.uaword	0x886
	.uleb128 0xe
	.uleb128 0x9
	.byte	0x1
	.uaword	0x893
	.uleb128 0xa
	.uaword	0x893
	.byte	0
	.uleb128 0xb
	.uaword	0x898
	.uleb128 0x7
	.byte	0x4
	.uaword	0x89e
	.uleb128 0xb
	.uaword	0x622
	.uleb128 0x7
	.byte	0x4
	.uaword	0x887
	.uleb128 0x9
	.byte	0x1
	.uaword	0x8ba
	.uleb128 0xa
	.uaword	0x893
	.uleb128 0xa
	.uaword	0x271
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.uaword	0x8a9
	.uleb128 0x9
	.byte	0x1
	.uaword	0x8d6
	.uleb128 0xa
	.uaword	0x893
	.uleb128 0xa
	.uaword	0x1b9
	.uleb128 0xa
	.uaword	0x1b9
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.uaword	0x8c0
	.uleb128 0x9
	.byte	0x1
	.uaword	0x8ed
	.uleb128 0xa
	.uaword	0x893
	.uleb128 0xa
	.uaword	0x258
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.uaword	0x8dc
	.uleb128 0x9
	.byte	0x1
	.uaword	0x909
	.uleb128 0xa
	.uaword	0x893
	.uleb128 0xa
	.uaword	0x258
	.uleb128 0xa
	.uaword	0x1b9
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.uaword	0x8f3
	.uleb128 0x5
	.uaword	.LASF6
	.byte	0x10
	.byte	0x3
	.byte	0x23
	.uaword	0x97a
	.uleb128 0x6
	.string	"pvApi"
	.byte	0x3
	.byte	0x24
	.uaword	0x880
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"u16IOReadHall_1"
	.byte	0x3
	.byte	0x25
	.uaword	0x980
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"u16IOReadHall_2"
	.byte	0x3
	.byte	0x26
	.uaword	0x980
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"u16IOReadHall_3"
	.byte	0x3
	.byte	0x27
	.uaword	0x980
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.uaword	0x1e4
	.uleb128 0x7
	.byte	0x4
	.uaword	0x97a
	.uleb128 0x4
	.uaword	.LASF6
	.byte	0x3
	.byte	0x28
	.uaword	0x90f
	.uleb128 0x9
	.byte	0x1
	.uaword	0x99d
	.uleb128 0xa
	.uaword	0x99d
	.byte	0
	.uleb128 0xb
	.uaword	0x9a2
	.uleb128 0x7
	.byte	0x4
	.uaword	0x9a8
	.uleb128 0xb
	.uaword	0x2ac
	.uleb128 0x7
	.byte	0x4
	.uaword	0x991
	.uleb128 0x9
	.byte	0x1
	.uaword	0x9bf
	.uleb128 0xa
	.uaword	0x9bf
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.uaword	0x220
	.uleb128 0x7
	.byte	0x4
	.uaword	0x9b3
	.uleb128 0x9
	.byte	0x1
	.uaword	0x9d7
	.uleb128 0xa
	.uaword	0x9d7
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.uaword	0x258
	.uleb128 0x7
	.byte	0x4
	.uaword	0x9cb
	.uleb128 0x9
	.byte	0x1
	.uaword	0x9f4
	.uleb128 0xa
	.uaword	0x99d
	.uleb128 0xa
	.uaword	0x617
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.uaword	0x9e3
	.uleb128 0xf
	.byte	0x1
	.uaword	0x271
	.uleb128 0x7
	.byte	0x4
	.uaword	0x9fa
	.uleb128 0x7
	.byte	0x4
	.uaword	0xa0c
	.uleb128 0xb
	.uaword	0x719
	.uleb128 0x7
	.byte	0x4
	.uaword	0xa17
	.uleb128 0xb
	.uaword	0x986
	.uleb128 0x7
	.byte	0x4
	.uaword	0xa22
	.uleb128 0xb
	.uaword	0x324
	.uleb128 0x10
	.byte	0x1
	.string	"BLDCDev_vidInit"
	.byte	0x1
	.byte	0x29
	.byte	0x1
	.uaword	.LFB0
	.uaword	.LFE0
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xa69
	.uleb128 0x11
	.uaword	.LASF7
	.byte	0x1
	.byte	0x29
	.uaword	0x617
	.uaword	.LLST0
	.uleb128 0x12
	.uaword	.LVL2
	.byte	0x1
	.uleb128 0x13
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.string	"BLDCDev_vidMotorStateMng"
	.byte	0x1
	.byte	0x2f
	.byte	0x1
	.uaword	.LFB1
	.uaword	.LFE1
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xab0
	.uleb128 0x11
	.uaword	.LASF7
	.byte	0x1
	.byte	0x2f
	.uaword	0x617
	.uaword	.LLST1
	.uleb128 0x15
	.uaword	.LVL4
	.byte	0x1
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.string	"BLDCDev_vidMotPosPwmMng"
	.byte	0x1
	.byte	0x34
	.byte	0x1
	.uaword	.LFB2
	.uaword	.LFE2
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xaf6
	.uleb128 0x11
	.uaword	.LASF7
	.byte	0x1
	.byte	0x34
	.uaword	0x617
	.uaword	.LLST2
	.uleb128 0x15
	.uaword	.LVL6
	.byte	0x1
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.string	"BLDCDev_vidGetPosSigPerd"
	.byte	0x1
	.byte	0x39
	.byte	0x1
	.uaword	.LFB3
	.uaword	.LFE3
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xb5f
	.uleb128 0x11
	.uaword	.LASF7
	.byte	0x1
	.byte	0x39
	.uaword	0x617
	.uaword	.LLST3
	.uleb128 0x16
	.string	"pu32PosSigPerd"
	.byte	0x1
	.byte	0x39
	.uaword	0x9bf
	.uaword	.LLST4
	.uleb128 0x17
	.uaword	.LVL8
	.byte	0x1
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x13
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.string	"BLDCDev_vidGetPositionDuty"
	.byte	0x1
	.byte	0x3e
	.byte	0x1
	.uaword	.LFB4
	.uaword	.LFE4
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xbc7
	.uleb128 0x11
	.uaword	.LASF7
	.byte	0x1
	.byte	0x3e
	.uaword	0x617
	.uaword	.LLST5
	.uleb128 0x16
	.string	"pf32PosDuty"
	.byte	0x1
	.byte	0x3e
	.uaword	0x9d7
	.uaword	.LLST6
	.uleb128 0x17
	.uaword	.LVL10
	.byte	0x1
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x13
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.string	"BLDCDev_vidHallDiagMainfunction"
	.byte	0x1
	.byte	0x4c
	.byte	0x1
	.uaword	.LFB5
	.uaword	.LFE5
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xc2d
	.uleb128 0x11
	.uaword	.LASF7
	.byte	0x1
	.byte	0x4c
	.uaword	0x617
	.uaword	.LLST7
	.uleb128 0x16
	.string	"u8CurHallStt"
	.byte	0x1
	.byte	0x4c
	.uaword	0x617
	.uaword	.LLST8
	.uleb128 0x15
	.uaword	.LVL13
	.byte	0x1
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"BLDCDev_u8GetHallStt"
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.uaword	0x1b9
	.uaword	.LFB6
	.uaword	.LFE6
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xc74
	.uleb128 0x11
	.uaword	.LASF7
	.byte	0x1
	.byte	0x51
	.uaword	0x617
	.uaword	.LLST9
	.uleb128 0x15
	.uaword	.LVL15
	.byte	0x1
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.string	"BLDCDev_vidChgHallPattern"
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.uaword	.LFB7
	.uaword	.LFE7
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xcbc
	.uleb128 0x11
	.uaword	.LASF7
	.byte	0x1
	.byte	0x56
	.uaword	0x617
	.uaword	.LLST10
	.uleb128 0x15
	.uaword	.LVL17
	.byte	0x1
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.string	"BLDCDev_vidSetPwmBcDuty"
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.uaword	.LFB8
	.uaword	.LFE8
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xd20
	.uleb128 0x11
	.uaword	.LASF7
	.byte	0x1
	.byte	0x5b
	.uaword	0x617
	.uaword	.LLST11
	.uleb128 0x16
	.string	"f32Duty"
	.byte	0x1
	.byte	0x5b
	.uaword	0x5fb
	.uaword	.LLST12
	.uleb128 0x17
	.uaword	.LVL20
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
	.byte	0x1
	.string	"BLDCDev_u8GetHallState"
	.byte	0x1
	.byte	0x61
	.byte	0x1
	.uaword	0x1b9
	.uaword	.LFB9
	.uaword	.LFE9
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xd69
	.uleb128 0x11
	.uaword	.LASF7
	.byte	0x1
	.byte	0x61
	.uaword	0x617
	.uaword	.LLST13
	.uleb128 0x15
	.uaword	.LVL22
	.byte	0x1
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"BLDCDev_u8GetCurDirSts"
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.uaword	0x1b9
	.uaword	.LFB10
	.uaword	.LFE10
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xdb2
	.uleb128 0x11
	.uaword	.LASF7
	.byte	0x1
	.byte	0x66
	.uaword	0x617
	.uaword	.LLST14
	.uleb128 0x15
	.uaword	.LVL24
	.byte	0x1
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"BLDCDev_u8GetDutyModeStt"
	.byte	0x1
	.byte	0x6b
	.byte	0x1
	.uaword	0x1b9
	.uaword	.LFB11
	.uaword	.LFE11
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xdfd
	.uleb128 0x11
	.uaword	.LASF7
	.byte	0x1
	.byte	0x6b
	.uaword	0x617
	.uaword	.LLST15
	.uleb128 0x15
	.uaword	.LVL26
	.byte	0x1
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"BLDCDev_bGetHallUndefFlt"
	.byte	0x1
	.byte	0x70
	.byte	0x1
	.uaword	0x271
	.uaword	.LFB12
	.uaword	.LFE12
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xe48
	.uleb128 0x11
	.uaword	.LASF7
	.byte	0x1
	.byte	0x70
	.uaword	0x617
	.uaword	.LLST16
	.uleb128 0x15
	.uaword	.LVL28
	.byte	0x1
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"BLDCDev_bGetHallInvalidFlt"
	.byte	0x1
	.byte	0x75
	.byte	0x1
	.uaword	0x271
	.uaword	.LFB13
	.uaword	.LFE13
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xe95
	.uleb128 0x11
	.uaword	.LASF7
	.byte	0x1
	.byte	0x75
	.uaword	0x617
	.uaword	.LLST17
	.uleb128 0x15
	.uaword	.LVL30
	.byte	0x1
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"BLDCDev_bGetP5vAD2SOverVolFlt"
	.byte	0x1
	.byte	0x7a
	.byte	0x1
	.uaword	0x271
	.uaword	.LFB14
	.uaword	.LFE14
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xee5
	.uleb128 0x11
	.uaword	.LASF7
	.byte	0x1
	.byte	0x7a
	.uaword	0x617
	.uaword	.LLST18
	.uleb128 0x15
	.uaword	.LVL32
	.byte	0x1
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"BLDCDev_bGetP5vAD2SUnderVolFlt"
	.byte	0x1
	.byte	0x7f
	.byte	0x1
	.uaword	0x271
	.uaword	.LFB15
	.uaword	.LFE15
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xf36
	.uleb128 0x11
	.uaword	.LASF7
	.byte	0x1
	.byte	0x7f
	.uaword	0x617
	.uaword	.LLST19
	.uleb128 0x15
	.uaword	.LVL34
	.byte	0x1
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"BLDCDev_bGetUvwShortGnd"
	.byte	0x1
	.byte	0x84
	.byte	0x1
	.uaword	0x271
	.uaword	.LFB16
	.uaword	.LFE16
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xf80
	.uleb128 0x11
	.uaword	.LASF7
	.byte	0x1
	.byte	0x84
	.uaword	0x617
	.uaword	.LLST20
	.uleb128 0x15
	.uaword	.LVL36
	.byte	0x1
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"BLDCDev_bGetUvwShortVs"
	.byte	0x1
	.byte	0x89
	.byte	0x1
	.uaword	0x271
	.uaword	.LFB17
	.uaword	.LFE17
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xfc9
	.uleb128 0x11
	.uaword	.LASF7
	.byte	0x1
	.byte	0x89
	.uaword	0x617
	.uaword	.LLST21
	.uleb128 0x15
	.uaword	.LVL38
	.byte	0x1
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.uaword	0x2ac
	.uaword	0xfd9
	.uleb128 0x1a
	.uaword	0xfd9
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x1b
	.string	"BLDC_axDeviceSet"
	.byte	0x5
	.byte	0x1c
	.uaword	0xfff
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.uaword	0xfc9
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x2116
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
	.uleb128 0x2115
	.uleb128 0xc
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uaword	.LVL6-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL6-1
	.uaword	.LFE2
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL7
	.uaword	.LVL8-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL8-1
	.uaword	.LFE3
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL7
	.uaword	.LVL8-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL8-1
	.uaword	.LFE3
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL9
	.uaword	.LVL10-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL10-1
	.uaword	.LFE4
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL9
	.uaword	.LVL10-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL10-1
	.uaword	.LFE4
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL12
	.uaword	.LFE5
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL11
	.uaword	.LVL13-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL13-1
	.uaword	.LFE5
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL14
	.uaword	.LVL15-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL15-1
	.uaword	.LFE6
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL16
	.uaword	.LVL17-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL17-1
	.uaword	.LFE7
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL19
	.uaword	.LFE8
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL18
	.uaword	.LVL20-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL20-1
	.uaword	.LFE8
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x5
	.uleb128 0x1a1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL21
	.uaword	.LVL22-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL22-1
	.uaword	.LFE9
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL23
	.uaword	.LVL24-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL24-1
	.uaword	.LFE10
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL25
	.uaword	.LVL26-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL26-1
	.uaword	.LFE11
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL27
	.uaword	.LVL28-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL28-1
	.uaword	.LFE12
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL29
	.uaword	.LVL30-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL30-1
	.uaword	.LFE13
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL31
	.uaword	.LVL32-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL32-1
	.uaword	.LFE14
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL33
	.uaword	.LVL34-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL34-1
	.uaword	.LFE15
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL35
	.uaword	.LVL36-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL36-1
	.uaword	.LFE16
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL37
	.uaword	.LVL38-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL38-1
	.uaword	.LFE17
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0xa4
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
	.uaword	.LFB16
	.uaword	.LFE16-.LFB16
	.uaword	.LFB17
	.uaword	.LFE17-.LFB17
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
	.uaword	.LFB16
	.uaword	.LFE16
	.uaword	.LFB17
	.uaword	.LFE17
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF2:
	.string	"BLDC_PwmCtrlVarSet"
.LASF4:
	.string	"BLDC_TimerDriver"
.LASF1:
	.string	"BLDC_GeneModule"
.LASF3:
	.string	"BLDC_HallCtrlVarSet"
.LASF5:
	.string	"BLDC_AppFunc"
.LASF7:
	.string	"ku8DevID"
.LASF6:
	.string	"BLDC_HalModule"
.LASF0:
	.string	"BLDC_Device"
	.extern	BLDC_axDeviceSet,STT_OBJECT,40
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
