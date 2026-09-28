
/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/
#include "Rte_ASW_NVM.h"
#include "NvM_Cfg.h"

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "MAIN_CalibData.h"
#include "MAIN_tsk.h"
#include "MAIN_L.h"
#include "GMAIN_tsk.h"
#include "GMAIN_L.h"
#include "DFM.h"
#include "Crc.h"

/*******************************************************************************
 ****  Global Function Declarations
 ******************************************************************************/

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/
#define CALIB_RC_GAIN_LOW_LIMIT      (9000u)
#define CALIB_RC_GAIN_HIGH_LIMIT     (11000u)
#define CALIB_RC_GAIN_DEFAULT_VAL    (10000u)

/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/
enum eCalibStoreState{
   MAIN_CALIB_STORE_INIT = 0,
   MAIN_CALIB_STORE_IDLE,
   MAIN_CALIB_STORE_COPY,
   MAIN_CALIB_STORE_ERASE,
   MAIN_CALIB_STORE_WRITE,
   MAIN_CALIB_STORE_END
};

typedef struct MAIN_tCalibDataLimit{
   uint16 u16LowLimit;
   uint16 u16HighLimit;
   uint16 u16DefaultVal;
}MAIN_tCalibDataLimit;

/*******************************************************************************
 ****  Exported Constant Definitions
 ******************************************************************************/

/*******************************************************************************
 **** Exported Variable Definitions
 ******************************************************************************/

/*******************************************************************************
 **** Private Variable Definitions
 ******************************************************************************/
static uint8   MAIN_u8CalibStoreState = 0;
static boolean MAIN_bCalibStoreEna    = FALSE;
static boolean MAIN_bRcGainStaoreEna  = FALSE;
static boolean MAIN_bCalibStoreResult = FALSE;

/*******************************************************************************
 **** Private Constant Definitions
 ******************************************************************************/
