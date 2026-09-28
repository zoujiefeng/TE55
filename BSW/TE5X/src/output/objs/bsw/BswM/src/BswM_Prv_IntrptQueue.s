	.file	"BswM_Prv_IntrptQueue.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.BswM_Prv_IntrptQueueIn,"ax",@progbits
	.align 1
	.global	BswM_Prv_IntrptQueueIn
	.type	BswM_Prv_IntrptQueueIn, @function
BswM_Prv_IntrptQueueIn:
.LFB71:
	.file 1 "bsw\\BswM\\src\\BswM_Prv_IntrptQueue.c"
	.loc 1 48 0
.LVL0:
	.loc 1 52 0
	movh.a	%a2, hi:BswM_Prv_IntrptQueueInfo_st
	lea	%a2, [%a2] lo:BswM_Prv_IntrptQueueInfo_st
	ld.bu	%d2, [%a2] 2
	jeq	%d2, 5, .L1
	.loc 1 59 0
	ld.bu	%d15, [%a2] 1
.LVL1:
	.loc 1 62 0
	movh.a	%a15, hi:BswM_Prv_IntrptQueue_ast
	lea	%a15, [%a15] lo:BswM_Prv_IntrptQueue_ast
	addsc.a	%a15, %a15, %d15, 3
	.loc 1 69 0
	add	%d2, 1
	.loc 1 68 0
	add	%d15, 1
	.loc 1 62 0
	st.b	[%a15]0, %d4
	.loc 1 63 0
	st.h	[%a15] 2, %d5
	.loc 1 64 0
	st.h	[%a15] 4, %d6
	.loc 1 65 0
	st.h	[%a15] 6, %d7
	.loc 1 68 0
	and	%d15, 255
	.loc 1 69 0
	st.b	[%a2] 2, %d2
	.loc 1 71 0
	movh.a	%a15, hi:BswM_Prv_isReqstDelayed_b
	mov	%d2, 1
	.loc 1 68 0
	st.b	[%a2] 1, %d15
.LVL2:
	.loc 1 71 0
	st.b	[%a15] lo:BswM_Prv_isReqstDelayed_b, %d2
	.loc 1 73 0
	jeq	%d15, 5, .L6
.L1:
	ret
.L6:
	.loc 1 76 0
	mov	%d15, 0
	st.b	[%a2] 1, %d15
	ret
.LFE71:
	.size	BswM_Prv_IntrptQueueIn, .-BswM_Prv_IntrptQueueIn
.section .text.BswM_Prv_IntrptQueueOut,"ax",@progbits
	.align 1
	.global	BswM_Prv_IntrptQueueOut
	.type	BswM_Prv_IntrptQueueOut, @function
BswM_Prv_IntrptQueueOut:
.LFB72:
	.loc 1 104 0
.LVL3:
	.loc 1 109 0
	movh.a	%a3, hi:BswM_Prv_IntrptQueueInfo_st
	lea	%a2, [%a3] lo:BswM_Prv_IntrptQueueInfo_st
	ld.bu	%d15, [%a2] 2
	.loc 1 111 0
	mov	%d2, 1
	.loc 1 109 0
	jz	%d15, .L8
.LVL4:
	.loc 1 118 0
	ld.bu	%d15, [%a3] lo:BswM_Prv_IntrptQueueInfo_st
	movh.a	%a15, hi:BswM_Prv_IntrptQueue_ast
	lea	%a15, [%a15] lo:BswM_Prv_IntrptQueue_ast
	addsc.a	%a15, %a15, %d15, 3
	ld.bu	%d15, [%a15]0
	st.b	[%a4]0, %d15
