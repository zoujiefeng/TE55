/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/
#include "Rte_ASW_NVM.h"

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "MAIN_OCTrim.h"
#include "MAIN_tsk.h"
#include "MAIN_L.h"
#include "GMAIN_tsk.h"
#include "GMAIN_L.h"
#include "DFM.h"
#include "Crc.h"

/*******************************************************************************
 ****  Global Function Declarations
 ******************************************************************************/
extern void NvM_WriteAll(void);

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/
/* (G)MAIN_as32OCTrimNvm[0] */
#define OC_TRIM_0_LOW_LIMIT           (-3000)
#define OC_TRIM_0_HIGH_LIMIT          (-1500)
#define OC_TRIM_0_LIMIT_OBJ_NUM       (1u)
/* (G)MAIN_as32OCTrimNvm[1] */
#define OC_TRIM_1_LOW_LIMIT           (-3000)
#define OC_TRIM_1_HIGH_LIMIT          (-1500)
#define OC_TRIM_1_LIMIT_OBJ_NUM       (1u)
/* (G)MAIN_as32OCTrimNvm[2] */
#define OC_TRIM_2_MINUS_LOW_LIMIT     (-30000)
#define OC_TRIM_2_MINUS_HIGH_LIMIT    (-5000)
#define OC_TRIM_2_PLUS_LOW_LIMIT      (5000)
#define OC_TRIM_2_PLUS_HIGH_LIMIT     (30000)
#define OC_TRIM_2_LIMIT_OBJ_NUM       (2u)
/* (G)MAIN_as32OCTrimNvm[3] */
#define OC_TRIM_3_MINUS_LOW_LIMIT     (-30000)
#define OC_TRIM_3_MINUS_HIGH_LIMIT    (-5000)
#define OC_TRIM_3_PLUS_LOW_LIMIT      (5000)
#define OC_TRIM_3_PLUS_HIGH_LIMIT     (30000)
#define OC_TRIM_3_LIMIT_OBJ_NUM       (2u)
/* (G)MAIN_as32OCTrimNvm[4] */
#define OC_TRIM_4_LOW_LIMIT           (-18000)
#define OC_TRIM_4_HIGH_LIMIT          (18000)
#define OC_TRIM_4_LIMIT_OBJ_NUM       (1u)

/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/
enum eOCStoreState{
   MAIN_OC_STORE_INIT = 0,
   MAIN_OC_STORE_IDLE,
   MAIN_OC_STORE_COPY,
   MAIN_OC_STORE_ERASE,
   MAIN_OC_STORE_WRITE,
   MAIN_OC_STORE_END
};

typedef enum MAIN_tOCTrimBlockIndex{
   /* RAM Block Index */
   eMAIN_OFFSET_COS_TRIM_INDEX = 0,
   eMAIN_OFFSET_SIN_TRIM_INDEX,
   eMAIN_GAIN_COS_TRIM_INDEX,
   eMAIN_GAIN_SIN_TRIM_INDEX,
   eMAIN_AUTO_PHASING_ANGLE_INDEX,
   eMAIN_OC_DATA_ARRAY_SIZE,

   /* CRC Index */
   eMAIN_OC_CRC_INDEX_INDEX = eMAIN_OC_DATA_ARRAY_SIZE,

   /* NVM Block Max Limit */
   eMAIN_OC_NVM_BLOCK_MAX_NUM = DFM_RAM_BUFFER_WORD_SIZE
}MAIN_tOCTrimBlockIndex;

typedef enum MAIN_tOCLimitObjIndex{
   /* RAM Block Index */
   eMAIN_TRIM_0_LIMIT_OBJ_INDEX = 0,
   eMAIN_TRIM_1_LIMIT_OBJ_INDEX = eMAIN_TRIM_0_LIMIT_OBJ_INDEX + OC_TRIM_0_LIMIT_OBJ_NUM,
   eMAIN_TRIM_2_LIMIT_OBJ_INDEX = eMAIN_TRIM_1_LIMIT_OBJ_INDEX + OC_TRIM_1_LIMIT_OBJ_NUM,
   eMAIN_TRIM_3_LIMIT_OBJ_INDEX = eMAIN_TRIM_2_LIMIT_OBJ_INDEX + OC_TRIM_2_LIMIT_OBJ_NUM,
   eMAIN_TRIM_4_LIMIT_OBJ_INDEX = eMAIN_TRIM_3_LIMIT_OBJ_INDEX + OC_TRIM_3_LIMIT_OBJ_NUM,

   eMAIN_OC_LIMIT_OBJ_MAX_NUM = eMAIN_TRIM_4_LIMIT_OBJ_INDEX + OC_TRIM_4_LIMIT_OBJ_NUM
}MAIN_tOCLimitObjIndex;

typedef enum MAIN_tOCT_TransDir{
   eMAIN_OCT_PushDataToNvm = 0,
   eMAIN_OCT_GetDataFromNvm
}MAIN_tOCT_TransDir;

typedef struct MAIN_tOCTrimLimit{
   sint32 s32LowLimit;
   sint32 s32HighLimit;
}MAIN_tOCTrimLimit;

