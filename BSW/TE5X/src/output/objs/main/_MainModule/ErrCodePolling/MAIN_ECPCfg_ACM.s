	.file	"MAIN_ECPCfg_ACM.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.MAIN_ECP_vidAFSEVBLV_UnderVoltageCallout,"ax",@progbits
	.align 1
	.type	MAIN_ECP_vidAFSEVBLV_UnderVoltageCallout, @function
MAIN_ECP_vidAFSEVBLV_UnderVoltageCallout:
.LFB312:
	.file 1 "main\\_MainModule\\ErrCodePolling\\MAIN_ECPCfg_ACM.c"
	.loc 1 382 0
.LVL0:
.LBB84:
.LBB85:
	.loc 1 266 0
	ld.bu	%d15, [%a4] 11
.LBE85:
.LBE84:
	.loc 1 382 0
	mov.aa	%a15, %a5
.LBB88:
.LBB86:
	.loc 1 266 0
	addsc.a	%a2, %a5, %d15, 0
	ld.bu	%d15, [%a4] 12
	ld.bu	%d2, [%a2]0
	.loc 1 270 0
	mov	%d4, 2
	.loc 1 266 0
	or	%d15, %d2
	st.b	[%a2]0, %d15
	.loc 1 270 0
	ld.bu	%d5, [%a4] 10
.LBE86:
.LBE88:
	.loc 1 386 0
	mov	%d15, 1
.LBB89:
.LBB87:
	.loc 1 270 0
	call	MAIN_REC_vidSetErrCode
.LVL1:
.LBE87:
.LBE89:
	.loc 1 386 0
	st.b	[%a15] 16, %d15
	ret
.LFE312:
	.size	MAIN_ECP_vidAFSEVBLV_UnderVoltageCallout, .-MAIN_ECP_vidAFSEVBLV_UnderVoltageCallout
.section .text.MAIN_ECP_vidAFSEVBLV_OverVoltageCallout,"ax",@progbits
	.align 1
	.type	MAIN_ECP_vidAFSEVBLV_OverVoltageCallout, @function
MAIN_ECP_vidAFSEVBLV_OverVoltageCallout:
.LFB311:
	.loc 1 374 0
.LVL2:
.LBB90:
.LBB91:
	.loc 1 266 0
	ld.bu	%d15, [%a4] 11
.LBE91:
.LBE90:
	.loc 1 374 0
	mov.aa	%a15, %a5
.LBB94:
.LBB92:
	.loc 1 266 0
	addsc.a	%a2, %a5, %d15, 0
	ld.bu	%d15, [%a4] 12
	ld.bu	%d2, [%a2]0
	.loc 1 270 0
	mov	%d4, 2
	.loc 1 266 0
	or	%d15, %d2
	st.b	[%a2]0, %d15
	.loc 1 270 0
	ld.bu	%d5, [%a4] 10
.LBE92:
.LBE94:
	.loc 1 378 0
	mov	%d15, 1
.LBB95:
.LBB93:
	.loc 1 270 0
	call	MAIN_REC_vidSetErrCode
.LVL3:
.LBE93:
.LBE95:
	.loc 1 378 0
	st.b	[%a15] 16, %d15
	ret
.LFE311:
	.size	MAIN_ECP_vidAFSEVBLV_OverVoltageCallout, .-MAIN_ECP_vidAFSEVBLV_OverVoltageCallout
.section .text.MAIN_ECP_vidAFSEVETA_OverTempDrvLeftCallout,"ax",@progbits
	.align 1
	.type	MAIN_ECP_vidAFSEVETA_OverTempDrvLeftCallout, @function
MAIN_ECP_vidAFSEVETA_OverTempDrvLeftCallout:
.LFB316:
	.loc 1 414 0
.LVL4:
.LBB96:
.LBB97:
	.loc 1 266 0
	ld.bu	%d15, [%a4] 11
.LBE97:
.LBE96:
	.loc 1 414 0
	mov.aa	%a15, %a5
.LBB100:
.LBB98:
	.loc 1 266 0
	addsc.a	%a2, %a5, %d15, 0
	ld.bu	%d15, [%a4] 12
	ld.bu	%d2, [%a2]0
	.loc 1 270 0
	mov	%d4, 2
	.loc 1 266 0
	or	%d15, %d2
	st.b	[%a2]0, %d15
	.loc 1 270 0
	ld.bu	%d5, [%a4] 10
.LBE98:
.LBE100:
	.loc 1 418 0
	mov	%d15, 1
.LBB101:
.LBB99:
	.loc 1 270 0
	call	MAIN_REC_vidSetErrCode
.LVL5:
.LBE99:
.LBE101:
	.loc 1 418 0
	st.b	[%a15] 16, %d15
	ret
.LFE316:
	.size	MAIN_ECP_vidAFSEVETA_OverTempDrvLeftCallout, .-MAIN_ECP_vidAFSEVETA_OverTempDrvLeftCallout
.section .text.MAIN_ECP_vidAFSEVETA_OverTempNTC1CmdBoardCallout,"ax",@progbits
	.align 1
	.type	MAIN_ECP_vidAFSEVETA_OverTempNTC1CmdBoardCallout, @function
MAIN_ECP_vidAFSEVETA_OverTempNTC1CmdBoardCallout:
.LFB315:
	.loc 1 406 0
.LVL6:
.LBB102:
.LBB103:
	.loc 1 266 0
	ld.bu	%d15, [%a4] 11
.LBE103:
.LBE102:
	.loc 1 406 0
	mov.aa	%a15, %a5
.LBB106:
.LBB104:
	.loc 1 266 0
	addsc.a	%a2, %a5, %d15, 0
	ld.bu	%d15, [%a4] 12
	ld.bu	%d2, [%a2]0
	.loc 1 270 0
	mov	%d4, 2
	.loc 1 266 0
	or	%d15, %d2
	st.b	[%a2]0, %d15
	.loc 1 270 0
	ld.bu	%d5, [%a4] 10
.LBE104:
.LBE106:
	.loc 1 410 0
	mov	%d15, 1
.LBB107:
.LBB105:
	.loc 1 270 0
	call	MAIN_REC_vidSetErrCode
.LVL7:
.LBE105:
.LBE107:
	.loc 1 410 0
	st.b	[%a15] 16, %d15
	ret
.LFE315:
	.size	MAIN_ECP_vidAFSEVETA_OverTempNTC1CmdBoardCallout, .-MAIN_ECP_vidAFSEVETA_OverTempNTC1CmdBoardCallout
.section .text.MAIN_ECP_vidAFSEVBLV_P5VRefADCFltCallout,"ax",@progbits
	.align 1
	.type	MAIN_ECP_vidAFSEVBLV_P5VRefADCFltCallout, @function
MAIN_ECP_vidAFSEVBLV_P5VRefADCFltCallout:
.LFB313:
	.loc 1 390 0
.LVL8:
.LBB108:
.LBB109:
	.loc 1 266 0
	ld.bu	%d15, [%a4] 11
.LBE109:
.LBE108:
	.loc 1 390 0
	mov.aa	%a15, %a5
.LBB112:
.LBB110:
	.loc 1 266 0
	addsc.a	%a2, %a5, %d15, 0
	ld.bu	%d15, [%a4] 12
	ld.bu	%d2, [%a2]0
	.loc 1 270 0
	mov	%d4, 2
	.loc 1 266 0
	or	%d15, %d2
	st.b	[%a2]0, %d15
	.loc 1 270 0
	ld.bu	%d5, [%a4] 10
.LBE110:
.LBE112:
	.loc 1 394 0
	mov	%d15, 1
.LBB113:
.LBB111:
	.loc 1 270 0
	call	MAIN_REC_vidSetErrCode
.LVL9:
.LBE111:
.LBE113:
	.loc 1 394 0
	st.b	[%a15] 16, %d15
	ret
.LFE313:
	.size	MAIN_ECP_vidAFSEVBLV_P5VRefADCFltCallout, .-MAIN_ECP_vidAFSEVBLV_P5VRefADCFltCallout
.section .text.MAIN_ECP_vidAFTASOSP_MotorSpdDeratingActCallout,"ax",@progbits
	.align 1
	.type	MAIN_ECP_vidAFTASOSP_MotorSpdDeratingActCallout, @function
MAIN_ECP_vidAFTASOSP_MotorSpdDeratingActCallout:
.LFB337:
	.loc 1 582 0
.LVL10:
.LBB114:
.LBB115:
	.loc 1 266 0
	ld.bu	%d15, [%a4] 11
.LBE115:
.LBE114:
	.loc 1 582 0
	mov.aa	%a15, %a5
.LBB118:
.LBB116:
	.loc 1 266 0
	addsc.a	%a2, %a5, %d15, 0
	ld.bu	%d15, [%a4] 12
	ld.bu	%d2, [%a2]0
	.loc 1 270 0
	mov	%d4, 2
	.loc 1 266 0
	or	%d15, %d2
	st.b	[%a2]0, %d15
	.loc 1 270 0
	ld.bu	%d5, [%a4] 10
.LBE116:
.LBE118:
	.loc 1 586 0
	mov	%d15, 1
.LBB119:
.LBB117:
	.loc 1 270 0
	call	MAIN_REC_vidSetErrCode
.LVL11:
.LBE117:
.LBE119:
	.loc 1 586 0
	st.b	[%a15] 16, %d15
	ret
.LFE337:
	.size	MAIN_ECP_vidAFTASOSP_MotorSpdDeratingActCallout, .-MAIN_ECP_vidAFTASOSP_MotorSpdDeratingActCallout
.section .text.MAIN_ECP_vidABSW_COM_TimoutRxVCUCallout,"ax",@progbits
	.align 1
	.type	MAIN_ECP_vidABSW_COM_TimoutRxVCUCallout, @function
MAIN_ECP_vidABSW_COM_TimoutRxVCUCallout:
.LFB306:
	.loc 1 334 0
.LVL12:
.LBB120:
.LBB121:
	.loc 1 266 0
	ld.bu	%d15, [%a4] 11
.LBE121:
.LBE120:
	.loc 1 334 0
	mov.aa	%a15, %a5
.LBB124:
.LBB122:
	.loc 1 266 0
	addsc.a	%a2, %a5, %d15, 0
	ld.bu	%d15, [%a4] 12
	ld.bu	%d2, [%a2]0
	.loc 1 270 0
	mov	%d4, 2
	.loc 1 266 0
	or	%d15, %d2
	st.b	[%a2]0, %d15
	.loc 1 270 0
	ld.bu	%d5, [%a4] 10
.LBE122:
.LBE124:
	.loc 1 338 0
	mov	%d15, 1
.LBB125:
.LBB123:
	.loc 1 270 0
	call	MAIN_REC_vidSetErrCode
.LVL13:
.LBE123:
.LBE125:
	.loc 1 338 0
	st.b	[%a15] 16, %d15
	ret
.LFE306:
	.size	MAIN_ECP_vidABSW_COM_TimoutRxVCUCallout, .-MAIN_ECP_vidABSW_COM_TimoutRxVCUCallout
.section .text.MAIN_ECP_vidABSW_COM_BusOff_CAN1Callout,"ax",@progbits
	.align 1
	.type	MAIN_ECP_vidABSW_COM_BusOff_CAN1Callout, @function
MAIN_ECP_vidABSW_COM_BusOff_CAN1Callout:
.LFB305:
	.loc 1 326 0
.LVL14:
.LBB126:
.LBB127:
	.loc 1 266 0
	ld.bu	%d15, [%a4] 11
.LBE127:
.LBE126:
	.loc 1 326 0
	mov.aa	%a15, %a5
.LBB130:
.LBB128:
	.loc 1 266 0
	addsc.a	%a2, %a5, %d15, 0
	ld.bu	%d15, [%a4] 12
	ld.bu	%d2, [%a2]0
	.loc 1 270 0
	mov	%d4, 2
	.loc 1 266 0
	or	%d15, %d2
	st.b	[%a2]0, %d15
	.loc 1 270 0
	ld.bu	%d5, [%a4] 10
.LBE128:
.LBE130:
	.loc 1 330 0
	mov	%d15, 1
.LBB131:
.LBB129:
	.loc 1 270 0
	call	MAIN_REC_vidSetErrCode
.LVL15:
.LBE129:
.LBE131:
	.loc 1 330 0
	st.b	[%a15] 16, %d15
	ret
.LFE305:
	.size	MAIN_ECP_vidABSW_COM_BusOff_CAN1Callout, .-MAIN_ECP_vidABSW_COM_BusOff_CAN1Callout
.section .text.MAIN_ECP_vidAFTCMSCS_SpeedDiffCallout,"ax",@progbits
	.align 1
	.type	MAIN_ECP_vidAFTCMSCS_SpeedDiffCallout, @function
MAIN_ECP_vidAFTCMSCS_SpeedDiffCallout:
.LFB338:
	.loc 1 590 0
.LVL16:
.LBB132:
.LBB133:
	.loc 1 266 0
	ld.bu	%d15, [%a4] 11
.LBE133:
.LBE132:
	.loc 1 590 0
	mov.aa	%a15, %a5
.LBB136:
.LBB134:
	.loc 1 266 0
	addsc.a	%a2, %a5, %d15, 0
	ld.bu	%d15, [%a4] 12
	ld.bu	%d2, [%a2]0
	.loc 1 270 0
	mov	%d4, 2
	.loc 1 266 0
	or	%d15, %d2
	st.b	[%a2]0, %d15
	.loc 1 270 0
	ld.bu	%d5, [%a4] 10
.LBE134:
.LBE136:
	.loc 1 594 0
	mov	%d15, 1
.LBB137:
.LBB135:
	.loc 1 270 0
	call	MAIN_REC_vidSetErrCode
.LVL17:
.LBE135:
.LBE137:
	.loc 1 594 0
	st.b	[%a15] 18, %d15
	ret
.LFE338:
	.size	MAIN_ECP_vidAFTCMSCS_SpeedDiffCallout, .-MAIN_ECP_vidAFTCMSCS_SpeedDiffCallout
.section .text.MAIN_ECP_vidAFTSLOBS_SpeedImbalanceCallout,"ax",@progbits
	.align 1
	.type	MAIN_ECP_vidAFTSLOBS_SpeedImbalanceCallout, @function
MAIN_ECP_vidAFTSLOBS_SpeedImbalanceCallout:
.LFB339:
	.loc 1 598 0
.LVL18:
.LBB138:
.LBB139:
	.loc 1 266 0
	ld.bu	%d15, [%a4] 11
.LBE139:
.LBE138:
	.loc 1 598 0
	mov.aa	%a15, %a5
.LBB142:
.LBB140:
	.loc 1 266 0
	addsc.a	%a2, %a5, %d15, 0
	ld.bu	%d15, [%a4] 12
	ld.bu	%d2, [%a2]0
	.loc 1 270 0
	mov	%d4, 2
	.loc 1 266 0
	or	%d15, %d2
	st.b	[%a2]0, %d15
	.loc 1 270 0
	ld.bu	%d5, [%a4] 10
.LBE140:
.LBE142:
	.loc 1 602 0
	mov	%d15, 1
.LBB143:
.LBB141:
	.loc 1 270 0
	call	MAIN_REC_vidSetErrCode
.LVL19:
.LBE141:
.LBE143:
	.loc 1 602 0
	st.b	[%a15] 18, %d15
	ret
.LFE339:
	.size	MAIN_ECP_vidAFTSLOBS_SpeedImbalanceCallout, .-MAIN_ECP_vidAFTSLOBS_SpeedImbalanceCallout
.section .text.MAIN_ECP_vidAFTMTLCS_MotorOverLoadCallout,"ax",@progbits
	.align 1
	.type	MAIN_ECP_vidAFTMTLCS_MotorOverLoadCallout, @function
MAIN_ECP_vidAFTMTLCS_MotorOverLoadCallout:
.LFB331:
	.loc 1 534 0
.LVL20:
.LBB144:
.LBB145:
	.loc 1 266 0
	ld.bu	%d15, [%a4] 11
.LBE145:
.LBE144:
	.loc 1 534 0
	mov.aa	%a15, %a5
.LBB148:
.LBB146:
	.loc 1 266 0
	addsc.a	%a2, %a5, %d15, 0
	ld.bu	%d15, [%a4] 12
	ld.bu	%d2, [%a2]0
	.loc 1 270 0
	mov	%d4, 2
	.loc 1 266 0
	or	%d15, %d2
	st.b	[%a2]0, %d15
	.loc 1 270 0
	ld.bu	%d5, [%a4] 10
.LBE146:
.LBE148:
	.loc 1 538 0
	mov	%d15, 1
.LBB149:
.LBB147:
	.loc 1 270 0
	call	MAIN_REC_vidSetErrCode
.LVL21:
.LBE147:
.LBE149:
	.loc 1 538 0
	st.b	[%a15] 17, %d15
	ret
.LFE331:
	.size	MAIN_ECP_vidAFTMTLCS_MotorOverLoadCallout, .-MAIN_ECP_vidAFTMTLCS_MotorOverLoadCallout
.section .text.MAIN_ECP_vidAFTMTLCS_ContorOverLoadCallout,"ax",@progbits
	.align 1
	.type	MAIN_ECP_vidAFTMTLCS_ContorOverLoadCallout, @function
MAIN_ECP_vidAFTMTLCS_ContorOverLoadCallout:
.LFB330:
	.loc 1 526 0
.LVL22:
.LBB150:
.LBB151:
	.loc 1 266 0
	ld.bu	%d15, [%a4] 11
.LBE151:
.LBE150:
	.loc 1 526 0
	mov.aa	%a15, %a5
.LBB154:
.LBB152:
	.loc 1 266 0
	addsc.a	%a2, %a5, %d15, 0
	ld.bu	%d15, [%a4] 12
	ld.bu	%d2, [%a2]0
	.loc 1 270 0
	mov	%d4, 2
	.loc 1 266 0
	or	%d15, %d2
	st.b	[%a2]0, %d15
	.loc 1 270 0
	ld.bu	%d5, [%a4] 10
.LBE152:
.LBE154:
	.loc 1 530 0
	mov	%d15, 1
.LBB155:
.LBB153:
	.loc 1 270 0
	call	MAIN_REC_vidSetErrCode
.LVL23:
.LBE153:
.LBE155:
	.loc 1 530 0
	st.b	[%a15] 17, %d15
	ret
.LFE330:
	.size	MAIN_ECP_vidAFTMTLCS_ContorOverLoadCallout, .-MAIN_ECP_vidAFTMTLCS_ContorOverLoadCallout
.section .text.MAIN_ECP_vidAFSMTMTA_TempWindingHead1VccCallout,"ax",@progbits
	.align 1
	.type	MAIN_ECP_vidAFSMTMTA_TempWindingHead1VccCallout, @function
MAIN_ECP_vidAFSMTMTA_TempWindingHead1VccCallout:
.LFB322:
	.loc 1 462 0
.LVL24:
.LBB156:
.LBB157:
	.loc 1 266 0
	ld.bu	%d15, [%a4] 11
.LBE157:
.LBE156:
	.loc 1 462 0
	mov.aa	%a15, %a5
.LBB160:
.LBB158:
	.loc 1 266 0
	addsc.a	%a2, %a5, %d15, 0
	ld.bu	%d15, [%a4] 12
	ld.bu	%d2, [%a2]0
	.loc 1 270 0
	mov	%d4, 2
	.loc 1 266 0
	or	%d15, %d2
	st.b	[%a2]0, %d15
	.loc 1 270 0
	ld.bu	%d5, [%a4] 10
.LBE158:
.LBE160:
	.loc 1 466 0
	mov	%d15, 1
.LBB161:
.LBB159:
	.loc 1 270 0
	call	MAIN_REC_vidSetErrCode
.LVL25:
.LBE159:
.LBE161:
	.loc 1 466 0
	st.b	[%a15] 18, %d15
	ret
.LFE322:
	.size	MAIN_ECP_vidAFSMTMTA_TempWindingHead1VccCallout, .-MAIN_ECP_vidAFSMTMTA_TempWindingHead1VccCallout
.section .text.MAIN_ECP_vidAFSMTMTA_TempWindingHead1GndCallout,"ax",@progbits
	.align 1
	.type	MAIN_ECP_vidAFSMTMTA_TempWindingHead1GndCallout, @function
MAIN_ECP_vidAFSMTMTA_TempWindingHead1GndCallout:
.LFB321:
	.loc 1 454 0
.LVL26:
.LBB162:
.LBB163:
	.loc 1 266 0
	ld.bu	%d15, [%a4] 11
.LBE163:
.LBE162:
	.loc 1 454 0
	mov.aa	%a15, %a5
.LBB166:
.LBB164:
	.loc 1 266 0
	addsc.a	%a2, %a5, %d15, 0
	ld.bu	%d15, [%a4] 12
	ld.bu	%d2, [%a2]0
	.loc 1 270 0
	mov	%d4, 2
	.loc 1 266 0
	or	%d15, %d2
	st.b	[%a2]0, %d15
	.loc 1 270 0
	ld.bu	%d5, [%a4] 10
.LBE164:
.LBE166:
	.loc 1 458 0
	mov	%d15, 1
.LBB167:
.LBB165:
	.loc 1 270 0
	call	MAIN_REC_vidSetErrCode
.LVL27:
.LBE165:
.LBE167:
	.loc 1 458 0
	st.b	[%a15] 18, %d15
	ret
.LFE321:
	.size	MAIN_ECP_vidAFSMTMTA_TempWindingHead1GndCallout, .-MAIN_ECP_vidAFSMTMTA_TempWindingHead1GndCallout
.section .text.MAIN_ECP_vidAFTASMTP_Wndg1DeratingActCallout,"ax",@progbits
	.align 1
	.type	MAIN_ECP_vidAFTASMTP_Wndg1DeratingActCallout, @function
MAIN_ECP_vidAFTASMTP_Wndg1DeratingActCallout:
.LFB336:
	.loc 1 574 0
.LVL28:
.LBB168:
.LBB169:
	.loc 1 266 0
	ld.bu	%d15, [%a4] 11
.LBE169:
.LBE168:
	.loc 1 574 0
	mov.aa	%a15, %a5
.LBB172:
.LBB170:
	.loc 1 266 0
	addsc.a	%a2, %a5, %d15, 0
	ld.bu	%d15, [%a4] 12
	ld.bu	%d2, [%a2]0
	.loc 1 270 0
	mov	%d4, 2
	.loc 1 266 0
	or	%d15, %d2
	st.b	[%a2]0, %d15
	.loc 1 270 0
	ld.bu	%d5, [%a4] 10
.LBE170:
.LBE172:
	.loc 1 578 0
	mov	%d15, 1
.LBB173:
.LBB171:
	.loc 1 270 0
	call	MAIN_REC_vidSetErrCode
.LVL29:
.LBE171:
.LBE173:
	.loc 1 578 0
	st.b	[%a15] 18, %d15
	ret
