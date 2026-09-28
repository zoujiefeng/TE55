	.file	"Nvm_MultiBlockCallback.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.IC_BswM_NvM_ReadAll,"ax",@progbits
	.align 1
	.global	IC_BswM_NvM_ReadAll
	.type	IC_BswM_NvM_ReadAll, @function
IC_BswM_NvM_ReadAll:
.LFB31:
	.file 1 "Integration\\ecu\\Nvm_MultiBlockCallback.c"
	.loc 1 33 0
	sub.a	%SP, 8
.LCFI0:
	.loc 1 39 0
	mov	%d4, 0
	.loc 1 37 0
	movh.a	%a15, hi:ReadAllcounter
	mov	%d15, 0
	st.h	[%a15] lo:ReadAllcounter, %d15
	.loc 1 39 0
	call	Fls_17_Dmu_ControlTimeoutDet
.LVL0:
	.loc 1 41 0
	call	IC_SetCurrentTime
.LVL1:
.LBB2:
	.loc 1 42 0
#APP
	# 42 "Integration\ecu\Nvm_MultiBlockCallback.c" 1
	mfcr %d15,0xfe1c
	# 0 "" 2
.LVL2:
#NO_APP
.LBE2:
	extr.u	%d15, %d15, 0, 16
.LVL3:
	jz	%d15, .L6
.L2:
	movh.a	%a15, hi:ReadAllcounter
	lea	%a15, [%a15] lo:ReadAllcounter
.L3:
	.loc 1 50 0 discriminator 3
	call	NvM_MainFunction
.LVL4:
	.loc 1 51 0 discriminator 3
	call	MemIf_Rb_MainFunction
.LVL5:
	.loc 1 52 0 discriminator 3
	lea	%a4, [%SP] 7
	call	NvM_Rb_GetStatus
.LVL6:
	.loc 1 53 0 discriminator 3
	call	MemIf_Rb_GetStatus
.LVL7:
	.loc 1 54 0 discriminator 3
	ld.h	%d15, [%a15]0
	.loc 1 55 0 discriminator 3
	eq	%d3, %d2, 2
	.loc 1 54 0 discriminator 3
	add	%d15, 1
	st.h	[%a15]0, %d15
	.loc 1 55 0 discriminator 3
	ld.bu	%d15, [%SP] 7
	or.eq	%d3, %d15, 2
	jnz	%d3, .L3
	.loc 1 56 0
	call	IC_GetElapsedTime
.LVL8:
	movh.a	%a15, hi:NvM_ReadAll_ElapsedTime
	.loc 1 59 0
	mov	%d4, 1
	.loc 1 56 0
	st.w	[%a15] lo:NvM_ReadAll_ElapsedTime, %d2
	.loc 1 59 0
	call	Fls_17_Dmu_ControlTimeoutDet
.LVL9:
	.loc 1 62 0
	j	MAIN_vidReadAllCallback
.LVL10:
.L6:
	.loc 1 45 0
	movh.a	%a15, hi:nvm_counter
	.loc 1 44 0
	call	NvM_ReadAll
.LVL11:
	.loc 1 45 0
	ld.bu	%d15, [%a15] lo:nvm_counter
	add	%d15, 1
	st.b	[%a15] lo:nvm_counter, %d15
	j	.L2
.LFE31:
	.size	IC_BswM_NvM_ReadAll, .-IC_BswM_NvM_ReadAll
.section .text.IC_BswM_NvM_WriteAll,"ax",@progbits
	.align 1
	.global	IC_BswM_NvM_WriteAll
	.type	IC_BswM_NvM_WriteAll, @function
IC_BswM_NvM_WriteAll:
.LFB32:
	.loc 1 67 0
	sub.a	%SP, 8
.LCFI1:
	.loc 1 81 0
	mov	%d4, 0
	.loc 1 71 0
	movh.a	%a15, hi:WriteAllcounter
	mov	%d15, 0
	st.h	[%a15] lo:WriteAllcounter, %d15
	.loc 1 81 0
	call	Fls_17_Dmu_ControlTimeoutDet
.LVL12:
	.loc 1 83 0
	call	IC_SetCurrentTime
.LVL13:
	.loc 1 84 0
	call	NvM_WriteAll
.LVL14:
	lea	%a15, [%a15] lo:WriteAllcounter
.L8:
	.loc 1 89 0 discriminator 3
	call	NvM_MainFunction
.LVL15:
	.loc 1 90 0 discriminator 3
	call	MemIf_Rb_MainFunction
