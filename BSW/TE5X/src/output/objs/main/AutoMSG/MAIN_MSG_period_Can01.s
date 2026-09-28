	.file	"MAIN_MSG_period_Can01.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.MainMsg_Can01_Below100ms_Func,"ax",@progbits
	.align 1
	.global	MainMsg_Can01_Below100ms_Func
	.type	MainMsg_Can01_Below100ms_Func, @function
MainMsg_Can01_Below100ms_Func:
.LFB21:
	.file 1 "main\\AutoMSG\\MAIN_MSG_period_Can01.c"
	.loc 1 889 0
	.loc 1 893 0
	movh.a	%a15, hi:Runtime_Can01_Below100
	ld.w	%d15, [%a15] lo:Runtime_Can01_Below100
	add	%d15, 1
	st.w	[%a15] lo:Runtime_Can01_Below100, %d15
	ret
.LFE21:
	.size	MainMsg_Can01_Below100ms_Func, .-MainMsg_Can01_Below100ms_Func
.section .text.MainMsg_Can01_Above100ms_Func,"ax",@progbits
	.align 1
	.global	MainMsg_Can01_Above100ms_Func
	.type	MainMsg_Can01_Above100ms_Func, @function
MainMsg_Can01_Above100ms_Func:
.LFB22:
	.loc 1 906 0
	.loc 1 910 0
	movh.a	%a15, hi:Runtime_Can01_Above100
	ld.w	%d15, [%a15] lo:Runtime_Can01_Above100
	add	%d15, 1
	st.w	[%a15] lo:Runtime_Can01_Above100, %d15
	ret
.LFE22:
	.size	MainMsg_Can01_Above100ms_Func, .-MainMsg_Can01_Above100ms_Func
.section .text.MainMsg_Can01_SpecialPeriod_Func,"ax",@progbits
	.align 1
	.global	MainMsg_Can01_SpecialPeriod_Func
	.type	MainMsg_Can01_SpecialPeriod_Func, @function
MainMsg_Can01_SpecialPeriod_Func:
.LFB23:
	.loc 1 923 0
	.loc 1 924 0
	mov	%d4, 1
	call	CANSM_GetBusoffCnt
.LVL0:
	.loc 1 926 0
	movh.a	%a15, hi:Runtime_Can01_Special
	.loc 1 924 0
	jlez	%d2, .L4
	.loc 1 926 0
	mov	%d15, 0
	mov	%e2, 0
	st.w	[%a15] lo:Runtime_Can01_Special, %d15
.L10:
.LBB6:
.LBB7:
	.loc 1 570 0
	sh	%d4, %d3, -6
	madd	%d4, %d15, %d4, -200
	jeq	%d4, 7, .L21
.L11:
	.loc 1 579 0
	sh	%d2, %d3, -5
	madd	%d2, %d15, %d2, -100
	ne	%d2, %d2, 8
	jz	%d2, .L22
.L12:
.LBE7:
.LBE6:
.LBB9:
.LBB10:
	.loc 1 25 0
	movh.a	%a2, hi:MAIN_MSGRxBenchOnC
	ld.bu	%d2, [%a2] lo:MAIN_MSGRxBenchOnC
	jnz	%d2, .L13
	.loc 1 29 0
	movh	%d2, 20972
	addi	%d2, %d2, -31457
	mul.u	%e2, %d15, %d2
	sh	%d2, %d3, -5
	madd	%d2, %d15, %d2, -100
	jnz	%d2, .L14
	.loc 1 31 0
	movh.a	%a2, hi:BSW_bMsgValidState_Can01_Rx01
	ld.bu	%d2, [%a2] lo:BSW_bMsgValidState_Can01_Rx01
	jeq	%d2, 1, .L23
.L15:
	.loc 1 43 0
	movh.a	%a2, hi:BSW_bMsgValidState_Can01_Rx02
	ld.bu	%d2, [%a2] lo:BSW_bMsgValidState_Can01_Rx02
	jeq	%d2, 1, .L24
.L17:
	.loc 1 55 0
	movh.a	%a2, hi:BSW_bMsgValidState_Can01_Rx03
	ld.bu	%d2, [%a2] lo:BSW_bMsgValidState_Can01_Rx03
	jeq	%d2, 1, .L25
