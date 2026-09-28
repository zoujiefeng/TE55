	.file	"VADC.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	VADC_vidTreatment
	.type	VADC_vidTreatment, @function
VADC_vidTreatment:
.LFB19:
	.file 1 "bswcdd\\VADC\\VADC.c"
	.loc 1 32 0
	.loc 1 35 0
	call	Mcal_GetCpuIndex
.LVL0:
	.loc 1 36 0
	jnz	%d2, .L2
	.loc 1 38 0
	movh.a	%a15, hi:VADC_bSwConvStartCore1
	ld.bu	%d15, [%a15] lo:VADC_bSwConvStartCore1
	jnz	%d15, .L3
	.loc 1 41 0
	mov	%d4, 320
	.loc 1 40 0
	mov	%d15, 1
	st.b	[%a15] lo:VADC_bSwConvStartCore1, %d15
	.loc 1 41 0
	call	Adc_StartGroupConversion
.LVL1:
	.loc 1 42 0
	mov	%d4, 352
	j	Adc_StartGroupConversion
.LVL2:
.L2:
	.loc 1 50 0
	jeq	%d2, 2, .L8
	.loc 1 54 0
	jeq	%d2, 3, .L9
	ret
.L3:
	.loc 1 46 0
	mov	%d4, 320
	call	Adc_StartGroupConversionSimple
.LVL3:
	.loc 1 47 0
	mov	%d4, 352
	j	Adc_StartGroupConversionSimple
.LVL4:
.L9:
	.loc 1 56 0
	movh.a	%a15, hi:VADC_bSwConvStartCore3
	ld.bu	%d15, [%a15] lo:VADC_bSwConvStartCore3
	jz	%d15, .L10
	.loc 1 65 0
	mov	%d4, 256
	j	Adc_StartGroupConversion
.LVL5:
.L10:
	.loc 1 58 0
	mov	%d15, 1
	.loc 1 60 0
	mov	%d4, 256
	.loc 1 58 0
	st.b	[%a15] lo:VADC_bSwConvStartCore3, %d15
	.loc 1 60 0
	j	Adc_StartGroupConversion
.LVL6:
.L8:
	.loc 1 52 0
	mov	%d4, 97
	j	Adc_StartGroupConversion
.LVL7:
.LFE19:
	.size	VADC_vidTreatment, .-VADC_vidTreatment
	.align 1
	.global	VADC_vidMainFunction
	.type	VADC_vidMainFunction, @function
VADC_vidMainFunction:
.LFB20:
	.loc 1 71 0
	.loc 1 74 0
	call	Mcal_GetCpuIndex
.LVL8:
	mov	%d15, %d2
.LVL9:
	.loc 1 76 0
	jnz	%d2, .L12
	.loc 1 78 0
	movh.a	%a12, hi:VADC_bConvStartedCore0
	ld.bu	%d15, [%a12] lo:VADC_bConvStartedCore0
	jnz	%d15, .L11
	.loc 1 80 0
	movh.a	%a15, hi:VADC_u16StartCounterCore0
	ld.h	%d15, [%a15] lo:VADC_u16StartCounterCore0
	add	%d15, 1
	extr.u	%d15, %d15, 0, 16
	st.h	[%a15] lo:VADC_u16StartCounterCore0, %d15
	.loc 1 81 0
	jnz	%d15, .L30
.LVL10:
.L11:
	ret
.LVL11:
.L12:
	.loc 1 99 0
	jeq	%d2, 1, .L31
	.loc 1 123 0
	jeq	%d2, 2, .L32
	.loc 1 145 0
	jne	%d2, 3, .L11
	.loc 1 147 0
	movh.a	%a15, hi:VADC_bConvStartedCore3
	ld.bu	%d15, [%a15] lo:VADC_bConvStartedCore3
	jnz	%d15, .L11
	.loc 1 149 0
	movh.a	%a2, hi:VADC_u16StartCounterCore3
	ld.h	%d15, [%a2] lo:VADC_u16StartCounterCore3
	add	%d15, 1
	extr.u	%d15, %d15, 0, 16
	st.h	[%a2] lo:VADC_u16StartCounterCore3, %d15
	.loc 1 150 0
	jz	%d15, .L11
	.loc 1 153 0
	movh.a	%a4, hi:VADC_u16GroupBuffer8
	lea	%a4, [%a4] lo:VADC_u16GroupBuffer8
	mov	%d4, 256
	call	Adc_SetupResultBuffer