.LVL16:
	.loc 1 92 0 discriminator 3
	lea	%a4, [%SP] 7
	call	NvM_Rb_GetStatus
.LVL17:
	.loc 1 93 0 discriminator 3
	call	MemIf_Rb_GetStatus
.LVL18:
	.loc 1 95 0 discriminator 3
	ld.h	%d15, [%a15]0
	.loc 1 96 0 discriminator 3
	eq	%d3, %d2, 2
	.loc 1 95 0 discriminator 3
	add	%d15, 1
	st.h	[%a15]0, %d15
	.loc 1 96 0 discriminator 3
	ld.bu	%d15, [%SP] 7
	or.eq	%d3, %d15, 2
	jnz	%d3, .L8
	.loc 1 97 0
	call	IC_GetElapsedTime
.LVL19:
	movh.a	%a15, hi:NvM_WriteAll_ElapsedTime
	.loc 1 100 0
	mov	%d4, 1
	.loc 1 97 0
	st.w	[%a15] lo:NvM_WriteAll_ElapsedTime, %d2
	.loc 1 100 0
	j	Fls_17_Dmu_ControlTimeoutDet
.LVL20:
.LFE32:
	.size	IC_BswM_NvM_WriteAll, .-IC_BswM_NvM_WriteAll
.section .text.NvM_Integration_WriteAll,"ax",@progbits
	.align 1
	.global	NvM_Integration_WriteAll
	.type	NvM_Integration_WriteAll, @function
NvM_Integration_WriteAll:
.LFB33:
	.loc 1 105 0
	sub.a	%SP, 8
.LCFI2:
	.loc 1 106 0
	lea	%a14, [%SP] 8
	mov	%d15, 0
	st.b	[+%a14]-1, %d15
.LVL21:
	.loc 1 110 0
	call	NvM_WriteAll
.LVL22:
.L11:
	.loc 1 114 0 discriminator 3
	call	NvM_MainFunction
.LVL23:
	.loc 1 115 0 discriminator 3
	call	MemIf_Rb_MainFunction
.LVL24:
	.loc 1 118 0 discriminator 3
	mov.aa	%a4, %a14
	call	NvM_Rb_GetStatus
.LVL25:
	.loc 1 119 0 discriminator 3
	call	MemIf_Rb_GetStatus
.LVL26:
	.loc 1 121 0 discriminator 3
	ld.bu	%d15, [%SP] 7
	eq	%d3, %d2, 2
	or.eq	%d3, %d15, 2
	jnz	%d3, .L11
	.loc 1 124 0
	ret
.LFE33:
	.size	NvM_Integration_WriteAll, .-NvM_Integration_WriteAll
	.global	nvm_counter
.section .bss.a1.nvm_counter,"aw",@nobits
	.type	nvm_counter, @object
	.size	nvm_counter, 1
nvm_counter:
	.zero	1
.section .bss.a4.NvM_ReadAll_ElapsedTime,"aw",@nobits
	.align 2
	.type	NvM_ReadAll_ElapsedTime, @object
	.size	NvM_ReadAll_ElapsedTime, 4
NvM_ReadAll_ElapsedTime:
	.zero	4
.section .bss.a4.NvM_WriteAll_ElapsedTime,"aw",@nobits
	.align 2
	.type	NvM_WriteAll_ElapsedTime, @object
	.size	NvM_WriteAll_ElapsedTime, 4
NvM_WriteAll_ElapsedTime:
	.zero	4
	.global	WriteAllcounter
.section .bss.a2.WriteAllcounter,"aw",@nobits
	.align 1
	.type	WriteAllcounter, @object
	.size	WriteAllcounter, 2
WriteAllcounter:
	.zero	2
	.global	ReadAllcounter
.section .bss.a2.ReadAllcounter,"aw",@nobits
	.align 1
	.type	ReadAllcounter, @object
	.size	ReadAllcounter, 2
