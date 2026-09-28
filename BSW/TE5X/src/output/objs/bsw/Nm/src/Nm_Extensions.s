	.file	"Nm_Extensions.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Nm_TxTimeoutException,"ax",@progbits
	.align 1
	.global	Nm_TxTimeoutException
	.type	Nm_TxTimeoutException, @function
Nm_TxTimeoutException:
.LFB27:
	.file 1 "bsw\\Nm\\src\\Nm_Extensions.c"
	.loc 1 423 0
.LVL0:
	.loc 1 428 0
	jlt.u	%d4, 2, .L4
.L1:
	ret
.L4:
.LVL1:
	.loc 1 428 0 is_stmt 0 discriminator 1
	movh.a	%a15, hi:Nm_HandleTable
	lea	%a15, [%a15] lo:Nm_HandleTable
	addsc.a	%a15, %a15, %d4, 0
	.loc 1 430 0 is_stmt 1 discriminator 1
	ld.bu	%d15, [%a15]0
	jnz	%d15, .L1
	.loc 1 432 0
	j	ComM_Nm_TransmissionFailure
.LVL2:
.LFE27:
	.size	Nm_TxTimeoutException, .-Nm_TxTimeoutException
.section .text.Nm_NetworkTimeoutException,"ax",@progbits
	.align 1
	.global	Nm_NetworkTimeoutException
	.type	Nm_NetworkTimeoutException, @function
Nm_NetworkTimeoutException:
.LFB28:
	.loc 1 452 0
.LVL3:
	.loc 1 457 0
	jlt.u	%d4, 2, .L7
.L5:
	ret
.L7:
.LVL4:
	.loc 1 457 0 is_stmt 0 discriminator 1
	movh.a	%a15, hi:Nm_HandleTable
	lea	%a15, [%a15] lo:Nm_HandleTable
	addsc.a	%a15, %a15, %d4, 0
	.loc 1 459 0 is_stmt 1 discriminator 1
	ld.bu	%d15, [%a15]0
	jnz	%d15, .L5
	.loc 1 461 0
	j	ComM_Nm_NetworkTimeoutException
.LVL5:
.LFE28:
	.size	Nm_NetworkTimeoutException, .-Nm_NetworkTimeoutException
.section .text.Nm_PduRxIndication,"ax",@progbits
	.align 1
	.global	Nm_PduRxIndication
	.type	Nm_PduRxIndication, @function
Nm_PduRxIndication:
.LFB29:
	.loc 1 514 0
.LVL6:
	.loc 1 520 0
	jlt.u	%d4, 2, .L13
.L8:
	ret
.L13:
.LVL7:
	.loc 1 520 0 is_stmt 0 discriminator 1
	movh.a	%a15, hi:Nm_HandleTable
	lea	%a15, [%a15] lo:Nm_HandleTable
	addsc.a	%a15, %a15, %d4, 0
	.loc 1 523 0 is_stmt 1 discriminator 1
	ld.bu	%d15, [%a15]0
	jnz	%d15, .L8
	.loc 1 526 0
	movh.a	%a15, hi:Nm_UserCallbacks
	ld.a	%a15, [%a15] lo:Nm_UserCallbacks
	jz.a	%a15, .L8
	.loc 1 528 0
	ji	%a15
.LVL8:
.LFE29:
	.size	Nm_PduRxIndication, .-Nm_PduRxIndication
.section .text.Nm_StateChangeNotification,"ax",@progbits
	.align 1
	.global	Nm_StateChangeNotification
	.type	Nm_StateChangeNotification, @function
Nm_StateChangeNotification:
.LFB30:
	.loc 1 557 0
.LVL9:
	.loc 1 557 0
	mov	%d15, %d4
	.loc 1 566 0
	jlt.u	%d4, 2, .L25
.LVL10:
.L14:
	ret
.LVL11:
.L25:
	.loc 1 566 0 is_stmt 0 discriminator 1
	movh.a	%a15, hi:Nm_HandleTable
	lea	%a15, [%a15] lo:Nm_HandleTable
	addsc.a	%a15, %a15, %d4, 0
	.loc 1 568 0 is_stmt 1 discriminator 1
	ld.bu	%d2, [%a15]0
	jnz	%d2, .L14
	mov	%e8, %d5, %d6
	.loc 1 573 0
	eq	%d2, %d9, 6
	and.eq	%d2, %d8, 5
	jnz	%d2, .L26
.LVL12:
.L18:
	.loc 1 587 0
	movh.a	%a15, hi:Nm_UserCallbacks
	lea	%a15, [%a15] lo:Nm_UserCallbacks
	ld.a	%a15, [%a15] 12
	jz.a	%a15, .L14
	.loc 1 589 0
	mov	%e4, %d9, %d15
	mov	%d6, %d8
	ji	%a15
