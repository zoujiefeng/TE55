	.file	"MAIN_MSG_Auto_Can01.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	MAIN_MSGvidCan01_Rx01_PDUMC1_0x18F71E31
	.type	MAIN_MSGvidCan01_Rx01_PDUMC1_0x18F71E31, @function
MAIN_MSGvidCan01_Rx01_PDUMC1_0x18F71E31:
.LFB0:
	.file 1 "main\\AutoMSG\\MAIN_MSG_Auto_Can01.c"
	.loc 1 23 0
	.loc 1 24 0
	movh.a	%a15, hi:BSW_bRxTOutFlag_Can01_Rx01
	ld.bu	%d15, [%a15] lo:BSW_bRxTOutFlag_Can01_Rx01
	jz	%d15, .L2
	.loc 1 24 0 is_stmt 0 discriminator 2
	movh.a	%a15, hi:MAIN_bMSGRxToutBenchOnC
	ld.bu	%d15, [%a15] lo:MAIN_bMSGRxToutBenchOnC
	jz	%d15, .L3
.L2:
	.loc 1 24 0 discriminator 3
	movh.a	%a15, hi:MAIN_bComRxDisableFlgByUds
	ld.bu	%d15, [%a15] lo:MAIN_bComRxDisableFlgByUds
	jz	%d15, .L13
.L3:
	.loc 1 260 0 is_stmt 1
	mov	%d15, 0
	movh.a	%a15, hi:MAIN_MSGbCan01_Rx01_Power_Enable_Signal
	st.b	[%a15] lo:MAIN_MSGbCan01_Rx01_Power_Enable_Signal, %d15
	.loc 1 261 0
	movh.a	%a15, hi:MAIN_MSGbCan01_Rx01_Key_Signal
	st.b	[%a15] lo:MAIN_MSGbCan01_Rx01_Key_Signal, %d15
	.loc 1 262 0
	movh.a	%a15, hi:MAIN_MSGbCan01_Rx01_Auxiliary_Contactor_Enable
	st.b	[%a15] lo:MAIN_MSGbCan01_Rx01_Auxiliary_Contactor_Enable, %d15
	.loc 1 263 0
	movh.a	%a15, hi:MAIN_MSGbCan01_Rx01_PTC_Enable_Signal
	st.b	[%a15] lo:MAIN_MSGbCan01_Rx01_PTC_Enable_Signal, %d15
	.loc 1 264 0
	movh.a	%a15, hi:MAIN_MSGbCan01_Rx01_Upper_Enable_Signal
	st.b	[%a15] lo:MAIN_MSGbCan01_Rx01_Upper_Enable_Signal, %d15
	.loc 1 265 0
	movh.a	%a15, hi:MAIN_MSGbCan01_Rx01_Keyon_Signal_Sts
	st.b	[%a15] lo:MAIN_MSGbCan01_Rx01_Keyon_Signal_Sts, %d15
	.loc 1 266 0
	movh.a	%a15, hi:MAIN_MSGbCan01_Rx01_Insulationresistance_Ctrl_Cmd
	st.b	[%a15] lo:MAIN_MSGbCan01_Rx01_Insulationresistance_Ctrl_Cmd, %d15
	.loc 1 267 0
	movh.a	%a15, hi:MAIN_MSGbCan01_Rx01_NegContactor_Ctrl_Cmd
	st.b	[%a15] lo:MAIN_MSGbCan01_Rx01_NegContactor_Ctrl_Cmd, %d15
	.loc 1 268 0
	movh.a	%a15, hi:MAIN_MSGbCan01_Rx01_Cab1_PTC_MOS_Switch_Cmd
	st.b	[%a15] lo:MAIN_MSGbCan01_Rx01_Cab1_PTC_MOS_Switch_Cmd, %d15
	.loc 1 269 0
	movh.a	%a15, hi:MAIN_MSGbCan01_Rx01_Cab2_PTC_MOS_Switch_Cmd
	st.b	[%a15] lo:MAIN_MSGbCan01_Rx01_Cab2_PTC_MOS_Switch_Cmd, %d15
	.loc 1 270 0
	movh.a	%a15, hi:MAIN_MSGbCan01_Rx01_Batteryheat1_MOS_Switch_Cmd
	st.b	[%a15] lo:MAIN_MSGbCan01_Rx01_Batteryheat1_MOS_Switch_Cmd, %d15
	.loc 1 271 0
	movh.a	%a15, hi:MAIN_MSGbCan01_Rx01_Batteryheat2_MOS_Switch_Cmd
	st.b	[%a15] lo:MAIN_MSGbCan01_Rx01_Batteryheat2_MOS_Switch_Cmd, %d15
	.loc 1 272 0
	movh.a	%a15, hi:MAIN_MSGbCan01_Rx01_Batteryheat3_MOS_Switch_Cmd
	st.b	[%a15] lo:MAIN_MSGbCan01_Rx01_Batteryheat3_MOS_Switch_Cmd, %d15
	.loc 1 273 0
	movh.a	%a15, hi:MAIN_MSGbCan01_Rx01_Batteryheat4_MOS_Switch_Cmd
	st.b	[%a15] lo:MAIN_MSGbCan01_Rx01_Batteryheat4_MOS_Switch_Cmd, %d15
	.loc 1 274 0
	movh.a	%a15, hi:MAIN_MSGbCan01_Rx01_ChargCircuit1_PosContactor_Ctrl_Cmd
	st.b	[%a15] lo:MAIN_MSGbCan01_Rx01_ChargCircuit1_PosContactor_Ctrl_Cmd, %d15
	.loc 1 275 0
	movh.a	%a15, hi:MAIN_MSGbCan01_Rx01_ChargCircuit1_NegContactor_Ctrl_Cmd
	st.b	[%a15] lo:MAIN_MSGbCan01_Rx01_ChargCircuit1_NegContactor_Ctrl_Cmd, %d15
	.loc 1 276 0
	movh.a	%a15, hi:MAIN_MSGbCan01_Rx01_ChargCircuit2_PosContactor_Ctrl_Cmd
	st.b	[%a15] lo:MAIN_MSGbCan01_Rx01_ChargCircuit2_PosContactor_Ctrl_Cmd, %d15
	.loc 1 277 0
	movh.a	%a15, hi:MAIN_MSGbCan01_Rx01_ChargCircuit2_NegContactor_Ctrl_Cmd
	st.b	[%a15] lo:MAIN_MSGbCan01_Rx01_ChargCircuit2_NegContactor_Ctrl_Cmd, %d15
	.loc 1 278 0
	movh.a	%a15, hi:MAIN_MSGbCan01_Rx01_ChargCircuit3_PosContactor_Ctrl_Cmd
	st.b	[%a15] lo:MAIN_MSGbCan01_Rx01_ChargCircuit3_PosContactor_Ctrl_Cmd, %d15
	.loc 1 279 0
	movh.a	%a15, hi:MAIN_MSGbCan01_Rx01_ChargCircuit3_NegContactor_Ctrl_Cmd
	st.b	[%a15] lo:MAIN_MSGbCan01_Rx01_ChargCircuit3_NegContactor_Ctrl_Cmd, %d15
	.loc 1 280 0
	movh.a	%a15, hi:MAIN_MSGbCan01_Rx01_ChargCircuit4_PosContactor_Ctrl_Cmd
	st.b	[%a15] lo:MAIN_MSGbCan01_Rx01_ChargCircuit4_PosContactor_Ctrl_Cmd, %d15
	.loc 1 281 0
	movh.a	%a15, hi:MAIN_MSGbCan01_Rx01_ChargCircuit4_NegContactor_Ctrl_Cmd
	st.b	[%a15] lo:MAIN_MSGbCan01_Rx01_ChargCircuit4_NegContactor_Ctrl_Cmd, %d15
	.loc 1 282 0
	movh.a	%a15, hi:MAIN_MSGu8Can01_Rx01_Heartbeat_Signal
	st.b	[%a15] lo:MAIN_MSGu8Can01_Rx01_Heartbeat_Signal, %d15
	ret
.L13:
	.loc 1 26 0
	movh.a	%a12, hi:MAIN_MSGu8Can01_Rx01_PDUMC1_buf
	lea	%a15, [%a12] lo:MAIN_MSGu8Can01_Rx01_PDUMC1_buf
	mov.aa	%a4, %a15
	mov	%d4, 0
	call	Com_ReceiveSignal
.LVL0:
	.loc 1 28 0
	ld.bu	%d15, [%a12] lo:MAIN_MSGu8Can01_Rx01_PDUMC1_buf
	movh.a	%a2, hi:MAIN_MSGbCan01_Rx01_Power_Enable_Signal
	and	%d2, %d15, 1
	st.b	[%a2] lo:MAIN_MSGbCan01_Rx01_Power_Enable_Signal, %d2
	.loc 1 38 0
	extr.u	%d2, %d15, 1, 1
	.loc 1 45 0
	movh.a	%a2, hi:MAIN_MSGbCan01_Rx01_Key_Signal
	st.b	[%a2] lo:MAIN_MSGbCan01_Rx01_Key_Signal, %d2
	.loc 1 48 0
	extr.u	%d2, %d15, 2, 1
	.loc 1 55 0
	movh.a	%a2, hi:MAIN_MSGbCan01_Rx01_Auxiliary_Contactor_Enable
	.loc 1 58 0
	extr.u	%d15, %d15, 3, 1
	.loc 1 55 0
	st.b	[%a2] lo:MAIN_MSGbCan01_Rx01_Auxiliary_Contactor_Enable, %d2
	.loc 1 65 0
	movh.a	%a2, hi:MAIN_MSGbCan01_Rx01_PTC_Enable_Signal
	st.b	[%a2] lo:MAIN_MSGbCan01_Rx01_PTC_Enable_Signal, %d15
	.loc 1 68 0
	ld.bu	%d15, [%a15] 1
	movh.a	%a2, hi:MAIN_MSGbCan01_Rx01_Upper_Enable_Signal
	and	%d2, %d15, 1
	st.b	[%a2] lo:MAIN_MSGbCan01_Rx01_Upper_Enable_Signal, %d2
	.loc 1 78 0
	extr.u	%d2, %d15, 2, 1
	.loc 1 85 0
	movh.a	%a2, hi:MAIN_MSGbCan01_Rx01_Keyon_Signal_Sts
	st.b	[%a2] lo:MAIN_MSGbCan01_Rx01_Keyon_Signal_Sts, %d2
	.loc 1 88 0
	extr.u	%d2, %d15, 3, 1
	.loc 1 95 0
	movh.a	%a2, hi:MAIN_MSGbCan01_Rx01_Insulationresistance_Ctrl_Cmd
	.loc 1 98 0
	extr.u	%d15, %d15, 4, 1
	.loc 1 95 0
	st.b	[%a2] lo:MAIN_MSGbCan01_Rx01_Insulationresistance_Ctrl_Cmd, %d2
	.loc 1 105 0
	movh.a	%a2, hi:MAIN_MSGbCan01_Rx01_NegContactor_Ctrl_Cmd
	st.b	[%a2] lo:MAIN_MSGbCan01_Rx01_NegContactor_Ctrl_Cmd, %d15
	.loc 1 108 0
	ld.bu	%d15, [%a15] 2
	movh.a	%a2, hi:MAIN_MSGbCan01_Rx01_Cab1_PTC_MOS_Switch_Cmd
	and	%d2, %d15, 1
	st.b	[%a2] lo:MAIN_MSGbCan01_Rx01_Cab1_PTC_MOS_Switch_Cmd, %d2
	.loc 1 118 0
	extr.u	%d2, %d15, 1, 1
	.loc 1 125 0
	movh.a	%a2, hi:MAIN_MSGbCan01_Rx01_Cab2_PTC_MOS_Switch_Cmd
	st.b	[%a2] lo:MAIN_MSGbCan01_Rx01_Cab2_PTC_MOS_Switch_Cmd, %d2
	.loc 1 128 0
	extr.u	%d2, %d15, 2, 1
	.loc 1 135 0
	movh.a	%a2, hi:MAIN_MSGbCan01_Rx01_Batteryheat1_MOS_Switch_Cmd
	st.b	[%a2] lo:MAIN_MSGbCan01_Rx01_Batteryheat1_MOS_Switch_Cmd, %d2
	.loc 1 138 0
	extr.u	%d2, %d15, 3, 1
	.loc 1 145 0
	movh.a	%a2, hi:MAIN_MSGbCan01_Rx01_Batteryheat2_MOS_Switch_Cmd
	st.b	[%a2] lo:MAIN_MSGbCan01_Rx01_Batteryheat2_MOS_Switch_Cmd, %d2
	.loc 1 148 0
	extr.u	%d2, %d15, 4, 1
	.loc 1 155 0
	movh.a	%a2, hi:MAIN_MSGbCan01_Rx01_Batteryheat3_MOS_Switch_Cmd
	.loc 1 158 0
	extr.u	%d15, %d15, 5, 1
	.loc 1 155 0
	st.b	[%a2] lo:MAIN_MSGbCan01_Rx01_Batteryheat3_MOS_Switch_Cmd, %d2
	.loc 1 165 0
	movh.a	%a2, hi:MAIN_MSGbCan01_Rx01_Batteryheat4_MOS_Switch_Cmd
	st.b	[%a2] lo:MAIN_MSGbCan01_Rx01_Batteryheat4_MOS_Switch_Cmd, %d15
	.loc 1 168 0
	ld.bu	%d15, [%a15] 3
	movh.a	%a2, hi:MAIN_MSGbCan01_Rx01_ChargCircuit1_PosContactor_Ctrl_Cmd
	and	%d2, %d15, 1
	st.b	[%a2] lo:MAIN_MSGbCan01_Rx01_ChargCircuit1_PosContactor_Ctrl_Cmd, %d2
	.loc 1 178 0
	extr.u	%d2, %d15, 1, 1
	.loc 1 185 0
	movh.a	%a2, hi:MAIN_MSGbCan01_Rx01_ChargCircuit1_NegContactor_Ctrl_Cmd
	st.b	[%a2] lo:MAIN_MSGbCan01_Rx01_ChargCircuit1_NegContactor_Ctrl_Cmd, %d2
	.loc 1 188 0
	extr.u	%d2, %d15, 2, 1
	.loc 1 195 0
	movh.a	%a2, hi:MAIN_MSGbCan01_Rx01_ChargCircuit2_PosContactor_Ctrl_Cmd
	st.b	[%a2] lo:MAIN_MSGbCan01_Rx01_ChargCircuit2_PosContactor_Ctrl_Cmd, %d2
	.loc 1 198 0
	extr.u	%d2, %d15, 3, 1
	.loc 1 205 0
	movh.a	%a2, hi:MAIN_MSGbCan01_Rx01_ChargCircuit2_NegContactor_Ctrl_Cmd
	st.b	[%a2] lo:MAIN_MSGbCan01_Rx01_ChargCircuit2_NegContactor_Ctrl_Cmd, %d2
	.loc 1 208 0
	extr.u	%d2, %d15, 4, 1
	.loc 1 215 0
	movh.a	%a2, hi:MAIN_MSGbCan01_Rx01_ChargCircuit3_PosContactor_Ctrl_Cmd
	st.b	[%a2] lo:MAIN_MSGbCan01_Rx01_ChargCircuit3_PosContactor_Ctrl_Cmd, %d2
	.loc 1 218 0
	extr.u	%d2, %d15, 5, 1
	.loc 1 225 0
	movh.a	%a2, hi:MAIN_MSGbCan01_Rx01_ChargCircuit3_NegContactor_Ctrl_Cmd
	st.b	[%a2] lo:MAIN_MSGbCan01_Rx01_ChargCircuit3_NegContactor_Ctrl_Cmd, %d2
	.loc 1 228 0
	extr.u	%d2, %d15, 6, 1
	.loc 1 235 0
	movh.a	%a2, hi:MAIN_MSGbCan01_Rx01_ChargCircuit4_PosContactor_Ctrl_Cmd
	.loc 1 239 0
	sh	%d15, -7
	.loc 1 235 0
	st.b	[%a2] lo:MAIN_MSGbCan01_Rx01_ChargCircuit4_PosContactor_Ctrl_Cmd, %d2
	.loc 1 239 0
	movh.a	%a2, hi:MAIN_MSGbCan01_Rx01_ChargCircuit4_NegContactor_Ctrl_Cmd
	st.b	[%a2] lo:MAIN_MSGbCan01_Rx01_ChargCircuit4_NegContactor_Ctrl_Cmd, %d15
	.loc 1 248 0
	ld.bu	%d15, [%a15] 7
	.loc 1 255 0
	movh.a	%a15, hi:MAIN_MSGu8Can01_Rx01_Heartbeat_Signal
	st.b	[%a15] lo:MAIN_MSGu8Can01_Rx01_Heartbeat_Signal, %d15
	.loc 1 253 0
	jnz	%d15, .L14
	ret
.L14:
	ret
.LFE0:
	.size	MAIN_MSGvidCan01_Rx01_PDUMC1_0x18F71E31, .-MAIN_MSGvidCan01_Rx01_PDUMC1_0x18F71E31
	.align 1
	.global	MAIN_MSGvidCan01_Rx02_HSMC1_0x18F02E31
	.type	MAIN_MSGvidCan01_Rx02_HSMC1_0x18F02E31, @function
MAIN_MSGvidCan01_Rx02_HSMC1_0x18F02E31:
.LFB1:
	.loc 1 287 0
	.loc 1 288 0
	movh.a	%a15, hi:BSW_bRxTOutFlag_Can01_Rx02
	ld.bu	%d15, [%a15] lo:BSW_bRxTOutFlag_Can01_Rx02
	jz	%d15, .L16
	.loc 1 288 0 is_stmt 0 discriminator 2
	movh.a	%a15, hi:MAIN_bMSGRxToutBenchOnC
	ld.bu	%d15, [%a15] lo:MAIN_bMSGRxToutBenchOnC
	jz	%d15, .L17
.L16:
	.loc 1 288 0 discriminator 3
	movh.a	%a15, hi:MAIN_bComRxDisableFlgByUds
	ld.bu	%d15, [%a15] lo:MAIN_bComRxDisableFlgByUds
	jz	%d15, .L26
.L17:
	.loc 1 314 0 is_stmt 1
	mov	%d15, 0
	movh.a	%a15, hi:MAIN_MSGu8Can01_Rx02_HV_STEERING_REQUEST
	st.b	[%a15] lo:MAIN_MSGu8Can01_Rx02_HV_STEERING_REQUEST, %d15
	.loc 1 315 0
	movh.a	%a15, hi:MAIN_MSGu8Can01_Rx02_HEARTBEAT
	st.b	[%a15] lo:MAIN_MSGu8Can01_Rx02_HEARTBEAT, %d15
	ret
.L26:
	.loc 1 290 0
	movh.a	%a12, hi:MAIN_MSGu8Can01_Rx02_HSMC1_buf
	lea	%a15, [%a12] lo:MAIN_MSGu8Can01_Rx02_HSMC1_buf
	mov.aa	%a4, %a15
	mov	%d4, 1
	call	Com_ReceiveSignal
.LVL1:
	.loc 1 292 0
	ld.bu	%d15, [%a12] lo:MAIN_MSGu8Can01_Rx02_HSMC1_buf
	.loc 1 293 0
	movh.a	%a2, hi:MAIN_MSGu8Can01_Rx02_HV_STEERING_REQUEST
	and	%d15, %d15, 3
	ne	%d15, %d15, 0
	st.b	[%a2] lo:MAIN_MSGu8Can01_Rx02_HV_STEERING_REQUEST, %d15
	.loc 1 302 0
	ld.bu	%d15, [%a15] 7
	.loc 1 309 0
	movh.a	%a15, hi:MAIN_MSGu8Can01_Rx02_HEARTBEAT
	st.b	[%a15] lo:MAIN_MSGu8Can01_Rx02_HEARTBEAT, %d15
	.loc 1 307 0
	jnz	%d15, .L27
	ret
.L27:
	ret
.LFE1:
	.size	MAIN_MSGvidCan01_Rx02_HSMC1_0x18F02E31, .-MAIN_MSGvidCan01_Rx02_HSMC1_0x18F02E31
	.align 1
	.global	MAIN_MSGvidCan01_Rx03_HSSTC_0x18EF2E31
	.type	MAIN_MSGvidCan01_Rx03_HSSTC_0x18EF2E31, @function
MAIN_MSGvidCan01_Rx03_HSSTC_0x18EF2E31:
.LFB2:
	.loc 1 320 0
.LVL2:
	.loc 1 322 0
	movh.a	%a15, hi:BSW_bRxTOutFlag_Can01_Rx03
	ld.bu	%d15, [%a15] lo:BSW_bRxTOutFlag_Can01_Rx03
	jz	%d15, .L29
	.loc 1 322 0 is_stmt 0 discriminator 2
	movh.a	%a15, hi:MAIN_bMSGRxToutBenchOnC
	ld.bu	%d15, [%a15] lo:MAIN_bMSGRxToutBenchOnC
	jz	%d15, .L30
.L29:
	.loc 1 322 0 discriminator 3
	movh.a	%a15, hi:MAIN_bComRxDisableFlgByUds
	ld.bu	%d15, [%a15] lo:MAIN_bComRxDisableFlgByUds
	jz	%d15, .L48
.L30:
	.loc 1 354 0 is_stmt 1
	mov	%d15, 0
	movh.a	%a15, hi:MAIN_MSGf32Can01_Rx03_Steerpump_Motor_Targetspeed
	st.w	[%a15] lo:MAIN_MSGf32Can01_Rx03_Steerpump_Motor_Targetspeed, %d15
	.loc 1 355 0
	mov	%d15, 0
	movh.a	%a15, hi:MAIN_MSGu8Can01_Rx03_Heartbeat_Signal
	st.b	[%a15] lo:MAIN_MSGu8Can01_Rx03_Heartbeat_Signal, %d15
	ret
.L48:
	.loc 1 324 0
	movh.a	%a12, hi:MAIN_MSGu8Can01_Rx03_HSSTC_buf
	lea	%a15, [%a12] lo:MAIN_MSGu8Can01_Rx03_HSSTC_buf
	mov	%d4, 2
	mov.aa	%a4, %a15
	call	Com_ReceiveSignal
.LVL3:
	.loc 1 327 0
	ld.bu	%d2, [%a12] lo:MAIN_MSGu8Can01_Rx03_HSSTC_buf
	movh.a	%a2, hi:MAIN_MSGu8Can01_Rx03_Steerpump_Motor_TargetspeedRaw
	st.b	[%a2] lo:MAIN_MSGu8Can01_Rx03_Steerpump_Motor_TargetspeedRaw, %d2
	.loc 1 328 0
	utof	%d2, %d2
	movh	%d15, 16800
	mov	%d3, 0
	madd.f	%d2, %d3, %d2, %d15
.LVL4:
	.loc 1 329 0
	movh	%d4, 17724
	addi	%d4, %d4, -32768
	cmp.f	%d15, %d2, %d4
	or.t	%d15, %d15,2, %d15,1
	jnz	%d15, .L49
	.loc 1 333 0
	cmp.f	%d15, %d2, %d3
	or.t	%d15, %d15,0, %d15,1
	.loc 1 335 0
	movh.a	%a2, hi:MAIN_MSGf32Can01_Rx03_Steerpump_Motor_Targetspeed
	.loc 1 333 0
	jnz	%d15, .L50
	.loc 1 339 0
	st.w	[%a2] lo:MAIN_MSGf32Can01_Rx03_Steerpump_Motor_Targetspeed, %d2
