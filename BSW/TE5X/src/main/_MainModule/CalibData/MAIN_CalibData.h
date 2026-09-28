#ifndef __MAIN_CALIB_DATA_H_
#define __MAIN_CALIB_DATA_H_


/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "Std_Types.h"

/*******************************************************************************
 ****  Exported Macro Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/

/*******************************************************************************
 ****  Exported Type Definitions
 ******************************************************************************/
enum eCalibIndex{
   eMAIN_CALIB_BUF_UI_INDEX = 0,
   eMAIN_CALIB_BUF_VI_INDEX,
   eMAIN_CALIB_BUF_WI_INDEX,
   eMAIN_CALIB_BUF_VO_INDEX,
   eMAIN_CALIB_BUF_VALID_PARAM_NO,

   eMAIN_CALIB_BUF_MAX_NO = 16
};

enum{
   eMAIN_CALIB_IDX_MCU1 = 0,
   eMAIN_CALIB_IDX_MCU2,
   eMAIN_CALIB_IDX_ACM,
   eMAIN_CALIB_IDX_EPS,
   eMAIN_CALIB_ECU_NO
};

enum eRcGainIndex{
   eMAIN_CALIB_BUF_RC00_INDEX = 0,
   eMAIN_CALIB_BUF_RC01_INDEX,
   eMAIN_CALIB_BUF_RC02_INDEX,
   eMAIN_CALIB_BUF_RC03_INDEX,
   eMAIN_CALIB_BUF_RC04_INDEX,
   eMAIN_CALIB_BUF_RC05_INDEX,
   eMAIN_CALIB_BUF_RC06_INDEX,
   eMAIN_CALIB_BUF_RC07_INDEX,
   eMAIN_CALIB_BUF_RC08_INDEX,
   eMAIN_CALIB_BUF_RC09_INDEX,
   eMAIN_CALIB_BUF_RC10_INDEX,
   eMAIN_CALIB_BUF_RC11_INDEX,
   eMAIN_CALIB_BUF_RC12_INDEX,
   eMAIN_CALIB_BUF_RC13_INDEX,
   eMAIN_CALIB_BUF_RC14_INDEX,
   eMAIN_CALIB_BUF_RC15_INDEX,
   eMAIN_CALIB_BUF_RC16_INDEX,
   eMAIN_CALIB_BUF_VALID_RC_NO,

   eMAIN_CALIB_BUF_MAX_RC_NO = 25
};

/*******************************************************************************
 ****  Exported Constant Declarations
 ******************************************************************************/
extern const uint16 RC_kau16VoltageGain[eMAIN_CALIB_BUF_MAX_RC_NO];

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/
#define MAIN_CALIB_BUF_MAX_SIZE   (eMAIN_CALIB_ECU_NO * eMAIN_CALIB_BUF_MAX_NO)

#define MAIN_CALIB_

/*******************************************************************************
 ****  Exported Variable Declarations
 ******************************************************************************/
extern uint16 MAIN_au16CalibParamNvm[eMAIN_CALIB_ECU_NO][eMAIN_CALIB_BUF_MAX_NO];
extern uint16 RC_au16VoltageGain[eMAIN_CALIB_BUF_MAX_RC_NO];

/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Exported Function Declarations
 ******************************************************************************/
extern void     MAIN_CAL_vidCalibDataMng(void);
extern void     MAIN_CAL_vidCheckAllCalibData(void);
extern void     MAIN_CAL_vidSetCalibDataStoreReq(boolean bStoreReq);
extern uint16 * MAIN_CAL_pu16GetCalDataBuf(const uint8 ku8EcuId);
extern uint16   MAIN_CAL_u16GetRcGainData(const uint8 ku8R);

#endif /* __MAIN_CALIB_DATA_H_ */