.LVL12:
	.loc 1 154 0
	mov	%d4, 256
	call	Adc_EnableGroupNotification
.LVL13:
	.loc 1 159 0
	movh.a	%a4, hi:VADC_u16GroupBuffer8_2
	lea	%a4, [%a4] lo:VADC_u16GroupBuffer8_2
	mov	%d4, 257
	call	Adc_SetupResultBuffer
.LVL14:
	.loc 1 161 0
	mov	%d4, 257
	call	Adc_EnableGroupNotification
.LVL15:
	.loc 1 164 0
	mov	%d15, 1
	.loc 1 162 0
	mov	%d4, 257
	call	Adc_EnableHardwareTrigger
.LVL16:
	.loc 1 164 0
	st.b	[%a15] lo:VADC_bConvStartedCore3, %d15
	ret
.LVL17:
.L31:
	.loc 1 101 0
	movh.a	%a12, hi:VADC_bConvStartedCore1
	ld.bu	%d2, [%a12] lo:VADC_bConvStartedCore1
.LVL18:
	jnz	%d2, .L11
	.loc 1 103 0
	movh.a	%a15, hi:VADC_u16StartCounterCore1
	ld.h	%d2, [%a15] lo:VADC_u16StartCounterCore1
	add	%d2, 1
	extr.u	%d2, %d2, 0, 16
	st.h	[%a15] lo:VADC_u16StartCounterCore1, %d2
	.loc 1 104 0
	jz	%d2, .L11
	.loc 1 106 0
	movh.a	%a4, hi:VADC_u16GroupBuffer0
	lea	%a4, [%a4] lo:VADC_u16GroupBuffer0
	mov	%d4, 0
	call	Adc_SetupResultBuffer
.LVL19:
	.loc 1 108 0
	mov	%d4, 0
	call	Adc_EnableGroupNotification
.LVL20:
	.loc 1 109 0
	mov	%d4, 0
	call	Adc_EnableHardwareTrigger
.LVL21:
	.loc 1 111 0
	movh.a	%a4, hi:VADC_u16GroupBuffer2
	lea	%a4, [%a4] lo:VADC_u16GroupBuffer2
	mov	%d4, 64
	call	Adc_SetupResultBuffer
.LVL22:
	.loc 1 113 0
	mov	%d4, 64
	call	Adc_EnableGroupNotification
.LVL23:
	.loc 1 114 0
	mov	%d4, 64
	call	Adc_EnableHardwareTrigger
.LVL24:
	.loc 1 116 0
	st.b	[%a12] lo:VADC_bConvStartedCore1, %d15
	ret
.LVL25:
.L30:
	.loc 1 84 0
	movh.a	%a4, hi:VADC_u16GroupBuffer1
	lea	%a4, [%a4] lo:VADC_u16GroupBuffer1
	mov	%d4, 32
	call	Adc_SetupResultBuffer
.LVL26:
	.loc 1 86 0
	mov	%d4, 32
	call	Adc_EnableGroupNotification
.LVL27:
	.loc 1 87 0
	mov	%d4, 32
	call	Adc_EnableHardwareTrigger
.LVL28:
	.loc 1 89 0
	movh.a	%a4, hi:VADC_u16GroupBuffer10
	mov	%d4, 320
	lea	%a4, [%a4] lo:VADC_u16GroupBuffer10
	call	Adc_SetupResultBuffer
.LVL29:
	.loc 1 90 0
	movh.a	%a4, hi:VADC_u16GroupBuffer11
	mov	%d4, 352
	lea	%a4, [%a4] lo:VADC_u16GroupBuffer11
	.loc 1 92 0
	mov	%d15, 1
	.loc 1 90 0
	call	Adc_SetupResultBuffer
.LVL30:
	.loc 1 92 0
	st.b	[%a12] lo:VADC_bConvStartedCore0, %d15
	ret