.L18:
	.loc 1 67 0
	movh.a	%a2, hi:BSW_bMsgValidState_Can01_Rx04
	ld.bu	%d2, [%a2] lo:BSW_bMsgValidState_Can01_Rx04
	jeq	%d2, 1, .L26
.L14:
	.loc 1 77 0
	movh	%d2, 4194
	addi	%d2, %d2, 19923
	mul.u	%e2, %d15, %d2
	mov	%d8, 1000
	sh	%d2, %d3, -6
	mul	%d2, %d8
	jne	%d15, %d2, .L13
	.loc 1 79 0
	movh.a	%a2, hi:BSW_bMsgValidState_Can01_Rx05
	ld.bu	%d2, [%a2] lo:BSW_bMsgValidState_Can01_Rx05
	jeq	%d2, 1, .L27
.L19:
	.loc 1 91 0
	movh.a	%a2, hi:BSW_bMsgValidState_Can01_Rx06
	ld.bu	%d2, [%a2] lo:BSW_bMsgValidState_Can01_Rx06
	jeq	%d2, 1, .L28
.L13:
.LBE10:
.LBE9:
	.loc 1 931 0
	add	%d15, 1
	st.w	[%a15] lo:Runtime_Can01_Special, %d15
	ret
.L28:
.LBB13:
.LBB11:
	.loc 1 93 0
	call	MAIN_MSGvidCan01_Rx06_AIR1_0x18FEAE32
.LVL1:
	ld.w	%d15, [%a15] lo:Runtime_Can01_Special
	j	.L13
.L22:
.LBE11:
.LBE13:
.LBB14:
.LBB8:
	.loc 1 581 0
	call	MAIN_MSGvidCan01_Tx08_ACUST2_0x18FF2230
.LVL2:
	ld.w	%d15, [%a15] lo:Runtime_Can01_Special
	j	.L12
.L4:
	.loc 1 516 0
	ld.w	%d15, [%a15] lo:Runtime_Can01_Special
	movh	%d2, 20972
	addi	%d2, %d2, -31457
	mul.u	%e2, %d15, %d2
	sh	%d4, %d3, -5
	madd	%d4, %d15, %d4, -100
	jne	%d4, 1, .L6
	.loc 1 518 0
	call	MAIN_MSGvidCan01_Tx01_PDUST1_0x18F7011E
.LVL3:
	ld.w	%d15, [%a15] lo:Runtime_Can01_Special
	movh	%d2, 20972
	addi	%d2, %d2, -31457
	mul.u	%e2, %d15, %d2
	sh	%d4, %d3, -5
	madd	%d4, %d15, %d4, -100
.L6:
	.loc 1 525 0
	jne	%d4, 2, .L7
	.loc 1 527 0
	call	MAIN_MSGvidCan01_Tx02_PDUST2_0x18F7021E
.LVL4:
	ld.w	%d15, [%a15] lo:Runtime_Can01_Special
	movh	%d2, 20972
	addi	%d2, %d2, -31457
	mul.u	%e2, %d15, %d2
	sh	%d4, %d3, -5
	madd	%d4, %d15, %d4, -100
.L7:
	.loc 1 534 0
	jne	%d4, 3, .L5
	.loc 1 536 0
	call	MAIN_MSGvidCan01_Tx03_PDUST3_0x18F7031E
.LVL5:
	ld.w	%d15, [%a15] lo:Runtime_Can01_Special
	movh	%d2, 20972
	addi	%d2, %d2, -31457
	mul.u	%e2, %d15, %d2
	sh	%d4, %d3, -5
	madd	%d4, %d15, %d4, -100
.L5:
	.loc 1 543 0
	jeq	%d4, 4, .L29
	.loc 1 552 0
	jeq	%d4, 5, .L30
.L9:
	.loc 1 561 0
	jne	%d4, 6, .L10
	.loc 1 563 0
	call	MAIN_MSGvidCan01_Tx06_HSST2_0x0CF6022E
.LVL6:
	ld.w	%d15, [%a15] lo:Runtime_Can01_Special
	movh	%d2, 20972
	addi	%d2, %d2, -31457
	mul.u	%e2, %d15, %d2
	.loc 1 570 0
	sh	%d4, %d3, -6
	madd	%d4, %d15, %d4, -200
	jne	%d4, 7, .L11
