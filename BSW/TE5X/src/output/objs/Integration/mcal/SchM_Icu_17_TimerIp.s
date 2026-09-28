	.file	"SchM_Icu_17_TimerIp.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.SchM_Enter_Icu_17_TimerIp_ResetEdgeCount,"ax",@progbits
	.align 1
	.global	SchM_Enter_Icu_17_TimerIp_ResetEdgeCount
	.type	SchM_Enter_Icu_17_TimerIp_ResetEdgeCount, @function
SchM_Enter_Icu_17_TimerIp_ResetEdgeCount:
.LFB19:
	.file 1 "Integration\\mcal\\SchM_Icu_17_TimerIp.c"
	.loc 1 87 0
	.loc 1 88 0
	j	SuspendAllInterrupts
.LVL0:
.LFE19:
	.size	SchM_Enter_Icu_17_TimerIp_ResetEdgeCount, .-SchM_Enter_Icu_17_TimerIp_ResetEdgeCount
.section .text.SchM_Exit_Icu_17_TimerIp_ResetEdgeCount,"ax",@progbits
	.align 1
	.global	SchM_Exit_Icu_17_TimerIp_ResetEdgeCount
	.type	SchM_Exit_Icu_17_TimerIp_ResetEdgeCount, @function
SchM_Exit_Icu_17_TimerIp_ResetEdgeCount:
.LFB20:
	.loc 1 119 0
	.loc 1 125 0
	j	ResumeAllInterrupts
.LVL1:
.LFE20:
	.size	SchM_Exit_Icu_17_TimerIp_ResetEdgeCount, .-SchM_Exit_Icu_17_TimerIp_ResetEdgeCount
.section .text.SchM_Enter_Icu_17_TimerIp_SetActivationCondition,"ax",@progbits
	.align 1
	.global	SchM_Enter_Icu_17_TimerIp_SetActivationCondition
	.type	SchM_Enter_Icu_17_TimerIp_SetActivationCondition, @function
SchM_Enter_Icu_17_TimerIp_SetActivationCondition:
.LFB21:
	.loc 1 150 0
	.loc 1 151 0
	j	SuspendAllInterrupts
.LVL2:
.LFE21:
	.size	SchM_Enter_Icu_17_TimerIp_SetActivationCondition, .-SchM_Enter_Icu_17_TimerIp_SetActivationCondition
.section .text.SchM_Exit_Icu_17_TimerIp_SetActivationCondition,"ax",@progbits
	.align 1
	.global	SchM_Exit_Icu_17_TimerIp_SetActivationCondition
	.type	SchM_Exit_Icu_17_TimerIp_SetActivationCondition, @function
SchM_Exit_Icu_17_TimerIp_SetActivationCondition:
.LFB22:
	.loc 1 181 0
	.loc 1 187 0
	j	ResumeAllInterrupts
.LVL3:
.LFE22:
	.size	SchM_Exit_Icu_17_TimerIp_SetActivationCondition, .-SchM_Exit_Icu_17_TimerIp_SetActivationCondition
.section .text.SchM_Enter_Icu_17_TimerIp_GtmEnableEdgeCount,"ax",@progbits
	.align 1
	.global	SchM_Enter_Icu_17_TimerIp_GtmEnableEdgeCount
	.type	SchM_Enter_Icu_17_TimerIp_GtmEnableEdgeCount, @function
SchM_Enter_Icu_17_TimerIp_GtmEnableEdgeCount:
.LFB23:
	.loc 1 212 0
	.loc 1 213 0
	j	SuspendAllInterrupts
.LVL4:
.LFE23:
	.size	SchM_Enter_Icu_17_TimerIp_GtmEnableEdgeCount, .-SchM_Enter_Icu_17_TimerIp_GtmEnableEdgeCount
.section .text.SchM_Exit_Icu_17_TimerIp_GtmEnableEdgeCount,"ax",@progbits
	.align 1
	.global	SchM_Exit_Icu_17_TimerIp_GtmEnableEdgeCount
	.type	SchM_Exit_Icu_17_TimerIp_GtmEnableEdgeCount, @function
SchM_Exit_Icu_17_TimerIp_GtmEnableEdgeCount:
.LFB24:
	.loc 1 243 0
	.loc 1 249 0
	j	ResumeAllInterrupts
.LVL5:
.LFE24:
	.size	SchM_Exit_Icu_17_TimerIp_GtmEnableEdgeCount, .-SchM_Exit_Icu_17_TimerIp_GtmEnableEdgeCount
.section .text.SchM_Enter_Icu_17_TimerIp_GtmGetDutyCycle,"ax",@progbits
	.align 1
	.global	SchM_Enter_Icu_17_TimerIp_GtmGetDutyCycle
	.type	SchM_Enter_Icu_17_TimerIp_GtmGetDutyCycle, @function
