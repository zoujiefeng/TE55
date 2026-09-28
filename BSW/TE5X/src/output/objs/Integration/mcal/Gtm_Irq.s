	.file	"Gtm_Irq.c"
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
.intr.entry GTMTIM2SR4_ISR,0,0xf8
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
.intr.entry GTMTIM3SR6_ISR,0,0xf9
#NO_APP
.section .text.GTMTIM2SR4_ISR,"ax",@progbits
	.align 1
	.global	GTMTIM2SR4_ISR
	.type	GTMTIM2SR4_ISR, @function
GTMTIM2SR4_ISR:
.LFB38:
	.file 1 "Integration\\mcal\\Gtm_Irq.c"
	.loc 1 2101 0
.LBB6:
.LBB7:
	.file 2 ".\\output\\inc/..\\..\\ASW\\CDD_TPPC\\CDD_TPPC.h"
	.loc 2 122 0
	mov	%d4, 0
	call	TPPCDev_vidAscEntry
.LVL0:
.LBE7:
.LBE6:
	.loc 1 2106 0
	mov	%d4, 2
	mov	%d5, 4
	call	Mcu_17_Gtm_TimChannelIsr
.LVL1:
	rslcx
	rfe
.LFE38:
	.size	GTMTIM2SR4_ISR, .-GTMTIM2SR4_ISR
.section .text.GTMTIM3SR6_ISR,"ax",@progbits
	.align 1
	.global	GTMTIM3SR6_ISR
	.type	GTMTIM3SR6_ISR, @function
GTMTIM3SR6_ISR:
.LFB39:
	.loc 1 2267 0
.LBB8:
.LBB9:
	.loc 2 170 0
	mov	%d4, 1
	call	TPPCDev_vidAscEntry
.LVL2:
.LBE9:
.LBE8:
	.loc 1 2272 0
	mov	%d4, 3
	mov	%d5, 6
	call	Mcu_17_Gtm_TimChannelIsr
.LVL3:
	rslcx
	rfe
.LFE39:
	.size	GTMTIM3SR6_ISR, .-GTMTIM3SR6_ISR
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
	.uaword	.LFB38
	.uaword	.LFE38-.LFB38
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB39
	.uaword	.LFE39-.LFB39
	.align 2
.LEFDE2:
.section .text,"ax",@progbits
.Letext0:
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 4 ".\\output\\inc/..\\..\\bswcdd\\TPPC\\0_Devices\\TPPC_DeviceCfg.h"
	.file 5 ".\\output\\inc/..\\..\\bswcdd\\TPPC\\TPPC.h"
	.file 6 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu_17_TimerIp.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x457
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"Integration\\mcal\\Gtm_Irq.c"
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
	.uaword	0x1c5
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
	.byte	0x4
	.byte	0x24
	.uaword	0x302
	.uleb128 0x5
	.string	"eTPPC_DEV_GTM_START_INDEX"
	.sleb128 0
	.uleb128 0x5
	.string	"eTPPC_DEV_GTM_ACM_INDEX"
	.sleb128 0
	.uleb128 0x5
	.string	"eTPPC_DEV_GTM_EPS_INDEX"
	.sleb128 1
	.uleb128 0x5
	.string	"eTPPC_DEV_GTM_END_INDEX"
	.sleb128 2
	.uleb128 0x5
	.string	"eTPPC_DEV_MAX_NUM"
	.sleb128 2
	.byte	0
	.uleb128 0x6
	.string	"CDD_TPPC_vidACMSoftTrapTrigger"
	.byte	0x2
	.byte	0x78
	.byte	0x1
	.byte	0x3
	.uleb128 0x6
	.string	"CDD_TPPC_vidEPSSoftTrapTrigger"
	.byte	0x2
	.byte	0xa8
	.byte	0x1
	.byte	0x3
	.uleb128 0x7
	.byte	0x1
	.string	"GTMTIM2SR4_ISR"
	.byte	0x1
	.uahalf	0x831
	.byte	0x1
	.uaword	.LFB38
	.uaword	.LFE38
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x3a8
	.uleb128 0x8
	.uaword	0x302
	.uaword	.LBB6
	.uaword	.LBE6
	.byte	0x1
	.uahalf	0x838
	.uaword	0x393
	.uleb128 0x9
	.uaword	.LVL0
	.uaword	0x406
	.uleb128 0xa
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x9
	.uaword	.LVL1
	.uaword	0x42f
	.uleb128 0xa
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x34
	.uleb128 0xa
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.string	"GTMTIM3SR6_ISR"
	.byte	0x1
	.uahalf	0x8d7
	.byte	0x1
	.uaword	.LFB39
	.uaword	.LFE39
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x406
	.uleb128 0x8
	.uaword	0x326
	.uaword	.LBB8
	.uaword	.LBE8
	.byte	0x1
	.uahalf	0x8de
	.uaword	0x3f1
	.uleb128 0x9
	.uaword	.LVL2
	.uaword	0x406
	.uleb128 0xa
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x9
	.uaword	.LVL3
	.uaword	0x42f
	.uleb128 0xa
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x36
	.uleb128 0xa
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"TPPCDev_vidAscEntry"
	.byte	0x5
	.byte	0x3e
	.byte	0x1
	.byte	0x1
	.uaword	0x42a
	.uleb128 0xc
	.uaword	0x42a
	.byte	0
	.uleb128 0xd
	.uaword	0x1b8
	.uleb128 0xe
	.byte	0x1
	.string	"Mcu_17_Gtm_TimChannelIsr"
	.byte	0x6
	.uahalf	0x8c6
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.uaword	0x42a
	.uleb128 0xc
	.uaword	0x42a
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
.section .debug_aranges,"",@progbits
	.uaword	0x24
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB38
	.uaword	.LFE38-.LFB38
	.uaword	.LFB39
	.uaword	.LFE39-.LFB39
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB38
	.uaword	.LFE38
	.uaword	.LFB39
	.uaword	.LFE39
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.extern	Mcu_17_Gtm_TimChannelIsr,STT_FUNC,0
	.extern	TPPCDev_vidAscEntry,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
