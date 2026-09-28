	.file	"DRV83xx.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.DRV83xx_bGetFaultStatus,"ax",@progbits
	.align 1
	.type	DRV83xx_bGetFaultStatus, @function
DRV83xx_bGetFaultStatus:
.LFB27:
	.file 1 "bswcdd\\PreDriver\\Drv8340\\DRV83xx.c"
	.loc 1 586 0
	.loc 1 587 0
	movh.a	%a15, hi:Reg_Map_Cache
	ld.bu	%d2, [%a15] lo:Reg_Map_Cache
	.loc 1 588 0
	sh	%d2, -7
	ret
.LFE27:
	.size	DRV83xx_bGetFaultStatus, .-DRV83xx_bGetFaultStatus
.section .text.DRV83xx_bGetGateDriverStatus,"ax",@progbits
	.align 1
	.type	DRV83xx_bGetGateDriverStatus, @function
DRV83xx_bGetGateDriverStatus:
.LFB28:
	.loc 1 591 0
	.loc 1 592 0
	movh.a	%a15, hi:Reg_Map_Cache
	ld.bu	%d2, [%a15] lo:Reg_Map_Cache
	.loc 1 593 0
	extr.u	%d2, %d2, 6, 1
	ret
.LFE28:
	.size	DRV83xx_bGetGateDriverStatus, .-DRV83xx_bGetGateDriverStatus
.section .text.DRV83xx_bGetChargePumpUVStatus,"ax",@progbits
	.align 1
	.type	DRV83xx_bGetChargePumpUVStatus, @function
DRV83xx_bGetChargePumpUVStatus:
.LFB29:
	.loc 1 596 0
	.loc 1 597 0
	movh.a	%a15, hi:Reg_Map_Cache
	ld.bu	%d2, [%a15] lo:Reg_Map_Cache
	.loc 1 598 0
	extr.u	%d2, %d2, 5, 1
	ret
.LFE29:
	.size	DRV83xx_bGetChargePumpUVStatus, .-DRV83xx_bGetChargePumpUVStatus
.section .text.DRV83xx_bGetUVLockoutStatus,"ax",@progbits
	.align 1
	.type	DRV83xx_bGetUVLockoutStatus, @function
DRV83xx_bGetUVLockoutStatus:
.LFB30:
	.loc 1 601 0
	.loc 1 602 0
	movh.a	%a15, hi:Reg_Map_Cache
	ld.bu	%d2, [%a15] lo:Reg_Map_Cache
	.loc 1 603 0
	extr.u	%d2, %d2, 4, 1
	ret
.LFE30:
	.size	DRV83xx_bGetUVLockoutStatus, .-DRV83xx_bGetUVLockoutStatus
.section .text.DRV83xx_bGetOverCurStatus,"ax",@progbits
	.align 1
	.type	DRV83xx_bGetOverCurStatus, @function
DRV83xx_bGetOverCurStatus:
.LFB31:
	.loc 1 606 0
	.loc 1 607 0
	movh.a	%a15, hi:Reg_Map_Cache
	ld.bu	%d2, [%a15] lo:Reg_Map_Cache
	.loc 1 608 0
	extr.u	%d2, %d2, 3, 1
	ret
.LFE31:
	.size	DRV83xx_bGetOverCurStatus, .-DRV83xx_bGetOverCurStatus
.section .text.DRV83xx_bGetOverTempWarningStatus,"ax",@progbits
	.align 1
	.type	DRV83xx_bGetOverTempWarningStatus, @function
DRV83xx_bGetOverTempWarningStatus:
.LFB32:
	.loc 1 611 0
	.loc 1 612 0
	movh.a	%a15, hi:Reg_Map_Cache
	ld.bu	%d2, [%a15] lo:Reg_Map_Cache
	.loc 1 613 0
	extr.u	%d2, %d2, 2, 1
	ret
.LFE32:
	.size	DRV83xx_bGetOverTempWarningStatus, .-DRV83xx_bGetOverTempWarningStatus
.section .text.DRV83xx_bGetOverTempShutdownStatus,"ax",@progbits
	.align 1
	.type	DRV83xx_bGetOverTempShutdownStatus, @function
DRV83xx_bGetOverTempShutdownStatus:
.LFB33:
	.loc 1 616 0
	.loc 1 617 0
	movh.a	%a15, hi:Reg_Map_Cache
	ld.bu	%d2, [%a15] lo:Reg_Map_Cache
	.loc 1 618 0
	extr.u	%d2, %d2, 1, 1
	ret
.LFE33:
	.size	DRV83xx_bGetOverTempShutdownStatus, .-DRV83xx_bGetOverTempShutdownStatus
.section .text.DRV83xx_bGetOpenLoadOrShortStatus,"ax",@progbits
	.align 1
	.type	DRV83xx_bGetOpenLoadOrShortStatus, @function
DRV83xx_bGetOpenLoadOrShortStatus:
.LFB34:
	.loc 1 621 0
	.loc 1 622 0
	movh.a	%a15, hi:Reg_Map_Cache
	ld.bu	%d2, [%a15] lo:Reg_Map_Cache
	.loc 1 623 0
	and	%d2, %d2, 1
	ret
.LFE34:
	.size	DRV83xx_bGetOpenLoadOrShortStatus, .-DRV83xx_bGetOpenLoadOrShortStatus
.section .text.DRV83xx_bGetPhaseAShortGndStatus,"ax",@progbits
	.align 1
	.type	DRV83xx_bGetPhaseAShortGndStatus, @function
DRV83xx_bGetPhaseAShortGndStatus:
.LFB35:
	.loc 1 626 0
	.loc 1 627 0
	movh.a	%a15, hi:Reg_Map_Cache
	lea	%a15, [%a15] lo:Reg_Map_Cache
	ld.bu	%d2, [%a15] 1
	.loc 1 628 0
	extr.u	%d2, %d2, 6, 1
	ret
.LFE35:
	.size	DRV83xx_bGetPhaseAShortGndStatus, .-DRV83xx_bGetPhaseAShortGndStatus
.section .text.DRV83xx_bGetPhaseAShortBatStatus,"ax",@progbits
	.align 1
	.type	DRV83xx_bGetPhaseAShortBatStatus, @function
DRV83xx_bGetPhaseAShortBatStatus:
.LFB36:
	.loc 1 631 0
	.loc 1 632 0
	movh.a	%a15, hi:Reg_Map_Cache
	lea	%a15, [%a15] lo:Reg_Map_Cache
	ld.bu	%d2, [%a15] 1
	.loc 1 633 0
	extr.u	%d2, %d2, 5, 1
	ret
.LFE36:
	.size	DRV83xx_bGetPhaseAShortBatStatus, .-DRV83xx_bGetPhaseAShortBatStatus
.section .text.DRV83xx_bGetPhaseAOpenLoadStatus,"ax",@progbits
	.align 1
	.type	DRV83xx_bGetPhaseAOpenLoadStatus, @function
DRV83xx_bGetPhaseAOpenLoadStatus:
.LFB37:
	.loc 1 636 0
	.loc 1 637 0
	movh.a	%a15, hi:Reg_Map_Cache
	lea	%a15, [%a15] lo:Reg_Map_Cache
	ld.bu	%d2, [%a15] 1
	.loc 1 638 0
	extr.u	%d2, %d2, 4, 1
	ret
.LFE37:
	.size	DRV83xx_bGetPhaseAOpenLoadStatus, .-DRV83xx_bGetPhaseAOpenLoadStatus
.section .text.DRV83xx_bGetPhaseAGateDriverLowSideStatus,"ax",@progbits
	.align 1
	.type	DRV83xx_bGetPhaseAGateDriverLowSideStatus, @function
DRV83xx_bGetPhaseAGateDriverLowSideStatus:
.LFB38:
	.loc 1 641 0
	.loc 1 642 0
	movh.a	%a15, hi:Reg_Map_Cache
	lea	%a15, [%a15] lo:Reg_Map_Cache
	ld.bu	%d2, [%a15] 1
	.loc 1 643 0
	extr.u	%d2, %d2, 3, 1
	ret
.LFE38:
	.size	DRV83xx_bGetPhaseAGateDriverLowSideStatus, .-DRV83xx_bGetPhaseAGateDriverLowSideStatus
.section .text.DRV83xx_bGetPhaseAGateDriverHighSideStatus,"ax",@progbits
	.align 1
	.type	DRV83xx_bGetPhaseAGateDriverHighSideStatus, @function
DRV83xx_bGetPhaseAGateDriverHighSideStatus:
.LFB39:
	.loc 1 646 0
	.loc 1 647 0
	movh.a	%a15, hi:Reg_Map_Cache
	lea	%a15, [%a15] lo:Reg_Map_Cache
	ld.bu	%d2, [%a15] 1
	.loc 1 648 0
	extr.u	%d2, %d2, 2, 1
	ret
.LFE39:
	.size	DRV83xx_bGetPhaseAGateDriverHighSideStatus, .-DRV83xx_bGetPhaseAGateDriverHighSideStatus
.section .text.DRV83xx_bGetPhaseAVdsOverCurLowSideStatus,"ax",@progbits
	.align 1
	.type	DRV83xx_bGetPhaseAVdsOverCurLowSideStatus, @function
DRV83xx_bGetPhaseAVdsOverCurLowSideStatus:
.LFB40:
	.loc 1 651 0
	.loc 1 652 0
	movh.a	%a15, hi:Reg_Map_Cache
	lea	%a15, [%a15] lo:Reg_Map_Cache
	ld.bu	%d2, [%a15] 1
	.loc 1 653 0
	extr.u	%d2, %d2, 1, 1
	ret
.LFE40:
	.size	DRV83xx_bGetPhaseAVdsOverCurLowSideStatus, .-DRV83xx_bGetPhaseAVdsOverCurLowSideStatus
.section .text.DRV83xx_bGetPhaseAVdsOverCurHighSideStatus,"ax",@progbits
	.align 1
	.type	DRV83xx_bGetPhaseAVdsOverCurHighSideStatus, @function
DRV83xx_bGetPhaseAVdsOverCurHighSideStatus:
.LFB41:
	.loc 1 656 0
	.loc 1 657 0
	movh.a	%a15, hi:Reg_Map_Cache
	lea	%a15, [%a15] lo:Reg_Map_Cache
	ld.bu	%d2, [%a15] 1
	.loc 1 658 0
	and	%d2, %d2, 1
	ret
.LFE41:
	.size	DRV83xx_bGetPhaseAVdsOverCurHighSideStatus, .-DRV83xx_bGetPhaseAVdsOverCurHighSideStatus
.section .text.DRV83xx_bGetPhaseBShortGndStatus,"ax",@progbits
	.align 1
	.type	DRV83xx_bGetPhaseBShortGndStatus, @function
DRV83xx_bGetPhaseBShortGndStatus:
.LFB42:
	.loc 1 661 0
	.loc 1 662 0
	movh.a	%a15, hi:Reg_Map_Cache
	lea	%a15, [%a15] lo:Reg_Map_Cache
	ld.bu	%d2, [%a15] 2
	.loc 1 663 0
	extr.u	%d2, %d2, 6, 1
	ret
.LFE42:
	.size	DRV83xx_bGetPhaseBShortGndStatus, .-DRV83xx_bGetPhaseBShortGndStatus
.section .text.DRV83xx_bGetPhaseBShortBatStatus,"ax",@progbits
	.align 1
	.type	DRV83xx_bGetPhaseBShortBatStatus, @function
DRV83xx_bGetPhaseBShortBatStatus:
.LFB43:
	.loc 1 666 0
	.loc 1 667 0
	movh.a	%a15, hi:Reg_Map_Cache
	lea	%a15, [%a15] lo:Reg_Map_Cache
	ld.bu	%d2, [%a15] 2
	.loc 1 668 0
	extr.u	%d2, %d2, 5, 1
	ret
.LFE43:
	.size	DRV83xx_bGetPhaseBShortBatStatus, .-DRV83xx_bGetPhaseBShortBatStatus
.section .text.DRV83xx_bGetPhaseBOpenLoadStatus,"ax",@progbits
	.align 1
	.type	DRV83xx_bGetPhaseBOpenLoadStatus, @function
DRV83xx_bGetPhaseBOpenLoadStatus:
.LFB44:
	.loc 1 671 0
	.loc 1 672 0
	movh.a	%a15, hi:Reg_Map_Cache
	lea	%a15, [%a15] lo:Reg_Map_Cache
	ld.bu	%d2, [%a15] 2
	.loc 1 673 0
	extr.u	%d2, %d2, 4, 1
	ret
.LFE44:
	.size	DRV83xx_bGetPhaseBOpenLoadStatus, .-DRV83xx_bGetPhaseBOpenLoadStatus
.section .text.DRV83xx_bGetPhaseBGateDriverLowSideStatus,"ax",@progbits
	.align 1
	.type	DRV83xx_bGetPhaseBGateDriverLowSideStatus, @function
DRV83xx_bGetPhaseBGateDriverLowSideStatus:
.LFB45:
	.loc 1 676 0
	.loc 1 677 0
	movh.a	%a15, hi:Reg_Map_Cache
	lea	%a15, [%a15] lo:Reg_Map_Cache
	ld.bu	%d2, [%a15] 2
	.loc 1 678 0
	extr.u	%d2, %d2, 3, 1
	ret
.LFE45:
	.size	DRV83xx_bGetPhaseBGateDriverLowSideStatus, .-DRV83xx_bGetPhaseBGateDriverLowSideStatus
.section .text.DRV83xx_bGetPhaseBGateDriverHighSideStatus,"ax",@progbits
	.align 1
	.type	DRV83xx_bGetPhaseBGateDriverHighSideStatus, @function
DRV83xx_bGetPhaseBGateDriverHighSideStatus:
.LFB46:
	.loc 1 681 0
	.loc 1 682 0
	movh.a	%a15, hi:Reg_Map_Cache
	lea	%a15, [%a15] lo:Reg_Map_Cache
	ld.bu	%d2, [%a15] 2
	.loc 1 683 0
	extr.u	%d2, %d2, 2, 1
	ret
.LFE46:
	.size	DRV83xx_bGetPhaseBGateDriverHighSideStatus, .-DRV83xx_bGetPhaseBGateDriverHighSideStatus
.section .text.DRV83xx_bGetPhaseBVdsOverCurLowSideStatus,"ax",@progbits
	.align 1
	.type	DRV83xx_bGetPhaseBVdsOverCurLowSideStatus, @function
DRV83xx_bGetPhaseBVdsOverCurLowSideStatus:
.LFB47:
	.loc 1 686 0
	.loc 1 687 0
	movh.a	%a15, hi:Reg_Map_Cache
	lea	%a15, [%a15] lo:Reg_Map_Cache
	ld.bu	%d2, [%a15] 2
	.loc 1 688 0
	extr.u	%d2, %d2, 1, 1
	ret
.LFE47:
	.size	DRV83xx_bGetPhaseBVdsOverCurLowSideStatus, .-DRV83xx_bGetPhaseBVdsOverCurLowSideStatus
.section .text.DRV83xx_bGetPhaseBVdsOverCurHighSideStatus,"ax",@progbits
	.align 1
	.type	DRV83xx_bGetPhaseBVdsOverCurHighSideStatus, @function
DRV83xx_bGetPhaseBVdsOverCurHighSideStatus:
.LFB48:
	.loc 1 691 0
	.loc 1 692 0
	movh.a	%a15, hi:Reg_Map_Cache
	lea	%a15, [%a15] lo:Reg_Map_Cache
	ld.bu	%d2, [%a15] 2
	.loc 1 693 0
	and	%d2, %d2, 1
	ret
.LFE48:
	.size	DRV83xx_bGetPhaseBVdsOverCurHighSideStatus, .-DRV83xx_bGetPhaseBVdsOverCurHighSideStatus
.section .text.DRV83xx_bGetPhaseCShortGndStatus,"ax",@progbits
	.align 1
	.type	DRV83xx_bGetPhaseCShortGndStatus, @function
DRV83xx_bGetPhaseCShortGndStatus:
.LFB49:
	.loc 1 696 0
	.loc 1 697 0
	movh.a	%a15, hi:Reg_Map_Cache
	lea	%a15, [%a15] lo:Reg_Map_Cache
	ld.bu	%d2, [%a15] 3
	.loc 1 698 0
	extr.u	%d2, %d2, 6, 1
	ret
.LFE49:
	.size	DRV83xx_bGetPhaseCShortGndStatus, .-DRV83xx_bGetPhaseCShortGndStatus
.section .text.DRV83xx_bGetPhaseCShortBatStatus,"ax",@progbits
	.align 1
	.type	DRV83xx_bGetPhaseCShortBatStatus, @function
DRV83xx_bGetPhaseCShortBatStatus:
.LFB50:
	.loc 1 701 0
	.loc 1 702 0
	movh.a	%a15, hi:Reg_Map_Cache
	lea	%a15, [%a15] lo:Reg_Map_Cache
	ld.bu	%d2, [%a15] 3
	.loc 1 703 0
	extr.u	%d2, %d2, 5, 1
	ret
.LFE50:
	.size	DRV83xx_bGetPhaseCShortBatStatus, .-DRV83xx_bGetPhaseCShortBatStatus
.section .text.DRV83xx_bGetPhaseCOpenLoadStatus,"ax",@progbits
	.align 1
	.type	DRV83xx_bGetPhaseCOpenLoadStatus, @function
DRV83xx_bGetPhaseCOpenLoadStatus:
.LFB51:
	.loc 1 706 0
	.loc 1 707 0
	movh.a	%a15, hi:Reg_Map_Cache
	lea	%a15, [%a15] lo:Reg_Map_Cache
	ld.bu	%d2, [%a15] 3
	.loc 1 708 0
	extr.u	%d2, %d2, 4, 1
	ret