.LVL31:
.L32:
	.loc 1 125 0
	movh.a	%a12, hi:VADC_bConvStartedCore2
	ld.bu	%d15, [%a12] lo:VADC_bConvStartedCore2
	jnz	%d15, .L11
	.loc 1 127 0
	movh.a	%a15, hi:VADC_u16StartCounterCore2
	ld.h	%d15, [%a15] lo:VADC_u16StartCounterCore2
	add	%d15, 1
	extr.u	%d15, %d15, 0, 16
	st.h	[%a15] lo:VADC_u16StartCounterCore2, %d15
	.loc 1 128 0
	jz	%d15, .L11
	.loc 1 130 0
	movh.a	%a4, hi:VADC_u16GroupBuffer3
	mov	%d4, 96
	lea	%a4, [%a4] lo:VADC_u16GroupBuffer3
	call	Adc_SetupResultBuffer
.LVL32:
	.loc 1 131 0
	movh.a	%a4, hi:VADC_u16GroupBuffer3_1
	lea	%a4, [%a4] lo:VADC_u16GroupBuffer3_1
	mov	%d4, 97
	call	Adc_SetupResultBuffer
.LVL33:
	.loc 1 133 0
	mov	%d4, 96
	call	Adc_EnableGroupNotification
.LVL34:
	.loc 1 134 0
	mov	%d4, 96
	call	Adc_EnableHardwareTrigger
.LVL35:
	.loc 1 138 0
	mov	%d15, 1
	.loc 1 136 0
	mov	%d4, 97
	call	Adc_EnableGroupNotification
.LVL36:
	.loc 1 138 0
	st.b	[%a12] lo:VADC_bConvStartedCore2, %d15
	ret
.LFE20:
	.size	VADC_vidMainFunction, .-VADC_vidMainFunction
	.global	VADC_u16GroupBuffer11
.section .bss.a2.VADC_u16GroupBuffer11,"aw",@nobits
	.align 1
	.type	VADC_u16GroupBuffer11, @object
	.size	VADC_u16GroupBuffer11, 32
VADC_u16GroupBuffer11:
	.zero	32
	.global	VADC_u16GroupBuffer10
.section .bss.a2.VADC_u16GroupBuffer10,"aw",@nobits
	.align 1
	.type	VADC_u16GroupBuffer10, @object
	.size	VADC_u16GroupBuffer10, 32
VADC_u16GroupBuffer10:
	.zero	32
	.global	VADC_u16GroupBuffer8_2
.section .bss.a2.VADC_u16GroupBuffer8_2,"aw",@nobits
	.align 1
	.type	VADC_u16GroupBuffer8_2, @object
	.size	VADC_u16GroupBuffer8_2, 32
VADC_u16GroupBuffer8_2:
	.zero	32
	.global	VADC_u16GroupBuffer8
.section .bss.a2.VADC_u16GroupBuffer8,"aw",@nobits
	.align 1
	.type	VADC_u16GroupBuffer8, @object
	.size	VADC_u16GroupBuffer8, 32
VADC_u16GroupBuffer8:
	.zero	32
	.global	VADC_u16GroupBuffer4
.section .bss.a2.VADC_u16GroupBuffer4,"aw",@nobits
	.align 1
	.type	VADC_u16GroupBuffer4, @object
	.size	VADC_u16GroupBuffer4, 32
VADC_u16GroupBuffer4:
	.zero	32
	.global	VADC_u16GroupBuffer3_1
.section .bss.a2.VADC_u16GroupBuffer3_1,"aw",@nobits
	.align 1
	.type	VADC_u16GroupBuffer3_1, @object
	.size	VADC_u16GroupBuffer3_1, 32
VADC_u16GroupBuffer3_1:
	.zero	32
	.global	VADC_u16GroupBuffer3
.section .bss.a2.VADC_u16GroupBuffer3,"aw",@nobits
	.align 1
	.type	VADC_u16GroupBuffer3, @object
	.size	VADC_u16GroupBuffer3, 32
VADC_u16GroupBuffer3:
	.zero	32
	.global	VADC_u16GroupBuffer2
.section .bss.a2.VADC_u16GroupBuffer2,"aw",@nobits
	.align 1
	.type	VADC_u16GroupBuffer2, @object
	.size	VADC_u16GroupBuffer2, 32
