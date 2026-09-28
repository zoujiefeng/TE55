	.file	"MAIN_ECPCfg_EPS.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.MAIN_ECP_vidOFSEVBLV_UnderVoltageCallout,"ax",@progbits
	.align 1
	.type	MAIN_ECP_vidOFSEVBLV_UnderVoltageCallout, @function
MAIN_ECP_vidOFSEVBLV_UnderVoltageCallout:
.LFB312:
	.file 1 "main\\_MainModule\\ErrCodePolling\\MAIN_ECPCfg_EPS.c"
	.loc 1 380 0
.LVL0:
.LBB82:
.LBB83:
	.loc 1 263 0
	ld.bu	%d15, [%a4] 11
.LBE83:
.LBE82:
	.loc 1 380 0
	mov.aa	%a15, %a5
.LBB86:
.LBB84:
	.loc 1 263 0
	addsc.a	%a2, %a5, %d15, 0
	ld.bu	%d15, [%a4] 12
	ld.bu	%d2, [%a2]0
	.loc 1 267 0
	mov	%d4, 3
	.loc 1 263 0
	or	%d15, %d2
	st.b	[%a2]0, %d15
	.loc 1 267 0
	ld.bu	%d5, [%a4] 10
.LBE84:
.LBE86:
	.loc 1 384 0
	mov	%d15, 1
.LBB87:
.LBB85:
	.loc 1 267 0
	call	MAIN_REC_vidSetErrCode
.LVL1:
.LBE85:
.LBE87:
	.loc 1 384 0
	st.b	[%a15] 16, %d15
	ret
.LFE312:
	.size	MAIN_ECP_vidOFSEVBLV_UnderVoltageCallout, .-MAIN_ECP_vidOFSEVBLV_UnderVoltageCallout
.section .text.MAIN_ECP_vidOFSEVBLV_OverVoltageCallout,"ax",@progbits
	.align 1
	.type	MAIN_ECP_vidOFSEVBLV_OverVoltageCallout, @function
MAIN_ECP_vidOFSEVBLV_OverVoltageCallout:
.LFB311:
	.loc 1 372 0
.LVL2:
.LBB88:
.LBB89:
	.loc 1 263 0
	ld.bu	%d15, [%a4] 11
.LBE89:
.LBE88:
	.loc 1 372 0
	mov.aa	%a15, %a5
.LBB92:
.LBB90:
	.loc 1 263 0
	addsc.a	%a2, %a5, %d15, 0
	ld.bu	%d15, [%a4] 12
	ld.bu	%d2, [%a2]0
	.loc 1 267 0
	mov	%d4, 3
	.loc 1 263 0
	or	%d15, %d2
	st.b	[%a2]0, %d15
	.loc 1 267 0
	ld.bu	%d5, [%a4] 10
.LBE90:
.LBE92:
	.loc 1 376 0
	mov	%d15, 1
.LBB93:
.LBB91:
	.loc 1 267 0
	call	MAIN_REC_vidSetErrCode
.LVL3:
.LBE91:
.LBE93:
	.loc 1 376 0
	st.b	[%a15] 16, %d15
	ret
.LFE311:
	.size	MAIN_ECP_vidOFSEVBLV_OverVoltageCallout, .-MAIN_ECP_vidOFSEVBLV_OverVoltageCallout
.section .text.MAIN_ECP_vidOFTASOSP_MotorSpdDeratingActCallout,"ax",@progbits
	.align 1
	.type	MAIN_ECP_vidOFTASOSP_MotorSpdDeratingActCallout, @function
MAIN_ECP_vidOFTASOSP_MotorSpdDeratingActCallout:
.LFB337:
	.loc 1 580 0
.LVL4:
.LBB94:
.LBB95:
	.loc 1 263 0
	ld.bu	%d15, [%a4] 11
.LBE95:
.LBE94:
	.loc 1 580 0
	mov.aa	%a15, %a5
.LBB98:
.LBB96:
	.loc 1 263 0
	addsc.a	%a2, %a5, %d15, 0
	ld.bu	%d15, [%a4] 12
	ld.bu	%d2, [%a2]0
	.loc 1 267 0
	mov	%d4, 3
	.loc 1 263 0
	or	%d15, %d2
	st.b	[%a2]0, %d15
	.loc 1 267 0
	ld.bu	%d5, [%a4] 10
.LBE96:
.LBE98:
	.loc 1 584 0
	mov	%d15, 1
.LBB99:
.LBB97:
	.loc 1 267 0
	call	MAIN_REC_vidSetErrCode
.LVL5:
.LBE97:
.LBE99:
	.loc 1 584 0
	st.b	[%a15] 16, %d15
	ret
.LFE337:
	.size	MAIN_ECP_vidOFTASOSP_MotorSpdDeratingActCallout, .-MAIN_ECP_vidOFTASOSP_MotorSpdDeratingActCallout
.section .text.MAIN_ECP_vidOFSEVETA_OverTempDrvLeftCallout,"ax",@progbits
	.align 1
	.type	MAIN_ECP_vidOFSEVETA_OverTempDrvLeftCallout, @function
MAIN_ECP_vidOFSEVETA_OverTempDrvLeftCallout:
.LFB316:
	.loc 1 412 0
.LVL6:
.LBB100:
.LBB101:
	.loc 1 263 0
	ld.bu	%d15, [%a4] 11
.LBE101:
.LBE100:
	.loc 1 412 0
	mov.aa	%a15, %a5
.LBB104:
.LBB102:
	.loc 1 263 0
	addsc.a	%a2, %a5, %d15, 0
	ld.bu	%d15, [%a4] 12
	ld.bu	%d2, [%a2]0
	.loc 1 267 0
	mov	%d4, 3
	.loc 1 263 0
	or	%d15, %d2
	st.b	[%a2]0, %d15
	.loc 1 267 0
	ld.bu	%d5, [%a4] 10
.LBE102:
.LBE104:
	.loc 1 416 0
	mov	%d15, 1
.LBB105:
.LBB103:
	.loc 1 267 0
	call	MAIN_REC_vidSetErrCode
.LVL7:
.LBE103:
.LBE105:
	.loc 1 416 0
	st.b	[%a15] 16, %d15
	ret
.LFE316:
	.size	MAIN_ECP_vidOFSEVETA_OverTempDrvLeftCallout, .-MAIN_ECP_vidOFSEVETA_OverTempDrvLeftCallout
.section .text.MAIN_ECP_vidOFSEVETA_OverTempNTC1CmdBoardCallout,"ax",@progbits
	.align 1
	.type	MAIN_ECP_vidOFSEVETA_OverTempNTC1CmdBoardCallout, @function
MAIN_ECP_vidOFSEVETA_OverTempNTC1CmdBoardCallout:
.LFB315:
	.loc 1 404 0
.LVL8:
.LBB106:
.LBB107:
	.loc 1 263 0
	ld.bu	%d15, [%a4] 11
.LBE107:
.LBE106:
	.loc 1 404 0
	mov.aa	%a15, %a5
.LBB110:
.LBB108:
	.loc 1 263 0
	addsc.a	%a2, %a5, %d15, 0
	ld.bu	%d15, [%a4] 12
	ld.bu	%d2, [%a2]0
	.loc 1 267 0
	mov	%d4, 3
	.loc 1 263 0
	or	%d15, %d2
	st.b	[%a2]0, %d15
	.loc 1 267 0
	ld.bu	%d5, [%a4] 10
.LBE108:
.LBE110:
	.loc 1 408 0
	mov	%d15, 1
.LBB111:
.LBB109:
	.loc 1 267 0
	call	MAIN_REC_vidSetErrCode
.LVL9:
.LBE109:
.LBE111:
	.loc 1 408 0
	st.b	[%a15] 16, %d15
	ret
.LFE315:
	.size	MAIN_ECP_vidOFSEVETA_OverTempNTC1CmdBoardCallout, .-MAIN_ECP_vidOFSEVETA_OverTempNTC1CmdBoardCallout
.section .text.MAIN_ECP_vidOFSEVBLV_P5VRefADCFltCallout,"ax",@progbits
	.align 1
	.type	MAIN_ECP_vidOFSEVBLV_P5VRefADCFltCallout, @function
MAIN_ECP_vidOFSEVBLV_P5VRefADCFltCallout:
.LFB313:
	.loc 1 388 0
.LVL10:
.LBB112:
.LBB113:
	.loc 1 263 0
	ld.bu	%d15, [%a4] 11
.LBE113:
.LBE112:
	.loc 1 388 0
	mov.aa	%a15, %a5
.LBB116:
.LBB114:
	.loc 1 263 0
	addsc.a	%a2, %a5, %d15, 0
	ld.bu	%d15, [%a4] 12
	ld.bu	%d2, [%a2]0
	.loc 1 267 0
	mov	%d4, 3
	.loc 1 263 0
	or	%d15, %d2
	st.b	[%a2]0, %d15
	.loc 1 267 0
	ld.bu	%d5, [%a4] 10
.LBE114:
.LBE116:
	.loc 1 392 0
	mov	%d15, 1
.LBB117:
.LBB115:
	.loc 1 267 0
	call	MAIN_REC_vidSetErrCode
.LVL11:
.LBE115:
.LBE117:
	.loc 1 392 0
	st.b	[%a15] 16, %d15
	ret
.LFE313:
	.size	MAIN_ECP_vidOFSEVBLV_P5VRefADCFltCallout, .-MAIN_ECP_vidOFSEVBLV_P5VRefADCFltCallout
.section .text.MAIN_ECP_vidOBSW_COM_TimoutRxVCUCallout,"ax",@progbits
	.align 1
	.type	MAIN_ECP_vidOBSW_COM_TimoutRxVCUCallout, @function
MAIN_ECP_vidOBSW_COM_TimoutRxVCUCallout:
.LFB306:
	.loc 1 332 0
.LVL12:
.LBB118:
.LBB119:
	.loc 1 263 0
	ld.bu	%d15, [%a4] 11
.LBE119:
.LBE118:
	.loc 1 332 0
	mov.aa	%a15, %a5
.LBB122:
.LBB120:
	.loc 1 263 0
	addsc.a	%a2, %a5, %d15, 0
	ld.bu	%d15, [%a4] 12
	ld.bu	%d2, [%a2]0
	.loc 1 267 0
	mov	%d4, 3
	.loc 1 263 0
	or	%d15, %d2
	st.b	[%a2]0, %d15
	.loc 1 267 0
	ld.bu	%d5, [%a4] 10
.LBE120:
.LBE122:
	.loc 1 336 0
	mov	%d15, 1
.LBB123:
.LBB121:
	.loc 1 267 0
	call	MAIN_REC_vidSetErrCode
.LVL13:
.LBE121:
.LBE123:
	.loc 1 336 0
	st.b	[%a15] 16, %d15
	ret
.LFE306:
	.size	MAIN_ECP_vidOBSW_COM_TimoutRxVCUCallout, .-MAIN_ECP_vidOBSW_COM_TimoutRxVCUCallout
.section .text.MAIN_ECP_vidOBSW_COM_BusOff_CAN1Callout,"ax",@progbits
	.align 1
	.type	MAIN_ECP_vidOBSW_COM_BusOff_CAN1Callout, @function
MAIN_ECP_vidOBSW_COM_BusOff_CAN1Callout:
.LFB305:
	.loc 1 324 0
.LVL14:
.LBB124:
.LBB125:
	.loc 1 263 0
	ld.bu	%d15, [%a4] 11
.LBE125:
.LBE124:
	.loc 1 324 0
	mov.aa	%a15, %a5
.LBB128:
.LBB126:
	.loc 1 263 0
	addsc.a	%a2, %a5, %d15, 0
	ld.bu	%d15, [%a4] 12
	ld.bu	%d2, [%a2]0
	.loc 1 267 0
	mov	%d4, 3
	.loc 1 263 0
	or	%d15, %d2
	st.b	[%a2]0, %d15
	.loc 1 267 0
	ld.bu	%d5, [%a4] 10
.LBE126:
.LBE128:
	.loc 1 328 0
	mov	%d15, 1
.LBB129:
.LBB127:
	.loc 1 267 0
	call	MAIN_REC_vidSetErrCode
.LVL15:
.LBE127:
.LBE129:
	.loc 1 328 0
	st.b	[%a15] 16, %d15
	ret
.LFE305:
	.size	MAIN_ECP_vidOBSW_COM_BusOff_CAN1Callout, .-MAIN_ECP_vidOBSW_COM_BusOff_CAN1Callout
.section .text.MAIN_ECP_vidOFTCMSCS_SpeedDiffCallout,"ax",@progbits
	.align 1
	.type	MAIN_ECP_vidOFTCMSCS_SpeedDiffCallout, @function
MAIN_ECP_vidOFTCMSCS_SpeedDiffCallout:
.LFB338:
	.loc 1 588 0
.LVL16:
.LBB130:
.LBB131:
	.loc 1 263 0
	ld.bu	%d15, [%a4] 11
.LBE131:
.LBE130:
	.loc 1 588 0
	mov.aa	%a15, %a5
.LBB134:
.LBB132:
	.loc 1 263 0
	addsc.a	%a2, %a5, %d15, 0
	ld.bu	%d15, [%a4] 12
	ld.bu	%d2, [%a2]0
	.loc 1 267 0
	mov	%d4, 3
	.loc 1 263 0
	or	%d15, %d2
	st.b	[%a2]0, %d15
	.loc 1 267 0
	ld.bu	%d5, [%a4] 10
.LBE132:
.LBE134:
	.loc 1 592 0
	mov	%d15, 1
.LBB135:
.LBB133:
	.loc 1 267 0
	call	MAIN_REC_vidSetErrCode
.LVL17:
.LBE133:
.LBE135:
	.loc 1 592 0
	st.b	[%a15] 18, %d15
	ret
.LFE338:
	.size	MAIN_ECP_vidOFTCMSCS_SpeedDiffCallout, .-MAIN_ECP_vidOFTCMSCS_SpeedDiffCallout
.section .text.MAIN_ECP_vidOFTSLOBS_SpeedImbalanceCallout,"ax",@progbits
	.align 1
	.type	MAIN_ECP_vidOFTSLOBS_SpeedImbalanceCallout, @function
MAIN_ECP_vidOFTSLOBS_SpeedImbalanceCallout:
.LFB339:
	.loc 1 596 0
.LVL18:
.LBB136:
.LBB137:
	.loc 1 263 0
	ld.bu	%d15, [%a4] 11
.LBE137:
.LBE136:
	.loc 1 596 0
	mov.aa	%a15, %a5
.LBB140:
.LBB138:
	.loc 1 263 0
	addsc.a	%a2, %a5, %d15, 0
	ld.bu	%d15, [%a4] 12
	ld.bu	%d2, [%a2]0
	.loc 1 267 0
	mov	%d4, 3
	.loc 1 263 0
	or	%d15, %d2
	st.b	[%a2]0, %d15
	.loc 1 267 0
	ld.bu	%d5, [%a4] 10
.LBE138:
.LBE140:
	.loc 1 600 0
	mov	%d15, 1
.LBB141:
.LBB139:
	.loc 1 267 0
	call	MAIN_REC_vidSetErrCode
.LVL19:
.LBE139:
.LBE141:
	.loc 1 600 0
	st.b	[%a15] 19, %d15
	ret
.LFE339:
	.size	MAIN_ECP_vidOFTSLOBS_SpeedImbalanceCallout, .-MAIN_ECP_vidOFTSLOBS_SpeedImbalanceCallout
.section .text.MAIN_ECP_vidOFTMTLCS_MotorOverLoadCallout,"ax",@progbits
	.align 1
	.type	MAIN_ECP_vidOFTMTLCS_MotorOverLoadCallout, @function
MAIN_ECP_vidOFTMTLCS_MotorOverLoadCallout:
.LFB331:
	.loc 1 532 0
.LVL20:
.LBB142:
.LBB143:
	.loc 1 263 0
	ld.bu	%d15, [%a4] 11
.LBE143:
.LBE142:
	.loc 1 532 0
	mov.aa	%a15, %a5
.LBB146:
.LBB144:
	.loc 1 263 0
	addsc.a	%a2, %a5, %d15, 0
	ld.bu	%d15, [%a4] 12
	ld.bu	%d2, [%a2]0
	.loc 1 267 0
	mov	%d4, 3
	.loc 1 263 0
	or	%d15, %d2
	st.b	[%a2]0, %d15
	.loc 1 267 0
	ld.bu	%d5, [%a4] 10
.LBE144:
.LBE146:
	.loc 1 536 0
	mov	%d15, 1
.LBB147:
.LBB145:
	.loc 1 267 0
	call	MAIN_REC_vidSetErrCode
.LVL21:
.LBE145:
.LBE147:
	.loc 1 536 0
	st.b	[%a15] 18, %d15
	ret
.LFE331:
	.size	MAIN_ECP_vidOFTMTLCS_MotorOverLoadCallout, .-MAIN_ECP_vidOFTMTLCS_MotorOverLoadCallout
.section .text.MAIN_ECP_vidOFTMTLCS_ContorOverLoadCallout,"ax",@progbits
	.align 1
	.type	MAIN_ECP_vidOFTMTLCS_ContorOverLoadCallout, @function
MAIN_ECP_vidOFTMTLCS_ContorOverLoadCallout:
.LFB330:
	.loc 1 524 0
.LVL22:
.LBB148:
.LBB149:
	.loc 1 263 0
	ld.bu	%d15, [%a4] 11
.LBE149:
.LBE148:
	.loc 1 524 0
	mov.aa	%a15, %a5
.LBB152:
.LBB150:
	.loc 1 263 0
	addsc.a	%a2, %a5, %d15, 0
	ld.bu	%d15, [%a4] 12
	ld.bu	%d2, [%a2]0
	.loc 1 267 0
	mov	%d4, 3
	.loc 1 263 0
	or	%d15, %d2
	st.b	[%a2]0, %d15
	.loc 1 267 0
	ld.bu	%d5, [%a4] 10
.LBE150:
.LBE152:
	.loc 1 528 0
	mov	%d15, 1
.LBB153:
.LBB151:
	.loc 1 267 0
	call	MAIN_REC_vidSetErrCode
