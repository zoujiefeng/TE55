/* *****************************************************************************
 * BEGIN: Banner
 *-----------------------------------------------------------------------------
 *                                 ETAS GmbH
 *                      D-70469 Stuttgart, Borsigstr. 14
 *-----------------------------------------------------------------------------
 *    Administrative Information (automatically filled in by ISOLAR)         
 *-----------------------------------------------------------------------------
 * Name: 
 * Description:
 * Version: 1.0
 *-----------------------------------------------------------------------------
 * END: Banner
 ******************************************************************************

 * Project : IPC_TC387_AR422
 * Component: /Components/ASW_COM
 * Runnable : All Runnables in SwComponent
 *****************************************************************************
 * Tool Version: ISOLAR-A/B 9.2.1
 * Author: dell
 * Date : 15:44:29 2022
 ****************************************************************************/

#include "Rte_ASW_COM.h"

#include "CanIf.h"
#include "CddCom.h"

/*PROTECTED REGION ID(FileHeaderUserDefinedIncludes :COM_BCM_peps_Rec100ms) ENABLED START */
/* Start of user defined includes  - Do not remove this comment */
/* End of user defined includes - Do not remove this comment */
/*PROTECTED REGION END */

/*PROTECTED REGION ID(FileHeaderUserDefinedConstants :COM_BCM_peps_Rec100ms) ENABLED START */
/* Start of user defined constant definitions - Do not remove this comment */

#define ASWCOM_TX_PDU_CANID_TYPE_EXTENDED    (0x00000001u << 31u)
#define ASWCOM_TX_PDU_CANID_TYPE_STANDARD    (0x00000000u << 31u)

