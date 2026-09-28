	.file	"Can_17_McmCan_Irq.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Os_Entry_CAN0SR0_ISR,"ax",@progbits
	.align 1
	.global	Os_Entry_CAN0SR0_ISR
	.type	Os_Entry_CAN0SR0_ISR, @function
Os_Entry_CAN0SR0_ISR:
.LFB19:
	.file 1 "Integration\\mcal\\Can_17_McmCan_Irq.c"
	.loc 1 553 0
.LBB34:
.LBB35:
	.file 2 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\machine\\intrinsics.h"
	.loc 2 172 0
#APP
	# 172 "s:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	enable
	# 0 "" 2
#NO_APP
.LBE35:
.LBE34:
	.loc 1 558 0
	mov	%e4, 0
	j	Can_17_McmCan_IsrReceiveHandler
.LVL0:
.LFE19:
	.size	Os_Entry_CAN0SR0_ISR, .-Os_Entry_CAN0SR0_ISR
.section .text.Os_Entry_CAN0SR1_ISR,"ax",@progbits
	.align 1
	.global	Os_Entry_CAN0SR1_ISR
	.type	Os_Entry_CAN0SR1_ISR, @function
Os_Entry_CAN0SR1_ISR:
.LFB20:
	.loc 1 590 0
.LBB36:
.LBB37:
	.loc 2 172 0
#APP
	# 172 "s:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	enable
	# 0 "" 2
#NO_APP
.LBE37:
.LBE36:
	.loc 1 595 0
	mov	%e4, 0
	j	Can_17_McmCan_IsrTransmitHandler
.LVL1:
.LFE20:
	.size	Os_Entry_CAN0SR1_ISR, .-Os_Entry_CAN0SR1_ISR
.section .text.Os_Entry_CAN0SR2_ISR,"ax",@progbits
	.align 1
	.global	Os_Entry_CAN0SR2_ISR
	.type	Os_Entry_CAN0SR2_ISR, @function
Os_Entry_CAN0SR2_ISR:
.LFB21:
	.loc 1 627 0
.LBB38:
.LBB39:
	.loc 2 172 0
#APP
	# 172 "s:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	enable
	# 0 "" 2
#NO_APP
.LBE39:
.LBE38:
	.loc 1 632 0
	mov	%e4, 0
	j	Can_17_McmCan_IsrBusOffHandler
.LVL2:
.LFE21:
	.size	Os_Entry_CAN0SR2_ISR, .-Os_Entry_CAN0SR2_ISR
.section .text.Os_Entry_CAN0SR3_ISR,"ax",@progbits
	.align 1
	.global	Os_Entry_CAN0SR3_ISR
	.type	Os_Entry_CAN0SR3_ISR, @function
Os_Entry_CAN0SR3_ISR:
.LFB22:
	.loc 1 666 0
.LBB40:
.LBB41:
	.loc 2 172 0
#APP
	# 172 "s:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	enable
	# 0 "" 2
#NO_APP
.LBE41:
.LBE40:
	.loc 1 672 0
	mov	%e4, 0
	j	Can_17_McmCan_IsrRxFIFOHandler
.LVL3:
.LFE22:
	.size	Os_Entry_CAN0SR3_ISR, .-Os_Entry_CAN0SR3_ISR
.section .text.Os_Entry_CAN0SR4_ISR,"ax",@progbits
	.align 1
	.global	Os_Entry_CAN0SR4_ISR
	.type	Os_Entry_CAN0SR4_ISR, @function
Os_Entry_CAN0SR4_ISR:
.LFB23:
	.loc 1 704 0
.LBB42:
.LBB43:
	.loc 2 172 0
#APP
	# 172 "s:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	enable
	# 0 "" 2
#NO_APP
.LBE43:
.LBE42:
	.loc 1 709 0
	mov	%d4, 0
	mov	%d5, 1
	j	Can_17_McmCan_IsrReceiveHandler
.LVL4:
.LFE23:
	.size	Os_Entry_CAN0SR4_ISR, .-Os_Entry_CAN0SR4_ISR
.section .text.Os_Entry_CAN0SR5_ISR,"ax",@progbits
	.align 1
	.global	Os_Entry_CAN0SR5_ISR
	.type	Os_Entry_CAN0SR5_ISR, @function
