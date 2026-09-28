	.file	"CDD_CORE3.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.CPUUtilizationCore3_func,"ax",@progbits
	.align 1
	.global	CPUUtilizationCore3_func
	.type	CPUUtilizationCore3_func, @function
CPUUtilizationCore3_func:
.LFB260:
	.file 1 "ASW\\CDD_CORE3\\src\\CDD_CORE3.c"
	.loc 1 65 0
.LVL0:
	.loc 1 66 0
	movh.a	%a15, hi:Duration_global
	st.w	[%a15] lo:Duration_global, %d4
	.loc 1 67 0
	movh.a	%a15, hi:CPU_PercentUtilization_global
	ld.w	%d15, [%a15] lo:CPU_PercentUtilization_global
	.loc 1 68 0
	movh.a	%a15, hi:Status_global
	.loc 1 67 0
	st.w	[%a4]0, %d15
	.loc 1 68 0
	ld.bu	%d15, [%a15] lo:Status_global
	st.b	[%a5]0, %d15
	ret
.LFE260:
	.size	CPUUtilizationCore3_func, .-CPUUtilizationCore3_func
.section .text.GetMaxUserStackUtilization_Core3_func,"ax",@progbits
	.align 1
	.global	GetMaxUserStackUtilization_Core3_func
	.type	GetMaxUserStackUtilization_Core3_func, @function
GetMaxUserStackUtilization_Core3_func:
.LFB261:
	.loc 1 89 0
.LVL1:
	.loc 1 93 0
	movh.a	%a15, hi:MaxUserStackUtilization_f64
	ld.w	%d2, [%a15] lo:MaxUserStackUtilization_f64
	mov	%d15, 0
	cmp.f	%d15, %d2, %d15
	or.t	%d15, %d15,2, %d15,1
	jz	%d15, .L11
	.loc 1 93 0 is_stmt 0 discriminator 1
	movh	%d15, 17096
	cmp.f	%d15, %d2, %d15
	or.t	%d15, %d15,0, %d15,1
	jz	%d15, .L11
	.loc 1 95 0 is_stmt 1
	st.w	[%a4]0, %d2
	.loc 1 91 0
	mov	%d2, 0
	.loc 1 95 0
	ret
.L11:
	.loc 1 99 0
	mov	%d2, 1
.LVL2:
	.loc 1 103 0
	ret
.LFE261:
	.size	GetMaxUserStackUtilization_Core3_func, .-GetMaxUserStackUtilization_Core3_func
.section .text.CDD_CORE3_func,"ax",@progbits
	.align 1
	.global	CDD_CORE3_func
	.type	CDD_CORE3_func, @function
CDD_CORE3_func:
.LFB263:
	.loc 1 215 0
	.loc 1 219 0
	call	CDD_TPPC_vidCORE3_10ms_func
.LVL3:
	.loc 1 220 0
	mov	%d4, 1
	mov	%d5, 10000
	call	FR_vidEcuMainHandler
.LVL4:
	.loc 1 221 0
	movh.a	%a15, hi:u8Div10Cnt.43632
	ld.bu	%d15, [%a15] lo:u8Div10Cnt.43632
	movh	%d2, 52429
	addi	%d2, %d2, -13107
	mul.u	%e2, %d15, %d2
	sh	%d2, %d3, -3
	madd	%d2, %d15, %d2, -10
	and	%d8, %d2, 255
	jz	%d8, .L36
.L14:
	.loc 1 226 0
	movh.a	%a12, hi:u8Div20Cnt.43633
	ld.bu	%d4, [%a12] lo:u8Div20Cnt.43633
	movh	%d2, 52429
	addi	%d2, %d2, -13107
	mul.u	%e2, %d4, %d2
	sh	%d2, %d3, -3
	madd	%d2, %d4, %d2, -10
	add	%d4, 1
	and	%d4, %d4, 255
	and	%d2, %d2, 255
	jnz	%d2, .L16
.LBB6:
	.loc 1 228 0
	call	CDD_TPPC_vidCORE3_200ms_func
.LVL5:
	ld.bu	%d15, [%a15] lo:u8Div10Cnt.43632
	mov	%d4, 1
.L16:
.LBE6:
	.loc 1 232 0
	add	%d15, 1
	st.b	[%a15] lo:u8Div10Cnt.43632, %d15
.LBB7:
.LBB8:
	.loc 1 127 0
	movh.a	%a15, hi:StateCaculationCore3
	ld.bu	%d15, [%a15] lo:StateCaculationCore3
