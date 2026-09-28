	.file	"Adc_Irq.c"
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
.intr.entry ADC0SR0_ISR,0,0xfa
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
.intr.entry ADC1SR0_ISR,0,0xfd
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
.intr.entry ADC2SR0_ISR,0,0xfb
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
.intr.entry ADC3SR0_ISR,0,0xfc
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
.intr.entry ADC8SR0_ISR,0,0xf7
#NO_APP
.section .text.ADC0SR0_ISR,"ax",@progbits
	.align 1
	.global	ADC0SR0_ISR
	.type	ADC0SR0_ISR, @function
ADC0SR0_ISR:
.LFB19:
	.file 1 "Integration\\mcal\\Adc_Irq.c"
	.loc 1 572 0
.LBB24:
.LBB25:
	.file 2 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\machine\\intrinsics.h"
	.loc 2 172 0
#APP
	# 172 "s:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	enable
	# 0 "" 2
#NO_APP
.LBE25:
.LBE24:
	.loc 1 575 0
	call	OsT_vidStopPreTaskElapsed
.LVL0:
	.loc 1 577 0
	mov	%d4, 0
	call	Adc_RS0EventInterruptHandler
.LVL1:
	.loc 1 578 0
	call	OsT_vidStartPreTaskElapsed
.LVL2:
	rslcx
	rfe
.LFE19:
	.size	ADC0SR0_ISR, .-ADC0SR0_ISR
.section .text.ADC1SR0_ISR,"ax",@progbits
	.align 1
	.global	ADC1SR0_ISR
	.type	ADC1SR0_ISR, @function
ADC1SR0_ISR:
.LFB20:
	.loc 1 722 0
.LBB26:
.LBB27:
	.loc 2 172 0
#APP
	# 172 "s:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	enable
	# 0 "" 2
#NO_APP
.LBE27:
.LBE26:
	.loc 1 725 0
	call	OsT_vidStopPreTaskElapsed
.LVL3:
	.loc 1 728 0
	mov	%d4, 1
	call	Adc_RS0EventInterruptHandler
.LVL4:
	.loc 1 729 0
	call	OsT_vidStartPreTaskElapsed
.LVL5:
	rslcx
	rfe
.LFE20:
	.size	ADC1SR0_ISR, .-ADC1SR0_ISR
.section .text.ADC2SR0_ISR,"ax",@progbits
	.align 1
	.global	ADC2SR0_ISR
	.type	ADC2SR0_ISR, @function
ADC2SR0_ISR:
.LFB21:
	.loc 1 874 0
.LBB28:
.LBB29:
	.loc 2 172 0
#APP
	# 172 "s:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	enable
	# 0 "" 2
#NO_APP
.LBE29:
.LBE28:
	.loc 1 877 0
	call	OsT_vidStopPreTaskElapsed
.LVL6:
	.loc 1 880 0
	mov	%d4, 2
	call	Adc_RS0EventInterruptHandler
.LVL7:
	.loc 1 881 0
	call	OsT_vidStartPreTaskElapsed
.LVL8:
	rslcx
	rfe
.LFE21:
	.size	ADC2SR0_ISR, .-ADC2SR0_ISR
.section .text.ADC3SR0_ISR,"ax",@progbits
	.align 1
	.global	ADC3SR0_ISR
	.type	ADC3SR0_ISR, @function
ADC3SR0_ISR:
.LFB22:
	.loc 1 1026 0
.LBB30:
.LBB31:
	.loc 2 172 0
#APP
	# 172 "s:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	enable
	# 0 "" 2
#NO_APP
.LBE31:
.LBE30:
	.loc 1 1029 0
	call	OsT_vidStopPreTaskElapsed
.LVL9:
	.loc 1 1032 0
	mov	%d4, 3
	call	Adc_RS0EventInterruptHandler
.LVL10:
	.loc 1 1033 0
	call	OsT_vidStartPreTaskElapsed
.LVL11:
	rslcx
	rfe
.LFE22:
	.size	ADC3SR0_ISR, .-ADC3SR0_ISR
.section .text.Os_Entry_ADC3SR1_ISR,"ax",@progbits
	.align 1
	.global	Os_Entry_ADC3SR1_ISR
	.type	Os_Entry_ADC3SR1_ISR, @function
Os_Entry_ADC3SR1_ISR:
.LFB23:
	.loc 1 1064 0
.LBB32:
.LBB33:
	.loc 2 172 0
#APP
	# 172 "s:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	enable
	# 0 "" 2
#NO_APP
.LBE33:
.LBE32:
	.loc 1 1069 0
	mov	%d4, 3
	j	Adc_RS1EventInterruptHandler
