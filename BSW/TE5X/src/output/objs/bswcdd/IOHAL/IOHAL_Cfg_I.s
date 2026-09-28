	.file	"IOHAL_Cfg_I.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	IOHAL_u16Read_CH_DIO_IN_M_AN_ENABLE_ASC2
	.type	IOHAL_u16Read_CH_DIO_IN_M_AN_ENABLE_ASC2, @function
IOHAL_u16Read_CH_DIO_IN_M_AN_ENABLE_ASC2:
.LFB19:
	.file 1 "bswcdd\\IOHAL\\IOHAL_Cfg_I.c"
	.loc 1 46 0
	.loc 1 47 0
	mov	%d4, 0
	.loc 1 48 0
	j	Dio_ReadChannel
.LVL0:
.LFE19:
	.size	IOHAL_u16Read_CH_DIO_IN_M_AN_ENABLE_ASC2, .-IOHAL_u16Read_CH_DIO_IN_M_AN_ENABLE_ASC2
	.align 1
	.global	IOHAL_vidWrite_CH_DIO_OUT_M_DX1_B
	.type	IOHAL_vidWrite_CH_DIO_OUT_M_DX1_B, @function
IOHAL_vidWrite_CH_DIO_OUT_M_DX1_B:
.LFB20:
	.loc 1 50 0
.LVL1:
	.loc 1 51 0
	and	%d5, %d4, 255
	mov	%d4, 6
.LVL2:
	j	Dio_WriteChannel
.LVL3:
.LFE20:
	.size	IOHAL_vidWrite_CH_DIO_OUT_M_DX1_B, .-IOHAL_vidWrite_CH_DIO_OUT_M_DX1_B
	.align 1
	.global	IOHAL_vidWrite_CH_DIO_OUT_M_BACKUP_EN
	.type	IOHAL_vidWrite_CH_DIO_OUT_M_BACKUP_EN, @function
IOHAL_vidWrite_CH_DIO_OUT_M_BACKUP_EN:
.LFB21:
	.loc 1 54 0
.LVL4:
	.loc 1 55 0
	and	%d5, %d4, 255
	mov	%d4, 7
.LVL5:
	j	Dio_WriteChannel
.LVL6:
.LFE21:
	.size	IOHAL_vidWrite_CH_DIO_OUT_M_BACKUP_EN, .-IOHAL_vidWrite_CH_DIO_OUT_M_BACKUP_EN
	.align 1
	.global	IOHAL_vidWrite_CH_DIO_OUT_M_RCLK_2
	.type	IOHAL_vidWrite_CH_DIO_OUT_M_RCLK_2, @function
IOHAL_vidWrite_CH_DIO_OUT_M_RCLK_2:
.LFB22:
	.loc 1 58 0
.LVL7:
	.loc 1 59 0
	and	%d5, %d4, 255
	mov	%d4, 9
.LVL8:
	j	Dio_WriteChannel
.LVL9:
.LFE22:
	.size	IOHAL_vidWrite_CH_DIO_OUT_M_RCLK_2, .-IOHAL_vidWrite_CH_DIO_OUT_M_RCLK_2
	.align 1
	.global	IOHAL_u16Read_CH_DIO_IN_M_AN_ENABLE_ASC1
	.type	IOHAL_u16Read_CH_DIO_IN_M_AN_ENABLE_ASC1, @function
IOHAL_u16Read_CH_DIO_IN_M_AN_ENABLE_ASC1:
.LFB23:
	.loc 1 62 0
	.loc 1 63 0
	mov	%d4, 11
	.loc 1 64 0
	j	Dio_ReadChannel
.LVL10:
.LFE23:
	.size	IOHAL_u16Read_CH_DIO_IN_M_AN_ENABLE_ASC1, .-IOHAL_u16Read_CH_DIO_IN_M_AN_ENABLE_ASC1
	.align 1
	.global	IOHAL_vidWrite_CH_DIO_OUT_M_Q6_PTC2
	.type	IOHAL_vidWrite_CH_DIO_OUT_M_Q6_PTC2, @function
IOHAL_vidWrite_CH_DIO_OUT_M_Q6_PTC2:
.LFB24:
	.loc 1 66 0
.LVL11:
	.loc 1 67 0
	and	%d5, %d4, 255
	mov	%d4, 12
.LVL12:
	j	Dio_WriteChannel
.LVL13:
.LFE24:
	.size	IOHAL_vidWrite_CH_DIO_OUT_M_Q6_PTC2, .-IOHAL_vidWrite_CH_DIO_OUT_M_Q6_PTC2
	.align 1
	.global	IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_W_2
	.type	IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_W_2, @function
IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_W_2:
.LFB25:
	.loc 1 71 0
	.loc 1 72 0
	mov	%d4, 19
	.loc 1 73 0
	j	Dio_ReadChannel
.LVL14:
.LFE25:
	.size	IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_W_2, .-IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_W_2
	.align 1
	.global	IOHAL_vidWrite_CH_DIO_OUT_M_DX3_A
	.type	IOHAL_vidWrite_CH_DIO_OUT_M_DX3_A, @function
IOHAL_vidWrite_CH_DIO_OUT_M_DX3_A:
.LFB26:
	.loc 1 75 0
.LVL15:
	.loc 1 76 0
	and	%d5, %d4, 255
	mov	%d4, 20
.LVL16:
	j	Dio_WriteChannel
.LVL17:
.LFE26:
	.size	IOHAL_vidWrite_CH_DIO_OUT_M_DX3_A, .-IOHAL_vidWrite_CH_DIO_OUT_M_DX3_A
	.align 1
	.global	IOHAL_vidWrite_CH_DIO_OUT_M_DX3_B
	.type	IOHAL_vidWrite_CH_DIO_OUT_M_DX3_B, @function
IOHAL_vidWrite_CH_DIO_OUT_M_DX3_B:
.LFB27:
	.loc 1 79 0
.LVL18:
	.loc 1 80 0
	and	%d5, %d4, 255
	mov	%d4, 21
.LVL19:
	j	Dio_WriteChannel
.LVL20:
.LFE27:
	.size	IOHAL_vidWrite_CH_DIO_OUT_M_DX3_B, .-IOHAL_vidWrite_CH_DIO_OUT_M_DX3_B
	.align 1
	.global	IOHAL_vidWrite_CH_DIO_OUT_M_DX3_C
	.type	IOHAL_vidWrite_CH_DIO_OUT_M_DX3_C, @function
IOHAL_vidWrite_CH_DIO_OUT_M_DX3_C:
.LFB28:
	.loc 1 83 0
.LVL21:
	.loc 1 84 0
	and	%d5, %d4, 255
	mov	%d4, 22
.LVL22:
	j	Dio_WriteChannel
.LVL23:
.LFE28:
	.size	IOHAL_vidWrite_CH_DIO_OUT_M_DX3_C, .-IOHAL_vidWrite_CH_DIO_OUT_M_DX3_C
	.align 1
	.global	IOHAL_vidWrite_CH_DIO_OUT_M_DX1_A
	.type	IOHAL_vidWrite_CH_DIO_OUT_M_DX1_A, @function
IOHAL_vidWrite_CH_DIO_OUT_M_DX1_A:
.LFB29:
	.loc 1 87 0
.LVL24:
	.loc 1 88 0
	and	%d5, %d4, 255
	mov	%d4, 23
.LVL25:
	j	Dio_WriteChannel
.LVL26:
.LFE29:
	.size	IOHAL_vidWrite_CH_DIO_OUT_M_DX1_A, .-IOHAL_vidWrite_CH_DIO_OUT_M_DX1_A
	.align 1
	.global	IOHAL_vidWrite_CH_DIO_OUT_M_SRCLK_2
	.type	IOHAL_vidWrite_CH_DIO_OUT_M_SRCLK_2, @function
IOHAL_vidWrite_CH_DIO_OUT_M_SRCLK_2:
.LFB30:
	.loc 1 92 0
.LVL27:
	.loc 1 93 0
	and	%d5, %d4, 255
	mov	%d4, 32
.LVL28:
	j	Dio_WriteChannel
.LVL29:
.LFE30:
	.size	IOHAL_vidWrite_CH_DIO_OUT_M_SRCLK_2, .-IOHAL_vidWrite_CH_DIO_OUT_M_SRCLK_2
	.align 1
	.global	IOHAL_vidWrite_CH_DIO_OUT_M_SER_2
	.type	IOHAL_vidWrite_CH_DIO_OUT_M_SER_2, @function
IOHAL_vidWrite_CH_DIO_OUT_M_SER_2:
.LFB31:
	.loc 1 96 0
.LVL30:
	.loc 1 97 0
	and	%d5, %d4, 255
	mov	%d4, 33
.LVL31:
	j	Dio_WriteChannel
.LVL32:
.LFE31:
	.size	IOHAL_vidWrite_CH_DIO_OUT_M_SER_2, .-IOHAL_vidWrite_CH_DIO_OUT_M_SER_2
	.align 1
	.global	IOHAL_u16Read_CH_DIO_IN_M_IO_MUX2
	.type	IOHAL_u16Read_CH_DIO_IN_M_IO_MUX2, @function
IOHAL_u16Read_CH_DIO_IN_M_IO_MUX2:
.LFB32:
	.loc 1 100 0
	.loc 1 101 0
	mov	%d4, 38
	.loc 1 102 0
	j	Dio_ReadChannel
.LVL33:
.LFE32:
	.size	IOHAL_u16Read_CH_DIO_IN_M_IO_MUX2, .-IOHAL_u16Read_CH_DIO_IN_M_IO_MUX2
	.align 1
	.global	IOHAL_vidWrite_CH_DIO_OUT_M_PW_DOWN
	.type	IOHAL_vidWrite_CH_DIO_OUT_M_PW_DOWN, @function
IOHAL_vidWrite_CH_DIO_OUT_M_PW_DOWN:
.LFB33:
	.loc 1 104 0
.LVL34:
	.loc 1 105 0
	and	%d5, %d4, 255
	mov	%d4, 39
.LVL35:
	j	Dio_WriteChannel
.LVL36:
.LFE33:
	.size	IOHAL_vidWrite_CH_DIO_OUT_M_PW_DOWN, .-IOHAL_vidWrite_CH_DIO_OUT_M_PW_DOWN
	.align 1
	.global	IOHAL_vidWrite_CH_DIO_OUT_M_KM1_ZQ1
	.type	IOHAL_vidWrite_CH_DIO_OUT_M_KM1_ZQ1, @function
IOHAL_vidWrite_CH_DIO_OUT_M_KM1_ZQ1:
.LFB34:
	.loc 1 108 0
.LVL37:
	.loc 1 109 0
	and	%d5, %d4, 255
	mov	%d4, 40
.LVL38:
	j	Dio_WriteChannel
.LVL39:
.LFE34:
	.size	IOHAL_vidWrite_CH_DIO_OUT_M_KM1_ZQ1, .-IOHAL_vidWrite_CH_DIO_OUT_M_KM1_ZQ1
	.align 1
	.global	IOHAL_vidWrite_CH_DIO_OUT_M_KM2_ZQ2
	.type	IOHAL_vidWrite_CH_DIO_OUT_M_KM2_ZQ2, @function
IOHAL_vidWrite_CH_DIO_OUT_M_KM2_ZQ2:
.LFB35:
	.loc 1 112 0
.LVL40:
	.loc 1 113 0
	and	%d5, %d4, 255
	mov	%d4, 41
.LVL41:
	j	Dio_WriteChannel
.LVL42:
.LFE35:
	.size	IOHAL_vidWrite_CH_DIO_OUT_M_KM2_ZQ2, .-IOHAL_vidWrite_CH_DIO_OUT_M_KM2_ZQ2
	.align 1
	.global	IOHAL_vidWrite_CH_DIO_OUT_M_KM3_ZQ3
	.type	IOHAL_vidWrite_CH_DIO_OUT_M_KM3_ZQ3, @function
IOHAL_vidWrite_CH_DIO_OUT_M_KM3_ZQ3:
.LFB36:
	.loc 1 116 0
.LVL43:
	.loc 1 117 0
	and	%d5, %d4, 255
	mov	%d4, 42
.LVL44:
	j	Dio_WriteChannel
.LVL45:
.LFE36:
	.size	IOHAL_vidWrite_CH_DIO_OUT_M_KM3_ZQ3, .-IOHAL_vidWrite_CH_DIO_OUT_M_KM3_ZQ3
	.align 1
	.global	IOHAL_vidWrite_CH_DIO_OUT_M_KM4_ZQ4
	.type	IOHAL_vidWrite_CH_DIO_OUT_M_KM4_ZQ4, @function
IOHAL_vidWrite_CH_DIO_OUT_M_KM4_ZQ4:
.LFB37:
	.loc 1 120 0
.LVL46:
	.loc 1 121 0
	and	%d5, %d4, 255
	mov	%d4, 43
.LVL47:
	j	Dio_WriteChannel
.LVL48:
.LFE37:
	.size	IOHAL_vidWrite_CH_DIO_OUT_M_KM4_ZQ4, .-IOHAL_vidWrite_CH_DIO_OUT_M_KM4_ZQ4
	.align 1
	.global	IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_V_2
	.type	IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_V_2, @function
IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_V_2:
.LFB38:
	.loc 1 125 0
	.loc 1 126 0
	mov	%d4, 164
	.loc 1 127 0
	j	Dio_ReadChannel
.LVL49:
.LFE38:
	.size	IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_V_2, .-IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_V_2
	.align 1
	.global	IOHAL_u16Read_CH_DIO_IN_M_FLT_EXCITATION_2
	.type	IOHAL_u16Read_CH_DIO_IN_M_FLT_EXCITATION_2, @function
IOHAL_u16Read_CH_DIO_IN_M_FLT_EXCITATION_2:
.LFB39:
	.loc 1 130 0
	.loc 1 131 0
	mov	%d4, 176
	.loc 1 132 0
	j	Dio_ReadChannel
.LVL50:
.LFE39:
	.size	IOHAL_u16Read_CH_DIO_IN_M_FLT_EXCITATION_2, .-IOHAL_u16Read_CH_DIO_IN_M_FLT_EXCITATION_2
	.align 1
	.global	IOHAL_u16Read_CH_DIO_IN_M_FLT_EXCITATION_1
	.type	IOHAL_u16Read_CH_DIO_IN_M_FLT_EXCITATION_1, @function
IOHAL_u16Read_CH_DIO_IN_M_FLT_EXCITATION_1:
.LFB40:
	.loc 1 134 0
	.loc 1 135 0
	mov	%d4, 177
	.loc 1 136 0
	j	Dio_ReadChannel
.LVL51:
.LFE40:
	.size	IOHAL_u16Read_CH_DIO_IN_M_FLT_EXCITATION_1, .-IOHAL_u16Read_CH_DIO_IN_M_FLT_EXCITATION_1
	.align 1
	.global	IOHAL_u16Read_CH_DIO_IN_M_DI1_KM_EN
	.type	IOHAL_u16Read_CH_DIO_IN_M_DI1_KM_EN, @function
IOHAL_u16Read_CH_DIO_IN_M_DI1_KM_EN:
.LFB41:
	.loc 1 138 0
	.loc 1 139 0
	mov	%d4, 178
	.loc 1 140 0
	j	Dio_ReadChannel
.LVL52:
.LFE41:
	.size	IOHAL_u16Read_CH_DIO_IN_M_DI1_KM_EN, .-IOHAL_u16Read_CH_DIO_IN_M_DI1_KM_EN
	.align 1
	.global	IOHAL_vidWrite_CH_DIO_OUT_M_SRCLK_3
	.type	IOHAL_vidWrite_CH_DIO_OUT_M_SRCLK_3, @function
IOHAL_vidWrite_CH_DIO_OUT_M_SRCLK_3:
.LFB42:
	.loc 1 142 0
.LVL53:
	.loc 1 143 0
	and	%d5, %d4, 255
	mov	%d4, 180
.LVL54:
	j	Dio_WriteChannel
.LVL55:
.LFE42:
	.size	IOHAL_vidWrite_CH_DIO_OUT_M_SRCLK_3, .-IOHAL_vidWrite_CH_DIO_OUT_M_SRCLK_3
	.align 1
	.global	IOHAL_vidWrite_CH_DIO_OUT_M_SER_3
	.type	IOHAL_vidWrite_CH_DIO_OUT_M_SER_3, @function
IOHAL_vidWrite_CH_DIO_OUT_M_SER_3:
.LFB43:
	.loc 1 146 0
.LVL56:
	.loc 1 147 0
	and	%d5, %d4, 255
	mov	%d4, 181
.LVL57:
	j	Dio_WriteChannel
.LVL58:
.LFE43:
	.size	IOHAL_vidWrite_CH_DIO_OUT_M_SER_3, .-IOHAL_vidWrite_CH_DIO_OUT_M_SER_3
	.align 1
	.global	IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_U_2
	.type	IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_U_2, @function
IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_U_2:
.LFB44:
	.loc 1 150 0
	.loc 1 151 0
	mov	%d4, 183
	.loc 1 152 0
	j	Dio_ReadChannel
.LVL59:
.LFE44:
	.size	IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_U_2, .-IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_U_2
	.align 1
	.global	IOHAL_vidWrite_CH_DIO_OUT_M_YC2_KC3Z_YC
	.type	IOHAL_vidWrite_CH_DIO_OUT_M_YC2_KC3Z_YC, @function
IOHAL_vidWrite_CH_DIO_OUT_M_YC2_KC3Z_YC:
.LFB45:
	.loc 1 154 0
.LVL60:
	.loc 1 155 0
	and	%d5, %d4, 255
	mov	%d4, 184
.LVL61:
	j	Dio_WriteChannel
.LVL62:
.LFE45:
	.size	IOHAL_vidWrite_CH_DIO_OUT_M_YC2_KC3Z_YC, .-IOHAL_vidWrite_CH_DIO_OUT_M_YC2_KC3Z_YC
	.align 1
	.global	IOHAL_vidWrite_CH_DIO_OUT_M_ISO_EN1
	.type	IOHAL_vidWrite_CH_DIO_OUT_M_ISO_EN1, @function
IOHAL_vidWrite_CH_DIO_OUT_M_ISO_EN1:
.LFB46:
	.loc 1 158 0
.LVL63:
	.loc 1 159 0
	and	%d5, %d4, 255
	mov	%d4, 189
.LVL64:
	j	Dio_WriteChannel
.LVL65:
.LFE46:
	.size	IOHAL_vidWrite_CH_DIO_OUT_M_ISO_EN1, .-IOHAL_vidWrite_CH_DIO_OUT_M_ISO_EN1
	.align 1
	.global	IOHAL_vidWrite_CH_DIO_OUT_M_ISO_EN2
	.type	IOHAL_vidWrite_CH_DIO_OUT_M_ISO_EN2, @function
IOHAL_vidWrite_CH_DIO_OUT_M_ISO_EN2:
.LFB47:
	.loc 1 162 0
.LVL66:
	.loc 1 163 0
	and	%d5, %d4, 255
	mov	%d4, 190
.LVL67:
	j	Dio_WriteChannel
.LVL68:
.LFE47:
	.size	IOHAL_vidWrite_CH_DIO_OUT_M_ISO_EN2, .-IOHAL_vidWrite_CH_DIO_OUT_M_ISO_EN2
	.align 1
	.global	IOHAL_vidWrite_CH_DIO_OUT_M_ISO_EN3
	.type	IOHAL_vidWrite_CH_DIO_OUT_M_ISO_EN3, @function
IOHAL_vidWrite_CH_DIO_OUT_M_ISO_EN3:
.LFB48:
	.loc 1 166 0
.LVL69:
	.loc 1 167 0
	and	%d5, %d4, 255
	mov	%d4, 191
.LVL70:
	j	Dio_WriteChannel
.LVL71:
.LFE48:
	.size	IOHAL_vidWrite_CH_DIO_OUT_M_ISO_EN3, .-IOHAL_vidWrite_CH_DIO_OUT_M_ISO_EN3
	.align 1
	.global	IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_V_1
	.type	IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_V_1, @function
IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_V_1:
.LFB49:
	.loc 1 171 0
	.loc 1 172 0
	mov	%d4, 192
	.loc 1 173 0
	j	Dio_ReadChannel
.LVL72:
.LFE49:
	.size	IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_V_1, .-IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_V_1
	.align 1
	.global	IOHAL_vidWrite_CH_DIO_OUT_M_KM20_DCJY1
	.type	IOHAL_vidWrite_CH_DIO_OUT_M_KM20_DCJY1, @function
IOHAL_vidWrite_CH_DIO_OUT_M_KM20_DCJY1:
.LFB50:
	.loc 1 175 0
.LVL73:
	.loc 1 176 0
	and	%d5, %d4, 255
	mov	%d4, 193
.LVL74:
	j	Dio_WriteChannel
.LVL75:
.LFE50:
	.size	IOHAL_vidWrite_CH_DIO_OUT_M_KM20_DCJY1, .-IOHAL_vidWrite_CH_DIO_OUT_M_KM20_DCJY1
	.align 1
	.global	IOHAL_vidWrite_CH_DIO_OUT_M_KM21_DCJY2
	.type	IOHAL_vidWrite_CH_DIO_OUT_M_KM21_DCJY2, @function
IOHAL_vidWrite_CH_DIO_OUT_M_KM21_DCJY2:
.LFB51:
	.loc 1 179 0
.LVL76:
	.loc 1 180 0
	and	%d5, %d4, 255
	mov	%d4, 208
.LVL77:
	j	Dio_WriteChannel
.LVL78:
.LFE51:
	.size	IOHAL_vidWrite_CH_DIO_OUT_M_KM21_DCJY2, .-IOHAL_vidWrite_CH_DIO_OUT_M_KM21_DCJY2
	.align 1
	.global	IOHAL_vidWrite_CH_DIO_OUT_M_KM22_DCJY3
	.type	IOHAL_vidWrite_CH_DIO_OUT_M_KM22_DCJY3, @function
IOHAL_vidWrite_CH_DIO_OUT_M_KM22_DCJY3:
.LFB52:
	.loc 1 183 0
.LVL79:
	.loc 1 184 0
	and	%d5, %d4, 255
	mov	%d4, 209
.LVL80:
	j	Dio_WriteChannel
.LVL81:
.LFE52:
	.size	IOHAL_vidWrite_CH_DIO_OUT_M_KM22_DCJY3, .-IOHAL_vidWrite_CH_DIO_OUT_M_KM22_DCJY3
	.align 1
	.global	IOHAL_vidWrite_CH_DIO_OUT_M_KM23_DCJY4
	.type	IOHAL_vidWrite_CH_DIO_OUT_M_KM23_DCJY4, @function
IOHAL_vidWrite_CH_DIO_OUT_M_KM23_DCJY4:
.LFB53:
	.loc 1 187 0
.LVL82:
	.loc 1 188 0
	and	%d5, %d4, 255
	mov	%d4, 210
.LVL83:
	j	Dio_WriteChannel
