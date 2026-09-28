# 1 "bswcdd\\PreDriver\\Drv8340\\DRV83xx.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "bswcdd\\PreDriver\\Drv8340\\DRV83xx.c"
# 16 "bswcdd\\PreDriver\\Drv8340\\DRV83xx.c"
# 1 "bswcdd\\PreDriver\\Drv8340\\DRV83xx.h" 1
# 13 "bswcdd\\PreDriver\\Drv8340\\DRV83xx.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h" 1
# 21 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h" 1
# 13 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types_Cfg.h" 1
# 14 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h" 2
# 76 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
typedef signed char sint8;




typedef unsigned char uint8;




typedef signed short sint16;




typedef unsigned short uint16;




typedef signed int sint32;




typedef signed long long sint64;




typedef unsigned int uint32;




typedef unsigned long long uint64;





typedef float float32;


typedef double float64;







typedef unsigned char boolean;






typedef signed long sint8_least;


typedef unsigned long uint8_least;




typedef signed long sint16_least;




typedef unsigned long uint16_least;




typedef signed long sint32_least;




typedef unsigned long uint32_least;
# 22 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h" 2
# 1 ".\\output\\inc/Compiler.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Compiler.h" 1
# 44 ".\\output\\inc/..\\..\\Integration\\mcal\\Compiler.h"
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Compiler_Cfg.h" 1
# 50 ".\\output\\inc/..\\..\\Integration\\mcal\\Compiler_Cfg.h"
# 1 ".\\output\\inc/Os_Compiler_Cfg.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\os\\Os_Compiler_Cfg.h" 1





# 1 ".\\output\\inc/Compiler.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Compiler.h" 1
# 2 ".\\output\\inc/Compiler.h" 2
# 7 ".\\output\\inc/..\\..\\Integration\\os\\Os_Compiler_Cfg.h" 2
# 2 ".\\output\\inc/Os_Compiler_Cfg.h" 2
# 51 ".\\output\\inc/..\\..\\Integration\\mcal\\Compiler_Cfg.h" 2
# 45 ".\\output\\inc/..\\..\\Integration\\mcal\\Compiler.h" 2
# 2 ".\\output\\inc/Compiler.h" 2
# 23 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h" 2
# 72 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
    typedef unsigned char StatusType;
# 96 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
typedef uint8 Std_ReturnType;



typedef struct
{
    uint16 vendorID;
    uint16 moduleID;
    uint8 sw_major_version;
    uint8 sw_minor_version;
    uint8 sw_patch_version;
} Std_VersionInfoType;
# 2 ".\\output\\inc/Std_Types.h" 2
# 14 "bswcdd\\PreDriver\\Drv8340\\DRV83xx.h" 2
# 31 "bswcdd\\PreDriver\\Drv8340\\DRV83xx.h"
enum{
   eSPI_REG_FAULT_STAT = 0x00,
   eSPI_REG_DIAG_STAT_A,
   eSPI_REG_DIAG_STAT_B,
   eSPI_REG_DIAG_STAT_C,
   eSPI_REG_DRV_CTRL_1,
   eSPI_REG_DRV_CTRL_2,
   eSPI_REG_DRV_CTRL_3,
   eSPI_REG_DRV_CTRL_4,
   eSPI_REG_DRV_CTRL_5,
   eSPI_REG_DRV_CTRL_6,
   eSPI_REG_DRV_CTRL_7,
   eSPI_REG_DRV_CTRL_8,
   eSPI_REG_DRV_CTRL_9,
   eSPI_REG_DRV_CTRL_10,
   eSPI_REG_DRV_CTRL_11,
   eSPI_REG_DRV_CTRL_12,
   eSPI_REG_DRV_CTRL_13,
   eSPI_REG_DRV_CTRL_14,
   eSPI_MAX_REG_NUM
};
# 337 "bswcdd\\PreDriver\\Drv8340\\DRV83xx.h"
typedef boolean (*FaultIndicateFuncPtr) (void);

typedef struct DRV83xx_FaultIndicateSet{
   FaultIndicateFuncPtr bGetAllFaultStatus;
   FaultIndicateFuncPtr bGetGateDriverStatus;
   FaultIndicateFuncPtr bGetChargePumpUVStatus;
   FaultIndicateFuncPtr bGetUVLockoutStatus;
   FaultIndicateFuncPtr bGetOverCurStatus;
   FaultIndicateFuncPtr bGetOverTempWarningStatus;
   FaultIndicateFuncPtr bGetOverTempShutdownStatus;
   FaultIndicateFuncPtr bGetOpenLoadOrShortStatus;
   FaultIndicateFuncPtr bGetPhaseAShortGndStatus;
   FaultIndicateFuncPtr bGetPhaseAShortBatStatus;
   FaultIndicateFuncPtr bGetPhaseAOpenLoadStatus;
   FaultIndicateFuncPtr bGetPhaseAGateDriverLowSideStatus;
   FaultIndicateFuncPtr bGetPhaseAGateDriverHighSideStatus;
   FaultIndicateFuncPtr bGetPhaseAVdsOverCurLowSideStatus;
   FaultIndicateFuncPtr bGetPhaseAVdsOverCurHighSideStatus;
   FaultIndicateFuncPtr bGetPhaseBShortGndStatus;
   FaultIndicateFuncPtr bGetPhaseBShortBatStatus;
   FaultIndicateFuncPtr bGetPhaseBOpenLoadStatus;
   FaultIndicateFuncPtr bGetPhaseBGateDriverLowSideStatus;
   FaultIndicateFuncPtr bGetPhaseBGateDriverHighSideStatus;
   FaultIndicateFuncPtr bGetPhaseBVdsOverCurLowSideStatus;
   FaultIndicateFuncPtr bGetPhaseBVdsOverCurHighSideStatus;
   FaultIndicateFuncPtr bGetPhaseCShortGndStatus;
   FaultIndicateFuncPtr bGetPhaseCShortBatStatus;
   FaultIndicateFuncPtr bGetPhaseCOpenLoadStatus;
   FaultIndicateFuncPtr bGetPhaseCGateDriverLowSideStatus;
   FaultIndicateFuncPtr bGetPhaseCGateDriverHighSideStatus;
   FaultIndicateFuncPtr bGetPhaseCVdsOverCurLowSideStatus;
}DRV83xx_FaultIndicateSet;

