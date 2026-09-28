	.file	"HtxTestHnd.c"
.section .text,"ax",@progbits
.Ltext0:
.section Code.Cpu0,"ax",@progbits
	.align 1
	.global	HtxTestHnd_Init
	.type	HtxTestHnd_Init, @function
HtxTestHnd_Init:
.LFB19:
	.file 1 "bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\02_HtxTestHandler\\src\\HtxTestHnd.c"
	.loc 1 172 0
.LVL0:
	.loc 1 179 0
	call	Mcal_GetCpuIndex
.LVL1:
	.loc 1 182 0
	and	%d15, %d2, 255
	.loc 1 177 0
	mov	%d2, 1
.LVL2:
	.loc 1 182 0
	jnz	%d15, .L2
.LVL3:
	.loc 1 188 0
	movh.a	%a2, hi:HtxTestHnd_StartupTestResults
	movh	%d15, 65535
.LVL4:
	lea	%a15, [%a2] lo:HtxTestHnd_StartupTestResults
	st.w	[%a15] 4, %d15
	st.w	[%a15] 8, %d15
	st.w	[%a15] 12, %d15
	st.w	[%a15] 16, %d15
	st.w	[%a15] 20, %d15
	st.w	[%a15] 24, %d15
	st.w	[%a15] 28, %d15
.LBB16:
.LBB17:
	.loc 1 741 0
	movh.a	%a15, hi:HtxTestHnd_Phase
	st.w	[%a15] lo:HtxTestHnd_Phase, %d2
.LBE17:
.LBE16:
	.loc 1 188 0
	st.w	[%a2] lo:HtxTestHnd_StartupTestResults, %d15
.LVL5:
.LBB19:
.LBB18:
	.loc 1 742 0
	movh.a	%a15, hi:HtxTestHnd_PhaseBackup
	mov	%d15, -2
	st.w	[%a15] lo:HtxTestHnd_PhaseBackup, %d15
.LVL6:
.LBE18:
.LBE19:
	.loc 1 195 0
	mov	%d2, 0
.LVL7:
.L2:
	.loc 1 200 0
	ret
.LFE19:
	.size	HtxTestHnd_Init, .-HtxTestHnd_Init
	.align 1
	.global	HtxTestHnd_ExecStartupTestGrp
	.type	HtxTestHnd_ExecStartupTestGrp, @function
HtxTestHnd_ExecStartupTestGrp:
.LFB20:
	.loc 1 245 0
.LVL8:
.LBB20:
.LBB21:
	.loc 1 778 0
	movh.a	%a15, hi:HtxTestHnd_Phase
	ld.w	%d3, [%a15] lo:HtxTestHnd_Phase
.LVL9:
	.loc 1 780 0
	movh.a	%a15, hi:HtxTestHnd_PhaseBackup
	ld.w	%d15, [%a15] lo:HtxTestHnd_PhaseBackup
	mov	%d2, 1
	xor	%d15, %d3
	jeq	%d15, -1, .L17
.LBE21:
.LBE20:
	.loc 1 340 0
	ret
.L17:
	.loc 1 259 0
	jeq	%d3, 1, .L18
.LVL10:
.L7:
	mov	%d2, 1
.LVL11:
	.loc 1 340 0
	ret
.LVL12:
.L18:
	mov	%d13, %d5
	mov.aa	%a15, %a4
	mov	%d11, %d4
	.loc 1 261 0
	call	Mcal_GetCpuIndex
.LVL13:
	.loc 1 264 0
	jge.u	%d13, 3, .L7
	.loc 1 266 0
	movh.a	%a2, hi:HtxTestHnd_kStartupTestGrpCore
	lea	%a2, [%a2] lo:HtxTestHnd_kStartupTestGrpCore
	addsc.a	%a2, %a2, %d13, 0
	.loc 1 270 0
	mov.d	%d3, %a15
	.loc 1 266 0
	ld.bu	%d15, [%a2]0
	and	%d2, %d2, 255
.LVL14:
	eq	%d2, %d15, %d2
	.loc 1 270 0
	ne	%d15, %d3, 0
	and.lt.u	%d15, %d11, 16
	and	%d2, %d15
	jz	%d2, .L7
.LVL15:
	mul	%d13, %d13, 5
	movh	%d14, hi:HtxTestHnd_kStartupTestGroup
	.loc 1 298 0
	movh.a	%a12, hi:HtxTestHnd_kStartupTestInfo
	.loc 1 310 0
	movh.a	%a13, hi:HtxTestHnd_StartupTestResults
	mov	%d8, 0
	mov	%d10, 0
	mov	%d9, 0
	addi	%d14, %d14, lo:HtxTestHnd_kStartupTestGroup
	.loc 1 298 0
	lea	%a12, [%a12] lo:HtxTestHnd_kStartupTestInfo
	.loc 1 310 0
	lea	%a13, [%a13] lo:HtxTestHnd_StartupTestResults
	.loc 1 313 0
	mov	%d12, 511
.LVL16:
.L10:
	.loc 1 291 0
	add	%d15, %d13, %d8
	mov.a	%a3, %d14
	addsc.a	%a2, %a3, %d15, 0
	ld.bu	%d15, [%a2]0
.LVL17:
	.loc 1 295 0
	jge.u	%d15, 8, .L8
	.loc 1 298 0
	addsc.a	%a2, %a12, %d15, 3
.LVL18:
	ld.bu	%d4, [%a2] 4
.LVL19:
	.loc 1 300 0
	ld.a	%a2, [%a2]0
.LVL20:
	jz.a	%a2, .L9
	.loc 1 303 0
	mov	%d5, %d11
	mov.aa	%a4, %a15
	calli	%a2
.LVL21:
.LBB22:
.LBB23:
	.file 2 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\Mcal_Compiler.h"
	.loc 2 211 0
	ld.w	%d3, [%a15]0
#APP
	# 211 ".\output\inc/..\..\Targets\TC38xx\MCAL\MCAL_Modules\McalLib\inc\Mcal_Compiler.h" 1
	crc32b.w %d9, %d9, %d3
	# 0 "" 2
.LVL22:
#NO_APP
.LBE23:
.LBE22:
	.loc 1 310 0
	addsc.a	%a2, %a13, %d15, 2
	st.w	[%a2]0, %d2
	.loc 1 313 0
	insert	%d2, %d2, 0, 12, 20
.LVL23:
	jeq	%d2, %d12, .L8
.LVL24:
.L9:
	.loc 1 320 0
	addi	%d2, %d10, 1
	and	%d10, %d2, 255
.LVL25:
.L8:
	add	%d8, 1
.LVL26:
	.loc 1 282 0 discriminator 2
	jne	%d8, 5, .L10
	.loc 1 328 0
	ne	%d2, %d10, 0