.LVL84:
.LFE53:
	.size	IOHAL_vidWrite_CH_DIO_OUT_M_KM23_DCJY4, .-IOHAL_vidWrite_CH_DIO_OUT_M_KM23_DCJY4
	.align 1
	.global	IOHAL_vidWrite_CH_DIO_OUT_M_YC5_SZ2_YC
	.type	IOHAL_vidWrite_CH_DIO_OUT_M_YC5_SZ2_YC, @function
IOHAL_vidWrite_CH_DIO_OUT_M_YC5_SZ2_YC:
.LFB54:
	.loc 1 191 0
.LVL85:
	.loc 1 192 0
	and	%d5, %d4, 255
	mov	%d4, 211
.LVL86:
	j	Dio_WriteChannel
.LVL87:
.LFE54:
	.size	IOHAL_vidWrite_CH_DIO_OUT_M_YC5_SZ2_YC, .-IOHAL_vidWrite_CH_DIO_OUT_M_YC5_SZ2_YC
	.align 1
	.global	IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_U_1
	.type	IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_U_1, @function
IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_U_1:
.LFB55:
	.loc 1 196 0
	.loc 1 197 0
	mov	%d4, 230
	.loc 1 198 0
	j	Dio_ReadChannel
.LVL88:
.LFE55:
	.size	IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_U_1, .-IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_U_1
	.align 1
	.global	IOHAL_u16Read_CH_DIO_IN_M_SUPPLY_WDI
	.type	IOHAL_u16Read_CH_DIO_IN_M_SUPPLY_WDI, @function
IOHAL_u16Read_CH_DIO_IN_M_SUPPLY_WDI:
.LFB56:
	.loc 1 200 0
	.loc 1 201 0
	mov	%d4, 231
	.loc 1 202 0
	j	Dio_ReadChannel
.LVL89:
.LFE56:
	.size	IOHAL_u16Read_CH_DIO_IN_M_SUPPLY_WDI, .-IOHAL_u16Read_CH_DIO_IN_M_SUPPLY_WDI
	.align 1
	.global	IOHAL_u16Read_CH_DIO_IN_M_IO_MUX3
	.type	IOHAL_u16Read_CH_DIO_IN_M_IO_MUX3, @function
IOHAL_u16Read_CH_DIO_IN_M_IO_MUX3:
.LFB57:
	.loc 1 204 0
	.loc 1 205 0
	mov	%d4, 232
	.loc 1 206 0
	j	Dio_ReadChannel
.LVL90:
.LFE57:
	.size	IOHAL_u16Read_CH_DIO_IN_M_IO_MUX3, .-IOHAL_u16Read_CH_DIO_IN_M_IO_MUX3
	.align 1
	.global	IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_W_1
	.type	IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_W_1, @function
IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_W_1:
.LFB58:
	.loc 1 208 0
	.loc 1 209 0
	mov	%d4, 234
	.loc 1 210 0
	j	Dio_ReadChannel
.LVL91:
.LFE58:
	.size	IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_W_1, .-IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_W_1
	.align 1
	.global	IOHAL_vidWrite_CH_DIO_OUT_M_DO2
	.type	IOHAL_vidWrite_CH_DIO_OUT_M_DO2, @function
IOHAL_vidWrite_CH_DIO_OUT_M_DO2:
.LFB59:
	.loc 1 213 0
.LVL92:
	.loc 1 214 0
	and	%d5, %d4, 255
	mov	%d4, 240
.LVL93:
	j	Dio_WriteChannel
.LVL94:
.LFE59:
	.size	IOHAL_vidWrite_CH_DIO_OUT_M_DO2, .-IOHAL_vidWrite_CH_DIO_OUT_M_DO2
	.align 1
	.global	IOHAL_u16Read_CH_DIO_IN_M_FAULT_ACM_HS_N
	.type	IOHAL_u16Read_CH_DIO_IN_M_FAULT_ACM_HS_N, @function
IOHAL_u16Read_CH_DIO_IN_M_FAULT_ACM_HS_N:
.LFB60:
	.loc 1 217 0
	.loc 1 218 0
	mov	%d4, 241
	.loc 1 219 0
	j	Dio_ReadChannel
.LVL95:
.LFE60:
	.size	IOHAL_u16Read_CH_DIO_IN_M_FAULT_ACM_HS_N, .-IOHAL_u16Read_CH_DIO_IN_M_FAULT_ACM_HS_N
	.align 1
	.global	IOHAL_u16Read_CH_DIO_IN_M_FAULT_EPS_HS_N
	.type	IOHAL_u16Read_CH_DIO_IN_M_FAULT_EPS_HS_N, @function
IOHAL_u16Read_CH_DIO_IN_M_FAULT_EPS_HS_N:
.LFB61:
	.loc 1 221 0
	.loc 1 222 0
	mov	%d4, 243
	.loc 1 223 0
	j	Dio_ReadChannel
.LVL96:
.LFE61:
	.size	IOHAL_u16Read_CH_DIO_IN_M_FAULT_EPS_HS_N, .-IOHAL_u16Read_CH_DIO_IN_M_FAULT_EPS_HS_N
	.align 1
	.global	IOHAL_vidWrite_CH_DIO_OUT_MCU_ASC_STATE
	.type	IOHAL_vidWrite_CH_DIO_OUT_MCU_ASC_STATE, @function
IOHAL_vidWrite_CH_DIO_OUT_MCU_ASC_STATE:
.LFB62:
	.loc 1 225 0
.LVL97:
	.loc 1 226 0
	and	%d5, %d4, 255
	mov	%d4, 247
.LVL98:
	j	Dio_WriteChannel
.LVL99:
.LFE62:
	.size	IOHAL_vidWrite_CH_DIO_OUT_MCU_ASC_STATE, .-IOHAL_vidWrite_CH_DIO_OUT_MCU_ASC_STATE
	.align 1
	.global	IOHAL_vidWrite_CH_DIO_OUT_M_YC3_KC4Z_YC
	.type	IOHAL_vidWrite_CH_DIO_OUT_M_YC3_KC4Z_YC, @function
IOHAL_vidWrite_CH_DIO_OUT_M_YC3_KC4Z_YC:
.LFB63:
	.loc 1 229 0
.LVL100:
	.loc 1 230 0
	and	%d5, %d4, 255
	mov	%d4, 248
.LVL101:
	j	Dio_WriteChannel
.LVL102:
.LFE63:
	.size	IOHAL_vidWrite_CH_DIO_OUT_M_YC3_KC4Z_YC, .-IOHAL_vidWrite_CH_DIO_OUT_M_YC3_KC4Z_YC
	.align 1
	.global	IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_HS_N_1
	.type	IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_HS_N_1, @function
IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_HS_N_1:
.LFB64:
	.loc 1 234 0
	.loc 1 235 0
	mov	%d4, 320
	.loc 1 236 0
	j	Dio_ReadChannel
.LVL103:
.LFE64:
	.size	IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_HS_N_1, .-IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_HS_N_1
	.align 1
	.global	IOHAL_vidWrite_CH_DIO_OUT_M_YC7_ZXFZ_YC
	.type	IOHAL_vidWrite_CH_DIO_OUT_M_YC7_ZXFZ_YC, @function
IOHAL_vidWrite_CH_DIO_OUT_M_YC7_ZXFZ_YC:
.LFB65:
	.loc 1 238 0
.LVL104:
	.loc 1 239 0
	and	%d5, %d4, 255
	mov	%d4, 321
.LVL105:
	j	Dio_WriteChannel
.LVL106:
.LFE65:
	.size	IOHAL_vidWrite_CH_DIO_OUT_M_YC7_ZXFZ_YC, .-IOHAL_vidWrite_CH_DIO_OUT_M_YC7_ZXFZ_YC
	.align 1
	.global	IOHAL_vidWrite_CH_DIO_OUT_M_YC1_ZQ_YC
	.type	IOHAL_vidWrite_CH_DIO_OUT_M_YC1_ZQ_YC, @function
IOHAL_vidWrite_CH_DIO_OUT_M_YC1_ZQ_YC:
.LFB66:
	.loc 1 242 0
.LVL107:
	.loc 1 243 0
	and	%d5, %d4, 255
	mov	%d4, 323
.LVL108:
	j	Dio_WriteChannel
.LVL109:
.LFE66:
	.size	IOHAL_vidWrite_CH_DIO_OUT_M_YC1_ZQ_YC, .-IOHAL_vidWrite_CH_DIO_OUT_M_YC1_ZQ_YC
	.align 1
	.global	IOHAL_vidWrite_CH_DIO_OUT_M_Q1_DCJR1
	.type	IOHAL_vidWrite_CH_DIO_OUT_M_Q1_DCJR1, @function
IOHAL_vidWrite_CH_DIO_OUT_M_Q1_DCJR1:
.LFB67:
	.loc 1 246 0
.LVL110:
	.loc 1 247 0
	and	%d5, %d4, 255
	mov	%d4, 329
.LVL111:
	j	Dio_WriteChannel
.LVL112:
.LFE67:
	.size	IOHAL_vidWrite_CH_DIO_OUT_M_Q1_DCJR1, .-IOHAL_vidWrite_CH_DIO_OUT_M_Q1_DCJR1
	.align 1
	.global	IOHAL_vidWrite_CH_DIO_OUT_M_Q2_DCJR2
	.type	IOHAL_vidWrite_CH_DIO_OUT_M_Q2_DCJR2, @function
IOHAL_vidWrite_CH_DIO_OUT_M_Q2_DCJR2:
.LFB68:
	.loc 1 250 0
.LVL113:
	.loc 1 251 0
	and	%d5, %d4, 255
	mov	%d4, 330
.LVL114:
	j	Dio_WriteChannel
.LVL115:
.LFE68:
	.size	IOHAL_vidWrite_CH_DIO_OUT_M_Q2_DCJR2, .-IOHAL_vidWrite_CH_DIO_OUT_M_Q2_DCJR2
	.align 1
	.global	IOHAL_vidWrite_CH_DIO_OUT_M_Q3_DCJR3
	.type	IOHAL_vidWrite_CH_DIO_OUT_M_Q3_DCJR3, @function
IOHAL_vidWrite_CH_DIO_OUT_M_Q3_DCJR3:
.LFB69:
	.loc 1 254 0
.LVL116:
	.loc 1 255 0
	and	%d5, %d4, 255
	mov	%d4, 331
.LVL117:
	j	Dio_WriteChannel
.LVL118:
.LFE69:
	.size	IOHAL_vidWrite_CH_DIO_OUT_M_Q3_DCJR3, .-IOHAL_vidWrite_CH_DIO_OUT_M_Q3_DCJR3
	.align 1
	.global	IOHAL_vidWrite_CH_DIO_OUT_M_Q4_DCJR4
	.type	IOHAL_vidWrite_CH_DIO_OUT_M_Q4_DCJR4, @function
IOHAL_vidWrite_CH_DIO_OUT_M_Q4_DCJR4:
.LFB70:
	.loc 1 258 0
.LVL119:
	.loc 1 259 0
	and	%d5, %d4, 255
	mov	%d4, 332
.LVL120:
	j	Dio_WriteChannel
.LVL121:
.LFE70:
	.size	IOHAL_vidWrite_CH_DIO_OUT_M_Q4_DCJR4, .-IOHAL_vidWrite_CH_DIO_OUT_M_Q4_DCJR4
	.align 1
	.global	IOHAL_vidWrite_CH_DIO_OUT_M_ENA_KM
	.type	IOHAL_vidWrite_CH_DIO_OUT_M_ENA_KM, @function
IOHAL_vidWrite_CH_DIO_OUT_M_ENA_KM:
.LFB71:
	.loc 1 262 0
.LVL122:
	.loc 1 263 0
	and	%d5, %d4, 255
	mov	%d4, 334
.LVL123:
	j	Dio_WriteChannel
.LVL124:
.LFE71:
	.size	IOHAL_vidWrite_CH_DIO_OUT_M_ENA_KM, .-IOHAL_vidWrite_CH_DIO_OUT_M_ENA_KM
	.align 1
	.global	IOHAL_vidWrite_CH_DIO_OUT_M_SRCLK
	.type	IOHAL_vidWrite_CH_DIO_OUT_M_SRCLK, @function
IOHAL_vidWrite_CH_DIO_OUT_M_SRCLK:
.LFB72:
	.loc 1 267 0
.LVL125:
	.loc 1 268 0
	and	%d5, %d4, 255
	mov	%d4, 341
.LVL126:
	j	Dio_WriteChannel
.LVL127:
.LFE72:
	.size	IOHAL_vidWrite_CH_DIO_OUT_M_SRCLK, .-IOHAL_vidWrite_CH_DIO_OUT_M_SRCLK
	.align 1
	.global	IOHAL_vidWrite_CH_DIO_OUT_M_RCLK
	.type	IOHAL_vidWrite_CH_DIO_OUT_M_RCLK, @function
IOHAL_vidWrite_CH_DIO_OUT_M_RCLK:
.LFB73:
	.loc 1 272 0
.LVL128:
	.loc 1 273 0
	and	%d5, %d4, 255
	mov	%d4, 352
.LVL129:
	j	Dio_WriteChannel
.LVL130:
.LFE73:
	.size	IOHAL_vidWrite_CH_DIO_OUT_M_RCLK, .-IOHAL_vidWrite_CH_DIO_OUT_M_RCLK
	.align 1
	.global	IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_LS_N_1
	.type	IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_LS_N_1, @function
IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_LS_N_1:
.LFB74:
	.loc 1 276 0
	.loc 1 277 0
	mov	%d4, 353
	.loc 1 278 0
	j	Dio_ReadChannel
.LVL131:
.LFE74:
	.size	IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_LS_N_1, .-IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_LS_N_1
	.align 1
	.global	IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_LS_N_2
	.type	IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_LS_N_2, @function
IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_LS_N_2:
.LFB75:
	.loc 1 280 0
	.loc 1 281 0
	mov	%d4, 354
	.loc 1 282 0
	j	Dio_ReadChannel
.LVL132:
.LFE75:
	.size	IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_LS_N_2, .-IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_LS_N_2
	.align 1
	.global	IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_HS_N_2
	.type	IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_HS_N_2, @function
IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_HS_N_2:
.LFB76:
	.loc 1 284 0
	.loc 1 285 0
	mov	%d4, 355
	.loc 1 286 0
	j	Dio_ReadChannel
.LVL133:
.LFE76:
	.size	IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_HS_N_2, .-IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_HS_N_2
	.align 1
	.global	IOHAL_vidWrite_CH_DIO_OUT_M_Q5_PTC1
	.type	IOHAL_vidWrite_CH_DIO_OUT_M_Q5_PTC1, @function
IOHAL_vidWrite_CH_DIO_OUT_M_Q5_PTC1:
.LFB77:
	.loc 1 288 0
.LVL134:
	.loc 1 289 0
	and	%d5, %d4, 255
	mov	%d4, 356
.LVL135:
	j	Dio_WriteChannel
.LVL136:
.LFE77:
	.size	IOHAL_vidWrite_CH_DIO_OUT_M_Q5_PTC1, .-IOHAL_vidWrite_CH_DIO_OUT_M_Q5_PTC1
	.align 1
	.global	IOHAL_vidWrite_CH_DIO_OUT_M_ACM_ENA_PWM
	.type	IOHAL_vidWrite_CH_DIO_OUT_M_ACM_ENA_PWM, @function
IOHAL_vidWrite_CH_DIO_OUT_M_ACM_ENA_PWM:
.LFB78:
	.loc 1 292 0
.LVL137:
	.loc 1 293 0
	and	%d5, %d4, 255
	mov	%d4, 360
.LVL138:
	j	Dio_WriteChannel
.LVL139:
.LFE78:
	.size	IOHAL_vidWrite_CH_DIO_OUT_M_ACM_ENA_PWM, .-IOHAL_vidWrite_CH_DIO_OUT_M_ACM_ENA_PWM
	.align 1
	.global	IOHAL_vidWrite_CH_DIO_OUT_M_DX1_C
	.type	IOHAL_vidWrite_CH_DIO_OUT_M_DX1_C, @function
IOHAL_vidWrite_CH_DIO_OUT_M_DX1_C:
.LFB79:
	.loc 1 297 0
.LVL140:
	.loc 1 298 0
	and	%d5, %d4, 255
	mov	%d4, 369
.LVL141:
	j	Dio_WriteChannel
.LVL142:
.LFE79:
	.size	IOHAL_vidWrite_CH_DIO_OUT_M_DX1_C, .-IOHAL_vidWrite_CH_DIO_OUT_M_DX1_C
	.align 1
	.global	IOHAL_vidWrite_CH_DIO_OUT_M_YC6_XGLFZ_YC
	.type	IOHAL_vidWrite_CH_DIO_OUT_M_YC6_XGLFZ_YC, @function
IOHAL_vidWrite_CH_DIO_OUT_M_YC6_XGLFZ_YC:
.LFB80:
	.loc 1 301 0
.LVL143:
	.loc 1 302 0
	and	%d5, %d4, 255
	mov	%d4, 370
.LVL144:
	j	Dio_WriteChannel
.LVL145:
.LFE80:
	.size	IOHAL_vidWrite_CH_DIO_OUT_M_YC6_XGLFZ_YC, .-IOHAL_vidWrite_CH_DIO_OUT_M_YC6_XGLFZ_YC
	.align 1
	.global	IOHAL_vidWrite_CH_DIO_OUT_M_EPS_ENA_PWM
	.type	IOHAL_vidWrite_CH_DIO_OUT_M_EPS_ENA_PWM, @function
IOHAL_vidWrite_CH_DIO_OUT_M_EPS_ENA_PWM:
.LFB81:
	.loc 1 305 0
.LVL146:
	.loc 1 306 0
	and	%d5, %d4, 255
	mov	%d4, 375
.LVL147:
	j	Dio_WriteChannel
.LVL148:
.LFE81:
	.size	IOHAL_vidWrite_CH_DIO_OUT_M_EPS_ENA_PWM, .-IOHAL_vidWrite_CH_DIO_OUT_M_EPS_ENA_PWM
	.align 1
	.global	IOHAL_u16Read_CH_DIO_IN_M_KEY_ON
	.type	IOHAL_u16Read_CH_DIO_IN_M_KEY_ON, @function
IOHAL_u16Read_CH_DIO_IN_M_KEY_ON:
.LFB82:
	.loc 1 332 0
	.loc 1 333 0
	mov	%d4, 514
	.loc 1 334 0
	j	Dio_ReadChannel
.LVL149:
.LFE82:
	.size	IOHAL_u16Read_CH_DIO_IN_M_KEY_ON, .-IOHAL_u16Read_CH_DIO_IN_M_KEY_ON
	.align 1
	.global	IOHAL_vidWrite_CH_DIO_OUT_M_DX2_A
	.type	IOHAL_vidWrite_CH_DIO_OUT_M_DX2_A, @function
IOHAL_vidWrite_CH_DIO_OUT_M_DX2_A:
.LFB83:
	.loc 1 336 0
.LVL150:
	.loc 1 337 0
	and	%d5, %d4, 255
	mov	%d4, 515
.LVL151:
	j	Dio_WriteChannel
.LVL152:
.LFE83:
	.size	IOHAL_vidWrite_CH_DIO_OUT_M_DX2_A, .-IOHAL_vidWrite_CH_DIO_OUT_M_DX2_A
	.align 1
	.global	IOHAL_vidWrite_CH_DIO_OUT_M_DX2_B
	.type	IOHAL_vidWrite_CH_DIO_OUT_M_DX2_B, @function
IOHAL_vidWrite_CH_DIO_OUT_M_DX2_B:
.LFB84:
	.loc 1 340 0
.LVL153:
	.loc 1 341 0
	and	%d5, %d4, 255
	mov	%d4, 516
.LVL154:
	j	Dio_WriteChannel
.LVL155:
.LFE84:
	.size	IOHAL_vidWrite_CH_DIO_OUT_M_DX2_B, .-IOHAL_vidWrite_CH_DIO_OUT_M_DX2_B
	.align 1
	.global	IOHAL_vidWrite_CH_DIO_OUT_M_DX2_C
	.type	IOHAL_vidWrite_CH_DIO_OUT_M_DX2_C, @function
IOHAL_vidWrite_CH_DIO_OUT_M_DX2_C:
.LFB85:
	.loc 1 344 0
.LVL156:
	.loc 1 345 0
	and	%d5, %d4, 255
	mov	%d4, 517
.LVL157:
	j	Dio_WriteChannel
.LVL158:
.LFE85:
	.size	IOHAL_vidWrite_CH_DIO_OUT_M_DX2_C, .-IOHAL_vidWrite_CH_DIO_OUT_M_DX2_C
	.align 1
	.global	IOHAL_vidWrite_CH_DIO_OUT_M_YC4_SZ1_YC
	.type	IOHAL_vidWrite_CH_DIO_OUT_M_YC4_SZ1_YC, @function
IOHAL_vidWrite_CH_DIO_OUT_M_YC4_SZ1_YC:
.LFB86:
	.loc 1 348 0
.LVL159:
	.loc 1 349 0
	and	%d5, %d4, 255
	mov	%d4, 519
.LVL160:
	j	Dio_WriteChannel
.LVL161:
.LFE86:
	.size	IOHAL_vidWrite_CH_DIO_OUT_M_YC4_SZ1_YC, .-IOHAL_vidWrite_CH_DIO_OUT_M_YC4_SZ1_YC
	.align 1
	.global	IOHAL_vidWrite_CH_DIO_OUT_MCU_STATE_LED
	.type	IOHAL_vidWrite_CH_DIO_OUT_MCU_STATE_LED, @function
IOHAL_vidWrite_CH_DIO_OUT_MCU_STATE_LED:
.LFB87:
	.loc 1 353 0
.LVL162:
	.loc 1 354 0
	and	%d5, %d4, 255
	mov	%d4, 534
.LVL163:
	j	Dio_WriteChannel
.LVL164:
.LFE87:
	.size	IOHAL_vidWrite_CH_DIO_OUT_MCU_STATE_LED, .-IOHAL_vidWrite_CH_DIO_OUT_MCU_STATE_LED
	.align 1
	.global	IOHAL_vidWrite_CH_DIO_OUT_M_SER
	.type	IOHAL_vidWrite_CH_DIO_OUT_M_SER, @function
IOHAL_vidWrite_CH_DIO_OUT_M_SER:
.LFB88:
	.loc 1 357 0
.LVL165:
	.loc 1 358 0
	and	%d5, %d4, 255
	mov	%d4, 542
.LVL166:
	j	Dio_WriteChannel
.LVL167:
.LFE88:
	.size	IOHAL_vidWrite_CH_DIO_OUT_M_SER, .-IOHAL_vidWrite_CH_DIO_OUT_M_SER
	.align 1
	.global	IOHAL_vidWrite_CH_DIO_OUT_M_DO1
	.type	IOHAL_vidWrite_CH_DIO_OUT_M_DO1, @function