typedef union FLT_STAT_Obj
{
   uint8 U;
   struct{
      uint8 FSO_OL_SHT : 1;
      uint8 FSO_OTSD : 1;
      uint8 FSO_OTW : 1;
      uint8 FSO_OCP : 1;
      uint8 FSO_UVLO : 1;
      uint8 FSO_CPUV : 1;
      uint8 FSO_GDF : 1;
      uint8 FSO_FAULT : 1;
   }B;
} FLT_STAT_Obj;


typedef union DIAG_STAT_A_Obj
{
   uint8 U;
   struct{
      uint8 DSA_VDS_HA : 1;
      uint8 DSA_VDS_LA : 1;
      uint8 DSA_VGS_HA : 1;
      uint8 DSA_VGS_LA : 1;
      uint8 DSA_OL_PH_A : 1;
      uint8 DSA_SHT_BAT_A : 1;
      uint8 DSA_SA_OC : 1;
      uint8 DSA_FAULT : 1;
   }B;
} DIAG_STAT_A_Obj;


typedef union DIAG_STAT_B_Obj
{
   uint8 U;
   struct{
      uint8 DSB_VDS_HB : 1;
      uint8 DSB_VDS_LB : 1;
      uint8 DSB_VGS_HB : 1;
      uint8 DSB_VGS_LB : 1;
      uint8 DSB_OL_PH_B : 1;
      uint8 DSB_SHT_BAT_B : 1;
      uint8 DSB_SB_OC : 1;
      uint8 DSB_FAULT : 1;
   }B;
} DIAG_STAT_B_Obj;

typedef union DIAG_STAT_C_Obj
{
   uint8 U;
   struct{
      uint8 DSC_VDS_HC : 1;
      uint8 DSC_VDS_LC : 1;
      uint8 DSC_VGS_HC : 1;
      uint8 DSC_VGS_LC : 1;
      uint8 DSC_OL_PH_C : 1;
      uint8 DSC_SHT_BAT_C : 1;
      uint8 DSC_SC_OC : 1;
      uint8 DSC_FAULT : 1;
   }B;
} DIAG_STAT_C_Obj;

typedef union DRV_CTRL_IC1_Obj
{
   uint8 U;
   struct{
      uint8 DCI1_ONE_PWM_BRK : 2;
      uint8 DCI1_ONE_PWM_DIR : 1;
      uint8 DCI1_ONE_PWM_COM : 1;
      uint8 DCI1_PWM_MODE : 3;
      uint8 DCI1_CLR_FLT : 1;
   }B;
} DRV_CTRL_IC1_Obj;

typedef union DRV_CTRL_IC2_Obj
{
   uint8 U;
   struct{
      uint8 DCI2_EN_OLA_A : 1;
      uint8 DCI2_EN_OLA_B : 1;
      uint8 DCI2_EN_OLA_C : 1;
      uint8 DCI2_EN_OLP : 1;
      uint8 DCI2_EN_SHT_TST : 1;
      uint8 DCI2_OLP_SHTS_DLY : 2;
      uint8 DCI2_OTSD_MODE : 1;
   }B;
} DRV_CTRL_IC2_Obj;

typedef union DRV_CTRL_IC3_Obj
{
   uint8 U;
   struct{
      uint8 DCI3_IDRIVEP_HA : 4;
      uint8 DCI3_IDRIVEP_LA : 4;
   }B;
} DRV_CTRL_IC3_Obj;

typedef union DRV_CTRL_IC4_Obj
{
   uint8 U;
   struct{
      uint8 DCI4_IDRIVEP_HB : 4;
      uint8 DCI4_IDRIVEP_LB : 4;
   }B;
} DRV_CTRL_IC4_Obj;

typedef union DRV_CTRL_IC5_Obj
{
   uint8 U;
   struct{
      uint8 DCI5_IDRIVEP_HC : 4;
      uint8 DCI5_IDRIVEP_LC : 4;
   }B;
} DRV_CTRL_IC5_Obj;

typedef union DRV_CTRL_IC6_Obj
{
   uint8 U;
   struct{
      uint8 DCI6_VDS_HA : 4;
      uint8 DCI6_VDS_LA : 4;
   }B;
} DRV_CTRL_IC6_Obj;
typedef union DRV_CTRL_IC7_Obj
{
   uint8 U;
   struct{
      uint8 DCI7_VDS_HB : 4;
      uint8 DCI7_VDS_LB : 4;
   }B;
} DRV_CTRL_IC7_Obj;
typedef union DRV_CTRL_IC8_Obj
{
   uint8 U;
   struct{
      uint8 DCI8_VDS_HC : 4;
      uint8 DCI8_VDS_LC : 4;
   }B;
} DRV_CTRL_IC8_Obj;
typedef union DRV_CTRL_IC9_Obj
{
   uint8 U;
   struct{
      uint8 DCI9_TDRIVE : 2;
      uint8 DCI9_TDRIVE_MAX : 1;
      uint8 DCI9_DEAD_TIME : 2;
      uint8 DCI9_TRETRY : 2;
      uint8 DCI9_COAST : 1;
   }B;
} DRV_CTRL_IC9_Obj;

typedef union DRV_CTRL_IC10_Obj
{
   uint8 U;
   struct{
      uint8 DCI10_OCP_DEG : 3;
      uint8 DCI10_DIS_GDF : 1;
      uint8 DCI10_DIS_CPUV : 1;
      uint8 DCI10_LOCK : 2;
   }B;
} DRV_CTRL_IC10_Obj;