.LFE51:
	.size	DRV83xx_bGetPhaseCOpenLoadStatus, .-DRV83xx_bGetPhaseCOpenLoadStatus
.section .text.DRV83xx_bGetPhaseCGateDriverLowSideStatus,"ax",@progbits
	.align 1
	.type	DRV83xx_bGetPhaseCGateDriverLowSideStatus, @function
DRV83xx_bGetPhaseCGateDriverLowSideStatus:
.LFB52:
	.loc 1 711 0
	.loc 1 712 0
	movh.a	%a15, hi:Reg_Map_Cache
	lea	%a15, [%a15] lo:Reg_Map_Cache
	ld.bu	%d2, [%a15] 3
	.loc 1 713 0
	extr.u	%d2, %d2, 3, 1
	ret
.LFE52:
	.size	DRV83xx_bGetPhaseCGateDriverLowSideStatus, .-DRV83xx_bGetPhaseCGateDriverLowSideStatus
.section .text.DRV83xx_bGetPhaseCGateDriverHighSideStatus,"ax",@progbits
	.align 1
	.type	DRV83xx_bGetPhaseCGateDriverHighSideStatus, @function
DRV83xx_bGetPhaseCGateDriverHighSideStatus:
.LFB53:
	.loc 1 716 0
	.loc 1 717 0
	movh.a	%a15, hi:Reg_Map_Cache
	lea	%a15, [%a15] lo:Reg_Map_Cache
	ld.bu	%d2, [%a15] 3
	.loc 1 718 0
	extr.u	%d2, %d2, 2, 1
	ret
.LFE53:
	.size	DRV83xx_bGetPhaseCGateDriverHighSideStatus, .-DRV83xx_bGetPhaseCGateDriverHighSideStatus
.section .text.DRV83xx_bGetPhaseCVdsOverCurLowSideStatus,"ax",@progbits
	.align 1
	.type	DRV83xx_bGetPhaseCVdsOverCurLowSideStatus, @function
DRV83xx_bGetPhaseCVdsOverCurLowSideStatus:
.LFB54:
	.loc 1 721 0
	.loc 1 722 0
	movh.a	%a15, hi:Reg_Map_Cache
	lea	%a15, [%a15] lo:Reg_Map_Cache
	ld.bu	%d2, [%a15] 3
	.loc 1 723 0
	extr.u	%d2, %d2, 1, 1
	ret
.LFE54:
	.size	DRV83xx_bGetPhaseCVdsOverCurLowSideStatus, .-DRV83xx_bGetPhaseCVdsOverCurLowSideStatus
.section .text.DRV83xx_is_CSA_BI_DIR_Mode,"ax",@progbits
	.align 1
	.global	DRV83xx_is_CSA_BI_DIR_Mode
	.type	DRV83xx_is_CSA_BI_DIR_Mode, @function
DRV83xx_is_CSA_BI_DIR_Mode:
.LFB0:
	.loc 1 118 0
.LVL0:
.LBB42:
.LBB43:
	.loc 1 556 0
	movh.a	%a15, hi:Reg_Map_Cache
	lea	%a15, [%a15] lo:Reg_Map_Cache
.LBE43:
.LBE42:
	.loc 1 122 0
	ld.bu	%d2, [%a15] 16
	.loc 1 123 0
	and	%d2, %d2, 64
	ret
.LFE0:
	.size	DRV83xx_is_CSA_BI_DIR_Mode, .-DRV83xx_is_CSA_BI_DIR_Mode
.section .text.DRV83xx_set_Six_PWM_Mode,"ax",@progbits
	.align 1
	.global	DRV83xx_set_Six_PWM_Mode
	.type	DRV83xx_set_Six_PWM_Mode, @function
DRV83xx_set_Six_PWM_Mode:
.LFB1:
	.loc 1 130 0
.LVL1:
.LBB44:
.LBB45:
	.loc 1 556 0
	movh.a	%a15, hi:Reg_Map_Cache
	lea	%a15, [%a15] lo:Reg_Map_Cache
	ld.bu	%d15, [%a15] 4
.LVL2:
.LBE45:
.LBE44:
	.loc 1 134 0
	andn	%d15, %d15, ~(-113)
.LVL3:
.LBB46:
.LBB47:
	.loc 1 567 0
	st.b	[%a15] 4, %d15
.LVL4:
	ret
.LBE47:
.LBE46:
.LFE1:
	.size	DRV83xx_set_Six_PWM_Mode, .-DRV83xx_set_Six_PWM_Mode
.section .text.DRV83xx_set_One_PWM_Mode,"ax",@progbits
	.align 1
	.global	DRV83xx_set_One_PWM_Mode
	.type	DRV83xx_set_One_PWM_Mode, @function
DRV83xx_set_One_PWM_Mode:
.LFB2:
	.loc 1 143 0
.LVL5:
.LBB48:
.LBB49:
	.loc 1 556 0
	movh.a	%a15, hi:Reg_Map_Cache
	lea	%a15, [%a15] lo:Reg_Map_Cache
	ld.bu	%d15, [%a15] 4
.LVL6:
.LBE49:
.LBE48:
	.loc 1 148 0
	and	%d15, %d15, 143
.LVL7:
	.loc 1 149 0
	or	%d15, %d15, 32
.LVL8:
.LBB50:
.LBB51:
	.loc 1 567 0
	st.b	[%a15] 4, %d15
.LVL9:
	ret
.LBE51:
.LBE50:
.LFE2:
	.size	DRV83xx_set_One_PWM_Mode, .-DRV83xx_set_One_PWM_Mode
.section .text.DRV83xx_set_IND_ABC_PWM_Mode,"ax",@progbits
	.align 1
	.global	DRV83xx_set_IND_ABC_PWM_Mode
	.type	DRV83xx_set_IND_ABC_PWM_Mode, @function
DRV83xx_set_IND_ABC_PWM_Mode:
.LFB3:
	.loc 1 158 0
.LVL10:
.LBB52:
.LBB53:
	.loc 1 556 0
	movh.a	%a15, hi:Reg_Map_Cache
	lea	%a15, [%a15] lo:Reg_Map_Cache
	ld.bu	%d15, [%a15] 4
.LVL11:
.LBE53:
.LBE52:
	.loc 1 163 0
	and	%d15, %d15, 143
.LVL12:
	.loc 1 164 0
	or	%d15, %d15, 48
.LVL13:
.LBB54:
.LBB55:
	.loc 1 567 0
	st.b	[%a15] 4, %d15
.LVL14:
	ret
.LBE55:
.LBE54:
.LFE3:
	.size	DRV83xx_set_IND_ABC_PWM_Mode, .-DRV83xx_set_IND_ABC_PWM_Mode
.section .text.DRV83xx_set_IND_AB_FET_C_PWM_Mode,"ax",@progbits
	.align 1
	.global	DRV83xx_set_IND_AB_FET_C_PWM_Mode
	.type	DRV83xx_set_IND_AB_FET_C_PWM_Mode, @function
DRV83xx_set_IND_AB_FET_C_PWM_Mode:
.LFB4:
	.loc 1 173 0
.LVL15:
.LBB56:
.LBB57:
	.loc 1 556 0
	movh.a	%a15, hi:Reg_Map_Cache
	lea	%a15, [%a15] lo:Reg_Map_Cache
	ld.bu	%d15, [%a15] 4
.LVL16:
.LBE57:
.LBE56:
	.loc 1 178 0
	and	%d15, %d15, 143
.LVL17:
	.loc 1 179 0
	or	%d15, %d15, 64
.LVL18:
.LBB58:
.LBB59:
	.loc 1 567 0
	st.b	[%a15] 4, %d15
.LVL19:
	ret
.LBE59:
.LBE58:
.LFE4:
	.size	DRV83xx_set_IND_AB_FET_C_PWM_Mode, .-DRV83xx_set_IND_AB_FET_C_PWM_Mode
.section .text.DRV83xx_set_IND_BC_FET_A_PWM_Mode,"ax",@progbits
	.align 1
	.global	DRV83xx_set_IND_BC_FET_A_PWM_Mode
	.type	DRV83xx_set_IND_BC_FET_A_PWM_Mode, @function
DRV83xx_set_IND_BC_FET_A_PWM_Mode:
.LFB5:
	.loc 1 188 0
.LVL20:
.LBB60:
.LBB61:
	.loc 1 556 0
	movh.a	%a15, hi:Reg_Map_Cache
	lea	%a15, [%a15] lo:Reg_Map_Cache
	ld.bu	%d15, [%a15] 4
.LVL21:
.LBE61:
.LBE60:
	.loc 1 193 0
	and	%d15, %d15, 143
.LVL22:
	.loc 1 194 0
	or	%d15, %d15, 80
.LVL23:
.LBB62:
.LBB63:
	.loc 1 567 0
	st.b	[%a15] 4, %d15
.LVL24:
	ret
.LBE63:
.LBE62:
.LFE5:
	.size	DRV83xx_set_IND_BC_FET_A_PWM_Mode, .-DRV83xx_set_IND_BC_FET_A_PWM_Mode
.section .text.DRV83xx_set_IND_A_FET_BC_PWM_Mode,"ax",@progbits
	.align 1
	.global	DRV83xx_set_IND_A_FET_BC_PWM_Mode
	.type	DRV83xx_set_IND_A_FET_BC_PWM_Mode, @function
DRV83xx_set_IND_A_FET_BC_PWM_Mode:
.LFB6:
	.loc 1 203 0
.LVL25:
.LBB64:
.LBB65:
	.loc 1 556 0
	movh.a	%a15, hi:Reg_Map_Cache
	lea	%a15, [%a15] lo:Reg_Map_Cache
	ld.bu	%d15, [%a15] 4
.LVL26:
.LBE65:
.LBE64:
	.loc 1 208 0
	and	%d15, %d15, 143
.LVL27:
	.loc 1 209 0
	or	%d15, %d15, 96
.LVL28:
.LBB66:
.LBB67:
	.loc 1 567 0
	st.b	[%a15] 4, %d15
.LVL29:
	ret
.LBE67:
.LBE66:
.LFE6:
	.size	DRV83xx_set_IND_A_FET_BC_PWM_Mode, .-DRV83xx_set_IND_A_FET_BC_PWM_Mode
.section .text.DRV83xx_set_FET_ABC_PWM_Mode,"ax",@progbits
	.align 1
	.global	DRV83xx_set_FET_ABC_PWM_Mode
	.type	DRV83xx_set_FET_ABC_PWM_Mode, @function
DRV83xx_set_FET_ABC_PWM_Mode:
.LFB7:
	.loc 1 218 0
.LVL30:
.LBB68:
.LBB69:
	.loc 1 556 0
	movh.a	%a15, hi:Reg_Map_Cache
	lea	%a15, [%a15] lo:Reg_Map_Cache
	ld.bu	%d15, [%a15] 4
.LVL31:
.LBE69:
.LBE68:
	.loc 1 223 0
	and	%d15, %d15, 143
.LVL32:
	.loc 1 224 0
	or	%d15, %d15, 112
.LVL33:
.LBB70:
.LBB71:
	.loc 1 567 0
	st.b	[%a15] 4, %d15
.LVL34:
	ret
.LBE71:
.LBE70:
.LFE7:
	.size	DRV83xx_set_FET_ABC_PWM_Mode, .-DRV83xx_set_FET_ABC_PWM_Mode
.section .text.DRV83xx_vidStartOLPTest,"ax",@progbits
	.align 1
	.global	DRV83xx_vidStartOLPTest
	.type	DRV83xx_vidStartOLPTest, @function
DRV83xx_vidStartOLPTest:
.LFB8:
	.loc 1 233 0
	.loc 1 234 0
	movh.a	%a15, hi:Reg_Map_Cache
	lea	%a15, [%a15] lo:Reg_Map_Cache
	ld.bu	%d15, [%a15] 5
	insert	%d15, %d15, 1, 3, 1
	st.b	[%a15] 5, %d15
	ret
.LFE8:
	.size	DRV83xx_vidStartOLPTest, .-DRV83xx_vidStartOLPTest
.section .text.DRV83xx_vidStartShortTest,"ax",@progbits
	.align 1
	.global	DRV83xx_vidStartShortTest
	.type	DRV83xx_vidStartShortTest, @function
DRV83xx_vidStartShortTest:
.LFB9:
	.loc 1 238 0
	.loc 1 239 0
	movh.a	%a15, hi:Reg_Map_Cache
	lea	%a15, [%a15] lo:Reg_Map_Cache
	ld.bu	%d15, [%a15] 5
	insert	%d15, %d15, 1, 4, 1
	st.b	[%a15] 5, %d15
	ret
.LFE9:
	.size	DRV83xx_vidStartShortTest, .-DRV83xx_vidStartShortTest
.section .text.DRV83xx_vidEnableGateDrv,"ax",@progbits
	.align 1
	.global	DRV83xx_vidEnableGateDrv
	.type	DRV83xx_vidEnableGateDrv, @function
DRV83xx_vidEnableGateDrv:
.LFB10:
	.loc 1 243 0
	.loc 1 244 0
	movh.a	%a15, hi:Reg_Map_Cache
	lea	%a15, [%a15] lo:Reg_Map_Cache
	ld.bu	%d15, [%a15] 12
	andn	%d15, %d15, ~(-129)
	st.b	[%a15] 12, %d15
	ret
.LFE10:
	.size	DRV83xx_vidEnableGateDrv, .-DRV83xx_vidEnableGateDrv
.section .text.DRV83xx_vidDisableGateDrv,"ax",@progbits
	.align 1
	.global	DRV83xx_vidDisableGateDrv
	.type	DRV83xx_vidDisableGateDrv, @function
DRV83xx_vidDisableGateDrv:
.LFB11:
	.loc 1 248 0
	.loc 1 249 0
	movh.a	%a15, hi:Reg_Map_Cache
	lea	%a15, [%a15] lo:Reg_Map_Cache
	ld.bu	%d15, [%a15] 12
	insert	%d15, %d15, 1, 7, 1
	st.b	[%a15] 12, %d15
	ret
.LFE11:
	.size	DRV83xx_vidDisableGateDrv, .-DRV83xx_vidDisableGateDrv
.section .text.DRV83xx_vidControlInit,"ax",@progbits
	.align 1
	.global	DRV83xx_vidControlInit
	.type	DRV83xx_vidControlInit, @function
DRV83xx_vidControlInit:
.LFB12:
	.loc 1 253 0
	.loc 1 255 0
	movh.a	%a2, hi:DRV_Control
	mov	%d15, 87
	lea	%a15, [%a2] lo:DRV_Control
	st.h	[%a2] lo:DRV_Control, %d15
	.loc 1 256 0
	mov	%d15, 200
	st.h	[%a15] 2, %d15
	mov	%d15, 7
	st.h	[%a15] 4, %d15
	ld.hu	%d15, [%a15] 6
	mov	%d2, 4
	st.h	[%a15] 8, %d2
	st.h	[%a15] 6, %d15
	.loc 1 273 0
	call	DRV83xx_u8GetDriverCur
.LVL35:
	.loc 1 275 0
	st.h	[%a15] 4, %d2
	ret
.LFE12:
	.size	DRV83xx_vidControlInit, .-DRV83xx_vidControlInit
.section .text.DRV83xx_vidRegisterInit,"ax",@progbits
	.align 1
	.global	DRV83xx_vidRegisterInit
	.type	DRV83xx_vidRegisterInit, @function
DRV83xx_vidRegisterInit:
.LFB13:
	.loc 1 279 0
.LVL36:
	.loc 1 290 0
	mov	%d15, 0
	.loc 1 283 0
	movh.a	%a2, hi:Reg_Map_Cache
	.loc 1 291 0
	movh.a	%a3, hi:Reg_Map_CfgBuf
	.loc 1 283 0
	lea	%a15, [%a2] lo:Reg_Map_Cache
	.loc 1 290 0
	st.b	[%a2] lo:Reg_Map_Cache, %d15
	.loc 1 291 0
	lea	%a2, [%a3] lo:Reg_Map_CfgBuf
	st.b	[%a3] lo:Reg_Map_CfgBuf, %d15
.LVL37:
	.loc 1 302 0
	st.b	[%a15] 1, %d15
	.loc 1 303 0
	st.b	[%a2] 1, %d15
.LVL38:
	.loc 1 314 0
	st.b	[%a15] 2, %d15
	.loc 1 315 0
	st.b	[%a2] 2, %d15
.LVL39:
	.loc 1 326 0
	st.b	[%a15] 3, %d15
	.loc 1 327 0
	st.b	[%a2] 3, %d15
.LVL40:
	.loc 1 335 0
	st.b	[%a15] 4, %d15
	.loc 1 336 0
	st.b	[%a2] 4, %d15
.LVL41:
	.loc 1 340 0
	ld.bu	%d15, [%a15] 5
	.loc 1 352 0
	movh.a	%a3, hi:DRV_Control
	.loc 1 341 0
	and	%d15, %d15, 127
	insert	%d15, %d15, 2, 5, 2
	.loc 1 352 0
	lea	%a3, [%a3] lo:DRV_Control
	.loc 1 346 0
	andn	%d15, %d15, ~(-160)
	.loc 1 352 0
	ld.bu	%d2, [%a3] 4
	.loc 1 346 0
	st.b	[%a15] 5, %d15
	.loc 1 348 0
	st.b	[%a2] 5, %d15
.LVL42:
	.loc 1 352 0
	ld.bu	%d15, [%a15] 6
	and	%d2, %d2, 15
	insert	%d15, %d15, %d2, 4, 4
	.loc 1 353 0
	insert	%d15, %d15, %d2, 0, 4
	st.b	[%a15] 6, %d15
	.loc 1 354 0
	st.b	[%a2] 6, %d15