.L33:
	.loc 1 342 0
	ld.bu	%d15, [%a15] 7
	.loc 1 349 0
	movh.a	%a15, hi:MAIN_MSGu8Can01_Rx03_Heartbeat_Signal
	st.b	[%a15] lo:MAIN_MSGu8Can01_Rx03_Heartbeat_Signal, %d15
	.loc 1 347 0
	jnz	%d15, .L51
.L36:
	ret
.L49:
	.loc 1 342 0
	ld.bu	%d15, [%a15] 7
	.loc 1 331 0
	movh.a	%a2, hi:MAIN_MSGf32Can01_Rx03_Steerpump_Motor_Targetspeed
	.loc 1 349 0
	movh.a	%a15, hi:MAIN_MSGu8Can01_Rx03_Heartbeat_Signal
	.loc 1 331 0
	st.w	[%a2] lo:MAIN_MSGf32Can01_Rx03_Steerpump_Motor_Targetspeed, %d4
	.loc 1 349 0
	st.b	[%a15] lo:MAIN_MSGu8Can01_Rx03_Heartbeat_Signal, %d15
	.loc 1 347 0
	jz	%d15, .L36
.L51:
	ret
.L50:
	.loc 1 335 0
	st.w	[%a2] lo:MAIN_MSGf32Can01_Rx03_Steerpump_Motor_Targetspeed, %d3
	j	.L33
.LFE2:
	.size	MAIN_MSGvidCan01_Rx03_HSSTC_0x18EF2E31, .-MAIN_MSGvidCan01_Rx03_HSSTC_0x18EF2E31
	.align 1
	.global	MAIN_MSGvidCan01_Rx04_ACUMC1_0x18F53031
	.type	MAIN_MSGvidCan01_Rx04_ACUMC1_0x18F53031, @function
MAIN_MSGvidCan01_Rx04_ACUMC1_0x18F53031:
.LFB3:
	.loc 1 360 0
.LVL5:
	.loc 1 362 0
	movh.a	%a15, hi:BSW_bRxTOutFlag_Can01_Rx04
	ld.bu	%d15, [%a15] lo:BSW_bRxTOutFlag_Can01_Rx04
	jz	%d15, .L53
	.loc 1 362 0 is_stmt 0 discriminator 2
	movh.a	%a15, hi:MAIN_bMSGRxToutBenchOnC
	ld.bu	%d15, [%a15] lo:MAIN_bMSGRxToutBenchOnC
	jz	%d15, .L54
.L53:
	.loc 1 362 0 discriminator 3
	movh.a	%a15, hi:MAIN_bComRxDisableFlgByUds
	ld.bu	%d15, [%a15] lo:MAIN_bComRxDisableFlgByUds
	jz	%d15, .L72
.L54:
	.loc 1 404 0 is_stmt 1
	mov	%d15, 0
	movh.a	%a15, hi:MAIN_MSGbCan01_Rx04_Acu_Inhibit_Cmd
	st.b	[%a15] lo:MAIN_MSGbCan01_Rx04_Acu_Inhibit_Cmd, %d15
	.loc 1 405 0
	mov	%d2, 0
	movh.a	%a15, hi:MAIN_MSGf32Can01_Rx04_Aircompressor_Motor_Targspeed
	st.w	[%a15] lo:MAIN_MSGf32Can01_Rx04_Aircompressor_Motor_Targspeed, %d2
	.loc 1 406 0
	movh.a	%a15, hi:MAIN_MSGu8Can01_Rx04_CtrlMsg_Cycle_Counter
	st.b	[%a15] lo:MAIN_MSGu8Can01_Rx04_CtrlMsg_Cycle_Counter, %d15
	ret
.L72:
	.loc 1 364 0
	movh.a	%a12, hi:MAIN_MSGu8Can01_Rx04_ACUMC1_buf
	lea	%a15, [%a12] lo:MAIN_MSGu8Can01_Rx04_ACUMC1_buf
	mov	%d4, 3
	mov.aa	%a4, %a15
	call	Com_ReceiveSignal
.LVL6:
	.loc 1 366 0
	ld.bu	%d15, [%a12] lo:MAIN_MSGu8Can01_Rx04_ACUMC1_buf
	movh.a	%a2, hi:MAIN_MSGbCan01_Rx04_Acu_Inhibit_Cmd
	and	%d15, %d15, 1
	.loc 1 377 0
	ld.bu	%d2, [%a15] 1
	st.b	[%a2] lo:MAIN_MSGbCan01_Rx04_Acu_Inhibit_Cmd, %d15
	movh.a	%a2, hi:MAIN_MSGu8Can01_Rx04_Aircompressor_Motor_TargspeedRaw
	st.b	[%a2] lo:MAIN_MSGu8Can01_Rx04_Aircompressor_Motor_TargspeedRaw, %d2
	.loc 1 378 0
	utof	%d2, %d2
	movh	%d15, 16800
	mov	%d3, 0
	madd.f	%d2, %d3, %d2, %d15
.LVL7:
	.loc 1 379 0
	movh	%d4, 17724
	addi	%d4, %d4, -32768
	cmp.f	%d15, %d2, %d4
	or.t	%d15, %d15,2, %d15,1
	jnz	%d15, .L73
	.loc 1 383 0
	cmp.f	%d15, %d2, %d3
	or.t	%d15, %d15,0, %d15,1
	.loc 1 385 0
	movh.a	%a2, hi:MAIN_MSGf32Can01_Rx04_Aircompressor_Motor_Targspeed
	.loc 1 383 0
	jnz	%d15, .L74
	.loc 1 389 0
	st.w	[%a2] lo:MAIN_MSGf32Can01_Rx04_Aircompressor_Motor_Targspeed, %d2
.L57:
	.loc 1 392 0
	ld.bu	%d15, [%a15] 7
	.loc 1 399 0
	movh.a	%a15, hi:MAIN_MSGu8Can01_Rx04_CtrlMsg_Cycle_Counter
	st.b	[%a15] lo:MAIN_MSGu8Can01_Rx04_CtrlMsg_Cycle_Counter, %d15
	.loc 1 397 0
	jnz	%d15, .L75
.L60:
	ret
.L73:
	.loc 1 392 0
	ld.bu	%d15, [%a15] 7
	.loc 1 381 0
	movh.a	%a2, hi:MAIN_MSGf32Can01_Rx04_Aircompressor_Motor_Targspeed
	.loc 1 399 0
	movh.a	%a15, hi:MAIN_MSGu8Can01_Rx04_CtrlMsg_Cycle_Counter
	.loc 1 381 0
	st.w	[%a2] lo:MAIN_MSGf32Can01_Rx04_Aircompressor_Motor_Targspeed, %d4
	.loc 1 399 0
	st.b	[%a15] lo:MAIN_MSGu8Can01_Rx04_CtrlMsg_Cycle_Counter, %d15
	.loc 1 397 0
	jz	%d15, .L60
.L75:
	ret
.L74:
	.loc 1 385 0
	st.w	[%a2] lo:MAIN_MSGf32Can01_Rx04_Aircompressor_Motor_Targspeed, %d3
	j	.L57
.LFE3:
	.size	MAIN_MSGvidCan01_Rx04_ACUMC1_0x18F53031, .-MAIN_MSGvidCan01_Rx04_ACUMC1_0x18F53031
	.align 1
	.global	MAIN_MSGvidCan01_Rx05_AIR1_0x18FEAE30
	.type	MAIN_MSGvidCan01_Rx05_AIR1_0x18FEAE30, @function
MAIN_MSGvidCan01_Rx05_AIR1_0x18FEAE30:
.LFB4:
	.loc 1 411 0
.LVL8:
	.loc 1 414 0
	movh.a	%a15, hi:BSW_bRxTOutFlag_Can01_Rx05
	ld.bu	%d15, [%a15] lo:BSW_bRxTOutFlag_Can01_Rx05
	jz	%d15, .L77
	.loc 1 414 0 is_stmt 0 discriminator 2
	movh.a	%a15, hi:MAIN_bMSGRxToutBenchOnC
	ld.bu	%d15, [%a15] lo:MAIN_bMSGRxToutBenchOnC
	jz	%d15, .L78
.L77:
	.loc 1 414 0 discriminator 3
	movh.a	%a15, hi:MAIN_bComRxDisableFlgByUds
	ld.bu	%d15, [%a15] lo:MAIN_bComRxDisableFlgByUds
	jz	%d15, .L103
.L78:
	.loc 1 452 0 is_stmt 1
	mov	%d15, 0
	movh.a	%a15, hi:MAIN_MSGf32Can01_Rx05_TCU_MotorWorkModReq
	st.w	[%a15] lo:MAIN_MSGf32Can01_Rx05_TCU_MotorWorkModReq, %d15
	.loc 1 453 0
	movh.a	%a15, hi:MAIN_MSGf32Can01_Rx05_TCU_MotorTorReq
	st.w	[%a15] lo:MAIN_MSGf32Can01_Rx05_TCU_MotorTorReq, %d15
	ret
.L103:
	.loc 1 416 0
	movh.a	%a15, hi:MAIN_MSGu8Can01_Rx05_AIR1_buf
	lea	%a15, [%a15] lo:MAIN_MSGu8Can01_Rx05_AIR1_buf
	mov	%d4, 4
	mov.aa	%a4, %a15
	call	Com_ReceiveSignal
.LVL9:
	.loc 1 419 0
	ld.bu	%d2, [%a15] 2
	movh.a	%a2, hi:MAIN_MSGu8Can01_Rx05_TCU_MotorWorkModReqRaw
	st.b	[%a2] lo:MAIN_MSGu8Can01_Rx05_TCU_MotorWorkModReqRaw, %d2
	.loc 1 420 0
	utof	%d2, %d2
	movh	%d15, 16640
	mov	%d3, 0
	madd.f	%d2, %d3, %d2, %d15
.LVL10:
	.loc 1 421 0
	movh	%d4, 17658
	cmp.f	%d15, %d2, %d4
	or.t	%d15, %d15,2, %d15,1
	jnz	%d15, .L104
	.loc 1 425 0
	cmp.f	%d15, %d2, %d3
	or.t	%d15, %d15,0, %d15,1
	.loc 1 427 0
	movh.a	%a2, hi:MAIN_MSGf32Can01_Rx05_TCU_MotorWorkModReq
	.loc 1 425 0
	jnz	%d15, .L105
	.loc 1 431 0
	st.w	[%a2] lo:MAIN_MSGf32Can01_Rx05_TCU_MotorWorkModReq, %d2
.L81:
	.loc 1 435 0
	ld.bu	%d2, [%a15] 3
.LVL11:
	movh.a	%a15, hi:MAIN_MSGu8Can01_Rx05_TCU_MotorTorReqRaw
.LVL12:
	st.b	[%a15] lo:MAIN_MSGu8Can01_Rx05_TCU_MotorTorReqRaw, %d2
	.loc 1 436 0
	utof	%d2, %d2
	movh	%d15, 16640
.LVL13:
	mov	%d3, 0
	madd.f	%d2, %d3, %d2, %d15
.LVL14:
	.loc 1 437 0
	movh	%d4, 17658
	cmp.f	%d15, %d2, %d4
.LVL15:
	or.t	%d15, %d15,2, %d15,1
	jnz	%d15, .L106
	.loc 1 441 0
	cmp.f	%d15, %d2, %d3
	or.t	%d15, %d15,0, %d15,1
	.loc 1 443 0
	movh.a	%a15, hi:MAIN_MSGf32Can01_Rx05_TCU_MotorTorReq
	.loc 1 441 0
	jnz	%d15, .L107
	.loc 1 447 0
	st.w	[%a15] lo:MAIN_MSGf32Can01_Rx05_TCU_MotorTorReq, %d2
	ret
.LVL16:
.L104:
	.loc 1 423 0
	movh.a	%a2, hi:MAIN_MSGf32Can01_Rx05_TCU_MotorWorkModReq
	st.w	[%a2] lo:MAIN_MSGf32Can01_Rx05_TCU_MotorWorkModReq, %d4
	j	.L81
.LVL17:
.L106:
	.loc 1 439 0
	movh.a	%a15, hi:MAIN_MSGf32Can01_Rx05_TCU_MotorTorReq
	st.w	[%a15] lo:MAIN_MSGf32Can01_Rx05_TCU_MotorTorReq, %d4
	ret
.L107:
	.loc 1 443 0
	st.w	[%a15] lo:MAIN_MSGf32Can01_Rx05_TCU_MotorTorReq, %d3
	ret
.LVL18:
.L105:
	.loc 1 427 0
	st.w	[%a2] lo:MAIN_MSGf32Can01_Rx05_TCU_MotorWorkModReq, %d3
	j	.L81
.LFE4:
	.size	MAIN_MSGvidCan01_Rx05_AIR1_0x18FEAE30, .-MAIN_MSGvidCan01_Rx05_AIR1_0x18FEAE30
	.align 1
	.global	MAIN_MSGvidCan01_Rx06_AIR1_0x18FEAE32
	.type	MAIN_MSGvidCan01_Rx06_AIR1_0x18FEAE32, @function
MAIN_MSGvidCan01_Rx06_AIR1_0x18FEAE32:
.LFB5:
	.loc 1 458 0
.LVL19:
	.loc 1 461 0
	movh.a	%a15, hi:BSW_bRxTOutFlag_Can01_Rx06
	ld.bu	%d15, [%a15] lo:BSW_bRxTOutFlag_Can01_Rx06
	jz	%d15, .L109
	.loc 1 461 0 is_stmt 0 discriminator 2
	movh.a	%a15, hi:MAIN_bMSGRxToutBenchOnC
	ld.bu	%d15, [%a15] lo:MAIN_bMSGRxToutBenchOnC
	jz	%d15, .L110
.L109:
	.loc 1 461 0 discriminator 3
	movh.a	%a15, hi:MAIN_bComRxDisableFlgByUds
	ld.bu	%d15, [%a15] lo:MAIN_bComRxDisableFlgByUds
	jz	%d15, .L135
.L110:
	.loc 1 499 0 is_stmt 1
	mov	%d15, 0
	movh.a	%a15, hi:MAIN_MSGf32Can01_Rx06_TCU_MotorWorkModReq
	st.w	[%a15] lo:MAIN_MSGf32Can01_Rx06_TCU_MotorWorkModReq, %d15
	.loc 1 500 0
	movh.a	%a15, hi:MAIN_MSGf32Can01_Rx06_TCU_MotorTorReq
	st.w	[%a15] lo:MAIN_MSGf32Can01_Rx06_TCU_MotorTorReq, %d15
	ret
.L135:
	.loc 1 463 0
	movh.a	%a15, hi:MAIN_MSGu8Can01_Rx06_AIR1_buf
	lea	%a15, [%a15] lo:MAIN_MSGu8Can01_Rx06_AIR1_buf
	mov	%d4, 5
	mov.aa	%a4, %a15
	call	Com_ReceiveSignal
.LVL20:
	.loc 1 466 0
	ld.bu	%d2, [%a15] 2
	movh.a	%a2, hi:MAIN_MSGu8Can01_Rx06_TCU_MotorWorkModReqRaw
	st.b	[%a2] lo:MAIN_MSGu8Can01_Rx06_TCU_MotorWorkModReqRaw, %d2
	.loc 1 467 0
	utof	%d2, %d2
	movh	%d15, 16640
	mov	%d3, 0
	madd.f	%d2, %d3, %d2, %d15
.LVL21:
	.loc 1 468 0
	movh	%d4, 17658
	cmp.f	%d15, %d2, %d4
	or.t	%d15, %d15,2, %d15,1
	jnz	%d15, .L136
	.loc 1 472 0
	cmp.f	%d15, %d2, %d3
	or.t	%d15, %d15,0, %d15,1
	.loc 1 474 0
	movh.a	%a2, hi:MAIN_MSGf32Can01_Rx06_TCU_MotorWorkModReq
	.loc 1 472 0
	jnz	%d15, .L137
	.loc 1 478 0
	st.w	[%a2] lo:MAIN_MSGf32Can01_Rx06_TCU_MotorWorkModReq, %d2
.L113:
	.loc 1 482 0
	ld.bu	%d2, [%a15] 3
.LVL22:
	movh.a	%a15, hi:MAIN_MSGu8Can01_Rx06_TCU_MotorTorReqRaw
.LVL23:
	st.b	[%a15] lo:MAIN_MSGu8Can01_Rx06_TCU_MotorTorReqRaw, %d2
	.loc 1 483 0
	utof	%d2, %d2
	movh	%d15, 16640
.LVL24:
	mov	%d3, 0
	madd.f	%d2, %d3, %d2, %d15
.LVL25:
	.loc 1 484 0
	movh	%d4, 17658
	cmp.f	%d15, %d2, %d4
.LVL26:
	or.t	%d15, %d15,2, %d15,1
	jnz	%d15, .L138
	.loc 1 488 0
	cmp.f	%d15, %d2, %d3
	or.t	%d15, %d15,0, %d15,1
	.loc 1 490 0
	movh.a	%a15, hi:MAIN_MSGf32Can01_Rx06_TCU_MotorTorReq
	.loc 1 488 0
	jnz	%d15, .L139
	.loc 1 494 0
	st.w	[%a15] lo:MAIN_MSGf32Can01_Rx06_TCU_MotorTorReq, %d2
	ret
.LVL27:
.L136:
	.loc 1 470 0
	movh.a	%a2, hi:MAIN_MSGf32Can01_Rx06_TCU_MotorWorkModReq
	st.w	[%a2] lo:MAIN_MSGf32Can01_Rx06_TCU_MotorWorkModReq, %d4
	j	.L113
.LVL28:
.L138:
	.loc 1 486 0
	movh.a	%a15, hi:MAIN_MSGf32Can01_Rx06_TCU_MotorTorReq
	st.w	[%a15] lo:MAIN_MSGf32Can01_Rx06_TCU_MotorTorReq, %d4
	ret
.L139:
	.loc 1 490 0
	st.w	[%a15] lo:MAIN_MSGf32Can01_Rx06_TCU_MotorTorReq, %d3
	ret
.LVL29:
.L137:
	.loc 1 474 0
	st.w	[%a2] lo:MAIN_MSGf32Can01_Rx06_TCU_MotorWorkModReq, %d3
	j	.L113
.LFE5:
	.size	MAIN_MSGvidCan01_Rx06_AIR1_0x18FEAE32, .-MAIN_MSGvidCan01_Rx06_AIR1_0x18FEAE32
	.align 1
	.global	MAIN_MSGvidCan01_Tx01_PDUST1_0x18F7011E
	.type	MAIN_MSGvidCan01_Tx01_PDUST1_0x18F7011E, @function
MAIN_MSGvidCan01_Tx01_PDUST1_0x18F7011E:
.LFB6:
	.loc 1 505 0
.LVL30:
	.loc 1 518 0
	movh.a	%a15, hi:MAIN_MSGf32Can01_Tx01_Low_input_voltage
	ld.w	%d2, [%a15] lo:MAIN_MSGf32Can01_Tx01_Low_input_voltage
	movh	%d15, 17100
	cmp.f	%d15, %d2, %d15
	or.t	%d15, %d15,2, %d15,1
	mov	%d3, 255
	jnz	%d15, .L141
	.loc 1 522 0
	mov	%d15, 0
	cmp.f	%d15, %d2, %d15
	or.t	%d15, %d15,0, %d15,1
	mov	%d3, 0
	jnz	%d15, .L141
.LVL31:
	movh	%d3, 16077
	addi	%d3, %d3, -13107
	div.f	%d2, %d2, %d3
.LVL32:
	ftouz	%d2, %d2
	and	%d3, %d2, 255
.LVL33:
.L141:
	.loc 1 531 0
	movh.a	%a15, hi:MAIN_MSGu8Can01_Tx01_Low_input_voltageRaw
	st.b	[%a15] lo:MAIN_MSGu8Can01_Tx01_Low_input_voltageRaw, %d3
	.loc 1 537 0
	movh.a	%a15, hi:MAIN_MSGf32Can01_Tx01_Power_battery_pack_voltage
	ld.w	%d2, [%a15] lo:MAIN_MSGf32Can01_Tx01_Power_battery_pack_voltage
	movh	%d15, 17869
	addi	%d15, %d15, -13312
	.loc 1 533 0
	movh.a	%a4, hi:MAIN_MSGu8Can01_Tx01_PDUST1_buf
	.loc 1 537 0
	cmp.f	%d15, %d2, %d15
	.loc 1 533 0
	st.b	[%a4] lo:MAIN_MSGu8Can01_Tx01_PDUST1_buf, %d3
.LVL34:
	.loc 1 537 0
	or.t	%d15, %d15,2, %d15,1
	mov	%d5, 255
	mov	%d4, 255
	mov.u	%d3, 65535
	jnz	%d15, .L142
	.loc 1 541 0
	mov	%d15, 0
	cmp.f	%d15, %d2, %d15
	or.t	%d15, %d15,0, %d15,1
	mov	%e4, 0
	mov	%d3, 0
	jnz	%d15, .L142
.LVL35:
	movh	%d3, 15821
	addi	%d3, %d3, -13107
	div.f	%d3, %d2, %d3
	ftouz	%d3, %d3
	extr.u	%d3, %d3, 0, 16
	and	%d5, %d3, 255
	sh	%d4, %d3, -8
.LVL36:
.L142:
	.loc 1 550 0
	movh.a	%a15, hi:MAIN_MSGu16Can01_Tx01_Power_battery_pack_voltageRaw
	st.h	[%a15] lo:MAIN_MSGu16Can01_Tx01_Power_battery_pack_voltageRaw, %d3
	.loc 1 557 0
	movh.a	%a15, hi:MAIN_MSGf32Can01_Tx01_Main_pos_contactor_out_voltage
	ld.w	%d2, [%a15] lo:MAIN_MSGf32Can01_Tx01_Main_pos_contactor_out_voltage
	movh	%d15, 17869
	addi	%d15, %d15, -13312
	.loc 1 552 0
	lea	%a4, [%a4] lo:MAIN_MSGu8Can01_Tx01_PDUST1_buf
	.loc 1 557 0
	cmp.f	%d15, %d2, %d15
	.loc 1 552 0
	st.b	[%a4] 1, %d5
	.loc 1 553 0
	st.b	[%a4] 2, %d4
.LVL37:
	.loc 1 557 0
	or.t	%d15, %d15,2, %d15,1
	mov	%d5, 255
	mov	%d4, 255
	mov.u	%d3, 65535
	jnz	%d15, .L143
	.loc 1 561 0
	mov	%d15, 0
	cmp.f	%d15, %d2, %d15
	or.t	%d15, %d15,0, %d15,1
	mov	%e4, 0
	mov	%d3, 0
	jnz	%d15, .L143
.LVL38:
	movh	%d3, 15821
	addi	%d3, %d3, -13107
	div.f	%d3, %d2, %d3
	ftouz	%d3, %d3
	extr.u	%d3, %d3, 0, 16
	and	%d5, %d3, 255
	sh	%d4, %d3, -8
