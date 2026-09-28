	.file	"MAIN_DEF.c"
.section .text,"ax",@progbits
.Ltext0:
	.global	MAIN_u8UdsBootVersion
.section .data.a1.MAIN_u8UdsBootVersion,"aw",@progbits
	.type	MAIN_u8UdsBootVersion, @object
	.size	MAIN_u8UdsBootVersion, 16
MAIN_u8UdsBootVersion:
	.ascii	"HD150BTVEB      "
	.global	MAIN_u8UdsEcuSerialNum
.section .data.a1.MAIN_u8UdsEcuSerialNum,"aw",@progbits
	.type	MAIN_u8UdsEcuSerialNum, @object
	.size	MAIN_u8UdsEcuSerialNum, 12
MAIN_u8UdsEcuSerialNum:
	.ascii	"230818      "
	.global	MAIN_u8UdsEcuName
.section .data.a1.MAIN_u8UdsEcuName,"aw",@progbits
	.type	MAIN_u8UdsEcuName, @object
	.size	MAIN_u8UdsEcuName, 10
MAIN_u8UdsEcuName:
	.ascii	"IPUM      "
	.global	MAIN_u8UdsSupplyerId
.section .data.a1.MAIN_u8UdsSupplyerId,"aw",@progbits
	.type	MAIN_u8UdsSupplyerId, @object
	.size	MAIN_u8UdsSupplyerId, 10
MAIN_u8UdsSupplyerId:
	.ascii	"DPPC6     "
	.global	MAIN_u8UdsManufHwVersion
.section .data.a1.MAIN_u8UdsManufHwVersion,"aw",@progbits
	.type	MAIN_u8UdsManufHwVersion, @object
	.size	MAIN_u8UdsManufHwVersion, 13
MAIN_u8UdsManufHwVersion:
	.ascii	"H56B3700009AA"
	.global	MAIN_u8UdsSupplHwVersion
.section .data.a1.MAIN_u8UdsSupplHwVersion,"aw",@progbits
	.type	MAIN_u8UdsSupplHwVersion, @object
	.size	MAIN_u8UdsSupplHwVersion, 8
MAIN_u8UdsSupplHwVersion:
	.ascii	"HD150MFA"
	.global	MAIN_u8UdsManufPartNum
.section .data.a1.MAIN_u8UdsManufPartNum,"aw",@progbits
	.type	MAIN_u8UdsManufPartNum, @object
	.size	MAIN_u8UdsManufPartNum, 12
MAIN_u8UdsManufPartNum:
	.ascii	"            "
	.global	MAIN_u8UdsOEMPartNum
.section .data.a1.MAIN_u8UdsOEMPartNum,"aw",@progbits
	.type	MAIN_u8UdsOEMPartNum, @object
	.size	MAIN_u8UdsOEMPartNum, 13
MAIN_u8UdsOEMPartNum:
	.ascii	"H56B3700013AB"
	.global	MAIN_u8UdsSwVerSup
.section .data.a1.MAIN_u8UdsSwVerSup,"aw",@progbits
	.type	MAIN_u8UdsSwVerSup, @object
	.size	MAIN_u8UdsSwVerSup, 21
MAIN_u8UdsSwVerSup:
	.string	"ZZQC600V_APP_A_10102"
	.global	MAIN_u8UdsSwVerVeh
.section .data.a1.MAIN_u8UdsSwVerVeh,"aw",@progbits
	.type	MAIN_u8UdsSwVerVeh, @object
	.size	MAIN_u8UdsSwVerVeh, 13
MAIN_u8UdsSwVerVeh:
	.ascii	"H56B3700006EH"
	.global	UDS_au8CalibSoftId
.section .bss.a1.UDS_au8CalibSoftId,"aw",@nobits
	.type	UDS_au8CalibSoftId, @object
	.size	UDS_au8CalibSoftId, 16
UDS_au8CalibSoftId:
	.zero	16
	.global	MAIN_MSGu8PwModOffCnt
.section .bss.a1.MAIN_MSGu8PwModOffCnt,"aw",@nobits
	.type	MAIN_MSGu8PwModOffCnt, @object
	.size	MAIN_MSGu8PwModOffCnt, 1
MAIN_MSGu8PwModOffCnt:
	.zero	1
	.global	MAIN_MSGu8PwModOnCnt
.section .bss.a1.MAIN_MSGu8PwModOnCnt,"aw",@nobits
	.type	MAIN_MSGu8PwModOnCnt, @object
	.size	MAIN_MSGu8PwModOnCnt, 1
MAIN_MSGu8PwModOnCnt:
	.zero	1
	.global	MAIN_s32PosA2BDeltTime
.section .bss.a4.MAIN_s32PosA2BDeltTime,"aw",@nobits
	.align 2
	.type	MAIN_s32PosA2BDeltTime, @object
	.size	MAIN_s32PosA2BDeltTime, 4
MAIN_s32PosA2BDeltTime:
	.zero	4
	.global	MAIN_s32Email2PosTreqDiff
.section .bss.a4.MAIN_s32Email2PosTreqDiff,"aw",@nobits
	.align 2
	.type	MAIN_s32Email2PosTreqDiff, @object
	.size	MAIN_s32Email2PosTreqDiff, 4
MAIN_s32Email2PosTreqDiff:
	.zero	4
	.global	MAIN_as32OCTrimNvm
.section .bss.a4.MAIN_as32OCTrimNvm,"aw",@nobits
	.align 2
	.type	MAIN_as32OCTrimNvm, @object
	.size	MAIN_as32OCTrimNvm, 20
MAIN_as32OCTrimNvm:
	.zero	20
	.global	MAIN_u8DEV_Fault
.section .bss.a1.MAIN_u8DEV_Fault,"aw",@nobits
	.type	MAIN_u8DEV_Fault, @object
	.size	MAIN_u8DEV_Fault, 16
MAIN_u8DEV_Fault:
	.zero	16
	.global	Core2_Bsw10msTotalTime
.section .bss.a4.Core2_Bsw10msTotalTime,"aw",@nobits
	.align 2
	.type	Core2_Bsw10msTotalTime, @object
	.size	Core2_Bsw10msTotalTime, 4
Core2_Bsw10msTotalTime:
	.zero	4
	.global	Core2_Bsw10msStopTime
.section .bss.a4.Core2_Bsw10msStopTime,"aw",@nobits
	.align 2
	.type	Core2_Bsw10msStopTime, @object
	.size	Core2_Bsw10msStopTime, 4
Core2_Bsw10msStopTime:
	.zero	4
	.global	Core2_Bsw10msStartTime
.section .bss.a4.Core2_Bsw10msStartTime,"aw",@nobits
	.align 2
	.type	Core2_Bsw10msStartTime, @object
	.size	Core2_Bsw10msStartTime, 4
Core2_Bsw10msStartTime:
	.zero	4
	.global	Core2_Asw1msTotalTime
.section .bss.a4.Core2_Asw1msTotalTime,"aw",@nobits
	.align 2
	.type	Core2_Asw1msTotalTime, @object
	.size	Core2_Asw1msTotalTime, 4
Core2_Asw1msTotalTime:
	.zero	4
	.global	Core2_Asw1msStopTime
.section .bss.a4.Core2_Asw1msStopTime,"aw",@nobits
	.align 2
	.type	Core2_Asw1msStopTime, @object
	.size	Core2_Asw1msStopTime, 4
Core2_Asw1msStopTime:
	.zero	4
	.global	Core2_Asw1msStartTime
.section .bss.a4.Core2_Asw1msStartTime,"aw",@nobits
	.align 2
	.type	Core2_Asw1msStartTime, @object
	.size	Core2_Asw1msStartTime, 4
Core2_Asw1msStartTime:
	.zero	4
	.global	Core2_Asw10msTotalTime
.section .bss.a4.Core2_Asw10msTotalTime,"aw",@nobits
	.align 2
	.type	Core2_Asw10msTotalTime, @object
	.size	Core2_Asw10msTotalTime, 4
Core2_Asw10msTotalTime:
	.zero	4
	.global	Core2_Asw10msStopTime
.section .bss.a4.Core2_Asw10msStopTime,"aw",@nobits
	.align 2
	.type	Core2_Asw10msStopTime, @object
	.size	Core2_Asw10msStopTime, 4
Core2_Asw10msStopTime:
	.zero	4
	.global	Core2_Asw10msStartTime
.section .bss.a4.Core2_Asw10msStartTime,"aw",@nobits
	.align 2
	.type	Core2_Asw10msStartTime, @object
	.size	Core2_Asw10msStartTime, 4
Core2_Asw10msStartTime:
	.zero	4
	.global	Core1_PositionTotalTime
.section .bss.a4.Core1_PositionTotalTime,"aw",@nobits
	.align 2
	.type	Core1_PositionTotalTime, @object
	.size	Core1_PositionTotalTime, 4
Core1_PositionTotalTime:
	.zero	4
	.global	Core1_PositionStopTime
.section .bss.a4.Core1_PositionStopTime,"aw",@nobits
	.align 2
	.type	Core1_PositionStopTime, @object
	.size	Core1_PositionStopTime, 4
Core1_PositionStopTime:
	.zero	4
	.global	Core1_PositionStartTime
.section .bss.a4.Core1_PositionStartTime,"aw",@nobits
	.align 2
	.type	Core1_PositionStartTime, @object
	.size	Core1_PositionStartTime, 4
Core1_PositionStartTime:
	.zero	4
	.global	Core1_Bsw10msTotalTime
.section .bss.a4.Core1_Bsw10msTotalTime,"aw",@nobits
	.align 2
	.type	Core1_Bsw10msTotalTime, @object
	.size	Core1_Bsw10msTotalTime, 4
Core1_Bsw10msTotalTime:
	.zero	4
	.global	Core1_Bsw10msStopTime
.section .bss.a4.Core1_Bsw10msStopTime,"aw",@nobits
	.align 2
	.type	Core1_Bsw10msStopTime, @object
	.size	Core1_Bsw10msStopTime, 4
Core1_Bsw10msStopTime:
	.zero	4
	.global	Core1_Bsw10msStartTime
.section .bss.a4.Core1_Bsw10msStartTime,"aw",@nobits
	.align 2
	.type	Core1_Bsw10msStartTime, @object
	.size	Core1_Bsw10msStartTime, 4
Core1_Bsw10msStartTime:
	.zero	4
	.global	Core1_Asw1msTotalTime