typedef struct MAIN_tOCTrimEcuCfg{
   MAIN_tOCTrimLimit  aks32OCTrimLimit[eMAIN_OC_LIMIT_OBJ_MAX_NUM];
   uint8              aku8LimitObjIdx[eMAIN_OC_DATA_ARRAY_SIZE + 1];

   const sint32      *aks32OCTrimDefault;
   boolean           *pbOCStoreAswReq;
   volatile sint32   *pas32OCTrimRamBlock;

   void    (*vidOcAswCalRestore)(void);
   boolean (*bGetRocCondition)(void);
}MAIN_tOCTrimEcuCfg;

enum{
   eMAIN_OC_STT_INIT = 0,
   eMAIN_OC_STT_IDLE,
   eMAIN_OC_STT_START,
   eMAIN_OC_STT_GOING,
   eMAIN_OC_STT_FINISH,
   eMAIN_OC_STT_STORE,
   eMAIN_OC_STT_SUCCS,
   eMAIN_OC_STT_FAILED,
   eMAIN_OC_STT_END,
};

typedef struct{
   uint8 u8OcState;
   uint8 u8OfsAlCalSts;
   uint8 u8TrigOcByUser;
   uint8 u8OcStsRptDelayCnt;

   boolean bOcModeEna;
   boolean bOcStartFlag;
   boolean bOcRdResultFlag;
   boolean bOcFinshFlg;

   boolean bOcFailureFlg;
   boolean bOcNotRatFlg;
}MAIN_OCT_tOnlineCalib;


/*******************************************************************************
 **** Private Variable Definitions
 ******************************************************************************/
static boolean MAIN_bOCStoreAswReq  = FALSE;
static boolean GMAIN_bOCStoreAswReq = FALSE;
static uint32 MAIN_u32OCTrimNvmAlignBuf[eMAIN_OC_DATA_ARRAY_SIZE * eMAIN_MAX_UNIT_NUM] = {0};

static boolean MAIN_bOcDataStoreEna = FALSE;
static uint8   MAIN_u8OCStoreState  = MAIN_OC_STORE_IDLE;
static boolean MAIN_bOCStoreResult  = FALSE;
static MAIN_OCT_tOnlineCalib MAIN_OCT_atOnlineCalibSet[eMAIN_MAX_UNIT_NUM] = {{0}};

/*******************************************************************************
 **** Global Variable Definitions
 ******************************************************************************/
uint32 MAIN_u32FixOcDataBuf[DFM_BYTE_SIZE_TO_WORD_SIZE(DFM_OC_RAM_BLOCK_LEN)] = {0};

/*******************************************************************************
 ****  Exported Constant Definitions
 ******************************************************************************/
const sint32 MAIN_aks32OCTrimNvm_def[eMAIN_OC_DATA_ARRAY_SIZE] = {OFFSET_COS_TRIM_SIGN,OFFSET_SIN_TRIM_SIGN,GAIN_COS_TRIM_SIGN,GAIN_SIN_TRIM_SIGN,AUTOPHASINGANGLE_SIGN};
const sint32 GMAIN_aks32OCTrimNvm_def[eMAIN_OC_DATA_ARRAY_SIZE] = {GOFFSET_COS_TRIM_SIGN,GOFFSET_SIN_TRIM_SIGN,GGAIN_COS_TRIM_SIGN,GGAIN_SIN_TRIM_SIGN,GAUTOPHASINGANGLE_SIGN};

/*******************************************************************************
 **** Private Constant Definitions
 ******************************************************************************/
