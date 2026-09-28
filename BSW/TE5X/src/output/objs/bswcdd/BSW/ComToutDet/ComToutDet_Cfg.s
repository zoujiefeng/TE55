	.file	"ComToutDet_Cfg.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.ComToutDet_bMCU1_CANTimeout_DetFun,"ax",@progbits
	.align 1
	.global	ComToutDet_bMCU1_CANTimeout_DetFun
	.type	ComToutDet_bMCU1_CANTimeout_DetFun, @function
ComToutDet_bMCU1_CANTimeout_DetFun:
.LFB0:
	.file 1 "bswcdd\\BSW\\ComToutDet\\ComToutDet_Cfg.c"
	.loc 1 14 0
.LVL0:
	.loc 1 16 0
	movh.a	%a15, hi:BSW_bRxTOutFlag_Can01_Rx02
	ld.bu	%d2, [%a15] lo:BSW_bRxTOutFlag_Can01_Rx02
	movh.a	%a15, hi:BSW_bRxTOutFlag_Can01_Rx01
	ld.bu	%d15, [%a15] lo:BSW_bRxTOutFlag_Can01_Rx01
	or	%d2, %d15
	.loc 1 19 0
	and	%d2, %d2, 255
	ret
.LFE0:
	.size	ComToutDet_bMCU1_CANTimeout_DetFun, .-ComToutDet_bMCU1_CANTimeout_DetFun
.section .text.ComToutDet_bMCU2_CANTimeout_DetFun,"ax",@progbits
	.align 1
	.global	ComToutDet_bMCU2_CANTimeout_DetFun
	.type	ComToutDet_bMCU2_CANTimeout_DetFun, @function
ComToutDet_bMCU2_CANTimeout_DetFun:
.LFB1:
	.loc 1 29 0
.LVL1:
	.loc 1 31 0
	movh.a	%a15, hi:BSW_bRxTOutFlag_Can01_Rx02
	ld.bu	%d2, [%a15] lo:BSW_bRxTOutFlag_Can01_Rx02
	movh.a	%a15, hi:BSW_bRxTOutFlag_Can01_Rx01
	ld.bu	%d15, [%a15] lo:BSW_bRxTOutFlag_Can01_Rx01
	or	%d2, %d15
	.loc 1 34 0
	and	%d2, %d2, 255
	ret
.LFE1:
	.size	ComToutDet_bMCU2_CANTimeout_DetFun, .-ComToutDet_bMCU2_CANTimeout_DetFun
.section .text.ComToutDet_bACM_CANTimeout_DetFun,"ax",@progbits
	.align 1
	.global	ComToutDet_bACM_CANTimeout_DetFun
	.type	ComToutDet_bACM_CANTimeout_DetFun, @function
ComToutDet_bACM_CANTimeout_DetFun:
.LFB2:
	.loc 1 44 0
.LVL2:
	.loc 1 46 0
	movh.a	%a15, hi:BSW_bRxTOutFlag_Can01_Rx02
	ld.bu	%d2, [%a15] lo:BSW_bRxTOutFlag_Can01_Rx02
	movh.a	%a15, hi:BSW_bRxTOutFlag_Can01_Rx01
	ld.bu	%d15, [%a15] lo:BSW_bRxTOutFlag_Can01_Rx01
	or	%d2, %d15
	.loc 1 49 0
	and	%d2, %d2, 255
	ret
.LFE2:
	.size	ComToutDet_bACM_CANTimeout_DetFun, .-ComToutDet_bACM_CANTimeout_DetFun
.section .text.ComToutDet_bEPS_CANTimeout_DetFun,"ax",@progbits
	.align 1
	.global	ComToutDet_bEPS_CANTimeout_DetFun
	.type	ComToutDet_bEPS_CANTimeout_DetFun, @function
ComToutDet_bEPS_CANTimeout_DetFun:
.LFB3:
	.loc 1 59 0
.LVL3:
	.loc 1 61 0
	movh.a	%a15, hi:BSW_bRxTOutFlag_Can01_Rx02
	ld.bu	%d2, [%a15] lo:BSW_bRxTOutFlag_Can01_Rx02
	movh.a	%a15, hi:BSW_bRxTOutFlag_Can01_Rx01
	ld.bu	%d15, [%a15] lo:BSW_bRxTOutFlag_Can01_Rx01
	or	%d2, %d15
	.loc 1 64 0
	and	%d2, %d2, 255
	ret