typedef union DRV_CTRL_IC11_Obj
{
   uint8 U;
   struct{
      uint8 DCI11_OCP_MODE : 2;
      uint8 DCI11_DIS_VDS_A : 1;
      uint8 DCI11_DIS_VDS_B : 1;
      uint8 DCI11_DIS_VDS_C : 1;
      uint8 DCI11_CBC : 1;
      uint8 DCI11_OTW_REP : 1;
      uint8 DCI11_RSVD_REG_10 : 1;
   }B;
} DRV_CTRL_IC11_Obj;

typedef union DRV_CTRL_IC12_Obj
{
   uint8 U;
   struct{
      uint8 DCI12_CSA_GAIN_A : 2;
      uint8 DCI12_CSA_GAIN_B : 2;
      uint8 DCI12_CSA_GAIN_C : 2;
      uint8 DCI12_CSA_FET : 1;
      uint8 DCI12_LS_REF : 1;
   }B;
} DRV_CTRL_IC12_Obj;

typedef union DRV_CTRL_IC13_Obj
{
   uint8 U;
   struct{
      uint8 DCI13_SEN_LVL_A : 2;
      uint8 DCI13_SEN_LVL_B : 2;
      uint8 DCI13_SEN_LVL_C : 2;
      uint8 DCI13_VREF_DIV : 1;
      uint8 DCI13_CAL_MODE : 1;
   }B;
} DRV_CTRL_IC13_Obj;

typedef union DRV_CTRL_IC14_Obj
{
   uint8 U;
   struct{
      uint8 DCI14_CSA_CAL_A : 1;
      uint8 DCI14_CSA_CAL_B : 1;
      uint8 DCI14_CSA_CAL_C : 1;
      uint8 DCI14_DIS_SEN_A : 1;
      uint8 DCI14_DIS_SEN_B : 1;
      uint8 DCI14_DIS_SEN_C : 1;
      uint8 DCI14_RSVD_REG_14 : 2;
   }B;
} DRV_CTRL_IC14_Obj;

typedef union REG_MAP_Obj
{
   uint8 U;
   FLT_STAT_Obj FAULT_STAT;
   DIAG_STAT_A_Obj DIAG_STAT_A;
   DIAG_STAT_B_Obj DIAG_STAT_B;
   DIAG_STAT_C_Obj DIAG_STAT_C;
   DRV_CTRL_IC1_Obj DRV_CTRL_IC1;
   DRV_CTRL_IC2_Obj DRV_CTRL_IC2;
   DRV_CTRL_IC3_Obj DRV_CTRL_IC3;
   DRV_CTRL_IC4_Obj DRV_CTRL_IC4;
   DRV_CTRL_IC5_Obj DRV_CTRL_IC5;
   DRV_CTRL_IC6_Obj DRV_CTRL_IC6;
   DRV_CTRL_IC7_Obj DRV_CTRL_IC7;
   DRV_CTRL_IC8_Obj DRV_CTRL_IC8;
   DRV_CTRL_IC9_Obj DRV_CTRL_IC9;
   DRV_CTRL_IC10_Obj DRV_CTRL_IC10;
   DRV_CTRL_IC11_Obj DRV_CTRL_IC11;
   DRV_CTRL_IC12_Obj DRV_CTRL_IC12;
   DRV_CTRL_IC13_Obj DRV_CTRL_IC13;
   DRV_CTRL_IC14_Obj DRV_CTRL_IC14;
} REG_MAP_Obj;

typedef struct DRV_Control_Obj
{
   uint16 Idrive_Min_Value;
   uint16 Tdrive_Max_Value;
   uint16 Idrive_Setting;
   uint16 Tdrive_Setting;
   uint16 Register_Counter;
} DRV_Control_Obj;
# 17 "bswcdd\\PreDriver\\Drv8340\\DRV83xx.c" 2
# 1 "bswcdd\\PreDriver\\Drv8340\\DRV83xx_HAL.h" 1
# 13 "bswcdd\\PreDriver\\Drv8340\\DRV83xx_HAL.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 14 "bswcdd\\PreDriver\\Drv8340\\DRV83xx_HAL.h" 2


void DRV83xx_vidControlInit(void);
void DRV83xx_vidRegisterInit(void);
void DRV83xx_vidStartOLPTest(void);
void DRV83xx_vidStartShortTest(void);
void DRV83xx_vidEnableGateDrv(void);
void DRV83xx_vidDisableGateDrv(void);
void DRV83xx_vidWriteRegs(void);
void DRV83xx_vidRestoreCfgRegs(void);
boolean DRV83xx_bCfgIsNormal(void);
void DRV83xx_vidReadRegs(void);
void DRV83xx_vidCacheRestoreFromReg(void);
uint16 DRV83xx_u16GetFaultStatus(void);
void DRV83xx_vidClearFaultStatus(void);
void DVR83xx_vidGetFaultRegsVal(uint8 * const pu8FaultRegsCache);

void DRV83xx_set_Six_PWM_Mode(void);
void DRV83xx_set_One_PWM_Mode(void);
void DRV83xx_set_IND_ABC_PWM_Mode(void);
void DRV83xx_set_IND_AB_FET_C_PWM_Mode(void);
void DRV83xx_set_IND_BC_FET_A_PWM_Mode(void);
void DRV83xx_set_IND_A_FET_BC_PWM_Mode(void);
void DRV83xx_set_FET_ABC_PWM_Mode(void);
uint8 DRV83xx_is_CSA_BI_DIR_Mode(void);

void DRV83xxHAL_u8SpiInit(void);
boolean DRV83xxHAL_bIsComEnd(void);
void DRV83xxHAL_vidSpiWrite(uint8 u8DataSize);


uint8 DRV83xx_u8GetDriverCur(void);
void DRV83xx_u8SetDriverCur(uint8 u8DriverCur);