.LVL27:
	.loc 1 335 0
	st.w	[%a15]0, %d9
	ret
.LFE20:
	.size	HtxTestHnd_ExecStartupTestGrp, .-HtxTestHnd_ExecStartupTestGrp
	.align 1
	.global	HtxTestHnd_SwitchToRunPhase
	.type	HtxTestHnd_SwitchToRunPhase, @function
HtxTestHnd_SwitchToRunPhase:
.LFB21:
	.loc 1 374 0
.LVL28:
	.loc 1 381 0
	call	Mcal_GetCpuIndex
.LVL29:
	.loc 1 383 0
	and	%d15, %d2, 255
	.loc 1 379 0
	mov	%d2, 1
.LVL30:
	.loc 1 383 0
	jnz	%d15, .L20
.LBB24:
.LBB25:
	.loc 1 778 0
	movh.a	%a2, hi:HtxTestHnd_Phase
	.loc 1 780 0
	movh.a	%a15, hi:HtxTestHnd_PhaseBackup
	.loc 1 778 0
	ld.w	%d4, [%a2] lo:HtxTestHnd_Phase
.LVL31:
	.loc 1 780 0
	ld.w	%d3, [%a15] lo:HtxTestHnd_PhaseBackup
	xor	%d3, %d4
.LBE25:
.LBE24:
	.loc 1 387 0
	eq	%d15, %d3, -1
.LVL32:
	and.eq	%d15, %d4, 1
	jz	%d15, .L20
.LVL33:
.LBB26:
.LBB27:
	.loc 1 741 0
	mov	%d15, 2
	st.w	[%a2] lo:HtxTestHnd_Phase, %d15
	.loc 1 742 0
	mov	%d15, -3
	st.w	[%a15] lo:HtxTestHnd_PhaseBackup, %d15
.LVL34:
.LBE27:
.LBE26:
	.loc 1 391 0
	mov	%d2, 0
.LVL35:
.L20:
	.loc 1 397 0
	ret
.LFE21:
	.size	HtxTestHnd_SwitchToRunPhase, .-HtxTestHnd_SwitchToRunPhase
	.align 1
	.global	HtxTestHnd_ExecRuntimeTestGrp
	.type	HtxTestHnd_ExecRuntimeTestGrp, @function
HtxTestHnd_ExecRuntimeTestGrp:
.LFB22:
	.loc 1 443 0
.LVL36:
	.loc 1 443 0
	mov	%d9, %d4
	mov	%d15, %d5
	mov.aa	%a15, %a4
	.loc 1 458 0
	call	Mcal_GetCpuIndex
.LVL37:
.LBB28:
.LBB29:
	.loc 1 778 0
	movh.a	%a2, hi:HtxTestHnd_Phase
	ld.w	%d4, [%a2] lo:HtxTestHnd_Phase
.LVL38:
	.loc 1 780 0
	movh.a	%a2, hi:HtxTestHnd_PhaseBackup
	ld.w	%d3, [%a2] lo:HtxTestHnd_PhaseBackup
	mov	%d11, 1
	xor	%d3, %d4
	jeq	%d3, -1, .L42
.LVL39:
.L25:
.LBE29:
.LBE28:
	.loc 1 558 0
	mov	%d2, %d11
	ret
.LVL40:
.L42:
	.loc 1 462 0
	lt.u	%d3, %d15, 4
	and.eq	%d3, %d4, 2
	jz	%d3, .L25
	.loc 1 464 0
	movh.a	%a2, hi:HtxTestHnd_kRunTimeTestGrpCore
	lea	%a2, [%a2] lo:HtxTestHnd_kRunTimeTestGrpCore
	addsc.a	%a2, %a2, %d15, 0
	.loc 1 468 0
	mov.d	%d5, %a15
	.loc 1 464 0
	ld.bu	%d3, [%a2]0
	.loc 1 458 0
	and	%d2, %d2, 255
.LVL41:
	.loc 1 464 0
	eq	%d4, %d3, %d2
.LVL42:
	.loc 1 468 0
	ne	%d3, %d5, 0
	and.lt.u	%d3, %d9, 16
	and	%d3, %d4
	jz	%d3, .L25
.LVL43:
	movh	%d13, hi:HtxTestHnd_kRunTimeTestGroup
	.loc 1 495 0
	movh.a	%a12, hi:HtxTestHnd_kRunTimeTestInfo
	.loc 1 513 0
	movh.a	%a13, hi:HtxTestHnd_RuntimeTestResults
	.loc 1 468 0
	mov	%d8, 0
	mov	%e10, 0
	addi	%d13, %d13, lo:HtxTestHnd_kRunTimeTestGroup
	sh	%d12, %d15, 2
	.loc 1 495 0
	lea	%a12, [%a12] lo:HtxTestHnd_kRunTimeTestInfo
	.loc 1 513 0
	lea	%a13, [%a13] lo:HtxTestHnd_RuntimeTestResults
	.loc 1 516 0
	mov	%d14, 511
	jz	%d2, .L26
.LVL44:
.L29:
	.loc 1 488 0
	mov.a	%a3, %d12
	addsc.a	%a2, %a3, %d8, 0
	addsc.a	%a2, %a2, %d13, 0
	ld.bu	%d15, [%a2]0
.LVL45:
	.loc 1 492 0
	jge.u	%d15, 8, .L27
	.loc 1 495 0
	addsc.a	%a2, %a12, %d15, 3
.LVL46:
	ld.bu	%d4, [%a2] 4
.LVL47:
	.loc 1 500 0
	ld.a	%a2, [%a2]0
.LVL48:
	jz.a	%a2, .L41
	.loc 1 503 0
	mov	%d5, %d9
	mov.aa	%a4, %a15
	calli	%a2
.LVL49:
.LBB30:
.LBB31:
	.loc 2 211 0
	ld.w	%d3, [%a15]0
#APP
	# 211 ".\output\inc/..\..\Targets\TC38xx\MCAL\MCAL_Modules\McalLib\inc\Mcal_Compiler.h" 1
	crc32b.w %d10, %d10, %d3
	# 0 "" 2
.LVL50:
#NO_APP
.LBE31:
.LBE30:
	.loc 1 513 0
	addsc.a	%a2, %a13, %d15, 2
	st.w	[%a2]0, %d2
	.loc 1 516 0
	insert	%d2, %d2, 0, 12, 20
.LVL51:
	jeq	%d2, %d14, .L27
.LVL52:
.L41:
	.loc 1 534 0
	add	%d11, 1
.LVL53:
	and	%d11, %d11, 255
.LVL54:
.L27:
	add	%d8, 1