.LVL39:
.L143:
	.loc 1 570 0
	movh.a	%a15, hi:MAIN_MSGu16Can01_Tx01_Main_pos_contactor_out_voltageRaw
	st.h	[%a15] lo:MAIN_MSGu16Can01_Tx01_Main_pos_contactor_out_voltageRaw, %d3
	.loc 1 577 0
	movh.a	%a15, hi:MAIN_MSGf32Can01_Tx01_Precharg_resistor_temp
	ld.w	%d2, [%a15] lo:MAIN_MSGf32Can01_Tx01_Precharg_resistor_temp
	movh	%d15, 17224
	cmp.f	%d15, %d2, %d15
	.loc 1 572 0
	st.b	[%a4] 3, %d5
	.loc 1 573 0
	st.b	[%a4] 4, %d4
.LVL40:
	.loc 1 577 0
	or.t	%d15, %d15,2, %d15,1
	mov	%d3, 220
	jnz	%d15, .L144
	.loc 1 581 0
	movh	%d15, 49568
	cmp.f	%d15, %d2, %d15
	or.t	%d15, %d15,0, %d15,1
	mov	%d3, 0
	jz	%d15, .L156
.LVL41:
.L144:
	.loc 1 590 0
	movh.a	%a15, hi:MAIN_MSGu8Can01_Tx01_Precharg_resistor_tempRaw
	st.b	[%a15] lo:MAIN_MSGu8Can01_Tx01_Precharg_resistor_tempRaw, %d3
	.loc 1 596 0
	movh.a	%a15, hi:MAIN_MSGf32Can01_Tx01_Precharg_time_consumption
	ld.w	%d2, [%a15] lo:MAIN_MSGf32Can01_Tx01_Precharg_time_consumption
	movh	%d15, 16844
	cmp.f	%d15, %d2, %d15
	.loc 1 592 0
	st.b	[%a4] 5, %d3
.LVL42:
	.loc 1 596 0
	or.t	%d15, %d15,2, %d15,1
	mov	%d3, 255
	jnz	%d15, .L145
	.loc 1 600 0
	mov	%d15, 0
	cmp.f	%d15, %d2, %d15
	or.t	%d15, %d15,0, %d15,1
	mov	%d3, 0
	jnz	%d15, .L145
.LVL43:
	movh	%d3, 15821
	addi	%d3, %d3, -13107
	div.f	%d2, %d2, %d3
.LVL44:
	ftouz	%d2, %d2
	and	%d3, %d2, 255
.LVL45:
.L145:
	.loc 1 609 0
	movh.a	%a15, hi:MAIN_MSGu8Can01_Tx01_Precharg_time_consumptionRaw
	st.b	[%a15] lo:MAIN_MSGu8Can01_Tx01_Precharg_time_consumptionRaw, %d3
	.loc 1 613 0
	movh.a	%a15, hi:MAIN_MSGbCan01_Tx01_Enable_signal
	ld.bu	%d7, [%a15] lo:MAIN_MSGbCan01_Tx01_Enable_signal
	.loc 1 611 0
	st.b	[%a4] 6, %d3
	.loc 1 613 0
	ne	%d7, %d7, 0
	st.b	[%a15] lo:MAIN_MSGbCan01_Tx01_Enable_signal, %d7
	.loc 1 624 0
	movh.a	%a15, hi:MAIN_MSGbCan01_Tx01_Key_signal
	ld.bu	%d6, [%a15] lo:MAIN_MSGbCan01_Tx01_Key_signal
	.loc 1 630 0
	ne	%d6, %d6, 0
	st.b	[%a15] lo:MAIN_MSGbCan01_Tx01_Key_signal, %d6
	.loc 1 635 0
	movh.a	%a15, hi:MAIN_MSGbCan01_Tx01_Precharge_contactor_on
	ld.bu	%d5, [%a15] lo:MAIN_MSGbCan01_Tx01_Precharge_contactor_on
	.loc 1 633 0
	sh	%d6, 1
	.loc 1 641 0
	ne	%d5, %d5, 0
	st.b	[%a15] lo:MAIN_MSGbCan01_Tx01_Precharge_contactor_on, %d5
	.loc 1 646 0
	movh.a	%a15, hi:MAIN_MSGbCan01_Tx01_Positive_contactor_on
	ld.bu	%d4, [%a15] lo:MAIN_MSGbCan01_Tx01_Positive_contactor_on
	.loc 1 644 0
	sh	%d5, 2
	.loc 1 652 0
	ne	%d4, %d4, 0
	st.b	[%a15] lo:MAIN_MSGbCan01_Tx01_Positive_contactor_on, %d4
	.loc 1 657 0
	movh.a	%a15, hi:MAIN_MSGbCan01_Tx01_Voltage_diff_of_positive_contactor
	ld.bu	%d3, [%a15] lo:MAIN_MSGbCan01_Tx01_Voltage_diff_of_positive_contactor
	.loc 1 655 0
	sh	%d4, 3
	.loc 1 663 0
	ne	%d3, %d3, 0
	st.b	[%a15] lo:MAIN_MSGbCan01_Tx01_Voltage_diff_of_positive_contactor, %d3
	.loc 1 668 0
	movh.a	%a15, hi:MAIN_MSGbCan01_Tx01_Positive_contactor_status
	ld.bu	%d2, [%a15] lo:MAIN_MSGbCan01_Tx01_Positive_contactor_status
	.loc 1 666 0
	sh	%d3, 4
	.loc 1 674 0
	ne	%d2, %d2, 0
	st.b	[%a15] lo:MAIN_MSGbCan01_Tx01_Positive_contactor_status, %d2
	.loc 1 679 0
	movh.a	%a15, hi:MAIN_MSGbCan01_Tx01_Poweron_selftest_ok_signal
	ld.bu	%d15, [%a15] lo:MAIN_MSGbCan01_Tx01_Poweron_selftest_ok_signal
	.loc 1 677 0
	sh	%d2, 5
	.loc 1 685 0
	ne	%d15, %d15, 0
	st.b	[%a15] lo:MAIN_MSGbCan01_Tx01_Poweron_selftest_ok_signal, %d15
	.loc 1 690 0
	movh.a	%a15, hi:MAIN_MSGbCan01_Tx01_Highvoltage_of_circuit_positive_contactor
	ld.bu	%d0, [%a15] lo:MAIN_MSGbCan01_Tx01_Highvoltage_of_circuit_positive_contactor
	.loc 1 688 0
	sh	%d15, 6
	.loc 1 692 0
	ne	%d0, %d0, 0
	st.b	[%a15] lo:MAIN_MSGbCan01_Tx01_Highvoltage_of_circuit_positive_contactor, %d0
	.loc 1 699 0
	sh	%d0, 7
	or	%d7, %d0
	or	%d6, %d7
	or	%d5, %d6
	or	%d4, %d5
	or	%d3, %d4
	or	%d2, %d3
	or	%d15, %d2
	.loc 1 701 0
	mov	%d4, 20
	.loc 1 699 0
	st.b	[%a4] 7, %d15
	.loc 1 701 0
	j	Com_SendSignal
.LVL46:
.L156:
	movh	%d3, 16800
	add.f	%d2, %d2, %d3
.LVL47:
	ftouz	%d2, %d2
	and	%d3, %d2, 255
	j	.L144
.LFE6:
	.size	MAIN_MSGvidCan01_Tx01_PDUST1_0x18F7011E, .-MAIN_MSGvidCan01_Tx01_PDUST1_0x18F7011E
	.align 1
	.global	MAIN_MSGvidCan01_Tx02_PDUST2_0x18F7021E
	.type	MAIN_MSGvidCan01_Tx02_PDUST2_0x18F7021E, @function
MAIN_MSGvidCan01_Tx02_PDUST2_0x18F7021E:
.LFB7:
	.loc 1 705 0
	.loc 1 716 0
	movh.a	%a2, hi:MAIN_MSGu8Can01_Tx02_Stuck_Status_Feedback
	.loc 1 707 0
	movh.a	%a15, hi:MAIN_MSGu8Can01_Tx02_PDUST2_buf
	mov	%d15, 0
	.loc 1 716 0
	ld.bu	%d2, [%a2] lo:MAIN_MSGu8Can01_Tx02_Stuck_Status_Feedback
	.loc 1 707 0
	st.b	[%a15] lo:MAIN_MSGu8Can01_Tx02_PDUST2_buf, %d15
	lea	%a4, [%a15] lo:MAIN_MSGu8Can01_Tx02_PDUST2_buf
	.loc 1 716 0
	jlt.u	%d2, 3, .L158
	.loc 1 718 0
	mov	%d15, 3
	st.b	[%a2] lo:MAIN_MSGu8Can01_Tx02_Stuck_Status_Feedback, %d15
	mov	%d2, 3
.L159:
	.loc 1 727 0
	movh.a	%a2, hi:MAIN_MSGu8Can01_Tx02_1stStage_PTC_MOS_Switch_Command
	ld.bu	%d15, [%a2] lo:MAIN_MSGu8Can01_Tx02_1stStage_PTC_MOS_Switch_Command
	.loc 1 725 0
	st.b	[%a15] lo:MAIN_MSGu8Can01_Tx02_PDUST2_buf, %d2
	.loc 1 727 0
	jlt.u	%d15, 3, .L161
	.loc 1 729 0
	mov	%d15, 3
	st.b	[%a2] lo:MAIN_MSGu8Can01_Tx02_1stStage_PTC_MOS_Switch_Command, %d15
	mov	%d15, 48
.L162:
	.loc 1 738 0
	movh.a	%a2, hi:MAIN_MSGu8Can01_Tx02_2stStage_PTC_MOS_Switch_Command
	.loc 1 736 0
	or	%d15, %d2
	.loc 1 738 0
	ld.bu	%d2, [%a2] lo:MAIN_MSGu8Can01_Tx02_2stStage_PTC_MOS_Switch_Command
	.loc 1 736 0
	st.b	[%a15] lo:MAIN_MSGu8Can01_Tx02_PDUST2_buf, %d15
	.loc 1 738 0
	jlt.u	%d2, 3, .L164
	.loc 1 740 0
	mov	%d2, 3
	st.b	[%a2] lo:MAIN_MSGu8Can01_Tx02_2stStage_PTC_MOS_Switch_Command, %d2
	mov	%d2, 192
.L165:
	.loc 1 747 0
	or	%d2, %d15
	st.b	[%a15] lo:MAIN_MSGu8Can01_Tx02_PDUST2_buf, %d2
	.loc 1 749 0
	movh.a	%a15, hi:MAIN_MSGbCan01_Tx02_PTC_Contactor_Status
	ld.bu	%d4, [%a15] lo:MAIN_MSGbCan01_Tx02_PTC_Contactor_Status
	.loc 1 755 0
	ne	%d4, %d4, 0
	st.b	[%a15] lo:MAIN_MSGbCan01_Tx02_PTC_Contactor_Status, %d4
	.loc 1 760 0
	movh.a	%a15, hi:MAIN_MSGbCan01_Tx02_UpperCircuit_Contactor_On
	ld.bu	%d3, [%a15] lo:MAIN_MSGbCan01_Tx02_UpperCircuit_Contactor_On
	.loc 1 758 0
	sh	%d4, 3
	.loc 1 766 0
	ne	%d3, %d3, 0
	st.b	[%a15] lo:MAIN_MSGbCan01_Tx02_UpperCircuit_Contactor_On, %d3
	.loc 1 771 0
	movh.a	%a15, hi:MAIN_MSGbCan01_Tx02_UpperCircuit_Precharge_Contactor_On
	ld.bu	%d15, [%a15] lo:MAIN_MSGbCan01_Tx02_UpperCircuit_Precharge_Contactor_On
	.loc 1 769 0
	sh	%d3, 5
	.loc 1 777 0
	ne	%d15, %d15, 0
	st.b	[%a15] lo:MAIN_MSGbCan01_Tx02_UpperCircuit_Precharge_Contactor_On, %d15
	.loc 1 782 0
	movh.a	%a15, hi:MAIN_MSGbCan01_Tx02_UpperCircuit_Contactor_Status
	ld.bu	%d2, [%a15] lo:MAIN_MSGbCan01_Tx02_UpperCircuit_Contactor_Status
	.loc 1 769 0
	or	%d3, %d4
	.loc 1 784 0
	ne	%d2, %d2, 0
	st.b	[%a15] lo:MAIN_MSGbCan01_Tx02_UpperCircuit_Contactor_Status, %d2
	.loc 1 791 0
	sh	%d2, 7
	or	%d2, %d3
	.loc 1 780 0
	sh	%d15, 6
	.loc 1 791 0
	or	%d15, %d2
	.loc 1 793 0
	movh.a	%a15, hi:MAIN_MSGu8Can01_Tx02_Internal_Trouble_Code
	.loc 1 791 0
	st.b	[%a4] 1, %d15
	.loc 1 793 0
	ld.bu	%d15, [%a15] lo:MAIN_MSGu8Can01_Tx02_Internal_Trouble_Code
	.loc 1 797 0
	jnz	%d15, .L180
	.loc 1 799 0
	st.b	[%a15] lo:MAIN_MSGu8Can01_Tx02_Internal_Trouble_Code, %d15
.L180:
	.loc 1 806 0
	movh.a	%a15, hi:MAIN_MSGf32Can01_Tx02_Software_Version
	.loc 1 802 0
	st.b	[%a4] 2, %d15
.LVL48:
	.loc 1 806 0
	ld.w	%d2, [%a15] lo:MAIN_MSGf32Can01_Tx02_Software_Version
	movh	%d15, 16419
	addi	%d15, %d15, -28836
	cmp.f	%d15, %d2, %d15
	or.t	%d15, %d15,2, %d15,1
	mov	%d3, 254
	jnz	%d15, .L167
	.loc 1 810 0
	mov	%d15, 0
	cmp.f	%d15, %d2, %d15
	or.t	%d15, %d15,0, %d15,1
	mov	%d3, 0
	jnz	%d15, .L167
.LVL49:
	movh	%d3, 15396
	addi	%d3, %d3, -10486
	div.f	%d2, %d2, %d3
.LVL50:
	ftouz	%d2, %d2
	and	%d3, %d2, 255
.LVL51:
.L167:
	.loc 1 819 0
	movh.a	%a15, hi:MAIN_MSGu8Can01_Tx02_Software_VersionRaw
	st.b	[%a15] lo:MAIN_MSGu8Can01_Tx02_Software_VersionRaw, %d3
	.loc 1 825 0
	movh.a	%a15, hi:MAIN_MSGf32Can01_Tx02_Outputvoltage_of_UpperCircuit_Contactor
	ld.w	%d2, [%a15] lo:MAIN_MSGf32Can01_Tx02_Outputvoltage_of_UpperCircuit_Contactor
	movh	%d15, 17869
	addi	%d15, %d15, -13312
	cmp.f	%d15, %d2, %d15
	.loc 1 821 0
	st.b	[%a4] 3, %d3
.LVL52:
	.loc 1 825 0
	or.t	%d15, %d15,2, %d15,1
	mov	%d5, 255
	mov	%d4, 255
	mov.u	%d3, 65535
	jnz	%d15, .L168
	.loc 1 829 0
	mov	%d15, 0
	cmp.f	%d15, %d2, %d15
	or.t	%d15, %d15,0, %d15,1
	mov	%e4, 0
	mov	%d3, 0
	jnz	%d15, .L168
.LVL53:
	movh	%d3, 15821
	addi	%d3, %d3, -13107
	div.f	%d3, %d2, %d3
	ftouz	%d3, %d3
	extr.u	%d3, %d3, 0, 16
	and	%d5, %d3, 255
	sh	%d4, %d3, -8
.LVL54:
.L168:
	.loc 1 838 0
	movh.a	%a15, hi:MAIN_MSGu16Can01_Tx02_Outputvoltage_of_UpperCircuit_ContactorRaw
	st.h	[%a15] lo:MAIN_MSGu16Can01_Tx02_Outputvoltage_of_UpperCircuit_ContactorRaw, %d3
	.loc 1 843 0
	movh.a	%a15, hi:MAIN_MSGu8Can01_Tx02_Heartbeat_Signal
	ld.bu	%d15, [%a15] lo:MAIN_MSGu8Can01_Tx02_Heartbeat_Signal
	.loc 1 840 0
	st.b	[%a4] 4, %d5
	.loc 1 841 0
	st.b	[%a4] 5, %d4
	mov	%d2, 1
	.loc 1 847 0
	jz	%d15, .L169
	add	%d2, %d15, 1
	and	%d2, %d2, 255
.L169:
	.loc 1 854 0
	st.b	[%a15] lo:MAIN_MSGu8Can01_Tx02_Heartbeat_Signal, %d2
	.loc 1 860 0
	movh.a	%a15, hi:MAIN_MSGbCan01_Tx02_AuxiliaryContactor_Status
	ld.bu	%d2, [%a15] lo:MAIN_MSGbCan01_Tx02_AuxiliaryContactor_Status
	.loc 1 852 0
	st.b	[%a4] 6, %d15
	.loc 1 860 0
	ne	%d2, %d2, 0
	st.b	[%a15] lo:MAIN_MSGbCan01_Tx02_AuxiliaryContactor_Status, %d2
	.loc 1 871 0
	movh.a	%a15, hi:MAIN_MSGu8Can01_Tx02_AuxiliaryContactor_On
	ld.bu	%d15, [%a15] lo:MAIN_MSGu8Can01_Tx02_AuxiliaryContactor_On
	jlt.u	%d15, 3, .L193
	.loc 1 873 0
	mov	%d15, 3
	st.b	[%a15] lo:MAIN_MSGu8Can01_Tx02_AuxiliaryContactor_On, %d15
	mov	%d15, 6
.L171:
	.loc 1 882 0
	movh.a	%a15, hi:MAIN_MSGu8Can01_Tx02_PTCContactor_On
	.loc 1 880 0
	or	%d15, %d2
	.loc 1 882 0
	ld.bu	%d2, [%a15] lo:MAIN_MSGu8Can01_Tx02_PTCContactor_On
	jlt.u	%d2, 3, .L173
	.loc 1 884 0
	mov	%d2, 3
	st.b	[%a15] lo:MAIN_MSGu8Can01_Tx02_PTCContactor_On, %d2
	mov	%d2, 24
.L174:
	.loc 1 891 0
	or	%d15, %d2
	.loc 1 893 0
	movh.a	%a15, hi:MAIN_MSGu8Can01_Tx02_PTCContactor2_On
	.loc 1 891 0
	and	%d2, %d15, 255
	.loc 1 893 0
	ld.bu	%d15, [%a15] lo:MAIN_MSGu8Can01_Tx02_PTCContactor2_On
	jge.u	%d15, 3, .L194
.L176:
	.loc 1 897 0
	jnz	%d15, .L195
	.loc 1 899 0
	st.b	[%a15] lo:MAIN_MSGu8Can01_Tx02_PTCContactor2_On, %d15
	.loc 1 904 0
	mov	%d4, 21
	.loc 1 902 0
	or	%d15, %d2
	st.b	[%a4] 7, %d15
	.loc 1 904 0
	j	Com_SendSignal
.LVL55:
.L164:
	.loc 1 742 0
	jnz	%d2, .L166
	.loc 1 744 0
	st.b	[%a2] lo:MAIN_MSGu8Can01_Tx02_2stStage_PTC_MOS_Switch_Command, %d2
	j	.L165
.L173:
	.loc 1 886 0
	jnz	%d2, .L196
	.loc 1 888 0
	st.b	[%a15] lo:MAIN_MSGu8Can01_Tx02_PTCContactor_On, %d2
	.loc 1 891 0
	or	%d15, %d2
	.loc 1 893 0
	movh.a	%a15, hi:MAIN_MSGu8Can01_Tx02_PTCContactor2_On
	.loc 1 891 0
	and	%d2, %d15, 255
	.loc 1 893 0
	ld.bu	%d15, [%a15] lo:MAIN_MSGu8Can01_Tx02_PTCContactor2_On
	jlt.u	%d15, 3, .L176
.L194:
	.loc 1 895 0
	mov	%d15, 3
	st.b	[%a15] lo:MAIN_MSGu8Can01_Tx02_PTCContactor2_On, %d15
	mov	%d15, 96
	.loc 1 902 0
	or	%d15, %d2
	.loc 1 904 0
	mov	%d4, 21
	.loc 1 902 0
	st.b	[%a4] 7, %d15
	.loc 1 904 0
	j	Com_SendSignal
.LVL56:
.L193:
	.loc 1 875 0
	jnz	%d15, .L197
	.loc 1 877 0
	st.b	[%a15] lo:MAIN_MSGu8Can01_Tx02_AuxiliaryContactor_On, %d15
	j	.L171
.L161:
	.loc 1 731 0
	jnz	%d15, .L198
	.loc 1 733 0
	st.b	[%a2] lo:MAIN_MSGu8Can01_Tx02_1stStage_PTC_MOS_Switch_Command, %d15
	j	.L162
.L158:
	.loc 1 720 0
	jnz	%d2, .L159
	.loc 1 722 0
	st.b	[%a2] lo:MAIN_MSGu8Can01_Tx02_Stuck_Status_Feedback, %d2
	j	.L159
.L198:
	sh	%d15, 4
	and	%d15, %d15, 48
	j	.L162
.L197:
	sh	%d15, 1
	and	%d15, %d15, 6
	j	.L171
.L196:
	sh	%d2, 3
	and	%d2, %d2, 24
	j	.L174
.L166:
	sh	%d2, 6
	and	%d2, %d2, 255
	j	.L165
.L195:
	sh	%d15, 5
	and	%d15, %d15, 96
	.loc 1 902 0
	or	%d15, %d2
	.loc 1 904 0
	mov	%d4, 21
	.loc 1 902 0
	st.b	[%a4] 7, %d15
	.loc 1 904 0
	j	Com_SendSignal
.LVL57:
.LFE7:
	.size	MAIN_MSGvidCan01_Tx02_PDUST2_0x18F7021E, .-MAIN_MSGvidCan01_Tx02_PDUST2_0x18F7021E
	.align 1
	.global	MAIN_MSGvidCan01_Tx03_PDUST3_0x18F7031E
	.type	MAIN_MSGvidCan01_Tx03_PDUST3_0x18F7031E, @function
MAIN_MSGvidCan01_Tx03_PDUST3_0x18F7031E:
.LFB8:
	.loc 1 908 0
	.loc 1 910 0
	movh.a	%a15, hi:MAIN_MSGu8Can01_Tx03_PDUST3_buf
	.loc 1 919 0
	movh.a	%a2, hi:MAIN_MSGu8Can01_Tx03_Insulation_Resistance_Sts
	.loc 1 910 0
	mov	%d15, 0
	lea	%a4, [%a15] lo:MAIN_MSGu8Can01_Tx03_PDUST3_buf
	.loc 1 919 0
	ld.bu	%d2, [%a2] lo:MAIN_MSGu8Can01_Tx03_Insulation_Resistance_Sts
	.loc 1 910 0
	st.b	[%a15] lo:MAIN_MSGu8Can01_Tx03_PDUST3_buf, %d15
	.loc 1 917 0
	st.b	[%a4] 7, %d15
	.loc 1 919 0
	jlt.u	%d2, 3, .L200
	.loc 1 921 0
	mov	%d15, 3
	st.b	[%a2] lo:MAIN_MSGu8Can01_Tx03_Insulation_Resistance_Sts, %d15
	mov	%d2, 3