.LFE3:
	.size	ComToutDet_bEPS_CANTimeout_DetFun, .-ComToutDet_bEPS_CANTimeout_DetFun
.section .text.ComToutDet_bPDU_CANTimeout_DetFun,"ax",@progbits
	.align 1
	.global	ComToutDet_bPDU_CANTimeout_DetFun
	.type	ComToutDet_bPDU_CANTimeout_DetFun, @function
ComToutDet_bPDU_CANTimeout_DetFun:
.LFB4:
	.loc 1 74 0
.LVL4:
	.loc 1 76 0
	movh.a	%a15, hi:BSW_bRxTOutFlag_Can01_Rx02
	ld.bu	%d2, [%a15] lo:BSW_bRxTOutFlag_Can01_Rx02
	movh.a	%a15, hi:BSW_bRxTOutFlag_Can01_Rx01
	ld.bu	%d15, [%a15] lo:BSW_bRxTOutFlag_Can01_Rx01
	or	%d2, %d15
	.loc 1 79 0
	and	%d2, %d2, 255
	ret
.LFE4:
	.size	ComToutDet_bPDU_CANTimeout_DetFun, .-ComToutDet_bPDU_CANTimeout_DetFun
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
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bswcdd\\BSW\\CAN01\\CAN01_DEF.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x439
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\BSW\\ComToutDet\\ComToutDet_Cfg.c"
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
	.uaword	0x1d1
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
	.byte	0x2
	.byte	0x80
	.uaword	0x1d1
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x4
	.byte	0x1
	.string	"ComToutDet_bMCU1_CANTimeout_DetFun"
	.byte	0x1
	.byte	0xd
	.byte	0x1
	.uaword	0x25a
	.uaword	.LFB0
	.uaword	.LFE0
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x2d3
	.uleb128 0x5
	.string	"bRet"
	.byte	0x1
	.byte	0xf
	.uaword	0x1c4
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.string	"ComToutDet_bMCU2_CANTimeout_DetFun"
	.byte	0x1
	.byte	0x1c
	.byte	0x1
	.uaword	0x25a
	.uaword	.LFB1
	.uaword	.LFE1
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x31c
	.uleb128 0x5
	.string	"bRet"
	.byte	0x1
	.byte	0x1e
	.uaword	0x1c4
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.string	"ComToutDet_bACM_CANTimeout_DetFun"
	.byte	0x1
	.byte	0x2b
	.byte	0x1
	.uaword	0x25a
	.uaword	.LFB2
	.uaword	.LFE2
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x364
	.uleb128 0x5
	.string	"bRet"
	.byte	0x1
	.byte	0x2d
	.uaword	0x1c4
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.string	"ComToutDet_bEPS_CANTimeout_DetFun"
	.byte	0x1
	.byte	0x3a
	.byte	0x1
	.uaword	0x25a
	.uaword	.LFB3
	.uaword	.LFE3
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x3ac
	.uleb128 0x5
	.string	"bRet"
	.byte	0x1
	.byte	0x3c
	.uaword	0x1c4
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.string	"ComToutDet_bPDU_CANTimeout_DetFun"
	.byte	0x1
	.byte	0x49
	.byte	0x1
	.uaword	0x25a
	.uaword	.LFB4
	.uaword	.LFE4
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x3f4
	.uleb128 0x5
	.string	"bRet"
	.byte	0x1
	.byte	0x4b
	.uaword	0x1c4
	.byte	0
	.uleb128 0x6
	.string	"BSW_bRxTOutFlag_Can01_Rx01"
	.byte	0x3
	.byte	0x22
	.uaword	0x25a
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.string	"BSW_bRxTOutFlag_Can01_Rx02"
	.byte	0x3
	.byte	0x23
	.uaword	0x25a
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
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uaword	0x3c
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
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.extern	BSW_bRxTOutFlag_Can01_Rx01,STT_OBJECT,1
	.extern	BSW_bRxTOutFlag_Can01_Rx02,STT_OBJECT,1
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