.LFE336:
	.size	MAIN_ECP_vidAFTASMTP_Wndg1DeratingActCallout, .-MAIN_ECP_vidAFTASMTP_Wndg1DeratingActCallout
.section .text.MAIN_ECP_vidAFSMTMTA_OverTempWdgHead1Callout,"ax",@progbits
	.align 1
	.type	MAIN_ECP_vidAFSMTMTA_OverTempWdgHead1Callout, @function
MAIN_ECP_vidAFSMTMTA_OverTempWdgHead1Callout:
.LFB318:
	.loc 1 430 0
.LVL30:
.LBB174:
.LBB175:
	.loc 1 266 0
	ld.bu	%d15, [%a4] 11
.LBE175:
.LBE174:
	.loc 1 430 0
	mov.aa	%a15, %a5
.LBB178:
.LBB176:
	.loc 1 266 0
	addsc.a	%a2, %a5, %d15, 0
	ld.bu	%d15, [%a4] 12
	ld.bu	%d2, [%a2]0
	.loc 1 270 0
	mov	%d4, 2
	.loc 1 266 0
	or	%d15, %d2
	st.b	[%a2]0, %d15
	.loc 1 270 0
	ld.bu	%d5, [%a4] 10
.LBE176:
.LBE178:
	.loc 1 434 0
	mov	%d15, 1
.LBB179:
.LBB177:
	.loc 1 270 0
	call	MAIN_REC_vidSetErrCode
.LVL31:
.LBE177:
.LBE179:
	.loc 1 434 0
	st.b	[%a15] 18, %d15
	ret
.LFE318:
	.size	MAIN_ECP_vidAFSMTMTA_OverTempWdgHead1Callout, .-MAIN_ECP_vidAFSMTMTA_OverTempWdgHead1Callout
.section .text.MAIN_ECP_vidAFTMTLCS_RunForLongTimeCallout,"ax",@progbits
	.align 1
	.type	MAIN_ECP_vidAFTMTLCS_RunForLongTimeCallout, @function
MAIN_ECP_vidAFTMTLCS_RunForLongTimeCallout:
.LFB332:
	.loc 1 542 0
.LVL32:
.LBB180:
.LBB181:
	.loc 1 266 0
	ld.bu	%d15, [%a4] 11
.LBE181:
.LBE180:
	.loc 1 542 0
	mov.aa	%a15, %a5
.LBB184:
.LBB182:
	.loc 1 266 0
	addsc.a	%a2, %a5, %d15, 0
	ld.bu	%d15, [%a4] 12
	ld.bu	%d2, [%a2]0
	.loc 1 270 0
	mov	%d4, 2
	.loc 1 266 0
	or	%d15, %d2
	st.b	[%a2]0, %d15
	.loc 1 270 0
	ld.bu	%d5, [%a4] 10
.LBE182:
.LBE184:
	.loc 1 546 0
	mov	%d15, 1
.LBB185:
.LBB183:
	.loc 1 270 0
	call	MAIN_REC_vidSetErrCode
.LVL33:
.LBE183:
.LBE185:
	.loc 1 546 0
	st.b	[%a15] 17, %d15
	ret
.LFE332:
	.size	MAIN_ECP_vidAFTMTLCS_RunForLongTimeCallout, .-MAIN_ECP_vidAFTMTLCS_RunForLongTimeCallout
.section .text.MAIN_ECP_vidAFSEVBHV_UnderVoltageCallout,"ax",@progbits
	.align 1
	.type	MAIN_ECP_vidAFSEVBHV_UnderVoltageCallout, @function
MAIN_ECP_vidAFSEVBHV_UnderVoltageCallout:
.LFB308:
	.loc 1 350 0
.LVL34:
.LBB186:
.LBB187:
	.loc 1 266 0
	ld.bu	%d15, [%a4] 11
.LBE187:
.LBE186:
	.loc 1 350 0
	mov.aa	%a15, %a5
.LBB190:
.LBB188:
	.loc 1 266 0
	addsc.a	%a2, %a5, %d15, 0
	ld.bu	%d15, [%a4] 12
	ld.bu	%d2, [%a2]0
	.loc 1 270 0
	mov	%d4, 2
	.loc 1 266 0
	or	%d15, %d2
	st.b	[%a2]0, %d15
	.loc 1 270 0
	ld.bu	%d5, [%a4] 10
.LBE188:
.LBE190:
	.loc 1 354 0
	mov	%d15, 1
.LBB191:
.LBB189:
	.loc 1 270 0
	call	MAIN_REC_vidSetErrCode
.LVL35:
.LBE189:
.LBE191:
	.loc 1 354 0
	st.b	[%a15] 18, %d15
	ret
.LFE308:
	.size	MAIN_ECP_vidAFSEVBHV_UnderVoltageCallout, .-MAIN_ECP_vidAFSEVBHV_UnderVoltageCallout
.section .text.MAIN_ECP_vidAFSEVBHV_VoltageGndCallout,"ax",@progbits
	.align 1
	.type	MAIN_ECP_vidAFSEVBHV_VoltageGndCallout, @function
MAIN_ECP_vidAFSEVBHV_VoltageGndCallout:
.LFB310:
	.loc 1 366 0
.LVL36:
.LBB192:
.LBB193:
	.loc 1 266 0
	ld.bu	%d15, [%a4] 11
.LBE193:
.LBE192:
	.loc 1 366 0
	mov.aa	%a15, %a5
.LBB196:
.LBB194:
	.loc 1 266 0
	addsc.a	%a2, %a5, %d15, 0
	ld.bu	%d15, [%a4] 12
	ld.bu	%d2, [%a2]0
	.loc 1 270 0
	mov	%d4, 2
	.loc 1 266 0
	or	%d15, %d2
	st.b	[%a2]0, %d15
	.loc 1 270 0
	ld.bu	%d5, [%a4] 10
.LBE194:
.LBE196:
	.loc 1 370 0
	mov	%d15, 1
.LBB197:
.LBB195:
	.loc 1 270 0
	call	MAIN_REC_vidSetErrCode
.LVL37:
.LBE195:
.LBE197:
	.loc 1 370 0
	st.b	[%a15] 18, %d15
	ret
.LFE310:
	.size	MAIN_ECP_vidAFSEVBHV_VoltageGndCallout, .-MAIN_ECP_vidAFSEVBHV_VoltageGndCallout
.section .text.MAIN_ECP_vidAFTASBDS_BattVoltDeratingActCallout,"ax",@progbits
	.align 1
	.type	MAIN_ECP_vidAFTASBDS_BattVoltDeratingActCallout, @function
MAIN_ECP_vidAFTASBDS_BattVoltDeratingActCallout:
.LFB334:
	.loc 1 558 0
.LVL38:
.LBB198:
.LBB199:
	.loc 1 266 0
	ld.bu	%d15, [%a4] 11
.LBE199:
.LBE198:
	.loc 1 558 0
	mov.aa	%a15, %a5
.LBB202:
.LBB200:
	.loc 1 266 0
	addsc.a	%a2, %a5, %d15, 0
	ld.bu	%d15, [%a4] 12
	ld.bu	%d2, [%a2]0
	.loc 1 270 0
	mov	%d4, 2
	.loc 1 266 0
	or	%d15, %d2
	st.b	[%a2]0, %d15
	.loc 1 270 0
	ld.bu	%d5, [%a4] 10
.LBE200:
.LBE202:
	.loc 1 562 0
	mov	%d15, 1
.LBB203:
.LBB201:
	.loc 1 270 0
	call	MAIN_REC_vidSetErrCode
.LVL39:
.LBE201:
.LBE203:
	.loc 1 562 0
	st.b	[%a15] 18, %d15
	ret
.LFE334:
	.size	MAIN_ECP_vidAFTASBDS_BattVoltDeratingActCallout, .-MAIN_ECP_vidAFTASBDS_BattVoltDeratingActCallout
.section .text.MAIN_ECP_vidAFSEVBHV_OverVoltageCallout,"ax",@progbits
	.align 1
	.type	MAIN_ECP_vidAFSEVBHV_OverVoltageCallout, @function
MAIN_ECP_vidAFSEVBHV_OverVoltageCallout:
.LFB307:
	.loc 1 342 0
.LVL40:
.LBB204:
.LBB205:
	.loc 1 266 0
	ld.bu	%d15, [%a4] 11
.LBE205:
.LBE204:
	.loc 1 342 0
	mov.aa	%a15, %a5
.LBB208:
.LBB206:
	.loc 1 266 0
	addsc.a	%a2, %a5, %d15, 0
	ld.bu	%d15, [%a4] 12
	ld.bu	%d2, [%a2]0
	.loc 1 270 0
	mov	%d4, 2
	.loc 1 266 0
	or	%d15, %d2
	st.b	[%a2]0, %d15
	.loc 1 270 0
	ld.bu	%d5, [%a4] 10
.LBE206:
.LBE208:
	.loc 1 346 0
	mov	%d15, 1
.LBB209:
.LBB207:
	.loc 1 270 0
	call	MAIN_REC_vidSetErrCode
.LVL41:
.LBE207:
.LBE209:
	.loc 1 346 0
	st.b	[%a15] 18, %d15
	ret
.LFE307:
	.size	MAIN_ECP_vidAFSEVBHV_OverVoltageCallout, .-MAIN_ECP_vidAFSEVBHV_OverVoltageCallout
.section .text.MAIN_ECP_vidAFSEVBHV_VoltageVccCallout,"ax",@progbits
	.align 1
	.type	MAIN_ECP_vidAFSEVBHV_VoltageVccCallout, @function
MAIN_ECP_vidAFSEVBHV_VoltageVccCallout:
.LFB309:
	.loc 1 358 0
.LVL42:
.LBB210:
.LBB211:
	.loc 1 266 0
	ld.bu	%d15, [%a4] 11
.LBE211:
.LBE210:
	.loc 1 358 0
	mov.aa	%a15, %a5
.LBB214:
.LBB212:
	.loc 1 266 0
	addsc.a	%a2, %a5, %d15, 0
	ld.bu	%d15, [%a4] 12
	ld.bu	%d2, [%a2]0
	.loc 1 270 0
	mov	%d4, 2
	.loc 1 266 0
	or	%d15, %d2
	st.b	[%a2]0, %d15
	.loc 1 270 0
	ld.bu	%d5, [%a4] 10
.LBE212:
.LBE214:
	.loc 1 362 0
	mov	%d15, 1
.LBB215:
.LBB213:
	.loc 1 270 0
	call	MAIN_REC_vidSetErrCode
.LVL43:
.LBE213:
.LBE215:
	.loc 1 362 0
	st.b	[%a15] 18, %d15
	ret
.LFE309:
	.size	MAIN_ECP_vidAFSEVBHV_VoltageVccCallout, .-MAIN_ECP_vidAFSEVBHV_VoltageVccCallout
.section .text.MAIN_ECP_vidABSW_HW2_FPGA_OverVoltVBatCallout,"ax",@progbits
	.align 1
	.type	MAIN_ECP_vidABSW_HW2_FPGA_OverVoltVBatCallout, @function
MAIN_ECP_vidABSW_HW2_FPGA_OverVoltVBatCallout:
.LFB304:
	.loc 1 318 0
.LVL44:
.LBB216:
.LBB217:
	.loc 1 266 0
	ld.bu	%d15, [%a4] 11
.LBE217:
.LBE216:
	.loc 1 318 0
	mov.aa	%a15, %a5
.LBB220:
.LBB218:
	.loc 1 266 0
	addsc.a	%a2, %a5, %d15, 0
	ld.bu	%d15, [%a4] 12
	ld.bu	%d2, [%a2]0
	.loc 1 270 0
	mov	%d4, 2
	.loc 1 266 0
	or	%d15, %d2
	st.b	[%a2]0, %d15
	.loc 1 270 0
	ld.bu	%d5, [%a4] 10
.LBE218:
.LBE220:
	.loc 1 322 0
	mov	%d15, 1
.LBB221:
.LBB219:
	.loc 1 270 0
	call	MAIN_REC_vidSetErrCode
.LVL45:
.LBE219:
.LBE221:
	.loc 1 322 0
	st.b	[%a15] 18, %d15
	ret
.LFE304:
	.size	MAIN_ECP_vidABSW_HW2_FPGA_OverVoltVBatCallout, .-MAIN_ECP_vidABSW_HW2_FPGA_OverVoltVBatCallout
.section .text.MAIN_ECP_vidAFSEVETA_TempIgbtLeftGndCallout,"ax",@progbits
	.align 1
	.type	MAIN_ECP_vidAFSEVETA_TempIgbtLeftGndCallout, @function
MAIN_ECP_vidAFSEVETA_TempIgbtLeftGndCallout:
.LFB319:
	.loc 1 438 0
.LVL46:
.LBB222:
.LBB223:
	.loc 1 266 0
	ld.bu	%d15, [%a4] 11
.LBE223:
.LBE222:
	.loc 1 438 0
	mov.aa	%a15, %a5
.LBB226:
.LBB224:
	.loc 1 266 0
	addsc.a	%a2, %a5, %d15, 0
	ld.bu	%d15, [%a4] 12
	ld.bu	%d2, [%a2]0
	.loc 1 270 0
	mov	%d4, 2
	.loc 1 266 0
	or	%d15, %d2
	st.b	[%a2]0, %d15
	.loc 1 270 0
	ld.bu	%d5, [%a4] 10
.LBE224:
.LBE226:
	.loc 1 442 0
	mov	%d15, 1
.LBB227:
.LBB225:
	.loc 1 270 0
	call	MAIN_REC_vidSetErrCode
.LVL47:
.LBE225:
.LBE227:
	.loc 1 442 0
	st.b	[%a15] 17, %d15
	ret
.LFE319:
	.size	MAIN_ECP_vidAFSEVETA_TempIgbtLeftGndCallout, .-MAIN_ECP_vidAFSEVETA_TempIgbtLeftGndCallout
.section .text.MAIN_ECP_vidAFSEVETA_TempIgbtLeftVccCallout,"ax",@progbits
	.align 1
	.type	MAIN_ECP_vidAFSEVETA_TempIgbtLeftVccCallout, @function
MAIN_ECP_vidAFSEVETA_TempIgbtLeftVccCallout:
.LFB320:
	.loc 1 446 0
.LVL48:
.LBB228:
.LBB229:
	.loc 1 266 0
	ld.bu	%d15, [%a4] 11
.LBE229:
.LBE228:
	.loc 1 446 0
	mov.aa	%a15, %a5
.LBB232:
.LBB230:
	.loc 1 266 0
	addsc.a	%a2, %a5, %d15, 0
	ld.bu	%d15, [%a4] 12
	ld.bu	%d2, [%a2]0
	.loc 1 270 0
	mov	%d4, 2
	.loc 1 266 0
	or	%d15, %d2
	st.b	[%a2]0, %d15
	.loc 1 270 0
	ld.bu	%d5, [%a4] 10
.LBE230:
.LBE232:
	.loc 1 450 0
	mov	%d15, 1
.LBB233:
.LBB231:
	.loc 1 270 0
	call	MAIN_REC_vidSetErrCode
.LVL49:
.LBE231:
.LBE233:
	.loc 1 450 0
	st.b	[%a15] 17, %d15
	ret
.LFE320:
	.size	MAIN_ECP_vidAFSEVETA_TempIgbtLeftVccCallout, .-MAIN_ECP_vidAFSEVETA_TempIgbtLeftVccCallout
.section .text.MAIN_ECP_vidAFSEVETA_OverTempIgbtLeftCallout,"ax",@progbits
	.align 1
	.type	MAIN_ECP_vidAFSEVETA_OverTempIgbtLeftCallout, @function
MAIN_ECP_vidAFSEVETA_OverTempIgbtLeftCallout:
.LFB317:
	.loc 1 422 0
.LVL50:
.LBB234:
.LBB235:
	.loc 1 266 0
	ld.bu	%d15, [%a4] 11
.LBE235:
.LBE234:
	.loc 1 422 0
	mov.aa	%a15, %a5
.LBB238:
.LBB236:
	.loc 1 266 0
	addsc.a	%a2, %a5, %d15, 0
	ld.bu	%d15, [%a4] 12
	ld.bu	%d2, [%a2]0
	.loc 1 270 0
	mov	%d4, 2
	.loc 1 266 0
	or	%d15, %d2
	st.b	[%a2]0, %d15
	.loc 1 270 0
	ld.bu	%d5, [%a4] 10
.LBE236:
.LBE238:
	.loc 1 426 0
	mov	%d15, 1
.LBB239:
.LBB237:
	.loc 1 270 0
	call	MAIN_REC_vidSetErrCode
.LVL51:
.LBE237:
.LBE239:
	.loc 1 426 0
	st.b	[%a15] 18, %d15
	ret
.LFE317:
	.size	MAIN_ECP_vidAFSEVETA_OverTempIgbtLeftCallout, .-MAIN_ECP_vidAFSEVETA_OverTempIgbtLeftCallout
.section .text.MAIN_ECP_vidAFSEVETA_IgbtTempRationalCallout,"ax",@progbits
	.align 1
	.type	MAIN_ECP_vidAFSEVETA_IgbtTempRationalCallout, @function
MAIN_ECP_vidAFSEVETA_IgbtTempRationalCallout:
.LFB314:
	.loc 1 398 0
.LVL52:
.LBB240:
.LBB241:
	.loc 1 266 0
	ld.bu	%d15, [%a4] 11
.LBE241:
.LBE240:
	.loc 1 398 0
	mov.aa	%a15, %a5
.LBB244:
.LBB242:
	.loc 1 266 0
	addsc.a	%a2, %a5, %d15, 0
	ld.bu	%d15, [%a4] 12
	ld.bu	%d2, [%a2]0
	.loc 1 270 0
	mov	%d4, 2
	.loc 1 266 0
	or	%d15, %d2
	st.b	[%a2]0, %d15
	.loc 1 270 0
	ld.bu	%d5, [%a4] 10
.LBE242:
.LBE244:
	.loc 1 402 0
	mov	%d15, 1
.LBB245:
.LBB243:
	.loc 1 270 0
	call	MAIN_REC_vidSetErrCode
.LVL53:
.LBE243:
.LBE245:
	.loc 1 402 0
	st.b	[%a15] 17, %d15
	ret
.LFE314:
	.size	MAIN_ECP_vidAFSEVETA_IgbtTempRationalCallout, .-MAIN_ECP_vidAFSEVETA_IgbtTempRationalCallout
.section .text.MAIN_ECP_vidAFTASETP_PmDeratingActCallout,"ax",@progbits
	.align 1
	.type	MAIN_ECP_vidAFTASETP_PmDeratingActCallout, @function
MAIN_ECP_vidAFTASETP_PmDeratingActCallout:
.LFB335:
	.loc 1 566 0
.LVL54:
.LBB246:
.LBB247:
	.loc 1 266 0
	ld.bu	%d15, [%a4] 11
.LBE247:
.LBE246:
	.loc 1 566 0
	mov.aa	%a15, %a5
.LBB250:
.LBB248:
	.loc 1 266 0
	addsc.a	%a2, %a5, %d15, 0
	ld.bu	%d15, [%a4] 12
	ld.bu	%d2, [%a2]0
	.loc 1 270 0
	mov	%d4, 2
	.loc 1 266 0
	or	%d15, %d2
	st.b	[%a2]0, %d15
	.loc 1 270 0
	ld.bu	%d5, [%a4] 10
.LBE248:
.LBE250:
	.loc 1 570 0
	mov	%d15, 1
.LBB251:
.LBB249:
	.loc 1 270 0
	call	MAIN_REC_vidSetErrCode
.LVL55:
.LBE249:
.LBE251:
	.loc 1 570 0
	st.b	[%a15] 18, %d15
	ret
.LFE335:
	.size	MAIN_ECP_vidAFTASETP_PmDeratingActCallout, .-MAIN_ECP_vidAFTASETP_PmDeratingActCallout
.section .text.MAIN_ECP_vidABSW_HW_FPGA_IGBT_LCallout,"ax",@progbits
	.align 1
	.type	MAIN_ECP_vidABSW_HW_FPGA_IGBT_LCallout, @function
MAIN_ECP_vidABSW_HW_FPGA_IGBT_LCallout:
.LFB300:
	.loc 1 286 0
.LVL56:
.LBB252:
.LBB253:
	.loc 1 266 0
	ld.bu	%d15, [%a4] 11
.LBE253:
.LBE252:
	.loc 1 286 0
	mov.aa	%a15, %a5
.LBB256:
.LBB254:
	.loc 1 266 0
	addsc.a	%a2, %a5, %d15, 0
	ld.bu	%d15, [%a4] 12
	ld.bu	%d2, [%a2]0
	.loc 1 270 0
	mov	%d4, 2
	.loc 1 266 0
	or	%d15, %d2
	st.b	[%a2]0, %d15
	.loc 1 270 0
	ld.bu	%d5, [%a4] 10
.LBE254:
.LBE256:
	.loc 1 290 0
	mov	%d15, 1
.LBB257:
.LBB255:
	.loc 1 270 0
	call	MAIN_REC_vidSetErrCode
.LVL57:
.LBE255:
.LBE257:
	.loc 1 290 0
	st.b	[%a15] 18, %d15
	ret
.LFE300:
	.size	MAIN_ECP_vidABSW_HW_FPGA_IGBT_LCallout, .-MAIN_ECP_vidABSW_HW_FPGA_IGBT_LCallout
.section .text.MAIN_ECP_vidABSW_HW_FPGA_IGBT_HCallout,"ax",@progbits
	.align 1
	.type	MAIN_ECP_vidABSW_HW_FPGA_IGBT_HCallout, @function
MAIN_ECP_vidABSW_HW_FPGA_IGBT_HCallout:
.LFB299:
	.loc 1 278 0
.LVL58:
.LBB258:
.LBB259:
	.loc 1 266 0
	ld.bu	%d15, [%a4] 11
.LBE259:
.LBE258:
	.loc 1 278 0
	mov.aa	%a15, %a5
.LBB262:
.LBB260:
	.loc 1 266 0
	addsc.a	%a2, %a5, %d15, 0
	ld.bu	%d15, [%a4] 12
	ld.bu	%d2, [%a2]0
	.loc 1 270 0
	mov	%d4, 2
	.loc 1 266 0
	or	%d15, %d2
	st.b	[%a2]0, %d15
	.loc 1 270 0
	ld.bu	%d5, [%a4] 10
.LBE260:
.LBE262:
	.loc 1 282 0
	mov	%d15, 1
.LBB263:
.LBB261:
	.loc 1 270 0
	call	MAIN_REC_vidSetErrCode
.LVL59:
.LBE261:
.LBE263:
	.loc 1 282 0
	st.b	[%a15] 18, %d15
	ret