.LBE8:
.LBE7:
	.loc 1 233 0
	st.b	[%a12] lo:u8Div20Cnt.43633, %d4
.LVL6:
.LBB10:
.LBB9:
	.loc 1 127 0
	jge.u	%d15, 4, .L17
	movh.a	%a2, hi:.L19
	lea	%a2, [%a2] lo:.L19
	addsc.a	%a2, %a2, %d15, 2
	ji	%a2
	.align 2
	.align 2
.L19:
	.code32
	j	.L18
	.code32
	j	.L20
	.code32
	j	.L21
	.code32
	j	.L22
.L22:
	.loc 1 162 0
	movh.a	%a3, hi:DTime.43612
	movh.a	%a2, hi:IdleElapsed.43613
	ld.w	%d3, [%a3] lo:DTime.43612
	ld.w	%d2, [%a2] lo:IdleElapsed.43613
	movh.a	%a4, hi:CPU_PercentUtilization_global
	sub	%d2, %d3, %d2
	utof	%d15, %d2
	movh	%d2, 17096
	mul.f	%d2, %d15, %d2
	utof	%d15, %d3
	div.f	%d15, %d2, %d15
	st.w	[%a4] lo:CPU_PercentUtilization_global, %d15
	.loc 1 163 0
	mov	%d15, 0
	st.b	[%a15] lo:StateCaculationCore3, %d15
	.loc 1 164 0
	movh.a	%a15, hi:Status_global
	st.b	[%a15] lo:Status_global, %d15
	.loc 1 166 0
	mov	%d15, 0
	movh.a	%a15, hi:TimeSet.43609
	st.w	[%a15] lo:TimeSet.43609, %d15
	.loc 1 167 0
	movh.a	%a15, hi:BaseTime.43610
	st.w	[%a15] lo:BaseTime.43610, %d15
	.loc 1 168 0
	movh.a	%a15, hi:CurTime.43611
	st.w	[%a15] lo:CurTime.43611, %d15
	.loc 1 171 0
	movh.a	%a15, hi:IdleElapsed_Start.43614
	st.w	[%a15] lo:IdleElapsed_Start.43614, %d15
	.loc 1 172 0
	movh.a	%a15, hi:IdleElapsed_End.43615
	.loc 1 169 0
	st.w	[%a3] lo:DTime.43612, %d15
	.loc 1 170 0
	st.w	[%a2] lo:IdleElapsed.43613, %d15
	.loc 1 172 0
	st.w	[%a15] lo:IdleElapsed_End.43615, %d15
.L17:
	.loc 1 178 0
	movh	%d4, hi:__USTACK3
	addi	%d4, %d4, lo:__USTACK3
	movh	%d15, hi:__USTACK3_END
	.loc 1 180 0
	mov.a	%a15, %d4
	.loc 1 178 0
	addi	%d15, %d15, lo:__USTACK3_END
	sub	%d5, %d4, %d15
.LVL7:
	.loc 1 180 0
	add.a	%a15, -2
.LVL8:
	.loc 1 123 0
	mov	%d3, 0
.LVL9:
.L27:
	.loc 1 183 0
	ld.hu	%d15, [%a15] 2
	ld.hu	%d2, [%a15]0
	sh	%d15, %d15, 16
	or	%d15, %d2
	jnz	%d15, .L28
	.loc 1 185 0
	add	%d3, 1
.LVL10:
	and	%d3, %d3, 255
.LVL11:
	.loc 1 193 0
	ne	%d15, %d3, 8
	.loc 1 186 0
	add.a	%a15, -4
.LVL12:
	.loc 1 193 0
	jnz	%d15, .L27
	.loc 1 195 0
	mov.d	%d2, %a15
	addi	%d15, %d4, -32
	sub	%d15, %d2
	utof	%d2, %d15
	utof	%d15, %d5
	.loc 1 196 0
	movh.a	%a2, hi:MaxUserStackUtilization_f64
	.loc 1 195 0
	div.f	%d15, %d2, %d15
.LVL13:
	.loc 1 196 0
	ld.w	%d2, [%a2] lo:MaxUserStackUtilization_f64
	cmp.f	%d2, %d15, %d2
	jz.t	%d2, 2, .L13
	.loc 1 198 0
	st.w	[%a2] lo:MaxUserStackUtilization_f64, %d15
.L13:
	ret
.LVL14:
.L28:
	.loc 1 191 0
	lea	%a15, [%a15] -32
.LVL15:
	.loc 1 190 0
	mov	%d3, 0
	j	.L27
.LVL16:
.L21:
	.loc 1 142 0
	call	Os_Cbk_GetStopwatch