static const MAIN_tCalibDataLimit MAIN_CAL_katRcGainLimitSet[eMAIN_CALIB_BUF_MAX_RC_NO] = {
   {CALIB_RC_GAIN_LOW_LIMIT, CALIB_RC_GAIN_HIGH_LIMIT, CALIB_RC_GAIN_DEFAULT_VAL},
   {CALIB_RC_GAIN_LOW_LIMIT, CALIB_RC_GAIN_HIGH_LIMIT, CALIB_RC_GAIN_DEFAULT_VAL},
   {CALIB_RC_GAIN_LOW_LIMIT, CALIB_RC_GAIN_HIGH_LIMIT, CALIB_RC_GAIN_DEFAULT_VAL},
   {CALIB_RC_GAIN_LOW_LIMIT, CALIB_RC_GAIN_HIGH_LIMIT, CALIB_RC_GAIN_DEFAULT_VAL},
   {CALIB_RC_GAIN_LOW_LIMIT, CALIB_RC_GAIN_HIGH_LIMIT, CALIB_RC_GAIN_DEFAULT_VAL},
   {CALIB_RC_GAIN_LOW_LIMIT, CALIB_RC_GAIN_HIGH_LIMIT, CALIB_RC_GAIN_DEFAULT_VAL},
   {CALIB_RC_GAIN_LOW_LIMIT, CALIB_RC_GAIN_HIGH_LIMIT, CALIB_RC_GAIN_DEFAULT_VAL},
   {CALIB_RC_GAIN_LOW_LIMIT, CALIB_RC_GAIN_HIGH_LIMIT, CALIB_RC_GAIN_DEFAULT_VAL},
   {CALIB_RC_GAIN_LOW_LIMIT, CALIB_RC_GAIN_HIGH_LIMIT, CALIB_RC_GAIN_DEFAULT_VAL},
   {CALIB_RC_GAIN_LOW_LIMIT, CALIB_RC_GAIN_HIGH_LIMIT, CALIB_RC_GAIN_DEFAULT_VAL},
   {CALIB_RC_GAIN_LOW_LIMIT, CALIB_RC_GAIN_HIGH_LIMIT, CALIB_RC_GAIN_DEFAULT_VAL},
   {CALIB_RC_GAIN_LOW_LIMIT, CALIB_RC_GAIN_HIGH_LIMIT, CALIB_RC_GAIN_DEFAULT_VAL},
   {CALIB_RC_GAIN_LOW_LIMIT, CALIB_RC_GAIN_HIGH_LIMIT, CALIB_RC_GAIN_DEFAULT_VAL},
   {CALIB_RC_GAIN_LOW_LIMIT, CALIB_RC_GAIN_HIGH_LIMIT, CALIB_RC_GAIN_DEFAULT_VAL},
   {CALIB_RC_GAIN_LOW_LIMIT, CALIB_RC_GAIN_HIGH_LIMIT, CALIB_RC_GAIN_DEFAULT_VAL},
   {CALIB_RC_GAIN_LOW_LIMIT, CALIB_RC_GAIN_HIGH_LIMIT, CALIB_RC_GAIN_DEFAULT_VAL},
   {CALIB_RC_GAIN_LOW_LIMIT, CALIB_RC_GAIN_HIGH_LIMIT, CALIB_RC_GAIN_DEFAULT_VAL},
   {CALIB_RC_GAIN_LOW_LIMIT, CALIB_RC_GAIN_HIGH_LIMIT, CALIB_RC_GAIN_DEFAULT_VAL},
   {CALIB_RC_GAIN_LOW_LIMIT, CALIB_RC_GAIN_HIGH_LIMIT, CALIB_RC_GAIN_DEFAULT_VAL},
   {CALIB_RC_GAIN_LOW_LIMIT, CALIB_RC_GAIN_HIGH_LIMIT, CALIB_RC_GAIN_DEFAULT_VAL},
   {CALIB_RC_GAIN_LOW_LIMIT, CALIB_RC_GAIN_HIGH_LIMIT, CALIB_RC_GAIN_DEFAULT_VAL},
   {CALIB_RC_GAIN_LOW_LIMIT, CALIB_RC_GAIN_HIGH_LIMIT, CALIB_RC_GAIN_DEFAULT_VAL},
   {CALIB_RC_GAIN_LOW_LIMIT, CALIB_RC_GAIN_HIGH_LIMIT, CALIB_RC_GAIN_DEFAULT_VAL},
   {CALIB_RC_GAIN_LOW_LIMIT, CALIB_RC_GAIN_HIGH_LIMIT, CALIB_RC_GAIN_DEFAULT_VAL},
   {CALIB_RC_GAIN_LOW_LIMIT, CALIB_RC_GAIN_HIGH_LIMIT, CALIB_RC_GAIN_DEFAULT_VAL},
};

/*******************************************************************************
 **** Global Variable Definitions
 ******************************************************************************/
uint16 MAIN_au16CalibParamNvm[eMAIN_CALIB_ECU_NO][eMAIN_CALIB_BUF_MAX_NO];
uint16 RC_au16VoltageGain[eMAIN_CALIB_BUF_MAX_RC_NO] = {0u};
const uint16 RC_kau16VoltageGain[eMAIN_CALIB_BUF_MAX_RC_NO] = {
   10000u, 10000u, 10000u, 10000u, 10000u,
   10000u, 10000u, 10000u, 10000u, 10000u,
   10000u, 10000u, 10000u, 10000u, 10000u,
   10000u, 10000u, 10000u, 10000u, 10000u,
   10000u, 10000u, 10000u, 10000u, 10000u,
};

/*******************************************************************************
 ****  Private Function Declarations
 ******************************************************************************/
static boolean MAIN_CAL_bCalibDataStore(void);
static void MAIN_CAL_vidRcGainStore(void);

/*******************************************************************************
 ****  Global Function Definitions
 ******************************************************************************/
void MAIN_CAL_vidCalibDataMng(void)
{
   MAIN_CAL_vidRcGainStore();
   MAIN_bCalibStoreResult = MAIN_CAL_bCalibDataStore();
   if(TRUE == MAIN_bCalibStoreResult)
   {
      MAIN_CAL_vidSetCalibDataStoreReq(FALSE);
   }
}

void MAIN_CAL_vidSetCalibDataStoreReq(boolean bStoreReq)
{
   MAIN_bCalibStoreEna = bStoreReq;
   if(TRUE == bStoreReq)
   {
      MAIN_bRcGainStaoreEna = bStoreReq;
   }
}