VADC_u16GroupBuffer2:
	.zero	32
	.global	VADC_u16GroupBuffer1
.section .bss.a2.VADC_u16GroupBuffer1,"aw",@nobits
	.align 1
	.type	VADC_u16GroupBuffer1, @object
	.size	VADC_u16GroupBuffer1, 32
VADC_u16GroupBuffer1:
	.zero	32
	.global	VADC_u16GroupBuffer0
.section .bss.a2.VADC_u16GroupBuffer0,"aw",@nobits
	.align 1
	.type	VADC_u16GroupBuffer0, @object
	.size	VADC_u16GroupBuffer0, 32
VADC_u16GroupBuffer0:
	.zero	32
	.global	VADC_u16StartCounterCore3
.section .bss.a2.VADC_u16StartCounterCore3,"aw",@nobits
	.align 1
	.type	VADC_u16StartCounterCore3, @object
	.size	VADC_u16StartCounterCore3, 2
VADC_u16StartCounterCore3:
	.zero	2
	.global	VADC_u16StartCounterCore2
.section .bss.a2.VADC_u16StartCounterCore2,"aw",@nobits
	.align 1
	.type	VADC_u16StartCounterCore2, @object
	.size	VADC_u16StartCounterCore2, 2
VADC_u16StartCounterCore2:
	.zero	2
	.global	VADC_u16StartCounterCore1
.section .bss.a2.VADC_u16StartCounterCore1,"aw",@nobits
	.align 1
	.type	VADC_u16StartCounterCore1, @object
	.size	VADC_u16StartCounterCore1, 2
VADC_u16StartCounterCore1:
	.zero	2
	.global	VADC_u16StartCounterCore0
.section .bss.a2.VADC_u16StartCounterCore0,"aw",@nobits
	.align 1
	.type	VADC_u16StartCounterCore0, @object
	.size	VADC_u16StartCounterCore0, 2
VADC_u16StartCounterCore0:
	.zero	2
	.global	VADC_bSwConvStartCore3
.section .bss.a1.VADC_bSwConvStartCore3,"aw",@nobits
	.type	VADC_bSwConvStartCore3, @object
	.size	VADC_bSwConvStartCore3, 1
VADC_bSwConvStartCore3:
	.zero	1
	.global	VADC_bSwConvStartCore1
.section .bss.a1.VADC_bSwConvStartCore1,"aw",@nobits
	.type	VADC_bSwConvStartCore1, @object
	.size	VADC_bSwConvStartCore1, 1
VADC_bSwConvStartCore1:
	.zero	1
	.global	VADC_bConvStartedCore3
.section .bss.a1.VADC_bConvStartedCore3,"aw",@nobits
	.type	VADC_bConvStartedCore3, @object
	.size	VADC_bConvStartedCore3, 1
VADC_bConvStartedCore3:
	.zero	1
	.global	VADC_bConvStartedCore2
.section .bss.a1.VADC_bConvStartedCore2,"aw",@nobits
	.type	VADC_bConvStartedCore2, @object
	.size	VADC_bConvStartedCore2, 1
VADC_bConvStartedCore2:
	.zero	1
	.global	VADC_bConvStartedCore1
.section .bss.a1.VADC_bConvStartedCore1,"aw",@nobits
	.type	VADC_bConvStartedCore1, @object
	.size	VADC_bConvStartedCore1, 1
VADC_bConvStartedCore1:
	.zero	1
	.global	VADC_bConvStartedCore0
.section .bss.a1.VADC_bConvStartedCore0,"aw",@nobits
	.type	VADC_bConvStartedCore0, @object
	.size	VADC_bConvStartedCore0, 1
VADC_bConvStartedCore0:
	.zero	1
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
	.uaword	.LFB19
	.uaword	.LFE19-.LFB19
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB20
	.uaword	.LFE20-.LFB20
	.align 2