#define ASWCOM_TX_PDU_CANID_BASIC_01       (0x1CFF8382u | ASWCOM_TX_PDU_CANID_TYPE_EXTENDED)
#define ASWCOM_TX_PDU_CANID_BASIC_02       (0x18FEDA82u | ASWCOM_TX_PDU_CANID_TYPE_EXTENDED)
#define ASWCOM_TX_PDU_CANID_BASIC_03       (0x1CFF8383u | ASWCOM_TX_PDU_CANID_TYPE_EXTENDED)
#define ASWCOM_TX_PDU_CANID_BASIC_04       (0x18FEDA83u | ASWCOM_TX_PDU_CANID_TYPE_EXTENDED)
#define ASWCOM_TX_PDU_CANID_BASIC_05       (0x18FEDA30u | ASWCOM_TX_PDU_CANID_TYPE_EXTENDED)
#define ASWCOM_TX_PDU_CANID_BASIC_06       (0x18FEDA8Au | ASWCOM_TX_PDU_CANID_TYPE_EXTENDED)
#define ASWCOM_TX_PDU_CANID_BASIC_07       (0x18FEDA8Bu | ASWCOM_TX_PDU_CANID_TYPE_EXTENDED)
#define ASWCOM_TX_PDU_CANID_BASIC_08       (0x18FECA82u | ASWCOM_TX_PDU_CANID_TYPE_EXTENDED)
#define ASWCOM_TX_PDU_CANID_BASIC_09       (0x18ECFF82u | ASWCOM_TX_PDU_CANID_TYPE_EXTENDED)
#define ASWCOM_TX_PDU_CANID_BASIC_10       (0x18EBFF82u | ASWCOM_TX_PDU_CANID_TYPE_EXTENDED)
#define ASWCOM_TX_PDU_CANID_BASIC_11       (0x18FECA83u | ASWCOM_TX_PDU_CANID_TYPE_EXTENDED)
#define ASWCOM_TX_PDU_CANID_BASIC_12       (0x18ECFF83u | ASWCOM_TX_PDU_CANID_TYPE_EXTENDED)
#define ASWCOM_TX_PDU_CANID_BASIC_13       (0x18EBFF83u | ASWCOM_TX_PDU_CANID_TYPE_EXTENDED)
#define ASWCOM_TX_PDU_CANID_BASIC_14       (0x18FECA8Bu | ASWCOM_TX_PDU_CANID_TYPE_EXTENDED)
#define ASWCOM_TX_PDU_CANID_BASIC_15       (0x18ECFF8Bu | ASWCOM_TX_PDU_CANID_TYPE_EXTENDED)
#define ASWCOM_TX_PDU_CANID_BASIC_16       (0x18EBFF8Bu | ASWCOM_TX_PDU_CANID_TYPE_EXTENDED)
#define ASWCOM_TX_PDU_CANID_BASIC_17       (0x18FECA8Au | ASWCOM_TX_PDU_CANID_TYPE_EXTENDED)
#define ASWCOM_TX_PDU_CANID_BASIC_18       (0x18ECFF8Au | ASWCOM_TX_PDU_CANID_TYPE_EXTENDED)
#define ASWCOM_TX_PDU_CANID_BASIC_19       (0x18EBFF8Au | ASWCOM_TX_PDU_CANID_TYPE_EXTENDED)
#define ASWCOM_TX_PDU_CANID_BASIC_20       (0x18FECA30u | ASWCOM_TX_PDU_CANID_TYPE_EXTENDED)
#define ASWCOM_TX_PDU_CANID_BASIC_21       (0x18ECFF30u | ASWCOM_TX_PDU_CANID_TYPE_EXTENDED)
#define ASWCOM_TX_PDU_CANID_BASIC_22       (0x18EBFF30u | ASWCOM_TX_PDU_CANID_TYPE_EXTENDED)
#define ASWCOM_TX_PDU_CANID_01             (0x10FF8082u | ASWCOM_TX_PDU_CANID_TYPE_EXTENDED)
#define ASWCOM_TX_PDU_CANID_02             (0x18FF8182u | ASWCOM_TX_PDU_CANID_TYPE_EXTENDED)
#define ASWCOM_TX_PDU_CANID_03             (0x0CFF8282u | ASWCOM_TX_PDU_CANID_TYPE_EXTENDED)
#define ASWCOM_TX_PDU_CANID_04             (0x0CFF7F82u | ASWCOM_TX_PDU_CANID_TYPE_EXTENDED)
#define ASWCOM_TX_PDU_CANID_05             (0x10FF8083u | ASWCOM_TX_PDU_CANID_TYPE_EXTENDED)
#define ASWCOM_TX_PDU_CANID_06             (0x18FF8183u | ASWCOM_TX_PDU_CANID_TYPE_EXTENDED)
#define ASWCOM_TX_PDU_CANID_07             (0x0CFF8283u | ASWCOM_TX_PDU_CANID_TYPE_EXTENDED)
#define ASWCOM_TX_PDU_CANID_08             (0x18FFF430u | ASWCOM_TX_PDU_CANID_TYPE_EXTENDED)
#define ASWCOM_TX_PDU_CANID_09             (0x18FFBE30u | ASWCOM_TX_PDU_CANID_TYPE_EXTENDED)
#define ASWCOM_TX_PDU_CANID_10             (0x18FFBF30u | ASWCOM_TX_PDU_CANID_TYPE_EXTENDED)
#define ASWCOM_TX_PDU_CANID_11             (0x18FFC030u | ASWCOM_TX_PDU_CANID_TYPE_EXTENDED)
#define ASWCOM_TX_PDU_CANID_12             (0x18FFC130u | ASWCOM_TX_PDU_CANID_TYPE_EXTENDED)
#define ASWCOM_TX_PDU_CANID_13             (0x18FFC230u | ASWCOM_TX_PDU_CANID_TYPE_EXTENDED)
#define ASWCOM_TX_PDU_CANID_14             (0x18FFC330u | ASWCOM_TX_PDU_CANID_TYPE_EXTENDED)
#define ASWCOM_TX_PDU_CANID_15             (0x18FFC430u | ASWCOM_TX_PDU_CANID_TYPE_EXTENDED)
#define ASWCOM_TX_PDU_CANID_16             (0x18FFC530u | ASWCOM_TX_PDU_CANID_TYPE_EXTENDED)
#define ASWCOM_TX_PDU_CANID_17             (0x18FFC630u | ASWCOM_TX_PDU_CANID_TYPE_EXTENDED)
#define ASWCOM_TX_PDU_CANID_18             (0x18FF0E39u | ASWCOM_TX_PDU_CANID_TYPE_EXTENDED)
#define ASWCOM_TX_PDU_CANID_19             (0x18FF0C8Au | ASWCOM_TX_PDU_CANID_TYPE_EXTENDED)
#define ASWCOM_TX_PDU_CANID_20             (0x18FF0D8Au | ASWCOM_TX_PDU_CANID_TYPE_EXTENDED)
#define ASWCOM_TX_PDU_CANID_21             (0x18FF0E8Bu | ASWCOM_TX_PDU_CANID_TYPE_EXTENDED)
#define ASWCOM_TX_PDU_CANID_22             (0x18FF0F8Bu | ASWCOM_TX_PDU_CANID_TYPE_EXTENDED)
#define ASWCOM_TX_PDU_CANID_23             (0x1803F430u | ASWCOM_TX_PDU_CANID_TYPE_EXTENDED)
#define ASWCOM_TX_PDU_CANID_24             (0x0CFF7F83u | ASWCOM_TX_PDU_CANID_TYPE_EXTENDED)
#define ASWCOM_TX_PDU_CANID_25             (0x18FFDC83u | ASWCOM_TX_PDU_CANID_TYPE_EXTENDED)
#define ASWCOM_TX_PDU_CANID_25_00          (0x18FFDC82u | ASWCOM_TX_PDU_CANID_TYPE_EXTENDED)
#define ASWCOM_TX_PDU_CANID_25_01          (0x18FF0730u | ASWCOM_TX_PDU_CANID_TYPE_EXTENDED)
#define ASWCOM_TX_PDU_CANID_26             (0x0CFF7E82u | ASWCOM_TX_PDU_CANID_TYPE_EXTENDED)