.L201:
	.loc 1 930 0
	movh.a	%a2, hi:MAIN_MSGu8Can01_Tx03_Negative_Contactor_Sts
	ld.bu	%d15, [%a2] lo:MAIN_MSGu8Can01_Tx03_Negative_Contactor_Sts
	.loc 1 928 0
	st.b	[%a15] lo:MAIN_MSGu8Can01_Tx03_PDUST3_buf, %d2
	.loc 1 930 0
	jlt.u	%d15, 3, .L203
.L257:
	.loc 1 932 0
	mov	%d15, 3
	st.b	[%a2] lo:MAIN_MSGu8Can01_Tx03_Negative_Contactor_Sts, %d15
	mov	%d15, 12
.L204:
	.loc 1 941 0
	movh.a	%a2, hi:MAIN_MSGu8Can01_Tx03_Number_of_Positive_Contactors
	.loc 1 939 0
	or	%d2, %d15
	.loc 1 941 0
	ld.bu	%d15, [%a2] lo:MAIN_MSGu8Can01_Tx03_Number_of_Positive_Contactors
	.loc 1 939 0
	st.b	[%a15] lo:MAIN_MSGu8Can01_Tx03_PDUST3_buf, %d2
	.loc 1 941 0
	jlt.u	%d15, 7, .L206
.L259:
	.loc 1 943 0
	mov	%d15, 7
	st.b	[%a2] lo:MAIN_MSGu8Can01_Tx03_Number_of_Positive_Contactors, %d15
	mov	%d15, 112
.L207:
	.loc 1 950 0
	or	%d15, %d2
	st.b	[%a15] lo:MAIN_MSGu8Can01_Tx03_PDUST3_buf, %d15
	.loc 1 952 0
	movh.a	%a15, hi:MAIN_MSGu8Can01_Tx03_Positive_Contactor1_Sts
	ld.bu	%d2, [%a15] lo:MAIN_MSGu8Can01_Tx03_Positive_Contactor1_Sts
	jlt.u	%d2, 3, .L209
.L261:
	.loc 1 954 0
	mov	%d15, 3
	st.b	[%a15] lo:MAIN_MSGu8Can01_Tx03_Positive_Contactor1_Sts, %d15
	mov	%d2, 3
.L210:
	.loc 1 963 0
	movh.a	%a15, hi:MAIN_MSGu8Can01_Tx03_Positive_Contactor2_Sts
	ld.bu	%d15, [%a15] lo:MAIN_MSGu8Can01_Tx03_Positive_Contactor2_Sts
	jlt.u	%d15, 3, .L212
.L262:
	.loc 1 965 0
	mov	%d15, 3
	st.b	[%a15] lo:MAIN_MSGu8Can01_Tx03_Positive_Contactor2_Sts, %d15
	mov	%d15, 12
.L213:
	.loc 1 974 0
	movh.a	%a15, hi:MAIN_MSGu8Can01_Tx03_Positive_Contactor3_Sts
	.loc 1 972 0
	or	%d2, %d15
	.loc 1 974 0
	ld.bu	%d15, [%a15] lo:MAIN_MSGu8Can01_Tx03_Positive_Contactor3_Sts
	jlt.u	%d15, 3, .L215
.L264:
	.loc 1 976 0
	mov	%d15, 3
	st.b	[%a15] lo:MAIN_MSGu8Can01_Tx03_Positive_Contactor3_Sts, %d15
	mov	%d15, 48
.L216:
	.loc 1 983 0
	or	%d2, %d15
	.loc 1 985 0
	movh.a	%a15, hi:MAIN_MSGu8Can01_Tx03_Positive_Contactor4_Sts
	.loc 1 983 0
	and	%d15, %d2, 255
	.loc 1 985 0
	ld.bu	%d2, [%a15] lo:MAIN_MSGu8Can01_Tx03_Positive_Contactor4_Sts
	jlt.u	%d2, 3, .L218
.L266:
	.loc 1 987 0
	mov	%d2, 3
	st.b	[%a15] lo:MAIN_MSGu8Can01_Tx03_Positive_Contactor4_Sts, %d2
	mov	%d2, 192
.L219:
	.loc 1 996 0
	movh.a	%a15, hi:MAIN_MSGu8Can01_Tx03_OnStatus_of_Cab1_Stage_PTC_Switch
	.loc 1 994 0
	or	%d2, %d15
	.loc 1 996 0
	ld.bu	%d15, [%a15] lo:MAIN_MSGu8Can01_Tx03_OnStatus_of_Cab1_Stage_PTC_Switch
	.loc 1 994 0
	st.b	[%a4] 1, %d2
	.loc 1 1002 0
	ne	%d15, %d15, 0
	st.b	[%a15] lo:MAIN_MSGu8Can01_Tx03_OnStatus_of_Cab1_Stage_PTC_Switch, %d15
	.loc 1 1007 0
	movh.a	%a15, hi:MAIN_MSGu8Can01_Tx03_OnStatus_of_Cab2_Stage_PTC_Switch
	ld.bu	%d2, [%a15] lo:MAIN_MSGu8Can01_Tx03_OnStatus_of_Cab2_Stage_PTC_Switch
	.loc 1 1013 0
	ne	%d2, %d2, 0
	st.b	[%a15] lo:MAIN_MSGu8Can01_Tx03_OnStatus_of_Cab2_Stage_PTC_Switch, %d2
	.loc 1 1018 0
	movh.a	%a15, hi:MAIN_MSGu8Can01_Tx03_OnStatus_of_BatteryHeating1_Switch
	ld.bu	%d3, [%a15] lo:MAIN_MSGu8Can01_Tx03_OnStatus_of_BatteryHeating1_Switch
	.loc 1 1016 0
	sh	%d2, 2
	.loc 1 1024 0
	ne	%d3, %d3, 0
	st.b	[%a15] lo:MAIN_MSGu8Can01_Tx03_OnStatus_of_BatteryHeating1_Switch, %d3
	.loc 1 1029 0
	movh.a	%a15, hi:MAIN_MSGu8Can01_Tx03_OnStatus_of_BatteryHeating2_Switch
	.loc 1 1016 0
	or	%d15, %d2
	.loc 1 1029 0
	ld.bu	%d2, [%a15] lo:MAIN_MSGu8Can01_Tx03_OnStatus_of_BatteryHeating2_Switch
	.loc 1 1016 0
	st.b	[%a4] 2, %d15
	.loc 1 1035 0
	ne	%d2, %d2, 0
	st.b	[%a15] lo:MAIN_MSGu8Can01_Tx03_OnStatus_of_BatteryHeating2_Switch, %d2
	.loc 1 1040 0
	movh.a	%a15, hi:MAIN_MSGu8Can01_Tx03_OnStatus_of_BatteryHeating3_Switch
	ld.bu	%d15, [%a15] lo:MAIN_MSGu8Can01_Tx03_OnStatus_of_BatteryHeating3_Switch
	.loc 1 1038 0
	sh	%d2, 2
	.loc 1 1046 0
	ne	%d15, %d15, 0
	st.b	[%a15] lo:MAIN_MSGu8Can01_Tx03_OnStatus_of_BatteryHeating3_Switch, %d15
	.loc 1 1051 0
	movh.a	%a15, hi:MAIN_MSGu8Can01_Tx03_OnStatus_of_BatteryHeating4_Switch
	ld.bu	%d4, [%a15] lo:MAIN_MSGu8Can01_Tx03_OnStatus_of_BatteryHeating4_Switch
	.loc 1 1049 0
	sh	%d15, 4
	.loc 1 1053 0
	ne	%d4, %d4, 0
	st.b	[%a15] lo:MAIN_MSGu8Can01_Tx03_OnStatus_of_BatteryHeating4_Switch, %d4
	.loc 1 1060 0
	sh	%d4, 6
	or	%d3, %d4
	or	%d2, %d3
	.loc 1 1062 0
	movh.a	%a15, hi:MAIN_MSGu8Can01_Tx03_ChargeCircuit1_Positive_Contactor_Sts
	.loc 1 1060 0
	or	%d15, %d2
	.loc 1 1062 0
	ld.bu	%d2, [%a15] lo:MAIN_MSGu8Can01_Tx03_ChargeCircuit1_Positive_Contactor_Sts
	.loc 1 1060 0
	st.b	[%a4] 3, %d15
	.loc 1 1062 0
	jlt.u	%d2, 3, .L254
	.loc 1 1064 0
	mov	%d15, 3
	st.b	[%a15] lo:MAIN_MSGu8Can01_Tx03_ChargeCircuit1_Positive_Contactor_Sts, %d15
	mov	%d2, 3
.L221:
	.loc 1 1073 0
	movh.a	%a15, hi:MAIN_MSGu8Can01_Tx03_ChargeCircuit1_Negative_Contactor_Sts
	ld.bu	%d15, [%a15] lo:MAIN_MSGu8Can01_Tx03_ChargeCircuit1_Negative_Contactor_Sts
	jlt.u	%d15, 3, .L223
	.loc 1 1075 0
	mov	%d15, 3
	st.b	[%a15] lo:MAIN_MSGu8Can01_Tx03_ChargeCircuit1_Negative_Contactor_Sts, %d15
	mov	%d15, 12
.L224:
	.loc 1 1084 0
	movh.a	%a15, hi:MAIN_MSGu8Can01_Tx03_ChargeCircuit2_Positive_Contactor_Sts
	.loc 1 1082 0
	or	%d2, %d15
	.loc 1 1084 0
	ld.bu	%d15, [%a15] lo:MAIN_MSGu8Can01_Tx03_ChargeCircuit2_Positive_Contactor_Sts
	jlt.u	%d15, 3, .L226
	.loc 1 1086 0
	mov	%d15, 3
	st.b	[%a15] lo:MAIN_MSGu8Can01_Tx03_ChargeCircuit2_Positive_Contactor_Sts, %d15
	mov	%d15, 48
.L227:
	.loc 1 1093 0
	or	%d2, %d15
	.loc 1 1095 0
	movh.a	%a15, hi:MAIN_MSGu8Can01_Tx03_ChargeCircuit2_Negative_Contactor_Sts
	.loc 1 1093 0
	and	%d15, %d2, 255
	.loc 1 1095 0
	ld.bu	%d2, [%a15] lo:MAIN_MSGu8Can01_Tx03_ChargeCircuit2_Negative_Contactor_Sts
	jlt.u	%d2, 3, .L229
	.loc 1 1097 0
	mov	%d2, 3
	st.b	[%a15] lo:MAIN_MSGu8Can01_Tx03_ChargeCircuit2_Negative_Contactor_Sts, %d2
	mov	%d2, 192
.L230:
	.loc 1 1104 0
	or	%d2, %d15
	.loc 1 1106 0
	movh.a	%a15, hi:MAIN_MSGu8Can01_Tx03_ChargeCircuit3_Positive_Contactor_Sts
	.loc 1 1104 0
	st.b	[%a4] 4, %d2
	.loc 1 1106 0
	ld.bu	%d2, [%a15] lo:MAIN_MSGu8Can01_Tx03_ChargeCircuit3_Positive_Contactor_Sts
	jlt.u	%d2, 3, .L232
	.loc 1 1108 0
	mov	%d15, 3
	st.b	[%a15] lo:MAIN_MSGu8Can01_Tx03_ChargeCircuit3_Positive_Contactor_Sts, %d15
	mov	%d2, 3
.L233:
	.loc 1 1117 0
	movh.a	%a15, hi:MAIN_MSGu8Can01_Tx03_ChargeCircuit3_Negative_Contactor_Sts
	ld.bu	%d15, [%a15] lo:MAIN_MSGu8Can01_Tx03_ChargeCircuit3_Negative_Contactor_Sts
	jlt.u	%d15, 3, .L235
	.loc 1 1119 0
	mov	%d15, 3
	st.b	[%a15] lo:MAIN_MSGu8Can01_Tx03_ChargeCircuit3_Negative_Contactor_Sts, %d15
	mov	%d15, 12
.L236:
	.loc 1 1128 0
	movh.a	%a15, hi:MAIN_MSGu8Can01_Tx03_ChargeCircuit4_Positive_Contactor_Sts
	.loc 1 1126 0
	or	%d2, %d15
	.loc 1 1128 0
	ld.bu	%d15, [%a15] lo:MAIN_MSGu8Can01_Tx03_ChargeCircuit4_Positive_Contactor_Sts
	jlt.u	%d15, 3, .L238
	.loc 1 1130 0
	mov	%d15, 3
	st.b	[%a15] lo:MAIN_MSGu8Can01_Tx03_ChargeCircuit4_Positive_Contactor_Sts, %d15
	mov	%d15, 48
.L239:
	.loc 1 1137 0
	or	%d2, %d15
	.loc 1 1139 0
	movh.a	%a15, hi:MAIN_MSGu8Can01_Tx03_ChargeCircuit4_Negative_Contactor_Sts
	.loc 1 1137 0
	and	%d15, %d2, 255
	.loc 1 1139 0
	ld.bu	%d2, [%a15] lo:MAIN_MSGu8Can01_Tx03_ChargeCircuit4_Negative_Contactor_Sts
	jlt.u	%d2, 3, .L241
	.loc 1 1141 0
	mov	%d2, 3
	st.b	[%a15] lo:MAIN_MSGu8Can01_Tx03_ChargeCircuit4_Negative_Contactor_Sts, %d2
	mov	%d2, 192
.L242:
	.loc 1 1148 0
	or	%d2, %d15
	.loc 1 1150 0
	movh.a	%a15, hi:MAIN_MSGu8Can01_Tx03_Number_of_Cab_PTC_Switch
	.loc 1 1148 0
	st.b	[%a4] 5, %d2
	.loc 1 1150 0
	ld.bu	%d2, [%a15] lo:MAIN_MSGu8Can01_Tx03_Number_of_Cab_PTC_Switch
	jlt.u	%d2, 3, .L244
	.loc 1 1152 0
	mov	%d15, 3
	st.b	[%a15] lo:MAIN_MSGu8Can01_Tx03_Number_of_Cab_PTC_Switch, %d15
	mov	%d2, 3
.L245:
	.loc 1 1161 0
	movh.a	%a15, hi:MAIN_MSGu8Can01_Tx03_Number_of_BatteryHeating_PTC_Switch
	ld.bu	%d15, [%a15] lo:MAIN_MSGu8Can01_Tx03_Number_of_BatteryHeating_PTC_Switch
	jge.u	%d15, 7, .L255
.L247:
	.loc 1 1165 0
	jnz	%d15, .L256
	.loc 1 1167 0
	st.b	[%a15] lo:MAIN_MSGu8Can01_Tx03_Number_of_BatteryHeating_PTC_Switch, %d15
	.loc 1 1172 0
	mov	%d4, 22
	.loc 1 1170 0
	or	%d15, %d2
	st.b	[%a4] 6, %d15
	.loc 1 1172 0
	j	Com_SendSignal
.LVL58:
.L200:
	.loc 1 923 0
	jnz	%d2, .L201
	.loc 1 925 0
	st.b	[%a2] lo:MAIN_MSGu8Can01_Tx03_Insulation_Resistance_Sts, %d2
	.loc 1 930 0
	movh.a	%a2, hi:MAIN_MSGu8Can01_Tx03_Negative_Contactor_Sts
	ld.bu	%d15, [%a2] lo:MAIN_MSGu8Can01_Tx03_Negative_Contactor_Sts
	.loc 1 928 0
	st.b	[%a15] lo:MAIN_MSGu8Can01_Tx03_PDUST3_buf, %d2
	.loc 1 930 0
	jge.u	%d15, 3, .L257
.L203:
	.loc 1 934 0
	jnz	%d15, .L258
	.loc 1 936 0
	st.b	[%a2] lo:MAIN_MSGu8Can01_Tx03_Negative_Contactor_Sts, %d15
	.loc 1 941 0
	movh.a	%a2, hi:MAIN_MSGu8Can01_Tx03_Number_of_Positive_Contactors
	.loc 1 939 0
	or	%d2, %d15
	.loc 1 941 0
	ld.bu	%d15, [%a2] lo:MAIN_MSGu8Can01_Tx03_Number_of_Positive_Contactors
	.loc 1 939 0
	st.b	[%a15] lo:MAIN_MSGu8Can01_Tx03_PDUST3_buf, %d2
	.loc 1 941 0
	jge.u	%d15, 7, .L259
.L206:
	.loc 1 945 0
	jnz	%d15, .L260
	.loc 1 947 0
	st.b	[%a2] lo:MAIN_MSGu8Can01_Tx03_Number_of_Positive_Contactors, %d15
	.loc 1 950 0
	or	%d15, %d2
	st.b	[%a15] lo:MAIN_MSGu8Can01_Tx03_PDUST3_buf, %d15
	.loc 1 952 0
	movh.a	%a15, hi:MAIN_MSGu8Can01_Tx03_Positive_Contactor1_Sts
	ld.bu	%d2, [%a15] lo:MAIN_MSGu8Can01_Tx03_Positive_Contactor1_Sts
	jge.u	%d2, 3, .L261
.L209:
	.loc 1 956 0
	jnz	%d2, .L210
	.loc 1 958 0
	st.b	[%a15] lo:MAIN_MSGu8Can01_Tx03_Positive_Contactor1_Sts, %d2
	.loc 1 963 0
	movh.a	%a15, hi:MAIN_MSGu8Can01_Tx03_Positive_Contactor2_Sts
	ld.bu	%d15, [%a15] lo:MAIN_MSGu8Can01_Tx03_Positive_Contactor2_Sts
	jge.u	%d15, 3, .L262
.L212:
	.loc 1 967 0
	jnz	%d15, .L263
	.loc 1 969 0
	st.b	[%a15] lo:MAIN_MSGu8Can01_Tx03_Positive_Contactor2_Sts, %d15
	.loc 1 974 0
	movh.a	%a15, hi:MAIN_MSGu8Can01_Tx03_Positive_Contactor3_Sts
	.loc 1 972 0
	or	%d2, %d15
	.loc 1 974 0
	ld.bu	%d15, [%a15] lo:MAIN_MSGu8Can01_Tx03_Positive_Contactor3_Sts
	jge.u	%d15, 3, .L264
.L215:
	.loc 1 978 0
	jnz	%d15, .L265
	.loc 1 980 0
	st.b	[%a15] lo:MAIN_MSGu8Can01_Tx03_Positive_Contactor3_Sts, %d15
	.loc 1 983 0
	or	%d2, %d15
	.loc 1 985 0
	movh.a	%a15, hi:MAIN_MSGu8Can01_Tx03_Positive_Contactor4_Sts
	.loc 1 983 0
	and	%d15, %d2, 255
	.loc 1 985 0
	ld.bu	%d2, [%a15] lo:MAIN_MSGu8Can01_Tx03_Positive_Contactor4_Sts
	jge.u	%d2, 3, .L266
.L218:
	.loc 1 989 0
	jnz	%d2, .L220
	.loc 1 991 0
	st.b	[%a15] lo:MAIN_MSGu8Can01_Tx03_Positive_Contactor4_Sts, %d2
	j	.L219
.L244:
	.loc 1 1154 0
	jnz	%d2, .L245
	.loc 1 1156 0
	st.b	[%a15] lo:MAIN_MSGu8Can01_Tx03_Number_of_Cab_PTC_Switch, %d2
	.loc 1 1161 0
	movh.a	%a15, hi:MAIN_MSGu8Can01_Tx03_Number_of_BatteryHeating_PTC_Switch
	ld.bu	%d15, [%a15] lo:MAIN_MSGu8Can01_Tx03_Number_of_BatteryHeating_PTC_Switch
	jlt.u	%d15, 7, .L247
.L255:
	.loc 1 1163 0
	mov	%d15, 7
	st.b	[%a15] lo:MAIN_MSGu8Can01_Tx03_Number_of_BatteryHeating_PTC_Switch, %d15
	mov	%d15, 28
	.loc 1 1170 0
	or	%d15, %d2
	.loc 1 1172 0
	mov	%d4, 22
	.loc 1 1170 0
	st.b	[%a4] 6, %d15
	.loc 1 1172 0
	j	Com_SendSignal
.LVL59:
.L241:
	.loc 1 1143 0
	jnz	%d2, .L267
	.loc 1 1145 0
	st.b	[%a15] lo:MAIN_MSGu8Can01_Tx03_ChargeCircuit4_Negative_Contactor_Sts, %d2
	j	.L242
.L238:
	.loc 1 1132 0
	jnz	%d15, .L268
	.loc 1 1134 0
	st.b	[%a15] lo:MAIN_MSGu8Can01_Tx03_ChargeCircuit4_Positive_Contactor_Sts, %d15
	j	.L239
.L235:
	.loc 1 1121 0
	jnz	%d15, .L269
	.loc 1 1123 0
	st.b	[%a15] lo:MAIN_MSGu8Can01_Tx03_ChargeCircuit3_Negative_Contactor_Sts, %d15
	j	.L236
.L232:
	.loc 1 1110 0
	jnz	%d2, .L233
	.loc 1 1112 0
	st.b	[%a15] lo:MAIN_MSGu8Can01_Tx03_ChargeCircuit3_Positive_Contactor_Sts, %d2
	j	.L233
.L229:
	.loc 1 1099 0
	jnz	%d2, .L270
	.loc 1 1101 0
	st.b	[%a15] lo:MAIN_MSGu8Can01_Tx03_ChargeCircuit2_Negative_Contactor_Sts, %d2
	j	.L230
.L226:
	.loc 1 1088 0
	jnz	%d15, .L271
	.loc 1 1090 0
	st.b	[%a15] lo:MAIN_MSGu8Can01_Tx03_ChargeCircuit2_Positive_Contactor_Sts, %d15
	j	.L227
.L223:
	.loc 1 1077 0
	jnz	%d15, .L272
	.loc 1 1079 0
	st.b	[%a15] lo:MAIN_MSGu8Can01_Tx03_ChargeCircuit1_Negative_Contactor_Sts, %d15
	j	.L224
.L254:
	.loc 1 1066 0
	jnz	%d2, .L221
	.loc 1 1068 0
	st.b	[%a15] lo:MAIN_MSGu8Can01_Tx03_ChargeCircuit1_Positive_Contactor_Sts, %d2
	j	.L221
.L258:
	sh	%d15, 2
	and	%d15, %d15, 12
	j	.L204
.L260:
	sh	%d15, 4
	and	%d15, %d15, 112
	j	.L207
.L263:
	sh	%d15, 2
	and	%d15, %d15, 12
	j	.L213
.L265:
	sh	%d15, 4
	and	%d15, %d15, 48
	j	.L216
.L220:
	sh	%d2, 6
	and	%d2, %d2, 255
	j	.L219
.L272:
	sh	%d15, 2
	and	%d15, %d15, 12
	j	.L224
.L271:
	sh	%d15, 4
	and	%d15, %d15, 48
	j	.L227
.L270:
	sh	%d2, 6
	and	%d2, %d2, 255
	j	.L230
.L269:
	sh	%d15, 2
	and	%d15, %d15, 12
	j	.L236
.L268:
	sh	%d15, 4
	and	%d15, %d15, 48
	j	.L239
.L267:
	sh	%d2, 6
	and	%d2, %d2, 255
	j	.L242
.L256:
	sh	%d15, 2
	and	%d15, %d15, 28
	.loc 1 1170 0
	or	%d15, %d2
	.loc 1 1172 0
	mov	%d4, 22
	.loc 1 1170 0
	st.b	[%a4] 6, %d15
	.loc 1 1172 0
	j	Com_SendSignal