.LVL43:
	.loc 1 358 0
	ld.bu	%d15, [%a15] 7
	insert	%d15, %d15, %d2, 4, 4
	.loc 1 359 0
	insert	%d15, %d15, %d2, 0, 4
	st.b	[%a15] 7, %d15
	.loc 1 360 0
	st.b	[%a2] 7, %d15
.LVL44:
	.loc 1 364 0
	ld.bu	%d15, [%a15] 8
	insert	%d15, %d15, %d2, 4, 4
	.loc 1 365 0
	insert	%d15, %d15, %d2, 0, 4
	st.b	[%a15] 8, %d15
	.loc 1 366 0
	st.b	[%a2] 8, %d15
.LVL45:
	.loc 1 370 0
	ld.bu	%d15, [%a15] 9
	insert	%d15, %d15, 8, 4, 4
	.loc 1 371 0
	insert	%d15, %d15, 8, 0, 4
	st.b	[%a15] 9, %d15
	.loc 1 372 0
	st.b	[%a2] 9, %d15
.LVL46:
	.loc 1 376 0
	ld.bu	%d15, [%a15] 10
	insert	%d15, %d15, 8, 4, 4
	.loc 1 377 0
	insert	%d15, %d15, 8, 0, 4
	st.b	[%a15] 10, %d15
	.loc 1 378 0
	st.b	[%a2] 10, %d15
.LVL47:
	.loc 1 382 0
	ld.bu	%d15, [%a15] 11
	insert	%d15, %d15, 8, 4, 4
	.loc 1 383 0
	insert	%d15, %d15, 8, 0, 4
	st.b	[%a15] 11, %d15
	.loc 1 384 0
	st.b	[%a2] 11, %d15
.LVL48:
	.loc 1 388 0
	ld.bu	%d15, [%a15] 12
	.loc 1 392 0
	ld.h	%d2, [%a3] 6
	.loc 1 389 0
	and	%d15, %d15, 127
	insert	%d15, %d15, 1, 5, 2
	.loc 1 390 0
	insert	%d15, %d15, 1, 3, 2
	.loc 1 391 0
	insert	%d15, %d15, 1, 2, 1
	.loc 1 392 0
	insert	%d15, %d15, %d2, 0, 2
	st.b	[%a15] 12, %d15
	.loc 1 393 0
	st.b	[%a2] 12, %d15
.LVL49:
	.loc 1 397 0
	ld.bu	%d15, [%a15] 13
	insert	%d15, %d15, 3, 5, 2
	.loc 1 400 0
	and	%d15, %d15, 231
	insert	%d15, %d15, 1, 0, 3
	st.b	[%a15] 13, %d15
	.loc 1 401 0
	st.b	[%a2] 13, %d15
.LVL50:
	.loc 1 411 0
	mov	%d15, 0
	st.b	[%a15] 14, %d15
	.loc 1 412 0
	st.b	[%a2] 14, %d15
.LVL51:
	.loc 1 416 0
	ld.bu	%d15, [%a15] 15
	.loc 1 418 0
	and	%d15, %d15, 63
	insert	%d15, %d15, 2, 4, 2
	.loc 1 419 0
	insert	%d15, %d15, 2, 2, 2
	.loc 1 420 0
	insert	%d15, %d15, 2, 0, 2
	st.b	[%a15] 15, %d15
	.loc 1 421 0
	st.b	[%a2] 15, %d15
.LVL52:
	.loc 1 425 0
	ld.bu	%d15, [%a15] 16
	.loc 1 426 0
	and	%d15, %d15, 127
	insert	%d15, %d15, 1, 6, 1
	.loc 1 427 0
	insert	%d15, %d15, 3, 4, 2
	.loc 1 428 0
	insert	%d15, %d15, 3, 2, 2
	.loc 1 429 0
	insert	%d15, %d15, 3, 0, 2
	st.b	[%a15] 16, %d15
	.loc 1 430 0
	st.b	[%a2] 16, %d15
.LVL53:
	.loc 1 440 0
	mov	%d15, 0
	st.b	[%a15] 17, %d15
	.loc 1 441 0
	st.b	[%a2] 17, %d15
	ret
.LFE13:
	.size	DRV83xx_vidRegisterInit, .-DRV83xx_vidRegisterInit
.section .text.DRV83xx_vidRestoreCfgRegs,"ax",@progbits
	.align 1
	.global	DRV83xx_vidRestoreCfgRegs
	.type	DRV83xx_vidRestoreCfgRegs, @function
DRV83xx_vidRestoreCfgRegs:
.LFB14:
	.loc 1 445 0
	.loc 1 450 0
	movh.a	%a3, hi:Reg_Map_CfgBuf
	ld.w	%d15, [%a3] lo:Reg_Map_CfgBuf
	lea	%a15, [%a3] lo:Reg_Map_CfgBuf
	movh.a	%a4, hi:Reg_Map_Cache
	st.w	[%a4] lo:Reg_Map_Cache, %d15
	ld.w	%d15, [%a15] 4
	lea	%a2, [%a4] lo:Reg_Map_Cache
	st.w	[%a2] 4, %d15
	ld.w	%d15, [%a15] 8
	st.w	[%a2] 8, %d15
	ld.w	%d15, [%a15] 12
	st.w	[%a2] 12, %d15
.LVL54:
	ld.bu	%d15, [%a15] 16
	st.b	[%a2] 16, %d15
.LVL55:
	ld.bu	%d15, [%a15] 17
	st.b	[%a2] 17, %d15
.LVL56:
	ret
.LFE14:
	.size	DRV83xx_vidRestoreCfgRegs, .-DRV83xx_vidRestoreCfgRegs
.section .text.DRV83xx_bCfgIsNormal,"ax",@progbits
	.align 1
	.global	DRV83xx_bCfgIsNormal
	.type	DRV83xx_bCfgIsNormal, @function
DRV83xx_bCfgIsNormal:
.LFB15:
	.loc 1 455 0
.LVL57:
	.loc 1 461 0
	movh.a	%a2, hi:Reg_Map_CfgBuf
	movh.a	%a15, hi:Reg_Map_Cache
	lea	%a2, [%a2] lo:Reg_Map_CfgBuf
	lea	%a15, [%a15] lo:Reg_Map_Cache
	ld.bu	%d3, [%a2] 4
	ld.bu	%d15, [%a15] 4
	.loc 1 463 0
	mov	%d2, 0
	.loc 1 461 0
	jne	%d3, %d15, .L45
.LVL58:
	ld.bu	%d3, [%a2] 5
	ld.bu	%d15, [%a15] 5
	jne	%d3, %d15, .L45
.LVL59:
	ld.bu	%d3, [%a2] 6
	ld.bu	%d15, [%a15] 6
	jne	%d3, %d15, .L45
.LVL60:
	ld.bu	%d3, [%a2] 7
	ld.bu	%d15, [%a15] 7
	jne	%d3, %d15, .L45
.LVL61:
	ld.bu	%d3, [%a2] 8
	ld.bu	%d15, [%a15] 8
	jne	%d3, %d15, .L45
.LVL62:
	ld.bu	%d3, [%a2] 9
	ld.bu	%d15, [%a15] 9
	jne	%d3, %d15, .L45
.LVL63:
	ld.bu	%d3, [%a2] 10
	ld.bu	%d15, [%a15] 10
	jne	%d3, %d15, .L45
.LVL64:
	ld.bu	%d3, [%a2] 11
	ld.bu	%d15, [%a15] 11
	jne	%d3, %d15, .L45
.LVL65:
	ld.bu	%d3, [%a2] 12
	ld.bu	%d15, [%a15] 12
	jne	%d3, %d15, .L45
.LVL66:
	ld.bu	%d3, [%a2] 13
	ld.bu	%d15, [%a15] 13
	jne	%d3, %d15, .L45
.LVL67:
	ld.bu	%d3, [%a2] 14
	ld.bu	%d15, [%a15] 14
	jne	%d3, %d15, .L45
.LVL68:
	ld.bu	%d3, [%a2] 15
	ld.bu	%d15, [%a15] 15
	jne	%d3, %d15, .L45
.LVL69:
	ld.bu	%d3, [%a2] 16
	ld.bu	%d15, [%a15] 16
	jne	%d3, %d15, .L45
.LVL70:
	ld.bu	%d2, [%a2] 17
	ld.bu	%d15, [%a15] 17
	.loc 1 463 0
	eq	%d2, %d2, %d15
.LVL71:
.L45:
	.loc 1 469 0
	ret
.LFE15:
	.size	DRV83xx_bCfgIsNormal, .-DRV83xx_bCfgIsNormal
.section .text.DRV83xx_vidWriteRegs,"ax",@progbits
	.align 1
	.global	DRV83xx_vidWriteRegs
	.type	DRV83xx_vidWriteRegs, @function
DRV83xx_vidWriteRegs:
.LFB16:
	.loc 1 476 0
.LVL72:
	movh.a	%a4, hi:DRV83xxHAL_xRegMapTxBuf
	movh.a	%a5, hi:Reg_Map_Cache
	.loc 1 476 0
	mov	%d15, 0
	lea	%a4, [%a4] lo:DRV83xxHAL_xRegMapTxBuf
	lea	%a5, [%a5] lo:Reg_Map_Cache
	lea	%a15, 17
.LVL73:
.L61:
	.loc 1 482 0 discriminator 3
	addsc.a	%a3, %a5, %d15, 0
	addsc.a	%a2, %a4, %d15, 2
	ld.bu	%d3, [%a3]0
.LBB72:
.LBB73:
	.loc 1 572 0 discriminator 3
	sh	%d2, %d15, 8
	or	%d2, %d3
.LBE73:
.LBE72:
	.loc 1 482 0 discriminator 3
	st.w	[%a2]0, %d2
.LVL74:
	add	%d15, 1
.LVL75:
	.loc 1 480 0 discriminator 3
	loop	%a15, .L61
.LBB74:
.LBB75:
	.loc 1 582 0
	mov	%d4, 18
	j	DRV83xxHAL_vidSpiWrite
.LVL76:
.LBE75:
.LBE74:
.LFE16:
	.size	DRV83xx_vidWriteRegs, .-DRV83xx_vidWriteRegs
.section .text.DRV83xx_vidReadRegs,"ax",@progbits
	.align 1
	.global	DRV83xx_vidReadRegs
	.type	DRV83xx_vidReadRegs, @function
DRV83xx_vidReadRegs:
.LFB17:
	.loc 1 493 0
.LVL77:
	movh.a	%a3, hi:DRV83xxHAL_xRegMapTxBuf
	.loc 1 493 0
	mov	%d15, 0
	lea	%a3, [%a3] lo:DRV83xxHAL_xRegMapTxBuf
	lea	%a15, 17
.LVL78:
.L64:
.LBB76:
.LBB77:
	.loc 1 577 0 discriminator 3
	sh	%d2, %d15, 8
.LBE77:
.LBE76:
	.loc 1 499 0 discriminator 3
	addsc.a	%a2, %a3, %d15, 2
.LBB79:
.LBB78:
	.loc 1 577 0 discriminator 3
	insert	%d2, %d2, 15, 15, 1
	add	%d15, 1
.LVL79:
.LBE78:
.LBE79:
	.loc 1 499 0 discriminator 3
	st.w	[%a2]0, %d2
.LVL80:
	.loc 1 497 0 discriminator 3
	loop	%a15, .L64
.LBB80:
.LBB81:
	.loc 1 582 0
	mov	%d4, 18
	j	DRV83xxHAL_vidSpiWrite
.LVL81:
.LBE81:
.LBE80:
.LFE17:
	.size	DRV83xx_vidReadRegs, .-DRV83xx_vidReadRegs
.section .text.DRV83xx_vidCacheRestoreFromReg,"ax",@progbits
	.align 1
	.global	DRV83xx_vidCacheRestoreFromReg
	.type	DRV83xx_vidCacheRestoreFromReg, @function
DRV83xx_vidCacheRestoreFromReg:
.LFB18:
	.loc 1 510 0
.LVL82:
	movh.a	%a5, hi:Reg_Map_Cache
	lea	%a5, [%a5] lo:Reg_Map_Cache
	movh.a	%a4, hi:DRV83xxHAL_xRegMapRxBuf
	.loc 1 510 0
	mov	%d15, 0
	lea	%a4, [%a4] lo:DRV83xxHAL_xRegMapRxBuf
	.loc 1 516 0
	mov.aa	%a6, %a5
	lea	%a15, 17
.LVL83:
.L67:
	.loc 1 516 0 is_stmt 0 discriminator 3
	addsc.a	%a2, %a4, %d15, 2
	addsc.a	%a3, %a5, %d15, 0
	ld.w	%d2, [%a2]0
	add	%d15, 1
.LVL84:
	st.b	[%a3]0, %d2
.LVL85:
	.loc 1 514 0 is_stmt 1 discriminator 3
	loop	%a15, .L67
.LBB82:
.LBB83:
	.loc 1 544 0
	ld.bu	%d15, [%a6] 4
	andn	%d15, %d15, ~(-129)
	st.b	[%a6] 4, %d15
	.loc 1 545 0
	ld.bu	%d15, [%a6] 5
	andn	%d15, %d15, ~(-9)
	st.b	[%a6] 5, %d15
	ret
.LBE83:
.LBE82:
.LFE18:
	.size	DRV83xx_vidCacheRestoreFromReg, .-DRV83xx_vidCacheRestoreFromReg
.section .text.DRV83xx_vidClearFaultStatus,"ax",@progbits
	.align 1
	.global	DRV83xx_vidClearFaultStatus
	.type	DRV83xx_vidClearFaultStatus, @function
DRV83xx_vidClearFaultStatus:
.LFB19:
	.loc 1 527 0
	.loc 1 528 0
	movh.a	%a15, hi:Reg_Map_Cache
	lea	%a15, [%a15] lo:Reg_Map_Cache
	ld.bu	%d15, [%a15] 4
	insert	%d15, %d15, 1, 7, 1
	st.b	[%a15] 4, %d15
	ret
.LFE19:
	.size	DRV83xx_vidClearFaultStatus, .-DRV83xx_vidClearFaultStatus
.section .text.DVR83xx_vidGetFaultRegsVal,"ax",@progbits
	.align 1
	.global	DVR83xx_vidGetFaultRegsVal
	.type	DVR83xx_vidGetFaultRegsVal, @function
DVR83xx_vidGetFaultRegsVal:
.LFB20:
	.loc 1 532 0
.LVL86:
	.loc 1 533 0
	movh.a	%a2, hi:Reg_Map_Cache
	ld.bu	%d15, [%a2] lo:Reg_Map_Cache
	lea	%a15, [%a2] lo:Reg_Map_Cache
	st.b	[%a4]0, %d15
	.loc 1 534 0
	ld.bu	%d15, [%a15] 1
	st.b	[%a4] 1, %d15
	.loc 1 535 0
	ld.bu	%d15, [%a15] 2
	st.b	[%a4] 2, %d15
	.loc 1 536 0
	ld.bu	%d15, [%a15] 3
	st.b	[%a4] 3, %d15
	ret
.LFE20:
	.size	DVR83xx_vidGetFaultRegsVal, .-DVR83xx_vidGetFaultRegsVal
	.global	DRV83xx_FaultFuncSet
.section .rodata.a4.DRV83xx_FaultFuncSet,"a",@progbits
	.align 2
	.type	DRV83xx_FaultFuncSet, @object
	.size	DRV83xx_FaultFuncSet, 112
DRV83xx_FaultFuncSet:
	.word	DRV83xx_bGetFaultStatus
	.word	DRV83xx_bGetGateDriverStatus
	.word	DRV83xx_bGetChargePumpUVStatus
	.word	DRV83xx_bGetUVLockoutStatus
	.word	DRV83xx_bGetOverCurStatus
	.word	DRV83xx_bGetOverTempWarningStatus
	.word	DRV83xx_bGetOverTempShutdownStatus
	.word	DRV83xx_bGetOpenLoadOrShortStatus
	.word	DRV83xx_bGetPhaseAShortGndStatus
	.word	DRV83xx_bGetPhaseAShortBatStatus
	.word	DRV83xx_bGetPhaseAOpenLoadStatus
	.word	DRV83xx_bGetPhaseAGateDriverLowSideStatus
	.word	DRV83xx_bGetPhaseAGateDriverHighSideStatus
	.word	DRV83xx_bGetPhaseAVdsOverCurLowSideStatus
	.word	DRV83xx_bGetPhaseAVdsOverCurHighSideStatus
	.word	DRV83xx_bGetPhaseBShortGndStatus
	.word	DRV83xx_bGetPhaseBShortBatStatus
	.word	DRV83xx_bGetPhaseBOpenLoadStatus
	.word	DRV83xx_bGetPhaseBGateDriverLowSideStatus
	.word	DRV83xx_bGetPhaseBGateDriverHighSideStatus
	.word	DRV83xx_bGetPhaseBVdsOverCurLowSideStatus
	.word	DRV83xx_bGetPhaseBVdsOverCurHighSideStatus
	.word	DRV83xx_bGetPhaseCShortGndStatus
	.word	DRV83xx_bGetPhaseCShortBatStatus
	.word	DRV83xx_bGetPhaseCOpenLoadStatus
	.word	DRV83xx_bGetPhaseCGateDriverLowSideStatus
	.word	DRV83xx_bGetPhaseCGateDriverHighSideStatus
	.word	DRV83xx_bGetPhaseCVdsOverCurLowSideStatus
	.global	DRV8343S_Tdrive_RegData