.LVL13:
.L26:
	.loc 1 576 0
	call	ComM_Nm_NetworkMode
.LVL14:
	j	.L18
.LFE30:
	.size	Nm_StateChangeNotification, .-Nm_StateChangeNotification
.section .text.Nm_RepeatMessageIndication,"ax",@progbits
	.align 1
	.global	Nm_RepeatMessageIndication
	.type	Nm_RepeatMessageIndication, @function
Nm_RepeatMessageIndication:
.LFB31:
	.loc 1 705 0
.LVL15:
	ret
.LFE31:
	.size	Nm_RepeatMessageIndication, .-Nm_RepeatMessageIndication
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
	.uaword	.LFB27
	.uaword	.LFE27-.LFB27
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB28
	.uaword	.LFE28-.LFB28
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB29
	.uaword	.LFE29-.LFB29
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB30
	.uaword	.LFE30-.LFB30
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB31
	.uaword	.LFE31-.LFB31
	.align 2
.LEFDE8:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\NmStack_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 4 ".\\output\\inc/..\\..\\bsw\\ComStack\\api\\ComStack_Types.h"
	.file 5 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm_Priv.h"
	.file 6 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM_Nm.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x70f
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Nm\\src\\Nm_Extensions.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.byte	0x44
	.uaword	0x26d
	.uleb128 0x3
	.string	"NM_STATE_UNINIT"
	.sleb128 0
	.uleb128 0x3
	.string	"NM_STATE_BUS_SLEEP"
	.sleb128 1
	.uleb128 0x3
	.string	"NM_STATE_PREPARE_BUS_SLEEP"
	.sleb128 2
	.uleb128 0x3
	.string	"NM_STATE_READY_SLEEP"
	.sleb128 3
	.uleb128 0x3
	.string	"NM_STATE_NORMAL_OPERATION"
	.sleb128 4
	.uleb128 0x3
	.string	"NM_STATE_REPEAT_MESSAGE"
	.sleb128 5
	.uleb128 0x3
	.string	"NM_STATE_SYNCHRONIZE"
	.sleb128 6
	.uleb128 0x3
	.string	"NM_STATE_OFFLINE"
	.sleb128 7
	.byte	0
	.uleb128 0x4
	.string	"Nm_StateType"
	.byte	0x2
	.byte	0x4d
	.uaword	0x1a9
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x4
	.string	"uint8"
	.byte	0x3
	.byte	0x51
	.uaword	0x29d
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x5
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x5
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x5
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x5
	.byte	0x4
	.byte	0x4
	.string	"double"
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x4
	.string	"NetworkHandleType"
	.byte	0x4
	.byte	0x4f
	.uaword	0x290
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x6
	.byte	0x10
	.byte	0x5
	.uahalf	0x264
	.uaword	0x3ef
	.uleb128 0x7
	.string	"PduRxIndication"
	.byte	0x5
	.uahalf	0x266
	.uaword	0x400
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"RemoteSleepCancellation"
	.byte	0x5
	.uahalf	0x267
	.uaword	0x400
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"RemoteSleepIndication"
	.byte	0x5
	.uahalf	0x268
	.uaword	0x400
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"StateChangeInd"
	.byte	0x5
	.uahalf	0x269
	.uaword	0x421
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.uaword	0x3fb
	.uleb128 0x9
	.uaword	0x3fb
	.byte	0
	.uleb128 0xa
	.uaword	0x347
	.uleb128 0xb
	.byte	0x4
	.uaword	0x3ef
	.uleb128 0x8
	.byte	0x1
	.uaword	0x41c
	.uleb128 0x9
	.uaword	0x3fb
	.uleb128 0x9
	.uaword	0x41c
	.uleb128 0x9
	.uaword	0x41c
	.byte	0
	.uleb128 0xa
	.uaword	0x26d
	.uleb128 0xb
	.byte	0x4
	.uaword	0x406
	.uleb128 0xc
	.string	"Nm_UserCallbackType_tst"
	.byte	0x5
	.uahalf	0x26c
	.uaword	0x36c
	.uleb128 0xd
	.byte	0x1
	.string	"Nm_TxTimeoutException"
	.byte	0x1
	.uahalf	0x1a6
	.byte	0x1
	.uaword	.LFB27
	.uaword	.LFE27
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x49a
	.uleb128 0xe
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x1a6
	.uaword	0x347
	.uaword	.LLST0
	.uleb128 0xf
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x1a8
	.uaword	0x347
	.uleb128 0x10
	.uaword	.LVL2
	.byte	0x1
	.uaword	0x696
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.string	"Nm_NetworkTimeoutException"
	.byte	0x1
	.uahalf	0x1c3
	.byte	0x1
	.uaword	.LFB28
	.uaword	.LFE28
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x4f2
	.uleb128 0xe
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x1c3
	.uaword	0x347
	.uaword	.LLST1
	.uleb128 0xf
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x1c5
	.uaword	0x347
	.uleb128 0x10
	.uaword	.LVL5
	.byte	0x1
	.uaword	0x6c2
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.string	"Nm_PduRxIndication"
	.byte	0x1
	.uahalf	0x201
	.byte	0x1
	.uaword	.LFB29
	.uaword	.LFE29
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x54d
	.uleb128 0xe
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x201
	.uaword	0x347
	.uaword	.LLST2
	.uleb128 0xf
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x203
	.uaword	0x54d
	.uleb128 0xf
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x204
	.uaword	0x347
	.uleb128 0x11
	.uaword	.LVL8
	.byte	0x1
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.uaword	0x553
	.uleb128 0xa
	.uaword	0x427
	.uleb128 0xd
	.byte	0x1
	.string	"Nm_StateChangeNotification"
	.byte	0x1
	.uahalf	0x22b
	.byte	0x1
	.uaword	.LFB30
	.uaword	.LFE30
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x612
	.uleb128 0xe
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x22b
	.uaword	0x347
	.uaword	.LLST3
	.uleb128 0x12
	.string	"nmPreviousState"
	.byte	0x1
	.uahalf	0x22b
	.uaword	0x26d
	.uaword	.LLST4
	.uleb128 0x12
	.string	"nmCurrentState"
	.byte	0x1
	.uahalf	0x22c
	.uaword	0x26d
	.uaword	.LLST5
	.uleb128 0xf
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x22e
	.uaword	0x54d
	.uleb128 0xf
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x232
	.uaword	0x347
	.uleb128 0x13
	.uaword	.LVL13
	.byte	0x1
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	0x608
	.uleb128 0x14
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x14
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.uaword	.LVL14
	.uaword	0x6f2
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.string	"Nm_RepeatMessageIndication"
	.byte	0x1
	.uahalf	0x2c0
	.byte	0x1
	.uaword	.LFB31
	.uaword	.LFE31
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x652
	.uleb128 0x16
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x2c0
	.uaword	0x347
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x17
	.string	"Nm_UserCallbacks"
	.byte	0x5
	.uahalf	0x291
	.uaword	0x553
	.byte	0x1
	.byte	0x1
	.uleb128 0x18
	.uaword	0x347
	.uaword	0x678
	.uleb128 0x19
	.byte	0
	.uleb128 0x17
	.string	"Nm_HandleTable"
	.byte	0x5
	.uahalf	0x29c
	.uaword	0x691
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.uaword	0x66d
	.uleb128 0x1a
	.byte	0x1
	.string	"ComM_Nm_TransmissionFailure"
	.byte	0x6
	.byte	0x7e
	.byte	0x1
	.byte	0x1
	.uaword	0x6c2
	.uleb128 0x9
	.uaword	0x347
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.string	"ComM_Nm_NetworkTimeoutException"
	.byte	0x6
	.byte	0x8a
	.byte	0x1
	.byte	0x1
	.uaword	0x6f2
	.uleb128 0x9
	.uaword	0x347
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.string	"ComM_Nm_NetworkMode"
	.byte	0x6
	.byte	0x53
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.uaword	0x347
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
	.uleb128 0x3
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x2113
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
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
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL2-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL2-1
	.uaword	.LFE27
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL3
	.uaword	.LVL5-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL5-1
	.uaword	.LFE28
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL6
	.uaword	.LVL8-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL8-1
	.uaword	.LFE29
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LVL14-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL14-1
	.uaword	.LFE30
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LVL14-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL14-1
	.uaword	.LFE30
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LVL14-1
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL14-1
	.uaword	.LFE30
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x3c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
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
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
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
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"NetworkHandle"
.LASF1:
	.string	"Nm_NetworkHandle_u8"
.LASF2:
	.string	"UserCallback_pcst"
.LASF3:
	.string	"nmNetworkHandle"
	.extern	ComM_Nm_NetworkMode,STT_FUNC,0
	.extern	Nm_UserCallbacks,STT_OBJECT,16
	.extern	ComM_Nm_NetworkTimeoutException,STT_FUNC,0
	.extern	ComM_Nm_TransmissionFailure,STT_FUNC,0
	.extern	Nm_HandleTable,STT_OBJECT,-1
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