.LVL60:
.LFE8:
	.size	MAIN_MSGvidCan01_Tx03_PDUST3_0x18F7031E, .-MAIN_MSGvidCan01_Tx03_PDUST3_0x18F7031E
	.align 1
	.global	MAIN_MSGvidCan01_Tx04_PDUST4_0x18F7041E
	.type	MAIN_MSGvidCan01_Tx04_PDUST4_0x18F7041E, @function
MAIN_MSGvidCan01_Tx04_PDUST4_0x18F7041E:
.LFB9:
	.loc 1 1176 0
	.loc 1 1184 0
	movh.a	%a15, hi:MAIN_MSGu8Can01_Tx04_PDUST4_buf
	mov	%d15, 0
	lea	%a4, [%a15] lo:MAIN_MSGu8Can01_Tx04_PDUST4_buf
	.loc 1 1189 0
	movh.a	%a2, hi:MAIN_MSGf32Can01_Tx04_Positivepole_to_ground_resistance_value
	.loc 1 1184 0
	st.b	[%a4] 6, %d15
	.loc 1 1185 0
	st.b	[%a4] 7, %d15
.LVL61:
	.loc 1 1189 0
	ld.w	%d2, [%a2] lo:MAIN_MSGf32Can01_Tx04_Positivepole_to_ground_resistance_value
	movh	%d15, 17444
	addi	%d15, %d15, -10650
	cmp.f	%d15, %d2, %d15
	or.t	%d15, %d15,2, %d15,1
	mov	%d5, 255
	mov	%d4, 255
	mov.u	%d3, 65535
	jnz	%d15, .L274
	.loc 1 1193 0
	mov	%d15, 0
	cmp.f	%d15, %d2, %d15
	or.t	%d15, %d15,0, %d15,1
	mov	%e4, 0
	mov	%d3, 0
	jnz	%d15, .L274
.LVL62:
	movh	%d3, 15396
	addi	%d3, %d3, -10486
	div.f	%d3, %d2, %d3
	ftouz	%d3, %d3
	extr.u	%d3, %d3, 0, 16
	and	%d5, %d3, 255
	sh	%d4, %d3, -8
.LVL63:
.L274:
	.loc 1 1204 0
	st.b	[%a15] lo:MAIN_MSGu8Can01_Tx04_PDUST4_buf, %d5
	.loc 1 1209 0
	movh.a	%a15, hi:MAIN_MSGf32Can01_Tx04_Negativepole_to_ground_resistance_value
	ld.w	%d2, [%a15] lo:MAIN_MSGf32Can01_Tx04_Negativepole_to_ground_resistance_value
	movh	%d15, 17444
	addi	%d15, %d15, -10650
	.loc 1 1202 0
	movh.a	%a2, hi:MAIN_MSGu16Can01_Tx04_Positivepole_to_ground_resistance_valueRaw
	.loc 1 1209 0
	cmp.f	%d15, %d2, %d15
	.loc 1 1202 0
	st.h	[%a2] lo:MAIN_MSGu16Can01_Tx04_Positivepole_to_ground_resistance_valueRaw, %d3
	.loc 1 1205 0
	st.b	[%a4] 1, %d4
.LVL64:
	.loc 1 1209 0
	or.t	%d15, %d15,2, %d15,1
	mov	%d5, 255
	mov	%d4, 255
	mov.u	%d3, 65535
	jnz	%d15, .L275
	.loc 1 1213 0
	mov	%d15, 0
	cmp.f	%d15, %d2, %d15
	or.t	%d15, %d15,0, %d15,1
	mov	%e4, 0
	mov	%d3, 0
	jnz	%d15, .L275
.LVL65:
	movh	%d3, 15396
	addi	%d3, %d3, -10486
	div.f	%d3, %d2, %d3
	ftouz	%d3, %d3
	extr.u	%d3, %d3, 0, 16
	and	%d5, %d3, 255
	sh	%d4, %d3, -8
.LVL66:
.L275:
	.loc 1 1222 0
	movh.a	%a15, hi:MAIN_MSGu16Can01_Tx04_Negativepole_to_ground_resistance_valueRaw
	st.h	[%a15] lo:MAIN_MSGu16Can01_Tx04_Negativepole_to_ground_resistance_valueRaw, %d3
	.loc 1 1229 0
	movh.a	%a15, hi:MAIN_MSGf32Can01_Tx04_Chargingpile_voltage
	ld.w	%d2, [%a15] lo:MAIN_MSGf32Can01_Tx04_Chargingpile_voltage
	movh	%d15, 17869
	addi	%d15, %d15, -13312
	cmp.f	%d15, %d2, %d15
	.loc 1 1224 0
	st.b	[%a4] 2, %d5
	.loc 1 1225 0
	st.b	[%a4] 3, %d4
.LVL67:
	.loc 1 1229 0
	or.t	%d15, %d15,2, %d15,1
	mov	%d5, 255
	mov	%d4, 255
	mov.u	%d3, 65535
	jnz	%d15, .L276
	.loc 1 1233 0
	mov	%d15, 0
	cmp.f	%d15, %d2, %d15
	or.t	%d15, %d15,0, %d15,1
	mov	%e4, 0
	mov	%d3, 0
	jnz	%d15, .L276
.LVL68:
	movh	%d3, 15821
	addi	%d3, %d3, -13107
	div.f	%d3, %d2, %d3
	ftouz	%d3, %d3
	extr.u	%d3, %d3, 0, 16
	and	%d5, %d3, 255
	sh	%d4, %d3, -8
.LVL69:
.L276:
	.loc 1 1242 0
	movh.a	%a15, hi:MAIN_MSGu16Can01_Tx04_Chargingpile_voltageRaw
	.loc 1 1245 0
	st.b	[%a4] 5, %d4
	.loc 1 1247 0
	mov	%d4, 23
	.loc 1 1242 0
	st.h	[%a15] lo:MAIN_MSGu16Can01_Tx04_Chargingpile_voltageRaw, %d3
	.loc 1 1244 0
	st.b	[%a4] 4, %d5
	.loc 1 1247 0
	j	Com_SendSignal
.LVL70:
.LFE9:
	.size	MAIN_MSGvidCan01_Tx04_PDUST4_0x18F7041E, .-MAIN_MSGvidCan01_Tx04_PDUST4_0x18F7041E
	.align 1
	.global	MAIN_MSGvidCan01_Tx05_HSST1_0x0CF6012E
	.type	MAIN_MSGvidCan01_Tx05_HSST1_0x0CF6012E, @function
MAIN_MSGvidCan01_Tx05_HSST1_0x0CF6012E:
.LFB10:
	.loc 1 1251 0
	.loc 1 1253 0
	movh.a	%a15, hi:MAIN_MSGu8Can01_Tx05_HSST1_buf
	mov	%d15, 0
	lea	%a4, [%a15] lo:MAIN_MSGu8Can01_Tx05_HSST1_buf
	.loc 1 1262 0
	movh.a	%a2, hi:MAIN_MSGu8Can01_Tx05_Heartbeat_Signal
	.loc 1 1253 0
	st.b	[%a15] lo:MAIN_MSGu8Can01_Tx05_HSST1_buf, %d15
	.loc 1 1260 0
	st.b	[%a4] 7, %d15
	.loc 1 1262 0
	ld.bu	%d15, [%a2] lo:MAIN_MSGu8Can01_Tx05_Heartbeat_Signal
	mov	%d2, 1
	.loc 1 1266 0
	jz	%d15, .L284
	add	%d2, %d15, 1
	and	%d2, %d2, 255
.L284:
	.loc 1 1271 0
	st.b	[%a15] lo:MAIN_MSGu8Can01_Tx05_HSST1_buf, %d15
	.loc 1 1279 0
	movh.a	%a15, hi:MAIN_MSGu16Can01_Tx05_Motor_Speed
	ld.hu	%d15, [%a15] lo:MAIN_MSGu16Can01_Tx05_Motor_Speed
	.loc 1 1273 0
	st.b	[%a2] lo:MAIN_MSGu8Can01_Tx05_Heartbeat_Signal, %d2
	.loc 1 1279 0
	mov	%d2, 5000
	jlt.u	%d15, %d2, .L285
	.loc 1 1281 0
	st.h	[%a15] lo:MAIN_MSGu16Can01_Tx05_Motor_Speed, %d2
	mov	%d15, 19
	mov	%d2, 136
.L286:
	.loc 1 1293 0
	movh.a	%a15, hi:MAIN_MSGf32Can01_Tx05_Output_Current
	.loc 1 1288 0
	st.b	[%a4] 1, %d2
	.loc 1 1293 0
	ld.w	%d2, [%a15] lo:MAIN_MSGf32Can01_Tx05_Output_Current
	.loc 1 1289 0
	st.b	[%a4] 2, %d15
.LVL71:
	.loc 1 1293 0
	movh	%d15, 17096
	cmp.f	%d15, %d2, %d15
	or.t	%d15, %d15,2, %d15,1
	mov	%d4, 3
	mov	%d5, 232
	mov	%d3, 1000
	jnz	%d15, .L288
	.loc 1 1297 0
	mov	%d15, 0
	cmp.f	%d15, %d2, %d15
	or.t	%d15, %d15,0, %d15,1
	mov	%e4, 0
	mov	%d3, 0
	jnz	%d15, .L288
.LVL72:
	movh	%d3, 15821
	addi	%d3, %d3, -13107
	div.f	%d3, %d2, %d3
	ftouz	%d3, %d3
	extr.u	%d3, %d3, 0, 16
	and	%d5, %d3, 255
	sh	%d4, %d3, -8
.LVL73:
.L288:
	.loc 1 1306 0
	movh.a	%a15, hi:MAIN_MSGu16Can01_Tx05_Output_CurrentRaw
	st.h	[%a15] lo:MAIN_MSGu16Can01_Tx05_Output_CurrentRaw, %d3
	.loc 1 1313 0
	movh.a	%a15, hi:MAIN_MSGf32Can01_Tx05_Steering_Oil_DCAC_Module_Temp
	ld.w	%d2, [%a15] lo:MAIN_MSGf32Can01_Tx05_Steering_Oil_DCAC_Module_Temp
	movh	%d15, 17239
	cmp.f	%d15, %d2, %d15
	.loc 1 1308 0
	st.b	[%a4] 3, %d5
	.loc 1 1309 0
	st.b	[%a4] 4, %d4
.LVL74:
	.loc 1 1313 0
	or.t	%d15, %d15,2, %d15,1
	mov	%d3, 255
	jnz	%d15, .L289
	.loc 1 1317 0
	movh	%d15, 49696
	cmp.f	%d15, %d2, %d15
	or.t	%d15, %d15,0, %d15,1
	mov	%d3, 0
	jz	%d15, .L302
.LVL75:
.L289:
	.loc 1 1326 0
	movh.a	%a15, hi:MAIN_MSGu8Can01_Tx05_Steering_Oil_DCAC_Module_TempRaw
	st.b	[%a15] lo:MAIN_MSGu8Can01_Tx05_Steering_Oil_DCAC_Module_TempRaw, %d3
	.loc 1 1330 0
	movh.a	%a15, hi:MAIN_MSGu8Can01_Tx05_Motor_Sts
	ld.bu	%d2, [%a15] lo:MAIN_MSGu8Can01_Tx05_Motor_Sts
	.loc 1 1328 0
	st.b	[%a4] 5, %d3
	.loc 1 1330 0
	jlt.u	%d2, 3, .L290
	.loc 1 1332 0
	mov	%d15, 3
	st.b	[%a15] lo:MAIN_MSGu8Can01_Tx05_Motor_Sts, %d15
	mov	%d2, 3
.L291:
	.loc 1 1341 0
	movh.a	%a15, hi:MAIN_MSGu8Can01_Tx05_Fault_Level
	ld.bu	%d15, [%a15] lo:MAIN_MSGu8Can01_Tx05_Fault_Level
	jge.u	%d15, 3, .L303
.L293:
	.loc 1 1345 0
	jnz	%d15, .L304
	.loc 1 1347 0
	st.b	[%a15] lo:MAIN_MSGu8Can01_Tx05_Fault_Level, %d15
	.loc 1 1352 0
	mov	%d4, 24
	.loc 1 1350 0
	or	%d15, %d2
	st.b	[%a4] 6, %d15
	.loc 1 1352 0
	j	Com_SendSignal
.LVL76:
.L285:
	.loc 1 1283 0
	jnz	%d15, .L305
	.loc 1 1285 0
	st.h	[%a15] lo:MAIN_MSGu16Can01_Tx05_Motor_Speed, %d15
	mov	%d2, 0
	mov	%d15, 0
	j	.L286
.L290:
	.loc 1 1334 0
	jnz	%d2, .L291
	.loc 1 1336 0
	st.b	[%a15] lo:MAIN_MSGu8Can01_Tx05_Motor_Sts, %d2
	.loc 1 1341 0
	movh.a	%a15, hi:MAIN_MSGu8Can01_Tx05_Fault_Level
	ld.bu	%d15, [%a15] lo:MAIN_MSGu8Can01_Tx05_Fault_Level
	jlt.u	%d15, 3, .L293
.L303:
	.loc 1 1343 0
	mov	%d15, 3
	st.b	[%a15] lo:MAIN_MSGu8Can01_Tx05_Fault_Level, %d15
	mov	%d15, 12
	.loc 1 1350 0
	or	%d15, %d2
	.loc 1 1352 0
	mov	%d4, 24
	.loc 1 1350 0
	st.b	[%a4] 6, %d15
	.loc 1 1352 0
	j	Com_SendSignal
.LVL77:
.L302:
	movh	%d3, 16928
	add.f	%d2, %d2, %d3
.LVL78:
	ftouz	%d2, %d2
	and	%d3, %d2, 255
	j	.L289
.LVL79:
.L305:
	and	%d2, %d15, 255
	sh	%d15, -8
	j	.L286
.L304:
	sh	%d15, 2
	and	%d15, %d15, 12
	.loc 1 1350 0
	or	%d15, %d2
	.loc 1 1352 0
	mov	%d4, 24
	.loc 1 1350 0
	st.b	[%a4] 6, %d15
	.loc 1 1352 0
	j	Com_SendSignal
.LVL80:
.LFE10:
	.size	MAIN_MSGvidCan01_Tx05_HSST1_0x0CF6012E, .-MAIN_MSGvidCan01_Tx05_HSST1_0x0CF6012E
	.align 1
	.global	MAIN_MSGvidCan01_Tx06_HSST2_0x0CF6022E
	.type	MAIN_MSGvidCan01_Tx06_HSST2_0x0CF6022E, @function
MAIN_MSGvidCan01_Tx06_HSST2_0x0CF6022E:
.LFB11:
	.loc 1 1356 0
	.loc 1 1360 0
	movh.a	%a15, hi:MAIN_MSGu8Can01_Tx06_HSST2_buf
	.loc 1 1369 0
	movh.a	%a2, hi:MAIN_MSGf32Can01_Tx06_Steer_Motor_Temp
	.loc 1 1360 0
	mov	%d15, 0
	lea	%a4, [%a15] lo:MAIN_MSGu8Can01_Tx06_HSST2_buf
	.loc 1 1369 0
	ld.w	%d2, [%a2] lo:MAIN_MSGf32Can01_Tx06_Steer_Motor_Temp
	.loc 1 1361 0
	st.b	[%a4] 3, %d15
	.loc 1 1362 0
	st.b	[%a4] 4, %d15
	.loc 1 1363 0
	st.b	[%a4] 5, %d15
.LVL81:
	.loc 1 1369 0
	movh	%d15, 17234
	cmp.f	%d15, %d2, %d15
	or.t	%d15, %d15,2, %d15,1
	mov	%d3, 250
	jnz	%d15, .L307
	.loc 1 1373 0
	movh	%d15, 49696
	cmp.f	%d15, %d2, %d15
	or.t	%d15, %d15,0, %d15,1
	mov	%d3, 0
	jz	%d15, .L318
.LVL82:
.L307:
	.loc 1 1384 0
	st.b	[%a15] lo:MAIN_MSGu8Can01_Tx06_HSST2_buf, %d3
.LVL83:
	.loc 1 1388 0
	movh.a	%a15, hi:MAIN_MSGf32Can01_Tx06_Input_Voltage
	ld.w	%d2, [%a15] lo:MAIN_MSGf32Can01_Tx06_Input_Voltage
	movh	%d15, 17535
	.loc 1 1382 0
	movh.a	%a2, hi:MAIN_MSGu8Can01_Tx06_Steer_Motor_TempRaw
	.loc 1 1388 0
	cmp.f	%d15, %d2, %d15
	.loc 1 1382 0
	st.b	[%a2] lo:MAIN_MSGu8Can01_Tx06_Steer_Motor_TempRaw, %d3
	.loc 1 1388 0
	or.t	%d15, %d15,2, %d15,1
	mov	%d3, 255
	jnz	%d15, .L308
	.loc 1 1392 0
	mov	%d15, 0
	cmp.f	%d15, %d2, %d15
	or.t	%d15, %d15,0, %d15,1
	mov	%d3, 0
	jnz	%d15, .L308
.LVL84:
	movh	%d3, 16000
	mul.f	%d2, %d2, %d3
.LVL85:
	ftouz	%d2, %d2
	and	%d3, %d2, 255
.LVL86:
.L308:
	.loc 1 1401 0
	movh.a	%a15, hi:MAIN_MSGu8Can01_Tx06_Input_VoltageRaw
	st.b	[%a15] lo:MAIN_MSGu8Can01_Tx06_Input_VoltageRaw, %d3
	.loc 1 1405 0
	movh.a	%a15, hi:MAIN_MSGu8Can01_Tx06_Input_Current
	ld.bu	%d15, [%a15] lo:MAIN_MSGu8Can01_Tx06_Input_Current
	.loc 1 1403 0
	st.b	[%a4] 1, %d3
	.loc 1 1409 0
	jnz	%d15, .L309
	.loc 1 1411 0
	st.b	[%a15] lo:MAIN_MSGu8Can01_Tx06_Input_Current, %d15
.L309:
	.loc 1 1416 0
	movh.a	%a15, hi:MAIN_MSGu8Can01_Tx06_Internal_FaultCode
	.loc 1 1414 0
	st.b	[%a4] 2, %d15
	.loc 1 1416 0
	ld.bu	%d15, [%a15] lo:MAIN_MSGu8Can01_Tx06_Internal_FaultCode
	.loc 1 1420 0
	jnz	%d15, .L310
	.loc 1 1422 0
	st.b	[%a15] lo:MAIN_MSGu8Can01_Tx06_Internal_FaultCode, %d15
.L310:
	.loc 1 1429 0
	movh.a	%a15, hi:MAIN_MSGf32Can01_Tx06_Software_Version
	.loc 1 1425 0
	st.b	[%a4] 6, %d15
.LVL87:
	.loc 1 1429 0
	ld.w	%d2, [%a15] lo:MAIN_MSGf32Can01_Tx06_Software_Version
	movh	%d15, 16419
	addi	%d15, %d15, -28836
	cmp.f	%d15, %d2, %d15
	or.t	%d15, %d15,2, %d15,1
	mov	%d3, 254
	jnz	%d15, .L311
	.loc 1 1433 0
	mov	%d15, 0
	cmp.f	%d15, %d2, %d15
	or.t	%d15, %d15,0, %d15,1
	mov	%d3, 0
	jnz	%d15, .L311
.LVL88:
	movh	%d3, 15396
	addi	%d3, %d3, -10486
	div.f	%d2, %d2, %d3
.LVL89:
	ftouz	%d2, %d2
	and	%d3, %d2, 255
.LVL90:
.L311:
	.loc 1 1442 0
	movh.a	%a15, hi:MAIN_MSGu8Can01_Tx06_Software_VersionRaw
	.loc 1 1446 0
	mov	%d4, 25
	.loc 1 1442 0
	st.b	[%a15] lo:MAIN_MSGu8Can01_Tx06_Software_VersionRaw, %d3
	.loc 1 1444 0
	st.b	[%a4] 7, %d3
	.loc 1 1446 0
	j	Com_SendSignal
.LVL91:
.L318:
	movh	%d3, 16928
	add.f	%d2, %d2, %d3
.LVL92:
	ftouz	%d2, %d2
	and	%d3, %d2, 255
	j	.L307
.LFE11:
	.size	MAIN_MSGvidCan01_Tx06_HSST2_0x0CF6022E, .-MAIN_MSGvidCan01_Tx06_HSST2_0x0CF6022E
	.align 1
	.global	MAIN_MSGvidCan01_Tx07_ACUST1_0x18FF2130
	.type	MAIN_MSGvidCan01_Tx07_ACUST1_0x18FF2130, @function
MAIN_MSGvidCan01_Tx07_ACUST1_0x18FF2130:
.LFB12:
	.loc 1 1450 0
	.loc 1 1463 0
	movh.a	%a2, hi:MAIN_MSGf32Can01_Tx07_Input_Voltage
	ld.w	%d2, [%a2] lo:MAIN_MSGf32Can01_Tx07_Input_Voltage
	movh	%d15, 17535
	cmp.f	%d15, %d2, %d15
	.loc 1 1453 0
	movh.a	%a15, hi:MAIN_MSGu8Can01_Tx07_ACUST1_buf
	.loc 1 1463 0
	or.t	%d15, %d15,2, %d15,1
	.loc 1 1453 0
	lea	%a4, [%a15] lo:MAIN_MSGu8Can01_Tx07_ACUST1_buf
.LVL93:
	mov	%d3, 255
	.loc 1 1463 0
	jnz	%d15, .L320
	.loc 1 1467 0
	mov	%d15, 0
	cmp.f	%d15, %d2, %d15
	or.t	%d15, %d15,0, %d15,1
	mov	%d3, 0
	jnz	%d15, .L320
.LVL94:
	movh	%d3, 16000
	mul.f	%d2, %d2, %d3
.LVL95:
	ftouz	%d2, %d2
	and	%d3, %d2, 255
.LVL96:
.L320:
	.loc 1 1478 0
	st.b	[%a15] lo:MAIN_MSGu8Can01_Tx07_ACUST1_buf, %d3
	.loc 1 1480 0
	movh.a	%a15, hi:MAIN_MSGu8Can01_Tx07_Input_Current
	.loc 1 1476 0
	movh.a	%a2, hi:MAIN_MSGu8Can01_Tx07_Input_VoltageRaw
	.loc 1 1480 0
	ld.bu	%d15, [%a15] lo:MAIN_MSGu8Can01_Tx07_Input_Current
	.loc 1 1476 0
	st.b	[%a2] lo:MAIN_MSGu8Can01_Tx07_Input_VoltageRaw, %d3
	.loc 1 1484 0
	jnz	%d15, .L321
	.loc 1 1486 0
	st.b	[%a15] lo:MAIN_MSGu8Can01_Tx07_Input_Current, %d15
.L321:
	.loc 1 1493 0
	movh.a	%a15, hi:MAIN_MSGf32Can01_Tx07_Output_Voltage
	ld.w	%d2, [%a15] lo:MAIN_MSGf32Can01_Tx07_Output_Voltage
	.loc 1 1489 0
	st.b	[%a4] 1, %d15