static const MAIN_tOCTrimEcuCfg MAIN_atOCTrimEcuCfgSet[eMAIN_MAX_UNIT_NUM] = {
   {
      .aks32OCTrimDefault = &MAIN_aks32OCTrimNvm_def[0],
      .aks32OCTrimLimit = {
         {OC_TRIM_0_LOW_LIMIT      , OC_TRIM_0_HIGH_LIMIT      },
         {OC_TRIM_1_LOW_LIMIT      , OC_TRIM_1_HIGH_LIMIT      },
         {OC_TRIM_2_MINUS_LOW_LIMIT, OC_TRIM_2_MINUS_HIGH_LIMIT},
         {OC_TRIM_2_PLUS_LOW_LIMIT , OC_TRIM_2_PLUS_HIGH_LIMIT },
         {OC_TRIM_3_MINUS_LOW_LIMIT, OC_TRIM_3_MINUS_HIGH_LIMIT},
         {OC_TRIM_3_PLUS_LOW_LIMIT , OC_TRIM_3_PLUS_HIGH_LIMIT },
         {OC_TRIM_4_LOW_LIMIT      , OC_TRIM_4_HIGH_LIMIT      }
      },
      .aku8LimitObjIdx = {
         eMAIN_TRIM_0_LIMIT_OBJ_INDEX,
         eMAIN_TRIM_1_LIMIT_OBJ_INDEX,
         eMAIN_TRIM_2_LIMIT_OBJ_INDEX,
         eMAIN_TRIM_3_LIMIT_OBJ_INDEX,
         eMAIN_TRIM_4_LIMIT_OBJ_INDEX,
         eMAIN_OC_LIMIT_OBJ_MAX_NUM
      },

      .pbOCStoreAswReq     = &MAIN_bOCStoreAswReq,
      .pas32OCTrimRamBlock = &MAIN_as32OCTrimNvm[0],
      
      .vidOcAswCalRestore  = MAIN_vidOcDataRestore,
      .bGetRocCondition    = MAIN_bChkOcCondition
   },
   {
      .aks32OCTrimDefault = &GMAIN_aks32OCTrimNvm_def[0],
      .aks32OCTrimLimit = {
         {OC_TRIM_0_LOW_LIMIT      , OC_TRIM_0_HIGH_LIMIT      },
         {OC_TRIM_1_LOW_LIMIT      , OC_TRIM_1_HIGH_LIMIT      },
         {OC_TRIM_2_MINUS_LOW_LIMIT, OC_TRIM_2_MINUS_HIGH_LIMIT},
         {OC_TRIM_2_PLUS_LOW_LIMIT , OC_TRIM_2_PLUS_HIGH_LIMIT },
         {OC_TRIM_3_MINUS_LOW_LIMIT, OC_TRIM_3_MINUS_HIGH_LIMIT},
         {OC_TRIM_3_PLUS_LOW_LIMIT , OC_TRIM_3_PLUS_HIGH_LIMIT },
         {OC_TRIM_4_LOW_LIMIT      , OC_TRIM_4_HIGH_LIMIT      }
      },
      .aku8LimitObjIdx = {
         eMAIN_TRIM_0_LIMIT_OBJ_INDEX,
         eMAIN_TRIM_1_LIMIT_OBJ_INDEX,
         eMAIN_TRIM_2_LIMIT_OBJ_INDEX,
         eMAIN_TRIM_3_LIMIT_OBJ_INDEX,
         eMAIN_TRIM_4_LIMIT_OBJ_INDEX,
         eMAIN_OC_LIMIT_OBJ_MAX_NUM
      },

      .pbOCStoreAswReq     = &GMAIN_bOCStoreAswReq,
      .pas32OCTrimRamBlock = &GMAIN_as32OCTrimNvm[0],
      
      .vidOcAswCalRestore  = GMAIN_vidOcDataRestore,
      .bGetRocCondition    = GMAIN_bChkOcCondition
   },
};

/*******************************************************************************
 **** Exported Variable Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Private Function Declarations
 ******************************************************************************/
static boolean MAIN_OCT_bOcDataStore(void);
static void    MAIN_OCT_vidOcRamBlockDataHandle(uint8 u8Unit, MAIN_tOCT_TransDir eGetData);
static void    MAIN_OCT_vidOcNvmStore(void);
static void    MAIN_OCT_vidAswOcDataReload(void);
static void    MAIN_OCT_vidOcNvmDataAlign(boolean bAlignReq);
static void    MAIN_OCT_vidOcStateMng(const uint8 ku8Unit);
static void    MAIN_OCT_SetOcStudyDataStoreReq(uint8 u8Unit);

/*******************************************************************************
 ****  Global Function Definitions
 ******************************************************************************/
/**********************************************************************
 * Function name    :  MAIN_OCT_vidOcNvmStore
 * Description      :  
 * Input parameter  :  No
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2023/05/19	     V1.0	     R.LIU	    Create
 * 2024/01/19	     V2.0	     Zyx	       Add gcu init
 ***********************************************************************/
void MAIN_OCT_vidGetOcTrimData(void)
{
   boolean bLocalDataValid     = FALSE;
   boolean bLocOcDataValidFlag = FALSE;
   boolean bLocalOcStoreReq    = FALSE;
   boolean bLocalOcNvmStoreReq = FALSE;
   
   uint8  u8Unit       = 0;
   uint8  u8Index      = 0;
   uint32 u32LocalCrc  = 0;
   uint32 u32LocalData = 0;
   
   MAIN_OCT_vidOcNvmDataAlign(TRUE);

   do{
      /* Extract OC Data */
      for(u8Index = 0; u8Index < eMAIN_OC_DATA_ARRAY_SIZE; u8Index++)
      {
         MAIN_atOCTrimEcuCfgSet[u8Unit].pas32OCTrimRamBlock[u8Index] = \
            *(sint32*)(&MAIN_u32FixOcDataBuf[eMAIN_OC_NVM_BLOCK_MAX_NUM * u8Unit + u8Index]);
      }

      /* CRC start address */
      /* Unit 0: index = 0
       * Unit 1: index = 8
       */
      u8Index = u8Unit * DFM_RAM_BUFFER_WORD_SIZE;
      u32LocalCrc = Crc_CalculateCRC32((const uint8*)&MAIN_u32FixOcDataBuf[u8Index], eMAIN_OC_DATA_ARRAY_SIZE * 4, 0xFFFFFFFF, TRUE);
      
      /* CRC value address */
      u8Index = u8Unit * DFM_RAM_BUFFER_WORD_SIZE + eMAIN_OC_CRC_INDEX_INDEX;
      if(u32LocalCrc == MAIN_u32FixOcDataBuf[u8Index])
      {
         /* CRC Correct */
         bLocalDataValid = TRUE;
         bLocOcDataValidFlag = MAIN_OCT_bCheckOcTrimData(u8Unit);
         if(FALSE == bLocOcDataValidFlag)
         {
            /* Fix Data Invalid */
            bLocalDataValid = FALSE;
         }
         else
         {
            /* Fix Data Valid */
            for(u8Index = 0; u8Index < eMAIN_OC_DATA_ARRAY_SIZE; u8Index++)
            {
               u32LocalData = MAIN_u32OCTrimNvmAlignBuf[eMAIN_OC_DATA_ARRAY_SIZE * u8Unit + u8Index];
               
               if(u32LocalData != MAIN_u32FixOcDataBuf[DFM_RAM_BUFFER_WORD_SIZE * u8Unit + u8Index])
               {
                  /* NvM Data Not Equal to Fix Data */
                  /* Write NvM */
                  bLocalOcNvmStoreReq = TRUE;
                  break;
               }
            }
         }
      }
      else
      {
         /* Fix Data CRC Not Correct, Do Nothing */
      }

      if(FALSE == bLocalDataValid)
      {
         /* fix data invalid, check nvm block data */
         /* Extract oc data from nvm block */
         MAIN_OCT_vidOcRamBlockDataHandle(u8Unit, eMAIN_OCT_GetDataFromNvm);
         
         bLocalDataValid = MAIN_OCT_bCheckOcTrimData(u8Unit);
         if(TRUE == bLocalDataValid)
         {
            /* Nvm data is valid && fix data is invalid */
            /* Set write flag */
            bLocalOcStoreReq = TRUE;
         }
      }
   }while(++u8Unit < eMAIN_MAX_UNIT_NUM);
   
   if(TRUE == bLocalOcStoreReq)
   {
      MAIN_OCT_SetOcDataStoreReq(TRUE);
   }
   else if(TRUE == bLocalOcNvmStoreReq)
   {
      MAIN_OCT_vidOcNvmStore();
   }
   else
   {
      /* Do nothing */
   }
}