IOHAL_vidWrite_CH_DIO_OUT_M_DO1:
.LFB89:
	.loc 1 361 0
.LVL168:
	.loc 1 362 0
	and	%d5, %d4, 255
	mov	%d4, 543
.LVL169:
	j	Dio_WriteChannel
.LVL170:
.LFE89:
	.size	IOHAL_vidWrite_CH_DIO_OUT_M_DO1, .-IOHAL_vidWrite_CH_DIO_OUT_M_DO1
	.align 1
	.global	IOHAL_u16Read_CH_DIO_IN_M_CHG_ON
	.type	IOHAL_u16Read_CH_DIO_IN_M_CHG_ON, @function
IOHAL_u16Read_CH_DIO_IN_M_CHG_ON:
.LFB90:
	.loc 1 366 0
	.loc 1 367 0
	mov	%d4, 545
	.loc 1 368 0
	j	Dio_ReadChannel
.LVL171:
.LFE90:
	.size	IOHAL_u16Read_CH_DIO_IN_M_CHG_ON, .-IOHAL_u16Read_CH_DIO_IN_M_CHG_ON
	.align 1
	.global	IOHAL_vidWrite_CH_DIO_OUT_M_RCLK_3
	.type	IOHAL_vidWrite_CH_DIO_OUT_M_RCLK_3, @function
IOHAL_vidWrite_CH_DIO_OUT_M_RCLK_3:
.LFB91:
	.loc 1 371 0
.LVL172:
	.loc 1 372 0
	and	%d5, %d4, 255
	mov	%d4, 548
.LVL173:
	j	Dio_WriteChannel
.LVL174:
.LFE91:
	.size	IOHAL_vidWrite_CH_DIO_OUT_M_RCLK_3, .-IOHAL_vidWrite_CH_DIO_OUT_M_RCLK_3
	.align 1
	.global	IOHAL_u16Read_CH_ADC_IN_AN_VOL_DCLINK_DRV
	.type	IOHAL_u16Read_CH_ADC_IN_AN_VOL_DCLINK_DRV, @function
IOHAL_u16Read_CH_ADC_IN_AN_VOL_DCLINK_DRV:
.LFB92:
	.loc 1 376 0
	.loc 1 378 0
	movh.a	%a15, hi:VADC_u16GroupBuffer10
	ld.hu	%d2, [%a15] lo:VADC_u16GroupBuffer10
	ret
.LFE92:
	.size	IOHAL_u16Read_CH_ADC_IN_AN_VOL_DCLINK_DRV, .-IOHAL_u16Read_CH_ADC_IN_AN_VOL_DCLINK_DRV
	.align 1
	.global	IOHAL_u16Read_CH_ADC_IN_M_AN_MOT_COS_1
	.type	IOHAL_u16Read_CH_ADC_IN_M_AN_MOT_COS_1, @function
IOHAL_u16Read_CH_ADC_IN_M_AN_MOT_COS_1:
.LFB93:
	.loc 1 385 0
	.loc 1 387 0
	movh.a	%a15, hi:VADC_u16GroupBuffer0
	ld.hu	%d2, [%a15] lo:VADC_u16GroupBuffer0
	ret
.LFE93:
	.size	IOHAL_u16Read_CH_ADC_IN_M_AN_MOT_COS_1, .-IOHAL_u16Read_CH_ADC_IN_M_AN_MOT_COS_1
	.align 1
	.global	IOHAL_u16Read_CH_ADC_IN_M_AN_MOT_SIN_1
	.type	IOHAL_u16Read_CH_ADC_IN_M_AN_MOT_SIN_1, @function
IOHAL_u16Read_CH_ADC_IN_M_AN_MOT_SIN_1:
.LFB94:
	.loc 1 394 0
	.loc 1 396 0
	movh.a	%a15, hi:VADC_u16GroupBuffer0
	lea	%a15, [%a15] lo:VADC_u16GroupBuffer0
	ld.hu	%d2, [%a15] 2
	ret
.LFE94:
	.size	IOHAL_u16Read_CH_ADC_IN_M_AN_MOT_SIN_1, .-IOHAL_u16Read_CH_ADC_IN_M_AN_MOT_SIN_1
	.align 1
	.global	IOHAL_u16Read_CH_ADC_IN_M_AN_KM6_FB_KC1F
	.type	IOHAL_u16Read_CH_ADC_IN_M_AN_KM6_FB_KC1F, @function
IOHAL_u16Read_CH_ADC_IN_M_AN_KM6_FB_KC1F:
.LFB95:
	.loc 1 403 0
	.loc 1 405 0
	movh.a	%a15, hi:VADC_u16GroupBuffer0
	lea	%a15, [%a15] lo:VADC_u16GroupBuffer0
	ld.hu	%d2, [%a15] 4
	ret
.LFE95:
	.size	IOHAL_u16Read_CH_ADC_IN_M_AN_KM6_FB_KC1F, .-IOHAL_u16Read_CH_ADC_IN_M_AN_KM6_FB_KC1F
	.align 1
	.global	IOHAL_u16Read_CH_ADC_IN_AN_MON_CURRENT_OCP_MCU1
	.type	IOHAL_u16Read_CH_ADC_IN_AN_MON_CURRENT_OCP_MCU1, @function
IOHAL_u16Read_CH_ADC_IN_AN_MON_CURRENT_OCP_MCU1:
.LFB96:
	.loc 1 407 0
	.loc 1 409 0
	movh.a	%a15, hi:VADC_u16GroupBuffer0
	lea	%a15, [%a15] lo:VADC_u16GroupBuffer0
	ld.hu	%d2, [%a15] 4
	ret
.LFE96:
	.size	IOHAL_u16Read_CH_ADC_IN_AN_MON_CURRENT_OCP_MCU1, .-IOHAL_u16Read_CH_ADC_IN_AN_MON_CURRENT_OCP_MCU1
	.align 1
	.global	IOHAL_u16Read_CH_ADC_IN_M_AN_KM8_FB_KC2F
	.type	IOHAL_u16Read_CH_ADC_IN_M_AN_KM8_FB_KC2F, @function
IOHAL_u16Read_CH_ADC_IN_M_AN_KM8_FB_KC2F:
.LFB97:
	.loc 1 416 0
	.loc 1 418 0
	movh.a	%a15, hi:VADC_u16GroupBuffer0
	lea	%a15, [%a15] lo:VADC_u16GroupBuffer0
	ld.hu	%d2, [%a15] 6
	ret
.LFE97:
	.size	IOHAL_u16Read_CH_ADC_IN_M_AN_KM8_FB_KC2F, .-IOHAL_u16Read_CH_ADC_IN_M_AN_KM8_FB_KC2F
	.align 1
	.global	IOHAL_u16Read_CH_ADC_IN_AN_MON_CURRENT_OCP_MCU2
	.type	IOHAL_u16Read_CH_ADC_IN_AN_MON_CURRENT_OCP_MCU2, @function
IOHAL_u16Read_CH_ADC_IN_AN_MON_CURRENT_OCP_MCU2:
.LFB98:
	.loc 1 420 0
	.loc 1 422 0
	movh.a	%a15, hi:VADC_u16GroupBuffer0
	lea	%a15, [%a15] lo:VADC_u16GroupBuffer0
	ld.hu	%d2, [%a15] 6
	ret
.LFE98:
	.size	IOHAL_u16Read_CH_ADC_IN_AN_MON_CURRENT_OCP_MCU2, .-IOHAL_u16Read_CH_ADC_IN_AN_MON_CURRENT_OCP_MCU2
	.align 1
	.global	IOHAL_u16Read_CH_ADC_IN_M_AN_CURRENT_U_1
	.type	IOHAL_u16Read_CH_ADC_IN_M_AN_CURRENT_U_1, @function
IOHAL_u16Read_CH_ADC_IN_M_AN_CURRENT_U_1:
.LFB99:
	.loc 1 430 0
	.loc 1 432 0
	movh.a	%a15, hi:VADC_u16GroupBuffer1
	ld.hu	%d2, [%a15] lo:VADC_u16GroupBuffer1
	ret
.LFE99:
	.size	IOHAL_u16Read_CH_ADC_IN_M_AN_CURRENT_U_1, .-IOHAL_u16Read_CH_ADC_IN_M_AN_CURRENT_U_1
	.align 1
	.global	IOHAL_u16Read_CH_ADC_IN_M_AN_CURRENT_V_1
	.type	IOHAL_u16Read_CH_ADC_IN_M_AN_CURRENT_V_1, @function
IOHAL_u16Read_CH_ADC_IN_M_AN_CURRENT_V_1:
.LFB100:
	.loc 1 440 0
	.loc 1 442 0
	movh.a	%a15, hi:VADC_u16GroupBuffer1
	lea	%a15, [%a15] lo:VADC_u16GroupBuffer1
	ld.hu	%d2, [%a15] 2
	ret
.LFE100:
	.size	IOHAL_u16Read_CH_ADC_IN_M_AN_CURRENT_V_1, .-IOHAL_u16Read_CH_ADC_IN_M_AN_CURRENT_V_1
	.align 1
	.global	IOHAL_u16Read_CH_ADC_IN_M_AN_CURRENT_W_1
	.type	IOHAL_u16Read_CH_ADC_IN_M_AN_CURRENT_W_1, @function
IOHAL_u16Read_CH_ADC_IN_M_AN_CURRENT_W_1:
.LFB101:
	.loc 1 449 0
	.loc 1 451 0
	movh.a	%a15, hi:VADC_u16GroupBuffer1
	lea	%a15, [%a15] lo:VADC_u16GroupBuffer1
	ld.hu	%d2, [%a15] 4
	ret
.LFE101:
	.size	IOHAL_u16Read_CH_ADC_IN_M_AN_CURRENT_W_1, .-IOHAL_u16Read_CH_ADC_IN_M_AN_CURRENT_W_1
	.align 1
	.global	IOHAL_u16Read_CH_ADC_IN_M_AN_DC_LINK_PACK4
	.type	IOHAL_u16Read_CH_ADC_IN_M_AN_DC_LINK_PACK4, @function
IOHAL_u16Read_CH_ADC_IN_M_AN_DC_LINK_PACK4:
.LFB102:
	.loc 1 458 0
	.loc 1 460 0
	movh.a	%a15, hi:VADC_u16GroupBuffer1
	lea	%a15, [%a15] lo:VADC_u16GroupBuffer1
	ld.hu	%d2, [%a15] 6
	ret
.LFE102:
	.size	IOHAL_u16Read_CH_ADC_IN_M_AN_DC_LINK_PACK4, .-IOHAL_u16Read_CH_ADC_IN_M_AN_DC_LINK_PACK4
	.align 1
	.global	IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_SIN_H_2
	.type	IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_SIN_H_2, @function
IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_SIN_H_2:
.LFB103:
	.loc 1 462 0
	.loc 1 464 0
	movh.a	%a15, hi:VADC_u16GroupBuffer1
	lea	%a15, [%a15] lo:VADC_u16GroupBuffer1
	ld.hu	%d2, [%a15] 6
	ret
.LFE103:
	.size	IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_SIN_H_2, .-IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_SIN_H_2
	.align 1
	.global	IOHAL_u16Read_CH_ADC_IN_M_ACM_TEMP_MEAS_MOD_W
	.type	IOHAL_u16Read_CH_ADC_IN_M_ACM_TEMP_MEAS_MOD_W, @function
IOHAL_u16Read_CH_ADC_IN_M_ACM_TEMP_MEAS_MOD_W:
.LFB104:
	.loc 1 471 0
	.loc 1 473 0
	movh.a	%a15, hi:VADC_u16GroupBuffer1
	lea	%a15, [%a15] lo:VADC_u16GroupBuffer1
	ld.hu	%d2, [%a15] 8
	ret
.LFE104:
	.size	IOHAL_u16Read_CH_ADC_IN_M_ACM_TEMP_MEAS_MOD_W, .-IOHAL_u16Read_CH_ADC_IN_M_ACM_TEMP_MEAS_MOD_W
	.align 1
	.global	IOHAL_u16Read_CH_ADC_IN_M_HDW_VERSION
	.type	IOHAL_u16Read_CH_ADC_IN_M_HDW_VERSION, @function
IOHAL_u16Read_CH_ADC_IN_M_HDW_VERSION:
.LFB105:
	.loc 1 475 0
	.loc 1 477 0
	movh.a	%a15, hi:VADC_u16GroupBuffer1
	lea	%a15, [%a15] lo:VADC_u16GroupBuffer1
	ld.hu	%d2, [%a15] 8
	ret
.LFE105:
	.size	IOHAL_u16Read_CH_ADC_IN_M_HDW_VERSION, .-IOHAL_u16Read_CH_ADC_IN_M_HDW_VERSION
	.align 1
	.global	IOHAL_u16Read_CH_ADC_IN_M_ACM_TEMP_MEAS_MOD_V
	.type	IOHAL_u16Read_CH_ADC_IN_M_ACM_TEMP_MEAS_MOD_V, @function
IOHAL_u16Read_CH_ADC_IN_M_ACM_TEMP_MEAS_MOD_V:
.LFB106:
	.loc 1 484 0
	.loc 1 486 0
	movh.a	%a15, hi:VADC_u16GroupBuffer1
	lea	%a15, [%a15] lo:VADC_u16GroupBuffer1
	ld.hu	%d2, [%a15] 10
	ret
.LFE106:
	.size	IOHAL_u16Read_CH_ADC_IN_M_ACM_TEMP_MEAS_MOD_V, .-IOHAL_u16Read_CH_ADC_IN_M_ACM_TEMP_MEAS_MOD_V
	.align 1
	.global	IOHAL_u16Read_CH_ADC_IN_AN_P5V_AD2S
	.type	IOHAL_u16Read_CH_ADC_IN_AN_P5V_AD2S, @function
IOHAL_u16Read_CH_ADC_IN_AN_P5V_AD2S:
.LFB107:
	.loc 1 488 0
	.loc 1 490 0
	movh.a	%a15, hi:VADC_u16GroupBuffer1
	lea	%a15, [%a15] lo:VADC_u16GroupBuffer1
	ld.hu	%d2, [%a15] 10
	ret
.LFE107:
	.size	IOHAL_u16Read_CH_ADC_IN_AN_P5V_AD2S, .-IOHAL_u16Read_CH_ADC_IN_AN_P5V_AD2S
	.align 1
	.global	IOHAL_u16Read_CH_ADC_IN_M_AN_MOT_COS_2
	.type	IOHAL_u16Read_CH_ADC_IN_M_AN_MOT_COS_2, @function
IOHAL_u16Read_CH_ADC_IN_M_AN_MOT_COS_2:
.LFB108:
	.loc 1 497 0
	.loc 1 499 0
	movh.a	%a15, hi:VADC_u16GroupBuffer2
	ld.hu	%d2, [%a15] lo:VADC_u16GroupBuffer2
	ret
.LFE108:
	.size	IOHAL_u16Read_CH_ADC_IN_M_AN_MOT_COS_2, .-IOHAL_u16Read_CH_ADC_IN_M_AN_MOT_COS_2
	.align 1
	.global	IOHAL_u16Read_CH_ADC_IN_M_AN_MOT_SIN_2
	.type	IOHAL_u16Read_CH_ADC_IN_M_AN_MOT_SIN_2, @function
IOHAL_u16Read_CH_ADC_IN_M_AN_MOT_SIN_2:
.LFB109:
	.loc 1 506 0
	.loc 1 508 0
	movh.a	%a15, hi:VADC_u16GroupBuffer2
	lea	%a15, [%a15] lo:VADC_u16GroupBuffer2
	ld.hu	%d2, [%a15] 2
	ret
.LFE109:
	.size	IOHAL_u16Read_CH_ADC_IN_M_AN_MOT_SIN_2, .-IOHAL_u16Read_CH_ADC_IN_M_AN_MOT_SIN_2
	.align 1
	.global	IOHAL_u16Read_CH_ADC_IN_M_EPS_TEMP_MEAS_MOD_W
	.type	IOHAL_u16Read_CH_ADC_IN_M_EPS_TEMP_MEAS_MOD_W, @function
IOHAL_u16Read_CH_ADC_IN_M_EPS_TEMP_MEAS_MOD_W:
.LFB110:
	.loc 1 515 0
	.loc 1 517 0
	movh.a	%a15, hi:VADC_u16GroupBuffer2
	lea	%a15, [%a15] lo:VADC_u16GroupBuffer2
	ld.hu	%d2, [%a15] 4
	ret
.LFE110:
	.size	IOHAL_u16Read_CH_ADC_IN_M_EPS_TEMP_MEAS_MOD_W, .-IOHAL_u16Read_CH_ADC_IN_M_EPS_TEMP_MEAS_MOD_W
	.align 1
	.global	IOHAL_u16Read_CH_ADC_IN_AN_15V_RDC
	.type	IOHAL_u16Read_CH_ADC_IN_AN_15V_RDC, @function
IOHAL_u16Read_CH_ADC_IN_AN_15V_RDC:
.LFB111:
	.loc 1 519 0
	.loc 1 521 0
	movh.a	%a15, hi:VADC_u16GroupBuffer2
	lea	%a15, [%a15] lo:VADC_u16GroupBuffer2
	ld.hu	%d2, [%a15] 4
	ret
.LFE111:
	.size	IOHAL_u16Read_CH_ADC_IN_AN_15V_RDC, .-IOHAL_u16Read_CH_ADC_IN_AN_15V_RDC
	.align 1
	.global	IOHAL_u16Read_CH_ADC_IN_M_EPS_TEMP_MEAS_MOD_V
	.type	IOHAL_u16Read_CH_ADC_IN_M_EPS_TEMP_MEAS_MOD_V, @function
IOHAL_u16Read_CH_ADC_IN_M_EPS_TEMP_MEAS_MOD_V:
.LFB112:
	.loc 1 528 0
	.loc 1 530 0
	movh.a	%a15, hi:VADC_u16GroupBuffer2
	lea	%a15, [%a15] lo:VADC_u16GroupBuffer2
	ld.hu	%d2, [%a15] 6
	ret
.LFE112:
	.size	IOHAL_u16Read_CH_ADC_IN_M_EPS_TEMP_MEAS_MOD_V, .-IOHAL_u16Read_CH_ADC_IN_M_EPS_TEMP_MEAS_MOD_V
	.align 1
	.global	IOHAL_u16Read_CH_ADC_IN_AN_P5V_REF
	.type	IOHAL_u16Read_CH_ADC_IN_AN_P5V_REF, @function
IOHAL_u16Read_CH_ADC_IN_AN_P5V_REF:
.LFB113:
	.loc 1 532 0
	.loc 1 534 0
	movh.a	%a15, hi:VADC_u16GroupBuffer2
	lea	%a15, [%a15] lo:VADC_u16GroupBuffer2
	ld.hu	%d2, [%a15] 6
	ret
.LFE113:
	.size	IOHAL_u16Read_CH_ADC_IN_AN_P5V_REF, .-IOHAL_u16Read_CH_ADC_IN_AN_P5V_REF
	.align 1
	.global	IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_COS_L_2
	.type	IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_COS_L_2, @function
IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_COS_L_2:
.LFB114:
	.loc 1 541 0
	.loc 1 543 0
	movh.a	%a15, hi:VADC_u16GroupBuffer2
	lea	%a15, [%a15] lo:VADC_u16GroupBuffer2
	ld.hu	%d2, [%a15] 8
	ret
.LFE114:
	.size	IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_COS_L_2, .-IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_COS_L_2
	.align 1
	.global	IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_COS_H_2
	.type	IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_COS_H_2, @function
IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_COS_H_2:
.LFB115:
	.loc 1 550 0
	.loc 1 552 0
	movh.a	%a15, hi:VADC_u16GroupBuffer2
	lea	%a15, [%a15] lo:VADC_u16GroupBuffer2
	ld.hu	%d2, [%a15] 10
	ret
.LFE115:
	.size	IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_COS_H_2, .-IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_COS_H_2
	.align 1
	.global	IOHAL_u16Read_CH_ADC_IN_M_AN_CURRENT_U_2
	.type	IOHAL_u16Read_CH_ADC_IN_M_AN_CURRENT_U_2, @function
IOHAL_u16Read_CH_ADC_IN_M_AN_CURRENT_U_2:
.LFB116:
	.loc 1 559 0
	.loc 1 561 0
	movh.a	%a15, hi:VADC_u16GroupBuffer3
	ld.hu	%d2, [%a15] lo:VADC_u16GroupBuffer3
	ret
.LFE116:
	.size	IOHAL_u16Read_CH_ADC_IN_M_AN_CURRENT_U_2, .-IOHAL_u16Read_CH_ADC_IN_M_AN_CURRENT_U_2
	.align 1
	.global	IOHAL_u16Read_CH_ADC_IN_M_AN_CURRENT_V_2
	.type	IOHAL_u16Read_CH_ADC_IN_M_AN_CURRENT_V_2, @function
IOHAL_u16Read_CH_ADC_IN_M_AN_CURRENT_V_2:
.LFB117:
	.loc 1 568 0
	.loc 1 570 0
	movh.a	%a15, hi:VADC_u16GroupBuffer3
	lea	%a15, [%a15] lo:VADC_u16GroupBuffer3
	ld.hu	%d2, [%a15] 2
	ret
.LFE117:
	.size	IOHAL_u16Read_CH_ADC_IN_M_AN_CURRENT_V_2, .-IOHAL_u16Read_CH_ADC_IN_M_AN_CURRENT_V_2
	.align 1
	.global	IOHAL_u16Read_CH_ADC_IN_M_AN_CURRENT_W_2
	.type	IOHAL_u16Read_CH_ADC_IN_M_AN_CURRENT_W_2, @function
IOHAL_u16Read_CH_ADC_IN_M_AN_CURRENT_W_2:
.LFB118:
	.loc 1 577 0
	.loc 1 579 0
	movh.a	%a15, hi:VADC_u16GroupBuffer3
	lea	%a15, [%a15] lo:VADC_u16GroupBuffer3
	ld.hu	%d2, [%a15] 4
	ret
.LFE118:
	.size	IOHAL_u16Read_CH_ADC_IN_M_AN_CURRENT_W_2, .-IOHAL_u16Read_CH_ADC_IN_M_AN_CURRENT_W_2
	.align 1
	.global	IOHAL_u16Read_CH_ADC_IN_M_IO_MUX1
	.type	IOHAL_u16Read_CH_ADC_IN_M_IO_MUX1, @function
IOHAL_u16Read_CH_ADC_IN_M_IO_MUX1:
.LFB119:
	.loc 1 586 0
	.loc 1 588 0
	movh.a	%a15, hi:VADC_u16GroupBuffer3_1
	ld.hu	%d2, [%a15] lo:VADC_u16GroupBuffer3_1
	ret
.LFE119:
	.size	IOHAL_u16Read_CH_ADC_IN_M_IO_MUX1, .-IOHAL_u16Read_CH_ADC_IN_M_IO_MUX1
	.align 1
	.global	IOHAL_u16Read_CH_ADC_IN_M_AN_MUX1
	.type	IOHAL_u16Read_CH_ADC_IN_M_AN_MUX1, @function
