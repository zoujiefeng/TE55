#ifndef __BLDC_DATA_TYPE_H_
#define __BLDC_DATA_TYPE_H_


/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/
#include "Std_Types.h"

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/
#define BLDC_F32PFB1DUTYPHYS_COLS              ( 8 )
#define BLDC_F32PFB2DUTYPHYS_COLS              ( 8 )
#define BLDC_F32PFB3DUTYPHYS_COLS              ( 8 )
#define BLDC_F32TGTDUTYPHYS_COLS               ( 8 )

/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/
/* Motor Manager variable set */
typedef struct BLDC_tMotorMgrVarSet{
   uint16 BLDC_u16PowerOnDelay;
   uint8 BLDC_u8MotorMgrSts;
}BLDC_tMotorMgrVarSet;

/* DTC Report variable set */
typedef struct BLDC_tDtcRptVarSet{
   uint16  BLDC_u16OilPressureRaw;
   boolean BLDC_bOilPressShortGndFlt;
   boolean BLDC_bOilPressShortVccFlt;
   float32 BLDC_f32BatteryVoltage;
   float32 BLDC_f32BkpVoltage;
}BLDC_tDtcRptVarSet;

/* Hall Detection variable set */
typedef struct BLDC_tHallDetVarSet{
   boolean BLDC_bHallInvalidFlt;
   boolean BLDC_bHallUndefFlt;
   boolean BLDC_bP5vAD2SOverVolFlt;
   boolean BLDC_bP5vAD2SUnderVolFlt;
   float32 BLDC_f32P5vAD2SPhys;
   uint8   BLDC_u8DiagHallStt;
   uint8   BLDC_u8DiagHallSttPre;
   uint16  BLDC_u16P5vAD2SRaw;
}BLDC_tHallDetVarSet;

/* Mid Point Detection variable set */
typedef struct BLDC_tMidPDetVarSet{
   boolean BLDC_bUShortGnd;
   boolean BLDC_bUShortVs;
   boolean BLDC_bVShortGnd;
   boolean BLDC_bVShortVs;
   boolean BLDC_bWShortGnd;
   boolean BLDC_bWShortVs;
   boolean BLDC_bUvwShortGnd;
   boolean BLDC_bUvwShortVs;
   uint8   BLDC_u8PfbDutyCnt;
   uint8   BLDC_u8WrExpOutputLast;
   uint16  BLDC_u16TgtDutyRisingDelay;
   uint16  BLDC_u16ShortRecoveryCnt;
   uint16  BLDC_u16ShortConfirmCnt;
   float32 BLDC_f32TgtDutyPhysSum;
   float32 BLDC_f32Pfb1DutyPhysSum;
   float32 BLDC_f32Pfb2DutyPhysSum;
   float32 BLDC_f32Pfb3DutyPhysSum;
   float32 BLDC_f32PrevTgtDuty;
   float32 BLDC_f32TgtDutyDeltVal;
   float32 BLDC_f32Pfb1DutyPhys[BLDC_F32PFB1DUTYPHYS_COLS];
   float32 BLDC_f32Pfb2DutyPhys[BLDC_F32PFB2DUTYPHYS_COLS];
   float32 BLDC_f32Pfb3DutyPhys[BLDC_F32PFB3DUTYPHYS_COLS];
   float32 BLDC_f32TgtDutyPhys[BLDC_F32TGTDUTYPHYS_COLS];
}BLDC_tMidPDetVarSet;

/* Calib type definition */
typedef struct BLDC_tBoolCalibSet{
   boolean bHallInvalidFltTestOnC;
   boolean bHallUndefFltTestOnC;
   boolean bP5vAD2SOverVolFltTestOnC;
   boolean bP5vAD2SUnderVolFltTestOnC;
   boolean bOilPressShortGndFltTestOnC;
   boolean bOilPressShortVccFltTestOnC;
}BLDC_tBoolCalibSet;

typedef struct BLDC_tUint16CalibSet{
   uint16 u16TgtDutyRisingTimC;
   uint16 u16MidPotRcvTimC;
   uint16 u16MidPotFltConfirmC;
   uint16 u16MidPotFltIncStepC;
}BLDC_tUint16CalibSet;

typedef struct BLDC_tFloatCalibSet{
   float32 f32LVThdHighC;
   float32 f32LVThdLowC;
   float32 f32P5vAD2SOverVolC;
   float32 f32P5vAD2SUnderVolC;
   float32 f32MidPotShrtGndDutyC;
   float32 f32MidPotShrtVccDutyC;
   float32 f32MidPotTgtHighC;
   float32 f32MidPotTgtLowC;
   float32 f32TgtDutyDeltMaxC;
   float32 f32MidPotMaxMonitorDutyC;
   float32 f32MidPotMinMonitorDutyC;
   float32 f32MotorSpeedC;
}BLDC_tFloatCalibSet;

typedef struct BLDC_HalApi{
   /*Hardware*/
   uint16  (*u16ADReadOilPressure)(void);
   uint16  (*u16ADRead12VBattery)(void);
   uint16  (*u16ADRead12VBackup)(void);
   uint16  (*u16ADReadP5VAD2S)(void);
   /* Mcal */
   void    (*vidStartPosSample)(void);
   void    (*vidBusKeyConfig) (float32 f32Percent);
   boolean (*bGetMotPosDuty)(float32 *pf32Duty, uint32 *pu32PeriodT, uint32 *pu32ActiveT);

   /* Software */
   /* Fault Detection */
   void    (*vidSetHallInvalidState)(boolean bStatus);
   void    (*vidSetHallUndefinedState)(boolean bStatus);
   void    (*vidSetHallSupplyLowState)(boolean bStatus);
   void    (*vidSetPhaseShortGndState)(boolean bStatus);
   void    (*vidSetPhaseShortVccState)(boolean bStatus);
   /* Fault Logged */
   uint16  (*u16ReadHallUndefineLogged)(void);
   uint16  (*u16ReadHallSupplyLowLogged)(void);
   /* Bswsrv */
   boolean (*bGetReadyState)(void);
}BLDC_HalApi;

/*******************************************************************************
 ****  Exported Function Declarations
 ******************************************************************************/


#endif /* __BLDC_DATA_TYPE_H_ */