.LVL23:
.LBE151:
.LBE153:
	.loc 1 528 0
	st.b	[%a15] 18, %d15
	ret
.LFE330:
	.size	MAIN_ECP_vidOFTMTLCS_ContorOverLoadCallout, .-MAIN_ECP_vidOFTMTLCS_ContorOverLoadCallout
.section .text.MAIN_ECP_vidOFSMTMTA_TempWindingHead1VccCallout,"ax",@progbits
	.align 1
	.type	MAIN_ECP_vidOFSMTMTA_TempWindingHead1VccCallout, @function
MAIN_ECP_vidOFSMTMTA_TempWindingHead1VccCallout:
.LFB322:
	.loc 1 460 0
.LVL24:
.LBB154:
.LBB155:
	.loc 1 263 0
	ld.bu	%d15, [%a4] 11
.LBE155:
.LBE154:
	.loc 1 460 0
	mov.aa	%a15, %a5
.LBB158:
.LBB156:
	.loc 1 263 0
	addsc.a	%a2, %a5, %d15, 0
	ld.bu	%d15, [%a4] 12
	ld.bu	%d2, [%a2]0
	.loc 1 267 0
	mov	%d4, 3
	.loc 1 263 0
	or	%d15, %d2
	st.b	[%a2]0, %d15
	.loc 1 267 0
	ld.bu	%d5, [%a4] 10
.LBE156:
.LBE158:
	.loc 1 464 0
	mov	%d15, 1
.LBB159:
.LBB157:
	.loc 1 267 0
	call	MAIN_REC_vidSetErrCode
.LVL25:
.LBE157:
.LBE159:
	.loc 1 464 0
	st.b	[%a15] 18, %d15
	ret
.LFE322:
	.size	MAIN_ECP_vidOFSMTMTA_TempWindingHead1VccCallout, .-MAIN_ECP_vidOFSMTMTA_TempWindingHead1VccCallout
.section .text.MAIN_ECP_vidOFSMTMTA_TempWindingHead1GndCallout,"ax",@progbits
	.align 1
	.type	MAIN_ECP_vidOFSMTMTA_TempWindingHead1GndCallout, @function
MAIN_ECP_vidOFSMTMTA_TempWindingHead1GndCallout:
.LFB321:
	.loc 1 452 0
.LVL26:
.LBB160:
.LBB161:
	.loc 1 263 0
	ld.bu	%d15, [%a4] 11
.LBE161:
.LBE160:
	.loc 1 452 0
	mov.aa	%a15, %a5
.LBB164:
.LBB162:
	.loc 1 263 0
	addsc.a	%a2, %a5, %d15, 0
	ld.bu	%d15, [%a4] 12
	ld.bu	%d2, [%a2]0
	.loc 1 267 0
	mov	%d4, 3
	.loc 1 263 0
	or	%d15, %d2
	st.b	[%a2]0, %d15
	.loc 1 267 0
	ld.bu	%d5, [%a4] 10
.LBE162:
.LBE164:
	.loc 1 456 0
	mov	%d15, 1
.LBB165:
.LBB163:
	.loc 1 267 0
	call	MAIN_REC_vidSetErrCode
.LVL27:
.LBE163:
.LBE165:
	.loc 1 456 0
	st.b	[%a15] 18, %d15
	ret
.LFE321:
	.size	MAIN_ECP_vidOFSMTMTA_TempWindingHead1GndCallout, .-MAIN_ECP_vidOFSMTMTA_TempWindingHead1GndCallout
.section .text.MAIN_ECP_vidOFTASMTP_Wndg1DeratingActCallout,"ax",@progbits
	.align 1
	.type	MAIN_ECP_vidOFTASMTP_Wndg1DeratingActCallout, @function
MAIN_ECP_vidOFTASMTP_Wndg1DeratingActCallout:
.LFB336:
	.loc 1 572 0
.LVL28:
.LBB166:
.LBB167:
	.loc 1 263 0
	ld.bu	%d15, [%a4] 11
.LBE167:
.LBE166:
	.loc 1 572 0
	mov.aa	%a15, %a5
.LBB170:
.LBB168:
	.loc 1 263 0
	addsc.a	%a2, %a5, %d15, 0
	ld.bu	%d15, [%a4] 12
	ld.bu	%d2, [%a2]0
	.loc 1 267 0
	mov	%d4, 3
	.loc 1 263 0
	or	%d15, %d2
	st.b	[%a2]0, %d15
	.loc 1 267 0
	ld.bu	%d5, [%a4] 10
.LBE168:
.LBE170:
	.loc 1 576 0
	mov	%d15, 1
.LBB171:
.LBB169:
	.loc 1 267 0
	call	MAIN_REC_vidSetErrCode
.LVL29:
.LBE169:
.LBE171:
	.loc 1 576 0
	st.b	[%a15] 16, %d15
	ret
.LFE336:
	.size	MAIN_ECP_vidOFTASMTP_Wndg1DeratingActCallout, .-MAIN_ECP_vidOFTASMTP_Wndg1DeratingActCallout
.section .text.MAIN_ECP_vidOFSMTMTA_OverTempWdgHead1Callout,"ax",@progbits
	.align 1
	.type	MAIN_ECP_vidOFSMTMTA_OverTempWdgHead1Callout, @function
MAIN_ECP_vidOFSMTMTA_OverTempWdgHead1Callout:
.LFB318:
	.loc 1 428 0
.LVL30:
.LBB172:
.LBB173:
	.loc 1 263 0
	ld.bu	%d15, [%a4] 11
.LBE173:
.LBE172:
	.loc 1 428 0
	mov.aa	%a15, %a5
.LBB176:
.LBB174:
	.loc 1 263 0
	addsc.a	%a2, %a5, %d15, 0
	ld.bu	%d15, [%a4] 12
	ld.bu	%d2, [%a2]0
	.loc 1 267 0
	mov	%d4, 3
	.loc 1 263 0
	or	%d15, %d2
	st.b	[%a2]0, %d15
	.loc 1 267 0
	ld.bu	%d5, [%a4] 10
.LBE174:
.LBE176:
	.loc 1 432 0
	mov	%d15, 1
.LBB177:
.LBB175:
	.loc 1 267 0
	call	MAIN_REC_vidSetErrCode
.LVL31:
.LBE175:
.LBE177:
	.loc 1 432 0
	st.b	[%a15] 18, %d15
	ret
.LFE318:
	.size	MAIN_ECP_vidOFSMTMTA_OverTempWdgHead1Callout, .-MAIN_ECP_vidOFSMTMTA_OverTempWdgHead1Callout
.section .text.MAIN_ECP_vidOFSEVBHV_UnderVoltageCallout,"ax",@progbits
	.align 1
	.type	MAIN_ECP_vidOFSEVBHV_UnderVoltageCallout, @function
MAIN_ECP_vidOFSEVBHV_UnderVoltageCallout:
.LFB308:
	.loc 1 348 0
.LVL32:
.LBB178:
.LBB179:
	.loc 1 263 0
	ld.bu	%d15, [%a4] 11
.LBE179:
.LBE178:
	.loc 1 348 0
	mov.aa	%a15, %a5
.LBB182:
.LBB180:
	.loc 1 263 0
	addsc.a	%a2, %a5, %d15, 0
	ld.bu	%d15, [%a4] 12
	ld.bu	%d2, [%a2]0
	.loc 1 267 0
	mov	%d4, 3
	.loc 1 263 0
	or	%d15, %d2
	st.b	[%a2]0, %d15
	.loc 1 267 0
	ld.bu	%d5, [%a4] 10
.LBE180:
.LBE182:
	.loc 1 352 0
	mov	%d15, 1
.LBB183:
.LBB181:
	.loc 1 267 0
	call	MAIN_REC_vidSetErrCode
.LVL33:
.LBE181:
.LBE183:
	.loc 1 352 0
	st.b	[%a15] 19, %d15
	ret
.LFE308:
	.size	MAIN_ECP_vidOFSEVBHV_UnderVoltageCallout, .-MAIN_ECP_vidOFSEVBHV_UnderVoltageCallout
.section .text.MAIN_ECP_vidOFSEVBHV_VoltageGndCallout,"ax",@progbits
	.align 1
	.type	MAIN_ECP_vidOFSEVBHV_VoltageGndCallout, @function
MAIN_ECP_vidOFSEVBHV_VoltageGndCallout:
.LFB310:
	.loc 1 364 0
.LVL34:
.LBB184:
.LBB185:
	.loc 1 263 0
	ld.bu	%d15, [%a4] 11
.LBE185:
.LBE184:
	.loc 1 364 0
	mov.aa	%a15, %a5
.LBB188:
.LBB186:
	.loc 1 263 0
	addsc.a	%a2, %a5, %d15, 0
	ld.bu	%d15, [%a4] 12
	ld.bu	%d2, [%a2]0
	.loc 1 267 0
	mov	%d4, 3
	.loc 1 263 0
	or	%d15, %d2
	st.b	[%a2]0, %d15
	.loc 1 267 0
	ld.bu	%d5, [%a4] 10
.LBE186:
.LBE188:
	.loc 1 368 0
	mov	%d15, 1
.LBB189:
.LBB187:
	.loc 1 267 0
	call	MAIN_REC_vidSetErrCode
.LVL35:
.LBE187:
.LBE189:
	.loc 1 368 0
	st.b	[%a15] 19, %d15
	ret
.LFE310:
	.size	MAIN_ECP_vidOFSEVBHV_VoltageGndCallout, .-MAIN_ECP_vidOFSEVBHV_VoltageGndCallout
.section .text.MAIN_ECP_vidOFTASBDS_BattVoltDeratingActCallout,"ax",@progbits
	.align 1
	.type	MAIN_ECP_vidOFTASBDS_BattVoltDeratingActCallout, @function
MAIN_ECP_vidOFTASBDS_BattVoltDeratingActCallout:
.LFB334:
	.loc 1 556 0
.LVL36:
.LBB190:
.LBB191:
	.loc 1 263 0
	ld.bu	%d15, [%a4] 11
.LBE191:
.LBE190:
	.loc 1 556 0
	mov.aa	%a15, %a5
.LBB194:
.LBB192:
	.loc 1 263 0
	addsc.a	%a2, %a5, %d15, 0
	ld.bu	%d15, [%a4] 12
	ld.bu	%d2, [%a2]0
	.loc 1 267 0
	mov	%d4, 3
	.loc 1 263 0
	or	%d15, %d2
	st.b	[%a2]0, %d15
	.loc 1 267 0
	ld.bu	%d5, [%a4] 10
.LBE192:
.LBE194:
	.loc 1 560 0
	mov	%d15, 1
.LBB195:
.LBB193:
	.loc 1 267 0
	call	MAIN_REC_vidSetErrCode
.LVL37:
.LBE193:
.LBE195:
	.loc 1 560 0
	st.b	[%a15] 19, %d15
	ret
.LFE334:
	.size	MAIN_ECP_vidOFTASBDS_BattVoltDeratingActCallout, .-MAIN_ECP_vidOFTASBDS_BattVoltDeratingActCallout
.section .text.MAIN_ECP_vidOFSEVBHV_OverVoltageCallout,"ax",@progbits
	.align 1
	.type	MAIN_ECP_vidOFSEVBHV_OverVoltageCallout, @function
MAIN_ECP_vidOFSEVBHV_OverVoltageCallout:
.LFB307:
	.loc 1 340 0
.LVL38:
.LBB196:
.LBB197:
	.loc 1 263 0
	ld.bu	%d15, [%a4] 11
.LBE197:
.LBE196:
	.loc 1 340 0
	mov.aa	%a15, %a5
.LBB200:
.LBB198:
	.loc 1 263 0
	addsc.a	%a2, %a5, %d15, 0
	ld.bu	%d15, [%a4] 12
	ld.bu	%d2, [%a2]0
	.loc 1 267 0
	mov	%d4, 3
	.loc 1 263 0
	or	%d15, %d2
	st.b	[%a2]0, %d15
	.loc 1 267 0
	ld.bu	%d5, [%a4] 10
.LBE198:
.LBE200:
	.loc 1 344 0
	mov	%d15, 1
.LBB201:
.LBB199:
	.loc 1 267 0
	call	MAIN_REC_vidSetErrCode
.LVL39:
.LBE199:
.LBE201:
	.loc 1 344 0
	st.b	[%a15] 19, %d15
	ret
.LFE307:
	.size	MAIN_ECP_vidOFSEVBHV_OverVoltageCallout, .-MAIN_ECP_vidOFSEVBHV_OverVoltageCallout
.section .text.MAIN_ECP_vidOFSEVBHV_VoltageVccCallout,"ax",@progbits
	.align 1
	.type	MAIN_ECP_vidOFSEVBHV_VoltageVccCallout, @function
MAIN_ECP_vidOFSEVBHV_VoltageVccCallout:
.LFB309:
	.loc 1 356 0
.LVL40:
.LBB202:
.LBB203:
	.loc 1 263 0
	ld.bu	%d15, [%a4] 11
.LBE203:
.LBE202:
	.loc 1 356 0
	mov.aa	%a15, %a5
.LBB206:
.LBB204:
	.loc 1 263 0
	addsc.a	%a2, %a5, %d15, 0
	ld.bu	%d15, [%a4] 12
	ld.bu	%d2, [%a2]0
	.loc 1 267 0
	mov	%d4, 3
	.loc 1 263 0
	or	%d15, %d2
	st.b	[%a2]0, %d15
	.loc 1 267 0
	ld.bu	%d5, [%a4] 10
.LBE204:
.LBE206:
	.loc 1 360 0
	mov	%d15, 1
.LBB207:
.LBB205:
	.loc 1 267 0
	call	MAIN_REC_vidSetErrCode
.LVL41:
.LBE205:
.LBE207:
	.loc 1 360 0
	st.b	[%a15] 19, %d15
	ret
.LFE309:
	.size	MAIN_ECP_vidOFSEVBHV_VoltageVccCallout, .-MAIN_ECP_vidOFSEVBHV_VoltageVccCallout
.section .text.MAIN_ECP_vidOBSW_HW2_FPGA_OverVoltVBatCallout,"ax",@progbits
	.align 1
	.type	MAIN_ECP_vidOBSW_HW2_FPGA_OverVoltVBatCallout, @function
MAIN_ECP_vidOBSW_HW2_FPGA_OverVoltVBatCallout:
.LFB304:
	.loc 1 316 0
.LVL42:
.LBB208:
.LBB209:
	.loc 1 263 0
	ld.bu	%d15, [%a4] 11
.LBE209:
.LBE208:
	.loc 1 316 0
	mov.aa	%a15, %a5
.LBB212:
.LBB210:
	.loc 1 263 0
	addsc.a	%a2, %a5, %d15, 0
	ld.bu	%d15, [%a4] 12
	ld.bu	%d2, [%a2]0
	.loc 1 267 0
	mov	%d4, 3
	.loc 1 263 0
	or	%d15, %d2
	st.b	[%a2]0, %d15
	.loc 1 267 0
	ld.bu	%d5, [%a4] 10
.LBE210:
.LBE212:
	.loc 1 320 0
	mov	%d15, 1
.LBB213:
.LBB211:
	.loc 1 267 0
	call	MAIN_REC_vidSetErrCode
.LVL43:
.LBE211:
.LBE213:
	.loc 1 320 0
	st.b	[%a15] 19, %d15
	ret
.LFE304:
	.size	MAIN_ECP_vidOBSW_HW2_FPGA_OverVoltVBatCallout, .-MAIN_ECP_vidOBSW_HW2_FPGA_OverVoltVBatCallout
.section .text.MAIN_ECP_vidOFSEVETA_TempIgbtLeftGndCallout,"ax",@progbits
	.align 1
	.type	MAIN_ECP_vidOFSEVETA_TempIgbtLeftGndCallout, @function
MAIN_ECP_vidOFSEVETA_TempIgbtLeftGndCallout:
.LFB319:
	.loc 1 436 0
.LVL44:
.LBB214:
.LBB215:
	.loc 1 263 0
	ld.bu	%d15, [%a4] 11
.LBE215:
.LBE214:
	.loc 1 436 0
	mov.aa	%a15, %a5
.LBB218:
.LBB216:
	.loc 1 263 0
	addsc.a	%a2, %a5, %d15, 0
	ld.bu	%d15, [%a4] 12
	ld.bu	%d2, [%a2]0
	.loc 1 267 0
	mov	%d4, 3
	.loc 1 263 0
	or	%d15, %d2
	st.b	[%a2]0, %d15
	.loc 1 267 0
	ld.bu	%d5, [%a4] 10
.LBE216:
.LBE218:
	.loc 1 440 0
	mov	%d15, 1
.LBB219:
.LBB217:
	.loc 1 267 0
	call	MAIN_REC_vidSetErrCode
.LVL45:
.LBE217:
.LBE219:
	.loc 1 440 0
	st.b	[%a15] 18, %d15
	ret
.LFE319:
	.size	MAIN_ECP_vidOFSEVETA_TempIgbtLeftGndCallout, .-MAIN_ECP_vidOFSEVETA_TempIgbtLeftGndCallout
.section .text.MAIN_ECP_vidOFSEVETA_TempIgbtLeftVccCallout,"ax",@progbits
	.align 1
	.type	MAIN_ECP_vidOFSEVETA_TempIgbtLeftVccCallout, @function
MAIN_ECP_vidOFSEVETA_TempIgbtLeftVccCallout:
.LFB320:
	.loc 1 444 0
.LVL46:
.LBB220:
.LBB221:
	.loc 1 263 0
	ld.bu	%d15, [%a4] 11
.LBE221:
.LBE220:
	.loc 1 444 0
	mov.aa	%a15, %a5
.LBB224:
.LBB222:
	.loc 1 263 0
	addsc.a	%a2, %a5, %d15, 0
	ld.bu	%d15, [%a4] 12
	ld.bu	%d2, [%a2]0
	.loc 1 267 0
	mov	%d4, 3
	.loc 1 263 0
	or	%d15, %d2
	st.b	[%a2]0, %d15
	.loc 1 267 0
	ld.bu	%d5, [%a4] 10