.LVL5:
	.loc 1 119 0
	ld.h	%d15, [%a15] 2
	st.h	[%a5]0, %d15
	.loc 1 120 0
	ld.h	%d15, [%a15] 4
	st.h	[%a6]0, %d15
	.loc 1 121 0
	ld.h	%d15, [%a15] 6
	st.h	[%a7]0, %d15
	.loc 1 124 0
	mov	%d15, -1
	st.b	[%a15]0, %d15
	.loc 1 125 0
	mov	%d15, 255
	.loc 1 130 0
	ld.bu	%d3, [%a3] lo:BswM_Prv_IntrptQueueInfo_st
	.loc 1 125 0
	st.h	[%a15] 2, %d15
	.loc 1 126 0
	st.h	[%a15] 4, %d15
	.loc 1 127 0
	st.h	[%a15] 6, %d15
	.loc 1 131 0
	ld.bu	%d15, [%a2] 2
	.loc 1 130 0
	add	%d3, 1
	.loc 1 131 0
	add	%d15, -1
	.loc 1 130 0
	and	%d3, %d3, 255
	.loc 1 131 0
	and	%d15, 255
	.loc 1 130 0
	st.b	[%a3] lo:BswM_Prv_IntrptQueueInfo_st, %d3
	.loc 1 131 0
	st.b	[%a2] 2, %d15
	.loc 1 134 0
	jz	%d15, .L13
	.loc 1 106 0
	mov	%d2, 0
	.loc 1 143 0
	jeq	%d3, 5, .L14
.L8:
.LVL6:
	.loc 1 152 0
	ret
.LVL7:
.L13:
	.loc 1 137 0
	st.b	[%a3] lo:BswM_Prv_IntrptQueueInfo_st, %d15
	.loc 1 138 0
	st.b	[%a2] 1, %d15
	.loc 1 106 0
	mov	%d2, 0
	ret
.L14:
	.loc 1 146 0
	st.b	[%a3] lo:BswM_Prv_IntrptQueueInfo_st, %d2
.LVL8:
	.loc 1 152 0
	ret
.LFE72:
	.size	BswM_Prv_IntrptQueueOut, .-BswM_Prv_IntrptQueueOut
.section .bss.a2.BswM_Prv_IntrptQueue_ast,"aw",@nobits
	.align 1
	.type	BswM_Prv_IntrptQueue_ast, @object
	.size	BswM_Prv_IntrptQueue_ast, 40
BswM_Prv_IntrptQueue_ast:
	.zero	40
	.global	BswM_Prv_IntrptQueueInfo_st
.section .bss.a2.BswM_Prv_IntrptQueueInfo_st,"aw",@nobits
	.align 1
	.type	BswM_Prv_IntrptQueueInfo_st, @object
	.size	BswM_Prv_IntrptQueueInfo_st, 4
BswM_Prv_IntrptQueueInfo_st:
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
	.uaword	.LFB71
	.uaword	.LFE71-.LFB71
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB72
	.uaword	.LFE72-.LFB72
	.align 2