.section .rodata.a2.DRV8343S_Tdrive_RegData,"a",@progbits
	.align 1
	.type	DRV8343S_Tdrive_RegData, @object
	.size	DRV8343S_Tdrive_RegData, 8
DRV8343S_Tdrive_RegData:
	.short	500
	.short	1000
	.short	2000
	.short	4000
	.global	DRV8343S_Idrive_RegData
.section .rodata.a2.DRV8343S_Idrive_RegData,"a",@progbits
	.align 1
	.type	DRV8343S_Idrive_RegData, @object
	.size	DRV8343S_Idrive_RegData, 32
DRV8343S_Idrive_RegData:
	.short	1
	.short	3
	.short	5
	.short	10
	.short	15
	.short	50
	.short	60
	.short	65
	.short	200
	.short	210
	.short	260
	.short	265
	.short	735
	.short	800
	.short	935
	.short	1000
	.global	Register_Counter
.section .bss.a2.Register_Counter,"aw",@nobits
	.align 1
	.type	Register_Counter, @object
	.size	Register_Counter, 2
Register_Counter:
	.zero	2
	.global	DRV_Control
.section .bss.a2.DRV_Control,"aw",@nobits
	.align 1
	.type	DRV_Control, @object
	.size	DRV_Control, 10
DRV_Control:
	.zero	10
	.global	Reg_Map_CfgBuf
.section .bss.a4.Reg_Map_CfgBuf,"aw",@nobits
	.align 2
	.type	Reg_Map_CfgBuf, @object
	.size	Reg_Map_CfgBuf, 18
Reg_Map_CfgBuf:
	.zero	18
	.global	Reg_Map_Cache
.section .bss.a4.Reg_Map_Cache,"aw",@nobits
	.align 2
	.type	Reg_Map_Cache, @object
	.size	Reg_Map_Cache, 18
Reg_Map_Cache:
	.zero	18
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
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB32
	.uaword	.LFE32-.LFB32
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB33
	.uaword	.LFE33-.LFB33
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB34
	.uaword	.LFE34-.LFB34
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB35
	.uaword	.LFE35-.LFB35
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB36
	.uaword	.LFE36-.LFB36
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB37
	.uaword	.LFE37-.LFB37
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB38
	.uaword	.LFE38-.LFB38
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB39
	.uaword	.LFE39-.LFB39
	.align 2
.LEFDE24:
.LSFDE26:
	.uaword	.LEFDE26-.LASFDE26
.LASFDE26:
	.uaword	.Lframe0
	.uaword	.LFB40
	.uaword	.LFE40-.LFB40
	.align 2
.LEFDE26:
.LSFDE28:
	.uaword	.LEFDE28-.LASFDE28
.LASFDE28:
	.uaword	.Lframe0
	.uaword	.LFB41
	.uaword	.LFE41-.LFB41
	.align 2
.LEFDE28:
.LSFDE30:
	.uaword	.LEFDE30-.LASFDE30
.LASFDE30:
	.uaword	.Lframe0
	.uaword	.LFB42
	.uaword	.LFE42-.LFB42
	.align 2
.LEFDE30:
.LSFDE32:
	.uaword	.LEFDE32-.LASFDE32
.LASFDE32:
	.uaword	.Lframe0
	.uaword	.LFB43
	.uaword	.LFE43-.LFB43
	.align 2
.LEFDE32:
.LSFDE34:
	.uaword	.LEFDE34-.LASFDE34
.LASFDE34:
	.uaword	.Lframe0
	.uaword	.LFB44
	.uaword	.LFE44-.LFB44
	.align 2
.LEFDE34:
.LSFDE36:
	.uaword	.LEFDE36-.LASFDE36
.LASFDE36:
	.uaword	.Lframe0
	.uaword	.LFB45
	.uaword	.LFE45-.LFB45
	.align 2
.LEFDE36:
.LSFDE38:
	.uaword	.LEFDE38-.LASFDE38
.LASFDE38:
	.uaword	.Lframe0
	.uaword	.LFB46
	.uaword	.LFE46-.LFB46
	.align 2
.LEFDE38:
.LSFDE40:
	.uaword	.LEFDE40-.LASFDE40
.LASFDE40:
	.uaword	.Lframe0
	.uaword	.LFB47
	.uaword	.LFE47-.LFB47
	.align 2
.LEFDE40:
.LSFDE42:
	.uaword	.LEFDE42-.LASFDE42
.LASFDE42:
	.uaword	.Lframe0
	.uaword	.LFB48
	.uaword	.LFE48-.LFB48
	.align 2
.LEFDE42:
.LSFDE44:
	.uaword	.LEFDE44-.LASFDE44
.LASFDE44:
	.uaword	.Lframe0
	.uaword	.LFB49
	.uaword	.LFE49-.LFB49
	.align 2
.LEFDE44:
.LSFDE46:
	.uaword	.LEFDE46-.LASFDE46
.LASFDE46:
	.uaword	.Lframe0
	.uaword	.LFB50
	.uaword	.LFE50-.LFB50
	.align 2
.LEFDE46:
.LSFDE48:
	.uaword	.LEFDE48-.LASFDE48
.LASFDE48:
	.uaword	.Lframe0
	.uaword	.LFB51
	.uaword	.LFE51-.LFB51
	.align 2
.LEFDE48:
.LSFDE50:
	.uaword	.LEFDE50-.LASFDE50
.LASFDE50:
	.uaword	.Lframe0
	.uaword	.LFB52
	.uaword	.LFE52-.LFB52
	.align 2
.LEFDE50:
.LSFDE52:
	.uaword	.LEFDE52-.LASFDE52
.LASFDE52:
	.uaword	.Lframe0
	.uaword	.LFB53
	.uaword	.LFE53-.LFB53
	.align 2
.LEFDE52:
.LSFDE54:
	.uaword	.LEFDE54-.LASFDE54
.LASFDE54:
	.uaword	.Lframe0
	.uaword	.LFB54
	.uaword	.LFE54-.LFB54
	.align 2
.LEFDE54:
.LSFDE56:
	.uaword	.LEFDE56-.LASFDE56
.LASFDE56:
	.uaword	.Lframe0
	.uaword	.LFB0
	.uaword	.LFE0-.LFB0
	.align 2
.LEFDE56:
.LSFDE58:
	.uaword	.LEFDE58-.LASFDE58
.LASFDE58:
	.uaword	.Lframe0
	.uaword	.LFB1
	.uaword	.LFE1-.LFB1
	.align 2
.LEFDE58:
.LSFDE60:
	.uaword	.LEFDE60-.LASFDE60
.LASFDE60:
	.uaword	.Lframe0
	.uaword	.LFB2
	.uaword	.LFE2-.LFB2
	.align 2
.LEFDE60:
.LSFDE62:
	.uaword	.LEFDE62-.LASFDE62
.LASFDE62:
	.uaword	.Lframe0
	.uaword	.LFB3
	.uaword	.LFE3-.LFB3
	.align 2
.LEFDE62:
.LSFDE64:
	.uaword	.LEFDE64-.LASFDE64
.LASFDE64:
	.uaword	.Lframe0
	.uaword	.LFB4
	.uaword	.LFE4-.LFB4
	.align 2
.LEFDE64:
.LSFDE66:
	.uaword	.LEFDE66-.LASFDE66
.LASFDE66:
	.uaword	.Lframe0
	.uaword	.LFB5
	.uaword	.LFE5-.LFB5
	.align 2
.LEFDE66:
.LSFDE68:
	.uaword	.LEFDE68-.LASFDE68
.LASFDE68:
	.uaword	.Lframe0
	.uaword	.LFB6
	.uaword	.LFE6-.LFB6
	.align 2
.LEFDE68:
.LSFDE70:
	.uaword	.LEFDE70-.LASFDE70
.LASFDE70:
	.uaword	.Lframe0
	.uaword	.LFB7
	.uaword	.LFE7-.LFB7
	.align 2
.LEFDE70:
.LSFDE72:
	.uaword	.LEFDE72-.LASFDE72
.LASFDE72:
	.uaword	.Lframe0
	.uaword	.LFB8
	.uaword	.LFE8-.LFB8
	.align 2
.LEFDE72:
.LSFDE74:
	.uaword	.LEFDE74-.LASFDE74
.LASFDE74:
	.uaword	.Lframe0
	.uaword	.LFB9
	.uaword	.LFE9-.LFB9
	.align 2
.LEFDE74:
.LSFDE76:
	.uaword	.LEFDE76-.LASFDE76
.LASFDE76:
	.uaword	.Lframe0
	.uaword	.LFB10
	.uaword	.LFE10-.LFB10
	.align 2
.LEFDE76:
.LSFDE78:
	.uaword	.LEFDE78-.LASFDE78
.LASFDE78:
	.uaword	.Lframe0
	.uaword	.LFB11
	.uaword	.LFE11-.LFB11
	.align 2
.LEFDE78:
.LSFDE80:
	.uaword	.LEFDE80-.LASFDE80
.LASFDE80:
	.uaword	.Lframe0
	.uaword	.LFB12
	.uaword	.LFE12-.LFB12
	.align 2
.LEFDE80:
.LSFDE82:
	.uaword	.LEFDE82-.LASFDE82
.LASFDE82:
	.uaword	.Lframe0
	.uaword	.LFB13
	.uaword	.LFE13-.LFB13
	.align 2
.LEFDE82:
.LSFDE84:
	.uaword	.LEFDE84-.LASFDE84
.LASFDE84:
	.uaword	.Lframe0
	.uaword	.LFB14
	.uaword	.LFE14-.LFB14
	.align 2
.LEFDE84:
.LSFDE86:
	.uaword	.LEFDE86-.LASFDE86
.LASFDE86:
	.uaword	.Lframe0
	.uaword	.LFB15
	.uaword	.LFE15-.LFB15
	.align 2
.LEFDE86:
.LSFDE88:
	.uaword	.LEFDE88-.LASFDE88
.LASFDE88:
	.uaword	.Lframe0
	.uaword	.LFB16
	.uaword	.LFE16-.LFB16
	.align 2
.LEFDE88:
.LSFDE90:
	.uaword	.LEFDE90-.LASFDE90
.LASFDE90:
	.uaword	.Lframe0
	.uaword	.LFB17
	.uaword	.LFE17-.LFB17
	.align 2
.LEFDE90:
.LSFDE92:
	.uaword	.LEFDE92-.LASFDE92
.LASFDE92:
	.uaword	.Lframe0
	.uaword	.LFB18
	.uaword	.LFE18-.LFB18
	.align 2
.LEFDE92:
.LSFDE94:
	.uaword	.LEFDE94-.LASFDE94
.LASFDE94:
	.uaword	.Lframe0
	.uaword	.LFB19
	.uaword	.LFE19-.LFB19
	.align 2
.LEFDE94:
.LSFDE96:
	.uaword	.LEFDE96-.LASFDE96
.LASFDE96:
	.uaword	.Lframe0
	.uaword	.LFB20
	.uaword	.LFE20-.LFB20
	.align 2