.LBE222:
.LBE224:
	.loc 1 448 0
	mov	%d15, 1
.LBB225:
.LBB223:
	.loc 1 267 0
	call	MAIN_REC_vidSetErrCode
.LVL47:
.LBE223:
.LBE225:
	.loc 1 448 0
	st.b	[%a15] 18, %d15
	ret
.LFE320:
	.size	MAIN_ECP_vidOFSEVETA_TempIgbtLeftVccCallout, .-MAIN_ECP_vidOFSEVETA_TempIgbtLeftVccCallout
.section .text.MAIN_ECP_vidOFSEVETA_IgbtTempRationalCallout,"ax",@progbits
	.align 1
	.type	MAIN_ECP_vidOFSEVETA_IgbtTempRationalCallout, @function
MAIN_ECP_vidOFSEVETA_IgbtTempRationalCallout:
.LFB314:
	.loc 1 396 0
.LVL48:
.LBB226:
.LBB227:
	.loc 1 263 0
	ld.bu	%d15, [%a4] 11
.LBE227:
.LBE226:
	.loc 1 396 0
	mov.aa	%a15, %a5
.LBB230:
.LBB228:
	.loc 1 263 0
	addsc.a	%a2, %a5, %d15, 0
	ld.bu	%d15, [%a4] 12
	ld.bu	%d2, [%a2]0
	.loc 1 267 0
	mov	%d4, 3
	.loc 1 263 0
	or	%d15, %d2
	st.b	[%a2]0, %d15
	.loc 1 267 0
	ld.bu	%d5, [%a4] 10
.LBE228:
.LBE230:
	.loc 1 400 0
	mov	%d15, 1
.LBB231:
.LBB229:
	.loc 1 267 0
	call	MAIN_REC_vidSetErrCode
.LVL49:
.LBE229:
.LBE231:
	.loc 1 400 0
	st.b	[%a15] 19, %d15
	ret
.LFE314:
	.size	MAIN_ECP_vidOFSEVETA_IgbtTempRationalCallout, .-MAIN_ECP_vidOFSEVETA_IgbtTempRationalCallout
.section .text.MAIN_ECP_vidOFTASETP_PmDeratingActCallout,"ax",@progbits
	.align 1
	.type	MAIN_ECP_vidOFTASETP_PmDeratingActCallout, @function
MAIN_ECP_vidOFTASETP_PmDeratingActCallout:
.LFB335:
	.loc 1 564 0
.LVL50:
.LBB232:
.LBB233:
	.loc 1 263 0
	ld.bu	%d15, [%a4] 11
.LBE233:
.LBE232:
	.loc 1 564 0
	mov.aa	%a15, %a5
.LBB236:
.LBB234:
	.loc 1 263 0
	addsc.a	%a2, %a5, %d15, 0
	ld.bu	%d15, [%a4] 12
	ld.bu	%d2, [%a2]0
	.loc 1 267 0
	mov	%d4, 3
	.loc 1 263 0
	or	%d15, %d2
	st.b	[%a2]0, %d15
	.loc 1 267 0
	ld.bu	%d5, [%a4] 10
.LBE234:
.LBE236:
	.loc 1 568 0
	mov	%d15, 1
.LBB237:
.LBB235:
	.loc 1 267 0
	call	MAIN_REC_vidSetErrCode
.LVL51:
.LBE235:
.LBE237:
	.loc 1 568 0
	st.b	[%a15] 18, %d15
	ret
.LFE335:
	.size	MAIN_ECP_vidOFTASETP_PmDeratingActCallout, .-MAIN_ECP_vidOFTASETP_PmDeratingActCallout
.section .text.MAIN_ECP_vidOBSW_HW_FPGA_IGBT_LCallout,"ax",@progbits
	.align 1
	.type	MAIN_ECP_vidOBSW_HW_FPGA_IGBT_LCallout, @function
MAIN_ECP_vidOBSW_HW_FPGA_IGBT_LCallout:
.LFB300:
	.loc 1 284 0
.LVL52:
.LBB238:
.LBB239:
	.loc 1 263 0
	ld.bu	%d15, [%a4] 11
.LBE239:
.LBE238:
	.loc 1 284 0
	mov.aa	%a15, %a5
.LBB242:
.LBB240:
	.loc 1 263 0
	addsc.a	%a2, %a5, %d15, 0
	ld.bu	%d15, [%a4] 12
	ld.bu	%d2, [%a2]0
	.loc 1 267 0
	mov	%d4, 3
	.loc 1 263 0
	or	%d15, %d2
	st.b	[%a2]0, %d15
	.loc 1 267 0
	ld.bu	%d5, [%a4] 10
.LBE240:
.LBE242:
	.loc 1 288 0
	mov	%d15, 1
.LBB243:
.LBB241:
	.loc 1 267 0
	call	MAIN_REC_vidSetErrCode
.LVL53:
.LBE241:
.LBE243:
	.loc 1 288 0
	st.b	[%a15] 19, %d15
	ret
.LFE300:
	.size	MAIN_ECP_vidOBSW_HW_FPGA_IGBT_LCallout, .-MAIN_ECP_vidOBSW_HW_FPGA_IGBT_LCallout
.section .text.MAIN_ECP_vidOBSW_HW_FPGA_IGBT_HCallout,"ax",@progbits
	.align 1
	.type	MAIN_ECP_vidOBSW_HW_FPGA_IGBT_HCallout, @function
MAIN_ECP_vidOBSW_HW_FPGA_IGBT_HCallout:
.LFB299:
	.loc 1 276 0
.LVL54:
.LBB244:
.LBB245:
	.loc 1 263 0
	ld.bu	%d15, [%a4] 11
.LBE245:
.LBE244:
	.loc 1 276 0
	mov.aa	%a15, %a5
.LBB248:
.LBB246:
	.loc 1 263 0
	addsc.a	%a2, %a5, %d15, 0
	ld.bu	%d15, [%a4] 12
	ld.bu	%d2, [%a2]0
	.loc 1 267 0
	mov	%d4, 3
	.loc 1 263 0
	or	%d15, %d2
	st.b	[%a2]0, %d15
	.loc 1 267 0
	ld.bu	%d5, [%a4] 10
.LBE246:
.LBE248:
	.loc 1 280 0
	mov	%d15, 1
.LBB249:
.LBB247:
	.loc 1 267 0
	call	MAIN_REC_vidSetErrCode
.LVL55:
.LBE247:
.LBE249:
	.loc 1 280 0
	st.b	[%a15] 19, %d15
	ret
.LFE299:
	.size	MAIN_ECP_vidOBSW_HW_FPGA_IGBT_HCallout, .-MAIN_ECP_vidOBSW_HW_FPGA_IGBT_HCallout
.section .text.MAIN_ECP_vidOFSEVETA_OverTempIgbtLeftCallout,"ax",@progbits
	.align 1
	.type	MAIN_ECP_vidOFSEVETA_OverTempIgbtLeftCallout, @function
MAIN_ECP_vidOFSEVETA_OverTempIgbtLeftCallout:
.LFB317:
	.loc 1 420 0
.LVL56:
.LBB250:
.LBB251:
	.loc 1 263 0
	ld.bu	%d15, [%a4] 11
.LBE251:
.LBE250:
	.loc 1 420 0
	mov.aa	%a15, %a5
.LBB254:
.LBB252:
	.loc 1 263 0
	addsc.a	%a2, %a5, %d15, 0
	ld.bu	%d15, [%a4] 12
	ld.bu	%d2, [%a2]0
	.loc 1 267 0
	mov	%d4, 3
	.loc 1 263 0
	or	%d15, %d2
	st.b	[%a2]0, %d15
	.loc 1 267 0
	ld.bu	%d5, [%a4] 10
.LBE252:
.LBE254:
	.loc 1 424 0
	mov	%d15, 1
.LBB255:
.LBB253:
	.loc 1 267 0
	call	MAIN_REC_vidSetErrCode
.LVL57:
.LBE253:
.LBE255:
	.loc 1 424 0
	st.b	[%a15] 19, %d15
	ret
.LFE317:
	.size	MAIN_ECP_vidOFSEVETA_OverTempIgbtLeftCallout, .-MAIN_ECP_vidOFSEVETA_OverTempIgbtLeftCallout
.section .text.MAIN_ECP_vidOFTCMTCS_VoltageMarginLowCallout,"ax",@progbits
	.align 1
	.type	MAIN_ECP_vidOFTCMTCS_VoltageMarginLowCallout, @function
MAIN_ECP_vidOFTCMTCS_VoltageMarginLowCallout:
.LFB333:
	.loc 1 548 0
.LVL58:
.LBB256:
.LBB257:
	.loc 1 263 0
	ld.bu	%d15, [%a4] 11
.LBE257:
.LBE256:
	.loc 1 548 0
	mov.aa	%a15, %a5
.LBB260:
.LBB258:
	.loc 1 263 0
	addsc.a	%a2, %a5, %d15, 0
	ld.bu	%d15, [%a4] 12
	ld.bu	%d2, [%a2]0
	.loc 1 267 0
	mov	%d4, 3
	.loc 1 263 0
	or	%d15, %d2
	st.b	[%a2]0, %d15
	.loc 1 267 0
	ld.bu	%d5, [%a4] 10
.LBE258:
.LBE260:
	.loc 1 552 0
	mov	%d15, 1
.LBB261:
.LBB259:
	.loc 1 267 0
	call	MAIN_REC_vidSetErrCode
.LVL59:
.LBE259:
.LBE261:
	.loc 1 552 0
	st.b	[%a15] 19, %d15
	ret
.LFE333:
	.size	MAIN_ECP_vidOFTCMTCS_VoltageMarginLowCallout, .-MAIN_ECP_vidOFTCMTCS_VoltageMarginLowCallout
.section .text.MAIN_ECP_vidOFTMTLCS_CurrentSumErrorCallout,"ax",@progbits
	.align 1
	.type	MAIN_ECP_vidOFTMTLCS_CurrentSumErrorCallout, @function
MAIN_ECP_vidOFTMTLCS_CurrentSumErrorCallout:
.LFB323:
	.loc 1 468 0
.LVL60:
.LBB262:
.LBB263:
	.loc 1 263 0
	ld.bu	%d15, [%a4] 11
.LBE263:
.LBE262:
	.loc 1 468 0
	mov.aa	%a15, %a5
.LBB266:
.LBB264:
	.loc 1 263 0
	addsc.a	%a2, %a5, %d15, 0
	ld.bu	%d15, [%a4] 12
	ld.bu	%d2, [%a2]0
	.loc 1 267 0
	mov	%d4, 3
	.loc 1 263 0
	or	%d15, %d2
	st.b	[%a2]0, %d15
	.loc 1 267 0
	ld.bu	%d5, [%a4] 10
.LBE264:
.LBE266:
	.loc 1 472 0
	mov	%d15, 1
.LBB267:
.LBB265:
	.loc 1 267 0
	call	MAIN_REC_vidSetErrCode
.LVL61:
.LBE265:
.LBE267:
	.loc 1 472 0
	st.b	[%a15] 19, %d15
	ret
.LFE323:
	.size	MAIN_ECP_vidOFTMTLCS_CurrentSumErrorCallout, .-MAIN_ECP_vidOFTMTLCS_CurrentSumErrorCallout
.section .text.MAIN_ECP_vidOFTMTLCS_CurSenrPhaW_VCCCallout,"ax",@progbits
	.align 1
	.type	MAIN_ECP_vidOFTMTLCS_CurSenrPhaW_VCCCallout, @function
MAIN_ECP_vidOFTMTLCS_CurSenrPhaW_VCCCallout:
.LFB329:
	.loc 1 516 0
.LVL62:
.LBB268:
.LBB269:
	.loc 1 263 0
	ld.bu	%d15, [%a4] 11
.LBE269:
.LBE268:
	.loc 1 516 0
	mov.aa	%a15, %a5
.LBB272:
.LBB270:
	.loc 1 263 0
	addsc.a	%a2, %a5, %d15, 0
	ld.bu	%d15, [%a4] 12
	ld.bu	%d2, [%a2]0
	.loc 1 267 0
	mov	%d4, 3
	.loc 1 263 0
	or	%d15, %d2
	st.b	[%a2]0, %d15
	.loc 1 267 0
	ld.bu	%d5, [%a4] 10
.LBE270:
.LBE272:
	.loc 1 520 0
	mov	%d15, 1
.LBB273:
.LBB271:
	.loc 1 267 0
	call	MAIN_REC_vidSetErrCode
.LVL63:
.LBE271:
.LBE273:
	.loc 1 520 0
	st.b	[%a15] 19, %d15
	ret
.LFE329:
	.size	MAIN_ECP_vidOFTMTLCS_CurSenrPhaW_VCCCallout, .-MAIN_ECP_vidOFTMTLCS_CurSenrPhaW_VCCCallout
.section .text.MAIN_ECP_vidOFTMTLCS_CurSenrPhaW_GNDCallout,"ax",@progbits
	.align 1
	.type	MAIN_ECP_vidOFTMTLCS_CurSenrPhaW_GNDCallout, @function
MAIN_ECP_vidOFTMTLCS_CurSenrPhaW_GNDCallout:
.LFB328:
	.loc 1 508 0
.LVL64:
.LBB274:
.LBB275:
	.loc 1 263 0
	ld.bu	%d15, [%a4] 11
.LBE275:
.LBE274:
	.loc 1 508 0
	mov.aa	%a15, %a5
.LBB278:
.LBB276:
	.loc 1 263 0
	addsc.a	%a2, %a5, %d15, 0
	ld.bu	%d15, [%a4] 12
	ld.bu	%d2, [%a2]0
	.loc 1 267 0
	mov	%d4, 3
	.loc 1 263 0
	or	%d15, %d2
	st.b	[%a2]0, %d15
	.loc 1 267 0
	ld.bu	%d5, [%a4] 10
.LBE276:
.LBE278:
	.loc 1 512 0
	mov	%d15, 1
.LBB279:
.LBB277:
	.loc 1 267 0
	call	MAIN_REC_vidSetErrCode
.LVL65:
.LBE277:
.LBE279:
	.loc 1 512 0
	st.b	[%a15] 19, %d15
	ret
.LFE328:
	.size	MAIN_ECP_vidOFTMTLCS_CurSenrPhaW_GNDCallout, .-MAIN_ECP_vidOFTMTLCS_CurSenrPhaW_GNDCallout
.section .text.MAIN_ECP_vidOFTMTLCS_CurSenrPhaV_VCCCallout,"ax",@progbits
	.align 1
	.type	MAIN_ECP_vidOFTMTLCS_CurSenrPhaV_VCCCallout, @function
MAIN_ECP_vidOFTMTLCS_CurSenrPhaV_VCCCallout:
.LFB327:
	.loc 1 500 0
.LVL66:
.LBB280:
.LBB281:
	.loc 1 263 0
	ld.bu	%d15, [%a4] 11
.LBE281:
.LBE280:
	.loc 1 500 0
	mov.aa	%a15, %a5
.LBB284:
.LBB282:
	.loc 1 263 0
	addsc.a	%a2, %a5, %d15, 0
	ld.bu	%d15, [%a4] 12
	ld.bu	%d2, [%a2]0
	.loc 1 267 0
	mov	%d4, 3
	.loc 1 263 0
	or	%d15, %d2
	st.b	[%a2]0, %d15
	.loc 1 267 0
	ld.bu	%d5, [%a4] 10
.LBE282:
.LBE284:
	.loc 1 504 0
	mov	%d15, 1
.LBB285:
.LBB283:
	.loc 1 267 0
	call	MAIN_REC_vidSetErrCode
.LVL67:
.LBE283:
.LBE285:
	.loc 1 504 0
	st.b	[%a15] 19, %d15
	ret
.LFE327:
	.size	MAIN_ECP_vidOFTMTLCS_CurSenrPhaV_VCCCallout, .-MAIN_ECP_vidOFTMTLCS_CurSenrPhaV_VCCCallout
.section .text.MAIN_ECP_vidOFTMTLCS_CurSenrPhaV_GNDCallout,"ax",@progbits
	.align 1
	.type	MAIN_ECP_vidOFTMTLCS_CurSenrPhaV_GNDCallout, @function
MAIN_ECP_vidOFTMTLCS_CurSenrPhaV_GNDCallout:
.LFB326:
	.loc 1 492 0
.LVL68:
.LBB286:
.LBB287:
	.loc 1 263 0
	ld.bu	%d15, [%a4] 11
.LBE287:
.LBE286:
	.loc 1 492 0
	mov.aa	%a15, %a5
.LBB290:
.LBB288:
	.loc 1 263 0
	addsc.a	%a2, %a5, %d15, 0
	ld.bu	%d15, [%a4] 12
	ld.bu	%d2, [%a2]0
	.loc 1 267 0
	mov	%d4, 3
	.loc 1 263 0
	or	%d15, %d2
	st.b	[%a2]0, %d15
	.loc 1 267 0
	ld.bu	%d5, [%a4] 10
.LBE288:
.LBE290:
	.loc 1 496 0
	mov	%d15, 1
.LBB291:
.LBB289:
	.loc 1 267 0
	call	MAIN_REC_vidSetErrCode
.LVL69:
.LBE289:
.LBE291:
	.loc 1 496 0
	st.b	[%a15] 19, %d15
	ret
.LFE326:
	.size	MAIN_ECP_vidOFTMTLCS_CurSenrPhaV_GNDCallout, .-MAIN_ECP_vidOFTMTLCS_CurSenrPhaV_GNDCallout
.section .text.MAIN_ECP_vidOFTMTLCS_CurSenrPhaU_VCCCallout,"ax",@progbits
	.align 1
	.type	MAIN_ECP_vidOFTMTLCS_CurSenrPhaU_VCCCallout, @function
MAIN_ECP_vidOFTMTLCS_CurSenrPhaU_VCCCallout:
.LFB325:
	.loc 1 484 0
.LVL70:
.LBB292:
.LBB293:
	.loc 1 263 0
	ld.bu	%d15, [%a4] 11
.LBE293:
.LBE292:
	.loc 1 484 0
	mov.aa	%a15, %a5