.LVL97:
	.loc 1 1493 0
	movh	%d15, 17535
	cmp.f	%d15, %d2, %d15
	or.t	%d15, %d15,2, %d15,1
	mov	%d3, 255
	jnz	%d15, .L322
	.loc 1 1497 0
	mov	%d15, 0
	cmp.f	%d15, %d2, %d15
	or.t	%d15, %d15,0, %d15,1
	mov	%d3, 0
	jnz	%d15, .L322
.LVL98:
	movh	%d3, 16000
	mul.f	%d2, %d2, %d3
.LVL99:
	ftouz	%d2, %d2
	and	%d3, %d2, 255
.LVL100:
.L322:
	.loc 1 1506 0
	movh.a	%a15, hi:MAIN_MSGu8Can01_Tx07_Output_VoltageRaw
	st.b	[%a15] lo:MAIN_MSGu8Can01_Tx07_Output_VoltageRaw, %d3
	.loc 1 1510 0
	movh.a	%a15, hi:MAIN_MSGu8Can01_Tx07_Output_Current
	ld.bu	%d15, [%a15] lo:MAIN_MSGu8Can01_Tx07_Output_Current
	.loc 1 1508 0
	st.b	[%a4] 2, %d3
	.loc 1 1514 0
	jnz	%d15, .L323
	.loc 1 1516 0
	st.b	[%a15] lo:MAIN_MSGu8Can01_Tx07_Output_Current, %d15
.L323:
	.loc 1 1523 0
	movh.a	%a15, hi:MAIN_MSGf32Can01_Tx07_SDCAC_MotorTemp
	ld.w	%d2, [%a15] lo:MAIN_MSGf32Can01_Tx07_SDCAC_MotorTemp
	.loc 1 1519 0
	st.b	[%a4] 3, %d15
.LVL101:
	.loc 1 1523 0
	movh	%d15, 17234
	cmp.f	%d15, %d2, %d15
	or.t	%d15, %d15,2, %d15,1
	mov	%d3, 250
	jnz	%d15, .L324
	.loc 1 1527 0
	movh	%d15, 49696
	cmp.f	%d15, %d2, %d15
	or.t	%d15, %d15,0, %d15,1
	mov	%d3, 0
	jz	%d15, .L340
.LVL102:
.L324:
	.loc 1 1536 0
	movh.a	%a15, hi:MAIN_MSGu8Can01_Tx07_SDCAC_MotorTempRaw
	st.b	[%a15] lo:MAIN_MSGu8Can01_Tx07_SDCAC_MotorTempRaw, %d3
	.loc 1 1542 0
	movh.a	%a15, hi:MAIN_MSGf32Can01_Tx07_AirCompressor_Temp
	ld.w	%d2, [%a15] lo:MAIN_MSGf32Can01_Tx07_AirCompressor_Temp
	movh	%d15, 17234
	cmp.f	%d15, %d2, %d15
	.loc 1 1538 0
	st.b	[%a4] 4, %d3
.LVL103:
	.loc 1 1542 0
	or.t	%d15, %d15,2, %d15,1
	mov	%d3, 250
	jnz	%d15, .L325
	.loc 1 1546 0
	movh	%d15, 49696
	cmp.f	%d15, %d2, %d15
	or.t	%d15, %d15,0, %d15,1
	mov	%d3, 0
	jz	%d15, .L341
.LVL104:
.L325:
	.loc 1 1555 0
	movh.a	%a15, hi:MAIN_MSGu8Can01_Tx07_AirCompressor_TempRaw
	st.b	[%a15] lo:MAIN_MSGu8Can01_Tx07_AirCompressor_TempRaw, %d3
	.loc 1 1559 0
	movh.a	%a15, hi:MAIN_MSGu8Can01_Tx07_Controller_Operating_Sts
	ld.bu	%d15, [%a15] lo:MAIN_MSGu8Can01_Tx07_Controller_Operating_Sts
	.loc 1 1557 0
	st.b	[%a4] 5, %d3
	.loc 1 1559 0
	jlt.u	%d15, 3, .L326
	.loc 1 1561 0
	mov	%d15, 3
	st.b	[%a15] lo:MAIN_MSGu8Can01_Tx07_Controller_Operating_Sts, %d15
	mov	%d15, 3
.L327:
	.loc 1 1570 0
	movh.a	%a15, hi:MAIN_MSGbCan01_Tx07_Hardwire_Enable_Signal_Sts
	ld.bu	%d2, [%a15] lo:MAIN_MSGbCan01_Tx07_Hardwire_Enable_Signal_Sts
	.loc 1 1572 0
	ne	%d2, %d2, 0
	st.b	[%a15] lo:MAIN_MSGbCan01_Tx07_Hardwire_Enable_Signal_Sts, %d2
	.loc 1 1579 0
	sh	%d2, 2
	or	%d15, %d2
	.loc 1 1581 0
	movh.a	%a15, hi:MAIN_MSGu8Can01_Tx07_Heartbeat_Signal
	.loc 1 1579 0
	st.b	[%a4] 6, %d15
	.loc 1 1581 0
	ld.bu	%d15, [%a15] lo:MAIN_MSGu8Can01_Tx07_Heartbeat_Signal
	mov	%d2, 1
	.loc 1 1585 0
	jz	%d15, .L329
	add	%d2, %d15, 1
	and	%d2, %d2, 255
.L329:
	.loc 1 1598 0
	mov	%d4, 26
	.loc 1 1590 0
	st.b	[%a4] 7, %d15
	.loc 1 1592 0
	st.b	[%a15] lo:MAIN_MSGu8Can01_Tx07_Heartbeat_Signal, %d2
	.loc 1 1598 0
	j	Com_SendSignal
.LVL105:
.L326:
	.loc 1 1563 0
	jnz	%d15, .L327
	.loc 1 1565 0
	st.b	[%a15] lo:MAIN_MSGu8Can01_Tx07_Controller_Operating_Sts, %d15
	j	.L327
.LVL106:
.L341:
	movh	%d3, 16928
	add.f	%d2, %d2, %d3
.LVL107:
	ftouz	%d2, %d2
	and	%d3, %d2, 255
	j	.L325
.LVL108:
.L340:
	movh	%d3, 16928
	add.f	%d2, %d2, %d3
.LVL109:
	ftouz	%d2, %d2
	and	%d3, %d2, 255
	j	.L324
.LFE12:
	.size	MAIN_MSGvidCan01_Tx07_ACUST1_0x18FF2130, .-MAIN_MSGvidCan01_Tx07_ACUST1_0x18FF2130
	.align 1
	.global	MAIN_MSGvidCan01_Tx08_ACUST2_0x18FF2230
	.type	MAIN_MSGvidCan01_Tx08_ACUST2_0x18FF2230, @function
MAIN_MSGvidCan01_Tx08_ACUST2_0x18FF2230:
.LFB13:
	.loc 1 1602 0
	.loc 1 1605 0
	movh.a	%a15, hi:MAIN_MSGu8Can01_Tx08_ACUST2_buf
	mov	%d15, 0
	lea	%a4, [%a15] lo:MAIN_MSGu8Can01_Tx08_ACUST2_buf
	.loc 1 1615 0
	movh.a	%a2, hi:MAIN_MSGf32Can01_Tx08_AirCompressor_Motor_Speed
	.loc 1 1605 0
	st.b	[%a4] 1, %d15
	.loc 1 1606 0
	st.b	[%a4] 2, %d15
	.loc 1 1607 0
	st.b	[%a4] 3, %d15
	.loc 1 1608 0
	st.b	[%a4] 4, %d15
	.loc 1 1609 0
	st.b	[%a4] 5, %d15
.LVL110:
	.loc 1 1615 0
	ld.w	%d2, [%a2] lo:MAIN_MSGf32Can01_Tx08_AirCompressor_Motor_Speed
	movh	%d15, 17724
	addi	%d15, %d15, -32768
	cmp.f	%d15, %d2, %d15
	or.t	%d15, %d15,2, %d15,1
	mov	%d3, 150
	jnz	%d15, .L343
	.loc 1 1619 0
	mov	%d15, 0
	cmp.f	%d15, %d2, %d15
	or.t	%d15, %d15,0, %d15,1
	mov	%d3, 0
	jnz	%d15, .L343
.LVL111:
	movh	%d3, 16800
	div.f	%d2, %d2, %d3
.LVL112:
	ftouz	%d2, %d2
	and	%d3, %d2, 255
.LVL113:
.L343:
	.loc 1 1630 0
	st.b	[%a15] lo:MAIN_MSGu8Can01_Tx08_ACUST2_buf, %d3
	.loc 1 1632 0
	movh.a	%a15, hi:MAIN_MSGu8Can01_Tx08_Internal_Fault_Code
	.loc 1 1628 0
	movh.a	%a2, hi:MAIN_MSGu8Can01_Tx08_AirCompressor_Motor_SpeedRaw
	.loc 1 1632 0
	ld.bu	%d15, [%a15] lo:MAIN_MSGu8Can01_Tx08_Internal_Fault_Code
	.loc 1 1628 0
	st.b	[%a2] lo:MAIN_MSGu8Can01_Tx08_AirCompressor_Motor_SpeedRaw, %d3
	.loc 1 1636 0
	jnz	%d15, .L344
	.loc 1 1638 0
	st.b	[%a15] lo:MAIN_MSGu8Can01_Tx08_Internal_Fault_Code, %d15
.L344:
	.loc 1 1645 0
	movh.a	%a15, hi:MAIN_MSGf32Can01_Tx08_Software_Version
	.loc 1 1641 0
	st.b	[%a4] 6, %d15
.LVL114:
	.loc 1 1645 0
	ld.w	%d2, [%a15] lo:MAIN_MSGf32Can01_Tx08_Software_Version
	movh	%d15, 16419
	addi	%d15, %d15, -28836
	cmp.f	%d15, %d2, %d15
	or.t	%d15, %d15,2, %d15,1
	mov	%d3, 254
	jnz	%d15, .L345
	.loc 1 1649 0
	mov	%d15, 0
	cmp.f	%d15, %d2, %d15
	or.t	%d15, %d15,0, %d15,1
	mov	%d3, 0
	jnz	%d15, .L345
.LVL115:
	movh	%d3, 15396
	addi	%d3, %d3, -10486
	div.f	%d2, %d2, %d3
.LVL116:
	ftouz	%d2, %d2
	and	%d3, %d2, 255
.LVL117:
.L345:
	.loc 1 1658 0
	movh.a	%a15, hi:MAIN_MSGu8Can01_Tx08_Software_VersionRaw
	.loc 1 1662 0
	mov	%d4, 27
	.loc 1 1658 0
	st.b	[%a15] lo:MAIN_MSGu8Can01_Tx08_Software_VersionRaw, %d3
	.loc 1 1660 0
	st.b	[%a4] 7, %d3
	.loc 1 1662 0
	j	Com_SendSignal
.LVL118:
.LFE13:
	.size	MAIN_MSGvidCan01_Tx08_ACUST2_0x18FF2230, .-MAIN_MSGvidCan01_Tx08_ACUST2_0x18FF2230
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
	.uaword	.LFB0
	.uaword	.LFE0-.LFB0
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB1
	.uaword	.LFE1-.LFB1
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB2
	.uaword	.LFE2-.LFB2
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB3
	.uaword	.LFE3-.LFB3
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB4
	.uaword	.LFE4-.LFB4
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB5
	.uaword	.LFE5-.LFB5
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB6
	.uaword	.LFE6-.LFB6
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB7
	.uaword	.LFE7-.LFB7
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB8
	.uaword	.LFE8-.LFB8
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB9
	.uaword	.LFE9-.LFB9
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB10
	.uaword	.LFE10-.LFB10
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB11
	.uaword	.LFE11-.LFB11
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB12
	.uaword	.LFE12-.LFB12
	.align 2
.LEFDE24:
.LSFDE26:
	.uaword	.LEFDE26-.LASFDE26
.LASFDE26:
	.uaword	.Lframe0
	.uaword	.LFB13
	.uaword	.LFE13-.LFB13
	.align 2