/**********************************************************************
 * Function name    :  DFApp_vidModuleInit
 * Description      :  
 * Input parameter  :  No
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2023/07/24	     V1.0	     Zyx	       Create
 ***********************************************************************/
boolean MAIN_OCT_bCheckOcTrimData(uint8 u8Unit)
{
   /* Normal range:
    * (G)MAIN_as32OCTrimNvm[0] : (-3000, -1500)
    * (G)MAIN_as32OCTrimNvm[1] : (-3000, -1500)
    * (G)MAIN_as32OCTrimNvm[2] : (-30000, -5000) U (5000, 30000)
    * (G)MAIN_as32OCTrimNvm[3] : (-30000, -5000) U (5000, 30000)
    * (G)MAIN_as32OCTrimNvm[4] : (-18000, 18000)
    */

   boolean  bLocOcDataValidFlag;
   uint8    u8OcDataIndex;
   uint8    u8SegmentIndex;
   sint32   s32LowLimit;
   sint32   s32HighLimit;
   volatile sint32 * ps32OcDataPtr;

   if(u8Unit >= eMAIN_MAX_UNIT_NUM)
   {
      /* Param error */
      bLocOcDataValidFlag = FALSE;
   }
   else
   {
      ps32OcDataPtr = MAIN_atOCTrimEcuCfgSet[u8Unit].pas32OCTrimRamBlock;
      for(u8OcDataIndex = 0; u8OcDataIndex < eMAIN_OC_DATA_ARRAY_SIZE; u8OcDataIndex++)
      {
         bLocOcDataValidFlag = FALSE;
         
         /* Example: (-30000, -5000) U (5000, 30000)
          * Compare two times
          */
         for(u8SegmentIndex = MAIN_atOCTrimEcuCfgSet[u8Unit].aku8LimitObjIdx[u8OcDataIndex];
             u8SegmentIndex < MAIN_atOCTrimEcuCfgSet[u8Unit].aku8LimitObjIdx[u8OcDataIndex + 1];
             u8SegmentIndex++)
         {
            s32LowLimit  = MAIN_atOCTrimEcuCfgSet[u8Unit].aks32OCTrimLimit[u8SegmentIndex].s32LowLimit;
            s32HighLimit = MAIN_atOCTrimEcuCfgSet[u8Unit].aks32OCTrimLimit[u8SegmentIndex].s32HighLimit;
            
            bLocOcDataValidFlag = ((ps32OcDataPtr[u8OcDataIndex] >= s32LowLimit) && (ps32OcDataPtr[u8OcDataIndex] <= s32HighLimit));
            if(TRUE == bLocOcDataValidFlag)
            {
               break;
            }
         }

         if(FALSE == bLocOcDataValidFlag)
         {
            break;
         }
      }
   }
   
   return bLocOcDataValidFlag;
}

/**********************************************************************
 * Function name    :  MAIN_OCT_vidOcDataMng
 * Description      :  
 * Input parameter  :  No
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2024/01/19	     V1.0	     Zyx	       Create
 * 2024/02/20	     V1.1	     Zyx	       Modify: Add GCU store result. Advance power on delay
 ***********************************************************************/
void MAIN_OCT_vidOcDataMng(void)
{
   /* !Comment: OC state management. */
   MAIN_OCT_vidOcStateMng(eMAIN_UNIT_MCU_INDEX);
   MAIN_OCT_vidOcStateMng(eMAIN_UNIT_GCU_INDEX);
   
   MAIN_bOCStoreResult = MAIN_OCT_bOcDataStore();
   if(TRUE == MAIN_bOCStoreResult)
   {
      MAIN_OCT_SetOcDataStoreReq(FALSE);
   }
}