IOHAL_u16Read_CH_ADC_IN_M_AN_MUX1:
.LFB120:
	.loc 1 595 0
	.loc 1 597 0
	movh.a	%a15, hi:VADC_u16GroupBuffer3_1
	lea	%a15, [%a15] lo:VADC_u16GroupBuffer3_1
	ld.hu	%d2, [%a15] 2
	ret
.LFE120:
	.size	IOHAL_u16Read_CH_ADC_IN_M_AN_MUX1, .-IOHAL_u16Read_CH_ADC_IN_M_AN_MUX1
	.align 1
	.global	IOHAL_u16Read_CH_ADC_IN_M_AN_MUX2
	.type	IOHAL_u16Read_CH_ADC_IN_M_AN_MUX2, @function
IOHAL_u16Read_CH_ADC_IN_M_AN_MUX2:
.LFB121:
	.loc 1 604 0
	.loc 1 606 0
	movh.a	%a15, hi:VADC_u16GroupBuffer3_1
	lea	%a15, [%a15] lo:VADC_u16GroupBuffer3_1
	ld.hu	%d2, [%a15] 4
	ret
.LFE121:
	.size	IOHAL_u16Read_CH_ADC_IN_M_AN_MUX2, .-IOHAL_u16Read_CH_ADC_IN_M_AN_MUX2
	.align 1
	.global	IOHAL_u16Read_CH_ADC_IN_M_AN_MUX4
	.type	IOHAL_u16Read_CH_ADC_IN_M_AN_MUX4, @function
IOHAL_u16Read_CH_ADC_IN_M_AN_MUX4:
.LFB122:
	.loc 1 613 0
	.loc 1 615 0
	movh.a	%a15, hi:VADC_u16GroupBuffer3_1
	lea	%a15, [%a15] lo:VADC_u16GroupBuffer3_1
	ld.hu	%d2, [%a15] 8
	ret
.LFE122:
	.size	IOHAL_u16Read_CH_ADC_IN_M_AN_MUX4, .-IOHAL_u16Read_CH_ADC_IN_M_AN_MUX4
	.align 1
	.global	IOHAL_u16Read_CH_ADC_IN_M_AN_MUX3
	.type	IOHAL_u16Read_CH_ADC_IN_M_AN_MUX3, @function
IOHAL_u16Read_CH_ADC_IN_M_AN_MUX3:
.LFB123:
	.loc 1 622 0
	.loc 1 624 0
	movh.a	%a15, hi:VADC_u16GroupBuffer3_1
	lea	%a15, [%a15] lo:VADC_u16GroupBuffer3_1
	ld.hu	%d2, [%a15] 6
	ret
.LFE123:
	.size	IOHAL_u16Read_CH_ADC_IN_M_AN_MUX3, .-IOHAL_u16Read_CH_ADC_IN_M_AN_MUX3
	.align 1
	.global	IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_COS_H_1
	.type	IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_COS_H_1, @function
IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_COS_H_1:
.LFB124:
	.loc 1 631 0
	.loc 1 633 0
	movh.a	%a15, hi:VADC_u16GroupBuffer11
	lea	%a15, [%a15] lo:VADC_u16GroupBuffer11
	ld.hu	%d2, [%a15] 2
	ret
.LFE124:
	.size	IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_COS_H_1, .-IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_COS_H_1
	.align 1
	.global	IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_COS_L_1
	.type	IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_COS_L_1, @function
IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_COS_L_1:
.LFB125:
	.loc 1 640 0
	.loc 1 642 0
	movh.a	%a15, hi:VADC_u16GroupBuffer11
	lea	%a15, [%a15] lo:VADC_u16GroupBuffer11
	ld.hu	%d2, [%a15] 4
	ret
.LFE125:
	.size	IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_COS_L_1, .-IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_COS_L_1
	.align 1
	.global	IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_SIN_H_1
	.type	IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_SIN_H_1, @function
IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_SIN_H_1:
.LFB126:
	.loc 1 650 0
	.loc 1 652 0
	movh.a	%a15, hi:VADC_u16GroupBuffer8
	lea	%a15, [%a15] lo:VADC_u16GroupBuffer8
	ld.hu	%d2, [%a15] 16
	ret
.LFE126:
	.size	IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_SIN_H_1, .-IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_SIN_H_1
	.align 1
	.global	IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_SIN_L_2
	.type	IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_SIN_L_2, @function
IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_SIN_L_2:
.LFB127:
	.loc 1 659 0
	.loc 1 661 0
	movh.a	%a15, hi:VADC_u16GroupBuffer11
	ld.hu	%d2, [%a15] lo:VADC_u16GroupBuffer11
	ret
.LFE127:
	.size	IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_SIN_L_2, .-IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_SIN_L_2
	.align 1
	.global	IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_SIN_L_1
	.type	IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_SIN_L_1, @function
IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_SIN_L_1:
.LFB128:
	.loc 1 668 0
	.loc 1 670 0
	movh.a	%a15, hi:VADC_u16GroupBuffer8
	lea	%a15, [%a15] lo:VADC_u16GroupBuffer8
	ld.hu	%d2, [%a15] 18
	ret
.LFE128:
	.size	IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_SIN_L_1, .-IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_SIN_L_1
	.align 1
	.global	IOHAL_u16Read_CH_ADC_IN_M_ACM_AN_CURRENT_U
	.type	IOHAL_u16Read_CH_ADC_IN_M_ACM_AN_CURRENT_U, @function
IOHAL_u16Read_CH_ADC_IN_M_ACM_AN_CURRENT_U:
.LFB129:
	.loc 1 683 0
	.loc 1 685 0
	movh.a	%a15, hi:VADC_u16GroupBuffer8_2
	ld.hu	%d2, [%a15] lo:VADC_u16GroupBuffer8_2
	ret
.LFE129:
	.size	IOHAL_u16Read_CH_ADC_IN_M_ACM_AN_CURRENT_U, .-IOHAL_u16Read_CH_ADC_IN_M_ACM_AN_CURRENT_U
	.align 1
	.global	IOHAL_u16Read_CH_ADC_IN_M_ACM_AN_CURRENT_V
	.type	IOHAL_u16Read_CH_ADC_IN_M_ACM_AN_CURRENT_V, @function
IOHAL_u16Read_CH_ADC_IN_M_ACM_AN_CURRENT_V:
.LFB130:
	.loc 1 692 0
	.loc 1 694 0
	movh.a	%a15, hi:VADC_u16GroupBuffer8_2
	lea	%a15, [%a15] lo:VADC_u16GroupBuffer8_2
	ld.hu	%d2, [%a15] 2
	ret
.LFE130:
	.size	IOHAL_u16Read_CH_ADC_IN_M_ACM_AN_CURRENT_V, .-IOHAL_u16Read_CH_ADC_IN_M_ACM_AN_CURRENT_V
	.align 1
	.global	IOHAL_u16Read_CH_ADC_IN_M_EPS_AN_CURRENT_U
	.type	IOHAL_u16Read_CH_ADC_IN_M_EPS_AN_CURRENT_U, @function
IOHAL_u16Read_CH_ADC_IN_M_EPS_AN_CURRENT_U:
.LFB131:
	.loc 1 701 0
	.loc 1 703 0
	movh.a	%a15, hi:VADC_u16GroupBuffer8_2
	lea	%a15, [%a15] lo:VADC_u16GroupBuffer8_2
	ld.hu	%d2, [%a15] 6
	ret
.LFE131:
	.size	IOHAL_u16Read_CH_ADC_IN_M_EPS_AN_CURRENT_U, .-IOHAL_u16Read_CH_ADC_IN_M_EPS_AN_CURRENT_U
	.align 1
	.global	IOHAL_u16Read_CH_ADC_IN_M_EPS_AN_CURRENT_V
	.type	IOHAL_u16Read_CH_ADC_IN_M_EPS_AN_CURRENT_V, @function
IOHAL_u16Read_CH_ADC_IN_M_EPS_AN_CURRENT_V:
.LFB132:
	.loc 1 710 0
	.loc 1 712 0
	movh.a	%a15, hi:VADC_u16GroupBuffer8_2
	lea	%a15, [%a15] lo:VADC_u16GroupBuffer8_2
	ld.hu	%d2, [%a15] 8
	ret
.LFE132:
	.size	IOHAL_u16Read_CH_ADC_IN_M_EPS_AN_CURRENT_V, .-IOHAL_u16Read_CH_ADC_IN_M_EPS_AN_CURRENT_V
	.align 1
	.global	IOHAL_u16Read_CH_ADC_IN_M_ACM_AN_CURRENT_W
	.type	IOHAL_u16Read_CH_ADC_IN_M_ACM_AN_CURRENT_W, @function
IOHAL_u16Read_CH_ADC_IN_M_ACM_AN_CURRENT_W:
.LFB133:
	.loc 1 719 0
	.loc 1 721 0
	movh.a	%a15, hi:VADC_u16GroupBuffer8_2
	lea	%a15, [%a15] lo:VADC_u16GroupBuffer8_2
	ld.hu	%d2, [%a15] 4
	ret
.LFE133:
	.size	IOHAL_u16Read_CH_ADC_IN_M_ACM_AN_CURRENT_W, .-IOHAL_u16Read_CH_ADC_IN_M_ACM_AN_CURRENT_W
	.align 1
	.global	IOHAL_u16Read_CH_ADC_IN_M_EPS_AN_CURRENT_W
	.type	IOHAL_u16Read_CH_ADC_IN_M_EPS_AN_CURRENT_W, @function
IOHAL_u16Read_CH_ADC_IN_M_EPS_AN_CURRENT_W:
.LFB134:
	.loc 1 728 0
	.loc 1 730 0
	movh.a	%a15, hi:VADC_u16GroupBuffer8_2
	lea	%a15, [%a15] lo:VADC_u16GroupBuffer8_2
	ld.hu	%d2, [%a15] 10
	ret
.LFE134:
	.size	IOHAL_u16Read_CH_ADC_IN_M_EPS_AN_CURRENT_W, .-IOHAL_u16Read_CH_ADC_IN_M_EPS_AN_CURRENT_W
	.align 1
	.global	IOHAL_u16Read_CH_ADC_IN_M_AN_MUX5
	.type	IOHAL_u16Read_CH_ADC_IN_M_AN_MUX5, @function
IOHAL_u16Read_CH_ADC_IN_M_AN_MUX5:
.LFB135:
	.loc 1 737 0
	.loc 1 739 0
	movh.a	%a15, hi:VADC_u16GroupBuffer8
	ld.hu	%d2, [%a15] lo:VADC_u16GroupBuffer8
	ret
.LFE135:
	.size	IOHAL_u16Read_CH_ADC_IN_M_AN_MUX5, .-IOHAL_u16Read_CH_ADC_IN_M_AN_MUX5
	.align 1
	.global	IOHAL_u16Read_CH_ADC_IN_M_AN_MUX6
	.type	IOHAL_u16Read_CH_ADC_IN_M_AN_MUX6, @function
IOHAL_u16Read_CH_ADC_IN_M_AN_MUX6:
.LFB136:
	.loc 1 741 0
	.loc 1 743 0
	movh.a	%a15, hi:VADC_u16GroupBuffer8
	lea	%a15, [%a15] lo:VADC_u16GroupBuffer8
	ld.hu	%d2, [%a15] 2
	ret
.LFE136:
	.size	IOHAL_u16Read_CH_ADC_IN_M_AN_MUX6, .-IOHAL_u16Read_CH_ADC_IN_M_AN_MUX6
	.align 1
	.global	IOHAL_u16Read_CH_ADC_IN_M_AN_MUX7
	.type	IOHAL_u16Read_CH_ADC_IN_M_AN_MUX7, @function
IOHAL_u16Read_CH_ADC_IN_M_AN_MUX7:
.LFB137:
	.loc 1 750 0
	.loc 1 752 0
	movh.a	%a15, hi:VADC_u16GroupBuffer8
	lea	%a15, [%a15] lo:VADC_u16GroupBuffer8
	ld.hu	%d2, [%a15] 4
	ret
.LFE137:
	.size	IOHAL_u16Read_CH_ADC_IN_M_AN_MUX7, .-IOHAL_u16Read_CH_ADC_IN_M_AN_MUX7
	.align 1
	.global	IOHAL_u16Read_CH_ADC_IN_M_AN_MUX8
	.type	IOHAL_u16Read_CH_ADC_IN_M_AN_MUX8, @function
IOHAL_u16Read_CH_ADC_IN_M_AN_MUX8:
.LFB138:
	.loc 1 754 0
	.loc 1 756 0
	movh.a	%a15, hi:VADC_u16GroupBuffer8
	lea	%a15, [%a15] lo:VADC_u16GroupBuffer8
	ld.hu	%d2, [%a15] 6
	ret
.LFE138:
	.size	IOHAL_u16Read_CH_ADC_IN_M_AN_MUX8, .-IOHAL_u16Read_CH_ADC_IN_M_AN_MUX8
	.align 1
	.global	IOHAL_u16Read_CH_ADC_IN_M_AN_MUX9
	.type	IOHAL_u16Read_CH_ADC_IN_M_AN_MUX9, @function
IOHAL_u16Read_CH_ADC_IN_M_AN_MUX9:
.LFB139:
	.loc 1 758 0
	.loc 1 760 0
	movh.a	%a15, hi:VADC_u16GroupBuffer8
	lea	%a15, [%a15] lo:VADC_u16GroupBuffer8
	ld.hu	%d2, [%a15] 8
	ret
.LFE139:
	.size	IOHAL_u16Read_CH_ADC_IN_M_AN_MUX9, .-IOHAL_u16Read_CH_ADC_IN_M_AN_MUX9
	.align 1
	.global	IOHAL_u16Read_CH_ADC_IN_M_AN_MUX10
	.type	IOHAL_u16Read_CH_ADC_IN_M_AN_MUX10, @function
IOHAL_u16Read_CH_ADC_IN_M_AN_MUX10:
.LFB140:
	.loc 1 762 0
	.loc 1 764 0
	movh.a	%a15, hi:VADC_u16GroupBuffer8
	lea	%a15, [%a15] lo:VADC_u16GroupBuffer8
	ld.hu	%d2, [%a15] 10
	ret
.LFE140:
	.size	IOHAL_u16Read_CH_ADC_IN_M_AN_MUX10, .-IOHAL_u16Read_CH_ADC_IN_M_AN_MUX10
	.align 1
	.global	IOHAL_u16Read_CH_ADC_IN_M_AN_MUX11
	.type	IOHAL_u16Read_CH_ADC_IN_M_AN_MUX11, @function
IOHAL_u16Read_CH_ADC_IN_M_AN_MUX11:
.LFB141:
	.loc 1 766 0
	.loc 1 768 0
	movh.a	%a15, hi:VADC_u16GroupBuffer8
	lea	%a15, [%a15] lo:VADC_u16GroupBuffer8
	ld.hu	%d2, [%a15] 12
	ret
.LFE141:
	.size	IOHAL_u16Read_CH_ADC_IN_M_AN_MUX11, .-IOHAL_u16Read_CH_ADC_IN_M_AN_MUX11
	.align 1
	.global	IOHAL_u16Read_CH_ADC_IN_M_AN_MUX12
	.type	IOHAL_u16Read_CH_ADC_IN_M_AN_MUX12, @function
IOHAL_u16Read_CH_ADC_IN_M_AN_MUX12:
.LFB142:
	.loc 1 770 0
	.loc 1 772 0
	movh.a	%a15, hi:VADC_u16GroupBuffer8
	lea	%a15, [%a15] lo:VADC_u16GroupBuffer8
	ld.hu	%d2, [%a15] 14
	ret
.LFE142:
	.size	IOHAL_u16Read_CH_ADC_IN_M_AN_MUX12, .-IOHAL_u16Read_CH_ADC_IN_M_AN_MUX12
	.align 1
	.global	IOHAL_u16Read_CH_ADC_IN_LV_VOL_SAMPLE
	.type	IOHAL_u16Read_CH_ADC_IN_LV_VOL_SAMPLE, @function
IOHAL_u16Read_CH_ADC_IN_LV_VOL_SAMPLE:
.LFB143:
	.loc 1 775 0
	.loc 1 776 0
	mov	%d4, 192
	j	PMux_u16GetInputVal
.LVL175:
.LFE143:
	.size	IOHAL_u16Read_CH_ADC_IN_LV_VOL_SAMPLE, .-IOHAL_u16Read_CH_ADC_IN_LV_VOL_SAMPLE
	.align 1
	.global	IOHAL_u16Read_CH_ADC_IN_P5V_COM_SAMPLE
	.type	IOHAL_u16Read_CH_ADC_IN_P5V_COM_SAMPLE, @function
IOHAL_u16Read_CH_ADC_IN_P5V_COM_SAMPLE:
.LFB144:
	.loc 1 780 0
	.loc 1 781 0
	mov	%d4, 210
	j	PMux_u16GetInputVal
.LVL176:
.LFE144:
	.size	IOHAL_u16Read_CH_ADC_IN_P5V_COM_SAMPLE, .-IOHAL_u16Read_CH_ADC_IN_P5V_COM_SAMPLE
	.align 1
	.global	IOHAL_u16Read_CH_ADC_IN_P5V_BT_SAMPLE
	.type	IOHAL_u16Read_CH_ADC_IN_P5V_BT_SAMPLE, @function
IOHAL_u16Read_CH_ADC_IN_P5V_BT_SAMPLE:
.LFB145:
	.loc 1 785 0
	.loc 1 786 0
	mov	%d4, 211
	j	PMux_u16GetInputVal
.LVL177:
.LFE145:
	.size	IOHAL_u16Read_CH_ADC_IN_P5V_BT_SAMPLE, .-IOHAL_u16Read_CH_ADC_IN_P5V_BT_SAMPLE
	.align 1
	.global	IOHAL_u16Read_CH_ADC_IN_P5V_HS_SAMPLE
	.type	IOHAL_u16Read_CH_ADC_IN_P5V_HS_SAMPLE, @function
IOHAL_u16Read_CH_ADC_IN_P5V_HS_SAMPLE:
.LFB146:
	.loc 1 790 0
	.loc 1 791 0
	mov	%d4, 194
	j	PMux_u16GetInputVal
.LVL178:
.LFE146:
	.size	IOHAL_u16Read_CH_ADC_IN_P5V_HS_SAMPLE, .-IOHAL_u16Read_CH_ADC_IN_P5V_HS_SAMPLE
	.align 1
	.global	IOHAL_u16Read_CH_ADC_IN_P5V_LS_SAMPLE
	.type	IOHAL_u16Read_CH_ADC_IN_P5V_LS_SAMPLE, @function
IOHAL_u16Read_CH_ADC_IN_P5V_LS_SAMPLE:
.LFB147:
	.loc 1 795 0
	.loc 1 796 0
	mov	%d4, 195
	j	PMux_u16GetInputVal
.LVL179:
.LFE147:
	.size	IOHAL_u16Read_CH_ADC_IN_P5V_LS_SAMPLE, .-IOHAL_u16Read_CH_ADC_IN_P5V_LS_SAMPLE
	.align 1
	.global	IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_U_2
	.type	IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_U_2, @function
IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_U_2:
.LFB148:
	.loc 1 806 0
	.loc 1 808 0
	movh.a	%a15, hi:Icu_f32Cycle_M_TEMP_MEAS_MOD_U_2
	ld.w	%d2, [%a15] lo:Icu_f32Cycle_M_TEMP_MEAS_MOD_U_2
	ret
.LFE148:
	.size	IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_U_2, .-IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_U_2
	.align 1
	.global	IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_V_2
	.type	IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_V_2, @function
IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_V_2:
.LFB149:
	.loc 1 810 0
	.loc 1 812 0
	movh.a	%a15, hi:Icu_f32Cycle_M_TEMP_MEAS_MOD_V_2
	ld.w	%d2, [%a15] lo:Icu_f32Cycle_M_TEMP_MEAS_MOD_V_2
	ret
.LFE149:
	.size	IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_V_2, .-IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_V_2
	.align 1
	.global	IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_W_2
	.type	IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_W_2, @function
IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_W_2:
.LFB150:
	.loc 1 814 0
	.loc 1 816 0
	movh.a	%a15, hi:Icu_f32Cycle_M_TEMP_MEAS_MOD_W_2
	ld.w	%d2, [%a15] lo:Icu_f32Cycle_M_TEMP_MEAS_MOD_W_2
	ret
.LFE150:
	.size	IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_W_2, .-IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_W_2
	.align 1
	.global	IOHAL_u16Read_CH_PWM_IN_AN_VOL_DCLINK_EPS
	.type	IOHAL_u16Read_CH_PWM_IN_AN_VOL_DCLINK_EPS, @function
IOHAL_u16Read_CH_PWM_IN_AN_VOL_DCLINK_EPS:
.LFB151:
	.loc 1 818 0
	.loc 1 820 0
	movh.a	%a15, hi:Icu_f32Cycle_AN_VOL_DCLINK_EPS
	ld.w	%d2, [%a15] lo:Icu_f32Cycle_AN_VOL_DCLINK_EPS
	ret
.LFE151:
	.size	IOHAL_u16Read_CH_PWM_IN_AN_VOL_DCLINK_EPS, .-IOHAL_u16Read_CH_PWM_IN_AN_VOL_DCLINK_EPS
	.align 1
	.global	IOHAL_u16Read_CH_PWM_IN_AN_VOL_DCLINK_ACM
	.type	IOHAL_u16Read_CH_PWM_IN_AN_VOL_DCLINK_ACM, @function
IOHAL_u16Read_CH_PWM_IN_AN_VOL_DCLINK_ACM:
.LFB152:
	.loc 1 822 0
	.loc 1 824 0
	movh.a	%a15, hi:Icu_f32Cycle_AN_VOL_DCLINK_ACM
	ld.w	%d2, [%a15] lo:Icu_f32Cycle_AN_VOL_DCLINK_ACM
	ret
.LFE152:
	.size	IOHAL_u16Read_CH_PWM_IN_AN_VOL_DCLINK_ACM, .-IOHAL_u16Read_CH_PWM_IN_AN_VOL_DCLINK_ACM
	.align 1
	.global	IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_W_1
	.type	IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_W_1, @function
IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_W_1:
.LFB153:
	.loc 1 826 0
	.loc 1 828 0
	movh.a	%a15, hi:Icu_f32Cycle_M_TEMP_MEAS_MOD_W_1
	ld.w	%d2, [%a15] lo:Icu_f32Cycle_M_TEMP_MEAS_MOD_W_1
	ret
.LFE153:
	.size	IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_W_1, .-IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_W_1
	.align 1
	.global	IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_V_1
	.type	IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_V_1, @function
IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_V_1:
.LFB154:
	.loc 1 830 0
	.loc 1 832 0
	movh.a	%a15, hi:Icu_f32Cycle_M_TEMP_MEAS_MOD_V_1
	ld.w	%d2, [%a15] lo:Icu_f32Cycle_M_TEMP_MEAS_MOD_V_1
	ret
.LFE154:
	.size	IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_V_1, .-IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_V_1
	.align 1
	.global	IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_U_1
	.type	IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_U_1, @function
IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_U_1:
.LFB155:
	.loc 1 834 0
	.loc 1 836 0
	movh.a	%a15, hi:Icu_f32Cycle_M_TEMP_MEAS_MOD_U_1
	ld.w	%d2, [%a15] lo:Icu_f32Cycle_M_TEMP_MEAS_MOD_U_1
	ret
.LFE155:
	.size	IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_U_1, .-IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_U_1
	.align 1
	.global	IOHAL_u16Read_CH_PWM_IN_M_EPS_TEMP_MEAS_MOD_W
	.type	IOHAL_u16Read_CH_PWM_IN_M_EPS_TEMP_MEAS_MOD_W, @function
IOHAL_u16Read_CH_PWM_IN_M_EPS_TEMP_MEAS_MOD_W:
.LFB156:
	.loc 1 839 0
	.loc 1 841 0
	movh.a	%a15, hi:Icu_f32Cycle_M_EPS_TEMP_MEAS_MOD_W
	ld.w	%d2, [%a15] lo:Icu_f32Cycle_M_EPS_TEMP_MEAS_MOD_W
	ret
.LFE156:
	.size	IOHAL_u16Read_CH_PWM_IN_M_EPS_TEMP_MEAS_MOD_W, .-IOHAL_u16Read_CH_PWM_IN_M_EPS_TEMP_MEAS_MOD_W
	.align 1
	.global	IOHAL_u16Read_CH_PWM_IN_M_EPS_TEMP_MEAS_MOD_V
	.type	IOHAL_u16Read_CH_PWM_IN_M_EPS_TEMP_MEAS_MOD_V, @function
IOHAL_u16Read_CH_PWM_IN_M_EPS_TEMP_MEAS_MOD_V:
.LFB157:
	.loc 1 843 0
	.loc 1 845 0
	movh.a	%a15, hi:Icu_f32Cycle_M_EPS_TEMP_MEAS_MOD_V
	ld.w	%d2, [%a15] lo:Icu_f32Cycle_M_EPS_TEMP_MEAS_MOD_V
	ret
.LFE157:
	.size	IOHAL_u16Read_CH_PWM_IN_M_EPS_TEMP_MEAS_MOD_V, .-IOHAL_u16Read_CH_PWM_IN_M_EPS_TEMP_MEAS_MOD_V
	.align 1
	.global	IOHAL_u16Read_CH_PWM_IN_M_ACM_TEMP_MEAS_MOD_W
	.type	IOHAL_u16Read_CH_PWM_IN_M_ACM_TEMP_MEAS_MOD_W, @function
IOHAL_u16Read_CH_PWM_IN_M_ACM_TEMP_MEAS_MOD_W:
.LFB158:
	.loc 1 847 0
	.loc 1 849 0
	movh.a	%a15, hi:Icu_f32Cycle_M_ACM_TEMP_MEAS_MOD_W
	ld.w	%d2, [%a15] lo:Icu_f32Cycle_M_ACM_TEMP_MEAS_MOD_W
	ret
.LFE158:
	.size	IOHAL_u16Read_CH_PWM_IN_M_ACM_TEMP_MEAS_MOD_W, .-IOHAL_u16Read_CH_PWM_IN_M_ACM_TEMP_MEAS_MOD_W
	.align 1
	.global	IOHAL_u16Read_CH_PWM_IN_M_ACM_TEMP_MEAS_MOD_V
	.type	IOHAL_u16Read_CH_PWM_IN_M_ACM_TEMP_MEAS_MOD_V, @function
IOHAL_u16Read_CH_PWM_IN_M_ACM_TEMP_MEAS_MOD_V:
.LFB159:
	.loc 1 851 0
	.loc 1 853 0
	movh.a	%a15, hi:Icu_f32Cycle_M_ACM_TEMP_MEAS_MOD_V
	ld.w	%d2, [%a15] lo:Icu_f32Cycle_M_ACM_TEMP_MEAS_MOD_V
	ret
.LFE159:
	.size	IOHAL_u16Read_CH_PWM_IN_M_ACM_TEMP_MEAS_MOD_V, .-IOHAL_u16Read_CH_PWM_IN_M_ACM_TEMP_MEAS_MOD_V
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
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB30
	.uaword	.LFE30-.LFB30
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB31
	.uaword	.LFE31-.LFB31
	.align 2
.LEFDE24:
.LSFDE26:
	.uaword	.LEFDE26-.LASFDE26
.LASFDE26:
	.uaword	.Lframe0
	.uaword	.LFB32
	.uaword	.LFE32-.LFB32
	.align 2
.LEFDE26:
.LSFDE28:
	.uaword	.LEFDE28-.LASFDE28
.LASFDE28:
	.uaword	.Lframe0
	.uaword	.LFB33
	.uaword	.LFE33-.LFB33
	.align 2
.LEFDE28:
.LSFDE30:
	.uaword	.LEFDE30-.LASFDE30
.LASFDE30:
	.uaword	.Lframe0
	.uaword	.LFB34
	.uaword	.LFE34-.LFB34
	.align 2
.LEFDE30:
.LSFDE32:
	.uaword	.LEFDE32-.LASFDE32
.LASFDE32:
	.uaword	.Lframe0
	.uaword	.LFB35
	.uaword	.LFE35-.LFB35
	.align 2
.LEFDE32:
.LSFDE34:
	.uaword	.LEFDE34-.LASFDE34
.LASFDE34:
	.uaword	.Lframe0
	.uaword	.LFB36
	.uaword	.LFE36-.LFB36
	.align 2
.LEFDE34:
.LSFDE36:
	.uaword	.LEFDE36-.LASFDE36
.LASFDE36:
	.uaword	.Lframe0
	.uaword	.LFB37
	.uaword	.LFE37-.LFB37
	.align 2
.LEFDE36:
.LSFDE38:
	.uaword	.LEFDE38-.LASFDE38
.LASFDE38:
	.uaword	.Lframe0
	.uaword	.LFB38
	.uaword	.LFE38-.LFB38
	.align 2
.LEFDE38:
.LSFDE40:
	.uaword	.LEFDE40-.LASFDE40
.LASFDE40:
	.uaword	.Lframe0
	.uaword	.LFB39
	.uaword	.LFE39-.LFB39
	.align 2
.LEFDE40:
.LSFDE42:
	.uaword	.LEFDE42-.LASFDE42
.LASFDE42:
	.uaword	.Lframe0
	.uaword	.LFB40
	.uaword	.LFE40-.LFB40
	.align 2
.LEFDE42:
.LSFDE44:
	.uaword	.LEFDE44-.LASFDE44
.LASFDE44:
	.uaword	.Lframe0
	.uaword	.LFB41
	.uaword	.LFE41-.LFB41
	.align 2
.LEFDE44:
.LSFDE46:
	.uaword	.LEFDE46-.LASFDE46
.LASFDE46:
	.uaword	.Lframe0
	.uaword	.LFB42
	.uaword	.LFE42-.LFB42
	.align 2
.LEFDE46:
.LSFDE48:
	.uaword	.LEFDE48-.LASFDE48
.LASFDE48:
	.uaword	.Lframe0
	.uaword	.LFB43
	.uaword	.LFE43-.LFB43
	.align 2
.LEFDE48:
.LSFDE50:
	.uaword	.LEFDE50-.LASFDE50
.LASFDE50:
	.uaword	.Lframe0
	.uaword	.LFB44
	.uaword	.LFE44-.LFB44
	.align 2
.LEFDE50:
.LSFDE52:
	.uaword	.LEFDE52-.LASFDE52
.LASFDE52:
	.uaword	.Lframe0
	.uaword	.LFB45
	.uaword	.LFE45-.LFB45
	.align 2
.LEFDE52:
.LSFDE54:
	.uaword	.LEFDE54-.LASFDE54
.LASFDE54:
	.uaword	.Lframe0
	.uaword	.LFB46
	.uaword	.LFE46-.LFB46
	.align 2
.LEFDE54:
.LSFDE56:
	.uaword	.LEFDE56-.LASFDE56
.LASFDE56:
	.uaword	.Lframe0
	.uaword	.LFB47
	.uaword	.LFE47-.LFB47
	.align 2
.LEFDE56:
.LSFDE58:
	.uaword	.LEFDE58-.LASFDE58
.LASFDE58:
	.uaword	.Lframe0
	.uaword	.LFB48
	.uaword	.LFE48-.LFB48
	.align 2
.LEFDE58:
.LSFDE60:
	.uaword	.LEFDE60-.LASFDE60
.LASFDE60:
	.uaword	.Lframe0
	.uaword	.LFB49
	.uaword	.LFE49-.LFB49
	.align 2
.LEFDE60:
.LSFDE62:
	.uaword	.LEFDE62-.LASFDE62
.LASFDE62:
	.uaword	.Lframe0
	.uaword	.LFB50
	.uaword	.LFE50-.LFB50
	.align 2
.LEFDE62:
.LSFDE64:
	.uaword	.LEFDE64-.LASFDE64
.LASFDE64:
	.uaword	.Lframe0
	.uaword	.LFB51
	.uaword	.LFE51-.LFB51
	.align 2
.LEFDE64:
.LSFDE66:
	.uaword	.LEFDE66-.LASFDE66
.LASFDE66:
	.uaword	.Lframe0
	.uaword	.LFB52
	.uaword	.LFE52-.LFB52
	.align 2
.LEFDE66:
.LSFDE68:
	.uaword	.LEFDE68-.LASFDE68
.LASFDE68:
	.uaword	.Lframe0
	.uaword	.LFB53
	.uaword	.LFE53-.LFB53
	.align 2
.LEFDE68:
.LSFDE70:
	.uaword	.LEFDE70-.LASFDE70
.LASFDE70:
	.uaword	.Lframe0
	.uaword	.LFB54
	.uaword	.LFE54-.LFB54
	.align 2
.LEFDE70:
.LSFDE72:
	.uaword	.LEFDE72-.LASFDE72
.LASFDE72:
	.uaword	.Lframe0
	.uaword	.LFB55
	.uaword	.LFE55-.LFB55
	.align 2
.LEFDE72:
.LSFDE74:
	.uaword	.LEFDE74-.LASFDE74
.LASFDE74:
	.uaword	.Lframe0
	.uaword	.LFB56
	.uaword	.LFE56-.LFB56
	.align 2
.LEFDE74:
.LSFDE76:
	.uaword	.LEFDE76-.LASFDE76
.LASFDE76:
	.uaword	.Lframe0
	.uaword	.LFB57
	.uaword	.LFE57-.LFB57
	.align 2
.LEFDE76:
.LSFDE78:
	.uaword	.LEFDE78-.LASFDE78
.LASFDE78:
	.uaword	.Lframe0
	.uaword	.LFB58
	.uaword	.LFE58-.LFB58
	.align 2
.LEFDE78:
.LSFDE80:
	.uaword	.LEFDE80-.LASFDE80
.LASFDE80:
	.uaword	.Lframe0
	.uaword	.LFB59
	.uaword	.LFE59-.LFB59
	.align 2
.LEFDE80:
.LSFDE82:
	.uaword	.LEFDE82-.LASFDE82
.LASFDE82:
	.uaword	.Lframe0
	.uaword	.LFB60
	.uaword	.LFE60-.LFB60
	.align 2
.LEFDE82:
.LSFDE84:
	.uaword	.LEFDE84-.LASFDE84
.LASFDE84:
	.uaword	.Lframe0
	.uaword	.LFB61
	.uaword	.LFE61-.LFB61
	.align 2
.LEFDE84:
.LSFDE86:
	.uaword	.LEFDE86-.LASFDE86
.LASFDE86:
	.uaword	.Lframe0
	.uaword	.LFB62
	.uaword	.LFE62-.LFB62
	.align 2
.LEFDE86:
.LSFDE88:
	.uaword	.LEFDE88-.LASFDE88
.LASFDE88:
	.uaword	.Lframe0
	.uaword	.LFB63
	.uaword	.LFE63-.LFB63
	.align 2
.LEFDE88:
.LSFDE90:
	.uaword	.LEFDE90-.LASFDE90
.LASFDE90:
	.uaword	.Lframe0
	.uaword	.LFB64
	.uaword	.LFE64-.LFB64
	.align 2
.LEFDE90:
.LSFDE92:
	.uaword	.LEFDE92-.LASFDE92
.LASFDE92:
	.uaword	.Lframe0
	.uaword	.LFB65
	.uaword	.LFE65-.LFB65
	.align 2
.LEFDE92:
.LSFDE94:
	.uaword	.LEFDE94-.LASFDE94
.LASFDE94:
	.uaword	.Lframe0
	.uaword	.LFB66
	.uaword	.LFE66-.LFB66
	.align 2
.LEFDE94:
.LSFDE96:
	.uaword	.LEFDE96-.LASFDE96
.LASFDE96:
	.uaword	.Lframe0
	.uaword	.LFB67
	.uaword	.LFE67-.LFB67
	.align 2
.LEFDE96:
.LSFDE98:
	.uaword	.LEFDE98-.LASFDE98
.LASFDE98:
	.uaword	.Lframe0
	.uaword	.LFB68
	.uaword	.LFE68-.LFB68
	.align 2
.LEFDE98:
.LSFDE100:
	.uaword	.LEFDE100-.LASFDE100
.LASFDE100:
	.uaword	.Lframe0
	.uaword	.LFB69
	.uaword	.LFE69-.LFB69
	.align 2
.LEFDE100:
.LSFDE102:
	.uaword	.LEFDE102-.LASFDE102
.LASFDE102:
	.uaword	.Lframe0
	.uaword	.LFB70
	.uaword	.LFE70-.LFB70
	.align 2
.LEFDE102:
.LSFDE104:
	.uaword	.LEFDE104-.LASFDE104
.LASFDE104:
	.uaword	.Lframe0
	.uaword	.LFB71
	.uaword	.LFE71-.LFB71
	.align 2
.LEFDE104:
.LSFDE106:
	.uaword	.LEFDE106-.LASFDE106
.LASFDE106:
	.uaword	.Lframe0
	.uaword	.LFB72
	.uaword	.LFE72-.LFB72
	.align 2
.LEFDE106:
.LSFDE108:
	.uaword	.LEFDE108-.LASFDE108
.LASFDE108:
	.uaword	.Lframe0
	.uaword	.LFB73
	.uaword	.LFE73-.LFB73
	.align 2
.LEFDE108:
.LSFDE110:
	.uaword	.LEFDE110-.LASFDE110
.LASFDE110:
	.uaword	.Lframe0
	.uaword	.LFB74
	.uaword	.LFE74-.LFB74
	.align 2
.LEFDE110:
.LSFDE112:
	.uaword	.LEFDE112-.LASFDE112
.LASFDE112:
	.uaword	.Lframe0
	.uaword	.LFB75
	.uaword	.LFE75-.LFB75
	.align 2
.LEFDE112:
.LSFDE114:
	.uaword	.LEFDE114-.LASFDE114
.LASFDE114:
	.uaword	.Lframe0
	.uaword	.LFB76
	.uaword	.LFE76-.LFB76
	.align 2
.LEFDE114:
.LSFDE116:
	.uaword	.LEFDE116-.LASFDE116
.LASFDE116:
	.uaword	.Lframe0
	.uaword	.LFB77
	.uaword	.LFE77-.LFB77
	.align 2
.LEFDE116:
.LSFDE118:
	.uaword	.LEFDE118-.LASFDE118
.LASFDE118:
	.uaword	.Lframe0
	.uaword	.LFB78
	.uaword	.LFE78-.LFB78
	.align 2
.LEFDE118:
.LSFDE120:
	.uaword	.LEFDE120-.LASFDE120
.LASFDE120:
	.uaword	.Lframe0
	.uaword	.LFB79
	.uaword	.LFE79-.LFB79
	.align 2
.LEFDE120:
.LSFDE122:
	.uaword	.LEFDE122-.LASFDE122
.LASFDE122:
	.uaword	.Lframe0
	.uaword	.LFB80
	.uaword	.LFE80-.LFB80
	.align 2
.LEFDE122:
.LSFDE124:
	.uaword	.LEFDE124-.LASFDE124
.LASFDE124:
	.uaword	.Lframe0
	.uaword	.LFB81
	.uaword	.LFE81-.LFB81
	.align 2
.LEFDE124:
.LSFDE126:
	.uaword	.LEFDE126-.LASFDE126
.LASFDE126:
	.uaword	.Lframe0
	.uaword	.LFB82
	.uaword	.LFE82-.LFB82
	.align 2
.LEFDE126:
.LSFDE128:
	.uaword	.LEFDE128-.LASFDE128
.LASFDE128:
	.uaword	.Lframe0
	.uaword	.LFB83
	.uaword	.LFE83-.LFB83
	.align 2
.LEFDE128:
.LSFDE130:
	.uaword	.LEFDE130-.LASFDE130
.LASFDE130:
	.uaword	.Lframe0
	.uaword	.LFB84
	.uaword	.LFE84-.LFB84
	.align 2
.LEFDE130:
.LSFDE132:
	.uaword	.LEFDE132-.LASFDE132
.LASFDE132:
	.uaword	.Lframe0
	.uaword	.LFB85
	.uaword	.LFE85-.LFB85
	.align 2
.LEFDE132:
.LSFDE134:
	.uaword	.LEFDE134-.LASFDE134
.LASFDE134:
	.uaword	.Lframe0
	.uaword	.LFB86
	.uaword	.LFE86-.LFB86
	.align 2
.LEFDE134:
.LSFDE136:
	.uaword	.LEFDE136-.LASFDE136
.LASFDE136:
	.uaword	.Lframe0
	.uaword	.LFB87
	.uaword	.LFE87-.LFB87
	.align 2
.LEFDE136:
.LSFDE138:
	.uaword	.LEFDE138-.LASFDE138
.LASFDE138:
	.uaword	.Lframe0
	.uaword	.LFB88
	.uaword	.LFE88-.LFB88
	.align 2
.LEFDE138:
.LSFDE140:
	.uaword	.LEFDE140-.LASFDE140
.LASFDE140:
	.uaword	.Lframe0
	.uaword	.LFB89
	.uaword	.LFE89-.LFB89
	.align 2
.LEFDE140:
.LSFDE142:
	.uaword	.LEFDE142-.LASFDE142
.LASFDE142:
	.uaword	.Lframe0
	.uaword	.LFB90
	.uaword	.LFE90-.LFB90
	.align 2
.LEFDE142:
.LSFDE144:
	.uaword	.LEFDE144-.LASFDE144
.LASFDE144:
	.uaword	.Lframe0
	.uaword	.LFB91
	.uaword	.LFE91-.LFB91
	.align 2
.LEFDE144:
.LSFDE146:
	.uaword	.LEFDE146-.LASFDE146
.LASFDE146:
	.uaword	.Lframe0
	.uaword	.LFB92
	.uaword	.LFE92-.LFB92
	.align 2
.LEFDE146:
.LSFDE148:
	.uaword	.LEFDE148-.LASFDE148
.LASFDE148:
	.uaword	.Lframe0
	.uaword	.LFB93
	.uaword	.LFE93-.LFB93
	.align 2
.LEFDE148:
.LSFDE150:
	.uaword	.LEFDE150-.LASFDE150
.LASFDE150:
	.uaword	.Lframe0
	.uaword	.LFB94
	.uaword	.LFE94-.LFB94
	.align 2
.LEFDE150:
.LSFDE152:
	.uaword	.LEFDE152-.LASFDE152
.LASFDE152:
	.uaword	.Lframe0
	.uaword	.LFB95
	.uaword	.LFE95-.LFB95
	.align 2
.LEFDE152:
.LSFDE154:
	.uaword	.LEFDE154-.LASFDE154
.LASFDE154:
	.uaword	.Lframe0
	.uaword	.LFB96
	.uaword	.LFE96-.LFB96
	.align 2
.LEFDE154:
.LSFDE156:
	.uaword	.LEFDE156-.LASFDE156
.LASFDE156:
	.uaword	.Lframe0
	.uaword	.LFB97
	.uaword	.LFE97-.LFB97
	.align 2
.LEFDE156:
.LSFDE158:
	.uaword	.LEFDE158-.LASFDE158
.LASFDE158:
	.uaword	.Lframe0
	.uaword	.LFB98
	.uaword	.LFE98-.LFB98
	.align 2
.LEFDE158:
.LSFDE160:
	.uaword	.LEFDE160-.LASFDE160
.LASFDE160:
	.uaword	.Lframe0
	.uaword	.LFB99
	.uaword	.LFE99-.LFB99
	.align 2
.LEFDE160:
.LSFDE162:
	.uaword	.LEFDE162-.LASFDE162
.LASFDE162:
	.uaword	.Lframe0
	.uaword	.LFB100
	.uaword	.LFE100-.LFB100
	.align 2
.LEFDE162:
.LSFDE164:
	.uaword	.LEFDE164-.LASFDE164
.LASFDE164:
	.uaword	.Lframe0
	.uaword	.LFB101
	.uaword	.LFE101-.LFB101
	.align 2
.LEFDE164:
.LSFDE166:
	.uaword	.LEFDE166-.LASFDE166
.LASFDE166:
	.uaword	.Lframe0
	.uaword	.LFB102
	.uaword	.LFE102-.LFB102
	.align 2
.LEFDE166:
.LSFDE168:
	.uaword	.LEFDE168-.LASFDE168
.LASFDE168:
	.uaword	.Lframe0
	.uaword	.LFB103
	.uaword	.LFE103-.LFB103
	.align 2
.LEFDE168:
.LSFDE170:
	.uaword	.LEFDE170-.LASFDE170
.LASFDE170:
	.uaword	.Lframe0
	.uaword	.LFB104
	.uaword	.LFE104-.LFB104
	.align 2
.LEFDE170:
.LSFDE172:
	.uaword	.LEFDE172-.LASFDE172
.LASFDE172:
	.uaword	.Lframe0
	.uaword	.LFB105
	.uaword	.LFE105-.LFB105
	.align 2
.LEFDE172:
.LSFDE174:
	.uaword	.LEFDE174-.LASFDE174
.LASFDE174:
	.uaword	.Lframe0
	.uaword	.LFB106
	.uaword	.LFE106-.LFB106
	.align 2
.LEFDE174:
.LSFDE176:
	.uaword	.LEFDE176-.LASFDE176
.LASFDE176:
	.uaword	.Lframe0
	.uaword	.LFB107
	.uaword	.LFE107-.LFB107
	.align 2
.LEFDE176:
.LSFDE178:
	.uaword	.LEFDE178-.LASFDE178
.LASFDE178:
	.uaword	.Lframe0
	.uaword	.LFB108
	.uaword	.LFE108-.LFB108
	.align 2