extern uint32 DRV83xxHAL_xRegMapRxBuf[20];
extern uint32 DRV83xxHAL_xRegMapTxBuf[20];
extern const DRV83xx_FaultIndicateSet DRV83xx_FaultFuncSet;
# 18 "bswcdd\\PreDriver\\Drv8340\\DRV83xx.c" 2




static inline void DRV83xx_vidCacheTrigBitReset(void);
static inline uint16 DRV83xx_u16Cache2Reg(uint8 address);
static inline void DRV83xx_vidReg2Cache(uint8 address, uint16 regValue);
static inline uint32 DRV83xx_u32CalcWriteFrame(uint32 regAddr, uint32 data);
static inline uint32 DRV83xx_u32CalcReadFrame(uint32 regAddr);
static inline void DRV83xx_vidTrigSpiTx(void);

static boolean DRV83xx_bGetFaultStatus(void);
static boolean DRV83xx_bGetGateDriverStatus(void);
static boolean DRV83xx_bGetChargePumpUVStatus(void);
static boolean DRV83xx_bGetUVLockoutStatus(void);
static boolean DRV83xx_bGetOverCurStatus(void);
static boolean DRV83xx_bGetOverTempWarningStatus(void);
static boolean DRV83xx_bGetOverTempShutdownStatus(void);
static boolean DRV83xx_bGetOpenLoadOrShortStatus(void);
static boolean DRV83xx_bGetPhaseAShortGndStatus(void);
static boolean DRV83xx_bGetPhaseAShortBatStatus(void);
static boolean DRV83xx_bGetPhaseAOpenLoadStatus(void);
static boolean DRV83xx_bGetPhaseAGateDriverLowSideStatus(void);
static boolean DRV83xx_bGetPhaseAGateDriverHighSideStatus(void);
static boolean DRV83xx_bGetPhaseAVdsOverCurLowSideStatus(void);
static boolean DRV83xx_bGetPhaseAVdsOverCurHighSideStatus(void);
static boolean DRV83xx_bGetPhaseBShortGndStatus(void);
static boolean DRV83xx_bGetPhaseBShortBatStatus(void);
static boolean DRV83xx_bGetPhaseBOpenLoadStatus(void);
static boolean DRV83xx_bGetPhaseBGateDriverLowSideStatus(void);
static boolean DRV83xx_bGetPhaseBGateDriverHighSideStatus(void);
static boolean DRV83xx_bGetPhaseBVdsOverCurLowSideStatus(void);
static boolean DRV83xx_bGetPhaseBVdsOverCurHighSideStatus(void);
static boolean DRV83xx_bGetPhaseCShortGndStatus(void);
static boolean DRV83xx_bGetPhaseCShortBatStatus(void);
static boolean DRV83xx_bGetPhaseCOpenLoadStatus(void);
static boolean DRV83xx_bGetPhaseCGateDriverLowSideStatus(void);
static boolean DRV83xx_bGetPhaseCGateDriverHighSideStatus(void);
static boolean DRV83xx_bGetPhaseCVdsOverCurLowSideStatus(void);





REG_MAP_Obj Reg_Map_Cache[eSPI_MAX_REG_NUM];
REG_MAP_Obj Reg_Map_CfgBuf[eSPI_MAX_REG_NUM];

DRV_Control_Obj DRV_Control;

uint16 Register_Counter;




const uint16 DRV8343S_Idrive_RegData[16] = {1.5, 3.5, 5, 10,
                                                           15, 50, 60, 65,
                                                           200, 210, 260, 265,
                                                           735, 800, 935, 1000 };

const uint16 DRV8343S_Tdrive_RegData[4] = {500, 1000, 2000, 4000};

const DRV83xx_FaultIndicateSet DRV83xx_FaultFuncSet = {
   DRV83xx_bGetFaultStatus,
   DRV83xx_bGetGateDriverStatus,
   DRV83xx_bGetChargePumpUVStatus,
   DRV83xx_bGetUVLockoutStatus,
   DRV83xx_bGetOverCurStatus,
   DRV83xx_bGetOverTempWarningStatus,
   DRV83xx_bGetOverTempShutdownStatus,
   DRV83xx_bGetOpenLoadOrShortStatus,
   DRV83xx_bGetPhaseAShortGndStatus,
   DRV83xx_bGetPhaseAShortBatStatus,
   DRV83xx_bGetPhaseAOpenLoadStatus,
   DRV83xx_bGetPhaseAGateDriverLowSideStatus,
   DRV83xx_bGetPhaseAGateDriverHighSideStatus,
   DRV83xx_bGetPhaseAVdsOverCurLowSideStatus,
   DRV83xx_bGetPhaseAVdsOverCurHighSideStatus,
   DRV83xx_bGetPhaseBShortGndStatus,
   DRV83xx_bGetPhaseBShortBatStatus,
   DRV83xx_bGetPhaseBOpenLoadStatus,
   DRV83xx_bGetPhaseBGateDriverLowSideStatus,
   DRV83xx_bGetPhaseBGateDriverHighSideStatus,
   DRV83xx_bGetPhaseBVdsOverCurLowSideStatus,
   DRV83xx_bGetPhaseBVdsOverCurHighSideStatus,
   DRV83xx_bGetPhaseCShortGndStatus,
   DRV83xx_bGetPhaseCShortBatStatus,
   DRV83xx_bGetPhaseCOpenLoadStatus,
   DRV83xx_bGetPhaseCGateDriverLowSideStatus,
   DRV83xx_bGetPhaseCGateDriverHighSideStatus,
   DRV83xx_bGetPhaseCVdsOverCurLowSideStatus
};
# 117 "bswcdd\\PreDriver\\Drv8340\\DRV83xx.c"
uint8 DRV83xx_is_CSA_BI_DIR_Mode(void)
{
   uint16 regValue;

   regValue = DRV83xx_u16Cache2Reg((0x10));
   return (regValue & (0x40));
}