.LFE299:
	.size	MAIN_ECP_vidABSW_HW_FPGA_IGBT_HCallout, .-MAIN_ECP_vidABSW_HW_FPGA_IGBT_HCallout
.section .text.MAIN_ECP_vidAFTCMTCS_VoltageMarginLowCallout,"ax",@progbits
	.align 1
	.type	MAIN_ECP_vidAFTCMTCS_VoltageMarginLowCallout, @function
MAIN_ECP_vidAFTCMTCS_VoltageMarginLowCallout:
.LFB333:
	.loc 1 550 0
.LVL60:
.LBB264:
.LBB265:
	.loc 1 266 0
	ld.bu	%d15, [%a4] 11
.LBE265:
.LBE264:
	.loc 1 550 0
	mov.aa	%a15, %a5
.LBB268:
.LBB266:
	.loc 1 266 0
	addsc.a	%a2, %a5, %d15, 0
	ld.bu	%d15, [%a4] 12
	ld.bu	%d2, [%a2]0
	.loc 1 270 0
	mov	%d4, 2
	.loc 1 266 0
	or	%d15, %d2
	st.b	[%a2]0, %d15
	.loc 1 270 0
	ld.bu	%d5, [%a4] 10
.LBE266:
.LBE268:
	.loc 1 554 0
	mov	%d15, 1
.LBB269:
.LBB267:
	.loc 1 270 0
	call	MAIN_REC_vidSetErrCode
.LVL61:
.LBE267:
.LBE269:
	.loc 1 554 0
	st.b	[%a15] 18, %d15
	ret
.LFE333:
	.size	MAIN_ECP_vidAFTCMTCS_VoltageMarginLowCallout, .-MAIN_ECP_vidAFTCMTCS_VoltageMarginLowCallout
.section .text.MAIN_ECP_vidAFTMTLCS_CurrentSumErrorCallout,"ax",@progbits
	.align 1
	.type	MAIN_ECP_vidAFTMTLCS_CurrentSumErrorCallout, @function
MAIN_ECP_vidAFTMTLCS_CurrentSumErrorCallout:
.LFB323:
	.loc 1 470 0
.LVL62:
.LBB270:
.LBB271:
	.loc 1 266 0
	ld.bu	%d15, [%a4] 11
.LBE271:
.LBE270:
	.loc 1 470 0
	mov.aa	%a15, %a5
.LBB274:
.LBB272:
	.loc 1 266 0
	addsc.a	%a2, %a5, %d15, 0
	ld.bu	%d15, [%a4] 12
	ld.bu	%d2, [%a2]0
	.loc 1 270 0
	mov	%d4, 2
	.loc 1 266 0
	or	%d15, %d2
	st.b	[%a2]0, %d15
	.loc 1 270 0
	ld.bu	%d5, [%a4] 10
.LBE272:
.LBE274:
	.loc 1 474 0
	mov	%d15, 1
.LBB275:
.LBB273:
	.loc 1 270 0
	call	MAIN_REC_vidSetErrCode
.LVL63:
.LBE273:
.LBE275:
	.loc 1 474 0
	st.b	[%a15] 18, %d15
	ret
.LFE323:
	.size	MAIN_ECP_vidAFTMTLCS_CurrentSumErrorCallout, .-MAIN_ECP_vidAFTMTLCS_CurrentSumErrorCallout
.section .text.MAIN_ECP_vidAFTMTLCS_CurSenrPhaW_VCCCallout,"ax",@progbits
	.align 1
	.type	MAIN_ECP_vidAFTMTLCS_CurSenrPhaW_VCCCallout, @function
MAIN_ECP_vidAFTMTLCS_CurSenrPhaW_VCCCallout:
.LFB329:
	.loc 1 518 0
.LVL64:
.LBB276:
.LBB277:
	.loc 1 266 0
	ld.bu	%d15, [%a4] 11
.LBE277:
.LBE276:
	.loc 1 518 0
	mov.aa	%a15, %a5
.LBB280:
.LBB278:
	.loc 1 266 0
	addsc.a	%a2, %a5, %d15, 0
	ld.bu	%d15, [%a4] 12
	ld.bu	%d2, [%a2]0
	.loc 1 270 0
	mov	%d4, 2
	.loc 1 266 0
	or	%d15, %d2
	st.b	[%a2]0, %d15
	.loc 1 270 0
	ld.bu	%d5, [%a4] 10
.LBE278:
.LBE280:
	.loc 1 522 0
	mov	%d15, 1
.LBB281:
.LBB279:
	.loc 1 270 0
	call	MAIN_REC_vidSetErrCode
.LVL65:
.LBE279:
.LBE281:
	.loc 1 522 0
	st.b	[%a15] 18, %d15
	ret
.LFE329:
	.size	MAIN_ECP_vidAFTMTLCS_CurSenrPhaW_VCCCallout, .-MAIN_ECP_vidAFTMTLCS_CurSenrPhaW_VCCCallout
.section .text.MAIN_ECP_vidAFTMTLCS_CurSenrPhaW_GNDCallout,"ax",@progbits
	.align 1
	.type	MAIN_ECP_vidAFTMTLCS_CurSenrPhaW_GNDCallout, @function
MAIN_ECP_vidAFTMTLCS_CurSenrPhaW_GNDCallout:
.LFB328:
	.loc 1 510 0
.LVL66:
.LBB282:
.LBB283:
	.loc 1 266 0
	ld.bu	%d15, [%a4] 11
.LBE283:
.LBE282:
	.loc 1 510 0
	mov.aa	%a15, %a5
.LBB286:
.LBB284:
	.loc 1 266 0
	addsc.a	%a2, %a5, %d15, 0
	ld.bu	%d15, [%a4] 12
	ld.bu	%d2, [%a2]0
	.loc 1 270 0
	mov	%d4, 2
	.loc 1 266 0
	or	%d15, %d2
	st.b	[%a2]0, %d15
	.loc 1 270 0
	ld.bu	%d5, [%a4] 10
.LBE284:
.LBE286:
	.loc 1 514 0
	mov	%d15, 1
.LBB287:
.LBB285:
	.loc 1 270 0
	call	MAIN_REC_vidSetErrCode
.LVL67:
.LBE285:
.LBE287:
	.loc 1 514 0
	st.b	[%a15] 18, %d15
	ret
.LFE328:
	.size	MAIN_ECP_vidAFTMTLCS_CurSenrPhaW_GNDCallout, .-MAIN_ECP_vidAFTMTLCS_CurSenrPhaW_GNDCallout
.section .text.MAIN_ECP_vidAFTMTLCS_CurSenrPhaV_VCCCallout,"ax",@progbits
	.align 1
	.type	MAIN_ECP_vidAFTMTLCS_CurSenrPhaV_VCCCallout, @function
MAIN_ECP_vidAFTMTLCS_CurSenrPhaV_VCCCallout:
.LFB327:
	.loc 1 502 0
.LVL68:
.LBB288:
.LBB289:
	.loc 1 266 0
	ld.bu	%d15, [%a4] 11
.LBE289:
.LBE288:
	.loc 1 502 0
	mov.aa	%a15, %a5
.LBB292:
.LBB290:
	.loc 1 266 0
	addsc.a	%a2, %a5, %d15, 0
	ld.bu	%d15, [%a4] 12
	ld.bu	%d2, [%a2]0
	.loc 1 270 0
	mov	%d4, 2
	.loc 1 266 0
	or	%d15, %d2
	st.b	[%a2]0, %d15
	.loc 1 270 0
	ld.bu	%d5, [%a4] 10
.LBE290:
.LBE292:
	.loc 1 506 0
	mov	%d15, 1
.LBB293:
.LBB291:
	.loc 1 270 0
	call	MAIN_REC_vidSetErrCode
.LVL69:
.LBE291:
.LBE293:
	.loc 1 506 0
	st.b	[%a15] 18, %d15
	ret
.LFE327:
	.size	MAIN_ECP_vidAFTMTLCS_CurSenrPhaV_VCCCallout, .-MAIN_ECP_vidAFTMTLCS_CurSenrPhaV_VCCCallout
.section .text.MAIN_ECP_vidAFTMTLCS_CurSenrPhaV_GNDCallout,"ax",@progbits
	.align 1
	.type	MAIN_ECP_vidAFTMTLCS_CurSenrPhaV_GNDCallout, @function
MAIN_ECP_vidAFTMTLCS_CurSenrPhaV_GNDCallout:
.LFB326:
	.loc 1 494 0
.LVL70:
.LBB294:
.LBB295:
	.loc 1 266 0
	ld.bu	%d15, [%a4] 11
.LBE295:
.LBE294:
	.loc 1 494 0
	mov.aa	%a15, %a5
.LBB298:
.LBB296:
	.loc 1 266 0
	addsc.a	%a2, %a5, %d15, 0
	ld.bu	%d15, [%a4] 12
	ld.bu	%d2, [%a2]0
	.loc 1 270 0
	mov	%d4, 2
	.loc 1 266 0
	or	%d15, %d2
	st.b	[%a2]0, %d15
	.loc 1 270 0
	ld.bu	%d5, [%a4] 10
.LBE296:
.LBE298:
	.loc 1 498 0
	mov	%d15, 1
.LBB299:
.LBB297:
	.loc 1 270 0
	call	MAIN_REC_vidSetErrCode
.LVL71:
.LBE297:
.LBE299:
	.loc 1 498 0
	st.b	[%a15] 18, %d15
	ret
.LFE326:
	.size	MAIN_ECP_vidAFTMTLCS_CurSenrPhaV_GNDCallout, .-MAIN_ECP_vidAFTMTLCS_CurSenrPhaV_GNDCallout
.section .text.MAIN_ECP_vidAFTMTLCS_CurSenrPhaU_VCCCallout,"ax",@progbits
	.align 1
	.type	MAIN_ECP_vidAFTMTLCS_CurSenrPhaU_VCCCallout, @function
MAIN_ECP_vidAFTMTLCS_CurSenrPhaU_VCCCallout:
.LFB325:
	.loc 1 486 0
.LVL72:
.LBB300:
.LBB301:
	.loc 1 266 0
	ld.bu	%d15, [%a4] 11
.LBE301:
.LBE300:
	.loc 1 486 0
	mov.aa	%a15, %a5
.LBB304:
.LBB302:
	.loc 1 266 0
	addsc.a	%a2, %a5, %d15, 0
	ld.bu	%d15, [%a4] 12
	ld.bu	%d2, [%a2]0
	.loc 1 270 0
	mov	%d4, 2
	.loc 1 266 0
	or	%d15, %d2
	st.b	[%a2]0, %d15
	.loc 1 270 0
	ld.bu	%d5, [%a4] 10
.LBE302:
.LBE304:
	.loc 1 490 0
	mov	%d15, 1
.LBB305:
.LBB303:
	.loc 1 270 0
	call	MAIN_REC_vidSetErrCode
.LVL73:
.LBE303:
.LBE305:
	.loc 1 490 0
	st.b	[%a15] 18, %d15
	ret
.LFE325:
	.size	MAIN_ECP_vidAFTMTLCS_CurSenrPhaU_VCCCallout, .-MAIN_ECP_vidAFTMTLCS_CurSenrPhaU_VCCCallout
.section .text.MAIN_ECP_vidAFTMTLCS_CurSenrPhaU_GNDCallout,"ax",@progbits
	.align 1
	.type	MAIN_ECP_vidAFTMTLCS_CurSenrPhaU_GNDCallout, @function
MAIN_ECP_vidAFTMTLCS_CurSenrPhaU_GNDCallout:
.LFB324:
	.loc 1 478 0
.LVL74:
.LBB306:
.LBB307:
	.loc 1 266 0
	ld.bu	%d15, [%a4] 11
.LBE307:
.LBE306:
	.loc 1 478 0
	mov.aa	%a15, %a5
.LBB310:
.LBB308:
	.loc 1 266 0
	addsc.a	%a2, %a5, %d15, 0
	ld.bu	%d15, [%a4] 12
	ld.bu	%d2, [%a2]0
	.loc 1 270 0
	mov	%d4, 2
	.loc 1 266 0
	or	%d15, %d2
	st.b	[%a2]0, %d15
	.loc 1 270 0
	ld.bu	%d5, [%a4] 10
.LBE308:
.LBE310:
	.loc 1 482 0
	mov	%d15, 1
.LBB311:
.LBB309:
	.loc 1 270 0
	call	MAIN_REC_vidSetErrCode
.LVL75:
.LBE309:
.LBE311:
	.loc 1 482 0
	st.b	[%a15] 18, %d15
	ret
.LFE324:
	.size	MAIN_ECP_vidAFTMTLCS_CurSenrPhaU_GNDCallout, .-MAIN_ECP_vidAFTMTLCS_CurSenrPhaU_GNDCallout
.section .text.MAIN_ECP_vidABSW_HW_FPGA_OverUnderCurWICallout,"ax",@progbits
	.align 1
	.type	MAIN_ECP_vidABSW_HW_FPGA_OverUnderCurWICallout, @function
MAIN_ECP_vidABSW_HW_FPGA_OverUnderCurWICallout:
.LFB303:
	.loc 1 310 0
.LVL76:
.LBB312:
.LBB313:
	.loc 1 266 0
	ld.bu	%d15, [%a4] 11
.LBE313:
.LBE312:
	.loc 1 310 0
	mov.aa	%a15, %a5
.LBB316:
.LBB314:
	.loc 1 266 0
	addsc.a	%a2, %a5, %d15, 0
	ld.bu	%d15, [%a4] 12
	ld.bu	%d2, [%a2]0
	.loc 1 270 0
	mov	%d4, 2
	.loc 1 266 0
	or	%d15, %d2
	st.b	[%a2]0, %d15
	.loc 1 270 0
	ld.bu	%d5, [%a4] 10
.LBE314:
.LBE316:
	.loc 1 314 0
	mov	%d15, 1
.LBB317:
.LBB315:
	.loc 1 270 0
	call	MAIN_REC_vidSetErrCode
.LVL77:
.LBE315:
.LBE317:
	.loc 1 314 0
	st.b	[%a15] 18, %d15
	ret
.LFE303:
	.size	MAIN_ECP_vidABSW_HW_FPGA_OverUnderCurWICallout, .-MAIN_ECP_vidABSW_HW_FPGA_OverUnderCurWICallout
.section .text.MAIN_ECP_vidABSW_HW_FPGA_OverUnderCurVICallout,"ax",@progbits
	.align 1
	.type	MAIN_ECP_vidABSW_HW_FPGA_OverUnderCurVICallout, @function
MAIN_ECP_vidABSW_HW_FPGA_OverUnderCurVICallout:
.LFB302:
	.loc 1 302 0
.LVL78:
.LBB318:
.LBB319:
	.loc 1 266 0
	ld.bu	%d15, [%a4] 11
.LBE319:
.LBE318:
	.loc 1 302 0
	mov.aa	%a15, %a5
.LBB322:
.LBB320:
	.loc 1 266 0
	addsc.a	%a2, %a5, %d15, 0
	ld.bu	%d15, [%a4] 12
	ld.bu	%d2, [%a2]0
	.loc 1 270 0
	mov	%d4, 2
	.loc 1 266 0
	or	%d15, %d2
	st.b	[%a2]0, %d15
	.loc 1 270 0
	ld.bu	%d5, [%a4] 10
.LBE320:
.LBE322:
	.loc 1 306 0
	mov	%d15, 1
.LBB323:
.LBB321:
	.loc 1 270 0
	call	MAIN_REC_vidSetErrCode
.LVL79:
.LBE321:
.LBE323:
	.loc 1 306 0
	st.b	[%a15] 18, %d15
	ret
.LFE302:
	.size	MAIN_ECP_vidABSW_HW_FPGA_OverUnderCurVICallout, .-MAIN_ECP_vidABSW_HW_FPGA_OverUnderCurVICallout
.section .text.MAIN_ECP_vidABSW_HW_FPGA_OverUnderCurUICallout,"ax",@progbits
	.align 1
	.type	MAIN_ECP_vidABSW_HW_FPGA_OverUnderCurUICallout, @function
MAIN_ECP_vidABSW_HW_FPGA_OverUnderCurUICallout:
.LFB301:
	.loc 1 294 0
.LVL80:
.LBB324:
.LBB325:
	.loc 1 266 0
	ld.bu	%d15, [%a4] 11
.LBE325:
.LBE324:
	.loc 1 294 0
	mov.aa	%a15, %a5
.LBB328:
.LBB326:
	.loc 1 266 0
	addsc.a	%a2, %a5, %d15, 0
	ld.bu	%d15, [%a4] 12
	ld.bu	%d2, [%a2]0
	.loc 1 270 0
	mov	%d4, 2
	.loc 1 266 0
	or	%d15, %d2
	st.b	[%a2]0, %d15
	.loc 1 270 0
	ld.bu	%d5, [%a4] 10
.LBE326:
.LBE328:
	.loc 1 298 0
	mov	%d15, 1
.LBB329:
.LBB327:
	.loc 1 270 0
	call	MAIN_REC_vidSetErrCode
.LVL81:
.LBE327:
.LBE329:
	.loc 1 298 0
	st.b	[%a15] 18, %d15
	ret
.LFE301:
	.size	MAIN_ECP_vidABSW_HW_FPGA_OverUnderCurUICallout, .-MAIN_ECP_vidABSW_HW_FPGA_OverUnderCurUICallout
.section .text.MAIN_J1939_vidSendTPDT,"ax",@progbits
	.align 1
	.type	MAIN_J1939_vidSendTPDT, @function
MAIN_J1939_vidSendTPDT:
.LFB297:
	.loc 1 253 0
	.loc 1 255 0
	movh.a	%a4, hi:MAIN_J1939_au8TPDTTxBuf
	mov	%d4, 8
	lea	%a4, [%a4] lo:MAIN_J1939_au8TPDTTxBuf
	j	ComHal_vidSendMessage
.LVL82:
.LFE297:
	.size	MAIN_J1939_vidSendTPDT, .-MAIN_J1939_vidSendTPDT
.section .text.MAIN_J1939_vidSendBAM,"ax",@progbits
	.align 1
	.type	MAIN_J1939_vidSendBAM, @function
MAIN_J1939_vidSendBAM:
.LFB296:
	.loc 1 246 0
	.loc 1 248 0
	movh.a	%a4, hi:MAIN_J1939_au8BAMTxBuf
	mov	%d4, 7
	lea	%a4, [%a4] lo:MAIN_J1939_au8BAMTxBuf
	j	ComHal_vidSendMessage
.LVL83:
.LFE296:
	.size	MAIN_J1939_vidSendBAM, .-MAIN_J1939_vidSendBAM
.section .text.MAIN_J1939_vidSendDM1,"ax",@progbits
	.align 1
	.type	MAIN_J1939_vidSendDM1, @function
MAIN_J1939_vidSendDM1:
.LFB295:
	.loc 1 239 0
	.loc 1 241 0
	movh.a	%a4, hi:MAIN_J1939_au8DM1TxBuf
	mov	%d4, 6
	lea	%a4, [%a4] lo:MAIN_J1939_au8DM1TxBuf
	j	ComHal_vidSendMessage
.LVL84:
.LFE295:
	.size	MAIN_J1939_vidSendDM1, .-MAIN_J1939_vidSendDM1
.section .text.MAIN_J1939_vidSPNBufInit,"ax",@progbits
	.align 1
	.type	MAIN_J1939_vidSPNBufInit, @function
MAIN_J1939_vidSPNBufInit:
.LFB294:
	.loc 1 234 0
	.loc 1 235 0
	movh.a	%a4, hi:MAIN_J1939_au8SPNBuf
	lea	%a4, [%a4] lo:MAIN_J1939_au8SPNBuf
	mov	%d4, 255
	mov	%d5, 40
	j	rba_BswSrv_MemSet
.LVL85:
.LFE294:
	.size	MAIN_J1939_vidSPNBufInit, .-MAIN_J1939_vidSPNBufInit
.section .text.MAIN_ECP_vidInvalidEventHandler_ACM,"ax",@progbits
	.align 1
	.global	MAIN_ECP_vidInvalidEventHandler_ACM
	.type	MAIN_ECP_vidInvalidEventHandler_ACM, @function
MAIN_ECP_vidInvalidEventHandler_ACM:
.LFB293:
	.loc 1 213 0
.LVL86:
	ret
.LFE293:
	.size	MAIN_ECP_vidInvalidEventHandler_ACM, .-MAIN_ECP_vidInvalidEventHandler_ACM
	.global	MAIN_ktJ1939EcuCfg_ACM
.section .rodata.a4.MAIN_ktJ1939EcuCfg_ACM,"a",@progbits
	.align 2
	.type	MAIN_ktJ1939EcuCfg_ACM, @object
	.size	MAIN_ktJ1939EcuCfg_ACM, 44
MAIN_ktJ1939EcuCfg_ACM:
	.short	15
	.byte	-1
	.zero	1
	.word	MAIN_J1939_au8SPNBuf
	.word	MAIN_J1939_au32SpnLogState
	.word	MAIN_J1939_au8DM1TxBuf
	.word	MAIN_J1939_au8BAMTxBuf
	.word	MAIN_J1939_au8TPDTTxBuf
	.word	MAIN_J1939_tVarSet
	.word	MAIN_J1939_vidSPNBufInit
	.word	MAIN_J1939_vidSendDM1
	.word	MAIN_J1939_vidSendBAM
	.word	MAIN_J1939_vidSendTPDT
	.global	MAIN_ku16FaultNum_ACM
.section .rodata.a2.MAIN_ku16FaultNum_ACM,"a",@progbits
	.align 1
	.type	MAIN_ku16FaultNum_ACM, @object
	.size	MAIN_ku16FaultNum_ACM, 2
MAIN_ku16FaultNum_ACM:
	.short	41
	.global	MAIN_katFaultCfgSet_ACM
.section .rodata.a4.MAIN_katFaultCfgSet_ACM,"a",@progbits
	.align 2
	.type	MAIN_katFaultCfgSet_ACM, @object
	.size	MAIN_katFaultCfgSet_ACM, 984