.L21:
	.loc 1 572 0
	call	MAIN_MSGvidCan01_Tx07_ACUST1_0x18FF2130
.LVL7:
	ld.w	%d15, [%a15] lo:Runtime_Can01_Special
	movh	%d2, 20972
	addi	%d2, %d2, -31457
	mul.u	%e2, %d15, %d2
	j	.L11
.L30:
	.loc 1 554 0
	call	MAIN_MSGvidCan01_Tx05_HSST1_0x0CF6012E
.LVL8:
	ld.w	%d15, [%a15] lo:Runtime_Can01_Special
	movh	%d2, 20972
	addi	%d2, %d2, -31457
	mul.u	%e2, %d15, %d2
	sh	%d4, %d3, -5
	madd	%d4, %d15, %d4, -100
	j	.L9
.L29:
	.loc 1 545 0
	call	MAIN_MSGvidCan01_Tx04_PDUST4_0x18F7041E
.LVL9:
	ld.w	%d15, [%a15] lo:Runtime_Can01_Special
	movh	%d2, 20972
	addi	%d2, %d2, -31457
	mul.u	%e2, %d15, %d2
	sh	%d4, %d3, -5
	madd	%d4, %d15, %d4, -100
	.loc 1 552 0
	jne	%d4, 5, .L9
	j	.L30
.L26:
.LBE8:
.LBE14:
.LBB15:
.LBB12:
	.loc 1 69 0
	call	MAIN_MSGvidCan01_Rx04_ACUMC1_0x18F53031
.LVL10:
	ld.w	%d15, [%a15] lo:Runtime_Can01_Special
	j	.L14
.L23:
	.loc 1 33 0
	call	MAIN_MSGvidCan01_Rx01_PDUMC1_0x18F71E31
.LVL11:
	.loc 1 41 0
	ld.w	%d15, [%a15] lo:Runtime_Can01_Special
	movh	%d2, 20972
	addi	%d2, %d2, -31457
	mul.u	%e2, %d15, %d2
	sh	%d2, %d3, -5
	madd	%d2, %d15, %d2, -100
	jz	%d2, .L15
	j	.L14
.L24:
	.loc 1 45 0
	call	MAIN_MSGvidCan01_Rx02_HSMC1_0x18F02E31
.LVL12:
	ld.w	%d15, [%a15] lo:Runtime_Can01_Special
	movh	%d2, 20972
	addi	%d2, %d2, -31457
	mul.u	%e2, %d15, %d2
	sh	%d2, %d3, -5
	madd	%d2, %d15, %d2, -100
	.loc 1 53 0
	jz	%d2, .L17
	j	.L14
.L27:
	.loc 1 81 0
	call	MAIN_MSGvidCan01_Rx05_AIR1_0x18FEAE30
.LVL13:
	.loc 1 89 0
	ld.w	%d15, [%a15] lo:Runtime_Can01_Special
	movh	%d2, 4194
	addi	%d2, %d2, 19923
	mul.u	%e2, %d15, %d2
	sh	%d2, %d3, -6
	mul	%d8, %d2
	jeq	%d15, %d8, .L19
	j	.L13
.L25:
	.loc 1 57 0
	call	MAIN_MSGvidCan01_Rx03_HSSTC_0x18EF2E31
.LVL14:
	.loc 1 65 0
	ld.w	%d15, [%a15] lo:Runtime_Can01_Special
	movh	%d2, 20972
	addi	%d2, %d2, -31457
	mul.u	%e2, %d15, %d2
	sh	%d2, %d3, -5
	madd	%d2, %d15, %d2, -100
	jz	%d2, .L18
	j	.L14
.LBE12:
.LBE15:
.LFE23:
	.size	MainMsg_Can01_SpecialPeriod_Func, .-MainMsg_Can01_SpecialPeriod_Func
	.global	Runtime_Can01_Special
.section .bss.a4.Runtime_Can01_Special,"aw",@nobits
	.align 2
	.type	Runtime_Can01_Special, @object
	.size	Runtime_Can01_Special, 4
Runtime_Can01_Special:
	.zero	4
	.global	Runtime_Can01_Above100
.section .bss.a4.Runtime_Can01_Above100,"aw",@nobits
	.align 2
	.type	Runtime_Can01_Above100, @object
	.size	Runtime_Can01_Above100, 4
