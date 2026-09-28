	.file	"CAN02_CallbackTout.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Bsw_ComSignalTimeout_CanNodeNum_02_Rx_01,"ax",@progbits
	.align 1
	.global	Bsw_ComSignalTimeout_CanNodeNum_02_Rx_01
	.type	Bsw_ComSignalTimeout_CanNodeNum_02_Rx_01, @function
Bsw_ComSignalTimeout_CanNodeNum_02_Rx_01:
.LFB0:
	.file 1 "bswcdd\\BSW\\CAN02\\CAN02_CallbackTout.c"
	.loc 1 21 0
	.loc 1 23 0
	mov	%d15, 1
	movh.a	%a15, hi:BSW_bRxTOutFlag_Can02_Rx01
	st.b	[%a15] lo:BSW_bRxTOutFlag_Can02_Rx01, %d15
	.loc 1 24 0
	movh.a	%a15, hi:BSW_bMsgValidState_Can02_Rx01
	st.b	[%a15] lo:BSW_bMsgValidState_Can02_Rx01, %d15
	ret
.LFE0:
	.size	Bsw_ComSignalTimeout_CanNodeNum_02_Rx_01, .-Bsw_ComSignalTimeout_CanNodeNum_02_Rx_01
.section .text.Bsw_ComSignalTimeout_CanNodeNum_02_Rx_02,"ax",@progbits
	.align 1
	.global	Bsw_ComSignalTimeout_CanNodeNum_02_Rx_02
	.type	Bsw_ComSignalTimeout_CanNodeNum_02_Rx_02, @function
Bsw_ComSignalTimeout_CanNodeNum_02_Rx_02:
.LFB1:
	.loc 1 31 0
	.loc 1 33 0
	mov	%d15, 1
	movh.a	%a15, hi:BSW_bRxTOutFlag_Can02_Rx02
	st.b	[%a15] lo:BSW_bRxTOutFlag_Can02_Rx02, %d15
	.loc 1 34 0
	movh.a	%a15, hi:BSW_bMsgValidState_Can02_Rx02
	st.b	[%a15] lo:BSW_bMsgValidState_Can02_Rx02, %d15
	ret
.LFE1:
	.size	Bsw_ComSignalTimeout_CanNodeNum_02_Rx_02, .-Bsw_ComSignalTimeout_CanNodeNum_02_Rx_02
.section .text.Bsw_ComSignalTimeout_CanNodeNum_02_Rx_03,"ax",@progbits
	.align 1
	.global	Bsw_ComSignalTimeout_CanNodeNum_02_Rx_03
	.type	Bsw_ComSignalTimeout_CanNodeNum_02_Rx_03, @function
Bsw_ComSignalTimeout_CanNodeNum_02_Rx_03:
.LFB2:
	.loc 1 41 0
	.loc 1 43 0
	mov	%d15, 1
	movh.a	%a15, hi:BSW_bRxTOutFlag_Can02_Rx03
	st.b	[%a15] lo:BSW_bRxTOutFlag_Can02_Rx03, %d15
	.loc 1 44 0
	movh.a	%a15, hi:BSW_bMsgValidState_Can02_Rx03
	st.b	[%a15] lo:BSW_bMsgValidState_Can02_Rx03, %d15
	ret
.LFE2:
	.size	Bsw_ComSignalTimeout_CanNodeNum_02_Rx_03, .-Bsw_ComSignalTimeout_CanNodeNum_02_Rx_03
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
.section .text,"ax",@progbits
.Letext0:
	.file 2 "bswcdd\\BSW\\CAN02\\CAN02_DEF.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x414
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\BSW\\CAN02\\CAN02_CallbackTout.c"
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
	.uleb128 0x3
	.string	"boolean"
	.byte	0x3
	.byte	0x80
	.uaword	0x1c3
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
	.byte	0x1
	.string	"Bsw_ComSignalTimeout_CanNodeNum_02_Rx_01"
	.byte	0x1
	.byte	0x14
	.byte	0x1
	.uaword	.LFB0
	.uaword	.LFE0
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x4
	.byte	0x1
	.string	"Bsw_ComSignalTimeout_CanNodeNum_02_Rx_02"
	.byte	0x1
	.byte	0x1e
	.byte	0x1
	.uaword	.LFB1
	.uaword	.LFE1
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x4
	.byte	0x1
	.string	"Bsw_ComSignalTimeout_CanNodeNum_02_Rx_03"
	.byte	0x1
	.byte	0x28
	.byte	0x1
	.uaword	.LFB2
	.uaword	.LFE2
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x5
	.string	"BSW_bRxTOutFlag_Can02_Rx01"
	.byte	0x2
	.byte	0x12
	.uaword	0x24c
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.string	"BSW_bRxTOutFlag_Can02_Rx02"
	.byte	0x2
	.byte	0x13
	.uaword	0x24c
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.string	"BSW_bRxTOutFlag_Can02_Rx03"
	.byte	0x2
	.byte	0x14
	.uaword	0x24c
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.string	"BSW_bMsgValidState_Can02_Rx01"
	.byte	0x2
	.byte	0x3b
	.uaword	0x24c
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.string	"BSW_bMsgValidState_Can02_Rx02"
	.byte	0x2
	.byte	0x3c
	.uaword	0x24c
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.string	"BSW_bMsgValidState_Can02_Rx03"
	.byte	0x2
	.byte	0x3d
	.uaword	0x24c
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
	.uleb128 0x3f
	.uleb128 0xc
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
	.uaword	.LFB0
	.uaword	.LFE0-.LFB0
	.uaword	.LFB1
	.uaword	.LFE1-.LFB1
	.uaword	.LFB2
	.uaword	.LFE2-.LFB2
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
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.extern	BSW_bMsgValidState_Can02_Rx03,STT_OBJECT,1
	.extern	BSW_bRxTOutFlag_Can02_Rx03,STT_OBJECT,1
	.extern	BSW_bMsgValidState_Can02_Rx02,STT_OBJECT,1
	.extern	BSW_bRxTOutFlag_Can02_Rx02,STT_OBJECT,1
	.extern	BSW_bMsgValidState_Can02_Rx01,STT_OBJECT,1
	.extern	BSW_bRxTOutFlag_Can02_Rx01,STT_OBJECT,1
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