.LVL17:
	movh.a	%a2, hi:CurTime.43611
	st.w	[%a2] lo:CurTime.43611, %d2
	.loc 1 143 0
	movh.a	%a2, hi:BaseTime.43610
	ld.w	%d15, [%a2] lo:BaseTime.43610
	movh.a	%a2, hi:DTime.43612
	nor	%d4, %d15, 0
	sub	%d3, %d2, %d15
	add	%d4, %d2
	ge.u	%d2, %d15, %d2
	sel	%d2, %d2, %d4, %d3
	st.w	[%a2] lo:DTime.43612, %d2
	.loc 1 146 0
	movh.a	%a2, hi:TimeSet.43609
	ld.w	%d15, [%a2] lo:TimeSet.43609
	jge.u	%d15, %d2, .L17
	.loc 1 148 0
	call	Get_Core3Idle_SumTime
.LVL18:
	movh.a	%a2, hi:IdleElapsed_End.43615
	st.w	[%a2] lo:IdleElapsed_End.43615, %d2
	.loc 1 149 0
	movh.a	%a2, hi:IdleElapsed_Start.43614
	ld.w	%d15, [%a2] lo:IdleElapsed_Start.43614
	movh.a	%a2, hi:IdleElapsed.43613
	nor	%d4, %d15, 0
	.loc 1 151 0
	sub	%d3, %d2, %d15
	add	%d4, %d2
	ge.u	%d15, %d15, %d2
	sel	%d15, %d15, %d4, %d3
	st.w	[%a2] lo:IdleElapsed.43613, %d15
	.loc 1 157 0
	mov	%d15, 3
	st.b	[%a15] lo:StateCaculationCore3, %d15
	j	.L17
.L20:
	.loc 1 136 0
	call	Get_Core3Idle_SumTime
.LVL19:
	movh.a	%a2, hi:IdleElapsed_Start.43614
	st.w	[%a2] lo:IdleElapsed_Start.43614, %d2
	.loc 1 137 0
	call	Os_Cbk_GetStopwatch
.LVL20:
	.loc 1 138 0
	mov	%d15, 2
	.loc 1 137 0
	movh.a	%a2, hi:BaseTime.43610
	st.w	[%a2] lo:BaseTime.43610, %d2
	.loc 1 138 0
	st.b	[%a15] lo:StateCaculationCore3, %d15
	j	.L17
.L18:
	.loc 1 130 0
	mov	%d15, 63
	movh.a	%a2, hi:Status_global
	st.b	[%a2] lo:Status_global, %d15
	.loc 1 131 0
	movh.a	%a2, hi:Duration_global
	ld.w	%d2, [%a2] lo:Duration_global
	movh	%d15, 2
	addi	%d15, %d15, -31072
	mul	%d15, %d2
	movh.a	%a2, hi:TimeSet.43609
	st.w	[%a2] lo:TimeSet.43609, %d15
	.loc 1 132 0
	mov	%d15, 1
	st.b	[%a15] lo:StateCaculationCore3, %d15
	j	.L17
.LVL21:
.L36:
.LBE9:
.LBE10:
.LBB11:
	.loc 1 223 0
	call	CDD_TPPC_vidCORE3_100ms_func
.LVL22:
	.loc 1 224 0
	mov	%d15, 0
	st.b	[%a15] lo:u8Div10Cnt.43632, %d8
	j	.L14
.LBE11:
.LFE263:
	.size	CDD_CORE3_func, .-CDD_CORE3_func
.section .bss.a4.IdleElapsed.43613,"aw",@nobits
	.align 2
	.type	IdleElapsed.43613, @object
	.size	IdleElapsed.43613, 4
IdleElapsed.43613:
	.zero	4
.section .bss.a4.IdleElapsed_End.43615,"aw",@nobits
	.align 2
	.type	IdleElapsed_End.43615, @object
	.size	IdleElapsed_End.43615, 4
IdleElapsed_End.43615:
	.zero	4
.section .bss.a4.DTime.43612,"aw",@nobits
	.align 2
	.type	DTime.43612, @object
	.size	DTime.43612, 4
DTime.43612:
	.zero	4
.section .bss.a4.CurTime.43611,"aw",@nobits
	.align 2
	.type	CurTime.43611, @object
	.size	CurTime.43611, 4
CurTime.43611:
	.zero	4
.section .bss.a4.BaseTime.43610,"aw",@nobits
	.align 2
	.type	BaseTime.43610, @object
	.size	BaseTime.43610, 4
BaseTime.43610:
	.zero	4