MAIN_katFaultCfgSet_ACM:
	.short	6
	.short	0
	.word	520715
	.short	201
	.byte	6
	.byte	1
	.byte	1
	.byte	0
	.byte	1
	.zero	1
	.word	FaultDetn_u16Read_ABSW_HW_FPGA_OverUnderCurUILogged
	.word	MAIN_ECP_vidABSW_HW_FPGA_OverUnderCurUICallout
	.short	6
	.short	1
	.word	520716
	.short	202
	.byte	7
	.byte	1
	.byte	2
	.byte	0
	.byte	1
	.zero	1
	.word	FaultDetn_u16Read_ABSW_HW_FPGA_OverUnderCurVILogged
	.word	MAIN_ECP_vidABSW_HW_FPGA_OverUnderCurVICallout
	.short	6
	.short	2
	.word	520717
	.short	203
	.byte	8
	.byte	1
	.byte	4
	.byte	0
	.byte	1
	.zero	1
	.word	FaultDetn_u16Read_ABSW_HW_FPGA_OverUnderCurWILogged
	.word	MAIN_ECP_vidABSW_HW_FPGA_OverUnderCurWICallout
	.short	12
	.short	3
	.word	520718
	.short	204
	.byte	9
	.byte	11
	.byte	1
	.byte	2
	.byte	2
	.zero	1
	.word	FaultDetn_u16Read_AFTMTLCS_CurSenrPhaU_GNDLogged
	.word	MAIN_ECP_vidAFTMTLCS_CurSenrPhaU_GNDCallout
	.short	12
	.short	3
	.word	520718
	.short	204
	.byte	10
	.byte	11
	.byte	2
	.byte	2
	.byte	2
	.zero	1
	.word	FaultDetn_u16Read_AFTMTLCS_CurSenrPhaU_VCCLogged
	.word	MAIN_ECP_vidAFTMTLCS_CurSenrPhaU_VCCCallout
	.short	12
	.short	3
	.word	520718
	.short	204
	.byte	70
	.byte	11
	.byte	16
	.byte	2
	.byte	2
	.zero	1
	.word	FaultDetn_u16Read_AFTMTLCS_CurSenrPhaV_GNDLogged
	.word	MAIN_ECP_vidAFTMTLCS_CurSenrPhaV_GNDCallout
	.short	12
	.short	3
	.word	520718
	.short	204
	.byte	71
	.byte	11
	.byte	32
	.byte	2
	.byte	2
	.zero	1
	.word	FaultDetn_u16Read_AFTMTLCS_CurSenrPhaV_VCCLogged
	.word	MAIN_ECP_vidAFTMTLCS_CurSenrPhaV_VCCCallout
	.short	12
	.short	3
	.word	520718
	.short	204
	.byte	72
	.byte	11
	.byte	64
	.byte	2
	.byte	2
	.zero	1
	.word	FaultDetn_u16Read_AFTMTLCS_CurSenrPhaW_GNDLogged
	.word	MAIN_ECP_vidAFTMTLCS_CurSenrPhaW_GNDCallout
	.short	12
	.short	3
	.word	520718
	.short	204
	.byte	73
	.byte	11
	.byte	-128
	.byte	2
	.byte	1
	.zero	1
	.word	FaultDetn_u16Read_AFTMTLCS_CurSenrPhaW_VCCLogged
	.word	MAIN_ECP_vidAFTMTLCS_CurSenrPhaW_VCCCallout
	.short	12
	.short	6
	.word	520719
	.short	205
	.byte	11
	.byte	5
	.byte	4
	.byte	2
	.byte	1
	.zero	1
	.word	FaultDetn_u16Read_AFTMTLCS_CurrentSumErrorLogged
	.word	MAIN_ECP_vidAFTMTLCS_CurrentSumErrorCallout
	.short	12
	.short	7
	.word	520720
	.short	206
	.byte	23
	.byte	7
	.byte	1
	.byte	0
	.byte	1
	.zero	1
	.word	FaultDetn_u16Read_AFTCMTCS_VoltageMarginLowLogged
	.word	MAIN_ECP_vidAFTCMTCS_VoltageMarginLowCallout
	.short	12
	.short	8
	.word	520722
	.short	207
	.byte	4
	.byte	0
	.byte	32
	.byte	2
	.byte	2
	.zero	1
	.word	FaultDetn_u16Read_ABSW_HW_FPGA_IGBT_HLogged
	.word	MAIN_ECP_vidABSW_HW_FPGA_IGBT_HCallout
	.short	12
	.short	8
	.word	520722
	.short	207
	.byte	5
	.byte	0
	.byte	64
	.byte	2
	.byte	1
	.zero	1
	.word	FaultDetn_u16Read_ABSW_HW_FPGA_IGBT_LLogged
	.word	MAIN_ECP_vidABSW_HW_FPGA_IGBT_LCallout
	.short	16
	.short	8
	.word	520722
	.short	208
	.byte	30
	.byte	6
	.byte	8
	.byte	2
	.byte	2
	.zero	1
	.word	FaultDetn_u16Read_AFTASETP_PmDeratingActLogged
	.word	MAIN_ECP_vidAFTASETP_PmDeratingActCallout
	.short	16
	.short	8
	.word	520722
	.short	208
	.byte	33
	.byte	12
	.byte	8
	.byte	2
	.byte	1
	.zero	1
	.word	FaultDetn_u16Read_AFSEVETA_IgbtTempRationalLogged
	.word	MAIN_ECP_vidAFSEVETA_IgbtTempRationalCallout
	.short	0
	.short	8
	.word	520722
	.short	209
	.byte	27
	.byte	4
	.byte	32
	.byte	0
	.byte	1
	.zero	1
	.word	FaultDetn_u16Read_AFSEVETA_OverTempIgbtLeftLogged
	.word	MAIN_ECP_vidAFSEVETA_OverTempIgbtLeftCallout
	.short	12
	.short	9
	.word	520723
	.short	210
	.byte	32
	.byte	7
	.byte	16
	.byte	2
	.byte	2
	.zero	1
	.word	FaultDetn_u16Read_AFSEVETA_TempIgbtLeftVccLogged
	.word	MAIN_ECP_vidAFSEVETA_TempIgbtLeftVccCallout
	.short	12
	.short	9
	.word	520723
	.short	210
	.byte	31
	.byte	8
	.byte	32
	.byte	2
	.byte	1
	.zero	1
	.word	FaultDetn_u16Read_AFSEVETA_TempIgbtLeftGndLogged
	.word	MAIN_ECP_vidAFSEVETA_TempIgbtLeftGndCallout
	.short	3
	.short	10
	.word	520724
	.short	211
	.byte	12
	.byte	1
	.byte	32
	.byte	2
	.byte	2
	.zero	1
	.word	FaultDetn_u16Read_ABSW_HW2_FPGA_OverVoltVBatLogged
	.word	MAIN_ECP_vidABSW_HW2_FPGA_OverVoltVBatCallout
	.short	3
	.short	10
	.word	520724
	.short	211
	.byte	38
	.byte	1
	.byte	8
	.byte	2
	.byte	2
	.zero	1
	.word	FaultDetn_u16Read_AFSEVBHV_VoltageVccLogged
	.word	MAIN_ECP_vidAFSEVBHV_VoltageVccCallout
	.short	3
	.short	10
	.word	520724
	.short	211
	.byte	13
	.byte	2
	.byte	8
	.byte	2
	.byte	1
	.zero	1
	.word	FaultDetn_u16Read_AFSEVBHV_OverVoltageLogged
	.word	MAIN_ECP_vidAFSEVBHV_OverVoltageCallout
	.short	4
	.short	10
	.word	520724
	.short	212
	.byte	45
	.byte	4
	.byte	1
	.byte	2
	.byte	2
	.zero	1
	.word	FaultDetn_u16Read_AFTASBDS_BattVoltDeratingActLogged
	.word	MAIN_ECP_vidAFTASBDS_BattVoltDeratingActCallout
	.short	4
	.short	10
	.word	520724
	.short	212
	.byte	49
	.byte	0
	.byte	-128
	.byte	2
	.byte	2
	.zero	1
	.word	FaultDetn_u16Read_AFSEVBHV_VoltageGndLogged
	.word	MAIN_ECP_vidAFSEVBHV_VoltageGndCallout
	.short	4
	.short	10
	.word	520724
	.short	212
	.byte	14
	.byte	2
	.byte	16
	.byte	2
	.byte	1
	.zero	1
	.word	FaultDetn_u16Read_AFSEVBHV_UnderVoltageLogged
	.word	MAIN_ECP_vidAFSEVBHV_UnderVoltageCallout
	.short	12
	.short	11
	.word	520725
	.short	213
	.byte	15
	.byte	2
	.byte	2
	.byte	0
	.byte	1
	.zero	1
	.word	FaultDetn_u16Read_AFTMTLCS_RunForLongTimeLogged
	.word	MAIN_ECP_vidAFTMTLCS_RunForLongTimeCallout
	.short	19
	.short	12
	.word	520726
	.short	214
	.byte	34
	.byte	4
	.byte	-128
	.byte	2
	.byte	2
	.zero	1
	.word	FaultDetn_u16Read_AFSMTMTA_OverTempWdgHead1Logged
	.word	MAIN_ECP_vidAFSMTMTA_OverTempWdgHead1Callout
	.short	19
	.short	12
	.word	520726
	.short	214
	.byte	35
	.byte	6
	.byte	16
	.byte	2
	.byte	2
	.zero	1
	.word	FaultDetn_u16Read_AFTASMTP_Wndg1DeratingActLogged
	.word	MAIN_ECP_vidAFTASMTP_Wndg1DeratingActCallout
	.short	12
	.short	14
	.word	520727
	.short	215
	.byte	36
	.byte	9
	.byte	1
	.byte	2
	.byte	2
	.zero	1
	.word	FaultDetn_u16Read_AFSMTMTA_TempWindingHead1GndLogged
	.word	MAIN_ECP_vidAFSMTMTA_TempWindingHead1GndCallout
	.short	12
	.short	14
	.word	520727
	.short	215
	.byte	37
	.byte	10
	.byte	8
	.byte	2
	.byte	1
	.zero	1
	.word	FaultDetn_u16Read_AFSMTMTA_TempWindingHead1VccLogged
	.word	MAIN_ECP_vidAFSMTMTA_TempWindingHead1VccCallout
	.short	12
	.short	13
	.word	520728
	.short	216
	.byte	59
	.byte	7
	.byte	2
	.byte	2
	.byte	2
	.zero	1
	.word	FaultDetn_u16Read_AFTMTLCS_ContorOverLoadLogged
	.word	MAIN_ECP_vidAFTMTLCS_ContorOverLoadCallout
	.short	12
	.short	13
	.word	520728
	.short	216
	.byte	60
	.byte	7
	.byte	4
	.byte	2
	.byte	1
	.zero	1
	.word	FaultDetn_u16Read_AFTMTLCS_MotorOverLoadLogged
	.word	MAIN_ECP_vidAFTMTLCS_MotorOverLoadCallout
	.short	12
	.short	5
	.word	520729
	.short	217
	.byte	69
	.byte	8
	.byte	8
	.byte	2
	.byte	1
	.zero	1
	.word	FaultDetn_u16Read_AFTSLOBS_SpeedImbalanceLogged
	.word	MAIN_ECP_vidAFTSLOBS_SpeedImbalanceCallout
	.short	12
	.short	4
	.word	520730
	.short	218
	.byte	68
	.byte	8
	.byte	4
	.byte	2
	.byte	1
	.zero	1
	.word	FaultDetn_u16Read_AFTCMSCS_SpeedDiffLogged
	.word	MAIN_ECP_vidAFTCMSCS_SpeedDiffCallout
	.short	255
	.short	-1
	.word	-1
	.short	-1
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.zero	1
	.word	FaultDetn_u16Read_ABSW_COM_BusOff_CAN1Logged
	.word	MAIN_ECP_vidABSW_COM_BusOff_CAN1Callout
	.short	255
	.short	-1
	.word	-1
	.short	-1
	.byte	15
	.byte	0
	.byte	16
	.byte	0
	.byte	1
	.zero	1
	.word	FaultDetn_u16Read_ABSW_COM_TimoutRxVCULogged
	.word	MAIN_ECP_vidABSW_COM_TimoutRxVCUCallout
	.short	255
	.short	-1
	.word	-1
	.short	-1
	.byte	55
	.byte	6
	.byte	32
	.byte	0
	.byte	1
	.zero	1
	.word	FaultDetn_u16Read_AFTASOSP_MotorSpdDeratingActLogged
	.word	MAIN_ECP_vidAFTASOSP_MotorSpdDeratingActCallout
	.short	255
	.short	-1
	.word	-1
	.short	-1
	.byte	24
	.byte	11
	.byte	4
	.byte	0
	.byte	1
	.zero	1
	.word	FaultDetn_u16Read_AFSEVBLV_P5VRefADCFltLogged
	.word	MAIN_ECP_vidAFSEVBLV_P5VRefADCFltCallout
	.short	255
	.short	-1
	.word	-1
	.short	-1
	.byte	39
	.byte	1
	.byte	16
	.byte	0
	.byte	1
	.zero	1
	.word	FaultDetn_u16Read_AFSEVETA_OverTempNTC1CmdBoardLogged
	.word	MAIN_ECP_vidAFSEVETA_OverTempNTC1CmdBoardCallout
	.short	255
	.short	-1
	.word	-1
	.short	-1
	.byte	40
	.byte	1
	.byte	64
	.byte	0
	.byte	1
	.zero	1
	.word	FaultDetn_u16Read_AFSEVETA_OverTempDrvLeftLogged
	.word	MAIN_ECP_vidAFSEVETA_OverTempDrvLeftCallout
	.short	255
	.short	-1
	.word	-1
	.short	-1
	.byte	3
	.byte	2
	.byte	64
	.byte	0
	.byte	1
	.zero	1
	.word	FaultDetn_u16Read_AFSEVBLV_OverVoltageLogged
	.word	MAIN_ECP_vidAFSEVBLV_OverVoltageCallout
	.short	255
	.short	-1
	.word	-1
	.short	-1
	.byte	2
	.byte	2
	.byte	-128
	.byte	0
	.byte	1
	.zero	1
	.word	FaultDetn_u16Read_AFSEVBLV_UnderVoltageLogged
	.word	MAIN_ECP_vidAFSEVBLV_UnderVoltageCallout
.section .bss.a2.MAIN_J1939_tVarSet,"aw",@nobits
	.align 1
	.type	MAIN_J1939_tVarSet, @object
	.size	MAIN_J1939_tVarSet, 8
MAIN_J1939_tVarSet:
	.zero	8
.section .bss.a1.MAIN_J1939_au8SPNBuf,"aw",@nobits
	.type	MAIN_J1939_au8SPNBuf, @object
	.size	MAIN_J1939_au8SPNBuf, 40
MAIN_J1939_au8SPNBuf:
	.zero	40
.section .bss.a1.MAIN_J1939_au8TPDTTxBuf,"aw",@nobits
	.type	MAIN_J1939_au8TPDTTxBuf, @object
	.size	MAIN_J1939_au8TPDTTxBuf, 8
MAIN_J1939_au8TPDTTxBuf:
	.zero	8
.section .bss.a1.MAIN_J1939_au8BAMTxBuf,"aw",@nobits
	.type	MAIN_J1939_au8BAMTxBuf, @object
	.size	MAIN_J1939_au8BAMTxBuf, 8
MAIN_J1939_au8BAMTxBuf:
	.zero	8
.section .bss.a1.MAIN_J1939_au8DM1TxBuf,"aw",@nobits
	.type	MAIN_J1939_au8DM1TxBuf, @object
	.size	MAIN_J1939_au8DM1TxBuf, 8
MAIN_J1939_au8DM1TxBuf:
	.zero	8
.section .bss.a4.MAIN_J1939_au32SpnLogState,"aw",@nobits
	.align 2
	.type	MAIN_J1939_au32SpnLogState, @object
	.size	MAIN_J1939_au32SpnLogState, 4
MAIN_J1939_au32SpnLogState:
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
	.uaword	.LFB312
	.uaword	.LFE312-.LFB312
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB311
	.uaword	.LFE311-.LFB311
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB316
	.uaword	.LFE316-.LFB316
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB315
	.uaword	.LFE315-.LFB315
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB313
	.uaword	.LFE313-.LFB313
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB337
	.uaword	.LFE337-.LFB337
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB306
	.uaword	.LFE306-.LFB306
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB305
	.uaword	.LFE305-.LFB305
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB338
	.uaword	.LFE338-.LFB338
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB339
	.uaword	.LFE339-.LFB339
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB331
	.uaword	.LFE331-.LFB331
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB330
	.uaword	.LFE330-.LFB330
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB322
	.uaword	.LFE322-.LFB322
	.align 2
.LEFDE24:
.LSFDE26:
	.uaword	.LEFDE26-.LASFDE26
.LASFDE26:
	.uaword	.Lframe0
	.uaword	.LFB321
	.uaword	.LFE321-.LFB321
	.align 2
.LEFDE26:
.LSFDE28:
	.uaword	.LEFDE28-.LASFDE28
.LASFDE28:
	.uaword	.Lframe0
	.uaword	.LFB336
	.uaword	.LFE336-.LFB336
	.align 2
.LEFDE28:
.LSFDE30:
	.uaword	.LEFDE30-.LASFDE30
.LASFDE30:
	.uaword	.Lframe0
	.uaword	.LFB318
	.uaword	.LFE318-.LFB318
	.align 2
.LEFDE30:
.LSFDE32:
	.uaword	.LEFDE32-.LASFDE32
.LASFDE32:
	.uaword	.Lframe0
	.uaword	.LFB332
	.uaword	.LFE332-.LFB332
	.align 2
.LEFDE32:
.LSFDE34:
	.uaword	.LEFDE34-.LASFDE34
.LASFDE34:
	.uaword	.Lframe0
	.uaword	.LFB308
	.uaword	.LFE308-.LFB308
	.align 2
.LEFDE34:
.LSFDE36:
	.uaword	.LEFDE36-.LASFDE36
.LASFDE36:
	.uaword	.Lframe0
	.uaword	.LFB310
	.uaword	.LFE310-.LFB310
	.align 2
.LEFDE36:
.LSFDE38:
	.uaword	.LEFDE38-.LASFDE38
.LASFDE38:
	.uaword	.Lframe0
	.uaword	.LFB334
	.uaword	.LFE334-.LFB334
	.align 2
.LEFDE38:
.LSFDE40:
	.uaword	.LEFDE40-.LASFDE40
.LASFDE40:
	.uaword	.Lframe0
	.uaword	.LFB307
	.uaword	.LFE307-.LFB307
	.align 2
.LEFDE40:
.LSFDE42:
	.uaword	.LEFDE42-.LASFDE42
.LASFDE42:
	.uaword	.Lframe0
	.uaword	.LFB309
	.uaword	.LFE309-.LFB309
	.align 2
.LEFDE42:
.LSFDE44:
	.uaword	.LEFDE44-.LASFDE44
.LASFDE44:
	.uaword	.Lframe0
	.uaword	.LFB304
	.uaword	.LFE304-.LFB304
	.align 2
.LEFDE44:
.LSFDE46:
	.uaword	.LEFDE46-.LASFDE46
.LASFDE46:
	.uaword	.Lframe0
	.uaword	.LFB319
	.uaword	.LFE319-.LFB319
	.align 2
.LEFDE46:
.LSFDE48:
	.uaword	.LEFDE48-.LASFDE48
.LASFDE48:
	.uaword	.Lframe0
	.uaword	.LFB320
	.uaword	.LFE320-.LFB320
	.align 2
.LEFDE48:
.LSFDE50:
	.uaword	.LEFDE50-.LASFDE50
.LASFDE50:
	.uaword	.Lframe0
	.uaword	.LFB317
	.uaword	.LFE317-.LFB317
	.align 2
.LEFDE50:
.LSFDE52:
	.uaword	.LEFDE52-.LASFDE52
.LASFDE52:
	.uaword	.Lframe0
	.uaword	.LFB314
	.uaword	.LFE314-.LFB314
	.align 2
.LEFDE52:
.LSFDE54:
	.uaword	.LEFDE54-.LASFDE54
.LASFDE54:
	.uaword	.Lframe0
	.uaword	.LFB335
	.uaword	.LFE335-.LFB335
	.align 2
.LEFDE54:
.LSFDE56:
	.uaword	.LEFDE56-.LASFDE56
.LASFDE56:
	.uaword	.Lframe0
	.uaword	.LFB300
	.uaword	.LFE300-.LFB300
	.align 2
.LEFDE56:
.LSFDE58:
	.uaword	.LEFDE58-.LASFDE58
.LASFDE58:
	.uaword	.Lframe0
	.uaword	.LFB299
	.uaword	.LFE299-.LFB299
	.align 2
.LEFDE58:
.LSFDE60:
	.uaword	.LEFDE60-.LASFDE60
.LASFDE60:
	.uaword	.Lframe0
	.uaword	.LFB333
	.uaword	.LFE333-.LFB333
	.align 2
.LEFDE60:
.LSFDE62:
	.uaword	.LEFDE62-.LASFDE62
.LASFDE62:
	.uaword	.Lframe0
	.uaword	.LFB323
	.uaword	.LFE323-.LFB323
	.align 2
.LEFDE62:
.LSFDE64:
	.uaword	.LEFDE64-.LASFDE64
.LASFDE64:
	.uaword	.Lframe0
	.uaword	.LFB329
	.uaword	.LFE329-.LFB329
	.align 2
.LEFDE64:
.LSFDE66:
	.uaword	.LEFDE66-.LASFDE66
.LASFDE66:
	.uaword	.Lframe0
	.uaword	.LFB328
	.uaword	.LFE328-.LFB328
	.align 2
.LEFDE66:
.LSFDE68:
	.uaword	.LEFDE68-.LASFDE68
.LASFDE68:
	.uaword	.Lframe0
	.uaword	.LFB327
	.uaword	.LFE327-.LFB327
	.align 2
.LEFDE68:
.LSFDE70:
	.uaword	.LEFDE70-.LASFDE70
.LASFDE70:
	.uaword	.Lframe0
	.uaword	.LFB326
	.uaword	.LFE326-.LFB326
	.align 2
.LEFDE70:
.LSFDE72:
	.uaword	.LEFDE72-.LASFDE72
.LASFDE72:
	.uaword	.Lframe0
	.uaword	.LFB325
	.uaword	.LFE325-.LFB325
	.align 2
.LEFDE72:
.LSFDE74:
	.uaword	.LEFDE74-.LASFDE74
.LASFDE74:
	.uaword	.Lframe0
	.uaword	.LFB324
	.uaword	.LFE324-.LFB324
	.align 2
.LEFDE74:
.LSFDE76:
	.uaword	.LEFDE76-.LASFDE76
.LASFDE76:
	.uaword	.Lframe0
	.uaword	.LFB303
	.uaword	.LFE303-.LFB303
	.align 2
.LEFDE76:
.LSFDE78:
	.uaword	.LEFDE78-.LASFDE78
.LASFDE78:
	.uaword	.Lframe0
	.uaword	.LFB302
	.uaword	.LFE302-.LFB302
	.align 2
.LEFDE78:
.LSFDE80:
	.uaword	.LEFDE80-.LASFDE80
.LASFDE80:
	.uaword	.Lframe0
	.uaword	.LFB301
	.uaword	.LFE301-.LFB301
	.align 2
.LEFDE80:
.LSFDE82:
	.uaword	.LEFDE82-.LASFDE82