/**********************************************************************
 * Function name    :  MAIN_OCT_vidOcNvmStore
 * Description      :  
 * Input parameter  :  No
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2024/01/19	     V1.0	     Zyx	       Create
 ***********************************************************************/
static void MAIN_OCT_SetOcStudyDataStoreReq(uint8 u8Unit)
{
   if(u8Unit < eMAIN_MAX_UNIT_NUM)
   {
      *(MAIN_atOCTrimEcuCfgSet[u8Unit].pbOCStoreAswReq) = TRUE;
      MAIN_OCT_SetOcDataStoreReq(TRUE);
   }
}

/**********************************************************************
 * Function name    :  MAIN_OCT_vidOcNvmStore
 * Description      :  
 * Input parameter  :  No
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2024/01/19	     V1.0	     Zyx	       Create
 ***********************************************************************/
void MAIN_OCT_SetOcDataStoreReq(boolean bStoreReq)
{
   MAIN_bOcDataStoreEna = bStoreReq;
}

void MAIN_OCT_vidTrigOcCalib(const uint8 ku8Unit)
{
   MAIN_OCT_atOnlineCalibSet[ku8Unit].u8TrigOcByUser = 0x58;
}

uint8 MAIN_OCT_u8GetOcCalibState(const uint8 ku8Unit)
{
   return MAIN_OCT_atOnlineCalibSet[ku8Unit].u8OfsAlCalSts;
}

void MAIN_OCT_vidSetOcFinishFlg(const uint8 ku8Unit, boolean bFlag)
{
   MAIN_OCT_atOnlineCalibSet[ku8Unit].bOcFinshFlg = bFlag;
}

void MAIN_OCT_vidSetOcFailureFlg(const uint8 ku8Unit, boolean bFlag)
{
   MAIN_OCT_atOnlineCalibSet[ku8Unit].bOcFailureFlg = bFlag;
}

void MAIN_OCT_vidSetOcNotRatFlg(const uint8 ku8Unit, boolean bFlag)
{
   MAIN_OCT_atOnlineCalibSet[ku8Unit].bOcNotRatFlg = bFlag;
}

boolean MAIN_OCT_bGetOcModeEna(const uint8 ku8Unit)
{
   return MAIN_OCT_atOnlineCalibSet[ku8Unit].bOcModeEna;
}

boolean MAIN_OCT_bGetOcRdResultFlag(const uint8 ku8Unit)
{
   return MAIN_OCT_atOnlineCalibSet[ku8Unit].bOcRdResultFlag;
}

boolean MAIN_OCT_bGetOcStartFlag(const uint8 ku8Unit)
{
   return MAIN_OCT_atOnlineCalibSet[ku8Unit].bOcStartFlag;
}

/**********************************************************************
 * Function name    :  MAIN_OCT_vidOcNvmStore
 * Description      :  
 * Input parameter  :  No
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2024/01/19	     V1.0	     Zyx	       Create
 ***********************************************************************/
void MAIN_OCT_vidRestoreOcBlockDefaults(uint8 u8Unit)
{
   uint8 u8Index;

   if(u8Unit < eMAIN_MAX_UNIT_NUM)
   {
      for(u8Index = 0; u8Index < eMAIN_OC_DATA_ARRAY_SIZE; u8Index++)
      {
         MAIN_atOCTrimEcuCfgSet[u8Unit].pas32OCTrimRamBlock[u8Index] = \
            MAIN_atOCTrimEcuCfgSet[u8Unit].aks32OCTrimDefault[u8Index];
      }
   }
   else
   {
      /* Do nothing */
   }
}

/*******************************************************************************
 ****  Private Function Definitions
 ******************************************************************************/
/**********************************************************************
 * Function name    :  MAIN_OCT_vidOcNvmStore
 * Description      :  
 * Input parameter  :  No
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2024/01/19	     V1.0	     Zyx	       Create
 ***********************************************************************/
static void  MAIN_OCT_vidOcRamBlockDataHandle(uint8 u8Unit, MAIN_tOCT_TransDir eGetData)
{
   boolean bLocParamValid = TRUE;

   uint8  u8RamBlockStartIndex = 0;
   uint8  u8LoopIndex = 0;
   volatile  uint32* pu32OcDataPtr = NULL_PTR;

   if(u8Unit < eMAIN_MAX_UNIT_NUM)
   {
      u8RamBlockStartIndex = eMAIN_OC_DATA_ARRAY_SIZE * u8Unit;
      pu32OcDataPtr = (volatile  uint32*)(MAIN_atOCTrimEcuCfgSet[u8Unit].pas32OCTrimRamBlock);
   }
   else
   {
      /* Param error */
      bLocParamValid = FALSE;
   }

   if(TRUE == bLocParamValid)
   {
      switch(eGetData)
      {
         case eMAIN_OCT_PushDataToNvm:
         {
            /* Copy data to NVM ram block */
            for(u8LoopIndex = 0; u8LoopIndex < eMAIN_OC_DATA_ARRAY_SIZE; u8LoopIndex++)
            {
               MAIN_u32OCTrimNvmAlignBuf[u8RamBlockStartIndex + u8LoopIndex] = pu32OcDataPtr[u8LoopIndex];
            }
            break;
         }
         case eMAIN_OCT_GetDataFromNvm:
         {
            /* Get data from NVM ram block */
            for(u8LoopIndex = 0; u8LoopIndex < eMAIN_OC_DATA_ARRAY_SIZE; u8LoopIndex++)
            {
               pu32OcDataPtr[u8LoopIndex] = MAIN_u32OCTrimNvmAlignBuf[u8RamBlockStartIndex + u8LoopIndex];
            }
            break;
         }         
         default:
         {
            break;
         }
      }
   }
}