void DRV83xx_set_Six_PWM_Mode(void)
{
   uint16 regValue;

   regValue = DRV83xx_u16Cache2Reg((0x04));
   regValue &= ~(0x70);
   DRV83xx_vidReg2Cache((0x04), regValue);
}





void DRV83xx_set_One_PWM_Mode(void)
{
   uint16 regValue;

   regValue = DRV83xx_u16Cache2Reg((0x04));

   regValue &= ~(0x70);
   regValue |= (0x20);
   DRV83xx_vidReg2Cache((0x04), regValue);
}





void DRV83xx_set_IND_ABC_PWM_Mode(void)
{
   uint16 regValue;

   regValue = DRV83xx_u16Cache2Reg((0x04));

   regValue &= ~(0x70);
   regValue |= (0x30);
   DRV83xx_vidReg2Cache((0x04), regValue);
}





void DRV83xx_set_IND_AB_FET_C_PWM_Mode(void)
{
   uint16 regValue;

   regValue = DRV83xx_u16Cache2Reg((0x04));

   regValue &= ~(0x70);
   regValue |= (0x40);
   DRV83xx_vidReg2Cache((0x04), regValue);
}





void DRV83xx_set_IND_BC_FET_A_PWM_Mode(void)
{
   uint16 regValue;

   regValue = DRV83xx_u16Cache2Reg((0x04));

   regValue &= ~(0x70);
   regValue |= (0x50);
   DRV83xx_vidReg2Cache((0x04), regValue);
}





void DRV83xx_set_IND_A_FET_BC_PWM_Mode(void)
{
   uint16 regValue;

   regValue = DRV83xx_u16Cache2Reg((0x04));

   regValue &= ~(0x70);
   regValue |= (0x60);
   DRV83xx_vidReg2Cache((0x04), regValue);
}





void DRV83xx_set_FET_ABC_PWM_Mode(void)
{
   uint16 regValue;

   regValue = DRV83xx_u16Cache2Reg((0x04));

   regValue &= ~(0x70);
   regValue |= (0x70);
   DRV83xx_vidReg2Cache((0x04), regValue);
}





void DRV83xx_vidStartOLPTest(void)
{
   Reg_Map_Cache[(0x05)].DRV_CTRL_IC2.B.DCI2_EN_OLP = 1;
}

void DRV83xx_vidStartShortTest(void)
{
   Reg_Map_Cache[(0x05)].DRV_CTRL_IC2.B.DCI2_EN_SHT_TST = 1;
}

void DRV83xx_vidEnableGateDrv(void)
{
   Reg_Map_Cache[(0x0C)].DRV_CTRL_IC9.B.DCI9_COAST = 0;
}

void DRV83xx_vidDisableGateDrv(void)
{
   Reg_Map_Cache[(0x0C)].DRV_CTRL_IC9.B.DCI9_COAST = 1;
}

void DRV83xx_vidControlInit(void)
{
   uint8 u8localCur;
   DRV_Control.Idrive_Min_Value = (8.7 * 1000 / 100);
   DRV_Control.Tdrive_Max_Value = (2 * ((100) > (50) ? (100) : (50)));

   for(DRV_Control.Register_Counter = 0; DRV_Control.Register_Counter < 16 ; DRV_Control.Register_Counter++)
   {
      if(DRV_Control.Idrive_Min_Value >= DRV8343S_Idrive_RegData[DRV_Control.Register_Counter])
      {
         DRV_Control.Idrive_Setting = DRV_Control.Register_Counter;
      }
   }
   for(DRV_Control.Register_Counter = 0; DRV_Control.Register_Counter < 4 ; DRV_Control.Register_Counter++)
   {
      if(DRV_Control.Tdrive_Max_Value >= DRV8343S_Tdrive_RegData[DRV_Control.Register_Counter])
      {
         DRV_Control.Tdrive_Setting = DRV_Control.Register_Counter;
      }
   }

   u8localCur = DRV83xx_u8GetDriverCur();

   DRV_Control.Idrive_Setting = u8localCur;
}