Os_Entry_CAN0SR5_ISR:
.LFB24:
	.loc 1 741 0
.LBB44:
.LBB45:
	.loc 2 172 0
#APP
	# 172 "s:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	enable
	# 0 "" 2
#NO_APP
.LBE45:
.LBE44:
	.loc 1 746 0
	mov	%d4, 0
	mov	%d5, 1
	j	Can_17_McmCan_IsrTransmitHandler
.LVL5:
.LFE24:
	.size	Os_Entry_CAN0SR5_ISR, .-Os_Entry_CAN0SR5_ISR
.section .text.Os_Entry_CAN0SR6_ISR,"ax",@progbits
	.align 1
	.global	Os_Entry_CAN0SR6_ISR
	.type	Os_Entry_CAN0SR6_ISR, @function
Os_Entry_CAN0SR6_ISR:
.LFB25:
	.loc 1 779 0
.LBB46:
.LBB47:
	.loc 2 172 0
#APP
	# 172 "s:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	enable
	# 0 "" 2
#NO_APP
.LBE47:
.LBE46:
	.loc 1 784 0
	mov	%d4, 0
	mov	%d5, 1
	j	Can_17_McmCan_IsrBusOffHandler
.LVL6:
.LFE25:
	.size	Os_Entry_CAN0SR6_ISR, .-Os_Entry_CAN0SR6_ISR
.section .text.Os_Entry_CAN0SR7_ISR,"ax",@progbits
	.align 1
	.global	Os_Entry_CAN0SR7_ISR
	.type	Os_Entry_CAN0SR7_ISR, @function
Os_Entry_CAN0SR7_ISR:
.LFB26:
	.loc 1 816 0
.LBB48:
.LBB49:
	.loc 2 172 0
#APP
	# 172 "s:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	enable
	# 0 "" 2
#NO_APP
.LBE49:
.LBE48:
	.loc 1 822 0
	mov	%d4, 0
	mov	%d5, 1
	j	Can_17_McmCan_IsrRxFIFOHandler
.LVL7:
.LFE26:
	.size	Os_Entry_CAN0SR7_ISR, .-Os_Entry_CAN0SR7_ISR
.section .text.Os_Entry_CAN0SR8_ISR,"ax",@progbits
	.align 1
	.global	Os_Entry_CAN0SR8_ISR
	.type	Os_Entry_CAN0SR8_ISR, @function
Os_Entry_CAN0SR8_ISR:
.LFB27:
	.loc 1 854 0
.LBB50:
.LBB51:
	.loc 2 172 0
#APP
	# 172 "s:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	enable
	# 0 "" 2
#NO_APP
.LBE51:
.LBE50:
	.loc 1 859 0
	mov	%d4, 0
	mov	%d5, 2
	j	Can_17_McmCan_IsrReceiveHandler
.LVL8:
.LFE27:
	.size	Os_Entry_CAN0SR8_ISR, .-Os_Entry_CAN0SR8_ISR
.section .text.Os_Entry_CAN0SR9_ISR,"ax",@progbits
	.align 1
	.global	Os_Entry_CAN0SR9_ISR
	.type	Os_Entry_CAN0SR9_ISR, @function
Os_Entry_CAN0SR9_ISR:
.LFB28:
	.loc 1 891 0
.LBB52:
.LBB53:
	.loc 2 172 0
#APP
	# 172 "s:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	enable
	# 0 "" 2
#NO_APP
.LBE53:
.LBE52:
	.loc 1 896 0
	mov	%d4, 0
	mov	%d5, 2
	j	Can_17_McmCan_IsrTransmitHandler
.LVL9:
.LFE28:
	.size	Os_Entry_CAN0SR9_ISR, .-Os_Entry_CAN0SR9_ISR
.section .text.Os_Entry_CAN0SR10_ISR,"ax",@progbits
	.align 1
	.global	Os_Entry_CAN0SR10_ISR
	.type	Os_Entry_CAN0SR10_ISR, @function
Os_Entry_CAN0SR10_ISR:
.LFB29:
	.loc 1 928 0
.LBB54:
.LBB55:
	.loc 2 172 0
#APP
	# 172 "s:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	enable
	# 0 "" 2
#NO_APP
.LBE55:
.LBE54:
	.loc 1 933 0
	mov	%d4, 0
	mov	%d5, 2
	j	Can_17_McmCan_IsrBusOffHandler
