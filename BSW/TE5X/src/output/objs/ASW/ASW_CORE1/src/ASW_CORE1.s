	.file	"ASW_CORE1.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.RE_CORE1_SWC_func,"ax",@progbits
	.align 1
	.global	RE_CORE1_SWC_func
	.type	RE_CORE1_SWC_func, @function
RE_CORE1_SWC_func:
.LFB19:
	.file 1 "ASW\\ASW_CORE1\\src\\ASW_CORE1.c"
	.loc 1 53 0
	.loc 1 54 0
	movh.a	%a12, hi:CORE1Sent100Byte2CORE0
	ld.bu	%d15, [%a12] lo:CORE1Sent100Byte2CORE0
	jz	%d15, .L2
	movh.a	%a4, hi:CORE1DataTranferTest
	.loc 1 58 0
	movh	%d4, 257
	lea	%a4, [%a4] lo:CORE1DataTranferTest
	movh	%d5, 32639
	addi	%d4, %d4, 257
	mov.aa	%a15, %a4
	addi	%d5, %d5, 32639
	sh	%d3, %d4, 7
	lea	%a2, 24
.L3:
	.loc 1 58 0 is_stmt 0 discriminator 3
	ld.w	%d2, [%a15]0
	and	%d15, %d2, %d5
	addi	%d15, %d15, 257
	xor	%d2, %d4
	addih	%d15, %d15, 257
	and	%d2, %d3
	xor	%d15, %d2
	st.w	[%a15+]4, %d15
	loop	%a2, .L3
	mov	%d15, 100
	movh.a	%a15, hi:CORE1cnt_temp
	st.b	[%a15] lo:CORE1cnt_temp, %d15
	.loc 1 61 0 is_stmt 1
	mov	%d15, 0
	.loc 1 60 0
	call	Rte_Write_ASW_CORE1_PPort_TransmitData2Core0_Data_ptr
.LVL0:
	.loc 1 61 0
	st.b	[%a12] lo:CORE1Sent100Byte2CORE0, %d15
.L2:
	.loc 1 63 0
	movh.a	%a4, hi:CORE1DataReceiveTest
	lea	%a4, [%a4] lo:CORE1DataReceiveTest
	call	Rte_Read_ASW_CORE1_RPort_ReceiverDataFromCore0_Data_ptr
.LVL1:
	.loc 1 65 0
	movh.a	%a15, hi:CPU1_PercentUtilization
	movh.a	%a5, hi:CPU1_StatusUtiliazation
	lea	%a4, [%a15] lo:CPU1_PercentUtilization
	mov	%d4, 1000
	lea	%a5, [%a5] lo:CPU1_StatusUtiliazation
	call	CPUUtilizationCore1_func
.LVL2:
	.loc 1 66 0
	ld.w	%d15, [%a15] lo:CPU1_PercentUtilization
	movh.a	%a15, hi:CPU1_MaximumUtilization
	ld.w	%d2, [%a15] lo:CPU1_MaximumUtilization
	cmp.f	%d2, %d15, %d2
	jz.t	%d2, 2, .L4
	.loc 1 68 0
	st.w	[%a15] lo:CPU1_MaximumUtilization, %d15
.L4:
	.loc 1 71 0
	movh.a	%a4, hi:Core1_MaxUserStackUtilization
	lea	%a4, [%a4] lo:Core1_MaxUserStackUtilization
	j	GetMaxUserStackUtilization_Core1_func
.LVL3:
.LFE19:
	.size	RE_CORE1_SWC_func, .-RE_CORE1_SWC_func
.section .text.RE_Core1FaultReaction,"ax",@progbits
	.align 1
	.global	RE_Core1FaultReaction
	.type	RE_Core1FaultReaction, @function
RE_Core1FaultReaction:
.LFB20:
	.loc 1 76 0
.LVL4:
	ret
.LFE20:
	.size	RE_Core1FaultReaction, .-RE_Core1FaultReaction
	.global	Core1_MaxUserStackUtilization