void DRV83xx_vidRegisterInit(void)
{
   uint8 u8RegNum = 0;


   Reg_Map_Cache[u8RegNum].FAULT_STAT.B.FSO_FAULT = (0x00);
   Reg_Map_Cache[u8RegNum].FAULT_STAT.B.FSO_GDF = (0x00);
   Reg_Map_Cache[u8RegNum].FAULT_STAT.B.FSO_CPUV = (0x00);
   Reg_Map_Cache[u8RegNum].FAULT_STAT.B.FSO_UVLO = (0x00);
   Reg_Map_Cache[u8RegNum].FAULT_STAT.B.FSO_OCP = (0x00);
   Reg_Map_Cache[u8RegNum].FAULT_STAT.B.FSO_OTW = (0x00);
   Reg_Map_Cache[u8RegNum].FAULT_STAT.B.FSO_OTSD = (0x00);
   Reg_Map_Cache[u8RegNum].FAULT_STAT.B.FSO_OL_SHT = (0x00);
   Reg_Map_CfgBuf[u8RegNum].U = Reg_Map_Cache[u8RegNum].U;
   u8RegNum++;


   Reg_Map_Cache[u8RegNum].DIAG_STAT_A.B.DSA_FAULT = (0x00);
   Reg_Map_Cache[u8RegNum].DIAG_STAT_A.B.DSA_SA_OC = (0x00);
   Reg_Map_Cache[u8RegNum].DIAG_STAT_A.B.DSA_SHT_BAT_A = (0x00);
   Reg_Map_Cache[u8RegNum].DIAG_STAT_A.B.DSA_OL_PH_A = (0x00);
   Reg_Map_Cache[u8RegNum].DIAG_STAT_A.B.DSA_VGS_LA = (0x00);
   Reg_Map_Cache[u8RegNum].DIAG_STAT_A.B.DSA_VGS_HA = (0x00);
   Reg_Map_Cache[u8RegNum].DIAG_STAT_A.B.DSA_VDS_LA = (0x00);
   Reg_Map_Cache[u8RegNum].DIAG_STAT_A.B.DSA_VDS_HA = (0x00);
   Reg_Map_CfgBuf[u8RegNum].U = Reg_Map_Cache[u8RegNum].U;
   u8RegNum++;


   Reg_Map_Cache[u8RegNum].DIAG_STAT_B.B.DSB_FAULT = (0x00);
   Reg_Map_Cache[u8RegNum].DIAG_STAT_B.B.DSB_SB_OC = (0x00);
   Reg_Map_Cache[u8RegNum].DIAG_STAT_B.B.DSB_SHT_BAT_B = (0x00);
   Reg_Map_Cache[u8RegNum].DIAG_STAT_B.B.DSB_OL_PH_B = (0x00);
   Reg_Map_Cache[u8RegNum].DIAG_STAT_B.B.DSB_VGS_LB = (0x00);
   Reg_Map_Cache[u8RegNum].DIAG_STAT_B.B.DSB_VGS_HB = (0x00);
   Reg_Map_Cache[u8RegNum].DIAG_STAT_B.B.DSB_VDS_LB = (0x00);
   Reg_Map_Cache[u8RegNum].DIAG_STAT_B.B.DSB_VDS_HB = (0x00);
   Reg_Map_CfgBuf[u8RegNum].U = Reg_Map_Cache[u8RegNum].U;
   u8RegNum++;


   Reg_Map_Cache[u8RegNum].DIAG_STAT_C.B.DSC_FAULT = (0x00);
   Reg_Map_Cache[u8RegNum].DIAG_STAT_C.B.DSC_SC_OC = (0x00);
   Reg_Map_Cache[u8RegNum].DIAG_STAT_C.B.DSC_SHT_BAT_C = (0x00);
   Reg_Map_Cache[u8RegNum].DIAG_STAT_C.B.DSC_OL_PH_C = (0x00);
   Reg_Map_Cache[u8RegNum].DIAG_STAT_C.B.DSC_VGS_LC = (0x00);
   Reg_Map_Cache[u8RegNum].DIAG_STAT_C.B.DSC_VGS_HC = (0x00);
   Reg_Map_Cache[u8RegNum].DIAG_STAT_C.B.DSC_VDS_LC = (0x00);
   Reg_Map_Cache[u8RegNum].DIAG_STAT_C.B.DSC_VDS_HC = (0x00);
   Reg_Map_CfgBuf[u8RegNum].U = Reg_Map_Cache[u8RegNum].U;
   u8RegNum++;


   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC1.B.DCI1_CLR_FLT = (0x00);
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC1.B.DCI1_PWM_MODE = (0x00);
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC1.B.DCI1_ONE_PWM_COM = (0x00);
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC1.B.DCI1_ONE_PWM_DIR = (0x00);
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC1.B.DCI1_ONE_PWM_BRK = (0x00);
   Reg_Map_CfgBuf[u8RegNum].U = Reg_Map_Cache[u8RegNum].U;
   u8RegNum++;


   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC2.B.DCI2_OTSD_MODE = (0x00);
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC2.B.DCI2_OLP_SHTS_DLY = (0x02);
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC2.B.DCI2_EN_SHT_TST = 0;
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC2.B.DCI2_EN_OLP = (0x00);
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC2.B.DCI2_EN_OLA_C = (0x00);
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC2.B.DCI2_EN_OLA_B = (0x00);
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC2.B.DCI2_EN_OLA_A = (0x00);
   Reg_Map_CfgBuf[u8RegNum].U = Reg_Map_Cache[u8RegNum].U;
   Reg_Map_CfgBuf[u8RegNum].DRV_CTRL_IC2.B.DCI2_EN_SHT_TST = 0;
   u8RegNum++;


   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC3.B.DCI3_IDRIVEP_LA = DRV_Control.Idrive_Setting;
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC3.B.DCI3_IDRIVEP_HA = DRV_Control.Idrive_Setting;
   Reg_Map_CfgBuf[u8RegNum].U = Reg_Map_Cache[u8RegNum].U;
   u8RegNum++;


   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC4.B.DCI4_IDRIVEP_LB = DRV_Control.Idrive_Setting;
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC4.B.DCI4_IDRIVEP_HB = DRV_Control.Idrive_Setting;
   Reg_Map_CfgBuf[u8RegNum].U = Reg_Map_Cache[u8RegNum].U;
   u8RegNum++;


   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC5.B.DCI5_IDRIVEP_LC = DRV_Control.Idrive_Setting;
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC5.B.DCI5_IDRIVEP_HC = DRV_Control.Idrive_Setting;
   Reg_Map_CfgBuf[u8RegNum].U = Reg_Map_Cache[u8RegNum].U;
   u8RegNum++;


   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC6.B.DCI6_VDS_LA = (0x08);
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC6.B.DCI6_VDS_HA = (0x08);
   Reg_Map_CfgBuf[u8RegNum].U = Reg_Map_Cache[u8RegNum].U;
   u8RegNum++;


   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC7.B.DCI7_VDS_LB = (0x08);
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC7.B.DCI7_VDS_HB = (0x08);
   Reg_Map_CfgBuf[u8RegNum].U = Reg_Map_Cache[u8RegNum].U;
   u8RegNum++;


   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC8.B.DCI8_VDS_LC = (0x08);
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC8.B.DCI8_VDS_HC = (0x08);
   Reg_Map_CfgBuf[u8RegNum].U = Reg_Map_Cache[u8RegNum].U;
   u8RegNum++;


   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC9.B.DCI9_COAST = (0x00);
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC9.B.DCI9_TRETRY = (0x01);
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC9.B.DCI9_DEAD_TIME = (0x01);
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC9.B.DCI9_TDRIVE_MAX = (0x01);
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC9.B.DCI9_TDRIVE = DRV_Control.Tdrive_Setting;
   Reg_Map_CfgBuf[u8RegNum].U = Reg_Map_Cache[u8RegNum].U;
   u8RegNum++;


   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC10.B.DCI10_LOCK = (0x03);
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC10.B.DCI10_DIS_CPUV = (0x00);
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC10.B.DCI10_DIS_GDF = (0x00);
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC10.B.DCI10_OCP_DEG = (0x01);
   Reg_Map_CfgBuf[u8RegNum].U = Reg_Map_Cache[u8RegNum].U;
   u8RegNum++;


   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC11.B.DCI11_RSVD_REG_10 = (0x00);
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC11.B.DCI11_OTW_REP = (0x00);
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC11.B.DCI11_CBC = (0x00);
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC11.B.DCI11_DIS_VDS_C = (0x00);
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC11.B.DCI11_DIS_VDS_B = (0x00);
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC11.B.DCI11_DIS_VDS_A = (0x00);
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC11.B.DCI11_OCP_MODE = (0x00);
   Reg_Map_CfgBuf[u8RegNum].U = Reg_Map_Cache[u8RegNum].U;
   u8RegNum++;


   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC12.B.DCI12_LS_REF = (0x00);
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC12.B.DCI12_CSA_FET = (0x00);
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC12.B.DCI12_CSA_GAIN_C = (0x02);
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC12.B.DCI12_CSA_GAIN_B = (0x02);
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC12.B.DCI12_CSA_GAIN_A = (0x02);
   Reg_Map_CfgBuf[u8RegNum].U = Reg_Map_Cache[u8RegNum].U;
   u8RegNum++;


   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC13.B.DCI13_CAL_MODE = (0x00);
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC13.B.DCI13_VREF_DIV = (0x01);
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC13.B.DCI13_SEN_LVL_C = (0x03);
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC13.B.DCI13_SEN_LVL_B = (0x03);
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC13.B.DCI13_SEN_LVL_A = (0x03);
   Reg_Map_CfgBuf[u8RegNum].U = Reg_Map_Cache[u8RegNum].U;
   u8RegNum++;


   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC14.B.DCI14_RSVD_REG_14 = (0x00);
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC14.B.DCI14_DIS_SEN_C = (0x00);
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC14.B.DCI14_DIS_SEN_B = (0x00);
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC14.B.DCI14_DIS_SEN_A = (0x00);
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC14.B.DCI14_CSA_CAL_C = (0x00);
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC14.B.DCI14_CSA_CAL_B = (0x00);
   Reg_Map_Cache[u8RegNum].DRV_CTRL_IC14.B.DCI14_CSA_CAL_A = (0x00);
   Reg_Map_CfgBuf[u8RegNum].U = Reg_Map_Cache[u8RegNum].U;
}