.LVL10:
.LFE29:
	.size	Os_Entry_CAN0SR10_ISR, .-Os_Entry_CAN0SR10_ISR
.section .text.Os_Entry_CAN0SR11_ISR,"ax",@progbits
	.align 1
	.global	Os_Entry_CAN0SR11_ISR
	.type	Os_Entry_CAN0SR11_ISR, @function
Os_Entry_CAN0SR11_ISR:
.LFB30:
	.loc 1 965 0
.LBB56:
.LBB57:
	.loc 2 172 0
#APP
	# 172 "s:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	enable
	# 0 "" 2
#NO_APP
.LBE57:
.LBE56:
	.loc 1 971 0
	mov	%d4, 0
	mov	%d5, 2
	j	Can_17_McmCan_IsrRxFIFOHandler
.LVL11:
.LFE30:
	.size	Os_Entry_CAN0SR11_ISR, .-Os_Entry_CAN0SR11_ISR
.section .text.Os_Entry_CAN1SR8_ISR,"ax",@progbits
	.align 1
	.global	Os_Entry_CAN1SR8_ISR
	.type	Os_Entry_CAN1SR8_ISR, @function
Os_Entry_CAN1SR8_ISR:
.LFB31:
	.loc 1 1454 0
.LBB58:
.LBB59:
	.loc 2 172 0
#APP
	# 172 "s:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	enable
	# 0 "" 2
#NO_APP
.LBE59:
.LBE58:
	.loc 1 1459 0
	mov	%d4, 1
	mov	%d5, 2
	j	Can_17_McmCan_IsrReceiveHandler
.LVL12:
.LFE31:
	.size	Os_Entry_CAN1SR8_ISR, .-Os_Entry_CAN1SR8_ISR
.section .text.Os_Entry_CAN1SR9_ISR,"ax",@progbits
	.align 1
	.global	Os_Entry_CAN1SR9_ISR
	.type	Os_Entry_CAN1SR9_ISR, @function
Os_Entry_CAN1SR9_ISR:
.LFB32:
	.loc 1 1491 0
.LBB60:
.LBB61:
	.loc 2 172 0
#APP
	# 172 "s:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	enable
	# 0 "" 2
#NO_APP
.LBE61:
.LBE60:
	.loc 1 1496 0
	mov	%d4, 1
	mov	%d5, 2
	j	Can_17_McmCan_IsrTransmitHandler
.LVL13:
.LFE32:
	.size	Os_Entry_CAN1SR9_ISR, .-Os_Entry_CAN1SR9_ISR
.section .text.Os_Entry_CAN1SR10_ISR,"ax",@progbits
	.align 1
	.global	Os_Entry_CAN1SR10_ISR
	.type	Os_Entry_CAN1SR10_ISR, @function
Os_Entry_CAN1SR10_ISR:
.LFB33:
	.loc 1 1528 0
.LBB62:
.LBB63:
	.loc 2 172 0
#APP
	# 172 "s:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	enable
	# 0 "" 2
#NO_APP
.LBE63:
.LBE62:
	.loc 1 1533 0
	mov	%d4, 1
	mov	%d5, 2
	j	Can_17_McmCan_IsrBusOffHandler
.LVL14:
.LFE33:
	.size	Os_Entry_CAN1SR10_ISR, .-Os_Entry_CAN1SR10_ISR
.section .text.Os_Entry_CAN1SR11_ISR,"ax",@progbits
	.align 1
	.global	Os_Entry_CAN1SR11_ISR
	.type	Os_Entry_CAN1SR11_ISR, @function
Os_Entry_CAN1SR11_ISR:
.LFB34:
	.loc 1 1565 0
.LBB64:
.LBB65:
	.loc 2 172 0
#APP
	# 172 "s:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	enable
	# 0 "" 2
#NO_APP
.LBE65:
.LBE64:
	.loc 1 1571 0
	mov	%d4, 1
	mov	%d5, 2
	j	Can_17_McmCan_IsrRxFIFOHandler
.LVL15:
.LFE34:
	.size	Os_Entry_CAN1SR11_ISR, .-Os_Entry_CAN1SR11_ISR
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
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB27
	.uaword	.LFE27-.LFB27
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB28
	.uaword	.LFE28-.LFB28
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB29
	.uaword	.LFE29-.LFB29
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB30
	.uaword	.LFE30-.LFB30
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB31
	.uaword	.LFE31-.LFB31
	.align 2