.LEFDE2:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 4 ".\\output\\inc/..\\..\\rte\\Rte_Type.h"
	.file 5 ".\\output\\inc/..\\..\\main\\_MainModule\\CalibData\\MAIN_CalibData.h"
	.file 6 ".\\output\\inc/..\\..\\bsw\\BswM_PreCompile_and_PB_Variant\\BswM_Cfg_MRP.h"
	.file 7 "bsw\\BswM\\src\\BswM_Prv_IntrptQueue.h"
	.file 8 "bsw\\BswM\\src\\BswM_Prv.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xc27
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\BswM\\src\\BswM_Prv_IntrptQueue.c"
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
	.uaword	0x1ce
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
	.uaword	0x1fa
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
	.uaword	0x236
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
	.uaword	0x1ce
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
	.uaword	0x1c1
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x3
	.string	"ComM_ModeType"
	.byte	0x4
	.byte	0xe0
	.uaword	0x1c1
	.uleb128 0x4
	.byte	0x4
	.uaword	0x1ec
	.uleb128 0x5
	.string	"eCalibIndex"
	.byte	0x1
	.byte	0x5
	.byte	0x15
	.uaword	0x39b
	.uleb128 0x6
	.string	"eMAIN_CALIB_BUF_UI_INDEX"
	.sleb128 0
	.uleb128 0x6
	.string	"eMAIN_CALIB_BUF_VI_INDEX"
	.sleb128 1
	.uleb128 0x6
	.string	"eMAIN_CALIB_BUF_WI_INDEX"
	.sleb128 2
	.uleb128 0x6
	.string	"eMAIN_CALIB_BUF_VO_INDEX"
	.sleb128 3
	.uleb128 0x6
	.string	"eMAIN_CALIB_BUF_VALID_PARAM_NO"
	.sleb128 4
	.uleb128 0x6
	.string	"eMAIN_CALIB_BUF_MAX_NO"
	.sleb128 16
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.byte	0x5
	.byte	0x1f
	.uaword	0x413
	.uleb128 0x6
	.string	"eMAIN_CALIB_IDX_MCU1"
	.sleb128 0
	.uleb128 0x6
	.string	"eMAIN_CALIB_IDX_MCU2"
	.sleb128 1
	.uleb128 0x6
	.string	"eMAIN_CALIB_IDX_ACM"
	.sleb128 2
	.uleb128 0x6
	.string	"eMAIN_CALIB_IDX_EPS"
	.sleb128 3
	.uleb128 0x6
	.string	"eMAIN_CALIB_ECU_NO"
	.sleb128 4
	.byte	0
	.uleb128 0x5
	.string	"eRcGainIndex"
	.byte	0x1
	.byte	0x5
	.byte	0x27
	.uaword	0x650
	.uleb128 0x6
	.string	"eMAIN_CALIB_BUF_RC00_INDEX"
	.sleb128 0
	.uleb128 0x6
	.string	"eMAIN_CALIB_BUF_RC01_INDEX"
	.sleb128 1
	.uleb128 0x6
	.string	"eMAIN_CALIB_BUF_RC02_INDEX"
	.sleb128 2
	.uleb128 0x6
	.string	"eMAIN_CALIB_BUF_RC03_INDEX"
	.sleb128 3
	.uleb128 0x6
	.string	"eMAIN_CALIB_BUF_RC04_INDEX"
	.sleb128 4
	.uleb128 0x6
	.string	"eMAIN_CALIB_BUF_RC05_INDEX"
	.sleb128 5
	.uleb128 0x6
	.string	"eMAIN_CALIB_BUF_RC06_INDEX"
	.sleb128 6
	.uleb128 0x6
	.string	"eMAIN_CALIB_BUF_RC07_INDEX"
	.sleb128 7
	.uleb128 0x6
	.string	"eMAIN_CALIB_BUF_RC08_INDEX"
	.sleb128 8
	.uleb128 0x6
	.string	"eMAIN_CALIB_BUF_RC09_INDEX"
	.sleb128 9
	.uleb128 0x6
	.string	"eMAIN_CALIB_BUF_RC10_INDEX"
	.sleb128 10
	.uleb128 0x6
	.string	"eMAIN_CALIB_BUF_RC11_INDEX"
	.sleb128 11
	.uleb128 0x6
	.string	"eMAIN_CALIB_BUF_RC12_INDEX"
	.sleb128 12
	.uleb128 0x6
	.string	"eMAIN_CALIB_BUF_RC13_INDEX"
	.sleb128 13
	.uleb128 0x6
	.string	"eMAIN_CALIB_BUF_RC14_INDEX"
	.sleb128 14
	.uleb128 0x6
	.string	"eMAIN_CALIB_BUF_RC15_INDEX"
	.sleb128 15
	.uleb128 0x6
	.string	"eMAIN_CALIB_BUF_RC16_INDEX"
	.sleb128 16
	.uleb128 0x6
	.string	"eMAIN_CALIB_BUF_VALID_RC_NO"
	.sleb128 17
	.uleb128 0x6
	.string	"eMAIN_CALIB_BUF_MAX_RC_NO"
	.sleb128 25
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.byte	0x6
	.byte	0x33
	.uaword	0x96e
	.uleb128 0x6
	.string	"BSWM_MRP_BSW_MODE_NOTIFICATION"
	.sleb128 0
	.uleb128 0x6
	.string	"BSWM_MRP_CANSM_IND"
	.sleb128 1
	.uleb128 0x6
	.string	"BSWM_MRP_COMM_IND"
	.sleb128 2
	.uleb128 0x6
	.string	"BSWM_MRP_COMM_INITIATE_RESET"
	.sleb128 3
	.uleb128 0x6
	.string	"BSWM_MRP_COMM_PNC_REQST"
	.sleb128 4
	.uleb128 0x6
	.string	"BSWM_MRP_DCM_APPL_UPDATE_IND"
	.sleb128 5
	.uleb128 0x6
	.string	"BSWM_MRP_DCM_COM_MODE_REQST"
	.sleb128 6
	.uleb128 0x6
	.string	"BSWM_MRP_ECUM_IND"
	.sleb128 7
	.uleb128 0x6
	.string	"BSWM_MRP_ECUM_RUN_REQST_IND"
	.sleb128 8
	.uleb128 0x6
	.string	"BSWM_MRP_ECUM_WKUP_SOURCE"
	.sleb128 9
	.uleb128 0x6
	.string	"BSWM_MRP_ETHIF_PORTFGROUP"
	.sleb128 10
	.uleb128 0x6
	.string	"BSWM_MRP_ETHSM_IND"
	.sleb128 11
	.uleb128 0x6
	.string	"BSWM_MRP_FRSM_IND"
	.sleb128 12
	.uleb128 0x6
	.string	"BSWM_MRP_GENERIC_REQST"
	.sleb128 13
	.uleb128 0x6
	.string	"BSWM_MRP_J1939_DCM_BROADCAST_STATS"
	.sleb128 14
	.uleb128 0x6
	.string	"BSWM_MRP_J1939_NM_IND"
	.sleb128 15
	.uleb128 0x6
	.string	"BSWM_MRP_LINSM_IND"
	.sleb128 16
	.uleb128 0x6
	.string	"BSWM_MRP_LINSM_SCHEDULE_IND"
	.sleb128 17
	.uleb128 0x6
	.string	"BSWM_MRP_LINTP_MODE_REQST"
	.sleb128 18
	.uleb128 0x6
	.string	"BSWM_MRP_NM_CAR_WKUP_IND"
	.sleb128 19
	.uleb128 0x6
	.string	"BSWM_MRP_NVM_JOB_MODE_IND"
	.sleb128 20
	.uleb128 0x6
	.string	"BSWM_MRP_NVM_REQST"
	.sleb128 21
	.uleb128 0x6
	.string	"BSWM_MRP_SD_CLNT_SERV_CURR_STATE"
	.sleb128 22
	.uleb128 0x6
	.string	"BSWM_MRP_SD_CNSMD_EVNT_GRP_CURR_STATE"
	.sleb128 23
	.uleb128 0x6
	.string	"BSWM_MRP_SD_EVNT_HNDLR_CURR_STATE"
	.sleb128 24
	.uleb128 0x6
	.string	"BSWM_MRP_SWC_MODE_NOTIFICATION"
	.sleb128 25
	.uleb128 0x6
	.string	"BSWM_MRP_SWC_MODE_REQUEST"
	.sleb128 26
	.uleb128 0x6
	.string	"BSWM_MRP_TIMER"
	.sleb128 27
	.uleb128 0x6
	.string	"BSWM_MRP_DEFAULT"
	.sleb128 255
	.byte	0
	.uleb128 0x3
	.string	"BswM_Cfg_MRPType_ten"
	.byte	0x6
	.byte	0x52
	.uaword	0x650
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x8
	.byte	0x8
	.byte	0x7
	.byte	0xb
	.uaword	0x9d3
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x7
	.byte	0xd
	.uaword	0x96e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x7
	.byte	0xe
	.uaword	0x1ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x9
	.uaword	.LASF2
	.byte	0x7
	.byte	0xf
	.uaword	0x1ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.uaword	.LASF3
	.byte	0x7
	.byte	0x10
	.uaword	0x1ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0
	.uleb128 0x3
	.string	"BswM_Prv_IntrptQueueType_tst"
	.byte	0x7
	.byte	0x11
	.uaword	0x992
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.byte	0x13
	.uaword	0xa40
	.uleb128 0xa
	.string	"idxHead_u8"
	.byte	0x7
	.byte	0x15
	.uaword	0x1c1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"idxTail_u8"
	.byte	0x7
	.byte	0x16
	.uaword	0x1c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.string	"dataSize_u8"
	.byte	0x7
	.byte	0x17
	.uaword	0x1c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x3
	.string	"BswM_Prv_IntrptQueueInfoType_tst"
	.byte	0x7
	.byte	0x18
	.uaword	0x9f7
	.uleb128 0xb
	.byte	0x1
	.string	"BswM_Prv_IntrptQueueIn"
	.byte	0x1
	.byte	0x29
	.byte	0x1
	.uaword	.LFB71
	.uaword	.LFE71
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xae1
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x1
	.byte	0x2b
	.uaword	0x96e
	.byte	0x1
	.byte	0x54
	.uleb128 0xc
	.uaword	.LASF1
	.byte	0x1
	.byte	0x2c
	.uaword	0x1ec
	.byte	0x1
	.byte	0x55
	.uleb128 0xc
	.uaword	.LASF2
	.byte	0x1
	.byte	0x2d
	.uaword	0x1ec
	.byte	0x1
	.byte	0x56
	.uleb128 0xc
	.uaword	.LASF3
	.byte	0x1
	.byte	0x2e
	.uaword	0x1ec
	.byte	0x1
	.byte	0x57
	.uleb128 0xd
	.string	"tailIndex_u8"
	.byte	0x1
	.byte	0x32
	.uaword	0x1c1
	.uaword	.LLST0
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.string	"BswM_Prv_IntrptQueueOut"
	.byte	0x1
	.byte	0x61
	.byte	0x1
	.uaword	0x2a3
	.uaword	.LFB72
	.uaword	.LFE72
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xba1
	.uleb128 0xf
	.string	"dataMRPType_pen"
	.byte	0x1
	.byte	0x63
	.uaword	0xba1
	.byte	0x1
	.byte	0x64
	.uleb128 0xf
	.string	"idChannel_pu16"
	.byte	0x1
	.byte	0x64
	.uaword	0x2da
	.byte	0x1
	.byte	0x65
	.uleb128 0xf
	.string	"idxMRPChnl_pu16"
	.byte	0x1
	.byte	0x65
	.uaword	0x2da
	.byte	0x1
	.byte	0x66
	.uleb128 0xf
	.string	"dataReqMode_pu16"
	.byte	0x1
	.byte	0x66
	.uaword	0x2da
	.byte	0x1
	.byte	0x67
	.uleb128 0xd
	.string	"retVal"
	.byte	0x1
	.byte	0x6a
	.uaword	0x2a3
	.uaword	.LLST1
	.uleb128 0xd
	.string	"headIndex_u8"
	.byte	0x1
	.byte	0x6b
	.uaword	0x1c1
	.uaword	.LLST2
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x96e
	.uleb128 0x10
	.uaword	0x9d3
	.uaword	0xbb7
	.uleb128 0x11
	.uaword	0x2b9
	.byte	0x4
	.byte	0
	.uleb128 0x12
	.string	"BswM_Prv_IntrptQueue_ast"
	.byte	0x1
	.byte	0x11
	.uaword	0xba7
	.byte	0x5
	.byte	0x3
	.uaword	BswM_Prv_IntrptQueue_ast
	.uleb128 0x13
	.string	"BswM_Prv_IntrptQueueInfo_st"
	.byte	0x1
	.byte	0x10
	.uaword	0xa40
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BswM_Prv_IntrptQueueInfo_st
	.uleb128 0x14
	.string	"BswM_Prv_isReqstDelayed_b"
	.byte	0x8
	.byte	0x5a
	.uaword	0x273
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x13
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
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uaword	.LVL1
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x5
	.byte	0x3
	.uaword	BswM_Prv_IntrptQueueInfo_st+1
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL3
	.uaword	.LVL6
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL8
	.uaword	.LFE72
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x5
	.byte	0x3
	.uaword	BswM_Prv_IntrptQueueInfo_st
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
	.uaword	.LFB71
	.uaword	.LFE71-.LFB71
	.uaword	.LFB72
	.uaword	.LFE72-.LFB72
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB71
	.uaword	.LFE71
	.uaword	.LFB72
	.uaword	.LFE72
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF2:
	.string	"idxMRPChnl_u16"
.LASF3:
	.string	"dataReqMode_u16"
.LASF1:
	.string	"idChannel_u16"
.LASF0:
	.string	"dataMRPType_en"
	.extern	BswM_Prv_isReqstDelayed_b,STT_OBJECT,1
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