void DRV83xx_vidRestoreCfgRegs(void)
{
   uint8 u8Index;

   for(u8Index = 0; u8Index < eSPI_MAX_REG_NUM; u8Index++)
   {
      Reg_Map_Cache[u8Index].U = Reg_Map_CfgBuf[u8Index].U;
   }
}

boolean DRV83xx_bCfgIsNormal(void)
{
   uint8 u8Index;
   boolean bCheckRet = (1 != 0);

   for(u8Index = eSPI_REG_DRV_CTRL_1; u8Index < eSPI_MAX_REG_NUM; u8Index++)
   {
      if(Reg_Map_CfgBuf[u8Index].U != Reg_Map_Cache[u8Index].U)
      {
         bCheckRet = (0 != 0);
         break;
      }
   }

   return bCheckRet;
}





void DRV83xx_vidWriteRegs(void)
{
   uint8 u8Index = 0;


   for(u8Index = 0; u8Index < eSPI_MAX_REG_NUM; u8Index++)
   {
      DRV83xxHAL_xRegMapTxBuf[u8Index] = DRV83xx_u32CalcWriteFrame(u8Index, Reg_Map_Cache[u8Index].U);
   }

   DRV83xx_vidTrigSpiTx();
}





void DRV83xx_vidReadRegs(void)
{
   uint8 u8Index = 0;


   for(u8Index = 0; u8Index < eSPI_MAX_REG_NUM; u8Index++)
   {
      DRV83xxHAL_xRegMapTxBuf[u8Index] = DRV83xx_u32CalcReadFrame(u8Index);
   }

   DRV83xx_vidTrigSpiTx();
}





void DRV83xx_vidCacheRestoreFromReg(void)
{
   uint8 u8Index = 0;


   for(u8Index = 0; u8Index < eSPI_MAX_REG_NUM; u8Index++)
   {
      Reg_Map_Cache[u8Index].U = (uint8)(DRV83xxHAL_xRegMapRxBuf[u8Index] & 0x000000FF);
   }

   DRV83xx_vidCacheTrigBitReset();
}





void DRV83xx_vidClearFaultStatus(void)
{
   Reg_Map_Cache[(0x04)].DRV_CTRL_IC1.B.DCI1_CLR_FLT = 1;
}

void DVR83xx_vidGetFaultRegsVal(uint8 * const pu8FaultRegsCache)
{
   pu8FaultRegsCache[0] = Reg_Map_Cache[0].U;
   pu8FaultRegsCache[1] = Reg_Map_Cache[1].U;
   pu8FaultRegsCache[2] = Reg_Map_Cache[2].U;
   pu8FaultRegsCache[3] = Reg_Map_Cache[3].U;
}




static inline void DRV83xx_vidCacheTrigBitReset(void)
{
   Reg_Map_Cache[(0x04)].DRV_CTRL_IC1.B.DCI1_CLR_FLT = 0;
   Reg_Map_Cache[(0x05)].DRV_CTRL_IC2.B.DCI2_EN_OLP = 0;
}





