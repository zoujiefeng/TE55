/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "ComStack_Types.h"
#include "CanIf.h"

#include "ComHal.h"

/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/
typedef struct ComHal_tElement{
   PduInfoType tPduInfo;
   uint16 u16TxPduId;
}ComHal_tElement;

typedef struct RingQ_ElementType
{
   ComHal_tElement xElement;
   RingQ_Enum      eElementStatus;
}RingQ_ElementType;

/*******************************************************************************
 ****  Private Function Declarations
 ******************************************************************************/
static uint8 *     ComHal_pu8GetElementAddr(const uint8 ku8ElementIdx);
static RingQ_Enum  ComHal_eGetElementStatus(const uint8 ku8ElementIdx);
static void        ComHal_vidSetElementStatus(const uint8 ku8ElementIdx, RingQ_Enum eStatus);
static inline void ComHal_vidSendCanMsg(uint16 TxPduId, const PduInfoType * ptPduInfo);

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/
#define COMHAL_RING_Q_BUF_CALC_ROOT  (4u)
#define COMHAL_RING_Q_ELEMENT_NUM    RING_Q_SIZE(COMHAL_RING_Q_BUF_CALC_ROOT)
#define COMHAL_RING_Q_ELEMENT_MASK   RING_Q_SIZE_MASK(COMHAL_RING_Q_BUF_CALC_ROOT)

#define COMHAL_MAIN_FUNCTION_TOS     (0u)

/*******************************************************************************
 ****  Private Variable Definitions
 ******************************************************************************/
static RingQ_RamBlock    ComHal_tRamBlock;
static RingQ_ElementType ComHal_atElementSet[COMHAL_RING_Q_ELEMENT_NUM];

/*******************************************************************************
 ****  Private Constant Declarations
 ******************************************************************************/
const RingQ_ObjType ComHal_ktRingQObj = {
   .u8QueueMask         = COMHAL_RING_Q_ELEMENT_MASK,
   .u8ElementLength     = sizeof(ComHal_tElement),

   .pxRamBlock          = &ComHal_tRamBlock,
   .pxElementSetPtr     = &ComHal_atElementSet[0],

   .pu8GetElementAddr   = ComHal_pu8GetElementAddr,
   .eGetElementStatus   = ComHal_eGetElementStatus,
   .vidSetElementStatus = ComHal_vidSetElementStatus
};

static const uint16 ComHal_kau16TxPduIdSet[eCOMHAL_MAX_TX_PDU_NO] = {
   /* MCU1 */
   CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_TxBasic_08,
   CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_TxBasic_09,
   CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_TxBasic_10,
   /* MCU2 */
   CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_TxBasic_11,
   CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_TxBasic_12,
   CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_TxBasic_13,
   /* DCAC_B - ACM*/
   CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_TxBasic_14,
   CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_TxBasic_15,
   CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_TxBasic_16,
   /* DCAC_S - EPS */
   CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_TxBasic_17,
   CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_TxBasic_18,
   CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_TxBasic_19,
   /* PDU */
   CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_TxBasic_20,
   CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_TxBasic_21,
   CanIfConf_CanIfTxPduCfg_CanIf_CanPdu_CanNodeNum_01_TxBasic_22,
};

/*******************************************************************************
 ****  Global Function Definitions
 ******************************************************************************/
void ComHal_vidSendMessage(uint16 TxPduId, const uint8 * pu8DataToSend)
{
   boolean bOpRes;
   ComHal_tElement tElement;

   tElement.tPduInfo.SduDataPtr  = (uint8 *)pu8DataToSend;
   tElement.tPduInfo.MetaDataPtr = 0;
   tElement.tPduInfo.SduLength   = 8;
   tElement.u16TxPduId           = ComHal_kau16TxPduIdSet[TxPduId];

   uint8 u8CoreId = (uint8)Mcal_GetCpuIndex();

   if(COMHAL_MAIN_FUNCTION_TOS == u8CoreId)
   {
      /* To avoid queue deadlock */
      ComHal_vidSendCanMsg(tElement.u16TxPduId, &tElement.tPduInfo);
   }
   else
   {
      do{
         bOpRes = RingQ_bPutData(eRingQ_COMHAL_Q_INDEX, (const uint8 *)&tElement);
      }while(FALSE == bOpRes);
   }
}

void ComHal_vidMsgMainfunction(void)
{
   boolean bOpRes;
   ComHal_tElement tElement;

   do{
      bOpRes = RingQ_bGetData(eRingQ_COMHAL_Q_INDEX, (uint8 *)&tElement);

      if(TRUE == bOpRes)
      {
         ComHal_vidSendCanMsg(tElement.u16TxPduId, &tElement.tPduInfo);
      }
   }while(TRUE == bOpRes);
}

/*******************************************************************************
 ****  Private Function Definitions
 ******************************************************************************/
static uint8 * ComHal_pu8GetElementAddr(const uint8 ku8ElementIdx)
{
   return (uint8 *)&ComHal_atElementSet[ku8ElementIdx];
}

static RingQ_Enum ComHal_eGetElementStatus(const uint8 ku8ElementIdx)
{
   return ComHal_atElementSet[ku8ElementIdx].eElementStatus;
}

static void ComHal_vidSetElementStatus(const uint8 ku8ElementIdx, RingQ_Enum eStatus)
{
   ComHal_atElementSet[ku8ElementIdx].eElementStatus = eStatus;
}

static inline void ComHal_vidSendCanMsg(uint16 TxPduId, const PduInfoType * ptPduInfo)
{
   CanIf_Transmit(TxPduId, ptPduInfo);
}