.section .bss.a4.IdleElapsed_Start.43614,"aw",@nobits
	.align 2
	.type	IdleElapsed_Start.43614, @object
	.size	IdleElapsed_Start.43614, 4
IdleElapsed_Start.43614:
	.zero	4
.section .bss.a4.TimeSet.43609,"aw",@nobits
	.align 2
	.type	TimeSet.43609, @object
	.size	TimeSet.43609, 4
TimeSet.43609:
	.zero	4
.section .bss.a1.u8Div20Cnt.43633,"aw",@nobits
	.type	u8Div20Cnt.43633, @object
	.size	u8Div20Cnt.43633, 1
u8Div20Cnt.43633:
	.zero	1
.section .bss.a1.u8Div10Cnt.43632,"aw",@nobits
	.type	u8Div10Cnt.43632, @object
	.size	u8Div10Cnt.43632, 1
u8Div10Cnt.43632:
	.zero	1
.section .bss.a4.MaxUserStackUtilization_f64,"aw",@nobits
	.align 2
	.type	MaxUserStackUtilization_f64, @object
	.size	MaxUserStackUtilization_f64, 4
MaxUserStackUtilization_f64:
	.zero	4
.section .bss.a4.CPU_PercentUtilization_global,"aw",@nobits
	.align 2
	.type	CPU_PercentUtilization_global, @object
	.size	CPU_PercentUtilization_global, 4
CPU_PercentUtilization_global:
	.zero	4
.section .bss.a4.Duration_global,"aw",@nobits
	.align 2
	.type	Duration_global, @object
	.size	Duration_global, 4
Duration_global:
	.zero	4
.section .bss.a1.Status_global,"aw",@nobits
	.type	Status_global, @object
	.size	Status_global, 1
Status_global:
	.zero	1
.section .bss.a1.StateCaculationCore3,"aw",@nobits
	.type	StateCaculationCore3, @object
	.size	StateCaculationCore3, 1
StateCaculationCore3:
	.zero	1
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
	.uaword	.LFB260
	.uaword	.LFE260-.LFB260
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB261
	.uaword	.LFE261-.LFB261
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB263
	.uaword	.LFE263-.LFB263
	.align 2