/**********************************************************************
 * Function name    :  MAIN_OCT_vidOcNvmStore
 * Description      :  
 * Input parameter  :  No
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2024/01/19	     V1.0	     Zyx	       Create
 ***********************************************************************/
static void MAIN_OCT_vidOcNvmStore(void)
{
   uint8 u8Index;

   for(u8Index = 0; u8Index < eMAIN_MAX_UNIT_NUM; u8Index++)
   {
      MAIN_OCT_vidOcRamBlockDataHandle(u8Index, eMAIN_OCT_PushDataToNvm);
   }

   MAIN_OCT_vidOcNvmDataAlign(FALSE);
   Rte_Call_RPort_ASW_NVM_BlockNative_1024_1_SetRamBlockStatus(TRUE);
   NvM_WriteAll();
}

/**********************************************************************
 * Function name    :  MAIN_OCT_vidOcNvmStore
 * Description      :  
 * Input parameter  :  No
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2024/01/19	     V1.0	     Zyx	       Create
 ***********************************************************************/
static boolean MAIN_OCT_bOcDataStore(void)
{
   static uint8 u8LocOCstoreEndDelay = 0;

   uint8 u8Index = 0;
   uint8 u8ErrCode = 0;
   boolean bRetVal = FALSE;
   boolean bOpResult = FALSE;

   switch(MAIN_u8OCStoreState)
   {
      case MAIN_OC_STORE_INIT:
      {
         MAIN_u8OCStoreState = MAIN_OC_STORE_IDLE;
         break;
      }

      case MAIN_OC_STORE_IDLE:
      {
         if(TRUE == MAIN_bOcDataStoreEna)
         {
            MAIN_u8OCStoreState = MAIN_OC_STORE_COPY;
            MAIN_OCT_vidAswOcDataReload();
         }
         break;
      }
      case MAIN_OC_STORE_COPY:
      {
         uint8 u8UnitID;
         uint32 u32RamBlockAddr;

         MAIN_OCT_vidOcNvmStore();
         for(u8Index = 0; u8Index < (sizeof(MAIN_u32FixOcDataBuf) / sizeof(MAIN_u32FixOcDataBuf[0])); u8Index++)
         {
            MAIN_u32FixOcDataBuf[u8Index] = 0;
         }

         for(u8UnitID = 0; u8UnitID < eMAIN_MAX_UNIT_NUM; u8UnitID++)
         {
            if(u8UnitID < eMAIN_MAX_UNIT_NUM)
            {
               u32RamBlockAddr = (uint32)MAIN_atOCTrimEcuCfgSet[u8UnitID].pas32OCTrimRamBlock;
               for(u8Index = 0; u8Index < eMAIN_OC_DATA_ARRAY_SIZE; u8Index++)
               {
                  MAIN_u32FixOcDataBuf[u8Index + eMAIN_OC_NVM_BLOCK_MAX_NUM * u8UnitID] = \
                     *(uint32*)(u32RamBlockAddr + u8Index * sizeof(MAIN_u32FixOcDataBuf[0]));
               }

               MAIN_u32FixOcDataBuf[eMAIN_OC_NVM_BLOCK_MAX_NUM * u8UnitID + eMAIN_OC_CRC_INDEX_INDEX] = \
                  Crc_CalculateCRC32((const uint8*)&MAIN_u32FixOcDataBuf[eMAIN_OC_NVM_BLOCK_MAX_NUM * u8UnitID], \
                                     eMAIN_OC_DATA_ARRAY_SIZE * 4, 0xFFFFFFFF, TRUE);
            }
            else
            {
               /* Do nothing */
               break;
            }
            MAIN_u8OCStoreState = MAIN_OC_STORE_ERASE;
         }
         break;
      }
      case MAIN_OC_STORE_ERASE:
      {
         bOpResult = DFM_bEraseBlock(DFM_OC_TRIM_BLOCK);
         
         if(TRUE == bOpResult)
         {
            MAIN_u8OCStoreState = MAIN_OC_STORE_WRITE;
         }
         break;
      }
      case MAIN_OC_STORE_WRITE:
      {
         bOpResult = DFM_bWriteBlock(DFM_OC_TRIM_BLOCK, &u8ErrCode);
         if(TRUE == bOpResult)
         {
            MAIN_u8OCStoreState = MAIN_OC_STORE_END;
         }
         break;
      }
      case MAIN_OC_STORE_END:
      {
         if(u8LocOCstoreEndDelay < 4)
         {
            u8LocOCstoreEndDelay++;
         }
         else
         {
            u8LocOCstoreEndDelay = 0;
            MAIN_u8OCStoreState = MAIN_OC_STORE_IDLE;
            bRetVal = TRUE;
         }
         break;
      }
      default:
      {
         MAIN_u8OCStoreState = MAIN_OC_STORE_IDLE;
         break;
      }
   }

   return bRetVal;
}