.LVL55:
	.loc 1 479 0
	jne	%d8, 4, .L29
	.loc 1 547 0
	ne	%d11, %d11, 0
.LVL56:
	.loc 1 553 0
	st.w	[%a15]0, %d10
.LVL57:
.L43:
	.loc 1 558 0
	mov	%d2, %d11
	ret
.LVL58:
.L26:
	.loc 1 488 0
	mov.a	%a3, %d12
	addsc.a	%a2, %a3, %d8, 0
	addsc.a	%a2, %a2, %d13, 0
	ld.bu	%d15, [%a2]0
.LVL59:
	.loc 1 492 0
	jge.u	%d15, 8, .L31
	.loc 1 495 0
	addsc.a	%a2, %a12, %d15, 3
.LVL60:
	.loc 1 498 0
	ld.bu	%d2, [%a2] 5
	.loc 1 495 0
	ld.bu	%d4, [%a2] 4
.LVL61:
	.loc 1 500 0
	ld.a	%a2, [%a2]0
.LVL62:
	.loc 1 498 0
	mov.a	%a14, %d2
.LVL63:
	.loc 1 500 0
	jz.a	%a2, .L32
	.loc 1 503 0
	mov	%d5, %d9
	mov.aa	%a4, %a15
	calli	%a2
.LVL64:
.LBB33:
.LBB32:
	.loc 2 211 0
	ld.w	%d3, [%a15]0
#APP
	# 211 ".\output\inc/..\..\Targets\TC38xx\MCAL\MCAL_Modules\McalLib\inc\Mcal_Compiler.h" 1
	crc32b.w %d10, %d10, %d3
	# 0 "" 2
.LVL65:
#NO_APP
.LBE32:
.LBE33:
	.loc 1 513 0
	addsc.a	%a2, %a13, %d15, 2
	st.w	[%a2]0, %d2
	.loc 1 516 0
	insert	%d2, %d2, 0, 12, 20
.LVL66:
	jeq	%d2, %d14, .L31
	.loc 1 531 0
	mov.d	%d5, %a14
	mov	%d4, 10
	call	Smu_SetAlarmStatus
.LVL67:
	.loc 1 534 0
	add	%d11, 1
.LVL68:
	and	%d11, %d11, 255
.LVL69:
.L31:
	add	%d8, 1
.LVL70:
	.loc 1 479 0 discriminator 2
	jne	%d8, 4, .L26
	.loc 1 547 0
	ne	%d11, %d11, 0
.LVL71:
	.loc 1 553 0
	st.w	[%a15]0, %d10
	j	.L43
.LVL72:
.L32:
	.loc 1 539 0
	add	%d11, 1
.LVL73:
	and	%d11, %d11, 255
.LVL74:
	j	.L31
.LFE22:
	.size	HtxTestHnd_ExecRuntimeTestGrp, .-HtxTestHnd_ExecRuntimeTestGrp
	.align 1
	.global	HtxTestHnd_ClearRuntimeTestData
	.type	HtxTestHnd_ClearRuntimeTestData, @function
HtxTestHnd_ClearRuntimeTestData:
.LFB23:
	.loc 1 594 0
.LVL75:
	.loc 1 600 0
	movh.a	%a2, hi:HtxTestHnd_RuntimeTestResults
	movh	%d15, 65535
	lea	%a15, [%a2] lo:HtxTestHnd_RuntimeTestResults
	st.w	[%a2] lo:HtxTestHnd_RuntimeTestResults, %d15
.LVL76:
	st.w	[%a15] 4, %d15
.LVL77:
	st.w	[%a15] 8, %d15
.LVL78:
	st.w	[%a15] 12, %d15
.LVL79:
	st.w	[%a15] 16, %d15
.LVL80:
	st.w	[%a15] 20, %d15
.LVL81:
	st.w	[%a15] 24, %d15
.LVL82:
	st.w	[%a15] 28, %d15
.LVL83:
	ret
.LFE23:
	.size	HtxTestHnd_ClearRuntimeTestData, .-HtxTestHnd_ClearRuntimeTestData
	.align 1
	.global	HtxTestHnd_GetStartupTestResult
	.type	HtxTestHnd_GetStartupTestResult, @function
HtxTestHnd_GetStartupTestResult:
.LFB24:
	.loc 1 642 0
.LVL84:
	.loc 1 645 0
	mov	%d2, -23131
	.loc 1 647 0
	jlt.u	%d4, 8, .L48
.LVL85:
	.loc 1 653 0
	ret
.LVL86:
.L48:
	.loc 1 649 0
	movh.a	%a15, hi:HtxTestHnd_StartupTestResults
	lea	%a15, [%a15] lo:HtxTestHnd_StartupTestResults
	addsc.a	%a15, %a15, %d4, 2
	ld.w	%d2, [%a15]0
.LVL87:
	.loc 1 653 0
	ret
.LFE24:
	.size	HtxTestHnd_GetStartupTestResult, .-HtxTestHnd_GetStartupTestResult
	.align 1
	.global	HtxTestHnd_GetRuntimeTestResult
	.type	HtxTestHnd_GetRuntimeTestResult, @function
HtxTestHnd_GetRuntimeTestResult:
.LFB25:
	.loc 1 692 0
.LVL88:
	.loc 1 695 0
	mov	%d2, -23131
	.loc 1 697 0
	jlt.u	%d4, 8, .L52
.LVL89:
	.loc 1 703 0
	ret
.LVL90:
.L52:
	.loc 1 699 0
	movh.a	%a15, hi:HtxTestHnd_RuntimeTestResults
	lea	%a15, [%a15] lo:HtxTestHnd_RuntimeTestResults
	addsc.a	%a15, %a15, %d4, 2
	ld.w	%d2, [%a15]0
.LVL91:
	.loc 1 703 0
	ret
.LFE25:
	.size	HtxTestHnd_GetRuntimeTestResult, .-HtxTestHnd_GetRuntimeTestResult
.section ClearedData.LmuNC.32bit.HtxTestHnd_RuntimeTestResults,"aw",@progbits
	.align 2
	.type	HtxTestHnd_RuntimeTestResults, @object
	.size	HtxTestHnd_RuntimeTestResults, 32
HtxTestHnd_RuntimeTestResults:
	.zero	32
.section ClearedData.LmuNC.32bit.HtxTestHnd_StartupTestResults,"aw",@progbits
	.align 2
	.type	HtxTestHnd_StartupTestResults, @object
	.size	HtxTestHnd_StartupTestResults, 32
HtxTestHnd_StartupTestResults:
	.zero	32
.section ClearedData.LmuNC.32bit.HtxTestHnd_PhaseBackup,"aw",@progbits
	.align 2
	.type	HtxTestHnd_PhaseBackup, @object
	.size	HtxTestHnd_PhaseBackup, 4