.LBB296:
.LBB294:
	.loc 1 263 0
	addsc.a	%a2, %a5, %d15, 0
	ld.bu	%d15, [%a4] 12
	ld.bu	%d2, [%a2]0
	.loc 1 267 0
	mov	%d4, 3
	.loc 1 263 0
	or	%d15, %d2
	st.b	[%a2]0, %d15
	.loc 1 267 0
	ld.bu	%d5, [%a4] 10
.LBE294:
.LBE296:
	.loc 1 488 0
	mov	%d15, 1
.LBB297:
.LBB295:
	.loc 1 267 0
	call	MAIN_REC_vidSetErrCode
.LVL71:
.LBE295:
.LBE297:
	.loc 1 488 0
	st.b	[%a15] 19, %d15
	ret
.LFE325:
	.size	MAIN_ECP_vidOFTMTLCS_CurSenrPhaU_VCCCallout, .-MAIN_ECP_vidOFTMTLCS_CurSenrPhaU_VCCCallout
.section .text.MAIN_ECP_vidOFTMTLCS_CurSenrPhaU_GNDCallout,"ax",@progbits
	.align 1
	.type	MAIN_ECP_vidOFTMTLCS_CurSenrPhaU_GNDCallout, @function
MAIN_ECP_vidOFTMTLCS_CurSenrPhaU_GNDCallout:
.LFB324:
	.loc 1 476 0
.LVL72:
.LBB298:
.LBB299:
	.loc 1 263 0
	ld.bu	%d15, [%a4] 11
.LBE299:
.LBE298:
	.loc 1 476 0
	mov.aa	%a15, %a5
.LBB302:
.LBB300:
	.loc 1 263 0
	addsc.a	%a2, %a5, %d15, 0
	ld.bu	%d15, [%a4] 12
	ld.bu	%d2, [%a2]0
	.loc 1 267 0
	mov	%d4, 3
	.loc 1 263 0
	or	%d15, %d2
	st.b	[%a2]0, %d15
	.loc 1 267 0
	ld.bu	%d5, [%a4] 10
.LBE300:
.LBE302:
	.loc 1 480 0
	mov	%d15, 1
.LBB303:
.LBB301:
	.loc 1 267 0
	call	MAIN_REC_vidSetErrCode
.LVL73:
.LBE301:
.LBE303:
	.loc 1 480 0
	st.b	[%a15] 19, %d15
	ret
.LFE324:
	.size	MAIN_ECP_vidOFTMTLCS_CurSenrPhaU_GNDCallout, .-MAIN_ECP_vidOFTMTLCS_CurSenrPhaU_GNDCallout
.section .text.MAIN_ECP_vidOBSW_HW_FPGA_OverUnderCurWICallout,"ax",@progbits
	.align 1
	.type	MAIN_ECP_vidOBSW_HW_FPGA_OverUnderCurWICallout, @function
MAIN_ECP_vidOBSW_HW_FPGA_OverUnderCurWICallout:
.LFB303:
	.loc 1 308 0
.LVL74:
.LBB304:
.LBB305:
	.loc 1 263 0
	ld.bu	%d15, [%a4] 11
.LBE305:
.LBE304:
	.loc 1 308 0
	mov.aa	%a15, %a5
.LBB308:
.LBB306:
	.loc 1 263 0
	addsc.a	%a2, %a5, %d15, 0
	ld.bu	%d15, [%a4] 12
	ld.bu	%d2, [%a2]0
	.loc 1 267 0
	mov	%d4, 3
	.loc 1 263 0
	or	%d15, %d2
	st.b	[%a2]0, %d15
	.loc 1 267 0
	ld.bu	%d5, [%a4] 10
.LBE306:
.LBE308:
	.loc 1 312 0
	mov	%d15, 1
.LBB309:
.LBB307:
	.loc 1 267 0
	call	MAIN_REC_vidSetErrCode
.LVL75:
.LBE307:
.LBE309:
	.loc 1 312 0
	st.b	[%a15] 19, %d15
	ret
.LFE303:
	.size	MAIN_ECP_vidOBSW_HW_FPGA_OverUnderCurWICallout, .-MAIN_ECP_vidOBSW_HW_FPGA_OverUnderCurWICallout
.section .text.MAIN_ECP_vidOBSW_HW_FPGA_OverUnderCurVICallout,"ax",@progbits
	.align 1
	.type	MAIN_ECP_vidOBSW_HW_FPGA_OverUnderCurVICallout, @function
MAIN_ECP_vidOBSW_HW_FPGA_OverUnderCurVICallout:
.LFB302:
	.loc 1 300 0
.LVL76:
.LBB310:
.LBB311:
	.loc 1 263 0
	ld.bu	%d15, [%a4] 11
.LBE311:
.LBE310:
	.loc 1 300 0
	mov.aa	%a15, %a5
.LBB314:
.LBB312:
	.loc 1 263 0
	addsc.a	%a2, %a5, %d15, 0
	ld.bu	%d15, [%a4] 12
	ld.bu	%d2, [%a2]0
	.loc 1 267 0
	mov	%d4, 3
	.loc 1 263 0
	or	%d15, %d2
	st.b	[%a2]0, %d15
	.loc 1 267 0
	ld.bu	%d5, [%a4] 10
.LBE312:
.LBE314:
	.loc 1 304 0
	mov	%d15, 1
.LBB315:
.LBB313:
	.loc 1 267 0
	call	MAIN_REC_vidSetErrCode
.LVL77:
.LBE313:
.LBE315:
	.loc 1 304 0
	st.b	[%a15] 19, %d15
	ret
.LFE302:
	.size	MAIN_ECP_vidOBSW_HW_FPGA_OverUnderCurVICallout, .-MAIN_ECP_vidOBSW_HW_FPGA_OverUnderCurVICallout
.section .text.MAIN_ECP_vidOBSW_HW_FPGA_OverUnderCurUICallout,"ax",@progbits
	.align 1
	.type	MAIN_ECP_vidOBSW_HW_FPGA_OverUnderCurUICallout, @function
MAIN_ECP_vidOBSW_HW_FPGA_OverUnderCurUICallout:
.LFB301:
	.loc 1 292 0
.LVL78:
.LBB316:
.LBB317:
	.loc 1 263 0
	ld.bu	%d15, [%a4] 11
.LBE317:
.LBE316:
	.loc 1 292 0
	mov.aa	%a15, %a5
.LBB320:
.LBB318:
	.loc 1 263 0
	addsc.a	%a2, %a5, %d15, 0
	ld.bu	%d15, [%a4] 12
	ld.bu	%d2, [%a2]0
	.loc 1 267 0
	mov	%d4, 3
	.loc 1 263 0
	or	%d15, %d2
	st.b	[%a2]0, %d15
	.loc 1 267 0
	ld.bu	%d5, [%a4] 10
.LBE318:
.LBE320:
	.loc 1 296 0
	mov	%d15, 1
.LBB321:
.LBB319:
	.loc 1 267 0
	call	MAIN_REC_vidSetErrCode
.LVL79:
.LBE319:
.LBE321:
	.loc 1 296 0
	st.b	[%a15] 19, %d15
	ret
.LFE301:
	.size	MAIN_ECP_vidOBSW_HW_FPGA_OverUnderCurUICallout, .-MAIN_ECP_vidOBSW_HW_FPGA_OverUnderCurUICallout
.section .text.MAIN_J1939_vidSendTPDT,"ax",@progbits
	.align 1
	.type	MAIN_J1939_vidSendTPDT, @function
MAIN_J1939_vidSendTPDT:
.LFB297:
	.loc 1 250 0
	.loc 1 252 0
	movh.a	%a4, hi:MAIN_J1939_au8TPDTTxBuf
	mov	%d4, 11
	lea	%a4, [%a4] lo:MAIN_J1939_au8TPDTTxBuf
	j	ComHal_vidSendMessage
.LVL80:
.LFE297:
	.size	MAIN_J1939_vidSendTPDT, .-MAIN_J1939_vidSendTPDT
.section .text.MAIN_J1939_vidSendBAM,"ax",@progbits
	.align 1
	.type	MAIN_J1939_vidSendBAM, @function
MAIN_J1939_vidSendBAM:
.LFB296:
	.loc 1 243 0
	.loc 1 245 0
	movh.a	%a4, hi:MAIN_J1939_au8BAMTxBuf
	mov	%d4, 10
	lea	%a4, [%a4] lo:MAIN_J1939_au8BAMTxBuf
	j	ComHal_vidSendMessage
.LVL81:
.LFE296:
	.size	MAIN_J1939_vidSendBAM, .-MAIN_J1939_vidSendBAM
.section .text.MAIN_J1939_vidSendDM1,"ax",@progbits
	.align 1
	.type	MAIN_J1939_vidSendDM1, @function
MAIN_J1939_vidSendDM1:
.LFB295:
	.loc 1 236 0
	.loc 1 238 0
	movh.a	%a4, hi:MAIN_J1939_au8DM1TxBuf
	mov	%d4, 9
	lea	%a4, [%a4] lo:MAIN_J1939_au8DM1TxBuf
	j	ComHal_vidSendMessage
.LVL82:
.LFE295:
	.size	MAIN_J1939_vidSendDM1, .-MAIN_J1939_vidSendDM1
.section .text.MAIN_J1939_vidSPNBufInit,"ax",@progbits
	.align 1
	.type	MAIN_J1939_vidSPNBufInit, @function
MAIN_J1939_vidSPNBufInit:
.LFB294:
	.loc 1 231 0
	.loc 1 232 0
	movh.a	%a4, hi:MAIN_J1939_au8SPNBuf
	lea	%a4, [%a4] lo:MAIN_J1939_au8SPNBuf
	mov	%d4, 255
	mov	%d5, 40
	j	rba_BswSrv_MemSet
.LVL83:
.LFE294:
	.size	MAIN_J1939_vidSPNBufInit, .-MAIN_J1939_vidSPNBufInit
.section .text.MAIN_ECP_vidInvalidEventHandler_EPS,"ax",@progbits
	.align 1
	.global	MAIN_ECP_vidInvalidEventHandler_EPS
	.type	MAIN_ECP_vidInvalidEventHandler_EPS, @function
MAIN_ECP_vidInvalidEventHandler_EPS:
.LFB293:
	.loc 1 210 0
.LVL84:
	ret
.LFE293:
	.size	MAIN_ECP_vidInvalidEventHandler_EPS, .-MAIN_ECP_vidInvalidEventHandler_EPS
	.global	MAIN_ktJ1939EcuCfg_EPS
.section .rodata.a4.MAIN_ktJ1939EcuCfg_EPS,"a",@progbits
	.align 2
	.type	MAIN_ktJ1939EcuCfg_EPS, @object
	.size	MAIN_ktJ1939EcuCfg_EPS, 44
MAIN_ktJ1939EcuCfg_EPS:
	.short	14
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
	.global	MAIN_ku16FaultNum_EPS
.section .rodata.a2.MAIN_ku16FaultNum_EPS,"a",@progbits
	.align 1
	.type	MAIN_ku16FaultNum_EPS, @object
	.size	MAIN_ku16FaultNum_EPS, 2
MAIN_ku16FaultNum_EPS:
	.short	40
	.global	MAIN_katFaultCfgSet_EPS
.section .rodata.a4.MAIN_katFaultCfgSet_EPS,"a",@progbits
	.align 2
	.type	MAIN_katFaultCfgSet_EPS, @object
	.size	MAIN_katFaultCfgSet_EPS, 960
MAIN_katFaultCfgSet_EPS:
	.short	6
	.short	0
	.word	520615
	.short	301
	.byte	6
	.byte	1
	.byte	1
	.byte	0
	.byte	1
	.zero	1
	.word	FaultDetn_u16Read_OBSW_HW_FPGA_OverUnderCurUILogged
	.word	MAIN_ECP_vidOBSW_HW_FPGA_OverUnderCurUICallout
	.short	6
	.short	1
	.word	520616
	.short	302
	.byte	7
	.byte	1
	.byte	2
	.byte	0
	.byte	1
	.zero	1
	.word	FaultDetn_u16Read_OBSW_HW_FPGA_OverUnderCurVILogged
	.word	MAIN_ECP_vidOBSW_HW_FPGA_OverUnderCurVICallout
	.short	6
	.short	2
	.word	520617
	.short	303
	.byte	8
	.byte	1
	.byte	4
	.byte	0
	.byte	1
	.zero	1
	.word	FaultDetn_u16Read_OBSW_HW_FPGA_OverUnderCurWILogged
	.word	MAIN_ECP_vidOBSW_HW_FPGA_OverUnderCurWICallout
	.short	12
	.short	3
	.word	520618
	.short	304
	.byte	9
	.byte	11
	.byte	1
	.byte	2
	.byte	2
	.zero	1
	.word	FaultDetn_u16Read_OFTMTLCS_CurSenrPhaU_GNDLogged
	.word	MAIN_ECP_vidOFTMTLCS_CurSenrPhaU_GNDCallout
	.short	12
	.short	3
	.word	520618
	.short	304
	.byte	10
	.byte	11
	.byte	2
	.byte	2
	.byte	2
	.zero	1
	.word	FaultDetn_u16Read_OFTMTLCS_CurSenrPhaU_VCCLogged
	.word	MAIN_ECP_vidOFTMTLCS_CurSenrPhaU_VCCCallout
	.short	12
	.short	3
	.word	520618
	.short	304
	.byte	70
	.byte	11
	.byte	16
	.byte	2
	.byte	2
	.zero	1
	.word	FaultDetn_u16Read_OFTMTLCS_CurSenrPhaV_GNDLogged
	.word	MAIN_ECP_vidOFTMTLCS_CurSenrPhaV_GNDCallout
	.short	12
	.short	3
	.word	520618
	.short	304
	.byte	71
	.byte	11
	.byte	32
	.byte	2
	.byte	2
	.zero	1
	.word	FaultDetn_u16Read_OFTMTLCS_CurSenrPhaV_VCCLogged
	.word	MAIN_ECP_vidOFTMTLCS_CurSenrPhaV_VCCCallout
	.short	12
	.short	3
	.word	520618
	.short	304
	.byte	72
	.byte	11
	.byte	64
	.byte	2
	.byte	2
	.zero	1
	.word	FaultDetn_u16Read_OFTMTLCS_CurSenrPhaW_GNDLogged
	.word	MAIN_ECP_vidOFTMTLCS_CurSenrPhaW_GNDCallout
	.short	12
	.short	3
	.word	520618
	.short	304
	.byte	73
	.byte	11
	.byte	-128
	.byte	2
	.byte	1
	.zero	1
	.word	FaultDetn_u16Read_OFTMTLCS_CurSenrPhaW_VCCLogged
	.word	MAIN_ECP_vidOFTMTLCS_CurSenrPhaW_VCCCallout
	.short	12
	.short	4
	.word	520619
	.short	305
	.byte	11
	.byte	5
	.byte	4
	.byte	2
	.byte	1
	.zero	1
	.word	FaultDetn_u16Read_OFTMTLCS_CurrentSumErrorLogged
	.word	MAIN_ECP_vidOFTMTLCS_CurrentSumErrorCallout
	.short	12
	.short	5
	.word	520620
	.short	306
	.byte	23
	.byte	7
	.byte	1
	.byte	0
	.byte	1
	.zero	1
	.word	FaultDetn_u16Read_OFTCMTCS_VoltageMarginLowLogged
	.word	MAIN_ECP_vidOFTCMTCS_VoltageMarginLowCallout
	.short	0
	.short	6
	.word	520622
	.short	309
	.byte	27
	.byte	4
	.byte	32
	.byte	0
	.byte	1
	.zero	1
	.word	FaultDetn_u16Read_OFSEVETA_OverTempIgbtLeftLogged
	.word	MAIN_ECP_vidOFSEVETA_OverTempIgbtLeftCallout
	.short	12
	.short	6
	.word	520622
	.short	307
	.byte	4
	.byte	0
	.byte	32
	.byte	2
	.byte	2
	.zero	1
	.word	FaultDetn_u16Read_OBSW_HW_FPGA_IGBT_HLogged
	.word	MAIN_ECP_vidOBSW_HW_FPGA_IGBT_HCallout
	.short	12
	.short	6
	.word	520622
	.short	307
	.byte	5
	.byte	0
	.byte	64
	.byte	2
	.byte	1
	.zero	1
	.word	FaultDetn_u16Read_OBSW_HW_FPGA_IGBT_LLogged
	.word	MAIN_ECP_vidOBSW_HW_FPGA_IGBT_LCallout
	.short	16
	.short	6
	.word	520622
	.short	308
	.byte	30
	.byte	6
	.byte	8
	.byte	2
	.byte	2
	.zero	1
	.word	FaultDetn_u16Read_OFTASETP_PmDeratingActLogged
	.word	MAIN_ECP_vidOFTASETP_PmDeratingActCallout
	.short	16
	.short	6
	.word	520622
	.short	308
	.byte	33
	.byte	12
	.byte	8
	.byte	2
	.byte	1
	.zero	1
	.word	FaultDetn_u16Read_OFSEVETA_IgbtTempRationalLogged
	.word	MAIN_ECP_vidOFSEVETA_IgbtTempRationalCallout
	.short	12
	.short	7
	.word	520623
	.short	310
	.byte	32
	.byte	7
	.byte	16
	.byte	2
	.byte	2
	.zero	1
	.word	FaultDetn_u16Read_OFSEVETA_TempIgbtLeftVccLogged
	.word	MAIN_ECP_vidOFSEVETA_TempIgbtLeftVccCallout
	.short	12
	.short	7
	.word	520623
	.short	310
	.byte	31
	.byte	8
	.byte	32
	.byte	2
	.byte	1
	.zero	1
	.word	FaultDetn_u16Read_OFSEVETA_TempIgbtLeftGndLogged
	.word	MAIN_ECP_vidOFSEVETA_TempIgbtLeftGndCallout
	.short	3
	.short	8
	.word	520624
	.short	311
	.byte	12
	.byte	1
	.byte	32
	.byte	2
	.byte	2
	.zero	1
	.word	FaultDetn_u16Read_OBSW_HW2_FPGA_OverVoltVBatLogged
	.word	MAIN_ECP_vidOBSW_HW2_FPGA_OverVoltVBatCallout
	.short	3
	.short	8
	.word	520624
	.short	311
	.byte	38
	.byte	1
	.byte	8
	.byte	2
	.byte	2
	.zero	1
	.word	FaultDetn_u16Read_OFSEVBHV_VoltageVccLogged
	.word	MAIN_ECP_vidOFSEVBHV_VoltageVccCallout
	.short	3
	.short	8
	.word	520624
	.short	311
	.byte	13
	.byte	2
	.byte	8
	.byte	2
	.byte	1
	.zero	1
	.word	FaultDetn_u16Read_OFSEVBHV_OverVoltageLogged
	.word	MAIN_ECP_vidOFSEVBHV_OverVoltageCallout
	.short	4
	.short	8
	.word	520624
	.short	312
	.byte	45
	.byte	4
	.byte	1
	.byte	2
	.byte	2
	.zero	1
	.word	FaultDetn_u16Read_OFTASBDS_BattVoltDeratingActLogged
	.word	MAIN_ECP_vidOFTASBDS_BattVoltDeratingActCallout
	.short	4
	.short	8
	.word	520624
	.short	312
	.byte	49
	.byte	0
	.byte	-128
	.byte	2
	.byte	2
	.zero	1
	.word	FaultDetn_u16Read_OFSEVBHV_VoltageGndLogged
	.word	MAIN_ECP_vidOFSEVBHV_VoltageGndCallout
	.short	4
	.short	8
	.word	520624
	.short	312
	.byte	14
	.byte	2
	.byte	16
	.byte	2
	.byte	1
	.zero	1
	.word	FaultDetn_u16Read_OFSEVBHV_UnderVoltageLogged
	.word	MAIN_ECP_vidOFSEVBHV_UnderVoltageCallout
	.short	0
	.short	9
	.word	520625
	.short	313
	.byte	34
	.byte	4
	.byte	-128
	.byte	2
	.byte	2
	.zero	1
	.word	FaultDetn_u16Read_OFSMTMTA_OverTempWdgHead1Logged
	.word	MAIN_ECP_vidOFSMTMTA_OverTempWdgHead1Callout
	.short	0
	.short	9
	.word	520625
	.short	313
	.byte	35
	.byte	6
	.byte	16
	.byte	2
	.byte	1
	.zero	1
	.word	FaultDetn_u16Read_OFTASMTP_Wndg1DeratingActLogged
	.word	MAIN_ECP_vidOFTASMTP_Wndg1DeratingActCallout
	.short	12
	.short	10
	.word	520626
	.short	314
	.byte	36
	.byte	9
	.byte	1
	.byte	2
	.byte	2
	.zero	1
	.word	FaultDetn_u16Read_OFSMTMTA_TempWindingHead1GndLogged
	.word	MAIN_ECP_vidOFSMTMTA_TempWindingHead1GndCallout
	.short	12
	.short	10
	.word	520626
	.short	314
	.byte	37
	.byte	10
	.byte	8
	.byte	2
	.byte	1
	.zero	1
	.word	FaultDetn_u16Read_OFSMTMTA_TempWindingHead1VccLogged
	.word	MAIN_ECP_vidOFSMTMTA_TempWindingHead1VccCallout
	.short	12
	.short	11
	.word	520627
	.short	315
	.byte	59
	.byte	7
	.byte	2
	.byte	2
	.byte	2
	.zero	1
	.word	FaultDetn_u16Read_OFTMTLCS_ContorOverLoadLogged
	.word	MAIN_ECP_vidOFTMTLCS_ContorOverLoadCallout
	.short	12
	.short	11
	.word	520627
	.short	315
	.byte	60
	.byte	7
	.byte	4
	.byte	2
	.byte	1
	.zero	1
	.word	FaultDetn_u16Read_OFTMTLCS_MotorOverLoadLogged
	.word	MAIN_ECP_vidOFTMTLCS_MotorOverLoadCallout
	.short	12
	.short	12
	.word	520628
	.short	316
	.byte	69
	.byte	8
	.byte	8
	.byte	2
	.byte	2
	.zero	1
	.word	FaultDetn_u16Read_OFTSLOBS_SpeedImbalanceLogged
	.word	MAIN_ECP_vidOFTSLOBS_SpeedImbalanceCallout
	.short	12
	.short	13
	.word	520629
	.short	317
	.byte	68
	.byte	8
	.byte	4
	.byte	2
	.byte	2
	.zero	1
	.word	FaultDetn_u16Read_OFTCMSCS_SpeedDiffLogged
	.word	MAIN_ECP_vidOFTCMSCS_SpeedDiffCallout
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
	.word	FaultDetn_u16Read_OBSW_COM_BusOff_CAN1Logged
	.word	MAIN_ECP_vidOBSW_COM_BusOff_CAN1Callout
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
	.word	FaultDetn_u16Read_OBSW_COM_TimoutRxVCULogged
	.word	MAIN_ECP_vidOBSW_COM_TimoutRxVCUCallout
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
	.word	FaultDetn_u16Read_OFSEVBLV_P5VRefADCFltLogged
	.word	MAIN_ECP_vidOFSEVBLV_P5VRefADCFltCallout
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
	.word	FaultDetn_u16Read_OFSEVETA_OverTempNTC1CmdBoardLogged
	.word	MAIN_ECP_vidOFSEVETA_OverTempNTC1CmdBoardCallout
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
	.word	FaultDetn_u16Read_OFSEVETA_OverTempDrvLeftLogged
	.word	MAIN_ECP_vidOFSEVETA_OverTempDrvLeftCallout
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
	.word	FaultDetn_u16Read_OFTASOSP_MotorSpdDeratingActLogged
	.word	MAIN_ECP_vidOFTASOSP_MotorSpdDeratingActCallout
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
	.word	FaultDetn_u16Read_OFSEVBLV_OverVoltageLogged
	.word	MAIN_ECP_vidOFSEVBLV_OverVoltageCallout
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
	.word	FaultDetn_u16Read_OFSEVBLV_UnderVoltageLogged
	.word	MAIN_ECP_vidOFSEVBLV_UnderVoltageCallout
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
	.uaword	.LFB337
	.uaword	.LFE337-.LFB337
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB316
	.uaword	.LFE316-.LFB316
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB315
	.uaword	.LFE315-.LFB315
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB313
	.uaword	.LFE313-.LFB313
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
	.uaword	.LFB308
	.uaword	.LFE308-.LFB308
	.align 2