.LEFDE26:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cfg.h"
	.file 4 ".\\output\\inc/..\\..\\bswcdd\\BSW\\CAN01\\CAN01_DEF.h"
	.file 5 ".\\output\\inc/..\\..\\main\\McuMain\\MAIN_L.h"
	.file 6 "main\\AutoMSG\\MAIN_MSG_Auto_Can01_L.h"
	.file 7 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x2cd0
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"main\\AutoMSG\\MAIN_MSG_Auto_Can01.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ltext0
	.uaword	.Letext0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x2
	.byte	0x51
	.uaword	0x1c9
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
	.uaword	0x1f5
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
	.uleb128 0x3
	.string	"float32"
	.byte	0x2
	.byte	0x75
	.uaword	0x25c
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
	.uaword	0x1c9
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x3
	.string	"Com_SignalIdType"
	.byte	0x3
	.byte	0x71
	.uaword	0x1e7
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2c9
	.uleb128 0x5
	.uleb128 0x6
	.byte	0x1
	.string	"MAIN_MSGvidCan01_Rx01_PDUMC1_0x18F71E31"
	.byte	0x1
	.byte	0x16
	.byte	0x1
	.uaword	.LFB0
	.uaword	.LFE0
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x31d
	.uleb128 0x7
	.uaword	.LVL0
	.uaword	0x2c80
	.uleb128 0x8
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.string	"MAIN_MSGvidCan01_Rx02_HSMC1_0x18F02E31"
	.byte	0x1
	.uahalf	0x11e
	.byte	0x1
	.uaword	.LFB1
	.uaword	.LFE1
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x370
	.uleb128 0x7
	.uaword	.LVL1
	.uaword	0x2c80
	.uleb128 0x8
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.string	"MAIN_MSGvidCan01_Rx03_HSSTC_0x18EF2E31"
	.byte	0x1
	.uahalf	0x13f
	.byte	0x1
	.uaword	.LFB2
	.uaword	.LFE2
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x3f1
	.uleb128 0xa
	.string	"f32LocSteerpump_Motor_Targetspeed"
	.byte	0x1
	.uahalf	0x141
	.uaword	0x24d
	.uaword	.LLST0
	.uleb128 0x7
	.uaword	.LVL3
	.uaword	0x2c80
	.uleb128 0x8
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.string	"MAIN_MSGvidCan01_Rx04_ACUMC1_0x18F53031"
	.byte	0x1
	.uahalf	0x167
	.byte	0x1
	.uaword	.LFB3
	.uaword	.LFE3
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x475
	.uleb128 0xa
	.string	"f32LocAircompressor_Motor_Targspeed"
	.byte	0x1
	.uahalf	0x169
	.uaword	0x24d
	.uaword	.LLST1
	.uleb128 0x7
	.uaword	.LVL6
	.uaword	0x2c80
	.uleb128 0x8
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.string	"MAIN_MSGvidCan01_Rx05_AIR1_0x18FEAE30"
	.byte	0x1
	.uahalf	0x19a
	.byte	0x1
	.uaword	.LFB4
	.uaword	.LFE4
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x4e7
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x19c
	.uaword	0x24d
	.uaword	.LLST2
	.uleb128 0xb
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x19d
	.uaword	0x24d
	.uaword	.LLST3
	.uleb128 0x7
	.uaword	.LVL9
	.uaword	0x2c80
	.uleb128 0x8
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.string	"MAIN_MSGvidCan01_Rx06_AIR1_0x18FEAE32"
	.byte	0x1
	.uahalf	0x1c9
	.byte	0x1
	.uaword	.LFB5
	.uaword	.LFE5
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x559
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x1cb
	.uaword	0x24d
	.uaword	.LLST4
	.uleb128 0xb
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x1cc
	.uaword	0x24d
	.uaword	.LLST5
	.uleb128 0x7
	.uaword	.LVL20
	.uaword	0x2c80
	.uleb128 0x8
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x35
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.string	"MAIN_MSGvidCan01_Tx01_PDUST1_0x18F7011E"
	.byte	0x1
	.uahalf	0x1f8
	.byte	0x1
	.uaword	.LFB6
	.uaword	.LFE6
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x67f
	.uleb128 0xa
	.string	"f32LocLow_input_voltage"
	.byte	0x1
	.uahalf	0x204
	.uaword	0x24d
	.uaword	.LLST6
	.uleb128 0xa
	.string	"f32LocPower_battery_pack_voltage"
	.byte	0x1
	.uahalf	0x217
	.uaword	0x24d
	.uaword	.LLST7
	.uleb128 0xa
	.string	"f32LocMain_pos_contactor_out_voltage"
	.byte	0x1
	.uahalf	0x22b
	.uaword	0x24d
	.uaword	.LLST8
	.uleb128 0xa
	.string	"f32LocPrecharg_resistor_temp"
	.byte	0x1
	.uahalf	0x23f
	.uaword	0x24d
	.uaword	.LLST9
	.uleb128 0xa
	.string	"f32LocPrecharg_time_consumption"
	.byte	0x1
	.uahalf	0x252
	.uaword	0x24d
	.uaword	.LLST10
	.uleb128 0xc
	.uaword	.LVL46
	.byte	0x1
	.uaword	0x2cae
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x44
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.string	"MAIN_MSGvidCan01_Tx02_PDUST2_0x18F7021E"
	.byte	0x1
	.uahalf	0x2c0
	.byte	0x1
	.uaword	.LFB7
	.uaword	.LFE7
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x740
	.uleb128 0xb
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x324
	.uaword	0x24d
	.uaword	.LLST11
	.uleb128 0xa
	.string	"f32LocOutputvoltage_of_UpperCircuit_Contactor"
	.byte	0x1
	.uahalf	0x337
	.uaword	0x24d
	.uaword	.LLST12
	.uleb128 0xd
	.uaword	.LVL55
	.byte	0x1
	.uaword	0x2cae
	.uaword	0x71b
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x45
	.byte	0
	.uleb128 0xd
	.uaword	.LVL56
	.byte	0x1
	.uaword	0x2cae
	.uaword	0x72f
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x45
	.byte	0
	.uleb128 0xc
	.uaword	.LVL57
	.byte	0x1
	.uaword	0x2cae
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x45
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.string	"MAIN_MSGvidCan01_Tx03_PDUST3_0x18F7031E"
	.byte	0x1
	.uahalf	0x38b
	.byte	0x1
	.uaword	.LFB8
	.uaword	.LFE8
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x7b7
	.uleb128 0xd
	.uaword	.LVL58
	.byte	0x1
	.uaword	0x2cae
	.uaword	0x792
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x46
	.byte	0
	.uleb128 0xd
	.uaword	.LVL59
	.byte	0x1
	.uaword	0x2cae
	.uaword	0x7a6
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x46
	.byte	0
	.uleb128 0xc
	.uaword	.LVL60
	.byte	0x1
	.uaword	0x2cae
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x46
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.string	"MAIN_MSGvidCan01_Tx04_PDUST4_0x18F7041E"
	.byte	0x1
	.uahalf	0x497
	.byte	0x1
	.uaword	.LFB9
	.uaword	.LFE9
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x8a1
	.uleb128 0xa
	.string	"f32LocPositivepole_to_ground_resistance_value"
	.byte	0x1
	.uahalf	0x4a3
	.uaword	0x24d
	.uaword	.LLST13
	.uleb128 0xa
	.string	"f32LocNegativepole_to_ground_resistance_value"
	.byte	0x1
	.uahalf	0x4b7
	.uaword	0x24d
	.uaword	.LLST14
	.uleb128 0xa
	.string	"f32LocChargingpile_voltage"
	.byte	0x1
	.uahalf	0x4cb
	.uaword	0x24d
	.uaword	.LLST15
	.uleb128 0xc
	.uaword	.LVL70
	.byte	0x1
	.uaword	0x2cae
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x47
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.string	"MAIN_MSGvidCan01_Tx05_HSST1_0x0CF6012E"
	.byte	0x1
	.uahalf	0x4e2
	.byte	0x1
	.uaword	.LFB10
	.uaword	.LFE10
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x968
	.uleb128 0xa
	.string	"f32LocOutput_Current"
	.byte	0x1
	.uahalf	0x50b
	.uaword	0x24d
	.uaword	.LLST16
	.uleb128 0xa
	.string	"f32LocSteering_Oil_DCAC_Module_Temp"
	.byte	0x1
	.uahalf	0x51f
	.uaword	0x24d
	.uaword	.LLST17
	.uleb128 0xd
	.uaword	.LVL76
	.byte	0x1
	.uaword	0x2cae
	.uaword	0x943
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x48
	.byte	0
	.uleb128 0xd
	.uaword	.LVL77
	.byte	0x1
	.uaword	0x2cae
	.uaword	0x957
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x48
	.byte	0
	.uleb128 0xc
	.uaword	.LVL80
	.byte	0x1
	.uaword	0x2cae
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x48
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.string	"MAIN_MSGvidCan01_Tx06_HSST2_0x0CF6022E"
	.byte	0x1
	.uahalf	0x54b
	.byte	0x1
	.uaword	.LFB11
	.uaword	.LFE11
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x9f9
	.uleb128 0xa
	.string	"f32LocSteer_Motor_Temp"
	.byte	0x1
	.uahalf	0x557
	.uaword	0x24d
	.uaword	.LLST18
	.uleb128 0xb
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x56a
	.uaword	0x24d
	.uaword	.LLST19
	.uleb128 0xb
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x593
	.uaword	0x24d
	.uaword	.LLST20
	.uleb128 0xc
	.uaword	.LVL91
	.byte	0x1
	.uaword	0x2cae
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x49
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.string	"MAIN_MSGvidCan01_Tx07_ACUST1_0x18FF2130"
	.byte	0x1
	.uahalf	0x5a9
	.byte	0x1
	.uaword	.LFB12
	.uaword	.LFE12
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xac0
	.uleb128 0xb
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x5b5
	.uaword	0x24d
	.uaword	.LLST21
	.uleb128 0xa
	.string	"f32LocOutput_Voltage"
	.byte	0x1
	.uahalf	0x5d3
	.uaword	0x24d
	.uaword	.LLST22
	.uleb128 0xa
	.string	"f32LocSDCAC_MotorTemp"
	.byte	0x1
	.uahalf	0x5f1
	.uaword	0x24d
	.uaword	.LLST23
	.uleb128 0xa
	.string	"f32LocAirCompressor_Temp"
	.byte	0x1
	.uahalf	0x604
	.uaword	0x24d
	.uaword	.LLST24
	.uleb128 0xc
	.uaword	.LVL105
	.byte	0x1
	.uaword	0x2cae
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x4a
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.string	"MAIN_MSGvidCan01_Tx08_ACUST2_0x18FF2230"
	.byte	0x1
	.uahalf	0x641
	.byte	0x1
	.uaword	.LFB13
	.uaword	.LFE13
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xb4b
	.uleb128 0xa
	.string	"f32LocAirCompressor_Motor_Speed"
	.byte	0x1
	.uahalf	0x64d
	.uaword	0x24d
	.uaword	.LLST25
	.uleb128 0xb
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x66b
	.uaword	0x24d
	.uaword	.LLST26
	.uleb128 0xc
	.uaword	.LVL118
	.byte	0x1
	.uaword	0x2cae
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x4b
	.byte	0
	.byte	0
	.uleb128 0xe
	.string	"BSW_bRxTOutFlag_Can01_Rx01"
	.byte	0x4
	.byte	0x22
	.uaword	0x26f
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"BSW_bRxTOutFlag_Can01_Rx02"
	.byte	0x4
	.byte	0x23
	.uaword	0x26f
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"BSW_bRxTOutFlag_Can01_Rx03"
	.byte	0x4
	.byte	0x24
	.uaword	0x26f
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"BSW_bRxTOutFlag_Can01_Rx04"
	.byte	0x4
	.byte	0x25
	.uaword	0x26f
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"BSW_bRxTOutFlag_Can01_Rx05"
	.byte	0x4
	.byte	0x26
	.uaword	0x26f
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"BSW_bRxTOutFlag_Can01_Rx06"
	.byte	0x4
	.byte	0x27
	.uaword	0x26f
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_bMSGRxToutBenchOnC"
	.byte	0x5
	.byte	0x36
	.uaword	0xc44
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.uaword	0x26f
	.uleb128 0xe
	.string	"MAIN_bComRxDisableFlgByUds"
	.byte	0x5
	.byte	0x37
	.uaword	0xc44
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.uaword	0x1bc
	.uaword	0xc7d
	.uleb128 0x11
	.uaword	0x2b7
	.byte	0x7
	.byte	0
	.uleb128 0xe
	.string	"MAIN_MSGu8Can01_Rx01_PDUMC1_buf"
	.byte	0x6
	.byte	0x16
	.uaword	0xc6d
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGu8Can01_Rx02_HSMC1_buf"
	.byte	0x6
	.byte	0x17
	.uaword	0xc6d
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGu8Can01_Rx03_HSSTC_buf"
	.byte	0x6
	.byte	0x18
	.uaword	0xc6d
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGu8Can01_Rx04_ACUMC1_buf"
	.byte	0x6
	.byte	0x19
	.uaword	0xc6d
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGu8Can01_Rx05_AIR1_buf"
	.byte	0x6
	.byte	0x1a
	.uaword	0xc6d
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGu8Can01_Rx06_AIR1_buf"
	.byte	0x6
	.byte	0x1b
	.uaword	0xc6d
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGu8Can01_Tx01_PDUST1_buf"
	.byte	0x6
	.byte	0x1c
	.uaword	0xc6d
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGu8Can01_Tx02_PDUST2_buf"
	.byte	0x6
	.byte	0x1d
	.uaword	0xc6d
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGu8Can01_Tx03_PDUST3_buf"
	.byte	0x6
	.byte	0x1e
	.uaword	0xc6d
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGu8Can01_Tx04_PDUST4_buf"
	.byte	0x6
	.byte	0x1f
	.uaword	0xc6d
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGu8Can01_Tx05_HSST1_buf"
	.byte	0x6
	.byte	0x20
	.uaword	0xc6d
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGu8Can01_Tx06_HSST2_buf"
	.byte	0x6
	.byte	0x21
	.uaword	0xc6d
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGu8Can01_Tx07_ACUST1_buf"
	.byte	0x6
	.byte	0x22
	.uaword	0xc6d
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGu8Can01_Tx08_ACUST2_buf"
	.byte	0x6
	.byte	0x23
	.uaword	0xc6d
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGu8Can01_Rx03_Steerpump_Motor_TargetspeedRaw"
	.byte	0x6
	.byte	0x25
	.uaword	0x1bc
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGu8Can01_Rx04_Aircompressor_Motor_TargspeedRaw"
	.byte	0x6
	.byte	0x26
	.uaword	0x1bc
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGu8Can01_Rx05_TCU_MotorWorkModReqRaw"
	.byte	0x6
	.byte	0x27
	.uaword	0x1bc
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGu8Can01_Rx05_TCU_MotorTorReqRaw"
	.byte	0x6
	.byte	0x28
	.uaword	0x1bc
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGu8Can01_Rx06_TCU_MotorWorkModReqRaw"
	.byte	0x6
	.byte	0x29
	.uaword	0x1bc
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGu8Can01_Rx06_TCU_MotorTorReqRaw"
	.byte	0x6
	.byte	0x2a
	.uaword	0x1bc
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGu8Can01_Tx01_Low_input_voltageRaw"
	.byte	0x6
	.byte	0x2b
	.uaword	0x1bc
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGu16Can01_Tx01_Power_battery_pack_voltageRaw"
	.byte	0x6
	.byte	0x2c
	.uaword	0x1e7
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGu16Can01_Tx01_Main_pos_contactor_out_voltageRaw"
	.byte	0x6
	.byte	0x2d
	.uaword	0x1e7
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGu8Can01_Tx01_Precharg_resistor_tempRaw"
	.byte	0x6
	.byte	0x2e
	.uaword	0x1bc
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGu8Can01_Tx01_Precharg_time_consumptionRaw"
	.byte	0x6
	.byte	0x2f
	.uaword	0x1bc
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGu8Can01_Tx02_Software_VersionRaw"
	.byte	0x6
	.byte	0x30
	.uaword	0x1bc
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGu16Can01_Tx02_Outputvoltage_of_UpperCircuit_ContactorRaw"
	.byte	0x6
	.byte	0x31
	.uaword	0x1e7
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGu16Can01_Tx04_Positivepole_to_ground_resistance_valueRaw"
	.byte	0x6
	.byte	0x32
	.uaword	0x1e7
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGu16Can01_Tx04_Negativepole_to_ground_resistance_valueRaw"
	.byte	0x6
	.byte	0x33
	.uaword	0x1e7
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGu16Can01_Tx04_Chargingpile_voltageRaw"
	.byte	0x6
	.byte	0x34
	.uaword	0x1e7
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGu16Can01_Tx05_Output_CurrentRaw"
	.byte	0x6
	.byte	0x35
	.uaword	0x1e7
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGu8Can01_Tx05_Steering_Oil_DCAC_Module_TempRaw"
	.byte	0x6
	.byte	0x36
	.uaword	0x1bc
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGu8Can01_Tx06_Steer_Motor_TempRaw"
	.byte	0x6
	.byte	0x37
	.uaword	0x1bc
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGu8Can01_Tx06_Input_VoltageRaw"
	.byte	0x6
	.byte	0x38
	.uaword	0x1bc
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGu8Can01_Tx06_Software_VersionRaw"
	.byte	0x6
	.byte	0x39
	.uaword	0x1bc
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGu8Can01_Tx07_Input_VoltageRaw"
	.byte	0x6
	.byte	0x3a
	.uaword	0x1bc
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGu8Can01_Tx07_Output_VoltageRaw"
	.byte	0x6
	.byte	0x3b
	.uaword	0x1bc
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGu8Can01_Tx07_SDCAC_MotorTempRaw"
	.byte	0x6
	.byte	0x3c
	.uaword	0x1bc
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGu8Can01_Tx07_AirCompressor_TempRaw"
	.byte	0x6
	.byte	0x3d
	.uaword	0x1bc
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGu8Can01_Tx08_AirCompressor_Motor_SpeedRaw"
	.byte	0x6
	.byte	0x3e
	.uaword	0x1bc
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGu8Can01_Tx08_Software_VersionRaw"
	.byte	0x6
	.byte	0x3f
	.uaword	0x1bc
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGbCan01_Rx01_Power_Enable_Signal"
	.byte	0x6
	.byte	0x41
	.uaword	0x26f
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGbCan01_Rx01_Key_Signal"
	.byte	0x6
	.byte	0x42
	.uaword	0x26f
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGbCan01_Rx01_Auxiliary_Contactor_Enable"
	.byte	0x6
	.byte	0x43
	.uaword	0x26f
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGbCan01_Rx01_PTC_Enable_Signal"
	.byte	0x6
	.byte	0x44
	.uaword	0x26f
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGbCan01_Rx01_Upper_Enable_Signal"
	.byte	0x6
	.byte	0x45
	.uaword	0x26f
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGbCan01_Rx01_Keyon_Signal_Sts"
	.byte	0x6
	.byte	0x46
	.uaword	0x26f
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGbCan01_Rx01_Insulationresistance_Ctrl_Cmd"
	.byte	0x6
	.byte	0x47
	.uaword	0x26f
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGbCan01_Rx01_NegContactor_Ctrl_Cmd"
	.byte	0x6
	.byte	0x48
	.uaword	0x26f
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGbCan01_Rx01_Cab1_PTC_MOS_Switch_Cmd"
	.byte	0x6
	.byte	0x49
	.uaword	0x26f
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGbCan01_Rx01_Cab2_PTC_MOS_Switch_Cmd"
	.byte	0x6
	.byte	0x4a
	.uaword	0x26f
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGbCan01_Rx01_Batteryheat1_MOS_Switch_Cmd"
	.byte	0x6
	.byte	0x4b
	.uaword	0x26f
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGbCan01_Rx01_Batteryheat2_MOS_Switch_Cmd"
	.byte	0x6
	.byte	0x4c
	.uaword	0x26f
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGbCan01_Rx01_Batteryheat3_MOS_Switch_Cmd"
	.byte	0x6
	.byte	0x4d
	.uaword	0x26f
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGbCan01_Rx01_Batteryheat4_MOS_Switch_Cmd"
	.byte	0x6
	.byte	0x4e
	.uaword	0x26f
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGbCan01_Rx01_ChargCircuit1_PosContactor_Ctrl_Cmd"
	.byte	0x6
	.byte	0x4f
	.uaword	0x26f
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGbCan01_Rx01_ChargCircuit1_NegContactor_Ctrl_Cmd"
	.byte	0x6
	.byte	0x50
	.uaword	0x26f
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGbCan01_Rx01_ChargCircuit2_PosContactor_Ctrl_Cmd"
	.byte	0x6
	.byte	0x51
	.uaword	0x26f
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGbCan01_Rx01_ChargCircuit2_NegContactor_Ctrl_Cmd"
	.byte	0x6
	.byte	0x52
	.uaword	0x26f
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGbCan01_Rx01_ChargCircuit3_PosContactor_Ctrl_Cmd"
	.byte	0x6
	.byte	0x53
	.uaword	0x26f
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGbCan01_Rx01_ChargCircuit3_NegContactor_Ctrl_Cmd"
	.byte	0x6
	.byte	0x54
	.uaword	0x26f
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGbCan01_Rx01_ChargCircuit4_PosContactor_Ctrl_Cmd"
	.byte	0x6
	.byte	0x55
	.uaword	0x26f
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGbCan01_Rx01_ChargCircuit4_NegContactor_Ctrl_Cmd"
	.byte	0x6
	.byte	0x56
	.uaword	0x26f
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGu8Can01_Rx01_Heartbeat_Signal"
	.byte	0x6
	.byte	0x57
	.uaword	0x1bc
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGu8Can01_Rx02_HV_STEERING_REQUEST"
	.byte	0x6
	.byte	0x58
	.uaword	0x1bc
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGu8Can01_Rx02_HEARTBEAT"
	.byte	0x6
	.byte	0x59
	.uaword	0x1bc
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGf32Can01_Rx03_Steerpump_Motor_Targetspeed"
	.byte	0x6
	.byte	0x5a
	.uaword	0x24d
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGu8Can01_Rx03_Heartbeat_Signal"
	.byte	0x6
	.byte	0x5b
	.uaword	0x1bc
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGbCan01_Rx04_Acu_Inhibit_Cmd"
	.byte	0x6
	.byte	0x5c
	.uaword	0x26f
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGf32Can01_Rx04_Aircompressor_Motor_Targspeed"
	.byte	0x6
	.byte	0x5d
	.uaword	0x24d
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGu8Can01_Rx04_CtrlMsg_Cycle_Counter"
	.byte	0x6
	.byte	0x5e
	.uaword	0x1bc
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGf32Can01_Rx05_TCU_MotorWorkModReq"
	.byte	0x6
	.byte	0x5f
	.uaword	0x24d
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGf32Can01_Rx05_TCU_MotorTorReq"
	.byte	0x6
	.byte	0x60
	.uaword	0x24d
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGf32Can01_Rx06_TCU_MotorWorkModReq"
	.byte	0x6
	.byte	0x61
	.uaword	0x24d
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGf32Can01_Rx06_TCU_MotorTorReq"
	.byte	0x6
	.byte	0x62
	.uaword	0x24d
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGf32Can01_Tx01_Low_input_voltage"
	.byte	0x6
	.byte	0x63
	.uaword	0x24d
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGf32Can01_Tx01_Power_battery_pack_voltage"
	.byte	0x6
	.byte	0x64
	.uaword	0x24d
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGf32Can01_Tx01_Main_pos_contactor_out_voltage"
	.byte	0x6
	.byte	0x65
	.uaword	0x24d
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGf32Can01_Tx01_Precharg_resistor_temp"
	.byte	0x6
	.byte	0x66
	.uaword	0x24d
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGf32Can01_Tx01_Precharg_time_consumption"
	.byte	0x6
	.byte	0x67
	.uaword	0x24d
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGbCan01_Tx01_Enable_signal"
	.byte	0x6
	.byte	0x68
	.uaword	0x26f
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGbCan01_Tx01_Key_signal"
	.byte	0x6
	.byte	0x69
	.uaword	0x26f
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGbCan01_Tx01_Precharge_contactor_on"
	.byte	0x6
	.byte	0x6a
	.uaword	0x26f
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGbCan01_Tx01_Positive_contactor_on"
	.byte	0x6
	.byte	0x6b
	.uaword	0x26f
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGbCan01_Tx01_Voltage_diff_of_positive_contactor"
	.byte	0x6
	.byte	0x6c
	.uaword	0x26f
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGbCan01_Tx01_Positive_contactor_status"
	.byte	0x6
	.byte	0x6d
	.uaword	0x26f
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGbCan01_Tx01_Poweron_selftest_ok_signal"
	.byte	0x6
	.byte	0x6e
	.uaword	0x26f
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGbCan01_Tx01_Highvoltage_of_circuit_positive_contactor"
	.byte	0x6
	.byte	0x6f
	.uaword	0x26f
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGu8Can01_Tx02_Stuck_Status_Feedback"
	.byte	0x6
	.byte	0x70
	.uaword	0x1bc
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGu8Can01_Tx02_1stStage_PTC_MOS_Switch_Command"
	.byte	0x6
	.byte	0x71
	.uaword	0x1bc
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGu8Can01_Tx02_2stStage_PTC_MOS_Switch_Command"
	.byte	0x6
	.byte	0x72
	.uaword	0x1bc
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGbCan01_Tx02_PTC_Contactor_Status"
	.byte	0x6
	.byte	0x73
	.uaword	0x26f
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGbCan01_Tx02_UpperCircuit_Contactor_On"
	.byte	0x6
	.byte	0x74
	.uaword	0x26f
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGbCan01_Tx02_UpperCircuit_Precharge_Contactor_On"
	.byte	0x6
	.byte	0x75
	.uaword	0x26f
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGbCan01_Tx02_UpperCircuit_Contactor_Status"
	.byte	0x6
	.byte	0x76
	.uaword	0x26f
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGu8Can01_Tx02_Internal_Trouble_Code"
	.byte	0x6
	.byte	0x77
	.uaword	0x1bc
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGf32Can01_Tx02_Software_Version"
	.byte	0x6
	.byte	0x78
	.uaword	0x24d
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGf32Can01_Tx02_Outputvoltage_of_UpperCircuit_Contactor"
	.byte	0x6
	.byte	0x79
	.uaword	0x24d
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGu8Can01_Tx02_Heartbeat_Signal"
	.byte	0x6
	.byte	0x7a
	.uaword	0x1bc
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGbCan01_Tx02_AuxiliaryContactor_Status"
	.byte	0x6
	.byte	0x7b
	.uaword	0x26f
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGu8Can01_Tx02_AuxiliaryContactor_On"
	.byte	0x6
	.byte	0x7c
	.uaword	0x1bc
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGu8Can01_Tx02_PTCContactor_On"
	.byte	0x6
	.byte	0x7d
	.uaword	0x1bc
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGu8Can01_Tx02_PTCContactor2_On"
	.byte	0x6
	.byte	0x7e
	.uaword	0x1bc
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGu8Can01_Tx03_Insulation_Resistance_Sts"
	.byte	0x6
	.byte	0x7f
	.uaword	0x1bc
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGu8Can01_Tx03_Negative_Contactor_Sts"
	.byte	0x6
	.byte	0x80
	.uaword	0x1bc
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGu8Can01_Tx03_Number_of_Positive_Contactors"
	.byte	0x6
	.byte	0x81
	.uaword	0x1bc
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGu8Can01_Tx03_Positive_Contactor1_Sts"
	.byte	0x6
	.byte	0x82
	.uaword	0x1bc
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGu8Can01_Tx03_Positive_Contactor2_Sts"
	.byte	0x6
	.byte	0x83
	.uaword	0x1bc
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGu8Can01_Tx03_Positive_Contactor3_Sts"
	.byte	0x6
	.byte	0x84
	.uaword	0x1bc
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGu8Can01_Tx03_Positive_Contactor4_Sts"
	.byte	0x6
	.byte	0x85
	.uaword	0x1bc
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGu8Can01_Tx03_OnStatus_of_Cab1_Stage_PTC_Switch"
	.byte	0x6
	.byte	0x86
	.uaword	0x1bc
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGu8Can01_Tx03_OnStatus_of_Cab2_Stage_PTC_Switch"
	.byte	0x6
	.byte	0x87
	.uaword	0x1bc
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGu8Can01_Tx03_OnStatus_of_BatteryHeating1_Switch"
	.byte	0x6
	.byte	0x88
	.uaword	0x1bc
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGu8Can01_Tx03_OnStatus_of_BatteryHeating2_Switch"
	.byte	0x6
	.byte	0x89
	.uaword	0x1bc
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGu8Can01_Tx03_OnStatus_of_BatteryHeating3_Switch"
	.byte	0x6
	.byte	0x8a
	.uaword	0x1bc
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGu8Can01_Tx03_OnStatus_of_BatteryHeating4_Switch"
	.byte	0x6
	.byte	0x8b
	.uaword	0x1bc
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGu8Can01_Tx03_ChargeCircuit1_Positive_Contactor_Sts"
	.byte	0x6
	.byte	0x8c
	.uaword	0x1bc
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGu8Can01_Tx03_ChargeCircuit1_Negative_Contactor_Sts"
	.byte	0x6
	.byte	0x8d
	.uaword	0x1bc
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGu8Can01_Tx03_ChargeCircuit2_Positive_Contactor_Sts"
	.byte	0x6
	.byte	0x8e
	.uaword	0x1bc
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGu8Can01_Tx03_ChargeCircuit2_Negative_Contactor_Sts"
	.byte	0x6
	.byte	0x8f
	.uaword	0x1bc
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGu8Can01_Tx03_ChargeCircuit3_Positive_Contactor_Sts"
	.byte	0x6
	.byte	0x90
	.uaword	0x1bc
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGu8Can01_Tx03_ChargeCircuit3_Negative_Contactor_Sts"
	.byte	0x6
	.byte	0x91
	.uaword	0x1bc
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGu8Can01_Tx03_ChargeCircuit4_Positive_Contactor_Sts"
	.byte	0x6
	.byte	0x92
	.uaword	0x1bc
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGu8Can01_Tx03_ChargeCircuit4_Negative_Contactor_Sts"
	.byte	0x6
	.byte	0x93
	.uaword	0x1bc
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGu8Can01_Tx03_Number_of_Cab_PTC_Switch"
	.byte	0x6
	.byte	0x94
	.uaword	0x1bc
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGu8Can01_Tx03_Number_of_BatteryHeating_PTC_Switch"
	.byte	0x6
	.byte	0x95
	.uaword	0x1bc
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGf32Can01_Tx04_Positivepole_to_ground_resistance_value"
	.byte	0x6
	.byte	0x96
	.uaword	0x24d
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGf32Can01_Tx04_Negativepole_to_ground_resistance_value"
	.byte	0x6
	.byte	0x97
	.uaword	0x24d
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGf32Can01_Tx04_Chargingpile_voltage"
	.byte	0x6
	.byte	0x98
	.uaword	0x24d
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGu8Can01_Tx05_Heartbeat_Signal"
	.byte	0x6
	.byte	0x99
	.uaword	0x1bc
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGu16Can01_Tx05_Motor_Speed"
	.byte	0x6
	.byte	0x9a
	.uaword	0x1e7
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGf32Can01_Tx05_Output_Current"
	.byte	0x6
	.byte	0x9b
	.uaword	0x24d
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGf32Can01_Tx05_Steering_Oil_DCAC_Module_Temp"
	.byte	0x6
	.byte	0x9c
	.uaword	0x24d
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGu8Can01_Tx05_Motor_Sts"
	.byte	0x6
	.byte	0x9d
	.uaword	0x1bc
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGu8Can01_Tx05_Fault_Level"
	.byte	0x6
	.byte	0x9e
	.uaword	0x1bc
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGf32Can01_Tx06_Steer_Motor_Temp"
	.byte	0x6
	.byte	0x9f
	.uaword	0x24d
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGf32Can01_Tx06_Input_Voltage"
	.byte	0x6
	.byte	0xa0
	.uaword	0x24d
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGu8Can01_Tx06_Input_Current"
	.byte	0x6
	.byte	0xa1
	.uaword	0x1bc
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGu8Can01_Tx06_Internal_FaultCode"
	.byte	0x6
	.byte	0xa2
	.uaword	0x1bc
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGf32Can01_Tx06_Software_Version"
	.byte	0x6
	.byte	0xa3
	.uaword	0x24d
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGf32Can01_Tx07_Input_Voltage"
	.byte	0x6
	.byte	0xa4
	.uaword	0x24d
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGu8Can01_Tx07_Input_Current"
	.byte	0x6
	.byte	0xa5
	.uaword	0x1bc
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGf32Can01_Tx07_Output_Voltage"
	.byte	0x6
	.byte	0xa6
	.uaword	0x24d
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGu8Can01_Tx07_Output_Current"
	.byte	0x6
	.byte	0xa7
	.uaword	0x1bc
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGf32Can01_Tx07_SDCAC_MotorTemp"
	.byte	0x6
	.byte	0xa8
	.uaword	0x24d
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGf32Can01_Tx07_AirCompressor_Temp"
	.byte	0x6
	.byte	0xa9
	.uaword	0x24d
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGu8Can01_Tx07_Controller_Operating_Sts"
	.byte	0x6
	.byte	0xaa
	.uaword	0x1bc
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGbCan01_Tx07_Hardwire_Enable_Signal_Sts"
	.byte	0x6
	.byte	0xab
	.uaword	0x26f
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGu8Can01_Tx07_Heartbeat_Signal"
	.byte	0x6
	.byte	0xac
	.uaword	0x1bc
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGf32Can01_Tx08_AirCompressor_Motor_Speed"
	.byte	0x6
	.byte	0xad
	.uaword	0x24d
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGu8Can01_Tx08_Internal_Fault_Code"
	.byte	0x6
	.byte	0xae
	.uaword	0x1bc
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"MAIN_MSGf32Can01_Tx08_Software_Version"
	.byte	0x6
	.byte	0xaf
	.uaword	0x24d
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.byte	0x1
	.string	"Com_ReceiveSignal"
	.byte	0x7
	.uahalf	0x14d
	.byte	0x1
	.uaword	0x1bc
	.byte	0x1
	.uaword	0x2cac
	.uleb128 0x13
	.uaword	0x29f
	.uleb128 0x13
	.uaword	0x2cac
	.byte	0
	.uleb128 0x14
	.byte	0x4
	.uleb128 0x15
	.byte	0x1
	.string	"Com_SendSignal"
	.byte	0x7
	.uahalf	0x106
	.byte	0x1
	.uaword	0x1bc
	.byte	0x1
	.uleb128 0x13
	.uaword	0x29f
	.uleb128 0x13
	.uaword	0x2c3
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uaword	.LVL2-.text
	.uaword	.LVL4-.text
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL4-.text
	.uaword	.LFE2-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL5-.text
	.uaword	.LVL7-.text
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL7-.text
	.uaword	.LFE3-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL8-.text
	.uaword	.LVL10-.text
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL10-.text
	.uaword	.LVL11-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL16-.text
	.uaword	.LVL17-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL18-.text
	.uaword	.LFE4-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL8-.text
	.uaword	.LVL14-.text
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL14-.text
	.uaword	.LVL16-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL16-.text
	.uaword	.LVL17-.text
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL17-.text
	.uaword	.LVL18-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL18-.text
	.uaword	.LFE4-.text
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL19-.text
	.uaword	.LVL21-.text
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL21-.text
	.uaword	.LVL22-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL27-.text
	.uaword	.LVL28-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL29-.text
	.uaword	.LFE5-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL19-.text
	.uaword	.LVL25-.text
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL25-.text
	.uaword	.LVL27-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL27-.text
	.uaword	.LVL28-.text
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL28-.text
	.uaword	.LVL29-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL29-.text
	.uaword	.LFE5-.text
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL30-.text
	.uaword	.LVL31-.text
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL31-.text
	.uaword	.LVL32-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL34-.text
	.uaword	.LVL35-.text
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL35-.text
	.uaword	.LVL36-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL37-.text
	.uaword	.LVL38-.text
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL38-.text
	.uaword	.LVL39-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL40-.text
	.uaword	.LVL41-.text
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL46-.text
	.uaword	.LVL47-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL42-.text
	.uaword	.LVL43-.text
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL43-.text
	.uaword	.LVL44-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL48-.text
	.uaword	.LVL49-.text
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL49-.text
	.uaword	.LVL50-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL52-.text
	.uaword	.LVL53-.text
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL53-.text
	.uaword	.LVL54-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL61-.text
	.uaword	.LVL62-.text
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL62-.text
	.uaword	.LVL63-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL64-.text
	.uaword	.LVL65-.text
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL65-.text
	.uaword	.LVL66-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL67-.text
	.uaword	.LVL68-.text
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL68-.text
	.uaword	.LVL69-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL71-.text
	.uaword	.LVL72-.text
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL72-.text
	.uaword	.LVL73-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL74-.text
	.uaword	.LVL75-.text
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL77-.text
	.uaword	.LVL78-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL81-.text
	.uaword	.LVL82-.text
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL91-.text
	.uaword	.LVL92-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL83-.text
	.uaword	.LVL84-.text
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL84-.text
	.uaword	.LVL85-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL87-.text
	.uaword	.LVL88-.text
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL88-.text
	.uaword	.LVL89-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL93-.text
	.uaword	.LVL94-.text
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL94-.text
	.uaword	.LVL95-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL97-.text
	.uaword	.LVL98-.text
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL98-.text
	.uaword	.LVL99-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL101-.text
	.uaword	.LVL102-.text
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL108-.text
	.uaword	.LVL109-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL103-.text
	.uaword	.LVL104-.text
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL106-.text
	.uaword	.LVL107-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL110-.text
	.uaword	.LVL111-.text
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL111-.text
	.uaword	.LVL112-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL114-.text
	.uaword	.LVL115-.text
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL115-.text
	.uaword	.LVL116-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x1c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.Ltext0
	.uaword	.Letext0-.Ltext0
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF1:
	.string	"f32LocTCU_MotorTorReq"