HtxTestHnd_PhaseBackup:
	.zero	4
.section ClearedData.LmuNC.32bit.HtxTestHnd_Phase,"aw",@progbits
	.align 2
	.type	HtxTestHnd_Phase, @object
	.size	HtxTestHnd_Phase, 4
HtxTestHnd_Phase:
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
.section .text,"ax",@progbits
.Letext0:
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 4 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 5 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\inc\\Smu.h"
	.file 6 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\02_HtxTestHandler\\inc\\HtxTestHnd_ErrorCodes.h"
	.file 7 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\02_HtxTestHandler\\inc\\HtxTestHnd.h"
	.file 8 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xfaa
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\02_HtxTestHandler\\src\\HtxTestHnd.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x30
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x3
	.byte	0x51
	.uaword	0x20d
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
	.byte	0x3
	.byte	0x6a
	.uaword	0x267
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
	.byte	0x4
	.byte	0x60
	.uaword	0x200
	.uleb128 0x4
	.byte	0x1
	.byte	0x5
	.byte	0xab
	.uaword	0x3f2
	.uleb128 0x5
	.string	"SMU_ALARM_GROUP0"
	.sleb128 0
	.uleb128 0x5
	.string	"SMU_ALARM_GROUP1"
	.sleb128 1
	.uleb128 0x5
	.string	"SMU_ALARM_GROUP2"
	.sleb128 2
	.uleb128 0x5
	.string	"SMU_ALARM_GROUP3"
	.sleb128 3
	.uleb128 0x5
	.string	"SMU_ALARM_GROUP4"
	.sleb128 4
	.uleb128 0x5
	.string	"SMU_ALARM_GROUP5"
	.sleb128 5
	.uleb128 0x5
	.string	"SMU_ALARM_GROUP6"
	.sleb128 6
	.uleb128 0x5
	.string	"SMU_ALARM_GROUP7"
	.sleb128 7
	.uleb128 0x5
	.string	"SMU_ALARM_GROUP8"
	.sleb128 8
	.uleb128 0x5
	.string	"SMU_ALARM_GROUP9"
	.sleb128 9
	.uleb128 0x5
	.string	"SMU_ALARM_GROUP10"
	.sleb128 10
	.uleb128 0x5
	.string	"SMU_ALARM_GROUP11"
	.sleb128 11
	.uleb128 0x5
	.string	"SMU_ALARM_GROUP20"
	.sleb128 20
	.uleb128 0x5
	.string	"SMU_ALARM_GROUP21"
	.sleb128 21
	.byte	0
	.uleb128 0x3
	.string	"Smu_AlarmGroupId"
	.byte	0x5
	.byte	0xba
	.uaword	0x2db
	.uleb128 0x4
	.byte	0x1
	.byte	0x5
	.byte	0xbf
	.uaword	0x5e9
	.uleb128 0x5
	.string	"SMU_ALARM_0"
	.sleb128 0
	.uleb128 0x5
	.string	"SMU_ALARM_1"
	.sleb128 1
	.uleb128 0x5
	.string	"SMU_ALARM_2"
	.sleb128 2
	.uleb128 0x5
	.string	"SMU_ALARM_3"
	.sleb128 3
	.uleb128 0x5
	.string	"SMU_ALARM_4"
	.sleb128 4
	.uleb128 0x5
	.string	"SMU_ALARM_5"
	.sleb128 5
	.uleb128 0x5
	.string	"SMU_ALARM_6"
	.sleb128 6
	.uleb128 0x5
	.string	"SMU_ALARM_7"
	.sleb128 7
	.uleb128 0x5
	.string	"SMU_ALARM_8"
	.sleb128 8
	.uleb128 0x5
	.string	"SMU_ALARM_9"
	.sleb128 9
	.uleb128 0x5
	.string	"SMU_ALARM_10"
	.sleb128 10
	.uleb128 0x5
	.string	"SMU_ALARM_11"
	.sleb128 11
	.uleb128 0x5
	.string	"SMU_ALARM_12"
	.sleb128 12
	.uleb128 0x5
	.string	"SMU_ALARM_13"
	.sleb128 13
	.uleb128 0x5
	.string	"SMU_ALARM_14"
	.sleb128 14
	.uleb128 0x5
	.string	"SMU_ALARM_15"
	.sleb128 15
	.uleb128 0x5
	.string	"SMU_ALARM_16"
	.sleb128 16
	.uleb128 0x5
	.string	"SMU_ALARM_17"
	.sleb128 17
	.uleb128 0x5
	.string	"SMU_ALARM_18"
	.sleb128 18
	.uleb128 0x5
	.string	"SMU_ALARM_19"
	.sleb128 19
	.uleb128 0x5
	.string	"SMU_ALARM_20"
	.sleb128 20
	.uleb128 0x5
	.string	"SMU_ALARM_21"
	.sleb128 21
	.uleb128 0x5
	.string	"SMU_ALARM_22"
	.sleb128 22
	.uleb128 0x5
	.string	"SMU_ALARM_23"
	.sleb128 23
	.uleb128 0x5
	.string	"SMU_ALARM_24"
	.sleb128 24
	.uleb128 0x5
	.string	"SMU_ALARM_25"
	.sleb128 25
	.uleb128 0x5
	.string	"SMU_ALARM_26"
	.sleb128 26
	.uleb128 0x5
	.string	"SMU_ALARM_27"
	.sleb128 27
	.uleb128 0x5
	.string	"SMU_ALARM_28"
	.sleb128 28
	.uleb128 0x5
	.string	"SMU_ALARM_29"
	.sleb128 29
	.uleb128 0x5
	.string	"SMU_ALARM_30"
	.sleb128 30
	.uleb128 0x5
	.string	"SMU_ALARM_31"
	.sleb128 31
	.byte	0
	.uleb128 0x3
	.string	"Smu_AlarmIdType"
	.byte	0x5
	.byte	0xe0
	.uaword	0x40a
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x3
	.string	"HtxTestHnd_TstRsltType"
	.byte	0x6
	.byte	0x97
	.uaword	0x259
	.uleb128 0x3
	.string	"HtxTestHnd_TstPhaseType"
	.byte	0x7
	.byte	0x47
	.uaword	0x259
	.uleb128 0x3
	.string	"HtxTestHnd_TestFptrType"
	.byte	0x7
	.byte	0x4a
	.uaword	0x668
	.uleb128 0x6
	.byte	0x4
	.uaword	0x66e
	.uleb128 0x7
	.byte	0x1
	.uaword	0x60c
	.uaword	0x688
	.uleb128 0x8
	.uaword	0x688
	.uleb128 0x8
	.uaword	0x688
	.uleb128 0x8
	.uaword	0x68d
	.byte	0
	.uleb128 0x9
	.uaword	0x200
	.uleb128 0x9
	.uaword	0x692
	.uleb128 0x6
	.byte	0x4
	.uaword	0x259
	.uleb128 0xa
	.uaword	.LASF2
	.byte	0x8
	.byte	0x7
	.byte	0x54
	.uaword	0x6c1
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0x7
	.byte	0x56
	.uaword	0x649
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.uaword	.LASF1
	.byte	0x7
	.byte	0x57
	.uaword	0x200
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xc
	.uaword	.LASF2
	.byte	0x7
	.byte	0x58
	.uaword	0x698
	.uleb128 0xa
	.uaword	.LASF3
	.byte	0x8
	.byte	0x7
	.byte	0x5f
	.uaword	0x713
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0x7
	.byte	0x61
	.uaword	0x649
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.uaword	.LASF1
	.byte	0x7
	.byte	0x62
	.uaword	0x200
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"SmuSoftwareAlarmIdx"
	.byte	0x7
	.byte	0x63
	.uaword	0x200
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0xc
	.uaword	.LASF3
	.byte	0x7
	.byte	0x64
	.uaword	0x6cc
	.uleb128 0xe
	.string	"HtxTestHnd_lSetPhase"
	.byte	0x1
	.uahalf	0x2e3
	.byte	0x1
	.byte	0x1
	.uaword	0x74a
	.uleb128 0xf
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x2e3
	.uaword	0x74a
	.byte	0
	.uleb128 0x9
	.uaword	0x62a
	.uleb128 0x10
	.string	"HtxTestHnd_lGetPhase"
	.byte	0x1
	.uahalf	0x306
	.byte	0x1
	.uaword	0x62a
	.byte	0x1
	.uaword	0x77f
	.uleb128 0x11
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x308
	.uaword	0x62a
	.byte	0
	.uleb128 0x12
	.string	"__crc32bw"
	.byte	0x2
	.byte	0xd1
	.byte	0x1
	.uaword	0x267
	.byte	0x3
	.uaword	0x7b4
	.uleb128 0x13
	.string	"b"
	.byte	0x2
	.byte	0xd1
	.uaword	0x267
	.uleb128 0x13
	.string	"a"
	.byte	0x2
	.byte	0xd1
	.uaword	0x267
	.uleb128 0x14
	.string	"res"
	.byte	0x2
	.byte	0xd2
	.uaword	0x267
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.string	"HtxTestHnd_Init"
	.byte	0x1
	.byte	0xab
	.byte	0x1
	.uaword	0x2c5
	.uaword	.LFB19
	.uaword	.LFE19
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x837
	.uleb128 0x16
	.string	"Result"
	.byte	0x1
	.byte	0xad
	.uaword	0x2c5
	.uaword	.LLST0
	.uleb128 0x17
	.uaword	.LASF5
	.byte	0x1
	.byte	0xae
	.uaword	0x200
	.uaword	.LLST1
	.uleb128 0x16
	.string	"CoreId"
	.byte	0x1
	.byte	0xaf
	.uaword	0x200
	.uaword	.LLST2
	.uleb128 0x18
	.uaword	0x71e
	.uaword	.LBB16
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xc1
	.uaword	0x82d
	.uleb128 0x19
	.uaword	0x73d
	.uaword	.LLST3
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL1
	.uaword	0xf5a
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.string	"HtxTestHnd_ExecStartupTestGrp"
	.byte	0x1
	.byte	0xef
	.byte	0x1
	.uaword	0x2c5
	.uaword	.LFB20
	.uaword	.LFE20
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x9ad
	.uleb128 0x1b
	.string	"TstSeed"
	.byte	0x1
	.byte	0xf1
	.uaword	0x688
	.uaword	.LLST4
	.uleb128 0x1c
	.uaword	.LASF6
	.byte	0x1
	.byte	0xf2
	.uaword	0x688
	.uaword	.LLST5
	.uleb128 0x1c
	.uaword	.LASF7
	.byte	0x1
	.byte	0xf3
	.uaword	0x68d
	.uaword	.LLST6
	.uleb128 0x17
	.uaword	.LASF8
	.byte	0x1
	.byte	0xf6
	.uaword	0x60c
	.uaword	.LLST7
	.uleb128 0x17
	.uaword	.LASF9
	.byte	0x1
	.byte	0xf7
	.uaword	0x259
	.uaword	.LLST8
	.uleb128 0x17
	.uaword	.LASF10
	.byte	0x1
	.byte	0xf8
	.uaword	0x2c5
	.uaword	.LLST9
	.uleb128 0x17
	.uaword	.LASF11
	.byte	0x1
	.byte	0xf9
	.uaword	0x200
	.uaword	.LLST10
	.uleb128 0x17
	.uaword	.LASF12
	.byte	0x1
	.byte	0xfa
	.uaword	0x200
	.uaword	.LLST11
	.uleb128 0x17
	.uaword	.LASF13
	.byte	0x1
	.byte	0xfb
	.uaword	0x200
	.uaword	.LLST12
	.uleb128 0x17
	.uaword	.LASF14
	.byte	0x1
	.byte	0xfc
	.uaword	0x200
	.uaword	.LLST13
	.uleb128 0x16
	.string	"lCoreId"
	.byte	0x1
	.byte	0xfd
	.uaword	0x200
	.uaword	.LLST14
	.uleb128 0x1d
	.uaword	0x74f
	.uaword	.LBB20
	.uaword	.LBE20
	.byte	0x1
	.uahalf	0x103
	.uaword	0x943
	.uleb128 0x1e
	.uaword	.LBB21
	.uaword	.LBE21
	.uleb128 0x1f
	.uaword	0x772
	.uaword	.LLST15
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0x77f
	.uaword	.LBB22
	.uaword	.LBE22
	.byte	0x1
	.uahalf	0x134
	.uaword	0x979
	.uleb128 0x19
	.uaword	0x79f
	.uaword	.LLST16
	.uleb128 0x19
	.uaword	0x796
	.uaword	.LLST17
	.uleb128 0x1e
	.uaword	.LBB23
	.uaword	.LBE23
	.uleb128 0x20
	.uaword	0x7a8
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL13
	.uaword	0xf5a
	.uleb128 0x21
	.uaword	.LVL21
	.byte	0x8
	.byte	0x7f
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x8c
	.sleb128 0
	.byte	0x22
	.byte	0x6
	.uleb128 0x22
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x22
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7b
	.sleb128 0
	.uleb128 0x22
	.byte	0x1
	.byte	0x54
	.byte	0xb
	.byte	0x7f
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x8c
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x4
	.byte	0x94
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.string	"HtxTestHnd_SwitchToRunPhase"
	.byte	0x1
	.uahalf	0x175
	.byte	0x1
	.uaword	0x2c5
	.uaword	.LFB21
	.uaword	.LFE21
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xa67
	.uleb128 0x24
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x177
	.uaword	0x62a
	.byte	0x1
	.byte	0x54
	.uleb128 0x25
	.string	"Result"
	.byte	0x1
	.uahalf	0x178
	.uaword	0x2c5
	.uaword	.LLST18
	.uleb128 0x25
	.string	"CoreId"
	.byte	0x1
	.uahalf	0x179
	.uaword	0x200
	.uaword	.LLST19
	.uleb128 0x1d
	.uaword	0x74f
	.uaword	.LBB24
	.uaword	.LBE24
	.byte	0x1
	.uahalf	0x181
	.uaword	0xa3f
	.uleb128 0x1e
	.uaword	.LBB25
	.uaword	.LBE25
	.uleb128 0x1f
	.uaword	0x772
	.uaword	.LLST20
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0x71e
	.uaword	.LBB26
	.uaword	.LBE26
	.byte	0x1
	.uahalf	0x185
	.uaword	0xa5d
	.uleb128 0x19
	.uaword	0x73d
	.uaword	.LLST21
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL29
	.uaword	0xf5a
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.string	"HtxTestHnd_ExecRuntimeTestGrp"
	.byte	0x1
	.uahalf	0x1b5
	.byte	0x1
	.uaword	0x2c5
	.uaword	.LFB22
	.uaword	.LFE22
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xc47
	.uleb128 0x26
	.string	"TstSeed"
	.byte	0x1
	.uahalf	0x1b7
	.uaword	0x688
	.uaword	.LLST22
	.uleb128 0x27
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x1b8
	.uaword	0x688
	.uaword	.LLST23
	.uleb128 0x27
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x1b9
	.uaword	0x68d
	.uaword	.LLST24
	.uleb128 0x28
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x1bc
	.uaword	0x60c
	.uaword	.LLST25
	.uleb128 0x28
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x1bd
	.uaword	0x259
	.uaword	.LLST26
	.uleb128 0x28
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x1be
	.uaword	0x2c5
	.uaword	.LLST27
	.uleb128 0x28
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x1bf
	.uaword	0x200
	.uaword	.LLST28
	.uleb128 0x28
	.uaword	.LASF12
	.byte	0x1
	.uahalf	0x1c0
	.uaword	0x200
	.uaword	.LLST29
	.uleb128 0x28
	.uaword	.LASF13
	.byte	0x1
	.uahalf	0x1c1
	.uaword	0x200
	.uaword	.LLST30
	.uleb128 0x25
	.string	"lSmuSwAlarmIdx"
	.byte	0x1
	.uahalf	0x1c2
	.uaword	0x200
	.uaword	.LLST31
	.uleb128 0x28
	.uaword	.LASF14
	.byte	0x1
	.uahalf	0x1c3
	.uaword	0x200
	.uaword	.LLST32
	.uleb128 0x25
	.string	"lCoreId"
	.byte	0x1
	.uahalf	0x1c4
	.uaword	0x200
	.uaword	.LLST33
	.uleb128 0x1d
	.uaword	0x74f
	.uaword	.LBB28
	.uaword	.LBE28
	.byte	0x1
	.uahalf	0x1cc
	.uaword	0xb9a
	.uleb128 0x1e
	.uaword	.LBB29
	.uaword	.LBE29
	.uleb128 0x1f
	.uaword	0x772
	.uaword	.LLST34
	.byte	0
	.byte	0
	.uleb128 0x29
	.uaword	0x77f
	.uaword	.LBB30
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x1
	.uahalf	0x1ff
	.uaword	0xbcc
	.uleb128 0x19
	.uaword	0x79f
	.uaword	.LLST35
	.uleb128 0x19
	.uaword	0x796
	.uaword	.LLST36
	.uleb128 0x2a
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0x20
	.uaword	0x7a8
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL37
	.uaword	0xf5a
	.uleb128 0x2b
	.uaword	.LVL49
	.byte	0x8
	.byte	0x7f
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x8c
	.sleb128 0
	.byte	0x22
	.byte	0x6
	.uaword	0xc03
	.uleb128 0x22
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x22
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x22
	.byte	0x1
	.byte	0x54
	.byte	0xb
	.byte	0x7f
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x8c
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x4
	.byte	0x94
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.uaword	.LVL64
	.byte	0x8
	.byte	0x7f
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x8c
	.sleb128 0
	.byte	0x22
	.byte	0x6
	.uaword	0xc31
	.uleb128 0x22
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x22
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x22
	.byte	0x1
	.byte	0x54
	.byte	0xb
	.byte	0x7f
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x8c
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x4
	.byte	0x94
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.uaword	.LVL67
	.uaword	0xf76
	.uleb128 0x22
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.uleb128 0x22
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x2d
	.byte	0x1
	.string	"HtxTestHnd_ClearRuntimeTestData"
	.byte	0x1
	.uahalf	0x251
	.byte	0x1
	.uaword	.LFB23
	.uaword	.LFE23
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xc90
	.uleb128 0x25
	.string	"Index"
	.byte	0x1
	.uahalf	0x253
	.uaword	0x200
	.uaword	.LLST37
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.string	"HtxTestHnd_GetStartupTestResult"
	.byte	0x1
	.uahalf	0x281
	.byte	0x1
	.uaword	0x60c
	.uaword	.LFB24
	.uaword	.LFE24
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xce9
	.uleb128 0x2e
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x281
	.uaword	0x688
	.byte	0x1
	.byte	0x54
	.uleb128 0x28
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x283
	.uaword	0x60c
	.uaword	.LLST38
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.string	"HtxTestHnd_GetRuntimeTestResult"
	.byte	0x1
	.uahalf	0x2b3
	.byte	0x1
	.uaword	0x60c
	.uaword	.LFB25
	.uaword	.LFE25
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xd42
	.uleb128 0x2e
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x2b3
	.uaword	0x688
	.byte	0x1
	.byte	0x54
	.uleb128 0x28
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x2b5
	.uaword	0x60c
	.uaword	.LLST39
	.byte	0
	.uleb128 0x2f
	.string	"HtxTestHnd_Phase"
	.byte	0x1
	.byte	0x54
	.uaword	0x62a
	.byte	0x5
	.byte	0x3
	.uaword	HtxTestHnd_Phase
	.uleb128 0x2f
	.string	"HtxTestHnd_PhaseBackup"
	.byte	0x1
	.byte	0x55
	.uaword	0x62a
	.byte	0x5
	.byte	0x3
	.uaword	HtxTestHnd_PhaseBackup
	.uleb128 0x30
	.uaword	0x60c
	.uaword	0xd94
	.uleb128 0x31
	.uaword	0x600
	.byte	0x7
	.byte	0
	.uleb128 0x2f
	.string	"HtxTestHnd_StartupTestResults"
	.byte	0x1
	.byte	0x59
	.uaword	0xd84
	.byte	0x5
	.byte	0x3
	.uaword	HtxTestHnd_StartupTestResults
	.uleb128 0x2f
	.string	"HtxTestHnd_RuntimeTestResults"
	.byte	0x1
	.byte	0x5d
	.uaword	0xd84
	.byte	0x5
	.byte	0x3
	.uaword	HtxTestHnd_RuntimeTestResults
	.uleb128 0x30
	.uaword	0x6c1
	.uaword	0xdfa
	.uleb128 0x31
	.uaword	0x600
	.byte	0x7
	.byte	0
	.uleb128 0x32
	.string	"HtxTestHnd_kStartupTestInfo"
	.byte	0x7
	.byte	0x79
	.uaword	0xe1f
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.uaword	0xdea
	.uleb128 0x30
	.uaword	0x200
	.uaword	0xe3a
	.uleb128 0x31
	.uaword	0x600
	.byte	0x2
	.uleb128 0x31
	.uaword	0x600
	.byte	0x4
	.byte	0
	.uleb128 0x32
	.string	"HtxTestHnd_kStartupTestGroup"
	.byte	0x7
	.byte	0x8c
	.uaword	0xe60
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.uaword	0xe24
	.uleb128 0x30
	.uaword	0x200
	.uaword	0xe75
	.uleb128 0x31
	.uaword	0x600
	.byte	0x2
	.byte	0
	.uleb128 0x32
	.string	"HtxTestHnd_kStartupTestGrpCore"
	.byte	0x7
	.byte	0x8f
	.uaword	0xe9d
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.uaword	0xe65
	.uleb128 0x30
	.uaword	0x713
	.uaword	0xeb2
	.uleb128 0x31
	.uaword	0x600
	.byte	0x7
	.byte	0
	.uleb128 0x32
	.string	"HtxTestHnd_kRunTimeTestInfo"
	.byte	0x7
	.byte	0xa6
	.uaword	0xed7
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.uaword	0xea2
	.uleb128 0x30
	.uaword	0x200
	.uaword	0xef2
	.uleb128 0x31
	.uaword	0x600
	.byte	0x3
	.uleb128 0x31
	.uaword	0x600
	.byte	0x3
	.byte	0
	.uleb128 0x32
	.string	"HtxTestHnd_kRunTimeTestGroup"
	.byte	0x7
	.byte	0xba
	.uaword	0xf18
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.uaword	0xedc
	.uleb128 0x30
	.uaword	0x200
	.uaword	0xf2d
	.uleb128 0x31
	.uaword	0x600
	.byte	0x3
	.byte	0
	.uleb128 0x32
	.string	"HtxTestHnd_kRunTimeTestGrpCore"
	.byte	0x7
	.byte	0xbd
	.uaword	0xf55
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.uaword	0xf1d
	.uleb128 0x33
	.byte	0x1
	.string	"Mcal_GetCpuIndex"
	.byte	0x8
	.uahalf	0x335
	.byte	0x1
	.uaword	0x259
	.byte	0x1
	.uleb128 0x34
	.byte	0x1
	.string	"Smu_SetAlarmStatus"
	.byte	0x5
	.uahalf	0x214
	.byte	0x1
	.uaword	0x2c5
	.byte	0x1
	.uaword	0xfa3
	.uleb128 0x8
	.uaword	0xfa3
	.uleb128 0x8
	.uaword	0xfa8
	.byte	0
	.uleb128 0x9
	.uaword	0x3f2
	.uleb128 0x9
	.uaword	0x5e9
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0xc
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
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
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x1d
	.byte	0x1
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL6
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL7
	.uaword	.LFE19
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL3
	.uaword	.LVL5
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL7
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL2
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL5
	.uaword	.LVL7
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL8
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL10
	.uaword	.LVL12
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LVL13-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL13-1
	.uaword	.LFE20
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL8
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL10
	.uaword	.LVL12
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LVL13-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL13-1
	.uaword	.LFE20
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL8
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL10
	.uaword	.LVL12
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LVL13-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL13-1
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL16
	.uaword	.LFE20
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL21
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x2
	.byte	0x82
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL8
	.uaword	.LVL16
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL25
	.uaword	.LFE20
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL8
	.uaword	.LVL11
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL12
	.uaword	.LVL27
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL27
	.uaword	.LFE20
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL16
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL26
	.uaword	.LFE20
	.uahalf	0x3
	.byte	0x78
	.sleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL8
	.uaword	.LVL16
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LFE20
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x2
	.byte	0x82
	.sleb128 4
	.uaword	.LVL20
	.uaword	.LVL25
	.uahalf	0x9
	.byte	0x7f
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x8c
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x2
	.byte	0x82
	.sleb128 0
	.uaword	.LVL18
	.uaword	.LVL26
	.uahalf	0x8
	.byte	0x7e
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x7d
	.sleb128 0
	.byte	0x22
	.uaword	.LVL26
	.uaword	.LFE20
	.uahalf	0xa
	.byte	0x7e
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x7d
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL12
	.uaword	.LVL13-1
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL21
	.uaword	.LVL24
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL28
	.uaword	.LVL34
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL34
	.uaword	.LVL35
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL35
	.uaword	.LFE21
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL29
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL30
	.uaword	.LVL32
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL31
	.uaword	.LVL35
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL33
	.uaword	.LVL35
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL36
	.uaword	.LVL37-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL37-1
	.uaword	.LFE22
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL36
	.uaword	.LVL37-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL37-1
	.uaword	.LFE22
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL36
	.uaword	.LVL37-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL37-1
	.uaword	.LVL43
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL43
	.uaword	.LVL44
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL44
	.uaword	.LFE22
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL49
	.uaword	.LVL51
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL51
	.uaword	.LVL52
	.uahalf	0x2
	.byte	0x82
	.sleb128 0
	.uaword	.LVL64
	.uaword	.LVL66
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL66
	.uaword	.LVL67-1
	.uahalf	0x2
	.byte	0x82
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL36
	.uaword	.LVL44
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL44
	.uaword	.LVL50
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL54
	.uaword	.LVL65
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL69
	.uaword	.LFE22
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL36
	.uaword	.LVL39
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL39
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL40
	.uaword	.LVL56
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL56
	.uaword	.LVL58
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL58
	.uaword	.LVL71
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL71
	.uaword	.LVL72
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL72
	.uaword	.LFE22
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL44
	.uaword	.LVL54
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL54
	.uaword	.LVL55
	.uahalf	0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL55
	.uaword	.LVL57
	.uahalf	0x3
	.byte	0x78
	.sleb128 0
	.byte	0x9f
	.uaword	.LVL58
	.uaword	.LVL69
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL69
	.uaword	.LVL70
	.uahalf	0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL70
	.uaword	.LVL72
	.uahalf	0x3
	.byte	0x78
	.sleb128 0
	.byte	0x9f
	.uaword	.LVL72
	.uaword	.LFE22
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL36
	.uaword	.LVL44
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL44
	.uaword	.LVL53
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL53
	.uaword	.LVL54
	.uahalf	0x3
	.byte	0x7b
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL54
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL58
	.uaword	.LVL68
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL68
	.uaword	.LVL69
	.uahalf	0x3
	.byte	0x7b
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL69
	.uaword	.LVL71
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL72
	.uaword	.LVL73
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL73
	.uaword	.LVL74
	.uahalf	0x3
	.byte	0x7b
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL74
	.uaword	.LFE22
	.uahalf	0x1
	.byte	0x5b
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL47
	.uaword	.LVL48
	.uahalf	0x2
	.byte	0x82
	.sleb128 4
	.uaword	.LVL48
	.uaword	.LVL54
	.uahalf	0x9
	.byte	0x7f
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x8c
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x4
	.uaword	.LVL61
	.uaword	.LVL62
	.uahalf	0x2
	.byte	0x82
	.sleb128 4
	.uaword	.LVL62
	.uaword	.LVL69
	.uahalf	0x9
	.byte	0x7f
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x8c
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x4
	.uaword	.LVL72
	.uaword	.LFE22
	.uahalf	0x9
	.byte	0x7f
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x8c
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL63
	.uaword	.LVL69
	.uahalf	0x9
	.byte	0x7f
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x8c
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x5
	.uaword	.LVL72
	.uaword	.LFE22
	.uahalf	0x9
	.byte	0x7f
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x8c
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x5
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL45
	.uaword	.LVL46
	.uahalf	0x2
	.byte	0x82
	.sleb128 0
	.uaword	.LVL46
	.uaword	.LVL55
	.uahalf	0x8
	.byte	0x7d
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x7c
	.sleb128 0
	.byte	0x22
	.uaword	.LVL55
	.uaword	.LVL57
	.uahalf	0xa
	.byte	0x7d
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x7c
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.uaword	.LVL59
	.uaword	.LVL60
	.uahalf	0x2
	.byte	0x82
	.sleb128 0
	.uaword	.LVL60
	.uaword	.LVL70
	.uahalf	0x8
	.byte	0x7d
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x7c
	.sleb128 0
	.byte	0x22
	.uaword	.LVL70
	.uaword	.LVL72
	.uahalf	0xa
	.byte	0x7d
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x7c
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.uaword	.LVL72
	.uaword	.LFE22
	.uahalf	0x8
	.byte	0x7d
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x7c
	.sleb128 0
	.byte	0x22
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL37
	.uaword	.LVL39
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL40
	.uaword	.LVL41
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL38
	.uaword	.LVL39
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL39
	.uaword	.LVL40
	.uahalf	0x5
	.byte	0x3
	.uaword	HtxTestHnd_Phase
	.uaword	.LVL40
	.uaword	.LVL42
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL42
	.uaword	.LVL44
	.uahalf	0x5
	.byte	0x3
	.uaword	HtxTestHnd_Phase
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL49
	.uaword	.LVL52
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL64
	.uaword	.LVL67-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL49
	.uaword	.LVL50
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL64
	.uaword	.LVL65
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL75
	.uaword	.LVL76
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL76
	.uaword	.LVL77
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL77
	.uaword	.LVL78
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL78
	.uaword	.LVL79
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL79
	.uaword	.LVL80
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL80
	.uaword	.LVL81
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL81
	.uaword	.LVL82
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	.LVL82
	.uaword	.LVL83
	.uahalf	0x2
	.byte	0x37
	.byte	0x9f
	.uaword	.LVL83
	.uaword	.LFE23
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL84
	.uaword	.LVL85
	.uahalf	0x4
	.byte	0xb
	.uahalf	0xa5a5
	.byte	0x9f
	.uaword	.LVL85
	.uaword	.LVL86
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL86
	.uaword	.LVL87
	.uahalf	0x4
	.byte	0xb
	.uahalf	0xa5a5
	.byte	0x9f
	.uaword	.LVL87
	.uaword	.LFE24
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL88
	.uaword	.LVL89
	.uahalf	0x4
	.byte	0xb
	.uahalf	0xa5a5
	.byte	0x9f
	.uaword	.LVL89
	.uaword	.LVL90
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL90
	.uaword	.LVL91
	.uahalf	0x4
	.byte	0xb
	.uahalf	0xa5a5
	.byte	0x9f
	.uaword	.LVL91
	.uaword	.LFE25
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x4c
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
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB16
	.uaword	.LBE16
	.uaword	.LBB19
	.uaword	.LBE19
	.uaword	0
	.uaword	0
	.uaword	.LBB30
	.uaword	.LBE30
	.uaword	.LBB33
	.uaword	.LBE33
	.uaword	0
	.uaword	0
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
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF12:
	.string	"lTestFailCount"