.section .bss.a4.Core1_MaxUserStackUtilization,"aw",@nobits
	.align 2
	.type	Core1_MaxUserStackUtilization, @object
	.size	Core1_MaxUserStackUtilization, 4
Core1_MaxUserStackUtilization:
	.zero	4
	.global	CPU1_MaximumUtilization
.section .bss.a4.CPU1_MaximumUtilization,"aw",@nobits
	.align 2
	.type	CPU1_MaximumUtilization, @object
	.size	CPU1_MaximumUtilization, 4
CPU1_MaximumUtilization:
	.zero	4
	.global	CPU1_PercentUtilization
.section .bss.a4.CPU1_PercentUtilization,"aw",@nobits
	.align 2
	.type	CPU1_PercentUtilization, @object
	.size	CPU1_PercentUtilization, 4
CPU1_PercentUtilization:
	.zero	4
	.global	CPU1_StatusUtiliazation
.section .bss.a1.CPU1_StatusUtiliazation,"aw",@nobits
	.type	CPU1_StatusUtiliazation, @object
	.size	CPU1_StatusUtiliazation, 1
CPU1_StatusUtiliazation:
	.zero	1
	.global	CORE1Sent100Byte2CORE0
.section .bss.a1.CORE1Sent100Byte2CORE0,"aw",@nobits
	.type	CORE1Sent100Byte2CORE0, @object
	.size	CORE1Sent100Byte2CORE0, 1
CORE1Sent100Byte2CORE0:
	.zero	1
	.global	CORE1cnt_temp
.section .bss.a1.CORE1cnt_temp,"aw",@nobits
	.type	CORE1cnt_temp, @object
	.size	CORE1cnt_temp, 1
CORE1cnt_temp:
	.zero	1
	.global	CORE1DataReceiveTest
.section .bss.a1.CORE1DataReceiveTest,"aw",@nobits
	.type	CORE1DataReceiveTest, @object
	.size	CORE1DataReceiveTest, 100
CORE1DataReceiveTest:
	.zero	100
	.global	CORE1DataTranferTest
.section .bss.a4.CORE1DataTranferTest,"aw",@nobits
	.align 2
	.type	CORE1DataTranferTest, @object
	.size	CORE1DataTranferTest, 100
