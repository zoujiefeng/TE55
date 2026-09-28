	.file	"AppCbk.c"
.section .text,"ax",@progbits
.Ltext0:
#APP
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name                                 # define the section and inttab entry code 
 .pushsection .\intEntryLabel,"ax",@progbits   
 __\intEntryLabel :                              
   svlcx                                        
   movh.a  %a14, hi:\name                      
   lea     %a14, [%a14]lo:\name                
   ji      %a14                                 
 .popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name)                                                   # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name                                # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry SMU0_ISR,0,250
#NO_APP
.section .text.SMU0_ISR,"ax",@progbits
	.align 1
	.global	SMU0_ISR
	.type	SMU0_ISR, @function
SMU0_ISR:
.LFB19:
	.file 1 "bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\src\\AppCbk.c"
	.loc 1 103 0
.LBB8:
.LBB9:
	.file 2 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\machine\\intrinsics.h"
	.loc 2 166 0
#APP
	# 166 "s:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	disable
	# 0 "" 2
#NO_APP
.LBE9:
.LBE8:
	.loc 1 108 0
#APP
	# 108 "bswcdd\SafeTPack\Stp_Basic\AppSw\DemoHtxStp\StpRefApp\src\AppCbk.c" 1
	debug
	# 0 "" 2
#NO_APP
.LBB10:
.LBB11:
	.loc 2 172 0
#APP
	# 172 "s:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	enable
	# 0 "" 2
#NO_APP
	rslcx
	rfe
.LBE11:
.LBE10:
.LFE19:
	.size	SMU0_ISR, .-SMU0_ISR
.section .text.AppCbk_ErrorHandler,"ax",@progbits
	.align 1
	.global	AppCbk_ErrorHandler
	.type	AppCbk_ErrorHandler, @function
AppCbk_ErrorHandler:
.LFB20:
	.loc 1 149 0
.LVL0:
	.loc 1 149 0
	mov	%d8, %d4
.LBB12:
.LBB13:
	.loc 2 166 0
#APP
	# 166 "s:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	disable
	# 0 "" 2
.LVL1:
#NO_APP
	movh.a	%a12, hi:AppCbk_StartupTestLog
	mov	%d15, 0
	lea	%a12, [%a12] lo:AppCbk_StartupTestLog
.LVL2:
.L3:
.LBE13:
.LBE12:
	.loc 1 158 0 discriminator 3
	and	%d4, %d15, 255
	call	HtxTestHnd_GetStartupTestResult
.LVL3:
	addsc.a	%a15, %a12, %d15, 2
	add	%d15, 1
.LVL4:
	st.w	[%a15]0, %d2
.LVL5:
	.loc 1 156 0 discriminator 3
	ne	%d2, %d15, 8
	jnz	%d2, .L3
	movh.a	%a12, hi:AppCbk_RuntimeTestLog
	mov	%d15, 0
	lea	%a12, [%a12] lo:AppCbk_RuntimeTestLog
.L4:
.LVL6:
	.loc 1 166 0 discriminator 3
	and	%d4, %d15, 255
	call	HtxTestHnd_GetRuntimeTestResult
.LVL7:
	addsc.a	%a15, %a12, %d15, 2
	add	%d15, 1
.LVL8:
	st.w	[%a15]0, %d2
.LVL9:
	.loc 1 164 0 discriminator 3
	ne	%d2, %d15, 8
	jnz	%d2, .L4
	.loc 1 170 0
	addi	%d4, %d8, -1
	jge.u	%d4, 15, .L21
	movh.a	%a15, hi:.L7
	lea	%a15, [%a15] lo:.L7
	addsc.a	%a15, %a15, %d4, 2
	ji	%a15
	.align 2
	.align 2
.L7:
	.code32
	j	.L21
	.code32
	j	.L21
	.code32
	j	.L21
	.code32
	j	.L21
	.code32
	j	.L21
	.code32
	j	.L21
	.code32
	j	.L21
	.code32
	j	.L21
	.code32
	j	.L21
	.code32
	j	.L21
	.code32
	j	.L21
	.code32
	j	.L21
	.code32
	j	.L21
	.code32
	j	.L21
	.code32
	j	.L21
.L21:
	.loc 1 229 0
#APP
	# 229 "bswcdd\SafeTPack\Stp_Basic\AppSw\DemoHtxStp\StpRefApp\src\AppCbk.c" 1
	debug
	# 0 "" 2
	# 229 "bswcdd\SafeTPack\Stp_Basic\AppSw\DemoHtxStp\StpRefApp\src\AppCbk.c" 1
	debug
	# 0 "" 2
#NO_APP
	j	.L21
.LFE20:
	.size	AppCbk_ErrorHandler, .-AppCbk_ErrorHandler
.section .text.AppCbk_PfmErrorHandler,"ax",@progbits
	.align 1
	.global	AppCbk_PfmErrorHandler
	.type	AppCbk_PfmErrorHandler, @function
AppCbk_PfmErrorHandler:
.LFB21:
	.loc 1 245 0
.LVL10:
	.loc 1 248 0
#APP
	# 248 "bswcdd\SafeTPack\Stp_Basic\AppSw\DemoHtxStp\StpRefApp\src\AppCbk.c" 1
	debug
	# 0 "" 2
#NO_APP
	ret
.LFE21:
	.size	AppCbk_PfmErrorHandler, .-AppCbk_PfmErrorHandler
.section .text.AppCbk_PfmMonitorFaultHandler,"ax",@progbits
	.align 1
	.global	AppCbk_PfmMonitorFaultHandler
	.type	AppCbk_PfmMonitorFaultHandler, @function
AppCbk_PfmMonitorFaultHandler:
.LFB22:
	.loc 1 254 0
.LVL11:
	.loc 1 257 0