.LEFDE96:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 "bswcdd\\PreDriver\\Drv8340\\DRV83xx.h"
	.file 4 "bswcdd\\PreDriver\\Drv8340\\DRV83xx_HAL.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x29a2
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\PreDriver\\Drv8340\\DRV83xx.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x18
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
	.uaword	0x1cd
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
	.uaword	0x1f9
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
	.uaword	0x235
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
	.uaword	0x1cd
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
	.byte	0x3
	.byte	0x1f
	.uaword	0x452
	.uleb128 0x5
	.string	"eSPI_REG_FAULT_STAT"
	.sleb128 0
	.uleb128 0x5
	.string	"eSPI_REG_DIAG_STAT_A"
	.sleb128 1
	.uleb128 0x5
	.string	"eSPI_REG_DIAG_STAT_B"
	.sleb128 2
	.uleb128 0x5
	.string	"eSPI_REG_DIAG_STAT_C"
	.sleb128 3
	.uleb128 0x5
	.string	"eSPI_REG_DRV_CTRL_1"
	.sleb128 4
	.uleb128 0x5
	.string	"eSPI_REG_DRV_CTRL_2"
	.sleb128 5
	.uleb128 0x5
	.string	"eSPI_REG_DRV_CTRL_3"
	.sleb128 6
	.uleb128 0x5
	.string	"eSPI_REG_DRV_CTRL_4"
	.sleb128 7
	.uleb128 0x5
	.string	"eSPI_REG_DRV_CTRL_5"
	.sleb128 8
	.uleb128 0x5
	.string	"eSPI_REG_DRV_CTRL_6"
	.sleb128 9
	.uleb128 0x5
	.string	"eSPI_REG_DRV_CTRL_7"
	.sleb128 10
	.uleb128 0x5
	.string	"eSPI_REG_DRV_CTRL_8"
	.sleb128 11
	.uleb128 0x5
	.string	"eSPI_REG_DRV_CTRL_9"
	.sleb128 12
	.uleb128 0x5
	.string	"eSPI_REG_DRV_CTRL_10"
	.sleb128 13
	.uleb128 0x5
	.string	"eSPI_REG_DRV_CTRL_11"
	.sleb128 14
	.uleb128 0x5
	.string	"eSPI_REG_DRV_CTRL_12"
	.sleb128 15
	.uleb128 0x5
	.string	"eSPI_REG_DRV_CTRL_13"
	.sleb128 16
	.uleb128 0x5
	.string	"eSPI_REG_DRV_CTRL_14"
	.sleb128 17
	.uleb128 0x5
	.string	"eSPI_MAX_REG_NUM"
	.sleb128 18
	.byte	0
	.uleb128 0x6
	.string	"FaultIndicateFuncPtr"
	.byte	0x3
	.uahalf	0x151
	.uaword	0x46f
	.uleb128 0x7
	.byte	0x4
	.uaword	0x475
	.uleb128 0x8
	.byte	0x1
	.uaword	0x272
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x70
	.byte	0x3
	.uahalf	0x153
	.uaword	0x8cd
	.uleb128 0xa
	.string	"bGetAllFaultStatus"
	.byte	0x3
	.uahalf	0x154
	.uaword	0x452
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"bGetGateDriverStatus"
	.byte	0x3
	.uahalf	0x155
	.uaword	0x452
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.string	"bGetChargePumpUVStatus"
	.byte	0x3
	.uahalf	0x156
	.uaword	0x452
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.string	"bGetUVLockoutStatus"
	.byte	0x3
	.uahalf	0x157
	.uaword	0x452
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.string	"bGetOverCurStatus"
	.byte	0x3
	.uahalf	0x158
	.uaword	0x452
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.string	"bGetOverTempWarningStatus"
	.byte	0x3
	.uahalf	0x159
	.uaword	0x452
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.string	"bGetOverTempShutdownStatus"
	.byte	0x3
	.uahalf	0x15a
	.uaword	0x452
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.string	"bGetOpenLoadOrShortStatus"
	.byte	0x3
	.uahalf	0x15b
	.uaword	0x452
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.string	"bGetPhaseAShortGndStatus"
	.byte	0x3
	.uahalf	0x15c
	.uaword	0x452
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.string	"bGetPhaseAShortBatStatus"
	.byte	0x3
	.uahalf	0x15d
	.uaword	0x452
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.string	"bGetPhaseAOpenLoadStatus"
	.byte	0x3
	.uahalf	0x15e
	.uaword	0x452
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.string	"bGetPhaseAGateDriverLowSideStatus"
	.byte	0x3
	.uahalf	0x15f
	.uaword	0x452
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xa
	.string	"bGetPhaseAGateDriverHighSideStatus"
	.byte	0x3
	.uahalf	0x160
	.uaword	0x452
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xa
	.string	"bGetPhaseAVdsOverCurLowSideStatus"
	.byte	0x3
	.uahalf	0x161
	.uaword	0x452
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xa
	.string	"bGetPhaseAVdsOverCurHighSideStatus"
	.byte	0x3
	.uahalf	0x162
	.uaword	0x452
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xa
	.string	"bGetPhaseBShortGndStatus"
	.byte	0x3
	.uahalf	0x163
	.uaword	0x452
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xa
	.string	"bGetPhaseBShortBatStatus"
	.byte	0x3
	.uahalf	0x164
	.uaword	0x452
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xa
	.string	"bGetPhaseBOpenLoadStatus"
	.byte	0x3
	.uahalf	0x165
	.uaword	0x452
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xa
	.string	"bGetPhaseBGateDriverLowSideStatus"
	.byte	0x3
	.uahalf	0x166
	.uaword	0x452
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xa
	.string	"bGetPhaseBGateDriverHighSideStatus"
	.byte	0x3
	.uahalf	0x167
	.uaword	0x452
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xa
	.string	"bGetPhaseBVdsOverCurLowSideStatus"
	.byte	0x3
	.uahalf	0x168
	.uaword	0x452
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xa
	.string	"bGetPhaseBVdsOverCurHighSideStatus"
	.byte	0x3
	.uahalf	0x169
	.uaword	0x452
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xa
	.string	"bGetPhaseCShortGndStatus"
	.byte	0x3
	.uahalf	0x16a
	.uaword	0x452
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xa
	.string	"bGetPhaseCShortBatStatus"
	.byte	0x3
	.uahalf	0x16b
	.uaword	0x452
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xa
	.string	"bGetPhaseCOpenLoadStatus"
	.byte	0x3
	.uahalf	0x16c
	.uaword	0x452
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xa
	.string	"bGetPhaseCGateDriverLowSideStatus"
	.byte	0x3
	.uahalf	0x16d
	.uaword	0x452
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xa
	.string	"bGetPhaseCGateDriverHighSideStatus"
	.byte	0x3
	.uahalf	0x16e
	.uaword	0x452
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xa
	.string	"bGetPhaseCVdsOverCurLowSideStatus"
	.byte	0x3
	.uahalf	0x16f
	.uaword	0x452
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0x3
	.uahalf	0x170
	.uaword	0x47b
	.uleb128 0xc
	.byte	0x1
	.byte	0x3
	.uahalf	0x175
	.uaword	0x99b
	.uleb128 0xd
	.string	"FSO_OL_SHT"
	.byte	0x3
	.uahalf	0x176
	.uaword	0x1c0
	.byte	0x1
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"FSO_OTSD"
	.byte	0x3
	.uahalf	0x177
	.uaword	0x1c0
	.byte	0x1
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"FSO_OTW"
	.byte	0x3
	.uahalf	0x178
	.uaword	0x1c0
	.byte	0x1
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"FSO_OCP"
	.byte	0x3
	.uahalf	0x179
	.uaword	0x1c0
	.byte	0x1
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"FSO_UVLO"
	.byte	0x3
	.uahalf	0x17a
	.uaword	0x1c0
	.byte	0x1
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"FSO_CPUV"
	.byte	0x3
	.uahalf	0x17b
	.uaword	0x1c0
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"FSO_GDF"
	.byte	0x3
	.uahalf	0x17c
	.uaword	0x1c0
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"FSO_FAULT"
	.byte	0x3
	.uahalf	0x17d
	.uaword	0x1c0
	.byte	0x1
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.uaword	.LASF1
	.byte	0x1
	.byte	0x3
	.uahalf	0x172
	.uaword	0x9bd
	.uleb128 0xf
	.string	"U"
	.byte	0x3
	.uahalf	0x174
	.uaword	0x1c0
	.uleb128 0xf
	.string	"B"
	.byte	0x3
	.uahalf	0x17e
	.uaword	0x8d9
	.byte	0
	.uleb128 0xb
	.uaword	.LASF1
	.byte	0x3
	.uahalf	0x17f
	.uaword	0x99b
	.uleb128 0xc
	.byte	0x1
	.byte	0x3
	.uahalf	0x185
	.uaword	0xa9d
	.uleb128 0xd
	.string	"DSA_VDS_HA"
	.byte	0x3
	.uahalf	0x186
	.uaword	0x1c0
	.byte	0x1
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DSA_VDS_LA"
	.byte	0x3
	.uahalf	0x187
	.uaword	0x1c0
	.byte	0x1
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DSA_VGS_HA"
	.byte	0x3
	.uahalf	0x188
	.uaword	0x1c0
	.byte	0x1
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DSA_VGS_LA"
	.byte	0x3
	.uahalf	0x189
	.uaword	0x1c0
	.byte	0x1
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DSA_OL_PH_A"
	.byte	0x3
	.uahalf	0x18a
	.uaword	0x1c0
	.byte	0x1
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DSA_SHT_BAT_A"
	.byte	0x3
	.uahalf	0x18b
	.uaword	0x1c0
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DSA_SA_OC"
	.byte	0x3
	.uahalf	0x18c
	.uaword	0x1c0
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DSA_FAULT"
	.byte	0x3
	.uahalf	0x18d
	.uaword	0x1c0
	.byte	0x1
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.uaword	.LASF2
	.byte	0x1
	.byte	0x3
	.uahalf	0x182
	.uaword	0xabf
	.uleb128 0xf
	.string	"U"
	.byte	0x3
	.uahalf	0x184
	.uaword	0x1c0
	.uleb128 0xf
	.string	"B"
	.byte	0x3
	.uahalf	0x18e
	.uaword	0x9c9
	.byte	0
	.uleb128 0xb
	.uaword	.LASF2
	.byte	0x3
	.uahalf	0x18f
	.uaword	0xa9d
	.uleb128 0xc
	.byte	0x1
	.byte	0x3
	.uahalf	0x195
	.uaword	0xb9f
	.uleb128 0xd
	.string	"DSB_VDS_HB"
	.byte	0x3
	.uahalf	0x196
	.uaword	0x1c0
	.byte	0x1
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DSB_VDS_LB"
	.byte	0x3
	.uahalf	0x197
	.uaword	0x1c0
	.byte	0x1
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DSB_VGS_HB"
	.byte	0x3
	.uahalf	0x198
	.uaword	0x1c0
	.byte	0x1
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DSB_VGS_LB"
	.byte	0x3
	.uahalf	0x199
	.uaword	0x1c0
	.byte	0x1
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DSB_OL_PH_B"
	.byte	0x3
	.uahalf	0x19a
	.uaword	0x1c0
	.byte	0x1
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DSB_SHT_BAT_B"
	.byte	0x3
	.uahalf	0x19b
	.uaword	0x1c0
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DSB_SB_OC"
	.byte	0x3
	.uahalf	0x19c
	.uaword	0x1c0
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DSB_FAULT"
	.byte	0x3
	.uahalf	0x19d
	.uaword	0x1c0
	.byte	0x1
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.uaword	.LASF3
	.byte	0x1
	.byte	0x3
	.uahalf	0x192
	.uaword	0xbc1
	.uleb128 0xf
	.string	"U"
	.byte	0x3
	.uahalf	0x194
	.uaword	0x1c0
	.uleb128 0xf
	.string	"B"
	.byte	0x3
	.uahalf	0x19e
	.uaword	0xacb
	.byte	0
	.uleb128 0xb
	.uaword	.LASF3
	.byte	0x3
	.uahalf	0x19f
	.uaword	0xb9f
	.uleb128 0xc
	.byte	0x1
	.byte	0x3
	.uahalf	0x1a4
	.uaword	0xca1
	.uleb128 0xd
	.string	"DSC_VDS_HC"
	.byte	0x3
	.uahalf	0x1a5
	.uaword	0x1c0
	.byte	0x1
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DSC_VDS_LC"
	.byte	0x3
	.uahalf	0x1a6
	.uaword	0x1c0
	.byte	0x1
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DSC_VGS_HC"
	.byte	0x3
	.uahalf	0x1a7
	.uaword	0x1c0
	.byte	0x1
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DSC_VGS_LC"
	.byte	0x3
	.uahalf	0x1a8
	.uaword	0x1c0
	.byte	0x1
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DSC_OL_PH_C"
	.byte	0x3
	.uahalf	0x1a9
	.uaword	0x1c0
	.byte	0x1
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DSC_SHT_BAT_C"
	.byte	0x3
	.uahalf	0x1aa
	.uaword	0x1c0
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DSC_SC_OC"
	.byte	0x3
	.uahalf	0x1ab
	.uaword	0x1c0
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DSC_FAULT"
	.byte	0x3
	.uahalf	0x1ac
	.uaword	0x1c0
	.byte	0x1
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.uaword	.LASF4
	.byte	0x1
	.byte	0x3
	.uahalf	0x1a1
	.uaword	0xcc3
	.uleb128 0xf
	.string	"U"
	.byte	0x3
	.uahalf	0x1a3
	.uaword	0x1c0
	.uleb128 0xf
	.string	"B"
	.byte	0x3
	.uahalf	0x1ad
	.uaword	0xbcd
	.byte	0
	.uleb128 0xb
	.uaword	.LASF4
	.byte	0x3
	.uahalf	0x1ae
	.uaword	0xca1
	.uleb128 0xc
	.byte	0x1
	.byte	0x3
	.uahalf	0x1b3
	.uaword	0xd6d
	.uleb128 0xd
	.string	"DCI1_ONE_PWM_BRK"
	.byte	0x3
	.uahalf	0x1b4
	.uaword	0x1c0
	.byte	0x1
	.byte	0x2
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DCI1_ONE_PWM_DIR"
	.byte	0x3
	.uahalf	0x1b5
	.uaword	0x1c0
	.byte	0x1
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DCI1_ONE_PWM_COM"
	.byte	0x3
	.uahalf	0x1b6
	.uaword	0x1c0
	.byte	0x1
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DCI1_PWM_MODE"
	.byte	0x3
	.uahalf	0x1b7
	.uaword	0x1c0
	.byte	0x1
	.byte	0x3
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DCI1_CLR_FLT"
	.byte	0x3
	.uahalf	0x1b8
	.uaword	0x1c0
	.byte	0x1
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.uaword	.LASF5
	.byte	0x1
	.byte	0x3
	.uahalf	0x1b0
	.uaword	0xd8f
	.uleb128 0xf
	.string	"U"
	.byte	0x3
	.uahalf	0x1b2
	.uaword	0x1c0
	.uleb128 0xf
	.string	"B"
	.byte	0x3
	.uahalf	0x1b9
	.uaword	0xccf
	.byte	0
	.uleb128 0xb
	.uaword	.LASF5
	.byte	0x3
	.uahalf	0x1ba
	.uaword	0xd6d
	.uleb128 0xc
	.byte	0x1
	.byte	0x3
	.uahalf	0x1bf
	.uaword	0xe6e
	.uleb128 0xd
	.string	"DCI2_EN_OLA_A"
	.byte	0x3
	.uahalf	0x1c0
	.uaword	0x1c0
	.byte	0x1
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DCI2_EN_OLA_B"
	.byte	0x3
	.uahalf	0x1c1
	.uaword	0x1c0
	.byte	0x1
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DCI2_EN_OLA_C"
	.byte	0x3
	.uahalf	0x1c2
	.uaword	0x1c0
	.byte	0x1
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DCI2_EN_OLP"
	.byte	0x3
	.uahalf	0x1c3
	.uaword	0x1c0
	.byte	0x1
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DCI2_EN_SHT_TST"
	.byte	0x3
	.uahalf	0x1c4
	.uaword	0x1c0
	.byte	0x1
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DCI2_OLP_SHTS_DLY"
	.byte	0x3
	.uahalf	0x1c5
	.uaword	0x1c0
	.byte	0x1
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DCI2_OTSD_MODE"
	.byte	0x3
	.uahalf	0x1c6
	.uaword	0x1c0
	.byte	0x1
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.uaword	.LASF6
	.byte	0x1
	.byte	0x3
	.uahalf	0x1bc
	.uaword	0xe90
	.uleb128 0xf
	.string	"U"
	.byte	0x3
	.uahalf	0x1be
	.uaword	0x1c0
	.uleb128 0xf
	.string	"B"
	.byte	0x3
	.uahalf	0x1c7
	.uaword	0xd9b
	.byte	0
	.uleb128 0xb
	.uaword	.LASF6
	.byte	0x3
	.uahalf	0x1c8
	.uaword	0xe6e
	.uleb128 0xc
	.byte	0x1
	.byte	0x3
	.uahalf	0x1cd
	.uaword	0xee2
	.uleb128 0xd
	.string	"DCI3_IDRIVEP_HA"
	.byte	0x3
	.uahalf	0x1ce
	.uaword	0x1c0
	.byte	0x1
	.byte	0x4
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DCI3_IDRIVEP_LA"
	.byte	0x3
	.uahalf	0x1cf
	.uaword	0x1c0
	.byte	0x1
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.uaword	.LASF7
	.byte	0x1
	.byte	0x3
	.uahalf	0x1ca
	.uaword	0xf04
	.uleb128 0xf
	.string	"U"
	.byte	0x3
	.uahalf	0x1cc
	.uaword	0x1c0
	.uleb128 0xf
	.string	"B"
	.byte	0x3
	.uahalf	0x1d0
	.uaword	0xe9c
	.byte	0
	.uleb128 0xb
	.uaword	.LASF7
	.byte	0x3
	.uahalf	0x1d1
	.uaword	0xee2
	.uleb128 0xc
	.byte	0x1
	.byte	0x3
	.uahalf	0x1d6
	.uaword	0xf56
	.uleb128 0xd
	.string	"DCI4_IDRIVEP_HB"
	.byte	0x3
	.uahalf	0x1d7
	.uaword	0x1c0
	.byte	0x1
	.byte	0x4
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DCI4_IDRIVEP_LB"
	.byte	0x3
	.uahalf	0x1d8
	.uaword	0x1c0
	.byte	0x1
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.uaword	.LASF8
	.byte	0x1
	.byte	0x3
	.uahalf	0x1d3
	.uaword	0xf78
	.uleb128 0xf
	.string	"U"
	.byte	0x3
	.uahalf	0x1d5
	.uaword	0x1c0
	.uleb128 0xf
	.string	"B"
	.byte	0x3
	.uahalf	0x1d9
	.uaword	0xf10
	.byte	0
	.uleb128 0xb
	.uaword	.LASF8
	.byte	0x3
	.uahalf	0x1da
	.uaword	0xf56
	.uleb128 0xc
	.byte	0x1
	.byte	0x3
	.uahalf	0x1df
	.uaword	0xfca
	.uleb128 0xd
	.string	"DCI5_IDRIVEP_HC"
	.byte	0x3
	.uahalf	0x1e0
	.uaword	0x1c0
	.byte	0x1
	.byte	0x4
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DCI5_IDRIVEP_LC"
	.byte	0x3
	.uahalf	0x1e1
	.uaword	0x1c0
	.byte	0x1
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.uaword	.LASF9
	.byte	0x1
	.byte	0x3
	.uahalf	0x1dc
	.uaword	0xfec
	.uleb128 0xf
	.string	"U"
	.byte	0x3
	.uahalf	0x1de
	.uaword	0x1c0
	.uleb128 0xf
	.string	"B"
	.byte	0x3
	.uahalf	0x1e2
	.uaword	0xf84
	.byte	0
	.uleb128 0xb
	.uaword	.LASF9
	.byte	0x3
	.uahalf	0x1e3
	.uaword	0xfca
	.uleb128 0xc
	.byte	0x1
	.byte	0x3
	.uahalf	0x1e8
	.uaword	0x1036
	.uleb128 0xd
	.string	"DCI6_VDS_HA"
	.byte	0x3
	.uahalf	0x1e9
	.uaword	0x1c0
	.byte	0x1
	.byte	0x4
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DCI6_VDS_LA"
	.byte	0x3
	.uahalf	0x1ea
	.uaword	0x1c0
	.byte	0x1
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.uaword	.LASF10
	.byte	0x1
	.byte	0x3
	.uahalf	0x1e5
	.uaword	0x1058
	.uleb128 0xf
	.string	"U"
	.byte	0x3
	.uahalf	0x1e7
	.uaword	0x1c0
	.uleb128 0xf
	.string	"B"
	.byte	0x3
	.uahalf	0x1eb
	.uaword	0xff8
	.byte	0
	.uleb128 0xb
	.uaword	.LASF10
	.byte	0x3
	.uahalf	0x1ec
	.uaword	0x1036
	.uleb128 0xc
	.byte	0x1
	.byte	0x3
	.uahalf	0x1f0
	.uaword	0x10a2
	.uleb128 0xd
	.string	"DCI7_VDS_HB"
	.byte	0x3
	.uahalf	0x1f1
	.uaword	0x1c0
	.byte	0x1
	.byte	0x4
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DCI7_VDS_LB"
	.byte	0x3
	.uahalf	0x1f2
	.uaword	0x1c0
	.byte	0x1
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.uaword	.LASF11
	.byte	0x1
	.byte	0x3
	.uahalf	0x1ed
	.uaword	0x10c4
	.uleb128 0xf
	.string	"U"
	.byte	0x3
	.uahalf	0x1ef
	.uaword	0x1c0
	.uleb128 0xf
	.string	"B"
	.byte	0x3
	.uahalf	0x1f3
	.uaword	0x1064
	.byte	0
	.uleb128 0xb
	.uaword	.LASF11
	.byte	0x3
	.uahalf	0x1f4
	.uaword	0x10a2
	.uleb128 0xc
	.byte	0x1
	.byte	0x3
	.uahalf	0x1f8
	.uaword	0x110e
	.uleb128 0xd
	.string	"DCI8_VDS_HC"
	.byte	0x3
	.uahalf	0x1f9
	.uaword	0x1c0
	.byte	0x1
	.byte	0x4
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DCI8_VDS_LC"
	.byte	0x3
	.uahalf	0x1fa
	.uaword	0x1c0
	.byte	0x1
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.uaword	.LASF12
	.byte	0x1
	.byte	0x3
	.uahalf	0x1f5
	.uaword	0x1130
	.uleb128 0xf
	.string	"U"
	.byte	0x3
	.uahalf	0x1f7
	.uaword	0x1c0
	.uleb128 0xf
	.string	"B"
	.byte	0x3
	.uahalf	0x1fb
	.uaword	0x10d0
	.byte	0
	.uleb128 0xb
	.uaword	.LASF12
	.byte	0x3
	.uahalf	0x1fc
	.uaword	0x110e
	.uleb128 0xc
	.byte	0x1
	.byte	0x3
	.uahalf	0x200
	.uaword	0x11ce
	.uleb128 0xd
	.string	"DCI9_TDRIVE"
	.byte	0x3
	.uahalf	0x201
	.uaword	0x1c0
	.byte	0x1
	.byte	0x2
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DCI9_TDRIVE_MAX"
	.byte	0x3
	.uahalf	0x202
	.uaword	0x1c0
	.byte	0x1
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DCI9_DEAD_TIME"
	.byte	0x3
	.uahalf	0x203
	.uaword	0x1c0
	.byte	0x1
	.byte	0x2
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DCI9_TRETRY"
	.byte	0x3
	.uahalf	0x204
	.uaword	0x1c0
	.byte	0x1
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DCI9_COAST"
	.byte	0x3
	.uahalf	0x205
	.uaword	0x1c0
	.byte	0x1
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.uaword	.LASF13
	.byte	0x1
	.byte	0x3
	.uahalf	0x1fd
	.uaword	0x11f0
	.uleb128 0xf
	.string	"U"
	.byte	0x3
	.uahalf	0x1ff
	.uaword	0x1c0
	.uleb128 0xf
	.string	"B"
	.byte	0x3
	.uahalf	0x206
	.uaword	0x113c
	.byte	0
	.uleb128 0xb
	.uaword	.LASF13
	.byte	0x3
	.uahalf	0x207
	.uaword	0x11ce
	.uleb128 0xc
	.byte	0x1
	.byte	0x3
	.uahalf	0x20c
	.uaword	0x1274
	.uleb128 0xd
	.string	"DCI10_OCP_DEG"
	.byte	0x3
	.uahalf	0x20d
	.uaword	0x1c0
	.byte	0x1
	.byte	0x3
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DCI10_DIS_GDF"
	.byte	0x3
	.uahalf	0x20e
	.uaword	0x1c0
	.byte	0x1
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DCI10_DIS_CPUV"
	.byte	0x3
	.uahalf	0x20f
	.uaword	0x1c0
	.byte	0x1
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DCI10_LOCK"
	.byte	0x3
	.uahalf	0x210
	.uaword	0x1c0
	.byte	0x1
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.uaword	.LASF14
	.byte	0x1
	.byte	0x3
	.uahalf	0x209
	.uaword	0x1296
	.uleb128 0xf
	.string	"U"
	.byte	0x3
	.uahalf	0x20b
	.uaword	0x1c0
	.uleb128 0xf
	.string	"B"
	.byte	0x3
	.uahalf	0x211
	.uaword	0x11fc
	.byte	0
	.uleb128 0xb
	.uaword	.LASF14
	.byte	0x3
	.uahalf	0x212
	.uaword	0x1274
	.uleb128 0xc
	.byte	0x1
	.byte	0x3
	.uahalf	0x217
	.uaword	0x1377
	.uleb128 0xd
	.string	"DCI11_OCP_MODE"
	.byte	0x3
	.uahalf	0x218
	.uaword	0x1c0
	.byte	0x1
	.byte	0x2
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DCI11_DIS_VDS_A"
	.byte	0x3
	.uahalf	0x219
	.uaword	0x1c0
	.byte	0x1
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DCI11_DIS_VDS_B"
	.byte	0x3
	.uahalf	0x21a
	.uaword	0x1c0
	.byte	0x1
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DCI11_DIS_VDS_C"
	.byte	0x3
	.uahalf	0x21b
	.uaword	0x1c0
	.byte	0x1
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DCI11_CBC"
	.byte	0x3
	.uahalf	0x21c
	.uaword	0x1c0
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DCI11_OTW_REP"
	.byte	0x3
	.uahalf	0x21d
	.uaword	0x1c0
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DCI11_RSVD_REG_10"
	.byte	0x3
	.uahalf	0x21e
	.uaword	0x1c0
	.byte	0x1
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.uaword	.LASF15
	.byte	0x1
	.byte	0x3
	.uahalf	0x214
	.uaword	0x1399
	.uleb128 0xf
	.string	"U"
	.byte	0x3
	.uahalf	0x216
	.uaword	0x1c0
	.uleb128 0xf
	.string	"B"
	.byte	0x3
	.uahalf	0x21f
	.uaword	0x12a2
	.byte	0
	.uleb128 0xb
	.uaword	.LASF15
	.byte	0x3
	.uahalf	0x220
	.uaword	0x1377
	.uleb128 0xc
	.byte	0x1
	.byte	0x3
	.uahalf	0x225
	.uaword	0x1443
	.uleb128 0xd
	.string	"DCI12_CSA_GAIN_A"
	.byte	0x3
	.uahalf	0x226
	.uaword	0x1c0
	.byte	0x1
	.byte	0x2
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DCI12_CSA_GAIN_B"
	.byte	0x3
	.uahalf	0x227
	.uaword	0x1c0
	.byte	0x1
	.byte	0x2
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DCI12_CSA_GAIN_C"
	.byte	0x3
	.uahalf	0x228
	.uaword	0x1c0
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DCI12_CSA_FET"
	.byte	0x3
	.uahalf	0x229
	.uaword	0x1c0
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DCI12_LS_REF"
	.byte	0x3
	.uahalf	0x22a
	.uaword	0x1c0
	.byte	0x1
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.uaword	.LASF16
	.byte	0x1
	.byte	0x3
	.uahalf	0x222
	.uaword	0x1465
	.uleb128 0xf
	.string	"U"
	.byte	0x3
	.uahalf	0x224
	.uaword	0x1c0
	.uleb128 0xf
	.string	"B"
	.byte	0x3
	.uahalf	0x22b
	.uaword	0x13a5
	.byte	0
	.uleb128 0xb
	.uaword	.LASF16
	.byte	0x3
	.uahalf	0x22c
	.uaword	0x1443
	.uleb128 0xc
	.byte	0x1
	.byte	0x3
	.uahalf	0x231
	.uaword	0x150f
	.uleb128 0xd
	.string	"DCI13_SEN_LVL_A"
	.byte	0x3
	.uahalf	0x232
	.uaword	0x1c0
	.byte	0x1
	.byte	0x2
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DCI13_SEN_LVL_B"
	.byte	0x3
	.uahalf	0x233
	.uaword	0x1c0
	.byte	0x1
	.byte	0x2
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DCI13_SEN_LVL_C"
	.byte	0x3
	.uahalf	0x234
	.uaword	0x1c0
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DCI13_VREF_DIV"
	.byte	0x3
	.uahalf	0x235
	.uaword	0x1c0
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DCI13_CAL_MODE"
	.byte	0x3
	.uahalf	0x236
	.uaword	0x1c0
	.byte	0x1
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.uaword	.LASF17
	.byte	0x1
	.byte	0x3
	.uahalf	0x22e
	.uaword	0x1531
	.uleb128 0xf
	.string	"U"
	.byte	0x3
	.uahalf	0x230
	.uaword	0x1c0
	.uleb128 0xf
	.string	"B"
	.byte	0x3
	.uahalf	0x237
	.uaword	0x1471
	.byte	0
	.uleb128 0xb
	.uaword	.LASF17
	.byte	0x3
	.uahalf	0x238
	.uaword	0x150f
	.uleb128 0xc
	.byte	0x1
	.byte	0x3
	.uahalf	0x23d
	.uaword	0x161b
	.uleb128 0xd
	.string	"DCI14_CSA_CAL_A"
	.byte	0x3
	.uahalf	0x23e
	.uaword	0x1c0
	.byte	0x1
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DCI14_CSA_CAL_B"
	.byte	0x3
	.uahalf	0x23f
	.uaword	0x1c0
	.byte	0x1
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DCI14_CSA_CAL_C"
	.byte	0x3
	.uahalf	0x240
	.uaword	0x1c0
	.byte	0x1
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DCI14_DIS_SEN_A"
	.byte	0x3
	.uahalf	0x241
	.uaword	0x1c0
	.byte	0x1
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DCI14_DIS_SEN_B"
	.byte	0x3
	.uahalf	0x242
	.uaword	0x1c0
	.byte	0x1
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DCI14_DIS_SEN_C"
	.byte	0x3
	.uahalf	0x243
	.uaword	0x1c0
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DCI14_RSVD_REG_14"
	.byte	0x3
	.uahalf	0x244
	.uaword	0x1c0
	.byte	0x1
	.byte	0x2
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.uaword	.LASF18
	.byte	0x1
	.byte	0x3
	.uahalf	0x23a
	.uaword	0x163d
	.uleb128 0xf
	.string	"U"
	.byte	0x3
	.uahalf	0x23c
	.uaword	0x1c0
	.uleb128 0xf
	.string	"B"
	.byte	0x3
	.uahalf	0x245
	.uaword	0x153d
	.byte	0
	.uleb128 0xb
	.uaword	.LASF18
	.byte	0x3
	.uahalf	0x246
	.uaword	0x161b
	.uleb128 0xe
	.uaword	.LASF19
	.byte	0x1
	.byte	0x3
	.uahalf	0x248
	.uaword	0x17db
	.uleb128 0xf
	.string	"U"
	.byte	0x3
	.uahalf	0x24a
	.uaword	0x1c0
	.uleb128 0xf
	.string	"FAULT_STAT"
	.byte	0x3
	.uahalf	0x24b
	.uaword	0x9bd
	.uleb128 0xf
	.string	"DIAG_STAT_A"
	.byte	0x3
	.uahalf	0x24c
	.uaword	0xabf
	.uleb128 0xf
	.string	"DIAG_STAT_B"
	.byte	0x3
	.uahalf	0x24d
	.uaword	0xbc1
	.uleb128 0xf
	.string	"DIAG_STAT_C"
	.byte	0x3
	.uahalf	0x24e
	.uaword	0xcc3
	.uleb128 0xf
	.string	"DRV_CTRL_IC1"
	.byte	0x3
	.uahalf	0x24f
	.uaword	0xd8f
	.uleb128 0xf
	.string	"DRV_CTRL_IC2"
	.byte	0x3
	.uahalf	0x250
	.uaword	0xe90
	.uleb128 0xf
	.string	"DRV_CTRL_IC3"
	.byte	0x3
	.uahalf	0x251
	.uaword	0xf04
	.uleb128 0xf
	.string	"DRV_CTRL_IC4"
	.byte	0x3
	.uahalf	0x252
	.uaword	0xf78
	.uleb128 0xf
	.string	"DRV_CTRL_IC5"
	.byte	0x3
	.uahalf	0x253
	.uaword	0xfec
	.uleb128 0xf
	.string	"DRV_CTRL_IC6"
	.byte	0x3
	.uahalf	0x254
	.uaword	0x1058
	.uleb128 0xf
	.string	"DRV_CTRL_IC7"
	.byte	0x3
	.uahalf	0x255
	.uaword	0x10c4
	.uleb128 0xf
	.string	"DRV_CTRL_IC8"
	.byte	0x3
	.uahalf	0x256
	.uaword	0x1130
	.uleb128 0xf
	.string	"DRV_CTRL_IC9"
	.byte	0x3
	.uahalf	0x257
	.uaword	0x11f0
	.uleb128 0xf
	.string	"DRV_CTRL_IC10"
	.byte	0x3
	.uahalf	0x258
	.uaword	0x1296
	.uleb128 0xf
	.string	"DRV_CTRL_IC11"
	.byte	0x3
	.uahalf	0x259
	.uaword	0x1399
	.uleb128 0xf
	.string	"DRV_CTRL_IC12"
	.byte	0x3
	.uahalf	0x25a
	.uaword	0x1465
	.uleb128 0xf
	.string	"DRV_CTRL_IC13"
	.byte	0x3
	.uahalf	0x25b
	.uaword	0x1531
	.uleb128 0xf
	.string	"DRV_CTRL_IC14"
	.byte	0x3
	.uahalf	0x25c
	.uaword	0x163d
	.byte	0
	.uleb128 0xb
	.uaword	.LASF19
	.byte	0x3
	.uahalf	0x25d
	.uaword	0x1649
	.uleb128 0x9
	.uaword	.LASF20
	.byte	0xa
	.byte	0x3
	.uahalf	0x25f
	.uaword	0x1870
	.uleb128 0xa
	.string	"Idrive_Min_Value"
	.byte	0x3
	.uahalf	0x261
	.uaword	0x1eb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"Tdrive_Max_Value"
	.byte	0x3
	.uahalf	0x262
	.uaword	0x1eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.string	"Idrive_Setting"
	.byte	0x3
	.uahalf	0x263
	.uaword	0x1eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.string	"Tdrive_Setting"
	.byte	0x3
	.uahalf	0x264
	.uaword	0x1eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x10
	.uaword	.LASF21
	.byte	0x3
	.uahalf	0x265
	.uaword	0x1eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0xb
	.uaword	.LASF20
	.byte	0x3
	.uahalf	0x266
	.uaword	0x17e7
	.uleb128 0x11
	.string	"DRV83xx_u16Cache2Reg"
	.byte	0x1
	.uahalf	0x228
	.byte	0x1
	.uaword	0x1eb
	.byte	0x3
	.uaword	0x18bc
	.uleb128 0x12
	.string	"address"
	.byte	0x1
	.uahalf	0x228
	.uaword	0x1c0
	.uleb128 0x13
	.uaword	.LASF22
	.byte	0x1
	.uahalf	0x22a
	.uaword	0x1eb
	.byte	0
	.uleb128 0x14
	.string	"DRV83xx_vidReg2Cache"
	.byte	0x1
	.uahalf	0x235
	.byte	0x1
	.byte	0x3
	.uaword	0x18f8
	.uleb128 0x12
	.string	"address"
	.byte	0x1
	.uahalf	0x235
	.uaword	0x1c0
	.uleb128 0x15
	.uaword	.LASF22
	.byte	0x1
	.uahalf	0x235
	.uaword	0x1eb
	.byte	0
	.uleb128 0x11
	.string	"DRV83xx_u32CalcWriteFrame"
	.byte	0x1
	.uahalf	0x23a
	.byte	0x1
	.uaword	0x227
	.byte	0x3
	.uaword	0x193e
	.uleb128 0x12
	.string	"regAddr"
	.byte	0x1
	.uahalf	0x23a
	.uaword	0x227
	.uleb128 0x12
	.string	"data"
	.byte	0x1
	.uahalf	0x23a
	.uaword	0x227
	.byte	0
	.uleb128 0x16
	.string	"DRV83xx_vidTrigSpiTx"
	.byte	0x1
	.uahalf	0x244
	.byte	0x1
	.byte	0x3
	.uleb128 0x11
	.string	"DRV83xx_u32CalcReadFrame"
	.byte	0x1
	.uahalf	0x23f
	.byte	0x1
	.uaword	0x227
	.byte	0x3
	.uaword	0x1991
	.uleb128 0x12
	.string	"regAddr"
	.byte	0x1
	.uahalf	0x23f
	.uaword	0x227
	.byte	0
	.uleb128 0x16
	.string	"DRV83xx_vidCacheTrigBitReset"
	.byte	0x1
	.uahalf	0x21e
	.byte	0x1
	.byte	0x3
	.uleb128 0x17
	.string	"DRV83xx_bGetFaultStatus"
	.byte	0x1
	.uahalf	0x249
	.byte	0x1
	.uaword	0x272
	.uaword	.LFB27
	.uaword	.LFE27
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x17
	.string	"DRV83xx_bGetGateDriverStatus"
	.byte	0x1
	.uahalf	0x24e
	.byte	0x1
	.uaword	0x272
	.uaword	.LFB28
	.uaword	.LFE28
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x17
	.string	"DRV83xx_bGetChargePumpUVStatus"
	.byte	0x1
	.uahalf	0x253
	.byte	0x1
	.uaword	0x272
	.uaword	.LFB29
	.uaword	.LFE29
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x17
	.string	"DRV83xx_bGetUVLockoutStatus"
	.byte	0x1
	.uahalf	0x258
	.byte	0x1
	.uaword	0x272
	.uaword	.LFB30
	.uaword	.LFE30
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x17
	.string	"DRV83xx_bGetOverCurStatus"
	.byte	0x1
	.uahalf	0x25d
	.byte	0x1
	.uaword	0x272
	.uaword	.LFB31
	.uaword	.LFE31
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x17
	.string	"DRV83xx_bGetOverTempWarningStatus"
	.byte	0x1
	.uahalf	0x262
	.byte	0x1
	.uaword	0x272
	.uaword	.LFB32
	.uaword	.LFE32
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x17
	.string	"DRV83xx_bGetOverTempShutdownStatus"
	.byte	0x1
	.uahalf	0x267
	.byte	0x1
	.uaword	0x272
	.uaword	.LFB33
	.uaword	.LFE33
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x17
	.string	"DRV83xx_bGetOpenLoadOrShortStatus"
	.byte	0x1
	.uahalf	0x26c
	.byte	0x1
	.uaword	0x272
	.uaword	.LFB34
	.uaword	.LFE34
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x17
	.string	"DRV83xx_bGetPhaseAShortGndStatus"
	.byte	0x1
	.uahalf	0x271
	.byte	0x1
	.uaword	0x272
	.uaword	.LFB35
	.uaword	.LFE35
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x17
	.string	"DRV83xx_bGetPhaseAShortBatStatus"
	.byte	0x1
	.uahalf	0x276
	.byte	0x1
	.uaword	0x272
	.uaword	.LFB36
	.uaword	.LFE36
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x17
	.string	"DRV83xx_bGetPhaseAOpenLoadStatus"
	.byte	0x1
	.uahalf	0x27b
	.byte	0x1
	.uaword	0x272
	.uaword	.LFB37
	.uaword	.LFE37
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x17
	.string	"DRV83xx_bGetPhaseAGateDriverLowSideStatus"
	.byte	0x1
	.uahalf	0x280
	.byte	0x1
	.uaword	0x272
	.uaword	.LFB38
	.uaword	.LFE38
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x17
	.string	"DRV83xx_bGetPhaseAGateDriverHighSideStatus"
	.byte	0x1
	.uahalf	0x285
	.byte	0x1
	.uaword	0x272
	.uaword	.LFB39
	.uaword	.LFE39
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x17
	.string	"DRV83xx_bGetPhaseAVdsOverCurLowSideStatus"
	.byte	0x1
	.uahalf	0x28a
	.byte	0x1
	.uaword	0x272
	.uaword	.LFB40
	.uaword	.LFE40
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x17
	.string	"DRV83xx_bGetPhaseAVdsOverCurHighSideStatus"
	.byte	0x1
	.uahalf	0x28f
	.byte	0x1
	.uaword	0x272
	.uaword	.LFB41
	.uaword	.LFE41
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x17
	.string	"DRV83xx_bGetPhaseBShortGndStatus"
	.byte	0x1
	.uahalf	0x294
	.byte	0x1
	.uaword	0x272
	.uaword	.LFB42
	.uaword	.LFE42
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x17
	.string	"DRV83xx_bGetPhaseBShortBatStatus"
	.byte	0x1
	.uahalf	0x299
	.byte	0x1
	.uaword	0x272
	.uaword	.LFB43
	.uaword	.LFE43
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x17
	.string	"DRV83xx_bGetPhaseBOpenLoadStatus"
	.byte	0x1
	.uahalf	0x29e
	.byte	0x1
	.uaword	0x272
	.uaword	.LFB44
	.uaword	.LFE44
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x17
	.string	"DRV83xx_bGetPhaseBGateDriverLowSideStatus"
	.byte	0x1
	.uahalf	0x2a3
	.byte	0x1
	.uaword	0x272
	.uaword	.LFB45
	.uaword	.LFE45
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x17
	.string	"DRV83xx_bGetPhaseBGateDriverHighSideStatus"
	.byte	0x1
	.uahalf	0x2a8
	.byte	0x1
	.uaword	0x272
	.uaword	.LFB46
	.uaword	.LFE46
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x17
	.string	"DRV83xx_bGetPhaseBVdsOverCurLowSideStatus"
	.byte	0x1
	.uahalf	0x2ad
	.byte	0x1
	.uaword	0x272
	.uaword	.LFB47
	.uaword	.LFE47
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x17
	.string	"DRV83xx_bGetPhaseBVdsOverCurHighSideStatus"
	.byte	0x1
	.uahalf	0x2b2
	.byte	0x1
	.uaword	0x272
	.uaword	.LFB48
	.uaword	.LFE48
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x17
	.string	"DRV83xx_bGetPhaseCShortGndStatus"
	.byte	0x1
	.uahalf	0x2b7
	.byte	0x1
	.uaword	0x272
	.uaword	.LFB49
	.uaword	.LFE49
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x17
	.string	"DRV83xx_bGetPhaseCShortBatStatus"
	.byte	0x1
	.uahalf	0x2bc
	.byte	0x1
	.uaword	0x272
	.uaword	.LFB50
	.uaword	.LFE50
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x17
	.string	"DRV83xx_bGetPhaseCOpenLoadStatus"
	.byte	0x1
	.uahalf	0x2c1
	.byte	0x1
	.uaword	0x272
	.uaword	.LFB51
	.uaword	.LFE51
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x17
	.string	"DRV83xx_bGetPhaseCGateDriverLowSideStatus"
	.byte	0x1
	.uahalf	0x2c6
	.byte	0x1
	.uaword	0x272
	.uaword	.LFB52
	.uaword	.LFE52
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x17
	.string	"DRV83xx_bGetPhaseCGateDriverHighSideStatus"
	.byte	0x1
	.uahalf	0x2cb
	.byte	0x1
	.uaword	0x272
	.uaword	.LFB53
	.uaword	.LFE53
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x17
	.string	"DRV83xx_bGetPhaseCVdsOverCurLowSideStatus"
	.byte	0x1
	.uahalf	0x2d0
	.byte	0x1
	.uaword	0x272
	.uaword	.LFB54
	.uaword	.LFE54
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x18
	.byte	0x1
	.string	"DRV83xx_is_CSA_BI_DIR_Mode"
	.byte	0x1
	.byte	0x75
	.byte	0x1
	.uaword	0x1c0
	.uaword	.LFB0
	.uaword	.LFE0
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x205e
	.uleb128 0x19
	.uaword	.LASF22
	.byte	0x1
	.byte	0x77
	.uaword	0x1eb
	.uleb128 0x1a
	.uaword	0x187c
	.uaword	.LBB42
	.uaword	.LBE42
	.byte	0x1
	.byte	0x79
	.uleb128 0x1b
	.uaword	0x189f
	.byte	0x10
	.uleb128 0x1c
	.uaword	.LBB43
	.uaword	.LBE43
	.uleb128 0x1d
	.uaword	0x18af
	.byte	0xb
	.byte	0x3
	.uaword	Reg_Map_Cache+16
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.string	"DRV83xx_set_Six_PWM_Mode"
	.byte	0x1
	.byte	0x81
	.byte	0x1
	.uaword	.LFB1
	.uaword	.LFE1
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x20e8
	.uleb128 0x1f
	.uaword	.LASF22
	.byte	0x1
	.byte	0x83
	.uaword	0x1eb
	.uaword	.LLST0
	.uleb128 0x20
	.uaword	0x187c
	.uaword	.LBB44
	.uaword	.LBE44
	.byte	0x1
	.byte	0x85
	.uaword	0x20c8
	.uleb128 0x1b
	.uaword	0x189f
	.byte	0x4
	.uleb128 0x1c
	.uaword	.LBB45
	.uaword	.LBE45
	.uleb128 0x21
	.uaword	0x18af
	.uaword	.LLST1
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uaword	0x18bc
	.uaword	.LBB46
	.uaword	.LBE46
	.byte	0x1
	.byte	0x87
	.uleb128 0x22
	.uaword	0x18eb
	.uaword	.LLST0
	.uleb128 0x1b
	.uaword	0x18db
	.byte	0x4
	.byte	0
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.string	"DRV83xx_set_One_PWM_Mode"
	.byte	0x1
	.byte	0x8e
	.byte	0x1
	.uaword	.LFB2
	.uaword	.LFE2
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x2172
	.uleb128 0x1f
	.uaword	.LASF22
	.byte	0x1
	.byte	0x90
	.uaword	0x1eb
	.uaword	.LLST3
	.uleb128 0x20
	.uaword	0x187c
	.uaword	.LBB48
	.uaword	.LBE48
	.byte	0x1
	.byte	0x92
	.uaword	0x2152
	.uleb128 0x1b
	.uaword	0x189f
	.byte	0x4
	.uleb128 0x1c
	.uaword	.LBB49
	.uaword	.LBE49
	.uleb128 0x21
	.uaword	0x18af
	.uaword	.LLST4
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uaword	0x18bc
	.uaword	.LBB50
	.uaword	.LBE50
	.byte	0x1
	.byte	0x96
	.uleb128 0x22
	.uaword	0x18eb
	.uaword	.LLST3
	.uleb128 0x1b
	.uaword	0x18db
	.byte	0x4
	.byte	0
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.string	"DRV83xx_set_IND_ABC_PWM_Mode"
	.byte	0x1
	.byte	0x9d
	.byte	0x1
	.uaword	.LFB3
	.uaword	.LFE3
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x2200
	.uleb128 0x1f
	.uaword	.LASF22
	.byte	0x1
	.byte	0x9f
	.uaword	0x1eb
	.uaword	.LLST6
	.uleb128 0x20
	.uaword	0x187c
	.uaword	.LBB52
	.uaword	.LBE52
	.byte	0x1
	.byte	0xa1
	.uaword	0x21e0
	.uleb128 0x1b
	.uaword	0x189f
	.byte	0x4
	.uleb128 0x1c
	.uaword	.LBB53
	.uaword	.LBE53
	.uleb128 0x21
	.uaword	0x18af
	.uaword	.LLST7
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uaword	0x18bc
	.uaword	.LBB54
	.uaword	.LBE54
	.byte	0x1
	.byte	0xa5
	.uleb128 0x22
	.uaword	0x18eb
	.uaword	.LLST6
	.uleb128 0x1b
	.uaword	0x18db
	.byte	0x4
	.byte	0
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.string	"DRV83xx_set_IND_AB_FET_C_PWM_Mode"
	.byte	0x1
	.byte	0xac
	.byte	0x1
	.uaword	.LFB4
	.uaword	.LFE4
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x2293
	.uleb128 0x1f
	.uaword	.LASF22
	.byte	0x1
	.byte	0xae
	.uaword	0x1eb
	.uaword	.LLST9
	.uleb128 0x20
	.uaword	0x187c
	.uaword	.LBB56
	.uaword	.LBE56
	.byte	0x1
	.byte	0xb0
	.uaword	0x2273
	.uleb128 0x1b
	.uaword	0x189f
	.byte	0x4
	.uleb128 0x1c
	.uaword	.LBB57
	.uaword	.LBE57
	.uleb128 0x21
	.uaword	0x18af
	.uaword	.LLST10
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uaword	0x18bc
	.uaword	.LBB58
	.uaword	.LBE58
	.byte	0x1
	.byte	0xb4
	.uleb128 0x22
	.uaword	0x18eb
	.uaword	.LLST9
	.uleb128 0x1b
	.uaword	0x18db
	.byte	0x4
	.byte	0
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.string	"DRV83xx_set_IND_BC_FET_A_PWM_Mode"
	.byte	0x1
	.byte	0xbb
	.byte	0x1
	.uaword	.LFB5
	.uaword	.LFE5
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x2326
	.uleb128 0x1f
	.uaword	.LASF22
	.byte	0x1
	.byte	0xbd
	.uaword	0x1eb
	.uaword	.LLST12
	.uleb128 0x20
	.uaword	0x187c
	.uaword	.LBB60
	.uaword	.LBE60
	.byte	0x1
	.byte	0xbf
	.uaword	0x2306
	.uleb128 0x1b
	.uaword	0x189f
	.byte	0x4
	.uleb128 0x1c
	.uaword	.LBB61
	.uaword	.LBE61
	.uleb128 0x21
	.uaword	0x18af
	.uaword	.LLST13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uaword	0x18bc
	.uaword	.LBB62
	.uaword	.LBE62
	.byte	0x1
	.byte	0xc3
	.uleb128 0x22
	.uaword	0x18eb
	.uaword	.LLST12
	.uleb128 0x1b
	.uaword	0x18db
	.byte	0x4
	.byte	0
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.string	"DRV83xx_set_IND_A_FET_BC_PWM_Mode"
	.byte	0x1
	.byte	0xca
	.byte	0x1
	.uaword	.LFB6
	.uaword	.LFE6
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x23b9
	.uleb128 0x1f
	.uaword	.LASF22
	.byte	0x1
	.byte	0xcc
	.uaword	0x1eb
	.uaword	.LLST15
	.uleb128 0x20
	.uaword	0x187c
	.uaword	.LBB64
	.uaword	.LBE64
	.byte	0x1
	.byte	0xce
	.uaword	0x2399
	.uleb128 0x1b
	.uaword	0x189f
	.byte	0x4
	.uleb128 0x1c
	.uaword	.LBB65
	.uaword	.LBE65
	.uleb128 0x21
	.uaword	0x18af
	.uaword	.LLST16
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uaword	0x18bc
	.uaword	.LBB66
	.uaword	.LBE66
	.byte	0x1
	.byte	0xd2
	.uleb128 0x22
	.uaword	0x18eb
	.uaword	.LLST15
	.uleb128 0x1b
	.uaword	0x18db
	.byte	0x4
	.byte	0
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.string	"DRV83xx_set_FET_ABC_PWM_Mode"
	.byte	0x1
	.byte	0xd9
	.byte	0x1
	.uaword	.LFB7
	.uaword	.LFE7
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x2447
	.uleb128 0x1f
	.uaword	.LASF22
	.byte	0x1
	.byte	0xdb
	.uaword	0x1eb
	.uaword	.LLST18
	.uleb128 0x20
	.uaword	0x187c
	.uaword	.LBB68
	.uaword	.LBE68
	.byte	0x1
	.byte	0xdd
	.uaword	0x2427
	.uleb128 0x1b
	.uaword	0x189f
	.byte	0x4
	.uleb128 0x1c
	.uaword	.LBB69
	.uaword	.LBE69
	.uleb128 0x21
	.uaword	0x18af
	.uaword	.LLST19
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uaword	0x18bc
	.uaword	.LBB70
	.uaword	.LBE70
	.byte	0x1
	.byte	0xe1
	.uleb128 0x22
	.uaword	0x18eb
	.uaword	.LLST18
	.uleb128 0x1b
	.uaword	0x18db
	.byte	0x4
	.byte	0
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.string	"DRV83xx_vidStartOLPTest"
	.byte	0x1
	.byte	0xe8
	.byte	0x1
	.uaword	.LFB8
	.uaword	.LFE8
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x23
	.byte	0x1
	.string	"DRV83xx_vidStartShortTest"
	.byte	0x1
	.byte	0xed
	.byte	0x1
	.uaword	.LFB9
	.uaword	.LFE9
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x23
	.byte	0x1
	.string	"DRV83xx_vidEnableGateDrv"
	.byte	0x1
	.byte	0xf2
	.byte	0x1
	.uaword	.LFB10
	.uaword	.LFE10
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x23
	.byte	0x1
	.string	"DRV83xx_vidDisableGateDrv"
	.byte	0x1
	.byte	0xf7
	.byte	0x1
	.uaword	.LFB11
	.uaword	.LFE11
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x1e
	.byte	0x1
	.string	"DRV83xx_vidControlInit"
	.byte	0x1
	.byte	0xfc
	.byte	0x1
	.uaword	.LFB12
	.uaword	.LFE12
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x253a
	.uleb128 0x24
	.string	"u8localCur"
	.byte	0x1
	.byte	0xfe
	.uaword	0x1c0
	.byte	0x1
	.byte	0x52
	.uleb128 0x25
	.uaword	.LVL35
	.uaword	0x2961
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.string	"DRV83xx_vidRegisterInit"
	.byte	0x1
	.uahalf	0x116
	.byte	0x1
	.uaword	.LFB13
	.uaword	.LFE13
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x257e
	.uleb128 0x27
	.string	"u8RegNum"
	.byte	0x1
	.uahalf	0x118
	.uaword	0x1c0
	.uaword	.LLST21
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.string	"DRV83xx_vidRestoreCfgRegs"
	.byte	0x1
	.uahalf	0x1bc
	.byte	0x1
	.uaword	.LFB14
	.uaword	.LFE14
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x25bf
	.uleb128 0x28
	.uaword	.LASF23
	.byte	0x1
	.uahalf	0x1be
	.uaword	0x1c0
	.uaword	.LLST22
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.string	"DRV83xx_bCfgIsNormal"
	.byte	0x1
	.uahalf	0x1c6
	.byte	0x1
	.uaword	0x272
	.uaword	.LFB15
	.uaword	.LFE15
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x2615
	.uleb128 0x28
	.uaword	.LASF23
	.byte	0x1
	.uahalf	0x1c8
	.uaword	0x1c0
	.uaword	.LLST23
	.uleb128 0x27
	.string	"bCheckRet"
	.byte	0x1
	.uahalf	0x1c9
	.uaword	0x272
	.uaword	.LLST24
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.string	"DRV83xx_vidWriteRegs"
	.byte	0x1
	.uahalf	0x1db
	.byte	0x1
	.uaword	.LFB16
	.uaword	.LFE16
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x2699
	.uleb128 0x28
	.uaword	.LASF23
	.byte	0x1
	.uahalf	0x1dd
	.uaword	0x1c0
	.uaword	.LLST25
	.uleb128 0x2a
	.uaword	0x18f8
	.uaword	.LBB72
	.uaword	.LBE72
	.byte	0x1
	.uahalf	0x1e2
	.uaword	0x2677
	.uleb128 0x22
	.uaword	0x1930
	.uaword	.LLST26
	.uleb128 0x22
	.uaword	0x1920
	.uaword	.LLST27
	.byte	0
	.uleb128 0x2b
	.uaword	0x193e
	.uaword	.LBB74
	.uaword	.LBE74
	.byte	0x1
	.uahalf	0x1e5
	.uleb128 0x2c
	.uaword	.LVL76
	.byte	0x1
	.uaword	0x2982
	.uleb128 0x2d
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x42
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.string	"DRV83xx_vidReadRegs"
	.byte	0x1
	.uahalf	0x1ec
	.byte	0x1
	.uaword	.LFB17
	.uaword	.LFE17
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x2713
	.uleb128 0x28
	.uaword	.LASF23
	.byte	0x1
	.uahalf	0x1ee
	.uaword	0x1c0
	.uaword	.LLST28
	.uleb128 0x2e
	.uaword	0x1959
	.uaword	.LBB76
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.uahalf	0x1f3
	.uaword	0x26f1
	.uleb128 0x22
	.uaword	0x1980
	.uaword	.LLST29
	.byte	0
	.uleb128 0x2b
	.uaword	0x193e
	.uaword	.LBB80
	.uaword	.LBE80
	.byte	0x1
	.uahalf	0x1f6
	.uleb128 0x2c
	.uaword	.LVL81
	.byte	0x1
	.uaword	0x2982
	.uleb128 0x2d
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x42
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.string	"DRV83xx_vidCacheRestoreFromReg"
	.byte	0x1
	.uahalf	0x1fd
	.byte	0x1
	.uaword	.LFB18
	.uaword	.LFE18
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x2769
	.uleb128 0x28
	.uaword	.LASF23
	.byte	0x1
	.uahalf	0x1ff
	.uaword	0x1c0
	.uaword	.LLST30
	.uleb128 0x2f
	.uaword	0x1991
	.uaword	.LBB82
	.uaword	.LBE82
	.byte	0x1
	.uahalf	0x207
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.string	"DRV83xx_vidClearFaultStatus"
	.byte	0x1
	.uahalf	0x20e
	.byte	0x1
	.uaword	.LFB19
	.uaword	.LFE19
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x26
	.byte	0x1
	.string	"DVR83xx_vidGetFaultRegsVal"
	.byte	0x1
	.uahalf	0x213
	.byte	0x1
	.uaword	.LFB20
	.uaword	.LFE20
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x27e5
	.uleb128 0x31
	.string	"pu8FaultRegsCache"
	.byte	0x1
	.uahalf	0x213
	.uaword	0x27e5
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x32
	.uaword	0x27ea
	.uleb128 0x7
	.byte	0x4
	.uaword	0x1c0
	.uleb128 0x33
	.uaword	0x227
	.uaword	0x2800
	.uleb128 0x34
	.uaword	0x2800
	.byte	0x13
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x35
	.string	"DRV83xxHAL_xRegMapRxBuf"
	.byte	0x4
	.byte	0x30
	.uaword	0x27f0
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.string	"DRV83xxHAL_xRegMapTxBuf"
	.byte	0x4
	.byte	0x31
	.uaword	0x27f0
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.string	"DRV83xx_FaultFuncSet"
	.byte	0x1
	.byte	0x4f
	.uaword	0x2871
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	DRV83xx_FaultFuncSet
	.uleb128 0x32
	.uaword	0x8cd
	.uleb128 0x33
	.uaword	0x17db
	.uaword	0x2886
	.uleb128 0x34
	.uaword	0x2800
	.byte	0x11
	.byte	0
	.uleb128 0x36
	.string	"Reg_Map_Cache"
	.byte	0x1
	.byte	0x3e
	.uaword	0x2876
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Reg_Map_Cache
	.uleb128 0x36
	.string	"Reg_Map_CfgBuf"
	.byte	0x1
	.byte	0x3f
	.uaword	0x2876
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Reg_Map_CfgBuf
	.uleb128 0x36
	.string	"DRV_Control"
	.byte	0x1
	.byte	0x41
	.uaword	0x1870
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	DRV_Control
	.uleb128 0x37
	.uaword	.LASF21
	.byte	0x1
	.byte	0x43
	.uaword	0x1eb
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Register_Counter
	.uleb128 0x33
	.uaword	0x1eb
	.uaword	0x28fb
	.uleb128 0x34
	.uaword	0x2800
	.byte	0xf
	.byte	0
	.uleb128 0x36
	.string	"DRV8343S_Idrive_RegData"
	.byte	0x1
	.byte	0x48
	.uaword	0x2921
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	DRV8343S_Idrive_RegData
	.uleb128 0x32
	.uaword	0x28eb
	.uleb128 0x33
	.uaword	0x1eb
	.uaword	0x2936
	.uleb128 0x34
	.uaword	0x2800
	.byte	0x3
	.byte	0
	.uleb128 0x36
	.string	"DRV8343S_Tdrive_RegData"
	.byte	0x1
	.byte	0x4d
	.uaword	0x295c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	DRV8343S_Tdrive_RegData
	.uleb128 0x32
	.uaword	0x2926
	.uleb128 0x38
	.byte	0x1
	.string	"DRV83xx_u8GetDriverCur"
	.byte	0x4
	.byte	0x2d
	.byte	0x1
	.uaword	0x1c0
	.byte	0x1
	.uleb128 0x39
	.byte	0x1
	.string	"DRV83xxHAL_vidSpiWrite"
	.byte	0x4
	.byte	0x2a
	.byte	0x1
	.byte	0x1
	.uleb128 0x3a
	.uaword	0x1c0
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
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x16
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x17
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x11
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
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x6
	.byte	0x7f
	.sleb128 0
	.byte	0x9
	.byte	0x8f
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0xe
	.byte	0x3
	.uaword	Reg_Map_Cache+4
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9
	.byte	0x8f
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0xb
	.byte	0x3
	.uaword	Reg_Map_Cache+4
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x6
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0x20
	.byte	0x21
	.byte	0x9f
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x11
	.byte	0x3
	.uaword	Reg_Map_Cache+4
	.byte	0x94
	.byte	0x1
	.byte	0x9
	.byte	0x8f
	.byte	0x1a
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x20
	.byte	0x21
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL7
	.uaword	.LVL9
	.uahalf	0xb
	.byte	0x3
	.uaword	Reg_Map_Cache+4
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x6
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0x30
	.byte	0x21
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x11
	.byte	0x3
	.uaword	Reg_Map_Cache+4
	.byte	0x94
	.byte	0x1
	.byte	0x9
	.byte	0x8f
	.byte	0x1a
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x30
	.byte	0x21
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL12
	.uaword	.LVL14
	.uahalf	0xb
	.byte	0x3
	.uaword	Reg_Map_Cache+4
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x6
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0x40
	.byte	0x21
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x11
	.byte	0x3
	.uaword	Reg_Map_Cache+4
	.byte	0x94
	.byte	0x1
	.byte	0x9
	.byte	0x8f
	.byte	0x1a
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x40
	.byte	0x21
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL17
	.uaword	.LVL19
	.uahalf	0xb
	.byte	0x3
	.uaword	Reg_Map_Cache+4
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x6
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0x50
	.byte	0x21
	.byte	0x9f
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x11
	.byte	0x3
	.uaword	Reg_Map_Cache+4
	.byte	0x94
	.byte	0x1
	.byte	0x9
	.byte	0x8f
	.byte	0x1a
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x50
	.byte	0x21
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL22
	.uaword	.LVL24
	.uahalf	0xb
	.byte	0x3
	.uaword	Reg_Map_Cache+4
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL27
	.uaword	.LVL28
	.uahalf	0x6
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0x60
	.byte	0x21
	.byte	0x9f
	.uaword	.LVL28
	.uaword	.LVL29
	.uahalf	0x11
	.byte	0x3
	.uaword	Reg_Map_Cache+4
	.byte	0x94
	.byte	0x1
	.byte	0x9
	.byte	0x8f
	.byte	0x1a
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x60
	.byte	0x21
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL26
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL27
	.uaword	.LVL29
	.uahalf	0xb
	.byte	0x3
	.uaword	Reg_Map_Cache+4
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x6
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0x70
	.byte	0x21
	.byte	0x9f
	.uaword	.LVL33
	.uaword	.LVL34
	.uahalf	0x11
	.byte	0x3
	.uaword	Reg_Map_Cache+4
	.byte	0x94
	.byte	0x1
	.byte	0x9
	.byte	0x8f
	.byte	0x1a
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x70
	.byte	0x21
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL31
	.uaword	.LVL32
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL32
	.uaword	.LVL34
	.uahalf	0xb
	.byte	0x3
	.uaword	Reg_Map_Cache+4
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL36
	.uaword	.LVL37
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL37
	.uaword	.LVL38
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL38
	.uaword	.LVL39
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL39
	.uaword	.LVL40
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL40
	.uaword	.LVL41
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL41
	.uaword	.LVL42
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL42
	.uaword	.LVL43
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	.LVL43
	.uaword	.LVL44
	.uahalf	0x2
	.byte	0x37
	.byte	0x9f
	.uaword	.LVL44
	.uaword	.LVL45
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	.LVL45
	.uaword	.LVL46
	.uahalf	0x2
	.byte	0x39
	.byte	0x9f
	.uaword	.LVL46
	.uaword	.LVL47
	.uahalf	0x2
	.byte	0x3a
	.byte	0x9f
	.uaword	.LVL47
	.uaword	.LVL48
	.uahalf	0x2
	.byte	0x3b
	.byte	0x9f
	.uaword	.LVL48
	.uaword	.LVL49
	.uahalf	0x2
	.byte	0x3c
	.byte	0x9f
	.uaword	.LVL49
	.uaword	.LVL50
	.uahalf	0x2
	.byte	0x3d
	.byte	0x9f
	.uaword	.LVL50
	.uaword	.LVL51
	.uahalf	0x2
	.byte	0x3e
	.byte	0x9f
	.uaword	.LVL51
	.uaword	.LVL52
	.uahalf	0x2
	.byte	0x3f
	.byte	0x9f
	.uaword	.LVL52
	.uaword	.LVL53
	.uahalf	0x2
	.byte	0x40
	.byte	0x9f
	.uaword	.LVL53
	.uaword	.LFE13
	.uahalf	0x2
	.byte	0x41
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL54
	.uaword	.LVL55
	.uahalf	0x2
	.byte	0x40
	.byte	0x9f
	.uaword	.LVL55
	.uaword	.LVL56
	.uahalf	0x2
	.byte	0x41
	.byte	0x9f
	.uaword	.LVL56
	.uaword	.LFE14
	.uahalf	0x2
	.byte	0x42
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL57
	.uaword	.LVL58
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL58
	.uaword	.LVL59
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL59
	.uaword	.LVL60
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	.LVL60
	.uaword	.LVL61
	.uahalf	0x2
	.byte	0x37
	.byte	0x9f
	.uaword	.LVL61
	.uaword	.LVL62
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	.LVL62
	.uaword	.LVL63
	.uahalf	0x2
	.byte	0x39
	.byte	0x9f
	.uaword	.LVL63
	.uaword	.LVL64
	.uahalf	0x2
	.byte	0x3a
	.byte	0x9f
	.uaword	.LVL64
	.uaword	.LVL65
	.uahalf	0x2
	.byte	0x3b
	.byte	0x9f
	.uaword	.LVL65
	.uaword	.LVL66
	.uahalf	0x2
	.byte	0x3c
	.byte	0x9f
	.uaword	.LVL66
	.uaword	.LVL67
	.uahalf	0x2
	.byte	0x3d
	.byte	0x9f
	.uaword	.LVL67
	.uaword	.LVL68
	.uahalf	0x2
	.byte	0x3e
	.byte	0x9f
	.uaword	.LVL68
	.uaword	.LVL69
	.uahalf	0x2
	.byte	0x3f
	.byte	0x9f
	.uaword	.LVL69
	.uaword	.LVL70
	.uahalf	0x2
	.byte	0x40
	.byte	0x9f
	.uaword	.LVL70
	.uaword	.LVL71
	.uahalf	0x2
	.byte	0x41
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL57
	.uaword	.LVL71
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL71
	.uaword	.LFE15
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL72
	.uaword	.LVL73
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL73
	.uaword	.LVL74
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL74
	.uaword	.LVL75
	.uahalf	0x3
	.byte	0x7f
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL75
	.uaword	.LFE16
	.uahalf	0x3
	.byte	0x7f
	.sleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL73
	.uaword	.LVL75
	.uahalf	0xe
	.byte	0x7f
	.sleb128 0
	.byte	0x3
	.uaword	Reg_Map_Cache
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL75
	.uaword	.LVL76-1
	.uahalf	0xe
	.byte	0x7f
	.sleb128 0
	.byte	0x3
	.uaword	Reg_Map_Cache-1
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL73
	.uaword	.LVL75
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL75
	.uaword	.LFE16
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL77
	.uaword	.LVL78
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL78
	.uaword	.LVL79
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL79
	.uaword	.LVL80
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL78
	.uaword	.LVL79
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL79
	.uaword	.LFE17
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL82
	.uaword	.LVL83
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL83
	.uaword	.LVL84
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL84
	.uaword	.LVL85
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x19c
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
	.uaword	.LFB32
	.uaword	.LFE32-.LFB32
	.uaword	.LFB33
	.uaword	.LFE33-.LFB33
	.uaword	.LFB34
	.uaword	.LFE34-.LFB34
	.uaword	.LFB35
	.uaword	.LFE35-.LFB35
	.uaword	.LFB36
	.uaword	.LFE36-.LFB36
	.uaword	.LFB37
	.uaword	.LFE37-.LFB37
	.uaword	.LFB38
	.uaword	.LFE38-.LFB38
	.uaword	.LFB39
	.uaword	.LFE39-.LFB39
	.uaword	.LFB40
	.uaword	.LFE40-.LFB40
	.uaword	.LFB41
	.uaword	.LFE41-.LFB41
	.uaword	.LFB42
	.uaword	.LFE42-.LFB42
	.uaword	.LFB43
	.uaword	.LFE43-.LFB43
	.uaword	.LFB44
	.uaword	.LFE44-.LFB44
	.uaword	.LFB45
	.uaword	.LFE45-.LFB45
	.uaword	.LFB46
	.uaword	.LFE46-.LFB46
	.uaword	.LFB47
	.uaword	.LFE47-.LFB47
	.uaword	.LFB48
	.uaword	.LFE48-.LFB48
	.uaword	.LFB49
	.uaword	.LFE49-.LFB49
	.uaword	.LFB50
	.uaword	.LFE50-.LFB50
	.uaword	.LFB51
	.uaword	.LFE51-.LFB51
	.uaword	.LFB52
	.uaword	.LFE52-.LFB52
	.uaword	.LFB53
	.uaword	.LFE53-.LFB53
	.uaword	.LFB54
	.uaword	.LFE54-.LFB54
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
	.uaword	.LFB5
	.uaword	.LFE5-.LFB5
	.uaword	.LFB6
	.uaword	.LFE6-.LFB6
	.uaword	.LFB7
	.uaword	.LFE7-.LFB7
	.uaword	.LFB8
	.uaword	.LFE8-.LFB8
	.uaword	.LFB9
	.uaword	.LFE9-.LFB9
	.uaword	.LFB10
	.uaword	.LFE10-.LFB10
	.uaword	.LFB11
	.uaword	.LFE11-.LFB11
	.uaword	.LFB12
	.uaword	.LFE12-.LFB12
	.uaword	.LFB13
	.uaword	.LFE13-.LFB13
	.uaword	.LFB14
	.uaword	.LFE14-.LFB14
	.uaword	.LFB15
	.uaword	.LFE15-.LFB15
	.uaword	.LFB16
	.uaword	.LFE16-.LFB16
	.uaword	.LFB17
	.uaword	.LFE17-.LFB17
	.uaword	.LFB18
	.uaword	.LFE18-.LFB18
	.uaword	.LFB19
	.uaword	.LFE19-.LFB19
	.uaword	.LFB20
	.uaword	.LFE20-.LFB20
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB76
	.uaword	.LBE76
	.uaword	.LBB79
	.uaword	.LBE79
	.uaword	0
	.uaword	0
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
	.uaword	.LFB32
	.uaword	.LFE32
	.uaword	.LFB33
	.uaword	.LFE33
	.uaword	.LFB34
	.uaword	.LFE34
	.uaword	.LFB35
	.uaword	.LFE35
	.uaword	.LFB36
	.uaword	.LFE36
	.uaword	.LFB37
	.uaword	.LFE37
	.uaword	.LFB38
	.uaword	.LFE38
	.uaword	.LFB39
	.uaword	.LFE39
	.uaword	.LFB40
	.uaword	.LFE40
	.uaword	.LFB41
	.uaword	.LFE41
	.uaword	.LFB42
	.uaword	.LFE42
	.uaword	.LFB43
	.uaword	.LFE43
	.uaword	.LFB44
	.uaword	.LFE44
	.uaword	.LFB45
	.uaword	.LFE45
	.uaword	.LFB46
	.uaword	.LFE46
	.uaword	.LFB47
	.uaword	.LFE47
	.uaword	.LFB48
	.uaword	.LFE48
	.uaword	.LFB49
	.uaword	.LFE49
	.uaword	.LFB50
	.uaword	.LFE50
	.uaword	.LFB51
	.uaword	.LFE51
	.uaword	.LFB52
	.uaword	.LFE52
	.uaword	.LFB53
	.uaword	.LFE53
	.uaword	.LFB54
	.uaword	.LFE54
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
	.uaword	.LFB5
	.uaword	.LFE5
	.uaword	.LFB6
	.uaword	.LFE6
	.uaword	.LFB7
	.uaword	.LFE7
	.uaword	.LFB8
	.uaword	.LFE8
	.uaword	.LFB9
	.uaword	.LFE9
	.uaword	.LFB10
	.uaword	.LFE10
	.uaword	.LFB11
	.uaword	.LFE11
	.uaword	.LFB12
	.uaword	.LFE12
	.uaword	.LFB13
	.uaword	.LFE13
	.uaword	.LFB14
	.uaword	.LFE14
	.uaword	.LFB15
	.uaword	.LFE15
	.uaword	.LFB16
	.uaword	.LFE16
	.uaword	.LFB17
	.uaword	.LFE17
	.uaword	.LFB18
	.uaword	.LFE18
	.uaword	.LFB19
	.uaword	.LFE19
	.uaword	.LFB20
	.uaword	.LFE20
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF6:
	.string	"DRV_CTRL_IC2_Obj"