.section .bss.a4.Core1_Asw1msTotalTime,"aw",@nobits
	.align 2
	.type	Core1_Asw1msTotalTime, @object
	.size	Core1_Asw1msTotalTime, 4
Core1_Asw1msTotalTime:
	.zero	4
	.global	Core1_Asw1msStopTime
.section .bss.a4.Core1_Asw1msStopTime,"aw",@nobits
	.align 2
	.type	Core1_Asw1msStopTime, @object
	.size	Core1_Asw1msStopTime, 4
Core1_Asw1msStopTime:
	.zero	4
	.global	Core1_Asw1msStartTime
.section .bss.a4.Core1_Asw1msStartTime,"aw",@nobits
	.align 2
	.type	Core1_Asw1msStartTime, @object
	.size	Core1_Asw1msStartTime, 4
Core1_Asw1msStartTime:
	.zero	4
	.global	Core1_Asw10msTotalTime
.section .bss.a4.Core1_Asw10msTotalTime,"aw",@nobits
	.align 2
	.type	Core1_Asw10msTotalTime, @object
	.size	Core1_Asw10msTotalTime, 4
Core1_Asw10msTotalTime:
	.zero	4
	.global	Core1_Asw10msStopTime
.section .bss.a4.Core1_Asw10msStopTime,"aw",@nobits
	.align 2
	.type	Core1_Asw10msStopTime, @object
	.size	Core1_Asw10msStopTime, 4
Core1_Asw10msStopTime:
	.zero	4
	.global	Core1_Asw10msStartTime
.section .bss.a4.Core1_Asw10msStartTime,"aw",@nobits
	.align 2
	.type	Core1_Asw10msStartTime, @object
	.size	Core1_Asw10msStartTime, 4
Core1_Asw10msStartTime:
	.zero	4
	.global	MAIN_TotalTime
.section .bss.a4.MAIN_TotalTime,"aw",@nobits
	.align 2
	.type	MAIN_TotalTime, @object
	.size	MAIN_TotalTime, 4
MAIN_TotalTime:
	.zero	4
	.global	MAIN_EndTime
.section .bss.a4.MAIN_EndTime,"aw",@nobits
	.align 2
	.type	MAIN_EndTime, @object
	.size	MAIN_EndTime, 4
MAIN_EndTime:
	.zero	4
	.global	MAIN_startTime
.section .bss.a4.MAIN_startTime,"aw",@nobits
	.align 2
	.type	MAIN_startTime, @object
	.size	MAIN_startTime, 4
MAIN_startTime:
	.zero	4
	.global	Core0_Bsw50msTotalTime
.section .bss.a4.Core0_Bsw50msTotalTime,"aw",@nobits
	.align 2
	.type	Core0_Bsw50msTotalTime, @object
	.size	Core0_Bsw50msTotalTime, 4
Core0_Bsw50msTotalTime:
	.zero	4
	.global	Core0_Bsw50msStopTime
.section .bss.a4.Core0_Bsw50msStopTime,"aw",@nobits
	.align 2
	.type	Core0_Bsw50msStopTime, @object
	.size	Core0_Bsw50msStopTime, 4
Core0_Bsw50msStopTime:
	.zero	4
	.global	Core0_Bsw50msStartTime
.section .bss.a4.Core0_Bsw50msStartTime,"aw",@nobits
	.align 2
	.type	Core0_Bsw50msStartTime, @object
	.size	Core0_Bsw50msStartTime, 4
Core0_Bsw50msStartTime:
	.zero	4
	.global	Core0_Bsw1msTotalTime
.section .bss.a4.Core0_Bsw1msTotalTime,"aw",@nobits
	.align 2
	.type	Core0_Bsw1msTotalTime, @object
	.size	Core0_Bsw1msTotalTime, 4
Core0_Bsw1msTotalTime:
	.zero	4
	.global	Core0_Bsw1msStopTime
.section .bss.a4.Core0_Bsw1msStopTime,"aw",@nobits
	.align 2
	.type	Core0_Bsw1msStopTime, @object
	.size	Core0_Bsw1msStopTime, 4
Core0_Bsw1msStopTime:
	.zero	4
	.global	Core0_Bsw1msStartTime
.section .bss.a4.Core0_Bsw1msStartTime,"aw",@nobits
	.align 2
	.type	Core0_Bsw1msStartTime, @object
	.size	Core0_Bsw1msStartTime, 4
Core0_Bsw1msStartTime:
	.zero	4
	.global	Core0_Bsw10msTotalTime
.section .bss.a4.Core0_Bsw10msTotalTime,"aw",@nobits
	.align 2
	.type	Core0_Bsw10msTotalTime, @object
	.size	Core0_Bsw10msTotalTime, 4
Core0_Bsw10msTotalTime:
	.zero	4
	.global	Core0_Bsw10msStopTime
.section .bss.a4.Core0_Bsw10msStopTime,"aw",@nobits
	.align 2
	.type	Core0_Bsw10msStopTime, @object
	.size	Core0_Bsw10msStopTime, 4
Core0_Bsw10msStopTime:
	.zero	4
	.global	Core0_Bsw10msStartTime
.section .bss.a4.Core0_Bsw10msStartTime,"aw",@nobits
	.align 2
	.type	Core0_Bsw10msStartTime, @object
	.size	Core0_Bsw10msStartTime, 4
Core0_Bsw10msStartTime:
	.zero	4
	.global	Core0_Bsw100msTotalTime
.section .bss.a4.Core0_Bsw100msTotalTime,"aw",@nobits
	.align 2
	.type	Core0_Bsw100msTotalTime, @object
	.size	Core0_Bsw100msTotalTime, 4
Core0_Bsw100msTotalTime:
	.zero	4
	.global	Core0_Bsw100msStopTime
.section .bss.a4.Core0_Bsw100msStopTime,"aw",@nobits
	.align 2
	.type	Core0_Bsw100msStopTime, @object
	.size	Core0_Bsw100msStopTime, 4
Core0_Bsw100msStopTime:
	.zero	4
	.global	Core0_Bsw100msStartTime
.section .bss.a4.Core0_Bsw100msStartTime,"aw",@nobits
	.align 2
	.type	Core0_Bsw100msStartTime, @object
	.size	Core0_Bsw100msStartTime, 4
Core0_Bsw100msStartTime:
	.zero	4
	.global	Core0_Asw10msTotalTime
.section .bss.a4.Core0_Asw10msTotalTime,"aw",@nobits
	.align 2
	.type	Core0_Asw10msTotalTime, @object
	.size	Core0_Asw10msTotalTime, 4
Core0_Asw10msTotalTime:
	.zero	4
	.global	Core0_Asw10msStopTime
.section .bss.a4.Core0_Asw10msStopTime,"aw",@nobits
	.align 2
	.type	Core0_Asw10msStopTime, @object
	.size	Core0_Asw10msStopTime, 4
Core0_Asw10msStopTime:
	.zero	4
	.global	Core0_Asw10msStartTime
.section .bss.a4.Core0_Asw10msStartTime,"aw",@nobits
	.align 2
	.type	Core0_Asw10msStartTime, @object
	.size	Core0_Asw10msStartTime, 4
Core0_Asw10msStartTime:
	.zero	4
	.global	Core0_Asw100msTotalTime
.section .bss.a4.Core0_Asw100msTotalTime,"aw",@nobits
	.align 2
	.type	Core0_Asw100msTotalTime, @object
	.size	Core0_Asw100msTotalTime, 4
Core0_Asw100msTotalTime:
	.zero	4
	.global	Core0_Asw100msStopTime
.section .bss.a4.Core0_Asw100msStopTime,"aw",@nobits
	.align 2
	.type	Core0_Asw100msStopTime, @object
	.size	Core0_Asw100msStopTime, 4
Core0_Asw100msStopTime:
	.zero	4
	.global	Core0_Asw100msStartTime
.section .bss.a4.Core0_Asw100msStartTime,"aw",@nobits
	.align 2
	.type	Core0_Asw100msStartTime, @object
	.size	Core0_Asw100msStartTime, 4
Core0_Asw100msStartTime:
	.zero	4
	.global	Core0_u32ModReqTotalTime
.section .bss.a4.Core0_u32ModReqTotalTime,"aw",@nobits
	.align 2
	.type	Core0_u32ModReqTotalTime, @object
	.size	Core0_u32ModReqTotalTime, 4
Core0_u32ModReqTotalTime:
	.zero	4
	.global	Core0_u32ModReqStopTime
.section .bss.a4.Core0_u32ModReqStopTime,"aw",@nobits
	.align 2
	.type	Core0_u32ModReqStopTime, @object
	.size	Core0_u32ModReqStopTime, 4
Core0_u32ModReqStopTime:
	.zero	4
	.global	Core0_u32ModReqStartTime
.section .bss.a4.Core0_u32ModReqStartTime,"aw",@nobits
	.align 2
	.type	Core0_u32ModReqStartTime, @object
	.size	Core0_u32ModReqStartTime, 4
Core0_u32ModReqStartTime:
	.zero	4
	.global	OBD_u32CalVerifyNum
.section .bss.a4.OBD_u32CalVerifyNum,"aw",@nobits
	.align 2
	.type	OBD_u32CalVerifyNum, @object
	.size	OBD_u32CalVerifyNum, 4
OBD_u32CalVerifyNum:
	.zero	4
	.global	MAIN_u16BatHeatPTCCheck
.section .bss.a2.MAIN_u16BatHeatPTCCheck,"aw",@nobits
	.align 1
	.type	MAIN_u16BatHeatPTCCheck, @object
	.size	MAIN_u16BatHeatPTCCheck, 2
MAIN_u16BatHeatPTCCheck:
	.zero	2
	.global	MAIN_u16WaterCoolingCheck
.section .bss.a2.MAIN_u16WaterCoolingCheck,"aw",@nobits
	.align 1
	.type	MAIN_u16WaterCoolingCheck, @object
	.size	MAIN_u16WaterCoolingCheck, 2
MAIN_u16WaterCoolingCheck:
	.zero	2
	.global	MAIN_u16HVFanCheck
.section .bss.a2.MAIN_u16HVFanCheck,"aw",@nobits
	.align 1
	.type	MAIN_u16HVFanCheck, @object
	.size	MAIN_u16HVFanCheck, 2
MAIN_u16HVFanCheck:
	.zero	2
	.global	MAIN_u16AirConditionerCheck
