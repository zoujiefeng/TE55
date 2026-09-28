#ifndef __MAIN_PDU_CTRL_H_
#define __MAIN_PDU_CTRL_H_


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
typedef enum MAIN_PDUC_KMState{
   eMAIN_PDUC_KM_STATE_OPEN = 0,  /* Disconnected */
   eMAIN_PDUC_KM_STATE_CLOSE,

   eMAIN_PDUC_KM_STATE_UNDEF
}MAIN_PDUC_KMState;

/*******************************************************************************
 ****  Exported Constant Declarations
 ******************************************************************************/

/*******************************************************************************
 ****  Exported Variable Declarations
 ******************************************************************************/

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Exported Function Declarations
 ******************************************************************************/
extern void MAIN_PDUC_vidMainFunction(void);
extern void MAIN_PDUC_vidCtrl_K1_KCF_XJCQ1(MAIN_PDUC_KMState eKMState);
extern void MAIN_PDUC_vidCtrl_K2_KCF_XJCQ2(MAIN_PDUC_KMState eKMState);
extern void MAIN_PDUC_vidCtrl_K3_KCF_XJCQ3(MAIN_PDUC_KMState eKMState);
extern void MAIN_PDUC_vidCtrl_K4_KCF_XJCQ4(MAIN_PDUC_KMState eKMState);
extern void MAIN_PDUC_vidCtrl_KM5_KC1Z(MAIN_PDUC_KMState eKMState);
extern void MAIN_PDUC_vidCtrl_KM7_KC2Z(MAIN_PDUC_KMState eKMState);
extern void MAIN_PDUC_vidCtrl_KM9_KC3Z(MAIN_PDUC_KMState eKMState);
extern void MAIN_PDUC_vidCtrl_KM11_KC4Z(MAIN_PDUC_KMState eKMState);
extern void MAIN_PDUC_vidCtrl_KM6_KC1F(MAIN_PDUC_KMState eKMState);
extern void MAIN_PDUC_vidCtrl_KM8_KC2F(MAIN_PDUC_KMState eKMState);
extern void MAIN_PDUC_vidCtrl_KM10_KC3F(MAIN_PDUC_KMState eKMState);
extern void MAIN_PDUC_vidCtrl_KM12_KC4F(MAIN_PDUC_KMState eKMState);
extern void MAIN_PDUC_vidCtrl_KM13_SZ1(MAIN_PDUC_KMState eKMState);
extern void MAIN_PDUC_vidCtrl_KM14_XGLFZ(MAIN_PDUC_KMState eKMState);
extern void MAIN_PDUC_vidCtrl_KM15_ZXFZ(MAIN_PDUC_KMState eKMState);

#endif /* __MAIN_PDU_CTRL_H_ */