/**********************************************************************
 * Function name    :  MAIN_OCT_vidOcNvmStore
 * Description      :  
 * Input parameter  :  No
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author	   Operation
 * --------------------------------------------------------------------
 * 2024/01/19	     V1.0	     Zyx	       Create
 ***********************************************************************/
static void MAIN_OCT_vidAswOcDataReload(void)
{
   uint8 u8UnitIndex;

   for(u8UnitIndex = 0; u8UnitIndex < eMAIN_MAX_UNIT_NUM; u8UnitIndex++)
   {
      if(TRUE == *(MAIN_atOCTrimEcuCfgSet[u8UnitIndex].pbOCStoreAswReq))
      {
         MAIN_atOCTrimEcuCfgSet[u8UnitIndex].vidOcAswCalRestore();
      }
   }
}

/**********************************************************************
 * Function name    :  MAIN_OCT_vidOcNvmDataAlign
 * Description      :  
 * Input parameter  :  No
 * Output parameter :  No
 * return           :  No
 * Modify          Version     Author     Operation
 * --------------------------------------------------------------------
 * 2024/02/20       V1.0        Zyx        Create
 ***********************************************************************/
static void MAIN_OCT_vidOcNvmDataAlign(boolean bAlignReq)
{
   uint8 u8Index = 0;
   uint8 *pu8Ptr = NULL_PTR;

   pu8Ptr = (uint8*)&MAIN_u32OCTrimNvmAlignBuf[0];
   if(TRUE == bAlignReq)
   {
      for(u8Index = 0; u8Index < (eMAIN_OC_DATA_ARRAY_SIZE * eMAIN_MAX_UNIT_NUM * 4); u8Index++)
      {
         pu8Ptr[u8Index] = Rte_CPim_ASW_NVM_ASW_NVM_BlockNative_1024_1[u8Index];
      }
   }
   else
   {
      for(u8Index = 0; u8Index < (eMAIN_OC_DATA_ARRAY_SIZE * eMAIN_MAX_UNIT_NUM * 4); u8Index++)
      {
         Rte_CPim_ASW_NVM_ASW_NVM_BlockNative_1024_1[u8Index] = pu8Ptr[u8Index];
      }
   }
}