CORE1DataTranferTest:
	.zero	100
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
	.file 4 ".\\output\\inc/..\\..\\rte\\Rte_ASW_CORE1.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x5c9
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"ASW\\ASW_CORE1\\src\\ASW_CORE1.c"
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
	.byte	0x2
	.byte	0x51
	.uaword	0x1ac
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x3
	.string	"uint32"
	.byte	0x2
	.byte	0x6a
	.uaword	0x1d3
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x3
	.string	"float64"
	.byte	0x2
	.byte	0x78
	.uaword	0x270
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
	.string	"StatusType"
	.byte	0x3
	.byte	0x48
	.uaword	0x1ac
	.uleb128 0x3
	.string	"Std_ReturnType"
	.byte	0x3
	.byte	0x60
	.uaword	0x212
	.uleb128 0x4
	.byte	0x4
	.uaword	0x212
	.uleb128 0x5
	.uaword	0x212
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2c9
	.uleb128 0x6
	.uaword	0x212
	.uaword	0x2e4
	.uleb128 0x7
	.uaword	0x206
	.byte	0x63
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x261
	.uleb128 0x8
	.byte	0x1
	.string	"RE_CORE1_SWC_func"
	.byte	0x1
	.byte	0x31
	.byte	0x1
	.uaword	.LFB19
	.uaword	.LFE19
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x36d
	.uleb128 0x9
	.uaword	.LVL0
	.uaword	0x4cd
	.uleb128 0xa
	.uaword	.LVL1
	.uaword	0x517
	.uaword	0x331
	.uleb128 0xb
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	CORE1DataReceiveTest
	.byte	0
	.uleb128 0xa
	.uaword	.LVL2
	.uaword	0x563
	.uaword	0x358
	.uleb128 0xb
	.byte	0x1
	.byte	0x65
	.byte	0x5
	.byte	0x3
	.uaword	CPU1_StatusUtiliazation
	.uleb128 0xb
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	CPU1_PercentUtilization
	.uleb128 0xb
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x3e8
	.byte	0
	.uleb128 0xc
	.uaword	.LVL3
	.byte	0x1
	.uaword	0x596
	.uleb128 0xb
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	Core1_MaxUserStackUtilization
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.string	"RE_Core1FaultReaction"
	.byte	0x1
	.byte	0x4b
	.byte	0x1
	.uaword	.LFB20
	.uaword	.LFE20
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x3a8
	.uleb128 0xd
	.string	"Error"
	.byte	0x1
	.byte	0x4b
	.uaword	0x29b
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0xe
	.string	"CORE1DataTranferTest"
	.byte	0x1
	.byte	0x1f
	.uaword	0x2d4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CORE1DataTranferTest
	.uleb128 0xe
	.string	"CORE1DataReceiveTest"
	.byte	0x1
	.byte	0x20
	.uaword	0x2d4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CORE1DataReceiveTest
	.uleb128 0xe
	.string	"CORE1cnt_temp"
	.byte	0x1
	.byte	0x21
	.uaword	0x212
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CORE1cnt_temp
	.uleb128 0xe
	.string	"CORE1Sent100Byte2CORE0"
	.byte	0x1
	.byte	0x22
	.uaword	0x212
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CORE1Sent100Byte2CORE0
	.uleb128 0xe
	.string	"CPU1_StatusUtiliazation"
	.byte	0x1
	.byte	0x23
	.uaword	0x212
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CPU1_StatusUtiliazation
	.uleb128 0xe
	.string	"CPU1_PercentUtilization"
	.byte	0x1
	.byte	0x29
	.uaword	0x261
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CPU1_PercentUtilization
	.uleb128 0xe
	.string	"CPU1_MaximumUtilization"
	.byte	0x1
	.byte	0x2a
	.uaword	0x261
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CPU1_MaximumUtilization
	.uleb128 0xe
	.string	"Core1_MaxUserStackUtilization"
	.byte	0x1
	.byte	0x2b
	.uaword	0x261
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Core1_MaxUserStackUtilization
	.uleb128 0xf
	.byte	0x1
	.string	"Rte_Write_ASW_CORE1_PPort_TransmitData2Core0_Data_ptr"
	.byte	0x4
	.byte	0x81
	.byte	0x1
	.uaword	0x2ad
	.byte	0x1
	.uaword	0x517
	.uleb128 0x10
	.uaword	0x2ce
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.string	"Rte_Read_ASW_CORE1_RPort_ReceiverDataFromCore0_Data_ptr"
	.byte	0x4
	.byte	0x80
	.byte	0x1
	.uaword	0x2ad
	.byte	0x1
	.uaword	0x563
	.uleb128 0x10
	.uaword	0x2c3
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"CPUUtilizationCore1_func"
	.byte	0x4
	.byte	0x73
	.byte	0x1
	.byte	0x1
	.uaword	0x596
	.uleb128 0x10
	.uaword	0x230
	.uleb128 0x10
	.uaword	0x2e4
	.uleb128 0x10
	.uaword	0x2c3
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.string	"GetMaxUserStackUtilization_Core1_func"
	.byte	0x4
	.byte	0x71
	.byte	0x1
	.uaword	0x2ad
	.byte	0x1
	.uleb128 0x10
	.uaword	0x2e4
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.byte	0
	.byte	0
	.byte	0
.section .debug_aranges,"",@progbits
	.uaword	0x24
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
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB19
	.uaword	.LFE19
	.uaword	.LFB20
	.uaword	.LFE20
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.extern	GetMaxUserStackUtilization_Core1_func,STT_FUNC,0
	.extern	CPUUtilizationCore1_func,STT_FUNC,0
	.extern	Rte_Read_ASW_CORE1_RPort_ReceiverDataFromCore0_Data_ptr,STT_FUNC,0
	.extern	Rte_Write_ASW_CORE1_PPort_TransmitData2Core0_Data_ptr,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