ReadAllcounter:
	.zero	2
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
	.uaword	.LFB31
	.uaword	.LFE31-.LFB31
	.byte	0x4
	.uaword	.LCFI0-.LFB31
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB32
	.uaword	.LFE32-.LFB32
	.byte	0x4
	.uaword	.LCFI1-.LFB32
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB33
	.uaword	.LFE33-.LFB33
	.byte	0x4
	.uaword	.LCFI2-.LFB33
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE4:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 4 ".\\output\\inc/..\\..\\main\\_MainModule\\CalibData\\MAIN_CalibData.h"
	.file 5 ".\\output\\inc/..\\..\\os\\Os.h"
	.file 6 ".\\output\\inc/..\\..\\bsw\\MemIf\\api\\MemIf_Types.h"
	.file 7 ".\\output\\inc/..\\..\\bsw\\NvM\\api\\NvM_Types.h"
	.file 8 "Integration\\ecu\\TimingCalculation.h"
	.file 9 ".\\output\\inc/..\\..\\bsw\\NvM\\api\\NvM.h"
	.file 10 ".\\output\\inc/..\\..\\bsw\\MemIf\\api\\MemIf.h"
	.file 11 ".\\output\\inc/..\\..\\main\\_MainModule\\ReadAllCallback\\MAIN_ReadAllCallback.h"
	.file 12 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\inc\\Fls_17_Dmu.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xb00
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"Integration\\ecu\\Nvm_MultiBlockCallback.c"
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
	.uaword	0x1d3
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
	.uaword	0x1ff
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
	.uaword	0x23b
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x3
	.string	"float32"
	.byte	0x2
	.byte	0x75
	.uaword	0x274
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
	.uaword	0x1c6
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x4
	.string	"eCalibIndex"
	.byte	0x1
	.byte	0x4
	.byte	0x15
	.uaword	0x385
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_UI_INDEX"
	.sleb128 0
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_VI_INDEX"
	.sleb128 1
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_WI_INDEX"
	.sleb128 2
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_VO_INDEX"
	.sleb128 3
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_VALID_PARAM_NO"
	.sleb128 4
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_MAX_NO"
	.sleb128 16
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.byte	0x4
	.byte	0x1f
	.uaword	0x3fd
	.uleb128 0x5
	.string	"eMAIN_CALIB_IDX_MCU1"
	.sleb128 0
	.uleb128 0x5
	.string	"eMAIN_CALIB_IDX_MCU2"
	.sleb128 1
	.uleb128 0x5
	.string	"eMAIN_CALIB_IDX_ACM"
	.sleb128 2
	.uleb128 0x5
	.string	"eMAIN_CALIB_IDX_EPS"
	.sleb128 3
	.uleb128 0x5
	.string	"eMAIN_CALIB_ECU_NO"
	.sleb128 4
	.byte	0
	.uleb128 0x4
	.string	"eRcGainIndex"
	.byte	0x1
	.byte	0x4
	.byte	0x27
	.uaword	0x63a
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_RC00_INDEX"
	.sleb128 0
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_RC01_INDEX"
	.sleb128 1
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_RC02_INDEX"
	.sleb128 2
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_RC03_INDEX"
	.sleb128 3
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_RC04_INDEX"
	.sleb128 4
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_RC05_INDEX"
	.sleb128 5
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_RC06_INDEX"
	.sleb128 6
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_RC07_INDEX"
	.sleb128 7
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_RC08_INDEX"
	.sleb128 8
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_RC09_INDEX"
	.sleb128 9
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_RC10_INDEX"
	.sleb128 10
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_RC11_INDEX"
	.sleb128 11
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_RC12_INDEX"
	.sleb128 12
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_RC13_INDEX"
	.sleb128 13
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_RC14_INDEX"
	.sleb128 14
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_RC15_INDEX"
	.sleb128 15
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_RC16_INDEX"
	.sleb128 16
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_VALID_RC_NO"
	.sleb128 17
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_MAX_RC_NO"
	.sleb128 25
	.byte	0
	.uleb128 0x7
	.uaword	0x1c6
	.uleb128 0x8
	.string	"CoreIdType"
	.byte	0x5
	.uahalf	0x11b
	.uaword	0x1f1
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.byte	0x18
	.uaword	0x69a
	.uleb128 0x5
	.string	"MEMIF_UNINIT"
	.sleb128 0
	.uleb128 0x5
	.string	"MEMIF_IDLE"
	.sleb128 1
	.uleb128 0x5
	.string	"MEMIF_BUSY"
	.sleb128 2
	.uleb128 0x5
	.string	"MEMIF_BUSY_INTERNAL"
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.string	"MemIf_StatusType"
	.byte	0x6
	.byte	0x1d
	.uaword	0x652
	.uleb128 0x6
	.byte	0x1
	.byte	0x7
	.byte	0x9a
	.uaword	0x6fc
	.uleb128 0x5
	.string	"NVM_RB_STATUS_UNINIT"
	.sleb128 0
	.uleb128 0x5
	.string	"NVM_RB_STATUS_IDLE"
	.sleb128 1
	.uleb128 0x5
	.string	"NVM_RB_STATUS_BUSY"
	.sleb128 2
	.byte	0
	.uleb128 0x3
	.string	"NvM_Rb_StatusType"
	.byte	0x7
	.byte	0x9e
	.uaword	0x6b2
	.uleb128 0x9
	.byte	0x1
	.string	"IC_BswM_NvM_ReadAll"
	.byte	0x1
	.byte	0x20
	.byte	0x1
	.uaword	.LFB31
	.uaword	.LFE31
	.uaword	.LLST0
	.byte	0x1
	.uaword	0x7f4
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x1
	.byte	0x22
	.uaword	0x6fc
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0xb
	.uaword	.LASF1
	.byte	0x1
	.byte	0x23
	.uaword	0x69a
	.uaword	.LLST1
	.uleb128 0xc
	.uaword	.LBB2
	.uaword	.LBE2
	.uaword	0x779
	.uleb128 0xd
	.string	"res"
	.byte	0x1
	.byte	0x2a
	.uaword	0x23b
	.uaword	.LLST2
	.byte	0
	.uleb128 0xe
	.uaword	.LVL0
	.uaword	0x9df
	.uaword	0x78c
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x10
	.uaword	.LVL1
	.uaword	0xa0d
	.uleb128 0x10
	.uaword	.LVL4
	.uaword	0xa25
	.uleb128 0x10
	.uaword	.LVL5
	.uaword	0xa3d
	.uleb128 0xe
	.uaword	.LVL6
	.uaword	0xa59
	.uaword	0x7bb
	.uleb128 0xf
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.byte	0
	.uleb128 0x10
	.uaword	.LVL7
	.uaword	0xa85
	.uleb128 0x10
	.uaword	.LVL8
	.uaword	0xaa2
	.uleb128 0xe
	.uaword	.LVL9
	.uaword	0x9df
	.uaword	0x7e0
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x11
	.uaword	.LVL10
	.byte	0x1
	.uaword	0xabe
	.uleb128 0x10
	.uaword	.LVL11
	.uaword	0xadc
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.string	"IC_BswM_NvM_WriteAll"
	.byte	0x1
	.byte	0x42
	.byte	0x1
	.uaword	.LFB32
	.uaword	.LFE32
	.uaword	.LLST3
	.byte	0x1
	.uaword	0x8aa
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x1
	.byte	0x44
	.uaword	0x6fc
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0xb
	.uaword	.LASF1
	.byte	0x1
	.byte	0x45
	.uaword	0x69a
	.uaword	.LLST4
	.uleb128 0xe
	.uaword	.LVL12
	.uaword	0x9df
	.uaword	0x84f
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x10
	.uaword	.LVL13
	.uaword	0xa0d
	.uleb128 0x10
	.uaword	.LVL14
	.uaword	0xaef
	.uleb128 0x10
	.uaword	.LVL15
	.uaword	0xa25
	.uleb128 0x10
	.uaword	.LVL16
	.uaword	0xa3d
	.uleb128 0xe
	.uaword	.LVL17
	.uaword	0xa59
	.uaword	0x887
	.uleb128 0xf
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.byte	0
	.uleb128 0x10
	.uaword	.LVL18
	.uaword	0xa85
	.uleb128 0x10
	.uaword	.LVL19
	.uaword	0xaa2
	.uleb128 0x12
	.uaword	.LVL20
	.byte	0x1
	.uaword	0x9df
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.string	"NvM_Integration_WriteAll"
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.uaword	.LFB33
	.uaword	.LFE33
	.uaword	.LLST5
	.byte	0x1
	.uaword	0x93f
	.uleb128 0x13
	.string	"NvM_Status"
	.byte	0x1
	.byte	0x6a
	.uaword	0x6fc
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0xd
	.string	"MemIf_Status"
	.byte	0x1
	.byte	0x6b
	.uaword	0x69a
	.uaword	.LLST6
	.uleb128 0x10
	.uaword	.LVL22
	.uaword	0xaef
	.uleb128 0x10
	.uaword	.LVL23
	.uaword	0xa25
	.uleb128 0x10
	.uaword	.LVL24
	.uaword	0xa3d
	.uleb128 0xe
	.uaword	.LVL25
	.uaword	0xa59
	.uaword	0x935
	.uleb128 0xf
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.uaword	.LVL26
	.uaword	0xa85
	.byte	0
	.uleb128 0x13
	.string	"NvM_WriteAll_ElapsedTime"
	.byte	0x1
	.byte	0x13
	.uaword	0x265
	.byte	0x5
	.byte	0x3
	.uaword	NvM_WriteAll_ElapsedTime
	.uleb128 0x13
	.string	"NvM_ReadAll_ElapsedTime"
	.byte	0x1
	.byte	0x14
	.uaword	0x265
	.byte	0x5
	.byte	0x3
	.uaword	NvM_ReadAll_ElapsedTime
	.uleb128 0x14
	.string	"ReadAllcounter"
	.byte	0x1
	.byte	0x9
	.uaword	0x1f1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	ReadAllcounter
	.uleb128 0x14
	.string	"WriteAllcounter"
	.byte	0x1
	.byte	0x9
	.uaword	0x1f1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	WriteAllcounter
	.uleb128 0x14
	.string	"nvm_counter"
	.byte	0x1
	.byte	0x1f
	.uaword	0x1c6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	nvm_counter
	.uleb128 0x15
	.byte	0x1
	.string	"Fls_17_Dmu_ControlTimeoutDet"
	.byte	0xc
	.uahalf	0xd97
	.byte	0x1
	.byte	0x1
	.uaword	0xa0d
	.uleb128 0x16
	.uaword	0x63a
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"IC_SetCurrentTime"
	.byte	0x8
	.byte	0x16
	.byte	0x1
	.byte	0x1
	.uleb128 0x18
	.byte	0x1
	.string	"NvM_MainFunction"
	.byte	0x9
	.uahalf	0x2c9
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.byte	0x1
	.string	"MemIf_Rb_MainFunction"
	.byte	0xa
	.byte	0x4e
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.byte	0x1
	.string	"NvM_Rb_GetStatus"
	.byte	0x9
	.uahalf	0x1aa
	.byte	0x1
	.uaword	0x2a8
	.byte	0x1
	.uaword	0xa7f
	.uleb128 0x16
	.uaword	0xa7f
	.byte	0
	.uleb128 0x1a
	.byte	0x4
	.uaword	0x6fc
	.uleb128 0x1b
	.byte	0x1
	.string	"MemIf_Rb_GetStatus"
	.byte	0xa
	.byte	0x48
	.byte	0x1
	.uaword	0x69a
	.byte	0x1
	.uleb128 0x1b
	.byte	0x1
	.string	"IC_GetElapsedTime"
	.byte	0x8
	.byte	0x1a
	.byte	0x1
	.uaword	0x265
	.byte	0x1
	.uleb128 0x17
	.byte	0x1
	.string	"MAIN_vidReadAllCallback"
	.byte	0xb
	.byte	0x10
	.byte	0x1
	.byte	0x1
	.uleb128 0x18
	.byte	0x1
	.string	"NvM_ReadAll"
	.byte	0x9
	.uahalf	0x293
	.byte	0x1
	.byte	0x1
	.uleb128 0x18
	.byte	0x1
	.string	"NvM_WriteAll"
	.byte	0x9
	.uahalf	0x29c
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
	.uleb128 0x7
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x34
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
	.uleb128 0xb
	.uleb128 0x34
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LFB31
	.uaword	.LCFI0
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0
	.uaword	.LFE31
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL7
	.uaword	.LVL8-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LFB32
	.uaword	.LCFI1
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI1
	.uaword	.LFE32
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL18
	.uaword	.LVL19-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LFB33
	.uaword	.LCFI2
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI2
	.uaword	.LFE33
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL26
	.uaword	.LFE33
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x2c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB31
	.uaword	.LFE31-.LFB31
	.uaword	.LFB32
	.uaword	.LFE32-.LFB32
	.uaword	.LFB33
	.uaword	.LFE33-.LFB33
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB31
	.uaword	.LFE31
	.uaword	.LFB32
	.uaword	.LFE32
	.uaword	.LFB33
	.uaword	.LFE33
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"status_NvM"
.LASF1:
	.string	"stMemIf_en"
	.extern	NvM_WriteAll,STT_FUNC,0
	.extern	NvM_ReadAll,STT_FUNC,0
	.extern	MAIN_vidReadAllCallback,STT_FUNC,0
	.extern	IC_GetElapsedTime,STT_FUNC,0
	.extern	MemIf_Rb_GetStatus,STT_FUNC,0
	.extern	NvM_Rb_GetStatus,STT_FUNC,0
	.extern	MemIf_Rb_MainFunction,STT_FUNC,0
	.extern	NvM_MainFunction,STT_FUNC,0
	.extern	IC_SetCurrentTime,STT_FUNC,0
	.extern	Fls_17_Dmu_ControlTimeoutDet,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