.LEFDE32:
.LSFDE34:
	.uaword	.LEFDE34-.LASFDE34
.LASFDE34:
	.uaword	.Lframe0
	.uaword	.LFB310
	.uaword	.LFE310-.LFB310
	.align 2
.LEFDE34:
.LSFDE36:
	.uaword	.LEFDE36-.LASFDE36
.LASFDE36:
	.uaword	.Lframe0
	.uaword	.LFB334
	.uaword	.LFE334-.LFB334
	.align 2
.LEFDE36:
.LSFDE38:
	.uaword	.LEFDE38-.LASFDE38
.LASFDE38:
	.uaword	.Lframe0
	.uaword	.LFB307
	.uaword	.LFE307-.LFB307
	.align 2
.LEFDE38:
.LSFDE40:
	.uaword	.LEFDE40-.LASFDE40
.LASFDE40:
	.uaword	.Lframe0
	.uaword	.LFB309
	.uaword	.LFE309-.LFB309
	.align 2
.LEFDE40:
.LSFDE42:
	.uaword	.LEFDE42-.LASFDE42
.LASFDE42:
	.uaword	.Lframe0
	.uaword	.LFB304
	.uaword	.LFE304-.LFB304
	.align 2
.LEFDE42:
.LSFDE44:
	.uaword	.LEFDE44-.LASFDE44
.LASFDE44:
	.uaword	.Lframe0
	.uaword	.LFB319
	.uaword	.LFE319-.LFB319
	.align 2
.LEFDE44:
.LSFDE46:
	.uaword	.LEFDE46-.LASFDE46
.LASFDE46:
	.uaword	.Lframe0
	.uaword	.LFB320
	.uaword	.LFE320-.LFB320
	.align 2
.LEFDE46:
.LSFDE48:
	.uaword	.LEFDE48-.LASFDE48
.LASFDE48:
	.uaword	.Lframe0
	.uaword	.LFB314
	.uaword	.LFE314-.LFB314
	.align 2
.LEFDE48:
.LSFDE50:
	.uaword	.LEFDE50-.LASFDE50
.LASFDE50:
	.uaword	.Lframe0
	.uaword	.LFB335
	.uaword	.LFE335-.LFB335
	.align 2
.LEFDE50:
.LSFDE52:
	.uaword	.LEFDE52-.LASFDE52
.LASFDE52:
	.uaword	.Lframe0
	.uaword	.LFB300
	.uaword	.LFE300-.LFB300
	.align 2
.LEFDE52:
.LSFDE54:
	.uaword	.LEFDE54-.LASFDE54
.LASFDE54:
	.uaword	.Lframe0
	.uaword	.LFB299
	.uaword	.LFE299-.LFB299
	.align 2
.LEFDE54:
.LSFDE56:
	.uaword	.LEFDE56-.LASFDE56
.LASFDE56:
	.uaword	.Lframe0
	.uaword	.LFB317
	.uaword	.LFE317-.LFB317
	.align 2
.LEFDE56:
.LSFDE58:
	.uaword	.LEFDE58-.LASFDE58
.LASFDE58:
	.uaword	.Lframe0
	.uaword	.LFB333
	.uaword	.LFE333-.LFB333
	.align 2
.LEFDE58:
.LSFDE60:
	.uaword	.LEFDE60-.LASFDE60
.LASFDE60:
	.uaword	.Lframe0
	.uaword	.LFB323
	.uaword	.LFE323-.LFB323
	.align 2
.LEFDE60:
.LSFDE62:
	.uaword	.LEFDE62-.LASFDE62
.LASFDE62:
	.uaword	.Lframe0
	.uaword	.LFB329
	.uaword	.LFE329-.LFB329
	.align 2
.LEFDE62:
.LSFDE64:
	.uaword	.LEFDE64-.LASFDE64
.LASFDE64:
	.uaword	.Lframe0
	.uaword	.LFB328
	.uaword	.LFE328-.LFB328
	.align 2
.LEFDE64:
.LSFDE66:
	.uaword	.LEFDE66-.LASFDE66
.LASFDE66:
	.uaword	.Lframe0
	.uaword	.LFB327
	.uaword	.LFE327-.LFB327
	.align 2
.LEFDE66:
.LSFDE68:
	.uaword	.LEFDE68-.LASFDE68
.LASFDE68:
	.uaword	.Lframe0
	.uaword	.LFB326
	.uaword	.LFE326-.LFB326
	.align 2
.LEFDE68:
.LSFDE70:
	.uaword	.LEFDE70-.LASFDE70
.LASFDE70:
	.uaword	.Lframe0
	.uaword	.LFB325
	.uaword	.LFE325-.LFB325
	.align 2
.LEFDE70:
.LSFDE72:
	.uaword	.LEFDE72-.LASFDE72
.LASFDE72:
	.uaword	.Lframe0
	.uaword	.LFB324
	.uaword	.LFE324-.LFB324
	.align 2
.LEFDE72:
.LSFDE74:
	.uaword	.LEFDE74-.LASFDE74
.LASFDE74:
	.uaword	.Lframe0
	.uaword	.LFB303
	.uaword	.LFE303-.LFB303
	.align 2
.LEFDE74:
.LSFDE76:
	.uaword	.LEFDE76-.LASFDE76
.LASFDE76:
	.uaword	.Lframe0
	.uaword	.LFB302
	.uaword	.LFE302-.LFB302
	.align 2
.LEFDE76:
.LSFDE78:
	.uaword	.LEFDE78-.LASFDE78
.LASFDE78:
	.uaword	.Lframe0
	.uaword	.LFB301
	.uaword	.LFE301-.LFB301
	.align 2
.LEFDE78:
.LSFDE80:
	.uaword	.LEFDE80-.LASFDE80
.LASFDE80:
	.uaword	.Lframe0
	.uaword	.LFB297
	.uaword	.LFE297-.LFB297
	.align 2
.LEFDE80:
.LSFDE82:
	.uaword	.LEFDE82-.LASFDE82
.LASFDE82:
	.uaword	.Lframe0
	.uaword	.LFB296
	.uaword	.LFE296-.LFB296
	.align 2
.LEFDE82:
.LSFDE84:
	.uaword	.LEFDE84-.LASFDE84
.LASFDE84:
	.uaword	.Lframe0
	.uaword	.LFB295
	.uaword	.LFE295-.LFB295
	.align 2
.LEFDE84:
.LSFDE86:
	.uaword	.LEFDE86-.LASFDE86
.LASFDE86:
	.uaword	.Lframe0
	.uaword	.LFB294
	.uaword	.LFE294-.LFB294
	.align 2
.LEFDE86:
.LSFDE88:
	.uaword	.LEFDE88-.LASFDE88
.LASFDE88:
	.uaword	.Lframe0
	.uaword	.LFB293
	.uaword	.LFE293-.LFB293
	.align 2