.section .bss.a2.MAIN_u16AirConditionerCheck,"aw",@nobits
	.align 1
	.type	MAIN_u16AirConditionerCheck, @object
	.size	MAIN_u16AirConditionerCheck, 2
MAIN_u16AirConditionerCheck:
	.zero	2
	.global	MAIN_u16DCACInverterCheck
.section .bss.a2.MAIN_u16DCACInverterCheck,"aw",@nobits
	.align 1
	.type	MAIN_u16DCACInverterCheck, @object
	.size	MAIN_u16DCACInverterCheck, 2
MAIN_u16DCACInverterCheck:
	.zero	2
	.global	MAIN_u16DCACResevedCheck
.section .bss.a2.MAIN_u16DCACResevedCheck,"aw",@nobits
	.align 1
	.type	MAIN_u16DCACResevedCheck, @object
	.size	MAIN_u16DCACResevedCheck, 2
MAIN_u16DCACResevedCheck:
	.zero	2
	.global	MAIN_u16SuperStructureCheck
.section .bss.a2.MAIN_u16SuperStructureCheck,"aw",@nobits
	.align 1
	.type	MAIN_u16SuperStructureCheck, @object
	.size	MAIN_u16SuperStructureCheck, 2
MAIN_u16SuperStructureCheck:
	.zero	2
	.global	MAIN_u16HVInputCheck
.section .bss.a2.MAIN_u16HVInputCheck,"aw",@nobits
	.align 1
	.type	MAIN_u16HVInputCheck, @object
	.size	MAIN_u16HVInputCheck, 2
MAIN_u16HVInputCheck:
	.zero	2
	.global	MAIN_u16VadcBhv
.section .bss.a2.MAIN_u16VadcBhv,"aw",@nobits
	.align 1
	.type	MAIN_u16VadcBhv, @object
	.size	MAIN_u16VadcBhv, 2
MAIN_u16VadcBhv:
	.zero	2
	.global	MAIN_u16SpdReadyEstCnt
.section .bss.a2.MAIN_u16SpdReadyEstCnt,"aw",@nobits
	.align 1
	.type	MAIN_u16SpdReadyEstCnt, @object
	.size	MAIN_u16SpdReadyEstCnt, 2
MAIN_u16SpdReadyEstCnt:
	.zero	2
	.global	MAIN_u16PWMPeriodVal
.section .data.a2.MAIN_u16PWMPeriodVal,"aw",@progbits
	.align 1
	.type	MAIN_u16PWMPeriodVal, @object
	.size	MAIN_u16PWMPeriodVal, 2
MAIN_u16PWMPeriodVal:
	.short	2499
	.global	MAIN_u16IuPositiveSum
.section .bss.a2.MAIN_u16IuPositiveSum,"aw",@nobits
	.align 1
	.type	MAIN_u16IuPositiveSum, @object
	.size	MAIN_u16IuPositiveSum, 2
MAIN_u16IuPositiveSum:
	.zero	2
	.global	MAIN_u16IuPositiveCnt
.section .bss.a2.MAIN_u16IuPositiveCnt,"aw",@nobits
	.align 1
	.type	MAIN_u16IuPositiveCnt, @object
	.size	MAIN_u16IuPositiveCnt, 2
MAIN_u16IuPositiveCnt:
	.zero	2
	.global	MAIN_u16IuNegtiveSum
.section .bss.a2.MAIN_u16IuNegtiveSum,"aw",@nobits
	.align 1
	.type	MAIN_u16IuNegtiveSum, @object
	.size	MAIN_u16IuNegtiveSum, 2
MAIN_u16IuNegtiveSum:
	.zero	2
	.global	MAIN_u16IuNegtiveCnt
.section .bss.a2.MAIN_u16IuNegtiveCnt,"aw",@nobits
	.align 1
	.type	MAIN_u16IuNegtiveCnt, @object
	.size	MAIN_u16IuNegtiveCnt, 2
MAIN_u16IuNegtiveCnt:
	.zero	2
	.global	MAIN_u16IuMiddleSum
.section .bss.a2.MAIN_u16IuMiddleSum,"aw",@nobits
	.align 1
	.type	MAIN_u16IuMiddleSum, @object
	.size	MAIN_u16IuMiddleSum, 2
MAIN_u16IuMiddleSum:
	.zero	2
	.global	MAIN_u16IuMiddleCnt
.section .bss.a2.MAIN_u16IuMiddleCnt,"aw",@nobits
	.align 1
	.type	MAIN_u16IuMiddleCnt, @object
	.size	MAIN_u16IuMiddleCnt, 2
MAIN_u16IuMiddleCnt:
	.zero	2
	.global	MAIN_u16IuCycleCnt
.section .bss.a2.MAIN_u16IuCycleCnt,"aw",@nobits
	.align 1
	.type	MAIN_u16IuCycleCnt, @object
	.size	MAIN_u16IuCycleCnt, 2
MAIN_u16IuCycleCnt:
	.zero	2
	.global	MAIN_u16Core0Cnt200
.section .bss.a2.MAIN_u16Core0Cnt200,"aw",@nobits
	.align 1
	.type	MAIN_u16Core0Cnt200, @object
	.size	MAIN_u16Core0Cnt200, 2
MAIN_u16Core0Cnt200:
	.zero	2
	.global	MAIN_u16Core0Cnt100
.section .bss.a2.MAIN_u16Core0Cnt100,"aw",@nobits
	.align 1
	.type	MAIN_u16Core0Cnt100, @object
	.size	MAIN_u16Core0Cnt100, 2
MAIN_u16Core0Cnt100:
	.zero	2
	.global	MAIN_u16Core0Cnt10
.section .bss.a2.MAIN_u16Core0Cnt10,"aw",@nobits
	.align 1
	.type	MAIN_u16Core0Cnt10, @object
	.size	MAIN_u16Core0Cnt10, 2
MAIN_u16Core0Cnt10:
	.zero	2
	.global	MAIN_u16Core0Cnt5
.section .bss.a2.MAIN_u16Core0Cnt5,"aw",@nobits
	.align 1
	.type	MAIN_u16Core0Cnt5, @object
	.size	MAIN_u16Core0Cnt5, 2
MAIN_u16Core0Cnt5:
	.zero	2
	.global	MAIN_u16Core0Cnt2
.section .bss.a2.MAIN_u16Core0Cnt2,"aw",@nobits
	.align 1
	.type	MAIN_u16Core0Cnt2, @object
	.size	MAIN_u16Core0Cnt2, 2
MAIN_u16Core0Cnt2:
	.zero	2
	.global	MAIN_u16Core0Cnt1
.section .bss.a2.MAIN_u16Core0Cnt1,"aw",@nobits
	.align 1
	.type	MAIN_u16Core0Cnt1, @object
	.size	MAIN_u16Core0Cnt1, 2
MAIN_u16Core0Cnt1:
	.zero	2
	.global	MAIN_u8IgbtLowFltCnt
.section .bss.a1.MAIN_u8IgbtLowFltCnt,"aw",@nobits
	.type	MAIN_u8IgbtLowFltCnt, @object
	.size	MAIN_u8IgbtLowFltCnt, 1
MAIN_u8IgbtLowFltCnt:
	.zero	1
	.global	MAIN_u8IgbtHighFltCnt
.section .bss.a1.MAIN_u8IgbtHighFltCnt,"aw",@nobits
	.type	MAIN_u8IgbtHighFltCnt, @object
	.size	MAIN_u8IgbtHighFltCnt, 1
MAIN_u8IgbtHighFltCnt:
	.zero	1
	.global	MAIN_u8TestVar1
.section .bss.a1.MAIN_u8TestVar1,"aw",@nobits
	.type	MAIN_u8TestVar1, @object
	.size	MAIN_u8TestVar1, 1
MAIN_u8TestVar1:
	.zero	1
	.global	MAIN_MSGu8bcm_pepsPwrMode
.section .bss.a1.MAIN_MSGu8bcm_pepsPwrMode,"aw",@nobits
	.type	MAIN_MSGu8bcm_pepsPwrMode, @object
	.size	MAIN_MSGu8bcm_pepsPwrMode, 1
MAIN_MSGu8bcm_pepsPwrMode:
	.zero	1
	.global	MAIN_u32WaitValueVSITreatment
.section .bss.a4.MAIN_u32WaitValueVSITreatment,"aw",@nobits
	.align 2
	.type	MAIN_u32WaitValueVSITreatment, @object
	.size	MAIN_u32WaitValueVSITreatment, 4
MAIN_u32WaitValueVSITreatment:
	.zero	4
	.global	MAIN_u32TestVar2
.section .bss.a4.MAIN_u32TestVar2,"aw",@nobits
	.align 2
	.type	MAIN_u32TestVar2, @object
	.size	MAIN_u32TestVar2, 4
MAIN_u32TestVar2:
	.zero	4
	.global	MAIN_u32PosTreatCkreq
.section .bss.a4.MAIN_u32PosTreatCkreq,"aw",@nobits
	.align 2
	.type	MAIN_u32PosTreatCkreq, @object
	.size	MAIN_u32PosTreatCkreq, 4
MAIN_u32PosTreatCkreq:
	.zero	4
	.global	MAIN_u32PosBTimeStamp
.section .bss.a4.MAIN_u32PosBTimeStamp,"aw",@nobits
	.align 2
	.type	MAIN_u32PosBTimeStamp, @object
	.size	MAIN_u32PosBTimeStamp, 4
MAIN_u32PosBTimeStamp:
	.zero	4
	.global	MAIN_u32PosATimeStamp
.section .bss.a4.MAIN_u32PosATimeStamp,"aw",@nobits
	.align 2
	.type	MAIN_u32PosATimeStamp, @object
	.size	MAIN_u32PosATimeStamp, 4
MAIN_u32PosATimeStamp:
	.zero	4
	.global	MAIN_u32IuCycleTim
.section .bss.a4.MAIN_u32IuCycleTim,"aw",@nobits
	.align 2
	.type	MAIN_u32IuCycleTim, @object
	.size	MAIN_u32IuCycleTim, 4
MAIN_u32IuCycleTim:
	.zero	4
	.global	MAIN_u32EmailPosATimeStamp
.section .bss.a4.MAIN_u32EmailPosATimeStamp,"aw",@nobits
	.align 2
	.type	MAIN_u32EmailPosATimeStamp, @object
	.size	MAIN_u32EmailPosATimeStamp, 4
MAIN_u32EmailPosATimeStamp:
	.zero	4
	.global	MAIN_u32EmailCkreq