.LASF21:
	.string	"Register_Counter"
.LASF12:
	.string	"DRV_CTRL_IC8_Obj"
.LASF10:
	.string	"DRV_CTRL_IC6_Obj"
.LASF17:
	.string	"DRV_CTRL_IC13_Obj"
.LASF20:
	.string	"DRV_Control_Obj"
.LASF16:
	.string	"DRV_CTRL_IC12_Obj"
.LASF1:
	.string	"FLT_STAT_Obj"
.LASF11:
	.string	"DRV_CTRL_IC7_Obj"
.LASF7:
	.string	"DRV_CTRL_IC3_Obj"
.LASF14:
	.string	"DRV_CTRL_IC10_Obj"
.LASF23:
	.string	"u8Index"
.LASF4:
	.string	"DIAG_STAT_C_Obj"
.LASF19:
	.string	"REG_MAP_Obj"
.LASF15:
	.string	"DRV_CTRL_IC11_Obj"
.LASF18:
	.string	"DRV_CTRL_IC14_Obj"
.LASF8:
	.string	"DRV_CTRL_IC4_Obj"
.LASF3:
	.string	"DIAG_STAT_B_Obj"
.LASF0:
	.string	"DRV83xx_FaultIndicateSet"
.LASF22:
	.string	"regValue"
.LASF2:
	.string	"DIAG_STAT_A_Obj"
.LASF13:
	.string	"DRV_CTRL_IC9_Obj"
.LASF9:
	.string	"DRV_CTRL_IC5_Obj"
.LASF5:
	.string	"DRV_CTRL_IC1_Obj"
	.extern	DRV83xxHAL_xRegMapRxBuf,STT_OBJECT,80
	.extern	DRV83xxHAL_vidSpiWrite,STT_FUNC,0
	.extern	DRV83xxHAL_xRegMapTxBuf,STT_OBJECT,80
	.extern	DRV83xx_u8GetDriverCur,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