.LVL12:
.LFE23:
	.size	Os_Entry_ADC3SR1_ISR, .-Os_Entry_ADC3SR1_ISR
.section .text.Os_Entry_ADC4SR0_ISR,"ax",@progbits
	.align 1
	.global	Os_Entry_ADC4SR0_ISR
	.type	Os_Entry_ADC4SR0_ISR, @function
Os_Entry_ADC4SR0_ISR:
.LFB24:
	.loc 1 1178 0
.LBB34:
.LBB35:
	.loc 2 172 0
#APP
	# 172 "s:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	enable
	# 0 "" 2
#NO_APP
.LBE35:
.LBE34:
	.loc 1 1183 0
	mov	%d4, 4
	j	Adc_RS0EventInterruptHandler
.LVL13:
.LFE24:
	.size	Os_Entry_ADC4SR0_ISR, .-Os_Entry_ADC4SR0_ISR
.section .text.ADC8SR0_ISR,"ax",@progbits
	.align 1
	.global	ADC8SR0_ISR
	.type	ADC8SR0_ISR, @function
ADC8SR0_ISR:
.LFB25:
	.loc 1 1775 0
.LBB36:
.LBB37:
	.loc 2 172 0
#APP
	# 172 "s:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	enable
	# 0 "" 2
#NO_APP
.LBE37:
.LBE36:
	.loc 1 1779 0
	call	OsT_vidStopPreTaskElapsed
.LVL14:
	.loc 1 1781 0
	mov	%d4, 8
	call	Adc_RS0EventInterruptHandler
.LVL15:
	.loc 1 1782 0
	call	OsT_vidStartPreTaskElapsed
.LVL16:
	rslcx
	rfe
.LFE25:
	.size	ADC8SR0_ISR, .-ADC8SR0_ISR
.section .text.Os_Entry_ADC8SR1_ISR,"ax",@progbits
	.align 1
	.global	Os_Entry_ADC8SR1_ISR
	.type	Os_Entry_ADC8SR1_ISR, @function
Os_Entry_ADC8SR1_ISR:
.LFB26:
	.loc 1 1812 0
.LBB38:
.LBB39:
	.loc 2 172 0
#APP
	# 172 "s:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	enable
	# 0 "" 2
#NO_APP
.LBE39:
.LBE38:
	.loc 1 1817 0
	mov	%d4, 8
	j	Adc_RS1EventInterruptHandler
.LVL17:
.LFE26:
	.size	Os_Entry_ADC8SR1_ISR, .-Os_Entry_ADC8SR1_ISR
.section .text.Os_Entry_ADC9SR0_ISR,"ax",@progbits
	.align 1
	.global	Os_Entry_ADC9SR0_ISR
	.type	Os_Entry_ADC9SR0_ISR, @function
Os_Entry_ADC9SR0_ISR:
.LFB27:
	.loc 1 1925 0
.LBB40:
.LBB41:
	.loc 2 172 0
#APP
	# 172 "s:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	enable
	# 0 "" 2
#NO_APP
.LBE41:
.LBE40:
	.loc 1 1930 0
	mov	%d4, 9
	j	Adc_RS0EventInterruptHandler
.LVL18:
.LFE27:
	.size	Os_Entry_ADC9SR0_ISR, .-Os_Entry_ADC9SR0_ISR
.section .text.Os_Entry_ADC10SR0_ISR,"ax",@progbits
	.align 1
	.global	Os_Entry_ADC10SR0_ISR
	.type	Os_Entry_ADC10SR0_ISR, @function
Os_Entry_ADC10SR0_ISR:
.LFB28:
	.loc 1 2074 0
.LBB42:
.LBB43:
	.loc 2 172 0
#APP
	# 172 "s:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	enable
	# 0 "" 2
#NO_APP
.LBE43:
.LBE42:
	.loc 1 2079 0
	mov	%d4, 10
	j	Adc_RS0EventInterruptHandler
.LVL19:
.LFE28:
	.size	Os_Entry_ADC10SR0_ISR, .-Os_Entry_ADC10SR0_ISR
.section .text.Os_Entry_ADC11SR0_ISR,"ax",@progbits
	.align 1
	.global	Os_Entry_ADC11SR0_ISR
	.type	Os_Entry_ADC11SR0_ISR, @function
Os_Entry_ADC11SR0_ISR:
.LFB29:
	.loc 1 2222 0
.LBB44:
.LBB45:
	.loc 2 172 0
#APP
	# 172 "s:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	enable
	# 0 "" 2
#NO_APP
.LBE45:
.LBE44:
	.loc 1 2227 0
	mov	%d4, 11
	j	Adc_RS0EventInterruptHandler