.section .bss.a4.MAIN_u32EmailCkreq,"aw",@nobits
	.align 2
	.type	MAIN_u32EmailCkreq, @object
	.size	MAIN_u32EmailCkreq, 4
MAIN_u32EmailCkreq:
	.zero	4
	.global	MAIN_f32VsiPwmPeriod
.section .bss.a4.MAIN_f32VsiPwmPeriod,"aw",@nobits
	.align 2
	.type	MAIN_f32VsiPwmPeriod, @object
	.size	MAIN_f32VsiPwmPeriod, 4
MAIN_f32VsiPwmPeriod:
	.zero	4
	.global	MAIN_f32ThetaElecRdSurPi
.section .bss.a4.MAIN_f32ThetaElecRdSurPi,"aw",@nobits
	.align 2
	.type	MAIN_f32ThetaElecRdSurPi, @object
	.size	MAIN_f32ThetaElecRdSurPi, 4
MAIN_f32ThetaElecRdSurPi:
	.zero	4
	.global	MAIN_f32PWMDutyWPhys
.section .bss.a4.MAIN_f32PWMDutyWPhys,"aw",@nobits
	.align 2
	.type	MAIN_f32PWMDutyWPhys, @object
	.size	MAIN_f32PWMDutyWPhys, 4
MAIN_f32PWMDutyWPhys:
	.zero	4
	.global	MAIN_f32PWMDutyVPhys
.section .bss.a4.MAIN_f32PWMDutyVPhys,"aw",@nobits
	.align 2
	.type	MAIN_f32PWMDutyVPhys, @object
	.size	MAIN_f32PWMDutyVPhys, 4
MAIN_f32PWMDutyVPhys:
	.zero	4
	.global	MAIN_f32PWMDutyUPhys
.section .bss.a4.MAIN_f32PWMDutyUPhys,"aw",@nobits
	.align 2
	.type	MAIN_f32PWMDutyUPhys, @object
	.size	MAIN_f32PWMDutyUPhys, 4
MAIN_f32PWMDutyUPhys:
	.zero	4
	.global	MAIN_f32MotSpdEst
.section .bss.a4.MAIN_f32MotSpdEst,"aw",@nobits
	.align 2
	.type	MAIN_f32MotSpdEst, @object
	.size	MAIN_f32MotSpdEst, 4
MAIN_f32MotSpdEst:
	.zero	4
	.global	MAIN_f32MecaSpeedRpm
.section .bss.a4.MAIN_f32MecaSpeedRpm,"aw",@nobits
	.align 2
	.type	MAIN_f32MecaSpeedRpm, @object
	.size	MAIN_f32MecaSpeedRpm, 4
MAIN_f32MecaSpeedRpm:
	.zero	4
	.global	MAIN_f32MecaSpeedRds
.section .bss.a4.MAIN_f32MecaSpeedRds,"aw",@nobits
	.align 2
	.type	MAIN_f32MecaSpeedRds, @object
	.size	MAIN_f32MecaSpeedRds, 4
MAIN_f32MecaSpeedRds:
	.zero	4
	.global	MAIN_f32IuPeriod
.section .bss.a4.MAIN_f32IuPeriod,"aw",@nobits
	.align 2
	.type	MAIN_f32IuPeriod, @object
	.size	MAIN_f32IuPeriod, 4
MAIN_f32IuPeriod:
	.zero	4
	.global	MAIN_f32IuFrequency
.section .bss.a4.MAIN_f32IuFrequency,"aw",@nobits
	.align 2
	.type	MAIN_f32IuFrequency, @object
	.size	MAIN_f32IuFrequency, 4
MAIN_f32IuFrequency:
	.zero	4
	.global	MAIN_f32ErrThetaRdSurPi
.section .bss.a4.MAIN_f32ErrThetaRdSurPi,"aw",@nobits
	.align 2
	.type	MAIN_f32ErrThetaRdSurPi, @object
	.size	MAIN_f32ErrThetaRdSurPi, 4
MAIN_f32ErrThetaRdSurPi:
	.zero	4
	.global	MAIN_f32EmailThetaElecRdSurPi
.section .bss.a4.MAIN_f32EmailThetaElecRdSurPi,"aw",@nobits
	.align 2
	.type	MAIN_f32EmailThetaElecRdSurPi, @object
	.size	MAIN_f32EmailThetaElecRdSurPi, 4
MAIN_f32EmailThetaElecRdSurPi:
	.zero	4
	.global	MAIN_f32EmailMecaSpeedRpm
.section .bss.a4.MAIN_f32EmailMecaSpeedRpm,"aw",@nobits
	.align 2
	.type	MAIN_f32EmailMecaSpeedRpm, @object
	.size	MAIN_f32EmailMecaSpeedRpm, 4
MAIN_f32EmailMecaSpeedRpm:
	.zero	4
	.global	MAIN_f32EmailMecaSpeedRds
.section .bss.a4.MAIN_f32EmailMecaSpeedRds,"aw",@nobits
	.align 2
	.type	MAIN_f32EmailMecaSpeedRds, @object
	.size	MAIN_f32EmailMecaSpeedRds, 4
MAIN_f32EmailMecaSpeedRds:
	.zero	4
	.global	MAIN_f32EmailErrThetaRdSurPi
.section .bss.a4.MAIN_f32EmailErrThetaRdSurPi,"aw",@nobits
	.align 2
	.type	MAIN_f32EmailErrThetaRdSurPi, @object
	.size	MAIN_f32EmailErrThetaRdSurPi, 4
MAIN_f32EmailErrThetaRdSurPi:
	.zero	4
	.global	MAIN_f32EmailElecSpeedRds
.section .bss.a4.MAIN_f32EmailElecSpeedRds,"aw",@nobits
	.align 2
	.type	MAIN_f32EmailElecSpeedRds, @object
	.size	MAIN_f32EmailElecSpeedRds, 4
MAIN_f32EmailElecSpeedRds:
	.zero	4
	.global	MAIN_f32ElecSpeedRds
.section .bss.a4.MAIN_f32ElecSpeedRds,"aw",@nobits
	.align 2
	.type	MAIN_f32ElecSpeedRds, @object
	.size	MAIN_f32ElecSpeedRds, 4
MAIN_f32ElecSpeedRds:
	.zero	4
	.global	MAIN_bComDisableFlg
.section .bss.a1.MAIN_bComDisableFlg,"aw",@nobits
	.type	MAIN_bComDisableFlg, @object
	.size	MAIN_bComDisableFlg, 1
MAIN_bComDisableFlg:
	.zero	1
	.global	MAIN_bCurGainStoreResult
.section .bss.a1.MAIN_bCurGainStoreResult,"aw",@nobits
	.type	MAIN_bCurGainStoreResult, @object
	.size	MAIN_bCurGainStoreResult, 1
MAIN_bCurGainStoreResult:
	.zero	1
	.global	MAIN_bDflashWriteReq
.section .bss.a1.MAIN_bDflashWriteReq,"aw",@nobits
	.type	MAIN_bDflashWriteReq, @object
	.size	MAIN_bDflashWriteReq, 1
MAIN_bDflashWriteReq:
	.zero	1
	.global	MAIN_bProgConditionOk
.section .bss.a1.MAIN_bProgConditionOk,"aw",@nobits
	.type	MAIN_bProgConditionOk, @object
	.size	MAIN_bProgConditionOk, 1
MAIN_bProgConditionOk:
	.zero	1
	.global	MAIN_bVSIStarted
.section .bss.a1.MAIN_bVSIStarted,"aw",@nobits
	.type	MAIN_bVSIStarted, @object
	.size	MAIN_bVSIStarted, 1
MAIN_bVSIStarted:
	.zero	1
	.global	MAIN_bSpeedReadyFlg
.section .bss.a1.MAIN_bSpeedReadyFlg,"aw",@nobits
	.type	MAIN_bSpeedReadyFlg, @object
	.size	MAIN_bSpeedReadyFlg, 1
MAIN_bSpeedReadyFlg:
	.zero	1
	.global	MAIN_bSpdReadyEst
.section .bss.a1.MAIN_bSpdReadyEst,"aw",@nobits
	.type	MAIN_bSpdReadyEst, @object
	.size	MAIN_bSpdReadyEst, 1
MAIN_bSpdReadyEst:
	.zero	1
	.global	MAIN_bSoftOvCurrPhsWFlg
.section .bss.a1.MAIN_bSoftOvCurrPhsWFlg,"aw",@nobits
	.type	MAIN_bSoftOvCurrPhsWFlg, @object
	.size	MAIN_bSoftOvCurrPhsWFlg, 1
MAIN_bSoftOvCurrPhsWFlg:
	.zero	1
	.global	MAIN_bSoftOvCurrPhsVFlg
.section .bss.a1.MAIN_bSoftOvCurrPhsVFlg,"aw",@nobits
	.type	MAIN_bSoftOvCurrPhsVFlg, @object
	.size	MAIN_bSoftOvCurrPhsVFlg, 1
MAIN_bSoftOvCurrPhsVFlg:
	.zero	1
	.global	MAIN_bSoftOvCurrPhsUFlg
.section .bss.a1.MAIN_bSoftOvCurrPhsUFlg,"aw",@nobits
	.type	MAIN_bSoftOvCurrPhsUFlg, @object
	.size	MAIN_bSoftOvCurrPhsUFlg, 1
MAIN_bSoftOvCurrPhsUFlg:
	.zero	1
	.global	MAIN_bSoftOvBhvFlg
.section .bss.a1.MAIN_bSoftOvBhvFlg,"aw",@nobits
	.type	MAIN_bSoftOvBhvFlg, @object
	.size	MAIN_bSoftOvBhvFlg, 1
MAIN_bSoftOvBhvFlg:
	.zero	1
	.global	MAIN_bResExcFltDetEna
.section .bss.a1.MAIN_bResExcFltDetEna,"aw",@nobits
	.type	MAIN_bResExcFltDetEna, @object
	.size	MAIN_bResExcFltDetEna, 1
MAIN_bResExcFltDetEna:
	.zero	1
	.global	MAIN_bESMStarted
.section .bss.a1.MAIN_bESMStarted,"aw",@nobits
	.type	MAIN_bESMStarted, @object
	.size	MAIN_bESMStarted, 1
MAIN_bESMStarted:
	.zero	1
	.global	MAIN_bBswReadySts