uint16 * MAIN_CAL_pu16GetCalDataBuf(const uint8 ku8EcuId)
{
   return &MAIN_au16CalibParamNvm[ku8EcuId][0];
}

uint16 MAIN_CAL_u16GetRcGainData(const uint8 ku8R)
{
   return RC_au16VoltageGain[ku8R];
}

void MAIN_CAL_vidCheckAllCalibData(void)
{
   uint8  u8EcuIndex;
   uint8  u8ParamIndex;
   uint16 u16LowLimit;
   uint16 u16HighLimit;

   for(u8ParamIndex = 0; u8ParamIndex < eMAIN_CALIB_BUF_VALID_RC_NO; u8ParamIndex++)
   {
      u16LowLimit  = MAIN_CAL_katRcGainLimitSet[u8ParamIndex].u16LowLimit;
      u16HighLimit = MAIN_CAL_katRcGainLimitSet[u8ParamIndex].u16HighLimit;

      if(RC_au16VoltageGain[u8ParamIndex] < u16LowLimit)
      {
         RC_au16VoltageGain[u8ParamIndex] = u16LowLimit;
      }
      else if(RC_au16VoltageGain[u8ParamIndex] > u16HighLimit)
      {
         RC_au16VoltageGain[u8ParamIndex] = u16HighLimit;
      }
   }
}

/*******************************************************************************
 ****  Private Function Definitions
 ******************************************************************************/
/*************************************************************************
*
* !FuncName    : MAIN_CAL_bCalibDataStore
* !Description : Core0 100ms dispatch
* !Brief       : Calib Data DFlash value write
* !Time        : July 5 2024
**************************************************************************
* !LastAuthor  : GYT
**************************************************************************/
static boolean MAIN_CAL_bCalibDataStore(void)
{
   static uint8 u8CalibStoreEndDelay = 0;
   uint8 u8ErrCode = 0;

   boolean bOpResult    = FALSE;
   boolean bStoreResult = FALSE;
   
   switch(MAIN_u8CalibStoreState)
   {
      case MAIN_CALIB_STORE_INIT:
      {
         MAIN_u8CalibStoreState = MAIN_CALIB_STORE_IDLE;
         break;
      }
      case MAIN_CALIB_STORE_IDLE:
      {
         if(TRUE == MAIN_bCalibStoreEna)
         {
            MAIN_u8CalibStoreState = MAIN_CALIB_STORE_ERASE;
         }
         break;
      }
      case MAIN_CALIB_STORE_COPY:
      {
         MAIN_u8CalibStoreState = MAIN_CALIB_STORE_ERASE;
         break;
      }
      case MAIN_CALIB_STORE_ERASE:
      {
         bOpResult = DFM_bEraseBlock(DFM_CUR_CAL_BLOCK);
         if(TRUE == bOpResult)
         {
            MAIN_u8CalibStoreState = MAIN_CALIB_STORE_WRITE;   
         }
         break;
      }
      case MAIN_CALIB_STORE_WRITE:
      {
         bOpResult = DFM_bWriteBlock(DFM_CUR_CAL_BLOCK, &u8ErrCode);
         if(TRUE == bOpResult)
         {
            MAIN_u8CalibStoreState = MAIN_CALIB_STORE_END;
         }
         break;
      }
      case MAIN_CALIB_STORE_END:
      {
         if(u8CalibStoreEndDelay < 4)
         {
            u8CalibStoreEndDelay++;
         }
         else
         {
            u8CalibStoreEndDelay = 0;
            MAIN_u8CalibStoreState = MAIN_CALIB_STORE_IDLE;
            bStoreResult = TRUE;
         }
         break;
      }
      default:
      {
         MAIN_u8CalibStoreState = MAIN_CALIB_STORE_IDLE;
         break;
      }
   }

   return bStoreResult;   
}

static void MAIN_CAL_vidRcGainStore(void)
{
   if(TRUE == MAIN_bRcGainStaoreEna)
   {
      MAIN_bRcGainStaoreEna = FALSE;
      NvM_SetRamBlockStatus(NvMConf_NvMBlockDescriptor_NvM_RCVoltageGain, TRUE);
      NvM_WriteBlock(NvMConf_NvMBlockDescriptor_NvM_RCVoltageGain, NULL_PTR);
   }
}