uint8 u8TestIDEnable = 0; 
uint32 u32TestCanID = 0x59Au;

/* End of user defined constant definitions - Do not remove this comment */
/*PROTECTED REGION END */

/*PROTECTED REGION ID(FileHeaderUserDefinedVariables :COM_BCM_peps_Rec100ms) ENABLED START */
/* Start of user variable defintions - Do not remove this comment  */
/* End of user variable defintions - Do not remove this comment  */
/*PROTECTED REGION END */
#define ASW_COM_START_SEC_CODE                   
#include "ASW_COM_MemMap.h"

void AswCom_vidDyncCANIDTest(void)
{
   if(0x55 == u8TestIDEnable)
   {
      CanIf_SetDynamicTxId(1, u32TestCanID);
      u8TestIDEnable = 0;
   }
}

void CddCom_vidReloadCANID(void)
{
#if (COMCDD_DYNAMIC_ID_CFG == STD_ON)
   CanIf_SetDynamicTxId(CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_TxBasic_01, ASWCOM_TX_PDU_CANID_BASIC_01);
   CanIf_SetDynamicTxId(CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_TxBasic_02, ASWCOM_TX_PDU_CANID_BASIC_02);
   CanIf_SetDynamicTxId(CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_TxBasic_03, ASWCOM_TX_PDU_CANID_BASIC_03);
   CanIf_SetDynamicTxId(CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_TxBasic_04, ASWCOM_TX_PDU_CANID_BASIC_04);
   CanIf_SetDynamicTxId(CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_TxBasic_05, ASWCOM_TX_PDU_CANID_BASIC_05);
   CanIf_SetDynamicTxId(CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_TxBasic_06, ASWCOM_TX_PDU_CANID_BASIC_06);
   CanIf_SetDynamicTxId(CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_TxBasic_07, ASWCOM_TX_PDU_CANID_BASIC_07);
   CanIf_SetDynamicTxId(CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_TxBasic_08, ASWCOM_TX_PDU_CANID_BASIC_08);
   CanIf_SetDynamicTxId(CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_TxBasic_09, ASWCOM_TX_PDU_CANID_BASIC_09);
   CanIf_SetDynamicTxId(CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_TxBasic_10, ASWCOM_TX_PDU_CANID_BASIC_10);
   CanIf_SetDynamicTxId(CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_TxBasic_11, ASWCOM_TX_PDU_CANID_BASIC_11);
   CanIf_SetDynamicTxId(CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_TxBasic_12, ASWCOM_TX_PDU_CANID_BASIC_12);
   CanIf_SetDynamicTxId(CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_TxBasic_13, ASWCOM_TX_PDU_CANID_BASIC_13);
   CanIf_SetDynamicTxId(CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_TxBasic_14, ASWCOM_TX_PDU_CANID_BASIC_14);
   CanIf_SetDynamicTxId(CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_TxBasic_15, ASWCOM_TX_PDU_CANID_BASIC_15);
   CanIf_SetDynamicTxId(CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_TxBasic_16, ASWCOM_TX_PDU_CANID_BASIC_16);
   CanIf_SetDynamicTxId(CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_TxBasic_17, ASWCOM_TX_PDU_CANID_BASIC_17);
   CanIf_SetDynamicTxId(CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_TxBasic_18, ASWCOM_TX_PDU_CANID_BASIC_18);
   CanIf_SetDynamicTxId(CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_TxBasic_19, ASWCOM_TX_PDU_CANID_BASIC_19);
   CanIf_SetDynamicTxId(CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_TxBasic_20, ASWCOM_TX_PDU_CANID_BASIC_20);
   CanIf_SetDynamicTxId(CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_TxBasic_21, ASWCOM_TX_PDU_CANID_BASIC_21);
   CanIf_SetDynamicTxId(CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_TxBasic_22, ASWCOM_TX_PDU_CANID_BASIC_22);
   CanIf_SetDynamicTxId(CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_Tx_01, ASWCOM_TX_PDU_CANID_01);
   CanIf_SetDynamicTxId(CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_Tx_02, ASWCOM_TX_PDU_CANID_02);
   CanIf_SetDynamicTxId(CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_Tx_03, ASWCOM_TX_PDU_CANID_03);
   CanIf_SetDynamicTxId(CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_Tx_04, ASWCOM_TX_PDU_CANID_04);
   CanIf_SetDynamicTxId(CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_Tx_05, ASWCOM_TX_PDU_CANID_05);
   CanIf_SetDynamicTxId(CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_Tx_06, ASWCOM_TX_PDU_CANID_06);
   CanIf_SetDynamicTxId(CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_Tx_07, ASWCOM_TX_PDU_CANID_07);
   CanIf_SetDynamicTxId(CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_Tx_08, ASWCOM_TX_PDU_CANID_08);
   CanIf_SetDynamicTxId(CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_Tx_09, ASWCOM_TX_PDU_CANID_09);
   CanIf_SetDynamicTxId(CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_Tx_10, ASWCOM_TX_PDU_CANID_10);
   CanIf_SetDynamicTxId(CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_Tx_11, ASWCOM_TX_PDU_CANID_11);
   CanIf_SetDynamicTxId(CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_Tx_12, ASWCOM_TX_PDU_CANID_12);
   CanIf_SetDynamicTxId(CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_Tx_13, ASWCOM_TX_PDU_CANID_13);
   CanIf_SetDynamicTxId(CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_Tx_14, ASWCOM_TX_PDU_CANID_14);
   CanIf_SetDynamicTxId(CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_Tx_15, ASWCOM_TX_PDU_CANID_15);
   CanIf_SetDynamicTxId(CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_Tx_16, ASWCOM_TX_PDU_CANID_16);
   CanIf_SetDynamicTxId(CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_Tx_17, ASWCOM_TX_PDU_CANID_17);
   CanIf_SetDynamicTxId(CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_Tx_18, ASWCOM_TX_PDU_CANID_18);
   CanIf_SetDynamicTxId(CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_Tx_19, ASWCOM_TX_PDU_CANID_19);
   CanIf_SetDynamicTxId(CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_Tx_20, ASWCOM_TX_PDU_CANID_20);
   CanIf_SetDynamicTxId(CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_Tx_21, ASWCOM_TX_PDU_CANID_21);
   CanIf_SetDynamicTxId(CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_Tx_22, ASWCOM_TX_PDU_CANID_22);
   CanIf_SetDynamicTxId(CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_Tx_23, ASWCOM_TX_PDU_CANID_23);
   CanIf_SetDynamicTxId(CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_Tx_24, ASWCOM_TX_PDU_CANID_24);
   CanIf_SetDynamicTxId(CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_Tx_25, ASWCOM_TX_PDU_CANID_25);
   CanIf_SetDynamicTxId(CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_Tx_25_00, ASWCOM_TX_PDU_CANID_25_00);
   CanIf_SetDynamicTxId(CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_Tx_25_01, ASWCOM_TX_PDU_CANID_25_01);
   CanIf_SetDynamicTxId(CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_Tx_26, ASWCOM_TX_PDU_CANID_26);
#endif
}

#define ASW_COM_STOP_SEC_CODE  
#include "ASW_COM_MemMap.h" 

/*PROTECTED REGION ID(FileHeaderUserDefinedFunctions :ASW_COM) ENABLED START */
/* Start of user defined functions  - Do not remove this comment */
/* End of user defined functions - Do not remove this comment */
/*PROTECTED REGION END */