/******************************************************************************
*  
* !FuncName   : MAIN_OCT_vidOcStateMng
* !Trigger       : 200ms.  
* !Description : Online calibration state management.
*
******************************************************************************
* !LastAuthor  : Daniel
******************************************************************************/
static void MAIN_OCT_vidOcStateMng(const uint8 ku8Unit)
{
   boolean bLocRocCondSts;
   
   switch (MAIN_OCT_atOnlineCalibSet[ku8Unit].u8OcState)
   {
      case eMAIN_OC_STT_INIT:
      {
         MAIN_OCT_atOnlineCalibSet[ku8Unit].u8OcState     = eMAIN_OC_STT_IDLE;
         MAIN_OCT_atOnlineCalibSet[ku8Unit].u8OfsAlCalSts = MAIN_ROC_STS_NOT_CAL;
         break;
      }
      case eMAIN_OC_STT_IDLE:
      {
         bLocRocCondSts = MAIN_atOCTrimEcuCfgSet[ku8Unit].bGetRocCondition();

         if((TRUE == bLocRocCondSts)
         && (0x58 == MAIN_OCT_atOnlineCalibSet[ku8Unit].u8TrigOcByUser))
         {
            MAIN_OCT_atOnlineCalibSet[ku8Unit].u8TrigOcByUser  = 0;
            MAIN_OCT_atOnlineCalibSet[ku8Unit].bOcModeEna      = TRUE;
            MAIN_OCT_atOnlineCalibSet[ku8Unit].bOcStartFlag    = FALSE;
            MAIN_OCT_atOnlineCalibSet[ku8Unit].bOcRdResultFlag = FALSE;
            MAIN_OCT_atOnlineCalibSet[ku8Unit].u8OcState       = eMAIN_OC_STT_START;
         }
         else
         {
            MAIN_OCT_atOnlineCalibSet[ku8Unit].bOcModeEna      = FALSE;
            MAIN_OCT_atOnlineCalibSet[ku8Unit].bOcStartFlag    = FALSE;
            MAIN_OCT_atOnlineCalibSet[ku8Unit].bOcRdResultFlag = FALSE;
         }
         break;
      }
      case eMAIN_OC_STT_START:
      {
         MAIN_OCT_atOnlineCalibSet[ku8Unit].bOcModeEna      = TRUE;
         MAIN_OCT_atOnlineCalibSet[ku8Unit].bOcStartFlag    = TRUE;
         MAIN_OCT_atOnlineCalibSet[ku8Unit].bOcRdResultFlag = FALSE;
         MAIN_OCT_atOnlineCalibSet[ku8Unit].u8OcState       = eMAIN_OC_STT_GOING;
         break;
      }
      case eMAIN_OC_STT_GOING:
      {
         MAIN_OCT_atOnlineCalibSet[ku8Unit].bOcModeEna      = TRUE;
         MAIN_OCT_atOnlineCalibSet[ku8Unit].bOcStartFlag    = TRUE;
         MAIN_OCT_atOnlineCalibSet[ku8Unit].bOcRdResultFlag = FALSE;
         MAIN_OCT_atOnlineCalibSet[ku8Unit].u8OfsAlCalSts   = MAIN_ROC_STS_ONGOING;
         if (MAIN_OCT_atOnlineCalibSet[ku8Unit].bOcFinshFlg)
         {
            /* !Comment: When OC finished, jump to finish state. */
            /* in order to add 200ms delay for failure flag reported after finish flag reported. */
            MAIN_OCT_atOnlineCalibSet[ku8Unit].u8OcState = eMAIN_OC_STT_FINISH;
         }
         break;
      }
      case eMAIN_OC_STT_FINISH:
      {
         if((FALSE != MAIN_OCT_atOnlineCalibSet[ku8Unit].bOcFailureFlg)
         || (FALSE != MAIN_OCT_atOnlineCalibSet[ku8Unit].bOcNotRatFlg))
         {
            MAIN_OCT_atOnlineCalibSet[ku8Unit].u8OcState          = eMAIN_OC_STT_FAILED;
            MAIN_OCT_atOnlineCalibSet[ku8Unit].u8OfsAlCalSts      = MAIN_ROC_STS_CALB_FAIL;
            MAIN_OCT_atOnlineCalibSet[ku8Unit].u8OcStsRptDelayCnt = 0;
         }
         else
         {
            /* !Comment: Read OC data, start store.*/
            MAIN_OCT_SetOcStudyDataStoreReq(ku8Unit);
            MAIN_OCT_atOnlineCalibSet[ku8Unit].u8OcState = eMAIN_OC_STT_STORE;
         }
         break;
      }
      case eMAIN_OC_STT_STORE:
      {
         if(TRUE == MAIN_bOCStoreResult)
         {
            MAIN_OCT_atOnlineCalibSet[ku8Unit].u8OcState          = eMAIN_OC_STT_SUCCS;
            MAIN_OCT_atOnlineCalibSet[ku8Unit].u8OfsAlCalSts      = MAIN_ROC_STS_CALB_SUCC;
            MAIN_OCT_atOnlineCalibSet[ku8Unit].bOcModeEna         = FALSE;
            MAIN_OCT_atOnlineCalibSet[ku8Unit].bOcStartFlag       = FALSE;
            MAIN_OCT_atOnlineCalibSet[ku8Unit].u8OcStsRptDelayCnt = 0;
         }
         break;
      }
      case eMAIN_OC_STT_SUCCS:
      {
         if (MAIN_OCT_atOnlineCalibSet[ku8Unit].u8OcStsRptDelayCnt < 2)
         {
            MAIN_OCT_atOnlineCalibSet[ku8Unit].u8OcStsRptDelayCnt++;
         }
         else
         {
            MAIN_OCT_atOnlineCalibSet[ku8Unit].u8OcState       = eMAIN_OC_STT_END;
            MAIN_OCT_atOnlineCalibSet[ku8Unit].bOcModeEna      = FALSE;
            MAIN_OCT_atOnlineCalibSet[ku8Unit].bOcStartFlag    = FALSE;
            MAIN_OCT_atOnlineCalibSet[ku8Unit].bOcRdResultFlag = TRUE;
            MAIN_OCT_atOnlineCalibSet[ku8Unit].u8OfsAlCalSts   = MAIN_ROC_STS_CALB_SUCC;
         }
         break;
      }
      case eMAIN_OC_STT_FAILED:
      {
         if (MAIN_OCT_atOnlineCalibSet[ku8Unit].u8OcStsRptDelayCnt < 2)
         {
            MAIN_OCT_atOnlineCalibSet[ku8Unit].u8OcStsRptDelayCnt++;
         }
         else
         {
            MAIN_OCT_atOnlineCalibSet[ku8Unit].u8OcState       = eMAIN_OC_STT_END;
            MAIN_OCT_atOnlineCalibSet[ku8Unit].bOcModeEna      = FALSE;
            MAIN_OCT_atOnlineCalibSet[ku8Unit].bOcStartFlag    = FALSE;
            MAIN_OCT_atOnlineCalibSet[ku8Unit].bOcRdResultFlag = TRUE;
            MAIN_OCT_atOnlineCalibSet[ku8Unit].u8OfsAlCalSts   = MAIN_ROC_STS_CALB_FAIL;
         }
         break;
      }
      case eMAIN_OC_STT_END:
      {
         if ( (FALSE == MAIN_OCT_atOnlineCalibSet[ku8Unit].bOcFinshFlg))
         {
            MAIN_OCT_atOnlineCalibSet[ku8Unit].u8OcState          = eMAIN_OC_STT_IDLE;
            MAIN_OCT_atOnlineCalibSet[ku8Unit].bOcModeEna         = FALSE;
            MAIN_OCT_atOnlineCalibSet[ku8Unit].bOcStartFlag       = FALSE;
            MAIN_OCT_atOnlineCalibSet[ku8Unit].bOcRdResultFlag    = FALSE;
            MAIN_OCT_atOnlineCalibSet[ku8Unit].u8OcStsRptDelayCnt = 0;
         }
         break;
      }
      default:
      {
         break;
      }
   }
}