.LEFDE24:
.LSFDE26:
	.uaword	.LEFDE26-.LASFDE26
.LASFDE26:
	.uaword	.Lframe0
	.uaword	.LFB32
	.uaword	.LFE32-.LFB32
	.align 2
.LEFDE26:
.LSFDE28:
	.uaword	.LEFDE28-.LASFDE28
.LASFDE28:
	.uaword	.Lframe0
	.uaword	.LFB33
	.uaword	.LFE33-.LFB33
	.align 2
.LEFDE28:
.LSFDE30:
	.uaword	.LEFDE30-.LASFDE30
.LASFDE30:
	.uaword	.Lframe0
	.uaword	.LFB34
	.uaword	.LFE34-.LFB34
	.align 2
.LEFDE30:
.section .text,"ax",@progbits
.Letext0:
	.file 3 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Can_17_McmCan\\inc\\Can_17_McmCan.h"
	.file 4 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x87b
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"Integration\\mcal\\Can_17_McmCan_Irq.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0
	.uaword	0
	.uaword	0
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
	.string	"uint8"
	.byte	0x4
	.byte	0x51
	.uaword	0x1b3
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
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
	.uleb128 0x4
	.uaword	0x219
	.uleb128 0x5
	.string	"_enable"
	.byte	0x2
	.byte	0xaa
	.byte	0x1
	.byte	0x3
	.uleb128 0x6
	.byte	0x1
	.string	"Os_Entry_CAN0SR0_ISR"
	.byte	0x1
	.uahalf	0x227
	.byte	0x1
	.uaword	.LFB19
	.uaword	.LFE19
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x2e8
	.uleb128 0x7
	.uaword	0x28a
	.uaword	.LBB34
	.uaword	.LBE34
	.byte	0x1
	.uahalf	0x22b
	.uleb128 0x8
	.uaword	.LVL0
	.byte	0x1
	.uaword	0x7ab
	.uleb128 0x9
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x9
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.string	"Os_Entry_CAN0SR1_ISR"
	.byte	0x1
	.uahalf	0x24c
	.byte	0x1
	.uaword	.LFB20
	.uaword	.LFE20
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x339
	.uleb128 0x7
	.uaword	0x28a
	.uaword	.LBB36
	.uaword	.LBE36
	.byte	0x1
	.uahalf	0x250
	.uleb128 0x8
	.uaword	.LVL1
	.byte	0x1
	.uaword	0x7e1
	.uleb128 0x9
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x9
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.string	"Os_Entry_CAN0SR2_ISR"
	.byte	0x1
	.uahalf	0x271
	.byte	0x1
	.uaword	.LFB21
	.uaword	.LFE21
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x38a
	.uleb128 0x7
	.uaword	0x28a
	.uaword	.LBB38
	.uaword	.LBE38
	.byte	0x1
	.uahalf	0x275
	.uleb128 0x8
	.uaword	.LVL2
	.byte	0x1
	.uaword	0x818
	.uleb128 0x9
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x9
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.string	"Os_Entry_CAN0SR3_ISR"
	.byte	0x1
	.uahalf	0x298
	.byte	0x1
	.uaword	.LFB22
	.uaword	.LFE22
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x3db
	.uleb128 0x7
	.uaword	0x28a
	.uaword	.LBB40
	.uaword	.LBE40
	.byte	0x1
	.uahalf	0x29c
	.uleb128 0x8
	.uaword	.LVL3
	.byte	0x1
	.uaword	0x84d
	.uleb128 0x9
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x9
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.string	"Os_Entry_CAN0SR4_ISR"
	.byte	0x1
	.uahalf	0x2be
	.byte	0x1
	.uaword	.LFB23
	.uaword	.LFE23
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x42c
	.uleb128 0x7
	.uaword	0x28a
	.uaword	.LBB42
	.uaword	.LBE42
	.byte	0x1
	.uahalf	0x2c2
	.uleb128 0x8
	.uaword	.LVL4
	.byte	0x1
	.uaword	0x7ab
	.uleb128 0x9
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0x9
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.string	"Os_Entry_CAN0SR5_ISR"
	.byte	0x1
	.uahalf	0x2e3
	.byte	0x1
	.uaword	.LFB24
	.uaword	.LFE24
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x47d
	.uleb128 0x7
	.uaword	0x28a
	.uaword	.LBB44
	.uaword	.LBE44
	.byte	0x1
	.uahalf	0x2e7
	.uleb128 0x8
	.uaword	.LVL5
	.byte	0x1
	.uaword	0x7e1
	.uleb128 0x9
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0x9
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.string	"Os_Entry_CAN0SR6_ISR"
	.byte	0x1
	.uahalf	0x309
	.byte	0x1
	.uaword	.LFB25
	.uaword	.LFE25
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x4ce
	.uleb128 0x7
	.uaword	0x28a
	.uaword	.LBB46
	.uaword	.LBE46
	.byte	0x1
	.uahalf	0x30d
	.uleb128 0x8
	.uaword	.LVL6
	.byte	0x1
	.uaword	0x818
	.uleb128 0x9
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0x9
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.string	"Os_Entry_CAN0SR7_ISR"
	.byte	0x1
	.uahalf	0x32e
	.byte	0x1
	.uaword	.LFB26
	.uaword	.LFE26
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x51f
	.uleb128 0x7
	.uaword	0x28a
	.uaword	.LBB48
	.uaword	.LBE48
	.byte	0x1
	.uahalf	0x332
	.uleb128 0x8
	.uaword	.LVL7
	.byte	0x1
	.uaword	0x84d
	.uleb128 0x9
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0x9
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.string	"Os_Entry_CAN0SR8_ISR"
	.byte	0x1
	.uahalf	0x354
	.byte	0x1
	.uaword	.LFB27
	.uaword	.LFE27
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x570
	.uleb128 0x7
	.uaword	0x28a
	.uaword	.LBB50
	.uaword	.LBE50
	.byte	0x1
	.uahalf	0x358
	.uleb128 0x8
	.uaword	.LVL8
	.byte	0x1
	.uaword	0x7ab
	.uleb128 0x9
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x32
	.uleb128 0x9
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.string	"Os_Entry_CAN0SR9_ISR"
	.byte	0x1
	.uahalf	0x379
	.byte	0x1
	.uaword	.LFB28
	.uaword	.LFE28
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x5c1
	.uleb128 0x7
	.uaword	0x28a
	.uaword	.LBB52
	.uaword	.LBE52
	.byte	0x1
	.uahalf	0x37d
	.uleb128 0x8
	.uaword	.LVL9
	.byte	0x1
	.uaword	0x7e1
	.uleb128 0x9
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x32
	.uleb128 0x9
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.string	"Os_Entry_CAN0SR10_ISR"
	.byte	0x1
	.uahalf	0x39e
	.byte	0x1
	.uaword	.LFB29
	.uaword	.LFE29
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x613
	.uleb128 0x7
	.uaword	0x28a
	.uaword	.LBB54
	.uaword	.LBE54
	.byte	0x1
	.uahalf	0x3a2
	.uleb128 0x8
	.uaword	.LVL10
	.byte	0x1
	.uaword	0x818
	.uleb128 0x9
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x32
	.uleb128 0x9
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.string	"Os_Entry_CAN0SR11_ISR"
	.byte	0x1
	.uahalf	0x3c3
	.byte	0x1
	.uaword	.LFB30
	.uaword	.LFE30
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x665
	.uleb128 0x7
	.uaword	0x28a
	.uaword	.LBB56
	.uaword	.LBE56
	.byte	0x1
	.uahalf	0x3c7
	.uleb128 0x8
	.uaword	.LVL11
	.byte	0x1
	.uaword	0x84d
	.uleb128 0x9
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x32
	.uleb128 0x9
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.string	"Os_Entry_CAN1SR8_ISR"
	.byte	0x1
	.uahalf	0x5ac
	.byte	0x1
	.uaword	.LFB31
	.uaword	.LFE31
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x6b6
	.uleb128 0x7
	.uaword	0x28a
	.uaword	.LBB58
	.uaword	.LBE58
	.byte	0x1
	.uahalf	0x5b0
	.uleb128 0x8
	.uaword	.LVL12
	.byte	0x1
	.uaword	0x7ab
	.uleb128 0x9
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x32
	.uleb128 0x9
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.string	"Os_Entry_CAN1SR9_ISR"
	.byte	0x1
	.uahalf	0x5d1
	.byte	0x1
	.uaword	.LFB32
	.uaword	.LFE32
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x707
	.uleb128 0x7
	.uaword	0x28a
	.uaword	.LBB60
	.uaword	.LBE60
	.byte	0x1
	.uahalf	0x5d5
	.uleb128 0x8
	.uaword	.LVL13
	.byte	0x1
	.uaword	0x7e1
	.uleb128 0x9
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x32
	.uleb128 0x9
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.string	"Os_Entry_CAN1SR10_ISR"
	.byte	0x1
	.uahalf	0x5f6
	.byte	0x1
	.uaword	.LFB33
	.uaword	.LFE33
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x759
	.uleb128 0x7
	.uaword	0x28a
	.uaword	.LBB62
	.uaword	.LBE62
	.byte	0x1
	.uahalf	0x5fa
	.uleb128 0x8
	.uaword	.LVL14
	.byte	0x1
	.uaword	0x818
	.uleb128 0x9
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x32
	.uleb128 0x9
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.string	"Os_Entry_CAN1SR11_ISR"
	.byte	0x1
	.uahalf	0x61b
	.byte	0x1
	.uaword	.LFB34
	.uaword	.LFE34
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x7ab
	.uleb128 0x7
	.uaword	0x28a
	.uaword	.LBB64
	.uaword	.LBE64
	.byte	0x1
	.uahalf	0x61f
	.uleb128 0x8
	.uaword	.LVL15
	.byte	0x1
	.uaword	0x84d
	.uleb128 0x9
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x32
	.uleb128 0x9
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.string	"Can_17_McmCan_IsrReceiveHandler"
	.byte	0x3
	.uahalf	0x527
	.byte	0x1
	.byte	0x1
	.uaword	0x7e1
	.uleb128 0xb
	.uaword	0x285
	.uleb128 0xb
	.uaword	0x285
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.string	"Can_17_McmCan_IsrTransmitHandler"
	.byte	0x3
	.uahalf	0x548
	.byte	0x1
	.byte	0x1
	.uaword	0x818
	.uleb128 0xb
	.uaword	0x285
	.uleb128 0xb
	.uaword	0x285
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.string	"Can_17_McmCan_IsrBusOffHandler"
	.byte	0x3
	.uahalf	0x503
	.byte	0x1
	.byte	0x1
	.uaword	0x84d
	.uleb128 0xb
	.uaword	0x285
	.uleb128 0xb
	.uaword	0x285
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.string	"Can_17_McmCan_IsrRxFIFOHandler"
	.byte	0x3
	.uahalf	0x56b
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.uaword	0x285
	.uleb128 0xb
	.uaword	0x285
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0x7
	.uleb128 0x1d
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
.section .debug_aranges,"",@progbits
	.uaword	0x94
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
	.uaword	.LFB27
	.uaword	.LFE27-.LFB27
	.uaword	.LFB28
	.uaword	.LFE28-.LFB28
	.uaword	.LFB29
	.uaword	.LFE29-.LFB29
	.uaword	.LFB30
	.uaword	.LFE30-.LFB30
	.uaword	.LFB31
	.uaword	.LFE31-.LFB31
	.uaword	.LFB32
	.uaword	.LFE32-.LFB32
	.uaword	.LFB33
	.uaword	.LFE33-.LFB33
	.uaword	.LFB34
	.uaword	.LFE34-.LFB34
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
	.uaword	.LFB27
	.uaword	.LFE27
	.uaword	.LFB28
	.uaword	.LFE28
	.uaword	.LFB29
	.uaword	.LFE29
	.uaword	.LFB30
	.uaword	.LFE30
	.uaword	.LFB31
	.uaword	.LFE31
	.uaword	.LFB32
	.uaword	.LFE32
	.uaword	.LFB33
	.uaword	.LFE33
	.uaword	.LFB34
	.uaword	.LFE34
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.extern	Can_17_McmCan_IsrRxFIFOHandler,STT_FUNC,0
	.extern	Can_17_McmCan_IsrBusOffHandler,STT_FUNC,0
	.extern	Can_17_McmCan_IsrTransmitHandler,STT_FUNC,0
	.extern	Can_17_McmCan_IsrReceiveHandler,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