.LEFDE178:
.LSFDE180:
	.uaword	.LEFDE180-.LASFDE180
.LASFDE180:
	.uaword	.Lframe0
	.uaword	.LFB109
	.uaword	.LFE109-.LFB109
	.align 2
.LEFDE180:
.LSFDE182:
	.uaword	.LEFDE182-.LASFDE182
.LASFDE182:
	.uaword	.Lframe0
	.uaword	.LFB110
	.uaword	.LFE110-.LFB110
	.align 2
.LEFDE182:
.LSFDE184:
	.uaword	.LEFDE184-.LASFDE184
.LASFDE184:
	.uaword	.Lframe0
	.uaword	.LFB111
	.uaword	.LFE111-.LFB111
	.align 2
.LEFDE184:
.LSFDE186:
	.uaword	.LEFDE186-.LASFDE186
.LASFDE186:
	.uaword	.Lframe0
	.uaword	.LFB112
	.uaword	.LFE112-.LFB112
	.align 2
.LEFDE186:
.LSFDE188:
	.uaword	.LEFDE188-.LASFDE188
.LASFDE188:
	.uaword	.Lframe0
	.uaword	.LFB113
	.uaword	.LFE113-.LFB113
	.align 2
.LEFDE188:
.LSFDE190:
	.uaword	.LEFDE190-.LASFDE190
.LASFDE190:
	.uaword	.Lframe0
	.uaword	.LFB114
	.uaword	.LFE114-.LFB114
	.align 2
.LEFDE190:
.LSFDE192:
	.uaword	.LEFDE192-.LASFDE192
.LASFDE192:
	.uaword	.Lframe0
	.uaword	.LFB115
	.uaword	.LFE115-.LFB115
	.align 2
.LEFDE192:
.LSFDE194:
	.uaword	.LEFDE194-.LASFDE194
.LASFDE194:
	.uaword	.Lframe0
	.uaword	.LFB116
	.uaword	.LFE116-.LFB116
	.align 2
.LEFDE194:
.LSFDE196:
	.uaword	.LEFDE196-.LASFDE196
.LASFDE196:
	.uaword	.Lframe0
	.uaword	.LFB117
	.uaword	.LFE117-.LFB117
	.align 2
.LEFDE196:
.LSFDE198:
	.uaword	.LEFDE198-.LASFDE198
.LASFDE198:
	.uaword	.Lframe0
	.uaword	.LFB118
	.uaword	.LFE118-.LFB118
	.align 2
.LEFDE198:
.LSFDE200:
	.uaword	.LEFDE200-.LASFDE200
.LASFDE200:
	.uaword	.Lframe0
	.uaword	.LFB119
	.uaword	.LFE119-.LFB119
	.align 2
.LEFDE200:
.LSFDE202:
	.uaword	.LEFDE202-.LASFDE202
.LASFDE202:
	.uaword	.Lframe0
	.uaword	.LFB120
	.uaword	.LFE120-.LFB120
	.align 2
.LEFDE202:
.LSFDE204:
	.uaword	.LEFDE204-.LASFDE204
.LASFDE204:
	.uaword	.Lframe0
	.uaword	.LFB121
	.uaword	.LFE121-.LFB121
	.align 2
.LEFDE204:
.LSFDE206:
	.uaword	.LEFDE206-.LASFDE206
.LASFDE206:
	.uaword	.Lframe0
	.uaword	.LFB122
	.uaword	.LFE122-.LFB122
	.align 2
.LEFDE206:
.LSFDE208:
	.uaword	.LEFDE208-.LASFDE208
.LASFDE208:
	.uaword	.Lframe0
	.uaword	.LFB123
	.uaword	.LFE123-.LFB123
	.align 2
.LEFDE208:
.LSFDE210:
	.uaword	.LEFDE210-.LASFDE210
.LASFDE210:
	.uaword	.Lframe0
	.uaword	.LFB124
	.uaword	.LFE124-.LFB124
	.align 2
.LEFDE210:
.LSFDE212:
	.uaword	.LEFDE212-.LASFDE212
.LASFDE212:
	.uaword	.Lframe0
	.uaword	.LFB125
	.uaword	.LFE125-.LFB125
	.align 2
.LEFDE212:
.LSFDE214:
	.uaword	.LEFDE214-.LASFDE214
.LASFDE214:
	.uaword	.Lframe0
	.uaword	.LFB126
	.uaword	.LFE126-.LFB126
	.align 2
.LEFDE214:
.LSFDE216:
	.uaword	.LEFDE216-.LASFDE216
.LASFDE216:
	.uaword	.Lframe0
	.uaword	.LFB127
	.uaword	.LFE127-.LFB127
	.align 2
.LEFDE216:
.LSFDE218:
	.uaword	.LEFDE218-.LASFDE218
.LASFDE218:
	.uaword	.Lframe0
	.uaword	.LFB128
	.uaword	.LFE128-.LFB128
	.align 2
.LEFDE218:
.LSFDE220:
	.uaword	.LEFDE220-.LASFDE220
.LASFDE220:
	.uaword	.Lframe0
	.uaword	.LFB129
	.uaword	.LFE129-.LFB129
	.align 2
.LEFDE220:
.LSFDE222:
	.uaword	.LEFDE222-.LASFDE222
.LASFDE222:
	.uaword	.Lframe0
	.uaword	.LFB130
	.uaword	.LFE130-.LFB130
	.align 2
.LEFDE222:
.LSFDE224:
	.uaword	.LEFDE224-.LASFDE224
.LASFDE224:
	.uaword	.Lframe0
	.uaword	.LFB131
	.uaword	.LFE131-.LFB131
	.align 2
.LEFDE224:
.LSFDE226:
	.uaword	.LEFDE226-.LASFDE226
.LASFDE226:
	.uaword	.Lframe0
	.uaword	.LFB132
	.uaword	.LFE132-.LFB132
	.align 2
.LEFDE226:
.LSFDE228:
	.uaword	.LEFDE228-.LASFDE228
.LASFDE228:
	.uaword	.Lframe0
	.uaword	.LFB133
	.uaword	.LFE133-.LFB133
	.align 2
.LEFDE228:
.LSFDE230:
	.uaword	.LEFDE230-.LASFDE230
.LASFDE230:
	.uaword	.Lframe0
	.uaword	.LFB134
	.uaword	.LFE134-.LFB134
	.align 2
.LEFDE230:
.LSFDE232:
	.uaword	.LEFDE232-.LASFDE232
.LASFDE232:
	.uaword	.Lframe0
	.uaword	.LFB135
	.uaword	.LFE135-.LFB135
	.align 2
.LEFDE232:
.LSFDE234:
	.uaword	.LEFDE234-.LASFDE234
.LASFDE234:
	.uaword	.Lframe0
	.uaword	.LFB136
	.uaword	.LFE136-.LFB136
	.align 2
.LEFDE234:
.LSFDE236:
	.uaword	.LEFDE236-.LASFDE236
.LASFDE236:
	.uaword	.Lframe0
	.uaword	.LFB137
	.uaword	.LFE137-.LFB137
	.align 2
.LEFDE236:
.LSFDE238:
	.uaword	.LEFDE238-.LASFDE238
.LASFDE238:
	.uaword	.Lframe0
	.uaword	.LFB138
	.uaword	.LFE138-.LFB138
	.align 2
.LEFDE238:
.LSFDE240:
	.uaword	.LEFDE240-.LASFDE240
.LASFDE240:
	.uaword	.Lframe0
	.uaword	.LFB139
	.uaword	.LFE139-.LFB139
	.align 2
.LEFDE240:
.LSFDE242:
	.uaword	.LEFDE242-.LASFDE242
.LASFDE242:
	.uaword	.Lframe0
	.uaword	.LFB140
	.uaword	.LFE140-.LFB140
	.align 2
.LEFDE242:
.LSFDE244:
	.uaword	.LEFDE244-.LASFDE244
.LASFDE244:
	.uaword	.Lframe0
	.uaword	.LFB141
	.uaword	.LFE141-.LFB141
	.align 2
.LEFDE244:
.LSFDE246:
	.uaword	.LEFDE246-.LASFDE246
.LASFDE246:
	.uaword	.Lframe0
	.uaword	.LFB142
	.uaword	.LFE142-.LFB142
	.align 2
.LEFDE246:
.LSFDE248:
	.uaword	.LEFDE248-.LASFDE248
.LASFDE248:
	.uaword	.Lframe0
	.uaword	.LFB143
	.uaword	.LFE143-.LFB143
	.align 2
.LEFDE248:
.LSFDE250:
	.uaword	.LEFDE250-.LASFDE250
.LASFDE250:
	.uaword	.Lframe0
	.uaword	.LFB144
	.uaword	.LFE144-.LFB144
	.align 2
.LEFDE250:
.LSFDE252:
	.uaword	.LEFDE252-.LASFDE252
.LASFDE252:
	.uaword	.Lframe0
	.uaword	.LFB145
	.uaword	.LFE145-.LFB145
	.align 2
.LEFDE252:
.LSFDE254:
	.uaword	.LEFDE254-.LASFDE254
.LASFDE254:
	.uaword	.Lframe0
	.uaword	.LFB146
	.uaword	.LFE146-.LFB146
	.align 2
.LEFDE254:
.LSFDE256:
	.uaword	.LEFDE256-.LASFDE256
.LASFDE256:
	.uaword	.Lframe0
	.uaword	.LFB147
	.uaword	.LFE147-.LFB147
	.align 2
.LEFDE256:
.LSFDE258:
	.uaword	.LEFDE258-.LASFDE258
.LASFDE258:
	.uaword	.Lframe0
	.uaword	.LFB148
	.uaword	.LFE148-.LFB148
	.align 2
.LEFDE258:
.LSFDE260:
	.uaword	.LEFDE260-.LASFDE260
.LASFDE260:
	.uaword	.Lframe0
	.uaword	.LFB149
	.uaword	.LFE149-.LFB149
	.align 2
.LEFDE260:
.LSFDE262:
	.uaword	.LEFDE262-.LASFDE262
.LASFDE262:
	.uaword	.Lframe0
	.uaword	.LFB150
	.uaword	.LFE150-.LFB150
	.align 2
.LEFDE262:
.LSFDE264:
	.uaword	.LEFDE264-.LASFDE264
.LASFDE264:
	.uaword	.Lframe0
	.uaword	.LFB151
	.uaword	.LFE151-.LFB151
	.align 2
.LEFDE264:
.LSFDE266:
	.uaword	.LEFDE266-.LASFDE266
.LASFDE266:
	.uaword	.Lframe0
	.uaword	.LFB152
	.uaword	.LFE152-.LFB152
	.align 2
.LEFDE266:
.LSFDE268:
	.uaword	.LEFDE268-.LASFDE268
.LASFDE268:
	.uaword	.Lframe0
	.uaword	.LFB153
	.uaword	.LFE153-.LFB153
	.align 2
.LEFDE268:
.LSFDE270:
	.uaword	.LEFDE270-.LASFDE270
.LASFDE270:
	.uaword	.Lframe0
	.uaword	.LFB154
	.uaword	.LFE154-.LFB154
	.align 2
.LEFDE270:
.LSFDE272:
	.uaword	.LEFDE272-.LASFDE272
.LASFDE272:
	.uaword	.Lframe0
	.uaword	.LFB155
	.uaword	.LFE155-.LFB155
	.align 2
.LEFDE272:
.LSFDE274:
	.uaword	.LEFDE274-.LASFDE274
.LASFDE274:
	.uaword	.Lframe0
	.uaword	.LFB156
	.uaword	.LFE156-.LFB156
	.align 2
.LEFDE274:
.LSFDE276:
	.uaword	.LEFDE276-.LASFDE276
.LASFDE276:
	.uaword	.Lframe0
	.uaword	.LFB157
	.uaword	.LFE157-.LFB157
	.align 2
.LEFDE276:
.LSFDE278:
	.uaword	.LEFDE278-.LASFDE278
.LASFDE278:
	.uaword	.Lframe0
	.uaword	.LFB158
	.uaword	.LFE158-.LFB158
	.align 2
.LEFDE278:
.LSFDE280:
	.uaword	.LEFDE280-.LASFDE280
.LASFDE280:
	.uaword	.Lframe0
	.uaword	.LFB159
	.uaword	.LFE159-.LFB159
	.align 2