.LEFDE88:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bswcdd\\J1939\\J1939TP.h"
	.file 4 "main\\_MainModule\\ErrCodePolling\\MAIN_ErrCodePolling.h"
	.file 5 "main\\_MainModule\\ErrCodePolling\\MAIN_ECPCfg_EPS.h"
	.file 6 ".\\output\\inc/..\\..\\main\\_MainModule\\RollErrCode\\MAIN_RollErrCode.h"
	.file 7 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\Cpu\\Std\\Ifx_Types.h"
	.file 8 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\_Impl\\IfxCpu_cfg.h"
	.file 9 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\Scu\\Std\\IfxScuCcu.h"
	.file 10 ".\\output\\inc/..\\..\\bswcdd\\ComHal\\ComHal.h"
	.file 11 ".\\output\\inc/..\\..\\bsw\\integration\\rba_BswSrv\\api\\rba_BswSrv.h"
	.file 12 ".\\output\\inc/..\\..\\bswcdd\\Dsm\\DSM.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x2e48
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"main\\_MainModule\\ErrCodePolling\\MAIN_ECPCfg_EPS.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x500
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
	.uaword	0xc34
	.uleb128 0xa
	.string	"eMAIN_J1939_SPN_IDX_520615"
	.sleb128 0
	.uleb128 0xa
	.string	"eMAIN_J1939_SPN_IDX_520616"
	.sleb128 1
	.uleb128 0xa
	.string	"eMAIN_J1939_SPN_IDX_520617"
	.sleb128 2
	.uleb128 0xa
	.string	"eMAIN_J1939_SPN_IDX_520618"
	.sleb128 3
	.uleb128 0xa
	.string	"eMAIN_J1939_SPN_IDX_520619"
	.sleb128 4
	.uleb128 0xa
	.string	"eMAIN_J1939_SPN_IDX_520620"
	.sleb128 5
	.uleb128 0xa
	.string	"eMAIN_J1939_SPN_IDX_520622"
	.sleb128 6
	.uleb128 0xa
	.string	"eMAIN_J1939_SPN_IDX_520623"
	.sleb128 7
	.uleb128 0xa
	.string	"eMAIN_J1939_SPN_IDX_520624"
	.sleb128 8
	.uleb128 0xa
	.string	"eMAIN_J1939_SPN_IDX_520625"
	.sleb128 9
	.uleb128 0xa
	.string	"eMAIN_J1939_SPN_IDX_520626"
	.sleb128 10
	.uleb128 0xa
	.string	"eMAIN_J1939_SPN_IDX_520627"
	.sleb128 11
	.uleb128 0xa
	.string	"eMAIN_J1939_SPN_IDX_520628"
	.sleb128 12
	.uleb128 0xa
	.string	"eMAIN_J1939_SPN_IDX_520629"
	.sleb128 13
	.uleb128 0xa
	.string	"eMAIN_J1939_SPN_MAX_NO"
	.sleb128 14
	.byte	0
	.uleb128 0x13
	.string	"DSM_CONTROL_UNIT_INDEX"
	.byte	0x1
	.byte	0xc
	.byte	0x2b
	.uaword	0xca8
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
	.uaword	0xcb6
	.uleb128 0x14
	.uleb128 0x15
	.byte	0x8
	.byte	0x7
	.byte	0x8c
	.uaword	0xce1
	.uleb128 0xc
	.string	"module"
	.byte	0x7
	.byte	0x8e
	.uaword	0xcb0
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
	.uaword	0xcb7
	.uleb128 0x9
	.byte	0x1
	.byte	0x8
	.byte	0x88
	.uaword	0xd5c
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
	.uaword	0xe65
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
	.uaword	0x1080
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
	.uahalf	0x104
	.byte	0x1
	.byte	0x3
	.uaword	0x10bd
	.uleb128 0x18
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x104
	.uaword	0xa50
	.uleb128 0x18
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x104
	.uaword	0x10bd
	.byte	0
	.uleb128 0x5
	.uaword	0x10c2
	.uleb128 0x4
	.byte	0x4
	.uaword	0x5b8
	.uleb128 0x19
	.string	"MAIN_ECP_vidOFSEVBLV_UnderVoltageCallout"
	.byte	0x1
	.uahalf	0x17b
	.byte	0x1
	.uaword	.LFB312
	.uaword	.LFE312
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x116b
	.uleb128 0x1a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x17b
	.uaword	0xa50
	.uaword	.LLST0
	.uleb128 0x1a
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x17b
	.uaword	0x10bd
	.uaword	.LLST1
	.uleb128 0x1b
	.uaword	0x1080
	.uaword	.LBB82
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.uahalf	0x17d
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST0
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST0
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST0
	.uleb128 0x1c
	.uaword	0x10b0
	.uaword	.LLST1
	.uleb128 0x1d
	.uaword	.LVL1
	.uaword	0x2dc8
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"MAIN_ECP_vidOFSEVBLV_OverVoltageCallout"
	.byte	0x1
	.uahalf	0x173
	.byte	0x1
	.uaword	.LFB311
	.uaword	.LFE311
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x120d
	.uleb128 0x1a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x173
	.uaword	0xa50
	.uaword	.LLST6
	.uleb128 0x1a
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x173
	.uaword	0x10bd
	.uaword	.LLST7
	.uleb128 0x1b
	.uaword	0x1080
	.uaword	.LBB88
	.uaword	.Ldebug_ranges0+0x20
	.byte	0x1
	.uahalf	0x175
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST6
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST6
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST6
	.uleb128 0x1c
	.uaword	0x10b0
	.uaword	.LLST7
	.uleb128 0x1d
	.uaword	.LVL3
	.uaword	0x2dc8
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"MAIN_ECP_vidOFTASOSP_MotorSpdDeratingActCallout"
	.byte	0x1
	.uahalf	0x243
	.byte	0x1
	.uaword	.LFB337
	.uaword	.LFE337
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x12b7
	.uleb128 0x1a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x243
	.uaword	0xa50
	.uaword	.LLST12
	.uleb128 0x1a
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x243
	.uaword	0x10bd
	.uaword	.LLST13
	.uleb128 0x1b
	.uaword	0x1080
	.uaword	.LBB94
	.uaword	.Ldebug_ranges0+0x40
	.byte	0x1
	.uahalf	0x245
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST12
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST12
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST12
	.uleb128 0x1c
	.uaword	0x10b0
	.uaword	.LLST13
	.uleb128 0x1d
	.uaword	.LVL5
	.uaword	0x2dc8
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"MAIN_ECP_vidOFSEVETA_OverTempDrvLeftCallout"
	.byte	0x1
	.uahalf	0x19b
	.byte	0x1
	.uaword	.LFB316
	.uaword	.LFE316
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x135d
	.uleb128 0x1a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x19b
	.uaword	0xa50
	.uaword	.LLST18
	.uleb128 0x1a
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x19b
	.uaword	0x10bd
	.uaword	.LLST19
	.uleb128 0x1b
	.uaword	0x1080
	.uaword	.LBB100
	.uaword	.Ldebug_ranges0+0x60
	.byte	0x1
	.uahalf	0x19d
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST18
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST18
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST18
	.uleb128 0x1c
	.uaword	0x10b0
	.uaword	.LLST19
	.uleb128 0x1d
	.uaword	.LVL7
	.uaword	0x2dc8
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"MAIN_ECP_vidOFSEVETA_OverTempNTC1CmdBoardCallout"
	.byte	0x1
	.uahalf	0x193
	.byte	0x1
	.uaword	.LFB315
	.uaword	.LFE315
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1408
	.uleb128 0x1a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x193
	.uaword	0xa50
	.uaword	.LLST24
	.uleb128 0x1a
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x193
	.uaword	0x10bd
	.uaword	.LLST25
	.uleb128 0x1b
	.uaword	0x1080
	.uaword	.LBB106
	.uaword	.Ldebug_ranges0+0x80
	.byte	0x1
	.uahalf	0x195
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST24
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST24
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST24
	.uleb128 0x1c
	.uaword	0x10b0
	.uaword	.LLST25
	.uleb128 0x1d
	.uaword	.LVL9
	.uaword	0x2dc8
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"MAIN_ECP_vidOFSEVBLV_P5VRefADCFltCallout"
	.byte	0x1
	.uahalf	0x183
	.byte	0x1
	.uaword	.LFB313
	.uaword	.LFE313
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x14ab
	.uleb128 0x1a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x183
	.uaword	0xa50
	.uaword	.LLST30
	.uleb128 0x1a
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x183
	.uaword	0x10bd
	.uaword	.LLST31
	.uleb128 0x1b
	.uaword	0x1080
	.uaword	.LBB112
	.uaword	.Ldebug_ranges0+0xa0
	.byte	0x1
	.uahalf	0x185
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST30
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST30
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST30
	.uleb128 0x1c
	.uaword	0x10b0
	.uaword	.LLST31
	.uleb128 0x1d
	.uaword	.LVL11
	.uaword	0x2dc8
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"MAIN_ECP_vidOBSW_COM_TimoutRxVCUCallout"
	.byte	0x1
	.uahalf	0x14b
	.byte	0x1
	.uaword	.LFB306
	.uaword	.LFE306
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x154d
	.uleb128 0x1a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x14b
	.uaword	0xa50
	.uaword	.LLST36
	.uleb128 0x1a
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x14b
	.uaword	0x10bd
	.uaword	.LLST37
	.uleb128 0x1b
	.uaword	0x1080
	.uaword	.LBB118
	.uaword	.Ldebug_ranges0+0xc0
	.byte	0x1
	.uahalf	0x14d
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST36
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST36
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST36
	.uleb128 0x1c
	.uaword	0x10b0
	.uaword	.LLST37
	.uleb128 0x1d
	.uaword	.LVL13
	.uaword	0x2dc8
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"MAIN_ECP_vidOBSW_COM_BusOff_CAN1Callout"
	.byte	0x1
	.uahalf	0x143
	.byte	0x1
	.uaword	.LFB305
	.uaword	.LFE305
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x15ef
	.uleb128 0x1a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x143
	.uaword	0xa50
	.uaword	.LLST42
	.uleb128 0x1a
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x143
	.uaword	0x10bd
	.uaword	.LLST43
	.uleb128 0x1b
	.uaword	0x1080
	.uaword	.LBB124
	.uaword	.Ldebug_ranges0+0xe0
	.byte	0x1
	.uahalf	0x145
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST42
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST42
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST42
	.uleb128 0x1c
	.uaword	0x10b0
	.uaword	.LLST43
	.uleb128 0x1d
	.uaword	.LVL15
	.uaword	0x2dc8
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"MAIN_ECP_vidOFTCMSCS_SpeedDiffCallout"
	.byte	0x1
	.uahalf	0x24b
	.byte	0x1
	.uaword	.LFB338
	.uaword	.LFE338
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x168f
	.uleb128 0x1a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x24b
	.uaword	0xa50
	.uaword	.LLST48
	.uleb128 0x1a
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x24b
	.uaword	0x10bd
	.uaword	.LLST49
	.uleb128 0x1b
	.uaword	0x1080
	.uaword	.LBB130
	.uaword	.Ldebug_ranges0+0x100
	.byte	0x1
	.uahalf	0x24d
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST48
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST48
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST48
	.uleb128 0x1c
	.uaword	0x10b0
	.uaword	.LLST49
	.uleb128 0x1d
	.uaword	.LVL17
	.uaword	0x2dc8
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"MAIN_ECP_vidOFTSLOBS_SpeedImbalanceCallout"
	.byte	0x1
	.uahalf	0x253
	.byte	0x1
	.uaword	.LFB339
	.uaword	.LFE339
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1734
	.uleb128 0x1a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x253
	.uaword	0xa50
	.uaword	.LLST54
	.uleb128 0x1a
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x253
	.uaword	0x10bd
	.uaword	.LLST55
	.uleb128 0x1b
	.uaword	0x1080
	.uaword	.LBB136
	.uaword	.Ldebug_ranges0+0x120
	.byte	0x1
	.uahalf	0x255
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST54
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST54
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST54
	.uleb128 0x1c
	.uaword	0x10b0
	.uaword	.LLST55
	.uleb128 0x1d
	.uaword	.LVL19
	.uaword	0x2dc8
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"MAIN_ECP_vidOFTMTLCS_MotorOverLoadCallout"
	.byte	0x1
	.uahalf	0x213
	.byte	0x1
	.uaword	.LFB331
	.uaword	.LFE331
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x17d8
	.uleb128 0x1a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x213
	.uaword	0xa50
	.uaword	.LLST60
	.uleb128 0x1a
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x213
	.uaword	0x10bd
	.uaword	.LLST61
	.uleb128 0x1b
	.uaword	0x1080
	.uaword	.LBB142
	.uaword	.Ldebug_ranges0+0x140
	.byte	0x1
	.uahalf	0x215
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST60
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST60
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST60
	.uleb128 0x1c
	.uaword	0x10b0
	.uaword	.LLST61
	.uleb128 0x1d
	.uaword	.LVL21
	.uaword	0x2dc8
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"MAIN_ECP_vidOFTMTLCS_ContorOverLoadCallout"
	.byte	0x1
	.uahalf	0x20b
	.byte	0x1
	.uaword	.LFB330
	.uaword	.LFE330
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x187d
	.uleb128 0x1a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x20b
	.uaword	0xa50
	.uaword	.LLST66
	.uleb128 0x1a
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x20b
	.uaword	0x10bd
	.uaword	.LLST67
	.uleb128 0x1b
	.uaword	0x1080
	.uaword	.LBB148
	.uaword	.Ldebug_ranges0+0x160
	.byte	0x1
	.uahalf	0x20d
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST66
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST66
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST66
	.uleb128 0x1c
	.uaword	0x10b0
	.uaword	.LLST67
	.uleb128 0x1d
	.uaword	.LVL23
	.uaword	0x2dc8
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"MAIN_ECP_vidOFSMTMTA_TempWindingHead1VccCallout"
	.byte	0x1
	.uahalf	0x1cb
	.byte	0x1
	.uaword	.LFB322
	.uaword	.LFE322
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1927
	.uleb128 0x1a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x1cb
	.uaword	0xa50
	.uaword	.LLST72
	.uleb128 0x1a
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x1cb
	.uaword	0x10bd
	.uaword	.LLST73
	.uleb128 0x1b
	.uaword	0x1080
	.uaword	.LBB154
	.uaword	.Ldebug_ranges0+0x180
	.byte	0x1
	.uahalf	0x1cd
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST72
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST72
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST72
	.uleb128 0x1c
	.uaword	0x10b0
	.uaword	.LLST73
	.uleb128 0x1d
	.uaword	.LVL25
	.uaword	0x2dc8
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"MAIN_ECP_vidOFSMTMTA_TempWindingHead1GndCallout"
	.byte	0x1
	.uahalf	0x1c3
	.byte	0x1
	.uaword	.LFB321
	.uaword	.LFE321
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x19d1
	.uleb128 0x1a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x1c3
	.uaword	0xa50
	.uaword	.LLST78
	.uleb128 0x1a
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x1c3
	.uaword	0x10bd
	.uaword	.LLST79
	.uleb128 0x1b
	.uaword	0x1080
	.uaword	.LBB160
	.uaword	.Ldebug_ranges0+0x1a0
	.byte	0x1
	.uahalf	0x1c5
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST78
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST78
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST78
	.uleb128 0x1c
	.uaword	0x10b0
	.uaword	.LLST79
	.uleb128 0x1d
	.uaword	.LVL27
	.uaword	0x2dc8
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"MAIN_ECP_vidOFTASMTP_Wndg1DeratingActCallout"
	.byte	0x1
	.uahalf	0x23b
	.byte	0x1
	.uaword	.LFB336
	.uaword	.LFE336
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1a78
	.uleb128 0x1a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x23b
	.uaword	0xa50
	.uaword	.LLST84
	.uleb128 0x1a
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x23b
	.uaword	0x10bd
	.uaword	.LLST85
	.uleb128 0x1b
	.uaword	0x1080
	.uaword	.LBB166
	.uaword	.Ldebug_ranges0+0x1c0
	.byte	0x1
	.uahalf	0x23d
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST84
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST84
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST84
	.uleb128 0x1c
	.uaword	0x10b0
	.uaword	.LLST85
	.uleb128 0x1d
	.uaword	.LVL29
	.uaword	0x2dc8
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"MAIN_ECP_vidOFSMTMTA_OverTempWdgHead1Callout"
	.byte	0x1
	.uahalf	0x1ab
	.byte	0x1
	.uaword	.LFB318
	.uaword	.LFE318
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1b1f
	.uleb128 0x1a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x1ab
	.uaword	0xa50
	.uaword	.LLST90
	.uleb128 0x1a
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x1ab
	.uaword	0x10bd
	.uaword	.LLST91
	.uleb128 0x1b
	.uaword	0x1080
	.uaword	.LBB172
	.uaword	.Ldebug_ranges0+0x1e0
	.byte	0x1
	.uahalf	0x1ad
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST90
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST90
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST90
	.uleb128 0x1c
	.uaword	0x10b0
	.uaword	.LLST91
	.uleb128 0x1d
	.uaword	.LVL31
	.uaword	0x2dc8
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"MAIN_ECP_vidOFSEVBHV_UnderVoltageCallout"
	.byte	0x1
	.uahalf	0x15b
	.byte	0x1
	.uaword	.LFB308
	.uaword	.LFE308
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1bc2
	.uleb128 0x1a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x15b
	.uaword	0xa50
	.uaword	.LLST96
	.uleb128 0x1a
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x15b
	.uaword	0x10bd
	.uaword	.LLST97
	.uleb128 0x1b
	.uaword	0x1080
	.uaword	.LBB178
	.uaword	.Ldebug_ranges0+0x200
	.byte	0x1
	.uahalf	0x15d
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST96
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST96
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST96
	.uleb128 0x1c
	.uaword	0x10b0
	.uaword	.LLST97
	.uleb128 0x1d
	.uaword	.LVL33
	.uaword	0x2dc8
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"MAIN_ECP_vidOFSEVBHV_VoltageGndCallout"
	.byte	0x1
	.uahalf	0x16b
	.byte	0x1
	.uaword	.LFB310
	.uaword	.LFE310
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1c63
	.uleb128 0x1a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x16b
	.uaword	0xa50
	.uaword	.LLST102
	.uleb128 0x1a
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x16b
	.uaword	0x10bd
	.uaword	.LLST103
	.uleb128 0x1b
	.uaword	0x1080
	.uaword	.LBB184
	.uaword	.Ldebug_ranges0+0x220
	.byte	0x1
	.uahalf	0x16d
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST102
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST102
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST102
	.uleb128 0x1c
	.uaword	0x10b0
	.uaword	.LLST103
	.uleb128 0x1d
	.uaword	.LVL35
	.uaword	0x2dc8
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"MAIN_ECP_vidOFTASBDS_BattVoltDeratingActCallout"
	.byte	0x1
	.uahalf	0x22b
	.byte	0x1
	.uaword	.LFB334
	.uaword	.LFE334
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1d0d
	.uleb128 0x1a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x22b
	.uaword	0xa50
	.uaword	.LLST108
	.uleb128 0x1a
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x22b
	.uaword	0x10bd
	.uaword	.LLST109
	.uleb128 0x1b
	.uaword	0x1080
	.uaword	.LBB190
	.uaword	.Ldebug_ranges0+0x240
	.byte	0x1
	.uahalf	0x22d
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST108
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST108
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST108
	.uleb128 0x1c
	.uaword	0x10b0
	.uaword	.LLST109
	.uleb128 0x1d
	.uaword	.LVL37
	.uaword	0x2dc8
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"MAIN_ECP_vidOFSEVBHV_OverVoltageCallout"
	.byte	0x1
	.uahalf	0x153
	.byte	0x1
	.uaword	.LFB307
	.uaword	.LFE307
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1daf
	.uleb128 0x1a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x153
	.uaword	0xa50
	.uaword	.LLST114
	.uleb128 0x1a
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x153
	.uaword	0x10bd
	.uaword	.LLST115
	.uleb128 0x1b
	.uaword	0x1080
	.uaword	.LBB196
	.uaword	.Ldebug_ranges0+0x260
	.byte	0x1
	.uahalf	0x155
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST114
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST114
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST114
	.uleb128 0x1c
	.uaword	0x10b0
	.uaword	.LLST115
	.uleb128 0x1d
	.uaword	.LVL39
	.uaword	0x2dc8
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"MAIN_ECP_vidOFSEVBHV_VoltageVccCallout"
	.byte	0x1
	.uahalf	0x163
	.byte	0x1
	.uaword	.LFB309
	.uaword	.LFE309
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1e50
	.uleb128 0x1a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x163
	.uaword	0xa50
	.uaword	.LLST120
	.uleb128 0x1a
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x163
	.uaword	0x10bd
	.uaword	.LLST121
	.uleb128 0x1b
	.uaword	0x1080
	.uaword	.LBB202
	.uaword	.Ldebug_ranges0+0x280
	.byte	0x1
	.uahalf	0x165
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST120
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST120
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST120
	.uleb128 0x1c
	.uaword	0x10b0
	.uaword	.LLST121
	.uleb128 0x1d
	.uaword	.LVL41
	.uaword	0x2dc8
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"MAIN_ECP_vidOBSW_HW2_FPGA_OverVoltVBatCallout"
	.byte	0x1
	.uahalf	0x13b
	.byte	0x1
	.uaword	.LFB304
	.uaword	.LFE304
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1ef8
	.uleb128 0x1a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x13b
	.uaword	0xa50
	.uaword	.LLST126
	.uleb128 0x1a
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x13b
	.uaword	0x10bd
	.uaword	.LLST127
	.uleb128 0x1b
	.uaword	0x1080
	.uaword	.LBB208
	.uaword	.Ldebug_ranges0+0x2a0
	.byte	0x1
	.uahalf	0x13d
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST126
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST126
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST126
	.uleb128 0x1c
	.uaword	0x10b0
	.uaword	.LLST127
	.uleb128 0x1d
	.uaword	.LVL43
	.uaword	0x2dc8
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"MAIN_ECP_vidOFSEVETA_TempIgbtLeftGndCallout"
	.byte	0x1
	.uahalf	0x1b3
	.byte	0x1
	.uaword	.LFB319
	.uaword	.LFE319
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1f9e
	.uleb128 0x1a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x1b3
	.uaword	0xa50
	.uaword	.LLST132
	.uleb128 0x1a
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x1b3
	.uaword	0x10bd
	.uaword	.LLST133
	.uleb128 0x1b
	.uaword	0x1080
	.uaword	.LBB214
	.uaword	.Ldebug_ranges0+0x2c0
	.byte	0x1
	.uahalf	0x1b5
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST132
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST132
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST132
	.uleb128 0x1c
	.uaword	0x10b0
	.uaword	.LLST133
	.uleb128 0x1d
	.uaword	.LVL45
	.uaword	0x2dc8
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"MAIN_ECP_vidOFSEVETA_TempIgbtLeftVccCallout"
	.byte	0x1
	.uahalf	0x1bb
	.byte	0x1
	.uaword	.LFB320
	.uaword	.LFE320
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x2044
	.uleb128 0x1a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x1bb
	.uaword	0xa50
	.uaword	.LLST138
	.uleb128 0x1a
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x1bb
	.uaword	0x10bd
	.uaword	.LLST139
	.uleb128 0x1b
	.uaword	0x1080
	.uaword	.LBB220
	.uaword	.Ldebug_ranges0+0x2e0
	.byte	0x1
	.uahalf	0x1bd
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST138
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST138
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST138
	.uleb128 0x1c
	.uaword	0x10b0
	.uaword	.LLST139
	.uleb128 0x1d
	.uaword	.LVL47
	.uaword	0x2dc8
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"MAIN_ECP_vidOFSEVETA_IgbtTempRationalCallout"
	.byte	0x1
	.uahalf	0x18b
	.byte	0x1
	.uaword	.LFB314
	.uaword	.LFE314
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x20eb
	.uleb128 0x1a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x18b
	.uaword	0xa50
	.uaword	.LLST144
	.uleb128 0x1a
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x18b
	.uaword	0x10bd
	.uaword	.LLST145
	.uleb128 0x1b
	.uaword	0x1080
	.uaword	.LBB226
	.uaword	.Ldebug_ranges0+0x300
	.byte	0x1
	.uahalf	0x18d
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST144
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST144
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST144
	.uleb128 0x1c
	.uaword	0x10b0
	.uaword	.LLST145
	.uleb128 0x1d
	.uaword	.LVL49
	.uaword	0x2dc8
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"MAIN_ECP_vidOFTASETP_PmDeratingActCallout"
	.byte	0x1
	.uahalf	0x233
	.byte	0x1
	.uaword	.LFB335
	.uaword	.LFE335
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x218f
	.uleb128 0x1a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x233
	.uaword	0xa50
	.uaword	.LLST150
	.uleb128 0x1a
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x233
	.uaword	0x10bd
	.uaword	.LLST151
	.uleb128 0x1b
	.uaword	0x1080
	.uaword	.LBB232
	.uaword	.Ldebug_ranges0+0x320
	.byte	0x1
	.uahalf	0x235
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST150
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST150
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST150
	.uleb128 0x1c
	.uaword	0x10b0
	.uaword	.LLST151
	.uleb128 0x1d
	.uaword	.LVL51
	.uaword	0x2dc8
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"MAIN_ECP_vidOBSW_HW_FPGA_IGBT_LCallout"
	.byte	0x1
	.uahalf	0x11b
	.byte	0x1
	.uaword	.LFB300
	.uaword	.LFE300
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x2230
	.uleb128 0x1a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x11b
	.uaword	0xa50
	.uaword	.LLST156
	.uleb128 0x1a
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x11b
	.uaword	0x10bd
	.uaword	.LLST157
	.uleb128 0x1b
	.uaword	0x1080
	.uaword	.LBB238
	.uaword	.Ldebug_ranges0+0x340
	.byte	0x1
	.uahalf	0x11d
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST156
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST156
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST156
	.uleb128 0x1c
	.uaword	0x10b0
	.uaword	.LLST157
	.uleb128 0x1d
	.uaword	.LVL53
	.uaword	0x2dc8
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"MAIN_ECP_vidOBSW_HW_FPGA_IGBT_HCallout"
	.byte	0x1
	.uahalf	0x113
	.byte	0x1
	.uaword	.LFB299
	.uaword	.LFE299
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x22d1
	.uleb128 0x1a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x113
	.uaword	0xa50
	.uaword	.LLST162
	.uleb128 0x1a
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x113
	.uaword	0x10bd
	.uaword	.LLST163
	.uleb128 0x1b
	.uaword	0x1080
	.uaword	.LBB244
	.uaword	.Ldebug_ranges0+0x360
	.byte	0x1
	.uahalf	0x115
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST162
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST162
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST162
	.uleb128 0x1c
	.uaword	0x10b0
	.uaword	.LLST163
	.uleb128 0x1d
	.uaword	.LVL55
	.uaword	0x2dc8
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"MAIN_ECP_vidOFSEVETA_OverTempIgbtLeftCallout"
	.byte	0x1
	.uahalf	0x1a3
	.byte	0x1
	.uaword	.LFB317
	.uaword	.LFE317
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x2378
	.uleb128 0x1a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x1a3
	.uaword	0xa50
	.uaword	.LLST168
	.uleb128 0x1a
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x1a3
	.uaword	0x10bd
	.uaword	.LLST169
	.uleb128 0x1b
	.uaword	0x1080
	.uaword	.LBB250
	.uaword	.Ldebug_ranges0+0x380
	.byte	0x1
	.uahalf	0x1a5
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST168
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST168
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST168
	.uleb128 0x1c
	.uaword	0x10b0
	.uaword	.LLST169
	.uleb128 0x1d
	.uaword	.LVL57
	.uaword	0x2dc8
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"MAIN_ECP_vidOFTCMTCS_VoltageMarginLowCallout"
	.byte	0x1
	.uahalf	0x223
	.byte	0x1
	.uaword	.LFB333
	.uaword	.LFE333
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x241f
	.uleb128 0x1a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x223
	.uaword	0xa50
	.uaword	.LLST174
	.uleb128 0x1a
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x223
	.uaword	0x10bd
	.uaword	.LLST175
	.uleb128 0x1b
	.uaword	0x1080
	.uaword	.LBB256
	.uaword	.Ldebug_ranges0+0x3a0
	.byte	0x1
	.uahalf	0x225
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST174
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST174
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST174
	.uleb128 0x1c
	.uaword	0x10b0
	.uaword	.LLST175
	.uleb128 0x1d
	.uaword	.LVL59
	.uaword	0x2dc8
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"MAIN_ECP_vidOFTMTLCS_CurrentSumErrorCallout"
	.byte	0x1
	.uahalf	0x1d3
	.byte	0x1
	.uaword	.LFB323
	.uaword	.LFE323
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x24c5
	.uleb128 0x1a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x1d3
	.uaword	0xa50
	.uaword	.LLST180
	.uleb128 0x1a
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x1d3
	.uaword	0x10bd
	.uaword	.LLST181
	.uleb128 0x1b
	.uaword	0x1080
	.uaword	.LBB262
	.uaword	.Ldebug_ranges0+0x3c0
	.byte	0x1
	.uahalf	0x1d5
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST180
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST180
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST180
	.uleb128 0x1c
	.uaword	0x10b0
	.uaword	.LLST181
	.uleb128 0x1d
	.uaword	.LVL61
	.uaword	0x2dc8
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"MAIN_ECP_vidOFTMTLCS_CurSenrPhaW_VCCCallout"
	.byte	0x1
	.uahalf	0x203
	.byte	0x1
	.uaword	.LFB329
	.uaword	.LFE329
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x256b
	.uleb128 0x1a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x203
	.uaword	0xa50
	.uaword	.LLST186
	.uleb128 0x1a
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x203
	.uaword	0x10bd
	.uaword	.LLST187
	.uleb128 0x1b
	.uaword	0x1080
	.uaword	.LBB268
	.uaword	.Ldebug_ranges0+0x3e0
	.byte	0x1
	.uahalf	0x205
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST186
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST186
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST186
	.uleb128 0x1c
	.uaword	0x10b0
	.uaword	.LLST187
	.uleb128 0x1d
	.uaword	.LVL63
	.uaword	0x2dc8
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"MAIN_ECP_vidOFTMTLCS_CurSenrPhaW_GNDCallout"
	.byte	0x1
	.uahalf	0x1fb
	.byte	0x1
	.uaword	.LFB328
	.uaword	.LFE328
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x2611
	.uleb128 0x1a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x1fb
	.uaword	0xa50
	.uaword	.LLST192
	.uleb128 0x1a
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x1fb
	.uaword	0x10bd
	.uaword	.LLST193
	.uleb128 0x1b
	.uaword	0x1080
	.uaword	.LBB274
	.uaword	.Ldebug_ranges0+0x400
	.byte	0x1
	.uahalf	0x1fd
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST192
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST192
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST192
	.uleb128 0x1c
	.uaword	0x10b0
	.uaword	.LLST193
	.uleb128 0x1d
	.uaword	.LVL65
	.uaword	0x2dc8
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"MAIN_ECP_vidOFTMTLCS_CurSenrPhaV_VCCCallout"
	.byte	0x1
	.uahalf	0x1f3
	.byte	0x1
	.uaword	.LFB327
	.uaword	.LFE327
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x26b7
	.uleb128 0x1a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x1f3
	.uaword	0xa50
	.uaword	.LLST198
	.uleb128 0x1a
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x1f3
	.uaword	0x10bd
	.uaword	.LLST199
	.uleb128 0x1b
	.uaword	0x1080
	.uaword	.LBB280
	.uaword	.Ldebug_ranges0+0x420
	.byte	0x1
	.uahalf	0x1f5
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST198
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST198
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST198
	.uleb128 0x1c
	.uaword	0x10b0
	.uaword	.LLST199
	.uleb128 0x1d
	.uaword	.LVL67
	.uaword	0x2dc8
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"MAIN_ECP_vidOFTMTLCS_CurSenrPhaV_GNDCallout"
	.byte	0x1
	.uahalf	0x1eb
	.byte	0x1
	.uaword	.LFB326
	.uaword	.LFE326
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x275d
	.uleb128 0x1a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x1eb
	.uaword	0xa50
	.uaword	.LLST204
	.uleb128 0x1a
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x1eb
	.uaword	0x10bd
	.uaword	.LLST205
	.uleb128 0x1b
	.uaword	0x1080
	.uaword	.LBB286
	.uaword	.Ldebug_ranges0+0x440
	.byte	0x1
	.uahalf	0x1ed
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST204
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST204
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST204
	.uleb128 0x1c
	.uaword	0x10b0
	.uaword	.LLST205
	.uleb128 0x1d
	.uaword	.LVL69
	.uaword	0x2dc8
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"MAIN_ECP_vidOFTMTLCS_CurSenrPhaU_VCCCallout"
	.byte	0x1
	.uahalf	0x1e3
	.byte	0x1
	.uaword	.LFB325
	.uaword	.LFE325
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x2803
	.uleb128 0x1a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x1e3
	.uaword	0xa50
	.uaword	.LLST210
	.uleb128 0x1a
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x1e3
	.uaword	0x10bd
	.uaword	.LLST211
	.uleb128 0x1b
	.uaword	0x1080
	.uaword	.LBB292
	.uaword	.Ldebug_ranges0+0x460
	.byte	0x1
	.uahalf	0x1e5
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST210
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST210
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST210
	.uleb128 0x1c
	.uaword	0x10b0
	.uaword	.LLST211
	.uleb128 0x1d
	.uaword	.LVL71
	.uaword	0x2dc8
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"MAIN_ECP_vidOFTMTLCS_CurSenrPhaU_GNDCallout"
	.byte	0x1
	.uahalf	0x1db
	.byte	0x1
	.uaword	.LFB324
	.uaword	.LFE324
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x28a9
	.uleb128 0x1a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x1db
	.uaword	0xa50
	.uaword	.LLST216
	.uleb128 0x1a
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x1db
	.uaword	0x10bd
	.uaword	.LLST217
	.uleb128 0x1b
	.uaword	0x1080
	.uaword	.LBB298
	.uaword	.Ldebug_ranges0+0x480
	.byte	0x1
	.uahalf	0x1dd
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST216
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST216
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST216
	.uleb128 0x1c
	.uaword	0x10b0
	.uaword	.LLST217
	.uleb128 0x1d
	.uaword	.LVL73
	.uaword	0x2dc8
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"MAIN_ECP_vidOBSW_HW_FPGA_OverUnderCurWICallout"
	.byte	0x1
	.uahalf	0x133
	.byte	0x1
	.uaword	.LFB303
	.uaword	.LFE303
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x2952
	.uleb128 0x1a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x133
	.uaword	0xa50
	.uaword	.LLST222
	.uleb128 0x1a
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x133
	.uaword	0x10bd
	.uaword	.LLST223
	.uleb128 0x1b
	.uaword	0x1080
	.uaword	.LBB304
	.uaword	.Ldebug_ranges0+0x4a0
	.byte	0x1
	.uahalf	0x135
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST222
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST222
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST222
	.uleb128 0x1c
	.uaword	0x10b0
	.uaword	.LLST223
	.uleb128 0x1d
	.uaword	.LVL75
	.uaword	0x2dc8
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"MAIN_ECP_vidOBSW_HW_FPGA_OverUnderCurVICallout"
	.byte	0x1
	.uahalf	0x12b
	.byte	0x1
	.uaword	.LFB302
	.uaword	.LFE302
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x29fb
	.uleb128 0x1a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x12b
	.uaword	0xa50
	.uaword	.LLST228
	.uleb128 0x1a
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x12b
	.uaword	0x10bd
	.uaword	.LLST229
	.uleb128 0x1b
	.uaword	0x1080
	.uaword	.LBB310
	.uaword	.Ldebug_ranges0+0x4c0
	.byte	0x1
	.uahalf	0x12d
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST228
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST228
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST228
	.uleb128 0x1c
	.uaword	0x10b0
	.uaword	.LLST229
	.uleb128 0x1d
	.uaword	.LVL77
	.uaword	0x2dc8
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"MAIN_ECP_vidOBSW_HW_FPGA_OverUnderCurUICallout"
	.byte	0x1
	.uahalf	0x123
	.byte	0x1
	.uaword	.LFB301
	.uaword	.LFE301
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x2aa4
	.uleb128 0x1a
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x123
	.uaword	0xa50
	.uaword	.LLST234
	.uleb128 0x1a
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x123
	.uaword	0x10bd
	.uaword	.LLST235
	.uleb128 0x1b
	.uaword	0x1080
	.uaword	.LBB316
	.uaword	.Ldebug_ranges0+0x4e0
	.byte	0x1
	.uahalf	0x125
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST234
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST234
	.uleb128 0x1c
	.uaword	0x10a4
	.uaword	.LLST234
	.uleb128 0x1c
	.uaword	0x10b0
	.uaword	.LLST235
	.uleb128 0x1d
	.uaword	.LVL79
	.uaword	0x2dc8
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.string	"MAIN_J1939_vidSendTPDT"
	.byte	0x1
	.byte	0xf9
	.byte	0x1
	.uaword	.LFB297
	.uaword	.LFE297
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x2ae9
	.uleb128 0x20
	.uaword	.LVL80
	.byte	0x1
	.uaword	0x2df4
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
	.byte	0x3b
	.byte	0
	.byte	0
	.uleb128 0x1f
	.string	"MAIN_J1939_vidSendBAM"
	.byte	0x1
	.byte	0xf2
	.byte	0x1
	.uaword	.LFB296
	.uaword	.LFE296
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x2b2d
	.uleb128 0x20
	.uaword	.LVL81
	.byte	0x1
	.uaword	0x2df4
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
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x1f
	.string	"MAIN_J1939_vidSendDM1"
	.byte	0x1
	.byte	0xeb
	.byte	0x1
	.uaword	.LFB295
	.uaword	.LFE295
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x2b71
	.uleb128 0x20
	.uaword	.LVL82
	.byte	0x1
	.uaword	0x2df4
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
	.byte	0x39
	.byte	0
	.byte	0
	.uleb128 0x1f
	.string	"MAIN_J1939_vidSPNBufInit"
	.byte	0x1
	.byte	0xe6
	.byte	0x1
	.uaword	.LFB294
	.uaword	.LFE294
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x2bbf
	.uleb128 0x20
	.uaword	.LVL83
	.byte	0x1
	.uaword	0x2e1f
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
	.string	"MAIN_ECP_vidInvalidEventHandler_EPS"
	.byte	0x1
	.byte	0xd1
	.byte	0x1
	.uaword	.LFB293
	.uaword	.LFE293
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x2c0b
	.uleb128 0x22
	.string	"tFuncPtr"
	.byte	0x1
	.byte	0xd1
	.uaword	0xa71
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x7
	.uaword	0x244
	.uaword	0x2c1b
	.uleb128 0x8
	.uaword	0x2bf
	.byte	0
	.byte	0
	.uleb128 0x23
	.string	"MAIN_J1939_au32SpnLogState"
	.byte	0x1
	.byte	0x33
	.uaword	0x2c0b
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_J1939_au32SpnLogState
	.uleb128 0x7
	.uaword	0x1cf
	.uaword	0x2c53
	.uleb128 0x8
	.uaword	0x2bf
	.byte	0x7
	.byte	0
	.uleb128 0x23
	.string	"MAIN_J1939_au8DM1TxBuf"
	.byte	0x1
	.byte	0x34
	.uaword	0x2c43
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_J1939_au8DM1TxBuf
	.uleb128 0x23
	.string	"MAIN_J1939_au8BAMTxBuf"
	.byte	0x1
	.byte	0x35
	.uaword	0x2c43
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_J1939_au8BAMTxBuf
	.uleb128 0x23
	.string	"MAIN_J1939_au8TPDTTxBuf"
	.byte	0x1
	.byte	0x36
	.uaword	0x2c43
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_J1939_au8TPDTTxBuf
	.uleb128 0x7
	.uaword	0x1cf
	.uaword	0x2cd0
	.uleb128 0x8
	.uaword	0x2bf
	.byte	0x27
	.byte	0
	.uleb128 0x23
	.string	"MAIN_J1939_au8SPNBuf"
	.byte	0x1
	.byte	0x37
	.uaword	0x2cc0
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
	.uaword	0xce1
	.uaword	0x2d22
	.uleb128 0x8
	.uaword	0x2bf
	.byte	0x3
	.byte	0
	.uleb128 0x24
	.string	"IfxCpu_cfg_indexMap"
	.byte	0x8
	.byte	0xaa
	.uaword	0x2d3f
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.uaword	0x2d12
	.uleb128 0x7
	.uaword	0x656
	.uaword	0x2d54
	.uleb128 0x8
	.uaword	0x2bf
	.byte	0x27
	.byte	0
	.uleb128 0x25
	.string	"MAIN_katFaultCfgSet_EPS"
	.byte	0x1
	.byte	0x73
	.uaword	0x2d7a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_katFaultCfgSet_EPS
	.uleb128 0x5
	.uaword	0x2d44
	.uleb128 0x25
	.string	"MAIN_ku16FaultNum_EPS"
	.byte	0x1
	.byte	0xb1
	.uaword	0x779
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_ku16FaultNum_EPS
	.uleb128 0x25
	.string	"MAIN_ktJ1939EcuCfg_EPS"
	.byte	0x1
	.byte	0xba
	.uaword	0xa77
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_ktJ1939EcuCfg_EPS
	.uleb128 0x26
	.byte	0x1
	.string	"MAIN_REC_vidSetErrCode"
	.byte	0x6
	.byte	0x2a
	.byte	0x1
	.byte	0x1
	.uaword	0x2df4
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
	.uaword	0x2e1f
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
	.uaword	.LFE337
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
	.uaword	.LFE337
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
	.uaword	.LFE316
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
	.uaword	.LFE316
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
	.uaword	.LFE315
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
	.uaword	.LFE315
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
	.uaword	.LFE313
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
	.uaword	.LFE313
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
	.uaword	.LFE308
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
	.uaword	.LFE308
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
	.uaword	.LFE310
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
	.uaword	.LFE310
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
	.uaword	.LFE334
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
	.uaword	.LFE334
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
	.uaword	.LFE307
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
	.uaword	.LFE307
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
	.uaword	.LFE309
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
	.uaword	.LFE309
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
	.uaword	.LFE304
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
	.uaword	.LFE304
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
	.uaword	.LFE319
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
	.uaword	.LFE319
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
	.uaword	.LFE320
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
	.uaword	.LFE320
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
	.uaword	.LFE314
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
	.uaword	.LFE314
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
	.uaword	.LFE335
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
	.uaword	.LFE335
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
	.uaword	.LFE300
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
	.uaword	.LFE300
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
	.uaword	.LFE299
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
	.uaword	.LFE299
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
	.uaword	.LFE317
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
	.uaword	.LFE317
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
	.uaword	.LFE333
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
	.uaword	.LFE333
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
	.uaword	.LFE323
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
	.uaword	.LFE323
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
	.uaword	.LFE329
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
	.uaword	.LFE329
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
	.uaword	.LFE328
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
	.uaword	.LFE328
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
	.uaword	.LFE327
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
	.uaword	.LFE327
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
	.uaword	.LFE326
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
	.uaword	.LFE326
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
	.uaword	.LFE325
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
	.uaword	.LFE325
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
	.uaword	.LFE324
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
	.uaword	.LFE324
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
	.uaword	.LFE303
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
	.uaword	.LFE303
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
	.uaword	.LFE302
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
	.uaword	.LFE302
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
	.uaword	.LFE301
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
	.uaword	.LFE301
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x17c
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
	.uaword	.LFB337
	.uaword	.LFE337-.LFB337
	.uaword	.LFB316
	.uaword	.LFE316-.LFB316
	.uaword	.LFB315
	.uaword	.LFE315-.LFB315
	.uaword	.LFB313
	.uaword	.LFE313-.LFB313
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
	.uaword	.LFB314
	.uaword	.LFE314-.LFB314
	.uaword	.LFB335
	.uaword	.LFE335-.LFB335
	.uaword	.LFB300
	.uaword	.LFE300-.LFB300
	.uaword	.LFB299
	.uaword	.LFE299-.LFB299
	.uaword	.LFB317
	.uaword	.LFE317-.LFB317
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
	.uaword	.LBB82
	.uaword	.LBE82
	.uaword	.LBB86
	.uaword	.LBE86
	.uaword	.LBB87
	.uaword	.LBE87
	.uaword	0
	.uaword	0
	.uaword	.LBB88
	.uaword	.LBE88
	.uaword	.LBB92
	.uaword	.LBE92
	.uaword	.LBB93
	.uaword	.LBE93
	.uaword	0
	.uaword	0
	.uaword	.LBB94
	.uaword	.LBE94
	.uaword	.LBB98
	.uaword	.LBE98
	.uaword	.LBB99
	.uaword	.LBE99
	.uaword	0
	.uaword	0
	.uaword	.LBB100
	.uaword	.LBE100
	.uaword	.LBB104
	.uaword	.LBE104
	.uaword	.LBB105
	.uaword	.LBE105
	.uaword	0
	.uaword	0
	.uaword	.LBB106
	.uaword	.LBE106
	.uaword	.LBB110
	.uaword	.LBE110
	.uaword	.LBB111
	.uaword	.LBE111
	.uaword	0
	.uaword	0
	.uaword	.LBB112
	.uaword	.LBE112
	.uaword	.LBB116
	.uaword	.LBE116
	.uaword	.LBB117
	.uaword	.LBE117
	.uaword	0
	.uaword	0
	.uaword	.LBB118
	.uaword	.LBE118
	.uaword	.LBB122
	.uaword	.LBE122
	.uaword	.LBB123
	.uaword	.LBE123
	.uaword	0
	.uaword	0
	.uaword	.LBB124
	.uaword	.LBE124
	.uaword	.LBB128
	.uaword	.LBE128
	.uaword	.LBB129
	.uaword	.LBE129
	.uaword	0
	.uaword	0
	.uaword	.LBB130
	.uaword	.LBE130
	.uaword	.LBB134
	.uaword	.LBE134
	.uaword	.LBB135
	.uaword	.LBE135
	.uaword	0
	.uaword	0
	.uaword	.LBB136
	.uaword	.LBE136
	.uaword	.LBB140
	.uaword	.LBE140
	.uaword	.LBB141
	.uaword	.LBE141
	.uaword	0
	.uaword	0
	.uaword	.LBB142
	.uaword	.LBE142
	.uaword	.LBB146
	.uaword	.LBE146
	.uaword	.LBB147
	.uaword	.LBE147
	.uaword	0
	.uaword	0
	.uaword	.LBB148
	.uaword	.LBE148
	.uaword	.LBB152
	.uaword	.LBE152
	.uaword	.LBB153
	.uaword	.LBE153
	.uaword	0
	.uaword	0
	.uaword	.LBB154
	.uaword	.LBE154
	.uaword	.LBB158
	.uaword	.LBE158
	.uaword	.LBB159
	.uaword	.LBE159
	.uaword	0
	.uaword	0
	.uaword	.LBB160
	.uaword	.LBE160
	.uaword	.LBB164
	.uaword	.LBE164
	.uaword	.LBB165
	.uaword	.LBE165
	.uaword	0
	.uaword	0
	.uaword	.LBB166
	.uaword	.LBE166
	.uaword	.LBB170
	.uaword	.LBE170
	.uaword	.LBB171
	.uaword	.LBE171
	.uaword	0
	.uaword	0
	.uaword	.LBB172
	.uaword	.LBE172
	.uaword	.LBB176
	.uaword	.LBE176
	.uaword	.LBB177
	.uaword	.LBE177
	.uaword	0
	.uaword	0
	.uaword	.LBB178
	.uaword	.LBE178
	.uaword	.LBB182
	.uaword	.LBE182
	.uaword	.LBB183
	.uaword	.LBE183
	.uaword	0
	.uaword	0
	.uaword	.LBB184
	.uaword	.LBE184
	.uaword	.LBB188
	.uaword	.LBE188
	.uaword	.LBB189
	.uaword	.LBE189
	.uaword	0
	.uaword	0
	.uaword	.LBB190
	.uaword	.LBE190
	.uaword	.LBB194
	.uaword	.LBE194
	.uaword	.LBB195
	.uaword	.LBE195
	.uaword	0
	.uaword	0
	.uaword	.LBB196
	.uaword	.LBE196
	.uaword	.LBB200
	.uaword	.LBE200
	.uaword	.LBB201
	.uaword	.LBE201
	.uaword	0
	.uaword	0
	.uaword	.LBB202
	.uaword	.LBE202
	.uaword	.LBB206
	.uaword	.LBE206
	.uaword	.LBB207
	.uaword	.LBE207
	.uaword	0
	.uaword	0
	.uaword	.LBB208
	.uaword	.LBE208
	.uaword	.LBB212
	.uaword	.LBE212
	.uaword	.LBB213
	.uaword	.LBE213
	.uaword	0
	.uaword	0
	.uaword	.LBB214
	.uaword	.LBE214
	.uaword	.LBB218
	.uaword	.LBE218
	.uaword	.LBB219
	.uaword	.LBE219
	.uaword	0
	.uaword	0
	.uaword	.LBB220
	.uaword	.LBE220
	.uaword	.LBB224
	.uaword	.LBE224
	.uaword	.LBB225
	.uaword	.LBE225
	.uaword	0
	.uaword	0
	.uaword	.LBB226
	.uaword	.LBE226
	.uaword	.LBB230
	.uaword	.LBE230
	.uaword	.LBB231
	.uaword	.LBE231
	.uaword	0
	.uaword	0
	.uaword	.LBB232
	.uaword	.LBE232
	.uaword	.LBB236
	.uaword	.LBE236
	.uaword	.LBB237
	.uaword	.LBE237
	.uaword	0
	.uaword	0
	.uaword	.LBB238
	.uaword	.LBE238
	.uaword	.LBB242
	.uaword	.LBE242
	.uaword	.LBB243
	.uaword	.LBE243
	.uaword	0
	.uaword	0
	.uaword	.LBB244
	.uaword	.LBE244
	.uaword	.LBB248
	.uaword	.LBE248
	.uaword	.LBB249
	.uaword	.LBE249
	.uaword	0
	.uaword	0
	.uaword	.LBB250
	.uaword	.LBE250
	.uaword	.LBB254
	.uaword	.LBE254
	.uaword	.LBB255
	.uaword	.LBE255
	.uaword	0
	.uaword	0
	.uaword	.LBB256
	.uaword	.LBE256
	.uaword	.LBB260
	.uaword	.LBE260
	.uaword	.LBB261
	.uaword	.LBE261
	.uaword	0
	.uaword	0
	.uaword	.LBB262
	.uaword	.LBE262
	.uaword	.LBB266
	.uaword	.LBE266
	.uaword	.LBB267
	.uaword	.LBE267
	.uaword	0
	.uaword	0
	.uaword	.LBB268
	.uaword	.LBE268
	.uaword	.LBB272
	.uaword	.LBE272
	.uaword	.LBB273
	.uaword	.LBE273
	.uaword	0
	.uaword	0
	.uaword	.LBB274
	.uaword	.LBE274
	.uaword	.LBB278
	.uaword	.LBE278
	.uaword	.LBB279
	.uaword	.LBE279
	.uaword	0
	.uaword	0
	.uaword	.LBB280
	.uaword	.LBE280
	.uaword	.LBB284
	.uaword	.LBE284
	.uaword	.LBB285
	.uaword	.LBE285
	.uaword	0
	.uaword	0
	.uaword	.LBB286
	.uaword	.LBE286
	.uaword	.LBB290
	.uaword	.LBE290
	.uaword	.LBB291
	.uaword	.LBE291
	.uaword	0
	.uaword	0
	.uaword	.LBB292
	.uaword	.LBE292
	.uaword	.LBB296
	.uaword	.LBE296
	.uaword	.LBB297
	.uaword	.LBE297
	.uaword	0
	.uaword	0
	.uaword	.LBB298
	.uaword	.LBE298
	.uaword	.LBB302
	.uaword	.LBE302
	.uaword	.LBB303
	.uaword	.LBE303
	.uaword	0
	.uaword	0
	.uaword	.LBB304
	.uaword	.LBE304
	.uaword	.LBB308
	.uaword	.LBE308
	.uaword	.LBB309
	.uaword	.LBE309
	.uaword	0
	.uaword	0
	.uaword	.LBB310
	.uaword	.LBE310
	.uaword	.LBB314
	.uaword	.LBE314
	.uaword	.LBB315
	.uaword	.LBE315
	.uaword	0
	.uaword	0
	.uaword	.LBB316
	.uaword	.LBE316
	.uaword	.LBB320
	.uaword	.LBE320
	.uaword	.LBB321
	.uaword	.LBE321
	.uaword	0
	.uaword	0
	.uaword	.LFB312
	.uaword	.LFE312
	.uaword	.LFB311
	.uaword	.LFE311
	.uaword	.LFB337
	.uaword	.LFE337
	.uaword	.LFB316
	.uaword	.LFE316
	.uaword	.LFB315
	.uaword	.LFE315
	.uaword	.LFB313
	.uaword	.LFE313
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
	.uaword	.LFB314
	.uaword	.LFE314
	.uaword	.LFB335
	.uaword	.LFE335
	.uaword	.LFB300
	.uaword	.LFE300
	.uaword	.LFB299
	.uaword	.LFE299
	.uaword	.LFB317
	.uaword	.LFE317
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
	.extern	FaultDetn_u16Read_OFSEVBLV_UnderVoltageLogged,STT_FUNC,0
	.extern	FaultDetn_u16Read_OFSEVBLV_OverVoltageLogged,STT_FUNC,0
	.extern	FaultDetn_u16Read_OFTASOSP_MotorSpdDeratingActLogged,STT_FUNC,0
	.extern	FaultDetn_u16Read_OFSEVETA_OverTempDrvLeftLogged,STT_FUNC,0
	.extern	FaultDetn_u16Read_OFSEVETA_OverTempNTC1CmdBoardLogged,STT_FUNC,0
	.extern	FaultDetn_u16Read_OFSEVBLV_P5VRefADCFltLogged,STT_FUNC,0
	.extern	FaultDetn_u16Read_OBSW_COM_TimoutRxVCULogged,STT_FUNC,0
	.extern	FaultDetn_u16Read_OBSW_COM_BusOff_CAN1Logged,STT_FUNC,0
	.extern	FaultDetn_u16Read_OFTCMSCS_SpeedDiffLogged,STT_FUNC,0
	.extern	FaultDetn_u16Read_OFTSLOBS_SpeedImbalanceLogged,STT_FUNC,0
	.extern	FaultDetn_u16Read_OFTMTLCS_MotorOverLoadLogged,STT_FUNC,0
	.extern	FaultDetn_u16Read_OFTMTLCS_ContorOverLoadLogged,STT_FUNC,0
	.extern	FaultDetn_u16Read_OFSMTMTA_TempWindingHead1VccLogged,STT_FUNC,0
	.extern	FaultDetn_u16Read_OFSMTMTA_TempWindingHead1GndLogged,STT_FUNC,0
	.extern	FaultDetn_u16Read_OFTASMTP_Wndg1DeratingActLogged,STT_FUNC,0
	.extern	FaultDetn_u16Read_OFSMTMTA_OverTempWdgHead1Logged,STT_FUNC,0
	.extern	FaultDetn_u16Read_OFSEVBHV_UnderVoltageLogged,STT_FUNC,0
	.extern	FaultDetn_u16Read_OFSEVBHV_VoltageGndLogged,STT_FUNC,0
	.extern	FaultDetn_u16Read_OFTASBDS_BattVoltDeratingActLogged,STT_FUNC,0
	.extern	FaultDetn_u16Read_OFSEVBHV_OverVoltageLogged,STT_FUNC,0
	.extern	FaultDetn_u16Read_OFSEVBHV_VoltageVccLogged,STT_FUNC,0
	.extern	FaultDetn_u16Read_OBSW_HW2_FPGA_OverVoltVBatLogged,STT_FUNC,0
	.extern	FaultDetn_u16Read_OFSEVETA_TempIgbtLeftGndLogged,STT_FUNC,0
	.extern	FaultDetn_u16Read_OFSEVETA_TempIgbtLeftVccLogged,STT_FUNC,0
	.extern	FaultDetn_u16Read_OFSEVETA_IgbtTempRationalLogged,STT_FUNC,0
	.extern	FaultDetn_u16Read_OFTASETP_PmDeratingActLogged,STT_FUNC,0
	.extern	FaultDetn_u16Read_OBSW_HW_FPGA_IGBT_LLogged,STT_FUNC,0
	.extern	FaultDetn_u16Read_OBSW_HW_FPGA_IGBT_HLogged,STT_FUNC,0
	.extern	FaultDetn_u16Read_OFSEVETA_OverTempIgbtLeftLogged,STT_FUNC,0
	.extern	FaultDetn_u16Read_OFTCMTCS_VoltageMarginLowLogged,STT_FUNC,0
	.extern	FaultDetn_u16Read_OFTMTLCS_CurrentSumErrorLogged,STT_FUNC,0
	.extern	FaultDetn_u16Read_OFTMTLCS_CurSenrPhaW_VCCLogged,STT_FUNC,0
	.extern	FaultDetn_u16Read_OFTMTLCS_CurSenrPhaW_GNDLogged,STT_FUNC,0
	.extern	FaultDetn_u16Read_OFTMTLCS_CurSenrPhaV_VCCLogged,STT_FUNC,0
	.extern	FaultDetn_u16Read_OFTMTLCS_CurSenrPhaV_GNDLogged,STT_FUNC,0
	.extern	FaultDetn_u16Read_OFTMTLCS_CurSenrPhaU_VCCLogged,STT_FUNC,0
	.extern	FaultDetn_u16Read_OFTMTLCS_CurSenrPhaU_GNDLogged,STT_FUNC,0
	.extern	FaultDetn_u16Read_OBSW_HW_FPGA_OverUnderCurWILogged,STT_FUNC,0
	.extern	FaultDetn_u16Read_OBSW_HW_FPGA_OverUnderCurVILogged,STT_FUNC,0
	.extern	FaultDetn_u16Read_OBSW_HW_FPGA_OverUnderCurUILogged,STT_FUNC,0
	.extern	rba_BswSrv_MemSet,STT_FUNC,0
	.extern	ComHal_vidSendMessage,STT_FUNC,0
	.extern	MAIN_REC_vidSetErrCode,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