#APP
	# 257 "bswcdd\SafeTPack\Stp_Basic\AppSw\DemoHtxStp\StpRefApp\src\AppCbk.c" 1
	debug
	# 0 "" 2
#NO_APP
	ret
.LFE22:
	.size	AppCbk_PfmMonitorFaultHandler, .-AppCbk_PfmMonitorFaultHandler
.section .bss.a4.AppCbk_RuntimeTestLog,"aw",@nobits
	.align 2
	.type	AppCbk_RuntimeTestLog, @object
	.size	AppCbk_RuntimeTestLog, 32
AppCbk_RuntimeTestLog:
	.zero	32
.section .bss.a4.AppCbk_StartupTestLog,"aw",@nobits
	.align 2
	.type	AppCbk_StartupTestLog, @object
	.size	AppCbk_StartupTestLog, 32
AppCbk_StartupTestLog:
	.zero	32
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
.section .text,"ax",@progbits
.Letext0:
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 4 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\inc\\AppCbk.h"
	.file 5 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\02_HtxTestHandler\\inc\\HtxTestHnd_ErrorCodes.h"
	.file 6 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\02_HtxTestHandler\\inc\\HtxTestHnd.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x511
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\src\\AppCbk.c"
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
	.byte	0x3
	.byte	0x51
	.uaword	0x1ed
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
	.uaword	0x247
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
	.string	"AppCbk_ErrorIdType"
	.byte	0x4
	.byte	0x48
	.uaword	0x239
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x3
	.string	"HtxTestHnd_TstRsltType"
	.byte	0x5
	.byte	0x97
	.uaword	0x239
	.uleb128 0x4
	.uaword	0x1e0
	.uleb128 0x5
	.string	"_disable"
	.byte	0x2
	.byte	0xa4
	.byte	0x1
	.byte	0x3
	.uleb128 0x5
	.string	"_enable"
	.byte	0x2
	.byte	0xaa
	.byte	0x1
	.byte	0x3
	.uleb128 0x6
	.byte	0x1
	.string	"SMU0_ISR"
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.uaword	.LFB19
	.uaword	.LFE19
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x346
	.uleb128 0x7
	.uaword	0x2ee
	.uaword	.LBB8
	.uaword	.LBE8
	.byte	0x1
	.byte	0x6a
	.uleb128 0x7
	.uaword	0x2fc
	.uaword	.LBB10
	.uaword	.LBE10
	.byte	0x1
	.byte	0x6e
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.string	"AppCbk_ErrorHandler"
	.byte	0x1
	.byte	0x94
	.byte	0x1
	.uaword	.LFB20
	.uaword	.LFE20
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x3c3
	.uleb128 0x8
	.string	"ErrorId"
	.byte	0x1
	.byte	0x94
	.uaword	0x2a5
	.uaword	.LLST0
	.uleb128 0x9
	.string	"i"
	.byte	0x1
	.byte	0x96
	.uaword	0x1e0
	.uaword	.LLST1
	.uleb128 0x7
	.uaword	0x2ee
	.uaword	.LBB12
	.uaword	.LBE12
	.byte	0x1
	.byte	0x98
	.uleb128 0xa
	.uaword	.LVL3
	.uaword	0x4ae
	.uaword	0x3b2
	.uleb128 0xb
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0xc
	.uaword	.LVL7
	.uaword	0x4e3
	.uleb128 0xb
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.string	"AppCbk_PfmErrorHandler"
	.byte	0x1
	.byte	0xf4
	.byte	0x1
	.uaword	.LFB21
	.uaword	.LFE21
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x403
	.uleb128 0xd
	.string	"ErrorType"
	.byte	0x1
	.byte	0xf4
	.uaword	0x239
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.string	"AppCbk_PfmMonitorFaultHandler"
	.byte	0x1
	.byte	0xfd
	.byte	0x1
	.uaword	.LFB22
	.uaword	.LFE22
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x458
	.uleb128 0xd
	.string	"Seid"
	.byte	0x1
	.byte	0xfd
	.uaword	0x239
	.byte	0x1
	.byte	0x54
	.uleb128 0xd
	.string	"FaultType"
	.byte	0x1
	.byte	0xfd
	.uaword	0x239
	.byte	0x1
	.byte	0x55
	.byte	0
	.uleb128 0xe
	.uaword	0x239
	.uaword	0x468
	.uleb128 0xf
	.uaword	0x2bf
	.byte	0x7
	.byte	0
	.uleb128 0x10
	.string	"AppCbk_StartupTestLog"
	.byte	0x1
	.byte	0x59
	.uaword	0x458
	.byte	0x5
	.byte	0x3
	.uaword	AppCbk_StartupTestLog
	.uleb128 0x10
	.string	"AppCbk_RuntimeTestLog"
	.byte	0x1
	.byte	0x5b
	.uaword	0x458
	.byte	0x5
	.byte	0x3
	.uaword	AppCbk_RuntimeTestLog
	.uleb128 0x11
	.byte	0x1
	.string	"HtxTestHnd_GetStartupTestResult"
	.byte	0x6
	.uahalf	0x1c3
	.byte	0x1
	.uaword	0x2cb
	.byte	0x1
	.uaword	0x4e3
	.uleb128 0x12
	.uaword	0x2e9
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"HtxTestHnd_GetRuntimeTestResult"
	.byte	0x6
	.uahalf	0x1eb
	.byte	0x1
	.uaword	0x2cb
	.byte	0x1
	.uleb128 0x12
	.uaword	0x2e9
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL2
	.uaword	.LFE20
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL2
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x34
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
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.extern	HtxTestHnd_GetRuntimeTestResult,STT_FUNC,0
	.extern	HtxTestHnd_GetStartupTestResult,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