.LEFDE4:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 4 ".\\output\\inc/..\\..\\os\\Os.h"
	.file 5 ".\\output\\inc/..\\..\\ASW\\CDD_CORE3\\api\\CDD_CORE3.h"
	.file 6 ".\\output\\inc/..\\..\\main\\_MainModule\\CalibData\\MAIN_CalibData.h"
	.file 7 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\Cpu\\Std\\Ifx_Types.h"
	.file 8 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\_Impl\\IfxCpu_cfg.h"
	.file 9 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\Scu\\Std\\IfxScuCcu.h"
	.file 10 ".\\output\\inc/..\\..\\bswcdd\\FR\\FR_EcuSetCfg.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xe0b
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"ASW\\CDD_CORE3\\src\\CDD_CORE3.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x18
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
	.uleb128 0x3
	.string	"sint32"
	.byte	0x2
	.byte	0x60
	.uaword	0x1ff
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
	.uaword	0x27e
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
	.uaword	0x212
	.uleb128 0x4
	.byte	0x4
	.uaword	0x212
	.uleb128 0x5
	.uaword	0x212
	.uleb128 0x6
	.byte	0x4
	.uleb128 0x5
	.uaword	0x23e
	.uleb128 0x4
	.byte	0x4
	.uaword	0x23e
	.uleb128 0x7
	.string	"Os_StopwatchTickType"
	.byte	0x4
	.uahalf	0x10f
	.uaword	0x1d3
	.uleb128 0x4
	.byte	0x4
	.uaword	0x26f
	.uleb128 0x8
	.string	"StateCaculation_type"
	.byte	0x1
	.byte	0x5
	.byte	0x1e
	.uaword	0x361
	.uleb128 0x9
	.string	"PREPARE"
	.sleb128 0
	.uleb128 0x9
	.string	"START_CACULATION"
	.sleb128 1
	.uleb128 0x9
	.string	"WAIT_CACULATION"
	.sleb128 2
	.uleb128 0x9
	.string	"FINISH_START_CACULATION"
	.sleb128 3
	.byte	0
	.uleb128 0x8
	.string	"eCalibIndex"
	.byte	0x1
	.byte	0x6
	.byte	0x15
	.uaword	0x41c
	.uleb128 0x9
	.string	"eMAIN_CALIB_BUF_UI_INDEX"
	.sleb128 0
	.uleb128 0x9
	.string	"eMAIN_CALIB_BUF_VI_INDEX"
	.sleb128 1
	.uleb128 0x9
	.string	"eMAIN_CALIB_BUF_WI_INDEX"
	.sleb128 2
	.uleb128 0x9
	.string	"eMAIN_CALIB_BUF_VO_INDEX"
	.sleb128 3
	.uleb128 0x9
	.string	"eMAIN_CALIB_BUF_VALID_PARAM_NO"
	.sleb128 4
	.uleb128 0x9
	.string	"eMAIN_CALIB_BUF_MAX_NO"
	.sleb128 16
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.byte	0x6
	.byte	0x1f
	.uaword	0x494
	.uleb128 0x9
	.string	"eMAIN_CALIB_IDX_MCU1"
	.sleb128 0
	.uleb128 0x9
	.string	"eMAIN_CALIB_IDX_MCU2"
	.sleb128 1
	.uleb128 0x9
	.string	"eMAIN_CALIB_IDX_ACM"
	.sleb128 2
	.uleb128 0x9
	.string	"eMAIN_CALIB_IDX_EPS"
	.sleb128 3
	.uleb128 0x9
	.string	"eMAIN_CALIB_ECU_NO"
	.sleb128 4
	.byte	0
	.uleb128 0x8
	.string	"eRcGainIndex"
	.byte	0x1
	.byte	0x6
	.byte	0x27
	.uaword	0x6d1
	.uleb128 0x9
	.string	"eMAIN_CALIB_BUF_RC00_INDEX"
	.sleb128 0
	.uleb128 0x9
	.string	"eMAIN_CALIB_BUF_RC01_INDEX"
	.sleb128 1
	.uleb128 0x9
	.string	"eMAIN_CALIB_BUF_RC02_INDEX"
	.sleb128 2
	.uleb128 0x9
	.string	"eMAIN_CALIB_BUF_RC03_INDEX"
	.sleb128 3
	.uleb128 0x9
	.string	"eMAIN_CALIB_BUF_RC04_INDEX"
	.sleb128 4
	.uleb128 0x9
	.string	"eMAIN_CALIB_BUF_RC05_INDEX"
	.sleb128 5
	.uleb128 0x9
	.string	"eMAIN_CALIB_BUF_RC06_INDEX"
	.sleb128 6
	.uleb128 0x9
	.string	"eMAIN_CALIB_BUF_RC07_INDEX"
	.sleb128 7
	.uleb128 0x9
	.string	"eMAIN_CALIB_BUF_RC08_INDEX"
	.sleb128 8
	.uleb128 0x9
	.string	"eMAIN_CALIB_BUF_RC09_INDEX"
	.sleb128 9
	.uleb128 0x9
	.string	"eMAIN_CALIB_BUF_RC10_INDEX"
	.sleb128 10
	.uleb128 0x9
	.string	"eMAIN_CALIB_BUF_RC11_INDEX"
	.sleb128 11
	.uleb128 0x9
	.string	"eMAIN_CALIB_BUF_RC12_INDEX"
	.sleb128 12
	.uleb128 0x9
	.string	"eMAIN_CALIB_BUF_RC13_INDEX"
	.sleb128 13
	.uleb128 0x9
	.string	"eMAIN_CALIB_BUF_RC14_INDEX"
	.sleb128 14
	.uleb128 0x9
	.string	"eMAIN_CALIB_BUF_RC15_INDEX"
	.sleb128 15
	.uleb128 0x9
	.string	"eMAIN_CALIB_BUF_RC16_INDEX"
	.sleb128 16
	.uleb128 0x9
	.string	"eMAIN_CALIB_BUF_VALID_RC_NO"
	.sleb128 17
	.uleb128 0x9
	.string	"eMAIN_CALIB_BUF_MAX_RC_NO"
	.sleb128 25
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x4
	.byte	0x4
	.uaword	0x6df
	.uleb128 0xb
	.uleb128 0xc
	.byte	0x8
	.byte	0x7
	.byte	0x8c
	.uaword	0x70a
	.uleb128 0xd
	.string	"module"
	.byte	0x7
	.byte	0x8e
	.uaword	0x6d9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"index"
	.byte	0x7
	.byte	0x8f
	.uaword	0x21f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"IfxModule_IndexMap"
	.byte	0x7
	.byte	0x90
	.uaword	0x6e0
	.uleb128 0xa
	.byte	0x1
	.byte	0x8
	.byte	0x88
	.uaword	0x785
	.uleb128 0x9
	.string	"IfxCpu_Index_0"
	.sleb128 0
	.uleb128 0x9
	.string	"IfxCpu_Index_1"
	.sleb128 1
	.uleb128 0x9
	.string	"IfxCpu_Index_2"
	.sleb128 2
	.uleb128 0x9
	.string	"IfxCpu_Index_3"
	.sleb128 3
	.uleb128 0x9
	.string	"IfxCpu_Index_none"
	.sleb128 4
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.byte	0x9
	.uahalf	0x160
	.uaword	0x88e
	.uleb128 0x9
	.string	"IfxScuCcu_ModulationAmplitude_0p5"
	.sleb128 0
	.uleb128 0x9
	.string	"IfxScuCcu_ModulationAmplitude_1p0"
	.sleb128 1
	.uleb128 0x9
	.string	"IfxScuCcu_ModulationAmplitude_1p25"
	.sleb128 2
	.uleb128 0x9
	.string	"IfxScuCcu_ModulationAmplitude_1p5"
	.sleb128 3
	.uleb128 0x9
	.string	"IfxScuCcu_ModulationAmplitude_2p0"
	.sleb128 4
	.uleb128 0x9
	.string	"IfxScuCcu_ModulationAmplitude_2p5"
	.sleb128 5
	.uleb128 0x9
	.string	"IfxScuCcu_ModulationAmplitude_count"
	.sleb128 6
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.byte	0xa
	.byte	0x17
	.uaword	0x8dc
	.uleb128 0x9
	.string	"eFR_MGTCU_INDEX"
	.sleb128 0
	.uleb128 0x9
	.string	"eFR_DCAC_INDEX"
	.sleb128 1
	.uleb128 0x9
	.string	"eFR_PDU_INDEX"
	.sleb128 2
	.uleb128 0x9
	.string	"eFR_ECU_MAX_NUM"
	.sleb128 3
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.string	"CPUUtilizationCore3_func"
	.byte	0x1
	.byte	0x3b
	.byte	0x1
	.uaword	.LFB260
	.uaword	.LFE260
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x951
	.uleb128 0x10
	.string	"Duration_u32"
	.byte	0x1
	.byte	0x3d
	.uaword	0x23e
	.byte	0x1
	.byte	0x54
	.uleb128 0x10
	.string	"CPU_PercentUtilization"
	.byte	0x1
	.byte	0x3e
	.uaword	0x2f4
	.byte	0x1
	.byte	0x64
	.uleb128 0x10
	.string	"Status"
	.byte	0x1
	.byte	0x3f
	.uaword	0x2bf
	.byte	0x1
	.byte	0x65
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"GetMaxUserStackUtilization_Core3_func"
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.uaword	0x2a9
	.uaword	.LFB261
	.uaword	.LFE261
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x9c6
	.uleb128 0x10
	.string	"MaxUserStackUtilization"
	.byte	0x1
	.byte	0x57
	.uaword	0x2f4
	.byte	0x1
	.byte	0x64
	.uleb128 0x12
	.string	"retValue"
	.byte	0x1
	.byte	0x5b
	.uaword	0x2a9
	.uaword	.LLST0
	.byte	0
	.uleb128 0x13
	.string	"CDD_CORE3_CalcOsPerformance"
	.byte	0x1
	.byte	0x6f
	.byte	0x1
	.byte	0x1
	.uaword	0xad3
	.uleb128 0x14
	.string	"TimeSet"
	.byte	0x1
	.byte	0x71
	.uaword	0x23e
	.uleb128 0x14
	.string	"BaseTime"
	.byte	0x1
	.byte	0x72
	.uaword	0x23e
	.uleb128 0x14
	.string	"CurTime"
	.byte	0x1
	.byte	0x73
	.uaword	0x23e
	.uleb128 0x14
	.string	"DTime"
	.byte	0x1
	.byte	0x74
	.uaword	0x23e
	.uleb128 0x14
	.string	"IdleElapsed"
	.byte	0x1
	.byte	0x75
	.uaword	0x23e
	.uleb128 0x14
	.string	"IdleElapsed_Start"
	.byte	0x1
	.byte	0x76
	.uaword	0x23e
	.uleb128 0x14
	.string	"IdleElapsed_End"
	.byte	0x1
	.byte	0x77
	.uaword	0x23e
	.uleb128 0x14
	.string	"stack_pos"
	.byte	0x1
	.byte	0x79
	.uaword	0x2d1
	.uleb128 0x14
	.string	"stack_start"
	.byte	0x1
	.byte	0x7a
	.uaword	0x23e
	.uleb128 0x14
	.string	"empty_accu"
	.byte	0x1
	.byte	0x7b
	.uaword	0x212
	.uleb128 0x14
	.string	"UStack_Size"
	.byte	0x1
	.byte	0x7c
	.uaword	0x23e
	.uleb128 0x14
	.string	"UserStackUtilization_f64"
	.byte	0x1
	.byte	0x7d
	.uaword	0x26f
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.string	"CDD_CORE3_func"
	.byte	0x1
	.byte	0xd3
	.byte	0x1
	.uaword	.LFB263
	.uaword	.LFE263
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xc66
	.uleb128 0x15
	.string	"u8Div10Cnt"
	.byte	0x1
	.byte	0xd8
	.uaword	0x212
	.byte	0x5
	.byte	0x3
	.uaword	u8Div10Cnt.43632
	.uleb128 0x15
	.string	"u8Div20Cnt"
	.byte	0x1
	.byte	0xd9
	.uaword	0x212
	.byte	0x5
	.byte	0x3
	.uaword	u8Div20Cnt.43633
	.uleb128 0x16
	.byte	0x1
	.uaword	.LASF0
	.byte	0x1
	.byte	0xdb
	.uaword	0x1ff
	.byte	0x1
	.uaword	0xb3a
	.uleb128 0x17
	.byte	0
	.uleb128 0x18
	.uaword	.LBB6
	.uaword	.LBE6
	.uaword	0xb64
	.uleb128 0x16
	.byte	0x1
	.uaword	.LASF1
	.byte	0x1
	.byte	0xe4
	.uaword	0x1ff
	.byte	0x1
	.uaword	0xb5a
	.uleb128 0x17
	.byte	0
	.uleb128 0x19
	.uaword	.LVL5
	.uaword	0xd70
	.byte	0
	.uleb128 0x1a
	.uaword	0x9c6
	.uaword	.LBB7
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xeb
	.uaword	0xc1c
	.uleb128 0x1b
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x1c
	.uaword	0xa69
	.uaword	.LLST1
	.uleb128 0x1c
	.uaword	0xa7a
	.uaword	.LLST2
	.uleb128 0x1c
	.uaword	0xa8d
	.uaword	.LLST3
	.uleb128 0x1c
	.uaword	0xa9f
	.uaword	.LLST4
	.uleb128 0x1c
	.uaword	0xab2
	.uaword	.LLST5
	.uleb128 0x1d
	.uaword	0x9eb
	.byte	0x5
	.byte	0x3
	.uaword	TimeSet.43609
	.uleb128 0x1d
	.uaword	0x9fa
	.byte	0x5
	.byte	0x3
	.uaword	BaseTime.43610
	.uleb128 0x1d
	.uaword	0xa0a
	.byte	0x5
	.byte	0x3
	.uaword	CurTime.43611
	.uleb128 0x1d
	.uaword	0xa19
	.byte	0x5
	.byte	0x3
	.uaword	DTime.43612
	.uleb128 0x1d
	.uaword	0xa26
	.byte	0x5
	.byte	0x3
	.uaword	IdleElapsed.43613
	.uleb128 0x1d
	.uaword	0xa39
	.byte	0x5
	.byte	0x3
	.uaword	IdleElapsed_Start.43614
	.uleb128 0x1d
	.uaword	0xa52
	.byte	0x5
	.byte	0x3
	.uaword	IdleElapsed_End.43615
	.uleb128 0x19
	.uaword	.LVL17
	.uaword	0xd83
	.uleb128 0x19
	.uaword	.LVL18
	.uaword	0xda2
	.uleb128 0x19
	.uaword	.LVL19
	.uaword	0xda2
	.uleb128 0x19
	.uaword	.LVL20
	.uaword	0xd83
	.byte	0
	.byte	0
	.uleb128 0x18
	.uaword	.LBB11
	.uaword	.LBE11
	.uaword	0xc46
	.uleb128 0x16
	.byte	0x1
	.uaword	.LASF2
	.byte	0x1
	.byte	0xdf
	.uaword	0x1ff
	.byte	0x1
	.uaword	0xc3c
	.uleb128 0x17
	.byte	0
	.uleb128 0x19
	.uaword	.LVL22
	.uaword	0xdc2
	.byte	0
	.uleb128 0x19
	.uaword	.LVL3
	.uaword	0xdd5
	.uleb128 0x1e
	.uaword	.LVL4
	.uaword	0xde8
	.uleb128 0x1f
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xa
	.uahalf	0x2710
	.uleb128 0x1f
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x15
	.string	"StateCaculationCore3"
	.byte	0x1
	.byte	0x18
	.uaword	0x2fa
	.byte	0x5
	.byte	0x3
	.uaword	StateCaculationCore3
	.uleb128 0x15
	.string	"Status_global"
	.byte	0x1
	.byte	0x1e
	.uaword	0x212
	.byte	0x5
	.byte	0x3
	.uaword	Status_global
	.uleb128 0x15
	.string	"Duration_global"
	.byte	0x1
	.byte	0x24
	.uaword	0x23e
	.byte	0x5
	.byte	0x3
	.uaword	Duration_global
	.uleb128 0x15
	.string	"CPU_PercentUtilization_global"
	.byte	0x1
	.byte	0x2a
	.uaword	0x26f
	.byte	0x5
	.byte	0x3
	.uaword	CPU_PercentUtilization_global
	.uleb128 0x15
	.string	"MaxUserStackUtilization_f64"
	.byte	0x1
	.byte	0x2b
	.uaword	0x26f
	.byte	0x5
	.byte	0x3
	.uaword	MaxUserStackUtilization_f64
	.uleb128 0x20
	.string	"__USTACK3"
	.byte	0x5
	.byte	0x2b
	.uaword	0x2ca
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.string	"__USTACK3_END"
	.byte	0x5
	.byte	0x2c
	.uaword	0x2ca
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.uaword	0x70a
	.uaword	0xd4e
	.uleb128 0x22
	.uaword	0x206
	.byte	0x3
	.byte	0
	.uleb128 0x20
	.string	"IfxCpu_cfg_indexMap"
	.byte	0x8
	.byte	0xaa
	.uaword	0xd6b
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.uaword	0xd3e
	.uleb128 0x16
	.byte	0x1
	.uaword	.LASF1
	.byte	0x1
	.byte	0xe4
	.uaword	0x1ff
	.byte	0x1
	.uaword	0xd83
	.uleb128 0x17
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.string	"Os_Cbk_GetStopwatch"
	.byte	0x4
	.uahalf	0x3e4
	.byte	0x1
	.uaword	0x2d7
	.byte	0x1
	.uleb128 0x24
	.byte	0x1
	.string	"Get_Core3Idle_SumTime"
	.byte	0x1
	.byte	0x2e
	.byte	0x1
	.uaword	0x23e
	.byte	0x1
	.uleb128 0x16
	.byte	0x1
	.uaword	.LASF2
	.byte	0x1
	.byte	0xdf
	.uaword	0x1ff
	.byte	0x1
	.uaword	0xdd5
	.uleb128 0x17
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.uaword	.LASF0
	.byte	0x1
	.byte	0xdb
	.uaword	0x1ff
	.byte	0x1
	.uaword	0xde8
	.uleb128 0x17
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.string	"FR_vidEcuMainHandler"
	.byte	0xa
	.byte	0x22
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.uaword	0x2c5
	.uleb128 0x26
	.uaword	0x2cc
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x35
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x4
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
	.uleb128 0x10
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x1
	.uleb128 0x13
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
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL2
	.uaword	.LFE261
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL8
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL7
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL6
	.uaword	.LVL9
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL14
	.uaword	.LVL21
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL7
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL16
	.uaword	.LVL21
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL6
	.uaword	.LVL13
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL14
	.uaword	.LVL21
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
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
	.uaword	.LFB260
	.uaword	.LFE260-.LFB260
	.uaword	.LFB261
	.uaword	.LFE261-.LFB261
	.uaword	.LFB263
	.uaword	.LFE263-.LFB263
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB7
	.uaword	.LBE7
	.uaword	.LBB10
	.uaword	.LBE10
	.uaword	0
	.uaword	0
	.uaword	.LFB260
	.uaword	.LFE260
	.uaword	.LFB261
	.uaword	.LFE261
	.uaword	.LFB263
	.uaword	.LFE263
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF1:
	.string	"CDD_TPPC_vidCORE3_200ms_func"
.LASF0:
	.string	"CDD_TPPC_vidCORE3_10ms_func"
.LASF2:
	.string	"CDD_TPPC_vidCORE3_100ms_func"
	.extern	CDD_TPPC_vidCORE3_100ms_func,STT_FUNC,0
	.extern	Get_Core3Idle_SumTime,STT_FUNC,0
	.extern	Os_Cbk_GetStopwatch,STT_FUNC,0
	.extern	__USTACK3_END,STT_OBJECT,4
	.extern	__USTACK3,STT_OBJECT,4
	.extern	CDD_TPPC_vidCORE3_200ms_func,STT_FUNC,0
	.extern	FR_vidEcuMainHandler,STT_FUNC,0
	.extern	CDD_TPPC_vidCORE3_10ms_func,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