SchM_Enter_Icu_17_TimerIp_GtmGetDutyCycle:
.LFB25:
	.loc 1 274 0
	.loc 1 275 0
	j	SuspendAllInterrupts
.LVL6:
.LFE25:
	.size	SchM_Enter_Icu_17_TimerIp_GtmGetDutyCycle, .-SchM_Enter_Icu_17_TimerIp_GtmGetDutyCycle
.section .text.SchM_Exit_Icu_17_TimerIp_GtmGetDutyCycle,"ax",@progbits
	.align 1
	.global	SchM_Exit_Icu_17_TimerIp_GtmGetDutyCycle
	.type	SchM_Exit_Icu_17_TimerIp_GtmGetDutyCycle, @function
SchM_Exit_Icu_17_TimerIp_GtmGetDutyCycle:
.LFB26:
	.loc 1 305 0
	.loc 1 311 0
	j	ResumeAllInterrupts
.LVL7:
.LFE26:
	.size	SchM_Exit_Icu_17_TimerIp_GtmGetDutyCycle, .-SchM_Exit_Icu_17_TimerIp_GtmGetDutyCycle
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
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB21
	.uaword	.LFE21-.LFB21
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB22
	.uaword	.LFE22-.LFB22
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB23
	.uaword	.LFE23-.LFB23
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB24
	.uaword	.LFE24-.LFB24
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB25
	.uaword	.LFE25-.LFB25
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB26
	.uaword	.LFE26-.LFB26
	.align 2
.LEFDE14:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\Integration\\TC38x\\IFX_Os.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x500
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"Integration\\mcal\\SchM_Icu_17_TimerIp.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0
	.uaword	0
	.uaword	0
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x3
	.byte	0x1
	.string	"SchM_Enter_Icu_17_TimerIp_ResetEdgeCount"
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.uaword	.LFB19
	.uaword	.LFE19
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x2b7
	.uleb128 0x4
	.uaword	.LVL0
	.byte	0x1
	.uaword	0x4ce
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.string	"SchM_Exit_Icu_17_TimerIp_ResetEdgeCount"
	.byte	0x1
	.byte	0x76
	.byte	0x1
	.uaword	.LFB20
	.uaword	.LFE20
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x2ff
	.uleb128 0x4
	.uaword	.LVL1
	.byte	0x1
	.uaword	0x4e9
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.string	"SchM_Enter_Icu_17_TimerIp_SetActivationCondition"
	.byte	0x1
	.byte	0x95
	.byte	0x1
	.uaword	.LFB21
	.uaword	.LFE21
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x350
	.uleb128 0x4
	.uaword	.LVL2
	.byte	0x1
	.uaword	0x4ce
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.string	"SchM_Exit_Icu_17_TimerIp_SetActivationCondition"
	.byte	0x1
	.byte	0xb4
	.byte	0x1
	.uaword	.LFB22
	.uaword	.LFE22
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x3a0
	.uleb128 0x4
	.uaword	.LVL3
	.byte	0x1
	.uaword	0x4e9
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.string	"SchM_Enter_Icu_17_TimerIp_GtmEnableEdgeCount"
	.byte	0x1
	.byte	0xd3
	.byte	0x1
	.uaword	.LFB23
	.uaword	.LFE23
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x3ed
	.uleb128 0x4
	.uaword	.LVL4
	.byte	0x1
	.uaword	0x4ce
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.string	"SchM_Exit_Icu_17_TimerIp_GtmEnableEdgeCount"
	.byte	0x1
	.byte	0xf2
	.byte	0x1
	.uaword	.LFB24
	.uaword	.LFE24
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x439
	.uleb128 0x4
	.uaword	.LVL5
	.byte	0x1
	.uaword	0x4e9
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.string	"SchM_Enter_Icu_17_TimerIp_GtmGetDutyCycle"
	.byte	0x1
	.uahalf	0x111
	.byte	0x1
	.uaword	.LFB25
	.uaword	.LFE25
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x484
	.uleb128 0x4
	.uaword	.LVL6
	.byte	0x1
	.uaword	0x4ce
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.string	"SchM_Exit_Icu_17_TimerIp_GtmGetDutyCycle"
	.byte	0x1
	.uahalf	0x130
	.byte	0x1
	.uaword	.LFB26
	.uaword	.LFE26
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x4ce
	.uleb128 0x4
	.uaword	.LVL7
	.byte	0x1
	.uaword	0x4e9
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.string	"SuspendAllInterrupts"
	.byte	0x2
	.byte	0x31
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.string	"ResumeAllInterrupts"
	.byte	0x2
	.byte	0x32
	.byte	0x1
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
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
.section .debug_aranges,"",@progbits
	.uaword	0x54
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB19
	.uaword	.LFE19-.LFB19
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
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB19
	.uaword	.LFE19
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
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.extern	ResumeAllInterrupts,STT_FUNC,0
	.extern	SuspendAllInterrupts,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