.LASF7:
	.string	"TstSignaturePtr"
.LASF4:
	.string	"TestPhase"
.LASF1:
	.string	"ParamSetIdx"
.LASF13:
	.string	"lParamSetIndex"
.LASF8:
	.string	"lTestResult"
.LASF0:
	.string	"TestFuncPtr"
.LASF6:
	.string	"TstGroupIndex"
.LASF5:
	.string	"TestIndex"
.LASF10:
	.string	"lRetVal"
.LASF2:
	.string	"HtxTestHnd_StartupTestInfoType"
.LASF9:
	.string	"lTestSignature"
.LASF11:
	.string	"lTestIndex"
.LASF3:
	.string	"HtxTestHnd_RunTimeTestInfoType"
.LASF14:
	.string	"lTestNum"
	.extern	Smu_SetAlarmStatus,STT_FUNC,0
	.extern	HtxTestHnd_kRunTimeTestInfo,STT_OBJECT,64
	.extern	HtxTestHnd_kRunTimeTestGroup,STT_OBJECT,16
	.extern	HtxTestHnd_kRunTimeTestGrpCore,STT_OBJECT,4
	.extern	HtxTestHnd_kStartupTestInfo,STT_OBJECT,64
	.extern	HtxTestHnd_kStartupTestGroup,STT_OBJECT,15
	.extern	HtxTestHnd_kStartupTestGrpCore,STT_OBJECT,3
	.extern	Mcal_GetCpuIndex,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