.LASF3:
	.string	"f32LocInput_Voltage"
.LASF0:
	.string	"f32LocTCU_MotorWorkModReq"
.LASF2:
	.string	"f32LocSoftware_Version"
	.extern	MAIN_MSGu8Can01_Tx08_Software_VersionRaw,STT_OBJECT,1
	.extern	MAIN_MSGf32Can01_Tx08_Software_Version,STT_OBJECT,4
	.extern	MAIN_MSGu8Can01_Tx08_AirCompressor_Motor_SpeedRaw,STT_OBJECT,1
	.extern	MAIN_MSGu8Can01_Tx08_Internal_Fault_Code,STT_OBJECT,1
	.extern	MAIN_MSGf32Can01_Tx08_AirCompressor_Motor_Speed,STT_OBJECT,4
	.extern	MAIN_MSGu8Can01_Tx08_ACUST2_buf,STT_OBJECT,8
	.extern	MAIN_MSGu8Can01_Tx07_Heartbeat_Signal,STT_OBJECT,1
	.extern	MAIN_MSGbCan01_Tx07_Hardwire_Enable_Signal_Sts,STT_OBJECT,1
	.extern	MAIN_MSGu8Can01_Tx07_Controller_Operating_Sts,STT_OBJECT,1
	.extern	MAIN_MSGu8Can01_Tx07_AirCompressor_TempRaw,STT_OBJECT,1
	.extern	MAIN_MSGf32Can01_Tx07_AirCompressor_Temp,STT_OBJECT,4
	.extern	MAIN_MSGu8Can01_Tx07_SDCAC_MotorTempRaw,STT_OBJECT,1
	.extern	MAIN_MSGf32Can01_Tx07_SDCAC_MotorTemp,STT_OBJECT,4
	.extern	MAIN_MSGu8Can01_Tx07_Output_Current,STT_OBJECT,1
	.extern	MAIN_MSGu8Can01_Tx07_Output_VoltageRaw,STT_OBJECT,1
	.extern	MAIN_MSGf32Can01_Tx07_Output_Voltage,STT_OBJECT,4
	.extern	MAIN_MSGu8Can01_Tx07_Input_VoltageRaw,STT_OBJECT,1
	.extern	MAIN_MSGu8Can01_Tx07_Input_Current,STT_OBJECT,1
	.extern	MAIN_MSGu8Can01_Tx07_ACUST1_buf,STT_OBJECT,8
	.extern	MAIN_MSGf32Can01_Tx07_Input_Voltage,STT_OBJECT,4
	.extern	MAIN_MSGu8Can01_Tx06_Software_VersionRaw,STT_OBJECT,1
	.extern	MAIN_MSGf32Can01_Tx06_Software_Version,STT_OBJECT,4
	.extern	MAIN_MSGu8Can01_Tx06_Internal_FaultCode,STT_OBJECT,1
	.extern	MAIN_MSGu8Can01_Tx06_Input_Current,STT_OBJECT,1
	.extern	MAIN_MSGu8Can01_Tx06_Input_VoltageRaw,STT_OBJECT,1
	.extern	MAIN_MSGu8Can01_Tx06_Steer_Motor_TempRaw,STT_OBJECT,1
	.extern	MAIN_MSGf32Can01_Tx06_Input_Voltage,STT_OBJECT,4
	.extern	MAIN_MSGf32Can01_Tx06_Steer_Motor_Temp,STT_OBJECT,4
	.extern	MAIN_MSGu8Can01_Tx06_HSST2_buf,STT_OBJECT,8
	.extern	MAIN_MSGu8Can01_Tx05_Fault_Level,STT_OBJECT,1
	.extern	MAIN_MSGu8Can01_Tx05_Motor_Sts,STT_OBJECT,1
	.extern	MAIN_MSGu8Can01_Tx05_Steering_Oil_DCAC_Module_TempRaw,STT_OBJECT,1
	.extern	MAIN_MSGf32Can01_Tx05_Steering_Oil_DCAC_Module_Temp,STT_OBJECT,4
	.extern	MAIN_MSGu16Can01_Tx05_Output_CurrentRaw,STT_OBJECT,2
	.extern	MAIN_MSGf32Can01_Tx05_Output_Current,STT_OBJECT,4
	.extern	MAIN_MSGu16Can01_Tx05_Motor_Speed,STT_OBJECT,2
	.extern	MAIN_MSGu8Can01_Tx05_Heartbeat_Signal,STT_OBJECT,1
	.extern	MAIN_MSGu8Can01_Tx05_HSST1_buf,STT_OBJECT,8
	.extern	MAIN_MSGu16Can01_Tx04_Chargingpile_voltageRaw,STT_OBJECT,2
	.extern	MAIN_MSGf32Can01_Tx04_Chargingpile_voltage,STT_OBJECT,4
	.extern	MAIN_MSGu16Can01_Tx04_Negativepole_to_ground_resistance_valueRaw,STT_OBJECT,2
	.extern	MAIN_MSGu16Can01_Tx04_Positivepole_to_ground_resistance_valueRaw,STT_OBJECT,2
	.extern	MAIN_MSGf32Can01_Tx04_Negativepole_to_ground_resistance_value,STT_OBJECT,4
	.extern	MAIN_MSGf32Can01_Tx04_Positivepole_to_ground_resistance_value,STT_OBJECT,4
	.extern	MAIN_MSGu8Can01_Tx04_PDUST4_buf,STT_OBJECT,8
	.extern	MAIN_MSGu8Can01_Tx03_Number_of_BatteryHeating_PTC_Switch,STT_OBJECT,1
	.extern	MAIN_MSGu8Can01_Tx03_Number_of_Cab_PTC_Switch,STT_OBJECT,1
	.extern	MAIN_MSGu8Can01_Tx03_ChargeCircuit4_Negative_Contactor_Sts,STT_OBJECT,1
	.extern	MAIN_MSGu8Can01_Tx03_ChargeCircuit4_Positive_Contactor_Sts,STT_OBJECT,1
	.extern	MAIN_MSGu8Can01_Tx03_ChargeCircuit3_Negative_Contactor_Sts,STT_OBJECT,1
	.extern	MAIN_MSGu8Can01_Tx03_ChargeCircuit3_Positive_Contactor_Sts,STT_OBJECT,1
	.extern	MAIN_MSGu8Can01_Tx03_ChargeCircuit2_Negative_Contactor_Sts,STT_OBJECT,1
	.extern	MAIN_MSGu8Can01_Tx03_ChargeCircuit2_Positive_Contactor_Sts,STT_OBJECT,1
	.extern	MAIN_MSGu8Can01_Tx03_ChargeCircuit1_Negative_Contactor_Sts,STT_OBJECT,1
	.extern	MAIN_MSGu8Can01_Tx03_ChargeCircuit1_Positive_Contactor_Sts,STT_OBJECT,1
	.extern	MAIN_MSGu8Can01_Tx03_OnStatus_of_BatteryHeating4_Switch,STT_OBJECT,1
	.extern	MAIN_MSGu8Can01_Tx03_OnStatus_of_BatteryHeating3_Switch,STT_OBJECT,1
	.extern	MAIN_MSGu8Can01_Tx03_OnStatus_of_BatteryHeating2_Switch,STT_OBJECT,1
	.extern	MAIN_MSGu8Can01_Tx03_OnStatus_of_BatteryHeating1_Switch,STT_OBJECT,1
	.extern	MAIN_MSGu8Can01_Tx03_OnStatus_of_Cab2_Stage_PTC_Switch,STT_OBJECT,1
	.extern	MAIN_MSGu8Can01_Tx03_OnStatus_of_Cab1_Stage_PTC_Switch,STT_OBJECT,1
	.extern	MAIN_MSGu8Can01_Tx03_Positive_Contactor4_Sts,STT_OBJECT,1
	.extern	MAIN_MSGu8Can01_Tx03_Positive_Contactor3_Sts,STT_OBJECT,1
	.extern	MAIN_MSGu8Can01_Tx03_Positive_Contactor2_Sts,STT_OBJECT,1
	.extern	MAIN_MSGu8Can01_Tx03_Positive_Contactor1_Sts,STT_OBJECT,1
	.extern	MAIN_MSGu8Can01_Tx03_Number_of_Positive_Contactors,STT_OBJECT,1
	.extern	MAIN_MSGu8Can01_Tx03_Negative_Contactor_Sts,STT_OBJECT,1
	.extern	MAIN_MSGu8Can01_Tx03_Insulation_Resistance_Sts,STT_OBJECT,1
	.extern	MAIN_MSGu8Can01_Tx03_PDUST3_buf,STT_OBJECT,8
	.extern	MAIN_MSGu8Can01_Tx02_PTCContactor2_On,STT_OBJECT,1
	.extern	MAIN_MSGu8Can01_Tx02_PTCContactor_On,STT_OBJECT,1
	.extern	MAIN_MSGu8Can01_Tx02_AuxiliaryContactor_On,STT_OBJECT,1
	.extern	MAIN_MSGbCan01_Tx02_AuxiliaryContactor_Status,STT_OBJECT,1
	.extern	MAIN_MSGu8Can01_Tx02_Heartbeat_Signal,STT_OBJECT,1
	.extern	MAIN_MSGu16Can01_Tx02_Outputvoltage_of_UpperCircuit_ContactorRaw,STT_OBJECT,2
	.extern	MAIN_MSGf32Can01_Tx02_Outputvoltage_of_UpperCircuit_Contactor,STT_OBJECT,4
	.extern	MAIN_MSGu8Can01_Tx02_Software_VersionRaw,STT_OBJECT,1
	.extern	MAIN_MSGf32Can01_Tx02_Software_Version,STT_OBJECT,4
	.extern	MAIN_MSGu8Can01_Tx02_Internal_Trouble_Code,STT_OBJECT,1
	.extern	MAIN_MSGbCan01_Tx02_UpperCircuit_Contactor_Status,STT_OBJECT,1
	.extern	MAIN_MSGbCan01_Tx02_UpperCircuit_Precharge_Contactor_On,STT_OBJECT,1
	.extern	MAIN_MSGbCan01_Tx02_UpperCircuit_Contactor_On,STT_OBJECT,1
	.extern	MAIN_MSGbCan01_Tx02_PTC_Contactor_Status,STT_OBJECT,1
	.extern	MAIN_MSGu8Can01_Tx02_2stStage_PTC_MOS_Switch_Command,STT_OBJECT,1
	.extern	MAIN_MSGu8Can01_Tx02_1stStage_PTC_MOS_Switch_Command,STT_OBJECT,1
	.extern	MAIN_MSGu8Can01_Tx02_PDUST2_buf,STT_OBJECT,8
	.extern	MAIN_MSGu8Can01_Tx02_Stuck_Status_Feedback,STT_OBJECT,1
	.extern	Com_SendSignal,STT_FUNC,0
	.extern	MAIN_MSGbCan01_Tx01_Highvoltage_of_circuit_positive_contactor,STT_OBJECT,1
	.extern	MAIN_MSGbCan01_Tx01_Poweron_selftest_ok_signal,STT_OBJECT,1
	.extern	MAIN_MSGbCan01_Tx01_Positive_contactor_status,STT_OBJECT,1
	.extern	MAIN_MSGbCan01_Tx01_Voltage_diff_of_positive_contactor,STT_OBJECT,1
	.extern	MAIN_MSGbCan01_Tx01_Positive_contactor_on,STT_OBJECT,1
	.extern	MAIN_MSGbCan01_Tx01_Precharge_contactor_on,STT_OBJECT,1
	.extern	MAIN_MSGbCan01_Tx01_Key_signal,STT_OBJECT,1
	.extern	MAIN_MSGbCan01_Tx01_Enable_signal,STT_OBJECT,1
	.extern	MAIN_MSGu8Can01_Tx01_Precharg_time_consumptionRaw,STT_OBJECT,1
	.extern	MAIN_MSGf32Can01_Tx01_Precharg_time_consumption,STT_OBJECT,4
	.extern	MAIN_MSGu8Can01_Tx01_Precharg_resistor_tempRaw,STT_OBJECT,1
	.extern	MAIN_MSGf32Can01_Tx01_Precharg_resistor_temp,STT_OBJECT,4
	.extern	MAIN_MSGu16Can01_Tx01_Main_pos_contactor_out_voltageRaw,STT_OBJECT,2
	.extern	MAIN_MSGf32Can01_Tx01_Main_pos_contactor_out_voltage,STT_OBJECT,4
	.extern	MAIN_MSGu16Can01_Tx01_Power_battery_pack_voltageRaw,STT_OBJECT,2
	.extern	MAIN_MSGu8Can01_Tx01_PDUST1_buf,STT_OBJECT,8
	.extern	MAIN_MSGf32Can01_Tx01_Power_battery_pack_voltage,STT_OBJECT,4
	.extern	MAIN_MSGu8Can01_Tx01_Low_input_voltageRaw,STT_OBJECT,1
	.extern	MAIN_MSGf32Can01_Tx01_Low_input_voltage,STT_OBJECT,4
	.extern	MAIN_MSGu8Can01_Rx06_TCU_MotorTorReqRaw,STT_OBJECT,1
	.extern	MAIN_MSGu8Can01_Rx06_TCU_MotorWorkModReqRaw,STT_OBJECT,1
	.extern	MAIN_MSGu8Can01_Rx06_AIR1_buf,STT_OBJECT,8
	.extern	MAIN_MSGf32Can01_Rx06_TCU_MotorTorReq,STT_OBJECT,4
	.extern	MAIN_MSGf32Can01_Rx06_TCU_MotorWorkModReq,STT_OBJECT,4
	.extern	BSW_bRxTOutFlag_Can01_Rx06,STT_OBJECT,1
	.extern	MAIN_MSGu8Can01_Rx05_TCU_MotorTorReqRaw,STT_OBJECT,1
	.extern	MAIN_MSGu8Can01_Rx05_TCU_MotorWorkModReqRaw,STT_OBJECT,1
	.extern	MAIN_MSGu8Can01_Rx05_AIR1_buf,STT_OBJECT,8
	.extern	MAIN_MSGf32Can01_Rx05_TCU_MotorTorReq,STT_OBJECT,4
	.extern	MAIN_MSGf32Can01_Rx05_TCU_MotorWorkModReq,STT_OBJECT,4
	.extern	BSW_bRxTOutFlag_Can01_Rx05,STT_OBJECT,1
	.extern	MAIN_MSGu8Can01_Rx04_Aircompressor_Motor_TargspeedRaw,STT_OBJECT,1
	.extern	MAIN_MSGu8Can01_Rx04_ACUMC1_buf,STT_OBJECT,8
	.extern	MAIN_MSGu8Can01_Rx04_CtrlMsg_Cycle_Counter,STT_OBJECT,1
	.extern	MAIN_MSGf32Can01_Rx04_Aircompressor_Motor_Targspeed,STT_OBJECT,4
	.extern	MAIN_MSGbCan01_Rx04_Acu_Inhibit_Cmd,STT_OBJECT,1
	.extern	BSW_bRxTOutFlag_Can01_Rx04,STT_OBJECT,1
	.extern	MAIN_MSGu8Can01_Rx03_Steerpump_Motor_TargetspeedRaw,STT_OBJECT,1
	.extern	MAIN_MSGu8Can01_Rx03_HSSTC_buf,STT_OBJECT,8
	.extern	MAIN_MSGu8Can01_Rx03_Heartbeat_Signal,STT_OBJECT,1
	.extern	MAIN_MSGf32Can01_Rx03_Steerpump_Motor_Targetspeed,STT_OBJECT,4
	.extern	BSW_bRxTOutFlag_Can01_Rx03,STT_OBJECT,1
	.extern	MAIN_MSGu8Can01_Rx02_HSMC1_buf,STT_OBJECT,8
	.extern	MAIN_MSGu8Can01_Rx02_HEARTBEAT,STT_OBJECT,1
	.extern	MAIN_MSGu8Can01_Rx02_HV_STEERING_REQUEST,STT_OBJECT,1
	.extern	BSW_bRxTOutFlag_Can01_Rx02,STT_OBJECT,1
	.extern	Com_ReceiveSignal,STT_FUNC,0
	.extern	MAIN_MSGu8Can01_Rx01_PDUMC1_buf,STT_OBJECT,8
	.extern	MAIN_MSGu8Can01_Rx01_Heartbeat_Signal,STT_OBJECT,1
	.extern	MAIN_MSGbCan01_Rx01_ChargCircuit4_NegContactor_Ctrl_Cmd,STT_OBJECT,1
	.extern	MAIN_MSGbCan01_Rx01_ChargCircuit4_PosContactor_Ctrl_Cmd,STT_OBJECT,1
	.extern	MAIN_MSGbCan01_Rx01_ChargCircuit3_NegContactor_Ctrl_Cmd,STT_OBJECT,1
	.extern	MAIN_MSGbCan01_Rx01_ChargCircuit3_PosContactor_Ctrl_Cmd,STT_OBJECT,1
	.extern	MAIN_MSGbCan01_Rx01_ChargCircuit2_NegContactor_Ctrl_Cmd,STT_OBJECT,1
	.extern	MAIN_MSGbCan01_Rx01_ChargCircuit2_PosContactor_Ctrl_Cmd,STT_OBJECT,1
	.extern	MAIN_MSGbCan01_Rx01_ChargCircuit1_NegContactor_Ctrl_Cmd,STT_OBJECT,1
	.extern	MAIN_MSGbCan01_Rx01_ChargCircuit1_PosContactor_Ctrl_Cmd,STT_OBJECT,1
	.extern	MAIN_MSGbCan01_Rx01_Batteryheat4_MOS_Switch_Cmd,STT_OBJECT,1
	.extern	MAIN_MSGbCan01_Rx01_Batteryheat3_MOS_Switch_Cmd,STT_OBJECT,1
	.extern	MAIN_MSGbCan01_Rx01_Batteryheat2_MOS_Switch_Cmd,STT_OBJECT,1
	.extern	MAIN_MSGbCan01_Rx01_Batteryheat1_MOS_Switch_Cmd,STT_OBJECT,1
	.extern	MAIN_MSGbCan01_Rx01_Cab2_PTC_MOS_Switch_Cmd,STT_OBJECT,1
	.extern	MAIN_MSGbCan01_Rx01_Cab1_PTC_MOS_Switch_Cmd,STT_OBJECT,1
	.extern	MAIN_MSGbCan01_Rx01_NegContactor_Ctrl_Cmd,STT_OBJECT,1
	.extern	MAIN_MSGbCan01_Rx01_Insulationresistance_Ctrl_Cmd,STT_OBJECT,1
	.extern	MAIN_MSGbCan01_Rx01_Keyon_Signal_Sts,STT_OBJECT,1
	.extern	MAIN_MSGbCan01_Rx01_Upper_Enable_Signal,STT_OBJECT,1
	.extern	MAIN_MSGbCan01_Rx01_PTC_Enable_Signal,STT_OBJECT,1
	.extern	MAIN_MSGbCan01_Rx01_Auxiliary_Contactor_Enable,STT_OBJECT,1
	.extern	MAIN_MSGbCan01_Rx01_Key_Signal,STT_OBJECT,1
	.extern	MAIN_MSGbCan01_Rx01_Power_Enable_Signal,STT_OBJECT,1
	.extern	MAIN_bComRxDisableFlgByUds,STT_OBJECT,1
	.extern	MAIN_bMSGRxToutBenchOnC,STT_OBJECT,1
	.extern	BSW_bRxTOutFlag_Can01_Rx01,STT_OBJECT,1
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
