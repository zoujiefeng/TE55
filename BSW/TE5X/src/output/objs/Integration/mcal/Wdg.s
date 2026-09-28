	.file	"Wdg.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Wdg_SetMode,"ax",@progbits
	.align 1
	.global	Wdg_SetMode
	.type	Wdg_SetMode, @function
Wdg_SetMode:
.LFB175:
	.file 1 "Integration\\mcal\\Wdg.c"
	.loc 1 56 0
.LVL0:
	.loc 1 58 0
	mov	%d2, 0
	ret
.LFE175:
	.size	Wdg_SetMode, .-Wdg_SetMode
.section .text.Wdg_SetTriggerCondition,"ax",@progbits
	.align 1
	.global	Wdg_SetTriggerCondition
	.type	Wdg_SetTriggerCondition, @function
Wdg_SetTriggerCondition:
.LFB176:
	.loc 1 69 0
.LVL1:
	.loc 1 69 0
	mov	%d15, %d4
	.loc 1 70 0
	call	IfxScuWdt_getCpuWatchdogPassword
.LVL2:
	mov	%d4, %d2
	call	IfxScuWdt_enableCpuWatchdog
.LVL3:
	.loc 1 71 0
	call	IfxScuWdt_getCpuWatchdogPassword
.LVL4:
	movh	%d5, 2
	addi	%d5, %d5, -31072
	mul	%d5, %d15
	mov	%d4, %d2
	sh	%d5, %d5, -14
	not	%d5
	extr.u	%d5, %d5, 0, 16
	call	IfxScuWdt_changeCpuWatchdogReload
.LVL5:
	.loc 1 72 0
	call	IfxScuWdt_getCpuWatchdogPassword
.LVL6:
	mov	%d4, %d2
	j	IfxScuWdt_serviceCpuWatchdog
.LVL7:
.LFE176:
	.size	Wdg_SetTriggerCondition, .-Wdg_SetTriggerCondition
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
	.uaword	.LFB175
	.uaword	.LFE175-.LFB175
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB176
	.uaword	.LFE176-.LFB176
	.align 2
.LEFDE2:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 4 ".\\output\\inc/..\\..\\bsw\\WdgIf\\api\\WdgIf_Types.h"
	.file 5 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\Scu\\Std\\IfxScuWdt.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x482
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"Integration\\mcal\\Wdg.c"
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
	.uaword	0x1c1
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
	.uaword	0x1ed
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
	.uaword	0x229
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
	.string	"Std_ReturnType"
	.byte	0x3
	.byte	0x60
	.uaword	0x1b4
	.uleb128 0x4
	.byte	0x1
	.byte	0x4
	.byte	0x22
	.uaword	0x2db
	.uleb128 0x5
	.string	"WDGIF_OFF_MODE"
	.sleb128 0
	.uleb128 0x5
	.string	"WDGIF_SLOW_MODE"
	.sleb128 1
	.uleb128 0x5
	.string	"WDGIF_FAST_MODE"
	.sleb128 2
	.byte	0
	.uleb128 0x3
	.string	"WdgIf_ModeType"
	.byte	0x4
	.byte	0x26
	.uaword	0x29d
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x6
	.byte	0x1
	.string	"Wdg_SetMode"
	.byte	0x1
	.byte	0x37
	.byte	0x1
	.uaword	0x287
	.uaword	.LFB175
	.uaword	.LFE175
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x33e
	.uleb128 0x7
	.string	"l_WdgMode"
	.byte	0x1
	.byte	0x37
	.uaword	0x2db
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.string	"Wdg_SetTriggerCondition"
	.byte	0x1
	.byte	0x44
	.byte	0x1
	.uaword	.LFB176
	.uaword	.LFE176
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x3ca
	.uleb128 0x9
	.string	"timeout"
	.byte	0x1
	.byte	0x44
	.uaword	0x1df
	.uaword	.LLST0
	.uleb128 0xa
	.uaword	.LVL2
	.uaword	0x3ca
	.uleb128 0xa
	.uaword	.LVL3
	.uaword	0x3f6
	.uleb128 0xa
	.uaword	.LVL4
	.uaword	0x3ca
	.uleb128 0xb
	.uaword	.LVL5
	.uaword	0x423
	.uaword	0x3b6
	.uleb128 0xc
	.byte	0x1
	.byte	0x55
	.byte	0xb
	.byte	0x7f
	.sleb128 0
	.byte	0xc
	.uaword	0x186a0
	.byte	0x1e
	.byte	0x3e
	.byte	0x25
	.byte	0x20
	.byte	0
	.uleb128 0xa
	.uaword	.LVL6
	.uaword	0x3ca
	.uleb128 0xd
	.uaword	.LVL7
	.byte	0x1
	.uaword	0x45b
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.string	"IfxScuWdt_getCpuWatchdogPassword"
	.byte	0x5
	.uahalf	0x1d9
	.byte	0x1
	.uaword	0x1df
	.byte	0x1
	.uleb128 0xf
	.byte	0x1
	.string	"IfxScuWdt_enableCpuWatchdog"
	.byte	0x5
	.uahalf	0x1c6
	.byte	0x1
	.byte	0x1
	.uaword	0x423
	.uleb128 0x10
	.uaword	0x1df
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.string	"IfxScuWdt_changeCpuWatchdogReload"
	.byte	0x5
	.uahalf	0x17f
	.byte	0x1
	.byte	0x1
	.uaword	0x45b
	.uleb128 0x10
	.uaword	0x1df
	.uleb128 0x10
	.uaword	0x1df
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"IfxScuWdt_serviceCpuWatchdog"
	.byte	0x5
	.uahalf	0x205
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.uaword	0x1df
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uaword	.LVL1
	.uaword	.LVL2-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL2-1
	.uaword	.LFE176
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x24
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB175
	.uaword	.LFE175-.LFB175
	.uaword	.LFB176
	.uaword	.LFE176-.LFB176
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB175
	.uaword	.LFE175
	.uaword	.LFB176
	.uaword	.LFE176
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.extern	IfxScuWdt_serviceCpuWatchdog,STT_FUNC,0
	.extern	IfxScuWdt_changeCpuWatchdogReload,STT_FUNC,0
	.extern	IfxScuWdt_enableCpuWatchdog,STT_FUNC,0
	.extern	IfxScuWdt_getCpuWatchdogPassword,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