Runtime_Can01_Above100:
	.zero	4
	.global	Runtime_Can01_Below100
.section .bss.a4.Runtime_Can01_Below100,"aw",@nobits
	.align 2
	.type	Runtime_Can01_Below100, @object
	.size	Runtime_Can01_Below100, 4
Runtime_Can01_Below100:
	.zero	4
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
	.uaword	.LFB21
	.uaword	.LFE21-.LFB21
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB22
	.uaword	.LFE22-.LFB22
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB23
	.uaword	.LFE23-.LFB23
	.align 2
.LEFDE4:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bswcdd\\BSW\\CAN01\\CAN01_DEF.h"
	.file 4 ".\\output\\inc/..\\..\\main\\McuMain\\MAIN_L.h"
	.file 5 "main\\AutoMSG\\MAIN_MSG_Auto_Can01.h"
	.file 6 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSW_L.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x89c
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"main\\AutoMSG\\MAIN_MSG_period_Can01.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x38
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
	.uleb128 0x3
	.string	"uint32"
	.byte	0x2
	.byte	0x6a
	.uaword	0x21c
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
	.uaword	0x1c2
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
	.string	"BSW_CanNode"
	.byte	0x1
	.byte	0x6
	.byte	0x2f
	.uaword	0x2ee
	.uleb128 0x5
	.string	"BSW_CANNODE0_e"
	.sleb128 0
	.uleb128 0x5
	.string	"BSW_CANNODE1_e"
	.sleb128 1
	.uleb128 0x5
	.string	"BSW_CANNODE2_e"
	.sleb128 2
	.uleb128 0x5
	.string	"BSW_CANNODE3_e"
	.sleb128 3
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.string	"MainMsg_Can01_Below100ms_Func"
	.byte	0x1
	.uahalf	0x378
	.byte	0x1
	.uaword	.LFB21
	.uaword	.LFE21
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.string	"MainMsg_Can01_Above100ms_Func"
	.byte	0x1
	.uahalf	0x389
	.byte	0x1
	.uaword	.LFB22
	.uaword	.LFE22
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x7
	.string	"MainMsg_SpecialPeriod_Can01_Tx"
	.byte	0x1
	.uahalf	0x1ff
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.string	"MainMsg_SpecialPeriod_Can01_Rx"
	.byte	0x1
	.byte	0x15
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.byte	0x1
	.string	"MainMsg_Can01_SpecialPeriod_Func"
	.byte	0x1
	.uahalf	0x39a
	.byte	0x1
	.uaword	.LFB23
	.uaword	.LFE23
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x49a
	.uleb128 0xa
	.byte	0x1
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x39c
	.uaword	0x1f6
	.byte	0x1
	.uaword	0x3e2
	.uleb128 0xb
	.byte	0
	.uleb128 0xc
	.uaword	0x34e
	.uaword	.LBB6
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.uahalf	0x3a0
	.uaword	0x43f
	.uleb128 0xd
	.uaword	.LVL2
	.uaword	0x613
	.uleb128 0xd
	.uaword	.LVL3
	.uaword	0x641
	.uleb128 0xd
	.uaword	.LVL4
	.uaword	0x66f
	.uleb128 0xd
	.uaword	.LVL5
	.uaword	0x69d
	.uleb128 0xd
	.uaword	.LVL6
	.uaword	0x6cb
	.uleb128 0xd
	.uaword	.LVL7
	.uaword	0x6f8
	.uleb128 0xd
	.uaword	.LVL8
	.uaword	0x726
	.uleb128 0xd
	.uaword	.LVL9
	.uaword	0x753
	.byte	0
	.uleb128 0xc
	.uaword	0x373
	.uaword	.LBB9
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x1
	.uahalf	0x3a1
	.uaword	0x48a
	.uleb128 0xd
	.uaword	.LVL1
	.uaword	0x781
	.uleb128 0xd
	.uaword	.LVL10
	.uaword	0x7ad
	.uleb128 0xd
	.uaword	.LVL11
	.uaword	0x7db
	.uleb128 0xd
	.uaword	.LVL12
	.uaword	0x809
	.uleb128 0xd
	.uaword	.LVL13
	.uaword	0x836
	.uleb128 0xd
	.uaword	.LVL14
	.uaword	0x862
	.byte	0
	.uleb128 0xe
	.uaword	.LVL0
	.uaword	0x88f
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"BSW_bMsgValidState_Can01_Rx01"
	.byte	0x3
	.byte	0x4b
	.uaword	0x259
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.string	"BSW_bMsgValidState_Can01_Rx02"
	.byte	0x3
	.byte	0x4c
	.uaword	0x259
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.string	"BSW_bMsgValidState_Can01_Rx03"
	.byte	0x3
	.byte	0x4d
	.uaword	0x259
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.string	"BSW_bMsgValidState_Can01_Rx04"
	.byte	0x3
	.byte	0x4e
	.uaword	0x259
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.string	"BSW_bMsgValidState_Can01_Rx05"
	.byte	0x3
	.byte	0x4f
	.uaword	0x259
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.string	"BSW_bMsgValidState_Can01_Rx06"
	.byte	0x3
	.byte	0x50
	.uaword	0x259
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.string	"MAIN_MSGRxBenchOnC"
	.byte	0x4
	.byte	0x39
	.uaword	0x5a0
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.uaword	0x259
	.uleb128 0x12
	.string	"Runtime_Can01_Below100"
	.byte	0x1
	.byte	0x11
	.uaword	0x20e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Runtime_Can01_Below100
	.uleb128 0x12
	.string	"Runtime_Can01_Above100"
	.byte	0x1
	.byte	0x12
	.uaword	0x20e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Runtime_Can01_Above100
	.uleb128 0x12
	.string	"Runtime_Can01_Special"
	.byte	0x1
	.byte	0x13
	.uaword	0x20e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Runtime_Can01_Special
	.uleb128 0x13
	.byte	0x1
	.string	"MAIN_MSGvidCan01_Tx08_ACUST2_0x18FF2230"
	.byte	0x5
	.byte	0x51
	.byte	0x1
	.byte	0x1
	.uleb128 0x13
	.byte	0x1
	.string	"MAIN_MSGvidCan01_Tx01_PDUST1_0x18F7011E"
	.byte	0x5
	.byte	0x4a
	.byte	0x1
	.byte	0x1
	.uleb128 0x13
	.byte	0x1
	.string	"MAIN_MSGvidCan01_Tx02_PDUST2_0x18F7021E"
	.byte	0x5
	.byte	0x4b
	.byte	0x1
	.byte	0x1
	.uleb128 0x13
	.byte	0x1
	.string	"MAIN_MSGvidCan01_Tx03_PDUST3_0x18F7031E"
	.byte	0x5
	.byte	0x4c
	.byte	0x1
	.byte	0x1
	.uleb128 0x13
	.byte	0x1
	.string	"MAIN_MSGvidCan01_Tx06_HSST2_0x0CF6022E"
	.byte	0x5
	.byte	0x4f
	.byte	0x1
	.byte	0x1
	.uleb128 0x13
	.byte	0x1
	.string	"MAIN_MSGvidCan01_Tx07_ACUST1_0x18FF2130"
	.byte	0x5
	.byte	0x50
	.byte	0x1
	.byte	0x1
	.uleb128 0x13
	.byte	0x1
	.string	"MAIN_MSGvidCan01_Tx05_HSST1_0x0CF6012E"
	.byte	0x5
	.byte	0x4e
	.byte	0x1
	.byte	0x1
	.uleb128 0x13
	.byte	0x1
	.string	"MAIN_MSGvidCan01_Tx04_PDUST4_0x18F7041E"
	.byte	0x5
	.byte	0x4d
	.byte	0x1
	.byte	0x1
	.uleb128 0x13
	.byte	0x1
	.string	"MAIN_MSGvidCan01_Rx06_AIR1_0x18FEAE32"
	.byte	0x5
	.byte	0x49
	.byte	0x1
	.byte	0x1
	.uleb128 0x13
	.byte	0x1
	.string	"MAIN_MSGvidCan01_Rx04_ACUMC1_0x18F53031"
	.byte	0x5
	.byte	0x47
	.byte	0x1
	.byte	0x1
	.uleb128 0x13
	.byte	0x1
	.string	"MAIN_MSGvidCan01_Rx01_PDUMC1_0x18F71E31"
	.byte	0x5
	.byte	0x44
	.byte	0x1
	.byte	0x1
	.uleb128 0x13
	.byte	0x1
	.string	"MAIN_MSGvidCan01_Rx02_HSMC1_0x18F02E31"
	.byte	0x5
	.byte	0x45
	.byte	0x1
	.byte	0x1
	.uleb128 0x13
	.byte	0x1
	.string	"MAIN_MSGvidCan01_Rx05_AIR1_0x18FEAE30"
	.byte	0x5
	.byte	0x48
	.byte	0x1
	.byte	0x1
	.uleb128 0x13
	.byte	0x1
	.string	"MAIN_MSGvidCan01_Rx03_HSSTC_0x18EF2E31"
	.byte	0x5
	.byte	0x46
	.byte	0x1
	.byte	0x1
	.uleb128 0x14
	.byte	0x1
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x39c
	.uaword	0x1f6
	.byte	0x1
	.uleb128 0xb
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
	.uleb128 0x7
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
.section .debug_aranges,"",@progbits
	.uaword	0x2c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB21
	.uaword	.LFE21-.LFB21
	.uaword	.LFB22
	.uaword	.LFE22-.LFB22
	.uaword	.LFB23
	.uaword	.LFE23-.LFB23
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB6
	.uaword	.LBE6
	.uaword	.LBB14
	.uaword	.LBE14
	.uaword	0
	.uaword	0
	.uaword	.LBB9
	.uaword	.LBE9
	.uaword	.LBB13
	.uaword	.LBE13
	.uaword	.LBB15
	.uaword	.LBE15
	.uaword	0
	.uaword	0
	.uaword	.LFB21
	.uaword	.LFE21
	.uaword	.LFB22
	.uaword	.LFE22
	.uaword	.LFB23
	.uaword	.LFE23
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"CANSM_GetBusoffCnt"
	.extern	MAIN_MSGvidCan01_Rx03_HSSTC_0x18EF2E31,STT_FUNC,0
	.extern	MAIN_MSGvidCan01_Rx05_AIR1_0x18FEAE30,STT_FUNC,0
	.extern	MAIN_MSGvidCan01_Rx02_HSMC1_0x18F02E31,STT_FUNC,0
	.extern	MAIN_MSGvidCan01_Rx01_PDUMC1_0x18F71E31,STT_FUNC,0
	.extern	MAIN_MSGvidCan01_Rx04_ACUMC1_0x18F53031,STT_FUNC,0
	.extern	MAIN_MSGvidCan01_Tx04_PDUST4_0x18F7041E,STT_FUNC,0
	.extern	MAIN_MSGvidCan01_Tx05_HSST1_0x0CF6012E,STT_FUNC,0
	.extern	MAIN_MSGvidCan01_Tx07_ACUST1_0x18FF2130,STT_FUNC,0
	.extern	MAIN_MSGvidCan01_Tx06_HSST2_0x0CF6022E,STT_FUNC,0
	.extern	MAIN_MSGvidCan01_Tx03_PDUST3_0x18F7031E,STT_FUNC,0
	.extern	MAIN_MSGvidCan01_Tx02_PDUST2_0x18F7021E,STT_FUNC,0
	.extern	MAIN_MSGvidCan01_Tx01_PDUST1_0x18F7011E,STT_FUNC,0
	.extern	MAIN_MSGvidCan01_Tx08_ACUST2_0x18FF2230,STT_FUNC,0
	.extern	MAIN_MSGvidCan01_Rx06_AIR1_0x18FEAE32,STT_FUNC,0
	.extern	BSW_bMsgValidState_Can01_Rx06,STT_OBJECT,1
	.extern	BSW_bMsgValidState_Can01_Rx05,STT_OBJECT,1
	.extern	BSW_bMsgValidState_Can01_Rx04,STT_OBJECT,1
	.extern	BSW_bMsgValidState_Can01_Rx03,STT_OBJECT,1
	.extern	BSW_bMsgValidState_Can01_Rx02,STT_OBJECT,1
	.extern	BSW_bMsgValidState_Can01_Rx01,STT_OBJECT,1
	.extern	MAIN_MSGRxBenchOnC,STT_OBJECT,1
	.extern	CANSM_GetBusoffCnt,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