static inline uint16 DRV83xx_u16Cache2Reg(uint8 address)
{
   uint16 regValue;

   regValue = (uint16)Reg_Map_Cache[address].U;

   return regValue;
}





static inline void DRV83xx_vidReg2Cache(uint8 address, uint16 regValue)
{
   Reg_Map_Cache[address].U = (uint8)regValue;
}

static inline uint32 DRV83xx_u32CalcWriteFrame(uint32 regAddr, uint32 data)
{
   return (0 | 0x00000000 | (regAddr << 8) | data);
}

static inline uint32 DRV83xx_u32CalcReadFrame(uint32 regAddr)
{
   return (0 | 0x00008000 | (regAddr << 8));
}

static inline void DRV83xx_vidTrigSpiTx(void)
{
   DRV83xxHAL_vidSpiWrite(eSPI_MAX_REG_NUM);
}

static boolean DRV83xx_bGetFaultStatus(void)
{
   return ((Reg_Map_Cache[(0x00)].U & (0x80)) != 0);
}

static boolean DRV83xx_bGetGateDriverStatus(void)
{
   return ((Reg_Map_Cache[(0x00)].U & (0x40)) != 0);
}

static boolean DRV83xx_bGetChargePumpUVStatus(void)
{
   return ((Reg_Map_Cache[(0x00)].U & (0x20)) != 0);
}

static boolean DRV83xx_bGetUVLockoutStatus(void)
{
   return ((Reg_Map_Cache[(0x00)].U & (0x10)) != 0);
}

static boolean DRV83xx_bGetOverCurStatus(void)
{
   return ((Reg_Map_Cache[(0x00)].U & (0x08)) != 0);
}

static boolean DRV83xx_bGetOverTempWarningStatus(void)
{
   return ((Reg_Map_Cache[(0x00)].U & (0x04)) != 0);
}

static boolean DRV83xx_bGetOverTempShutdownStatus(void)
{
   return ((Reg_Map_Cache[(0x00)].U & (0x02)) != 0);
}

static boolean DRV83xx_bGetOpenLoadOrShortStatus(void)
{
   return ((Reg_Map_Cache[(0x00)].U & (0x01)) != 0);
}

static boolean DRV83xx_bGetPhaseAShortGndStatus(void)
{
   return ((Reg_Map_Cache[(0x01)].U & (0x40)) != 0);
}

static boolean DRV83xx_bGetPhaseAShortBatStatus(void)
{
   return ((Reg_Map_Cache[(0x01)].U & (0x20)) != 0);
}

static boolean DRV83xx_bGetPhaseAOpenLoadStatus(void)
{
   return ((Reg_Map_Cache[(0x01)].U & (0x10)) != 0);
}

static boolean DRV83xx_bGetPhaseAGateDriverLowSideStatus(void)
{
   return ((Reg_Map_Cache[(0x01)].U & (0x08)) != 0);
}

static boolean DRV83xx_bGetPhaseAGateDriverHighSideStatus(void)
{
   return ((Reg_Map_Cache[(0x01)].U & (0x04)) != 0);
}

static boolean DRV83xx_bGetPhaseAVdsOverCurLowSideStatus(void)
{
   return ((Reg_Map_Cache[(0x01)].U & (0x02)) != 0);
}

static boolean DRV83xx_bGetPhaseAVdsOverCurHighSideStatus(void)
{
   return ((Reg_Map_Cache[(0x01)].U & (0x01)) != 0);
}

static boolean DRV83xx_bGetPhaseBShortGndStatus(void)
{
   return ((Reg_Map_Cache[(0x02)].U & (0x40)) != 0);
}

static boolean DRV83xx_bGetPhaseBShortBatStatus(void)
{
   return ((Reg_Map_Cache[(0x02)].U & (0x20)) != 0);
}

static boolean DRV83xx_bGetPhaseBOpenLoadStatus(void)
{
   return ((Reg_Map_Cache[(0x02)].U & (0x10)) != 0);
}

static boolean DRV83xx_bGetPhaseBGateDriverLowSideStatus(void)
{
   return ((Reg_Map_Cache[(0x02)].U & (0x08)) != 0);
}

static boolean DRV83xx_bGetPhaseBGateDriverHighSideStatus(void)
{
   return ((Reg_Map_Cache[(0x02)].U & (0x04)) != 0);
}

static boolean DRV83xx_bGetPhaseBVdsOverCurLowSideStatus(void)
{
   return ((Reg_Map_Cache[(0x02)].U & (0x02)) != 0);
}

static boolean DRV83xx_bGetPhaseBVdsOverCurHighSideStatus(void)
{
   return ((Reg_Map_Cache[(0x02)].U & (0x01)) != 0);
}

static boolean DRV83xx_bGetPhaseCShortGndStatus(void)
{
   return ((Reg_Map_Cache[(0x03)].U & (0x40)) != 0);
}

static boolean DRV83xx_bGetPhaseCShortBatStatus(void)
{
   return ((Reg_Map_Cache[(0x03)].U & (0x20)) != 0);
}

static boolean DRV83xx_bGetPhaseCOpenLoadStatus(void)
{
   return ((Reg_Map_Cache[(0x03)].U & (0x10)) != 0);
}

static boolean DRV83xx_bGetPhaseCGateDriverLowSideStatus(void)
{
   return ((Reg_Map_Cache[(0x03)].U & (0x08)) != 0);
}

static boolean DRV83xx_bGetPhaseCGateDriverHighSideStatus(void)
{
   return ((Reg_Map_Cache[(0x03)].U & (0x04)) != 0);
}

static boolean DRV83xx_bGetPhaseCVdsOverCurLowSideStatus(void)
{
   return ((Reg_Map_Cache[(0x03)].U & (0x02)) != 0);
}

static boolean DRV83xx_bGetPhaseCVdsOverCurHighSideStatus(void)
{
   return ((Reg_Map_Cache[(0x03)].U & (0x01)) != 0);
}