.LASFDE82:
	.uaword	.Lframe0
	.uaword	.LFB297
	.uaword	.LFE297-.LFB297
	.align 2
.LEFDE82:
.LSFDE84:
	.uaword	.LEFDE84-.LASFDE84
.LASFDE84:
	.uaword	.Lframe0
	.uaword	.LFB296
	.uaword	.LFE296-.LFB296
	.align 2
.LEFDE84:
.LSFDE86:
	.uaword	.LEFDE86-.LASFDE86
.LASFDE86:
	.uaword	.Lframe0
	.uaword	.LFB295
	.uaword	.LFE295-.LFB295
	.align 2
.LEFDE86:
.LSFDE88:
	.uaword	.LEFDE88-.LASFDE88
.LASFDE88:
	.uaword	.Lframe0
	.uaword	.LFB294
	.uaword	.LFE294-.LFB294
	.align 2
.LEFDE88:
.LSFDE90:
	.uaword	.LEFDE90-.LASFDE90
.LASFDE90:
	.uaword	.Lframe0
	.uaword	.LFB293
	.uaword	.LFE293-.LFB293
	.align 2
.LEFDE90:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bswcdd\\J1939\\J1939TP.h"
	.file 4 "main\\_MainModule\\ErrCodePolling\\MAIN_ErrCodePolling.h"
	.file 5 "main\\_MainModule\\ErrCodePolling\\MAIN_ECPCfg_ACM.h"
	.file 6 ".\\output\\inc/..\\..\\main\\_MainModule\\RollErrCode\\MAIN_RollErrCode.h"
	.file 7 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\Cpu\\Std\\Ifx_Types.h"
	.file 8 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\_Impl\\IfxCpu_cfg.h"
	.file 9 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\Scu\\Std\\IfxScuCcu.h"
	.file 10 ".\\output\\inc/..\\..\\bswcdd\\ComHal\\ComHal.h"
	.file 11 ".\\output\\inc/..\\..\\bsw\\integration\\rba_BswSrv\\api\\rba_BswSrv.h"
	.file 12 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\DSM.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x2f0a
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"main\\_MainModule\\ErrCodePolling\\MAIN_ECPCfg_ACM.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x520
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
	.uaword	0x1dc
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
	.uaword	0x208
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"sint32"
	.byte	0x2
	.byte	0x60
	.uaword	0x22c
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
	.uaword	0x252
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
	.uaword	0x1dc
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
	.byte	0x4
	.uaword	0x1cf
	.uleb128 0x5
	.uaword	0x1cf
	.uleb128 0x6
	.byte	0x4
	.uleb128 0x7
	.uaword	0x1cf
	.uaword	0x2e8
	.uleb128 0x8
	.uaword	0x2bf
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2d1
	.uleb128 0x9
	.byte	0x1
	.byte	0x6
	.byte	0xc
	.uaword	0x385
	.uleb128 0xa
	.string	"eMAIN_REC_BUF_IDX_MCU1"
	.sleb128 0
	.uleb128 0xa
	.string	"eMAIN_REC_BUF_IDX_MCU2"
	.sleb128 1
	.uleb128 0xa
	.string	"eMAIN_REC_BUF_IDX_ACM"
	.sleb128 2
	.uleb128 0xa
	.string	"eMAIN_REC_BUF_IDX_EPS"
	.sleb128 3
	.uleb128 0xa
	.string	"eMAIN_REC_BUF_IDX_PDU"
	.sleb128 4
	.uleb128 0xa
	.string	"eMAIN_REC_BUF_NUM"
	.sleb128 5
	.byte	0
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0x8
	.byte	0x3
	.byte	0x17
	.uaword	0x3c8
	.uleb128 0xc
	.string	"u16FMI"
	.byte	0x3
	.byte	0x18
	.uaword	0x1fa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"u16SPNIdx"
	.byte	0x3
	.byte	0x19
	.uaword	0x1fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xc
	.string	"u32SPN"
	.byte	0x3
	.byte	0x1a
	.uaword	0x244
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xd
	.uaword	.LASF0
	.byte	0x3
	.byte	0x1b
	.uaword	0x385
	.uleb128 0xb
	.uaword	.LASF1
	.byte	0x8
	.byte	0x3
	.byte	0x1d
	.uaword	0x46f
	.uleb128 0xc
	.string	"u8TxFrameCnt"
	.byte	0x3
	.byte	0x1e
	.uaword	0x1cf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"u8PackFrameNum"
	.byte	0x3
	.byte	0x1f
	.uaword	0x1cf
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xc
	.string	"u8TgtMainState"
	.byte	0x3
	.byte	0x20
	.uaword	0x1cf
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xc
	.string	"u8CurMainState"
	.byte	0x3
	.byte	0x21
	.uaword	0x1cf
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xc
	.string	"u8CurFaultNum"
	.byte	0x3
	.byte	0x22
	.uaword	0x1cf
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"u16TaskCnt"
	.byte	0x3
	.byte	0x23
	.uaword	0x1fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0
	.uleb128 0xd
	.uaword	.LASF1
	.byte	0x3
	.byte	0x24
	.uaword	0x3d3
	.uleb128 0xb
	.uaword	.LASF2
	.byte	0x2c
	.byte	0x3
	.byte	0x26
	.uaword	0x58e
	.uleb128 0xc
	.string	"u16SPNNum"
	.byte	0x3
	.byte	0x28
	.uaword	0x1fa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"u8FillByte"
	.byte	0x3
	.byte	0x29
	.uaword	0x1cf
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xc
	.string	"pau8SPNBuf"
	.byte	0x3
	.byte	0x2b
	.uaword	0x2cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"pau32StateBuf"
	.byte	0x3
	.byte	0x2c
	.uaword	0x58e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.string	"pau8DM1TxBuf"
	.byte	0x3
	.byte	0x2e
	.uaword	0x2cb
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.string	"pau8BAMTxBuf"
	.byte	0x3
	.byte	0x2f
	.uaword	0x2cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.string	"pau8TPDTTxBuf"
	.byte	0x3
	.byte	0x30
	.uaword	0x2cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xc
	.string	"ptVarSet"
	.byte	0x3
	.byte	0x32
	.uaword	0x594
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xc
	.string	"vidSPNBufInit"
	.byte	0x3
	.byte	0x34
	.uaword	0x59c
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xc
	.string	"vidSendDM1"
	.byte	0x3
	.byte	0x35
	.uaword	0x59c
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xc
	.string	"vidSendBAM"
	.byte	0x3
	.byte	0x36
	.uaword	0x59c
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xc
	.string	"vidSendTPDT"
	.byte	0x3
	.byte	0x37
	.uaword	0x59c
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x244
	.uleb128 0x4
	.byte	0x4
	.uaword	0x46f
	.uleb128 0xe
	.byte	0x1
	.uleb128 0x4
	.byte	0x4
	.uaword	0x59a
	.uleb128 0xd
	.uaword	.LASF2
	.byte	0x3
	.byte	0x38
	.uaword	0x47a
	.uleb128 0xd
	.uaword	.LASF3
	.byte	0x4
	.byte	0x26
	.uaword	0x5b8
	.uleb128 0xb
	.uaword	.LASF3
	.byte	0x16
	.byte	0x5
	.byte	0xc
	.uaword	0x656
	.uleb128 0xc
	.string	"u8LocFaultCode"
	.byte	0x5
	.byte	0xe
	.uaword	0x2d8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"bFaultLv0"
	.byte	0x5
	.byte	0x11
	.uaword	0x28f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.string	"bFaultLv1"
	.byte	0x5
	.byte	0x12
	.uaword	0x28f
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0xc
	.string	"bFaultLv2"
	.byte	0x5
	.byte	0x13
	.uaword	0x28f
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0xc
	.string	"bFaultLv3"
	.byte	0x5
	.byte	0x14
	.uaword	0x28f
	.byte	0x2
	.byte	0x23
	.uleb128 0x13
	.uleb128 0xc
	.string	"bFaultLv4"
	.byte	0x5
	.byte	0x15
	.uaword	0x28f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xc
	.string	"bFaultLv5"
	.byte	0x5
	.byte	0x16
	.uaword	0x28f
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.byte	0
	.uleb128 0xd
	.uaword	.LASF4
	.byte	0x4
	.byte	0x27
	.uaword	0x661
	.uleb128 0xb
	.uaword	.LASF4
	.byte	0x18
	.byte	0x4
	.byte	0x53
	.uaword	0x750
	.uleb128 0xc
	.string	"tJ1939FaultCfg"
	.byte	0x4
	.byte	0x55
	.uaword	0x3c8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"u16DTCEventId"
	.byte	0x4
	.byte	0x57
	.uaword	0x1fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.string	"u8RollErrCode"
	.byte	0x4
	.byte	0x59
	.uaword	0x1cf
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xc
	.string	"u8InvtFaultByteIdx"
	.byte	0x4
	.byte	0x5a
	.uaword	0x1cf
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0xc
	.string	"u8InvtFaultBitMask"
	.byte	0x4
	.byte	0x5b
	.uaword	0x1cf
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.string	"eTableLogic"
	.byte	0x4
	.byte	0x5d
	.uaword	0xa28
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xc
	.string	"eCfgTableEnd"
	.byte	0x4
	.byte	0x5e
	.uaword	0x9af
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xc
	.string	"u16FaultLogged"
	.byte	0x4
	.byte	0x60
	.uaword	0xa39
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.string	"vidUserCallout"
	.byte	0x4
	.byte	0x61
	.uaword	0xa6b
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0
	.uleb128 0x3
	.string	"tSetEventStateFuncPtr"
	.byte	0x4
	.byte	0x29
	.uaword	0x76d
	.uleb128 0xf
	.byte	0x1
	.uaword	0x779
	.uleb128 0x10
	.uaword	0x779
	.byte	0
	.uleb128 0x5
	.uaword	0x1fa
	.uleb128 0x9
	.byte	0x1
	.byte	0x4
	.byte	0x2e
	.uaword	0x935
	.uleb128 0xa
	.string	"MAIN_ECP_FAULT_CODE_00"
	.sleb128 0
	.uleb128 0xa
	.string	"MAIN_ECP_FAULT_CODE_01"
	.sleb128 1
	.uleb128 0xa
	.string	"MAIN_ECP_FAULT_CODE_02"
	.sleb128 2
	.uleb128 0xa
	.string	"MAIN_ECP_FAULT_CODE_03"
	.sleb128 3
	.uleb128 0xa
	.string	"MAIN_ECP_FAULT_CODE_04"
	.sleb128 4
	.uleb128 0xa
	.string	"MAIN_ECP_FAULT_CODE_05"
	.sleb128 5
	.uleb128 0xa
	.string	"MAIN_ECP_FAULT_CODE_06"
	.sleb128 6
	.uleb128 0xa
	.string	"MAIN_ECP_FAULT_CODE_07"
	.sleb128 7
	.uleb128 0xa
	.string	"MAIN_ECP_FAULT_CODE_08"
	.sleb128 8
	.uleb128 0xa
	.string	"MAIN_ECP_FAULT_CODE_09"
	.sleb128 9
	.uleb128 0xa
	.string	"MAIN_ECP_FAULT_CODE_10"
	.sleb128 10
	.uleb128 0xa
	.string	"MAIN_ECP_FAULT_CODE_11"
	.sleb128 11
	.uleb128 0xa
	.string	"MAIN_ECP_FAULT_CODE_12"
	.sleb128 12
	.uleb128 0xa
	.string	"MAIN_ECP_FAULT_CODE_13"
	.sleb128 13
	.uleb128 0xa
	.string	"MAIN_ECP_FAULT_CODE_14"
	.sleb128 14
	.uleb128 0xa
	.string	"MAIN_ECP_FAULT_CODE_15"
	.sleb128 15
	.uleb128 0xa
	.string	"MAIN_ECP_FAULT_CODE_MAX_NUM"
	.sleb128 16
	.byte	0
	.uleb128 0x11
	.uaword	.LASF5
	.byte	0x1
	.byte	0x4
	.byte	0x47
	.uaword	0x9af
	.uleb128 0xa
	.string	"eMAIN_ECP_FAULT_CFG_TABLE_UNDEF"
	.sleb128 0
	.uleb128 0xa
	.string	"eMAIN_ECP_FAULT_CFG_TABLE_IS_END"
	.sleb128 1
	.uleb128 0xa
	.string	"eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE"
	.sleb128 2
	.byte	0
	.uleb128 0xd
	.uaword	.LASF5
	.byte	0x4
	.byte	0x4b
	.uaword	0x935
	.uleb128 0x11
	.uaword	.LASF6
	.byte	0x1
	.byte	0x4
	.byte	0x4d
	.uaword	0xa28
	.uleb128 0xa
	.string	"eMAIN_ECP_CFG_TABLE_LOGIC_UNDEF"
	.sleb128 0
	.uleb128 0xa
	.string	"eMAIN_ECP_CFG_TABLE_LOGIC_AND"
	.sleb128 1
	.uleb128 0xa
	.string	"eMAIN_ECP_CFG_TABLE_LOGIC_OR"
	.sleb128 2
	.byte	0
	.uleb128 0xd
	.uaword	.LASF6
	.byte	0x4
	.byte	0x51
	.uaword	0x9ba
	.uleb128 0x12
	.byte	0x1
	.uaword	0x1fa
	.uleb128 0x4
	.byte	0x4
	.uaword	0xa33
	.uleb128 0xf
	.byte	0x1
	.uaword	0xa50
	.uleb128 0x10
	.uaword	0xa50
	.uleb128 0x10
	.uaword	0xa60
	.byte	0
	.uleb128 0x5
	.uaword	0xa55
	.uleb128 0x4
	.byte	0x4
	.uaword	0xa5b
	.uleb128 0x5
	.uaword	0x656
	.uleb128 0x5
	.uaword	0xa65
	.uleb128 0x4
	.byte	0x4
	.uaword	0x5ad
	.uleb128 0x4
	.byte	0x4
	.uaword	0xa3f
	.uleb128 0x4
	.byte	0x4
	.uaword	0x750
	.uleb128 0x5
	.uaword	0x5a2
	.uleb128 0x9
	.byte	0x1
	.byte	0x5
	.byte	0x19
	.uaword	0xc51
	.uleb128 0xa
	.string	"eMAIN_J1939_SPN_IDX_520715"
	.sleb128 0
	.uleb128 0xa
	.string	"eMAIN_J1939_SPN_IDX_520716"
	.sleb128 1
	.uleb128 0xa
	.string	"eMAIN_J1939_SPN_IDX_520717"
	.sleb128 2
	.uleb128 0xa
	.string	"eMAIN_J1939_SPN_IDX_520718"
	.sleb128 3
	.uleb128 0xa
	.string	"eMAIN_J1939_SPN_IDX_520730"
	.sleb128 4
	.uleb128 0xa
	.string	"eMAIN_J1939_SPN_IDX_520729"
	.sleb128 5
	.uleb128 0xa
	.string	"eMAIN_J1939_SPN_IDX_520719"
	.sleb128 6
	.uleb128 0xa
	.string	"eMAIN_J1939_SPN_IDX_520720"
	.sleb128 7
	.uleb128 0xa
	.string	"eMAIN_J1939_SPN_IDX_520722"
	.sleb128 8
	.uleb128 0xa
	.string	"eMAIN_J1939_SPN_IDX_520723"
	.sleb128 9
	.uleb128 0xa
	.string	"eMAIN_J1939_SPN_IDX_520724"
	.sleb128 10
	.uleb128 0xa
	.string	"eMAIN_J1939_SPN_IDX_520725"
	.sleb128 11
	.uleb128 0xa
	.string	"eMAIN_J1939_SPN_IDX_520726"
	.sleb128 12
	.uleb128 0xa
	.string	"eMAIN_J1939_SPN_IDX_520728"
	.sleb128 13
	.uleb128 0xa
	.string	"eMAIN_J1939_SPN_IDX_520727"
	.sleb128 14
	.uleb128 0xa
	.string	"eMAIN_J1939_SPN_MAX_NO"
	.sleb128 15
	.byte	0
	.uleb128 0x13
	.string	"DSM_CONTROL_UNIT_INDEX"
	.byte	0x1
	.byte	0xc
	.byte	0x2b
	.uaword	0xcc5
	.uleb128 0xa
	.string	"DSM_UNIT_0"
	.sleb128 0
	.uleb128 0xa
	.string	"DSM_UNIT_1"
	.sleb128 1
	.uleb128 0xa
	.string	"DSM_UNIT_2"
	.sleb128 2
	.uleb128 0xa
	.string	"DSM_UNIT_3"
	.sleb128 3
	.uleb128 0xa
	.string	"DSM_UNIT_4"
	.sleb128 4
	.uleb128 0xa
	.string	"DSM_UNIT_MAX_NUM"
	.sleb128 5
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x4
	.byte	0x4
	.uaword	0xcd3
	.uleb128 0x14
	.uleb128 0x15
	.byte	0x8
	.byte	0x7
	.byte	0x8c
	.uaword	0xcfe
	.uleb128 0xc
	.string	"module"
	.byte	0x7
	.byte	0x8e
	.uaword	0xccd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"index"
	.byte	0x7
	.byte	0x8f
	.uaword	0x21e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"IfxModule_IndexMap"
	.byte	0x7
	.byte	0x90
	.uaword	0xcd4
	.uleb128 0x9
	.byte	0x1
	.byte	0x8
	.byte	0x88
	.uaword	0xd79
	.uleb128 0xa
	.string	"IfxCpu_Index_0"
	.sleb128 0
	.uleb128 0xa
	.string	"IfxCpu_Index_1"
	.sleb128 1
	.uleb128 0xa
	.string	"IfxCpu_Index_2"
	.sleb128 2
	.uleb128 0xa
	.string	"IfxCpu_Index_3"
	.sleb128 3
	.uleb128 0xa
	.string	"IfxCpu_Index_none"
	.sleb128 4
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.byte	0x9
	.uahalf	0x160
	.uaword	0xe82
	.uleb128 0xa
	.string	"IfxScuCcu_ModulationAmplitude_0p5"
	.sleb128 0
	.uleb128 0xa
	.string	"IfxScuCcu_ModulationAmplitude_1p0"
	.sleb128 1
	.uleb128 0xa
	.string	"IfxScuCcu_ModulationAmplitude_1p25"
	.sleb128 2
	.uleb128 0xa
	.string	"IfxScuCcu_ModulationAmplitude_1p5"
	.sleb128 3
	.uleb128 0xa
	.string	"IfxScuCcu_ModulationAmplitude_2p0"
	.sleb128 4
	.uleb128 0xa
	.string	"IfxScuCcu_ModulationAmplitude_2p5"
	.sleb128 5
	.uleb128 0xa
	.string	"IfxScuCcu_ModulationAmplitude_count"
	.sleb128 6
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.byte	0xa
	.byte	0x11
	.uaword	0x109d
	.uleb128 0xa
	.string	"eCOMHAL_TX_PDUID_J1939_DM1_MCU1"
	.sleb128 0
	.uleb128 0xa
	.string	"eCOMHAL_TX_PDUID_J1939_BAM_MCU1"
	.sleb128 1
	.uleb128 0xa
	.string	"eCOMHAL_TX_PDUID_J1939_TPDT_MCU1"
	.sleb128 2
	.uleb128 0xa
	.string	"eCOMHAL_TX_PDUID_J1939_DM1_MCU2"
	.sleb128 3
	.uleb128 0xa
	.string	"eCOMHAL_TX_PDUID_J1939_BAM_MCU2"
	.sleb128 4
	.uleb128 0xa
	.string	"eCOMHAL_TX_PDUID_J1939_TPDT_MCU2"
	.sleb128 5
	.uleb128 0xa
	.string	"eCOMHAL_TX_PDUID_J1939_DM1_ACM"
	.sleb128 6
	.uleb128 0xa
	.string	"eCOMHAL_TX_PDUID_J1939_BAM_ACM"
	.sleb128 7
	.uleb128 0xa
	.string	"eCOMHAL_TX_PDUID_J1939_TPDT_ACM"
	.sleb128 8
	.uleb128 0xa
	.string	"eCOMHAL_TX_PDUID_J1939_DM1_EPS"
	.sleb128 9
	.uleb128 0xa
	.string	"eCOMHAL_TX_PDUID_J1939_BAM_EPS"
	.sleb128 10
	.uleb128 0xa
	.string	"eCOMHAL_TX_PDUID_J1939_TPDT_EPS"
	.sleb128 11
	.uleb128 0xa
	.string	"eCOMHAL_TX_PDUID_J1939_DM1_PDU"
	.sleb128 12
	.uleb128 0xa
	.string	"eCOMHAL_TX_PDUID_J1939_BAM_PDU"
	.sleb128 13
	.uleb128 0xa
	.string	"eCOMHAL_TX_PDUID_J1939_TPDT_PDU"
	.sleb128 14
	.uleb128 0xa
	.string	"eCOMHAL_MAX_TX_PDU_NO"
	.sleb128 15
	.byte	0
	.uleb128 0x17
	.string	"MAIN_ECP_vidCommonHandler"
	.byte	0x1
	.uahalf	0x107
	.byte	0x1
	.byte	0x3
	.uaword	0x10da
	.uleb128 0x18
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x107
	.uaword	0xa50
	.uleb128 0x18
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x107
	.uaword	0x10da
	.byte	0
	.uleb128 0x5
	.uaword	0x10df
	.uleb128 0x4
	.byte	0x4
	.uaword	0x5b8
	.uleb128 0x19
	.string	"MAIN_ECP_vidAFSEVBLV_UnderVoltageCallout"
	.byte	0x1
	.uahalf	0x17d
	.byte	0x1
	.uaword	.LFB312
	.uaword	.LFE312
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1188
	.uleb128 0x1a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x17d
	.uaword	0xa50
	.uaword	.LLST0
	.uleb128 0x1a
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x17d
	.uaword	0x10da
	.uaword	.LLST1
	.uleb128 0x1b
	.uaword	0x109d
	.uaword	.LBB84
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.uahalf	0x17f
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST0
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST0
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST0
	.uleb128 0x1c
	.uaword	0x10cd
	.uaword	.LLST1
	.uleb128 0x1d
	.uaword	.LVL1
	.uaword	0x2e8a
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"MAIN_ECP_vidAFSEVBLV_OverVoltageCallout"
	.byte	0x1
	.uahalf	0x175
	.byte	0x1
	.uaword	.LFB311
	.uaword	.LFE311
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x122a
	.uleb128 0x1a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x175
	.uaword	0xa50
	.uaword	.LLST6
	.uleb128 0x1a
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x175
	.uaword	0x10da
	.uaword	.LLST7
	.uleb128 0x1b
	.uaword	0x109d
	.uaword	.LBB90
	.uaword	.Ldebug_ranges0+0x20
	.byte	0x1
	.uahalf	0x177
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST6
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST6
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST6
	.uleb128 0x1c
	.uaword	0x10cd
	.uaword	.LLST7
	.uleb128 0x1d
	.uaword	.LVL3
	.uaword	0x2e8a
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"MAIN_ECP_vidAFSEVETA_OverTempDrvLeftCallout"
	.byte	0x1
	.uahalf	0x19d
	.byte	0x1
	.uaword	.LFB316
	.uaword	.LFE316
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x12d0
	.uleb128 0x1a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x19d
	.uaword	0xa50
	.uaword	.LLST12
	.uleb128 0x1a
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x19d
	.uaword	0x10da
	.uaword	.LLST13
	.uleb128 0x1b
	.uaword	0x109d
	.uaword	.LBB96
	.uaword	.Ldebug_ranges0+0x40
	.byte	0x1
	.uahalf	0x19f
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST12
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST12
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST12
	.uleb128 0x1c
	.uaword	0x10cd
	.uaword	.LLST13
	.uleb128 0x1d
	.uaword	.LVL5
	.uaword	0x2e8a
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"MAIN_ECP_vidAFSEVETA_OverTempNTC1CmdBoardCallout"
	.byte	0x1
	.uahalf	0x195
	.byte	0x1
	.uaword	.LFB315
	.uaword	.LFE315
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x137b
	.uleb128 0x1a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x195
	.uaword	0xa50
	.uaword	.LLST18
	.uleb128 0x1a
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x195
	.uaword	0x10da
	.uaword	.LLST19
	.uleb128 0x1b
	.uaword	0x109d
	.uaword	.LBB102
	.uaword	.Ldebug_ranges0+0x60
	.byte	0x1
	.uahalf	0x197
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST18
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST18
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST18
	.uleb128 0x1c
	.uaword	0x10cd
	.uaword	.LLST19
	.uleb128 0x1d
	.uaword	.LVL7
	.uaword	0x2e8a
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"MAIN_ECP_vidAFSEVBLV_P5VRefADCFltCallout"
	.byte	0x1
	.uahalf	0x185
	.byte	0x1
	.uaword	.LFB313
	.uaword	.LFE313
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x141e
	.uleb128 0x1a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x185
	.uaword	0xa50
	.uaword	.LLST24
	.uleb128 0x1a
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x185
	.uaword	0x10da
	.uaword	.LLST25
	.uleb128 0x1b
	.uaword	0x109d
	.uaword	.LBB108
	.uaword	.Ldebug_ranges0+0x80
	.byte	0x1
	.uahalf	0x187
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST24
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST24
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST24
	.uleb128 0x1c
	.uaword	0x10cd
	.uaword	.LLST25
	.uleb128 0x1d
	.uaword	.LVL9
	.uaword	0x2e8a
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"MAIN_ECP_vidAFTASOSP_MotorSpdDeratingActCallout"
	.byte	0x1
	.uahalf	0x245
	.byte	0x1
	.uaword	.LFB337
	.uaword	.LFE337
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x14c8
	.uleb128 0x1a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x245
	.uaword	0xa50
	.uaword	.LLST30
	.uleb128 0x1a
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x245
	.uaword	0x10da
	.uaword	.LLST31
	.uleb128 0x1b
	.uaword	0x109d
	.uaword	.LBB114
	.uaword	.Ldebug_ranges0+0xa0
	.byte	0x1
	.uahalf	0x247
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST30
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST30
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST30
	.uleb128 0x1c
	.uaword	0x10cd
	.uaword	.LLST31
	.uleb128 0x1d
	.uaword	.LVL11
	.uaword	0x2e8a
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"MAIN_ECP_vidABSW_COM_TimoutRxVCUCallout"
	.byte	0x1
	.uahalf	0x14d
	.byte	0x1
	.uaword	.LFB306
	.uaword	.LFE306
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x156a
	.uleb128 0x1a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x14d
	.uaword	0xa50
	.uaword	.LLST36
	.uleb128 0x1a
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x14d
	.uaword	0x10da
	.uaword	.LLST37
	.uleb128 0x1b
	.uaword	0x109d
	.uaword	.LBB120
	.uaword	.Ldebug_ranges0+0xc0
	.byte	0x1
	.uahalf	0x14f
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST36
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST36
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST36
	.uleb128 0x1c
	.uaword	0x10cd
	.uaword	.LLST37
	.uleb128 0x1d
	.uaword	.LVL13
	.uaword	0x2e8a
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"MAIN_ECP_vidABSW_COM_BusOff_CAN1Callout"
	.byte	0x1
	.uahalf	0x145
	.byte	0x1
	.uaword	.LFB305
	.uaword	.LFE305
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x160c
	.uleb128 0x1a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x145
	.uaword	0xa50
	.uaword	.LLST42
	.uleb128 0x1a
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x145
	.uaword	0x10da
	.uaword	.LLST43
	.uleb128 0x1b
	.uaword	0x109d
	.uaword	.LBB126
	.uaword	.Ldebug_ranges0+0xe0
	.byte	0x1
	.uahalf	0x147
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST42
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST42
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST42
	.uleb128 0x1c
	.uaword	0x10cd
	.uaword	.LLST43
	.uleb128 0x1d
	.uaword	.LVL15
	.uaword	0x2e8a
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"MAIN_ECP_vidAFTCMSCS_SpeedDiffCallout"
	.byte	0x1
	.uahalf	0x24d
	.byte	0x1
	.uaword	.LFB338
	.uaword	.LFE338
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x16ac
	.uleb128 0x1a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x24d
	.uaword	0xa50
	.uaword	.LLST48
	.uleb128 0x1a
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x24d
	.uaword	0x10da
	.uaword	.LLST49
	.uleb128 0x1b
	.uaword	0x109d
	.uaword	.LBB132
	.uaword	.Ldebug_ranges0+0x100
	.byte	0x1
	.uahalf	0x24f
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST48
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST48
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST48
	.uleb128 0x1c
	.uaword	0x10cd
	.uaword	.LLST49
	.uleb128 0x1d
	.uaword	.LVL17
	.uaword	0x2e8a
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"MAIN_ECP_vidAFTSLOBS_SpeedImbalanceCallout"
	.byte	0x1
	.uahalf	0x255
	.byte	0x1
	.uaword	.LFB339
	.uaword	.LFE339
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1751
	.uleb128 0x1a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x255
	.uaword	0xa50
	.uaword	.LLST54
	.uleb128 0x1a
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x255
	.uaword	0x10da
	.uaword	.LLST55
	.uleb128 0x1b
	.uaword	0x109d
	.uaword	.LBB138
	.uaword	.Ldebug_ranges0+0x120
	.byte	0x1
	.uahalf	0x257
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST54
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST54
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST54
	.uleb128 0x1c
	.uaword	0x10cd
	.uaword	.LLST55
	.uleb128 0x1d
	.uaword	.LVL19
	.uaword	0x2e8a
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"MAIN_ECP_vidAFTMTLCS_MotorOverLoadCallout"
	.byte	0x1
	.uahalf	0x215
	.byte	0x1
	.uaword	.LFB331
	.uaword	.LFE331
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x17f5
	.uleb128 0x1a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x215
	.uaword	0xa50
	.uaword	.LLST60
	.uleb128 0x1a
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x215
	.uaword	0x10da
	.uaword	.LLST61
	.uleb128 0x1b
	.uaword	0x109d
	.uaword	.LBB144
	.uaword	.Ldebug_ranges0+0x140
	.byte	0x1
	.uahalf	0x217
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST60
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST60
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST60
	.uleb128 0x1c
	.uaword	0x10cd
	.uaword	.LLST61
	.uleb128 0x1d
	.uaword	.LVL21
	.uaword	0x2e8a
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"MAIN_ECP_vidAFTMTLCS_ContorOverLoadCallout"
	.byte	0x1
	.uahalf	0x20d
	.byte	0x1
	.uaword	.LFB330
	.uaword	.LFE330
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x189a
	.uleb128 0x1a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x20d
	.uaword	0xa50
	.uaword	.LLST66
	.uleb128 0x1a
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x20d
	.uaword	0x10da
	.uaword	.LLST67
	.uleb128 0x1b
	.uaword	0x109d
	.uaword	.LBB150
	.uaword	.Ldebug_ranges0+0x160
	.byte	0x1
	.uahalf	0x20f
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST66
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST66
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST66
	.uleb128 0x1c
	.uaword	0x10cd
	.uaword	.LLST67
	.uleb128 0x1d
	.uaword	.LVL23
	.uaword	0x2e8a
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"MAIN_ECP_vidAFSMTMTA_TempWindingHead1VccCallout"
	.byte	0x1
	.uahalf	0x1cd
	.byte	0x1
	.uaword	.LFB322
	.uaword	.LFE322
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1944
	.uleb128 0x1a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x1cd
	.uaword	0xa50
	.uaword	.LLST72
	.uleb128 0x1a
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x1cd
	.uaword	0x10da
	.uaword	.LLST73
	.uleb128 0x1b
	.uaword	0x109d
	.uaword	.LBB156
	.uaword	.Ldebug_ranges0+0x180
	.byte	0x1
	.uahalf	0x1cf
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST72
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST72
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST72
	.uleb128 0x1c
	.uaword	0x10cd
	.uaword	.LLST73
	.uleb128 0x1d
	.uaword	.LVL25
	.uaword	0x2e8a
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"MAIN_ECP_vidAFSMTMTA_TempWindingHead1GndCallout"
	.byte	0x1
	.uahalf	0x1c5
	.byte	0x1
	.uaword	.LFB321
	.uaword	.LFE321
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x19ee
	.uleb128 0x1a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x1c5
	.uaword	0xa50
	.uaword	.LLST78
	.uleb128 0x1a
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x1c5
	.uaword	0x10da
	.uaword	.LLST79
	.uleb128 0x1b
	.uaword	0x109d
	.uaword	.LBB162
	.uaword	.Ldebug_ranges0+0x1a0
	.byte	0x1
	.uahalf	0x1c7
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST78
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST78
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST78
	.uleb128 0x1c
	.uaword	0x10cd
	.uaword	.LLST79
	.uleb128 0x1d
	.uaword	.LVL27
	.uaword	0x2e8a
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"MAIN_ECP_vidAFTASMTP_Wndg1DeratingActCallout"
	.byte	0x1
	.uahalf	0x23d
	.byte	0x1
	.uaword	.LFB336
	.uaword	.LFE336
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1a95
	.uleb128 0x1a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x23d
	.uaword	0xa50
	.uaword	.LLST84
	.uleb128 0x1a
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x23d
	.uaword	0x10da
	.uaword	.LLST85
	.uleb128 0x1b
	.uaword	0x109d
	.uaword	.LBB168
	.uaword	.Ldebug_ranges0+0x1c0
	.byte	0x1
	.uahalf	0x23f
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST84
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST84
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST84
	.uleb128 0x1c
	.uaword	0x10cd
	.uaword	.LLST85
	.uleb128 0x1d
	.uaword	.LVL29
	.uaword	0x2e8a
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"MAIN_ECP_vidAFSMTMTA_OverTempWdgHead1Callout"
	.byte	0x1
	.uahalf	0x1ad
	.byte	0x1
	.uaword	.LFB318
	.uaword	.LFE318
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1b3c
	.uleb128 0x1a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x1ad
	.uaword	0xa50
	.uaword	.LLST90
	.uleb128 0x1a
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x1ad
	.uaword	0x10da
	.uaword	.LLST91
	.uleb128 0x1b
	.uaword	0x109d
	.uaword	.LBB174
	.uaword	.Ldebug_ranges0+0x1e0
	.byte	0x1
	.uahalf	0x1af
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST90
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST90
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST90
	.uleb128 0x1c
	.uaword	0x10cd
	.uaword	.LLST91
	.uleb128 0x1d
	.uaword	.LVL31
	.uaword	0x2e8a
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"MAIN_ECP_vidAFTMTLCS_RunForLongTimeCallout"
	.byte	0x1
	.uahalf	0x21d
	.byte	0x1
	.uaword	.LFB332
	.uaword	.LFE332
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1be1
	.uleb128 0x1a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x21d
	.uaword	0xa50
	.uaword	.LLST96
	.uleb128 0x1a
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x21d
	.uaword	0x10da
	.uaword	.LLST97
	.uleb128 0x1b
	.uaword	0x109d
	.uaword	.LBB180
	.uaword	.Ldebug_ranges0+0x200
	.byte	0x1
	.uahalf	0x21f
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST96
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST96
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST96
	.uleb128 0x1c
	.uaword	0x10cd
	.uaword	.LLST97
	.uleb128 0x1d
	.uaword	.LVL33
	.uaword	0x2e8a
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"MAIN_ECP_vidAFSEVBHV_UnderVoltageCallout"
	.byte	0x1
	.uahalf	0x15d
	.byte	0x1
	.uaword	.LFB308
	.uaword	.LFE308
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1c84
	.uleb128 0x1a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x15d
	.uaword	0xa50
	.uaword	.LLST102
	.uleb128 0x1a
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x15d
	.uaword	0x10da
	.uaword	.LLST103
	.uleb128 0x1b
	.uaword	0x109d
	.uaword	.LBB186
	.uaword	.Ldebug_ranges0+0x220
	.byte	0x1
	.uahalf	0x15f
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST102
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST102
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST102
	.uleb128 0x1c
	.uaword	0x10cd
	.uaword	.LLST103
	.uleb128 0x1d
	.uaword	.LVL35
	.uaword	0x2e8a
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"MAIN_ECP_vidAFSEVBHV_VoltageGndCallout"
	.byte	0x1
	.uahalf	0x16d
	.byte	0x1
	.uaword	.LFB310
	.uaword	.LFE310
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1d25
	.uleb128 0x1a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x16d
	.uaword	0xa50
	.uaword	.LLST108
	.uleb128 0x1a
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x16d
	.uaword	0x10da
	.uaword	.LLST109
	.uleb128 0x1b
	.uaword	0x109d
	.uaword	.LBB192
	.uaword	.Ldebug_ranges0+0x240
	.byte	0x1
	.uahalf	0x16f
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST108
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST108
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST108
	.uleb128 0x1c
	.uaword	0x10cd
	.uaword	.LLST109
	.uleb128 0x1d
	.uaword	.LVL37
	.uaword	0x2e8a
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"MAIN_ECP_vidAFTASBDS_BattVoltDeratingActCallout"
	.byte	0x1
	.uahalf	0x22d
	.byte	0x1
	.uaword	.LFB334
	.uaword	.LFE334
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1dcf
	.uleb128 0x1a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x22d
	.uaword	0xa50
	.uaword	.LLST114
	.uleb128 0x1a
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x22d
	.uaword	0x10da
	.uaword	.LLST115
	.uleb128 0x1b
	.uaword	0x109d
	.uaword	.LBB198
	.uaword	.Ldebug_ranges0+0x260
	.byte	0x1
	.uahalf	0x22f
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST114
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST114
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST114
	.uleb128 0x1c
	.uaword	0x10cd
	.uaword	.LLST115
	.uleb128 0x1d
	.uaword	.LVL39
	.uaword	0x2e8a
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"MAIN_ECP_vidAFSEVBHV_OverVoltageCallout"
	.byte	0x1
	.uahalf	0x155
	.byte	0x1
	.uaword	.LFB307
	.uaword	.LFE307
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1e71
	.uleb128 0x1a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x155
	.uaword	0xa50
	.uaword	.LLST120
	.uleb128 0x1a
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x155
	.uaword	0x10da
	.uaword	.LLST121
	.uleb128 0x1b
	.uaword	0x109d
	.uaword	.LBB204
	.uaword	.Ldebug_ranges0+0x280
	.byte	0x1
	.uahalf	0x157
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST120
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST120
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST120
	.uleb128 0x1c
	.uaword	0x10cd
	.uaword	.LLST121
	.uleb128 0x1d
	.uaword	.LVL41
	.uaword	0x2e8a
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"MAIN_ECP_vidAFSEVBHV_VoltageVccCallout"
	.byte	0x1
	.uahalf	0x165
	.byte	0x1
	.uaword	.LFB309
	.uaword	.LFE309
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1f12
	.uleb128 0x1a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x165
	.uaword	0xa50
	.uaword	.LLST126
	.uleb128 0x1a
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x165
	.uaword	0x10da
	.uaword	.LLST127
	.uleb128 0x1b
	.uaword	0x109d
	.uaword	.LBB210
	.uaword	.Ldebug_ranges0+0x2a0
	.byte	0x1
	.uahalf	0x167
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST126
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST126
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST126
	.uleb128 0x1c
	.uaword	0x10cd
	.uaword	.LLST127
	.uleb128 0x1d
	.uaword	.LVL43
	.uaword	0x2e8a
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"MAIN_ECP_vidABSW_HW2_FPGA_OverVoltVBatCallout"
	.byte	0x1
	.uahalf	0x13d
	.byte	0x1
	.uaword	.LFB304
	.uaword	.LFE304
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1fba
	.uleb128 0x1a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x13d
	.uaword	0xa50
	.uaword	.LLST132
	.uleb128 0x1a
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x13d
	.uaword	0x10da
	.uaword	.LLST133
	.uleb128 0x1b
	.uaword	0x109d
	.uaword	.LBB216
	.uaword	.Ldebug_ranges0+0x2c0
	.byte	0x1
	.uahalf	0x13f
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST132
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST132
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST132
	.uleb128 0x1c
	.uaword	0x10cd
	.uaword	.LLST133
	.uleb128 0x1d
	.uaword	.LVL45
	.uaword	0x2e8a
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"MAIN_ECP_vidAFSEVETA_TempIgbtLeftGndCallout"
	.byte	0x1
	.uahalf	0x1b5
	.byte	0x1
	.uaword	.LFB319
	.uaword	.LFE319
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x2060
	.uleb128 0x1a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x1b5
	.uaword	0xa50
	.uaword	.LLST138
	.uleb128 0x1a
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x1b5
	.uaword	0x10da
	.uaword	.LLST139
	.uleb128 0x1b
	.uaword	0x109d
	.uaword	.LBB222
	.uaword	.Ldebug_ranges0+0x2e0
	.byte	0x1
	.uahalf	0x1b7
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST138
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST138
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST138
	.uleb128 0x1c
	.uaword	0x10cd
	.uaword	.LLST139
	.uleb128 0x1d
	.uaword	.LVL47
	.uaword	0x2e8a
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"MAIN_ECP_vidAFSEVETA_TempIgbtLeftVccCallout"
	.byte	0x1
	.uahalf	0x1bd
	.byte	0x1
	.uaword	.LFB320
	.uaword	.LFE320
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x2106
	.uleb128 0x1a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x1bd
	.uaword	0xa50
	.uaword	.LLST144
	.uleb128 0x1a
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x1bd
	.uaword	0x10da
	.uaword	.LLST145
	.uleb128 0x1b
	.uaword	0x109d
	.uaword	.LBB228
	.uaword	.Ldebug_ranges0+0x300
	.byte	0x1
	.uahalf	0x1bf
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST144
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST144
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST144
	.uleb128 0x1c
	.uaword	0x10cd
	.uaword	.LLST145
	.uleb128 0x1d
	.uaword	.LVL49
	.uaword	0x2e8a
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"MAIN_ECP_vidAFSEVETA_OverTempIgbtLeftCallout"
	.byte	0x1
	.uahalf	0x1a5
	.byte	0x1
	.uaword	.LFB317
	.uaword	.LFE317
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x21ad
	.uleb128 0x1a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x1a5
	.uaword	0xa50
	.uaword	.LLST150
	.uleb128 0x1a
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x1a5
	.uaword	0x10da
	.uaword	.LLST151
	.uleb128 0x1b
	.uaword	0x109d
	.uaword	.LBB234
	.uaword	.Ldebug_ranges0+0x320
	.byte	0x1
	.uahalf	0x1a7
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST150
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST150
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST150
	.uleb128 0x1c
	.uaword	0x10cd
	.uaword	.LLST151
	.uleb128 0x1d
	.uaword	.LVL51
	.uaword	0x2e8a
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"MAIN_ECP_vidAFSEVETA_IgbtTempRationalCallout"
	.byte	0x1
	.uahalf	0x18d
	.byte	0x1
	.uaword	.LFB314
	.uaword	.LFE314
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x2254
	.uleb128 0x1a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x18d
	.uaword	0xa50
	.uaword	.LLST156
	.uleb128 0x1a
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x18d
	.uaword	0x10da
	.uaword	.LLST157
	.uleb128 0x1b
	.uaword	0x109d
	.uaword	.LBB240
	.uaword	.Ldebug_ranges0+0x340
	.byte	0x1
	.uahalf	0x18f
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST156
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST156
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST156
	.uleb128 0x1c
	.uaword	0x10cd
	.uaword	.LLST157
	.uleb128 0x1d
	.uaword	.LVL53
	.uaword	0x2e8a
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"MAIN_ECP_vidAFTASETP_PmDeratingActCallout"
	.byte	0x1
	.uahalf	0x235
	.byte	0x1
	.uaword	.LFB335
	.uaword	.LFE335
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x22f8
	.uleb128 0x1a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x235
	.uaword	0xa50
	.uaword	.LLST162
	.uleb128 0x1a
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x235
	.uaword	0x10da
	.uaword	.LLST163
	.uleb128 0x1b
	.uaword	0x109d
	.uaword	.LBB246
	.uaword	.Ldebug_ranges0+0x360
	.byte	0x1
	.uahalf	0x237
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST162
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST162
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST162
	.uleb128 0x1c
	.uaword	0x10cd
	.uaword	.LLST163
	.uleb128 0x1d
	.uaword	.LVL55
	.uaword	0x2e8a
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"MAIN_ECP_vidABSW_HW_FPGA_IGBT_LCallout"
	.byte	0x1
	.uahalf	0x11d
	.byte	0x1
	.uaword	.LFB300
	.uaword	.LFE300
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x2399
	.uleb128 0x1a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x11d
	.uaword	0xa50
	.uaword	.LLST168
	.uleb128 0x1a
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x11d
	.uaword	0x10da
	.uaword	.LLST169
	.uleb128 0x1b
	.uaword	0x109d
	.uaword	.LBB252
	.uaword	.Ldebug_ranges0+0x380
	.byte	0x1
	.uahalf	0x11f
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST168
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST168
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST168
	.uleb128 0x1c
	.uaword	0x10cd
	.uaword	.LLST169
	.uleb128 0x1d
	.uaword	.LVL57
	.uaword	0x2e8a
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"MAIN_ECP_vidABSW_HW_FPGA_IGBT_HCallout"
	.byte	0x1
	.uahalf	0x115
	.byte	0x1
	.uaword	.LFB299
	.uaword	.LFE299
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x243a
	.uleb128 0x1a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x115
	.uaword	0xa50
	.uaword	.LLST174
	.uleb128 0x1a
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x115
	.uaword	0x10da
	.uaword	.LLST175
	.uleb128 0x1b
	.uaword	0x109d
	.uaword	.LBB258
	.uaword	.Ldebug_ranges0+0x3a0
	.byte	0x1
	.uahalf	0x117
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST174
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST174
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST174
	.uleb128 0x1c
	.uaword	0x10cd
	.uaword	.LLST175
	.uleb128 0x1d
	.uaword	.LVL59
	.uaword	0x2e8a
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"MAIN_ECP_vidAFTCMTCS_VoltageMarginLowCallout"
	.byte	0x1
	.uahalf	0x225
	.byte	0x1
	.uaword	.LFB333
	.uaword	.LFE333
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x24e1
	.uleb128 0x1a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x225
	.uaword	0xa50
	.uaword	.LLST180
	.uleb128 0x1a
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x225
	.uaword	0x10da
	.uaword	.LLST181
	.uleb128 0x1b
	.uaword	0x109d
	.uaword	.LBB264
	.uaword	.Ldebug_ranges0+0x3c0
	.byte	0x1
	.uahalf	0x227
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST180
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST180
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST180
	.uleb128 0x1c
	.uaword	0x10cd
	.uaword	.LLST181
	.uleb128 0x1d
	.uaword	.LVL61
	.uaword	0x2e8a
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"MAIN_ECP_vidAFTMTLCS_CurrentSumErrorCallout"
	.byte	0x1
	.uahalf	0x1d5
	.byte	0x1
	.uaword	.LFB323
	.uaword	.LFE323
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x2587
	.uleb128 0x1a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x1d5
	.uaword	0xa50
	.uaword	.LLST186
	.uleb128 0x1a
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x1d5
	.uaword	0x10da
	.uaword	.LLST187
	.uleb128 0x1b
	.uaword	0x109d
	.uaword	.LBB270
	.uaword	.Ldebug_ranges0+0x3e0
	.byte	0x1
	.uahalf	0x1d7
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST186
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST186
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST186
	.uleb128 0x1c
	.uaword	0x10cd
	.uaword	.LLST187
	.uleb128 0x1d
	.uaword	.LVL63
	.uaword	0x2e8a
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"MAIN_ECP_vidAFTMTLCS_CurSenrPhaW_VCCCallout"
	.byte	0x1
	.uahalf	0x205
	.byte	0x1
	.uaword	.LFB329
	.uaword	.LFE329
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x262d
	.uleb128 0x1a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x205
	.uaword	0xa50
	.uaword	.LLST192
	.uleb128 0x1a
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x205
	.uaword	0x10da
	.uaword	.LLST193
	.uleb128 0x1b
	.uaword	0x109d
	.uaword	.LBB276
	.uaword	.Ldebug_ranges0+0x400
	.byte	0x1
	.uahalf	0x207
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST192
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST192
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST192
	.uleb128 0x1c
	.uaword	0x10cd
	.uaword	.LLST193
	.uleb128 0x1d
	.uaword	.LVL65
	.uaword	0x2e8a
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"MAIN_ECP_vidAFTMTLCS_CurSenrPhaW_GNDCallout"
	.byte	0x1
	.uahalf	0x1fd
	.byte	0x1
	.uaword	.LFB328
	.uaword	.LFE328
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x26d3
	.uleb128 0x1a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x1fd
	.uaword	0xa50
	.uaword	.LLST198
	.uleb128 0x1a
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x1fd
	.uaword	0x10da
	.uaword	.LLST199
	.uleb128 0x1b
	.uaword	0x109d
	.uaword	.LBB282
	.uaword	.Ldebug_ranges0+0x420
	.byte	0x1
	.uahalf	0x1ff
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST198
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST198
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST198
	.uleb128 0x1c
	.uaword	0x10cd
	.uaword	.LLST199
	.uleb128 0x1d
	.uaword	.LVL67
	.uaword	0x2e8a
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"MAIN_ECP_vidAFTMTLCS_CurSenrPhaV_VCCCallout"
	.byte	0x1
	.uahalf	0x1f5
	.byte	0x1
	.uaword	.LFB327
	.uaword	.LFE327
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x2779
	.uleb128 0x1a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x1f5
	.uaword	0xa50
	.uaword	.LLST204
	.uleb128 0x1a
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x1f5
	.uaword	0x10da
	.uaword	.LLST205
	.uleb128 0x1b
	.uaword	0x109d
	.uaword	.LBB288
	.uaword	.Ldebug_ranges0+0x440
	.byte	0x1
	.uahalf	0x1f7
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST204
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST204
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST204
	.uleb128 0x1c
	.uaword	0x10cd
	.uaword	.LLST205
	.uleb128 0x1d
	.uaword	.LVL69
	.uaword	0x2e8a
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"MAIN_ECP_vidAFTMTLCS_CurSenrPhaV_GNDCallout"
	.byte	0x1
	.uahalf	0x1ed
	.byte	0x1
	.uaword	.LFB326
	.uaword	.LFE326
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x281f
	.uleb128 0x1a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x1ed
	.uaword	0xa50
	.uaword	.LLST210
	.uleb128 0x1a
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x1ed
	.uaword	0x10da
	.uaword	.LLST211
	.uleb128 0x1b
	.uaword	0x109d
	.uaword	.LBB294
	.uaword	.Ldebug_ranges0+0x460
	.byte	0x1
	.uahalf	0x1ef
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST210
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST210
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST210
	.uleb128 0x1c
	.uaword	0x10cd
	.uaword	.LLST211
	.uleb128 0x1d
	.uaword	.LVL71
	.uaword	0x2e8a
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"MAIN_ECP_vidAFTMTLCS_CurSenrPhaU_VCCCallout"
	.byte	0x1
	.uahalf	0x1e5
	.byte	0x1
	.uaword	.LFB325
	.uaword	.LFE325
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x28c5
	.uleb128 0x1a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x1e5
	.uaword	0xa50
	.uaword	.LLST216
	.uleb128 0x1a
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x1e5
	.uaword	0x10da
	.uaword	.LLST217
	.uleb128 0x1b
	.uaword	0x109d
	.uaword	.LBB300
	.uaword	.Ldebug_ranges0+0x480
	.byte	0x1
	.uahalf	0x1e7
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST216
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST216
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST216
	.uleb128 0x1c
	.uaword	0x10cd
	.uaword	.LLST217
	.uleb128 0x1d
	.uaword	.LVL73
	.uaword	0x2e8a
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"MAIN_ECP_vidAFTMTLCS_CurSenrPhaU_GNDCallout"
	.byte	0x1
	.uahalf	0x1dd
	.byte	0x1
	.uaword	.LFB324
	.uaword	.LFE324
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x296b
	.uleb128 0x1a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x1dd
	.uaword	0xa50
	.uaword	.LLST222
	.uleb128 0x1a
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x1dd
	.uaword	0x10da
	.uaword	.LLST223
	.uleb128 0x1b
	.uaword	0x109d
	.uaword	.LBB306
	.uaword	.Ldebug_ranges0+0x4a0
	.byte	0x1
	.uahalf	0x1df
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST222
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST222
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST222
	.uleb128 0x1c
	.uaword	0x10cd
	.uaword	.LLST223
	.uleb128 0x1d
	.uaword	.LVL75
	.uaword	0x2e8a
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"MAIN_ECP_vidABSW_HW_FPGA_OverUnderCurWICallout"
	.byte	0x1
	.uahalf	0x135
	.byte	0x1
	.uaword	.LFB303
	.uaword	.LFE303
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x2a14
	.uleb128 0x1a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x135
	.uaword	0xa50
	.uaword	.LLST228
	.uleb128 0x1a
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x135
	.uaword	0x10da
	.uaword	.LLST229
	.uleb128 0x1b
	.uaword	0x109d
	.uaword	.LBB312
	.uaword	.Ldebug_ranges0+0x4c0
	.byte	0x1
	.uahalf	0x137
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST228
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST228
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST228
	.uleb128 0x1c
	.uaword	0x10cd
	.uaword	.LLST229
	.uleb128 0x1d
	.uaword	.LVL77
	.uaword	0x2e8a
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"MAIN_ECP_vidABSW_HW_FPGA_OverUnderCurVICallout"
	.byte	0x1
	.uahalf	0x12d
	.byte	0x1
	.uaword	.LFB302
	.uaword	.LFE302
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x2abd
	.uleb128 0x1a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x12d
	.uaword	0xa50
	.uaword	.LLST234
	.uleb128 0x1a
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x12d
	.uaword	0x10da
	.uaword	.LLST235
	.uleb128 0x1b
	.uaword	0x109d
	.uaword	.LBB318
	.uaword	.Ldebug_ranges0+0x4e0
	.byte	0x1
	.uahalf	0x12f
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST234
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST234
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST234
	.uleb128 0x1c
	.uaword	0x10cd
	.uaword	.LLST235
	.uleb128 0x1d
	.uaword	.LVL79
	.uaword	0x2e8a
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"MAIN_ECP_vidABSW_HW_FPGA_OverUnderCurUICallout"
	.byte	0x1
	.uahalf	0x125
	.byte	0x1
	.uaword	.LFB301
	.uaword	.LFE301
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x2b66
	.uleb128 0x1a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x125
	.uaword	0xa50
	.uaword	.LLST240
	.uleb128 0x1a
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x125
	.uaword	0x10da
	.uaword	.LLST241
	.uleb128 0x1b
	.uaword	0x109d
	.uaword	.LBB324
	.uaword	.Ldebug_ranges0+0x500
	.byte	0x1
	.uahalf	0x127
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST240
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST240
	.uleb128 0x1c
	.uaword	0x10c1
	.uaword	.LLST240
	.uleb128 0x1c
	.uaword	0x10cd
	.uaword	.LLST241
	.uleb128 0x1d
	.uaword	.LVL81
	.uaword	0x2e8a
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.string	"MAIN_J1939_vidSendTPDT"
	.byte	0x1
	.byte	0xfc
	.byte	0x1
	.uaword	.LFB297
	.uaword	.LFE297
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x2bab
	.uleb128 0x20
	.uaword	.LVL82
	.byte	0x1
	.uaword	0x2eb6
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_J1939_au8TPDTTxBuf
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x38
	.byte	0
	.byte	0
	.uleb128 0x1f
	.string	"MAIN_J1939_vidSendBAM"
	.byte	0x1
	.byte	0xf5
	.byte	0x1
	.uaword	.LFB296
	.uaword	.LFE296
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x2bef
	.uleb128 0x20
	.uaword	.LVL83
	.byte	0x1
	.uaword	0x2eb6
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_J1939_au8BAMTxBuf
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x37
	.byte	0
	.byte	0
	.uleb128 0x1f
	.string	"MAIN_J1939_vidSendDM1"
	.byte	0x1
	.byte	0xee
	.byte	0x1
	.uaword	.LFB295
	.uaword	.LFE295
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x2c33
	.uleb128 0x20
	.uaword	.LVL84
	.byte	0x1
	.uaword	0x2eb6
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_J1939_au8DM1TxBuf
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x36
	.byte	0
	.byte	0
	.uleb128 0x1f
	.string	"MAIN_J1939_vidSPNBufInit"
	.byte	0x1
	.byte	0xe9
	.byte	0x1
	.uaword	.LFB294
	.uaword	.LFE294
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x2c81
	.uleb128 0x20
	.uaword	.LVL85
	.byte	0x1
	.uaword	0x2ee1
	.uleb128 0x1e
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x8
	.byte	0x28
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0xff
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_J1939_au8SPNBuf
	.byte	0
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"MAIN_ECP_vidInvalidEventHandler_ACM"
	.byte	0x1
	.byte	0xd4
	.byte	0x1
	.uaword	.LFB293
	.uaword	.LFE293
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x2ccd
	.uleb128 0x22
	.string	"tFuncPtr"
	.byte	0x1
	.byte	0xd4
	.uaword	0xa71
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x7
	.uaword	0x244
	.uaword	0x2cdd
	.uleb128 0x8
	.uaword	0x2bf
	.byte	0
	.byte	0
	.uleb128 0x23
	.string	"MAIN_J1939_au32SpnLogState"
	.byte	0x1
	.byte	0x33
	.uaword	0x2ccd
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_J1939_au32SpnLogState
	.uleb128 0x7
	.uaword	0x1cf
	.uaword	0x2d15
	.uleb128 0x8
	.uaword	0x2bf
	.byte	0x7
	.byte	0
	.uleb128 0x23
	.string	"MAIN_J1939_au8DM1TxBuf"
	.byte	0x1
	.byte	0x34
	.uaword	0x2d05
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_J1939_au8DM1TxBuf
	.uleb128 0x23
	.string	"MAIN_J1939_au8BAMTxBuf"
	.byte	0x1
	.byte	0x35
	.uaword	0x2d05
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_J1939_au8BAMTxBuf
	.uleb128 0x23
	.string	"MAIN_J1939_au8TPDTTxBuf"
	.byte	0x1
	.byte	0x36
	.uaword	0x2d05
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_J1939_au8TPDTTxBuf
	.uleb128 0x7
	.uaword	0x1cf
	.uaword	0x2d92
	.uleb128 0x8
	.uaword	0x2bf
	.byte	0x27
	.byte	0
	.uleb128 0x23
	.string	"MAIN_J1939_au8SPNBuf"
	.byte	0x1
	.byte	0x37
	.uaword	0x2d82
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_J1939_au8SPNBuf
	.uleb128 0x23
	.string	"MAIN_J1939_tVarSet"
	.byte	0x1
	.byte	0x38
	.uaword	0x46f
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_J1939_tVarSet
	.uleb128 0x7
	.uaword	0xcfe
	.uaword	0x2de4
	.uleb128 0x8
	.uaword	0x2bf
	.byte	0x3
	.byte	0
	.uleb128 0x24
	.string	"IfxCpu_cfg_indexMap"
	.byte	0x8
	.byte	0xaa
	.uaword	0x2e01
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.uaword	0x2dd4
	.uleb128 0x7
	.uaword	0x656
	.uaword	0x2e16
	.uleb128 0x8
	.uaword	0x2bf
	.byte	0x28
	.byte	0
	.uleb128 0x25
	.string	"MAIN_katFaultCfgSet_ACM"
	.byte	0x1
	.byte	0x74
	.uaword	0x2e3c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_katFaultCfgSet_ACM
	.uleb128 0x5
	.uaword	0x2e06
	.uleb128 0x25
	.string	"MAIN_ku16FaultNum_ACM"
	.byte	0x1
	.byte	0xb4
	.uaword	0x779
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_ku16FaultNum_ACM
	.uleb128 0x25
	.string	"MAIN_ktJ1939EcuCfg_ACM"
	.byte	0x1
	.byte	0xbd
	.uaword	0xa77
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_ktJ1939EcuCfg_ACM
	.uleb128 0x26
	.byte	0x1
	.string	"MAIN_REC_vidSetErrCode"
	.byte	0x6
	.byte	0x2a
	.byte	0x1
	.byte	0x1
	.uaword	0x2eb6
	.uleb128 0x10
	.uaword	0x2d1
	.uleb128 0x10
	.uaword	0x2d1
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.string	"ComHal_vidSendMessage"
	.byte	0xa
	.byte	0x2a
	.byte	0x1
	.byte	0x1
	.uaword	0x2ee1
	.uleb128 0x10
	.uaword	0x1fa
	.uleb128 0x10
	.uaword	0x2e8
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.string	"rba_BswSrv_MemSet"
	.byte	0xb
	.byte	0x47
	.byte	0x1
	.uaword	0x2d6
	.byte	0x1
	.uleb128 0x10
	.uaword	0x2d6
	.uleb128 0x10
	.uaword	0x21e
	.uleb128 0x10
	.uaword	0x244
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x4
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
	.uleb128 0x12
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x35
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL1-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL1-1
	.uaword	.LFE312
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL1-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL1-1
	.uaword	.LFE312
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL2
	.uaword	.LVL3-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL3-1
	.uaword	.LFE311
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL2
	.uaword	.LVL3-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL3-1
	.uaword	.LFE311
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL4
	.uaword	.LVL5-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL5-1
	.uaword	.LFE316
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL4
	.uaword	.LVL5-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL5-1
	.uaword	.LFE316
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL6
	.uaword	.LVL7-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL7-1
	.uaword	.LFE315
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL6
	.uaword	.LVL7-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL7-1
	.uaword	.LFE315
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL8
	.uaword	.LVL9-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL9-1
	.uaword	.LFE313
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL8
	.uaword	.LVL9-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL9-1
	.uaword	.LFE313
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL10
	.uaword	.LVL11-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL11-1
	.uaword	.LFE337
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL10
	.uaword	.LVL11-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL11-1
	.uaword	.LFE337
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL12
	.uaword	.LVL13-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL13-1
	.uaword	.LFE306
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL12
	.uaword	.LVL13-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL13-1
	.uaword	.LFE306
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST42:
	.uaword	.LVL14
	.uaword	.LVL15-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL15-1
	.uaword	.LFE305
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST43:
	.uaword	.LVL14
	.uaword	.LVL15-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL15-1
	.uaword	.LFE305
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST48:
	.uaword	.LVL16
	.uaword	.LVL17-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL17-1
	.uaword	.LFE338
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST49:
	.uaword	.LVL16
	.uaword	.LVL17-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL17-1
	.uaword	.LFE338
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST54:
	.uaword	.LVL18
	.uaword	.LVL19-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL19-1
	.uaword	.LFE339
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST55:
	.uaword	.LVL18
	.uaword	.LVL19-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL19-1
	.uaword	.LFE339
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST60:
	.uaword	.LVL20
	.uaword	.LVL21-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL21-1
	.uaword	.LFE331
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST61:
	.uaword	.LVL20
	.uaword	.LVL21-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL21-1
	.uaword	.LFE331
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST66:
	.uaword	.LVL22
	.uaword	.LVL23-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL23-1
	.uaword	.LFE330
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST67:
	.uaword	.LVL22
	.uaword	.LVL23-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL23-1
	.uaword	.LFE330
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST72:
	.uaword	.LVL24
	.uaword	.LVL25-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL25-1
	.uaword	.LFE322
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST73:
	.uaword	.LVL24
	.uaword	.LVL25-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL25-1
	.uaword	.LFE322
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST78:
	.uaword	.LVL26
	.uaword	.LVL27-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL27-1
	.uaword	.LFE321
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST79:
	.uaword	.LVL26
	.uaword	.LVL27-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL27-1
	.uaword	.LFE321
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST84:
	.uaword	.LVL28
	.uaword	.LVL29-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL29-1
	.uaword	.LFE336
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST85:
	.uaword	.LVL28
	.uaword	.LVL29-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL29-1
	.uaword	.LFE336
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST90:
	.uaword	.LVL30
	.uaword	.LVL31-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL31-1
	.uaword	.LFE318
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST91:
	.uaword	.LVL30
	.uaword	.LVL31-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL31-1
	.uaword	.LFE318
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST96:
	.uaword	.LVL32
	.uaword	.LVL33-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL33-1
	.uaword	.LFE332
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST97:
	.uaword	.LVL32
	.uaword	.LVL33-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL33-1
	.uaword	.LFE332
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST102:
	.uaword	.LVL34
	.uaword	.LVL35-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL35-1
	.uaword	.LFE308
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST103:
	.uaword	.LVL34
	.uaword	.LVL35-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL35-1
	.uaword	.LFE308
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST108:
	.uaword	.LVL36
	.uaword	.LVL37-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL37-1
	.uaword	.LFE310
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST109:
	.uaword	.LVL36
	.uaword	.LVL37-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL37-1
	.uaword	.LFE310
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST114:
	.uaword	.LVL38
	.uaword	.LVL39-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL39-1
	.uaword	.LFE334
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST115:
	.uaword	.LVL38
	.uaword	.LVL39-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL39-1
	.uaword	.LFE334
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST120:
	.uaword	.LVL40
	.uaword	.LVL41-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL41-1
	.uaword	.LFE307
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST121:
	.uaword	.LVL40
	.uaword	.LVL41-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL41-1
	.uaword	.LFE307
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST126:
	.uaword	.LVL42
	.uaword	.LVL43-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL43-1
	.uaword	.LFE309
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST127:
	.uaword	.LVL42
	.uaword	.LVL43-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL43-1
	.uaword	.LFE309
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST132:
	.uaword	.LVL44
	.uaword	.LVL45-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL45-1
	.uaword	.LFE304
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST133:
	.uaword	.LVL44
	.uaword	.LVL45-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL45-1
	.uaword	.LFE304
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST138:
	.uaword	.LVL46
	.uaword	.LVL47-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL47-1
	.uaword	.LFE319
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST139:
	.uaword	.LVL46
	.uaword	.LVL47-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL47-1
	.uaword	.LFE319
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST144:
	.uaword	.LVL48
	.uaword	.LVL49-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL49-1
	.uaword	.LFE320
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST145:
	.uaword	.LVL48
	.uaword	.LVL49-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL49-1
	.uaword	.LFE320
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST150:
	.uaword	.LVL50
	.uaword	.LVL51-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL51-1
	.uaword	.LFE317
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST151:
	.uaword	.LVL50
	.uaword	.LVL51-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL51-1
	.uaword	.LFE317
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST156:
	.uaword	.LVL52
	.uaword	.LVL53-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL53-1
	.uaword	.LFE314
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST157:
	.uaword	.LVL52
	.uaword	.LVL53-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL53-1
	.uaword	.LFE314
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST162:
	.uaword	.LVL54
	.uaword	.LVL55-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL55-1
	.uaword	.LFE335
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST163:
	.uaword	.LVL54
	.uaword	.LVL55-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL55-1
	.uaword	.LFE335
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST168:
	.uaword	.LVL56
	.uaword	.LVL57-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL57-1
	.uaword	.LFE300
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST169:
	.uaword	.LVL56
	.uaword	.LVL57-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL57-1
	.uaword	.LFE300
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST174:
	.uaword	.LVL58
	.uaword	.LVL59-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL59-1
	.uaword	.LFE299
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST175:
	.uaword	.LVL58
	.uaword	.LVL59-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL59-1
	.uaword	.LFE299
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST180:
	.uaword	.LVL60
	.uaword	.LVL61-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL61-1
	.uaword	.LFE333
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST181:
	.uaword	.LVL60
	.uaword	.LVL61-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL61-1
	.uaword	.LFE333
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST186:
	.uaword	.LVL62
	.uaword	.LVL63-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL63-1
	.uaword	.LFE323
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST187:
	.uaword	.LVL62
	.uaword	.LVL63-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL63-1
	.uaword	.LFE323
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST192:
	.uaword	.LVL64
	.uaword	.LVL65-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL65-1
	.uaword	.LFE329
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST193:
	.uaword	.LVL64
	.uaword	.LVL65-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL65-1
	.uaword	.LFE329
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST198:
	.uaword	.LVL66
	.uaword	.LVL67-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL67-1
	.uaword	.LFE328
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST199:
	.uaword	.LVL66
	.uaword	.LVL67-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL67-1
	.uaword	.LFE328
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST204:
	.uaword	.LVL68
	.uaword	.LVL69-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL69-1
	.uaword	.LFE327
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST205:
	.uaword	.LVL68
	.uaword	.LVL69-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL69-1
	.uaword	.LFE327
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST210:
	.uaword	.LVL70
	.uaword	.LVL71-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL71-1
	.uaword	.LFE326
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST211:
	.uaword	.LVL70
	.uaword	.LVL71-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL71-1
	.uaword	.LFE326
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST216:
	.uaword	.LVL72
	.uaword	.LVL73-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL73-1
	.uaword	.LFE325
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST217:
	.uaword	.LVL72
	.uaword	.LVL73-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL73-1
	.uaword	.LFE325
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST222:
	.uaword	.LVL74
	.uaword	.LVL75-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL75-1
	.uaword	.LFE324
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST223:
	.uaword	.LVL74
	.uaword	.LVL75-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL75-1
	.uaword	.LFE324
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST228:
	.uaword	.LVL76
	.uaword	.LVL77-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL77-1
	.uaword	.LFE303
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST229:
	.uaword	.LVL76
	.uaword	.LVL77-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL77-1
	.uaword	.LFE303
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST234:
	.uaword	.LVL78
	.uaword	.LVL79-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL79-1
	.uaword	.LFE302
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST235:
	.uaword	.LVL78
	.uaword	.LVL79-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL79-1
	.uaword	.LFE302
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST240:
	.uaword	.LVL80
	.uaword	.LVL81-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL81-1
	.uaword	.LFE301
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST241:
	.uaword	.LVL80
	.uaword	.LVL81-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL81-1
	.uaword	.LFE301
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x184
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB312
	.uaword	.LFE312-.LFB312
	.uaword	.LFB311
	.uaword	.LFE311-.LFB311
	.uaword	.LFB316
	.uaword	.LFE316-.LFB316
	.uaword	.LFB315
	.uaword	.LFE315-.LFB315
	.uaword	.LFB313
	.uaword	.LFE313-.LFB313
	.uaword	.LFB337
	.uaword	.LFE337-.LFB337
	.uaword	.LFB306
	.uaword	.LFE306-.LFB306
	.uaword	.LFB305
	.uaword	.LFE305-.LFB305
	.uaword	.LFB338
	.uaword	.LFE338-.LFB338
	.uaword	.LFB339
	.uaword	.LFE339-.LFB339
	.uaword	.LFB331
	.uaword	.LFE331-.LFB331
	.uaword	.LFB330
	.uaword	.LFE330-.LFB330
	.uaword	.LFB322
	.uaword	.LFE322-.LFB322
	.uaword	.LFB321
	.uaword	.LFE321-.LFB321
	.uaword	.LFB336
	.uaword	.LFE336-.LFB336
	.uaword	.LFB318
	.uaword	.LFE318-.LFB318
	.uaword	.LFB332
	.uaword	.LFE332-.LFB332
	.uaword	.LFB308
	.uaword	.LFE308-.LFB308
	.uaword	.LFB310
	.uaword	.LFE310-.LFB310
	.uaword	.LFB334
	.uaword	.LFE334-.LFB334
	.uaword	.LFB307
	.uaword	.LFE307-.LFB307
	.uaword	.LFB309
	.uaword	.LFE309-.LFB309
	.uaword	.LFB304
	.uaword	.LFE304-.LFB304
	.uaword	.LFB319
	.uaword	.LFE319-.LFB319
	.uaword	.LFB320
	.uaword	.LFE320-.LFB320
	.uaword	.LFB317
	.uaword	.LFE317-.LFB317
	.uaword	.LFB314
	.uaword	.LFE314-.LFB314
	.uaword	.LFB335
	.uaword	.LFE335-.LFB335
	.uaword	.LFB300
	.uaword	.LFE300-.LFB300
	.uaword	.LFB299
	.uaword	.LFE299-.LFB299
	.uaword	.LFB333
	.uaword	.LFE333-.LFB333
	.uaword	.LFB323
	.uaword	.LFE323-.LFB323
	.uaword	.LFB329
	.uaword	.LFE329-.LFB329
	.uaword	.LFB328
	.uaword	.LFE328-.LFB328
	.uaword	.LFB327
	.uaword	.LFE327-.LFB327
	.uaword	.LFB326
	.uaword	.LFE326-.LFB326
	.uaword	.LFB325
	.uaword	.LFE325-.LFB325
	.uaword	.LFB324
	.uaword	.LFE324-.LFB324
	.uaword	.LFB303
	.uaword	.LFE303-.LFB303
	.uaword	.LFB302
	.uaword	.LFE302-.LFB302
	.uaword	.LFB301
	.uaword	.LFE301-.LFB301
	.uaword	.LFB297
	.uaword	.LFE297-.LFB297
	.uaword	.LFB296
	.uaword	.LFE296-.LFB296
	.uaword	.LFB295
	.uaword	.LFE295-.LFB295
	.uaword	.LFB294
	.uaword	.LFE294-.LFB294
	.uaword	.LFB293
	.uaword	.LFE293-.LFB293
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB84
	.uaword	.LBE84
	.uaword	.LBB88
	.uaword	.LBE88
	.uaword	.LBB89
	.uaword	.LBE89
	.uaword	0
	.uaword	0
	.uaword	.LBB90
	.uaword	.LBE90
	.uaword	.LBB94
	.uaword	.LBE94
	.uaword	.LBB95
	.uaword	.LBE95
	.uaword	0
	.uaword	0
	.uaword	.LBB96
	.uaword	.LBE96
	.uaword	.LBB100
	.uaword	.LBE100
	.uaword	.LBB101
	.uaword	.LBE101
	.uaword	0
	.uaword	0
	.uaword	.LBB102
	.uaword	.LBE102
	.uaword	.LBB106
	.uaword	.LBE106
	.uaword	.LBB107
	.uaword	.LBE107
	.uaword	0
	.uaword	0
	.uaword	.LBB108
	.uaword	.LBE108
	.uaword	.LBB112
	.uaword	.LBE112
	.uaword	.LBB113
	.uaword	.LBE113
	.uaword	0
	.uaword	0
	.uaword	.LBB114
	.uaword	.LBE114
	.uaword	.LBB118
	.uaword	.LBE118
	.uaword	.LBB119
	.uaword	.LBE119
	.uaword	0
	.uaword	0
	.uaword	.LBB120
	.uaword	.LBE120
	.uaword	.LBB124
	.uaword	.LBE124
	.uaword	.LBB125
	.uaword	.LBE125
	.uaword	0
	.uaword	0
	.uaword	.LBB126
	.uaword	.LBE126
	.uaword	.LBB130
	.uaword	.LBE130
	.uaword	.LBB131
	.uaword	.LBE131
	.uaword	0
	.uaword	0
	.uaword	.LBB132
	.uaword	.LBE132
	.uaword	.LBB136
	.uaword	.LBE136
	.uaword	.LBB137
	.uaword	.LBE137
	.uaword	0
	.uaword	0
	.uaword	.LBB138
	.uaword	.LBE138
	.uaword	.LBB142
	.uaword	.LBE142
	.uaword	.LBB143
	.uaword	.LBE143
	.uaword	0
	.uaword	0
	.uaword	.LBB144
	.uaword	.LBE144
	.uaword	.LBB148
	.uaword	.LBE148
	.uaword	.LBB149
	.uaword	.LBE149
	.uaword	0
	.uaword	0
	.uaword	.LBB150
	.uaword	.LBE150
	.uaword	.LBB154
	.uaword	.LBE154
	.uaword	.LBB155
	.uaword	.LBE155
	.uaword	0
	.uaword	0
	.uaword	.LBB156
	.uaword	.LBE156
	.uaword	.LBB160
	.uaword	.LBE160
	.uaword	.LBB161
	.uaword	.LBE161
	.uaword	0
	.uaword	0
	.uaword	.LBB162
	.uaword	.LBE162
	.uaword	.LBB166
	.uaword	.LBE166
	.uaword	.LBB167
	.uaword	.LBE167
	.uaword	0
	.uaword	0
	.uaword	.LBB168
	.uaword	.LBE168
	.uaword	.LBB172
	.uaword	.LBE172
	.uaword	.LBB173
	.uaword	.LBE173
	.uaword	0
	.uaword	0
	.uaword	.LBB174
	.uaword	.LBE174
	.uaword	.LBB178
	.uaword	.LBE178
	.uaword	.LBB179
	.uaword	.LBE179
	.uaword	0
	.uaword	0
	.uaword	.LBB180
	.uaword	.LBE180
	.uaword	.LBB184
	.uaword	.LBE184
	.uaword	.LBB185
	.uaword	.LBE185
	.uaword	0
	.uaword	0
	.uaword	.LBB186
	.uaword	.LBE186
	.uaword	.LBB190
	.uaword	.LBE190
	.uaword	.LBB191
	.uaword	.LBE191
	.uaword	0
	.uaword	0
	.uaword	.LBB192
	.uaword	.LBE192
	.uaword	.LBB196
	.uaword	.LBE196
	.uaword	.LBB197
	.uaword	.LBE197
	.uaword	0
	.uaword	0
	.uaword	.LBB198
	.uaword	.LBE198
	.uaword	.LBB202
	.uaword	.LBE202
	.uaword	.LBB203
	.uaword	.LBE203
	.uaword	0
	.uaword	0
	.uaword	.LBB204
	.uaword	.LBE204
	.uaword	.LBB208
	.uaword	.LBE208
	.uaword	.LBB209
	.uaword	.LBE209
	.uaword	0
	.uaword	0
	.uaword	.LBB210
	.uaword	.LBE210
	.uaword	.LBB214
	.uaword	.LBE214
	.uaword	.LBB215
	.uaword	.LBE215
	.uaword	0
	.uaword	0
	.uaword	.LBB216
	.uaword	.LBE216
	.uaword	.LBB220
	.uaword	.LBE220
	.uaword	.LBB221
	.uaword	.LBE221
	.uaword	0
	.uaword	0
	.uaword	.LBB222
	.uaword	.LBE222
	.uaword	.LBB226
	.uaword	.LBE226
	.uaword	.LBB227
	.uaword	.LBE227
	.uaword	0
	.uaword	0
	.uaword	.LBB228
	.uaword	.LBE228
	.uaword	.LBB232
	.uaword	.LBE232
	.uaword	.LBB233
	.uaword	.LBE233
	.uaword	0
	.uaword	0
	.uaword	.LBB234
	.uaword	.LBE234
	.uaword	.LBB238
	.uaword	.LBE238
	.uaword	.LBB239
	.uaword	.LBE239
	.uaword	0
	.uaword	0
	.uaword	.LBB240
	.uaword	.LBE240
	.uaword	.LBB244
	.uaword	.LBE244
	.uaword	.LBB245
	.uaword	.LBE245
	.uaword	0
	.uaword	0
	.uaword	.LBB246
	.uaword	.LBE246
	.uaword	.LBB250
	.uaword	.LBE250
	.uaword	.LBB251
	.uaword	.LBE251
	.uaword	0
	.uaword	0
	.uaword	.LBB252
	.uaword	.LBE252
	.uaword	.LBB256
	.uaword	.LBE256
	.uaword	.LBB257
	.uaword	.LBE257
	.uaword	0
	.uaword	0
	.uaword	.LBB258
	.uaword	.LBE258
	.uaword	.LBB262
	.uaword	.LBE262
	.uaword	.LBB263
	.uaword	.LBE263
	.uaword	0
	.uaword	0
	.uaword	.LBB264
	.uaword	.LBE264
	.uaword	.LBB268
	.uaword	.LBE268
	.uaword	.LBB269
	.uaword	.LBE269
	.uaword	0
	.uaword	0
	.uaword	.LBB270
	.uaword	.LBE270
	.uaword	.LBB274
	.uaword	.LBE274
	.uaword	.LBB275
	.uaword	.LBE275
	.uaword	0
	.uaword	0
	.uaword	.LBB276
	.uaword	.LBE276
	.uaword	.LBB280
	.uaword	.LBE280
	.uaword	.LBB281
	.uaword	.LBE281
	.uaword	0
	.uaword	0
	.uaword	.LBB282
	.uaword	.LBE282
	.uaword	.LBB286
	.uaword	.LBE286
	.uaword	.LBB287
	.uaword	.LBE287
	.uaword	0
	.uaword	0
	.uaword	.LBB288
	.uaword	.LBE288
	.uaword	.LBB292
	.uaword	.LBE292
	.uaword	.LBB293
	.uaword	.LBE293
	.uaword	0
	.uaword	0
	.uaword	.LBB294
	.uaword	.LBE294
	.uaword	.LBB298
	.uaword	.LBE298
	.uaword	.LBB299
	.uaword	.LBE299
	.uaword	0
	.uaword	0
	.uaword	.LBB300
	.uaword	.LBE300
	.uaword	.LBB304
	.uaword	.LBE304
	.uaword	.LBB305
	.uaword	.LBE305
	.uaword	0
	.uaword	0
	.uaword	.LBB306
	.uaword	.LBE306
	.uaword	.LBB310
	.uaword	.LBE310
	.uaword	.LBB311
	.uaword	.LBE311
	.uaword	0
	.uaword	0
	.uaword	.LBB312
	.uaword	.LBE312
	.uaword	.LBB316
	.uaword	.LBE316
	.uaword	.LBB317
	.uaword	.LBE317
	.uaword	0
	.uaword	0
	.uaword	.LBB318
	.uaword	.LBE318
	.uaword	.LBB322
	.uaword	.LBE322
	.uaword	.LBB323
	.uaword	.LBE323
	.uaword	0
	.uaword	0
	.uaword	.LBB324
	.uaword	.LBE324
	.uaword	.LBB328
	.uaword	.LBE328
	.uaword	.LBB329
	.uaword	.LBE329
	.uaword	0
	.uaword	0
	.uaword	.LFB312
	.uaword	.LFE312
	.uaword	.LFB311
	.uaword	.LFE311
	.uaword	.LFB316
	.uaword	.LFE316
	.uaword	.LFB315
	.uaword	.LFE315
	.uaword	.LFB313
	.uaword	.LFE313
	.uaword	.LFB337
	.uaword	.LFE337
	.uaword	.LFB306
	.uaword	.LFE306
	.uaword	.LFB305
	.uaword	.LFE305
	.uaword	.LFB338
	.uaword	.LFE338
	.uaword	.LFB339
	.uaword	.LFE339
	.uaword	.LFB331
	.uaword	.LFE331
	.uaword	.LFB330
	.uaword	.LFE330
	.uaword	.LFB322
	.uaword	.LFE322
	.uaword	.LFB321
	.uaword	.LFE321
	.uaword	.LFB336
	.uaword	.LFE336
	.uaword	.LFB318
	.uaword	.LFE318
	.uaword	.LFB332
	.uaword	.LFE332
	.uaword	.LFB308
	.uaword	.LFE308
	.uaword	.LFB310
	.uaword	.LFE310
	.uaword	.LFB334
	.uaword	.LFE334
	.uaword	.LFB307
	.uaword	.LFE307
	.uaword	.LFB309
	.uaword	.LFE309
	.uaword	.LFB304
	.uaword	.LFE304
	.uaword	.LFB319
	.uaword	.LFE319
	.uaword	.LFB320
	.uaword	.LFE320
	.uaword	.LFB317
	.uaword	.LFE317
	.uaword	.LFB314
	.uaword	.LFE314
	.uaword	.LFB335
	.uaword	.LFE335
	.uaword	.LFB300
	.uaword	.LFE300
	.uaword	.LFB299
	.uaword	.LFE299
	.uaword	.LFB333
	.uaword	.LFE333
	.uaword	.LFB323
	.uaword	.LFE323
	.uaword	.LFB329
	.uaword	.LFE329
	.uaword	.LFB328
	.uaword	.LFE328
	.uaword	.LFB327
	.uaword	.LFE327
	.uaword	.LFB326
	.uaword	.LFE326
	.uaword	.LFB325
	.uaword	.LFE325
	.uaword	.LFB324
	.uaword	.LFE324
	.uaword	.LFB303
	.uaword	.LFE303
	.uaword	.LFB302
	.uaword	.LFE302
	.uaword	.LFB301
	.uaword	.LFE301
	.uaword	.LFB297
	.uaword	.LFE297
	.uaword	.LFB296
	.uaword	.LFE296
	.uaword	.LFB295
	.uaword	.LFE295
	.uaword	.LFB294
	.uaword	.LFE294
	.uaword	.LFB293
	.uaword	.LFE293
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF1:
	.string	"J1939_EcuVarSet"
