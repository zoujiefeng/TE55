#include "Dcm_Cfg_Prot.h"
#include "DcmCore_DslDsd_Inf.h"
#include "Rte_Dcm.h"
#include "Dcm_ExternalServiceProcessing.h"

#include "NvM.h"
/*TESTCODE-START
#include "DcmTest.h"
TESTCODE-END*/
#if(DCM_CFG_STORING_ENABLED != DCM_CFG_OFF)

#define DCM_RESET_RESPONSE_FLAG_EXTENDED_SESSION        (0xAA)
#define DCM_RESET_RESPONSE_FLAG_ECU_RESET_SOFT			  (0x04)
#define DCM_RESET_RESPONSE_FLAG_ECU_RESET_KEYONOFF		  (0x03)
#define DCM_RESET_RESPONSE_FLAG_ECU_RESET_HARD			  (0x02)
#define DCM_RESET_RESPONSE_FLAG_ON_JUMP_TO_BOOT           (0x01)
#define DCM_RESET_RESPONSE_FLAG_STATE_OFF                 (0x00)

#define DCM_BOOTM_REPROGRAMMING_REQUEST_FLAG_STATE_ON   (0xB5u)
#define DCM_BOOTM_STAYINBOOT_REQUEST_FLAG_STATE_ON      (0xAAu)
#define DCM_BOOTM_SWAP_REQUEST_FLAG_STATE_ON            (0x55u)

extern uint8 Fbl_DataM_RamMirrorNV_ReprogrammingRequestFlagBlock[];
extern uint8 Fbl_DataM_RamMirrorNV_ResetResponseBlock[];
extern void NvM_Integration_WriteAll ( void );

#define DCM_START_SEC_CODE /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"
 /**
 * @ingroup DCM_TPL
 * DcmAppl_Switch_DcmBootLoaderReset :-\n
 * Notify the application regarding Jump to BootLoader.Application can take the further actions.
 *
 * @param[in]     None
 * @param[out]    None
 * @retval        None
 *
 */
//extern uint32 __BOOT_MESSAGE_AREA[];
#define FL_MESSAGE		0x55AA55AAu
void DcmAppl_Switch_DcmBootLoaderReset(void)
{
   if(1)
   {
      Fbl_DataM_RamMirrorNV_ReprogrammingRequestFlagBlock[0] = DCM_BOOTM_REPROGRAMMING_REQUEST_FLAG_STATE_ON;
      Fbl_DataM_RamMirrorNV_ResetResponseBlock[0] = DCM_RESET_RESPONSE_FLAG_ON_JUMP_TO_BOOT;

      NvM_SetRamBlockStatus(NvMConf_NvMBlockDescriptor_NV_ExternalReprogrammingRequestFlagBlock,TRUE);
      NvM_SetRamBlockStatus(NvMConf_NvMBlockDescriptor_NV_ResetResponseFlagBlock,TRUE);
      BSW_vidSetChanReqState(Dcm_DsldGlobal_st.nrActiveConn_u8);
   }
   else
   {
      /*do nothing */
   }
   
   NvM_Integration_WriteAll();

   MCU_vSetResetCmd();
   /*TESTCODE-START
   DcmTest_DcmAppl_Switch_DcmBootLoaderReset();
   TESTCODE-END*/
}

void DcmAppl_StayInBoot(void)
{
	Fbl_DataM_RamMirrorNV_ReprogrammingRequestFlagBlock[0] = DCM_BOOTM_STAYINBOOT_REQUEST_FLAG_STATE_ON;
	Fbl_DataM_RamMirrorNV_ResetResponseBlock[0] = DCM_RESET_RESPONSE_FLAG_ON_JUMP_TO_BOOT;

	NvM_SetRamBlockStatus(NvMConf_NvMBlockDescriptor_NV_ExternalReprogrammingRequestFlagBlock,TRUE);
	NvM_SetRamBlockStatus(NvMConf_NvMBlockDescriptor_NV_ResetResponseFlagBlock,TRUE);

	NvM_Integration_WriteAll();

   MCU_vSetResetCmd();
   /*TESTCODE-START
   DcmTest_DcmAppl_Switch_DcmBootLoaderReset();
   TESTCODE-END*/
}

void DcmAppl_StartSwap(void)
{
	Fbl_DataM_RamMirrorNV_ReprogrammingRequestFlagBlock[0] = DCM_BOOTM_SWAP_REQUEST_FLAG_STATE_ON;
	Fbl_DataM_RamMirrorNV_ResetResponseBlock[0] = DCM_RESET_RESPONSE_FLAG_ON_JUMP_TO_BOOT;

	NvM_SetRamBlockStatus(NvMConf_NvMBlockDescriptor_NV_ExternalReprogrammingRequestFlagBlock,TRUE);
	NvM_SetRamBlockStatus(NvMConf_NvMBlockDescriptor_NV_ResetResponseFlagBlock,TRUE);

	NvM_Integration_WriteAll();

   MCU_vSetResetCmd();
   /*TESTCODE-START
   DcmTest_DcmAppl_Switch_DcmBootLoaderReset();
   TESTCODE-END*/
}
#define DCM_STOP_SEC_CODE /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"

#endif