.section .bss.a1.MAIN_bBswReadySts,"aw",@nobits
	.type	MAIN_bBswReadySts, @object
	.size	MAIN_bBswReadySts, 1
MAIN_bBswReadySts:
	.zero	1
	.global	MAIN_bAscFlag
.section .bss.a1.MAIN_bAscFlag,"aw",@nobits
	.type	MAIN_bAscFlag, @object
	.size	MAIN_bAscFlag, 1
MAIN_bAscFlag:
	.zero	1
	.global	MAIN_bAkdAfterAscReq
.section .bss.a1.MAIN_bAkdAfterAscReq,"aw",@nobits
	.type	MAIN_bAkdAfterAscReq, @object
	.size	MAIN_bAkdAfterAscReq, 1
MAIN_bAkdAfterAscReq:
	.zero	1
	.global	MAIN_f32PowerdownVoltC
.section .rodata.Calib_32.MAIN_f32PowerdownVoltC,"a",@progbits
	.align 2
	.type	MAIN_f32PowerdownVoltC, @object
	.size	MAIN_f32PowerdownVoltC, 4
MAIN_f32PowerdownVoltC:
	.word	1114636288
	.global	MAIN_s32SampleDelayC
.section .rodata.Calib_32.MAIN_s32SampleDelayC,"a",@progbits
	.align 2
	.type	MAIN_s32SampleDelayC, @object
	.size	MAIN_s32SampleDelayC, 4
MAIN_s32SampleDelayC:
	.word	5
	.global	MAIN_s32ResHardDelayC
.section .rodata.Calib_32.MAIN_s32ResHardDelayC,"a",@progbits
	.align 2
	.type	MAIN_s32ResHardDelayC, @object
	.size	MAIN_s32ResHardDelayC, 4
MAIN_s32ResHardDelayC:
	.word	58
	.global	MAIN_s32CurHardDelayC
.section .rodata.Calib_32.MAIN_s32CurHardDelayC,"a",@progbits
	.align 2
	.type	MAIN_s32CurHardDelayC, @object
	.size	MAIN_s32CurHardDelayC, 4
MAIN_s32CurHardDelayC:
	.word	54
	.global	MAIN_ku32ProgFlowSeq01Step03C
.section .rodata.Calib_32.MAIN_ku32ProgFlowSeq01Step03C,"a",@progbits
	.align 2
	.type	MAIN_ku32ProgFlowSeq01Step03C, @object
	.size	MAIN_ku32ProgFlowSeq01Step03C, 4
MAIN_ku32ProgFlowSeq01Step03C:
	.word	858993459
	.global	MAIN_ku32ProgFlowSeq01Step02C
.section .rodata.Calib_32.MAIN_ku32ProgFlowSeq01Step02C,"a",@progbits
	.align 2
	.type	MAIN_ku32ProgFlowSeq01Step02C, @object
	.size	MAIN_ku32ProgFlowSeq01Step02C, 4
MAIN_ku32ProgFlowSeq01Step02C:
	.word	572662306
	.global	MAIN_ku32ProgFlowSeq01Step01C
.section .rodata.Calib_32.MAIN_ku32ProgFlowSeq01Step01C,"a",@progbits
	.align 2
	.type	MAIN_ku32ProgFlowSeq01Step01C, @object
	.size	MAIN_ku32ProgFlowSeq01Step01C, 4
MAIN_ku32ProgFlowSeq01Step01C:
	.word	286331153
	.global	MAIN_u32VSICntCkreqVSIStartedC
.section .rodata.Calib_32.MAIN_u32VSICntCkreqVSIStartedC,"a",@progbits
	.align 2
	.type	MAIN_u32VSICntCkreqVSIStartedC, @object
	.size	MAIN_u32VSICntCkreqVSIStartedC, 4
MAIN_u32VSICntCkreqVSIStartedC:
	.word	100
	.global	MAIN_u32VSICntCkreqESMStartedC
.section .rodata.Calib_32.MAIN_u32VSICntCkreqESMStartedC,"a",@progbits
	.align 2
	.type	MAIN_u32VSICntCkreqESMStartedC, @object
	.size	MAIN_u32VSICntCkreqESMStartedC, 4
MAIN_u32VSICntCkreqESMStartedC:
	.word	4900
	.global	MAIN_f32UvwOvCurrThdC
.section .rodata.Calib_32.MAIN_f32UvwOvCurrThdC,"a",@progbits
	.align 2
	.type	MAIN_f32UvwOvCurrThdC, @object
	.size	MAIN_f32UvwOvCurrThdC, 4
MAIN_f32UvwOvCurrThdC:
	.word	1148846080
	.global	MAIN_u16OverBhvThdC
.section .rodata.Calib_16.MAIN_u16OverBhvThdC,"a",@progbits
	.align 1
	.type	MAIN_u16OverBhvThdC, @object
	.size	MAIN_u16OverBhvThdC, 2
MAIN_u16OverBhvThdC:
	.short	3200
	.global	MAIN_ku16SpdReadyEstConfirmC
.section .rodata.Calib_16.MAIN_ku16SpdReadyEstConfirmC,"a",@progbits
	.align 1
	.type	MAIN_ku16SpdReadyEstConfirmC, @object
	.size	MAIN_ku16SpdReadyEstConfirmC, 2
MAIN_ku16SpdReadyEstConfirmC:
	.short	2000
	.global	MAIN_u8TcuCapPreDrvTypeC
.section .rodata.Calib_8.MAIN_u8TcuCapPreDrvTypeC,"a",@progbits
	.type	MAIN_u8TcuCapPreDrvTypeC, @object
	.size	MAIN_u8TcuCapPreDrvTypeC, 1
MAIN_u8TcuCapPreDrvTypeC:
	.byte	1
	.global	MAIN_u8IgbtFltConfirmCntC
.section .rodata.Calib_8.MAIN_u8IgbtFltConfirmCntC,"a",@progbits
	.type	MAIN_u8IgbtFltConfirmCntC, @object
	.size	MAIN_u8IgbtFltConfirmCntC, 1
MAIN_u8IgbtFltConfirmCntC:
	.byte	2
	.global	MAIN_MSGu8PwModFiltCntC
.section .rodata.Calib_8.MAIN_MSGu8PwModFiltCntC,"a",@progbits
	.type	MAIN_MSGu8PwModFiltCntC, @object
	.size	MAIN_MSGu8PwModFiltCntC, 1
MAIN_MSGu8PwModFiltCntC:
	.byte	10
	.global	MAIN_MSGbIsulationTxOnC
.section .rodata.Calib_bool.MAIN_MSGbIsulationTxOnC,"a",@progbits
	.type	MAIN_MSGbIsulationTxOnC, @object
	.size	MAIN_MSGbIsulationTxOnC, 1
MAIN_MSGbIsulationTxOnC:
	.byte	1
	.global	MAIN_VSIBenchOnWriteDataC
.section .rodata.Calib_bool.MAIN_VSIBenchOnWriteDataC,"a",@progbits
	.type	MAIN_VSIBenchOnWriteDataC, @object
	.size	MAIN_VSIBenchOnWriteDataC, 1
MAIN_VSIBenchOnWriteDataC:
	.zero	1
	.global	MAIN_MSGRxBenchOnC
.section .rodata.Calib_bool.MAIN_MSGRxBenchOnC,"a",@progbits
	.type	MAIN_MSGRxBenchOnC, @object
	.size	MAIN_MSGRxBenchOnC, 1
MAIN_MSGRxBenchOnC:
	.zero	1
	.global	MAIN_HARDBenchOnC
.section .rodata.Calib_bool.MAIN_HARDBenchOnC,"a",@progbits
	.type	MAIN_HARDBenchOnC, @object
	.size	MAIN_HARDBenchOnC, 1
MAIN_HARDBenchOnC:
	.zero	1
	.global	MAIN_bComRxDisableFlgByUds
.section .rodata.Calib_bool.MAIN_bComRxDisableFlgByUds,"a",@progbits
	.type	MAIN_bComRxDisableFlgByUds, @object
	.size	MAIN_bComRxDisableFlgByUds, 1
MAIN_bComRxDisableFlgByUds:
	.zero	1
	.global	MAIN_bMSGRxToutBenchOnC
.section .rodata.Calib_bool.MAIN_bMSGRxToutBenchOnC,"a",@progbits
	.type	MAIN_bMSGRxToutBenchOnC, @object
	.size	MAIN_bMSGRxToutBenchOnC, 1
MAIN_bMSGRxToutBenchOnC:
	.zero	1
	.global	MAIN_kau8INVTAppVersion
.section .rodata.a1.MAIN_kau8INVTAppVersion,"a",@progbits
	.type	MAIN_kau8INVTAppVersion, @object
	.size	MAIN_kau8INVTAppVersion, 64
MAIN_kau8INVTAppVersion:
	.string	"IFL500_ZZQC600V_APP_MCU_TC387_A_10102"
	.zero	26
	.global	MAIN_kau8BASEAppVersion
.section .rodata.a1.MAIN_kau8BASEAppVersion,"a",@progbits
	.type	MAIN_kau8BASEAppVersion, @object
	.size	MAIN_kau8BASEAppVersion, 64
MAIN_kau8BASEAppVersion:
	.string	"TE5X_BASE_MCU_TC387:APP_V_XXXXX;BSW_R_10013"
	.zero	20