.LASF5:
	.string	"MAIN_ECPCfgTabEndType"
.LASF2:
	.string	"J1939_EcuCfg"
.LASF0:
	.string	"J1939_FaultCfg"
.LASF7:
	.string	"kpktCfg"
.LASF3:
	.string	"MAIN_ECPParam"
.LASF4:
	.string	"MAIN_ECPFaultCfg"
.LASF8:
	.string	"kptUserParam"
.LASF6:
	.string	"MAIN_ECPTabLogicType"
	.extern	FaultDetn_u16Read_AFSEVBLV_UnderVoltageLogged,STT_FUNC,0
	.extern	FaultDetn_u16Read_AFSEVBLV_OverVoltageLogged,STT_FUNC,0
	.extern	FaultDetn_u16Read_AFSEVETA_OverTempDrvLeftLogged,STT_FUNC,0
	.extern	FaultDetn_u16Read_AFSEVETA_OverTempNTC1CmdBoardLogged,STT_FUNC,0
	.extern	FaultDetn_u16Read_AFSEVBLV_P5VRefADCFltLogged,STT_FUNC,0
	.extern	FaultDetn_u16Read_AFTASOSP_MotorSpdDeratingActLogged,STT_FUNC,0
	.extern	FaultDetn_u16Read_ABSW_COM_TimoutRxVCULogged,STT_FUNC,0
	.extern	FaultDetn_u16Read_ABSW_COM_BusOff_CAN1Logged,STT_FUNC,0
	.extern	FaultDetn_u16Read_AFTCMSCS_SpeedDiffLogged,STT_FUNC,0
	.extern	FaultDetn_u16Read_AFTSLOBS_SpeedImbalanceLogged,STT_FUNC,0
	.extern	FaultDetn_u16Read_AFTMTLCS_MotorOverLoadLogged,STT_FUNC,0
	.extern	FaultDetn_u16Read_AFTMTLCS_ContorOverLoadLogged,STT_FUNC,0
	.extern	FaultDetn_u16Read_AFSMTMTA_TempWindingHead1VccLogged,STT_FUNC,0
	.extern	FaultDetn_u16Read_AFSMTMTA_TempWindingHead1GndLogged,STT_FUNC,0
	.extern	FaultDetn_u16Read_AFTASMTP_Wndg1DeratingActLogged,STT_FUNC,0
	.extern	FaultDetn_u16Read_AFSMTMTA_OverTempWdgHead1Logged,STT_FUNC,0
	.extern	FaultDetn_u16Read_AFTMTLCS_RunForLongTimeLogged,STT_FUNC,0
	.extern	FaultDetn_u16Read_AFSEVBHV_UnderVoltageLogged,STT_FUNC,0
	.extern	FaultDetn_u16Read_AFSEVBHV_VoltageGndLogged,STT_FUNC,0
	.extern	FaultDetn_u16Read_AFTASBDS_BattVoltDeratingActLogged,STT_FUNC,0
	.extern	FaultDetn_u16Read_AFSEVBHV_OverVoltageLogged,STT_FUNC,0
	.extern	FaultDetn_u16Read_AFSEVBHV_VoltageVccLogged,STT_FUNC,0
	.extern	FaultDetn_u16Read_ABSW_HW2_FPGA_OverVoltVBatLogged,STT_FUNC,0
	.extern	FaultDetn_u16Read_AFSEVETA_TempIgbtLeftGndLogged,STT_FUNC,0
	.extern	FaultDetn_u16Read_AFSEVETA_TempIgbtLeftVccLogged,STT_FUNC,0
	.extern	FaultDetn_u16Read_AFSEVETA_OverTempIgbtLeftLogged,STT_FUNC,0
	.extern	FaultDetn_u16Read_AFSEVETA_IgbtTempRationalLogged,STT_FUNC,0
	.extern	FaultDetn_u16Read_AFTASETP_PmDeratingActLogged,STT_FUNC,0
	.extern	FaultDetn_u16Read_ABSW_HW_FPGA_IGBT_LLogged,STT_FUNC,0
	.extern	FaultDetn_u16Read_ABSW_HW_FPGA_IGBT_HLogged,STT_FUNC,0
	.extern	FaultDetn_u16Read_AFTCMTCS_VoltageMarginLowLogged,STT_FUNC,0
	.extern	FaultDetn_u16Read_AFTMTLCS_CurrentSumErrorLogged,STT_FUNC,0
	.extern	FaultDetn_u16Read_AFTMTLCS_CurSenrPhaW_VCCLogged,STT_FUNC,0
	.extern	FaultDetn_u16Read_AFTMTLCS_CurSenrPhaW_GNDLogged,STT_FUNC,0
	.extern	FaultDetn_u16Read_AFTMTLCS_CurSenrPhaV_VCCLogged,STT_FUNC,0
	.extern	FaultDetn_u16Read_AFTMTLCS_CurSenrPhaV_GNDLogged,STT_FUNC,0
	.extern	FaultDetn_u16Read_AFTMTLCS_CurSenrPhaU_VCCLogged,STT_FUNC,0
	.extern	FaultDetn_u16Read_AFTMTLCS_CurSenrPhaU_GNDLogged,STT_FUNC,0
	.extern	FaultDetn_u16Read_ABSW_HW_FPGA_OverUnderCurWILogged,STT_FUNC,0
	.extern	FaultDetn_u16Read_ABSW_HW_FPGA_OverUnderCurVILogged,STT_FUNC,0
	.extern	FaultDetn_u16Read_ABSW_HW_FPGA_OverUnderCurUILogged,STT_FUNC,0
	.extern	rba_BswSrv_MemSet,STT_FUNC,0
	.extern	ComHal_vidSendMessage,STT_FUNC,0
	.extern	MAIN_REC_vidSetErrCode,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