.LVL20:
.LFE29:
	.size	Os_Entry_ADC11SR0_ISR, .-Os_Entry_ADC11SR0_ISR
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
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB26
	.uaword	.LFE26-.LFB26
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB27
	.uaword	.LFE27-.LFB27
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB28
	.uaword	.LFE28-.LFB28
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB29
	.uaword	.LFE29-.LFB29
	.align 2
.LEFDE20:
.section .text,"ax",@progbits
.Letext0:
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 4 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Adc\\inc\\Adc.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x6a6
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"Integration\\mcal\\Adc_Irq.c"
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
	.uleb128 0x3
	.string	"uint32"
	.byte	0x3
	.byte	0x6a
	.uaword	0x212
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x4
	.string	"_enable"
	.byte	0x2
	.byte	0xaa
	.byte	0x1
	.byte	0x3
	.uleb128 0x5
	.byte	0x1
	.string	"ADC0SR0_ISR"
	.byte	0x1
	.uahalf	0x238
	.byte	0x1
	.uaword	.LFB19
	.uaword	.LFE19
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x2e1
	.uleb128 0x6
	.uaword	0x27c
	.uaword	.LBB24
	.uaword	.LBE24
	.byte	0x1
	.uahalf	0x23e
	.uleb128 0x7
	.uaword	.LVL0
	.uaword	0x60b
	.uleb128 0x8
	.uaword	.LVL1
	.uaword	0x62b
	.uaword	0x2d7
	.uleb128 0x9
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x7
	.uaword	.LVL2
	.uaword	0x65e
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.string	"ADC1SR0_ISR"
	.byte	0x1
	.uahalf	0x2ce
	.byte	0x1
	.uaword	.LFB20
	.uaword	.LFE20
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x339
	.uleb128 0x6
	.uaword	0x27c
	.uaword	.LBB26
	.uaword	.LBE26
	.byte	0x1
	.uahalf	0x2d4
	.uleb128 0x7
	.uaword	.LVL3
	.uaword	0x60b
	.uleb128 0x8
	.uaword	.LVL4
	.uaword	0x62b
	.uaword	0x32f
	.uleb128 0x9
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x7
	.uaword	.LVL5
	.uaword	0x65e
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.string	"ADC2SR0_ISR"
	.byte	0x1
	.uahalf	0x366
	.byte	0x1
	.uaword	.LFB21
	.uaword	.LFE21
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x391
	.uleb128 0x6
	.uaword	0x27c
	.uaword	.LBB28
	.uaword	.LBE28
	.byte	0x1
	.uahalf	0x36c
	.uleb128 0x7
	.uaword	.LVL6
	.uaword	0x60b
	.uleb128 0x8
	.uaword	.LVL7
	.uaword	0x62b
	.uaword	0x387
	.uleb128 0x9
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x7
	.uaword	.LVL8
	.uaword	0x65e
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.string	"ADC3SR0_ISR"
	.byte	0x1
	.uahalf	0x3fe
	.byte	0x1
	.uaword	.LFB22
	.uaword	.LFE22
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x3e9
	.uleb128 0x6
	.uaword	0x27c
	.uaword	.LBB30
	.uaword	.LBE30
	.byte	0x1
	.uahalf	0x404
	.uleb128 0x7
	.uaword	.LVL9
	.uaword	0x60b
	.uleb128 0x8
	.uaword	.LVL10
	.uaword	0x62b
	.uaword	0x3df
	.uleb128 0x9
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.uleb128 0x7
	.uaword	.LVL11
	.uaword	0x65e
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.string	"Os_Entry_ADC3SR1_ISR"
	.byte	0x1
	.uahalf	0x426
	.byte	0x1
	.uaword	.LFB23
	.uaword	.LFE23
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x435
	.uleb128 0x6
	.uaword	0x27c
	.uaword	.LBB32
	.uaword	.LBE32
	.byte	0x1
	.uahalf	0x42a
	.uleb128 0xa
	.uaword	.LVL12
	.byte	0x1
	.uaword	0x67f
	.uleb128 0x9
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.string	"Os_Entry_ADC4SR0_ISR"
	.byte	0x1
	.uahalf	0x498
	.byte	0x1
	.uaword	.LFB24
	.uaword	.LFE24
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x481
	.uleb128 0x6
	.uaword	0x27c
	.uaword	.LBB34
	.uaword	.LBE34
	.byte	0x1
	.uahalf	0x49c
	.uleb128 0xa
	.uaword	.LVL13
	.byte	0x1
	.uaword	0x62b
	.uleb128 0x9
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.string	"ADC8SR0_ISR"
	.byte	0x1
	.uahalf	0x6eb
	.byte	0x1
	.uaword	.LFB25
	.uaword	.LFE25
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x4d9
	.uleb128 0x6
	.uaword	0x27c
	.uaword	.LBB36
	.uaword	.LBE36
	.byte	0x1
	.uahalf	0x6f1
	.uleb128 0x7
	.uaword	.LVL14
	.uaword	0x60b
	.uleb128 0x8
	.uaword	.LVL15
	.uaword	0x62b
	.uaword	0x4cf
	.uleb128 0x9
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x38
	.byte	0
	.uleb128 0x7
	.uaword	.LVL16
	.uaword	0x65e
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.string	"Os_Entry_ADC8SR1_ISR"
	.byte	0x1
	.uahalf	0x712
	.byte	0x1
	.uaword	.LFB26
	.uaword	.LFE26
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x525
	.uleb128 0x6
	.uaword	0x27c
	.uaword	.LBB38
	.uaword	.LBE38
	.byte	0x1
	.uahalf	0x716
	.uleb128 0xa
	.uaword	.LVL17
	.byte	0x1
	.uaword	0x67f
	.uleb128 0x9
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x38
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.string	"Os_Entry_ADC9SR0_ISR"
	.byte	0x1
	.uahalf	0x783
	.byte	0x1
	.uaword	.LFB27
	.uaword	.LFE27
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x571
	.uleb128 0x6
	.uaword	0x27c
	.uaword	.LBB40
	.uaword	.LBE40
	.byte	0x1
	.uahalf	0x787
	.uleb128 0xa
	.uaword	.LVL18
	.byte	0x1
	.uaword	0x62b
	.uleb128 0x9
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x39
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.string	"Os_Entry_ADC10SR0_ISR"
	.byte	0x1
	.uahalf	0x818
	.byte	0x1
	.uaword	.LFB28
	.uaword	.LFE28
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x5be
	.uleb128 0x6
	.uaword	0x27c
	.uaword	.LBB42
	.uaword	.LBE42
	.byte	0x1
	.uahalf	0x81c
	.uleb128 0xa
	.uaword	.LVL19
	.byte	0x1
	.uaword	0x62b
	.uleb128 0x9
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.string	"Os_Entry_ADC11SR0_ISR"
	.byte	0x1
	.uahalf	0x8ac
	.byte	0x1
	.uaword	.LFB29
	.uaword	.LFE29
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x60b
	.uleb128 0x6
	.uaword	0x27c
	.uaword	.LBB44
	.uaword	.LBE44
	.byte	0x1
	.uahalf	0x8b0
	.uleb128 0xa
	.uaword	.LVL20
	.byte	0x1
	.uaword	0x62b
	.uleb128 0x9
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3b
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"OsT_vidStopPreTaskElapsed"
	.byte	0x1
	.byte	0x4c
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.byte	0x1
	.string	"Adc_RS0EventInterruptHandler"
	.byte	0x4
	.uahalf	0x3f3
	.byte	0x1
	.byte	0x1
	.uaword	0x659
	.uleb128 0xd
	.uaword	0x659
	.byte	0
	.uleb128 0xe
	.uaword	0x204
	.uleb128 0xb
	.byte	0x1
	.string	"OsT_vidStartPreTaskElapsed"
	.byte	0x1
	.byte	0x4d
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.byte	0x1
	.string	"Adc_RS1EventInterruptHandler"
	.byte	0x4
	.uahalf	0x410
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.uaword	0x659
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
.section .debug_aranges,"",@progbits
	.uaword	0x6c
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
	.uaword	.LFB26
	.uaword	.LFE26-.LFB26
	.uaword	.LFB27
	.uaword	.LFE27-.LFB27
	.uaword	.LFB28
	.uaword	.LFE28-.LFB28
	.uaword	.LFB29
	.uaword	.LFE29-.LFB29
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
	.uaword	.LFB23
	.uaword	.LFE23
	.uaword	.LFB24
	.uaword	.LFE24
	.uaword	.LFB25
	.uaword	.LFE25
	.uaword	.LFB26
	.uaword	.LFE26
	.uaword	.LFB27
	.uaword	.LFE27
	.uaword	.LFB28
	.uaword	.LFE28
	.uaword	.LFB29
	.uaword	.LFE29
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.extern	Adc_RS1EventInterruptHandler,STT_FUNC,0
	.extern	OsT_vidStartPreTaskElapsed,STT_FUNC,0
	.extern	Adc_RS0EventInterruptHandler,STT_FUNC,0
	.extern	OsT_vidStopPreTaskElapsed,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