.LEFDE2:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 4 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Adc\\inc\\Adc.h"
	.file 5 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x9f0
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\VADC\\VADC.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ltext0
	.uaword	.Letext0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x2
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
	.uleb128 0x3
	.string	"uint16"
	.byte	0x2
	.byte	0x5b
	.uaword	0x1e5
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
	.uaword	0x221
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
	.byte	0x2
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
	.uleb128 0x3
	.string	"Std_ReturnType"
	.byte	0x3
	.byte	0x60
	.uaword	0x1ac
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x3
	.string	"Adc_GroupType"
	.byte	0x4
	.byte	0xa1
	.uaword	0x1d7
	.uleb128 0x3
	.string	"Adc_ValueGroupType"
	.byte	0x4
	.byte	0xa5
	.uaword	0x1d7
	.uleb128 0x4
	.byte	0x1
	.string	"VADC_vidTreatment"
	.byte	0x1
	.byte	0x1f
	.byte	0x1
	.uaword	.LFB19
	.uaword	.LFE19
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x3b6
	.uleb128 0x5
	.string	"lCoreId"
	.byte	0x1
	.byte	0x21
	.uaword	0x213
	.uaword	.LLST0
	.uleb128 0x6
	.uaword	.LVL0
	.uaword	0x8e4
	.uleb128 0x7
	.uaword	.LVL1
	.uaword	0x900
	.uaword	0x337
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x140
	.byte	0
	.uleb128 0x9
	.uaword	.LVL2
	.byte	0x1
	.uaword	0x900
	.uaword	0x34d
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x160
	.byte	0
	.uleb128 0x7
	.uaword	.LVL3
	.uaword	0x92f
	.uaword	0x362
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x140
	.byte	0
	.uleb128 0x9
	.uaword	.LVL4
	.byte	0x1
	.uaword	0x92f
	.uaword	0x378
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x160
	.byte	0
	.uleb128 0x9
	.uaword	.LVL5
	.byte	0x1
	.uaword	0x900
	.uaword	0x38e
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x100
	.byte	0
	.uleb128 0x9
	.uaword	.LVL6
	.byte	0x1
	.uaword	0x900
	.uaword	0x3a4
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x100
	.byte	0
	.uleb128 0xa
	.uaword	.LVL7
	.byte	0x1
	.uaword	0x900
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x61
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.string	"VADC_vidMainFunction"
	.byte	0x1
	.byte	0x46
	.byte	0x1
	.uaword	.LFB20
	.uaword	.LFE20
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x5f2
	.uleb128 0x5
	.string	"lCoreId"
	.byte	0x1
	.byte	0x48
	.uaword	0x213
	.uaword	.LLST1
	.uleb128 0x6
	.uaword	.LVL8
	.uaword	0x8e4
	.uleb128 0x7
	.uaword	.LVL12
	.uaword	0x95f
	.uaword	0x41a
	.uleb128 0x8
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	VADC_u16GroupBuffer8
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x100
	.byte	0
	.uleb128 0x7
	.uaword	.LVL13
	.uaword	0x99f
	.uaword	0x42f
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x100
	.byte	0
	.uleb128 0x7
	.uaword	.LVL14
	.uaword	0x95f
	.uaword	0x44d
	.uleb128 0x8
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	VADC_u16GroupBuffer8_2
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x101
	.byte	0
	.uleb128 0x7
	.uaword	.LVL15
	.uaword	0x99f
	.uaword	0x462
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x101
	.byte	0
	.uleb128 0x7
	.uaword	.LVL16
	.uaword	0x9cc
	.uaword	0x477
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x101
	.byte	0
	.uleb128 0x7
	.uaword	.LVL19
	.uaword	0x95f
	.uaword	0x493
	.uleb128 0x8
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	VADC_u16GroupBuffer0
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x7
	.uaword	.LVL20
	.uaword	0x99f
	.uaword	0x4a6
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x7
	.uaword	.LVL21
	.uaword	0x9cc
	.uaword	0x4b9
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x7
	.uaword	.LVL22
	.uaword	0x95f
	.uaword	0x4d6
	.uleb128 0x8
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	VADC_u16GroupBuffer2
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x7
	.uaword	.LVL23
	.uaword	0x99f
	.uaword	0x4ea
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x7
	.uaword	.LVL24
	.uaword	0x9cc
	.uaword	0x4fe
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x7
	.uaword	.LVL26
	.uaword	0x95f
	.uaword	0x51b
	.uleb128 0x8
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	VADC_u16GroupBuffer1
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.uaword	.LVL27
	.uaword	0x99f
	.uaword	0x52f
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.uaword	.LVL28
	.uaword	0x9cc
	.uaword	0x543
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.uaword	.LVL29
	.uaword	0x95f
	.uaword	0x561
	.uleb128 0x8
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	VADC_u16GroupBuffer10
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x140
	.byte	0
	.uleb128 0x7
	.uaword	.LVL30
	.uaword	0x95f
	.uaword	0x57f
	.uleb128 0x8
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	VADC_u16GroupBuffer11
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x160
	.byte	0
	.uleb128 0x7
	.uaword	.LVL32
	.uaword	0x95f
	.uaword	0x59c
	.uleb128 0x8
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	VADC_u16GroupBuffer3
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x60
	.byte	0
	.uleb128 0x7
	.uaword	.LVL33
	.uaword	0x95f
	.uaword	0x5b9
	.uleb128 0x8
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	VADC_u16GroupBuffer3_1
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x61
	.byte	0
	.uleb128 0x7
	.uaword	.LVL34
	.uaword	0x99f
	.uaword	0x5cd
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x60
	.byte	0
	.uleb128 0x7
	.uaword	.LVL35
	.uaword	0x9cc
	.uaword	0x5e1
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x60
	.byte	0
	.uleb128 0xb
	.uaword	.LVL36
	.uaword	0x99f
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x61
	.byte	0
	.byte	0
	.uleb128 0xc
	.uaword	0x1d7
	.uaword	0x602
	.uleb128 0xd
	.uaword	0x2a4
	.byte	0xf
	.byte	0
	.uleb128 0xe
	.string	"VADC_u16GroupBuffer0"
	.byte	0x1
	.byte	0x11
	.uaword	0x5f2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	VADC_u16GroupBuffer0
	.uleb128 0xe
	.string	"VADC_u16GroupBuffer1"
	.byte	0x1
	.byte	0x12
	.uaword	0x5f2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	VADC_u16GroupBuffer1
	.uleb128 0xe
	.string	"VADC_u16GroupBuffer2"
	.byte	0x1
	.byte	0x13
	.uaword	0x5f2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	VADC_u16GroupBuffer2
	.uleb128 0xe
	.string	"VADC_u16GroupBuffer3"
	.byte	0x1
	.byte	0x14
	.uaword	0x5f2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	VADC_u16GroupBuffer3
	.uleb128 0xe
	.string	"VADC_u16GroupBuffer3_1"
	.byte	0x1
	.byte	0x15
	.uaword	0x5f2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	VADC_u16GroupBuffer3_1
	.uleb128 0xe
	.string	"VADC_u16GroupBuffer4"
	.byte	0x1
	.byte	0x16
	.uaword	0x5f2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	VADC_u16GroupBuffer4
	.uleb128 0xe
	.string	"VADC_u16GroupBuffer8"
	.byte	0x1
	.byte	0x17
	.uaword	0x5f2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	VADC_u16GroupBuffer8
	.uleb128 0xe
	.string	"VADC_u16GroupBuffer8_2"
	.byte	0x1
	.byte	0x18
	.uaword	0x5f2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	VADC_u16GroupBuffer8_2
	.uleb128 0xe
	.string	"VADC_u16GroupBuffer10"
	.byte	0x1
	.byte	0x19
	.uaword	0x5f2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	VADC_u16GroupBuffer10
	.uleb128 0xe
	.string	"VADC_u16GroupBuffer11"
	.byte	0x1
	.byte	0x1a
	.uaword	0x5f2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	VADC_u16GroupBuffer11
	.uleb128 0xe
	.string	"VADC_bConvStartedCore0"
	.byte	0x1
	.byte	0x6
	.uaword	0x25e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	VADC_bConvStartedCore0
	.uleb128 0xe
	.string	"VADC_bConvStartedCore1"
	.byte	0x1
	.byte	0x7
	.uaword	0x25e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	VADC_bConvStartedCore1
	.uleb128 0xe
	.string	"VADC_bConvStartedCore2"
	.byte	0x1
	.byte	0x8
	.uaword	0x25e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	VADC_bConvStartedCore2
	.uleb128 0xe
	.string	"VADC_bConvStartedCore3"
	.byte	0x1
	.byte	0x9
	.uaword	0x25e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	VADC_bConvStartedCore3
	.uleb128 0xe
	.string	"VADC_bSwConvStartCore1"
	.byte	0x1
	.byte	0xa
	.uaword	0x25e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	VADC_bSwConvStartCore1
	.uleb128 0xe
	.string	"VADC_bSwConvStartCore3"
	.byte	0x1
	.byte	0xb
	.uaword	0x25e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	VADC_bSwConvStartCore3
	.uleb128 0xe
	.string	"VADC_u16StartCounterCore0"
	.byte	0x1
	.byte	0xc
	.uaword	0x1d7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	VADC_u16StartCounterCore0
	.uleb128 0xe
	.string	"VADC_u16StartCounterCore1"
	.byte	0x1
	.byte	0xd
	.uaword	0x1d7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	VADC_u16StartCounterCore1
	.uleb128 0xe
	.string	"VADC_u16StartCounterCore2"
	.byte	0x1
	.byte	0xe
	.uaword	0x1d7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	VADC_u16StartCounterCore2
	.uleb128 0xe
	.string	"VADC_u16StartCounterCore3"
	.byte	0x1
	.byte	0xf
	.uaword	0x1d7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	VADC_u16StartCounterCore3
	.uleb128 0xf
	.byte	0x1
	.string	"Mcal_GetCpuIndex"
	.byte	0x5
	.uahalf	0x335
	.byte	0x1
	.uaword	0x213
	.byte	0x1
	.uleb128 0x10
	.byte	0x1
	.string	"Adc_StartGroupConversion"
	.byte	0x4
	.uahalf	0x261
	.byte	0x1
	.byte	0x1
	.uaword	0x92a
	.uleb128 0x11
	.uaword	0x92a
	.byte	0
	.uleb128 0x12
	.uaword	0x2b0
	.uleb128 0x10
	.byte	0x1
	.string	"Adc_StartGroupConversionSimple"
	.byte	0x4
	.uahalf	0x262
	.byte	0x1
	.byte	0x1
	.uaword	0x95f
	.uleb128 0x11
	.uaword	0x92a
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"Adc_SetupResultBuffer"
	.byte	0x4
	.uahalf	0x216
	.byte	0x1
	.uaword	0x28e
	.byte	0x1
	.uaword	0x98f
	.uleb128 0x11
	.uaword	0x92a
	.uleb128 0x11
	.uaword	0x98f
	.byte	0
	.uleb128 0x12
	.uaword	0x994
	.uleb128 0x14
	.byte	0x4
	.uaword	0x99a
	.uleb128 0x12
	.uaword	0x2c5
	.uleb128 0x10
	.byte	0x1
	.string	"Adc_EnableGroupNotification"
	.byte	0x4
	.uahalf	0x31e
	.byte	0x1
	.byte	0x1
	.uaword	0x9cc
	.uleb128 0x11
	.uaword	0x92a
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.string	"Adc_EnableHardwareTrigger"
	.byte	0x4
	.uahalf	0x2d7
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.uaword	0x92a
	.byte	0
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
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
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
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
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
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x14
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0-.text
	.uaword	.LVL1-1-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL2-.text
	.uaword	.LVL3-1-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL4-.text
	.uaword	.LVL5-1-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL5-.text
	.uaword	.LVL6-1-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL6-.text
	.uaword	.LVL7-1-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL9-.text
	.uaword	.LVL10-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL11-.text
	.uaword	.LVL12-1-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL17-.text
	.uaword	.LVL18-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL18-.text
	.uaword	.LVL25-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL25-.text
	.uaword	.LVL26-1-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL31-.text
	.uaword	.LVL32-1-.text
	.uahalf	0x1
	.byte	0x52
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
	.extern	Adc_EnableHardwareTrigger,STT_FUNC,0
	.extern	Adc_EnableGroupNotification,STT_FUNC,0
	.extern	Adc_SetupResultBuffer,STT_FUNC,0
	.extern	Adc_StartGroupConversionSimple,STT_FUNC,0
	.extern	Adc_StartGroupConversion,STT_FUNC,0
	.extern	Mcal_GetCpuIndex,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