.LEFDE280:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Dio\\inc\\Dio.h"
	.file 4 ".\\output\\inc/..\\..\\bswcdd\\PortMux\\PortMux.h"
	.file 5 ".\\output\\inc/..\\..\\bswcdd\\IOHAL\\IcuHal\\IcuHal.h"
	.file 6 ".\\output\\inc/..\\..\\bswcdd\\VADC\\VADC.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x3391
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\IOHAL\\IOHAL_Cfg_I.c"
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
	.uaword	0x1c1
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
	.uaword	0x1ed
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
	.uaword	0x254
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
	.uleb128 0x3
	.string	"Dio_ChannelType"
	.byte	0x3
	.byte	0x75
	.uaword	0x1df
	.uleb128 0x3
	.string	"Dio_LevelType"
	.byte	0x3
	.byte	0x7b
	.uaword	0x1b4
	.uleb128 0x4
	.byte	0x1
	.byte	0x4
	.byte	0xa9
	.uaword	0x384
	.uleb128 0x5
	.string	"ePMUX_AN0_MUX10"
	.sleb128 192
	.uleb128 0x5
	.string	"ePMUX_AN1_MUX10"
	.sleb128 193
	.uleb128 0x5
	.string	"ePMUX_AN2_MUX10"
	.sleb128 194
	.uleb128 0x5
	.string	"ePMUX_AN3_MUX10"
	.sleb128 195
	.uleb128 0x5
	.string	"ePMUX_AN4_MUX10"
	.sleb128 196
	.uleb128 0x5
	.string	"ePMUX_AN5_MUX10"
	.sleb128 197
	.uleb128 0x5
	.string	"ePMUX_AN6_MUX10"
	.sleb128 198
	.uleb128 0x5
	.string	"ePMUX_AN7_MUX10"
	.sleb128 199
	.uleb128 0x5
	.string	"ePMux_ANInputMux10MaxChannelNum"
	.sleb128 200
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.byte	0x4
	.byte	0xb5
	.uaword	0x448
	.uleb128 0x5
	.string	"ePMUX_AN0_MUX11"
	.sleb128 208
	.uleb128 0x5
	.string	"ePMUX_AN1_MUX11"
	.sleb128 209
	.uleb128 0x5
	.string	"ePMUX_AN2_MUX11"
	.sleb128 210
	.uleb128 0x5
	.string	"ePMUX_AN3_MUX11"
	.sleb128 211
	.uleb128 0x5
	.string	"ePMUX_AN4_MUX11"
	.sleb128 212
	.uleb128 0x5
	.string	"ePMUX_AN5_MUX11"
	.sleb128 213
	.uleb128 0x5
	.string	"ePMUX_AN6_MUX11"
	.sleb128 214
	.uleb128 0x5
	.string	"ePMUX_AN7_MUX11"
	.sleb128 215
	.uleb128 0x5
	.string	"ePMux_ANInputMux11MaxChannelNum"
	.sleb128 216
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.string	"IOHAL_u16Read_CH_DIO_IN_M_AN_ENABLE_ASC2"
	.byte	0x1
	.byte	0x2d
	.byte	0x1
	.uaword	0x1df
	.uaword	.LFB19
	.uaword	.LFE19
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x49b
	.uleb128 0x7
	.uaword	.LVL0
	.byte	0x1
	.uaword	0x3312
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_DX1_B"
	.byte	0x1
	.byte	0x31
	.byte	0x1
	.uaword	.LFB20
	.uaword	.LFE20
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x4f9
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x1
	.byte	0x31
	.uaword	0x1df
	.uaword	.LLST0
	.uleb128 0x7
	.uaword	.LVL3
	.byte	0x1
	.uaword	0x333b
	.uleb128 0x8
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x36
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_BACKUP_EN"
	.byte	0x1
	.byte	0x35
	.byte	0x1
	.uaword	.LFB21
	.uaword	.LFE21
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x55b
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x1
	.byte	0x35
	.uaword	0x1df
	.uaword	.LLST1
	.uleb128 0x7
	.uaword	.LVL6
	.byte	0x1
	.uaword	0x333b
	.uleb128 0x8
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x37
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_RCLK_2"
	.byte	0x1
	.byte	0x39
	.byte	0x1
	.uaword	.LFB22
	.uaword	.LFE22
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x5ba
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x1
	.byte	0x39
	.uaword	0x1df
	.uaword	.LLST2
	.uleb128 0x7
	.uaword	.LVL9
	.byte	0x1
	.uaword	0x333b
	.uleb128 0x8
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x39
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.string	"IOHAL_u16Read_CH_DIO_IN_M_AN_ENABLE_ASC1"
	.byte	0x1
	.byte	0x3d
	.byte	0x1
	.uaword	0x1df
	.uaword	.LFB23
	.uaword	.LFE23
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x60d
	.uleb128 0x7
	.uaword	.LVL10
	.byte	0x1
	.uaword	0x3312
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3b
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_Q6_PTC2"
	.byte	0x1
	.byte	0x41
	.byte	0x1
	.uaword	.LFB24
	.uaword	.LFE24
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x66d
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x1
	.byte	0x41
	.uaword	0x1df
	.uaword	.LLST3
	.uleb128 0x7
	.uaword	.LVL13
	.byte	0x1
	.uaword	0x333b
	.uleb128 0x8
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.string	"IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_W_2"
	.byte	0x1
	.byte	0x46
	.byte	0x1
	.uaword	0x1df
	.uaword	.LFB25
	.uaword	.LFE25
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x6bc
	.uleb128 0x7
	.uaword	.LVL14
	.byte	0x1
	.uaword	0x3312
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x43
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_DX3_A"
	.byte	0x1
	.byte	0x4a
	.byte	0x1
	.uaword	.LFB26
	.uaword	.LFE26
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x71a
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x1
	.byte	0x4a
	.uaword	0x1df
	.uaword	.LLST4
	.uleb128 0x7
	.uaword	.LVL17
	.byte	0x1
	.uaword	0x333b
	.uleb128 0x8
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x44
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_DX3_B"
	.byte	0x1
	.byte	0x4e
	.byte	0x1
	.uaword	.LFB27
	.uaword	.LFE27
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x778
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x1
	.byte	0x4e
	.uaword	0x1df
	.uaword	.LLST5
	.uleb128 0x7
	.uaword	.LVL20
	.byte	0x1
	.uaword	0x333b
	.uleb128 0x8
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x45
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_DX3_C"
	.byte	0x1
	.byte	0x52
	.byte	0x1
	.uaword	.LFB28
	.uaword	.LFE28
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x7d6
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x1
	.byte	0x52
	.uaword	0x1df
	.uaword	.LLST6
	.uleb128 0x7
	.uaword	.LVL23
	.byte	0x1
	.uaword	0x333b
	.uleb128 0x8
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x46
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_DX1_A"
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.uaword	.LFB29
	.uaword	.LFE29
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x834
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x1
	.byte	0x56
	.uaword	0x1df
	.uaword	.LLST7
	.uleb128 0x7
	.uaword	.LVL26
	.byte	0x1
	.uaword	0x333b
	.uleb128 0x8
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x47
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_SRCLK_2"
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.uaword	.LFB30
	.uaword	.LFE30
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x895
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x1
	.byte	0x5b
	.uaword	0x1df
	.uaword	.LLST8
	.uleb128 0x7
	.uaword	.LVL29
	.byte	0x1
	.uaword	0x333b
	.uleb128 0x8
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_SER_2"
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.uaword	.LFB31
	.uaword	.LFE31
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x8f4
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x1
	.byte	0x5f
	.uaword	0x1df
	.uaword	.LLST9
	.uleb128 0x7
	.uaword	.LVL32
	.byte	0x1
	.uaword	0x333b
	.uleb128 0x8
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x21
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.string	"IOHAL_u16Read_CH_DIO_IN_M_IO_MUX2"
	.byte	0x1
	.byte	0x63
	.byte	0x1
	.uaword	0x1df
	.uaword	.LFB32
	.uaword	.LFE32
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x941
	.uleb128 0x7
	.uaword	.LVL33
	.byte	0x1
	.uaword	0x3312
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x26
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_PW_DOWN"
	.byte	0x1
	.byte	0x67
	.byte	0x1
	.uaword	.LFB33
	.uaword	.LFE33
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x9a2
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x1
	.byte	0x67
	.uaword	0x1df
	.uaword	.LLST10
	.uleb128 0x7
	.uaword	.LVL36
	.byte	0x1
	.uaword	0x333b
	.uleb128 0x8
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x27
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_KM1_ZQ1"
	.byte	0x1
	.byte	0x6b
	.byte	0x1
	.uaword	.LFB34
	.uaword	.LFE34
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xa03
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x1
	.byte	0x6b
	.uaword	0x1df
	.uaword	.LLST11
	.uleb128 0x7
	.uaword	.LVL39
	.byte	0x1
	.uaword	0x333b
	.uleb128 0x8
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x28
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_KM2_ZQ2"
	.byte	0x1
	.byte	0x6f
	.byte	0x1
	.uaword	.LFB35
	.uaword	.LFE35
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xa64
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x1
	.byte	0x6f
	.uaword	0x1df
	.uaword	.LLST12
	.uleb128 0x7
	.uaword	.LVL42
	.byte	0x1
	.uaword	0x333b
	.uleb128 0x8
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x29
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_KM3_ZQ3"
	.byte	0x1
	.byte	0x73
	.byte	0x1
	.uaword	.LFB36
	.uaword	.LFE36
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xac5
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x1
	.byte	0x73
	.uaword	0x1df
	.uaword	.LLST13
	.uleb128 0x7
	.uaword	.LVL45
	.byte	0x1
	.uaword	0x333b
	.uleb128 0x8
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x2a
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_KM4_ZQ4"
	.byte	0x1
	.byte	0x77
	.byte	0x1
	.uaword	.LFB37
	.uaword	.LFE37
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xb26
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x1
	.byte	0x77
	.uaword	0x1df
	.uaword	.LLST14
	.uleb128 0x7
	.uaword	.LVL48
	.byte	0x1
	.uaword	0x333b
	.uleb128 0x8
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x2b
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.string	"IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_V_2"
	.byte	0x1
	.byte	0x7c
	.byte	0x1
	.uaword	0x1df
	.uaword	.LFB38
	.uaword	.LFE38
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xb76
	.uleb128 0x7
	.uaword	.LVL49
	.byte	0x1
	.uaword	0x3312
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0xa4
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.string	"IOHAL_u16Read_CH_DIO_IN_M_FLT_EXCITATION_2"
	.byte	0x1
	.byte	0x81
	.byte	0x1
	.uaword	0x1df
	.uaword	.LFB39
	.uaword	.LFE39
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xbcc
	.uleb128 0x7
	.uaword	.LVL50
	.byte	0x1
	.uaword	0x3312
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0xb0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.string	"IOHAL_u16Read_CH_DIO_IN_M_FLT_EXCITATION_1"
	.byte	0x1
	.byte	0x85
	.byte	0x1
	.uaword	0x1df
	.uaword	.LFB40
	.uaword	.LFE40
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xc22
	.uleb128 0x7
	.uaword	.LVL51
	.byte	0x1
	.uaword	0x3312
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0xb1
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.string	"IOHAL_u16Read_CH_DIO_IN_M_DI1_KM_EN"
	.byte	0x1
	.byte	0x89
	.byte	0x1
	.uaword	0x1df
	.uaword	.LFB41
	.uaword	.LFE41
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xc71
	.uleb128 0x7
	.uaword	.LVL52
	.byte	0x1
	.uaword	0x3312
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0xb2
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_SRCLK_3"
	.byte	0x1
	.byte	0x8d
	.byte	0x1
	.uaword	.LFB42
	.uaword	.LFE42
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xcd2
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x1
	.byte	0x8d
	.uaword	0x1df
	.uaword	.LLST15
	.uleb128 0x7
	.uaword	.LVL55
	.byte	0x1
	.uaword	0x333b
	.uleb128 0x8
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0xb4
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_SER_3"
	.byte	0x1
	.byte	0x91
	.byte	0x1
	.uaword	.LFB43
	.uaword	.LFE43
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xd31
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x1
	.byte	0x91
	.uaword	0x1df
	.uaword	.LLST16
	.uleb128 0x7
	.uaword	.LVL58
	.byte	0x1
	.uaword	0x333b
	.uleb128 0x8
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0xb5
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.string	"IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_U_2"
	.byte	0x1
	.byte	0x95
	.byte	0x1
	.uaword	0x1df
	.uaword	.LFB44
	.uaword	.LFE44
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xd81
	.uleb128 0x7
	.uaword	.LVL59
	.byte	0x1
	.uaword	0x3312
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0xb7
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_YC2_KC3Z_YC"
	.byte	0x1
	.byte	0x99
	.byte	0x1
	.uaword	.LFB45
	.uaword	.LFE45
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xde6
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x1
	.byte	0x99
	.uaword	0x1df
	.uaword	.LLST17
	.uleb128 0x7
	.uaword	.LVL62
	.byte	0x1
	.uaword	0x333b
	.uleb128 0x8
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0xb8
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_ISO_EN1"
	.byte	0x1
	.byte	0x9d
	.byte	0x1
	.uaword	.LFB46
	.uaword	.LFE46
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xe47
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x1
	.byte	0x9d
	.uaword	0x1df
	.uaword	.LLST18
	.uleb128 0x7
	.uaword	.LVL65
	.byte	0x1
	.uaword	0x333b
	.uleb128 0x8
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0xbd
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_ISO_EN2"
	.byte	0x1
	.byte	0xa1
	.byte	0x1
	.uaword	.LFB47
	.uaword	.LFE47
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xea8
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x1
	.byte	0xa1
	.uaword	0x1df
	.uaword	.LLST19
	.uleb128 0x7
	.uaword	.LVL68
	.byte	0x1
	.uaword	0x333b
	.uleb128 0x8
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0xbe
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_ISO_EN3"
	.byte	0x1
	.byte	0xa5
	.byte	0x1
	.uaword	.LFB48
	.uaword	.LFE48
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xf09
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x1
	.byte	0xa5
	.uaword	0x1df
	.uaword	.LLST20
	.uleb128 0x7
	.uaword	.LVL71
	.byte	0x1
	.uaword	0x333b
	.uleb128 0x8
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0xbf
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.string	"IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_V_1"
	.byte	0x1
	.byte	0xaa
	.byte	0x1
	.uaword	0x1df
	.uaword	.LFB49
	.uaword	.LFE49
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xf59
	.uleb128 0x7
	.uaword	.LVL72
	.byte	0x1
	.uaword	0x3312
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0xc0
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_KM20_DCJY1"
	.byte	0x1
	.byte	0xae
	.byte	0x1
	.uaword	.LFB50
	.uaword	.LFE50
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xfbd
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x1
	.byte	0xae
	.uaword	0x1df
	.uaword	.LLST21
	.uleb128 0x7
	.uaword	.LVL75
	.byte	0x1
	.uaword	0x333b
	.uleb128 0x8
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0xc1
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_KM21_DCJY2"
	.byte	0x1
	.byte	0xb2
	.byte	0x1
	.uaword	.LFB51
	.uaword	.LFE51
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1021
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x1
	.byte	0xb2
	.uaword	0x1df
	.uaword	.LLST22
	.uleb128 0x7
	.uaword	.LVL78
	.byte	0x1
	.uaword	0x333b
	.uleb128 0x8
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0xd0
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_KM22_DCJY3"
	.byte	0x1
	.byte	0xb6
	.byte	0x1
	.uaword	.LFB52
	.uaword	.LFE52
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1085
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x1
	.byte	0xb6
	.uaword	0x1df
	.uaword	.LLST23
	.uleb128 0x7
	.uaword	.LVL81
	.byte	0x1
	.uaword	0x333b
	.uleb128 0x8
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0xd1
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_KM23_DCJY4"
	.byte	0x1
	.byte	0xba
	.byte	0x1
	.uaword	.LFB53
	.uaword	.LFE53
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x10e9
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x1
	.byte	0xba
	.uaword	0x1df
	.uaword	.LLST24
	.uleb128 0x7
	.uaword	.LVL84
	.byte	0x1
	.uaword	0x333b
	.uleb128 0x8
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0xd2
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_YC5_SZ2_YC"
	.byte	0x1
	.byte	0xbe
	.byte	0x1
	.uaword	.LFB54
	.uaword	.LFE54
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x114d
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x1
	.byte	0xbe
	.uaword	0x1df
	.uaword	.LLST25
	.uleb128 0x7
	.uaword	.LVL87
	.byte	0x1
	.uaword	0x333b
	.uleb128 0x8
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0xd3
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.string	"IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_U_1"
	.byte	0x1
	.byte	0xc3
	.byte	0x1
	.uaword	0x1df
	.uaword	.LFB55
	.uaword	.LFE55
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x119d
	.uleb128 0x7
	.uaword	.LVL88
	.byte	0x1
	.uaword	0x3312
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0xe6
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.string	"IOHAL_u16Read_CH_DIO_IN_M_SUPPLY_WDI"
	.byte	0x1
	.byte	0xc7
	.byte	0x1
	.uaword	0x1df
	.uaword	.LFB56
	.uaword	.LFE56
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x11ed
	.uleb128 0x7
	.uaword	.LVL89
	.byte	0x1
	.uaword	0x3312
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0xe7
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.string	"IOHAL_u16Read_CH_DIO_IN_M_IO_MUX3"
	.byte	0x1
	.byte	0xcb
	.byte	0x1
	.uaword	0x1df
	.uaword	.LFB57
	.uaword	.LFE57
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x123a
	.uleb128 0x7
	.uaword	.LVL90
	.byte	0x1
	.uaword	0x3312
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0xe8
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.string	"IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_W_1"
	.byte	0x1
	.byte	0xcf
	.byte	0x1
	.uaword	0x1df
	.uaword	.LFB58
	.uaword	.LFE58
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x128a
	.uleb128 0x7
	.uaword	.LVL91
	.byte	0x1
	.uaword	0x3312
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0xea
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_DO2"
	.byte	0x1
	.byte	0xd4
	.byte	0x1
	.uaword	.LFB59
	.uaword	.LFE59
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x12e7
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x1
	.byte	0xd4
	.uaword	0x1df
	.uaword	.LLST26
	.uleb128 0x7
	.uaword	.LVL94
	.byte	0x1
	.uaword	0x333b
	.uleb128 0x8
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0xf0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.string	"IOHAL_u16Read_CH_DIO_IN_M_FAULT_ACM_HS_N"
	.byte	0x1
	.byte	0xd8
	.byte	0x1
	.uaword	0x1df
	.uaword	.LFB60
	.uaword	.LFE60
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x133b
	.uleb128 0x7
	.uaword	.LVL95
	.byte	0x1
	.uaword	0x3312
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0xf1
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.string	"IOHAL_u16Read_CH_DIO_IN_M_FAULT_EPS_HS_N"
	.byte	0x1
	.byte	0xdc
	.byte	0x1
	.uaword	0x1df
	.uaword	.LFB61
	.uaword	.LFE61
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x138f
	.uleb128 0x7
	.uaword	.LVL96
	.byte	0x1
	.uaword	0x3312
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0xf3
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_MCU_ASC_STATE"
	.byte	0x1
	.byte	0xe0
	.byte	0x1
	.uaword	.LFB62
	.uaword	.LFE62
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x13f4
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x1
	.byte	0xe0
	.uaword	0x1df
	.uaword	.LLST27
	.uleb128 0x7
	.uaword	.LVL99
	.byte	0x1
	.uaword	0x333b
	.uleb128 0x8
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0xf7
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_YC3_KC4Z_YC"
	.byte	0x1
	.byte	0xe4
	.byte	0x1
	.uaword	.LFB63
	.uaword	.LFE63
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1459
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x1
	.byte	0xe4
	.uaword	0x1df
	.uaword	.LLST28
	.uleb128 0x7
	.uaword	.LVL102
	.byte	0x1
	.uaword	0x333b
	.uleb128 0x8
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0xf8
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.string	"IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_HS_N_1"
	.byte	0x1
	.byte	0xe9
	.byte	0x1
	.uaword	0x1df
	.uaword	.LFB64
	.uaword	.LFE64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x14b0
	.uleb128 0x7
	.uaword	.LVL103
	.byte	0x1
	.uaword	0x3312
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x140
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_YC7_ZXFZ_YC"
	.byte	0x1
	.byte	0xed
	.byte	0x1
	.uaword	.LFB65
	.uaword	.LFE65
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1516
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x1
	.byte	0xed
	.uaword	0x1df
	.uaword	.LLST29
	.uleb128 0x7
	.uaword	.LVL106
	.byte	0x1
	.uaword	0x333b
	.uleb128 0x8
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x141
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_YC1_ZQ_YC"
	.byte	0x1
	.byte	0xf1
	.byte	0x1
	.uaword	.LFB66
	.uaword	.LFE66
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x157a
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x1
	.byte	0xf1
	.uaword	0x1df
	.uaword	.LLST30
	.uleb128 0x7
	.uaword	.LVL109
	.byte	0x1
	.uaword	0x333b
	.uleb128 0x8
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x143
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_Q1_DCJR1"
	.byte	0x1
	.byte	0xf5
	.byte	0x1
	.uaword	.LFB67
	.uaword	.LFE67
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x15dd
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x1
	.byte	0xf5
	.uaword	0x1df
	.uaword	.LLST31
	.uleb128 0x7
	.uaword	.LVL112
	.byte	0x1
	.uaword	0x333b
	.uleb128 0x8
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x149
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_Q2_DCJR2"
	.byte	0x1
	.byte	0xf9
	.byte	0x1
	.uaword	.LFB68
	.uaword	.LFE68
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1640
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x1
	.byte	0xf9
	.uaword	0x1df
	.uaword	.LLST32
	.uleb128 0x7
	.uaword	.LVL115
	.byte	0x1
	.uaword	0x333b
	.uleb128 0x8
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x14a
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_Q3_DCJR3"
	.byte	0x1
	.byte	0xfd
	.byte	0x1
	.uaword	.LFB69
	.uaword	.LFE69
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x16a3
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x1
	.byte	0xfd
	.uaword	0x1df
	.uaword	.LLST33
	.uleb128 0x7
	.uaword	.LVL118
	.byte	0x1
	.uaword	0x333b
	.uleb128 0x8
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x14b
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_Q4_DCJR4"
	.byte	0x1
	.uahalf	0x101
	.byte	0x1
	.uaword	.LFB70
	.uaword	.LFE70
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1708
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x101
	.uaword	0x1df
	.uaword	.LLST34
	.uleb128 0x7
	.uaword	.LVL121
	.byte	0x1
	.uaword	0x333b
	.uleb128 0x8
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x14c
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_ENA_KM"
	.byte	0x1
	.uahalf	0x105
	.byte	0x1
	.uaword	.LFB71
	.uaword	.LFE71
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x176b
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x105
	.uaword	0x1df
	.uaword	.LLST35
	.uleb128 0x7
	.uaword	.LVL124
	.byte	0x1
	.uaword	0x333b
	.uleb128 0x8
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x14e
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_SRCLK"
	.byte	0x1
	.uahalf	0x10a
	.byte	0x1
	.uaword	.LFB72
	.uaword	.LFE72
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x17cd
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x10a
	.uaword	0x1df
	.uaword	.LLST36
	.uleb128 0x7
	.uaword	.LVL127
	.byte	0x1
	.uaword	0x333b
	.uleb128 0x8
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x155
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_RCLK"
	.byte	0x1
	.uahalf	0x10f
	.byte	0x1
	.uaword	.LFB73
	.uaword	.LFE73
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x182e
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x10f
	.uaword	0x1df
	.uaword	.LLST37
	.uleb128 0x7
	.uaword	.LVL130
	.byte	0x1
	.uaword	0x333b
	.uleb128 0x8
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x160
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.string	"IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_LS_N_1"
	.byte	0x1
	.uahalf	0x113
	.byte	0x1
	.uaword	0x1df
	.uaword	.LFB74
	.uaword	.LFE74
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1886
	.uleb128 0x7
	.uaword	.LVL131
	.byte	0x1
	.uaword	0x3312
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x161
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.string	"IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_LS_N_2"
	.byte	0x1
	.uahalf	0x117
	.byte	0x1
	.uaword	0x1df
	.uaword	.LFB75
	.uaword	.LFE75
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x18de
	.uleb128 0x7
	.uaword	.LVL132
	.byte	0x1
	.uaword	0x3312
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x162
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.string	"IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_HS_N_2"
	.byte	0x1
	.uahalf	0x11b
	.byte	0x1
	.uaword	0x1df
	.uaword	.LFB76
	.uaword	.LFE76
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1936
	.uleb128 0x7
	.uaword	.LVL133
	.byte	0x1
	.uaword	0x3312
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x163
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_Q5_PTC1"
	.byte	0x1
	.uahalf	0x11f
	.byte	0x1
	.uaword	.LFB77
	.uaword	.LFE77
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x199a
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x11f
	.uaword	0x1df
	.uaword	.LLST38
	.uleb128 0x7
	.uaword	.LVL136
	.byte	0x1
	.uaword	0x333b
	.uleb128 0x8
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x164
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_ACM_ENA_PWM"
	.byte	0x1
	.uahalf	0x123
	.byte	0x1
	.uaword	.LFB78
	.uaword	.LFE78
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1a02
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x123
	.uaword	0x1df
	.uaword	.LLST39
	.uleb128 0x7
	.uaword	.LVL139
	.byte	0x1
	.uaword	0x333b
	.uleb128 0x8
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x168
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_DX1_C"
	.byte	0x1
	.uahalf	0x128
	.byte	0x1
	.uaword	.LFB79
	.uaword	.LFE79
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1a64
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x128
	.uaword	0x1df
	.uaword	.LLST40
	.uleb128 0x7
	.uaword	.LVL142
	.byte	0x1
	.uaword	0x333b
	.uleb128 0x8
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x171
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_YC6_XGLFZ_YC"
	.byte	0x1
	.uahalf	0x12c
	.byte	0x1
	.uaword	.LFB80
	.uaword	.LFE80
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1acd
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x12c
	.uaword	0x1df
	.uaword	.LLST41
	.uleb128 0x7
	.uaword	.LVL145
	.byte	0x1
	.uaword	0x333b
	.uleb128 0x8
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x172
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_EPS_ENA_PWM"
	.byte	0x1
	.uahalf	0x130
	.byte	0x1
	.uaword	.LFB81
	.uaword	.LFE81
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1b35
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x130
	.uaword	0x1df
	.uaword	.LLST42
	.uleb128 0x7
	.uaword	.LVL148
	.byte	0x1
	.uaword	0x333b
	.uleb128 0x8
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x177
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.string	"IOHAL_u16Read_CH_DIO_IN_M_KEY_ON"
	.byte	0x1
	.uahalf	0x14b
	.byte	0x1
	.uaword	0x1df
	.uaword	.LFB82
	.uaword	.LFE82
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1b83
	.uleb128 0x7
	.uaword	.LVL149
	.byte	0x1
	.uaword	0x3312
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x202
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_DX2_A"
	.byte	0x1
	.uahalf	0x14f
	.byte	0x1
	.uaword	.LFB83
	.uaword	.LFE83
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1be5
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x14f
	.uaword	0x1df
	.uaword	.LLST43
	.uleb128 0x7
	.uaword	.LVL152
	.byte	0x1
	.uaword	0x333b
	.uleb128 0x8
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x203
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_DX2_B"
	.byte	0x1
	.uahalf	0x153
	.byte	0x1
	.uaword	.LFB84
	.uaword	.LFE84
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1c47
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x153
	.uaword	0x1df
	.uaword	.LLST44
	.uleb128 0x7
	.uaword	.LVL155
	.byte	0x1
	.uaword	0x333b
	.uleb128 0x8
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x204
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_DX2_C"
	.byte	0x1
	.uahalf	0x157
	.byte	0x1
	.uaword	.LFB85
	.uaword	.LFE85
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1ca9
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x157
	.uaword	0x1df
	.uaword	.LLST45
	.uleb128 0x7
	.uaword	.LVL158
	.byte	0x1
	.uaword	0x333b
	.uleb128 0x8
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x205
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_YC4_SZ1_YC"
	.byte	0x1
	.uahalf	0x15b
	.byte	0x1
	.uaword	.LFB86
	.uaword	.LFE86
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1d10
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x15b
	.uaword	0x1df
	.uaword	.LLST46
	.uleb128 0x7
	.uaword	.LVL161
	.byte	0x1
	.uaword	0x333b
	.uleb128 0x8
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x207
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_MCU_STATE_LED"
	.byte	0x1
	.uahalf	0x160
	.byte	0x1
	.uaword	.LFB87
	.uaword	.LFE87
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1d78
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x160
	.uaword	0x1df
	.uaword	.LLST47
	.uleb128 0x7
	.uaword	.LVL164
	.byte	0x1
	.uaword	0x333b
	.uleb128 0x8
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x216
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_SER"
	.byte	0x1
	.uahalf	0x164
	.byte	0x1
	.uaword	.LFB88
	.uaword	.LFE88
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1dd8
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x164
	.uaword	0x1df
	.uaword	.LLST48
	.uleb128 0x7
	.uaword	.LVL167
	.byte	0x1
	.uaword	0x333b
	.uleb128 0x8
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x21e
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_DO1"
	.byte	0x1
	.uahalf	0x168
	.byte	0x1
	.uaword	.LFB89
	.uaword	.LFE89
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1e38
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x168
	.uaword	0x1df
	.uaword	.LLST49
	.uleb128 0x7
	.uaword	.LVL170
	.byte	0x1
	.uaword	0x333b
	.uleb128 0x8
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x21f
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.string	"IOHAL_u16Read_CH_DIO_IN_M_CHG_ON"
	.byte	0x1
	.uahalf	0x16d
	.byte	0x1
	.uaword	0x1df
	.uaword	.LFB90
	.uaword	.LFE90
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1e86
	.uleb128 0x7
	.uaword	.LVL171
	.byte	0x1
	.uaword	0x3312
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x221
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_RCLK_3"
	.byte	0x1
	.uahalf	0x172
	.byte	0x1
	.uaword	.LFB91
	.uaword	.LFE91
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1ee9
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x172
	.uaword	0x1df
	.uaword	.LLST50
	.uleb128 0x7
	.uaword	.LVL174
	.byte	0x1
	.uaword	0x333b
	.uleb128 0x8
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x224
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_AN_VOL_DCLINK_DRV"
	.byte	0x1
	.uahalf	0x177
	.byte	0x1
	.uaword	0x1df
	.uaword	.LFB92
	.uaword	.LFE92
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_AN_MOT_COS_1"
	.byte	0x1
	.uahalf	0x180
	.byte	0x1
	.uaword	0x1df
	.uaword	.LFB93
	.uaword	.LFE93
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_AN_MOT_SIN_1"
	.byte	0x1
	.uahalf	0x189
	.byte	0x1
	.uaword	0x1df
	.uaword	.LFB94
	.uaword	.LFE94
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_AN_KM6_FB_KC1F"
	.byte	0x1
	.uahalf	0x192
	.byte	0x1
	.uaword	0x1df
	.uaword	.LFB95
	.uaword	.LFE95
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_AN_MON_CURRENT_OCP_MCU1"
	.byte	0x1
	.uahalf	0x196
	.byte	0x1
	.uaword	0x1df
	.uaword	.LFB96
	.uaword	.LFE96
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_AN_KM8_FB_KC2F"
	.byte	0x1
	.uahalf	0x19f
	.byte	0x1
	.uaword	0x1df
	.uaword	.LFB97
	.uaword	.LFE97
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_AN_MON_CURRENT_OCP_MCU2"
	.byte	0x1
	.uahalf	0x1a3
	.byte	0x1
	.uaword	0x1df
	.uaword	.LFB98
	.uaword	.LFE98
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_AN_CURRENT_U_1"
	.byte	0x1
	.uahalf	0x1ad
	.byte	0x1
	.uaword	0x1df
	.uaword	.LFB99
	.uaword	.LFE99
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_AN_CURRENT_V_1"
	.byte	0x1
	.uahalf	0x1b7
	.byte	0x1
	.uaword	0x1df
	.uaword	.LFB100
	.uaword	.LFE100
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_AN_CURRENT_W_1"
	.byte	0x1
	.uahalf	0x1c0
	.byte	0x1
	.uaword	0x1df
	.uaword	.LFB101
	.uaword	.LFE101
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_AN_DC_LINK_PACK4"
	.byte	0x1
	.uahalf	0x1c9
	.byte	0x1
	.uaword	0x1df
	.uaword	.LFB102
	.uaword	.LFE102
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_SIN_H_2"
	.byte	0x1
	.uahalf	0x1cd
	.byte	0x1
	.uaword	0x1df
	.uaword	.LFB103
	.uaword	.LFE103
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_ACM_TEMP_MEAS_MOD_W"
	.byte	0x1
	.uahalf	0x1d6
	.byte	0x1
	.uaword	0x1df
	.uaword	.LFB104
	.uaword	.LFE104
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_HDW_VERSION"
	.byte	0x1
	.uahalf	0x1da
	.byte	0x1
	.uaword	0x1df
	.uaword	.LFB105
	.uaword	.LFE105
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_ACM_TEMP_MEAS_MOD_V"
	.byte	0x1
	.uahalf	0x1e3
	.byte	0x1
	.uaword	0x1df
	.uaword	.LFB106
	.uaword	.LFE106
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_AN_P5V_AD2S"
	.byte	0x1
	.uahalf	0x1e7
	.byte	0x1
	.uaword	0x1df
	.uaword	.LFB107
	.uaword	.LFE107
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_AN_MOT_COS_2"
	.byte	0x1
	.uahalf	0x1f0
	.byte	0x1
	.uaword	0x1df
	.uaword	.LFB108
	.uaword	.LFE108
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_AN_MOT_SIN_2"
	.byte	0x1
	.uahalf	0x1f9
	.byte	0x1
	.uaword	0x1df
	.uaword	.LFB109
	.uaword	.LFE109
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_EPS_TEMP_MEAS_MOD_W"
	.byte	0x1
	.uahalf	0x202
	.byte	0x1
	.uaword	0x1df
	.uaword	.LFB110
	.uaword	.LFE110
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_AN_15V_RDC"
	.byte	0x1
	.uahalf	0x206
	.byte	0x1
	.uaword	0x1df
	.uaword	.LFB111
	.uaword	.LFE111
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_EPS_TEMP_MEAS_MOD_V"
	.byte	0x1
	.uahalf	0x20f
	.byte	0x1
	.uaword	0x1df
	.uaword	.LFB112
	.uaword	.LFE112
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_AN_P5V_REF"
	.byte	0x1
	.uahalf	0x213
	.byte	0x1
	.uaword	0x1df
	.uaword	.LFB113
	.uaword	.LFE113
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_COS_L_2"
	.byte	0x1
	.uahalf	0x21c
	.byte	0x1
	.uaword	0x1df
	.uaword	.LFB114
	.uaword	.LFE114
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_COS_H_2"
	.byte	0x1
	.uahalf	0x225
	.byte	0x1
	.uaword	0x1df
	.uaword	.LFB115
	.uaword	.LFE115
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_AN_CURRENT_U_2"
	.byte	0x1
	.uahalf	0x22e
	.byte	0x1
	.uaword	0x1df
	.uaword	.LFB116
	.uaword	.LFE116
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_AN_CURRENT_V_2"
	.byte	0x1
	.uahalf	0x237
	.byte	0x1
	.uaword	0x1df
	.uaword	.LFB117
	.uaword	.LFE117
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_AN_CURRENT_W_2"
	.byte	0x1
	.uahalf	0x240
	.byte	0x1
	.uaword	0x1df
	.uaword	.LFB118
	.uaword	.LFE118
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_IO_MUX1"
	.byte	0x1
	.uahalf	0x249
	.byte	0x1
	.uaword	0x1df
	.uaword	.LFB119
	.uaword	.LFE119
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_AN_MUX1"
	.byte	0x1
	.uahalf	0x252
	.byte	0x1
	.uaword	0x1df
	.uaword	.LFB120
	.uaword	.LFE120
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_AN_MUX2"
	.byte	0x1
	.uahalf	0x25b
	.byte	0x1
	.uaword	0x1df
	.uaword	.LFB121
	.uaword	.LFE121
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_AN_MUX4"
	.byte	0x1
	.uahalf	0x264
	.byte	0x1
	.uaword	0x1df
	.uaword	.LFB122
	.uaword	.LFE122
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_AN_MUX3"
	.byte	0x1
	.uahalf	0x26d
	.byte	0x1
	.uaword	0x1df
	.uaword	.LFB123
	.uaword	.LFE123
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_COS_H_1"
	.byte	0x1
	.uahalf	0x276
	.byte	0x1
	.uaword	0x1df
	.uaword	.LFB124
	.uaword	.LFE124
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_COS_L_1"
	.byte	0x1
	.uahalf	0x27f
	.byte	0x1
	.uaword	0x1df
	.uaword	.LFB125
	.uaword	.LFE125
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_SIN_H_1"
	.byte	0x1
	.uahalf	0x289
	.byte	0x1
	.uaword	0x1df
	.uaword	.LFB126
	.uaword	.LFE126
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_SIN_L_2"
	.byte	0x1
	.uahalf	0x292
	.byte	0x1
	.uaword	0x1df
	.uaword	.LFB127
	.uaword	.LFE127
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_SIN_L_1"
	.byte	0x1
	.uahalf	0x29b
	.byte	0x1
	.uaword	0x1df
	.uaword	.LFB128
	.uaword	.LFE128
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_ACM_AN_CURRENT_U"
	.byte	0x1
	.uahalf	0x2aa
	.byte	0x1
	.uaword	0x1df
	.uaword	.LFB129
	.uaword	.LFE129
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_ACM_AN_CURRENT_V"
	.byte	0x1
	.uahalf	0x2b3
	.byte	0x1
	.uaword	0x1df
	.uaword	.LFB130
	.uaword	.LFE130
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_EPS_AN_CURRENT_U"
	.byte	0x1
	.uahalf	0x2bc
	.byte	0x1
	.uaword	0x1df
	.uaword	.LFB131
	.uaword	.LFE131
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_EPS_AN_CURRENT_V"
	.byte	0x1
	.uahalf	0x2c5
	.byte	0x1
	.uaword	0x1df
	.uaword	.LFB132
	.uaword	.LFE132
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_ACM_AN_CURRENT_W"
	.byte	0x1
	.uahalf	0x2ce
	.byte	0x1
	.uaword	0x1df
	.uaword	.LFB133
	.uaword	.LFE133
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_EPS_AN_CURRENT_W"
	.byte	0x1
	.uahalf	0x2d7
	.byte	0x1
	.uaword	0x1df
	.uaword	.LFB134
	.uaword	.LFE134
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_AN_MUX5"
	.byte	0x1
	.uahalf	0x2e0
	.byte	0x1
	.uaword	0x1df
	.uaword	.LFB135
	.uaword	.LFE135
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_AN_MUX6"
	.byte	0x1
	.uahalf	0x2e4
	.byte	0x1
	.uaword	0x1df
	.uaword	.LFB136
	.uaword	.LFE136
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_AN_MUX7"
	.byte	0x1
	.uahalf	0x2ed
	.byte	0x1
	.uaword	0x1df
	.uaword	.LFB137
	.uaword	.LFE137
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_AN_MUX8"
	.byte	0x1
	.uahalf	0x2f1
	.byte	0x1
	.uaword	0x1df
	.uaword	.LFB138
	.uaword	.LFE138
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_AN_MUX9"
	.byte	0x1
	.uahalf	0x2f5
	.byte	0x1
	.uaword	0x1df
	.uaword	.LFB139
	.uaword	.LFE139
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_AN_MUX10"
	.byte	0x1
	.uahalf	0x2f9
	.byte	0x1
	.uaword	0x1df
	.uaword	.LFB140
	.uaword	.LFE140
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_AN_MUX11"
	.byte	0x1
	.uahalf	0x2fd
	.byte	0x1
	.uaword	0x1df
	.uaword	.LFB141
	.uaword	.LFE141
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_AN_MUX12"
	.byte	0x1
	.uahalf	0x301
	.byte	0x1
	.uaword	0x1df
	.uaword	.LFB142
	.uaword	.LFE142
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xd
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_LV_VOL_SAMPLE"
	.byte	0x1
	.uahalf	0x306
	.byte	0x1
	.uaword	0x1df
	.uaword	.LFB143
	.uaword	.LFE143
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x2b8d
	.uleb128 0x7
	.uaword	.LVL175
	.byte	0x1
	.uaword	0x3367
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x9
	.byte	0xc0
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_P5V_COM_SAMPLE"
	.byte	0x1
	.uahalf	0x30b
	.byte	0x1
	.uaword	0x1df
	.uaword	.LFB144
	.uaword	.LFE144
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x2be0
	.uleb128 0x7
	.uaword	.LVL176
	.byte	0x1
	.uaword	0x3367
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x9
	.byte	0xd2
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_P5V_BT_SAMPLE"
	.byte	0x1
	.uahalf	0x310
	.byte	0x1
	.uaword	0x1df
	.uaword	.LFB145
	.uaword	.LFE145
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x2c32
	.uleb128 0x7
	.uaword	.LVL177
	.byte	0x1
	.uaword	0x3367
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x9
	.byte	0xd3
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_P5V_HS_SAMPLE"
	.byte	0x1
	.uahalf	0x315
	.byte	0x1
	.uaword	0x1df
	.uaword	.LFB146
	.uaword	.LFE146
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x2c84
	.uleb128 0x7
	.uaword	.LVL178
	.byte	0x1
	.uaword	0x3367
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x9
	.byte	0xc2
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_P5V_LS_SAMPLE"
	.byte	0x1
	.uahalf	0x31a
	.byte	0x1
	.uaword	0x1df
	.uaword	.LFB147
	.uaword	.LFE147
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x2cd6
	.uleb128 0x7
	.uaword	.LVL179
	.byte	0x1
	.uaword	0x3367
	.uleb128 0x8
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x9
	.byte	0xc3
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.string	"IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_U_2"
	.byte	0x1
	.uahalf	0x325
	.byte	0x1
	.uaword	0x245
	.uaword	.LFB148
	.uaword	.LFE148
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.string	"IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_V_2"
	.byte	0x1
	.uahalf	0x329
	.byte	0x1
	.uaword	0x245
	.uaword	.LFB149
	.uaword	.LFE149
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.string	"IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_W_2"
	.byte	0x1
	.uahalf	0x32d
	.byte	0x1
	.uaword	0x245
	.uaword	.LFB150
	.uaword	.LFE150
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.string	"IOHAL_u16Read_CH_PWM_IN_AN_VOL_DCLINK_EPS"
	.byte	0x1
	.uahalf	0x331
	.byte	0x1
	.uaword	0x245
	.uaword	.LFB151
	.uaword	.LFE151
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.string	"IOHAL_u16Read_CH_PWM_IN_AN_VOL_DCLINK_ACM"
	.byte	0x1
	.uahalf	0x335
	.byte	0x1
	.uaword	0x245
	.uaword	.LFB152
	.uaword	.LFE152
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.string	"IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_W_1"
	.byte	0x1
	.uahalf	0x339
	.byte	0x1
	.uaword	0x245
	.uaword	.LFB153
	.uaword	.LFE153
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.string	"IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_V_1"
	.byte	0x1
	.uahalf	0x33d
	.byte	0x1
	.uaword	0x245
	.uaword	.LFB154
	.uaword	.LFE154
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.string	"IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_U_1"
	.byte	0x1
	.uahalf	0x341
	.byte	0x1
	.uaword	0x245
	.uaword	.LFB155
	.uaword	.LFE155
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.string	"IOHAL_u16Read_CH_PWM_IN_M_EPS_TEMP_MEAS_MOD_W"
	.byte	0x1
	.uahalf	0x346
	.byte	0x1
	.uaword	0x245
	.uaword	.LFB156
	.uaword	.LFE156
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.string	"IOHAL_u16Read_CH_PWM_IN_M_EPS_TEMP_MEAS_MOD_V"
	.byte	0x1
	.uahalf	0x34a
	.byte	0x1
	.uaword	0x245
	.uaword	.LFB157
	.uaword	.LFE157
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.string	"IOHAL_u16Read_CH_PWM_IN_M_ACM_TEMP_MEAS_MOD_W"
	.byte	0x1
	.uahalf	0x34e
	.byte	0x1
	.uaword	0x245
	.uaword	.LFB158
	.uaword	.LFE158
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.string	"IOHAL_u16Read_CH_PWM_IN_M_ACM_TEMP_MEAS_MOD_V"
	.byte	0x1
	.uahalf	0x352
	.byte	0x1
	.uaword	0x245
	.uaword	.LFB159
	.uaword	.LFE159
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xf
	.string	"Icu_f32Cycle_M_TEMP_MEAS_MOD_U_2"
	.byte	0x5
	.byte	0xd
	.uaword	0x245
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"Icu_f32Cycle_M_TEMP_MEAS_MOD_V_2"
	.byte	0x5
	.byte	0xe
	.uaword	0x245
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"Icu_f32Cycle_M_TEMP_MEAS_MOD_W_2"
	.byte	0x5
	.byte	0xf
	.uaword	0x245
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"Icu_f32Cycle_AN_VOL_DCLINK_EPS"
	.byte	0x5
	.byte	0x10
	.uaword	0x245
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"Icu_f32Cycle_AN_VOL_DCLINK_ACM"
	.byte	0x5
	.byte	0x11
	.uaword	0x245
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"Icu_f32Cycle_M_TEMP_MEAS_MOD_W_1"
	.byte	0x5
	.byte	0x12
	.uaword	0x245
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"Icu_f32Cycle_M_TEMP_MEAS_MOD_V_1"
	.byte	0x5
	.byte	0x13
	.uaword	0x245
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"Icu_f32Cycle_M_TEMP_MEAS_MOD_U_1"
	.byte	0x5
	.byte	0x14
	.uaword	0x245
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"Icu_f32Cycle_M_EPS_TEMP_MEAS_MOD_W"
	.byte	0x5
	.byte	0x15
	.uaword	0x245
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"Icu_f32Cycle_M_EPS_TEMP_MEAS_MOD_V"
	.byte	0x5
	.byte	0x16
	.uaword	0x245
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"Icu_f32Cycle_M_ACM_TEMP_MEAS_MOD_W"
	.byte	0x5
	.byte	0x17
	.uaword	0x245
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"Icu_f32Cycle_M_ACM_TEMP_MEAS_MOD_V"
	.byte	0x5
	.byte	0x18
	.uaword	0x245
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.uaword	0x1df
	.uaword	0x31fe
	.uleb128 0x11
	.uaword	0x288
	.byte	0xf
	.byte	0
	.uleb128 0xf
	.string	"VADC_u16GroupBuffer0"
	.byte	0x6
	.byte	0x6
	.uaword	0x31ee
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"VADC_u16GroupBuffer1"
	.byte	0x6
	.byte	0x7
	.uaword	0x31ee
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"VADC_u16GroupBuffer2"
	.byte	0x6
	.byte	0x8
	.uaword	0x31ee
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"VADC_u16GroupBuffer3"
	.byte	0x6
	.byte	0x9
	.uaword	0x31ee
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"VADC_u16GroupBuffer3_1"
	.byte	0x6
	.byte	0xa
	.uaword	0x31ee
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"VADC_u16GroupBuffer8"
	.byte	0x6
	.byte	0xc
	.uaword	0x31ee
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"VADC_u16GroupBuffer8_2"
	.byte	0x6
	.byte	0xd
	.uaword	0x31ee
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"VADC_u16GroupBuffer10"
	.byte	0x6
	.byte	0xe
	.uaword	0x31ee
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"VADC_u16GroupBuffer11"
	.byte	0x6
	.byte	0xf
	.uaword	0x31ee
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.byte	0x1
	.string	"Dio_ReadChannel"
	.byte	0x3
	.byte	0xdf
	.byte	0x1
	.uaword	0x2ab
	.byte	0x1
	.uaword	0x3336
	.uleb128 0x13
	.uaword	0x3336
	.byte	0
	.uleb128 0x14
	.uaword	0x294
	.uleb128 0x15
	.byte	0x1
	.string	"Dio_WriteChannel"
	.byte	0x3
	.uahalf	0x105
	.byte	0x1
	.byte	0x1
	.uaword	0x3362
	.uleb128 0x13
	.uaword	0x3336
	.uleb128 0x13
	.uaword	0x3362
	.byte	0
	.uleb128 0x14
	.uaword	0x2ab
	.uleb128 0x12
	.byte	0x1
	.string	"PMux_u16GetInputVal"
	.byte	0x4
	.byte	0xd7
	.byte	0x1
	.uaword	0x1df
	.byte	0x1
	.uaword	0x338f
	.uleb128 0x13
	.uaword	0x338f
	.byte	0
	.uleb128 0x14
	.uaword	0x1b4
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
	.uleb128 0x7
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
	.uleb128 0xa
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0xb
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
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
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
	.uaword	.LVL1-.text
	.uaword	.LVL2-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL2-.text
	.uaword	.LFE20-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL4-.text
	.uaword	.LVL5-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL5-.text
	.uaword	.LFE21-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL7-.text
	.uaword	.LVL8-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL8-.text
	.uaword	.LFE22-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL11-.text
	.uaword	.LVL12-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL12-.text
	.uaword	.LFE24-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL15-.text
	.uaword	.LVL16-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL16-.text
	.uaword	.LFE26-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL18-.text
	.uaword	.LVL19-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL19-.text
	.uaword	.LFE27-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL21-.text
	.uaword	.LVL22-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL22-.text
	.uaword	.LFE28-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL24-.text
	.uaword	.LVL25-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL25-.text
	.uaword	.LFE29-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL27-.text
	.uaword	.LVL28-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL28-.text
	.uaword	.LFE30-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL30-.text
	.uaword	.LVL31-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL31-.text
	.uaword	.LFE31-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL34-.text
	.uaword	.LVL35-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL35-.text
	.uaword	.LFE33-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL37-.text
	.uaword	.LVL38-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL38-.text
	.uaword	.LFE34-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL40-.text
	.uaword	.LVL41-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL41-.text
	.uaword	.LFE35-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL43-.text
	.uaword	.LVL44-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL44-.text
	.uaword	.LFE36-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL46-.text
	.uaword	.LVL47-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL47-.text
	.uaword	.LFE37-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL53-.text
	.uaword	.LVL54-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL54-.text
	.uaword	.LFE42-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL56-.text
	.uaword	.LVL57-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL57-.text
	.uaword	.LFE43-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL60-.text
	.uaword	.LVL61-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL61-.text
	.uaword	.LFE45-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL63-.text
	.uaword	.LVL64-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL64-.text
	.uaword	.LFE46-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL66-.text
	.uaword	.LVL67-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL67-.text
	.uaword	.LFE47-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL69-.text
	.uaword	.LVL70-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL70-.text
	.uaword	.LFE48-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL73-.text
	.uaword	.LVL74-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL74-.text
	.uaword	.LFE50-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL76-.text
	.uaword	.LVL77-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL77-.text
	.uaword	.LFE51-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL79-.text
	.uaword	.LVL80-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL80-.text
	.uaword	.LFE52-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL82-.text
	.uaword	.LVL83-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL83-.text
	.uaword	.LFE53-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL85-.text
	.uaword	.LVL86-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL86-.text
	.uaword	.LFE54-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL92-.text
	.uaword	.LVL93-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL93-.text
	.uaword	.LFE59-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL97-.text
	.uaword	.LVL98-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL98-.text
	.uaword	.LFE62-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL100-.text
	.uaword	.LVL101-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL101-.text
	.uaword	.LFE63-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL104-.text
	.uaword	.LVL105-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL105-.text
	.uaword	.LFE65-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL107-.text
	.uaword	.LVL108-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL108-.text
	.uaword	.LFE66-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL110-.text
	.uaword	.LVL111-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL111-.text
	.uaword	.LFE67-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL113-.text
	.uaword	.LVL114-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL114-.text
	.uaword	.LFE68-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL116-.text
	.uaword	.LVL117-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL117-.text
	.uaword	.LFE69-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL119-.text
	.uaword	.LVL120-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL120-.text
	.uaword	.LFE70-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL122-.text
	.uaword	.LVL123-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL123-.text
	.uaword	.LFE71-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL125-.text
	.uaword	.LVL126-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL126-.text
	.uaword	.LFE72-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL128-.text
	.uaword	.LVL129-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL129-.text
	.uaword	.LFE73-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL134-.text
	.uaword	.LVL135-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL135-.text
	.uaword	.LFE77-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL137-.text
	.uaword	.LVL138-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL138-.text
	.uaword	.LFE78-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL140-.text
	.uaword	.LVL141-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL141-.text
	.uaword	.LFE79-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL143-.text
	.uaword	.LVL144-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL144-.text
	.uaword	.LFE80-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST42:
	.uaword	.LVL146-.text
	.uaword	.LVL147-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL147-.text
	.uaword	.LFE81-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST43:
	.uaword	.LVL150-.text
	.uaword	.LVL151-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL151-.text
	.uaword	.LFE83-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST44:
	.uaword	.LVL153-.text
	.uaword	.LVL154-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL154-.text
	.uaword	.LFE84-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST45:
	.uaword	.LVL156-.text
	.uaword	.LVL157-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL157-.text
	.uaword	.LFE85-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST46:
	.uaword	.LVL159-.text
	.uaword	.LVL160-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL160-.text
	.uaword	.LFE86-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST47:
	.uaword	.LVL162-.text
	.uaword	.LVL163-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL163-.text
	.uaword	.LFE87-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST48:
	.uaword	.LVL165-.text
	.uaword	.LVL166-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL166-.text
	.uaword	.LFE88-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST49:
	.uaword	.LVL168-.text
	.uaword	.LVL169-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL169-.text
	.uaword	.LFE89-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST50:
	.uaword	.LVL172-.text
	.uaword	.LVL173-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL173-.text
	.uaword	.LFE91-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
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
.LASF0:
	.string	"u16State"
	.extern	Icu_f32Cycle_M_ACM_TEMP_MEAS_MOD_V,STT_OBJECT,4
	.extern	Icu_f32Cycle_M_ACM_TEMP_MEAS_MOD_W,STT_OBJECT,4
	.extern	Icu_f32Cycle_M_EPS_TEMP_MEAS_MOD_V,STT_OBJECT,4
	.extern	Icu_f32Cycle_M_EPS_TEMP_MEAS_MOD_W,STT_OBJECT,4
	.extern	Icu_f32Cycle_M_TEMP_MEAS_MOD_U_1,STT_OBJECT,4
	.extern	Icu_f32Cycle_M_TEMP_MEAS_MOD_V_1,STT_OBJECT,4
	.extern	Icu_f32Cycle_M_TEMP_MEAS_MOD_W_1,STT_OBJECT,4
	.extern	Icu_f32Cycle_AN_VOL_DCLINK_ACM,STT_OBJECT,4
	.extern	Icu_f32Cycle_AN_VOL_DCLINK_EPS,STT_OBJECT,4
	.extern	Icu_f32Cycle_M_TEMP_MEAS_MOD_W_2,STT_OBJECT,4
	.extern	Icu_f32Cycle_M_TEMP_MEAS_MOD_V_2,STT_OBJECT,4
	.extern	Icu_f32Cycle_M_TEMP_MEAS_MOD_U_2,STT_OBJECT,4
	.extern	PMux_u16GetInputVal,STT_FUNC,0
	.extern	VADC_u16GroupBuffer8_2,STT_OBJECT,32
	.extern	VADC_u16GroupBuffer8,STT_OBJECT,32
	.extern	VADC_u16GroupBuffer11,STT_OBJECT,32
	.extern	VADC_u16GroupBuffer3_1,STT_OBJECT,32
	.extern	VADC_u16GroupBuffer3,STT_OBJECT,32
	.extern	VADC_u16GroupBuffer2,STT_OBJECT,32
	.extern	VADC_u16GroupBuffer1,STT_OBJECT,32
	.extern	VADC_u16GroupBuffer0,STT_OBJECT,32
	.extern	VADC_u16GroupBuffer10,STT_OBJECT,32
	.extern	Dio_WriteChannel,STT_FUNC,0
	.extern	Dio_ReadChannel,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