.section .text,"ax",@progbits
.Letext0:
	.file 1 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 2 "main\\McuMain\\MAIN_DEF.c"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x1964
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"main\\McuMain\\MAIN_DEF.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x1
	.byte	0x51
	.uaword	0x1b6
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
	.byte	0x1
	.byte	0x5b
	.uaword	0x1e2
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"sint32"
	.byte	0x1
	.byte	0x60
	.uaword	0x206
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
	.byte	0x1
	.byte	0x6a
	.uaword	0x22c
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
	.byte	0x1
	.byte	0x75
	.uaword	0x265
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
	.byte	0x1
	.byte	0x80
	.uaword	0x1b6
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x4
	.string	"MAIN_bAscFlag"
	.byte	0x2
	.byte	0x57
	.uaword	0x278
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_bAscFlag
	.uleb128 0x4
	.string	"MAIN_bESMStarted"
	.byte	0x2
	.byte	0x59
	.uaword	0x278
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_bESMStarted
	.uleb128 0x4
	.string	"MAIN_bVSIStarted"
	.byte	0x2
	.byte	0x61
	.uaword	0x278
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_bVSIStarted
	.uleb128 0x4
	.string	"MAIN_bComDisableFlg"
	.byte	0x2
	.byte	0x65
	.uaword	0x278
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_bComDisableFlg
	.uleb128 0x4
	.string	"MAIN_u16Core0Cnt1"
	.byte	0x2
	.byte	0x83
	.uaword	0x1d4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_u16Core0Cnt1
	.uleb128 0x4
	.string	"MAIN_u16Core0Cnt2"
	.byte	0x2
	.byte	0x84
	.uaword	0x1d4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_u16Core0Cnt2
	.uleb128 0x4
	.string	"MAIN_u16Core0Cnt5"
	.byte	0x2
	.byte	0x85
	.uaword	0x1d4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_u16Core0Cnt5
	.uleb128 0x4
	.string	"MAIN_u16Core0Cnt10"
	.byte	0x2
	.byte	0x86
	.uaword	0x1d4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_u16Core0Cnt10
	.uleb128 0x4
	.string	"MAIN_u16Core0Cnt100"
	.byte	0x2
	.byte	0x87
	.uaword	0x1d4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_u16Core0Cnt100
	.uleb128 0x4
	.string	"MAIN_u16Core0Cnt200"
	.byte	0x2
	.byte	0x88
	.uaword	0x1d4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_u16Core0Cnt200
	.uleb128 0x4
	.string	"MAIN_u16PWMPeriodVal"
	.byte	0x2
	.byte	0x90
	.uaword	0x1d4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_u16PWMPeriodVal
	.uleb128 0x5
	.uaword	0x1f8
	.uaword	0x41c
	.uleb128 0x6
	.uaword	0x41c
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x4
	.string	"MAIN_as32OCTrimNvm"
	.byte	0x2
	.byte	0xcd
	.uaword	0x449
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_as32OCTrimNvm
	.uleb128 0x7
	.uaword	0x40c
	.uleb128 0x4
	.string	"Core0_u32ModReqStartTime"
	.byte	0x2
	.byte	0x9e
	.uaword	0x21e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Core0_u32ModReqStartTime
	.uleb128 0x4
	.string	"Core0_u32ModReqStopTime"
	.byte	0x2
	.byte	0x9f
	.uaword	0x21e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Core0_u32ModReqStopTime
	.uleb128 0x4
	.string	"Core0_u32ModReqTotalTime"
	.byte	0x2
	.byte	0xa0
	.uaword	0x21e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Core0_u32ModReqTotalTime
	.uleb128 0x4
	.string	"Core0_Asw100msStartTime"
	.byte	0x2
	.byte	0xa1
	.uaword	0x21e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Core0_Asw100msStartTime
	.uleb128 0x4
	.string	"Core0_Asw100msStopTime"
	.byte	0x2
	.byte	0xa2
	.uaword	0x21e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Core0_Asw100msStopTime
	.uleb128 0x4
	.string	"Core0_Asw100msTotalTime"
	.byte	0x2
	.byte	0xa3
	.uaword	0x21e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Core0_Asw100msTotalTime
	.uleb128 0x4
	.string	"Core0_Asw10msStartTime"
	.byte	0x2
	.byte	0xa4
	.uaword	0x21e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Core0_Asw10msStartTime
	.uleb128 0x4
	.string	"Core0_Asw10msStopTime"
	.byte	0x2
	.byte	0xa5
	.uaword	0x21e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Core0_Asw10msStopTime
	.uleb128 0x4
	.string	"Core0_Asw10msTotalTime"
	.byte	0x2
	.byte	0xa6
	.uaword	0x21e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Core0_Asw10msTotalTime
	.uleb128 0x4
	.string	"Core0_Bsw100msStartTime"
	.byte	0x2
	.byte	0xa7
	.uaword	0x21e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Core0_Bsw100msStartTime
	.uleb128 0x4
	.string	"Core0_Bsw100msStopTime"
	.byte	0x2
	.byte	0xa8
	.uaword	0x21e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Core0_Bsw100msStopTime
	.uleb128 0x4
	.string	"Core0_Bsw100msTotalTime"
	.byte	0x2
	.byte	0xa9
	.uaword	0x21e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Core0_Bsw100msTotalTime
	.uleb128 0x4
	.string	"Core0_Bsw10msStartTime"
	.byte	0x2
	.byte	0xaa
	.uaword	0x21e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Core0_Bsw10msStartTime
	.uleb128 0x4
	.string	"Core0_Bsw10msStopTime"
	.byte	0x2
	.byte	0xab
	.uaword	0x21e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Core0_Bsw10msStopTime
	.uleb128 0x4
	.string	"Core0_Bsw10msTotalTime"
	.byte	0x2
	.byte	0xac
	.uaword	0x21e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Core0_Bsw10msTotalTime
	.uleb128 0x4
	.string	"Core0_Bsw1msStartTime"
	.byte	0x2
	.byte	0xad
	.uaword	0x21e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Core0_Bsw1msStartTime
	.uleb128 0x4
	.string	"Core0_Bsw1msStopTime"
	.byte	0x2
	.byte	0xae
	.uaword	0x21e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Core0_Bsw1msStopTime
	.uleb128 0x4
	.string	"Core0_Bsw1msTotalTime"
	.byte	0x2
	.byte	0xaf
	.uaword	0x21e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Core0_Bsw1msTotalTime
	.uleb128 0x4
	.string	"Core0_Bsw50msStartTime"
	.byte	0x2
	.byte	0xb0
	.uaword	0x21e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Core0_Bsw50msStartTime
	.uleb128 0x4
	.string	"Core0_Bsw50msStopTime"
	.byte	0x2
	.byte	0xb1
	.uaword	0x21e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Core0_Bsw50msStopTime
	.uleb128 0x4
	.string	"Core0_Bsw50msTotalTime"
	.byte	0x2
	.byte	0xb2
	.uaword	0x21e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Core0_Bsw50msTotalTime
	.uleb128 0x4
	.string	"MAIN_startTime"
	.byte	0x2
	.byte	0xb3
	.uaword	0x21e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_startTime
	.uleb128 0x4
	.string	"MAIN_EndTime"
	.byte	0x2
	.byte	0xb4
	.uaword	0x21e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_EndTime
	.uleb128 0x4
	.string	"MAIN_TotalTime"
	.byte	0x2
	.byte	0xb5
	.uaword	0x21e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_TotalTime
	.uleb128 0x4
	.string	"Core1_Asw10msStartTime"
	.byte	0x2
	.byte	0xb6
	.uaword	0x21e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Core1_Asw10msStartTime
	.uleb128 0x4
	.string	"Core1_Asw10msStopTime"
	.byte	0x2
	.byte	0xb7
	.uaword	0x21e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Core1_Asw10msStopTime
	.uleb128 0x4
	.string	"Core1_Asw10msTotalTime"
	.byte	0x2
	.byte	0xb8
	.uaword	0x21e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Core1_Asw10msTotalTime
	.uleb128 0x4
	.string	"Core1_Asw1msStartTime"
	.byte	0x2
	.byte	0xb9
	.uaword	0x21e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Core1_Asw1msStartTime
	.uleb128 0x4
	.string	"Core1_Asw1msStopTime"
	.byte	0x2
	.byte	0xba
	.uaword	0x21e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Core1_Asw1msStopTime
	.uleb128 0x4
	.string	"Core1_Asw1msTotalTime"
	.byte	0x2
	.byte	0xbb
	.uaword	0x21e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Core1_Asw1msTotalTime
	.uleb128 0x4
	.string	"Core1_Bsw10msStartTime"
	.byte	0x2
	.byte	0xbc
	.uaword	0x21e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Core1_Bsw10msStartTime
	.uleb128 0x4
	.string	"Core1_Bsw10msStopTime"
	.byte	0x2
	.byte	0xbd
	.uaword	0x21e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Core1_Bsw10msStopTime
	.uleb128 0x4
	.string	"Core1_Bsw10msTotalTime"
	.byte	0x2
	.byte	0xbe
	.uaword	0x21e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Core1_Bsw10msTotalTime
	.uleb128 0x4
	.string	"Core1_PositionStartTime"
	.byte	0x2
	.byte	0xbf
	.uaword	0x21e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Core1_PositionStartTime
	.uleb128 0x4
	.string	"Core1_PositionStopTime"
	.byte	0x2
	.byte	0xc0
	.uaword	0x21e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Core1_PositionStopTime
	.uleb128 0x4
	.string	"Core1_PositionTotalTime"
	.byte	0x2
	.byte	0xc1
	.uaword	0x21e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Core1_PositionTotalTime
	.uleb128 0x4
	.string	"Core2_Asw10msStartTime"
	.byte	0x2
	.byte	0xc2
	.uaword	0x21e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Core2_Asw10msStartTime
	.uleb128 0x4
	.string	"Core2_Asw10msStopTime"
	.byte	0x2
	.byte	0xc3
	.uaword	0x21e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Core2_Asw10msStopTime
	.uleb128 0x4
	.string	"Core2_Asw10msTotalTime"
	.byte	0x2
	.byte	0xc4
	.uaword	0x21e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Core2_Asw10msTotalTime
	.uleb128 0x4
	.string	"Core2_Asw1msStartTime"
	.byte	0x2
	.byte	0xc5
	.uaword	0x21e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Core2_Asw1msStartTime
	.uleb128 0x4
	.string	"Core2_Asw1msStopTime"
	.byte	0x2
	.byte	0xc6
	.uaword	0x21e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Core2_Asw1msStopTime
	.uleb128 0x4
	.string	"Core2_Asw1msTotalTime"
	.byte	0x2
	.byte	0xc7
	.uaword	0x21e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Core2_Asw1msTotalTime
	.uleb128 0x4
	.string	"Core2_Bsw10msStartTime"
	.byte	0x2
	.byte	0xc8
	.uaword	0x21e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Core2_Bsw10msStartTime
	.uleb128 0x4
	.string	"Core2_Bsw10msStopTime"
	.byte	0x2
	.byte	0xc9
	.uaword	0x21e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Core2_Bsw10msStopTime
	.uleb128 0x4
	.string	"Core2_Bsw10msTotalTime"
	.byte	0x2
	.byte	0xca
	.uaword	0x21e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Core2_Bsw10msTotalTime
	.uleb128 0x4
	.string	"MAIN_bMSGRxToutBenchOnC"
	.byte	0x2
	.byte	0x2a
	.uaword	0xad3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_bMSGRxToutBenchOnC
	.uleb128 0x8
	.uaword	0x278
	.uleb128 0x4
	.string	"MAIN_bComRxDisableFlgByUds"
	.byte	0x2
	.byte	0x2b
	.uaword	0xad3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_bComRxDisableFlgByUds
	.uleb128 0x4
	.string	"MAIN_HARDBenchOnC"
	.byte	0x2
	.byte	0x2c
	.uaword	0xad3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_HARDBenchOnC
	.uleb128 0x4
	.string	"MAIN_MSGRxBenchOnC"
	.byte	0x2
	.byte	0x2d
	.uaword	0xad3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_MSGRxBenchOnC
	.uleb128 0x4
	.string	"MAIN_VSIBenchOnWriteDataC"
	.byte	0x2
	.byte	0x2e
	.uaword	0xad3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_VSIBenchOnWriteDataC
	.uleb128 0x4
	.string	"MAIN_MSGbIsulationTxOnC"
	.byte	0x2
	.byte	0x2f
	.uaword	0xad3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_MSGbIsulationTxOnC
	.uleb128 0x4
	.string	"MAIN_f32UvwOvCurrThdC"
	.byte	0x2
	.byte	0x44
	.uaword	0xbb4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_f32UvwOvCurrThdC
	.uleb128 0x8
	.uaword	0x256
	.uleb128 0x4
	.string	"MAIN_u32VSICntCkreqESMStartedC"
	.byte	0x2
	.byte	0x45
	.uaword	0xbe6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_u32VSICntCkreqESMStartedC
	.uleb128 0x8
	.uaword	0x21e
	.uleb128 0x4
	.string	"MAIN_u32VSICntCkreqVSIStartedC"
	.byte	0x2
	.byte	0x46
	.uaword	0xbe6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_u32VSICntCkreqVSIStartedC
	.uleb128 0x4
	.string	"MAIN_ku32ProgFlowSeq01Step01C"
	.byte	0x2
	.byte	0x47
	.uaword	0xbe6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_ku32ProgFlowSeq01Step01C
	.uleb128 0x4
	.string	"MAIN_ku32ProgFlowSeq01Step02C"
	.byte	0x2
	.byte	0x48
	.uaword	0xbe6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_ku32ProgFlowSeq01Step02C
	.uleb128 0x4
	.string	"MAIN_ku32ProgFlowSeq01Step03C"
	.byte	0x2
	.byte	0x49
	.uaword	0xbe6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_ku32ProgFlowSeq01Step03C
	.uleb128 0x4
	.string	"MAIN_s32CurHardDelayC"
	.byte	0x2
	.byte	0x4a
	.uaword	0xcc0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_s32CurHardDelayC
	.uleb128 0x8
	.uaword	0x1f8
	.uleb128 0x4
	.string	"MAIN_s32ResHardDelayC"
	.byte	0x2
	.byte	0x4b
	.uaword	0xcc0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_s32ResHardDelayC
	.uleb128 0x4
	.string	"MAIN_s32SampleDelayC"
	.byte	0x2
	.byte	0x4c
	.uaword	0xcc0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_s32SampleDelayC
	.uleb128 0x4
	.string	"MAIN_f32PowerdownVoltC"
	.byte	0x2
	.byte	0x4d
	.uaword	0xbb4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_f32PowerdownVoltC
	.uleb128 0x4
	.string	"MAIN_MSGu8PwModFiltCntC"
	.byte	0x2
	.byte	0x35
	.uaword	0xd57
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_MSGu8PwModFiltCntC
	.uleb128 0x8
	.uaword	0x1a9
	.uleb128 0x4
	.string	"MAIN_u8IgbtFltConfirmCntC"
	.byte	0x2
	.byte	0x36
	.uaword	0xd57
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_u8IgbtFltConfirmCntC
	.uleb128 0x4
	.string	"MAIN_ku16SpdReadyEstConfirmC"
	.byte	0x2
	.byte	0x3d
	.uaword	0xdaf
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_ku16SpdReadyEstConfirmC
	.uleb128 0x8
	.uaword	0x1d4
	.uleb128 0x4
	.string	"MAIN_u16OverBhvThdC"
	.byte	0x2
	.byte	0x3e
	.uaword	0xdaf
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_u16OverBhvThdC
	.uleb128 0x4
	.string	"MAIN_bAkdAfterAscReq"
	.byte	0x2
	.byte	0x56
	.uaword	0x278
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_bAkdAfterAscReq
	.uleb128 0x4
	.string	"MAIN_bBswReadySts"
	.byte	0x2
	.byte	0x58
	.uaword	0x278
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_bBswReadySts
	.uleb128 0x4
	.string	"MAIN_bResExcFltDetEna"
	.byte	0x2
	.byte	0x5a
	.uaword	0x278
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_bResExcFltDetEna
	.uleb128 0x4
	.string	"MAIN_bSoftOvBhvFlg"
	.byte	0x2
	.byte	0x5b
	.uaword	0x278
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_bSoftOvBhvFlg
	.uleb128 0x4
	.string	"MAIN_bSoftOvCurrPhsUFlg"
	.byte	0x2
	.byte	0x5c
	.uaword	0x278
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_bSoftOvCurrPhsUFlg
	.uleb128 0x4
	.string	"MAIN_bSoftOvCurrPhsVFlg"
	.byte	0x2
	.byte	0x5d
	.uaword	0x278
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_bSoftOvCurrPhsVFlg
	.uleb128 0x4
	.string	"MAIN_bSoftOvCurrPhsWFlg"
	.byte	0x2
	.byte	0x5e
	.uaword	0x278
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_bSoftOvCurrPhsWFlg
	.uleb128 0x4
	.string	"MAIN_bSpdReadyEst"
	.byte	0x2
	.byte	0x5f
	.uaword	0xef0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_bSpdReadyEst
	.uleb128 0x7
	.uaword	0x278
	.uleb128 0x4
	.string	"MAIN_bSpeedReadyFlg"
	.byte	0x2
	.byte	0x60
	.uaword	0x278
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_bSpeedReadyFlg
	.uleb128 0x4
	.string	"MAIN_bProgConditionOk"
	.byte	0x2
	.byte	0x62
	.uaword	0x278
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_bProgConditionOk
	.uleb128 0x4
	.string	"MAIN_bCurGainStoreResult"
	.byte	0x2
	.byte	0x64
	.uaword	0x278
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_bCurGainStoreResult
	.uleb128 0x4
	.string	"MAIN_bDflashWriteReq"
	.byte	0x2
	.byte	0x63
	.uaword	0x278
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_bDflashWriteReq
	.uleb128 0x4
	.string	"MAIN_f32ElecSpeedRds"
	.byte	0x2
	.byte	0x66
	.uaword	0xfa8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_f32ElecSpeedRds
	.uleb128 0x7
	.uaword	0x256
	.uleb128 0x4
	.string	"MAIN_f32EmailElecSpeedRds"
	.byte	0x2
	.byte	0x67
	.uaword	0xfa8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_f32EmailElecSpeedRds
	.uleb128 0x4
	.string	"MAIN_f32EmailErrThetaRdSurPi"
	.byte	0x2
	.byte	0x68
	.uaword	0xfa8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_f32EmailErrThetaRdSurPi
	.uleb128 0x4
	.string	"MAIN_f32EmailMecaSpeedRds"
	.byte	0x2
	.byte	0x69
	.uaword	0xfa8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_f32EmailMecaSpeedRds
	.uleb128 0x4
	.string	"MAIN_f32EmailMecaSpeedRpm"
	.byte	0x2
	.byte	0x6a
	.uaword	0xfa8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_f32EmailMecaSpeedRpm
	.uleb128 0x4
	.string	"MAIN_f32EmailThetaElecRdSurPi"
	.byte	0x2
	.byte	0x6b
	.uaword	0xfa8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_f32EmailThetaElecRdSurPi
	.uleb128 0x4
	.string	"MAIN_f32ErrThetaRdSurPi"
	.byte	0x2
	.byte	0x6c
	.uaword	0xfa8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_f32ErrThetaRdSurPi
	.uleb128 0x4
	.string	"MAIN_f32IuFrequency"
	.byte	0x2
	.byte	0x6d
	.uaword	0x256
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_f32IuFrequency
	.uleb128 0x4
	.string	"MAIN_f32IuPeriod"
	.byte	0x2
	.byte	0x6e
	.uaword	0x256
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_f32IuPeriod
	.uleb128 0x4
	.string	"MAIN_f32MecaSpeedRds"
	.byte	0x2
	.byte	0x6f
	.uaword	0xfa8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_f32MecaSpeedRds
	.uleb128 0x4
	.string	"MAIN_f32MecaSpeedRpm"
	.byte	0x2
	.byte	0x70
	.uaword	0xfa8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_f32MecaSpeedRpm
	.uleb128 0x4
	.string	"MAIN_f32MotSpdEst"
	.byte	0x2
	.byte	0x71
	.uaword	0xfa8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_f32MotSpdEst
	.uleb128 0x4
	.string	"MAIN_f32PWMDutyUPhys"
	.byte	0x2
	.byte	0x72
	.uaword	0x256
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_f32PWMDutyUPhys
	.uleb128 0x4
	.string	"MAIN_f32PWMDutyVPhys"
	.byte	0x2
	.byte	0x73
	.uaword	0x256
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_f32PWMDutyVPhys
	.uleb128 0x4
	.string	"MAIN_f32PWMDutyWPhys"
	.byte	0x2
	.byte	0x74
	.uaword	0x256
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_f32PWMDutyWPhys
	.uleb128 0x4
	.string	"MAIN_f32ThetaElecRdSurPi"
	.byte	0x2
	.byte	0x75
	.uaword	0xfa8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_f32ThetaElecRdSurPi
	.uleb128 0x4
	.string	"MAIN_f32VsiPwmPeriod"
	.byte	0x2
	.byte	0x76
	.uaword	0xfa8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_f32VsiPwmPeriod
	.uleb128 0x4
	.string	"MAIN_u32EmailCkreq"
	.byte	0x2
	.byte	0x77
	.uaword	0x21e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_u32EmailCkreq
	.uleb128 0x4
	.string	"MAIN_u32EmailPosATimeStamp"
	.byte	0x2
	.byte	0x78
	.uaword	0x1246
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_u32EmailPosATimeStamp
	.uleb128 0x7
	.uaword	0x21e
	.uleb128 0x4
	.string	"MAIN_u32IuCycleTim"
	.byte	0x2
	.byte	0x79
	.uaword	0x21e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_u32IuCycleTim
	.uleb128 0x4
	.string	"MAIN_u32PosATimeStamp"
	.byte	0x2
	.byte	0x7a
	.uaword	0x1246
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_u32PosATimeStamp
	.uleb128 0x4
	.string	"MAIN_u32PosBTimeStamp"
	.byte	0x2
	.byte	0x7b
	.uaword	0x1246
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_u32PosBTimeStamp
	.uleb128 0x4
	.string	"MAIN_u32PosTreatCkreq"
	.byte	0x2
	.byte	0x7c
	.uaword	0x21e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_u32PosTreatCkreq
	.uleb128 0x4
	.string	"MAIN_u32TestVar2"
	.byte	0x2
	.byte	0x7d
	.uaword	0x21e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_u32TestVar2
	.uleb128 0x4
	.string	"MAIN_u32WaitValueVSITreatment"
	.byte	0x2
	.byte	0x7e
	.uaword	0x21e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_u32WaitValueVSITreatment
	.uleb128 0x5
	.uaword	0x1a9
	.uaword	0x1333
	.uleb128 0x6
	.uaword	0x41c
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.string	"MAIN_u8DEV_Fault"
	.byte	0x2
	.byte	0xcc
	.uaword	0x1323
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_u8DEV_Fault
	.uleb128 0x4
	.string	"MAIN_MSGu8bcm_pepsPwrMode"
	.byte	0x2
	.byte	0x7f
	.uaword	0x1a9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_MSGu8bcm_pepsPwrMode
	.uleb128 0x4
	.string	"MAIN_u8TestVar1"
	.byte	0x2
	.byte	0x80
	.uaword	0x1a9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_u8TestVar1
	.uleb128 0x4
	.string	"MAIN_u8IgbtHighFltCnt"
	.byte	0x2
	.byte	0x81
	.uaword	0x13bc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_u8IgbtHighFltCnt
	.uleb128 0x7
	.uaword	0x1a9
	.uleb128 0x4
	.string	"MAIN_u8IgbtLowFltCnt"
	.byte	0x2
	.byte	0x82
	.uaword	0x13bc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_u8IgbtLowFltCnt
	.uleb128 0x4
	.string	"MAIN_u16IuCycleCnt"
	.byte	0x2
	.byte	0x89
	.uaword	0x1d4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_u16IuCycleCnt
	.uleb128 0x4
	.string	"MAIN_u16IuMiddleCnt"
	.byte	0x2
	.byte	0x8a
	.uaword	0x1d4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_u16IuMiddleCnt
	.uleb128 0x4
	.string	"MAIN_u16IuMiddleSum"
	.byte	0x2
	.byte	0x8b
	.uaword	0x1d4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_u16IuMiddleSum
	.uleb128 0x4
	.string	"MAIN_u16IuNegtiveCnt"
	.byte	0x2
	.byte	0x8c
	.uaword	0x1d4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_u16IuNegtiveCnt
	.uleb128 0x4
	.string	"MAIN_u16IuNegtiveSum"
	.byte	0x2
	.byte	0x8d
	.uaword	0x1d4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_u16IuNegtiveSum
	.uleb128 0x4
	.string	"MAIN_u16IuPositiveCnt"
	.byte	0x2
	.byte	0x8e
	.uaword	0x1d4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_u16IuPositiveCnt
	.uleb128 0x4
	.string	"MAIN_u16IuPositiveSum"
	.byte	0x2
	.byte	0x8f
	.uaword	0x1d4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_u16IuPositiveSum
	.uleb128 0x4
	.string	"MAIN_u16SpdReadyEstCnt"
	.byte	0x2
	.byte	0x91
	.uaword	0x1d4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_u16SpdReadyEstCnt
	.uleb128 0x4
	.string	"MAIN_u16VadcBhv"
	.byte	0x2
	.byte	0x92
	.uaword	0x1d4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_u16VadcBhv
	.uleb128 0x4
	.string	"MAIN_u16HVInputCheck"
	.byte	0x2
	.byte	0x94
	.uaword	0x1d4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_u16HVInputCheck
	.uleb128 0x4
	.string	"MAIN_u16SuperStructureCheck"
	.byte	0x2
	.byte	0x95
	.uaword	0x1d4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_u16SuperStructureCheck
	.uleb128 0x4
	.string	"MAIN_u16DCACResevedCheck"
	.byte	0x2
	.byte	0x96
	.uaword	0x1d4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_u16DCACResevedCheck
	.uleb128 0x4
	.string	"MAIN_u16DCACInverterCheck"
	.byte	0x2
	.byte	0x97
	.uaword	0x1d4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_u16DCACInverterCheck
	.uleb128 0x4
	.string	"MAIN_u16AirConditionerCheck"
	.byte	0x2
	.byte	0x98
	.uaword	0x1d4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_u16AirConditionerCheck
	.uleb128 0x4
	.string	"MAIN_u16HVFanCheck"
	.byte	0x2
	.byte	0x99
	.uaword	0x1d4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_u16HVFanCheck
	.uleb128 0x4
	.string	"MAIN_u16WaterCoolingCheck"
	.byte	0x2
	.byte	0x9a
	.uaword	0x1d4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_u16WaterCoolingCheck
	.uleb128 0x4
	.string	"MAIN_u16BatHeatPTCCheck"
	.byte	0x2
	.byte	0x9b
	.uaword	0x1d4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_u16BatHeatPTCCheck
	.uleb128 0x4
	.string	"OBD_u32CalVerifyNum"
	.byte	0x2
	.byte	0x9d
	.uaword	0x21e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	OBD_u32CalVerifyNum
	.uleb128 0x4
	.string	"MAIN_s32Email2PosTreqDiff"
	.byte	0x2
	.byte	0xce
	.uaword	0x1f8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_s32Email2PosTreqDiff
	.uleb128 0x4
	.string	"MAIN_s32PosA2BDeltTime"
	.byte	0x2
	.byte	0xcf
	.uaword	0x1f8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_s32PosA2BDeltTime
	.uleb128 0x4
	.string	"MAIN_MSGu8PwModOnCnt"
	.byte	0x2
	.byte	0xd0
	.uaword	0x1a9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_MSGu8PwModOnCnt
	.uleb128 0x4
	.string	"MAIN_MSGu8PwModOffCnt"
	.byte	0x2
	.byte	0xd1
	.uaword	0x1a9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_MSGu8PwModOffCnt
	.uleb128 0x4
	.string	"UDS_au8CalibSoftId"
	.byte	0x2
	.byte	0xd2
	.uaword	0x1323
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	UDS_au8CalibSoftId
	.uleb128 0x5
	.uaword	0x1a9
	.uaword	0x1736
	.uleb128 0x6
	.uaword	0x41c
	.byte	0xc
	.byte	0
	.uleb128 0x4
	.string	"MAIN_u8UdsSwVerVeh"
	.byte	0x2
	.byte	0xd3
	.uaword	0x1726
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_u8UdsSwVerVeh
	.uleb128 0x5
	.uaword	0x1a9
	.uaword	0x1767
	.uleb128 0x6
	.uaword	0x41c
	.byte	0x14
	.byte	0
	.uleb128 0x4
	.string	"MAIN_u8UdsSwVerSup"
	.byte	0x2
	.byte	0xd4
	.uaword	0x1757
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_u8UdsSwVerSup
	.uleb128 0x4
	.string	"MAIN_u8UdsOEMPartNum"
	.byte	0x2
	.byte	0xd5
	.uaword	0x1726
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_u8UdsOEMPartNum
	.uleb128 0x5
	.uaword	0x1a9
	.uaword	0x17bb
	.uleb128 0x6
	.uaword	0x41c
	.byte	0xb
	.byte	0
	.uleb128 0x4
	.string	"MAIN_u8UdsManufPartNum"
	.byte	0x2
	.byte	0xd6
	.uaword	0x17ab
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_u8UdsManufPartNum
	.uleb128 0x5
	.uaword	0x1a9
	.uaword	0x17f0
	.uleb128 0x6
	.uaword	0x41c
	.byte	0x7
	.byte	0
	.uleb128 0x4
	.string	"MAIN_u8UdsSupplHwVersion"
	.byte	0x2
	.byte	0xd7
	.uaword	0x17e0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_u8UdsSupplHwVersion
	.uleb128 0x4
	.string	"MAIN_u8UdsManufHwVersion"
	.byte	0x2
	.byte	0xd8
	.uaword	0x1726
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_u8UdsManufHwVersion
	.uleb128 0x5
	.uaword	0x1a9
	.uaword	0x184e
	.uleb128 0x6
	.uaword	0x41c
	.byte	0x9
	.byte	0
	.uleb128 0x4
	.string	"MAIN_u8UdsSupplyerId"
	.byte	0x2
	.byte	0xd9
	.uaword	0x183e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_u8UdsSupplyerId
	.uleb128 0x4
	.string	"MAIN_u8UdsEcuName"
	.byte	0x2
	.byte	0xda
	.uaword	0x183e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_u8UdsEcuName
	.uleb128 0x4
	.string	"MAIN_u8UdsEcuSerialNum"
	.byte	0x2
	.byte	0xdb
	.uaword	0x17ab
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_u8UdsEcuSerialNum
	.uleb128 0x4
	.string	"MAIN_u8UdsBootVersion"
	.byte	0x2
	.byte	0xdc
	.uaword	0x1323
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_u8UdsBootVersion
	.uleb128 0x5
	.uaword	0x1a9
	.uaword	0x18ea
	.uleb128 0x6
	.uaword	0x41c
	.byte	0x3f
	.byte	0
	.uleb128 0x4
	.string	"MAIN_kau8BASEAppVersion"
	.byte	0x2
	.byte	0x23
	.uaword	0x1910
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_kau8BASEAppVersion
	.uleb128 0x8
	.uaword	0x18da
	.uleb128 0x4
	.string	"MAIN_kau8INVTAppVersion"
	.byte	0x2
	.byte	0x24
	.uaword	0x193b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_kau8INVTAppVersion
	.uleb128 0x8
	.uaword	0x18da
	.uleb128 0x4
	.string	"MAIN_u8TcuCapPreDrvTypeC"
	.byte	0x2
	.byte	0x37
	.uaword	0xd57
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_u8TcuCapPreDrvTypeC
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
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
.section .debug_aranges,"",@progbits
	.uaword	0x14
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
