#ifndef __MAIN_OC_TRIM_H_
#define __MAIN_OC_TRIM_H_


/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "Std_Types.h"

/*******************************************************************************
 ****  Exported Macro Definitions
 ******************************************************************************/
/*---------------------------------------------------------------------------*/
/* Default values of online calibration data                                 */
/* Below actions will be taken when NVM data is invalid                      */
/*                                                                           */
/* GSDMTMEP_OffsetCosTrimC     = GMain_aku32OCTrim_def[0]                      */
/* GSDMTMEP_OffsetSinTrimC     = GMain_aku32OCTrim_def[1]                      */
/* GSDMTMEP_GainCosTrimC       = GMain_aku32OCTrim_def[2]                      */
/* GSDMTMEP_GainSinTrimC       = GMain_aku32OCTrim_def[3]                      */
/* GSDMTMEP_AutoPhasingAngleC  = GMain_aku32OCTrim_def[4]                      */
/*                                                                           */
/*---------------------------------------------------------------------------*/
#define GOFFSET_COS_TRIM_PHYS       (-2026.0f)
#define GOFFSET_SIN_TRIM_PHYS       (-2059.0f)
#define GGAIN_COS_TRIM_PHYS         (-1.4017f)
#define GGAIN_SIN_TRIM_PHYS         (1.4145f)
#define GAUTOPHASINGANGLE_PHYS      (0)

#define GOC_TRIM_DATA_GAIN          ((float)(10000.0f))
#define GOFFSET_COS_TRIM_SIGN       (sint32)GOFFSET_COS_TRIM_PHYS
#define GOFFSET_SIN_TRIM_SIGN       (sint32)GOFFSET_SIN_TRIM_PHYS
#define GGAIN_COS_TRIM_SIGN         (sint32)(GGAIN_COS_TRIM_PHYS * GOC_TRIM_DATA_GAIN)
#define GGAIN_SIN_TRIM_SIGN         (sint32)(GGAIN_SIN_TRIM_PHYS * GOC_TRIM_DATA_GAIN)
#define GAUTOPHASINGANGLE_SIGN      (sint32)(GAUTOPHASINGANGLE_PHYS * GOC_TRIM_DATA_GAIN)

/*---------------------------------------------------------------------------*/
/* Default values of online calibration data                                 */
/* Below actions will be taken when NVM data is invalid                      */
/*                                                                           */
/* SDMTMEP_OffsetCosTrimC     = Main_aku32OCTrim_def[0]                      */
/* SDMTMEP_OffsetSinTrimC     = Main_aku32OCTrim_def[1]                      */
/* SDMTMEP_GainCosTrimC       = Main_aku32OCTrim_def[2]                      */
/* SDMTMEP_GainSinTrimC       = Main_aku32OCTrim_def[3]                      */
/* SDMTMEP_AutoPhasingAngleC  = Main_aku32OCTrim_def[4]                      */
/*                                                                           */
/*---------------------------------------------------------------------------*/
#define OFFSET_COS_TRIM_PHYS       (-2061.0f)
#define OFFSET_SIN_TRIM_PHYS       (-2028.0f)
#define GAIN_COS_TRIM_PHYS         (1.3848f)
#define GAIN_SIN_TRIM_PHYS         (1.3944f)
#define AUTOPHASINGANGLE_PHYS      (0)

#define OC_TRIM_DATA_GAIN          ((float)(10000.0f))
#define OFFSET_COS_TRIM_SIGN       (sint32)OFFSET_COS_TRIM_PHYS
#define OFFSET_SIN_TRIM_SIGN       (sint32)OFFSET_SIN_TRIM_PHYS
#define GAIN_COS_TRIM_SIGN         (sint32)(GAIN_COS_TRIM_PHYS * OC_TRIM_DATA_GAIN )
#define GAIN_SIN_TRIM_SIGN         (sint32)(GAIN_SIN_TRIM_PHYS * OC_TRIM_DATA_GAIN)
#define AUTOPHASINGANGLE_SIGN      (sint32)(AUTOPHASINGANGLE_PHYS * OC_TRIM_DATA_GAIN)

#define MAIN_OC_DATA_ARRAY_SIZE     5

/* !Comment: OC status. */
#define MAIN_ROC_STS_NOT_CAL        (0U)
#define MAIN_ROC_STS_CALB_SUCC      (1U)
#define MAIN_ROC_STS_CALB_FAIL      (2U)
#define MAIN_ROC_STS_ONGOING        (3U)

typedef enum MAIN_CONTROL_UNIT_INDEX{
   eMAIN_UNIT_MCU_INDEX = 0,
   eMAIN_UNIT_GCU_INDEX,
   eMAIN_MAX_UNIT_NUM       /* NVM block size needs to be synchronized: DFM_OC_RAM_BLOCK_LEN = MAIN_MAX_UNIT_NUM * 32 */
}MAIN_CONTROL_UNIT_INDEX; 

/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/

/*******************************************************************************
 ****  Exported Type Definitions
 ******************************************************************************/
   
/*******************************************************************************
 ****  Exported Constant Declarations
 ******************************************************************************/
extern const sint32 MAIN_aks32OCTrimNvm_def[MAIN_OC_DATA_ARRAY_SIZE];
extern const sint32 GMAIN_aks32OCTrimNvm_def[MAIN_OC_DATA_ARRAY_SIZE];

/*******************************************************************************
 ****  Exported Variable Declarations
 ******************************************************************************/
extern uint32 MAIN_u32FixOcDataBuf[];

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/
   
/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Exported Function Declarations
 ******************************************************************************/
extern boolean MAIN_OCT_bCheckOcTrimData(uint8 u8Unit);
extern void    MAIN_OCT_vidGetOcTrimData(void);
extern void    MAIN_OCT_vidOcDataMng(void);
extern void    MAIN_OCT_SetOcDataStoreReq(boolean bStoreReq);
extern void    MAIN_OCT_vidRestoreOcBlockDefaults(uint8 u8Unit);

extern void    MAIN_OCT_vidTrigOcCalib(const uint8 ku8Unit);
extern uint8   MAIN_OCT_u8GetOcCalibState(const uint8 ku8Unit);
extern void    MAIN_OCT_vidSetOcFinishFlg(const uint8 ku8Unit, boolean bFlag);
extern void    MAIN_OCT_vidSetOcFailureFlg(const uint8 ku8Unit, boolean bFlag);
extern void    MAIN_OCT_vidSetOcNotRatFlg(const uint8 ku8Unit, boolean bFlag);
extern boolean MAIN_OCT_bGetOcModeEna(const uint8 ku8Unit);
extern boolean MAIN_OCT_bGetOcRdResultFlag(const uint8 ku8Unit);
extern boolean MAIN_OCT_bGetOcStartFlag(const uint8 ku8Unit);

#endif /* __MAIN_OC_TRIM_H_ */

